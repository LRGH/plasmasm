	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              ## imm = 0x188
Ltmp6:
	.cfi_offset %rbx, -56
Ltmp7:
	.cfi_offset %r12, -48
Ltmp8:
	.cfi_offset %r13, -40
Ltmp9:
	.cfi_offset %r14, -32
Ltmp10:
	.cfi_offset %r15, -24
	movq	%rsi, -400(%rbp)        ## 8-byte Spill
	movl	%edi, %r15d
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	(%rsi), %rdi
	callq	_set_program_name
	leaq	L_.str(%rip), %rsi
	xorl	%edi, %edi
	callq	_setlocale
	movq	_exit_failure@GOTPCREL(%rip), %rax
	movl	$2, (%rax)
	movq	_close_stdout@GOTPCREL(%rip), %rdi
	callq	_atexit
	movl	$0, _exit_status(%rip)
	movb	$1, _print_dir_name(%rip)
	movq	$0, _pending_dirs(%rip)
	movabsq	$-9223372036854775808, %rax ## imm = 0x8000000000000000
	movq	%rax, _current_time(%rip)
	movq	$-1, _current_time+8(%rip)
	movb	$0, _qmark_funny_chars(%rip)
	movq	_ls_mode@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	LBB0_6
## BB#1:
	cmpl	$3, %eax
	jne	LBB0_2
## BB#5:
	movl	$0, _format(%rip)
	jmp	LBB0_4
LBB0_6:
	movl	$1, %edi
	callq	_isatty
	testl	%eax, %eax
	je	LBB0_9
## BB#7:
	movl	$2, _format(%rip)
	movb	$1, _qmark_funny_chars(%rip)
	jmp	LBB0_10
LBB0_2:
	cmpl	$2, %eax
	jne	LBB0_8
## BB#3:
	movl	$2, _format(%rip)
LBB0_4:
	xorl	%edi, %edi
	movl	$5, %esi
	callq	_set_quoting_style
LBB0_10:
	movl	$0, _time_type(%rip)
	movl	$0, _sort_type(%rip)
	movb	$0, _sort_reverse(%rip)
	movb	$0, _numeric_ids(%rip)
	movb	$0, _print_block_size(%rip)
	movl	$0, _indicator_style(%rip)
	movb	$0, _print_inode(%rip)
	movl	$1, _dereference(%rip)
	movb	$0, _recursive(%rip)
	movb	$0, _immediate_dirs(%rip)
	movl	$0, _ignore_mode(%rip)
	movq	$0, _ignore_patterns(%rip)
	movq	$0, _hide_patterns(%rip)
	movb	$0, _print_scontext(%rip)
	leaq	L_.str214(%rip), %rdi
	callq	_getenv
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	LBB0_14
## BB#11:
	movq	_quoting_style_args@GOTPCREL(%rip), %rsi
	movq	_quoting_style_vals@GOTPCREL(%rip), %r14
	movl	$4, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_argmatch
	testl	%eax, %eax
	js	LBB0_13
## BB#12:
	cltq
	movl	(%r14,%rax,4), %esi
	xorl	%edi, %edi
	callq	_set_quoting_style
	jmp	LBB0_14
LBB0_13:
	movq	%rbx, %rdi
	callq	_quotearg
	movq	%rax, %rcx
	leaq	L_.str215(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB0_14:                                ## %getenv_quoting_style.exit.i
	movq	$80, _line_length(%rip)
	leaq	L_.str115(%rip), %rdi
	callq	_getenv
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	LBB0_20
## BB#15:
	cmpb	$0, (%rbx)
	je	LBB0_20
## BB#16:
	leaq	-328(%rbp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	_xstrtoul
	testl	%eax, %eax
	jne	LBB0_19
## BB#17:
	movq	-328(%rbp), %rax
	testq	%rax, %rax
	je	LBB0_19
## BB#18:
	movq	%rax, _line_length(%rip)
	jmp	LBB0_20
LBB0_19:
	movq	%rbx, %rdi
	callq	_quotearg
	movq	%rax, %rcx
	leaq	L_.str116(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB0_20:
	movl	%r15d, -392(%rbp)       ## 4-byte Spill
	leaq	-336(%rbp), %rdx
	movl	$1, %edi
	movl	$1074295912, %esi       ## imm = 0x40087468
	xorl	%eax, %eax
	callq	_ioctl
	cmpl	$-1, %eax
	je	LBB0_23
## BB#21:
	movzwl	-334(%rbp), %eax
	testq	%rax, %rax
	je	LBB0_23
## BB#22:
	movq	%rax, _line_length(%rip)
LBB0_23:
	leaq	L_.str117(%rip), %rdi
	callq	_getenv
	movq	%rax, %rbx
	movq	$8, _tabsize(%rip)
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	movl	$0, %r13d
	movl	$0, %r14d
	je	LBB0_28
## BB#24:
	leaq	-344(%rbp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	_xstrtoul
	testl	%eax, %eax
	je	LBB0_25
## BB#26:
	movq	%rbx, %rdi
	callq	_quotearg
	movq	%rax, %rcx
	leaq	L_.str118(%rip), %rdx
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	jmp	LBB0_27
LBB0_25:
	movq	-344(%rbp), %rax
	movq	%rax, _tabsize(%rip)
	xorl	%r12d, %r12d
LBB0_27:                                ## %.preheader30.i
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	LBB0_28
LBB0_9:
	movl	$1, _format(%rip)
	movb	$0, _qmark_funny_chars(%rip)
	jmp	LBB0_10
LBB0_58:                                ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, %r13b
	movb	%r15b, %r12b
	.align	4, 0x90
LBB0_28:                                ## %.preheader30.i
                                        ## =>This Inner Loop Header: Depth=1
	movb	%r12b, %r15b
	movl	$-1, -348(%rbp)
	leaq	L_.str119(%rip), %rdx
	leaq	_long_options(%rip), %rcx
	leaq	-348(%rbp), %r8
	movl	-392(%rbp), %edi        ## 4-byte Reload
	movq	-400(%rbp), %rsi        ## 8-byte Reload
	callq	_rpl_getopt_long
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	cmpl	$-2, %eax
	jle	LBB0_29
## BB#32:                               ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	cmpl	$48, %eax
	jle	LBB0_33
## BB#35:                               ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	leal	-49(%rax), %eax
	cmpl	$94, %eax
	ja	LBB0_34
## BB#36:                               ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, %r12b
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_83:                                ##   in Loop: Header=BB0_28 Depth=1
	cmpl	$0, _format(%rip)
	movb	%r15b, %r12b
	je	LBB0_28
## BB#84:                               ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, _format(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_63:                                ##   in Loop: Header=BB0_28 Depth=1
	cmpl	$0, _ignore_mode(%rip)
	movb	%r15b, %r12b
	jne	LBB0_28
## BB#64:                               ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, _ignore_mode(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_65:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$16, %edi
	callq	_xmalloc
	leaq	L_.str121(%rip), %rcx
	movq	%rcx, (%rax)
	movq	_ignore_patterns(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, _ignore_patterns(%rip)
	movl	$16, %edi
	callq	_xmalloc
	leaq	L_.str122(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	LBB0_74
LBB0_66:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$2, _format(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_67:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _dired(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_68:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$3, _indicator_style(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_71:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$3, _dereference(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_73:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movl	$16, %edi
	callq	_xmalloc
	movq	%rbx, (%rax)
LBB0_74:                                ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	movq	_ignore_patterns(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, _ignore_patterns(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_75:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$5, _dereference(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_76:                                ##   in Loop: Header=BB0_28 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	LBB0_39
LBB0_77:                                ##   in Loop: Header=BB0_28 Depth=1
	xorl	%edi, %edi
	movl	$3, %esi
	jmp	LBB0_39
LBB0_78:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _recursive(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_79:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$2, _sort_type(%rip)
	jmp	LBB0_58
LBB0_80:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$2, (%rsp)
	leaq	L_.str(%rip), %r8
	leaq	L_.str123(%rip), %r9
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	$-1, %rcx
	callq	_xnumtoumax
	movq	%rax, _tabsize(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_81:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$-1, _sort_type(%rip)
	jmp	LBB0_58
LBB0_82:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, _sort_type(%rip)
	jmp	LBB0_58
LBB0_106:                               ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _print_scontext(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_37:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$2, _ignore_mode(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_38:                                ##   in Loop: Header=BB0_28 Depth=1
	xorl	%edi, %edi
	movl	$5, %esi
	jmp	LBB0_39
LBB0_40:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, _time_type(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_41:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _immediate_dirs(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_42:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$2, _ignore_mode(%rip)
	movl	$-1, _sort_type(%rip)
	cmpl	$0, _format(%rip)
	jne	LBB0_44
## BB#43:                               ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, %ebx
	movl	$1, %edi
	callq	_isatty
	cmpl	$1, %eax
	sbbl	$-1, %ebx
	movl	%ebx, _format(%rip)
LBB0_44:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$0, _print_block_size(%rip)
	movb	$0, _print_with_color(%rip)
	jmp	LBB0_58
LBB0_46:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$0, _format(%rip)
	movb	$1, _print_owner(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_47:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$176, _human_output_opts(%rip)
	movl	$176, _file_human_output_opts(%rip)
	jmp	LBB0_48
LBB0_49:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _print_inode(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_50:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$4, _format(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_51:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _numeric_ids(%rip)
LBB0_52:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$0, _format(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_69:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$0, _format(%rip)
LBB0_70:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _print_group(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_53:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, _indicator_style(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_54:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _qmark_funny_chars(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_55:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _sort_reverse(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_56:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _print_block_size(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_57:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$4, _sort_type(%rip)
	jmp	LBB0_58
LBB0_59:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$2, _time_type(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_60:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$3, _sort_type(%rip)
	jmp	LBB0_58
LBB0_61:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$2, (%rsp)
	leaq	L_.str(%rip), %r8
	leaq	L_.str120(%rip), %r9
	xorl	%esi, %esi
	movl	$1, %edx
	movq	$-1, %rcx
	callq	_xnumtoumax
	movq	%rax, _line_length(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_62:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$3, _format(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_85:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _print_author(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_103:                               ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	leaq	_human_output_opts(%rip), %rsi
	leaq	_output_block_size(%rip), %rdx
	callq	_human_options
	testl	%eax, %eax
	jne	LBB0_406
## BB#104:                              ##   in Loop: Header=BB0_28 Depth=1
	movl	_human_output_opts(%rip), %eax
	movl	%eax, _file_human_output_opts(%rip)
	movq	_output_block_size(%rip), %rax
	movq	%rax, _file_output_block_size(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_92:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	LBB0_96
## BB#93:                               ##   in Loop: Header=BB0_28 Depth=1
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	leaq	L_.str128(%rip), %rdi
	leaq	_color_args(%rip), %rdx
	leaq	_color_types(%rip), %rbx
	movl	$4, %r8d
	movq	%rbx, %rcx
	callq	___xargmatch_internal
	movl	(%rbx,%rax,4), %eax
	cmpl	$1, %eax
	jne	LBB0_94
LBB0_96:                                ## %.thread18.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _print_with_color(%rip)
LBB0_98:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	$0, _tabsize(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_72:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$4, _dereference(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_45:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$2, _indicator_style(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_90:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	leaq	L_.str126(%rip), %rdi
	leaq	_format_args(%rip), %rdx
	leaq	_format_types(%rip), %rbx
	movl	$4, %r8d
	movq	%rbx, %rcx
	callq	___xargmatch_internal
	movl	(%rbx,%rax,4), %eax
	movl	%eax, _format(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_91:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$0, _format(%rip)
	leaq	L_.str127(%rip), %r14
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_88:                                ##   in Loop: Header=BB0_28 Depth=1
	movb	$1, _directories_first(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_86:                                ##   in Loop: Header=BB0_28 Depth=1
	movl	$16, %edi
	callq	_xmalloc
	movq	_rpl_optarg@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	_hide_patterns(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, _hide_patterns(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_99:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	leaq	L_.str129(%rip), %rdi
	leaq	_indicator_style_args(%rip), %rdx
	leaq	_indicator_style_types(%rip), %rbx
	movl	$4, %r8d
	movq	%rbx, %rcx
	callq	___xargmatch_internal
	movl	(%rbx,%rax,4), %eax
	movl	%eax, _indicator_style(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_100:                               ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	leaq	L_.str130(%rip), %rdi
	movq	_quoting_style_args@GOTPCREL(%rip), %rdx
	movq	_quoting_style_vals@GOTPCREL(%rip), %rbx
	movl	$4, %r8d
	movq	%rbx, %rcx
	callq	___xargmatch_internal
	movl	(%rbx,%rax,4), %esi
	xorl	%edi, %edi
LBB0_39:                                ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	callq	_set_quoting_style
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_102:                               ##   in Loop: Header=BB0_28 Depth=1
	movb	$0, _qmark_funny_chars(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_105:                               ##   in Loop: Header=BB0_28 Depth=1
	movl	$144, _human_output_opts(%rip)
	movl	$144, _file_human_output_opts(%rip)
LBB0_48:                                ## %.preheader30.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	movq	$1, _output_block_size(%rip)
	movq	$1, _file_output_block_size(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_87:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	leaq	L_.str124(%rip), %rdi
	leaq	_sort_args(%rip), %rdx
	leaq	_sort_types(%rip), %rbx
	movl	$4, %r8d
	movq	%rbx, %rcx
	callq	___xargmatch_internal
	movl	(%rbx,%rax,4), %eax
	movl	%eax, _sort_type(%rip)
	jmp	LBB0_58
LBB0_89:                                ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	leaq	L_.str125(%rip), %rdi
	leaq	_time_args(%rip), %rdx
	leaq	_time_types(%rip), %rbx
	movl	$4, %r8d
	movq	%rbx, %rcx
	callq	___xargmatch_internal
	movl	(%rbx,%rax,4), %eax
	movl	%eax, _time_type(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_101:                               ##   in Loop: Header=BB0_28 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_94:                                ##   in Loop: Header=BB0_28 Depth=1
	cmpl	$2, %eax
	jne	LBB0_95
## BB#97:                               ##   in Loop: Header=BB0_28 Depth=1
	movl	$1, %edi
	callq	_isatty
	testl	%eax, %eax
	setne	_print_with_color(%rip)
	movb	%r15b, %r12b
	je	LBB0_28
	jmp	LBB0_98
LBB0_95:                                ## %.thread19.i
                                        ##   in Loop: Header=BB0_28 Depth=1
	movb	$0, _print_with_color(%rip)
	movb	%r15b, %r12b
	jmp	LBB0_28
LBB0_29:                                ## %.preheader30.i
	cmpl	$-131, %eax
	jne	LBB0_30
## BB#107:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	_ls_mode@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	LBB0_109
## BB#108:
	leaq	L_.str33(%rip), %rsi
	jmp	LBB0_110
LBB0_33:                                ## %.preheader30.i
	cmpl	$-1, %eax
	jne	LBB0_34
## BB#111:
	cmpq	$0, _output_block_size(%rip)
	jne	LBB0_117
## BB#112:
	leaq	L_.str133(%rip), %rdi
	callq	_getenv
	movq	%rax, %rbx
	leaq	_human_output_opts(%rip), %rsi
	leaq	_output_block_size(%rip), %rdx
	movq	%rbx, %rdi
	callq	_human_options
	testq	%rbx, %rbx
	jne	LBB0_114
## BB#113:
	leaq	L_.str134(%rip), %rdi
	callq	_getenv
	testq	%rax, %rax
	je	LBB0_115
LBB0_114:
	movl	_human_output_opts(%rip), %eax
	movl	%eax, _file_human_output_opts(%rip)
	movq	_output_block_size(%rip), %rax
	movq	%rax, _file_output_block_size(%rip)
LBB0_115:
	testb	%r15b, %r15b
	je	LBB0_117
## BB#116:
	movl	$0, _human_output_opts(%rip)
	movq	$1024, _output_block_size(%rip) ## imm = 0x400
LBB0_117:
	movq	_line_length(%rip), %rax
	movl	$1, %edx
	cmpq	$3, %rax
	jb	LBB0_119
## BB#118:
	movabsq	$-6148914691236517205, %rcx ## imm = 0xAAAAAAAAAAAAAAAB
	mulq	%rcx
	shrq	%rdx
LBB0_119:
	movq	%rdx, _max_idx(%rip)
	xorl	%edi, %edi
	callq	_clone_quoting_options
	movq	%rax, _filename_quoting_options(%rip)
	movq	%rax, %rdi
	callq	_get_quoting_style
	cmpl	$5, %eax
	jne	LBB0_121
## BB#120:
	movq	_filename_quoting_options(%rip), %rdi
	movl	$32, %esi
	movl	$1, %edx
	callq	_set_char_quoting
LBB0_121:
	movl	_indicator_style(%rip), %ecx
	cmpl	$2, %ecx
	jb	LBB0_125
## BB#122:
	addl	$-2, %ecx
	cmpl	$5, %ecx
	je	LBB0_125
## BB#123:                              ## %.lr.ph29.i
	leaq	L_.str135(%rip), %rdx
	movb	(%rcx,%rdx), %al
	leaq	1(%rcx,%rdx), %rbx
	.align	4, 0x90
LBB0_124:                               ## =>This Inner Loop Header: Depth=1
	movq	_filename_quoting_options(%rip), %rdi
	movsbl	%al, %esi
	movl	$1, %edx
	callq	_set_char_quoting
	movb	(%rbx), %al
	incq	%rbx
	testb	%al, %al
	jne	LBB0_124
LBB0_125:                               ## %.loopexit26.i
	xorl	%edi, %edi
	callq	_clone_quoting_options
	movq	%rax, _dirname_quoting_options(%rip)
	movl	$58, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_set_char_quoting
	movb	_dired(%rip), %cl
	movl	_format(%rip), %eax
	testb	%cl, %cl
	je	LBB0_128
## BB#126:                              ## %.loopexit26.i
	testl	%eax, %eax
	je	LBB0_128
## BB#127:
	movb	$0, _dired(%rip)
LBB0_128:
	movl	_time_type(%rip), %ecx
	decl	%ecx
	cmpl	$1, %ecx
	ja	LBB0_132
## BB#129:
	testb	%r13b, %r13b
	jne	LBB0_132
## BB#130:
	testl	%eax, %eax
	je	LBB0_132
## BB#131:
	movl	$4, _sort_type(%rip)
LBB0_132:                               ## %thread-pre-split.i
	testl	%eax, %eax
	jne	LBB0_163
## BB#133:
	testq	%r14, %r14
	jne	LBB0_135
## BB#134:
	leaq	L_.str136(%rip), %rdi
	callq	_getenv
	testq	%rax, %rax
	leaq	L_.str137(%rip), %r14
	cmovneq	%rax, %r14
LBB0_135:                               ## %.preheader22.i
	leaq	_decode_switches.posix_prefix(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB0_139
## BB#136:
	leaq	_decode_switches.posix_prefix(%rip), %r12
	.align	4, 0x90
LBB0_138:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	$5, %edi
	callq	_hard_locale
	testb	%al, %al
	je	LBB0_163
## BB#137:                              ##   in Loop: Header=BB0_138 Depth=1
	addq	$6, %r14
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_strncmp
	testl	%eax, %eax
	je	LBB0_138
LBB0_139:                               ## %._crit_edge.i
	movzbl	(%r14), %eax
	cmpl	$43, %eax
	jne	LBB0_145
## BB#140:
	incq	%r14
	movl	$10, %esi
	movq	%r14, %rdi
	callq	_strchr
	movq	%rax, %r13
	testq	%r13, %r13
	movq	%r14, %r12
	je	LBB0_144
## BB#141:
	leaq	1(%r13), %r12
	movl	$10, %esi
	movq	%r12, %rdi
	callq	_strchr
	testq	%rax, %rax
	je	LBB0_143
## BB#142:
	movq	%r14, %rdi
	callq	_quote
	movq	%rax, %rcx
	leaq	L_.str138(%rip), %rdx
	movl	$2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB0_143:
	movb	$0, (%r13)
LBB0_144:
	movq	%r14, _long_time_format(%rip)
	movq	%r12, _long_time_format+8(%rip)
	jmp	LBB0_153
LBB0_30:                                ## %.preheader30.i
	cmpl	$-130, %eax
	jne	LBB0_34
## BB#31:
	xorl	%edi, %edi
	callq	_usage
LBB0_109:
	cmpl	$2, %eax
	leaq	L_.str34(%rip), %rax
	leaq	L_.str35(%rip), %rsi
	cmoveq	%rax, %rsi
LBB0_110:
	movq	_Version@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$0, (%rsp)
	leaq	L_.str46(%rip), %rdx
	leaq	L_.str131(%rip), %r8
	leaq	L_.str132(%rip), %r9
	xorl	%eax, %eax
	callq	_version_etc
	xorl	%edi, %edi
	callq	_exit
LBB0_34:
	movl	$2, %edi
	callq	_usage
LBB0_145:
	leaq	_time_style_args(%rip), %rsi
	leaq	_time_style_types(%rip), %rdx
	movl	$4, %ecx
	movq	%r14, %rdi
	callq	_argmatch
	testq	%rax, %rax
	js	LBB0_407
## BB#146:
	cmpq	$3, %rax
	ja	LBB0_153
## BB#147:
	leaq	LJTI0_1(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_148:
	leaq	L_.str143(%rip), %rax
	jmp	LBB0_149
LBB0_150:
	leaq	L_.str144(%rip), %rax
LBB0_149:                               ## %.preheader.i
	movd	%rax, %xmm0
	movlhps	%xmm0, %xmm0            ## xmm0 = xmm0[0,0]
	movaps	%xmm0, _long_time_format(%rip)
	jmp	LBB0_153
LBB0_151:
	leaq	L_.str145(%rip), %rax
	movq	%rax, _long_time_format(%rip)
	leaq	L_.str146(%rip), %rax
	movq	%rax, _long_time_format+8(%rip)
	jmp	LBB0_153
LBB0_152:
	movl	$5, %edi
	callq	_hard_locale
LBB0_153:                               ## %.preheader.i
	movq	_long_time_format(%rip), %rdi
	leaq	L_.str62(%rip), %rsi
	callq	_strstr
	testq	%rax, %rax
	jne	LBB0_155
## BB#154:
	movq	_long_time_format+8(%rip), %rdi
	leaq	L_.str62(%rip), %rsi
	callq	_strstr
	testq	%rax, %rax
	je	LBB0_163
LBB0_155:
	movq	$5, _required_mon_width(%rip)
	movl	$5, %r14d
	leaq	_abmon(%rip), %r15
	leaq	-320(%rbp), %r12
LBB0_156:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_157 Depth 2
	movq	$0, _required_mon_width(%rip)
	movq	%r15, %r13
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB0_157:                               ##   Parent Loop BB0_156 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r14, -320(%rbp)
	leal	33(%rbx), %edi
	callq	_nl_langinfo
	movl	$61, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	_mbsalign
	cmpq	$61, %rax
	jae	LBB0_158
## BB#159:                              ##   in Loop: Header=BB0_157 Depth=2
	movq	_required_mon_width(%rip), %rcx
	movq	-320(%rbp), %rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	movq	%rax, _required_mon_width(%rip)
	incl	%ebx
	addq	$61, %r13
	cmpl	$12, %ebx
	jl	LBB0_157
## BB#160:                              ##   in Loop: Header=BB0_156 Depth=1
	cmpq	%rax, %r14
	movq	%rax, %r14
	ja	LBB0_156
## BB#161:                              ## %abmon_init.exit.i
	testq	%rax, %rax
	jne	LBB0_163
	jmp	LBB0_162
LBB0_158:                               ## %abmon_init.exit.thread.i
	movq	$0, _required_mon_width(%rip)
LBB0_162:
	leaq	L_.str147(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB0_163:                               ## %decode_switches.exit
	movq	_rpl_optind@GOTPCREL(%rip), %rax
	movl	(%rax), %r15d
	cmpb	$0, _print_with_color(%rip)
	je	LBB0_231
## BB#164:
	leaq	L_.str83(%rip), %rdi
	callq	_getenv
	movq	%rax, -320(%rbp)
	testq	%rax, %rax
	je	LBB0_166
## BB#165:
	cmpb	$0, (%rax)
	je	LBB0_166
## BB#175:
	movb	$0, -334(%rbp)
	movw	$16191, -336(%rbp)      ## imm = 0x3F3F
	movq	%rax, %rdi
	callq	_xstrdup
	movq	%rax, _color_buf(%rip)
	movq	%rax, -328(%rbp)
	movl	$1, %eax
	leaq	LJTI0_2(%rip), %r12
	leaq	-336(%rbp), %r14
	xorl	%ecx, %ecx
	movq	%rcx, -408(%rbp)        ## 8-byte Spill
	jmp	LBB0_176
LBB0_166:
	leaq	L_.str84(%rip), %rdi
	callq	_getenv
	testq	%rax, %rax
	je	LBB0_168
## BB#167:
	cmpb	$0, (%rax)
	jne	LBB0_200
LBB0_168:
	leaq	L_.str113(%rip), %rdi
	callq	_getenv
	movq	%rax, %r12
	testq	%r12, %r12
	je	LBB0_174
## BB#169:
	cmpb	$0, (%r12)
	je	LBB0_174
## BB#170:
	leaq	_G_line(%rip), %rbx
	leaq	L_.str114(%rip), %r13
	leaq	_G_line(%rip), %r14
	.align	4, 0x90
LBB0_171:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB0_173
## BB#172:                              ##   in Loop: Header=BB0_171 Depth=1
	leaq	5(%rbx), %rsi
	movq	%r12, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB0_200
LBB0_173:                               ##   in Loop: Header=BB0_171 Depth=1
	movq	%rbx, %rdi
	callq	_strlen
	leaq	1(%rax,%rbx), %rbx
	movq	%rbx, %rax
	subq	%r14, %rax
	cmpq	$4607, %rax             ## imm = 0x11FF
	jb	LBB0_171
LBB0_174:                               ## %.loopexit.i
	movb	$0, _print_with_color(%rip)
	jmp	LBB0_200
LBB0_192:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	-328(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, %rdx
	leaq	16(%rdx), %rcx
	movq	%rax, 24(%rdx)
	xorl	%edx, %edx
	leaq	-328(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	callq	_get_funky_string
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,4), %eax
	.align	4, 0x90
LBB0_176:                               ## %.backedge.i
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_188 Depth 2
	decl	%eax
	cmpl	$5, %eax
	ja	LBB0_193
## BB#177:                              ## %.backedge.i
                                        ##   in Loop: Header=BB0_176 Depth=1
	movslq	(%r12,%rax,4), %rax
	addq	%r12, %rax
	jmpq	*%rax
LBB0_178:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	-320(%rbp), %rbx
	movb	(%rbx), %al
	movsbl	%al, %ecx
	cmpl	$42, %ecx
	je	LBB0_182
## BB#179:                              ##   in Loop: Header=BB0_176 Depth=1
	testl	%ecx, %ecx
	je	LBB0_197
## BB#180:                              ##   in Loop: Header=BB0_176 Depth=1
	incq	%rbx
	cmpl	$58, %ecx
	jne	LBB0_183
## BB#181:                              ##   in Loop: Header=BB0_176 Depth=1
	movq	%rbx, -320(%rbp)
	movl	$1, %eax
	jmp	LBB0_176
LBB0_184:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	-320(%rbp), %rdx
	movb	(%rdx), %cl
	movl	$6, %eax
	testb	%cl, %cl
	je	LBB0_176
## BB#185:                              ##   in Loop: Header=BB0_176 Depth=1
	incq	%rdx
	movq	%rdx, -320(%rbp)
	movb	%cl, -335(%rbp)
	movl	$3, %eax
	jmp	LBB0_176
LBB0_186:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	-320(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -320(%rbp)
	movzbl	(%rax), %eax
	cmpl	$61, %eax
	movl	$6, %eax
	movl	$0, %ebx
	leaq	_color_indicator(%rip), %r13
	jne	LBB0_176
	.align	4, 0x90
LBB0_188:                               ## %.preheader.i26
                                        ##   Parent Loop BB0_176 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	_indicator_name(%rip), %rax
	movq	(%rbx,%rax), %rsi
	movq	%r14, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB0_189
## BB#187:                              ##   in Loop: Header=BB0_188 Depth=2
	addq	$16, %r13
	addq	$8, %rbx
	cmpl	$192, %ebx
	jne	LBB0_188
	jmp	LBB0_190
LBB0_191:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	-320(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -320(%rbp)
	movl	$6, %eax
	movzbl	(%rcx), %ecx
	cmpl	$61, %ecx
	jne	LBB0_176
	jmp	LBB0_192
LBB0_182:                               ##   in Loop: Header=BB0_176 Depth=1
	movl	$40, %edi
	callq	_xmalloc
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movq	_color_ext_list(%rip), %rcx
	movq	%rcx, 32(%rax)
	movq	%rax, _color_ext_list(%rip)
	incq	%rbx
	movq	%rbx, -320(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$1, %edx
	leaq	-328(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movq	%rax, %rcx
	callq	_get_funky_string
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	imull	$2, %eax, %eax
	addl	$4, %eax
	jmp	LBB0_176
LBB0_189:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	-328(%rbp), %rax
	movq	%rax, 8(%r13)
	xorl	%edx, %edx
	leaq	-328(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movq	%r13, %rcx
	callq	_get_funky_string
	testb	%al, %al
	movl	$1, %eax
	jne	LBB0_176
LBB0_190:                               ## %.loopexit4.i
                                        ##   in Loop: Header=BB0_176 Depth=1
	movq	%r14, %rdi
	callq	_quotearg
	movq	%rax, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	L_.str86(%rip), %rdx
	callq	_error
	movl	$6, %eax
	jmp	LBB0_176
LBB0_183:                               ##   in Loop: Header=BB0_176 Depth=1
	movq	%rbx, -320(%rbp)
	movb	%al, -336(%rbp)
	movl	$2, %eax
	jmp	LBB0_176
LBB0_194:
	leaq	L_.str87(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	movq	_color_buf(%rip), %rdi
	callq	_free
	movq	_color_ext_list(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB0_196
	.align	4, 0x90
LBB0_195:                               ## %.lr.ph.i27
                                        ## =>This Inner Loop Header: Depth=1
	movq	32(%rdi), %rbx
	callq	_free
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	LBB0_195
LBB0_196:                               ## %._crit_edge.i28
	movb	$0, _print_with_color(%rip)
LBB0_197:                               ## %.thread2.i
	cmpq	$6, _color_indicator+112(%rip)
	jne	LBB0_200
## BB#198:
	movq	_color_indicator+120(%rip), %rdi
	leaq	L_.str88(%rip), %rsi
	movl	$6, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB0_200
## BB#199:
	movb	$1, _color_symlink_as_referent(%rip)
LBB0_200:                               ## %.loopexit78
	cmpb	$0, _print_with_color(%rip)
	je	LBB0_231
## BB#201:
	movq	_color_indicator+208(%rip), %rax
	testq	%rax, %rax
	je	LBB0_206
## BB#202:
	movq	_color_indicator+216(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB0_203
## BB#205:                              ## %is_colored.exit
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB0_220
	jmp	LBB0_206
LBB0_203:
	cmpq	$1, %rax
	jne	LBB0_220
## BB#204:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB0_220
LBB0_206:                               ## %is_colored.exit.thread66
	movq	_color_indicator+224(%rip), %rax
	testq	%rax, %rax
	je	LBB0_212
## BB#207:                              ## %is_colored.exit.thread66
	movq	_color_indicator+232(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB0_208
## BB#210:                              ## %is_colored.exit33
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB0_211
	jmp	LBB0_212
LBB0_208:                               ## %is_colored.exit.thread66
	cmpq	$1, %rax
	jne	LBB0_211
## BB#209:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB0_212
LBB0_211:                               ## %is_colored.exit33.thread
	movb	_color_symlink_as_referent(%rip), %al
	testb	%al, %al
	jne	LBB0_220
LBB0_212:                               ## %is_colored.exit33.thread67
	movq	_color_indicator+192(%rip), %rcx
	testq	%rcx, %rcx
	je	LBB0_221
## BB#213:                              ## %is_colored.exit33.thread67
	movq	_color_indicator+200(%rip), %rdi
	cmpq	$2, %rcx
	jne	LBB0_214
## BB#216:
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jmp	LBB0_217
LBB0_193:
	callq	_abort
LBB0_214:                               ## %is_colored.exit33.thread67
	movb	$1, %al
	cmpq	$1, %rcx
	jne	LBB0_218
## BB#215:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
LBB0_217:                               ## %is_colored.exit38
	setne	%al
LBB0_218:                               ## %is_colored.exit38
	testb	%al, %al
	je	LBB0_221
## BB#219:                              ## %is_colored.exit38
	movl	_format(%rip), %eax
	testl	%eax, %eax
	jne	LBB0_221
LBB0_220:                               ## %is_colored.exit.thread
	movb	$1, _check_symlink_color(%rip)
LBB0_221:                               ## %is_colored.exit38.thread
	movl	$1, %edi
	callq	_tcgetpgrp
	testl	%eax, %eax
	js	LBB0_231
## BB#222:
	movl	$0, _caught_signals(%rip)
	xorl	%ebx, %ebx
	leaq	_main.sig(%rip), %r12
	leaq	-368(%rbp), %r14
	.align	4, 0x90
LBB0_223:                               ## =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r12), %r13d
	xorl	%esi, %esi
	movl	%r13d, %edi
	movq	%r14, %rdx
	callq	_sigaction
	cmpq	$1, -368(%rbp)
	je	LBB0_225
## BB#224:                              ## %__sigbits.exit
                                        ##   in Loop: Header=BB0_223 Depth=1
	decl	%r13d
	movl	$1, %eax
	movb	%r13b, %cl
	shll	%cl, %eax
	orl	%eax, _caught_signals(%rip)
LBB0_225:                               ##   in Loop: Header=BB0_223 Depth=1
	addq	$4, %rbx
	cmpq	$44, %rbx
	jne	LBB0_223
## BB#226:
	movl	_caught_signals(%rip), %eax
	movl	%eax, -360(%rbp)
	movl	$2, -356(%rbp)
	movq	$-10, %rbx
	leaq	_sighandler(%rip), %r13
	leaq	-368(%rbp), %r14
	jmp	LBB0_227
	.align	4, 0x90
LBB0_230:                               ## %.__sigbits.exit39_crit_edge
                                        ##   in Loop: Header=BB0_227 Depth=1
	movl	_caught_signals(%rip), %eax
	addq	$4, %r12
	incq	%rbx
LBB0_227:                               ## %__sigbits.exit39
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%r12), %edi
	leal	-1(%rdi), %ecx
	btl	%ecx, %eax
	jae	LBB0_229
## BB#228:                              ##   in Loop: Header=BB0_227 Depth=1
	cmpl	$-10, %ebx
	movq	%r13, %rax
	leaq	_stophandler(%rip), %rcx
	cmoveq	%rcx, %rax
	movq	%rax, -368(%rbp)
	xorl	%edx, %edx
                                        ## kill: EDI<def> EDI<kill> RDI<kill>
	movq	%r14, %rsi
	callq	_sigaction
LBB0_229:                               ##   in Loop: Header=BB0_227 Depth=1
	testq	%rbx, %rbx
	jne	LBB0_230
LBB0_231:                               ## %.thread
	cmpl	$1, _dereference(%rip)
	movl	-392(%rbp), %r13d       ## 4-byte Reload
	jne	LBB0_237
## BB#232:
	movb	_immediate_dirs(%rip), %cl
	movl	$2, %eax
	testb	%cl, %cl
	jne	LBB0_236
## BB#233:
	cmpl	$3, _indicator_style(%rip)
	je	LBB0_236
## BB#234:
	movl	$2, %eax
	cmpl	$0, _format(%rip)
	je	LBB0_236
## BB#235:                              ## %select.mid
	movl	$4, %eax
LBB0_236:
	movl	%eax, _dereference(%rip)
LBB0_237:
	movzbl	_recursive(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_240
## BB#238:
	leaq	_dev_ino_hash(%rip), %rdx
	leaq	_dev_ino_compare(%rip), %rcx
	leaq	_dev_ino_free(%rip), %r8
	movl	$30, %edi
	xorl	%esi, %esi
	callq	_hash_initialize
	movq	%rax, _active_dir_set(%rip)
	testq	%rax, %rax
	je	LBB0_408
## BB#239:
	leaq	_dev_ino_obstack(%rip), %rdi
	movq	_malloc@GOTPCREL(%rip), %rcx
	movq	_free@GOTPCREL(%rip), %r8
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	__obstack_begin
LBB0_240:
	movslq	%r15d, %r12
	cmpl	$0, _format(%rip)
	je	LBB0_243
## BB#241:                              ## %switch.early.test
	movl	_sort_type(%rip), %eax
	cmpl	$2, %eax
	je	LBB0_243
## BB#242:                              ## %switch.early.test
	cmpl	$4, %eax
	jne	LBB0_244
LBB0_243:                               ## %.thread69
	movb	$1, _format_needs_stat(%rip)
	xorl	%eax, %eax
LBB0_248:
	andb	$1, %al
	movb	%al, _format_needs_type(%rip)
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_250
## BB#249:
	leaq	_dired_obstack(%rip), %rdi
	movq	_malloc@GOTPCREL(%rip), %rbx
	movq	_free@GOTPCREL(%rip), %r14
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	__obstack_begin
	leaq	_subdired_obstack(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	__obstack_begin
LBB0_250:                               ## %clear_files.exit
	movq	$100, _cwd_n_alloc(%rip)
	movl	$19200, %edi            ## imm = 0x4B00
	callq	_xmalloc
	movq	%rax, _cwd_file(%rip)
	movq	$0, _cwd_n_used(%rip)
	movb	$0, _any_has_acl(%rip)
	movl	$0, _inode_number_width(%rip)
	movl	$0, _block_size_width(%rip)
	movl	$0, _nlink_width(%rip)
	movl	$0, _owner_width(%rip)
	movl	$0, _group_width(%rip)
	movl	$0, _author_width(%rip)
	movl	$0, _scontext_width(%rip)
	movl	$0, _major_device_number_width(%rip)
	movl	$0, _minor_device_number_width(%rip)
	movl	$0, _file_size_width(%rip)
	movl	%r13d, %r14d
	subl	%r15d, %r14d
	testl	%r14d, %r14d
	jle	LBB0_253
## BB#251:                              ## %.preheader
	movq	-400(%rbp), %rax        ## 8-byte Reload
	leaq	(%rax,%r12,8), %rbx
	leaq	L_.str(%rip), %r12
	.align	4, 0x90
LBB0_252:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	_gobble_file
	addq	$8, %rbx
	incl	%r15d
	cmpl	%r13d, %r15d
	jl	LBB0_252
	jmp	LBB0_256
LBB0_253:
	movzbl	_immediate_dirs(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_255
## BB#254:
	leaq	L_.str1(%rip), %rdi
	leaq	L_.str(%rip), %rcx
	movl	$3, %esi
	movl	$1, %edx
	callq	_gobble_file
	jmp	LBB0_256
LBB0_255:
	movl	$32, %edi
	callq	_xmalloc
	movq	%rax, %rbx
	movq	$0, 8(%rbx)
	leaq	L_.str1(%rip), %rdi
	callq	_xstrdup
	movq	%rax, (%rbx)
	movb	$1, 16(%rbx)
	movq	_pending_dirs(%rip), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, _pending_dirs(%rip)
LBB0_256:                               ## %.loopexit
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB0_264
## BB#257:
	callq	_sort_files
	movb	_immediate_dirs(%rip), %al
	testb	%al, %al
	jne	LBB0_259
## BB#258:
	xorl	%edi, %edi
	movl	$1, %esi
	callq	_extract_dirs_from_files
LBB0_259:
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB0_264
## BB#260:
	callq	_print_current_files
	cmpq	$0, _pending_dirs(%rip)
	je	LBB0_374
## BB#261:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB0_263
## BB#262:                              ## %._crit_edge.i42
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	incq	_dired_pos(%rip)
	jmp	LBB0_268
LBB0_264:                               ## %.thread71
	movq	_pending_dirs(%rip), %rbx
	cmpl	$1, %r14d
	jg	LBB0_269
## BB#265:                              ## %.thread71
	testq	%rbx, %rbx
	je	LBB0_269
## BB#266:
	cmpq	$0, 24(%rbx)
	jne	LBB0_268
## BB#267:
	movb	$0, _print_dir_name(%rip)
	jmp	LBB0_268
LBB0_244:
	movb	_print_block_size(%rip), %al
	orb	_print_scontext(%rip), %al
	andb	$1, %al
	movb	%al, _format_needs_stat(%rip)
	je	LBB0_246
## BB#245:
	xorl	%eax, %eax
	jmp	LBB0_248
LBB0_263:
	movl	$10, %edi
	callq	___swbuf
	incq	_dired_pos(%rip)
	jmp	LBB0_268
LBB0_246:
	movb	$1, %al
	movb	_recursive(%rip), %cl
	testb	%cl, %cl
	jne	LBB0_248
## BB#247:
	cmpb	$0, _print_with_color(%rip)
	setne	%cl
	cmpl	$0, _indicator_style(%rip)
	setne	%al
	orb	%cl, %al
	orb	_directories_first(%rip), %al
	jmp	LBB0_248
LBB0_8:
	callq	_abort
LBB0_406:
	movl	-348(%rbp), %ecx
	movq	(%rbx), %rbx
	leaq	_long_options(%rip), %r8
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	movq	%r8, %rcx
	movq	%rbx, %r8
	callq	_xstrtol_fatal
LBB0_407:
	leaq	L_.str139(%rip), %rcx
	movq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_argmatch_invalid
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	leaq	L_.str140(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_fputs
	movq	(%rbx), %rcx
	leaq	L_.str141(%rip), %r14
	leaq	L_.str127(%rip), %rdx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r14, %rsi
	callq	_fprintf
	movq	(%rbx), %rcx
	leaq	L_.str148(%rip), %rdx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r14, %rsi
	callq	_fprintf
	movq	(%rbx), %rcx
	leaq	L_.str149(%rip), %rdx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r14, %rsi
	callq	_fprintf
	movq	(%rbx), %rcx
	leaq	L_.str137(%rip), %rdx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r14, %rsi
	callq	_fprintf
	movq	(%rbx), %rax
	leaq	L_.str142(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_fputs
	movl	$2, %edi
	callq	_usage
LBB0_268:                               ## %thread-pre-split
	movq	_pending_dirs(%rip), %rbx
LBB0_269:
	testq	%rbx, %rbx
	je	LBB0_374
## BB#270:
	movq	24(%rbx), %rax
	movq	%rax, _pending_dirs(%rip)
	movq	_active_dir_set(%rip), %rdi
	movq	(%rbx), %r12
	testq	%rdi, %rdi
	je	LBB0_278
## BB#271:
	testq	%r12, %r12
	jne	LBB0_278
## BB#272:
	movq	_dev_ino_obstack+24(%rip), %rax
	movq	%rax, %rcx
	subq	_dev_ino_obstack+16(%rip), %rcx
	cmpq	$15, %rcx
	jbe	LBB0_273
## BB#275:                              ## %dev_ino_pop.exit
	leaq	-16(%rax), %rcx
	movq	%rcx, _dev_ino_obstack+24(%rip)
	movq	-16(%rax), %rcx
	movl	-8(%rax), %eax
	movq	%rcx, -384(%rbp)
	movl	%eax, -376(%rbp)
	leaq	-384(%rbp), %rsi
	callq	_hash_delete
	testq	%rax, %rax
	je	LBB0_276
## BB#277:
	movq	%rax, %rdi
	callq	_free
	movq	(%rbx), %rdi
	callq	_free
	movq	8(%rbx), %rdi
	callq	_free
	movq	%rbx, %rdi
	callq	_free
	jmp	LBB0_268
LBB0_374:                               ## %.thread123
	cmpb	$0, _print_with_color(%rip)
	je	LBB0_398
## BB#375:
	movzbl	_used_color(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_390
## BB#376:
	movq	_color_indicator(%rip), %rsi
	cmpq	$2, %rsi
	jne	LBB0_380
## BB#377:
	movq	_color_indicator+8(%rip), %rax
	movzwl	(%rax), %eax
	cmpl	$23323, %eax            ## imm = 0x5B1B
	jne	LBB0_380
## BB#378:
	cmpq	$1, _color_indicator+16(%rip)
	jne	LBB0_380
## BB#379:
	movq	_color_indicator+24(%rip), %rax
	movzbl	(%rax), %eax
	cmpl	$109, %eax
	je	LBB0_390
LBB0_380:                               ## %put_indicator.exit.i
	movq	_color_indicator+8(%rip), %rdi
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB0_389
## BB#381:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB0_383
## BB#382:                              ## %put_indicator.exit55
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB0_388
LBB0_278:                               ## %._crit_edge119
	movq	8(%rbx), %r14
	movb	16(%rbx), %r13b
	callq	___error
	movl	$0, (%rax)
	movq	%r12, %rdi
	callq	_opendir$INODE64
	movq	%rax, -392(%rbp)        ## 8-byte Spill
	testq	%rax, %rax
	je	LBB0_279
## BB#283:
	cmpq	$0, _active_dir_set(%rip)
	je	LBB0_299
## BB#284:
	movb	%r13b, -408(%rbp)       ## 1-byte Spill
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	callq	_dirfd
	leaq	-320(%rbp), %rsi
	testl	%eax, %eax
	js	LBB0_286
## BB#285:
	movl	%eax, %edi
	callq	_fstat$INODE64
	jmp	LBB0_287
LBB0_279:
	callq	___error
	movl	(%rax), %r14d
	movq	%r12, %rdi
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str76(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	_error
	testb	%r13b, %r13b
	je	LBB0_281
## BB#280:
	movl	$2, _exit_status(%rip)
	jmp	LBB0_373
LBB0_286:
	movq	%r12, %rdi
	callq	_rpl_stat
LBB0_287:
	testl	%eax, %eax
	js	LBB0_288
## BB#293:
	movq	%r12, -400(%rbp)        ## 8-byte Spill
	movl	-320(%rbp), %r15d
	movq	-312(%rbp), %r12
	movl	$16, %edi
	callq	_xmalloc
	movq	%rax, %r13
	movq	%r12, (%r13)
	movl	%r15d, 8(%r13)
	movq	_active_dir_set(%rip), %rdi
	movq	%r13, %rsi
	callq	_hash_insert
	testq	%rax, %rax
	je	LBB0_408
## BB#294:
	cmpq	%r13, %rax
	je	LBB0_296
## BB#295:                              ## %.critedge16.i
	movq	%r13, %rdi
	callq	_free
	movq	-400(%rbp), %rdi        ## 8-byte Reload
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str78(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	callq	_closedir
	movl	$2, _exit_status(%rip)
	jmp	LBB0_373
LBB0_288:                               ## %.critedge.i
	callq	___error
	movl	(%rax), %r14d
	movq	%r12, %rdi
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str77(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	_error
	cmpb	$0, -408(%rbp)          ## 1-byte Folded Reload
	je	LBB0_290
## BB#289:
	movl	$2, _exit_status(%rip)
	jmp	LBB0_292
LBB0_281:
	cmpl	$0, _exit_status(%rip)
	jne	LBB0_373
## BB#282:
	movl	$1, _exit_status(%rip)
	jmp	LBB0_373
LBB0_296:
	movl	-320(%rbp), %r15d
	movq	-312(%rbp), %r13
	movq	_dev_ino_obstack+32(%rip), %rcx
	movq	_dev_ino_obstack+24(%rip), %rax
	subq	%rax, %rcx
	cmpq	$15, %rcx
	ja	LBB0_298
## BB#297:
	leaq	_dev_ino_obstack(%rip), %rdi
	movl	$16, %esi
	callq	__obstack_newchunk
	movq	_dev_ino_obstack+24(%rip), %rax
LBB0_298:                               ## %dev_ino_push.exit.i
	leaq	16(%rax), %rcx
	movq	%rcx, _dev_ino_obstack+24(%rip)
	movl	%r15d, 8(%rax)
	movq	%r13, (%rax)
	movq	-400(%rbp), %r12        ## 8-byte Reload
	movb	-408(%rbp), %r13b       ## 1-byte Reload
LBB0_299:
	movb	_recursive(%rip), %al
	testb	%al, %al
	jne	LBB0_301
## BB#300:
	movzbl	_print_dir_name(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_316
LBB0_301:
	movzbl	_print_dir.first(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_306
## BB#302:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB0_304
## BB#303:                              ## %._crit_edge.i.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB0_305
LBB0_383:                               ## %put_indicator.exit57
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB0_385
## BB#384:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB0_385:                               ## %put_indicator.exit59
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB0_387
## BB#386:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB0_387:                               ## %put_indicator.exit
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB0_388:                               ## %restore_default_color.exit
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB0_389:                               ## %restore_default_color.exit
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB0_390:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_rpl_fflush
	xorl	%ebx, %ebx
	leaq	_main.sig(%rip), %r14
	.align	4, 0x90
LBB0_391:                               ## %__sigbits.exit50
                                        ## =>This Inner Loop Header: Depth=1
	movl	_caught_signals(%rip), %eax
	movl	(%rbx,%r14), %edi
	leal	-1(%rdi), %ecx
	btl	%ecx, %eax
	jae	LBB0_393
## BB#392:                              ##   in Loop: Header=BB0_391 Depth=1
	xorl	%esi, %esi
                                        ## kill: EDI<def> EDI<kill> RDI<kill>
	callq	_signal
LBB0_393:                               ##   in Loop: Header=BB0_391 Depth=1
	addq	$4, %rbx
	cmpq	$44, %rbx
	jne	LBB0_391
## BB#394:
	movl	_stop_signal_count(%rip), %ebx
	testl	%ebx, %ebx
	je	LBB0_396
	.align	4, 0x90
LBB0_395:                               ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	$17, %edi
	callq	_raise
	decl	%ebx
	jne	LBB0_395
LBB0_396:                               ## %._crit_edge
	movl	_interrupt_signal(%rip), %edi
	testl	%edi, %edi
	je	LBB0_398
## BB#397:
	callq	_raise
LBB0_398:
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_400
## BB#399:
	leaq	L_.str5(%rip), %rdi
	leaq	_dired_obstack(%rip), %rsi
	callq	_dired_dump_obstack
	leaq	L_.str6(%rip), %rdi
	leaq	_subdired_obstack(%rip), %rsi
	callq	_dired_dump_obstack
	movq	_filename_quoting_options(%rip), %rdi
	callq	_get_quoting_style
	movl	%eax, %eax
	movq	_quoting_style_args@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rsi
	leaq	L_.str7(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
LBB0_400:
	movq	_active_dir_set(%rip), %rbx
	testq	%rbx, %rbx
	je	LBB0_404
## BB#401:
	movq	%rbx, %rdi
	callq	_hash_get_n_entries
	testq	%rax, %rax
	jne	LBB0_402
## BB#403:
	movq	%rbx, %rdi
	callq	_hash_free
LBB0_404:
	movl	_exit_status(%rip), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-48(%rbp), %rcx
	jne	LBB0_409
## BB#405:
	addq	$392, %rsp              ## imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_409:
	callq	___stack_chk_fail
LBB0_290:
	cmpl	$0, _exit_status(%rip)
	jne	LBB0_292
## BB#291:
	movl	$1, _exit_status(%rip)
LBB0_292:                               ## %file_failure.exit17.i
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	callq	_closedir
	jmp	LBB0_373
LBB0_304:
	movl	$10, %edi
	callq	___swbuf
LBB0_305:                               ## %__sputc.exit.i
	incq	_dired_pos(%rip)
LBB0_306:
	movb	$1, _print_dir.first(%rip)
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_311
## BB#307:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str59(%rip), %rdi
	callq	_fputs
	addq	$2, _dired_pos(%rip)
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_311
## BB#308:
	movq	_subdired_obstack+32(%rip), %rcx
	movq	_subdired_obstack+24(%rip), %rax
	subq	%rax, %rcx
	cmpq	$7, %rcx
	ja	LBB0_310
## BB#309:
	leaq	_subdired_obstack(%rip), %rdi
	movl	$8, %esi
	callq	__obstack_newchunk
	movq	_subdired_obstack+24(%rip), %rax
LBB0_310:
	movq	_dired_pos(%rip), %rcx
	movq	%rcx, (%rax)
	addq	$8, _subdired_obstack+24(%rip)
LBB0_311:                               ## %.thread.i46
	movq	___stdoutp@GOTPCREL(%rip), %r15
	movq	(%r15), %rdi
	testq	%r14, %r14
	cmoveq	%r12, %r14
	movq	_dirname_quoting_options(%rip), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	callq	_quote_name
	addq	%rax, _dired_pos(%rip)
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_315
## BB#312:
	movq	_subdired_obstack+32(%rip), %rcx
	movq	_subdired_obstack+24(%rip), %rax
	subq	%rax, %rcx
	cmpq	$7, %rcx
	ja	LBB0_314
## BB#313:
	leaq	_subdired_obstack(%rip), %rdi
	movl	$8, %esi
	callq	__obstack_newchunk
	movq	_subdired_obstack+24(%rip), %rax
LBB0_314:
	movq	_dired_pos(%rip), %rcx
	movq	%rcx, (%rax)
	addq	$8, _subdired_obstack+24(%rip)
LBB0_315:
	movq	(%r15), %rsi
	leaq	L_.str79(%rip), %rdi
	callq	_fputs
	addq	$2, _dired_pos(%rip)
LBB0_316:
	movb	%r13b, -408(%rbp)       ## 1-byte Spill
	movq	%r12, -400(%rbp)        ## 8-byte Spill
	movq	%rbx, -416(%rbp)        ## 8-byte Spill
	xorl	%ebx, %ebx
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB0_318
	.align	4, 0x90
LBB0_317:                               ## %.lr.ph.i.i47
                                        ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%rbx,8), %r14
	movq	(%r14), %rdi
	callq	_free
	movq	8(%r14), %rdi
	callq	_free
	incq	%rbx
	cmpq	_cwd_n_used(%rip), %rbx
	jb	LBB0_317
LBB0_318:                               ## %clear_files.exit.i
	movq	$0, _cwd_n_used(%rip)
	movb	$0, _any_has_acl(%rip)
	movl	$0, _inode_number_width(%rip)
	movl	$0, _block_size_width(%rip)
	movl	$0, _nlink_width(%rip)
	movl	$0, _owner_width(%rip)
	movl	$0, _group_width(%rip)
	movl	$0, _author_width(%rip)
	movl	$0, _scontext_width(%rip)
	movl	$0, _major_device_number_width(%rip)
	movl	$0, _minor_device_number_width(%rip)
	movl	$0, _file_size_width(%rip)
	xorl	%r14d, %r14d
	jmp	LBB0_319
	.align	4, 0x90
LBB0_351:                               ## %file_ignored.exit.thread.i
                                        ##   in Loop: Header=BB0_319 Depth=1
	callq	_process_signals
	movq	%r15, %r14
LBB0_319:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_328 Depth 2
                                        ##     Child Loop BB0_332 Depth 2
                                        ##     Child Loop BB0_342 Depth 2
	callq	___error
	movl	$0, (%rax)
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	callq	_readdir$INODE64
	movq	%rax, %r12
	testq	%r12, %r12
	je	LBB0_344
## BB#320:                              ##   in Loop: Header=BB0_319 Depth=1
	leaq	21(%r12), %r13
	movl	_ignore_mode(%rip), %eax
	cmpl	$2, %eax
	je	LBB0_331
## BB#321:                              ##   in Loop: Header=BB0_319 Depth=1
	movzbl	(%r13), %ecx
	cmpl	$46, %ecx
	jne	LBB0_326
## BB#322:                              ##   in Loop: Header=BB0_319 Depth=1
	testl	%eax, %eax
	je	LBB0_350
## BB#323:                              ##   in Loop: Header=BB0_319 Depth=1
	movzbl	22(%r12), %ecx
	cmpl	$46, %ecx
	movl	$2, %ecx
	je	LBB0_325
## BB#324:                              ## %select.mid192
                                        ##   in Loop: Header=BB0_319 Depth=1
	movl	$1, %ecx
LBB0_325:                               ## %select.end191
                                        ##   in Loop: Header=BB0_319 Depth=1
	cmpb	$0, 21(%r12,%rcx)
	je	LBB0_350
LBB0_326:                               ##   in Loop: Header=BB0_319 Depth=1
	testl	%eax, %eax
	jne	LBB0_331
## BB#327:                              ##   in Loop: Header=BB0_319 Depth=1
	movq	_hide_patterns(%rip), %r15
	jmp	LBB0_328
	.align	4, 0x90
LBB0_344:                               ##   in Loop: Header=BB0_319 Depth=1
	callq	___error
	cmpl	$0, (%rax)
	movq	-400(%rbp), %r12        ## 8-byte Reload
	movb	-408(%rbp), %r13b       ## 1-byte Reload
	je	LBB0_352
## BB#345:                              ##   in Loop: Header=BB0_319 Depth=1
	callq	___error
	movl	(%rax), %ebx
	movq	%r12, %rdi
	callq	_quotearg_colon
	movq	%rax, %rcx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	leaq	L_.str80(%rip), %rdx
	callq	_error
	testb	%r13b, %r13b
	je	LBB0_347
## BB#346:                              ##   in Loop: Header=BB0_319 Depth=1
	movl	$2, _exit_status(%rip)
	jmp	LBB0_349
LBB0_347:                               ##   in Loop: Header=BB0_319 Depth=1
	cmpl	$0, _exit_status(%rip)
	jne	LBB0_349
## BB#348:                              ##   in Loop: Header=BB0_319 Depth=1
	movl	$1, _exit_status(%rip)
	.align	4, 0x90
LBB0_349:                               ## %file_failure.exit23.i
                                        ##   in Loop: Header=BB0_319 Depth=1
	callq	___error
	cmpl	$84, (%rax)
	jne	LBB0_352
LBB0_350:                               ##   in Loop: Header=BB0_319 Depth=1
	movq	%r14, %r15
	jmp	LBB0_351
	.align	4, 0x90
LBB0_330:                               ##   in Loop: Header=BB0_328 Depth=2
	movq	8(%r15), %r15
LBB0_328:                               ##   Parent Loop BB0_319 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%r15, %r15
	je	LBB0_331
## BB#329:                              ## %.lr.ph.i.i.i
                                        ##   in Loop: Header=BB0_328 Depth=2
	movq	(%r15), %rdi
	movl	$4, %edx
	movq	%r13, %rsi
	callq	_gnu_fnmatch
	testl	%eax, %eax
	jne	LBB0_330
	jmp	LBB0_350
	.align	4, 0x90
LBB0_331:                               ## %.thread.i.i
                                        ##   in Loop: Header=BB0_319 Depth=1
	movq	_ignore_patterns(%rip), %rbx
	jmp	LBB0_332
	.align	4, 0x90
LBB0_334:                               ##   in Loop: Header=BB0_332 Depth=2
	movq	8(%rbx), %rbx
LBB0_332:                               ## %.thread.i.i
                                        ##   Parent Loop BB0_319 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	LBB0_335
## BB#333:                              ## %.lr.ph.i2.i.i
                                        ##   in Loop: Header=BB0_332 Depth=2
	movq	(%rbx), %rdi
	movl	$4, %edx
	movq	%r13, %rsi
	callq	_gnu_fnmatch
	testl	%eax, %eax
	jne	LBB0_334
	jmp	LBB0_350
	.align	4, 0x90
LBB0_335:                               ## %file_ignored.exit.i
                                        ##   in Loop: Header=BB0_319 Depth=1
	movzbl	20(%r12), %eax
	decl	%eax
	xorl	%esi, %esi
	cmpl	$13, %eax
	ja	LBB0_337
## BB#336:                              ## %switch.lookup.i
                                        ##   in Loop: Header=BB0_319 Depth=1
	cltq
	leaq	l_switch.table(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
LBB0_337:                               ##   in Loop: Header=BB0_319 Depth=1
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	-400(%rbp), %rcx        ## 8-byte Reload
	callq	_gobble_file
	movq	%rax, %r15
	addq	%r14, %r15
	cmpl	$1, _format(%rip)
	jne	LBB0_351
## BB#338:                              ##   in Loop: Header=BB0_319 Depth=1
	cmpl	$-1, _sort_type(%rip)
	jne	LBB0_351
## BB#339:                              ##   in Loop: Header=BB0_319 Depth=1
	movb	_print_block_size(%rip), %al
	testb	%al, %al
	jne	LBB0_351
## BB#340:                              ##   in Loop: Header=BB0_319 Depth=1
	movb	_recursive(%rip), %al
	testb	%al, %al
	jne	LBB0_351
## BB#341:                              ##   in Loop: Header=BB0_319 Depth=1
	callq	_sort_files
	callq	_print_current_files
	cmpq	$0, _cwd_n_used(%rip)
	movl	$0, %ebx
	je	LBB0_343
	.align	4, 0x90
LBB0_342:                               ## %.lr.ph.i20.i
                                        ##   Parent Loop BB0_319 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%rbx,8), %r14
	movq	(%r14), %rdi
	callq	_free
	movq	8(%r14), %rdi
	callq	_free
	incq	%rbx
	cmpq	_cwd_n_used(%rip), %rbx
	jb	LBB0_342
LBB0_343:                               ## %clear_files.exit22.i
                                        ##   in Loop: Header=BB0_319 Depth=1
	movq	$0, _cwd_n_used(%rip)
	movb	$0, _any_has_acl(%rip)
	movl	$0, _inode_number_width(%rip)
	movl	$0, _block_size_width(%rip)
	movl	$0, _nlink_width(%rip)
	movl	$0, _owner_width(%rip)
	movl	$0, _group_width(%rip)
	movl	$0, _author_width(%rip)
	movl	$0, _scontext_width(%rip)
	movl	$0, _major_device_number_width(%rip)
	movl	$0, _minor_device_number_width(%rip)
	movl	$0, _file_size_width(%rip)
	jmp	LBB0_351
LBB0_352:
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	callq	_closedir
	testl	%eax, %eax
	movq	-416(%rbp), %rbx        ## 8-byte Reload
	je	LBB0_357
## BB#353:
	callq	___error
	movl	(%rax), %r15d
	movq	%r12, %rdi
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str81(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	_error
	testb	%r13b, %r13b
	je	LBB0_355
## BB#354:
	movl	$2, _exit_status(%rip)
	jmp	LBB0_357
LBB0_355:
	cmpl	$0, _exit_status(%rip)
	jne	LBB0_357
## BB#356:
	movl	$1, _exit_status(%rip)
LBB0_357:                               ## %file_failure.exit24.i
	callq	_sort_files
	movzbl	_recursive(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_359
## BB#358:
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_extract_dirs_from_files
LBB0_359:
	cmpl	$0, _format(%rip)
	je	LBB0_361
## BB#360:
	movzbl	_print_block_size(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_371
LBB0_361:
	movq	%rbx, %r12
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_363
## BB#362:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str59(%rip), %rdi
	callq	_fputs
	addq	$2, _dired_pos(%rip)
LBB0_363:
	movq	___stdoutp@GOTPCREL(%rip), %r15
	movq	(%r15), %rsi
	leaq	L_.str82(%rip), %rdi
	callq	_fputs
	addq	$5, _dired_pos(%rip)
	movq	(%r15), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB0_365
## BB#364:
	cmpl	40(%rsi), %eax
	jle	LBB0_366
LBB0_365:                               ## %._crit_edge.i25.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$32, (%rax)
	jmp	LBB0_367
LBB0_366:
	movl	$32, %edi
	callq	___swbuf
LBB0_367:                               ## %__sputc.exit27.i
	incq	_dired_pos(%rip)
	movl	_human_output_opts(%rip), %edx
	movq	_output_block_size(%rip), %r8
	leaq	-320(%rbp), %rsi
	movl	$512, %ecx              ## imm = 0x200
	movq	%r14, %rdi
	callq	_human_readable
	movq	%rax, %rbx
	movq	(%r15), %rsi
	movq	%rbx, %rdi
	callq	_fputs
	movq	%rbx, %rdi
	callq	_strlen
	addq	%rax, _dired_pos(%rip)
	movq	(%r15), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB0_369
## BB#368:                              ## %._crit_edge.i28.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB0_370
LBB0_369:
	movl	$10, %edi
	callq	___swbuf
LBB0_370:                               ## %__sputc.exit30.i
	movq	%r12, %rbx
	incq	_dired_pos(%rip)
LBB0_371:
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB0_373
## BB#372:
	callq	_print_current_files
LBB0_373:                               ## %print_dir.exit
	movq	(%rbx), %rdi
	callq	_free
	movq	8(%rbx), %rdi
	callq	_free
	movq	%rbx, %rdi
	callq	_free
	movb	$1, _print_dir_name(%rip)
	jmp	LBB0_268
LBB0_273:
	leaq	L___func__.dev_ino_pop(%rip), %rax
	leaq	L_.str2(%rip), %rcx
	leaq	L_.str232(%rip), %rbx
	movl	$992, %edx              ## imm = 0x3E0
	jmp	LBB0_274
LBB0_276:
	leaq	L___func__.main(%rip), %rax
	leaq	L_.str2(%rip), %rcx
	leaq	L_.str3(%rip), %rbx
	movl	$1450, %edx             ## imm = 0x5AA
	jmp	LBB0_274
LBB0_408:
	callq	_xalloc_die
LBB0_402:
	leaq	L___func__.main(%rip), %rax
	leaq	L_.str2(%rip), %rcx
	leaq	L_.str8(%rip), %rbx
	movl	$1513, %edx             ## imm = 0x5E9
LBB0_274:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	callq	___assert_rtn
	.cfi_endproc
	.align	2, 0x90
L0_0_set_83 = LBB0_83-LJTI0_0
L0_0_set_34 = LBB0_34-LJTI0_0
L0_0_set_63 = LBB0_63-LJTI0_0
L0_0_set_65 = LBB0_65-LJTI0_0
L0_0_set_66 = LBB0_66-LJTI0_0
L0_0_set_67 = LBB0_67-LJTI0_0
L0_0_set_68 = LBB0_68-LJTI0_0
L0_0_set_70 = LBB0_70-LJTI0_0
L0_0_set_71 = LBB0_71-LJTI0_0
L0_0_set_73 = LBB0_73-LJTI0_0
L0_0_set_75 = LBB0_75-LJTI0_0
L0_0_set_76 = LBB0_76-LJTI0_0
L0_0_set_77 = LBB0_77-LJTI0_0
L0_0_set_78 = LBB0_78-LJTI0_0
L0_0_set_79 = LBB0_79-LJTI0_0
L0_0_set_80 = LBB0_80-LJTI0_0
L0_0_set_81 = LBB0_81-LJTI0_0
L0_0_set_82 = LBB0_82-LJTI0_0
L0_0_set_106 = LBB0_106-LJTI0_0
L0_0_set_37 = LBB0_37-LJTI0_0
L0_0_set_38 = LBB0_38-LJTI0_0
L0_0_set_40 = LBB0_40-LJTI0_0
L0_0_set_41 = LBB0_41-LJTI0_0
L0_0_set_42 = LBB0_42-LJTI0_0
L0_0_set_46 = LBB0_46-LJTI0_0
L0_0_set_47 = LBB0_47-LJTI0_0
L0_0_set_49 = LBB0_49-LJTI0_0
L0_0_set_28 = LBB0_28-LJTI0_0
L0_0_set_52 = LBB0_52-LJTI0_0
L0_0_set_50 = LBB0_50-LJTI0_0
L0_0_set_51 = LBB0_51-LJTI0_0
L0_0_set_69 = LBB0_69-LJTI0_0
L0_0_set_53 = LBB0_53-LJTI0_0
L0_0_set_54 = LBB0_54-LJTI0_0
L0_0_set_55 = LBB0_55-LJTI0_0
L0_0_set_56 = LBB0_56-LJTI0_0
L0_0_set_57 = LBB0_57-LJTI0_0
L0_0_set_59 = LBB0_59-LJTI0_0
L0_0_set_60 = LBB0_60-LJTI0_0
L0_0_set_61 = LBB0_61-LJTI0_0
L0_0_set_62 = LBB0_62-LJTI0_0
L0_0_set_85 = LBB0_85-LJTI0_0
L0_0_set_103 = LBB0_103-LJTI0_0
L0_0_set_92 = LBB0_92-LJTI0_0
L0_0_set_72 = LBB0_72-LJTI0_0
L0_0_set_45 = LBB0_45-LJTI0_0
L0_0_set_90 = LBB0_90-LJTI0_0
L0_0_set_91 = LBB0_91-LJTI0_0
L0_0_set_88 = LBB0_88-LJTI0_0
L0_0_set_86 = LBB0_86-LJTI0_0
L0_0_set_99 = LBB0_99-LJTI0_0
L0_0_set_100 = LBB0_100-LJTI0_0
L0_0_set_102 = LBB0_102-LJTI0_0
L0_0_set_105 = LBB0_105-LJTI0_0
L0_0_set_87 = LBB0_87-LJTI0_0
L0_0_set_89 = LBB0_89-LJTI0_0
L0_0_set_101 = LBB0_101-LJTI0_0
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
L0_1_set_148 = LBB0_148-LJTI0_1
L0_1_set_150 = LBB0_150-LJTI0_1
L0_1_set_151 = LBB0_151-LJTI0_1
L0_1_set_152 = LBB0_152-LJTI0_1
LJTI0_1:
	.long	L0_1_set_148
	.long	L0_1_set_150
	.long	L0_1_set_151
	.long	L0_1_set_152
L0_2_set_178 = LBB0_178-LJTI0_2
L0_2_set_184 = LBB0_184-LJTI0_2
L0_2_set_186 = LBB0_186-LJTI0_2
L0_2_set_191 = LBB0_191-LJTI0_2
L0_2_set_193 = LBB0_193-LJTI0_2
L0_2_set_194 = LBB0_194-LJTI0_2
LJTI0_2:
	.long	L0_2_set_178
	.long	L0_2_set_184
	.long	L0_2_set_186
	.long	L0_2_set_191
	.long	L0_2_set_193
	.long	L0_2_set_194

	.align	4, 0x90
_stophandler:                           ## @stophandler
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	cmpl	$0, _interrupt_signal(%rip)
	jne	LBB1_2
## BB#1:
	incl	_stop_signal_count(%rip)
LBB1_2:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_sighandler:                            ## @sighandler
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	cmpl	$0, _interrupt_signal(%rip)
	jne	LBB2_2
## BB#1:
	movl	%edi, _interrupt_signal(%rip)
LBB2_2:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_dev_ino_hash:                          ## @dev_ino_hash
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rdx, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_dev_ino_compare:                       ## @dev_ino_compare
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp28:
	.cfi_def_cfa_offset 16
Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp30:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	jne	LBB4_1
## BB#2:
	movl	8(%rdi), %eax
	cmpl	8(%rsi), %eax
	sete	%al
	jmp	LBB4_3
LBB4_1:
	xorl	%eax, %eax
LBB4_3:
                                        ## kill: AL<def> AL<kill> EAX<kill>
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_dev_ino_free:                          ## @dev_ino_free
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_free                   ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_gobble_file:                           ## @gobble_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$872, %rsp              ## imm = 0x368
Ltmp42:
	.cfi_offset %rbx, -56
Ltmp43:
	.cfi_offset %r12, -48
Ltmp44:
	.cfi_offset %r13, -40
Ltmp45:
	.cfi_offset %r14, -32
Ltmp46:
	.cfi_offset %r15, -24
	movq	%rcx, -856(%rbp)        ## 8-byte Spill
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_cwd_n_used(%rip), %rax
	cmpq	_cwd_n_alloc(%rip), %rax
	jne	LBB6_1
## BB#2:
	movq	%rdi, -840(%rbp)        ## 8-byte Spill
	movabsq	$48038396025285291, %rcx ## imm = 0xAAAAAAAAAAAAAB
	cmpq	%rcx, %rax
	jae	LBB6_202
## BB#3:                                ## %xnrealloc.exit
	movq	_cwd_file(%rip), %rdi
	shlq	$7, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	_xrealloc
	movq	%rax, %r15
	movq	%r15, _cwd_file(%rip)
	shlq	_cwd_n_alloc(%rip)
	movq	_cwd_n_used(%rip), %rax
	jmp	LBB6_4
LBB6_1:                                 ## %._crit_edge
	movq	%rdi, -840(%rbp)        ## 8-byte Spill
	movq	_cwd_file(%rip), %r15
LBB6_4:
	leaq	(%rax,%rax,2), %r14
	shlq	$6, %r14
	leaq	(%r15,%r14), %rdi
	movq	%rdi, -864(%rbp)        ## 8-byte Spill
	movl	$192, %esi
	callq	___bzero
	leaq	24(%r15,%r14), %rax
	movq	%rax, -872(%rbp)        ## 8-byte Spill
	movq	$0, 24(%r15,%r14)
	movl	%ebx, 160(%r15,%r14)
	movl	%ebx, -848(%rbp)        ## 4-byte Spill
	cmpb	$0, _format_needs_stat(%rip)
	jne	LBB6_57
## BB#5:
	movb	%r13b, %al
	xorb	$1, %al
	je	LBB6_57
## BB#6:
	cmpl	$3, -848(%rbp)          ## 4-byte Folded Reload
	movb	_print_with_color(%rip), %r12b
	jne	LBB6_23
## BB#7:
	testb	%r12b, %r12b
	je	LBB6_23
## BB#8:
	movq	_color_indicator+304(%rip), %rax
	testq	%rax, %rax
	je	LBB6_13
## BB#9:
	movq	_color_indicator+312(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_10
## BB#12:                               ## %is_colored.exit
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_13
LBB6_10:
	cmpq	$1, %rax
	jne	LBB6_57
## BB#11:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB6_57
LBB6_13:                                ## %is_colored.exit.thread59
	movq	_color_indicator+288(%rip), %rax
	testq	%rax, %rax
	je	LBB6_18
## BB#14:                               ## %is_colored.exit.thread59
	movq	_color_indicator+296(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_15
## BB#17:                               ## %is_colored.exit13
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_18
LBB6_15:                                ## %is_colored.exit.thread59
	cmpq	$1, %rax
	jne	LBB6_57
## BB#16:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB6_57
LBB6_18:                                ## %is_colored.exit13.thread60
	movq	_color_indicator+320(%rip), %rax
	testq	%rax, %rax
	je	LBB6_23
## BB#19:                               ## %is_colored.exit13.thread60
	movq	_color_indicator+328(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_20
## BB#22:                               ## %is_colored.exit18
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_23
LBB6_20:                                ## %is_colored.exit13.thread60
	cmpq	$1, %rax
	jne	LBB6_57
## BB#21:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB6_57
LBB6_23:                                ## %is_colored.exit18.thread61
	movb	_print_inode(%rip), %cl
	movb	_format_needs_type(%rip), %al
	testb	%al, %al
	jne	LBB6_25
## BB#24:                               ## %is_colored.exit18.thread61
	movb	%cl, %dl
	xorb	$1, %dl
	testb	$1, %dl
	jne	LBB6_30
LBB6_25:
	movl	-848(%rbp), %edx        ## 4-byte Reload
	testl	%edx, %edx
	je	LBB6_27
## BB#26:
	cmpl	$6, %edx
	jne	LBB6_30
LBB6_27:
	cmpl	$5, _dereference(%rip)
	je	LBB6_57
## BB#28:
	movb	_color_symlink_as_referent(%rip), %dl
	testb	%dl, %dl
	jne	LBB6_57
## BB#29:
	orb	_check_symlink_color(%rip), %cl
LBB6_30:
	testb	$1, %cl
	jne	LBB6_57
## BB#31:
	xorl	%ebx, %ebx
	testb	%al, %al
	je	LBB6_196
## BB#32:
	cmpl	$0, -848(%rbp)          ## 4-byte Folded Reload
	je	LBB6_57
## BB#33:
	testb	%r13b, %r13b
	jne	LBB6_57
## BB#34:
	xorl	%ebx, %ebx
	cmpl	$5, -848(%rbp)          ## 4-byte Folded Reload
	jne	LBB6_196
## BB#35:
	cmpl	$3, _indicator_style(%rip)
	je	LBB6_57
## BB#36:
	xorl	%ebx, %ebx
	testb	%r12b, %r12b
	je	LBB6_196
## BB#37:
	movq	_color_indicator+224(%rip), %rax
	testq	%rax, %rax
	je	LBB6_42
## BB#38:
	movq	_color_indicator+232(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_39
## BB#41:                               ## %is_colored.exit23
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_42
LBB6_39:
	cmpq	$1, %rax
	jne	LBB6_57
## BB#40:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB6_57
LBB6_42:                                ## %is_colored.exit23.thread62
	movq	_color_indicator+256(%rip), %rax
	testq	%rax, %rax
	je	LBB6_47
## BB#43:                               ## %is_colored.exit23.thread62
	movq	_color_indicator+264(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_44
## BB#46:                               ## %is_colored.exit28
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_47
LBB6_44:                                ## %is_colored.exit23.thread62
	cmpq	$1, %rax
	jne	LBB6_57
## BB#45:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB6_57
LBB6_47:                                ## %is_colored.exit28.thread63
	movq	_color_indicator+272(%rip), %rax
	testq	%rax, %rax
	je	LBB6_52
## BB#48:                               ## %is_colored.exit28.thread63
	movq	_color_indicator+280(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_49
## BB#51:                               ## %is_colored.exit33
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_52
LBB6_49:                                ## %is_colored.exit28.thread63
	cmpq	$1, %rax
	jne	LBB6_57
## BB#50:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB6_57
LBB6_52:                                ## %is_colored.exit33.thread64
	movq	_color_indicator+336(%rip), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	LBB6_196
## BB#53:                               ## %is_colored.exit33.thread64
	movq	_color_indicator+344(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_54
## BB#56:                               ## %is_colored.exit38
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	LBB6_57
	jmp	LBB6_196
LBB6_54:                                ## %is_colored.exit33.thread64
	cmpq	$1, %rax
	jne	LBB6_57
## BB#55:
	movzbl	(%rdi), %eax
	xorl	%ebx, %ebx
	cmpl	$48, %eax
	je	LBB6_196
LBB6_57:                                ## %is_colored.exit.thread
	movq	-840(%rbp), %rsi        ## 8-byte Reload
	movzbl	(%rsi), %eax
	cmpl	$47, %eax
	movq	%rsi, %rdi
	je	LBB6_69
## BB#58:
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movb	(%rax), %r12b
	testb	%r12b, %r12b
	movq	%rsi, %rdi
	je	LBB6_69
## BB#59:
	movq	%r14, -880(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	callq	_strlen
	movq	%rax, %rbx
	movq	-856(%rbp), %r14        ## 8-byte Reload
	movq	%r14, %rdi
	callq	_strlen
	leaq	17(%rbx,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movzbl	%r12b, %eax
	cmpl	$46, %eax
	movq	%r14, %rcx
	movq	%rdx, %rax
	movq	%rdx, %rdi
	jne	LBB6_61
## BB#60:
	movb	$46, %r12b
	cmpb	$0, 1(%r14)
	movq	%r14, %rcx
	movq	%rdi, %rax
	je	LBB6_65
	.align	4, 0x90
LBB6_61:                                ## %.lr.ph7.i
                                        ## =>This Inner Loop Header: Depth=1
	movb	%r12b, (%rax)
	incq	%rax
	movb	1(%rcx), %r12b
	incq	%rcx
	testb	%r12b, %r12b
	jne	LBB6_61
## BB#62:                               ## %._crit_edge8.i
	cmpq	%r14, %rcx
	jbe	LBB6_65
## BB#63:
	movzbl	-1(%rcx), %ecx
	cmpl	$47, %ecx
	je	LBB6_65
## BB#64:
	movb	$47, (%rax)
	incq	%rax
LBB6_65:                                ## %.preheader.i
	movq	-840(%rbp), %rsi        ## 8-byte Reload
	movb	(%rsi), %cl
	testb	%cl, %cl
	movq	-880(%rbp), %r14        ## 8-byte Reload
	je	LBB6_68
## BB#66:                               ## %.lr.ph.i.preheader
	leaq	1(%rsi), %rdx
	.align	4, 0x90
LBB6_67:                                ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movb	%cl, (%rax)
	incq	%rax
	movb	(%rdx), %cl
	incq	%rdx
	testb	%cl, %cl
	jne	LBB6_67
LBB6_68:                                ## %attach.exit
	movb	$0, (%rax)
LBB6_69:
	leaq	16(%r15,%r14), %rbx
	leaq	160(%r15,%r14), %rax
	movq	%rax, -856(%rbp)        ## 8-byte Spill
	movl	_dereference(%rip), %eax
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jae	LBB6_70
## BB#72:
	movq	%rsi, -840(%rbp)        ## 8-byte Spill
	movl	%r13d, %r12d
	testb	%r12b, %r12b
	movq	%rdi, %r13
	je	LBB6_77
## BB#73:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_rpl_stat
	cmpl	$3, _dereference(%rip)
	je	LBB6_78
## BB#74:
	testl	%eax, %eax
	js	LBB6_75
## BB#76:
	movzwl	20(%r15,%r14), %ecx
	andl	$61440, %ecx            ## imm = 0xF000
	cmpl	$16384, %ecx            ## imm = 0x4000
	je	LBB6_78
	jmp	LBB6_77
LBB6_70:
	movq	%rsi, -840(%rbp)        ## 8-byte Spill
	cmpl	$5, %eax
	movl	%r13d, %r12d
	movq	%rdi, %r13
	jne	LBB6_77
## BB#71:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_rpl_stat
	jmp	LBB6_78
LBB6_75:
	callq	___error
	cmpl	$2, (%rax)
	jne	LBB6_79
LBB6_77:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_rpl_lstat
LBB6_78:
	testl	%eax, %eax
	je	LBB6_84
LBB6_79:                                ## %.thread
	callq	___error
	movl	(%rax), %ebx
	movq	%r13, %rdi
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str70(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	_error
	testb	%r12b, %r12b
	je	LBB6_81
## BB#80:                               ## %file_failure.exit.thread66
	movl	$2, _exit_status(%rip)
	xorl	%ebx, %ebx
	jmp	LBB6_200
LBB6_84:
	movq	%r13, -880(%rbp)        ## 8-byte Spill
	movq	%rbx, -896(%rbp)        ## 8-byte Spill
	movq	%r15, %r13
	movb	$1, 176(%r13,%r14)
	cmpl	$5, -848(%rbp)          ## 4-byte Folded Reload
	jne	LBB6_85
## BB#87:
	cmpb	$0, _print_with_color(%rip)
	jne	LBB6_88
	jmp	LBB6_100
LBB6_81:
	cmpl	$0, _exit_status(%rip)
	jne	LBB6_83
## BB#82:
	movl	$1, _exit_status(%rip)
LBB6_83:
	movq	-840(%rbp), %rdi        ## 8-byte Reload
	callq	_xstrdup
	movq	-864(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, (%rcx)
	incq	_cwd_n_used(%rip)
	xorl	%ebx, %ebx
	jmp	LBB6_200
LBB6_85:
	movzwl	20(%r13,%r14), %eax
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$32768, %eax            ## imm = 0x8000
	jne	LBB6_100
## BB#86:
	movb	_print_with_color(%rip), %al
	testb	%al, %al
	je	LBB6_100
LBB6_88:
	movq	_color_indicator+336(%rip), %rax
	testq	%rax, %rax
	je	LBB6_100
## BB#89:
	movq	_color_indicator+344(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB6_90
## BB#92:                               ## %is_colored.exit43
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB6_93
	jmp	LBB6_100
LBB6_90:
	cmpq	$1, %rax
	jne	LBB6_93
## BB#91:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB6_100
LBB6_93:                                ## %is_colored.exit43.thread
	movl	16(%r13,%r14), %r15d
	movl	_has_capability_cache.unsupported_device(%rip), %ebx
	callq	___error
	cmpl	%ebx, %r15d
	movl	$45, (%rax)
	je	LBB6_99
## BB#94:
	callq	___error
	movl	(%rax), %eax
	cmpl	$101, %eax
	jg	LBB6_97
## BB#95:
	addl	$-22, %eax
	cmpl	$56, %eax
	ja	LBB6_99
## BB#96:
	movabsq	$72057594046316545, %rcx ## imm = 0x100000000800001
	btq	%rax, %rcx
	jb	LBB6_98
	jmp	LBB6_99
LBB6_97:
	cmpl	$102, %eax
	jne	LBB6_99
LBB6_98:                                ## %errno_unsupported.exit.thread.i
	movq	-896(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, _has_capability_cache.unsupported_device(%rip)
LBB6_99:                                ## %has_capability_cache.exit
	movb	$0, 184(%r13,%r14)
LBB6_100:                               ## %is_colored.exit43.thread67
	cmpl	$0, _format(%rip)
	je	LBB6_102
## BB#101:
	movzbl	_print_scontext(%rip), %eax
	cmpl	$1, %eax
	jne	LBB6_124
LBB6_102:
	movq	%r13, %rax
	movq	%rax, -888(%rbp)        ## 8-byte Spill
	movl	%r12d, %r13d
	movl	16(%rax,%r14), %ebx
	movl	_getfilecon_cache.unsupported_device(%rip), %r12d
	callq	___error
	cmpl	%r12d, %ebx
	movl	$45, (%rax)
	je	LBB6_108
## BB#103:
	callq	___error
	movl	(%rax), %eax
	cmpl	$101, %eax
	jg	LBB6_106
## BB#104:
	addl	$-22, %eax
	cmpl	$56, %eax
	ja	LBB6_108
## BB#105:
	movabsq	$72057594046316545, %rcx ## imm = 0x100000000800001
	btq	%rax, %rcx
	jb	LBB6_107
	jmp	LBB6_108
LBB6_106:
	cmpl	$102, %eax
	jne	LBB6_108
LBB6_107:                               ## %errno_unsupported.exit.thread.i44
	movq	-896(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, _getfilecon_cache.unsupported_device(%rip)
LBB6_108:                               ## %getfilecon_cache.exit
	leaq	_UNKNOWN_SECURITY_CONTEXT(%rip), %rax
	movq	-888(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 168(%rcx,%r14)
	callq	___error
	movl	(%rax), %eax
	cmpl	$45, %eax
	movl	%r13d, %r12d
	je	LBB6_111
## BB#109:                              ## %getfilecon_cache.exit
	cmpl	$102, %eax
	je	LBB6_111
## BB#110:
	callq	___error
	movl	$1, %ecx
	cmpl	$96, (%rax)
	jne	LBB6_112
LBB6_111:
	xorl	%ecx, %ecx
LBB6_112:
	xorl	%eax, %eax
	movl	_format(%rip), %edx
	orl	%ecx, %edx
	jne	LBB6_122
## BB#113:
	movl	%r12d, %r13d
	movq	-896(%rbp), %r15        ## 8-byte Reload
	movl	(%r15), %r12d
	movl	_file_has_acl_cache.unsupported_device(%rip), %ebx
	callq	___error
	cmpl	%ebx, %r12d
	jne	LBB6_115
## BB#114:
	movl	$45, (%rax)
	xorl	%ebx, %ebx
	movl	%r13d, %r12d
	jmp	LBB6_121
LBB6_115:
	movl	$0, (%rax)
	movq	-880(%rbp), %rdi        ## 8-byte Reload
	movq	%r15, %rsi
	callq	_file_has_acl
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	%r13d, %r12d
	jg	LBB6_121
## BB#116:
	callq	___error
	movl	(%rax), %eax
	cmpl	$101, %eax
	jg	LBB6_119
## BB#117:
	addl	$-22, %eax
	cmpl	$56, %eax
	ja	LBB6_121
## BB#118:
	movabsq	$72057594046316545, %rcx ## imm = 0x100000000800001
	btq	%rax, %rcx
	jb	LBB6_120
	jmp	LBB6_121
LBB6_119:
	cmpl	$102, %eax
	jne	LBB6_121
LBB6_120:                               ## %errno_unsupported.exit.thread.i45
	movl	(%r15), %eax
	movl	%eax, _file_has_acl_cache.unsupported_device(%rip)
LBB6_121:                               ## %file_has_acl_cache.exit
	movl	%ebx, %ecx
	shrl	$31, %ecx
	testl	%ebx, %ebx
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %eax
LBB6_122:
	movq	-888(%rbp), %r13        ## 8-byte Reload
	movl	%eax, 180(%r13,%r14)
	shrl	%eax
	movzbl	_any_has_acl(%rip), %edx
	orl	%eax, %edx
	movb	%dl, _any_has_acl(%rip)
	testl	%ecx, %ecx
	je	LBB6_124
## BB#123:
	callq	___error
	movl	(%rax), %ebx
	movq	-880(%rbp), %rdi        ## 8-byte Reload
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str73(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	_error
LBB6_124:
	leaq	20(%r13,%r14), %rax
	movq	%rax, -848(%rbp)        ## 8-byte Spill
	movzwl	20(%r13,%r14), %eax
	movl	%eax, %ecx
	andl	$61440, %ecx            ## imm = 0xF000
	cmpl	$40960, %ecx            ## imm = 0xA000
	jne	LBB6_147
## BB#125:
	cmpl	$0, _format(%rip)
	je	LBB6_127
## BB#126:
	movzbl	_check_symlink_color(%rip), %ecx
	cmpl	$1, %ecx
	jne	LBB6_147
LBB6_127:
	movl	%r12d, -896(%rbp)       ## 4-byte Spill
	movq	112(%r13,%r14), %rsi
	movq	-880(%rbp), %rdi        ## 8-byte Reload
	callq	_areadlink_with_size
	movq	%rax, %r12
	movq	%r12, 8(%r13,%r14)
	testq	%r12, %r12
	jne	LBB6_133
## BB#128:
	leaq	8(%r13,%r14), %r12
	callq	___error
	movl	(%rax), %ebx
	movq	-880(%rbp), %rdi        ## 8-byte Reload
	callq	_quotearg_colon
	movq	%rax, %rcx
	leaq	L_.str75(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	_error
	movl	-896(%rbp), %eax        ## 4-byte Reload
	testb	%al, %al
	je	LBB6_130
## BB#129:
	movl	$2, _exit_status(%rip)
	jmp	LBB6_132
LBB6_130:
	cmpl	$0, _exit_status(%rip)
	jne	LBB6_132
## BB#131:
	movl	$1, _exit_status(%rip)
LBB6_132:                               ## %get_link_name.exit
	movq	(%r12), %r12
	xorl	%edi, %edi
	testq	%r12, %r12
	je	LBB6_146
LBB6_133:                               ## %get_link_name.exit.thread
	movzbl	(%r12), %eax
	cmpl	$47, %eax
	je	LBB6_134
## BB#135:
	movq	-880(%rbp), %r15        ## 8-byte Reload
	movq	%r15, %rdi
	callq	_dir_len
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	LBB6_134
## BB#136:
	movq	%r12, %rdi
	callq	_strlen
	leaq	2(%rbx,%rax), %rdi
	callq	_xmalloc
	movzbl	-1(%rbx,%r15), %ecx
	cmpl	$47, %ecx
	setne	%cl
	movzbl	%cl, %edx
	addq	%rbx, %rdx
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_stpncpy
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	_stpcpy
	jmp	LBB6_137
LBB6_134:
	movq	%r12, %rdi
	callq	_xstrdup
	movq	%rax, %rbx
LBB6_137:                               ## %make_link_name.exit
	xorl	%edi, %edi
	testq	%rbx, %rbx
	je	LBB6_146
## BB#138:
	cmpl	$1, _indicator_style(%rip)
	ja	LBB6_140
## BB#139:
	movzbl	_check_symlink_color(%rip), %eax
	cmpl	$1, %eax
	jne	LBB6_145
LBB6_140:
	leaq	-192(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_rpl_stat
	testl	%eax, %eax
	jne	LBB6_145
## BB#141:
	movb	$1, 177(%r13,%r14)
	movzwl	-188(%rbp), %eax
	cmpl	$0, _format(%rip)
	je	LBB6_144
## BB#142:
	movl	-896(%rbp), %ecx        ## 4-byte Reload
	testb	%cl, %cl
	je	LBB6_144
## BB#143:
	movl	%eax, %ecx
	andl	$61440, %ecx            ## imm = 0xF000
	movzwl	%cx, %ecx
	cmpl	$16384, %ecx            ## imm = 0x4000
	je	LBB6_145
LBB6_144:                               ## %._crit_edge74
	movw	%ax, 164(%r13,%r14)
LBB6_145:                               ## %make_link_name.exit.thread
	movq	%rbx, %rdi
LBB6_146:                               ## %make_link_name.exit.thread
	callq	_free
	movq	-848(%rbp), %rax        ## 8-byte Reload
	movzwl	(%rax), %eax
	movl	-896(%rbp), %r12d       ## 4-byte Reload
LBB6_147:
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$16384, %eax            ## imm = 0x4000
	jne	LBB6_148
## BB#150:
	testb	%r12b, %r12b
	je	LBB6_153
## BB#151:
	movb	_immediate_dirs(%rip), %al
	testb	%al, %al
	je	LBB6_152
LBB6_153:
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movl	$3, (%rax)
	jmp	LBB6_155
LBB6_148:
	cmpl	$40960, %eax            ## imm = 0xA000
	jne	LBB6_154
## BB#149:
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movl	$6, (%rax)
	jmp	LBB6_155
LBB6_154:
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movl	$5, (%rax)
	jmp	LBB6_155
LBB6_152:
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movl	$9, (%rax)
LBB6_155:
	movq	120(%r13,%r14), %rbx
	cmpl	$0, _format(%rip)
	je	LBB6_157
## BB#156:
	movzbl	_print_block_size(%rip), %eax
	cmpl	$1, %eax
	jne	LBB6_159
LBB6_157:
	movl	_human_output_opts(%rip), %edx
	movq	_output_block_size(%rip), %r8
	leaq	-464(%rbp), %rsi
	movl	$512, %ecx              ## imm = 0x200
	movq	%rbx, %rdi
	callq	_human_readable
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	_gnu_mbswidth
	cmpl	%eax, _block_size_width(%rip)
	jge	LBB6_159
## BB#158:
	movl	%eax, _block_size_width(%rip)
LBB6_159:
	cmpl	$0, _format(%rip)
	jne	LBB6_181
## BB#160:
	movb	_print_owner(%rip), %al
	testb	%al, %al
	jne	LBB6_167
## BB#161:
	movl	32(%r13,%r14), %r12d
	movzbl	_numeric_ids(%rip), %eax
	cmpl	$1, %eax
	je	LBB6_164
## BB#162:
	movl	%r12d, %edi
	callq	_getuser
	testq	%rax, %rax
	je	LBB6_164
## BB#163:
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	_gnu_mbswidth
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	testl	%eax, %eax
	cmovsl	%r15d, %eax
	jmp	LBB6_165
LBB6_164:
	leaq	L_.str74(%rip), %rcx
	leaq	-192(%rbp), %r15
	movl	$0, %esi
	movl	$21, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r12, %r8
	callq	___sprintf_chk
	movq	%r15, %rdi
	callq	_strlen
LBB6_165:                               ## %format_user_width.exit
	cmpl	%eax, _owner_width(%rip)
	jge	LBB6_167
## BB#166:
	movl	%eax, _owner_width(%rip)
LBB6_167:
	movb	_print_group(%rip), %al
	testb	%al, %al
	jne	LBB6_174
## BB#168:
	movl	36(%r13,%r14), %r12d
	movzbl	_numeric_ids(%rip), %eax
	cmpl	$1, %eax
	je	LBB6_171
## BB#169:
	movl	%r12d, %edi
	callq	_getgroup
	testq	%rax, %rax
	je	LBB6_171
## BB#170:
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	_gnu_mbswidth
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	testl	%eax, %eax
	cmovsl	%r15d, %eax
	jmp	LBB6_172
LBB6_171:
	leaq	L_.str74(%rip), %rcx
	leaq	-192(%rbp), %r15
	movl	$0, %esi
	movl	$21, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r12, %r8
	callq	___sprintf_chk
	movq	%r15, %rdi
	callq	_strlen
LBB6_172:                               ## %format_group_width.exit
	cmpl	%eax, _group_width(%rip)
	jge	LBB6_174
## BB#173:
	movl	%eax, _group_width(%rip)
LBB6_174:
	movzbl	_print_author(%rip), %eax
	cmpl	$1, %eax
	jne	LBB6_181
## BB#175:
	movl	32(%r13,%r14), %r12d
	movzbl	_numeric_ids(%rip), %eax
	cmpl	$1, %eax
	je	LBB6_178
## BB#176:
	movl	%r12d, %edi
	callq	_getuser
	testq	%rax, %rax
	je	LBB6_178
## BB#177:
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	_gnu_mbswidth
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	testl	%eax, %eax
	cmovsl	%r15d, %eax
	jmp	LBB6_179
LBB6_178:
	leaq	L_.str74(%rip), %rcx
	leaq	-192(%rbp), %r15
	movl	$0, %esi
	movl	$21, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r12, %r8
	callq	___sprintf_chk
	movq	%r15, %rdi
	callq	_strlen
LBB6_179:                               ## %format_user_width.exit58
	cmpl	%eax, _author_width(%rip)
	jge	LBB6_181
## BB#180:
	movl	%eax, _author_width(%rip)
LBB6_181:
	movzbl	_print_scontext(%rip), %eax
	cmpl	$1, %eax
	jne	LBB6_184
## BB#182:
	movq	168(%r13,%r14), %rdi
	callq	_strlen
	cmpl	%eax, _scontext_width(%rip)
	jge	LBB6_184
## BB#183:
	movl	%eax, _scontext_width(%rip)
LBB6_184:
	cmpl	$0, _format(%rip)
	jne	LBB6_196
## BB#185:
	movzwl	22(%r13,%r14), %edi
	leaq	-496(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %rdi
	callq	_strlen
	cmpl	%eax, _nlink_width(%rip)
	jge	LBB6_187
## BB#186:
	movl	%eax, _nlink_width(%rip)
LBB6_187:
	movq	-848(%rbp), %rax        ## 8-byte Reload
	movzwl	(%rax), %eax
	orl	$16384, %eax            ## imm = 0x4000
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$24576, %eax            ## imm = 0x6000
	jne	LBB6_193
## BB#188:
	leaq	40(%r13,%r14), %r15
	movzbl	43(%r13,%r14), %edi
	leaq	-528(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %rdi
	callq	_strlen
	cmpl	%eax, _major_device_number_width(%rip)
	jge	LBB6_190
## BB#189:
	movl	%eax, _major_device_number_width(%rip)
LBB6_190:
	movl	(%r15), %edi
	andq	$16777215, %rdi         ## imm = 0xFFFFFF
	leaq	-528(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %rdi
	callq	_strlen
	movl	_minor_device_number_width(%rip), %ecx
	cmpl	%eax, %ecx
	jge	LBB6_192
## BB#191:
	movl	%eax, _minor_device_number_width(%rip)
	movl	%eax, %ecx
LBB6_192:
	movl	_major_device_number_width(%rip), %eax
	leal	2(%rax,%rcx), %eax
	jmp	LBB6_194
LBB6_193:
	movq	112(%r13,%r14), %rdi
	movl	_file_human_output_opts(%rip), %edx
	movq	_file_output_block_size(%rip), %r8
	leaq	-800(%rbp), %rsi
	movl	$1, %ecx
	callq	_human_readable
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	_gnu_mbswidth
LBB6_194:
	cmpl	%eax, _file_size_width(%rip)
	jge	LBB6_196
## BB#195:
	movl	%eax, _file_size_width(%rip)
LBB6_196:                               ## %is_colored.exit38.thread65
	movzbl	_print_inode(%rip), %eax
	cmpl	$1, %eax
	jne	LBB6_199
## BB#197:
	movq	-872(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rdi
	leaq	-832(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %rdi
	callq	_strlen
	cmpl	%eax, _inode_number_width(%rip)
	jge	LBB6_199
## BB#198:
	movl	%eax, _inode_number_width(%rip)
LBB6_199:
	movq	-840(%rbp), %rdi        ## 8-byte Reload
	callq	_xstrdup
	movq	-864(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, (%rcx)
	incq	_cwd_n_used(%rip)
LBB6_200:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB6_203
## BB#201:
	movq	%rbx, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_203:
	callq	___stack_chk_fail
LBB6_202:
	callq	_xalloc_die
	.cfi_endproc

	.align	4, 0x90
_sort_files:                            ## @sort_files
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp49:
	.cfi_def_cfa_offset 16
Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp51:
	.cfi_def_cfa_register %rbp
	movq	_cwd_n_used(%rip), %rax
	movq	%rax, %rcx
	shrq	%rcx
	addq	%rax, %rcx
	cmpq	%rcx, _sorted_file_alloc(%rip)
	jae	LBB7_3
## BB#1:
	movq	_sorted_file(%rip), %rdi
	callq	_free
	movq	_cwd_n_used(%rip), %rax
	movabsq	$768614336404564651, %rcx ## imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rcx, %rax
	jae	LBB7_16
## BB#2:                                ## %xnmalloc.exit
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	_xmalloc
	movq	%rax, _sorted_file(%rip)
	movq	_cwd_n_used(%rip), %rax
	leaq	(%rax,%rax,2), %rcx
	movq	%rcx, _sorted_file_alloc(%rip)
LBB7_3:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	LBB7_6
## BB#4:
	xorl	%edx, %edx
	.align	4, 0x90
LBB7_5:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rsi
	movq	_cwd_file(%rip), %rdi
	addq	%rcx, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	addq	$192, %rcx
	cmpq	%rdx, %rax
	jne	LBB7_5
LBB7_6:                                 ## %initialize_ordering_vector.exit
	cmpl	$-1, _sort_type(%rip)
	je	LBB7_15
## BB#7:
	leaq	_failed_strcoll(%rip), %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	LBB7_8
## BB#9:
	movl	_sort_type(%rip), %r8d
	cmpl	$3, %r8d
	je	LBB7_17
## BB#10:
	movq	_cwd_n_used(%rip), %rdx
	movl	$1, %r9d
	xorl	%esi, %esi
	testq	%rdx, %rdx
	je	LBB7_14
## BB#11:
	movl	$1, %r9d
	xorl	%edi, %edi
	.align	4, 0x90
LBB7_12:                                ## %.lr.ph.i3
                                        ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rcx
	movq	_cwd_file(%rip), %rax
	addq	%rsi, %rax
	movq	%rax, (%rcx,%rdi,8)
	incq	%rdi
	addq	$192, %rsi
	cmpq	%rdi, %rdx
	jne	LBB7_12
## BB#13:
	movq	%rdx, %rsi
	jmp	LBB7_14
LBB7_8:                                 ## %.initialize_ordering_vector.exit4_crit_edge
	movq	_cwd_n_used(%rip), %rsi
	movl	_sort_type(%rip), %r8d
	xorl	%r9d, %r9d
LBB7_14:                                ## %initialize_ordering_vector.exit4
	movq	_sorted_file(%rip), %rdi
	movzbl	_directories_first(%rip), %r10d
	movzbl	_sort_reverse(%rip), %ecx
	xorl	%edx, %edx
	cmpl	$4, %r8d
	cmovel	_time_type(%rip), %edx
	addl	%r8d, %edx
	shlq	$6, %rdx
	leaq	_sort_functions(%rip), %rax
	addq	%rdx, %rax
	shlq	$5, %r9
	addq	%rax, %r9
	shlq	$4, %rcx
	addq	%r9, %rcx
	movq	(%rcx,%r10,8), %rdx
	callq	_mpsort
LBB7_15:
	popq	%rbp
	retq
LBB7_16:
	callq	_xalloc_die
LBB7_17:
	leaq	L___func__.sort_files(%rip), %rax
	leaq	L_.str2(%rip), %rcx
	leaq	L_.str67(%rip), %r8
	movl	$3600, %edx             ## imm = 0xE10
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rcx
	callq	___assert_rtn
	.cfi_endproc

	.align	4, 0x90
_extract_dirs_from_files:               ## @extract_dirs_from_files
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp55:
	.cfi_def_cfa_offset 16
Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp58:
	.cfi_offset %rbx, -56
Ltmp59:
	.cfi_offset %r12, -48
Ltmp60:
	.cfi_offset %r13, -40
Ltmp61:
	.cfi_offset %r14, -32
Ltmp62:
	.cfi_offset %r15, -24
	movl	%esi, -52(%rbp)         ## 4-byte Spill
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	testq	%rdi, %rdi
	je	LBB8_3
## BB#1:
	movq	_active_dir_set(%rip), %rax
	testq	%rax, %rax
	je	LBB8_3
## BB#2:                                ## %queue_directory.exit
	movl	$32, %edi
	callq	_xmalloc
	movq	%rax, %rbx
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	_xstrdup
	movq	%rax, 8(%rbx)
	movq	$0, (%rbx)
	movb	$0, 16(%rbx)
	movq	_pending_dirs(%rip), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, _pending_dirs(%rip)
LBB8_3:
	movq	_cwd_n_used(%rip), %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	LBB8_20
	.align	4, 0x90
LBB8_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rax
	movq	-8(%rax,%r14,8), %r15
	decq	%r14
	movl	160(%r15), %eax
	cmpl	$3, %eax
	je	LBB8_6
## BB#5:                                ##   in Loop: Header=BB8_4 Depth=1
	cmpl	$9, %eax
	jne	LBB8_27
LBB8_6:                                 ##   in Loop: Header=BB8_4 Depth=1
	movq	(%r15), %r12
	cmpq	$0, -48(%rbp)           ## 8-byte Folded Reload
	je	LBB8_13
## BB#7:                                ##   in Loop: Header=BB8_4 Depth=1
	movq	%r12, %rdi
	callq	_last_component
	movzbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	LBB8_12
## BB#8:                                ## %basename_is_dot_or_dotdot.exit
                                        ##   in Loop: Header=BB8_4 Depth=1
	movzbl	1(%rax), %ecx
	cmpl	$46, %ecx
	movl	$2, %ecx
	je	LBB8_10
## BB#9:                                ## %select.mid
                                        ##   in Loop: Header=BB8_4 Depth=1
	movl	$1, %ecx
LBB8_10:                                ## %select.end
                                        ##   in Loop: Header=BB8_4 Depth=1
	movb	(%rax,%rcx), %al
	testb	%al, %al
	je	LBB8_27
## BB#11:                               ## %select.end
                                        ##   in Loop: Header=BB8_4 Depth=1
	movzbl	%al, %eax
	cmpl	$47, %eax
	je	LBB8_27
	.align	4, 0x90
LBB8_12:                                ## %.thread
                                        ##   in Loop: Header=BB8_4 Depth=1
	movzbl	(%r12), %eax
	cmpl	$47, %eax
	jne	LBB8_21
LBB8_13:                                ## %.critedge
                                        ##   in Loop: Header=BB8_4 Depth=1
	movq	8(%r15), %r13
	movl	$32, %edi
	callq	_xmalloc
	movq	%rax, %rbx
	testq	%r13, %r13
	movl	$0, %eax
	je	LBB8_15
## BB#14:                               ##   in Loop: Header=BB8_4 Depth=1
	movq	%r13, %rdi
	callq	_xstrdup
LBB8_15:                                ##   in Loop: Header=BB8_4 Depth=1
	movq	%rax, 8(%rbx)
	testq	%r12, %r12
	movl	$0, %eax
	je	LBB8_17
## BB#16:                               ##   in Loop: Header=BB8_4 Depth=1
	movq	%r12, %rdi
	callq	_xstrdup
LBB8_17:                                ## %queue_directory.exit3
                                        ##   in Loop: Header=BB8_4 Depth=1
	movq	%rax, (%rbx)
	movl	-52(%rbp), %eax         ## 4-byte Reload
	movb	%al, 16(%rbx)
	movq	_pending_dirs(%rip), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, _pending_dirs(%rip)
	jmp	LBB8_26
LBB8_21:                                ##   in Loop: Header=BB8_4 Depth=1
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%r12, %rsi
	callq	_file_name_concat
	movq	%rax, %r12
	movq	8(%r15), %r13
	movl	$32, %edi
	callq	_xmalloc
	movq	%rax, %rbx
	testq	%r13, %r13
	movl	$0, %eax
	je	LBB8_23
## BB#22:                               ##   in Loop: Header=BB8_4 Depth=1
	movq	%r13, %rdi
	callq	_xstrdup
LBB8_23:                                ##   in Loop: Header=BB8_4 Depth=1
	movq	%rax, 8(%rbx)
	testq	%r12, %r12
	movl	$0, %eax
	je	LBB8_25
## BB#24:                               ##   in Loop: Header=BB8_4 Depth=1
	movq	%r12, %rdi
	callq	_xstrdup
LBB8_25:                                ## %queue_directory.exit4
                                        ##   in Loop: Header=BB8_4 Depth=1
	movq	%rax, (%rbx)
	movl	-52(%rbp), %eax         ## 4-byte Reload
	movb	%al, 16(%rbx)
	movq	_pending_dirs(%rip), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, _pending_dirs(%rip)
	movq	%r12, %rdi
	callq	_free
LBB8_26:                                ##   in Loop: Header=BB8_4 Depth=1
	cmpl	$9, 160(%r15)
	jne	LBB8_27
## BB#28:                               ##   in Loop: Header=BB8_4 Depth=1
	movq	(%r15), %rdi
	callq	_free
	movq	8(%r15), %rdi
	callq	_free
LBB8_27:                                ## %.backedge
                                        ##   in Loop: Header=BB8_4 Depth=1
	testq	%r14, %r14
	jne	LBB8_4
## BB#18:                               ## %.preheader
	movq	_cwd_n_used(%rip), %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	LBB8_20
	.align	4, 0x90
LBB8_19:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movq	%rdi, (%rsi,%rax,8)
	cmpl	$9, 160(%rdi)
	setne	%bl
	movzbl	%bl, %esi
	addq	%rsi, %rax
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	LBB8_19
LBB8_20:                                ## %._crit_edge
	movq	%rax, _cwd_n_used(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_current_files:                   ## @print_current_files
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp66:
	.cfi_def_cfa_offset 16
Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp68:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$3928, %rsp             ## imm = 0xF58
Ltmp69:
	.cfi_offset %rbx, -56
Ltmp70:
	.cfi_offset %r12, -48
Ltmp71:
	.cfi_offset %r13, -40
Ltmp72:
	.cfi_offset %r14, -32
Ltmp73:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	_format(%rip), %eax
	cmpq	$4, %rax
	ja	LBB9_175
## BB#1:
	leaq	LJTI9_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB9_2:                                 ## %.preheader31
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB9_175
## BB#3:                                ## %.lr.ph34
	leaq	-3200(%rbp), %r15
	movq	___stdoutp@GOTPCREL(%rip), %r13
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB9_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_91 Depth 2
                                        ##     Child Loop BB9_124 Depth 2
	cmpb	$0, _print_with_color(%rip)
	je	LBB9_65
## BB#5:                                ##   in Loop: Header=BB9_4 Depth=1
	movq	_color_indicator+64(%rip), %rax
	testq	%rax, %rax
	je	LBB9_65
## BB#6:                                ##   in Loop: Header=BB9_4 Depth=1
	movq	_color_indicator+72(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB9_7
## BB#48:                               ## %is_colored.exit.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movl	$2, %edx
	leaq	L_.str233(%rip), %rsi
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB9_49
	jmp	LBB9_65
	.align	4, 0x90
LBB9_7:                                 ##   in Loop: Header=BB9_4 Depth=1
	cmpq	$1, %rax
	jne	LBB9_49
## BB#8:                                ##   in Loop: Header=BB9_4 Depth=1
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB9_65
	.align	4, 0x90
LBB9_49:                                ## %is_colored.exit.thread.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB9_54
## BB#50:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB9_52
## BB#51:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB9_53
LBB9_52:                                ##   in Loop: Header=BB9_4 Depth=1
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB9_53:                                ## %put_indicator.exit19
                                        ##   in Loop: Header=BB9_4 Depth=1
	callq	_put_indicator
LBB9_54:                                ## %put_indicator.exit19
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%r13), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB9_59
## BB#55:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB9_57
## BB#56:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB9_58
LBB9_57:                                ##   in Loop: Header=BB9_4 Depth=1
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB9_58:                                ## %put_indicator.exit21
                                        ##   in Loop: Header=BB9_4 Depth=1
	callq	_put_indicator
LBB9_59:                                ## %put_indicator.exit21
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	_color_indicator+72(%rip), %rdi
	movq	_color_indicator+64(%rip), %rsi
	movq	(%r13), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB9_64
## BB#60:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB9_62
## BB#61:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB9_63
LBB9_62:                                ##   in Loop: Header=BB9_4 Depth=1
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB9_63:                                ## %put_indicator.exit
                                        ##   in Loop: Header=BB9_4 Depth=1
	callq	_put_indicator
LBB9_64:                                ## %put_indicator.exit
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%r13), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB9_65:                                ## %set_normal_color.exit
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	_sorted_file(%rip), %rax
	movq	%rbx, -3928(%rbp)       ## 8-byte Spill
	movq	(%rax,%rbx,8), %r12
	cmpb	$0, 176(%r12)
	je	LBB9_67
## BB#66:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	16(%r12), %rdi
	leaq	-1068(%rbp), %rsi
	callq	_filemodestring
	jmp	LBB9_68
	.align	4, 0x90
LBB9_67:                                ##   in Loop: Header=BB9_4 Depth=1
	movl	160(%r12), %eax
	leaq	_filetype_letter(%rip), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -1068(%rbp)
	leaq	-1067(%rbp), %rax
	movabsq	$4557430888798830399, %rcx ## imm = 0x3F3F3F3F3F3F3F3F
	movq	%rcx, (%rax)
	movw	$16191, 8(%rax)         ## imm = 0x3F3F
	movb	$0, -1057(%rbp)
LBB9_68:                                ##   in Loop: Header=BB9_4 Depth=1
	cmpb	$0, _any_has_acl(%rip)
	je	LBB9_69
## BB#70:                               ##   in Loop: Header=BB9_4 Depth=1
	movl	180(%r12), %eax
	cmpl	$2, %eax
	jne	LBB9_71
## BB#73:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	$43, -1058(%rbp)
	jmp	LBB9_74
	.align	4, 0x90
LBB9_69:                                ##   in Loop: Header=BB9_4 Depth=1
	movb	$0, -1058(%rbp)
	jmp	LBB9_74
	.align	4, 0x90
LBB9_71:                                ##   in Loop: Header=BB9_4 Depth=1
	cmpl	$1, %eax
	jne	LBB9_74
## BB#72:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	$46, -1058(%rbp)
	.align	4, 0x90
LBB9_74:                                ##   in Loop: Header=BB9_4 Depth=1
	movl	_time_type(%rip), %eax
	testl	%eax, %eax
	je	LBB9_80
## BB#75:                               ##   in Loop: Header=BB9_4 Depth=1
	cmpl	$2, %eax
	jne	LBB9_76
## BB#78:                               ##   in Loop: Header=BB9_4 Depth=1
	movups	48(%r12), %xmm0
	jmp	LBB9_81
	.align	4, 0x90
LBB9_80:                                ##   in Loop: Header=BB9_4 Depth=1
	movups	64(%r12), %xmm0
	jmp	LBB9_81
	.align	4, 0x90
LBB9_76:                                ##   in Loop: Header=BB9_4 Depth=1
	cmpl	$1, %eax
	jne	LBB9_79
## BB#77:                               ##   in Loop: Header=BB9_4 Depth=1
	movups	80(%r12), %xmm0
LBB9_81:                                ##   in Loop: Header=BB9_4 Depth=1
	movaps	%xmm0, -3920(%rbp)
	movzbl	_print_inode(%rip), %eax
	cmpl	$1, %eax
	movq	%r15, %r13
	jne	LBB9_86
## BB#82:                               ##   in Loop: Header=BB9_4 Depth=1
	movl	_inode_number_width(%rip), %ebx
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %r9
	je	LBB9_85
## BB#83:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	leaq	L_.str57(%rip), %r9
	je	LBB9_85
## BB#84:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	-3232(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %r9
LBB9_85:                                ## %format_inode.exit.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	xorl	%esi, %esi
	movl	$2123, %edx             ## imm = 0x84B
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str56(%rip), %rcx
	movl	%ebx, %r8d
	callq	___sprintf_chk
	movq	%r15, %rdi
	callq	_strlen
	leaq	-3200(%rbp,%rax), %r13
LBB9_86:                                ##   in Loop: Header=BB9_4 Depth=1
	movzbl	_print_block_size(%rip), %eax
	cmpl	$1, %eax
	jne	LBB9_93
## BB#87:                               ##   in Loop: Header=BB9_4 Depth=1
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %rbx
	je	LBB9_89
## BB#88:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	120(%r12), %rdi
	movl	_human_output_opts(%rip), %edx
	movq	_output_block_size(%rip), %r8
	movl	$512, %ecx              ## imm = 0x200
	leaq	-3504(%rbp), %rsi
	callq	_human_readable
	movq	%rax, %rbx
LBB9_89:                                ##   in Loop: Header=BB9_4 Depth=1
	movl	_block_size_width(%rip), %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_gnu_mbswidth
	movl	%r14d, %ecx
	subl	%eax, %ecx
	testl	%ecx, %ecx
	jle	LBB9_91
## BB#90:                               ## %.lr.ph40.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	decl	%r14d
	subl	%eax, %r14d
	leaq	1(%r14), %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	callq	_memset
	leaq	1(%r13,%r14), %r13
	.align	4, 0x90
LBB9_91:                                ## %.preheader36.i
                                        ##   Parent Loop BB9_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %al
	incq	%rbx
	movb	%al, (%r13)
	incq	%r13
	testb	%al, %al
	jne	LBB9_91
## BB#92:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	$32, -1(%r13)
LBB9_93:                                ##   in Loop: Header=BB9_4 Depth=1
	movl	_nlink_width(%rip), %ebx
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %rax
	je	LBB9_95
## BB#94:                               ##   in Loop: Header=BB9_4 Depth=1
	movzwl	22(%r12), %edi
	leaq	-3536(%rbp), %rsi
	callq	_umaxtostr
LBB9_95:                                ##   in Loop: Header=BB9_4 Depth=1
	movq	%rax, (%rsp)
	movl	$0, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	leaq	L_.str58(%rip), %rcx
	movq	%r13, %rdi
	leaq	-1068(%rbp), %r8
	movl	%ebx, %r9d
	callq	___sprintf_chk
	movq	%r13, %rdi
	callq	_strlen
	movq	%rax, %rbx
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB9_97
## BB#96:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str59(%rip), %rdi
	callq	_fputs
	addq	$2, _dired_pos(%rip)
LBB9_97:                                ##   in Loop: Header=BB9_4 Depth=1
	addq	%rbx, %r13
	movzbl	_print_owner(%rip), %eax
	cmpl	$1, %eax
	jne	LBB9_101
## BB#98:                               ##   in Loop: Header=BB9_4 Depth=1
	movzbl	_print_group(%rip), %eax
	cmpl	$1, %eax
	jne	LBB9_101
## BB#99:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	_print_author(%rip), %al
	testb	%al, %al
	jne	LBB9_101
## BB#100:                              ##   in Loop: Header=BB9_4 Depth=1
	movzbl	_print_scontext(%rip), %eax
	cmpl	$1, %eax
	jne	LBB9_118
	.align	4, 0x90
LBB9_101:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	%r15, %rdi
	callq	_fputs
	subq	%r15, %r13
	addq	%r13, _dired_pos(%rip)
	movb	_print_owner(%rip), %al
	testb	%al, %al
	jne	LBB9_106
## BB#102:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	32(%r12), %ebx
	movl	_owner_width(%rip), %r14d
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %rdi
	je	LBB9_105
## BB#103:                              ##   in Loop: Header=BB9_4 Depth=1
	movb	_numeric_ids(%rip), %al
	testb	%al, %al
	movl	$0, %edi
	jne	LBB9_105
## BB#104:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	%ebx, %edi
	callq	_getuser
	movq	%rax, %rdi
LBB9_105:                               ## %format_user.exit.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	_format_user_or_group
LBB9_106:                               ##   in Loop: Header=BB9_4 Depth=1
	movb	_print_group(%rip), %al
	testb	%al, %al
	jne	LBB9_111
## BB#107:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	36(%r12), %ebx
	movl	_group_width(%rip), %r14d
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %rdi
	je	LBB9_110
## BB#108:                              ##   in Loop: Header=BB9_4 Depth=1
	movb	_numeric_ids(%rip), %al
	testb	%al, %al
	movl	$0, %edi
	jne	LBB9_110
## BB#109:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	%ebx, %edi
	callq	_getgroup
	movq	%rax, %rdi
LBB9_110:                               ## %format_group.exit.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	_format_user_or_group
LBB9_111:                               ##   in Loop: Header=BB9_4 Depth=1
	movzbl	_print_author(%rip), %eax
	cmpl	$1, %eax
	jne	LBB9_116
## BB#112:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	32(%r12), %ebx
	movl	_author_width(%rip), %r14d
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %rdi
	je	LBB9_115
## BB#113:                              ##   in Loop: Header=BB9_4 Depth=1
	movb	_numeric_ids(%rip), %al
	testb	%al, %al
	movl	$0, %edi
	jne	LBB9_115
## BB#114:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	%ebx, %edi
	callq	_getuser
	movq	%rax, %rdi
LBB9_115:                               ## %format_user.exit23.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	_format_user_or_group
LBB9_116:                               ##   in Loop: Header=BB9_4 Depth=1
	movzbl	_print_scontext(%rip), %eax
	cmpl	$1, %eax
	movq	%r15, %r13
	jne	LBB9_118
## BB#117:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	168(%r12), %rdi
	movl	_scontext_width(%rip), %edx
	xorl	%esi, %esi
	callq	_format_user_or_group
	movq	%r15, %r13
LBB9_118:                               ##   in Loop: Header=BB9_4 Depth=1
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %rbx
	je	LBB9_122
## BB#119:                              ##   in Loop: Header=BB9_4 Depth=1
	movzwl	20(%r12), %eax
	orl	$16384, %eax            ## imm = 0x4000
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$24576, %eax            ## imm = 0x6000
	jne	LBB9_121
## BB#120:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	_file_size_width(%rip), %ebx
	movl	_major_device_number_width(%rip), %eax
	addl	$-2, %ebx
	subl	%eax, %ebx
	subl	_minor_device_number_width(%rip), %ebx
	movl	$0, %ecx
	cmovsl	%ecx, %ebx
	addl	%eax, %ebx
	movzbl	43(%r12), %edi
	leaq	-3568(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, -3936(%rbp)       ## 8-byte Spill
	movq	%r15, %r14
	movl	_minor_device_number_width(%rip), %r15d
	movl	40(%r12), %edi
	andq	$16777215, %rdi         ## imm = 0xFFFFFF
	leaq	-3600(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%r14, %r15
	movl	$0, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	leaq	L_.str60(%rip), %rcx
	movl	%ebx, %r8d
	movq	%r13, %rdi
	movq	-3936(%rbp), %r9        ## 8-byte Reload
	callq	___sprintf_chk
	movl	_file_size_width(%rip), %eax
	incl	%eax
	cltq
	addq	%rax, %r13
	jmp	LBB9_126
	.align	4, 0x90
LBB9_121:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	112(%r12), %rdi
	movl	_file_human_output_opts(%rip), %edx
	movq	_file_output_block_size(%rip), %r8
	movl	$1, %ecx
	leaq	-3872(%rbp), %rsi
	callq	_human_readable
	movq	%rax, %rbx
LBB9_122:                               ## %.thread49.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movl	_file_size_width(%rip), %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_gnu_mbswidth
	movl	%r14d, %ecx
	subl	%eax, %ecx
	testl	%ecx, %ecx
	jle	LBB9_124
## BB#123:                              ## %.lr.ph.i13
                                        ##   in Loop: Header=BB9_4 Depth=1
	decl	%r14d
	subl	%eax, %r14d
	leaq	1(%r14), %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	callq	_memset
	leaq	1(%r13,%r14), %r13
	.align	4, 0x90
LBB9_124:                               ## %.preheader.i14
                                        ##   Parent Loop BB9_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %al
	incq	%rbx
	movb	%al, (%r13)
	incq	%r13
	testb	%al, %al
	jne	LBB9_124
## BB#125:                              ##   in Loop: Header=BB9_4 Depth=1
	movb	$32, -1(%r13)
LBB9_126:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	-3920(%rbp), %rdi
	callq	_localtime
	movq	%rax, %r14
	movb	$1, (%r13)
	cmpb	$0, 176(%r12)
	je	LBB9_144
## BB#127:                              ##   in Loop: Header=BB9_4 Depth=1
	testq	%r14, %r14
	je	LBB9_144
## BB#128:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	_current_time(%rip), %rax
	movq	-3920(%rbp), %rsi
	cmpq	%rsi, %rax
	jl	LBB9_131
## BB#129:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	_current_time+8(%rip), %rdx
	movq	-3912(%rbp), %rcx
	jg	LBB9_132
## BB#130:                              ## %timespec_cmp.exit.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	cmpl	%ecx, %edx
	jns	LBB9_132
	.align	4, 0x90
LBB9_131:                               ## %timespec_cmp.exit.thread.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	leaq	_current_time(%rip), %rdi
	callq	_gettime
	movq	_current_time(%rip), %rax
	movq	_current_time+8(%rip), %rdx
	movq	-3920(%rbp), %rsi
	movq	-3912(%rbp), %rcx
LBB9_132:                               ## %timespec_cmp.exit.thread26.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	leaq	-15778476(%rax), %rdi
	cmpq	%rsi, %rdi
	jl	LBB9_137
## BB#133:                              ##   in Loop: Header=BB9_4 Depth=1
	cmpq	%rsi, %rdi
	jle	LBB9_135
## BB#134:                              ##   in Loop: Header=BB9_4 Depth=1
	xorl	%edi, %edi
	jmp	LBB9_141
LBB9_135:                               ## %timespec_cmp.exit24.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	cmpl	%ecx, %edx
	js	LBB9_137
## BB#136:                              ##   in Loop: Header=BB9_4 Depth=1
	xorl	%edi, %edi
	jmp	LBB9_141
	.align	4, 0x90
LBB9_137:                               ## %timespec_cmp.exit24.thread.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movb	$1, %dil
	cmpq	%rax, %rsi
	jl	LBB9_141
## BB#138:                              ##   in Loop: Header=BB9_4 Depth=1
	cmpq	%rax, %rsi
	jle	LBB9_140
## BB#139:                              ##   in Loop: Header=BB9_4 Depth=1
	xorl	%edi, %edi
	jmp	LBB9_141
LBB9_140:                               ##   in Loop: Header=BB9_4 Depth=1
	movl	%ecx, %edi
	subl	%edx, %edi
	shrl	$31, %edi
	.align	4, 0x90
LBB9_141:                               ## %timespec_cmp.exit24.thread27.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movzbl	%dil, %eax
	leaq	_long_time_format(%rip), %rdx
	movq	(%rdx,%rax,8), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
                                        ## kill: ECX<def> ECX<kill> RCX<kill>
	callq	_align_nstrftime
	testq	%rax, %rax
	jne	LBB9_143
## BB#142:                              ## %.thread.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	cmpb	$0, (%r13)
	movl	$0, %eax
	je	LBB9_143
	.align	4, 0x90
LBB9_144:                               ## %.thread.thread.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movl	_long_time_expected_width.width(%rip), %ebx
	testl	%ebx, %ebx
	jns	LBB9_151
## BB#145:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	$0, -3504(%rbp)
	leaq	-3504(%rbp), %rdi
	callq	_localtime
	testq	%rax, %rax
	je	LBB9_148
## BB#146:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	_long_time_format(%rip), %rsi
	xorl	%ecx, %ecx
	leaq	-1056(%rbp), %rdi
	movq	%rax, %rdx
	callq	_align_nstrftime
	testq	%rax, %rax
	je	LBB9_148
## BB#147:                              ##   in Loop: Header=BB9_4 Depth=1
	xorl	%edx, %edx
	leaq	-1056(%rbp), %rdi
	movq	%rax, %rsi
	callq	_mbsnwidth
	movl	%eax, %ebx
	movl	%ebx, _long_time_expected_width.width(%rip)
	jmp	LBB9_149
	.align	4, 0x90
LBB9_143:                               ##   in Loop: Header=BB9_4 Depth=1
	leaq	1(%r13,%rax), %rbx
	movw	$32, (%r13,%rax)
	jmp	LBB9_154
LBB9_148:                               ## %thread-pre-split.i.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movl	_long_time_expected_width.width(%rip), %ebx
LBB9_149:                               ##   in Loop: Header=BB9_4 Depth=1
	testl	%ebx, %ebx
	jns	LBB9_151
## BB#150:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	$0, _long_time_expected_width.width(%rip)
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB9_151:                               ## %long_time_expected_width.exit.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	cmpb	$0, 176(%r12)
	leaq	L_.str57(%rip), %r9
	je	LBB9_153
## BB#152:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	-3920(%rbp), %rdi
	leaq	-3904(%rbp), %rsi
	callq	_imaxtostr
	movq	%rax, %r9
LBB9_153:                               ##   in Loop: Header=BB9_4 Depth=1
	xorl	%esi, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	L_.str56(%rip), %rcx
	movl	%ebx, %r8d
	callq	___sprintf_chk
	movq	%r13, %rdi
	callq	_strlen
	movq	%rax, %rbx
	addq	%r13, %rbx
LBB9_154:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	___stdoutp@GOTPCREL(%rip), %r13
	movq	(%r13), %rsi
	movq	%r15, %rdi
	callq	_fputs
	subq	%r15, %rbx
	addq	%rbx, _dired_pos(%rip)
	xorl	%esi, %esi
	movq	%r12, %rdi
	leaq	_dired_obstack(%rip), %rdx
	movq	%rbx, %rcx
	callq	_print_name_with_quoting
	movq	%rax, %r14
	movl	160(%r12), %edx
	cmpl	$6, %edx
	jne	LBB9_169
## BB#155:                              ##   in Loop: Header=BB9_4 Depth=1
	cmpq	$0, 8(%r12)
	je	LBB9_171
## BB#156:                              ##   in Loop: Header=BB9_4 Depth=1
	movq	(%r13), %rsi
	leaq	L_.str61(%rip), %rdi
	callq	_fputs
	addq	$4, _dired_pos(%rip)
	leaq	4(%rbx,%r14), %rcx
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	_print_name_with_quoting
	movl	_indicator_style(%rip), %eax
	testl	%eax, %eax
	je	LBB9_171
## BB#157:                              ##   in Loop: Header=BB9_4 Depth=1
	movzwl	164(%r12), %edx
	movl	%edx, %ecx
	andl	$61440, %ecx            ## imm = 0xF000
	movl	$47, %edi
	cmpl	$16384, %ecx            ## imm = 0x4000
	je	LBB9_165
## BB#158:                              ##   in Loop: Header=BB9_4 Depth=1
	movzwl	%cx, %ecx
	cmpl	$32768, %ecx            ## imm = 0x8000
	jne	LBB9_161
## BB#159:                              ##   in Loop: Header=BB9_4 Depth=1
	testb	$73, %dl
	je	LBB9_171
## BB#160:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	$42, %edi
	cmpl	$3, %eax
	je	LBB9_165
	jmp	LBB9_171
	.align	4, 0x90
LBB9_169:                               ##   in Loop: Header=BB9_4 Depth=1
	cmpl	$0, _indicator_style(%rip)
	je	LBB9_171
## BB#170:                              ##   in Loop: Header=BB9_4 Depth=1
	movzwl	20(%r12), %esi
	movzbl	176(%r12), %edi
	callq	_print_type_indicator
	jmp	LBB9_171
LBB9_161:                               ##   in Loop: Header=BB9_4 Depth=1
	cmpl	$1, %eax
	je	LBB9_171
## BB#162:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	$64, %edi
	cmpl	$40960, %ecx            ## imm = 0xA000
	je	LBB9_165
## BB#163:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	$124, %edi
	cmpl	$4096, %ecx             ## imm = 0x1000
	je	LBB9_165
## BB#164:                              ##   in Loop: Header=BB9_4 Depth=1
	movl	$61, %edi
	cmpl	$49152, %ecx            ## imm = 0xC000
	jne	LBB9_171
LBB9_165:                               ##   in Loop: Header=BB9_4 Depth=1
	movq	(%r13), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB9_167
## BB#166:                              ##   in Loop: Header=BB9_4 Depth=1
	cmpl	40(%rsi), %eax
	jle	LBB9_168
LBB9_167:                               ## %._crit_edge.i.i.i
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%dil, (%rax)
	incq	_dired_pos(%rip)
	jmp	LBB9_171
LBB9_168:                               ##   in Loop: Header=BB9_4 Depth=1
	callq	___swbuf
	incq	_dired_pos(%rip)
	.align	4, 0x90
LBB9_171:                               ## %print_long_format.exit
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	(%r13), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB9_173
## BB#172:                              ## %._crit_edge.i15
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB9_174
	.align	4, 0x90
LBB9_173:                               ##   in Loop: Header=BB9_4 Depth=1
	movl	$10, %edi
	callq	___swbuf
LBB9_174:                               ## %__sputc.exit17
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	-3928(%rbp), %rbx       ## 8-byte Reload
	incq	_dired_pos(%rip)
	incq	%rbx
	cmpq	_cwd_n_used(%rip), %rbx
	jb	LBB9_4
	jmp	LBB9_175
LBB9_9:                                 ## %.preheader
	xorl	%ebx, %ebx
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB9_175
## BB#10:
	movq	___stdoutp@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB9_11:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%rbx,8), %rdi
	xorl	%esi, %esi
	callq	_print_file_name_and_frills
	movq	(%r14), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB9_13
## BB#12:                               ## %._crit_edge.i
                                        ##   in Loop: Header=BB9_11 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB9_14
	.align	4, 0x90
LBB9_13:                                ##   in Loop: Header=BB9_11 Depth=1
	movl	$10, %edi
	callq	___swbuf
LBB9_14:                                ## %__sputc.exit
                                        ##   in Loop: Header=BB9_11 Depth=1
	incq	%rbx
	cmpq	_cwd_n_used(%rip), %rbx
	jb	LBB9_11
	jmp	LBB9_175
LBB9_15:
	movl	$1, %edi
	callq	_calculate_columns
	movq	%rax, %rcx
	movq	_cwd_n_used(%rip), %rax
	xorl	%edx, %edx
	divq	%rcx
	testq	%rdx, %rdx
	setne	%dl
	movzbl	%dl, %r15d
	addq	%rax, %r15
	movq	%r15, -3944(%rbp)       ## 8-byte Spill
	je	LBB9_175
## BB#16:                               ## %.preheader.lr.ph.i
	movq	_column_info(%rip), %rax
	leaq	(%rcx,%rcx,2), %rcx
	leaq	-8(%rax,%rcx,8), %r12
	movq	%r12, -3936(%rbp)       ## 8-byte Spill
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB9_17:                                ## %.preheader.i
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_19 Depth 2
	movq	%rbx, -3952(%rbp)       ## 8-byte Spill
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%rbx,8), %r13
	movq	%r13, %rdi
	callq	_length_of_file_name_and_frills
	movq	%rax, %r14
	movq	(%r12), %rax
	movq	(%rax), %rax
	movq	%rax, -3928(%rbp)       ## 8-byte Spill
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	_print_file_name_and_frills
	leaq	(%rbx,%r15), %r12
	cmpq	_cwd_n_used(%rip), %r12
	jae	LBB9_20
## BB#18:                               ##   in Loop: Header=BB9_17 Depth=1
	movl	$8, %r13d
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB9_19:                                ## %.lr.ph.i
                                        ##   Parent Loop BB9_17 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addq	%rbx, %r14
	addq	-3928(%rbp), %rbx       ## 8-byte Folded Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_indent
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%r12,8), %r15
	movq	%r15, %rdi
	callq	_length_of_file_name_and_frills
	movq	%rax, %r14
	movq	-3936(%rbp), %rax       ## 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%r13), %rax
	movq	%rax, -3928(%rbp)       ## 8-byte Spill
	movq	%r15, %rdi
	movq	-3944(%rbp), %r15       ## 8-byte Reload
	movq	%rbx, %rsi
	callq	_print_file_name_and_frills
	addq	%r15, %r12
	addq	$8, %r13
	cmpq	_cwd_n_used(%rip), %r12
	jb	LBB9_19
LBB9_20:                                ## %._crit_edge.i1
                                        ##   in Loop: Header=BB9_17 Depth=1
	movq	-3936(%rbp), %rbx       ## 8-byte Reload
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB9_22
## BB#21:                               ## %._crit_edge.i.i
                                        ##   in Loop: Header=BB9_17 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB9_23
	.align	4, 0x90
LBB9_22:                                ##   in Loop: Header=BB9_17 Depth=1
	movl	$10, %edi
	callq	___swbuf
LBB9_23:                                ## %__sputc.exit.i
                                        ##   in Loop: Header=BB9_17 Depth=1
	movq	%rbx, %r12
	movq	-3952(%rbp), %rbx       ## 8-byte Reload
	incq	%rbx
	cmpq	%r15, %rbx
	jb	LBB9_17
	jmp	LBB9_175
LBB9_24:
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	_calculate_columns
	movq	%rax, -3928(%rbp)       ## 8-byte Spill
	leaq	(%rax,%rax,2), %rbx
	movq	%rbx, -3936(%rbp)       ## 8-byte Spill
	movq	_column_info(%rip), %r12
	movq	_sorted_file(%rip), %rax
	movq	(%rax), %r14
	movq	%r14, %rdi
	callq	_length_of_file_name_and_frills
	movq	%rax, %r13
	movq	-8(%r12,%rbx,8), %rax
	movq	(%rax), %rbx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_print_file_name_and_frills
	movl	$1, %r14d
	cmpq	$2, _cwd_n_used(%rip)
	jb	LBB9_32
## BB#25:
	movq	-3936(%rbp), %rax       ## 8-byte Reload
	leaq	-8(%r12,%rax,8), %rax
	movq	%rax, -3936(%rbp)       ## 8-byte Spill
	.align	4, 0x90
LBB9_26:                                ## %.lr.ph.i2
                                        ## =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	-3928(%rbp)             ## 8-byte Folded Reload
	movq	%rdx, %r12
	testq	%r12, %r12
	je	LBB9_27
## BB#30:                               ##   in Loop: Header=BB9_26 Depth=1
	addq	%r15, %r13
	addq	%rbx, %r15
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_indent
	jmp	LBB9_31
	.align	4, 0x90
LBB9_27:                                ##   in Loop: Header=BB9_26 Depth=1
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB9_29
## BB#28:                               ## %._crit_edge.i.i3
                                        ##   in Loop: Header=BB9_26 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	xorl	%r15d, %r15d
	jmp	LBB9_31
LBB9_29:                                ##   in Loop: Header=BB9_26 Depth=1
	movl	$10, %edi
	callq	___swbuf
	xorl	%r15d, %r15d
	.align	4, 0x90
LBB9_31:                                ## %__sputc.exit.i4
                                        ##   in Loop: Header=BB9_26 Depth=1
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%r14,8), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_print_file_name_and_frills
	movq	%rbx, %rdi
	callq	_length_of_file_name_and_frills
	movq	%rax, %r13
	movq	-3936(%rbp), %rax       ## 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%r12,8), %rbx
	incq	%r14
	cmpq	_cwd_n_used(%rip), %r14
	jb	LBB9_26
	jmp	LBB9_32
LBB9_34:
	xorl	%r13d, %r13d
	cmpq	$0, _cwd_n_used(%rip)
	je	LBB9_32
## BB#35:
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB9_36:                                ## %.lr.ph.i6
                                        ## =>This Inner Loop Header: Depth=1
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%r13,8), %r14
	movq	%r14, %rdi
	callq	_length_of_file_name_and_frills
	movq	%rax, %r15
	testq	%r13, %r13
	je	LBB9_46
## BB#37:                               ##   in Loop: Header=BB9_36 Depth=1
	leaq	2(%r15,%rbx), %rax
	movq	%rax, -3928(%rbp)       ## 8-byte Spill
	addq	$2, %rbx
	movq	_line_length(%rip), %rcx
	movq	%rcx, -3936(%rbp)       ## 8-byte Spill
	cmpq	%rcx, %rax
	movl	$0, %eax
	cmovaeq	%rax, %rbx
	movl	$10, %r12d
	movl	$32, %eax
	cmovbl	%eax, %r12d
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB9_39
## BB#38:                               ##   in Loop: Header=BB9_36 Depth=1
	cmpl	40(%rsi), %eax
	jle	LBB9_40
LBB9_39:                                ## %._crit_edge.i.i8
                                        ##   in Loop: Header=BB9_36 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$44, (%rax)
	jmp	LBB9_41
LBB9_40:                                ##   in Loop: Header=BB9_36 Depth=1
	movl	$44, %edi
	callq	___swbuf
	.align	4, 0x90
LBB9_41:                                ## %__sputc.exit.i9
                                        ##   in Loop: Header=BB9_36 Depth=1
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB9_44
## BB#42:                               ##   in Loop: Header=BB9_36 Depth=1
	movq	-3936(%rbp), %rcx       ## 8-byte Reload
	cmpq	%rcx, -3928(%rbp)       ## 8-byte Folded Reload
	setae	%cl
	cmpl	40(%rsi), %eax
	jle	LBB9_45
## BB#43:                               ##   in Loop: Header=BB9_36 Depth=1
	testb	%cl, %cl
	jne	LBB9_45
LBB9_44:                                ## %._crit_edge.i1.i10
                                        ##   in Loop: Header=BB9_36 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%r12b, (%rax)
	jmp	LBB9_46
LBB9_45:                                ##   in Loop: Header=BB9_36 Depth=1
	movl	%r12d, %edi
	callq	___swbuf
	.align	4, 0x90
LBB9_46:                                ## %__sputc.exit3.i
                                        ##   in Loop: Header=BB9_36 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_print_file_name_and_frills
	addq	%r15, %rbx
	incq	%r13
	cmpq	_cwd_n_used(%rip), %r13
	jb	LBB9_36
LBB9_32:                                ## %._crit_edge.i5
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB9_47
## BB#33:                               ## %._crit_edge.i1.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB9_175
LBB9_47:
	movl	$10, %edi
	callq	___swbuf
LBB9_175:                               ## %print_many_per_line.exit
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB9_177
## BB#176:                              ## %print_many_per_line.exit
	addq	$3928, %rsp             ## imm = 0xF58
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_177:                               ## %print_many_per_line.exit
	callq	___stack_chk_fail
LBB9_79:
	callq	_abort
	.cfi_endproc
	.align	2, 0x90
L9_0_set_2 = LBB9_2-LJTI9_0
L9_0_set_9 = LBB9_9-LJTI9_0
L9_0_set_15 = LBB9_15-LJTI9_0
L9_0_set_24 = LBB9_24-LJTI9_0
L9_0_set_34 = LBB9_34-LJTI9_0
LJTI9_0:
	.long	L9_0_set_2
	.long	L9_0_set_9
	.long	L9_0_set_15
	.long	L9_0_set_24
	.long	L9_0_set_34

	.align	4, 0x90
_dired_dump_obstack:                    ## @dired_dump_obstack
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp77:
	.cfi_def_cfa_offset 16
Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp79:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp80:
	.cfi_offset %rbx, -56
Ltmp81:
	.cfi_offset %r12, -48
Ltmp82:
	.cfi_offset %r13, -40
Ltmp83:
	.cfi_offset %r14, -32
Ltmp84:
	.cfi_offset %r15, -24
	movq	16(%rsi), %r15
	movq	24(%rsi), %rcx
	movq	%rcx, %r13
	subq	%r15, %r13
	shrq	$3, %r13
	je	LBB10_9
## BB#1:
	cmpq	%r15, %rcx
	jne	LBB10_3
## BB#2:
	orb	$2, 80(%rsi)
LBB10_3:
	movq	48(%rsi), %rax
	addq	%rax, %rcx
	notq	%rax
	andq	%rcx, %rax
	movq	%rax, 24(%rsi)
	movq	8(%rsi), %rdx
	movq	32(%rsi), %r8
	movq	%rax, %rbx
	subq	%rdx, %rbx
	movq	%r8, %rcx
	subq	%rdx, %rcx
	cmpq	%rcx, %rbx
	jbe	LBB10_5
## BB#4:
	movq	%r8, 24(%rsi)
	movq	%r8, %rax
LBB10_5:                                ## %.lr.ph
	movq	%rax, 16(%rsi)
	movq	___stdoutp@GOTPCREL(%rip), %r12
	movq	(%r12), %rsi
	callq	_fputs
	leaq	L_.str216(%rip), %r14
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB10_6:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	incq	%rbx
	cmpq	%r13, %rbx
	jb	LBB10_6
## BB#7:                                ## %._crit_edge
	movq	(%r12), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB10_10
## BB#8:                                ## %._crit_edge.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
LBB10_9:                                ## %__sputc.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_10:
	movl	$10, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	___swbuf                ## TAILCALL
	.cfi_endproc

	.globl	_usage
	.align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp88:
	.cfi_def_cfa_offset 16
Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp90:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp91:
	.cfi_offset %rbx, -48
Ltmp92:
	.cfi_offset %r12, -40
Ltmp93:
	.cfi_offset %r14, -32
Ltmp94:
	.cfi_offset %r15, -24
	movl	%edi, %r14d
	testl	%r14d, %r14d
	jne	LBB11_1
## BB#2:
	movq	_program_name@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str9(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rsi
	leaq	L_.str10(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str54(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str11(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str12(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str13(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str14(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str15(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str16(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str17(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str18(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str19(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str20(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str21(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str22(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str23(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str24(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str25(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str26(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str27(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str28(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str29(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str30(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str53(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str31(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str32(%rip), %rdi
	callq	_fputs
	movq	_ls_mode@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	LBB11_4
## BB#3:
	leaq	L_.str33(%rip), %r12
	jmp	LBB11_5
LBB11_4:
	cmpl	$2, %eax
	leaq	L_.str34(%rip), %rax
	leaq	L_.str35(%rip), %r12
	cmoveq	%rax, %r12
LBB11_5:
	leaq	_emit_ancillary_info.infomap(%rip), %rbx
	leaq	L_.str36(%rip), %rsi
	.align	4, 0x90
LBB11_7:                                ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB11_8
## BB#6:                                ##   in Loop: Header=BB11_7 Depth=1
	movq	16(%rbx), %rsi
	addq	$16, %rbx
	testq	%rsi, %rsi
	jne	LBB11_7
LBB11_8:                                ## %.critedge.i
	movq	8(%rbx), %r15
	testq	%r15, %r15
	cmoveq	%r12, %r15
	leaq	L_.str45(%rip), %rdi
	leaq	L_.str46(%rip), %rsi
	leaq	L_.str47(%rip), %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$6, %edi
	xorl	%esi, %esi
	callq	_setlocale
	testq	%rax, %rax
	je	LBB11_11
## BB#9:
	leaq	L_.str48(%rip), %rsi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_strncmp
	testl	%eax, %eax
	je	LBB11_11
## BB#10:
	leaq	L_.str49(%rip), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	_printf
LBB11_11:                               ## %emit_ancillary_info.exit
	leaq	L_.str50(%rip), %rdi
	leaq	L_.str47(%rip), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	_printf
	cmpq	%r12, %r15
	leaq	L_.str52(%rip), %rax
	leaq	L_.str(%rip), %rdx
	cmoveq	%rax, %rdx
	leaq	L_.str51(%rip), %rdi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	_printf
	movl	%r14d, %edi
	callq	_exit
LBB11_1:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	_program_name@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	L_.str55(%rip), %rsi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	_fprintf
	movl	%r14d, %edi
	callq	_exit
	.cfi_endproc

	.align	4, 0x90
_print_file_name_and_frills:            ## @print_file_name_and_frills
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp98:
	.cfi_def_cfa_offset 16
Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp100:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp              ## imm = 0x120
Ltmp101:
	.cfi_offset %rbx, -48
Ltmp102:
	.cfi_offset %r12, -40
Ltmp103:
	.cfi_offset %r14, -32
Ltmp104:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
	movq	%rax, -40(%rbp)
	cmpb	$0, _print_with_color(%rip)
	je	LBB12_22
## BB#1:
	movq	_color_indicator+64(%rip), %rax
	testq	%rax, %rax
	je	LBB12_22
## BB#2:
	movq	_color_indicator+72(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB12_3
## BB#5:                                ## %is_colored.exit.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB12_6
	jmp	LBB12_22
LBB12_3:
	cmpq	$1, %rax
	jne	LBB12_6
## BB#4:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB12_22
LBB12_6:                                ## %is_colored.exit.thread.i
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB12_11
## BB#7:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB12_9
## BB#8:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB12_10
LBB12_9:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB12_10:                               ## %put_indicator.exit2
	callq	_put_indicator
LBB12_11:                               ## %put_indicator.exit2
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB12_16
## BB#12:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB12_14
## BB#13:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB12_15
LBB12_14:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB12_15:                               ## %put_indicator.exit4
	callq	_put_indicator
LBB12_16:                               ## %put_indicator.exit4
	movq	_color_indicator+72(%rip), %rdi
	movq	_color_indicator+64(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB12_21
## BB#17:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB12_19
## BB#18:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB12_20
LBB12_19:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB12_20:                               ## %put_indicator.exit
	callq	_put_indicator
LBB12_21:                               ## %put_indicator.exit
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB12_22:                               ## %set_normal_color.exit
	movzbl	_print_inode(%rip), %eax
	cmpl	$1, %eax
	jne	LBB12_29
## BB#23:
	xorl	%ebx, %ebx
	cmpl	$4, _format(%rip)
	je	LBB12_25
## BB#24:                               ## %select.mid
	movl	_inode_number_width(%rip), %ebx
LBB12_25:                               ## %select.end
	leaq	L_.str57(%rip), %rdx
	cmpb	$0, 176(%r15)
	je	LBB12_28
## BB#26:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	LBB12_28
## BB#27:
	leaq	-320(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %rdx
LBB12_28:                               ## %format_inode.exit
	leaq	L_.str56(%rip), %rdi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	_printf
LBB12_29:
	movzbl	_print_block_size(%rip), %eax
	cmpl	$1, %eax
	jne	LBB12_36
## BB#30:
	xorl	%ebx, %ebx
	cmpl	$4, _format(%rip)
	je	LBB12_32
## BB#31:                               ## %select.mid8
	movl	_block_size_width(%rip), %ebx
LBB12_32:                               ## %select.end7
	cmpb	$0, 176(%r15)
	je	LBB12_33
## BB#34:
	movq	120(%r15), %rdi
	movl	_human_output_opts(%rip), %edx
	movq	_output_block_size(%rip), %r8
	leaq	-320(%rbp), %rsi
	movl	$512, %ecx              ## imm = 0x200
	callq	_human_readable
	movq	%rax, %rdx
	jmp	LBB12_35
LBB12_33:
	leaq	L_.str57(%rip), %rdx
LBB12_35:
	leaq	L_.str56(%rip), %rdi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	_printf
LBB12_36:
	movzbl	_print_scontext(%rip), %eax
	cmpl	$1, %eax
	jne	LBB12_40
## BB#37:
	xorl	%esi, %esi
	cmpl	$4, _format(%rip)
	je	LBB12_39
## BB#38:                               ## %select.mid10
	movl	_scontext_width(%rip), %esi
LBB12_39:                               ## %select.end9
	movq	168(%r15), %rdx
	leaq	L_.str56(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
LBB12_40:
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	_print_name_with_quoting
	cmpl	$0, _indicator_style(%rip)
	je	LBB12_42
## BB#41:
	movl	160(%r15), %edx
	movzwl	20(%r15), %esi
	movzbl	176(%r15), %edi
	callq	_print_type_indicator
LBB12_42:
	movq	(%r12), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB12_44
## BB#43:
	addq	$288, %rsp              ## imm = 0x120
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB12_44:
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_format_user_or_group:                  ## @format_user_or_group
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp108:
	.cfi_def_cfa_offset 16
Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp110:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp111:
	.cfi_offset %rbx, -56
Ltmp112:
	.cfi_offset %r12, -48
Ltmp113:
	.cfi_offset %r13, -40
Ltmp114:
	.cfi_offset %r14, -32
Ltmp115:
	.cfi_offset %r15, -24
	movl	%edx, %r15d
	movq	%rsi, %rcx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	LBB13_9
## BB#1:
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_gnu_mbswidth
	movl	%eax, %r12d
	movq	___stdoutp@GOTPCREL(%rip), %r13
	movq	(%r13), %rsi
	movq	%r14, %rdi
	callq	_fputs
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r14
	subl	%r12d, %r15d
	cmovsl	%ebx, %r15d
	movslq	%r15d, %r15
	movl	%r15d, %ebx
	notl	%ebx
	.align	4, 0x90
LBB13_2:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r13), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB13_4
## BB#3:                                ##   in Loop: Header=BB13_2 Depth=1
	cmpl	40(%rsi), %eax
	jle	LBB13_5
LBB13_4:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB13_2 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$32, (%rax)
	jmp	LBB13_6
LBB13_5:                                ##   in Loop: Header=BB13_2 Depth=1
	movl	$32, %edi
	callq	___swbuf
	.align	4, 0x90
LBB13_6:                                ## %__sputc.exit
                                        ##   in Loop: Header=BB13_2 Depth=1
	incl	%ebx
	jne	LBB13_2
## BB#7:                                ## %.loopexit
	addq	%r14, %r15
	jmp	LBB13_8
LBB13_9:
	leaq	L_.str65(%rip), %rdi
	xorl	%eax, %eax
	movl	%r15d, %esi
	movq	%rcx, %rdx
	callq	_printf
	movslq	%r15d, %r15
LBB13_8:
	movq	_dired_pos(%rip), %rax
	leaq	1(%r15,%rax), %rax
	movq	%rax, _dired_pos(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_align_nstrftime:                       ## @align_nstrftime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp119:
	.cfi_def_cfa_offset 16
Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp121:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
Ltmp122:
	.cfi_offset %rbx, -56
Ltmp123:
	.cfi_offset %r12, -48
Ltmp124:
	.cfi_offset %r13, -40
Ltmp125:
	.cfi_offset %r14, -32
Ltmp126:
	.cfi_offset %r15, -24
	movl	%ecx, %r9d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, _required_mon_width(%rip)
	je	LBB14_6
## BB#1:
	movl	%r9d, -228(%rbp)        ## 4-byte Spill
	leaq	L_.str62(%rip), %rsi
	movq	%r14, %rdi
	callq	_strstr
	movq	%rax, %r13
	testq	%r13, %r13
	je	LBB14_5
## BB#2:
	cmpl	$11, 16(%r12)
	ja	LBB14_5
## BB#3:
	movq	%r14, %rdi
	callq	_strlen
	cmpq	$101, %rax
	ja	LBB14_5
## BB#4:
	leaq	-224(%rbp), %rbx
	movq	%r13, %rdx
	subq	%r14, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_mempcpy
	movslq	16(%r12), %rcx
	imulq	$61, %rcx, %rcx
	leaq	_abmon(%rip), %rsi
	addq	%rcx, %rsi
	movq	%rax, %rdi
	callq	_stpcpy
	addq	$2, %r13
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	_strcpy
	movq	%rbx, %r14
LBB14_5:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movl	-228(%rbp), %r9d        ## 4-byte Reload
LBB14_6:
	movl	$1001, %esi             ## imm = 0x3E9
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	_nstrftime
	movq	(%rbx), %rcx
	cmpq	-48(%rbp), %rcx
	jne	LBB14_8
## BB#7:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_8:
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_print_name_with_quoting:               ## @print_name_with_quoting
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp130:
	.cfi_def_cfa_offset 16
Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp132:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp133:
	.cfi_offset %rbx, -56
Ltmp134:
	.cfi_offset %r12, -48
Ltmp135:
	.cfi_offset %r13, -40
Ltmp136:
	.cfi_offset %r14, -32
Ltmp137:
	.cfi_offset %r15, -24
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rdi, %rbx
	leaq	8(%rbx), %rax
	testb	%sil, %sil
	cmoveq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	cmpb	$0, _print_with_color(%rip)
	je	LBB15_1
## BB#2:
	movq	%r13, -64(%rbp)         ## 8-byte Spill
	testb	%sil, %sil
	je	LBB15_3
## BB#8:
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	movq	8(%rbx), %r13
	movb	177(%rbx), %al
	movb	%al, %cl
	decb	%cl
	movsbl	%cl, %r14d
	movzwl	164(%rbx), %r12d
	testb	%al, %al
	jne	LBB15_15
## BB#9:
	movq	_color_indicator+192(%rip), %rax
	testq	%rax, %rax
	je	LBB15_10
## BB#11:
	movl	$12, %r15d
	movq	_color_indicator+200(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_12
## BB#14:                               ## %is_colored.exit.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB15_105
	jmp	LBB15_15
LBB15_1:
	xorl	%r15d, %r15d
	jmp	LBB15_212
LBB15_3:
	movq	(%rbx), %r13
	movb	177(%rbx), %al
	movzbl	_color_symlink_as_referent(%rip), %ecx
	cmpl	$1, %ecx
	jne	LBB15_6
## BB#4:
	testb	%al, %al
	je	LBB15_5
## BB#242:
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	leaq	164(%rbx), %rcx
	jmp	LBB15_7
LBB15_5:
	xorl	%eax, %eax
LBB15_6:                                ## %._crit_edge.i
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	leaq	20(%rbx), %rcx
LBB15_7:                                ## %.thread.i
	movzbl	%al, %r14d
	movzwl	(%rcx), %r12d
LBB15_15:                               ## %is_colored.exit.thread87.i
	cmpb	$0, 176(%rbx)
	je	LBB15_83
## BB#16:
	movzwl	%r12w, %ecx
	movl	%ecx, %eax
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$49151, %eax            ## imm = 0xBFFF
	jg	LBB15_78
## BB#17:
	cmpl	$40959, %eax            ## imm = 0x9FFF
	jg	LBB15_92
## BB#18:
	cmpl	$32767, %eax            ## imm = 0x7FFF
	jg	LBB15_29
## BB#19:
	cmpl	$24575, %eax            ## imm = 0x5FFF
	jg	LBB15_80
## BB#20:
	movl	$8, %r15d
	cmpl	$4096, %eax             ## imm = 0x1000
	je	LBB15_105
## BB#21:
	cmpl	$8192, %eax             ## imm = 0x2000
	jne	LBB15_22
## BB#104:
	movl	$11, %r15d
	jmp	LBB15_105
LBB15_83:
	movl	160(%rbx), %eax
	cmpq	$5, %rax
	je	LBB15_87
## BB#84:
	cmpl	$8, %eax
	je	LBB15_87
## BB#85:
	leaq	_print_color_indicator.filetype_indicator(%rip), %rcx
	movl	(%rcx,%rax,4), %r15d
	jmp	LBB15_93
LBB15_78:
	cmpl	$49152, %eax            ## imm = 0xC000
	jne	LBB15_82
## BB#79:
	movl	$9, %r15d
	jmp	LBB15_105
LBB15_92:
	movl	$7, %r15d
	cmpl	$40960, %eax            ## imm = 0xA000
	jne	LBB15_82
LBB15_93:                               ## %.thread95.i
	cmpl	$7, %r15d
	jne	LBB15_105
## BB#94:                               ## %.thread95.i
	testl	%r14d, %r14d
	jne	LBB15_105
## BB#95:
	movb	_color_symlink_as_referent(%rip), %al
	testb	%al, %al
	jne	LBB15_101
## BB#96:
	movq	_color_indicator+208(%rip), %rax
	movl	$7, %r15d
	testq	%rax, %rax
	je	LBB15_105
## BB#97:
	movq	_color_indicator+216(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_98
## BB#100:                              ## %is_colored.exit51.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB15_101
	jmp	LBB15_105
LBB15_29:
	cmpl	$32768, %eax            ## imm = 0x8000
	jne	LBB15_82
## BB#30:
	testb	$8, %ch
	je	LBB15_36
## BB#31:
	movq	_color_indicator+256(%rip), %rax
	testq	%rax, %rax
	je	LBB15_36
## BB#32:
	movl	$16, %r15d
	movq	_color_indicator+264(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_33
## BB#35:                               ## %is_colored.exit11.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	movl	%ecx, %r14d
	callq	_strncmp
	movl	%r14d, %ecx
	testl	%eax, %eax
	jne	LBB15_105
	jmp	LBB15_36
LBB15_10:
	movl	$-1, %r14d
	jmp	LBB15_15
LBB15_12:
	cmpq	$1, %rax
	jne	LBB15_105
## BB#13:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB15_15
	jmp	LBB15_105
LBB15_80:
	cmpl	$24576, %eax            ## imm = 0x6000
	jne	LBB15_82
## BB#81:
	movl	$10, %r15d
	jmp	LBB15_105
LBB15_98:
	cmpq	$1, %rax
	jne	LBB15_101
## BB#99:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB15_105
LBB15_101:                              ## %is_colored.exit51.thread.i
	movl	$13, %r15d
	jmp	LBB15_105
LBB15_22:
	cmpl	$16384, %eax            ## imm = 0x4000
	jne	LBB15_82
## BB#23:
	movl	%ecx, %ebx
	andl	$512, %ebx              ## imm = 0x200
	sete	%r14b
	andl	$2, %ecx
	je	LBB15_60
## BB#24:
	testb	%r14b, %r14b
	jne	LBB15_60
## BB#25:
	movq	_color_indicator+320(%rip), %rax
	testq	%rax, %rax
	je	LBB15_60
## BB#26:
	movl	$20, %r15d
	movq	_color_indicator+328(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_27
## BB#59:                               ## %is_colored.exit36.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	movl	%ecx, %r12d
	callq	_strncmp
	movl	%r12d, %ecx
	testl	%eax, %eax
	jne	LBB15_105
	jmp	LBB15_60
LBB15_82:
	movl	$13, %r15d
	jmp	LBB15_105
LBB15_33:
	cmpq	$1, %rax
	jne	LBB15_105
## BB#34:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB15_105
LBB15_36:                               ## %is_colored.exit11.thread88.i
	testb	$4, %ch
	je	LBB15_42
## BB#37:
	movq	_color_indicator+272(%rip), %rax
	testq	%rax, %rax
	je	LBB15_42
## BB#38:
	movl	$17, %r15d
	movq	_color_indicator+280(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_39
## BB#41:                               ## %is_colored.exit16.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	movl	%ecx, %r14d
	callq	_strncmp
	movl	%r14d, %ecx
	testl	%eax, %eax
	jne	LBB15_105
	jmp	LBB15_42
LBB15_39:
	cmpq	$1, %rax
	jne	LBB15_105
## BB#40:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB15_105
LBB15_42:                               ## %is_colored.exit16.thread89.i
	movq	_color_indicator+336(%rip), %rax
	testq	%rax, %rax
	je	LBB15_48
## BB#43:                               ## %is_colored.exit16.thread89.i
	movq	_color_indicator+344(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_44
## BB#46:                               ## %is_colored.exit21.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	movl	%ecx, %r14d
	callq	_strncmp
	movl	%r14d, %ecx
	testl	%eax, %eax
	jne	LBB15_47
	jmp	LBB15_48
LBB15_44:                               ## %is_colored.exit16.thread89.i
	cmpq	$1, %rax
	jne	LBB15_47
## BB#45:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB15_48
LBB15_47:                               ## %is_colored.exit21.thread.i
	movl	$21, %r15d
	cmpb	$0, 184(%rbx)
	jne	LBB15_105
LBB15_48:                               ## %is_colored.exit21.thread90.i
	testb	$73, %cl
	je	LBB15_54
## BB#49:
	movq	_color_indicator+224(%rip), %rax
	testq	%rax, %rax
	je	LBB15_54
## BB#50:
	movl	$14, %r15d
	movq	_color_indicator+232(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_51
## BB#53:                               ## %is_colored.exit26.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB15_105
	jmp	LBB15_54
LBB15_51:
	cmpq	$1, %rax
	jne	LBB15_105
## BB#52:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB15_105
LBB15_54:                               ## %is_colored.exit26.thread91.i
	movzwl	22(%rbx), %eax
	cmpl	$2, %eax
	jb	LBB15_87
## BB#55:
	movq	_color_indicator+352(%rip), %rax
	testq	%rax, %rax
	je	LBB15_87
## BB#56:
	movl	$22, %r15d
	movq	_color_indicator+360(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_57
## BB#86:                               ## %is_colored.exit31.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB15_105
	jmp	LBB15_87
LBB15_57:
	cmpq	$1, %rax
	jne	LBB15_105
## BB#58:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB15_105
LBB15_87:                               ## %.thread99.i
	movq	%r13, %rdi
	callq	_strlen
	movq	%rax, %rbx
	movq	_color_ext_list(%rip), %r14
	movl	$5, %r15d
	jmp	LBB15_88
	.align	4, 0x90
LBB15_91:                               ##   in Loop: Header=BB15_88 Depth=1
	movq	32(%r14), %r14
LBB15_88:                               ## %.thread99.i
                                        ## =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	LBB15_105
## BB#89:                               ## %.lr.ph.i
                                        ##   in Loop: Header=BB15_88 Depth=1
	movq	(%r14), %rdx
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	jb	LBB15_91
## BB#90:                               ##   in Loop: Header=BB15_88 Depth=1
	addq	%r13, %rdi
	movq	8(%r14), %rsi
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB15_91
## BB#102:                              ## %is_colored.exit51.thread103.i
	testq	%r14, %r14
	je	LBB15_105
## BB#103:
	addq	$16, %r14
	jmp	LBB15_106
LBB15_27:
	cmpq	$1, %rax
	jne	LBB15_105
## BB#28:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jne	LBB15_105
LBB15_60:                               ## %is_colored.exit36.thread92.i
	testl	%ecx, %ecx
	je	LBB15_69
## BB#61:
	movq	_color_indicator+304(%rip), %rax
	testq	%rax, %rax
	je	LBB15_62
## BB#63:
	movq	_color_indicator+312(%rip), %rdi
	cmpq	$2, %rax
	jne	LBB15_64
## BB#66:
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jmp	LBB15_67
LBB15_69:
	movl	$6, %r15d
	testl	%ebx, %ebx
	jne	LBB15_70
	jmp	LBB15_105
LBB15_62:
	xorl	%eax, %eax
	jmp	LBB15_68
LBB15_64:
	movl	$19, %r15d
	cmpq	$1, %rax
	jne	LBB15_105
## BB#65:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
LBB15_67:                               ## %is_colored.exit41.i
	setne	%al
LBB15_68:                               ## %is_colored.exit41.i
	testb	%al, %al
	movl	$19, %ecx
	movl	$6, %r15d
	cmovnel	%ecx, %r15d
	orb	%al, %r14b
	jne	LBB15_105
LBB15_70:
	movq	_color_indicator+288(%rip), %rcx
	testq	%rcx, %rcx
	jne	LBB15_72
## BB#71:
	xorl	%eax, %eax
	jmp	LBB15_77
LBB15_72:
	movq	_color_indicator+296(%rip), %rdi
	cmpq	$1, %rcx
	jne	LBB15_74
## BB#73:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jmp	LBB15_76
LBB15_74:
	movb	$1, %al
	cmpq	$2, %rcx
	jne	LBB15_77
## BB#75:
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
LBB15_76:                               ## %is_colored.exit46.i
	setne	%al
LBB15_77:                               ## %is_colored.exit46.i
	testb	%al, %al
	movl	$18, %eax
	movl	$6, %r15d
	cmovnel	%eax, %r15d
LBB15_105:                              ## %is_colored.exit51.thread103.thread.i
	movl	%r15d, %eax
	shlq	$4, %rax
	leaq	_color_indicator(%rip), %r14
	addq	%rax, %r14
LBB15_106:
	cmpq	$0, 8(%r14)
	movq	_color_indicator+64(%rip), %rax
	movq	_color_indicator+72(%rip), %rdi
	movq	-56(%rbp), %r12         ## 8-byte Reload
	movq	-64(%rbp), %r13         ## 8-byte Reload
	je	LBB15_205
## BB#107:
	testq	%rax, %rax
	je	LBB15_159
## BB#108:
	cmpq	$2, %rax
	jne	LBB15_109
## BB#111:                              ## %is_colored.exit56.i
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
	jne	LBB15_112
	jmp	LBB15_159
LBB15_205:                              ## %print_color_indicator.exit
	testq	%rax, %rax
	jne	LBB15_207
## BB#206:
	xorl	%r15d, %r15d
	jmp	LBB15_212
LBB15_109:
	cmpq	$1, %rax
	jne	LBB15_112
## BB#110:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	je	LBB15_159
LBB15_112:                              ## %is_colored.exit56.thread.i
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_135
## BB#113:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_115
## BB#114:                              ## %put_indicator.exit76.i
	movq	_color_indicator+32(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	jmp	LBB15_134
LBB15_207:                              ## %print_color_indicator.exit
	cmpq	$1, %rax
	jne	LBB15_209
## BB#208:
	movzbl	(%rdi), %eax
	cmpl	$48, %eax
	jmp	LBB15_211
LBB15_209:
	movb	$1, %r15b
	cmpq	$2, %rax
	jne	LBB15_212
## BB#210:
	leaq	L_.str233(%rip), %rsi
	movl	$2, %edx
	callq	_strncmp
	testl	%eax, %eax
LBB15_211:                              ## %is_colored.exit
	setne	%r15b
	jmp	LBB15_212
LBB15_115:                              ## %put_indicator.exit78.i
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_124
## BB#116:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_118
## BB#117:                              ## %put_indicator.exit70
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_123
LBB15_118:                              ## %put_indicator.exit72
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_120
## BB#119:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_120:                              ## %put_indicator.exit74
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_122
## BB#121:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_122:                              ## %put_indicator.exit26
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_123:                              ## %put_indicator.exit80.i
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_124:                              ## %put_indicator.exit80.i
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_133
## BB#125:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_127
## BB#126:                              ## %put_indicator.exit64
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_132
LBB15_127:                              ## %put_indicator.exit66
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_129
## BB#128:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_129:                              ## %put_indicator.exit68
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_131
## BB#130:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_131:                              ## %put_indicator.exit23
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_132:                              ## %put_indicator.exit65.i
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_133:                              ## %put_indicator.exit65.i
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%rbx), %rcx
LBB15_134:                              ## %put_indicator.exit.i.i
	movl	$1, %edx
	callq	_fwrite
LBB15_135:                              ## %put_indicator.exit.i.i
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_158
## BB#136:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_138
## BB#137:                              ## %put_indicator.exit67.i
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_157
LBB15_138:                              ## %put_indicator.exit69.i
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_147
## BB#139:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_141
## BB#140:                              ## %put_indicator.exit77
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_146
LBB15_141:                              ## %put_indicator.exit79
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_143
## BB#142:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_143:                              ## %put_indicator.exit81
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_145
## BB#144:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_145:                              ## %put_indicator.exit31
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_146:                              ## %put_indicator.exit71.i
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_147:                              ## %put_indicator.exit71.i
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_156
## BB#148:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_150
## BB#149:                              ## %put_indicator.exit55
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_155
LBB15_150:                              ## %put_indicator.exit57
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_152
## BB#151:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_152:                              ## %put_indicator.exit59
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_154
## BB#153:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_154:                              ## %put_indicator.exit14
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_155:                              ## %put_indicator.exit.i
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_156:                              ## %put_indicator.exit.i
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_157:                              ## %restore_default_color.exit.i
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_158:                              ## %restore_default_color.exit.i
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_159:                              ## %is_colored.exit56.thread104.i
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_174
## BB#160:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_162
## BB#161:                              ## %put_indicator.exit33
	movq	_color_indicator+32(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	jmp	LBB15_173
LBB15_162:                              ## %put_indicator.exit35
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_167
## BB#163:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_165
## BB#164:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_166
LBB15_165:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_166:                              ## %put_indicator.exit37
	callq	_put_indicator
LBB15_167:                              ## %put_indicator.exit37
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_172
## BB#168:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_170
## BB#169:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_171
LBB15_170:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_171:                              ## %put_indicator.exit16
	callq	_put_indicator
LBB15_172:                              ## %put_indicator.exit16
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%rbx), %rcx
LBB15_173:                              ## %put_indicator.exit58.i
	movl	$1, %edx
	callq	_fwrite
LBB15_174:                              ## %put_indicator.exit58.i
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_189
## BB#175:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_177
## BB#176:                              ## %put_indicator.exit39
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_188
LBB15_177:                              ## %put_indicator.exit41
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_182
## BB#178:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_180
## BB#179:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_181
LBB15_180:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_181:                              ## %put_indicator.exit43
	callq	_put_indicator
LBB15_182:                              ## %put_indicator.exit43
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_187
## BB#183:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_185
## BB#184:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_186
LBB15_185:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_186:                              ## %put_indicator.exit18
	callq	_put_indicator
LBB15_187:                              ## %put_indicator.exit18
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_188:                              ## %put_indicator.exit60.i
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_189:                              ## %put_indicator.exit60.i
	movq	(%r14), %rsi
	movq	8(%r14), %rdi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_204
## BB#190:
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB15_192
## BB#191:                              ## %put_indicator.exit45
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_203
LBB15_192:                              ## %put_indicator.exit
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_197
## BB#193:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_195
## BB#194:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_196
LBB15_195:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_196:                              ## %put_indicator.exit28
	callq	_put_indicator
LBB15_197:                              ## %put_indicator.exit28
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_202
## BB#198:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_200
## BB#199:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_201
LBB15_200:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_201:                              ## %put_indicator.exit20
	callq	_put_indicator
LBB15_202:                              ## %put_indicator.exit20
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_203:                              ## %print_color_indicator.exit.thread
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_204:                              ## %print_color_indicator.exit.thread
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%rbx), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	$1, %r15b
LBB15_212:                              ## %is_colored.exit
	testq	%r13, %r13
	je	LBB15_217
## BB#213:
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB15_217
## BB#214:
	movq	24(%r13), %rax
	movq	32(%r13), %rcx
	subq	%rax, %rcx
	cmpq	$7, %rcx
	ja	LBB15_216
## BB#215:
	movl	$8, %esi
	movq	%r13, %rdi
	callq	__obstack_newchunk
	movq	24(%r13), %rax
LBB15_216:
	movq	_dired_pos(%rip), %rcx
	movq	%rcx, (%rax)
	addq	$8, 24(%r13)
LBB15_217:
	movq	___stdoutp@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	movq	_filename_quoting_options(%rip), %rdx
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	_quote_name
	movq	%rax, %rbx
	addq	%rbx, _dired_pos(%rip)
	testq	%r13, %r13
	je	LBB15_222
## BB#218:
	movzbl	_dired(%rip), %eax
	cmpl	$1, %eax
	jne	LBB15_222
## BB#219:
	movq	24(%r13), %rax
	movq	32(%r13), %rcx
	subq	%rax, %rcx
	cmpq	$7, %rcx
	ja	LBB15_221
## BB#220:
	movl	$8, %esi
	movq	%r13, %rdi
	callq	__obstack_newchunk
	movq	24(%r13), %rax
LBB15_221:
	movq	_dired_pos(%rip), %rcx
	movq	%rcx, (%rax)
	addq	$8, 24(%r13)
LBB15_222:
	callq	_process_signals
	testb	%r15b, %r15b
	je	LBB15_241
## BB#223:
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	movb	_used_color(%rip), %al
	je	LBB15_227
## BB#224:
	testb	$1, %al
	jne	LBB15_226
## BB#225:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
	movq	_color_indicator+40(%rip), %rdi
LBB15_226:                              ## %put_indicator.exit48
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB15_234
LBB15_227:
	testb	$1, %al
	jne	LBB15_229
## BB#228:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_229:                              ## %put_indicator.exit50
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_231
## BB#230:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_231:                              ## %put_indicator.exit52
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_233
## BB#232:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB15_233:                              ## %put_indicator.exit9
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB15_234:                              ## %prep_non_filename_text.exit
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	_fwrite
	movq	_line_length(%rip), %rsi
	xorl	%edx, %edx
	movq	%r12, %rax
	divq	%rsi
	movq	%rax, %rcx
	leaq	-1(%r12,%rbx), %rax
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rax, %rcx
	je	LBB15_241
## BB#235:
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB15_240
## BB#236:
	movb	$1, _used_color(%rip)
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB15_238
## BB#237:
	leaq	_color_indicator+32(%rip), %rdi
	jmp	LBB15_239
LBB15_238:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
LBB15_239:                              ## %put_indicator.exit11
	callq	_put_indicator
LBB15_240:                              ## %put_indicator.exit11
	movq	_color_indicator+376(%rip), %rdi
	movq	_color_indicator+368(%rip), %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB15_241:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_type_indicator:                  ## @print_type_indicator
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp140:
	.cfi_def_cfa_offset 16
Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp142:
	.cfi_def_cfa_register %rbp
	movl	%edi, %ecx
	testb	%cl, %cl
	je	LBB16_5
## BB#1:
	movl	%esi, %eax
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$32768, %eax            ## imm = 0x8000
	je	LBB16_8
## BB#2:
	movl	%esi, %eax
	andl	$-4096, %eax            ## imm = 0xFFFFFFFFFFFFF000
	movl	$47, %edi
	movzwl	%ax, %eax
	cmpl	$16384, %eax            ## imm = 0x4000
	je	LBB16_19
	jmp	LBB16_3
LBB16_5:
	movl	$47, %edi
	cmpl	$3, %edx
	je	LBB16_19
## BB#6:
	cmpl	$9, %edx
	je	LBB16_19
## BB#7:
	cmpl	$5, %edx
	jne	LBB16_3
LBB16_8:
	cmpl	$3, _indicator_style(%rip)
	setne	%dl
	xorl	%eax, %eax
	testb	$73, %sil
	je	LBB16_24
## BB#9:
	xorb	$1, %cl
	orb	%cl, %dl
	movl	$42, %edi
	je	LBB16_19
	jmp	LBB16_24
LBB16_3:
	cmpl	$1, _indicator_style(%rip)
	jne	LBB16_10
## BB#4:
	xorl	%eax, %eax
	jmp	LBB16_24
LBB16_10:
	testb	%cl, %cl
	je	LBB16_18
## BB#11:
	movl	%esi, %eax
	andl	$61440, %eax            ## imm = 0xF000
	movl	$64, %edi
	cmpl	$40960, %eax            ## imm = 0xA000
	je	LBB16_19
## BB#12:
	andl	$-4096, %esi            ## imm = 0xFFFFFFFFFFFFF000
	movzwl	%si, %eax
	movl	$124, %edi
	cmpl	$4096, %eax             ## imm = 0x1000
	je	LBB16_19
## BB#13:
	movl	$61, %edi
	cmpl	$49152, %eax            ## imm = 0xC000
	je	LBB16_19
## BB#14:
	xorl	%eax, %eax
	jmp	LBB16_24
LBB16_18:
	movl	$64, %edi
	cmpl	$6, %edx
	je	LBB16_19
## BB#15:
	movl	$124, %edi
	cmpl	$1, %edx
	je	LBB16_19
## BB#16:
	movl	$61, %edi
	cmpl	$7, %edx
	jne	LBB16_17
LBB16_19:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB16_21
## BB#20:
	cmpl	40(%rsi), %eax
	jle	LBB16_22
LBB16_21:                               ## %._crit_edge.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%dil, (%rax)
	jmp	LBB16_23
LBB16_22:
	callq	___swbuf
LBB16_23:                               ## %__sputc.exit
	incq	_dired_pos(%rip)
	movb	$1, %al
LBB16_24:                               ## %get_type_indicator.exit.thread3
                                        ## kill: AL<def> AL<kill> EAX<kill>
	popq	%rbp
	retq
LBB16_17:
	xorl	%eax, %eax
	jmp	LBB16_24
	.cfi_endproc

	.align	4, 0x90
_quote_name:                            ## @quote_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp146:
	.cfi_def_cfa_offset 16
Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp148:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1208, %rsp             ## imm = 0x4B8
Ltmp149:
	.cfi_offset %rbx, -56
Ltmp150:
	.cfi_offset %r12, -48
Ltmp151:
	.cfi_offset %r13, -40
Ltmp152:
	.cfi_offset %r14, -32
Ltmp153:
	.cfi_offset %r15, -24
	movq	%rcx, %r13
	movq	%r13, -1240(%rbp)       ## 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, -1232(%rbp)       ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-1072(%rbp), %rbx
	movl	$1024, %esi             ## imm = 0x400
	movq	$-1, %rcx
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	_quotearg_buffer
	movq	%rax, %r12
	cmpq	$1024, %r12             ## imm = 0x400
	jb	LBB17_2
## BB#1:
	leaq	1(%r12), %rsi
	movq	%rsp, %rbx
	leaq	16(%r12), %rax
	andq	$-16, %rax
	subq	%rax, %rbx
	movq	%rbx, %rsp
	movq	$-1, %rcx
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	_quotearg_buffer
LBB17_2:
	movzbl	_qmark_funny_chars(%rip), %eax
	cmpl	$1, %eax
	jne	LBB17_42
## BB#3:
	callq	____mb_cur_max
	leaq	(%rbx,%r12), %rcx
	movq	%rcx, -1216(%rbp)       ## 8-byte Spill
	cmpl	$1, %eax
	jle	LBB17_4
## BB#6:                                ## %.preheader19
	movq	%rbx, %rax
	movq	%rax, -1224(%rbp)       ## 8-byte Spill
	xorl	%ebx, %ebx
	testq	%r12, %r12
	movq	%rax, %r12
	jle	LBB17_33
## BB#7:                                ## %.lr.ph23
	xorl	%r14d, %r14d
	leaq	-1200(%rbp), %rdx
	movq	-1224(%rbp), %rax       ## 8-byte Reload
	movq	%rax, %r15
	movq	%rax, %r12
LBB17_8:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB17_13 Depth 2
                                        ##       Child Loop BB17_24 Depth 3
                                        ##       Child Loop BB17_27 Depth 3
	movsbl	(%r15), %eax
	leal	-32(%rax), %ecx
	cmpl	$94, %ecx
	ja	LBB17_12
## BB#9:                                ##   in Loop: Header=BB17_8 Depth=1
	leaq	LJTI17_0(%rip), %rsi
	movslq	(%rsi,%rcx,4), %rcx
	addq	%rsi, %rcx
	jmpq	*%rcx
LBB17_10:                               ##   in Loop: Header=BB17_8 Depth=1
	incq	%r15
	movb	%al, (%r12)
	incq	%r12
	incq	%r14
	movq	%r14, %rbx
	movq	%rdx, %r13
	jmp	LBB17_11
	.align	4, 0x90
LBB17_12:                               ##   in Loop: Header=BB17_8 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1088(%rbp)
	movaps	%xmm0, -1104(%rbp)
	movaps	%xmm0, -1120(%rbp)
	movaps	%xmm0, -1136(%rbp)
	movaps	%xmm0, -1152(%rbp)
	movaps	%xmm0, -1168(%rbp)
	movaps	%xmm0, -1184(%rbp)
	movaps	%xmm0, -1200(%rbp)
	movq	%rdx, %r13
	.align	4, 0x90
LBB17_13:                               ##   Parent Loop BB17_8 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB17_24 Depth 3
                                        ##       Child Loop BB17_27 Depth 3
	movq	-1216(%rbp), %rdx       ## 8-byte Reload
	subq	%r15, %rdx
	leaq	-1204(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	_mbrtowc
	movq	%rax, %r13
	testq	%r13, %r13
	jne	LBB17_14
## BB#17:                               ##   in Loop: Header=BB17_13 Depth=2
	movl	$1, %r13d
LBB17_18:                               ##   in Loop: Header=BB17_13 Depth=2
	movl	-1204(%rbp), %edi
	callq	_rpl_wcwidth
	testl	%eax, %eax
	js	LBB17_30
## BB#19:                               ## %.preheader
                                        ##   in Loop: Header=BB17_13 Depth=2
	testq	%r13, %r13
	je	LBB17_29
## BB#20:                               ## %.lr.ph
                                        ##   in Loop: Header=BB17_13 Depth=2
	movq	%r13, %rdi
	andq	$-32, %rdi
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movl	$0, %ebx
	je	LBB17_26
## BB#21:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB17_13 Depth=2
	leaq	-1(%r15,%r13), %rcx
	cmpq	%rcx, %r12
	ja	LBB17_23
## BB#22:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB17_13 Depth=2
	leaq	-1(%r12,%r13), %rcx
	cmpq	%rcx, %r15
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movl	$0, %ebx
	jbe	LBB17_26
LBB17_23:                               ## %vector.body.preheader
                                        ##   in Loop: Header=BB17_13 Depth=2
	leaq	(%r15,%rdi), %rcx
	movq	%r13, %rdx
	subq	%rdi, %rdx
	leaq	(%r12,%rdi), %rsi
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB17_24:                               ## %vector.body
                                        ##   Parent Loop BB17_8 Depth=1
                                        ##     Parent Loop BB17_13 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movups	(%r15,%rbx), %xmm0
	movups	16(%r15,%rbx), %xmm1
	movups	%xmm0, (%r12,%rbx)
	movups	%xmm1, 16(%r12,%rbx)
	addq	$32, %rbx
	cmpq	%rbx, %rdi
	jne	LBB17_24
## BB#25:                               ##   in Loop: Header=BB17_13 Depth=2
	movq	%rdi, %rbx
LBB17_26:                               ## %middle.block
                                        ##   in Loop: Header=BB17_13 Depth=2
	cmpq	%rbx, %r13
	je	LBB17_28
	.align	4, 0x90
LBB17_27:                               ## %scalar.ph
                                        ##   Parent Loop BB17_8 Depth=1
                                        ##     Parent Loop BB17_13 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movb	(%rcx), %bl
	incq	%rcx
	movb	%bl, (%rsi)
	incq	%rsi
	decq	%rdx
	jne	LBB17_27
LBB17_28:                               ## %._crit_edge
                                        ##   in Loop: Header=BB17_13 Depth=2
	addq	%r13, %r12
	addq	%r13, %r15
LBB17_29:                               ##   in Loop: Header=BB17_13 Depth=2
	movslq	%eax, %rbx
	jmp	LBB17_31
	.align	4, 0x90
LBB17_30:                               ##   in Loop: Header=BB17_13 Depth=2
	addq	%r13, %r15
	movb	$63, (%r12)
	incq	%r12
	movl	$1, %ebx
LBB17_31:                               ##   in Loop: Header=BB17_13 Depth=2
	leaq	-1200(%rbp), %r13
	addq	%r14, %rbx
	movq	%r13, %rdi
	callq	_mbsinit
	testl	%eax, %eax
	movq	%rbx, %r14
	je	LBB17_13
	jmp	LBB17_11
LBB17_14:                               ##   in Loop: Header=BB17_13 Depth=2
	cmpq	$-2, %r13
	je	LBB17_32
## BB#15:                               ##   in Loop: Header=BB17_13 Depth=2
	cmpq	$-1, %r13
	jne	LBB17_18
## BB#16:                               ##   in Loop: Header=BB17_8 Depth=1
	incq	%r15
	movb	$63, (%r12)
	incq	%r12
	incq	%r14
	movq	%r14, %rbx
	leaq	-1200(%rbp), %r13
	.align	4, 0x90
LBB17_11:                               ## %.backedge
                                        ##   in Loop: Header=BB17_8 Depth=1
	movq	%r13, %rdx
	cmpq	-1216(%rbp), %r15       ## 8-byte Folded Reload
	movq	%rbx, %r14
	movq	-1240(%rbp), %r13       ## 8-byte Reload
	jb	LBB17_8
	jmp	LBB17_33
LBB17_42:
	testq	%r13, %r13
	je	LBB17_43
## BB#44:
	callq	____mb_cur_max
	cmpl	$2, %eax
	movq	-1232(%rbp), %r14       ## 8-byte Reload
	jl	LBB17_46
## BB#45:
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbx, -1224(%rbp)       ## 8-byte Spill
	movq	%r12, %rsi
	callq	_mbsnwidth
	movslq	%eax, %rbx
	jmp	LBB17_54
LBB17_4:                                ## %.preheader27
	testq	%r12, %r12
	jle	LBB17_5
## BB#34:
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %r14
	movl	$262144, %r15d          ## imm = 0x40000
	movq	%rbx, -1224(%rbp)       ## 8-byte Spill
	.align	4, 0x90
LBB17_35:                               ## %.lr.ph30
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edi
	testb	%dil, %dil
	js	LBB17_37
## BB#36:                               ##   in Loop: Header=BB17_35 Depth=1
	movl	60(%r14,%rdi,4), %eax
	andl	%r15d, %eax
	jmp	LBB17_38
	.align	4, 0x90
LBB17_37:                               ##   in Loop: Header=BB17_35 Depth=1
	movl	$262144, %esi           ## imm = 0x40000
                                        ## kill: EDI<def> EDI<kill> RDI<kill>
	callq	___maskrune
LBB17_38:                               ## %isprint.exit8
                                        ##   in Loop: Header=BB17_35 Depth=1
	testl	%eax, %eax
	jne	LBB17_40
## BB#39:                               ##   in Loop: Header=BB17_35 Depth=1
	movb	$63, (%rbx)
LBB17_40:                               ##   in Loop: Header=BB17_35 Depth=1
	incq	%rbx
	cmpq	-1216(%rbp), %rbx       ## 8-byte Folded Reload
	jb	LBB17_35
## BB#41:
	movq	%r12, %rbx
	jmp	LBB17_53
LBB17_43:
	movq	%rbx, -1224(%rbp)       ## 8-byte Spill
                                        ## implicit-def: RBX
	jmp	LBB17_53
LBB17_46:
	movq	%rbx, -1224(%rbp)       ## 8-byte Spill
	xorl	%ebx, %ebx
	testq	%r12, %r12
	jle	LBB17_54
## BB#47:
	movq	%r13, -1240(%rbp)       ## 8-byte Spill
	movq	-1224(%rbp), %rax       ## 8-byte Reload
	leaq	(%rax,%r12), %r14
	movl	$262144, %r13d          ## imm = 0x40000
	movq	%rax, %r15
	.align	4, 0x90
LBB17_48:                               ## %.lr.ph35
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %edi
	testb	%dil, %dil
	js	LBB17_50
## BB#49:                               ##   in Loop: Header=BB17_48 Depth=1
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl	60(%rax,%rdi,4), %eax
	andl	%r13d, %eax
	jmp	LBB17_51
	.align	4, 0x90
LBB17_50:                               ##   in Loop: Header=BB17_48 Depth=1
	movl	$262144, %esi           ## imm = 0x40000
                                        ## kill: EDI<def> EDI<kill> RDI<kill>
	callq	___maskrune
LBB17_51:                               ## %isprint.exit
                                        ##   in Loop: Header=BB17_48 Depth=1
	cmpl	$1, %eax
	sbbq	$-1, %rbx
	incq	%r15
	cmpq	%r14, %r15
	jb	LBB17_48
## BB#52:
	movq	-1240(%rbp), %r13       ## 8-byte Reload
	jmp	LBB17_53
LBB17_32:                               ## %.backedge.thread
	movb	$63, (%r12)
	incq	%r12
	incq	%r14
	movq	%r14, %rbx
	movq	-1240(%rbp), %r13       ## 8-byte Reload
LBB17_33:                               ## %._crit_edge24
	subq	-1224(%rbp), %r12       ## 8-byte Folded Reload
	jmp	LBB17_53
LBB17_5:
	movq	%rbx, -1224(%rbp)       ## 8-byte Spill
	movq	%r12, %rbx
LBB17_53:                               ## %.loopexit28
	movq	-1232(%rbp), %r14       ## 8-byte Reload
LBB17_54:                               ## %.loopexit28
	testq	%r14, %r14
	je	LBB17_56
## BB#55:
	movl	$1, %esi
	movq	-1224(%rbp), %rdi       ## 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	_fwrite
LBB17_56:
	testq	%r13, %r13
	je	LBB17_58
## BB#57:
	movq	%rbx, (%r13)
LBB17_58:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB17_60
## BB#59:
	movq	%r12, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_60:
	callq	___stack_chk_fail
	.cfi_endproc
	.align	2, 0x90
L17_0_set_10 = LBB17_10-LJTI17_0
L17_0_set_12 = LBB17_12-LJTI17_0
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

	.align	4, 0x90
_process_signals:                       ## @process_signals
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp157:
	.cfi_def_cfa_offset 16
Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp159:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp160:
	.cfi_offset %rbx, -48
Ltmp161:
	.cfi_offset %r12, -40
Ltmp162:
	.cfi_offset %r14, -32
Ltmp163:
	.cfi_offset %r15, -24
	movq	___stdoutp@GOTPCREL(%rip), %r12
	leaq	_caught_signals(%rip), %r14
	leaq	-36(%rbp), %r15
	jmp	LBB18_1
	.align	4, 0x90
LBB18_17:                               ##   in Loop: Header=BB18_1 Depth=1
	movl	%ebx, %edi
	callq	_raise
	movl	$3, %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	_sigprocmask
LBB18_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$0, _interrupt_signal(%rip)
	jne	LBB18_3
## BB#2:                                ##   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, _stop_signal_count(%rip)
	je	LBB18_18
LBB18_3:                                ## %.critedge
                                        ##   in Loop: Header=BB18_1 Depth=1
	movzbl	_used_color(%rip), %eax
	cmpl	$1, %eax
	jne	LBB18_14
## BB#4:                                ## %put_indicator.exit.i
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%r12), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB18_13
## BB#5:                                ##   in Loop: Header=BB18_1 Depth=1
	movb	$1, _used_color(%rip)
	movq	_color_indicator+40(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB18_7
## BB#6:                                ## %put_indicator.exit5
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	_color_indicator+32(%rip), %rsi
	jmp	LBB18_12
LBB18_7:                                ## %put_indicator.exit7
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	_color_indicator+8(%rip), %rdi
	movq	_color_indicator(%rip), %rsi
	movq	(%r12), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB18_9
## BB#8:                                ##   in Loop: Header=BB18_1 Depth=1
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB18_9:                                ## %put_indicator.exit9
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	_color_indicator+56(%rip), %rdi
	movq	_color_indicator+48(%rip), %rsi
	movq	(%r12), %rcx
	movl	$1, %edx
	callq	_fwrite
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB18_11
## BB#10:                               ##   in Loop: Header=BB18_1 Depth=1
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB18_11:                               ## %put_indicator.exit
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
LBB18_12:                               ## %restore_default_color.exit
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	(%r12), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB18_13:                               ## %restore_default_color.exit
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	_color_indicator+24(%rip), %rdi
	movq	_color_indicator+16(%rip), %rsi
	movq	(%r12), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB18_14:                               ##   in Loop: Header=BB18_1 Depth=1
	movq	(%r12), %rdi
	callq	_rpl_fflush
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_sigprocmask
	movl	_interrupt_signal(%rip), %ebx
	movl	_stop_signal_count(%rip), %eax
	testl	%eax, %eax
	je	LBB18_16
## BB#15:                               ##   in Loop: Header=BB18_1 Depth=1
	decl	%eax
	movl	%eax, _stop_signal_count(%rip)
	movl	$17, %ebx
	jmp	LBB18_17
	.align	4, 0x90
LBB18_16:                               ##   in Loop: Header=BB18_1 Depth=1
	xorl	%esi, %esi
	movl	%ebx, %edi
	callq	_signal
	jmp	LBB18_17
LBB18_18:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_prep_non_filename_text:                ## @prep_non_filename_text
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp166:
	.cfi_def_cfa_offset 16
Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp168:
	.cfi_def_cfa_register %rbp
	cmpq	$0, _color_indicator+40(%rip)
	je	LBB19_2
## BB#1:
	leaq	_color_indicator+32(%rip), %rdi
	popq	%rbp
	jmp	_put_indicator          ## TAILCALL
LBB19_2:
	leaq	_color_indicator(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+48(%rip), %rdi
	callq	_put_indicator
	leaq	_color_indicator+16(%rip), %rdi
	popq	%rbp
	jmp	_put_indicator          ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_put_indicator:                         ## @put_indicator
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp172:
	.cfi_def_cfa_offset 16
Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp174:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp175:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movb	_used_color(%rip), %al
	testb	%al, %al
	jne	LBB20_2
## BB#1:
	movb	$1, _used_color(%rip)
	callq	_prep_non_filename_text
LBB20_2:
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$1, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_fwrite                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_length_of_file_name_and_frills:        ## @length_of_file_name_and_frills
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp179:
	.cfi_def_cfa_offset 16
Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp181:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$296, %rsp              ## imm = 0x128
Ltmp182:
	.cfi_offset %rbx, -40
Ltmp183:
	.cfi_offset %r14, -32
Ltmp184:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	%rax, -32(%rbp)
	xorl	%ebx, %ebx
	movb	_print_inode(%rip), %al
	testb	%al, %al
	je	LBB21_5
## BB#1:
	cmpl	$4, _format(%rip)
	jne	LBB21_3
## BB#2:
	movq	24(%r14), %rdi
	leaq	-304(%rbp), %rsi
	callq	_umaxtostr
	movq	%rax, %rdi
	callq	_strlen
	movq	%rax, %rbx
	jmp	LBB21_4
LBB21_3:
	movslq	_inode_number_width(%rip), %rbx
LBB21_4:
	incq	%rbx
LBB21_5:
	movzbl	_print_block_size(%rip), %eax
	cmpl	$1, %eax
	jne	LBB21_13
## BB#6:
	cmpl	$4, _format(%rip)
	jne	LBB21_11
## BB#7:
	cmpb	$0, 176(%r14)
	je	LBB21_8
## BB#9:
	movq	120(%r14), %rdi
	movl	_human_output_opts(%rip), %edx
	movq	_output_block_size(%rip), %r8
	leaq	-304(%rbp), %rsi
	movl	$512, %ecx              ## imm = 0x200
	callq	_human_readable
	movq	%rax, %rdi
	callq	_strlen
	jmp	LBB21_12
LBB21_11:
	movslq	_block_size_width(%rip), %rax
	jmp	LBB21_12
LBB21_8:
	leaq	L_.str57(%rip), %rdi
	callq	_strlen
LBB21_12:
	leaq	1(%rbx,%rax), %rbx
LBB21_13:
	movzbl	_print_scontext(%rip), %eax
	cmpl	$1, %eax
	jne	LBB21_18
## BB#14:
	cmpl	$4, _format(%rip)
	jne	LBB21_16
## BB#15:
	movq	168(%r14), %rdi
	callq	_strlen
	jmp	LBB21_17
LBB21_16:
	movslq	_scontext_width(%rip), %rax
LBB21_17:
	leaq	1(%rbx,%rax), %rbx
LBB21_18:
	movq	(%r14), %rsi
	movq	_filename_quoting_options(%rip), %rdx
	leaq	-312(%rbp), %rcx
	xorl	%edi, %edi
	callq	_quote_name
	addq	-312(%rbp), %rbx
	movl	_indicator_style(%rip), %esi
	testl	%esi, %esi
	je	LBB21_36
## BB#19:
	movb	176(%r14), %al
	movzwl	20(%r14), %r8d
	movl	160(%r14), %ecx
	testb	%al, %al
	je	LBB21_24
## BB#20:
	movl	%r8d, %edx
	andl	$61440, %edx            ## imm = 0xF000
	cmpl	$32768, %edx            ## imm = 0x8000
	je	LBB21_27
## BB#21:
	movl	%r8d, %edi
	andl	$-4096, %edi            ## imm = 0xFFFFFFFFFFFFF000
	movb	$1, %dl
	movzwl	%di, %edi
	cmpl	$16384, %edi            ## imm = 0x4000
	je	LBB21_35
	jmp	LBB21_22
LBB21_24:
	movb	$1, %dl
	cmpl	$3, %ecx
	je	LBB21_35
## BB#25:
	cmpl	$9, %ecx
	je	LBB21_35
## BB#26:
	cmpl	$5, %ecx
	jne	LBB21_22
LBB21_27:
	testb	%al, %al
	setne	%al
	cmpl	$3, %esi
	sete	%cl
	andb	%al, %cl
	testb	$73, %r8b
	setne	%dl
	andb	%cl, %dl
	jmp	LBB21_35
LBB21_22:
	cmpl	$1, %esi
	jne	LBB21_28
## BB#23:
	xorl	%edx, %edx
	jmp	LBB21_35
LBB21_28:
	testb	%al, %al
	je	LBB21_32
## BB#29:
	movb	$1, %dl
	movl	%r8d, %eax
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$40960, %eax            ## imm = 0xA000
	je	LBB21_35
## BB#30:
	andl	$-4096, %r8d            ## imm = 0xFFFFFFFFFFFFF000
	movzwl	%r8w, %eax
	cmpl	$49152, %eax            ## imm = 0xC000
	je	LBB21_35
## BB#31:
	cmpl	$4096, %eax             ## imm = 0x1000
	jne	LBB21_33
	jmp	LBB21_35
LBB21_32:
	decl	%ecx
	cmpl	$7, %ecx
	jae	LBB21_33
## BB#34:                               ## %switch.lookup
	movb	$97, %dl
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shrb	%cl, %dl
	andb	$1, %dl
	jmp	LBB21_35
LBB21_33:
	xorl	%edx, %edx
LBB21_35:                               ## %get_type_indicator.exit
	movzbl	%dl, %eax
	addq	%rax, %rbx
LBB21_36:
	movq	(%r15), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB21_38
## BB#37:
	movq	%rbx, %rax
	addq	$296, %rsp              ## imm = 0x128
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB21_38:
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_calculate_columns:                     ## @calculate_columns
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp188:
	.cfi_def_cfa_offset 16
Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp190:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp191:
	.cfi_offset %rbx, -56
Ltmp192:
	.cfi_offset %r12, -48
Ltmp193:
	.cfi_offset %r13, -40
Ltmp194:
	.cfi_offset %r14, -32
Ltmp195:
	.cfi_offset %r15, -24
	movl	%edi, %r14d
	movq	_max_idx(%rip), %r12
	movq	_cwd_n_used(%rip), %r15
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	cmpq	%r15, %r12
	cmovbq	%r12, %r15
	cmpq	%r15, _init_column_info.column_info_alloc(%rip)
	jae	LBB22_13
## BB#1:
	movq	%r12, %rax
	shrq	%rax
	movq	_column_info(%rip), %rdi
	cmpq	%rax, %r15
	jae	LBB22_4
## BB#2:
	movabsq	$384307168202282326, %rax ## imm = 0x555555555555556
	cmpq	%rax, %r15
	jae	LBB22_32
## BB#3:                                ## %xnrealloc.exit.i
	movq	%r15, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	_xrealloc
	movq	%rax, _column_info(%rip)
	leaq	(%r15,%r15), %rbx
	jmp	LBB22_6
LBB22_4:
	movabsq	$768614336404564651, %rax ## imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %r12
	jae	LBB22_32
## BB#5:                                ## %xnrealloc.exit1.i
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,2), %rsi
	callq	_xrealloc
	movq	%rax, _column_info(%rip)
	movq	_max_idx(%rip), %rbx
LBB22_6:
	movq	_init_column_info.column_info_alloc(%rip), %rax
	leaq	1(%rax), %rsi
	leaq	(%rsi,%rbx), %rcx
	addq	%rbx, %rsi
	jb	LBB22_32
## BB#7:
	movq	%rbx, %rdi
	subq	%rax, %rdi
	imulq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rdi
	cmpq	%rsi, %rax
	jne	LBB22_32
## BB#8:
	movq	%rcx, %rax
	shrq	$62, %rax
	jne	LBB22_32
## BB#9:                                ## %xnmalloc.exit.i
	shlq	$2, %rcx
	andq	$-8, %rcx
	movq	%rcx, %rdi
	callq	_xmalloc
	movq	_init_column_info.column_info_alloc(%rip), %rcx
	cmpq	%rbx, %rcx
	jae	LBB22_12
## BB#10:                               ## %.lr.ph6.i
	leaq	(%rcx,%rcx,2), %rdx
	leaq	16(,%rdx,8), %rdx
	.align	4, 0x90
LBB22_11:                               ## =>This Inner Loop Header: Depth=1
	movq	_column_info(%rip), %rsi
	movq	%rax, (%rsi,%rdx)
	leaq	8(%rax,%rcx,8), %rax
	incq	%rcx
	addq	$24, %rdx
	cmpq	%rcx, %rbx
	jne	LBB22_11
LBB22_12:                               ## %._crit_edge7.i
	movq	%rbx, _init_column_info.column_info_alloc(%rip)
LBB22_13:                               ## %.preheader.i
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	testq	%r15, %r15
	movq	%r15, -64(%rbp)         ## 8-byte Spill
	je	LBB22_16
## BB#14:                               ## %.lr.ph.i
	movq	_column_info(%rip), %r13
	movq	-48(%rbp), %rax         ## 8-byte Reload
	notq	%rax
	movq	-56(%rbp), %r15         ## 8-byte Reload
	notq	%r15
	cmpq	%r15, %rax
	cmovaq	%rax, %r15
	notq	%r15
	movl	$8, %ebx
	movl	$3, %r12d
	.align	4, 0x90
LBB22_15:                               ## %.loopexit.i
                                        ## =>This Inner Loop Header: Depth=1
	movb	$1, -24(%r13,%r12,8)
	movq	%r12, -16(%r13,%r12,8)
	movq	-8(%r13,%r12,8), %rdi
	leaq	_.memset_pattern(%rip), %rsi
	movq	%rbx, %rdx
	callq	_memset_pattern16
	addq	$8, %rbx
	addq	$3, %r12
	decq	%r15
	jne	LBB22_15
LBB22_16:                               ## %init_column_info.exit.preheader
	cmpq	$0, _cwd_n_used(%rip)
	movq	-64(%rbp), %r13         ## 8-byte Reload
	je	LBB22_28
## BB#17:                               ## %.lr.ph4
	movq	-48(%rbp), %rax         ## 8-byte Reload
	notq	%rax
	movq	-56(%rbp), %r15         ## 8-byte Reload
	notq	%r15
	cmpq	%r15, %rax
	cmovaq	%rax, %r15
	notq	%r15
	xorl	%r12d, %r12d
	.align	4, 0x90
LBB22_18:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB22_20 Depth 2
	movq	_sorted_file(%rip), %rax
	movq	(%rax,%r12,8), %rdi
	callq	_length_of_file_name_and_frills
	movq	%rax, %r8
	testq	%r13, %r13
	je	LBB22_27
## BB#19:                               ## %.lr.ph
                                        ##   in Loop: Header=BB22_18 Depth=1
	movq	_column_info(%rip), %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	.align	4, 0x90
LBB22_20:                               ##   Parent Loop BB22_18 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpb	$0, -16(%rdi)
	je	LBB22_26
## BB#21:                               ##   in Loop: Header=BB22_20 Depth=2
	leaq	1(%rcx), %rsi
	testb	%r14b, %r14b
	je	LBB22_23
## BB#22:                               ##   in Loop: Header=BB22_20 Depth=2
	movq	_cwd_n_used(%rip), %rax
	addq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rsi
	xorl	%edx, %edx
	movq	%r12, %rax
	divq	%rsi
	movq	%rax, %rdx
	jmp	LBB22_24
	.align	4, 0x90
LBB22_23:                               ##   in Loop: Header=BB22_20 Depth=2
	xorl	%edx, %edx
	movq	%r12, %rax
	divq	%rsi
LBB22_24:                               ##   in Loop: Header=BB22_20 Depth=2
	cmpq	%rdx, %rcx
	setne	%al
	movzbl	%al, %eax
	leaq	(%r8,%rax,2), %rbx
	movq	(%rdi), %rsi
	movq	%rbx, %rax
	subq	(%rsi,%rdx,8), %rax
	jbe	LBB22_26
## BB#25:                               ##   in Loop: Header=BB22_20 Depth=2
	addq	%rax, -8(%rdi)
	movq	%rbx, (%rsi,%rdx,8)
	movq	-8(%rdi), %rax
	cmpq	_line_length(%rip), %rax
	setb	%al
	movb	%al, -16(%rdi)
LBB22_26:                               ##   in Loop: Header=BB22_20 Depth=2
	incq	%rcx
	addq	$24, %rdi
	cmpq	%rcx, %r15
	jne	LBB22_20
LBB22_27:                               ## %init_column_info.exit
                                        ##   in Loop: Header=BB22_18 Depth=1
	incq	%r12
	cmpq	_cwd_n_used(%rip), %r12
	jb	LBB22_18
LBB22_28:                               ## %.preheader
	movq	-56(%rbp), %rax         ## 8-byte Reload
	notq	%rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	notq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	movq	$-2, %rax
	subq	%rcx, %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	_column_info(%rip), %rcx
	.align	4, 0x90
LBB22_29:                               ## =>This Inner Loop Header: Depth=1
	movq	%r13, %rax
	cmpq	$2, %rax
	jb	LBB22_31
## BB#30:                               ##   in Loop: Header=BB22_29 Depth=1
	leaq	-1(%rax), %r13
	cmpb	$0, (%rcx)
	leaq	-24(%rcx), %rcx
	je	LBB22_29
LBB22_31:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB22_32:
	callq	_xalloc_die
	.cfi_endproc

	.align	4, 0x90
_indent:                                ## @indent
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp199:
	.cfi_def_cfa_offset 16
Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp201:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp202:
	.cfi_offset %rbx, -40
Ltmp203:
	.cfi_offset %r14, -32
Ltmp204:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	%r14, %rbx
	jae	LBB23_15
## BB#1:
	movq	___stdoutp@GOTPCREL(%rip), %r15
	.align	4, 0x90
LBB23_2:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	_tabsize(%rip), %rsi
	testq	%rsi, %rsi
	je	LBB23_9
## BB#3:                                ##   in Loop: Header=BB23_2 Depth=1
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%rsi
	movq	%rax, %rcx
	leaq	1(%rbx), %rax
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rax, %rcx
	jbe	LBB23_9
## BB#4:                                ##   in Loop: Header=BB23_2 Depth=1
	movq	(%r15), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB23_6
## BB#5:                                ##   in Loop: Header=BB23_2 Depth=1
	cmpl	40(%rsi), %eax
	jle	LBB23_7
LBB23_6:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB23_2 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$9, (%rax)
	jmp	LBB23_8
	.align	4, 0x90
LBB23_9:                                ##   in Loop: Header=BB23_2 Depth=1
	movq	(%r15), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB23_11
## BB#10:                               ##   in Loop: Header=BB23_2 Depth=1
	cmpl	40(%rsi), %eax
	jle	LBB23_12
LBB23_11:                               ## %._crit_edge.i1
                                        ##   in Loop: Header=BB23_2 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$32, (%rax)
	jmp	LBB23_13
LBB23_12:                               ##   in Loop: Header=BB23_2 Depth=1
	movl	$32, %edi
	callq	___swbuf
	.align	4, 0x90
LBB23_13:                               ## %__sputc.exit3
                                        ##   in Loop: Header=BB23_2 Depth=1
	incq	%rbx
	jmp	LBB23_14
LBB23_7:                                ##   in Loop: Header=BB23_2 Depth=1
	movl	$9, %edi
	callq	___swbuf
	.align	4, 0x90
LBB23_8:                                ## %__sputc.exit
                                        ##   in Loop: Header=BB23_2 Depth=1
	movq	_tabsize(%rip), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	addq	%rbx, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rbx
LBB23_14:                               ## %.backedge
                                        ##   in Loop: Header=BB23_2 Depth=1
	cmpq	%r14, %rbx
	jb	LBB23_2
LBB23_15:                               ## %._crit_edge
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_name:                         ## @xstrcoll_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp207:
	.cfi_def_cfa_offset 16
Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp209:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_name:                      ## @xstrcoll_df_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp212:
	.cfi_def_cfa_offset 16
Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp214:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB25_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB25_4
LBB25_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB25_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB25_6
	jmp	LBB25_8
LBB25_4:
	cmpl	$3, %edx
	je	LBB25_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB25_9
LBB25_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB25_9
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB25_8
LBB25_9:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
LBB25_8:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_name:                     ## @rev_xstrcoll_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp217:
	.cfi_def_cfa_offset 16
Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp219:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_name:                  ## @rev_xstrcoll_df_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp222:
	.cfi_def_cfa_offset 16
Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp224:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB27_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB27_4
LBB27_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB27_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB27_6
	jmp	LBB27_8
LBB27_4:
	cmpl	$3, %edx
	je	LBB27_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB27_9
LBB27_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB27_9
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB27_8
LBB27_9:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
LBB27_8:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_strcmp_name:                           ## @strcmp_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp227:
	.cfi_def_cfa_offset 16
Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp229:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_df_name:                        ## @strcmp_df_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp232:
	.cfi_def_cfa_offset 16
Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp234:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB29_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB29_4
LBB29_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB29_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB29_6
	jmp	LBB29_8
LBB29_4:
	cmpl	$3, %edx
	je	LBB29_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB29_9
LBB29_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB29_9
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB29_8
LBB29_9:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
LBB29_8:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_name:                       ## @rev_strcmp_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp237:
	.cfi_def_cfa_offset 16
Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp239:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_df_name:                    ## @rev_strcmp_df_name
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp242:
	.cfi_def_cfa_offset 16
Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp244:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB31_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB31_4
LBB31_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB31_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB31_6
	jmp	LBB31_8
LBB31_4:
	cmpl	$3, %edx
	je	LBB31_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB31_9
LBB31_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB31_9
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB31_8
LBB31_9:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
LBB31_8:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_extension:                    ## @xstrcoll_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp248:
	.cfi_def_cfa_offset 16
Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp250:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp251:
	.cfi_offset %rbx, -40
Ltmp252:
	.cfi_offset %r14, -32
Ltmp253:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r15), %rdi
	movl	$46, %esi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r14), %rdi
	movl	$46, %esi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_xstrcoll
	testl	%eax, %eax
	je	LBB32_2
## BB#1:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB32_2:
	movq	(%r15), %rdi
	movq	(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_extension:                 ## @xstrcoll_df_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp257:
	.cfi_def_cfa_offset 16
Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp259:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp260:
	.cfi_offset %rbx, -40
Ltmp261:
	.cfi_offset %r14, -32
Ltmp262:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	160(%r15), %ecx
	movl	160(%r14), %edx
	cmpl	$3, %ecx
	je	LBB33_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB33_4
LBB33_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB33_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB33_6
	jmp	LBB33_9
LBB33_4:
	cmpl	$3, %edx
	je	LBB33_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB33_8
LBB33_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB33_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB33_9
LBB33_8:
	movq	(%r15), %rdi
	movl	$46, %esi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r14), %rdi
	movl	$46, %esi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_xstrcoll
	testl	%eax, %eax
	je	LBB33_10
LBB33_9:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB33_10:
	movq	(%r15), %rdi
	movq	(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_extension:                ## @rev_xstrcoll_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp266:
	.cfi_def_cfa_offset 16
Ltmp267:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp268:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp269:
	.cfi_offset %rbx, -40
Ltmp270:
	.cfi_offset %r14, -32
Ltmp271:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rdi
	movl	$46, %esi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r15), %rdi
	movl	$46, %esi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_xstrcoll
	testl	%eax, %eax
	je	LBB34_2
## BB#1:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB34_2:
	movq	(%r14), %rdi
	movq	(%r15), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_extension:             ## @rev_xstrcoll_df_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp275:
	.cfi_def_cfa_offset 16
Ltmp276:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp277:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp278:
	.cfi_offset %rbx, -40
Ltmp279:
	.cfi_offset %r14, -32
Ltmp280:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	160(%r15), %ecx
	movl	160(%r14), %edx
	cmpl	$3, %ecx
	je	LBB35_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB35_4
LBB35_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB35_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB35_6
	jmp	LBB35_9
LBB35_4:
	cmpl	$3, %edx
	je	LBB35_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB35_8
LBB35_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB35_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB35_9
LBB35_8:
	movq	(%r14), %rdi
	movl	$46, %esi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r15), %rdi
	movl	$46, %esi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_xstrcoll
	testl	%eax, %eax
	je	LBB35_10
LBB35_9:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB35_10:
	movq	(%r14), %rdi
	movq	(%r15), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_extension:                      ## @strcmp_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp284:
	.cfi_def_cfa_offset 16
Ltmp285:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp286:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp287:
	.cfi_offset %rbx, -40
Ltmp288:
	.cfi_offset %r14, -32
Ltmp289:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	(%rdi), %r14
	movl	$46, %esi
	movq	%r14, %rdi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r15), %r15
	movl	$46, %esi
	movq	%r15, %rdi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB36_2
## BB#1:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB36_2:
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_df_extension:                   ## @strcmp_df_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp293:
	.cfi_def_cfa_offset 16
Ltmp294:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp295:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp296:
	.cfi_offset %rbx, -40
Ltmp297:
	.cfi_offset %r14, -32
Ltmp298:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movl	160(%rdi), %ecx
	movl	160(%r15), %edx
	cmpl	$3, %ecx
	je	LBB37_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB37_4
LBB37_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB37_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB37_6
	jmp	LBB37_9
LBB37_4:
	cmpl	$3, %edx
	je	LBB37_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB37_8
LBB37_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB37_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB37_9
LBB37_8:
	movq	(%rdi), %r14
	movl	$46, %esi
	movq	%r14, %rdi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r15), %r15
	movl	$46, %esi
	movq	%r15, %rdi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB37_10
LBB37_9:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB37_10:
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_extension:                  ## @rev_strcmp_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp302:
	.cfi_def_cfa_offset 16
Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp304:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp305:
	.cfi_offset %rbx, -40
Ltmp306:
	.cfi_offset %r14, -32
Ltmp307:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	(%rsi), %r14
	movl	$46, %esi
	movq	%r14, %rdi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r15), %r15
	movl	$46, %esi
	movq	%r15, %rdi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB38_2
## BB#1:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB38_2:
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_df_extension:               ## @rev_strcmp_df_extension
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp311:
	.cfi_def_cfa_offset 16
Ltmp312:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp313:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp314:
	.cfi_offset %rbx, -40
Ltmp315:
	.cfi_offset %r14, -32
Ltmp316:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movl	160(%r15), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB39_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB39_4
LBB39_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB39_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB39_6
	jmp	LBB39_9
LBB39_4:
	cmpl	$3, %edx
	je	LBB39_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB39_8
LBB39_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB39_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB39_9
LBB39_8:
	movq	(%rsi), %r14
	movl	$46, %esi
	movq	%r14, %rdi
	callq	_strrchr
	movq	%rax, %rbx
	movq	(%r15), %r15
	movl	$46, %esi
	movq	%r15, %rdi
	callq	_strrchr
	testq	%rbx, %rbx
	leaq	L_.str(%rip), %rsi
	cmoveq	%rsi, %rbx
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB39_10
LBB39_9:                                ## %cmp_extension.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB39_10:
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_size:                         ## @xstrcoll_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp319:
	.cfi_def_cfa_offset 16
Ltmp320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp321:
	.cfi_def_cfa_register %rbp
	movq	112(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rsi)
	jl	LBB40_3
## BB#1:
	setg	%al
	jle	LBB40_4
## BB#2:
	movzbl	%al, %eax
LBB40_3:                                ## %cmp_size.exit
	popq	%rbp
	retq
LBB40_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_size:                      ## @xstrcoll_df_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp324:
	.cfi_def_cfa_offset 16
Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp326:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB41_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB41_4
LBB41_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB41_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB41_6
	jmp	LBB41_11
LBB41_4:
	cmpl	$3, %edx
	je	LBB41_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB41_8
LBB41_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB41_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB41_11
LBB41_8:
	movq	112(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rsi)
	jl	LBB41_11
## BB#9:
	setg	%al
	jle	LBB41_12
## BB#10:
	movzbl	%al, %eax
LBB41_11:                               ## %cmp_size.exit
	popq	%rbp
	retq
LBB41_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_size:                     ## @rev_xstrcoll_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp329:
	.cfi_def_cfa_offset 16
Ltmp330:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp331:
	.cfi_def_cfa_register %rbp
	movq	112(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rdi)
	jl	LBB42_3
## BB#1:
	setg	%al
	jle	LBB42_4
## BB#2:
	movzbl	%al, %eax
LBB42_3:                                ## %cmp_size.exit
	popq	%rbp
	retq
LBB42_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_size:                  ## @rev_xstrcoll_df_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp334:
	.cfi_def_cfa_offset 16
Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp336:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB43_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB43_4
LBB43_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB43_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB43_6
	jmp	LBB43_11
LBB43_4:
	cmpl	$3, %edx
	je	LBB43_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB43_8
LBB43_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB43_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB43_11
LBB43_8:
	movq	112(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rdi)
	jl	LBB43_11
## BB#9:
	setg	%al
	jle	LBB43_12
## BB#10:
	movzbl	%al, %eax
LBB43_11:                               ## %cmp_size.exit
	popq	%rbp
	retq
LBB43_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_size:                           ## @strcmp_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp339:
	.cfi_def_cfa_offset 16
Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp341:
	.cfi_def_cfa_register %rbp
	movq	112(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rsi)
	jl	LBB44_3
## BB#1:
	setg	%al
	jle	LBB44_4
## BB#2:
	movzbl	%al, %eax
LBB44_3:                                ## %cmp_size.exit
	popq	%rbp
	retq
LBB44_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_df_size:                        ## @strcmp_df_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp344:
	.cfi_def_cfa_offset 16
Ltmp345:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp346:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB45_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB45_4
LBB45_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB45_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB45_6
	jmp	LBB45_11
LBB45_4:
	cmpl	$3, %edx
	je	LBB45_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB45_8
LBB45_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB45_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB45_11
LBB45_8:
	movq	112(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rsi)
	jl	LBB45_11
## BB#9:
	setg	%al
	jle	LBB45_12
## BB#10:
	movzbl	%al, %eax
LBB45_11:                               ## %cmp_size.exit
	popq	%rbp
	retq
LBB45_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_size:                       ## @rev_strcmp_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp349:
	.cfi_def_cfa_offset 16
Ltmp350:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp351:
	.cfi_def_cfa_register %rbp
	movq	112(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rdi)
	jl	LBB46_3
## BB#1:
	setg	%al
	jle	LBB46_4
## BB#2:
	movzbl	%al, %eax
LBB46_3:                                ## %cmp_size.exit
	popq	%rbp
	retq
LBB46_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_df_size:                    ## @rev_strcmp_df_size
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp354:
	.cfi_def_cfa_offset 16
Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp356:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB47_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB47_4
LBB47_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB47_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB47_6
	jmp	LBB47_11
LBB47_4:
	cmpl	$3, %edx
	je	LBB47_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB47_8
LBB47_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB47_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB47_11
LBB47_8:
	movq	112(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 112(%rdi)
	jl	LBB47_11
## BB#9:
	setg	%al
	jle	LBB47_12
## BB#10:
	movzbl	%al, %eax
LBB47_11:                               ## %cmp_size.exit
	popq	%rbp
	retq
LBB47_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_version:                      ## @xstrcoll_version
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp359:
	.cfi_def_cfa_offset 16
Ltmp360:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp361:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_filevercmp             ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_version:                   ## @xstrcoll_df_version
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp364:
	.cfi_def_cfa_offset 16
Ltmp365:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp366:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB49_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB49_4
LBB49_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB49_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB49_6
	jmp	LBB49_8
LBB49_4:
	cmpl	$3, %edx
	je	LBB49_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB49_9
LBB49_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB49_9
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB49_8
LBB49_9:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_filevercmp             ## TAILCALL
LBB49_8:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_version:                  ## @rev_xstrcoll_version
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp369:
	.cfi_def_cfa_offset 16
Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp371:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_filevercmp             ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_version:               ## @rev_xstrcoll_df_version
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp374:
	.cfi_def_cfa_offset 16
Ltmp375:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp376:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB51_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB51_4
LBB51_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB51_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB51_6
	jmp	LBB51_8
LBB51_4:
	cmpl	$3, %edx
	je	LBB51_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB51_9
LBB51_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB51_9
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB51_8
LBB51_9:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_filevercmp             ## TAILCALL
LBB51_8:
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_mtime:                        ## @xstrcoll_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp379:
	.cfi_def_cfa_offset 16
Ltmp380:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp381:
	.cfi_def_cfa_register %rbp
	movq	64(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rsi)
	jl	LBB52_3
## BB#1:
	movl	$1, %eax
	jg	LBB52_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	72(%rsi), %rax
	movq	72(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB52_4
LBB52_3:                                ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB52_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_mtime:                     ## @xstrcoll_df_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp384:
	.cfi_def_cfa_offset 16
Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp386:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB53_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB53_4
LBB53_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB53_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB53_6
	jmp	LBB53_11
LBB53_4:
	cmpl	$3, %edx
	je	LBB53_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB53_8
LBB53_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB53_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB53_11
LBB53_8:
	movq	64(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rsi)
	jl	LBB53_11
## BB#9:
	movl	$1, %eax
	jg	LBB53_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	72(%rsi), %rax
	movq	72(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB53_12
LBB53_11:                               ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB53_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_mtime:                    ## @rev_xstrcoll_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp389:
	.cfi_def_cfa_offset 16
Ltmp390:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp391:
	.cfi_def_cfa_register %rbp
	movq	64(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rdi)
	jl	LBB54_3
## BB#1:
	movl	$1, %eax
	jg	LBB54_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	72(%rdi), %rax
	movq	72(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB54_4
LBB54_3:                                ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB54_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_mtime:                 ## @rev_xstrcoll_df_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp394:
	.cfi_def_cfa_offset 16
Ltmp395:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp396:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB55_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB55_4
LBB55_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB55_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB55_6
	jmp	LBB55_11
LBB55_4:
	cmpl	$3, %edx
	je	LBB55_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB55_8
LBB55_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB55_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB55_11
LBB55_8:
	movq	64(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rdi)
	jl	LBB55_11
## BB#9:
	movl	$1, %eax
	jg	LBB55_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	72(%rdi), %rax
	movq	72(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB55_12
LBB55_11:                               ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB55_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_mtime:                          ## @strcmp_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp399:
	.cfi_def_cfa_offset 16
Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp401:
	.cfi_def_cfa_register %rbp
	movq	64(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rsi)
	jl	LBB56_3
## BB#1:
	movl	$1, %eax
	jg	LBB56_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	72(%rsi), %rax
	movq	72(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB56_4
LBB56_3:                                ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB56_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_df_mtime:                       ## @strcmp_df_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp404:
	.cfi_def_cfa_offset 16
Ltmp405:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp406:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB57_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB57_4
LBB57_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB57_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB57_6
	jmp	LBB57_11
LBB57_4:
	cmpl	$3, %edx
	je	LBB57_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB57_8
LBB57_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB57_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB57_11
LBB57_8:
	movq	64(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rsi)
	jl	LBB57_11
## BB#9:
	movl	$1, %eax
	jg	LBB57_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	72(%rsi), %rax
	movq	72(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB57_12
LBB57_11:                               ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB57_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_mtime:                      ## @rev_strcmp_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp409:
	.cfi_def_cfa_offset 16
Ltmp410:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp411:
	.cfi_def_cfa_register %rbp
	movq	64(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rdi)
	jl	LBB58_3
## BB#1:
	movl	$1, %eax
	jg	LBB58_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	72(%rdi), %rax
	movq	72(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB58_4
LBB58_3:                                ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB58_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_df_mtime:                   ## @rev_strcmp_df_mtime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp414:
	.cfi_def_cfa_offset 16
Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp416:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB59_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB59_4
LBB59_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB59_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB59_6
	jmp	LBB59_11
LBB59_4:
	cmpl	$3, %edx
	je	LBB59_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB59_8
LBB59_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB59_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB59_11
LBB59_8:
	movq	64(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 64(%rdi)
	jl	LBB59_11
## BB#9:
	movl	$1, %eax
	jg	LBB59_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	72(%rdi), %rax
	movq	72(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB59_12
LBB59_11:                               ## %cmp_mtime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB59_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_ctime:                        ## @xstrcoll_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp419:
	.cfi_def_cfa_offset 16
Ltmp420:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp421:
	.cfi_def_cfa_register %rbp
	movq	80(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rsi)
	jl	LBB60_3
## BB#1:
	movl	$1, %eax
	jg	LBB60_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	88(%rsi), %rax
	movq	88(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB60_4
LBB60_3:                                ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB60_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_ctime:                     ## @xstrcoll_df_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp424:
	.cfi_def_cfa_offset 16
Ltmp425:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp426:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB61_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB61_4
LBB61_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB61_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB61_6
	jmp	LBB61_11
LBB61_4:
	cmpl	$3, %edx
	je	LBB61_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB61_8
LBB61_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB61_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB61_11
LBB61_8:
	movq	80(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rsi)
	jl	LBB61_11
## BB#9:
	movl	$1, %eax
	jg	LBB61_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	88(%rsi), %rax
	movq	88(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB61_12
LBB61_11:                               ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB61_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_ctime:                    ## @rev_xstrcoll_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp429:
	.cfi_def_cfa_offset 16
Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp431:
	.cfi_def_cfa_register %rbp
	movq	80(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rdi)
	jl	LBB62_3
## BB#1:
	movl	$1, %eax
	jg	LBB62_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	88(%rdi), %rax
	movq	88(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB62_4
LBB62_3:                                ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB62_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_ctime:                 ## @rev_xstrcoll_df_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp434:
	.cfi_def_cfa_offset 16
Ltmp435:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp436:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB63_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB63_4
LBB63_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB63_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB63_6
	jmp	LBB63_11
LBB63_4:
	cmpl	$3, %edx
	je	LBB63_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB63_8
LBB63_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB63_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB63_11
LBB63_8:
	movq	80(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rdi)
	jl	LBB63_11
## BB#9:
	movl	$1, %eax
	jg	LBB63_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	88(%rdi), %rax
	movq	88(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB63_12
LBB63_11:                               ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB63_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_ctime:                          ## @strcmp_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp439:
	.cfi_def_cfa_offset 16
Ltmp440:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp441:
	.cfi_def_cfa_register %rbp
	movq	80(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rsi)
	jl	LBB64_3
## BB#1:
	movl	$1, %eax
	jg	LBB64_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	88(%rsi), %rax
	movq	88(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB64_4
LBB64_3:                                ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB64_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_df_ctime:                       ## @strcmp_df_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp444:
	.cfi_def_cfa_offset 16
Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp446:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB65_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB65_4
LBB65_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB65_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB65_6
	jmp	LBB65_11
LBB65_4:
	cmpl	$3, %edx
	je	LBB65_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB65_8
LBB65_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB65_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB65_11
LBB65_8:
	movq	80(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rsi)
	jl	LBB65_11
## BB#9:
	movl	$1, %eax
	jg	LBB65_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	88(%rsi), %rax
	movq	88(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB65_12
LBB65_11:                               ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB65_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_ctime:                      ## @rev_strcmp_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp449:
	.cfi_def_cfa_offset 16
Ltmp450:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp451:
	.cfi_def_cfa_register %rbp
	movq	80(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rdi)
	jl	LBB66_3
## BB#1:
	movl	$1, %eax
	jg	LBB66_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	88(%rdi), %rax
	movq	88(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB66_4
LBB66_3:                                ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB66_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_df_ctime:                   ## @rev_strcmp_df_ctime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp454:
	.cfi_def_cfa_offset 16
Ltmp455:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp456:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB67_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB67_4
LBB67_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB67_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB67_6
	jmp	LBB67_11
LBB67_4:
	cmpl	$3, %edx
	je	LBB67_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB67_8
LBB67_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB67_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB67_11
LBB67_8:
	movq	80(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 80(%rdi)
	jl	LBB67_11
## BB#9:
	movl	$1, %eax
	jg	LBB67_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	88(%rdi), %rax
	movq	88(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB67_12
LBB67_11:                               ## %cmp_ctime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB67_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_atime:                        ## @xstrcoll_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp459:
	.cfi_def_cfa_offset 16
Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp461:
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rsi)
	jl	LBB68_3
## BB#1:
	movl	$1, %eax
	jg	LBB68_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	56(%rsi), %rax
	movq	56(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB68_4
LBB68_3:                                ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB68_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll_df_atime:                     ## @xstrcoll_df_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp464:
	.cfi_def_cfa_offset 16
Ltmp465:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp466:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB69_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB69_4
LBB69_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB69_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB69_6
	jmp	LBB69_11
LBB69_4:
	cmpl	$3, %edx
	je	LBB69_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB69_8
LBB69_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB69_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB69_11
LBB69_8:
	movq	48(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rsi)
	jl	LBB69_11
## BB#9:
	movl	$1, %eax
	jg	LBB69_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	56(%rsi), %rax
	movq	56(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB69_12
LBB69_11:                               ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB69_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_atime:                    ## @rev_xstrcoll_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp469:
	.cfi_def_cfa_offset 16
Ltmp470:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp471:
	.cfi_def_cfa_register %rbp
	movq	48(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rdi)
	jl	LBB70_3
## BB#1:
	movl	$1, %eax
	jg	LBB70_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	56(%rdi), %rax
	movq	56(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB70_4
LBB70_3:                                ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB70_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_xstrcoll_df_atime:                 ## @rev_xstrcoll_df_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp474:
	.cfi_def_cfa_offset 16
Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp476:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB71_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB71_4
LBB71_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB71_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB71_6
	jmp	LBB71_11
LBB71_4:
	cmpl	$3, %edx
	je	LBB71_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB71_8
LBB71_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB71_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB71_11
LBB71_8:
	movq	48(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rdi)
	jl	LBB71_11
## BB#9:
	movl	$1, %eax
	jg	LBB71_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	56(%rdi), %rax
	movq	56(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB71_12
LBB71_11:                               ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB71_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_xstrcoll               ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_atime:                          ## @strcmp_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp479:
	.cfi_def_cfa_offset 16
Ltmp480:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp481:
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rsi)
	jl	LBB72_3
## BB#1:
	movl	$1, %eax
	jg	LBB72_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	56(%rsi), %rax
	movq	56(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB72_4
LBB72_3:                                ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB72_4:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_strcmp_df_atime:                       ## @strcmp_df_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp484:
	.cfi_def_cfa_offset 16
Ltmp485:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp486:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB73_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB73_4
LBB73_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB73_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB73_6
	jmp	LBB73_11
LBB73_4:
	cmpl	$3, %edx
	je	LBB73_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB73_8
LBB73_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB73_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB73_11
LBB73_8:
	movq	48(%rdi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rsi)
	jl	LBB73_11
## BB#9:
	movl	$1, %eax
	jg	LBB73_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	56(%rsi), %rax
	movq	56(%rdi), %rcx
	subl	%ecx, %eax
	je	LBB73_12
LBB73_11:                               ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB73_12:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_atime:                      ## @rev_strcmp_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp489:
	.cfi_def_cfa_offset 16
Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp491:
	.cfi_def_cfa_register %rbp
	movq	48(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rdi)
	jl	LBB74_3
## BB#1:
	movl	$1, %eax
	jg	LBB74_3
## BB#2:                                ## %timespec_cmp.exit.i
	movq	56(%rdi), %rax
	movq	56(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB74_4
LBB74_3:                                ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB74_4:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_rev_strcmp_df_atime:                   ## @rev_strcmp_df_atime
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp494:
	.cfi_def_cfa_offset 16
Ltmp495:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp496:
	.cfi_def_cfa_register %rbp
	movl	160(%rdi), %ecx
	movl	160(%rsi), %edx
	cmpl	$3, %ecx
	je	LBB75_2
## BB#1:
	cmpl	$9, %ecx
	jne	LBB75_4
LBB75_2:                                ## %switch.early.test
	cmpl	$3, %edx
	je	LBB75_6
## BB#3:                                ## %switch.early.test
	movl	$-1, %eax
	cmpl	$9, %edx
	je	LBB75_6
	jmp	LBB75_11
LBB75_4:
	cmpl	$3, %edx
	je	LBB75_6
## BB#5:
	cmpl	$9, %edx
	jne	LBB75_8
LBB75_6:                                ## %switch.early.test4
	cmpl	$3, %ecx
	je	LBB75_8
## BB#7:                                ## %switch.early.test4
	movl	$1, %eax
	cmpl	$9, %ecx
	jne	LBB75_11
LBB75_8:
	movq	48(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, 48(%rdi)
	jl	LBB75_11
## BB#9:
	movl	$1, %eax
	jg	LBB75_11
## BB#10:                               ## %timespec_cmp.exit.i
	movq	56(%rdi), %rax
	movq	56(%rsi), %rcx
	subl	%ecx, %eax
	je	LBB75_12
LBB75_11:                               ## %cmp_atime.exit
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	popq	%rbp
	retq
LBB75_12:
	movq	(%rsi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_strcmp                 ## TAILCALL
	.cfi_endproc

	.align	4, 0x90
_xstrcoll:                              ## @xstrcoll
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp500:
	.cfi_def_cfa_offset 16
Ltmp501:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp502:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp503:
	.cfi_offset %rbx, -40
Ltmp504:
	.cfi_offset %r14, -32
Ltmp505:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	___error
	movl	$0, (%rax)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_strcoll
	movl	%eax, %ebx
	callq	___error
	cmpl	$0, (%rax)
	jne	LBB76_1
## BB#4:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB76_1:
	callq	___error
	movl	(%rax), %ebx
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	_quote_n
	movq	%rax, %r15
	movl	$1, %edi
	movq	%r14, %rsi
	callq	_quote_n
	movq	%rax, %r8
	leaq	L_.str68(%rip), %rcx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	movq	%rcx, %rdx
	movq	%r15, %rcx
	callq	_error
	cmpl	$0, _exit_status(%rip)
	jne	LBB76_3
## BB#2:
	movl	$1, _exit_status(%rip)
LBB76_3:                                ## %set_exit_status.exit
	leaq	_failed_strcoll(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	callq	_longjmp
	.cfi_endproc

	.align	4, 0x90
_get_funky_string:                      ## @get_funky_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp509:
	.cfi_def_cfa_offset 16
Ltmp510:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp511:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp512:
	.cfi_offset %rbx, -56
Ltmp513:
	.cfi_offset %r12, -48
Ltmp514:
	.cfi_offset %r13, -40
Ltmp515:
	.cfi_offset %r14, -32
Ltmp516:
	.cfi_offset %r15, -24
	movq	(%rsi), %r8
	movq	(%rdi), %r9
	xorl	%eax, %eax
	leaq	LJTI77_0(%rip), %r11
	movl	$1023, %r12d            ## imm = 0x3FF
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	jmp	LBB77_1
	.align	4, 0x90
LBB77_44:                               ## %.backedge.thread
                                        ##   in Loop: Header=BB77_1 Depth=1
	incq	%r9
	incq	%r10
	xorl	%eax, %eax
LBB77_1:                                ## %.backedge.thread
                                        ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	cmpl	$4, %eax
	ja	LBB77_57
## BB#2:                                ## %.backedge.thread
                                        ##   in Loop: Header=BB77_1 Depth=1
	movslq	(%r11,%rbx,4), %rax
	addq	%r11, %rax
	jmpq	*%rax
LBB77_3:                                ##   in Loop: Header=BB77_1 Depth=1
	movb	(%r8), %r15b
	movsbl	%r15b, %ebx
	movb	$1, %al
	cmpl	$57, %ebx
	jg	LBB77_5
## BB#4:                                ##   in Loop: Header=BB77_1 Depth=1
	testl	%ebx, %ebx
	jne	LBB77_13
	jmp	LBB77_17
LBB77_14:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	(%r8), %r15b
	movsbl	%r15b, %r13d
	cmpl	$47, %r13d
	jg	LBB77_18
## BB#15:                               ##   in Loop: Header=BB77_1 Depth=1
	testl	%r13d, %r13d
	je	LBB77_16
LBB77_27:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	%r15b, %r14b
LBB77_41:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	%r14b, (%r9)
	incq	%r9
	incq	%r10
	xorl	%eax, %eax
	incq	%r8
	jmp	LBB77_1
LBB77_42:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	(%r8), %al
	movb	%al, %bl
	andb	$-8, %bl
	movzbl	%bl, %ebx
	cmpl	$48, %ebx
	jne	LBB77_43
## BB#45:                               ##   in Loop: Header=BB77_1 Depth=1
	shlb	$3, %r14b
	incq	%r8
	addb	%al, %r14b
	addb	$-48, %r14b
	movl	$2, %eax
	jmp	LBB77_1
LBB77_46:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	(%r8), %r15b
	movsbl	%r15b, %ebx
	addl	$-48, %ebx
	cmpl	$54, %ebx
	ja	LBB77_43
## BB#47:                               ##   in Loop: Header=BB77_1 Depth=1
	btq	%rbx, %r12
	jb	LBB77_58
## BB#48:                               ##   in Loop: Header=BB77_1 Depth=1
	movl	$8257536, %eax          ## imm = 0x7E0000
	btq	%rbx, %rax
	jae	LBB77_49
## BB#51:                               ##   in Loop: Header=BB77_1 Depth=1
	shlb	$4, %r14b
	incq	%r8
	addb	%r15b, %r14b
	addb	$-55, %r14b
	movl	$3, %eax
	jmp	LBB77_1
LBB77_52:                               ##   in Loop: Header=BB77_1 Depth=1
	movsbl	(%r8), %ebx
	cmpl	$64, %ebx
	jl	LBB77_55
## BB#53:                               ##   in Loop: Header=BB77_1 Depth=1
	movzbl	%bl, %eax
	cmpl	$127, %eax
	je	LBB77_55
## BB#54:                               ##   in Loop: Header=BB77_1 Depth=1
	incq	%r8
	andb	$31, %bl
	movb	%bl, (%r9)
	jmp	LBB77_44
LBB77_5:                                ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$91, %ebx
	jg	LBB77_8
## BB#6:                                ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$61, %ebx
	jne	LBB77_7
## BB#12:                               ##   in Loop: Header=BB77_1 Depth=1
	testb	%dl, %dl
	je	LBB77_13
	jmp	LBB77_17
LBB77_18:                               ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$62, %r13d
	jg	LBB77_22
## BB#19:                               ##   in Loop: Header=BB77_1 Depth=1
	addl	$-48, %r13d
	cmpl	$8, %r13d
	jae	LBB77_27
## BB#20:                               ##   in Loop: Header=BB77_1 Depth=1
	addb	$-48, %r15b
	movl	$2, %eax
	movb	%r15b, %r14b
LBB77_21:                               ## %.backedge.thread25
                                        ##   in Loop: Header=BB77_1 Depth=1
	incq	%r8
	jmp	LBB77_1
LBB77_55:                               ##   in Loop: Header=BB77_1 Depth=1
	xorl	%eax, %eax
	movzbl	%bl, %ebx
	cmpl	$63, %ebx
	jne	LBB77_17
## BB#56:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$127, (%r9)
	incq	%r9
	incq	%r10
	jmp	LBB77_1
LBB77_8:                                ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$94, %ebx
	jne	LBB77_9
## BB#11:                               ##   in Loop: Header=BB77_1 Depth=1
	incq	%r8
	movl	$4, %eax
	jmp	LBB77_1
LBB77_22:                               ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$87, %r13d
	jg	LBB77_25
## BB#23:                               ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$63, %r13d
	jne	LBB77_27
## BB#24:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$127, %r14b
	jmp	LBB77_41
LBB77_58:                               ##   in Loop: Header=BB77_1 Depth=1
	shlb	$4, %r14b
	incq	%r8
	addb	%r15b, %r14b
	addb	$-48, %r14b
	movl	$3, %eax
	jmp	LBB77_1
LBB77_49:                               ##   in Loop: Header=BB77_1 Depth=1
	movabsq	$35465847065542656, %rax ## imm = 0x7E000000000000
	btq	%rbx, %rax
	jae	LBB77_43
## BB#50:                               ##   in Loop: Header=BB77_1 Depth=1
	shlb	$4, %r14b
	incq	%r8
	addb	%r15b, %r14b
	addb	$-87, %r14b
	movl	$3, %eax
	jmp	LBB77_1
LBB77_43:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	%r14b, (%r9)
	jmp	LBB77_44
LBB77_9:                                ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$92, %ebx
	jne	LBB77_13
## BB#10:                               ##   in Loop: Header=BB77_1 Depth=1
	incq	%r8
	movl	$1, %eax
	jmp	LBB77_1
LBB77_25:                               ##   in Loop: Header=BB77_1 Depth=1
	movl	$3, %eax
	xorl	%r14d, %r14d
	cmpl	$94, %r13d
	jg	LBB77_28
## BB#26:                               ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$88, %r13d
	je	LBB77_21
	jmp	LBB77_27
LBB77_28:                               ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$109, %r13d
	jg	LBB77_31
## BB#29:                               ##   in Loop: Header=BB77_1 Depth=1
	addl	$-95, %r13d
	cmpl	$7, %r13d
	ja	LBB77_27
## BB#30:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$7, %r14b
	leaq	LJTI77_2(%rip), %rax
	movq	%rax, %rbx
	movslq	(%rbx,%r13,4), %rax
	addq	%rbx, %rax
	jmpq	*%rax
LBB77_40:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$32, %r14b
	jmp	LBB77_41
LBB77_31:                               ##   in Loop: Header=BB77_1 Depth=1
	addl	$-110, %r13d
	cmpl	$10, %r13d
	ja	LBB77_27
## BB#32:                               ##   in Loop: Header=BB77_1 Depth=1
	leaq	LJTI77_1(%rip), %rbx
	movq	%rbx, %r12
	movslq	(%r12,%r13,4), %rbx
	addq	%r12, %rbx
	movl	$1023, %r12d            ## imm = 0x3FF
	jmpq	*%rbx
LBB77_36:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$10, %r14b
	jmp	LBB77_41
LBB77_7:                                ##   in Loop: Header=BB77_1 Depth=1
	cmpl	$58, %ebx
	je	LBB77_17
LBB77_13:                               ##   in Loop: Header=BB77_1 Depth=1
	incq	%r8
	movb	%r15b, (%r9)
	jmp	LBB77_44
LBB77_33:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$8, %r14b
	jmp	LBB77_41
LBB77_34:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$27, %r14b
	jmp	LBB77_41
LBB77_35:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$12, %r14b
	jmp	LBB77_41
LBB77_37:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$13, %r14b
	jmp	LBB77_41
LBB77_38:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$9, %r14b
	jmp	LBB77_41
LBB77_39:                               ##   in Loop: Header=BB77_1 Depth=1
	movb	$11, %r14b
	jmp	LBB77_41
LBB77_57:
	callq	_abort
LBB77_16:                               ## %.backedge
	incq	%r8
	xorl	%eax, %eax
LBB77_17:                               ## %.backedge.thread19
	movq	%r9, (%rdi)
	movq	%r8, (%rsi)
	movq	%r10, (%rcx)
                                        ## kill: AL<def> AL<kill> RAX<kill>
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L77_0_set_3 = LBB77_3-LJTI77_0
L77_0_set_14 = LBB77_14-LJTI77_0
L77_0_set_42 = LBB77_42-LJTI77_0
L77_0_set_46 = LBB77_46-LJTI77_0
L77_0_set_52 = LBB77_52-LJTI77_0
LJTI77_0:
	.long	L77_0_set_3
	.long	L77_0_set_14
	.long	L77_0_set_42
	.long	L77_0_set_46
	.long	L77_0_set_52
L77_1_set_36 = LBB77_36-LJTI77_1
L77_1_set_27 = LBB77_27-LJTI77_1
L77_1_set_37 = LBB77_37-LJTI77_1
L77_1_set_38 = LBB77_38-LJTI77_1
L77_1_set_39 = LBB77_39-LJTI77_1
L77_1_set_21 = LBB77_21-LJTI77_1
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
L77_2_set_40 = LBB77_40-LJTI77_2
L77_2_set_27 = LBB77_27-LJTI77_2
L77_2_set_41 = LBB77_41-LJTI77_2
L77_2_set_33 = LBB77_33-LJTI77_2
L77_2_set_34 = LBB77_34-LJTI77_2
L77_2_set_35 = LBB77_35-LJTI77_2
LJTI77_2:
	.long	L77_2_set_40
	.long	L77_2_set_27
	.long	L77_2_set_41
	.long	L77_2_set_33
	.long	L77_2_set_27
	.long	L77_2_set_27
	.long	L77_2_set_34
	.long	L77_2_set_35

	.section	__TEXT,__const
	.align	4                       ## @main.sig
_main.sig:
	.long	18                      ## 0x12
	.long	14                      ## 0xe
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	13                      ## 0xd
	.long	3                       ## 0x3
	.long	15                      ## 0xf
	.long	27                      ## 0x1b
	.long	26                      ## 0x1a
	.long	24                      ## 0x18
	.long	25                      ## 0x19

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.space	1

.zerofill __DATA,__bss,_exit_status,4,2 ## @exit_status
.zerofill __DATA,__bss,_print_dir_name,1,0 ## @print_dir_name
.zerofill __DATA,__bss,_pending_dirs,8,3 ## @pending_dirs
.zerofill __DATA,__bss,_current_time,16,3 ## @current_time
.zerofill __DATA,__bss,_print_with_color,1,0 ## @print_with_color
.zerofill __DATA,__bss,_color_symlink_as_referent,1,0 ## @color_symlink_as_referent
.zerofill __DATA,__bss,_format,4,2      ## @format
.zerofill __DATA,__bss,_check_symlink_color,1,0 ## @check_symlink_color
.zerofill __DATA,__bss,_caught_signals,4,2 ## @caught_signals
.zerofill __DATA,__bss,_dereference,4,2 ## @dereference
.zerofill __DATA,__bss,_immediate_dirs,1,0 ## @immediate_dirs
.zerofill __DATA,__bss,_indicator_style,4,2 ## @indicator_style
.zerofill __DATA,__bss,_recursive,1,0   ## @recursive
.zerofill __DATA,__bss,_active_dir_set,8,3 ## @active_dir_set
.zerofill __DATA,__bss,_dev_ino_obstack,88,3 ## @dev_ino_obstack
.zerofill __DATA,__bss,_sort_type,4,2   ## @sort_type
.zerofill __DATA,__bss,_print_scontext,1,0 ## @print_scontext
.zerofill __DATA,__bss,_print_block_size,1,0 ## @print_block_size
.zerofill __DATA,__bss,_format_needs_stat,1,0 ## @format_needs_stat
.zerofill __DATA,__bss,_directories_first,1,0 ## @directories_first
.zerofill __DATA,__bss,_format_needs_type,1,0 ## @format_needs_type
.zerofill __DATA,__bss,_dired,1,0       ## @dired
.zerofill __DATA,__bss,_dired_obstack,88,3 ## @dired_obstack
.zerofill __DATA,__bss,_subdired_obstack,88,3 ## @subdired_obstack
.zerofill __DATA,__bss,_cwd_n_alloc,8,3 ## @cwd_n_alloc
.zerofill __DATA,__bss,_cwd_file,8,3    ## @cwd_file
.zerofill __DATA,__bss,_cwd_n_used,8,3  ## @cwd_n_used
L_.str1:                                ## @.str1
	.asciz	"."

.zerofill __DATA,__bss,_dired_pos,8,3   ## @dired_pos
L___func__.main:                        ## @__func__.main
	.asciz	"main"

L_.str2:                                ## @.str2
	.asciz	"src/ls.c"

L_.str3:                                ## @.str3
	.asciz	"found"

.zerofill __DATA,__bss,_used_color,1,0  ## @used_color
	.section	__DATA,__data
	.align	4                       ## @color_indicator
_color_indicator:
	.quad	2                       ## 0x2
	.quad	L_.str4
	.quad	1                       ## 0x1
	.quad	L_.str217
	.space	16
	.quad	1                       ## 0x1
	.quad	L_.str218
	.space	16
	.space	16
	.quad	5                       ## 0x5
	.quad	L_.str219
	.quad	5                       ## 0x5
	.quad	L_.str220
	.quad	2                       ## 0x2
	.quad	L_.str221
	.quad	5                       ## 0x5
	.quad	L_.str222
	.quad	5                       ## 0x5
	.quad	L_.str223
	.quad	5                       ## 0x5
	.quad	L_.str223
	.space	16
	.space	16
	.quad	5                       ## 0x5
	.quad	L_.str224
	.quad	5                       ## 0x5
	.quad	L_.str222
	.quad	5                       ## 0x5
	.quad	L_.str225
	.quad	5                       ## 0x5
	.quad	L_.str226
	.quad	5                       ## 0x5
	.quad	L_.str227
	.quad	5                       ## 0x5
	.quad	L_.str228
	.quad	5                       ## 0x5
	.quad	L_.str229
	.quad	5                       ## 0x5
	.quad	L_.str230
	.space	16
	.quad	3                       ## 0x3
	.quad	L_.str231

	.section	__TEXT,__cstring,cstring_literals
L_.str4:                                ## @.str4
	.asciz	"\033["

.zerofill __DATA,__bss,_stop_signal_count,4,2 ## @stop_signal_count
.zerofill __DATA,__bss,_interrupt_signal,4,2 ## @interrupt_signal
L_.str5:                                ## @.str5
	.asciz	"//DIRED//"

L_.str6:                                ## @.str6
	.asciz	"//SUBDIRED//"

L_.str7:                                ## @.str7
	.asciz	"//DIRED-OPTIONS// --quoting-style=%s\n"

.zerofill __DATA,__bss,_filename_quoting_options,8,3 ## @filename_quoting_options
L_.str8:                                ## @.str8
	.asciz	"hash_get_n_entries (active_dir_set) == 0"

L_.str9:                                ## @.str9
	.asciz	"Usage: %s [OPTION]... [FILE]...\n"

L_.str10:                               ## @.str10
	.asciz	"List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"

L_.str11:                               ## @.str11
	.asciz	"  -a, --all                  do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"

L_.str12:                               ## @.str12
	.asciz	"      --block-size=SIZE      scale sizes by SIZE before printing them; e.g.,\n                               '--block-size=M' prints sizes in units of\n                               1,048,576 bytes; see SIZE format below\n  -B, --ignore-backups       do not list implied entries ending with ~\n  -c                         with -lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"

L_.str13:                               ## @.str13
	.asciz	"  -C                         list entries by columns\n      --color[=WHEN]         colorize the output; WHEN can be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"

L_.str14:                               ## @.str14
	.asciz	"  -f                         do not sort, enable -aU, disable -ls --color\n  -F, --classify             append indicator (one of */=>@|) to entries\n      --file-type            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"

L_.str15:                               ## @.str15
	.asciz	"  -g                         like -l, but do not list owner\n"

L_.str16:                               ## @.str16
	.asciz	"      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"

L_.str17:                               ## @.str17
	.asciz	"  -G, --no-group             in a long listing, don't print group names\n  -h, --human-readable       with -l and/or -s, print human readable sizes\n                               (e.g., 1K 234M 2G)\n      --si                   likewise, but use powers of 1000 not 1024\n"

L_.str18:                               ## @.str18
	.asciz	"  -H, --dereference-command-line\n                             follow symbolic links listed on the command line\n      --dereference-command-line-symlink-to-dir\n                             follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"

L_.str19:                               ## @.str19
	.asciz	"      --indicator-style=WORD  append indicator with style WORD to entry names:\n                               none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n  -k, --kibibytes            default to 1024-byte blocks for disk usage\n"

L_.str20:                               ## @.str20
	.asciz	"  -l                         use a long listing format\n  -L, --dereference          when showing file information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"

L_.str21:                               ## @.str21
	.asciz	"  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs\n  -N, --literal              print raw entry names (don't treat e.g. control\n                               characters specially)\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"

L_.str22:                               ## @.str22
	.asciz	"  -q, --hide-control-chars   print ? instead of nongraphic characters\n      --show-control-chars   show nongraphic characters as-is (the default,\n                               unless program is 'ls' and output is a terminal)\n  -Q, --quote-name           enclose entry names in double quotes\n      --quoting-style=WORD   use quoting style WORD for entry names:\n                               literal, locale, shell, shell-always, c, escape\n"

L_.str23:                               ## @.str23
	.asciz	"  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"

L_.str24:                               ## @.str24
	.asciz	"  -S                         sort by file size, largest first\n      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),\n                               time (-t), version (-v), extension (-X)\n      --time=WORD            with -l, show time as WORD instead of default\n                               modification time: atime or access or use (-u);\n                               ctime or status (-c); also use specified time\n                               as sort key if --sort=time (newest first)\n"

L_.str25:                               ## @.str25
	.asciz	"      --time-style=STYLE     with -l, show times using style STYLE:\n                               full-iso, long-iso, iso, locale, or +FORMAT;\n                               FORMAT is interpreted like in 'date'; if FORMAT\n                               is FORMAT1<newline>FORMAT2, then FORMAT1 applies\n                               to non-recent files and FORMAT2 to recent files;\n                               if STYLE is prefixed with 'posix-', STYLE\n                               takes effect only outside the POSIX locale\n"

L_.str26:                               ## @.str26
	.asciz	"  -t                         sort by modification time, newest first\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"

L_.str27:                               ## @.str27
	.asciz	"  -u                         with -lt: sort by, and show, access time;\n                               with -l: show access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"

L_.str28:                               ## @.str28
	.asciz	"  -w, --width=COLS           assume screen width instead of current value\n  -x                         list entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"

L_.str29:                               ## @.str29
	.asciz	"      --help     display this help and exit\n"

L_.str30:                               ## @.str30
	.asciz	"      --version  output version information and exit\n"

L_.str31:                               ## @.str31
	.asciz	"\nUsing color to distinguish file types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"

L_.str32:                               ## @.str32
	.asciz	"\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"

L_.str33:                               ## @.str33
	.asciz	"ls"

L_.str34:                               ## @.str34
	.asciz	"dir"

L_.str35:                               ## @.str35
	.asciz	"vdir"

	.section	__DATA,__const
	.align	4                       ## @emit_ancillary_info.infomap
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
	.space	16

	.section	__TEXT,__cstring,cstring_literals
L_.str36:                               ## @.str36
	.asciz	"["

L_.str37:                               ## @.str37
	.asciz	"test invocation"

L_.str38:                               ## @.str38
	.asciz	"coreutils"

L_.str39:                               ## @.str39
	.asciz	"Multi-call invocation"

L_.str40:                               ## @.str40
	.asciz	"sha224sum"

L_.str41:                               ## @.str41
	.asciz	"sha2 utilities"

L_.str42:                               ## @.str42
	.asciz	"sha256sum"

L_.str43:                               ## @.str43
	.asciz	"sha384sum"

L_.str44:                               ## @.str44
	.asciz	"sha512sum"

L_.str45:                               ## @.str45
	.asciz	"\n%s online help: <%s>\n"

L_.str46:                               ## @.str46
	.asciz	"GNU coreutils"

L_.str47:                               ## @.str47
	.asciz	"http://www.gnu.org/software/coreutils/"

L_.str48:                               ## @.str48
	.asciz	"en_"

L_.str49:                               ## @.str49
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"

L_.str50:                               ## @.str50
	.asciz	"Full documentation at: <%s%s>\n"

L_.str51:                               ## @.str51
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"

L_.str52:                               ## @.str52
	.asciz	" invocation"

L_.str53:                               ## @.str53
	.asciz	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\n"

L_.str54:                               ## @.str54
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"

L_.str55:                               ## @.str55
	.asciz	"Try '%s --help' for more information.\n"

.zerofill __DATA,__bss,_sorted_file,8,3 ## @sorted_file
_filetype_letter:                       ## @filetype_letter
	.asciz	"?pcdb-lswd"

.zerofill __DATA,__bss,_any_has_acl,1,0 ## @any_has_acl
.zerofill __DATA,__bss,_time_type,4,2   ## @time_type
.zerofill __DATA,__bss,_print_inode,1,0 ## @print_inode
L_.str56:                               ## @.str56
	.asciz	"%*s "

.zerofill __DATA,__bss,_inode_number_width,4,2 ## @inode_number_width
L_.str57:                               ## @.str57
	.asciz	"?"

.zerofill __DATA,__bss,_human_output_opts,4,2 ## @human_output_opts
.zerofill __DATA,__bss,_output_block_size,8,3 ## @output_block_size
.zerofill __DATA,__bss,_block_size_width,4,2 ## @block_size_width
L_.str58:                               ## @.str58
	.asciz	"%s %*s "

.zerofill __DATA,__bss,_nlink_width,4,2 ## @nlink_width
L_.str59:                               ## @.str59
	.asciz	"  "

.zerofill __DATA,__bss,_print_owner,1,0 ## @print_owner
.zerofill __DATA,__bss,_print_group,1,0 ## @print_group
.zerofill __DATA,__bss,_print_author,1,0 ## @print_author
.zerofill __DATA,__bss,_owner_width,4,2 ## @owner_width
.zerofill __DATA,__bss,_group_width,4,2 ## @group_width
.zerofill __DATA,__bss,_author_width,4,2 ## @author_width
.zerofill __DATA,__bss,_scontext_width,4,2 ## @scontext_width
.zerofill __DATA,__bss,_file_size_width,4,2 ## @file_size_width
.zerofill __DATA,__bss,_major_device_number_width,4,2 ## @major_device_number_width
.zerofill __DATA,__bss,_minor_device_number_width,4,2 ## @minor_device_number_width
L_.str60:                               ## @.str60
	.asciz	"%*s, %*s "

.zerofill __DATA,__bss,_file_human_output_opts,4,2 ## @file_human_output_opts
	.section	__DATA,__data
	.align	3                       ## @file_output_block_size
_file_output_block_size:
	.quad	1                       ## 0x1

	.align	4                       ## @long_time_format
_long_time_format:
	.quad	L_.str63
	.quad	L_.str64

	.section	__TEXT,__cstring,cstring_literals
L_.str61:                               ## @.str61
	.asciz	" -> "

.zerofill __DATA,__bss,_line_length,8,3 ## @line_length
.zerofill __DATA,__bss,_qmark_funny_chars,1,0 ## @qmark_funny_chars
	.section	__TEXT,__const
	.align	4                       ## @print_color_indicator.filetype_indicator
_print_color_indicator.filetype_indicator:
	.long	13                      ## 0xd
	.long	8                       ## 0x8
	.long	11                      ## 0xb
	.long	6                       ## 0x6
	.long	10                      ## 0xa
	.long	5                       ## 0x5
	.long	7                       ## 0x7
	.long	9                       ## 0x9
	.long	5                       ## 0x5
	.long	6                       ## 0x6

.zerofill __DATA,__bss,_color_ext_list,8,3 ## @color_ext_list
	.section	__DATA,__data
	.align	2                       ## @long_time_expected_width.width
_long_time_expected_width.width:
	.long	4294967295              ## 0xffffffff

.zerofill __DATA,__bss,_required_mon_width,8,3 ## @required_mon_width
	.section	__TEXT,__cstring,cstring_literals
L_.str62:                               ## @.str62
	.asciz	"%b"

.zerofill __DATA,__bss,_abmon,732,4     ## @abmon
L_.str63:                               ## @.str63
	.asciz	"%b %e  %Y"

L_.str64:                               ## @.str64
	.asciz	"%b %e %H:%M"

L_.str65:                               ## @.str65
	.asciz	"%*lu "

.zerofill __DATA,__bss,_numeric_ids,1,0 ## @numeric_ids
.zerofill __DATA,__bss,_column_info,8,3 ## @column_info
.zerofill __DATA,__bss,_tabsize,8,3     ## @tabsize
.zerofill __DATA,__bss,_max_idx,8,3     ## @max_idx
.zerofill __DATA,__bss,_init_column_info.column_info_alloc,8,3 ## @init_column_info.column_info_alloc
.zerofill __DATA,__bss,_sorted_file_alloc,8,3 ## @sorted_file_alloc
.zerofill __DATA,__bss,_failed_strcoll,148,4 ## @failed_strcoll
L___func__.sort_files:                  ## @__func__.sort_files
	.asciz	"sort_files"

L_.str67:                               ## @.str67
	.asciz	"sort_type != sort_version"

.zerofill __DATA,__bss,_sort_reverse,1,0 ## @sort_reverse
	.section	__DATA,__const
	.align	4                       ## @sort_functions
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
	.space	32
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

	.section	__TEXT,__cstring,cstring_literals
L_.str68:                               ## @.str68
	.asciz	"cannot compare file names %s and %s"

	.section	__DATA,__data
_UNKNOWN_SECURITY_CONTEXT:              ## @UNKNOWN_SECURITY_CONTEXT
	.asciz	"?"

	.section	__TEXT,__cstring,cstring_literals
L_.str70:                               ## @.str70
	.asciz	"cannot access %s"

L_.str73:                               ## @.str73
	.asciz	"%s"

L_.str74:                               ## @.str74
	.asciz	"%lu"

L_.str75:                               ## @.str75
	.asciz	"cannot read symbolic link %s"

.zerofill __DATA,__bss,_file_has_acl_cache.unsupported_device,4,2 ## @file_has_acl_cache.unsupported_device
.zerofill __DATA,__bss,_getfilecon_cache.unsupported_device,4,2 ## @getfilecon_cache.unsupported_device
.zerofill __DATA,__bss,_has_capability_cache.unsupported_device,4,2 ## @has_capability_cache.unsupported_device
.zerofill __DATA,__bss,_print_dir.first,1,0 ## @print_dir.first
L_.str76:                               ## @.str76
	.asciz	"cannot open directory %s"

L_.str77:                               ## @.str77
	.asciz	"cannot determine device and inode of %s"

L_.str78:                               ## @.str78
	.asciz	"%s: not listing already-listed directory"

.zerofill __DATA,__bss,_dirname_quoting_options,8,3 ## @dirname_quoting_options
L_.str79:                               ## @.str79
	.asciz	":\n"

L_.str80:                               ## @.str80
	.asciz	"reading directory %s"

L_.str81:                               ## @.str81
	.asciz	"closing directory %s"

L_.str82:                               ## @.str82
	.asciz	"total"

.zerofill __DATA,__bss,_ignore_mode,4,2 ## @ignore_mode
.zerofill __DATA,__bss,_hide_patterns,8,3 ## @hide_patterns
.zerofill __DATA,__bss,_ignore_patterns,8,3 ## @ignore_patterns
L_.str83:                               ## @.str83
	.asciz	"LS_COLORS"

L_.str84:                               ## @.str84
	.asciz	"COLORTERM"

L_.str85:                               ## @.str85
	.asciz	"??"

.zerofill __DATA,__bss,_color_buf,8,3   ## @color_buf
	.section	__DATA,__const
	.align	4                       ## @indicator_name
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

	.section	__TEXT,__cstring,cstring_literals
L_.str86:                               ## @.str86
	.asciz	"unrecognized prefix: %s"

L_.str87:                               ## @.str87
	.asciz	"unparsable value for LS_COLORS environment variable"

L_.str88:                               ## @.str88
	.asciz	"target"

L_.str89:                               ## @.str89
	.asciz	"lc"

L_.str90:                               ## @.str90
	.asciz	"rc"

L_.str91:                               ## @.str91
	.asciz	"ec"

L_.str92:                               ## @.str92
	.asciz	"rs"

L_.str93:                               ## @.str93
	.asciz	"no"

L_.str94:                               ## @.str94
	.asciz	"fi"

L_.str95:                               ## @.str95
	.asciz	"di"

L_.str96:                               ## @.str96
	.asciz	"ln"

L_.str97:                               ## @.str97
	.asciz	"pi"

L_.str98:                               ## @.str98
	.asciz	"so"

L_.str99:                               ## @.str99
	.asciz	"bd"

L_.str100:                              ## @.str100
	.asciz	"cd"

L_.str101:                              ## @.str101
	.asciz	"mi"

L_.str102:                              ## @.str102
	.asciz	"or"

L_.str103:                              ## @.str103
	.asciz	"ex"

L_.str104:                              ## @.str104
	.asciz	"do"

L_.str105:                              ## @.str105
	.asciz	"su"

L_.str106:                              ## @.str106
	.asciz	"sg"

L_.str107:                              ## @.str107
	.asciz	"st"

L_.str108:                              ## @.str108
	.asciz	"ow"

L_.str109:                              ## @.str109
	.asciz	"tw"

L_.str110:                              ## @.str110
	.asciz	"ca"

L_.str111:                              ## @.str111
	.asciz	"mh"

L_.str112:                              ## @.str112
	.asciz	"cl"

L_.str113:                              ## @.str113
	.asciz	"TERM"

	.section	__TEXT,__const
	.align	4                       ## @G_line
_G_line:
	.asciz	"# Configuration file for dircolors, a utility to help you set the\000# LS_COLORS environment variable used by GNU ls with the --color option.\000# Copyright (C) 1996-2015 Free Software Foundation, Inc.\000# Copying and distribution of this file, with or without modification,\000# are permitted provided the copyright notice and this notice are preserved.\000# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\000# slackware version of dircolors) are recognized but ignored.\000# Below, there should be one TERM entry for each termtype that is colorizable\000TERM Eterm\000TERM ansi\000TERM color-xterm\000TERM con132x25\000TERM con132x30\000TERM con132x43\000TERM con132x60\000TERM con80x25\000TERM con80x28\000TERM con80x30\000TERM con80x43\000TERM con80x50\000TERM con80x60\000TERM cons25\000TERM console\000TERM cygwin\000TERM dtterm\000TERM eterm-color\000TERM gnome\000TERM gnome-256color\000TERM hurd\000TERM jfbterm\000TERM konsole\000TERM kterm\000TERM linux\000TERM linux-c\000TERM mach-color\000TERM mach-gnu-color\000TERM mlterm\000TERM putty\000TERM putty-256color\000TERM rxvt\000TERM rxvt-256color\000TERM rxvt-cygwin\000TERM rxvt-cygwin-native\000TERM rxvt-unicode\000TERM rxvt-unicode-256color\000TERM rxvt-unicode256\000TERM screen\000TERM screen-256color\000TERM screen-256color-bce\000TERM screen-bce\000TERM screen-w\000TERM screen.Eterm\000TERM screen.rxvt\000TERM screen.linux\000TERM st\000TERM st-256color\000TERM terminator\000TERM vt100\000TERM xterm\000TERM xterm-16color\000TERM xterm-256color\000TERM xterm-88color\000TERM xterm-color\000TERM xterm-debian\000# Below are the color init strings for the basic file types. A color init\000# string consists of one or more of the following numeric codes:\000# Attribute codes:\000# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\000# Text color codes:\000# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\000# Background color codes:\000# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\000#NORMAL 00 # no color code at all\000#FILE 00 # regular file: use no color at all\000RESET 0 # reset to \"normal\" color\000DIR 01;34 # directory\000LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\000 # numerical value, the color is as for the file pointed to.)\000MULTIHARDLINK 00 # regular file with more than one link\000FIFO 40;33 # pipe\000SOCK 01;35 # socket\000DOOR 01;35 # door\000BLK 40;33;01 # block device driver\000CHR 40;33;01 # character device driver\000ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\000MISSING 00 # ... and the files they point to\000SETUID 37;41 # file that is setuid (u+s)\000SETGID 30;43 # file that is setgid (g+s)\000CAPABILITY 30;41 # file with capability\000STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\000OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\000STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\000# This is for files with execute permission:\000EXEC 01;32\000# List any file extensions like '.gz' or '.tar' that you would like ls\000# to colorize below. Put the extension, a space, and the color init string.\000# (and any comments you want to add after a '#')\000# If you use DOS-style suffixes, you may want to uncomment the following:\000#.cmd 01;32 # executables (bright green)\000#.exe 01;32\000#.com 01;32\000#.btm 01;32\000#.bat 01;32\000# Or if you want to colorize scripts even if they do not have the\000# executable bit actually set.\000#.sh 01;32\000#.csh 01;32\000 # archives or compressed (bright red)\000.tar 01;31\000.tgz 01;31\000.arc 01;31\000.arj 01;31\000.taz 01;31\000.lha 01;31\000.lz4 01;31\000.lzh 01;31\000.lzma 01;31\000.tlz 01;31\000.txz 01;31\000.tzo 01;31\000.t7z 01;31\000.zip 01;31\000.z 01;31\000.Z 01;31\000.dz 01;31\000.gz 01;31\000.lrz 01;31\000.lz 01;31\000.lzo 01;31\000.xz 01;31\000.bz2 01;31\000.bz 01;31\000.tbz 01;31\000.tbz2 01;31\000.tz 01;31\000.deb 01;31\000.rpm 01;31\000.jar 01;31\000.war 01;31\000.ear 01;31\000.sar 01;31\000.rar 01;31\000.alz 01;31\000.ace 01;31\000.zoo 01;31\000.cpio 01;31\000.7z 01;31\000.rz 01;31\000.cab 01;31\000# image formats\000.jpg 01;35\000.jpeg 01;35\000.gif 01;35\000.bmp 01;35\000.pbm 01;35\000.pgm 01;35\000.ppm 01;35\000.tga 01;35\000.xbm 01;35\000.xpm 01;35\000.tif 01;35\000.tiff 01;35\000.png 01;35\000.svg 01;35\000.svgz 01;35\000.mng 01;35\000.pcx 01;35\000.mov 01;35\000.mpg 01;35\000.mpeg 01;35\000.m2v 01;35\000.mkv 01;35\000.webm 01;35\000.ogm 01;35\000.mp4 01;35\000.m4v 01;35\000.mp4v 01;35\000.vob 01;35\000.qt 01;35\000.nuv 01;35\000.wmv 01;35\000.asf 01;35\000.rm 01;35\000.rmvb 01;35\000.flc 01;35\000.avi 01;35\000.fli 01;35\000.flv 01;35\000.gl 01;35\000.dl 01;35\000.xcf 01;35\000.xwd 01;35\000.yuv 01;35\000.cgm 01;35\000.emf 01;35\000# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions\000.ogv 01;35\000.ogx 01;35\000# audio formats\000.aac 00;36\000.au 00;36\000.flac 00;36\000.m4a 00;36\000.mid 00;36\000.midi 00;36\000.mka 00;36\000.mp3 00;36\000.mpc 00;36\000.ogg 00;36\000.ra 00;36\000.wav 00;36\000# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions\000.oga 00;36\000.opus 00;36\000.spx 00;36\000.xspf 00;36"

	.section	__TEXT,__cstring,cstring_literals
L_.str114:                              ## @.str114
	.asciz	"TERM "

L_.str115:                              ## @.str115
	.asciz	"COLUMNS"

L_.str116:                              ## @.str116
	.asciz	"ignoring invalid width in environment variable COLUMNS: %s"

L_.str117:                              ## @.str117
	.asciz	"TABSIZE"

L_.str118:                              ## @.str118
	.asciz	"ignoring invalid tab size in environment variable TABSIZE: %s"

L_.str119:                              ## @.str119
	.asciz	"abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"

L_.str120:                              ## @.str120
	.asciz	"invalid line width"

L_.str121:                              ## @.str121
	.asciz	"*~"

L_.str122:                              ## @.str122
	.asciz	".*~"

L_.str123:                              ## @.str123
	.asciz	"invalid tab size"

L_.str124:                              ## @.str124
	.asciz	"--sort"

	.section	__DATA,__const
	.align	4                       ## @sort_args
_sort_args:
	.quad	L_.str150
	.quad	L_.str173
	.quad	L_.str174
	.quad	L_.str175
	.quad	L_.str176
	.quad	0

	.section	__TEXT,__const
	.align	4                       ## @sort_types
_sort_types:
	.long	4294967295              ## 0xffffffff
	.long	4                       ## 0x4
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	3                       ## 0x3

	.section	__TEXT,__cstring,cstring_literals
L_.str125:                              ## @.str125
	.asciz	"--time"

	.section	__DATA,__const
	.align	4                       ## @time_args
_time_args:
	.quad	L_.str168
	.quad	L_.str169
	.quad	L_.str170
	.quad	L_.str171
	.quad	L_.str172
	.quad	0

	.section	__TEXT,__const
	.align	4                       ## @time_types
_time_types:
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str126:                              ## @.str126
	.asciz	"--format"

	.section	__DATA,__const
	.align	4                       ## @format_args
_format_args:
	.quad	L_.str161
	.quad	L_.str162
	.quad	L_.str163
	.quad	L_.str164
	.quad	L_.str165
	.quad	L_.str166
	.quad	L_.str167
	.quad	0

	.section	__TEXT,__const
	.align	4                       ## @format_types
_format_types:
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str127:                              ## @.str127
	.asciz	"full-iso"

L_.str128:                              ## @.str128
	.asciz	"--color"

	.section	__DATA,__const
	.align	4                       ## @color_args
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

	.section	__TEXT,__const
	.align	4                       ## @color_types
_color_types:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str129:                              ## @.str129
	.asciz	"--indicator-style"

	.section	__DATA,__const
	.align	4                       ## @indicator_style_args
_indicator_style_args:
	.quad	L_.str150
	.quad	L_.str151
	.quad	L_.str152
	.quad	L_.str153
	.quad	0

	.section	__TEXT,__const
	.align	4                       ## @indicator_style_types
_indicator_style_types:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3

	.section	__TEXT,__cstring,cstring_literals
L_.str130:                              ## @.str130
	.asciz	"--quoting-style"

L_.str131:                              ## @.str131
	.asciz	"Richard M. Stallman"

L_.str132:                              ## @.str132
	.asciz	"David MacKenzie"

L_.str133:                              ## @.str133
	.asciz	"LS_BLOCK_SIZE"

L_.str134:                              ## @.str134
	.asciz	"BLOCK_SIZE"

L_.str135:                              ## @.str135
	.asciz	"*=>@|"

	.section	__TEXT,__const
_decode_switches.posix_prefix:          ## @decode_switches.posix_prefix
	.asciz	"posix-"

	.section	__TEXT,__cstring,cstring_literals
L_.str136:                              ## @.str136
	.asciz	"TIME_STYLE"

L_.str137:                              ## @.str137
	.asciz	"locale"

L_.str138:                              ## @.str138
	.asciz	"invalid time style format %s"

	.section	__DATA,__const
	.align	4                       ## @time_style_args
_time_style_args:
	.quad	L_.str127
	.quad	L_.str148
	.quad	L_.str149
	.quad	L_.str137
	.quad	0

	.section	__TEXT,__const
	.align	4                       ## @time_style_types
_time_style_types:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3

	.section	__TEXT,__cstring,cstring_literals
L_.str139:                              ## @.str139
	.asciz	"time style"

L_.str140:                              ## @.str140
	.asciz	"Valid arguments are:\n"

L_.str141:                              ## @.str141
	.asciz	"  - [posix-]%s\n"

L_.str142:                              ## @.str142
	.asciz	"  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"

L_.str143:                              ## @.str143
	.asciz	"%Y-%m-%d %H:%M:%S.%N %z"

L_.str144:                              ## @.str144
	.asciz	"%Y-%m-%d %H:%M"

L_.str145:                              ## @.str145
	.asciz	"%Y-%m-%d "

L_.str146:                              ## @.str146
	.asciz	"%m-%d %H:%M"

L_.str147:                              ## @.str147
	.asciz	"error initializing month strings"

L_.str148:                              ## @.str148
	.asciz	"long-iso"

L_.str149:                              ## @.str149
	.asciz	"iso"

L_.str150:                              ## @.str150
	.asciz	"none"

L_.str151:                              ## @.str151
	.asciz	"slash"

L_.str152:                              ## @.str152
	.asciz	"file-type"

L_.str153:                              ## @.str153
	.asciz	"classify"

L_.str154:                              ## @.str154
	.asciz	"always"

L_.str155:                              ## @.str155
	.asciz	"yes"

L_.str156:                              ## @.str156
	.asciz	"force"

L_.str157:                              ## @.str157
	.asciz	"never"

L_.str158:                              ## @.str158
	.asciz	"auto"

L_.str159:                              ## @.str159
	.asciz	"tty"

L_.str160:                              ## @.str160
	.asciz	"if-tty"

L_.str161:                              ## @.str161
	.asciz	"verbose"

L_.str162:                              ## @.str162
	.asciz	"long"

L_.str163:                              ## @.str163
	.asciz	"commas"

L_.str164:                              ## @.str164
	.asciz	"horizontal"

L_.str165:                              ## @.str165
	.asciz	"across"

L_.str166:                              ## @.str166
	.asciz	"vertical"

L_.str167:                              ## @.str167
	.asciz	"single-column"

L_.str168:                              ## @.str168
	.asciz	"atime"

L_.str169:                              ## @.str169
	.asciz	"access"

L_.str170:                              ## @.str170
	.asciz	"use"

L_.str171:                              ## @.str171
	.asciz	"ctime"

L_.str172:                              ## @.str172
	.asciz	"status"

L_.str173:                              ## @.str173
	.asciz	"time"

L_.str174:                              ## @.str174
	.asciz	"size"

L_.str175:                              ## @.str175
	.asciz	"extension"

L_.str176:                              ## @.str176
	.asciz	"version"

L_.str177:                              ## @.str177
	.asciz	"all"

L_.str178:                              ## @.str178
	.asciz	"escape"

L_.str179:                              ## @.str179
	.asciz	"directory"

L_.str180:                              ## @.str180
	.asciz	"dired"

L_.str181:                              ## @.str181
	.asciz	"full-time"

L_.str182:                              ## @.str182
	.asciz	"group-directories-first"

L_.str183:                              ## @.str183
	.asciz	"human-readable"

L_.str184:                              ## @.str184
	.asciz	"inode"

L_.str185:                              ## @.str185
	.asciz	"kibibytes"

L_.str186:                              ## @.str186
	.asciz	"numeric-uid-gid"

L_.str187:                              ## @.str187
	.asciz	"no-group"

L_.str188:                              ## @.str188
	.asciz	"hide-control-chars"

L_.str189:                              ## @.str189
	.asciz	"reverse"

L_.str190:                              ## @.str190
	.asciz	"width"

L_.str191:                              ## @.str191
	.asciz	"almost-all"

L_.str192:                              ## @.str192
	.asciz	"ignore-backups"

L_.str193:                              ## @.str193
	.asciz	"si"

L_.str194:                              ## @.str194
	.asciz	"dereference-command-line"

L_.str195:                              ## @.str195
	.asciz	"dereference-command-line-symlink-to-dir"

L_.str196:                              ## @.str196
	.asciz	"hide"

L_.str197:                              ## @.str197
	.asciz	"ignore"

L_.str198:                              ## @.str198
	.asciz	"indicator-style"

L_.str199:                              ## @.str199
	.asciz	"dereference"

L_.str200:                              ## @.str200
	.asciz	"literal"

L_.str201:                              ## @.str201
	.asciz	"quote-name"

L_.str202:                              ## @.str202
	.asciz	"quoting-style"

L_.str203:                              ## @.str203
	.asciz	"recursive"

L_.str204:                              ## @.str204
	.asciz	"format"

L_.str205:                              ## @.str205
	.asciz	"show-control-chars"

L_.str206:                              ## @.str206
	.asciz	"sort"

L_.str207:                              ## @.str207
	.asciz	"tabsize"

L_.str208:                              ## @.str208
	.asciz	"time-style"

L_.str209:                              ## @.str209
	.asciz	"color"

L_.str210:                              ## @.str210
	.asciz	"block-size"

L_.str211:                              ## @.str211
	.asciz	"context"

L_.str212:                              ## @.str212
	.asciz	"author"

L_.str213:                              ## @.str213
	.asciz	"help"

	.section	__DATA,__const
	.align	4                       ## @long_options
_long_options:
	.quad	L_.str177
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	97                      ## 0x61
	.space	4
	.quad	L_.str178
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	98                      ## 0x62
	.space	4
	.quad	L_.str179
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	100                     ## 0x64
	.space	4
	.quad	L_.str180
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	68                      ## 0x44
	.space	4
	.quad	L_.str181
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	134                     ## 0x86
	.space	4
	.quad	L_.str182
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	135                     ## 0x87
	.space	4
	.quad	L_.str183
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	104                     ## 0x68
	.space	4
	.quad	L_.str184
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	105                     ## 0x69
	.space	4
	.quad	L_.str185
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	107                     ## 0x6b
	.space	4
	.quad	L_.str186
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	110                     ## 0x6e
	.space	4
	.quad	L_.str187
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	71                      ## 0x47
	.space	4
	.quad	L_.str188
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	113                     ## 0x71
	.space	4
	.quad	L_.str189
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	114                     ## 0x72
	.space	4
	.quad	L_.str174
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	115                     ## 0x73
	.space	4
	.quad	L_.str190
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	119                     ## 0x77
	.space	4
	.quad	L_.str191
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	65                      ## 0x41
	.space	4
	.quad	L_.str192
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	66                      ## 0x42
	.space	4
	.quad	L_.str153
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	70                      ## 0x46
	.space	4
	.quad	L_.str152
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	132                     ## 0x84
	.space	4
	.quad	L_.str193
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	140                     ## 0x8c
	.space	4
	.quad	L_.str194
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	72                      ## 0x48
	.space	4
	.quad	L_.str195
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	131                     ## 0x83
	.space	4
	.quad	L_.str196
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	136                     ## 0x88
	.space	4
	.quad	L_.str197
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	73                      ## 0x49
	.space	4
	.quad	L_.str198
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	137                     ## 0x89
	.space	4
	.quad	L_.str199
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	76                      ## 0x4c
	.space	4
	.quad	L_.str200
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	78                      ## 0x4e
	.space	4
	.quad	L_.str201
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	81                      ## 0x51
	.space	4
	.quad	L_.str202
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	138                     ## 0x8a
	.space	4
	.quad	L_.str203
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	82                      ## 0x52
	.space	4
	.quad	L_.str204
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	133                     ## 0x85
	.space	4
	.quad	L_.str205
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	139                     ## 0x8b
	.space	4
	.quad	L_.str206
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	141                     ## 0x8d
	.space	4
	.quad	L_.str207
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	84                      ## 0x54
	.space	4
	.quad	L_.str173
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	142                     ## 0x8e
	.space	4
	.quad	L_.str208
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	143                     ## 0x8f
	.space	4
	.quad	L_.str209
	.long	2                       ## 0x2
	.space	4
	.quad	0
	.long	130                     ## 0x82
	.space	4
	.quad	L_.str210
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	129                     ## 0x81
	.space	4
	.quad	L_.str211
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	90                      ## 0x5a
	.space	4
	.quad	L_.str212
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	128                     ## 0x80
	.space	4
	.quad	L_.str213
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	4294967166              ## 0xffffff7e
	.space	4
	.quad	L_.str176
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	4294967165              ## 0xffffff7d
	.space	4
	.quad	0
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	0                       ## 0x0
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str214:                              ## @.str214
	.asciz	"QUOTING_STYLE"

L_.str215:                              ## @.str215
	.asciz	"ignoring invalid value of environment variable QUOTING_STYLE: %s"

L_.str216:                              ## @.str216
	.asciz	" %lu"

L_.str217:                              ## @.str217
	.asciz	"m"

L_.str218:                              ## @.str218
	.asciz	"0"

L_.str219:                              ## @.str219
	.asciz	"01;34"

L_.str220:                              ## @.str220
	.asciz	"01;36"

L_.str221:                              ## @.str221
	.asciz	"33"

L_.str222:                              ## @.str222
	.asciz	"01;35"

L_.str223:                              ## @.str223
	.asciz	"01;33"

L_.str224:                              ## @.str224
	.asciz	"01;32"

L_.str225:                              ## @.str225
	.asciz	"37;41"

L_.str226:                              ## @.str226
	.asciz	"30;43"

L_.str227:                              ## @.str227
	.asciz	"37;44"

L_.str228:                              ## @.str228
	.asciz	"34;42"

L_.str229:                              ## @.str229
	.asciz	"30;42"

L_.str230:                              ## @.str230
	.asciz	"30;41"

L_.str231:                              ## @.str231
	.asciz	"\033[K"

L___func__.dev_ino_pop:                 ## @__func__.dev_ino_pop
	.asciz	"dev_ino_pop"

L_.str232:                              ## @.str232
	.asciz	"dev_ino_size <= obstack_object_size (&dev_ino_obstack)"

L_.str233:                              ## @.str233
	.asciz	"00"

	.section	__TEXT,__const
	.align	4                       ## @switch.table
l_switch.table:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	0                       ## 0x0
	.long	3                       ## 0x3
	.long	0                       ## 0x0
	.long	4                       ## 0x4
	.long	0                       ## 0x0
	.long	5                       ## 0x5
	.long	0                       ## 0x0
	.long	6                       ## 0x6
	.long	0                       ## 0x0
	.long	7                       ## 0x7
	.long	0                       ## 0x0
	.long	8                       ## 0x8

	.align	4                       ## @.memset_pattern
_.memset_pattern:
	.quad	3                       ## 0x3
	.quad	3                       ## 0x3


.subsections_via_symbols
