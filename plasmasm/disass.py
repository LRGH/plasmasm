#! /usr/bin/python
# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import getopt, sys, os.path
sys.path.insert(1, os.path.abspath(sys.path[0]+'/..'))
from plasmasm.analyze_file import File

def usage(long = False):
    sys.stderr.write("disass.py [-hvaITtSrLWDobs] [-[CA]d dot] [-y type] [-c cpu] [-e ep] <input>\n")
    if long:
        sys.stderr.write(
            "           -h: help\n"
            "           -v: verbose\n"
            "           -a: asm output (can be input to GNU as)\n"
            "             -I: Intel syntax for x86\n"
            "             -T: AT&T syntax for x86\n"
            "             -S: Group sections\n"
            "           -r: internal plasmasm representation\n"
            "             -L: all relevant fields for each asm line\n"
            "             -W: compute R/W registers and PIC storage\n"
            "             -D: compute dead registers\n"
            "           -o: objdump output (can be diff-ed with objdump -d)\n"
            "           -s: only the list of symbols\n"
            "           -b <output>: binary output\n"
            "             currently, only ELF relocatable\n"
            "           -d dot: prefix of .dot file containing graphs of functions\n"
            "             -C: CFG of the whole executable\n"
            "             -A: all graph arrows\n"
            "           -y type: type of container file (RAW, ELF, PE, MACH-32)\n"
            "           -c cpu: name of cpu (I386, PPC, SPARC)\n"
            "              or name of cpu backend (I386/MIASM, I386/AMOCO, ...)\n"
            "           -e ep: address or name of entrypoint(s)\n"
            )
    sys.exit(0)
output = ''
format = None
bin_type = None
cpu      = None
dot_file = None
rw   = False
long = False
dead = False
graph_type = 'FUNC'
group_sections = False
ep = []
try:
    opts, args = getopt.getopt(sys.argv[1:], "hvaITtSrLWDob:sd:CAy:c:e:")
    for opt, arg in opts:
        if opt == '-h':
            usage(long=True)
        elif opt == '-v':
            import logging
            log = logging.getLogger("plasmasm")
            lvl = log.getEffectiveLevel()
            if lvl > 10: lvl -= 10
            else:        lvl -= 1
            log.setLevel(lvl)
        elif opt == '-I':
            format = 'intel'
        elif opt == '-T':
            format = 'att'
        elif opt == '-S':
            group_sections = True
        elif opt == '-a':
            output = 'asm'
        elif opt == '-o':
            output = 'objdump'
        elif opt == '-b':
            output = 'binary'
            outfile = arg
        elif opt == '-s':
            output = 'symbols'
        elif opt == '-r':
            output = 'repr'
        elif opt == '-L':
            long = True
        elif opt == '-W':
            rw = True
        elif opt == '-D':
            rw = True
            dead = True
        elif opt == '-y':
            bin_type = arg
        elif opt == '-c':
            cpu = arg
        elif opt == '-e':
            ep.append(arg)
        elif opt == '-d':
            dot_file = arg
        elif opt == '-C':
            graph_type = 'CFG'
        elif opt == '-A':
            graph_type = 'ALL'
except getopt.GetoptError:
    msg = sys.exc_info()[1]
    sys.stderr.write("ERROR: %s\n"%msg)
    sys.exit(1)
if len(args) == 0:
    usage()

if long:
    from plasmasm import symbols
    symbols.Line.long_display = True

pool = File().from_filename(args[0],
     file_type = bin_type, cpu = cpu, entrypoints = ep, rw = rw, dead = dead)

if format is not None or output == 'repr':
    if   format == 'intel':
        format = 'intel_syntax noprefix'
    elif format == 'att':
        format = 'att_syntax'
    elif output == 'repr':
        format = 'raw'
    from plasmasm import write_asm, constants
    write_asm.symbols_set_asm_format(pool, format)
    constants.Constant.out_format = format

if rw:
    from staticasm.pic_tracking import analyze_PIC
    analyze_PIC(pool)
    from staticasm.stack_tracking import analyze_stack
    analyze_stack(pool)

if dead:
    from staticasm.dead_registers import analyze_dead
    analyze_dead(pool)

if dot_file != None:
    from plasmasm.utils import digraph_generate
    dot_file_fd = open("%s.dot"%dot_file,'w')
    dot_file_fd.write(digraph_generate(pool.symbols, arrows=graph_type))
    dot_file_fd.write("\n")
    dot_file_fd.close()
if output == 0:
    raise ValueError("miasmX graph module disabled")
    """
    from miasmX.graph.graph_qt import graph_blocs
    class SymbolsForGraph(object):
        pass
    pool_for_graph = SymbolsForGraph()
    pool_for_graph.s = pool.symbols
    graph_blocs(None, pool_for_graph, blocs)
    sys.exit(0)
    """
if group_sections:
    by_section = {}
    for label in pool.blocs:
        section = label.section
        if ',' in section: section = section[:section.index(',')]
        if not section in by_section:
            by_section[section] = []
        by_section[section].append(label)
    pool.sections.eos = {}
    pool.blocs = []
    for section in sorted(by_section):
        pool.blocs.extend(by_section[section])
if output.startswith('asm'):
    if format is not None:
        pool.set_meta(format = format, force = True)
    res = pool.to_asm()
    if res[-1:] == '\n': res = res[:-1]
    print(res)
if output == 'objdump':
    print(pool.to_objdump(filename=args[0]))
if output == 'symbols':
    for s in pool.symbols:
        print("%-5s %r" % (s in pool.bloc_set, s))
if output == 'repr':
    try:
        from plasmasm.python.compatibility import sorted, reversed
    except ImportError:
        pass
    s_external = sorted(
        [s for s in pool.symbols if not s in pool.bloc_set],
        key=lambda x:(getattr(x,'section',''), getattr(x,'address',0), getattr(x,'name',None)))
    for s in pool.blocs + s_external:
        print(s.display())
    for s in sorted(pool.sections.asm_name):
        print(tuple((s,pool.sections.asm_name[s])))
    print(','.join(["%s:%r"%(_,pool.meta[_]) for _ in reversed(sorted(pool.meta))]))
if output == 'binary':
    outfile_fd = open(outfile,'wb')
    outfile_fd.write(pool.to_bin())
    outfile_fd.close()
