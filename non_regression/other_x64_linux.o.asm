	.file	"ptx.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC01:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.data
	.local	macro_name
	.type	macro_name, @object
macro_name:
	.quad	.LC000002B0.str1.1
	.size	macro_name, 8
# ----------------------
	.local	truncation_string
	.type	truncation_string, @object
truncation_string:
	.quad	.LC000002B3.str1.1
	.size	truncation_string, 8
# ----------------------
	.local	gap_size
	.type	gap_size, @object
gap_size:
	.long	3
	.size	gap_size, 4
# ----------------------
	.local	line_width
	.type	line_width, @object
line_width:
	.long	72
	.size	line_width, 4
# ----------------------
	.local	gnu_extensions
	.type	gnu_extensions, @object
gnu_extensions:
	.byte	1
	.size	gnu_extensions, 1
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"%s (for regexp %s)"
.LC00000013.str1.1:
	.string	"-"
.LC00000015.str1.1:
	.string	"%s"
.LC00000018.str1.1:
	.string	"\\"
.LC0000001A.str1.1:
	.string	""
.LC0000001B.str1.1:
	.string	"\\oe{}"
.LC00000021.str1.1:
	.string	"\\OE{}"
.LC00000027.str1.1:
	.string	"\\ae{}"
.LC0000002D.str1.1:
	.string	"\\AE{}"
.LC00000033.str1.1:
	.string	"\\'%s%c"
.LC0000003A.str1.1:
	.string	"\\^%s%c"
.LC00000041.str1.1:
	.string	"\\\"%s%c"
.LC00000048.str1.1:
	.string	"\\~%s%c"
.LC0000004F.str1.1:
	.string	"\\c{%c}"
.LC00000056.str1.1:
	.string	"\\aa{}"
.LC0000005C.str1.1:
	.string	"\\AA{}"
.LC00000062.str1.1:
	.string	"\\o{}"
.LC00000067.str1.1:
	.string	"\\O{}"
.LC0000006C.str1.1:
	.string	"$\\%c$"
.LC00000072.str1.1:
	.string	"\\backslash{}"
.LC0000007F.str1.1:
	.string	"["
.LC00000081.str1.1:
	.string	"ptx"
.LC00000085.str1.1:
	.string	" invocation"
.LC00000091.str1.1:
	.string	"test invocation"
.LC000000A1.str1.1:
	.string	"coreutils"
.LC000000AB.str1.1:
	.string	"Multi-call invocation"
.LC000000C1.str1.1:
	.string	"sha224sum"
.LC000000CB.str1.1:
	.string	"sha2 utilities"
.LC000000DA.str1.1:
	.string	"sha256sum"
.LC000000E4.str1.1:
	.string	"sha384sum"
.LC000000EE.str1.1:
	.string	"sha512sum"
.LC000000F8.str1.1:
	.string	"\n%s online help: <%s>\n"
.LC0000010F.str1.1:
	.string	"GNU coreutils"
.LC0000011D.str1.1:
	.string	"en_"
.LC00000121.str1.1:
	.string	"$%&#_{}\\"
.LC0000012A.str1.1:
	.string	"/usr/local/share/locale"
.LC00000142.str1.1:
	.string	"invalid gap width: %s"
.LC00000158.str1.1:
	.string	"invalid line width: %s"
.LC0000016F.str1.1:
	.string	"--format"
.LC00000178.str1.1:
	.string	"Fran\303\247ois Pinard"
.LC00000189.str1.1:
	.string	"F. Pinard"
.LC00000193.str1.1:
	.string	"AF:GM:ORS:TW:b:i:fg:o:trw:"
.LC000001AE.str1.1:
	.string	"w"
.LC000001B0.str1.1:
	.string	"extra operand %s"
.LC000001C1.str1.1:
	.string	"\n"
.LC000001C3.str1.1:
	.string	"%d"
.LC000001C6.str1.1:
	.string	"%s:%d"
.LC000001CC.str1.1:
	.string	".%s \""
.LC000001D2.str1.1:
	.string	" \""
.LC000001D5.str1.1:
	.string	"\\%s "
.LC000001DA.str1.1:
	.string	"}{"
.LC000001DD.str1.1:
	.string	"roff"
.LC000001E2.str1.1:
	.string	"tex"
.LC000001E6.str1.1:
	.string	"auto-reference"
.LC000001F5.str1.1:
	.string	"break-file"
.LC00000200.str1.1:
	.string	"flag-truncation"
.LC00000210.str1.1:
	.string	"ignore-case"
.LC0000021C.str1.1:
	.string	"gap-size"
.LC00000225.str1.1:
	.string	"ignore-file"
.LC00000231.str1.1:
	.string	"macro-name"
.LC0000023C.str1.1:
	.string	"only-file"
.LC00000246.str1.1:
	.string	"references"
.LC00000251.str1.1:
	.string	"right-side-refs"
.LC00000261.str1.1:
	.string	"format"
.LC00000268.str1.1:
	.string	"sentence-regexp"
.LC00000278.str1.1:
	.string	"traditional"
.LC00000284.str1.1:
	.string	"typeset-mode"
.LC00000291.str1.1:
	.string	"width"
.LC00000297.str1.1:
	.string	"word-regexp"
.LC000002A3.str1.1:
	.string	"help"
.LC000002A8.str1.1:
	.string	"version"
.LC000002B0.str1.1:
	.string	"xx"
.LC000002B3.str1.1:
	.string	"/"
# ----------------------
	.section       .rodata
	.align 64
.LC00000000:
	.quad	.L00000750
	.quad	.L00000928
	.quad	.L00000860
	.quad	.L00000860
	.quad	.L00000882
	.quad	.L000008A4
	.quad	.L000008C6
	.quad	.L000008E8
	.quad	.L00000900
	.quad	.L0000095F
# ----------------------
	.local	format_vals
	.type	format_vals, @object
format_vals:
	.long	2
	.long	3
	.size	format_vals, 8
# ----------------------
.LC00000058:
	.zero	8
# ----------------------
	.local	format_args
	.type	format_args, @object
format_args:
	.quad	.LC000001DD.str1.1
	.quad	.LC000001E2.str1.1
	.zero	8
	.size	format_args, 24
# ----------------------
.LC00000078:
	.zero	8
# ----------------------
	.local	long_options
	.type	long_options, @object
long_options:
	.quad	.LC000001E6.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	65
	.long	0
	.quad	.LC000001F5.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	98
	.long	0
	.quad	.LC00000200.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	70
	.long	0
	.quad	.LC00000210.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	102
	.long	0
	.quad	.LC0000021C.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	103
	.long	0
	.quad	.LC00000225.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	105
	.long	0
	.quad	.LC00000231.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	77
	.long	0
	.quad	.LC0000023C.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	111
	.long	0
	.quad	.LC00000246.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	114
	.long	0
	.quad	.LC00000251.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	82
	.long	0
	.quad	.LC00000261.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	10
	.long	0
	.quad	.LC00000268.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	83
	.long	0
	.quad	.LC00000278.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	71
	.long	0
	.quad	.LC00000284.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	116
	.long	0
	.quad	.LC00000291.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	119
	.long	0
	.quad	.LC00000297.str1.1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	87
	.long	0
	.quad	.LC000002A3.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-130
	.long	0
	.quad	.LC000002A8.str1.1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-131
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	long_options, 608
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC00000000.str1.8:
	.string	"error in regular expression matcher"
# ----------------------
.LC00000024.str1.8:
	.long	0
	.align 8
.LC00000028.str1.8:
	.string	"Try '%s --help' for more information.\n"
# ----------------------
.LC0000004F.str1.8:
	.byte	0
	.align 2
.LC00000050.str1.8:
	.string	"Usage: %s [OPTION]... [INPUT]...   (without -G)\n  or:  %s -G [OPTION]... [INPUT [OUTPUT]]\n"
# ----------------------
.LC000000AB.str1.8:
	.zero	5
	.align 8
.LC000000B0.str1.8:
	.string	"Output a permuted index, including context, of the words in the input files.\n"
# ----------------------
.LC000000FE.str1.8:
	.value	0
	.align 4
.LC00000100.str1.8:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
.LC00000138.str1.8:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
# ----------------------
.LC00000183.str1.8:
	.zero	5
	.align 8
.LC00000188.str1.8:
	.string	"  -A, --auto-reference           output automatically generated references\n  -G, --traditional              behave more like System V 'ptx'\n"
# ----------------------
.LC00000215.str1.8:
	.zero	3
	.align 4
.LC00000218.str1.8:
	.string	"  -F, --flag-truncation=STRING   use STRING for flagging line truncations.\n                                 The default is '/'\n"
.LC00000298.str1.8:
	.string	"  -M, --macro-name=STRING        macro name to use instead of 'xx'\n  -O, --format=roff              generate output as roff directives\n  -R, --right-side-refs          put references at right, not counted in -w\n  -S, --sentence-regexp=REGEXP   for end of lines or end of sentences\n  -T, --format=tex               generate output as TeX directives\n"
# ----------------------
.LC000003F5.str1.8:
	.zero	3
	.align 4
.LC000003F8.str1.8:
	.string	"  -W, --word-regexp=REGEXP       use REGEXP to match each keyword\n  -b, --break-file=FILE          word break characters in this FILE\n  -f, --ignore-case              fold lower case to upper case for sorting\n  -g, --gap-size=NUMBER          gap size in columns between output fields\n  -i, --ignore-file=FILE         read ignore word list from FILE\n  -o, --only-file=FILE           read only word list from this FILE\n"
# ----------------------
.LC0000059A.str1.8:
	.zero	6
	.align 8
.LC000005A0.str1.8:
	.string	"  -r, --references               first field of each line is a reference\n  -t, --typeset-mode               - not implemented -\n  -w, --width=NUMBER             output width in columns, reference excluded\n"
# ----------------------
.LC0000066E.str1.8:
	.value	0
	.align 4
.LC00000670.str1.8:
	.string	"      --help     display this help and exit\n"
# ----------------------
.LC0000069D.str1.8:
	.zero	3
	.align 4
.LC000006A0.str1.8:
	.string	"      --version  output version information and exit\n"
# ----------------------
.LC000006D6.str1.8:
	.value	0
	.align 4
.LC000006D8.str1.8:
	.string	"http://www.gnu.org/software/coreutils/"
# ----------------------
.LC000006FF.str1.8:
	.byte	0
	.align 2
.LC00000700.str1.8:
	.string	"Report %s translation bugs to <http://translationproject.org/team/>\n"
# ----------------------
.LC00000745.str1.8:
	.zero	3
	.align 4
.LC00000748.str1.8:
	.string	"Full documentation at: <%s%s>\n"
# ----------------------
.LC00000767.str1.8:
	.byte	0
	.align 2
.LC00000768.str1.8:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
# ----------------------
.LC0000079B.str1.8:
	.zero	5
	.align 8
.LC000007A0.str1.8:
	.string	"[.?!][]\"')}]*\\($\\|\t\\|  \\)[ \t\n]*"
# ----------------------
	.text
	.local	compare_words
	.type	compare_words, @function
compare_words:
	movswl    8(%rsi), %r8d
	movswl    8(%rdi), %r9d
	movswl    %r8w, %edx
	cmpw      %r8w, %r9w
	cmovle    %r9d, %edx
	cmpb      $0, ignore_case(%rip)
	jne       .L00000060
.L0000001F:
	testl     %edx, %edx
	jle       .L00000058
.L00000023:
	movq      (%rdi), %rdi
	movq      (%rsi), %r10
	movzbl    (%rdi), %eax
	movzbl    (%r10), %ecx
	subl      %ecx, %eax
	jne       .L000000CC
.L00000038:
	leal      -1(%rdx), %esi
	xorl      %edx, %edx
	jmp       .L00000053
.L0000003F:
	.p2align 4,,10
	.p2align 3
.L00000040:
	movzbl    1(%rdi,%rdx), %eax
	movzbl    1(%r10,%rdx), %ecx
	addq      $1, %rdx
	subl      %ecx, %eax
	jne       .L000000C8
.L00000053:
	cmpq      %rsi, %rdx
	jne       .L00000040
.L00000058:
	movswl    %r9w, %eax
	subl      %r8d, %eax
	ret       
.L00000060:
	testl     %edx, %edx
	jle       .L00000058
.L00000064:
	movq      (%rdi), %r10
	movq      (%rsi), %rdi
	movzbl    (%r10), %eax
	movzbl    (%rdi), %ecx
	movzbl    folded_chars(%rax), %eax
	movzbl    folded_chars(%rcx), %ecx
	subl      %ecx, %eax
	jne       .L000000CA
.L00000083:
	leal      -1(%rdx), %esi
	xorl      %edx, %edx
	jmp       .L000000B1
.L0000008A:
	.p2align 4,,10
	.p2align 3
.L00000090:
	movzbl    1(%r10,%rdx), %ecx
	movzbl    folded_chars(%rcx), %eax
	movzbl    1(%rdi,%rdx), %ecx
	addq      $1, %rdx
	movzbl    folded_chars(%rcx), %ecx
	subl      %ecx, %eax
	jne       .L000000C0
.L000000B1:
	cmpq      %rsi, %rdx
	jne       .L00000090
.L000000B6:
	jmp       .L00000058
.L000000B8:
	.p2align 4
.L000000C0:
	rep; ret       
.L000000C2:
	.p2align 4,,10
	.p2align 3
.L000000C8:
	rep; ret       
.L000000CA:
	rep; ret       
.L000000CC:
	rep; ret       
	.size	compare_words, .-compare_words
# ----------------------
.L000000CE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	compare_occurs
	.type	compare_occurs, @function
compare_occurs:
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbp
	movq      %rsi, %rbx
	call      compare_words
.L000000DD:
	testl     %eax, %eax
	jne       .L000000E7
.L000000E1:
	movq      (%rbp), %rax
	subl      (%rbx), %eax
.L000000E7:
	popq      %rbx
	popq      %rbp
	ret       
	.size	compare_occurs, .-compare_occurs
# ----------------------
.L000000EA:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	matcher_error
	.type	matcher_error, @function
matcher_error:
	pushq     %rbx
	movl      $5, %edx
	movl      $.LC00000000.str1.8, %esi
	xorl      %edi, %edi
	call      dcgettext
.L00000102:
	movq      %rax, %rbx
	call      __errno_location
.L0000010A:
	movl      (%rax), %esi
	xorl      %edi, %edi
	movq      %rbx, %rdx
	xorl      %eax, %eax
	call      error
.L00000118:
	movl      $1, %edi
	call      exit
	.size	matcher_error, .-matcher_error
# ----------------------
.L00000122:
	.p2align 4
# ----------------------
	.local	copy_unescaped_string
	.type	copy_unescaped_string, @function
copy_unescaped_string:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	call      strlen
.L00000142:
	leaq      1(%rax), %rdi
	call      xmalloc
.L0000014B:
	movzbl    (%rbx), %edx
	movq      %rax, %r12
	movq      %rax, %rbp
.L00000154:
	testb     %dl, %dl
	je        .L00000170
.L00000158:
	cmpb      $92, %dl
	je        .L00000188
.L0000015D:
	movb      %dl, (%rbp)
	movzbl    1(%rbx), %edx
	addq      $1, %rbp
	addq      $1, %rbx
	testb     %dl, %dl
	jne       .L00000158
.L00000170:
	movb      $0, (%rbp)
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000182:
	.p2align 4,,10
	.p2align 3
.L00000188:
	movzbl    1(%rbx), %edx
	leaq      1(%rbx), %rcx
	cmpb      $102, %dl
	je        .L00000350
.L00000199:
	jg        .L000001F8
.L0000019B:
	cmpb      $97, %dl
	je        .L00000338
.L000001A4:
	jg        .L00000230
.L000001AA:
	testb     %dl, %dl
	je        .L00000170
.L000001AE:
	cmpb      $48, %dl
	jne       .L00000368
.L000001B7:
	leaq      2(%rbx), %rax
	movsbl    (%rax), %edx
	addq      $5, %rbx
	xorl      %ecx, %ecx
	leal      -48(%rdx), %esi
	cmpb      $7, %sil
	ja        .L000001ED
.L000001CD:
	leal      -48(%rdx,%rcx,8), %ecx
	leaq      1(%rax), %rdx
	cmpq      %rbx, %rdx
	je        .L00000398
.L000001DE:
	movq      %rdx, %rax
	movsbl    (%rax), %edx
	leal      -48(%rdx), %esi
	cmpb      $7, %sil
	jbe       .L000001CD
.L000001ED:
	movq      %rax, %rbx
	jmp       .L0000039C
.L000001F5:
	.p2align 4,,10
	.p2align 3
.L000001F8:
	cmpb      $116, %dl
	je        .L00000380
.L00000201:
	jg        .L00000260
.L00000203:
	cmpb      $110, %dl
	je        .L000002F0
.L0000020C:
	cmpb      $114, %dl
	jne       .L00000368
.L00000215:
	movb      $13, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L0000022A:
	.p2align 4,,10
	.p2align 3
.L00000230:
	cmpb      $98, %dl
	je        .L000002D8
.L00000239:
	cmpb      $99, %dl
	jne       .L00000368
.L00000242:
	movq      %rcx, %rbx
	.p2align 4,,10
	.p2align 3
.L00000248:
	addq      $1, %rbx
	cmpb      $0, (%rbx)
	jne       .L00000248
.L00000251:
	jmp       .L00000170
.L00000256:
	.p2align 4
.L00000260:
	cmpb      $118, %dl
	je        .L000002C0
.L00000265:
	cmpb      $120, %dl
	jne       .L00000368
.L0000026E:
	leaq      2(%rbx), %r13
	addq      $5, %rbx
	call      __ctype_b_loc
.L0000027B:
	movq      %r13, %rsi
	movq      (%rax), %rdi
	xorl      %eax, %eax
.L00000283:
	movzbl    (%rsi), %edx
	movl      %esi, %r8d
	subl      %r13d, %r8d
	movzbl    %dl, %ecx
	testb     $16, 1(%rdi,%rcx,2)
	je        .L000003B8
.L0000029A:
	leal      -97(%rdx), %ecx
	sall      $4, %eax
	cmpb      $5, %cl
	ja        .L00000308
.L000002A5:
	movsbl    %dl, %ecx
	leal      -87(%rcx), %edx
.L000002AB:
	addl      %edx, %eax
	leaq      1(%rsi), %rdx
	cmpq      %rbx, %rdx
	je        .L00000325
.L000002B6:
	movq      %rdx, %rsi
	jmp       .L00000283
.L000002BB:
	.p2align 4,,10
	.p2align 3
.L000002C0:
	movb      $11, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L000002D5:
	.p2align 4,,10
	.p2align 3
.L000002D8:
	movb      $8, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L000002ED:
	.p2align 4,,10
	.p2align 3
.L000002F0:
	movb      $10, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L00000305:
	.p2align 4,,10
	.p2align 3
.L00000308:
	leal      -65(%rdx), %ecx
	cmpb      $5, %cl
	movsbl    %dl, %ecx
	ja        .L000003B0
.L00000317:
	leal      -55(%rcx), %edx
	addl      %edx, %eax
	leaq      1(%rsi), %rdx
	cmpq      %rbx, %rdx
	jne       .L000002B6
.L00000325:
	movzbl    1(%rsi), %edx
.L00000329:
	movb      %al, (%rbp)
	addq      $1, %rbp
	jmp       .L00000154
.L00000335:
	.p2align 4,,10
	.p2align 3
.L00000338:
	movb      $7, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L0000034D:
	.p2align 4,,10
	.p2align 3
.L00000350:
	movb      $12, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L00000365:
	.p2align 4,,10
	.p2align 3
.L00000368:
	movb      %dl, 1(%rbp)
	movb      $92, (%rbp)
	addq      $2, %rbx
	movzbl    (%rbx), %edx
	addq      $2, %rbp
	jmp       .L00000154
.L0000037F:
	.p2align 4,,10
	.p2align 3
.L00000380:
	movb      $9, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L00000154
.L00000395:
	.p2align 4,,10
	.p2align 3
.L00000398:
	movzbl    1(%rax), %edx
.L0000039C:
	movb      %cl, (%rbp)
	addq      $1, %rbp
	jmp       .L00000154
.L000003A8:
	.p2align 4
.L000003B0:
	leal      -48(%rcx), %edx
	jmp       .L000002AB
.L000003B8:
	testl     %r8d, %r8d
	movq      %rsi, %rbx
	jne       .L00000329
.L000003C4:
	movb      $92, (%rbp)
	movb      $120, 1(%rbp)
	addq      $2, %rbp
	jmp       .L00000154
	.size	copy_unescaped_string, .-copy_unescaped_string
# ----------------------
.L000003D5:
	.p2align 4
# ----------------------
	.local	compile_regex
	.type	compile_regex, @function
compile_regex:
	cmpb      $0, ignore_case(%rip)
	leaq      72(%rdi), %rdx
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      $folded_chars, %ecx
	movq      (%rdi), %rbx
	movq      %rdx, 40(%rdi)
	movl      $0, %edx
	leaq      8(%rdi), %rbp
	movq      $0, 8(%rdi)
	movq      $0, 16(%rdi)
	cmove     %rdx, %rcx
	movq      %rcx, 48(%rdi)
	movq      %rbx, %rdi
	call      strlen
.L00000424:
	movq      %rbp, %rdx
	movq      %rax, %rsi
	movq      %rbx, %rdi
	call      re_compile_pattern
.L00000432:
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L0000046D
.L0000043A:
	movq      %rbx, %rdi
	call      quote
.L00000442:
	movl      $5, %edx
	movq      %rax, %rbx
	movl      $.LC00000000.str1.1, %esi
	xorl      %edi, %edi
	call      dcgettext
.L00000456:
	movq      %rbx, %r8
	movq      %rax, %rdx
	movq      %r12, %rcx
	xorl      %esi, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      error
.L0000046D:
	popq      %rbx
	movq      %rbp, %rdi
	popq      %rbp
	popq      %r12
	jmp       re_compile_fastmap
	.size	compile_regex, .-compile_regex
# ----------------------
.L00000479:
	.p2align 4
# ----------------------
	.local	swallow_file_in_memory
	.type	swallow_file_in_memory, @function
swallow_file_in_memory:
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbp
	movq      %rdi, %rbx
	subq      $24, %rsp
	testq     %rdi, %rdi
	je        .L00000498
.L00000491:
	movzbl    (%rdi), %eax
	testb     %al, %al
	jne       .L000004C8
.L00000498:
	movq      stdin(%rip), %rdi
	leaq      8(%rsp), %rsi
	call      fread_file
.L000004A9:
	testq     %rax, %rax
	movq      %rax, (%rbp)
	je        .L000004F8
.L000004B2:
	addq      8(%rsp), %rax
	movq      %rax, 8(%rbp)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000004C2:
	.p2align 4,,10
	.p2align 3
.L000004C8:
	cmpb      $45, %al
	jne       .L000004D8
.L000004CC:
	cmpb      $0, 1(%rdi)
	je        .L00000498
.L000004D2:
	.p2align 4,,10
	.p2align 3
.L000004D8:
	leaq      8(%rsp), %rsi
	movq      %rbx, %rdi
	call      read_file
.L000004E5:
	testq     %rax, %rax
	movq      %rax, (%rbp)
	jne       .L000004B2
.L000004EE:
	movq      %rbx, %rdi
	jmp       .L000004FD
.L000004F3:
	.p2align 4,,10
	.p2align 3
.L000004F8:
	movl      $.LC00000013.str1.1, %edi
.L000004FD:
	call      quote
.L00000502:
	movq      %rax, %rbx
	call      __errno_location
.L0000050A:
	movl      (%rax), %esi
	movq      %rbx, %rcx
	xorl      %eax, %eax
	movl      $.LC00000015.str1.1, %edx
	movl      $1, %edi
	call      error
.L00000520:
	movq      (%rbp), %rax
	addq      8(%rsp), %rax
	movq      %rax, 8(%rbp)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.size	swallow_file_in_memory, .-swallow_file_in_memory
# ----------------------
.L00000534:
	.p2align 4
# ----------------------
	.local	digest_word_file
	.type	digest_word_file, @function
digest_word_file:
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      $576460752303423487, %r12
	subq      $24, %rsp
	movq      %rsp, %rsi
	call      swallow_file_in_memory
.L0000055F:
	movq      (%rsp), %rbp
	movq      8(%rsp), %rdx
	xorl      %esi, %esi
	movq      $0, (%r13)
	movq      $0, 8(%r13)
	movq      $0, 16(%r13)
	.p2align 4,,10
	.p2align 3
.L00000588:
	cmpq      %rdx, %rbp
	jae       .L000005EB
.L0000058D:
	cmpb      $10, (%rbp)
	movq      %rbp, %rax
	movq      %rbp, %rbx
	jne       .L000005A5
.L00000599:
	jmp       .L000005E2
.L0000059B:
	.p2align 4,,10
	.p2align 3
.L000005A0:
	cmpb      $10, (%rax)
	je        .L00000610
.L000005A5:
	addq      $1, %rax
	cmpq      %rdx, %rax
	jne       .L000005A0
.L000005AE:
	cmpq      %rsi, 8(%r13)
	movq      %rdx, %rbx
	je        .L0000061E
.L000005B7:
	movq      (%r13), %rax
.L000005BB:
	movq      %rsi, %rcx
	addq      $1, %rsi
	salq      $4, %rcx
	addq      %rcx, %rax
	movq      %rbx, %rcx
	subq      %rbp, %rcx
	cmpq      %rbx, %rdx
	movq      %rbp, (%rax)
	movw      %cx, 8(%rax)
	movq      %rbx, %rbp
	movq      %rsi, 16(%r13)
	jbe       .L00000588
.L000005E2:
	leaq      1(%rbx), %rbp
	cmpq      %rdx, %rbp
	jb        .L0000058D
.L000005EB:
	movq      (%r13), %rdi
	movl      $compare_words, %ecx
	movl      $16, %edx
	call      qsort
.L000005FE:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000609:
	.p2align 4
.L00000610:
	cmpq      %rax, %rbp
	movq      %rax, %rbx
	jae       .L000005E2
.L00000618:
	cmpq      %rsi, 8(%r13)
	jne       .L000005B7
.L0000061E:
	cmpq      %r12, %rsi
	ja        .L0000064B
.L00000623:
	leaq      1(%rsi,%rsi), %rsi
	movq      (%r13), %rdi
	movq      %rsi, 8(%r13)
	salq      $4, %rsi
	call      xrealloc
.L00000639:
	movq      16(%r13), %rsi
	movq      %rax, (%r13)
	movq      8(%rsp), %rdx
	jmp       .L000005BB
.L0000064B:
	call      xalloc_die
	.size	digest_word_file, .-digest_word_file
# ----------------------
	.local	print_spaces
	.type	print_spaces, @function
print_spaces:
	testl     %edi, %edi
	pushq     %rbx
	movl      %edi, %ebx
	jg        .L00000670
.L00000657:
	jmp       .L00000690
.L00000659:
	.p2align 4
.L00000660:
	leaq      1(%rdx), %rcx
	subl      $1, %ebx
	movq      %rcx, 40(%rdi)
	movb      $32, (%rdx)
	je        .L00000690
.L00000670:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rdx
	cmpq      48(%rdi), %rdx
	jb        .L00000660
.L00000681:
	movl      $32, %esi
	call      __overflow
.L0000068B:
	subl      $1, %ebx
	jne       .L00000670
.L00000690:
	popq      %rbx
	ret       
	.size	print_spaces, .-print_spaces
# ----------------------
.L00000692:
	.p2align 4
# ----------------------
	.local	print_field
	.type	print_field, @function
print_field:
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	movl      $.LC00000018.str1.1, %r12d
	movq      %rdi, %rbx
	subq      $24, %rsp
	cmpq      %rdi, %rsi
	jbe       .L0000075D
.L000006BF:
	.p2align 4,,10
	.p2align 3
.L000006C0:
	movzbl    (%rbx), %edx
	movslq    %edx, %rax
	movl      %edx, %ebp
	cmpb      $0, edited_flag(%rax)
	je        .L00000730
.L000006D1:
	movzbl    diacrit_diac(%rax), %edi
	testb     %dil, %dil
	je        .L000006EA
.L000006DD:
	cmpl      $3, output_format(%rip)
	je        .L00000830
.L000006EA:
	cmpb      $92, %bpl
	je        .L000007B0
.L000006F4:
	ja        .L00000770
.L000006F6:
	cmpb      $34, %bpl
	je        .L000007C8
.L00000700:
	jb        .L0000078A
.L00000706:
	cmpb      $38, %bpl
	ja        .L0000078A
.L0000070C:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00000992
.L00000721:
	leaq      1(%rax), %rcx
	movq      %rcx, 40(%rdi)
	movb      $92, (%rax)
	.p2align 4,,10
	.p2align 3
.L00000730:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00000850
.L00000745:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      %bpl, (%rax)
.L00000750:
	addq      $1, %rbx
	cmpq      %r13, %rbx
	jne       .L000006C0
.L0000075D:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000768:
	.p2align 4
.L00000770:
	cmpb      $123, %bpl
	je        .L00000810
.L0000077A:
	cmpb      $125, %bpl
	je        .L00000810
.L00000784:
	cmpb      $95, %bpl
	je        .L0000070C
.L0000078A:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00000983
.L0000079F:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $32, (%rax)
	jmp       .L00000750
.L000007AC:
	.p2align 4,,10
	.p2align 3
.L000007B0:
	movq      stdout(%rip), %rsi
	movl      $.LC00000072.str1.1, %edi
	call      fputs_unlocked
.L000007C1:
	jmp       .L00000750
.L000007C3:
	.p2align 4,,10
	.p2align 3
.L000007C8:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L000009B8
.L000007DD:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L000007E8:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L000009A9
.L000007FD:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
	jmp       .L00000750
.L0000080D:
	.p2align 4,,10
	.p2align 3
.L00000810:
	movl      $.LC0000006C.str1.1, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000821:
	jmp       .L00000750
.L00000826:
	.p2align 4
.L00000830:
	cmpb      $9, %dil
	movsbl    diacrit_base(%rax), %ecx
	ja        .L00000750
.L00000841:
	jmp       *.LC00000000(,%rdi,8)
.L00000848:
	.p2align 4
.L00000850:
	movl      %edx, %esi
	call      __overflow
.L00000857:
	jmp       .L00000750
.L0000085C:
	.p2align 4,,10
	.p2align 3
.L00000860:
	cmpl      $105, %ecx
	movl      $.LC0000001A.str1.1, %edx
	movl      $.LC00000033.str1.1, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L0000087D:
	jmp       .L00000750
.L00000882:
	cmpl      $105, %ecx
	movl      $.LC0000001A.str1.1, %edx
	movl      $.LC0000003A.str1.1, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L0000089F:
	jmp       .L00000750
.L000008A4:
	cmpl      $105, %ecx
	movl      $.LC0000001A.str1.1, %edx
	movl      $.LC00000041.str1.1, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L000008C1:
	jmp       .L00000750
.L000008C6:
	cmpl      $105, %ecx
	movl      $.LC0000001A.str1.1, %edx
	movl      $.LC00000048.str1.1, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L000008E3:
	jmp       .L00000750
.L000008E8:
	movl      %ecx, %edx
	movl      $.LC0000004F.str1.1, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L000008FB:
	jmp       .L00000750
.L00000900:
	cmpb      $65, %cl
	je        .L000009C7
.L00000909:
	cmpb      $97, %cl
	jne       .L0000078A
.L00000912:
	movq      stdout(%rip), %rsi
	movl      $.LC00000056.str1.1, %edi
	call      fputs_unlocked
.L00000923:
	jmp       .L00000750
.L00000928:
	cmpb      $79, %cl
	je        .L00000A12
.L00000931:
	jle       .L000009F3
.L00000937:
	cmpb      $97, %cl
	je        .L00000A28
.L00000940:
	cmpb      $111, %cl
	jne       .L0000078A
.L00000949:
	movq      stdout(%rip), %rsi
	movl      $.LC0000001B.str1.1, %edi
	call      fputs_unlocked
.L0000095A:
	jmp       .L00000750
.L0000095F:
	cmpb      $79, %cl
	je        .L000009DD
.L00000964:
	cmpb      $111, %cl
	jne       .L0000078A
.L0000096D:
	movq      stdout(%rip), %rsi
	movl      $.LC00000062.str1.1, %edi
	call      fputs_unlocked
.L0000097E:
	jmp       .L00000750
.L00000983:
	movl      $32, %esi
	call      __overflow
.L0000098D:
	jmp       .L00000750
.L00000992:
	movl      $92, %esi
	movl      %edx, 12(%rsp)
	call      __overflow
.L000009A0:
	movl      12(%rsp), %edx
	jmp       .L00000730
.L000009A9:
	movl      $34, %esi
	call      __overflow
.L000009B3:
	jmp       .L00000750
.L000009B8:
	movl      $34, %esi
	call      __overflow
.L000009C2:
	jmp       .L000007E8
.L000009C7:
	movq      stdout(%rip), %rsi
	movl      $.LC0000005C.str1.1, %edi
	call      fputs_unlocked
.L000009D8:
	jmp       .L00000750
.L000009DD:
	movq      stdout(%rip), %rsi
	movl      $.LC00000067.str1.1, %edi
	call      fputs_unlocked
.L000009EE:
	jmp       .L00000750
.L000009F3:
	cmpb      $65, %cl
	jne       .L0000078A
.L000009FC:
	movq      stdout(%rip), %rsi
	movl      $.LC0000002D.str1.1, %edi
	call      fputs_unlocked
.L00000A0D:
	jmp       .L00000750
.L00000A12:
	movq      stdout(%rip), %rsi
	movl      $.LC00000021.str1.1, %edi
	call      fputs_unlocked
.L00000A23:
	jmp       .L00000750
.L00000A28:
	movq      stdout(%rip), %rsi
	movl      $.LC00000027.str1.1, %edi
	call      fputs_unlocked
.L00000A39:
	jmp       .L00000750
	.size	print_field, .-print_field
# ----------------------
.L00000A3E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	search_table.isra.0
	.type	search_table.isra.0, @function
search_table.isra.0:
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      %edx, %ebx
	subl      $1, %ebx
	js        .L00000A92
.L00000A4F:
	movq      %rdi, %rbp
	movq      %rsi, %r12
	xorl      %r14d, %r14d
	jmp       .L00000A6B
.L00000A5A:
	.p2align 4,,10
	.p2align 3
.L00000A60:
	je        .L00000AA0
.L00000A62:
	leal      1(%r13), %r14d
	cmpl      %r14d, %ebx
	jl        .L00000A92
.L00000A6B:
	leal      (%r14,%rbx), %r13d
	movq      %rbp, %rdi
	sarl      $1, %r13d
	movslq    %r13d, %rax
	salq      $4, %rax
	leaq      (%r12,%rax), %rsi
	call      compare_words
.L00000A85:
	testl     %eax, %eax
	jns       .L00000A60
.L00000A89:
	leal      -1(%r13), %ebx
	cmpl      %r14d, %ebx
	jge       .L00000A6B
.L00000A92:
	popq      %rbx
	xorl      %eax, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L00000A9D:
	.p2align 4,,10
	.p2align 3
.L00000AA0:
	popq      %rbx
	movl      $1, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.size	search_table.isra.0, .-search_table.isra.0
# ----------------------
.L00000AAE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	usage
	.type	usage, @function
usage:
	pushq     %r12
	pushq     %rbp
	movl      $5, %edx
	pushq     %rbx
	movl      %edi, %ebx
	subq      $112, %rsp
	testl     %edi, %edi
	movq      program_name(%rip), %rbp
	je        .L00000AF6
.L00000ACA:
	movl      $.LC00000028.str1.8, %esi
	xorl      %edi, %edi
	call      dcgettext
.L00000AD6:
	movq      stderr(%rip), %rdi
	movq      %rax, %rdx
	movq      %rbp, %rcx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L00000AEF:
	movl      %ebx, %edi
	call      exit
.L00000AF6:
	xorl      %edi, %edi
	movl      $.LC00000050.str1.8, %esi
	call      dcgettext
.L00000B02:
	movq      %rbp, %rcx
	movq      %rbp, %rdx
	movq      %rax, %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000B17:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC000000B0.str1.8, %esi
	call      dcgettext
.L00000B2F:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000B3A:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC00000100.str1.8, %esi
	call      dcgettext
.L00000B52:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000B5D:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC00000138.str1.8, %esi
	call      dcgettext
.L00000B75:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000B80:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC00000188.str1.8, %esi
	call      dcgettext
.L00000B98:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000BA3:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC00000218.str1.8, %esi
	call      dcgettext
.L00000BBB:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000BC6:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC00000298.str1.8, %esi
	call      dcgettext
.L00000BDE:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000BE9:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC000003F8.str1.8, %esi
	call      dcgettext
.L00000C01:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000C0C:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC000005A0.str1.8, %esi
	call      dcgettext
.L00000C24:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000C2F:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC00000670.str1.8, %esi
	call      dcgettext
.L00000C47:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000C52:
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC000006A0.str1.8, %esi
	call      dcgettext
.L00000C6A:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
.L00000C75:
	movq      $.LC0000007F.str1.1, (%rsp)
	movq      $.LC00000091.str1.1, 8(%rsp)
	movl      $.LC0000007F.str1.1, %edi
	movq      $.LC000000A1.str1.1, 16(%rsp)
	movq      $.LC000000AB.str1.1, 24(%rsp)
	movq      %rsp, %rdx
	movq      $.LC000000C1.str1.1, 32(%rsp)
	movq      $.LC000000CB.str1.1, 40(%rsp)
	movl      $.LC00000081.str1.1, %r10d
	movq      $.LC000000DA.str1.1, 48(%rsp)
	movq      $.LC000000CB.str1.1, 56(%rsp)
	movl      $4, %r9d
	movq      $.LC000000E4.str1.1, 64(%rsp)
	movq      $.LC000000CB.str1.1, 72(%rsp)
	movq      $.LC000000EE.str1.1, 80(%rsp)
	movq      $.LC000000CB.str1.1, 88(%rsp)
	movq      $0, 96(%rsp)
	movq      $0, 104(%rsp)
	jmp       .L00000D1C
.L00000D0B:
	.p2align 4,,10
	.p2align 3
.L00000D10:
	addq      $16, %rdx
	movq      (%rdx), %rdi
	testq     %rdi, %rdi
	je        .L00000D26
.L00000D1C:
	movq      %r10, %rsi
	movq      %r9, %rcx
	repz cmpsb     
	jne       .L00000D10
.L00000D26:
	movq      8(%rdx), %rbp
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC000000F8.str1.1, %esi
	testq     %rbp, %rbp
	je        .L00000DF0
.L00000D3F:
	call      dcgettext
.L00000D44:
	movl      $.LC000006D8.str1.8, %ecx
	movq      %rax, %rsi
	movl      $.LC0000010F.str1.1, %edx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000D5D:
	xorl      %esi, %esi
	movl      $5, %edi
	call      setlocale
.L00000D69:
	testq     %rax, %rax
	je        .L00000D88
.L00000D6E:
	movl      $3, %edx
	movl      $.LC0000011D.str1.1, %esi
	movq      %rax, %rdi
	call      strncmp
.L00000D80:
	testl     %eax, %eax
	jne       .L00000E3A
.L00000D88:
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC00000748.str1.8, %esi
	call      dcgettext
.L00000D99:
	movl      $.LC00000081.str1.1, %ecx
	movq      %rax, %rsi
	movl      $.LC000006D8.str1.8, %edx
	xorl      %eax, %eax
	movl      $1, %edi
	movl      $.LC0000001A.str1.1, %r12d
	call      __printf_chk
.L00000DB8:
	cmpq      $.LC00000081.str1.1, %rbp
	je        .L00000E8E
.L00000DC5:
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC00000768.str1.8, %esi
	call      dcgettext
.L00000DD6:
	movq      %r12, %rcx
	movq      %rax, %rsi
	movq      %rbp, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000DEB:
	jmp       .L00000AEF
.L00000DF0:
	call      dcgettext
.L00000DF5:
	movl      $.LC000006D8.str1.8, %ecx
	movq      %rax, %rsi
	movl      $.LC0000010F.str1.1, %edx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000E0E:
	xorl      %esi, %esi
	movl      $5, %edi
	call      setlocale
.L00000E1A:
	testq     %rax, %rax
	je        .L00000E64
.L00000E1F:
	movl      $3, %edx
	movl      $.LC0000011D.str1.1, %esi
	movq      %rax, %rdi
	call      strncmp
.L00000E31:
	testl     %eax, %eax
	je        .L00000E64
.L00000E35:
	movl      $.LC00000081.str1.1, %ebp
.L00000E3A:
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC00000700.str1.8, %esi
	call      dcgettext
.L00000E4B:
	movl      $.LC00000081.str1.1, %edx
	movq      %rax, %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000E5F:
	jmp       .L00000D88
.L00000E64:
	movl      $5, %edx
	movl      $.LC00000748.str1.8, %esi
	xorl      %edi, %edi
	call      dcgettext
.L00000E75:
	movl      $.LC00000081.str1.1, %ecx
	movq      %rax, %rsi
	movl      $.LC000006D8.str1.8, %edx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00000E8E:
	movl      $.LC00000081.str1.1, %ebp
	movl      $.LC00000085.str1.1, %r12d
	jmp       .L00000DC5
	.size	usage, .-usage
# ----------------------
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      %edi, %ebx
	movq      %rsi, %rbp
	subq      $104, %rsp
	movq      (%rsi), %rdi
	call      set_program_name
.L0000001B.startup:
	movl      $.LC0000001A.str1.1, %esi
	movl      $6, %edi
	call      setlocale
.L0000002A.startup:
	movl      $.LC0000012A.str1.1, %esi
	movl      $.LC000000A1.str1.1, %edi
	call      bindtextdomain
.L00000039.startup:
	movl      $.LC000000A1.str1.1, %edi
	call      textdomain
.L00000043.startup:
	movl      $close_stdout, %edi
	call      atexit
.L0000004D.startup:
	.p2align 4,,10
	.p2align 3
.L00000050.startup:
	xorl      %r8d, %r8d
	movl      $long_options, %ecx
	movl      $.LC00000193.str1.1, %edx
	movq      %rbp, %rsi
	movl      %ebx, %edi
	call      getopt_long
.L00000067.startup:
	cmpl      $-1, %eax
	je        .L000004A5.startup
.L00000070.startup:
	cmpl      $83, %eax
	je        .L00000311.startup
.L00000079.startup:
	jg        .L000000B8.startup
.L0000007B.startup:
	cmpl      $70, %eax
	je        .L000002F9.startup
.L00000084.startup:
	jg        .L000000F3.startup
.L00000086.startup:
	cmpl      $-130, %eax
	je        .L000002C6.startup
.L00000091.startup:
	jle       .L00000240.startup
.L00000097.startup:
	cmpl      $10, %eax
	je        .L000001F3.startup
.L000000A0.startup:
	cmpl      $65, %eax
	jne       .L0000041D.startup
.L000000A9.startup:
	movb      $1, auto_reference(%rip)
	jmp       .L00000050.startup
.L000000B2.startup:
	.p2align 4,,10
	.p2align 3
.L000000B8.startup:
	cmpl      $103, %eax
	je        .L00000433.startup
.L000000C1.startup:
	jle       .L00000120.startup
.L000000C3.startup:
	cmpl      $114, %eax
	je        .L00000427.startup
.L000000CC.startup:
	jg        .L0000014D.startup
.L000000CE.startup:
	cmpl      $105, %eax
	je        .L0000022D.startup
.L000000D7.startup:
	cmpl      $111, %eax
	jne       .L0000041D.startup
.L000000E0.startup:
	movq      optarg(%rip), %rax
	movq      %rax, only_file(%rip)
	jmp       .L00000050.startup
.L000000F3.startup:
	cmpl      $77, %eax
	je        .L000002B3.startup
.L000000FC.startup:
	jle       .L0000029E.startup
.L00000102.startup:
	cmpl      $79, %eax
	je        .L000001E4.startup
.L0000010B.startup:
	cmpl      $82, %eax
	jne       .L0000041D.startup
.L00000114.startup:
	movb      $1, right_reference(%rip)
	jmp       .L00000050.startup
.L00000120.startup:
	cmpl      $87, %eax
	je        .L000002CD.startup
.L00000129.startup:
	jle       .L00000286.startup
.L0000012F.startup:
	cmpl      $98, %eax
	je        .L000001D1.startup
.L00000138.startup:
	cmpl      $102, %eax
	jne       .L0000041D.startup
.L00000141.startup:
	movb      $1, ignore_case(%rip)
	jmp       .L00000050.startup
.L0000014D.startup:
	cmpl      $116, %eax
	je        .L00000050.startup
.L00000156.startup:
	cmpl      $119, %eax
	jne       .L0000041D.startup
.L0000015F.startup:
	movq      optarg(%rip), %rdi
	leaq      80(%rsp), %rcx
	xorl      %r8d, %r8d
	xorl      %edx, %edx
	xorl      %esi, %esi
	call      xstrtoul
.L00000177.startup:
	testl     %eax, %eax
	jne       .L0000018D.startup
.L0000017B.startup:
	movq      80(%rsp), %rax
	leaq      -1(%rax), %rdx
	cmpq      $2147483646, %rdx
	jbe       .L000001C6.startup
.L0000018D.startup:
	movq      optarg(%rip), %rdi
	call      quotearg
.L00000199.startup:
	movl      $5, %edx
	movq      %rax, %r12
	movl      $.LC00000158.str1.1, %esi
	xorl      %edi, %edi
	call      dcgettext
.L000001AD.startup:
	movq      %r12, %rcx
	movq      %rax, %rdx
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      $1, %edi
	call      error
.L000001C1.startup:
	movq      80(%rsp), %rax
.L000001C6.startup:
	movl      %eax, line_width(%rip)
	jmp       .L00000050.startup
.L000001D1.startup:
	movq      optarg(%rip), %rax
	movq      %rax, break_file(%rip)
	jmp       .L00000050.startup
.L000001E4.startup:
	movl      $2, output_format(%rip)
	jmp       .L00000050.startup
.L000001F3.startup:
	movq      argmatch_die(%rip), %r9
	movq      optarg(%rip), %rsi
	movl      $4, %r8d
	movl      $format_vals, %ecx
	movl      $format_args, %edx
	movl      $.LC0000016F.str1.1, %edi
	call      __xargmatch_internal
.L0000021B.startup:
	movl      format_vals(,%rax,4), %eax
	movl      %eax, output_format(%rip)
	jmp       .L00000050.startup
.L0000022D.startup:
	movq      optarg(%rip), %rax
	movq      %rax, ignore_file(%rip)
	jmp       .L00000050.startup
.L00000240.startup:
	cmpl      $-131, %eax
	jne       .L0000041D.startup
.L0000024B.startup:
	movl      $.LC00000178.str1.1, %esi
	movl      $.LC00000189.str1.1, %edi
	call      proper_name_utf8
.L0000025A.startup:
	movq      stdout(%rip), %rdi
	movq      Version(%rip), %rcx
	movq      %rax, %r8
	xorl      %r9d, %r9d
	movl      $.LC0000010F.str1.1, %edx
	movl      $.LC00000081.str1.1, %esi
	xorl      %eax, %eax
	call      version_etc
.L0000027F.startup:
	xorl      %edi, %edi
	call      exit
.L00000286.startup:
	cmpl      $84, %eax
	jne       .L0000041D.startup
.L0000028F.startup:
	movl      $3, output_format(%rip)
	jmp       .L00000050.startup
.L0000029E.startup:
	cmpl      $71, %eax
	jne       .L0000041D.startup
.L000002A7.startup:
	movb      $0, gnu_extensions(%rip)
	jmp       .L00000050.startup
.L000002B3.startup:
	movq      optarg(%rip), %rax
	movq      %rax, macro_name(%rip)
	jmp       .L00000050.startup
.L000002C6.startup:
	xorl      %edi, %edi
	call      usage
.L000002CD.startup:
	movq      optarg(%rip), %rdi
	call      copy_unescaped_string
.L000002D9.startup:
	movq      %rax, word_regex(%rip)
	cmpb      $0, (%rax)
	jne       .L00000050.startup
.L000002E9.startup:
	movq      $0, word_regex(%rip)
	jmp       .L00000050.startup
.L000002F9.startup:
	movq      optarg(%rip), %rdi
	call      copy_unescaped_string
.L00000305.startup:
	movq      %rax, truncation_string(%rip)
	jmp       .L00000050.startup
.L00000311.startup:
	movq      optarg(%rip), %rdi
	call      copy_unescaped_string
.L0000031D.startup:
	movq      %rax, context_regex(%rip)
	jmp       .L00000050.startup
.L00000329.startup:
	movl      $8, %edi
	movl      $1, number_input_files(%rip)
	call      xmalloc
.L0000033D.startup:
	movl      $4, %edi
	movq      %rax, input_file_name(%rip)
	call      xmalloc
.L0000034E.startup:
	movl      $16, %edi
	movq      %rax, file_line_count(%rip)
	call      xmalloc
.L0000035F.startup:
	movslq    optind(%rip), %rdx
	movq      %rax, text_buffers(%rip)
	leaq      0(,%rdx,8), %rsi
	movq      %rdx, %rax
	movq      (%rbp,%rdx,8), %rdx
	movzbl    (%rdx), %ecx
	testb     %cl, %cl
	je        .L00000397.startup
.L00000384.startup:
	cmpb      $45, %cl
	jne       .L00000D6D.startup
.L0000038D.startup:
	cmpb      $0, 1(%rdx)
	jne       .L00000D6D.startup
.L00000397.startup:
	movq      input_file_name(%rip), %rdx
	movq      $0, (%rdx)
.L000003A5.startup:
	addl      $1, %eax
	cmpl      %eax, %ebx
	movl      %eax, optind(%rip)
	jle       .L000005A4.startup
.L000003B6.startup:
	movq      8(%rbp,%rsi), %rdi
	movq      stdout(%rip), %rdx
	movl      $.LC000001AE.str1.1, %esi
	call      freopen_safer
.L000003CC.startup:
	testq     %rax, %rax
	je        .L00001F5E.startup
.L000003D5.startup:
	movl      optind(%rip), %eax
	addl      $1, %eax
	cmpl      %eax, %ebx
	movl      %eax, optind(%rip)
	jle       .L000005A4.startup
.L000003EC.startup:
	cltq      
	movq      (%rbp,%rax,8), %rdi
	call      quote
.L000003F8.startup:
	movl      $5, %edx
	movq      %rax, %rbx
	movl      $.LC000001B0.str1.1, %esi
	xorl      %edi, %edi
	call      dcgettext
.L0000040C.startup:
	movq      %rbx, %rcx
	movq      %rax, %rdx
	xorl      %esi, %esi
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      error
.L0000041D.startup:
	movl      $1, %edi
	call      usage
.L00000427.startup:
	movb      $1, input_reference(%rip)
	jmp       .L00000050.startup
.L00000433.startup:
	movq      optarg(%rip), %rdi
	leaq      80(%rsp), %rcx
	xorl      %r8d, %r8d
	xorl      %edx, %edx
	xorl      %esi, %esi
	call      xstrtoul
.L0000044B.startup:
	testl     %eax, %eax
	jne       .L00000461.startup
.L0000044F.startup:
	movq      80(%rsp), %rax
	leaq      -1(%rax), %rdx
	cmpq      $2147483646, %rdx
	jbe       .L0000049A.startup
.L00000461.startup:
	movq      optarg(%rip), %rdi
	call      quotearg
.L0000046D.startup:
	movl      $5, %edx
	movq      %rax, %r12
	movl      $.LC00000142.str1.1, %esi
	xorl      %edi, %edi
	call      dcgettext
.L00000481.startup:
	movq      %r12, %rcx
	movq      %rax, %rdx
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      $1, %edi
	call      error
.L00000495.startup:
	movq      80(%rsp), %rax
.L0000049A.startup:
	movl      %eax, gap_size(%rip)
	jmp       .L00000050.startup
.L000004A5.startup:
	movl      optind(%rip), %eax
	cmpl      %ebx, %eax
	je        .L00000559.startup
.L000004B3.startup:
	cmpb      $0, gnu_extensions(%rip)
	je        .L00000329.startup
.L000004C0.startup:
	subl      %eax, %ebx
	movl      %ebx, number_input_files(%rip)
	movslq    %ebx, %rbx
	leaq      0(,%rbx,8), %rdi
	call      xmalloc
.L000004D8.startup:
	movslq    number_input_files(%rip), %rdi
	movq      %rax, input_file_name(%rip)
	salq      $2, %rdi
	call      xmalloc
.L000004EF.startup:
	movslq    number_input_files(%rip), %rdi
	movq      %rax, file_line_count(%rip)
	salq      $4, %rdi
	call      xmalloc
.L00000506.startup:
	movl      number_input_files(%rip), %edi
	movq      %rax, text_buffers(%rip)
	xorl      %eax, %eax
	movq      input_file_name(%rip), %rsi
	jmp       .L00000537.startup
.L0000051E.startup:
	cmpb      $0, 1(%rdx)
	jne       .L00000553.startup
.L00000524.startup:
	movq      $0, (%rsi,%rax,8)
.L0000052C.startup:
	addl      $1, optind(%rip)
	addq      $1, %rax
.L00000537.startup:
	cmpl      %eax, %edi
	jle       .L000005A4.startup
.L0000053B.startup:
	movslq    optind(%rip), %rdx
	movq      (%rbp,%rdx,8), %rdx
	movzbl    (%rdx), %ecx
	testb     %cl, %cl
	je        .L00000524.startup
.L0000054E.startup:
	cmpb      $45, %cl
	je        .L0000051E.startup
.L00000553.startup:
	movq      %rdx, (%rsi,%rax,8)
	jmp       .L0000052C.startup
.L00000559.startup:
	movl      $8, %edi
	call      xmalloc
.L00000563.startup:
	movl      $4, %edi
	movq      %rax, input_file_name(%rip)
	call      xmalloc
.L00000574.startup:
	movl      $16, %edi
	movq      %rax, file_line_count(%rip)
	call      xmalloc
.L00000585.startup:
	movq      %rax, text_buffers(%rip)
	movq      input_file_name(%rip), %rax
	movl      $1, number_input_files(%rip)
	movq      $0, (%rax)
.L000005A4.startup:
	cmpl      $0, output_format(%rip)
	jne       .L000005C1.startup
.L000005AD.startup:
	cmpb      $1, gnu_extensions(%rip)
	sbbl      %eax, %eax
	notl      %eax
	addl      $2, %eax
	movl      %eax, output_format(%rip)
.L000005C1.startup:
	cmpb      $0, ignore_case(%rip)
	je        .L000005F1.startup
.L000005CA.startup:
	call      __ctype_toupper_loc
.L000005CF.startup:
	xorl      %edx, %edx
	.p2align 4,,10
	.p2align 3
.L000005D8.startup:
	movq      (%rax), %rcx
	movl      (%rcx,%rdx,4), %ecx
	addq      $1, %rdx
	movb      %cl, folded_chars-1(%rdx)
	cmpq      $256, %rdx
	jne       .L000005D8.startup
.L000005F1.startup:
	movq      context_regex(%rip), %rax
	testq     %rax, %rax
	je        .L000007D9.startup
.L00000601.startup:
	cmpb      $0, (%rax)
	jne       .L000007FE.startup
.L0000060A.startup:
	movq      $0, context_regex(%rip)
.L00000615.startup:
	cmpq      $0, word_regex(%rip)
	je        .L00000D23.startup
.L00000623.startup:
	movl      $word_regex, %edi
	call      compile_regex
.L0000062D.startup:
	movq      break_file(%rip), %rdi
	testq     %rdi, %rdi
	je        .L000006A5.startup
.L00000639.startup:
	leaq      80(%rsp), %rsi
	call      swallow_file_in_memory
.L00000643.startup:
	movl      $word_fastmap, %edx
	movq      $72340172838076673, %rax
	movl      $32, %ecx
	movq      %rdx, %rdi
	rep stosq     
	movq      80(%rsp), %rdi
	movq      88(%rsp), %rcx
	cmpq      %rcx, %rdi
	movq      %rdi, %rax
	jae       .L00000682.startup
.L0000066F.startup:
	movzbl    (%rax), %edx
	addq      $1, %rax
	cmpq      %rcx, %rax
	movb      $0, word_fastmap(%rdx)
	jne       .L0000066F.startup
.L00000682.startup:
	cmpb      $0, gnu_extensions(%rip)
	jne       .L000006A0.startup
.L0000068B.startup:
	movb      $0, word_fastmap+32(%rip)
	movb      $0, word_fastmap+9(%rip)
	movb      $0, word_fastmap+10(%rip)
.L000006A0.startup:
	call      free
.L000006A5.startup:
	movq      ignore_file(%rip), %rdi
	testq     %rdi, %rdi
	je        .L000006D0.startup
.L000006B1.startup:
	movl      $ignore_table, %esi
	call      digest_word_file
.L000006BB.startup:
	cmpq      $0, ignore_table+16(%rip)
	jne       .L000006D0.startup
.L000006C5.startup:
	movq      $0, ignore_file(%rip)
.L000006D0.startup:
	movq      only_file(%rip), %rdi
	testq     %rdi, %rdi
	je        .L000006FB.startup
.L000006DC.startup:
	movl      $only_table, %esi
	call      digest_word_file
.L000006E6.startup:
	cmpq      $0, only_table+16(%rip)
	jne       .L000006FB.startup
.L000006F0.startup:
	movq      $0, only_file(%rip)
.L000006FB.startup:
	movq      $0, number_of_occurs(%rip)
	movl      $0, total_line_count(%rip)
	movl      $0, maximum_word_length(%rip)
	movl      $0, reference_max_width(%rip)
	movq      $0, 40(%rsp)
.L0000072D.startup:
	movl      40(%rsp), %eax
	cmpl      %eax, number_input_files(%rip)
	jle       .L00000DB9.startup
.L0000073D.startup:
	movq      40(%rsp), %rdi
	movq      input_file_name(%rip), %rax
	movq      %rdi, %r14
	movq      (%rax,%rdi,8), %rdi
	salq      $4, %r14
	movq      %r14, %rsi
	addq      text_buffers(%rip), %rsi
	call      swallow_file_in_memory
.L00000763.startup:
	addq      text_buffers(%rip), %r14
	cmpb      $0, input_reference(%rip)
	movq      %r14, 8(%rsp)
	movq      (%r14), %r15
	je        .L0000080D.startup
.L0000077F.startup:
	movq      8(%r14), %r12
	cmpq      %r12, %r15
	movq      %r12, %rbx
	jae       .L00000DA8.startup
.L0000078F.startup:
	call      __ctype_b_loc
.L00000794.startup:
	movq      (%rax), %rdx
	movq      %r15, %rax
	jmp       .L000007A9.startup
.L0000079C.startup:
	addq      $1, %rax
	cmpq      %r12, %rax
	je        .L00000DAB.startup
.L000007A9.startup:
	movzbl    (%rax), %ecx
	testb     $32, 1(%rdx,%rcx,2)
	je        .L0000079C.startup
.L000007B3.startup:
	movq      %rax, %rbx
	subl      %r15d, %eax
	cmpq      %rbx, %r12
	movl      %eax, 24(%rsp)
	ja        .L000007CD.startup
.L000007C2.startup:
	jmp       .L00000821.startup
.L000007C4.startup:
	addq      $1, %rbx
	cmpq      %r12, %rbx
	je        .L00000821.startup
.L000007CD.startup:
	movzbl    (%rbx), %eax
	testb     $32, 1(%rdx,%rax,2)
	jne       .L000007C4.startup
.L000007D7.startup:
	jmp       .L00000821.startup
.L000007D9.startup:
	cmpb      $0, gnu_extensions(%rip)
	je        .L00001E14.startup
.L000007E6.startup:
	cmpb      $0, input_reference(%rip)
	jne       .L00001E14.startup
.L000007F3.startup:
	movq      $.LC000007A0.str1.8, context_regex(%rip)
.L000007FE.startup:
	movl      $context_regex, %edi
	call      compile_regex
.L00000808.startup:
	jmp       .L00000615.startup
.L0000080D.startup:
	movq      8(%rsp), %rax
	movq      %r15, %rbx
	movl      $0, 24(%rsp)
	movq      8(%rax), %r12
.L00000821.startup:
	movq      %r15, %rbp
.L00000824.startup:
	cmpq      %r15, %r12
	movq      %r12, 72(%rsp)
	jbe       .L00000D7C.startup
.L00000832.startup:
	cmpq      $0, context_regex(%rip)
	je        .L00000888.startup
.L0000083C.startup:
	movq      72(%rsp), %rdx
	xorl      %ecx, %ecx
	movl      $context_regs, %r9d
	movq      %r15, %rsi
	movl      $context_regex+8, %edi
	subq      %r15, %rdx
	movl      %edx, %r8d
	call      re_search
.L0000085C.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L00000865.startup:
	addl      $1, %eax
	je        .L0000087C.startup
.L0000086A.startup:
	movq      context_regs+16(%rip), %rax
	movslq    (%rax), %rax
	addq      %r15, %rax
	movq      %rax, 72(%rsp)
.L0000087C.startup:
	cmpq      72(%rsp), %r15
	movq      72(%rsp), %r13
	jae       .L000008B5.startup
.L00000888.startup:
	call      __ctype_b_loc
.L0000088D.startup:
	movq      72(%rsp), %r13
	movq      (%rax), %rdx
	jmp       .L000008A9.startup
.L00000897.startup:
	.p2align 4
.L000008A0.startup:
	subq      $1, %r13
	cmpq      %r13, %r15
	jae       .L000008B5.startup
.L000008A9.startup:
	movzbl    -1(%r13), %eax
	testb     $32, 1(%rdx,%rax,2)
	jne       .L000008A0.startup
.L000008B5.startup:
	movq      %r15, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L000008C0.startup:
	cmpq      $0, word_regex(%rip)
	je        .L00000B65.startup
.L000008CE.startup:
	movq      %r13, %rdx
	xorl      %ecx, %ecx
	movl      $word_regs, %r9d
	subq      %r15, %rdx
	movq      %r15, %rsi
	movl      $word_regex+8, %edi
	movl      %edx, %r8d
	call      re_search
.L000008EC.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L000008F5.startup:
	cmpl      $-1, %eax
	je        .L00000B96.startup
.L000008FE.startup:
	movq      word_regs+8(%rip), %rax
	movslq    (%rax), %r8
	movq      word_regs+16(%rip), %rax
	movslq    (%rax), %rax
	leaq      (%r15,%r8), %r14
	addq      %rax, %r15
.L00000919.startup:
	cmpq      %r14, %r15
	je        .L00000BB0.startup
.L00000922.startup:
	movq      %r15, %rax
	movq      %r14, 80(%rsp)
	subq      %r14, %rax
	movswq    %ax, %r15
	movw      %ax, 88(%rsp)
	cwtl      
	addq      %r14, %r15
	cmpl      maximum_word_length(%rip), %eax
	jle       .L00000948.startup
.L00000942.startup:
	movl      %eax, maximum_word_length(%rip)
.L00000948.startup:
	movzbl    input_reference(%rip), %eax
	testb     %al, %al
	movb      %al, 16(%rsp)
	je        .L000009E8.startup
.L0000095B.startup:
	cmpq      %rbx, %r14
	jbe       .L000009DF.startup
.L00000960.startup:
	movl      total_line_count(%rip), %r12d
	movl      24(%rsp), %eax
	movl      %r12d, %edi
	movq      %rbp, %r12
	movl      %edi, %ebp
	jmp       .L00000981.startup
.L00000975.startup:
	.p2align 4,,10
	.p2align 3
.L00000978.startup:
	addq      $1, %rbx
.L0000097C.startup:
	cmpq      %rbx, %r14
	jbe       .L000009D0.startup
.L00000981.startup:
	cmpb      $10, (%rbx)
	jne       .L00000978.startup
.L00000986.startup:
	movq      8(%rsp), %rax
	leaq      1(%rbx), %r12
	addl      $1, %ebp
	movq      8(%rax), %rbx
	cmpq      %rbx, %r12
	jae       .L00000C6D.startup
.L0000099F.startup:
	call      __ctype_b_loc
.L000009A4.startup:
	movq      (%rax), %rcx
	movq      %r12, %rax
	jmp       .L000009B9.startup
.L000009AC.startup:
	.p2align 4,,10
	.p2align 3
.L000009B0.startup:
	addq      $1, %rax
	cmpq      %rbx, %rax
	je        .L000009C6.startup
.L000009B9.startup:
	movzbl    (%rax), %edx
	testb     $32, 1(%rcx,%rdx,2)
	je        .L000009B0.startup
.L000009C3.startup:
	movq      %rax, %rbx
.L000009C6.startup:
	movl      %ebx, %eax
	subl      %r12d, %eax
	cmpq      %rbx, %r14
	ja        .L00000981.startup
.L000009D0.startup:
	movl      %eax, 24(%rsp)
	movl      %ebp, %eax
	movq      %r12, %rbp
	movl      %eax, total_line_count(%rip)
.L000009DF.startup:
	cmpq      %rbx, %r14
	jb        .L000008C0.startup
.L000009E8.startup:
	cmpq      $0, ignore_file(%rip)
	je        .L00000A12.startup
.L000009F2.startup:
	movq      ignore_table+16(%rip), %rdx
	movq      ignore_table(%rip), %rsi
	leaq      80(%rsp), %rdi
	call      search_table.isra.0
.L00000A0A.startup:
	testl     %eax, %eax
	jne       .L000008C0.startup
.L00000A12.startup:
	cmpq      $0, only_file(%rip)
	je        .L00000A3C.startup
.L00000A1C.startup:
	movq      only_table+16(%rip), %rdx
	movq      only_table(%rip), %rsi
	leaq      80(%rsp), %rdi
	call      search_table.isra.0
.L00000A34.startup:
	testl     %eax, %eax
	je        .L000008C0.startup
.L00000A3C.startup:
	movq      number_of_occurs(%rip), %rdi
	cmpq      occurs_alloc(%rip), %rdi
	movq      occurs_table(%rip), %rax
	je        .L00000C1F.startup
.L00000A57.startup:
	movq      %rdi, %rsi
	salq      $5, %rsi
	addq      %rax, %rsi
	cmpb      $0, auto_reference(%rip)
	je        .L00000BEF.startup
.L00000A6E.startup:
	cmpq      %rbx, %r14
	movl      total_line_count(%rip), %eax
	jbe       .L00000B07.startup
.L00000A7D.startup:
	movq      %r13, 48(%rsp)
	movq      %r14, %r12
	movq      %rdi, 56(%rsp)
	movq      %rsi, 64(%rsp)
	movl      %eax, %r13d
	jmp       .L00000AA1.startup
.L00000A94.startup:
	.p2align 4,,10
	.p2align 3
.L00000A98.startup:
	addq      $1, %rbx
.L00000A9C.startup:
	cmpq      %rbx, %r12
	jbe       .L00000AEB.startup
.L00000AA1.startup:
	cmpb      $10, (%rbx)
	jne       .L00000A98.startup
.L00000AA6.startup:
	movq      8(%rsp), %rax
	leaq      1(%rbx), %rbp
	addl      $1, %r13d
	movq      8(%rax), %r14
	cmpq      %r14, %rbp
	jae       .L00000D05.startup
.L00000AC0.startup:
	call      __ctype_b_loc
.L00000AC5.startup:
	movq      %rbp, %rbx
	movq      (%rax), %rcx
	jmp       .L00000AD9.startup
.L00000ACD.startup:
	.p2align 4,,10
	.p2align 3
.L00000AD0.startup:
	addq      $1, %rbx
	cmpq      %r14, %rbx
	je        .L00000AE3.startup
.L00000AD9.startup:
	movzbl    (%rbx), %eax
	testb     $32, 1(%rcx,%rax,2)
	je        .L00000AD0.startup
.L00000AE3.startup:
	cmpq      %rbx, %r12
	movl      %r13d, %eax
	ja        .L00000AA1.startup
.L00000AEB.startup:
	movl      %r13d, %r9d
	movq      56(%rsp), %rdi
	movq      64(%rsp), %rsi
	movq      48(%rsp), %r13
	movq      %r12, %r14
	movl      %r9d, total_line_count(%rip)
.L00000B07.startup:
	movl      %eax, 20(%rsi)
.L00000B0A.startup:
	cmpq      32(%rsp), %rbp
	jne       .L00000B1C.startup
.L00000B11.startup:
	cmpb      $0, 16(%rsp)
	jne       .L00000C77.startup
.L00000B1C.startup:
	movq      80(%rsp), %rax
	movq      88(%rsp), %rdx
	addq      $1, %rdi
	movq      %rdi, number_of_occurs(%rip)
	movq      %rax, (%rsi)
	movq      32(%rsp), %rax
	movq      %rdx, 8(%rsi)
	subq      %r14, %rax
	movw      %ax, 16(%rsi)
	movq      %r13, %rax
	subq      %r14, %rax
	cmpq      $0, word_regex(%rip)
	movw      %ax, 18(%rsi)
	movq      40(%rsp), %rax
	movq      %rax, 24(%rsi)
	jne       .L000008CE.startup
.L00000B65.startup:
	cmpq      %r13, %r15
	jae       .L00000D10.startup
.L00000B6E.startup:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L00000B8D.startup
.L00000B7B.startup:
	jmp       .L00000CFD.startup
.L00000B80.startup:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	jne       .L00000BC0.startup
.L00000B8D.startup:
	addq      $1, %r15
	cmpq      %r13, %r15
	jne       .L00000B80.startup
.L00000B96.startup:
	movq      8(%rsp), %rax
	movq      72(%rsp), %r15
	movq      8(%rax), %r12
	jmp       .L00000824.startup
.L00000BA9.startup:
	.p2align 4
.L00000BB0.startup:
	addq      $1, %r15
	jmp       .L000008C0.startup
.L00000BB9.startup:
	.p2align 4
.L00000BC0.startup:
	movq      %r15, %r14
	jne       .L00000BE1.startup
.L00000BC5.startup:
	jmp       .L00000919.startup
.L00000BCA.startup:
	.p2align 4,,10
	.p2align 3
.L00000BD0.startup:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L00000919.startup
.L00000BE1.startup:
	addq      $1, %r15
	cmpq      %r13, %r15
	jb        .L00000BD0.startup
.L00000BEA.startup:
	jmp       .L00000919.startup
.L00000BEF.startup:
	cmpb      $0, 16(%rsp)
	je        .L00000B1C.startup
.L00000BFA.startup:
	movq      %rbp, %rax
	subq      %r14, %rax
	cwtl      
	movl      %eax, 20(%rsi)
	movl      24(%rsp), %eax
	cmpl      %eax, reference_max_width(%rip)
	jge       .L00000B0A.startup
.L00000C14.startup:
	movl      %eax, reference_max_width(%rip)
	jmp       .L00000B0A.startup
.L00000C1F.startup:
	movq      $288230376151711743, %rax
	cmpq      %rax, %rdi
	ja        .L00001F87.startup
.L00000C32.startup:
	leaq      1(%rdi,%rdi), %rsi
	movq      occurs_table(%rip), %rdi
	movq      %rsi, occurs_alloc(%rip)
	salq      $5, %rsi
	call      xrealloc
.L00000C4E.startup:
	movzbl    input_reference(%rip), %esi
	movq      %rax, occurs_table(%rip)
	movq      number_of_occurs(%rip), %rdi
	movb      %sil, 16(%rsp)
	jmp       .L00000A57.startup
.L00000C6D.startup:
	movq      %r12, %rbx
	xorl      %eax, %eax
	jmp       .L0000097C.startup
.L00000C77.startup:
	movq      32(%rsp), %r12
	cmpq      %r13, %r12
	jae       .L00000B1C.startup
.L00000C85.startup:
	movq      %rsi, 32(%rsp)
	movq      %rdi, 16(%rsp)
	call      __ctype_b_loc
.L00000C94.startup:
	movq      16(%rsp), %rdi
	movq      (%rax), %rax
	movq      %r12, %rdx
	movq      32(%rsp), %rsi
	jmp       .L00000CB9.startup
.L00000CA6.startup:
	.p2align 4
.L00000CB0.startup:
	addq      $1, %rdx
	cmpq      %r13, %rdx
	je        .L00000CF3.startup
.L00000CB9.startup:
	movzbl    (%rdx), %ecx
	testb     $32, 1(%rax,%rcx,2)
	je        .L00000CB0.startup
.L00000CC3.startup:
	movq      %rdx, %rcx
	movq      %rdx, 32(%rsp)
	movq      32(%rsp), %rdx
	cmpq      %rcx, %r13
	ja        .L00000CE9.startup
.L00000CD5.startup:
	jmp       .L00000B1C.startup
.L00000CDA.startup:
	.p2align 4,,10
	.p2align 3
.L00000CE0.startup:
	addq      $1, %rdx
	cmpq      %r13, %rdx
	je        .L00000CF3.startup
.L00000CE9.startup:
	movzbl    (%rdx), %ecx
	testb     $32, 1(%rax,%rcx,2)
	jne       .L00000CE0.startup
.L00000CF3.startup:
	movq      %rdx, 32(%rsp)
	jmp       .L00000B1C.startup
.L00000CFD.startup:
	movq      %r15, %r14
	jmp       .L00000BE1.startup
.L00000D05.startup:
	movl      %r13d, %eax
	movq      %rbp, %rbx
	jmp       .L00000A9C.startup
.L00000D10.startup:
	je        .L00000B96.startup
.L00000D16.startup:
	movq      %r15, %r14
	jmp       .L00000919.startup
.L00000D1E.startup:
	call      matcher_error
.L00000D23.startup:
	movq      break_file(%rip), %rdi
	testq     %rdi, %rdi
	jne       .L00000639.startup
.L00000D33.startup:
	cmpb      $0, gnu_extensions(%rip)
	je        .L00001EDD.startup
.L00000D40.startup:
	call      __ctype_b_loc
.L00000D45.startup:
	xorl      %ecx, %ecx
.L00000D47.startup:
	movq      (%rax), %rdx
	movzwl    (%rdx,%rcx,2), %edx
	addq      $1, %rcx
	shrw      $10, %dx
	andl      $1, %edx
	movb      %dl, word_fastmap-1(%rcx)
	cmpq      $256, %rcx
	jne       .L00000D47.startup
.L00000D68.startup:
	jmp       .L000006A5.startup
.L00000D6D.startup:
	movq      input_file_name(%rip), %rcx
	movq      %rdx, (%rcx)
	jmp       .L000003A5.startup
.L00000D7C.startup:
	movl      total_line_count(%rip), %eax
	movq      40(%rsp), %rdi
	movq      file_line_count(%rip), %rdx
	addl      $1, %eax
	movl      %eax, (%rdx,%rdi,4)
	addq      $1, %rdi
	movl      %eax, total_line_count(%rip)
	movq      %rdi, 40(%rsp)
	jmp       .L0000072D.startup
.L00000DA8.startup:
	movq      %r15, %rbx
.L00000DAB.startup:
	movl      %ebx, %eax
	subl      %r15d, %eax
	movl      %eax, 24(%rsp)
	jmp       .L00000821.startup
.L00000DB9.startup:
	movq      number_of_occurs(%rip), %rsi
	testq     %rsi, %rsi
	jne       .L00001F8C.startup
.L00000DC9.startup:
	cmpb      $0, auto_reference(%rip)
	je        .L00000EAC.startup
.L00000DD6.startup:
	movl      $0, reference_max_width(%rip)
	xorl      %ebx, %ebx
	leaq      80(%rsp), %r12
	orq       $-1, %rbp
	jmp       .L00000E76.startup
.L00000DF0.startup:
	movq      file_line_count(%rip), %rax
	testl     %ebx, %ebx
	leaq      0(,%rbx,4), %rdx
	movl      (%rax,%rbx,4), %edi
	leal      1(%rdi), %r8d
	jle       .L00000E0F.startup
.L00000E0A.startup:
	subl      -4(%rax,%rdx), %r8d
.L00000E0F.startup:
	movl      $.LC000001C3.str1.1, %ecx
	movl      $12, %edx
	movq      %r12, %rdi
	xorl      %eax, %eax
	movl      $1, %esi
	call      __sprintf_chk
.L00000E28.startup:
	xorl      %eax, %eax
	movq      %r12, %rdi
	movq      %rbp, %rcx
	repnz scasb     
	notq      %rcx
	movq      %rcx, %rdx
	movq      input_file_name(%rip), %rcx
	subq      $1, %rdx
	movq      (%rcx,%rbx,8), %rdi
	testq     %rdi, %rdi
	je        .L00001FA7.startup
.L00000E50.startup:
	movq      %rbp, %rcx
	repnz scasb     
	movq      %rcx, %rax
	notq      %rax
	leal      -1(%rax,%rdx), %eax
.L00000E5F.startup:
	cmpl      %eax, reference_max_width(%rip)
	cmovge    reference_max_width(%rip), %eax
	addq      $1, %rbx
	movl      %eax, reference_max_width(%rip)
.L00000E76.startup:
	cmpl      number_input_files(%rip), %ebx
	jl        .L00000DF0.startup
.L00000E82.startup:
	movl      reference_max_width(%rip), %eax
	addl      $1, %eax
	movl      %eax, reference_max_width(%rip)
	cltq      
	leaq      1(%rax), %rdi
	call      xmalloc
.L00000E9C.startup:
	cmpb      $0, auto_reference(%rip)
	movq      %rax, reference(%rip)
	jne       .L00000EB5.startup
.L00000EAC.startup:
	cmpb      $0, input_reference(%rip)
	je        .L00000ED0.startup
.L00000EB5.startup:
	cmpb      $0, right_reference(%rip)
	jne       .L00000ED0.startup
.L00000EBE.startup:
	movl      gap_size(%rip), %eax
	addl      reference_max_width(%rip), %eax
	subl      %eax, line_width(%rip)
.L00000ED0.startup:
	movl      line_width(%rip), %eax
	movl      $2, %ecx
	movq      truncation_string(%rip), %rdi
	cltd      
	idivl     %ecx
	movl      %eax, %edx
	subl      gap_size(%rip), %edx
	testq     %rdi, %rdi
	movl      %eax, %r8d
	movl      %eax, half_line_width(%rip)
	movl      %eax, keyafter_max_width(%rip)
	movl      %edx, before_max_width(%rip)
	je        .L00001ECD.startup
.L00000F0B.startup:
	cmpb      $0, (%rdi)
	je        .L00001ECD.startup
.L00000F14.startup:
	xorl      %eax, %eax
	orq       $-1, %rcx
	repnz scasb     
	movq      %rcx, %rsi
	notq      %rsi
	movq      %rsi, %rcx
	subq      $1, %rcx
	movl      %ecx, truncation_string_length(%rip)
.L00000F2F.startup:
	cmpb      $0, gnu_extensions(%rip)
	je        .L00001F38.startup
.L00000F3C.startup:
	imull     $-2, truncation_string_length(%rip), %eax
	movl      $0, %ecx
	addl      %eax, %edx
	cmovs     %ecx, %edx
	addl      %r8d, %eax
	movl      %edx, before_max_width(%rip)
	movl      %eax, keyafter_max_width(%rip)
.L00000F5C.startup:
	call      __ctype_b_loc
.L00000F61.startup:
	movq      (%rax), %rcx
	movq      %rax, %r14
	xorl      %edx, %edx
.L00000F69.startup:
	movzwl    (%rcx,%rdx,2), %eax
	addq      $1, %rdx
	shrw      $13, %ax
	andl      $1, %eax
	movb      %al, edited_flag-1(%rdx)
	cmpq      $256, %rdx
	jne       .L00000F69.startup
.L00000F87.startup:
	movl      output_format(%rip), %eax
	movb      $1, edited_flag+12(%rip)
	cmpl      $2, %eax
	je        .L00001F52.startup
.L00000F9D.startup:
	cmpl      $3, %eax
	jne       .L00000FD7.startup
.L00000FA2.startup:
	movl      $.LC00000121.str1.1, %edx
	jmp       .L00000FB4.startup
.L00000FA9.startup:
	movb      $1, edited_flag(%rax)
	addq      $1, %rdx
.L00000FB4.startup:
	movzbl    (%rdx), %eax
	testb     %al, %al
	jne       .L00000FA9.startup
.L00000FBB.startup:
	xorl      %eax, %eax
.L00000FBD.startup:
	cmpb      $0, diacrit_diac+128(%rax)
	setne     edited_flag+128(%rax)
	addq      $1, %rax
	cmpq      $128, %rax
	jne       .L00000FBD.startup
.L00000FD7.startup:
	movq      occurs_table(%rip), %r13
	movq      $0, tail(%rip)
	movl      $1, %r12d
	movq      $0, tail+8(%rip)
	movl      $0, tail_truncation(%rip)
	movq      $0, head(%rip)
	movq      $0, head+8(%rip)
	movl      $0, head_truncation(%rip)
	movq      $0, 24(%rsp)
.L0000102D.startup:
	movq      24(%rsp), %rax
	cmpq      number_of_occurs(%rip), %rax
	jae       .L00001879.startup
.L0000103F.startup:
	movswq    16(%r13), %rdx
	movq      (%r13), %rax
	movswq    8(%r13), %rbx
	movswq    18(%r13), %rbp
	movq      %rax, keyafter(%rip)
	leaq      (%rax,%rdx), %rdi
	movq      24(%r13), %rdx
	addq      %rax, %rbx
	addq      %rax, %rbp
	movq      %rdi, 32(%rsp)
	movq      %rbx, keyafter+8(%rip)
	salq      $4, %rdx
	addq      text_buffers(%rip), %rdx
	cmpq      %rbp, %rbx
	movq      (%rdx), %rdi
	movq      8(%rdx), %r15
	movl      keyafter_max_width(%rip), %edx
	movq      %rdi, 8(%rsp)
	jae       .L00001145.startup
.L00001099.startup:
	movslq    keyafter_max_width(%rip), %rcx
	movq      %rax, %rsi
	movq      %rcx, %rdx
	addq      %rax, %rcx
	cmpq      %rcx, %rbx
	jbe       .L00001106.startup
.L000010AE.startup:
	jmp       .L0000115E.startup
.L000010B3.startup:
	.p2align 4,,10
	.p2align 3
.L000010B8.startup:
	movq      %rbp, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	subq      %rbx, %rdx
	movq      %rbx, %rsi
	movl      $word_regex+8, %edi
	call      re_match
.L000010D0.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L000010D9.startup:
	movslq    %eax, %rdx
	cmpl      $-1, %eax
	movq      %rdx, %rax
	movl      keyafter_max_width(%rip), %edx
	cmove     %r12, %rax
	addq      %rax, %rbx
.L000010EF.startup:
	cmpq      %rbp, %rbx
	jae       .L00001145.startup
.L000010F4.startup:
	movq      keyafter(%rip), %rsi
	movslq    %edx, %rax
	addq      %rsi, %rax
	cmpq      %rax, %rbx
	ja        .L0000115E.startup
.L00001106.startup:
	cmpq      $0, word_regex(%rip)
	movq      %rbx, keyafter+8(%rip)
	jne       .L000010B8.startup
.L00001117.startup:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L0000194F.startup
.L00001127.startup:
	cmpq      %rbx, %rbp
	ja        .L0000113C.startup
.L0000112C.startup:
	jmp       .L00001145.startup
.L0000112E.startup:
	.p2align 4,,10
	.p2align 3
.L00001130.startup:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L000010F4.startup
.L0000113C.startup:
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L00001130.startup
.L00001145.startup:
	movq      keyafter(%rip), %rsi
	movslq    %edx, %rax
	addq      %rsi, %rax
	cmpq      %rax, %rbx
	ja        .L0000115E.startup
.L00001157.startup:
	movq      %rbx, keyafter+8(%rip)
.L0000115E.startup:
	cmpq      $0, truncation_string(%rip)
	je        .L000019F5.startup
.L0000116C.startup:
	xorl      %eax, %eax
	cmpq      keyafter+8(%rip), %rbp
	seta      %al
.L00001178.startup:
	movq      keyafter+8(%rip), %rcx
	movl      %eax, keyafter_truncation(%rip)
	cmpq      %rcx, %rsi
	jae       .L000011C1.startup
.L0000118A.startup:
	movq      (%r14), %r9
	leaq      -1(%rcx), %rdx
	leaq      -1(%rsi), %r8
	jmp       .L000011AC.startup
.L00001197.startup:
	.p2align 4
.L000011A0.startup:
	subq      $1, %rdx
	movq      %rdi, %rcx
	cmpq      %r8, %rdx
	je        .L000011BA.startup
.L000011AC.startup:
	movzbl    (%rdx), %eax
	movq      %rdx, %rdi
	testb     $32, 1(%r9,%rax,2)
	jne       .L000011A0.startup
.L000011BA.startup:
	movq      %rcx, keyafter+8(%rip)
.L000011C1.startup:
	movswq    16(%r13), %rcx
	movl      maximum_word_length(%rip), %eax
	addl      half_line_width(%rip), %eax
	movq      %rcx, %rdx
	negl      %ecx
	cmpl      %eax, %ecx
	jle       .L000019EC.startup
.L000011DF.startup:
	cltq      
	movq      %rsi, %rbx
	subq      %rax, %rbx
	cmpq      $0, word_regex(%rip)
	je        .L00001E2E.startup
.L000011F5.startup:
	subq      %rbx, %rsi
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	movq      %rsi, %rdx
	movl      $word_regex+8, %edi
	movq      %rbx, %rsi
	call      re_match
.L0000120D.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L00001216.startup:
	cmpl      $-1, %eax
	je        .L00001E24.startup
.L0000121F.startup:
	cltq      
.L00001221.startup:
	movq      keyafter(%rip), %rsi
	addq      %rax, %rbx
.L0000122B.startup:
	cmpq      %rsi, %rbx
	movq      %rbx, before(%rip)
	movq      %rsi, %rax
	movq      %rsi, before+8(%rip)
	jae       .L00001271.startup
.L00001241.startup:
	movq      (%r14), %r8
	leaq      -1(%rsi), %rdx
	leaq      -1(%rbx), %rdi
	jmp       .L0000125C.startup
.L0000124E.startup:
	.p2align 4,,10
	.p2align 3
.L00001250.startup:
	subq      $1, %rdx
	movq      %rsi, %rax
	cmpq      %rdi, %rdx
	je        .L0000126A.startup
.L0000125C.startup:
	movzbl    (%rdx), %ecx
	movq      %rdx, %rsi
	testb     $32, 1(%r8,%rcx,2)
	jne       .L00001250.startup
.L0000126A.startup:
	movq      %rax, before+8(%rip)
.L00001271.startup:
	movl      before_max_width(%rip), %ecx
	movq      before+8(%rip), %rdx
	movq      %rbx, %rsi
.L00001281.startup:
	movslq    %ecx, %rax
	addq      %rsi, %rax
	cmpq      %rax, %rdx
	jbe       .L000012E5.startup
.L0000128C.startup:
	cmpq      $0, word_regex(%rip)
	je        .L0000188A.startup
.L0000129A.startup:
	subq      %rsi, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	movl      $word_regex+8, %edi
	call      re_match
.L000012AC.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L000012B5.startup:
	cmpl      $-1, %eax
	movslq    %eax, %rsi
	movl      before_max_width(%rip), %ecx
	cmove     %r12, %rsi
	addq      before(%rip), %rsi
	movq      before+8(%rip), %rdx
	movslq    %ecx, %rax
	addq      %rsi, %rax
	movq      %rsi, before(%rip)
	cmpq      %rax, %rdx
	ja        .L0000128C.startup
.L000012E5.startup:
	cmpq      $0, truncation_string(%rip)
	je        .L000019FC.startup
.L000012F3.startup:
	cmpq      %rsi, 8(%rsp)
	jae       .L00001316.startup
.L000012FA.startup:
	movq      (%r14), %rdi
	jmp       .L0000130B.startup
.L000012FF.startup:
	.p2align 4,,10
	.p2align 3
.L00001300.startup:
	subq      $1, %rsi
	cmpq      8(%rsp), %rsi
	je        .L00001316.startup
.L0000130B.startup:
	movzbl    -1(%rsi), %eax
	testb     $32, 1(%rdi,%rax,2)
	jne       .L00001300.startup
.L00001316.startup:
	xorl      %eax, %eax
	cmpq      %rsi, 32(%rsp)
	setb      %al
	movl      %eax, before_truncation(%rip)
.L00001326.startup:
	movq      before(%rip), %rax
	cmpq      %rax, %r15
	jbe       .L0000135A.startup
.L00001332.startup:
	movq      (%r14), %rdi
	jmp       .L00001349.startup
.L00001337.startup:
	.p2align 4
.L00001340.startup:
	addq      $1, %rax
	cmpq      %r15, %rax
	je        .L00001353.startup
.L00001349.startup:
	movzbl    (%rax), %esi
	testb     $32, 1(%rdi,%rsi,2)
	jne       .L00001340.startup
.L00001353.startup:
	movq      %rax, before(%rip)
.L0000135A.startup:
	subl      gap_size(%rip), %ecx
	subq      %rdx, %rax
	addl      %ecx, %eax
	testl     %eax, %eax
	jle       .L00001A0B.startup
.L0000136D.startup:
	movq      keyafter+8(%rip), %r9
	cmpq      %r9, %r15
	movq      %r9, tail(%rip)
	jbe       .L000013A0.startup
.L00001380.startup:
	movq      (%r14), %rcx
	jmp       .L0000138E.startup
.L00001385.startup:
	addq      $1, %r9
	cmpq      %r15, %r9
	je        .L00001399.startup
.L0000138E.startup:
	movzbl    (%r9), %edx
	testb     $32, 1(%rcx,%rdx,2)
	jne       .L00001385.startup
.L00001399.startup:
	movq      %r9, tail(%rip)
.L000013A0.startup:
	cmpq      %r9, %rbp
	movq      %r9, tail+8(%rip)
	movslq    %eax, %r15
	movq      tail(%rip), %rdx
	ja        .L00001407.startup
.L000013B6.startup:
	jmp       .L00001456.startup
.L000013BB.startup:
	.p2align 4,,10
	.p2align 3
.L000013C0.startup:
	movq      %rbp, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	subq      %r9, %rdx
	movq      %r9, %rsi
	movl      $word_regex+8, %edi
	movq      %r9, 16(%rsp)
	call      re_match
.L000013DD.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L000013E6.startup:
	movslq    %eax, %rdx
	movq      16(%rsp), %r9
	cmpl      $-1, %eax
	movq      %rdx, %rax
	movq      tail(%rip), %rdx
	cmove     %r12, %rax
	addq      %rax, %r9
.L00001402.startup:
	cmpq      %rbp, %r9
	jae       .L00001456.startup
.L00001407.startup:
	leaq      (%rdx,%r15), %rax
	cmpq      %rax, %r9
	jae       .L00001466.startup
.L00001410.startup:
	cmpq      $0, word_regex(%rip)
	movq      %r9, tail+8(%rip)
	jne       .L000013C0.startup
.L00001421.startup:
	movzbl    (%r9), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L00001958.startup
.L00001432.startup:
	cmpq      %r9, %rbp
	ja        .L0000144D.startup
.L00001437.startup:
	jmp       .L00001456.startup
.L00001439.startup:
	.p2align 4
.L00001440.startup:
	movzbl    (%r9), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L00001407.startup
.L0000144D.startup:
	addq      $1, %r9
	cmpq      %rbp, %r9
	jne       .L00001440.startup
.L00001456.startup:
	leaq      (%rdx,%r15), %rax
	cmpq      %rax, %r9
	jae       .L00001466.startup
.L0000145F.startup:
	movq      %r9, tail+8(%rip)
.L00001466.startup:
	movq      tail+8(%rip), %rcx
	cmpq      %rcx, %rdx
	jae       .L0000198B.startup
.L00001476.startup:
	cmpq      %rcx, %rbp
	movl      $0, keyafter_truncation(%rip)
	seta      %al
	xorl      %esi, %esi
	cmpq      $0, truncation_string(%rip)
	setne     %sil
	andl      %esi, %eax
	movl      %eax, tail_truncation(%rip)
.L0000149C.startup:
	cmpq      %rcx, %rdx
	jae       .L000014CF.startup
.L000014A1.startup:
	movq      (%r14), %r8
	leaq      -1(%rcx), %rax
	subq      $1, %rdx
	jmp       .L000014BA.startup
.L000014AE.startup:
	subq      $1, %rax
	movq      %rdi, %rcx
	cmpq      %rdx, %rax
	je        .L000014C8.startup
.L000014BA.startup:
	movzbl    (%rax), %esi
	movq      %rax, %rdi
	testb     $32, 1(%r8,%rsi,2)
	jne       .L000014AE.startup
.L000014C8.startup:
	movq      %rcx, tail+8(%rip)
.L000014CF.startup:
	movl      keyafter_max_width(%rip), %edx
	movq      keyafter(%rip), %r15
	subl      gap_size(%rip), %edx
	subq      keyafter+8(%rip), %r15
	addl      %r15d, %edx
	testl     %edx, %edx
	jle       .L00001A30.startup
.L000014F4.startup:
	movq      before(%rip), %rsi
	cmpq      %rsi, 8(%rsp)
	movq      %rsi, head+8(%rip)
	jae       .L0000153C.startup
.L00001509.startup:
	movq      8(%rsp), %rcx
	movq      (%r14), %r9
	leaq      -1(%rsi), %rax
	subq      $1, %rcx
	jmp       .L00001527.startup
.L0000151B.startup:
	subq      $1, %rax
	movq      %r8, %rsi
	cmpq      %rcx, %rax
	je        .L00001535.startup
.L00001527.startup:
	movzbl    (%rax), %edi
	movq      %rax, %r8
	testb     $32, 1(%r9,%rdi,2)
	jne       .L0000151B.startup
.L00001535.startup:
	movq      %rsi, head+8(%rip)
.L0000153C.startup:
	movslq    %edx, %r15
	movq      head+8(%rip), %rdx
	movq      %rbx, head(%rip)
	leaq      (%rbx,%r15), %rax
	movq      %rbx, %rsi
.L00001554.startup:
	cmpq      %rax, %rdx
	jbe       .L000015AA.startup
.L00001559.startup:
	cmpq      $0, word_regex(%rip)
	je        .L000018DB.startup
.L00001567.startup:
	subq      %rsi, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	movl      $word_regex+8, %edi
	call      re_match
.L00001579.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L00001582.startup:
	cmpl      $-1, %eax
	movslq    %eax, %rsi
	movq      head+8(%rip), %rdx
	cmove     %r12, %rsi
	addq      head(%rip), %rsi
	leaq      (%rsi,%r15), %rax
	movq      %rsi, head(%rip)
	cmpq      %rax, %rdx
	ja        .L00001559.startup
.L000015AA.startup:
	cmpq      %rdx, %rsi
	jae       .L00001970.startup
.L000015B3.startup:
	cmpq      $0, truncation_string(%rip)
	movl      $0, before_truncation(%rip)
	je        .L00002192.startup
.L000015CB.startup:
	xorl      %eax, %eax
	cmpq      %rsi, 32(%rsp)
	setb      %al
.L000015D5.startup:
	movl      %eax, head_truncation(%rip)
.L000015DB.startup:
	cmpq      %rdx, %rsi
	jae       .L0000160D.startup
.L000015E0.startup:
	movq      (%r14), %rdi
	movq      head(%rip), %rcx
	jmp       .L000015FC.startup
.L000015EC.startup:
	addq      $1, %rsi
	cmpq      %rdx, %rsi
	movq      %rsi, %rcx
	je        .L0000197F.startup
.L000015FC.startup:
	movzbl    (%rsi), %eax
	testb     $32, 1(%rdi,%rax,2)
	jne       .L000015EC.startup
.L00001606.startup:
	movq      %rcx, head(%rip)
.L0000160D.startup:
	cmpb      $0, auto_reference(%rip)
	je        .L0000199A.startup
.L0000161A.startup:
	movq      24(%r13), %rax
	movq      input_file_name(%rip), %rdx
	movl      20(%r13), %edi
	movq      (%rdx,%rax,8), %r8
	movl      $.LC0000001A.str1.1, %edx
	leal      1(%rdi), %r9d
	testq     %r8, %r8
	cmove     %rdx, %r8
	testq     %rax, %rax
	je        .L0000164E.startup
.L00001642.startup:
	movq      file_line_count(%rip), %rdx
	subl      -4(%rdx,%rax,4), %r9d
.L0000164E.startup:
	movq      reference(%rip), %rdi
	movl      $.LC000001C6.str1.1, %ecx
	orq       $-1, %rdx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __sprintf_chk
.L0000166A.startup:
	movq      reference(%rip), %rdx
	xorl      %eax, %eax
	orq       $-1, %rcx
	movq      %rdx, %rdi
	repnz scasb     
	movq      %rcx, %rax
	notq      %rax
	leaq      -1(%rdx,%rax), %rax
	movq      %rax, reference+8(%rip)
.L0000168E.startup:
	movl      output_format(%rip), %eax
	cmpl      $2, %eax
	je        .L00001C62.startup
.L0000169D.startup:
	jb        .L00001A55.startup
.L000016A3.startup:
	cmpl      $3, %eax
	jne       .L0000186A.startup
.L000016AC.startup:
	movq      macro_name(%rip), %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	movl      $.LC000001D5.str1.1, %esi
	call      __printf_chk
.L000016C4.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00002183.startup
.L000016D9.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $123, (%rax)
.L000016E4.startup:
	movq      tail(%rip), %rdi
	movq      tail+8(%rip), %rsi
	call      print_field
.L000016F7.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001DA.str1.1, %edi
	call      fputs_unlocked
.L00001708.startup:
	movq      before(%rip), %rdi
	movq      before+8(%rip), %rsi
	call      print_field
.L0000171B.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001DA.str1.1, %edi
	call      fputs_unlocked
.L0000172C.startup:
	cmpq      $0, word_regex(%rip)
	movq      keyafter(%rip), %r15
	movq      keyafter+8(%rip), %rbx
	movq      %r15, %rbp
	je        .L0000213F.startup
.L0000174B.startup:
	movq      %rbx, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	subq      %r15, %rdx
	movq      %r15, %rsi
	movl      $word_regex+8, %edi
	call      re_match
.L00001763.startup:
	cmpl      $-2, %eax
	je        .L00000D1E.startup
.L0000176C.startup:
	cmpl      $-1, %eax
	je        .L00002135.startup
.L00001775.startup:
	cltq      
.L00001777.startup:
	addq      %rax, %r15
.L0000177A.startup:
	movq      %rbp, %rdi
	movq      %r15, %rsi
	call      print_field
.L00001785.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001DA.str1.1, %edi
	call      fputs_unlocked
.L00001796.startup:
	movq      %r15, %rdi
	movq      %rbx, %rsi
	call      print_field
.L000017A1.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001DA.str1.1, %edi
	call      fputs_unlocked
.L000017B2.startup:
	movq      head(%rip), %rdi
	movq      head+8(%rip), %rsi
	call      print_field
.L000017C5.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00001E61.startup
.L000017DA.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $125, (%rax)
.L000017E5.startup:
	cmpb      $0, auto_reference(%rip)
	jne       .L000017F7.startup
.L000017EE.startup:
	cmpb      $0, input_reference(%rip)
	je        .L0000184A.startup
.L000017F7.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00002126.startup
.L0000180C.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $123, (%rax)
.L00001817.startup:
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	call      print_field
.L0000182A.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00002117.startup
.L0000183F.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $125, (%rax)
.L0000184A.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00002174.startup
.L0000185F.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $10, (%rax)
.L0000186A.startup:
	addq      $32, %r13
	addq      $1, 24(%rsp)
	jmp       .L0000102D.startup
.L00001879.startup:
	addq      $104, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000188A.startup:
	movzbl    (%rsi), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L0000193F.startup
.L0000189A.startup:
	cmpq      %rsi, %rdx
	jbe       .L00001281.startup
.L000018A3.startup:
	addq      $1, %rsi
	jmp       .L000018C4.startup
.L000018A9.startup:
	.p2align 4
.L000018B0.startup:
	movzbl    (%rax), %edi
	addq      $1, %rsi
	cmpb      $0, word_fastmap(%rdi)
	je        .L00001961.startup
.L000018C4.startup:
	cmpq      %rdx, %rsi
	movq      %rsi, %rax
	jne       .L000018B0.startup
.L000018CC.startup:
	movq      %rdx, before(%rip)
	movq      %rdx, %rsi
	jmp       .L00001281.startup
.L000018DB.startup:
	movzbl    (%rsi), %ecx
	cmpb      $0, word_fastmap(%rcx)
	je        .L0000192B.startup
.L000018E7.startup:
	cmpq      %rsi, %rdx
	jbe       .L00001554.startup
.L000018F0.startup:
	leaq      1(%rsi), %rax
	jmp       .L00001910.startup
.L000018F6.startup:
	.p2align 4
.L00001900.startup:
	movzbl    (%rsi), %ecx
	addq      $1, %rax
	cmpb      $0, word_fastmap(%rcx)
	je        .L0000192F.startup
.L00001910.startup:
	cmpq      %rdx, %rax
	movq      %rax, %rsi
	jne       .L00001900.startup
.L00001918.startup:
	movq      %rdx, %rsi
	movq      %rdx, head(%rip)
	leaq      (%rdx,%r15), %rax
	jmp       .L00001554.startup
.L0000192B.startup:
	addq      $1, %rsi
.L0000192F.startup:
	movq      %rsi, head(%rip)
	leaq      (%rsi,%r15), %rax
	jmp       .L00001554.startup
.L0000193F.startup:
	addq      $1, %rsi
	movq      %rsi, before(%rip)
	jmp       .L00001281.startup
.L0000194F.startup:
	addq      $1, %rbx
	jmp       .L000010EF.startup
.L00001958.startup:
	addq      $1, %r9
	jmp       .L00001402.startup
.L00001961.startup:
	movq      %rax, %rsi
	movq      %rax, before(%rip)
	jmp       .L00001281.startup
.L00001970.startup:
	movl      $0, head_truncation(%rip)
	jmp       .L000015DB.startup
.L0000197F.startup:
	movq      %rsi, head(%rip)
	jmp       .L0000160D.startup
.L0000198B.startup:
	movl      $0, tail_truncation(%rip)
	jmp       .L0000149C.startup
.L0000199A.startup:
	cmpb      $0, input_reference(%rip)
	je        .L0000168E.startup
.L000019A7.startup:
	movswq    20(%r13), %rax
	addq      keyafter(%rip), %rax
	movq      %rax, reference(%rip)
	movq      %rax, reference+8(%rip)
	jmp       .L000019D8.startup
.L000019C3.startup:
	movzbl    (%rdx), %esi
	movq      (%r14), %rcx
	addq      $1, %rax
	testb     $32, 1(%rcx,%rsi,2)
	jne       .L00001E08.startup
.L000019D8.startup:
	cmpq      %rax, %rbp
	movq      %rax, %rdx
	ja        .L000019C3.startup
.L000019E0.startup:
	movq      %rax, reference+8(%rip)
	jmp       .L0000168E.startup
.L000019EC.startup:
	leaq      (%rsi,%rdx), %rbx
	jmp       .L0000122B.startup
.L000019F5.startup:
	xorl      %eax, %eax
	jmp       .L00001178.startup
.L000019FC.startup:
	movl      $0, before_truncation(%rip)
	jmp       .L00001326.startup
.L00001A0B.startup:
	movq      $0, tail(%rip)
	movq      $0, tail+8(%rip)
	movl      $0, tail_truncation(%rip)
	jmp       .L000014CF.startup
.L00001A30.startup:
	movq      $0, head(%rip)
	movq      $0, head+8(%rip)
	movl      $0, head_truncation(%rip)
	jmp       .L0000160D.startup
.L00001A55.startup:
	cmpb      $0, right_reference(%rip)
	jne       .L00001AC1.startup
.L00001A5E.startup:
	cmpb      $0, auto_reference(%rip)
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	je        .L000020EC.startup
.L00001A79.startup:
	call      print_field
.L00001A7E.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L000020DD.startup
.L00001A93.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $58, (%rax)
.L00001A9E.startup:
	movl      gap_size(%rip), %edx
	movq      reference(%rip), %rax
	addl      reference_max_width(%rip), %edx
	subq      reference+8(%rip), %rax
	leal      -1(%rdx,%rax), %edi
	call      print_spaces
.L00001AC1.startup:
	movq      tail(%rip), %rdi
	cmpq      tail+8(%rip), %rdi
	jb        .L0000205B.startup
.L00001AD5.startup:
	movq      before(%rip), %rax
	movl      half_line_width(%rip), %edi
	subq      before+8(%rip), %rax
	subl      gap_size(%rip), %edi
	addl      %eax, %edi
	cmpl      $0, before_truncation(%rip)
	movl      $0, %eax
	cmovne    truncation_string_length(%rip), %eax
	subl      %eax, %edi
	call      print_spaces
.L00001B0B.startup:
	cmpl      $0, before_truncation(%rip)
	jne       .L00002043.startup
.L00001B18.startup:
	movq      before+8(%rip), %rsi
	movq      before(%rip), %rdi
	call      print_field
.L00001B2B.startup:
	movl      gap_size(%rip), %edi
	call      print_spaces
.L00001B36.startup:
	movq      keyafter(%rip), %rdi
	movq      keyafter+8(%rip), %rsi
	call      print_field
.L00001B49.startup:
	cmpl      $0, keyafter_truncation(%rip)
	jne       .L00001FED.startup
.L00001B56.startup:
	movq      head(%rip), %rdx
	movq      head+8(%rip), %rcx
	cmpq      %rcx, %rdx
	jae       .L00001C0C.startup
.L00001B6D.startup:
	movq      keyafter(%rip), %rax
	subq      keyafter+8(%rip), %rax
	xorl      %esi, %esi
	addl      half_line_width(%rip), %eax
.L00001B83.startup:
	subq      %rcx, %rdx
	subl      %esi, %eax
	addl      %edx, %eax
	cmpl      $0, head_truncation(%rip)
	movl      $0, %edx
	cmovne    truncation_string_length(%rip), %edx
	subl      %edx, %eax
	movl      %eax, %edi
	call      print_spaces
.L00001BA6.startup:
	cmpl      $0, head_truncation(%rip)
	jne       .L00001FD5.startup
.L00001BB3.startup:
	movq      head(%rip), %rdi
	movq      head+8(%rip), %rsi
	call      print_field
.L00001BC6.startup:
	cmpb      $0, auto_reference(%rip)
	jne       .L00001BDC.startup
.L00001BCF.startup:
	cmpb      $0, input_reference(%rip)
	je        .L0000184A.startup
.L00001BDC.startup:
	cmpb      $0, right_reference(%rip)
	je        .L0000184A.startup
.L00001BE9.startup:
	movl      gap_size(%rip), %edi
	call      print_spaces
.L00001BF4.startup:
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	call      print_field
.L00001C07.startup:
	jmp       .L0000184A.startup
.L00001C0C.startup:
	cmpb      $0, auto_reference(%rip)
	jne       .L00002199.startup
.L00001C19.startup:
	cmpb      $0, input_reference(%rip)
	je        .L0000184A.startup
.L00001C26.startup:
	cmpb      $0, right_reference(%rip)
	je        .L00001BDC.startup
.L00001C2F.startup:
	movq      keyafter(%rip), %rdi
	subq      keyafter+8(%rip), %rdi
	movl      $0, %eax
	addl      half_line_width(%rip), %edi
	cmpl      $0, keyafter_truncation(%rip)
	cmovne    truncation_string_length(%rip), %eax
	subl      %eax, %edi
	call      print_spaces
.L00001C5D.startup:
	jmp       .L00001BC6.startup
.L00001C62.startup:
	movq      macro_name(%rip), %rdx
	movl      $.LC000001CC.str1.1, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L00001C7A.startup:
	movq      tail(%rip), %rdi
	movq      tail+8(%rip), %rsi
	call      print_field
.L00001C8D.startup:
	cmpl      $0, tail_truncation(%rip)
	jne       .L00001FBD.startup
.L00001C9A.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00001FAE.startup
.L00001CAF.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L00001CBA.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001D2.str1.1, %edi
	call      fputs_unlocked
.L00001CCB.startup:
	cmpl      $0, before_truncation(%rip)
	jne       .L00001EB5.startup
.L00001CD8.startup:
	movq      before(%rip), %rdi
	movq      before+8(%rip), %rsi
	call      print_field
.L00001CEB.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00001EA6.startup
.L00001D00.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L00001D0B.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001D2.str1.1, %edi
	call      fputs_unlocked
.L00001D1C.startup:
	movq      keyafter(%rip), %rdi
	movq      keyafter+8(%rip), %rsi
	call      print_field
.L00001D2F.startup:
	cmpl      $0, keyafter_truncation(%rip)
	jne       .L00001E8E.startup
.L00001D3C.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00001E7F.startup
.L00001D51.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L00001D5C.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001D2.str1.1, %edi
	call      fputs_unlocked
.L00001D6D.startup:
	cmpl      $0, head_truncation(%rip)
	jne       .L00001F20.startup
.L00001D7A.startup:
	movq      head(%rip), %rdi
	movq      head+8(%rip), %rsi
	call      print_field
.L00001D8D.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00001F11.startup
.L00001DA2.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L00001DAD.startup:
	cmpb      $0, auto_reference(%rip)
	jne       .L00001DC3.startup
.L00001DB6.startup:
	cmpb      $0, input_reference(%rip)
	je        .L0000184A.startup
.L00001DC3.startup:
	movq      stdout(%rip), %rsi
	movl      $.LC000001D2.str1.1, %edi
	call      fputs_unlocked
.L00001DD4.startup:
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	call      print_field
.L00001DE7.startup:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L00001E70.startup
.L00001DF8.startup:
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
	jmp       .L0000184A.startup
.L00001E08.startup:
	movq      %rdx, reference+8(%rip)
	jmp       .L0000168E.startup
.L00001E14.startup:
	movq      $.LC000001C1.str1.1, context_regex(%rip)
	jmp       .L000007FE.startup
.L00001E24.startup:
	movl      $1, %eax
	jmp       .L00001221.startup
.L00001E2E.startup:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	jne       .L00001E57.startup
.L00001E3A.startup:
	addq      $1, %rbx
	jmp       .L0000122B.startup
.L00001E43.startup:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L0000122B.startup
.L00001E53.startup:
	addq      $1, %rbx
.L00001E57.startup:
	cmpq      %rbx, %rsi
	ja        .L00001E43.startup
.L00001E5C.startup:
	jmp       .L0000122B.startup
.L00001E61.startup:
	movl      $125, %esi
	call      __overflow
.L00001E6B.startup:
	jmp       .L000017E5.startup
.L00001E70.startup:
	movl      $34, %esi
	call      __overflow
.L00001E7A.startup:
	jmp       .L0000184A.startup
.L00001E7F.startup:
	movl      $34, %esi
	call      __overflow
.L00001E89.startup:
	jmp       .L00001D5C.startup
.L00001E8E.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00001EA1.startup:
	jmp       .L00001D3C.startup
.L00001EA6.startup:
	movl      $34, %esi
	call      __overflow
.L00001EB0.startup:
	jmp       .L00001D0B.startup
.L00001EB5.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00001EC8.startup:
	jmp       .L00001CD8.startup
.L00001ECD.startup:
	movq      $0, truncation_string(%rip)
	jmp       .L00000F2F.startup
.L00001EDD.startup:
	movl      $word_fastmap, %edx
	movl      $32, %ecx
	movq      $72340172838076673, %rax
	movq      %rdx, %rdi
	rep stosq     
	movb      $0, word_fastmap+32(%rip)
	movb      $0, word_fastmap+9(%rip)
	movb      $0, word_fastmap+10(%rip)
	jmp       .L000006A5.startup
.L00001F11.startup:
	movl      $34, %esi
	call      __overflow
.L00001F1B.startup:
	jmp       .L00001DAD.startup
.L00001F20.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00001F33.startup:
	jmp       .L00001D7A.startup
.L00001F38.startup:
	movl      truncation_string_length(%rip), %eax
	leal      (%rax,%rax), %edx
	notl      %edx
	leal      (%r8,%rdx), %eax
	movl      %eax, keyafter_max_width(%rip)
	jmp       .L00000F5C.startup
.L00001F52.startup:
	movb      $1, edited_flag+34(%rip)
	jmp       .L00000FD7.startup
.L00001F5E.startup:
	call      __errno_location
.L00001F63.startup:
	movslq    optind(%rip), %rdx
	movl      (%rax), %esi
	movl      $1, %edi
	xorl      %eax, %eax
	movq      (%rbp,%rdx,8), %rcx
	movl      $.LC00000015.str1.1, %edx
	call      error
.L00001F82.startup:
	jmp       .L000003D5.startup
.L00001F87.startup:
	call      xalloc_die
.L00001F8C.startup:
	movq      occurs_table(%rip), %rdi
	movl      $compare_occurs, %ecx
	movl      $32, %edx
	call      qsort
.L00001FA2.startup:
	jmp       .L00000DC9.startup
.L00001FA7.startup:
	movl      %edx, %eax
	jmp       .L00000E5F.startup
.L00001FAE.startup:
	movl      $34, %esi
	call      __overflow
.L00001FB8.startup:
	jmp       .L00001CBA.startup
.L00001FBD.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00001FD0.startup:
	jmp       .L00001C9A.startup
.L00001FD5.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00001FE8.startup:
	jmp       .L00001BB3.startup
.L00001FED.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00002000.startup:
	movq      head(%rip), %rdx
	movq      head+8(%rip), %rcx
	cmpq      %rcx, %rdx
	jae       .L00001C0C.startup
.L00002017.startup:
	movq      keyafter(%rip), %rax
	subq      keyafter+8(%rip), %rax
	movl      $0, %esi
	addl      half_line_width(%rip), %eax
	cmpl      $0, keyafter_truncation(%rip)
	cmovne    truncation_string_length(%rip), %esi
	jmp       .L00001B83.startup
.L00002043.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00002056.startup:
	jmp       .L00001B18.startup
.L0000205B.startup:
	movq      tail+8(%rip), %rsi
	call      print_field
.L00002067.startup:
	cmpl      $0, tail_truncation(%rip)
	je        .L00002083.startup
.L00002070.startup:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L00002083.startup:
	xorl      %ecx, %ecx
	movl      half_line_width(%rip), %eax
	movq      before(%rip), %rdi
	subl      gap_size(%rip), %eax
	subq      before+8(%rip), %rdi
	movl      %ecx, %esi
	cmpl      $0, before_truncation(%rip)
	movq      tail(%rip), %rdx
	cmovne    truncation_string_length(%rip), %esi
	subq      tail+8(%rip), %rdx
	addl      %edx, %edi
	addl      %eax, %edi
	subl      %esi, %edi
	cmpl      $0, tail_truncation(%rip)
	cmovne    truncation_string_length(%rip), %ecx
	subl      %ecx, %edi
	call      print_spaces
.L000020D8.startup:
	jmp       .L00001B0B.startup
.L000020DD.startup:
	movl      $58, %esi
	call      __overflow
.L000020E7.startup:
	jmp       .L00001A9E.startup
.L000020EC.startup:
	call      print_field
.L000020F1.startup:
	movq      reference(%rip), %rax
	movl      gap_size(%rip), %edi
	subq      reference+8(%rip), %rax
	addl      reference_max_width(%rip), %edi
	addl      %eax, %edi
	call      print_spaces
.L00002112.startup:
	jmp       .L00001AC1.startup
.L00002117.startup:
	movl      $125, %esi
	call      __overflow
.L00002121.startup:
	jmp       .L0000184A.startup
.L00002126.startup:
	movl      $123, %esi
	call      __overflow
.L00002130.startup:
	jmp       .L00001817.startup
.L00002135.startup:
	movl      $1, %eax
	jmp       .L00001777.startup
.L0000213F.startup:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	jne       .L0000216A.startup
.L0000214C.startup:
	addq      $1, %r15
	jmp       .L0000177A.startup
.L00002155.startup:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L0000177A.startup
.L00002166.startup:
	addq      $1, %r15
.L0000216A.startup:
	cmpq      %r15, %rbx
	ja        .L00002155.startup
.L0000216F.startup:
	jmp       .L0000177A.startup
.L00002174.startup:
	movl      $10, %esi
	call      __overflow
.L0000217E.startup:
	jmp       .L0000186A.startup
.L00002183.startup:
	movl      $123, %esi
	call      __overflow
.L0000218D.startup:
	jmp       .L000016E4.startup
.L00002192.startup:
	xorl      %eax, %eax
	jmp       .L000015D5.startup
.L00002199.startup:
	cmpb      $0, right_reference(%rip)
	je        .L0000184A.startup
.L000021A6.startup:
	jmp       .L00001C2F.startup
	.size	main, .-main
# ----------------------
	.local	reference
	.comm	reference,16,16
# ----------------------
	.local	head_truncation
	.comm	head_truncation,4,4
# ----------------------
	.local	head
	.comm	head,16,16
# ----------------------
	.local	keyafter_truncation
	.comm	keyafter_truncation,4,4
# ----------------------
	.local	keyafter
	.comm	keyafter,16,16
# ----------------------
	.local	before_truncation
	.comm	before_truncation,4,4
# ----------------------
	.local	before
	.comm	before,16,16
# ----------------------
	.local	tail_truncation
	.comm	tail_truncation,4,4
# ----------------------
	.local	tail
	.comm	tail,16,16
# ----------------------
	.local	truncation_string_length
	.comm	truncation_string_length,4,4
# ----------------------
	.local	keyafter_max_width
	.comm	keyafter_max_width,4,4
# ----------------------
	.local	before_max_width
	.comm	before_max_width,4,4
# ----------------------
	.local	half_line_width
	.comm	half_line_width,4,4
# ----------------------
	.local	edited_flag
	.comm	edited_flag,256,64
# ----------------------
	.local	number_of_occurs
	.comm	number_of_occurs,8,8
# ----------------------
	.local	occurs_alloc
	.comm	occurs_alloc,8,8
# ----------------------
	.local	occurs_table
	.comm	occurs_table,8,8
# ----------------------
	.local	text_buffers
	.comm	text_buffers,8,8
# ----------------------
	.local	file_line_count
	.comm	file_line_count,8,8
# ----------------------
	.local	input_file_name
	.comm	input_file_name,8,8
# ----------------------
	.local	total_line_count
	.comm	total_line_count,4,4
# ----------------------
	.local	number_input_files
	.comm	number_input_files,4,4
# ----------------------
	.local	only_table
	.comm	only_table,24,8
# ----------------------
	.local	ignore_table
	.comm	ignore_table,24,8
# ----------------------
	.local	reference_max_width
	.comm	reference_max_width,4,4
# ----------------------
	.local	maximum_word_length
	.comm	maximum_word_length,4,4
# ----------------------
	.local	word_fastmap
	.comm	word_fastmap,256,64
# ----------------------
	.local	word_regs
	.comm	word_regs,24,8
# ----------------------
	.local	context_regs
	.comm	context_regs,24,8
# ----------------------
	.local	folded_chars
	.comm	folded_chars,256,64
# ----------------------
	.local	word_regex
	.comm	word_regex,328,64
# ----------------------
	.local	context_regex
	.comm	context_regex,328,64
# ----------------------
	.local	ignore_file
	.comm	ignore_file,8,8
# ----------------------
	.local	only_file
	.comm	only_file,8,8
# ----------------------
	.local	break_file
	.comm	break_file,8,8
# ----------------------
	.local	ignore_case
	.comm	ignore_case,1,1
# ----------------------
	.local	output_format
	.comm	output_format,4,4
# ----------------------
	.local	right_reference
	.comm	right_reference,1,1
# ----------------------
	.local	input_reference
	.comm	input_reference,1,1
# ----------------------
	.local	auto_reference
	.comm	auto_reference,1,1
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
