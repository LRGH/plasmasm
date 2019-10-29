#! /usr/bin/env python
# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
# Simulates pytest, for old python e.g. python2.3
class any_object(object):
    pass
pytest = any_object()
pytest.mark = any_object()
pytest.mark.parametrize = lambda *args:(lambda _:_)

# How to import by name, compatible with python2 and python3
import sys, os, imp
__dir__ = os.path.dirname(__file__)
def import_by_name(name):
    fp, pathname, description = imp.find_module(name, [__dir__])
    try:
        module = imp.load_module(name, fp, pathname, description)
    finally:
        if fp is not None: fp.close()
    return module

def run_test(test_file):
    module = import_by_name(test_file)
    for file, suffix, kargs in module.all_tests:
        print("TEST_IO on %r" % file)
        module.test_io(file, suffix, kargs)

if __name__ == "__main__":
    for test_file in sys.argv[1:]:
        run_test(test_file)
