# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import set, sorted
except ImportError:
    pass

def analyze_PIC(symbols):
    # - create a PIC meta information
    # - store in line.pic the PIC tracking information for that line
    if not hasattr(symbols.arch, 'rw'):
        return
    todo = []
    # ELF gcc 4.x uses "call ...get_pc_thunk..." and "add GOT"
    # Detect start of functions, and which registers stores the PIC offset
    # Usually the PIC register is ebx, but if the function does not need
    #   many registers, then ecx is used as PIC register, and ebx is not
    #   used in the function
    # gcc 4.4.x or 4.6.x use __i686.get_pc_thunk... while
    # gcc 4.8.x or 4.9.x use __x86.get_pc_thunk...
    # For recent gcc, even if not PIC, the executable contains the symbol
    # __x86.get_pc_thunk... but it is not in the CFG
    # More recent gcc event also use thunk.ax or thunk.dx
    gcc4_PIC = False
    for thunk in [
            '__i686.get_pc_thunk.ax',
            '__i686.get_pc_thunk.bx',
            '__i686.get_pc_thunk.cx',
            '__i686.get_pc_thunk.dx',
            '__x86.get_pc_thunk.ax',
            '__x86.get_pc_thunk.bx',
            '__x86.get_pc_thunk.cx',
            '__x86.get_pc_thunk.dx',
        ]:
        if thunk in symbols.symbols_byname:
            thunk = symbols.symbols_byname[thunk]
            for bloc in symbols.blocs:
                if thunk in bloc.cfg:
                    gcc4_PIC = True
                    break
            if gcc4_PIC is True:
                break
    if gcc4_PIC:
        pic_type = 'call;add'
        symbols.set_meta(PIC = pic_type)
        for label in symbols.blocs:
            if not label.flow == 'sub': continue
            dst = label.lines[-1].dst
            if not len(dst) == 1 \
            or not '.get_pc_thunk.' in str(dst[0]): continue
            next_label = label.nxt
            if len(next_label.lines) == 0 or next_label.lines[0].opname != 'add':
                raise ValueError("call %s not followed by add GOT, %%%s"%(dst[0], pic_reg))
            pic_reg = next_label.lines[0].rw[0].intersection(next_label.lines[0].rw[1])
            for reg in list(pic_reg):
                if str(reg) in [ 'eip', 'eflags' ]:
                    pic_reg.remove(reg)
            if len(pic_reg) != 1:
                raise ValueError("call %s not followed by add GOT reg"%dst[0])
            pic_reg = list(pic_reg)[0]
            if str(pic_reg) != 'e'+str(dst[0])[-2:]:
                raise ValueError("call %s followed by add GOT, %%%s"%(dst[0],pic_reg))
            # TODO: compute offset of GOT
            todo.append( (next_label, 1, (None, (str(pic_reg),))) )
            # 'label' is the starting block of the function, therefore
            # it should have no PIC information; this is important to
            # deal with tail-call optimization
            todo.append((label, 0, (True,())))
        set_pic_reg(todo)
        return
    # ELF gcc 3.x uses "call Ln" and "Ln: pop reg" and "add GOT"
    # Usually the PIC register is ebx, but if the function does not need
    #   many registers, then ecx is used as PIC register, and ebx is not
    #   used in the function
    # 
    # clang on MacOSX uses "call Ln$pb" and "Ln$pb: pop reg"
    #   and aftwerwards may store this value in the stack (in [ebp-offset],
    #   or in [esp+offset] when using -fomit-frame-pointer)
    #   Moreover, the value that is stored in the PIC register/stack is
    #   not the PIC offset itself: the label Ln$pb needs to be substracted
    #   to this value
    for label in symbols.blocs:
        # Do we have a 'call' to the instruction following the call?
        if not label.flow in ['sub', 'PIC']: continue
        dst = label.lines[-1].dst
        next_label = label.nxt
        if next_label is None: continue
        if getattr(next_label, 'type', None) == 'endofsymbol':
            # Some tail-call optimization may be be made across object files, 
            # which makes it impossible to detect that a function never returns
            # Non-regression: whoami.o from coreutils 8.24 / clang 600
            continue
        if not hasattr(next_label, 'lines'):
            raise ValueError("'%s'=>%r with no lines"%(label, next_label))
        while next_label is not None and len(next_label.lines) == 0: next_label = next_label.nxt
        if next_label is None: continue
        if dst != [next_label]: continue
        # Is the next instruction a 'pop reg'?
        if next_label.lines[0].opname != 'pop':
            continue
        pic_reg = [ _ for _ in next_label.lines[0].rw[1] if not str(_) in [ 'esp',  'eip', 'eflags' ] ]
        if len(pic_reg) != 1:
            raise ValueError("call %s not followed by popl reg"%next_label)
        pic_reg = pic_reg[0]
        # Test for gcc 3.x
        if len(next_label.lines) >= 2 \
        and next_label.lines[1].opname == 'add' \
        and pic_reg in next_label.lines[1].rw[0] \
        and '_GLOBAL_OFFSET_TABLE_' in next_label.lines[1].api_arg_txt(1):
            pic_type = 'call;pop;add'
            symbols.set_meta(PIC = pic_type)
            todo.append( (next_label, 2, (None, (str(pic_reg),))) )
        # Test for clang
        else:
            pic_type = 'call;pop'
            symbols.set_meta(PIC = pic_type)
            todo.append( (next_label, 1, (next_label, (str(pic_reg),))) )
        # 'label' is the starting block of the function, therefore
        # it should have no PIC information; this is important to
        # deal with tail-call optimization
        todo.append((label, 0, (True,())))
        # Rename CFG flow type
        label.flow = 'PIC'
        label.lines[-1].flow = 'PIC'
    set_pic_reg(todo)
    meta = symbols.get_meta()
    if meta.get('compiler', None) == 'clang' and meta['container'] == 'Mach-O':
        symbols.set_meta(PIC = 'call;pop')
        return
    if 'PIC' in meta:
        return
    if '_GLOBAL_OFFSET_TABLE_' in symbols.symbols_byname:
        symbols.set_meta(PIC = 'unknown')
        return
    # gcc 4.9.2 64-bit can generate exactly the same binary when compiled with
    #   or without -PIC, so we need to generate PIC compatible obfuscations
    #   for all object files, unless they are not PIC compatible
    if meta.get('compiler', None) == 'gcc' \
            and ' 4.' in meta['ident'] \
            and symbols.arch.CPU == 'X64':
        if meta.get('relocatable', False):
            from elfesteem import elf
            for section, (_, relocs) in symbols.streams.items():
                for r_type, data in relocs.values():
                    assert r_type[0] == 'ELF'
                    assert r_type[1] == elf.EM_X86_64
                    # This list of invalid relocations is from binutils / bfd
                    if elf.constants['R']['X86_64'][r_type[2]] in (
                            '8', '16', '32', '32S'):
                        # Not PIC
                        return
        symbols.set_meta(PIC = 'gcc4-m64')
        return

def update_pic(l, pic):
    # x86 specific, but it should be generalized
    pic_list = pic[1]
    if l.flow in ['sub', 'D.sub']:
        # During a function call, some registers may be overwritten,
        # but edi, esi, ebx, ebp and esp are kept.
        pic_list = [ _ for _ in pic_list
            if 'edi' in _
            or 'esi' in _
            or 'ebx' in _
            or 'ebp' in _
            or 'esp' in _]
    else:
        # Delete overwritten registers from pic_list
        # and references (to esp or ebp) if these registers are written
        # Not applied for 'call', because 'call' modifies esp, but it is
        # restored after returning from the call
        for w in l.rw[1]:
            w = str(w)
            pic_list = [ _ for _ in pic_list if not w in str(_) ]
    if l.opname == 'mov':
        # Add places where the PIC value is stored
        read = str(l.api_arg_txt(1))
        written = str(l.api_arg_txt(0))
        if written in pic_list:
            # Erased
            pic_list.remove(written)
        if read in pic_list:
            # Copied
            pic_list.append(written)
    return (pic[0], tuple(sorted(pic_list)))

from plasmasm.constants import P2Align
def set_pic_reg(todo):
    # 'todo' is a list of blocs where PIC register needs to be computed
    # of the form [ (label, start, (pic_label, pic_list)) ]
    # 'label' is the bloc label
    # 'start' is the idx of the first line where to set the PIC attribute
    # 'pic_label' is None or the label used as offset for PIC computation
    # 'pic_list' is a tuple of places containing the PIC offset
    done = {}
    blocs = ()
    while True:
        if len(todo) == 0:
            # When all 'todo' blocs have been analyzed, we can deduce that
            # all other blocs have no PIC data. This needs to be enforced,
            # e.g. when a bloc is a target of a jmp with PIC data and a jmp
            # without PIC data, this target should have no PIC data
            for _ in blocs:
                if _ in done: continue
                if len(_.lines) == 0: continue
                # Not executable bloc
                if not hasattr(_.lines[0], 'rw'): continue
                # Padding or alignment
                if isinstance(_.lines[0], P2Align): continue
                if getattr(_, 'type', None) == 'padding': continue
                # Data bloc that may be reached (the CFG may be incomplete)
                todo.append((_, 0, (False, ())))
        if len(todo) == 0:
            break
        label, start, pic = todo.pop(0)
        if label is None: continue
        blocs = label.symbols.blocs
        if not label in blocs: continue
        if label in done:
            prev_pic = done[label]
            # The pic_label of l should be the same
            if pic[0] is True or prev_pic[0] is True:
                # we are in the start of the function
                # we don't erase the pic tracking below call;pop
                continue
            if not pic[0] in [ False, prev_pic[0] ]:
                raise ValueError('PIC label should stay identical in a function. in %s, %s != %s' % (label, pic[0], prev_pic[0]))
            # The pic_list of l should be included in pic_list
            # In other words, when a label is reached both through a jump
            # rather than through the normal flow, the PIC register may have
            # been overwritten
            pic = (pic[0], tuple(sorted(set(pic[1]).intersection(set(prev_pic[1])))))
            if prev_pic == pic: continue
        done[label] = pic
        # TODO: exchange analysis of last lines when there is a delay slot
        for l in label.lines[start:]:
            l.pic = pic
            pic = update_pic(l, pic)
        if label.flow in ['sub', 'D.sub']:
            # We could propagate PIC status through function calls,
            # (if there is not external symbol and if we update esp)
            # but we don't want to
            todo.append((label.nxt, 0, pic))
        else:
            # Most jmp stay in the function, and keep the PIC register
            # However, tail-call optimization replaces a call ret by a jmp
            todo.extend([(_, 0, pic) for _ in label.cfg])
    for label in blocs:
        # Delete pic field when there is no PIC info
        for l in label.lines:
            if not hasattr(l, 'pic'):
                continue
            if l.pic[1] == (): del l.pic
