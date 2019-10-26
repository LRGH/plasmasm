# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import set
except ImportError:
    pass
import struct, sys
from plasmasm.symbols import Line

# .p2align is an assembly directive that adds padding to ensure
# some alignment; the assembler creates nothing, a nop or a long nop
class P2Align(Line):
    __slots__ = ('section', 'offset', 'bytelen',
        'binary', 'symbols', 'line', 'pic', 'stack', 'dead')
    def __init__(self, symbols, line, **kargs):
        self.symbols = symbols
        self.line = line
        if 'section' in kargs: self.offset = kargs['section']
        if 'offset' in kargs: self.offset = kargs['offset']
        if 'binary' in kargs: self.binary = kargs['binary']
        if 'binary' in kargs: self.bytelen = len(self.binary)
    def txt(self, asm_format=None):
        if asm_format is None:
            asm_format = self.symbols.arch.asm_format
        if asm_format == 'raw' and hasattr(self, 'binary'):
            from plasmasm.python.compatibility import hexbytes
            return "[.]nop %s[%s]" % ("".join(hexbytes(self.binary)), self.line)
            return "%s [%s]" % (self.line, "".join(hexbytes(self.binary)))
        return self.line
    def pack(self):
        if hasattr(self, 'binary'):
            return self.binary
    opname = 'nop'
    flow = None
    CPU = None
    rw = (set(), set())
    def reg_name(self, r):
        return self.symbols.arch.reg_name(r)
    def reg_from_name(self, r):
        return self.symbols.arch.reg_from_name(r)
    def copy(self):
        new = self.__class__(self.symbols, self.line)
        if hasattr(self,'offset'): new.offset = self.offset
        if hasattr(self,'binary'): new.binary = self.binary
        if hasattr(self,'dead'): new.dead = self.dead.copy()
        return new

# Constant aims at representing constants in a unified way
# difficulties are:
# - constants are found in various sections, and symbols are not always exported
class Constant(Line):
    __slots__ = ('section', 'offset', 'bytelen',
        'binary', 'value', 'type', 'align')
    # Methods from Line that need to be redefined
    def from_txt(self):
        ''' text input, in assembly format '''
        raise ValueError("No 'from_txt' for %r, __init__ is used instead" % self.__class__)
    def from_bin(self, in_str, section):
        ''' binary input, in assembly format '''
        raise ValueError("No 'from_bin' for %r, __init__ is used instead" % self.__class__)
    def pack(self):
        ''' binary representation '''
        if hasattr(self, 'binary'):
            pass
        elif hasattr(self, 'numeric'):
            try:
                from plasmasm.python.compatibility import one
            except ImportError:
                one = 1
            size, int_type, fmt = self.numeric
            value = [ ]
            for v in self.value:
                v = int(v) % (one << 8*self.align)
                value.append(v)
            self.binary = struct.pack(fmt*len(value), *value)
        else:
            self.binary = self.value
        return self.binary
    def txt(self):
        ''' text output, to be used by an assembler '''
        if self.out_format == 'raw':
            return "%s %r"%(self.numeric, self.value)
        if hasattr(self, 'numeric'):
            size, int_type, fmt = self.numeric
            value = self.value
            if int_type == 'long':
                value = map(long_to_signed, value)
            value = ', '.join([str(getattr(x,'name',x)) for x in value])
            return '.%s\t%s' % (int_type, value)
    def __init__(self, symbols, *args, **kargs):
        self.symbols = symbols
        self._parse_args(*args)
        if 'offset' in kargs:
            self.offset = kargs['offset']
        if 'section' in kargs:
            self.section = kargs['section']
        if hasattr(self, 'numeric'):
            self.bytelen, int_type, fmt = self.numeric
    def _parse_args(self, value):
        if hasattr(self, 'numeric'):
            size, int_type, fmt = self.numeric
            if type(value) == list:
                self.value = value
            else:
                self.value = [value]
            self.type = int_type
            self.align = size
    def apply_reloc(self, pos, reloc, label_dif=None):
        ''' 'reloc' is a relocation at offset 'pos'
            This function modifies the argument impacted by the relocation '''
        if not hasattr(self, 'numeric'):
            return
        if len(self.value) != 1:
            FAIL
        size, int_type, fmt = self.numeric
        value = self.value[0]
        if value > 0: # Convert unsigned to signed
            value, = struct.unpack(fmt.lower(),struct.pack(fmt,value))
        if label_dif is not None:
            # Used for switch table for x86_64 gcc 4.8 PIC
            reloc[1].update({'label_dif': label_dif})
        from plasmasm.get_symbols import analyze_reloc
        label, label_dif, offset, size = analyze_reloc(self.symbols,
            reloc, value, self.offset, pos, 0)
        if label_dif == '.':
            label_dif = self.symbols.find_symbol(address=-offset,section=self.section)
            name = "%s+[.-%s]"%(label,label_dif)
            label = self.symbols.find_symbol(name=name,reference=label_dif)
        elif label_dif is not None:
            name = "%s-%s"%(label,label_dif)
            if offset != 0: name += "+%s"%offset
            label = self.symbols.find_symbol(name=name)
        else:
            if offset != 0: label = self.symbols.find_symbol(
                reference = label,
                name = "%s+%d" % (label, offset),
                address = value,
                )
        self._parse_args(label)
    def list_relocs(self):
        if not hasattr(self, 'numeric'):
            return []
        res = []
        for idx, label in enumerate(self.value):
            if not hasattr(label, 'name'):
                continue
            if hasattr(label, 'reference'):
                label = label.reference
            from elfesteem import elf
            if label.name.endswith('@GOTOFF'):
                label = label.symbols.find_symbol(name=label.name[:-7])
                r_type = (elf.EM_386, elf.R_386_GOTOFF)
            else:
                r_type = (elf.EM_386, elf.R_386_32)
            pos = self.offset+idx*4
            res.append([pos,label,r_type])
        return res
    out_format = None
    post_init = []

def long_to_signed(x):
    if isinstance(x,int) and x > 2**31:
        return x-2**32
    return x

data_null = struct.pack("B",0)

class ConstantStr(Constant):
    __slots__ = ()
    def _parse_args(self, value, directive):
        # Note that 'value' is of type 'bytes'
        self.value = value
        self.type = directive
        self.align = 0
        self.bytelen = len(value)
    def txt(self):
        if self.type == 'ascii':
            value = self.value
        elif self.value[-1:] == data_null:
            value = self.value[:-1]
        else:
            raise ValueError('constant %r of type %s should end with NULL'%(self.value, self.type))
        # Transforming python string into GNU as representation of strings
        representation = ""
        for v in struct.unpack("B"*len(value), value):
            if   v == 0:
                representation += "\\000"
            elif v == 0x09:
                representation += "\\t"
            elif v == 0x0a:
                representation += "\\n"
            elif v == 0x0d:
                representation += "\\r"
            elif v <  0x20:
                representation += "\\%03o" % v
            elif v >= 0x7f:
                representation += "\\%03o" % v
            elif v == 0x22: # double quote "
                representation += "\\\""
            elif v == 0x5c: # backslash \
                representation += "\\\\"
            else:
                representation += chr(v)
        while '??' in representation:
            # Sometimes compilers have inconsistencies in dealing with trigraphs
            idx = representation.index('??')
            representation = representation[:idx+1] + "\\077" + representation[idx+2:]
        return '.%s\t"%s"' % (self.type, representation)

class ConstantZero(Constant):
    __slots__ = ()
    def _parse_args(self, size):
        self.type = int(size)
        self.bytelen = self.type
    def txt(self):
        return '.zero\t%d' % self.type
    def pack(self):
        return '\0' * self.type

class Constant1Byte(Constant):
    __slots__ = ()
    numeric = (1, 'byte', 'B')
class Constant2Byte(Constant):
    __slots__ = ()
    numeric = (2, 'value', 'H')
class Constant4Byte(Constant):
    __slots__ = ()
    numeric = (4, 'long', 'I')
class Constant8Byte(Constant):
    __slots__ = ()
    numeric = (8, 'quad', 'Q')
class ConstantUleb128(Constant):
    __slots__ = ()
    # Used in C++ section .gcc_except_table
    numeric = (1, 'uleb128', 'B')
    # TODO: deal with mutibyte uleb128 data
class ConstantSleb128(Constant):
    __slots__ = ()
    numeric = (1, 'sleb128', 'B')
    # TODO: deal with mutibyte sleb128 data
