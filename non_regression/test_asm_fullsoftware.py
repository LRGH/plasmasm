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
    # /bin/sh from Ubuntu 12.04
    ("sh_x86_linux_ubuntu1204", "asm", {"cpu":"/MIASM"}), # very slow, 22s
    ("sh_x86_linux_ubuntu1204", "asm2",{"cpu":"/AMOCO"}), # very slow, 21s
    # minigzip from zlib 1.2.8 compiled for Debian 8.3
    ("minigzip_x86_linux", "asm", {"cpu":"/MIASM"}), # very slow, 22s
    ("minigzip_x86_linux", "asm2",{"cpu":"/AMOCO"}), # very slow, 15s
    # minigzip from zlib 1.2.8 compiled for CentOS 4.8
    ("minigzip_x86_linux_2", "asm", {"cpu":"/MIASM"}), # very slow, 22s
    ("minigzip_x86_linux_2", "asm2",{"cpu":"/AMOCO"}), # very slow, 13s
    # aspell 0.60.6.1 compiled for Debian 8.3
    ("aspell_x86_linux", "asm", {"cpu":"/MIASM"}), # extremely slow, 77s
    ("aspell_x86_linux", "asm", {"cpu":"/AMOCO"}), # very slow, 36s
])

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
