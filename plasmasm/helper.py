# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
from plasmasm.symbols import comm_symbol_section
def helper_common(pool, symbols):
    # It is impossible, from the .out/.exe file, to determine whether a
    # variable was COM or bss.
    # Cf. the difference between d2 and d2bis .o which does not
    # translate into a difference in the .out
    for label in symbols:
        pool.find_symbol(name = label).section = comm_symbol_section

def helper_order(pool, symbols, last = False):
    # The symbol table is forced into a different order
    # If blocs are contiguous, other blocs in the same section
    # should not be inserted in the middle
    symbols = [ pool.find_symbol(name = _) for _ in symbols ]
    blocs = []
    previous_section = None
    next_per_section = {}
    for label in symbols:
        if label in blocs:
            continue
        if label.section in next_per_section:
            for _ in next_per_section[label.section]:
                if _ in symbols: break
                if not _ in blocs: blocs.append(_)
            del next_per_section[label.section]
        if not label in blocs:
            blocs.append(label)
        next_per_section[label.section] = []
        while label.nxt is not None:
            label = label.nxt
            next_per_section[label.section].append(label)
    if last:
        pool.blocs = [ _ for _ in pool.blocs if not _ in blocs ] + blocs
    else:
        pool.blocs = blocs + [ _ for _ in pool.blocs if not _ in blocs ]

try:
    from plasmasm.python.compatibility import set
except ImportError:
    pass

def helper_parse(pool, entrypoints):
    # Parts of the binary file should be parsed
    from plasmasm.parse_bin import create_text_bloc
    job_done = set([(_.section, _.address) for _ in pool.blocs])
    lab_done = set(pool.blocs)
    for section, address in entrypoints:
        label = pool.find_symbol(address = address, section = section)
        label.insert_bloc()
        create_text_bloc(label, lab_done, job_done, set())
