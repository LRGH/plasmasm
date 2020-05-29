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
    ("other_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx.s",      "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx.o",      "asm2",{"cpu":"/AMOCO"}),
    #"other_x86_macosx_1.s",    "fail",{"cpu":"/MIASM"}), # fail
    #"other_x86_macosx_1.s",    "fail",{"cpu":"/AMOCO"}), # fail
    #"other_x86_macosx_1.o",    "fail",{"cpu":"/MIASM"}), # fail in 153s
    #"other_x86_macosx_1.o",    "asm", {"cpu":"/AMOCO"}), # extremely slow, 75s
    ("other_x86_macosx_4.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_4.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_4.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_4.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx_5.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_5.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_5.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_5.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx_6.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_6.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_6.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_6.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx_7.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_7.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_7.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_7.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_8.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_8.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_8.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_8.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_9.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_9.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_9.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_9.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_10.s",   "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_10.s",   "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_10.o",   "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_10.o",   "asm", {"cpu":"/AMOCO"}),
    #"other_x86_macosx_11.s",   "asm", {"cpu":"/MIASM"}),
    #"other_x86_macosx_11.s",   "asm", {"cpu":"/AMOCO"}),
    #"other_x86_macosx_11.o",   "asm", {"cpu":"/MIASM"}), # fail, _usage does not return
    #"other_x86_macosx_11.o",   "asm", {"cpu":"/AMOCO"}), # fail, _usage does not return
    ("other_x86_macosx_12.s",   "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_12.s",   "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_13.s",   "asm", {"cpu":"/MIASM"}),
    #"other_x86_macosx_13.s",   "asm", {"cpu":"/AMOCO"}),
    #"other_x86_macosx_13.o",   "asm", {"cpu":"/MIASM"}),
    #"other_x86_macosx_13.o",   "asm", {"cpu":"/AMOCO"}),
    ("other_x86_macosx_14.intel.s","asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_15.intel.s","asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_16a.s",  "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_16a.s",  "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx_16a.o",  "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_16a.o",  "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx_16b.s",  "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_16b.s",  "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_macosx_16b.o",  "asm", {"cpu":"/MIASM"}),
    ("other_x86_macosx_16b.o",  "asm2",{"cpu":"/AMOCO"}),
    ("other_x64_macosx_1.s",    "asm", {}),
    ("other_x64_macosx_1.o",    "asm", {}),
    ("other_x64_macosx_2.s",    "asm", {}),
    ("other_x64_macosx_2.o",    "asm", {}),
    ("other_x64_macosx_3.s",    "asm", {}), # slow,  4s
    ("other_x64_macosx_3.o",    "asm", {}),
    #"other_x64_macosx_4.s",    "asm", {}), # very slow, 14s
    ("other_x64_macosx_4.o",    "asm", {}),
    ("other_x64_macosx_5.s",    "asm", {}), # slow,  4s
    ("other_x64_macosx_5.o",    "asm", {}),
    ("other_x64_macosx_6.s",    "asm", {}),
    ("other_x64_macosx_6.o",    "asm", {}),
    #"other_x64_macosx_7.s",    "asm", {}), # very slow, 18s
    ("other_x64_macosx_7.o",    "asm", {}), # very slow, 10s
    ("other_x64_macosx_8.s",    "asm", {}),
    ("other_x64_macosx_8.o",    "asm", {}),
    ("other_x64_macosx_9.s",    "asm", {}),
    ("other_x64_macosx_9.o",    "asm", {}),
]

if sys.version_info[0] == 2 and sys.version_info[1] <= 6:
    # Cannot use amoco, no OrderedDict
    all_tests = [ (f,s,k) for (f,s,k) in all_tests
                  if  not '_x64_' in f
                  and k.get("cpu",None) != "/AMOCO" ]
if sys.version_info[0] == 2 and sys.version_info[1] <= 3:
    # Display of negative int make some tests fail
    all_tests = [ (f,s,k) for (f,s,k) in all_tests
                  if not f in (
                      'other_x86_macosx.o',
                      'other_x86_macosx_9.o',
                  ) ]

def test_io(file, suffix, kargs):
    fd = open("non_regression/"+file,"rb")
    raw = fd.read()
    fd.close()
    fd = open("non_regression/"+file+"."+suffix,"r")
    res = fd.read()
    fd.close()
    pool = File().from_raw(raw, rw=True, **kargs)
    assert pool.to_asm() == res
test_io = pytest.mark.parametrize("file, suffix, kargs", all_tests)(test_io)
