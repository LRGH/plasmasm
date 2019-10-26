# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
from plasmasm.symbols import section_type, is_comm, compute_alignment
from plasmasm.constants import Constant
from plasmasm.symbols import comm_symbol_section

def symbols_set_asm_format(symbols, asm_format):
    if not hasattr(symbols.arch, 'asm_format'):
        return
    if symbols.arch.asm_format == asm_format:
        return
    symbols.arch.set_asm_format(asm_format)

def find_format(meta):
    asm_format = meta.get('format', None)
    if asm_format is None:
        # Read from binary
        if meta.get('compiler', None) == 'clang':
            # AT&T syntax, with no workaround, as used by clang
            asm_format = 'att_syntax clang'
        else:
            # AT&T syntax, with a workaround for a bug of binutils
            # mixing fsub/fdiv and fsubr/fdivr; this bug is documented at
            # https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=372528
            asm_format = 'att_syntax binutils'
        format_file = ''
    elif asm_format == 'sparc':
        format_file = ''
    elif asm_format.startswith('att_syntax'):
        format_file = ''
    elif meta.get('compiler') == 'mingw' and asm_format == 'intel_syntax':
        # mingw 3.4.5 (mingw-vista special r2)
        # does not mention 'noprefix' but does not put prefixes
        asm_format = 'intel_syntax noprefix'
        format_file = '\t.intel_syntax\n'
    else:
        format_file = '\t.%s\n' % asm_format
    return asm_format, format_file

def mk_asm_comm(label, meta, asm_format):
    output = ''
    if not hasattr(label, 'size'):
        raise ValueError("COM bloc %r has no size"%label)
    if meta.get('compiler') == 'gcc':
        if label.bind != 'globl':
            output += '\t.%s\t%s\n' % (label.bind, label.name)
        if asm_format == 'sparc':
            output += '\t.common'
        elif getattr(label, 'type', None) == 'tls_object':
            output += '\t.tls_common'
        else:
            output += '\t.comm'
        if hasattr(label,'align'):
            align = label.align
        elif label.size == 0:
            # g++ 4.6.3 can generate   .comm Name,0,4
            # TODO: find a small example for that!
            #   current example is new_filter.cpp from aspell
            align = 4
        else:
            align = compute_alignment(label.size, getattr(label, 'address', 0))
        output += '\t%s,%d,%d\n'%(label.name,label.size,align)
    elif meta.get('compiler') == 'mingw':
        if label.align is None:
            output += '\t.lcomm %s,%d\n'%(label.name,label.size)
        else:
            output += '\t.comm\t%s,%d\t# %d\n'%(label.name,label.size,label.align)
    elif meta.get('compiler') == 'clang':
        if label.section != comm_symbol_section:
            if getattr(label, 'bind', None) == 'globl':
                output += '\t.%s\t%s\n'%(label.bind,label.name)
            # Note that the 'align' value is the log2 of the alignment
            align = len(bin(label.align))-3
            output += '.zerofill %s,%s,%d,%s\n'%(label.section,label.name,label.size,align)
        else:
            if hasattr(label, 'align'): align = len(bin(label.align))-3
            else:                       align = label.size
            output += '\t.comm\t%s,%d,%d\n'%(label.name,label.size,align)
    else:
        NEVER
    return output

def mk_asm_skip_section(section, meta):
    if section in meta.get('remove_sections', []):
        return True
    return False

def label_def(label):
    res = {}
    if getattr(label, 'type', None) == 'function': res['.type'] = 32
    if getattr(label, 'bind', None) == 'globl': res['.scl'] = 2
    if getattr(label, 'bind', None) == 'local': res['.scl'] = 3
    return ';\t'.join(['%s\t%s' % (_, res[_]) for _ in sorted(res)])

def symbol_with_type(label):
    return not getattr(label, 'type', None) in [ None, 'padding', 'endofsymbol' ]

def align_directive(label, meta):
    if not hasattr(label, 'align'):
        return ''
    if ',' in str(label.align):           align = label.align
    elif meta.get('compiler') == 'clang': align = len(bin(label.align))-3
    else:                                 align = label.align
    return '\t.align %s\n' % align

def mk_asm_object_header(label, meta, asm_format):
    output = align_directive(label, meta)
    if hasattr(label, 'visibility'):
        output += '\t.%s\t%s\n' % (label.visibility, label.name)
    if meta.get('compiler') == 'mingw':
        res = label_def(label)
        if res: output += '\t.def\t%s;\t%s;\t.endef\n' % (label.name, res)
    elif meta.get('compiler') == 'gcc':
        if asm_format == 'sparc' \
                and hasattr(label, 'proc'):
            output += '\t.align 4\n'
        if symbol_with_type(label):
            if not getattr(label, 'bind', None) in [ None, 'p2align' ]:
                output += '\t.%s\t%s\n' % (label.bind, label.name)
            output += '\t.type\t%s, %s%s\n' % (label.name,
                {True:'#', False:'@'}[asm_format == 'sparc'],
                label.type)
        if asm_format == 'sparc' and hasattr(label, 'proc'):
            output += '\t.proc\t%s\n' % label.proc
    elif meta.get('compiler') == 'clang':
        if not getattr(label, 'bind', None) in [ None, 'p2align' ]:
            output += '\t.%s\t%s\n' % (label.bind, label.name)
    else:
        if symbol_with_type(label):
            if not getattr(label, 'bind', None) in [ None, 'p2align' ]:
                output += '\t.%s\t%s\n' % (label.bind, label.name)
            output += '\t.type\t%s, %s%s\n' % (label.name,
                {True:'#', False:'@'}[asm_format == 'sparc'],
                label.type)
    return output

def output_cfi_startstop(label, meta, asm_format):
    return symbol_with_type(label) \
        and meta.get('cfi') == 'yes' \
        and meta.get('compiler') == 'gcc' \
        and 'text' == section_type(label.section) \
        and asm_format in ['att_syntax binutils','intel_syntax','intel_syntax noprefix'] \
        and not '3.2.3' in meta.get('data', '')

def mk_asm_object_start(label, meta, asm_format):
    output = ''
    if 'cfi_lsda' in getattr(label, 'data', {}):
        output += '%s:\n'%label.data['LFB']
    if output_cfi_startstop(label, meta, asm_format):
        output += '\t.cfi_startproc\n'
    for directive in ['cfi_personality', 'cfi_lsda', 'indirect_symbol']:
        if directive in getattr(label, 'data', {}):
            output += '\t.%s %s\n'%(directive,label.data[directive])
    return output

def mk_asm_footer(label, meta, asm_format):
    if not symbol_with_type(label):
        return ''
    cfi = ''
    if output_cfi_startstop(label, meta, asm_format):
        cfi += '\t.cfi_endproc\n'
    if meta.get('compiler') == 'mingw':
        return cfi+''
    elif meta.get('compiler') == 'clang' and hasattr(label, 'align'):
        return cfi+'\n'
    elif 'get_pc_thunk' in str(label):
        return cfi+''
    elif 'text' == section_type(label.section):
        return cfi+'\t.size\t%s, .-%s\n' % (label.name, label.name)
    elif label.bind is not None:
        size = label.bytelen
        if size != getattr(label,'size',size):
            import logging
            log = logging.getLogger("plasmasm")
            log.warning("For label %r, computed size is %s", label, size)
        return cfi+'\t.size\t%s, %s\n' % (label.name, size)
    NEVER

def mk_asm_label(label):
    if not label.is_named(): return ''
    if getattr(label, 'type', None) == 'endofsymbol': return ''
    return '%s:\n' % label

def mk_asm_switch_section(section, prev_section, symbols):
    if section == prev_section[0]:
        return ''
    prev_section[0] = section
    if section in ['.text', '.data', '.bss']:
        return '\t%s\n' % section
    else:
        if section in symbols.sections.asm_name:
            section = symbols.sections.asm_name[section]
        return '\t.section       %s\n' % section

def mk_asm_file_v2(symbols, meta, asm_format):
    output = ''
    prev_section = [None]
    for o in symbols.object_list():
        eos = [ _ for _ in o if getattr(_, 'type', None) != 'endofsymbol' ]
        if len(eos) == 0:
            # Don't output anything
            continue
        label = o[0]
        if getattr(label, 'type', None) == 'rel.dyn':
            continue
        if label.is_named() and '@' in label.name:
            continue
        if is_comm(label):
            for label in o:
                output += mk_asm_comm(label, meta, asm_format)
        else:
            section = label.section
            if mk_asm_skip_section(section, meta):
                continue
            output += mk_asm_switch_section(section, prev_section, symbols)
            output += mk_asm_object_header(label, meta, asm_format)
            output += mk_asm_label(label)
            output += mk_asm_object_start(label, meta, asm_format)
            for bloc in o:
                if getattr(bloc, 'type', None) == 'endofsymbol':
                    continue
                if bloc != label:
                    output += align_directive(bloc, meta)
                    output += mk_asm_label(bloc)
                for line in bloc.lines:
                    output += '\t%s\n' % line
            output += mk_asm_footer(label, meta, asm_format)
        output += "# ----------------------\n"
    return output

def mk_asm_find_section_count(symbols):
    section_count = {}
    for label in symbols.blocs:
        section = label.section
        if not section in section_count:
            section_count[section] = 0
        section_count[section] += 1
    return section_count

def hack_for_gcc492(symbols):
    # This function is useful only to enable tests comparing the
    # original .o and the one generated after analysis plus assmebling
    # '.text.unlikely' is created by -freorder-functions by gcc
    # Appears even when empty for some versions of gcc (e.g. 4.9.2)
    # Note that .rodata.str1.4 should appear before .text.unlikely
    if not ' 4.9.2' in symbols.meta.get('ident', ''):
        return ''
    if not '.text.unlikely' in symbols.sections.asm_name:
        return ''
    if '.LCOLDB1' in symbols.symbols_byname:
        return ''
    asm_name = symbols.sections.asm_name
    output = '\t.section\t%s\n.LCOLDB1:\n' % asm_name['.text.unlikely']
    for s, l in ( ('.rodata.str1.4', '.LC04'),
                  ('.rodata.str1.1', '.LC01'),):
        if s in asm_name:
            output = '\t.section\t%s\n%s:\n' % (asm_name[s], l) + output
    return output

class TextIOWrapperWithAppend(object):
    def __init__(self, output_filename):
        self.file = open(output_filename,'w')
    def __iadd__(self, string):
        self.file.write(string)
        return self
def mk_asm_file(symbols, output_filename=None):
    meta = symbols.get_meta()
    asm_format, format_file = find_format(meta)
    symbols_set_asm_format(symbols, asm_format)
    if output_filename is None: output = ''
    else: output = TextIOWrapperWithAppend(output_filename)
    file = [ s for s in symbols.symbols if getattr(s, 'bind', None) == 'file' ]
    if len(file) == 1:
        output += '\t.file\t"%s"\n' % file[0]
    output += format_file
    output += hack_for_gcc492(symbols)
    output += mk_asm_file_v2(symbols, meta, asm_format)
    for label in symbols.symbols:
        if hasattr(symbols, 'cds') and symbols.cds.hide_symbol(label.name):
            continue
        if label not in symbols.bloc_set:
            if hasattr(label, 'visibility'):
                output += '\t.%s\t%s\n' % (label.visibility, label.name)
            elif getattr(label, 'bind', None) == 'weak' and not getattr(label, 'type', None) == 'endofsymbol':
                output += '\t.%s\t%s\n' % (label.bind, label.name)
        for key in getattr(label, 'data', {}):
            if   key == 'set':
                if getattr(label, 'bind', None) == 'globl':
                    output += '\t.%s\t%s\n' % (label.bind, label.name)
                output += '\t.set\t%s,%s\n' % (label.name, label.data['set'])
                if hasattr(label, 'size') and label.size != getattr(label.data['set'], 'size', None):
                    output += '\t.size\t%s, %s\n' % (label.name, label.size)
            elif key == 'weakref':
                output += '\t.weakref\t%s,%s\n' % (label.data['weakref'], label.name)
            elif key == 'symver':
                output += '\t.symver\t%s,%s\n' % (label.name, label.data['symver'])
            elif not key in ['LFB', 'cfi_personality', 'cfi_lsda', 'indirect_symbol', 'cfg_warn', 'data_object', 'function']:
                raise ValueError("Unknown data key %r for %r" % (key, label))
    if meta.get('compiler') == 'mingw':
        s_external = [_ for _ in symbols.symbols if not _ in symbols.bloc_set
            and hasattr(_, 'type')]
        s_external.sort(key=lambda x:(getattr(x,'section',''), getattr(x,'address',0)))

        for label in s_external:
            if not (hasattr(symbols, 'cds') and symbols.cds.hide_symbol(label.name)):
                output += '\t.def\t%s;\t%s;\t.endef\n' % (label.name, label_def(label))
    if 'cfi_sections' in meta:
        output += '\t.cfi_sections\t%s\n' % meta['cfi_sections']
    if 'ident' in meta:
        output += '\t.ident\t"%s"\n' % meta['ident']
    if meta.get('compiler') == 'gcc' and asm_format != 'sparc':
        output += '\t.section\t.note.GNU-stack,"",@progbits\n'
    if meta.get('compiler') == 'clang':
        output += '\n.subsections_via_symbols\n'
    return output

def mk_objdump(symbols, filename=None):
    if symbols.file_type != 'ELF':
        return "Cannot output a %s file in objdump format" % symbols.file_type
    import struct
    from elfesteem import elf
    e = symbols.file_elfesteem
    from plasmasm.python.compatibility import hexbytes
    output = "\n"
    filetype = struct.unpack("B", e.Ehdr.ident[elf.EI_CLASS:elf.EI_CLASS+1])[0]
    if   filetype == 1: filetype = 'elf32'
    elif filetype == 2: filetype = 'elf64'
    else: raise ValueError("ELF file class %d"%filetype)
    cputype = {2:'sparc',3:'i386',62:'x86-64',192:'m8'}
    if e.Ehdr.machine in cputype: cputype = cputype[e.Ehdr.machine]
    else: cputype = "[CPU%d]"%e.Ehdr.machine
    if cputype == 'i386': symbols_set_asm_format(symbols, 'att_syntax objdump')
    output += "%s:     file format %s-%s\n"%(filename,filetype,cputype)
    output += "\n"
    output += "\n"
    symbols_by_section = {}
    for s in symbols.symbols:
        if hasattr(s,'section') and hasattr(s,'lines'):
            if not s.section in symbols_by_section:
                symbols_by_section[s.section] = []
            symbols_by_section[s.section].append(s)
    for section in sorted(symbols_by_section):
        output += "Disassembly of section %s:\n"%section
        for s in sorted(symbols_by_section[section], key=lambda x:x.address):
            if s.is_symbol():
                output += "\n"
                output += "%08x <%s>:\n"%(s.address,s)
            ad_fmt = "%4x"
            if s.lines[-1].offset >= 0x1000: ad_fmt = "%8x"
            for l in s.lines:
                output += ad_fmt % l.offset
                output += ":\t"
                b = hexbytes(l.pack())
                if hasattr(l, 'miasm'):
                    output += "%-21s\t%s\n" %(" ".join(b[:7]),l)
                    if len(b) > 7:
                        output += ad_fmt % (l.offset+7)
                        output += ":\t"
                        output += "%s \n" % (" ".join(b[7:]))
                elif hasattr(l, 'amoco'):
                    lstr = str(l)
                    if lstr in ["nop","retl"]: lstr += " "
                    output += "%-15s\t%s\n" % (" ".join(b),lstr)
                else:
                    output += "%s\n" % l
    return output[:-1]
