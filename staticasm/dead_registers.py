# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import set, reversed
except ImportError:
    pass

def analyze_dead(symbols):
    marked_blocs = {}
    for label in symbols.blocs:
        set_dead_bloc(label, marked_blocs)

def get_dst(label):
    if len(label.cfg) == 1:
        dst = label.cfg[0]
        if str(dst).endswith('@PLT'):
            dst = label.symbols.find_symbols(name = str(dst)[:-4])[0]
        return dst
    elif label.flow in [ 'sub', 'D.sub', 'PIC' ] and not None in label.cfg:
        # If it a a 'call' then delete label.nxt from the CFG
        bto = [ dst for dst in label.cfg if dst != label.nxt ]
        # But the call might point to the next instruction
        if list(label.cfg).count(label.nxt) > 1:
            bto.append(label.nxt)
        if len(bto) == 1: return bto[0]
    return None

def get_dst_bloc(label):
    dst = get_dst(label)
    seen = set()
    while True:
        if dst is None: return None
        if not hasattr(dst, 'lines'): return None
        if len(dst.lines) > 0: return dst
        if dst in seen:
            # This can happen, e.g. when a bloc
            #   label:
            #     jmp label
            # is modified by 'replace_jmp_pushret'
            # because temporarily it becomes an empty bloc
            # in a loop with itself
            return None
        seen.add(dst)
        dst = get_dst(dst)

def get_dead_bloc(label):
    # The dead registers at the beginning of the bloc may be different
    # of the dead registers of the first line, if there is a delay slot
    if not hasattr(label, 'lines'):
        return None
    elif len(label.lines) == 0:
        return None
    elif not label.flow in [None,False] and label.flow.startswith('D.'):
        if len(label.lines) > 2:
            return label.lines[0].dead
        else:
            # Only two lines, with a delay slot
            return label.lines[1].dead
    elif hasattr(label.lines[0], 'dead'):
        return label.lines[0].dead
    else:
        return None

def set_dead_bloc(label, marked_blocs):
    if label in marked_blocs:
        if marked_blocs[label] == 2: return
        marked_blocs[label] += 1
    else:
        marked_blocs[label] = 1
    # Don't compute dead registers for data blocs or empty blocs
    if len(label.lines) == 0:
        return
    if getattr(label.lines[-1], 'flow', False) == False:
        return
    if getattr(label.lines[0], 'flow', False) == False:
        return
    # If the flow can continue to only one other line, then we compute
    # its dead registers
    nxt_bloc = get_dst_bloc(label)
    if nxt_bloc in label.symbols.bloc_set:
        set_dead_bloc(nxt_bloc, marked_blocs)
    d = get_dead_bloc(nxt_bloc)
    if d is None: d = set()
    # Update dead registers in the bloc
    lines = list(reversed(label.lines))
    if not label.flow in [ None, False ] and label.flow.startswith('D.'):
        # Delayed slot => swap the last lines
        lines[0], lines[1] = lines[1], lines[0]
        # We may want to test if it is a SPARC cpu
        # Annul bit => delay slot not executed unless conditional branch taken
        if label.flow in [ 'D.jmp', 'D.jcc' ]:
            set_dead_reg(lines[0], d)
            d = lines[0].dead
            set_dead_reg(lines[1], d)
            lines[0:2] = []
    for idx, l in enumerate(lines):
        set_dead_reg(l, d)
        set_dead_PIC(lines, idx)
        d = l.dead
        # TODO: take into account the window changes => register renaming
        # rather than having save & restore kill all non-global registers

def set_immutable_line(line, reason=True):
    line.immutable = reason

def set_dead_PIC(lines, idx):
    # In PIC code, some lines should not be separated
    # NB: 'lines' is the bloc in reverse order
    l = lines[idx]
    s = str(l)
    # gcc4.6.3 "call ...get_pc_thunk..." and "add .. GOT"
    if '_GLOBAL_OFFSET_TABLE_' in s or 'get_pc_thunk' in s:
        set_immutable_line(l, reason='PIC:call;add')
    # gcc3.4.6 "call Ln" and "Ln: pop reg"
    if '_GLOBAL_OFFSET_TABLE_' in s \
            and idx+2 == len(lines) \
            and lines[idx+1].opname == 'pop':
            # TODO Check that the previous block is a 'call'
        set_immutable_line(lines[idx+1], reason='PIC:call;pop;add')
    # g++4.6.3 "lea xxx@tlsgd/tlsldm" and "call ___tls_get_addr@PLT"
    if s == 'call      ___tls_get_addr@PLT':
        if idx == 0 \
                and len(lines) > 0 \
                and lines[1].opname == 'lea' \
                and '@tls' in str(lines[1]):
            set_immutable_line(l, reason='TLS')
            set_immutable_line(lines[1], reason='TLS')
        else:
            raise ValueError("Line %r is not following a 'lea xxx@tlsgd' but a %r" % (s, str(lines[1])))

def pic_dead_non_collision(l):
    if not 'PIC' in l.symbols.get_meta(): return
    if not hasattr(l, 'pic'): return
    # For PIC code, even if the PIC register is written,
    # don't consider it as dead
    # The other possibility would have been to modify the PIC
    # register list when the register is dead, but this option
    # is not chosen because we need PIC registers for many
    # obfuscation primitives
    pic = set()
    for reg in l.pic[1]:
        if 'ebp' in reg: pic.add('ebp')
        if 'esp' in reg: pic.add('esp')
        else: pic.add(reg)
    for d_reg in list(l.dead):
        if str(d_reg) in pic:
            l.dead.discard(d_reg)

def set_pic_dead_noc(l, pic):
    l.pic = pic
    pic_dead_non_collision(l)

never_dead = ['MEM','fpu_status','fpu_control']
def set_dead_reg(l, d):
    r, w = l.rw[0], l.rw[1]
    if l.CPU == 'I386' and hasattr(l, 'miasm'):
        from miasmx.expression import expression
        w = set([reg for reg in w if isinstance(reg, expression.ExprId)])
    else:
        w = set([reg for reg in w if not str(reg) in never_dead])
    l.dead = d.union(w).difference(r)
    pic_dead_non_collision(l)

def add_line_update_dead(label, line, pos=None, dead_from=False):
    # NB: this function updates dead registers, but does not update
    # the CFG, even if 'line' is a jmp/jcc/ret/call, because it might
    # be an obscure predicate and the CFG may not correspond to a local
    # analysis of 'line'
    if isinstance(line, str):
        line = label.symbols.arch(label.symbols).from_txt(line)
        line.do_post_init()
    if pos is None: NEVER
    if dead_from == False:
        if pos < len(label.lines):
            dead = label.lines[pos].dead
        else:
            nxt_bloc = get_dst_bloc(label)
            if nxt_bloc is None: dead = set()
            else: dead = get_dead_bloc(nxt_bloc)
        set_dead_reg(line, dead)
    else:
        line.dead = dead_from.dead.copy()
    label.addline(line, pos=pos)
    if len(label.lines) >= 3 and not label.lines[-3].flow in [ None, False ] and label.lines[-3].flow.startswith('D.'):
        # Line added in a delay slot
        label.lines[-3], label.lines[-2] = label.lines[-2], label.lines[-3]
    return line
