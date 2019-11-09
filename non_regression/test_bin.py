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
    ("other_x86_linux_27.o",    "bin",  {"cpu":"/MIASM"}),
    ("comm_x86_linux.o",        "bin",  {}),
    #"weak_x86_linux.o",        "bin",  {}), # weak blocs missing
    ("reloc_x86_linux.o",       "bin",  {}),
    ("other_x86_linux.o",       "bin",  {}),
    ("other_x86_linux_5.o",     "bin",  {}),
    ("other_x86_linux_11.o",    "bin",  {}),
    ("other_x86_linux_16.o",    "bin",  {}),
    ("other_x86_linux_26.o",    "bin",  {}),
    ("other_x86_linux_39.o",    "bin",  {}),
]

if sys.version_info[0] == 2 and sys.version_info[1] <= 6:
    # Cannot use amoco, no OrderedDict
    all_tests = [ (f,s,k) for (f,s,k) in all_tests
                  if  not '_x64_' in f
                  and not '_sparc' in f
                  and k.get("cpu",None) != "/AMOCO" ]

def test_io(file, suffix, kargs):
    fd = open("non_regression/"+file,"rb")
    raw = fd.read()
    fd.close()
    fd = open("non_regression/"+file+"."+suffix,"rb")
    res = fd.read()
    fd.close()
    pool = File().from_raw(raw, **kargs)
    assert pool.to_bin() == res
test_io = pytest.mark.parametrize("file, suffix, kargs", all_tests)(test_io)
