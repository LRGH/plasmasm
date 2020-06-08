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
    ("switch_x86_linux.att.s",   "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux.att.s",   "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux.out",     "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux.out",     "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux_2.att.s", "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_2.att.s", "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux_2.o",     "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_2.o",     "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux_2.out",   "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_2.out",   "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux_3.att.s", "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_3.att.s", "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux_3.o",     "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_3.o",     "asm", {"cpu":"/AMOCO"}),
    #"switch_x86_linux_3.out",   "asm", {"cpu":"/MIASM"}), # FAIL
    #"switch_x86_linux_3.out",   "asm", {"cpu":"/AMOCO"}), # FAIL
    ("switch_x86_linux_4.s",     "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_4.s",     "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_linux_4.o",     "asm", {"cpu":"/MIASM"}),
    ("switch_x86_linux_4.o",     "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx.s",      "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx.o",      "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_macosx_1.s",    "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx_1.s",    "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_macosx_1.o",    "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx_1.o",    "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_macosx_2.s",    "asm", {"cpu":"/MIASM"}),
    #"switch_x86_macosx_2.s",    "asm", {"cpu":"/AMOCO"}), # very slow, 21s
    ("switch_x86_macosx_2.o",    "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx_2.o",    "asm2",{"cpu":"/AMOCO"}),
    ("switch_x86_macosx_3.s",    "asm", {"cpu":"/MIASM"}),
    #"switch_x86_macosx_3.s",    "asm", {"cpu":"/AMOCO"}), # slow, 7s
    ("switch_x86_macosx_3.o",    "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx_3.o",    "asm", {"cpu":"/AMOCO"}),
    ("switch_x86_macosx_4.s",    "asm", {"cpu":"/MIASM"}),
    #"switch_x86_macosx_4.s",    "asm", {"cpu":"/AMOCO"}), # slow, 7s
    ("switch_x86_macosx_4.o",    "asm", {"cpu":"/MIASM"}),
    ("switch_x86_macosx_4.o",    "asm2",{"cpu":"/AMOCO"}),
    ("switch_x64_linux.att.s",   "asm", {}),
    ("switch_x64_linux.o",       "asm", {}),
    ("switch_x64_linux.out",     "asm", {}),
    ("switch_x64_linux_2.att.s", "asm", {}), # slow,  3s
    ("switch_x64_linux_2.o",     "asm", {}),
    ("switch_x64_linux_2.out",   "asm", {}), # slow,  5s
    #"switch_x64_linux_3.att.s", "asm", {}), # very slow, 11s
    ("switch_x64_linux_3.o",     "asm", {}), # slow,  3s
    ("switch_x64_macosx.s",      "asm", {}),
    ("switch_x64_macosx.o",      "asm", {}),
    ("switch_x64_macosx_2.s",    "asm", {}),
    ("switch_x64_macosx_2.o",    "asm", {}),
    ("switch_x64_macosx_3.s",    "asm", {}),
    ("switch_x64_macosx_3.o",    "asm", {}),
    ("switch_x64_macosx_4.s",    "asm", {}), # slow,  5s
    ("switch_x64_macosx_4.o",    "asm", {}),
    #"switch_x64_macosx_5.s",    "asm", {}), # very slow
    ("switch_x64_macosx_5.o",    "asm", {}),
    #"switch_x64_macosx_6.s",    "asm", {}), # very slow
    ("switch_x64_macosx_6.o",    "asm", {}),
    #"switch_x64_macosx_7.s",    "asm", {}), # slow
    ("switch_x64_macosx_7.o",    "asm", {}),
    ("switch_x64_macosx_8.s",    "asm", {}),
    ("switch_x64_macosx_8.o",    "asm", {}),
]

if sys.version_info[0] == 2 and sys.version_info[1] <= 6:
    # Cannot use amoco, no OrderedDict
    all_tests = [ (f,s,k) for (f,s,k) in all_tests
                  if  not '_x64_' in f
                  and not '_sparc' in f
                  and k.get("cpu",None) != "/AMOCO" ]
if sys.version_info[0] == 2 and sys.version_info[1] <= 3:
    # Display of negative int make some tests fail
    all_tests = [ (f,s,k) for (f,s,k) in all_tests
                  if not f in (
                      'switch_x86_macosx_2.o',
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
