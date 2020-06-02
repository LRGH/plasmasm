	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $392, %rsp
	movq      %rsi, -400(%rbp)
	movl      %edi, %r15d
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rsi), %rdi
	call      _set_program_name
L00000034:
	leaq      L_.str(%rip), %rsi
	xorl      %edi, %edi
	call      _setlocale
L00000042:
	movq      _exit_failure@GOTPCREL(%rip), %rax
	movl      $2, (%rax)
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
L0000005B:
	movl      $0, _exit_status(%rip)
	movb      $1, _print_dir_name(%rip)
	movq      $0, _pending_dirs(%rip)
	movq      $-9223372036854775808, %rax
	movq      %rax, _current_time(%rip)
	movq      $-1, _current_time+8(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	je        L000000B9
L000000A8:
	cmpl      $3, %eax
	jne       L000000DE
L000000AD:
	movl      $0, _format(%rip)
	jmp       L000000F1
L000000B9:
	movl      $1, %edi
	call      _isatty
L000000C3:
	testl     %eax, %eax
	je        L00000302
L000000CB:
	movl      $2, _format(%rip)
	movb      $1, _qmark_funny_chars(%rip)
	jmp       L000000FD
L000000DE:
	cmpl      $2, %eax
	jne       L0000176C
L000000E7:
	movl      $2, _format(%rip)
L000000F1:
	xorl      %edi, %edi
	movl      $5, %esi
	call      _set_quoting_style
L000000FD:
	movl      $0, _time_type(%rip)
	movl      $0, _sort_type(%rip)
	movb      $0, _sort_reverse(%rip)
	movb      $0, _numeric_ids(%rip)
	movb      $0, _print_block_size(%rip)
	movl      $0, _indicator_style(%rip)
	movb      $0, _print_inode(%rip)
	movl      $1, _dereference(%rip)
	movb      $0, _recursive(%rip)
	movb      $0, _immediate_dirs(%rip)
	movl      $0, _ignore_mode(%rip)
	movq      $0, _ignore_patterns(%rip)
	movq      $0, _hide_patterns(%rip)
	movb      $0, _print_scontext(%rip)
	leaq      L_.str214(%rip), %rdi
	call      _getenv
L00000182:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        L000001D8
L0000018A:
	movq      _quoting_style_args@GOTPCREL(%rip), %rsi
	movq      _quoting_style_vals@GOTPCREL(%rip), %r14
	movl      $4, %ecx
	movq      %rbx, %rdi
	movq      %r14, %rdx
	call      _argmatch
L000001A8:
	testl     %eax, %eax
	js        L000001BB
L000001AC:
	cltq      
	movl      (%r14,%rax,4), %esi
	xorl      %edi, %edi
	call      _set_quoting_style
L000001B9:
	jmp       L000001D8
L000001BB:
	movq      %rbx, %rdi
	call      _quotearg
L000001C3:
	movq      %rax, %rcx
	leaq      L_.str215(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L000001D8:
	movq      $80, _line_length(%rip)
	leaq      L_.str115(%rip), %rdi
	call      _getenv
L000001EF:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        L00000248
L000001F7:
	cmpb      $0, (%rbx)
	je        L00000248
L000001FC:
	leaq      -328(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
L00000212:
	testl     %eax, %eax
	jne       L0000022B
L00000216:
	movq      -328(%rbp), %rax
	testq     %rax, %rax
	je        L0000022B
L00000222:
	movq      %rax, _line_length(%rip)
	jmp       L00000248
L0000022B:
	movq      %rbx, %rdi
	call      _quotearg
L00000233:
	movq      %rax, %rcx
	leaq      L_.str116(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000248:
	movl      %r15d, -392(%rbp)
	leaq      -336(%rbp), %rdx
	movl      $1, %edi
	movl      $1074295912, %esi
	xorl      %eax, %eax
	call      _ioctl
L00000267:
	cmpl      $-1, %eax
	je        L0000027F
L0000026C:
	movzwl    -334(%rbp), %eax
	testq     %rax, %rax
	je        L0000027F
L00000278:
	movq      %rax, _line_length(%rip)
L0000027F:
	leaq      L_.str117(%rip), %rdi
	call      _getenv
L0000028B:
	movq      %rax, %rbx
	movq      $8, _tabsize(%rip)
	xorl      %r12d, %r12d
	testq     %rbx, %rbx
	movl      $0, %r13d
	movl      $0, %r14d
	je        L00000320
L000002AD:
	leaq      -344(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
L000002C3:
	testl     %eax, %eax
	je        L000002E9
L000002C7:
	movq      %rbx, %rdi
	call      _quotearg
L000002CF:
	movq      %rax, %rcx
	leaq      L_.str118(%rip), %rdx
	xorl      %r12d, %r12d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L000002E7:
	jmp       L000002FA
L000002E9:
	movq      -344(%rbp), %rax
	movq      %rax, _tabsize(%rip)
	xorl      %r12d, %r12d
L000002FA:
	xorl      %r13d, %r13d
	xorl      %r14d, %r14d
	jmp       L00000320
L00000302:
	movl      $1, _format(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	jmp       L000000FD
L00000318:
	movb      $1, %r13b
	movb      %r15b, %r12b
	.align 4, 0x90
L00000320:
	movb      %r12b, %r15b
	movl      $-1, -348(%rbp)
	leaq      L_.str119(%rip), %rdx
	leaq      _long_options(%rip), %rcx
	leaq      -348(%rbp), %r8
	movl      -392(%rbp), %edi
	movq      -400(%rbp), %rsi
	call      _rpl_getopt_long
L00000354:
	cmpl      $-2, %eax
	jle       L00000A18
L0000035D:
	cmpl      $48, %eax
	jle       L00000A4B
L00000366:
	leal      -49(%rax), %eax
	cmpl      $94, %eax
	ja        L00000D08
L00000372:
	movb      $1, %r12b
	leaq      L00002464(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00000385:
	cmpl      $0, _format(%rip)
	movb      %r15b, %r12b
	je        L00000320
L00000391:
	movl      $1, _format(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000003A0:
	cmpl      $0, _ignore_mode(%rip)
	movb      %r15b, %r12b
	jne       L00000320
L000003B0:
	movl      $1, _ignore_mode(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000003C2:
	movl      $16, %edi
	call      _xmalloc
L000003CC:
	leaq      L_.str121(%rip), %rcx
	movq      %rcx, (%rax)
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	movl      $16, %edi
	call      _xmalloc
L000003F2:
	leaq      L_.str122(%rip), %rcx
	movq      %rcx, (%rax)
	jmp       L0000045A
L000003FE:
	movl      $2, _format(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000410:
	movb      $1, _dired(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L0000041F:
	movl      $3, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000431:
	movl      $3, _dereference(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000443:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movl      $16, %edi
	call      _xmalloc
L00000457:
	movq      %rbx, (%rax)
L0000045A:
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000474:
	movl      $5, _dereference(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000486:
	xorl      %edi, %edi
	xorl      %esi, %esi
	jmp       L000008F6
L0000048F:
	xorl      %edi, %edi
	movl      $3, %esi
	jmp       L000008F6
L0000049B:
	movb      $1, _recursive(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000004AA:
	movl      $2, _sort_type(%rip)
	jmp       L00000318
L000004B9:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      L_.str(%rip), %r8
	leaq      L_.str123(%rip), %r9
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
L000004E8:
	movq      %rax, _tabsize(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000004F7:
	movl      $-1, _sort_type(%rip)
	jmp       L00000318
L00000506:
	movl      $1, _sort_type(%rip)
	jmp       L00000318
L00000515:
	movb      $1, _print_scontext(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000524:
	movl      $2, _ignore_mode(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000536:
	xorl      %edi, %edi
	movl      $5, %esi
	jmp       L000008F6
L00000542:
	movl      $1, _time_type(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000554:
	movb      $1, _immediate_dirs(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000563:
	movl      $2, _ignore_mode(%rip)
	movl      $-1, _sort_type(%rip)
	cmpl      $0, _format(%rip)
	jne       L0000059B
L00000580:
	movl      $1, %ebx
	movl      $1, %edi
	call      _isatty
L0000058F:
	cmpl      $1, %eax
	sbbl      $-1, %ebx
	movl      %ebx, _format(%rip)
L0000059B:
	movb      $0, _print_block_size(%rip)
	movb      $0, _print_with_color(%rip)
	jmp       L00000318
L000005AE:
	movl      $0, _format(%rip)
	movb      $1, _print_owner(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000005C7:
	movl      $176, _human_output_opts(%rip)
	movl      $176, _file_human_output_opts(%rip)
	jmp       L00000926
L000005E0:
	movb      $1, _print_inode(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000005EF:
	movl      $4, _format(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000601:
	movb      $1, _numeric_ids(%rip)
L00000608:
	movl      $0, _format(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L0000061A:
	movl      $0, _format(%rip)
L00000624:
	movb      $1, _print_group(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000633:
	movl      $1, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000645:
	movb      $1, _qmark_funny_chars(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000654:
	movb      $1, _sort_reverse(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000663:
	movb      $1, _print_block_size(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000672:
	movl      $4, _sort_type(%rip)
	jmp       L00000318
L00000681:
	movl      $2, _time_type(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000693:
	movl      $3, _sort_type(%rip)
	jmp       L00000318
L000006A2:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      L_.str(%rip), %r8
	leaq      L_.str120(%rip), %r9
	xorl      %esi, %esi
	movl      $1, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
L000006D4:
	movq      %rax, _line_length(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000006E3:
	movl      $3, _format(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000006F5:
	movb      $1, _print_author(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000704:
	movq      _rpl_optarg@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	call      _human_options
L00000721:
	testl     %eax, %eax
	jne       L00001771
L00000729:
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L0000074B:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        L00000793
L0000075A:
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str128(%rip), %rdi
	leaq      _color_args(%rip), %rdx
	leaq      _color_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L00000787:
	movl      (%rbx,%rax,4), %eax
	cmpl      $1, %eax
	jne       L000009E3
L00000793:
	movb      $1, _print_with_color(%rip)
L0000079A:
	movq      $0, _tabsize(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000007AD:
	movl      $4, _dereference(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000007BF:
	movl      $2, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000007D1:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str126(%rip), %rdi
	leaq      _format_args(%rip), %rdx
	leaq      _format_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L00000808:
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _format(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000819:
	movl      $0, _format(%rip)
	leaq      L_.str127(%rip), %r14
	movb      %r15b, %r12b
	jmp       L00000320
L00000832:
	movb      $1, _directories_first(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000841:
	movl      $16, %edi
	call      _xmalloc
L0000084B:
	movq      _rpl_optarg@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	movq      %rcx, (%rax)
	movq      _hide_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _hide_patterns(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000872:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str129(%rip), %rdi
	leaq      _indicator_style_args(%rip), %rdx
	leaq      _indicator_style_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L000008A9:
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000008BA:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str130(%rip), %rdi
	movq      _quoting_style_args@GOTPCREL(%rip), %rdx
	movq      _quoting_style_vals@GOTPCREL(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L000008F1:
	movl      (%rbx,%rax,4), %esi
	xorl      %edi, %edi
L000008F6:
	call      _set_quoting_style
L000008FB:
	movb      %r15b, %r12b
	jmp       L00000320
L00000903:
	movb      $0, _qmark_funny_chars(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000912:
	movl      $144, _human_output_opts(%rip)
	movl      $144, _file_human_output_opts(%rip)
L00000926:
	movq      $1, _output_block_size(%rip)
	movq      $1, _file_output_block_size(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000944:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str124(%rip), %rdi
	leaq      _sort_args(%rip), %rdx
	leaq      _sort_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L0000097B:
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _sort_type(%rip)
	jmp       L00000318
L00000989:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str125(%rip), %rdi
	leaq      _time_args(%rip), %rdx
	leaq      _time_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L000009C0:
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _time_type(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L000009D1:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	movb      %r15b, %r12b
	jmp       L00000320
L000009E3:
	cmpl      $2, %eax
	jne       L00000A09
L000009E8:
	movl      $1, %edi
	call      _isatty
L000009F2:
	testl     %eax, %eax
	setne     _print_with_color(%rip)
	movb      %r15b, %r12b
	je        L00000320
L00000A04:
	jmp       L0000079A
L00000A09:
	movb      $0, _print_with_color(%rip)
	movb      %r15b, %r12b
	jmp       L00000320
L00000A18:
	cmpl      $-131, %eax
	jne       L00000CB0
L00000A23:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	jne       L00000CBE
L00000A3F:
	leaq      L_.str33(%rip), %rsi
	jmp       L00000CD3
L00000A4B:
	cmpl      $-1, %eax
	jne       L00000D08
L00000A54:
	cmpq      $0, _output_block_size(%rip)
	jne       L00000ACD
L00000A5E:
	leaq      L_.str133(%rip), %rdi
	call      _getenv
L00000A6A:
	movq      %rax, %rbx
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	movq      %rbx, %rdi
	call      _human_options
L00000A83:
	testq     %rbx, %rbx
	jne       L00000A99
L00000A88:
	leaq      L_.str134(%rip), %rdi
	call      _getenv
L00000A94:
	testq     %rax, %rax
	je        L00000AB3
L00000A99:
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
L00000AB3:
	testb     %r15b, %r15b
	je        L00000ACD
L00000AB8:
	movl      $0, _human_output_opts(%rip)
	movq      $1024, _output_block_size(%rip)
L00000ACD:
	movq      _line_length(%rip), %rax
	movl      $1, %edx
	cmpq      $3, %rax
	jb        L00000AEF
L00000ADF:
	movq      $-6148914691236517205, %rcx
	mulq      %rcx
	shrq      $1, %rdx
L00000AEF:
	movq      %rdx, _max_idx(%rip)
	xorl      %edi, %edi
	call      _clone_quoting_options
L00000AFD:
	movq      %rax, _filename_quoting_options(%rip)
	movq      %rax, %rdi
	call      _get_quoting_style
L00000B0C:
	cmpl      $5, %eax
	jne       L00000B27
L00000B11:
	movq      _filename_quoting_options(%rip), %rdi
	movl      $32, %esi
	movl      $1, %edx
	call      _set_char_quoting
L00000B27:
	movl      _indicator_style(%rip), %ecx
	cmpl      $2, %ecx
	jb        L00000B6D
L00000B32:
	addl      $-2, %ecx
	cmpl      $5, %ecx
	je        L00000B6D
L00000B3A:
	leaq      L_.str135(%rip), %rdx
	movb      (%rcx,%rdx), %al
	leaq      1(%rcx,%rdx), %rbx
	.align 4, 0x90
L00000B50:
	movq      _filename_quoting_options(%rip), %rdi
	movsbl    %al, %esi
	movl      $1, %edx
	call      _set_char_quoting
L00000B64:
	movb      (%rbx), %al
	incq      %rbx
	testb     %al, %al
	jne       L00000B50
L00000B6D:
	xorl      %edi, %edi
	call      _clone_quoting_options
L00000B74:
	movq      %rax, _dirname_quoting_options(%rip)
	movl      $58, %esi
	movl      $1, %edx
	movq      %rax, %rdi
	call      _set_char_quoting
L00000B8D:
	movb      _dired(%rip), %cl
	movl      _format(%rip), %eax
	testb     %cl, %cl
	je        L00000BA8
L00000B9D:
	testl     %eax, %eax
	je        L00000BA8
L00000BA1:
	movb      $0, _dired(%rip)
L00000BA8:
	movl      _time_type(%rip), %ecx
	decl      %ecx
	cmpl      $1, %ecx
	ja        L00000BC8
L00000BB5:
	testb     %r13b, %r13b
	jne       L00000BC8
L00000BBA:
	testl     %eax, %eax
	je        L00000BC8
L00000BBE:
	movl      $4, _sort_type(%rip)
L00000BC8:
	testl     %eax, %eax
	jne       L00000E81
L00000BD0:
	testq     %r14, %r14
	jne       L00000BEF
L00000BD5:
	leaq      L_.str136(%rip), %rdi
	call      _getenv
L00000BE1:
	testq     %rax, %rax
	leaq      L_.str137(%rip), %r14
	cmovne    %rax, %r14
L00000BEF:
	leaq      _decode_switches.posix_prefix(%rip), %rsi
	movl      $6, %edx
	movq      %r14, %rdi
	call      _strncmp
L00000C03:
	testl     %eax, %eax
	jne       L00000C3A
L00000C07:
	leaq      _decode_switches.posix_prefix(%rip), %r12
	.align 4, 0x90
L00000C10:
	movl      $5, %edi
	call      _hard_locale
L00000C1A:
	testb     %al, %al
	je        L00000E81
L00000C22:
	addq      $6, %r14
	movl      $6, %edx
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _strncmp
L00000C36:
	testl     %eax, %eax
	je        L00000C10
L00000C3A:
	movzbl    (%r14), %eax
	cmpl      $43, %eax
	jne       L00000D12
L00000C47:
	incq      %r14
	movl      $10, %esi
	movq      %r14, %rdi
	call      _strchr
L00000C57:
	movq      %rax, %r13
	testq     %r13, %r13
	movq      %r14, %r12
	je        L00000C9D
L00000C62:
	leaq      1(%r13), %r12
	movl      $10, %esi
	movq      %r12, %rdi
	call      _strchr
L00000C73:
	testq     %rax, %rax
	je        L00000C98
L00000C78:
	movq      %r14, %rdi
	call      _quote
L00000C80:
	movq      %rax, %rcx
	leaq      L_.str138(%rip), %rdx
	movl      $2, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000C98:
	movb      $0, (%r13)
L00000C9D:
	movq      %r14, _long_time_format(%rip)
	movq      %r12, _long_time_format+8(%rip)
	jmp       L00000D95
L00000CB0:
	cmpl      $-130, %eax
	jne       L00000D08
L00000CB7:
	xorl      %edi, %edi
	call      _usage
L00000CBE:
	cmpl      $2, %eax
	leaq      L_.str34(%rip), %rax
	leaq      L_.str35(%rip), %rsi
	cmove     %rax, %rsi
L00000CD3:
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      $0, (%rsp)
	leaq      L_.str46(%rip), %rdx
	leaq      L_.str131(%rip), %r8
	leaq      L_.str132(%rip), %r9
	xorl      %eax, %eax
	call      _version_etc
L00000D01:
	xorl      %edi, %edi
	call      _exit
L00000D08:
	movl      $2, %edi
	call      _usage
L00000D12:
	leaq      _time_style_args(%rip), %rsi
	leaq      _time_style_types(%rip), %rdx
	movl      $4, %ecx
	movq      %r14, %rdi
	call      _argmatch
L00000D2D:
	testq     %rax, %rax
	js        L00001792
L00000D36:
	cmpq      $3, %rax
	ja        L00000D95
L00000D3C:
	leaq      L000025E0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00000D4C:
	leaq      L_.str143(%rip), %rax
	jmp       L00000D5C
L00000D55:
	leaq      L_.str144(%rip), %rax
L00000D5C:
	movd      %rax, %xmm0
	movlhps   %xmm0, %xmm0
	movaps    %xmm0, _long_time_format(%rip)
	jmp       L00000D95
L00000D6D:
	leaq      L_.str145(%rip), %rax
	movq      %rax, _long_time_format(%rip)
	leaq      L_.str146(%rip), %rax
	movq      %rax, _long_time_format+8(%rip)
	jmp       L00000D95
L00000D8B:
	movl      $5, %edi
	call      _hard_locale
L00000D95:
	movq      _long_time_format(%rip), %rdi
	leaq      L_.str62(%rip), %rsi
	call      _strstr
L00000DA8:
	testq     %rax, %rax
	jne       L00000DC9
L00000DAD:
	movq      _long_time_format+8(%rip), %rdi
	leaq      L_.str62(%rip), %rsi
	call      _strstr
L00000DC0:
	testq     %rax, %rax
	je        L00000E81
L00000DC9:
	movq      $5, _required_mon_width(%rip)
	movl      $5, %r14d
	leaq      _abmon(%rip), %r15
	leaq      -320(%rbp), %r12
L00000DE8:
	movq      $0, _required_mon_width(%rip)
	movq      %r15, %r13
	xorl      %ebx, %ebx
	.align 4, 0x90
L00000E00:
	movq      %r14, -320(%rbp)
	leal      33(%rbx), %edi
	call      _nl_langinfo
L00000E0F:
	movl      $61, %edx
	xorl      %r8d, %r8d
	xorl      %r9d, %r9d
	movq      %rax, %rdi
	movq      %r13, %rsi
	movq      %r12, %rcx
	call      _mbsalign
L00000E28:
	cmpq      $61, %rax
	jae       L00000E64
L00000E2E:
	movq      _required_mon_width(%rip), %rcx
	movq      -320(%rbp), %rax
	cmpq      %rax, %rcx
	cmova     %rcx, %rax
	movq      %rax, _required_mon_width(%rip)
	incl      %ebx
	addq      $61, %r13
	cmpl      $12, %ebx
	jl        L00000E00
L00000E55:
	cmpq      %rax, %r14
	movq      %rax, %r14
	ja        L00000DE8
L00000E5D:
	testq     %rax, %rax
	jne       L00000E81
L00000E62:
	jmp       L00000E6F
L00000E64:
	movq      $0, _required_mon_width(%rip)
L00000E6F:
	leaq      L_.str147(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000E81:
	movq      _rpl_optind@GOTPCREL(%rip), %rax
	movl      (%rax), %r15d
	cmpb      $0, _print_with_color(%rip)
	je        L00001410
L00000E98:
	leaq      L_.str83(%rip), %rdi
	call      _getenv
L00000EA4:
	movq      %rax, -320(%rbp)
	testq     %rax, %rax
	je        L00000EFC
L00000EB0:
	cmpb      $0, (%rax)
	je        L00000EFC
L00000EB5:
	movb      $0, -334(%rbp)
	movw      $16191, -336(%rbp)
	movq      %rax, %rdi
	call      _xstrdup
L00000ECD:
	movq      %rax, _color_buf(%rip)
	movq      %rax, -328(%rbp)
	movl      $1, %eax
	leaq      L000025F0(%rip), %r12
	leaq      -336(%rbp), %r14
	xorl      %ecx, %ecx
	movq      %rcx, -408(%rbp)
	jmp       L00000FE0
L00000EFC:
	leaq      L_.str84(%rip), %rdi
	call      _getenv
L00000F08:
	testq     %rax, %rax
	je        L00000F16
L00000F0D:
	cmpb      $0, (%rax)
	jne       L00001235
L00000F16:
	leaq      L_.str113(%rip), %rdi
	call      _getenv
L00000F22:
	movq      %rax, %r12
	testq     %r12, %r12
	je        L00000F93
L00000F2A:
	cmpb      $0, (%r12)
	je        L00000F93
L00000F31:
	leaq      _G_line(%rip), %rbx
	leaq      L_.str114(%rip), %r13
	leaq      _G_line(%rip), %r14
	.align 4, 0x90
L00000F50:
	movl      $5, %edx
	movq      %rbx, %rdi
	movq      %r13, %rsi
	call      _strncmp
L00000F60:
	testl     %eax, %eax
	jne       L00000F78
L00000F64:
	leaq      5(%rbx), %rsi
	movq      %r12, %rdi
	call      _strcmp
L00000F70:
	testl     %eax, %eax
	je        L00001235
L00000F78:
	movq      %rbx, %rdi
	call      _strlen
L00000F80:
	leaq      1(%rax,%rbx), %rbx
	movq      %rbx, %rax
	subq      %r14, %rax
	cmpq      $4607, %rax
	jb        L00000F50
L00000F93:
	movb      $0, _print_with_color(%rip)
	jmp       L00001235
L00000F9F:
	movq      -328(%rbp), %rax
	movq      -408(%rbp), %rcx
	movq      %rcx, %rdx
	leaq      16(%rdx), %rcx
	movq      %rax, 24(%rdx)
	xorl      %edx, %edx
	leaq      -328(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	call      _get_funky_string
L00000FCD:
	testb     %al, %al
	sete      %al
	movzbl    %al, %eax
	leal      1(%rax,%rax,4), %eax
	.align 4, 0x90
L00000FE0:
	decl      %eax
	cmpl      $5, %eax
	ja        L00001302
L00000FEB:
	movslq    (%r12,%rax,4), %rax
	addq      %r12, %rax
	jmp       *%rax
L00000FF4:
	movq      -320(%rbp), %rbx
	movb      (%rbx), %al
	movsbl    %al, %ecx
	cmpl      $42, %ecx
	je        L000010E8
L00001009:
	testl     %ecx, %ecx
	je        L00001208
L00001011:
	incq      %rbx
	cmpl      $58, %ecx
	jne       L000011A5
L0000101D:
	movq      %rbx, -320(%rbp)
	movl      $1, %eax
	jmp       L00000FE0
L0000102B:
	movq      -320(%rbp), %rdx
	movb      (%rdx), %cl
	movl      $6, %eax
	testb     %cl, %cl
	je        L00000FE0
L0000103D:
	incq      %rdx
	movq      %rdx, -320(%rbp)
	movb      %cl, -335(%rbp)
	movl      $3, %eax
	jmp       L00000FE0
L00001054:
	movq      -320(%rbp), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, -320(%rbp)
	movzbl    (%rax), %eax
	cmpl      $61, %eax
	movl      $6, %eax
	movl      $0, %ebx
	leaq      _color_indicator(%rip), %r13
	jne       L00000FE0
L00001083:
	.align 4, 0x90
L00001090:
	leaq      _indicator_name(%rip), %rax
	movq      (%rbx,%rax), %rsi
	movq      %r14, %rdi
	call      _strcmp
L000010A3:
	testl     %eax, %eax
	je        L0000114E
L000010AB:
	addq      $16, %r13
	addq      $8, %rbx
	cmpl      $192, %ebx
	jne       L00001090
L000010BB:
	jmp       L0000117E
L000010C0:
	movq      -320(%rbp), %rcx
	leaq      1(%rcx), %rax
	movq      %rax, -320(%rbp)
	movl      $6, %eax
	movzbl    (%rcx), %ecx
	cmpl      $61, %ecx
	jne       L00000FE0
L000010E3:
	jmp       L00000F9F
L000010E8:
	movl      $40, %edi
	call      _xmalloc
L000010F2:
	movq      %rax, -408(%rbp)
	movq      _color_ext_list(%rip), %rcx
	movq      %rcx, 32(%rax)
	movq      %rax, _color_ext_list(%rip)
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movq      -328(%rbp), %rcx
	movq      %rcx, 8(%rax)
	movl      $1, %edx
	leaq      -328(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %rax, %rcx
	call      _get_funky_string
L0000113B:
	testb     %al, %al
	sete      %al
	movzbl    %al, %eax
	imull     $2, %eax, %eax
	addl      $4, %eax
	jmp       L00000FE0
L0000114E:
	movq      -328(%rbp), %rax
	movq      %rax, 8(%r13)
	xorl      %edx, %edx
	leaq      -328(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %r13, %rcx
	call      _get_funky_string
L00001171:
	testb     %al, %al
	movl      $1, %eax
	jne       L00000FE0
L0000117E:
	movq      %r14, %rdi
	call      _quotearg
L00001186:
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str86(%rip), %rdx
	call      _error
L0000119B:
	movl      $6, %eax
	jmp       L00000FE0
L000011A5:
	movq      %rbx, -320(%rbp)
	movb      %al, -336(%rbp)
	movl      $2, %eax
	jmp       L00000FE0
L000011BC:
	leaq      L_.str87(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L000011CE:
	movq      _color_buf(%rip), %rdi
	call      _free
L000011DA:
	movq      _color_ext_list(%rip), %rdi
	testq     %rdi, %rdi
	je        L00001201
L000011E6:
	.align 4, 0x90
L000011F0:
	movq      32(%rdi), %rbx
	call      _free
L000011F9:
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       L000011F0
L00001201:
	movb      $0, _print_with_color(%rip)
L00001208:
	cmpq      $6, _color_indicator+112(%rip)
	jne       L00001235
L00001212:
	movq      _color_indicator+120(%rip), %rdi
	leaq      L_.str88(%rip), %rsi
	movl      $6, %edx
	call      _strncmp
L0000122A:
	testl     %eax, %eax
	jne       L00001235
L0000122E:
	movb      $1, _color_symlink_as_referent(%rip)
L00001235:
	cmpb      $0, _print_with_color(%rip)
	je        L00001410
L00001242:
	movq      _color_indicator+208(%rip), %rax
	testq     %rax, %rax
	je        L0000128C
L0000124E:
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	jne       L00001276
L0000125B:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000126C:
	testl     %eax, %eax
	jne       L00001326
L00001274:
	jmp       L0000128C
L00001276:
	cmpq      $1, %rax
	jne       L00001326
L00001280:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00001326
L0000128C:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        L000012D4
L00001298:
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	jne       L000012BC
L000012A5:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000012B6:
	testl     %eax, %eax
	jne       L000012CA
L000012BA:
	jmp       L000012D4
L000012BC:
	cmpq      $1, %rax
	jne       L000012CA
L000012C2:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L000012D4
L000012CA:
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       L00001326
L000012D4:
	movq      _color_indicator+192(%rip), %rcx
	testq     %rcx, %rcx
	je        L0000132D
L000012E0:
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rcx
	jne       L00001307
L000012ED:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000012FE:
	testl     %eax, %eax
	jmp       L00001315
L00001302:
	call      _abort
L00001307:
	movb      $1, %al
	cmpq      $1, %rcx
	jne       L00001318
L0000130F:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
L00001315:
	setne     %al
L00001318:
	testb     %al, %al
	je        L0000132D
L0000131C:
	movl      _format(%rip), %eax
	testl     %eax, %eax
	jne       L0000132D
L00001326:
	movb      $1, _check_symlink_color(%rip)
L0000132D:
	movl      $1, %edi
	call      _tcgetpgrp
L00001337:
	testl     %eax, %eax
	js        L00001410
L0000133F:
	movl      $0, _caught_signals(%rip)
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r12
	leaq      -368(%rbp), %r14
	.align 4, 0x90
L00001360:
	movl      (%rbx,%r12), %r13d
	xorl      %esi, %esi
	movl      %r13d, %edi
	movq      %r14, %rdx
	call      _sigaction
L00001371:
	cmpq      $1, -368(%rbp)
	je        L0000138E
L0000137B:
	decl      %r13d
	movl      $1, %eax
	movb      %r13b, %cl
	shll      %cl, %eax
	orl       %eax, _caught_signals(%rip)
L0000138E:
	addq      $4, %rbx
	cmpq      $44, %rbx
	jne       L00001360
L00001398:
	movl      _caught_signals(%rip), %eax
	movl      %eax, -360(%rbp)
	movl      $2, -356(%rbp)
	movq      $-10, %rbx
	leaq      _sighandler(%rip), %r13
	leaq      -368(%rbp), %r14
	jmp       L000013DD
L000013C5:
	.align 4, 0x90
L000013D0:
	movl      _caught_signals(%rip), %eax
	addq      $4, %r12
	incq      %rbx
L000013DD:
	movl      (%r12), %edi
	leal      -1(%rdi), %ecx
	btl       %ecx, %eax
	jae       L0000140B
L000013E9:
	cmpl      $-10, %ebx
	movq      %r13, %rax
	leaq      _stophandler(%rip), %rcx
	cmove     %rcx, %rax
	movq      %rax, -368(%rbp)
	xorl      %edx, %edx
	movq      %r14, %rsi
	call      _sigaction
L0000140B:
	testq     %rbx, %rbx
	jne       L000013D0
L00001410:
	cmpl      $1, _dereference(%rip)
	movl      -392(%rbp), %r13d
	jne       L00001451
L00001420:
	movb      _immediate_dirs(%rip), %cl
	movl      $2, %eax
	testb     %cl, %cl
	jne       L0000144B
L0000142F:
	cmpl      $3, _indicator_style(%rip)
	je        L0000144B
L00001438:
	movl      $2, %eax
	cmpl      $0, _format(%rip)
	je        L0000144B
L00001446:
	movl      $4, %eax
L0000144B:
	movl      %eax, _dereference(%rip)
L00001451:
	movzbl    _recursive(%rip), %eax
	cmpl      $1, %eax
	jne       L000014AC
L0000145D:
	leaq      _dev_ino_hash(%rip), %rdx
	leaq      _dev_ino_compare(%rip), %rcx
	leaq      _dev_ino_free(%rip), %r8
	movl      $30, %edi
	xorl      %esi, %esi
	call      _hash_initialize
L0000147E:
	movq      %rax, _active_dir_set(%rip)
	testq     %rax, %rax
	je        L00002435
L0000148E:
	leaq      _dev_ino_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rcx
	movq      _free@GOTPCREL(%rip), %r8
	xorl      %esi, %esi
	xorl      %edx, %edx
	call      __obstack_begin
L000014AC:
	movslq    %r15d, %r12
	cmpl      $0, _format(%rip)
	je        L000014CC
L000014B8:
	movl      _sort_type(%rip), %eax
	cmpl      $2, %eax
	je        L000014CC
L000014C3:
	cmpl      $4, %eax
	jne       L00001708
L000014CC:
	movb      $1, _format_needs_stat(%rip)
	xorl      %eax, %eax
L000014D5:
	andb      $1, %al
	movb      %al, _format_needs_type(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00001523
L000014E9:
	leaq      _dired_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rbx
	movq      _free@GOTPCREL(%rip), %r14
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
L0000150D:
	leaq      _subdired_obstack(%rip), %rdi
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
L00001523:
	movq      $100, _cwd_n_alloc(%rip)
	movl      $19200, %edi
	call      _xmalloc
L00001538:
	movq      %rax, _cwd_file(%rip)
	movq      $0, _cwd_n_used(%rip)
	movb      $0, _any_has_acl(%rip)
	movl      $0, _inode_number_width(%rip)
	movl      $0, _block_size_width(%rip)
	movl      $0, _nlink_width(%rip)
	movl      $0, _owner_width(%rip)
	movl      $0, _group_width(%rip)
	movl      $0, _author_width(%rip)
	movl      $0, _scontext_width(%rip)
	movl      $0, _major_device_number_width(%rip)
	movl      $0, _minor_device_number_width(%rip)
	movl      $0, _file_size_width(%rip)
	movl      %r13d, %r14d
	subl      %r15d, %r14d
	testl     %r14d, %r14d
	jle       L00001600
L000015C0:
	movq      -400(%rbp), %rax
	leaq      (%rax,%r12,8), %rbx
	leaq      L_.str(%rip), %r12
	.align 4, 0x90
L000015E0:
	movq      (%rbx), %rdi
	xorl      %esi, %esi
	movl      $1, %edx
	movq      %r12, %rcx
	call      _gobble_file
L000015F2:
	addq      $8, %rbx
	incl      %r15d
	cmpl      %r13d, %r15d
	jl        L000015E0
L000015FE:
	jmp       L00001665
L00001600:
	movzbl    _immediate_dirs(%rip), %eax
	cmpl      $1, %eax
	jne       L0000162B
L0000160C:
	leaq      L_.str1(%rip), %rdi
	leaq      L_.str(%rip), %rcx
	movl      $3, %esi
	movl      $1, %edx
	call      _gobble_file
L00001629:
	jmp       L00001665
L0000162B:
	movl      $32, %edi
	call      _xmalloc
L00001635:
	movq      %rax, %rbx
	movq      $0, 8(%rbx)
	leaq      L_.str1(%rip), %rdi
	call      _xstrdup
L0000164C:
	movq      %rax, (%rbx)
	movb      $1, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
L00001665:
	cmpq      $0, _cwd_n_used(%rip)
	je        L000016D7
L0000166F:
	call      _sort_files
L00001674:
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	jne       L0000168A
L0000167E:
	xorl      %edi, %edi
	movl      $1, %esi
	call      _extract_dirs_from_files
L0000168A:
	cmpq      $0, _cwd_n_used(%rip)
	je        L000016D7
L00001694:
	call      _print_current_files
L00001699:
	cmpq      $0, _pending_dirs(%rip)
	je        L000018F1
L000016A7:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00001725
L000016BE:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	incq      _dired_pos(%rip)
	jmp       L00001845
L000016D7:
	movq      _pending_dirs(%rip), %rbx
	cmpl      $1, %r14d
	jg        L0000184C
L000016E8:
	testq     %rbx, %rbx
	je        L0000184C
L000016F1:
	cmpq      $0, 24(%rbx)
	jne       L00001845
L000016FC:
	movb      $0, _print_dir_name(%rip)
	jmp       L00001845
L00001708:
	movb      _print_block_size(%rip), %al
	orb       _print_scontext(%rip), %al
	andb      $1, %al
	movb      %al, _format_needs_stat(%rip)
	je        L0000173B
L0000171E:
	xorl      %eax, %eax
	jmp       L000014D5
L00001725:
	movl      $10, %edi
	call      ___swbuf
L0000172F:
	incq      _dired_pos(%rip)
	jmp       L00001845
L0000173B:
	movb      $1, %al
	movb      _recursive(%rip), %cl
	testb     %cl, %cl
	jne       L000014D5
L0000174B:
	cmpb      $0, _print_with_color(%rip)
	setne     %cl
	cmpl      $0, _indicator_style(%rip)
	setne     %al
	orb       %cl, %al
	orb       _directories_first(%rip), %al
	jmp       L000014D5
L0000176C:
	call      _abort
L00001771:
	movl      -348(%rbp), %ecx
	movq      (%rbx), %rbx
	leaq      _long_options(%rip), %r8
	xorl      %edx, %edx
	movl      %eax, %edi
	movl      %ecx, %esi
	movq      %r8, %rcx
	movq      %rbx, %r8
	call      _xstrtol_fatal
L00001792:
	leaq      L_.str139(%rip), %rcx
	movq      %rcx, %rdi
	movq      %r14, %rsi
	movq      %rax, %rdx
	call      _argmatch_invalid
L000017A7:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	leaq      L_.str140(%rip), %rcx
	movq      %rcx, %rdi
	movq      %rax, %rsi
	call      _fputs
L000017C3:
	movq      (%rbx), %rcx
	leaq      L_.str141(%rip), %r14
	leaq      L_.str127(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
L000017E1:
	movq      (%rbx), %rcx
	leaq      L_.str148(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
L000017F8:
	movq      (%rbx), %rcx
	leaq      L_.str149(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
L0000180F:
	movq      (%rbx), %rcx
	leaq      L_.str137(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
L00001826:
	movq      (%rbx), %rax
	leaq      L_.str142(%rip), %rcx
	movq      %rcx, %rdi
	movq      %rax, %rsi
	call      _fputs
L0000183B:
	movl      $2, %edi
	call      _usage
L00001845:
	movq      _pending_dirs(%rip), %rbx
L0000184C:
	testq     %rbx, %rbx
	je        L000018F1
L00001855:
	movq      24(%rbx), %rax
	movq      %rax, _pending_dirs(%rip)
	movq      _active_dir_set(%rip), %rdi
	movq      (%rbx), %r12
	testq     %rdi, %rdi
	je        L00001995
L00001873:
	testq     %r12, %r12
	jne       L00001995
L0000187C:
	movq      _dev_ino_obstack+24(%rip), %rax
	movq      %rax, %rcx
	subq      _dev_ino_obstack+16(%rip), %rcx
	cmpq      $15, %rcx
	jbe       L000023FD
L00001897:
	leaq      -16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movq      -16(%rax), %rcx
	movl      -8(%rax), %eax
	movq      %rcx, -384(%rbp)
	movl      %eax, -376(%rbp)
	leaq      -384(%rbp), %rsi
	call      _hash_delete
L000018C2:
	testq     %rax, %rax
	je        L00002419
L000018CB:
	movq      %rax, %rdi
	call      _free
L000018D3:
	movq      (%rbx), %rdi
	call      _free
L000018DB:
	movq      8(%rbx), %rdi
	call      _free
L000018E4:
	movq      %rbx, %rdi
	call      _free
L000018EC:
	jmp       L00001845
L000018F1:
	cmpb      $0, _print_with_color(%rip)
	je        L00001CDD
L000018FE:
	movzbl    _used_color(%rip), %eax
	cmpl      $1, %eax
	jne       L00001C78
L0000190E:
	movq      _color_indicator(%rip), %rsi
	cmpq      $2, %rsi
	jne       L00001949
L0000191B:
	movq      _color_indicator+8(%rip), %rax
	movzwl    (%rax), %eax
	cmpl      $23323, %eax
	jne       L00001949
L0000192C:
	cmpq      $1, _color_indicator+16(%rip)
	jne       L00001949
L00001936:
	movq      _color_indicator+24(%rip), %rax
	movzbl    (%rax), %eax
	cmpl      $109, %eax
	je        L00001C78
L00001949:
	movq      _color_indicator+8(%rip), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001964:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00001C5D
L00001972:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00001BE0
L00001989:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00001C50
L00001995:
	movq      8(%rbx), %r14
	movb      16(%rbx), %r13b
	call      ___error
L000019A2:
	movl      $0, (%rax)
	movq      %r12, %rdi
	call      _opendir$INODE64
L000019B0:
	movq      %rax, -392(%rbp)
	testq     %rax, %rax
	je        L000019F1
L000019BC:
	cmpq      $0, _active_dir_set(%rip)
	je        L00001B89
L000019CA:
	movb      %r13b, -408(%rbp)
	movq      -392(%rbp), %rdi
	call      _dirfd
L000019DD:
	leaq      -320(%rbp), %rsi
	testl     %eax, %eax
	js        L00001A2F
L000019E8:
	movl      %eax, %edi
	call      _fstat$INODE64
L000019EF:
	jmp       L00001A37
L000019F1:
	call      ___error
L000019F6:
	movl      (%rax), %r14d
	movq      %r12, %rdi
	call      _quotearg_colon
L00001A01:
	movq      %rax, %rcx
	leaq      L_.str76(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
L00001A17:
	testb     %r13b, %r13b
	je        L00001B10
L00001A20:
	movl      $2, _exit_status(%rip)
	jmp       L000023D8
L00001A2F:
	movq      %r12, %rdi
	call      _rpl_stat
L00001A37:
	testl     %eax, %eax
	js        L00001ACE
L00001A3F:
	movq      %r12, -400(%rbp)
	movl      -320(%rbp), %r15d
	movq      -312(%rbp), %r12
	movl      $16, %edi
	call      _xmalloc
L00001A5E:
	movq      %rax, %r13
	movq      %r12, (%r13)
	movl      %r15d, 8(%r13)
	movq      _active_dir_set(%rip), %rdi
	movq      %r13, %rsi
	call      _hash_insert
L00001A78:
	testq     %rax, %rax
	je        L00002435
L00001A81:
	cmpq      %r13, %rax
	je        L00001B2C
L00001A8A:
	movq      %r13, %rdi
	call      _free
L00001A92:
	movq      -400(%rbp), %rdi
	call      _quotearg_colon
L00001A9E:
	movq      %rax, %rcx
	leaq      L_.str78(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00001AB3:
	movq      -392(%rbp), %rdi
	call      _closedir
L00001ABF:
	movl      $2, _exit_status(%rip)
	jmp       L000023D8
L00001ACE:
	call      ___error
L00001AD3:
	movl      (%rax), %r14d
	movq      %r12, %rdi
	call      _quotearg_colon
L00001ADE:
	movq      %rax, %rcx
	leaq      L_.str77(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
L00001AF4:
	cmpb      $0, -408(%rbp)
	je        L00001D88
L00001B01:
	movl      $2, _exit_status(%rip)
	jmp       L00001D9B
L00001B10:
	cmpl      $0, _exit_status(%rip)
	jne       L000023D8
L00001B1D:
	movl      $1, _exit_status(%rip)
	jmp       L000023D8
L00001B2C:
	movl      -320(%rbp), %r15d
	movq      -312(%rbp), %r13
	movq      _dev_ino_obstack+32(%rip), %rcx
	movq      _dev_ino_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $15, %rcx
	ja        L00001B69
L00001B51:
	leaq      _dev_ino_obstack(%rip), %rdi
	movl      $16, %esi
	call      __obstack_newchunk
L00001B62:
	movq      _dev_ino_obstack+24(%rip), %rax
L00001B69:
	leaq      16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movl      %r15d, 8(%rax)
	movq      %r13, (%rax)
	movq      -400(%rbp), %r12
	movb      -408(%rbp), %r13b
L00001B89:
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       L00001BA3
L00001B93:
	movzbl    _print_dir_name(%rip), %eax
	cmpl      $1, %eax
	jne       L00001EC8
L00001BA3:
	movzbl    _print_dir.first(%rip), %eax
	cmpl      $1, %eax
	jne       L00001DBD
L00001BB3:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00001DAC
L00001BCE:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00001DB6
L00001BE0:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001BFB:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00001C11
L00001C05:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00001C11:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001C2C:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00001C42
L00001C36:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00001C42:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00001C50:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001C5D:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001C78:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _rpl_fflush
L00001C87:
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r14
L00001C90:
	movl      _caught_signals(%rip), %eax
	movl      (%rbx,%r14), %edi
	leal      -1(%rdi), %ecx
	btl       %ecx, %eax
	jae       L00001CA9
L00001CA2:
	xorl      %esi, %esi
	call      _signal
L00001CA9:
	addq      $4, %rbx
	cmpq      $44, %rbx
	jne       L00001C90
L00001CB3:
	movl      _stop_signal_count(%rip), %ebx
	testl     %ebx, %ebx
	je        L00001CCE
L00001CBD:
	.align 4, 0x90
L00001CC0:
	movl      $17, %edi
	call      _raise
L00001CCA:
	decl      %ebx
	jne       L00001CC0
L00001CCE:
	movl      _interrupt_signal(%rip), %edi
	testl     %edi, %edi
	je        L00001CDD
L00001CD8:
	call      _raise
L00001CDD:
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00001D36
L00001CE9:
	leaq      L_.str5(%rip), %rdi
	leaq      _dired_obstack(%rip), %rsi
	call      _dired_dump_obstack
L00001CFC:
	leaq      L_.str6(%rip), %rdi
	leaq      _subdired_obstack(%rip), %rsi
	call      _dired_dump_obstack
L00001D0F:
	movq      _filename_quoting_options(%rip), %rdi
	call      _get_quoting_style
L00001D1B:
	movl      %eax, %eax
	movq      _quoting_style_args@GOTPCREL(%rip), %rcx
	movq      (%rcx,%rax,8), %rsi
	leaq      L_.str7(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L00001D36:
	movq      _active_dir_set(%rip), %rbx
	testq     %rbx, %rbx
	je        L00001D5B
L00001D42:
	movq      %rbx, %rdi
	call      _hash_get_n_entries
L00001D4A:
	testq     %rax, %rax
	jne       L0000243A
L00001D53:
	movq      %rbx, %rdi
	call      _hash_free
L00001D5B:
	movl      _exit_status(%rip), %eax
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       L00001D83
L00001D71:
	addq      $392, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00001D83:
	call      ___stack_chk_fail
L00001D88:
	cmpl      $0, _exit_status(%rip)
	jne       L00001D9B
L00001D91:
	movl      $1, _exit_status(%rip)
L00001D9B:
	movq      -392(%rbp), %rdi
	call      _closedir
L00001DA7:
	jmp       L000023D8
L00001DAC:
	movl      $10, %edi
	call      ___swbuf
L00001DB6:
	incq      _dired_pos(%rip)
L00001DBD:
	movb      $1, _print_dir.first(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00001E3B
L00001DD0:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str59(%rip), %rdi
	call      _fputs
L00001DE6:
	addq      $2, _dired_pos(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00001E3B
L00001DFA:
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00001E29
L00001E11:
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
L00001E22:
	movq      _subdired_obstack+24(%rip), %rax
L00001E29:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
L00001E3B:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	movq      (%r15), %rdi
	testq     %r14, %r14
	cmove     %r12, %r14
	movq      _dirname_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      %r14, %rsi
	call      _quote_name
L00001E5D:
	addq      %rax, _dired_pos(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00001EB1
L00001E70:
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00001E9F
L00001E87:
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
L00001E98:
	movq      _subdired_obstack+24(%rip), %rax
L00001E9F:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
L00001EB1:
	movq      (%r15), %rsi
	leaq      L_.str79(%rip), %rdi
	call      _fputs
L00001EC0:
	addq      $2, _dired_pos(%rip)
L00001EC8:
	movb      %r13b, -408(%rbp)
	movq      %r12, -400(%rbp)
	movq      %rbx, -416(%rbp)
	xorl      %ebx, %ebx
	cmpq      $0, _cwd_n_used(%rip)
	je        L00001F18
L00001EE9:
	.align 4, 0x90
L00001EF0:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
L00001F03:
	movq      8(%r14), %rdi
	call      _free
L00001F0C:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00001EF0
L00001F18:
	movq      $0, _cwd_n_used(%rip)
	movb      $0, _any_has_acl(%rip)
	movl      $0, _inode_number_width(%rip)
	movl      $0, _block_size_width(%rip)
	movl      $0, _nlink_width(%rip)
	movl      $0, _owner_width(%rip)
	movl      $0, _group_width(%rip)
	movl      $0, _author_width(%rip)
	movl      $0, _scontext_width(%rip)
	movl      $0, _major_device_number_width(%rip)
	movl      $0, _minor_device_number_width(%rip)
	movl      $0, _file_size_width(%rip)
	xorl      %r14d, %r14d
	jmp       L00001FA8
L00001F93:
	.align 4, 0x90
L00001FA0:
	call      _process_signals
L00001FA5:
	movq      %r15, %r14
L00001FA8:
	call      ___error
L00001FAD:
	movl      $0, (%rax)
	movq      -392(%rbp), %rdi
	call      _readdir$INODE64
L00001FBF:
	movq      %rax, %r12
	testq     %r12, %r12
	je        L00002030
L00001FC7:
	leaq      21(%r12), %r13
	movl      _ignore_mode(%rip), %eax
	cmpl      $2, %eax
	je        L000020E0
L00001FDB:
	movzbl    (%r13), %ecx
	cmpl      $46, %ecx
	jne       L0000200E
L00001FE5:
	testl     %eax, %eax
	je        L000020AE
L00001FED:
	movzbl    22(%r12), %ecx
	cmpl      $46, %ecx
	movl      $2, %ecx
	je        L00002002
L00001FFD:
	movl      $1, %ecx
L00002002:
	cmpb      $0, 21(%r12,%rcx)
	je        L000020AE
L0000200E:
	testl     %eax, %eax
	jne       L000020E0
L00002016:
	movq      _hide_patterns(%rip), %r15
	jmp       L000020C4
L00002022:
	.align 4, 0x90
L00002030:
	call      ___error
L00002035:
	cmpl      $0, (%rax)
	movq      -400(%rbp), %r12
	movb      -408(%rbp), %r13b
	je        L00002243
L0000204C:
	call      ___error
L00002051:
	movl      (%rax), %ebx
	movq      %r12, %rdi
	call      _quotearg_colon
L0000205B:
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	leaq      L_.str80(%rip), %rdx
	call      _error
L00002070:
	testb     %r13b, %r13b
	je        L00002081
L00002075:
	movl      $2, _exit_status(%rip)
	jmp       L000020A0
L00002081:
	cmpl      $0, _exit_status(%rip)
	jne       L000020A0
L0000208A:
	movl      $1, _exit_status(%rip)
	.align 4, 0x90
L000020A0:
	call      ___error
L000020A5:
	cmpl      $84, (%rax)
	jne       L00002243
L000020AE:
	movq      %r14, %r15
	jmp       L00001FA0
L000020B6:
	.align 4, 0x90
L000020C0:
	movq      8(%r15), %r15
L000020C4:
	testq     %r15, %r15
	je        L000020E0
L000020C9:
	movq      (%r15), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
L000020D9:
	testl     %eax, %eax
	jne       L000020C0
L000020DD:
	jmp       L000020AE
L000020DF:
	.align 4, 0x90
L000020E0:
	movq      _ignore_patterns(%rip), %rbx
	jmp       L000020F4
L000020E9:
	.align 4, 0x90
L000020F0:
	movq      8(%rbx), %rbx
L000020F4:
	testq     %rbx, %rbx
	je        L00002110
L000020F9:
	movq      (%rbx), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
L00002109:
	testl     %eax, %eax
	jne       L000020F0
L0000210D:
	jmp       L000020AE
L0000210F:
	.align 4, 0x90
L00002110:
	movzbl    20(%r12), %eax
	decl      %eax
	xorl      %esi, %esi
	cmpl      $13, %eax
	ja        L0000212B
L0000211F:
	cltq      
	leaq      l_switch.table(%rip), %rcx
	movl      (%rcx,%rax,4), %esi
L0000212B:
	xorl      %edx, %edx
	movq      %r13, %rdi
	movq      -400(%rbp), %rcx
	call      _gobble_file
L0000213C:
	movq      %rax, %r15
	addq      %r14, %r15
	cmpl      $1, _format(%rip)
	jne       L00001FA0
L0000214F:
	cmpl      $-1, _sort_type(%rip)
	jne       L00001FA0
L0000215C:
	movb      _print_block_size(%rip), %al
	testb     %al, %al
	jne       L00001FA0
L0000216A:
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       L00001FA0
L00002178:
	call      _sort_files
L0000217D:
	call      _print_current_files
L00002182:
	cmpq      $0, _cwd_n_used(%rip)
	movl      $0, %ebx
	je        L000021C8
L00002191:
	.align 4, 0x90
L000021A0:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
L000021B3:
	movq      8(%r14), %rdi
	call      _free
L000021BC:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L000021A0
L000021C8:
	movq      $0, _cwd_n_used(%rip)
	movb      $0, _any_has_acl(%rip)
	movl      $0, _inode_number_width(%rip)
	movl      $0, _block_size_width(%rip)
	movl      $0, _nlink_width(%rip)
	movl      $0, _owner_width(%rip)
	movl      $0, _group_width(%rip)
	movl      $0, _author_width(%rip)
	movl      $0, _scontext_width(%rip)
	movl      $0, _major_device_number_width(%rip)
	movl      $0, _minor_device_number_width(%rip)
	movl      $0, _file_size_width(%rip)
	jmp       L00001FA0
L00002243:
	movq      -392(%rbp), %rdi
	call      _closedir
L0000224F:
	testl     %eax, %eax
	movq      -416(%rbp), %rbx
	je        L000022A4
L0000225A:
	call      ___error
L0000225F:
	movl      (%rax), %r15d
	movq      %r12, %rdi
	call      _quotearg_colon
L0000226A:
	movq      %rax, %rcx
	leaq      L_.str81(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r15d, %esi
	call      _error
L00002280:
	testb     %r13b, %r13b
	je        L00002291
L00002285:
	movl      $2, _exit_status(%rip)
	jmp       L000022A4
L00002291:
	cmpl      $0, _exit_status(%rip)
	jne       L000022A4
L0000229A:
	movl      $1, _exit_status(%rip)
L000022A4:
	call      _sort_files
L000022A9:
	movzbl    _recursive(%rip), %eax
	cmpl      $1, %eax
	jne       L000022BF
L000022B5:
	xorl      %esi, %esi
	movq      %r12, %rdi
	call      _extract_dirs_from_files
L000022BF:
	cmpl      $0, _format(%rip)
	je        L000022D8
L000022C8:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       L000023C9
L000022D8:
	movq      %rbx, %r12
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00002305
L000022E7:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str59(%rip), %rdi
	call      _fputs
L000022FD:
	addq      $2, _dired_pos(%rip)
L00002305:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	movq      (%r15), %rsi
	leaq      L_.str82(%rip), %rdi
	call      _fputs
L0000231B:
	addq      $5, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00002338
L00002333:
	cmpl      40(%rsi), %eax
	jle       L00002347
L00002338:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	jmp       L00002351
L00002347:
	movl      $32, %edi
	call      ___swbuf
L00002351:
	incq      _dired_pos(%rip)
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	movq      %r14, %rdi
	call      _human_readable
L00002379:
	movq      %rax, %rbx
	movq      (%r15), %rsi
	movq      %rbx, %rdi
	call      _fputs
L00002387:
	movq      %rbx, %rdi
	call      _strlen
L0000238F:
	addq      %rax, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L000023B5
L000023A6:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L000023BF
L000023B5:
	movl      $10, %edi
	call      ___swbuf
L000023BF:
	movq      %r12, %rbx
	incq      _dired_pos(%rip)
L000023C9:
	cmpq      $0, _cwd_n_used(%rip)
	je        L000023D8
L000023D3:
	call      _print_current_files
L000023D8:
	movq      (%rbx), %rdi
	call      _free
L000023E0:
	movq      8(%rbx), %rdi
	call      _free
L000023E9:
	movq      %rbx, %rdi
	call      _free
L000023F1:
	movb      $1, _print_dir_name(%rip)
	jmp       L00001845
L000023FD:
	leaq      L___func__.dev_ino_pop(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str232(%rip), %rbx
	movl      $992, %edx
	jmp       L00002454
L00002419:
	leaq      L___func__.main(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str3(%rip), %rbx
	movl      $1450, %edx
	jmp       L00002454
L00002435:
	call      _xalloc_die
L0000243A:
	leaq      L___func__.main(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str8(%rip), %rbx
	movl      $1513, %edx
L00002454:
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
L00002462:
	.align 4, 0x90
# ----------------------
L00002464:
	.long	L00000385-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L000003A0-L00002464
	.long	L000003C2-L00002464
	.long	L000003FE-L00002464
	.long	L00000410-L00002464
	.long	L00000D08-L00002464
	.long	L0000041F-L00002464
	.long	L00000624-L00002464
	.long	L00000431-L00002464
	.long	L00000443-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000474-L00002464
	.long	L00000D08-L00002464
	.long	L00000486-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L0000048F-L00002464
	.long	L0000049B-L00002464
	.long	L000004AA-L00002464
	.long	L000004B9-L00002464
	.long	L000004F7-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000506-L00002464
	.long	L00000D08-L00002464
	.long	L00000515-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000524-L00002464
	.long	L00000536-L00002464
	.long	L00000542-L00002464
	.long	L00000554-L00002464
	.long	L00000D08-L00002464
	.long	L00000563-L00002464
	.long	L000005AE-L00002464
	.long	L000005C7-L00002464
	.long	L000005E0-L00002464
	.long	L00000D08-L00002464
	.long	L00000320-L00002464
	.long	L00000608-L00002464
	.long	L000005EF-L00002464
	.long	L00000601-L00002464
	.long	L0000061A-L00002464
	.long	L00000633-L00002464
	.long	L00000645-L00002464
	.long	L00000654-L00002464
	.long	L00000663-L00002464
	.long	L00000672-L00002464
	.long	L00000681-L00002464
	.long	L00000693-L00002464
	.long	L000006A2-L00002464
	.long	L000006E3-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L00000D08-L00002464
	.long	L000006F5-L00002464
	.long	L00000704-L00002464
	.long	L0000074B-L00002464
	.long	L000007AD-L00002464
	.long	L000007BF-L00002464
	.long	L000007D1-L00002464
	.long	L00000819-L00002464
	.long	L00000832-L00002464
	.long	L00000841-L00002464
	.long	L00000872-L00002464
	.long	L000008BA-L00002464
	.long	L00000903-L00002464
	.long	L00000912-L00002464
	.long	L00000944-L00002464
	.long	L00000989-L00002464
	.long	L000009D1-L00002464
# ----------------------
L000025E0:
	.long	L00000D4C-L000025E0
	.long	L00000D55-L000025E0
	.long	L00000D6D-L000025E0
	.long	L00000D8B-L000025E0
# ----------------------
L000025F0:
	.long	L00000FF4-L000025F0
	.long	L0000102B-L000025F0
	.long	L00001054-L000025F0
	.long	L000010C0-L000025F0
	.long	L00001302-L000025F0
	.long	L000011BC-L000025F0
L00002608:
	.align 4, 0x90
# ----------------------
_stophandler:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpl      $0, _interrupt_signal(%rip)
	jne       L00002623
L0000261D:
	incl      _stop_signal_count(%rip)
L00002623:
	popq      %rbp
	ret       
L00002625:
	.align 4, 0x90
# ----------------------
_sighandler:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpl      $0, _interrupt_signal(%rip)
	jne       L00002643
L0000263D:
	movl      %edi, _interrupt_signal(%rip)
L00002643:
	popq      %rbp
	ret       
L00002645:
	.align 4, 0x90
# ----------------------
_dev_ino_hash:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rdi), %rax
	xorl      %edx, %edx
	divq      %rsi
	movq      %rdx, %rax
	popq      %rbp
	ret       
L00002661:
	.align 4, 0x90
# ----------------------
_dev_ino_compare:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rdi), %rax
	cmpq      (%rsi), %rax
	jne       L00002687
L0000267C:
	movl      8(%rdi), %eax
	cmpl      8(%rsi), %eax
	sete      %al
	jmp       L00002689
L00002687:
	xorl      %eax, %eax
L00002689:
	popq      %rbp
	ret       
L0000268B:
	.align 4, 0x90
# ----------------------
_dev_ino_free:
	pushq     %rbp
	movq      %rsp, %rbp
	popq      %rbp
	jmp       _free
L0000269A:
	.align 4, 0x90
# ----------------------
_gobble_file:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $872, %rsp
	movq      %rcx, -856(%rbp)
	movl      %edx, %r13d
	movl      %esi, %ebx
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      _cwd_n_used(%rip), %rax
	cmpq      _cwd_n_alloc(%rip), %rax
	jne       L00002726
L000026DE:
	movq      %rdi, -840(%rbp)
	movq      $48038396025285291, %rcx
	cmpq      %rcx, %rax
	jae       L00003437
L000026F8:
	movq      _cwd_file(%rip), %rdi
	shlq      $7, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L0000270C:
	movq      %rax, %r15
	movq      %r15, _cwd_file(%rip)
	shlq      $1, _cwd_n_alloc(%rip)
	movq      _cwd_n_used(%rip), %rax
	jmp       L00002734
L00002726:
	movq      %rdi, -840(%rbp)
	movq      _cwd_file(%rip), %r15
L00002734:
	leaq      (%rax,%rax,2), %r14
	shlq      $6, %r14
	leaq      (%r15,%r14), %rdi
	movq      %rdi, -864(%rbp)
	movl      $192, %esi
	call      ___bzero
L00002751:
	leaq      24(%r15,%r14), %rax
	movq      %rax, -872(%rbp)
	movq      $0, 24(%r15,%r14)
	movl      %ebx, 160(%r15,%r14)
	movl      %ebx, -848(%rbp)
	cmpb      $0, _format_needs_stat(%rip)
	jne       L00002A42
L00002781:
	movb      %r13b, %al
	xorb      $1, %al
	je        L00002A42
L0000278C:
	cmpl      $3, -848(%rbp)
	movb      _print_with_color(%rip), %r12b
	jne       L00002887
L000027A0:
	testb     %r12b, %r12b
	je        L00002887
L000027A9:
	movq      _color_indicator+304(%rip), %rax
	testq     %rax, %rax
	je        L000027F3
L000027B5:
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	jne       L000027DD
L000027C2:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000027D3:
	testl     %eax, %eax
	jne       L00002A42
L000027DB:
	jmp       L000027F3
L000027DD:
	cmpq      $1, %rax
	jne       L00002A42
L000027E7:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00002A42
L000027F3:
	movq      _color_indicator+288(%rip), %rax
	testq     %rax, %rax
	je        L0000283D
L000027FF:
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $2, %rax
	jne       L00002827
L0000280C:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000281D:
	testl     %eax, %eax
	jne       L00002A42
L00002825:
	jmp       L0000283D
L00002827:
	cmpq      $1, %rax
	jne       L00002A42
L00002831:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00002A42
L0000283D:
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        L00002887
L00002849:
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	jne       L00002871
L00002856:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002867:
	testl     %eax, %eax
	jne       L00002A42
L0000286F:
	jmp       L00002887
L00002871:
	cmpq      $1, %rax
	jne       L00002A42
L0000287B:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00002A42
L00002887:
	movb      _print_inode(%rip), %cl
	movb      _format_needs_type(%rip), %al
	testb     %al, %al
	jne       L000028A1
L00002897:
	movb      %cl, %dl
	xorb      $1, %dl
	testb     $1, %dl
	jne       L000028D1
L000028A1:
	movl      -848(%rbp), %edx
	testl     %edx, %edx
	je        L000028B0
L000028AB:
	cmpl      $6, %edx
	jne       L000028D1
L000028B0:
	cmpl      $5, _dereference(%rip)
	je        L00002A42
L000028BD:
	movb      _color_symlink_as_referent(%rip), %dl
	testb     %dl, %dl
	jne       L00002A42
L000028CB:
	orb       _check_symlink_color(%rip), %cl
L000028D1:
	testb     $1, %cl
	jne       L00002A42
L000028DA:
	xorl      %ebx, %ebx
	testb     %al, %al
	je        L000033BB
L000028E4:
	cmpl      $0, -848(%rbp)
	je        L00002A42
L000028F1:
	testb     %r13b, %r13b
	jne       L00002A42
L000028FA:
	xorl      %ebx, %ebx
	cmpl      $5, -848(%rbp)
	jne       L000033BB
L00002909:
	cmpl      $3, _indicator_style(%rip)
	je        L00002A42
L00002916:
	xorl      %ebx, %ebx
	testb     %r12b, %r12b
	je        L000033BB
L00002921:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        L0000296B
L0000292D:
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	jne       L00002955
L0000293A:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000294B:
	testl     %eax, %eax
	jne       L00002A42
L00002953:
	jmp       L0000296B
L00002955:
	cmpq      $1, %rax
	jne       L00002A42
L0000295F:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00002A42
L0000296B:
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        L000029B5
L00002977:
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	jne       L0000299F
L00002984:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002995:
	testl     %eax, %eax
	jne       L00002A42
L0000299D:
	jmp       L000029B5
L0000299F:
	cmpq      $1, %rax
	jne       L00002A42
L000029A9:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00002A42
L000029B5:
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        L000029F3
L000029C1:
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	jne       L000029E5
L000029CE:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000029DF:
	testl     %eax, %eax
	jne       L00002A42
L000029E3:
	jmp       L000029F3
L000029E5:
	cmpq      $1, %rax
	jne       L00002A42
L000029EB:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00002A42
L000029F3:
	movq      _color_indicator+336(%rip), %rax
	xorl      %ebx, %ebx
	testq     %rax, %rax
	je        L000033BB
L00002A05:
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	jne       L00002A2E
L00002A12:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002A23:
	xorl      %ebx, %ebx
	testl     %eax, %eax
	jne       L00002A42
L00002A29:
	jmp       L000033BB
L00002A2E:
	cmpq      $1, %rax
	jne       L00002A42
L00002A34:
	movzbl    (%rdi), %eax
	xorl      %ebx, %ebx
	cmpl      $48, %eax
	je        L000033BB
L00002A42:
	movq      -840(%rbp), %rsi
	movzbl    (%rsi), %eax
	cmpl      $47, %eax
	movq      %rsi, %rdi
	je        L00002B21
L00002A58:
	movq      -856(%rbp), %rax
	movb      (%rax), %r12b
	testb     %r12b, %r12b
	movq      %rsi, %rdi
	je        L00002B21
L00002A6E:
	movq      %r14, -880(%rbp)
	movq      %rsi, %rdi
	call      _strlen
L00002A7D:
	movq      %rax, %rbx
	movq      -856(%rbp), %r14
	movq      %r14, %rdi
	call      _strlen
L00002A8F:
	leaq      17(%rbx,%rax), %rax
	andq      $-16, %rax
	movq      %rsp, %rdx
	subq      %rax, %rdx
	movq      %rdx, %rsp
	movzbl    %r12b, %eax
	cmpl      $46, %eax
	movq      %r14, %rcx
	movq      %rdx, %rax
	movq      %rdx, %rdi
	jne       L00002AD0
L00002AB3:
	movb      $46, %r12b
	cmpb      $0, 1(%r14)
	movq      %r14, %rcx
	movq      %rdi, %rax
	je        L00002AF6
L00002AC3:
	.align 4, 0x90
L00002AD0:
	movb      %r12b, (%rax)
	incq      %rax
	movb      1(%rcx), %r12b
	incq      %rcx
	testb     %r12b, %r12b
	jne       L00002AD0
L00002AE2:
	cmpq      %r14, %rcx
	jbe       L00002AF6
L00002AE7:
	movzbl    -1(%rcx), %ecx
	cmpl      $47, %ecx
	je        L00002AF6
L00002AF0:
	movb      $47, (%rax)
	incq      %rax
L00002AF6:
	movq      -840(%rbp), %rsi
	movb      (%rsi), %cl
	testb     %cl, %cl
	movq      -880(%rbp), %r14
	je        L00002B1E
L00002B0A:
	leaq      1(%rsi), %rdx
	.align 4, 0x90
L00002B10:
	movb      %cl, (%rax)
	incq      %rax
	movb      (%rdx), %cl
	incq      %rdx
	testb     %cl, %cl
	jne       L00002B10
L00002B1E:
	movb      $0, (%rax)
L00002B21:
	leaq      16(%r15,%r14), %rbx
	leaq      160(%r15,%r14), %rax
	movq      %rax, -856(%rbp)
	movl      _dereference(%rip), %eax
	leal      -3(%rax), %ecx
	cmpl      $2, %ecx
	jae       L00002B83
L00002B43:
	movq      %rsi, -840(%rbp)
	movl      %r13d, %r12d
	testb     %r12b, %r12b
	movq      %rdi, %r13
	je        L00002BAC
L00002B55:
	movq      %r13, %rdi
	movq      %rbx, %rsi
	call      _rpl_stat
L00002B60:
	cmpl      $3, _dereference(%rip)
	je        L00002BB7
L00002B69:
	testl     %eax, %eax
	js        L00002BA2
L00002B6D:
	movzwl    20(%r15,%r14), %ecx
	andl      $61440, %ecx
	cmpl      $16384, %ecx
	je        L00002BB7
L00002B81:
	jmp       L00002BAC
L00002B83:
	movq      %rsi, -840(%rbp)
	cmpl      $5, %eax
	movl      %r13d, %r12d
	movq      %rdi, %r13
	jne       L00002BAC
L00002B95:
	movq      %r13, %rdi
	movq      %rbx, %rsi
	call      _rpl_stat
L00002BA0:
	jmp       L00002BB7
L00002BA2:
	call      ___error
L00002BA7:
	cmpl      $2, (%rax)
	jne       L00002BBB
L00002BAC:
	movq      %r13, %rdi
	movq      %rbx, %rsi
	call      _rpl_lstat
L00002BB7:
	testl     %eax, %eax
	je        L00002BF5
L00002BBB:
	call      ___error
L00002BC0:
	movl      (%rax), %ebx
	movq      %r13, %rdi
	call      _quotearg_colon
L00002BCA:
	movq      %rax, %rcx
	leaq      L_.str70(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00002BDF:
	testb     %r12b, %r12b
	je        L00002C26
L00002BE4:
	movl      $2, _exit_status(%rip)
	xorl      %ebx, %ebx
	jmp       L00003410
L00002BF5:
	movq      %r13, -880(%rbp)
	movq      %rbx, -896(%rbp)
	movq      %r15, %r13
	movb      $1, 176(%r13,%r14)
	cmpl      $5, -848(%rbp)
	jne       L00002C5D
L00002C18:
	cmpb      $0, _print_with_color(%rip)
	jne       L00002C81
L00002C21:
	jmp       L00002D21
L00002C26:
	cmpl      $0, _exit_status(%rip)
	jne       L00002C39
L00002C2F:
	movl      $1, _exit_status(%rip)
L00002C39:
	movq      -840(%rbp), %rdi
	call      _xstrdup
L00002C45:
	movq      -864(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
	xorl      %ebx, %ebx
	jmp       L00003410
L00002C5D:
	movzwl    20(%r13,%r14), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	jne       L00002D21
L00002C73:
	movb      _print_with_color(%rip), %al
	testb     %al, %al
	je        L00002D21
L00002C81:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        L00002D21
L00002C91:
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	jne       L00002CB5
L00002C9E:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002CAF:
	testl     %eax, %eax
	jne       L00002CC3
L00002CB3:
	jmp       L00002D21
L00002CB5:
	cmpq      $1, %rax
	jne       L00002CC3
L00002CBB:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00002D21
L00002CC3:
	movl      16(%r13,%r14), %r15d
	movl      _has_capability_cache.unsupported_device(%rip), %ebx
	call      ___error
L00002CD3:
	cmpl      %ebx, %r15d
	movl      $45, (%rax)
	je        L00002D18
L00002CDE:
	call      ___error
L00002CE3:
	movl      (%rax), %eax
	cmpl      $101, %eax
	jg        L00002D04
L00002CEA:
	addl      $-22, %eax
	cmpl      $56, %eax
	ja        L00002D18
L00002CF2:
	movq      $72057594046316545, %rcx
	btq       %rax, %rcx
	jb        L00002D09
L00002D02:
	jmp       L00002D18
L00002D04:
	cmpl      $102, %eax
	jne       L00002D18
L00002D09:
	movq      -896(%rbp), %rax
	movl      (%rax), %eax
	movl      %eax, _has_capability_cache.unsupported_device(%rip)
L00002D18:
	movb      $0, 184(%r13,%r14)
L00002D21:
	cmpl      $0, _format(%rip)
	je        L00002D3A
L00002D2A:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       L00002EBF
L00002D3A:
	movq      %r13, %rax
	movq      %rax, -888(%rbp)
	movl      %r12d, %r13d
	movl      16(%rax,%r14), %ebx
	movl      _getfilecon_cache.unsupported_device(%rip), %r12d
	call      ___error
L00002D58:
	cmpl      %r12d, %ebx
	movl      $45, (%rax)
	je        L00002D9D
L00002D63:
	call      ___error
L00002D68:
	movl      (%rax), %eax
	cmpl      $101, %eax
	jg        L00002D89
L00002D6F:
	addl      $-22, %eax
	cmpl      $56, %eax
	ja        L00002D9D
L00002D77:
	movq      $72057594046316545, %rcx
	btq       %rax, %rcx
	jb        L00002D8E
L00002D87:
	jmp       L00002D9D
L00002D89:
	cmpl      $102, %eax
	jne       L00002D9D
L00002D8E:
	movq      -896(%rbp), %rax
	movl      (%rax), %eax
	movl      %eax, _getfilecon_cache.unsupported_device(%rip)
L00002D9D:
	leaq      _UNKNOWN_SECURITY_CONTEXT(%rip), %rax
	movq      -888(%rbp), %rcx
	movq      %rax, 168(%rcx,%r14)
	call      ___error
L00002DB8:
	movl      (%rax), %eax
	cmpl      $45, %eax
	movl      %r13d, %r12d
	je        L00002DD6
L00002DC2:
	cmpl      $102, %eax
	je        L00002DD6
L00002DC7:
	call      ___error
L00002DCC:
	movl      $1, %ecx
	cmpl      $96, (%rax)
	jne       L00002DD8
L00002DD6:
	xorl      %ecx, %ecx
L00002DD8:
	xorl      %eax, %eax
	movl      _format(%rip), %edx
	orl       %ecx, %edx
	jne       L00002E73
L00002DE8:
	movl      %r12d, %r13d
	movq      -896(%rbp), %r15
	movl      (%r15), %r12d
	movl      _file_has_acl_cache.unsupported_device(%rip), %ebx
	call      ___error
L00002E00:
	cmpl      %ebx, %r12d
	jne       L00002E12
L00002E05:
	movl      $45, (%rax)
	xorl      %ebx, %ebx
	movl      %r13d, %r12d
	jmp       L00002E64
L00002E12:
	movl      $0, (%rax)
	movq      -880(%rbp), %rdi
	movq      %r15, %rsi
	call      _file_has_acl
L00002E27:
	movl      %eax, %ebx
	testl     %ebx, %ebx
	movl      %r13d, %r12d
	jg        L00002E64
L00002E30:
	call      ___error
L00002E35:
	movl      (%rax), %eax
	cmpl      $101, %eax
	jg        L00002E56
L00002E3C:
	addl      $-22, %eax
	cmpl      $56, %eax
	ja        L00002E64
L00002E44:
	movq      $72057594046316545, %rcx
	btq       %rax, %rcx
	jb        L00002E5B
L00002E54:
	jmp       L00002E64
L00002E56:
	cmpl      $102, %eax
	jne       L00002E64
L00002E5B:
	movl      (%r15), %eax
	movl      %eax, _file_has_acl_cache.unsupported_device(%rip)
L00002E64:
	movl      %ebx, %ecx
	shrl      $31, %ecx
	testl     %ebx, %ebx
	setg      %al
	movzbl    %al, %eax
	addl      %eax, %eax
L00002E73:
	movq      -888(%rbp), %r13
	movl      %eax, 180(%r13,%r14)
	shrl      $1, %eax
	movzbl    _any_has_acl(%rip), %edx
	orl       %eax, %edx
	movb      %dl, _any_has_acl(%rip)
	testl     %ecx, %ecx
	je        L00002EBF
L00002E97:
	call      ___error
L00002E9C:
	movl      (%rax), %ebx
	movq      -880(%rbp), %rdi
	call      _quotearg_colon
L00002EAA:
	movq      %rax, %rcx
	leaq      L_.str73(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00002EBF:
	leaq      20(%r13,%r14), %rax
	movq      %rax, -848(%rbp)
	movzwl    20(%r13,%r14), %eax
	movl      %eax, %ecx
	andl      $61440, %ecx
	cmpl      $40960, %ecx
	jne       L0000307A
L00002EE5:
	cmpl      $0, _format(%rip)
	je        L00002EFE
L00002EEE:
	movzbl    _check_symlink_color(%rip), %ecx
	cmpl      $1, %ecx
	jne       L0000307A
L00002EFE:
	movl      %r12d, -896(%rbp)
	movq      112(%r13,%r14), %rsi
	movq      -880(%rbp), %rdi
	call      _areadlink_with_size
L00002F16:
	movq      %rax, %r12
	movq      %r12, 8(%r13,%r14)
	testq     %r12, %r12
	jne       L00002F88
L00002F23:
	leaq      8(%r13,%r14), %r12
	call      ___error
L00002F2D:
	movl      (%rax), %ebx
	movq      -880(%rbp), %rdi
	call      _quotearg_colon
L00002F3B:
	movq      %rax, %rcx
	leaq      L_.str75(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00002F50:
	movl      -896(%rbp), %eax
	testb     %al, %al
	je        L00002F66
L00002F5A:
	movl      $2, _exit_status(%rip)
	jmp       L00002F79
L00002F66:
	cmpl      $0, _exit_status(%rip)
	jne       L00002F79
L00002F6F:
	movl      $1, _exit_status(%rip)
L00002F79:
	movq      (%r12), %r12
	xorl      %edi, %edi
	testq     %r12, %r12
	je        L00003064
L00002F88:
	movzbl    (%r12), %eax
	cmpl      $47, %eax
	je        L00002FE8
L00002F92:
	movq      -880(%rbp), %r15
	movq      %r15, %rdi
	call      _dir_len
L00002FA1:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        L00002FE8
L00002FA9:
	movq      %r12, %rdi
	call      _strlen
L00002FB1:
	leaq      2(%rbx,%rax), %rdi
	call      _xmalloc
L00002FBB:
	movzbl    -1(%rbx,%r15), %ecx
	cmpl      $47, %ecx
	setne     %cl
	movzbl    %cl, %edx
	addq      %rbx, %rdx
	movq      %rax, %rbx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _stpncpy
L00002FDB:
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _stpcpy
L00002FE6:
	jmp       L00002FF3
L00002FE8:
	movq      %r12, %rdi
	call      _xstrdup
L00002FF0:
	movq      %rax, %rbx
L00002FF3:
	xorl      %edi, %edi
	testq     %rbx, %rbx
	je        L00003064
L00002FFA:
	cmpl      $1, _indicator_style(%rip)
	ja        L0000300F
L00003003:
	movzbl    _check_symlink_color(%rip), %eax
	cmpl      $1, %eax
	jne       L00003061
L0000300F:
	leaq      -192(%rbp), %rsi
	movq      %rbx, %rdi
	call      _rpl_stat
L0000301E:
	testl     %eax, %eax
	jne       L00003061
L00003022:
	movb      $1, 177(%r13,%r14)
	movzwl    -188(%rbp), %eax
	cmpl      $0, _format(%rip)
	je        L00003058
L0000303B:
	movl      -896(%rbp), %ecx
	testb     %cl, %cl
	je        L00003058
L00003045:
	movl      %eax, %ecx
	andl      $61440, %ecx
	movzwl    %cx, %ecx
	cmpl      $16384, %ecx
	je        L00003061
L00003058:
	movw      %ax, 164(%r13,%r14)
L00003061:
	movq      %rbx, %rdi
L00003064:
	call      _free
L00003069:
	movq      -848(%rbp), %rax
	movzwl    (%rax), %eax
	movl      -896(%rbp), %r12d
L0000307A:
	andl      $61440, %eax
	cmpl      $16384, %eax
	jne       L000030A4
L00003086:
	testb     %r12b, %r12b
	je        L00003095
L0000308B:
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	je        L000030C9
L00003095:
	movq      -856(%rbp), %rax
	movl      $3, (%rax)
	jmp       L000030D6
L000030A4:
	cmpl      $40960, %eax
	jne       L000030BA
L000030AB:
	movq      -856(%rbp), %rax
	movl      $6, (%rax)
	jmp       L000030D6
L000030BA:
	movq      -856(%rbp), %rax
	movl      $5, (%rax)
	jmp       L000030D6
L000030C9:
	movq      -856(%rbp), %rax
	movl      $9, (%rax)
L000030D6:
	movq      120(%r13,%r14), %rbx
	cmpl      $0, _format(%rip)
	je        L000030F0
L000030E4:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       L00003129
L000030F0:
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -464(%rbp), %rsi
	movl      $512, %ecx
	movq      %rbx, %rdi
	call      _human_readable
L00003111:
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L0000311B:
	cmpl      %eax, _block_size_width(%rip)
	jge       L00003129
L00003123:
	movl      %eax, _block_size_width(%rip)
L00003129:
	cmpl      $0, _format(%rip)
	jne       L000032A0
L00003136:
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       L000031AE
L00003140:
	movl      32(%r13,%r14), %r12d
	movzbl    _numeric_ids(%rip), %eax
	cmpl      $1, %eax
	je        L00003173
L00003151:
	movl      %r12d, %edi
	call      _getuser
L00003159:
	testq     %rax, %rax
	je        L00003173
L0000315E:
	xorl      %r15d, %r15d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L0000316B:
	testl     %eax, %eax
	cmovs     %r15d, %eax
	jmp       L000031A0
L00003173:
	leaq      L_.str74(%rip), %rcx
	leaq      -192(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r12, %r8
	call      ___sprintf_chk
L00003198:
	movq      %r15, %rdi
	call      _strlen
L000031A0:
	cmpl      %eax, _owner_width(%rip)
	jge       L000031AE
L000031A8:
	movl      %eax, _owner_width(%rip)
L000031AE:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       L00003226
L000031B8:
	movl      36(%r13,%r14), %r12d
	movzbl    _numeric_ids(%rip), %eax
	cmpl      $1, %eax
	je        L000031EB
L000031C9:
	movl      %r12d, %edi
	call      _getgroup
L000031D1:
	testq     %rax, %rax
	je        L000031EB
L000031D6:
	xorl      %r15d, %r15d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L000031E3:
	testl     %eax, %eax
	cmovs     %r15d, %eax
	jmp       L00003218
L000031EB:
	leaq      L_.str74(%rip), %rcx
	leaq      -192(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r12, %r8
	call      ___sprintf_chk
L00003210:
	movq      %r15, %rdi
	call      _strlen
L00003218:
	cmpl      %eax, _group_width(%rip)
	jge       L00003226
L00003220:
	movl      %eax, _group_width(%rip)
L00003226:
	movzbl    _print_author(%rip), %eax
	cmpl      $1, %eax
	jne       L000032A0
L00003232:
	movl      32(%r13,%r14), %r12d
	movzbl    _numeric_ids(%rip), %eax
	cmpl      $1, %eax
	je        L00003265
L00003243:
	movl      %r12d, %edi
	call      _getuser
L0000324B:
	testq     %rax, %rax
	je        L00003265
L00003250:
	xorl      %r15d, %r15d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L0000325D:
	testl     %eax, %eax
	cmovs     %r15d, %eax
	jmp       L00003292
L00003265:
	leaq      L_.str74(%rip), %rcx
	leaq      -192(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r12, %r8
	call      ___sprintf_chk
L0000328A:
	movq      %r15, %rdi
	call      _strlen
L00003292:
	cmpl      %eax, _author_width(%rip)
	jge       L000032A0
L0000329A:
	movl      %eax, _author_width(%rip)
L000032A0:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       L000032C7
L000032AC:
	movq      168(%r13,%r14), %rdi
	call      _strlen
L000032B9:
	cmpl      %eax, _scontext_width(%rip)
	jge       L000032C7
L000032C1:
	movl      %eax, _scontext_width(%rip)
L000032C7:
	cmpl      $0, _format(%rip)
	jne       L000033BB
L000032D4:
	movzwl    22(%r13,%r14), %edi
	leaq      -496(%rbp), %rsi
	call      _umaxtostr
L000032E6:
	movq      %rax, %rdi
	call      _strlen
L000032EE:
	cmpl      %eax, _nlink_width(%rip)
	jge       L000032FC
L000032F6:
	movl      %eax, _nlink_width(%rip)
L000032FC:
	movq      -848(%rbp), %rax
	movzwl    (%rax), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       L00003380
L00003317:
	leaq      40(%r13,%r14), %r15
	movzbl    43(%r13,%r14), %edi
	leaq      -528(%rbp), %rsi
	call      _umaxtostr
L0000332E:
	movq      %rax, %rdi
	call      _strlen
L00003336:
	cmpl      %eax, _major_device_number_width(%rip)
	jge       L00003344
L0000333E:
	movl      %eax, _major_device_number_width(%rip)
L00003344:
	movl      (%r15), %edi
	andq      $16777215, %rdi
	leaq      -528(%rbp), %rsi
	call      _umaxtostr
L0000335A:
	movq      %rax, %rdi
	call      _strlen
L00003362:
	movl      _minor_device_number_width(%rip), %ecx
	cmpl      %eax, %ecx
	jge       L00003374
L0000336C:
	movl      %eax, _minor_device_number_width(%rip)
	movl      %eax, %ecx
L00003374:
	movl      _major_device_number_width(%rip), %eax
	leal      2(%rax,%rcx), %eax
	jmp       L000033AD
L00003380:
	movq      112(%r13,%r14), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	leaq      -800(%rbp), %rsi
	movl      $1, %ecx
	call      _human_readable
L000033A3:
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L000033AD:
	cmpl      %eax, _file_size_width(%rip)
	jge       L000033BB
L000033B5:
	movl      %eax, _file_size_width(%rip)
L000033BB:
	movzbl    _print_inode(%rip), %eax
	cmpl      $1, %eax
	jne       L000033F3
L000033C7:
	movq      -872(%rbp), %rax
	movq      (%rax), %rdi
	leaq      -832(%rbp), %rsi
	call      _umaxtostr
L000033DD:
	movq      %rax, %rdi
	call      _strlen
L000033E5:
	cmpl      %eax, _inode_number_width(%rip)
	jge       L000033F3
L000033ED:
	movl      %eax, _inode_number_width(%rip)
L000033F3:
	movq      -840(%rbp), %rdi
	call      _xstrdup
L000033FF:
	movq      -864(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
L00003410:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00003432
L00003420:
	movq      %rbx, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00003432:
	call      ___stack_chk_fail
L00003437:
	call      _xalloc_die
L0000343C:
	.align 4, 0x90
# ----------------------
_sort_files:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      _cwd_n_used(%rip), %rax
	movq      %rax, %rcx
	shrq      $1, %rcx
	addq      %rax, %rcx
	cmpq      %rcx, _sorted_file_alloc(%rip)
	jae       L000034A9
L0000345D:
	movq      _sorted_file(%rip), %rdi
	call      _free
L00003469:
	movq      _cwd_n_used(%rip), %rax
	movq      $768614336404564651, %rcx
	cmpq      %rcx, %rax
	jae       L000035B7
L00003483:
	shlq      $3, %rax
	leaq      (%rax,%rax,2), %rdi
	call      _xmalloc
L00003490:
	movq      %rax, _sorted_file(%rip)
	movq      _cwd_n_used(%rip), %rax
	leaq      (%rax,%rax,2), %rcx
	movq      %rcx, _sorted_file_alloc(%rip)
L000034A9:
	xorl      %ecx, %ecx
	testq     %rax, %rax
	je        L000034E4
L000034B0:
	xorl      %edx, %edx
	.align 4, 0x90
L000034C0:
	movq      _sorted_file(%rip), %rsi
	movq      _cwd_file(%rip), %rdi
	addq      %rcx, %rdi
	movq      %rdi, (%rsi,%rdx,8)
	incq      %rdx
	addq      $192, %rcx
	cmpq      %rdx, %rax
	jne       L000034C0
L000034E4:
	cmpl      $-1, _sort_type(%rip)
	je        L000035B5
L000034F1:
	leaq      _failed_strcoll(%rip), %rdi
	call      _setjmp
L000034FD:
	testl     %eax, %eax
	je        L00003559
L00003501:
	movl      _sort_type(%rip), %r8d
	cmpl      $3, %r8d
	je        L000035BC
L00003512:
	movq      _cwd_n_used(%rip), %rdx
	movl      $1, %r9d
	xorl      %esi, %esi
	testq     %rdx, %rdx
	je        L0000356A
L00003526:
	movl      $1, %r9d
	xorl      %edi, %edi
	.align 4, 0x90
L00003530:
	movq      _sorted_file(%rip), %rcx
	movq      _cwd_file(%rip), %rax
	addq      %rsi, %rax
	movq      %rax, (%rcx,%rdi,8)
	incq      %rdi
	addq      $192, %rsi
	cmpq      %rdi, %rdx
	jne       L00003530
L00003554:
	movq      %rdx, %rsi
	jmp       L0000356A
L00003559:
	movq      _cwd_n_used(%rip), %rsi
	movl      _sort_type(%rip), %r8d
	xorl      %r9d, %r9d
L0000356A:
	movq      _sorted_file(%rip), %rdi
	movzbl    _directories_first(%rip), %r10d
	movzbl    _sort_reverse(%rip), %ecx
	xorl      %edx, %edx
	cmpl      $4, %r8d
	cmove     _time_type(%rip), %edx
	addl      %r8d, %edx
	shlq      $6, %rdx
	leaq      _sort_functions(%rip), %rax
	addq      %rdx, %rax
	shlq      $5, %r9
	addq      %rax, %r9
	shlq      $4, %rcx
	addq      %r9, %rcx
	movq      (%rcx,%r10,8), %rdx
	call      _mpsort
L000035B5:
	popq      %rbp
	ret       
L000035B7:
	call      _xalloc_die
L000035BC:
	leaq      L___func__.sort_files(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str67(%rip), %r8
	movl      $3600, %edx
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %r8, %rcx
	call      ___assert_rtn
L000035E4:
	.align 4, 0x90
# ----------------------
_extract_dirs_from_files:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movl      %esi, -52(%rbp)
	movq      %rdi, -48(%rbp)
	testq     %rdi, %rdi
	je        L00003650
L0000360D:
	movq      _active_dir_set(%rip), %rax
	testq     %rax, %rax
	je        L00003650
L00003619:
	movl      $32, %edi
	call      _xmalloc
L00003623:
	movq      %rax, %rbx
	movq      -48(%rbp), %rdi
	call      _xstrdup
L0000362F:
	movq      %rax, 8(%rbx)
	movq      $0, (%rbx)
	movb      $0, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
L00003650:
	movq      _cwd_n_used(%rip), %r14
	xorl      %eax, %eax
	testq     %r14, %r14
	je        L00003817
L00003662:
	.align 4, 0x90
L00003670:
	movq      _sorted_file(%rip), %rax
	movq      -8(%rax,%r14,8), %r15
	decq      %r14
	movl      160(%r15), %eax
	cmpl      $3, %eax
	je        L00003694
L0000368B:
	cmpl      $9, %eax
	jne       L000037C8
L00003694:
	movq      (%r15), %r12
	cmpq      $0, -48(%rbp)
	je        L000036EA
L0000369E:
	movq      %r12, %rdi
	call      _last_component
L000036A6:
	movzbl    (%rax), %ecx
	cmpl      $46, %ecx
	jne       L000036E0
L000036AE:
	movzbl    1(%rax), %ecx
	cmpl      $46, %ecx
	movl      $2, %ecx
	je        L000036C1
L000036BC:
	movl      $1, %ecx
L000036C1:
	movb      (%rax,%rcx), %al
	testb     %al, %al
	je        L000037C8
L000036CC:
	movzbl    %al, %eax
	cmpl      $47, %eax
	je        L000037C8
L000036D8:
	.align 4, 0x90
L000036E0:
	movzbl    (%r12), %eax
	cmpl      $47, %eax
	jne       L00003740
L000036EA:
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
L000036F8:
	movq      %rax, %rbx
	testq     %r13, %r13
	movl      $0, %eax
	je        L0000370D
L00003705:
	movq      %r13, %rdi
	call      _xstrdup
L0000370D:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	movl      $0, %eax
	je        L00003723
L0000371B:
	movq      %r12, %rdi
	call      _xstrdup
L00003723:
	movq      %rax, (%rbx)
	movl      -52(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	jmp       L000037AD
L00003740:
	xorl      %edx, %edx
	movq      -48(%rbp), %rdi
	movq      %r12, %rsi
	call      _file_name_concat
L0000374E:
	movq      %rax, %r12
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
L0000375F:
	movq      %rax, %rbx
	testq     %r13, %r13
	movl      $0, %eax
	je        L00003774
L0000376C:
	movq      %r13, %rdi
	call      _xstrdup
L00003774:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	movl      $0, %eax
	je        L0000378A
L00003782:
	movq      %r12, %rdi
	call      _xstrdup
L0000378A:
	movq      %rax, (%rbx)
	movl      -52(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	movq      %r12, %rdi
	call      _free
L000037AD:
	cmpl      $9, 160(%r15)
	jne       L000037C8
L000037B7:
	movq      (%r15), %rdi
	call      _free
L000037BF:
	movq      8(%r15), %rdi
	call      _free
L000037C8:
	testq     %r14, %r14
	jne       L00003670
L000037D1:
	movq      _cwd_n_used(%rip), %rcx
	xorl      %edx, %edx
	xorl      %eax, %eax
	testq     %rcx, %rcx
	je        L00003817
L000037E1:
	.align 4, 0x90
L000037F0:
	movq      _sorted_file(%rip), %rsi
	movq      (%rsi,%rdx,8), %rdi
	movq      %rdi, (%rsi,%rax,8)
	cmpl      $9, 160(%rdi)
	setne     %bl
	movzbl    %bl, %esi
	addq      %rsi, %rax
	incq      %rdx
	cmpq      %rcx, %rdx
	jb        L000037F0
L00003817:
	movq      %rax, _cwd_n_used(%rip)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000382D:
	.align 4, 0x90
# ----------------------
_print_current_files:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $3928, %rsp
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movl      _format(%rip), %eax
	cmpq      $4, %rax
	ja        L0000475E
L00003862:
	leaq      L0000478C(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00003872:
	cmpq      $0, _cwd_n_used(%rip)
	je        L0000475E
L00003880:
	leaq      -3200(%rbp), %r15
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	xorl      %ebx, %ebx
L00003890:
	cmpb      $0, _print_with_color(%rip)
	je        L00003A2C
L0000389D:
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        L00003A2C
L000038AD:
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	jne       L000038E0
L000038BA:
	movl      $2, %edx
	leaq      L_.str233(%rip), %rsi
	call      _strncmp
L000038CB:
	testl     %eax, %eax
	jne       L00003900
L000038CF:
	jmp       L00003A2C
L000038D4:
	.align 4, 0x90
L000038E0:
	cmpq      $1, %rax
	jne       L00003900
L000038E6:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00003A2C
L000038F2:
	.align 4, 0x90
L00003900:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00003948
L0000390A:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00003924
L0000391B:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00003943
L00003924:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00003930:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L0000393C:
	leaq      _color_indicator+16(%rip), %rdi
L00003943:
	call      _put_indicator
L00003948:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
L00003964:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000039AC
L0000396E:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00003988
L0000397F:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000039A7
L00003988:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00003994:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000039A0:
	leaq      _color_indicator+16(%rip), %rdi
L000039A7:
	call      _put_indicator
L000039AC:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
L000039C8:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00003A10
L000039D2:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L000039EC
L000039E3:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00003A0B
L000039EC:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000039F8:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00003A04:
	leaq      _color_indicator+16(%rip), %rdi
L00003A0B:
	call      _put_indicator
L00003A10:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
L00003A2C:
	movq      _sorted_file(%rip), %rax
	movq      %rbx, -3928(%rbp)
	movq      (%rax,%rbx,8), %r12
	cmpb      $0, 176(%r12)
	je        L00003A60
L00003A49:
	leaq      16(%r12), %rdi
	leaq      -1068(%rbp), %rsi
	call      _filemodestring
L00003A5A:
	jmp       L00003A99
L00003A5C:
	.align 4, 0x90
L00003A60:
	movl      160(%r12), %eax
	leaq      _filetype_letter(%rip), %rcx
	movb      (%rax,%rcx), %al
	movb      %al, -1068(%rbp)
	leaq      -1067(%rbp), %rax
	movq      $4557430888798830399, %rcx
	movq      %rcx, (%rax)
	movw      $16191, 8(%rax)
	movb      $0, -1057(%rbp)
L00003A99:
	cmpb      $0, _any_has_acl(%rip)
	je        L00003AC0
L00003AA2:
	movl      180(%r12), %eax
	cmpl      $2, %eax
	jne       L00003AD0
L00003AAF:
	movb      $43, -1058(%rbp)
	jmp       L00003AE0
L00003AB8:
	.align 4, 0x90
L00003AC0:
	movb      $0, -1058(%rbp)
	jmp       L00003AE0
L00003AC9:
	.align 4, 0x90
L00003AD0:
	cmpl      $1, %eax
	jne       L00003AE0
L00003AD5:
	movb      $46, -1058(%rbp)
	.align 4, 0x90
L00003AE0:
	movl      _time_type(%rip), %eax
	testl     %eax, %eax
	je        L00003B00
L00003AEA:
	cmpl      $2, %eax
	jne       L00003B10
L00003AEF:
	movups    48(%r12), %xmm0
	jmp       L00003B1F
L00003AF7:
	.align 4, 0x90
L00003B00:
	movups    64(%r12), %xmm0
	jmp       L00003B1F
L00003B08:
	.align 4, 0x90
L00003B10:
	cmpl      $1, %eax
	jne       L00004785
L00003B19:
	movups    80(%r12), %xmm0
L00003B1F:
	movaps    %xmm0, -3920(%rbp)
	movzbl    _print_inode(%rip), %eax
	cmpl      $1, %eax
	movq      %r15, %r13
	jne       L00003B98
L00003B35:
	movl      _inode_number_width(%rip), %ebx
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %r9
	je        L00003B6D
L00003B4D:
	movq      24(%r12), %rdi
	testq     %rdi, %rdi
	leaq      L_.str57(%rip), %r9
	je        L00003B6D
L00003B5E:
	leaq      -3232(%rbp), %rsi
	call      _umaxtostr
L00003B6A:
	movq      %rax, %r9
L00003B6D:
	xorl      %esi, %esi
	movl      $2123, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str56(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
L00003B88:
	movq      %r15, %rdi
	call      _strlen
L00003B90:
	leaq      -3200(%rbp,%rax), %r13
L00003B98:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       L00003C35
L00003BA8:
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rbx
	je        L00003BE0
L00003BBA:
	movq      120(%r12), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	movl      $512, %ecx
	leaq      -3504(%rbp), %rsi
	call      _human_readable
L00003BDD:
	movq      %rax, %rbx
L00003BE0:
	movl      _block_size_width(%rip), %r14d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
L00003BF1:
	movl      %r14d, %ecx
	subl      %eax, %ecx
	testl     %ecx, %ecx
	jle       L00003C20
L00003BFA:
	decl      %r14d
	subl      %eax, %r14d
	leaq      1(%r14), %rdx
	movl      $32, %esi
	movq      %r13, %rdi
	call      _memset
L00003C11:
	leaq      1(%r13,%r14), %r13
	.align 4, 0x90
L00003C20:
	movb      (%rbx), %al
	incq      %rbx
	movb      %al, (%r13)
	incq      %r13
	testb     %al, %al
	jne       L00003C20
L00003C30:
	movb      $32, -1(%r13)
L00003C35:
	movl      _nlink_width(%rip), %ebx
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rax
	je        L00003C5F
L00003C4D:
	movzwl    22(%r12), %edi
	leaq      -3536(%rbp), %rsi
	call      _umaxtostr
L00003C5F:
	movq      %rax, (%rsp)
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str58(%rip), %rcx
	movq      %r13, %rdi
	leaq      -1068(%rbp), %r8
	movl      %ebx, %r9d
	call      ___sprintf_chk
L00003C8A:
	movq      %r13, %rdi
	call      _strlen
L00003C92:
	movq      %rax, %rbx
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00003CBF
L00003CA1:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str59(%rip), %rdi
	call      _fputs
L00003CB7:
	addq      $2, _dired_pos(%rip)
L00003CBF:
	addq      %rbx, %r13
	movzbl    _print_owner(%rip), %eax
	cmpl      $1, %eax
	jne       L00003D00
L00003CCE:
	movzbl    _print_group(%rip), %eax
	cmpl      $1, %eax
	jne       L00003D00
L00003CDA:
	movb      _print_author(%rip), %al
	testb     %al, %al
	jne       L00003D00
L00003CE4:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       L00003E29
L00003CF4:
	.align 4, 0x90
L00003D00:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      %r15, %rdi
	call      _fputs
L00003D12:
	subq      %r15, %r13
	addq      %r13, _dired_pos(%rip)
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       L00003D68
L00003D26:
	movl      32(%r12), %ebx
	movl      _owner_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rdi
	je        L00003D5D
L00003D44:
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	movl      $0, %edi
	jne       L00003D5D
L00003D53:
	movl      %ebx, %edi
	call      _getuser
L00003D5A:
	movq      %rax, %rdi
L00003D5D:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
L00003D68:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       L00003DB4
L00003D72:
	movl      36(%r12), %ebx
	movl      _group_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rdi
	je        L00003DA9
L00003D90:
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	movl      $0, %edi
	jne       L00003DA9
L00003D9F:
	movl      %ebx, %edi
	call      _getgroup
L00003DA6:
	movq      %rax, %rdi
L00003DA9:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
L00003DB4:
	movzbl    _print_author(%rip), %eax
	cmpl      $1, %eax
	jne       L00003E02
L00003DC0:
	movl      32(%r12), %ebx
	movl      _author_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rdi
	je        L00003DF7
L00003DDE:
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	movl      $0, %edi
	jne       L00003DF7
L00003DED:
	movl      %ebx, %edi
	call      _getuser
L00003DF4:
	movq      %rax, %rdi
L00003DF7:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
L00003E02:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	movq      %r15, %r13
	jne       L00003E29
L00003E11:
	movq      168(%r12), %rdi
	movl      _scontext_width(%rip), %edx
	xorl      %esi, %esi
	call      _format_user_or_group
L00003E26:
	movq      %r15, %r13
L00003E29:
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rbx
	je        L00003F26
L00003E3F:
	movzwl    20(%r12), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       L00003F00
L00003E5A:
	movl      _file_size_width(%rip), %ebx
	movl      _major_device_number_width(%rip), %eax
	addl      $-2, %ebx
	subl      %eax, %ebx
	subl      _minor_device_number_width(%rip), %ebx
	movl      $0, %ecx
	cmovs     %ecx, %ebx
	addl      %eax, %ebx
	movzbl    43(%r12), %edi
	leaq      -3568(%rbp), %rsi
	call      _umaxtostr
L00003E8D:
	movq      %rax, -3936(%rbp)
	movq      %r15, %r14
	movl      _minor_device_number_width(%rip), %r15d
	movl      40(%r12), %edi
	andq      $16777215, %rdi
	leaq      -3600(%rbp), %rsi
	call      _umaxtostr
L00003EB6:
	movq      %rax, 8(%rsp)
	movl      %r15d, (%rsp)
	movq      %r14, %r15
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str60(%rip), %rcx
	movl      %ebx, %r8d
	movq      %r13, %rdi
	movq      -3936(%rbp), %r9
	call      ___sprintf_chk
L00003EE9:
	movl      _file_size_width(%rip), %eax
	incl      %eax
	cltq      
	addq      %rax, %r13
	jmp       L00003F75
L00003EF8:
	.align 4, 0x90
L00003F00:
	movq      112(%r12), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	movl      $1, %ecx
	leaq      -3872(%rbp), %rsi
	call      _human_readable
L00003F23:
	movq      %rax, %rbx
L00003F26:
	movl      _file_size_width(%rip), %r14d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
L00003F37:
	movl      %r14d, %ecx
	subl      %eax, %ecx
	testl     %ecx, %ecx
	jle       L00003F60
L00003F40:
	decl      %r14d
	subl      %eax, %r14d
	leaq      1(%r14), %rdx
	movl      $32, %esi
	movq      %r13, %rdi
	call      _memset
L00003F57:
	leaq      1(%r13,%r14), %r13
	.align 4, 0x90
L00003F60:
	movb      (%rbx), %al
	incq      %rbx
	movb      %al, (%r13)
	incq      %r13
	testb     %al, %al
	jne       L00003F60
L00003F70:
	movb      $32, -1(%r13)
L00003F75:
	leaq      -3920(%rbp), %rdi
	call      _localtime
L00003F81:
	movq      %rax, %r14
	movb      $1, (%r13)
	cmpb      $0, 176(%r12)
	je        L00004070
L00003F98:
	testq     %r14, %r14
	je        L00004070
L00003FA1:
	movq      _current_time(%rip), %rax
	movq      -3920(%rbp), %rsi
	cmpq      %rsi, %rax
	jl        L00003FD0
L00003FB4:
	movq      _current_time+8(%rip), %rdx
	movq      -3912(%rbp), %rcx
	jg        L00003FF8
L00003FC4:
	cmpl      %ecx, %edx
	jns       L00003FF8
L00003FC8:
	.align 4, 0x90
L00003FD0:
	leaq      _current_time(%rip), %rdi
	call      _gettime
L00003FDC:
	movq      _current_time(%rip), %rax
	movq      _current_time+8(%rip), %rdx
	movq      -3920(%rbp), %rsi
	movq      -3912(%rbp), %rcx
L00003FF8:
	leaq      -15778476(%rax), %rdi
	cmpq      %rsi, %rdi
	jl        L00004020
L00004004:
	cmpq      %rsi, %rdi
	jle       L0000400D
L00004009:
	xorl      %edi, %edi
	jmp       L00004040
L0000400D:
	cmpl      %ecx, %edx
	js        L00004020
L00004011:
	xorl      %edi, %edi
	jmp       L00004040
L00004015:
	.align 4, 0x90
L00004020:
	movb      $1, %dil
	cmpq      %rax, %rsi
	jl        L00004040
L00004028:
	cmpq      %rax, %rsi
	jle       L00004031
L0000402D:
	xorl      %edi, %edi
	jmp       L00004040
L00004031:
	movl      %ecx, %edi
	subl      %edx, %edi
	shrl      $31, %edi
	.align 4, 0x90
L00004040:
	movzbl    %dil, %eax
	leaq      _long_time_format(%rip), %rdx
	movq      (%rdx,%rax,8), %rsi
	movq      %r13, %rdi
	movq      %r14, %rdx
	call      _align_nstrftime
L0000405A:
	testq     %rax, %rax
	jne       L000040E0
L00004063:
	cmpb      $0, (%r13)
	movl      $0, %eax
	je        L000040E0
L0000406F:
	.align 4, 0x90
L00004070:
	movl      _long_time_expected_width.width(%rip), %ebx
	testl     %ebx, %ebx
	jns       L00004110
L0000407E:
	movq      $0, -3504(%rbp)
	leaq      -3504(%rbp), %rdi
	call      _localtime
L00004095:
	testq     %rax, %rax
	je        L000040EF
L0000409A:
	movq      _long_time_format(%rip), %rsi
	xorl      %ecx, %ecx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rdx
	call      _align_nstrftime
L000040B2:
	testq     %rax, %rax
	je        L000040EF
L000040B7:
	xorl      %edx, %edx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rsi
	call      _mbsnwidth
L000040C8:
	movl      %eax, %ebx
	movl      %ebx, _long_time_expected_width.width(%rip)
	jmp       L000040F5
L000040D2:
	.align 4, 0x90
L000040E0:
	leaq      1(%r13,%rax), %rbx
	movw      $32, (%r13,%rax)
	jmp       L00004163
L000040EF:
	movl      _long_time_expected_width.width(%rip), %ebx
L000040F5:
	testl     %ebx, %ebx
	jns       L00004110
L000040F9:
	movl      $0, _long_time_expected_width.width(%rip)
	xorl      %ebx, %ebx
	.align 4, 0x90
L00004110:
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %r9
	je        L00004138
L00004122:
	movq      -3920(%rbp), %rdi
	leaq      -3904(%rbp), %rsi
	call      _imaxtostr
L00004135:
	movq      %rax, %r9
L00004138:
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r13, %rdi
	leaq      L_.str56(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
L00004155:
	movq      %r13, %rdi
	call      _strlen
L0000415D:
	movq      %rax, %rbx
	addq      %r13, %rbx
L00004163:
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	movq      (%r13), %rsi
	movq      %r15, %rdi
	call      _fputs
L00004176:
	subq      %r15, %rbx
	addq      %rbx, _dired_pos(%rip)
	xorl      %esi, %esi
	movq      %r12, %rdi
	leaq      _dired_obstack(%rip), %rdx
	movq      %rbx, %rcx
	call      _print_name_with_quoting
L00004194:
	movq      %rax, %r14
	movl      160(%r12), %edx
	cmpl      $6, %edx
	jne       L00004230
L000041A8:
	cmpq      $0, 8(%r12)
	je        L000042C0
L000041B4:
	movq      (%r13), %rsi
	leaq      L_.str61(%rip), %rdi
	call      _fputs
L000041C4:
	addq      $4, _dired_pos(%rip)
	leaq      4(%rbx,%r14), %rcx
	movl      $1, %esi
	xorl      %edx, %edx
	movq      %r12, %rdi
	call      _print_name_with_quoting
L000041E0:
	movl      _indicator_style(%rip), %eax
	testl     %eax, %eax
	je        L000042C0
L000041EE:
	movzwl    164(%r12), %edx
	movl      %edx, %ecx
	andl      $61440, %ecx
	movl      $47, %edi
	cmpl      $16384, %ecx
	je        L0000427F
L0000420C:
	movzwl    %cx, %ecx
	cmpl      $32768, %ecx
	jne       L00004253
L00004217:
	testb     $73, %dl
	je        L000042C0
L00004220:
	movl      $42, %edi
	cmpl      $3, %eax
	je        L0000427F
L0000422A:
	jmp       L000042C0
L0000422F:
	.align 4, 0x90
L00004230:
	cmpl      $0, _indicator_style(%rip)
	je        L000042C0
L0000423D:
	movzwl    20(%r12), %esi
	movzbl    176(%r12), %edi
	call      _print_type_indicator
L00004251:
	jmp       L000042C0
L00004253:
	cmpl      $1, %eax
	je        L000042C0
L00004258:
	movl      $64, %edi
	cmpl      $40960, %ecx
	je        L0000427F
L00004265:
	movl      $124, %edi
	cmpl      $4096, %ecx
	je        L0000427F
L00004272:
	movl      $61, %edi
	cmpl      $49152, %ecx
	jne       L000042C0
L0000427F:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00004295
L00004290:
	cmpl      40(%rsi), %eax
	jle       L000042AB
L00004295:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %dil, (%rax)
	incq      _dired_pos(%rip)
	jmp       L000042C0
L000042AB:
	call      ___swbuf
L000042B0:
	incq      _dired_pos(%rip)
	.align 4, 0x90
L000042C0:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L000042E0
L000042D1:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L000042EA
L000042E0:
	movl      $10, %edi
	call      ___swbuf
L000042EA:
	movq      -3928(%rbp), %rbx
	incq      _dired_pos(%rip)
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00003890
L00004308:
	jmp       L0000475E
L0000430D:
	xorl      %ebx, %ebx
	cmpq      $0, _cwd_n_used(%rip)
	je        L0000475E
L0000431D:
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	.align 4, 0x90
L00004330:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %rdi
	xorl      %esi, %esi
	call      _print_file_name_and_frills
L00004342:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00004370
L00004352:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L0000437A
L00004361:
	.align 4, 0x90
L00004370:
	movl      $10, %edi
	call      ___swbuf
L0000437A:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00004330
L00004386:
	jmp       L0000475E
L0000438B:
	movl      $1, %edi
	call      _calculate_columns
L00004395:
	movq      %rax, %rcx
	movq      _cwd_n_used(%rip), %rax
	xorl      %edx, %edx
	divq      %rcx
	testq     %rdx, %rdx
	setne     %dl
	movzbl    %dl, %r15d
	addq      %rax, %r15
	movq      %r15, -3944(%rbp)
	je        L0000475E
L000043BE:
	movq      _column_info(%rip), %rax
	leaq      (%rcx,%rcx,2), %rcx
	leaq      -8(%rax,%rcx,8), %r12
	movq      %r12, -3936(%rbp)
	xorl      %ebx, %ebx
	.align 4, 0x90
L000043E0:
	movq      %rbx, -3952(%rbp)
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r13
	movq      %r13, %rdi
	call      _length_of_file_name_and_frills
L000043FA:
	movq      %rax, %r14
	movq      (%r12), %rax
	movq      (%rax), %rax
	movq      %rax, -3928(%rbp)
	xorl      %esi, %esi
	movq      %r13, %rdi
	call      _print_file_name_and_frills
L00004415:
	leaq      (%rbx,%r15), %r12
	cmpq      _cwd_n_used(%rip), %r12
	jae       L00004492
L00004422:
	movl      $8, %r13d
	xorl      %ebx, %ebx
	.align 4, 0x90
L00004430:
	addq      %rbx, %r14
	addq      -3928(%rbp), %rbx
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _indent
L00004445:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r12,8), %r15
	movq      %r15, %rdi
	call      _length_of_file_name_and_frills
L00004458:
	movq      %rax, %r14
	movq      -3936(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r13), %rax
	movq      %rax, -3928(%rbp)
	movq      %r15, %rdi
	movq      -3944(%rbp), %r15
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
L00004482:
	addq      %r15, %r12
	addq      $8, %r13
	cmpq      _cwd_n_used(%rip), %r12
	jb        L00004430
L00004492:
	movq      -3936(%rbp), %rbx
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L000044C0
L000044B0:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L000044CA
L000044BF:
	.align 4, 0x90
L000044C0:
	movl      $10, %edi
	call      ___swbuf
L000044CA:
	movq      %rbx, %r12
	movq      -3952(%rbp), %rbx
	incq      %rbx
	cmpq      %r15, %rbx
	jb        L000043E0
L000044E0:
	jmp       L0000475E
L000044E5:
	xorl      %r15d, %r15d
	xorl      %edi, %edi
	call      _calculate_columns
L000044EF:
	movq      %rax, -3928(%rbp)
	leaq      (%rax,%rax,2), %rbx
	movq      %rbx, -3936(%rbp)
	movq      _column_info(%rip), %r12
	movq      _sorted_file(%rip), %rax
	movq      (%rax), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
L0000451A:
	movq      %rax, %r13
	movq      -8(%r12,%rbx,8), %rax
	movq      (%rax), %rbx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _print_file_name_and_frills
L0000452F:
	movl      $1, %r14d
	cmpq      $2, _cwd_n_used(%rip)
	jb        L0000472E
L00004543:
	movq      -3936(%rbp), %rax
	leaq      -8(%r12,%rax,8), %rax
	movq      %rax, -3936(%rbp)
	.align 4, 0x90
L00004560:
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -3928(%rbp)
	movq      %rdx, %r12
	testq     %r12, %r12
	je        L00004590
L00004574:
	addq      %r15, %r13
	addq      %rbx, %r15
	movq      %r13, %rdi
	movq      %r15, %rsi
	call      _indent
L00004585:
	jmp       L000045D0
L00004587:
	.align 4, 0x90
L00004590:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L000045B9
L000045A7:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	xorl      %r15d, %r15d
	jmp       L000045D0
L000045B9:
	movl      $10, %edi
	call      ___swbuf
L000045C3:
	xorl      %r15d, %r15d
	.align 4, 0x90
L000045D0:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r14,8), %rbx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _print_file_name_and_frills
L000045E6:
	movq      %rbx, %rdi
	call      _length_of_file_name_and_frills
L000045EE:
	movq      %rax, %r13
	movq      -3936(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r12,8), %rbx
	incq      %r14
	cmpq      _cwd_n_used(%rip), %r14
	jb        L00004560
L0000460F:
	jmp       L0000472E
L00004614:
	xorl      %r13d, %r13d
	cmpq      $0, _cwd_n_used(%rip)
	je        L0000472E
L00004625:
	xorl      %ebx, %ebx
	.align 4, 0x90
L00004630:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r13,8), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
L00004643:
	movq      %rax, %r15
	testq     %r13, %r13
	je        L00004710
L0000464F:
	leaq      2(%r15,%rbx), %rax
	movq      %rax, -3928(%rbp)
	addq      $2, %rbx
	movq      _line_length(%rip), %rcx
	movq      %rcx, -3936(%rbp)
	cmpq      %rcx, %rax
	movl      $0, %eax
	cmovae    %rax, %rbx
	movl      $10, %r12d
	movl      $32, %eax
	cmovb     %eax, %r12d
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L000046A4
L0000469F:
	cmpl      40(%rsi), %eax
	jle       L000046B3
L000046A4:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $44, (%rax)
	jmp       L000046C0
L000046B3:
	movl      $44, %edi
	call      ___swbuf
L000046BD:
	.align 4, 0x90
L000046C0:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L000046F1
L000046D7:
	movq      -3936(%rbp), %rcx
	cmpq      %rcx, -3928(%rbp)
	setae     %cl
	cmpl      40(%rsi), %eax
	jle       L00004700
L000046ED:
	testb     %cl, %cl
	jne       L00004700
L000046F1:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %r12b, (%rax)
	jmp       L00004710
L00004700:
	movl      %r12d, %edi
	call      ___swbuf
L00004708:
	.align 4, 0x90
L00004710:
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
L0000471B:
	addq      %r15, %rbx
	incq      %r13
	cmpq      _cwd_n_used(%rip), %r13
	jb        L00004630
L0000472E:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00004754
L00004745:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L0000475E
L00004754:
	movl      $10, %edi
	call      ___swbuf
L0000475E:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00004780
L0000476E:
	addq      $3928, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004780:
	call      ___stack_chk_fail
L00004785:
	call      _abort
L0000478A:
	.align 4, 0x90
# ----------------------
L0000478C:
	.long	L00003872-L0000478C
	.long	L0000430D-L0000478C
	.long	L0000438B-L0000478C
	.long	L000044E5-L0000478C
	.long	L00004614-L0000478C
# ----------------------
_dired_dump_obstack:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      16(%rsi), %r15
	movq      24(%rsi), %rcx
	movq      %rcx, %r13
	subq      %r15, %r13
	shrq      $3, %r13
	je        L00004854
L000047C6:
	cmpq      %r15, %rcx
	jne       L000047CF
L000047CB:
	orb       $2, 80(%rsi)
L000047CF:
	movq      48(%rsi), %rax
	addq      %rax, %rcx
	notq      %rax
	andq      %rcx, %rax
	movq      %rax, 24(%rsi)
	movq      8(%rsi), %rdx
	movq      32(%rsi), %r8
	movq      %rax, %rbx
	subq      %rdx, %rbx
	movq      %r8, %rcx
	subq      %rdx, %rcx
	cmpq      %rcx, %rbx
	jbe       L00004800
L000047F9:
	movq      %r8, 24(%rsi)
	movq      %r8, %rax
L00004800:
	movq      %rax, 16(%rsi)
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	call      _fputs
L00004814:
	leaq      L_.str216(%rip), %r14
	xorl      %ebx, %ebx
	.align 4, 0x90
L00004820:
	movq      (%r15,%rbx,8), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _printf
L0000482E:
	incq      %rbx
	cmpq      %r13, %rbx
	jb        L00004820
L00004836:
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00004863
L00004847:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
L00004854:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004863:
	movl      $10, %edi
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       ___swbuf
# ----------------------
	.align 4, 0x90
	.globl	_usage
_usage:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       L00004B30
L00004897:
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str9(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L000048AF:
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str10(%rip), %rdi
	call      _fputs
L000048C5:
	movq      (%rbx), %rsi
	leaq      L_.str54(%rip), %rdi
	call      _fputs
L000048D4:
	movq      (%rbx), %rsi
	leaq      L_.str11(%rip), %rdi
	call      _fputs
L000048E3:
	movq      (%rbx), %rsi
	leaq      L_.str12(%rip), %rdi
	call      _fputs
L000048F2:
	movq      (%rbx), %rsi
	leaq      L_.str13(%rip), %rdi
	call      _fputs
L00004901:
	movq      (%rbx), %rsi
	leaq      L_.str14(%rip), %rdi
	call      _fputs
L00004910:
	movq      (%rbx), %rsi
	leaq      L_.str15(%rip), %rdi
	call      _fputs
L0000491F:
	movq      (%rbx), %rsi
	leaq      L_.str16(%rip), %rdi
	call      _fputs
L0000492E:
	movq      (%rbx), %rsi
	leaq      L_.str17(%rip), %rdi
	call      _fputs
L0000493D:
	movq      (%rbx), %rsi
	leaq      L_.str18(%rip), %rdi
	call      _fputs
L0000494C:
	movq      (%rbx), %rsi
	leaq      L_.str19(%rip), %rdi
	call      _fputs
L0000495B:
	movq      (%rbx), %rsi
	leaq      L_.str20(%rip), %rdi
	call      _fputs
L0000496A:
	movq      (%rbx), %rsi
	leaq      L_.str21(%rip), %rdi
	call      _fputs
L00004979:
	movq      (%rbx), %rsi
	leaq      L_.str22(%rip), %rdi
	call      _fputs
L00004988:
	movq      (%rbx), %rsi
	leaq      L_.str23(%rip), %rdi
	call      _fputs
L00004997:
	movq      (%rbx), %rsi
	leaq      L_.str24(%rip), %rdi
	call      _fputs
L000049A6:
	movq      (%rbx), %rsi
	leaq      L_.str25(%rip), %rdi
	call      _fputs
L000049B5:
	movq      (%rbx), %rsi
	leaq      L_.str26(%rip), %rdi
	call      _fputs
L000049C4:
	movq      (%rbx), %rsi
	leaq      L_.str27(%rip), %rdi
	call      _fputs
L000049D3:
	movq      (%rbx), %rsi
	leaq      L_.str28(%rip), %rdi
	call      _fputs
L000049E2:
	movq      (%rbx), %rsi
	leaq      L_.str29(%rip), %rdi
	call      _fputs
L000049F1:
	movq      (%rbx), %rsi
	leaq      L_.str30(%rip), %rdi
	call      _fputs
L00004A00:
	movq      (%rbx), %rsi
	leaq      L_.str53(%rip), %rdi
	call      _fputs
L00004A0F:
	movq      (%rbx), %rsi
	leaq      L_.str31(%rip), %rdi
	call      _fputs
L00004A1E:
	movq      (%rbx), %rsi
	leaq      L_.str32(%rip), %rdi
	call      _fputs
L00004A2D:
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	jne       L00004A44
L00004A3B:
	leaq      L_.str33(%rip), %r12
	jmp       L00004A59
L00004A44:
	cmpl      $2, %eax
	leaq      L_.str34(%rip), %rax
	leaq      L_.str35(%rip), %r12
	cmove     %rax, %r12
L00004A59:
	leaq      _emit_ancillary_info.infomap(%rip), %rbx
	leaq      L_.str36(%rip), %rsi
	.align 4, 0x90
L00004A70:
	movq      %r12, %rdi
	call      _strcmp
L00004A78:
	testl     %eax, %eax
	je        L00004A89
L00004A7C:
	movq      16(%rbx), %rsi
	addq      $16, %rbx
	testq     %rsi, %rsi
	jne       L00004A70
L00004A89:
	movq      8(%rbx), %r15
	testq     %r15, %r15
	cmove     %r12, %r15
	leaq      L_.str45(%rip), %rdi
	leaq      L_.str46(%rip), %rsi
	leaq      L_.str47(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
L00004AB0:
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
L00004ABC:
	testq     %rax, %rax
	je        L00004AEA
L00004AC1:
	leaq      L_.str48(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
L00004AD5:
	testl     %eax, %eax
	je        L00004AEA
L00004AD9:
	leaq      L_.str49(%rip), %rdi
	xorl      %eax, %eax
	movq      %r12, %rsi
	call      _printf
L00004AEA:
	leaq      L_.str50(%rip), %rdi
	leaq      L_.str47(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _printf
L00004B02:
	cmpq      %r12, %r15
	leaq      L_.str52(%rip), %rax
	leaq      L_.str(%rip), %rdx
	cmove     %rax, %rdx
	leaq      L_.str51(%rip), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _printf
L00004B28:
	movl      %r14d, %edi
	call      _exit
L00004B30:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      L_.str55(%rip), %rsi
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _fprintf
L00004B55:
	movl      %r14d, %edi
	call      _exit
L00004B5D:
	.align 4, 0x90
# ----------------------
_print_file_name_and_frills:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $288, %rsp
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r12
	movq      (%r12), %rax
	movq      %rax, -40(%rbp)
	cmpb      $0, _print_with_color(%rip)
	je        L00004D0D
L00004B94:
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        L00004D0D
L00004BA4:
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	jne       L00004BCB
L00004BB1:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00004BC2:
	testl     %eax, %eax
	jne       L00004BDD
L00004BC6:
	jmp       L00004D0D
L00004BCB:
	cmpq      $1, %rax
	jne       L00004BDD
L00004BD1:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00004D0D
L00004BDD:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00004C25
L00004BE7:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00004C01
L00004BF8:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00004C20
L00004C01:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00004C0D:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00004C19:
	leaq      _color_indicator+16(%rip), %rdi
L00004C20:
	call      _put_indicator
L00004C25:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00004C47:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00004C8F
L00004C51:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00004C6B
L00004C62:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00004C8A
L00004C6B:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00004C77:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00004C83:
	leaq      _color_indicator+16(%rip), %rdi
L00004C8A:
	call      _put_indicator
L00004C8F:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00004CAA:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00004CF2
L00004CB4:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00004CCE
L00004CC5:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00004CED
L00004CCE:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00004CDA:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00004CE6:
	leaq      _color_indicator+16(%rip), %rdi
L00004CED:
	call      _put_indicator
L00004CF2:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00004D0D:
	movzbl    _print_inode(%rip), %eax
	cmpl      $1, %eax
	jne       L00004D63
L00004D19:
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	je        L00004D2A
L00004D24:
	movl      _inode_number_width(%rip), %ebx
L00004D2A:
	leaq      L_.str57(%rip), %rdx
	cmpb      $0, 176(%r15)
	je        L00004D53
L00004D3B:
	movq      24(%r15), %rdi
	testq     %rdi, %rdi
	je        L00004D53
L00004D44:
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
L00004D50:
	movq      %rax, %rdx
L00004D53:
	leaq      L_.str56(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
L00004D63:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       L00004DC8
L00004D6F:
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	je        L00004D80
L00004D7A:
	movl      _block_size_width(%rip), %ebx
L00004D80:
	cmpb      $0, 176(%r15)
	je        L00004DB1
L00004D8A:
	movq      120(%r15), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
L00004DAC:
	movq      %rax, %rdx
	jmp       L00004DB8
L00004DB1:
	leaq      L_.str57(%rip), %rdx
L00004DB8:
	leaq      L_.str56(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
L00004DC8:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       L00004DFA
L00004DD4:
	xorl      %esi, %esi
	cmpl      $4, _format(%rip)
	je        L00004DE5
L00004DDF:
	movl      _scontext_width(%rip), %esi
L00004DE5:
	movq      168(%r15), %rdx
	leaq      L_.str56(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L00004DFA:
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %r15, %rdi
	movq      %r14, %rcx
	call      _print_name_with_quoting
L00004E09:
	cmpl      $0, _indicator_style(%rip)
	je        L00004E2B
L00004E12:
	movl      160(%r15), %edx
	movzwl    20(%r15), %esi
	movzbl    176(%r15), %edi
	call      _print_type_indicator
L00004E2B:
	movq      (%r12), %rax
	cmpq      -40(%rbp), %rax
	jne       L00004E45
L00004E35:
	addq      $288, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004E45:
	call      ___stack_chk_fail
L00004E4A:
	.align 4, 0x90
# ----------------------
_format_user_or_group:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movl      %edx, %r15d
	movq      %rsi, %rcx
	movq      %rdi, %r14
	testq     %r14, %r14
	je        L00004EE9
L00004E6C:
	xorl      %ebx, %ebx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _gnu_mbswidth
L00004E78:
	movl      %eax, %r12d
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	movq      (%r13), %rsi
	movq      %r14, %rdi
	call      _fputs
L00004E8E:
	movq      %r14, %rdi
	call      _strlen
L00004E96:
	movq      %rax, %r14
	subl      %r12d, %r15d
	cmovs     %ebx, %r15d
	movslq    %r15d, %r15
	movl      %r15d, %ebx
	notl      %ebx
	.align 4, 0x90
L00004EB0:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00004EC6
L00004EC1:
	cmpl      40(%rsi), %eax
	jle       L00004ED5
L00004EC6:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	jmp       L00004EE0
L00004ED5:
	movl      $32, %edi
	call      ___swbuf
L00004EDF:
	.align 4, 0x90
L00004EE0:
	incl      %ebx
	jne       L00004EB0
L00004EE4:
	addq      %r14, %r15
	jmp       L00004F00
L00004EE9:
	leaq      L_.str65(%rip), %rdi
	xorl      %eax, %eax
	movl      %r15d, %esi
	movq      %rcx, %rdx
	call      _printf
L00004EFD:
	movslq    %r15d, %r15
L00004F00:
	movq      _dired_pos(%rip), %rax
	leaq      1(%r15,%rax), %rax
	movq      %rax, _dired_pos(%rip)
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004F22:
	.align 4, 0x90
# ----------------------
_align_nstrftime:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $200, %rsp
	movl      %ecx, %r9d
	movq      %rdx, %r12
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	movq      %rax, -48(%rbp)
	cmpq      $0, _required_mon_width(%rip)
	je        L00004FF3
L00004F6C:
	movl      %r9d, -228(%rbp)
	leaq      L_.str62(%rip), %rsi
	movq      %r14, %rdi
	call      _strstr
L00004F82:
	movq      %rax, %r13
	testq     %r13, %r13
	je        L00004FE5
L00004F8A:
	cmpl      $11, 16(%r12)
	ja        L00004FE5
L00004F92:
	movq      %r14, %rdi
	call      _strlen
L00004F9A:
	cmpq      $101, %rax
	ja        L00004FE5
L00004FA0:
	leaq      -224(%rbp), %rbx
	movq      %r13, %rdx
	subq      %r14, %rdx
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _mempcpy
L00004FB8:
	movslq    16(%r12), %rcx
	imulq     $61, %rcx, %rcx
	leaq      _abmon(%rip), %rsi
	addq      %rcx, %rsi
	movq      %rax, %rdi
	call      _stpcpy
L00004FD3:
	addq      $2, %r13
	movq      %rax, %rdi
	movq      %r13, %rsi
	call      _strcpy
L00004FE2:
	movq      %rbx, %r14
L00004FE5:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rbx
	movl      -228(%rbp), %r9d
L00004FF3:
	movl      $1001, %esi
	xorl      %r8d, %r8d
	movq      %r15, %rdi
	movq      %r14, %rdx
	movq      %r12, %rcx
	call      _nstrftime
L00005009:
	movq      (%rbx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       L00005024
L00005012:
	addq      $200, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00005024:
	call      ___stack_chk_fail
L00005029:
	.align 4, 0x90
# ----------------------
_print_name_with_quoting:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movq      %rcx, %r12
	movq      %rdx, %r13
	movq      %rdi, %rbx
	leaq      8(%rbx), %rax
	testb     %sil, %sil
	cmove     %rbx, %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpb      $0, _print_with_color(%rip)
	je        L000050D6
L00005065:
	movq      %r13, -64(%rbp)
	testb     %sil, %sil
	je        L000050DE
L0000506E:
	movq      %r12, -56(%rbp)
	movq      8(%rbx), %r13
	movb      177(%rbx), %al
	movb      %al, %cl
	decb      %cl
	movsbl    %cl, %r14d
	movzwl    164(%rbx), %r12d
	testb     %al, %al
	jne       L00005116
L00005094:
	movq      _color_indicator+192(%rip), %rax
	testq     %rax, %rax
	je        L00005287
L000050A4:
	movl      $12, %r15d
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rax
	jne       L00005292
L000050BB:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000050CC:
	testl     %eax, %eax
	jne       L00005604
L000050D4:
	jmp       L00005116
L000050D6:
	xorl      %r15d, %r15d
	jmp       L00005E26
L000050DE:
	movq      (%rbx), %r13
	movb      177(%rbx), %al
	movzbl    _color_symlink_as_referent(%rip), %ecx
	cmpl      $1, %ecx
	jne       L00005106
L000050F3:
	testb     %al, %al
	je        L00005104
L000050F7:
	movq      %r12, -56(%rbp)
	leaq      164(%rbx), %rcx
	jmp       L0000510E
L00005104:
	xorl      %eax, %eax
L00005106:
	movq      %r12, -56(%rbp)
	leaq      20(%rbx), %rcx
L0000510E:
	movzbl    %al, %r14d
	movzwl    (%rcx), %r12d
L00005116:
	cmpb      $0, 176(%rbx)
	je        L00005175
L0000511F:
	movzwl    %r12w, %ecx
	movl      %ecx, %eax
	andl      $61440, %eax
	cmpl      $49151, %eax
	jg        L0000519B
L00005131:
	cmpl      $40959, %eax
	jg        L000051B1
L00005138:
	cmpl      $32767, %eax
	jg        L00005228
L00005143:
	cmpl      $24575, %eax
	jg        L000052AD
L0000514E:
	movl      $8, %r15d
	cmpl      $4096, %eax
	je        L00005604
L0000515F:
	cmpl      $8192, %eax
	jne       L000052E0
L0000516A:
	movl      $11, %r15d
	jmp       L00005604
L00005175:
	movl      160(%rbx), %eax
	cmpq      $5, %rax
	je        L000054D1
L00005185:
	cmpl      $8, %eax
	je        L000054D1
L0000518E:
	leaq      _print_color_indicator.filetype_indicator(%rip), %rcx
	movl      (%rcx,%rax,4), %r15d
	jmp       L000051C2
L0000519B:
	cmpl      $49152, %eax
	jne       L00005350
L000051A6:
	movl      $9, %r15d
	jmp       L00005604
L000051B1:
	movl      $7, %r15d
	cmpl      $40960, %eax
	jne       L00005350
L000051C2:
	cmpl      $7, %r15d
	jne       L00005604
L000051CC:
	testl     %r14d, %r14d
	jne       L00005604
L000051D5:
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       L000052D5
L000051E3:
	movq      _color_indicator+208(%rip), %rax
	movl      $7, %r15d
	testq     %rax, %rax
	je        L00005604
L000051F9:
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	jne       L000052C3
L0000520A:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000521B:
	testl     %eax, %eax
	jne       L000052D5
L00005223:
	jmp       L00005604
L00005228:
	cmpl      $32768, %eax
	jne       L00005350
L00005233:
	testb     $8, %ch
	je        L00005371
L0000523C:
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        L00005371
L0000524C:
	movl      $16, %r15d
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	jne       L0000535B
L00005263:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r14d
	call      _strncmp
L00005277:
	movl      %r14d, %ecx
	testl     %eax, %eax
	jne       L00005604
L00005282:
	jmp       L00005371
L00005287:
	movl      $-1, %r14d
	jmp       L00005116
L00005292:
	cmpq      $1, %rax
	jne       L00005604
L0000529C:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00005116
L000052A8:
	jmp       L00005604
L000052AD:
	cmpl      $24576, %eax
	jne       L00005350
L000052B8:
	movl      $10, %r15d
	jmp       L00005604
L000052C3:
	cmpq      $1, %rax
	jne       L000052D5
L000052C9:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00005604
L000052D5:
	movl      $13, %r15d
	jmp       L00005604
L000052E0:
	cmpl      $16384, %eax
	jne       L00005350
L000052E7:
	movl      %ecx, %ebx
	andl      $512, %ebx
	sete      %r14b
	andl      $2, %ecx
	je        L00005540
L000052FC:
	testb     %r14b, %r14b
	jne       L00005540
L00005305:
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        L00005540
L00005315:
	movl      $20, %r15d
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	jne       L0000552A
L0000532C:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r12d
	call      _strncmp
L00005340:
	movl      %r12d, %ecx
	testl     %eax, %eax
	jne       L00005604
L0000534B:
	jmp       L00005540
L00005350:
	movl      $13, %r15d
	jmp       L00005604
L0000535B:
	cmpq      $1, %rax
	jne       L00005604
L00005365:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00005604
L00005371:
	testb     $4, %ch
	je        L000053CC
L00005376:
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        L000053CC
L00005382:
	movl      $17, %r15d
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	jne       L000053B6
L00005395:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r14d
	call      _strncmp
L000053A9:
	movl      %r14d, %ecx
	testl     %eax, %eax
	jne       L00005604
L000053B4:
	jmp       L000053CC
L000053B6:
	cmpq      $1, %rax
	jne       L00005604
L000053C0:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00005604
L000053CC:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        L00005423
L000053D8:
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	jne       L00005402
L000053E5:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r14d
	call      _strncmp
L000053F9:
	movl      %r14d, %ecx
	testl     %eax, %eax
	jne       L00005410
L00005400:
	jmp       L00005423
L00005402:
	cmpq      $1, %rax
	jne       L00005410
L00005408:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00005423
L00005410:
	movl      $21, %r15d
	cmpb      $0, 184(%rbx)
	jne       L00005604
L00005423:
	testb     $73, %cl
	je        L00005478
L00005428:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        L00005478
L00005434:
	movl      $14, %r15d
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	jne       L00005462
L00005447:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00005458:
	testl     %eax, %eax
	jne       L00005604
L00005460:
	jmp       L00005478
L00005462:
	cmpq      $1, %rax
	jne       L00005604
L0000546C:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00005604
L00005478:
	movzwl    22(%rbx), %eax
	cmpl      $2, %eax
	jb        L000054D1
L00005481:
	movq      _color_indicator+352(%rip), %rax
	testq     %rax, %rax
	je        L000054D1
L0000548D:
	movl      $22, %r15d
	movq      _color_indicator+360(%rip), %rdi
	cmpq      $2, %rax
	jne       L000054BB
L000054A0:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000054B1:
	testl     %eax, %eax
	jne       L00005604
L000054B9:
	jmp       L000054D1
L000054BB:
	cmpq      $1, %rax
	jne       L00005604
L000054C5:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00005604
L000054D1:
	movq      %r13, %rdi
	call      _strlen
L000054D9:
	movq      %rax, %rbx
	movq      _color_ext_list(%rip), %r14
	movl      $5, %r15d
	jmp       L000054F4
L000054EB:
	.align 4, 0x90
L000054F0:
	movq      32(%r14), %r14
L000054F4:
	testq     %r14, %r14
	je        L00005604
L000054FD:
	movq      (%r14), %rdx
	movq      %rbx, %rdi
	subq      %rdx, %rdi
	jb        L000054F0
L00005508:
	addq      %r13, %rdi
	movq      8(%r14), %rsi
	call      _strncmp
L00005514:
	testl     %eax, %eax
	jne       L000054F0
L00005518:
	testq     %r14, %r14
	je        L00005604
L00005521:
	addq      $16, %r14
	jmp       L00005615
L0000552A:
	cmpq      $1, %rax
	jne       L00005604
L00005534:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       L00005604
L00005540:
	testl     %ecx, %ecx
	je        L00005572
L00005544:
	movq      _color_indicator+304(%rip), %rax
	testq     %rax, %rax
	je        L00005581
L00005550:
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	jne       L00005585
L0000555D:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000556E:
	testl     %eax, %eax
	jmp       L00005597
L00005572:
	movl      $6, %r15d
	testl     %ebx, %ebx
	jne       L000055B0
L0000557C:
	jmp       L00005604
L00005581:
	xorl      %eax, %eax
	jmp       L0000559A
L00005585:
	movl      $19, %r15d
	cmpq      $1, %rax
	jne       L00005604
L00005591:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
L00005597:
	setne     %al
L0000559A:
	testb     %al, %al
	movl      $19, %ecx
	movl      $6, %r15d
	cmovne    %ecx, %r15d
	orb       %al, %r14b
	jne       L00005604
L000055B0:
	movq      _color_indicator+288(%rip), %rcx
	testq     %rcx, %rcx
	jne       L000055C0
L000055BC:
	xorl      %eax, %eax
	jmp       L000055F3
L000055C0:
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $1, %rcx
	jne       L000055D5
L000055CD:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jmp       L000055F0
L000055D5:
	movb      $1, %al
	cmpq      $2, %rcx
	jne       L000055F3
L000055DD:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000055EE:
	testl     %eax, %eax
L000055F0:
	setne     %al
L000055F3:
	testb     %al, %al
	movl      $18, %eax
	movl      $6, %r15d
	cmovne    %eax, %r15d
L00005604:
	movl      %r15d, %eax
	shlq      $4, %rax
	leaq      _color_indicator(%rip), %r14
	addq      %rax, %r14
L00005615:
	cmpq      $0, 8(%r14)
	movq      _color_indicator+64(%rip), %rax
	movq      _color_indicator+72(%rip), %rdi
	movq      -56(%rbp), %r12
	movq      -64(%rbp), %r13
	je        L0000565B
L00005632:
	testq     %rax, %rax
	je        L00005A97
L0000563B:
	cmpq      $2, %rax
	jne       L00005668
L00005641:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00005652:
	testl     %eax, %eax
	jne       L0000567A
L00005656:
	jmp       L00005A97
L0000565B:
	testq     %rax, %rax
	jne       L000056B1
L00005660:
	xorl      %r15d, %r15d
	jmp       L00005E26
L00005668:
	cmpq      $1, %rax
	jne       L0000567A
L0000566E:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        L00005A97
L0000567A:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000588E
L00005688:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L000056E8
L0000569B:
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       L00005884
L000056B1:
	cmpq      $1, %rax
	jne       L000056BF
L000056B7:
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jmp       L000056DF
L000056BF:
	movb      $1, %r15b
	cmpq      $2, %rax
	jne       L00005E26
L000056CC:
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000056DD:
	testl     %eax, %eax
L000056DF:
	setne     %r15b
	jmp       L00005E26
L000056E8:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L0000570A:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000057B1
L00005718:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00005734
L0000572B:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L000057A4
L00005734:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L0000574F:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005765
L00005759:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005765:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005780:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005796
L0000578A:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005796:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L000057A4:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000057B1:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000057CC:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005873
L000057DA:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L000057F6
L000057ED:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005866
L000057F6:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005811:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005827
L0000581B:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005827:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005842:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005858
L0000584C:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005858:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005866:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005873:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
L00005884:
	movl      $1, %edx
	call      _fwrite
L0000588E:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000058B0:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005A7C
L000058BE:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L000058DD
L000058D1:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005A6F
L000058DD:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000058F8:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000599F
L00005906:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00005922
L00005919:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005992
L00005922:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L0000593D:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005953
L00005947:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005953:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L0000596E:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005984
L00005978:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005984:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005992:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L0000599F:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000059BA:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005A61
L000059C8:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L000059E4
L000059DB:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005A54
L000059E4:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000059FF:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005A15
L00005A09:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005A15:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005A30:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005A46
L00005A3A:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005A46:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005A54:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005A61:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005A6F:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005A7C:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005A97:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005BB6
L00005AA5:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00005ACE
L00005AB8:
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       L00005BAC
L00005ACE:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005AF0:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005B38
L00005AFA:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005B14
L00005B0B:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00005B33
L00005B14:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005B20:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005B2C:
	leaq      _color_indicator+16(%rip), %rdi
L00005B33:
	call      _put_indicator
L00005B38:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005B53:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005B9B
L00005B5D:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005B77
L00005B6E:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00005B96
L00005B77:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005B83:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005B8F:
	leaq      _color_indicator+16(%rip), %rdi
L00005B96:
	call      _put_indicator
L00005B9B:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
L00005BAC:
	movl      $1, %edx
	call      _fwrite
L00005BB6:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005BD8:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005CE6
L00005BE6:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00005C05
L00005BF9:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005CD9
L00005C05:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005C20:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005C68
L00005C2A:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005C44
L00005C3B:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00005C63
L00005C44:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005C50:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005C5C:
	leaq      _color_indicator+16(%rip), %rdi
L00005C63:
	call      _put_indicator
L00005C68:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005C83:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005CCB
L00005C8D:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005CA7
L00005C9E:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00005CC6
L00005CA7:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005CB3:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005CBF:
	leaq      _color_indicator+16(%rip), %rdi
L00005CC6:
	call      _put_indicator
L00005CCB:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005CD9:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005CE6:
	movq      (%r14), %rsi
	movq      8(%r14), %rdi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005CFA:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005E08
L00005D08:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00005D27
L00005D1B:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005DFB
L00005D27:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005D42:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005D8A
L00005D4C:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005D66
L00005D5D:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00005D85
L00005D66:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005D72:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005D7E:
	leaq      _color_indicator+16(%rip), %rdi
L00005D85:
	call      _put_indicator
L00005D8A:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005DA5:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005DED
L00005DAF:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005DC9
L00005DC0:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00005DE8
L00005DC9:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005DD5:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005DE1:
	leaq      _color_indicator+16(%rip), %rdi
L00005DE8:
	call      _put_indicator
L00005DED:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005DFB:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005E08:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00005E23:
	movb      $1, %r15b
L00005E26:
	testq     %r13, %r13
	je        L00005E68
L00005E2B:
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00005E68
L00005E37:
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00005E59
L00005E48:
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
L00005E55:
	movq      24(%r13), %rax
L00005E59:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
L00005E68:
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rdi
	movq      _filename_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      -48(%rbp), %rsi
	call      _quote_name
L00005E84:
	movq      %rax, %rbx
	addq      %rbx, _dired_pos(%rip)
	testq     %r13, %r13
	je        L00005ED0
L00005E93:
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       L00005ED0
L00005E9F:
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00005EC1
L00005EB0:
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
L00005EBD:
	movq      24(%r13), %rax
L00005EC1:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
L00005ED0:
	call      _process_signals
L00005ED5:
	testb     %r15b, %r15b
	je        L00006024
L00005EDE:
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	movb      _used_color(%rip), %al
	je        L00005F13
L00005EF0:
	testb     $1, %al
	jne       L00005F07
L00005EF4:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005F00:
	movq      _color_indicator+40(%rip), %rdi
L00005F07:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005F93
L00005F13:
	testb     $1, %al
	jne       L00005F23
L00005F17:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005F23:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00005F3E:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005F54
L00005F48:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005F54:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00005F6F:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00005F85
L00005F79:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005F85:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005F93:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00005FA0:
	movq      _line_length(%rip), %rsi
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
	movq      %rax, %rcx
	leaq      -1(%r12,%rbx), %rax
	xorl      %edx, %edx
	divq      %rsi
	cmpq      %rax, %rcx
	je        L00006024
L00005FC1:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00006009
L00005FCB:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00005FE5
L00005FDC:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00006004
L00005FE5:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00005FF1:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00005FFD:
	leaq      _color_indicator+16(%rip), %rdi
L00006004:
	call      _put_indicator
L00006009:
	movq      _color_indicator+376(%rip), %rdi
	movq      _color_indicator+368(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00006024:
	movq      %rbx, %rax
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006036:
	.align 4, 0x90
# ----------------------
_print_type_indicator:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, %ecx
	testb     %cl, %cl
	je        L00006074
L0000604A:
	movl      %esi, %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	je        L00006090
L00006058:
	movl      %esi, %eax
	andl      $-4096, %eax
	movl      $47, %edi
	movzwl    %ax, %eax
	cmpl      $16384, %eax
	je        L00006121
L00006072:
	jmp       L000060B7
L00006074:
	movl      $47, %edi
	cmpl      $3, %edx
	je        L00006121
L00006082:
	cmpl      $9, %edx
	je        L00006121
L0000608B:
	cmpl      $5, %edx
	jne       L000060B7
L00006090:
	cmpl      $3, _indicator_style(%rip)
	setne     %dl
	xorl      %eax, %eax
	testb     $73, %sil
	je        L0000615A
L000060A6:
	xorb      $1, %cl
	orb       %cl, %dl
	movl      $42, %edi
	je        L00006121
L000060B2:
	jmp       L0000615A
L000060B7:
	cmpl      $1, _indicator_style(%rip)
	jne       L000060C7
L000060C0:
	xorl      %eax, %eax
	jmp       L0000615A
L000060C7:
	testb     %cl, %cl
	je        L00006103
L000060CB:
	movl      %esi, %eax
	andl      $61440, %eax
	movl      $64, %edi
	cmpl      $40960, %eax
	je        L00006121
L000060DE:
	andl      $-4096, %esi
	movzwl    %si, %eax
	movl      $124, %edi
	cmpl      $4096, %eax
	je        L00006121
L000060F3:
	movl      $61, %edi
	cmpl      $49152, %eax
	je        L00006121
L000060FF:
	xorl      %eax, %eax
	jmp       L0000615A
L00006103:
	movl      $64, %edi
	cmpl      $6, %edx
	je        L00006121
L0000610D:
	movl      $124, %edi
	cmpl      $1, %edx
	je        L00006121
L00006117:
	movl      $61, %edi
	cmpl      $7, %edx
	jne       L0000615C
L00006121:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L0000613D
L00006138:
	cmpl      40(%rsi), %eax
	jle       L0000614C
L0000613D:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %dil, (%rax)
	jmp       L00006151
L0000614C:
	call      ___swbuf
L00006151:
	incq      _dired_pos(%rip)
	movb      $1, %al
L0000615A:
	popq      %rbp
	ret       
L0000615C:
	xorl      %eax, %eax
	jmp       L0000615A
# ----------------------
_quote_name:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $1208, %rsp
	movq      %rcx, %r13
	movq      %r13, -1240(%rbp)
	movq      %rdx, %r14
	movq      %rsi, %r15
	movq      %rdi, -1232(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	leaq      -1072(%rbp), %rbx
	movl      $1024, %esi
	movq      $-1, %rcx
	movq      %rbx, %rdi
	movq      %r15, %rdx
	movq      %r14, %r8
	call      _quotearg_buffer
L000061BA:
	movq      %rax, %r12
	cmpq      $1024, %r12
	jb        L000061F2
L000061C6:
	leaq      1(%r12), %rsi
	movq      %rsp, %rbx
	leaq      16(%r12), %rax
	andq      $-16, %rax
	subq      %rax, %rbx
	movq      %rbx, %rsp
	movq      $-1, %rcx
	movq      %rbx, %rdi
	movq      %r15, %rdx
	movq      %r14, %r8
	call      _quotearg_buffer
L000061F2:
	movzbl    _qmark_funny_chars(%rip), %eax
	cmpl      $1, %eax
	jne       L0000642F
L00006202:
	call      ____mb_cur_max
L00006207:
	leaq      (%rbx,%r12), %rcx
	movq      %rcx, -1216(%rbp)
	cmpl      $1, %eax
	jle       L00006469
L0000621B:
	movq      %rbx, %rax
	movq      %rax, -1224(%rbp)
	xorl      %ebx, %ebx
	testq     %r12, %r12
	movq      %rax, %r12
	jle       L00006567
L00006233:
	xorl      %r14d, %r14d
	leaq      -1200(%rbp), %rdx
	movq      -1224(%rbp), %rax
	movq      %rax, %r15
	movq      %rax, %r12
L0000624A:
	movsbl    (%r15), %eax
	leal      -32(%rax), %ecx
	cmpl      $94, %ecx
	ja        L00006280
L00006256:
	leaq      L000065D0(%rip), %rsi
	movslq    (%rsi,%rcx,4), %rcx
	addq      %rsi, %rcx
	jmp       *%rcx
L00006266:
	incq      %r15
	movb      %al, (%r12)
	incq      %r12
	incq      %r14
	movq      %r14, %rbx
	movq      %rdx, %r13
	jmp       L00006410
L0000627E:
	.align 4, 0x90
L00006280:
	xorps     %xmm0, %xmm0
	movaps    %xmm0, -1088(%rbp)
	movaps    %xmm0, -1104(%rbp)
	movaps    %xmm0, -1120(%rbp)
	movaps    %xmm0, -1136(%rbp)
	movaps    %xmm0, -1152(%rbp)
	movaps    %xmm0, -1168(%rbp)
	movaps    %xmm0, -1184(%rbp)
	movaps    %xmm0, -1200(%rbp)
	movq      %rdx, %r13
	.align 4, 0x90
L000062C0:
	movq      -1216(%rbp), %rdx
	subq      %r15, %rdx
	leaq      -1204(%rbp), %rdi
	movq      %r15, %rsi
	movq      %r13, %rcx
	call      _mbrtowc
L000062DC:
	movq      %rax, %r13
	testq     %r13, %r13
	jne       L000063DF
L000062E8:
	movl      $1, %r13d
L000062EE:
	movl      -1204(%rbp), %edi
	call      _rpl_wcwidth
L000062F9:
	testl     %eax, %eax
	js        L000063B0
L00006301:
	testq     %r13, %r13
	je        L000063A5
L0000630A:
	movq      %r13, %rdi
	andq      $-32, %rdi
	movq      %r15, %rcx
	movq      %r13, %rdx
	movq      %r12, %rsi
	movl      $0, %ebx
	je        L00006382
L00006321:
	leaq      -1(%r15,%r13), %rcx
	cmpq      %rcx, %r12
	ja        L00006343
L0000632B:
	leaq      -1(%r12,%r13), %rcx
	cmpq      %rcx, %r15
	movq      %r15, %rcx
	movq      %r13, %rdx
	movq      %r12, %rsi
	movl      $0, %ebx
	jbe       L00006382
L00006343:
	leaq      (%r15,%rdi), %rcx
	movq      %r13, %rdx
	subq      %rdi, %rdx
	leaq      (%r12,%rdi), %rsi
	xorl      %ebx, %ebx
	.align 4, 0x90
L00006360:
	movups    (%r15,%rbx), %xmm0
	movups    16(%r15,%rbx), %xmm1
	movups    %xmm0, (%r12,%rbx)
	movups    %xmm1, 16(%r12,%rbx)
	addq      $32, %rbx
	cmpq      %rbx, %rdi
	jne       L00006360
L0000637F:
	movq      %rdi, %rbx
L00006382:
	cmpq      %rbx, %r13
	je        L0000639F
L00006387:
	.align 4, 0x90
L00006390:
	movb      (%rcx), %bl
	incq      %rcx
	movb      %bl, (%rsi)
	incq      %rsi
	decq      %rdx
	jne       L00006390
L0000639F:
	addq      %r13, %r12
	addq      %r13, %r15
L000063A5:
	movslq    %eax, %rbx
	jmp       L000063C0
L000063AA:
	.align 4, 0x90
L000063B0:
	addq      %r13, %r15
	movb      $63, (%r12)
	incq      %r12
	movl      $1, %ebx
L000063C0:
	leaq      -1200(%rbp), %r13
	addq      %r14, %rbx
	movq      %r13, %rdi
	call      _mbsinit
L000063D2:
	testl     %eax, %eax
	movq      %rbx, %r14
	je        L000062C0
L000063DD:
	jmp       L00006410
L000063DF:
	cmpq      $-2, %r13
	je        L00006552
L000063E9:
	cmpq      $-1, %r13
	jne       L000062EE
L000063F3:
	incq      %r15
	movb      $63, (%r12)
	incq      %r12
	incq      %r14
	movq      %r14, %rbx
	leaq      -1200(%rbp), %r13
	.align 4, 0x90
L00006410:
	movq      %r13, %rdx
	cmpq      -1216(%rbp), %r15
	movq      %rbx, %r14
	movq      -1240(%rbp), %r13
	jb        L0000624A
L0000642A:
	jmp       L00006567
L0000642F:
	testq     %r13, %r13
	je        L000064D5
L00006438:
	call      ____mb_cur_max
L0000643D:
	cmpl      $2, %eax
	movq      -1232(%rbp), %r14
	jl        L000064E1
L0000644D:
	xorl      %edx, %edx
	movq      %rbx, %rdi
	movq      %rbx, -1224(%rbp)
	movq      %r12, %rsi
	call      _mbsnwidth
L00006461:
	movslq    %eax, %rbx
	jmp       L00006581
L00006469:
	testq     %r12, %r12
	jle       L00006570
L00006472:
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %r14
	movl      $262144, %r15d
	movq      %rbx, -1224(%rbp)
	.align 4, 0x90
L00006490:
	movzbl    (%rbx), %edi
	testb     %dil, %dil
	js        L000064B0
L00006498:
	movl      60(%r14,%rdi,4), %eax
	andl      %r15d, %eax
	jmp       L000064BA
L000064A2:
	.align 4, 0x90
L000064B0:
	movl      $262144, %esi
	call      ___maskrune
L000064BA:
	testl     %eax, %eax
	jne       L000064C1
L000064BE:
	movb      $63, (%rbx)
L000064C1:
	incq      %rbx
	cmpq      -1216(%rbp), %rbx
	jb        L00006490
L000064CD:
	movq      %r12, %rbx
	jmp       L0000657A
L000064D5:
	movq      %rbx, -1224(%rbp)
	jmp       L0000657A
L000064E1:
	movq      %rbx, -1224(%rbp)
	xorl      %ebx, %ebx
	testq     %r12, %r12
	jle       L00006581
L000064F3:
	movq      %r13, -1240(%rbp)
	movq      -1224(%rbp), %rax
	leaq      (%rax,%r12), %r14
	movl      $262144, %r13d
	movq      %rax, %r15
	.align 4, 0x90
L00006510:
	movzbl    (%r15), %edi
	testb     %dil, %dil
	js        L00006530
L00006519:
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%rdi,4), %eax
	andl      %r13d, %eax
	jmp       L0000653A
L00006529:
	.align 4, 0x90
L00006530:
	movl      $262144, %esi
	call      ___maskrune
L0000653A:
	cmpl      $1, %eax
	sbbq      $-1, %rbx
	incq      %r15
	cmpq      %r14, %r15
	jb        L00006510
L00006549:
	movq      -1240(%rbp), %r13
	jmp       L0000657A
L00006552:
	movb      $63, (%r12)
	incq      %r12
	incq      %r14
	movq      %r14, %rbx
	movq      -1240(%rbp), %r13
L00006567:
	subq      -1224(%rbp), %r12
	jmp       L0000657A
L00006570:
	movq      %rbx, -1224(%rbp)
	movq      %r12, %rbx
L0000657A:
	movq      -1232(%rbp), %r14
L00006581:
	testq     %r14, %r14
	je        L0000659D
L00006586:
	movl      $1, %esi
	movq      -1224(%rbp), %rdi
	movq      %r12, %rdx
	movq      %r14, %rcx
	call      _fwrite
L0000659D:
	testq     %r13, %r13
	je        L000065A6
L000065A2:
	movq      %rbx, (%r13)
L000065A6:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L000065C8
L000065B6:
	movq      %r12, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000065C8:
	call      ___stack_chk_fail
L000065CD:
	.align 4, 0x90
# ----------------------
L000065D0:
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006280-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006280-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006280-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
	.long	L00006266-L000065D0
L0000674C:
	.align 4, 0x90
# ----------------------
_process_signals:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $16, %rsp
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	leaq      _caught_signals(%rip), %r14
	leaq      -36(%rbp), %r15
	jmp       L00006796
L00006773:
	.align 4, 0x90
L00006780:
	movl      %ebx, %edi
	call      _raise
L00006787:
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigprocmask
L00006796:
	cmpl      $0, _interrupt_signal(%rip)
	jne       L000067AC
L0000679F:
	cmpl      $0, _stop_signal_count(%rip)
	je        L000068EE
L000067AC:
	movzbl    _used_color(%rip), %eax
	cmpl      $1, %eax
	jne       L0000689E
L000067BC:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L000067D8:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00006882
L000067E6:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00006802
L000067F9:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00006874
L00006802:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L0000681E:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00006834
L00006828:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00006834:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00006850:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00006866
L0000685A:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00006866:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00006874:
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00006882:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L0000689E:
	movq      (%r12), %rdi
	call      _rpl_fflush
L000068A7:
	movl      $1, %edi
	movq      %r14, %rsi
	movq      %r15, %rdx
	call      _sigprocmask
L000068B7:
	movl      _interrupt_signal(%rip), %ebx
	movl      _stop_signal_count(%rip), %eax
	testl     %eax, %eax
	je        L000068E0
L000068C7:
	decl      %eax
	movl      %eax, _stop_signal_count(%rip)
	movl      $17, %ebx
	jmp       L00006780
L000068D9:
	.align 4, 0x90
L000068E0:
	xorl      %esi, %esi
	movl      %ebx, %edi
	call      _signal
L000068E9:
	jmp       L00006780
L000068EE:
	addq      $16, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000068FB:
	.align 4, 0x90
# ----------------------
_prep_non_filename_text:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpq      $0, _color_indicator+40(%rip)
	je        L0000691B
L0000690E:
	leaq      _color_indicator+32(%rip), %rdi
	popq      %rbp
	jmp       _put_indicator
L0000691B:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00006927:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00006933:
	leaq      _color_indicator+16(%rip), %rdi
	popq      %rbp
	jmp       _put_indicator
# ----------------------
_put_indicator:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	pushq     %rax
	movq      %rdi, %rbx
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000695F
L00006953:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L0000695F:
	movq      (%rbx), %rsi
	movq      8(%rbx), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movl      $1, %edx
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	jmp       _fwrite
# ----------------------
_length_of_file_name_and_frills:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	subq      $296, %rsp
	movq      %rdi, %r14
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      %rax, -32(%rbp)
	xorl      %ebx, %ebx
	movb      _print_inode(%rip), %al
	testb     %al, %al
	je        L000069DD
L000069AD:
	cmpl      $4, _format(%rip)
	jne       L000069D3
L000069B6:
	movq      24(%r14), %rdi
	leaq      -304(%rbp), %rsi
	call      _umaxtostr
L000069C6:
	movq      %rax, %rdi
	call      _strlen
L000069CE:
	movq      %rax, %rbx
	jmp       L000069DA
L000069D3:
	movslq    _inode_number_width(%rip), %rbx
L000069DA:
	incq      %rbx
L000069DD:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       L00006A42
L000069E9:
	cmpl      $4, _format(%rip)
	jne       L00006A28
L000069F2:
	cmpb      $0, 176(%r14)
	je        L00006A31
L000069FC:
	movq      120(%r14), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -304(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
L00006A1E:
	movq      %rax, %rdi
	call      _strlen
L00006A26:
	jmp       L00006A3D
L00006A28:
	movslq    _block_size_width(%rip), %rax
	jmp       L00006A3D
L00006A31:
	leaq      L_.str57(%rip), %rdi
	call      _strlen
L00006A3D:
	leaq      1(%rbx,%rax), %rbx
L00006A42:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       L00006A71
L00006A4E:
	cmpl      $4, _format(%rip)
	jne       L00006A65
L00006A57:
	movq      168(%r14), %rdi
	call      _strlen
L00006A63:
	jmp       L00006A6C
L00006A65:
	movslq    _scontext_width(%rip), %rax
L00006A6C:
	leaq      1(%rbx,%rax), %rbx
L00006A71:
	movq      (%r14), %rsi
	movq      _filename_quoting_options(%rip), %rdx
	leaq      -312(%rbp), %rcx
	xorl      %edi, %edi
	call      _quote_name
L00006A89:
	addq      -312(%rbp), %rbx
	movl      _indicator_style(%rip), %esi
	testl     %esi, %esi
	je        L00006B58
L00006A9E:
	movb      176(%r14), %al
	movzwl    20(%r14), %r8d
	movl      160(%r14), %ecx
	testb     %al, %al
	je        L00006ADE
L00006AB5:
	movl      %r8d, %edx
	andl      $61440, %edx
	cmpl      $32768, %edx
	je        L00006AEF
L00006AC6:
	movl      %r8d, %edi
	andl      $-4096, %edi
	movb      $1, %dl
	movzwl    %di, %edi
	cmpl      $16384, %edi
	je        L00006B52
L00006ADC:
	jmp       L00006B07
L00006ADE:
	movb      $1, %dl
	cmpl      $3, %ecx
	je        L00006B52
L00006AE5:
	cmpl      $9, %ecx
	je        L00006B52
L00006AEA:
	cmpl      $5, %ecx
	jne       L00006B07
L00006AEF:
	testb     %al, %al
	setne     %al
	cmpl      $3, %esi
	sete      %cl
	andb      %al, %cl
	testb     $73, %r8b
	setne     %dl
	andb      %cl, %dl
	jmp       L00006B52
L00006B07:
	cmpl      $1, %esi
	jne       L00006B10
L00006B0C:
	xorl      %edx, %edx
	jmp       L00006B52
L00006B10:
	testb     %al, %al
	je        L00006B40
L00006B14:
	movb      $1, %dl
	movl      %r8d, %eax
	andl      $61440, %eax
	cmpl      $40960, %eax
	je        L00006B52
L00006B25:
	andl      $-4096, %r8d
	movzwl    %r8w, %eax
	cmpl      $49152, %eax
	je        L00006B52
L00006B37:
	cmpl      $4096, %eax
	jne       L00006B50
L00006B3E:
	jmp       L00006B52
L00006B40:
	decl      %ecx
	cmpl      $7, %ecx
	jae       L00006B50
L00006B47:
	movb      $97, %dl
	shrb      %cl, %dl
	andb      $1, %dl
	jmp       L00006B52
L00006B50:
	xorl      %edx, %edx
L00006B52:
	movzbl    %dl, %eax
	addq      %rax, %rbx
L00006B58:
	movq      (%r15), %rax
	cmpq      -32(%rbp), %rax
	jne       L00006B72
L00006B61:
	movq      %rbx, %rax
	addq      $296, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006B72:
	call      ___stack_chk_fail
L00006B77:
	.align 4, 0x90
# ----------------------
_calculate_columns:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movl      %edi, %r14d
	movq      _max_idx(%rip), %r12
	movq      _cwd_n_used(%rip), %r15
	movq      %r15, -48(%rbp)
	cmpq      %r15, %r12
	cmovb     %r12, %r15
	cmpq      %r15, _init_column_info.column_info_alloc(%rip)
	jae       L00006CC3
L00006BBA:
	movq      %r12, %rax
	shrq      $1, %rax
	movq      _column_info(%rip), %rdi
	cmpq      %rax, %r15
	jae       L00006BFC
L00006BCC:
	movq      $384307168202282326, %rax
	cmpq      %rax, %r15
	jae       L00006E75
L00006BDF:
	movq      %r15, %rax
	shlq      $4, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L00006BEF:
	movq      %rax, _column_info(%rip)
	leaq      (%r15,%r15), %rbx
	jmp       L00006C2E
L00006BFC:
	movq      $768614336404564651, %rax
	cmpq      %rax, %r12
	jae       L00006E75
L00006C0F:
	leaq      0(,%r12,8), %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L00006C20:
	movq      %rax, _column_info(%rip)
	movq      _max_idx(%rip), %rbx
L00006C2E:
	movq      _init_column_info.column_info_alloc(%rip), %rax
	leaq      1(%rax), %rsi
	leaq      (%rsi,%rbx), %rcx
	addq      %rbx, %rsi
	jb        L00006E75
L00006C46:
	movq      %rbx, %rdi
	subq      %rax, %rdi
	imulq     %rdi, %rcx
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rdi
	cmpq      %rsi, %rax
	jne       L00006E75
L00006C61:
	movq      %rcx, %rax
	shrq      $62, %rax
	jne       L00006E75
L00006C6E:
	shlq      $2, %rcx
	andq      $-8, %rcx
	movq      %rcx, %rdi
	call      _xmalloc
L00006C7E:
	movq      _init_column_info.column_info_alloc(%rip), %rcx
	cmpq      %rbx, %rcx
	jae       L00006CBC
L00006C8A:
	leaq      (%rcx,%rcx,2), %rdx
	leaq      16(,%rdx,8), %rdx
	.align 4, 0x90
L00006CA0:
	movq      _column_info(%rip), %rsi
	movq      %rax, (%rsi,%rdx)
	leaq      8(%rax,%rcx,8), %rax
	incq      %rcx
	addq      $24, %rdx
	cmpq      %rcx, %rbx
	jne       L00006CA0
L00006CBC:
	movq      %rbx, _init_column_info.column_info_alloc(%rip)
L00006CC3:
	movq      %r12, -56(%rbp)
	testq     %r15, %r15
	movq      %r15, -64(%rbp)
	je        L00006D2C
L00006CD0:
	movq      _column_info(%rip), %r13
	movq      -48(%rbp), %rax
	notq      %rax
	movq      -56(%rbp), %r15
	notq      %r15
	cmpq      %r15, %rax
	cmova     %rax, %r15
	notq      %r15
	movl      $8, %ebx
	movl      $3, %r12d
	.align 4, 0x90
L00006D00:
	movb      $1, -24(%r13,%r12,8)
	movq      %r12, -16(%r13,%r12,8)
	movq      -8(%r13,%r12,8), %rdi
	leaq      _.memset_pattern(%rip), %rsi
	movq      %rbx, %rdx
	call      _memset_pattern16
L00006D1F:
	addq      $8, %rbx
	addq      $3, %r12
	decq      %r15
	jne       L00006D00
L00006D2C:
	cmpq      $0, _cwd_n_used(%rip)
	movq      -64(%rbp), %r13
	je        L00006E16
L00006D3E:
	movq      -48(%rbp), %rax
	notq      %rax
	movq      -56(%rbp), %r15
	notq      %r15
	cmpq      %r15, %rax
	cmova     %rax, %r15
	notq      %r15
	xorl      %r12d, %r12d
	.align 4, 0x90
L00006D60:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r12,8), %rdi
	call      _length_of_file_name_and_frills
L00006D70:
	movq      %rax, %r8
	testq     %r13, %r13
	je        L00006E06
L00006D7C:
	movq      _column_info(%rip), %rdi
	addq      $16, %rdi
	xorl      %ecx, %ecx
	.align 4, 0x90
L00006D90:
	cmpb      $0, -16(%rdi)
	je        L00006DFA
L00006D96:
	leaq      1(%rcx), %rsi
	testb     %r14b, %r14b
	je        L00006DC0
L00006D9F:
	movq      _cwd_n_used(%rip), %rax
	addq      %rcx, %rax
	xorl      %edx, %edx
	divq      %rsi
	movq      %rax, %rsi
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
	movq      %rax, %rdx
	jmp       L00006DC8
L00006DBE:
	.align 4, 0x90
L00006DC0:
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
L00006DC8:
	cmpq      %rdx, %rcx
	setne     %al
	movzbl    %al, %eax
	leaq      (%r8,%rax,2), %rbx
	movq      (%rdi), %rsi
	movq      %rbx, %rax
	subq      (%rsi,%rdx,8), %rax
	jbe       L00006DFA
L00006DE1:
	addq      %rax, -8(%rdi)
	movq      %rbx, (%rsi,%rdx,8)
	movq      -8(%rdi), %rax
	cmpq      _line_length(%rip), %rax
	setb      %al
	movb      %al, -16(%rdi)
L00006DFA:
	incq      %rcx
	addq      $24, %rdi
	cmpq      %rcx, %r15
	jne       L00006D90
L00006E06:
	incq      %r12
	cmpq      _cwd_n_used(%rip), %r12
	jb        L00006D60
L00006E16:
	movq      -56(%rbp), %rax
	notq      %rax
	movq      -48(%rbp), %rcx
	notq      %rcx
	cmpq      %rcx, %rax
	cmova     %rax, %rcx
	movq      $-2, %rax
	subq      %rcx, %rax
	leaq      (%rax,%rax,2), %rcx
	shlq      $3, %rcx
	addq      _column_info(%rip), %rcx
	.align 4, 0x90
L00006E50:
	movq      %r13, %rax
	cmpq      $2, %rax
	jb        L00006E66
L00006E59:
	leaq      -1(%rax), %r13
	cmpb      $0, (%rcx)
	leaq      -24(%rcx), %rcx
	je        L00006E50
L00006E66:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006E75:
	call      _xalloc_die
L00006E7A:
	.align 4, 0x90
# ----------------------
_indent:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r14
	movq      %rdi, %rbx
	cmpq      %r14, %rbx
	jae       L00006F51
L00006E99:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
L00006EA0:
	movq      _tabsize(%rip), %rsi
	testq     %rsi, %rsi
	je        L00006EF0
L00006EAC:
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rsi
	movq      %rax, %rcx
	leaq      1(%rbx), %rax
	xorl      %edx, %edx
	divq      %rsi
	cmpq      %rax, %rcx
	jbe       L00006EF0
L00006EC5:
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00006EDA
L00006ED5:
	cmpl      40(%rsi), %eax
	jle       L00006F25
L00006EDA:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $9, (%rax)
	jmp       L00006F30
L00006EE9:
	.align 4, 0x90
L00006EF0:
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00006F05
L00006F00:
	cmpl      40(%rsi), %eax
	jle       L00006F14
L00006F05:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	jmp       L00006F20
L00006F14:
	movl      $32, %edi
	call      ___swbuf
L00006F1E:
	.align 4, 0x90
L00006F20:
	incq      %rbx
	jmp       L00006F48
L00006F25:
	movl      $9, %edi
	call      ___swbuf
L00006F2F:
	.align 4, 0x90
L00006F30:
	movq      _tabsize(%rip), %rcx
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %rcx
	addq      %rbx, %rcx
	subq      %rdx, %rcx
	movq      %rcx, %rbx
L00006F48:
	cmpq      %r14, %rbx
	jb        L00006EA0
L00006F51:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006F5C:
	.align 4, 0x90
# ----------------------
_xstrcoll_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
_xstrcoll_df_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00006F8A
L00006F85:
	cmpl      $9, %ecx
	jne       L00006F9B
L00006F8A:
	cmpl      $3, %edx
	je        L00006FA5
L00006F8F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00006FA5
L00006F99:
	jmp       L00006FC0
L00006F9B:
	cmpl      $3, %edx
	je        L00006FA5
L00006FA0:
	cmpl      $9, %edx
	jne       L00006FB4
L00006FA5:
	cmpl      $3, %ecx
	je        L00006FB4
L00006FAA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00006FC0
L00006FB4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00006FC0:
	popq      %rbp
	ret       
L00006FC2:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00006FE3:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000700A
L00007005:
	cmpl      $9, %ecx
	jne       L0000701B
L0000700A:
	cmpl      $3, %edx
	je        L00007025
L0000700F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007025
L00007019:
	jmp       L00007043
L0000701B:
	cmpl      $3, %edx
	je        L00007025
L00007020:
	cmpl      $9, %edx
	jne       L00007034
L00007025:
	cmpl      $3, %ecx
	je        L00007034
L0000702A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007043
L00007034:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00007043:
	popq      %rbp
	ret       
L00007045:
	.align 4, 0x90
# ----------------------
_strcmp_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
_strcmp_df_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000707A
L00007075:
	cmpl      $9, %ecx
	jne       L0000708B
L0000707A:
	cmpl      $3, %edx
	je        L00007095
L0000707F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007095
L00007089:
	jmp       L000070B0
L0000708B:
	cmpl      $3, %edx
	je        L00007095
L00007090:
	cmpl      $9, %edx
	jne       L000070A4
L00007095:
	cmpl      $3, %ecx
	je        L000070A4
L0000709A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L000070B0
L000070A4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L000070B0:
	popq      %rbp
	ret       
L000070B2:
	.align 4, 0x90
# ----------------------
_rev_strcmp_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L000070D3:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L000070FA
L000070F5:
	cmpl      $9, %ecx
	jne       L0000710B
L000070FA:
	cmpl      $3, %edx
	je        L00007115
L000070FF:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007115
L00007109:
	jmp       L00007133
L0000710B:
	cmpl      $3, %edx
	je        L00007115
L00007110:
	cmpl      $9, %edx
	jne       L00007124
L00007115:
	cmpl      $3, %ecx
	je        L00007124
L0000711A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007133
L00007124:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007133:
	popq      %rbp
	ret       
L00007135:
	.align 4, 0x90
# ----------------------
_xstrcoll_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L0000715D:
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L0000716D:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L0000718A:
	testl     %eax, %eax
	je        L00007199
L0000718E:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00007199:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
L000071AE:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r14
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	movl      160(%r14), %edx
	cmpl      $3, %ecx
	je        L000071D8
L000071D3:
	cmpl      $9, %ecx
	jne       L000071E9
L000071D8:
	cmpl      $3, %edx
	je        L000071F3
L000071DD:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L000071F3
L000071E7:
	jmp       L00007240
L000071E9:
	cmpl      $3, %edx
	je        L000071F3
L000071EE:
	cmpl      $9, %edx
	jne       L00007202
L000071F3:
	cmpl      $3, %ecx
	je        L00007202
L000071F8:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007240
L00007202:
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L0000720F:
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L0000721F:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L0000723C:
	testl     %eax, %eax
	je        L0000724B
L00007240:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000724B:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
_rev_xstrcoll_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L0000727D:
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L0000728D:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L000072AA:
	testl     %eax, %eax
	je        L000072B9
L000072AE:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000072B9:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
L000072CE:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r14
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	movl      160(%r14), %edx
	cmpl      $3, %ecx
	je        L000072F8
L000072F3:
	cmpl      $9, %ecx
	jne       L00007309
L000072F8:
	cmpl      $3, %edx
	je        L00007313
L000072FD:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007313
L00007307:
	jmp       L00007360
L00007309:
	cmpl      $3, %edx
	je        L00007313
L0000730E:
	cmpl      $9, %edx
	jne       L00007322
L00007313:
	cmpl      $3, %ecx
	je        L00007322
L00007318:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007360
L00007322:
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L0000732F:
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L0000733F:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L0000735C:
	testl     %eax, %eax
	je        L0000736B
L00007360:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000736B:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
_strcmp_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r15
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
L0000739D:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L000073B0:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L000073CD:
	testl     %eax, %eax
	je        L000073DC
L000073D1:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000073DC:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L000073F1:
	.align 4, 0x90
# ----------------------
_strcmp_df_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r15
	movl      160(%rdi), %ecx
	movl      160(%r15), %edx
	cmpl      $3, %ecx
	je        L00007424
L0000741F:
	cmpl      $9, %ecx
	jne       L00007435
L00007424:
	cmpl      $3, %edx
	je        L0000743F
L00007429:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L0000743F
L00007433:
	jmp       L00007492
L00007435:
	cmpl      $3, %edx
	je        L0000743F
L0000743A:
	cmpl      $9, %edx
	jne       L0000744E
L0000743F:
	cmpl      $3, %ecx
	je        L0000744E
L00007444:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007492
L0000744E:
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
L0000745E:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L00007471:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L0000748E:
	testl     %eax, %eax
	je        L0000749D
L00007492:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000749D:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L000074B2:
	.align 4, 0x90
# ----------------------
_rev_strcmp_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rdi, %r15
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
L000074DD:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L000074F0:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L0000750D:
	testl     %eax, %eax
	je        L0000751C
L00007511:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000751C:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L00007531:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_extension:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007564
L0000755F:
	cmpl      $9, %ecx
	jne       L00007575
L00007564:
	cmpl      $3, %edx
	je        L0000757F
L00007569:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L0000757F
L00007573:
	jmp       L000075D2
L00007575:
	cmpl      $3, %edx
	je        L0000757F
L0000757A:
	cmpl      $9, %edx
	jne       L0000758E
L0000757F:
	cmpl      $3, %ecx
	je        L0000758E
L00007584:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L000075D2
L0000758E:
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
L0000759E:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L000075B1:
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L000075CE:
	testl     %eax, %eax
	je        L000075DD
L000075D2:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000075DD:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L000075F2:
	.align 4, 0x90
# ----------------------
_xstrcoll_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        L0000761B
L00007613:
	setg      %al
	jle       L0000761D
L00007618:
	movzbl    %al, %eax
L0000761B:
	popq      %rbp
	ret       
L0000761D:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007629:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000764A
L00007645:
	cmpl      $9, %ecx
	jne       L0000765B
L0000764A:
	cmpl      $3, %edx
	je        L00007665
L0000764F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007665
L00007659:
	jmp       L0000768B
L0000765B:
	cmpl      $3, %edx
	je        L00007665
L00007660:
	cmpl      $9, %edx
	jne       L00007674
L00007665:
	cmpl      $3, %ecx
	je        L00007674
L0000766A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L0000768B
L00007674:
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        L0000768B
L00007683:
	setg      %al
	jle       L0000768D
L00007688:
	movzbl    %al, %eax
L0000768B:
	popq      %rbp
	ret       
L0000768D:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007699:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        L000076BB
L000076B3:
	setg      %al
	jle       L000076BD
L000076B8:
	movzbl    %al, %eax
L000076BB:
	popq      %rbp
	ret       
L000076BD:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L000076CC:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L000076EA
L000076E5:
	cmpl      $9, %ecx
	jne       L000076FB
L000076EA:
	cmpl      $3, %edx
	je        L00007705
L000076EF:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007705
L000076F9:
	jmp       L0000772B
L000076FB:
	cmpl      $3, %edx
	je        L00007705
L00007700:
	cmpl      $9, %edx
	jne       L00007714
L00007705:
	cmpl      $3, %ecx
	je        L00007714
L0000770A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L0000772B
L00007714:
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        L0000772B
L00007723:
	setg      %al
	jle       L0000772D
L00007728:
	movzbl    %al, %eax
L0000772B:
	popq      %rbp
	ret       
L0000772D:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L0000773C:
	.align 4, 0x90
# ----------------------
_strcmp_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        L0000775B
L00007753:
	setg      %al
	jle       L0000775D
L00007758:
	movzbl    %al, %eax
L0000775B:
	popq      %rbp
	ret       
L0000775D:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007769:
	.align 4, 0x90
# ----------------------
_strcmp_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000778A
L00007785:
	cmpl      $9, %ecx
	jne       L0000779B
L0000778A:
	cmpl      $3, %edx
	je        L000077A5
L0000778F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L000077A5
L00007799:
	jmp       L000077CB
L0000779B:
	cmpl      $3, %edx
	je        L000077A5
L000077A0:
	cmpl      $9, %edx
	jne       L000077B4
L000077A5:
	cmpl      $3, %ecx
	je        L000077B4
L000077AA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L000077CB
L000077B4:
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        L000077CB
L000077C3:
	setg      %al
	jle       L000077CD
L000077C8:
	movzbl    %al, %eax
L000077CB:
	popq      %rbp
	ret       
L000077CD:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L000077D9:
	.align 4, 0x90
# ----------------------
_rev_strcmp_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        L000077FB
L000077F3:
	setg      %al
	jle       L000077FD
L000077F8:
	movzbl    %al, %eax
L000077FB:
	popq      %rbp
	ret       
L000077FD:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L0000780C:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000782A
L00007825:
	cmpl      $9, %ecx
	jne       L0000783B
L0000782A:
	cmpl      $3, %edx
	je        L00007845
L0000782F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007845
L00007839:
	jmp       L0000786B
L0000783B:
	cmpl      $3, %edx
	je        L00007845
L00007840:
	cmpl      $9, %edx
	jne       L00007854
L00007845:
	cmpl      $3, %ecx
	je        L00007854
L0000784A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L0000786B
L00007854:
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        L0000786B
L00007863:
	setg      %al
	jle       L0000786D
L00007868:
	movzbl    %al, %eax
L0000786B:
	popq      %rbp
	ret       
L0000786D:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L0000787C:
	.align 4, 0x90
# ----------------------
_xstrcoll_version:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
# ----------------------
_xstrcoll_df_version:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L000078AA
L000078A5:
	cmpl      $9, %ecx
	jne       L000078BB
L000078AA:
	cmpl      $3, %edx
	je        L000078C5
L000078AF:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L000078C5
L000078B9:
	jmp       L000078E0
L000078BB:
	cmpl      $3, %edx
	je        L000078C5
L000078C0:
	cmpl      $9, %edx
	jne       L000078D4
L000078C5:
	cmpl      $3, %ecx
	je        L000078D4
L000078CA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L000078E0
L000078D4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
L000078E0:
	popq      %rbp
	ret       
L000078E2:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_version:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
L00007903:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_version:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000792A
L00007925:
	cmpl      $9, %ecx
	jne       L0000793B
L0000792A:
	cmpl      $3, %edx
	je        L00007945
L0000792F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007945
L00007939:
	jmp       L00007963
L0000793B:
	cmpl      $3, %edx
	je        L00007945
L00007940:
	cmpl      $9, %edx
	jne       L00007954
L00007945:
	cmpl      $3, %ecx
	je        L00007954
L0000794A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007963
L00007954:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
L00007963:
	popq      %rbp
	ret       
L00007965:
	.align 4, 0x90
# ----------------------
_xstrcoll_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00007996
L00007983:
	movl      $1, %eax
	jg        L00007996
L0000798A:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007998
L00007996:
	popq      %rbp
	ret       
L00007998:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L000079A4:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L000079CA
L000079C5:
	cmpl      $9, %ecx
	jne       L000079DB
L000079CA:
	cmpl      $3, %edx
	je        L000079E5
L000079CF:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L000079E5
L000079D9:
	jmp       L00007A16
L000079DB:
	cmpl      $3, %edx
	je        L000079E5
L000079E0:
	cmpl      $9, %edx
	jne       L000079F4
L000079E5:
	cmpl      $3, %ecx
	je        L000079F4
L000079EA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007A16
L000079F4:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00007A16
L00007A03:
	movl      $1, %eax
	jg        L00007A16
L00007A0A:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007A18
L00007A16:
	popq      %rbp
	ret       
L00007A18:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007A24:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00007A56
L00007A43:
	movl      $1, %eax
	jg        L00007A56
L00007A4A:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007A58
L00007A56:
	popq      %rbp
	ret       
L00007A58:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00007A67:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007A8A
L00007A85:
	cmpl      $9, %ecx
	jne       L00007A9B
L00007A8A:
	cmpl      $3, %edx
	je        L00007AA5
L00007A8F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007AA5
L00007A99:
	jmp       L00007AD6
L00007A9B:
	cmpl      $3, %edx
	je        L00007AA5
L00007AA0:
	cmpl      $9, %edx
	jne       L00007AB4
L00007AA5:
	cmpl      $3, %ecx
	je        L00007AB4
L00007AAA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007AD6
L00007AB4:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00007AD6
L00007AC3:
	movl      $1, %eax
	jg        L00007AD6
L00007ACA:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007AD8
L00007AD6:
	popq      %rbp
	ret       
L00007AD8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00007AE7:
	.align 4, 0x90
# ----------------------
_strcmp_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00007B16
L00007B03:
	movl      $1, %eax
	jg        L00007B16
L00007B0A:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007B18
L00007B16:
	popq      %rbp
	ret       
L00007B18:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007B24:
	.align 4, 0x90
# ----------------------
_strcmp_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007B4A
L00007B45:
	cmpl      $9, %ecx
	jne       L00007B5B
L00007B4A:
	cmpl      $3, %edx
	je        L00007B65
L00007B4F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007B65
L00007B59:
	jmp       L00007B96
L00007B5B:
	cmpl      $3, %edx
	je        L00007B65
L00007B60:
	cmpl      $9, %edx
	jne       L00007B74
L00007B65:
	cmpl      $3, %ecx
	je        L00007B74
L00007B6A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007B96
L00007B74:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00007B96
L00007B83:
	movl      $1, %eax
	jg        L00007B96
L00007B8A:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007B98
L00007B96:
	popq      %rbp
	ret       
L00007B98:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007BA4:
	.align 4, 0x90
# ----------------------
_rev_strcmp_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00007BD6
L00007BC3:
	movl      $1, %eax
	jg        L00007BD6
L00007BCA:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007BD8
L00007BD6:
	popq      %rbp
	ret       
L00007BD8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007BE7:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007C0A
L00007C05:
	cmpl      $9, %ecx
	jne       L00007C1B
L00007C0A:
	cmpl      $3, %edx
	je        L00007C25
L00007C0F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007C25
L00007C19:
	jmp       L00007C56
L00007C1B:
	cmpl      $3, %edx
	je        L00007C25
L00007C20:
	cmpl      $9, %edx
	jne       L00007C34
L00007C25:
	cmpl      $3, %ecx
	je        L00007C34
L00007C2A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007C56
L00007C34:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00007C56
L00007C43:
	movl      $1, %eax
	jg        L00007C56
L00007C4A:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007C58
L00007C56:
	popq      %rbp
	ret       
L00007C58:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007C67:
	.align 4, 0x90
# ----------------------
_xstrcoll_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00007C96
L00007C83:
	movl      $1, %eax
	jg        L00007C96
L00007C8A:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007C98
L00007C96:
	popq      %rbp
	ret       
L00007C98:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007CA4:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007CCA
L00007CC5:
	cmpl      $9, %ecx
	jne       L00007CDB
L00007CCA:
	cmpl      $3, %edx
	je        L00007CE5
L00007CCF:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007CE5
L00007CD9:
	jmp       L00007D16
L00007CDB:
	cmpl      $3, %edx
	je        L00007CE5
L00007CE0:
	cmpl      $9, %edx
	jne       L00007CF4
L00007CE5:
	cmpl      $3, %ecx
	je        L00007CF4
L00007CEA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007D16
L00007CF4:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00007D16
L00007D03:
	movl      $1, %eax
	jg        L00007D16
L00007D0A:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007D18
L00007D16:
	popq      %rbp
	ret       
L00007D18:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007D24:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00007D56
L00007D43:
	movl      $1, %eax
	jg        L00007D56
L00007D4A:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007D58
L00007D56:
	popq      %rbp
	ret       
L00007D58:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00007D67:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007D8A
L00007D85:
	cmpl      $9, %ecx
	jne       L00007D9B
L00007D8A:
	cmpl      $3, %edx
	je        L00007DA5
L00007D8F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007DA5
L00007D99:
	jmp       L00007DD6
L00007D9B:
	cmpl      $3, %edx
	je        L00007DA5
L00007DA0:
	cmpl      $9, %edx
	jne       L00007DB4
L00007DA5:
	cmpl      $3, %ecx
	je        L00007DB4
L00007DAA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007DD6
L00007DB4:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00007DD6
L00007DC3:
	movl      $1, %eax
	jg        L00007DD6
L00007DCA:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007DD8
L00007DD6:
	popq      %rbp
	ret       
L00007DD8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00007DE7:
	.align 4, 0x90
# ----------------------
_strcmp_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00007E16
L00007E03:
	movl      $1, %eax
	jg        L00007E16
L00007E0A:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007E18
L00007E16:
	popq      %rbp
	ret       
L00007E18:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007E24:
	.align 4, 0x90
# ----------------------
_strcmp_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007E4A
L00007E45:
	cmpl      $9, %ecx
	jne       L00007E5B
L00007E4A:
	cmpl      $3, %edx
	je        L00007E65
L00007E4F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007E65
L00007E59:
	jmp       L00007E96
L00007E5B:
	cmpl      $3, %edx
	je        L00007E65
L00007E60:
	cmpl      $9, %edx
	jne       L00007E74
L00007E65:
	cmpl      $3, %ecx
	je        L00007E74
L00007E6A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007E96
L00007E74:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00007E96
L00007E83:
	movl      $1, %eax
	jg        L00007E96
L00007E8A:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007E98
L00007E96:
	popq      %rbp
	ret       
L00007E98:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007EA4:
	.align 4, 0x90
# ----------------------
_rev_strcmp_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00007ED6
L00007EC3:
	movl      $1, %eax
	jg        L00007ED6
L00007ECA:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007ED8
L00007ED6:
	popq      %rbp
	ret       
L00007ED8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007EE7:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007F0A
L00007F05:
	cmpl      $9, %ecx
	jne       L00007F1B
L00007F0A:
	cmpl      $3, %edx
	je        L00007F25
L00007F0F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007F25
L00007F19:
	jmp       L00007F56
L00007F1B:
	cmpl      $3, %edx
	je        L00007F25
L00007F20:
	cmpl      $9, %edx
	jne       L00007F34
L00007F25:
	cmpl      $3, %ecx
	je        L00007F34
L00007F2A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00007F56
L00007F34:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00007F56
L00007F43:
	movl      $1, %eax
	jg        L00007F56
L00007F4A:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007F58
L00007F56:
	popq      %rbp
	ret       
L00007F58:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007F67:
	.align 4, 0x90
# ----------------------
_xstrcoll_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L00007F96
L00007F83:
	movl      $1, %eax
	jg        L00007F96
L00007F8A:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007F98
L00007F96:
	popq      %rbp
	ret       
L00007F98:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007FA4:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L00007FCA
L00007FC5:
	cmpl      $9, %ecx
	jne       L00007FDB
L00007FCA:
	cmpl      $3, %edx
	je        L00007FE5
L00007FCF:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00007FE5
L00007FD9:
	jmp       L00008016
L00007FDB:
	cmpl      $3, %edx
	je        L00007FE5
L00007FE0:
	cmpl      $9, %edx
	jne       L00007FF4
L00007FE5:
	cmpl      $3, %ecx
	je        L00007FF4
L00007FEA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00008016
L00007FF4:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L00008016
L00008003:
	movl      $1, %eax
	jg        L00008016
L0000800A:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L00008018
L00008016:
	popq      %rbp
	ret       
L00008018:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00008024:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L00008056
L00008043:
	movl      $1, %eax
	jg        L00008056
L0000804A:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L00008058
L00008056:
	popq      %rbp
	ret       
L00008058:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00008067:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000808A
L00008085:
	cmpl      $9, %ecx
	jne       L0000809B
L0000808A:
	cmpl      $3, %edx
	je        L000080A5
L0000808F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L000080A5
L00008099:
	jmp       L000080D6
L0000809B:
	cmpl      $3, %edx
	je        L000080A5
L000080A0:
	cmpl      $9, %edx
	jne       L000080B4
L000080A5:
	cmpl      $3, %ecx
	je        L000080B4
L000080AA:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L000080D6
L000080B4:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L000080D6
L000080C3:
	movl      $1, %eax
	jg        L000080D6
L000080CA:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L000080D8
L000080D6:
	popq      %rbp
	ret       
L000080D8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L000080E7:
	.align 4, 0x90
# ----------------------
_strcmp_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L00008116
L00008103:
	movl      $1, %eax
	jg        L00008116
L0000810A:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L00008118
L00008116:
	popq      %rbp
	ret       
L00008118:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00008124:
	.align 4, 0x90
# ----------------------
_strcmp_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000814A
L00008145:
	cmpl      $9, %ecx
	jne       L0000815B
L0000814A:
	cmpl      $3, %edx
	je        L00008165
L0000814F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00008165
L00008159:
	jmp       L00008196
L0000815B:
	cmpl      $3, %edx
	je        L00008165
L00008160:
	cmpl      $9, %edx
	jne       L00008174
L00008165:
	cmpl      $3, %ecx
	je        L00008174
L0000816A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00008196
L00008174:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L00008196
L00008183:
	movl      $1, %eax
	jg        L00008196
L0000818A:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L00008198
L00008196:
	popq      %rbp
	ret       
L00008198:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L000081A4:
	.align 4, 0x90
# ----------------------
_rev_strcmp_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L000081D6
L000081C3:
	movl      $1, %eax
	jg        L000081D6
L000081CA:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L000081D8
L000081D6:
	popq      %rbp
	ret       
L000081D8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L000081E7:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        L0000820A
L00008205:
	cmpl      $9, %ecx
	jne       L0000821B
L0000820A:
	cmpl      $3, %edx
	je        L00008225
L0000820F:
	movl      $-1, %eax
	cmpl      $9, %edx
	je        L00008225
L00008219:
	jmp       L00008256
L0000821B:
	cmpl      $3, %edx
	je        L00008225
L00008220:
	cmpl      $9, %edx
	jne       L00008234
L00008225:
	cmpl      $3, %ecx
	je        L00008234
L0000822A:
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       L00008256
L00008234:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L00008256
L00008243:
	movl      $1, %eax
	jg        L00008256
L0000824A:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L00008258
L00008256:
	popq      %rbp
	ret       
L00008258:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00008267:
	.align 4, 0x90
# ----------------------
_xstrcoll:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r14
	movq      %rdi, %r15
	call      ___error
L00008285:
	movl      $0, (%rax)
	movq      %r15, %rdi
	movq      %r14, %rsi
	call      _strcoll
L00008296:
	movl      %eax, %ebx
	call      ___error
L0000829D:
	cmpl      $0, (%rax)
	jne       L000082AF
L000082A2:
	movl      %ebx, %eax
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000082AF:
	call      ___error
L000082B4:
	movl      (%rax), %ebx
	xorl      %edi, %edi
	movq      %r15, %rsi
	call      _quote_n
L000082C0:
	movq      %rax, %r15
	movl      $1, %edi
	movq      %r14, %rsi
	call      _quote_n
L000082D0:
	movq      %rax, %r8
	leaq      L_.str68(%rip), %rcx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	movq      %rcx, %rdx
	movq      %r15, %rcx
	call      _error
L000082EB:
	cmpl      $0, _exit_status(%rip)
	jne       L000082FE
L000082F4:
	movl      $1, _exit_status(%rip)
L000082FE:
	leaq      _failed_strcoll(%rip), %rax
	movl      $1, %esi
	movq      %rax, %rdi
	call      _longjmp
L00008312:
	.align 4, 0x90
# ----------------------
_get_funky_string:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movq      (%rsi), %r8
	movq      (%rdi), %r9
	xorl      %eax, %eax
	leaq      L00008610(%rip), %r11
	movl      $1023, %r12d
	xorl      %r10d, %r10d
	xorl      %r14d, %r14d
	jmp       L00008358
L0000834E:
	.align 4, 0x90
L00008350:
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
L00008358:
	movl      %eax, %ebx
	cmpl      $4, %eax
	ja        L000085ED
L00008363:
	movslq    (%r11,%rbx,4), %rax
	addq      %r11, %rax
	jmp       *%rax
L0000836C:
	movb      (%r8), %r15b
	movsbl    %r15b, %ebx
	movb      $1, %al
	cmpl      $57, %ebx
	jg        L00008447
L0000837E:
	testl     %ebx, %ebx
	jne       L000085B2
L00008386:
	jmp       L000085F7
L0000838B:
	movb      (%r8), %r15b
	movsbl    %r15b, %r13d
	cmpl      $47, %r13d
	jg        L00008462
L0000839C:
	testl     %r13d, %r13d
	je        L000085F2
L000083A5:
	movb      %r15b, %r14b
L000083A8:
	movb      %r14b, (%r9)
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
	incq      %r8
	jmp       L00008358
L000083B8:
	movb      (%r8), %al
	movb      %al, %bl
	andb      $-8, %bl
	movzbl    %bl, %ebx
	cmpl      $48, %ebx
	jne       L00008511
L000083CC:
	shlb      $3, %r14b
	incq      %r8
	addb      %al, %r14b
	addb      $-48, %r14b
	movl      $2, %eax
	jmp       L00008358
L000083E4:
	movb      (%r8), %r15b
	movsbl    %r15b, %ebx
	addl      $-48, %ebx
	cmpl      $54, %ebx
	ja        L00008511
L000083F7:
	btq       %rbx, %r12
	jb        L000084D1
L00008401:
	movl      $8257536, %eax
	btq       %rbx, %rax
	jae       L000084E9
L00008410:
	shlb      $4, %r14b
	incq      %r8
	addb      %r15b, %r14b
	addb      $-55, %r14b
	movl      $3, %eax
	jmp       L00008358
L00008428:
	movsbl    (%r8), %ebx
	cmpl      $64, %ebx
	jl        L0000848A
L00008431:
	movzbl    %bl, %eax
	cmpl      $127, %eax
	je        L0000848A
L00008439:
	incq      %r8
	andb      $31, %bl
	movb      %bl, (%r9)
	jmp       L00008350
L00008447:
	cmpl      $91, %ebx
	jg        L000084A7
L0000844C:
	cmpl      $61, %ebx
	jne       L000085AD
L00008455:
	testb     %dl, %dl
	je        L000085B2
L0000845D:
	jmp       L000085F7
L00008462:
	cmpl      $62, %r13d
	jg        L000084B9
L00008468:
	addl      $-48, %r13d
	cmpl      $8, %r13d
	jae       L000083A5
L00008476:
	addb      $-48, %r15b
	movl      $2, %eax
	movb      %r15b, %r14b
L00008482:
	incq      %r8
	jmp       L00008358
L0000848A:
	xorl      %eax, %eax
	movzbl    %bl, %ebx
	cmpl      $63, %ebx
	jne       L000085F7
L00008498:
	movb      $127, (%r9)
	incq      %r9
	incq      %r10
	jmp       L00008358
L000084A7:
	cmpl      $94, %ebx
	jne       L00008519
L000084AC:
	incq      %r8
	movl      $4, %eax
	jmp       L00008358
L000084B9:
	cmpl      $87, %r13d
	jg        L0000852F
L000084BF:
	cmpl      $63, %r13d
	jne       L000083A5
L000084C9:
	movb      $127, %r14b
	jmp       L000083A8
L000084D1:
	shlb      $4, %r14b
	incq      %r8
	addb      %r15b, %r14b
	addb      $-48, %r14b
	movl      $3, %eax
	jmp       L00008358
L000084E9:
	movq      $35465847065542656, %rax
	btq       %rbx, %rax
	jae       L00008511
L000084F9:
	shlb      $4, %r14b
	incq      %r8
	addb      %r15b, %r14b
	addb      $-87, %r14b
	movl      $3, %eax
	jmp       L00008358
L00008511:
	movb      %r14b, (%r9)
	jmp       L00008350
L00008519:
	cmpl      $92, %ebx
	jne       L000085B2
L00008522:
	incq      %r8
	movl      $1, %eax
	jmp       L00008358
L0000852F:
	movl      $3, %eax
	xorl      %r14d, %r14d
	cmpl      $94, %r13d
	jg        L0000854C
L0000853D:
	cmpl      $88, %r13d
	je        L00008482
L00008547:
	jmp       L000083A5
L0000854C:
	cmpl      $109, %r13d
	jg        L0000857E
L00008552:
	addl      $-95, %r13d
	cmpl      $7, %r13d
	ja        L000083A5
L00008560:
	movb      $7, %r14b
	leaq      L00008650(%rip), %rax
	movq      %rax, %rbx
	movslq    (%rbx,%r13,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
L00008576:
	movb      $32, %r14b
	jmp       L000083A8
L0000857E:
	addl      $-110, %r13d
	cmpl      $10, %r13d
	ja        L000083A5
L0000858C:
	leaq      L00008624(%rip), %rbx
	movq      %rbx, %r12
	movslq    (%r12,%r13,4), %rbx
	addq      %r12, %rbx
	movl      $1023, %r12d
	jmp       *%rbx
L000085A5:
	movb      $10, %r14b
	jmp       L000083A8
L000085AD:
	cmpl      $58, %ebx
	je        L000085F7
L000085B2:
	incq      %r8
	movb      %r15b, (%r9)
	jmp       L00008350
L000085BD:
	movb      $8, %r14b
	jmp       L000083A8
L000085C5:
	movb      $27, %r14b
	jmp       L000083A8
L000085CD:
	movb      $12, %r14b
	jmp       L000083A8
L000085D5:
	movb      $13, %r14b
	jmp       L000083A8
L000085DD:
	movb      $9, %r14b
	jmp       L000083A8
L000085E5:
	movb      $11, %r14b
	jmp       L000083A8
L000085ED:
	call      _abort
L000085F2:
	incq      %r8
	xorl      %eax, %eax
L000085F7:
	movq      %r9, (%rdi)
	movq      %r8, (%rsi)
	movq      %r10, (%rcx)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000860F:
	.align 4, 0x90
# ----------------------
L00008610:
	.long	L0000836C-L00008610
	.long	L0000838B-L00008610
	.long	L000083B8-L00008610
	.long	L000083E4-L00008610
	.long	L00008428-L00008610
# ----------------------
L00008624:
	.long	L000085A5-L00008624
	.long	L000083A5-L00008624
	.long	L000083A5-L00008624
	.long	L000083A5-L00008624
	.long	L000085D5-L00008624
	.long	L000083A5-L00008624
	.long	L000085DD-L00008624
	.long	L000083A5-L00008624
	.long	L000085E5-L00008624
	.long	L000083A5-L00008624
	.long	L00008482-L00008624
# ----------------------
L00008650:
	.long	L00008576-L00008650
	.long	L000083A5-L00008650
	.long	L000083A8-L00008650
	.long	L000085BD-L00008650
	.long	L000083A5-L00008650
	.long	L000083A5-L00008650
	.long	L000085C5-L00008650
	.long	L000085CD-L00008650
# ----------------------
	.section       __TEXT,__const,regular
	.align 4
_main.sig:
	.long	18
	.long	14
	.long	1
	.long	2
	.long	13
	.long	3
	.long	15
	.long	27
	.long	26
	.long	24
	.long	25
	.long	0
	.align 4
_print_color_indicator.filetype_indicator:
	.long	13
	.long	8
	.long	11
	.long	6
	.long	10
	.long	5
	.long	7
	.long	9
	.long	5
	.long	6
	.long	0
	.long	0
	.align 4
_G_line:
	.long	1866670115
	.long	1734960750
	.long	1952543349
	.long	544108393
	.long	1701603686
	.long	1919903264
	.long	1919509536
	.long	1869377379
	.long	539784050
	.long	1953833057
	.long	1953066089
	.long	1869881465
	.long	1818585120
	.long	1870209136
	.long	1702043765
	.long	1752440948
	.long	539164773
	.long	1130320716
	.long	1380928591
	.long	1852121171
	.long	1869769078
	.long	1852140910
	.long	1635131508
	.long	1650551154
	.long	1965057388
	.long	543450483
	.long	1193310562
	.long	1814058318
	.long	1769414771
	.long	1948280948
	.long	757097832
	.long	1819239213
	.long	1864397423
	.long	1869182064
	.long	587214446
	.long	1886339872
	.long	1734963833
	.long	673215592
	.long	824191299
	.long	758528313
	.long	892416050
	.long	1701987872
	.long	1867718757
	.long	1635218534
	.long	1176528242
	.long	1684960623
	.long	1869182049
	.long	1226845294
	.long	3040110
	.long	1866670115
	.long	1852406128
	.long	1851859047
	.long	1768169572
	.long	1769108595
	.long	1769239906
	.long	1864396399
	.long	1752440934
	.long	1713402729
	.long	744844393
	.long	1953068832
	.long	1919885416
	.long	1953068832
	.long	1953853288
	.long	1685024032
	.long	1667851881
	.long	1869182049
	.long	587213934
	.long	1701994784
	.long	1919250464
	.long	1953786221
	.long	1881171045
	.long	1769369458
	.long	543450468
	.long	543516788
	.long	2037411683
	.long	1751607666
	.long	1869488244
	.long	1701013876
	.long	1684955424
	.long	1768453152
	.long	1869488243
	.long	1701013876
	.long	1701994784
	.long	1701998624
	.long	1987208563
	.long	3040357
	.long	1750343715
	.long	1701519461
	.long	1919907705
	.long	1126200164
	.long	1380928591
	.long	1347362860
	.long	1313818964
	.long	1629498451
	.long	1159750766
	.long	1414022985
	.long	542394690
	.long	1852794920
	.long	1684370031
	.long	544825888
	.long	6645876
	.long	1819484195
	.long	2003526497
	.long	543519329
	.long	1936876918
	.long	544108393
	.long	1679844975
	.long	1868788329
	.long	1936879468
	.long	1918967849
	.long	1701978213
	.long	1852272483
	.long	1684372073
	.long	1953849888
	.long	1852270880
	.long	1684370031
	.long	539164718
	.long	1869374786
	.long	1948265591
	.long	1701995880
	.long	1869116192
	.long	543452277
	.long	1864394082
	.long	1411409262
	.long	541938245
	.long	1920233061
	.long	1868963961
	.long	1634017394
	.long	1948280931
	.long	1953329765
	.long	543518841
	.long	1952540788
	.long	544434464
	.long	1869377379
	.long	1635412338
	.long	6646882
	.long	1297237332
	.long	1702118688
	.long	1409314162
	.long	541938245
	.long	1769172577
	.long	1380275200
	.long	1868767309
	.long	762474348
	.long	1919251576
	.long	1163133037
	.long	1663061330
	.long	858877551
	.long	892500018
	.long	1380275200
	.long	1868767309
	.long	842215790
	.long	3158904
	.long	1297237332
	.long	1852793632
	.long	2016555825
	.long	1409299252
	.long	541938245
	.long	829321059
	.long	913846835
	.long	1163132976
	.long	1663061330
	.long	809004655
	.long	3486328
	.long	1297237332
	.long	1852793632
	.long	846737464
	.long	1163132984
	.long	1663061330
	.long	809004655
	.long	3158904
	.long	1297237332
	.long	1852793632
	.long	880291896
	.long	1163132979
	.long	1663061330
	.long	809004655
	.long	3159416
	.long	1297237332
	.long	1852793632
	.long	913846328
	.long	1163132976
	.long	1663061330
	.long	846425711
	.long	1163132981
	.long	1663061330
	.long	1869835887
	.long	1409312108
	.long	541938245
	.long	2003269987
	.long	1409314409
	.long	541938245
	.long	1702130788
	.long	1409314162
	.long	541938245
	.long	1919251557
	.long	1868770669
	.long	7499628
	.long	1297237332
	.long	1869506336
	.long	1409312109
	.long	541938245
	.long	1836019303
	.long	892480869
	.long	1819239222
	.long	1409315439
	.long	541938245
	.long	1685222760
	.long	1380275200
	.long	1718231117
	.long	1919251554
	.long	1163133037
	.long	1797279058
	.long	1869835887
	.long	1409312108
	.long	541938245
	.long	1919251563
	.long	1163133037
	.long	1814056274
	.long	2020961897
	.long	1380275200
	.long	1768693837
	.long	762869102
	.long	1163133027
	.long	1830833490
	.long	761815905
	.long	1869377379
	.long	1163133042
	.long	1830833490
	.long	761815905
	.long	762670695
	.long	1869377379
	.long	1163133042
	.long	1830833490
	.long	1919251564
	.long	1163133037
	.long	1881165138
	.long	2037675125
	.long	1380275200
	.long	1970282573
	.long	762934388
	.long	1664496946
	.long	1919904879
	.long	1380275200
	.long	2020745293
	.long	1409315958
	.long	541938245
	.long	1953921138
	.long	909455917
	.long	1869377379
	.long	1163133042
	.long	1914719570
	.long	762607224
	.long	2003269987
	.long	1409314409
	.long	541938245
	.long	1953921138
	.long	1736008493
	.long	762210679
	.long	1769234798
	.long	1409312118
	.long	541938245
	.long	1953921138
	.long	1768846637
	.long	1701080931
	.long	1380275200
	.long	2020745293
	.long	1965913206
	.long	1868786030
	.long	841835876
	.long	1868772917
	.long	7499628
	.long	1297237332
	.long	1987605024
	.long	1853173108
	.long	1685021545
	.long	909455973
	.long	1380275200
	.long	1668489293
	.long	1852138866
	.long	1380275200
	.long	1668489293
	.long	1852138866
	.long	909455917
	.long	1869377379
	.long	1163133042
	.long	1931496786
	.long	1701147235
	.long	892480878
	.long	1819239222
	.long	1647145583
	.long	1409312099
	.long	541938245
	.long	1701995379
	.long	1647144549
	.long	1409312099
	.long	541938245
	.long	1701995379
	.long	1999466085
	.long	1380275200
	.long	1668489293
	.long	1852138866
	.long	1702118702
	.long	1409314162
	.long	541938245
	.long	1701995379
	.long	1915645541
	.long	7632504
	.long	1297237332
	.long	1919120160
	.long	778986853
	.long	1970170220
	.long	1163133048
	.long	1931496786
	.long	1163133044
	.long	1931496786
	.long	892480884
	.long	1819239222
	.long	1409315439
	.long	541938245
	.long	1836213620
	.long	1952542313
	.long	1409315439
	.long	541938245
	.long	808547446
	.long	1163132976
	.long	2015382866
	.long	1836213620
	.long	1380275200
	.long	1954029645
	.long	762147429
	.long	1868772913
	.long	7499628
	.long	1297237332
	.long	1702131744
	.long	841837938
	.long	1868772917
	.long	7499628
	.long	1297237332
	.long	1702131744
	.long	942501234
	.long	1819239224
	.long	1409315439
	.long	541938245
	.long	1919251576
	.long	1868770669
	.long	7499628
	.long	1297237332
	.long	1702131744
	.long	1680698738
	.long	1634296421
	.long	539164782
	.long	1869374786
	.long	1918967927
	.long	1752440933
	.long	1868767333
	.long	544370540
	.long	1953066601
	.long	1920234272
	.long	1936158313
	.long	1919903264
	.long	1701344288
	.long	1935761952
	.long	1713398633
	.long	543517801
	.long	1701869940
	.long	1092628083
	.long	1819239200
	.long	1763734127
	.long	7629166
	.long	1953701923
	.long	1735289202
	.long	1852793632
	.long	1953720691
	.long	1718558835
	.long	1701736224
	.long	544370464
	.long	1701998445
	.long	543584032
	.long	543516788
	.long	1819045734
	.long	1852405615
	.long	1970151527
	.long	1769104749
	.long	1868767331
	.long	980641124
	.long	1092625152
	.long	1769108596
	.long	1702131042
	.long	1685021472
	.long	3830629
	.long	808460323
	.long	1852796477
	.long	825237605
	.long	1819238973
	.long	875569252
	.long	1684960573
	.long	1668510309
	.long	543519343
	.long	1648178480
	.long	1802398060
	.long	1027026976
	.long	1702258034
	.long	543519602
	.long	1664956464
	.long	1701015151
	.long	1684368481
	.long	1411392256
	.long	544503909
	.long	1869377379
	.long	1868767346
	.long	980641124
	.long	857744128
	.long	1818377520
	.long	543908705
	.long	1916612915
	.long	857760869
	.long	1919368498
	.long	544105829
	.long	2034053939
	.long	1869376613
	.long	875765879
	.long	1970037309
	.long	892543077
	.long	1734438205
	.long	1635020389
	.long	1026962208
	.long	1851881827
	.long	1027027744
	.long	1953065079
	.long	539164773
	.long	1801675074
	.long	1970238055
	.long	1663067246
	.long	1919904879
	.long	1685021472
	.long	3830629
	.long	808722467
	.long	1634492989
	.long	874539875
	.long	1701985585
	.long	842276964
	.long	1701996349
	.long	874540645
	.long	1702444339
	.long	2003790956
	.long	1026831392
	.long	1702194274
	.long	1026896928
	.long	1701273965
	.long	543257710
	.long	1664955956
	.long	544104825
	.long	2000500532
	.long	1702127976
	.long	1330520832
	.long	1279348050
	.long	540028960
	.long	1869488163
	.long	1819239200
	.long	1663070831
	.long	543515759
	.long	1629516897
	.long	587230316
	.long	1162627398
	.long	540028960
	.long	1701978147
	.long	1634497895
	.long	1768300658
	.long	540697964
	.long	543519605
	.long	1663070062
	.long	1919904879
	.long	544497952
	.long	7105633
	.long	1163085138
	.long	540024916
	.long	1701978147
	.long	544499059
	.long	572551028
	.long	1836216174
	.long	539126881
	.long	1869377379
	.long	1229193330
	.long	825237586
	.long	540291899
	.long	1768169507
	.long	1952671090
	.long	7959151
	.long	1263421772
	.long	993079328
	.long	589313587
	.long	1836675872
	.long	1768714082
	.long	1768693859
	.long	539913070
	.long	543574312
	.long	544567161
	.long	544499059
	.long	1936287860
	.long	544175136
	.long	1918989351
	.long	661939559
	.long	1936615712
	.long	1684104564
	.long	543584032
	.long	589299809
	.long	1836412448
	.long	1667854949
	.long	1981836385
	.long	1702194273
	.long	1752440876
	.long	1868767333
	.long	544370540
	.long	1629516649
	.long	1868963955
	.long	1752440946
	.long	1768300645
	.long	1881171308
	.long	1953393007
	.long	1948279909
	.long	2698863
	.long	1414288717
	.long	1380010057
	.long	1313426500
	.long	808460363
	.long	1914708768
	.long	1819633509
	.long	1713402465
	.long	543517801
	.long	1752459639
	.long	1919905056
	.long	1752440933
	.long	1864396385
	.long	1814062446
	.long	7040617
	.long	1330006342
	.long	993014816
	.long	589312819
	.long	1885958176
	.long	1330839653
	.long	807422787
	.long	892549937
	.long	1931485984
	.long	1701536623
	.long	1329856628
	.long	807424591
	.long	892549937
	.long	1679827744
	.long	7499631
	.long	541805634
	.long	859516980
	.long	825244467
	.long	1646273312
	.long	1801678700
	.long	1986356256
	.long	543515497
	.long	1986622052
	.long	1124102757
	.long	874533448
	.long	858995504
	.long	540094523
	.long	1751326755
	.long	1667330657
	.long	544367988
	.long	1769366884
	.long	1679844707
	.long	1702259058
	.long	1380909170
	.long	1312901200
	.long	993014816
	.long	809185587
	.long	539172913
	.long	1819113843
	.long	543911529
	.long	1847619444
	.long	2019913327
	.long	1702130537
	.long	1713402990
	.long	744844393
	.long	544370464
	.long	762212206
	.long	1952543859
	.long	1818386727
	.long	1768300645
	.long	773875052
	.long	1291857454
	.long	1230197577
	.long	807421774
	.long	539172912
	.long	539897390
	.long	543452769
	.long	543516788
	.long	1701603686
	.long	1752440947
	.long	1881176421
	.long	1953393007
	.long	7304224
	.long	1431586131
	.long	857752649
	.long	825506615
	.long	1713382176
	.long	543517801
	.long	1952540788
	.long	544434464
	.long	1970562419
	.long	673211497
	.long	695413621
	.long	1413829376
	.long	541346119
	.long	876294195
	.long	539172915
	.long	1701603686
	.long	1634235424
	.long	1936269428
	.long	1952805664
	.long	543451495
	.long	1932224296
	.long	1094909993
	.long	1229078864
	.long	1498696012
	.long	993014560
	.long	589312308
	.long	1818846752
	.long	1769414757
	.long	1663068276
	.long	1650552929
	.long	1953066089
	.long	1414725753
	.long	1498104649
	.long	1213484895
	.long	1465864773
	.long	1096042834
	.long	541412418
	.long	876294195
	.long	539172914
	.long	544368996
	.long	1952540788
	.long	544434464
	.long	1667855475
	.long	1629518187
	.long	1864393838
	.long	1919248500
	.long	1769109293
	.long	1818386804
	.long	724050021
	.long	728706164
	.long	1325410679
	.long	1380272212
	.long	1230133087
	.long	1279410516
	.long	875765829
	.long	540161083
	.long	1768169507
	.long	1752440946
	.long	1763734625
	.long	1953439859
	.long	762471784
	.long	1953067639
	.long	1701601889
	.long	728705056
	.long	1629497719
	.long	1847616622
	.long	1931506799
	.long	1801677172
	.long	1414725753
	.long	1498104649
	.long	993473312
	.long	589313076
	.long	1919509536
	.long	1953068832
	.long	1752440936
	.long	1953701989
	.long	2037080937
	.long	1953063456
	.long	1952805664
	.long	1948985376
	.long	1851858985
	.long	1869488228
	.long	1953439860
	.long	762471784
	.long	1953067639
	.long	1701601889
	.long	1411392256
	.long	544434536
	.long	1713402729
	.long	1713402479
	.long	1936026729
	.long	1953068832
	.long	2019893352
	.long	1953850213
	.long	1701847141
	.long	1936289138
	.long	1852795251
	.long	1480917050
	.long	807420741
	.long	842218289
	.long	1277174528
	.long	544502633
	.long	544829025
	.long	1701603686
	.long	1954047264
	.long	1769172581
	.long	544435823
	.long	1701538156
	.long	1731077920
	.long	1864378234
	.long	774316146
	.long	661807476
	.long	1634235424
	.long	1870209140
	.long	1870078069
	.long	543452277
	.long	1701538156
	.long	7564320
	.long	1869881379
	.long	1819239200
	.long	2053730927
	.long	1700929637
	.long	779579244
	.long	1953845280
	.long	1701344288
	.long	1954047264
	.long	1769172581
	.long	539782767
	.long	1886593121
	.long	744842081
	.long	1684955424
	.long	1701344288
	.long	1819239200
	.long	1763734127
	.long	544500078
	.long	1769108595
	.long	3041134
	.long	1630019619
	.long	1629512814
	.long	1663072622
	.long	1701670255
	.long	544437358
	.long	544567161
	.long	1953390967
	.long	544175136
	.long	543450209
	.long	1702127201
	.long	543236210
	.long	690430759
	.long	1226842880
	.long	1870209126
	.long	1937055861
	.long	1329864805
	.long	1953705299
	.long	543517817
	.long	1717990771
	.long	1936029801
	.long	1870209068
	.long	1634541685
	.long	1635197049
	.long	1948284014
	.long	1853169775
	.long	1835888483
	.long	544501349
	.long	543516788
	.long	1819045734
	.long	1852405615
	.long	587217511
	.long	1684890414
	.long	993079328
	.long	589312563
	.long	1702389024
	.long	1635022179
	.long	1936026722
	.long	1919035424
	.long	1952999273
	.long	1701996320
	.long	2715237
	.long	2019896867
	.long	825237605
	.long	3289915
	.long	1868770851
	.long	825237613
	.long	3289915
	.long	1952591395
	.long	825237613
	.long	3289915
	.long	1633824291
	.long	825237620
	.long	3289915
	.long	1917788195
	.long	543582496
	.long	544567161
	.long	1953390967
	.long	544175136
	.long	1869377379
	.long	1702521202
	.long	1919120160
	.long	1937010793
	.long	1702257952
	.long	1718165614
	.long	1701344288
	.long	1868832889
	.long	1953459744
	.long	1986095136
	.long	1752440933
	.long	539164773
	.long	1667594341
	.long	1650553973
	.long	1646290284
	.long	1629516905
	.long	1635087459
	.long	544828524
	.long	779380083
	.long	1932403456
	.long	825237608
	.long	3289915
	.long	1935879715
	.long	825237608
	.long	3289915
	.long	1629496096
	.long	1768448882
	.long	544433526
	.long	1663070831
	.long	1919970671
	.long	1702064997
	.long	1646796900
	.long	1751607666
	.long	1701978228
	.long	771762532
	.long	544366964
	.long	859517232
	.long	1949171761
	.long	807434855
	.long	825441073
	.long	1918971392
	.long	825237603
	.long	3224379
	.long	1785880878
	.long	993079328
	.long	771764531
	.long	544891252
	.long	859517232
	.long	1814954033
	.long	807428456
	.long	825441073
	.long	2053910016
	.long	825237556
	.long	3224379
	.long	1752853550
	.long	993079328
	.long	771764531
	.long	1634564716
	.long	993079328
	.long	771764531
	.long	544894068
	.long	859517232
	.long	1949171761
	.long	807434872
	.long	825441073
	.long	2054434304
	.long	825237615
	.long	3224379
	.long	2050454574
	.long	993079328
	.long	771764531
	.long	544237946
	.long	859517232
	.long	2049835057
	.long	993079328
	.long	771764531
	.long	825237594
	.long	3224379
	.long	544891950
	.long	859517232
	.long	1731067953
	.long	825237626
	.long	3224379
	.long	2054319150
	.long	993079328
	.long	771764531
	.long	807434860
	.long	825441073
	.long	2053910016
	.long	825237615
	.long	3224379
	.long	544897070
	.long	859517232
	.long	1647181873
	.long	807416442
	.long	825441073
	.long	2053254656
	.long	993079328
	.long	771764531
	.long	544891508
	.long	859517232
	.long	1949171761
	.long	540179042
	.long	859517232
	.long	1949171761
	.long	825237626
	.long	3224379
	.long	1650811950
	.long	993079328
	.long	771764531
	.long	544043122
	.long	859517232
	.long	1781399601
	.long	807432801
	.long	825441073
	.long	1635200512
	.long	825237618
	.long	3224379
	.long	1918985518
	.long	993079328
	.long	771764531
	.long	544366963
	.long	859517232
	.long	1915617329
	.long	807432801
	.long	825441073
	.long	1818308096
	.long	825237626
	.long	3224379
	.long	1701011758
	.long	993079328
	.long	771764531
	.long	544173946
	.long	859517232
	.long	1663959089
	.long	544172400
	.long	859517232
	.long	925761585
	.long	825237626
	.long	3224379
	.long	544895534
	.long	859517232
	.long	1663959089
	.long	807428705
	.long	825441073
	.long	1763713792
	.long	1701273965
	.long	1919903264
	.long	1937006957
	.long	1886006784
	.long	825237607
	.long	3486523
	.long	1701866030
	.long	825237607
	.long	3486523
	.long	1718183726
	.long	993079328
	.long	771765555
	.long	544238946
	.long	859517232
	.long	1882062901
	.long	807431522
	.long	892549937
	.long	1735405056
	.long	825237613
	.long	3486523
	.long	1836085294
	.long	993079328
	.long	771765555
	.long	543254388
	.long	859517232
	.long	2016280629
	.long	807431522
	.long	892549937
	.long	1886924288
	.long	825237613
	.long	3486523
	.long	1718187054
	.long	993079328
	.long	771765555
	.long	1717987700
	.long	993079328
	.long	771765555
	.long	543649392
	.long	859517232
	.long	1932394549
	.long	807430006
	.long	892549937
	.long	1987259904
	.long	807434855
	.long	892549937
	.long	1852648960
	.long	825237607
	.long	3486523
	.long	2019782702
	.long	993079328
	.long	771765555
	.long	544632685
	.long	859517232
	.long	1831731253
	.long	807430000
	.long	892549937
	.long	1886203392
	.long	807429989
	.long	892549937
	.long	846016000
	.long	825237622
	.long	3486523
	.long	1986751790
	.long	993079328
	.long	771765555
	.long	1835165047
	.long	993079328
	.long	771765555
	.long	544040815
	.long	859517232
	.long	1831731253
	.long	807416944
	.long	892549937
	.long	879570432
	.long	825237622
	.long	3486523
	.long	879783214
	.long	825237622
	.long	3486523
	.long	1651471918
	.long	993079328
	.long	771765555
	.long	807433329
	.long	892549937
	.long	1970155008
	.long	825237622
	.long	3486523
	.long	1986885422
	.long	993079328
	.long	771765555
	.long	543585121
	.long	859517232
	.long	1915617333
	.long	825237613
	.long	3486523
	.long	1986884142
	.long	825237602
	.long	3486523
	.long	1668048430
	.long	993079328
	.long	771765555
	.long	543782497
	.long	859517232
	.long	1714290741
	.long	807430508
	.long	892549937
	.long	1818635776
	.long	825237622
	.long	3486523
	.long	543975214
	.long	859517232
	.long	1680736309
	.long	825237612
	.long	3486523
	.long	1717794862
	.long	993079328
	.long	771765555
	.long	543455096
	.long	859517232
	.long	2033057845
	.long	807433845
	.long	892549937
	.long	1734553088
	.long	825237613
	.long	3486523
	.long	1718445358
	.long	993079328
	.long	587216179
	.long	1953785888
	.long	791624304
	.long	1768647031
	.long	1885960238
	.long	1919889000
	.long	1852387175
	.long	779642212
	.long	795895920
	.long	1162692941
	.long	1886999647
	.long	1633645413
	.long	1180656750
	.long	1600482409
	.long	1702131781
	.long	1869181806
	.long	771781486
	.long	544630639
	.long	859517232
	.long	1865285685
	.long	807434343
	.long	892549937
	.long	1629496064
	.long	1869177973
	.long	1919903264
	.long	1937006957
	.long	1633758720
	.long	808460387
	.long	3552059
	.long	544563502
	.long	859516976
	.long	1714290742
	.long	543383916
	.long	859516976
	.long	1831731254
	.long	807428404
	.long	909327152
	.long	1768762880
	.long	808460388
	.long	3552059
	.long	1684630830
	.long	808460393
	.long	3552059
	.long	1634430254
	.long	993013792
	.long	771765811
	.long	540242029
	.long	859516976
	.long	1831731254
	.long	807428976
	.long	909327152
	.long	1735339520
	.long	808460391
	.long	3552059
	.long	543257134
	.long	859516976
	.long	1999503414
	.long	807433825
	.long	909327152
	.long	1746936576
	.long	980448372
	.long	1769418543
	.long	2016307563
	.long	778596457
	.long	795308655
	.long	1701080681
	.long	1752182392
	.long	1229795184
	.long	1415529805
	.long	1936027769
	.long	1684955487
	.long	1818838623
	.long	2017812325
	.long	1936614772
	.long	1936617321
	.long	1735339520
	.long	808460385
	.long	3552059
	.long	1970302766
	.long	808460403
	.long	3552059
	.long	2020635438
	.long	993013792
	.long	771765811
	.long	1718645624
	.long	993013792
	.long	13875
	.align 4
_sort_types:
	.long	-1
	.long	4
	.long	2
	.long	1
	.long	3
	.long	0
	.long	0
	.long	0
	.align 4
_time_types:
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.align 4
_format_types:
	.long	0
	.long	0
	.long	4
	.long	3
	.long	3
	.long	2
	.long	1
	.long	0
	.align 4
_color_types:
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.align 4
_indicator_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
_decode_switches.posix_prefix:
	.string	"posix-"
# ----------------------
LC00009977:
	.zero	9
	.align 4
_time_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
l_switch.table:
	.long	1
	.long	2
	.long	0
	.long	3
	.long	0
	.long	4
	.long	0
	.long	5
	.long	0
	.long	6
	.long	0
	.long	7
	.long	0
	.long	8
	.long	0
	.long	0
	.align 4
_.memset_pattern:
	.long	3
	.long	0
	.long	3
	.long	0
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.byte	0
L_.str1:
	.string	"."
L___func__.main:
	.string	"main"
L_.str2:
	.string	"src/ls.c"
L_.str3:
	.string	"found"
L_.str4:
	.string	"\033["
L_.str5:
	.string	"//DIRED//"
L_.str6:
	.string	"//SUBDIRED//"
L_.str7:
	.string	"//DIRED-OPTIONS// --quoting-style=%s\n"
L_.str8:
	.string	"hash_get_n_entries (active_dir_set) == 0"
L_.str9:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
L_.str10:
	.string	"List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"
L_.str11:
	.string	"  -a, --all                  do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"
L_.str12:
	.string	"      --block-size=SIZE      scale sizes by SIZE before printing them; e.g.,\n                               '--block-size=M' prints sizes in units of\n                               1,048,576 bytes; see SIZE format below\n  -B, --ignore-backups       do not list implied entries ending with ~\n  -c                         with -lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"
L_.str13:
	.string	"  -C                         list entries by columns\n      --color[=WHEN]         colorize the output; WHEN can be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"
L_.str14:
	.string	"  -f                         do not sort, enable -aU, disable -ls --color\n  -F, --classify             append indicator (one of */=>@|) to entries\n      --file-type            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"
L_.str15:
	.string	"  -g                         like -l, but do not list owner\n"
L_.str16:
	.string	"      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"
L_.str17:
	.string	"  -G, --no-group             in a long listing, don't print group names\n  -h, --human-readable       with -l and/or -s, print human readable sizes\n                               (e.g., 1K 234M 2G)\n      --si                   likewise, but use powers of 1000 not 1024\n"
L_.str18:
	.string	"  -H, --dereference-command-line\n                             follow symbolic links listed on the command line\n      --dereference-command-line-symlink-to-dir\n                             follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"
L_.str19:
	.string	"      --indicator-style=WORD  append indicator with style WORD to entry names:\n                               none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n  -k, --kibibytes            default to 1024-byte blocks for disk usage\n"
L_.str20:
	.string	"  -l                         use a long listing format\n  -L, --dereference          when showing file information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"
L_.str21:
	.string	"  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs\n  -N, --literal              print raw entry names (don't treat e.g. control\n                               characters specially)\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"
L_.str22:
	.string	"  -q, --hide-control-chars   print ? instead of nongraphic characters\n      --show-control-chars   show nongraphic characters as-is (the default,\n                               unless program is 'ls' and output is a terminal)\n  -Q, --quote-name           enclose entry names in double quotes\n      --quoting-style=WORD   use quoting style WORD for entry names:\n                               literal, locale, shell, shell-always, c, escape\n"
L_.str23:
	.string	"  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"
L_.str24:
	.string	"  -S                         sort by file size, largest first\n      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),\n                               time (-t), version (-v), extension (-X)\n      --time=WORD            with -l, show time as WORD instead of default\n                               modification time: atime or access or use (-u);\n                               ctime or status (-c); also use specified time\n                               as sort key if --sort=time (newest first)\n"
L_.str25:
	.string	"      --time-style=STYLE     with -l, show times using style STYLE:\n                               full-iso, long-iso, iso, locale, or +FORMAT;\n                               FORMAT is interpreted like in 'date'; if FORMAT\n                               is FORMAT1<newline>FORMAT2, then FORMAT1 applies\n                               to non-recent files and FORMAT2 to recent files;\n                               if STYLE is prefixed with 'posix-', STYLE\n                               takes effect only outside the POSIX locale\n"
L_.str26:
	.string	"  -t                         sort by modification time, newest first\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"
L_.str27:
	.string	"  -u                         with -lt: sort by, and show, access time;\n                               with -l: show access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"
L_.str28:
	.string	"  -w, --width=COLS           assume screen width instead of current value\n  -x                         list entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"
L_.str29:
	.string	"      --help     display this help and exit\n"
L_.str30:
	.string	"      --version  output version information and exit\n"
L_.str31:
	.string	"\nUsing color to distinguish file types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"
L_.str32:
	.string	"\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"
L_.str33:
	.string	"ls"
L_.str34:
	.string	"dir"
L_.str35:
	.string	"vdir"
L_.str36:
	.string	"["
L_.str37:
	.string	"test invocation"
L_.str38:
	.string	"coreutils"
L_.str39:
	.string	"Multi-call invocation"
L_.str40:
	.string	"sha224sum"
L_.str41:
	.string	"sha2 utilities"
L_.str42:
	.string	"sha256sum"
L_.str43:
	.string	"sha384sum"
L_.str44:
	.string	"sha512sum"
L_.str45:
	.string	"\n%s online help: <%s>\n"
L_.str46:
	.string	"GNU coreutils"
L_.str47:
	.string	"http://www.gnu.org/software/coreutils/"
L_.str48:
	.string	"en_"
L_.str49:
	.string	"Report %s translation bugs to <http://translationproject.org/team/>\n"
L_.str50:
	.string	"Full documentation at: <%s%s>\n"
L_.str51:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
L_.str52:
	.string	" invocation"
L_.str53:
	.string	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\n"
L_.str54:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
L_.str55:
	.string	"Try '%s --help' for more information.\n"
_filetype_letter:
	.string	"?pcdb-lswd"
L_.str56:
	.string	"%*s "
L_.str57:
	.string	"?"
L_.str58:
	.string	"%s %*s "
L_.str59:
	.string	"  "
L_.str60:
	.string	"%*s, %*s "
L_.str61:
	.string	" -> "
L_.str62:
	.string	"%b"
L_.str63:
	.string	"%b %e  %Y"
L_.str64:
	.string	"%b %e %H:%M"
L_.str65:
	.string	"%*lu "
L___func__.sort_files:
	.string	"sort_files"
L_.str67:
	.string	"sort_type != sort_version"
L_.str68:
	.string	"cannot compare file names %s and %s"
L_.str70:
	.string	"cannot access %s"
L_.str73:
	.string	"%s"
L_.str74:
	.string	"%lu"
L_.str75:
	.string	"cannot read symbolic link %s"
L_.str76:
	.string	"cannot open directory %s"
L_.str77:
	.string	"cannot determine device and inode of %s"
L_.str78:
	.string	"%s: not listing already-listed directory"
L_.str79:
	.string	":\n"
L_.str80:
	.string	"reading directory %s"
L_.str81:
	.string	"closing directory %s"
L_.str82:
	.string	"total"
L_.str83:
	.string	"LS_COLORS"
L_.str84:
	.string	"COLORTERM"
L_.str85:
	.string	"?\077"
L_.str86:
	.string	"unrecognized prefix: %s"
L_.str87:
	.string	"unparsable value for LS_COLORS environment variable"
L_.str88:
	.string	"target"
L_.str89:
	.string	"lc"
L_.str90:
	.string	"rc"
L_.str91:
	.string	"ec"
L_.str92:
	.string	"rs"
L_.str93:
	.string	"no"
L_.str94:
	.string	"fi"
L_.str95:
	.string	"di"
L_.str96:
	.string	"ln"
L_.str97:
	.string	"pi"
L_.str98:
	.string	"so"
L_.str99:
	.string	"bd"
L_.str100:
	.string	"cd"
L_.str101:
	.string	"mi"
L_.str102:
	.string	"or"
L_.str103:
	.string	"ex"
L_.str104:
	.string	"do"
L_.str105:
	.string	"su"
L_.str106:
	.string	"sg"
L_.str107:
	.string	"st"
L_.str108:
	.string	"ow"
L_.str109:
	.string	"tw"
L_.str110:
	.string	"ca"
L_.str111:
	.string	"mh"
L_.str112:
	.string	"cl"
L_.str113:
	.string	"TERM"
L_.str114:
	.string	"TERM "
L_.str115:
	.string	"COLUMNS"
L_.str116:
	.string	"ignoring invalid width in environment variable COLUMNS: %s"
L_.str117:
	.string	"TABSIZE"
L_.str118:
	.string	"ignoring invalid tab size in environment variable TABSIZE: %s"
L_.str119:
	.string	"abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
L_.str120:
	.string	"invalid line width"
L_.str121:
	.string	"*~"
L_.str122:
	.string	".*~"
L_.str123:
	.string	"invalid tab size"
L_.str124:
	.string	"--sort"
L_.str125:
	.string	"--time"
L_.str126:
	.string	"--format"
L_.str127:
	.string	"full-iso"
L_.str128:
	.string	"--color"
L_.str129:
	.string	"--indicator-style"
L_.str130:
	.string	"--quoting-style"
L_.str131:
	.string	"Richard M. Stallman"
L_.str132:
	.string	"David MacKenzie"
L_.str133:
	.string	"LS_BLOCK_SIZE"
L_.str134:
	.string	"BLOCK_SIZE"
L_.str135:
	.string	"*=>@|"
L_.str136:
	.string	"TIME_STYLE"
L_.str137:
	.string	"locale"
L_.str138:
	.string	"invalid time style format %s"
L_.str139:
	.string	"time style"
L_.str140:
	.string	"Valid arguments are:\n"
L_.str141:
	.string	"  - [posix-]%s\n"
L_.str142:
	.string	"  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"
L_.str143:
	.string	"%Y-%m-%d %H:%M:%S.%N %z"
L_.str144:
	.string	"%Y-%m-%d %H:%M"
L_.str145:
	.string	"%Y-%m-%d "
L_.str146:
	.string	"%m-%d %H:%M"
L_.str147:
	.string	"error initializing month strings"
L_.str148:
	.string	"long-iso"
L_.str149:
	.string	"iso"
L_.str150:
	.string	"none"
L_.str151:
	.string	"slash"
L_.str152:
	.string	"file-type"
L_.str153:
	.string	"classify"
L_.str154:
	.string	"always"
L_.str155:
	.string	"yes"
L_.str156:
	.string	"force"
L_.str157:
	.string	"never"
L_.str158:
	.string	"auto"
L_.str159:
	.string	"tty"
L_.str160:
	.string	"if-tty"
L_.str161:
	.string	"verbose"
L_.str162:
	.string	"long"
L_.str163:
	.string	"commas"
L_.str164:
	.string	"horizontal"
L_.str165:
	.string	"across"
L_.str166:
	.string	"vertical"
L_.str167:
	.string	"single-column"
L_.str168:
	.string	"atime"
L_.str169:
	.string	"access"
L_.str170:
	.string	"use"
L_.str171:
	.string	"ctime"
L_.str172:
	.string	"status"
L_.str173:
	.string	"time"
L_.str174:
	.string	"size"
L_.str175:
	.string	"extension"
L_.str176:
	.string	"version"
L_.str177:
	.string	"all"
L_.str178:
	.string	"escape"
L_.str179:
	.string	"directory"
L_.str180:
	.string	"dired"
L_.str181:
	.string	"full-time"
L_.str182:
	.string	"group-directories-first"
L_.str183:
	.string	"human-readable"
L_.str184:
	.string	"inode"
L_.str185:
	.string	"kibibytes"
L_.str186:
	.string	"numeric-uid-gid"
L_.str187:
	.string	"no-group"
L_.str188:
	.string	"hide-control-chars"
L_.str189:
	.string	"reverse"
L_.str190:
	.string	"width"
L_.str191:
	.string	"almost-all"
L_.str192:
	.string	"ignore-backups"
L_.str193:
	.string	"si"
L_.str194:
	.string	"dereference-command-line"
L_.str195:
	.string	"dereference-command-line-symlink-to-dir"
L_.str196:
	.string	"hide"
L_.str197:
	.string	"ignore"
L_.str198:
	.string	"indicator-style"
L_.str199:
	.string	"dereference"
L_.str200:
	.string	"literal"
L_.str201:
	.string	"quote-name"
L_.str202:
	.string	"quoting-style"
L_.str203:
	.string	"recursive"
L_.str204:
	.string	"format"
L_.str205:
	.string	"show-control-chars"
L_.str206:
	.string	"sort"
L_.str207:
	.string	"tabsize"
L_.str208:
	.string	"time-style"
L_.str209:
	.string	"color"
L_.str210:
	.string	"block-size"
L_.str211:
	.string	"context"
L_.str212:
	.string	"author"
L_.str213:
	.string	"help"
L_.str214:
	.string	"QUOTING_STYLE"
L_.str215:
	.string	"ignoring invalid value of environment variable QUOTING_STYLE: %s"
L_.str216:
	.string	" %lu"
L_.str217:
	.string	"m"
L_.str218:
	.string	"0"
L_.str219:
	.string	"01;34"
L_.str220:
	.string	"01;36"
L_.str221:
	.string	"33"
L_.str222:
	.string	"01;35"
L_.str223:
	.string	"01;33"
L_.str224:
	.string	"01;32"
L_.str225:
	.string	"37;41"
L_.str226:
	.string	"30;43"
L_.str227:
	.string	"37;44"
L_.str228:
	.string	"34;42"
L_.str229:
	.string	"30;42"
L_.str230:
	.string	"30;41"
L_.str231:
	.string	"\033[K"
L___func__.dev_ino_pop:
	.string	"dev_ino_pop"
L_.str232:
	.string	"dev_ino_size <= obstack_object_size (&dev_ino_obstack)"
L_.str233:
	.string	"00"
# ----------------------
	.section       __DATA,__data,regular
	.align 2
_color_indicator:
	.long	2
	.long	0
	.quad	L_.str4
	.long	1
	.long	0
	.quad	L_.str217
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.quad	L_.str218
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.quad	L_.str219
	.long	5
	.long	0
	.quad	L_.str220
	.long	2
	.long	0
	.quad	L_.str221
	.long	5
	.long	0
	.quad	L_.str222
	.long	5
	.long	0
	.quad	L_.str223
	.long	5
	.long	0
	.quad	L_.str223
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.quad	L_.str224
	.long	5
	.long	0
	.quad	L_.str222
	.long	5
	.long	0
	.quad	L_.str225
	.long	5
	.long	0
	.quad	L_.str226
	.long	5
	.long	0
	.quad	L_.str227
	.long	5
	.long	0
	.quad	L_.str228
	.long	5
	.long	0
	.quad	L_.str229
	.long	5
	.long	0
	.quad	L_.str230
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.quad	L_.str231
	.align 2
_file_output_block_size:
	.long	1
	.long	0
	.long	0
	.long	0
	.align 4
_long_time_format:
	.quad	L_.str63
	.quad	L_.str64
	.align 2
_long_time_expected_width.width:
	.long	-1
_UNKNOWN_SECURITY_CONTEXT:
	.value	63
# ----------------------
	.section       __DATA,__const,regular
	.align 4
_emit_ancillary_info.infomap:
	.quad	L_.str36
	.quad	L_.str37
	.quad	L_.str38
	.quad	L_.str39
	.quad	L_.str40
	.quad	L_.str41
	.quad	L_.str42
	.quad	L_.str41
	.quad	L_.str43
	.quad	L_.str41
	.quad	L_.str44
	.quad	L_.str41
	.zero	16
	.align 4
_sort_functions:
	.quad	_xstrcoll_name
	.quad	_xstrcoll_df_name
	.quad	_rev_xstrcoll_name
	.quad	_rev_xstrcoll_df_name
	.quad	_strcmp_name
	.quad	_strcmp_df_name
	.quad	_rev_strcmp_name
	.quad	_rev_strcmp_df_name
	.quad	_xstrcoll_extension
	.quad	_xstrcoll_df_extension
	.quad	_rev_xstrcoll_extension
	.quad	_rev_xstrcoll_df_extension
	.quad	_strcmp_extension
	.quad	_strcmp_df_extension
	.quad	_rev_strcmp_extension
	.quad	_rev_strcmp_df_extension
	.quad	_xstrcoll_size
	.quad	_xstrcoll_df_size
	.quad	_rev_xstrcoll_size
	.quad	_rev_xstrcoll_df_size
	.quad	_strcmp_size
	.quad	_strcmp_df_size
	.quad	_rev_strcmp_size
	.quad	_rev_strcmp_df_size
	.quad	_xstrcoll_version
	.quad	_xstrcoll_df_version
	.quad	_rev_xstrcoll_version
	.quad	_rev_xstrcoll_df_version
	.zero	32
	.quad	_xstrcoll_mtime
	.quad	_xstrcoll_df_mtime
	.quad	_rev_xstrcoll_mtime
	.quad	_rev_xstrcoll_df_mtime
	.quad	_strcmp_mtime
	.quad	_strcmp_df_mtime
	.quad	_rev_strcmp_mtime
	.quad	_rev_strcmp_df_mtime
	.quad	_xstrcoll_ctime
	.quad	_xstrcoll_df_ctime
	.quad	_rev_xstrcoll_ctime
	.quad	_rev_xstrcoll_df_ctime
	.quad	_strcmp_ctime
	.quad	_strcmp_df_ctime
	.quad	_rev_strcmp_ctime
	.quad	_rev_strcmp_df_ctime
	.quad	_xstrcoll_atime
	.quad	_xstrcoll_df_atime
	.quad	_rev_xstrcoll_atime
	.quad	_rev_xstrcoll_df_atime
	.quad	_strcmp_atime
	.quad	_strcmp_df_atime
	.quad	_rev_strcmp_atime
	.quad	_rev_strcmp_df_atime
	.align 4
_indicator_name:
	.quad	L_.str89
	.quad	L_.str90
	.quad	L_.str91
	.quad	L_.str92
	.quad	L_.str93
	.quad	L_.str94
	.quad	L_.str95
	.quad	L_.str96
	.quad	L_.str97
	.quad	L_.str98
	.quad	L_.str99
	.quad	L_.str100
	.quad	L_.str101
	.quad	L_.str102
	.quad	L_.str103
	.quad	L_.str104
	.quad	L_.str105
	.quad	L_.str106
	.quad	L_.str107
	.quad	L_.str108
	.quad	L_.str109
	.quad	L_.str110
	.quad	L_.str111
	.quad	L_.str112
	.zero	16
	.align 4
_sort_args:
	.quad	L_.str150
	.quad	L_.str173
	.quad	L_.str174
	.quad	L_.str175
	.quad	L_.str176
	.zero	8
	.align 4
_time_args:
	.quad	L_.str168
	.quad	L_.str169
	.quad	L_.str170
	.quad	L_.str171
	.quad	L_.str172
	.zero	8
	.align 4
_format_args:
	.quad	L_.str161
	.quad	L_.str162
	.quad	L_.str163
	.quad	L_.str164
	.quad	L_.str165
	.quad	L_.str166
	.quad	L_.str167
	.zero	8
	.align 4
_color_args:
	.quad	L_.str154
	.quad	L_.str155
	.quad	L_.str156
	.quad	L_.str157
	.quad	L_.str93
	.quad	L_.str150
	.quad	L_.str158
	.quad	L_.str159
	.quad	L_.str160
	.zero	8
	.align 4
_indicator_style_args:
	.quad	L_.str150
	.quad	L_.str151
	.quad	L_.str152
	.quad	L_.str153
	.zero	16
	.align 4
_time_style_args:
	.quad	L_.str127
	.quad	L_.str148
	.quad	L_.str149
	.quad	L_.str137
	.zero	16
	.align 4
_long_options:
	.quad	L_.str177
	.long	0
	.long	0
	.long	0
	.long	0
	.long	97
	.long	0
	.quad	L_.str178
	.long	0
	.long	0
	.long	0
	.long	0
	.long	98
	.long	0
	.quad	L_.str179
	.long	0
	.long	0
	.long	0
	.long	0
	.long	100
	.long	0
	.quad	L_.str180
	.long	0
	.long	0
	.long	0
	.long	0
	.long	68
	.long	0
	.quad	L_.str181
	.long	0
	.long	0
	.long	0
	.long	0
	.long	134
	.long	0
	.quad	L_.str182
	.long	0
	.long	0
	.long	0
	.long	0
	.long	135
	.long	0
	.quad	L_.str183
	.long	0
	.long	0
	.long	0
	.long	0
	.long	104
	.long	0
	.quad	L_.str184
	.long	0
	.long	0
	.long	0
	.long	0
	.long	105
	.long	0
	.quad	L_.str185
	.long	0
	.long	0
	.long	0
	.long	0
	.long	107
	.long	0
	.quad	L_.str186
	.long	0
	.long	0
	.long	0
	.long	0
	.long	110
	.long	0
	.quad	L_.str187
	.long	0
	.long	0
	.long	0
	.long	0
	.long	71
	.long	0
	.quad	L_.str188
	.long	0
	.long	0
	.long	0
	.long	0
	.long	113
	.long	0
	.quad	L_.str189
	.long	0
	.long	0
	.long	0
	.long	0
	.long	114
	.long	0
	.quad	L_.str174
	.long	0
	.long	0
	.long	0
	.long	0
	.long	115
	.long	0
	.quad	L_.str190
	.long	1
	.long	0
	.long	0
	.long	0
	.long	119
	.long	0
	.quad	L_.str191
	.long	0
	.long	0
	.long	0
	.long	0
	.long	65
	.long	0
	.quad	L_.str192
	.long	0
	.long	0
	.long	0
	.long	0
	.long	66
	.long	0
	.quad	L_.str153
	.long	0
	.long	0
	.long	0
	.long	0
	.long	70
	.long	0
	.quad	L_.str152
	.long	0
	.long	0
	.long	0
	.long	0
	.long	132
	.long	0
	.quad	L_.str193
	.long	0
	.long	0
	.long	0
	.long	0
	.long	140
	.long	0
	.quad	L_.str194
	.long	0
	.long	0
	.long	0
	.long	0
	.long	72
	.long	0
	.quad	L_.str195
	.long	0
	.long	0
	.long	0
	.long	0
	.long	131
	.long	0
	.quad	L_.str196
	.long	1
	.long	0
	.long	0
	.long	0
	.long	136
	.long	0
	.quad	L_.str197
	.long	1
	.long	0
	.long	0
	.long	0
	.long	73
	.long	0
	.quad	L_.str198
	.long	1
	.long	0
	.long	0
	.long	0
	.long	137
	.long	0
	.quad	L_.str199
	.long	0
	.long	0
	.long	0
	.long	0
	.long	76
	.long	0
	.quad	L_.str200
	.long	0
	.long	0
	.long	0
	.long	0
	.long	78
	.long	0
	.quad	L_.str201
	.long	0
	.long	0
	.long	0
	.long	0
	.long	81
	.long	0
	.quad	L_.str202
	.long	1
	.long	0
	.long	0
	.long	0
	.long	138
	.long	0
	.quad	L_.str203
	.long	0
	.long	0
	.long	0
	.long	0
	.long	82
	.long	0
	.quad	L_.str204
	.long	1
	.long	0
	.long	0
	.long	0
	.long	133
	.long	0
	.quad	L_.str205
	.long	0
	.long	0
	.long	0
	.long	0
	.long	139
	.long	0
	.quad	L_.str206
	.long	1
	.long	0
	.long	0
	.long	0
	.long	141
	.long	0
	.quad	L_.str207
	.long	1
	.long	0
	.long	0
	.long	0
	.long	84
	.long	0
	.quad	L_.str173
	.long	1
	.long	0
	.long	0
	.long	0
	.long	142
	.long	0
	.quad	L_.str208
	.long	1
	.long	0
	.long	0
	.long	0
	.long	143
	.long	0
	.quad	L_.str209
	.long	2
	.long	0
	.long	0
	.long	0
	.long	130
	.long	0
	.quad	L_.str210
	.long	1
	.long	0
	.long	0
	.long	0
	.long	129
	.long	0
	.quad	L_.str211
	.long	0
	.long	0
	.long	0
	.long	0
	.long	90
	.long	0
	.quad	L_.str212
	.long	0
	.long	0
	.long	0
	.long	0
	.long	128
	.long	0
	.quad	L_.str213
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-130
	.long	0
	.quad	L_.str176
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
# ----------------------
.zerofill __DATA,__bss,_exit_status,4,2
# ----------------------
.zerofill __DATA,__bss,_print_dir_name,4,2
# ----------------------
.zerofill __DATA,__bss,_pending_dirs,8,3
# ----------------------
.zerofill __DATA,__bss,_current_time,16,4
# ----------------------
.zerofill __DATA,__bss,_print_with_color,1,0
# ----------------------
.zerofill __DATA,__bss,_color_symlink_as_referent,3,0
# ----------------------
.zerofill __DATA,__bss,_format,4,2
# ----------------------
.zerofill __DATA,__bss,_check_symlink_color,4,2
# ----------------------
.zerofill __DATA,__bss,_caught_signals,4,2
# ----------------------
.zerofill __DATA,__bss,_dereference,4,2
# ----------------------
.zerofill __DATA,__bss,_immediate_dirs,4,2
# ----------------------
.zerofill __DATA,__bss,_indicator_style,4,2
# ----------------------
.zerofill __DATA,__bss,_recursive,4,2
# ----------------------
.zerofill __DATA,__bss,_active_dir_set,8,3
# ----------------------
.zerofill __DATA,__bss,_dev_ino_obstack,88,3
# ----------------------
.zerofill __DATA,__bss,_sort_type,4,2
# ----------------------
.zerofill __DATA,__bss,_print_scontext,1,0
# ----------------------
.zerofill __DATA,__bss,_print_block_size,1,0
# ----------------------
.zerofill __DATA,__bss,_format_needs_stat,1,0
# ----------------------
.zerofill __DATA,__bss,_directories_first,1,0
# ----------------------
.zerofill __DATA,__bss,_format_needs_type,1,0
# ----------------------
.zerofill __DATA,__bss,_dired,7,0
# ----------------------
.zerofill __DATA,__bss,_dired_obstack,88,3
# ----------------------
.zerofill __DATA,__bss,_subdired_obstack,88,3
# ----------------------
.zerofill __DATA,__bss,_cwd_n_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_cwd_file,8,3
# ----------------------
.zerofill __DATA,__bss,_cwd_n_used,8,3
# ----------------------
.zerofill __DATA,__bss,_dired_pos,8,3
# ----------------------
.zerofill __DATA,__bss,_used_color,4,2
# ----------------------
.zerofill __DATA,__bss,_stop_signal_count,4,2
# ----------------------
.zerofill __DATA,__bss,_interrupt_signal,8,3
# ----------------------
.zerofill __DATA,__bss,_filename_quoting_options,8,3
# ----------------------
.zerofill __DATA,__bss,_sorted_file,8,3
# ----------------------
.zerofill __DATA,__bss,_any_has_acl,4,2
# ----------------------
.zerofill __DATA,__bss,_time_type,4,2
# ----------------------
.zerofill __DATA,__bss,_print_inode,4,2
# ----------------------
.zerofill __DATA,__bss,_inode_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_human_output_opts,8,3
# ----------------------
.zerofill __DATA,__bss,_output_block_size,8,3
# ----------------------
.zerofill __DATA,__bss,_block_size_width,4,2
# ----------------------
.zerofill __DATA,__bss,_nlink_width,4,2
# ----------------------
.zerofill __DATA,__bss,_print_owner,1,0
# ----------------------
.zerofill __DATA,__bss,_print_group,1,0
# ----------------------
.zerofill __DATA,__bss,_print_author,2,1
# ----------------------
.zerofill __DATA,__bss,_owner_width,4,2
# ----------------------
.zerofill __DATA,__bss,_group_width,4,2
# ----------------------
.zerofill __DATA,__bss,_author_width,4,2
# ----------------------
.zerofill __DATA,__bss,_scontext_width,4,2
# ----------------------
.zerofill __DATA,__bss,_file_size_width,4,2
# ----------------------
.zerofill __DATA,__bss,_major_device_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_minor_device_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_file_human_output_opts,8,3
# ----------------------
.zerofill __DATA,__bss,_line_length,8,3
# ----------------------
.zerofill __DATA,__bss,_qmark_funny_chars,8,3
# ----------------------
.zerofill __DATA,__bss,_color_ext_list,8,3
# ----------------------
.zerofill __DATA,__bss,_required_mon_width,8,3
# ----------------------
.zerofill __DATA,__bss,_abmon,732,2
# ----------------------
.zerofill __DATA,__bss,_numeric_ids,4,2
# ----------------------
.zerofill __DATA,__bss,_column_info,8,3
# ----------------------
.zerofill __DATA,__bss,_tabsize,8,3
# ----------------------
.zerofill __DATA,__bss,_max_idx,8,3
# ----------------------
.zerofill __DATA,__bss,_init_column_info.column_info_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_sorted_file_alloc,16,4
# ----------------------
.zerofill __DATA,__bss,_failed_strcoll,148,2
# ----------------------
.zerofill __DATA,__bss,_sort_reverse,4,2
# ----------------------
.zerofill __DATA,__bss,_file_has_acl_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_getfilecon_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_has_capability_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_print_dir.first,4,2
# ----------------------
.zerofill __DATA,__bss,_dirname_quoting_options,8,3
# ----------------------
.zerofill __DATA,__bss,_ignore_mode,8,3
# ----------------------
.zerofill __DATA,__bss,_hide_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_ignore_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_color_buf,8,3
# ----------------------

.subsections_via_symbols
