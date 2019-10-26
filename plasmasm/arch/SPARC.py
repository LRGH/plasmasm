# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
containers = { 'ELF': 'SPARC' }
try:
    from plasmasm.python.compatibility import set
except ImportError:
    pass
opcodes = {
    'SPARC': set(['add', 'addcc', 'addx', 'and', 'andcc', 'b', 'ba', 'be', 'be,a', 'bg', 'bge', 'bgu', 'bl', 'ble', 'ble,a', 'blu', 'bne', 'bne,a', 'bset', 'call', 'clr', 'cmp', 'dec', 'inc', 'jmp', 'ld', 'ldd', 'ldsb', 'ldub', 'lduh', 'mov', 'nop', 'or', 'restore', 'retl', 'save', 'sdiv', 'sethi', 'sll', 'smul', 'sra', 'srl', 'st', 'stb', 'std', 'sub', 'subcc', 'udiv', 'wr', 'xor']),
}
