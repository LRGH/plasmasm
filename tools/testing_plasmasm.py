#! /usr/bin/env python
# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import sys, os
sys.path.insert(1, os.path.abspath(sys.path[0]+'/..'))

try:
    from plasmasm.python.compatibility import sorted
except ImportError:
    pass

from plasmasm.python.utils import popen, popen_read_err, mkstemp, spawn, call

# How to compare two object files...
def print_red(string):
    print("\033[01;31m%s\033[00m"%string)

import struct
def bstring(s):
    return struct.pack('%dB'%len(s), *[ord(_) for _ in s])

def parse_objdump(file, quick=False):
    if sys.platform == 'darwin':
        symbols = [_ for _ in popen(['nm', file])]
        dump = [_ for _ in popen(['otool', '-tvj', file])]
        if quick:
            dump = [_[9:] for _ in dump]
        return symbols, dump[1:]
    else: # linux
        dump = [_ for _ in popen(['objdump', '-drt', file])]
        def check_line(dump, idx, value):
            if dump[idx] != value:
                print_red("Objdump line %d is %r"%(idx, dump[idx]))
                sys.exit(1)
        check_line(dump, 0, bstring('\n'))
        check_line(dump, 2, bstring('\n'))
        check_line(dump, 3, bstring('SYMBOL TABLE:\n'))
        for eof_symbols in range(4,len(dump)):
            if dump[eof_symbols] == bstring('\n'):
                break
        else:
            print_red("Objdump output invalid")
            sys.exit(1)
        trash_symbols = [
            # If executable, eh_frame section does not have the same length
            bstring('__FRAME_END__'),
            bstring('.gcc_except_table'),
                bstring('.eh_frame'),
            # .loc directives are deleted by plasmasm
            bstring('.debug_'),
            # gcc 3.x creates global symbols with no content
            bstring('__moddi3'),
            bstring('__divdi3'),
            bstring('__umoddi3'),
            bstring('__udivdi3'),
            # gcc 4.x with -g may creates this symbol because of the content
            # of .debug_info but plasmasm removes .debug_info
            bstring('_GLOBAL_OFFSET_TABLE_'),
            ]
        def keep_symbol(line):
            for _ in trash_symbols:
                if _ in line: return False
            return True
        symbols = [ _ for _ in dump[4:eof_symbols] if keep_symbol(_) ]
        if quick:
            def cut(s):
                start = 1+s.find(':')
                stop = 1+s.find('#')
                if stop == 0: stop = len(s)
                return s[start:stop]
            dump = [cut(_) for _ in dump]
        return symbols, dump[eof_symbols:]

def do_compare(obj1, obj2, quick=False):
    do_exit = False
    symbols1, dump1 = parse_objdump(obj1, quick=quick)
    symbols2, dump2 = parse_objdump(obj2, quick=quick)
    from difflib import context_diff
    diff = []
    if sorted(symbols1) != sorted(symbols2):
        diff.extend(list(context_diff(symbols1, symbols2, n=1)))
    diff.extend(list(context_diff(dump1, dump2, n=1)))
    return diff

def get_as_version(symbols):
    # Return a tuple: (major version, minor version, version string)
    as_v = popen_read_err(["as", "-v", "-o", "/dev/null", "/dev/null"])
    if type(as_v) != str: as_v = str(as_v, encoding='latin1')
    if 'Apple Inc version' in as_v:
        # macports as; get Xcode version instead
        as_v = popen_read_err(["gcc", "-v"])
        if type(as_v) != str: as_v = str(as_v, encoding='latin1')
    major, minor = None, None
    if as_v and 'GNU' in as_v:
        # Binutils
        import re
        r = re.match(r'.* ([12])\.([0-9]+).*', as_v)
        if r:
            major, minor = r.groups()
            major, minor = int(major), int(minor)
    elif as_v and 'Apple LLVM' in as_v:
        # Apple LLVM
        import re
        r = re.match(r'.*clang-([0-9]+)\.([0-9]+).*', as_v)
        if r:
            major, minor = r.groups()
            major, minor = int(major), int(minor)
    symbols.set_meta(as_v = (major, minor, as_v))
    return (major, minor, as_v)

def hook_for_as_bugs(symbols):
    # When using GNU as 2.14 or 2.15, args of test %reg, %reg are swapped.
    # If 'symbols' was parsed from a binary, then we should swap the args
    # when creating the asm.
    # Not put in File() generation, because only useful for non-regression
    # tests.
    if not 'endianess' in symbols.meta: return
    major, minor, as_v = get_as_version(symbols)
    if major != 2 or not minor in (14, 15):
        return
    from miasmX.arch.ia32_arch import is_reg
    for label in symbols.blocs:
        for l in label.lines:
            # Bug of old GNU as, args of test %reg, %reg are swapped
            if getattr(l, 'opname', None) == 'test' \
                    and is_reg(l.miasm.arg[0]) \
                    and is_reg(l.miasm.arg[1]):
                l.miasm.arg = [l.miasm.arg[1], l.miasm.arg[0]]

def do_test_plasmasm(filename, quick=False, **kargs):
    print("Testing %s" % filename)
    obj_v1 = mkstemp(suffix='.o')
    asm_v2 = mkstemp(suffix='.s')
    obj_v2 = mkstemp(suffix='.o')
    # Create new asm
    from plasmasm.analyze_file import File
    symbols = File().from_filename(filename, **kargs)
    hook_for_as_bugs(symbols)
    symbols.to_asm(output_filename=asm_v2)
    # Making object files
    if symbols.arch.CPU == 'X64': compile = ['gcc', '-c', '-o']
    else: compile = ['gcc', '-m32', '-c', '-o']
    spawn(compile + [obj_v2, asm_v2])
    os.unlink(asm_v2)
    if filename.endswith('.s'):
        cmd_mkobjv1 = compile + [obj_v1, filename]
    elif filename.endswith('.o'):
        cmd_mkobjv1 = ['cp', filename, obj_v1]
    else:
        TODO
    spawn(cmd_mkobjv1)
    # Do comparison
    diff = do_compare(obj_v2, obj_v1, quick=quick)
    os.unlink(obj_v1)
    os.unlink(obj_v2)
    if diff:
        for line in diff:
            print_red(line[:-1])
        print("Failed for %s" % filename)
        sys.exit(1)



if __name__ == "__main__":
    def usage():
        sys.stderr.write("Syntax: testing_plasmasm.py [-qv] [-c cpu] <files>\n")
        sys.stderr.write("\t\t<files>: can be .s or .o files\n")
        sys.stderr.write("\tAll tests compare the original .o and the one created by running\n")
        sys.stderr.write("\tas on the assembly generated by plasmasm\n")
        sys.stderr.write("\t-q: delete addresses from objdump/otool outputs, before making the context_diff\n")
        sys.stderr.write("\t-v: verbose\n")
        sys.stderr.write("\t-c cpu: specify cpu/backend\n")
        sys.exit(0)

    if len(sys.argv) == 1:
        usage()
    kargs = { 'quick': False }
    if sys.argv[1] == '-q':
        kargs['quick'] = True
        sys.argv.pop(1)
    if sys.argv[1] == '-c':
        sys.argv.pop(1)
        kargs['cpu'] = sys.argv.pop(1)
    for _ in sys.argv[1:]:
        if _ == '-v': continue
        do_test_plasmasm(_, **kargs)
