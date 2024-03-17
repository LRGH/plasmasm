#! /usr/bin/env python

from distutils.core import setup

setup(
    name = 'PlasmASM',
    version = '0.1',    
    packages = ['plasmasm', 'plasmasm.arch', 'plasmasm.python', 'staticasm', 'tools'],
    requires = ['python (>= 2.3)'],
    scripts = ['tools/disass.py', 'tools/compile.py'],
    # Metadata
    author = 'Louis Granboulan',
    author_email = 'Louis.Granboulan(at)airbus.com',
    description = 'PlasmASM: asm and binary manipulation library',
    license = 'Apache 2.0',
    url = 'https://github.com/LRGH/plasmasm',
    # keywords = '',
)

