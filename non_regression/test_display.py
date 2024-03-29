# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    import pytest
except:
    from run_tests import pytest
import sys, os.path
from run_tests import python_limitations
basedir = os.path.dirname(os.path.dirname(__file__))
sys.path.append(basedir)
from plasmasm.analyze_file import File
# To be able to import elfesteem in the parent directory, with python3
sys.path.append(os.path.dirname(basedir)+'/elfesteem')

all_tests = python_limitations([
    ("basic_x86_linux.o",       "repr",  {"cpu":"/MIASM"}),
    ("basic_x86_linux.o",       "repr2", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.o",       "reprW", {"cpu":"/MIASM","rw":True}),
    ("basic_x86_linux.o",       "reprW2",{"cpu":"/AMOCO","rw":True}),
    ("basic_x86_linux.o",       "reprD", {"cpu":"/MIASM","rw":True,"dead":True}),
    ("basic_x86_linux.o",       "reprD2",{"cpu":"/AMOCO","rw":True,"dead":True}),
    ("switch_x86_linux.o",      "repr",  {"cpu":"/MIASM"}),
    ("other_x86_linux_25.o",    "repr",  {"cpu":"/MIASM"}),
    ("other_x86_linux_25.o",    "repr2", {"cpu":"/AMOCO"}),
    ("other_x86_linux_25.o",    "reprP", {"cpu":"/MIASM","rw":True,"pic":True}),
    ("other_x86_linux_25.o",    "reprP2",{"cpu":"/AMOCO","rw":True,"pic":True}),
    ("other_x86_linux_25.o",    "reprD", {"cpu":"/MIASM","rw":True,"pic":True,"dead":True}),
    ("other_x86_linux_25.o",    "reprD2",{"cpu":"/AMOCO","rw":True,"pic":True,"dead":True}),
    ("comm_x86_macosx.o",       "repr",  {"cpu":"/MIASM"}),
    ("comm_x86_macosx.o",       "repr2", {"cpu":"/AMOCO"}),
    ("comm_x86_macosx.o",       "reprP", {"cpu":"/MIASM","rw":True,"pic":True}),
    ("comm_x86_macosx.o",       "reprP2",{"cpu":"/AMOCO","rw":True,"pic":True}),
    ("comm_x86_macosx.o",       "reprD", {"cpu":"/MIASM","rw":True,"pic":True,"dead":True}),
    ("comm_x86_macosx.o",       "reprD2",{"cpu":"/AMOCO","rw":True,"pic":True,"dead":True}),
    ("basic_x64_linux.o",       "repr",  {}),
    ("basic_x64_linux.o",       "reprP", {"rw":True,"pic":True}),
    ("basic_x64_linux.o",       "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_4.o",     "repr",  {}),
    ("other_x64_linux_4.o",     "reprP", {"rw":True,"pic":True}),
    ("other_x64_linux_4.o",     "reprD", {"rw":True,"pic":True,"dead":True}),
    ("switch_x64_macosx.o",     "repr",  {}),
    # Next one uses a .plasmasm helper to move symbols from BSS to COM
    ("dot_plasmasm_b0.exe",     "repr", {}),
    ("dot_plasmasm_c9.o",       "repr", {}),
    ("dot_plasmasm_c9.out",     "repr", {}),
    ("dot_plasmasm_d2.out",     "repr", {}),
    # For coverage of staticasm/pic_tracking
    ("other_x86_linux_11.o",    "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x86_macosx.o",      "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x86_macosx_5.o",    "reprD", {"rw":True,"pic":True,"dead":True}),
    # For coverage of staticasm/stack_tracking
    ("asm_x64_macosx.o",        "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_6.o",     "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_15.s",    "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_15.o",    "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_16.s",    "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_17.o",    "reprD", {"rw":True,"pic":True,"dead":True}),
    ("other_x64_linux_18.o",    "reprD", {"rw":True,"pic":True,"dead":True}),
    ("switch_x64_linux_3.o",    "reprD", {"rw":True,"pic":True,"dead":True}),
    # For coverage of staticasm/dead_registers
    ("switch_x86_linux_4.s",    "reprD", {"rw":True,"pic":True,"dead":True}),
])

if sys.version_info[0] == 2 and sys.version_info[1] <= 6:
    try:    
        from plasmasm.python.compatibility import sorted, reversed
    except ImportError:
        pass

def test_io(file, suffix, kargs):
    pool = File().from_filename("non_regression/"+file, **kargs)
    fd = open("non_regression/"+file+"."+suffix,"r")
    res = fd.read()
    fd.close()
    from plasmasm import constants
    if "rw" in kargs:
        # Same output as disass.py -rLWT
        pool.arch.set_asm_format('att_syntax')
        pool.arch.long_display = True
        constants.Constant.out_format = None
    else:
        # Same output as disass.py -r
        pool.arch.set_asm_format('raw')
        constants.Constant.out_format = 'raw'
    if "pic" in kargs:
        from staticasm.pic_tracking import analyze_PIC
        analyze_PIC(pool)
        from staticasm.stack_tracking import analyze_stack
        analyze_stack(pool)
    if "dead" in kargs:
        from staticasm.dead_registers import analyze_dead
        analyze_dead(pool)
    rep = [ _.display()
        for _ in pool.blocs ]
    rep += [ _.display()
        for _ in sorted(
            [s for s in pool.symbols if not s in pool.bloc_set],
            key=lambda x:(getattr(x,'section',''),
                          getattr(x,'address',0),
                          getattr(x,'name',None))) ]
    rep += [ str(tuple((s,pool.sections.asm_name[s])))
        for s in sorted(pool.sections.asm_name) ]
    rep += [ ','.join(["%s:%r"%(_,pool.meta[_])
        for _ in reversed(sorted(pool.meta))]) ]
    rep += [ '' ]
    rep = '\n'.join(rep)
    if sys.version_info[0] == 2 and sys.version_info[1] <= 3:
        # long are displayed differently
        import re
        rep = re.sub('([0-9]+)L', '\\1', rep)
    assert rep == res
test_io = pytest.mark.parametrize("file, suffix, kargs", all_tests)(test_io)
