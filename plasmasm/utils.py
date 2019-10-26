# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
def digraph_sanitize_label_name(label_name):
    if type(label_name) == str:
        return label_name. \
                    replace('.','_dot_'). \
                    replace('@','_at_'). \
                    replace('$','_dollar_'). \
                    replace('-','_minus'). \
                    replace('+','_plus_')
    return label_name

def digraph_add_arrows(label, dst, arrow_types):
    out = ''
    for t in arrow_types:
        for d in dst[t]:
            out += '%s -> %s [ label = "%s" ];\n'%(
                digraph_sanitize_label_name(label.name),
                digraph_sanitize_label_name(d.name),
                t)
    return out
            
def digraph_generate(labels, arrows='FUNC', flow=False):
    out = 'digraph asm_graph {\n'
    out += 'node [ shape = "box" ];'
    for label in labels:
        if getattr(label, 'bind', None) == 'file': continue
        out += '%s [\n'%digraph_sanitize_label_name(label.name)
        out += 'label = <<TABLE BORDER="0" CELLBORDER="0" CELLPADDING="0" CELLSPACING="0">'         
        out += '<TR><TD BGCOLOR="yellow">%s</TD></TR>\n' % label.name
        if hasattr(label, 'lines') and len(label.lines) > 0:
            out += '<TR><TD ALIGN="left"><FONT face="courier">\n'
            for l in label.lines:
                l = str(l). \
                    replace('"','&quot;'). \
                    replace('>','&gt;'). \
                    replace('<','&lt;'). \
                    expandtabs(10)
                out += '%s<BR ALIGN="left"/>\n' % l
            out += '</FONT></TD></TR>'
        if flow:
            out += '<TR><TD BGCOLOR="red">%s</TD></TR>\n' % label.flow
        out += '</TABLE>>\n];\n' 
    if   arrows == 'BLOC': # Draw separately each chunk of continuous blocs
        arrow_types = ['nxt','step']
    elif arrows == 'FUNC': # Draw separately each function
        arrow_types = ['nxt','jump','step']
    elif arrows == 'CFG': # Draw the possible execution flows
        arrow_types = ['jump','step','call','ret']
    elif arrows == 'ALL': # Draw all arrows
        arrow_types = ['nxt','jump','step','call','ret']
    for label in labels:
        dst = {'nxt':set(),'jump':set(),'step':set(),'call':set(),'ret':set()}
        if label.nxt is not None:
            dst['nxt'].add(label.nxt)
        cfg = set(label.cfg)
        cfg.discard(None)
        if label.flow is not None and label.flow.endswith('sub'):
            dst['call'] = cfg - dst['nxt']
        elif label.flow is not None and label.flow.endswith('ret'):
            dst['ret'] = set([t.label for t, s in label.stack.flatten_once()])
        else:
            dst['step'] = cfg & dst['nxt']
            dst['jump'] = cfg - dst['nxt']
            dst['nxt'] -= cfg
        out += digraph_add_arrows(label, dst, arrow_types)
    out += '}'
    return out
