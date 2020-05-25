# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import set, sorted
except ImportError:
    pass
import logging
log = logging.getLogger("plasmasm")
###################################################################
# Dealing with input of files, with automatic detection of format
from plasmasm.parse_asm import Instruction

container_magic = {
    ( 0x4d,0x5a ):                     'PE',
    ( 0x7f,0x45,0x4c,0x46 ):           'ELF',
    ( 0xce,0xfa,0xed,0xfe ):           'MACH-32',
    ( 0xcf,0xfa,0xed,0xfe ):           'MACH-64',
    ( 0xbe,0xba,0xfe,0xca ):           'MACH-FAT',
    ( 0x4c,0x01 ):                     'COFF',
    ( 0xca,0xfe,0xba,0xbe ):           'JAVA',
    ( 0x09,0x2e ):                     'ASM', # e.g. \t.file or \t.section
    ( 0x23,0x20,0x31,0x20 ):           'ASM', # starts with '# 1 '
    }
def get_file_type(raw):
    if len(raw) == 0:
        return 'EMPTY'
    import struct
    for magic, file_type in container_magic.items():
        if raw.startswith(struct.pack("%dB"%len(magic),*magic)):
            return file_type
    raise ValueError('Unknown file type')

# Auto-detection of available CPU backends
def parse_cpu_arg(kargs):
    if kargs.get('cpu', None) is None:
        return None, None
    elif '/' in kargs['cpu']:
        cpu = kargs['cpu']
        backend = cpu[cpu.index('/')+1:]
        cpu = cpu[:cpu.index('/')]
        if cpu == '': cpu = None
        return cpu, backend
    else:
        return kargs['cpu'], None

def get_backend(cpu, backend, option, meta):
    # Fallback with no error and no arch parsing
    if cpu is None:
        return Instruction
    # Fallback with an error
    def from_bin(self, in_str, section):
        raise ValueError("No backend for %s binary" % cpu_name)
    Instruction.from_bin = from_bin
    # Detect the backend
    from plasmasm import arch
    if '-' in cpu:
        cpu_name = cpu[:cpu.index('-')]
    else:
        cpu_name = cpu
    CPU = arch.import_cpu_meta(cpu_name)
    if backend is None:
        backends = arch.CPUs[cpu_name]
    elif backend in arch.CPUs[cpu_name]:
        backends = [ backend ]
    else:
        raise ValueError("No %s backend in %s"%(backend,cpu))
    errors = {}
    for backend in backends:
        try:
            BACKEND = arch.import_cpu_backend(cpu_name, backend)
            break
        except ImportError:
            import sys
            errors[(cpu_name,backend)] = sys.exc_info()[1]
    else:
        log.error("%s", errors)
        return Instruction
    # asm_format may depend on CPU name
    if cpu_name in ('I386', 'X64'):
        # Many possible syntax for x86 asm
        if meta.get('compiler', None) == 'clang':
            # AT&T syntax, as used by clang on MacOSX
            asm_format = 'att_syntax clang'
            if cpu.endswith('-intel'):
                # Intel syntax, with no `%' prefix, for clang
                asm_format = 'intel_syntax noprefix clang'
        elif cpu.endswith('-att'):
            # AT&T syntax, with a workaround for a bug of binutils
            # mixing fsub/fdiv and fsubr/fdivr; this bug is documented at
            # https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=372528
            asm_format = 'att_syntax binutils'
        elif cpu.endswith('-intel'):
            # Intel syntax, with no `%' prefix, as used by gcc 3.x
            asm_format = 'intel_syntax noprefix'
        else:
            asm_format = None
        BACKEND.Instruction.set_asm_format(asm_format)
    elif cpu == 'SPARC':
        meta['format'] = 'sparc'
    # return the backend
    if option == 'dead':
        return BACKEND.InstructionDEAD
    elif option == 'rw':  return BACKEND.InstructionRW
    elif option == 'cfg': return BACKEND.InstructionCFG
    else:                 return BACKEND.Instruction

from plasmasm.symbols import Symbols
class File(Symbols):
    def from_raw(self, raw, **kargs):
        file_type = kargs.get('file_type', None)
        if file_type is None:
            file_type = get_file_type(raw)
        if kargs.get('dead', None) == True: option = 'dead'
        elif kargs.get('rw', None) == True: option = 'rw'
        else:                               option = 'cfg'
        if file_type == 'EMPTY':
            pass
        elif file_type == 'ASM':
            from plasmasm.parse_asm import guess_asm_cpu, \
                parse_asm_file, parse_asm_lines
            # Parsing without analyzing cpu instructions
            parse_asm_file(self, raw)
            # CPU-dependent parsing
            cpu, backend = parse_cpu_arg(kargs)
            if cpu is None:
                cpu = guess_asm_cpu(self)
            self.arch = get_backend(cpu, backend, option, self.meta)
            parse_asm_lines(self)
            # Those were not true addresses, we replace them by lists
            for s in self.symbols:
                if hasattr(s, 'address'):
                    s.address = [ s.address ]
        else:
            from plasmasm.parse_bin import get_bin_virt, \
                section_attributes, add_symbols, \
                binary_streams, extract_rodata_from_text, \
                parse_bin_file
            cpu, backend = parse_cpu_arg(kargs)
            cpu, self.file_elfesteem = get_bin_virt(raw, file_type, cpu)
            section_attributes(self)
            add_symbols(self)
            binary_streams(self)
            if '_rodata_start' in self.symbols_byname \
                and '_erodata' in self.symbols_byname:
                extract_rodata_from_text(self)
            self.arch = get_backend(cpu, backend, option, self.meta)
            for ep in kargs.get('entrypoints', []):
                file.find_symbol(name = 'entrypoint_%X'%ep, address = ep)
            parse_bin_file(self)
            # Don't delete bin-specific entries, they may be used by "helper"
            #del self.ep
            #del self.file_elfesteem
            #del self.streams
        self.file_type = file_type
        return self
    def from_filename(self, name, **kargs):
        fd = open(name, 'rb')
        self.from_raw(fd.read(), **kargs)
        fd.close()
        import os
        if os.access(name+".plasmasm", os.R_OK):
            fd = open(name+".plasmasm", 'r')
            # We'd like to define "helper" by calling "exec", and
            # then call "helper(self)"
            # But in of python3 it fails, "exec" does not update the locals
            # The following hack works, because python3 fails to properly
            # cleanup the temporary locals modified during "exec"
            l = locals()
            exec(fd.read())
            fd.close()
            l['helper'](self)
        return self
    def to_asm(self, output_filename=None):
        from plasmasm.write_asm import mk_asm_file
        return mk_asm_file(self, output_filename=output_filename)
    def to_objdump(self, **kargs):
        from plasmasm.write_asm import mk_objdump
        return mk_objdump(self, **kargs)
    def to_bin(self):
        from plasmasm.write_bin import mk_bin_file
        return mk_bin_file(self)
    def choose_symbol(self, found):
        # Many symbols can have the same address
        # Detect which one was in the asm source
        found_names = [str(_) for _ in found]
        # If only one has a type
        has_type = [ _ for _ in found if hasattr(_, 'type') ]
        if len(has_type) == 1:
            return has_type[0]
        compiler = self.get_meta().get('compiler')
        if compiler == 'mingw' and \
                found_names == ['___chkstk', '__alloca']:
            return found[1]
        if compiler == 'gcc' and \
                found_names[0].startswith('.rel.dyn.') and \
                found_names[1].endswith('@@GLIBC_2.0'):
            if found_names[0][9:] == found_names[1][:-11]:
                return found[0]
        # GCC 4.9.2
        if compiler == 'gcc' and \
                found_names in (
            ['__TMC_END__', '_edata'],
            ['.LD.init_array.0', '__frame_dummy_init_array_entry', '__init_array_start'],
                ):
            return found[-1]
        # ELF/SPARC/LEON compiled with GCC 4.4.2
        if compiler == 'gcc' and \
                found_names in (
            ['_trap_table', 'start'],
            [ '_atexit', 'atexit' ],
            [ '___st_pthread_mutexattr_init', '__st_pthread_mutexattr_init' ],
            [ '___st_pthread_mutex_lock', '__st_pthread_mutex_lock' ],
            [ '___st_pthread_mutex_lock', '__st_pthread_mutex_lock' ],
            [ '___st_pthread_mutex_unlock', '__st_pthread_mutex_unlock' ],
            [ '___st_pthread_mutex_unlock', '__st_pthread_mutex_unlock' ],
            [ '___st_pthread_mutex_unlock', '__st_pthread_mutex_unlock' ],
                ):
            return found[1]
        if compiler == 'gcc' and \
                found_names == ['___DTOR_END__', '__leonbare_initcall_end', '__leonbare_initcall_start', '_rodata_start']:
            return found[3]
        # If only one does not start with a dot
        not_dot = [ _ for _ in found if _.is_symbol() ]
        if len(not_dot) == 1:
            return not_dot[0]
        log.warning("These symbols have the same address, we use the first")
        for _ in found: log.warning("    %r", _)
        return found[0]
