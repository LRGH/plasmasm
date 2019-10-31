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
    ("basic_x86_linux.intel.s", "asm", {"cpu":"/MIASM"}),
    #("basic_x86_linux.intel.s", "asm", {"cpu":"/AMOCO"}), # no Intel for amoco
    ("basic_x86_linux.att.s",   "asm", {"cpu":"/MIASM"}),
    ("basic_x86_linux.att.s",   "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("basic_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.out",     "asm", {"cpu":"/MIASM"}),
    ("basic_x86_linux.out",     "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.strip",   "asm", {"cpu":"/MIASM"}),
    ("basic_x86_linux.strip",   "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.mingw.s", "asm", {"cpu":"/MIASM"}),
    #("basic_x86_linux.mingw.s", "asm", {"cpu":"/AMOCO"}), # no Intel for amoco
    ("basic_x86_linux.obj",     "asm", {"cpu":"/MIASM"}),
    ("basic_x86_linux.obj",     "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_linux.exe",     "asm", {"cpu":"/MIASM"}),
    ("basic_x86_linux.exe",     "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("basic_x86_macosx.s",      "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("basic_x86_macosx.o",      "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_macosx.out",    "asm", {"cpu":"/MIASM"}),
    ("basic_x86_macosx.out",    "asm", {"cpu":"/AMOCO"}),
    ("basic_x86_macosx.strip",  "asm", {"cpu":"/MIASM"}), # Should detect main
    ("basic_x86_macosx.strip",  "asm", {"cpu":"/AMOCO"}), # Should detect main
    #("basic_x64_linux.intel.s", "asm", {}), # no Intel for amoco
    ("basic_x64_linux.att.s",   "asm", {}),
    ("basic_x64_linux.o",       "asm", {}),
    #("basic_x64_linux.out",     "asm", {}),
    #("basic_x64_linux.strip",   "asm", {}),
    ("basic_x64_macosx.s",      "asm", {}),
    ("basic_x64_macosx.o",      "asm", {}),
    ("basic_x64_macosx.out",    "asm", {}),
    ("basic_x64_macosx.strip",  "asm", {}), # Should detect main
    ("basic_sparc.s",           "asm", {}),
    ("basic_sparc.o",           "asm", {}),
    #("basic_sparc.out",         "asm", {}),
    #("basic_sparc.strip",       "asm", {}),

    ("string_x86_linux.intel.s", "asm", {"cpu":"/MIASM"}),
    ("string_x86_linux.att.s",   "asm", {"cpu":"/MIASM"}),
    ("string_x86_linux.att.s",   "asm", {"cpu":"/AMOCO"}),
    ("string_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("string_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("string_x86_linux.out",     "asm", {"cpu":"/MIASM"}),
    ("string_x86_linux.out",     "asm", {"cpu":"/AMOCO"}),
    ("string_x86_linux.mingw.s", "asm", {"cpu":"/MIASM"}),
    ("string_x86_linux.exe",     "asm", {"cpu":"/MIASM"}),
    ("string_x86_linux.exe",     "asm", {"cpu":"/AMOCO"}),
    ("string_sparc.s",           "asm", {}),
    ("string_sparc.o",           "asm", {}),
    ("string_sparc.out",         "asm", {}),
    ("zero_x86_linux.att.s",   "asm", {"cpu":"/MIASM"}),
    ("zero_x86_linux.att.s",   "asm", {"cpu":"/AMOCO"}),
    ("zero_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("zero_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("zero_x86_linux.out",     "asm", {"cpu":"/MIASM"}),
    ("zero_x86_linux.out",     "asm", {"cpu":"/AMOCO"}),
    ("zero_x86_linux.mingw.s", "asm", {"cpu":"/MIASM"}),
    ("zero_x86_linux.exe",     "asm", {"cpu":"/MIASM"}),
    ("zero_x86_linux.exe",     "asm", {"cpu":"/AMOCO"}),
    ("zero_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("zero_x86_macosx.s",      "asm", {"cpu":"/AMOCO"}),
    ("zero_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("zero_x86_macosx.o",      "asm", {"cpu":"/AMOCO"}),
    ("zero_x86_macosx.out",    "asm", {"cpu":"/MIASM"}),
    ("zero_x86_macosx.out",    "asm", {"cpu":"/AMOCO"}),
    ("comm_x86_linux.intel.s", "asm", {"cpu":"/MIASM"}),
    ("comm_x86_linux.att.s",   "asm", {"cpu":"/MIASM"}),
    ("comm_x86_linux.att.s",   "asm", {"cpu":"/AMOCO"}),
    ("comm_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("comm_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("comm_x86_linux.out",     "asm", {"cpu":"/MIASM"}),
    ("comm_x86_linux.out",     "asm", {"cpu":"/AMOCO"}),
    ("comm_x86_linux.mingw.s", "asm", {"cpu":"/MIASM"}),
    ("comm_x86_linux.exe",     "asm", {"cpu":"/MIASM"}),
    ("comm_x86_linux.exe",     "asm", {"cpu":"/AMOCO"}),
    ("comm_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("comm_x86_macosx.s",      "asm", {"cpu":"/AMOCO"}),
    ("comm_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("comm_x86_macosx.o",      "asm2",{"cpu":"/AMOCO"}),
    ("comm_x86_macosx.out",    "asm", {"cpu":"/MIASM"}),
    ("comm_x86_macosx.out",    "asm2",{"cpu":"/AMOCO"}),
    ("comm_sparc.s",           "asm", {}),
    ("comm_sparc.out",         "asm", {}),
    ("p2align_x86_linux.att.s",   "asm", {}),
    ("p2align_x86_linux.o",       "asm", {}),
    ("p2align_x86_linux.out",     "asm", {}),
    ("p2align_x86_macosx.s",      "asm", {}),
    ("p2align_x86_macosx.o",      "asm", {}),
    ("weak_x86_linux.att.s",      "asm", {}),
    ("weak_x86_linux.o",          "asm", {}),
    ("weak_x86_linux.out",        "asm", {}),
    ("weakref_x86_linux.att.s",   "asm", {}),
    ("weakref_x86_linux.o",       "asm", {}),
    ("weakref_x86_linux.out",     "asm", {}),
    ("gnu_unique_x64_linux.att.s",   "asm", {}),
    ("gnu_unique_x64_linux.o",       "asm", {}),
    ("asm_x86_linux.s",       "asm", {"cpu":"/MIASM"}),
    ("asm_x86_linux.s",       "asm", {"cpu":"/AMOCO"}),
    ("asm_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("asm_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("asm_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("asm_x86_macosx.s",      "asm2",{"cpu":"/AMOCO"}),
    ("asm_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("asm_x86_macosx.o",      "asm2",{"cpu":"/AMOCO"}),
    ("asm_x64_macosx.s",      "asm", {}),
    ("asm_x64_macosx.o",      "asm", {}),
    ("sattr_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("sattr_x86_macosx.s",      "asm", {"cpu":"/AMOCO"}),
    ("sattr_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("sattr_x86_macosx.o",      "asm", {"cpu":"/AMOCO"}),
    ("constructor_x86_macosx.s",      "asm", {"cpu":"/MIASM"}),
    ("constructor_x86_macosx.s",      "asm", {"cpu":"/AMOCO"}),
    ("constructor_x86_macosx.o",      "asm", {"cpu":"/MIASM"}),
    ("constructor_x86_macosx.o",      "asm", {"cpu":"/AMOCO"}),
    ("constructor_x64_macosx.s",      "asm", {}),
    ("constructor_x64_macosx.o",      "asm", {}),
    ("clang1001_x86_macosx.s",   "asm", {"cpu":"/MIASM"}),
    ("clang1001_x86_macosx.s",   "asm", {"cpu":"/AMOCO"}),
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
    fd = open("non_regression/"+file+"."+suffix,"r")
    res = fd.read()
    fd.close()
    pool = File().from_raw(raw, rw=True, **kargs)
    assert pool.to_asm() == res
test_io = pytest.mark.parametrize("file, suffix, kargs", all_tests)(test_io)
