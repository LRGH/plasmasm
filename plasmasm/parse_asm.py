# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
from plasmasm.symbols import Line, section_type, comm_symbol_section
from plasmasm.constants import ConstantStr, ConstantZero, P2Align
from plasmasm.constants import Constant1Byte, Constant2Byte, Constant4Byte, Constant8Byte
from plasmasm.constants import ConstantUleb128, ConstantSleb128
from plasmasm.symbols import should_return, section_for_type
try:
    from plasmasm.python.compatibility import set, reversed, sorted
except ImportError:
    pass
import re

import logging
log = logging.getLogger("plasmasm")

#NON_REGRESSION_FOUND = True # Define this variable to avoid raising errors

class Instruction(Line):
    __slots__ = ('line', 'opname', 'operands')
    CPU = None
    def __init__(self, symbols):
        Line.__init__(self, symbols)
    def from_txt(self, line):
        if line.startswith('\t'):
            line = line[1:]
        self.line = line
        r = re.match(r'\s*(\S+)\s*(.*)', line)
        if r:
            self.opname = r.groups()[0]
            self.operands = [ s.strip(' ') for s in r.groups()[1].split(',') ]
        return self
    def txt(self, asm_format=None):
        return self.line
    def set_asm_format(self, asm_format):
        pass
    set_asm_format = classmethod(set_asm_format)
    asm_format = None
    # Stubs... TODO
    rw = (set(), set())

constant_classes = {
    'byte' : Constant1Byte,
    'value': Constant2Byte,
    'word' : Constant2Byte,
    'short': Constant2Byte,
    'long' : Constant4Byte,
    'quad' : Constant8Byte,
    'uleb128' : ConstantUleb128,
    'sleb128' : ConstantSleb128,
    # TODO - invalid guesses below
    'uahalf' : Constant2Byte,
    'uaword' : Constant4Byte,
    }
binding_keywords = {
    'local' : 'local',
    'globl' : 'globl',
    'global': 'globl',
    'weak'  : 'weak',
    }

class current_blocs(object):
    __slots__ = ('s', 'b', 'c', 'section')
    def __init__(self, symbols):
        self.s = symbols
        self.b = {} # List of blocs, per section
        self.section = None # Current section
    def new(self, **props):
        label = self.s.find_symbol(section = self.section, **props)
        label.insert_bloc()
        if props.get('bind',None) != 'p2align' \
                and 'text' == section_type(self.section) \
                and self.section in self.b:
            self.b[self.section].set_nxt(label)
            self.b[self.section].set_cfg([label])
        self.b[self.section] = label
    def addline(self, line, **props):
        if self.section.startswith('.debug'):
            return
        if not self.section in self.b:
            self.b[self.section] = self.s.find_symbol(section = self.section, **props)
            self.b[self.section].insert_bloc()
        self.b[self.section].addline(line)
    def set_data_props(self, **data):
        label = self.b[self.section]
        data.update(getattr(label, 'data', {}))
        if data != {}:
            setattr(label, 'data', data)

def parse_asm_file(symbols, txt):
    txt = str(txt.decode('latin1')) # Working with python >= 2.3
    bloc = current_blocs(symbols)
    # Local labels parsing is managed in a specific data structure
    # https://sourceware.org/binutils/docs-2.18/as/Symbol-Names.html
    symbols.set_meta(local_labels = {})
    symbol_type = {}
    symbol_bind = {}
    symbol_size = {}
    cur_align = {}
    cur_proc = {}
    in_function = False
    # - We parse the file line by line, and we build basic blocs
    # - The end of a basic bloc is either caused by a label or by an
    #   instructions having an impact on the CFG
    # - In the latter case, a "virtual" numeric label is created
    lines = list(reversed(txt.split("\n"))) # reverse, to be able to pop/push
    idx = -1
    while len(lines):
        line = lines.pop()
        if line.endswith('\r'): line = line[:-1] # e.g. mingw on Windows
        idx += 1
        #comment
        if re.match(r'\s*;\S*', line):
            continue
        if re.match(r'\s*//\S*', line):
            continue
        if re.match(r'\s*!\S*', line):
            continue
        if re.match(r'\s*#\S*', line):
            continue
        #comments put by MacOS X clang compiler
        r = re.match(r'([^"]*?)\s*(##|# NOREX|# TAILCALL)', line)
        if r:
            line = r.groups()[0]
        #empty
        if re.match(r'\s*$', line):
            continue
        #label
        r = re.match(r'\s*(\S+)\s*:(.*)', line)
        if r:
            symbol = r.groups()[0]
            lines.append(r.groups()[1])
            #labels to forget
            if      re.match(r'\.LL?FB\d+', symbol):
                in_function = True
                bloc.set_data_props(LFB = symbol)
                continue
            if      re.match(r'\.LL?FE\d+', symbol) or \
                    re.match(r'\.Lfe\d+', symbol):
                in_function = False
                continue
            if      re.match(r'\.LL?CFI\d+', symbol) or \
                    re.match(r'\.LL?VL\d+', symbol) or \
                    re.match(r'\.LL?BB\d+', symbol) or \
                    re.match(r'\.LL?BE\d+', symbol) or \
                    re.match(r'\.LL?LST\d+', symbol) or \
                    re.match(r'\.LL?ASF\d+', symbol) or \
                    re.match(r'\.LL?e?text\d+', symbol) or \
                    re.match(r'\.LL?debug_[a-z]+\d+', symbol):
                # Symbols added for debugguer
                continue
            if symbol_type.get(symbol,'') == 'function':
                in_function = True
            if re.match(r'[0-9]+', symbol):
                # local labels: they are numeric labels, and the syntax nb or nf
                # is used to make reference to them
                # https://sourceware.org/binutils/docs-2.18/as/Symbol-Names.html
                # explains how local labels are converted by GNU as
                # we use the same technique
                local = symbols.meta['local_labels']
                if not symbol in local: local[symbol] = 0
                local[symbol] += 1
                symbol = '.L%s\02%d'%(symbol,local[symbol])
            props = { 'name': symbol }
            if symbol in symbol_type: props['type'] = symbol_type[symbol]
            if symbol in symbol_bind: props['bind'] = symbol_bind[symbol]
            if symbol in symbol_size: props['size'] = symbol_size[symbol]
            if bloc.section in cur_align: props['align'] = cur_align[bloc.section]
            if bloc.section in cur_proc: props['proc']  = cur_proc[bloc.section]
            bloc.new(**props)
            continue
        #dollar label
        r = re.match(r'\s*([0-9]+)\s*\$', line)
        if r:
            # https://sourceware.org/binutils/docs-2.18/as/Symbol-Names.html
            symbol = r.groups()[0]
            symbol = '.L%s\01%d'%(symbol,len(symbols.symbols))
            raise ValueError("Dollar local label %r; not implemented" % symbol)
        #affect symbol
        r = re.match(r'\s*(\S+)\s+=\s+(\S+)\s*', line)
        if r:
            # seen with clang, rewritten into a .set directive
            arguments = r.groups()
            if len(arguments) == 2:
                dst = symbols.find_symbol(name = arguments[1])
                props = { 'name': arguments[0] }
                if hasattr(dst, 'section'):
                    NON_REGRESSION_FOUND
                    props['section'] = dst.section
                props['data'] = { 'set': dst }
                if props['name'] in symbol_bind:
                    NON_REGRESSION_FOUND
                    props['bind'] = symbol_bind[props['name']]
                symbols.find_symbol(**props)
                continue
        #directive
        if re.match(r'\s*\.', line):
            r =  re.match(r'\s*\.(\S+)\s*(.*)', line)
            directive = r.groups()[0]
            rest = r.groups()[1]
            #sections
            if directive in ['section', 'text', 'data', 'bss']:
                if directive == 'section':
                    if rest.startswith('__TEXT'):
                        symbols.set_meta(container = 'Mach-O')
                        symbols.set_meta(compiler = "clang")
                    if rest.startswith('__DATA'):
                        symbols.set_meta(container = 'Mach-O')
                        symbols.set_meta(compiler = "clang")
                    bloc.section = symbols.sections.parse_attributes(rest)
                else:
                    bloc.section = '.%s' % directive
                cur_align.pop(bloc.section, None)
                continue
            #other attributes
            if directive in ['align']:
                arguments = re.split(r",\W*", rest)
                cur_align[bloc.section] = int(arguments[0])
                if symbols.meta.get('compiler') == 'clang':
                    cur_align[bloc.section] = 1<<cur_align[bloc.section]
                if len(arguments) > 1:
                    cur_align[bloc.section] = rest
                # fill = arguments[1]
                # max = arguments[2]
                continue
            if directive in binding_keywords.keys():
                symbol_bind[rest] = binding_keywords[directive]
                continue
            if directive in ['size']:
                r =  re.match(r'([^,]+),\s*(.+)', rest)
                symbol = r.groups()[0]
                size   = r.groups()[1]
                if 'text' == section_type(bloc.section) and size != ".-%s"%symbol:
                    rsz = re.match(r'\.Lfe\d+-%s'%symbol, size)
                    if not rsz:
                        log.warning("Size of %r is %r instead of '.-%s'", symbol, size, symbol)
                cur_proc.pop(bloc.section, None)
                if 'text' == section_type(bloc.section):
                    in_function = False
                    continue
                #symbol_size[symbol] = int(size)
                continue
            if directive in ['type']:
                symbols.set_meta(container = 'ELF')
                r =  re.match(r'([^,]+),\s*(.+)', rest)
                symbol = r.groups()[0]
                type_s = r.groups()[1]
                if   type_s[0] in ['@', '#', '%']:
                    if type_s[0] == '#':
                        symbols.set_meta(format = 'sparc')
                    type_s = type_s[1:]
                elif type_s[0] == '"' and type_s[-1] == '"':
                    NON_REGRESSION_FOUND
                    type_s = type_s[1:-1]
                else:
                    log.error("line %r found in section %s", line, bloc.section)
                if type_s in section_for_type \
                    and section_type(bloc.section) in section_for_type[type_s]:
                    if symbol in symbol_type and symbol_type[symbol] != type_s:
                        log.warning("Symbol %s has type %s, not set to %s",
                            symbol, symbol_type[symbol], type_s)
                    else:
                        symbol_type[symbol] = type_s
                else:
                    log.warning("line %r found in section %s of type %s", line, bloc.section, section_type(bloc.section))
                if not symbol in symbol_bind:
                    symbol_bind[symbol] = 'local'
                continue
            #data
            if directive in ['ascii', 'asciz', 'string', 'ustring']:
                value = line[line.find(r'"')+1:line.rfind(r'"')]
                # Decode GNU as representation of strings into python string
                value = value.replace(r'\\', r'\B')
                for v in range(0,4*8*8):
                    value = value.replace('\\%03o'%v, chr(v))
                for v in range(0,8*8):
                    value = value.replace('\\%02o'%v, chr(v))
                for v in range(0,8):
                    value = value.replace('\\%01o'%v, chr(v))
                value = value.replace(r'\b', '\b')
                value = value.replace(r'\t', '\t')
                value = value.replace(r'\n', '\n')
                value = value.replace(r'\f', '\f')
                value = value.replace(r'\r', '\r')
                value = value.replace(r'\"', '"')
                value = value.replace(r'\B', '\\')
                if directive in ['asciz', 'string', 'ustring']:
                    value+="\x00"
                if directive == 'ustring':
                    NON_REGRESSION_FOUND
                    value = "".join(map(lambda x:x+'\x00', value))
                # Convert to bytes, python2 and python3
                import struct
                value = struct.pack("B"*len(value),*[ord(_) for _ in value])
                data = ConstantStr(symbols, value, directive)
                if      bloc.section in bloc.b and \
                        bloc.section in cur_align and \
                        len(bloc.b[bloc.section].lines) > 0:
                    NON_REGRESSION_FOUND
                    bloc.new(align = cur_align[bloc.section])
                bloc.addline(data)
                cur_align.pop(bloc.section, None)
                continue
            if directive in constant_classes.keys():
                value = [ ]
                for v in re.split(r",\W*", rest):
                    try:
                        v = int(v, 0)
                    except ValueError:
                        pass
                    value.append(v)
                data = constant_classes[directive](symbols, value)
                if      bloc.section in bloc.b and \
                        bloc.section in cur_align and \
                        len(bloc.b[bloc.section].lines) > 0:
                    bloc.new(align = cur_align[bloc.section])
                bloc.addline(data)
                cur_align.pop(bloc.section, None)
                continue
            if directive in [ 'zero', 'space' ]:
                r =  re.match(r'([^,]+),\s*([^,]+)', rest)
                if r is None:
                    data = ConstantZero(symbols, int(rest))
                else:
                    # .space second argument is the padding value
                    r = r.groups()
                    size    = r[0]
                    padding = r[1]
                    data = Constant1Byte(symbols, [int(padding)]*int(size))
                bloc.addline(data)
                cur_align.pop(bloc.section, None)
                continue
            if directive in ['comm', 'common', 'lcomm', 'tls_common']:
                r =  re.match(r'([^,]+),\s*([^,]+),\s*(.+)', rest)
                if r is None:
                    r =  re.match(r'([^,]+),\s*(.+)\s*# (\d+)', rest)
                    symbols.set_meta(compiler = "mingw")
                if r is None:
                    r =  re.match(r'([^,]+),\s*(.+)', rest)
                r = r.groups()
                symbol = r[0]
                size   = int(r[1])
                if len(r) == 3:
                    align  = int(r[2])
                    if symbols.meta.get('compiler') == 'clang':
                        align = 1<<align
                else: # mingw
                    align  = None
                bind = symbol_bind.get(symbol, 'globl')
                props = { 'section':comm_symbol_section,
                          'bind':bind, 'size':size, 'align':align }
                if directive == 'tls_common':
                    NON_REGRESSION_FOUND
                    props['type'] = 'tls_object'
                l = symbols.find_symbol(name = symbol, **props)
                l.insert_bloc()
                data = ConstantZero(symbols, size)
                l.addline(data)
                continue
            if directive == 'zerofill':
                rest = re.split(",", rest)
                if not rest[0] == '__DATA':
                    raise ValueError("zerofill not in __DATA but %s"%rest[0])
                section = "%s,%s" % (rest[0], rest[1])
                symbol  = rest[2]
                bind    = symbol_bind.get(symbol, 'local')
                size    = int(rest[3])
                align   = int(rest[4])
                # Note that the actual alignment is 2**align
                align   = 1<<align
                props = { 'section':section,
                          'bind':bind, 'size':size, 'align':align }
                symbols.sections.set_asm_name(section, section+",(zerofill)")
                l = symbols.find_symbol(name = symbol, **props)
                l.insert_bloc()
                data = ConstantZero(symbols, props['size'])
                l.addline(data)
                continue
            #other
            if directive == 'intel_syntax':
                if rest == '':         format = 'intel_syntax'
                if rest == 'noprefix': format = 'intel_syntax noprefix'
                symbols.set_meta(format = format)
                continue
            if directive == 'file':
                if rest[0] == '"' and rest[-1] == '"':
                    rest = rest[1:-1]
                elif re.match(r'\d+ ".+"', rest):
                    # Info added for debugguer
                    continue
                else:
                    log.error("%s name %r is not between quotes", directive, rest)
                symbols.find_symbol(name = rest, bind = "file")
                continue
            if directive == 'ident':
                if rest[0] == '"' and rest[-1] == '"':
                    rest = rest[1:-1]
                else:
                    log.error("%s name %r is not between quotes", directive, rest)
                symbols.set_meta(ident = rest)
                if rest.startswith("GCC: ") and symbols.get_meta().get('compiler', None) != 'mingw':
                    symbols.set_meta(compiler = 'gcc')
                continue
            if directive == 'def':
                symbols.set_meta(container = 'PE')
                symbols.set_meta(compiler = "mingw")
                r =  re.match(r'([^;]+);\s*(.+);\t.endef', rest)
                symbol = r.groups()[0]
                param  = r.groups()[1]
                param  = dict([x.split('\t') for x in param.split(';\t')])
                if '.type' in param and param['.type'] == '32':
                    symbol_type[symbol] = 'function'
                if '.scl' in param and param['.scl'] == '2':
                    symbol_bind[symbol] = 'globl'
                if '.scl' in param and param['.scl'] == '3':
                    symbol_bind[symbol] = 'local'
                props = { 'name': symbol }
                if symbol in symbol_type: props['type'] = symbol_type[symbol]
                if symbol in symbol_bind: props['bind'] = symbol_bind[symbol]
                if symbol in symbol_size: props['size'] = symbol_size[symbol]
                symbols.find_symbol(**props)
                continue
            if directive == 'proc':
                cur_proc[bloc.section] = rest
                # SPARC only, unused
                continue
            if directive == 'loc':
                # Helper for debugging
                continue
            if directive == 'indirect_symbol':
                # Mach-O specific
                bloc.set_data_props(**{ directive: rest })
                continue
            if directive == 'subsections_via_symbols':
                symbols.set_meta(compiler = "clang")
                continue
            if directive == 'macosx_version_min':
                # Older versions of clang, e.g. clang-900
                symbols.set_meta(compiler = "clang")
                r =  re.match(r'([0-9]+),\s*([0-9]+)', rest)
                if r is not None:
                    r = r.groups()
                    osmaj = int(r[0])
                    osmin = int(r[1])
                    symbols.set_meta(os_minversion = (osmaj, osmin, 'vermin'))
                continue
            if directive == 'build_version':
                # Recent versions of clang, e.g. clang-1001
                symbols.set_meta(compiler = "clang")
                r =  re.match(r'macos, ([0-9]+),\s*([0-9]+)', rest)
                if r is not None:
                    r = r.groups()
                    osmaj = int(r[0])
                    osmin = int(r[1])
                    symbols.set_meta(os_minversion = (osmaj, osmin, 'bldver'))
                continue
            if directive in ('data_region','end_data_region'):
                # Recent versions of clang, e.g. clang-801
                symbols.set_meta(compiler = "clang")
                continue
            if directive in ['hidden', 'protected', 'internal', 'private_extern', 'weak_def_can_be_hidden']:
                symbols.find_symbol(name = rest)
                symbols.setattr(name = rest, visibility = directive)
                continue
            if directive.startswith('cfi_'):
                if directive in ['cfi_personality', 'cfi_lsda']:
                    bloc.set_data_props(**{ directive: rest })
                if directive in ['cfi_sections']:
                    symbols.set_meta(**{ directive: rest })
                symbols.set_meta(cfi = 'yes')
                continue
            if directive == 'p2align':
                if not in_function:
                    props = { 'bind': 'p2align', 'type': 'padding' }
                    if bloc.section in cur_align:
                        props['align'] = cur_align[bloc.section]
                        cur_align.pop(bloc.section, None)
                    bloc.new(**props)
                line = ".p2align %s" % rest
                data = P2Align(symbols, line)
                bloc.addline(data)
                continue
            if directive == 'symver':
                # Syntax: weakref symbol, alias
                arguments = re.split(r",\W*", rest)
                if len(arguments) == 2:
                    dst = symbols.find_symbol(name = arguments[1])
                    props = { 'name': arguments[0] }
                    props['data'] = { 'symver': dst }
                    symbols.find_symbol(**props)
                continue
            if directive == 'weakref':
                # Syntax: weakref alias, symbol
                # Renames alias as symbol, that will be its external name
                arguments = re.split(r",\W*", rest)
                if len(arguments) == 2:
                    dst = symbols.find_symbol(name = arguments[0])
                    props = { 'name': arguments[1] }
                    props['data'] = { 'weakref': dst }
                    symbols.find_symbol(**props)
                continue
            if directive == 'set':
                # Syntax: set symbol, expression
                # Defines a new symbol, with an expression
                # Same symbol section, address and type
                # binding and size can be different
                arguments = re.split(r",\W*", rest)
                if len(arguments) == 2:
                    dst = symbols.find_symbol(name = arguments[1])
                    props = { 'name': arguments[0] }
                    props['data'] = { 'set': dst }
                    if props['name'] in symbol_bind:
                        props['bind'] = symbol_bind[props['name']]
                    symbols.find_symbol(**props)
                    continue
            if directive == 'linkonce':
                # The current section has a linkonce directive
                # Only for PE
                NON_REGRESSION_FOUND
                symbols.sections.add_attribute(bloc.section,
                    "\n\t.%s\t%s" % (directive, rest))
                continue
            raise ValueError("unknown directive %s"%str(directive))
        #code
        if ';' in line:
            lines.append(line[line.find(';')+1:])
            line = line[:line.find(';')]
        data = Instruction(symbols).from_txt(line)
        bloc.addline(data)
        cur_align.pop(bloc.section, None)
    for name in symbol_bind:
        if not name in symbols.symbols_byname:
            symbols.find_symbol(name=name, bind=symbol_bind[name])
    if not 'compiler' in symbols.meta:
        # Heuristics to choose between gcc, mingw, clang
        if not len(symbols.symbols):
            symbols.set_meta(compiler = 'gcc')
        else:
            for label in symbols.symbols:
                if getattr(label, 'bind', None) != 'file' and \
                        not label.name.startswith('_'):
                    symbols.set_meta(compiler = 'gcc')
                    break
            else:
                symbols.set_meta(compiler = 'mingw')

def parse_asm_lines(symbols):
    if getattr(symbols, 'arch', None) is None:
        del symbols.meta['local_labels']
        return
    for _ in symbols.meta['local_labels']:
        symbols.meta['local_labels'][_] = 0
    if not 'format' in symbols.get_meta():
        symbols.set_meta(format = symbols.arch.asm_format)
    # Parse all lines
    for label in symbols.symbols:
        if label.is_named() and '\02' in label.name:
            local_name = label.name[2:label.name.index('\02')]
            local_idx = int(label.name[1+label.name.index('\02'):])
            symbols.meta['local_labels'][local_name] += 1
            if local_idx != symbols.meta['local_labels'][local_name]:
                raise ValueError('Error in local label', label, symbols.meta['local_labels'])
        if not hasattr(label, 'lines'):
            continue
        lines = []
        while len(label.lines):
            line = label.lines.pop(0)
            if isinstance(line, Instruction):
                txt = str(line)
                if txt in [ 'rep', ' rep', 'repnz', 'repz', 'repe', 'lock' ]:
                    # Special case: gcc can output lines with only 'rep'
                    # then we need to merge it with the next line
                    txt = '%s %s' % (txt, label.lines[0])
                    label.lines[0] = Instruction(symbols).from_txt(txt)
                    continue
                line = symbols.arch(symbols).from_txt(txt)
            elif hasattr(line, 'numeric'):
                # Detect when a numeric constant is a label
                for i, v in enumerate(line.value):
                    props = { 'name': v }
                    if type(v) == str:
                        if "+" in v:
                            r = re.match(r'(\S+)\+(\d+)', v)
                            if r:
                                r=r.groups()
                                base = symbols.find_symbol(name = r[0])
                                if hasattr(base, 'section'):
                                    props['section'] = base.section
                                offs=int(r[1])
                                # TODO: enforce offset difference between the
                                # symbols 'base' and 'v'
                        elif "-" in v:
                            pass
                        line.value[i] = symbols.find_symbol(**props)
            line.do_post_init()
            lines.append(line)
        label.setlines(lines)
    # Split the bloc in basic blocs
    blocs = [ label for label in symbols.symbols if hasattr(label, 'lines') ]
    blocs.reverse()
    while len(blocs):
        label = blocs.pop()
        for idx, line in enumerate(label.lines):
            if line.flow in [ None, False ]:
                continue
            flow = line.flow
            if flow.startswith('D.'):
                idx += 1
                flow = flow.strip('D.')
            if flow == 'sub' and not should_return(line.dst, emulate_stack=False):
                label.set_nxt(None, force=True)
                label.set_cfg([])
            if flow == 'sub' and \
                label.nxt is not None and \
                len(getattr(label.nxt, 'lines', [])) > 0 and \
                hasattr(label.nxt.lines[0], 'value'):
                # When parsing asm, we don't compute the return stack,
                # therefore we don't detect when a function does not
                # return, e.g. when it ends with a call to exit
                # This made impossible for example the parsing of djpeg.s
                # compiled with clang
                # The hint is that when the call is followed by data, then
                # it does not return
                label.set_nxt(None, force=True)
                label.set_cfg([])
            if idx+1 == len(label.lines) and flow in ['ret','jmp']:
                label_new = label.nxt
            else:
                label_new = symbols.find_symbol(section = label.section)
                label_new.insert_bloc(label = label, after = True)
                label.split(label_new, idx+1)
                blocs.append(label_new)
            label.set_flow(line.flow)
            if flow in ['sub','jcc']:
                label.set_cfg(line.dst+[label_new])
            if flow in ['ret','jmp']:
                label.set_nxt(None, force=True)
                label.set_cfg(line.dst)
            if line.flow.startswith('D.'):
                if idx == len(label.lines):
                    raise ValueError("Delayed branching is at the end of a basic bloc")
                if not label.lines[idx].flow in [ None, False ]:
                    # TODO
                    raise ValueError("Delayed slot is not a regular instruction")
            break
        if len(label.lines) > 0 and label.lines[-1].flow == False and \
                (label.nxt is None or hasattr(label.nxt, 'bind')):
            label.set_nxt(None, force=True)
            label.set_cfg([])
    # Create a 'globl' binding for external symbols
    for label in symbols.symbols:
        for f in label.flags:
            if hasattr(label, f):
                break
        else:
            symbols.setattr(name = label.name, bind = 'globl')
    del symbols.meta['local_labels']

def guess_asm_cpu(symbols):
    from plasmasm import arch
    cpu_opcodes = { }
    for cpu in arch.CPUs:
        cpu_opcodes.update(arch.import_cpu_meta(cpu).opcodes)
    opcodes = set()
    operands = set()
    for label in symbols.symbols:
        for line in getattr(label, 'lines', []):
            if not isinstance(line, Instruction):
                continue
            opcodes.add(line.opname)
            operands.update(line.operands)
    if len(operands) == 0:
        return None
    delta = []
    for cpu in cpu_opcodes:
        delta.append( (len(opcodes.difference(cpu_opcodes[cpu])), cpu) )
    delta.sort()
    cpu = delta[0][1]
    if delta[0][0] == 0 and delta[1][0] != 0:
        return cpu
    if delta[0][0] == delta[1][0]:
        val = delta[0][0]
        cpu = [x for n, x in delta if n == val]
        # Filter possible cpu by looking at operands
        # Necessary to make the difference between I386 and X64
        cpu_base = set([_ for _ in cpu if not '-' in _])
        cpu_base.update(set([_[:_.find('-')] for _ in cpu if '-' in _]))
        for op in operands:
            if op in ('%g0', '%g1', '%o0'):
                NON_REGRESSION_FOUND
                cpu_base.intersection_update(set(['SPARC']))
            for reg in ['rax', 'rbx', 'rcx', 'rdx',
                        'rbp', 'rsp', 'rsi', 'rdi', 'rip'
                       ] + [ 'r%d'%_ for _ in range(8,16) ]:
                if op in (reg, '%'+reg, '(%'+reg+')'):
                    cpu_base.intersection_update(set(['X64']))
                if '%'+reg in op or '['+reg in op:
                    cpu_base.intersection_update(set(['X64']))
            if op in ('eax', '%eax'):
                cpu_base.intersection_update(set(['X64', 'I386']))
            if len(cpu_base) <= 1: break
        if cpu_base == set(['I386', 'X64']):
            # Sometimes an assembly file generated for 64-bit architecture
            # is also a valid 32-bit assembly; but we need to know which
            # was the target architecture, e.g. obfuscation will be different
            if '.rodata.str1.8' in symbols.sections.asm_name:
                # 32-bit uses .rodata.str1.4
                NON_REGRESSION_FOUND
                cpu_base = set(['X64'])
            else:
                cpu_base = set(['I386'])
        # Get back to full CPU description (with AT&T/Intel syntax)
        def startswith(cpu, cpu_base):
            # str.startswith(tuple) is invalid for python 2.3
            for _ in cpu_base:
                if cpu.startswith(_): return True
            return False
        cpu = [_ for _ in cpu if startswith(_, cpu_base)]
        if len(cpu) == 1:
            return cpu[0]
        if set(cpu) == set(['I386-att', 'I386-intel']):
            if not 'format' in symbols.get_meta():
                return 'I386-att'
            else:
                NON_REGRESSION_FOUND
                return 'I386-intel'
        log.warning("Guessing cpu: %s are matching", cpu)
        return cpu[0]
    diff = opcodes.difference(cpu_opcodes[cpu])
    if len(diff) * 2 > len(opcodes):
        log.warning("Guessing cpu: best guess is %s but too many opcodes are missing", cpu)
        return None
    log.warning("Guessing cpu %s; additional opcodes are %s", cpu, sorted(list(diff)))
    return cpu
