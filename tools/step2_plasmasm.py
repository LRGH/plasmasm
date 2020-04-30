# Copyright (C) 2020 Airbus, Louis.Granboulan@airbus.com
from tools.step2 import Step2Base
from tools.testing_plasmasm import hook_for_as_bugs
import sys

class Step2_parse_asm(Step2Base):
    keyword = '-parse_asm'
    help = "Testing plasmasm parsing of .s"
    def __init__(self, argv):
        Step2Base.__init__(self, argv)
    def run(self, input, output):
        output += '.s'
        if '-v' in sys.argv: print("plasmasm %r -> %r" % (input, output))
        from plasmasm.analyze_file import File
        options = {}
        for opt in self.param[1:]:
            if   opt == '-rw': options['rw'] = True
            elif opt == '-dead': options['dead'] = True
            elif opt.startswith('-c'): options['cpu'] = opt[2:]
            else: print("Invalid option %r" % opt)
        symbols = File().from_filename(input, **options)
        hook_for_as_bugs(symbols)
        symbols.to_asm(output_filename=output)
        return output

class Step2_parse_obj(Step2_parse_asm):
    keyword = '-parse_obj'
    help = "Testing plasmasm parsing of .o"
    def __init__(self, argv):
        Step2_parse_asm.__init__(self, argv)
        self.obj_input = True
