# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    import pytest
except:
    from run_tests import pytest
import sys, os.path
basedir = os.path.dirname(os.path.dirname(__file__))
sys.path.append(basedir)
from plasmasm.analyze_file import File
# To be able to import elfesteem in the parent directory, with python3
sys.path.append(os.path.dirname(basedir)+'/elfesteem')

all_tests = [
    ("basic_x86_linux.o",       "repr",  {"cpu":"/MIASM"}),
    ("basic_x86_linux.o",       "repr2", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.o",       "reprW", {"cpu":"/MIASM","rw":True}),
    ("basic_x86_linux.o",       "reprW2",{"cpu":"/AMOCO","rw":True}),
    ("switch_x86_linux.o",      "repr",  {"cpu":"/MIASM"}),
    ("switch_x64_macosx.o",     "repr",  {}),
    # Next one uses a .plasmasm helper to move symbols from BSS to COM
    ("dot_plasmasm_b0.exe",     "repr", {}),
    ("dot_plasmasm_c9.o",       "repr", {}),
    ("dot_plasmasm_c9.out",     "repr", {}),
    ("dot_plasmasm_d2.out",     "repr", {}),
]

if sys.version_info[0] == 2 and sys.version_info[1] <= 6:
    # Cannot use amoco, no OrderedDict
    all_tests = [ (f,s,k) for (f,s,k) in all_tests
                  if  not '_x64_' in f
                  and not '_sparc' in f
                  and k.get("cpu",None) != "/AMOCO" ]
    try:    
        from plasmasm.python.compatibility import sorted, reversed
    except ImportError:
        pass

def test_io(file, suffix, kargs):
    pool = File().from_filename("non_regression/"+file, **kargs)
    fd = open("non_regression/"+file+"."+suffix,"r")
    res = fd.read()
    fd.close()
    if "rw" in kargs:
        # Same output as disass.py -rLWT
        pool.arch.set_asm_format('att_syntax')
        pool.arch.long_display = True
    else:
        # Same output as disass.py -r
        pool.arch.set_asm_format('raw')
        from plasmasm import constants
        constants.Constant.out_format = 'raw'
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
    assert rep == res
test_io = pytest.mark.parametrize("file, suffix, kargs", all_tests)(test_io)
