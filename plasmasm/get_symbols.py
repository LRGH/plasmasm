# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    from plasmasm.python.compatibility import reversed, sorted
except ImportError:
    pass
from plasmasm.symbols import comm_symbol_section, section_type

def get_dynsyms(e):
    if hasattr(e, 'Ehdr'):
        relocs = [ sh for sh in e.sh if sh.sh.name in
            [ a+b for a in [ '.rel', '.rela' ] for b in [ '.plt', '.dyn' ] ] ]
        return [ {
                'name': sh.sh.name + '.' + r.sym,
                'address': r.offset,
                'section': e.getsectionbyvad(r.offset).sh.name,
                }
            for sh in relocs for r in sh.reltab ]
    elif hasattr(e, 'isPE') and e.isPE():
        imports = []
        for s in e.DirImport.impdesc:
            libname = str(s.dlldescname.name.lower().encode('latin1'))
            for ii, imp in enumerate(s.impbynames):
                if hasattr(imp, 'name'):
                    funcname = str(imp.name.encode('latin1'))
                else:
                    funcname = str(imp)
                imports.append( {
                    'name': libname + '_' + funcname,
                    'address': e.rva2virt(s.firstthunk+4*ii),
                    } )
        return imports
    return []

def get_exports(e):
    if hasattr(e, 'isPE') and e.isPE():
        exports = []
        for direxport in e.DirExport:
            for addr, name in direxport.exports.values():
                if hasattr(addr, 'name'):
                    # Forwarder RVA:
                    # The exported symbol is defined by a name, not an address.
                    # We don't create a new symbol!
                    continue
                addr = addr.rva
                if e.COFFhdr.machine == pe.IMAGE_FILE_MACHINE_ARMNT:
                    # To have the same display as IDA on PE for ARM
                    addr -= 1
                exports.append( {
                    'name':str(name),
                    'address':e.rva2virt(addr),
                    'section':e.getsectionbyrva(addr).name,
                    } )
        return exports
    return []


def get_symbols(e):
    def create_symbol(s, fields):
        return dict(zip([_[0] for _ in fields], [_[2](s) for _ in fields]))
    if hasattr(e, 'Ehdr'):
        fields = [
            ('name',    '%-10r', lambda _: _.name),
            ('size',    '%d',    lambda _: _.size),
            ('ad',      '%#x',   lambda _: _.value),
            ('section', '%#x',   lambda _: _.shndx),
            ('STT',     '%#x',   lambda _: _.info & 0xf),
            ('STB',     '%#x',   lambda _: _.info >> 4),
            ('STV',     '%#x',   lambda _: _.other),
            ]
        return [ create_symbol(s, fields) for s in e.symbols ], fields
    elif hasattr(e, 'isPE'):
        fields = [
            ('name',    '%-28r', lambda _: _.name),
            ('type',    '%d',    lambda _: _.type),
            ('scl',     '%d',    lambda _: _.storageclass),
            ('section', '%#x',   lambda _: _.sectionnumber),
            ('ad',      '%#x',   lambda _: _.value),
            ('aux',     '%r',    lambda _: _.aux),
            ]
        if not hasattr(e, 'Symbols'):
            return [], fields
        return [ create_symbol(s, fields) for s in e.Symbols.symbols ], fields
    elif hasattr(e, 'Mhdr'):
        fields = [
            ('name', '%-28r', lambda _: _.name),
            ('sect', '%d',    lambda _: _.sectionindex),
            ('ad',   '%#x',   lambda _: _.value),
            ('type', '%#x',   lambda _: _.type),
            ('desc', '%#x',   lambda _: _.description),
            ]
        symtabs = [ _ for _ in e.sect.sect if hasattr(_, 'symbols') ]
        if len(symtabs) == 0:
            return [], fields
        return [ create_symbol(s, fields)
            for sect in symtabs for s in sect.symbols ], fields
    return [], []

def translate_symbol(s, e):
    r = {}
    if hasattr(e, 'Ehdr'):
        r['name'] = s['name']
        # ============
        # type, bind and visibility
        from elfesteem import elf
        if   s['STT'] == elf.STT_NOTYPE:  pass
        elif s['STT'] == elf.STT_OBJECT:  r['type'] = 'object'
        elif s['STT'] == elf.STT_FUNC:    r['type'] = 'function'
        elif s['STT'] == elf.STT_SECTION: pass
        elif s['STT'] == elf.STT_FILE:    pass
        elif s['STT'] == elf.STT_TLS:     r['type'] = 'tls_object'
        else: raise ValueError("Unknown type %d"%s['STT'])
        if   s['STB'] == elf.STB_LOCAL:  r['bind'] = 'local'
        elif s['STB'] == elf.STB_GLOBAL: r['bind'] = 'globl'
        elif s['STB'] == elf.STB_WEAK:   r['bind'] = 'weak'
        elif s['STB'] == elf.STB_GNU_UNIQUE:
            r['bind'] = 'weak'
            r['type'] = 'gnu_unique_object'
        else: raise ValueError("Unknown binding %d"%s['STB'])
        if   s['STV'] == elf.STV_DEFAULT:   pass
        elif s['STV'] == elf.STV_INTERNAL:  r['visibility'] = 'internal'
        elif s['STV'] == elf.STV_HIDDEN:    r['visibility'] = 'hidden'
        elif s['STV'] == elf.STV_PROTECTED: r['visibility'] = 'protected'
        else: raise ValueError("Unknown visibility %d"%s['STV'])
        # ============
        # Special cases
        if s['STT'] == elf.STT_NOTYPE and s['name'].endswith('\001'):
            return {}
        if s['section'] == elf.SHN_ABS and s['STT'] != elf.STT_FILE:
            return {}
        if s['section'] == elf.SHN_ABS and s['name'] in ['', 'crtstuff.c']:
            return {}
        if s['STT'] == elf.STT_SECTION:
            return {}
        if s['section'] == elf.SHN_UNDEF and s['name'] != '':
            return r
        if s['STT'] == elf.STT_FILE:
            return { 'name': s['name'], 'bind': 'file' }
        # ============
        # section, address, align and size
        from plasmasm.parse_bin import parse_section_from_ELF
        if s['section'] == elf.SHN_COMMON:
            r['section'] = comm_symbol_section
            r['align'] = s['ad']
        elif s['section'] < len(e.sh.shlist):
            section = e.sh[s['section']].sh
            r['address'] = s['ad']
            r['section'] = section.name
            if r['section'] == '.bss' and s['size'] >= section.addralign:
                # This symbol probably is the reason why the section
                # is aligned
                r['align'] = section.addralign
        else:
            raise ValueError("%s has SHNDX %#x"%(s['name'], s['section']))
        r['size'] = s['size']
        # ============
        if not parse_section_from_ELF(r['section']):
            return {}
        if s['STB'] == elf.STB_LOCAL and e.Ehdr.machine == elf.EM_SPARC:
            # The same local symbol may appear at multiple addresses
            r['name'] += "@0x%08x"%s['ad']
    elif hasattr(e, 'isPE'):
        r['name'] = s['name']
        # ============
        # type, bind and visibility
        from elfesteem import pe
        if   s['type']==pe.IMAGE_SYM_TYPE_NULL:         pass
        elif s['type']==pe.IMAGE_SYM_DTYPE_FUNCTION<<4: r['type'] = 'function'
        else: raise ValueError("Unknown type %d"%s['type'])
        if   s['scl']==pe.IMAGE_SYM_CLASS_EXTERNAL: r['bind'] = 'globl'
        elif s['scl']==pe.IMAGE_SYM_CLASS_STATIC:   r['bind'] = 'local'
        elif s['scl']==pe.IMAGE_SYM_CLASS_LABEL:    pass
        elif s['scl']==pe.IMAGE_SYM_CLASS_FILE:     pass
        else: raise ValueError("Unknown storageclass %d"%s['scl'])
        # ============
        # Special cases
        if s['scl'] == pe.IMAGE_SYM_CLASS_LABEL:
            return {}
        if s['section'] == 0xfffe and s['scl'] == pe.IMAGE_SYM_CLASS_FILE:
            name = s['aux'][0].name
            if name == 'crt1.c': return {}
            return { 'name': name, 'bind': 'file' }
        if s['section'] == 0xffff:
            return {}
        if s['section'] == 0:
            return {}
        if s['name'] == '__data_start__':
            return {}
        if not s['name'].startswith('_'):
            return {}
        # ============
        # section, address, align and size
        section = e.SHList[s['section']-1]
        r['section'] = section.name.strip('\0')
        r['address'] = s['ad'] + e.rva2virt(section.addr)
    elif hasattr(e, 'Mhdr'):
        r['name'] = s['name']
        # ============
        # type, bind and visibility
        from elfesteem import macho
        if s['type'] & macho.N_EXT: r['bind'] = 'globl'
        # ============
        # section, address, align and size
        if s['sect'] != 0:
            section = e.sect.sect[s['sect']-1].sh
            r['section'] = "%s,%s" % (section.segname, section.sectname)
            r['address'] = s['ad']
        elif s['ad'] != 0:
            r['section'] = comm_symbol_section
            r['align'] = 1 << (s['desc'] >> 8)
            r['size'] = s['ad']
    return r

def deduplicate_symbols(symbol_list):
    # Quite often, multiple appearance of local symbols with the same name
    # This is a pity, because one cannot generate an assembly file that
    # generates multiple local symbols with the same name...
    count = {}
    for s in symbol_list:
        if not 'name' in s: continue
        if not s['name'] in count: count[s['name']] = 0
        count[s['name']] += 1
    for n in count:
        if count[n] > 1:
            dup = [s for s in symbol_list if s.get('name') == n]
            # If all these symbols are 'file', then leave as it is
            if count[n] == len([s for s in dup if s.get('bind') == 'file']):
                continue
            # If all these symbols are 'local', then rename the symbols
            if count[n] == len([s for s in dup if s.get('bind') == 'local']):
                for s in dup:
                    s['name'] += '....' + hex(s['address'])
                continue
            raise ValueError("Duplicate symbols %r" % dup)
    return symbol_list


################################################################
# Relocation management
reloc_suffixes = {}
try:
    from elfesteem import pe
    def add_coff(machine_type, table):
        if not machine_type in pe.__dict__:
            return
        machine_type = pe.__dict__[machine_type]
        for R, r_type in table.items():
            reloc_suffixes[('COFF', machine_type, R)] = r_type
    add_coff('IMAGE_FILE_MACHINE_I386',{
        pe.IMAGE_REL_I386_DIR32:                  (32, None),
        pe.IMAGE_REL_I386_REL32:                  (32, None),
        })
except ImportError:
    pass
try:
    from elfesteem import macho
    def add_macho(machine_type, table):
        if not machine_type in macho.__dict__:
            return
        machine_type = macho.__dict__[machine_type]
        for R, r_type in table.items():
            reloc_suffixes[('MACHO', machine_type, R)] = r_type
    add_macho('CPU_TYPE_X86',{
        (macho.GENERIC_RELOC_VANILLA,2,0):        (32, None),
        (macho.GENERIC_RELOC_VANILLA,2,1):        (32, None),
        (macho.GENERIC_RELOC_PAIR,2,0):           (32, None), # Special case
        (macho.GENERIC_RELOC_SECTDIFF,2,0):       (32, None), # Special case
        # macho.GENERIC_RELOC_PB_LA_PTR
        (macho.GENERIC_RELOC_LOCAL_SECTDIFF,2,0): (32, None), # Special case
        # macho.GENERIC_RELOC_TLV
        })
    add_macho('CPU_TYPE_X86_64',{
        (macho.X86_64_RELOC_UNSIGNED,0,0):     ( 8, None),
        (macho.X86_64_RELOC_UNSIGNED,1,0):     (16, None),
        (macho.X86_64_RELOC_UNSIGNED,2,0):     (32, None),
        (macho.X86_64_RELOC_UNSIGNED,3,0):     (64, None),
        (macho.X86_64_RELOC_SIGNED,2,1):       (32, None),
        (macho.X86_64_RELOC_BRANCH,2,1):       (64, None),
        (macho.X86_64_RELOC_GOT_LOAD,2,1):     (32, 'GOTPCREL'),
        (macho.X86_64_RELOC_GOT,2,1):          (32, 'GOTPCREL'),
        # macho.X86_64_RELOC_SUBTRACTOR  = 5 # must be followed by a X86_64_RELOC_UNSIGNED
        (macho.X86_64_RELOC_SIGNED_1,2,1):     (32, None),
        (macho.X86_64_RELOC_SIGNED_2,2,1):     (32, None),
        (macho.X86_64_RELOC_SIGNED_4,2,1):     (32, None),
        # macho.X86_64_RELOC_TLV         = 9 # for thread local variables
        })
except ImportError:
    pass
try:
    from elfesteem import elf
    def add_elf(machine_type, table):
        if not machine_type in elf.__dict__:
            return
        machine_type = elf.__dict__[machine_type]
        for R, r_type in table.items():
            reloc_suffixes[('ELF', machine_type, R)] = r_type
    add_elf('EM_386',{
        elf.R_386_32:           (32, None),
        elf.R_386_PC32:         (32, None),
        elf.R_386_GOT32:        (32, 'GOT'),
        elf.R_386_PLT32:        (32, 'PLT'),
        # elf.R_386_COPY
        # elf.R_386_GLOB_DAT
        # elf.R_386_JMP_SLOT
        # elf.R_386_RELATIVE
        elf.R_386_GOTOFF:       (32, 'GOTOFF'),
        elf.R_386_GOTPC:        (32, None),
        # elf.R_386_32PLT
        elf.R_386_TLS_GD_PLT:   (32, 'tlsgdplt'),
        elf.R_386_TLS_LDM_PLT:  (32, 'tlsldmplt'),
        elf.R_386_TLS_TPOFF:    (32, 'ntpoff'), # duplicate
        elf.R_386_TLS_IE:       (32, 'indntpoff'),
        elf.R_386_TLS_GOTIE:    (32, 'gotntpoff'),
        elf.R_386_TLS_LE:       (32, 'ntpoff'), # duplicate
        elf.R_386_TLS_GD:       (32, 'tlsgd'),
        elf.R_386_TLS_LDM:      (32, 'tlsldm'),
        # ...
        elf.R_386_TLS_LDO_32:   (32, 'dtpoff'), # duplicate
        elf.R_386_TLS_IE_32:    (32, 'gottpoff'),
        elf.R_386_TLS_DTPMOD32: (32, 'dtpmod'),
        elf.R_386_TLS_DTPOFF32: (32, 'dtpoff'), # duplicate
        #            elf.
        # http://docs.oracle.com/cd/E19683-01/817-3677/chapter8-50/index.html
        # http://docs.oracle.com/cd/E19253-01/817-1984/6mhm7plb6/index.html
        # describe suffixes for exotic relocation types, probably Solaris
        # only: @tlsgdplt @tlsldmplt @dtpmod TLS_TPOFF TLS_DTPOFF32
        # http://reviews.llvm.org/D15769
        # indicates that @gottpoff is not used in real life
        })
    add_elf('EM_X86_64',{
        elf.R_X86_64_64:          (64, None),
        elf.R_X86_64_PC32:        (32, None),
        elf.R_X86_64_GOT32:       (32, 'GOT'),
        elf.R_X86_64_PLT32:       (32, 'PLT'),
        # elf.R_386_COPY
        # elf.R_386_GLOB_DAT
        # elf.R_386_JMP_SLOT
        # elf.R_386_RELATIVE
        elf.R_X86_64_GOTPCREL:    (64, 'GOTPCREL'),
        elf.R_X86_64_32:          (32, None),
        elf.R_X86_64_32S:         (32, None),
        # https://docs.oracle.com/cd/E19120-01/open.solaris/819-0690/chapter7-2/index.html
        })
    add_elf('EM_PPC',{
        elf.R_PPC_ADDR16_HA: (32, None),
        elf.R_PPC_ADDR16_LO: (32, None),
        elf.R_PPC_REL24:     (32, None),
        })
    add_elf('EM_SPARC',{
        elf.R_SPARC_32:      (32, None),
        elf.R_SPARC_WDISP30: (30, None),
        elf.R_SPARC_HI22:    (22, None),
        elf.R_SPARC_LO10:    (10, None),
        })
except ImportError:
    pass

elf_reloc_suffixes = {}
for r_type in reloc_suffixes:
    container_type, cpu, info = r_type
    if container_type != 'ELF': continue
    _, suffix = reloc_suffixes[r_type]
    if suffix: elf_reloc_suffixes['@'+suffix] = (cpu, info)

import logging
log = logging.getLogger("plasmasm")
def analyze_reloc(pool, reloc, offset, address, pos, bytelen):
    # reloc is the description of the relocation
    # offset is the immediate value that is to be overwritten by the relocation
    # address is the address of the instruction (used for PC-relative)
    # pos is the position in the instruction (used for PC-relative)
    # bytelen is the length of the instruction (used for PC-relative)
    r_type, data = reloc
    # This function should be used for every architecture, to convert
    # the description of a reloc into a tuple (label, label_dif, offset, size)
    # such that the argument value is a size-bit value label-label_dif+offset
    # A simple way could be to do
    #   label = pool.find_symbol(**data)
    #   return label, None, offset, 32
    # but some adaptations need to be made, depending on r_type
    # Especially because Mach-O relocations may be a label_diff
    def prop(address):
        return { 'address': address,
            'section': pool.get_sectionname(address) }
    if r_type[0] == 'MACHO':
        # Strip PC relative flag, and add PC when present
        container, cputype, (x_type, _, pcrel) = r_type
        # Quoting /usr/include/mach-o/x86_64/reloc.h
        # "For PC-relative relocations, the addend is stored directly in the
        # instruction.  This is different from other Mach-O architectures,
        # which encode the addend minus the current section offset"
        if pcrel == 1 and (cputype != macho.CPU_TYPE_X86_64 or not 'name' in data):
            offset += address + bytelen
    if 'symbol' in data:
        # Mach-O specific relocations
        # New argument is label (defined by its address) plus constant
        size = 32
        offset -= data['symbol']
        label = pool.find_symbol(**prop(data['symbol']))
        label_dif = None
        if 'symbol_dif' in data:
            # Relocations that indicate differences of symbols
            offset += data['symbol_dif']
            label_dif = pool.find_symbol(**prop(data['symbol_dif']))
        return label, label_dif, offset, size
    if r_type in reloc_suffixes:
        size, suffix = reloc_suffixes[r_type]
        if   r_type == ('ELF',elf.EM_386,elf.R_386_PC32):           offset += 4
        elif r_type == ('ELF',elf.EM_386,elf.R_386_PLT32):          offset += 4
        elif r_type == ('ELF',elf.EM_386,elf.R_386_GOTPC):          offset -= 2
        elif r_type == ('ELF',elf.EM_X86_64,elf.R_386_PLT32):       offset += 4
        elif r_type == ('ELF',elf.EM_X86_64,elf.R_X86_64_GOTPCREL): offset += 4
        elif r_type == ('ELF',elf.EM_X86_64,elf.R_X86_64_PC32):
            offset += bytelen-pos
        elif r_type == ('MACHO',macho.CPU_TYPE_X86_64,
            (macho.X86_64_RELOC_SIGNED_1,2,1)):     offset += 1
        elif r_type == ('MACHO',macho.CPU_TYPE_X86_64,
            (macho.X86_64_RELOC_SIGNED_2,2,1)):     offset += 2
        elif r_type == ('MACHO',macho.CPU_TYPE_X86_64,
            (macho.X86_64_RELOC_SIGNED_4,2,1)):     offset += 4
        elif r_type == ('MACHO',macho.CPU_TYPE_X86_64,
            (macho.X86_64_RELOC_SIGNED,  2,1)):
            offset += bytelen-pos-4
    else:
        log.error("%s%s", list(r_type), data)
        NEVER
    label_dif = data.get('label_dif')
    # New argument is label (defined by its name) plus constant
    if 'name' in data:
        name = data['name']
        if suffix is not None:
            name += '@'+suffix
        label = pool.find_symbol(name = name)
        offset += data.get('addend', 0)
        return label, label_dif, offset, size
    # New argument is label at a given address
    if 'section' in data and 'address' in data:
        section, address = data['section'], data['address']
        if address + offset >= 0:
            # Don't create labels at negative addresses !
            address += offset
            offset = 0
        if address < 0:
            # Don't create labels at negative addresses !
            offset += address
            address = 0
        label = get_reloc_symbol(pool, suffix, section, address)
        # Don't use labels that will not appear in asm output
        if not label in pool.blocs and \
                getattr(label, 'type', None) == 'endofsymbol':
            prev = label.symbols.previous(label)
            offset += label.address - prev.address
            label = prev
        return label, label_dif, offset, size
    NEVER

def get_reloc_symbol(pool, suffix, section, address):
    label = pool.find_symbol(section=section, address=address)
    if getattr(label, 'type', None) != 'padding' or '+' in label.name:
        import re
        if suffix is None:
            return label
        elif re.match(r'(.+)\+(\d+)', label.name):
            # Avoid 'base+offset@suffix'; use 'offset+base@suffix' instead
            base, offset = re.match(r'(.+)\+(\d+)', label.name).groups()
            return pool.find_symbol(name=offset+'+'+base+'@'+suffix)
        else:
            return pool.find_symbol(name=label.name+'@'+suffix)
    # Should never be a padding label; we use ad hoc heuristics...
    # Either the 'padding' type is erroneous, or it should be
    # label+offset
    import logging; log = logging.getLogger("plasmasm")
    value = getattr(label, 'lines', [None])[0]
    value = getattr(value, 'value', [None])[0]
    if hasattr(value, 'name'):
        # Probably a switch table, that should not be seen as padding
        del label.type
        log.debug("Not padding %r", label)
        if suffix is None:
            return label
        else:
            return pool.find_symbol(name=label.name+'@'+suffix)
    # Should never be a padding label; we use ad hoc heuristics...
    # Offset may be positive or negative...
    log.debug("Don't refer to padding %r", label)
    if (section, address+4) in pool.symbols_byaddress:
        base = pool.symbols_byaddress[(section, address+4)][0]
        disp = -4
    else:
        from plasmasm.parse_bin import find_prev_symbol
        base = find_prev_symbol(label)
        if base is None:
            log.error("%r has prev None", label)
            log.error("%s %s %s", suffix, section, address)
            NEVER
        disp = label.address-base.address
    if suffix is None:
        label = pool.find_symbol(name='%s%+d'%(base,disp))
    else:
        label = pool.find_symbol(name='%d+%s@%s'%(disp,base,suffix))
    log.debug("... use %r instead", label)
    return label

################################################################

if __name__ == "__main__":
    import getopt, sys, os.path
    sys.path.insert(1, os.path.abspath(sys.path[0]+'/..'))
    try:
        opts, args = getopt.getopt(sys.argv[1:], "haITrLWDobsd:CAy:c:e:")
        for opt, arg in opts:
            usage()
    except getopt.GetoptError:
        msg = sys.exc_info()[1]
        sys.stderr.write("ERROR: %s\n"%msg)
        sys.exit(1)
    if len(args) == 0:
        usage()
    raw = open(args[0], 'rb').read()
    from plasmasm.analyze_file import get_file_type
    file_type = get_file_type(raw)
    print("File of type %r"%file_type)
    if file_type == 'ASM':
        TODO
    else:
        from plasmasm.parse_bin import get_bin_virt
        cpu, e = get_bin_virt(raw, file_type, None)
        print("Binary for CPU %r"%cpu)
        s_list, fields = get_symbols(e)
        print("Symbols:")
        for s in s_list:
            print(' '.join([("%s="+_[1])%(_[0],s[_[0]]) for _ in fields]))
