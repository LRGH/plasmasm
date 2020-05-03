# Copyright (C) 2020 Airbus, Louis.Granboulan@airbus.com
from tools.step2 import Step2Base
from staticasm.dead_registers import add_line_update_dead
import sys

def replace_line(label, lines, pos=None):
    # Replace line at pos in label with a list of lines
    label.lines.pop(pos)
    for line in reversed(lines):
       add_line_update_dead(label, line, pos=pos)

def change_ret(symbols):
    if not getattr(symbols.arch, 'CPU', None) in ('I386', 'X64'):
        return
    # Replace a ret at end of block with pop,jmp
    for label in symbols.blocs:
        if len(label.lines) == 0:
            continue
        l = label.lines[-1]
        if not hasattr(l, 'opname'):
            continue
        if l.opname != 'ret':
            continue
        if l.api_nb_arg() != 0:
            continue
        # We want to find a register that is available.
        # The logic below is not robust, but is OK as an example
        if symbols.arch.CPU == 'I386':
            # https://en.wikipedia.org/wiki/X86_calling_conventions
            # only eax, adx or ecx can be used
            # eax is used for return value
            # edx may be used for 64-bit return (don't have detection means yet)
            pop_reg = '%ecx'
            # ecx may be used for PIC register
            if hasattr(l, 'pic') and 'ecx' in l.pic[1]:
                continue
            replace_line(label, [
                "popl %s" % pop_reg,
                "jmp *%s" % pop_reg,
                ], pos=len(label.lines)-1)
        else:
            # rdx should be available
            pop_reg = '%rdx'
            replace_line(label, [
                "popq %s" % pop_reg,
                "jmp *%s" % pop_reg,
                ], pos=len(label.lines)-1)

class Step2_change(Step2Base):
    keyword = '-change'
    help = "Simple modification of assembly file"
    def __init__(self, argv):
        Step2Base.__init__(self, argv)
    def run(self, input, output):
        output += '.s'
        if '-v' in sys.argv: print("change %r -> %r" % (input, output))
        from plasmasm.analyze_file import File
        options = { 'rw': True, 'dead': True }
        for opt in self.param[1:]:
            if opt.startswith('-c'): options['cpu'] = opt[2:]
            else: print("Invalid option %r" % opt)
        symbols = File().from_filename(input, **options)
        if 'dead' in options:
            from staticasm.pic_tracking import analyze_PIC
            analyze_PIC(symbols)
            from staticasm.stack_tracking import analyze_stack
            analyze_stack(symbols)
            from staticasm.dead_registers import analyze_dead
            analyze_dead(symbols)
        change_ret(symbols)
        symbols.to_asm(output_filename=output)
        return output
