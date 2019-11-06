# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import os, sys

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

# Import CPU metadata
if sys.version_info >= (3, 5):
    import importlib.util
    def import_cpu_meta(cpu):
        file = '%s/%s.py' % (__dir__, cpu)
        module_spec = importlib.util.spec_from_file_location(cpu, file)
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)
        return module
else:
    import imp
    def import_cpu_meta(cpu):
        fp, pathname, description = imp.find_module(cpu, [__dir__])
        try:
            module = imp.load_module(cpu, fp, pathname, description)
        finally:
            if fp is not None: fp.close()
        return module

# Import CPU analyzer
def import_cpu_backend(cpu, backend):
    return import_cpu_meta(cpu+'_'+backend)
