# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import set, sorted
except ImportError:
    pass

import logging
log = logging.getLogger("plasmasm")

from plasmasm.constants import Constant, P2Align
def stack_tracking(label, value):
    # Analyzes the use of the red zone.
    # Cf. http://eli.thegreenplace.net/2011/09/06/stack-frame-layout-on-x86-64/
    # Without this analysis, we cannot do push/pop on x64 without risking
    # to overwrite values in the red zone.
    # A value line.stack is created, which contains a pair:
    # - registers that contain (a shifted value of) the base address of the
    #   red zone (one may store rsp+imm in rbp and afterwards access elements
    #   in the red zone using an offset to rbp bigger than imm).
    #   Usually, it is empty or { %rbp => imm } which means
    #   that %rbp == %rsp+imm
    # - positions in the red zone that are used after the instruction has
    #   been executed (multiple of 8).
    # Functions start with 'pushq' which means the stack can be modifed, but
    # at some point there is a 'subq $imm, rsp' and things may become ugly.
    if value is None: value = {}, set()
    if not hasattr(label, 'lines'):
        return value
    # Special case:
    # Sometimes %rsp+shift is copied in %rdi
    # This is used for string copy, we need to know the size of
    # the string (in ecx) to set many positions as being accessed
    str_copy = {}
    for line in label.lines:
        # Not instructions
        if isinstance(line, Constant):
            continue
        value = update_value(line, value, str_copy)
        line.stack = value
    return value

def update_value(line, value, str_copy):
    if isinstance(line, P2Align):
        return value
    if line.api_nb_arg() == 2:
        src = line.api_arg_txt(1, asm_format='att_syntax')
        dst = line.api_arg_txt(0, asm_format='att_syntax')
    # Top
    if   value == (False, set()):
        return value
    # Analysis not possible
    if '(%rsp,' in str(line):
        return False, set()
    # When the stack moves...
    imm = line_shifts_stack(line)
    if imm != 0:
        if imm is not None: imm = -imm
        return stack_shift(value, imm)
    # Sometimes %rsp is copied in another register
    if 'mov' == line.opname \
            and src == '%rsp':
        reg, val = value
        reg = dict(reg)
        reg[dst] = set([0])
        return reg, val
    # Sometimes %rsp is copied in another register, with an offset
    if 'lea' == line.opname \
            and src.endswith('(%rsp)'):
        imm = src[:-6]
        if imm == '': imm = 0
        else:         imm = int(imm)
        reg, val = value
        reg = dict(reg)
        reg[dst] = set([imm])
        return reg, val
    # Sometimes the other register is shifted
    if 'add' == line.opname \
            and dst in value[0]:
        imm = line.api_get_cst(1)
        if imm is None:
            return value
        else:
            registers = dict(value[0])
            registers[dst] = set([_ + imm for _ in registers[dst]])
            return registers, value[1]
    # String copy into the red zone
    if 'mov' == line.opname \
            and src.startswith('$') \
            and dst in ('%ecx', '%cl'):
        imm = line.api_get_cst(1)
        if imm is not None:
            str_copy['ecx'] = imm
        return value
    if line.opname in ('movsq', 'stosq', 'scasq') \
            and line.prefix == [243]: # rep
        if 'ecx' in str_copy and '%rdi' in value[0]:
            imm = value[0]['%rdi']
            assert len(imm) == 1
            imm = list(imm)[0]
            positions = value[1].union(set(
                [imm+8*idx for idx in range(str_copy['ecx'])]))
            return value[0], positions
        else:
            return value
    # First form of movsd (0xA5)
    if line.opname == 'movsd' and line.api_nb_arg() == 0:
        return value
    # Use of the red zone starting from %rsp
    if line.opname in   ('mov', 'movss', 'movsd',
                         'movaps', 'movups', 'movlps',
                         'movdqa', 'movdqu', ) \
            and dst.endswith('(%rsp)'):
        imm = dst[:-6]
        if imm == '': imm = 0
        else:         imm = int(imm)
        positions = value[1].union(set([imm]))
        if line.opname in ('movaps', 'movups', 'movlps',
                           'movdqa', 'movdqu', ):
            # input is 128-bit long
            # note that movss %xmmN, MEM only moves 32 bits
            positions.update([imm+8])
        return value[0], positions
    # Use of the red zone starting from another register
    if line.opname in ('mov', 'movsxd') \
            and dst.endswith(')'):
        reg = dst[-5:-1]
        if reg in value[0]: # registers
            imm = dst[:-6]
            if imm == '': imm = 0
            else:         imm = int(imm)
            positions = value[1].union(set([imm+_ for _ in value[0][reg]]))
            return value[0], positions
        else:
            return value
    # Sometimes the other register is overwritten
    if set(value[0].keys()).intersection(set(['%%%s'%_ for _ in line.rw[1]])):
        registers = dict(value[0])
        written = set(['%%%s'%_ for _ in line.rw[1]])
        for _ in value[0]:
            if _ in written:
                del registers[_]
        return registers, value[1]
    return value

def line_shifts_stack(line):
    assert not isinstance(line, Constant)
    assert not isinstance(line, P2Align)
    if line.api_nb_arg() == 2:
        dst = line.api_arg_txt(0, asm_format='att_syntax')
    if 'push' == line.opname:
        if line.api_is_arg_size(0, 16):
            return -2
        # Need to test for REX, because pushq $10 has arg_size == 8
        assert line.api_is_arg_size(0, 64) or 'REX' in line.amoco.misc
        return -8
    if 'pop' == line.opname:
        assert line.api_is_arg_size(0, 64)
        return 8
    if 'sub' == line.opname and dst == '%rsp':
        imm = line.api_get_cst(1)
        if imm is not None: imm = -int(imm)
        return imm
    if 'add' == line.opname and dst == '%rsp':
        imm = line.api_get_cst(1)
        if imm is not None: imm = int(imm)
        return imm
    if 'adc' == line.opname and dst == '%rsp':
        imm = line.api_get_cst(1)
        if imm is not None: imm = int(imm)
        return imm
    if 'lea' == line.opname and dst == '%rsp':  # leaq imm(%rsp), %rsp
        imm = line.api_get_imm(1)
        if imm is not None: imm = int(imm)
        return imm
    return 0

def stack_shift(value, imm, no_copy=False):
    registers, positions = value
    if registers is False: # top
        return value
    if imm is None:
        # Happens when the source is C++, e.g. 'subq    %rax, %rsp'
        return False, set()
    if no_copy and imm == 0:
        return value
    new_pos = set()
    for pos in positions:
        new_pos.add(pos+imm)
    new_reg = {}
    for k in registers:
        new_reg[k] = set([imm+_ for _ in registers[k]])
    return new_reg, new_pos

def stack_merge(v1, v2):
    if v1 == v2:
        return v1
    if v2 is None:
        return v1
    if v1 is None:
        return v2
    r1, p1 = v1
    r2, p2 = v2
    if r1 is False or r2 is False: # top
        return False, set()
    if p2 != set(): p1 = p1.union(p2)
    if r1 != r2:
        new_reg = {}
        for k in r1:
            if k in r2: new_reg[k] = r1[k].union(r2[k])
            else:       new_reg[k] = r1[k]
        for k in r2:
            if not k in r1: new_reg[k] = r2[k]
        r1 = new_reg
    return r1, p1

def analyze_stack(symbols):
    if symbols.arch.CPU != 'X64': return
    propagate_cfg_merge(symbols, stack_tracking, merge=stack_merge)








# Some generic functions for static analysis.
# The parameter 'analysis' is a function that takes an 'input' value, returns
# an 'output' value after going through a 'label'.

def propagate_linear(symbols, analysis):
    # Per object, linear sweep of the object to apply 'analysis' once to
    # each basic bloc.
    for o in symbols.object_list():
        value = None
        for label in o:
            if not hasattr(label, 'lines'):
                continue
            value = analysis(label, value)

def propagate_cfg(symbols, analysis):
    # Per object, propagatation by applying 'analysis' once to each basic
    # bloc, following the CFG.
    def follow_cfg(label, done):
        todo = [ (label, None) ]
        while len(todo):
            label, value = todo.pop(0)
            if label in done: continue
            done.add(label)
            value = analysis(label, value)
            if label.flow in ['sub', 'D.sub']:
                # Don't follow function calls
                todo.append((label.nxt, value))
            else:
                todo.extend([(_, value) for _ in label.cfg])
        return done
    done = set([None]) # Only once per basic bloc
    for o in symbols.object_list():
        follow_cfg(o[0], done)
    # Split in objects may be erroneous, local functions may be forgotten
    # cf. trees.s from pari 2.5.5 / clang 700 64-bit
    for label in symbols.blocs:
        if not label in done:
            follow_cfg(label, done)

def propagate_cfg_merge(symbols, analysis, merge=None):
    # Per object, propagatation by applying 'analysis' to each basic
    # bloc, following the CFG, and detecting if the value has changed.
    # 'merge' is used to merge values from different branches
    def follow_cfg(label, done):
        todo = [ (label, None) ]
        cnt = {} # count, to avoid infinite loops
        while len(todo):
            label, value = todo.pop(0)
            if label is None: continue
            if label in done:
                if merge is None:
                    log.error("%s: %s %s", label, done[label], value)
                    # No 'merge' function :-(
                    continue
                value = merge(value, done[label])
                if value == done[label]:
                    continue
                if not label in cnt: cnt[label] = 0
                cnt[label] += 1
                if cnt[label] > 20:
                    # Too many loops/unrolls
                    # We should return 'top' but instead we exit
                    log.warn("%s takes too many passes", label)
                    continue
            done[label] = value
            value = analysis(label, value)
            if label.flow in ['sub', 'D.sub']:
                # Don't follow function calls
                todo.append((label.nxt, value))
            else:
                todo.extend([(_, value) for _ in label.cfg])
    done = {} # input value for each label
    for o in symbols.object_list():
        follow_cfg(o[0], done)
    for label in symbols.blocs:
        if not label in done:
            follow_cfg(label, done)
