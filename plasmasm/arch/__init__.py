# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import os, imp

# List all available CPUs
__dir__ = os.path.dirname(__file__)
for listdir in os.walk(__dir__): break
CPUs = {}
for file in [ _[:-3] for _ in listdir[2] if _.endswith('.py') ]:
    if file.startswith('_') or not '_' in file:
        pass
    else:
        cpu, backend = file[:file.index('_')], file[file.index('_')+1:]
        if not cpu in CPUs: CPUs[cpu] = []
        CPUs[cpu].append(backend)
del file, listdir

# For I386, we prefer MIASM
CPUs['I386'] = ['MIASM', 'AMOCO']

def imp_load_module(name, fp, pathname, description):
    try:
        module = imp.load_module(name, fp, pathname, description)
    finally:
        if fp is not None: fp.close()
    return module

# Import CPU metadata
def import_cpu_meta(cpu):
    fp, pathname, description = imp.find_module(cpu, [__dir__])
    return imp_load_module(cpu, fp, pathname, description)

# Import CPU analyzer
def import_cpu_backend(cpu, backend):
    return import_cpu_meta(cpu+'_'+backend)
