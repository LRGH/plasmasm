# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
import struct

import logging
log = logging.getLogger("plasmasm")

from plasmasm.symbols import comm_symbol_section

def mk_bin_file(symbols):
    import sys
    symbols.resolve()
    relocs={}
    label_func = [ label for label in symbols.symbols if getattr(label, 'type', None) == 'function' ]
    if len(label_func): relocs[".eh_frame"] = []
    for pos, label, r_type, section in symbols.list_relocs():
        if not section in relocs:
            relocs[section] = []
        relocs[section].append((pos, label, r_type))
    section_groups = []
    sections = [".text", ".data", ".bss"]
    for label in symbols.symbols:
        section = getattr(label, 'section', '')
        if section.startswith(".rodata") and not section in sections:
            sections.append(section)
    for label in symbols.symbols:
        section = getattr(label, 'section', '')
        if section.startswith(".data") and not section in sections:
            sections.append(section)
    for label in symbols.symbols:
        section = getattr(label, 'section', '')
        if section.startswith(".text.") and not section in sections:
            section_groups.append(section)
            if section in symbols.sections.asm_name:
                if 'comdat' in symbols.sections.asm_name[section]:
                    sections.insert(0, '.group')
            sections.append(section)
    sections += [".comment", ".note.GNU-stack"]
    if len(label_func): sections += [".eh_frame"]
    # Creates a relocatable ELF file
    CPU = symbols.arch.CPU
    if CPU == 'I386': CPU = '386'
    from elfesteem import elf, elf_init
    e = elf_init.ELF(e_type=elf.ET_REL,
        e_machine=elf.__dict__['EM_'+CPU],
        sections=sections, relocs=relocs.keys())

    # The symbol table, first local and then global and weak
    # Local symbols begin with an empty symbol and the file name,
    # then sections until bss, then local object or func,
    # then other sections, with ".comment" at the end
    symtab = e.getsectionbyname(".symtab")
    symtab[0] = elf.Sym32(parent=symtab, name="")
    symtab_local_file = []
    symtab_local_symb = []
    symtab_globl_symb = []
    for label in symbols.symbols:
        bind = getattr(label, 'bind', None)
        if   bind in [ None, 'weak' ]:
            pass
        elif getattr(label, 'type', None) == 'endofsymbol':
            pass
        elif bind == 'file':
            symtab_local_file.append(label)
        elif bind == 'local':
            symtab_local_symb.append(label)
        elif bind == 'globl':
            symtab_globl_symb.append(label)
        else:
            FAIL
    symtab_sect = [[]]
    for v, s in enumerate(e.sh.shlist):
        if not s.sh.type in [ elf.SHT_PROGBITS, elf.SHT_NOBITS ]:
            continue
        if s.sh.name == '.comment':
            continue
        symtab_sect[-1].append(elf.Sym32(parent=symtab,info=elf.STT_SECTION,shndx=v))
        if s.sh.name == '.bss':
            symtab_sect.append([])
    symtab_sect.append([])
    v = e.sh.shlist.index(e.getsectionbyname(".comment"))
    symtab_sect[-1].append(elf.Sym32(parent=symtab,info=elf.STT_SECTION,shndx=v))
    for v, s in enumerate(e.sh.shlist):
        if s.sh.name != '.group': continue
        symtab_sect[-1].append(elf.Sym32(parent=symtab,info=elf.STT_SECTION,shndx=v))
    def get_props(label):
        props = {
            'shndx': 0,
            'size': getattr(label, 'size', 0),
            'value': 0,
            }
        props['info']  = { None:        elf.STT_NOTYPE,
                          'object':     elf.STT_OBJECT,
                          'function':   elf.STT_FUNC,
                          'tls_object': elf.STT_TLS,
            } [getattr(label,'type',None)]
        props['other'] = { None:        elf.STV_DEFAULT,
                          'hidden':     elf.STV_HIDDEN,
            } [getattr(label,'visibility',None)]
        if not hasattr(label, 'section'):
            pass
        elif label.section == comm_symbol_section:
            props['shndx']  = elf.SHN_COMMON
            props['value']  = label.align
        elif label.section.startswith('__'):
            section = {
                '__TEXT,__text': '.text',
                '__DATA,__data': '.data',
                }[label.section]
            props['shndx']  = e.sh.shlist.index(e.getsectionbyname(section))
            props['value']  = label.address
        else:
            section = label.section.split(',')[0]
            props['shndx']  = e.sh.shlist.index(e.getsectionbyname(section))
            props['value']  = label.address
        return props
    idx = 1
    label_idx = {}
    for label in symtab_local_file:
        symtab[idx] = elf.Sym32(parent=symtab, name=label.name,
            info=elf.STT_FILE, shndx=elf.SHN_ABS)
        idx += 1
    for sym in symtab_sect[0]:
        symtab[idx] = sym
        label_idx[e.sh.shlist[sym.shndx].sh.name] = idx
        idx += 1
    for label in symtab_local_symb:
        props = get_props(label)
        if props['info'] == elf.STT_NOTYPE: continue
        symtab[idx] = elf.Sym32(parent=symtab, name=label.name, **props)
        label_idx[label] = idx
        idx += 1
    for sym in symtab_sect[1]:
        symtab[idx] = sym
        label_idx[e.sh.shlist[sym.shndx].sh.name] = idx
        idx += 1
    for label in symtab_local_symb:
        props = get_props(label)
        if props['info'] != elf.STT_NOTYPE: continue
        symtab[idx] = elf.Sym32(parent=symtab, name=label.name, **props)
        label_idx[label] = idx
        idx += 1
    for sym in symtab_sect[2]:
        symtab[idx] = sym
        label_idx[e.sh.shlist[sym.shndx].sh.name] = idx
        idx += 1
    for label in symtab_globl_symb:
        props = get_props(label)
        props['info'] |= elf.STB_GLOBAL<<4
        symtab[idx] = elf.Sym32(parent=symtab, name=label.name, **props)
        label_idx[label] = idx
        idx += 1
    for label in symbols.symbols:
        if getattr(label, 'bind', None) is not None:
            continue
        if getattr(label, 'type', None) == 'padding':
            continue
        if not label.is_symbol():
            continue
        if label.name.endswith('@PLT') or label.name.endswith('@GOT') \
                or label.name.endswith('@GOTOFF'):
            continue
        if hasattr(label, 'reference'):
            continue
        info = elf.STB_GLOBAL<<4
        symtab[idx] = elf.Sym32(parent=symtab, name=label.name,
            info=info, shndx=0, size=0, value=0)
        label_idx[label] = idx
        idx += 1

    meta = symbols.get_meta()
    if 'ident' in meta:
        s = e.getsectionbyname(".comment")
        s.content[0] = '\0'+meta['ident']+'\0'

    # eh_frame data structure is quite complicated
    # here, we create a null eh_frame and ad hoc rel.eh_frame
    if len(label_func):
        s = e.getsectionbyname(".eh_frame")
        s.content[0] = '\0'*meta.get('eh_frame_size',
                                           0x18+0x20*len(label_func))
    if 'eh_frame_relocs' in meta:
        eh_reloc = meta['eh_frame_relocs'].sortedkeys
    else:
        eh_reloc = [0x20*(idx+1) for idx in range(len(label_func))]
    for idx, pos in enumerate(eh_reloc):
        if ',' in section:
            section = label_func[idx].section.split(',')[0]
        relocs[".eh_frame"].append((pos, section, (elf.EM_386, elf.R_386_PC32)))

    # Section relocations
    from plasmasm.symbols import section_type
    for section in relocs:
        s = e.getsectionbyname(".rel"+section)
        if s is None: continue
        for idx, (pos, label, r_type) in enumerate(relocs[section]):
            cpu, info = r_type
            # For some symbols, the relocation shall refer to the start of
            # the section, not to the symbol itself.
            l_sect = getattr(label, 'section', None)
            if (cpu, info) == (elf.EM_386, elf.R_386_GOTOFF):
                if section_type(section) == 'text' \
                        and getattr(label, 'bind', None) == 'local' \
                        and not label.name.startswith('.LC'):
                    label = l_sect
                elif not hasattr(label, 'bind'):
                    label = l_sect
            if (cpu, info) == (elf.EM_386, elf.R_386_32):
                if not getattr(label, 'bind', None) == 'globl':
                    label = l_sect
            if (cpu, info) == (elf.EM_386, elf.R_386_PC32):
                if not getattr(label, 'bind', 'globl') == 'globl':
                    label = l_sect
            if label in label_idx:
                info += label_idx[label] << 8
            s.content[8*idx] = elf.Rel32(parent=s, offset=pos, info=info).pack()

    # Section alignment, does not mimic exactly GNU as
    align = {'.data':(4,0),'.bss':(4,0),'.rodata':(1,0)}
    for label in symbols.symbols:
        section = getattr(label,'section',None)
        if not section in align:
            continue
        value = getattr(label,'align',getattr(label,'size',0))
        al, sz = align[section]
        for v in [4, 8, 32]:
            if label.address % v == 0 and al < v <= value:
                al = v
        align[section] = (al, sz+value)
    for section in align:
        s = e.getsectionbyname(section)
        if s is None: continue
        al, sz = align[section]
        if section == '.data' and al >= sz: continue
        s.sh.addralign = al

    # Section content
    for section in sections:
        if not section_type(section) in ["text","data","rodata","bss"]:
            continue
        s = e.getsectionbyname(section)
        if s is None:
            continue
        if section in [ '.text.__i686.get_pc_thunk.bx', '.text.__i686.get_pc_thunk.cx' ]:
            for label in symbols.symbols:
                if not getattr(label, 'section', '').startswith(section):
                    continue
                s.content[label.address] = label.pack()
        for o in symbols.object_list():
            label = o[0]
            if label.section != section:
                continue
            if hasattr(label, 'align'):
                end = len(s.content)
                if (end % label.align) != 0:
                    for c in range(label.align-(end%label.align)):
                        s.content += struct.pack("B",0)
            data = struct.pack("")
            for bloc in o:
                data += bloc.pack()
            size = len(data)
            if hasattr(label, 'size') and label.size != size:
                log.warning("%s has size %d != %d", label, label.size, size)
                # This might be cause by p2align directives
            else:
                symbols.setattr(name = label.name, size = size)
            if not hasattr(label, 'address'):
                log.warning("%s has no address", label)
                # This should have been addressed by symbols.resolve()
                label.address = 0
                symbols.setattr(name = label.name, address = 0)
            s.content[label.address] = data

    # Section groups
    for s in e.sh:
        if s.sh.type != elf.SHT_GROUP:
            continue
        ref = section_groups.pop(0)
        if 'comdat' in symbols.sections.asm_name.get(ref, ''):
            s.flags = elf.GRP_COMDAT
        shndx = e.sh.shlist.index(e.getsectionbyname(ref.split(',')[0]))
        s.sections = [shndx]
        if not ',' in ref:
            # TODO
            continue
        label = ref.split(',')[3]
        s.sh.info = symtab.symtab.index(symtab[label])

    return e.pack()
