	.macosx_version_min 10, 13
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
	subq      $344, %rsp
	movq      %rsi, -328(%rbp)
	movl      %edi, -344(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rsi), %rdi
	call      _set_program_name
L00000037:
	leaq      LC0000A4A8(%rip), %rsi
	xorl      %edi, %edi
	call      _setlocale
L00000045:
	movq      _exit_failure@GOTPCREL(%rip), %rax
	movl      $2, (%rax)
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
L0000005E:
	movl      $0, _exit_status(%rip)
	movb      $1, _print_dir_name(%rip)
	movq      $0, _pending_dirs(%rip)
	movdqa    LC00009130(%rip), %xmm0
	movdqa    %xmm0, _current_time(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	je        L000000B9
L0000009F:
	cmpl      $3, %eax
	je        L000000DE
L000000A4:
	cmpl      $2, %eax
	jne       L000016FE
L000000AD:
	movl      $2, _format(%rip)
	jmp       L000000E8
L000000B9:
	movl      $1, %edi
	call      _isatty
L000000C3:
	testl     %eax, %eax
	je        L00000C3D
L000000CB:
	movl      $2, _format(%rip)
	movb      $1, _qmark_funny_chars(%rip)
	jmp       L000000F4
L000000DE:
	movl      $0, _format(%rip)
L000000E8:
	xorl      %edi, %edi
	movl      $5, %esi
	call      _set_quoting_style
L000000F4:
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
	leaq      LC0000C3DD(%rip), %rdi
	call      _getenv
L00000179:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        L000001CF
L00000181:
	movq      _quoting_style_args@GOTPCREL(%rip), %rsi
	movq      _quoting_style_vals@GOTPCREL(%rip), %r15
	movl      $4, %ecx
	movq      %rbx, %rdi
	movq      %r15, %rdx
	call      _argmatch
L0000019F:
	testl     %eax, %eax
	js        L000001B2
L000001A3:
	cltq      
	movl      (%r15,%rax,4), %esi
	xorl      %edi, %edi
	call      _set_quoting_style
L000001B0:
	jmp       L000001CF
L000001B2:
	movq      %rbx, %rdi
	call      _quotearg
L000001BA:
	movq      %rax, %rcx
	leaq      LC0000C3EB(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L000001CF:
	movq      $80, _line_length(%rip)
	leaq      LC0000C16B(%rip), %rdi
	call      _getenv
L000001E6:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        L0000023F
L000001EE:
	cmpb      $0, (%rbx)
	je        L0000023F
L000001F3:
	leaq      -320(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
L00000209:
	testl     %eax, %eax
	jne       L00000222
L0000020D:
	movq      -320(%rbp), %rax
	testq     %rax, %rax
	je        L00000222
L00000219:
	movq      %rax, _line_length(%rip)
	jmp       L0000023F
L00000222:
	movq      %rbx, %rdi
	call      _quotearg
L0000022A:
	movq      %rax, %rcx
	leaq      LC0000C173(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L0000023F:
	leaq      -320(%rbp), %rdx
	movl      $1, %edi
	movl      $1074295912, %esi
	xorl      %eax, %eax
	call      _ioctl
L00000257:
	cmpl      $-1, %eax
	je        L0000026F
L0000025C:
	movzwl    -318(%rbp), %eax
	testq     %rax, %rax
	je        L0000026F
L00000268:
	movq      %rax, _line_length(%rip)
L0000026F:
	leaq      LC0000C1AE(%rip), %rdi
	call      _getenv
L0000027B:
	movq      %rax, %rbx
	movq      $8, _tabsize(%rip)
	testq     %rbx, %rbx
	je        L000002D5
L0000028E:
	leaq      -320(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
L000002A4:
	testl     %eax, %eax
	je        L000002C7
L000002A8:
	movq      %rbx, %rdi
	call      _quotearg
L000002B0:
	movq      %rax, %rcx
	leaq      LC0000C1B6(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L000002C5:
	jmp       L000002D5
L000002C7:
	movq      -320(%rbp), %rax
	movq      %rax, _tabsize(%rip)
L000002D5:
	xorl      %r12d, %r12d
	leaq      -320(%rbp), %r15
	leaq      L0000246C(%rip), %r13
	xorl      %r14d, %r14d
	xorl      %eax, %eax
	movq      %rax, -352(%rbp)
	movq      -328(%rbp), %rbx
	jmp       L00000303
L000002FB:
	.align 4, 0x90
L00000300:
	movb      %cl, %r12b
L00000303:
	movl      -344(%rbp), %eax
	movl      $-1, -320(%rbp)
	movl      %eax, %edi
	movq      %rbx, %rsi
	leaq      LC0000C1F4(%rip), %rdx
	leaq      _long_options(%rip), %rcx
	movq      %r15, %r8
	call      _rpl_getopt_long
L0000032E:
	addl      $131, %eax
	cmpl      $274, %eax
	ja        L000016EF
L0000033E:
	movb      $1, %cl
	movslq    (%r13,%rax,4), %rax
	addq      %r13, %rax
	jmp       *%rax
L0000034A:
	cmpl      $0, _format(%rip)
	je        L000009D0
L00000357:
	movl      $1, _format(%rip)
	jmp       L000009D0
L00000366:
	movl      $4, _sort_type(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L00000378:
	movq      _rpl_optarg@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	call      _human_options
L00000395:
	testl     %eax, %eax
	jne       L00001703
L0000039D:
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
	movl      %r12d, %ecx
	movq      -328(%rbp), %rbx
	jmp       L00000303
L000003C6:
	cmpl      $0, _ignore_mode(%rip)
	jne       L000009D0
L000003D3:
	movl      $1, _ignore_mode(%rip)
	jmp       L000009D0
L000003E2:
	movl      $16, %edi
	call      _xmalloc
L000003EC:
	leaq      LC0000C233(%rip), %rcx
	movq      %rcx, (%rax)
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	movl      $16, %edi
	call      _xmalloc
L00000412:
	leaq      LC0000C236(%rip), %rcx
	movq      %rcx, (%rax)
	jmp       L00000475
L0000041E:
	movl      $2, _format(%rip)
	jmp       L000009D0
L0000042D:
	movb      $1, _dired(%rip)
	jmp       L000009D0
L00000439:
	movl      $3, _indicator_style(%rip)
	jmp       L000009D0
L00000448:
	movl      $3, _dereference(%rip)
	jmp       L000009D0
L00000457:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movl      $16, %edi
	call      _xmalloc
L0000046B:
	movq      %rbx, (%rax)
	movq      -328(%rbp), %rbx
L00000475:
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	jmp       L000009D0
L0000048C:
	movl      $5, _dereference(%rip)
	jmp       L000009D0
L0000049B:
	xorl      %edi, %edi
	xorl      %esi, %esi
	call      _set_quoting_style
L000004A4:
	jmp       L000009D0
L000004A9:
	xorl      %edi, %edi
	movl      $3, %esi
	call      _set_quoting_style
L000004B5:
	jmp       L000009D0
L000004BA:
	movb      $1, _recursive(%rip)
	jmp       L000009D0
L000004C6:
	movl      $2, _sort_type(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L000004D8:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      LC0000A4A8(%rip), %r8
	leaq      LC0000C23A(%rip), %r9
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
L00000507:
	movq      %rax, _tabsize(%rip)
	jmp       L000009D0
L00000513:
	movl      $-1, _sort_type(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L00000525:
	movl      $1, _sort_type(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L00000537:
	movb      $1, _print_scontext(%rip)
	jmp       L000009D0
L00000543:
	movl      $2, _ignore_mode(%rip)
	jmp       L000009D0
L00000552:
	xorl      %edi, %edi
	movl      $5, %esi
	call      _set_quoting_style
L0000055E:
	jmp       L000009D0
L00000563:
	movl      $1, _time_type(%rip)
	jmp       L000009D0
L00000572:
	movb      $1, _immediate_dirs(%rip)
	jmp       L000009D0
L0000057E:
	movl      $2, _ignore_mode(%rip)
	movl      $-1, _sort_type(%rip)
	cmpl      $0, _format(%rip)
	jne       L000005BD
L0000059B:
	movl      $1, %ebx
	movl      $1, %edi
	call      _isatty
L000005AA:
	cmpl      $1, %eax
	sbbl      $-1, %ebx
	movl      %ebx, _format(%rip)
	movq      -328(%rbp), %rbx
L000005BD:
	movb      $0, _print_block_size(%rip)
	movb      $0, _print_with_color(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L000005D3:
	movl      $0, _format(%rip)
	movb      $1, _print_owner(%rip)
	jmp       L000009D0
L000005E9:
	movl      $176, _human_output_opts(%rip)
	movl      $176, _file_human_output_opts(%rip)
	jmp       L00000949
L00000602:
	movl      $4, _format(%rip)
	jmp       L000009D0
L00000611:
	movb      $1, _numeric_ids(%rip)
L00000618:
	movl      $0, _format(%rip)
	jmp       L000009D0
L00000627:
	movl      $0, _format(%rip)
L00000631:
	movb      $1, _print_group(%rip)
	jmp       L000009D0
L0000063D:
	movl      $1, _indicator_style(%rip)
	jmp       L000009D0
L0000064C:
	movb      $1, _qmark_funny_chars(%rip)
	jmp       L000009D0
L00000658:
	movb      $1, _sort_reverse(%rip)
	jmp       L000009D0
L00000664:
	movl      $2, _time_type(%rip)
	jmp       L000009D0
L00000673:
	movl      $3, _sort_type(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L00000685:
	movl      $3, _format(%rip)
	jmp       L000009D0
L00000694:
	movb      $1, _print_author(%rip)
	jmp       L000009D0
L000006A0:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        L000009AA
L000006B3:
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      LC0000C26B(%rip), %rdi
	leaq      _color_args(%rip), %rdx
	leaq      _color_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L000006E0:
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	cmpl      $1, %eax
	je        L000009AA
L000006F3:
	cmpl      $2, %eax
	jne       L000009BE
L000006FC:
	movl      $1, %edi
	call      _isatty
L00000706:
	testl     %eax, %eax
	setne     _print_with_color(%rip)
	jne       L000009B1
L00000715:
	jmp       L000009D0
L0000071A:
	movl      $4, _dereference(%rip)
	jmp       L000009D0
L00000729:
	movl      $2, _indicator_style(%rip)
	jmp       L000009D0
L00000738:
	movl      $16, %edi
	call      _xmalloc
L00000742:
	movq      _rpl_optarg@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	movq      %rcx, (%rax)
	movq      _hide_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _hide_patterns(%rip)
	jmp       L000009D0
L00000766:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      LC0000C273(%rip), %rdi
	leaq      _indicator_style_args(%rip), %rdx
	leaq      _indicator_style_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L0000079D:
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	movl      %eax, _indicator_style(%rip)
	jmp       L000009D0
L000007B2:
	movb      $0, _qmark_funny_chars(%rip)
	jmp       L000009D0
L000007BE:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      LC0000C24B(%rip), %rdi
	leaq      _sort_args(%rip), %rdx
	leaq      _sort_types(%rip), %r14
	movl      $4, %r8d
	movq      %r14, %rcx
	call      ___xargmatch_internal
L000007F5:
	movl      (%r14,%rax,4), %eax
	movl      %eax, _sort_type(%rip)
	movb      $1, %r14b
	jmp       L000009D0
L00000807:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -352(%rbp)
	jmp       L000009D0
L0000081D:
	movb      $1, _print_inode(%rip)
	jmp       L000009D0
L00000829:
	movb      $1, _print_block_size(%rip)
	jmp       L000009D0
L00000835:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      LC0000A4A8(%rip), %r8
	leaq      LC0000C220(%rip), %r9
	xorl      %esi, %esi
	movl      $1, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
L00000867:
	movq      %rax, _line_length(%rip)
	jmp       L000009D0
L00000873:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      LC0000C259(%rip), %rdi
	leaq      _format_args(%rip), %rdx
	leaq      _format_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L000008AA:
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	movl      %eax, _format(%rip)
	jmp       L000009D0
L000008BF:
	movl      $0, _format(%rip)
	leaq      LC0000C262(%rip), %rax
	movq      %rax, -352(%rbp)
	jmp       L000009D0
L000008DC:
	movb      $1, _directories_first(%rip)
	jmp       L000009D0
L000008E8:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      LC0000C285(%rip), %rdi
	movq      _quoting_style_args@GOTPCREL(%rip), %rdx
	movq      _quoting_style_vals@GOTPCREL(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L0000091F:
	movl      (%rbx,%rax,4), %esi
	movq      -328(%rbp), %rbx
	xorl      %edi, %edi
	call      _set_quoting_style
L00000930:
	jmp       L000009D0
L00000935:
	movl      $144, _human_output_opts(%rip)
	movl      $144, _file_human_output_opts(%rip)
L00000949:
	movq      $1, _output_block_size(%rip)
	movq      $1, _file_output_block_size(%rip)
	jmp       L000009D0
L00000961:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      LC0000C252(%rip), %rdi
	leaq      _time_args(%rip), %rdx
	leaq      _time_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
L00000998:
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	movl      %eax, _time_type(%rip)
	jmp       L000009D0
L000009AA:
	movb      $1, _print_with_color(%rip)
L000009B1:
	movq      $0, _tabsize(%rip)
	jmp       L000009D0
L000009BE:
	movb      $0, _print_with_color(%rip)
	.align 4, 0x90
L000009D0:
	movl      %r12d, %ecx
	jmp       L00000300
L000009D8:
	cmpq      $0, _output_block_size(%rip)
	jne       L00000A52
L000009E2:
	leaq      LC0000C2C7(%rip), %rdi
	call      _getenv
L000009EE:
	movq      %rax, %rbx
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	movq      %rbx, %rdi
	call      _human_options
L00000A07:
	testq     %rbx, %rbx
	jne       L00000A1D
L00000A0C:
	leaq      LC0000C2D5(%rip), %rdi
	call      _getenv
L00000A18:
	testq     %rax, %rax
	je        L00000A37
L00000A1D:
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
L00000A37:
	testb     $1, %r12b
	je        L00000A52
L00000A3D:
	movl      $0, _human_output_opts(%rip)
	movq      $1024, _output_block_size(%rip)
L00000A52:
	movq      _line_length(%rip), %rax
	cmpq      $3, %rax
	jae       L00000A66
L00000A5F:
	movl      $1, %edx
	jmp       L00000A76
L00000A66:
	movq      $-6148914691236517205, %rcx
	mulq      %rcx
	shrq      $1, %rdx
L00000A76:
	movq      %rdx, _max_idx(%rip)
	xorl      %edi, %edi
	call      _clone_quoting_options
L00000A84:
	movq      %rax, _filename_quoting_options(%rip)
	movq      %rax, %rdi
	call      _get_quoting_style
L00000A93:
	cmpl      $5, %eax
	jne       L00000AAE
L00000A98:
	movq      _filename_quoting_options(%rip), %rdi
	movl      $32, %esi
	movl      $1, %edx
	call      _set_char_quoting
L00000AAE:
	movl      _indicator_style(%rip), %ecx
	cmpl      $2, %ecx
	jb        L00000AEE
L00000AB9:
	addl      $-2, %ecx
	cmpl      $5, %ecx
	je        L00000AEE
L00000AC1:
	leaq      LC0000C2E0(%rip), %rdx
	movb      (%rcx,%rdx), %al
	leaq      1(%rcx,%rdx), %rbx
L00000AD0:
	movq      _filename_quoting_options(%rip), %rdi
	movsbl    %al, %esi
	movl      $1, %edx
	call      _set_char_quoting
L00000AE4:
	movzbl    (%rbx), %eax
	incq      %rbx
	testb     %al, %al
	jne       L00000AD0
L00000AEE:
	xorl      %edi, %edi
	call      _clone_quoting_options
L00000AF5:
	movq      %rax, _dirname_quoting_options(%rip)
	movl      $58, %esi
	movl      $1, %edx
	movq      %rax, %rdi
	call      _set_char_quoting
L00000B0E:
	movl      _format(%rip), %eax
	cmpb      $1, _dired(%rip)
	jne       L00000B28
L00000B1D:
	testl     %eax, %eax
	je        L00000B28
L00000B21:
	movb      $0, _dired(%rip)
L00000B28:
	movl      _time_type(%rip), %ecx
	decl      %ecx
	cmpl      $1, %ecx
	ja        L00000B4E
L00000B35:
	testb     $1, %r14b
	jne       L00000B4E
L00000B3B:
	testl     %eax, %eax
	je        L00000B4E
L00000B3F:
	movl      $4, _sort_type(%rip)
	jmp       L00000DD3
L00000B4E:
	testl     %eax, %eax
	movq      -352(%rbp), %rbx
	jne       L00000DD3
L00000B5D:
	testq     %rbx, %rbx
	jne       L00000B7C
L00000B62:
	leaq      LC0000C2E6(%rip), %rdi
	call      _getenv
L00000B6E:
	testq     %rax, %rax
	leaq      LC0000C2F1(%rip), %rbx
	cmovne    %rax, %rbx
L00000B7C:
	leaq      _decode_switches.posix_prefix(%rip), %rsi
	movl      $6, %edx
	movq      %rbx, %rdi
	call      _strncmp
L00000B90:
	testl     %eax, %eax
	jne       L00000BCA
L00000B94:
	leaq      _decode_switches.posix_prefix(%rip), %r14
	.align 4, 0x90
L00000BA0:
	movl      $5, %edi
	call      _hard_locale
L00000BAA:
	testb     %al, %al
	je        L00000DD3
L00000BB2:
	addq      $6, %rbx
	movl      $6, %edx
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _strncmp
L00000BC6:
	testl     %eax, %eax
	je        L00000BA0
L00000BCA:
	cmpb      $43, (%rbx)
	jne       L00000C53
L00000BD3:
	incq      %rbx
	movl      $10, %esi
	movq      %rbx, %rdi
	call      _strchr
L00000BE3:
	movq      %rax, %r15
	testq     %r15, %r15
	movq      %rbx, %r14
	je        L00000C2A
L00000BEE:
	movq      %r15, %r14
	incq      %r14
	movl      $10, %esi
	movq      %r14, %rdi
	call      _strchr
L00000C01:
	testq     %rax, %rax
	je        L00000C26
L00000C06:
	movq      %rbx, %rdi
	call      _quote
L00000C0E:
	movq      %rax, %rcx
	leaq      LC0000C2F8(%rip), %rdx
	movl      $2, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000C26:
	movb      $0, (%r15)
L00000C2A:
	movq      %rbx, _long_time_format(%rip)
	movq      %r14, _long_time_format+8(%rip)
	jmp       L00000CE1
L00000C3D:
	movl      $1, _format(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	jmp       L000000F4
L00000C53:
	leaq      _time_style_args(%rip), %rsi
	leaq      _time_style_types(%rip), %rdx
	movl      $4, %ecx
	movq      %rbx, %rdi
	call      _argmatch
L00000C6E:
	testq     %rax, %rax
	js        L00001721
L00000C77:
	cmpq      $3, %rax
	ja        L00000CE1
L00000C7D:
	leaq      L000028B8(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00000C8D:
	leaq      LC0000C37C(%rip), %rax
	jmp       L00000C9D
L00000C96:
	leaq      LC0000C394(%rip), %rax
L00000C9D:
	movd      %rax, %xmm0
	pshufd    $68, %xmm0, %xmm0
	movdqa    %xmm0, _long_time_format(%rip)
	jmp       L00000CE1
L00000CB1:
	leaq      LC0000C3AD(%rip), %rax
	movd      %rax, %xmm0
	leaq      LC0000C3A3(%rip), %rax
	movd      %rax, %xmm1
	punpcklqdq %xmm0, %xmm1
	movdqa    %xmm1, _long_time_format(%rip)
	jmp       L00000CE1
L00000CD7:
	movl      $5, %edi
	call      _hard_locale
L00000CE1:
	movq      _long_time_format(%rip), %rdi
	leaq      LC0000C3B9(%rip), %rsi
	call      _strstr
L00000CF4:
	testq     %rax, %rax
	jne       L00000D15
L00000CF9:
	movq      _long_time_format+8(%rip), %rdi
	leaq      LC0000C3B9(%rip), %rsi
	call      _strstr
L00000D0C:
	testq     %rax, %rax
	je        L00000DD3
L00000D15:
	movq      $5, _required_mon_width(%rip)
	movl      $5, %r14d
	leaq      _abmon(%rip), %r12
	leaq      -320(%rbp), %r15
L00000D34:
	movq      $0, _required_mon_width(%rip)
	movq      %r12, %r13
	xorl      %ebx, %ebx
	.align 4, 0x90
L00000D50:
	movq      %r14, -320(%rbp)
	leal      33(%rbx), %edi
	call      _nl_langinfo
L00000D5F:
	movl      $61, %edx
	xorl      %r8d, %r8d
	xorl      %r9d, %r9d
	movq      %rax, %rdi
	movq      %r13, %rsi
	movq      %r15, %rcx
	call      _mbsalign
L00000D78:
	cmpq      $60, %rax
	ja        L00000DB6
L00000D7E:
	movq      _required_mon_width(%rip), %rcx
	movq      -320(%rbp), %rax
	cmpq      %rax, %rcx
	cmova     %rcx, %rax
	movq      %rax, _required_mon_width(%rip)
	incq      %rbx
	addq      $61, %r13
	cmpq      $12, %rbx
	jl        L00000D50
L00000DA7:
	cmpq      %rax, %r14
	movq      %rax, %r14
	ja        L00000D34
L00000DAF:
	testq     %rax, %rax
	jne       L00000DD3
L00000DB4:
	jmp       L00000DC1
L00000DB6:
	movq      $0, _required_mon_width(%rip)
L00000DC1:
	leaq      LC0000C3BC(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000DD3:
	movq      _rpl_optind@GOTPCREL(%rip), %rax
	movslq    (%rax), %r12
	cmpb      $0, _print_with_color(%rip)
	je        L0000132E
L00000DEA:
	leaq      LC0000C6AC(%rip), %rdi
	call      _getenv
L00000DF6:
	movq      %rax, -320(%rbp)
	testq     %rax, %rax
	je        L00000E4E
L00000E02:
	cmpb      $0, (%rax)
	je        L00000E4E
L00000E07:
	movb      $0, -330(%rbp)
	movw      $16191, -332(%rbp)
	movq      %rax, %rdi
	call      _xstrdup
L00000E1F:
	movq      %rax, _color_buf(%rip)
	movq      %rax, -368(%rbp)
	movl      $1, %eax
	leaq      L000028C8(%rip), %r15
	leaq      -332(%rbp), %r14
	xorl      %ecx, %ecx
	movq      %rcx, -352(%rbp)
	jmp       L00001020
L00000E4E:
	leaq      LC0000C6B6(%rip), %rdi
	call      _getenv
L00000E5A:
	testq     %rax, %rax
	je        L00000E68
L00000E5F:
	cmpb      $0, (%rax)
	jne       L00001175
L00000E68:
	leaq      LC0000C716(%rip), %rdi
	call      _getenv
L00000E74:
	movq      %rax, %r13
	testq     %r13, %r13
	je        L00000EE3
L00000E7C:
	cmpb      $0, (%r13)
	je        L00000EE3
L00000E83:
	leaq      _G_line(%rip), %r14
	leaq      LC0000C71B(%rip), %r15
	movq      %r14, %rbx
	.align 4, 0x90
L00000EA0:
	movl      $5, %edx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _strncmp
L00000EB0:
	testl     %eax, %eax
	jne       L00000EC8
L00000EB4:
	leaq      5(%rbx), %rsi
	movq      %r13, %rdi
	call      _strcmp
L00000EC0:
	testl     %eax, %eax
	je        L00001175
L00000EC8:
	movq      %rbx, %rdi
	call      _strlen
L00000ED0:
	leaq      1(%rbx,%rax), %rbx
	movq      %rbx, %rax
	subq      %r14, %rax
	cmpq      $4607, %rax
	jb        L00000EA0
L00000EE3:
	movb      $0, _print_with_color(%rip)
	cmpb      $0, _print_with_color(%rip)
	jne       L00001182
L00000EF7:
	jmp       L0000132E
L00000EFC:
	movq      -368(%rbp), %rax
	movq      -352(%rbp), %rcx
	movq      %rcx, %rdx
	leaq      16(%rdx), %rcx
	movq      %rax, 24(%rdx)
	xorl      %edx, %edx
	leaq      -368(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	call      _get_funky_string
L00000F2A:
	xorl      %ecx, %ecx
	testb     %al, %al
	sete      %cl
	leal      1(%rcx,%rcx,4), %eax
	jmp       L00001020
L00000F3A:
	movl      $40, %edi
	call      _xmalloc
L00000F44:
	movq      _color_ext_list(%rip), %rcx
	movq      %rcx, 32(%rax)
	movq      %rax, _color_ext_list(%rip)
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movq      -368(%rbp), %rcx
	movq      %rcx, 8(%rax)
	movl      $1, %edx
	leaq      -368(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %rax, %rcx
	movq      %rcx, -352(%rbp)
	call      _get_funky_string
L00000F8D:
	xorl      %ecx, %ecx
	testb     %al, %al
	sete      %cl
	leal      4(%rcx,%rcx), %eax
	jmp       L00001020
L00000F9D:
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movl      $1, %eax
	jmp       L00001020
L00000FAE:
	movq      -368(%rbp), %rax
	movq      %rax, 8(%r13)
	xorl      %edx, %edx
	leaq      -368(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %r13, %rcx
	call      _get_funky_string
L00000FD1:
	testb     %al, %al
	movl      $1, %eax
	jne       L00001020
L00000FDA:
	movq      %r14, %rdi
	call      _quotearg
L00000FE2:
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC0000C6C3(%rip), %rdx
	call      _error
L00000FF7:
	movl      $6, %eax
	jmp       L00001020
L00000FFE:
	movq      -320(%rbp), %rcx
	leaq      1(%rcx), %rax
	movq      %rax, -320(%rbp)
	movl      $6, %eax
	cmpb      $61, (%rcx)
	je        L00000EFC
L0000101E:
	.align 4, 0x90
L00001020:
	andb      $7, %al
	decb      %al
	cmpb      $5, %al
	ja        L000016F9
L0000102C:
	movzbl    %al, %eax
	movslq    (%r15,%rax,4), %rax
	addq      %r15, %rax
	jmp       *%rax
L00001038:
	movq      -320(%rbp), %rbx
	movb      (%rbx), %al
	movsbl    %al, %ecx
	cmpl      $42, %ecx
	je        L00000F3A
L0000104D:
	cmpl      $58, %ecx
	je        L00000F9D
L00001056:
	testl     %ecx, %ecx
	je        L00001148
L0000105E:
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movb      %al, -332(%rbp)
	movl      $2, %eax
	jmp       L00001020
L00001075:
	movq      -320(%rbp), %rdx
	movb      (%rdx), %cl
	movl      $6, %eax
	testb     %cl, %cl
	je        L00001020
L00001087:
	incq      %rdx
	movq      %rdx, -320(%rbp)
	movb      %cl, -331(%rbp)
	movl      $3, %eax
	jmp       L00001020
L0000109E:
	movq      -320(%rbp), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, -320(%rbp)
	cmpb      $61, (%rax)
	movl      $6, %eax
	jne       L00001020
L000010BE:
	xorl      %ebx, %ebx
	leaq      _color_indicator(%rip), %r13
	.align 4, 0x90
L000010D0:
	leaq      _indicator_name(%rip), %rax
	movq      (%rbx,%rax), %rsi
	movq      %r14, %rdi
	call      _strcmp
L000010E3:
	testl     %eax, %eax
	je        L00000FAE
L000010EB:
	addq      $16, %r13
	addq      $8, %rbx
	cmpq      $192, %rbx
	jne       L000010D0
L000010FC:
	jmp       L00000FDA
L00001101:
	leaq      LC0000C6DB(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00001113:
	movq      _color_buf(%rip), %rdi
	call      _free
L0000111F:
	movq      _color_ext_list(%rip), %rdi
	testq     %rdi, %rdi
	je        L00001141
L0000112B:
	.align 4, 0x90
L00001130:
	movq      32(%rdi), %rbx
	call      _free
L00001139:
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       L00001130
L00001141:
	movb      $0, _print_with_color(%rip)
L00001148:
	cmpq      $6, _color_indicator+112(%rip)
	jne       L00001175
L00001152:
	movq      _color_indicator+120(%rip), %rdi
	leaq      LC0000C70F(%rip), %rsi
	movl      $6, %edx
	call      _strncmp
L0000116A:
	testl     %eax, %eax
	jne       L00001175
L0000116E:
	movb      $1, _color_symlink_as_referent(%rip)
L00001175:
	cmpb      $0, _print_with_color(%rip)
	je        L0000132E
L00001182:
	movq      _color_indicator+208(%rip), %rax
	testq     %rax, %rax
	je        L000011C8
L0000118E:
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	je        L000011AF
L0000119B:
	cmpq      $1, %rax
	jne       L00001259
L000011A5:
	cmpb      $48, (%rdi)
	je        L000011C8
L000011AA:
	jmp       L00001259
L000011AF:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000011C0:
	testl     %eax, %eax
	jne       L00001259
L000011C8:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        L0000120D
L000011D4:
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	je        L000011EE
L000011E1:
	cmpq      $1, %rax
	jne       L00001203
L000011E7:
	cmpb      $48, (%rdi)
	jne       L00001203
L000011EC:
	jmp       L0000120D
L000011EE:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000011FF:
	testl     %eax, %eax
	je        L0000120D
L00001203:
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       L00001259
L0000120D:
	movq      _color_indicator+192(%rip), %rcx
	testq     %rcx, %rcx
	je        L00001260
L00001219:
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rcx
	je        L00001235
L00001226:
	movb      $1, %al
	cmpq      $1, %rcx
	jne       L0000124B
L0000122E:
	cmpb      $48, (%rdi)
	jne       L0000124B
L00001233:
	jmp       L00001260
L00001235:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00001246:
	testl     %eax, %eax
	setne     %al
L0000124B:
	testb     %al, %al
	je        L00001260
L0000124F:
	movl      _format(%rip), %eax
	testl     %eax, %eax
	jne       L00001260
L00001259:
	movb      $1, _check_symlink_color(%rip)
L00001260:
	movl      $1, %edi
	call      _tcgetpgrp
L0000126A:
	testl     %eax, %eax
	js        L0000132E
L00001272:
	movl      $0, _caught_signals(%rip)
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r14
	leaq      -320(%rbp), %r15
	.align 4, 0x90
L00001290:
	movl      (%rbx,%r14), %r13d
	xorl      %esi, %esi
	movl      %r13d, %edi
	movq      %r15, %rdx
	call      _sigaction
L000012A1:
	cmpq      $1, -320(%rbp)
	je        L000012BE
L000012AB:
	decl      %r13d
	movl      $1, %eax
	movl      %r13d, %ecx
	shll      %cl, %eax
	orl       %eax, _caught_signals(%rip)
L000012BE:
	addq      $4, %rbx
	cmpq      $44, %rbx
	jne       L00001290
L000012C8:
	movl      _caught_signals(%rip), %eax
	movl      %eax, -312(%rbp)
	movl      $2, -308(%rbp)
	xorl      %ebx, %ebx
	leaq      _sighandler(%rip), %r13
	leaq      -320(%rbp), %r15
	jmp       L000012FA
L000012F0:
	movl      _caught_signals(%rip), %eax
	addq      $4, %rbx
L000012FA:
	movl      (%rbx,%r14), %edi
	leal      -1(%rdi), %ecx
	btl       %ecx, %eax
	jae       L00001328
L00001306:
	testq     %rbx, %rbx
	movq      %r13, %rax
	leaq      _stophandler(%rip), %rcx
	cmove     %rcx, %rax
	movq      %rax, -320(%rbp)
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigaction
L00001328:
	cmpq      $40, %rbx
	jne       L000012F0
L0000132E:
	cmpl      $1, _dereference(%rip)
	jne       L00001367
L00001337:
	movb      _immediate_dirs(%rip), %al
	xorl      %ecx, %ecx
	cmpl      $0, _format(%rip)
	setne     %cl
	cmpl      $3, _indicator_style(%rip)
	leal      2(%rcx,%rcx), %ecx
	movl      $2, %edx
	cmove     %edx, %ecx
	testb     %al, %al
	cmovne    %edx, %ecx
	movl      %ecx, _dereference(%rip)
L00001367:
	cmpb      $1, _recursive(%rip)
	jne       L000013BF
L00001370:
	leaq      _dev_ino_hash(%rip), %rdx
	leaq      _dev_ino_compare(%rip), %rcx
	leaq      _dev_ino_free(%rip), %r8
	movl      $30, %edi
	xorl      %esi, %esi
	call      _hash_initialize
L00001391:
	movq      %rax, _active_dir_set(%rip)
	testq     %rax, %rax
	je        L0000171C
L000013A1:
	leaq      _dev_ino_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rcx
	movq      _free@GOTPCREL(%rip), %r8
	xorl      %esi, %esi
	xorl      %edx, %edx
	call      __obstack_begin
L000013BF:
	cmpl      $0, _format(%rip)
	je        L000013DC
L000013C8:
	movl      _sort_type(%rip), %eax
	cmpl      $4, %eax
	je        L000013DC
L000013D3:
	cmpl      $2, %eax
	jne       L00001549
L000013DC:
	movb      $1, _format_needs_stat(%rip)
L000013E3:
	xorl      %eax, %eax
L000013E5:
	andb      $1, %al
	movb      %al, _format_needs_type(%rip)
	cmpb      $1, _dired(%rip)
	jne       L00001430
L000013F6:
	leaq      _dired_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rbx
	movq      _free@GOTPCREL(%rip), %r14
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
L0000141A:
	leaq      _subdired_obstack(%rip), %rdi
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
L00001430:
	movq      $100, _cwd_n_alloc(%rip)
	movl      $19200, %edi
	call      _xmalloc
L00001445:
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
	movl      -344(%rbp), %eax
	movl      %eax, %r14d
	subl      %r12d, %r14d
	jle       L00001510
L000014D0:
	movslq    %eax, %r13
	leaq      LC0000A4A8(%rip), %r15
	movq      -328(%rbp), %rbx
	.align 4, 0x90
L000014F0:
	movq      (%rbx,%r12,8), %rdi
	incq      %r12
	xorl      %esi, %esi
	movl      $1, %edx
	movq      %r15, %rcx
	call      _gobble_file
L00001506:
	cmpq      %r13, %r12
	jl        L000014F0
L0000150B:
	jmp       L000015CE
L00001510:
	cmpb      $1, _immediate_dirs(%rip)
	jne       L00001594
L00001519:
	leaq      LC0000A4A9(%rip), %rdi
	leaq      LC0000A4A8(%rip), %rcx
	movl      $3, %esi
	movl      $1, %edx
	call      _gobble_file
L00001536:
	cmpq      $0, _cwd_n_used(%rip)
	jne       L000015D8
L00001544:
	jmp       L00001636
L00001549:
	movb      _print_block_size(%rip), %al
	orb       _print_scontext(%rip), %al
	andb      $1, %al
	movb      %al, _format_needs_stat(%rip)
	jne       L000013E3
L00001563:
	movb      $1, %al
	movb      _recursive(%rip), %cl
	testb     %cl, %cl
	jne       L000013E5
L00001573:
	cmpb      $0, _print_with_color(%rip)
	setne     %cl
	cmpl      $0, _indicator_style(%rip)
	setne     %al
	orb       %cl, %al
	orb       _directories_first(%rip), %al
	jmp       L000013E5
L00001594:
	movl      $32, %edi
	call      _xmalloc
L0000159E:
	movq      %rax, %rbx
	movq      $0, 8(%rbx)
	leaq      LC0000A4A9(%rip), %rdi
	call      _xstrdup
L000015B5:
	movq      %rax, (%rbx)
	movb      $1, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
L000015CE:
	cmpq      $0, _cwd_n_used(%rip)
	je        L00001636
L000015D8:
	call      _sort_files
L000015DD:
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	jne       L000015F3
L000015E7:
	xorl      %edi, %edi
	movl      $1, %esi
	call      _extract_dirs_from_files
L000015F3:
	cmpq      $0, _cwd_n_used(%rip)
	je        L00001636
L000015FD:
	call      _print_current_files
L00001602:
	cmpq      $0, _pending_dirs(%rip)
	je        L00001865
L00001610:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00001667
L00001627:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00001671
L00001636:
	cmpl      $1, %r14d
	movq      _pending_dirs(%rip), %rbx
	jg        L000017C0
L00001647:
	testq     %rbx, %rbx
	je        L000017C0
L00001650:
	cmpq      $0, 24(%rbx)
	jne       L000017B9
L0000165B:
	movb      $0, _print_dir_name(%rip)
	jmp       L000017B9
L00001667:
	movl      $10, %edi
	call      ___swbuf
L00001671:
	incq      _dired_pos(%rip)
	jmp       L000017B9
L0000167D:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $2, %eax
	leaq      LC0000C0CA(%rip), %rcx
	leaq      LC0000C0CE(%rip), %rdx
	cmove     %rcx, %rdx
	cmpl      $1, %eax
	leaq      LC0000C0C7(%rip), %rsi
	cmovne    %rdx, %rsi
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      $0, (%rsp)
	leaq      LC0000C295(%rip), %rdx
	leaq      LC0000C2A3(%rip), %r8
	leaq      LC0000C2B7(%rip), %r9
	xorl      %eax, %eax
	call      _version_etc
L000016E1:
	xorl      %edi, %edi
	call      _exit
L000016E8:
	xorl      %edi, %edi
	call      _usage
L000016EF:
	movl      $2, %edi
	call      _usage
L000016F9:
	call      _abort
L000016FE:
	call      _abort
L00001703:
	movl      -320(%rbp), %esi
	movq      (%rbx), %r8
	leaq      _long_options(%rip), %rcx
	xorl      %edx, %edx
	movl      %eax, %edi
	call      _xstrtol_fatal
L0000171C:
	call      _xalloc_die
L00001721:
	leaq      LC0000C315(%rip), %rdi
	movq      %rbx, %rsi
	movq      %rax, %rdx
	call      _argmatch_invalid
L00001733:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      LC0000C320(%rip), %rdi
	call      _fputs
L00001749:
	movq      (%rbx), %rdi
	leaq      LC0000C336(%rip), %r14
	leaq      LC0000C262(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
L00001764:
	movq      (%rbx), %rdi
	leaq      LC0000C69F(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
L00001778:
	movq      (%rbx), %rdi
	leaq      LC0000C6A8(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
L0000178C:
	movq      (%rbx), %rdi
	leaq      LC0000C2F1(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
L000017A0:
	movq      (%rbx), %rsi
	leaq      LC0000C346(%rip), %rdi
	call      _fputs
L000017AF:
	movl      $2, %edi
	call      _usage
L000017B9:
	movq      _pending_dirs(%rip), %rbx
L000017C0:
	testq     %rbx, %rbx
	je        L00001865
L000017C9:
	movq      24(%rbx), %rax
	movq      %rax, _pending_dirs(%rip)
	movq      _active_dir_set(%rip), %rdi
	testq     %rdi, %rdi
	movq      (%rbx), %r15
	je        L00001903
L000017E7:
	testq     %r15, %r15
	jne       L00001903
L000017F0:
	movq      _dev_ino_obstack+24(%rip), %rax
	movq      %rax, %rcx
	subq      _dev_ino_obstack+16(%rip), %rcx
	cmpq      $15, %rcx
	jbe       L00002407
L0000180B:
	leaq      -16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movq      -16(%rax), %rcx
	movl      -8(%rax), %eax
	movq      %rcx, -320(%rbp)
	movl      %eax, -312(%rbp)
	leaq      -320(%rbp), %rsi
	call      _hash_delete
L00001836:
	testq     %rax, %rax
	je        L00002426
L0000183F:
	movq      %rax, %rdi
	call      _free
L00001847:
	movq      (%rbx), %rdi
	call      _free
L0000184F:
	movq      8(%rbx), %rdi
	call      _free
L00001858:
	movq      %rbx, %rdi
	call      _free
L00001860:
	jmp       L000017B9
L00001865:
	cmpb      $0, _print_with_color(%rip)
	je        L00001D1D
L00001872:
	cmpb      $1, _used_color(%rip)
	jne       L00001BDD
L0000187F:
	movq      _color_indicator(%rip), %rsi
	cmpq      $2, %rsi
	jne       L000018B7
L0000188C:
	movq      _color_indicator+8(%rip), %rax
	movzwl    (%rax), %eax
	cmpl      $23323, %eax
	jne       L000018B7
L0000189D:
	cmpq      $1, _color_indicator+16(%rip)
	jne       L000018B7
L000018A7:
	movq      _color_indicator+24(%rip), %rax
	cmpb      $109, (%rax)
	je        L00001BDD
L000018B7:
	movq      _color_indicator+8(%rip), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000018D2:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00001BC2
L000018E0:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00001B45
L000018F7:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00001BB5
L00001903:
	movq      8(%rbx), %r14
	movq      %rbx, -360(%rbp)
	movb      16(%rbx), %r13b
	call      ___error
L00001917:
	movl      $0, (%rax)
	movq      %r15, %rdi
	call      _opendir$INODE64
L00001925:
	movq      %rax, -344(%rbp)
	testq     %rax, %rax
	je        L0000196D
L00001931:
	cmpq      $0, _active_dir_set(%rip)
	movq      %r15, -328(%rbp)
	je        L00001AF4
L00001946:
	movq      -344(%rbp), %rdi
	call      _dirfd
L00001952:
	leaq      -320(%rbp), %rsi
	testl     %eax, %eax
	js        L000019BD
L0000195D:
	movl      %eax, %edi
	call      _fstat$INODE64
L00001964:
	testl     %eax, %eax
	jns       L000019CD
L00001968:
	jmp       L00001A5E
L0000196D:
	call      ___error
L00001972:
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
L0000197C:
	movq      %rax, %rcx
	leaq      LC0000C766(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00001991:
	testb     %r13b, %r13b
	jne       L00001A48
L0000199A:
	cmpl      $0, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jne       L000023CE
L000019AE:
	movl      $1, _exit_status(%rip)
	jmp       L000023CE
L000019BD:
	movq      %r15, %rdi
	call      _rpl_stat
L000019C5:
	testl     %eax, %eax
	js        L00001A5E
L000019CD:
	movl      -320(%rbp), %r15d
	movq      -312(%rbp), %r12
	movl      $16, %edi
	call      _xmalloc
L000019E5:
	movq      %rax, %rbx
	movq      %r12, (%rbx)
	movl      %r15d, 8(%rbx)
	movq      _active_dir_set(%rip), %rdi
	movq      %rbx, %rsi
	call      _hash_insert
L000019FE:
	testq     %rax, %rax
	je        L00002464
L00001A07:
	cmpq      %rbx, %rax
	movq      -328(%rbp), %r15
	je        L00001AA1
L00001A17:
	movq      %rbx, %rdi
	call      _free
L00001A1F:
	movq      %r15, %rdi
	call      _quotearg_colon
L00001A27:
	movq      %rax, %rcx
	leaq      LC0000C7A7(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00001A3C:
	movq      -344(%rbp), %rdi
	call      _closedir
L00001A48:
	movl      $2, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jmp       L000023CE
L00001A5E:
	call      ___error
L00001A63:
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
L00001A6D:
	movq      %rax, %rcx
	leaq      LC0000C77F(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00001A82:
	testb     %r13b, %r13b
	je        L00001DC4
L00001A8B:
	movl      $2, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jmp       L00001DDE
L00001AA1:
	movl      %r13d, %r12d
	movl      -320(%rbp), %ebx
	movq      -312(%rbp), %r13
	movq      _dev_ino_obstack+32(%rip), %rcx
	movq      _dev_ino_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $15, %rcx
	ja        L00001AE0
L00001AC8:
	leaq      _dev_ino_obstack(%rip), %rdi
	movl      $16, %esi
	call      __obstack_newchunk
L00001AD9:
	movq      _dev_ino_obstack+24(%rip), %rax
L00001AE0:
	leaq      16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movl      %ebx, 8(%rax)
	movq      %r13, (%rax)
	movl      %r12d, %r13d
L00001AF4:
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       L00001B0B
L00001AFE:
	cmpb      $1, _print_dir_name(%rip)
	jne       L00001F02
L00001B0B:
	cmpb      $1, _print_dir.first(%rip)
	jne       L00001E00
L00001B18:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00001DEF
L00001B33:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00001DF9
L00001B45:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001B60:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00001B76
L00001B6A:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00001B76:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001B91:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00001BA7
L00001B9B:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00001BA7:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00001BB5:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001BC2:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00001BDD:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _rpl_fflush
L00001BEC:
	movl      _caught_signals(%rip), %eax
	testl     $131072, %eax
	je        L00001C0B
L00001BF9:
	movl      $18, %edi
	xorl      %esi, %esi
	call      _signal
L00001C05:
	movl      _caught_signals(%rip), %eax
L00001C0B:
	testb     $32, %ah
	je        L00001C22
L00001C10:
	movl      $14, %edi
	xorl      %esi, %esi
	call      _signal
L00001C1C:
	movl      _caught_signals(%rip), %eax
L00001C22:
	testb     $1, %al
	je        L00001C38
L00001C26:
	movl      $1, %edi
	xorl      %esi, %esi
	call      _signal
L00001C32:
	movl      _caught_signals(%rip), %eax
L00001C38:
	testb     $2, %al
	je        L00001C4E
L00001C3C:
	movl      $2, %edi
	xorl      %esi, %esi
	call      _signal
L00001C48:
	movl      _caught_signals(%rip), %eax
L00001C4E:
	testb     $16, %ah
	je        L00001C65
L00001C53:
	movl      $13, %edi
	xorl      %esi, %esi
	call      _signal
L00001C5F:
	movl      _caught_signals(%rip), %eax
L00001C65:
	testb     $4, %al
	je        L00001C7B
L00001C69:
	movl      $3, %edi
	xorl      %esi, %esi
	call      _signal
L00001C75:
	movl      _caught_signals(%rip), %eax
L00001C7B:
	testb     $64, %ah
	je        L00001C92
L00001C80:
	movl      $15, %edi
	xorl      %esi, %esi
	call      _signal
L00001C8C:
	movl      _caught_signals(%rip), %eax
L00001C92:
	testl     $67108864, %eax
	je        L00001CAB
L00001C99:
	movl      $27, %edi
	xorl      %esi, %esi
	call      _signal
L00001CA5:
	movl      _caught_signals(%rip), %eax
L00001CAB:
	testl     $33554432, %eax
	je        L00001CC4
L00001CB2:
	movl      $26, %edi
	xorl      %esi, %esi
	call      _signal
L00001CBE:
	movl      _caught_signals(%rip), %eax
L00001CC4:
	testl     $8388608, %eax
	je        L00001CDD
L00001CCB:
	movl      $24, %edi
	xorl      %esi, %esi
	call      _signal
L00001CD7:
	movl      _caught_signals(%rip), %eax
L00001CDD:
	testl     $16777216, %eax
	je        L00001CF0
L00001CE4:
	movl      $25, %edi
	xorl      %esi, %esi
	call      _signal
L00001CF0:
	movl      _stop_signal_count(%rip), %ebx
	testl     %ebx, %ebx
	je        L00001D0E
L00001CFA:
	.align 4, 0x90
L00001D00:
	movl      $17, %edi
	call      _raise
L00001D0A:
	decl      %ebx
	jne       L00001D00
L00001D0E:
	movl      _interrupt_signal(%rip), %edi
	testl     %edi, %edi
	je        L00001D1D
L00001D18:
	call      _raise
L00001D1D:
	cmpb      $1, _dired(%rip)
	jne       L00001D73
L00001D26:
	leaq      LC0000A4C2(%rip), %rdi
	leaq      _dired_obstack(%rip), %rsi
	call      _dired_dump_obstack
L00001D39:
	leaq      LC0000A4CC(%rip), %rdi
	leaq      _subdired_obstack(%rip), %rsi
	call      _dired_dump_obstack
L00001D4C:
	movq      _filename_quoting_options(%rip), %rdi
	call      _get_quoting_style
L00001D58:
	movl      %eax, %eax
	movq      _quoting_style_args@GOTPCREL(%rip), %rcx
	movq      (%rcx,%rax,8), %rsi
	leaq      LC0000A4D9(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L00001D73:
	movq      _active_dir_set(%rip), %rbx
	testq     %rbx, %rbx
	je        L00001D98
L00001D7F:
	movq      %rbx, %rdi
	call      _hash_get_n_entries
L00001D87:
	testq     %rax, %rax
	jne       L00002445
L00001D90:
	movq      %rbx, %rdi
	call      _hash_free
L00001D98:
	movl      _exit_status(%rip), %eax
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       L00002402
L00001DB2:
	addq      $344, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00001DC4:
	cmpl      $0, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jne       L00001DDE
L00001DD4:
	movl      $1, _exit_status(%rip)
L00001DDE:
	movq      -344(%rbp), %rdi
	call      _closedir
L00001DEA:
	jmp       L000023CE
L00001DEF:
	movl      $10, %edi
	call      ___swbuf
L00001DF9:
	incq      _dired_pos(%rip)
L00001E00:
	movb      $1, _print_dir.first(%rip)
	cmpb      $1, _dired(%rip)
	jne       L00001E78
L00001E10:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      LC0000C7D0(%rip), %rdi
	call      _fputs
L00001E26:
	addq      $2, _dired_pos(%rip)
	cmpb      $1, _dired(%rip)
	jne       L00001E78
L00001E37:
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00001E66
L00001E4E:
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
L00001E5F:
	movq      _subdired_obstack+24(%rip), %rax
L00001E66:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
L00001E78:
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	testq     %r14, %r14
	cmove     %r15, %r14
	movq      _dirname_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      %r14, %rsi
	call      _quote_name
L00001E9A:
	addq      %rax, _dired_pos(%rip)
	cmpb      $1, _dired(%rip)
	jne       L00001EEB
L00001EAA:
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00001ED9
L00001EC1:
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
L00001ED2:
	movq      _subdired_obstack+24(%rip), %rax
L00001ED9:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
L00001EEB:
	movq      (%rbx), %rsi
	leaq      LC0000C7D3(%rip), %rdi
	call      _fputs
L00001EFA:
	addq      $2, _dired_pos(%rip)
L00001F02:
	movb      %r13b, -352(%rbp)
	cmpq      $0, _cwd_n_used(%rip)
	je        L00001F48
L00001F13:
	xorl      %ebx, %ebx
	.align 4, 0x90
L00001F20:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
L00001F33:
	movq      8(%r14), %rdi
	call      _free
L00001F3C:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00001F20
L00001F48:
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
	jmp       L00001FD8
L00001FC3:
	.align 4, 0x90
L00001FD0:
	call      _process_signals
L00001FD5:
	movq      %r15, %r14
L00001FD8:
	call      ___error
L00001FDD:
	movl      $0, (%rax)
	movq      -344(%rbp), %rdi
	call      _readdir$INODE64
L00001FEF:
	movq      %rax, %r12
	testq     %r12, %r12
	je        L000021E0
L00001FFB:
	movq      %r12, %r13
	addq      $21, %r13
	movl      _ignore_mode(%rip), %eax
	cmpl      $2, %eax
	je        L00002080
L0000200D:
	cmpb      $46, (%r13)
	jne       L00002033
L00002014:
	testl     %eax, %eax
	je        L0000224A
L0000201C:
	xorl      %ecx, %ecx
	cmpb      $46, 22(%r12)
	sete      %cl
	cmpb      $0, 22(%r12,%rcx)
	je        L0000224A
L00002033:
	testl     %eax, %eax
	jne       L00002080
L00002037:
	movq      _hide_patterns(%rip), %r15
	testq     %r15, %r15
	je        L00002080
L00002043:
	.align 4, 0x90
L00002050:
	movq      (%r15), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
L00002060:
	testl     %eax, %eax
	je        L0000224A
L00002068:
	movq      8(%r15), %r15
	testq     %r15, %r15
	jne       L00002050
L00002071:
	.align 4, 0x90
L00002080:
	movq      _ignore_patterns(%rip), %rbx
	testq     %rbx, %rbx
	je        L000020B1
L0000208C:
	.align 4, 0x90
L00002090:
	movq      (%rbx), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
L000020A0:
	testl     %eax, %eax
	je        L0000224A
L000020A8:
	movq      8(%rbx), %rbx
	testq     %rbx, %rbx
	jne       L00002090
L000020B1:
	movb      20(%r12), %al
	decb      %al
	xorl      %esi, %esi
	cmpb      $13, %al
	ja        L000020CC
L000020BE:
	movsbq    %al, %rax
	leaq      l_switch.table(%rip), %rcx
	movl      (%rcx,%rax,4), %esi
L000020CC:
	xorl      %edx, %edx
	movq      %r13, %rdi
	movq      -328(%rbp), %rcx
	call      _gobble_file
L000020DD:
	movq      %rax, %r15
	addq      %r14, %r15
	cmpl      $1, _format(%rip)
	jne       L00001FD0
L000020F0:
	cmpl      $-1, _sort_type(%rip)
	jne       L00001FD0
L000020FD:
	movb      _print_block_size(%rip), %al
	testb     %al, %al
	jne       L00001FD0
L0000210B:
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       L00001FD0
L00002119:
	call      _sort_files
L0000211E:
	call      _print_current_files
L00002123:
	cmpq      $0, _cwd_n_used(%rip)
	je        L00002158
L0000212D:
	xorl      %ebx, %ebx
	.align 4, 0x90
L00002130:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
L00002143:
	movq      8(%r14), %rdi
	call      _free
L0000214C:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00002130
L00002158:
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
	jmp       L00001FD0
L000021D3:
	.align 4, 0x90
L000021E0:
	call      ___error
L000021E5:
	cmpl      $0, (%rax)
	movq      -328(%rbp), %r15
	movb      -352(%rbp), %r12b
	je        L00002252
L000021F8:
	call      ___error
L000021FD:
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
L00002207:
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	leaq      LC0000C7D6(%rip), %rdx
	call      _error
L0000221C:
	testb     %r12b, %r12b
	je        L0000222D
L00002221:
	movl      $2, _exit_status(%rip)
	jmp       L00002240
L0000222D:
	cmpl      $0, _exit_status(%rip)
	jne       L00002240
L00002236:
	movl      $1, _exit_status(%rip)
L00002240:
	call      ___error
L00002245:
	cmpl      $84, (%rax)
	jne       L00002252
L0000224A:
	movq      %r14, %r15
	jmp       L00001FD0
L00002252:
	movq      -344(%rbp), %rdi
	call      _closedir
L0000225E:
	testl     %eax, %eax
	je        L000022AA
L00002262:
	call      ___error
L00002267:
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
L00002271:
	movq      %rax, %rcx
	leaq      LC0000C7EB(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00002286:
	testb     %r12b, %r12b
	je        L00002297
L0000228B:
	movl      $2, _exit_status(%rip)
	jmp       L000022AA
L00002297:
	cmpl      $0, _exit_status(%rip)
	jne       L000022AA
L000022A0:
	movl      $1, _exit_status(%rip)
L000022AA:
	call      _sort_files
L000022AF:
	cmpb      $1, _recursive(%rip)
	jne       L000022C2
L000022B8:
	xorl      %esi, %esi
	movq      %r15, %rdi
	call      _extract_dirs_from_files
L000022C2:
	cmpl      $0, _format(%rip)
	je        L000022D8
L000022CB:
	cmpb      $1, _print_block_size(%rip)
	jne       L000023B8
L000022D8:
	cmpb      $1, _dired(%rip)
	jne       L000022FF
L000022E1:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      LC0000C7D0(%rip), %rdi
	call      _fputs
L000022F7:
	addq      $2, _dired_pos(%rip)
L000022FF:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	movq      (%r15), %rsi
	leaq      LC0000C800(%rip), %rdi
	call      _fputs
L00002315:
	addq      $5, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00002336
L0000232D:
	cmpl      40(%rsi), %eax
	jle       L000023F3
L00002336:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
L00002343:
	incq      _dired_pos(%rip)
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	movq      %r14, %rdi
	call      _human_readable
L0000236B:
	movq      %rax, %rbx
	movq      (%r15), %rsi
	movq      %rbx, %rdi
	call      _fputs
L00002379:
	movq      %rbx, %rdi
	call      _strlen
L00002381:
	addq      %rax, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L000023A7
L00002398:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L000023B1
L000023A7:
	movl      $10, %edi
	call      ___swbuf
L000023B1:
	incq      _dired_pos(%rip)
L000023B8:
	cmpq      $0, _cwd_n_used(%rip)
	movq      -360(%rbp), %rbx
	je        L000023CE
L000023C9:
	call      _print_current_files
L000023CE:
	movq      (%rbx), %rdi
	call      _free
L000023D6:
	movq      8(%rbx), %rdi
	call      _free
L000023DF:
	movq      %rbx, %rdi
	call      _free
L000023E7:
	movb      $1, _print_dir_name(%rip)
	jmp       L000017B9
L000023F3:
	movl      $32, %edi
	call      ___swbuf
L000023FD:
	jmp       L00002343
L00002402:
	call      ___stack_chk_fail
L00002407:
	leaq      LC0000C0D8(%rip), %rdi
	leaq      LC0000A4B0(%rip), %rsi
	leaq      LC0000C0E4(%rip), %rcx
	movl      $992, %edx
	call      ___assert_rtn
L00002426:
	leaq      LC0000A4AB(%rip), %rdi
	leaq      LC0000A4B0(%rip), %rsi
	leaq      LC0000A4B9(%rip), %rcx
	movl      $1450, %edx
	call      ___assert_rtn
L00002445:
	leaq      LC0000A4AB(%rip), %rdi
	leaq      LC0000A4B0(%rip), %rsi
	leaq      LC0000A4FF(%rip), %rcx
	movl      $1513, %edx
	call      ___assert_rtn
L00002464:
	call      _xalloc_die
L00002469:
	.align 4, 0x90
# ----------------------
L0000246C:
	.long	L0000167D-L0000246C
	.long	L000016E8-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000009D8-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L0000034A-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000003C6-L0000246C
	.long	L000003E2-L0000246C
	.long	L0000041E-L0000246C
	.long	L0000042D-L0000246C
	.long	L000016EF-L0000246C
	.long	L00000439-L0000246C
	.long	L00000631-L0000246C
	.long	L00000448-L0000246C
	.long	L00000457-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L0000048C-L0000246C
	.long	L000016EF-L0000246C
	.long	L0000049B-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000004A9-L0000246C
	.long	L000004BA-L0000246C
	.long	L000004C6-L0000246C
	.long	L000004D8-L0000246C
	.long	L00000513-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L00000525-L0000246C
	.long	L000016EF-L0000246C
	.long	L00000537-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L00000543-L0000246C
	.long	L00000552-L0000246C
	.long	L00000563-L0000246C
	.long	L00000572-L0000246C
	.long	L000016EF-L0000246C
	.long	L0000057E-L0000246C
	.long	L000005D3-L0000246C
	.long	L000005E9-L0000246C
	.long	L0000081D-L0000246C
	.long	L000016EF-L0000246C
	.long	L00000300-L0000246C
	.long	L00000618-L0000246C
	.long	L00000602-L0000246C
	.long	L00000611-L0000246C
	.long	L00000627-L0000246C
	.long	L0000063D-L0000246C
	.long	L0000064C-L0000246C
	.long	L00000658-L0000246C
	.long	L00000829-L0000246C
	.long	L00000366-L0000246C
	.long	L00000664-L0000246C
	.long	L00000673-L0000246C
	.long	L00000835-L0000246C
	.long	L00000685-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L000016EF-L0000246C
	.long	L00000694-L0000246C
	.long	L00000378-L0000246C
	.long	L000006A0-L0000246C
	.long	L0000071A-L0000246C
	.long	L00000729-L0000246C
	.long	L00000873-L0000246C
	.long	L000008BF-L0000246C
	.long	L000008DC-L0000246C
	.long	L00000738-L0000246C
	.long	L00000766-L0000246C
	.long	L000008E8-L0000246C
	.long	L000007B2-L0000246C
	.long	L00000935-L0000246C
	.long	L000007BE-L0000246C
	.long	L00000961-L0000246C
	.long	L00000807-L0000246C
# ----------------------
L000028B8:
	.long	L00000C8D-L000028B8
	.long	L00000C96-L000028B8
	.long	L00000CB1-L000028B8
	.long	L00000CD7-L000028B8
# ----------------------
L000028C8:
	.long	L00001038-L000028C8
	.long	L00001075-L000028C8
	.long	L0000109E-L000028C8
	.long	L00000FFE-L000028C8
	.long	L000016F9-L000028C8
	.long	L00001101-L000028C8
# ----------------------
_stophandler:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpl      $0, _interrupt_signal(%rip)
	jne       L000028F3
L000028ED:
	incl      _stop_signal_count(%rip)
L000028F3:
	popq      %rbp
	ret       
L000028F5:
	.align 4, 0x90
# ----------------------
_sighandler:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpl      $0, _interrupt_signal(%rip)
	jne       L00002913
L0000290D:
	movl      %edi, _interrupt_signal(%rip)
L00002913:
	popq      %rbp
	ret       
L00002915:
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
L00002931:
	.align 4, 0x90
# ----------------------
_dev_ino_compare:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      (%rdi), %rax
	cmpq      (%rsi), %rax
	jne       L00002957
L0000294C:
	movl      8(%rdi), %eax
	cmpl      8(%rsi), %eax
	sete      %al
	jmp       L00002959
L00002957:
	xorl      %eax, %eax
L00002959:
	popq      %rbp
	ret       
L0000295B:
	.align 4, 0x90
# ----------------------
_dev_ino_free:
	pushq     %rbp
	movq      %rsp, %rbp
	popq      %rbp
	jmp       _free
L0000296A:
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
	subq      $360, %rsp
	movq      %rcx, %r12
	movl      %edx, %r14d
	movl      %esi, -384(%rbp)
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      _cwd_n_used(%rip), %rax
	cmpq      _cwd_n_alloc(%rip), %rax
	jne       L000029F2
L000029B1:
	movq      $48038396025285291, %rcx
	cmpq      %rcx, %rax
	jae       L000036FA
L000029C4:
	movq      _cwd_file(%rip), %rdi
	shlq      $7, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L000029D8:
	movq      %rax, %rbx
	movq      %rbx, _cwd_file(%rip)
	shlq      $1, _cwd_n_alloc(%rip)
	movq      _cwd_n_used(%rip), %rax
	jmp       L000029F9
L000029F2:
	movq      _cwd_file(%rip), %rbx
L000029F9:
	leaq      (%rax,%rax,2), %r13
	shlq      $6, %r13
	leaq      (%rbx,%r13), %rdi
	movl      $192, %esi
	movq      %rdi, -392(%rbp)
	call      ___bzero
L00002A16:
	movq      $0, 24(%rbx,%r13)
	movq      %rbx, -360(%rbp)
	movl      -384(%rbp), %esi
	movl      %esi, 160(%rbx,%r13)
	cmpb      $0, _format_needs_stat(%rip)
	jne       L00002BAB
L00002A41:
	movl      %r14d, %eax
	xorb      $1, %al
	je        L00002BAB
L00002A4C:
	cmpl      $3, %esi
	movb      _print_with_color(%rip), %bl
	jne       L00002B43
L00002A5B:
	testb     %bl, %bl
	je        L00002B43
L00002A63:
	movq      _color_indicator+304(%rip), %rax
	testq     %rax, %rax
	je        L00002AAF
L00002A6F:
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	je        L00002A90
L00002A7C:
	cmpq      $1, %rax
	jne       L00002BAB
L00002A86:
	cmpb      $48, (%rdi)
	je        L00002AAF
L00002A8B:
	jmp       L00002BAB
L00002A90:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002AA1:
	movl      -384(%rbp), %esi
	testl     %eax, %eax
	jne       L00002BAB
L00002AAF:
	movq      _color_indicator+288(%rip), %rax
	testq     %rax, %rax
	je        L00002AFB
L00002ABB:
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $2, %rax
	je        L00002ADC
L00002AC8:
	cmpq      $1, %rax
	jne       L00002BAB
L00002AD2:
	cmpb      $48, (%rdi)
	je        L00002AFB
L00002AD7:
	jmp       L00002BAB
L00002ADC:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002AED:
	movl      -384(%rbp), %esi
	testl     %eax, %eax
	jne       L00002BAB
L00002AFB:
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        L00002B43
L00002B07:
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	je        L00002B28
L00002B14:
	cmpq      $1, %rax
	jne       L00002BAB
L00002B1E:
	cmpb      $48, (%rdi)
	je        L00002B43
L00002B23:
	jmp       L00002BAB
L00002B28:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002B39:
	movl      -384(%rbp), %esi
	testl     %eax, %eax
	jne       L00002BAB
L00002B43:
	movb      _print_inode(%rip), %cl
	movb      _format_needs_type(%rip), %al
	testb     %al, %al
	jne       L00002B5D
L00002B53:
	movl      %ecx, %edx
	xorb      $1, %dl
	testb     $1, %dl
	jne       L00002B7F
L00002B5D:
	cmpl      $6, %esi
	je        L00002B66
L00002B62:
	testl     %esi, %esi
	jne       L00002B7F
L00002B66:
	cmpl      $5, _dereference(%rip)
	je        L00002BAB
L00002B6F:
	movb      _color_symlink_as_referent(%rip), %dl
	testb     %dl, %dl
	jne       L00002BAB
L00002B79:
	orb       _check_symlink_color(%rip), %cl
L00002B7F:
	testb     $1, %cl
	jne       L00002BAB
L00002B84:
	testb     %al, %al
	je        L000036AB
L00002B8C:
	testl     %esi, %esi
	je        L00002BAB
L00002B90:
	testb     %r14b, %r14b
	jne       L00002BAB
L00002B95:
	cmpl      $5, %esi
	jne       L000036AB
L00002B9E:
	cmpl      $3, _indicator_style(%rip)
	jne       L00003587
L00002BAB:
	movl      %r14d, -372(%rbp)
	cmpb      $47, (%r15)
	movq      %r15, %r14
	je        L00002C52
L00002BBF:
	movb      (%r12), %bl
	testb     %bl, %bl
	movq      %r15, %r14
	je        L00002C52
L00002BCE:
	movq      %r15, %rdi
	call      _strlen
L00002BD6:
	movq      %rax, %r14
	movq      %r12, %rdi
	call      _strlen
L00002BE1:
	leaq      17(%r14,%rax), %rax
	andq      $-16, %rax
	movq      %rsp, %r14
	subq      %rax, %r14
	movq      %r14, %rsp
	cmpb      $46, %bl
	jne       L00002C05
L00002BF8:
	movb      $46, %bl
	cmpb      $0, 1(%r12)
	movq      %r14, %rax
	je        L00002C31
L00002C05:
	movq      %r12, %rcx
	movq      %r14, %rax
	.align 4, 0x90
L00002C10:
	movb      %bl, (%rax)
	incq      %rax
	movzbl    1(%rcx), %ebx
	incq      %rcx
	testb     %bl, %bl
	jne       L00002C10
L00002C20:
	cmpq      %r12, %rcx
	jbe       L00002C31
L00002C25:
	cmpb      $47, -1(%rcx)
	je        L00002C31
L00002C2B:
	movb      $47, (%rax)
	incq      %rax
L00002C31:
	movb      (%r15), %cl
	testb     %cl, %cl
	je        L00002C4F
L00002C38:
	leaq      1(%r15), %rdx
	.align 4, 0x90
L00002C40:
	movb      %cl, (%rax)
	incq      %rax
	movzbl    (%rdx), %ecx
	incq      %rdx
	testb     %cl, %cl
	jne       L00002C40
L00002C4F:
	movb      $0, (%rax)
L00002C52:
	movq      %r15, -368(%rbp)
	movq      -360(%rbp), %rbx
	leaq      16(%rbx,%r13), %r12
	movl      _dereference(%rip), %eax
	leal      -3(%rax), %ecx
	cmpl      $2, %ecx
	jae       L00002CB3
L00002C73:
	cmpb      $0, -372(%rbp)
	je        L00002CD6
L00002C7C:
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _rpl_stat
L00002C87:
	movl      %eax, %r15d
	cmpl      $3, _dereference(%rip)
	je        L00002CE4
L00002C93:
	testl     %r15d, %r15d
	js        L00002CC5
L00002C98:
	movzwl    20(%rbx,%r13), %eax
	andl      $61440, %eax
	xorl      %ecx, %ecx
	cmpl      $16384, %eax
	setne     %cl
	testl     %ecx, %ecx
	jne       L00002CD6
L00002CB1:
	jmp       L00002CE4
L00002CB3:
	cmpl      $5, %eax
	jne       L00002CD6
L00002CB8:
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _rpl_stat
L00002CC3:
	jmp       L00002CE1
L00002CC5:
	call      ___error
L00002CCA:
	xorl      %ecx, %ecx
	cmpl      $2, (%rax)
	sete      %cl
	testl     %ecx, %ecx
	je        L00002CE4
L00002CD6:
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _rpl_lstat
L00002CE1:
	movl      %eax, %r15d
L00002CE4:
	testl     %r15d, %r15d
	je        L00002D2E
L00002CE9:
	call      ___error
L00002CEE:
	movl      (%rax), %ebx
	movq      %r14, %rdi
	call      _quotearg_colon
L00002CF8:
	movq      %rax, %rcx
	leaq      LC0000C806(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L00002D0D:
	cmpb      $0, -372(%rbp)
	movq      -368(%rbp), %rdi
	je        L00002D55
L00002D1D:
	movl      $2, _exit_status(%rip)
	xorl      %ebx, %ebx
	jmp       L000036D3
L00002D2E:
	movb      $1, 176(%rbx,%r13)
	cmpl      $5, -384(%rbp)
	movq      -368(%rbp), %r15
	jne       L00002D85
L00002D47:
	cmpb      $0, _print_with_color(%rip)
	jne       L00002DA9
L00002D50:
	jmp       L00002E48
L00002D55:
	cmpl      $0, _exit_status(%rip)
	jne       L00002D68
L00002D5E:
	movl      $1, _exit_status(%rip)
L00002D68:
	call      _xstrdup
L00002D6D:
	movq      -392(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
	xorl      %ebx, %ebx
	jmp       L000036D3
L00002D85:
	movzwl    20(%rbx,%r13), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	jne       L00002E48
L00002D9B:
	movb      _print_with_color(%rip), %al
	testb     %al, %al
	je        L00002E48
L00002DA9:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        L00002E48
L00002DB9:
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	je        L00002DD3
L00002DC6:
	cmpq      $1, %rax
	jne       L00002DE8
L00002DCC:
	cmpb      $48, (%rdi)
	jne       L00002DE8
L00002DD1:
	jmp       L00002E48
L00002DD3:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00002DE4:
	testl     %eax, %eax
	je        L00002E48
L00002DE8:
	movl      16(%rbx,%r13), %r15d
	movl      _has_capability_cache.unsupported_device(%rip), %ebx
	call      ___error
L00002DF8:
	cmpl      %ebx, %r15d
	movl      $45, (%rax)
	je        L00002E31
L00002E03:
	call      ___error
L00002E08:
	movl      (%rax), %eax
	leal      -45(%rax), %ecx
	cmpl      $57, %ecx
	ja        L00002E22
L00002E12:
	movq      $144115196665790465, %rdx
	btq       %rcx, %rdx
	jb        L00002E27
L00002E22:
	cmpl      $22, %eax
	jne       L00002E31
L00002E27:
	movl      (%r12), %eax
	movl      %eax, _has_capability_cache.unsupported_device(%rip)
L00002E31:
	movq      -360(%rbp), %rbx
	movb      $0, 184(%rbx,%r13)
	movq      -368(%rbp), %r15
L00002E48:
	cmpl      $0, _format(%rip)
	je        L00002E5E
L00002E51:
	cmpb      $1, _print_scontext(%rip)
	jne       L00002FCE
L00002E5E:
	movl      16(%rbx,%r13), %r15d
	movl      _getfilecon_cache.unsupported_device(%rip), %ebx
	call      ___error
L00002E6E:
	cmpl      %ebx, %r15d
	movl      $45, (%rax)
	je        L00002EA7
L00002E79:
	call      ___error
L00002E7E:
	movl      (%rax), %eax
	leal      -45(%rax), %ecx
	cmpl      $57, %ecx
	ja        L00002E98
L00002E88:
	movq      $144115196665790465, %rdx
	btq       %rcx, %rdx
	jb        L00002E9D
L00002E98:
	cmpl      $22, %eax
	jne       L00002EA7
L00002E9D:
	movl      (%r12), %eax
	movl      %eax, _getfilecon_cache.unsupported_device(%rip)
L00002EA7:
	leaq      _UNKNOWN_SECURITY_CONTEXT(%rip), %rax
	movq      -360(%rbp), %rbx
	movq      %rax, 168(%rbx,%r13)
	call      ___error
L00002EC2:
	movl      (%rax), %eax
	cmpl      $45, %eax
	je        L00002EDD
L00002EC9:
	cmpl      $102, %eax
	je        L00002EDD
L00002ECE:
	call      ___error
L00002ED3:
	movl      $1, %ecx
	cmpl      $96, (%rax)
	jne       L00002EDF
L00002EDD:
	xorl      %ecx, %ecx
L00002EDF:
	movl      _format(%rip), %eax
	orl       %ecx, %eax
	movq      -368(%rbp), %r15
	je        L00002EF7
L00002EF0:
	xorl      %eax, %eax
	jmp       L00002F82
L00002EF7:
	movl      (%r12), %r15d
	movl      _file_has_acl_cache.unsupported_device(%rip), %ebx
	call      ___error
L00002F06:
	cmpl      %ebx, %r15d
	jne       L00002F1C
L00002F0B:
	movl      $45, (%rax)
	xorl      %ebx, %ebx
	movq      -368(%rbp), %r15
	jmp       L00002F71
L00002F1C:
	movl      $0, (%rax)
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _file_has_acl
L00002F2D:
	movl      %eax, %ebx
	testl     %ebx, %ebx
	jle       L00002F3C
L00002F33:
	movq      -368(%rbp), %r15
	jmp       L00002F71
L00002F3C:
	call      ___error
L00002F41:
	movl      (%rax), %eax
	leal      -45(%rax), %ecx
	cmpl      $57, %ecx
	movq      -368(%rbp), %r15
	ja        L00002F62
L00002F52:
	movq      $144115196665790465, %rdx
	btq       %rcx, %rdx
	jb        L00002F67
L00002F62:
	cmpl      $22, %eax
	jne       L00002F71
L00002F67:
	movl      (%r12), %eax
	movl      %eax, _file_has_acl_cache.unsupported_device(%rip)
L00002F71:
	movl      %ebx, %ecx
	shrl      $31, %ecx
	testl     %ebx, %ebx
	setg      %al
	movq      -360(%rbp), %rbx
L00002F82:
	movzbl    %al, %eax
	leal      (%rax,%rax), %edx
	movl      %edx, 180(%rbx,%r13)
	movzbl    _any_has_acl(%rip), %edx
	orl       %eax, %edx
	movb      %dl, _any_has_acl(%rip)
	testl     %ecx, %ecx
	je        L00002FCE
L00002FA3:
	call      ___error
L00002FA8:
	movl      (%rax), %ebx
	movq      %r14, %rdi
	call      _quotearg_colon
L00002FB2:
	movq      %rax, %rcx
	leaq      LC0000C817(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	movq      -360(%rbp), %rbx
	call      _error
L00002FCE:
	leaq      20(%rbx,%r13), %r12
	movzwl    20(%rbx,%r13), %eax
	movl      %eax, %ecx
	andl      $61440, %ecx
	cmpl      $40960, %ecx
	jne       L00003199
L00002FED:
	cmpl      $0, _format(%rip)
	je        L00003003
L00002FF6:
	cmpb      $1, _check_symlink_color(%rip)
	jne       L00003199
L00003003:
	movq      %r12, -384(%rbp)
	movq      112(%rbx,%r13), %rsi
	movq      %r14, %rdi
	call      _areadlink_with_size
L00003017:
	movq      %rax, %r12
	movq      %r12, 8(%rbx,%r13)
	testq     %r12, %r12
	jne       L00003088
L00003024:
	leaq      8(%rbx,%r13), %r15
	call      ___error
L0000302E:
	movl      (%rax), %ebx
	movq      %r14, %rdi
	call      _quotearg_colon
L00003038:
	movq      %rax, %rcx
	leaq      LC0000C81A(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
L0000304D:
	cmpb      $0, -372(%rbp)
	je        L00003062
L00003056:
	movl      $2, _exit_status(%rip)
	jmp       L00003075
L00003062:
	cmpl      $0, _exit_status(%rip)
	jne       L00003075
L0000306B:
	movl      $1, _exit_status(%rip)
L00003075:
	movq      (%r15), %r12
	testq     %r12, %r12
	movq      -368(%rbp), %r15
	je        L0000317C
L00003088:
	cmpb      $47, (%r12)
	jne       L0000309C
L0000308F:
	movq      %r12, %rdi
	call      _xstrdup
L00003097:
	movq      %rax, %rbx
	jmp       L000030F9
L0000309C:
	movq      %r14, %rdi
	call      _dir_len
L000030A4:
	movq      %rax, %r15
	testq     %r15, %r15
	je        L000030E7
L000030AC:
	movq      %r12, %rdi
	call      _strlen
L000030B4:
	leaq      2(%r15,%rax), %rdi
	call      _xmalloc
L000030BE:
	movq      %rax, %rbx
	xorl      %edx, %edx
	cmpb      $47, -1(%r14,%r15)
	setne     %dl
	addq      %r15, %rdx
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _stpncpy
L000030DA:
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _stpcpy
L000030E5:
	jmp       L000030F2
L000030E7:
	movq      %r12, %rdi
	call      _xstrdup
L000030EF:
	movq      %rax, %rbx
L000030F2:
	movq      -368(%rbp), %r15
L000030F9:
	testq     %rbx, %rbx
	movq      -384(%rbp), %r12
	je        L00003178
L00003105:
	cmpl      $1, _indicator_style(%rip)
	ja        L00003117
L0000310E:
	cmpb      $1, _check_symlink_color(%rip)
	jne       L00003185
L00003117:
	leaq      -320(%rbp), %rsi
	movq      %rbx, %rdi
	call      _rpl_stat
L00003126:
	testl     %eax, %eax
	jne       L00003185
L0000312A:
	movq      -360(%rbp), %rax
	movb      $1, 177(%rax,%r13)
	movzwl    -316(%rbp), %eax
	cmpl      $0, _format(%rip)
	je        L00003166
L0000314A:
	cmpb      $0, -372(%rbp)
	je        L00003166
L00003153:
	movl      %eax, %ecx
	andl      $61440, %ecx
	movzwl    %cx, %ecx
	cmpl      $16384, %ecx
	je        L00003185
L00003166:
	movq      -360(%rbp), %rcx
	movw      %ax, 164(%rcx,%r13)
	jmp       L00003185
L00003178:
	xorl      %ebx, %ebx
	jmp       L00003185
L0000317C:
	xorl      %ebx, %ebx
	movq      -384(%rbp), %r12
L00003185:
	movq      %rbx, %rdi
	call      _free
L0000318D:
	movw      (%r12), %ax
	movq      -360(%rbp), %rbx
L00003199:
	leaq      160(%rbx,%r13), %rcx
	andl      $61440, %eax
	cmpl      $16384, %eax
	je        L000031BF
L000031AD:
	movzwl    %ax, %eax
	cmpl      $40960, %eax
	jne       L000031DA
L000031B7:
	movl      $6, (%rcx)
	jmp       L000031E8
L000031BF:
	cmpb      $0, -372(%rbp)
	je        L000031D2
L000031C8:
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	je        L000031E2
L000031D2:
	movl      $3, (%rcx)
	jmp       L000031E8
L000031DA:
	movl      $5, (%rcx)
	jmp       L000031E8
L000031E2:
	movl      $9, (%rcx)
L000031E8:
	movq      120(%rbx,%r13), %rbx
	cmpl      $0, _format(%rip)
	je        L00003203
L000031F6:
	cmpb      $1, _print_block_size(%rip)
	jne       L0000340A
L00003203:
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	movq      %rbx, %rdi
	call      _human_readable
L00003224:
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L0000322E:
	cmpl      %eax, _block_size_width(%rip)
	jge       L0000323C
L00003236:
	movl      %eax, _block_size_width(%rip)
L0000323C:
	cmpl      $0, _format(%rip)
	jne       L0000340A
L00003249:
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       L000032DF
L00003257:
	movq      -360(%rbp), %rax
	movl      32(%rax,%r13), %r14d
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	jne       L00003298
L0000326D:
	movl      %r14d, %edi
	call      _getuser
L00003275:
	testq     %rax, %rax
	je        L00003298
L0000327A:
	xorl      %r14d, %r14d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L00003287:
	testl     %eax, %eax
	cmovns    %eax, %r14d
	cmpl      %r14d, _owner_width(%rip)
	jl        L000032D8
L00003296:
	jmp       L000032DF
L00003298:
	leaq      LC0000C837(%rip), %rcx
	leaq      -320(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r14, %r8
	call      ___sprintf_chk
L000032BD:
	movq      %r15, %rdi
	movq      -368(%rbp), %r15
	call      _strlen
L000032CC:
	movq      %rax, %r14
	cmpl      %r14d, _owner_width(%rip)
	jge       L000032DF
L000032D8:
	movl      %r14d, _owner_width(%rip)
L000032DF:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       L00003375
L000032ED:
	movq      -360(%rbp), %rax
	movl      36(%rax,%r13), %r14d
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	jne       L0000332E
L00003303:
	movl      %r14d, %edi
	call      _getgroup
L0000330B:
	testq     %rax, %rax
	je        L0000332E
L00003310:
	xorl      %r14d, %r14d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L0000331D:
	testl     %eax, %eax
	cmovns    %eax, %r14d
	cmpl      %r14d, _group_width(%rip)
	jl        L0000336E
L0000332C:
	jmp       L00003375
L0000332E:
	leaq      LC0000C837(%rip), %rcx
	leaq      -320(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r14, %r8
	call      ___sprintf_chk
L00003353:
	movq      %r15, %rdi
	movq      -368(%rbp), %r15
	call      _strlen
L00003362:
	movq      %rax, %r14
	cmpl      %r14d, _group_width(%rip)
	jge       L00003375
L0000336E:
	movl      %r14d, _group_width(%rip)
L00003375:
	cmpb      $1, _print_author(%rip)
	jne       L0000340A
L00003382:
	movq      -360(%rbp), %rax
	movl      32(%rax,%r13), %r14d
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	jne       L000033C3
L00003398:
	movl      %r14d, %edi
	call      _getuser
L000033A0:
	testq     %rax, %rax
	je        L000033C3
L000033A5:
	xorl      %r14d, %r14d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L000033B2:
	testl     %eax, %eax
	cmovns    %eax, %r14d
	cmpl      %r14d, _author_width(%rip)
	jl        L00003403
L000033C1:
	jmp       L0000340A
L000033C3:
	leaq      LC0000C837(%rip), %rcx
	leaq      -320(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r14, %r8
	call      ___sprintf_chk
L000033E8:
	movq      %r15, %rdi
	movq      -368(%rbp), %r15
	call      _strlen
L000033F7:
	movq      %rax, %r14
	cmpl      %r14d, _author_width(%rip)
	jge       L0000340A
L00003403:
	movl      %r14d, _author_width(%rip)
L0000340A:
	cmpb      $1, _print_scontext(%rip)
	jne       L00003435
L00003413:
	movq      -360(%rbp), %rax
	movq      168(%rax,%r13), %rdi
	call      _strlen
L00003427:
	cmpl      %eax, _scontext_width(%rip)
	jge       L00003435
L0000342F:
	movl      %eax, _scontext_width(%rip)
L00003435:
	cmpl      $0, _format(%rip)
	jne       L00003540
L00003442:
	movq      -360(%rbp), %rax
	movzwl    22(%rax,%r13), %edi
	leaq      -352(%rbp), %rsi
	call      _umaxtostr
L0000345B:
	movq      %rax, %rdi
	call      _strlen
L00003463:
	cmpl      %eax, _nlink_width(%rip)
	jge       L00003471
L0000346B:
	movl      %eax, _nlink_width(%rip)
L00003471:
	movzwl    (%r12), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       L000034FE
L00003487:
	movq      -360(%rbp), %rax
	leaq      40(%rax,%r13), %r14
	movzbl    43(%rax,%r13), %edi
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
L000034A5:
	movq      %rax, %rdi
	call      _strlen
L000034AD:
	cmpl      %eax, _major_device_number_width(%rip)
	jge       L000034BB
L000034B5:
	movl      %eax, _major_device_number_width(%rip)
L000034BB:
	movl      (%r14), %edi
	andl      $16777215, %edi
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
L000034D0:
	movq      %rax, %rdi
	call      _strlen
L000034D8:
	movl      _minor_device_number_width(%rip), %ecx
	cmpl      %eax, %ecx
	jge       L000034EA
L000034E2:
	movl      %eax, _minor_device_number_width(%rip)
	movl      %eax, %ecx
L000034EA:
	movl      _major_device_number_width(%rip), %eax
	leal      2(%rax,%rcx), %eax
	cmpl      %eax, _file_size_width(%rip)
	jl        L0000353A
L000034FC:
	jmp       L00003540
L000034FE:
	movq      -360(%rbp), %rax
	movq      112(%rax,%r13), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $1, %ecx
	call      _human_readable
L00003528:
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
L00003532:
	cmpl      %eax, _file_size_width(%rip)
	jge       L00003540
L0000353A:
	movl      %eax, _file_size_width(%rip)
L00003540:
	cmpb      $1, _print_inode(%rip)
	jne       L000036BA
L0000354D:
	movq      -360(%rbp), %rax
	leaq      24(%rax,%r13), %rax
	movq      (%rax), %rdi
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
L00003568:
	movq      %rax, %rdi
	call      _strlen
L00003570:
	cmpl      %eax, _inode_number_width(%rip)
	jge       L000036BA
L0000357C:
	movl      %eax, _inode_number_width(%rip)
	jmp       L000036BA
L00003587:
	testb     %bl, %bl
	je        L000036AB
L0000358F:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        L000035D6
L0000359B:
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	je        L000035BD
L000035A8:
	cmpq      $1, %rax
	jne       L00002BAB
L000035B2:
	cmpb      $48, (%rdi)
	jne       L00002BAB
L000035BB:
	jmp       L000035D6
L000035BD:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000035CE:
	testl     %eax, %eax
	jne       L00002BAB
L000035D6:
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        L0000361D
L000035E2:
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	je        L00003604
L000035EF:
	cmpq      $1, %rax
	jne       L00002BAB
L000035F9:
	cmpb      $48, (%rdi)
	jne       L00002BAB
L00003602:
	jmp       L0000361D
L00003604:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00003615:
	testl     %eax, %eax
	jne       L00002BAB
L0000361D:
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        L00003664
L00003629:
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	je        L0000364B
L00003636:
	cmpq      $1, %rax
	jne       L00002BAB
L00003640:
	cmpb      $48, (%rdi)
	jne       L00002BAB
L00003649:
	jmp       L00003664
L0000364B:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000365C:
	testl     %eax, %eax
	jne       L00002BAB
L00003664:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        L000036AB
L00003670:
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	je        L00003692
L0000367D:
	cmpq      $1, %rax
	jne       L00002BAB
L00003687:
	cmpb      $48, (%rdi)
	jne       L00002BAB
L00003690:
	jmp       L000036AB
L00003692:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000036A3:
	testl     %eax, %eax
	jne       L00002BAB
L000036AB:
	xorl      %ebx, %ebx
	cmpb      $1, _print_inode(%rip)
	je        L0000354D
L000036BA:
	movq      %r15, %rdi
	call      _xstrdup
L000036C2:
	movq      -392(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
L000036D3:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L000036F5
L000036E3:
	movq      %rbx, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000036F5:
	call      ___stack_chk_fail
L000036FA:
	call      _xalloc_die
L000036FF:
	.align 4, 0x90
# ----------------------
_sort_files:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	movq      _cwd_n_used(%rip), %rax
	movq      %rax, %rcx
	shrq      $1, %rcx
	addq      %rax, %rcx
	cmpq      %rcx, _sorted_file_alloc(%rip)
	jae       L0000376C
L00003720:
	movq      _sorted_file(%rip), %rdi
	call      _free
L0000372C:
	movq      _cwd_n_used(%rip), %rax
	movq      $768614336404564651, %rcx
	cmpq      %rcx, %rax
	jae       L0000397C
L00003746:
	shlq      $3, %rax
	leaq      (%rax,%rax,2), %rdi
	call      _xmalloc
L00003753:
	movq      %rax, _sorted_file(%rip)
	movq      _cwd_n_used(%rip), %rax
	leaq      (%rax,%rax,2), %rcx
	movq      %rcx, _sorted_file_alloc(%rip)
L0000376C:
	testq     %rax, %rax
	je        L00003823
L00003775:
	movq      _cwd_file(%rip), %rdx
	movq      _sorted_file(%rip), %r8
	cmpq      $4, %rax
	jb        L000037F2
L00003789:
	movq      %rax, %r9
	andq      $-4, %r9
	je        L000037F2
L00003792:
	leaq      16(%r8), %rdi
	movq      %r9, %rsi
	movq      %rdx, %rcx
	.align 4, 0x90
L000037A0:
	leaq      192(%rcx), %r10
	leaq      384(%rcx), %r11
	leaq      576(%rcx), %rbx
	movd      %rcx, %xmm0
	movd      %r10, %xmm1
	punpcklqdq %xmm1, %xmm0
	movd      %rbx, %xmm1
	movd      %r11, %xmm2
	punpcklqdq %xmm1, %xmm2
	movdqu    %xmm0, -16(%rdi)
	movdqu    %xmm2, (%rdi)
	addq      $768, %rcx
	addq      $32, %rdi
	addq      $-4, %rsi
	jne       L000037A0
L000037EB:
	cmpq      %r9, %rax
	jne       L000037F5
L000037F0:
	jmp       L00003823
L000037F2:
	xorl      %r9d, %r9d
L000037F5:
	subq      %r9, %rax
	leaq      (%r8,%r9,8), %rcx
	leaq      (%r9,%r9,2), %rsi
	shlq      $6, %rsi
	addq      %rsi, %rdx
	.align 4, 0x90
L00003810:
	movq      %rdx, (%rcx)
	addq      $8, %rcx
	addq      $192, %rdx
	decq      %rax
	jne       L00003810
L00003823:
	cmpl      $-1, _sort_type(%rip)
	je        L00003977
L00003830:
	leaq      _failed_strcoll(%rip), %rdi
	call      _setjmp
L0000383C:
	testl     %eax, %eax
	je        L000038E7
L00003844:
	movl      _sort_type(%rip), %r8d
	cmpl      $3, %r8d
	je        L00003981
L00003855:
	movq      _cwd_n_used(%rip), %rsi
	testq     %rsi, %rsi
	je        L00003925
L00003865:
	movq      _cwd_file(%rip), %rcx
	movq      _sorted_file(%rip), %r9
	cmpq      $4, %rsi
	jb        L000038F9
L0000387D:
	movq      %rsi, %rdi
	andq      $-4, %rdi
	je        L000038F9
L00003886:
	leaq      16(%r9), %rax
	movq      %rdi, %r10
	movq      %rcx, %rdx
L00003890:
	leaq      192(%rdx), %rbx
	leaq      384(%rdx), %r11
	leaq      576(%rdx), %r14
	movd      %rdx, %xmm0
	movd      %rbx, %xmm1
	punpcklqdq %xmm1, %xmm0
	movd      %r14, %xmm1
	movd      %r11, %xmm2
	punpcklqdq %xmm1, %xmm2
	movdqu    %xmm0, -16(%rax)
	movdqu    %xmm2, (%rax)
	addq      $768, %rdx
	addq      $32, %rax
	addq      $-4, %r10
	jne       L00003890
L000038DB:
	cmpq      %rdi, %rsi
	jne       L000038FB
L000038E0:
	movl      $1, %eax
	jmp       L0000392C
L000038E7:
	movq      _cwd_n_used(%rip), %rsi
	movl      _sort_type(%rip), %r8d
	xorl      %eax, %eax
	jmp       L0000392C
L000038F9:
	xorl      %edi, %edi
L000038FB:
	leaq      (%rdi,%rdi,2), %rax
	shlq      $6, %rax
	addq      %rax, %rcx
	movl      $1, %eax
	.align 4, 0x90
L00003910:
	movq      %rcx, (%r9,%rdi,8)
	incq      %rdi
	addq      $192, %rcx
	cmpq      %rdi, %rsi
	jne       L00003910
L00003923:
	jmp       L0000392C
L00003925:
	movl      $1, %eax
	xorl      %esi, %esi
L0000392C:
	movq      _sorted_file(%rip), %rdi
	xorl      %ecx, %ecx
	cmpl      $4, %r8d
	cmove     _time_type(%rip), %ecx
	addl      %r8d, %ecx
	movzbl    _sort_reverse(%rip), %edx
	movzbl    _directories_first(%rip), %r8d
	shlq      $6, %rcx
	leaq      _sort_functions(%rip), %rbx
	addq      %rcx, %rbx
	shlq      $5, %rax
	addq      %rbx, %rax
	shlq      $4, %rdx
	addq      %rax, %rdx
	movq      (%rdx,%r8,8), %rdx
	call      _mpsort
L00003977:
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
L0000397C:
	call      _xalloc_die
L00003981:
	leaq      LC0000C83B(%rip), %rdi
	leaq      LC0000A4B0(%rip), %rsi
	leaq      LC0000C846(%rip), %rcx
	movl      $3600, %edx
	call      ___assert_rtn
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
	movl      %esi, -44(%rbp)
	movq      %rdi, -56(%rbp)
	testq     %rdi, %rdi
	je        L00003A00
L000039BD:
	movq      _active_dir_set(%rip), %rax
	testq     %rax, %rax
	je        L00003A00
L000039C9:
	movl      $32, %edi
	call      _xmalloc
L000039D3:
	movq      %rax, %rbx
	movq      -56(%rbp), %rdi
	call      _xstrdup
L000039DF:
	movq      %rax, 8(%rbx)
	movq      $0, (%rbx)
	movb      $0, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
L00003A00:
	movq      _cwd_n_used(%rip), %r14
	testq     %r14, %r14
	je        L00003C2E
L00003A10:
	movq      _sorted_file(%rip), %rax
	movq      -8(%rax,%r14,8), %r15
	decq      %r14
	movl      160(%r15), %eax
	cmpl      $9, %eax
	je        L00003A34
L00003A2B:
	cmpl      $3, %eax
	jne       L00003B58
L00003A34:
	cmpq      $0, -56(%rbp)
	movq      (%r15), %r12
	je        L00003A70
L00003A3E:
	movq      %r12, %rdi
	call      _last_component
L00003A46:
	cmpb      $46, (%rax)
	jne       L00003A69
L00003A4B:
	xorl      %ecx, %ecx
	cmpb      $46, 1(%rax)
	sete      %cl
	movzbl    1(%rax,%rcx), %eax
	testb     %al, %al
	je        L00003B58
L00003A61:
	cmpb      $47, %al
	je        L00003B58
L00003A69:
	cmpb      $47, (%r12)
	jne       L00003AD1
L00003A70:
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
L00003A7E:
	movq      %rax, %rbx
	testq     %r13, %r13
	je        L00003A90
L00003A86:
	movq      %r13, %rdi
	call      _xstrdup
L00003A8E:
	jmp       L00003A92
L00003A90:
	xorl      %eax, %eax
L00003A92:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	je        L00003AA5
L00003A9B:
	movq      %r12, %rdi
	call      _xstrdup
L00003AA3:
	jmp       L00003AA7
L00003AA5:
	xorl      %eax, %eax
L00003AA7:
	movq      %rax, (%rbx)
	movl      -44(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	cmpl      $9, 160(%r15)
	je        L00003B47
L00003ACC:
	jmp       L00003B58
L00003AD1:
	xorl      %edx, %edx
	movq      -56(%rbp), %rdi
	movq      %r12, %rsi
	call      _file_name_concat
L00003ADF:
	movq      %rax, %r12
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
L00003AF0:
	movq      %rax, %rbx
	testq     %r13, %r13
	movl      $0, %eax
	je        L00003B05
L00003AFD:
	movq      %r13, %rdi
	call      _xstrdup
L00003B05:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	je        L00003B18
L00003B0E:
	movq      %r12, %rdi
	call      _xstrdup
L00003B16:
	jmp       L00003B1A
L00003B18:
	xorl      %eax, %eax
L00003B1A:
	movq      %rax, (%rbx)
	movl      -44(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	movq      %r12, %rdi
	call      _free
L00003B3D:
	cmpl      $9, 160(%r15)
	jne       L00003B58
L00003B47:
	movq      (%r15), %rdi
	call      _free
L00003B4F:
	movq      8(%r15), %rdi
	call      _free
L00003B58:
	testq     %r14, %r14
	jne       L00003A10
L00003B61:
	movq      _cwd_n_used(%rip), %r9
	testq     %r9, %r9
	je        L00003C2E
L00003B71:
	movq      _sorted_file(%rip), %rcx
	leaq      -1(%r9), %r8
	movq      %r9, %rax
	xorl      %edx, %edx
	xorl      %esi, %esi
	andq      $3, %rax
	je        L00003BAF
L00003B89:
	.align 4, 0x90
L00003B90:
	movq      (%rcx,%rdx,8), %rdi
	movq      %rdi, (%rcx,%rsi,8)
	xorl      %ebx, %ebx
	cmpl      $9, 160(%rdi)
	setne     %bl
	addq      %rbx, %rsi
	incq      %rdx
	cmpq      %rdx, %rax
	jne       L00003B90
L00003BAF:
	cmpq      $3, %r8
	jb        L00003C30
L00003BB5:
	.align 4, 0x90
L00003BC0:
	movq      (%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rsi,8)
	xorl      %edi, %edi
	cmpl      $9, 160(%rax)
	setne     %dil
	addq      %rsi, %rdi
	movq      8(%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rdi,8)
	xorl      %esi, %esi
	cmpl      $9, 160(%rax)
	setne     %sil
	addq      %rdi, %rsi
	movq      16(%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rsi,8)
	xorl      %edi, %edi
	cmpl      $9, 160(%rax)
	setne     %dil
	addq      %rsi, %rdi
	movq      24(%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rdi,8)
	xorl      %esi, %esi
	cmpl      $9, 160(%rax)
	setne     %sil
	addq      %rdi, %rsi
	addq      $4, %rdx
	cmpq      %r9, %rdx
	jb        L00003BC0
L00003C2C:
	jmp       L00003C30
L00003C2E:
	xorl      %esi, %esi
L00003C30:
	movq      %rsi, _cwd_n_used(%rip)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00003C46:
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
	subq      $3240, %rsp
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movl      _format(%rip), %eax
	cmpq      $4, %rax
	ja        L00004CE8
L00003C82:
	leaq      L00004D14(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00003C92:
	cmpq      $0, _cwd_n_used(%rip)
	je        L00004CE8
L00003CA0:
	leaq      -3200(%rbp), %r15
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	xorl      %ebx, %ebx
	jmp       L00004160
L00003CB5:
	cmpq      $0, _cwd_n_used(%rip)
	je        L00004CE8
L00003CC3:
	xorl      %ebx, %ebx
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	.align 4, 0x90
L00003CD0:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %rdi
	xorl      %esi, %esi
	call      _print_file_name_and_frills
L00003CE2:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00003D10
L00003CF2:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00003D1A
L00003D01:
	.align 4, 0x90
L00003D10:
	movl      $10, %edi
	call      ___swbuf
L00003D1A:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00003CD0
L00003D26:
	jmp       L00004CE8
L00003D2B:
	movl      $1, %edi
	call      _calculate_columns
L00003D35:
	movq      %rax, %rcx
	movq      _cwd_n_used(%rip), %rax
	xorl      %edx, %edx
	divq      %rcx
	xorl      %r15d, %r15d
	testq     %rdx, %rdx
	setne     %r15b
	addq      %rax, %r15
	je        L00004CE8
L00003D57:
	leaq      (%rcx,%rcx,2), %rax
	movq      _column_info(%rip), %rcx
	leaq      -8(%rcx,%rax,8), %r12
	xorl      %ebx, %ebx
	movq      %r15, -3280(%rbp)
	movq      %r12, -3248(%rbp)
	.align 4, 0x90
L00003D80:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r13
	movq      %r13, %rdi
	call      _length_of_file_name_and_frills
L00003D93:
	movq      %rax, %r14
	movq      (%r12), %rax
	movq      (%rax), %rax
	movq      %rax, -3240(%rbp)
	xorl      %esi, %esi
	movq      %r13, %rdi
	call      _print_file_name_and_frills
L00003DAE:
	movq      %rbx, -3272(%rbp)
	leaq      (%rbx,%r15), %r12
	cmpq      _cwd_n_used(%rip), %r12
	jae       L00003E31
L00003DC2:
	movl      $1, %r13d
	xorl      %ebx, %ebx
	.align 4, 0x90
L00003DD0:
	addq      %rbx, %r14
	addq      -3240(%rbp), %rbx
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _indent
L00003DE5:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r12,8), %r15
	movq      %r15, %rdi
	call      _length_of_file_name_and_frills
L00003DF8:
	movq      %rax, %r14
	movq      -3248(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r13,8), %rax
	movq      %rax, -3240(%rbp)
	movq      %r15, %rdi
	movq      -3280(%rbp), %r15
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
L00003E22:
	addq      %r15, %r12
	incq      %r13
	cmpq      _cwd_n_used(%rip), %r12
	jb        L00003DD0
L00003E31:
	movq      -3248(%rbp), %rbx
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00003E60
L00003E4F:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00003E6A
L00003E5E:
	.align 4, 0x90
L00003E60:
	movl      $10, %edi
	call      ___swbuf
L00003E6A:
	movq      %rbx, %r12
	movq      -3272(%rbp), %rbx
	incq      %rbx
	cmpq      %r15, %rbx
	jb        L00003D80
L00003E80:
	jmp       L00004CE8
L00003E85:
	xorl      %edi, %edi
	call      _calculate_columns
L00003E8C:
	movq      _column_info(%rip), %r15
	movq      %rax, -3240(%rbp)
	leaq      (%rax,%rax,2), %r13
	movq      _sorted_file(%rip), %rax
	movq      (%rax), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
L00003EB0:
	movq      %rax, %r12
	movq      -8(%r15,%r13,8), %rax
	movq      (%rax), %rbx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _print_file_name_and_frills
L00003EC5:
	cmpq      $2, _cwd_n_used(%rip)
	jb        L000040C0
L00003ED3:
	leaq      -8(%r15,%r13,8), %rax
	movq      %rax, -3248(%rbp)
	xorl      %r15d, %r15d
	movl      $1, %r14d
	.align 4, 0x90
L00003EF0:
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -3240(%rbp)
	movq      %rdx, %r13
	testq     %r13, %r13
	je        L00003F20
L00003F04:
	addq      %r15, %r12
	addq      %rbx, %r15
	movq      %r12, %rdi
	movq      %r15, %rsi
	call      _indent
L00003F15:
	jmp       L00003F53
L00003F17:
	.align 4, 0x90
L00003F20:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00003F46
L00003F37:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00003F50
L00003F46:
	movl      $10, %edi
	call      ___swbuf
L00003F50:
	xorl      %r15d, %r15d
L00003F53:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r14,8), %rbx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _print_file_name_and_frills
L00003F69:
	movq      %rbx, %rdi
	call      _length_of_file_name_and_frills
L00003F71:
	movq      %rax, %r12
	movq      -3248(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r13,8), %rbx
	incq      %r14
	cmpq      _cwd_n_used(%rip), %r14
	jb        L00003EF0
L00003F92:
	jmp       L000040C0
L00003F97:
	cmpq      $0, _cwd_n_used(%rip)
	je        L000040C0
L00003FA5:
	xorl      %r13d, %r13d
	xorl      %ebx, %ebx
	jmp       L00003FF0
L00003FAC:
	movq      %rdi, -3248(%rbp)
	movl      $44, %edi
	movq      %rdx, -3240(%rbp)
	call      ___swbuf
L00003FC4:
	movq      -3248(%rbp), %rdi
	movq      -3240(%rbp), %rdx
	jmp       L00004067
L00003FD7:
	movl      %r12d, %edi
	call      ___swbuf
L00003FDF:
	jmp       L000040A2
L00003FE4:
	.align 4, 0x90
L00003FF0:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r13,8), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
L00004003:
	movq      %rax, %r15
	testq     %r13, %r13
	je        L000040A2
L0000400F:
	leaq      2(%r15,%rbx), %rdx
	addq      $2, %rbx
	movq      _line_length(%rip), %rdi
	cmpq      %rdi, %rdx
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
	jg        L0000405A
L00004051:
	cmpl      40(%rsi), %eax
	jle       L00003FAC
L0000405A:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $44, (%rax)
L00004067:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00004095
L0000407E:
	cmpq      %rdi, %rdx
	setae     %cl
	cmpl      40(%rsi), %eax
	jle       L00003FD7
L0000408D:
	testb     %cl, %cl
	jne       L00003FD7
L00004095:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %r12b, (%rax)
L000040A2:
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
L000040AD:
	addq      %r15, %rbx
	incq      %r13
	cmpq      _cwd_n_used(%rip), %r13
	jb        L00003FF0
L000040C0:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L000040E9
L000040D7:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00004CE8
L000040E9:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00004D0F
L000040FD:
	movl      $10, %edi
	addq      $3240, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       ___swbuf
L00004118:
	decl      %ecx
	cmpl      $7, %ecx
	jae       L00004C97
L00004123:
	shlb      $3, %cl
	movq      $17240342323527804, %rax
	shrq      %cl, %rax
	testb     %al, %al
	jne       L00004C4D
L0000413B:
	jmp       L00004C97
L00004140:
	movb      $64, %al
	jmp       L00004BF1
L00004147:
	movb      $61, %al
	jmp       L00004BF1
L0000414E:
	movb      $64, %al
	jmp       L00004C4D
L00004155:
	movb      $61, %al
	jmp       L00004C4D
L0000415C:
	.align 4, 0x90
L00004160:
	cmpb      $0, _print_with_color(%rip)
	je        L000042DF
L0000416D:
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        L000042DF
L0000417D:
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	je        L0000419A
L0000418A:
	cmpq      $1, %rax
	jne       L000041B3
L00004190:
	cmpb      $48, (%rdi)
	jne       L000041B3
L00004195:
	jmp       L000042DF
L0000419A:
	movl      $2, %edx
	leaq      LC0000C0D5(%rip), %rsi
	call      _strncmp
L000041AB:
	testl     %eax, %eax
	je        L000042DF
L000041B3:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000041FB
L000041BD:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L000041D7
L000041CE:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000041F6
L000041D7:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000041E3:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000041EF:
	leaq      _color_indicator+16(%rip), %rdi
L000041F6:
	call      _put_indicator
L000041FB:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
L00004217:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000425F
L00004221:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L0000423B
L00004232:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L0000425A
L0000423B:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00004247:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00004253:
	leaq      _color_indicator+16(%rip), %rdi
L0000425A:
	call      _put_indicator
L0000425F:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
L0000427B:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000042C3
L00004285:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L0000429F
L00004296:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000042BE
L0000429F:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000042AB:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000042B7:
	leaq      _color_indicator+16(%rip), %rdi
L000042BE:
	call      _put_indicator
L000042C3:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
L000042DF:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r12
	cmpb      $0, 176(%r12)
	je        L00004320
L000042F5:
	leaq      16(%r12), %rdi
	leaq      -1068(%rbp), %rsi
	call      _filemodestring
L00004306:
	cmpb      $0, _any_has_acl(%rip)
	jne       L00004362
L0000430F:
	jmp       L00004380
L00004311:
	.align 4, 0x90
L00004320:
	movl      160(%r12), %eax
	leaq      _filetype_letter(%rip), %rcx
	movb      (%rax,%rcx), %al
	movb      %al, -1068(%rbp)
	leaq      -1067(%rbp), %rax
	movq      $4557430888798830399, %rcx
	movq      %rcx, (%rax)
	movw      $16191, 8(%rax)
	movb      $0, -1057(%rbp)
	cmpb      $0, _any_has_acl(%rip)
	je        L00004380
L00004362:
	movl      180(%r12), %eax
	cmpl      $2, %eax
	je        L00004390
L0000436F:
	cmpl      $1, %eax
	jne       L00004397
L00004374:
	movb      $46, -1058(%rbp)
	jmp       L00004397
L0000437D:
	.align 4, 0x90
L00004380:
	movb      $0, -1058(%rbp)
	jmp       L00004397
L00004389:
	.align 4, 0x90
L00004390:
	movb      $43, -1058(%rbp)
L00004397:
	movl      _time_type(%rip), %eax
	testl     %eax, %eax
	movq      %rbx, -3240(%rbp)
	je        L000043C0
L000043A8:
	cmpl      $2, %eax
	je        L000043D0
L000043AD:
	cmpl      $1, %eax
	jne       L00004D0A
L000043B6:
	movups    80(%r12), %xmm0
	jmp       L000043D6
L000043BE:
	.align 4, 0x90
L000043C0:
	movups    64(%r12), %xmm0
	jmp       L000043D6
L000043C8:
	.align 4, 0x90
L000043D0:
	movups    48(%r12), %xmm0
L000043D6:
	movaps    %xmm0, -3264(%rbp)
	cmpb      $1, _print_inode(%rip)
	movq      %r15, %r14
	jne       L0000444C
L000043E9:
	movl      _inode_number_width(%rip), %ebx
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %r9
	je        L00004421
L00004401:
	movq      24(%r12), %rdi
	testq     %rdi, %rdi
	leaq      LC0000C889(%rip), %r9
	je        L00004421
L00004412:
	leaq      -1056(%rbp), %rsi
	call      _umaxtostr
L0000441E:
	movq      %rax, %r9
L00004421:
	xorl      %esi, %esi
	movl      $2123, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000C884(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
L0000443C:
	movq      %r15, %rdi
	call      _strlen
L00004444:
	leaq      -3200(%rbp,%rax), %r14
L0000444C:
	cmpb      $1, _print_block_size(%rip)
	jne       L00004515
L00004459:
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %rbx
	je        L00004491
L0000446B:
	movq      120(%r12), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	movl      $512, %ecx
	leaq      -1056(%rbp), %rsi
	call      _human_readable
L0000448E:
	movq      %rax, %rbx
L00004491:
	movl      _block_size_width(%rip), %r15d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
L000044A2:
	movl      %eax, %r13d
	cmpl      %r13d, %r15d
	jle       L000044F5
L000044AA:
	movl      %r15d, %eax
	notl      %eax
	addl      %r13d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15), %edx
	subl      %r13d, %edx
	addl      %eax, %edx
	incq      %rdx
	movl      $32, %esi
	movq      %r14, %rdi
	call      _memset
L000044D6:
	leal      -1(%r13), %eax
	subl      %r15d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15,%rax), %eax
	subl      %r13d, %eax
	leaq      1(%r14,%rax), %r14
L000044F5:
	leaq      -3200(%rbp), %r15
	.align 4, 0x90
L00004500:
	movzbl    (%rbx), %eax
	incq      %rbx
	movb      %al, (%r14)
	incq      %r14
	testb     %al, %al
	jne       L00004500
L00004510:
	movb      $32, -1(%r14)
L00004515:
	movl      _nlink_width(%rip), %r13d
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %rbx
	je        L00004543
L0000452E:
	movzwl    22(%r12), %edi
	leaq      -1056(%rbp), %rsi
	call      _umaxtostr
L00004540:
	movq      %rax, %rbx
L00004543:
	subq      $8, %rsp
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r14, %rdi
	leaq      LC0000C896(%rip), %rcx
	leaq      -1068(%rbp), %r8
	movl      %r13d, %r9d
	pushq     %rbx
	call      ___sprintf_chk
L0000456C:
	addq      $16, %rsp
	movq      %r14, %rdi
	call      _strlen
L00004578:
	movq      %rax, %rbx
	cmpb      $1, _dired(%rip)
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	jne       L000045A3
L0000458B:
	movq      (%r13), %rsi
	leaq      LC0000C7D0(%rip), %rdi
	call      _fputs
L0000459B:
	addq      $2, _dired_pos(%rip)
L000045A3:
	addq      %rbx, %r14
	cmpb      $1, _print_owner(%rip)
	jne       L000045D0
L000045AF:
	cmpb      $1, _print_group(%rip)
	jne       L000045D0
L000045B8:
	movb      _print_author(%rip), %al
	testb     %al, %al
	jne       L000045D0
L000045C2:
	cmpb      $1, _print_scontext(%rip)
	jne       L000046EA
L000045CF:
	.align 4, 0x90
L000045D0:
	movq      (%r13), %rsi
	movq      %r15, %rdi
	call      _fputs
L000045DC:
	subq      %r15, %r14
	addq      %r14, _dired_pos(%rip)
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       L00004631
L000045F0:
	movl      32(%r12), %ebx
	movl      _owner_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %rdi
	je        L00004626
L0000460E:
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	je        L0000461C
L00004618:
	xorl      %edi, %edi
	jmp       L00004626
L0000461C:
	movl      %ebx, %edi
	call      _getuser
L00004623:
	movq      %rax, %rdi
L00004626:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
L00004631:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       L0000467C
L0000463B:
	movl      36(%r12), %ebx
	movl      _group_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %rdi
	je        L00004671
L00004659:
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	je        L00004667
L00004663:
	xorl      %edi, %edi
	jmp       L00004671
L00004667:
	movl      %ebx, %edi
	call      _getgroup
L0000466E:
	movq      %rax, %rdi
L00004671:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
L0000467C:
	cmpb      $1, _print_author(%rip)
	jne       L000046C6
L00004685:
	movl      32(%r12), %ebx
	movl      _author_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %rdi
	je        L000046BB
L000046A3:
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	je        L000046B1
L000046AD:
	xorl      %edi, %edi
	jmp       L000046BB
L000046B1:
	movl      %ebx, %edi
	call      _getuser
L000046B8:
	movq      %rax, %rdi
L000046BB:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
L000046C6:
	cmpb      $1, _print_scontext(%rip)
	movq      %r15, %r14
	jne       L000046EA
L000046D2:
	movq      168(%r12), %rdi
	movl      _scontext_width(%rip), %edx
	xorl      %esi, %esi
	call      _format_user_or_group
L000046E7:
	movq      %r15, %r14
L000046EA:
	cmpb      $0, 176(%r12)
	je        L000047B0
L000046F9:
	movzwl    20(%r12), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       L000047C0
L00004714:
	movl      _file_size_width(%rip), %ebx
	movl      _major_device_number_width(%rip), %eax
	addl      $-2, %ebx
	subl      %eax, %ebx
	subl      _minor_device_number_width(%rip), %ebx
	movl      $0, %ecx
	cmovs     %ecx, %ebx
	addl      %eax, %ebx
	movzbl    43(%r12), %edi
	leaq      -1056(%rbp), %rsi
	call      _umaxtostr
L00004747:
	movq      %rax, %r13
	movl      _minor_device_number_width(%rip), %r15d
	movl      40(%r12), %edi
	andl      $16777215, %edi
	leaq      -3232(%rbp), %rsi
	call      _umaxtostr
L00004768:
	movq      %rax, %r10
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r14, %rdi
	leaq      LC0000C89E(%rip), %rcx
	movl      %ebx, %r8d
	movq      %r13, %r9
	pushq     %r10
	pushq     %r15
	leaq      -3200(%rbp), %r15
	call      ___sprintf_chk
L00004796:
	addq      $16, %rsp
	movslq    _file_size_width(%rip), %rax
	leaq      1(%r14,%rax), %r14
	jmp       L00004875
L000047AB:
	.align 4, 0x90
L000047B0:
	leaq      LC0000C889(%rip), %rbx
	jmp       L000047E6
L000047B9:
	.align 4, 0x90
L000047C0:
	movq      112(%r12), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	movl      $1, %ecx
	leaq      -1056(%rbp), %rsi
	call      _human_readable
L000047E3:
	movq      %rax, %rbx
L000047E6:
	movl      _file_size_width(%rip), %r15d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
L000047F7:
	movl      %eax, %r13d
	cmpl      %r13d, %r15d
	jle       L0000484A
L000047FF:
	movl      %r15d, %eax
	notl      %eax
	addl      %r13d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15), %edx
	subl      %r13d, %edx
	addl      %eax, %edx
	incq      %rdx
	movl      $32, %esi
	movq      %r14, %rdi
	call      _memset
L0000482B:
	leal      -1(%r13), %eax
	subl      %r15d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15,%rax), %eax
	subl      %r13d, %eax
	leaq      1(%r14,%rax), %r14
L0000484A:
	leaq      -3200(%rbp), %r15
	.align 4, 0x90
L00004860:
	movzbl    (%rbx), %eax
	incq      %rbx
	movb      %al, (%r14)
	incq      %r14
	testb     %al, %al
	jne       L00004860
L00004870:
	movb      $32, -1(%r14)
L00004875:
	leaq      -3264(%rbp), %rdi
	call      _localtime
L00004881:
	movq      %rax, %r13
	movb      $1, (%r14)
	testq     %r13, %r13
	je        L00004980
L00004891:
	movb      176(%r12), %al
	testb     %al, %al
	je        L00004980
L000048A1:
	movq      _current_time(%rip), %rdx
	movq      -3264(%rbp), %rsi
	cmpq      %rsi, %rdx
	jge       L000048E0
L000048B4:
	leaq      _current_time(%rip), %rdi
	call      _gettime
L000048C0:
	movq      _current_time(%rip), %rdx
	movq      _current_time+8(%rip), %rax
	movq      -3264(%rbp), %rsi
	movq      -3256(%rbp), %rcx
	jmp       L00004900
L000048DE:
	.align 4, 0x90
L000048E0:
	movq      _current_time+8(%rip), %rax
	movq      -3256(%rbp), %rcx
	jg        L00004900
L000048F0:
	cmpl      %ecx, %eax
	js        L000048B4
L000048F4:
	.align 4, 0x90
L00004900:
	leaq      -15778476(%rdx), %rdi
	cmpq      %rsi, %rdi
	jge       L00004930
L0000490C:
	movl      $-1, %edi
	cmpq      %rdx, %rsi
	jl        L00004921
L00004916:
	movl      $1, %edi
	jg        L00004921
L0000491D:
	movl      %ecx, %edi
	subl      %eax, %edi
L00004921:
	shrl      $31, %edi
	jmp       L0000493B
L00004926:
	.align 4, 0x90
L00004930:
	cmpq      %rsi, %rdi
	jg        L00004939
L00004935:
	cmpl      %ecx, %eax
	js        L0000490C
L00004939:
	xorl      %edi, %edi
L0000493B:
	movzbl    %dil, %eax
	leaq      _long_time_format(%rip), %rdx
	movq      (%rdx,%rax,8), %rsi
	movq      %r14, %rdi
	movq      %r13, %rdx
	call      _align_nstrftime
L00004955:
	testq     %rax, %rax
	je        L0000496F
L0000495A:
	leaq      1(%r14,%rax), %rbx
	movw      $32, (%r14,%rax)
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	jmp       L000049E8
L0000496F:
	cmpb      $0, (%r14)
	je        L00004BE8
L00004979:
	.align 4, 0x90
L00004980:
	movl      _long_time_expected_width.width(%rip), %ebx
	testl     %ebx, %ebx
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	js        L00004B10
L00004995:
	cmpb      $0, 176(%r12)
	leaq      LC0000C889(%rip), %r9
	je        L000049BD
L000049A7:
	movq      -3264(%rbp), %rdi
	leaq      -1056(%rbp), %rsi
	call      _imaxtostr
L000049BA:
	movq      %rax, %r9
L000049BD:
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r14, %rdi
	leaq      LC0000C884(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
L000049DA:
	movq      %r14, %rdi
	call      _strlen
L000049E2:
	movq      %rax, %rbx
	addq      %r14, %rbx
L000049E8:
	movq      (%r13), %rsi
	movq      %r15, %rdi
	call      _fputs
L000049F4:
	subq      %r15, %rbx
	addq      %rbx, _dired_pos(%rip)
	xorl      %esi, %esi
	movq      %r12, %rdi
	leaq      _dired_obstack(%rip), %rdx
	movq      %rbx, %rcx
	call      _print_name_with_quoting
L00004A12:
	movq      %rax, %r14
	movl      160(%r12), %ecx
	cmpl      $6, %ecx
	jne       L00004AC0
L00004A26:
	cmpq      $0, 8(%r12)
	je        L00004C97
L00004A32:
	movq      (%r13), %rsi
	leaq      LC0000C8A8(%rip), %rdi
	call      _fputs
L00004A42:
	addq      $4, _dired_pos(%rip)
	leaq      4(%rbx,%r14), %rcx
	movl      $1, %esi
	xorl      %edx, %edx
	movq      %r12, %rdi
	call      _print_name_with_quoting
L00004A5E:
	movl      _indicator_style(%rip), %eax
	testl     %eax, %eax
	je        L00004C97
L00004A6C:
	movzwl    164(%r12), %ecx
	movl      %ecx, %edx
	andl      $61440, %edx
	cmpl      $16384, %edx
	je        L00004BEF
L00004A89:
	movzwl    %dx, %edx
	cmpl      $32768, %edx
	jne       L00004C15
L00004A98:
	cmpl      $3, %eax
	jne       L00004C97
L00004AA1:
	andl      $73, %ecx
	movb      $42, %al
	testw     %cx, %cx
	jne       L00004BF1
L00004AAF:
	jmp       L00004C97
L00004AB4:
	.align 4, 0x90
L00004AC0:
	movl      _indicator_style(%rip), %esi
	testl     %esi, %esi
	je        L00004C97
L00004ACE:
	movb      176(%r12), %bl
	testb     %bl, %bl
	movw      20(%r12), %dx
	je        L00004B8B
L00004AE4:
	movl      %edx, %edi
	andl      $61440, %edi
	cmpl      $32768, %edi
	je        L00004C3E
L00004AF8:
	movb      $47, %al
	movzwl    %di, %edi
	cmpl      $16384, %edi
	je        L00004C4D
L00004B09:
	jmp       L00004BA8
L00004B0E:
	.align 4, 0x90
L00004B10:
	movq      $0, -3232(%rbp)
	leaq      -3232(%rbp), %rdi
	call      _localtime
L00004B27:
	testq     %rax, %rax
	je        L00004B6C
L00004B2C:
	movq      _long_time_format(%rip), %rsi
	xorl      %ecx, %ecx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rdx
	call      _align_nstrftime
L00004B44:
	testq     %rax, %rax
	je        L00004B6C
L00004B49:
	xorl      %edx, %edx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rsi
	call      _mbsnwidth
L00004B5A:
	movl      %eax, %ebx
	movl      %ebx, _long_time_expected_width.width(%rip)
	testl     %ebx, %ebx
	jns       L00004995
L00004B6A:
	jmp       L00004B7A
L00004B6C:
	movl      _long_time_expected_width.width(%rip), %ebx
	testl     %ebx, %ebx
	jns       L00004995
L00004B7A:
	movl      $0, _long_time_expected_width.width(%rip)
	xorl      %ebx, %ebx
	jmp       L00004995
L00004B8B:
	movb      $47, %al
	cmpl      $3, %ecx
	je        L00004C4D
L00004B96:
	cmpl      $5, %ecx
	je        L00004C97
L00004B9F:
	cmpl      $9, %ecx
	je        L00004C4D
L00004BA8:
	cmpl      $1, %esi
	je        L00004C97
L00004BB1:
	testb     %bl, %bl
	je        L00004118
L00004BB9:
	andl      $61440, %edx
	cmpl      $40960, %edx
	je        L0000414E
L00004BCB:
	movzwl    %dx, %eax
	cmpl      $49152, %eax
	je        L00004155
L00004BD9:
	cmpl      $4096, %eax
	jne       L00004C97
L00004BE4:
	movb      $124, %al
	jmp       L00004C4D
L00004BE8:
	xorl      %eax, %eax
	jmp       L0000495A
L00004BEF:
	movb      $47, %al
L00004BF1:
	movq      (%r13), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        L00004C07
L00004C02:
	cmpl      40(%rsi), %ecx
	jle       L00004C7A
L00004C07:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
	jmp       L00004C90
L00004C15:
	cmpl      $1, %eax
	je        L00004C97
L00004C1A:
	cmpl      $40960, %edx
	je        L00004140
L00004C26:
	cmpl      $49152, %edx
	je        L00004147
L00004C32:
	cmpl      $4096, %edx
	jne       L00004C97
L00004C3A:
	movb      $124, %al
	jmp       L00004BF1
L00004C3E:
	cmpl      $3, %esi
	jne       L00004C97
L00004C43:
	andl      $73, %edx
	movb      $42, %al
	testw     %dx, %dx
	je        L00004C97
L00004C4D:
	movq      (%r13), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        L00004C67
L00004C5E:
	cmpb      $10, %al
	je        L00004C75
L00004C62:
	cmpl      40(%rsi), %ecx
	jle       L00004C75
L00004C67:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
	jmp       L00004C90
L00004C75:
	movsbl    %al, %edi
	jmp       L00004C7D
L00004C7A:
	movzbl    %al, %edi
L00004C7D:
	call      ___swbuf
L00004C82:
	.align 4, 0x90
L00004C90:
	incq      _dired_pos(%rip)
L00004C97:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00004CC0
L00004CA8:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00004CCA
L00004CB7:
	.align 4, 0x90
L00004CC0:
	movl      $10, %edi
	call      ___swbuf
L00004CCA:
	movq      -3240(%rbp), %rbx
	incq      _dired_pos(%rip)
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        L00004160
L00004CE8:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00004D0F
L00004CF8:
	addq      $3240, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004D0A:
	call      _abort
L00004D0F:
	call      ___stack_chk_fail
# ----------------------
L00004D14:
	.long	L00003C92-L00004D14
	.long	L00003CB5-L00004D14
	.long	L00003D2B-L00004D14
	.long	L00003E85-L00004D14
	.long	L00003F97-L00004D14
L00004D28:
	.align 4, 0x90
# ----------------------
_dired_dump_obstack:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	movq      16(%rsi), %rbx
	movq      24(%rsi), %rcx
	movq      %rcx, %r15
	subq      %rbx, %r15
	shrq      $3, %r15
	je        L00004DE4
L00004D53:
	cmpq      %rbx, %rcx
	jne       L00004D5C
L00004D58:
	orb       $2, 80(%rsi)
L00004D5C:
	movq      48(%rsi), %rax
	addq      %rax, %rcx
	notq      %rax
	andq      %rcx, %rax
	movq      %rax, 24(%rsi)
	movq      8(%rsi), %r9
	movq      32(%rsi), %r8
	movq      %rax, %rcx
	subq      %r9, %rcx
	movq      %r8, %rdx
	subq      %r9, %rdx
	cmpq      %rdx, %rcx
	jbe       L00004D8D
L00004D86:
	movq      %r8, 24(%rsi)
	movq      %r8, %rax
L00004D8D:
	movq      %rax, 16(%rsi)
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	call      _fputs
L00004DA1:
	leaq      LC0000C166(%rip), %r14
	.align 4, 0x90
L00004DB0:
	movq      (%rbx), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _printf
L00004DBD:
	addq      $8, %rbx
	decq      %r15
	jne       L00004DB0
L00004DC6:
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00004DED
L00004DD7:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
L00004DE4:
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004DED:
	movl      $10, %edi
	popq      %rbx
	popq      %r12
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
	pushq     %rbx
	pushq     %rax
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       L00004FF7
L00004E16:
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      LC0000A528(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L00004E2E:
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      LC0000A549(%rip), %rdi
	call      _fputs
L00004E44:
	movq      (%rbx), %rsi
	leaq      LC0000C8DA(%rip), %rdi
	call      _fputs
L00004E53:
	movq      (%rbx), %rsi
	leaq      LC0000A5D9(%rip), %rdi
	call      _fputs
L00004E62:
	movq      (%rbx), %rsi
	leaq      LC0000A6E8(%rip), %rdi
	call      _fputs
L00004E71:
	movq      (%rbx), %rsi
	leaq      LC0000A92E(%rip), %rdi
	call      _fputs
L00004E80:
	movq      (%rbx), %rsi
	leaq      LC0000AA9D(%rip), %rdi
	call      _fputs
L00004E8F:
	movq      (%rbx), %rsi
	leaq      LC0000AC40(%rip), %rdi
	call      _fputs
L00004E9E:
	movq      (%rbx), %rsi
	leaq      LC0000AC7D(%rip), %rdi
	call      _fputs
L00004EAD:
	movq      (%rbx), %rsi
	leaq      LC0000AD72(%rip), %rdi
	call      _fputs
L00004EBC:
	movq      (%rbx), %rsi
	leaq      LC0000AE7F(%rip), %rdi
	call      _fputs
L00004ECB:
	movq      (%rbx), %rsi
	leaq      LC0000B025(%rip), %rdi
	call      _fputs
L00004EDA:
	movq      (%rbx), %rsi
	leaq      LC0000B1CF(%rip), %rdi
	call      _fputs
L00004EE9:
	movq      (%rbx), %rsi
	leaq      LC0000B336(%rip), %rdi
	call      _fputs
L00004EF8:
	movq      (%rbx), %rsi
	leaq      LC0000B4A8(%rip), %rdi
	call      _fputs
L00004F07:
	movq      (%rbx), %rsi
	leaq      LC0000B661(%rip), %rdi
	call      _fputs
L00004F16:
	movq      (%rbx), %rsi
	leaq      LC0000B726(%rip), %rdi
	call      _fputs
L00004F25:
	movq      (%rbx), %rsi
	leaq      LC0000B92D(%rip), %rdi
	call      _fputs
L00004F34:
	movq      (%rbx), %rsi
	leaq      LC0000BB40(%rip), %rdi
	call      _fputs
L00004F43:
	movq      (%rbx), %rsi
	leaq      LC0000BBCE(%rip), %rdi
	call      _fputs
L00004F52:
	movq      (%rbx), %rsi
	leaq      LC0000BD42(%rip), %rdi
	call      _fputs
L00004F61:
	movq      (%rbx), %rsi
	leaq      LC0000BEAE(%rip), %rdi
	call      _fputs
L00004F70:
	movq      (%rbx), %rsi
	leaq      LC0000BEDB(%rip), %rdi
	call      _fputs
L00004F7F:
	movq      (%rbx), %rsi
	leaq      LC0000C925(%rip), %rdi
	call      _fputs
L00004F8E:
	movq      (%rbx), %rsi
	leaq      LC0000BF11(%rip), %rdi
	call      _fputs
L00004F9D:
	movq      (%rbx), %rsi
	leaq      LC0000C02F(%rip), %rdi
	call      _fputs
L00004FAC:
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $2, %eax
	leaq      LC0000C0CA(%rip), %rcx
	leaq      LC0000C0CE(%rip), %rdx
	cmove     %rcx, %rdx
	cmpl      $1, %eax
	leaq      LC0000C0C7(%rip), %r15
	cmovne    %rdx, %r15
	leaq      LC0000C9BE(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
L00004FE7:
	testl     %eax, %eax
	jne       L00005021
L00004FEB:
	leaq      _emit_ancillary_info.infomap(%rip), %rax
	jmp       L000050B4
L00004FF7:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      LC0000C8B3(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
L00005019:
	movl      %r14d, %edi
	call      _exit
L00005021:
	leaq      LC0000C9D0(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
L00005030:
	testl     %eax, %eax
	jne       L0000503D
L00005034:
	leaq      _emit_ancillary_info.infomap+16(%rip), %rax
	jmp       L000050B4
L0000503D:
	leaq      LC0000C9F0(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
L0000504C:
	testl     %eax, %eax
	jne       L00005059
L00005050:
	leaq      _emit_ancillary_info.infomap+32(%rip), %rax
	jmp       L000050B4
L00005059:
	leaq      LC0000CA09(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
L00005068:
	testl     %eax, %eax
	jne       L00005075
L0000506C:
	leaq      _emit_ancillary_info.infomap+48(%rip), %rax
	jmp       L000050B4
L00005075:
	leaq      LC0000CA13(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
L00005084:
	testl     %eax, %eax
	jne       L00005091
L00005088:
	leaq      _emit_ancillary_info.infomap+64(%rip), %rax
	jmp       L000050B4
L00005091:
	leaq      LC0000CA1D(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
L000050A0:
	testl     %eax, %eax
	leaq      _emit_ancillary_info.infomap+80(%rip), %rcx
	leaq      _emit_ancillary_info.infomap+96(%rip), %rax
	cmove     %rcx, %rax
L000050B4:
	movq      8(%rax), %rbx
	testq     %rbx, %rbx
	cmove     %r15, %rbx
	leaq      LC0000CA27(%rip), %rdi
	leaq      LC0000C295(%rip), %rsi
	leaq      LC0000CA3E(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
L000050DB:
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
L000050E7:
	testq     %rax, %rax
	je        L00005115
L000050EC:
	leaq      LC0000CA65(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
L00005100:
	testl     %eax, %eax
	je        L00005115
L00005104:
	leaq      LC0000CA69(%rip), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _printf
L00005115:
	leaq      LC0000CAAE(%rip), %rdi
	leaq      LC0000CA3E(%rip), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdx
	call      _printf
L0000512D:
	cmpq      %r15, %rbx
	leaq      LC0000CB00(%rip), %rax
	leaq      LC0000A4A8(%rip), %rdx
	cmove     %rax, %rdx
	leaq      LC0000CACD(%rip), %rdi
	xorl      %eax, %eax
	movq      %rbx, %rsi
	call      _printf
L00005153:
	movl      %r14d, %edi
	call      _exit
L0000515B:
	.align 4, 0x90
# ----------------------
_put_indicator:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	pushq     %rax
	movq      %rdi, %rbx
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000517F
L00005173:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L0000517F:
	movq      (%rbx), %rsi
	movq      8(%rbx), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movl      $1, %edx
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	jmp       _fwrite
_prep_non_filename_text:
	cmpq      $0, _color_indicator+40(%rip)
	je        L000051B6
L000051AA:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       _put_indicator
# ----------------------
L000051B6:
	pushq     %rbp
	movq      %rsp, %rbp
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000051C6:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000051D2:
	leaq      _color_indicator+16(%rip), %rdi
	popq      %rbp
	jmp       _put_indicator
L000051DF:
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
	movq      %rcx, -64(%rbp)
	movq      %rsi, -56(%rbp)
	movq      (%rsi), %r8
	movq      %rdi, -48(%rbp)
	movq      (%rdi), %r9
	xorl      %eax, %eax
	leaq      L00005488(%rip), %r11
	leaq      L00005680(%rip), %r14
	leaq      L0000549C(%rip), %rbx
	movl      $1023, %r15d
	xorl      %r10d, %r10d
	xorl      %r13d, %r13d
	cmpl      $4, %eax
	jbe       L00005241
L0000522B:
	jmp       L00005459
L00005230:
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
	cmpl      $4, %eax
	ja        L00005459
L00005241:
	movl      %eax, %eax
	movslq    (%r11,%rax,4), %rax
	addq      %r11, %rax
	jmp       *%rax
L0000524C:
	movzbl    (%r8), %ecx
	movsbl    %cl, %esi
	movb      $1, %al
	leal      -58(%rsi), %edi
	cmpl      $36, %edi
	ja        L00005409
L00005261:
	movslq    (%r14,%rdi,4), %rsi
	addq      %r14, %rsi
	jmp       *%rsi
L0000526A:
	testb     %dl, %dl
	je        L0000540D
L00005272:
	jmp       L00005463
L00005277:
	.align 4, 0x90
L00005280:
	movsbl    (%r8), %r12d
	cmpl      $120, %r12d
	ja        L00005418
L0000528E:
	movb      $7, %cl
	movl      $3, %eax
	xorl      %r13d, %r13d
	movslq    (%rbx,%r12,4), %rsi
	addq      %rbx, %rsi
	jmp       *%rsi
L000052A1:
	addb      $-48, %r12b
	movl      $2, %eax
	movb      %r12b, %r13b
L000052AD:
	incq      %r8
	cmpl      $4, %eax
	jbe       L00005241
L000052B5:
	jmp       L00005459
L000052BA:
	.align 4, 0x90
L000052C0:
	movzbl    (%r8), %eax
	movl      %eax, %ecx
	andb      $-8, %cl
	cmpb      $48, %cl
	jne       L00005379
L000052D2:
	shlb      $3, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-48, %r13b
	movl      $2, %eax
	cmpl      $4, %eax
	jbe       L00005241
L000052EE:
	jmp       L00005459
L000052F3:
	.align 4, 0x90
L00005300:
	movsbl    (%r8), %eax
	leal      -48(%rax), %ecx
	cmpl      $54, %ecx
	ja        L00005379
L0000530C:
	btq       %rcx, %r15
	jb        L000053A4
L00005316:
	movl      $8257536, %esi
	btq       %rcx, %rsi
	jb        L000053C5
L00005325:
	movq      $35465847065542656, %rsi
	btq       %rcx, %rsi
	jae       L00005379
L00005335:
	shlb      $4, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-87, %r13b
	movl      $3, %eax
	cmpl      $4, %eax
	jbe       L00005241
L00005351:
	jmp       L00005459
L00005356:
	.align 4, 0x90
L00005360:
	movzbl    (%r8), %ecx
	cmpb      $64, %cl
	jl        L00005381
L00005369:
	cmpb      $127, %cl
	je        L00005381
L0000536E:
	incq      %r8
	andb      $31, %cl
	jmp       L00005410
L00005379:
	movb      %r13b, (%r9)
	jmp       L00005230
L00005381:
	xorl      %eax, %eax
	cmpb      $63, %cl
	jne       L00005463
L0000538C:
	movb      $127, (%r9)
	incq      %r9
	incq      %r10
	cmpl      $4, %eax
	jbe       L00005241
L0000539F:
	jmp       L00005459
L000053A4:
	shlb      $4, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-48, %r13b
	movl      $3, %eax
	cmpl      $4, %eax
	jbe       L00005241
L000053C0:
	jmp       L00005459
L000053C5:
	shlb      $4, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-55, %r13b
	movl      $3, %eax
	cmpl      $4, %eax
	jbe       L00005241
L000053E1:
	jmp       L00005459
L000053E3:
	incq      %r8
	movl      $1, %eax
	cmpl      $4, %eax
	jbe       L00005241
L000053F4:
	jmp       L00005459
L000053F6:
	incq      %r8
	movl      $4, %eax
	cmpl      $4, %eax
	jbe       L00005241
L00005407:
	jmp       L00005459
L00005409:
	testl     %esi, %esi
	je        L00005463
L0000540D:
	incq      %r8
L00005410:
	movb      %cl, (%r9)
	jmp       L00005230
L00005418:
	movl      %r12d, %ecx
	jmp       L0000543F
L0000541D:
	movb      $127, %cl
	jmp       L0000543F
L00005421:
	movb      $32, %cl
	jmp       L0000543F
L00005425:
	movb      $8, %cl
	jmp       L0000543F
L00005429:
	movb      $27, %cl
	jmp       L0000543F
L0000542D:
	movb      $12, %cl
	jmp       L0000543F
L00005431:
	movb      $10, %cl
	jmp       L0000543F
L00005435:
	movb      $13, %cl
	jmp       L0000543F
L00005439:
	movb      $9, %cl
	jmp       L0000543F
L0000543D:
	movb      $11, %cl
L0000543F:
	movb      %cl, (%r9)
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
	movb      %cl, %r13b
	incq      %r8
	cmpl      $4, %eax
	jbe       L00005241
L00005459:
	call      _abort
L0000545E:
	incq      %r8
	xorl      %eax, %eax
L00005463:
	movq      -48(%rbp), %rcx
	movq      %r9, (%rcx)
	movq      -56(%rbp), %rcx
	movq      %r8, (%rcx)
	movq      -64(%rbp), %rcx
	movq      %r10, (%rcx)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00005487:
	.align 4, 0x90
# ----------------------
L00005488:
	.long	L0000524C-L00005488
	.long	L00005280-L00005488
	.long	L000052C0-L00005488
	.long	L00005300-L00005488
	.long	L00005360-L00005488
# ----------------------
L0000549C:
	.long	L0000545E-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L000052A1-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L0000541D-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L000052AD-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005421-L0000549C
	.long	L00005418-L0000549C
	.long	L0000543F-L0000549C
	.long	L00005425-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005429-L0000549C
	.long	L0000542D-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005431-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005418-L0000549C
	.long	L00005435-L0000549C
	.long	L00005418-L0000549C
	.long	L00005439-L0000549C
	.long	L00005418-L0000549C
	.long	L0000543D-L0000549C
	.long	L00005418-L0000549C
	.long	L000052AD-L0000549C
# ----------------------
L00005680:
	.long	L00005463-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000526A-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L0000540D-L00005680
	.long	L000053E3-L00005680
	.long	L0000540D-L00005680
	.long	L000053F6-L00005680
L00005714:
	.align 4, 0x90
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
	movq      %rcx, -1224(%rbp)
	movq      %rdx, %r14
	movq      %rsi, %r13
	movq      %rdi, -1208(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	leaq      -1072(%rbp), %rbx
	movl      $1024, %esi
	movq      $-1, %rcx
	movq      %rbx, %rdi
	movq      %r13, %rdx
	movq      %r14, %r8
	call      _quotearg_buffer
L00005777:
	movq      %rax, %r12
	cmpq      $1024, %r12
	jb        L000057AF
L00005783:
	leaq      1(%r12), %rsi
	movq      %rsp, %rbx
	leaq      16(%r12), %rax
	andq      $-16, %rax
	subq      %rax, %rbx
	movq      %rbx, %rsp
	movq      $-1, %rcx
	movq      %rbx, %rdi
	movq      %r13, %rdx
	movq      %r14, %r8
	call      _quotearg_buffer
L000057AF:
	cmpb      $1, _qmark_funny_chars(%rip)
	movq      %rbx, -1216(%rbp)
	jne       L00005B05
L000057C3:
	call      ____mb_cur_max
L000057C8:
	leaq      (%rbx,%r12), %r14
	cmpl      $1, %eax
	movq      -1224(%rbp), %r13
	jle       L00005B48
L000057DC:
	xorl      %r15d, %r15d
	testq     %r12, %r12
	jle       L00005C11
L000057E8:
	xorps     %xmm0, %xmm0
	leaq      -1200(%rbp), %rbx
	leaq      L00005C84(%rip), %rdx
	movq      -1216(%rbp), %r13
	movq      %r13, %r12
	.align 4, 0x90
L00005810:
	movsbl    (%r13), %eax
	leal      -32(%rax), %ecx
	cmpl      $94, %ecx
	ja        L0000583D
L0000581D:
	movslq    (%rdx,%rcx,4), %rcx
	addq      %rdx, %rcx
	jmp       *%rcx
L00005826:
	incq      %r13
	movb      %al, (%r12)
	incq      %r12
	incq      %r15
	cmpq      %r14, %r13
	jb        L00005810
L00005838:
	jmp       L00005C18
L0000583D:
	movaps    %xmm0, -1088(%rbp)
	movaps    %xmm0, -1104(%rbp)
	movaps    %xmm0, -1120(%rbp)
	movaps    %xmm0, -1136(%rbp)
	movaps    %xmm0, -1152(%rbp)
	movaps    %xmm0, -1168(%rbp)
	movaps    %xmm0, -1184(%rbp)
	movaps    %xmm0, -1200(%rbp)
	movq      %r14, -1232(%rbp)
	jmp       L00005950
L00005881:
	leaq      -32(%r10), %rcx
	movl      %ecx, %edx
	shrl      $5, %edx
	incl      %edx
	andq      $3, %rdx
	je        L000058C2
L00005892:
	negq      %rdx
	xorl      %edi, %edi
	.align 4, 0x90
L000058A0:
	movups    (%r13,%rdi), %xmm0
	movups    16(%r13,%rdi), %xmm1
	movups    %xmm0, (%r12,%rdi)
	movups    %xmm1, 16(%r12,%rdi)
	addq      $32, %rdi
	incq      %rdx
	jne       L000058A0
L000058C0:
	jmp       L000058C4
L000058C2:
	xorl      %edi, %edi
L000058C4:
	cmpq      $96, %rcx
	jb        L0000592C
L000058CA:
	movq      %r10, %rcx
	subq      %rdi, %rcx
	leaq      112(%r13,%rdi), %rdx
	leaq      112(%r12,%rdi), %rdi
	.align 4, 0x90
L000058E0:
	movups    -112(%rdx), %xmm0
	movups    -96(%rdx), %xmm1
	movups    %xmm0, -112(%rdi)
	movups    %xmm1, -96(%rdi)
	movups    -80(%rdx), %xmm0
	movups    -64(%rdx), %xmm1
	movups    %xmm0, -80(%rdi)
	movups    %xmm1, -64(%rdi)
	movups    -48(%rdx), %xmm0
	movups    -32(%rdx), %xmm1
	movups    %xmm0, -48(%rdi)
	movups    %xmm1, -32(%rdi)
	movups    -16(%rdx), %xmm0
	movups    (%rdx), %xmm1
	movups    %xmm0, -16(%rdi)
	movups    %xmm1, (%rdi)
	subq      $-128, %rdx
	subq      $-128, %rdi
	addq      $-128, %rcx
	jne       L000058E0
L0000592C:
	cmpq      %r10, %rsi
	je        L00005AAD
L00005935:
	movq      %rsi, %rcx
	subq      %r10, %rcx
	leaq      (%r12,%r10), %rdx
	addq      %r10, %r13
	jmp       L00005A2C
L00005947:
	.align 4, 0x90
L00005950:
	movq      %r14, %rdx
	subq      %r13, %rdx
	leaq      -1236(%rbp), %rdi
	movq      %r13, %rsi
	movq      %rbx, %rcx
	call      _mbrtowc
L00005968:
	testq     %rax, %rax
	je        L00005990
L0000596D:
	cmpq      $-2, %rax
	je        L00005AD4
L00005977:
	cmpq      $-1, %rax
	jne       L00005995
L0000597D:
	jmp       L00005AD9
L00005982:
	.align 4, 0x90
L00005990:
	movl      $1, %eax
L00005995:
	movq      %rbx, %r14
	movl      -1236(%rbp), %edi
	movq      %rax, %rbx
	call      _rpl_wcwidth
L000059A6:
	movq      %rbx, %rsi
	leaq      (%r13,%rsi), %rdx
	testl     %eax, %eax
	movq      %rdx, -1248(%rbp)
	js        L000059E0
L000059B9:
	cmpq      $32, %rsi
	movq      %r14, %r9
	jae       L00005A00
L000059C2:
	movq      %rsi, %rcx
	movq      %r12, %rdx
	movq      -1232(%rbp), %r14
	jmp       L00005A2C
L000059D1:
	.align 4, 0x90
L000059E0:
	movb      $63, (%r12)
	incq      %r12
	movl      $1, %eax
	movq      %r14, %rbx
	movq      -1232(%rbp), %r14
	jmp       L00005AB5
L000059FC:
	.align 4, 0x90
L00005A00:
	movq      %rsi, %r10
	andq      $-32, %r10
	movq      -1232(%rbp), %r14
	je        L00005A26
L00005A10:
	cmpq      %rdx, %r12
	jae       L00005881
L00005A19:
	leaq      (%r12,%rsi), %rcx
	cmpq      %rcx, %r13
	jae       L00005881
L00005A26:
	movq      %rsi, %rcx
	movq      %r12, %rdx
L00005A2C:
	leaq      -1(%rcx), %r10
	movq      %rcx, %rdi
	andq      $7, %rdi
	je        L00005A55
L00005A39:
	negq      %rdi
	.align 4, 0x90
L00005A40:
	movzbl    (%r13), %ebx
	incq      %r13
	movb      %bl, (%rdx)
	incq      %rdx
	decq      %rcx
	incq      %rdi
	jne       L00005A40
L00005A55:
	cmpq      $7, %r10
	jb        L00005AAD
L00005A5B:
	.align 4, 0x90
L00005A60:
	movzbl    (%r13), %ebx
	movb      %bl, (%rdx)
	movzbl    1(%r13), %ebx
	movb      %bl, 1(%rdx)
	movzbl    2(%r13), %ebx
	movb      %bl, 2(%rdx)
	movzbl    3(%r13), %ebx
	movb      %bl, 3(%rdx)
	movzbl    4(%r13), %ebx
	movb      %bl, 4(%rdx)
	movzbl    5(%r13), %ebx
	movb      %bl, 5(%rdx)
	movzbl    6(%r13), %ebx
	movb      %bl, 6(%rdx)
	movzbl    7(%r13), %ebx
	movb      %bl, 7(%rdx)
	addq      $8, %r13
	addq      $8, %rdx
	addq      $-8, %rcx
	jne       L00005A60
L00005AAD:
	addq      %rsi, %r12
	cltq      
	movq      %r9, %rbx
L00005AB5:
	addq      %rax, %r15
	movq      %rbx, %rdi
	call      _mbsinit
L00005AC0:
	testl     %eax, %eax
	movq      -1248(%rbp), %rax
	movq      %rax, %r13
	je        L00005950
L00005AD2:
	jmp       L00005AEA
L00005AD4:
	movq      %r14, %rax
	jmp       L00005ADF
L00005AD9:
	incq      %r13
	movq      %r13, %rax
L00005ADF:
	movb      $63, (%r12)
	incq      %r15
	incq      %r12
L00005AEA:
	movq      %rax, %r13
	xorps     %xmm0, %xmm0
	leaq      L00005C84(%rip), %rdx
	cmpq      %r14, %r13
	jb        L00005810
L00005B00:
	jmp       L00005C18
L00005B05:
	movq      -1224(%rbp), %r13
	testq     %r13, %r13
	je        L00005BA5
L00005B15:
	call      ____mb_cur_max
L00005B1A:
	cmpl      $2, %eax
	movq      -1208(%rbp), %r14
	jl        L00005BA7
L00005B2A:
	xorl      %edx, %edx
	movq      %rbx, %rdi
	movq      %r12, %rsi
	call      _mbsnwidth
L00005B37:
	movslq    %eax, %r15
	testq     %r14, %r14
	jne       L00005C32
L00005B43:
	jmp       L00005C49
L00005B48:
	testq     %r12, %r12
	jle       L00005BA0
L00005B4D:
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %r15
	movq      -1216(%rbp), %rbx
	.align 4, 0x90
L00005B60:
	movzbl    (%rbx), %edi
	testb     %dil, %dil
	js        L00005B80
L00005B68:
	movl      60(%r15,%rdi,4), %ecx
	shrl      $18, %ecx
	andl      $1, %ecx
	testl     %ecx, %ecx
	jne       L00005B98
L00005B77:
	jmp       L00005B95
L00005B79:
	.align 4, 0x90
L00005B80:
	movl      $262144, %esi
	call      ___maskrune
L00005B8A:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
	testl     %ecx, %ecx
	jne       L00005B98
L00005B95:
	movb      $63, (%rbx)
L00005B98:
	incq      %rbx
	cmpq      %r14, %rbx
	jb        L00005B60
L00005BA0:
	movq      %r12, %r15
	jmp       L00005C03
L00005BA5:
	jmp       L00005C03
L00005BA7:
	testq     %r12, %r12
	jle       L00005C74
L00005BB0:
	movq      %r12, %r14
	addq      %rbx, %r14
	xorl      %r15d, %r15d
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %r13
L00005BC0:
	movzbl    (%rbx), %edi
	testb     %dil, %dil
	js        L00005BE0
L00005BC8:
	movl      60(%r13,%rdi,4), %ecx
	shrl      $18, %ecx
	andl      $1, %ecx
	jmp       L00005BF1
L00005BD5:
	.align 4, 0x90
L00005BE0:
	movl      $262144, %esi
	call      ___maskrune
L00005BEA:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
L00005BF1:
	addq      %rcx, %r15
	incq      %rbx
	cmpq      %r14, %rbx
	jb        L00005BC0
L00005BFC:
	movq      -1224(%rbp), %r13
L00005C03:
	movq      -1208(%rbp), %r14
	testq     %r14, %r14
	jne       L00005C32
L00005C0F:
	jmp       L00005C49
L00005C11:
	movq      -1216(%rbp), %r12
L00005C18:
	subq      -1216(%rbp), %r12
	movq      -1208(%rbp), %r14
	movq      -1224(%rbp), %r13
	testq     %r14, %r14
	je        L00005C49
L00005C32:
	movl      $1, %esi
	movq      -1216(%rbp), %rdi
	movq      %r12, %rdx
	movq      %r14, %rcx
	call      _fwrite
L00005C49:
	testq     %r13, %r13
	je        L00005C52
L00005C4E:
	movq      %r15, (%r13)
L00005C52:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00005C7E
L00005C62:
	movq      %r12, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00005C74:
	xorl      %r15d, %r15d
	testq     %r14, %r14
	jne       L00005C32
L00005C7C:
	jmp       L00005C49
L00005C7E:
	call      ___stack_chk_fail
L00005C83:
	.align 4, 0x90
# ----------------------
L00005C84:
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L0000583D-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L0000583D-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L0000583D-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
	.long	L00005826-L00005C84
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
	cmpl      $0, _interrupt_signal(%rip)
	jne       L00005E5C
L00005E2A:
	jmp       L00005E4F
L00005E2C:
	.align 4, 0x90
L00005E30:
	movl      %ebx, %edi
	call      _raise
L00005E37:
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigprocmask
L00005E46:
	cmpl      $0, _interrupt_signal(%rip)
	jne       L00005E5C
L00005E4F:
	cmpl      $0, _stop_signal_count(%rip)
	je        L00005FAE
L00005E5C:
	cmpb      $1, _used_color(%rip)
	jne       L00005F5E
L00005E69:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00005E85:
	movzbl    _used_color(%rip), %eax
	testb     %al, %al
	jne       L00005F42
L00005E94:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00005EC0
L00005EA7:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00005F34
L00005EB3:
	.align 4, 0x90
L00005EC0:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00005EDC:
	movzbl    _used_color(%rip), %eax
	testb     %al, %al
	jne       L00005EF3
L00005EE7:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005EF3:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00005F0F:
	movzbl    _used_color(%rip), %eax
	testb     %al, %al
	jne       L00005F26
L00005F1A:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00005F26:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00005F34:
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00005F42:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
L00005F5E:
	movq      (%r12), %rdi
	call      _rpl_fflush
L00005F67:
	movl      $1, %edi
	movq      %r14, %rsi
	movq      %r15, %rdx
	call      _sigprocmask
L00005F77:
	movl      _interrupt_signal(%rip), %ebx
	movl      _stop_signal_count(%rip), %eax
	testl     %eax, %eax
	je        L00005FA0
L00005F87:
	decl      %eax
	movl      %eax, _stop_signal_count(%rip)
	movl      $17, %ebx
	jmp       L00005E30
L00005F99:
	.align 4, 0x90
L00005FA0:
	xorl      %esi, %esi
	movl      %ebx, %edi
	call      _signal
L00005FA9:
	jmp       L00005E30
L00005FAE:
	addq      $16, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00005FBB:
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
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006002
L00005FF3:
	cmpl      $9, %edx
	je        L00006002
L00005FF8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000602F
L00006002:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006023
L00006012:
	cmpl      $9, %r8d
	je        L00006023
L00006018:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L0000602F
L00006023:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L0000602F:
	popq      %rbp
	ret       
L00006031:
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
L00006053:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006092
L00006083:
	cmpl      $9, %edx
	je        L00006092
L00006088:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000060C2
L00006092:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000060B3
L000060A2:
	cmpl      $9, %r8d
	je        L000060B3
L000060A8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L000060C2
L000060B3:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L000060C2:
	popq      %rbp
	ret       
L000060C4:
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
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006112
L00006103:
	cmpl      $9, %edx
	je        L00006112
L00006108:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000613F
L00006112:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006133
L00006122:
	cmpl      $9, %r8d
	je        L00006133
L00006128:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L0000613F
L00006133:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L0000613F:
	popq      %rbp
	ret       
L00006141:
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
L00006163:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_name:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L000061A2
L00006193:
	cmpl      $9, %edx
	je        L000061A2
L00006198:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000061D2
L000061A2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000061C3
L000061B2:
	cmpl      $9, %r8d
	je        L000061C3
L000061B8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L000061D2
L000061C3:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L000061D2:
	popq      %rbp
	ret       
L000061D4:
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
L000061FD:
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L0000620D:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L0000622A:
	testl     %eax, %eax
	je        L00006239
L0000622E:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006239:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
L0000624E:
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
	cmpl      $3, %ecx
	sete      %al
	movl      160(%r14), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       L0000628D
L0000627E:
	cmpl      $9, %edx
	je        L0000628D
L00006283:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000062EA
L0000628D:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       L000062AC
L0000629D:
	cmpl      $9, %ecx
	je        L000062AC
L000062A2:
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       L000062EA
L000062AC:
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L000062B9:
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L000062C9:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L000062E6:
	testl     %eax, %eax
	je        L000062F5
L000062EA:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000062F5:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
L0000630A:
	.align 4, 0x90
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
L0000632D:
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L0000633D:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L0000635A:
	testl     %eax, %eax
	je        L00006369
L0000635E:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006369:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
L0000637E:
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
	cmpl      $3, %ecx
	sete      %al
	movl      160(%r14), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       L000063BD
L000063AE:
	cmpl      $9, %edx
	je        L000063BD
L000063B3:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000641A
L000063BD:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       L000063DC
L000063CD:
	cmpl      $9, %ecx
	je        L000063DC
L000063D2:
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       L0000641A
L000063DC:
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
L000063E9:
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
L000063F9:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
L00006416:
	testl     %eax, %eax
	je        L00006425
L0000641A:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006425:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
L0000643A:
	.align 4, 0x90
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
L0000645D:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L00006470:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L0000648D:
	testl     %eax, %eax
	je        L0000649C
L00006491:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000649C:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L000064B1:
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
	cmpl      $3, %ecx
	sete      %al
	movl      160(%r15), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       L000064F9
L000064EA:
	cmpl      $9, %edx
	je        L000064F9
L000064EF:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000655C
L000064F9:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       L00006518
L00006509:
	cmpl      $9, %ecx
	je        L00006518
L0000650E:
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       L0000655C
L00006518:
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
L00006528:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L0000653B:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L00006558:
	testl     %eax, %eax
	je        L00006567
L0000655C:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00006567:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L0000657C:
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
L0000659D:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L000065B0:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L000065CD:
	testl     %eax, %eax
	je        L000065DC
L000065D1:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000065DC:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L000065F1:
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
	cmpl      $3, %ecx
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       L00006639
L0000662A:
	cmpl      $9, %edx
	je        L00006639
L0000662F:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000669C
L00006639:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       L00006658
L00006649:
	cmpl      $9, %ecx
	je        L00006658
L0000664E:
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       L0000669C
L00006658:
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
L00006668:
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
L0000667B:
	testq     %rbx, %rbx
	leaq      LC0000A4A8(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
L00006698:
	testl     %eax, %eax
	je        L000066A7
L0000669C:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000066A7:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
L000066BC:
	.align 4, 0x90
# ----------------------
_xstrcoll_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L000066DF
L000066DD:
	popq      %rbp
	ret       
L000066DF:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L000066EB:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006722
L00006713:
	cmpl      $9, %edx
	je        L00006722
L00006718:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000675C
L00006722:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006743
L00006732:
	cmpl      $9, %r8d
	je        L00006743
L00006738:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L0000675C
L00006743:
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L0000675E
L0000675C:
	popq      %rbp
	ret       
L0000675E:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L0000676A:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L0000678F
L0000678D:
	popq      %rbp
	ret       
L0000678F:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L0000679E:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L000067D2
L000067C3:
	cmpl      $9, %edx
	je        L000067D2
L000067C8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000680C
L000067D2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000067F3
L000067E2:
	cmpl      $9, %r8d
	je        L000067F3
L000067E8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L0000680C
L000067F3:
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L0000680E
L0000680C:
	popq      %rbp
	ret       
L0000680E:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L0000681D:
	.align 4, 0x90
# ----------------------
_strcmp_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L0000683F
L0000683D:
	popq      %rbp
	ret       
L0000683F:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L0000684B:
	.align 4, 0x90
# ----------------------
_strcmp_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006882
L00006873:
	cmpl      $9, %edx
	je        L00006882
L00006878:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000068BC
L00006882:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000068A3
L00006892:
	cmpl      $9, %r8d
	je        L000068A3
L00006898:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L000068BC
L000068A3:
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L000068BE
L000068BC:
	popq      %rbp
	ret       
L000068BE:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L000068CA:
	.align 4, 0x90
# ----------------------
_rev_strcmp_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L000068EF
L000068ED:
	popq      %rbp
	ret       
L000068EF:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L000068FE:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_size:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006932
L00006923:
	cmpl      $9, %edx
	je        L00006932
L00006928:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L0000696C
L00006932:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006953
L00006942:
	cmpl      $9, %r8d
	je        L00006953
L00006948:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L0000696C
L00006953:
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        L0000696E
L0000696C:
	popq      %rbp
	ret       
L0000696E:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L0000697D:
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
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L000069C2
L000069B3:
	cmpl      $9, %edx
	je        L000069C2
L000069B8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000069EF
L000069C2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000069E3
L000069D2:
	cmpl      $9, %r8d
	je        L000069E3
L000069D8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L000069EF
L000069E3:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
L000069EF:
	popq      %rbp
	ret       
L000069F1:
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
L00006A13:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_version:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006A52
L00006A43:
	cmpl      $9, %edx
	je        L00006A52
L00006A48:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006A82
L00006A52:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006A73
L00006A62:
	cmpl      $9, %r8d
	je        L00006A73
L00006A68:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006A82
L00006A73:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
L00006A82:
	popq      %rbp
	ret       
L00006A84:
	.align 4, 0x90
# ----------------------
_xstrcoll_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00006AB6
L00006AA3:
	movl      $1, %eax
	jg        L00006AB6
L00006AAA:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006AB8
L00006AB6:
	popq      %rbp
	ret       
L00006AB8:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00006AC4:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006B02
L00006AF3:
	cmpl      $9, %edx
	je        L00006B02
L00006AF8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006B45
L00006B02:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006B23
L00006B12:
	cmpl      $9, %r8d
	je        L00006B23
L00006B18:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006B45
L00006B23:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00006B45
L00006B32:
	movl      $1, %eax
	jg        L00006B45
L00006B39:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006B47
L00006B45:
	popq      %rbp
	ret       
L00006B47:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00006B53:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00006B86
L00006B73:
	movl      $1, %eax
	jg        L00006B86
L00006B7A:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00006B88
L00006B86:
	popq      %rbp
	ret       
L00006B88:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00006B97:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006BD2
L00006BC3:
	cmpl      $9, %edx
	je        L00006BD2
L00006BC8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006C15
L00006BD2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006BF3
L00006BE2:
	cmpl      $9, %r8d
	je        L00006BF3
L00006BE8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006C15
L00006BF3:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00006C15
L00006C02:
	movl      $1, %eax
	jg        L00006C15
L00006C09:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00006C17
L00006C15:
	popq      %rbp
	ret       
L00006C17:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00006C26:
	.align 4, 0x90
# ----------------------
_strcmp_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00006C56
L00006C43:
	movl      $1, %eax
	jg        L00006C56
L00006C4A:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006C58
L00006C56:
	popq      %rbp
	ret       
L00006C58:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00006C64:
	.align 4, 0x90
# ----------------------
_strcmp_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006CA2
L00006C93:
	cmpl      $9, %edx
	je        L00006CA2
L00006C98:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006CE5
L00006CA2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006CC3
L00006CB2:
	cmpl      $9, %r8d
	je        L00006CC3
L00006CB8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006CE5
L00006CC3:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        L00006CE5
L00006CD2:
	movl      $1, %eax
	jg        L00006CE5
L00006CD9:
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006CE7
L00006CE5:
	popq      %rbp
	ret       
L00006CE7:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00006CF3:
	.align 4, 0x90
# ----------------------
_rev_strcmp_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00006D26
L00006D13:
	movl      $1, %eax
	jg        L00006D26
L00006D1A:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00006D28
L00006D26:
	popq      %rbp
	ret       
L00006D28:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00006D37:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_mtime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006D72
L00006D63:
	cmpl      $9, %edx
	je        L00006D72
L00006D68:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006DB5
L00006D72:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006D93
L00006D82:
	cmpl      $9, %r8d
	je        L00006D93
L00006D88:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006DB5
L00006D93:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        L00006DB5
L00006DA2:
	movl      $1, %eax
	jg        L00006DB5
L00006DA9:
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        L00006DB7
L00006DB5:
	popq      %rbp
	ret       
L00006DB7:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00006DC6:
	.align 4, 0x90
# ----------------------
_xstrcoll_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00006DF6
L00006DE3:
	movl      $1, %eax
	jg        L00006DF6
L00006DEA:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006DF8
L00006DF6:
	popq      %rbp
	ret       
L00006DF8:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00006E04:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006E42
L00006E33:
	cmpl      $9, %edx
	je        L00006E42
L00006E38:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006E85
L00006E42:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006E63
L00006E52:
	cmpl      $9, %r8d
	je        L00006E63
L00006E58:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006E85
L00006E63:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00006E85
L00006E72:
	movl      $1, %eax
	jg        L00006E85
L00006E79:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006E87
L00006E85:
	popq      %rbp
	ret       
L00006E87:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00006E93:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00006EC6
L00006EB3:
	movl      $1, %eax
	jg        L00006EC6
L00006EBA:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00006EC8
L00006EC6:
	popq      %rbp
	ret       
L00006EC8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00006ED7:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006F12
L00006F03:
	cmpl      $9, %edx
	je        L00006F12
L00006F08:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00006F55
L00006F12:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00006F33
L00006F22:
	cmpl      $9, %r8d
	je        L00006F33
L00006F28:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00006F55
L00006F33:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00006F55
L00006F42:
	movl      $1, %eax
	jg        L00006F55
L00006F49:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00006F57
L00006F55:
	popq      %rbp
	ret       
L00006F57:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00006F66:
	.align 4, 0x90
# ----------------------
_strcmp_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00006F96
L00006F83:
	movl      $1, %eax
	jg        L00006F96
L00006F8A:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00006F98
L00006F96:
	popq      %rbp
	ret       
L00006F98:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00006FA4:
	.align 4, 0x90
# ----------------------
_strcmp_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00006FE2
L00006FD3:
	cmpl      $9, %edx
	je        L00006FE2
L00006FD8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00007025
L00006FE2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00007003
L00006FF2:
	cmpl      $9, %r8d
	je        L00007003
L00006FF8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00007025
L00007003:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        L00007025
L00007012:
	movl      $1, %eax
	jg        L00007025
L00007019:
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007027
L00007025:
	popq      %rbp
	ret       
L00007027:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007033:
	.align 4, 0x90
# ----------------------
_rev_strcmp_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L00007066
L00007053:
	movl      $1, %eax
	jg        L00007066
L0000705A:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007068
L00007066:
	popq      %rbp
	ret       
L00007068:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007077:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_ctime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L000070B2
L000070A3:
	cmpl      $9, %edx
	je        L000070B2
L000070A8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000070F5
L000070B2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000070D3
L000070C2:
	cmpl      $9, %r8d
	je        L000070D3
L000070C8:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L000070F5
L000070D3:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        L000070F5
L000070E2:
	movl      $1, %eax
	jg        L000070F5
L000070E9:
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        L000070F7
L000070F5:
	popq      %rbp
	ret       
L000070F7:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007106:
	.align 4, 0x90
# ----------------------
_xstrcoll_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L00007136
L00007123:
	movl      $1, %eax
	jg        L00007136
L0000712A:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007138
L00007136:
	popq      %rbp
	ret       
L00007138:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L00007144:
	.align 4, 0x90
# ----------------------
_xstrcoll_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00007182
L00007173:
	cmpl      $9, %edx
	je        L00007182
L00007178:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L000071C5
L00007182:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L000071A3
L00007192:
	cmpl      $9, %r8d
	je        L000071A3
L00007198:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L000071C5
L000071A3:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L000071C5
L000071B2:
	movl      $1, %eax
	jg        L000071C5
L000071B9:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L000071C7
L000071C5:
	popq      %rbp
	ret       
L000071C7:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
L000071D3:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L00007206
L000071F3:
	movl      $1, %eax
	jg        L00007206
L000071FA:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007208
L00007206:
	popq      %rbp
	ret       
L00007208:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L00007217:
	.align 4, 0x90
# ----------------------
_rev_xstrcoll_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00007252
L00007243:
	cmpl      $9, %edx
	je        L00007252
L00007248:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00007295
L00007252:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00007273
L00007262:
	cmpl      $9, %r8d
	je        L00007273
L00007268:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00007295
L00007273:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L00007295
L00007282:
	movl      $1, %eax
	jg        L00007295
L00007289:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007297
L00007295:
	popq      %rbp
	ret       
L00007297:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
L000072A6:
	.align 4, 0x90
# ----------------------
_strcmp_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L000072D6
L000072C3:
	movl      $1, %eax
	jg        L000072D6
L000072CA:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L000072D8
L000072D6:
	popq      %rbp
	ret       
L000072D8:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L000072E4:
	.align 4, 0x90
# ----------------------
_strcmp_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L00007322
L00007313:
	cmpl      $9, %edx
	je        L00007322
L00007318:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00007365
L00007322:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00007343
L00007332:
	cmpl      $9, %r8d
	je        L00007343
L00007338:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00007365
L00007343:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        L00007365
L00007352:
	movl      $1, %eax
	jg        L00007365
L00007359:
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        L00007367
L00007365:
	popq      %rbp
	ret       
L00007367:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
L00007373:
	.align 4, 0x90
# ----------------------
_rev_strcmp_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L000073A6
L00007393:
	movl      $1, %eax
	jg        L000073A6
L0000739A:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L000073A8
L000073A6:
	popq      %rbp
	ret       
L000073A8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L000073B7:
	.align 4, 0x90
# ----------------------
_rev_strcmp_df_atime:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       L000073F2
L000073E3:
	cmpl      $9, %edx
	je        L000073F2
L000073E8:
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       L00007435
L000073F2:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       L00007413
L00007402:
	cmpl      $9, %r8d
	je        L00007413
L00007408:
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       L00007435
L00007413:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        L00007435
L00007422:
	movl      $1, %eax
	jg        L00007435
L00007429:
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        L00007437
L00007435:
	popq      %rbp
	ret       
L00007437:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
L00007446:
	.align 4, 0x90
# ----------------------
_xstrcoll:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	movq      %rsi, %r14
	movq      %rdi, %r15
	call      ___error
L00007466:
	movl      $0, (%rax)
	movq      %r15, %rdi
	movq      %r14, %rsi
	call      _strcoll
L00007477:
	movl      %eax, %ebx
	call      ___error
L0000747E:
	cmpl      $0, (%rax)
	jne       L0000748E
L00007483:
	movl      %ebx, %eax
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000748E:
	call      ___error
L00007493:
	movl      (%rax), %r12d
	xorl      %edi, %edi
	movq      %r15, %rsi
	call      _quote_n
L000074A0:
	movq      %rax, %r15
	movl      $1, %edi
	movq      %r14, %rsi
	call      _quote_n
L000074B0:
	movq      %rax, %rbx
	leaq      LC0000C860(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r12d, %esi
	movq      %r15, %rcx
	movq      %rbx, %r8
	call      _error
L000074CC:
	cmpl      $0, _exit_status(%rip)
	jne       L000074DF
L000074D5:
	movl      $1, _exit_status(%rip)
L000074DF:
	leaq      _failed_strcoll(%rip), %rdi
	movl      $1, %esi
	call      _longjmp
# ----------------------
_print_file_name_and_frills:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	subq      $280, %rsp
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -32(%rbp)
	cmpb      $0, _print_with_color(%rip)
	je        L00007697
L00007521:
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        L00007697
L00007531:
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	je        L0000754E
L0000753E:
	cmpq      $1, %rax
	jne       L00007567
L00007544:
	cmpb      $48, (%rdi)
	jne       L00007567
L00007549:
	jmp       L00007697
L0000754E:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000755F:
	testl     %eax, %eax
	je        L00007697
L00007567:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000075AF
L00007571:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L0000758B
L00007582:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000075AA
L0000758B:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00007597:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000075A3:
	leaq      _color_indicator+16(%rip), %rdi
L000075AA:
	call      _put_indicator
L000075AF:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L000075D1:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007619
L000075DB:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L000075F5
L000075EC:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00007614
L000075F5:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00007601:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L0000760D:
	leaq      _color_indicator+16(%rip), %rdi
L00007614:
	call      _put_indicator
L00007619:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00007634:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000767C
L0000763E:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00007658
L0000764F:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00007677
L00007658:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L00007664:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00007670:
	leaq      _color_indicator+16(%rip), %rdi
L00007677:
	call      _put_indicator
L0000767C:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
L00007697:
	cmpb      $1, _print_inode(%rip)
	jne       L000076E9
L000076A0:
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	cmovne    _inode_number_width(%rip), %ebx
	leaq      LC0000C889(%rip), %rdx
	cmpb      $0, 176(%r15)
	je        L000076D9
L000076C1:
	movq      24(%r15), %rdi
	testq     %rdi, %rdi
	je        L000076D9
L000076CA:
	leaq      -304(%rbp), %rsi
	call      _umaxtostr
L000076D6:
	movq      %rax, %rdx
L000076D9:
	leaq      LC0000C884(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
L000076E9:
	cmpb      $1, _print_block_size(%rip)
	jne       L0000774A
L000076F2:
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	cmovne    _block_size_width(%rip), %ebx
	cmpb      $0, 176(%r15)
	je        L00007733
L0000770C:
	movq      120(%r15), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -304(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
L0000772E:
	movq      %rax, %rdx
	jmp       L0000773A
L00007733:
	leaq      LC0000C889(%rip), %rdx
L0000773A:
	leaq      LC0000C884(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
L0000774A:
	cmpb      $1, _print_scontext(%rip)
	jne       L0000777A
L00007753:
	xorl      %eax, %eax
	cmpl      $4, _format(%rip)
	movl      _scontext_width(%rip), %esi
	cmove     %eax, %esi
	movq      168(%r15), %rdx
	leaq      LC0000C884(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L0000777A:
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %r15, %rdi
	movq      %r14, %rcx
	call      _print_name_with_quoting
L00007789:
	movl      _indicator_style(%rip), %esi
	testl     %esi, %esi
	je        L00007863
L00007797:
	movb      176(%r15), %bl
	testb     %bl, %bl
	movw      20(%r15), %dx
	movl      160(%r15), %ecx
	je        L000077CD
L000077AE:
	movl      %edx, %edi
	andl      $61440, %edi
	cmpl      $32768, %edi
	je        L0000781A
L000077BE:
	movb      $47, %al
	movzwl    %di, %edi
	cmpl      $16384, %edi
	je        L00007830
L000077CB:
	jmp       L000077E2
L000077CD:
	movb      $47, %al
	cmpl      $3, %ecx
	je        L00007830
L000077D4:
	cmpl      $5, %ecx
	je        L00007863
L000077DD:
	cmpl      $9, %ecx
	je        L00007830
L000077E2:
	cmpl      $1, %esi
	je        L00007863
L000077E7:
	testb     %bl, %bl
	je        L0000788B
L000077EF:
	andl      $61440, %edx
	cmpl      $40960, %edx
	je        L000078A8
L00007801:
	movzwl    %dx, %eax
	cmpl      $49152, %eax
	je        L000078AC
L0000780F:
	cmpl      $4096, %eax
	jne       L00007863
L00007816:
	movb      $124, %al
	jmp       L00007830
L0000781A:
	testb     %bl, %bl
	sete      %al
	cmpl      $3, %esi
	setne     %cl
	testb     $73, %dl
	je        L00007863
L0000782A:
	orb       %cl, %al
	movb      $42, %al
	jne       L00007863
L00007830:
	movq      ___stdoutp@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        L00007850
L00007847:
	cmpb      $10, %al
	je        L00007881
L0000784B:
	cmpl      40(%rsi), %ecx
	jle       L00007881
L00007850:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
L0000785C:
	incq      _dired_pos(%rip)
L00007863:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -32(%rbp), %rax
	jne       L000078B0
L00007873:
	addq      $280, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00007881:
	movsbl    %al, %edi
	call      ___swbuf
L00007889:
	jmp       L0000785C
L0000788B:
	decl      %ecx
	cmpl      $7, %ecx
	jae       L00007863
L00007892:
	shlb      $3, %cl
	movq      $17240342323527804, %rax
	shrq      %cl, %rax
	testb     %al, %al
	jne       L00007830
L000078A6:
	jmp       L00007863
L000078A8:
	movb      $64, %al
	jmp       L00007830
L000078AC:
	movb      $61, %al
	jmp       L00007830
L000078B0:
	call      ___stack_chk_fail
L000078B5:
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
	subq      $40, %rsp
	movq      %rcx, %r12
	movq      %rdx, %r13
	movq      %rdi, %rbx
	leaq      8(%rbx), %rax
	testb     %sil, %sil
	cmove     %rbx, %rax
	movq      (%rax), %r15
	cmpb      $0, _print_with_color(%rip)
	je        L0000796F
L000078F1:
	movq      %r13, -64(%rbp)
	testb     %sil, %sil
	movq      %r12, -72(%rbp)
	movq      %r15, -56(%rbp)
	je        L0000797F
L00007902:
	movq      8(%rbx), %r13
	movzbl    177(%rbx), %eax
	xorl      %r12d, %r12d
	testl     %eax, %eax
	movzwl    164(%rbx), %r15d
	jne       L000079AE
L00007920:
	movq      _color_indicator+192(%rip), %rcx
	movl      $-1, %r12d
	testq     %rcx, %rcx
	je        L000079AE
L00007932:
	movl      $12, %r14d
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rcx
	je        L00007B8B
L00007949:
	cmpq      $1, %rcx
	jne       L00007BC5
L00007953:
	cmpb      $48, (%rdi)
	jne       L00007BC5
L0000795C:
	decl      %eax
	movl      %eax, %r12d
	cmpb      $0, 176(%rbx)
	jne       L000079B7
L0000796A:
	jmp       L00007A01
L0000796F:
	xorl      %ebx, %ebx
	testq     %r13, %r13
	jne       L00008404
L0000797A:
	jmp       L0000843E
L0000797F:
	movq      (%rbx), %r13
	movb      177(%rbx), %al
	cmpb      $1, _color_symlink_as_referent(%rip)
	jne       L000079A2
L00007991:
	testb     %al, %al
	je        L000079A0
L00007995:
	leaq      164(%rbx), %rcx
	movb      $1, %al
	jmp       L000079A6
L000079A0:
	xorl      %eax, %eax
L000079A2:
	leaq      20(%rbx), %rcx
L000079A6:
	movzbl    %al, %r12d
	movzwl    (%rcx), %r15d
L000079AE:
	cmpb      $0, 176(%rbx)
	je        L00007A01
L000079B7:
	movzwl    %r15w, %eax
	movl      %eax, -44(%rbp)
	movl      %eax, %ecx
	andl      $61440, %ecx
	addl      $-4096, %ecx
	shrl      $12, %ecx
	cmpl      $11, %ecx
	ja        L00007BBF
L000079D8:
	movl      $8, %r14d
	movl      $7, %eax
	xorl      %r15d, %r15d
	leaq      L000088A0(%rip), %rdx
	movslq    (%rdx,%rcx,4), %rcx
	addq      %rdx, %rcx
	jmp       *%rcx
L000079F6:
	movl      $11, %r14d
	jmp       L00007BC5
L00007A01:
	movl      160(%rbx), %eax
	cmpq      $8, %rax
	je        L00007A12
L00007A0D:
	cmpl      $5, %eax
	jne       L00007A6D
L00007A12:
	movq      %r13, %rdi
	call      _strlen
L00007A1A:
	movq      %rax, %rbx
	movq      _color_ext_list(%rip), %r15
	movl      $5, %r14d
	testq     %r15, %r15
	je        L00007BC5
L00007A33:
	addq      %rbx, %r13
	.align 4, 0x90
L00007A40:
	movq      (%r15), %rdx
	cmpq      %rbx, %rdx
	ja        L00007A5F
L00007A48:
	movq      %r13, %rdi
	subq      %rdx, %rdi
	movq      8(%r15), %rsi
	call      _strncmp
L00007A57:
	testl     %eax, %eax
	je        L00007BC8
L00007A5F:
	movq      32(%r15), %r15
	testq     %r15, %r15
	jne       L00007A40
L00007A68:
	jmp       L00007BC5
L00007A6D:
	leaq      _print_color_indicator.filetype_indicator(%rip), %rcx
	movl      (%rcx,%rax,4), %eax
L00007A77:
	xorl      %r15d, %r15d
	testl     %r12d, %r12d
	jne       L00007BA5
L00007A83:
	cmpl      $7, %eax
	movl      %eax, %r14d
	jne       L00007BC8
L00007A8F:
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       L00007BBF
L00007A9D:
	movq      _color_indicator+208(%rip), %rax
	movl      $7, %r14d
	testq     %rax, %rax
	je        L00007BC5
L00007AB3:
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	je        L00007BAA
L00007AC4:
	cmpq      $1, %rax
	jne       L00007BBF
L00007ACE:
	cmpb      $48, (%rdi)
	jne       L00007BBF
L00007AD7:
	jmp       L00007BC5
L00007ADC:
	movl      -44(%rbp), %ecx
	testb     $2, %ch
	sete      %bl
	testb     $2, %cl
	je        L00008623
L00007AEE:
	testb     %bl, %bl
	jne       L00008623
L00007AF6:
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        L00008623
L00007B06:
	movl      $20, %r14d
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	je        L00008607
L00007B1D:
	cmpq      $1, %rax
	jne       L00007BC5
L00007B27:
	cmpb      $48, (%rdi)
	jne       L00007BC5
L00007B30:
	jmp       L00008623
L00007B35:
	movl      $10, %r14d
	jmp       L00007BC5
L00007B40:
	movl      -44(%rbp), %ecx
	testb     $8, %ch
	je        L0000869A
L00007B4C:
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        L0000869A
L00007B5C:
	movl      $16, %r14d
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	je        L0000867E
L00007B73:
	cmpq      $1, %rax
	jne       L00007BC5
L00007B79:
	cmpb      $48, (%rdi)
	jne       L00007BC5
L00007B7E:
	jmp       L0000869A
L00007B83:
	movl      $9, %r14d
	jmp       L00007BC5
L00007B8B:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00007B9C:
	testl     %eax, %eax
	jne       L00007BC5
L00007BA0:
	jmp       L000079AE
L00007BA5:
	movl      %eax, %r14d
	jmp       L00007BC8
L00007BAA:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00007BBB:
	testl     %eax, %eax
	je        L00007BC5
L00007BBF:
	movl      $13, %r14d
L00007BC5:
	xorl      %r15d, %r15d
L00007BC8:
	movl      %r14d, %eax
	shlq      $4, %rax
	leaq      _color_indicator(%rip), %rcx
	addq      %rax, %rcx
	testq     %r15, %r15
	leaq      16(%r15), %rbx
	cmove     %rcx, %rbx
	cmpq      $0, 8(%rbx)
	movq      _color_indicator+64(%rip), %rax
	movq      _color_indicator+72(%rip), %rdi
	je        L00007C20
L00007BF9:
	testq     %rax, %rax
	movq      -72(%rbp), %r12
	movq      -64(%rbp), %r13
	je        L0000806D
L00007C0A:
	cmpq      $2, %rax
	je        L00007C3A
L00007C10:
	cmpq      $1, %rax
	jne       L00007C53
L00007C16:
	cmpb      $48, (%rdi)
	jne       L00007C53
L00007C1B:
	jmp       L0000806D
L00007C20:
	testq     %rax, %rax
	je        L00007C36
L00007C25:
	cmpq      $2, %rax
	je        L00007C8E
L00007C2B:
	cmpq      $1, %rax
	jne       L00007C8A
L00007C31:
	cmpb      $48, (%rdi)
	jne       L00007C8A
L00007C36:
	xorl      %ebx, %ebx
	jmp       L00007CA4
L00007C3A:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00007C4B:
	testl     %eax, %eax
	je        L0000806D
L00007C53:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007E64
L00007C61:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00007CBE
L00007C74:
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       L00007E5A
L00007C8A:
	movb      $1, %bl
	jmp       L00007CA4
L00007C8E:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00007C9F:
	testl     %eax, %eax
	setne     %bl
L00007CA4:
	movq      -72(%rbp), %r12
	movq      -64(%rbp), %r13
	movq      -56(%rbp), %r15
	testq     %r13, %r13
	jne       L00008404
L00007CB9:
	jmp       L0000843E
L00007CBE:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007CE0:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007D87
L00007CEE:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00007D0A
L00007D01:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00007D7A
L00007D0A:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007D25:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007D3B
L00007D2F:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007D3B:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007D56:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007D6C
L00007D60:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007D6C:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00007D7A:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007D87:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007DA2:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007E49
L00007DB0:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00007DCC
L00007DC3:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00007E3C
L00007DCC:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007DE7:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007DFD
L00007DF1:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007DFD:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007E18:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007E2E
L00007E22:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007E2E:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00007E3C:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007E49:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
L00007E5A:
	movl      $1, %edx
	call      _fwrite
L00007E64:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007E86:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008052
L00007E94:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00007EB3
L00007EA7:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00008045
L00007EB3:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007ECE:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007F75
L00007EDC:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00007EF8
L00007EEF:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00007F68
L00007EF8:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007F13:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007F29
L00007F1D:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007F29:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007F44:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007F5A
L00007F4E:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007F5A:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00007F68:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007F75:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007F90:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008037
L00007F9E:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00007FBA
L00007FB1:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L0000802A
L00007FBA:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00007FD5:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00007FEB
L00007FDF:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00007FEB:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00008006:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L0000801C
L00008010:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L0000801C:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L0000802A:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00008037:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00008045:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00008052:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L0000806D:
	movb      _used_color(%rip), %al
	testb     %al, %al
	movq      -56(%rbp), %r15
	jne       L00008190
L0000807F:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L000080A8
L00008092:
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       L00008186
L000080A8:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000080CA:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008112
L000080D4:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L000080EE
L000080E5:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L0000810D
L000080EE:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000080FA:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00008106:
	leaq      _color_indicator+16(%rip), %rdi
L0000810D:
	call      _put_indicator
L00008112:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L0000812D:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008175
L00008137:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00008151
L00008148:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L00008170
L00008151:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L0000815D:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00008169:
	leaq      _color_indicator+16(%rip), %rdi
L00008170:
	call      _put_indicator
L00008175:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
L00008186:
	movl      $1, %edx
	call      _fwrite
L00008190:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000081B2:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000082C0
L000081C0:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L000081DF
L000081D3:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L000082B3
L000081DF:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000081FA:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008242
L00008204:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L0000821E
L00008215:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L0000823D
L0000821E:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L0000822A:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00008236:
	leaq      _color_indicator+16(%rip), %rdi
L0000823D:
	call      _put_indicator
L00008242:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L0000825D:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000082A5
L00008267:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00008281
L00008278:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000082A0
L00008281:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L0000828D:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00008299:
	leaq      _color_indicator+16(%rip), %rdi
L000082A0:
	call      _put_indicator
L000082A5:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L000082B3:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000082C0:
	movq      (%rbx), %rsi
	movq      8(%rbx), %rdi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000082D4:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000083E2
L000082E2:
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        L00008301
L000082F5:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L000083D5
L00008301:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L0000831C:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008364
L00008326:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L00008340
L00008337:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L0000835F
L00008340:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L0000834C:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L00008358:
	leaq      _color_indicator+16(%rip), %rdi
L0000835F:
	call      _put_indicator
L00008364:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L0000837F:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000083C7
L00008389:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L000083A3
L0000839A:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000083C2
L000083A3:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000083AF:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000083BB:
	leaq      _color_indicator+16(%rip), %rdi
L000083C2:
	call      _put_indicator
L000083C7:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L000083D5:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000083E2:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000083FD:
	movb      $1, %bl
	testq     %r13, %r13
	je        L0000843E
L00008404:
	cmpb      $1, _dired(%rip)
	jne       L0000843E
L0000840D:
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L0000842F
L0000841E:
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
L0000842B:
	movq      24(%r13), %rax
L0000842F:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
L0000843E:
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rdi
	movq      _filename_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      %r15, %rsi
	call      _quote_name
L00008459:
	movq      %rax, %r15
	addq      %r15, _dired_pos(%rip)
	testq     %r13, %r13
	je        L000084A2
L00008468:
	cmpb      $1, _dired(%rip)
	jne       L000084A2
L00008471:
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        L00008493
L00008482:
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
L0000848F:
	movq      24(%r13), %rax
L00008493:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
L000084A2:
	call      _process_signals
L000084A7:
	testb     %bl, %bl
	je        L000085F5
L000084AF:
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	movb      _used_color(%rip), %al
	je        L000084E4
L000084C1:
	testb     $1, %al
	jne       L000084D8
L000084C5:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L000084D1:
	movq      _color_indicator+40(%rip), %rdi
L000084D8:
	movq      _color_indicator+32(%rip), %rsi
	jmp       L00008564
L000084E4:
	testb     $1, %al
	jne       L000084F4
L000084E8:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L000084F4:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L0000850F:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008525
L00008519:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00008525:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00008540:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L00008556
L0000854A:
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
L00008556:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
L00008564:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L00008571:
	movq      _line_length(%rip), %rsi
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
	movq      %rax, %rcx
	leaq      -1(%r12,%r15), %rax
	xorl      %edx, %edx
	divq      %rsi
	cmpq      %rax, %rcx
	je        L000085F5
L00008592:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       L000085DA
L0000859C:
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        L000085B6
L000085AD:
	leaq      _color_indicator+32(%rip), %rdi
	jmp       L000085D5
L000085B6:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
L000085C2:
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
L000085CE:
	leaq      _color_indicator+16(%rip), %rdi
L000085D5:
	call      _put_indicator
L000085DA:
	movq      _color_indicator+376(%rip), %rdi
	movq      _color_indicator+368(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
L000085F5:
	movq      %r15, %rax
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00008607:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00008618:
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	jne       L00007BC5
L00008623:
	testb     $2, %cl
	jne       L0000863C
L00008628:
	testb     $2, %ch
	jne       L00008714
L00008631:
	movl      $6, %r14d
	jmp       L00007BC5
L0000863C:
	movq      _color_indicator+304(%rip), %rax
	xorl      %r15d, %r15d
	testq     %rax, %rax
	je        L000086F9
L0000864F:
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	je        L000086E2
L00008660:
	movl      $19, %r14d
	cmpq      $1, %rax
	jne       L00007BC8
L00008670:
	xorl      %r15d, %r15d
	cmpb      $48, (%rdi)
	jne       L00007BC8
L0000867C:
	jmp       L000086F9
L0000867E:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000868F:
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	jne       L00007BC5
L0000869A:
	testb     $4, %ch
	je        L0000876F
L000086A3:
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        L0000876F
L000086B3:
	movl      $17, %r14d
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	je        L00008753
L000086CA:
	cmpq      $1, %rax
	jne       L00007BC5
L000086D4:
	cmpb      $48, (%rdi)
	jne       L00007BC5
L000086DD:
	jmp       L0000876F
L000086E2:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000086F3:
	testl     %eax, %eax
	setne     %r15b
L000086F9:
	testb     %r15b, %r15b
	movl      $19, %eax
	movl      $6, %r14d
	cmovne    %eax, %r14d
	orb       %r15b, %bl
	jne       L00007BC5
L00008714:
	movq      _color_indicator+288(%rip), %rax
	movl      $6, %r14d
	testq     %rax, %rax
	je        L00007BC5
L0000872A:
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $2, %rax
	je        L000087FA
L0000873B:
	cmpq      $1, %rax
	jne       L00008813
L00008745:
	cmpb      $48, (%rdi)
	je        L00007BC5
L0000874E:
	jmp       L00008813
L00008753:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00008764:
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	jne       L00007BC5
L0000876F:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        L000087C1
L0000877B:
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	je        L00008795
L00008788:
	cmpq      $1, %rax
	jne       L000087AD
L0000878E:
	cmpb      $48, (%rdi)
	jne       L000087AD
L00008793:
	jmp       L000087C1
L00008795:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L000087A6:
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	je        L000087C1
L000087AD:
	cmpb      $0, 184(%rbx)
	je        L000087C1
L000087B6:
	movl      $21, %r14d
	jmp       L00007BC5
L000087C1:
	testb     $73, %cl
	je        L00008837
L000087C6:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        L00008837
L000087D2:
	movl      $14, %r14d
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	je        L0000881E
L000087E5:
	cmpq      $1, %rax
	jne       L00007BC5
L000087EF:
	cmpb      $48, (%rdi)
	jne       L00007BC5
L000087F8:
	jmp       L00008837
L000087FA:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000880B:
	testl     %eax, %eax
	je        L00007BC5
L00008813:
	movl      $18, %r14d
	jmp       L00007BC5
L0000881E:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L0000882F:
	testl     %eax, %eax
	jne       L00007BC5
L00008837:
	movzwl    22(%rbx), %eax
	cmpl      $2, %eax
	jb        L00007A12
L00008844:
	movq      _color_indicator+352(%rip), %rax
	testq     %rax, %rax
	je        L00007A12
L00008854:
	movl      $22, %r14d
	movq      _color_indicator+360(%rip), %rdi
	cmpq      $2, %rax
	je        L0000887F
L00008867:
	cmpq      $1, %rax
	jne       L00007BC5
L00008871:
	cmpb      $48, (%rdi)
	je        L00007A12
L0000887A:
	jmp       L00007BC5
L0000887F:
	leaq      LC0000C0D5(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
L00008890:
	testl     %eax, %eax
	jne       L00007BC5
L00008898:
	jmp       L00007A12
L0000889D:
	.align 4, 0x90
# ----------------------
L000088A0:
	.long	L00007BC8-L000088A0
	.long	L000079F6-L000088A0
	.long	L00007BBF-L000088A0
	.long	L00007ADC-L000088A0
	.long	L00007BBF-L000088A0
	.long	L00007B35-L000088A0
	.long	L00007BBF-L000088A0
	.long	L00007B40-L000088A0
	.long	L00007BBF-L000088A0
	.long	L00007A77-L000088A0
	.long	L00007BBF-L000088A0
	.long	L00007B83-L000088A0
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
	movl      %edi, -44(%rbp)
	movq      _max_idx(%rip), %r13
	movq      _cwd_n_used(%rip), %r15
	cmpq      %r15, %r13
	movq      %r15, %r12
	cmovb     %r13, %r12
	cmpq      %r12, _init_column_info.column_info_alloc(%rip)
	jae       L00008AE0
L00008909:
	movq      %r13, %rax
	shrq      $1, %rax
	cmpq      %rax, %r12
	movq      _column_info(%rip), %rdi
	jae       L0000894B
L0000891B:
	movq      $384307168202282326, %rax
	cmpq      %rax, %r12
	jae       L00008C85
L0000892E:
	movq      %r12, %rax
	shlq      $4, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L0000893E:
	movq      %rax, _column_info(%rip)
	leaq      (%r12,%r12), %r14
	jmp       L0000897D
L0000894B:
	movq      $768614336404564651, %rax
	cmpq      %rax, %r13
	jae       L00008C85
L0000895E:
	leaq      0(,%r13,8), %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L0000896F:
	movq      %rax, _column_info(%rip)
	movq      _max_idx(%rip), %r14
L0000897D:
	movq      _init_column_info.column_info_alloc(%rip), %rax
	leaq      1(%r14,%rax), %rsi
	cmpq      %r14, %rsi
	jb        L00008C85
L00008992:
	movq      %r14, %rdi
	subq      %rax, %rdi
	movq      %rsi, %rcx
	imulq     %rdi, %rcx
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rdi
	cmpq      %rsi, %rax
	jne       L00008C85
L000089B0:
	movq      %rcx, %rax
	shrq      $62, %rax
	jne       L00008C85
L000089BD:
	shlq      $2, %rcx
	andq      $-8, %rcx
	movq      %rcx, %rdi
	call      _xmalloc
L000089CD:
	movq      _init_column_info.column_info_alloc(%rip), %rcx
	cmpq      %rcx, %r14
	jbe       L00008AD9
L000089DD:
	movq      _column_info(%rip), %r8
	movl      %r14d, %edi
	subl      %ecx, %edi
	leaq      -1(%r14), %rsi
	subq      %rcx, %rsi
	andq      $7, %rdi
	je        L00008A24
L000089F6:
	leaq      (%rcx,%rcx,2), %rdx
	leaq      16(%r8,%rdx,8), %rdx
	negq      %rdi
	.align 4, 0x90
L00008A10:
	movq      %rax, (%rdx)
	leaq      8(%rax,%rcx,8), %rax
	incq      %rcx
	addq      $24, %rdx
	incq      %rdi
	jne       L00008A10
L00008A24:
	cmpq      $7, %rsi
	jb        L00008AD9
L00008A2E:
	movq      %r14, %rsi
	negq      %rsi
	leaq      (%rcx,%rcx,2), %rdx
	leaq      8(%rcx), %rcx
	leaq      184(%r8,%rdx,8), %rdx
	.align 4, 0x90
L00008A50:
	movq      %rax, -168(%rdx)
	leaq      (%rax,%rcx,8), %rdi
	leaq      -56(%rdi,%rcx,8), %rbx
	leaq      -56(%rax,%rcx,8), %rax
	movq      %rax, -144(%rdx)
	leaq      -48(%rbx,%rcx,8), %rax
	leaq      -104(%rdi,%rcx,8), %rdi
	movq      %rdi, -120(%rdx)
	leaq      -40(%rax,%rcx,8), %rdi
	leaq      -88(%rbx,%rcx,8), %rbx
	movq      %rbx, -96(%rdx)
	leaq      -32(%rdi,%rcx,8), %rbx
	leaq      -72(%rax,%rcx,8), %rax
	movq      %rax, -72(%rdx)
	leaq      -24(%rbx,%rcx,8), %rax
	leaq      -56(%rdi,%rcx,8), %rdi
	movq      %rdi, -48(%rdx)
	leaq      -16(%rax,%rcx,8), %rdi
	leaq      -40(%rbx,%rcx,8), %rbx
	movq      %rbx, -24(%rdx)
	leaq      -24(%rax,%rcx,8), %rax
	movq      %rax, (%rdx)
	leaq      -8(%rdi,%rcx,8), %rax
	leaq      8(%rsi,%rcx), %rdi
	addq      $8, %rcx
	addq      $192, %rdx
	cmpq      $8, %rdi
	jne       L00008A50
L00008AD9:
	movq      %r14, _init_column_info.column_info_alloc(%rip)
L00008AE0:
	movq      %r13, -56(%rbp)
	movq      %r15, -64(%rbp)
	testq     %r12, %r12
	je        L00008B3F
L00008AED:
	movq      _column_info(%rip), %r13
	xorl      %r15d, %r15d
	movl      $8, %ebx
	movl      $3, %r14d
	.align 4, 0x90
L00008B10:
	movb      $1, -24(%r13,%r14,8)
	incq      %r15
	movq      %r14, -16(%r13,%r14,8)
	movq      -8(%r13,%r14,8), %rdi
	leaq      LC00009140(%rip), %rsi
	movq      %rbx, %rdx
	call      _memset_pattern16
L00008B32:
	addq      $8, %rbx
	addq      $3, %r14
	cmpq      %r12, %r15
	jb        L00008B10
L00008B3F:
	cmpq      $0, _cwd_n_used(%rip)
	movq      -64(%rbp), %r15
	movq      -56(%rbp), %r13
	je        L00008C33
L00008B55:
	xorl      %r14d, %r14d
	.align 4, 0x90
L00008B60:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r14,8), %rdi
	call      _length_of_file_name_and_frills
L00008B70:
	movq      %rax, %r10
	testq     %r12, %r12
	je        L00008C20
L00008B7C:
	movq      _column_info(%rip), %rdi
	movq      _cwd_n_used(%rip), %r8
	movq      _line_length(%rip), %r9
	xorl      %ecx, %ecx
	movl      -44(%rbp), %r11d
	.align 4, 0x90
L00008BA0:
	cmpb      $0, (%rdi)
	je        L00008C06
L00008BA5:
	testb     %r11b, %r11b
	je        L00008BD0
L00008BAA:
	leaq      (%r8,%rcx), %rax
	leaq      1(%rcx), %rsi
	xorl      %edx, %edx
	divq      %rsi
	movq      %rax, %rsi
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rsi
	movq      %rax, %rdx
	jmp       L00008BDC
L00008BC7:
	.align 4, 0x90
L00008BD0:
	leaq      1(%rcx), %rsi
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rsi
L00008BDC:
	xorl      %eax, %eax
	cmpq      %rdx, %rcx
	setne     %al
	leaq      (%r10,%rax,2), %rbx
	movq      16(%rdi), %rsi
	movq      %rbx, %rax
	subq      (%rsi,%rdx,8), %rax
	jbe       L00008C06
L00008BF5:
	addq      %rax, 8(%rdi)
	movq      %rbx, (%rsi,%rdx,8)
	cmpq      %r9, 8(%rdi)
	setb      %al
	movb      %al, (%rdi)
L00008C06:
	incq      %rcx
	addq      $24, %rdi
	cmpq      %r12, %rcx
	jb        L00008BA0
L00008C12:
	jmp       L00008C27
L00008C14:
	.align 4, 0x90
L00008C20:
	movq      _cwd_n_used(%rip), %r8
L00008C27:
	incq      %r14
	cmpq      %r8, %r14
	jb        L00008B60
L00008C33:
	notq      %r13
	notq      %r15
	cmpq      %r15, %r13
	cmova     %r13, %r15
	movq      $-2, %rax
	subq      %r15, %rax
	leaq      (%rax,%rax,2), %rcx
	shlq      $3, %rcx
	addq      _column_info(%rip), %rcx
	.align 4, 0x90
L00008C60:
	movq      %r12, %rax
	cmpq      $2, %rax
	jb        L00008C76
L00008C69:
	leaq      -1(%rax), %r12
	cmpb      $0, (%rcx)
	leaq      -24(%rcx), %rcx
	je        L00008C60
L00008C76:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00008C85:
	call      _xalloc_die
L00008C8A:
	.align 4, 0x90
# ----------------------
_length_of_file_name_and_frills:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	subq      $304, %rsp
	movq      %rdi, %r14
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -24(%rbp)
	cmpb      $1, _print_inode(%rip)
	jne       L00008CDE
L00008CB8:
	cmpl      $4, _format(%rip)
	jne       L00008CEB
L00008CC1:
	movq      24(%r14), %rdi
	leaq      -304(%rbp), %rsi
	call      _umaxtostr
L00008CD1:
	movq      %rax, %rdi
	call      _strlen
L00008CD9:
	movq      %rax, %rbx
	jmp       L00008CF2
L00008CDE:
	xorl      %ebx, %ebx
	cmpb      $1, _print_block_size(%rip)
	je        L00008CFE
L00008CE9:
	jmp       L00008D52
L00008CEB:
	movslq    _inode_number_width(%rip), %rbx
L00008CF2:
	incq      %rbx
	cmpb      $1, _print_block_size(%rip)
	jne       L00008D52
L00008CFE:
	cmpl      $4, _format(%rip)
	jne       L00008D38
L00008D07:
	cmpb      $0, 176(%r14)
	je        L00008D41
L00008D11:
	movq      120(%r14), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -304(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
L00008D33:
	movq      %rax, %rdi
	jmp       L00008D48
L00008D38:
	movslq    _block_size_width(%rip), %rax
	jmp       L00008D4D
L00008D41:
	leaq      LC0000C889(%rip), %rdi
L00008D48:
	call      _strlen
L00008D4D:
	leaq      1(%rbx,%rax), %rbx
L00008D52:
	cmpb      $1, _print_scontext(%rip)
	jne       L00008D7E
L00008D5B:
	cmpl      $4, _format(%rip)
	jne       L00008D72
L00008D64:
	movq      168(%r14), %rdi
	call      _strlen
L00008D70:
	jmp       L00008D79
L00008D72:
	movslq    _scontext_width(%rip), %rax
L00008D79:
	leaq      1(%rbx,%rax), %rbx
L00008D7E:
	movq      (%r14), %rsi
	movq      _filename_quoting_options(%rip), %rdx
	leaq      -312(%rbp), %rcx
	xorl      %edi, %edi
	call      _quote_name
L00008D96:
	addq      -312(%rbp), %rbx
	movl      _indicator_style(%rip), %edi
	testl     %edi, %edi
	je        L00008E1F
L00008DA7:
	movb      176(%r14), %al
	testb     %al, %al
	movw      20(%r14), %si
	movl      160(%r14), %ecx
	je        L00008DDE
L00008DBE:
	movl      %esi, %edx
	andl      $61440, %edx
	cmpl      $32768, %edx
	je        L00008DF0
L00008DCE:
	movb      $64, %r8b
	movzwl    %dx, %edx
	cmpl      $16384, %edx
	je        L00008E17
L00008DDC:
	jmp       L00008E0F
L00008DDE:
	movb      $64, %r8b
	cmpl      $3, %ecx
	je        L00008E17
L00008DE6:
	cmpl      $9, %ecx
	je        L00008E17
L00008DEB:
	cmpl      $5, %ecx
	jne       L00008E0F
L00008DF0:
	andl      $73, %esi
	xorl      %r8d, %r8d
	cmpl      $3, %edi
	movb      $42, %cl
	je        L00008DFF
L00008DFD:
	xorl      %ecx, %ecx
L00008DFF:
	testb     %al, %al
	je        L00008E05
L00008E03:
	movl      %ecx, %eax
L00008E05:
	testw     %si, %si
	je        L00008E17
L00008E0A:
	movb      %al, %r8b
	jmp       L00008E17
L00008E0F:
	cmpl      $1, %edi
	jne       L00008E3E
L00008E14:
	xorl      %r8d, %r8d
L00008E17:
	cmpb      $1, %r8b
	sbbq      $-1, %rbx
L00008E1F:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -24(%rbp), %rax
	jne       L00008E7F
L00008E2F:
	movq      %rbx, %rax
	addq      $304, %rsp
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
L00008E3E:
	testb     %al, %al
	je        L00008E66
L00008E42:
	andl      $61440, %esi
	movb      $64, %r8b
	cmpl      $40960, %esi
	je        L00008E17
L00008E53:
	movzwl    %si, %eax
	cmpl      $49152, %eax
	je        L00008E17
L00008E5D:
	cmpl      $4096, %eax
	je        L00008E17
L00008E64:
	jmp       L00008E14
L00008E66:
	decl      %ecx
	cmpl      $7, %ecx
	jae       L00008E14
L00008E6D:
	shlb      $3, %cl
	movq      $17240342323527804, %r8
	shrq      %cl, %r8
	jmp       L00008E17
L00008E7F:
	call      ___stack_chk_fail
L00008E84:
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
	jae       L00008F5F
L00008EA9:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
L00008EB0:
	movq      _tabsize(%rip), %rdi
	testq     %rdi, %rdi
	je        L00008F10
L00008EBC:
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rdi
	movq      %rax, %rcx
	leaq      1(%rbx), %rax
	xorl      %edx, %edx
	divq      %rdi
	cmpq      %rax, %rcx
	jbe       L00008F10
L00008ED5:
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00008EEA
L00008EE5:
	cmpl      40(%rsi), %eax
	jle       L00008F4C
L00008EEA:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $9, (%rax)
L00008EF7:
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %rdi
	addq      %rbx, %rdi
	subq      %rdx, %rdi
	movq      %rdi, %rbx
	cmpq      %r14, %rbx
	jb        L00008EB0
L00008F0D:
	jmp       L00008F5F
L00008F0F:
	.align 4, 0x90
L00008F10:
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00008F25
L00008F20:
	cmpl      40(%rsi), %eax
	jle       L00008F40
L00008F25:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
L00008F32:
	incq      %rbx
	cmpq      %r14, %rbx
	jb        L00008EB0
L00008F3E:
	jmp       L00008F5F
L00008F40:
	movl      $32, %edi
	call      ___swbuf
L00008F4A:
	jmp       L00008F32
L00008F4C:
	movl      $9, %edi
	call      ___swbuf
L00008F56:
	movq      _tabsize(%rip), %rdi
	jmp       L00008EF7
L00008F5F:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00008F6A:
	.align 4, 0x90
# ----------------------
_format_user_or_group:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	movl      %edx, %r15d
	movq      %rsi, %rcx
	movq      %rdi, %r14
	testq     %r14, %r14
	je        L00008FFC
L00008F89:
	xorl      %ebx, %ebx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _gnu_mbswidth
L00008F95:
	subl      %eax, %r15d
	cmovs     %ebx, %r15d
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	movq      %r14, %rdi
	call      _fputs
L00008FAF:
	movq      %r14, %rdi
	call      _strlen
L00008FB7:
	movq      %rax, %r14
	movl      %r15d, %ebx
	notl      %ebx
	.align 4, 0x90
L00008FC0:
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00008FD6
L00008FD1:
	cmpl      40(%rsi), %eax
	jle       L00008FE9
L00008FD6:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	incl      %ebx
	jne       L00008FC0
L00008FE7:
	jmp       L00008FF7
L00008FE9:
	movl      $32, %edi
	call      ___swbuf
L00008FF3:
	incl      %ebx
	jne       L00008FC0
L00008FF7:
	addq      %r15, %r14
	jmp       L00009013
L00008FFC:
	leaq      LC0000C8AD(%rip), %rdi
	xorl      %eax, %eax
	movl      %r15d, %esi
	movq      %rcx, %rdx
	call      _printf
L00009010:
	movslq    %r15d, %r14
L00009013:
	movq      _dired_pos(%rip), %rax
	leaq      1(%r14,%rax), %rax
	movq      %rax, _dired_pos(%rip)
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000902F:
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
	subq      $184, %rsp
	movl      %ecx, %r14d
	movq      %rdx, %r12
	movq      %rsi, %rbx
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      $0, _required_mon_width(%rip)
	je        L000090E3
L00009068:
	leaq      LC0000C3B9(%rip), %rsi
	movq      %rbx, %rdi
	call      _strstr
L00009077:
	movq      %rax, %r13
	testq     %r13, %r13
	je        L000090E3
L0000907F:
	cmpl      $11, 16(%r12)
	ja        L000090E3
L00009087:
	movq      %rbx, %rdi
	call      _strlen
L0000908F:
	cmpq      $101, %rax
	ja        L000090E3
L00009095:
	leaq      -224(%rbp), %rdi
	movq      %r13, %rdx
	subq      %rbx, %rdx
	movq      %rbx, %rsi
	movq      %rdx, %rbx
	call      _memcpy
L000090AD:
	leaq      -224(%rbp,%rbx), %rdi
	movslq    16(%r12), %rax
	imulq     $61, %rax, %rax
	leaq      _abmon(%rip), %rsi
	addq      %rax, %rsi
	call      _stpcpy
L000090CD:
	addq      $2, %r13
	movq      %rax, %rdi
	movq      %r13, %rsi
	call      _strcpy
L000090DC:
	leaq      -224(%rbp), %rbx
L000090E3:
	movl      $1001, %esi
	xorl      %r8d, %r8d
	movq      %r15, %rdi
	movq      %rbx, %rdx
	movq      %r12, %rcx
	movl      %r14d, %r9d
	call      _nstrftime
L000090FC:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       L0000911E
L0000910C:
	addq      $184, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000911E:
	call      ___stack_chk_fail
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LC00009130:
	.long	0
	.long	2147483648
	.long	-1
	.long	-1
	.align 4
LC00009140:
	.long	3
	.long	0
	.long	3
	.long	0
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
LC00009227:
	.zero	9
	.align 4
_time_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
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
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC0000A4A8:
	.byte	0
LC0000A4A9:
	.string	"."
LC0000A4AB:
	.string	"main"
LC0000A4B0:
	.string	"src/ls.c"
LC0000A4B9:
	.string	"found"
LC0000A4BF:
	.string	"\033["
LC0000A4C2:
	.string	"//DIRED//"
LC0000A4CC:
	.string	"//SUBDIRED//"
LC0000A4D9:
	.string	"//DIRED-OPTIONS// --quoting-style=%s\n"
LC0000A4FF:
	.string	"hash_get_n_entries (active_dir_set) == 0"
LC0000A528:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
LC0000A549:
	.string	"List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"
LC0000A5D9:
	.string	"  -a, --all                  do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"
LC0000A6E8:
	.string	"      --block-size=SIZE      scale sizes by SIZE before printing them; e.g.,\n                               '--block-size=M' prints sizes in units of\n                               1,048,576 bytes; see SIZE format below\n  -B, --ignore-backups       do not list implied entries ending with ~\n  -c                         with -lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"
LC0000A92E:
	.string	"  -C                         list entries by columns\n      --color[=WHEN]         colorize the output; WHEN can be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"
LC0000AA9D:
	.string	"  -f                         do not sort, enable -aU, disable -ls --color\n  -F, --classify             append indicator (one of */=>@|) to entries\n      --file-type            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"
LC0000AC40:
	.string	"  -g                         like -l, but do not list owner\n"
LC0000AC7D:
	.string	"      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"
LC0000AD72:
	.string	"  -G, --no-group             in a long listing, don't print group names\n  -h, --human-readable       with -l and/or -s, print human readable sizes\n                               (e.g., 1K 234M 2G)\n      --si                   likewise, but use powers of 1000 not 1024\n"
LC0000AE7F:
	.string	"  -H, --dereference-command-line\n                             follow symbolic links listed on the command line\n      --dereference-command-line-symlink-to-dir\n                             follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"
LC0000B025:
	.string	"      --indicator-style=WORD  append indicator with style WORD to entry names:\n                               none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n  -k, --kibibytes            default to 1024-byte blocks for disk usage\n"
LC0000B1CF:
	.string	"  -l                         use a long listing format\n  -L, --dereference          when showing file information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"
LC0000B336:
	.string	"  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs\n  -N, --literal              print raw entry names (don't treat e.g. control\n                               characters specially)\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"
LC0000B4A8:
	.string	"  -q, --hide-control-chars   print ? instead of nongraphic characters\n      --show-control-chars   show nongraphic characters as-is (the default,\n                               unless program is 'ls' and output is a terminal)\n  -Q, --quote-name           enclose entry names in double quotes\n      --quoting-style=WORD   use quoting style WORD for entry names:\n                               literal, locale, shell, shell-always, c, escape\n"
LC0000B661:
	.string	"  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"
LC0000B726:
	.string	"  -S                         sort by file size, largest first\n      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),\n                               time (-t), version (-v), extension (-X)\n      --time=WORD            with -l, show time as WORD instead of default\n                               modification time: atime or access or use (-u);\n                               ctime or status (-c); also use specified time\n                               as sort key if --sort=time (newest first)\n"
LC0000B92D:
	.string	"      --time-style=STYLE     with -l, show times using style STYLE:\n                               full-iso, long-iso, iso, locale, or +FORMAT;\n                               FORMAT is interpreted like in 'date'; if FORMAT\n                               is FORMAT1<newline>FORMAT2, then FORMAT1 applies\n                               to non-recent files and FORMAT2 to recent files;\n                               if STYLE is prefixed with 'posix-', STYLE\n                               takes effect only outside the POSIX locale\n"
LC0000BB40:
	.string	"  -t                         sort by modification time, newest first\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"
LC0000BBCE:
	.string	"  -u                         with -lt: sort by, and show, access time;\n                               with -l: show access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"
LC0000BD42:
	.string	"  -w, --width=COLS           assume screen width instead of current value\n  -x                         list entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"
LC0000BEAE:
	.string	"      --help     display this help and exit\n"
LC0000BEDB:
	.string	"      --version  output version information and exit\n"
LC0000BF11:
	.string	"\nUsing color to distinguish file types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"
LC0000C02F:
	.string	"\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"
LC0000C0C7:
	.string	"ls"
LC0000C0CA:
	.string	"dir"
LC0000C0CE:
	.string	"vdir"
LC0000C0D3:
	.string	"0"
LC0000C0D5:
	.string	"00"
LC0000C0D8:
	.string	"dev_ino_pop"
LC0000C0E4:
	.string	"dev_ino_size <= obstack_object_size (&dev_ino_obstack)"
LC0000C11B:
	.string	"m"
LC0000C11D:
	.string	"01;34"
LC0000C123:
	.string	"01;36"
LC0000C129:
	.string	"33"
LC0000C12C:
	.string	"01;35"
LC0000C132:
	.string	"01;33"
LC0000C138:
	.string	"01;32"
LC0000C13E:
	.string	"37;41"
LC0000C144:
	.string	"30;43"
LC0000C14A:
	.string	"37;44"
LC0000C150:
	.string	"34;42"
LC0000C156:
	.string	"30;42"
LC0000C15C:
	.string	"30;41"
LC0000C162:
	.string	"\033[K"
LC0000C166:
	.string	" %lu"
LC0000C16B:
	.string	"COLUMNS"
LC0000C173:
	.string	"ignoring invalid width in environment variable COLUMNS: %s"
LC0000C1AE:
	.string	"TABSIZE"
LC0000C1B6:
	.string	"ignoring invalid tab size in environment variable TABSIZE: %s"
LC0000C1F4:
	.string	"abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
LC0000C220:
	.string	"invalid line width"
LC0000C233:
	.string	"*~"
LC0000C236:
	.string	".*~"
LC0000C23A:
	.string	"invalid tab size"
LC0000C24B:
	.string	"--sort"
LC0000C252:
	.string	"--time"
LC0000C259:
	.string	"--format"
LC0000C262:
	.string	"full-iso"
LC0000C26B:
	.string	"--color"
LC0000C273:
	.string	"--indicator-style"
LC0000C285:
	.string	"--quoting-style"
LC0000C295:
	.string	"GNU coreutils"
LC0000C2A3:
	.string	"Richard M. Stallman"
LC0000C2B7:
	.string	"David MacKenzie"
LC0000C2C7:
	.string	"LS_BLOCK_SIZE"
LC0000C2D5:
	.string	"BLOCK_SIZE"
LC0000C2E0:
	.string	"*=>@|"
LC0000C2E6:
	.string	"TIME_STYLE"
LC0000C2F1:
	.string	"locale"
LC0000C2F8:
	.string	"invalid time style format %s"
LC0000C315:
	.string	"time style"
LC0000C320:
	.string	"Valid arguments are:\n"
LC0000C336:
	.string	"  - [posix-]%s\n"
LC0000C346:
	.string	"  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"
LC0000C37C:
	.string	"%Y-%m-%d %H:%M:%S.%N %z"
LC0000C394:
	.string	"%Y-%m-%d %H:%M"
LC0000C3A3:
	.string	"%Y-%m-%d "
LC0000C3AD:
	.string	"%m-%d %H:%M"
LC0000C3B9:
	.string	"%b"
LC0000C3BC:
	.string	"error initializing month strings"
LC0000C3DD:
	.string	"QUOTING_STYLE"
LC0000C3EB:
	.string	"ignoring invalid value of environment variable QUOTING_STYLE: %s"
LC0000C42C:
	.string	"all"
LC0000C430:
	.string	"escape"
LC0000C437:
	.string	"directory"
LC0000C441:
	.string	"dired"
LC0000C447:
	.string	"full-time"
LC0000C451:
	.string	"group-directories-first"
LC0000C469:
	.string	"human-readable"
LC0000C478:
	.string	"inode"
LC0000C47E:
	.string	"kibibytes"
LC0000C488:
	.string	"numeric-uid-gid"
LC0000C498:
	.string	"no-group"
LC0000C4A1:
	.string	"hide-control-chars"
LC0000C4B4:
	.string	"reverse"
LC0000C4BC:
	.string	"size"
LC0000C4C1:
	.string	"width"
LC0000C4C7:
	.string	"almost-all"
LC0000C4D2:
	.string	"ignore-backups"
LC0000C4E1:
	.string	"classify"
LC0000C4EA:
	.string	"file-type"
LC0000C4F4:
	.string	"si"
LC0000C4F7:
	.string	"dereference-command-line"
LC0000C510:
	.string	"dereference-command-line-symlink-to-dir"
LC0000C538:
	.string	"hide"
LC0000C53D:
	.string	"ignore"
LC0000C544:
	.string	"indicator-style"
LC0000C554:
	.string	"dereference"
LC0000C560:
	.string	"literal"
LC0000C568:
	.string	"quote-name"
LC0000C573:
	.string	"quoting-style"
LC0000C581:
	.string	"recursive"
LC0000C58B:
	.string	"format"
LC0000C592:
	.string	"show-control-chars"
LC0000C5A5:
	.string	"sort"
LC0000C5AA:
	.string	"tabsize"
LC0000C5B2:
	.string	"time"
LC0000C5B7:
	.string	"time-style"
LC0000C5C2:
	.string	"color"
LC0000C5C8:
	.string	"block-size"
LC0000C5D3:
	.string	"context"
LC0000C5DB:
	.string	"author"
LC0000C5E2:
	.string	"help"
LC0000C5E7:
	.string	"version"
LC0000C5EF:
	.string	"none"
LC0000C5F4:
	.string	"extension"
LC0000C5FE:
	.string	"atime"
LC0000C604:
	.string	"access"
LC0000C60B:
	.string	"use"
LC0000C60F:
	.string	"ctime"
LC0000C615:
	.string	"status"
LC0000C61C:
	.string	"verbose"
LC0000C624:
	.string	"long"
LC0000C629:
	.string	"commas"
LC0000C630:
	.string	"horizontal"
LC0000C63B:
	.string	"across"
LC0000C642:
	.string	"vertical"
LC0000C64B:
	.string	"single-column"
LC0000C659:
	.string	"always"
LC0000C660:
	.string	"yes"
LC0000C664:
	.string	"force"
LC0000C66A:
	.string	"never"
LC0000C670:
	.string	"no"
LC0000C673:
	.string	"auto"
LC0000C678:
	.string	"tty"
LC0000C67C:
	.string	"if-tty"
LC0000C683:
	.string	"slash"
LC0000C689:
	.string	"%b %e  %Y"
LC0000C693:
	.string	"%b %e %H:%M"
LC0000C69F:
	.string	"long-iso"
LC0000C6A8:
	.string	"iso"
LC0000C6AC:
	.string	"LS_COLORS"
LC0000C6B6:
	.string	"COLORTERM"
# ----------------------
LC0000C6C0:
	.string	"?\077"
LC0000C6C3:
	.string	"unrecognized prefix: %s"
LC0000C6DB:
	.string	"unparsable value for LS_COLORS environment variable"
LC0000C70F:
	.string	"target"
LC0000C716:
	.string	"TERM"
LC0000C71B:
	.string	"TERM "
LC0000C721:
	.string	"lc"
LC0000C724:
	.string	"rc"
LC0000C727:
	.string	"ec"
LC0000C72A:
	.string	"rs"
LC0000C72D:
	.string	"fi"
LC0000C730:
	.string	"di"
LC0000C733:
	.string	"ln"
LC0000C736:
	.string	"pi"
LC0000C739:
	.string	"so"
LC0000C73C:
	.string	"bd"
LC0000C73F:
	.string	"cd"
LC0000C742:
	.string	"mi"
LC0000C745:
	.string	"or"
LC0000C748:
	.string	"ex"
LC0000C74B:
	.string	"do"
LC0000C74E:
	.string	"su"
LC0000C751:
	.string	"sg"
LC0000C754:
	.string	"st"
LC0000C757:
	.string	"ow"
LC0000C75A:
	.string	"tw"
LC0000C75D:
	.string	"ca"
LC0000C760:
	.string	"mh"
LC0000C763:
	.string	"cl"
LC0000C766:
	.string	"cannot open directory %s"
LC0000C77F:
	.string	"cannot determine device and inode of %s"
LC0000C7A7:
	.string	"%s: not listing already-listed directory"
LC0000C7D0:
	.string	"  "
LC0000C7D3:
	.string	":\n"
LC0000C7D6:
	.string	"reading directory %s"
LC0000C7EB:
	.string	"closing directory %s"
LC0000C800:
	.string	"total"
LC0000C806:
	.string	"cannot access %s"
LC0000C817:
	.string	"%s"
LC0000C81A:
	.string	"cannot read symbolic link %s"
LC0000C837:
	.string	"%lu"
LC0000C83B:
	.string	"sort_files"
LC0000C846:
	.string	"sort_type != sort_version"
LC0000C860:
	.string	"cannot compare file names %s and %s"
LC0000C884:
	.string	"%*s "
LC0000C889:
	.string	"?"
_filetype_letter:
	.string	"?pcdb-lswd"
LC0000C896:
	.string	"%s %*s "
LC0000C89E:
	.string	"%*s, %*s "
LC0000C8A8:
	.string	" -> "
LC0000C8AD:
	.string	"%*lu "
LC0000C8B3:
	.string	"Try '%s --help' for more information.\n"
LC0000C8DA:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
LC0000C925:
	.string	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\n"
LC0000C9BE:
	.string	"["
LC0000C9C0:
	.string	"test invocation"
LC0000C9D0:
	.string	"coreutils"
LC0000C9DA:
	.string	"Multi-call invocation"
LC0000C9F0:
	.string	"sha224sum"
LC0000C9FA:
	.string	"sha2 utilities"
LC0000CA09:
	.string	"sha256sum"
LC0000CA13:
	.string	"sha384sum"
LC0000CA1D:
	.string	"sha512sum"
LC0000CA27:
	.string	"\n%s online help: <%s>\n"
LC0000CA3E:
	.string	"http://www.gnu.org/software/coreutils/"
LC0000CA65:
	.string	"en_"
LC0000CA69:
	.string	"Report %s translation bugs to <http://translationproject.org/team/>\n"
LC0000CAAE:
	.string	"Full documentation at: <%s%s>\n"
LC0000CACD:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
LC0000CB00:
	.string	" invocation"
# ----------------------
	.section       __DATA,__data,regular
	.align 2
_color_indicator:
	.long	2
	.long	0
	.quad	LC0000A4BF
	.long	1
	.long	0
	.quad	LC0000C11B
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.quad	LC0000C0D3
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
	.quad	LC0000C11D
	.long	5
	.long	0
	.quad	LC0000C123
	.long	2
	.long	0
	.quad	LC0000C129
	.long	5
	.long	0
	.quad	LC0000C12C
	.long	5
	.long	0
	.quad	LC0000C132
	.long	5
	.long	0
	.quad	LC0000C132
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
	.quad	LC0000C138
	.long	5
	.long	0
	.quad	LC0000C12C
	.long	5
	.long	0
	.quad	LC0000C13E
	.long	5
	.long	0
	.quad	LC0000C144
	.long	5
	.long	0
	.quad	LC0000C14A
	.long	5
	.long	0
	.quad	LC0000C150
	.long	5
	.long	0
	.quad	LC0000C156
	.long	5
	.long	0
	.quad	LC0000C15C
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.quad	LC0000C162
	.align 2
_file_output_block_size:
	.long	1
	.long	0
	.long	0
	.long	0
	.align 4
_long_time_format:
	.quad	LC0000C689
	.quad	LC0000C693
	.align 2
_UNKNOWN_SECURITY_CONTEXT:
	.long	63
	.align 2
_long_time_expected_width.width:
	.long	-1
# ----------------------
	.section       __DATA,__const,regular
	.align 4
_long_options:
	.quad	LC0000C42C
	.long	0
	.long	0
	.long	0
	.long	0
	.long	97
	.long	0
	.quad	LC0000C430
	.long	0
	.long	0
	.long	0
	.long	0
	.long	98
	.long	0
	.quad	LC0000C437
	.long	0
	.long	0
	.long	0
	.long	0
	.long	100
	.long	0
	.quad	LC0000C441
	.long	0
	.long	0
	.long	0
	.long	0
	.long	68
	.long	0
	.quad	LC0000C447
	.long	0
	.long	0
	.long	0
	.long	0
	.long	134
	.long	0
	.quad	LC0000C451
	.long	0
	.long	0
	.long	0
	.long	0
	.long	135
	.long	0
	.quad	LC0000C469
	.long	0
	.long	0
	.long	0
	.long	0
	.long	104
	.long	0
	.quad	LC0000C478
	.long	0
	.long	0
	.long	0
	.long	0
	.long	105
	.long	0
	.quad	LC0000C47E
	.long	0
	.long	0
	.long	0
	.long	0
	.long	107
	.long	0
	.quad	LC0000C488
	.long	0
	.long	0
	.long	0
	.long	0
	.long	110
	.long	0
	.quad	LC0000C498
	.long	0
	.long	0
	.long	0
	.long	0
	.long	71
	.long	0
	.quad	LC0000C4A1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	113
	.long	0
	.quad	LC0000C4B4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	114
	.long	0
	.quad	LC0000C4BC
	.long	0
	.long	0
	.long	0
	.long	0
	.long	115
	.long	0
	.quad	LC0000C4C1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	119
	.long	0
	.quad	LC0000C4C7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	65
	.long	0
	.quad	LC0000C4D2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	66
	.long	0
	.quad	LC0000C4E1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	70
	.long	0
	.quad	LC0000C4EA
	.long	0
	.long	0
	.long	0
	.long	0
	.long	132
	.long	0
	.quad	LC0000C4F4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	140
	.long	0
	.quad	LC0000C4F7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	72
	.long	0
	.quad	LC0000C510
	.long	0
	.long	0
	.long	0
	.long	0
	.long	131
	.long	0
	.quad	LC0000C538
	.long	1
	.long	0
	.long	0
	.long	0
	.long	136
	.long	0
	.quad	LC0000C53D
	.long	1
	.long	0
	.long	0
	.long	0
	.long	73
	.long	0
	.quad	LC0000C544
	.long	1
	.long	0
	.long	0
	.long	0
	.long	137
	.long	0
	.quad	LC0000C554
	.long	0
	.long	0
	.long	0
	.long	0
	.long	76
	.long	0
	.quad	LC0000C560
	.long	0
	.long	0
	.long	0
	.long	0
	.long	78
	.long	0
	.quad	LC0000C568
	.long	0
	.long	0
	.long	0
	.long	0
	.long	81
	.long	0
	.quad	LC0000C573
	.long	1
	.long	0
	.long	0
	.long	0
	.long	138
	.long	0
	.quad	LC0000C581
	.long	0
	.long	0
	.long	0
	.long	0
	.long	82
	.long	0
	.quad	LC0000C58B
	.long	1
	.long	0
	.long	0
	.long	0
	.long	133
	.long	0
	.quad	LC0000C592
	.long	0
	.long	0
	.long	0
	.long	0
	.long	139
	.long	0
	.quad	LC0000C5A5
	.long	1
	.long	0
	.long	0
	.long	0
	.long	141
	.long	0
	.quad	LC0000C5AA
	.long	1
	.long	0
	.long	0
	.long	0
	.long	84
	.long	0
	.quad	LC0000C5B2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	142
	.long	0
	.quad	LC0000C5B7
	.long	1
	.long	0
	.long	0
	.long	0
	.long	143
	.long	0
	.quad	LC0000C5C2
	.long	2
	.long	0
	.long	0
	.long	0
	.long	130
	.long	0
	.quad	LC0000C5C8
	.long	1
	.long	0
	.long	0
	.long	0
	.long	129
	.long	0
	.quad	LC0000C5D3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	90
	.long	0
	.quad	LC0000C5DB
	.long	0
	.long	0
	.long	0
	.long	0
	.long	128
	.long	0
	.quad	LC0000C5E2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-130
	.long	0
	.quad	LC0000C5E7
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
	.align 4
_sort_args:
	.quad	LC0000C5EF
	.quad	LC0000C5B2
	.quad	LC0000C4BC
	.quad	LC0000C5F4
	.quad	LC0000C5E7
	.zero	8
	.align 4
_time_args:
	.quad	LC0000C5FE
	.quad	LC0000C604
	.quad	LC0000C60B
	.quad	LC0000C60F
	.quad	LC0000C615
	.zero	8
	.align 4
_format_args:
	.quad	LC0000C61C
	.quad	LC0000C624
	.quad	LC0000C629
	.quad	LC0000C630
	.quad	LC0000C63B
	.quad	LC0000C642
	.quad	LC0000C64B
	.zero	8
	.align 4
_color_args:
	.quad	LC0000C659
	.quad	LC0000C660
	.quad	LC0000C664
	.quad	LC0000C66A
	.quad	LC0000C670
	.quad	LC0000C5EF
	.quad	LC0000C673
	.quad	LC0000C678
	.quad	LC0000C67C
	.zero	8
	.align 4
_indicator_style_args:
	.quad	LC0000C5EF
	.quad	LC0000C683
	.quad	LC0000C4EA
	.quad	LC0000C4E1
	.zero	16
	.align 4
_time_style_args:
	.quad	LC0000C262
	.quad	LC0000C69F
	.quad	LC0000C6A8
	.quad	LC0000C2F1
	.zero	16
	.align 4
_indicator_name:
	.quad	LC0000C721
	.quad	LC0000C724
	.quad	LC0000C727
	.quad	LC0000C72A
	.quad	LC0000C670
	.quad	LC0000C72D
	.quad	LC0000C730
	.quad	LC0000C733
	.quad	LC0000C736
	.quad	LC0000C739
	.quad	LC0000C73C
	.quad	LC0000C73F
	.quad	LC0000C742
	.quad	LC0000C745
	.quad	LC0000C748
	.quad	LC0000C74B
	.quad	LC0000C74E
	.quad	LC0000C751
	.quad	LC0000C754
	.quad	LC0000C757
	.quad	LC0000C75A
	.quad	LC0000C75D
	.quad	LC0000C760
	.quad	LC0000C763
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
_emit_ancillary_info.infomap:
	.quad	LC0000C9BE
	.quad	LC0000C9C0
	.quad	LC0000C9D0
	.quad	LC0000C9DA
	.quad	LC0000C9F0
	.quad	LC0000C9FA
	.quad	LC0000CA09
	.quad	LC0000C9FA
	.quad	LC0000CA13
	.quad	LC0000C9FA
	.quad	LC0000CA1D
	.quad	LC0000C9FA
	.zero	16
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
.zerofill __DATA,__bss,_qmark_funny_chars,4,2
# ----------------------
.zerofill __DATA,__bss,_time_type,4,2
# ----------------------
.zerofill __DATA,__bss,_sort_reverse,1,0
# ----------------------
.zerofill __DATA,__bss,_numeric_ids,1,0
# ----------------------
.zerofill __DATA,__bss,_print_inode,2,1
# ----------------------
.zerofill __DATA,__bss,_ignore_mode,4,2
# ----------------------
.zerofill __DATA,__bss,_ignore_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_hide_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_line_length,8,3
# ----------------------
.zerofill __DATA,__bss,_tabsize,8,3
# ----------------------
.zerofill __DATA,__bss,_print_owner,4,2
# ----------------------
.zerofill __DATA,__bss,_human_output_opts,4,2
# ----------------------
.zerofill __DATA,__bss,_file_human_output_opts,8,3
# ----------------------
.zerofill __DATA,__bss,_output_block_size,8,3
# ----------------------
.zerofill __DATA,__bss,_print_group,1,0
# ----------------------
.zerofill __DATA,__bss,_print_author,7,0
# ----------------------
.zerofill __DATA,__bss,_max_idx,8,3
# ----------------------
.zerofill __DATA,__bss,_dirname_quoting_options,8,3
# ----------------------
.zerofill __DATA,__bss,_required_mon_width,8,3
# ----------------------
.zerofill __DATA,__bss,_abmon,736,5
# ----------------------
.zerofill __DATA,__bss,_color_buf,8,3
# ----------------------
.zerofill __DATA,__bss,_color_ext_list,8,3
# ----------------------
.zerofill __DATA,__bss,_print_dir.first,8,3
# ----------------------
.zerofill __DATA,__bss,_sorted_file,8,3
# ----------------------
.zerofill __DATA,__bss,_any_has_acl,4,2
# ----------------------
.zerofill __DATA,__bss,_inode_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_block_size_width,4,2
# ----------------------
.zerofill __DATA,__bss,_nlink_width,4,2
# ----------------------
.zerofill __DATA,__bss,_owner_width,4,2
# ----------------------
.zerofill __DATA,__bss,_group_width,4,2
# ----------------------
.zerofill __DATA,__bss,_author_width,4,2
# ----------------------
.zerofill __DATA,__bss,_scontext_width,4,2
# ----------------------
.zerofill __DATA,__bss,_major_device_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_minor_device_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_file_size_width,4,2
# ----------------------
.zerofill __DATA,__bss,_has_capability_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_getfilecon_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_file_has_acl_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_sorted_file_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_failed_strcoll,152,3
# ----------------------
.zerofill __DATA,__bss,_column_info,8,3
# ----------------------
.zerofill __DATA,__bss,_init_column_info.column_info_alloc,8,3
# ----------------------

.subsections_via_symbols
