# Description
PlasmASM is a framework that can do asm and binary manipulation in
a unified way.

There are many other tools that are better suited for reverse-engineering.
The goal of PlasmASM is to enable automatic modification. One application
is software obfuscation.

# Short description of the framework

## Internal representation
The main internal representation is a collection of basic blocs.
Each basic bloc is labelled by a symbol, and may contain a list
of lines.

A symbol has a name and attributes.
Standard attributes are:
- the section
- its address (if read from a binary)
- the type (e.g. function, object)
- the binding (e.g. global, local)

A line may be a CPU instruction, or data.

In addition to this list of symbols, this representation optionally
includes:
- information on sections (attributes)
- other metadata (container type, compiler type and options, ...)

## Input and output
Either assembly or binary can be input and either assembly or binary
can be output.

When assembly is input and assembly is output, a use case is
the insertion of PlasmASM as an additional step during a
compilation, after assembly generation and before object file
generation.
Another use case is conversion of x86 assembly from AT&T syntax
to Intel syntax, or the reverse.

When binary is input and binary is output, a use case is the
modification of a binary of unknown source. Note that because
PlasmASM binary generation is still full of bugs, it is often
more robust to have PlasmASM generate assembly and then to
have as generate the binary.

# How to use PlasmASM

## Command-line use of PlasmASM

The file `disass.py` gives access to most functionalities of
PlasmASM: read asm or binary, output to asm that can be assembled
by GNU as, output to objdump-like syntax which can be used to
check the results of the binary parser, output of the internal
representation of symbols and basic blocs

Example, on a small program:
```
# Minimal C source
echo 'int main(int a, char **v){while(a>1){if(a%2)a/=2;else a=3*a+1;};return a;}'>a.c
# Create asm, object and executable binary
gcc -m32 -S a.c
gcc -m32 -c a.c
gcc -m32 a.c
# Look at the assembly
cat a.s
# Disass.py can generate a valid assembly code
python tools/disass.py -a a.s # input asm, output asm
python tools/disass.py -aI a.s # input asm, output asm Intel syntax
python tools/disass.py -a a.o # input object, output asm
python tools/disass.py -a a.out # input executable, output asm
python tools/disass.py -c /MIASM -a a.o # with miasmX backend (default)
python tools/disass.py -c /AMOCO -a a.o # with amoco backend
# Same for 64-bit
gcc -m64 -S -o a64.s a.c
gcc -m64 -c -o a64.o a.c
gcc -m64 -o a64.out a.c
python tools/disass.py -a a64.s # input asm, output asm (note that only amoco backend is available)
python tools/disass.py -aI a64.s # input asm, output asm Intel syntax
python tools/disass.py -a a64.o # input object, output asm
python tools/disass.py -a a64.out # input executable, output asm
```

This is more complicated on a larger program
```
# Default /bin/sh on Ubuntu 12.04
python tools/disass.py -a /bin/sh > sh.s
# It compiles
gcc -o sh sh.s
# Seems to be fully functional
./sh -c 'echo toto' # OK
./sh -c 'for i in a b; do echo $i; done' # OK
# Default /bin/ls on Ubuntu 12.04
python tools/disass.py -a /bin/ls > ls.s
# It compiles (some packages are needed)
apt-get install libacl1-dev
apt-get install libselinux1-dev
gcc -o ls ls.s -lrt -lacl -lselinux
# But is not functional at all
./ls # Segmentation fault
# NB: seems to work when run in gdb
```

The file `testing_plasmasm.py` is very useful for non-regression tests.
If takes .s or .o files as arguments, uses the parser of PlasmASM and
creates an assembly file with the `write_asm` module of PlasmASM.
Then it uses the native compiler to create object files, and compares
these object files with `objdump -drt` or `otool -tvj`
Note that sometimes the assembler has bugs (e.g. GNU as 2.14 or 2.15
changes the order of the arguments of `test %reg, %reg`, while the same
version of objdump is OK) and therefore there are special cases to make
`testing_plasmasm.py` succeed in case of assembler bugs.

## Use of PlasmASM as a framework

Once PlasmASM has generated an internal representation of its input,
this representation can be modified before generating some output.

`compile.py` aims at making it easier to use PlasmASM in a compilation
chain, where the intermediate result (assembly or object) of the
compilation of each file can be automatically modified.
With the syntax below, basic functions `-parse_asm` or `-parse_obj` can
be used to check that plasmasm will work well for a given os + compiler.
```
make test CC='compile.py -parse_asm gcc'
make test CC='compile.py -parse_obj gcc'
```
This can also be used to make automatic changes. A simple example is
included in `tools.step2_change`, which can be used in a compilation chain:
```
make test CC='compile.py -change gcc'
```
Or interactively with python:
```
>>> from plasmasm.analyze_file import File
>>> from tools.step2_change import change_ret
>>> f = './non_regression/sh_x86_linux_ubuntu1204'
>>> pool = File().from_filename(f, rw=True, dead=True)
>>> pool.arch.set_asm_format('att_syntax')
>>> change_ret(pool)
>>> pool.to_asm('/tmp/a.s')
gcc -o /tmp/sh /tmp/a.s
/tmp/sh -c 'for i in a b c; do echo x$i; done'
```

## .plasmasm helper files

If there exist a file having the same name as the input file, plus `.plasmasm`,
this file is used to describe how to complete the parsing of the input file.
Ideally, these helper file should not be useful, because everything should be
automatically deduced. However, there are cases where automatic deduction is
not possible : for example, when compiling C to an ELF object file, if a
global variable is unitialised, then it is in the COM section, and if this
global variable is initialised to zero, then it is in the .bss section. But
after linking with ld, both are in the .bss section: there is no way to
know what was in the C source.

The .plasmasm helper file should contain a function named "helper" with
an argument, the symbol pool. This function can make any modification to
the symbol pool.

# Requirements

## Python

PlasmASM can work with python >= 2.3, including python 3.
But some dependencies of PlasmASM need recent python.

## Dependencies

PlasmASM by itself does not include the analysis engine for any
type of CPU: additional modules are needed.
If they are not installed system-wide, it is recommended to install
them in the parent directory of PlasmASM.

- elfesteem

    Needed when binary files are input or output; not needed for asm
    input and output.
    The version of https://github.com/LRGH/elfesteem should be used.
    It works for python >= 2.3.

- amoco

    Used when working with IA32, X86_64 or SPARC.
    Available at https://github.com/LRGH/amoco ;
    Depends on https://github.com/LRGH/crysp , which should be installed too.
    It works for python >= 2.7.

- miasmX

    Used when working with IA32 or PowerPC.
    It is a heavy modification of miasm v1.
    Available on https://github.com/LRGH/miasmX
    It works for python >= 2.3.

    Note that PowerPC support is very incomplete.

    For the record, the most recent official repository of miasm v1 is
    https://github.com/cea-sec/miasm/tree/cecdf0da2ed0221c203af9157add30e2bff7dd8c
    from June 11, 2013

    Also includes a patched version of ply.


## Requirements

Note that to be able to do 32-bit compilations on 64-bit Linux, it depends
one the distribution. A list of required packages is collected at
http://www.cyberciti.biz/tips/compile-32bit-application-using-gcc-64-bit-linux.html

Note also that amoco needs pyparsing. The name of the package for Debian
or Ubuntu is python-pyparsing.

# Quick documentation: description of each file

- `analyze_file.py`
  Recognizes the file type (asm or binary -- ELF, PE, Mach-O).
  
  Detects which CPU it is, and parse the file, creating the internal
  representation.

- `parse_asm.py`
  Parser for asm files.

- `write_asm.py`
  Outputs the internal representation in asm, that can be input to GNU as.
  Outputs the internal represenattion in an objdump-lile format.

- `parse_bin.py`
  Parser for binary files.

- `write_bin.py`
  Creates an ELF object corresponding to the internal representation.
  TODO: other types of binary outputs.

- `compilers.py`
  Extension for parse_bin.py, with compiler-dependent stuff.

- `get_symbols.py`
  Extension for parse_bin.py, to extract symbols from various types of binaries.

- `symbols.py`
  Main data structures (symbol table, symbols, line, ...)

- `constants.py`
  Internal representation for lines that are constants (numeric,
  strings, labels, ...)

- `python/compatibility.py`
  Needed for plasmasm to be compatible with python2.3 to python3.4.

- `utils.py`
  Various additional functions, e.g. graph generation.

- `arch`
  Directory with cpu-dependent and backend-dependent definitions.
  
  Each CPU implementation should have the class Instruction which
  inherits from Line and implements basic functions (parse from text,
  from binary, some access to opname or operands), the class InstructionCFG
  which adds some computation of the CFG (by computing the possible
  destinations for branch instructions), the class InstructionRW
  which lists which registers are read or written (and is used for
  the computation of dead registers).
  - `__init__.py` contains functions for importing architectures by name
    and to list all available backends. It is made to be compatible with
    python2.3 to python 3.x.
  - `I386.py`, `X64.py`, `PPC.py`, `SPARC.py` contain cpu-dependent
    information:
    the name of the cpu as known by each container;
    the list of existing mnemonics, to help auto detection of assembly.
  - `I386_MIASM.py`, `I386_AMOCO.py`, `X64_AMOCO.py`, `PPC_MIASM.py`,
    `SPARC_AMOCO.py`
    contain the CPU implementations; the filename is `CPU_BACKEND.py`
    for an implementation of CPU based on BACKEND.

- `pic_tracking.py`
  When Position Independ Code is generated, there is a register that
  is used to memorize where the code has been loaded. The way it is
  done depends on the compiler, this module tracks this register, so
  we can use it when modifying the code.

- `stack_tracking.py`
  For X64, there is a "red zone" that we shall not overwrite when
  doing push/pop. This module tracks the red zone, so we can use
  the stack when modifying the code.

- `dead_registers.py`
  Dead registers are registers that are not used, and therefore
  can be used when modifying the code.

## Development status

[![Build Status](https://github.com/LRGH/plasmasm/actions/workflows/python-package.yml/badge.svg)](https://github.com/LRGH/plasmasm/actions/workflows/python-package.yml)
[![codecov](https://codecov.io/gh/LRGH/plasmasm/branch/master/graph/badge.svg)](https://codecov.io/gh/LRGH/plasmasm)
[![Code Quality](https://img.shields.io/lgtm/grade/python/g/LRGH/plasmasm.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/LRGH/plasmasm/context:python)
