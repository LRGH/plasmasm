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

# We want to be able to verify warnings in non-regression test
from plasmasm.parse_asm import log
log_history = []
log.warning = lambda *args, **kargs: log_history.append(('warn',args,kargs))
log.error = lambda *args, **kargs: log_history.append(('error',args,kargs))

def test_empty():
    fd = open("non_regression/error_empty.s","rb")
    raw = fd.read()
    fd.close()
    pool = File().from_raw(raw, rw=True)
    assert pool.file_type == 'EMPTY'

def test_unknown():
    fd = open("non_regression/error_unknown.s","rb")
    raw = fd.read()
    fd.close()
    try:
        pool = File().from_raw(raw, rw=True)
        assert 0 == 'Should raise ValueError'
    except ValueError:
        e = sys.exc_info()[1]
        assert str(e) == "Unknown file type"

def test_file_no_quotes():
    global log_history
    log_history = []
    fd = open("non_regression/error_file_no_quotes.s","rb")
    raw = fd.read()
    fd.close()
    pool = File().from_raw(raw, rw=True)
    assert log_history == [
        ('error', ('%s name %r is not between quotes', 'file', 'a00.c'), {}),
        ('error', ('%s name %r is not between quotes', 'ident', 'GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3'), {}),
        ]

def test_section():
    fd = open("non_regression/error_section.s","rb")
    raw = fd.read()
    fd.close()
    try:
        pool = File().from_raw(raw, rw=True)
        assert 0 == 'Should raise ValueError'
    except ValueError:
        e = sys.exc_info()[1]
        assert str(e) == "Unknown section 'FOO'"

def test_no_backend():
    fd = open("non_regression/basic_x86_linux.att.s","rb")
    raw = fd.read()
    fd.close()
    try:
        pool = File().from_raw(raw, rw=True, cpu="/FOO")
        assert 0 == 'Should raise ValueError'
    except ValueError:
        e = sys.exc_info()[1]
        assert str(e) == "No FOO backend in I386-att"

# The following tests are errors that correspond to valid files for which
# the current implementation fails, but future implementations may succeed.
def test_macho_reloc():
    fd = open("non_regression/macho_reloc.o","rb")
    raw = fd.read()
    fd.close()
    try:
        pool = File().from_raw(raw, rw=True)
        assert 0 == 'Should raise ValueError'
    except ValueError:
        e = sys.exc_info()[1]
        assert str(e) == "Unknown Mach-O reloc 5;2;0 on cpu X86_64"
