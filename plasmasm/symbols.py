# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import set, reversed, sorted
except ImportError:
    pass
import logging
log = logging.getLogger("plasmasm")
console_handler = logging.StreamHandler()
console_handler.setFormatter(logging.Formatter("%(levelname)-5s: %(message)s"))
log.addHandler(console_handler)
log.setLevel(logging.WARN)
logging.addLevelName(9, 'DEBUG_BLOC')
logging.addLevelName(8, 'DEBUG_LINE')

#################################################
# List of possible stacks, used to determines when a call returns
class StackTop(object):
    __slots__ = ('data', 'label')
    def __init__(self, offset, section, prev_label):
        self.data = (offset, section, prev_label)
    def create_label(self, symbols, stack):
        if self.data is None: return False
        offset, section, prev_label = self.data
        self.label = symbols.find_symbol(address = offset, section = section)
        changed = self.label.stack.stack_append(stack)
        self.data = None
        while prev_label.nxt is not None:
            if prev_label.nxt == self.label:
                break
            prev_label = prev_label.nxt
        prev_label.set_nxt(self.label)
        return changed
    def __str__(self):
        if self.data is None: return str(self.label)
        return "%#8x-%s-%s"%self.data
class StackTopVoid(object):
    __slots__ = ()
    def __init__(self):
        pass
    def __str__(self):
        return "<Void>"

class Stack(object):
    __slots__ = ('stacks', 'label')
    def __init__(self, label):
        # This object represents the set of all possible stacks
        # It is a set of pairs of type StackTop and Stack
        self.stacks = []
        self.label = label # Helps for debugging
    def stack_append(self, previous, top=StackTopVoid()):
        # If top is not StackTopVoid it means that we enter in a new
        # subroutine, with 'previous' stack and pushing at the stack
        # top the tuple (offset, section, prev_label)
        # If top is StackTopVoid, the the stack for the current label
        # includes all values of the stack 'previous'; we cannot have
        # self==previous, because later, self may be modified and
        # previous will not; we cannot have self=previous.copy() because
        # every modification of previous should reflect in self.
        stack = (top, previous)
        if stack in self.stacks: return False # Not changed
        self.stacks.append(stack)
        return True # changed
    def emulate_ret(self, symbols):
        # For each possible stack,
        # replace the pair address = (offset, section, prev_label) with a symbol
        # and push the remaining stack on that symbol
        changed = False
        for top, stack in self.flatten_once():
            # create labels when the top is used as a return address
            changed |= top.create_label(symbols, stack)
            # mention that the current label is an ancestor of 'top'
            top.label.graph[1].add(self.label)
            self.label.graph[0].add(top.label)
        return changed
    def flatten_once(self):
        # Outputs the list of all known possible pairs (top, stack)
        stacks = self.stacks[:]
        marked = set()
        out = []
        while len(stacks) > 0:
            top, stack = stacks.pop()
            if isinstance(top, StackTopVoid):
                if not stack in marked:
                    marked.add(stack)
                    for _ in stack.stacks:
                        if not _ in stacks:
                            stacks.append(_)
            else:
                out.append((top, stack))
        return out
    def display(self):
        # display() can use indifferently flatten_recursive() or flatten_loop()
        # _recursive is easier to understand, but the stack object can have a
        # depth more than 1000, which triggers a python exception on too deep
        # recursion
        out = ""
        for idx, stk in enumerate(self.flatten_loop()):
            out += "-- STACK%02d %s\n" % (idx, [str(l) for l in stk])
        return out
    def flatten_loop(self, todo = []):
        # Outputs the list of all known possible stacks
        # Non-recursive variant: stack length may be more than 1000
        todo = [ self ] # stacks where nothing is computed
        seen = [ ]      # stacks where all substacks have been added to todo
        done = {}       # stacks that have been flattened
        while len(todo):
            x = todo.pop()
            # If empty, then we are done
            if len(x.stacks) == 0:
                done[x] = []
                continue
            # If not, explore all substacks,
            # in reversed order, to get the same result as the recursive variant
            for pos, stk in reversed(sorted(x.stacks, key=lambda _: str(_[0]))):
                if not stk in seen and not stk in todo:
                    todo.append(stk)
            seen.append(x)
        while len(seen):
            x = seen.pop()
            # 'x' has substacks, all of them have been done, because
            # they were added to 'seen' after 'x'
            done[x] = []
            for pos, stk in sorted(x.stacks, key=lambda _: str(_[0])):
                # If not in done, it is a recursive stack
                # it is made empty to avoid infinite loops
                stk = done.get(stk, [])
                if stk == []:
                    if not isinstance(pos, StackTopVoid):
                        done[x].append([pos])
                else:
                    if isinstance(pos, StackTopVoid): pos = []
                    else:                             pos = [pos]
                    for s in stk:
                        s = pos + s
                        if not s == [] and not s in done[x]:
                            done[x].append(s)
        return done[self]
    def flatten_recursive(self, marked = None):
        # Outputs the list of all known possible stacks
        if marked is None: marked = set()
        if self in marked: return []
        out = []
        marked.add(self)
        for pos, stk in sorted(self.stacks, key=lambda _: str(_[0])):
            stk = stk.flatten_recursive(marked)
            if stk == []:
                if not isinstance(pos, StackTopVoid):
                    out.append([pos])
            else:
                if isinstance(pos, StackTopVoid):
                    pos = []
                else:
                    pos = [pos]
                for s in stk:
                    out.append(pos+s)
        return out

#################################################
# The symbol table is used the following way:
# - creation: if coming from a binary, the symbols are
#   associated to an offset, which is the address in memory
#   or the offset in the section (for relocatable binaries)
#   If coming from an assembly file, the offsets are the
#   indices of the labels in the file
# - manipulation: when the asm is modified, offsets are invalid,
#   and therefore are disabled
# - output: offsets are re-computed
class Symbol(object):
    flags = ('section', 'type', 'bind', 'visibility', 'align', 'size',
        'address', 'switch_table', 'data')
    __slots__ = ('symbols', 'name', 'lines', 'orig_lines') + flags + \
        ('reference', 'proc',
        'nxt', '_cfg', 'graph', 'ender', 'flow', '_bloc_idx', 'stack')
    debug_coherency_checks = False
    def __init__(self, symbols, name):
        if not type(name) in [ int, str ]:
            raise ValueError("Symbol name shoud be int or str, rather than %s"%type(name))
        self.symbols = symbols
        self.name = name
        self.nxt = None
        self._cfg = None
        self.graph = (set(), set())
        self.ender = None
        self.flow = None
        self._bloc_idx = None
        self.stack = Stack(self)
    def __int__(self):
        return getattr(self, 'address', 0)
    def set_size(self, size):
        self.size = size
    def set_align(self, align):
        self.align = align
    def repr_attr(self, f, _stack={}):
        v = getattr(self, f)
        # _stack is added to detect recursion loops
        # not necessary with CPython, but necessary with Pypy
        if v.__class__ == tuple:
            if (self,f) in _stack:
                return "%s=(...)" % f
            else:
                _stack[(self,f)] = 1
        if type(v) == dict:
            v = ','.join(["%s:%s"%(k,v[k])
                    for k in sorted(v.keys(),key=lambda a:str(a))])
        if v.__class__.__name__ == 'long':
            return "%s=%s"%(f, v)
        return "%s=%r"%(f, v)
    def __repr__(self):
        return "<%s %r %s>"%(self.__class__.__name__, self.name,
            ", ".join([self.repr_attr(f) for f in self.flags if hasattr(self, f)]))
    def __str__(self):
        return str(self.name).replace('\02', '_LOCAL_LABEL_')
    def __lt__(self, y):
        if not hasattr(y, 'name'): return str(self.name) < str(y)
        return str(self.name) < str(y.name)
    def __gt__(self, y):
        # Python 2.3 needs that __gt__ is defined and not only __lt__
        if not hasattr(y, 'name'): return str(self.name) > str(y)
        return str(self.name) > str(y.name)
    def display(self):
        out = "%s\n" % repr(self)
        if hasattr(self, 'section'):
            out += "    ENDER %s -- NXT %s\n" % (self.ender, self.nxt)
            for cfg in self.cfg:
                out += "    CFG %s\n" % cfg
        for label in sorted(self.graph[0]): out += "    GRAPH_NXT %s\n" % label
        for label in sorted(self.graph[1]): out += "    GRAPH_PRV %s\n" % label
        out += self.stack.display()
        if hasattr(self, 'lines'):
            for l in self.lines:
                out += "%s\n" % l.display()
        return out
    def set_data(self, k, v):
        if not hasattr(self, 'data'): self.data = {}
        self.data[k] = v
    def del_data(self, k):
        if not hasattr(self, 'data'): return
        if not k in self.data: return
        del self.data[k]
        if self.data == {}: del self.data
    def get_data(self, k):
        return getattr(self, 'data', {}).get(k, None)

    # #########################################################
    # The name of a symbol is of two types
    # str: named symbol, that may appear in the symbol table
    # int: unnamed symbol, that correspons to a bloc that than
    #      only be reached by program counter advancement
    #      (e.g. after conditional jump or returning call)
    # named symbols containing '\02' are local labels
    # named symbols containing '\01' are dollar labels
    # cf. https://sourceware.org/binutils/docs-2.18/as/Symbol-Names.html
    def is_named(self):
        return type(self.name) == str
    def is_symbol(self):
        pf = symbol_prefixes[self.symbols.meta.get('container', 'ELF')]['no_symbol']
        return self.is_named() and not self.name.startswith(pf)
    def rename(self, name, force = False):
        if not force and self.is_named():
            raise ValueError("Cannot rename label %r"%self.name)
        del self.symbols.symbols_byname[self.name]
        if name in self.symbols.symbols_byname:
            # raise ValueError("Duplicate name %r"%name)
            pass
        self.symbols.symbols_byname[name] = self
        self.name = name
    # #########################################################
    # 'nxt' is not None if this bloc has to be contiguous to another
    # bloc, and contains the label of the next bloc
    # 'cfg' is the list of all labels that are possible destinations
    # for the program; if that list has not been fully computed it
    # contains None
    # 'graph' is a pair of set of labels, before and after in the
    # execution flow; the main difference with 'cfg' is that for a
    # ret, 'graph[0]' contains the list of blocs following the calls
    # of the function, while 'cfg' just is None (because there might
    # be calls from external functions) ; 'cfg' is sound, 'graph' is
    # coherent!
    # 'ender' is a boolean to determine if the bloc is a 'tab_ender'
    # which means that we may add random bytes just after it
    def cfg(self):
        if self._cfg is None: return (self.nxt,)
        return self._cfg
    cfg = property(cfg)
    def set_cfg(self, cfg, graph0=None):
        if not type(cfg) in [tuple, list, set]:
            raise ValueError("CFG of %s should be a list, not %s"%(self,cfg))
        self._cfg = tuple(cfg)
        # Cleanup the 'prv' of next nodes
        for label in self.graph[0]:
            label.graph[1].remove(self)
        # Reconstruct the 'prv' of next nodes
        if graph0 is None: graph0 = set(self.cfg).difference(set([None]))
        self.graph = (graph0, self.graph[1])
        for label in self.graph[0]:
            label.graph[1].add(self)
    def set_nxt(self, nxt, force=False, new_bloc=False):
        if not self.nxt in [ None, nxt ] and not force:
            raise ValueError("Bloc %r already has a 'nxt' %r different of %r"%(self.name,self.nxt.name,nxt.name))
        if nxt is not None and self.section != nxt.section:
            raise ValueError("Next bloc has to be in same section")
        self.nxt = nxt
        self.ender = ('text' in self.section
                     and self.nxt is None
                     and not self.is_removable_section())
        if self.debug_coherency_checks \
                and self in self.symbols.bloc_set \
                and nxt in self.symbols.bloc_set:
            idx = self.bloc_index()
            idx += 1
            while self.section != self.symbols.get_bloc(idx).section:
                idx += 1
            if nxt != self.symbols.get_bloc(idx):
                log.error("Next of %s set to %s instead of %s", self, nxt, self.symbols.blocs[idx])
    def set_flow(self, flow, force=False):
        if not self.flow in [ None, flow ] and not force:
            raise ValueError("Bloc %r already has a flow %r different of %r"%(self.name,self.flow,flow))
        self.flow = flow
    def set_ender(self, ender):
        self.ender = ender
    def is_removable_section(self):
        if ',comdat' in self.symbols.sections.asm_name.get(self.section, ''):
            return True
        if '.gnu.linkonce' in self.section:
            return True
        return False
    def compute_dst(self):
        if not hasattr(self, 'lines') or not None in self.cfg:
            return None
        if not section_type(self.section) in [ 'text', 'plt' ]:
            return None
        if len(self.lines) == 0:
            return None
        idx = -1
        if len(self.lines) > 1 and self.lines[-2].flow is not None:
            idx = -2
        instr = self.lines[idx]
        if instr.flow == False:
            return None
        if instr.flow.endswith('ret'):
            return None
        log.debug("dst of '%s' at (%s)", self, instr)
        if hasattr(instr, 'dst') and \
       len(instr.dst) >= 1 and \
           isinstance(instr.dst[0], list):
            # Non-resolved switch table
            table = instr.dst[0][0]
            if not hasattr(table, 'lines'):
                log.debug("SWITCH TABLE AT LABEL %s, empty", table)
                return None
            if not hasattr(table, 'switch_table'):
                log.debug("SWITCH TABLE AT LABEL %s, %d lines, no base", table, len(table.lines))
                instr.dst = [ ]
                for line in table.lines:
                    if not hasattr(line, 'value'):
                        assert line.__class__.__name__ == 'ConstantZero'
                        break
                    if not isinstance(line.value[0], Symbol):
                        break
                    instr.dst.append(line.value[0])
                return instr
            switch_base, ptr_size, tbl_size = table.switch_table
            if hasattr(table, 'size'):
                log.debug("SWITCH TABLE AT LABEL %s, %d lines, complete", table, len(table.lines))
                instr.dst = [ ]
                base = "-%s" % switch_base
                for line in table.lines:
                    label = line.value[0]
                    assert label.name.endswith(base)
                    label = label.name[:-len(base)]
                    label = self.symbols.find_symbol(name = label)
                    instr.dst.append(label)
                return instr
            log.debug("SWITCH TABLE AT LABEL %s, %d lines, incomplete", table, len(table.lines))
            if tbl_size is not None:
                log.debug("    tbl_size=%s", tbl_size)
            return None
        in_str, _ = self.symbols.streams[self.section]
        # Note that the performance impact is HUGE
        # e.g. parsing examples/x64_linux/k9-fPIC.o takes 39s instead of 3s
        # TODO: recompute only if the ancestors of 'self' have changed
        # or if the target switch table has changed
        # This should gain a lot of time
        lines = self.lines # May be extended with previous blocs
        msg, val = instr.evaluate_lines(lines, in_str)
        cur_bloc = self
        while val == [None]:
            # If the analysis has not been conclusive, and if there is
            # only one ancestor bloc, then we emulate it too
            ancestors = cur_bloc.get_ancestors()
            log.debug("Ancestors %s", [ str(_) for _ in ancestors])
            if len(ancestors) != 1:
                break
            cur_bloc = ancestors[0]
            if not hasattr(cur_bloc, 'lines'):
                break
            lines = cur_bloc.lines + lines
            msg, val = instr.evaluate_lines(lines, in_str)
        self.del_data('cfg_warn') # Warning displayed only at the end
        if val == [ None ]:
            msg, retval, machine = msg
            self.set_data('cfg_warn', (instr, msg, retval))
            log.debug("Failed to compute dst of '%s' at (%s)", self, instr)
            log.debug("... %s (TODO) '%s'", msg, retval)
            log.debug("    MEMORY is")
            for mem in machine:
                log.debug("    - %s", mem)
        elif val == 'TABLE':
            # Table found, but data section not parsed yet
            log.debug("... %s %s", msg, val)
            val = [ None ]
        elif len(val) == 1:
            log.debug("... %s '%s'", msg, val[0])
        else:   
            log.debug("... %s %s", msg, [str(v) for v in val])
        if val == instr.dst:
            # Nothing changed
            return None
        if len(val) >= len(instr.dst):
            # New destinations found
            # Note that 'None' in the destination list means that the
            # analysis is incomplete
            instr.dst = val
            return instr
        if set(val+[None]) == set(instr.dst):
            # Destination list completed
            # e.g. when the end of a switch table has been found
            # Recompute CFG to delete None
            instr.dst = val
            return instr
        if set(val) < set(instr.dst):
            # In some rare cases, compute_dst generated an element in a
            # switch table, which changes the CFG before this instruction,
            # and makes our backward analysis fail because we go backwards
            # only if a basic has a unique ancestor.
            return None
        # Should not happen, it means that the new destination list
        # is different from the old one in a strange way
        log.error("Bloc %r", self)
        log.error(" OLD DST %s", instr.dst)
        log.error(" NEW DST %s", val)
        TODO
    def is_new_object(self):
        if not getattr(self, 'type', None) is None:
            return True
        if not getattr(self, 'data', None) is None:
            return True
        if getattr(self, 'bind', None) == 'globl':
            return True
        if self.section == comm_symbol_section:
            return True
        if is_comm(self):
            return True
        return False
    def get_ancestors(self):
        # if visible symbol, there may be external ancestors
        if self.is_new_object():
            return [None] + sorted(self.graph[1])
        # if parsed from assembly, many elements of the graph are missing,
        # compared to binary parsing, e.g. arrows for switch tables
        if not 'endianess' in self.symbols.meta and self.is_named():
            return [None] + sorted(self.graph[1])
        return sorted(self.graph[1])
    def bloc_index(self):
        ''' gets the label index in the bloc list, and cache the result '''
        bloc_count = len(self.symbols.blocs)
        if self._bloc_idx is None \
        or self._bloc_idx >= bloc_count \
        or self != self.symbols.blocs[self._bloc_idx]:
            # There might be only a few blocs inserted
            for _ in range(4):
                self._bloc_idx += 1
                if self._bloc_idx < bloc_count \
                    and self == self.symbols.blocs[self._bloc_idx]:
                    return self._bloc_idx
            # We need to recompute the index
            self._bloc_idx = self.symbols.blocs.index(self)
        return self._bloc_idx
    # #########################################################
    # Create or modify the content
    def insert_bloc(self, label=None, after=None):
        if self in self.symbols.bloc_set:
            return
        self.lines = []
        self.set_nxt(self.nxt, force=True, new_bloc=True) # To set 'ender' to default
        if label is None:
            if not hasattr(self, 'address'):
                self.address = len(self.symbols.blocs)
            for idx, label in enumerate(self.symbols.blocs):
                if label.section == self.section and label.address > self.address:
                    break
            else:
                idx = len(self.symbols.blocs)
        else:
            # Insertion before or after 'label'
            idx = label.bloc_index()
            if after: idx += 1
        self._bloc_idx = idx
        self.symbols.blocs.insert(idx, self)
        self.symbols.bloc_set.add(self)
    def add_bloc(self, section, label, after = True):
        # Optional parameters
        self.section = section
        self.insert_bloc(label=label, after=after)
    def delete_bloc(self):
        self.orig_lines = self.lines
        del self.lines
        self.symbols.blocs = [ l for l in self.symbols.blocs if l != self ]
        self.symbols.bloc_set.discard(self)
    def addline(self, line, pos=None):
        if pos is None:
            self.lines.append(line)
        else:
            self.lines.insert(pos, line)
    def setlines(self, lines):
        self.lines = lines
    def getline(self, pos):
        if hasattr(self, 'lines') and pos < len(self.lines):
            return self.lines[pos]
        else:
            return None
    def split(self, label_split, idx, mark_next=True):
        if self.section != label_split.section:
            raise ValueError("cannot split basic bloc with label in another section")
        label_split.setlines(self.lines[idx:])
        label_split.set_cfg(self.cfg, graph0=self.graph[0])
        label_split.set_nxt(self.nxt)
        label_split.set_ender(self.ender)
        label_split.set_flow(self.flow)
        self.setlines(self.lines[:idx])
        if mark_next:
            self.set_cfg([label_split])
            self.set_nxt(label_split, force=True)
            self.set_flow(None, force=True)
            label_split.stack.stack_append(self.stack)
        else:
            self.set_cfg([])
            self.set_nxt(None, force=True)
            self.set_flow(None, force=True)
    def bytelen(self):
        sz = 0
        for v in self.lines:
            sz += v.bytelen
        return sz
    bytelen = property(bytelen)
    def pack(self):
        import struct
        out = struct.pack("")
        for l in self.lines:
            out += l.pack()
        return out
    def find_address(self, address):
        for idx, line in enumerate(self.lines):
            if line.offset == address:
                # print "SPLIT at", line
                return idx
            if line.offset > address:
                log.error("label is in the middle of an instruction")
                return None
        log.error("address %#x should be in the bloc of %s", address, self.display())
        return None

def compute_alignment(size, address):
    # Find the biggest power of two dividing size
    align = 1
    while size % align == 0:
        align = align * 2
    align = align // 2
    # Reduce it until it divides the address
    while address % align != 0:
        align = align // 2
    return align

comm_symbol_section = 'COM'

def is_comm(label):
    return label.section == comm_symbol_section \
        or (section_type(label.section) == 'bss' \
            and hasattr(label, 'size') \
            and getattr(label, 'bind', None) == 'local') \
        or label.symbols.sections.asm_name.get(label.section, '').endswith('(zerofill)')

section_types = {
    'RAW': {
        'text':   ('raw_text',),
        },
    'ELF': {
        'text':   ('.text', '.gnu.linkonce.t'),
        'data':   ('.data', '.gnu.linkonce.d', '.tdata', '.ctors', '.dtors',
            '.init_array', '.fini_array'),
        'rodata': ('.rodata', '.gnu.linkonce.r'),
        'bss':    ('.bss',  '.gnu.linkonce.b', '.tbss'),
        'common': (comm_symbol_section,),
        'plt':    ('.plt', '.got.plt', '.got'),
        None:     ('.debug_frame', '.eh_frame', '.comment', '.group',
            '.debug_str',
            '.gcc_except_table', '.note.GNU-stack',
            # arbitrary sections are created by __attribute__ in binutils gold/testsuite
            'section_', '.gold_test', '_foo', '_boo',
            ),
        },
    'PE': {
        'text':   ('.text',),
        'data':   ('.data',),
        'rodata': ('.rdata', '.idata',),
        },
    'Mach-O': {
        'text':   ('__TEXT,__text', '__TEXT,__StaticInit',),
        'data':   ('__DATA,__data', '__DATA,__const',
            '__DATA,__mod_init_func', '__DATA,__mod_term_func',),
        'bss':    ('__DATA,__bss',),
        'common': ('__DATA,__common',),
        'rodata': ('__TEXT,__const', '__TEXT,__cstring',
            '__TEXT,__literal16', '__TEXT,__literal8', '__TEXT,__literal4',),
        None:     ('__IMPORT,__pointers', '__TEXT,__eh_frame',
                   '__DWARF,__debug_info',
                   '__DWARF,__debug_abbrev',
                   '__DWARF,__debug_line',
                   '__DWARF,__debug_str',
                   '__DWARF,__debug_loc',
                   '__DWARF,__debug_ranges',
                   '__DWARF,__apple_names',
                   '__DWARF,__apple_objc',
                   '__DWARF,__apple_namespac',
                   '__DWARF,__apple_types',
                   '__DWARF,__apple_exttypes',
            '__LD,__compact_unwind', '__TEXT,__unwind_info',), # man unwinddump
        },
    }

# Depending on the container (or the compile chain?) some labels don't
# generate symbols, depending on their prefix
symbol_prefixes = { # don't generate / generate symbol
    'ELF':    { 'no_symbol': '.L', 'symbol':'' },
    'PE':     { 'no_symbol': 'L', 'symbol':'_' },
    'COFF':   { 'no_symbol': 'L', 'symbol':'_' },
    'Mach-O': { 'no_symbol': 'L', 'symbol':'_' },
    }

def section_type(section):
    if section is None:
        return None
    for container in section_types:
        for s_type in section_types[container]:
            for value in section_types[container][s_type]:
                if section.startswith(value) or section.startswith('"'+value):
                    return s_type
    raise ValueError("Unknown section %r"%section)

class Sections(object):
    def __init__(self):
        self.asm_name = {}
        self.eos = {}
    def parse_attributes(self, asm_name):
        if not ',' in asm_name:
            return asm_name
        idx = asm_name.index(',')
        if asm_name.startswith('__'): # Mach-O
            segment, rest = asm_name[:idx+1], asm_name[idx+1:]
            if not ',' in rest:
                return asm_name
            idx += 1+rest.index(',')
        section = asm_name[:idx]
        if self.asm_name.get(section, asm_name) != asm_name:
            raise ValueError("Section %s had asm name %s and now set to %s" %
                (section, self.asm_name[section], asm_name))
        self.asm_name[section] = asm_name
        return section
    def add_attribute(self, section, attribute):
        if not section in self.asm_name: self.asm_name[section] = section
        self.asm_name[section] += attribute
    def set_asm_name(self, section, asm_name):
        if self.asm_name.get(section, asm_name) != asm_name:
            raise ValueError("Section %s had asm name %s and now set to %s",
                section, self.asm_name[section], asm_name)
        self.asm_name[section] = asm_name
    def endofsection(self, section, address):
        self.eos[section] = address
        self.eos[address] = section

class Symbols(object):
    __slots__ = ('symbols', 'symbols_byname', 'symbols_byaddress', 'blocs', 'bloc_set',
        'meta', 'sections',
        '_numeric_label_', '_precomputed')
    def __init__(self):
        self.symbols = []
        self.symbols_byname = {}
        self.symbols_byaddress = {}
        self.blocs = []
        self.bloc_set = set()
        self.sections = Sections()
        self._numeric_label_ = 0
        self._precomputed = {}
        self.meta = {}
    def get_meta(self):
        return dict(self.meta)
    def set_meta(self, **meta):
        if not 'force' in meta or meta['force'] != True:
            for _ in meta:
                if _ in self.meta and meta[_] != self.meta[_]:
                    raise ValueError(
                    "Cannot set meta key %r with value %r, there is already %r"
                    % (_, meta[_], self.meta[_]))
        meta.pop('force', None)
        self.meta.update(meta)
    def new_name(self, section = None, address = None):
        pf = symbol_prefixes[self.meta.get('container', 'ELF')]['no_symbol']
        st = section_type(section)
        name = {
            'text':   '',
            'rodata': 'C',
            'data':   'D',
            'bss':    'BSS',
            'common': 'COM',
            'plt':    'PLT',
            }[st]
        name = '%s%s%.8X' % (pf, name, address)
        if section.startswith('.'+st+'.'):
            name += section[len(st)+1:].split(',')[0]
        return name
    def find_symbol(self, **props):
        found = self.find_symbols(**props)
        if   len(found) == 0: return None
        elif len(found) == 1: return found[0]
        else:
            found = sorted(found, key=lambda x:x.name)
            return getattr(self, 'choose_symbol', lambda _, f: f[0])(found)
    def find_symbols(self, **props):
        name = None
        if 'address' in props and not 'name' in props:
            # Binary only
            props['address'] = int(props['address'])
            section = props.get('section')
            if section is None:
                section = self.get_sectionname(props['address'])
            pos = (section, props['address'])
            if pos in self.symbols_byaddress:
                found = self.symbols_byaddress[pos]
            else:
                found = []
            if len(found) >= 1:
                return found
            if not 'section' in props:
                return []
            name = self.new_name(section = section, address = props['address'])
        name = props.pop('name', name)
        if name is None:
            name = self._numeric_label_
            self._numeric_label_ += 1
        if not name in self.symbols_byname:
            # Create a new symbol
            self.symbols_byname[name] = Symbol(self, name)
            self.symbols.append(self.symbols_byname[name])
            if 'address' in props:
                pos = (props.get('section'), props['address'])
                if pos in self.symbols_byaddress:
                    self.symbols_byaddress[pos].append(self.symbols_byname[name])
                else:
                    self.symbols_byaddress[pos] = [self.symbols_byname[name]]
        self.setattr(name = name, **props)
        self._precomputed = {}
        return [self.symbols_byname[name]]
    def get_sectionname(self, offset):
        # Binary only
        section = self.file_elfesteem.getsectionbyvad(offset)
        if section is None:
            return None
        if not hasattr(section, 'name'): return None
        return section.name.strip('\0')
    def setattr(self, name = None, **props):
        if not name in self.symbols_byname:
            raise ValueError("Symbol %r not existing"%name)
        label = self.symbols_byname[name]
        for key in props:
            if hasattr(label, key) and props[key] != getattr(label, key):
                if key == 'data':
                    props[key].update(getattr(label, key))
                else:
                    raise ValueError("Cannot set symbol %r key %r with value %r, there is already %r"%(name,key,props[key],getattr(label, key)))
            setattr(label, key, props[key])
        self._precomputed = {}
    def get_bloc(self, idx):
        ''' gets a bloc by index, and cache the index value '''
        label = self.blocs[idx]
        label._bloc_idx = idx
        return label
    def object_list(self):
        if 'object_list' in self._precomputed:
            return self._precomputed['object_list']
        # res is a list of objects, each being a list of blocs
        # the end of an object is determined with the following heuristics:
        # - symbol with type, data or bind==globl
        # - symbol in comm_symbol_section
        # if not at the end, the object continues within the same section
        # res_sections is the list of sections of the objects
        res = []
        res_sections = []
        for label in self.blocs:
            section = label.section
            if is_comm(label): section = comm_symbol_section
            if label.is_new_object():
                prv = None
            else:
                for idx in range(len(res)):
                    prv_section = res_sections[-idx-1]
                    if prv_section == section:
                        prv = res[-idx-1]
                        break
                else:
                    prv = None
            if prv is None: # New object/function
                res.append([label])
                res_sections.append(section)
            else:
                prv.append(label)
        # nxt is the list of objects having a 'nxt', therefore needing to be
        # merged with the next object
        nxt = []
        for o in res:
            if o[-1].nxt is not None \
                    and section_type(o[-1].section) != 'common' \
                    and getattr(o[-1], 'type', None) != 'padding':
                nxt.append(o)
        for o in nxt:
            log.warning("Object %s has nxt %s", [str(l) for l in o], o[-1].nxt)
        # reorder objects, based on the original section order, plus some hints
        # objects in .text.__i686.get_pc_thunk.* should be last
        # objects in __IMPORT,__pointers should be last, too
        last_section_eos = -1
        for o in self.sections.eos:
            if not o.__class__ == str and last_section_eos < o:
                last_section_eos = o
        res_ordered = {}
        for o, section in zip(res, res_sections):
            if section.startswith('__IMPORT,__pointers'):
                pos = last_section_eos + 2
            elif section.endswith('.__i686.get_pc_thunk.cx'):
                pos = last_section_eos + 2
            elif section.endswith('.__i686.get_pc_thunk.bx'):
                pos = last_section_eos + 3
            elif section in self.sections.eos:
                pos = self.sections.eos[section]
            else:
                pos = last_section_eos + 1
            if not pos in res_ordered:
                res_ordered[pos] = []
            res_ordered[pos].append(o)
        res = []
        for pos in sorted(res_ordered.keys()):
            res.extend(res_ordered[pos])
        self._precomputed['object_list'] = res
        return res
    def list_relocs(self):
        if 'relocs' in self._precomputed:
            return self._precomputed['relocs']
        # Note: addresses and offsets should have been computed
        res = []
        for o in self.object_list():
            for bloc in o:
                for line in bloc.lines:
                    line.pack() # should have been computed
                    if hasattr(line, 'list_relocs'):
                        res += [r+[bloc.section] for r in line.list_relocs()]
        self._precomputed['relocs'] = res
        return res
    def previous(self, symbol):
        # Find the previous bloc in the same section
        acc = None
        for nxt in self.blocs:
            if (nxt.section == symbol.section
                and nxt.address < symbol.address
                and len(nxt.lines) > 0
                and (acc is None or nxt.address > acc.address)):
                acc = nxt
        return acc
    def resolve(self):
        self.object_list()
        # TODO
        # sets addresses for all symbols
        # then sets offsets for all lines
        self.list_relocs()

#################################################
# A bloc contains a list of lines, which inherit from this class
class Line(object):
    __slots__ = ('symbols',)
    # The following methods should be defined for all architectures
    def from_txt(self, txt):
        ''' text input, in assembly format '''
        raise ValueError("TODO 'from_txt' for %r" % self.__class__)
    def from_bin(self, in_str, section):
        ''' binary input, in assembly format '''
        raise ValueError("TODO 'from_bin' for %r" % self.__class__)
    def pack(self):
        ''' binary representation '''
        raise ValueError("TODO 'pack' for %r" % self.__class__)
    def __str__(self, **kargs):
        ''' text output, to be used by an assembler '''
        out = self.txt(**kargs)
        fmt = '%-50s ## '
        if self.long_display and hasattr(self, 'pic'):
            pic_label, pic_list = self.pic
            pic_list = ';'.join([str(_) for _ in pic_list])
            if pic_label is not None: pic_list = "%s:%s" % (pic_label, pic_list)
            out = (fmt+'PIC:%s') % (out, pic_list)
            fmt = '%-80s # '
        if self.long_display and hasattr(self, 'stack'):
            registers, positions = self.stack
            if isinstance(registers, bool):
                stack_status = '%s:' % registers
            else:
                stack_status = []
                for k in sorted(registers):
                    stack_status.append('%r: %r'%(k,sorted(list(registers[k]))))
                stack_status = '{' + ', '.join(stack_status) + '}:'
            stack_status += str(tuple(sorted(positions)))
            out = (fmt+'STACK:%s') % (out, stack_status)
            fmt = '%-80s # '
        if self.long_display and hasattr(self, 'dead'):
            dead = sorted([str(_) for _ in self.dead])
            out = (fmt+' DEAD:%s') % (out, ';'.join(dead))
            if hasattr(self, 'pic'):
                for pic in self.pic[1]:
                    for reg in dead:
                        if str(reg) in str(pic):
                            out += ' COLLISION'
        if self.long_display and len(getattr(self, 'dst', [])) > 1:
            dst = sorted([str(_) for _ in self.dst])
            out = (fmt+' DST:%s') % (out, ';'.join(dst))
        return out
    def apply_reloc(self, pos, reloc):
        ''' 'reloc' is a relocation at offset 'pos'
            This function modifies the argument impacted by the relocation '''
        raise ValueError("TODO 'apply_reloc' for %r" % self.__class__)

    # The following methods may be re-defined
    def __init__(self, symbols):
        # We cannot include a link to the basic bloc where this line is,
        # because this bloc may be split later, and we would need to
        # update this link
        self.symbols = symbols
    def labels(self):
        ''' labels that are referenced in the line '''
        return set()
    # Methods that are inherited and not re-defined
    def display(self):
        ''' (long) display of internals of the instruction '''
        out = str(type(self))
        out = out.replace("<class '","'")
        if hasattr(self, 'offset'):
            out += "%s " % self.offset
        if self.flow != False:
            out += "[%s]" % self.flow
        if hasattr(self, 'immutable'):
            out += "[immutable=%s]" % self.immutable
        out += self.txt()
        if self.long_display:
            if hasattr(self, 'rw'):
                out += "\n\t R%s W%s"%(
                    sorted([self.reg_name(r) for r in self.rw[0]]),
                    sorted([self.reg_name(r) for r in self.rw[1]]))
            if hasattr(self, 'dead'):
                out += "\n\t D%s"%(
                    sorted([self.reg_name(r) for r in self.dead]))
            if hasattr(self, 'pic'):
                pic_label, pic_list = self.pic
                pic_list = ';'.join([str(_) for _ in pic_list])
                if pic_label is not None: pic_list = "%s:%s" % (pic_label, pic_list)
                out += "\n\t PIC:%s" % pic_list
            if hasattr(self, 'stack'):
                registers, positions = self.stack
                if isinstance(registers, bool):
                    stack_status = '%s:' % registers
                else:
                    stack_status = []
                    for k in sorted(registers):
                        stack_status.append('%r: %r'%(k,sorted(list(registers[k]))))
                    stack_status = '{' + ', '.join(stack_status) + '}:'
                stack_status += str(tuple(sorted(positions)))
                out += "\n\t STACK:%s" % stack_status
            if hasattr(self, 'dst') and len(self.dst) != 0:
                out += "\n\t dst=%s"%(self.dst)
        return out
    def do_post_init(self):
        if hasattr(self, 'offset'):
            # when parsing a binary, we need to find all relocations which
            # change the content of this instruction
            _, relocs = self.symbols.streams[self.section]
            keys = relocs.sortedkeys
            import bisect
            start = bisect.bisect_left(keys, self.offset)
            stop  = bisect.bisect_left(keys, self.offset+self.bytelen)
            for pos in keys[start:stop]:
                # modify the argument impacted by the relocation
                self.apply_reloc(pos, relocs[pos])
        if hasattr(self, 'offset') and hasattr(self, 'create_label_rel'):
            # when parsing a binary
            # Replace relative addresses for call/jmp/jcc
            self.create_label_rel()
            # Replace immediate values that may be labels
            self.create_label_imm()
        if hasattr(self, '_set_flow'):
            # when creating an InstructionCFG
            self._set_flow()
            self._set_dst()
        if hasattr(self, '_set_rw'):
            # when creating an InstructionRW
            self._set_rw()
        return self

    def pack_reloc(self, label, is_reloc, is_relative):
        # To be able to pack() an instruction, this function computes
        # the offset caused by a label
        # If 'label' is 'base+shift', attributes are in 'base'
        base = getattr(label, 'reference', label)
        offset = 0
        # If 'label' is 'base+shift', increment by 'shift'
        if hasattr(label, 'reference'):
            offset += label.address
            label = label.reference
            if hasattr(label, 'section'):
                offset -= label.address
        if is_reloc:
            if is_relative:
                # relative jmp/call, relative to the address of next instruction
                offset -= -1 + self.bytelen
                # 1 is the length of the prefix; x86 only?
            elif label.name == '_GLOBAL_OFFSET_TABLE_':
                # Special case, GOT label
                offset += 2
            else:
                # Nothing special, standard label
                pass
        else:
            offset += label.address
            if is_relative:
                offset -= self.offset + self.bytelen
        return offset

    def get_bloc(self):
        # Get the bloc containing the line
        # Works only when parsing binary
        pool = self.symbols.symbols_byaddress
        pos = (self.section, self.offset)
        while not pos in pool:
            if pos[1] < 0:
                return None
            pos = (self.section, pos[1]-1)
        return pool[pos][0]

    # The following parameters may be re-defined
    flow = False
    long_display = False

section_for_type = {
    'function': ['text'],
    'gnu_indirect_function': ['text'],
    'object': ['data', 'rodata', 'bss', None],
    'tls_object': ['data', 'bss'],
    'gnu_unique_object': ['data', 'rodata', 'bss'],
    }

dont_return = [
       'exit', 'abort',
       '__libc_start_main', '__stack_chk_fail', '__stack_chk_fail_local',
       '__assert_fail', '__assert_rtn',
       'xalloc_die', 'openat_save_fail', 'openat_restore_fail', 'xstrtol_fatal', # coreutils
       '_gfortran_os_error', '_gfortran_runtime_error',
       '_gfortran_stop_string', '_gfortran_stop_numeric',
       's_stop',
       'longjmp', '__longjmp_chk',
       # used by aspell / g++ 4.8.4 64-bits
       '__cxa_bad_typeid',
       '_ZSt17__throw_bad_allocv',
       '_ZSt20__throw_length_errorPKc',
       ]
dont_return_noPLT = [
       # functions of gp/pari
       # don't generate the @PLT variants, they cause a bug when parsing
       # the objects generated by gcc 4.9.2 64-bits
       'pari_err', 'pari_warn', 'gp_quit',
       ]
dont_return = [ prefix + func
    for prefix in [ '', '_', '__', '.rel.plt.', '.rela.plt.', '__imp__' ]
    for func in dont_return + dont_return_noPLT ] + [ func + '@PLT'
    for func in dont_return ]
del dont_return_noPLT
def should_return(dst, emulate_stack=True, cds=None):
    if type(dst) == list:
        for _ in dst:
            if should_return(_, emulate_stack=emulate_stack):
                return True
        return False
    if dst is None:
        # Failed to determine all destinations
        # We could return 'True' and risk to decode non executed chunks
        # or return 'False' and risk to omit executed chunks
        return True
        return False
    if dst.name in dont_return:
        # System subroutines that don't return
        return False
    if dst.name in [ '__alloca', '___main', 'atexit' ]:
        # System subroutines that return
        return True
    for _ in ('.rel.plt.', '.rela.plt.', '__imp__'):
        # External subroutines
        if dst.name.startswith(_): return True
    if cds is not None and cds.skip_bloc(dst.name):
        # Skipped functions
        return True
    if emulate_stack and hasattr(dst, 'section'):
        # Program subroutines that can be analyzed
        return False
    return True
