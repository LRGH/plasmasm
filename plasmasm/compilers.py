# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import logging
log = logging.getLogger("plasmasm")
try:
    from plasmasm.python.compatibility import set, sorted, reversed, one
except ImportError:
    one = 1

#NON_REGRESSION_FOUND = True # Define this variable to avoid raising errors

def got_jmp(label):
    # When the bloc contains just a jmp to a value read in a relocation table
    # rename the label and delete the bloc
    lines = getattr(label, 'lines', [])
    if len(lines) != 1:
        return
    instr = lines[0]
    if not instr.flow == 'jmp':
        return
    dst = instr.dst[0]
    if dst is None:
        return
    if dst.name.startswith('msvcrt.dll'):
        label.delete_bloc()
    if not hasattr(dst, 'section'):
        return
    if dst.section in ('.got', '.got.plt'):
        for pattern in ('.rel.plt.', '.rela.plt.'):
            if dst.name.startswith(pattern):
                log.debug("Found GOT/PLT jump %r to %r", label, dst)
                label.delete_bloc()
                return dst.name[len(pattern):]
    if dst.section == '.idata':
        label.delete_bloc()
        return


##########################################################
# Tested with GCC: (Debian 4.9.2-10) 4.9.2

def gcc_x64_start(label):
    # Detection of ELF created by gcc
    if not hasattr(label, 'lines'):
        return False
    if len(label.lines) != 11 or \
        label.lines[-6].opname != 'push' or \
        label.lines[-5].opname != 'push' or \
        label.lines[-2].opname != 'mov' or \
        label.lines[-1].opname != 'call':
        return False
    log.debug("Compiler is apparently GCC 64-bits")
    if label.name != '_start':
        label.rename('_start', force=True)
    main = list(label.lines[-2].labels())[0]
    if main.name == 'main':
        return True
    if not main.name.startswith('.L'):
        log.warning("main is named %r", main.name)
        return False
    # Stripped binary, we need to rename some symbols
    main.rename('main', force=True)
    main.symbols.setattr(name='main', type='function', bind='globl')
    list(label.lines[-3].labels())[0].rename('__libc_csu_init', force=True)
    list(label.lines[-4].labels())[0].rename('__libc_csu_fini', force=True)
    label.symbols.cds.gcc64()
    return True

##########################################################
# Tested with GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3

def gcc_x86_start(label):
    # Detection of ELF created by gcc
    if not hasattr(label, 'lines'):
        return False
    if len(label.lines) != 13 or \
        label.lines[-6].opname != 'push' or \
        label.lines[-5].opname != 'push' or \
        label.lines[-2].opname != 'push' or \
        label.lines[-1].opname != 'call':
        return False
    log.debug("Compiler is apparently GCC")
    if label.name != '_start':
        label.rename('_start', force=True)
    main = list(label.lines[-2].labels())[0]
    if main.name == 'main':
        return True
    if not main.name.startswith('.L'):
        log.warning("main is named %r", main.name)
        return False
    # Stripped binary, we need to rename some symbols
    main.rename('main', force=True)
    main.symbols.setattr(name='main', type='function', bind='globl')
    list(label.lines[-5].labels())[0].rename('__libc_csu_init', force=True)
    list(label.lines[-6].labels())[0].rename('__libc_csu_fini', force=True)
    label.symbols.cds.gcc()
    return True


def name_cut(name, patterns, position):
    if position == 0:
        for p in patterns:
            if name.startswith(p):
                return name[len(p):]
    elif position == 1:
        for p in patterns:
            if name.endswith(p):
                return name[:-len(p)]

def gcc_hidden(symbols):
    for name in ['__i686.get_pc_thunk.bx','__i686.get_pc_thunk.cx']:
        try:
            symbols.setattr(name = name, visibility = 'hidden')
            label = symbols.symbols_byname[name]
            if not name in label.section:
                # asm source uses a specific comdat section
                # not visible when parsing .out
                label.section = "%s.%s" % (label.section, name)
                symbols.sections.asm_name[label.section] = '%s,"axG",@progbits,%s,comdat' % (label.section, label.name)
        except ValueError:
            pass
    # Find all 'hidden' symbols that are not used anywhere
    hidden = set([label for label in symbols.symbols
        if getattr(label,'visibility',None) == 'hidden'])
    for label in symbols.symbols:
        if 'set' in getattr(label, 'data', {}):
            hidden.difference_update([label.data['set']])
    for label in symbols.blocs:
        for line in label.lines:
            hidden.difference_update(line.labels())
    # Those don't appear in the asm file
    for label in hidden:
        if hasattr(label, 'lines'):
            label.delete_bloc()
        del label.visibility
    # atexit is added by gcc to the executable, but should not appear as hidden
    if 'atexit' in symbols.symbols_byname:
        del symbols.symbols_byname['atexit'].visibility
    # The first bloc of sections .init_array or .fini_array may be
    # disposeable.
    # Non-regression: minigzip from zlib-1.2.8 / gcc 4.8.4 64-bit
    for label in symbols.blocs:
        l = label.lines
        if label.section in ('.init_array', '.fini_array') \
                and len(l) == 2 \
                and getattr(l[1], 'value', None) == [0] \
                and getattr(getattr(l[0], 'value', [None])[0], 'name', None) \
                    in ('frame_dummy', '__do_global_dtors_aux'):
            label.delete_bloc()

x86_long_nop_bytes = [
    # gcc uses various instructions with no effect
    'eb0d90909090909090909090909090',
    '89f68dbc2700000000',
    '8db42600000000',
    '8dbc2700000000',
    '8dbf00000000',
    '8db600000000',
    '8d742600',
    '8d7600',
    '8d36',
    '6690',
    # clang only uses 0f1f long nop
    '6666666666662e0f1f840000000000',
    '66666666662e0f1f840000000000',
    '666666662e0f1f840000000000',
    '6666662e0f1f840000000000',
    '66662e0f1f840000000000',
    '662e0f1f840000000000',
    '660f1f840000000000',
    '0f1f840000000000',
    '0f1f8000000000',
    '660f1f440000',
    '0f1f440000',
    '0f1f4000',
    '0f1f00',
    # mingw uses some other instructions
    '8d3f',
    ]

def x86_long_nop(symbols):
    # We need some hacks to make our non-regression tests work
    # GNU as 2.22 generation of conditional jumps depends a lot
    # of what are the .p2align directives
    # Depending on that, the conditional jump takes 2 or 6 bytes
    # The hack is:
    # - even when there is a 'nop' is the asm source, if its
    #   address is odd, we may want to output a p2align
    #   The non-regression test is k9-O3fPIC.o
    # - but there are 'nop' in the asm source that should not
    #   be tranformed in p2align
    #   The non-regression test is c9.out
    # - generate p2align 3 or p2align 4 depending not only
    #   on the end-address low bits but also on the long nop
    #   The non-regression test is g9-O3.o
    # Note: the cost of this function is 3-5% of the running time
    import binascii
    if symbols.arch.CPU == 'I386':
        x86_long_nop_bytes.append('89f6')
        # not a nop on x86_64: movl %esi, %esi clears the high 32 bits of %rsi
    x86_long_nop = [ binascii.unhexlify(_) for _ in x86_long_nop_bytes ]
    x86_nop = binascii.unhexlify('90')
    x86_jmp0d = binascii.unhexlify('eb0d')
    import struct
    empty = struct.pack("")
    def find_nop(data):
        for nop in [x86_nop] + x86_long_nop:
            if data.startswith(nop): return nop
        return empty
    from plasmasm.constants import P2Align
    from plasmasm.symbols import section_type
    labels_with_long_nop = set()
    labels_with_nop = set()
    for label in symbols.symbols:
        if not hasattr(label, 'section'):
            continue
        if not hasattr(label, 'lines'):
            continue
        if not section_type(label.section) == 'text':
            continue
        if     'data_object' in getattr(label, 'data', {}) or \
               getattr(label, 'switch_table', False):
            continue
        if label.flow == 'jmp' and label.lines[-1].pack() == x86_jmp0d:
            # To detect the long nop eb0d90909090909090909090909090
            # we need to merge this bloc with the bloc of nops
            l = symbols.find_symbol(section=label.section,
                address=label.lines[-1].offset+2)
            # We need check that this bloc is made of 13 nop
            if len(getattr(l, 'lines', [])) != 13:
                continue
            for line in l.lines:
                if line.pack() != x86_nop:
                    break
            else:
                label.lines.extend(l.lines)
                l.delete_bloc()
                label.set_nxt(label.cfg[0], force=True)
                label.set_flow(None, force=True)
            if hasattr(l, 'lines'):
                continue
        pos_list = []
        data = empty
        for line in label.lines:
            pos_list.append(len(data))
            data += line.pack()
        for pos in pos_list:
            long_nop = find_nop(data[pos:])
            if long_nop:
                while True:
                    new_nop = find_nop(data[pos+len(long_nop):])
                    long_nop += new_nop
                    if not new_nop: break
                labels_with_long_nop.add((label,pos,long_nop))
                break
    if len(labels_with_long_nop) == 0:
        return
    # We have long nops: -O2 has been used, more specifically, one of
    # -falign-functions, -falign-jumps, -falign-loops, -falign-labels
    compiler = symbols.get_meta().get('compiler', None)
    data_longnop = False
    for label, pos, long_nop in sorted(
            labels_with_long_nop.union(labels_with_nop),
            key = lambda x:x[0].address):
        # Find the nop, and replace it
        data = empty
        for idx in range(len(label.lines)):
            if len(data) == pos:
                break
            data += label.lines[idx].pack()
        data = empty
        for cnt in range(len(label.lines)-idx):
            data += label.lines[idx+cnt].pack()
            if len(data) >= len(long_nop):
                break
        if data != long_nop:
            raise ValueError(label, pos, binascii.hexlify(long_nop),
                               idx, cnt, binascii.hexlify(data))
        # Replace the line with a p2align directive
        offset = label.lines[idx].offset
        if compiler in ('gcc', 'mingw'):
            end = offset + len(data)
            if   len(data) >= 7: max_p2 = 4
            else:                max_p2 = 3
            for lo_zero_bits in range(max_p2+1):
                if end % (2<<lo_zero_bits) != 0:
                    break
            if lo_zero_bits == 0:
                # Don't convert this nop to p2align
                continue
            align = ".p2align %s" % lo_zero_bits
        elif compiler == 'clang':
            align = ".align 4, 0x90"
        else:
            # unknown compiler
            continue
        for _ in range(cnt):
            del label.lines[idx+1]
        label.lines[idx] = P2Align(symbols, align,
            section=label.section, offset=offset, binary=data)
        if symbols.get_meta().get('compiler', None) == 'gcc' \
            and '4.9.2' in symbols.get_meta().get('ident', '') \
            and align == '.p2align 3':
                # Alignment generated by the compiler contains two lines
                # We insert the other line
                label.lines[idx:idx] = [ P2Align(symbols, '.p2align 4,,10',
                    section=label.section, offset=offset, binary='') ]
        # If the label contains data (e.g. clang switch table)
        # then the P2Align should be in another bloc, and we recompute
        # the CFG list
        if getattr(label, 'switch_table', False):
            NON_REGRESSION_FOUND
        if getattr(label,'type',None) == 'object':
            NON_REGRESSION_FOUND
            new_label = symbols.find_symbol(section=label.section,
                address=label.lines[idx].offset)
            label.split(new_label, idx)
            label.set_nxt(None, force=True)
            label._cfg = None
            data_longnop = True
    if data_longnop:
        # Recompute CFG which contained None because the switch table
        # ended with long nop
        NON_REGRESSION_FOUND
        for label in symbols.symbols:
            if not None in label.cfg: continue
            try:
                instr = label.compute_dst()
                if instr is not None:
                    from plasmasm.parse_bin import set_cfg_stack
                    set_cfg_stack({}, label, instr, instr.flow)
                if 'cfg_warn' in getattr(label, 'data', {}):
                    label.del_data('cfg_warn')
            except AttributeError:
                pass

# Hack for gcc 4.6.3, 32-bit - version running in my VM
# Note that there are two different gcc compilers with same version
# number 4.6.3-1ubuntu5. The one running in Travis CI and Ubuntu 12.04.5
# generates switch tables in .text and _GLOBAL_OFFSET_TABLE_+[.-.L18]
# and another one generating switch table in .rodata and .L18@GOTOFF
def switch_detection_gcc463m32opt(instr):
    if instr.opname != 'movsx':
        return None
    value = instr.api_get_imm(1)
    if value is None:
        return None
    if instr.api_get_label(1) != (None, None):
        # Analysis already done
        return None
    # It may be a switch, optimised by the compiler
    # Look at what happened before
    pos = (instr.section, instr.offset)
    if not pos in instr.symbols.symbols_byaddress:
        return None
    bloc = instr.symbols.symbols_byaddress[pos][0]
    bloc = instr.symbols.previous(bloc)
    if len(getattr(bloc, 'lines', [])) < 3:
        return None
    # Check that the last lines are of type:
    # lea       ecx, [edx-37]
    # cmp       ecx, 89
    # ja        .L00000018
    # movsx     eax, BYTE PTR [edx+347]
    if bloc.lines[-1].opname != 'ja': return None
    if bloc.lines[-2].opname != 'cmp': return None
    if bloc.lines[-3].opname != 'lea': return None
    if bloc.lines[-2].api_arg_txt(0) != bloc.lines[-3].api_arg_txt(0):
        return None
    if not instr.api_same_base_reg(1, bloc.lines[-3]):
        return None
    log.debug("SWITCH GCC 4.6.3 %r", bloc)
    return (value - bloc.lines[-3].api_get_imm(1))%(one<<32)

# Switch detection that updates the switch table
def switch_detection_x86_update(instr):
    if switch_detection_clang32(instr):
        return True
    if switch_detection_gcc411(instr):
        return True
    if switch_detection_gcc463m32opt_travis(instr):
        return True
    return False

# Hack for gcc 4.6.3, 32-bit - version running in Travis CI
def switch_detection_gcc463m32opt_travis(instr):
    # typically
    #   movl    %ebx, %ecx
    #   subl    .L24@GOTOFF(%ebx,%eax,4), %ecx
    #   jmp     *%ecx
    if instr.symbols.meta.get('compiler', None) != 'gcc':
        return False
    if instr.opname != 'jmp':
        return False
    if instr.api_get_label(0) != (None, None):
        return False
    bloc = instr.get_bloc()
    if len(getattr(bloc, 'lines', [])) < 2:
        return False
    # Check the previous lines
    jmp_reg = instr.api_arg_txt(0)
    # line -1: subl TABLE(%sub_reg,%add_reg,4), %jmp_reg
    if 'sub' != bloc.lines[-1].opname:
        return False
    if jmp_reg != bloc.lines[-1].api_arg_txt(0):
        return False
    label, label_dif = bloc.lines[-1].api_get_label(1)
    if label_dif is not None:
        return False
    if not label.name.endswith('@GOTOFF'):
        return False
    label = instr.symbols.find_symbol(name=label.name[:-7])
    # line -2: movl %sub_reg, %jmp_reg
    if 'mov' != bloc.lines[-2].opname:
        return False
    if jmp_reg != bloc.lines[-2].api_arg_txt(0):
        return False
    sub_reg = bloc.lines[-2].api_arg_txt(1)
    import re
    pattern = r".*@GOTOFF\[%s\+...\*4\]$" % sub_reg
    if not re.match(pattern, bloc.lines[-1].api_arg_txt(1)):
        return False
    # switch table size is unknown
    log.debug("SWITCH GCC 4.6.3-travis %s", label)
    label.switch_table = ('.', 4, None)
    return True

# Hack for gcc 4.1.1, 32-bit ; PIC, not optimized
def switch_detection_gcc411(instr):
    # typically
    #   cmpl    $107, 12(%ebp)                 # table size
    #   ja      .L42                           # default switch
    #   movl    12(%ebp), %eax
    #   sall    $2, %eax
    #   movl    .L67@GOTOFF(%eax,%ebx), %eax
    #   movl    %ebx, %edx
    #   subl    %eax, %edx
    #   movl    %edx, %eax
    #   jmp     *%eax
    if instr.symbols.meta.get('compiler', None) != 'gcc':
        return False
    if instr.opname != 'jmp':
        return False
    if instr.api_get_label(0) != (None, None):
        return False
    bloc = instr.get_bloc()
    if len(getattr(bloc, 'lines', [])) < 6:
        return False
    # Check the previous lines
    # line -1: movl %sub_reg, %jmp_reg
    jmp_reg = instr.api_arg_txt(0)
    if 'mov' != bloc.lines[-1].opname:
        return False
    if jmp_reg != bloc.lines[-1].api_arg_txt(0):
        return False
    sub_reg = bloc.lines[-1].api_arg_txt(1)
    # line -2: subl %jmp_reg, %sub_reg
    if 'sub' != bloc.lines[-2].opname:
        return False
    if sub_reg != bloc.lines[-2].api_arg_txt(0):
        return False
    if jmp_reg != bloc.lines[-2].api_arg_txt(1):
        return False
    # line -3: movl %add_reg, %sub_reg
    if 'mov' != bloc.lines[-3].opname:
        return False
    if sub_reg != bloc.lines[-3].api_arg_txt(0):
        return False
    add_reg = bloc.lines[-3].api_arg_txt(1)
    # line -4: movl TABLE(%jmp_reg,%add_reg), %jmp_reg
    if 'mov' != bloc.lines[-4].opname:
        return False
    if jmp_reg != bloc.lines[-4].api_arg_txt(0):
        return False
    import re
    pattern = r".*@GOTOFF\[%s\+%s\]$" % (jmp_reg, add_reg)
    if not re.match(pattern, bloc.lines[-4].api_arg_txt(1)):
        return False
    label, label_dif = bloc.lines[-4].api_get_label(1)
    if label_dif is not None:
        return False
    if not label.name.endswith('@GOTOFF'):
        return False
    label = instr.symbols.find_symbol(name=label.name[:-7])
    # line -5: sall $2, %jmp_reg
    if 'sal' != bloc.lines[-5].opname:
        return False
    if jmp_reg != bloc.lines[-5].api_arg_txt(0):
        return False
    if '2' != bloc.lines[-5].api_arg_txt(1):
        return False
    # line -6: movl %stack, %jmp_reg
    if 'mov' != bloc.lines[-6].opname:
        return False
    if jmp_reg != bloc.lines[-6].api_arg_txt(0):
        return False
    stack = bloc.lines[-6].api_arg_txt(1)
    if not re.match(r"\[ebp\+\d+\]$", stack):
        return False
    # When not optimized, it is always the previous bloc that makes the
    # comparison to the switch table size
    tbl_size = get_tbl_size(bloc.symbols.previous(bloc))
    label.switch_table = ('.', 4, tbl_size)
    log.debug("SWITCH GCC 4.1.1 PIC, not optimized %s (%s lines)", label, tbl_size)
    return True

# Hack for gcc 3.4.6, 32-bit
def switch_detection_gcc346m32opt(instr):
    if instr.opname != 'jmp':
        return None
    value = instr.api_get_imm(0)
    if value is None:
        return None
    if instr.api_get_label(0) != (None, None):
        # Analysis already done
        return None
    # It may be a switch, optimised by the compiler
    # Check that the instruction is
    # jmp       *label(,%reg,4)
    if not instr.api_arg_txt(0).endswith('*4]]'):
        return None
    # Non-regression: plotport-gcc346nopic.o
    log.debug("SWITCH GCC 3.4.6 '%s'", instr)
    instr.precomputed_str = {}
    return value

def switch_detection_gcc64nopic(instr):
    # Table of .quad label
    # Nothing specific to be done, no label_diff because not PIC
    # ===================================
    # Non-regression: a28-gcc484m64.*
    #    movl    %eax, %eax
    #    movq    .L4(,%rax,8), %rax
    #    jmp     *%rax
    # Non-regression: a28-O3-gcc484m64.*
    #    jmp     *.L4(,%rdi,8)
    return None

def get_tbl_size(bloc):
    assert bloc is not None
    if not hasattr(bloc, 'lines'):
        return None
    # line -1: ja LABEL
    if 'ja' != bloc.lines[-1].opname:
        return None
    # line -2: cmpl $tbl_size, %idx
    # idx may be a %reg32, but may be read from the stack
    if 'cmp' == bloc.lines[-2].opname:
        return 1+bloc.lines[-2].api_get_imm(1)
    if 'mov' == bloc.lines[-2].opname and \
       'cmp' == bloc.lines[-3].opname:
        return 1+bloc.lines[-3].api_get_imm(1)
    if 'lea' == bloc.lines[-2].opname and \
       'cmp' == bloc.lines[-3].opname:
        return 1+bloc.lines[-3].api_get_imm(1)
    return None

def get_lea_label(line):
    op = line.amoco.operands[1]
    if not op._is_mem \
        or not op.size == 64 \
        or not op.a.disp._is_lab \
        or not op.a.base._is_reg \
        or not op.a.base.ref == 'rip':
        return False
    return op.a.disp.ref

# amoco-only; later we may want to use a more generic API
def switch_detection_gcc64picnotopt(instr):
    # Table of .long label-label_dif
    # We need to fing the table label and set its 'switch_table' attribute
    # with ptr_size and pic_base
    # ===================================
    # Non-regression: a28-fPIC-gcc484m64.*
    #    movl    %eax, %eax               # %rax = 32-bit table index
    #    leaq    0(,%rax,4), %rdx         # %rdx <- offset in table
    #    leaq    .L4(%rip), %rax          # %rax <- start of table
    #    movl    (%rdx,%rax), %eax        # %rax <- 32-bit labeldif from table
    #    movslq  %eax, %rdx               # %rdx <- 64-bit labeldif from table
    #                                     #         with sign extension
    #    leaq    .L4(%rip), %rax          # %rax <- start of table
    #    addq    %rdx, %rax               # %rax <- jump value
    #    jmp     *%rax
    if instr.symbols.meta.get('compiler', None) != 'gcc':
        return False
    if instr.opname != 'jmp':
        return False
    if instr.api_get_label(0) != (None, None):
        return False
    bloc = instr.get_bloc()
    if bloc is None:
        return False
    if len(getattr(bloc, 'lines', [])) < 7:
        return False
    # Check the previous lines
    # line -1: addq %add_reg, %jmp_reg
    jmp_reg = instr.api_arg_txt(0)
    if 'add' != bloc.lines[-1].opname:
        return False
    if jmp_reg != bloc.lines[-1].api_arg_txt(0):
        return False
    add_reg = bloc.lines[-1].api_arg_txt(1)
    # line -2: leaq TABLE(%rip), %jmp_reg
    if 'lea' != bloc.lines[-2].opname:
        return False
    if jmp_reg != bloc.lines[-2].api_arg_txt(0):
        return False
    label = get_lea_label(bloc.lines[-2])
    # line -3: movslq %jmp_reg32, %add_reg
    if 'movsxd' != bloc.lines[-3].opname:
        return False
    if add_reg != bloc.lines[-3].api_arg_txt(0):
        return False
    jmp_reg32 = bloc.lines[-3].api_arg_txt(1)
    # line -4: movl (%add_reg, %jmp_reg), %jmp_reg32
    if 'mov' != bloc.lines[-4].opname:
        return False
    if jmp_reg32 != bloc.lines[-4].api_arg_txt(0):
        return False
    # line -5: leaq TABLE(%rip), %jmp_reg
    if 'lea' != bloc.lines[-5].opname:
        return False
    if jmp_reg != bloc.lines[-5].api_arg_txt(0):
        return False
    op = bloc.lines[-5].amoco.operands[1]
    if not op._is_mem \
        or not op.size == 64 \
        or not op.a.disp._is_lab \
        or not op.a.base._is_reg \
        or not op.a.base.ref == 'rip':
        return False
    if label != op.a.disp.ref:
        return False
    # line -6: leaq (%jmp_reg,4), %add_reg
    if 'lea' != bloc.lines[-6].opname:
        return False
    if add_reg != bloc.lines[-6].api_arg_txt(0):
        return False
    # line -7: movl %jmp_reg32, %jmp_reg32
    if 'mov' != bloc.lines[-7].opname:
        return False
    if jmp_reg32 != bloc.lines[-7].api_arg_txt(0):
        return False
    # When not optimized, it is always the previous bloc that makes the
    # comparison to the switch table size
    tbl_size = get_tbl_size(bloc.symbols.previous(bloc))
    label.switch_table = (label, 4, tbl_size)
    log.debug("SWITCH GCC64 PIC, not optimized %s (%s lines)", label, tbl_size)
    instr.dst = [[label]]
    return True

def switch_detection_gcc64picopt(instr):
    # Table of .long label-label_dif
    # We need to fing the table label and set its 'switch_table' attribute
    # with ptr_size and pic_base
    # There are too many variants, usual pattern-matching approach will be too
    # complicated
    if instr.symbols.meta.get('compiler', None) != 'gcc':
        return False
    if instr.opname == 'lea':
        return switch_detection_gcc64picopt_lea(instr)
    if instr.opname == 'jmp':
        return switch_detection_gcc64picopt_jmp(instr)
    return False

def switch_detection_gcc64picopt_lea(instr):
    # Find labels that correspod to switch tables
    # Later, this method should disappear because it is not reliable
    if not '(%rip)' in str(instr):
        return False
    label, _ = instr.api_get_label(1)
    if label is None:
        return False
    if getattr(label, 'section', None) != '.rodata':
        return False
    meta = instr.symbols.get_meta()
    if meta.get('relocatable', False):
        _, relocs = instr.symbols.streams[label.section]
        # Necessary, e.g. for ZX.o from pari 2.5.5 / gcc 4.8 64-bit
        # Where there is an anonymous table of .quad in .rodata
        if not label.address in relocs:
            return False
        r_type, r_data = relocs[label.address]
        from elfesteem import elf
        if r_type != ('ELF',elf.EM_X86_64,elf.R_X86_64_PC32):
            return False
    if getattr(label, 'type', None) == 'object':
        # Necessary, e.g. for infback.o from zlib 1.2.8 / gcc 4.8 64-bit
        # But won't work for stripped binaries
        return False
    # When optimized, the bloc that makes the comparison can be at many
    # positions compared to the position of the 'lea'
    tbl_size = None
    prev = instr.get_bloc()
    log.debug("SWITCH GCC64 PIC, %s", prev)
    prev = prev.get_ancestors()
    if len(prev) == 1 and prev[0] is not None:
        log.debug("... %r", prev[0])
        tbl_size = get_tbl_size(prev[0])
    label.switch_table = (label, 4, tbl_size)
    log.debug("SWITCH GCC64 PIC, optimized %s (%s lines)", label, tbl_size)
    return None

def switch_detection_gcc64picopt_jmp(instr):
    # Check that it is jmp *%jmp_reg
    if instr.api_get_label(0) != (None, None):
        return False
    bloc = instr.get_bloc()
    if bloc is None:
        return False
    if len(getattr(bloc, 'lines', [])) < 2:
        return False
    jmp_reg = instr.api_arg_txt(0)
    log.debug("JMP %s", jmp_reg)
    # line -1: addq %add_reg, %jmp_reg
    if 'add' != bloc.lines[-1].opname:
        return False
    if jmp_reg != bloc.lines[-1].api_arg_txt(0):
        return False
    add_reg = bloc.lines[-1].api_arg_txt(1)
    log.debug("ADD %s", add_reg)
    # line -2: movslq  (%tbl_reg,%idx_reg,4), %jmp_reg
    #    or    movslq  (%tbl_reg,%idx_reg,4), %add_reg
    log.debug("MOVSLQ %s [%s,%s]", bloc.lines[-2], jmp_reg, add_reg)
    if 'movsxd' != bloc.lines[-2].opname:
        return False
    if not bloc.lines[-2].api_arg_txt(0) in (jmp_reg, add_reg):
        return False
    op = bloc.lines[-2].amoco.operands[1]
    if not op._is_mem \
        or not op.size == 32 \
        or not op.a.disp == 0 \
        or not op.a.base._is_eqn \
        or not op.a.base.op.symbol == '+' \
        or not op.a.base.r._is_eqn \
        or not op.a.base.r.op.symbol == '*' \
        or not op.a.base.r.l._is_reg:
        return False
    tbl_reg = op.a.base.l.ref
    idx_reg = op.a.base.r.l.ref
    # Find the size of the switch table
    tbl_size = get_tbl_size(bloc.symbols.previous(bloc))
    log.debug("MOVSLQ idx=%s; tbl=%s; sz=%s", idx_reg, tbl_reg, tbl_size)
    # Find the label of the switch table
    # It's the first previous 'lea' that modifies %tbl_reg
    for cnt in range(15):
        # at least 8 is needed for j9-O3fPIC.o
        for line in reversed(bloc.lines):
            log.debug("... %s", line)
            if 'lea' != line.opname:
                continue
            if tbl_reg != line.api_arg_txt(0):
                continue
            label = get_lea_label(line)
            log.debug("LABEL FOUND %r", label)
            label.switch_table = (label, 4, tbl_size)
            instr.dst = [[label]]
            return False
        log.debug("Back one bloc (%d)", cnt)
        bloc = bloc.symbols.previous(bloc)
    return False
    # ===================================
    # Non-regression: a28-O3fPIC-gcc484m64.*
    #                                     # %rdi = table index
    #    leaq    .L4(%rip), %rax          # %rax <- start of table
    #    movslq  (%rax,%rdi,4), %rdx      # %rdx <- 64-bit labeldif from table
    #                                     #         with sign extension
    #    addq    %rdx, %rax               # %rax <- jump value
    #    jmp     *%rax
    # Non-regression: infback
    #    leaq    .L23(%rip), %rdx
    #    movslq  (%rdx,%rax,4), %rax
    #    addq    %rax, %rdx
    #    jmp     *%rdx
    # Non-regression: alglin2
    #    leaq    .L1048(%rip), %rcx
    #    movq    %rsi, %r12
    #    movslq  (%rcx,%rax,4), %rax
    #    addq    %rax, %rcx
    #    jmp     *%rcx
    # Non-regression: regexpr
    #    leaq    .L280(%rip), %rdi
    #    movl    %r15d, %eax
    #    movslq  (%rdi,%rax,4), %rax
    #    addq    %rdi, %rax
    #    jmp     *%rax
    # Non-regression: regexpr
    #    leaq    .L250(%rip), %rsi
    #    movzbl  %dl, %edx
    #    movslq  (%rsi,%rdx,4), %rdx
    #    addq    %rsi, %rdx
    #    jmp     *%rdx
    # Non-regression: regexpr
    #    leaq    .L389(%rip), %rdx
    #    xorl    %ecx, %ecx
    # .L408:
    #    addl    $1, %ecx
    #    cmpb    $19, 0(%r13)
    #    leaq    1(%r13), %rax
    #    ja      .L388
    #    movzbl  0(%r13), %esi
    #    movslq  (%rdx,%rsi,4), %rsi
    #    addq    %rdx, %rsi
    #    jmp     *%rsi
    # Non-regression: regexpr
    #    leaq    .L402(%rip), %rsi
    #.L400:
    #    cmpq    %rdi, %rax
    #    je      .L640
    #    addl    $1, %ecx
    #    cmpb    $21, (%rax)
    #    leaq    1(%rax), %rdx
    #    ja      .L370
    #    movzbl  (%rax), %r8d
    #    movslq  (%rsi,%r8,4), %r8
    #    addq    %rsi, %r8
    #    jmp     *%r8
    # Non-regression: regexpr
    #    leaq    .L648(%rip), %rdx
    #    movq    $0, 13408(%rsp)
    #    movq    $0, 13416(%rsp)
    #    movl    $0, 5200(%rsp)
    #    movq    %rax, 5208(%rsp)
    #    movl    $0, 64(%rsp)
    #    movl    $0, 68(%rsp)
    #    movl    $0, 72(%rsp)
    #.L644:
    #    cmpb    $22, 0(%rbp)
    #    leaq    1(%rbp), %rsi
    #    ja      .L1061
    #    movzbl  0(%rbp), %eax
    #    movslq  (%rdx,%rax,4), %rax
    #    addq    %rdx, %rax
    #    jmp     *%rax
    # Non-regression: j9-O3fPIC
    #    leaq    .L58(%rip), %rbx
    #    call    srand@PLT
    #    leaq    .LC5(%rip), %rdi
    #    call    system@PLT
    #    movq    l@GOTPCREL(%rip), %r12
    #    movq    G@GOTPCREL(%rip), %r13
    #    leaq    .LC6(%rip), %rsi
    #    movl    $1, %edi
    #    xorl    %eax, %eax
    #    movsbl  (%r12), %edx
    #    movb    $0, 0(%r13)
    #    call    __printf_chk@PLT
    #    movl    $14, %edi
    #    call    u@PLT
    #    movq    stdin@GOTPCREL(%rip), %rbp
    #    .p2align 4,,10
    #    .p2align 3
    #.L66:
    #    movq    0(%rbp), %rdi
    #    call    _IO_getc@PLT
    #    subl    $32, %eax
    #    cmpl    $81, %eax
    #    ja      .L66
    #    movslq  (%rbx,%rax,4), %rax
    #    addq    %rbx, %rax
    #    jmp     *%rax
    # where .L66 appears in the switch table
    #
    # Non-regression: xmltok-gcc492m64.o
    # two calls to switch tables, interleaved
    #    leaq    .L2298(%rip), %r8
    #    leaq    .L2291(%rip), %rdi
    #    addq    $8, %rsi
    #    movl    $1, %r9d
    #.L2306:
    #    movzbl  -2(%rsi), %ecx
    #    leaq    -2(%rsi), %rax
    #    movq    %rsi, %r10
    #    testb   %cl, %cl
    #    jne     .L2288
    #    movzbl  -1(%rsi), %edx
    #    movzbl  144(%rbp,%rdx), %edx
    #    subl    $5, %edx
    #    cmpb    $24, %dl
    #    ja      .L2442
    #    movzbl  %dl, %edx
    #    movslq  (%rdi,%rdx,4), %rdx
    #    addq    %rdi, %rdx
    #    jmp     *%rdx
    #(...)
    #    movq    %rsi, (%r12)
    #    jmp     .L2522
    #.L2288:
    #    leal    40(%rcx), %r11d
    #    movzbl  -1(%rsi), %edx
    #    cmpb    $39, %r11b
    #    ja      .L2297
    #    movzbl  %r11b, %r11d
    #    movslq  (%r8,%r11,4), %r11
    #    addq    %r8, %r11
    #    jmp     *%r11
    #
    # Non-regression: F2x-gcc492m64.o
    # no test on the size of the index, it is the result of an operation
    # that always returns 0...7
    #    andl    $7, %r10d
    #(...)
    #.L1587:
    #    leaq    .L1571(%rip), %rdx
    #    movslq  (%rdx,%r10,4), %rcx
    #    addq    %rcx, %rdx
    #    jmp     *%rdx


# Hack for gcc 4.6.3, 32-bit
def gcc_label_for_inlined_memcpy(instr):
    if instr.opname != 'mov':
        return
    # It may be a switch, optimised by the compiler
    # Look around
    pos = (instr.section, instr.offset-7)
    if not pos in instr.symbols.symbols_byaddress:
        return
    bloc = instr.symbols.symbols_byaddress[pos][0]
    if len(getattr(bloc, 'lines', [])) < 1:
        return
    # Check that the lines are of type:
    # movzx     eax, BYTE PTR label
    # mov       esi, label+1
    if bloc.lines[0].opname != 'movzx':
        return
    if 'eax' != bloc.lines[0].api_arg_txt(0):
        return
    if 'esi' != instr.api_arg_txt(0):
        return
    base, base_dif = bloc.lines[0].api_get_label(1)
    if base is None or base_dif is not None: return
    next, next_dif = instr.api_get_label(1)
    if next is None or next_dif is not None: return
    if not hasattr(next, 'section'): return # Already done
    if base.section != next.section: return
    if next.address - base.address != 1: return
    # Non-regression: a30-O3.o a30-O3.out
    del next.section
    next.name = "%s+1" % base
    next.reference = base
    next.address = 1 # when there is 'reference', shift value instead of address

# Hack for gcc 4.9.2, 64-bit
def gcc64_label_for_char_array(instr):
    # Non-regression: ptx.o from coreutils 8.24 / gcc 4.9.2, 64-bit
    if instr.opname != 'mov':
        return False
    if not instr.api_is_arg_size(0, 8):
        return False
    label, label_dif = instr.api_get_label(0)
    if label is None or not hasattr(label, 'address'):
        return False
    pos = (label.section, label.address+1)
    if not pos in instr.symbols.symbols_byaddress:
        return
    # It may be an access to a byte-array, where the index is incremented
    # before the array
    # Find the bloc where this instruction is
    bloc = instr.get_bloc()
    if bloc is None:
        return False
    if len(getattr(bloc, 'lines', [])) < 1:
        return False
    # Going backwards, detect if a line adds one to the index
    for idx in range(len(bloc.lines)):
        line = bloc.lines[-1-idx]
        if line.opname != 'add': continue
        if line.api_nb_arg() < 2: continue
        if line.api_get_imm(1) != 1: continue
        if not line.api_is_reg_size(0, 64): continue
        reg = line.api_arg_txt(0)
        # addq $1, %reg
        if not instr.api_is_reg_in_arg(0, reg): continue
        break
    else:
        return False
    label.rename("%s-1"% instr.symbols.find_symbol(
            section=label.section,
            address=label.address+1),
        force=True)
    log.debug("ARRAY GCC64 %s", label)

# Additional comment: gcc 4.x 64-bits generates 'call f@PLT' when
# compiled with -fPIC and 'call f' when compiled without -fPIC.
# The resulting object files are different, because R_X86_64_PLT32
# or R_X86_64_PC32 are used; but the resulting executable files
# are identical: this cannot be used to detect if -fPIC has been
# used.
# We may want to add a function that recovers the information that
# the compilation has been made with -fPIC, when it is possible.
# One indication is that constant assignment is made with
# 'movq $x, %dst' if not -fPIC and with 'movq x@GOTPCREL(%rip), %dst'
# if -fPIC, the latter being transormed by GNU as into
# 'leaq x(%rip), %dst'.

def look_backwards(symbols, bloc, pos, opnames, value):
    seen = {}
    lines = []
    def is_previous(previous, seen, value):
        # Checks if 'previous' continues with one of 'seen'
        if previous.nxt in seen:
            return seen[previous.nxt]
        for cfg in previous.cfg:
            if cfg in seen:
                return seen[cfg]
            if cfg is None:
                return value # benefit of the doubt
        return False
    while bloc is not None:
        log.debug("look_backwards %r %r in '%s'", opnames, value, bloc)
        lines = bloc.lines + lines
        while -pos <= len(bloc.lines):
            line = bloc.lines[pos]
            if line.opname in opnames and line.api_arg_txt(0) == value:
                return lines, bloc.lines.index(line)-len(lines)
            if line.opname == 'mov' and line.api_arg_txt(0) == value:
                if line.api_is_reg_size(1):
                    log.debug("register changes in %s", line)
                    value = line.api_arg_txt(1)
                else:
                    log.debug("register lost in %s", line)
                    bloc = None
                    break
            pos -= 1
        if bloc is not None:
            seen[bloc] = value
            previous = symbols.previous(bloc)
            while previous is not None:
                value = is_previous(previous, seen, value)
                if value == False:
                    previous = symbols.previous(previous)
                else:
                    break
            bloc = previous
            pos = -1
    return False, None

def switch_detection_clang32(instr):
    if instr.symbols.meta.get('compiler', None) != 'clang':
        return False
    if instr.opname != 'jmp':
        return False
    if instr.api_get_label(0) != (None, None):
        return False
    # We would like to check that PIC reg is in arg1
    # but PIC computation is not made at that moment
    bloc = instr.get_bloc()
    if bloc is None:
        return False
    jmp_dst = instr.api_arg_txt(0)
    if jmp_dst.startswith('[DWORD PTR '):
        jmp_dst = jmp_dst[11:-1]
    # Going backwards, detect which line changes jmp_dst
    lines, idx = look_backwards(instr.symbols, bloc, -1, ['add', 'mov'], jmp_dst)
    if idx is None:
        log.debug("switch_detection_clang32: line not found for bloc %r", bloc)
        return False
    log.debug("switch_detection_clang32: line found is '%s'",lines[idx])
    line = lines[idx]
    is_label_dif = ( '*' in line.api_arg_txt(1) ) # Multiplication by 4
    # Going backwards, detect which line contains the label_dif
    # and check the lines between this one and the jmp.
    if 'add' == line.opname and is_label_dif:
        #     addl L1-Lb(%pic,%reg,4), %pic
        #     (...)
        #     jmpl *%pic
        # Between the 'addl L1-Lb(%pic,%reg,4), %pic' and 'jmpl *%pic' there
        # can be other lines. They should only be 'xorl %reg, %reg' or
        # 'movl data, %reg', which initialise registers
        sw_type = 'A'
        for l2 in lines[len(lines)+1+idx:]:
            if   l2.opname == 'xor':
                # check xor %r, %r
                if l2.api_arg_txt(0) != l2.api_arg_txt(1): return False
            elif l2.opname == 'mov':
                # check mov dest is not %pic
                if l2.api_arg_txt(0) == jmp_dst: return False
            else:
                return False
    elif 'add' == line.opname and not is_label_dif:
        #     movl L1-Lb(%pic,%reg,4), %dst
        #     (...)
        #     addl %pic, %dst
        #     (...)
        #     jmpl *%dst
        # If 'mov', the PIC register is kept
        # Between the 'movl L1-Lb(%pic,%reg,4), %dst' and 'jmpl *%dst' there
        # are many lines. One is 'addl %pic, %dst', the others should only
        # be 'xorl %reg, %reg' or 'movl data, %reg', which initialise
        # registers
        sw_type = 'B'
        while -idx < len(lines):
            idx -= 1
            line = lines[idx]
            if 'mov' != line.opname: continue
            if line.api_arg_txt(0) != jmp_dst: continue
            if not '*' in line.api_arg_txt(1): continue
            break
        else:
            return False
        log.debug("switch_detection_clang32: label found at %s",lines[idx])
        for l2 in lines[len(lines)+1+idx:]:
            if   l2.opname == 'add':
                # check add %pic, %dst
                # NB: we do not check that the arg1 of l2 is %pic,
                # because %pic may be a register, but it may be [esp+imm]
                # if a 'mov' erased the %pic register
                if l2.api_arg_txt(0) != jmp_dst: return False
            elif l2.opname == 'xor':
                # check xor %r, %r
                if l2.api_arg_txt(0) != l2.api_arg_txt(1): return False
            elif l2.opname == 'mov':
                # check mov dest is not %dst
                # NB: 'mov' can erase %pic, e.g. bibli1.o when compiling gp
                if l2.api_arg_txt(0) == jmp_dst: return False
            else:
                return False
    elif 'mov' == line.opname and not is_label_dif:
        #     movl L1-Lb(%pic,%reg,4), %tmp
        #     addl %pic, %tmp
        #     movl %tmp, %dst
        #     (...)
        #     jmpl *%dst
        sw_type = 'C'
        if 'mov' == line.opname and len(lines) >= 2-idx:
            tmp_reg = line.api_arg_txt(1)
            l2 = lines[idx-1]
            if l2.opname != 'add': return False
            if l2.api_arg_txt(0) != tmp_reg: return False
            l2 = lines[idx-2]
            if l2.opname != 'mov': return False
            if l2.api_arg_txt(0) != tmp_reg: return False
            if not ',4)' in l2.api_arg_txt(1, asm_format='att_syntax'): return False
            idx -= 2
            line = lines[idx]
        else:
            return False
        log.debug("switch_detection_clang32: label found at %s",lines[idx])
    else:
        return False
    value = line.api_get_imm(1)
    if value is None:
        # Replacing the immediate value with a label difference is always
        # necessary for clang-700 object files, but not for clang-802 where
        # relocations may be used.
        NON_REGRESSION_FOUND
        label, pic_base = line.api_get_label(1)
        label.switch_table = (pic_base, 4, None)
        log.debug("SWITCH CLANG32 %s%d(rel) %r", sw_type, -1-idx, label)
    else:
        # We did not make the PIC computation, but we need to know at what
        # address is Ln$pb and then compute the address of LJTIn_0
        # Heuristic: it is defined at the start of the function, we can find
        # it by moving upwards until a bloc terminates by a 'call' to the
        # following label
        prev = instr.symbols.previous(bloc)
        while prev is not None:
            if prev.flow == 'PIC': break
            prev = instr.symbols.previous(prev)
        if prev is None:
            # We should alway find where the PIC label is defined
            NEVER
        pic_base = prev.nxt
        line.precomputed_str = {}
        label = instr.symbols.find_symbol(
            section=pic_base.section,
            address=value+pic_base.address,
            align='2, 0x90',
            )
        label.switch_table = (pic_base, 4, None)
        line.api_set_imm_label(1, value, label, label_dif=pic_base)
        log.debug("SWITCH CLANG32 %s%d(imm) %r", sw_type, -1-idx, label)
    return True

# amoco-only; later we may want to use a more generic API
def switch_detection_clang64(instr):
    if instr.symbols.meta.get('compiler', None) != 'clang':
        return False
    if instr.opname != 'jmp':
        return False
    if instr.api_get_label(0) != (None, None):
        return False
    bloc = instr.get_bloc()
    if bloc is None:
        return False
    # Find a pair of lines
    #   line pos+0: movslq (%add_reg,%idx_reg,4), %jmp_reg
    #   line pos+1: addq %add_reg, %jmp_reg
    # Usually the last lines before jmp *reg, but not always, e.g.
    # jddctmgr.o from libjpeg-6b / clang 700 64-bit
    jmp_reg = instr.api_arg_txt(0)
    for pos in range(len(bloc.lines)-1):
        add_line = bloc.lines[pos+1]
        mov_line = bloc.lines[pos]
        if 'movsxd' != mov_line.opname:
            continue
        if 'add' != add_line.opname:
            continue
        if jmp_reg != add_line.api_arg_txt(0):
            continue
        if jmp_reg != mov_line.api_arg_txt(0):
            continue
        add_reg = add_line.api_arg_txt(1)
        op = mov_line.amoco.operands[1]
        if not op._is_mem \
            or not op.size == 32 \
            or not op.a.disp == 0 \
            or not op.a.base._is_eqn \
            or not op.a.base.op.symbol == '+' \
            or not str(op.a.base.l) == add_reg \
            or not op.a.base.r.op.symbol == '*' \
            or not op.a.base.r.r._is_cst \
            or not op.a.base.r.r.value == 4:
            continue
        break
    else:
        return False
    pos -= len(bloc.lines)-1 # usually -1, but not always
    log.debug("switch_detection_clang64: movslq;add at pos=%d",pos)
    # Find the line that loads the switch table
    # It may be in the same bloc, but sometimes we need to recover many
    # previous blocs (e.g. 2 for inflate.o, 8 for gzlib.o)
    # It may not be the first leaq seen (e.g. eval.o) therefore we need
    # to find which is the relevant register; this register may not be
    # the base of movslq, when a mov before moves the value, e.g. infback.o
    if pos-2 >= 1-len(bloc.lines) and \
        'mov' == bloc.lines[pos-2].opname and \
        add_reg == bloc.lines[pos-2].api_arg_txt(0):
        lea_reg = bloc.lines[pos-2].api_arg_txt(1)
    else:
        lea_reg = add_reg
    log.debug("lea_reg=%s", lea_reg)
    # We start looking before the pair of lines movslq;add
    lines, idx = look_backwards(instr.symbols, bloc, pos-2, ['lea'], lea_reg)
    if idx is None:
        log.debug("switch_detection_clang64: leaq not found for bloc %r", bloc)
        return False
    log.debug("switch_detection_clang64: leaq label at idx=%s",idx)
    for _ in lines[idx:]: log.debug("  %s",_)
    assert idx <= pos-2
    # other lines between leaq and movslq;add
    if idx < pos-2:
        # The value of %lea_reg can change
        for l in lines[idx+1:pos-1]:
            if 'mov' == l.opname and lea_reg == l.api_arg_txt(0):
                log.debug("register changes in %s", l)
                lea_reg = l.api_arg_txt(1)
    # other lines after movslq;add
    if pos < -1:
        # Should not change %jmp_reg
        for l in lines[pos+1:]:
            if l.opname in ('mov', 'xor') and jmp_reg == l.api_arg_txt(0):
                return False
    line = lines[idx]
    value = line.api_get_imm(1)
    if value is not None:
        label = instr.symbols.find_symbol(
            section=bloc.section,
            address=value+line.offset+line.bytelen,
            align='2, 0x90',
            )
        line.precomputed_str = {}
        line.api_set_imm_label(1, value, label)
    else:
        value = line.api_get_label(1)
        assert value is not None
        label, label_dif = value
        assert label_dif is None
    if len(lines) > 3-pos and \
        'cmp' == lines[pos-3].opname and \
        'jbe' == lines[pos-2].opname:
        # The comparison may be just before the movslq
        tbl_size = 1+lines[pos-3].api_get_imm(1)
    else:
        # The previous bloc may end with
        #   cmpl $tbl_size, %idx
        #   ja LABEL
        tbl_size = get_tbl_size(bloc.symbols.previous(bloc))
    label.switch_table = (label, 4, tbl_size)
    instr.dst = [[label]]
    log.debug("SWITCH CLANG64 %s (%s lines)", line, tbl_size)
    return True

def clang64_function_headers(symbols):
    for label in symbols.blocs:
        # Already known as functions
        if hasattr(label, 'bind'): continue
        if hasattr(label, 'type'): continue
        # Detect function start
        if not hasattr(label, 'lines'): continue
        if len(label.lines) < 3: continue
        if str(label.lines[0]) != 'pushq     %rbp': continue
        if str(label.lines[1]) != 'movq      %rsp, %rbp': continue
        label.set_data('function', True)

gcc_del_bloc = (
        # .rodata
        '_fp_hw',
        '_IO_stdin_used',
        # .data
        '__dso_handle',
        # .text
        '_start',
        )
gcc_skip_bloc = (
        # .bss
        'completed.1',
        'completed.6159',
        'completed.6279',
        'completed.6973',
        'dtor_idx.6161',
        '__bss_start',
        '_end',
        # .data
        'data_start',
        '__data_start',
        '__TMC_END__',
        '_edata',
        # .text
        'atexit',
        'frame_dummy',
        'register_tm_clones',
        'deregister_tm_clones',
        '__do_global_dtors_aux',
        '__do_global_ctors_aux',
        '__libc_csu_init',
        '__libc_csu_fini',
        '__stack_chk_fail_local',
        # .ctors
        '__CTOR_LIST__',
        '__CTOR_END__',
        '__init_array_start',
        '__init_array_end',
        # .init_array
        '__frame_dummy_init_array_entry',
        # .fini_array
        '__do_global_dtors_aux_fini_array_entry',
        )
gcc_hide_symbol = (
        # .bss
        '__bss_start',
        '_end',
        # .data
        'data_start',
        '__data_start',
        '_edata',
        '__TMC_END__',
        # .ctors
        '__CTOR_LIST__',
        '__CTOR_END__',
        '__init_array_start',
        '__init_array_end',
        # weak
        '__gmon_start__',
        '_Jv_RegisterClasses',
        '_ITM_registerTMCloneTable',
        '_ITM_deregisterTMCloneTable',
        )


gcc_leon_hide_symbol = (
        '.bdata',
        '__DTOR_END__',
        '___CTOR_END__',
        '___st_pthread_mutex_init',
        '___st_pthread_mutex_lock',
        '___st_pthread_mutex_trylock',
        '___st_pthread_mutexattr_destroy',
        '___st_pthread_mutexattr_init',
        '___st_pthread_mutexattr_settype',
        '__st_pthread_mutexattr_destroy',
        '__st_pthread_mutexattr_init',
        '__st_pthread_mutexattr_settype',
        '__dso_handle',
        '__bss_start',
        '_bss_start',
        'bss_start',
        '__edata',
        '_edata',
        '_rodata_start',
        '_erodata',
        '__leonbare_initcall_end',
        '__leonbare_initcall_start',
        '__st_pthread_mutex_destroy',
        '__st_pthread_mutex_init',
        '__st_pthread_mutex_lock',
        '__st_pthread_mutex_trylock',
        '__st_pthread_mutex_unlock',
        '__st_pthread_mutexattr_destroy',
        '__st_pthread_mutexattr_init',
        '__st_pthread_mutexattr_settype',
        '__window_overflow_rettseq',
        '_cleanregs_libgloss',
        '_fpdis',
        '_global_impure_ptr',
        'atexit',
        'start',
        )
gcc_leon_hide_prefixes = (
        '__window_overflow_svt@',
        '__window_underflow_svt@',
        '__irqcall_disableirq_svt@',
        '__irqcall_svt@',
        '__fpdis_enable@',
        '__srmmu_fault@',
        )
gcc_leon_del_bloc = (
        # .data
        '__dso_handle',
        # .text
        '_start',
        )
gcc_leon_skip_bloc = (
        # .text
        'start',
        'atexit',
        'exit',
        'sbrk',
        'malloc',
        'calloc',
        'free',
        'catch_interrupt',
        'chained_catch_interrupt',
        'zerobss@0x4000101c',
        'call_frame_dummy@0x40001188',
        'iobar_getbase',
        'ahbslv_scan',
        'cleanup_glue',
        'apbslv_scan',
        'frame_dummy@0x40001124',
        'etext',
        'pnpinit',
        # .text / math statically linked
        '.umul',
        '.udiv',
        '.div',
        '.urem',
        '.rem',
        'isinf',
        'isnan',
        'divide@0x40001bfc',
        'quorem@0x400053d8',
        'lconv@0x4000b848',
        'blanks.3055@0x4000b6a0',
        'zeroes.3056@0x4000b690',
        'p05.2367@0x4000b998',
        # .text / strings and stdio statically linked
        'fgets',
        'puts',
        'close',
        'fclose',
        'fstat',
        'isatty',
        'lseek',
        'read',
        'write',
        'outbyte',
        'inbyte',
        'fflush',
        'lflush@0x400015d0',
        'memchr',
        'memcpy',
        'memmove',
        'memset',
        'strlen',
        'strcmp',
        'strtol',
        'atoi',
        'printf',
        'vfprintf',
        'putchar',
        'wcrtomb',
        'wcsrtombs',
        # .text / time statically linked
        'time',
        'settimeofday',
        'gettimeofday',
        'do_gettimeofday',
        'do_timer',
        'settimer',
        'addtimer',
        'nodotimer',
        'Timer_getTimer1',
        'Timer_getTimer2',
        'times',
        'timers',
        'clock',
        'clock_custom',
        'amba_conf',
        'amba_init',
        'amba_init_done',
        'amba_find_apbslv_addr',
        'tick_nsec',
        'tick_usec',
        'ticker_callback',
        'wall_jiffies',
        'seperateirq',
        'noalarm',
        'force_noalarm',
        'LEON3_IrqCtrl_Regs',
        'LEON3_GpTimer_Regs',
        'LEON3_GpTimer_Irq',
        # .text / locale statically linked
        'localeconv',
        'setlocale',
        'charset@0x4000b878',
        # .data
        'nestcount',
        'console',
        'rtc',
        'edata',
        'jiffies_64',
        'irqmp',
        'fastirq',
        'nestedirq',
        '.bdata',
        # .bss
        'bss_start',
        'no_inirq_check',
        'schedule_callback',
        'inirq',
        'errno',
        'xtime',
        'heap_ptr',
        )
gcc_leon_junk_prefixes = ( '_',
        '.lab',
        'leonbare', 'handler_irq', 'fpustate', 'impure_data',
        'std@',
        'irqact1@',
        'irqact2@',
        'mul_shortway@',
        'ready_to_divide@',
        'end_regular_divide@',
        'do_single_div@',
        'divloop@',
        'single_divloop@',
        'end_single_divloop@',
        'not_too_big@',
        'not_really_big@',
        'got_result@',
        'L4.9@',
        'lock@',
        'force_to_data@',
        'dtor_idx.3998@',
        'call___do_global_dtors_aux@',
        'call___do_global_ctors_aux@',
        'callcpuinit@',
        'didusefpu@',
        'mpfnostore@',
        'mpfstore@',
        'slavego@',
        'completed.3996@',
        'object.4025@',
        )


##########################################################
# Tested with i386-mingw32-gcc (GCC) 3.4.5 (mingw-vista special r2)

mingw_hide_symbol = (
        '___mingw_CRTStartup',
        '_mainCRTStartup',
        '_WinMainCRTStartup',
        '_atexit',
        '__onexit',
        '__cexit',
        '___sjlj_init_ctor',
        '___do_sjlj_init',
        '___do_global_dtors',
        '___do_global_ctors',
        '___main',
        '__pei386_runtime_relocator',
        '___cpu_features_init',
        '_fpreset',
        '__fpreset',
        '___w32_sharedptr_default_unexpected',
        '___w32_sharedptr_get',
        '___w32_sharedptr_initialize',
        '___p__environ',
        '_signal',
        '___p__fmode',
        '__setmode',
        '___getmainargs',
        '__assert',
        '_free',
        '_malloc',
        '_abort',
        '_memset',
        '_ExitProcess@4',
        '_SetUnhandledExceptionFilter@4',
        '_GetAtomNameA@12',
        '_AddAtomA@4',
        '_FindAtomA@4',
        '___crt_xl_start__',
        '___crt_xi_start__',
        '___crt_xp_start__',
        '___crt_xc_start__',
        '___crt_xt_start__',
        '___crt_xi_end__',
        '___crt_xp_end__',
        '___crt_xc_end__',
        '___crt_xt_end__',
        '___RUNTIME_PSEUDO_RELOC_LIST_END__',
        '__RUNTIME_PSEUDO_RELOC_LIST__',
        '__alloca',
        '__argv',
        '___CTOR_LIST__',
        '__end__',
        '__DTOR_LIST__',
        '___tls_end__',
        '__RUNTIME_PSEUDO_RELOC_LIST_END__',
        '__gnu_exception_handler@4',
        )
mingw_skip_bloc = (
        # .text
        '_WinMainCRTStartup',
        '_mainCRTStartup',
        '_fpreset',
        '_atexit',
        '__gnu_exception_handler@4',
        '__onexit',
        '__alloca',
        '__fpreset',
        '__pei386_runtime_relocator',
        # .data
        '__CRT_glob',
        '__fmode',
        # .rdata
        '_w32_atom_suffix',
        # .bss
        '_initialized',
        '__argv',
        '__argc',
        '__CRT_fmode',
        )

clang_skip_bloc = (
        '__mh_execute_header',
        )

class cds(object):
    def __init__(self, pool):
        self._pool = pool
        self._del_bloc = []
        self._skip_bloc = []
        self._name_change = [lambda label: got_jmp(label)]
        self._hide_symbol = []
        self._global = []
        self._detection = [
            lambda label: gcc_x86_start(label),
            lambda label: gcc_x64_start(label),
            ]

    # Using compiler-specific hooks
    def compiler_dependent_stuff(self):
        for label in self._pool.symbols:
            for _ in self._name_change:
               name = _(label)
               if name is not None:
                    label.rename(name, force=True)
            if self.del_bloc(label.name) and hasattr(label, 'lines'):
                label.delete_bloc()
        for _ in self._global:
           _(self._pool)

    def detection(self, entrypoint):
        for _ in self._detection:
           _(entrypoint)

    def will_not_show(self, name):
        return self.skip_bloc(name) or self.del_bloc(name)

    def del_bloc(self, name):
        for _ in self._del_bloc:
           if _(name): return True
        return False

    def skip_bloc(self, name):
        for _ in self._skip_bloc:
           if _(name): return True
        return False

    def hide_symbol(self, name):
        for _ in self._hide_symbol:
           if _(name): return True
        return False

    # Adding compiler-specific hooks
    def gcc64(self):
        self._del_bloc.append(lambda name: name in gcc_del_bloc)
        self._skip_bloc.append(lambda name: name in gcc_skip_bloc)
        self._hide_symbol.append(lambda name: name in gcc_hide_symbol)
        junk_prefixes = ( '.rel.dyn.', )
        glib_suffixes = ( '@@GLIBC_2.2.5', )
        self._skip_bloc.append(lambda name:
            name_cut(name,junk_prefixes,0) is not None)
        self._skip_bloc.append(lambda name:
            name_cut(name,glib_suffixes,1) is not None)
        self._name_change.append(lambda label:
            name_cut(label.name,junk_prefixes,0))
        self._name_change.append(lambda label:
            name_cut(label.name,glib_suffixes,1))
        self._global.append(gcc_hidden)

    def gcc(self):
        self._del_bloc.append(lambda name: name in gcc_del_bloc)
        self._skip_bloc.append(lambda name: name in gcc_skip_bloc)
        self._hide_symbol.append(lambda name: name in gcc_hide_symbol)
        junk_prefixes = ( '.rel.dyn.', )
        glib_suffixes = ( '@@GLIBC_2.0', '@@GLIBCXX_3.4', '@@CXXABI_1.3', )
        self._skip_bloc.append(lambda name:
            name_cut(name,junk_prefixes,0) is not None)
        self._skip_bloc.append(lambda name:
            name_cut(name,glib_suffixes,1) is not None)
        self._name_change.append(lambda label:
            name_cut(label.name,junk_prefixes,0))
        self._name_change.append(lambda label:
            name_cut(label.name,glib_suffixes,1))
        self._global.append(gcc_hidden)

    def match_x86_long_nop(self):
        self._global.append(x86_long_nop)

    def gcc_leon(self):
        self._hide_symbol.append(lambda name: name in gcc_leon_hide_symbol)
        self._hide_symbol.append(lambda name: name_cut(name,gcc_leon_hide_prefixes,0) is not None)
        self._del_bloc.append(lambda name: name in gcc_leon_del_bloc)
        self._skip_bloc.append(lambda name: name in gcc_leon_skip_bloc)
        self._skip_bloc.append(lambda name:
            name_cut(name,gcc_leon_junk_prefixes,0) is not None)
        self._skip_bloc.append(lambda name: len(name) > 6
            and name[0] == 'L'
            and name[1] in [ '1', '2', '3', '4' ]
            and name[2] == '.'
            and name[3:5] in [ '11', '13', '15', '16', '17', '19', '21', '23' ]
            and name[5] == '@'
            )

    def clang(self):
        self._skip_bloc.append(lambda name: name in clang_skip_bloc)

    def clang64(self):
        self._global.append(clang64_function_headers)

    def mingw(self):
        self._hide_symbol.append(lambda name: name in mingw_hide_symbol)
        self._skip_bloc.append(lambda name: name in mingw_skip_bloc)
        junk_prefixes = ( '___', '__head_lib', '__imp__', )
        self._skip_bloc.append(lambda name:
            name_cut(name,junk_prefixes,0) is not None)
        junk_suffixes = ( '__', '_a_iname', )
        self._skip_bloc.append(lambda name:
            name != '__' and name_cut(name,junk_suffixes,1) is not None)
