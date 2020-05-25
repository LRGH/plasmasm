# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
# If miasmX is not installed system-wide, it is recommended to install it
# in the parent directory of plasmasm.
basedir = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(__file__))))
if basedir == '': basedir = '.'
sys.path.append(basedir+'/miasmX')
from miasmX.arch.ppc_arch import ppc_mn
from miasmX.arch.ia32_arch import x86_afs

import logging
console_handler = logging.StreamHandler()
console_handler.setFormatter(logging.Formatter("%(levelname)-5s: %(message)s"))
log = logging.getLogger("ppc_miasm")
log.addHandler(console_handler)
log.setLevel(logging.WARN)

from plasmasm.symbols import Line
class Instruction(Line):
    __slots__ = ('section', 'offset', 'bytelen', 'miasm')
    CPU = 'PPC'
    def from_txt(self, txt):
        ''' text input, in assembly format '''
        TODO
    def from_bin(self, in_str, section):
        ''' binary input, in assembly format '''
        attrib = {}
        self.miasm = ppc_mn.dis(in_str, attrib)
        self.section = section
        self.offset = self.miasm.offset
        self.bytelen = self.miasm.l
        return self
    def pack(self):
        ''' binary representation '''
        TODO
    def txt(self):
        ''' text output, to be used by an assembler '''
        return str(self.miasm)
    def labels(self):
        ''' labels that are referenced in the line '''
        res = set()
        for a in self.miasm.arg:
            if x86_afs.symb in a:
                res |= set(a[x86_afs.symb].keys())
        return res
    def opname(self):
        return self.miasm.getname()
    opname = property(opname)
    # Methods for binary parser
    def create_label_imm(self):
        ''' Replace immediate values that may be labels '''
        # TODO
        pass
    def create_label_rel(self):
        ''' Replace relative addresses for call/branch '''
        # TODO
        pass
    def apply_reloc(self, pos, reloc):
        ''' 'reloc' is a relocation at offset 'pos'
            This function modifies the argument impacted by the relocation '''
        offset = 0 # TODO: current value of the argument impacted
        from plasmasm.get_symbols import analyze_reloc
        label, label_dif, offset, size = analyze_reloc(self,
            reloc, offset, pos, self.bytelen)
        # TODO: find which arg is impacted
        # by computing: pos -= self.miasm.offset
        for argname in ['simm', 'li']:
            if hasattr(self.miasm, argname):
                break
        else:
            log.info("Apply reloc '%s' on '%s'", label, self)
            return
        setattr(self.miasm, argname, label)

def is_symb(arg):
    return type(arg) == dict and x86_afs.symb in arg and arg.get(x86_afs.ad, False) == False

class InstructionCFG(Instruction):
    __slots__ = ('flow', 'dst')
    def _set_flow(self):
        if not self.miasm.breakflow():   self.flow = None
        elif self.miasm.is_subcall():    self.flow = 'sub'
        elif not self.miasm.dstflow():   self.flow = 'ret'
        elif not self.miasm.splitflow(): self.flow = 'jmp'
        elif self.miasm.dstflow():       self.flow = 'jcc'
        else:             NEVER
    def _set_dst(self):
        if   self.flow is None:
            dst = []
        elif self.flow == 'ret':
            dst = [None]
        elif self.flow in [ 'sub', 'jmp', 'jcc' ]:
            dst = self.miasm.getdstflow()
        else:
            raise ValueError("Flow %s unknown"%self.flow)
        self.dst = dst

"""
# No PPC semantic in miasm1
from miasmX.arch import ppc_sem
from miasmX.expression import expression

class InstructionRW(InstructionCFG):
    __slots__ = ('rw',)
    def _set_rw(self):
        r, w = get_rw(ppc_sem, self)
        self.rw = (r, w)
    def reg_name(self, r):
        if isinstance(r, expression.ExprMem):
            if r.segm:
                return 'MEM'
            else:
                return str(r)
        elif isinstance(r, expression.ExprId):
            return r.name
        else:
            return r
    reg_name = classmethod(reg_name)
"""
