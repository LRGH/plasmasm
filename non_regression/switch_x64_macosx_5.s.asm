	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp3:
Ltmp4:
	movq      %rsp, %rbp
Ltmp5:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $392, %rsp
Ltmp6:
Ltmp7:
Ltmp8:
Ltmp9:
Ltmp10:
	movq      %rsi, -400(%rbp)
	movl      %edi, %r15d
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rsi), %rdi
	call      _set_program_name
	leaq      L_.str(%rip), %rsi
	xorl      %edi, %edi
	call      _setlocale
	movq      _exit_failure@GOTPCREL(%rip), %rax
	movl      $2, (%rax)
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
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
	je        LBB0_6
	cmpl      $3, %eax
	jne       LBB0_2
	movl      $0, _format(%rip)
	jmp       LBB0_4
LBB0_6:
	movl      $1, %edi
	call      _isatty
	testl     %eax, %eax
	je        LBB0_9
	movl      $2, _format(%rip)
	movb      $1, _qmark_funny_chars(%rip)
	jmp       LBB0_10
LBB0_2:
	cmpl      $2, %eax
	jne       LBB0_8
	movl      $2, _format(%rip)
LBB0_4:
	xorl      %edi, %edi
	movl      $5, %esi
	call      _set_quoting_style
LBB0_10:
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
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        LBB0_14
	movq      _quoting_style_args@GOTPCREL(%rip), %rsi
	movq      _quoting_style_vals@GOTPCREL(%rip), %r14
	movl      $4, %ecx
	movq      %rbx, %rdi
	movq      %r14, %rdx
	call      _argmatch
	testl     %eax, %eax
	js        LBB0_13
	cltq      
	movl      (%r14,%rax,4), %esi
	xorl      %edi, %edi
	call      _set_quoting_style
	jmp       LBB0_14
LBB0_13:
	movq      %rbx, %rdi
	call      _quotearg
	movq      %rax, %rcx
	leaq      L_.str215(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_14:
	movq      $80, _line_length(%rip)
	leaq      L_.str115(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        LBB0_20
	cmpb      $0, (%rbx)
	je        LBB0_20
	leaq      -328(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
	testl     %eax, %eax
	jne       LBB0_19
	movq      -328(%rbp), %rax
	testq     %rax, %rax
	je        LBB0_19
	movq      %rax, _line_length(%rip)
	jmp       LBB0_20
LBB0_19:
	movq      %rbx, %rdi
	call      _quotearg
	movq      %rax, %rcx
	leaq      L_.str116(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_20:
	movl      %r15d, -392(%rbp)
	leaq      -336(%rbp), %rdx
	movl      $1, %edi
	movl      $1074295912, %esi
	xorl      %eax, %eax
	call      _ioctl
	cmpl      $-1, %eax
	je        LBB0_23
	movzwl    -334(%rbp), %eax
	testq     %rax, %rax
	je        LBB0_23
	movq      %rax, _line_length(%rip)
LBB0_23:
	leaq      L_.str117(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	movq      $8, _tabsize(%rip)
	xorl      %r12d, %r12d
	testq     %rbx, %rbx
	movl      $0, %r13d
	movl      $0, %r14d
	je        LBB0_28
	leaq      -344(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
	testl     %eax, %eax
	je        LBB0_25
	movq      %rbx, %rdi
	call      _quotearg
	movq      %rax, %rcx
	leaq      L_.str118(%rip), %rdx
	xorl      %r12d, %r12d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	jmp       LBB0_27
LBB0_25:
	movq      -344(%rbp), %rax
	movq      %rax, _tabsize(%rip)
	xorl      %r12d, %r12d
LBB0_27:
	xorl      %r13d, %r13d
	xorl      %r14d, %r14d
	jmp       LBB0_28
LBB0_9:
	movl      $1, _format(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	jmp       LBB0_10
LBB0_58:
	movb      $1, %r13b
	movb      %r15b, %r12b
	.align 4, 0x90
LBB0_28:
	movb      %r12b, %r15b
	movl      $-1, -348(%rbp)
	leaq      L_.str119(%rip), %rdx
	leaq      _long_options(%rip), %rcx
	leaq      -348(%rbp), %r8
	movl      -392(%rbp), %edi
	movq      -400(%rbp), %rsi
	call      _rpl_getopt_long
	cmpl      $-2, %eax
	jle       LBB0_29
	cmpl      $48, %eax
	jle       LBB0_33
	leal      -49(%rax), %eax
	cmpl      $94, %eax
	ja        LBB0_34
	movb      $1, %r12b
	leaq      LJTI0_0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB0_83:
	cmpl      $0, _format(%rip)
	movb      %r15b, %r12b
	je        LBB0_28
	movl      $1, _format(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_63:
	cmpl      $0, _ignore_mode(%rip)
	movb      %r15b, %r12b
	jne       LBB0_28
	movl      $1, _ignore_mode(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_65:
	movl      $16, %edi
	call      _xmalloc
	leaq      L_.str121(%rip), %rcx
	movq      %rcx, (%rax)
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	movl      $16, %edi
	call      _xmalloc
	leaq      L_.str122(%rip), %rcx
	movq      %rcx, (%rax)
	jmp       LBB0_74
LBB0_66:
	movl      $2, _format(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_67:
	movb      $1, _dired(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_68:
	movl      $3, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_71:
	movl      $3, _dereference(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_73:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movl      $16, %edi
	call      _xmalloc
	movq      %rbx, (%rax)
LBB0_74:
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_75:
	movl      $5, _dereference(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_76:
	xorl      %edi, %edi
	xorl      %esi, %esi
	jmp       LBB0_39
LBB0_77:
	xorl      %edi, %edi
	movl      $3, %esi
	jmp       LBB0_39
LBB0_78:
	movb      $1, _recursive(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_79:
	movl      $2, _sort_type(%rip)
	jmp       LBB0_58
LBB0_80:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      L_.str(%rip), %r8
	leaq      L_.str123(%rip), %r9
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
	movq      %rax, _tabsize(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_81:
	movl      $-1, _sort_type(%rip)
	jmp       LBB0_58
LBB0_82:
	movl      $1, _sort_type(%rip)
	jmp       LBB0_58
LBB0_106:
	movb      $1, _print_scontext(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_37:
	movl      $2, _ignore_mode(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_38:
	xorl      %edi, %edi
	movl      $5, %esi
	jmp       LBB0_39
LBB0_40:
	movl      $1, _time_type(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_41:
	movb      $1, _immediate_dirs(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_42:
	movl      $2, _ignore_mode(%rip)
	movl      $-1, _sort_type(%rip)
	cmpl      $0, _format(%rip)
	jne       LBB0_44
	movl      $1, %ebx
	movl      $1, %edi
	call      _isatty
	cmpl      $1, %eax
	sbbl      $-1, %ebx
	movl      %ebx, _format(%rip)
LBB0_44:
	movb      $0, _print_block_size(%rip)
	movb      $0, _print_with_color(%rip)
	jmp       LBB0_58
LBB0_46:
	movl      $0, _format(%rip)
	movb      $1, _print_owner(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_47:
	movl      $176, _human_output_opts(%rip)
	movl      $176, _file_human_output_opts(%rip)
	jmp       LBB0_48
LBB0_49:
	movb      $1, _print_inode(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_50:
	movl      $4, _format(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_51:
	movb      $1, _numeric_ids(%rip)
LBB0_52:
	movl      $0, _format(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_69:
	movl      $0, _format(%rip)
LBB0_70:
	movb      $1, _print_group(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_53:
	movl      $1, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_54:
	movb      $1, _qmark_funny_chars(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_55:
	movb      $1, _sort_reverse(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_56:
	movb      $1, _print_block_size(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_57:
	movl      $4, _sort_type(%rip)
	jmp       LBB0_58
LBB0_59:
	movl      $2, _time_type(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_60:
	movl      $3, _sort_type(%rip)
	jmp       LBB0_58
LBB0_61:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      L_.str(%rip), %r8
	leaq      L_.str120(%rip), %r9
	xorl      %esi, %esi
	movl      $1, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
	movq      %rax, _line_length(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_62:
	movl      $3, _format(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_85:
	movb      $1, _print_author(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_103:
	movq      _rpl_optarg@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	call      _human_options
	testl     %eax, %eax
	jne       LBB0_406
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_92:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        LBB0_96
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str128(%rip), %rdi
	leaq      _color_args(%rip), %rdx
	leaq      _color_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
	movl      (%rbx,%rax,4), %eax
	cmpl      $1, %eax
	jne       LBB0_94
LBB0_96:
	movb      $1, _print_with_color(%rip)
LBB0_98:
	movq      $0, _tabsize(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_72:
	movl      $4, _dereference(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_45:
	movl      $2, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_90:
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
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _format(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_91:
	movl      $0, _format(%rip)
	leaq      L_.str127(%rip), %r14
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_88:
	movb      $1, _directories_first(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_86:
	movl      $16, %edi
	call      _xmalloc
	movq      _rpl_optarg@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	movq      %rcx, (%rax)
	movq      _hide_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _hide_patterns(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_99:
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
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _indicator_style(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_100:
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
	movl      (%rbx,%rax,4), %esi
	xorl      %edi, %edi
LBB0_39:
	call      _set_quoting_style
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_102:
	movb      $0, _qmark_funny_chars(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_105:
	movl      $144, _human_output_opts(%rip)
	movl      $144, _file_human_output_opts(%rip)
LBB0_48:
	movq      $1, _output_block_size(%rip)
	movq      $1, _file_output_block_size(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_87:
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
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _sort_type(%rip)
	jmp       LBB0_58
LBB0_89:
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
	movl      (%rbx,%rax,4), %eax
	movl      %eax, _time_type(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_101:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_94:
	cmpl      $2, %eax
	jne       LBB0_95
	movl      $1, %edi
	call      _isatty
	testl     %eax, %eax
	setne     _print_with_color(%rip)
	movb      %r15b, %r12b
	je        LBB0_28
	jmp       LBB0_98
LBB0_95:
	movb      $0, _print_with_color(%rip)
	movb      %r15b, %r12b
	jmp       LBB0_28
LBB0_29:
	cmpl      $-131, %eax
	jne       LBB0_30
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	jne       LBB0_109
	leaq      L_.str33(%rip), %rsi
	jmp       LBB0_110
LBB0_33:
	cmpl      $-1, %eax
	jne       LBB0_34
	cmpq      $0, _output_block_size(%rip)
	jne       LBB0_117
	leaq      L_.str133(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	movq      %rbx, %rdi
	call      _human_options
	testq     %rbx, %rbx
	jne       LBB0_114
	leaq      L_.str134(%rip), %rdi
	call      _getenv
	testq     %rax, %rax
	je        LBB0_115
LBB0_114:
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
LBB0_115:
	testb     %r15b, %r15b
	je        LBB0_117
	movl      $0, _human_output_opts(%rip)
	movq      $1024, _output_block_size(%rip)
LBB0_117:
	movq      _line_length(%rip), %rax
	movl      $1, %edx
	cmpq      $3, %rax
	jb        LBB0_119
	movq      $-6148914691236517205, %rcx
	mulq      %rcx
	shrq      $1, %rdx
LBB0_119:
	movq      %rdx, _max_idx(%rip)
	xorl      %edi, %edi
	call      _clone_quoting_options
	movq      %rax, _filename_quoting_options(%rip)
	movq      %rax, %rdi
	call      _get_quoting_style
	cmpl      $5, %eax
	jne       LBB0_121
	movq      _filename_quoting_options(%rip), %rdi
	movl      $32, %esi
	movl      $1, %edx
	call      _set_char_quoting
LBB0_121:
	movl      _indicator_style(%rip), %ecx
	cmpl      $2, %ecx
	jb        LBB0_125
	addl      $-2, %ecx
	cmpl      $5, %ecx
	je        LBB0_125
	leaq      L_.str135(%rip), %rdx
	movb      (%rcx,%rdx), %al
	leaq      1(%rcx,%rdx), %rbx
	.align 4, 0x90
LBB0_124:
	movq      _filename_quoting_options(%rip), %rdi
	movsbl    %al, %esi
	movl      $1, %edx
	call      _set_char_quoting
	movb      (%rbx), %al
	incq      %rbx
	testb     %al, %al
	jne       LBB0_124
LBB0_125:
	xorl      %edi, %edi
	call      _clone_quoting_options
	movq      %rax, _dirname_quoting_options(%rip)
	movl      $58, %esi
	movl      $1, %edx
	movq      %rax, %rdi
	call      _set_char_quoting
	movb      _dired(%rip), %cl
	movl      _format(%rip), %eax
	testb     %cl, %cl
	je        LBB0_128
	testl     %eax, %eax
	je        LBB0_128
	movb      $0, _dired(%rip)
LBB0_128:
	movl      _time_type(%rip), %ecx
	decl      %ecx
	cmpl      $1, %ecx
	ja        LBB0_132
	testb     %r13b, %r13b
	jne       LBB0_132
	testl     %eax, %eax
	je        LBB0_132
	movl      $4, _sort_type(%rip)
LBB0_132:
	testl     %eax, %eax
	jne       LBB0_163
	testq     %r14, %r14
	jne       LBB0_135
	leaq      L_.str136(%rip), %rdi
	call      _getenv
	testq     %rax, %rax
	leaq      L_.str137(%rip), %r14
	cmovne    %rax, %r14
LBB0_135:
	leaq      _decode_switches.posix_prefix(%rip), %rsi
	movl      $6, %edx
	movq      %r14, %rdi
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_139
	leaq      _decode_switches.posix_prefix(%rip), %r12
	.align 4, 0x90
LBB0_138:
	movl      $5, %edi
	call      _hard_locale
	testb     %al, %al
	je        LBB0_163
	addq      $6, %r14
	movl      $6, %edx
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _strncmp
	testl     %eax, %eax
	je        LBB0_138
LBB0_139:
	movzbl    (%r14), %eax
	cmpl      $43, %eax
	jne       LBB0_145
	incq      %r14
	movl      $10, %esi
	movq      %r14, %rdi
	call      _strchr
	movq      %rax, %r13
	testq     %r13, %r13
	movq      %r14, %r12
	je        LBB0_144
	leaq      1(%r13), %r12
	movl      $10, %esi
	movq      %r12, %rdi
	call      _strchr
	testq     %rax, %rax
	je        LBB0_143
	movq      %r14, %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str138(%rip), %rdx
	movl      $2, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_143:
	movb      $0, (%r13)
LBB0_144:
	movq      %r14, _long_time_format(%rip)
	movq      %r12, _long_time_format+8(%rip)
	jmp       LBB0_153
LBB0_30:
	cmpl      $-130, %eax
	jne       LBB0_34
	xorl      %edi, %edi
	call      _usage
LBB0_109:
	cmpl      $2, %eax
	leaq      L_.str34(%rip), %rax
	leaq      L_.str35(%rip), %rsi
	cmove     %rax, %rsi
LBB0_110:
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      $0, (%rsp)
	leaq      L_.str46(%rip), %rdx
	leaq      L_.str131(%rip), %r8
	leaq      L_.str132(%rip), %r9
	xorl      %eax, %eax
	call      _version_etc
	xorl      %edi, %edi
	call      _exit
LBB0_34:
	movl      $2, %edi
	call      _usage
LBB0_145:
	leaq      _time_style_args(%rip), %rsi
	leaq      _time_style_types(%rip), %rdx
	movl      $4, %ecx
	movq      %r14, %rdi
	call      _argmatch
	testq     %rax, %rax
	js        LBB0_407
	cmpq      $3, %rax
	ja        LBB0_153
	leaq      LJTI0_1(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB0_148:
	leaq      L_.str143(%rip), %rax
	jmp       LBB0_149
LBB0_150:
	leaq      L_.str144(%rip), %rax
LBB0_149:
	movd      %rax, %xmm0
	movlhps   %xmm0, %xmm0
	movaps    %xmm0, _long_time_format(%rip)
	jmp       LBB0_153
LBB0_151:
	leaq      L_.str145(%rip), %rax
	movq      %rax, _long_time_format(%rip)
	leaq      L_.str146(%rip), %rax
	movq      %rax, _long_time_format+8(%rip)
	jmp       LBB0_153
LBB0_152:
	movl      $5, %edi
	call      _hard_locale
LBB0_153:
	movq      _long_time_format(%rip), %rdi
	leaq      L_.str62(%rip), %rsi
	call      _strstr
	testq     %rax, %rax
	jne       LBB0_155
	movq      _long_time_format+8(%rip), %rdi
	leaq      L_.str62(%rip), %rsi
	call      _strstr
	testq     %rax, %rax
	je        LBB0_163
LBB0_155:
	movq      $5, _required_mon_width(%rip)
	movl      $5, %r14d
	leaq      _abmon(%rip), %r15
	leaq      -320(%rbp), %r12
LBB0_156:
	movq      $0, _required_mon_width(%rip)
	movq      %r15, %r13
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB0_157:
	movq      %r14, -320(%rbp)
	leal      33(%rbx), %edi
	call      _nl_langinfo
	movl      $61, %edx
	xorl      %r8d, %r8d
	xorl      %r9d, %r9d
	movq      %rax, %rdi
	movq      %r13, %rsi
	movq      %r12, %rcx
	call      _mbsalign
	cmpq      $61, %rax
	jae       LBB0_158
	movq      _required_mon_width(%rip), %rcx
	movq      -320(%rbp), %rax
	cmpq      %rax, %rcx
	cmova     %rcx, %rax
	movq      %rax, _required_mon_width(%rip)
	incl      %ebx
	addq      $61, %r13
	cmpl      $12, %ebx
	jl        LBB0_157
	cmpq      %rax, %r14
	movq      %rax, %r14
	ja        LBB0_156
	testq     %rax, %rax
	jne       LBB0_163
	jmp       LBB0_162
LBB0_158:
	movq      $0, _required_mon_width(%rip)
LBB0_162:
	leaq      L_.str147(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_163:
	movq      _rpl_optind@GOTPCREL(%rip), %rax
	movl      (%rax), %r15d
	cmpb      $0, _print_with_color(%rip)
	je        LBB0_231
	leaq      L_.str83(%rip), %rdi
	call      _getenv
	movq      %rax, -320(%rbp)
	testq     %rax, %rax
	je        LBB0_166
	cmpb      $0, (%rax)
	je        LBB0_166
	movb      $0, -334(%rbp)
	movw      $16191, -336(%rbp)
	movq      %rax, %rdi
	call      _xstrdup
	movq      %rax, _color_buf(%rip)
	movq      %rax, -328(%rbp)
	movl      $1, %eax
	leaq      LJTI0_2(%rip), %r12
	leaq      -336(%rbp), %r14
	xorl      %ecx, %ecx
	movq      %rcx, -408(%rbp)
	jmp       LBB0_176
LBB0_166:
	leaq      L_.str84(%rip), %rdi
	call      _getenv
	testq     %rax, %rax
	je        LBB0_168
	cmpb      $0, (%rax)
	jne       LBB0_200
LBB0_168:
	leaq      L_.str113(%rip), %rdi
	call      _getenv
	movq      %rax, %r12
	testq     %r12, %r12
	je        LBB0_174
	cmpb      $0, (%r12)
	je        LBB0_174
	leaq      _G_line(%rip), %rbx
	leaq      L_.str114(%rip), %r13
	leaq      _G_line(%rip), %r14
	.align 4, 0x90
LBB0_171:
	movl      $5, %edx
	movq      %rbx, %rdi
	movq      %r13, %rsi
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_173
	leaq      5(%rbx), %rsi
	movq      %r12, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB0_200
LBB0_173:
	movq      %rbx, %rdi
	call      _strlen
	leaq      1(%rax,%rbx), %rbx
	movq      %rbx, %rax
	subq      %r14, %rax
	cmpq      $4607, %rax
	jb        LBB0_171
LBB0_174:
	movb      $0, _print_with_color(%rip)
	jmp       LBB0_200
LBB0_192:
	movq      -328(%rbp), %rax
	movq      -408(%rbp), %rcx
	movq      %rcx, %rdx
	leaq      16(%rdx), %rcx
	movq      %rax, 24(%rdx)
	xorl      %edx, %edx
	leaq      -328(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	call      _get_funky_string
	testb     %al, %al
	sete      %al
	movzbl    %al, %eax
	leal      1(%rax,%rax,4), %eax
	.align 4, 0x90
LBB0_176:
	decl      %eax
	cmpl      $5, %eax
	ja        LBB0_193
	movslq    (%r12,%rax,4), %rax
	addq      %r12, %rax
	jmp       *%rax
LBB0_178:
	movq      -320(%rbp), %rbx
	movb      (%rbx), %al
	movsbl    %al, %ecx
	cmpl      $42, %ecx
	je        LBB0_182
	testl     %ecx, %ecx
	je        LBB0_197
	incq      %rbx
	cmpl      $58, %ecx
	jne       LBB0_183
	movq      %rbx, -320(%rbp)
	movl      $1, %eax
	jmp       LBB0_176
LBB0_184:
	movq      -320(%rbp), %rdx
	movb      (%rdx), %cl
	movl      $6, %eax
	testb     %cl, %cl
	je        LBB0_176
	incq      %rdx
	movq      %rdx, -320(%rbp)
	movb      %cl, -335(%rbp)
	movl      $3, %eax
	jmp       LBB0_176
LBB0_186:
	movq      -320(%rbp), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, -320(%rbp)
	movzbl    (%rax), %eax
	cmpl      $61, %eax
	movl      $6, %eax
	movl      $0, %ebx
	leaq      _color_indicator(%rip), %r13
	jne       LBB0_176
	.align 4, 0x90
LBB0_188:
	leaq      _indicator_name(%rip), %rax
	movq      (%rbx,%rax), %rsi
	movq      %r14, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB0_189
	addq      $16, %r13
	addq      $8, %rbx
	cmpl      $192, %ebx
	jne       LBB0_188
	jmp       LBB0_190
LBB0_191:
	movq      -320(%rbp), %rcx
	leaq      1(%rcx), %rax
	movq      %rax, -320(%rbp)
	movl      $6, %eax
	movzbl    (%rcx), %ecx
	cmpl      $61, %ecx
	jne       LBB0_176
	jmp       LBB0_192
LBB0_182:
	movl      $40, %edi
	call      _xmalloc
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
	testb     %al, %al
	sete      %al
	movzbl    %al, %eax
	imull     $2, %eax, %eax
	addl      $4, %eax
	jmp       LBB0_176
LBB0_189:
	movq      -328(%rbp), %rax
	movq      %rax, 8(%r13)
	xorl      %edx, %edx
	leaq      -328(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %r13, %rcx
	call      _get_funky_string
	testb     %al, %al
	movl      $1, %eax
	jne       LBB0_176
LBB0_190:
	movq      %r14, %rdi
	call      _quotearg
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str86(%rip), %rdx
	call      _error
	movl      $6, %eax
	jmp       LBB0_176
LBB0_183:
	movq      %rbx, -320(%rbp)
	movb      %al, -336(%rbp)
	movl      $2, %eax
	jmp       LBB0_176
LBB0_194:
	leaq      L_.str87(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	movq      _color_buf(%rip), %rdi
	call      _free
	movq      _color_ext_list(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB0_196
	.align 4, 0x90
LBB0_195:
	movq      32(%rdi), %rbx
	call      _free
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       LBB0_195
LBB0_196:
	movb      $0, _print_with_color(%rip)
LBB0_197:
	cmpq      $6, _color_indicator+112(%rip)
	jne       LBB0_200
	movq      _color_indicator+120(%rip), %rdi
	leaq      L_.str88(%rip), %rsi
	movl      $6, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_200
	movb      $1, _color_symlink_as_referent(%rip)
LBB0_200:
	cmpb      $0, _print_with_color(%rip)
	je        LBB0_231
	movq      _color_indicator+208(%rip), %rax
	testq     %rax, %rax
	je        LBB0_206
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB0_203
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_220
	jmp       LBB0_206
LBB0_203:
	cmpq      $1, %rax
	jne       LBB0_220
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB0_220
LBB0_206:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        LBB0_212
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB0_208
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_211
	jmp       LBB0_212
LBB0_208:
	cmpq      $1, %rax
	jne       LBB0_211
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB0_212
LBB0_211:
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       LBB0_220
LBB0_212:
	movq      _color_indicator+192(%rip), %rcx
	testq     %rcx, %rcx
	je        LBB0_221
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rcx
	jne       LBB0_214
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jmp       LBB0_217
LBB0_193:
	call      _abort
LBB0_214:
	movb      $1, %al
	cmpq      $1, %rcx
	jne       LBB0_218
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
LBB0_217:
	setne     %al
LBB0_218:
	testb     %al, %al
	je        LBB0_221
	movl      _format(%rip), %eax
	testl     %eax, %eax
	jne       LBB0_221
LBB0_220:
	movb      $1, _check_symlink_color(%rip)
LBB0_221:
	movl      $1, %edi
	call      _tcgetpgrp
	testl     %eax, %eax
	js        LBB0_231
	movl      $0, _caught_signals(%rip)
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r12
	leaq      -368(%rbp), %r14
	.align 4, 0x90
LBB0_223:
	movl      (%rbx,%r12), %r13d
	xorl      %esi, %esi
	movl      %r13d, %edi
	movq      %r14, %rdx
	call      _sigaction
	cmpq      $1, -368(%rbp)
	je        LBB0_225
	decl      %r13d
	movl      $1, %eax
	movb      %r13b, %cl
	shll      %cl, %eax
	orl       %eax, _caught_signals(%rip)
LBB0_225:
	addq      $4, %rbx
	cmpq      $44, %rbx
	jne       LBB0_223
	movl      _caught_signals(%rip), %eax
	movl      %eax, -360(%rbp)
	movl      $2, -356(%rbp)
	movq      $-10, %rbx
	leaq      _sighandler(%rip), %r13
	leaq      -368(%rbp), %r14
	jmp       LBB0_227
	.align 4, 0x90
LBB0_230:
	movl      _caught_signals(%rip), %eax
	addq      $4, %r12
	incq      %rbx
LBB0_227:
	movl      (%r12), %edi
	leal      -1(%rdi), %ecx
	btl       %ecx, %eax
	jae       LBB0_229
	cmpl      $-10, %ebx
	movq      %r13, %rax
	leaq      _stophandler(%rip), %rcx
	cmove     %rcx, %rax
	movq      %rax, -368(%rbp)
	xorl      %edx, %edx
	movq      %r14, %rsi
	call      _sigaction
LBB0_229:
	testq     %rbx, %rbx
	jne       LBB0_230
LBB0_231:
	cmpl      $1, _dereference(%rip)
	movl      -392(%rbp), %r13d
	jne       LBB0_237
	movb      _immediate_dirs(%rip), %cl
	movl      $2, %eax
	testb     %cl, %cl
	jne       LBB0_236
	cmpl      $3, _indicator_style(%rip)
	je        LBB0_236
	movl      $2, %eax
	cmpl      $0, _format(%rip)
	je        LBB0_236
	movl      $4, %eax
LBB0_236:
	movl      %eax, _dereference(%rip)
LBB0_237:
	movzbl    _recursive(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_240
	leaq      _dev_ino_hash(%rip), %rdx
	leaq      _dev_ino_compare(%rip), %rcx
	leaq      _dev_ino_free(%rip), %r8
	movl      $30, %edi
	xorl      %esi, %esi
	call      _hash_initialize
	movq      %rax, _active_dir_set(%rip)
	testq     %rax, %rax
	je        LBB0_408
	leaq      _dev_ino_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rcx
	movq      _free@GOTPCREL(%rip), %r8
	xorl      %esi, %esi
	xorl      %edx, %edx
	call      __obstack_begin
LBB0_240:
	movslq    %r15d, %r12
	cmpl      $0, _format(%rip)
	je        LBB0_243
	movl      _sort_type(%rip), %eax
	cmpl      $2, %eax
	je        LBB0_243
	cmpl      $4, %eax
	jne       LBB0_244
LBB0_243:
	movb      $1, _format_needs_stat(%rip)
	xorl      %eax, %eax
LBB0_248:
	andb      $1, %al
	movb      %al, _format_needs_type(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_250
	leaq      _dired_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rbx
	movq      _free@GOTPCREL(%rip), %r14
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
	leaq      _subdired_obstack(%rip), %rdi
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
LBB0_250:
	movq      $100, _cwd_n_alloc(%rip)
	movl      $19200, %edi
	call      _xmalloc
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
	jle       LBB0_253
	movq      -400(%rbp), %rax
	leaq      (%rax,%r12,8), %rbx
	leaq      L_.str(%rip), %r12
	.align 4, 0x90
LBB0_252:
	movq      (%rbx), %rdi
	xorl      %esi, %esi
	movl      $1, %edx
	movq      %r12, %rcx
	call      _gobble_file
	addq      $8, %rbx
	incl      %r15d
	cmpl      %r13d, %r15d
	jl        LBB0_252
	jmp       LBB0_256
LBB0_253:
	movzbl    _immediate_dirs(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_255
	leaq      L_.str1(%rip), %rdi
	leaq      L_.str(%rip), %rcx
	movl      $3, %esi
	movl      $1, %edx
	call      _gobble_file
	jmp       LBB0_256
LBB0_255:
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	movq      $0, 8(%rbx)
	leaq      L_.str1(%rip), %rdi
	call      _xstrdup
	movq      %rax, (%rbx)
	movb      $1, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
LBB0_256:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_264
	call      _sort_files
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	jne       LBB0_259
	xorl      %edi, %edi
	movl      $1, %esi
	call      _extract_dirs_from_files
LBB0_259:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_264
	call      _print_current_files
	cmpq      $0, _pending_dirs(%rip)
	je        LBB0_374
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB0_263
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	incq      _dired_pos(%rip)
	jmp       LBB0_268
LBB0_264:
	movq      _pending_dirs(%rip), %rbx
	cmpl      $1, %r14d
	jg        LBB0_269
	testq     %rbx, %rbx
	je        LBB0_269
	cmpq      $0, 24(%rbx)
	jne       LBB0_268
	movb      $0, _print_dir_name(%rip)
	jmp       LBB0_268
LBB0_244:
	movb      _print_block_size(%rip), %al
	orb       _print_scontext(%rip), %al
	andb      $1, %al
	movb      %al, _format_needs_stat(%rip)
	je        LBB0_246
	xorl      %eax, %eax
	jmp       LBB0_248
LBB0_263:
	movl      $10, %edi
	call      ___swbuf
	incq      _dired_pos(%rip)
	jmp       LBB0_268
LBB0_246:
	movb      $1, %al
	movb      _recursive(%rip), %cl
	testb     %cl, %cl
	jne       LBB0_248
	cmpb      $0, _print_with_color(%rip)
	setne     %cl
	cmpl      $0, _indicator_style(%rip)
	setne     %al
	orb       %cl, %al
	orb       _directories_first(%rip), %al
	jmp       LBB0_248
LBB0_8:
	call      _abort
LBB0_406:
	movl      -348(%rbp), %ecx
	movq      (%rbx), %rbx
	leaq      _long_options(%rip), %r8
	xorl      %edx, %edx
	movl      %eax, %edi
	movl      %ecx, %esi
	movq      %r8, %rcx
	movq      %rbx, %r8
	call      _xstrtol_fatal
LBB0_407:
	leaq      L_.str139(%rip), %rcx
	movq      %rcx, %rdi
	movq      %r14, %rsi
	movq      %rax, %rdx
	call      _argmatch_invalid
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	leaq      L_.str140(%rip), %rcx
	movq      %rcx, %rdi
	movq      %rax, %rsi
	call      _fputs
	movq      (%rbx), %rcx
	leaq      L_.str141(%rip), %r14
	leaq      L_.str127(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rcx
	leaq      L_.str148(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rcx
	leaq      L_.str149(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rcx
	leaq      L_.str137(%rip), %rdx
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rax
	leaq      L_.str142(%rip), %rcx
	movq      %rcx, %rdi
	movq      %rax, %rsi
	call      _fputs
	movl      $2, %edi
	call      _usage
LBB0_268:
	movq      _pending_dirs(%rip), %rbx
LBB0_269:
	testq     %rbx, %rbx
	je        LBB0_374
	movq      24(%rbx), %rax
	movq      %rax, _pending_dirs(%rip)
	movq      _active_dir_set(%rip), %rdi
	movq      (%rbx), %r12
	testq     %rdi, %rdi
	je        LBB0_278
	testq     %r12, %r12
	jne       LBB0_278
	movq      _dev_ino_obstack+24(%rip), %rax
	movq      %rax, %rcx
	subq      _dev_ino_obstack+16(%rip), %rcx
	cmpq      $15, %rcx
	jbe       LBB0_273
	leaq      -16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movq      -16(%rax), %rcx
	movl      -8(%rax), %eax
	movq      %rcx, -384(%rbp)
	movl      %eax, -376(%rbp)
	leaq      -384(%rbp), %rsi
	call      _hash_delete
	testq     %rax, %rax
	je        LBB0_276
	movq      %rax, %rdi
	call      _free
	movq      (%rbx), %rdi
	call      _free
	movq      8(%rbx), %rdi
	call      _free
	movq      %rbx, %rdi
	call      _free
	jmp       LBB0_268
LBB0_374:
	cmpb      $0, _print_with_color(%rip)
	je        LBB0_398
	movzbl    _used_color(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_390
	movq      _color_indicator(%rip), %rsi
	cmpq      $2, %rsi
	jne       LBB0_380
	movq      _color_indicator+8(%rip), %rax
	movzwl    (%rax), %eax
	cmpl      $23323, %eax
	jne       LBB0_380
	cmpq      $1, _color_indicator+16(%rip)
	jne       LBB0_380
	movq      _color_indicator+24(%rip), %rax
	movzbl    (%rax), %eax
	cmpl      $109, %eax
	je        LBB0_390
LBB0_380:
	movq      _color_indicator+8(%rip), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB0_389
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB0_383
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB0_388
LBB0_278:
	movq      8(%rbx), %r14
	movb      16(%rbx), %r13b
	call      ___error
	movl      $0, (%rax)
	movq      %r12, %rdi
	call      _opendir$INODE64
	movq      %rax, -392(%rbp)
	testq     %rax, %rax
	je        LBB0_279
	cmpq      $0, _active_dir_set(%rip)
	je        LBB0_299
	movb      %r13b, -408(%rbp)
	movq      -392(%rbp), %rdi
	call      _dirfd
	leaq      -320(%rbp), %rsi
	testl     %eax, %eax
	js        LBB0_286
	movl      %eax, %edi
	call      _fstat$INODE64
	jmp       LBB0_287
LBB0_279:
	call      ___error
	movl      (%rax), %r14d
	movq      %r12, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str76(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
	testb     %r13b, %r13b
	je        LBB0_281
	movl      $2, _exit_status(%rip)
	jmp       LBB0_373
LBB0_286:
	movq      %r12, %rdi
	call      _rpl_stat
LBB0_287:
	testl     %eax, %eax
	js        LBB0_288
	movq      %r12, -400(%rbp)
	movl      -320(%rbp), %r15d
	movq      -312(%rbp), %r12
	movl      $16, %edi
	call      _xmalloc
	movq      %rax, %r13
	movq      %r12, (%r13)
	movl      %r15d, 8(%r13)
	movq      _active_dir_set(%rip), %rdi
	movq      %r13, %rsi
	call      _hash_insert
	testq     %rax, %rax
	je        LBB0_408
	cmpq      %r13, %rax
	je        LBB0_296
	movq      %r13, %rdi
	call      _free
	movq      -400(%rbp), %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str78(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	movq      -392(%rbp), %rdi
	call      _closedir
	movl      $2, _exit_status(%rip)
	jmp       LBB0_373
LBB0_288:
	call      ___error
	movl      (%rax), %r14d
	movq      %r12, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str77(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
	cmpb      $0, -408(%rbp)
	je        LBB0_290
	movl      $2, _exit_status(%rip)
	jmp       LBB0_292
LBB0_281:
	cmpl      $0, _exit_status(%rip)
	jne       LBB0_373
	movl      $1, _exit_status(%rip)
	jmp       LBB0_373
LBB0_296:
	movl      -320(%rbp), %r15d
	movq      -312(%rbp), %r13
	movq      _dev_ino_obstack+32(%rip), %rcx
	movq      _dev_ino_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $15, %rcx
	ja        LBB0_298
	leaq      _dev_ino_obstack(%rip), %rdi
	movl      $16, %esi
	call      __obstack_newchunk
	movq      _dev_ino_obstack+24(%rip), %rax
LBB0_298:
	leaq      16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movl      %r15d, 8(%rax)
	movq      %r13, (%rax)
	movq      -400(%rbp), %r12
	movb      -408(%rbp), %r13b
LBB0_299:
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       LBB0_301
	movzbl    _print_dir_name(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_316
LBB0_301:
	movzbl    _print_dir.first(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_306
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB0_304
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB0_305
LBB0_383:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB0_385
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB0_385:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB0_387
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB0_387:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB0_388:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB0_389:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB0_390:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _rpl_fflush
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r14
	.align 4, 0x90
LBB0_391:
	movl      _caught_signals(%rip), %eax
	movl      (%rbx,%r14), %edi
	leal      -1(%rdi), %ecx
	btl       %ecx, %eax
	jae       LBB0_393
	xorl      %esi, %esi
	call      _signal
LBB0_393:
	addq      $4, %rbx
	cmpq      $44, %rbx
	jne       LBB0_391
	movl      _stop_signal_count(%rip), %ebx
	testl     %ebx, %ebx
	je        LBB0_396
	.align 4, 0x90
LBB0_395:
	movl      $17, %edi
	call      _raise
	decl      %ebx
	jne       LBB0_395
LBB0_396:
	movl      _interrupt_signal(%rip), %edi
	testl     %edi, %edi
	je        LBB0_398
	call      _raise
LBB0_398:
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_400
	leaq      L_.str5(%rip), %rdi
	leaq      _dired_obstack(%rip), %rsi
	call      _dired_dump_obstack
	leaq      L_.str6(%rip), %rdi
	leaq      _subdired_obstack(%rip), %rsi
	call      _dired_dump_obstack
	movq      _filename_quoting_options(%rip), %rdi
	call      _get_quoting_style
	movl      %eax, %eax
	movq      _quoting_style_args@GOTPCREL(%rip), %rcx
	movq      (%rcx,%rax,8), %rsi
	leaq      L_.str7(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
LBB0_400:
	movq      _active_dir_set(%rip), %rbx
	testq     %rbx, %rbx
	je        LBB0_404
	movq      %rbx, %rdi
	call      _hash_get_n_entries
	testq     %rax, %rax
	jne       LBB0_402
	movq      %rbx, %rdi
	call      _hash_free
LBB0_404:
	movl      _exit_status(%rip), %eax
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       LBB0_409
	addq      $392, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB0_409:
	call      ___stack_chk_fail
LBB0_290:
	cmpl      $0, _exit_status(%rip)
	jne       LBB0_292
	movl      $1, _exit_status(%rip)
LBB0_292:
	movq      -392(%rbp), %rdi
	call      _closedir
	jmp       LBB0_373
LBB0_304:
	movl      $10, %edi
	call      ___swbuf
LBB0_305:
	incq      _dired_pos(%rip)
LBB0_306:
	movb      $1, _print_dir.first(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_311
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str59(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_311
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB0_310
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
	movq      _subdired_obstack+24(%rip), %rax
LBB0_310:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
LBB0_311:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	movq      (%r15), %rdi
	testq     %r14, %r14
	cmove     %r12, %r14
	movq      _dirname_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      %r14, %rsi
	call      _quote_name
	addq      %rax, _dired_pos(%rip)
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_315
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB0_314
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
	movq      _subdired_obstack+24(%rip), %rax
LBB0_314:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
LBB0_315:
	movq      (%r15), %rsi
	leaq      L_.str79(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
LBB0_316:
	movb      %r13b, -408(%rbp)
	movq      %r12, -400(%rbp)
	movq      %rbx, -416(%rbp)
	xorl      %ebx, %ebx
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_318
	.align 4, 0x90
LBB0_317:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
	movq      8(%r14), %rdi
	call      _free
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB0_317
LBB0_318:
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
	jmp       LBB0_319
	.align 4, 0x90
LBB0_351:
	call      _process_signals
	movq      %r15, %r14
LBB0_319:
	call      ___error
	movl      $0, (%rax)
	movq      -392(%rbp), %rdi
	call      _readdir$INODE64
	movq      %rax, %r12
	testq     %r12, %r12
	je        LBB0_344
	leaq      21(%r12), %r13
	movl      _ignore_mode(%rip), %eax
	cmpl      $2, %eax
	je        LBB0_331
	movzbl    (%r13), %ecx
	cmpl      $46, %ecx
	jne       LBB0_326
	testl     %eax, %eax
	je        LBB0_350
	movzbl    22(%r12), %ecx
	cmpl      $46, %ecx
	movl      $2, %ecx
	je        LBB0_325
	movl      $1, %ecx
LBB0_325:
	cmpb      $0, 21(%r12,%rcx)
	je        LBB0_350
LBB0_326:
	testl     %eax, %eax
	jne       LBB0_331
	movq      _hide_patterns(%rip), %r15
	jmp       LBB0_328
	.align 4, 0x90
LBB0_344:
	call      ___error
	cmpl      $0, (%rax)
	movq      -400(%rbp), %r12
	movb      -408(%rbp), %r13b
	je        LBB0_352
	call      ___error
	movl      (%rax), %ebx
	movq      %r12, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	leaq      L_.str80(%rip), %rdx
	call      _error
	testb     %r13b, %r13b
	je        LBB0_347
	movl      $2, _exit_status(%rip)
	jmp       LBB0_349
LBB0_347:
	cmpl      $0, _exit_status(%rip)
	jne       LBB0_349
	movl      $1, _exit_status(%rip)
	.align 4, 0x90
LBB0_349:
	call      ___error
	cmpl      $84, (%rax)
	jne       LBB0_352
LBB0_350:
	movq      %r14, %r15
	jmp       LBB0_351
	.align 4, 0x90
LBB0_330:
	movq      8(%r15), %r15
LBB0_328:
	testq     %r15, %r15
	je        LBB0_331
	movq      (%r15), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
	testl     %eax, %eax
	jne       LBB0_330
	jmp       LBB0_350
	.align 4, 0x90
LBB0_331:
	movq      _ignore_patterns(%rip), %rbx
	jmp       LBB0_332
	.align 4, 0x90
LBB0_334:
	movq      8(%rbx), %rbx
LBB0_332:
	testq     %rbx, %rbx
	je        LBB0_335
	movq      (%rbx), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
	testl     %eax, %eax
	jne       LBB0_334
	jmp       LBB0_350
	.align 4, 0x90
LBB0_335:
	movzbl    20(%r12), %eax
	decl      %eax
	xorl      %esi, %esi
	cmpl      $13, %eax
	ja        LBB0_337
	cltq      
	leaq      l_switch.table(%rip), %rcx
	movl      (%rcx,%rax,4), %esi
LBB0_337:
	xorl      %edx, %edx
	movq      %r13, %rdi
	movq      -400(%rbp), %rcx
	call      _gobble_file
	movq      %rax, %r15
	addq      %r14, %r15
	cmpl      $1, _format(%rip)
	jne       LBB0_351
	cmpl      $-1, _sort_type(%rip)
	jne       LBB0_351
	movb      _print_block_size(%rip), %al
	testb     %al, %al
	jne       LBB0_351
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       LBB0_351
	call      _sort_files
	call      _print_current_files
	cmpq      $0, _cwd_n_used(%rip)
	movl      $0, %ebx
	je        LBB0_343
	.align 4, 0x90
LBB0_342:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
	movq      8(%r14), %rdi
	call      _free
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB0_342
LBB0_343:
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
	jmp       LBB0_351
LBB0_352:
	movq      -392(%rbp), %rdi
	call      _closedir
	testl     %eax, %eax
	movq      -416(%rbp), %rbx
	je        LBB0_357
	call      ___error
	movl      (%rax), %r15d
	movq      %r12, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str81(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r15d, %esi
	call      _error
	testb     %r13b, %r13b
	je        LBB0_355
	movl      $2, _exit_status(%rip)
	jmp       LBB0_357
LBB0_355:
	cmpl      $0, _exit_status(%rip)
	jne       LBB0_357
	movl      $1, _exit_status(%rip)
LBB0_357:
	call      _sort_files
	movzbl    _recursive(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_359
	xorl      %esi, %esi
	movq      %r12, %rdi
	call      _extract_dirs_from_files
LBB0_359:
	cmpl      $0, _format(%rip)
	je        LBB0_361
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_371
LBB0_361:
	movq      %rbx, %r12
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_363
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str59(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
LBB0_363:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	movq      (%r15), %rsi
	leaq      L_.str82(%rip), %rdi
	call      _fputs
	addq      $5, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB0_365
	cmpl      40(%rsi), %eax
	jle       LBB0_366
LBB0_365:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	jmp       LBB0_367
LBB0_366:
	movl      $32, %edi
	call      ___swbuf
LBB0_367:
	incq      _dired_pos(%rip)
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	movq      %r14, %rdi
	call      _human_readable
	movq      %rax, %rbx
	movq      (%r15), %rsi
	movq      %rbx, %rdi
	call      _fputs
	movq      %rbx, %rdi
	call      _strlen
	addq      %rax, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB0_369
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB0_370
LBB0_369:
	movl      $10, %edi
	call      ___swbuf
LBB0_370:
	movq      %r12, %rbx
	incq      _dired_pos(%rip)
LBB0_371:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_373
	call      _print_current_files
LBB0_373:
	movq      (%rbx), %rdi
	call      _free
	movq      8(%rbx), %rdi
	call      _free
	movq      %rbx, %rdi
	call      _free
	movb      $1, _print_dir_name(%rip)
	jmp       LBB0_268
LBB0_273:
	leaq      L___func__.dev_ino_pop(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str232(%rip), %rbx
	movl      $992, %edx
	jmp       LBB0_274
LBB0_276:
	leaq      L___func__.main(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str3(%rip), %rbx
	movl      $1450, %edx
	jmp       LBB0_274
LBB0_408:
	call      _xalloc_die
LBB0_402:
	leaq      L___func__.main(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str8(%rip), %rbx
	movl      $1513, %edx
LBB0_274:
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
	.align 2, 0x90
LJTI0_0:
	.long	L0_0_set_83
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_63
	.long	L0_0_set_65
	.long	L0_0_set_66
	.long	L0_0_set_67
	.long	L0_0_set_34
	.long	L0_0_set_68
	.long	L0_0_set_70
	.long	L0_0_set_71
	.long	L0_0_set_73
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_75
	.long	L0_0_set_34
	.long	L0_0_set_76
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_77
	.long	L0_0_set_78
	.long	L0_0_set_79
	.long	L0_0_set_80
	.long	L0_0_set_81
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_82
	.long	L0_0_set_34
	.long	L0_0_set_106
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_37
	.long	L0_0_set_38
	.long	L0_0_set_40
	.long	L0_0_set_41
	.long	L0_0_set_34
	.long	L0_0_set_42
	.long	L0_0_set_46
	.long	L0_0_set_47
	.long	L0_0_set_49
	.long	L0_0_set_34
	.long	L0_0_set_28
	.long	L0_0_set_52
	.long	L0_0_set_50
	.long	L0_0_set_51
	.long	L0_0_set_69
	.long	L0_0_set_53
	.long	L0_0_set_54
	.long	L0_0_set_55
	.long	L0_0_set_56
	.long	L0_0_set_57
	.long	L0_0_set_59
	.long	L0_0_set_60
	.long	L0_0_set_61
	.long	L0_0_set_62
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_34
	.long	L0_0_set_85
	.long	L0_0_set_103
	.long	L0_0_set_92
	.long	L0_0_set_72
	.long	L0_0_set_45
	.long	L0_0_set_90
	.long	L0_0_set_91
	.long	L0_0_set_88
	.long	L0_0_set_86
	.long	L0_0_set_99
	.long	L0_0_set_100
	.long	L0_0_set_102
	.long	L0_0_set_105
	.long	L0_0_set_87
	.long	L0_0_set_89
	.long	L0_0_set_101
LJTI0_1:
	.long	L0_1_set_148
	.long	L0_1_set_150
	.long	L0_1_set_151
	.long	L0_1_set_152
LJTI0_2:
	.long	L0_2_set_178
	.long	L0_2_set_184
	.long	L0_2_set_186
	.long	L0_2_set_191
	.long	L0_2_set_193
	.long	L0_2_set_194
	.align 4, 0x90
_stophandler:
	pushq     %rbp
Ltmp13:
Ltmp14:
	movq      %rsp, %rbp
Ltmp15:
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB1_2
	incl      _stop_signal_count(%rip)
LBB1_2:
	popq      %rbp
	ret       
	.align 4, 0x90
_sighandler:
	pushq     %rbp
Ltmp18:
Ltmp19:
	movq      %rsp, %rbp
Ltmp20:
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB2_2
	movl      %edi, _interrupt_signal(%rip)
LBB2_2:
	popq      %rbp
	ret       
	.align 4, 0x90
_dev_ino_hash:
	pushq     %rbp
Ltmp23:
Ltmp24:
	movq      %rsp, %rbp
Ltmp25:
	movq      (%rdi), %rax
	xorl      %edx, %edx
	divq      %rsi
	movq      %rdx, %rax
	popq      %rbp
	ret       
	.align 4, 0x90
_dev_ino_compare:
	pushq     %rbp
Ltmp28:
Ltmp29:
	movq      %rsp, %rbp
Ltmp30:
	movq      (%rdi), %rax
	cmpq      (%rsi), %rax
	jne       LBB4_1
	movl      8(%rdi), %eax
	cmpl      8(%rsi), %eax
	sete      %al
	jmp       LBB4_3
LBB4_1:
	xorl      %eax, %eax
LBB4_3:
	popq      %rbp
	ret       
	.align 4, 0x90
_dev_ino_free:
	pushq     %rbp
Ltmp33:
Ltmp34:
	movq      %rsp, %rbp
Ltmp35:
	popq      %rbp
	jmp       _free
	.align 4, 0x90
_gobble_file:
	pushq     %rbp
Ltmp39:
Ltmp40:
	movq      %rsp, %rbp
Ltmp41:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $872, %rsp
Ltmp42:
Ltmp43:
Ltmp44:
Ltmp45:
Ltmp46:
	movq      %rcx, -856(%rbp)
	movl      %edx, %r13d
	movl      %esi, %ebx
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      _cwd_n_used(%rip), %rax
	cmpq      _cwd_n_alloc(%rip), %rax
	jne       LBB6_1
	movq      %rdi, -840(%rbp)
	movq      $48038396025285291, %rcx
	cmpq      %rcx, %rax
	jae       LBB6_202
	movq      _cwd_file(%rip), %rdi
	shlq      $7, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, %r15
	movq      %r15, _cwd_file(%rip)
	shlq      $1, _cwd_n_alloc(%rip)
	movq      _cwd_n_used(%rip), %rax
	jmp       LBB6_4
LBB6_1:
	movq      %rdi, -840(%rbp)
	movq      _cwd_file(%rip), %r15
LBB6_4:
	leaq      (%rax,%rax,2), %r14
	shlq      $6, %r14
	leaq      (%r15,%r14), %rdi
	movq      %rdi, -864(%rbp)
	movl      $192, %esi
	call      ___bzero
	leaq      24(%r15,%r14), %rax
	movq      %rax, -872(%rbp)
	movq      $0, 24(%r15,%r14)
	movl      %ebx, 160(%r15,%r14)
	movl      %ebx, -848(%rbp)
	cmpb      $0, _format_needs_stat(%rip)
	jne       LBB6_57
	movb      %r13b, %al
	xorb      $1, %al
	je        LBB6_57
	cmpl      $3, -848(%rbp)
	movb      _print_with_color(%rip), %r12b
	jne       LBB6_23
	testb     %r12b, %r12b
	je        LBB6_23
	movq      _color_indicator+304(%rip), %rax
	testq     %rax, %rax
	je        LBB6_13
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_10
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_13
LBB6_10:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB6_57
LBB6_13:
	movq      _color_indicator+288(%rip), %rax
	testq     %rax, %rax
	je        LBB6_18
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_15
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_18
LBB6_15:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB6_57
LBB6_18:
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        LBB6_23
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_20
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_23
LBB6_20:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB6_57
LBB6_23:
	movb      _print_inode(%rip), %cl
	movb      _format_needs_type(%rip), %al
	testb     %al, %al
	jne       LBB6_25
	movb      %cl, %dl
	xorb      $1, %dl
	testb     $1, %dl
	jne       LBB6_30
LBB6_25:
	movl      -848(%rbp), %edx
	testl     %edx, %edx
	je        LBB6_27
	cmpl      $6, %edx
	jne       LBB6_30
LBB6_27:
	cmpl      $5, _dereference(%rip)
	je        LBB6_57
	movb      _color_symlink_as_referent(%rip), %dl
	testb     %dl, %dl
	jne       LBB6_57
	orb       _check_symlink_color(%rip), %cl
LBB6_30:
	testb     $1, %cl
	jne       LBB6_57
	xorl      %ebx, %ebx
	testb     %al, %al
	je        LBB6_196
	cmpl      $0, -848(%rbp)
	je        LBB6_57
	testb     %r13b, %r13b
	jne       LBB6_57
	xorl      %ebx, %ebx
	cmpl      $5, -848(%rbp)
	jne       LBB6_196
	cmpl      $3, _indicator_style(%rip)
	je        LBB6_57
	xorl      %ebx, %ebx
	testb     %r12b, %r12b
	je        LBB6_196
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        LBB6_42
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_39
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_42
LBB6_39:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB6_57
LBB6_42:
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        LBB6_47
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_44
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_47
LBB6_44:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB6_57
LBB6_47:
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        LBB6_52
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_49
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_52
LBB6_49:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB6_57
LBB6_52:
	movq      _color_indicator+336(%rip), %rax
	xorl      %ebx, %ebx
	testq     %rax, %rax
	je        LBB6_196
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_54
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	xorl      %ebx, %ebx
	testl     %eax, %eax
	jne       LBB6_57
	jmp       LBB6_196
LBB6_54:
	cmpq      $1, %rax
	jne       LBB6_57
	movzbl    (%rdi), %eax
	xorl      %ebx, %ebx
	cmpl      $48, %eax
	je        LBB6_196
LBB6_57:
	movq      -840(%rbp), %rsi
	movzbl    (%rsi), %eax
	cmpl      $47, %eax
	movq      %rsi, %rdi
	je        LBB6_69
	movq      -856(%rbp), %rax
	movb      (%rax), %r12b
	testb     %r12b, %r12b
	movq      %rsi, %rdi
	je        LBB6_69
	movq      %r14, -880(%rbp)
	movq      %rsi, %rdi
	call      _strlen
	movq      %rax, %rbx
	movq      -856(%rbp), %r14
	movq      %r14, %rdi
	call      _strlen
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
	jne       LBB6_61
	movb      $46, %r12b
	cmpb      $0, 1(%r14)
	movq      %r14, %rcx
	movq      %rdi, %rax
	je        LBB6_65
	.align 4, 0x90
LBB6_61:
	movb      %r12b, (%rax)
	incq      %rax
	movb      1(%rcx), %r12b
	incq      %rcx
	testb     %r12b, %r12b
	jne       LBB6_61
	cmpq      %r14, %rcx
	jbe       LBB6_65
	movzbl    -1(%rcx), %ecx
	cmpl      $47, %ecx
	je        LBB6_65
	movb      $47, (%rax)
	incq      %rax
LBB6_65:
	movq      -840(%rbp), %rsi
	movb      (%rsi), %cl
	testb     %cl, %cl
	movq      -880(%rbp), %r14
	je        LBB6_68
	leaq      1(%rsi), %rdx
	.align 4, 0x90
LBB6_67:
	movb      %cl, (%rax)
	incq      %rax
	movb      (%rdx), %cl
	incq      %rdx
	testb     %cl, %cl
	jne       LBB6_67
LBB6_68:
	movb      $0, (%rax)
LBB6_69:
	leaq      16(%r15,%r14), %rbx
	leaq      160(%r15,%r14), %rax
	movq      %rax, -856(%rbp)
	movl      _dereference(%rip), %eax
	leal      -3(%rax), %ecx
	cmpl      $2, %ecx
	jae       LBB6_70
	movq      %rsi, -840(%rbp)
	movl      %r13d, %r12d
	testb     %r12b, %r12b
	movq      %rdi, %r13
	je        LBB6_77
	movq      %r13, %rdi
	movq      %rbx, %rsi
	call      _rpl_stat
	cmpl      $3, _dereference(%rip)
	je        LBB6_78
	testl     %eax, %eax
	js        LBB6_75
	movzwl    20(%r15,%r14), %ecx
	andl      $61440, %ecx
	cmpl      $16384, %ecx
	je        LBB6_78
	jmp       LBB6_77
LBB6_70:
	movq      %rsi, -840(%rbp)
	cmpl      $5, %eax
	movl      %r13d, %r12d
	movq      %rdi, %r13
	jne       LBB6_77
	movq      %r13, %rdi
	movq      %rbx, %rsi
	call      _rpl_stat
	jmp       LBB6_78
LBB6_75:
	call      ___error
	cmpl      $2, (%rax)
	jne       LBB6_79
LBB6_77:
	movq      %r13, %rdi
	movq      %rbx, %rsi
	call      _rpl_lstat
LBB6_78:
	testl     %eax, %eax
	je        LBB6_84
LBB6_79:
	call      ___error
	movl      (%rax), %ebx
	movq      %r13, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str70(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	testb     %r12b, %r12b
	je        LBB6_81
	movl      $2, _exit_status(%rip)
	xorl      %ebx, %ebx
	jmp       LBB6_200
LBB6_84:
	movq      %r13, -880(%rbp)
	movq      %rbx, -896(%rbp)
	movq      %r15, %r13
	movb      $1, 176(%r13,%r14)
	cmpl      $5, -848(%rbp)
	jne       LBB6_85
	cmpb      $0, _print_with_color(%rip)
	jne       LBB6_88
	jmp       LBB6_100
LBB6_81:
	cmpl      $0, _exit_status(%rip)
	jne       LBB6_83
	movl      $1, _exit_status(%rip)
LBB6_83:
	movq      -840(%rbp), %rdi
	call      _xstrdup
	movq      -864(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
	xorl      %ebx, %ebx
	jmp       LBB6_200
LBB6_85:
	movzwl    20(%r13,%r14), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	jne       LBB6_100
	movb      _print_with_color(%rip), %al
	testb     %al, %al
	je        LBB6_100
LBB6_88:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        LBB6_100
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB6_90
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_93
	jmp       LBB6_100
LBB6_90:
	cmpq      $1, %rax
	jne       LBB6_93
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB6_100
LBB6_93:
	movl      16(%r13,%r14), %r15d
	movl      _has_capability_cache.unsupported_device(%rip), %ebx
	call      ___error
	cmpl      %ebx, %r15d
	movl      $45, (%rax)
	je        LBB6_99
	call      ___error
	movl      (%rax), %eax
	cmpl      $101, %eax
	jg        LBB6_97
	addl      $-22, %eax
	cmpl      $56, %eax
	ja        LBB6_99
	movq      $72057594046316545, %rcx
	btq       %rax, %rcx
	jb        LBB6_98
	jmp       LBB6_99
LBB6_97:
	cmpl      $102, %eax
	jne       LBB6_99
LBB6_98:
	movq      -896(%rbp), %rax
	movl      (%rax), %eax
	movl      %eax, _has_capability_cache.unsupported_device(%rip)
LBB6_99:
	movb      $0, 184(%r13,%r14)
LBB6_100:
	cmpl      $0, _format(%rip)
	je        LBB6_102
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       LBB6_124
LBB6_102:
	movq      %r13, %rax
	movq      %rax, -888(%rbp)
	movl      %r12d, %r13d
	movl      16(%rax,%r14), %ebx
	movl      _getfilecon_cache.unsupported_device(%rip), %r12d
	call      ___error
	cmpl      %r12d, %ebx
	movl      $45, (%rax)
	je        LBB6_108
	call      ___error
	movl      (%rax), %eax
	cmpl      $101, %eax
	jg        LBB6_106
	addl      $-22, %eax
	cmpl      $56, %eax
	ja        LBB6_108
	movq      $72057594046316545, %rcx
	btq       %rax, %rcx
	jb        LBB6_107
	jmp       LBB6_108
LBB6_106:
	cmpl      $102, %eax
	jne       LBB6_108
LBB6_107:
	movq      -896(%rbp), %rax
	movl      (%rax), %eax
	movl      %eax, _getfilecon_cache.unsupported_device(%rip)
LBB6_108:
	leaq      _UNKNOWN_SECURITY_CONTEXT(%rip), %rax
	movq      -888(%rbp), %rcx
	movq      %rax, 168(%rcx,%r14)
	call      ___error
	movl      (%rax), %eax
	cmpl      $45, %eax
	movl      %r13d, %r12d
	je        LBB6_111
	cmpl      $102, %eax
	je        LBB6_111
	call      ___error
	movl      $1, %ecx
	cmpl      $96, (%rax)
	jne       LBB6_112
LBB6_111:
	xorl      %ecx, %ecx
LBB6_112:
	xorl      %eax, %eax
	movl      _format(%rip), %edx
	orl       %ecx, %edx
	jne       LBB6_122
	movl      %r12d, %r13d
	movq      -896(%rbp), %r15
	movl      (%r15), %r12d
	movl      _file_has_acl_cache.unsupported_device(%rip), %ebx
	call      ___error
	cmpl      %ebx, %r12d
	jne       LBB6_115
	movl      $45, (%rax)
	xorl      %ebx, %ebx
	movl      %r13d, %r12d
	jmp       LBB6_121
LBB6_115:
	movl      $0, (%rax)
	movq      -880(%rbp), %rdi
	movq      %r15, %rsi
	call      _file_has_acl
	movl      %eax, %ebx
	testl     %ebx, %ebx
	movl      %r13d, %r12d
	jg        LBB6_121
	call      ___error
	movl      (%rax), %eax
	cmpl      $101, %eax
	jg        LBB6_119
	addl      $-22, %eax
	cmpl      $56, %eax
	ja        LBB6_121
	movq      $72057594046316545, %rcx
	btq       %rax, %rcx
	jb        LBB6_120
	jmp       LBB6_121
LBB6_119:
	cmpl      $102, %eax
	jne       LBB6_121
LBB6_120:
	movl      (%r15), %eax
	movl      %eax, _file_has_acl_cache.unsupported_device(%rip)
LBB6_121:
	movl      %ebx, %ecx
	shrl      $31, %ecx
	testl     %ebx, %ebx
	setg      %al
	movzbl    %al, %eax
	addl      %eax, %eax
LBB6_122:
	movq      -888(%rbp), %r13
	movl      %eax, 180(%r13,%r14)
	shrl      $1, %eax
	movzbl    _any_has_acl(%rip), %edx
	orl       %eax, %edx
	movb      %dl, _any_has_acl(%rip)
	testl     %ecx, %ecx
	je        LBB6_124
	call      ___error
	movl      (%rax), %ebx
	movq      -880(%rbp), %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str73(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
LBB6_124:
	leaq      20(%r13,%r14), %rax
	movq      %rax, -848(%rbp)
	movzwl    20(%r13,%r14), %eax
	movl      %eax, %ecx
	andl      $61440, %ecx
	cmpl      $40960, %ecx
	jne       LBB6_147
	cmpl      $0, _format(%rip)
	je        LBB6_127
	movzbl    _check_symlink_color(%rip), %ecx
	cmpl      $1, %ecx
	jne       LBB6_147
LBB6_127:
	movl      %r12d, -896(%rbp)
	movq      112(%r13,%r14), %rsi
	movq      -880(%rbp), %rdi
	call      _areadlink_with_size
	movq      %rax, %r12
	movq      %r12, 8(%r13,%r14)
	testq     %r12, %r12
	jne       LBB6_133
	leaq      8(%r13,%r14), %r12
	call      ___error
	movl      (%rax), %ebx
	movq      -880(%rbp), %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str75(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	movl      -896(%rbp), %eax
	testb     %al, %al
	je        LBB6_130
	movl      $2, _exit_status(%rip)
	jmp       LBB6_132
LBB6_130:
	cmpl      $0, _exit_status(%rip)
	jne       LBB6_132
	movl      $1, _exit_status(%rip)
LBB6_132:
	movq      (%r12), %r12
	xorl      %edi, %edi
	testq     %r12, %r12
	je        LBB6_146
LBB6_133:
	movzbl    (%r12), %eax
	cmpl      $47, %eax
	je        LBB6_134
	movq      -880(%rbp), %r15
	movq      %r15, %rdi
	call      _dir_len
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        LBB6_134
	movq      %r12, %rdi
	call      _strlen
	leaq      2(%rbx,%rax), %rdi
	call      _xmalloc
	movzbl    -1(%rbx,%r15), %ecx
	cmpl      $47, %ecx
	setne     %cl
	movzbl    %cl, %edx
	addq      %rbx, %rdx
	movq      %rax, %rbx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _stpncpy
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _stpcpy
	jmp       LBB6_137
LBB6_134:
	movq      %r12, %rdi
	call      _xstrdup
	movq      %rax, %rbx
LBB6_137:
	xorl      %edi, %edi
	testq     %rbx, %rbx
	je        LBB6_146
	cmpl      $1, _indicator_style(%rip)
	ja        LBB6_140
	movzbl    _check_symlink_color(%rip), %eax
	cmpl      $1, %eax
	jne       LBB6_145
LBB6_140:
	leaq      -192(%rbp), %rsi
	movq      %rbx, %rdi
	call      _rpl_stat
	testl     %eax, %eax
	jne       LBB6_145
	movb      $1, 177(%r13,%r14)
	movzwl    -188(%rbp), %eax
	cmpl      $0, _format(%rip)
	je        LBB6_144
	movl      -896(%rbp), %ecx
	testb     %cl, %cl
	je        LBB6_144
	movl      %eax, %ecx
	andl      $61440, %ecx
	movzwl    %cx, %ecx
	cmpl      $16384, %ecx
	je        LBB6_145
LBB6_144:
	movw      %ax, 164(%r13,%r14)
LBB6_145:
	movq      %rbx, %rdi
LBB6_146:
	call      _free
	movq      -848(%rbp), %rax
	movzwl    (%rax), %eax
	movl      -896(%rbp), %r12d
LBB6_147:
	andl      $61440, %eax
	cmpl      $16384, %eax
	jne       LBB6_148
	testb     %r12b, %r12b
	je        LBB6_153
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	je        LBB6_152
LBB6_153:
	movq      -856(%rbp), %rax
	movl      $3, (%rax)
	jmp       LBB6_155
LBB6_148:
	cmpl      $40960, %eax
	jne       LBB6_154
	movq      -856(%rbp), %rax
	movl      $6, (%rax)
	jmp       LBB6_155
LBB6_154:
	movq      -856(%rbp), %rax
	movl      $5, (%rax)
	jmp       LBB6_155
LBB6_152:
	movq      -856(%rbp), %rax
	movl      $9, (%rax)
LBB6_155:
	movq      120(%r13,%r14), %rbx
	cmpl      $0, _format(%rip)
	je        LBB6_157
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       LBB6_159
LBB6_157:
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -464(%rbp), %rsi
	movl      $512, %ecx
	movq      %rbx, %rdi
	call      _human_readable
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	cmpl      %eax, _block_size_width(%rip)
	jge       LBB6_159
	movl      %eax, _block_size_width(%rip)
LBB6_159:
	cmpl      $0, _format(%rip)
	jne       LBB6_181
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       LBB6_167
	movl      32(%r13,%r14), %r12d
	movzbl    _numeric_ids(%rip), %eax
	cmpl      $1, %eax
	je        LBB6_164
	movl      %r12d, %edi
	call      _getuser
	testq     %rax, %rax
	je        LBB6_164
	xorl      %r15d, %r15d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	testl     %eax, %eax
	cmovs     %r15d, %eax
	jmp       LBB6_165
LBB6_164:
	leaq      L_.str74(%rip), %rcx
	leaq      -192(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r12, %r8
	call      ___sprintf_chk
	movq      %r15, %rdi
	call      _strlen
LBB6_165:
	cmpl      %eax, _owner_width(%rip)
	jge       LBB6_167
	movl      %eax, _owner_width(%rip)
LBB6_167:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       LBB6_174
	movl      36(%r13,%r14), %r12d
	movzbl    _numeric_ids(%rip), %eax
	cmpl      $1, %eax
	je        LBB6_171
	movl      %r12d, %edi
	call      _getgroup
	testq     %rax, %rax
	je        LBB6_171
	xorl      %r15d, %r15d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	testl     %eax, %eax
	cmovs     %r15d, %eax
	jmp       LBB6_172
LBB6_171:
	leaq      L_.str74(%rip), %rcx
	leaq      -192(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r12, %r8
	call      ___sprintf_chk
	movq      %r15, %rdi
	call      _strlen
LBB6_172:
	cmpl      %eax, _group_width(%rip)
	jge       LBB6_174
	movl      %eax, _group_width(%rip)
LBB6_174:
	movzbl    _print_author(%rip), %eax
	cmpl      $1, %eax
	jne       LBB6_181
	movl      32(%r13,%r14), %r12d
	movzbl    _numeric_ids(%rip), %eax
	cmpl      $1, %eax
	je        LBB6_178
	movl      %r12d, %edi
	call      _getuser
	testq     %rax, %rax
	je        LBB6_178
	xorl      %r15d, %r15d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	testl     %eax, %eax
	cmovs     %r15d, %eax
	jmp       LBB6_179
LBB6_178:
	leaq      L_.str74(%rip), %rcx
	leaq      -192(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r12, %r8
	call      ___sprintf_chk
	movq      %r15, %rdi
	call      _strlen
LBB6_179:
	cmpl      %eax, _author_width(%rip)
	jge       LBB6_181
	movl      %eax, _author_width(%rip)
LBB6_181:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       LBB6_184
	movq      168(%r13,%r14), %rdi
	call      _strlen
	cmpl      %eax, _scontext_width(%rip)
	jge       LBB6_184
	movl      %eax, _scontext_width(%rip)
LBB6_184:
	cmpl      $0, _format(%rip)
	jne       LBB6_196
	movzwl    22(%r13,%r14), %edi
	leaq      -496(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	cmpl      %eax, _nlink_width(%rip)
	jge       LBB6_187
	movl      %eax, _nlink_width(%rip)
LBB6_187:
	movq      -848(%rbp), %rax
	movzwl    (%rax), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       LBB6_193
	leaq      40(%r13,%r14), %r15
	movzbl    43(%r13,%r14), %edi
	leaq      -528(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	cmpl      %eax, _major_device_number_width(%rip)
	jge       LBB6_190
	movl      %eax, _major_device_number_width(%rip)
LBB6_190:
	movl      (%r15), %edi
	andq      $16777215, %rdi
	leaq      -528(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	movl      _minor_device_number_width(%rip), %ecx
	cmpl      %eax, %ecx
	jge       LBB6_192
	movl      %eax, _minor_device_number_width(%rip)
	movl      %eax, %ecx
LBB6_192:
	movl      _major_device_number_width(%rip), %eax
	leal      2(%rax,%rcx), %eax
	jmp       LBB6_194
LBB6_193:
	movq      112(%r13,%r14), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	leaq      -800(%rbp), %rsi
	movl      $1, %ecx
	call      _human_readable
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
LBB6_194:
	cmpl      %eax, _file_size_width(%rip)
	jge       LBB6_196
	movl      %eax, _file_size_width(%rip)
LBB6_196:
	movzbl    _print_inode(%rip), %eax
	cmpl      $1, %eax
	jne       LBB6_199
	movq      -872(%rbp), %rax
	movq      (%rax), %rdi
	leaq      -832(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	cmpl      %eax, _inode_number_width(%rip)
	jge       LBB6_199
	movl      %eax, _inode_number_width(%rip)
LBB6_199:
	movq      -840(%rbp), %rdi
	call      _xstrdup
	movq      -864(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
LBB6_200:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB6_203
	movq      %rbx, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB6_203:
	call      ___stack_chk_fail
LBB6_202:
	call      _xalloc_die
	.align 4, 0x90
_sort_files:
	pushq     %rbp
Ltmp49:
Ltmp50:
	movq      %rsp, %rbp
Ltmp51:
	movq      _cwd_n_used(%rip), %rax
	movq      %rax, %rcx
	shrq      $1, %rcx
	addq      %rax, %rcx
	cmpq      %rcx, _sorted_file_alloc(%rip)
	jae       LBB7_3
	movq      _sorted_file(%rip), %rdi
	call      _free
	movq      _cwd_n_used(%rip), %rax
	movq      $768614336404564651, %rcx
	cmpq      %rcx, %rax
	jae       LBB7_16
	shlq      $3, %rax
	leaq      (%rax,%rax,2), %rdi
	call      _xmalloc
	movq      %rax, _sorted_file(%rip)
	movq      _cwd_n_used(%rip), %rax
	leaq      (%rax,%rax,2), %rcx
	movq      %rcx, _sorted_file_alloc(%rip)
LBB7_3:
	xorl      %ecx, %ecx
	testq     %rax, %rax
	je        LBB7_6
	xorl      %edx, %edx
	.align 4, 0x90
LBB7_5:
	movq      _sorted_file(%rip), %rsi
	movq      _cwd_file(%rip), %rdi
	addq      %rcx, %rdi
	movq      %rdi, (%rsi,%rdx,8)
	incq      %rdx
	addq      $192, %rcx
	cmpq      %rdx, %rax
	jne       LBB7_5
LBB7_6:
	cmpl      $-1, _sort_type(%rip)
	je        LBB7_15
	leaq      _failed_strcoll(%rip), %rdi
	call      _setjmp
	testl     %eax, %eax
	je        LBB7_8
	movl      _sort_type(%rip), %r8d
	cmpl      $3, %r8d
	je        LBB7_17
	movq      _cwd_n_used(%rip), %rdx
	movl      $1, %r9d
	xorl      %esi, %esi
	testq     %rdx, %rdx
	je        LBB7_14
	movl      $1, %r9d
	xorl      %edi, %edi
	.align 4, 0x90
LBB7_12:
	movq      _sorted_file(%rip), %rcx
	movq      _cwd_file(%rip), %rax
	addq      %rsi, %rax
	movq      %rax, (%rcx,%rdi,8)
	incq      %rdi
	addq      $192, %rsi
	cmpq      %rdi, %rdx
	jne       LBB7_12
	movq      %rdx, %rsi
	jmp       LBB7_14
LBB7_8:
	movq      _cwd_n_used(%rip), %rsi
	movl      _sort_type(%rip), %r8d
	xorl      %r9d, %r9d
LBB7_14:
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
LBB7_15:
	popq      %rbp
	ret       
LBB7_16:
	call      _xalloc_die
LBB7_17:
	leaq      L___func__.sort_files(%rip), %rax
	leaq      L_.str2(%rip), %rcx
	leaq      L_.str67(%rip), %r8
	movl      $3600, %edx
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %r8, %rcx
	call      ___assert_rtn
	.align 4, 0x90
_extract_dirs_from_files:
	pushq     %rbp
Ltmp55:
Ltmp56:
	movq      %rsp, %rbp
Ltmp57:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Ltmp58:
Ltmp59:
Ltmp60:
Ltmp61:
Ltmp62:
	movl      %esi, -52(%rbp)
	movq      %rdi, -48(%rbp)
	testq     %rdi, %rdi
	je        LBB8_3
	movq      _active_dir_set(%rip), %rax
	testq     %rax, %rax
	je        LBB8_3
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	movq      -48(%rbp), %rdi
	call      _xstrdup
	movq      %rax, 8(%rbx)
	movq      $0, (%rbx)
	movb      $0, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
LBB8_3:
	movq      _cwd_n_used(%rip), %r14
	xorl      %eax, %eax
	testq     %r14, %r14
	je        LBB8_20
	.align 4, 0x90
LBB8_4:
	movq      _sorted_file(%rip), %rax
	movq      -8(%rax,%r14,8), %r15
	decq      %r14
	movl      160(%r15), %eax
	cmpl      $3, %eax
	je        LBB8_6
	cmpl      $9, %eax
	jne       LBB8_27
LBB8_6:
	movq      (%r15), %r12
	cmpq      $0, -48(%rbp)
	je        LBB8_13
	movq      %r12, %rdi
	call      _last_component
	movzbl    (%rax), %ecx
	cmpl      $46, %ecx
	jne       LBB8_12
	movzbl    1(%rax), %ecx
	cmpl      $46, %ecx
	movl      $2, %ecx
	je        LBB8_10
	movl      $1, %ecx
LBB8_10:
	movb      (%rax,%rcx), %al
	testb     %al, %al
	je        LBB8_27
	movzbl    %al, %eax
	cmpl      $47, %eax
	je        LBB8_27
	.align 4, 0x90
LBB8_12:
	movzbl    (%r12), %eax
	cmpl      $47, %eax
	jne       LBB8_21
LBB8_13:
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	testq     %r13, %r13
	movl      $0, %eax
	je        LBB8_15
	movq      %r13, %rdi
	call      _xstrdup
LBB8_15:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	movl      $0, %eax
	je        LBB8_17
	movq      %r12, %rdi
	call      _xstrdup
LBB8_17:
	movq      %rax, (%rbx)
	movl      -52(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	jmp       LBB8_26
LBB8_21:
	xorl      %edx, %edx
	movq      -48(%rbp), %rdi
	movq      %r12, %rsi
	call      _file_name_concat
	movq      %rax, %r12
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	testq     %r13, %r13
	movl      $0, %eax
	je        LBB8_23
	movq      %r13, %rdi
	call      _xstrdup
LBB8_23:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	movl      $0, %eax
	je        LBB8_25
	movq      %r12, %rdi
	call      _xstrdup
LBB8_25:
	movq      %rax, (%rbx)
	movl      -52(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	movq      %r12, %rdi
	call      _free
LBB8_26:
	cmpl      $9, 160(%r15)
	jne       LBB8_27
	movq      (%r15), %rdi
	call      _free
	movq      8(%r15), %rdi
	call      _free
LBB8_27:
	testq     %r14, %r14
	jne       LBB8_4
	movq      _cwd_n_used(%rip), %rcx
	xorl      %edx, %edx
	xorl      %eax, %eax
	testq     %rcx, %rcx
	je        LBB8_20
	.align 4, 0x90
LBB8_19:
	movq      _sorted_file(%rip), %rsi
	movq      (%rsi,%rdx,8), %rdi
	movq      %rdi, (%rsi,%rax,8)
	cmpl      $9, 160(%rdi)
	setne     %bl
	movzbl    %bl, %esi
	addq      %rsi, %rax
	incq      %rdx
	cmpq      %rcx, %rdx
	jb        LBB8_19
LBB8_20:
	movq      %rax, _cwd_n_used(%rip)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_current_files:
	pushq     %rbp
Ltmp66:
Ltmp67:
	movq      %rsp, %rbp
Ltmp68:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $3928, %rsp
Ltmp69:
Ltmp70:
Ltmp71:
Ltmp72:
Ltmp73:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movl      _format(%rip), %eax
	cmpq      $4, %rax
	ja        LBB9_175
	leaq      LJTI9_0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB9_2:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB9_175
	leaq      -3200(%rbp), %r15
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB9_4:
	cmpb      $0, _print_with_color(%rip)
	je        LBB9_65
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        LBB9_65
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB9_7
	movl      $2, %edx
	leaq      L_.str233(%rip), %rsi
	call      _strncmp
	testl     %eax, %eax
	jne       LBB9_49
	jmp       LBB9_65
	.align 4, 0x90
LBB9_7:
	cmpq      $1, %rax
	jne       LBB9_49
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB9_65
	.align 4, 0x90
LBB9_49:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB9_54
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB9_52
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB9_53
LBB9_52:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB9_53:
	call      _put_indicator
LBB9_54:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB9_59
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB9_57
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB9_58
LBB9_57:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB9_58:
	call      _put_indicator
LBB9_59:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB9_64
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB9_62
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB9_63
LBB9_62:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB9_63:
	call      _put_indicator
LBB9_64:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
LBB9_65:
	movq      _sorted_file(%rip), %rax
	movq      %rbx, -3928(%rbp)
	movq      (%rax,%rbx,8), %r12
	cmpb      $0, 176(%r12)
	je        LBB9_67
	leaq      16(%r12), %rdi
	leaq      -1068(%rbp), %rsi
	call      _filemodestring
	jmp       LBB9_68
	.align 4, 0x90
LBB9_67:
	movl      160(%r12), %eax
	leaq      _filetype_letter(%rip), %rcx
	movb      (%rax,%rcx), %al
	movb      %al, -1068(%rbp)
	leaq      -1067(%rbp), %rax
	movq      $4557430888798830399, %rcx
	movq      %rcx, (%rax)
	movw      $16191, 8(%rax)
	movb      $0, -1057(%rbp)
LBB9_68:
	cmpb      $0, _any_has_acl(%rip)
	je        LBB9_69
	movl      180(%r12), %eax
	cmpl      $2, %eax
	jne       LBB9_71
	movb      $43, -1058(%rbp)
	jmp       LBB9_74
	.align 4, 0x90
LBB9_69:
	movb      $0, -1058(%rbp)
	jmp       LBB9_74
	.align 4, 0x90
LBB9_71:
	cmpl      $1, %eax
	jne       LBB9_74
	movb      $46, -1058(%rbp)
	.align 4, 0x90
LBB9_74:
	movl      _time_type(%rip), %eax
	testl     %eax, %eax
	je        LBB9_80
	cmpl      $2, %eax
	jne       LBB9_76
	movups    48(%r12), %xmm0
	jmp       LBB9_81
	.align 4, 0x90
LBB9_80:
	movups    64(%r12), %xmm0
	jmp       LBB9_81
	.align 4, 0x90
LBB9_76:
	cmpl      $1, %eax
	jne       LBB9_79
	movups    80(%r12), %xmm0
LBB9_81:
	movaps    %xmm0, -3920(%rbp)
	movzbl    _print_inode(%rip), %eax
	cmpl      $1, %eax
	movq      %r15, %r13
	jne       LBB9_86
	movl      _inode_number_width(%rip), %ebx
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %r9
	je        LBB9_85
	movq      24(%r12), %rdi
	testq     %rdi, %rdi
	leaq      L_.str57(%rip), %r9
	je        LBB9_85
	leaq      -3232(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %r9
LBB9_85:
	xorl      %esi, %esi
	movl      $2123, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str56(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
	movq      %r15, %rdi
	call      _strlen
	leaq      -3200(%rbp,%rax), %r13
LBB9_86:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       LBB9_93
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rbx
	je        LBB9_89
	movq      120(%r12), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	movl      $512, %ecx
	leaq      -3504(%rbp), %rsi
	call      _human_readable
	movq      %rax, %rbx
LBB9_89:
	movl      _block_size_width(%rip), %r14d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
	movl      %r14d, %ecx
	subl      %eax, %ecx
	testl     %ecx, %ecx
	jle       LBB9_91
	decl      %r14d
	subl      %eax, %r14d
	leaq      1(%r14), %rdx
	movl      $32, %esi
	movq      %r13, %rdi
	call      _memset
	leaq      1(%r13,%r14), %r13
	.align 4, 0x90
LBB9_91:
	movb      (%rbx), %al
	incq      %rbx
	movb      %al, (%r13)
	incq      %r13
	testb     %al, %al
	jne       LBB9_91
	movb      $32, -1(%r13)
LBB9_93:
	movl      _nlink_width(%rip), %ebx
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rax
	je        LBB9_95
	movzwl    22(%r12), %edi
	leaq      -3536(%rbp), %rsi
	call      _umaxtostr
LBB9_95:
	movq      %rax, (%rsp)
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str58(%rip), %rcx
	movq      %r13, %rdi
	leaq      -1068(%rbp), %r8
	movl      %ebx, %r9d
	call      ___sprintf_chk
	movq      %r13, %rdi
	call      _strlen
	movq      %rax, %rbx
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB9_97
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str59(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
LBB9_97:
	addq      %rbx, %r13
	movzbl    _print_owner(%rip), %eax
	cmpl      $1, %eax
	jne       LBB9_101
	movzbl    _print_group(%rip), %eax
	cmpl      $1, %eax
	jne       LBB9_101
	movb      _print_author(%rip), %al
	testb     %al, %al
	jne       LBB9_101
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       LBB9_118
	.align 4, 0x90
LBB9_101:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      %r15, %rdi
	call      _fputs
	subq      %r15, %r13
	addq      %r13, _dired_pos(%rip)
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       LBB9_106
	movl      32(%r12), %ebx
	movl      _owner_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rdi
	je        LBB9_105
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	movl      $0, %edi
	jne       LBB9_105
	movl      %ebx, %edi
	call      _getuser
	movq      %rax, %rdi
LBB9_105:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
LBB9_106:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       LBB9_111
	movl      36(%r12), %ebx
	movl      _group_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rdi
	je        LBB9_110
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	movl      $0, %edi
	jne       LBB9_110
	movl      %ebx, %edi
	call      _getgroup
	movq      %rax, %rdi
LBB9_110:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
LBB9_111:
	movzbl    _print_author(%rip), %eax
	cmpl      $1, %eax
	jne       LBB9_116
	movl      32(%r12), %ebx
	movl      _author_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rdi
	je        LBB9_115
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	movl      $0, %edi
	jne       LBB9_115
	movl      %ebx, %edi
	call      _getuser
	movq      %rax, %rdi
LBB9_115:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
LBB9_116:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	movq      %r15, %r13
	jne       LBB9_118
	movq      168(%r12), %rdi
	movl      _scontext_width(%rip), %edx
	xorl      %esi, %esi
	call      _format_user_or_group
	movq      %r15, %r13
LBB9_118:
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %rbx
	je        LBB9_122
	movzwl    20(%r12), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       LBB9_121
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
	movq      %rax, -3936(%rbp)
	movq      %r15, %r14
	movl      _minor_device_number_width(%rip), %r15d
	movl      40(%r12), %edi
	andq      $16777215, %rdi
	leaq      -3600(%rbp), %rsi
	call      _umaxtostr
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
	movl      _file_size_width(%rip), %eax
	incl      %eax
	cltq      
	addq      %rax, %r13
	jmp       LBB9_126
	.align 4, 0x90
LBB9_121:
	movq      112(%r12), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	movl      $1, %ecx
	leaq      -3872(%rbp), %rsi
	call      _human_readable
	movq      %rax, %rbx
LBB9_122:
	movl      _file_size_width(%rip), %r14d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
	movl      %r14d, %ecx
	subl      %eax, %ecx
	testl     %ecx, %ecx
	jle       LBB9_124
	decl      %r14d
	subl      %eax, %r14d
	leaq      1(%r14), %rdx
	movl      $32, %esi
	movq      %r13, %rdi
	call      _memset
	leaq      1(%r13,%r14), %r13
	.align 4, 0x90
LBB9_124:
	movb      (%rbx), %al
	incq      %rbx
	movb      %al, (%r13)
	incq      %r13
	testb     %al, %al
	jne       LBB9_124
	movb      $32, -1(%r13)
LBB9_126:
	leaq      -3920(%rbp), %rdi
	call      _localtime
	movq      %rax, %r14
	movb      $1, (%r13)
	cmpb      $0, 176(%r12)
	je        LBB9_144
	testq     %r14, %r14
	je        LBB9_144
	movq      _current_time(%rip), %rax
	movq      -3920(%rbp), %rsi
	cmpq      %rsi, %rax
	jl        LBB9_131
	movq      _current_time+8(%rip), %rdx
	movq      -3912(%rbp), %rcx
	jg        LBB9_132
	cmpl      %ecx, %edx
	jns       LBB9_132
	.align 4, 0x90
LBB9_131:
	leaq      _current_time(%rip), %rdi
	call      _gettime
	movq      _current_time(%rip), %rax
	movq      _current_time+8(%rip), %rdx
	movq      -3920(%rbp), %rsi
	movq      -3912(%rbp), %rcx
LBB9_132:
	leaq      -15778476(%rax), %rdi
	cmpq      %rsi, %rdi
	jl        LBB9_137
	cmpq      %rsi, %rdi
	jle       LBB9_135
	xorl      %edi, %edi
	jmp       LBB9_141
LBB9_135:
	cmpl      %ecx, %edx
	js        LBB9_137
	xorl      %edi, %edi
	jmp       LBB9_141
	.align 4, 0x90
LBB9_137:
	movb      $1, %dil
	cmpq      %rax, %rsi
	jl        LBB9_141
	cmpq      %rax, %rsi
	jle       LBB9_140
	xorl      %edi, %edi
	jmp       LBB9_141
LBB9_140:
	movl      %ecx, %edi
	subl      %edx, %edi
	shrl      $31, %edi
	.align 4, 0x90
LBB9_141:
	movzbl    %dil, %eax
	leaq      _long_time_format(%rip), %rdx
	movq      (%rdx,%rax,8), %rsi
	movq      %r13, %rdi
	movq      %r14, %rdx
	call      _align_nstrftime
	testq     %rax, %rax
	jne       LBB9_143
	cmpb      $0, (%r13)
	movl      $0, %eax
	je        LBB9_143
	.align 4, 0x90
LBB9_144:
	movl      _long_time_expected_width.width(%rip), %ebx
	testl     %ebx, %ebx
	jns       LBB9_151
	movq      $0, -3504(%rbp)
	leaq      -3504(%rbp), %rdi
	call      _localtime
	testq     %rax, %rax
	je        LBB9_148
	movq      _long_time_format(%rip), %rsi
	xorl      %ecx, %ecx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rdx
	call      _align_nstrftime
	testq     %rax, %rax
	je        LBB9_148
	xorl      %edx, %edx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rsi
	call      _mbsnwidth
	movl      %eax, %ebx
	movl      %ebx, _long_time_expected_width.width(%rip)
	jmp       LBB9_149
	.align 4, 0x90
LBB9_143:
	leaq      1(%r13,%rax), %rbx
	movw      $32, (%r13,%rax)
	jmp       LBB9_154
LBB9_148:
	movl      _long_time_expected_width.width(%rip), %ebx
LBB9_149:
	testl     %ebx, %ebx
	jns       LBB9_151
	movl      $0, _long_time_expected_width.width(%rip)
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB9_151:
	cmpb      $0, 176(%r12)
	leaq      L_.str57(%rip), %r9
	je        LBB9_153
	movq      -3920(%rbp), %rdi
	leaq      -3904(%rbp), %rsi
	call      _imaxtostr
	movq      %rax, %r9
LBB9_153:
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r13, %rdi
	leaq      L_.str56(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
	movq      %r13, %rdi
	call      _strlen
	movq      %rax, %rbx
	addq      %r13, %rbx
LBB9_154:
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	movq      (%r13), %rsi
	movq      %r15, %rdi
	call      _fputs
	subq      %r15, %rbx
	addq      %rbx, _dired_pos(%rip)
	xorl      %esi, %esi
	movq      %r12, %rdi
	leaq      _dired_obstack(%rip), %rdx
	movq      %rbx, %rcx
	call      _print_name_with_quoting
	movq      %rax, %r14
	movl      160(%r12), %edx
	cmpl      $6, %edx
	jne       LBB9_169
	cmpq      $0, 8(%r12)
	je        LBB9_171
	movq      (%r13), %rsi
	leaq      L_.str61(%rip), %rdi
	call      _fputs
	addq      $4, _dired_pos(%rip)
	leaq      4(%rbx,%r14), %rcx
	movl      $1, %esi
	xorl      %edx, %edx
	movq      %r12, %rdi
	call      _print_name_with_quoting
	movl      _indicator_style(%rip), %eax
	testl     %eax, %eax
	je        LBB9_171
	movzwl    164(%r12), %edx
	movl      %edx, %ecx
	andl      $61440, %ecx
	movl      $47, %edi
	cmpl      $16384, %ecx
	je        LBB9_165
	movzwl    %cx, %ecx
	cmpl      $32768, %ecx
	jne       LBB9_161
	testb     $73, %dl
	je        LBB9_171
	movl      $42, %edi
	cmpl      $3, %eax
	je        LBB9_165
	jmp       LBB9_171
	.align 4, 0x90
LBB9_169:
	cmpl      $0, _indicator_style(%rip)
	je        LBB9_171
	movzwl    20(%r12), %esi
	movzbl    176(%r12), %edi
	call      _print_type_indicator
	jmp       LBB9_171
LBB9_161:
	cmpl      $1, %eax
	je        LBB9_171
	movl      $64, %edi
	cmpl      $40960, %ecx
	je        LBB9_165
	movl      $124, %edi
	cmpl      $4096, %ecx
	je        LBB9_165
	movl      $61, %edi
	cmpl      $49152, %ecx
	jne       LBB9_171
LBB9_165:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB9_167
	cmpl      40(%rsi), %eax
	jle       LBB9_168
LBB9_167:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %dil, (%rax)
	incq      _dired_pos(%rip)
	jmp       LBB9_171
LBB9_168:
	call      ___swbuf
	incq      _dired_pos(%rip)
	.align 4, 0x90
LBB9_171:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_173
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_174
	.align 4, 0x90
LBB9_173:
	movl      $10, %edi
	call      ___swbuf
LBB9_174:
	movq      -3928(%rbp), %rbx
	incq      _dired_pos(%rip)
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB9_4
	jmp       LBB9_175
LBB9_9:
	xorl      %ebx, %ebx
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB9_175
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	.align 4, 0x90
LBB9_11:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %rdi
	xorl      %esi, %esi
	call      _print_file_name_and_frills
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_13
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_14
	.align 4, 0x90
LBB9_13:
	movl      $10, %edi
	call      ___swbuf
LBB9_14:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB9_11
	jmp       LBB9_175
LBB9_15:
	movl      $1, %edi
	call      _calculate_columns
	movq      %rax, %rcx
	movq      _cwd_n_used(%rip), %rax
	xorl      %edx, %edx
	divq      %rcx
	testq     %rdx, %rdx
	setne     %dl
	movzbl    %dl, %r15d
	addq      %rax, %r15
	movq      %r15, -3944(%rbp)
	je        LBB9_175
	movq      _column_info(%rip), %rax
	leaq      (%rcx,%rcx,2), %rcx
	leaq      -8(%rax,%rcx,8), %r12
	movq      %r12, -3936(%rbp)
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB9_17:
	movq      %rbx, -3952(%rbp)
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r13
	movq      %r13, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r14
	movq      (%r12), %rax
	movq      (%rax), %rax
	movq      %rax, -3928(%rbp)
	xorl      %esi, %esi
	movq      %r13, %rdi
	call      _print_file_name_and_frills
	leaq      (%rbx,%r15), %r12
	cmpq      _cwd_n_used(%rip), %r12
	jae       LBB9_20
	movl      $8, %r13d
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB9_19:
	addq      %rbx, %r14
	addq      -3928(%rbp), %rbx
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _indent
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r12,8), %r15
	movq      %r15, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r14
	movq      -3936(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r13), %rax
	movq      %rax, -3928(%rbp)
	movq      %r15, %rdi
	movq      -3944(%rbp), %r15
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
	addq      %r15, %r12
	addq      $8, %r13
	cmpq      _cwd_n_used(%rip), %r12
	jb        LBB9_19
LBB9_20:
	movq      -3936(%rbp), %rbx
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_22
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_23
	.align 4, 0x90
LBB9_22:
	movl      $10, %edi
	call      ___swbuf
LBB9_23:
	movq      %rbx, %r12
	movq      -3952(%rbp), %rbx
	incq      %rbx
	cmpq      %r15, %rbx
	jb        LBB9_17
	jmp       LBB9_175
LBB9_24:
	xorl      %r15d, %r15d
	xorl      %edi, %edi
	call      _calculate_columns
	movq      %rax, -3928(%rbp)
	leaq      (%rax,%rax,2), %rbx
	movq      %rbx, -3936(%rbp)
	movq      _column_info(%rip), %r12
	movq      _sorted_file(%rip), %rax
	movq      (%rax), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r13
	movq      -8(%r12,%rbx,8), %rax
	movq      (%rax), %rbx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _print_file_name_and_frills
	movl      $1, %r14d
	cmpq      $2, _cwd_n_used(%rip)
	jb        LBB9_32
	movq      -3936(%rbp), %rax
	leaq      -8(%r12,%rax,8), %rax
	movq      %rax, -3936(%rbp)
	.align 4, 0x90
LBB9_26:
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -3928(%rbp)
	movq      %rdx, %r12
	testq     %r12, %r12
	je        LBB9_27
	addq      %r15, %r13
	addq      %rbx, %r15
	movq      %r13, %rdi
	movq      %r15, %rsi
	call      _indent
	jmp       LBB9_31
	.align 4, 0x90
LBB9_27:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_29
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	xorl      %r15d, %r15d
	jmp       LBB9_31
LBB9_29:
	movl      $10, %edi
	call      ___swbuf
	xorl      %r15d, %r15d
	.align 4, 0x90
LBB9_31:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r14,8), %rbx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _print_file_name_and_frills
	movq      %rbx, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r13
	movq      -3936(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r12,8), %rbx
	incq      %r14
	cmpq      _cwd_n_used(%rip), %r14
	jb        LBB9_26
	jmp       LBB9_32
LBB9_34:
	xorl      %r13d, %r13d
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB9_32
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB9_36:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r13,8), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r15
	testq     %r13, %r13
	je        LBB9_46
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
	jg        LBB9_39
	cmpl      40(%rsi), %eax
	jle       LBB9_40
LBB9_39:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $44, (%rax)
	jmp       LBB9_41
LBB9_40:
	movl      $44, %edi
	call      ___swbuf
	.align 4, 0x90
LBB9_41:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB9_44
	movq      -3936(%rbp), %rcx
	cmpq      %rcx, -3928(%rbp)
	setae     %cl
	cmpl      40(%rsi), %eax
	jle       LBB9_45
	testb     %cl, %cl
	jne       LBB9_45
LBB9_44:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %r12b, (%rax)
	jmp       LBB9_46
LBB9_45:
	movl      %r12d, %edi
	call      ___swbuf
	.align 4, 0x90
LBB9_46:
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
	addq      %r15, %rbx
	incq      %r13
	cmpq      _cwd_n_used(%rip), %r13
	jb        LBB9_36
LBB9_32:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_47
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_175
LBB9_47:
	movl      $10, %edi
	call      ___swbuf
LBB9_175:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB9_177
	addq      $3928, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB9_177:
	call      ___stack_chk_fail
LBB9_79:
	call      _abort
	.align 2, 0x90
LJTI9_0:
	.long	L9_0_set_2
	.long	L9_0_set_9
	.long	L9_0_set_15
	.long	L9_0_set_24
	.long	L9_0_set_34
	.align 4, 0x90
_dired_dump_obstack:
	pushq     %rbp
Ltmp77:
Ltmp78:
	movq      %rsp, %rbp
Ltmp79:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
Ltmp80:
Ltmp81:
Ltmp82:
Ltmp83:
Ltmp84:
	movq      16(%rsi), %r15
	movq      24(%rsi), %rcx
	movq      %rcx, %r13
	subq      %r15, %r13
	shrq      $3, %r13
	je        LBB10_9
	cmpq      %r15, %rcx
	jne       LBB10_3
	orb       $2, 80(%rsi)
LBB10_3:
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
	jbe       LBB10_5
	movq      %r8, 24(%rsi)
	movq      %r8, %rax
LBB10_5:
	movq      %rax, 16(%rsi)
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	call      _fputs
	leaq      L_.str216(%rip), %r14
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB10_6:
	movq      (%r15,%rbx,8), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _printf
	incq      %rbx
	cmpq      %r13, %rbx
	jb        LBB10_6
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB10_10
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
LBB10_9:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB10_10:
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
Ltmp88:
Ltmp89:
	movq      %rsp, %rbp
Ltmp90:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
Ltmp91:
Ltmp92:
Ltmp93:
Ltmp94:
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       LBB11_1
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str9(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str10(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str54(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str11(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str12(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str13(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str14(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str15(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str16(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str17(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str18(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str19(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str20(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str21(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str22(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str23(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str24(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str25(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str26(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str27(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str28(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str29(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str30(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str53(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str31(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str32(%rip), %rdi
	call      _fputs
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	jne       LBB11_4
	leaq      L_.str33(%rip), %r12
	jmp       LBB11_5
LBB11_4:
	cmpl      $2, %eax
	leaq      L_.str34(%rip), %rax
	leaq      L_.str35(%rip), %r12
	cmove     %rax, %r12
LBB11_5:
	leaq      _emit_ancillary_info.infomap(%rip), %rbx
	leaq      L_.str36(%rip), %rsi
	.align 4, 0x90
LBB11_7:
	movq      %r12, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB11_8
	movq      16(%rbx), %rsi
	addq      $16, %rbx
	testq     %rsi, %rsi
	jne       LBB11_7
LBB11_8:
	movq      8(%rbx), %r15
	testq     %r15, %r15
	cmove     %r12, %r15
	leaq      L_.str45(%rip), %rdi
	leaq      L_.str46(%rip), %rsi
	leaq      L_.str47(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
	testq     %rax, %rax
	je        LBB11_11
	leaq      L_.str48(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
	testl     %eax, %eax
	je        LBB11_11
	leaq      L_.str49(%rip), %rdi
	xorl      %eax, %eax
	movq      %r12, %rsi
	call      _printf
LBB11_11:
	leaq      L_.str50(%rip), %rdi
	leaq      L_.str47(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _printf
	cmpq      %r12, %r15
	leaq      L_.str52(%rip), %rax
	leaq      L_.str(%rip), %rdx
	cmove     %rax, %rdx
	leaq      L_.str51(%rip), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _printf
	movl      %r14d, %edi
	call      _exit
LBB11_1:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      L_.str55(%rip), %rsi
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _fprintf
	movl      %r14d, %edi
	call      _exit
	.align 4, 0x90
_print_file_name_and_frills:
	pushq     %rbp
Ltmp98:
Ltmp99:
	movq      %rsp, %rbp
Ltmp100:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $288, %rsp
Ltmp101:
Ltmp102:
Ltmp103:
Ltmp104:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r12
	movq      (%r12), %rax
	movq      %rax, -40(%rbp)
	cmpb      $0, _print_with_color(%rip)
	je        LBB12_22
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        LBB12_22
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB12_3
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB12_6
	jmp       LBB12_22
LBB12_3:
	cmpq      $1, %rax
	jne       LBB12_6
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB12_22
LBB12_6:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB12_11
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB12_9
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB12_10
LBB12_9:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB12_10:
	call      _put_indicator
LBB12_11:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB12_16
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB12_14
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB12_15
LBB12_14:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB12_15:
	call      _put_indicator
LBB12_16:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB12_21
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB12_19
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB12_20
LBB12_19:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB12_20:
	call      _put_indicator
LBB12_21:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB12_22:
	movzbl    _print_inode(%rip), %eax
	cmpl      $1, %eax
	jne       LBB12_29
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	je        LBB12_25
	movl      _inode_number_width(%rip), %ebx
LBB12_25:
	leaq      L_.str57(%rip), %rdx
	cmpb      $0, 176(%r15)
	je        LBB12_28
	movq      24(%r15), %rdi
	testq     %rdi, %rdi
	je        LBB12_28
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdx
LBB12_28:
	leaq      L_.str56(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
LBB12_29:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       LBB12_36
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	je        LBB12_32
	movl      _block_size_width(%rip), %ebx
LBB12_32:
	cmpb      $0, 176(%r15)
	je        LBB12_33
	movq      120(%r15), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
	movq      %rax, %rdx
	jmp       LBB12_35
LBB12_33:
	leaq      L_.str57(%rip), %rdx
LBB12_35:
	leaq      L_.str56(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
LBB12_36:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       LBB12_40
	xorl      %esi, %esi
	cmpl      $4, _format(%rip)
	je        LBB12_39
	movl      _scontext_width(%rip), %esi
LBB12_39:
	movq      168(%r15), %rdx
	leaq      L_.str56(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
LBB12_40:
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %r15, %rdi
	movq      %r14, %rcx
	call      _print_name_with_quoting
	cmpl      $0, _indicator_style(%rip)
	je        LBB12_42
	movl      160(%r15), %edx
	movzwl    20(%r15), %esi
	movzbl    176(%r15), %edi
	call      _print_type_indicator
LBB12_42:
	movq      (%r12), %rax
	cmpq      -40(%rbp), %rax
	jne       LBB12_44
	addq      $288, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB12_44:
	call      ___stack_chk_fail
	.align 4, 0x90
_format_user_or_group:
	pushq     %rbp
Ltmp108:
Ltmp109:
	movq      %rsp, %rbp
Ltmp110:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
Ltmp111:
Ltmp112:
Ltmp113:
Ltmp114:
Ltmp115:
	movl      %edx, %r15d
	movq      %rsi, %rcx
	movq      %rdi, %r14
	testq     %r14, %r14
	je        LBB13_9
	xorl      %ebx, %ebx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _gnu_mbswidth
	movl      %eax, %r12d
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	movq      (%r13), %rsi
	movq      %r14, %rdi
	call      _fputs
	movq      %r14, %rdi
	call      _strlen
	movq      %rax, %r14
	subl      %r12d, %r15d
	cmovs     %ebx, %r15d
	movslq    %r15d, %r15
	movl      %r15d, %ebx
	notl      %ebx
	.align 4, 0x90
LBB13_2:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB13_4
	cmpl      40(%rsi), %eax
	jle       LBB13_5
LBB13_4:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	jmp       LBB13_6
LBB13_5:
	movl      $32, %edi
	call      ___swbuf
	.align 4, 0x90
LBB13_6:
	incl      %ebx
	jne       LBB13_2
	addq      %r14, %r15
	jmp       LBB13_8
LBB13_9:
	leaq      L_.str65(%rip), %rdi
	xorl      %eax, %eax
	movl      %r15d, %esi
	movq      %rcx, %rdx
	call      _printf
	movslq    %r15d, %r15
LBB13_8:
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
	.align 4, 0x90
_align_nstrftime:
	pushq     %rbp
Ltmp119:
Ltmp120:
	movq      %rsp, %rbp
Ltmp121:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $200, %rsp
Ltmp122:
Ltmp123:
Ltmp124:
Ltmp125:
Ltmp126:
	movl      %ecx, %r9d
	movq      %rdx, %r12
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	movq      %rax, -48(%rbp)
	cmpq      $0, _required_mon_width(%rip)
	je        LBB14_6
	movl      %r9d, -228(%rbp)
	leaq      L_.str62(%rip), %rsi
	movq      %r14, %rdi
	call      _strstr
	movq      %rax, %r13
	testq     %r13, %r13
	je        LBB14_5
	cmpl      $11, 16(%r12)
	ja        LBB14_5
	movq      %r14, %rdi
	call      _strlen
	cmpq      $101, %rax
	ja        LBB14_5
	leaq      -224(%rbp), %rbx
	movq      %r13, %rdx
	subq      %r14, %rdx
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _mempcpy
	movslq    16(%r12), %rcx
	imulq     $61, %rcx, %rcx
	leaq      _abmon(%rip), %rsi
	addq      %rcx, %rsi
	movq      %rax, %rdi
	call      _stpcpy
	addq      $2, %r13
	movq      %rax, %rdi
	movq      %r13, %rsi
	call      _strcpy
	movq      %rbx, %r14
LBB14_5:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rbx
	movl      -228(%rbp), %r9d
LBB14_6:
	movl      $1001, %esi
	xorl      %r8d, %r8d
	movq      %r15, %rdi
	movq      %r14, %rdx
	movq      %r12, %rcx
	call      _nstrftime
	movq      (%rbx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       LBB14_8
	addq      $200, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB14_8:
	call      ___stack_chk_fail
	.align 4, 0x90
_print_name_with_quoting:
	pushq     %rbp
Ltmp130:
Ltmp131:
	movq      %rsp, %rbp
Ltmp132:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Ltmp133:
Ltmp134:
Ltmp135:
Ltmp136:
Ltmp137:
	movq      %rcx, %r12
	movq      %rdx, %r13
	movq      %rdi, %rbx
	leaq      8(%rbx), %rax
	testb     %sil, %sil
	cmove     %rbx, %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpb      $0, _print_with_color(%rip)
	je        LBB15_1
	movq      %r13, -64(%rbp)
	testb     %sil, %sil
	je        LBB15_3
	movq      %r12, -56(%rbp)
	movq      8(%rbx), %r13
	movb      177(%rbx), %al
	movb      %al, %cl
	decb      %cl
	movsbl    %cl, %r14d
	movzwl    164(%rbx), %r12d
	testb     %al, %al
	jne       LBB15_15
	movq      _color_indicator+192(%rip), %rax
	testq     %rax, %rax
	je        LBB15_10
	movl      $12, %r15d
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_12
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB15_105
	jmp       LBB15_15
LBB15_1:
	xorl      %r15d, %r15d
	jmp       LBB15_212
LBB15_3:
	movq      (%rbx), %r13
	movb      177(%rbx), %al
	movzbl    _color_symlink_as_referent(%rip), %ecx
	cmpl      $1, %ecx
	jne       LBB15_6
	testb     %al, %al
	je        LBB15_5
	movq      %r12, -56(%rbp)
	leaq      164(%rbx), %rcx
	jmp       LBB15_7
LBB15_5:
	xorl      %eax, %eax
LBB15_6:
	movq      %r12, -56(%rbp)
	leaq      20(%rbx), %rcx
LBB15_7:
	movzbl    %al, %r14d
	movzwl    (%rcx), %r12d
LBB15_15:
	cmpb      $0, 176(%rbx)
	je        LBB15_83
	movzwl    %r12w, %ecx
	movl      %ecx, %eax
	andl      $61440, %eax
	cmpl      $49151, %eax
	jg        LBB15_78
	cmpl      $40959, %eax
	jg        LBB15_92
	cmpl      $32767, %eax
	jg        LBB15_29
	cmpl      $24575, %eax
	jg        LBB15_80
	movl      $8, %r15d
	cmpl      $4096, %eax
	je        LBB15_105
	cmpl      $8192, %eax
	jne       LBB15_22
	movl      $11, %r15d
	jmp       LBB15_105
LBB15_83:
	movl      160(%rbx), %eax
	cmpq      $5, %rax
	je        LBB15_87
	cmpl      $8, %eax
	je        LBB15_87
	leaq      _print_color_indicator.filetype_indicator(%rip), %rcx
	movl      (%rcx,%rax,4), %r15d
	jmp       LBB15_93
LBB15_78:
	cmpl      $49152, %eax
	jne       LBB15_82
	movl      $9, %r15d
	jmp       LBB15_105
LBB15_92:
	movl      $7, %r15d
	cmpl      $40960, %eax
	jne       LBB15_82
LBB15_93:
	cmpl      $7, %r15d
	jne       LBB15_105
	testl     %r14d, %r14d
	jne       LBB15_105
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       LBB15_101
	movq      _color_indicator+208(%rip), %rax
	movl      $7, %r15d
	testq     %rax, %rax
	je        LBB15_105
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_98
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB15_101
	jmp       LBB15_105
LBB15_29:
	cmpl      $32768, %eax
	jne       LBB15_82
	testb     $8, %ch
	je        LBB15_36
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        LBB15_36
	movl      $16, %r15d
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_33
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r14d
	call      _strncmp
	movl      %r14d, %ecx
	testl     %eax, %eax
	jne       LBB15_105
	jmp       LBB15_36
LBB15_10:
	movl      $-1, %r14d
	jmp       LBB15_15
LBB15_12:
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB15_15
	jmp       LBB15_105
LBB15_80:
	cmpl      $24576, %eax
	jne       LBB15_82
	movl      $10, %r15d
	jmp       LBB15_105
LBB15_98:
	cmpq      $1, %rax
	jne       LBB15_101
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB15_105
LBB15_101:
	movl      $13, %r15d
	jmp       LBB15_105
LBB15_22:
	cmpl      $16384, %eax
	jne       LBB15_82
	movl      %ecx, %ebx
	andl      $512, %ebx
	sete      %r14b
	andl      $2, %ecx
	je        LBB15_60
	testb     %r14b, %r14b
	jne       LBB15_60
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        LBB15_60
	movl      $20, %r15d
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_27
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r12d
	call      _strncmp
	movl      %r12d, %ecx
	testl     %eax, %eax
	jne       LBB15_105
	jmp       LBB15_60
LBB15_82:
	movl      $13, %r15d
	jmp       LBB15_105
LBB15_33:
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB15_105
LBB15_36:
	testb     $4, %ch
	je        LBB15_42
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        LBB15_42
	movl      $17, %r15d
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_39
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r14d
	call      _strncmp
	movl      %r14d, %ecx
	testl     %eax, %eax
	jne       LBB15_105
	jmp       LBB15_42
LBB15_39:
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB15_105
LBB15_42:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        LBB15_48
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_44
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	movl      %ecx, %r14d
	call      _strncmp
	movl      %r14d, %ecx
	testl     %eax, %eax
	jne       LBB15_47
	jmp       LBB15_48
LBB15_44:
	cmpq      $1, %rax
	jne       LBB15_47
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB15_48
LBB15_47:
	movl      $21, %r15d
	cmpb      $0, 184(%rbx)
	jne       LBB15_105
LBB15_48:
	testb     $73, %cl
	je        LBB15_54
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        LBB15_54
	movl      $14, %r15d
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_51
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB15_105
	jmp       LBB15_54
LBB15_51:
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB15_105
LBB15_54:
	movzwl    22(%rbx), %eax
	cmpl      $2, %eax
	jb        LBB15_87
	movq      _color_indicator+352(%rip), %rax
	testq     %rax, %rax
	je        LBB15_87
	movl      $22, %r15d
	movq      _color_indicator+360(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_57
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB15_105
	jmp       LBB15_87
LBB15_57:
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB15_105
LBB15_87:
	movq      %r13, %rdi
	call      _strlen
	movq      %rax, %rbx
	movq      _color_ext_list(%rip), %r14
	movl      $5, %r15d
	jmp       LBB15_88
	.align 4, 0x90
LBB15_91:
	movq      32(%r14), %r14
LBB15_88:
	testq     %r14, %r14
	je        LBB15_105
	movq      (%r14), %rdx
	movq      %rbx, %rdi
	subq      %rdx, %rdi
	jb        LBB15_91
	addq      %r13, %rdi
	movq      8(%r14), %rsi
	call      _strncmp
	testl     %eax, %eax
	jne       LBB15_91
	testq     %r14, %r14
	je        LBB15_105
	addq      $16, %r14
	jmp       LBB15_106
LBB15_27:
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jne       LBB15_105
LBB15_60:
	testl     %ecx, %ecx
	je        LBB15_69
	movq      _color_indicator+304(%rip), %rax
	testq     %rax, %rax
	je        LBB15_62
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	jne       LBB15_64
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jmp       LBB15_67
LBB15_69:
	movl      $6, %r15d
	testl     %ebx, %ebx
	jne       LBB15_70
	jmp       LBB15_105
LBB15_62:
	xorl      %eax, %eax
	jmp       LBB15_68
LBB15_64:
	movl      $19, %r15d
	cmpq      $1, %rax
	jne       LBB15_105
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
LBB15_67:
	setne     %al
LBB15_68:
	testb     %al, %al
	movl      $19, %ecx
	movl      $6, %r15d
	cmovne    %ecx, %r15d
	orb       %al, %r14b
	jne       LBB15_105
LBB15_70:
	movq      _color_indicator+288(%rip), %rcx
	testq     %rcx, %rcx
	jne       LBB15_72
	xorl      %eax, %eax
	jmp       LBB15_77
LBB15_72:
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $1, %rcx
	jne       LBB15_74
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jmp       LBB15_76
LBB15_74:
	movb      $1, %al
	cmpq      $2, %rcx
	jne       LBB15_77
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
LBB15_76:
	setne     %al
LBB15_77:
	testb     %al, %al
	movl      $18, %eax
	movl      $6, %r15d
	cmovne    %eax, %r15d
LBB15_105:
	movl      %r15d, %eax
	shlq      $4, %rax
	leaq      _color_indicator(%rip), %r14
	addq      %rax, %r14
LBB15_106:
	cmpq      $0, 8(%r14)
	movq      _color_indicator+64(%rip), %rax
	movq      _color_indicator+72(%rip), %rdi
	movq      -56(%rbp), %r12
	movq      -64(%rbp), %r13
	je        LBB15_205
	testq     %rax, %rax
	je        LBB15_159
	cmpq      $2, %rax
	jne       LBB15_109
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB15_112
	jmp       LBB15_159
LBB15_205:
	testq     %rax, %rax
	jne       LBB15_207
	xorl      %r15d, %r15d
	jmp       LBB15_212
LBB15_109:
	cmpq      $1, %rax
	jne       LBB15_112
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	je        LBB15_159
LBB15_112:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_135
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_115
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       LBB15_134
LBB15_207:
	cmpq      $1, %rax
	jne       LBB15_209
	movzbl    (%rdi), %eax
	cmpl      $48, %eax
	jmp       LBB15_211
LBB15_209:
	movb      $1, %r15b
	cmpq      $2, %rax
	jne       LBB15_212
	leaq      L_.str233(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
LBB15_211:
	setne     %r15b
	jmp       LBB15_212
LBB15_115:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_124
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_118
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_123
LBB15_118:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_120
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_120:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_122
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_122:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_123:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_124:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_133
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_127
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_132
LBB15_127:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_129
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_129:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_131
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_131:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_132:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_133:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
LBB15_134:
	movl      $1, %edx
	call      _fwrite
LBB15_135:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_158
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_138
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_157
LBB15_138:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_147
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_141
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_146
LBB15_141:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_143
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_143:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_145
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_145:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_146:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_147:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_156
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_150
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_155
LBB15_150:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_152
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_152:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_154
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_154:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_155:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_156:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_157:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_158:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_159:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_174
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_162
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       LBB15_173
LBB15_162:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_167
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_165
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_166
LBB15_165:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_166:
	call      _put_indicator
LBB15_167:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_172
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_170
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_171
LBB15_170:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_171:
	call      _put_indicator
LBB15_172:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
LBB15_173:
	movl      $1, %edx
	call      _fwrite
LBB15_174:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_189
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_177
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_188
LBB15_177:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_182
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_180
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_181
LBB15_180:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_181:
	call      _put_indicator
LBB15_182:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_187
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_185
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_186
LBB15_185:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_186:
	call      _put_indicator
LBB15_187:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_188:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_189:
	movq      (%r14), %rsi
	movq      8(%r14), %rdi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_204
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB15_192
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_203
LBB15_192:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_197
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_195
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_196
LBB15_195:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_196:
	call      _put_indicator
LBB15_197:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_202
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_200
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_201
LBB15_200:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_201:
	call      _put_indicator
LBB15_202:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_203:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_204:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      $1, %r15b
LBB15_212:
	testq     %r13, %r13
	je        LBB15_217
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB15_217
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB15_216
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
	movq      24(%r13), %rax
LBB15_216:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
LBB15_217:
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rdi
	movq      _filename_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      -48(%rbp), %rsi
	call      _quote_name
	movq      %rax, %rbx
	addq      %rbx, _dired_pos(%rip)
	testq     %r13, %r13
	je        LBB15_222
	movzbl    _dired(%rip), %eax
	cmpl      $1, %eax
	jne       LBB15_222
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB15_221
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
	movq      24(%r13), %rax
LBB15_221:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
LBB15_222:
	call      _process_signals
	testb     %r15b, %r15b
	je        LBB15_241
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	movb      _used_color(%rip), %al
	je        LBB15_227
	testb     $1, %al
	jne       LBB15_226
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
	movq      _color_indicator+40(%rip), %rdi
LBB15_226:
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB15_234
LBB15_227:
	testb     $1, %al
	jne       LBB15_229
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_229:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_231
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_231:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_233
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB15_233:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB15_234:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movq      _line_length(%rip), %rsi
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
	movq      %rax, %rcx
	leaq      -1(%r12,%rbx), %rax
	xorl      %edx, %edx
	divq      %rsi
	cmpq      %rax, %rcx
	je        LBB15_241
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB15_240
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB15_238
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB15_239
LBB15_238:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB15_239:
	call      _put_indicator
LBB15_240:
	movq      _color_indicator+376(%rip), %rdi
	movq      _color_indicator+368(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB15_241:
	movq      %rbx, %rax
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_type_indicator:
	pushq     %rbp
Ltmp140:
Ltmp141:
	movq      %rsp, %rbp
Ltmp142:
	movl      %edi, %ecx
	testb     %cl, %cl
	je        LBB16_5
	movl      %esi, %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	je        LBB16_8
	movl      %esi, %eax
	andl      $-4096, %eax
	movl      $47, %edi
	movzwl    %ax, %eax
	cmpl      $16384, %eax
	je        LBB16_19
	jmp       LBB16_3
LBB16_5:
	movl      $47, %edi
	cmpl      $3, %edx
	je        LBB16_19
	cmpl      $9, %edx
	je        LBB16_19
	cmpl      $5, %edx
	jne       LBB16_3
LBB16_8:
	cmpl      $3, _indicator_style(%rip)
	setne     %dl
	xorl      %eax, %eax
	testb     $73, %sil
	je        LBB16_24
	xorb      $1, %cl
	orb       %cl, %dl
	movl      $42, %edi
	je        LBB16_19
	jmp       LBB16_24
LBB16_3:
	cmpl      $1, _indicator_style(%rip)
	jne       LBB16_10
	xorl      %eax, %eax
	jmp       LBB16_24
LBB16_10:
	testb     %cl, %cl
	je        LBB16_18
	movl      %esi, %eax
	andl      $61440, %eax
	movl      $64, %edi
	cmpl      $40960, %eax
	je        LBB16_19
	andl      $-4096, %esi
	movzwl    %si, %eax
	movl      $124, %edi
	cmpl      $4096, %eax
	je        LBB16_19
	movl      $61, %edi
	cmpl      $49152, %eax
	je        LBB16_19
	xorl      %eax, %eax
	jmp       LBB16_24
LBB16_18:
	movl      $64, %edi
	cmpl      $6, %edx
	je        LBB16_19
	movl      $124, %edi
	cmpl      $1, %edx
	je        LBB16_19
	movl      $61, %edi
	cmpl      $7, %edx
	jne       LBB16_17
LBB16_19:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB16_21
	cmpl      40(%rsi), %eax
	jle       LBB16_22
LBB16_21:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %dil, (%rax)
	jmp       LBB16_23
LBB16_22:
	call      ___swbuf
LBB16_23:
	incq      _dired_pos(%rip)
	movb      $1, %al
LBB16_24:
	popq      %rbp
	ret       
LBB16_17:
	xorl      %eax, %eax
	jmp       LBB16_24
	.align 4, 0x90
_quote_name:
	pushq     %rbp
Ltmp146:
Ltmp147:
	movq      %rsp, %rbp
Ltmp148:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $1208, %rsp
Ltmp149:
Ltmp150:
Ltmp151:
Ltmp152:
Ltmp153:
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
	movq      %rax, %r12
	cmpq      $1024, %r12
	jb        LBB17_2
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
LBB17_2:
	movzbl    _qmark_funny_chars(%rip), %eax
	cmpl      $1, %eax
	jne       LBB17_42
	call      ____mb_cur_max
	leaq      (%rbx,%r12), %rcx
	movq      %rcx, -1216(%rbp)
	cmpl      $1, %eax
	jle       LBB17_4
	movq      %rbx, %rax
	movq      %rax, -1224(%rbp)
	xorl      %ebx, %ebx
	testq     %r12, %r12
	movq      %rax, %r12
	jle       LBB17_33
	xorl      %r14d, %r14d
	leaq      -1200(%rbp), %rdx
	movq      -1224(%rbp), %rax
	movq      %rax, %r15
	movq      %rax, %r12
LBB17_8:
	movsbl    (%r15), %eax
	leal      -32(%rax), %ecx
	cmpl      $94, %ecx
	ja        LBB17_12
	leaq      LJTI17_0(%rip), %rsi
	movslq    (%rsi,%rcx,4), %rcx
	addq      %rsi, %rcx
	jmp       *%rcx
LBB17_10:
	incq      %r15
	movb      %al, (%r12)
	incq      %r12
	incq      %r14
	movq      %r14, %rbx
	movq      %rdx, %r13
	jmp       LBB17_11
	.align 4, 0x90
LBB17_12:
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
LBB17_13:
	movq      -1216(%rbp), %rdx
	subq      %r15, %rdx
	leaq      -1204(%rbp), %rdi
	movq      %r15, %rsi
	movq      %r13, %rcx
	call      _mbrtowc
	movq      %rax, %r13
	testq     %r13, %r13
	jne       LBB17_14
	movl      $1, %r13d
LBB17_18:
	movl      -1204(%rbp), %edi
	call      _rpl_wcwidth
	testl     %eax, %eax
	js        LBB17_30
	testq     %r13, %r13
	je        LBB17_29
	movq      %r13, %rdi
	andq      $-32, %rdi
	movq      %r15, %rcx
	movq      %r13, %rdx
	movq      %r12, %rsi
	movl      $0, %ebx
	je        LBB17_26
	leaq      -1(%r15,%r13), %rcx
	cmpq      %rcx, %r12
	ja        LBB17_23
	leaq      -1(%r12,%r13), %rcx
	cmpq      %rcx, %r15
	movq      %r15, %rcx
	movq      %r13, %rdx
	movq      %r12, %rsi
	movl      $0, %ebx
	jbe       LBB17_26
LBB17_23:
	leaq      (%r15,%rdi), %rcx
	movq      %r13, %rdx
	subq      %rdi, %rdx
	leaq      (%r12,%rdi), %rsi
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB17_24:
	movups    (%r15,%rbx), %xmm0
	movups    16(%r15,%rbx), %xmm1
	movups    %xmm0, (%r12,%rbx)
	movups    %xmm1, 16(%r12,%rbx)
	addq      $32, %rbx
	cmpq      %rbx, %rdi
	jne       LBB17_24
	movq      %rdi, %rbx
LBB17_26:
	cmpq      %rbx, %r13
	je        LBB17_28
	.align 4, 0x90
LBB17_27:
	movb      (%rcx), %bl
	incq      %rcx
	movb      %bl, (%rsi)
	incq      %rsi
	decq      %rdx
	jne       LBB17_27
LBB17_28:
	addq      %r13, %r12
	addq      %r13, %r15
LBB17_29:
	movslq    %eax, %rbx
	jmp       LBB17_31
	.align 4, 0x90
LBB17_30:
	addq      %r13, %r15
	movb      $63, (%r12)
	incq      %r12
	movl      $1, %ebx
LBB17_31:
	leaq      -1200(%rbp), %r13
	addq      %r14, %rbx
	movq      %r13, %rdi
	call      _mbsinit
	testl     %eax, %eax
	movq      %rbx, %r14
	je        LBB17_13
	jmp       LBB17_11
LBB17_14:
	cmpq      $-2, %r13
	je        LBB17_32
	cmpq      $-1, %r13
	jne       LBB17_18
	incq      %r15
	movb      $63, (%r12)
	incq      %r12
	incq      %r14
	movq      %r14, %rbx
	leaq      -1200(%rbp), %r13
	.align 4, 0x90
LBB17_11:
	movq      %r13, %rdx
	cmpq      -1216(%rbp), %r15
	movq      %rbx, %r14
	movq      -1240(%rbp), %r13
	jb        LBB17_8
	jmp       LBB17_33
LBB17_42:
	testq     %r13, %r13
	je        LBB17_43
	call      ____mb_cur_max
	cmpl      $2, %eax
	movq      -1232(%rbp), %r14
	jl        LBB17_46
	xorl      %edx, %edx
	movq      %rbx, %rdi
	movq      %rbx, -1224(%rbp)
	movq      %r12, %rsi
	call      _mbsnwidth
	movslq    %eax, %rbx
	jmp       LBB17_54
LBB17_4:
	testq     %r12, %r12
	jle       LBB17_5
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %r14
	movl      $262144, %r15d
	movq      %rbx, -1224(%rbp)
	.align 4, 0x90
LBB17_35:
	movzbl    (%rbx), %edi
	testb     %dil, %dil
	js        LBB17_37
	movl      60(%r14,%rdi,4), %eax
	andl      %r15d, %eax
	jmp       LBB17_38
	.align 4, 0x90
LBB17_37:
	movl      $262144, %esi
	call      ___maskrune
LBB17_38:
	testl     %eax, %eax
	jne       LBB17_40
	movb      $63, (%rbx)
LBB17_40:
	incq      %rbx
	cmpq      -1216(%rbp), %rbx
	jb        LBB17_35
	movq      %r12, %rbx
	jmp       LBB17_53
LBB17_43:
	movq      %rbx, -1224(%rbp)
	jmp       LBB17_53
LBB17_46:
	movq      %rbx, -1224(%rbp)
	xorl      %ebx, %ebx
	testq     %r12, %r12
	jle       LBB17_54
	movq      %r13, -1240(%rbp)
	movq      -1224(%rbp), %rax
	leaq      (%rax,%r12), %r14
	movl      $262144, %r13d
	movq      %rax, %r15
	.align 4, 0x90
LBB17_48:
	movzbl    (%r15), %edi
	testb     %dil, %dil
	js        LBB17_50
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%rdi,4), %eax
	andl      %r13d, %eax
	jmp       LBB17_51
	.align 4, 0x90
LBB17_50:
	movl      $262144, %esi
	call      ___maskrune
LBB17_51:
	cmpl      $1, %eax
	sbbq      $-1, %rbx
	incq      %r15
	cmpq      %r14, %r15
	jb        LBB17_48
	movq      -1240(%rbp), %r13
	jmp       LBB17_53
LBB17_32:
	movb      $63, (%r12)
	incq      %r12
	incq      %r14
	movq      %r14, %rbx
	movq      -1240(%rbp), %r13
LBB17_33:
	subq      -1224(%rbp), %r12
	jmp       LBB17_53
LBB17_5:
	movq      %rbx, -1224(%rbp)
	movq      %r12, %rbx
LBB17_53:
	movq      -1232(%rbp), %r14
LBB17_54:
	testq     %r14, %r14
	je        LBB17_56
	movl      $1, %esi
	movq      -1224(%rbp), %rdi
	movq      %r12, %rdx
	movq      %r14, %rcx
	call      _fwrite
LBB17_56:
	testq     %r13, %r13
	je        LBB17_58
	movq      %rbx, (%r13)
LBB17_58:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB17_60
	movq      %r12, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB17_60:
	call      ___stack_chk_fail
	.align 2, 0x90
LJTI17_0:
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_12
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_12
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_12
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.long	L17_0_set_10
	.align 4, 0x90
_process_signals:
	pushq     %rbp
Ltmp157:
Ltmp158:
	movq      %rsp, %rbp
Ltmp159:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $16, %rsp
Ltmp160:
Ltmp161:
Ltmp162:
Ltmp163:
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	leaq      _caught_signals(%rip), %r14
	leaq      -36(%rbp), %r15
	jmp       LBB18_1
	.align 4, 0x90
LBB18_17:
	movl      %ebx, %edi
	call      _raise
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigprocmask
LBB18_1:
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB18_3
	cmpl      $0, _stop_signal_count(%rip)
	je        LBB18_18
LBB18_3:
	movzbl    _used_color(%rip), %eax
	cmpl      $1, %eax
	jne       LBB18_14
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB18_13
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB18_7
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB18_12
LBB18_7:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB18_9
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB18_9:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB18_11
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB18_11:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB18_12:
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
LBB18_13:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
LBB18_14:
	movq      (%r12), %rdi
	call      _rpl_fflush
	movl      $1, %edi
	movq      %r14, %rsi
	movq      %r15, %rdx
	call      _sigprocmask
	movl      _interrupt_signal(%rip), %ebx
	movl      _stop_signal_count(%rip), %eax
	testl     %eax, %eax
	je        LBB18_16
	decl      %eax
	movl      %eax, _stop_signal_count(%rip)
	movl      $17, %ebx
	jmp       LBB18_17
	.align 4, 0x90
LBB18_16:
	xorl      %esi, %esi
	movl      %ebx, %edi
	call      _signal
	jmp       LBB18_17
LBB18_18:
	addq      $16, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_prep_non_filename_text:
	pushq     %rbp
Ltmp166:
Ltmp167:
	movq      %rsp, %rbp
Ltmp168:
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB19_2
	leaq      _color_indicator+32(%rip), %rdi
	popq      %rbp
	jmp       _put_indicator
LBB19_2:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
	popq      %rbp
	jmp       _put_indicator
	.align 4, 0x90
_put_indicator:
	pushq     %rbp
Ltmp172:
Ltmp173:
	movq      %rsp, %rbp
Ltmp174:
	pushq     %rbx
	pushq     %rax
Ltmp175:
	movq      %rdi, %rbx
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB20_2
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB20_2:
	movq      (%rbx), %rsi
	movq      8(%rbx), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movl      $1, %edx
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	jmp       _fwrite
	.align 4, 0x90
_length_of_file_name_and_frills:
	pushq     %rbp
Ltmp179:
Ltmp180:
	movq      %rsp, %rbp
Ltmp181:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	subq      $296, %rsp
Ltmp182:
Ltmp183:
Ltmp184:
	movq      %rdi, %r14
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      %rax, -32(%rbp)
	xorl      %ebx, %ebx
	movb      _print_inode(%rip), %al
	testb     %al, %al
	je        LBB21_5
	cmpl      $4, _format(%rip)
	jne       LBB21_3
	movq      24(%r14), %rdi
	leaq      -304(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	movq      %rax, %rbx
	jmp       LBB21_4
LBB21_3:
	movslq    _inode_number_width(%rip), %rbx
LBB21_4:
	incq      %rbx
LBB21_5:
	movzbl    _print_block_size(%rip), %eax
	cmpl      $1, %eax
	jne       LBB21_13
	cmpl      $4, _format(%rip)
	jne       LBB21_11
	cmpb      $0, 176(%r14)
	je        LBB21_8
	movq      120(%r14), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -304(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
	movq      %rax, %rdi
	call      _strlen
	jmp       LBB21_12
LBB21_11:
	movslq    _block_size_width(%rip), %rax
	jmp       LBB21_12
LBB21_8:
	leaq      L_.str57(%rip), %rdi
	call      _strlen
LBB21_12:
	leaq      1(%rbx,%rax), %rbx
LBB21_13:
	movzbl    _print_scontext(%rip), %eax
	cmpl      $1, %eax
	jne       LBB21_18
	cmpl      $4, _format(%rip)
	jne       LBB21_16
	movq      168(%r14), %rdi
	call      _strlen
	jmp       LBB21_17
LBB21_16:
	movslq    _scontext_width(%rip), %rax
LBB21_17:
	leaq      1(%rbx,%rax), %rbx
LBB21_18:
	movq      (%r14), %rsi
	movq      _filename_quoting_options(%rip), %rdx
	leaq      -312(%rbp), %rcx
	xorl      %edi, %edi
	call      _quote_name
	addq      -312(%rbp), %rbx
	movl      _indicator_style(%rip), %esi
	testl     %esi, %esi
	je        LBB21_36
	movb      176(%r14), %al
	movzwl    20(%r14), %r8d
	movl      160(%r14), %ecx
	testb     %al, %al
	je        LBB21_24
	movl      %r8d, %edx
	andl      $61440, %edx
	cmpl      $32768, %edx
	je        LBB21_27
	movl      %r8d, %edi
	andl      $-4096, %edi
	movb      $1, %dl
	movzwl    %di, %edi
	cmpl      $16384, %edi
	je        LBB21_35
	jmp       LBB21_22
LBB21_24:
	movb      $1, %dl
	cmpl      $3, %ecx
	je        LBB21_35
	cmpl      $9, %ecx
	je        LBB21_35
	cmpl      $5, %ecx
	jne       LBB21_22
LBB21_27:
	testb     %al, %al
	setne     %al
	cmpl      $3, %esi
	sete      %cl
	andb      %al, %cl
	testb     $73, %r8b
	setne     %dl
	andb      %cl, %dl
	jmp       LBB21_35
LBB21_22:
	cmpl      $1, %esi
	jne       LBB21_28
	xorl      %edx, %edx
	jmp       LBB21_35
LBB21_28:
	testb     %al, %al
	je        LBB21_32
	movb      $1, %dl
	movl      %r8d, %eax
	andl      $61440, %eax
	cmpl      $40960, %eax
	je        LBB21_35
	andl      $-4096, %r8d
	movzwl    %r8w, %eax
	cmpl      $49152, %eax
	je        LBB21_35
	cmpl      $4096, %eax
	jne       LBB21_33
	jmp       LBB21_35
LBB21_32:
	decl      %ecx
	cmpl      $7, %ecx
	jae       LBB21_33
	movb      $97, %dl
	shrb      %cl, %dl
	andb      $1, %dl
	jmp       LBB21_35
LBB21_33:
	xorl      %edx, %edx
LBB21_35:
	movzbl    %dl, %eax
	addq      %rax, %rbx
LBB21_36:
	movq      (%r15), %rax
	cmpq      -32(%rbp), %rax
	jne       LBB21_38
	movq      %rbx, %rax
	addq      $296, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB21_38:
	call      ___stack_chk_fail
	.align 4, 0x90
_calculate_columns:
	pushq     %rbp
Ltmp188:
Ltmp189:
	movq      %rsp, %rbp
Ltmp190:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Ltmp191:
Ltmp192:
Ltmp193:
Ltmp194:
Ltmp195:
	movl      %edi, %r14d
	movq      _max_idx(%rip), %r12
	movq      _cwd_n_used(%rip), %r15
	movq      %r15, -48(%rbp)
	cmpq      %r15, %r12
	cmovb     %r12, %r15
	cmpq      %r15, _init_column_info.column_info_alloc(%rip)
	jae       LBB22_13
	movq      %r12, %rax
	shrq      $1, %rax
	movq      _column_info(%rip), %rdi
	cmpq      %rax, %r15
	jae       LBB22_4
	movq      $384307168202282326, %rax
	cmpq      %rax, %r15
	jae       LBB22_32
	movq      %r15, %rax
	shlq      $4, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, _column_info(%rip)
	leaq      (%r15,%r15), %rbx
	jmp       LBB22_6
LBB22_4:
	movq      $768614336404564651, %rax
	cmpq      %rax, %r12
	jae       LBB22_32
	leaq      0(,%r12,8), %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, _column_info(%rip)
	movq      _max_idx(%rip), %rbx
LBB22_6:
	movq      _init_column_info.column_info_alloc(%rip), %rax
	leaq      1(%rax), %rsi
	leaq      (%rsi,%rbx), %rcx
	addq      %rbx, %rsi
	jb        LBB22_32
	movq      %rbx, %rdi
	subq      %rax, %rdi
	imulq     %rdi, %rcx
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rdi
	cmpq      %rsi, %rax
	jne       LBB22_32
	movq      %rcx, %rax
	shrq      $62, %rax
	jne       LBB22_32
	shlq      $2, %rcx
	andq      $-8, %rcx
	movq      %rcx, %rdi
	call      _xmalloc
	movq      _init_column_info.column_info_alloc(%rip), %rcx
	cmpq      %rbx, %rcx
	jae       LBB22_12
	leaq      (%rcx,%rcx,2), %rdx
	leaq      16(,%rdx,8), %rdx
	.align 4, 0x90
LBB22_11:
	movq      _column_info(%rip), %rsi
	movq      %rax, (%rsi,%rdx)
	leaq      8(%rax,%rcx,8), %rax
	incq      %rcx
	addq      $24, %rdx
	cmpq      %rcx, %rbx
	jne       LBB22_11
LBB22_12:
	movq      %rbx, _init_column_info.column_info_alloc(%rip)
LBB22_13:
	movq      %r12, -56(%rbp)
	testq     %r15, %r15
	movq      %r15, -64(%rbp)
	je        LBB22_16
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
LBB22_15:
	movb      $1, -24(%r13,%r12,8)
	movq      %r12, -16(%r13,%r12,8)
	movq      -8(%r13,%r12,8), %rdi
	leaq      _.memset_pattern(%rip), %rsi
	movq      %rbx, %rdx
	call      _memset_pattern16
	addq      $8, %rbx
	addq      $3, %r12
	decq      %r15
	jne       LBB22_15
LBB22_16:
	cmpq      $0, _cwd_n_used(%rip)
	movq      -64(%rbp), %r13
	je        LBB22_28
	movq      -48(%rbp), %rax
	notq      %rax
	movq      -56(%rbp), %r15
	notq      %r15
	cmpq      %r15, %rax
	cmova     %rax, %r15
	notq      %r15
	xorl      %r12d, %r12d
	.align 4, 0x90
LBB22_18:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r12,8), %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r8
	testq     %r13, %r13
	je        LBB22_27
	movq      _column_info(%rip), %rdi
	addq      $16, %rdi
	xorl      %ecx, %ecx
	.align 4, 0x90
LBB22_20:
	cmpb      $0, -16(%rdi)
	je        LBB22_26
	leaq      1(%rcx), %rsi
	testb     %r14b, %r14b
	je        LBB22_23
	movq      _cwd_n_used(%rip), %rax
	addq      %rcx, %rax
	xorl      %edx, %edx
	divq      %rsi
	movq      %rax, %rsi
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
	movq      %rax, %rdx
	jmp       LBB22_24
	.align 4, 0x90
LBB22_23:
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
LBB22_24:
	cmpq      %rdx, %rcx
	setne     %al
	movzbl    %al, %eax
	leaq      (%r8,%rax,2), %rbx
	movq      (%rdi), %rsi
	movq      %rbx, %rax
	subq      (%rsi,%rdx,8), %rax
	jbe       LBB22_26
	addq      %rax, -8(%rdi)
	movq      %rbx, (%rsi,%rdx,8)
	movq      -8(%rdi), %rax
	cmpq      _line_length(%rip), %rax
	setb      %al
	movb      %al, -16(%rdi)
LBB22_26:
	incq      %rcx
	addq      $24, %rdi
	cmpq      %rcx, %r15
	jne       LBB22_20
LBB22_27:
	incq      %r12
	cmpq      _cwd_n_used(%rip), %r12
	jb        LBB22_18
LBB22_28:
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
LBB22_29:
	movq      %r13, %rax
	cmpq      $2, %rax
	jb        LBB22_31
	leaq      -1(%rax), %r13
	cmpb      $0, (%rcx)
	leaq      -24(%rcx), %rcx
	je        LBB22_29
LBB22_31:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB22_32:
	call      _xalloc_die
	.align 4, 0x90
_indent:
	pushq     %rbp
Ltmp199:
Ltmp200:
	movq      %rsp, %rbp
Ltmp201:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp202:
Ltmp203:
Ltmp204:
	movq      %rsi, %r14
	movq      %rdi, %rbx
	cmpq      %r14, %rbx
	jae       LBB23_15
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	.align 4, 0x90
LBB23_2:
	movq      _tabsize(%rip), %rsi
	testq     %rsi, %rsi
	je        LBB23_9
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rsi
	movq      %rax, %rcx
	leaq      1(%rbx), %rax
	xorl      %edx, %edx
	divq      %rsi
	cmpq      %rax, %rcx
	jbe       LBB23_9
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB23_6
	cmpl      40(%rsi), %eax
	jle       LBB23_7
LBB23_6:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $9, (%rax)
	jmp       LBB23_8
	.align 4, 0x90
LBB23_9:
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB23_11
	cmpl      40(%rsi), %eax
	jle       LBB23_12
LBB23_11:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	jmp       LBB23_13
LBB23_12:
	movl      $32, %edi
	call      ___swbuf
	.align 4, 0x90
LBB23_13:
	incq      %rbx
	jmp       LBB23_14
LBB23_7:
	movl      $9, %edi
	call      ___swbuf
	.align 4, 0x90
LBB23_8:
	movq      _tabsize(%rip), %rcx
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %rcx
	addq      %rbx, %rcx
	subq      %rdx, %rcx
	movq      %rcx, %rbx
LBB23_14:
	cmpq      %r14, %rbx
	jb        LBB23_2
LBB23_15:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_xstrcoll_name:
	pushq     %rbp
Ltmp207:
Ltmp208:
	movq      %rsp, %rbp
Ltmp209:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_xstrcoll_df_name:
	pushq     %rbp
Ltmp212:
Ltmp213:
	movq      %rsp, %rbp
Ltmp214:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB25_2
	cmpl      $9, %ecx
	jne       LBB25_4
LBB25_2:
	cmpl      $3, %edx
	je        LBB25_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB25_6
	jmp       LBB25_8
LBB25_4:
	cmpl      $3, %edx
	je        LBB25_6
	cmpl      $9, %edx
	jne       LBB25_9
LBB25_6:
	cmpl      $3, %ecx
	je        LBB25_9
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB25_8
LBB25_9:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
LBB25_8:
	popq      %rbp
	ret       
	.align 4, 0x90
_rev_xstrcoll_name:
	pushq     %rbp
Ltmp217:
Ltmp218:
	movq      %rsp, %rbp
Ltmp219:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_df_name:
	pushq     %rbp
Ltmp222:
Ltmp223:
	movq      %rsp, %rbp
Ltmp224:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB27_2
	cmpl      $9, %ecx
	jne       LBB27_4
LBB27_2:
	cmpl      $3, %edx
	je        LBB27_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB27_6
	jmp       LBB27_8
LBB27_4:
	cmpl      $3, %edx
	je        LBB27_6
	cmpl      $9, %edx
	jne       LBB27_9
LBB27_6:
	cmpl      $3, %ecx
	je        LBB27_9
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB27_8
LBB27_9:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
LBB27_8:
	popq      %rbp
	ret       
	.align 4, 0x90
_strcmp_name:
	pushq     %rbp
Ltmp227:
Ltmp228:
	movq      %rsp, %rbp
Ltmp229:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_strcmp_df_name:
	pushq     %rbp
Ltmp232:
Ltmp233:
	movq      %rsp, %rbp
Ltmp234:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB29_2
	cmpl      $9, %ecx
	jne       LBB29_4
LBB29_2:
	cmpl      $3, %edx
	je        LBB29_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB29_6
	jmp       LBB29_8
LBB29_4:
	cmpl      $3, %edx
	je        LBB29_6
	cmpl      $9, %edx
	jne       LBB29_9
LBB29_6:
	cmpl      $3, %ecx
	je        LBB29_9
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB29_8
LBB29_9:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
LBB29_8:
	popq      %rbp
	ret       
	.align 4, 0x90
_rev_strcmp_name:
	pushq     %rbp
Ltmp237:
Ltmp238:
	movq      %rsp, %rbp
Ltmp239:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_df_name:
	pushq     %rbp
Ltmp242:
Ltmp243:
	movq      %rsp, %rbp
Ltmp244:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB31_2
	cmpl      $9, %ecx
	jne       LBB31_4
LBB31_2:
	cmpl      $3, %edx
	je        LBB31_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB31_6
	jmp       LBB31_8
LBB31_4:
	cmpl      $3, %edx
	je        LBB31_6
	cmpl      $9, %edx
	jne       LBB31_9
LBB31_6:
	cmpl      $3, %ecx
	je        LBB31_9
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB31_8
LBB31_9:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
LBB31_8:
	popq      %rbp
	ret       
	.align 4, 0x90
_xstrcoll_extension:
	pushq     %rbp
Ltmp248:
Ltmp249:
	movq      %rsp, %rbp
Ltmp250:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp251:
Ltmp252:
Ltmp253:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB32_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB32_2:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_xstrcoll_df_extension:
	pushq     %rbp
Ltmp257:
Ltmp258:
	movq      %rsp, %rbp
Ltmp259:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp260:
Ltmp261:
Ltmp262:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	movl      160(%r14), %edx
	cmpl      $3, %ecx
	je        LBB33_2
	cmpl      $9, %ecx
	jne       LBB33_4
LBB33_2:
	cmpl      $3, %edx
	je        LBB33_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB33_6
	jmp       LBB33_9
LBB33_4:
	cmpl      $3, %edx
	je        LBB33_6
	cmpl      $9, %edx
	jne       LBB33_8
LBB33_6:
	cmpl      $3, %ecx
	je        LBB33_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB33_9
LBB33_8:
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB33_10
LBB33_9:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB33_10:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_extension:
	pushq     %rbp
Ltmp266:
Ltmp267:
	movq      %rsp, %rbp
Ltmp268:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp269:
Ltmp270:
Ltmp271:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB34_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB34_2:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_df_extension:
	pushq     %rbp
Ltmp275:
Ltmp276:
	movq      %rsp, %rbp
Ltmp277:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp278:
Ltmp279:
Ltmp280:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	movl      160(%r14), %edx
	cmpl      $3, %ecx
	je        LBB35_2
	cmpl      $9, %ecx
	jne       LBB35_4
LBB35_2:
	cmpl      $3, %edx
	je        LBB35_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB35_6
	jmp       LBB35_9
LBB35_4:
	cmpl      $3, %edx
	je        LBB35_6
	cmpl      $9, %edx
	jne       LBB35_8
LBB35_6:
	cmpl      $3, %ecx
	je        LBB35_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB35_9
LBB35_8:
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB35_10
LBB35_9:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB35_10:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_strcmp_extension:
	pushq     %rbp
Ltmp284:
Ltmp285:
	movq      %rsp, %rbp
Ltmp286:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp287:
Ltmp288:
Ltmp289:
	movq      %rsi, %r15
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB36_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB36_2:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_strcmp_df_extension:
	pushq     %rbp
Ltmp293:
Ltmp294:
	movq      %rsp, %rbp
Ltmp295:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp296:
Ltmp297:
Ltmp298:
	movq      %rsi, %r15
	movl      160(%rdi), %ecx
	movl      160(%r15), %edx
	cmpl      $3, %ecx
	je        LBB37_2
	cmpl      $9, %ecx
	jne       LBB37_4
LBB37_2:
	cmpl      $3, %edx
	je        LBB37_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB37_6
	jmp       LBB37_9
LBB37_4:
	cmpl      $3, %edx
	je        LBB37_6
	cmpl      $9, %edx
	jne       LBB37_8
LBB37_6:
	cmpl      $3, %ecx
	je        LBB37_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB37_9
LBB37_8:
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB37_10
LBB37_9:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB37_10:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_extension:
	pushq     %rbp
Ltmp302:
Ltmp303:
	movq      %rsp, %rbp
Ltmp304:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp305:
Ltmp306:
Ltmp307:
	movq      %rdi, %r15
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB38_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB38_2:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_df_extension:
	pushq     %rbp
Ltmp311:
Ltmp312:
	movq      %rsp, %rbp
Ltmp313:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp314:
Ltmp315:
Ltmp316:
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB39_2
	cmpl      $9, %ecx
	jne       LBB39_4
LBB39_2:
	cmpl      $3, %edx
	je        LBB39_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB39_6
	jmp       LBB39_9
LBB39_4:
	cmpl      $3, %edx
	je        LBB39_6
	cmpl      $9, %edx
	jne       LBB39_8
LBB39_6:
	cmpl      $3, %ecx
	je        LBB39_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB39_9
LBB39_8:
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB39_10
LBB39_9:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB39_10:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_xstrcoll_size:
	pushq     %rbp
Ltmp319:
Ltmp320:
	movq      %rsp, %rbp
Ltmp321:
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        LBB40_3
	setg      %al
	jle       LBB40_4
	movzbl    %al, %eax
LBB40_3:
	popq      %rbp
	ret       
LBB40_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_xstrcoll_df_size:
	pushq     %rbp
Ltmp324:
Ltmp325:
	movq      %rsp, %rbp
Ltmp326:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB41_2
	cmpl      $9, %ecx
	jne       LBB41_4
LBB41_2:
	cmpl      $3, %edx
	je        LBB41_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB41_6
	jmp       LBB41_11
LBB41_4:
	cmpl      $3, %edx
	je        LBB41_6
	cmpl      $9, %edx
	jne       LBB41_8
LBB41_6:
	cmpl      $3, %ecx
	je        LBB41_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB41_11
LBB41_8:
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        LBB41_11
	setg      %al
	jle       LBB41_12
	movzbl    %al, %eax
LBB41_11:
	popq      %rbp
	ret       
LBB41_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_size:
	pushq     %rbp
Ltmp329:
Ltmp330:
	movq      %rsp, %rbp
Ltmp331:
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        LBB42_3
	setg      %al
	jle       LBB42_4
	movzbl    %al, %eax
LBB42_3:
	popq      %rbp
	ret       
LBB42_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_df_size:
	pushq     %rbp
Ltmp334:
Ltmp335:
	movq      %rsp, %rbp
Ltmp336:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB43_2
	cmpl      $9, %ecx
	jne       LBB43_4
LBB43_2:
	cmpl      $3, %edx
	je        LBB43_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB43_6
	jmp       LBB43_11
LBB43_4:
	cmpl      $3, %edx
	je        LBB43_6
	cmpl      $9, %edx
	jne       LBB43_8
LBB43_6:
	cmpl      $3, %ecx
	je        LBB43_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB43_11
LBB43_8:
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        LBB43_11
	setg      %al
	jle       LBB43_12
	movzbl    %al, %eax
LBB43_11:
	popq      %rbp
	ret       
LBB43_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_strcmp_size:
	pushq     %rbp
Ltmp339:
Ltmp340:
	movq      %rsp, %rbp
Ltmp341:
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        LBB44_3
	setg      %al
	jle       LBB44_4
	movzbl    %al, %eax
LBB44_3:
	popq      %rbp
	ret       
LBB44_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_strcmp_df_size:
	pushq     %rbp
Ltmp344:
Ltmp345:
	movq      %rsp, %rbp
Ltmp346:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB45_2
	cmpl      $9, %ecx
	jne       LBB45_4
LBB45_2:
	cmpl      $3, %edx
	je        LBB45_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB45_6
	jmp       LBB45_11
LBB45_4:
	cmpl      $3, %edx
	je        LBB45_6
	cmpl      $9, %edx
	jne       LBB45_8
LBB45_6:
	cmpl      $3, %ecx
	je        LBB45_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB45_11
LBB45_8:
	movq      112(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rsi)
	jl        LBB45_11
	setg      %al
	jle       LBB45_12
	movzbl    %al, %eax
LBB45_11:
	popq      %rbp
	ret       
LBB45_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_size:
	pushq     %rbp
Ltmp349:
Ltmp350:
	movq      %rsp, %rbp
Ltmp351:
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        LBB46_3
	setg      %al
	jle       LBB46_4
	movzbl    %al, %eax
LBB46_3:
	popq      %rbp
	ret       
LBB46_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_df_size:
	pushq     %rbp
Ltmp354:
Ltmp355:
	movq      %rsp, %rbp
Ltmp356:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB47_2
	cmpl      $9, %ecx
	jne       LBB47_4
LBB47_2:
	cmpl      $3, %edx
	je        LBB47_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB47_6
	jmp       LBB47_11
LBB47_4:
	cmpl      $3, %edx
	je        LBB47_6
	cmpl      $9, %edx
	jne       LBB47_8
LBB47_6:
	cmpl      $3, %ecx
	je        LBB47_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB47_11
LBB47_8:
	movq      112(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 112(%rdi)
	jl        LBB47_11
	setg      %al
	jle       LBB47_12
	movzbl    %al, %eax
LBB47_11:
	popq      %rbp
	ret       
LBB47_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_xstrcoll_version:
	pushq     %rbp
Ltmp359:
Ltmp360:
	movq      %rsp, %rbp
Ltmp361:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
	.align 4, 0x90
_xstrcoll_df_version:
	pushq     %rbp
Ltmp364:
Ltmp365:
	movq      %rsp, %rbp
Ltmp366:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB49_2
	cmpl      $9, %ecx
	jne       LBB49_4
LBB49_2:
	cmpl      $3, %edx
	je        LBB49_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB49_6
	jmp       LBB49_8
LBB49_4:
	cmpl      $3, %edx
	je        LBB49_6
	cmpl      $9, %edx
	jne       LBB49_9
LBB49_6:
	cmpl      $3, %ecx
	je        LBB49_9
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB49_8
LBB49_9:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
LBB49_8:
	popq      %rbp
	ret       
	.align 4, 0x90
_rev_xstrcoll_version:
	pushq     %rbp
Ltmp369:
Ltmp370:
	movq      %rsp, %rbp
Ltmp371:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
	.align 4, 0x90
_rev_xstrcoll_df_version:
	pushq     %rbp
Ltmp374:
Ltmp375:
	movq      %rsp, %rbp
Ltmp376:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB51_2
	cmpl      $9, %ecx
	jne       LBB51_4
LBB51_2:
	cmpl      $3, %edx
	je        LBB51_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB51_6
	jmp       LBB51_8
LBB51_4:
	cmpl      $3, %edx
	je        LBB51_6
	cmpl      $9, %edx
	jne       LBB51_9
LBB51_6:
	cmpl      $3, %ecx
	je        LBB51_9
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB51_8
LBB51_9:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
LBB51_8:
	popq      %rbp
	ret       
	.align 4, 0x90
_xstrcoll_mtime:
	pushq     %rbp
Ltmp379:
Ltmp380:
	movq      %rsp, %rbp
Ltmp381:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB52_3
	movl      $1, %eax
	jg        LBB52_3
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB52_4
LBB52_3:
	popq      %rbp
	ret       
LBB52_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_xstrcoll_df_mtime:
	pushq     %rbp
Ltmp384:
Ltmp385:
	movq      %rsp, %rbp
Ltmp386:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB53_2
	cmpl      $9, %ecx
	jne       LBB53_4
LBB53_2:
	cmpl      $3, %edx
	je        LBB53_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB53_6
	jmp       LBB53_11
LBB53_4:
	cmpl      $3, %edx
	je        LBB53_6
	cmpl      $9, %edx
	jne       LBB53_8
LBB53_6:
	cmpl      $3, %ecx
	je        LBB53_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB53_11
LBB53_8:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB53_11
	movl      $1, %eax
	jg        LBB53_11
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB53_12
LBB53_11:
	popq      %rbp
	ret       
LBB53_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_mtime:
	pushq     %rbp
Ltmp389:
Ltmp390:
	movq      %rsp, %rbp
Ltmp391:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB54_3
	movl      $1, %eax
	jg        LBB54_3
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB54_4
LBB54_3:
	popq      %rbp
	ret       
LBB54_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_df_mtime:
	pushq     %rbp
Ltmp394:
Ltmp395:
	movq      %rsp, %rbp
Ltmp396:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB55_2
	cmpl      $9, %ecx
	jne       LBB55_4
LBB55_2:
	cmpl      $3, %edx
	je        LBB55_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB55_6
	jmp       LBB55_11
LBB55_4:
	cmpl      $3, %edx
	je        LBB55_6
	cmpl      $9, %edx
	jne       LBB55_8
LBB55_6:
	cmpl      $3, %ecx
	je        LBB55_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB55_11
LBB55_8:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB55_11
	movl      $1, %eax
	jg        LBB55_11
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB55_12
LBB55_11:
	popq      %rbp
	ret       
LBB55_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_strcmp_mtime:
	pushq     %rbp
Ltmp399:
Ltmp400:
	movq      %rsp, %rbp
Ltmp401:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB56_3
	movl      $1, %eax
	jg        LBB56_3
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB56_4
LBB56_3:
	popq      %rbp
	ret       
LBB56_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_strcmp_df_mtime:
	pushq     %rbp
Ltmp404:
Ltmp405:
	movq      %rsp, %rbp
Ltmp406:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB57_2
	cmpl      $9, %ecx
	jne       LBB57_4
LBB57_2:
	cmpl      $3, %edx
	je        LBB57_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB57_6
	jmp       LBB57_11
LBB57_4:
	cmpl      $3, %edx
	je        LBB57_6
	cmpl      $9, %edx
	jne       LBB57_8
LBB57_6:
	cmpl      $3, %ecx
	je        LBB57_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB57_11
LBB57_8:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB57_11
	movl      $1, %eax
	jg        LBB57_11
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB57_12
LBB57_11:
	popq      %rbp
	ret       
LBB57_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_mtime:
	pushq     %rbp
Ltmp409:
Ltmp410:
	movq      %rsp, %rbp
Ltmp411:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB58_3
	movl      $1, %eax
	jg        LBB58_3
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB58_4
LBB58_3:
	popq      %rbp
	ret       
LBB58_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_df_mtime:
	pushq     %rbp
Ltmp414:
Ltmp415:
	movq      %rsp, %rbp
Ltmp416:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB59_2
	cmpl      $9, %ecx
	jne       LBB59_4
LBB59_2:
	cmpl      $3, %edx
	je        LBB59_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB59_6
	jmp       LBB59_11
LBB59_4:
	cmpl      $3, %edx
	je        LBB59_6
	cmpl      $9, %edx
	jne       LBB59_8
LBB59_6:
	cmpl      $3, %ecx
	je        LBB59_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB59_11
LBB59_8:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB59_11
	movl      $1, %eax
	jg        LBB59_11
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB59_12
LBB59_11:
	popq      %rbp
	ret       
LBB59_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_xstrcoll_ctime:
	pushq     %rbp
Ltmp419:
Ltmp420:
	movq      %rsp, %rbp
Ltmp421:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB60_3
	movl      $1, %eax
	jg        LBB60_3
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB60_4
LBB60_3:
	popq      %rbp
	ret       
LBB60_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_xstrcoll_df_ctime:
	pushq     %rbp
Ltmp424:
Ltmp425:
	movq      %rsp, %rbp
Ltmp426:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB61_2
	cmpl      $9, %ecx
	jne       LBB61_4
LBB61_2:
	cmpl      $3, %edx
	je        LBB61_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB61_6
	jmp       LBB61_11
LBB61_4:
	cmpl      $3, %edx
	je        LBB61_6
	cmpl      $9, %edx
	jne       LBB61_8
LBB61_6:
	cmpl      $3, %ecx
	je        LBB61_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB61_11
LBB61_8:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB61_11
	movl      $1, %eax
	jg        LBB61_11
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB61_12
LBB61_11:
	popq      %rbp
	ret       
LBB61_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_ctime:
	pushq     %rbp
Ltmp429:
Ltmp430:
	movq      %rsp, %rbp
Ltmp431:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB62_3
	movl      $1, %eax
	jg        LBB62_3
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB62_4
LBB62_3:
	popq      %rbp
	ret       
LBB62_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_df_ctime:
	pushq     %rbp
Ltmp434:
Ltmp435:
	movq      %rsp, %rbp
Ltmp436:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB63_2
	cmpl      $9, %ecx
	jne       LBB63_4
LBB63_2:
	cmpl      $3, %edx
	je        LBB63_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB63_6
	jmp       LBB63_11
LBB63_4:
	cmpl      $3, %edx
	je        LBB63_6
	cmpl      $9, %edx
	jne       LBB63_8
LBB63_6:
	cmpl      $3, %ecx
	je        LBB63_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB63_11
LBB63_8:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB63_11
	movl      $1, %eax
	jg        LBB63_11
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB63_12
LBB63_11:
	popq      %rbp
	ret       
LBB63_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_strcmp_ctime:
	pushq     %rbp
Ltmp439:
Ltmp440:
	movq      %rsp, %rbp
Ltmp441:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB64_3
	movl      $1, %eax
	jg        LBB64_3
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB64_4
LBB64_3:
	popq      %rbp
	ret       
LBB64_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_strcmp_df_ctime:
	pushq     %rbp
Ltmp444:
Ltmp445:
	movq      %rsp, %rbp
Ltmp446:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB65_2
	cmpl      $9, %ecx
	jne       LBB65_4
LBB65_2:
	cmpl      $3, %edx
	je        LBB65_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB65_6
	jmp       LBB65_11
LBB65_4:
	cmpl      $3, %edx
	je        LBB65_6
	cmpl      $9, %edx
	jne       LBB65_8
LBB65_6:
	cmpl      $3, %ecx
	je        LBB65_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB65_11
LBB65_8:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB65_11
	movl      $1, %eax
	jg        LBB65_11
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB65_12
LBB65_11:
	popq      %rbp
	ret       
LBB65_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_ctime:
	pushq     %rbp
Ltmp449:
Ltmp450:
	movq      %rsp, %rbp
Ltmp451:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB66_3
	movl      $1, %eax
	jg        LBB66_3
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB66_4
LBB66_3:
	popq      %rbp
	ret       
LBB66_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_df_ctime:
	pushq     %rbp
Ltmp454:
Ltmp455:
	movq      %rsp, %rbp
Ltmp456:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB67_2
	cmpl      $9, %ecx
	jne       LBB67_4
LBB67_2:
	cmpl      $3, %edx
	je        LBB67_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB67_6
	jmp       LBB67_11
LBB67_4:
	cmpl      $3, %edx
	je        LBB67_6
	cmpl      $9, %edx
	jne       LBB67_8
LBB67_6:
	cmpl      $3, %ecx
	je        LBB67_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB67_11
LBB67_8:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB67_11
	movl      $1, %eax
	jg        LBB67_11
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB67_12
LBB67_11:
	popq      %rbp
	ret       
LBB67_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_xstrcoll_atime:
	pushq     %rbp
Ltmp459:
Ltmp460:
	movq      %rsp, %rbp
Ltmp461:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB68_3
	movl      $1, %eax
	jg        LBB68_3
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB68_4
LBB68_3:
	popq      %rbp
	ret       
LBB68_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_xstrcoll_df_atime:
	pushq     %rbp
Ltmp464:
Ltmp465:
	movq      %rsp, %rbp
Ltmp466:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB69_2
	cmpl      $9, %ecx
	jne       LBB69_4
LBB69_2:
	cmpl      $3, %edx
	je        LBB69_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB69_6
	jmp       LBB69_11
LBB69_4:
	cmpl      $3, %edx
	je        LBB69_6
	cmpl      $9, %edx
	jne       LBB69_8
LBB69_6:
	cmpl      $3, %ecx
	je        LBB69_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB69_11
LBB69_8:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB69_11
	movl      $1, %eax
	jg        LBB69_11
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB69_12
LBB69_11:
	popq      %rbp
	ret       
LBB69_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_atime:
	pushq     %rbp
Ltmp469:
Ltmp470:
	movq      %rsp, %rbp
Ltmp471:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB70_3
	movl      $1, %eax
	jg        LBB70_3
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB70_4
LBB70_3:
	popq      %rbp
	ret       
LBB70_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_rev_xstrcoll_df_atime:
	pushq     %rbp
Ltmp474:
Ltmp475:
	movq      %rsp, %rbp
Ltmp476:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB71_2
	cmpl      $9, %ecx
	jne       LBB71_4
LBB71_2:
	cmpl      $3, %edx
	je        LBB71_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB71_6
	jmp       LBB71_11
LBB71_4:
	cmpl      $3, %edx
	je        LBB71_6
	cmpl      $9, %edx
	jne       LBB71_8
LBB71_6:
	cmpl      $3, %ecx
	je        LBB71_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB71_11
LBB71_8:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB71_11
	movl      $1, %eax
	jg        LBB71_11
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB71_12
LBB71_11:
	popq      %rbp
	ret       
LBB71_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
	.align 4, 0x90
_strcmp_atime:
	pushq     %rbp
Ltmp479:
Ltmp480:
	movq      %rsp, %rbp
Ltmp481:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB72_3
	movl      $1, %eax
	jg        LBB72_3
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB72_4
LBB72_3:
	popq      %rbp
	ret       
LBB72_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_strcmp_df_atime:
	pushq     %rbp
Ltmp484:
Ltmp485:
	movq      %rsp, %rbp
Ltmp486:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB73_2
	cmpl      $9, %ecx
	jne       LBB73_4
LBB73_2:
	cmpl      $3, %edx
	je        LBB73_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB73_6
	jmp       LBB73_11
LBB73_4:
	cmpl      $3, %edx
	je        LBB73_6
	cmpl      $9, %edx
	jne       LBB73_8
LBB73_6:
	cmpl      $3, %ecx
	je        LBB73_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB73_11
LBB73_8:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB73_11
	movl      $1, %eax
	jg        LBB73_11
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB73_12
LBB73_11:
	popq      %rbp
	ret       
LBB73_12:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_atime:
	pushq     %rbp
Ltmp489:
Ltmp490:
	movq      %rsp, %rbp
Ltmp491:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB74_3
	movl      $1, %eax
	jg        LBB74_3
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB74_4
LBB74_3:
	popq      %rbp
	ret       
LBB74_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_rev_strcmp_df_atime:
	pushq     %rbp
Ltmp494:
Ltmp495:
	movq      %rsp, %rbp
Ltmp496:
	movl      160(%rdi), %ecx
	movl      160(%rsi), %edx
	cmpl      $3, %ecx
	je        LBB75_2
	cmpl      $9, %ecx
	jne       LBB75_4
LBB75_2:
	cmpl      $3, %edx
	je        LBB75_6
	movl      $-1, %eax
	cmpl      $9, %edx
	je        LBB75_6
	jmp       LBB75_11
LBB75_4:
	cmpl      $3, %edx
	je        LBB75_6
	cmpl      $9, %edx
	jne       LBB75_8
LBB75_6:
	cmpl      $3, %ecx
	je        LBB75_8
	movl      $1, %eax
	cmpl      $9, %ecx
	jne       LBB75_11
LBB75_8:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB75_11
	movl      $1, %eax
	jg        LBB75_11
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB75_12
LBB75_11:
	popq      %rbp
	ret       
LBB75_12:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
	.align 4, 0x90
_xstrcoll:
	pushq     %rbp
Ltmp500:
Ltmp501:
	movq      %rsp, %rbp
Ltmp502:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Ltmp503:
Ltmp504:
Ltmp505:
	movq      %rsi, %r14
	movq      %rdi, %r15
	call      ___error
	movl      $0, (%rax)
	movq      %r15, %rdi
	movq      %r14, %rsi
	call      _strcoll
	movl      %eax, %ebx
	call      ___error
	cmpl      $0, (%rax)
	jne       LBB76_1
	movl      %ebx, %eax
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB76_1:
	call      ___error
	movl      (%rax), %ebx
	xorl      %edi, %edi
	movq      %r15, %rsi
	call      _quote_n
	movq      %rax, %r15
	movl      $1, %edi
	movq      %r14, %rsi
	call      _quote_n
	movq      %rax, %r8
	leaq      L_.str68(%rip), %rcx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	movq      %rcx, %rdx
	movq      %r15, %rcx
	call      _error
	cmpl      $0, _exit_status(%rip)
	jne       LBB76_3
	movl      $1, _exit_status(%rip)
LBB76_3:
	leaq      _failed_strcoll(%rip), %rax
	movl      $1, %esi
	movq      %rax, %rdi
	call      _longjmp
	.align 4, 0x90
_get_funky_string:
	pushq     %rbp
Ltmp509:
Ltmp510:
	movq      %rsp, %rbp
Ltmp511:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Ltmp512:
Ltmp513:
Ltmp514:
Ltmp515:
Ltmp516:
	movq      (%rsi), %r8
	movq      (%rdi), %r9
	xorl      %eax, %eax
	leaq      LJTI77_0(%rip), %r11
	movl      $1023, %r12d
	xorl      %r10d, %r10d
	xorl      %r14d, %r14d
	jmp       LBB77_1
	.align 4, 0x90
LBB77_44:
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
LBB77_1:
	movl      %eax, %ebx
	cmpl      $4, %eax
	ja        LBB77_57
	movslq    (%r11,%rbx,4), %rax
	addq      %r11, %rax
	jmp       *%rax
LBB77_3:
	movb      (%r8), %r15b
	movsbl    %r15b, %ebx
	movb      $1, %al
	cmpl      $57, %ebx
	jg        LBB77_5
	testl     %ebx, %ebx
	jne       LBB77_13
	jmp       LBB77_17
LBB77_14:
	movb      (%r8), %r15b
	movsbl    %r15b, %r13d
	cmpl      $47, %r13d
	jg        LBB77_18
	testl     %r13d, %r13d
	je        LBB77_16
LBB77_27:
	movb      %r15b, %r14b
LBB77_41:
	movb      %r14b, (%r9)
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
	incq      %r8
	jmp       LBB77_1
LBB77_42:
	movb      (%r8), %al
	movb      %al, %bl
	andb      $-8, %bl
	movzbl    %bl, %ebx
	cmpl      $48, %ebx
	jne       LBB77_43
	shlb      $3, %r14b
	incq      %r8
	addb      %al, %r14b
	addb      $-48, %r14b
	movl      $2, %eax
	jmp       LBB77_1
LBB77_46:
	movb      (%r8), %r15b
	movsbl    %r15b, %ebx
	addl      $-48, %ebx
	cmpl      $54, %ebx
	ja        LBB77_43
	btq       %rbx, %r12
	jb        LBB77_58
	movl      $8257536, %eax
	btq       %rbx, %rax
	jae       LBB77_49
	shlb      $4, %r14b
	incq      %r8
	addb      %r15b, %r14b
	addb      $-55, %r14b
	movl      $3, %eax
	jmp       LBB77_1
LBB77_52:
	movsbl    (%r8), %ebx
	cmpl      $64, %ebx
	jl        LBB77_55
	movzbl    %bl, %eax
	cmpl      $127, %eax
	je        LBB77_55
	incq      %r8
	andb      $31, %bl
	movb      %bl, (%r9)
	jmp       LBB77_44
LBB77_5:
	cmpl      $91, %ebx
	jg        LBB77_8
	cmpl      $61, %ebx
	jne       LBB77_7
	testb     %dl, %dl
	je        LBB77_13
	jmp       LBB77_17
LBB77_18:
	cmpl      $62, %r13d
	jg        LBB77_22
	addl      $-48, %r13d
	cmpl      $8, %r13d
	jae       LBB77_27
	addb      $-48, %r15b
	movl      $2, %eax
	movb      %r15b, %r14b
LBB77_21:
	incq      %r8
	jmp       LBB77_1
LBB77_55:
	xorl      %eax, %eax
	movzbl    %bl, %ebx
	cmpl      $63, %ebx
	jne       LBB77_17
	movb      $127, (%r9)
	incq      %r9
	incq      %r10
	jmp       LBB77_1
LBB77_8:
	cmpl      $94, %ebx
	jne       LBB77_9
	incq      %r8
	movl      $4, %eax
	jmp       LBB77_1
LBB77_22:
	cmpl      $87, %r13d
	jg        LBB77_25
	cmpl      $63, %r13d
	jne       LBB77_27
	movb      $127, %r14b
	jmp       LBB77_41
LBB77_58:
	shlb      $4, %r14b
	incq      %r8
	addb      %r15b, %r14b
	addb      $-48, %r14b
	movl      $3, %eax
	jmp       LBB77_1
LBB77_49:
	movq      $35465847065542656, %rax
	btq       %rbx, %rax
	jae       LBB77_43
	shlb      $4, %r14b
	incq      %r8
	addb      %r15b, %r14b
	addb      $-87, %r14b
	movl      $3, %eax
	jmp       LBB77_1
LBB77_43:
	movb      %r14b, (%r9)
	jmp       LBB77_44
LBB77_9:
	cmpl      $92, %ebx
	jne       LBB77_13
	incq      %r8
	movl      $1, %eax
	jmp       LBB77_1
LBB77_25:
	movl      $3, %eax
	xorl      %r14d, %r14d
	cmpl      $94, %r13d
	jg        LBB77_28
	cmpl      $88, %r13d
	je        LBB77_21
	jmp       LBB77_27
LBB77_28:
	cmpl      $109, %r13d
	jg        LBB77_31
	addl      $-95, %r13d
	cmpl      $7, %r13d
	ja        LBB77_27
	movb      $7, %r14b
	leaq      LJTI77_2(%rip), %rax
	movq      %rax, %rbx
	movslq    (%rbx,%r13,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
LBB77_40:
	movb      $32, %r14b
	jmp       LBB77_41
LBB77_31:
	addl      $-110, %r13d
	cmpl      $10, %r13d
	ja        LBB77_27
	leaq      LJTI77_1(%rip), %rbx
	movq      %rbx, %r12
	movslq    (%r12,%r13,4), %rbx
	addq      %r12, %rbx
	movl      $1023, %r12d
	jmp       *%rbx
LBB77_36:
	movb      $10, %r14b
	jmp       LBB77_41
LBB77_7:
	cmpl      $58, %ebx
	je        LBB77_17
LBB77_13:
	incq      %r8
	movb      %r15b, (%r9)
	jmp       LBB77_44
LBB77_33:
	movb      $8, %r14b
	jmp       LBB77_41
LBB77_34:
	movb      $27, %r14b
	jmp       LBB77_41
LBB77_35:
	movb      $12, %r14b
	jmp       LBB77_41
LBB77_37:
	movb      $13, %r14b
	jmp       LBB77_41
LBB77_38:
	movb      $9, %r14b
	jmp       LBB77_41
LBB77_39:
	movb      $11, %r14b
	jmp       LBB77_41
LBB77_57:
	call      _abort
LBB77_16:
	incq      %r8
	xorl      %eax, %eax
LBB77_17:
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
	.align 2, 0x90
LJTI77_0:
	.long	L77_0_set_3
	.long	L77_0_set_14
	.long	L77_0_set_42
	.long	L77_0_set_46
	.long	L77_0_set_52
LJTI77_1:
	.long	L77_1_set_36
	.long	L77_1_set_27
	.long	L77_1_set_27
	.long	L77_1_set_27
	.long	L77_1_set_37
	.long	L77_1_set_27
	.long	L77_1_set_38
	.long	L77_1_set_27
	.long	L77_1_set_39
	.long	L77_1_set_27
	.long	L77_1_set_21
LJTI77_2:
	.long	L77_2_set_40
	.long	L77_2_set_27
	.long	L77_2_set_41
	.long	L77_2_set_33
	.long	L77_2_set_27
	.long	L77_2_set_27
	.long	L77_2_set_34
	.long	L77_2_set_35
# ----------------------
	.section       __TEXT,__const
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
	.align 4
_G_line:
	.asciz	"# Configuration file for dircolors, a utility to help you set the\000# LS_COLORS environment variable used by GNU ls with the --color option.\000# Copyright (C) 1996-2015 Free Software Foundation, Inc.\000# Copying and distribution of this file, with or without modification,\000# are permitted provided the copyright notice and this notice are preserved.\000# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\000# slackware version of dircolors) are recognized but ignored.\000# Below, there should be one TERM entry for each termtype that is colorizable\000TERM Eterm\000TERM ansi\000TERM color-xterm\000TERM con132x25\000TERM con132x30\000TERM con132x43\000TERM con132x60\000TERM con80x25\000TERM con80x28\000TERM con80x30\000TERM con80x43\000TERM con80x50\000TERM con80x60\000TERM cons25\000TERM console\000TERM cygwin\000TERM dtterm\000TERM eterm-color\000TERM gnome\000TERM gnome-256color\000TERM hurd\000TERM jfbterm\000TERM konsole\000TERM kterm\000TERM linux\000TERM linux-c\000TERM mach-color\000TERM mach-gnu-color\000TERM mlterm\000TERM putty\000TERM putty-256color\000TERM rxvt\000TERM rxvt-256color\000TERM rxvt-cygwin\000TERM rxvt-cygwin-native\000TERM rxvt-unicode\000TERM rxvt-unicode-256color\000TERM rxvt-unicode256\000TERM screen\000TERM screen-256color\000TERM screen-256color-bce\000TERM screen-bce\000TERM screen-w\000TERM screen.Eterm\000TERM screen.rxvt\000TERM screen.linux\000TERM st\000TERM st-256color\000TERM terminator\000TERM vt100\000TERM xterm\000TERM xterm-16color\000TERM xterm-256color\000TERM xterm-88color\000TERM xterm-color\000TERM xterm-debian\000# Below are the color init strings for the basic file types. A color init\000# string consists of one or more of the following numeric codes:\000# Attribute codes:\000# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\000# Text color codes:\000# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\000# Background color codes:\000# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\000#NORMAL 00 # no color code at all\000#FILE 00 # regular file: use no color at all\000RESET 0 # reset to \"normal\" color\000DIR 01;34 # directory\000LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\000 # numerical value, the color is as for the file pointed to.)\000MULTIHARDLINK 00 # regular file with more than one link\000FIFO 40;33 # pipe\000SOCK 01;35 # socket\000DOOR 01;35 # door\000BLK 40;33;01 # block device driver\000CHR 40;33;01 # character device driver\000ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\000MISSING 00 # ... and the files they point to\000SETUID 37;41 # file that is setuid (u+s)\000SETGID 30;43 # file that is setgid (g+s)\000CAPABILITY 30;41 # file with capability\000STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\000OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\000STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\000# This is for files with execute permission:\000EXEC 01;32\000# List any file extensions like '.gz' or '.tar' that you would like ls\000# to colorize below. Put the extension, a space, and the color init string.\000# (and any comments you want to add after a '#')\000# If you use DOS-style suffixes, you may want to uncomment the following:\000#.cmd 01;32 # executables (bright green)\000#.exe 01;32\000#.com 01;32\000#.btm 01;32\000#.bat 01;32\000# Or if you want to colorize scripts even if they do not have the\000# executable bit actually set.\000#.sh 01;32\000#.csh 01;32\000 # archives or compressed (bright red)\000.tar 01;31\000.tgz 01;31\000.arc 01;31\000.arj 01;31\000.taz 01;31\000.lha 01;31\000.lz4 01;31\000.lzh 01;31\000.lzma 01;31\000.tlz 01;31\000.txz 01;31\000.tzo 01;31\000.t7z 01;31\000.zip 01;31\000.z 01;31\000.Z 01;31\000.dz 01;31\000.gz 01;31\000.lrz 01;31\000.lz 01;31\000.lzo 01;31\000.xz 01;31\000.bz2 01;31\000.bz 01;31\000.tbz 01;31\000.tbz2 01;31\000.tz 01;31\000.deb 01;31\000.rpm 01;31\000.jar 01;31\000.war 01;31\000.ear 01;31\000.sar 01;31\000.rar 01;31\000.alz 01;31\000.ace 01;31\000.zoo 01;31\000.cpio 01;31\000.7z 01;31\000.rz 01;31\000.cab 01;31\000# image formats\000.jpg 01;35\000.jpeg 01;35\000.gif 01;35\000.bmp 01;35\000.pbm 01;35\000.pgm 01;35\000.ppm 01;35\000.tga 01;35\000.xbm 01;35\000.xpm 01;35\000.tif 01;35\000.tiff 01;35\000.png 01;35\000.svg 01;35\000.svgz 01;35\000.mng 01;35\000.pcx 01;35\000.mov 01;35\000.mpg 01;35\000.mpeg 01;35\000.m2v 01;35\000.mkv 01;35\000.webm 01;35\000.ogm 01;35\000.mp4 01;35\000.m4v 01;35\000.mp4v 01;35\000.vob 01;35\000.qt 01;35\000.nuv 01;35\000.wmv 01;35\000.asf 01;35\000.rm 01;35\000.rmvb 01;35\000.flc 01;35\000.avi 01;35\000.fli 01;35\000.flv 01;35\000.gl 01;35\000.dl 01;35\000.xcf 01;35\000.xwd 01;35\000.yuv 01;35\000.cgm 01;35\000.emf 01;35\000# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions\000.ogv 01;35\000.ogx 01;35\000# audio formats\000.aac 00;36\000.au 00;36\000.flac 00;36\000.m4a 00;36\000.mid 00;36\000.midi 00;36\000.mka 00;36\000.mp3 00;36\000.mpc 00;36\000.ogg 00;36\000.ra 00;36\000.wav 00;36\000# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions\000.oga 00;36\000.opus 00;36\000.spx 00;36\000.xspf 00;36"
	.align 4
_sort_types:
	.long	-1
	.long	4
	.long	2
	.long	1
	.long	3
	.align 4
_time_types:
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
	.align 4
_format_types:
	.long	0
	.long	0
	.long	4
	.long	3
	.long	3
	.long	2
	.long	1
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
	.align 4
_indicator_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
_decode_switches.posix_prefix:
	.asciz	"posix-"
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
	.align 4
_.memset_pattern:
	.quad	3
	.quad	3
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.zero	1
L_.str1:
	.asciz	"."
L___func__.main:
	.asciz	"main"
L_.str2:
	.asciz	"src/ls.c"
L_.str3:
	.asciz	"found"
L_.str4:
	.asciz	"\033["
L_.str5:
	.asciz	"//DIRED//"
L_.str6:
	.asciz	"//SUBDIRED//"
L_.str7:
	.asciz	"//DIRED-OPTIONS// --quoting-style=%s\n"
L_.str8:
	.asciz	"hash_get_n_entries (active_dir_set) == 0"
L_.str9:
	.asciz	"Usage: %s [OPTION]... [FILE]...\n"
L_.str10:
	.asciz	"List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"
L_.str11:
	.asciz	"  -a, --all                  do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"
L_.str12:
	.asciz	"      --block-size=SIZE      scale sizes by SIZE before printing them; e.g.,\n                               '--block-size=M' prints sizes in units of\n                               1,048,576 bytes; see SIZE format below\n  -B, --ignore-backups       do not list implied entries ending with ~\n  -c                         with -lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"
L_.str13:
	.asciz	"  -C                         list entries by columns\n      --color[=WHEN]         colorize the output; WHEN can be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"
L_.str14:
	.asciz	"  -f                         do not sort, enable -aU, disable -ls --color\n  -F, --classify             append indicator (one of */=>@|) to entries\n      --file-type            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"
L_.str15:
	.asciz	"  -g                         like -l, but do not list owner\n"
L_.str16:
	.asciz	"      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"
L_.str17:
	.asciz	"  -G, --no-group             in a long listing, don't print group names\n  -h, --human-readable       with -l and/or -s, print human readable sizes\n                               (e.g., 1K 234M 2G)\n      --si                   likewise, but use powers of 1000 not 1024\n"
L_.str18:
	.asciz	"  -H, --dereference-command-line\n                             follow symbolic links listed on the command line\n      --dereference-command-line-symlink-to-dir\n                             follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"
L_.str19:
	.asciz	"      --indicator-style=WORD  append indicator with style WORD to entry names:\n                               none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n  -k, --kibibytes            default to 1024-byte blocks for disk usage\n"
L_.str20:
	.asciz	"  -l                         use a long listing format\n  -L, --dereference          when showing file information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"
L_.str21:
	.asciz	"  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs\n  -N, --literal              print raw entry names (don't treat e.g. control\n                               characters specially)\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"
L_.str22:
	.asciz	"  -q, --hide-control-chars   print ? instead of nongraphic characters\n      --show-control-chars   show nongraphic characters as-is (the default,\n                               unless program is 'ls' and output is a terminal)\n  -Q, --quote-name           enclose entry names in double quotes\n      --quoting-style=WORD   use quoting style WORD for entry names:\n                               literal, locale, shell, shell-always, c, escape\n"
L_.str23:
	.asciz	"  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"
L_.str24:
	.asciz	"  -S                         sort by file size, largest first\n      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),\n                               time (-t), version (-v), extension (-X)\n      --time=WORD            with -l, show time as WORD instead of default\n                               modification time: atime or access or use (-u);\n                               ctime or status (-c); also use specified time\n                               as sort key if --sort=time (newest first)\n"
L_.str25:
	.asciz	"      --time-style=STYLE     with -l, show times using style STYLE:\n                               full-iso, long-iso, iso, locale, or +FORMAT;\n                               FORMAT is interpreted like in 'date'; if FORMAT\n                               is FORMAT1<newline>FORMAT2, then FORMAT1 applies\n                               to non-recent files and FORMAT2 to recent files;\n                               if STYLE is prefixed with 'posix-', STYLE\n                               takes effect only outside the POSIX locale\n"
L_.str26:
	.asciz	"  -t                         sort by modification time, newest first\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"
L_.str27:
	.asciz	"  -u                         with -lt: sort by, and show, access time;\n                               with -l: show access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"
L_.str28:
	.asciz	"  -w, --width=COLS           assume screen width instead of current value\n  -x                         list entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"
L_.str29:
	.asciz	"      --help     display this help and exit\n"
L_.str30:
	.asciz	"      --version  output version information and exit\n"
L_.str31:
	.asciz	"\nUsing color to distinguish file types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"
L_.str32:
	.asciz	"\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"
L_.str33:
	.asciz	"ls"
L_.str34:
	.asciz	"dir"
L_.str35:
	.asciz	"vdir"
L_.str36:
	.asciz	"["
L_.str37:
	.asciz	"test invocation"
L_.str38:
	.asciz	"coreutils"
L_.str39:
	.asciz	"Multi-call invocation"
L_.str40:
	.asciz	"sha224sum"
L_.str41:
	.asciz	"sha2 utilities"
L_.str42:
	.asciz	"sha256sum"
L_.str43:
	.asciz	"sha384sum"
L_.str44:
	.asciz	"sha512sum"
L_.str45:
	.asciz	"\n%s online help: <%s>\n"
L_.str46:
	.asciz	"GNU coreutils"
L_.str47:
	.asciz	"http://www.gnu.org/software/coreutils/"
L_.str48:
	.asciz	"en_"
L_.str49:
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"
L_.str50:
	.asciz	"Full documentation at: <%s%s>\n"
L_.str51:
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"
L_.str52:
	.asciz	" invocation"
L_.str53:
	.asciz	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\n"
L_.str54:
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"
L_.str55:
	.asciz	"Try '%s --help' for more information.\n"
_filetype_letter:
	.asciz	"?pcdb-lswd"
L_.str56:
	.asciz	"%*s "
L_.str57:
	.asciz	"?"
L_.str58:
	.asciz	"%s %*s "
L_.str59:
	.asciz	"  "
L_.str60:
	.asciz	"%*s, %*s "
L_.str61:
	.asciz	" -> "
L_.str62:
	.asciz	"%b"
L_.str63:
	.asciz	"%b %e  %Y"
L_.str64:
	.asciz	"%b %e %H:%M"
L_.str65:
	.asciz	"%*lu "
L___func__.sort_files:
	.asciz	"sort_files"
L_.str67:
	.asciz	"sort_type != sort_version"
L_.str68:
	.asciz	"cannot compare file names %s and %s"
L_.str70:
	.asciz	"cannot access %s"
L_.str73:
	.asciz	"%s"
L_.str74:
	.asciz	"%lu"
L_.str75:
	.asciz	"cannot read symbolic link %s"
L_.str76:
	.asciz	"cannot open directory %s"
L_.str77:
	.asciz	"cannot determine device and inode of %s"
L_.str78:
	.asciz	"%s: not listing already-listed directory"
L_.str79:
	.asciz	":\n"
L_.str80:
	.asciz	"reading directory %s"
L_.str81:
	.asciz	"closing directory %s"
L_.str82:
	.asciz	"total"
L_.str83:
	.asciz	"LS_COLORS"
L_.str84:
	.asciz	"COLORTERM"
L_.str85:
	.asciz	"?\077"
L_.str86:
	.asciz	"unrecognized prefix: %s"
L_.str87:
	.asciz	"unparsable value for LS_COLORS environment variable"
L_.str88:
	.asciz	"target"
L_.str89:
	.asciz	"lc"
L_.str90:
	.asciz	"rc"
L_.str91:
	.asciz	"ec"
L_.str92:
	.asciz	"rs"
L_.str93:
	.asciz	"no"
L_.str94:
	.asciz	"fi"
L_.str95:
	.asciz	"di"
L_.str96:
	.asciz	"ln"
L_.str97:
	.asciz	"pi"
L_.str98:
	.asciz	"so"
L_.str99:
	.asciz	"bd"
L_.str100:
	.asciz	"cd"
L_.str101:
	.asciz	"mi"
L_.str102:
	.asciz	"or"
L_.str103:
	.asciz	"ex"
L_.str104:
	.asciz	"do"
L_.str105:
	.asciz	"su"
L_.str106:
	.asciz	"sg"
L_.str107:
	.asciz	"st"
L_.str108:
	.asciz	"ow"
L_.str109:
	.asciz	"tw"
L_.str110:
	.asciz	"ca"
L_.str111:
	.asciz	"mh"
L_.str112:
	.asciz	"cl"
L_.str113:
	.asciz	"TERM"
L_.str114:
	.asciz	"TERM "
L_.str115:
	.asciz	"COLUMNS"
L_.str116:
	.asciz	"ignoring invalid width in environment variable COLUMNS: %s"
L_.str117:
	.asciz	"TABSIZE"
L_.str118:
	.asciz	"ignoring invalid tab size in environment variable TABSIZE: %s"
L_.str119:
	.asciz	"abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
L_.str120:
	.asciz	"invalid line width"
L_.str121:
	.asciz	"*~"
L_.str122:
	.asciz	".*~"
L_.str123:
	.asciz	"invalid tab size"
L_.str124:
	.asciz	"--sort"
L_.str125:
	.asciz	"--time"
L_.str126:
	.asciz	"--format"
L_.str127:
	.asciz	"full-iso"
L_.str128:
	.asciz	"--color"
L_.str129:
	.asciz	"--indicator-style"
L_.str130:
	.asciz	"--quoting-style"
L_.str131:
	.asciz	"Richard M. Stallman"
L_.str132:
	.asciz	"David MacKenzie"
L_.str133:
	.asciz	"LS_BLOCK_SIZE"
L_.str134:
	.asciz	"BLOCK_SIZE"
L_.str135:
	.asciz	"*=>@|"
L_.str136:
	.asciz	"TIME_STYLE"
L_.str137:
	.asciz	"locale"
L_.str138:
	.asciz	"invalid time style format %s"
L_.str139:
	.asciz	"time style"
L_.str140:
	.asciz	"Valid arguments are:\n"
L_.str141:
	.asciz	"  - [posix-]%s\n"
L_.str142:
	.asciz	"  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"
L_.str143:
	.asciz	"%Y-%m-%d %H:%M:%S.%N %z"
L_.str144:
	.asciz	"%Y-%m-%d %H:%M"
L_.str145:
	.asciz	"%Y-%m-%d "
L_.str146:
	.asciz	"%m-%d %H:%M"
L_.str147:
	.asciz	"error initializing month strings"
L_.str148:
	.asciz	"long-iso"
L_.str149:
	.asciz	"iso"
L_.str150:
	.asciz	"none"
L_.str151:
	.asciz	"slash"
L_.str152:
	.asciz	"file-type"
L_.str153:
	.asciz	"classify"
L_.str154:
	.asciz	"always"
L_.str155:
	.asciz	"yes"
L_.str156:
	.asciz	"force"
L_.str157:
	.asciz	"never"
L_.str158:
	.asciz	"auto"
L_.str159:
	.asciz	"tty"
L_.str160:
	.asciz	"if-tty"
L_.str161:
	.asciz	"verbose"
L_.str162:
	.asciz	"long"
L_.str163:
	.asciz	"commas"
L_.str164:
	.asciz	"horizontal"
L_.str165:
	.asciz	"across"
L_.str166:
	.asciz	"vertical"
L_.str167:
	.asciz	"single-column"
L_.str168:
	.asciz	"atime"
L_.str169:
	.asciz	"access"
L_.str170:
	.asciz	"use"
L_.str171:
	.asciz	"ctime"
L_.str172:
	.asciz	"status"
L_.str173:
	.asciz	"time"
L_.str174:
	.asciz	"size"
L_.str175:
	.asciz	"extension"
L_.str176:
	.asciz	"version"
L_.str177:
	.asciz	"all"
L_.str178:
	.asciz	"escape"
L_.str179:
	.asciz	"directory"
L_.str180:
	.asciz	"dired"
L_.str181:
	.asciz	"full-time"
L_.str182:
	.asciz	"group-directories-first"
L_.str183:
	.asciz	"human-readable"
L_.str184:
	.asciz	"inode"
L_.str185:
	.asciz	"kibibytes"
L_.str186:
	.asciz	"numeric-uid-gid"
L_.str187:
	.asciz	"no-group"
L_.str188:
	.asciz	"hide-control-chars"
L_.str189:
	.asciz	"reverse"
L_.str190:
	.asciz	"width"
L_.str191:
	.asciz	"almost-all"
L_.str192:
	.asciz	"ignore-backups"
L_.str193:
	.asciz	"si"
L_.str194:
	.asciz	"dereference-command-line"
L_.str195:
	.asciz	"dereference-command-line-symlink-to-dir"
L_.str196:
	.asciz	"hide"
L_.str197:
	.asciz	"ignore"
L_.str198:
	.asciz	"indicator-style"
L_.str199:
	.asciz	"dereference"
L_.str200:
	.asciz	"literal"
L_.str201:
	.asciz	"quote-name"
L_.str202:
	.asciz	"quoting-style"
L_.str203:
	.asciz	"recursive"
L_.str204:
	.asciz	"format"
L_.str205:
	.asciz	"show-control-chars"
L_.str206:
	.asciz	"sort"
L_.str207:
	.asciz	"tabsize"
L_.str208:
	.asciz	"time-style"
L_.str209:
	.asciz	"color"
L_.str210:
	.asciz	"block-size"
L_.str211:
	.asciz	"context"
L_.str212:
	.asciz	"author"
L_.str213:
	.asciz	"help"
L_.str214:
	.asciz	"QUOTING_STYLE"
L_.str215:
	.asciz	"ignoring invalid value of environment variable QUOTING_STYLE: %s"
L_.str216:
	.asciz	" %lu"
L_.str217:
	.asciz	"m"
L_.str218:
	.asciz	"0"
L_.str219:
	.asciz	"01;34"
L_.str220:
	.asciz	"01;36"
L_.str221:
	.asciz	"33"
L_.str222:
	.asciz	"01;35"
L_.str223:
	.asciz	"01;33"
L_.str224:
	.asciz	"01;32"
L_.str225:
	.asciz	"37;41"
L_.str226:
	.asciz	"30;43"
L_.str227:
	.asciz	"37;44"
L_.str228:
	.asciz	"34;42"
L_.str229:
	.asciz	"30;42"
L_.str230:
	.asciz	"30;41"
L_.str231:
	.asciz	"\033[K"
L___func__.dev_ino_pop:
	.asciz	"dev_ino_pop"
L_.str232:
	.asciz	"dev_ino_size <= obstack_object_size (&dev_ino_obstack)"
L_.str233:
	.asciz	"00"
# ----------------------
.zerofill __DATA,__bss,_exit_status,4,2
# ----------------------
.zerofill __DATA,__bss,_print_dir_name,1,0
# ----------------------
.zerofill __DATA,__bss,_pending_dirs,8,3
# ----------------------
.zerofill __DATA,__bss,_current_time,16,3
# ----------------------
.zerofill __DATA,__bss,_print_with_color,1,0
# ----------------------
.zerofill __DATA,__bss,_color_symlink_as_referent,1,0
# ----------------------
.zerofill __DATA,__bss,_format,4,2
# ----------------------
.zerofill __DATA,__bss,_check_symlink_color,1,0
# ----------------------
.zerofill __DATA,__bss,_caught_signals,4,2
# ----------------------
.zerofill __DATA,__bss,_dereference,4,2
# ----------------------
.zerofill __DATA,__bss,_immediate_dirs,1,0
# ----------------------
.zerofill __DATA,__bss,_indicator_style,4,2
# ----------------------
.zerofill __DATA,__bss,_recursive,1,0
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
.zerofill __DATA,__bss,_dired,1,0
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
.zerofill __DATA,__bss,_used_color,1,0
# ----------------------
	.section       __DATA,__data
	.align 4
_color_indicator:
	.quad	2
	.quad	L_.str4
	.quad	1
	.quad	L_.str217
	.zero	16
	.quad	1
	.quad	L_.str218
	.zero	16
	.zero	16
	.quad	5
	.quad	L_.str219
	.quad	5
	.quad	L_.str220
	.quad	2
	.quad	L_.str221
	.quad	5
	.quad	L_.str222
	.quad	5
	.quad	L_.str223
	.quad	5
	.quad	L_.str223
	.zero	16
	.zero	16
	.quad	5
	.quad	L_.str224
	.quad	5
	.quad	L_.str222
	.quad	5
	.quad	L_.str225
	.quad	5
	.quad	L_.str226
	.quad	5
	.quad	L_.str227
	.quad	5
	.quad	L_.str228
	.quad	5
	.quad	L_.str229
	.quad	5
	.quad	L_.str230
	.zero	16
	.quad	3
	.quad	L_.str231
	.align 3
_file_output_block_size:
	.quad	1
	.align 4
_long_time_format:
	.quad	L_.str63
	.quad	L_.str64
	.align 2
_long_time_expected_width.width:
	.long	-1
_UNKNOWN_SECURITY_CONTEXT:
	.asciz	"?"
# ----------------------
.zerofill __DATA,__bss,_stop_signal_count,4,2
# ----------------------
.zerofill __DATA,__bss,_interrupt_signal,4,2
# ----------------------
.zerofill __DATA,__bss,_filename_quoting_options,8,3
# ----------------------
	.section       __DATA,__const
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
	.quad	0
	.align 4
_sort_args:
	.quad	L_.str150
	.quad	L_.str173
	.quad	L_.str174
	.quad	L_.str175
	.quad	L_.str176
	.quad	0
	.align 4
_time_args:
	.quad	L_.str168
	.quad	L_.str169
	.quad	L_.str170
	.quad	L_.str171
	.quad	L_.str172
	.quad	0
	.align 4
_format_args:
	.quad	L_.str161
	.quad	L_.str162
	.quad	L_.str163
	.quad	L_.str164
	.quad	L_.str165
	.quad	L_.str166
	.quad	L_.str167
	.quad	0
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
	.quad	0
	.align 4
_indicator_style_args:
	.quad	L_.str150
	.quad	L_.str151
	.quad	L_.str152
	.quad	L_.str153
	.quad	0
	.align 4
_time_style_args:
	.quad	L_.str127
	.quad	L_.str148
	.quad	L_.str149
	.quad	L_.str137
	.quad	0
	.align 4
_long_options:
	.quad	L_.str177
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	L_.str178
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	L_.str179
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	L_.str180
	.long	0
	.zero	4
	.quad	0
	.long	68
	.zero	4
	.quad	L_.str181
	.long	0
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	L_.str182
	.long	0
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	L_.str183
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	L_.str184
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	L_.str185
	.long	0
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	L_.str186
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	L_.str187
	.long	0
	.zero	4
	.quad	0
	.long	71
	.zero	4
	.quad	L_.str188
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	L_.str189
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	L_.str174
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	L_.str190
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	L_.str191
	.long	0
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	L_.str192
	.long	0
	.zero	4
	.quad	0
	.long	66
	.zero	4
	.quad	L_.str153
	.long	0
	.zero	4
	.quad	0
	.long	70
	.zero	4
	.quad	L_.str152
	.long	0
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	L_.str193
	.long	0
	.zero	4
	.quad	0
	.long	140
	.zero	4
	.quad	L_.str194
	.long	0
	.zero	4
	.quad	0
	.long	72
	.zero	4
	.quad	L_.str195
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	L_.str196
	.long	1
	.zero	4
	.quad	0
	.long	136
	.zero	4
	.quad	L_.str197
	.long	1
	.zero	4
	.quad	0
	.long	73
	.zero	4
	.quad	L_.str198
	.long	1
	.zero	4
	.quad	0
	.long	137
	.zero	4
	.quad	L_.str199
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	L_.str200
	.long	0
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	L_.str201
	.long	0
	.zero	4
	.quad	0
	.long	81
	.zero	4
	.quad	L_.str202
	.long	1
	.zero	4
	.quad	0
	.long	138
	.zero	4
	.quad	L_.str203
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	L_.str204
	.long	1
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	L_.str205
	.long	0
	.zero	4
	.quad	0
	.long	139
	.zero	4
	.quad	L_.str206
	.long	1
	.zero	4
	.quad	0
	.long	141
	.zero	4
	.quad	L_.str207
	.long	1
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	L_.str173
	.long	1
	.zero	4
	.quad	0
	.long	142
	.zero	4
	.quad	L_.str208
	.long	1
	.zero	4
	.quad	0
	.long	143
	.zero	4
	.quad	L_.str209
	.long	2
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	L_.str210
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	L_.str211
	.long	0
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	L_.str212
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	L_.str213
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	L_.str176
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
# ----------------------
.zerofill __DATA,__bss,_sorted_file,8,3
# ----------------------
.zerofill __DATA,__bss,_any_has_acl,1,0
# ----------------------
.zerofill __DATA,__bss,_time_type,4,2
# ----------------------
.zerofill __DATA,__bss,_print_inode,1,0
# ----------------------
.zerofill __DATA,__bss,_inode_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_human_output_opts,4,2
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
.zerofill __DATA,__bss,_print_author,1,0
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
.zerofill __DATA,__bss,_file_human_output_opts,4,2
# ----------------------
.zerofill __DATA,__bss,_line_length,8,3
# ----------------------
.zerofill __DATA,__bss,_qmark_funny_chars,1,0
# ----------------------
.zerofill __DATA,__bss,_color_ext_list,8,3
# ----------------------
.zerofill __DATA,__bss,_required_mon_width,8,3
# ----------------------
.zerofill __DATA,__bss,_abmon,732,4
# ----------------------
.zerofill __DATA,__bss,_numeric_ids,1,0
# ----------------------
.zerofill __DATA,__bss,_column_info,8,3
# ----------------------
.zerofill __DATA,__bss,_tabsize,8,3
# ----------------------
.zerofill __DATA,__bss,_max_idx,8,3
# ----------------------
.zerofill __DATA,__bss,_init_column_info.column_info_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_sorted_file_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_failed_strcoll,148,4
# ----------------------
.zerofill __DATA,__bss,_sort_reverse,1,0
# ----------------------
.zerofill __DATA,__bss,_file_has_acl_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_getfilecon_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_has_capability_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_print_dir.first,1,0
# ----------------------
.zerofill __DATA,__bss,_dirname_quoting_options,8,3
# ----------------------
.zerofill __DATA,__bss,_ignore_mode,4,2
# ----------------------
.zerofill __DATA,__bss,_hide_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_ignore_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_color_buf,8,3
# ----------------------
	.set	L0_0_set_83,LBB0_83-LJTI0_0
	.set	L0_0_set_34,LBB0_34-LJTI0_0
	.set	L0_0_set_63,LBB0_63-LJTI0_0
	.set	L0_0_set_65,LBB0_65-LJTI0_0
	.set	L0_0_set_66,LBB0_66-LJTI0_0
	.set	L0_0_set_67,LBB0_67-LJTI0_0
	.set	L0_0_set_68,LBB0_68-LJTI0_0
	.set	L0_0_set_70,LBB0_70-LJTI0_0
	.set	L0_0_set_71,LBB0_71-LJTI0_0
	.set	L0_0_set_73,LBB0_73-LJTI0_0
	.set	L0_0_set_75,LBB0_75-LJTI0_0
	.set	L0_0_set_76,LBB0_76-LJTI0_0
	.set	L0_0_set_77,LBB0_77-LJTI0_0
	.set	L0_0_set_78,LBB0_78-LJTI0_0
	.set	L0_0_set_79,LBB0_79-LJTI0_0
	.set	L0_0_set_80,LBB0_80-LJTI0_0
	.set	L0_0_set_81,LBB0_81-LJTI0_0
	.set	L0_0_set_82,LBB0_82-LJTI0_0
	.set	L0_0_set_106,LBB0_106-LJTI0_0
	.set	L0_0_set_37,LBB0_37-LJTI0_0
	.set	L0_0_set_38,LBB0_38-LJTI0_0
	.set	L0_0_set_40,LBB0_40-LJTI0_0
	.set	L0_0_set_41,LBB0_41-LJTI0_0
	.set	L0_0_set_42,LBB0_42-LJTI0_0
	.set	L0_0_set_46,LBB0_46-LJTI0_0
	.set	L0_0_set_47,LBB0_47-LJTI0_0
	.set	L0_0_set_49,LBB0_49-LJTI0_0
	.set	L0_0_set_28,LBB0_28-LJTI0_0
	.set	L0_0_set_52,LBB0_52-LJTI0_0
	.set	L0_0_set_50,LBB0_50-LJTI0_0
	.set	L0_0_set_51,LBB0_51-LJTI0_0
	.set	L0_0_set_69,LBB0_69-LJTI0_0
	.set	L0_0_set_53,LBB0_53-LJTI0_0
	.set	L0_0_set_54,LBB0_54-LJTI0_0
	.set	L0_0_set_55,LBB0_55-LJTI0_0
	.set	L0_0_set_56,LBB0_56-LJTI0_0
	.set	L0_0_set_57,LBB0_57-LJTI0_0
	.set	L0_0_set_59,LBB0_59-LJTI0_0
	.set	L0_0_set_60,LBB0_60-LJTI0_0
	.set	L0_0_set_61,LBB0_61-LJTI0_0
	.set	L0_0_set_62,LBB0_62-LJTI0_0
	.set	L0_0_set_85,LBB0_85-LJTI0_0
	.set	L0_0_set_103,LBB0_103-LJTI0_0
	.set	L0_0_set_92,LBB0_92-LJTI0_0
	.set	L0_0_set_72,LBB0_72-LJTI0_0
	.set	L0_0_set_45,LBB0_45-LJTI0_0
	.set	L0_0_set_90,LBB0_90-LJTI0_0
	.set	L0_0_set_91,LBB0_91-LJTI0_0
	.set	L0_0_set_88,LBB0_88-LJTI0_0
	.set	L0_0_set_86,LBB0_86-LJTI0_0
	.set	L0_0_set_99,LBB0_99-LJTI0_0
	.set	L0_0_set_100,LBB0_100-LJTI0_0
	.set	L0_0_set_102,LBB0_102-LJTI0_0
	.set	L0_0_set_105,LBB0_105-LJTI0_0
	.set	L0_0_set_87,LBB0_87-LJTI0_0
	.set	L0_0_set_89,LBB0_89-LJTI0_0
	.set	L0_0_set_101,LBB0_101-LJTI0_0
	.set	L0_1_set_148,LBB0_148-LJTI0_1
	.set	L0_1_set_150,LBB0_150-LJTI0_1
	.set	L0_1_set_151,LBB0_151-LJTI0_1
	.set	L0_1_set_152,LBB0_152-LJTI0_1
	.set	L0_2_set_178,LBB0_178-LJTI0_2
	.set	L0_2_set_184,LBB0_184-LJTI0_2
	.set	L0_2_set_186,LBB0_186-LJTI0_2
	.set	L0_2_set_191,LBB0_191-LJTI0_2
	.set	L0_2_set_193,LBB0_193-LJTI0_2
	.set	L0_2_set_194,LBB0_194-LJTI0_2
	.set	L9_0_set_2,LBB9_2-LJTI9_0
	.set	L9_0_set_9,LBB9_9-LJTI9_0
	.set	L9_0_set_15,LBB9_15-LJTI9_0
	.set	L9_0_set_24,LBB9_24-LJTI9_0
	.set	L9_0_set_34,LBB9_34-LJTI9_0
	.set	L17_0_set_10,LBB17_10-LJTI17_0
	.set	L17_0_set_12,LBB17_12-LJTI17_0
	.set	L77_0_set_3,LBB77_3-LJTI77_0
	.set	L77_0_set_14,LBB77_14-LJTI77_0
	.set	L77_0_set_42,LBB77_42-LJTI77_0
	.set	L77_0_set_46,LBB77_46-LJTI77_0
	.set	L77_0_set_52,LBB77_52-LJTI77_0
	.set	L77_1_set_36,LBB77_36-LJTI77_1
	.set	L77_1_set_27,LBB77_27-LJTI77_1
	.set	L77_1_set_37,LBB77_37-LJTI77_1
	.set	L77_1_set_38,LBB77_38-LJTI77_1
	.set	L77_1_set_39,LBB77_39-LJTI77_1
	.set	L77_1_set_21,LBB77_21-LJTI77_1
	.set	L77_2_set_40,LBB77_40-LJTI77_2
	.set	L77_2_set_27,LBB77_27-LJTI77_2
	.set	L77_2_set_41,LBB77_41-LJTI77_2
	.set	L77_2_set_33,LBB77_33-LJTI77_2
	.set	L77_2_set_34,LBB77_34-LJTI77_2
	.set	L77_2_set_35,LBB77_35-LJTI77_2

.subsections_via_symbols
