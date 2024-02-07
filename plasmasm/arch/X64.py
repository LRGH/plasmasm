# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
containers = { 'ELF': 'X86_64', 'MACHO': 'X86_64' }
try:
    from plasmasm.python.compatibility import set
except ImportError:
    pass
from plasmasm.arch.I386 import opcodes as opcodes_x86
x64_att_opcodes = set([
        'jmpq', 'callq', 'retq', 'popq', 'pushq',
        'movq', 'cmpq', 'testq', 'leaq', 'btq', 'bswapq',
        'notq', 'orq', 'xorq', 'andq', 'bsfq', 'bslq', 'bsrq',
        'rolq', 'rorq', 'sarq', 'salq', 'shrq', 'shlq', 'sbbq',
        'negq', 'decq', 'incq', 'adcq', 'addq', 'subq',
        'mulq', 'divq', 'imulq', 'idivq', 'shldq', 'shrdq', 'xchgq',
        'cltq', 'cqto', 'movabsq', 'movsbq', 'movslq', 'movswq',
        'insq', 'movsq', 'outsq', 'lodsq', 'stosq', 'cmpsq', 'scasq',
        'pextrq', 'pinsrq',
        'cvtsi2sdq', 'cvtsi2ssq', 'cvttsd2siq', 'cvttss2siq',
        ])
suffix = [ 'a', 'ae', 'b', 'be', 'c', 'e', 'g', 'ge', 'l', 'le', 'nb', 'nc', 'ne', 'np', 'ns', 'nz', 'p', 's', ]
x64_att_opcodes.update(set([ 'cmov'+s+'q' for s in suffix ]))
del suffix
x64_att_opcodes.update(opcodes_x86['I386-att'])
opcodes = {
    'X64-att': x64_att_opcodes,
}
