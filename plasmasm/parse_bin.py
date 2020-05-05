# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import struct
try:
    from plasmasm.python.compatibility import set, sorted, reversed
except ImportError:
    pass

import logging
log = logging.getLogger("plasmasm")

# Reading binaries depends on having elfesteem installed.
# If it is not installed system-wide, it is recommended to install it
# in the parent directory of plasmasm.
import sys, os
basedir = os.path.dirname(os.path.dirname(os.path.dirname(__file__)))
if basedir == '': basedir = '.'
sys.path.append(basedir+'/elfesteem')

#NON_REGRESSION_FOUND = True # Define this variable to avoid raising errors

from plasmasm.constants import data_null, ConstantStr, ConstantZero, \
    Constant1Byte, Constant2Byte, Constant4Byte, Constant8Byte

NumericConstant = {
    1: Constant1Byte,
    2: Constant2Byte,
    4: Constant4Byte,
    8: Constant8Byte,
    }

def get_bin_virt(raw, file_type, cpu = None):
    # Each backend corresponds to a cputype for each possible container
    from plasmasm import arch
    cpu_codenames = { 'ELF':{}, 'MACHO':{} }
    for cpuname in arch.CPUs:
        for container, name in arch.import_cpu_meta(cpuname).containers.items():
            cpu_codenames[container][name] = cpuname
    # Extract container and cputype
    try:
        if      file_type == 'RAW':
            class RAW_VIRT(str):
                def __init__(self, data):
                    self.data = data
                def max_addr(self):
                    return len(self.data)
                def __call__(self, start, stop, section=None):
                    return self.data[start:stop]
            class RAW(object):
                def __init__(self, raw): self.virt = RAW_VIRT(raw)
                def isRAW(self): return True
                def getsectionbyvad(self, ad): return self
                name = 'raw_text' # when a section name is needed
            e = RAW(raw)
        elif    file_type == 'PE':
            from elfesteem.pe_init import PE
            e = PE(raw)
            if cpu is None:
                cpu = 'I386'
        elif    file_type == 'COFF':
            from elfesteem.pe_init import Coff
            e = Coff(raw)
            if cpu is None:
                from elfesteem import pe
                machine = e.Coffhdr.machine
                machine = pe.constants['IMAGE_FILE_MACHINE'][machine]
                cpu = machine # TODO: add conversion table
        elif    file_type == 'ELF':
            from elfesteem.elf_init import ELF
            e = ELF(raw)
            if cpu is None:
                from elfesteem import elf
                cpu = elf.constants['EM'][e.Ehdr.machine]
                cpu = cpu_codenames['ELF'][cpu]
        elif    file_type in ['MACH-32', 'MACH-64']:
            from elfesteem.macho_init import MACHO
            e = MACHO(raw)
            if cpu is None:
                from elfesteem import macho
                cpu = [ n for n in dir(macho)
                    if n.startswith('CPU_TYPE_')
                    and macho.__dict__[n] == e.Mhdr.cputype ] [0][9:]
                cpu = cpu_codenames['MACHO'][cpu]
        else:
            raise ValueError('Unknown file type %r'%file_type)
    except ImportError:
        import sys
        error = sys.exc_info()[1]
        e = None
    if e is None:
        log.error("ImportError: %s", error)
        log.error("Cannot work on %s files", file_type)
        log.error("Please install https://github.com/LRGH/elfesteem")
        log.error("  for example by cloning the repository")
        log.error("  in the parent directory of plasmasm.")
        raise ImportError
    return cpu, e

def label_for_address(file, value):
    # This function tries to decide whether the integer 'value' should
    # be seen as a label (e.g. an address) by looking if it corresponds
    # to something in an appropriate section
    # Relocatable objects should have all symbols in the relocation table
    if value is None:
        return None
    if file.get_meta().get('relocatable', False):
        return None
    props = {'address': value}
    section = file.get_sectionname(value)
    if section is None and value in file.sections.eos:
        section = file.sections.eos[value]
        props['type'] = 'padding'
    if section is None:
        return None
    if section in ['.comment', '.shstrtab', '.symtab',
                   '.jcr', '.ctors', '.dtors',
                   '.gnu_debuglink', '.gnu.prelink_undo',
                   'raw_text' ]:
        return None
    if section.startswith('.debug'):
        return None
    props['section'] = section
    if not (   section.startswith('.text')
            or section in ['.bss', '.dynbss', '.data', '.idata', '.rdata', '.rodata']
            or section in ['.got', '.got.plt', '.plt']
            ):
        raise ValueError("SECTION %s at %#x" % (section, value))
    return file.find_symbol(**props)

def section_attributes(file):
    attr = {}
    e = file.file_elfesteem
    if hasattr(e, 'Ehdr'): attr = section_attributes_ELF(e)
    if hasattr(e, 'Mhdr'): attr = section_attributes_MACHO(e)
    log.debug('Section attributes %r', attr)
    for section in attr:
        attributes, address = attr[section]
        if attributes != '':
            file.sections.parse_attributes(section+attributes)
        if address is not None:
            file.sections.endofsection(section, address)

def section_attributes_ELF(e):
    attr = {}
    from elfesteem import elf
    for i, sh in enumerate(e.sh):
        # From binutils, obj-elf.c, obj_elf_parse_section_letters
        sh_flags = ""
        if sh.sh.flags & elf.SHF_WRITE:           sh_flags += "w"
        if sh.sh.flags & elf.SHF_ALLOC:           sh_flags += "a"
        if sh.sh.flags & elf.SHF_EXECINSTR:       sh_flags += "x"
        if sh.sh.flags & elf.SHF_MERGE:           sh_flags += "M"
        if sh.sh.flags & elf.SHF_STRINGS:         sh_flags += "S"
        if sh.sh.flags & elf.SHF_GROUP:           sh_flags += "G"
        if sh.sh.flags & elf.SHF_TLS:             sh_flags += "T"
        if sh.sh.flags & elf.SHF_EXCLUDE:         sh_flags += "e"
        # From binutils, obj-elf.c, obj_elf_section_type
        if   sh.sh.type == elf.SHT_PROGBITS:      sh_type = "@progbits"
        elif sh.sh.type == elf.SHT_NOBITS:        sh_type = "@nobits"
        elif sh.sh.type == elf.SHT_NOTE:          sh_type = "@note"
        elif sh.sh.type == elf.SHT_INIT_ARRAY:    sh_type = "@init_array"
        elif sh.sh.type == elf.SHT_FINI_ARRAY:    sh_type = "@fini_array"
        elif sh.sh.type == elf.SHT_PREINIT_ARRAY: sh_type = "@preinit_array"
        else:                                     continue
        section = e.sh[i].sh.name
        attr[section] = ['', sh.sh.addr + sh.sh.size]
        if section in [ '.text', '.data', '.rodata', '.bss' ]:
            if not (section, sh_flags, sh_type) in (
                ('.text',   'ax', '@progbits'),
                ('.data',   'wa', '@progbits'),
                ('.rodata', 'a',  '@progbits'),
                ('.rodata', 'aM', '@progbits'),
                ('.bss',    'wa', '@nobits'),
                ):
                raise ValueError('Bad attributes %s,"%s",%s'%(section,sh_flags,sh_type))
            continue
        if sh_flags != '' or sh_type != '':
            attr[section][0] += ',"%s"' % sh_flags
            if sh_type != '':
                attr[section][0] += ',%s' % sh_type
        if sh.sh.flags & elf.SHF_MERGE:
            attr[section][0] += ',%s' % sh.sh.entsize
        if sh.sh.flags & elf.SHF_GROUP:
            for s in e.sh: # SHList
                if s.sh.type != elf.SHT_GROUP: continue
                if not i in s.sections: continue
                attr[section][0] += ',%s' % e.sh[s.sh.link][s.sh.info].name
                if s.flags == elf.GRP_COMDAT:
                    attr[section][0] += ',comdat'
    return attr

def section_attributes_MACHO(e):
    attr = {}
    from elfesteem import macho, macho_init
    for s in e.sect.sect:
        if type(s) != macho_init.Section:
            continue
        # Cf. https://developer.apple.com/library/mac/documentation/DeveloperTools/Reference/Assembler/040-Assembler_Directives/asm_directives.html
        # and http://llvm.org/docs/doxygen/html/MCSectionMachO_8cpp_source.html
        attributes = {
            macho.S_REGULAR:                    ',regular',
            macho.S_ZEROFILL:                   ',(zerofill)',
            macho.S_CSTRING_LITERALS:           ',cstring_literals',
            macho.S_4BYTE_LITERALS:             ',4byte_literals',
            macho.S_8BYTE_LITERALS:             ',8byte_literals',
            macho.S_LITERAL_POINTERS:           ',literal_pointers',
            macho.S_NON_LAZY_SYMBOL_POINTERS:   ',non_lazy_symbol_pointers',
            macho.S_LAZY_SYMBOL_POINTERS:       ',lazy_symbol_pointers',
            macho.S_SYMBOL_STUBS:               ',symbol_stubs',
            macho.S_MOD_INIT_FUNC_POINTERS:     ',mod_init_funcs',
            macho.S_MOD_TERM_FUNC_POINTERS:     ',mod_term_funcs',
            macho.S_COALESCED:                  ',coalesced',
            macho.S_GB_ZEROFILL:                ',(gb_zerofill)',
            macho.S_INTERPOSING:                ',interposing',
            macho.S_16BYTE_LITERALS:            ',16byte_literals',
            macho.S_DTRACE_DOF:                 ',(dtrace_dof)',
            macho.S_LAZY_DYLIB_SYMBOL_POINTERS: ',(lazy_dylib_symbol_pointers)',
            macho.S_THREAD_LOCAL_REGULAR:       ',thread_local_regular',     
            macho.S_THREAD_LOCAL_ZEROFILL:      ',thread_local_zerofill',    
            macho.S_THREAD_LOCAL_VARIABLES:     ',thread_local_variables',   
            macho.S_THREAD_LOCAL_VARIABLE_POINTERS:
                ',thread_local_variable_pointers',
            macho.S_THREAD_LOCAL_INIT_FUNCTION_POINTERS:
                ',thread_local_init_function_pointers',
            }[s.sh.type]
        if s.sh.all_flags & macho.SECTION_ATTRIBUTES_USR:
            attributes += ','
            attributes += '+'.join([
                name for mask, name in [
                    (macho.S_ATTR_PURE_INSTRUCTIONS,   "pure_instructions"),
                    (macho.S_ATTR_NO_TOC,              "no_toc"),
                    (macho.S_ATTR_STRIP_STATIC_SYMS,   "strip_static_syms"),
                    (macho.S_ATTR_NO_DEAD_STRIP,       "no_dead_strip"),
                    (macho.S_ATTR_LIVE_SUPPORT,        "live_support"),
                    (macho.S_ATTR_SELF_MODIFYING_CODE, "self_modifying_code"),
                    (macho.S_ATTR_DEBUG,               "debug"),
                ] if s.sh.all_flags & mask
            ])
        log.debug("%s%s -> %x %x",
            s.sh.name, attributes, s.sh.addr + s.sh.size, s.sh.all_flags)
        attr[s.sh.name] = (attributes, s.sh.addr + s.sh.size)
    return attr

def extract_rodata_from_text(file):
    # In ELF/SPARC/LEON compiled with GCC 4.4.2
    # rodata is in section .text
    # => we extract a .rodata section
    start = file.symbols_byname['_rodata_start'].address
    stop = file.symbols_byname['_erodata'].address
    if file.get_sectionname(start) != '.text':
        raise ValueError("rodata in %s"%file.get_sectionname(start))
    text = file.file_elfesteem.getsectionbyname(".text")
    rest = text.addr+text.size-stop
    text.sh.size = start-text.addr
    def create_section_and_update(name, addr, size, offset, align):
        from elfesteem import elf_init
        new_section = elf_init.ProgBits(file.file_elfesteem.sh, name = name,
            addr=addr, size=size, offset=offset, addralign=align)
        new_section.content[0] = text.content[offset-text.sh.offset:offset-text.sh.offset+size]
        file.file_elfesteem.sh.append(new_section)
        text.phparent.shlist.append(new_section)
        file.streams[name] = file.streams['.text']
        for label in file.symbols:
            if addr < getattr(label, 'address', addr+size) < addr+size:
                label.section = name
    create_section_and_update('.rodata',
        start, stop-start, start-text.addr+text.sh.offset, 1)
    if rest > 0: create_section_and_update('.text.end',
        stop, rest, stop-text.addr+text.sh.offset, text.sh.addralign)


from plasmasm.symbols import comm_symbol_section, is_comm, compute_alignment

class bin_stream(object):
    def __init__(self, virt, section = None):
        self.virt = virt       # from elfesteem
        self.offset = 0        # current position
        self.section = section # section; needed for .o
        # old elfesteem use __len__ but it cannot return more than 1<<31
        # therefore recent elfesteem defined max_addr
        if hasattr(virt, 'max_addr'):
            self.l = virt.max_addr()
        else:
            self.l = len(virt)
        if 'is_addr_in' in self.virt.__class__.__dict__:
            self.is_addr_in = lambda ad:self.virt.is_addr_in(ad)
    def __getitem__(self, item):
        if not type(item) is slice: # integer
            start = item
            step  = 1
            self.offset = item + 1
        else:
            start = item.start
            step  = item.step
            self.offset = item.stop
        if self.offset > self.l:
            raise IOError
        return self.virt(start, self.offset, section=self.section)[::step]
    def readbs(self, l=1):
        # When reading one byte after another
        return self[self.offset:self.offset+l]

def binary_streams(file):
    streams = {}
    e = file.file_elfesteem
    if e is None:
        pass
    elif hasattr(e, 'Ehdr'):
        if not e.has_relocatable_sections():
            in_str = bin_stream(e.virt)
            relocs = Relocs()
        else:
            streams[comm_symbol_section] = ('', Relocs())
        from elfesteem import elf
        for i, sh in enumerate(e.sh):
            if not sh.sh.type in [ elf.SHT_PROGBITS, elf.SHT_NOBITS,
                                   elf.SHT_INIT_ARRAY, elf.SHT_FINI_ARRAY ]:
                continue
            section = e.sh[i].sh.name
            if section in streams:
                DUPLICATE
            if not parse_section_from_ELF(section):
                continue
            if e.has_relocatable_sections():
                in_str = bin_stream(e.virt, section=sh.sh.name)
                relocs = relocs_from_ELF(file, e, i)
            streams[section] = (in_str, relocs)
    elif hasattr(e, 'Mhdr'):
        in_str = bin_stream(e.virt)
        from elfesteem import macho_init
        for s in e.sect.sect:
            if type(s) != macho_init.Section:
                continue
            section = "%s,%s"%(s.sh.segname,s.sh.sectname)
            relocs = relocs_from_MACHO(e, s.sh)
            streams[section] = (in_str, relocs)
    elif hasattr(e, 'isPE'):
        if not e.has_relocatable_sections():
            in_str = bin_stream(e.virt)
            relocs = Relocs()
        from elfesteem import pe
        for section in ['.text', '.data', '.rdata', '.idata', '.bss']:
            if e.getsectionbyname(section) is None:
                continue
            if e.has_relocatable_sections():
                in_str = bin_stream(e.virt, section=section)
                relocs = relocs_from_COFF(e, section)
            streams[section] = (in_str, relocs)
    elif hasattr(e, 'isRAW'):
        streams = {e.name: (bin_stream(e.virt), Relocs())}
    else:
        raise ValueError('Unknown binary format')
    log.debug('Streams to be analyzed %r', streams.keys())
    file.streams = streams

###################################################################
# Return a list of pairs:
# - identifier
# - binary stream as mapped in memory
def parse_section_from_ELF(name):
    return (name in [ comm_symbol_section, '.plt', '.tdata', '.tbss' ]
            or name.startswith('.init_array')
            or name.startswith('.fini_array')
            or name.startswith('.gnu.linkonce')
            or name.startswith('.bss')
            or name.startswith('.data')
            or name.startswith('.rodata')
            or name.startswith('.ctors')
            or name.startswith('.text'))

def add_compiler_string_from_ELF(symbols, e):
    # ident
    from elfesteem import elf
    comment = [ sh for sh in e.sh
                if sh.sh.type == elf.SHT_PROGBITS and sh.sh.name == '.comment' ]
    if len(comment) == 1:
        compiler = comment[0].content[0:]
        if type(compiler) != str: compiler = str(compiler, encoding='latin1')
        compiler = compiler.strip('\0')
        if '\0' in compiler:
            compiler = compiler[:compiler.index('\0')]
        symbols.set_meta(ident = compiler)
        if compiler.startswith("GCC: "):
            symbols.set_meta(compiler = 'gcc')
            file = [ _ for _ in symbols.symbols if getattr(_, 'bind', None) == 'file' ]
            if len(file) > 0 and file[0].name.endswith('.f'):
                symbols.set_meta(language = 'fortran')
                symbols.cds.hook_gfortran_rodata()
    elif len(comment) > 1:
        FAIL
    # eh_frame size
    eh_frame = [ sh for sh in e.sh
                if sh.sh.type == elf.SHT_PROGBITS and sh.sh.name == '.eh_frame' ]
    if len(eh_frame) == 1:
        # eh_frame reloc positions
        idx = e.sh.shlist.index(e.getsectionbyname(".eh_frame"))
        symbols.set_meta(
            eh_frame_size = eh_frame[0].sh.size,
            eh_frame_relocs = relocs_from_ELF(symbols, e, idx))
    elif len(eh_frame) > 1:
        FAIL

def add_padding(symbols, s):
    # Create labels at the end of each symbol for data sections
    # NB: in .rodata there can be unnamed content after named content
    # The parser of data will stop at these labels, which correspond
    # to padding
    if not s: return False
    if not s.get('type', None) in [ 'object', 'function']: return False
    if not 'section' in s: return False
    if not 'size' in s: return False
    if not section_type(s['section']) in [ 'data', 'text']: return False
    if s.get('visibility', None) == 'hidden': return False
    if symbols.cds.will_not_show(s['name']): return False
    return True

def add_symbols(symbols):
    e = symbols.file_elfesteem
    # Meta data for endianess
    if hasattr(e, 'sex'): symbols.set_meta(endianess = e.sex)
    # Meta data if relocatable
    if e.has_relocatable_sections(): symbols.set_meta(relocatable = True)
    # Meta data identifying the compiler that was used
    if hasattr(e, 'Ehdr'):
        symbols.set_meta(container = 'ELF')
        add_compiler_string_from_ELF(symbols, e)
    elif hasattr(e, 'Mhdr'):
        symbols.set_meta(container = 'Mach-O')
        symbols.set_meta(compiler = 'clang')
    elif hasattr(e, 'isPE') and e.isPE():
        symbols.set_meta(container = 'PE')
    elif hasattr(e, 'isPE'):
        symbols.set_meta(container = 'COFF')
        symbols.set_meta(compiler = 'mingw')
    # Initialize compiler-dependent stuff
    from plasmasm import compilers
    symbols.cds = compilers.cds(symbols)
    # Create labels for each symbol
    from plasmasm.get_symbols import get_symbols, translate_symbol, deduplicate_symbols
    s_list, _ = get_symbols(e)
    log.debug('Symbols %r', s_list)
    s_list = [ translate_symbol(_, e) for _ in s_list ]
    log.debug('Symbols, translated %r', s_list)
    s_list = deduplicate_symbols(s_list)
    log.debug('Symbols, filtered %r', s_list)
    seen = {}
    for s in s_list:
        if not s:
            continue
        label = symbols.find_symbol(**s)
        # Special treatment when multiple symbols have the same address
        if not 'section' in s or not 'address' in s:
            continue
        ad = (s['section'], s['address'])
        if not ad in seen:
            seen[ad] = label
            continue
        if getattr(label, 'type', None) == getattr(seen[ad], 'type', None):
            symbols.setattr(name=label.name, data={'set':seen[ad]})
        elif not hasattr(label, 'type'):
            # This is a hack
            # Directive .set makes the type of label identical to seen[ad]
            # In the assembly source, the two labels were consecutive,
            # the internal represennation should probably create an empty
            # bloc between both
            symbols.setattr(name=label.name, data={'set':seen[ad]})
        elif not hasattr(seen[ad], 'type'):
            # Same as previous
            symbols.setattr(name=seen[ad].name, data={'set':label})
        else:
            raise ValueError("Cannot set %r to %r, they have different symbol type"%(label,seen[ad]))
    # For known compilers, some code will not be dissassembled
    if '___mingw_CRTStartup' in symbols.symbols_byname:
        symbols.cds.mingw()
        symbols.set_meta(compiler = 'mingw')
    elif '___main' in symbols.symbols_byname and symbols.symbols_byname['___main'].section == '.bss':
        symbols.cds.mingw()
        symbols.set_meta(compiler = 'mingw')
    elif '__mh_execute_header' in symbols.symbols_byname:
        symbols.cds.clang()
        symbols.set_meta(compiler = 'clang')
    elif '__libc_start_main@@GLIBC_2.0' in symbols.symbols_byname:
        symbols.cds.gcc()
        symbols.set_meta(compiler = 'gcc')
    elif '__libc_start_main@@GLIBC_2.2.5' in symbols.symbols_byname:
        symbols.cds.gcc64()
        symbols.set_meta(compiler = 'gcc')
    elif 'leonbare_flush_windows' in symbols.symbols_byname:
        symbols.cds.gcc_leon()
        symbols.set_meta(compiler = 'gcc')
    # Add symbols for the padding that exists after some symbols
    for s in s_list:
        if s.get('section') == '.bss' and 'size' in s \
                and not (s['section'], s['address'] + s['size']) in seen:
            label = symbols.find_symbol(**s)
            symbols.find_symbol(type = 'endofsymbol',
                name = '%s+%s' % (label, s['size']),
                reference = label, bind = label.bind,
                address = s['address'] + s['size'], section = s['section'])
        if add_padding(symbols, s): symbols.find_symbol(type = 'padding',
            address = s['address'] + s['size'], section = s['section'])
    # Create labels for dynamic libraries imports
    from plasmasm.get_symbols import get_dynsyms
    s_list = get_dynsyms(e)
    log.debug('Dynamic symbols %r', s_list)
    for s in s_list:
        if not s:
            continue
        # Avoid to generate that symbol if another one has the same address
        ad = (s.get('section'), s['address'])
        if not ad in seen:
            label = symbols.find_symbol(**s)
            seen[ad] = label
            continue
        if s['name'].startswith('.rel.dyn.'):
            other = seen[ad]
            other.type = 'rel.dyn'
    # Create labels for dynamic libraries exports
    from plasmasm.get_symbols import get_exports
    s_list = get_exports(e)
    log.debug('Exported symbols %r', s_list)
    for s in s_list:
        NON_REGRESSION_FOUND
        if not s:
            continue
        label = symbols.find_symbol(**s)
        # Detect when multiple symbols have the same address
        ad = (s.get('section'), s['address'])
        if not ad in seen:
            seen[ad] = label
            continue
        symbols.setattr(name=label.name, data={'set':seen[ad]})
    # Create a label for the entrypoint
    if symbols.get_meta().get('relocatable', False):
        symbols.ep = None
    else:
        if   hasattr(e, 'Ehdr'):  ep = e.Ehdr.entry
        elif hasattr(e, 'isPE'):  ep = e.rva2virt(e.Opthdr.AddressOfEntryPoint)
        elif hasattr(e, 'isRAW'): ep = 0
        elif hasattr(e, 'Mhdr'):  ep = e.entrypoint
        else:                     ep = None
        section = symbols.get_sectionname(ep)
        if section is not None:
            ep = symbols.find_symbol(address=ep, section=section)
        symbols.ep = ep
        log.debug('Add entry point %r', ep)
    # Create symbols in constructors/destructors sections
    add_symbols_ctors(symbols)
    # Create symbols in __IMPORT,__pointers sections
    if hasattr(e, 'Mhdr'):
        add_symbols_import_pointers(symbols)
    # Add symbol for the end of __TEXT,__text, because symbols in Mach-O
    # binaries don't have size and we want to be able to parse the padding
    # at the end of the section
    sect_name = '__TEXT,__text'
    section = getattr(e, 'getsectionbyname', lambda _:None)(sect_name)
    if section is not None and section.size > 0:
        address = endofsection_address(symbols, sect_name)
        if address is not None:
            label = symbols.find_symbol(type = 'endofsymbol',
                address = address, section = sect_name)
            # 'skip_bloc' is needed to avoid label.ender == True
            symbols.cds._skip_bloc.append(lambda _,v=label.name: _==v)
    # Add symbol for the end of .rodata
    sect_name = '.rodata'
    section = getattr(e, 'getsectionbyname', lambda _:None)(sect_name)
    if section is not None and section.size > 0:
        address = endofsection_address(symbols, sect_name)
        if address is not None:
            label = symbols.find_symbol(type = 'endofsymbol',
                address = address, section = sect_name)

def add_symbols_ctors(symbols):
    e = symbols.file_elfesteem
    if hasattr(e, 'Ehdr'):
        # http://reverseengineering.stackexchange.com/questions/6285/how-to-recover-information-stored-in-ctors-section
        # The functions with __attribute__((contructor(n))) create a reference
        # in a specific .ctors section in the .o, which is translated into a
        # reference in a .init_array section in the .out
        # The question is: in the .out, is there still somewhere the information
        # about the .ctors entire section name, e.g. .ctors.65035
        # On 64-bit Linux it is slightly different: a section .init_array.xxx
        # is created in the .o
        # Same for destructors: .dtors or .fini_array
        from elfesteem import elf
        for i, sh in enumerate(e.sh):
            section = e.sh[i].sh.name
            # Object file: starting with .ctors or .init_array
            if e.has_relocatable_sections():
                if not (section.startswith('.ctors')
                     or section.startswith('.init_array')
                     or section.startswith('.dtors')
                     or section.startswith('.fini_array')):
                    continue
                assert sh.sh.type in (elf.SHT_PROGBITS,
                                      elf.SHT_INIT_ARRAY,
                                      elf.SHT_FINI_ARRAY)
            # Executable file: init_array
            else:
                if not sh.sh.type in (elf.SHT_INIT_ARRAY,
                                      elf.SHT_FINI_ARRAY):
                    continue
            ptrsize = e.Ehdr.wsize//8
            for idx in range(0, e.sh[i].size, ptrsize):
                symbols.find_symbol(section = section,
                    address = e.sh[i].addr + idx,
                    name = ".LD%s.%d"%(section,idx))
    if hasattr(e, 'Mhdr'):
        # Create symbols in __DATA,__mod_XXXX_func sections
        from elfesteem import macho, macho_init
        for s in e.sect.sect:
            if type(s) != macho_init.Section:
                continue
            if not s.sh.type in ( macho.S_MOD_INIT_FUNC_POINTERS,
                                  macho.S_MOD_TERM_FUNC_POINTERS ):
                continue
            symbols.find_symbol(section = '%s,%s'%(s.sh.segname,s.sh.sectname),
                address = s.sh.addr,
                name = ".LD%s"%s.sh.sectname)

def add_symbols_import_pointers(symbols):
    e = symbols.file_elfesteem
    from elfesteem import macho, macho_init
    section = '__IMPORT,__pointers'
    symbols.sections.parse_attributes("%s,non_lazy_symbol_pointers"%section)
    # Find section with indirect symbols and indirect symbols table
    indirectsym_section = [_ for _ in e.sect.sect
        if hasattr(_, 'sh') and _.sh.type == macho.S_NON_LAZY_SYMBOL_POINTERS ]
    if not len(indirectsym_section):
        return
    indirectsym_table = [_ for _ in e.sect.sect
        if getattr(_, 'type', None) == 'indirectsym' ]
    if not len(indirectsym_table):
        return
    address = indirectsym_section[0].addr
    for index in indirectsym_table[0].entries:
        if hasattr(index, 'index'): index = index.index
        name = ''
        if   index == macho.INDIRECT_SYMBOL_LOCAL: name = "LOCAL%#x"%address
        elif index == macho.INDIRECT_SYMBOL_ABS:   name = "ABSOLUTE%#x"%address
        else:  name = e.symbols.symbols[index].name
        label = symbols.find_symbol(
            section = section,
            address = address,
            name = "L%s$non_lazy_ptr" % name,
            data = { 'indirect_symbol': name })
        label.insert_bloc()
        label.setlines([Constant4Byte(symbols, 0,
            section = section,
            offset = address,
            )])
        address += e.wsize//8

class Relocs(dict):
    def __init__(self):
        self.sortedkeys = []
    def sortkeys(self):
        self.sortedkeys = sorted(self.keys())
    def __repr__(self):
        def display(v):
            r_type, data = v
            data = '{' + ', '.join(['%r: %r'%(_,data[_]) for _ in reversed(sorted(data))]) + '}'
            return "(%s, %s)" % (r_type, data)
        return '{' + ', '.join(['%r: %s'%(_,display(self[_])) for _ in self.sortedkeys]) + '}'

# This dictionary is non-empty when many PROGBITS sections are mapped
# at the same address, because they are relocatable
def relocs_from_ELF(symbols, e, section_index): 
    relocs = Relocs()
    from elfesteem import elf
    reltab = [sh.reltab for sh in e.sh
        if  sh.sh.type in [ elf.SHT_REL, elf.SHT_RELA ]
        and sh.sh.info == section_index ]
    if len(reltab) == 0:
        return relocs
    elif len(reltab) > 1:
        raise ValueError("Found %d relocation tables for section %d"%(len(reltab),section_index))
    from plasmasm.get_symbols import reloc_suffixes
    for r in reltab[0]:
        r_type = ('ELF', e.Ehdr.machine, r.type)
        if not r_type in reloc_suffixes:
            raise ValueError("Unknown ELF reloc of type %s on cpu %s"%(
                elf.constants['R'][elf.constants['EM'][e.Ehdr.machine]][r.type],
                elf.constants['EM'][e.Ehdr.machine]
                ))
        if r.sym != '':
            data = {
                'name': r.sym,
                'addend': getattr(r,'addend',0)
                }
            if not r.sym in symbols.symbols_byname:
                if not r.sym in ('__gxx_personality_v0',
                                 'DW.ref.__gxx_personality_v0'):
                    log.error("Not in symbols: %r %s", r, r.sym)
            else:
                # We ignore r.value, which should be egal the the symbol address
                label = symbols.symbols_byname[r.sym]
                if not hasattr(label, 'section'):
                    assert r.value == 0
                elif label.section == comm_symbol_section:
                    assert r.value == label.align
                else:
                    assert r.value == label.address
        else:
            data = {
                'section': e.sh[r.shndx].sh.name,
                'address': r.value+getattr(r,'addend',0)
                }
        relocs[r.offset] = (r_type, data)
    relocs.sortkeys()
    return relocs

def relocs_from_MACHO(e, sh):
    relocs = Relocs()
    if not hasattr(sh, 'reloc'):
        return relocs
    from elfesteem import macho
    from plasmasm.get_symbols import get_symbols, reloc_suffixes
    # Explanations are in /usr/include/mach-o/reloc.h
    # and in /usr/include/mach-o/x86_64/reloc.h
    reloclist = list(sh.reloc.reloclist)
    s_list, _ = get_symbols(e)
    while len(reloclist) > 0:
        x = reloclist.pop(0)
        r_type = ('MACHO', e.Mhdr.cputype, (x.type, x.length, x.pcrel))
        if not r_type in reloc_suffixes:
            raise ValueError("Unknown Mach-O reloc %s;%d;%d on cpu %s"%(
                x.type, x.length, x.pcrel,
                macho.constants['CPU_TYPE'][e.Mhdr.cputype]
                ))
        if e.Mhdr.cputype != macho.CPU_TYPE_X86_64 and \
                 x.type in [ macho.GENERIC_RELOC_SECTDIFF,
                             macho.GENERIC_RELOC_LOCAL_SECTDIFF ]:
            # Scattered relocation with a difference of symbols
            if not x.scattered: TODO
            if x.pcrel: NON_REGRESSION_FOUND
            y = reloclist.pop(0)
            if not y.scattered: TODO
            if y.type != macho.GENERIC_RELOC_PAIR:
                constants = { 'GENERIC_RELOC': {} }
                macho.enumerate_constants(constants, macho.__dict__)
                raise ValueError("GENERIC_RELOC_%s should be followed by"
                    " GENERIC_RELOC_PAIR instead of GENERIC_RELOC_%s"%(
                    constants['GENERIC_RELOC'][x.type],
                    constants['GENERIC_RELOC'][y.type]))
            data = {
                'symbol':     x.symbolNumOrValue,
                'symbol_dif': y.symbolNumOrValue,
                }
        elif x.scattered:
            # Offset relative to a symbol at 'x.symbolNumOrValue'
            data = {
                'symbol': x.symbolNumOrValue,
                }
        elif x.extern:
            # Offset relative to a symbol of name 'name'
            data = {
                'name': s_list[x.symbolNumOrValue]['name'],
                }
        else:
            # Symbol at '(section, address)'
            section = e.sect.sect[x.symbolNumOrValue-1].sh
            data = {
                'section': '%s,%s'%(section.segname,section.sectname),
                'address': 0,
                }
        relocs[sh.addr+x.address] = (r_type, data)
    relocs.sortkeys()
    return relocs

def relocs_from_COFF(e, section):
    relocs = Relocs()
    s = e.getsectionbyname(section)
    for r in s.section_data.relocs: 
        r_type = ('COFF', e.Coffhdr.machine, r.Type)
        if r.symbol.sectionnumber == 0:
            data = {'name': r.name}
        else:
            data = {'section': r.name, 'address':r.symbol.value}
        relocs[r.VirtualAddress] = (r_type, data)
    relocs.sortkeys()
    return relocs

###################################################################
# Parse a binary, using some magic
def endofsection_address(symbols, section):
    e = symbols.file_elfesteem
    if not hasattr(e, 'getsectionbyname'):
        # RAW file, no sections
        return e.virt.max_addr()
    section = e.getsectionbyname(section)
    if section is None:
        return None
    address = section.addr + section.size
    if hasattr(e, 'NThdr'):
        address += e.NThdr.ImageBase
    return address

def create_data_bloc(label, lab_done, job_done, ret_blocs):
    if label in lab_done:
        assert hasattr(label, 'switch_table') or getattr(label, 'type', None) == 'padding'
        return
    lab_done.add(label)
    label.insert_bloc()
    job_done.add((label.section, label.address))
    if label.section == comm_symbol_section:
        set_data_bloc_content(label)
        return
    prv = label.symbols.previous(label)
    if prv is None or prv.address+prv.bytelen <= label.address:
        # 'prv' does not overlap 'label'
        # Normal data bloc analysis
        set_data_bloc_content(label)
        return
    # In some cases, 'label' is not a true label and should be defined
    # using an offset to some other label
    if prv.address+prv.bytelen == label.address + 1:
        line = prv.lines[-1]
        if isinstance(line, Constant4Byte) and hasattr(line.value[0], 'name'):
            nxt = label.symbols.find_symbol(section=label.section, address=label.address+1)
            log.info("rename %s to %s-%d (NOSPLIT)", label, nxt, 1)
            label.rename("%s-%d"%(nxt.name,1), force=True)
            label.delete_bloc()
            return
    log.debug("Split data bloc %r at %r", prv, label)
    size = prv.address+prv.bytelen-label.address
    if False and getattr(prv, 'switch_table', False):
        # Non-regression: elliptic.o from pari 2.5.5 / clang 700
        # If prv is a switch table, we recompute the data of 'prv'
        NON_REGRESSION_FOUND
        log.error("BLOC %r; PRV %r", label, prv)
        addr = prv.address
        for idx in range(len(prv.lines)):
            addr += prv.lines[idx].bytelen
            if addr == label.address:
                log.debug("Split data bloc %r at %r (line %d)", prv, label, idx)
                prv.lines = prv.lines[:idx+1]
                break
        else:
            NEVER
    else:
        # If prv is not a switch table, split it at prv
        set_data_bloc_content(prv, next=label)
    if prv.address+prv.bytelen > label.address:
        # Don't generate a bloc for 'label'
        NON_REGRESSION_FOUND
        return
    label.set_nxt(prv.nxt)
    if isinstance(prv.lines[0], ConstantStr) and prv.lines[-1].type == 'string':
        # null-terminated strings usually don't need to be contiguous
        if prv.nxt != None: NEVER
    else:
        # Stay contiguous, in case it is needed
        # We will merge some contiguous blocs later
        prv.set_nxt(label, force=True)
    set_data_bloc_content(label, size=size)

def additional_detection_of_switch_table(label, job_done):
    if not 'data_object' in getattr(label, 'data', {}) or \
            getattr(label, 'switch_table', False):
        return
    log.debug("additional_detection_of_switch_table %r", label)
    errors = 0
    for line in label.lines:
        if not isinstance(line, Constant4Byte): break
        pos = line.value[0]
        if pos > 2**31: pos -= 2**32
        pos = (label.section, label.address+pos)
        if not pos in job_done:
            errors += 1
    if errors*2 > len(label.lines):
        log.debug("... too many new positions %d/%d", errors, len(label.lines))
    label.switch_table = label, 4, None # 'None', because there may be padding
    label.setlines([])
    create_switch_table(label, set(), set(), None)

def find_prev_symbol(label):
    prev_symbol = None
    for l in label.symbols.symbols:
        if not hasattr(l, 'address'): continue
        if not hasattr(l, 'section'): continue
        if '.dll' in l.name: continue
        if l.section != label.section: continue
        if l.address >= label.address: continue
        if l.address > getattr(prev_symbol, 'address', -1):
            prev_symbol = l
    return prev_symbol

def find_next_symbol(label):
    next_symbol = None
    for l in label.symbols.symbols:
        if not hasattr(l, 'address'): continue
        if l.address <= label.address: continue
        if '.dll' in l.name: continue
        if not hasattr(l, 'section'): continue
        if l.section != label.section: continue
        if next_symbol is not None and next_symbol.address < l.address: continue
        next_symbol = l
    return next_symbol

def parse_data(data, size, label, ad=None):
    if size == 0: return []
    pool = label.symbols
    sect = label.section
    if ad is None: addr = label.address
    else:          addr = ad
    meta = pool.get_meta()
    def contains_reloc():
        if not 'relocatable' in meta: return False
        if not meta['relocatable']: return False
        _, relocs = pool.streams[sect]
        import bisect
        start = bisect.bisect_left(relocs.sortedkeys, addr)
        stop  = bisect.bisect_left(relocs.sortedkeys, addr+size)
        ret = []
        for k in relocs.sortedkeys[start:stop]:
            ret.append((k, relocs[k]))
        return ret
    # Detect data type
    relocs = contains_reloc()
    if relocs:
        # When there are relocations, we can deduce what is the type of
        # the corresponding chunk of data; we use the standard autodetection
        # technique for the rest
        endianess = pool.get_meta()['endianess']
        lines = []
        for r_ad, (r_type, r_data) in relocs:
            if r_ad != addr:
                skip = r_ad - addr
                lines.extend(parse_data(data[:skip],skip,label,ad=addr))
                data = data[skip:]
                addr += skip
            from plasmasm.get_symbols import reloc_suffixes
            PtrType = NumericConstant[reloc_suffixes[r_type][0]//8]
            ptrsize, _, ptrchar = PtrType.numeric
            if len(data) < ptrsize:
                # Merge with the next label
                end_ad = addr+len(data)
                nxt_ad = addr+ptrsize
                end = pool.find_symbol(section=sect, address=end_ad)
                nxt = pool.find_symbol(section=sect, address=nxt_ad)
                log.debug("%s merged after %s", end, label)
                log.info("rename %s to %s-%d (RELOC)", end, nxt, nxt_ad-end_ad)
                end.rename("%s-%d"%(nxt.name,nxt_ad-end_ad), force=True)
                in_str, _ = pool.streams[sect]
                data += in_str[end_ad:nxt_ad]
            v, = struct.unpack(endianess+ptrchar, data[:ptrsize])
            lines.append(PtrType(pool,v,section=sect,offset=addr))
            lines[-1].do_post_init()
            addr += ptrsize
            data = data[ptrsize:]
        if len(data):
            lines.extend(parse_data(data,len(data),label,ad=addr))
        return lines
    def is_mostly_printable(data):
        stripped = data.rstrip(data_null)
        if not len(stripped):
            return False
        import string
        if not type(stripped) == str: stripped = str(stripped, encoding='latin1')
        printable = [ _ for _ in stripped if _ in string.printable
                      or _ in '\033' ]
        printable = (len(printable)+0.)/len(stripped)
        if printable > 0.99:
            return True
        return False
    if (sect.startswith('.rodata.str') or sect.startswith('__TEXT,__cstring')) \
            and data != data_null*size:
        # Such sections should contain only strings
        # We only parse until the end of the string
        if not data_null in data:
            NON_REGRESSION_FOUND
            lines = [ ConstantStr(pool,data,'ascii',section=sect,offset=addr) ]
        else:
            data = data[:1+data.index(data_null)]
            lines = [ ConstantStr(pool,data,'string',section=sect,offset=addr) ]
    elif size in [1,2,4] and not sect == '.rdata':
        # An integer value; don't create .quad, we prefere a table of .long
        # .rdata usually contains strings of pointer tables for switch
        endianess = pool.get_meta()['endianess']
        NumericType = NumericConstant[size]
        value, = struct.unpack(endianess+NumericType.numeric[2], data)
        lines = [ NumericType(pool,value,section=sect,offset=addr) ]
    elif data == data_null*size:
        # Null padding
        lines = [ ConstantZero(pool,size,section=sect,offset=addr) ]
    elif ad is None and is_mostly_printable(data):
        # May be a string, are there mostly printable characters?
        # If ad is not None, we must not strip; but anymway if ad is not None
        # it is unlikely that it is a string
        if data[-1:] == data_null and is_mostly_printable(data.rstrip(data_null)):
            data = data.rstrip(data_null)+data_null
            lines = [ ConstantStr(pool,data,'string',section=sect,offset=addr) ]
            label.set_nxt(None, force=True)
        else:
            lines = [ ConstantStr(pool,data,'ascii',section=sect,offset=addr) ]
    elif size%4 == 0:
        # It may be a table of pointers
        endianess = pool.get_meta()['endianess']
        v = struct.unpack(endianess+"I"*int(size//4), data)
        lines = [ Constant4Byte(pool,v[idx],section=sect,offset=addr+4*idx)
            for idx in range(int(size//4))]
    else:
        # Raw data
        lines = [ ConstantStr(pool,data,'ascii',section=sect,offset=addr) ]
    # Update and output lines
    for _ in lines: _.do_post_init()
    return lines

def set_data_bloc_content(label, next = None, size = None):
    if next is None:
        next = find_next_symbol(label)
    # Find the length of the data chunk
    if size is not None:
        pass
    elif label.section == comm_symbol_section:
        size = label.size
    else:
        if next is None:
            address = endofsection_address(label.symbols, label.section)
            if address is not None and label.address < address:
                size = address - label.address
            elif address is not None:
                # The label is after the end of the section!
                # Example codecs.o from python 2.4.5 compiled with gcc 4.9.2
                # Used for a comparison for the end of an object
                prev = label.symbols.previous(label)
                size = label.address - prev.address
                rename_label(label.symbols, label, prev, size, why='END')
                label.delete_bloc()
                return
            elif hasattr(label, 'size'):
                NON_REGRESSION_FOUND
                size = label.size
            else:
                raise ValueError("%r has no size" % label)
        else:
            size = next.address - label.address
    if hasattr(label, 'size'):
        if label.size == 0 and not hasattr(label, 'type'):
            # Label created for relocation
            pass
        elif label.size == 0 and not getattr(label, 'visibility', None) == 'hidden':
            log.warning("Symbol with size zero %r", label)
        elif label.size < size:
            # The data does not continue until the next symbol
            size = label.size
        elif label.size > size:
            # We may later merge the data blocs but we don't do it now
            pass
    # Extract and analyze the data
    if section_type(label.section) in [ 'bss', 'common']:
        lines = [ ConstantZero(label.symbols, size, section = label.section, offset = label.address) ]
    else:
        in_str, _ = label.symbols.streams[label.section]
        data = in_str[label.address:label.address+size]
        lines = parse_data(data, size, label)
    label.setlines(lines)
    if label.section == comm_symbol_section:
        return
    # Guess alignment values, based on Mach-O section characteristics
    # Note that the actual alignment is 2**align
    if not hasattr(label, 'align') and label.section.startswith('__'):
        attributes = label.symbols.sections.asm_name.get(label.section, '')
        if attributes.endswith(',16byte_literals'):
            label.set_align(1<<4)
        elif attributes.endswith(',8byte_literals'):
            label.set_align(1<<3)
        elif attributes.endswith(',4byte_literals'):
            label.set_align(1<<2)
        elif attributes.endswith(',cstring_literals'):
            pass
        elif attributes.endswith(',(zerofill)'):
            # This guess may not be true, but there is no difference between
            # binaries generated from
            #     .zerofill __DATA,__bss,_main.d,1,0      ## @main.d
            #     .zerofill __DATA,__bss,_main.j,4,2      ## @main.j
            # and from
            #     .zerofill __DATA,__bss,_main.d,4,0      ## @main.d
            #     .zerofill __DATA,__bss,_main.j,4,2      ## @main.j
            if next is not None: label.size = next.address
            else: label.size = label.symbols.sections.eos[label.section]
            label.size -= label.address
            # align is the log2 of the alignment
            align = compute_alignment(label.size, getattr(label, 'address', 0))
            label.set_align(align)
        elif label.name.startswith('L'):
            pass
        elif label.section == '__TEXT,__const':
            label.set_align(1<<4)
        elif label.section in [ '__DATA,__data', '__DATA,__const' ]:
            if   label.lines[0].__class__ == Constant4Byte:
                label.set_align(1<<2)
            elif label.lines[0].__class__ == Constant8Byte:
                label.set_align(1<<4)
        elif getattr(label, 'type', None) == 'padding':
            NON_REGRESSION_FOUND
            pass
        elif label.section in ( '__DATA,__mod_init_func',
                                '__DATA,__mod_term_func' ):
            if   label.lines[0].__class__ == Constant4Byte:
                label.set_align(1<<2)
            elif label.lines[0].__class__ == Constant8Byte:
                label.set_align(1<<3)
        else:
            log.error("ALIGN for %r %r", label.section, attributes)
    elif not hasattr(label, 'align') and label.section.startswith('.'):
        if label.section.startswith('.rodata.cst16'):
            label.set_align(16)
        elif label.section.startswith('.rodata.cst8'):
            label.set_align(8)
        elif label.section.startswith('.rodata.cst4'):
            label.set_align(4)
    # Guess alignment of next symbol, based on the existence of padding
    while getattr(next, 'type', None) in [ 'padding', 'endofsymbol' ]:
        next = find_next_symbol(next)
    if next is not None and not hasattr(next, 'align'):
        next_address = label.bytelen
        if next_address > 0: next_address -= 1
        next_address += label.address
        for align in [ 1, 2, 4, 8 ]:
            if next.address == (next_address//align+1)*align:
                if align > 1: next.set_align(align)
                break

def get_table_line(label, switch_base, ptr_size, in_str, addr):
    pool = label.symbols
    PtrType = NumericConstant[ptr_size]
    meta = pool.get_meta()
    fmt = meta['endianess'] + PtrType.numeric[2].lower()
    _, relocs = pool.streams[label.section]
    v, = struct.unpack(fmt, in_str[addr:addr+ptr_size])
    if switch_base == '.':
        # gcc 4.1.1; each table line is of the form
        # _GLOBAL_OFFSET_TABLE_+[.-.L42]
        v -= addr - 2
    else:
        v += switch_base.address
    if label.address in relocs:
        if not addr in relocs:
            # padding
            return False
        r_type, r_data = relocs[addr]
        from plasmasm.get_symbols import reloc_suffixes
        assert ptr_size == reloc_suffixes[r_type][0]//8
        l = PtrType(pool,v,section=label.section,offset=addr)
        l.apply_reloc(addr, relocs[addr], label_dif=switch_base)
    else:
        section = label.symbols.file_elfesteem.getsectionbyvad(v)
        if section is None:
            # padding
            return False
        v = label.symbols.find_symbol(section=section.name, address=v)
        v = label.symbols.find_symbol(name="%s-%s" % (v,switch_base))
        l = PtrType(pool,v,section=label.section,offset=addr)
    log.debug("Added to switch %s[%d] %s", label, len(label.lines), l)
    label.lines.append(l)
    return True

def create_switch_table(label, lab_done, job_done, ret_blocs):
    if not getattr(label, 'switch_table', False):
        return False
    # switch compiled by clang or gcc 64-bit in PIC mode
    if hasattr(label, 'size'):
        # Already parsed
        return False
    switch_base, ptr_size, tbl_size = label.switch_table
    if not hasattr(label, 'lines'):
        log.debug("Create switch table %s [%d;%s;%s]",
            label, ptr_size, switch_base, tbl_size)
        label.insert_bloc()
        label.setlines([])
        prv = label.symbols.previous(label)
        if prv is not None and prv.address+prv.bytelen > label.address:
            if getattr(prv, 'switch_table', False):
                # Switch table, split prv at label
                addr = prv.address
                for idx in range(len(prv.lines)):
                    addr += prv.lines[idx].bytelen
                    if addr == label.address:
                        log.debug("Split switch table %r at %r (line %d)",
                            prv, label, idx)
                        prv.lines = prv.lines[:idx+1]
                        break
                else:
                    NEVER
            else:
                # Not a switch table, recompute prv
                set_data_bloc_content(prv, next=label)
    addr = label.address + ptr_size * len(label.lines)
    next = find_next_symbol(label)
    if next is None:
        addr_end = endofsection_address(label.symbols, label.section)
    else:
        addr_end = next.address
    def end_of_table():
        # We return True because we need that the CFG is re-computed
        log.debug("End of switch table %s", label)
        lab_done.add(label)
        job_done.add((label.section, label.address))
        label.size = ptr_size * len(label.lines)
        return True
    if addr == addr_end:
        # We reached the end of the switch table
        return end_of_table()
    if addr+ptr_size > addr_end:
        # We are beyond the end of the switch table
        # Because the next switch table was not known
        NON_REGRESSION_FOUND
        log.warning("Switch table %s has %d dummy elements at the end",
            label, (addr-addr_end)//ptr_size)
        for idx in range((addr_end-label.address)//ptr_size, len(label.lines)):
            dummy = label.lines[idx].value[0].name[:-1-len(label.name)]
            dummy = label.symbols.find_symbol(name=dummy)
            log.debug("... need to delete %r", dummy)
            if dummy in lab_done:
                log.debug("... too late :-(")
            lab_done.add(dummy)
        label.lines[(addr_end-label.address)//ptr_size:] = []
        return end_of_table()
    # Extract and analyze the data
    in_str, _ = label.symbols.streams[label.section]
    if tbl_size is None:
        # Parse only the next line
        if not get_table_line(label, switch_base, ptr_size, in_str, addr):
            return end_of_table()
        if addr+ptr_size == addr_end:
            # We reached the end of the switch table
            return end_of_table()
    else:
        if len(label.lines) != 0:
            log.debug("SWITCH TABLE EXTENSION %s (%d=>%d lines)",
                label, len(label.lines), tbl_size)
        for idx in range(tbl_size-len(label.lines)):
            assert get_table_line(label, switch_base, ptr_size, in_str, addr+ptr_size*idx)
        return end_of_table()
    return True

def add_one_instr(label, job_done):
    in_str, _ = label.symbols.streams[label.section]
    job_done.add((label.section, in_str.offset))
    instr = label.symbols.arch(label.symbols).from_bin(in_str, label.section)
    instr.do_post_init()
    label.addline(instr)
    return instr

from plasmasm.symbols import StackTop
from plasmasm.symbols import should_return
def set_cfg_stack(ret_blocs, label, instr, flow):
    if   flow.endswith('jcc'):
        label.set_cfg(instr.dst+[label.nxt])
        for dst in label.cfg:
            dst.stack.stack_append(label.stack)
        label.nxt.stack.stack_append(label.stack)
    elif flow.endswith('jmp'):
        instr_dst = instr.dst
        if len(instr_dst) == 1 and isinstance(instr_dst[0], list):
            # Non-resolved switch table
            instr_dst = [ None ]
        label.set_cfg(sorted(list(set(instr_dst))))
        for dst in label.cfg:
            if dst is None: continue
            dst.stack.stack_append(label.stack)
            if not hasattr(dst, 'address') and should_return(dst):
                # External function return
                # This can happen when tail-call optimisation is made
                ret_blocs.add(dst)
    elif flow.endswith('ret'):
        ret_blocs.add(label)
    elif flow.endswith('sub'):
        dst_list = [ ]
        for dst in instr.dst:
            while 'set' in getattr(dst, 'data', {}):
                dst = dst.data['set']
            dst_list.append(dst)
        label.set_cfg(dst_list)
        pos = instr.offset + instr.bytelen
        if flow.startswith('D.'): pos += instr.bytelen
        for dst in dst_list:
            if dst is not None:
                dst.stack.stack_append(label.stack,
                    top=StackTop(pos, label.section, label))
        if should_return(dst_list):
            # At least one dst cannot be analyzed and the guess is
            # that that subroutine returns
            label_nxt = label.symbols.find_symbol(address = pos, section = label.section)
            label.set_nxt(label_nxt)
            label_nxt.stack.stack_append(label.stack)
            for dst in dst_list:
                if dst is not None and should_return(dst):
                    # e.g. symbol@PLT
                    dst.set_flow('ret')
                    ret_blocs.add(dst)
    elif flow == 'PIC':
        # call does not lead to a subroutine: it is used to push the current
        # address on the stack
        label.set_cfg(instr.dst)
        label_nxt = label.symbols.find_symbol(address = instr.offset + instr.bytelen, section = label.section)
        label_nxt.stack.stack_append(label.stack)
        label.set_nxt(label_nxt)
    else:
        NEVER

def create_text_bloc(label, lab_done, job_done, ret_blocs):
    lab_done.add(label)
    label.insert_bloc()
    if (label.section, label.address) in job_done:
        labels = label.symbols.find_symbols(address = label.address, section = label.section)
        if len(labels) > 1:
            # There was already a symbol at this address
            # we have to detect whether the new label will be before of after
            l = [ _ for _ in labels if _ is not label ]
            l = [ _ for _ in l if not 'set' in getattr(_, 'data', {}) ]
            if len(l) > 1:
                for _ in l:
                    log.error("Label %r", _)
                TODO
            l = l[0]
            if not label.is_symbol() and l.type == 'function':
                # Label has created for a local jmp
                # Put the new label after the original one
                l.split(label, 0)
                return None
            for _ in labels:
                log.error("Label %r", _)
            TODO
        # We are in the middle of an existing basic bloc
        l = label.symbols.previous(label)
        idx = l.find_address(label.address)
        if idx is None:
            NON_REGRESSION_FOUND
            # zlib gcc 4.9.2 64-bit outparse-minigzip
            return None
        l.split(label, idx)
        if l in ret_blocs:
            ret_blocs.discard(l)
            ret_blocs.add(label)
        return label.flow
    # Create one basic bloc, and additional symbols
    in_str, _ = label.symbols.streams[label.section]
    in_str.offset = label.address
    while True:
        if (label.section, in_str.offset) in job_done:
            l = label.symbols.find_symbol(address = in_str.offset, section = label.section)
            if l == label:
                # This should never happen,
                # because of the test at the beginning of this function
                raise ValueError("Report a bug, please")
            # We have reached another existing basic bloc
            label.set_nxt(l)
            label.set_cfg([l])
            l.stack.stack_append(label.stack)
            return None
        instr = add_one_instr(label, job_done)
        log.log(8, "   %#x %s", instr.offset, instr)
        flow = getattr(instr, 'flow', False)
        if flow is not None:
            break
    label.set_flow(flow)
    if flow is False:
        NON_REGRESSION_FOUND
        return flow
    # Check the offset
    pos = instr.offset + instr.bytelen
    if flow is not None and flow.startswith('D.'):
        slot_instr = add_one_instr(label, job_done)
        pos += slot_instr.bytelen
    if pos != in_str.offset:
        NON_REGRESSION_FOUND
        log.error("Invalid offset after %s", instr)
        log.error("POS %d LEN %d END %d",
            instr.offset, instr.bytelen, in_str.offset)   
    # Create nxt label, if needed
    if flow is not None and flow.endswith('jcc'):
        label_nxt = label.symbols.find_symbol(address = in_str.offset, section = label.section)
        label_nxt.insert_bloc()
        label.set_nxt(label_nxt)
    # Guess alignment values, based on section characteristics
    if not hasattr(label, 'align') and getattr(label, 'bind', None) == 'globl':
        attributes = label.symbols.sections.asm_name.get(label.section, '')
        if attributes.endswith(',pure_instructions'):
            label.set_align('4, 0x90')
    # The bloc is executed, we need to update the return stacks
    set_cfg_stack(ret_blocs, label, instr, flow)
    return label.flow

def rename_label(pool, old, new, addend, why=None):
    if old.name.endswith('-1'):
        return
    for other in pool.symbols:
        if old is other:
            continue
        if not old.name in other.name:
            continue
        prefix = other.name[:other.name.index(old.name)]
        suffix = other.name[other.name.index(old.name)+len(old.name):]
        if   prefix == '' and suffix.startswith('@'):
            # Rename labels having relocation suffixes, too
            log.info("rename %s to %s%s+%d (DEP A)", other, new, suffix, addend)
            other.rename("%s%s+%d"%(new.name, suffix, addend), force=True)
        elif prefix == '' and suffix.startswith('+'):
            # Rename labels having shift
            offset = int(suffix[1:])
            log.info("rename %s to %s+%d (DEP B)", other, new, addend+offset)
            other.rename("%s+%d"%(new.name, addend+offset), force=True)
        elif prefix == '' and suffix.startswith('-'):
            NON_REGRESSION_FOUND
        elif prefix.endswith('+') and suffix.startswith('@'):
            # Rename labels having relocation suffixes and shift
            NON_REGRESSION_FOUND
            offset = int(prefix[:-1])
            log.info("rename %s to %s%s+%d (DEP C)",
                other, new, suffix, addend+offset)
            other.rename("%s%s+%d"%(new.name, suffix, addend+offset), force=True)
        elif suffix.startswith('.'):
            # e.g. old == .LC00000014 and other == .LC00000014.str1.1
            pass
        else:
            log.error("[rename_label] %s %s ; %s %s",
                old, other, prefix, suffix)
    if '@' in new.name:
        new_name = "%d+%s" % (addend, new.name)
    else:
        new_name = "%s+%d" % (new.name, addend)
    log.info("rename %s to %s (%s)", old, new_name, why)
    old.rename(new_name, force=True)

def merge_into(nxt, label):
    pool = label.symbols
    if not label.nxt in [ None, nxt ]:
        NON_REGRESSION_FOUND
        # This is a symptom of a bad analysis, which should be improved
        # It happens rarely; an example is gcmodule.o from python 2.4.5
        # compiled with gcc 4.6.3
        log.warning("Next of '%s' is '%s' instead of '%s'",
            label, label.nxt, nxt)
    size = nxt.address-label.address
    if hasattr(label, 'lines'):
        lines = []
        for line in label.lines+nxt.lines:
            if len(lines) > 0 and getattr(lines[-1], 'type', None) == 'ascii':
                # For non-null terminated strings, merge the strings instead
                # of adding a new line in the bloc
                cst_type = getattr(line, 'type', None)
                if cst_type in [ 'string', 'ascii' ]:
                    line = ConstantStr(pool, lines[-1].value+line.value, cst_type)
                    lines.pop()
            lines += [ line ]
        label.setlines(lines)
    label.set_nxt(nxt.nxt, force=True)
    nxt.delete_bloc()
    nxt.set_nxt(None, force=True)
    rename_label(pool, nxt, label, size, why='MERGE')

# When creating labels in data sections, we don't know if in reality they are
# offsets to another symbol, e.g. when the asm source contained 'toto+10'
# or 'toto-1'.
# This function is an attempt at detecting when data blocs should be merged.
# It is based on various heuristics using what is in the symbol table, and
# therefore does not work on stripped binaries.
# A better technique, which would work on stripped binaries, would need an
# interprocedural analysis of the accesses to data, to detect how each label
# is used.
def merge_data_blocs(symbols):
    if not hasattr(symbols, 'streams'):
        # compatibility-mode: a label has been passed as argument
        symbols = symbols.symbols
    for section in symbols.streams:
        if not section_type(section) in [ 'rodata', 'data', 'bss' ]:
            continue
        labels = sorted(
            [ _ for _ in symbols.symbols if getattr(_, 'section', None) == section ],
            key=lambda l:l.address)
        for idx, label in enumerate(labels):
            if idx == len(labels)-1:
                continue
            if getattr(label, 'type', None) == 'padding':
                continue
            while hasattr(label, 'lines') and \
                  hasattr(label, 'size') and \
                  label.bytelen != label.size:
                # When a data bloc is shorter than its size, it should be
                # merged with the next one(s)
                if label.size == 0 and \
                    label.section.startswith('.rodata.str') and \
                    label.lines[-1].type == 'string':
                    # Don't merge rodata strings if they are null-terminated
                    # Merging triggers bugs, e.g. a bug of ld (binutils 2.22)
                    # triggered when obfuscating pari (plotport.o)
                    break
                size = label.bytelen
                if size > label.size:
                    log.warning("'%s' has symbol size %d < data size %d",
                        label, label.size, size)
                    break
                idx += 1
                nxt = labels[idx]
                if size != nxt.address-label.address or \
                        not hasattr(nxt, 'lines') or hasattr(nxt, 'bind'):
                    log.error("Merge %r of size %s with next %r",
                        label, size, nxt)
                    log.error("%s", label.display())
                    log.error("%s", nxt.display())
                    FAIL
                log.debug("merge %r into %r", nxt, label)
                merge_into(nxt, label)
            while (not hasattr(label, 'lines')) and \
                  hasattr(label, 'size') and \
                  label.address+label.size > labels[idx+1].address:
                idx += 1
                nxt = labels[idx]
                if not hasattr(nxt, 'data') or label != nxt.data['set']:
                    log.debug("merge empty %r into %r", nxt, label)
                    merge_into(nxt, label)
            # Detection of some cases where 'toto-1' was in the asm,
            # which happens a lot when compiling Fortran because arrays
            # start at 1.
            # We hope that there will be no false positives, but a value
            # analysis is the only reliable way to detect e.g. the difference
            # between toto-1 and tata+1 when tata is of length 2.
            nxt = labels[idx+1]
            if 1 == nxt.address-label.address and \
                    hasattr(nxt, 'lines') and \
                    hasattr(nxt, 'bind') and \
                    hasattr(label, 'lines') and \
                    not hasattr(label, 'bind'):
                if idx > 0:
                    prv = labels[idx-1]
                    if hasattr(prv, 'lines') and (not hasattr(prv, 'size')
                        or getattr(prv, 'type', None) == 'padding'):
                        log.debug("merge %r into %r", label, prv)
                        merge_into(label, prv)
                        data = prv.pack()
                        lines = parse_data(data, len(data), prv)
                        prv.setlines(lines)
                    elif isinstance(label.lines[0], ConstantZero):
                        # Previous bloc is empty, current bloc is null
                        log.debug("Delete null %s", label)
                        label.delete_bloc()
                    else:
                        # Probably a false positive, we don't rename
                        # this label
                        continue
                log.info("rename %s to %s-1 (ARRAY)", label, nxt)
                label.rename("%s-1"%nxt.name, force=True)

def address_in_function(symbols, section, address):
    if section.startswith('__TEXT,__text'):
        # Mach-O symbols don't have type nor size :-(
        return True
    for label in symbols.blocs:
        if not getattr(label, 'type', None) == 'function':
            continue
        if not getattr(label, 'section', None) == section:
            continue
        if not hasattr(label, 'size'):
            continue
        if label.address <= address < label.address+label.size:
            return True
    return False

def create_symbols_in_holes(symbols, lab_done, job_done, ret_blocs):
    e = symbols.file_elfesteem
    if not hasattr(e, 'getsectionbyname'):
        # RAW file, no sections
        return
    # Sorted labels for each section
    sorted_labels = {}
    for section in symbols.streams:
        if section_type(section) in [ 'bss', 'common', 'plt' ]: continue
        sorted_labels[section] = sorted(
            [ label for label in symbols.symbols
                if getattr(label, 'section', None) == section ],
            key=lambda _:_.address)
    # Create a label at the start of each section, needed for padding
    # Find holes and create padding
    for section in sorted_labels:
        labels = sorted_labels[section]
        if len([ _ for _ in labels if _ in symbols.bloc_set ]) == 0: continue
        if e.getsectionbyname(section).size == 0: NEVER
        ad = e.getsectionbyname(section).addr
        if hasattr(e, 'isPE'):
            ad = e.rva2virt(ad)
        if hasattr(e, 'Ehdr'):
            from elfesteem import elf
            if  not e.has_relocatable_sections() and \
                symbols.get_meta().get('compiler') == 'gcc' and \
                e.Ehdr.machine == elf.EM_386 and \
                section in [ '.data', '.rodata' ]:
                # 8 bytes of junk at the start of the section
                ad += 8
        label = symbols.find_symbol(address=ad, section=section, type='padding')
        if getattr(label, 'type', None) == 'padding' and not label in lab_done:
            create_bloc(label)(label, lab_done, job_done, ret_blocs)
    if not hasattr(e, 'Ehdr') and not hasattr(e, 'Mhdr'):
        return
    # Find holes and create padding
    for section in sorted_labels:
        labels = sorted_labels[section]
        for idx, l in enumerate(labels):
            if idx == len(labels)-1:
                continue
            if symbols.cds.will_not_show(l.name) and l.name != '_IO_stdin_used':
                # _IO_stdin_used is the last one before the user-defined rodata
                # we need it to detect rodata that is before the first symbol
                continue
            if getattr(labels[idx+1], 'type', None) != 'endofsymbol' \
                    and symbols.cds.will_not_show(labels[idx+1].name):
                continue
            if 'set' in getattr(l, 'data', {}):
                continue
            if len(labels[idx].cfg) == 1 and str(labels[idx].cfg[0]).startswith('.rel.plt'):
                continue
            nxt_addr = l.address
            if hasattr(l, 'lines'):
                nxt_addr += l.bytelen
            elif getattr(l, 'type', None) == 'padding':
                pass # empty padding that was deleted
            else:
                log.warning("We should be able to compute the size of '%s'", l)
                continue
            if nxt_addr < labels[idx+1].address:
                label = symbols.find_symbol(address=nxt_addr,
                    section=section,
                    size=labels[idx+1].address-nxt_addr)
                if not address_in_function(symbols, section, nxt_addr):
                    label.type = 'padding'
                    if hasattr(label, 'size'): del label.size
                log.log(9, "*  %r", label)
                create_bloc(label)(label, lab_done, job_done, ret_blocs)
                if getattr(label.nxt, 'type', None) is not None or \
                   'data_object' in getattr(label.nxt, 'data', {}) or \
                   getattr(label.nxt, 'switch_table', False):
                    # Padding followed by an object or a switch table
                    label.set_nxt(None, force=True)
                    label.set_cfg([])
                # Isolated nop padding
                if l.nxt is None and label.nxt is not None \
                    and len(label.lines) >= 1 \
                    and label.lines[0].opname == 'nop':
                    label.set_nxt(None, force=True)
                    label.set_cfg([])
        # Deal with alignment of rodata
        if section == '.rodata':
            align = e.getsectionbyname(section).sh.addralign
            if align > 1: 
                labels = sorted(labels, key=lambda l:getattr(l,'align',0), reverse=True)
                for label in labels:
                    if label.address % align == 0:
                        label.set_align(align)
                        break

def delete_useless_longnops(symbols):
    from plasmasm.constants import P2Align
    for idx, label in enumerate(symbols.blocs):
        # Delete longnop blocs followed by aligned blocs
        pos = (label.section, label.address + label.bytelen)
        for nxt in symbols.symbols_byaddress.get(pos, []):
            if hasattr(nxt, 'align') \
                    and len(label.lines) == 1 \
                    and isinstance(label.lines[0], P2Align):
                log.debug("Delete useless %s", label)
                label.delete_bloc()
                break
        # Delete a bloc that contains only a label to a non visible symbol
        if len(getattr(label, 'lines', [])) == 1 \
                and isinstance(label.lines[0], Constant4Byte) \
                and len(label.lines[0].value) == 1 \
                and hasattr(label.lines[0].value[0], 'name') \
                and symbols.cds.skip_bloc(label.lines[0].value[0].name):
            label.delete_bloc()

def create_no_bloc(label, lab_done, job_done, ret_blocs):
    lab_done.add(label)
    if hasattr(label, 'section') and not 'set' in getattr(label, 'data', {}):
        job_done.add((label.section, label.address))

def create_unknown_bloc(label, lab_done, job_done, ret_blocs):
    create_no_bloc(label, lab_done, job_done, ret_blocs)
    log.error("Unknown label type %r", label)

from plasmasm.symbols import section_type
def create_bloc(label):
    # symbols not to analyze
    if getattr(label, 'section', None) in [
            None,
            # ELF
            '.got',
            '.got.plt',
            # PE
            '.stab',
            ]:
        return create_no_bloc
    if getattr(label, 'switch_table', False):
        return create_switch_table
    if 'data_object' in getattr(label, 'data', {}):
        # This symbol was loaded by lea, therefore is data and not text
        return create_data_bloc
    if 'set' in getattr(label, 'data', {}):
        # This symbol is the duplicate of another one
        return create_no_bloc
    if label.symbols.cds.skip_bloc(label.name):
        return create_no_bloc
    # symbols that will have blocs attached to them
    if not hasattr(label, 'type'):
        sect_type = section_type(label.section)
        if sect_type in ['text', 'plt']:
            return create_text_bloc
        elif sect_type in ['data', 'rodata', 'bss', 'common']:
            return create_data_bloc
        else:
            return create_unknown_bloc
    if label.type in ['tls_object', 'gnu_unique_object', 'object']:
        return create_data_bloc
    elif label.type == 'function':
        return create_text_bloc
    elif label.type == 'endofsymbol':
        return create_no_bloc
    elif label.type == 'rel.dyn':
        return create_data_bloc
    elif label.type == 'padding':
        if endofsection_address(label.symbols, label.section) == label.address:
            # Symbol is at end of section => no padding
            # Rename the symbol, because this address may be used
            prev = find_prev_symbol(label)
            if prev is not None:
                name = "%s+%d" % (prev.name, label.address-prev.address)
                label.rename(name, force=True)
            return create_no_bloc
        if getattr(find_next_symbol(label), 'name', None) == '__libc_csu_init':
            # Don't create a data bloc for the padding between the end of
            # 'main' and '__libc_csu_init'
            return create_no_bloc
        return create_data_bloc
    return create_unknown_bloc

def parse_bin_file(symbols):
    if symbols.get_meta().get('compiler', None) == 'clang' and \
       symbols.arch.CPU == 'X64':
        symbols.cds.clang64()
    # opcodes disassembled; pairs (section, address)
    job_done = set()
    # symbols analyzed
    lab_done = set([ _ for _ in symbols.symbols if hasattr(_, 'lines') ])
    # basic blocs that end with 'ret'
    ret_blocs = set()
    # We add external functions that return
    for s in symbols.symbols:
        if should_return(s, cds=symbols.cds): ret_blocs.add(s)
    # If there is a known entrypoint, add the bloc and analyse it
    if symbols.ep is not None:
        create_bloc(symbols.ep)(symbols.ep, lab_done, job_done, ret_blocs)
        symbols.cds.detection(symbols.ep)
    lab_type = set()
    targets = {
        create_no_bloc: [],
        create_text_bloc: [],
        create_data_bloc: [],
        create_switch_table: [],
        create_unknown_bloc: [],
        }
    while True:
        for label in symbols.symbols:
            if label in lab_type: continue
            if label in lab_done: continue # Needed, if labels created in holes
            targets[create_bloc(label)].append(label)
            lab_type.add(label)
        # 'targets' contains lists of labels that have no bloc and should be
        # analysed
        # How this list is created is very important: label generation uses many
        # non-sound heuristics, and therefore we prefer to begin with the more
        # reliable guesses
        todo = targets[create_no_bloc]
        if len(todo):
            log.debug("*** found %d labels with no bloc", len(todo))
            for bloc in todo:
                log.log(9, "   %r", bloc)
                create_no_bloc(bloc, lab_done, job_done, ret_blocs)
            # continue # Commented, because no new label found by
            #            create_no_bloc, we don't need to loop again
            targets[create_no_bloc] = []
        todo = targets[create_text_bloc]
        if len(todo):
            log.debug("*** found %d labels with text bloc", len(todo))
            for bloc in todo:
                log.log(9, "   %r", bloc)
                create_text_bloc(bloc, lab_done, job_done, ret_blocs)
            # We do data blocs after text blocs, because when there are
            # consecutive switch tables, that's how we detect all start
            # of tables
            targets[create_text_bloc] = []
            continue
        # Switch tables with known size
        todo = targets[create_switch_table]
        if len(todo):
            log.debug("*** found %d labels with switch table", len(todo))
            for bloc in todo:
                log.log(9, "   %r", bloc)
                create_switch_table(bloc, lab_done, job_done, ret_blocs)
            targets[create_switch_table] = []
            continue
        # Create labels where each call returns
        more_labels = False
        for r in sorted(ret_blocs, key=lambda _:_.name):
            more_labels |= r.stack.emulate_ret(symbols)
        if more_labels:
            log.debug("New labels found by evaluating 'ret'")
            continue
        # Some static analysis for CFG computation, may create labels
        for label in symbols.symbols:
            instr = label.compute_dst()
            if instr is not None:
                more_labels = True
                set_cfg_stack(ret_blocs, label, instr, instr.flow)
        if more_labels:
            log.debug("New labels found by expanding CFG")
            continue
        # Specific management of switch tables
        # This is done late in the process, because we don't have any
        # reliable way to detect the end of the switch table, especially
        # when there are many contiguous switch tables; but even then
        # we cannot hope that at this point the label detection found
        # the end of all switch tables
        # Switch tables are identified by a key in label, which
        # contains the size of items and the base label when the table
        # is made of label differences
        # We don't use targets[create_switch_table] because we add only
        # one line per switch table, which needs create_switch_table to
        # be called many times for each
        for label in symbols.symbols:
            log.log(9, "   %r", label)
            more_labels |= create_switch_table(label, lab_done, job_done, ret_blocs)
        if more_labels:
            log.debug("New labels found in switch tables")
            continue
        todo = targets[create_data_bloc]
        if len(todo):
            log.debug("*** found %d labels with data bloc", len(todo))
            for bloc in todo:
                log.log(9, "   %r", bloc)
                create_data_bloc(bloc, lab_done, job_done, ret_blocs)
            # We do data blocs after text blocs, because when there are
            # consecutive switch tables, that's how we detect all start
            # of tables
            targets[create_data_bloc] = []
            continue
        todo = targets[create_unknown_bloc]
        if len(todo):
            log.debug("*** found %d labels with unknown bloc", len(todo))
            for bloc in todo:
                log.log(9, "   %r", bloc)
                create_unknown_bloc(bloc, lab_done, job_done, ret_blocs)
            targets[create_unknown_bloc] = []
        # There might be holes between the blocs that have been found
        create_symbols_in_holes(symbols, lab_done, job_done, ret_blocs)
        for r in ret_blocs:
            more_labels |= r.stack.emulate_ret(symbols)
        if more_labels:
            log.debug("New labels found by emulating ret after filling holes")
            continue
        remaining_targets = [ _ for _ in symbols.symbols if not _ in lab_done ]
        if len(remaining_targets):
            log.debug("New labels found by filling holes that were not parsed")
            continue
        for label in symbols.symbols:
            additional_detection_of_switch_table(label, job_done)
        remaining_targets = [ _ for _ in symbols.symbols if not _ in lab_done ]
        if len(remaining_targets):
            log.debug("New labels found by additional detection of switch table")
            continue
        # No more label; some analysis may have been impossible
        for label in symbols.symbols:
            if 'cfg_warn' in getattr(label, 'data', {}):
                instr, msg, retval = label.data['cfg_warn']
                label.del_data('cfg_warn')
                # If 'label' has been split, 'instr' is not there anymore
                # and no warning is needed
                if instr in label.lines:
                    log.warning("dst of '%s' at (%s)", label, instr)
                    log.warning("... %s (TODO) '%s'", msg, retval)
        break
    merge_data_blocs(symbols)
    if symbols.arch.CPU in ['I386', 'X64'] and \
        symbols.get_meta().get('compiler', None) in [ 'gcc', 'clang' ]:
        symbols.cds.match_x86_long_nop()
    symbols.cds.compiler_dependent_stuff()
    delete_useless_longnops(symbols)
