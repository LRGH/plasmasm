#! /usr/bin/env python
# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import sys, os
sys.path.insert(1, os.path.abspath(sys.path[0]+'/..'))

try:
    from plasmasm.python.compatibility import sorted
except ImportError:
    pass

try:
    import subprocess
    def popen(cmd):
        p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
            env={"PATH":"/usr/sbin:/usr/bin:/sbin:/bin"})
        p.stdin.close()
        return p.stdout
    def popen_read_err(cmd):
        p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stderr=subprocess.PIPE)
        p.wait()
        p.stdin.close()
        return p.stderr.read()
    call = subprocess.call
except ImportError:
    # Old versions of python don't have subprocess
    def popen(cmd):
        p = os.popen(" ".join(cmd))
        return p
    def popen_read_err(cmd):
        _, _, p = os.popen3(" ".join(cmd))
        return p.read()
    def call(cmd, **kargs):
        env = os.environ
        if 'env' in kargs:
            env.update(kargs['env'])
        if 'spawnvpe' in dir(os):
            spawn = os.spawnvpe
        else: # Windows
            spawn = os.spawnve
        if 'cwd' in kargs:
            # Need to change the directory, and change back
            curdir = os.getcwd()
            os.chdir(kargs['cwd'])
            ret = spawn(os.P_WAIT, cmd[0], cmd, env)
            # On Unix we may prefer to use fchdir, but it does not exist
            # on Windows
            os.chdir(curdir)
            return ret
        return spawn(os.P_WAIT, cmd[0], cmd, env)

import tempfile
def mkstemp(**kargs):
    fd, name = tempfile.mkstemp(**kargs)
    os.close(fd)
    return name

def spawn(args):
    if '-v' in sys.argv: print("spawn %s" % args)
    if os.spawnvp(os.P_WAIT, args[0], args) != 0:
        print("Spawn %s failed" % args)
        sys.exit(1)
