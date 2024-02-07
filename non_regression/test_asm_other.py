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
    ("other_x86_linux.att.s",   "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux.att.s",   "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux.o",       "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux.o",       "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux.out",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux.out",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_2.o",     "asm", {"cpu":"/MIASM"}), # slow,  3s
    ("other_x86_linux_2.o",     "asm2",{"cpu":"/AMOCO"}), # slow,  3s
    ("other_x86_linux_3.att.s", "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_3.att.s", "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_3.o",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_3.o",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_5.s",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_5.s",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_5.o",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_5.o",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_7.s",     "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_7.s",     "asm2",{"cpu":"/AMOCO"}), # very slow, 15s
    #"other_x86_linux_7.o",     "asm", {"cpu":"/MIASM"}), # extremely slow, 32s
    ("other_x86_linux_7.o",     "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_8.o",     "asm", {"cpu":"/MIASM"}), # slow,  5s
    ("other_x86_linux_8.o",     "asm2",{"cpu":"/AMOCO"}), # slow,  5s
    ("other_x86_linux_9.s",     "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_9.s",     "asm2",{"cpu":"/AMOCO"}), # very slow, 15s
    #"other_x86_linux_9.o",     "asm", {"cpu":"/MIASM"}), # extremely slow, 43s
    ("other_x86_linux_9.o",     "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_10.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_10.s",    "asm", {"cpu":"/AMOCO"}), # slow,  5s
    ("other_x86_linux_10.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_10.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_11.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_11.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_11.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_11.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_13.s",    "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_13.s",    "asm2",{"cpu":"/AMOCO"}), # very slow, 14s
    ("other_x86_linux_13.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_13.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_14.s",    "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_14.s",    "asm2",{"cpu":"/AMOCO"}), # very slow, 27s
    ("other_x86_linux_14.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_14.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_15.s",    "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_15.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_15.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_15.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_16.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_16.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_16.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_16.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_17.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_17.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_17.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_17.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_20.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_20.s",    "asm2",{"cpu":"/AMOCO"}), # slow,  8s
    ("other_x86_linux_20.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_20.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_22.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_22.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_22.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_22.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_23.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_23.s",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_23.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_23.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_24.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_24.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_24.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_24.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_25.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_25.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_25.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_25.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_26.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_26.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_26.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_26.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_27.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_27.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_27.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_27.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_28.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_28.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_28.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_28.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_29.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_29.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_29.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_29.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_30.s",    "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_30.s",    "asm", {"cpu":"/AMOCO"}), # slow,  9s
    ("other_x86_linux_30.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_30.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_31.s",    "asm", {"cpu":"/MIASM"}),
    #"other_x86_linux_31.s",    "asm", {"cpu":"/AMOCO"}), # very slow, 12s
    ("other_x86_linux_31.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_31.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_32.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_32.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_32.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_32.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_33.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_33.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_33.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_33.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_34.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_34.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_34.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_34.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_35.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_35.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_35.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_35.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_36.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_36.s",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_36.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_36.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_37.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_37.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_37.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_37.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_38.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_38.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_39.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_39.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_39.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_39.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_40.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_40.s",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_40.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_40.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_41.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_41.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_41.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_41.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_42.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_42.s",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_42.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_42.o",    "asm2",{"cpu":"/AMOCO"}),
    ("other_x86_linux_43.s",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_43.s",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_43.o",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_43.o",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux.mingw.s",   "asm", {}),
    ("other_x86_linux_1.mingw.s", "asm", {}),
    ("other_x86_linux_1.obj",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_1.obj",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_1.exe",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_1.exe",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_2.mingw.s", "asm", {}),
    ("other_x86_linux_2.exe",     "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_2.exe",     "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_44.mingw.s","asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_44.mingw.s","asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_44.obj",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_44.obj",    "asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_45.mingw.s","asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_45.mingw.s","asm", {"cpu":"/AMOCO"}),
    ("other_x86_linux_45.obj",    "asm", {"cpu":"/MIASM"}),
    ("other_x86_linux_45.obj",    "asm2",{"cpu":"/AMOCO"}),
    #"other_x64_linux.att.s",   "asm", {}), # very slow, 10s
    ("other_x64_linux.o",       "asm", {}), # slow,  3s
    #"other_x64_linux_2.att.s", "asm", {}), # very slow, 13s
    ("other_x64_linux_2.o",     "asm", {}), # slow,  3s
    #"other_x64_linux_3.att.s", "asm", {}), # very slow, 31s
    ("other_x64_linux_3.o",     "asm", {}), # slow,  5s
    ("other_x64_linux_4.att.s", "asm", {}),
    ("other_x64_linux_4.o",     "asm", {}),
    ("other_x64_linux_5.att.s", "asm", {}),
    ("other_x64_linux_5.o",     "asm", {}),
    ("other_x64_linux_6.att.s", "asm", {}),
    ("other_x64_linux_6.o",     "asm", {}),
    #"other_x64_linux_7.att.s", "asm", {}), # very slow, 15s
    ("other_x64_linux_7.o",     "asm", {}),
    ("other_x64_linux_8.att.s", "asm", {}), # slow,  6s
    ("other_x64_linux_8.o",     "asm", {}),
    ("other_x64_linux_9.att.s", "asm", {}),
    ("other_x64_linux_9.o",     "asm", {}),
    ("other_x64_linux_10.att.s","asm", {}), # slow,  3s
    ("other_x64_linux_10.o",    "asm", {}),
    #"other_x64_linux_11.att.s","asm", {}), # very slow,  8s
    ("other_x64_linux_11.o",    "asm", {}), # slow,  4s
    ("other_x64_linux_12.s",    "asm", {}),
    ("other_x64_linux_12.o",    "asm", {}),
    ("other_x64_linux_13.s",    "asm", {}),
    ("other_x64_linux_13.o",    "asm", {}),
    ("other_x64_linux_14.s",    "asm", {}),
    ("other_x64_linux_14.o",    "asm", {}),
    ("other_x64_linux_19.s",    "asm", {}),
    ("other_x64_linux_19.o",    "asm", {}),
    ("other_x64_linux_20.s",    "asm", {}),
    ("other_x64_linux_20.o",    "asm", {}),
    ("other_x64_linux_21.s",    "asm", {}),
    ("other_x64_linux_21.o",    "asm", {}),
    ("other_sparc.s",           "asm", {}),
    ("other_sparc.o",           "asm", {}),
    ("other_sparc_1.s",         "asm", {}),
    ("other_sparc_1.o",         "asm", {}),
    ("other_sparc_2.o",         "asm", {}),
    ("other_sparc_3.s",         "asm", {}),
    ("other_sparc_3.o",         "asm", {}),
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
                      'other_x86_linux_2.o',
                      'other_x86_linux_5.o',
                      'other_x86_linux_23.o',
                      'other_x86_linux_30.o',
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
