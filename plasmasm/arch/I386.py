# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
containers = { 'ELF': '386', 'MACHO': 'I386' }
try:
    from plasmasm.python.compatibility import set
except ImportError:
    pass
MMX = ['movd', 'movq', 'movdqa', 'movdqu', 'movaps', 'movapd',
    'movhps', 'movhpd', 'movlhps', 'movshdup',
    'movlps', 'movhlps', 'movlpd', 'movddup', 'movsldup',
    'movsd', 'movss', 'movupd', 'movups',
    'movntpd', 'movntps',
    'maskmovq', 'maskmovdqu',
    'comisd', 'comiss', 'ucomisd', 'ucomiss',
    'cvtdq2ps', 'cvtps2dq',             'cvttps2dq',
    'cvtps2pd', 'cvtpd2ps', 'cvtsd2ss', 'cvtss2sd',
    'cvtpi2ps', 'cvtpi2pd', 'cvtsi2sd', 'cvtsi2ss',
    'cvtps2pi', 'cvtpd2pi', 'cvtsd2si', 'cvtss2si',
    'cvttps2pi', 'cvttpd2pi', 'cvttsd2si', 'cvttss2si',
                'cvttpd2dq', 'cvtpd2dq', 'cvtdq2pd',
    'unpcklpd', 'unpcklps', 'unpckhpd', 'unpckhps',
    'haddpd', 'haddps',
    'movmskpd', 'movmskps',
    'movntdq', 'movntq', 'extractps',
    'pblendvb', 'blendvpd', 'blendvps',
    'pmovmskb', 'pmovsxbd', 'pmovsxwq', 'pmovzxwd', 'pmovzxbw', 'pmovzxdq',
    'pextrb', 'pextrw', 'pextrd', 'pinsrb', 'pinsrw', 'pinsrd',
    'punpcklbw', 'punpcklwd', 'punpckldq', 'punpcklqdq', 'packsswb',
    'pcmpgtb', 'pcmpgtw', 'pcmpgtd', 'packuswb', 'packusdw',
    'punpckhbw', 'punpckhwd', 'punpckhdq', 'punpckhqdq', 'packssdw',
    'pcmpeqb', 'pcmpeqw', 'pcmpeqd',
    'pabsb', 'pabsd', 'pabsw',
    'psignb', 'psignd', 'psignw',
    'phaddd', 'phaddw', 'phaddsw',
    'phsubd', 'phsubw', 'phsubsw',
    'pmaxsb', 'pmaxsd', 'pmaxud', 'pmaxuw',
    'pminsb', 'pminsd', 'pminud', 'pminuw',
    'pshufb', 'pshufd', 'pshufw', 'pshufhw', 'pshuflw',
    'psrlw', 'psrld', 'psrlq', 'psrldq', 'pmullw', 'pmulld',
    'psubusb', 'psubusw',
    'pminub', 'pand', 'paddusb', 'paddusw', 'pmaxub', 'pandn',
    'pavgb', 'psraw', 'psrad', 'pavgw', 'pmulhuw', 'pmulhw', 'pmulhrsw',
    'psubsb', 'psubsw', 'pminsw', 'por', 'paddsb', 'paddsw', 'pmaxsw', 'pxor',
    'pslldq', 'psrldq',
    'psllw', 'pslld', 'psllq', 'pmuludq', 'pmaddwd', 'psadbw',
    'psubb', 'psubw', 'psubd', 'psubq', 'paddb', 'paddw', 'paddd', 'paddq',
    'prefetchnta', 'prefetcht0', 'prefetcht1', 'prefetcht2', 'prefetchw',
    'palignr',
    'shufpd','shufps',
    ]
for suffix in ['ps', 'pd', 'sd', 'ss']:
    for operation in ['sqrt', 'rsqrt', 'rcp', 'and', 'andn', 'or', 'xor',
            'add', 'mul', 'sub', 'min', 'div', 'max']:
        MMX.append(operation+suffix)
    for predicate in ['eq', 'lt', 'le', 'unord', 'neq', 'nlt', 'nle', 'ord']:
        MMX.append('cmp'+predicate+suffix)
del suffix
suffix = [ 'a', 'ae', 'b', 'be', 'c', 'e', 'g', 'ge', 'l', 'le', 'nb', 'nc', 'ne', 'np', 'ns', 'nz', 'p', 's', ]
TEST = [ b+s for b in ['cmov', 'j', 'set'] for s in suffix ]
TEST_att = [ 'cmov'+s+l for s in suffix for l in ['l', 'w']]
TEST_att += [ 'set'+s+l for s in suffix for l in ['b']]
del suffix

NOSUFFIX = [
        'aaa', 'aad', 'aam', 'aas',
        'clc', 'cld', 'clflush', 'cli', 'cmpxchg', 'cpuid',
        'daa', 'das',
        'fabs', 'fchs', 'fcompp', 'ffree', 'ffreep',
        'fld', 'fld1', 'fldcw', 'fldz',
        'fnclex', 'fnop', 'fnstcw', 'fnstsw', 'frndint',
        'fpatan', 'fprem', 'fprem1', 'fptan',  'fwait', 'fxam', 'fxch',
        'fxrstor', 'fxsave',
        'in', 'jmp', 'lahf', 'ldmxcsr', 'leave', 'lfence', 'lock', 'lodsw',
        'mfence', 'nop', 'out', 
        'rep', 'ret', 'sahf', 'scasb', 'scasw', 'sfence', 'stc', 'std', 'sti',
        'stmxcsr', 'stosb', 'stosl', 'stosw', 'ud2', 'wait',
        'xrstor', 'xsave', 'xsaveopt',
        'endbr32', 'endbr64',
    ]

opcodes = {
    'I386-intel': set(MMX + NOSUFFIX + TEST + ['.p2align',
        'adc', 'add', 'and', 'bsf', 'bsr', 'bswap', 'bt',
        'call', 'cbw', 'cdq', 'cmc', 'cmp', 'cmpsw', 'cwd', 'cwde',
        'dec', 'div',
        'fadd', 'faddp', 'fcmovb', 'fcmovbe', 'fcmove', 'fcmovnb', 'fcmovnbe', 'fcmovne', 'fcmovnp', 'fcmovnu', 'fcmovu', 'fdiv', 'fdivp', 'fdivr', 'fdivrp',
        'fiadd', 'fidiv', 'fidivr', 'fild', 'fimul', 'fist', 'fistp', 'fisttp', 'fisub', 'fisubr', 'fmul', 'fmulp',
        'fsqrt', 'fst', 'fstp', 'fsub', 'fsubp', 'fsubr', 'fsubrp', 'fucom', 'fucomi', 'fucomip', 'fucomp', 'fucompp',
        'idiv', 'imul', 'inc',
        'lea', 'mov', 'movsw', 'movsx', 'movzx', 'mul', 'neg', 'not', 'or',
        'pop', 'popfd', 'push', 'pushfd', 'repz', 'repnz', 'rol', 'ror',
        'sal', 'sar', 'sbb', 'shl', 'shld', 'shr', 'shrd', 'sub',
        'test', 'xadd', 'xchg', 'xor']),
    'I386-att': set(MMX + NOSUFFIX + TEST + TEST_att + ['cvtsi2sdl', 'cvtsi2ssl', '.p2align',
        'adcl', 'addb', 'addl', 'addw', 'andb', 'andl', 'andw', 'bsfl', 'bsrl', 'bswap', 'bswapl', 'btl', 'btsl',
        'call', 'calll', 'cbtw', 'cltd', 'cmpb', 'cmpl', 'cmpsb', 'cmpsw', 'cmpw', 'cwtd', 'cwtl',
        'decb', 'decl', 'decw', 'divb', 'divl', 'divw',
        'fadd', 'faddl', 'faddp', 'fadds', 'fcmovb', 'fcmovbe', 'fcmove', 'fcmovnb', 'fcmovnbe', 'fcmovne', 'fcmovnu', 'fcmovu', 'fcom', 'fcomi', 'fcomip', 'fcomp', 'fcompp', 'fdiv', 'fdivl', 'fdivp', 'fdivr', 'fdivrl', 'fdivrp', 'fdivrs', 'fdivs',
        'fiaddl', 'fidivl', 'fidivrl', 'fildl', 'fildll', 'fildq', 'filds', 'fimull', 'fistps', 'fistl', 'fistpl', 'fistpll', 'fistpq', 'fisttpl', 'fisttpll', 'fisttpq', 'fisubl', 'fisubrl', 'fldl', 'flds', 'fldt', 'fmul', 'fmull', 'fmulp', 'fmuls',
        'fsqrt', 'fstl', 'fstp', 'fstpl', 'fstps', 'fstpt', 'fsts', 'fsub', 'fsubl', 'fsubp', 'fsubr', 'fsubrl', 'fsubrp', 'fsubrs', 'fsubs', 'fucom', 'fucomi', 'fucomip', 'fucomp', 'fucompi', 'fucompp',
        'idivb', 'idivl', 'imull', 'imulw', 'incb', 'incl', 'incw', 'insb', 'insd', 'insw', 'jmpl',
        'leal', 'lgdtl', 'ljmp', 'movb', 'movl', 'movsb', 'movsbl', 'movsbw', 'movsl', 'movsw', 'movswl', 'movw', 'movzbl', 'movzbw', 'movzwl', 'mulb', 'mull', 'negb', 'negl', 'notb', 'notl', 'notw', 'orb', 'orl', 'orw', 'outsb', 'outsd', 'outsw',
        'popfl', 'popl', 'pushfl', 'pushl', 'pushw', 'repnz', 'repz', 'retl', 'rolb', 'roll', 'rolw', 'rorb', 'rorl', 'rorw',
        'salb', 'sall', 'sarb', 'sarl', 'sarw', 'sbbb', 'sbbl', 'shlb', 'shldl', 'shll', 'shrb', 'shrdl', 'shrl', 'shrw', 'subb', 'subl', 'subw',
        'testb', 'testl', 'testw', 'xaddb', 'xaddl', 'xaddw', 'xchgl', 'xorb', 'xorl', 'xorw']),
}
del TEST
del TEST_att
del MMX
del NOSUFFIX
