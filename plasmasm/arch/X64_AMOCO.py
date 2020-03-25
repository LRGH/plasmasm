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
from amoco.arch.x64 import env
from amoco.arch.x64 import cpu_x64 as cpu_amoco
try:
    # Newer amoco
    from amoco.arch.x64.cpu_x64 import instruction_x64 as instruction
except ImportError:
    # Older amoco
    from amoco.arch.core import instruction
env.internals['keep_order'] = True
cpu_addrsize = 64

from amoco.arch.x86.formats import default_mnemo_name, default_eqn_parser, \
    mnemo_string_rep, \
    IA32_Binutils_ATT, IA32_Binutils_Intel, IA32_MacOSX_ATT
instruction.set_formatter(IA32_Binutils_ATT)

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
            return int(int(arg))
        elif arg._is_mem and arg.a.base._is_cst:
            return int(int(arg.a.base))
        elif arg._is_mem and not hasattr(arg.a.disp, '_is_cst'):
            return int(int(arg.a.disp))
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
        arg = self.amoco.operands[pos]
        return arg is not None and arg._is_mem
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
            if sym.size != self.amoco.operands[pos].size:
                sym.size = self.amoco.operands[pos].size
                # Sometimes, the compiler forces the label to be 32-bit,
                # e.g. with    movl $crc_table, %eax
                # Non-regression: crc32.o non PIC from zlib / gcc 4.8.4
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
        if reg.endswith('b'):
            # For the 8-bit slice of r8, gcc & clang use r8b,
            # Intel & amoco use r8l
            reg = reg[:-1]+'l'
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

spec_table = {}
for spec in amoco.arch.x64.spec_ia32e.ISPECS \
          + amoco.arch.x64.spec_fpu.ISPECS \
          + amoco.arch.x64.spec_sse.ISPECS:
    mnemo = spec.iattr.get('mnemonic', None)
    if not mnemo in spec_table:
        spec_table[mnemo] = [spec]
    elif not spec in spec_table[mnemo]:
        spec_table[mnemo].append(spec)
del spec
from plasmasm.arch.I386_AMOCO import \
    set_spec, \
    replace_names_with_symbols, \
    att_bug_fsub_fdiv

from plasmasm.symbols import Line
from plasmasm.compilers import \
    gcc64_label_for_char_array, \
    switch_detection_gcc64picopt, \
    switch_detection_gcc64picnotopt, \
    switch_detection_gcc64nopic, \
    switch_detection_clang64
from amoco.arch.x64.parsers import att_syntax
class Instruction(Line, API_AMOCO):
    __slots__ = ('section', 'offset', 'bytelen',
        'amoco')
    CPU = 'X64'
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
        log.debug("> %s", instr)
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
        if switch_detection_clang64(self):
            # Specific mandatory hook to detect a label difference
            # and to compute the PIC label, even when PIC data computation
            # will not be made
            return
        if switch_detection_gcc64nopic(self):
            return
        if switch_detection_gcc64picnotopt(self):
            return
        if switch_detection_gcc64picopt(self):
            return
        if gcc64_label_for_char_array(self):
            return
        for idx in range(self.api_nb_arg()):
            value = self.api_get_imm(idx)
            if value is None:
                continue
            log.debug("IMM %s -- %s", value, self)
            if '[rip' in self.api_arg_txt(idx):
                if self.api_is_arg_size(idx, 32):
                    size = 32
                else:
                    size = 64
                address = (self.offset+self.bytelen+value)%(1<<size)
            else:
                address = value
            label = label_for_address(self.symbols, address)
            if label is not None:
                assert label.address == address
                log.debug("==> %r", label)
                if label.name.startswith('.rela.dyn.'):
                    name = label.name[10:] + '@GOTPCREL'
                    label = self.symbols.find_symbol(name = name)
                self.api_set_imm_label(idx, value, label)
    def create_label_rel(self):
        ''' Replace relative addresses for call/jmp/jcc/lea/... '''
        if self.opname == 'call' or self.opname.startswith('j'):
            idx = 0
            value = self.api_get_cst(idx)
            size = cpu_addrsize
        elif self.opname in ('lea','mov') and self.api_arg_txt(1).startswith('[rip'):
            idx = 1
            value = self.api_get_imm(idx)
            size = cpu_addrsize
            if self.api_is_arg_size(idx, 32): size = 32
        else:
            return
        if value is None:
            return
        log.debug("REL %s -- %s", value, self)
        is_relocatable = self.symbols.get_meta().get('relocatable', False)
        address = (self.offset+self.bytelen+value)%(1<<size)
        if is_relocatable:
            section = self.section
        else:
            section = self.symbols.get_sectionname(address)
        props = { 'address': address, 'section': section }
        if self.opname == 'lea':
            props['data'] = {'data_object': size}
        label = self.symbols.find_symbol(**props)
        if label is None:
            NON_REGRESSION_FOUND
            return
        if is_relocatable and label.is_symbol() and (
            self.opname == 'jmp'
            or
            (self.opname == 'lea' and label.bind == 'globl')
            ):
            # Create a new label, to avoid generating a relocation.
            label = self.symbols.find_symbol(
                name = '.LTHUNK%d' % len(self.symbols.symbols),
                data = { 'set': label })
        log.debug("==> %r", label)
        self.api_set_imm_label(idx, value, label)
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
        if o == None or p == None or o.mnemonic != p.mnemonic:
            log.error("Relocation changes instruction! %s => %s", o, p)
            log.error("   at offset %r with reloc %r", pos, reloc)
            log.error("   for '%s' at %s, address=%s",
                self, self.section, self.offset)
            return
        # To find if an argument has changed, we compute the difference
        # and test if it is non-zero
        argpos = None
        for idx, (oa, na) in enumerate(zip(o.operands, p.operands)):
            try:
                d = na - oa
            except ValueError:
                log.error("Invalid relocation effect")
                log.error("    incompatible sizes %s %s", na, oa)
                log.error("    reloc %r for '%s'", reloc, self)
                return
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
        address = None # TODO SWITCH label_for_optimised_switch(self)
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
            log.error("Arg of type %s", self.amoco.operands[argpos].__class__)
            return
        if address is None:
            from plasmasm.get_symbols import analyze_reloc
            label, label_dif, offset, size = analyze_reloc(self,
                reloc, offset, pos, self.bytelen)
            r_type, data = reloc
            from elfesteem import elf
            if r_type[0] == 'ELF' and \
               r_type[1] == elf.EM_X86_64 and \
               r_type[2] in [
                    elf.R_X86_64_PC32,
                    elf.R_X86_64_GOT32,
                    elf.R_X86_64_PLT32,
                    elf.R_X86_64_32S,
                    ]:
                # The 32-bit reloc is expanded to 64-bit argument by amoco
                # but not with PUSH...
                # Note that the binutils syntax for PUSH immediate is very
                # inconsistent; objdump outputs:
                # 6a 08          (push one byte)   => pushq $0x8
                # 66 6a 08       (push two bytes)  => pushw $0x8
                # 66 68 08 00    (push two bytes)  => pushw $0x8
                # 68 08 00 00 00 (push four bytes) => pushq $0x8
                # the latter being used for relocs
                # we would have expected either always pushq, or depending
                # on the argument size pushb, pushw, pushl
                if self.opname != 'push': size = 64
            if r_type[0] == 'ELF' and \
               r_type[1] == elf.EM_X86_64 and \
               r_type[2] == elf.R_X86_64_PC32 and \
               getattr(label, 'bind', None) == 'weak':
                # In some cases, a new label has to be generated, or we get
                # an error: 'relocation R_X86_64_PC32 against symbol ... can
                # not be used when making a shared object'
                label = label.symbols.find_symbol(
                    name = '.LTHUNK%d' % len(label.symbols.symbols),
                    data = { 'set': label })
        else:
            # Special case: offset to a switch table
            r_type, data = reloc
            TODO
        ext_label = expressions.lab(label, size=size)
        if label_dif is not None:
            NEVER
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

from plasmasm.arch.I386_AMOCO import add_semantics_missing
class InstructionRW(InstructionCFG):
    __slots__ = ('rw',)
    def _set_rw(self):
        if self.opname in (
                'psllw','pslld','psllq',
                'psrlw','psrld','psrlq',
                ):
            # Workaround until amoco corrects this bug
            # https://github.com/bdcht/amoco/issues/65
            w = get_touched(self.amoco.operands[0])
            r = get_touched(self.amoco.operands[0])
            r.update(get_touched(self.amoco.operands[1]))
            r.update(get_touched(self.amoco.operands[1], True))
            self.rw = r, w
            return
        m = mapper()
        self.amoco(m)
        r, w = get_rw(m)
        add_semantics_missing(self, r, w, env, get_touched)
        r.add(env.rip); w.add(env.rip)
        self.rw = r, w
    def reg_name(r):
        return str(r)
    reg_name = staticmethod(reg_name)

class InstructionDEAD(InstructionRW):
    __slots__ = ('pic', 'stack', 'dead', 'immutable')

from amoco.cas import expressions

def evaluate_lines(instr, lines, in_str):
    # Run the emulation of the basic bloc
    machine = mapper()
    def print_machine(machine):
        return sorted(str(machine).split("\n"))
    # Emulation with amoco is too slow
    # For 'movsd' tests depending of 'df' are not simplified, therefore there
    # are too many nested tests
    # For 'cmovXX' tests are not simplified either
    perf_count = { 'movsd': 0, 'cmov': 0 }
    for line in lines:
        # rip is kept symbolic
        if line.opname in ('call', 'jmp'):
            machine[env.rip] = env.rip
        else:
            machine[env.rip] = env.rip-line.bytelen
        if line.opname == 'movsd':
            perf_count['movsd'] += 1
            if perf_count['movsd'] >= 3:
                return (('Emulated too slow (movsd)',
                        line, print_machine(machine)), [None])
        if line.opname.startswith('cmov'):
            perf_count['cmov'] += 1
            if perf_count['cmov'] >= 3:
                return (('Emulated too slow (cmov)',
                        line, print_machine(machine)), [None])
        try:
            log.debug("EVAL %-20r %s", line.amoco.bytes, line)
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
            # amoco emulation pushes rip+i.length
            # we prefer to push the label of the next basic bloc
            label = instr.symbols.find_symbol(
                section=line.section,
                address=line.offset+line.amoco.length)
            machine[env.mem(env.rsp,cpu_addrsize)] = expressions.lab(label, size=cpu_addrsize)
    retval = machine[env.rip]
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
        if e is not None and e._is_cst:
            return int(e)
    get_cst = staticmethod(get_cst)
    def get_lab(e):
        if e is not None and e._is_lab:
            return e.ref
    get_lab = staticmethod(get_lab)
    def get_lab_imm(e):
        if e is not None and e._is_cst:
            return None, int(e)
        if e is not None and e._is_lab:
            return e.ref, 0
        if e is not None and e._is_eqn and e.op.symbol == '+' \
                and e.l._is_lab \
                and e.r._is_cst:
            return e.l.ref, int(e.r)
        if e is not None and e._is_eqn and e.op.symbol == '+' \
                and e.l._is_eqn \
                    and e.l.op.symbol == '+' \
                    and e.l.l._is_lab \
                    and check_pic_data(e.l.r) \
                and e.r._is_cst:
            return e.l.l.ref, int(e.r)
        return None, None
    get_lab_imm = staticmethod(get_lab_imm)
    def get_reg(e):
        if e is not None and e._is_reg and not e._is_lab:
            return e.ref
    get_reg = staticmethod(get_reg)
    def get_mem(e, instr):
        if e is None:
            return None
        if not e._is_mem:
            return None
        if check_pic_data(e.a.base):
            rip = instr.offset # + instr.bytelen
            return rip + e.a.disp
        return e.a.base+e.a.disp
    get_mem = staticmethod(get_mem)
    def get_eqn(e):
        if e is not None and e._is_eqn:
            return True
    get_eqn = staticmethod(get_eqn)
    def get_tst(e):
        if e is not None and e._is_tst:
            return e.l, e.r
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
    
    v = expr.get_mem(address, instr)
    if v is not None:
        # Lookup at some address
        return evaluate_mem(v, machine, find, instr, in_str)
    
    v = test_switch_array(address)
    if v is not None:
        ad, L = v
        msg, table = array_detection(ad, machine, find, instr, in_str)
        if msg == 'ARRAY':
            L2 = '-%s' % L
            for i, s in enumerate(table):
                if not s.name.endswith(L2):
                    msg = 'INCOHERENT'
                    break
                table[i] = find(name = s.name[:-len(L2)])[0]
        if msg != 'ARRAY':
            # Switch table needs to be parsed later
            if not hasattr(L, 'switch_table'):
                L.switch_table = (L, 4, None)
            return 'SWITCH', 'TABLE'
        if not hasattr(L, 'size'):
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
    if not hasattr(address, '_is_cst'):
        return 'MEM_LONG', [ table ]
    
    v = expr.get_reg(address)
    if v is not None:
        return 'MEM_REG', [ None ]
    
    table, offset = expr.get_lab_imm(address)
    if offset is not None:
        msg, val = deref_table(table, offset, instr, in_str)
        if val is not None:
            return msg, val
    
    v = expr.get_mem(address, instr)
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
                NON_REGRESSION_FOUND
                item_len *= 1 + int(input.r.l.base.r.r)
            input.r = index_var
        elif input.r.op.symbol == '<<':
            NON_REGRESSION_FOUND
            item_len = 1 << int(input.r.r)
            input.r = index_var
    if item_len == 0:
        msg = 'MEM_EXP - NOT AN ARRAY'
        return msg, [None]
    log.debug("    ARRAY of %d-byte items", item_len)
    # Usually 4-byte items
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
            msg, val = deref_table(table, offset, instr, in_str)
        if val is None:
            mapper.assume_no_aliasing = True
            offset = machine.M(env.mem(address_in_array))
            mapper.assume_no_aliasing = False
            offset = remove_got(offset, instr.symbols)
            v = expr.get_lab(offset)
            if v:
                msg, val = 'MEM', [ v ]
            table, offset = expr.get_lab_imm(expr.get_mem(offset, instr))
            if offset is not None:
                msg, val = deref_table(table, offset, instr, in_str)
        if val == 'TABLE':
            return msg, val
        if val in (None, [None]):
            log.debug("        ----> %s", msg)
            invalid_indexes += 1
            continue
        for label in val:
            if label.name.endswith('@GOTOFF'):
                NON_REGRESSION_FOUND
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

import struct
def deref_table(table, offset, instr, in_str):
    pool = instr.symbols
    log.debug("DEREF %s at %s", table, offset)
    if getattr(table, 'section', None) in ['.got.plt', '.got', '.idata']:
        assert offset == instr.offset+instr.bytelen
        return 'GOT_PLT', [ table ]
    if not hasattr(table, 'address'):
        # 'table' is external, will never be parsed
        return 'MEM_LAB_IMM %r offset=%s' % (table, offset), 'TABLE'
    if not hasattr(table, 'lines'):
        # 'table' has not been parsed; will be later
        return 'MEM_TABLE %s not parsed (offset %d)' % (table, offset), 'TABLE'
    if offset < table.bytelen:
        # Offset in a table
        sz = 0
        for line in table.lines:
            if sz == offset: break
            sz += line.bytelen
        else:
            line = None
        if getattr(line, 'type', None) == 'quad' and \
           hasattr(line.value[0], 'name'):
            return 'MEM_ID', [ line.value[0] ]
        elif getattr(line, 'type', None) == 'long' and \
           hasattr(line.value[0], 'name'):
            return 'MEM_DIFF', [ line.value[0] ]
        else:
            return 'MEM_TABLE %s[%d]=%s' % (table, offset, line), [ None ]
    return 'MEM_TABLE %s incomplete parsing (offset %d)' % (table, offset), [ None ]

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
        if label_l is None or label_r is None:
            return None
        return env.tst(e.tst, label_l, label_r)
    
    # M32[M32[M32[PIC_OFFSET+toto@GOT]]+cte]
    # => M32[M32[toto]+cte]
    if e._is_mem \
            and e.a.base._is_mem \
            and e.a.base.a.disp == 0 \
            and e.a.base.a.base._is_mem:
        label = remove_pic_offset(e.a.base.a.base, pool)
        if label is None:
            return None
        return env.mem(env.mem(label), disp=e.a.disp)
    
    # M32[M32[PIC_OFFSET+toto@GOTPCREL]+cte]
    # => M32[toto+cte]
    if e._is_mem and e.a.base._is_mem:
        label = remove_pic_offset(e.a.base, pool)
        if label is None:
            return None
        return env.mem(label, disp=e.a.disp)
    
    if e._is_mem and not hasattr(e.a.disp, '_is_lab'):
        log.debug("BASE %s; DISP %s; TODO", e.a.base, e.a.disp)
        return None
    
    # M32[PIC_OFFSET+toto@GOTPCREL]
    # => toto
    if e._is_mem \
            and e.a.disp._is_lab \
            and e.a.disp.ref.name.endswith('@GOTPCREL'):
        label_name = e.a.disp.ref.name[:-9]
        pic_data = e.a.base
        if not check_pic_data(pic_data):
            NON_REGRESSION_FOUND
            log.debug("PIC OFFSET [%s] LABEL %s", pic_data, label_name)
            return None
        return env.lab(pool.find_symbol(name = label_name), size=cpu_addrsize)

def check_pic_data(pic):
    return pic._is_reg and not pic._is_lab and pic.ref == 'rip'

def test_switch_array(address):
    if not address._is_eqn:
        return None
    # Expression of the form idx+(rip+L)
    # L is the label of the table
    # idx is a sign-extended 32-bit index
    if (address.op.symbol == '+'
        # right part is rip+L
        and address.r._is_ptr
        and check_pic_data(address.r.base)
        and address.r.disp._is_lab
        # left part is a sign-extended 32-bit address
        and address.l._is_cmp
        and sorted(address.l.parts.keys()) == [(0,32),(32,64)]
        and address.l.parts[(32,64)]._is_tst
        and address.l.parts[(32,64)].l._is_cst
        and address.l.parts[(32,64)].r._is_cst
        and int(address.l.parts[(32,64)].l) == -1
        and int(address.l.parts[(32,64)].r) == 0
        and address.l.parts[(32,64)].tst._is_slc
        ):
        L = address.r.disp.ref
        idx = address.l.parts[(0,32)]
        r1 = idx.a.base
        if r1.l._is_ptr and r1.l.disp == 0:
            NON_REGRESSION_FOUND
            r1 = expressions.op(r1.op.symbol,r1.l.base,r1.r)
        # idx is of the form M32[(val*4)+(rip+L)]
        if (idx.a.disp == 0
            and r1._is_eqn
            and r1.op.symbol == '+'
            and r1.r._is_ptr
            and check_pic_data(r1.r.base)
            and r1.r.disp._is_lab
            and r1.r.disp.ref is address.r.disp.ref
            and r1.l._is_eqn
            and r1.l.op.symbol == '*'
            and r1.l.r._is_cst
            and int(r1.l.r) == 4
            ):
            log.debug("SWITCH TABLE %s [%s*4]", L, r1.l.l)
            return r1, L
    NON_REGRESSION_FOUND
    return None
