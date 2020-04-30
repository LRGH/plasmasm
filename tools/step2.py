# Copyright (C) 2020 Airbus, Louis.Granboulan@airbus.com
from plasmasm.python.utils import spawn

class Step2MetaClass(type):
    # metaclass with a syntax compatible with python2 and python3
    registered = []
    def __new__(cls, name, bases, dct):
        o = type.__new__(cls, name, bases, dct)
        if name != 'Step2Base':
            Step2MetaClass.registered.append(o)
        return o

class Step2Base(object):
    def __init__(self, argv):
        for idx in range(0, len(argv)):
            if not argv[idx].startswith('-'):
                break
        else:
            idx = len(argv)+1
        self.param = argv[:idx]
        self.obj_input = False
        self.obj_output = False
    def run(self, input, output):
        for suffix in ('.s', '.o'):
            if input.endswith(suffix):
                output += suffix
        spawn(['cp', input, output])
        return output

Step2Base = Step2MetaClass('Step2Base', (Step2Base,), {})

def Step2(argv):
    for cls in Step2MetaClass.registered:
        if argv[0] == cls.keyword:
            return cls(argv)
    print("Warning: %r not known, using generic step2" % argv[0])
    return Step2Base(argv)

class Step2_cp_asm(Step2Base):
    keyword = '-cp_asm'
    help = "For testing compile.py, copy intermediate asm"
    def __init__(self, argv):
        Step2Base.__init__(self, argv)
        assert len(self.param) == 1

class Step2_cp_obj(Step2Base):
    keyword = '-cp_obj'
    help = "For testing compile.py, copy intermediate object"
    def __init__(self, argv):
        Step2Base.__init__(self, argv)
        self.obj_input = True
        self.obj_output = True
        assert len(self.param) == 1
