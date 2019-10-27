	.file	"ptx.c"
	.section       .text.unlikely,"ax",@progbits
.LCOLDB0:
.LCOLDE0:
.LCOLDB1:
.LCOLDE1:
.LCOLDB3:
.LCOLDE3:
.LCOLDB4:
.LCOLDE4:
.LCOLDB6:
.LCOLDE6:
.LCOLDB9:
.LCOLDE9:
.LCOLDB10:
.LCOLDE10:
.LCOLDB11:
.LCOLDE11:
.LCOLDB29:
.LCOLDE29:
.LCOLDB30:
.LCOLDE30:
.LCOLDB61:
.LCOLDE61:
.LCOLDB80:
.LCOLDE80:
# ----------------------
	.text
.LHOTB0:
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	compare_words
	.type	compare_words, @function
compare_words:
	.cfi_startproc
	movswl    8(%rsi), %r8d
	movswl    8(%rdi), %r9d
	movswl    %r8w, %edx
	cmpw      %r8w, %r9w
	cmovle    %r9d, %edx
	cmpb      $0, ignore_case(%rip)
	jne       .L2
	testl     %edx, %edx
	jle       .L3
	movq      (%rdi), %rdi
	movq      (%rsi), %r10
	movzbl    (%rdi), %eax
	movzbl    (%r10), %ecx
	subl      %ecx, %eax
	jne       .L20
	leal      -1(%rdx), %esi
	xorl      %edx, %edx
	jmp       .L11
	.p2align 4,,10
	.p2align 3
.L12:
	movzbl    1(%rdi,%rdx), %eax
	movzbl    1(%r10,%rdx), %ecx
	addq      $1, %rdx
	subl      %ecx, %eax
	jne       .L21
.L11:
	cmpq      %rsi, %rdx
	jne       .L12
.L3:
	movswl    %r9w, %eax
	subl      %r8d, %eax
	ret       
	.p2align 4,,10
	.p2align 3
.L2:
	testl     %edx, %edx
	jle       .L3
	movq      (%rdi), %r10
	movq      (%rsi), %rdi
	movzbl    (%r10), %eax
	movzbl    (%rdi), %ecx
	movzbl    folded_chars(%rax), %eax
	movzbl    folded_chars(%rcx), %ecx
	subl      %ecx, %eax
	jne       .L22
	leal      -1(%rdx), %esi
	xorl      %edx, %edx
	jmp       .L8
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl    1(%r10,%rdx), %ecx
	movzbl    folded_chars(%rcx), %eax
	movzbl    1(%rdi,%rdx), %ecx
	addq      $1, %rdx
	movzbl    folded_chars(%rcx), %ecx
	subl      %ecx, %eax
	jne       .L23
.L8:
	cmpq      %rsi, %rdx
	jne       .L10
	jmp       .L3
	.p2align 4,,10
	.p2align 3
.L23:
	rep; ret       
	.p2align 4,,10
	.p2align 3
.L21:
	rep; ret       
.L22:
	rep; ret       
.L20:
	rep; ret       
.LHOTE0:
.LHOTB1:
	.cfi_endproc
	.size	compare_words, .-compare_words
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	compare_occurs
	.type	compare_occurs, @function
compare_occurs:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbp
	movq      %rsi, %rbx
	call      compare_words
	testl     %eax, %eax
	jne       .L25
	movq      (%rbp), %rax
	subl      (%rbx), %eax
.L25:
	popq      %rbx
	popq      %rbp
	ret       
.LHOTE1:
.LHOTB3:
	.cfi_endproc
	.size	compare_occurs, .-compare_occurs
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"error in regular expression matcher"
	.align 8
.LC34:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC35:
	.string	"Usage: %s [OPTION]... [INPUT]...   (without -G)\n  or:  %s -G [OPTION]... [INPUT [OUTPUT]]\n"
	.align 8
.LC36:
	.string	"Output a permuted index, including context, of the words in the input files.\n"
	.align 8
.LC37:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC38:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC39:
	.string	"  -A, --auto-reference           output automatically generated references\n  -G, --traditional              behave more like System V 'ptx'\n"
	.align 8
.LC40:
	.string	"  -F, --flag-truncation=STRING   use STRING for flagging line truncations.\n                                 The default is '/'\n"
	.align 8
.LC41:
	.ascii	"  -M, --macro-name=STRING        macro name to use instead o"
	.ascii	"f 'xx'\n  -O, --format=roff      "
	.string	"        generate output as roff directives\n  -R, --right-side-refs          put references at right, not counted in -w\n  -S, --sentence-regexp=REGEXP   for end of lines or end of sentences\n  -T, --format=tex               generate output as TeX directives\n"
	.align 8
.LC42:
	.ascii	"  -W, --word-regexp=REGEXP       use REGEXP to match each ke"
	.ascii	"yword\n  -b, --break-file=FILE          word break character"
	.ascii	"s in this FILE\n  -f, --ignore-case        "
	.string	"      fold lower case to upper case for sorting\n  -g, --gap-size=NUMBER          gap size in columns between output fields\n  -i, --ignore-file=FILE         read ignore word list from FILE\n  -o, --only-file=FILE           read only word list from this FILE\n"
	.align 8
.LC43:
	.string	"  -r, --references               first field of each line is a reference\n  -t, --typeset-mode               - not implemented -\n  -w, --width=NUMBER             output width in columns, reference excluded\n"
	.align 8
.LC44:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC45:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC55:
	.string	"http://www.gnu.org/software/coreutils/"
	.align 8
.LC58:
	.string	"Report %s translation bugs to <http://translationproject.org/team/>\n"
	.align 8
.LC59:
	.string	"Full documentation at: <%s%s>\n"
	.align 8
.LC60:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.align 8
.LC72:
	.string	"[.?!][]\"')}]*\\($\\|\t\\|  \\)[ \t\n]*"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	matcher_error
	.type	matcher_error, @function
matcher_error:
	.cfi_startproc
	pushq     %rbx
	movl      $5, %edx
	movl      $.LC2, %esi
	xorl      %edi, %edi
	call      dcgettext
	movq      %rax, %rbx
	call      __errno_location
	movl      (%rax), %esi
	xorl      %edi, %edi
	movq      %rbx, %rdx
	xorl      %eax, %eax
	call      error
	movl      $1, %edi
	call      exit
.LHOTE3:
.LHOTB4:
	.cfi_endproc
	.size	matcher_error, .-matcher_error
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	copy_unescaped_string
	.type	copy_unescaped_string, @function
copy_unescaped_string:
	.cfi_startproc
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	call      strlen
	leaq      1(%rax), %rdi
	call      xmalloc
	movzbl    (%rbx), %edx
	movq      %rax, %r12
	movq      %rax, %rbp
.L31:
	testb     %dl, %dl
	je        .L64
.L59:
	cmpb      $92, %dl
	je        .L66
	movb      %dl, (%rbp)
	movzbl    1(%rbx), %edx
	addq      $1, %rbp
	addq      $1, %rbx
	testb     %dl, %dl
	jne       .L59
.L64:
	movb      $0, (%rbp)
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L66:
	movzbl    1(%rbx), %edx
	leaq      1(%rbx), %rcx
	cmpb      $102, %dl
	je        .L34
	jg        .L35
	cmpb      $97, %dl
	je        .L36
	jg        .L37
	testb     %dl, %dl
	je        .L64
	cmpb      $48, %dl
	jne       .L33
	leaq      2(%rbx), %rax
	movsbl    (%rax), %edx
	addq      $5, %rbx
	xorl      %ecx, %ecx
	leal      -48(%rdx), %esi
	cmpb      $7, %sil
	ja        .L67
.L57:
	leal      -48(%rdx,%rcx,8), %ecx
	leaq      1(%rax), %rdx
	cmpq      %rbx, %rdx
	je        .L68
	movq      %rdx, %rax
	movsbl    (%rax), %edx
	leal      -48(%rdx), %esi
	cmpb      $7, %sil
	jbe       .L57
.L67:
	movq      %rax, %rbx
	jmp       .L56
	.p2align 4,,10
	.p2align 3
.L35:
	cmpb      $116, %dl
	je        .L42
	jg        .L43
	cmpb      $110, %dl
	je        .L44
	cmpb      $114, %dl
	jne       .L33
	movb      $13, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L37:
	cmpb      $98, %dl
	je        .L40
	cmpb      $99, %dl
	jne       .L33
	movq      %rcx, %rbx
	.p2align 4,,10
	.p2align 3
.L58:
	addq      $1, %rbx
	cmpb      $0, (%rbx)
	jne       .L58
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L43:
	cmpb      $118, %dl
	je        .L46
	cmpb      $120, %dl
	jne       .L33
	leaq      2(%rbx), %r13
	addq      $5, %rbx
	call      __ctype_b_loc
	movq      %r13, %rsi
	movq      (%rax), %rdi
	xorl      %eax, %eax
.L48:
	movzbl    (%rsi), %edx
	movl      %esi, %r8d
	subl      %r13d, %r8d
	movzbl    %dl, %ecx
	testb     $16, 1(%rdi,%rcx,2)
	je        .L69
	leal      -97(%rdx), %ecx
	sall      $4, %eax
	cmpb      $5, %cl
	ja        .L49
	movsbl    %dl, %ecx
	leal      -87(%rcx), %edx
.L50:
	addl      %edx, %eax
	leaq      1(%rsi), %rdx
	cmpq      %rbx, %rdx
	je        .L52
.L70:
	movq      %rdx, %rsi
	jmp       .L48
	.p2align 4,,10
	.p2align 3
.L46:
	movb      $11, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L40:
	movb      $8, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L44:
	movb      $10, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L49:
	leal      -65(%rdx), %ecx
	cmpb      $5, %cl
	movsbl    %dl, %ecx
	ja        .L51
	leal      -55(%rcx), %edx
	addl      %edx, %eax
	leaq      1(%rsi), %rdx
	cmpq      %rbx, %rdx
	jne       .L70
.L52:
	movzbl    1(%rsi), %edx
.L54:
	movb      %al, (%rbp)
	addq      $1, %rbp
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L36:
	movb      $7, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L34:
	movb      $12, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L33:
	movb      %dl, 1(%rbp)
	movb      $92, (%rbp)
	addq      $2, %rbx
	movzbl    (%rbx), %edx
	addq      $2, %rbp
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L42:
	movb      $9, (%rbp)
	movzbl    2(%rbx), %edx
	addq      $1, %rbp
	addq      $2, %rbx
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L68:
	movzbl    1(%rax), %edx
.L56:
	movb      %cl, (%rbp)
	addq      $1, %rbp
	jmp       .L31
	.p2align 4,,10
	.p2align 3
.L51:
	leal      -48(%rcx), %edx
	jmp       .L50
.L69:
	testl     %r8d, %r8d
	movq      %rsi, %rbx
	jne       .L54
	movb      $92, (%rbp)
	movb      $120, 1(%rbp)
	addq      $2, %rbp
	jmp       .L31
.LHOTE4:
.LHOTB6:
	.cfi_endproc
	.size	copy_unescaped_string, .-copy_unescaped_string
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"%s (for regexp %s)"
.LC7:
	.string	"-"
.LC8:
	.string	"%s"
.LC12:
	.string	"\\"
.LC13:
	.string	""
.LC14:
	.string	"\\oe{}"
.LC15:
	.string	"\\OE{}"
.LC16:
	.string	"\\ae{}"
.LC17:
	.string	"\\AE{}"
.LC18:
	.string	"\\'%s%c"
.LC19:
	.string	"\\^%s%c"
.LC20:
	.string	"\\\"%s%c"
.LC21:
	.string	"\\~%s%c"
.LC22:
	.string	"\\c{%c}"
.LC23:
	.string	"\\aa{}"
.LC24:
	.string	"\\AA{}"
.LC25:
	.string	"\\o{}"
.LC26:
	.string	"\\O{}"
.LC27:
	.string	"$\\%c$"
.LC28:
	.string	"\\backslash{}"
.LC31:
	.string	"["
.LC32:
	.string	"ptx"
.LC33:
	.string	" invocation"
.LC46:
	.string	"test invocation"
.LC47:
	.string	"coreutils"
.LC48:
	.string	"Multi-call invocation"
.LC49:
	.string	"sha224sum"
.LC50:
	.string	"sha2 utilities"
.LC51:
	.string	"sha256sum"
.LC52:
	.string	"sha384sum"
.LC53:
	.string	"sha512sum"
.LC54:
	.string	"\n%s online help: <%s>\n"
.LC56:
	.string	"GNU coreutils"
.LC57:
	.string	"en_"
.LC62:
	.string	"$%&#_{}\\"
.LC63:
	.string	"/usr/local/share/locale"
.LC64:
	.string	"invalid gap width: %s"
.LC65:
	.string	"invalid line width: %s"
.LC66:
	.string	"--format"
.LC67:
	.string	"Fran\303\247ois Pinard"
.LC68:
	.string	"F. Pinard"
.LC69:
	.string	"AF:GM:ORS:TW:b:i:fg:o:trw:"
.LC70:
	.string	"w"
.LC71:
	.string	"extra operand %s"
.LC73:
	.string	"\n"
.LC74:
	.string	"%d"
.LC75:
	.string	"%s:%d"
.LC76:
	.string	".%s \""
.LC77:
	.string	" \""
.LC78:
	.string	"\\%s "
.LC79:
	.string	"}{"
.LC81:
	.string	"roff"
.LC82:
	.string	"tex"
.LC83:
	.string	"auto-reference"
.LC84:
	.string	"break-file"
.LC85:
	.string	"flag-truncation"
.LC86:
	.string	"ignore-case"
.LC87:
	.string	"gap-size"
.LC88:
	.string	"ignore-file"
.LC89:
	.string	"macro-name"
.LC90:
	.string	"only-file"
.LC91:
	.string	"references"
.LC92:
	.string	"right-side-refs"
.LC93:
	.string	"format"
.LC94:
	.string	"sentence-regexp"
.LC95:
	.string	"traditional"
.LC96:
	.string	"typeset-mode"
.LC97:
	.string	"width"
.LC98:
	.string	"word-regexp"
.LC99:
	.string	"help"
.LC100:
	.string	"version"
.LC101:
	.string	"xx"
.LC102:
	.string	"/"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	compile_regex
	.type	compile_regex, @function
compile_regex:
	.cfi_startproc
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
	movq      %rbp, %rdx
	movq      %rax, %rsi
	movq      %rbx, %rdi
	call      re_compile_pattern
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L73
	movq      %rbx, %rdi
	call      quote
	movl      $5, %edx
	movq      %rax, %rbx
	movl      $.LC5, %esi
	xorl      %edi, %edi
	call      dcgettext
	movq      %rbx, %r8
	movq      %rax, %rdx
	movq      %r12, %rcx
	xorl      %esi, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      error
.L73:
	popq      %rbx
	movq      %rbp, %rdi
	popq      %rbp
	popq      %r12
	jmp       re_compile_fastmap
.LHOTE6:
.LHOTB9:
	.cfi_endproc
	.size	compile_regex, .-compile_regex
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	swallow_file_in_memory
	.type	swallow_file_in_memory, @function
swallow_file_in_memory:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbp
	movq      %rdi, %rbx
	subq      $24, %rsp
	testq     %rdi, %rdi
	je        .L80
	movzbl    (%rdi), %eax
	testb     %al, %al
	jne       .L96
.L80:
	movq      stdin(%rip), %rdi
	leaq      8(%rsp), %rsi
	call      fread_file
	testq     %rax, %rax
	movq      %rax, (%rbp)
	je        .L97
.L83:
	addq      8(%rsp), %rax
	movq      %rax, 8(%rbp)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L96:
	cmpb      $45, %al
	jne       .L81
	cmpb      $0, 1(%rdi)
	je        .L80
	.p2align 4,,10
	.p2align 3
.L81:
	leaq      8(%rsp), %rsi
	movq      %rbx, %rdi
	call      read_file
	testq     %rax, %rax
	movq      %rax, (%rbp)
	jne       .L83
	movq      %rbx, %rdi
	jmp       .L82
	.p2align 4,,10
	.p2align 3
.L97:
	movl      $.LC7, %edi
.L82:
	call      quote
	movq      %rax, %rbx
	call      __errno_location
	movl      (%rax), %esi
	movq      %rbx, %rcx
	xorl      %eax, %eax
	movl      $.LC8, %edx
	movl      $1, %edi
	call      error
	movq      (%rbp), %rax
	addq      8(%rsp), %rax
	movq      %rax, 8(%rbp)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.LHOTE9:
.LHOTB10:
	.cfi_endproc
	.size	swallow_file_in_memory, .-swallow_file_in_memory
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	digest_word_file
	.type	digest_word_file, @function
digest_word_file:
	.cfi_startproc
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      $576460752303423487, %r12
	subq      $24, %rsp
	movq      %rsp, %rsi
	call      swallow_file_in_memory
	movq      (%rsp), %rbp
	movq      8(%rsp), %rdx
	xorl      %esi, %esi
	movq      $0, (%r13)
	movq      $0, 8(%r13)
	movq      $0, 16(%r13)
	.p2align 4,,10
	.p2align 3
.L99:
	cmpq      %rdx, %rbp
	jae       .L107
.L120:
	cmpb      $10, (%rbp)
	movq      %rbp, %rax
	movq      %rbp, %rbx
	jne       .L112
	jmp       .L109
	.p2align 4,,10
	.p2align 3
.L119:
	cmpb      $10, (%rax)
	je        .L118
.L112:
	addq      $1, %rax
	cmpq      %rdx, %rax
	jne       .L119
	cmpq      %rsi, 8(%r13)
	movq      %rdx, %rbx
	je        .L103
.L121:
	movq      (%r13), %rax
.L104:
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
	jbe       .L99
.L109:
	leaq      1(%rbx), %rbp
	cmpq      %rdx, %rbp
	jb        .L120
.L107:
	movq      (%r13), %rdi
	movl      $compare_words, %ecx
	movl      $16, %edx
	call      qsort
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L118:
	cmpq      %rax, %rbp
	movq      %rax, %rbx
	jae       .L109
	cmpq      %rsi, 8(%r13)
	jne       .L121
.L103:
	cmpq      %r12, %rsi
	ja        .L122
	leaq      1(%rsi,%rsi), %rsi
	movq      (%r13), %rdi
	movq      %rsi, 8(%r13)
	salq      $4, %rsi
	call      xrealloc
	movq      16(%r13), %rsi
	movq      %rax, (%r13)
	movq      8(%rsp), %rdx
	jmp       .L104
.L122:
	call      xalloc_die
.LHOTE10:
.LHOTB11:
	.cfi_endproc
	.size	digest_word_file, .-digest_word_file
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	print_spaces
	.type	print_spaces, @function
print_spaces:
	.cfi_startproc
	testl     %edi, %edi
	pushq     %rbx
	movl      %edi, %ebx
	jg        .L129
	jmp       .L123
	.p2align 4,,10
	.p2align 3
.L125:
	leaq      1(%rdx), %rcx
	subl      $1, %ebx
	movq      %rcx, 40(%rdi)
	movb      $32, (%rdx)
	je        .L123
.L129:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rdx
	cmpq      48(%rdi), %rdx
	jb        .L125
	movl      $32, %esi
	call      __overflow
	subl      $1, %ebx
	jne       .L129
	.p2align 4,,10
	.p2align 3
.L123:
	popq      %rbx
	ret       
.LHOTE11:
.LHOTB29:
	.cfi_endproc
	.size	print_spaces, .-print_spaces
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	print_field
	.type	print_field, @function
print_field:
	.cfi_startproc
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	movl      $.LC12, %r12d
	movq      %rdi, %rbx
	subq      $24, %rsp
	cmpq      %rdi, %rsi
	jbe       .L132
	.p2align 4,,10
	.p2align 3
.L196:
	movzbl    (%rbx), %edx
	movslq    %edx, %rax
	movl      %edx, %ebp
	cmpb      $0, edited_flag(%rax)
	je        .L134
	movzbl    diacrit_diac(%rax), %edi
	testb     %dil, %dil
	je        .L135
	cmpl      $3, output_format(%rip)
	je        .L213
.L135:
	cmpb      $92, %bpl
	je        .L168
	ja        .L169
	cmpb      $34, %bpl
	je        .L170
	jb        .L167
	cmpb      $38, %bpl
	ja        .L167
.L171:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L214
	leaq      1(%rax), %rcx
	movq      %rcx, 40(%rdi)
	movb      $92, (%rax)
	.p2align 4,,10
	.p2align 3
.L134:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L215
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      %bpl, (%rax)
.L136:
	addq      $1, %rbx
	cmpq      %r13, %rbx
	jne       .L196
.L132:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L169:
	cmpb      $123, %bpl
	je        .L172
	cmpb      $125, %bpl
	je        .L172
	cmpb      $95, %bpl
	je        .L171
.L167:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L216
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $32, (%rax)
	jmp       .L136
	.p2align 4,,10
	.p2align 3
.L168:
	movq      stdout(%rip), %rsi
	movl      $.LC28, %edi
	call      fputs_unlocked
	jmp       .L136
	.p2align 4,,10
	.p2align 3
.L170:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L217
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L174:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L218
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
	jmp       .L136
	.p2align 4,,10
	.p2align 3
.L172:
	movl      $.LC27, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L136
	.p2align 4,,10
	.p2align 3
.L213:
	cmpb      $9, %dil
	movsbl    diacrit_base(%rax), %ecx
	ja        .L136
	jmp       *.L138(,%rdi,8)
	.p2align 4,,10
	.p2align 3
.L215:
	movl      %edx, %esi
	call      __overflow
	jmp       .L136
	.p2align 4,,10
	.p2align 3
.L140:
	cmpl      $105, %ecx
	movl      $.LC13, %edx
	movl      $.LC18, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L136
.L141:
	cmpl      $105, %ecx
	movl      $.LC13, %edx
	movl      $.LC19, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L136
.L142:
	cmpl      $105, %ecx
	movl      $.LC13, %edx
	movl      $.LC20, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L136
.L143:
	cmpl      $105, %ecx
	movl      $.LC13, %edx
	movl      $.LC21, %esi
	cmove     %r12, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L136
.L144:
	movl      %ecx, %edx
	movl      $.LC22, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L136
.L145:
	cmpb      $65, %cl
	je        .L160
	cmpb      $97, %cl
	jne       .L167
	movq      stdout(%rip), %rsi
	movl      $.LC23, %edi
	call      fputs_unlocked
	jmp       .L136
.L137:
	cmpb      $79, %cl
	je        .L148
	jle       .L219
	cmpb      $97, %cl
	je        .L151
	cmpb      $111, %cl
	jne       .L167
	movq      stdout(%rip), %rsi
	movl      $.LC14, %edi
	call      fputs_unlocked
	jmp       .L136
.L146:
	cmpb      $79, %cl
	je        .L164
	cmpb      $111, %cl
	jne       .L167
	movq      stdout(%rip), %rsi
	movl      $.LC25, %edi
	call      fputs_unlocked
	jmp       .L136
.L216:
	movl      $32, %esi
	call      __overflow
	jmp       .L136
.L214:
	movl      $92, %esi
	movl      %edx, 12(%rsp)
	call      __overflow
	movl      12(%rsp), %edx
	jmp       .L134
.L218:
	movl      $34, %esi
	call      __overflow
	jmp       .L136
.L217:
	movl      $34, %esi
	call      __overflow
	jmp       .L174
.L160:
	movq      stdout(%rip), %rsi
	movl      $.LC24, %edi
	call      fputs_unlocked
	jmp       .L136
.L164:
	movq      stdout(%rip), %rsi
	movl      $.LC26, %edi
	call      fputs_unlocked
	jmp       .L136
.L219:
	cmpb      $65, %cl
	jne       .L167
	movq      stdout(%rip), %rsi
	movl      $.LC17, %edi
	call      fputs_unlocked
	jmp       .L136
.L148:
	movq      stdout(%rip), %rsi
	movl      $.LC15, %edi
	call      fputs_unlocked
	jmp       .L136
.L151:
	movq      stdout(%rip), %rsi
	movl      $.LC16, %edi
	call      fputs_unlocked
	jmp       .L136
.LHOTE29:
.LHOTB30:
	.cfi_endproc
	.size	print_field, .-print_field
# ----------------------
	.section       .rodata
	.align 4
.L138:
	.quad	.L136
	.quad	.L137
	.quad	.L140
	.quad	.L140
	.quad	.L141
	.quad	.L142
	.quad	.L143
	.quad	.L144
	.quad	.L145
	.quad	.L146
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	search_table.isra.0
	.type	search_table.isra.0, @function
search_table.isra.0:
	.cfi_startproc
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      %edx, %ebx
	subl      $1, %ebx
	js        .L225
	movq      %rdi, %rbp
	movq      %rsi, %r12
	xorl      %r14d, %r14d
	jmp       .L224
	.p2align 4,,10
	.p2align 3
.L222:
	je        .L226
	leal      1(%r13), %r14d
	cmpl      %r14d, %ebx
	jl        .L225
.L224:
	leal      (%r14,%rbx), %r13d
	movq      %rbp, %rdi
	sarl      $1, %r13d
	movslq    %r13d, %rax
	salq      $4, %rax
	leaq      (%r12,%rax), %rsi
	call      compare_words
	testl     %eax, %eax
	jns       .L222
	leal      -1(%r13), %ebx
	cmpl      %r14d, %ebx
	jge       .L224
.L225:
	popq      %rbx
	xorl      %eax, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L226:
	popq      %rbx
	movl      $1, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.LHOTE30:
.LHOTB61:
	.cfi_endproc
	.size	search_table.isra.0, .-search_table.isra.0
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	usage
	.type	usage, @function
usage:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	movl      $5, %edx
	pushq     %rbx
	movl      %edi, %ebx
	subq      $112, %rsp
	testl     %edi, %edi
	movq      program_name(%rip), %rbp
	je        .L230
	movl      $.LC34, %esi
	xorl      %edi, %edi
	call      dcgettext
	movq      stderr(%rip), %rdi
	movq      %rax, %rdx
	movq      %rbp, %rcx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L231:
	movl      %ebx, %edi
	call      exit
.L230:
	xorl      %edi, %edi
	movl      $.LC35, %esi
	call      dcgettext
	movq      %rbp, %rcx
	movq      %rbp, %rdx
	movq      %rax, %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC36, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC37, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC38, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC39, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC40, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC41, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC42, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC43, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC44, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      stdout(%rip), %rbp
	movl      $5, %edx
	xorl      %edi, %edi
	movl      $.LC45, %esi
	call      dcgettext
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      fputs_unlocked
	movq      $.LC31, (%rsp)
	movq      $.LC46, 8(%rsp)
	movl      $.LC31, %edi
	movq      $.LC47, 16(%rsp)
	movq      $.LC48, 24(%rsp)
	movq      %rsp, %rdx
	movq      $.LC49, 32(%rsp)
	movq      $.LC50, 40(%rsp)
	movl      $.LC32, %r10d
	movq      $.LC51, 48(%rsp)
	movq      $.LC50, 56(%rsp)
	movl      $4, %r9d
	movq      $.LC52, 64(%rsp)
	movq      $.LC50, 72(%rsp)
	movq      $.LC53, 80(%rsp)
	movq      $.LC50, 88(%rsp)
	movq      $0, 96(%rsp)
	movq      $0, 104(%rsp)
	jmp       .L232
	.p2align 4,,10
	.p2align 3
.L234:
	addq      $16, %rdx
	movq      (%rdx), %rdi
	testq     %rdi, %rdi
	je        .L233
.L232:
	movq      %r10, %rsi
	movq      %r9, %rcx
	repz cmpsb     
	jne       .L234
.L233:
	movq      8(%rdx), %rbp
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC54, %esi
	testq     %rbp, %rbp
	je        .L235
	call      dcgettext
	movl      $.LC55, %ecx
	movq      %rax, %rsi
	movl      $.LC56, %edx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	xorl      %esi, %esi
	movl      $5, %edi
	call      setlocale
	testq     %rax, %rax
	je        .L236
	movl      $3, %edx
	movl      $.LC57, %esi
	movq      %rax, %rdi
	call      strncmp
	testl     %eax, %eax
	jne       .L240
.L236:
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC59, %esi
	call      dcgettext
	movl      $.LC32, %ecx
	movq      %rax, %rsi
	movl      $.LC55, %edx
	xorl      %eax, %eax
	movl      $1, %edi
	movl      $.LC13, %r12d
	call      __printf_chk
	cmpq      $.LC32, %rbp
	je        .L238
.L237:
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC60, %esi
	call      dcgettext
	movq      %r12, %rcx
	movq      %rax, %rsi
	movq      %rbp, %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L231
.L235:
	call      dcgettext
	movl      $.LC55, %ecx
	movq      %rax, %rsi
	movl      $.LC56, %edx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	xorl      %esi, %esi
	movl      $5, %edi
	call      setlocale
	testq     %rax, %rax
	je        .L239
	movl      $3, %edx
	movl      $.LC57, %esi
	movq      %rax, %rdi
	call      strncmp
	testl     %eax, %eax
	je        .L239
	movl      $.LC32, %ebp
.L240:
	xorl      %edi, %edi
	movl      $5, %edx
	movl      $.LC58, %esi
	call      dcgettext
	movl      $.LC32, %edx
	movq      %rax, %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	jmp       .L236
.L239:
	movl      $5, %edx
	movl      $.LC59, %esi
	xorl      %edi, %edi
	call      dcgettext
	movl      $.LC32, %ecx
	movq      %rax, %rsi
	movl      $.LC55, %edx
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
.L238:
	movl      $.LC32, %ebp
	movl      $.LC33, %r12d
	jmp       .L237
.LHOTE61:
	.cfi_endproc
	.size	usage, .-usage
# ----------------------
	.section       .text.startup,"ax",@progbits
.LHOTB80:
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
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
	movl      $.LC13, %esi
	movl      $6, %edi
	call      setlocale
	movl      $.LC63, %esi
	movl      $.LC47, %edi
	call      bindtextdomain
	movl      $.LC47, %edi
	call      textdomain
	movl      $close_stdout, %edi
	call      atexit
	.p2align 4,,10
	.p2align 3
.L285:
	xorl      %r8d, %r8d
	movl      $long_options, %ecx
	movl      $.LC69, %edx
	movq      %rbp, %rsi
	movl      %ebx, %edi
	call      getopt_long
	cmpl      $-1, %eax
	je        .L742
	cmpl      $83, %eax
	je        .L260
	jg        .L261
	cmpl      $70, %eax
	je        .L262
	jg        .L263
	cmpl      $-130, %eax
	je        .L264
	jle       .L743
	cmpl      $10, %eax
	je        .L267
	cmpl      $65, %eax
	jne       .L735
	movb      $1, auto_reference(%rip)
	jmp       .L285
	.p2align 4,,10
	.p2align 3
.L261:
	cmpl      $103, %eax
	je        .L274
	jle       .L744
	cmpl      $114, %eax
	je        .L281
	jg        .L282
	cmpl      $105, %eax
	je        .L283
	cmpl      $111, %eax
	jne       .L735
	movq      optarg(%rip), %rax
	movq      %rax, only_file(%rip)
	jmp       .L285
.L263:
	cmpl      $77, %eax
	je        .L269
	jle       .L745
	cmpl      $79, %eax
	je        .L272
	cmpl      $82, %eax
	jne       .L735
	movb      $1, right_reference(%rip)
	jmp       .L285
.L744:
	cmpl      $87, %eax
	je        .L276
	jle       .L746
	cmpl      $98, %eax
	je        .L279
	cmpl      $102, %eax
	jne       .L735
	movb      $1, ignore_case(%rip)
	jmp       .L285
.L282:
	cmpl      $116, %eax
	je        .L285
	cmpl      $119, %eax
	jne       .L735
	movq      optarg(%rip), %rdi
	leaq      80(%rsp), %rcx
	xorl      %r8d, %r8d
	xorl      %edx, %edx
	xorl      %esi, %esi
	call      xstrtoul
	testl     %eax, %eax
	jne       .L290
	movq      80(%rsp), %rax
	leaq      -1(%rax), %rdx
	cmpq      $2147483646, %rdx
	jbe       .L291
.L290:
	movq      optarg(%rip), %rdi
	call      quotearg
	movl      $5, %edx
	movq      %rax, %r12
	movl      $.LC65, %esi
	xorl      %edi, %edi
	call      dcgettext
	movq      %r12, %rcx
	movq      %rax, %rdx
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      $1, %edi
	call      error
	movq      80(%rsp), %rax
.L291:
	movl      %eax, line_width(%rip)
	jmp       .L285
.L279:
	movq      optarg(%rip), %rax
	movq      %rax, break_file(%rip)
	jmp       .L285
.L272:
	movl      $2, output_format(%rip)
	jmp       .L285
.L267:
	movq      argmatch_die(%rip), %r9
	movq      optarg(%rip), %rsi
	movl      $4, %r8d
	movl      $format_vals, %ecx
	movl      $format_args, %edx
	movl      $.LC66, %edi
	call      __xargmatch_internal
	movl      format_vals(,%rax,4), %eax
	movl      %eax, output_format(%rip)
	jmp       .L285
.L283:
	movq      optarg(%rip), %rax
	movq      %rax, ignore_file(%rip)
	jmp       .L285
.L743:
	cmpl      $-131, %eax
	jne       .L735
	movl      $.LC67, %esi
	movl      $.LC68, %edi
	call      proper_name_utf8
	movq      stdout(%rip), %rdi
	movq      Version(%rip), %rcx
	movq      %rax, %r8
	xorl      %r9d, %r9d
	movl      $.LC56, %edx
	movl      $.LC32, %esi
	xorl      %eax, %eax
	call      version_etc
	xorl      %edi, %edi
	call      exit
.L746:
	cmpl      $84, %eax
	jne       .L735
	movl      $3, output_format(%rip)
	jmp       .L285
.L745:
	cmpl      $71, %eax
	jne       .L735
	movb      $0, gnu_extensions(%rip)
	jmp       .L285
.L269:
	movq      optarg(%rip), %rax
	movq      %rax, macro_name(%rip)
	jmp       .L285
.L264:
	xorl      %edi, %edi
	call      usage
.L276:
	movq      optarg(%rip), %rdi
	call      copy_unescaped_string
	movq      %rax, word_regex(%rip)
	cmpb      $0, (%rax)
	jne       .L285
	movq      $0, word_regex(%rip)
	jmp       .L285
.L262:
	movq      optarg(%rip), %rdi
	call      copy_unescaped_string
	movq      %rax, truncation_string(%rip)
	jmp       .L285
.L260:
	movq      optarg(%rip), %rdi
	call      copy_unescaped_string
	movq      %rax, context_regex(%rip)
	jmp       .L285
.L295:
	movl      $8, %edi
	movl      $1, number_input_files(%rip)
	call      xmalloc
	movl      $4, %edi
	movq      %rax, input_file_name(%rip)
	call      xmalloc
	movl      $16, %edi
	movq      %rax, file_line_count(%rip)
	call      xmalloc
	movslq    optind(%rip), %rdx
	movq      %rax, text_buffers(%rip)
	leaq      0(,%rdx,8), %rsi
	movq      %rdx, %rax
	movq      (%rbp,%rdx,8), %rdx
	movzbl    (%rdx), %ecx
	testb     %cl, %cl
	je        .L302
	cmpb      $45, %cl
	jne       .L303
	cmpb      $0, 1(%rdx)
	jne       .L303
.L302:
	movq      input_file_name(%rip), %rdx
	movq      $0, (%rdx)
.L304:
	addl      $1, %eax
	cmpl      %eax, %ebx
	movl      %eax, optind(%rip)
	jle       .L294
	movq      8(%rbp,%rsi), %rdi
	movq      stdout(%rip), %rdx
	movl      $.LC70, %esi
	call      freopen_safer
	testq     %rax, %rax
	je        .L747
.L305:
	movl      optind(%rip), %eax
	addl      $1, %eax
	cmpl      %eax, %ebx
	movl      %eax, optind(%rip)
	jle       .L294
	cltq      
	movq      (%rbp,%rax,8), %rdi
	call      quote
	movl      $5, %edx
	movq      %rax, %rbx
	movl      $.LC71, %esi
	xorl      %edi, %edi
	call      dcgettext
	movq      %rbx, %rcx
	movq      %rax, %rdx
	xorl      %esi, %esi
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      error
.L735:
	movl      $1, %edi
	call      usage
.L281:
	movb      $1, input_reference(%rip)
	jmp       .L285
.L274:
	movq      optarg(%rip), %rdi
	leaq      80(%rsp), %rcx
	xorl      %r8d, %r8d
	xorl      %edx, %edx
	xorl      %esi, %esi
	call      xstrtoul
	testl     %eax, %eax
	jne       .L288
	movq      80(%rsp), %rax
	leaq      -1(%rax), %rdx
	cmpq      $2147483646, %rdx
	jbe       .L289
.L288:
	movq      optarg(%rip), %rdi
	call      quotearg
	movl      $5, %edx
	movq      %rax, %r12
	movl      $.LC64, %esi
	xorl      %edi, %edi
	call      dcgettext
	movq      %r12, %rcx
	movq      %rax, %rdx
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      $1, %edi
	call      error
	movq      80(%rsp), %rax
.L289:
	movl      %eax, gap_size(%rip)
	jmp       .L285
.L742:
	movl      optind(%rip), %eax
	cmpl      %ebx, %eax
	je        .L748
	cmpb      $0, gnu_extensions(%rip)
	je        .L295
	subl      %eax, %ebx
	movl      %ebx, number_input_files(%rip)
	movslq    %ebx, %rbx
	leaq      0(,%rbx,8), %rdi
	call      xmalloc
	movslq    number_input_files(%rip), %rdi
	movq      %rax, input_file_name(%rip)
	salq      $2, %rdi
	call      xmalloc
	movslq    number_input_files(%rip), %rdi
	movq      %rax, file_line_count(%rip)
	salq      $4, %rdi
	call      xmalloc
	movl      number_input_files(%rip), %edi
	movq      %rax, text_buffers(%rip)
	xorl      %eax, %eax
	movq      input_file_name(%rip), %rsi
	jmp       .L296
.L749:
	cmpb      $0, 1(%rdx)
	jne       .L298
.L297:
	movq      $0, (%rsi,%rax,8)
.L299:
	addl      $1, optind(%rip)
	addq      $1, %rax
.L296:
	cmpl      %eax, %edi
	jle       .L294
	movslq    optind(%rip), %rdx
	movq      (%rbp,%rdx,8), %rdx
	movzbl    (%rdx), %ecx
	testb     %cl, %cl
	je        .L297
	cmpb      $45, %cl
	je        .L749
.L298:
	movq      %rdx, (%rsi,%rax,8)
	jmp       .L299
.L748:
	movl      $8, %edi
	call      xmalloc
	movl      $4, %edi
	movq      %rax, input_file_name(%rip)
	call      xmalloc
	movl      $16, %edi
	movq      %rax, file_line_count(%rip)
	call      xmalloc
	movq      %rax, text_buffers(%rip)
	movq      input_file_name(%rip), %rax
	movl      $1, number_input_files(%rip)
	movq      $0, (%rax)
.L294:
	cmpl      $0, output_format(%rip)
	jne       .L306
	cmpb      $1, gnu_extensions(%rip)
	sbbl      %eax, %eax
	notl      %eax
	addl      $2, %eax
	movl      %eax, output_format(%rip)
.L306:
	cmpb      $0, ignore_case(%rip)
	je        .L312
	call      __ctype_toupper_loc
	xorl      %edx, %edx
	.p2align 4,,10
	.p2align 3
.L311:
	movq      (%rax), %rcx
	movl      (%rcx,%rdx,4), %ecx
	addq      $1, %rdx
	movb      %cl, folded_chars-1(%rdx)
	cmpq      $256, %rdx
	jne       .L311
.L312:
	movq      context_regex(%rip), %rax
	testq     %rax, %rax
	je        .L750
	cmpb      $0, (%rax)
	jne       .L313
	movq      $0, context_regex(%rip)
.L314:
	cmpq      $0, word_regex(%rip)
	je        .L316
	movl      $word_regex, %edi
	call      compile_regex
	movq      break_file(%rip), %rdi
	testq     %rdi, %rdi
	je        .L321
.L318:
	leaq      80(%rsp), %rsi
	call      swallow_file_in_memory
	movl      $word_fastmap, %edx
	movq      $72340172838076673, %rax
	movl      $32, %ecx
	movq      %rdx, %rdi
	rep stosq     
	movq      80(%rsp), %rdi
	movq      88(%rsp), %rcx
	cmpq      %rcx, %rdi
	movq      %rdi, %rax
	jae       .L326
.L657:
	movzbl    (%rax), %edx
	addq      $1, %rax
	cmpq      %rcx, %rax
	movb      $0, word_fastmap(%rdx)
	jne       .L657
.L326:
	cmpb      $0, gnu_extensions(%rip)
	jne       .L323
	movb      $0, word_fastmap+32(%rip)
	movb      $0, word_fastmap+9(%rip)
	movb      $0, word_fastmap+10(%rip)
.L323:
	call      free
.L321:
	movq      ignore_file(%rip), %rdi
	testq     %rdi, %rdi
	je        .L328
	movl      $ignore_table, %esi
	call      digest_word_file
	cmpq      $0, ignore_table+16(%rip)
	jne       .L328
	movq      $0, ignore_file(%rip)
.L328:
	movq      only_file(%rip), %rdi
	testq     %rdi, %rdi
	je        .L331
	movl      $only_table, %esi
	call      digest_word_file
	cmpq      $0, only_table+16(%rip)
	jne       .L331
	movq      $0, only_file(%rip)
.L331:
	movq      $0, number_of_occurs(%rip)
	movl      $0, total_line_count(%rip)
	movl      $0, maximum_word_length(%rip)
	movl      $0, reference_max_width(%rip)
	movq      $0, 40(%rsp)
.L333:
	movl      40(%rsp), %eax
	cmpl      %eax, number_input_files(%rip)
	jle       .L751
	movq      40(%rsp), %rdi
	movq      input_file_name(%rip), %rax
	movq      %rdi, %r14
	movq      (%rax,%rdi,8), %rdi
	salq      $4, %r14
	movq      %r14, %rsi
	addq      text_buffers(%rip), %rsi
	call      swallow_file_in_memory
	addq      text_buffers(%rip), %r14
	cmpb      $0, input_reference(%rip)
	movq      %r14, 8(%rsp)
	movq      (%r14), %r15
	je        .L584
	movq      8(%r14), %r12
	cmpq      %r12, %r15
	movq      %r12, %rbx
	jae       .L585
	call      __ctype_b_loc
	movq      (%rax), %rdx
	movq      %r15, %rax
	jmp       .L336
.L338:
	addq      $1, %rax
	cmpq      %r12, %rax
	je        .L335
.L336:
	movzbl    (%rax), %ecx
	testb     $32, 1(%rdx,%rcx,2)
	je        .L338
	movq      %rax, %rbx
	subl      %r15d, %eax
	cmpq      %rbx, %r12
	movl      %eax, 24(%rsp)
	ja        .L656
	jmp       .L334
.L341:
	addq      $1, %rbx
	cmpq      %r12, %rbx
	je        .L334
.L656:
	movzbl    (%rbx), %eax
	testb     $32, 1(%rdx,%rax,2)
	jne       .L341
	jmp       .L334
.L750:
	cmpb      $0, gnu_extensions(%rip)
	je        .L315
	cmpb      $0, input_reference(%rip)
	jne       .L315
	movq      $.LC72, context_regex(%rip)
.L313:
	movl      $context_regex, %edi
	call      compile_regex
	jmp       .L314
.L584:
	movq      8(%rsp), %rax
	movq      %r15, %rbx
	movl      $0, 24(%rsp)
	movq      8(%rax), %r12
.L334:
	movq      %r15, %rbp
.L337:
	cmpq      %r15, %r12
	movq      %r12, 72(%rsp)
	jbe       .L752
	cmpq      $0, context_regex(%rip)
	je        .L342
	movq      72(%rsp), %rdx
	xorl      %ecx, %ecx
	movl      $context_regs, %r9d
	movq      %r15, %rsi
	movl      $context_regex+8, %edi
	subq      %r15, %rdx
	movl      %edx, %r8d
	call      re_search
	cmpl      $-2, %eax
	je        .L423
	addl      $1, %eax
	je        .L345
	movq      context_regs+16(%rip), %rax
	movslq    (%rax), %rax
	addq      %r15, %rax
	movq      %rax, 72(%rsp)
.L345:
	cmpq      72(%rsp), %r15
	movq      72(%rsp), %r13
	jae       .L346
.L342:
	call      __ctype_b_loc
	movq      72(%rsp), %r13
	movq      (%rax), %rdx
	jmp       .L347
	.p2align 4,,10
	.p2align 3
.L349:
	subq      $1, %r13
	cmpq      %r13, %r15
	jae       .L346
.L347:
	movzbl    -1(%r13), %eax
	testb     $32, 1(%rdx,%rax,2)
	jne       .L349
.L346:
	movq      %r15, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L348:
	cmpq      $0, word_regex(%rip)
	je        .L753
.L350:
	movq      %r13, %rdx
	xorl      %ecx, %ecx
	movl      $word_regs, %r9d
	subq      %r15, %rdx
	movq      %r15, %rsi
	movl      $word_regex+8, %edi
	movl      %edx, %r8d
	call      re_search
	cmpl      $-2, %eax
	je        .L423
	cmpl      $-1, %eax
	je        .L355
	movq      word_regs+8(%rip), %rax
	movslq    (%rax), %r8
	movq      word_regs+16(%rip), %rax
	movslq    (%rax), %rax
	leaq      (%r15,%r8), %r14
	addq      %rax, %r15
.L356:
	cmpq      %r14, %r15
	je        .L754
	movq      %r15, %rax
	movq      %r14, 80(%rsp)
	subq      %r14, %rax
	movswq    %ax, %r15
	movw      %ax, 88(%rsp)
	cwtl      
	addq      %r14, %r15
	cmpl      maximum_word_length(%rip), %eax
	jle       .L363
	movl      %eax, maximum_word_length(%rip)
.L363:
	movzbl    input_reference(%rip), %eax
	testb     %al, %al
	movb      %al, 16(%rsp)
	je        .L364
	cmpq      %rbx, %r14
	jbe       .L365
	movl      total_line_count(%rip), %r12d
	movl      24(%rsp), %eax
	movl      %r12d, %edi
	movq      %rbp, %r12
	movl      %edi, %ebp
	jmp       .L371
	.p2align 4,,10
	.p2align 3
.L366:
	addq      $1, %rbx
.L370:
	cmpq      %rbx, %r14
	jbe       .L755
.L371:
	cmpb      $10, (%rbx)
	jne       .L366
	movq      8(%rsp), %rax
	leaq      1(%rbx), %r12
	addl      $1, %ebp
	movq      8(%rax), %rbx
	cmpq      %rbx, %r12
	jae       .L586
	call      __ctype_b_loc
	movq      (%rax), %rcx
	movq      %r12, %rax
	jmp       .L368
	.p2align 4,,10
	.p2align 3
.L369:
	addq      $1, %rax
	cmpq      %rbx, %rax
	je        .L726
.L368:
	movzbl    (%rax), %edx
	testb     $32, 1(%rcx,%rdx,2)
	je        .L369
	movq      %rax, %rbx
.L726:
	movl      %ebx, %eax
	subl      %r12d, %eax
	cmpq      %rbx, %r14
	ja        .L371
.L755:
	movl      %eax, 24(%rsp)
	movl      %ebp, %eax
	movq      %r12, %rbp
	movl      %eax, total_line_count(%rip)
.L365:
	cmpq      %rbx, %r14
	jb        .L348
.L364:
	cmpq      $0, ignore_file(%rip)
	je        .L372
	movq      ignore_table+16(%rip), %rdx
	movq      ignore_table(%rip), %rsi
	leaq      80(%rsp), %rdi
	call      search_table.isra.0
	testl     %eax, %eax
	jne       .L348
.L372:
	cmpq      $0, only_file(%rip)
	je        .L373
	movq      only_table+16(%rip), %rdx
	movq      only_table(%rip), %rsi
	leaq      80(%rsp), %rdi
	call      search_table.isra.0
	testl     %eax, %eax
	je        .L348
.L373:
	movq      number_of_occurs(%rip), %rdi
	cmpq      occurs_alloc(%rip), %rdi
	movq      occurs_table(%rip), %rax
	je        .L756
.L375:
	movq      %rdi, %rsi
	salq      $5, %rsi
	addq      %rax, %rsi
	cmpb      $0, auto_reference(%rip)
	je        .L377
	cmpq      %rbx, %r14
	movl      total_line_count(%rip), %eax
	jbe       .L379
	movq      %r13, 48(%rsp)
	movq      %r14, %r12
	movq      %rdi, 56(%rsp)
	movq      %rsi, 64(%rsp)
	movl      %eax, %r13d
	jmp       .L654
	.p2align 4,,10
	.p2align 3
.L380:
	addq      $1, %rbx
.L381:
	cmpq      %rbx, %r12
	jbe       .L757
.L654:
	cmpb      $10, (%rbx)
	jne       .L380
	movq      8(%rsp), %rax
	leaq      1(%rbx), %rbp
	addl      $1, %r13d
	movq      8(%rax), %r14
	cmpq      %r14, %rbp
	jae       .L587
	call      __ctype_b_loc
	movq      %rbp, %rbx
	movq      (%rax), %rcx
	jmp       .L382
	.p2align 4,,10
	.p2align 3
.L383:
	addq      $1, %rbx
	cmpq      %r14, %rbx
	je        .L588
.L382:
	movzbl    (%rbx), %eax
	testb     $32, 1(%rcx,%rax,2)
	je        .L383
.L588:
	cmpq      %rbx, %r12
	movl      %r13d, %eax
	ja        .L654
.L757:
	movl      %r13d, %r9d
	movq      56(%rsp), %rdi
	movq      64(%rsp), %rsi
	movq      48(%rsp), %r13
	movq      %r12, %r14
	movl      %r9d, total_line_count(%rip)
.L379:
	movl      %eax, 20(%rsi)
.L385:
	cmpq      32(%rsp), %rbp
	jne       .L386
	cmpb      $0, 16(%rsp)
	jne       .L758
.L386:
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
	jne       .L350
.L753:
	cmpq      %r13, %r15
	jae       .L351
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L655
	jmp       .L759
	.p2align 4,,10
	.p2align 3
.L761:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	jne       .L760
.L655:
	addq      $1, %r15
	cmpq      %r13, %r15
	jne       .L761
.L355:
	movq      8(%rsp), %rax
	movq      72(%rsp), %r15
	movq      8(%rax), %r12
	jmp       .L337
	.p2align 4,,10
	.p2align 3
.L754:
	addq      $1, %r15
	jmp       .L348
	.p2align 4,,10
	.p2align 3
.L760:
	movq      %r15, %r14
	jne       .L360
	jmp       .L356
	.p2align 4,,10
	.p2align 3
.L762:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L356
.L360:
	addq      $1, %r15
	cmpq      %r13, %r15
	jb        .L762
	jmp       .L356
.L377:
	cmpb      $0, 16(%rsp)
	je        .L386
	movq      %rbp, %rax
	subq      %r14, %rax
	cwtl      
	movl      %eax, 20(%rsi)
	movl      24(%rsp), %eax
	cmpl      %eax, reference_max_width(%rip)
	jge       .L385
	movl      %eax, reference_max_width(%rip)
	jmp       .L385
.L756:
	movq      $288230376151711743, %rax
	cmpq      %rax, %rdi
	ja        .L763
	leaq      1(%rdi,%rdi), %rsi
	movq      occurs_table(%rip), %rdi
	movq      %rsi, occurs_alloc(%rip)
	salq      $5, %rsi
	call      xrealloc
	movzbl    input_reference(%rip), %esi
	movq      %rax, occurs_table(%rip)
	movq      number_of_occurs(%rip), %rdi
	movb      %sil, 16(%rsp)
	jmp       .L375
.L586:
	movq      %r12, %rbx
	xorl      %eax, %eax
	jmp       .L370
.L758:
	movq      32(%rsp), %r12
	cmpq      %r13, %r12
	jae       .L386
	movq      %rsi, 32(%rsp)
	movq      %rdi, 16(%rsp)
	call      __ctype_b_loc
	movq      16(%rsp), %rdi
	movq      (%rax), %rax
	movq      %r12, %rdx
	movq      32(%rsp), %rsi
	jmp       .L388
	.p2align 4,,10
	.p2align 3
.L389:
	addq      $1, %rdx
	cmpq      %r13, %rdx
	je        .L723
.L388:
	movzbl    (%rdx), %ecx
	testb     $32, 1(%rax,%rcx,2)
	je        .L389
	movq      %rdx, %rcx
	movq      %rdx, 32(%rsp)
	movq      32(%rsp), %rdx
	cmpq      %rcx, %r13
	ja        .L653
	jmp       .L386
	.p2align 4,,10
	.p2align 3
.L392:
	addq      $1, %rdx
	cmpq      %r13, %rdx
	je        .L723
.L653:
	movzbl    (%rdx), %ecx
	testb     $32, 1(%rax,%rcx,2)
	jne       .L392
.L723:
	movq      %rdx, 32(%rsp)
	jmp       .L386
.L759:
	movq      %r15, %r14
	jmp       .L360
.L587:
	movl      %r13d, %eax
	movq      %rbp, %rbx
	jmp       .L381
.L351:
	je        .L355
	movq      %r15, %r14
	jmp       .L356
.L423:
	call      matcher_error
.L316:
	movq      break_file(%rip), %rdi
	testq     %rdi, %rdi
	jne       .L318
	cmpb      $0, gnu_extensions(%rip)
	je        .L319
	call      __ctype_b_loc
	xorl      %ecx, %ecx
.L320:
	movq      (%rax), %rdx
	movzwl    (%rdx,%rcx,2), %edx
	addq      $1, %rcx
	shrw      $10, %dx
	andl      $1, %edx
	movb      %dl, word_fastmap-1(%rcx)
	cmpq      $256, %rcx
	jne       .L320
	jmp       .L321
.L303:
	movq      input_file_name(%rip), %rcx
	movq      %rdx, (%rcx)
	jmp       .L304
.L752:
	movl      total_line_count(%rip), %eax
	movq      40(%rsp), %rdi
	movq      file_line_count(%rip), %rdx
	addl      $1, %eax
	movl      %eax, (%rdx,%rdi,4)
	addq      $1, %rdi
	movl      %eax, total_line_count(%rip)
	movq      %rdi, 40(%rsp)
	jmp       .L333
.L585:
	movq      %r15, %rbx
.L335:
	movl      %ebx, %eax
	subl      %r15d, %eax
	movl      %eax, 24(%rsp)
	jmp       .L334
.L751:
	movq      number_of_occurs(%rip), %rsi
	testq     %rsi, %rsi
	jne       .L764
.L395:
	cmpb      $0, auto_reference(%rip)
	je        .L405
	movl      $0, reference_max_width(%rip)
	xorl      %ebx, %ebx
	leaq      80(%rsp), %r12
	orq       $-1, %rbp
	jmp       .L399
.L404:
	movq      file_line_count(%rip), %rax
	testl     %ebx, %ebx
	leaq      0(,%rbx,4), %rdx
	movl      (%rax,%rbx,4), %edi
	leal      1(%rdi), %r8d
	jle       .L400
	subl      -4(%rax,%rdx), %r8d
.L400:
	movl      $.LC74, %ecx
	movl      $12, %edx
	movq      %r12, %rdi
	xorl      %eax, %eax
	movl      $1, %esi
	call      __sprintf_chk
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
	je        .L765
	movq      %rbp, %rcx
	repnz scasb     
	movq      %rcx, %rax
	notq      %rax
	leal      -1(%rax,%rdx), %eax
.L402:
	cmpl      %eax, reference_max_width(%rip)
	cmovge    reference_max_width(%rip), %eax
	addq      $1, %rbx
	movl      %eax, reference_max_width(%rip)
.L399:
	cmpl      number_input_files(%rip), %ebx
	jl        .L404
	movl      reference_max_width(%rip), %eax
	addl      $1, %eax
	movl      %eax, reference_max_width(%rip)
	cltq      
	leaq      1(%rax), %rdi
	call      xmalloc
	cmpb      $0, auto_reference(%rip)
	movq      %rax, reference(%rip)
	jne       .L397
.L405:
	cmpb      $0, input_reference(%rip)
	je        .L407
.L397:
	cmpb      $0, right_reference(%rip)
	jne       .L407
	movl      gap_size(%rip), %eax
	addl      reference_max_width(%rip), %eax
	subl      %eax, line_width(%rip)
.L407:
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
	je        .L408
	cmpb      $0, (%rdi)
	je        .L408
	xorl      %eax, %eax
	orq       $-1, %rcx
	repnz scasb     
	movq      %rcx, %rsi
	notq      %rsi
	movq      %rsi, %rcx
	subq      $1, %rcx
	movl      %ecx, truncation_string_length(%rip)
.L409:
	cmpb      $0, gnu_extensions(%rip)
	je        .L410
	imull     $-2, truncation_string_length(%rip), %eax
	movl      $0, %ecx
	addl      %eax, %edx
	cmovs     %ecx, %edx
	addl      %r8d, %eax
	movl      %edx, before_max_width(%rip)
	movl      %eax, keyafter_max_width(%rip)
.L413:
	call      __ctype_b_loc
	movq      (%rax), %rcx
	movq      %rax, %r14
	xorl      %edx, %edx
.L412:
	movzwl    (%rcx,%rdx,2), %eax
	addq      $1, %rdx
	shrw      $13, %ax
	andl      $1, %eax
	movb      %al, edited_flag-1(%rdx)
	cmpq      $256, %rdx
	jne       .L412
	movl      output_format(%rip), %eax
	movb      $1, edited_flag+12(%rip)
	cmpl      $2, %eax
	je        .L415
	cmpl      $3, %eax
	jne       .L414
	movl      $.LC62, %edx
	jmp       .L416
.L630:
	movb      $1, edited_flag(%rax)
	addq      $1, %rdx
.L416:
	movzbl    (%rdx), %eax
	testb     %al, %al
	jne       .L630
	xorl      %eax, %eax
.L418:
	cmpb      $0, diacrit_diac+128(%rax)
	setne     edited_flag+128(%rax)
	addq      $1, %rax
	cmpq      $128, %rax
	jne       .L418
.L414:
	movq      occurs_table(%rip), %r13
	movq      $0, tail(%rip)
	movl      $1, %r12d
	movq      $0, tail+8(%rip)
	movl      $0, tail_truncation(%rip)
	movq      $0, head(%rip)
	movq      $0, head+8(%rip)
	movl      $0, head_truncation(%rip)
	movq      $0, 24(%rsp)
.L419:
	movq      24(%rsp), %rax
	cmpq      number_of_occurs(%rip), %rax
	jae       .L766
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
	jae       .L420
	movslq    keyafter_max_width(%rip), %rcx
	movq      %rax, %rsi
	movq      %rcx, %rdx
	addq      %rax, %rcx
	cmpq      %rcx, %rbx
	jbe       .L430
	jmp       .L431
	.p2align 4,,10
	.p2align 3
.L767:
	movq      %rbp, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	subq      %rbx, %rdx
	movq      %rbx, %rsi
	movl      $word_regex+8, %edi
	call      re_match
	cmpl      $-2, %eax
	je        .L423
	movslq    %eax, %rdx
	cmpl      $-1, %eax
	movq      %rdx, %rax
	movl      keyafter_max_width(%rip), %edx
	cmove     %r12, %rax
	addq      %rax, %rbx
.L425:
	cmpq      %rbp, %rbx
	jae       .L420
.L429:
	movq      keyafter(%rip), %rsi
	movslq    %edx, %rax
	addq      %rsi, %rax
	cmpq      %rax, %rbx
	ja        .L431
.L430:
	cmpq      $0, word_regex(%rip)
	movq      %rbx, keyafter+8(%rip)
	jne       .L767
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L426
	cmpq      %rbx, %rbp
	ja        .L428
	jmp       .L420
	.p2align 4,,10
	.p2align 3
.L768:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L429
.L428:
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L768
.L420:
	movq      keyafter(%rip), %rsi
	movslq    %edx, %rax
	addq      %rsi, %rax
	cmpq      %rax, %rbx
	ja        .L431
	movq      %rbx, keyafter+8(%rip)
.L431:
	cmpq      $0, truncation_string(%rip)
	je        .L593
	xorl      %eax, %eax
	cmpq      keyafter+8(%rip), %rbp
	seta      %al
.L432:
	movq      keyafter+8(%rip), %rcx
	movl      %eax, keyafter_truncation(%rip)
	cmpq      %rcx, %rsi
	jae       .L437
	movq      (%r14), %r9
	leaq      -1(%rcx), %rdx
	leaq      -1(%rsi), %r8
	jmp       .L436
	.p2align 4,,10
	.p2align 3
.L438:
	subq      $1, %rdx
	movq      %rdi, %rcx
	cmpq      %r8, %rdx
	je        .L727
.L436:
	movzbl    (%rdx), %eax
	movq      %rdx, %rdi
	testb     $32, 1(%r9,%rax,2)
	jne       .L438
.L727:
	movq      %rcx, keyafter+8(%rip)
.L437:
	movswq    16(%r13), %rcx
	movl      maximum_word_length(%rip), %eax
	addl      half_line_width(%rip), %eax
	movq      %rcx, %rdx
	negl      %ecx
	cmpl      %eax, %ecx
	jle       .L769
	cltq      
	movq      %rsi, %rbx
	subq      %rax, %rbx
	cmpq      $0, word_regex(%rip)
	je        .L439
	subq      %rbx, %rsi
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	movq      %rsi, %rdx
	movl      $word_regex+8, %edi
	movq      %rbx, %rsi
	call      re_match
	cmpl      $-2, %eax
	je        .L423
	cmpl      $-1, %eax
	je        .L594
	cltq      
.L440:
	movq      keyafter(%rip), %rsi
	addq      %rax, %rbx
.L441:
	cmpq      %rsi, %rbx
	movq      %rbx, before(%rip)
	movq      %rsi, %rax
	movq      %rsi, before+8(%rip)
	jae       .L448
	movq      (%r14), %r8
	leaq      -1(%rsi), %rdx
	leaq      -1(%rbx), %rdi
	jmp       .L447
	.p2align 4,,10
	.p2align 3
.L449:
	subq      $1, %rdx
	movq      %rsi, %rax
	cmpq      %rdi, %rdx
	je        .L728
.L447:
	movzbl    (%rdx), %ecx
	movq      %rdx, %rsi
	testb     $32, 1(%r8,%rcx,2)
	jne       .L449
.L728:
	movq      %rax, before+8(%rip)
.L448:
	movl      before_max_width(%rip), %ecx
	movq      before+8(%rip), %rdx
	movq      %rbx, %rsi
.L446:
	movslq    %ecx, %rax
	addq      %rsi, %rax
	cmpq      %rax, %rdx
	jbe       .L770
.L456:
	cmpq      $0, word_regex(%rip)
	je        .L450
	subq      %rsi, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	movl      $word_regex+8, %edi
	call      re_match
	cmpl      $-2, %eax
	je        .L423
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
	ja        .L456
.L770:
	cmpq      $0, truncation_string(%rip)
	je        .L457
	cmpq      %rsi, 8(%rsp)
	jae       .L458
	movq      (%r14), %rdi
	jmp       .L459
	.p2align 4,,10
	.p2align 3
.L460:
	subq      $1, %rsi
	cmpq      8(%rsp), %rsi
	je        .L458
.L459:
	movzbl    -1(%rsi), %eax
	testb     $32, 1(%rdi,%rax,2)
	jne       .L460
.L458:
	xorl      %eax, %eax
	cmpq      %rsi, 32(%rsp)
	setb      %al
	movl      %eax, before_truncation(%rip)
.L461:
	movq      before(%rip), %rax
	cmpq      %rax, %r15
	jbe       .L462
	movq      (%r14), %rdi
	jmp       .L463
	.p2align 4,,10
	.p2align 3
.L464:
	addq      $1, %rax
	cmpq      %r15, %rax
	je        .L729
.L463:
	movzbl    (%rax), %esi
	testb     $32, 1(%rdi,%rsi,2)
	jne       .L464
.L729:
	movq      %rax, before(%rip)
.L462:
	subl      gap_size(%rip), %ecx
	subq      %rdx, %rax
	addl      %ecx, %eax
	testl     %eax, %eax
	jle       .L465
	movq      keyafter+8(%rip), %r9
	cmpq      %r9, %r15
	movq      %r9, tail(%rip)
	jbe       .L466
	movq      (%r14), %rcx
	jmp       .L467
.L468:
	addq      $1, %r9
	cmpq      %r15, %r9
	je        .L730
.L467:
	movzbl    (%r9), %edx
	testb     $32, 1(%rcx,%rdx,2)
	jne       .L468
.L730:
	movq      %r9, tail(%rip)
.L466:
	cmpq      %r9, %rbp
	movq      %r9, tail+8(%rip)
	movslq    %eax, %r15
	movq      tail(%rip), %rdx
	ja        .L711
	jmp       .L469
	.p2align 4,,10
	.p2align 3
.L771:
	movq      %rbp, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	subq      %r9, %rdx
	movq      %r9, %rsi
	movl      $word_regex+8, %edi
	movq      %r9, 16(%rsp)
	call      re_match
	cmpl      $-2, %eax
	je        .L423
	movslq    %eax, %rdx
	movq      16(%rsp), %r9
	cmpl      $-1, %eax
	movq      %rdx, %rax
	movq      tail(%rip), %rdx
	cmove     %r12, %rax
	addq      %rax, %r9
.L473:
	cmpq      %rbp, %r9
	jae       .L469
.L711:
	leaq      (%rdx,%r15), %rax
	cmpq      %rax, %r9
	jae       .L479
	cmpq      $0, word_regex(%rip)
	movq      %r9, tail+8(%rip)
	jne       .L771
	movzbl    (%r9), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L474
	cmpq      %r9, %rbp
	ja        .L476
	jmp       .L469
	.p2align 4,,10
	.p2align 3
.L772:
	movzbl    (%r9), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L711
.L476:
	addq      $1, %r9
	cmpq      %rbp, %r9
	jne       .L772
.L469:
	leaq      (%rdx,%r15), %rax
	cmpq      %rax, %r9
	jae       .L479
	movq      %r9, tail+8(%rip)
.L479:
	movq      tail+8(%rip), %rcx
	cmpq      %rcx, %rdx
	jae       .L480
	cmpq      %rcx, %rbp
	movl      $0, keyafter_truncation(%rip)
	seta      %al
	xorl      %esi, %esi
	cmpq      $0, truncation_string(%rip)
	setne     %sil
	andl      %esi, %eax
	movl      %eax, tail_truncation(%rip)
.L481:
	cmpq      %rcx, %rdx
	jae       .L483
	movq      (%r14), %r8
	leaq      -1(%rcx), %rax
	subq      $1, %rdx
	jmp       .L484
.L486:
	subq      $1, %rax
	movq      %rdi, %rcx
	cmpq      %rdx, %rax
	je        .L731
.L484:
	movzbl    (%rax), %esi
	movq      %rax, %rdi
	testb     $32, 1(%r8,%rsi,2)
	jne       .L486
.L731:
	movq      %rcx, tail+8(%rip)
.L483:
	movl      keyafter_max_width(%rip), %edx
	movq      keyafter(%rip), %r15
	subl      gap_size(%rip), %edx
	subq      keyafter+8(%rip), %r15
	addl      %r15d, %edx
	testl     %edx, %edx
	jle       .L487
	movq      before(%rip), %rsi
	cmpq      %rsi, 8(%rsp)
	movq      %rsi, head+8(%rip)
	jae       .L491
	movq      8(%rsp), %rcx
	movq      (%r14), %r9
	leaq      -1(%rsi), %rax
	subq      $1, %rcx
	jmp       .L490
.L492:
	subq      $1, %rax
	movq      %r8, %rsi
	cmpq      %rcx, %rax
	je        .L732
.L490:
	movzbl    (%rax), %edi
	movq      %rax, %r8
	testb     $32, 1(%r9,%rdi,2)
	jne       .L492
.L732:
	movq      %rsi, head+8(%rip)
.L491:
	movslq    %edx, %r15
	movq      head+8(%rip), %rdx
	movq      %rbx, head(%rip)
	leaq      (%rbx,%r15), %rax
	movq      %rbx, %rsi
.L489:
	cmpq      %rax, %rdx
	jbe       .L773
.L499:
	cmpq      $0, word_regex(%rip)
	je        .L493
	subq      %rsi, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	movl      $word_regex+8, %edi
	call      re_match
	cmpl      $-2, %eax
	je        .L423
	cmpl      $-1, %eax
	movslq    %eax, %rsi
	movq      head+8(%rip), %rdx
	cmove     %r12, %rsi
	addq      head(%rip), %rsi
	leaq      (%rsi,%r15), %rax
	movq      %rsi, head(%rip)
	cmpq      %rax, %rdx
	ja        .L499
.L773:
	cmpq      %rdx, %rsi
	jae       .L500
	cmpq      $0, truncation_string(%rip)
	movl      $0, before_truncation(%rip)
	je        .L601
	xorl      %eax, %eax
	cmpq      %rsi, 32(%rsp)
	setb      %al
.L501:
	movl      %eax, head_truncation(%rip)
.L502:
	cmpq      %rdx, %rsi
	jae       .L504
	movq      (%r14), %rdi
	movq      head(%rip), %rcx
	jmp       .L505
.L507:
	addq      $1, %rsi
	cmpq      %rdx, %rsi
	movq      %rsi, %rcx
	je        .L774
.L505:
	movzbl    (%rsi), %eax
	testb     $32, 1(%rdi,%rax,2)
	jne       .L507
	movq      %rcx, head(%rip)
.L504:
	cmpb      $0, auto_reference(%rip)
	je        .L508
	movq      24(%r13), %rax
	movq      input_file_name(%rip), %rdx
	movl      20(%r13), %edi
	movq      (%rdx,%rax,8), %r8
	movl      $.LC13, %edx
	leal      1(%rdi), %r9d
	testq     %r8, %r8
	cmove     %rdx, %r8
	testq     %rax, %rax
	je        .L510
	movq      file_line_count(%rip), %rdx
	subl      -4(%rdx,%rax,4), %r9d
.L510:
	movq      reference(%rip), %rdi
	movl      $.LC75, %ecx
	orq       $-1, %rdx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __sprintf_chk
	movq      reference(%rip), %rdx
	xorl      %eax, %eax
	orq       $-1, %rcx
	movq      %rdx, %rdi
	repnz scasb     
	movq      %rcx, %rax
	notq      %rax
	leaq      -1(%rdx,%rax), %rax
	movq      %rax, reference+8(%rip)
.L511:
	movl      output_format(%rip), %eax
	cmpl      $2, %eax
	je        .L517
	jb        .L518
	cmpl      $3, %eax
	jne       .L516
	movq      macro_name(%rip), %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	movl      $.LC78, %esi
	call      __printf_chk
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L775
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $123, (%rax)
.L563:
	movq      tail(%rip), %rdi
	movq      tail+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rsi
	movl      $.LC79, %edi
	call      fputs_unlocked
	movq      before(%rip), %rdi
	movq      before+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rsi
	movl      $.LC79, %edi
	call      fputs_unlocked
	cmpq      $0, word_regex(%rip)
	movq      keyafter(%rip), %r15
	movq      keyafter+8(%rip), %rbx
	movq      %r15, %rbp
	je        .L564
	movq      %rbx, %rdx
	xorl      %r8d, %r8d
	xorl      %ecx, %ecx
	subq      %r15, %rdx
	movq      %r15, %rsi
	movl      $word_regex+8, %edi
	call      re_match
	cmpl      $-2, %eax
	je        .L423
	cmpl      $-1, %eax
	je        .L608
	cltq      
.L565:
	addq      %rax, %r15
.L566:
	movq      %rbp, %rdi
	movq      %r15, %rsi
	call      print_field
	movq      stdout(%rip), %rsi
	movl      $.LC79, %edi
	call      fputs_unlocked
	movq      %r15, %rdi
	movq      %rbx, %rsi
	call      print_field
	movq      stdout(%rip), %rsi
	movl      $.LC79, %edi
	call      fputs_unlocked
	movq      head(%rip), %rdi
	movq      head+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L776
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $125, (%rax)
.L571:
	cmpb      $0, auto_reference(%rip)
	jne       .L572
	cmpb      $0, input_reference(%rip)
	je        .L573
.L572:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L777
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $123, (%rax)
.L575:
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L778
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $125, (%rax)
.L573:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L779
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $10, (%rax)
.L516:
	addq      $32, %r13
	addq      $1, 24(%rsp)
	jmp       .L419
.L766:
	addq      $104, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L450:
	movzbl    (%rsi), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L453
	cmpq      %rsi, %rdx
	jbe       .L446
	addq      $1, %rsi
	jmp       .L455
	.p2align 4,,10
	.p2align 3
.L454:
	movzbl    (%rax), %edi
	addq      $1, %rsi
	cmpb      $0, word_fastmap(%rdi)
	je        .L780
.L455:
	cmpq      %rdx, %rsi
	movq      %rsi, %rax
	jne       .L454
	movq      %rdx, before(%rip)
	movq      %rdx, %rsi
	jmp       .L446
.L493:
	movzbl    (%rsi), %ecx
	cmpb      $0, word_fastmap(%rcx)
	je        .L496
	cmpq      %rsi, %rdx
	jbe       .L489
	leaq      1(%rsi), %rax
	jmp       .L498
	.p2align 4,,10
	.p2align 3
.L497:
	movzbl    (%rsi), %ecx
	addq      $1, %rax
	cmpb      $0, word_fastmap(%rcx)
	je        .L733
.L498:
	cmpq      %rdx, %rax
	movq      %rax, %rsi
	jne       .L497
	movq      %rdx, %rsi
	movq      %rdx, head(%rip)
	leaq      (%rdx,%r15), %rax
	jmp       .L489
.L496:
	addq      $1, %rsi
.L733:
	movq      %rsi, head(%rip)
	leaq      (%rsi,%r15), %rax
	jmp       .L489
.L453:
	addq      $1, %rsi
	movq      %rsi, before(%rip)
	jmp       .L446
.L426:
	addq      $1, %rbx
	jmp       .L425
.L474:
	addq      $1, %r9
	jmp       .L473
.L780:
	movq      %rax, %rsi
	movq      %rax, before(%rip)
	jmp       .L446
.L500:
	movl      $0, head_truncation(%rip)
	jmp       .L502
.L774:
	movq      %rsi, head(%rip)
	jmp       .L504
.L480:
	movl      $0, tail_truncation(%rip)
	jmp       .L481
.L508:
	cmpb      $0, input_reference(%rip)
	je        .L511
	movswq    20(%r13), %rax
	addq      keyafter(%rip), %rax
	movq      %rax, reference(%rip)
	movq      %rax, reference+8(%rip)
	jmp       .L515
.L513:
	movzbl    (%rdx), %esi
	movq      (%r14), %rcx
	addq      $1, %rax
	testb     $32, 1(%rcx,%rsi,2)
	jne       .L781
.L515:
	cmpq      %rax, %rbp
	movq      %rax, %rdx
	ja        .L513
	movq      %rax, reference+8(%rip)
	jmp       .L511
.L769:
	leaq      (%rsi,%rdx), %rbx
	jmp       .L441
.L593:
	xorl      %eax, %eax
	jmp       .L432
.L457:
	movl      $0, before_truncation(%rip)
	jmp       .L461
.L465:
	movq      $0, tail(%rip)
	movq      $0, tail+8(%rip)
	movl      $0, tail_truncation(%rip)
	jmp       .L483
.L487:
	movq      $0, head(%rip)
	movq      $0, head+8(%rip)
	movl      $0, head_truncation(%rip)
	jmp       .L504
.L518:
	cmpb      $0, right_reference(%rip)
	jne       .L520
	cmpb      $0, auto_reference(%rip)
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	je        .L521
	call      print_field
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L782
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $58, (%rax)
.L523:
	movl      gap_size(%rip), %edx
	movq      reference(%rip), %rax
	addl      reference_max_width(%rip), %edx
	subq      reference+8(%rip), %rax
	leal      -1(%rdx,%rax), %edi
	call      print_spaces
.L520:
	movq      tail(%rip), %rdi
	cmpq      tail+8(%rip), %rdi
	jb        .L783
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
.L528:
	cmpl      $0, before_truncation(%rip)
	jne       .L784
.L530:
	movq      before+8(%rip), %rsi
	movq      before(%rip), %rdi
	call      print_field
	movl      gap_size(%rip), %edi
	call      print_spaces
	movq      keyafter(%rip), %rdi
	movq      keyafter+8(%rip), %rsi
	call      print_field
	cmpl      $0, keyafter_truncation(%rip)
	jne       .L785
	movq      head(%rip), %rdx
	movq      head+8(%rip), %rcx
	cmpq      %rcx, %rdx
	jae       .L532
	movq      keyafter(%rip), %rax
	subq      keyafter+8(%rip), %rax
	xorl      %esi, %esi
	addl      half_line_width(%rip), %eax
.L533:
	subq      %rcx, %rdx
	subl      %esi, %eax
	addl      %edx, %eax
	cmpl      $0, head_truncation(%rip)
	movl      $0, %edx
	cmovne    truncation_string_length(%rip), %edx
	subl      %edx, %eax
	movl      %eax, %edi
	call      print_spaces
	cmpl      $0, head_truncation(%rip)
	jne       .L786
.L535:
	movq      head(%rip), %rdi
	movq      head+8(%rip), %rsi
	call      print_field
.L536:
	cmpb      $0, auto_reference(%rip)
	jne       .L540
	cmpb      $0, input_reference(%rip)
	je        .L573
.L540:
	cmpb      $0, right_reference(%rip)
	je        .L573
	movl      gap_size(%rip), %edi
	call      print_spaces
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	call      print_field
	jmp       .L573
.L532:
	cmpb      $0, auto_reference(%rip)
	jne       .L537
	cmpb      $0, input_reference(%rip)
	je        .L573
	cmpb      $0, right_reference(%rip)
	je        .L540
.L581:
	movq      keyafter(%rip), %rdi
	subq      keyafter+8(%rip), %rdi
	movl      $0, %eax
	addl      half_line_width(%rip), %edi
	cmpl      $0, keyafter_truncation(%rip)
	cmovne    truncation_string_length(%rip), %eax
	subl      %eax, %edi
	call      print_spaces
	jmp       .L536
.L517:
	movq      macro_name(%rip), %rdx
	movl      $.LC76, %esi
	movl      $1, %edi
	xorl      %eax, %eax
	call      __printf_chk
	movq      tail(%rip), %rdi
	movq      tail+8(%rip), %rsi
	call      print_field
	cmpl      $0, tail_truncation(%rip)
	jne       .L787
.L546:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L788
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L548:
	movq      stdout(%rip), %rsi
	movl      $.LC77, %edi
	call      fputs_unlocked
	cmpl      $0, before_truncation(%rip)
	jne       .L789
.L549:
	movq      before(%rip), %rdi
	movq      before+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L790
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L551:
	movq      stdout(%rip), %rsi
	movl      $.LC77, %edi
	call      fputs_unlocked
	movq      keyafter(%rip), %rdi
	movq      keyafter+8(%rip), %rsi
	call      print_field
	cmpl      $0, keyafter_truncation(%rip)
	jne       .L791
.L552:
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L792
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L554:
	movq      stdout(%rip), %rsi
	movl      $.LC77, %edi
	call      fputs_unlocked
	cmpl      $0, head_truncation(%rip)
	jne       .L793
.L555:
	movq      head(%rip), %rdi
	movq      head+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L794
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
.L557:
	cmpb      $0, auto_reference(%rip)
	jne       .L558
	cmpb      $0, input_reference(%rip)
	je        .L573
.L558:
	movq      stdout(%rip), %rsi
	movl      $.LC77, %edi
	call      fputs_unlocked
	movq      reference(%rip), %rdi
	movq      reference+8(%rip), %rsi
	call      print_field
	movq      stdout(%rip), %rdi
	movq      40(%rdi), %rax
	cmpq      48(%rdi), %rax
	jae       .L795
	leaq      1(%rax), %rdx
	movq      %rdx, 40(%rdi)
	movb      $34, (%rax)
	jmp       .L573
.L781:
	movq      %rdx, reference+8(%rip)
	jmp       .L511
.L315:
	movq      $.LC73, context_regex(%rip)
	jmp       .L313
.L594:
	movl      $1, %eax
	jmp       .L440
.L439:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	jne       .L443
	addq      $1, %rbx
	jmp       .L441
.L796:
	movzbl    (%rbx), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L441
	addq      $1, %rbx
.L443:
	cmpq      %rbx, %rsi
	ja        .L796
	jmp       .L441
.L776:
	movl      $125, %esi
	call      __overflow
	jmp       .L571
.L795:
	movl      $34, %esi
	call      __overflow
	jmp       .L573
.L792:
	movl      $34, %esi
	call      __overflow
	jmp       .L554
.L791:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	jmp       .L552
.L790:
	movl      $34, %esi
	call      __overflow
	jmp       .L551
.L789:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	jmp       .L549
.L408:
	movq      $0, truncation_string(%rip)
	jmp       .L409
.L319:
	movl      $word_fastmap, %edx
	movl      $32, %ecx
	movq      $72340172838076673, %rax
	movq      %rdx, %rdi
	rep stosq     
	movb      $0, word_fastmap+32(%rip)
	movb      $0, word_fastmap+9(%rip)
	movb      $0, word_fastmap+10(%rip)
	jmp       .L321
.L794:
	movl      $34, %esi
	call      __overflow
	jmp       .L557
.L793:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	jmp       .L555
.L410:
	movl      truncation_string_length(%rip), %eax
	leal      (%rax,%rax), %edx
	notl      %edx
	leal      (%r8,%rdx), %eax
	movl      %eax, keyafter_max_width(%rip)
	jmp       .L413
.L415:
	movb      $1, edited_flag+34(%rip)
	jmp       .L414
.L747:
	call      __errno_location
	movslq    optind(%rip), %rdx
	movl      (%rax), %esi
	movl      $1, %edi
	xorl      %eax, %eax
	movq      (%rbp,%rdx,8), %rcx
	movl      $.LC8, %edx
	call      error
	jmp       .L305
.L763:
	call      xalloc_die
.L764:
	movq      occurs_table(%rip), %rdi
	movl      $compare_occurs, %ecx
	movl      $32, %edx
	call      qsort
	jmp       .L395
.L765:
	movl      %edx, %eax
	jmp       .L402
.L788:
	movl      $34, %esi
	call      __overflow
	jmp       .L548
.L787:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	jmp       .L546
.L786:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	jmp       .L535
.L785:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	movq      head(%rip), %rdx
	movq      head+8(%rip), %rcx
	cmpq      %rcx, %rdx
	jae       .L532
	movq      keyafter(%rip), %rax
	subq      keyafter+8(%rip), %rax
	movl      $0, %esi
	addl      half_line_width(%rip), %eax
	cmpl      $0, keyafter_truncation(%rip)
	cmovne    truncation_string_length(%rip), %esi
	jmp       .L533
.L784:
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
	jmp       .L530
.L783:
	movq      tail+8(%rip), %rsi
	call      print_field
	cmpl      $0, tail_truncation(%rip)
	je        .L525
	movq      stdout(%rip), %rsi
	movq      truncation_string(%rip), %rdi
	call      fputs_unlocked
.L525:
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
	jmp       .L528
.L782:
	movl      $58, %esi
	call      __overflow
	jmp       .L523
.L521:
	call      print_field
	movq      reference(%rip), %rax
	movl      gap_size(%rip), %edi
	subq      reference+8(%rip), %rax
	addl      reference_max_width(%rip), %edi
	addl      %eax, %edi
	call      print_spaces
	jmp       .L520
.L778:
	movl      $125, %esi
	call      __overflow
	jmp       .L573
.L777:
	movl      $123, %esi
	call      __overflow
	jmp       .L575
.L608:
	movl      $1, %eax
	jmp       .L565
.L564:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	jne       .L568
	addq      $1, %r15
	jmp       .L566
.L797:
	movzbl    (%r15), %eax
	cmpb      $0, word_fastmap(%rax)
	je        .L566
	addq      $1, %r15
.L568:
	cmpq      %r15, %rbx
	ja        .L797
	jmp       .L566
.L779:
	movl      $10, %esi
	call      __overflow
	jmp       .L516
.L775:
	movl      $123, %esi
	call      __overflow
	jmp       .L563
.L601:
	xorl      %eax, %eax
	jmp       .L501
.L537:
	cmpb      $0, right_reference(%rip)
	je        .L573
	jmp       .L581
.LHOTE80:
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .rodata
	.align 4
	.local	format_vals
	.type	format_vals, @object
format_vals:
	.long	2
	.long	3
	.size	format_vals, 8
# ----------------------
	.align 16
	.local	format_args
	.type	format_args, @object
format_args:
	.quad	.LC81
	.quad	.LC82
	.quad	0
	.size	format_args, 24
# ----------------------
	.align 64
	.local	long_options
	.type	long_options, @object
long_options:
	.quad	.LC83
	.long	0
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	.LC84
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC85
	.long	1
	.zero	4
	.quad	0
	.long	70
	.zero	4
	.quad	.LC86
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC87
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC88
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC89
	.long	1
	.zero	4
	.quad	0
	.long	77
	.zero	4
	.quad	.LC90
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC91
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC92
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC93
	.long	1
	.zero	4
	.quad	0
	.long	10
	.zero	4
	.quad	.LC94
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC95
	.long	0
	.zero	4
	.quad	0
	.long	71
	.zero	4
	.quad	.LC96
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC97
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC98
	.long	1
	.zero	4
	.quad	0
	.long	87
	.zero	4
	.quad	.LC99
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC100
	.long	0
	.zero	4
	.quad	0
	.long	-131
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.size	long_options, 608
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
	.comm	only_table,24,16
# ----------------------
	.local	ignore_table
	.comm	ignore_table,24,16
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
	.comm	word_regs,24,16
# ----------------------
	.local	context_regs
	.comm	context_regs,24,16
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
	.data
	.align 8
	.local	macro_name
	.type	macro_name, @object
macro_name:
	.quad	.LC101
	.size	macro_name, 8
# ----------------------
	.align 8
	.local	truncation_string
	.type	truncation_string, @object
truncation_string:
	.quad	.LC102
	.size	truncation_string, 8
# ----------------------
	.align 4
	.local	gap_size
	.type	gap_size, @object
gap_size:
	.long	3
	.size	gap_size, 4
# ----------------------
	.align 4
	.local	line_width
	.type	line_width, @object
line_width:
	.long	72
	.size	line_width, 4
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
	.local	gnu_extensions
	.type	gnu_extensions, @object
gnu_extensions:
	.byte	1
	.size	gnu_extensions, 1
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
