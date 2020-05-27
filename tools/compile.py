#! /usr/bin/env python
# Copyright (C) 2020 Airbus, Louis.Granboulan@airbus.com
import sys, os
sys.path.insert(1, os.path.abspath(sys.path[0]+'/..'))

from plasmasm.python.utils import spawn

from tools.step2 import *
from tools.step2_plasmasm import *
from tools.step2_change import *

def usage():
    sys.stderr.write("Syntax:\tcompile.py [-v] <step2 definition> <compiler command>\n")
    sys.stderr.write("How does it work?\n")
    sys.stderr.write("\tcompile.py compiles in three steps\n")
    sys.stderr.write("\tStep 1: generation of an intermediate result\n")
    sys.stderr.write("\tStep 2: analysis or modification of this result\n")
    sys.stderr.write("\tStep 3: generation of the final result\n")
    sys.stderr.write("<step2 definition> can be used as shown below:\n")
    sys.stderr.write("\t(compiler command) gcc -c foo.c\n")
    for cls in Step2MetaClass.registered:
        sys.stderr.write("\tcompile.py %s gcc -c foo.c\n" % cls.keyword)
        sys.stderr.write("\t\t%s\n" % cls.help)

def parse_options(argv):
    if len(argv) == 0:
        usage()
        sys.exit(0)
    # Hack for when gnatmake is used
    compiler_options = []
    if argv[0] == '-gnatea':
        # When using gnatmake --GCC='compile.py [options] gcc-4.9' then gnatmake
        # is calling compile.py -gnatea -c -Isrc/ [options] gcc-4.9
        # instead of compile.py [options] gcc-4.9 -gnatea -c -Isrc/
        # We need to move these compiler options
        assert argv[1] == '-c'
        compiler_options += argv[:2]
        argv[:2] = []
        if argv[0].startswith('-I'):
            compiler_options += argv[0:1]
            argv[0:1] = []
    # Step2 has to be defined
    if not argv[0].startswith('-'):
        usage()
        sys.exit(0)
    # Remove verbose flag
    if len(argv) and argv[0] == '-v':
        verbose = True
        argv[0:1] = []
    else:
        verbose = False
    if len(argv) == 0:
        usage()
        sys.exit(0)
    # Get step2 definition
    step2 = Step2(argv)
    # Put the compilers options at the right position
    command = argv[len(step2.param):]
    command[0:0] = compiler_options
    if len(command) == 0:
        usage()
        sys.exit(0)
    return verbose, step2, command

def remove_M_options(command):
    idx = 0
    while idx < len(command):
        if command[idx] in ('-M', '-MM', '-MG', '-MP', '-MMD'):
            command[idx:idx+1] = []
        elif command[idx] in ('-MF', '-MT', '-MQ', '-MD'):
            command[idx:idx+2] = []
        else:
            idx += 1

def find_input_idx(command):
    for idx in [ _ for _ in range(len(command))
        # C
        if command[_].endswith('.c')
        # Fortran
        or command[_].endswith('.f')
        or command[_].endswith('.F')
        # C++
        or command[_].endswith('.cpp')
        or command[_].endswith('.cc')
        # Assembly
        or command[_].endswith('.s')
        # Ada
        or command[_].endswith('.ada')
        or command[_].endswith('.adb')
        or command[_].endswith('.tst')
        # TODO: if a file name ends with .a, it may be an archive file
        # or an Ada source; we will need to look into the file to decide.
        ]:
        return idx
    return -1

def find_output_idx(command, input_idx):
    # Add implicit output
    if not '-o' in command:
        if '-c' in command:
           input_src = command[input_idx]
           name = input_src[:input_src.rindex('.')]
           if '/' in name: name = name[name.rindex('/')+1:]
           command.extend(['-o', "%s.o"%name])
        elif '-S' in command:
           input_src = command[input_idx]
           name = input_src[:input_src.rindex('.')]
           if '/' in name: name = name[name.rindex('/')+1:]
           command.extend(['-o', "%s.s"%name])
        elif 'mingw' in command[0]:
           command.extend(['-o', "a.exe"])
        else:
           command.extend(['-o', "a.out"])
    return command.index('-o') + 1

if __name__ == "__main__":
    verbose, step2, command = parse_options(sys.argv[1:])
    if verbose:
        print("Compiler command: %s" % command)
        print("Step2 definition: %s" % step2.param)
    
    # =====================================================
    # Analyze the command
    if '-E' in command:
        # Preprocessor only, do nothing else
        os.execvp(command[0], command)
    
    if step2.obj_input and '-S' in command:
        print("Incompatibility between -S and %r; running: %s"
              % (step2.param, ' '.join(command)))
        os.execvp(command[0], command)

    remove_M_options(command)
    input_idx = find_input_idx(command)
    if input_idx == -1:
        print("The file containing the source code has not been found in: %s"
              % ' '.join(command))
        os.execvp(command[0], command)
    out_idx = find_output_idx(command, input_idx)

    # =====================================================
    # Step 1: generate the intermediate result (asm or object)
    import tempfile, shutil
    tmpdir = tempfile.mkdtemp()
    if verbose:
        print("Tmpdir: %s" % tmpdir)

    input_src = command[input_idx]
    basefile = input_src[input_src.rfind('/')+1:]
    basefile = basefile[:basefile.rfind('.')]
    step2_base = tmpdir + '/' + basefile + '.new'
    if step2.obj_input:
        # generate object file
        step1_output = tmpdir + '/' + basefile + '.o'
        step1_command = [ _ for _ in command if not _.endswith('.a') ]
        step1_command[out_idx] = step1_output
        if not '-c' in command:
            step1_command.insert(1, '-c')
    else:
        # generate assembly file
        step1_output = tmpdir + '/' + basefile + '.s'
        if input_src.endswith('.s'):
            step1_command = ['cp', input_src, step1_output]
        elif '-S' in command:
            step1_command = command[:]
            step1_command[out_idx] = step1_output
        else:
            step1_command = [ _ for _ in command if not _.endswith('.a') ]
            step1_command[out_idx] = step1_output
            if '-c' in command: step1_command[command.index('-c')] = '-S'
            else:               step1_command.insert(1, '-S')
    spawn(step1_command)
   
    if '-gnatea' in step1_command:
        # The .ali file is needed by gnatbind
        # https://gcc.gnu.org/onlinedocs/gnat_ugn/The-Ada-Library-Information-Files.html
        ali_out = command[out_idx][:-2] + '.ali'
        if   step1_output == tmpdir + '/' + basefile + '.o':
            # If the compiler is called with -c, then the .ali file is created
            # in the same directory as the .o file.
            ali_in = tmpdir + '/' + basefile + '.ali'
        elif step1_output == tmpdir + '/' + basefile + '.s':
            # If the compiler is called with -S, then the .ali file is created
            # in the current directory.
            # This is probably a bug of GNAT.
            ali_in = basefile + '.ali'
        if ali_in != ali_out:
            spawn(['mv', ali_in, ali_out])
        else:
            print(['mv', ali_in, ali_out])
    
    # =====================================================
    # Step 2: analysis or modification of the intermediate result
    step2_output = step2.run(step1_output, step2_base)
    os.unlink(step1_output)
    
    # =====================================================
    # Step 3: generation of the final output
    result = command[out_idx]
    if step2.obj_output and '-c' in command:
        spawn(['cp', step2_output, result])
    elif '-S' in command:
        spawn(['cp', step2_output, result])
    else:
        command_object = command[:]
        command_object[out_idx] = result
        command_object[input_idx] = step2_output
        if '-x' in command_object:
            # Remove -x flags, e.g. -x ada when using GNAT Pro 6.1.2
            # because now the input is not Ada anymore
            idx = command_object.index('-x')
            command_object = command_object[:idx] + command_object[idx+2:]
        spawn(command_object)
    os.unlink(step2_output)
    
    shutil.rmtree(tmpdir)
