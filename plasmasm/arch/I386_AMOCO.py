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

try:
    from amoco.arch.core import type_data_processing, type_control_flow, type_other, type_cpu_state, type_undefined
except ImportError:
    log.error("PATH %s", sys.path)
    e = 'amoco backend not well installed: %s' % sys.exc_info()[1]
    log.error(e)
    raise ImportError(e)
from amoco.cas.mapper import mapper
from amoco.arch.x86 import env
from amoco.arch.x86 import cpu_x86 as cpu_amoco
try:
    # Newer amoco
    from amoco.arch.x86.cpu_x86 import instruction_x86 as instruction
except ImportError:
    # Older amoco
    from amoco.arch.core import instruction
env.internals['keep_order'] = True
cpu_addrsize = 32

from amoco.arch.x86.formats import default_mnemo_name, default_eqn_parser, \
    mnemo_string_rep, \
    IA32_Binutils_ATT, IA32_Binutils_Intel, IA32_MacOSX_ATT

#NON_REGRESSION_FOUND = True # Define this variable to avoid raising errors

# Encapsulation of internals
class API_AMOCO(object):
    # API to access opname or prefix
    def opname(self):
        return default_mnemo_name(self.amoco)[-1][1]
    opname = property(opname)
    def prefix(self):
        if self.amoco.misc.get('pfx') is None:
            return []
        pfx = []
        if self.amoco.misc['pfx'][0] is not None:
            pfx.append({
                'lock':  0xf0,
                'repne': 0xf2,
                'rep':   0xf3,
                }[self.amoco.misc['pfx'][0]])
        if self.amoco.misc['pfx'][1] is not None:
            assert 'segreg' == self.amoco.misc['pfx'][1]
            pfx.append({
                env.es:  0x26,
                env.cs:  0x2e,
                env.ss:  0x36,
                env.ds:  0x3e,
                env.fs:  0x64,
                env.gs:  0x65,
                }[self.amoco.misc['segreg']])
        if self.amoco.misc['pfx'][2] is not None:
            pfx.append({
                'opdsz':  0x66,
                }[self.amoco.misc['pfx'][2]])
        if self.amoco.misc['pfx'][3] is not None:
            pfx.append({
                'adrsz':  0x67,
                }[self.amoco.misc['pfx'][3]])
        return pfx
    prefix = property(prefix)
    #
    # API to access the arguments
    def api_nb_arg(self):
        ''' How many arguments for this instruction '''
        return len(self.amoco.operands)
    def api_arg_txt(self, pos, asm_format=None):
        ''' Text representation of argument 'pos' '''
        if asm_format == 'att_syntax':
            from amoco.arch.x86.formats import att_opers
            return list(reversed(att_opers(self.amoco)))[pos*2][1]
        else:
            from amoco.arch.x86.formats import intel_opers
            res = intel_opers(self.amoco)[pos*2][1]
            if res.startswith('DWORD PTR '): res = res[10:]
            return res
    def api_get_cst(self, pos):
        ''' If the argument 'pos' is numeric,
            then get its value as an 'int' '''
        arg = self.amoco.operands[pos]
        if arg._is_cst:
            return int(int(arg))
        return None
    def api_get_imm(self, pos):
        ''' If the argument 'pos' contains an immediate value / displacement
            then get its value as an 'int' '''
        arg = self.amoco.operands[pos]
        if arg._is_cst:
            return int(arg)
        elif arg._is_mem and arg.a.base._is_cst:
            return int(arg.a.base)
        elif arg._is_mem and not hasattr(arg.a.disp, '_is_cst'):
            return int(arg.a.disp)
        elif arg._is_eqn and arg.op.symbol == '+' and arg.r._is_cst:
            return arg.r.value
        elif arg._is_eqn and arg.op.symbol == '-' and arg.r._is_cst:
            return (-arg.r).value
        return None
    def api_get_symbol(self, pos):
        ''' Gets the argument 'pos' in the form of a symbol if it is a label '''
        arg = self.amoco.operands[pos]
        if arg._is_lab:
            return arg.ref
        return None
    def api_get_label(self, pos):
        ''' Gets a label if present in the argument 'pos'.
            Gets two labels if it is a label difference. '''
        arg = self.amoco.operands[pos]
        if   arg._is_mem and not hasattr(arg.a.disp, '_is_lab'):
            label, label_dif, cste = default_eqn_parser(arg.a.base)
            return label, label_dif
        elif arg._is_mem:
            label, label_dif, cste = default_eqn_parser(arg.a.disp)
            return label, label_dif
        else:
            label, label_dif, cste = default_eqn_parser(arg)
            return label, label_dif
    def api_is_address(self, pos):
        ''' True if the argument 'pos' is an address '''
        return expr.get_mem(self.amoco.operands[pos]) is not None
    def api_is_arg_size(self, pos, size):
        ''' True if the argument 'pos' is a size-bit argument '''
        arg = self.amoco.operands[pos]
        if arg.size != size: return False
        return True
    def api_is_reg_size(self, pos, size):
        ''' True if the argument 'pos' is a size-bit register '''
        arg = self.amoco.operands[pos]
        if expr.get_reg(arg) is None: return False
        if arg.size != size: return False
        return True
    def api_is_reg_in_arg(self, pos, reg):
        ''' True if the argument 'pos' contains a reference to a given register '''
        arg = self.amoco.operands[pos]
        log.debug("(DEBUG:api_is_reg_in_arg) %s %s", arg, reg)
        return str(reg) in str(arg)
    def api_same_base_reg(self, pos, instr):
        ''' Checks that arguments at position 'pos' in 'self' and 'instr'
            have the same base register (they may have different disp) '''
        arg = expr.get_reg(self.amoco.operands[pos].a.base)
        return arg is not None and arg == expr.get_reg(instr.amoco.operands[pos].a.base)
    def api_set_imm_label(self, pos, value, label=None, label_dif=None):
        ''' If the argument 'pos' contains an immediate value / displacement
            then substract 'value' and add the symbol 'label'.
            If the argument is an absolute address, then 'label' should be at
            address 'value'; if it is a relative address, then 'label' should
            be at 'value' bytes of the current instruction.
            'label_dif' is used for Mach-O binaries to represent LOC_DIF
            relocations.
            If 'label' is None, we only change the immediate.
            If 'label' is False, we remove the label. '''
        arg = self.amoco.operands[pos]
        sym = 0
        if label is False:
            # Delete label
            assert arg._is_mem
            if   arg.a.base._is_lab:
                _, _, cste = default_eqn_parser(arg.a.base)
                arg.a.base = expressions.cst(cste, size=cpu_addrsize)
            elif not hasattr(arg.a.disp, '_is_lab'):
                _, _, cste = default_eqn_parser(arg.a.base)
                arg.a.base = expressions.cst(cste, size=cpu_addrsize)
            elif arg.a.disp._is_lab:
                arg.a.disp = 0
            elif arg.a.disp._is_eqn:
                _, _, cste = default_eqn_parser(arg.a.disp)
                arg.a.disp = cste
            else:
                NEVER
        elif label is not None:
            sym = expressions.lab(label, size=cpu_addrsize)
        if label_dif is not None:
            sym -= expressions.lab(label_dif, size=cpu_addrsize)
        if arg._is_cst:
            self.amoco.operands[pos] -= value
            self.amoco.operands[pos] += sym
        elif arg._is_mem and arg.a.base._is_cst:
            arg.a.base -= value
            arg.a.base += sym
        elif arg._is_mem and (arg.a.base._is_reg or arg.a.base._is_eqn):
            arg.a.disp -= value
            arg.a.disp += sym
            if hasattr(arg.a.disp, '_is_cst') and arg.a.disp._is_cst:
                arg.a.disp = arg.a.disp.value
        else:
            NEVER
    def reg_from_name(reg):
        if reg == 'eflag': reg = 'eflags'
        return env.__dict__[reg]
    reg_from_name = staticmethod(reg_from_name)
    def api_add_reg(self, pos, reg, last=False):
        arg = self.amoco.operands[pos]
        reg = self.reg_from_name(reg)
        assert arg._is_mem
        if   arg.a.base._is_cst:
            arg.a.disp += arg.a.base.value
            arg.a.base = reg
        elif arg.a.base._is_lab:
            arg.a.disp += arg.a.base
            arg.a.base = reg
        elif arg.a.base._is_eqn \
                and not (arg.a.base.l._is_reg and not arg.a.base.l._is_lab) \
                and not (arg.a.base.r._is_reg and not arg.a.base.r._is_lab):
            # No register in arg.a.base => becomes a displacement
            arg.a.disp += arg.a.base
            arg.a.base = reg
        elif arg.a.base._is_reg or arg.a.base._is_eqn:
            # Replace 'reg+reg' with '2*reg'
            if arg.a.base._is_eqn and arg.a.base.op.symbol == '+' \
                    and arg.a.base.l is arg.a.base.r:
                arg.a.base = expressions.op('*',
                                 arg.a.base.l,
                                 expressions.cst(2,size=arg.a.base.l.size))
            # Force the order of operands
            if False:
                TODO # esp is always first
            elif last: # reg is last
                arg.a.base = expressions.op('+', arg.a.base, reg)
            else:      # reg is first
                arg.a.base = expressions.op('+', reg, arg.a.base)
            if env.internals.get('keep_order'): arg.a.base.prop |= 16
        else:
            NEVER
    def api_replace_reg(self, src, dst):
        ''' In all arguments, replace register 'src' with 'dst'. '''
        src = self.reg_from_name(src)
        dst = self.reg_from_name(dst)
        for pos, arg in enumerate(self.amoco.operands):
            if   arg._is_cst: pass
            elif arg._is_eqn: pass
            elif arg._is_reg:
                if arg is src: self.amoco.operands[pos] = dst
            elif arg._is_mem and arg.a.base._is_reg:
                if arg.a.base is src: arg.a.base = dst
            elif arg._is_mem and arg.a.base._is_eqn and \
                 arg.a.base.op.symbol == '*' and \
                 arg.a.base.l._is_reg:
                if arg.a.base.l is src: arg.a.base.l = dst
            elif arg._is_mem and arg.a.base._is_eqn and \
                 arg.a.base.op.symbol == '+' and \
                 arg.a.base.l._is_reg and \
                 arg.a.base.r._is_reg:
                if arg.a.base.l is src: arg.a.base.l = dst
                if arg.a.base.r is src: arg.a.base.r = dst
            elif arg._is_mem and arg.a.base._is_eqn and \
                 arg.a.base.op.symbol == '+' and \
                 arg.a.base.l._is_reg and \
                 arg.a.base.r._is_eqn and \
                 arg.a.base.r.op.symbol == '*' and \
                 arg.a.base.r.l._is_reg:
                if arg.a.base.l   is src: arg.a.base.l   = dst
                if arg.a.base.r.l is src: arg.a.base.r.l = dst
            else:
                log.error("ARG=%s", arg)
                NEVER

class StubNone(object):
    ''' When amoco fails to disassemble the data '''
    def __str__(self, asm_format=None): return "NoneASM"
    def __init__(self, offset, bytes):
        self.length = len(bytes)
        self.bytes = bytes
    mnemonic = 'NoneASM'
    type = None
    operands = []
    misc = {}
    def __call__(self, m):
        # Calling a mapper
        pass

def att_bug_fsub_fdiv(instr, asm_format):
    if asm_format == 'att_syntax': asm_format = 'att_syntax binutils'
    if instr.mnemonic == 'TEST' and asm_format.endswith('clang'):
        # Clang-LLVM on MacOSX sometimes use Intel argument order
        # verified for Apple LLVM version 7.0.2 (clang-700.1.81)
        if instr.operands[0]._is_slc or \
          (instr.operands[0]._is_reg and not instr.operands[0]._is_lab):
            instr.operands.reverse()
    if not instr.mnemonic[:4] in [ 'FSUB', 'FDIV' ]:
        return
    for _ in instr.operands:
        if _._is_mem:
            return
    # https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=372528
    # The binutils mix fsubp/fdivp with fsubrp/fdivrp
    if   instr.mnemonic[4:] == 'P':
        instr.mnemonic = instr.mnemonic[:4] + 'RP'
    elif instr.mnemonic[4:] == 'RP':
        instr.mnemonic = instr.mnemonic[:4] + 'P'
    elif len(instr.operands) == 2 and str(instr.operands[0]) != 'st0':
        if   instr.mnemonic[4:] == '':
            instr.mnemonic = instr.mnemonic + 'R'
        elif instr.mnemonic[4:] == 'R':
            instr.mnemonic = instr.mnemonic[:4]

spec_table = {}
for spec in amoco.arch.x86.spec_ia32.ISPECS \
          + amoco.arch.x86.spec_fpu.ISPECS \
          + amoco.arch.x86.spec_sse.ISPECS:
    mnemo = spec.iattr.get('mnemonic', None)
    if not mnemo in spec_table:
        spec_table[mnemo] = [spec]
    elif not spec in spec_table[mnemo]:
        spec_table[mnemo].append(spec)
del spec
def set_spec(i, spec_table):
    log.debug("%s %s", i.mnemonic, [_.size for _ in reversed(i.operands)])
    spec_collision = {
        'CBW': 'CWDE',
        'CWD': 'CDQ',
        'IRET': 'IRETD',
        'CDQE': 'CWDE',
        'CQO': 'CDQ',
        'LFENCE': 'XRSTOR',
        'MFENCE': 'XSAVEOPT',
        'SFENCE': 'CLFLUSH',
        'PEXTRQ': 'PEXTRD',
        'PINSRQ': 'PINSRD',
        'CMPXCHG16B': 'CMPXCHG8B',
        }
    if i.mnemonic in spec_collision:
        spec_list = spec_table[spec_collision[i.mnemonic]]
    elif i.mnemonic[:-1].lower() in mnemo_string_rep:
        spec_list = spec_table[i.mnemonic[:-1]+'D']
    else:
        spec_list = spec_table[i.mnemonic]
    if len(spec_list) > 1:
        log.debug("Many possible spec for %s", i.mnemonic)
        for spec in spec_list:
            log.debug("... %s", spec.hook)
        log.debug("    misc: %s", i.misc)
    ispec_idx = 0
    if i.mnemonic in ('CALL','JMP'):
        if i.operands[0]._is_mem:
            ispec_idx = 0
        elif i.operands[0]._is_reg and not i.operands[0]._is_lab:
            ispec_idx = 0
        else:
            ispec_idx = 1
    if i.mnemonic.lower()[:-1] in mnemo_string_rep:
        if not len(i.operands):
            ispec_idx = -1
    i.spec = spec_list[ispec_idx]
    if 'type' in i.spec.iattr:
        i.type = i.spec.iattr['type']
    else:
        i.type = type_data_processing

import re
def replace_names_with_symbols(symbols, args):
    for e in args:
        for _ in expressions.symbols_of(e):
            if _._is_lab:
                symbol = _.ref
                r = re.match(r'(\d+)([bf])', symbol)
                if r:
                    symbol, direction = r.groups()
                    idx = symbols.meta['local_labels'][symbol]
                    if direction == 'f': idx += 1
                    symbol = '.L%s\02%d'%(symbol,idx)
                _.ref = symbols.find_symbol(name = symbol)

from plasmasm.symbols import Line
from plasmasm.compilers import \
    switch_detection_clang32, \
    switch_detection_gcc411, \
    switch_detection_gcc463m32opt, \
    switch_detection_gcc346m32opt, \
    gcc_label_for_inlined_memcpy
from amoco.arch.x86.parsers import att_syntax
class Instruction(Line, API_AMOCO):
    __slots__ = ('section', 'offset', 'bytelen',
        'amoco')
    CPU = 'I386'
    def from_txt(self, txt):
        ''' text input, in assembly format '''
        log.debug("> %s", txt)
        if txt.startswith('rep; ret'): txt = 'rep ret'
        instr = att_syntax.instr.parseString(txt, True)[0]
        att_bug_fsub_fdiv(instr, self.asm_format)
        set_spec(instr, spec_table)
        replace_names_with_symbols(self.symbols, instr.operands)
        self.amoco = instr
        return self
    def from_bin(self, in_str, section):
        ''' binary input, in assembly format '''
        self.section = section
        self.offset = in_str.offset
        from plasmasm.parse_bin import endofsection_address
        end_of_section = endofsection_address(self.symbols, section)
        end_of_instr = in_str.offset+cpu_amoco.disassemble.maxlen
        if end_of_instr > end_of_section:
            end_of_instr = end_of_section
        instr = cpu_amoco.disassemble(in_str[self.offset:end_of_instr])
        if instr is None:
            instr = StubNone(self.offset, in_str[self.offset:self.offset+1])
        self.bytelen = instr.length
        in_str.offset = self.offset + self.bytelen
        self.amoco = instr
        return self
    def pack(self):
        ''' binary representation '''
        return self.amoco.bytes # Only if unchanged
        raise ValueError("amoco cannot provide the binary representation")
    def txt(self, asm_format=None):
        ''' text output, to be used by an assembler '''
        if asm_format is not None:
            asm_format_orig = self.asm_format
            self.set_asm_format(asm_format)
        if self.asm_format == 'raw' and str(self.amoco) == 'nop       ':
            txt = 'nop [%r]' % self.amoco.bytes
        elif self.asm_format == 'raw':
            txt = '%s [%s]' % (self.amoco, self.amoco.spec.hook.__name__)
        else:
            txt = str(self.amoco)
        if asm_format is not None:
            self.set_asm_format(asm_format_orig)
        return txt
    def labels(self):
        ''' labels that are referenced in the line '''
        res = set()
        for arg in self.amoco.operands:
            if arg._is_lab:
                res.add(arg)
            if arg._is_eqn and arg.l._is_lab:
                res.add(arg.l)
            if arg._is_eqn and arg.r._is_lab:
                res.add(arg.r)
            if arg._is_mem and hasattr(arg.a.disp, '_is_lab') and arg.a.disp._is_lab:
                res.add(arg.a.disp)
            if arg._is_mem and arg.a.base._is_lab:
                res.add(arg.a.base)
            if arg._is_mem and arg.a.base._is_eqn and arg.a.base.l._is_lab:
                res.add(arg.a.base.l)
            if arg._is_mem and arg.a.base._is_eqn and arg.a.base.r._is_lab:
                res.add(arg.a.base.r)
        return set([_.ref for _ in res if hasattr(_.ref, 'name')])
    def set_asm_format(self, asm_format):
        if asm_format is None or asm_format.startswith('att_syntax'):
            if asm_format == 'att_syntax clang':
                instruction.set_formatter(IA32_MacOSX_ATT)
            else:
                instruction.set_formatter(IA32_Binutils_ATT)
            # AT&T syntax is buggy, and depends on whether it is used by
            # binutils or clang, cf. att_bug_fsub_fdiv
        elif asm_format.startswith('intel_syntax'):
            instruction.set_formatter(IA32_Binutils_Intel)
            # Intel syntax is ambiguous, e.g. call eax
            # when there is a global variable eax
        self.asm_format = asm_format
    set_asm_format = classmethod(set_asm_format)
    asm_format = None
    def _create_reloc(self, a):
        ''' needed to be able to pack an instruction '''
        TODO
    def _extract_symbols(self, a):
        # Parsing the argument 'a', find if there is a relocation
        # to be made, extract the symbols
        # Output: relocation type (None/False/True), label(s)
        TODO
    def list_relocs(self):
        ''' needed to create a relocatable ELF '''
        TODO
    # Methods for binary parser
    def create_label_imm(self):
        ''' Replace immediate values that may be labels '''
        from plasmasm.parse_bin import label_for_address
        if switch_detection_clang32(self):
            # Specific mandatory hook to detect a label difference
            # and to compute the PIC label, even when PIC data computation
            # will not be made
            return
        if switch_detection_gcc411(self):
            return
        address = switch_detection_gcc463m32opt(self)
        if address is not None:
            section = self.symbols.get_sectionname(address)
            label = self.symbols.find_symbol(section = section, address = address)
            log.debug("... TABLE(imm) %r", label)
            self.api_set_imm_label(1, address, label)
            return
        for idx in range(self.api_nb_arg()):
            value = self.api_get_imm(idx)
            label = label_for_address(self.symbols, value)
            if label is not None:
                assert label.address == value
                self.api_set_imm_label(idx, value, label)
        gcc_label_for_inlined_memcpy(self)
    def create_label_rel(self):
        ''' Replace relative addresses for call/jmp/jcc '''
        if self.opname == 'call' or self.opname.startswith('j'):
            idx = 0
            value = self.api_get_cst(idx)
        else:
            return
        if value is None:
            return
        props = { 'address': (self.offset+self.bytelen+value)%(1<<cpu_addrsize),
                  'section': self.section }
        label_imm = self.symbols.find_symbol(**props)
        if label_imm is None:
            NON_REGRESSION_FOUND
            return
        if label_imm.is_symbol() and self.bytelen < 5:
            # If the argument is not 4 bytes long, create a new label
            # and keep the same stack; if we don't do this, then instead
            # of generating a relative jump, the assembler will generate
            # a jump with relocation; it is the same semantics, but breaks
            # non-regression tests asking that the generated .o is the same
            # as the original one
            # Non-regression: jcmarker.o from libjpeg-6b / gcc 4.6.3
            old_stack = label_imm.stack
            props['name'] = self.symbols.new_name(**props)
            label_imm = self.symbols.find_symbol(**props)
            label_imm.stack = old_stack
        self.api_set_imm_label(idx, value, label_imm)
    def apply_reloc(self, pos, reloc):
        ''' 'reloc' is a relocation at offset 'pos'
            This function modifies the argument impacted by the relocation '''
        # Step 1: find which arg is impacted
        pos -= self.offset
        b, = struct.unpack("B", self.amoco.bytes[pos:pos+1])
        b = struct.pack("B", (1+b)%256)
        o = cpu_amoco.disassemble(self.amoco.bytes)
        patched = self.amoco.bytes[:pos] + b + self.amoco.bytes[pos+1:]
        p = cpu_amoco.disassemble(patched)
        if o.mnemonic != p.mnemonic:
            log.error("Relocation changes instruction! %s => %s", o, p)
            log.error("   at offset %r with reloc %r", pos, reloc)
            log.error("   for '%s' at %s, address=%s",
                self, self.section, self.offset)
            return
        # To find if an argument has changed, we compute the difference
        # and test if it is non-zero
        argpos = None
        for idx, (oa, na) in enumerate(zip(o.operands, p.operands)):
            d = na - oa
            if d._is_cst and int(d) == 0:
                # Not changed
                continue
            if argpos is not None:
                log.error("Relocation touches many arguments")
                log.error("    reloc %r for '%s'", reloc, self)
                return
            argpos = idx
        if argpos is None:
            log.error("Relocation touches no argument")
            log.error("    reloc %r for '%s'", reloc, self)
            log.error("ARGPOS %s", argpos)
            return
        # Step 2: modify the argument by using the reloc data
        address = switch_detection_gcc463m32opt(self)
        if address is None:
            address = switch_detection_gcc346m32opt(self)
        if self.amoco.operands[argpos]._is_cst:
            offset = int(self.amoco.operands[argpos])
            if offset >= (1<<(cpu_addrsize-1)):
                offset -= 1<<cpu_addrsize # Signed
            self.amoco.operands[argpos] -= offset
        elif self.amoco.operands[argpos]._is_mem:
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
        if address is None:
            from plasmasm.get_symbols import analyze_reloc
            label, label_dif, offset, size = analyze_reloc(self.symbols,
                reloc, offset, self.offset, pos, self.bytelen)
        else:
            # Special case: offset to a switch table
            r_type, data = reloc
            # Some coherency checks
            from elfesteem import elf
            if r_type != ('ELF', elf.EM_386, elf.R_386_32): NEVER
            if data['section'] != '.rodata': NEVER
            label = self.symbols.find_symbol(
                section=data['section'], address=address)
            label_dif = None
            offset -= address
            size = cpu_addrsize
            log.debug("... TABLE(rel) %r", label)
            self.dst = [[label]]
        ext_label = expressions.lab(label, size=size)
        if label_dif is not None:
            ext_label -= expressions.lab(label_dif, size=size)
        if offset != 0:
            ext_label = ext_label + offset
        if self.amoco.operands[argpos]._is_cst:
            self.amoco.operands[argpos] += ext_label
        elif self.amoco.operands[argpos]._is_mem and self.amoco.operands[argpos].a.base._is_cst:
            self.amoco.operands[argpos].a.base += ext_label
        elif self.amoco.operands[argpos]._is_mem:
            self.amoco.operands[argpos].a.disp += ext_label
        else:
            NEVER
        #if self.amoco.operands[argpos]._is_lab and \
        #   self.opname in [ 'call', 'jmp' ]:
        #    self.amoco.misc['dst'] = label

class InstructionCFG(Instruction):
    __slots__ = ('flow', 'dst')
    def _set_flow(self):
        if   self.opname == 'call':       self.flow = 'sub'
        elif self.opname == 'ret':        self.flow = 'ret'
        elif self.opname == 'retn':       self.flow = 'ret'
        elif self.opname == 'ud2':        self.flow = 'ret'
        elif self.opname == 'jmp':        self.flow = 'jmp'
        elif self.opname.startswith('j'): self.flow = 'jcc'
        elif self.opname == 'loop':       TODO
        elif self.opname == 'iret':       TODO
        elif self.opname == 'int':        TODO
        else:                             self.flow = None
    def _set_dst(self):
        if hasattr(self, 'dst'):
            # Already set by switch detection
            return
        if   self.flow is None:
            self.dst = []
        elif self.flow == 'ret':
            self.dst = [None]
        elif self.flow in [ 'sub', 'jmp', 'jcc' ]:
            self.dst = [ self.api_get_symbol(0) ]
        else:
            raise ValueError("Flow %s unknown"%self.flow)
        if self.flow == 'sub' and len(self.dst) == 1 \
            and hasattr(self, 'offset') \
            and getattr(self.dst[0], 'address', None) == self.offset+self.bytelen:
            # Detection of clang or gcc 3.x computation of GOT offset
            # "call Ln" and "Ln: pop reg" and "add GOT"
            self.flow = 'PIC'
    def evaluate_lines(self, lines, in_str):
        return evaluate_lines(self, lines, in_str)

def get_touched(e, indirect=False):
    # If indirect==True, registers read to determine addresses in e
    # If indirect==False, other registers read/written when e is read/written
    t = set()
    if e._is_def == 0: # top
        # some flags may have undetermined values, e.g. for sar edx, 31
        # some semantics are not implemented, e.g. shld edi, ebx, cl
        pass
    elif e._is_slc:
        t.update(get_touched(e.x, indirect))
    elif e._is_cmp:
        for s in e.parts:
            t.update(get_touched(e.parts[s], indirect))
    elif e._is_cst:
        pass
    elif e._is_lab:
        pass
    elif e._is_reg:
        if not indirect:
            t.update([e])
    elif e._is_mem:
        t.update(get_touched(e.a, indirect))
    elif e._is_ptr:
        if not indirect:
            t.update(['MEM'])
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
        r.update(get_touched(src, False))
        r.update(get_touched(dst, True))
        r.update(get_touched(src, True))
    return r, w

def is_mmx(line, env):
    if line.opname.startswith('cvt'):
        return True
    for reg in env.mmregs + env.xmmregs: # Loop, and use 'is', because
        for arg in line.amoco.operands:  # membership test with 'in' uses
            if arg is reg: return True # '==' which is redefined and buggy
    return False

def add_semantics_missing(line, r, w, env, get_touched):
    # Some bugs of amoco emulation; we modify r and w
    
    reg_flags = list(get_touched(env.cf))[0] # eflags/rflags in 32/64-bit mode
    # flags are not read, for these instructions
    if line.opname in ('cmp', 'test', 'inc', 'dec', 'add', 'sub', 'mul', 'imul',
            'neg', 'and', 'or', 'bsf', 'bsr',
            'aaa', 'aad', 'aam', 'aas', 'daa', 'das',
            'bt'):
        r.remove(reg_flags)
    if line.opname in ('rol', 'ror'):
        r.discard(reg_flags)
    # No semantics for div in amoco
    if line.opname in ('div', 'idiv'):
        r.update(get_touched(env.eax))
        w.update(get_touched(env.eax))
        arg = line.amoco.operands[0]
        if not (arg._is_slc and arg.size == 8):
            # not 8-bit
            r.update(get_touched(env.edx))
            w.update(get_touched(env.edx))
        r.update(get_touched(arg, False))
        r.update(get_touched(arg, True))
    # Incomplete semantics
    if line.opname == 'bt':
        for arg in line.amoco.operands:
            r.update(get_touched(arg, False))
            r.update(get_touched(arg, True))
    if line.opname in ('shld', 'shrd') and line.amoco.operands[2]._is_slc:
        dst = line.amoco.operands[0]
        src = line.amoco.operands[1]
        w.update(get_touched(dst, False))
        r.update(get_touched(dst, False))
        r.update(get_touched(src, False))
        r.update(get_touched(dst, True))
        r.update(get_touched(src, True))
        r.update(get_touched(env.ecx))
    if line.opname in ('ldmxcsr', 'stmxcsr', 'xsave', 'xrstor', 'xsaveopt',
            'clflush', 'lfence', 'mfence', 'sfence'):
        # reads or writes registers that are not in amoco's model,
        # e.g. Processor Extended States
        pass
    # No semantics for fpu operations in amoco
    if line.opname.startswith('f'):
        fpu_s = env.fpu_status
        fpu_c = env.fpu_control
        # NB: we don't include in the following table the modification of C1
        # when there is a FPU stack overflow, because it depends on the value
        # of other status flags
        fpu_table = { # stack,          read,                  written
            (2,'fcomi'):   (0, (env.st(0),1),             (reg_flags,)),
            (1,'fcomi'):   (0, (env.st(0),0),             (reg_flags,)),
            (2,'fcomip'):  (1, (env.st(0),1),             (reg_flags,)),
            (1,'fcomip'):  (1, (env.st(0),0),             (reg_flags,)),
            (2,'fucomi'):  (0, (env.st(0),1),             (reg_flags,)),
            (1,'fucomi'):  (0, (env.st(0),0),             (reg_flags,)),
            (2,'fucomip'): (1, (env.st(0),1),             (reg_flags,)),
            (1,'fucomip'): (1, (env.st(0),0),             (reg_flags,)),
            (1,'fcom'):    (0, (env.st(0),0),             (fpu_s,)),
            (1,'fcomp'):   (0, (env.st(0),0),             (fpu_s,)),
            (0,'fcompp'):  (2, (env.st(0),env.st(1)),     (fpu_s,)),
            (1,'fucom'):   (0, (env.st(0),0),             (fpu_s,)),
            (1,'fucomp'):  (1, (env.st(0),0),             (fpu_s,)),
            (0,'fucompp'): (2, (env.st(0),env.st(1)),     (fpu_s,)),
            (0,'fldz'):    (0, (fpu_c,),                  (env.st(0),)),
            (0,'fld1'):    (0, (fpu_c,),                  (env.st(0),)),
            (0,'fldl2t'):  (0, (fpu_c,),                  (env.st(0),)),
            (0,'fldl2e'):  (0, (fpu_c,),                  (env.st(0),)),
            (0,'fldpi'):   (0, (fpu_c,),                  (env.st(0),)),
            (0,'fldlg2'):  (0, (fpu_c,),                  (env.st(0),)),
            (0,'fldln2'):  (0, (fpu_c,),                  (env.st(0),)),
            (0,'fxam'):    (0, (env.st(0),),              (fpu_s,)),
            (0,'fabs'):    (0, (env.st(0),),              (env.st(0),)),
            (0,'frndint'): (0, (env.st(0),fpu_c),         (env.st(0),)),
            (0,'fsqrt'):   (0, (env.st(0),),              (env.st(0),)),
            (0,'fchs'):    (0, (env.st(0),),              (env.st(0),)),
            (0,'fptan'):  (-1, (env.st(0),),              (env.st(0),)),
            (0,'fpatan'):  (1, (env.st(0),),              (env.st(0),)),
            (0,'fprem'):   (0, (env.st(0),env.st(1)),     (env.st(0),fpu_s)),
            (0,'fprem1'):  (0, (env.st(0),env.st(1)),     (env.st(0),fpu_s)),
            (1,'fld'):    (-1, (0,),                      (env.st(0),)),
            (1,'fild'):   (-1, (0,),                      (env.st(0),)),
            (1,'fst'):     (0, (env.st(0),fpu_c),         (fpu_s,0)),
            (1,'fstp'):    (1, (env.st(0),fpu_c),         (fpu_s,0)),
            (1,'fist'):    (0, (env.st(0),fpu_c),         (fpu_s,0)),
            (1,'fistp'):   (1, (env.st(0),fpu_c),         (fpu_s,0)),
            (1,'fisttp'):  (1, (env.st(0),fpu_c),         (fpu_s,0)),
            (1,'fxch'):    (0, (env.st(0),0),             (env.st(0),0)),
            (1,'fiadd'):   (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fisub'):   (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fisubr'):  (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fimul'):   (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fidiv'):   (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fidivr'):  (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fadd'):    (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fsub'):    (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fsubr'):   (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fmul'):    (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fdiv'):    (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (1,'fdivr'):   (0, (env.st(0),0),             (fpu_s,env.st(0),)),
            (2,'fadd'):    (0, (0,1),                     (fpu_s,0,)),
            (2,'fsub'):    (0, (0,1),                     (fpu_s,0,)),
            (2,'fsubr'):   (0, (0,1),                     (fpu_s,0,)),
            (2,'fmul'):    (0, (0,1),                     (fpu_s,0,)),
            (2,'fdiv'):    (0, (0,1),                     (fpu_s,0,)),
            (2,'fdivr'):   (0, (0,1),                     (fpu_s,0,)),
            (2,'faddp'):   (1, (0,1),                     (fpu_s,0,)),
            (2,'fsubp'):   (1, (0,1),                     (fpu_s,0,)),
            (2,'fsubrp'):  (1, (0,1),                     (fpu_s,0,)),
            (2,'fmulp'):   (1, (0,1),                     (fpu_s,0,)),
            (2,'fdivp'):   (1, (0,1),                     (fpu_s,0,)),
            (2,'fdivrp'):  (1, (0,1),                     (fpu_s,0,)),
            (1,'fbstp'):   (0, (env.st(0),fpu_c),         (0,)),
            (1,'fldcw'):   (0, (0,),                      (fpu_c,)),
            (1,'fnstcw'):  (0, (fpu_c,),                  (0,)),
            (1,'fnstsw'):  (0, (fpu_s,),                  (0,)),
            (0,'fsave'):   (0, (fpu_c,fpu_s),             ()),
            (0,'fnsave'):  (0, (fpu_c,fpu_s),             ()),
            (1,'fstenv'):  (0, (fpu_c,fpu_s),             (0,)),
            (1,'fnstenv'): (0, (fpu_c,fpu_s),             (0,)),
            (0,'finit'):   (0, (),                        (fpu_c,fpu_s)),
            (0,'frstor'):  (0, (),                        (fpu_c,fpu_s)),
            (0,'fnclex'):  (0, (),                        (fpu_s,)),
            (1,'fxsave'):  (0, (fpu_s,),                  ()),
            (1,'fxrstor'): (0, (),                        (fpu_s,)),
            }
        try:
            key = (len(line.amoco.operands), line.opname)
            stack_pop, reg_r, reg_w = fpu_table[key]
        except KeyError:
            if line.opname.startswith('fcmov'):
                stack_pop, reg_r, reg_w = 0, (reg_flags,1), (fpu_s,env.st(0),)
            else:
                stack_pop, reg_r, reg_w = 0, (), ()
                log.error("fpu_table: %r missing",key)
        if stack_pop == -1: # push on FPU stack
            r.update([env.st(_) for _ in range(7)])
            w.update([env.st(1+_) for _ in range(7)])
        elif stack_pop == 1: # pop on FPU stack
            # bug for faddp %st(7) and similar: because of stack_pop
            # the register %st(6) is written instead of %st(7)
            r.update([env.st(1+_) for _ in range(7)])
            w.update([env.st(_) for _ in range(7)])
        elif stack_pop == 2: # pop twice on FPU stack
            r.update([env.st(2+_) for _ in range(6)])
            w.update([env.st(_) for _ in range(6)])
        for reg in reg_r:
            if isinstance(reg, int):
                r.update(get_touched(line.amoco.operands[reg],False))
                r.update(get_touched(line.amoco.operands[reg],True))
            else: r.add(reg)
        for reg in reg_w:
            if isinstance(reg, int):
                w.update(get_touched(line.amoco.operands[reg],False))
                r.update(get_touched(line.amoco.operands[reg],True))
            else: w.add(reg)
    # No semantics for MMX/SSE operations in amoco
    if is_mmx(line, env):
        dst = line.amoco.operands[0]
        src = line.amoco.operands[1]
        w.update(get_touched(dst, False))
        r.update(get_touched(dst, False)) # Not for all MMX operations
        r.update(get_touched(src, False))
        r.update(get_touched(dst, True))
        r.update(get_touched(src, True))
        if line.opname.startswith('ucomi'): w.add(reg_flags)
    elif 0xF2 in line.prefix or (0xF3 in line.prefix and line.opname != 'ret'):
        # True rep/repz/repnz
        r.update(get_touched(env.ecx))
        w.update(get_touched(env.ecx))

class InstructionRW(InstructionCFG):
    __slots__ = ('rw',)
    def _set_rw(self):
        m = mapper()
        self.amoco(m)
        r, w = get_rw(m)
        add_semantics_missing(self, r, w, env, get_touched)
        self.rw = r, w
    def reg_name(r):
        return str(r)
    reg_name = staticmethod(reg_name)

class InstructionDEAD(InstructionRW):
    __slots__ = ('pic', 'stack', 'dead', 'immutable')

from amoco.cas import expressions
expressions.op.limit(float("inf"))

def evaluate_lines(instr, lines, in_str):
    # Run the emulation of the basic bloc
    machine = mapper()
    def print_machine(machine):
        return sorted(str(machine).split("\n"))
    for line in lines:
        # eip is the next instruction: basic bloc may have been merged,
        # but conditional jumps are not taken
        machine[env.eip] = env.cst(line.offset,cpu_addrsize)
        try:
            line.amoco(machine)
        except NotImplementedError:
            return (('Not implemented', line, print_machine(machine)), [None])
        except NameError:
            return (('Cannot be emulated (name)', line, print_machine(machine)), [None])
        except amoco.arch.core.InstructionError:
            return (('Cannot be emulated', line, print_machine(machine)), [None])
        except TypeError:
            return (('Not callable', line, print_machine(machine)), [None])
        if line.opname == 'call':
            # amoco emulation pushes eip+i.length
            # we prefer to push the label of the next basic bloc
            label = instr.symbols.find_symbol(
                section=line.section,
                address=line.offset+line.amoco.length)
            machine[env.mem(env.esp,cpu_addrsize)] = expressions.lab(label, size=cpu_addrsize)
    retval = machine[env.eip]
    msg, val = evaluate(retval,
       machine, instr.symbols.find_symbols, instr, in_str)
    if val is None:
        return ((str(retval.__class__), retval, print_machine(machine)), [None])
    elif val == [None]:
        return ((msg, retval, print_machine(machine)), [None])
    else:
        return (msg, val)

# Interface for expressions
class expr(object):
    def get_cst(e):
        NON_REGRESSION_FOUND
        if e is not None and e._is_cst: return int(e)
    get_cst = staticmethod(get_cst)
    def get_lab(e):
        if e is not None and e._is_lab: return e.ref
    get_lab = staticmethod(get_lab)
    def get_lab_imm(e):
        if e is not None and e._is_cst: return None, int(e)
        if e is not None and e._is_lab: return e.ref, 0
        if e is not None and e._is_eqn and e.op.symbol == '+' \
                and e.l._is_lab \
                and e.r._is_cst:
            return e.l.ref, int(e.r)
        return None, None
    get_lab_imm = staticmethod(get_lab_imm)
    def get_reg(e):
        if e is not None and e._is_reg and not e._is_lab: return e.ref
    get_reg = staticmethod(get_reg)
    def get_mem(e):
        if e is not None and e._is_mem: return e.a.base+e.a.disp
    get_mem = staticmethod(get_mem)
    def get_eqn(e):
        NON_REGRESSION_FOUND
        if e is not None and e._is_eqn: return True
    get_eqn = staticmethod(get_eqn)
    def get_tst(e):
        if e is not None and e._is_tst: return e.l, e.r
    get_tst = staticmethod(get_tst)

def evaluate(address, machine, find, instr, in_str):
    # Generates a list of labels, each label being a possible value
    # for the expression 'address'
    log.debug("EVALUATE %s\n\t%s", address.__class__.__name__, address)
    
    address = remove_got(address, instr.symbols)
    
    v = expr.get_reg(address)
    if v is not None: return 'REG', [ None ]
    
    v = expr.get_lab(address)
    if v is not None: return 'ID', [ v ]
    
    v = expr.get_mem(address)
    if v is not None:
        # Lookup at some address
        return evaluate_mem(v, machine, find, instr, in_str)
    
    v = test_clang_switch_array(address)
    if v is not None:
        L1, L2 = v
        L1 = expr.get_lab(L1)
        if not hasattr(L1, 'lines'):
            # Switch table needs to be parsed later
            # Switch table already detected by pattern matching in compilers.py
            NON_REGRESSION_FOUND
            log.debug("Parse switch table later %r", L1)
            pic_base, ptr_size, tbl_size = L1.switch_table
            assert ptr_size == 4
            assert L2 == "-%s"%pic_base
            return 'SWITCH', 'TABLE'
        msg = 'ARRAY'
        lines = [ _.value[0] for _ in L1.lines ]
        table = []
        for s in lines:
            if not hasattr(s, 'name'):
                s = False
            elif not s.name.endswith(L2):
                msg = 'INCOHERENT'
                continue
            else:
                s = find(name = s.name[:-len(L2)])[0]
            if not s in table: table.append(s)
        if not hasattr(L1, 'size'):
            # Switch table not complete
            if not None in table: table.append(None)
        return msg, table
    
    v = expr.get_tst(address)
    if v is not None:
        msg_l, res_l = evaluate(v[0], machine, find, instr, in_str)
        msg_r, res_r = evaluate(v[1], machine, find, instr, in_str)
        if res_l is None or res_r is None:
            return None, None
        return "%s+%s"%(msg_l,msg_r), res_l+res_r
    
    log.debug("Need better analysis of %s:%s", address.__class__.__name__, address)
    return None, None

def evaluate_mem(address, machine, find, instr, in_str):
    log.debug("EVALUATE_MEM %s\n\t%s", address.__class__.__name__, address)
    
    v = expr.get_reg(address)
    if v is not None:
        return 'MEM_REG', [ None ]
    
    table, offset = expr.get_lab_imm(address)
    if offset is not None:
        msg, val = deref_table(table, offset, instr.symbols, in_str)
        if val is not None:
            return msg, val
    
    v = expr.get_mem(address)
    if v is not None:
        return 'MEM_MEM', [ None ]
    
    return array_detection(address, machine, find, instr, in_str)

def array_detection(input, machine, find, instr, in_str):
    log.debug("ARRAY_DETECT %s\n\t%s", input.__class__.__name__, input)
    dst_lst = []
    # Is it an element of an array?
    # Find the multiplication, replace it by 'index_in_array'
    index_var = env.ext('index_in_array',size=cpu_addrsize)
    item_len = 0
    if input.op.symbol == '+' and input.l._is_eqn:
        if input.l.op.symbol == '+' and input.l.l._is_eqn and \
           input.l.l.op.symbol == '*' and input.l.l.r._is_cst:
            item_len = int(input.l.l.r)
            input.l.l = index_var
        elif input.l.op.symbol == '+' and input.l.r._is_eqn and \
           input.l.r.op.symbol == '*' and input.l.r.r._is_cst:
            item_len = int(input.l.r.r)
            input.l.r = index_var
        elif input.l.op.symbol == '*' and input.l.r._is_cst:
            item_len = int(input.l.r)
            input.l = index_var
        elif input.l.op.symbol == '<<':
            item_len = 1 << int(input.l.r)
            input.l = index_var
    elif input.op.symbol == '+' and input.r._is_eqn:
        if input.r.op.symbol == '*' and input.r.r._is_cst:
            item_len = int(input.r.r)
            if input.r.l._is_ptr and input.r.l.disp == 0 and \
               input.r.l.base._is_eqn and input.r.l.base.op.symbol == '+' and \
               input.r.l.base.r._is_eqn and input.r.l.base.r.op.symbol == '*' \
               and input.r.l.base.r.r._is_cst \
               and input.r.l.base.l == input.r.l.base.r.l:
                item_len *= 1 + int(input.r.l.base.r.r)
            input.r = index_var
        elif input.r.op.symbol == '<<':
            # Non-regression: c6-fPIC.o
            NON_REGRESSION_FOUND
            item_len = 1 << int(input.r.r)
            input.r = index_var
    if item_len == 0:
        msg = 'MEM_EXP - NOT AN ARRAY'
        return msg, [None]
    log.debug("    ARRAY of %d-byte items", item_len)
    # Usually 4-byte items
    # Can be  8-byte items e.g. for ceval.o from python2.4.5 / gcc 4.6.3
    # Can be 12-byte items e.g. for deflate.o from zlib 1.2.8 / gcc 4.6.3
    invalid_indexes = 0
    index_in_array = -item_len
    while invalid_indexes < 4:
        index_in_array += item_len
        m2 = mapper()
        m2[index_var] = env.cst(index_in_array, size=cpu_addrsize)
        address_in_array = input.eval(m2)
        log.debug("    x[%d] at %s:%s",
                index_in_array//item_len,
                address_in_array.__class__.__name__,
                address_in_array)
        msg, val = 'NOT FOUND', None
        table, offset = expr.get_lab_imm(address_in_array)
        if val is None and offset is not None:
            msg, val = deref_table(table, offset, instr.symbols, in_str)
        if val is None:
            mapper.assume_no_aliasing = True
            offset = machine.M(env.mem(address_in_array))
            mapper.assume_no_aliasing = False
            offset = remove_got(offset, instr.symbols)
            v = expr.get_lab(offset)
            if v:
                msg, val = 'MEM', [ v ]
            table, offset = expr.get_lab_imm(expr.get_mem(offset))
            if offset is not None:
                msg, val = deref_table(table, offset, instr.symbols, in_str)
        if val == 'TABLE':
            return msg, val
        if val in (None, [None]):
            log.debug("        ----> %s", msg)
            invalid_indexes += 1
            continue
        for label in val:
            if label.name.endswith('@GOTOFF'):
                # to make this work also with executables, we will need to
                # change our API and get the offset value that will have to
                # be substracted; removing @GOTOFF is not enough!
                label = find(name = label.name[:-7])[0]
            log.debug("        => %s", label)
            if not label in dst_lst:
                dst_lst.append(label)
    if dst_lst == []:
        return 'MEM_EXP', [None]
    return 'ARRAY', dst_lst

def deref_table(table, offset, pool, in_str):
    log.debug("DEREF %s at %s", table, offset)
    if table is None:
        return deref_address(offset, pool, in_str)
    if getattr(table, 'section', None) in ['.got.plt', '.got', '.idata']:
        assert offset == 0
        return 'GOT_PLT', [ table ]
    if not hasattr(table, 'lines'):
        # 'table' has not been parsed; will be later
        return 'MEM_TABLE %s not parsed (offset %d)' % (table, offset), 'TABLE'
    if hasattr(table, 'lines') and offset < table.bytelen:
        # Offset in a table
        sz = 0
        for line in table.lines:
            if sz == offset: break
            sz += line.bytelen
        else:
            line = None
        if getattr(line, 'type', None) == 'long' and \
           hasattr(line.value[0], 'name'):
            label = line.value[0]
            if label.name.startswith('_GLOBAL_OFFSET_TABLE_+[.-'):
                label = label.reference
            return 'MEM_ID', [ label ]
        else:
            return 'MEM_TABLE %s[%d]=%s' % (table, offset, line), [ None ]
    if not hasattr(table, 'address'):
        # Non-regression: gp.o from pari-2.5.5 / gcc 4.6.3
        NON_REGRESSION_FOUND
        return 'MEM_LAB_IMM %r offset=%s' % (table, offset), [ None ]
    return deref_address(table.address + offset, pool, in_str)

import struct
def deref_address(offset, pool, in_str):
    log.debug("DEREF_ADDRESS %#x", offset)
    if offset == 0:
        # Non-regression: cjpeg.o from libjpeg-6b / gcc 3.2.3
        # relocated value
        NON_REGRESSION_FOUND
        return 'NULL', [ None ]
    # Read from file (mapped in memory)
    # Should not happen, the data sections should have been parsed and
    # labels should have been created
    # However, compilers sometimes generate (idx*4)+(label-4) rather than
    # ((idx-1)*4)+label, and therefore 'label' is hidden
    section = pool.get_sectionname(offset)
    if section in [".data"]:
        address = struct.unpack("I", in_str[offset:offset+4])[0]
        a_section = pool.get_sectionname(address)
        if a_section in [".text", ".plt"]:
            label_list = pool.find_symbols(address = address)
            if len(label_list): return 'MEM_VAL', label_list
    if section in [".got"]:
        label = pool.find_symbols(address = offset)
        if label is []:
            NON_REGRESSION_FOUND
            return 'MEM_LAB_IMM %r address=%s' % (table, offset), [ None ]
        if label[0].name.startswith('.rel.dyn.'):
            label = pool.find_symbol(name = label[0].name[9:])
        else:
            label = label[0]
            NON_REGRESSION_FOUND
        return 'MEM_INT GOT', [ label ]
    if section in [".idata"]:
        NON_REGRESSION_FOUND
        label = pool.find_symbol(address = offset)
        if label.name.startswith('msvcrt.dll'):
            return 'MSVCRT', [ label ]
        return 'MEM_INT', [ label ]
    return 'NOT IN TABLE [%s:%#x]' % (section, offset), None

def remove_got(address, pool):
    if '@GOT' in str(address):
        # When the expression contains @GOT or @GOTOFF, one should cancel
        # the PIC offset
        # This trick works only for relocatable objects :-(
        v = remove_pic_offset(address, pool)
        if v is not None:
            log.debug("REMOVE GOT => %s", v)
            return v
    return address

def remove_pic_offset(e, pool):
    log.debug("DETECT PIC FROM %s:%s", e.__class__.__name__, e)
    
    if e._is_tst:
        label_l = remove_pic_offset(e.l, pool)
        label_r = remove_pic_offset(e.r, pool)
        if label_l is None or label_r is None: return None
        return env.tst(e.tst, label_l, label_r)
    
    # M32[M32[M32[PIC_OFFSET+toto@GOT]]+cte]
    # => M32[M32[toto]+cte]
    if e._is_mem \
            and e.a.base._is_mem \
            and e.a.base.a.disp == 0 \
            and e.a.base.a.base._is_mem:
        label = remove_pic_offset(e.a.base.a.base, pool)
        if label is None:
            return
        return env.mem(env.mem(label), disp=e.a.disp)
    
    # M32[M32[PIC_OFFSET+toto@GOT]+cte]
    # => M32[toto+cte]
    if e._is_mem and e.a.base._is_mem:
        label = remove_pic_offset(e.a.base, pool)
        if label is None: return
        return env.mem(label, disp=e.a.disp)
    
    # M32[M32[PIC_OFFSET+toto@GOT]+formula]
    # => M32[toto+formula]
    if e._is_mem \
            and e.a.base._is_eqn \
            and e.a.base.op.symbol == '+' \
            and e.a.base.l._is_mem:
        label = remove_pic_offset(e.a.base.l, pool)
        if label is None: return
        return env.mem(label+e.a.base.r, disp=e.a.disp)
    
    if e._is_mem and not hasattr(e.a.disp, '_is_lab'):
        log.debug("BASE %s; DISP %s; TODO", e.a.base, e.a.disp)
        return None
    
    # M32[PIC_OFFSET+toto@GOT]
    # => toto
    if e._is_mem \
            and e.a.disp._is_lab \
            and e.a.disp.ref.name.endswith('@GOT'):
        label_name = e.a.disp.ref.name[:-4]
        pic_data = e.a.base
        if not check_pic_data(pic_data):
            NON_REGRESSION_FOUND
            log.debug("PIC OFFSET [%s] LABEL %s", pic_data, label_name)
            return None
        return env.lab(pool.find_symbol(name = label_name), size=cpu_addrsize)
    
    # M32[PIC_OFFSET+toto@GOTOFF]
    # => M32[toto]
    if e._is_mem \
            and e.a.disp._is_lab \
            and e.a.disp.ref.name.endswith('@GOTOFF'):
        label = remove_pic_offset(e.a, pool)
        if label is None: return
        # Not sound: usually is a reference to somewhere in a data section
        # that may change at runtime
        return env.mem(label)
    
    # (M32[(INDEX_IN_TABLE+PIC_OFFSET)+toto@GOTOFF]+PIC_OFFSET)
    if e._is_ptr \
            and e.disp == 0:
        return remove_pic_offset(e.base, pool)
    
    # (PIC_OFFSET+toto@GOTOFF)
    # => toto
    if e._is_ptr \
            and e.disp._is_lab \
            and e.disp.ref.name.endswith('@GOTOFF'):
        label_name = e.disp.ref.name[:-7]
        pic_data = e.base
        if not check_pic_data(pic_data):
            log.debug("PIC OFFSET [%s] LABEL %s", pic_data, label_name)
            return None
        return env.lab(pool.find_symbol(name = label_name), size=cpu_addrsize)
    
    # (PIC_OFFSET+M32[(INDEX_IN_TABLE+PIC_OFFSET)+toto@GOTOFF])
    # (M32[(INDEX_IN_TABLE+PIC_OFFSET)+toto@GOTOFF]+PIC_OFFSET)
    # (-M32[(INDEX_IN_TABLE+PIC_OFFSET)+toto@GOTOFF]+PIC_OFFSET)
    # => M32[toto+INDEX_IN_TABLE]
    #    @GOTOFF will be removed later from the deref value
    #    to make this work also with executables, we will need to change
    #    our API and return the offset that will have to be substracted
    if e._is_eqn and e.op.symbol == '+':
        if   e.r._is_mem:
            u = e.r; v = e.l
        elif e.l._is_mem:
            u = e.l; v = e.r
        elif e.l._is_eqn and e.l.op.symbol == '-' and e.l.l is None:
            u = e.l.r; v = e.r
        else:
            log.error("Unknown formula %s", e)
            NON_REGRESSION_FOUND
            return None
        if not (u.a.base._is_eqn
            and u.a.disp._is_lab
            and u.a.disp.ref.name.endswith('@GOTOFF')):
            log.error("Unknown base %s", e)
            NON_REGRESSION_FOUND
            return None
        if not check_pic_data(v):
            log.debug("PIC OFFSET [%s] LABEL %s", v, None)
            return None
        if   u.a.base.l == v:
            b = u.a.base.r # Non-regression: a28-O3fPIC.o
        elif u.a.base.r == v:
            b = u.a.base.l # Non-regression: a28-fPIC.o
        else:
            log.error("BASE %s should never happen", u.a.base)
            NON_REGRESSION_FOUND
            return None
        label = u.a.disp.ref.name[:-7]
        label = env.lab(pool.find_symbol(name = label), size=cpu_addrsize)
        return env.mem(b, disp=label)

def check_pic_data(pic):
    pic = str(pic)
    if pic == '(@_GLOBAL_OFFSET_TABLE_+M32(esp))':
        # gcc 4.x PIC
        # The backtracking went back to the start of the function, where
        # the PIC offset is computed as @_GLOBAL_OFFSET_TABLE_+M32(esp)
        # after a call to __i686.get_pc_thunk.?x
        return True
    if pic == '(@_GLOBAL_OFFSET_TABLE_+ebx)':
        # gcc 4.x PIC
        # The backtracking went after returning from __i686.get_pc_thunk.bx
        return True
    if pic == 'ebx':
        # gcc 4.x PIC
        # The backtracking went not far but ebx may contain the PIC offset
        # This is a risky hypothesis, yet it seems to work
        return True
    if pic == 'ecx':
        # gcc 4.x PIC
        # The backtracking went not far but ecx may contain the PIC offset
        # This is a risky hypothesis, yet it seems to work
        return True
    return False

def test_clang_switch_array(address):
    # Expression of the form M32[L1-L2+r2+(r1*4)]+r2
    # L1 is the label of the table
    # r1 is the index in the table (register, sometimes shifted)
    # r2 stores the address of label L2 (register, immediate, ...)
    if not address._is_eqn:
        return None
    if not address.op.symbol == '+':
        return None
    if   address.l._is_mem and getattr(address.l.a.disp, '_is_eqn', False):
        mem_expr, r2 = address.l, address.r
    elif address.r._is_mem and getattr(address.r.a.disp, '_is_eqn', False):
        r2, mem_expr = address.l, address.r
    else:
        return None
    if   mem_expr.a.base._is_eqn and mem_expr.a.base.op.symbol == '+' and \
        mem_expr.a.base.r == r2:
        r1_4 = mem_expr.a.base.l
    elif mem_expr.a.base._is_eqn and mem_expr.a.base.op.symbol == '+' and \
        mem_expr.a.base.l == r2:
        r1_4 = mem_expr.a.base.r
    else:
        return None
    if not r1_4._is_eqn or not r1_4.r._is_cst or r1_4.r != 4:
        return None
    if mem_expr.a.disp._is_eqn and mem_expr.a.disp.op.symbol == '+' and \
        mem_expr.a.disp.r._is_lab and mem_expr.a.disp.l._is_eqn and \
        mem_expr.a.disp.l.op.symbol == '-' and \
        mem_expr.a.disp.l.l is None and mem_expr.a.disp.l.r._is_lab:
        L1 = mem_expr.a.disp.r
        L2 = '-%s' % mem_expr.a.disp.l.r.ref
    else:
        return None
    # Now that everything has been verified, we scan the array
    log.debug("CLANG SWITCH %s%s %s %s", L1, L2, r1_4, r2)
    return L1, L2
