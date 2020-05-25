# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import sys, os
import logging
log = logging.getLogger("plasmasm")
try:
    # Check amoco dependency on OrderedDict
    from collections import OrderedDict
    del OrderedDict
except ImportError:
    log.error('amoco backend needs python 2.7, with OrderedDict')
    raise ImportError('amoco backend needs python 2.7, with OrderedDict')
try:
    # Check amoco dependency on pyparsing
    import pyparsing
    del pyparsing
except ImportError:
    log.error('amoco backend needs that pyparsing is installed')
    raise ImportError('amoco backend needs that pyparsing is installed')
# If amoco is not installed system-wide, it is recommended to install it
# in the parent directory of plasmasm.
basedir = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(__file__))))
if basedir == '': basedir = '.'
sys.path.append(basedir+'/amoco')
sys.path.append(basedir+'/crysp')
sys.path.append(basedir+'/grandalf')
import amoco

from amoco.logger import Log
Log.progress = lambda count, total=0, pfx='': None

from amoco.arch.sparc.parsers import sparc_syntax, env
from amoco.arch.sparc import cpu_v8
from amoco.arch.core import type_data_processing, type_control_flow, type_other, type_cpu_state, type_undefined

from amoco.arch.sparc.formats import SPARC_V8_synthetic
cpu_v8.instruction_sparc.set_formatter(SPARC_V8_synthetic)

def cfg_jmpl(i):
    txt = str(i.amoco)
    if txt == 'retl': return 'D.ret'
    if txt == 'ret':  return 'D.ret'
    return 'D.sub'
def cfg_b(i):
    if i.amoco.cond == 0b1000: return 'D.jmp'
    if i.amoco.cond == 0b0000: return 'D.jcc' # jmp never
    return 'D.jcc'

sparc_cfg_instr = {
    'jmpl': cfg_jmpl,
    'call': lambda i:'D.sub',
    't':    lambda i:None, # Trap - slides window as if restore
    'rett': lambda i:None, # Return from trap - slides window as if save
    'b':    cfg_b,
    'fb':   False,
    'cb':   False,
    }

class NoneASM(object):
    type = None
    mnemonic = None

from plasmasm.symbols import Line
class Instruction(Line):
    __slots__ = ('section', 'offset', 'bytelen', 'amoco')
    CPU = 'SPARC'
    def from_txt(self, txt):
        ''' text input, in assembly format '''
        txt = txt.strip(' ')
        instr = sparc_syntax.instr.parseString(txt, True)[0]
        if instr.mnemonic in sparc_cfg_instr:
            instr.type = type_control_flow
            instr.misc['delayed'] = True
            if instr.mnemonic in ['b','call'] and instr.operands[0]._is_ext:
                instr.misc['dst'] = self.symbols.find_symbol(name = instr.operands[0].ref)
        else:
            instr.type = type_data_processing
        # Create symbols
        for e in instr.operands:
            for _ in expressions.symbols_of(e):
                if _._is_ext:
                    self.symbols.find_symbol(name = _.ref)
        self.amoco = instr
        return self
    def from_bin(self, in_str, section):
        ''' binary input, in assembly format '''
        self.section = section
        self.offset = in_str.offset
        self.bytelen = 4
        try:
            instr = cpu_v8.disassemble(in_str[in_str.offset:in_str.offset+4])
        except IOError:
            instr = None
        if instr is None:
            instr = NoneASM()
        self.amoco = instr
        return self
    def pack(self):
        ''' binary representation '''
        raise ValueError("amoco cannot provide the binary representation")
    def txt(self):
        ''' text output, to be used by an assembler '''
        return str(self.amoco)
    def labels(self):
        ''' labels that are referenced in the line '''
        res = set()
        if hasattr(self.amoco.misc.get('dst',None), 'name'):
            res.add(self.amoco.misc['dst'])
        return res
    def opname(self):
        return self.amoco.mnemonic
    opname = property(opname)
    # Methods for binary parser
    def create_label_imm(self, memory = [None]):
        ''' Replace immediate values that may be labels '''
        # memory is used to keeps information across multiple calls to
        # create_label_imm, more specifically to detect sethi;bset sequences
        from plasmasm.parse_bin import label_for_address
        if self.opname == 'sethi':
            memory[0] = self
        elif self.opname == 'or' \
                and memory[0] is not None \
                and self.amoco.operands[0] == self.amoco.operands[2] \
                and self.amoco.operands[0] == memory[0].amoco.operands[1]:
            label_imm = None
            if hasattr(memory[0].amoco.operands[0],'value') \
                and hasattr(self.amoco.operands[1],'value'):
                label_imm = label_for_address(self.symbols, self.amoco.operands[1].value
                    + (memory[0].amoco.operands[0].value << 10))
            if label_imm is not None:
                # replace args
                label_imm = expressions.lab(label_imm, size=32)
                memory[0].amoco.operands[0] = env.hi(label_imm)
                self.amoco.operands[1] = env.lo(label_imm).zeroextend(32)
            memory[0] = None
        else:
            memory[0] = None
    def create_label_rel(self):
        ''' Replace relative addresses for call/branch '''
        # TODO trap ?
        if self.opname == 'b':
            dst = self.amoco.operands[0]
            if dst._is_cst:
                value = self.offset + 4*dst.value
                label_imm = self.symbols.find_symbol(address = value, section = self.section)
                self.amoco.misc['dst'] = label_imm
        elif self.opname == 'call':
            dst = self.amoco.operands[0]
            if dst._is_cst and dst.value > -0x10000000:
                value = self.offset + 4*dst.value
                label_imm = self.symbols.find_symbol(address = value, section = self.section)
                self.amoco.misc['dst'] = label_imm
            elif dst._is_cst:
                # print("Far call at %#x"%dst)
                pass
    def apply_reloc(self, pos, reloc):
        ''' 'reloc' is a relocation at offset 'pos'
            This function modifies the argument impacted by the relocation '''
        # Step 1: find which arg is impacted
        if self.opname == 'call':
            argpos = 0
        elif self.opname == 'sethi':
            argpos = 0
        elif self.opname == 'or':
            argpos = 1
        # Step 2: modify the argument by using the reloc data
        if self.amoco.operands[argpos]._is_cst:
            offset = int(self.amoco.operands[argpos])
            if offset >= (1<<31): offset -= 1<<32 # Signed
            self.amoco.operands[argpos] -= offset
        elif self.amoco.operands[argpos]._is_mem:
            NO_REGRESSION_TEST
            base = self.amoco.operands[argpos].a.base
            if base._is_cst:
                offset = int(base)
                self.amoco.operands[argpos].a.base -= offset
            else:
                if base._is_eqn and base.op.symbol == '+':
                    pass
                    # We may want to extract the constant from an operation
                    # (reg+imm), but normally it is stored as (base+disp)
                offset = self.amoco.operands[argpos].a.disp
                self.amoco.operands[argpos].a.disp -= offset
        else:
            raise ValueError("Arg of type %s"%self.amoco.operands[argpos].__class__)
        from plasmasm.get_symbols import analyze_reloc
        label, label_dif, offset, size = analyze_reloc(self,
            reloc, offset, pos, self.bytelen)
        ext_label = expressions.lab(label, size=32)
        if   size == 22: ext_label = env.slc(ext_label,10,22)
        elif size == 10: ext_label = env.slc(ext_label,0,10).zeroextend(32)
        self.amoco.operands[argpos] = ext_label
        if self.opname == 'call':
            self.amoco.misc['dst'] = label

class InstructionCFG(Instruction):
    __slots__ = ('flow', 'dst')
    def _set_flow(self):
        if self.amoco.type == type_control_flow:
            self.flow = sparc_cfg_instr[self.opname](self)
        else:
            self.flow = None
    def _set_dst(self):
        if   self.flow is None:
            dst = []
        elif self.flow == 'D.ret':
            dst = [None]
        elif self.flow in [ 'D.sub', 'D.jmp', 'D.jcc' ]:
            dst = [self.amoco.misc['dst']]
        else:
            raise ValueError("Flow %s unknown"%self.flow)
        self.dst = dst
    def evaluate_lines(self, lines, in_str):
        return evaluate_lines(self, lines, in_str)

def get_touched(e, indirect=False):
    # If indirect==True, registers read to determine addresses in e
    # If indirect==False, other registers read/written when e is read/written
    t = set()
    if e._is_def == 0: # top
        t.update([reg for reg in env.r])
        t.update([env.pc,env.npc,env.psr,env.y]) # ...
    elif e._is_slc:
        t.update(get_touched(e.x, indirect))
    elif e._is_cmp:
        for s in e.parts:
            t.update(get_touched(e.parts[s], indirect))
    elif e._is_cst:
        pass
    elif e._is_ext:
        pass
    elif e._is_reg:
        if not indirect:
            t.update([e])
    elif e._is_mem:
        t.update(get_touched(e.a, indirect))
    elif e._is_ptr:
        if not indirect:
            pass # t.update(['MEM'])
        else:
            t.update(get_touched(e.base, False))
    elif e._is_tst:
        t.update(get_touched(e.tst, False))
        t.update(get_touched(e.l, indirect))
        t.update(get_touched(e.r, indirect))
    elif e._is_eqn:
        if e.l is not None:
            t.update(get_touched(e.l, indirect))
        if e.r is not None:
            t.update(get_touched(e.r, indirect))
    else:
        raise ValueError("in get_touched %s %s"%(type(e),e))
    return t

def get_rw(m):
    r = set()
    w = set()
    for dst, src in m:
        w.update(get_touched(dst, False))
        r_src = get_touched(src, False)
        if dst._is_reg and dst.ref == 'psr':
            r_src.discard(env.psr)
        r.update(r_src)
        r.update(get_touched(dst, True))
        r.update(get_touched(src, True))
    w.discard(env.pc)
    w.discard(env.npc)
    r.discard(env.npc)
    r.discard(env.g0)
    w.discard(env.g0)
    return r, w

from amoco.cas.mapper import mapper
class InstructionRW(InstructionCFG):
    __slots__ = ('rw',)
    def _set_rw(self):
        if self.opname in ['save', 'restore']:
            r = set([env.psr,env.sp])
            r.update([reg for reg in env.r if not str(reg).startswith('g')])
            w = set([env.psr,env.sp])
            #self.mapper = None
            self.rw = (r, w)
            return
        m = mapper()
        self.amoco(m)
        #self.mapper = m
        self.rw = get_rw(m)
    def reg_name(self, r):
        return str(r)
    reg_name = classmethod(reg_name)

class InstructionDEAD(InstructionRW):
    __slots__ = ('dead', 'immutable')

def is_hi_lo_slice(e):
    return e._is_cmp and sorted(e.parts.keys()) == [(0,10),(10,32)]

from amoco.cas import expressions
import operator
def merge_slices(e):
    if e._is_mem:
        e.a.base = merge_slices(e.a.base)
        return e
    if not e._is_eqn:
        return e
    if e.op.impl != operator.or_:
        return e
    if not e.l._is_cmp or not e.r._is_cmp:
        return e
    if not is_hi_lo_slice(e.l) or not is_hi_lo_slice(e.r):
        return e
    if str(e.r.parts[(0,10)]) != '0x0':
        return e
    if str(e.l.parts[(10,32)]) != '0x0':
        return e
    slc_hi = e.r.parts[(10,32)]
    slc_lo = e.l.parts[(0,10)]
    if type(slc_hi) != expressions.slc or slc_hi.pos != 10 or slc_hi.size != 22:
        return e
    if type(slc_lo) != expressions.slc or slc_lo.pos !=  0 or slc_lo.size != 10:
        return e
    if slc_hi.x == slc_lo.x:
        return slc_hi.x
    return e

def evaluate_lines(instr, lines, in_str):
    # Run the emulation of the basic bloc
    m = mapper()
    def print_machine(machine):
        return sorted(str(machine).split("\n"))
    for line in lines:
        try:
            line.amoco(m)
        except NotImplementedError:
            return (('Not implemented', line, print_machine(m)), [None])
        except NameError:
            return (('Cannot be emulated (name)', line, print_machine(m)), [None])
        except amoco.arch.core.InstructionError:
            return (('Cannot be emulated', line, print_machine(m)), [None])
        except TypeError:
            return (('Not callable', line, print_machine(m)), [None])
    instr.amoco(m)
    # Register %g0 contains always zero
    m2 = mapper()
    m2[env.g0] = env.cst(0)
    pc = m[env.pc].eval(m2)
    pc = merge_slices(pc)
    log.debug("PC %s:%s", pc.__class__.__name__, pc)
    if pc._is_lab:
        return 'ID', [ pc.ref ]
    elif pc._is_mem and pc.a.base._is_lab:
        label = pc.a.base.ref
        if len(getattr(label, 'lines', [])) > 0 \
            and getattr(label.lines[0], 'type', None) == 'long':
            value = label.lines[0].value[0]
            if hasattr(value, 'name'): # Symbol
                return ('MEM_ID', [ value ])
        return (('MEM_ID', pc.a.base.ref, print_machine(m)), [None])
    elif pc._is_mem and pc.a.base._is_eqn:
        # Is it an element of an array?
        # Find the array index
        t = get_touched(pc, indirect=True)
        t.discard(env.fp)
        if len(t) == 1:
            t = t.pop()
            dst_lst = []
            pointer_len = 4
            log.debug("    ARRAY of %d-byte items", pointer_len)
            invalid_indexes = 0
            index_in_array = -1
            while invalid_indexes < 4 and index_in_array < 4:
                index_in_array += 1
                m2 = mapper()
                m2[t] = env.cst(index_in_array)
                z = pc.eval(m2)
                z = merge_slices(z)
                if not z._is_lab:
                    invalid_indexes += 1
                    continue
                log.debug("    MEM[%d]=%s",
                    pointer_len*index_in_array,
                    z.ref)
                if not z.ref in dst_lst:
                    dst_lst.append(z.ref)
            if dst_lst == []:
                return (('MEM_EXP', pc, print_machine(m)), [None])
            return ('ARRAY', dst_lst)
        return (('MEM_EXP', pc, print_machine(m)), [None])
    else:
        return (('', pc, print_machine(m)), [None])
