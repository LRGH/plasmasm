# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import sys, os
import logging
log = logging.getLogger("plasmasm")
# If miasmX is not installed system-wide, it is recommended to install it
# in the parent directory of plasmasm.
basedir = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(__file__))))
if basedir == '': basedir = '.'
sys.path.append(basedir+'/miasmX')
from miasmX.arch.ia32_arch import x86_mn, x86_afs, dict_to_ad
from miasmX.arch.ia32_arch import is_reg
from miasmX.arch import ia32_sem
from miasmX.core.parse_ad import parse_ad
from miasmX.expression import expression
try:
    from plasmasm.python.compatibility import set, sorted, one, reversed
except ImportError:
    one = 1
cpu_addrsize = 32

#NON_REGRESSION_FOUND = True # Define this variable to avoid raising errors

# Encapsulation of internals
class API_MIASM(object):
    # API to access opname or prefix
    def opname(self):
        return self.miasm.m.name
    opname = property(opname)
    def prefix(self):
        return self.miasm.prefix
    prefix = property(prefix)
    #
    # API to access the arguments
    def api_nb_arg(self):
        ''' How many arguments for this instruction '''
        return len(self.miasm.arg)
    def api_arg_txt(self, pos, asm_format=None):
        ''' Text representation of argument 'pos' '''
        if asm_format is not None:
            return dict_to_ad(self.miasm.arg[pos], asm_format=asm_format)
        res = dict_to_ad(self.miasm.arg[pos], self.miasm.m.modifs)
        if pos == 0 and \
            (asm_format is None or asm_format.startswith('intel_syntax')) and \
            self.opname in ('jmp','call') and \
            self.miasm.arg[0].get(x86_afs.ad, False):
            # jmp/call to indirect address has additional brackets
            res = "[%s]"%res
        if res.startswith('DWORD PTR '): res = res[10:]
        return res
    def api_get_cst(self, pos):
        ''' If the argument 'pos' is numeric,
            then get its value as an 'int' '''
        arg = self.miasm.arg[pos]
        if x86_afs.imm in arg and not x86_afs.symb in arg \
                and arg[x86_afs.ad] is False:
            return int(arg[x86_afs.imm])
        return None
    def api_get_imm(self, pos):
        ''' If the argument 'pos' contains an immediate value / displacement
            then get its value as an 'int' '''
        arg = self.miasm.arg[pos]
        if x86_afs.imm in arg:
            return int(arg[x86_afs.imm])
        return None
    def api_get_symbol(self, pos):
        ''' Gets the argument 'pos' in the form of a symbol if it is a label '''
        arg = self.miasm.arg[pos]
        if x86_afs.imm in arg:
            return None
        if x86_afs.symb in arg \
                and arg.get(x86_afs.ad, False) == False \
                and len(arg[x86_afs.symb]) == 1:
            return list(arg[x86_afs.symb].keys())[0]
        return None
    def api_get_label(self, pos):
        ''' Gets a label if present in the argument 'pos'.
            Gets two labels if it is a label difference. '''
        arg = self.miasm.arg[pos]
        if not x86_afs.symb in arg: return None, None
        symb = sorted(list(arg[x86_afs.symb].keys()))
        if len(symb) != 1:
            a, b = arg[x86_afs.symb][symb[0]], arg[x86_afs.symb][symb[1]]
            if (a, b) == (1, -1): return symb[0], symb[1]
            if (a, b) == (-1, 1): return symb[1], symb[0]
            if (a, b) == (1,  1): return "%s+%s" % (symb[0], symb[1]), None
            raise ValueError("TODO %s\n\t%s" % (arg[x86_afs.symb], self))
        symb = symb[0]
        if arg[x86_afs.symb][symb] != 1:
            raise ValueError("TODO %s\n\t%s" % (arg[x86_afs.symb], self))
        return symb, None
    def api_is_address(self, pos):
        ''' True if the argument 'pos' is an address '''
        arg = self.miasm.arg[pos]
        return x86_afs.ad in arg and arg[x86_afs.ad]
    def api_is_arg_size(self, pos, size):
        ''' True if the argument 'pos' is a size-bit argument '''
        arg = self.miasm.arg[pos]
        size = {8: x86_afs.u08, 16: x86_afs.u16, 32: x86_afs.u32, 64: None}[size]
        return arg[x86_afs.size] == size
    def api_is_reg_size(self, pos, size):
        ''' True if the argument 'pos' is a size-bit register '''
        arg = self.miasm.arg[pos]
        size = {32: x86_afs.u32}[size]
        if not is_reg(arg): return False
        if arg[x86_afs.size] != size: return False
        return True
    def api_is_reg_in_arg(self, pos, reg):
        ''' True if the argument 'pos' contains a reference to a given register '''
        arg1 = self.miasm.arg[pos]
        arg0 = parse_ad(reg)
        # Check if arg0 (a register) appears in arg1
        if not is_reg(arg0):
            return False
        if not self.api_is_address(pos): # not is_address(arg1):
            # Check operand size, because different registers have the same id
            sz = arg1.get(x86_afs.size, arg0[x86_afs.size])
            if sz == True: sz = arg0[x86_afs.size]
            if sz != arg0[x86_afs.size]: 
                return False
        keys = arg0.copy()
        keys.pop(x86_afs.ad)
        keys.pop(x86_afs.size)
        keys.pop('txt', None)
        if len(keys) > 1:
            raise ValueError("[is_reg_in_arg] %s" % keys)
        return list(keys.keys())[0] in arg1.keys()
    def api_same_base_reg(self, pos, instr):
        ''' Checks that arguments at position 'pos' in 'self' and 'instr'
            have the same base register (they may have different disp) '''
        return self.miasm.arg[pos]['txt'] == instr.miasm.arg[pos]['txt']
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
        arg = self.miasm.arg[pos]
        if label is False:
            if x86_afs.symb in arg:
                del arg[x86_afs.symb]
        elif label is not None:
            arg[x86_afs.symb] = {label:1}
        arg[x86_afs.imm] = arg.pop(x86_afs.imm, uint32(0)) - value
        if int(arg[x86_afs.imm]) == 0:
            del arg[x86_afs.imm]
        if label_dif is not None:
            arg[x86_afs.symb][label_dif] = -1
        self.precomputed_str = {}
    def reg_from_name(reg):
        return ia32_sem.__dict__[reg]
    reg_from_name = staticmethod(reg_from_name)
    def api_add_reg(self, pos, reg, last=False):
        ''' Add 'reg' to the argument 'pos'.
            The verification that it is possible has been made before. '''
        arg = self.miasm.arg[pos]
        if not x86_afs.reg_dict[reg] in arg:
            arg[x86_afs.reg_dict[reg]] = 0
        arg[x86_afs.reg_dict[reg]] += 1
        arg['txt'] = [x86_afs.reg_list32[k] for k in arg if type(k) == int]
        # Force the order of operands
        if 'esp' in arg['txt']: # esp is always first
            arg['txt'] = [ 'esp' ] + [ r for r in arg['txt'] if r != 'esp' ]
        elif last: # reg is last
            arg['txt'] = [ r for r in arg['txt'] if r != reg ] + [ reg ]
        else:      # reg is first
            arg['txt'] = [ reg ] + [ r for r in arg['txt'] if r != reg ]
        arg['txt'] = '+'.join(arg['txt'])
    def api_replace_reg(self, src, dst):
        ''' In all arguments, replace register 'src' with 'dst'. '''
        arg_idx = [ ]
        for idx in range(self.api_nb_arg()):
            if self.api_is_reg_in_arg(idx, src):
                arg_idx.append(idx)
        regid = x86_afs.reg_list32.index(src)
        for idx in arg_idx:
            arg = self.miasm.arg[idx]
            arg[x86_afs.reg_list32.index(dst)] = arg[regid]
            del arg[regid]
            if 'txt' in arg and src in arg['txt']:
                arg['txt'] = arg['txt'].replace(src, dst)
        if len(arg_idx):
            self.precomputed_str = {}

import re
def replace_names_with_symbols(symbols, args):
    for a in args:
        if x86_afs.symb in a:
            items = list(a[x86_afs.symb].items())
            for symbol, count in items:
                r = re.match(r'(\d+)([bf])', symbol)
                del a[x86_afs.symb][symbol]
                if r:
                    symbol, direction = r.groups()
                    idx = symbols.meta['local_labels'][symbol]
                    if direction == 'f': idx += 1
                    symbol = '.L%s\02%d'%(symbol,idx)
                symbol = symbols.find_symbol(name = symbol)
                a[x86_afs.symb][symbol] = count

class NoneInstr(object):
    name = ''
class Stub(object):
    m = NoneInstr()
    arg = []
    prefix = []
class StubNone(Stub):
    ''' When miasm fails to disassemble the data '''
    def __str__(self, asm_format=None): return "NoneASM"
    def __init__(self, offset, bytes):
        self.offset = offset
        self.l = len(bytes)
        self.bytes = bytes

from plasmasm.symbols import Line
from plasmasm.symbols import section_type
from plasmasm.compilers import \
    switch_detection_clang32, \
    switch_detection_gcc411, \
    switch_detection_gcc463m32opt, \
    switch_detection_gcc346m32opt, \
    gcc_label_for_inlined_memcpy
class Instruction(Line, API_MIASM):
    __slots__ = ('section', 'offset', 'bytelen',
        'miasm', 'precomputed_str', 'binary', 'argpos', 'is_rel')
    CPU = 'I386'
    def from_txt(self, txt, asm_format = None):
        ''' text input, in assembly format '''
        if asm_format is None:
            asm_format = self.asm_format
        if txt.startswith('rep; ret'):
            line = 'rep ret'
        else:
            line = txt
        self.miasm = x86_mn()
        if asm_format.startswith('att_syntax'):
            if asm_format == 'att_syntax': asm_format = 'att_syntax binutils'
            from miasmX.arch.ia32_att import parse_asm_x86, parse_args
            from miasmX.arch.ia32_arch import mnemo_from_att
            prefix, name, l_args = parse_asm_x86(line)
            args = parse_args(l_args)
            prefix, name = mnemo_from_att(prefix, name, args, asm_format)
        else:
            prefix, name, args = x86_mn.parse_mnemo(line)
        x86_mn.arg_set_numpy_imm(args)
        x86_mn.normalize_args(name, args)
        co = self.miasm.asm_candidates(prefix, name, [a.copy() for a in args])
        if len(co) == 0:
            raise ValueError("Error parsing %r: %s %s"%(txt,name,args))
        self.miasm.prefix = prefix
        self.miasm.m = co[0][0]
        self.miasm.arg = args
        self.miasm.offset = 0
        self.miasm.special_opcodes()
        replace_names_with_symbols(self.symbols, self.miasm.arg)
        self.miasm.txt = txt
        return self
    def from_bin(self, in_str, section):
        ''' binary input, in assembly format '''
        self.section = section
        self.offset = in_str.offset
        try:
            self.miasm = x86_mn.dis(in_str, {})
        except ValueError:
            self.miasm = None
        except TypeError:
            self.miasm = None
        if self.miasm is None:
            self.miasm = StubNone(self.offset, in_str[self.offset:in_str.offset])
            self.binary = self.miasm.bytes
        self.bytelen = self.miasm.l
        return self
    def pack(self, idx=None):
        ''' binary representation
            The optional argument 'idx' is used to choose between
            the many possible results ; if idx is None, self.miasm.b
            is chosen, if possible '''
        if hasattr(self, 'binary'):
            return self.binary
        arg_reloc = [self._create_reloc(a) for a in self.miasm.arg]
        self.is_rel = [r for a, r in arg_reloc]
        # Only the prefixes that correspond to prepending a word
        prefix = [x for x in self.miasm.prefix if x in [0xF0,0xF2,0xF3]]
        args = [a for a, r in arg_reloc]
        x86_mn.normalize_args(self.opname, args)
        co = self.miasm.asm_candidates(prefix, self.miasm.m.name, args)
        ac = self.miasm.asm_all_candidate(self.miasm.prefix[:], co)
        if len(ac) == 0 and self.opname != 'nop':
            log.warning("miasm cannot asm %s '%s'", self, self.miasm.arg)
            return
        if idx is not None:
            self.binary = ac[idx][0]
            self.argpos = ac[idx][1]
        elif not hasattr(self.miasm, 'b'):
            self.binary = ac[0][0]
            self.argpos = ac[0][1]
        else:
            for self.binary, self.argpos in ac:
                if self.miasm.b == self.binary:
                    break
            else:
                self.binary = None
        if hasattr(self.miasm, 'b') and self.miasm.b != self.binary:
            if not True in self.is_rel and not self.opname == 'nop':
                log.warning("miasm should be be used to asm '%s'"%self)
                from plasmasm.python.compatibility import hexbytes
                log.warning("orig=%r"%"".join(hexbytes(self.miasm.b)))
                for z in ac:
                    log.warning("_asm=%r"%"".join(hexbytes(z[0])))
                log.warning("is_rel=%s", self.is_rel)
            # TODO: packing when reloc should use the symbol value
            self.binary = self.miasm.b
        return self.binary
    def txt(self, asm_format=None):
        ''' text output, to be used by an assembler '''
        if getattr(self, 'precomputed_str', None) is None:
            self.precomputed_str = {}
        if asm_format is None:
            asm_format = self.asm_format
        if self.precomputed_str.get(asm_format, None) is not None:
            # bug in coverage? the next line is executed but does not show...
            return self.precomputed_str[asm_format]
        if asm_format == 'raw':
            txt = "%s %s "%(self.miasm.prefix,self.miasm.m.name)
            if self.miasm.m.name == 'nop' and hasattr(self.miasm, 'b'):
                from plasmasm.python.compatibility import hexbytes
                txt += "".join(hexbytes(self.miasm.b))
            elif self.miasm.m.name == 'nop' and getattr(self.miasm, 'txt', 'nop') != 'nop':
                txt += repr(self.miasm.txt)
            else:
                for arg in self.miasm.arg:
                    txt += '{'
                    keys = sorted(arg.keys(),key=str)
                    for k in keys:
                        if k is not keys[0]: txt += ','
                        if type(arg[k]) == dict:
                            txt += "%s:{"%k
                            kkeys = sorted(arg[k].keys(),key=str)
                            for kk in kkeys:
                                if kk is not kkeys[0]: txt += ', '
                                txt += "%s:%s" % (kk, arg[k][kk])
                            txt += "}"
                        else:
                            txt += "%s:%s"%(k,arg[k])
                    txt += '} '
        else:
            if asm_format == 'att_syntax': asm_format = 'att_syntax binutils'
            txt = self.miasm.__str__(asm_format)
        self.precomputed_str[asm_format] = txt
        return txt
    def labels(self):
        ''' labels that are referenced in the line '''
        res = set()
        for a in self.miasm.arg:
            if x86_afs.symb in a:
                res.update(a[x86_afs.symb].keys())
        return res
    def set_asm_format(self, asm_format):
        self.asm_format = asm_format
    set_asm_format = classmethod(set_asm_format)
    asm_format = None
    def _create_reloc(self, a):
        ''' needed to be able to pack an instruction '''
        a = a.copy()
        is_reloc, label, label_dif = self._extract_symbols(a)
        if is_reloc is None:
            return (a, None)
        is_relative = self.miasm.dstflow() and (a[x86_afs.ad] == False)
        offset = self.pack_reloc(label, is_reloc, is_relative)
        if label_dif is not None:
            offset -= self.pack_reloc(label_dif, is_reloc, is_relative)
        a[x86_afs.imm] = int32(a.get(x86_afs.imm, 0)) + offset
        if is_reloc:
            # check_imm_size should not encode it in 8 bits
            class reloc32_imm(object):
                reloc32 = True
                def __init__(self, v): self.v = int(v)
                def __int__(self): return self.v
            a[x86_afs.imm] = reloc32_imm(a[x86_afs.imm])
        #log.debug("SYMBOL %r\n\tin '%s'\n\toffset=%s is_reloc=%s",
        #    label, self, self.miasm.offset, is_reloc)
        del a[x86_afs.symb]
        return (a, is_reloc)
    def _extract_symbols(self, a):
        # Parsing the argument 'a', find if there is a relocation
        # to be made, extract the symbols
        # Output: relocation type (None/False/True), label(s)
        if not x86_afs.symb in a:
            return (None, None, None)
        # Either 'label' or 'label-label_dif'
        label, label_dif = None, None
        for k, v in a[x86_afs.symb].items():
            if   v == 1:
                if label is None: label = k
                else: log.error("Invalid symbols %s", a[x86_afs.symb])
            elif v == -1:
                if label_dif is None: label_dif = k
                else: log.error("Invalid symbols %s", a[x86_afs.symb])
            else:
                log.error("Invalid symbols %s", a[x86_afs.symb])
        # Delete the suffix and find the corresponding symbol
        from plasmasm.get_symbols import elf_reloc_suffixes
        for suffix in elf_reloc_suffixes:
            if suffix in label.name:
                idx = label.name.index(suffix)
                name = label.name[0:idx]+label.name[idx+len(suffix):]
                label = self.symbols.find_symbol(name=name)
                #log.error('DEBUG NEW_NAME %r', label)
                break
        else: suffix = None
        # If 'label' is 'base+shift', attributes are in 'base'
        base = getattr(label, 'reference', label)
        bind = getattr(base, 'bind', None)
        section = getattr(base, 'section', None)
        # Hack, which does not work for stripped binaries, to detect
        # whether it is a symbol (with relocation) or simply a label
        if bind == 'globl':
            is_rel = True # Global symbol, will be in the relocation table
        elif not hasattr(base, 'address'):
            is_rel = True # Local symbol, will be in the relocation table
        elif section_type(section) in ['bss','data','rodata']:
            is_rel = True
        else:
            is_rel = False # Label but not symbol
        # Sanity checks
        if not is_rel and hasattr(label, 'address') and hasattr(label, 'reference'):
            log.error("Label is %r", label)
            log.error(" Base is %r", base)
            UUU
        if hasattr(label, 'reference') and not is_rel:
            log.error("Label is %r", label)
            log.error(" Base is %r", base)
            VVV
        if hasattr(label, 'reference') and '.' in label.name and section in ['.bss','.data']:
            log.error("Label is %r", label)
            log.error(" Base is %r", base)
            WWW
        if '.' in label.name and section in ['.bss','.data'] and not is_rel:
            log.error("Label is %r", label)
            XXX
        # We may want to use 'suffix' to get more precision on the reloc type
        return (is_rel, label, label_dif)
    def list_relocs(self):
        ''' needed to create a relocatable ELF '''
        res = []
        for a, r in zip(self.miasm.arg, self.is_rel):
            if not x86_afs.symb in a:
                continue
            if len(a[x86_afs.symb]) != 1:
                log.error("Cannot define reloc for %r", a)
                continue
            if not r:
                log.debug("Non relocatable %r", a[x86_afs.symb])
                continue
            pos = self.offset
            if len(self.argpos) == 1:
                pos += self.argpos[0]
            elif len(self.argpos) == 2:
                pos += self.argpos[self.miasm.arg.index(a)]
            else:
                log.error("Argpos of %r is %r", self, self.argpos)
            label = list(a[x86_afs.symb].keys())[0]
            from elfesteem import elf
            if hasattr(label, 'reference'):
                label = label.reference
            if label.name == '_GLOBAL_OFFSET_TABLE_':
                r_type = (elf.EM_386, elf.R_386_GOTPC)
            else:
                from plasmasm.get_symbols import elf_reloc_suffixes
                for suffix in reversed(sorted(elf_reloc_suffixes)):
                    if suffix and label.name.endswith(suffix):
                        label = label.symbols.find_symbol(name=label.name[:-len(suffix)])
                        r_type = elf_reloc_suffixes[suffix]
                        break
                else:
                    if self.miasm.dstflow() and a[x86_afs.ad] == False:
                        r_type = (elf.EM_386, elf.R_386_PC32)
                    else:
                        r_type = (elf.EM_386, elf.R_386_32)
            res.append([pos,label,r_type])
        return res
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
        props = { 'address': (self.offset+self.bytelen+value)%(one<<cpu_addrsize),
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
        pos -= self.miasm.offset
        b = self.miasm.b[pos]
        if type(b) == str: # Python 2
            b = chr((1+ord(b))%256)
        elif type(b) == int: # Python 3
            import struct
            b = struct.pack("B", (1+b)%256)
        o = x86_mn.dis(self.miasm.b, {})
        patched = self.miasm.b[:pos] + b + self.miasm.b[pos+1:]
        p = x86_mn.dis(patched, {})
        if o.m.name != p.m.name:
            log.error("Relocation changes instruction! %s => %s", o, p)
            log.error("   at offset %r with reloc %r", pos, reloc)
            log.error("   for '%s' at %s, address=%s",
                self, self.section, self.offset)
            return
        argpos = [ oa != na for (oa, na) in zip(o.arg, p.arg) ]
        if argpos.count(True) != 1:
            log.error("Relocation does not touch one argument")
            log.error("    reloc %r for '%s'", reloc, self)
            log.error("ARGPOS %s", argpos)
            return
        argpos = argpos.index(True)
        # Step 2: modify the argument by using the reloc data
        a = self.miasm.arg[argpos]
        address = switch_detection_gcc463m32opt(self)
        if address is None:
            address = switch_detection_gcc346m32opt(self)
        offset = int32(a[x86_afs.imm])
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
            if getattr(label, 'type', None) == 'padding':
                log.debug("Label %s is not padding, it is a switch table", label)
                del label.type
            label_dif = None
            offset -= address
            log.debug("... TABLE(rel) %r", label)
            self.dst = [[label]]
        r_type, data = reloc
        if 'section' in data and \
            section_type(data['section']) == 'common':
            # The section has a zero size, we may not want to create another label
            # Generate an error to find a non-regression file
            NON_REGRESSION_FOUND
        a[x86_afs.symb] = {label:1}
        a[x86_afs.imm] = offset
        if a[x86_afs.imm] == 0:
            del a[x86_afs.imm]
        if label_dif is not None:
            a[x86_afs.symb][label_dif] = -1

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
    post_init = Instruction.post_init + [ _set_flow, _set_dst ]

from miasmX.tools.modint import uint32, int32
from miasmX.tools.emul_helper import get_instr_expr
def get_rw(cpu_sem, line):
    my_eip = cpu_sem.ExprInt(uint32(line.miasm.offset))
    exprs = get_instr_expr(line.miasm, my_eip, [])
    if exprs is None:
        log.error("Emulation failed for line %r", line)
    r = set()
    w = set()
    for e in exprs:
        r.update(e.get_r(mem_read=True))
        if isinstance(e.dst, cpu_sem.ExprMem):
            r.update(e.dst.arg.get_r(mem_read=True))
    for e in exprs:
        w.update(e.get_w())
    return r, w

from miasmX.arch import ia32_reg
try:
    ia32_sem.symb_to_Expr({'x':1})
except AttributeError:
    log.error("Upgrade miasmX, the current version is too old")
    raise ImportError("Upgrade miasmX, the current version is too old")
ia32_reg_id = [id(x) for x in ia32_sem.all_registers]

class InstructionRW(InstructionCFG):
    __slots__ = ('rw',)
    def _set_rw(self):
        r, w = get_rw(ia32_sem, self)
        r = set([ _ for _ in r if not isinstance(_, expression.ExprId) or _.is_reg ])
        w = set([ _ for _ in w if not isinstance(_, expression.ExprId) or _.is_reg ])
        opname, prefix = self.opname, self.prefix
        if '#' in opname:
            pass
        elif 0xF2 in prefix: # repnz
            r.add(ia32_sem.ecx)
            w.add(ia32_sem.ecx)
            r.add(ia32_sem.zf)
        elif 0xF3 in prefix and opname[:-1] in ["ins", "outs", "movs", "lods", "stos"]: # rep
            r.add(ia32_sem.ecx)
            w.add(ia32_sem.ecx)
        elif 0xF3 in prefix and opname[:-1] in ["cmps", "scas"]: # repz
            r.add(ia32_sem.ecx)
            w.add(ia32_sem.ecx)
            r.add(ia32_sem.zf)
        self.rw = (r, w)
    def reg_name(r):
        if isinstance(r, expression.ExprMem):
            if r.segm:
                return 'MEM'
            else:
                return str(r)
        elif isinstance(r, expression.ExprId):
            return r.name
        else:
            return r
    reg_name = staticmethod(reg_name)
    post_init = InstructionCFG.post_init + [ _set_rw ]

class InstructionDEAD(InstructionRW):
    __slots__ = ('pic', 'stack', 'dead', 'immutable')

#########################################################################

from miasmX.tools import emul_helper
from miasmX.expression import expression_helper
def evaluate_lines(instr, lines, in_str):
    machine = emul_helper.x86_machine()
    def print_machine(machine):
        return sorted([ str(_) for _ in machine.dump_mem() ])
    try:
        lines = [ _.miasm for _ in lines ]
        retval = emul_helper.emul_lines(machine, lines)
    except ValueError:
        import sys
        e = sys.exc_info()[1]
        log.error("Emulation failed with %s", e)
        retval = None
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
        if isinstance(e, expression.ExprInt): return int(e.arg)
    get_cst = staticmethod(get_cst)
    def get_lab(e):
        if isinstance(e, expression.ExprId) and not e.is_reg: return e.name
    get_lab = staticmethod(get_lab)
    def get_lab_imm(e):
        if isinstance(e, expression.ExprInt): return None, int(e.arg)
        if isinstance(e, expression.ExprId) and not e.is_reg: return e.name, 0
        if isinstance(e, expression.ExprOp) and e.op == '+' \
                and len(e.args) == 2 \
                and isinstance(e.args[0], expression.ExprId) \
                and not e.args[0].is_reg \
                and isinstance(e.args[1], expression.ExprInt):
            return e.args[0].name, e.args[1].arg
            # MAYBE offset = int(int32(e.args[1].arg))
        return None, None
    get_lab_imm = staticmethod(get_lab_imm)
    def get_reg(e):
        if isinstance(e, expression.ExprId) and e.is_reg: return e
    get_reg = staticmethod(get_reg)
    def get_mem(e):
        if isinstance(e, expression.ExprMem): return e.arg
    get_mem = staticmethod(get_mem)
    def get_eqn(e):
        NON_REGRESSION_FOUND
        if isinstance(e, expression.ExprOp): return True
    get_eqn = staticmethod(get_eqn)
    def get_tst(e):
        if isinstance(e, expression.ExprCond): return e.src1, e.src2
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
    # Find the multiplication
    input.args = list(input.args)
    item_len = 0
    for pos, arg in enumerate(input.args):
        if ( isinstance(arg, expression.ExprOp)
             and arg.op == '*'):
            if isinstance(arg.args[0], expression.ExprInt):
                NON_REGRESSION_FOUND
                item_len = arg.args[0].arg.arg
                break
            if isinstance(arg.args[1], expression.ExprInt):
                # Non-regression: a03.o
                item_len = arg.args[1].arg.arg
                break
        if ( isinstance(arg, expression.ExprOp)
             and arg.op == '<<'):
            if isinstance(arg.args[1], expression.ExprInt):
                # Non-regression: c1.o
                item_len = 1 << arg.args[1].arg.arg
                break
            NON_REGRESSION_FOUND
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
        mutable_expr = input.copy()
        mutable_expr.args = list(mutable_expr.args)
        mutable_expr.args[pos] = expression.ExprInt32(index_in_array)
        address_in_array = expression_helper.expr_simp(mutable_expr)
        log.debug("    x[%d] at %s:%s",
                index_in_array//item_len,
                address_in_array.__class__.__name__,
                address_in_array)
        msg, val = 'NOT FOUND', None
        table, offset = expr.get_lab_imm(address_in_array)
        if val is None and offset is not None:
            msg, val = deref_table(table, offset, instr.symbols, in_str)
        if val is None and address_in_array in machine.pool.pool_mem:
            # Read from memory (written by the program)
            offset = machine.pool.pool_mem[address_in_array][1]
            offset = remove_got(offset, instr.symbols)
            v = expr.get_lab(offset)
            if v:
                msg, val = 'MEM', [ v ]
            table, offset = expr.get_lab_imm(expr.get_mem(offset))
            if offset is not None:
                NON_REGRESSION_FOUND
                # Non-regression: a03-fPIC.out
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
    return 'NOT IN TABLE [%s:%#x]' % (section, int(offset)), None

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
    
    if isinstance(e, expression.ExprCond):
        label_l = remove_pic_offset(e.src1, pool)
        label_r = remove_pic_offset(e.src2, pool)
        if label_l is None or label_r is None: return None
        return expression.ExprCond(e.cond, label_l, label_r)
    
    # M32[M32[M32[PIC_OFFSET+toto@GOT]]+cte]
    # => M32[M32[toto]+cte]
    if isinstance(e, expression.ExprMem) \
            and isinstance(e.arg, expression.ExprOp) \
            and e.arg.op == '+' \
            and len(e.arg.args) == 2 \
            and isinstance(e.arg.args[0], expression.ExprMem) \
            and isinstance(e.arg.args[0].arg, expression.ExprMem):
        label = remove_pic_offset(e.arg.args[0].arg, pool)
        if label is None: return
        return expression.ExprMem(expression.ExprOp('+',
                   expression.ExprMem(label), e.arg.args[1]))
    
    # M32[M32[PIC_OFFSET+toto@GOT]]
    # => M32[toto]
    if isinstance(e, expression.ExprMem) \
            and isinstance(e.arg, expression.ExprMem):
        label = remove_pic_offset(e.arg, pool)
        if label is None: return
        return expression.ExprMem(label)
    
    # M32[M32[PIC_OFFSET+toto@GOT]+formula]
    # => M32[toto+formula]
    if isinstance(e, expression.ExprMem) \
            and isinstance(e.arg, expression.ExprOp) \
            and e.arg.op == '+' \
            and len(e.arg.args) == 3 \
            and isinstance(e.arg.args[0], expression.ExprMem):
        label = remove_pic_offset(e.arg.args[0], pool)
        if label is None: return
        return expression.ExprMem(expression.ExprOp('+', label, e.arg.args[1], e.arg.args[2]))
    
    # M32[PIC_OFFSET+toto@GOT]
    # => toto
    if isinstance(e, expression.ExprMem) \
            and isinstance(e.arg, expression.ExprOp) \
            and e.arg.op == '+' \
            and len(e.arg.args) <= 3:
        label_name, pic_data = extract_label_pic(e.arg.args, '@GOT')
        if pic_data is not None:
            return expression.ExprId(pool.find_symbol(name = label_name))
    
    # M32[PIC_OFFSET+toto@GOTOFF]
    # => M32[toto]
    if isinstance(e, expression.ExprMem) \
            and isinstance(e.arg, expression.ExprOp) \
            and e.arg.op == '+' \
            and len(e.arg.args) == 3:
        label_name, pic_data = extract_label_pic(e.arg.args, '@GOTOFF')
        if pic_data is not None:
            # Not sound: usually is a reference to somewhere in a data section
            # that may change at runtime
            label = expression.ExprId(pool.find_symbol(name = label_name))
            return expression.ExprMem(label)
    
    # (PIC_OFFSET+toto@GOTOFF)
    # => toto
    if isinstance(e, expression.ExprOp) \
            and e.op == '+' \
            and len(e.args) <= 3:
        label_name, pic_data = extract_label_pic(e.args, '@GOTOFF')
        if pic_data is not None:
            return expression.ExprId(pool.find_symbol(name = label_name))
    
    # (PIC_OFFSET+M32[PIC_OFFSET+toto@GOTOFF+INDEX_IN_TABLE])
    # (-M32[(INDEX_IN_TABLE+PIC_OFFSET)+toto@GOTOFF]+PIC_OFFSET)
    # => M32[toto+INDEX_IN_TABLE]
    if isinstance(e, expression.ExprOp) and e.op == '+' and len(e.args) == 2:
        if   isinstance(e.args[1], expression.ExprMem):
            u = e.args[1].arg; v = e.args[0]
        elif isinstance(e.args[0], expression.ExprMem):
            NON_REGRESSION_FOUND
            u = e.args[0].arg; v = e.args[1]
        elif isinstance(e.args[1], expression.ExprOp) and e.args[1].op == '-' and len(e.args[1].args) == 1 and isinstance(e.args[1].args[0], expression.ExprMem):
            u = e.args[1].args[0].arg; v = e.args[0]
        else:
            log.error("Unknown formula %s", e)
            NON_REGRESSION_FOUND
            return None
        if not (isinstance(u, expression.ExprOp)
                and u.op == '+'
                and len(u.args) == 3
                and isinstance(u.args[2], expression.ExprOp)):
            # Non-regression: arith1.o from pari-2.5.5 / gcc 3.4.6 PIC
            NON_REGRESSION_FOUND
            log.error("Unknown base %s", e)
            return None
        label_name, pic_data = extract_label_pic(u.args[0:2], '@GOTOFF')
        if not (v == pic_data):
            log.debug("INCONSISTENT [%s] [%s]", v, pic_data)
            return None
        return expression.ExprMem(expression.ExprOp('+',
            u.args[2], # index_in_table
            expression.ExprId(pool.find_symbol(name = label_name))))

def extract_label_pic(a, suffix):
    for idx in range(len(a)):
        if expr.get_lab(a[idx]) and a[idx].name.name.endswith(suffix):
            label_name = a[idx].name.name[:-len(suffix)]
            if len(a) == 2: pic_data = a[1-idx]
            else: pic_data = expression.ExprOp('+', *tuple(a[:idx]+a[idx+1:]))
            if not check_pic_data(pic_data):
                log.debug("PIC OFFSET [%s] LABEL %s", pic_data, label_name)
                pic_data = None
            return label_name, pic_data
    return None, None

def check_pic_data(pic):
    return str(pic) in [
        '(@_GLOBAL_OFFSET_TABLE_+M32(esp))',
        # Non-regression: es.o from pari-2.5.5 / gcc 4.6.3
        # gcc 4.x PIC
        # The backtracking went back to the start of the function, where
        # the PIC offset is computed as @_GLOBAL_OFFSET_TABLE_+M32(esp)
        # after a call to __i686.get_pc_thunk.?x
        
        '(init_ebx+_GLOBAL_OFFSET_TABLE_)',
        '(_GLOBAL_OFFSET_TABLE_+init_ebx)',
        # Non-regression: a02-fPIC.o
        # gcc 4.x PIC
        # The backtracking went after returning from __i686.get_pc_thunk.bx
        
        'init_ebx',
        # Non-regression: c9-fPIC.o
        # gcc 4.x PIC
        # The backtracking went not far but ebx may contain the PIC offset
        # This is a risky hypothesis, yet it seems to work
        
        'init_ecx',
        # Non-regression: j2-fPIC.o
        # gcc 4.x PIC
        # The backtracking went not far but ecx may contain the PIC offset
        # This is a risky hypothesis, yet it seems to work
        ]

def test_clang_switch_array(address):
    # Expression of the form M32[L1-L2+r2+(r1*4)]+r2
    # L1 is the label of the table
    # r1 is the index in the table (register, sometimes shifted)
    # r2 stores the address of label L2 (register, immediate, ...)
    if not isinstance(address, expression.ExprOp):
        return None
    if not address.op == '+':
        return None
    if not len(address.args) == 2:
        return None
    if   isinstance(address.args[0], expression.ExprMem) and \
         isinstance(address.args[0].arg, expression.ExprOp) and \
         len(address.args[0].arg.args) == 4:
        mem_expr, r2 = tuple(address.args)
    elif isinstance(address.args[1], expression.ExprMem) and \
         isinstance(address.args[1].arg, expression.ExprOp) and \
         len(address.args[1].arg.args) == 4:
        r2, mem_expr = tuple(address.args)
    else:
        return None
    ad = expression_helper.expr_simp(expression.ExprOp('-', mem_expr.arg, r2))
    if not isinstance(ad, expression.ExprOp):
        return None
    if not ad.op == '+':
        return None
    if not len(ad.args) == 3:
        return None
    if   isinstance(ad.args[0], expression.ExprId) and \
         isinstance(ad.args[1], expression.ExprOp) and ad.args[1].op=='*' and \
         isinstance(ad.args[2], expression.ExprOp) and ad.args[2].op=='-':
        L1, r1_4, L2 = tuple(ad.args)
    elif isinstance(ad.args[0], expression.ExprId) and \
         isinstance(ad.args[2], expression.ExprOp) and ad.args[2].op=='*' and \
         isinstance(ad.args[1], expression.ExprOp) and ad.args[1].op=='-':
        L1, L2, r1_4 = tuple(ad.args)
    else:
        return None
    if not len(L2.args) == 1:
        return None
    L2 = '-%s' % L2.args[0]
    log.debug("CLANG SWITCH %s%s %s %s", L1, L2, r1_4, r2)
    return L1, L2
