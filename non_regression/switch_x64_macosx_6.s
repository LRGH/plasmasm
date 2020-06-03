	.section	__TEXT,__text,regular,pure_instructions
	.globl	_usage
	.align	4, 0x90
_usage:                                 ## @usage
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
	pushq	%r12
	pushq	%rbx
Ltmp6:
	.cfi_offset %rbx, -48
Ltmp7:
	.cfi_offset %r12, -40
Ltmp8:
	.cfi_offset %r14, -32
Ltmp9:
	.cfi_offset %r15, -24
	movl	%edi, %r14d
	testl	%r14d, %r14d
	jne	LBB0_1
## BB#2:
	movq	_program_name@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	movq	%rsi, %rdx
	movq	%rsi, %rcx
	callq	_printf
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rsi
	leaq	L_.str1(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str119(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str2(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str118(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str3(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str4(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str5(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str6(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str7(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str8(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str9(%rip), %rdi
	callq	_fputs
	movq	(%rbx), %rsi
	leaq	L_.str10(%rip), %rdi
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
	leaq	_emit_ancillary_info.infomap(%rip), %rbx
	leaq	L_.str102(%rip), %rsi
	leaq	L_.str14(%rip), %r12
	.align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB0_5
## BB#3:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	16(%rbx), %rsi
	addq	$16, %rbx
	testq	%rsi, %rsi
	jne	LBB0_4
LBB0_5:                                 ## %.critedge.i
	movq	8(%rbx), %r15
	testq	%r15, %r15
	cmoveq	%r12, %r15
	leaq	L_.str111(%rip), %rdi
	leaq	L_.str33(%rip), %rsi
	leaq	L_.str112(%rip), %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$6, %edi
	xorl	%esi, %esi
	callq	_setlocale
	testq	%rax, %rax
	je	LBB0_8
## BB#6:
	leaq	L_.str113(%rip), %rsi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_strncmp
	testl	%eax, %eax
	je	LBB0_8
## BB#7:
	leaq	L_.str114(%rip), %rdi
	leaq	L_.str14(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
LBB0_8:                                 ## %emit_ancillary_info.exit
	leaq	L_.str115(%rip), %rdi
	leaq	L_.str112(%rip), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	_printf
	cmpq	%r12, %r15
	leaq	L_.str117(%rip), %rax
	leaq	L_.str15(%rip), %rdx
	cmoveq	%rax, %rdx
	leaq	L_.str116(%rip), %rdi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	_printf
	movl	%r14d, %edi
	callq	_exit
LBB0_1:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	_program_name@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	L_.str120(%rip), %rsi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	_fprintf
	movl	%r14d, %edi
	callq	_exit
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1304, %rsp             ## imm = 0x518
Ltmp16:
	.cfi_offset %rbx, -56
Ltmp17:
	.cfi_offset %r12, -48
Ltmp18:
	.cfi_offset %r13, -40
Ltmp19:
	.cfi_offset %r14, -32
Ltmp20:
	.cfi_offset %r15, -24
	movq	%rsi, -1296(%rbp)       ## 8-byte Spill
	movl	%edi, %r13d
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	(%rsi), %rdi
	callq	_set_program_name
	leaq	L_.str15(%rip), %rsi
	xorl	%edi, %edi
	callq	_setlocale
	movq	_close_stdout@GOTPCREL(%rip), %rdi
	callq	_atexit
	leaq	_format_address_std(%rip), %rdx
	movb	$1, -1297(%rbp)         ## 1-byte Folded Spill
	leaq	_short_options(%rip), %rbx
	leaq	_long_options(%rip), %r8
	leaq	-1260(%rbp), %r9
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -1328(%rbp)       ## 8-byte Spill
                                        ## implicit-def: RAX
	movq	%rax, -1320(%rbp)       ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, _integral_type_size+16(%rip)
	movaps	%xmm0, _integral_type_size(%rip)
	movl	$1, _integral_type_size+4(%rip)
	movl	$2, _integral_type_size+8(%rip)
	movl	$3, _integral_type_size+16(%rip)
	movl	$5, _integral_type_size+32(%rip)
	movaps	%xmm0, _fp_type_size+48(%rip)
	movaps	%xmm0, _fp_type_size+32(%rip)
	movaps	%xmm0, _fp_type_size+16(%rip)
	movaps	%xmm0, _fp_type_size(%rip)
	movl	$6, _fp_type_size+16(%rip)
	movl	$8, _fp_type_size+64(%rip)
	movl	$7, _fp_type_size+32(%rip)
	movq	$0, _n_specs(%rip)
	movq	$0, _n_specs_allocated(%rip)
	movq	$0, _spec(%rip)
	movq	%rdx, _format_address(%rip)
	movl	$8, _address_base(%rip)
	movl	$7, _address_pad_len(%rip)
	movb	$0, _flag_dump_strings(%rip)
	jmp	LBB1_1
LBB1_39:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %r12
	movq	%r8, %r13
	movq	%r9, %r15
	callq	_decode_format_string
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%r12, %r13
	andb	%al, -1297(%rbp)        ## 1-byte Folded Spill
	movb	%r14b, %cl
	.align	4, 0x90
LBB1_1:                                 ## %.backedge
                                        ## =>This Inner Loop Header: Depth=1
	movb	%cl, %r14b
	movl	$-1, -1260(%rbp)
	movl	%r13d, %edi
	movq	%r13, %r12
	movq	-1296(%rbp), %rsi       ## 8-byte Reload
	movq	%rbx, %rdx
	movq	%r8, %rcx
	movq	%r8, %r13
	movq	%r9, %r8
	movq	%r9, %r15
	callq	_rpl_getopt_long
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	cmpl	$-2, %eax
	jle	LBB1_2
## BB#5:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$64, %eax
	jle	LBB1_6
## BB#8:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	leal	-65(%rax), %eax
	cmpl	$64, %eax
	movq	%r13, %r8
	movq	%r12, %r13
	movq	%r15, %r9
	ja	LBB1_7
## BB#9:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	leaq	LJTI1_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movb	$1, %cl
	jmpq	*%rax
LBB1_48:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str28(%rip), %rdi
	jmp	LBB1_39
LBB1_50:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str30(%rip), %rdi
	jmp	LBB1_39
LBB1_44:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str24(%rip), %rdi
	jmp	LBB1_39
LBB1_46:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str26(%rip), %rdi
	jmp	LBB1_39
LBB1_52:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str32(%rip), %rdi
	jmp	LBB1_39
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$109, %ecx
	jg	LBB1_15
## BB#11:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$100, %ecx
	jne	LBB1_20
## BB#12:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	_format_address_std(%rip), %rax
	movq	%rax, _format_address(%rip)
	movl	$10, _address_base(%rip)
	jmp	LBB1_13
LBB1_42:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str22(%rip), %rdi
	jmp	LBB1_39
LBB1_24:                                ##   in Loop: Header=BB1_1 Depth=1
	movb	$1, _limit_bytes_to_format(%rip)
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	_max_bytes_to_format(%rip), %rcx
	movq	%r13, %r12
	movq	%r8, %r13
	leaq	_main.multipliers(%rip), %r8
	movq	%r9, %r15
	callq	_xstrtoumax
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%r12, %r13
	movb	$1, %cl
	movq	%rcx, -1312(%rbp)       ## 8-byte Spill
	testl	%eax, %eax
	movb	%r14b, %cl
	je	LBB1_1
	jmp	LBB1_25
LBB1_49:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str29(%rip), %rdi
	jmp	LBB1_39
LBB1_26:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	movl	$3, %eax
	je	LBB1_30
## BB#27:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r12
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	-1256(%rbp), %rcx
	leaq	_main.multipliers(%rip), %r8
	callq	_xstrtoumax
	testl	%eax, %eax
	jne	LBB1_28
## BB#29:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-1256(%rbp), %rax
	leaq	_long_options(%rip), %r8
	movq	%r12, %r9
LBB1_30:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%rax, _string_min(%rip)
	movb	$1, _flag_dump_strings(%rip)
	jmp	LBB1_14
LBB1_38:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str19(%rip), %rdi
	jmp	LBB1_39
LBB1_40:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str20(%rip), %rdi
	jmp	LBB1_39
LBB1_41:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str21(%rip), %rdi
	jmp	LBB1_39
LBB1_43:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str23(%rip), %rdi
	jmp	LBB1_39
LBB1_45:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str25(%rip), %rdi
	jmp	LBB1_39
LBB1_47:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str27(%rip), %rdi
	jmp	LBB1_39
LBB1_21:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	_n_bytes_to_skip(%rip), %rcx
	movq	%r13, %r12
	movq	%r8, %r13
	leaq	_main.multipliers(%rip), %r8
	movq	%r9, %r15
	callq	_xstrtoumax
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%r12, %r13
	movb	$1, %cl
	movq	%rcx, -1312(%rbp)       ## 8-byte Spill
	testl	%eax, %eax
	movb	%r14b, %cl
	je	LBB1_1
	jmp	LBB1_22
LBB1_51:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str31(%rip), %rdi
	jmp	LBB1_39
LBB1_31:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%r13, %r12
	movq	%r8, %r13
	movq	%r9, %r15
	callq	_decode_format_string
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%r12, %r13
	andb	%al, -1297(%rbp)        ## 1-byte Folded Spill
	jmp	LBB1_14
LBB1_32:                                ##   in Loop: Header=BB1_1 Depth=1
	movb	$1, _abbreviate_duplicate_blocks(%rip)
	jmp	LBB1_14
LBB1_53:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movb	$1, %al
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
	testq	%rdi, %rdi
	movb	%r14b, %cl
	movb	$1, %al
	movq	%rax, -1328(%rbp)       ## 8-byte Spill
	movl	$32, %eax
	movq	%rax, -1320(%rbp)       ## 8-byte Spill
	je	LBB1_1
## BB#54:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r12
	xorl	%esi, %esi
	movl	$10, %edx
	leaq	-1272(%rbp), %rcx
	leaq	L_.str15(%rip), %r8
	callq	_xstrtoumax
	testl	%eax, %eax
	jne	LBB1_55
## BB#56:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-1272(%rbp), %rax
	movq	%rax, -1320(%rbp)       ## 8-byte Spill
	movb	%r14b, %cl
	movb	$1, %al
	movq	%rax, -1328(%rbp)       ## 8-byte Spill
	jmp	LBB1_37
LBB1_33:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r12
	movq	_rpl_optarg@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_argmatch_die@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	movl	$4, %r8d
	leaq	L_.str18(%rip), %rdi
	leaq	_endian_args(%rip), %rdx
	leaq	_endian_types(%rip), %r15
	movq	%r15, %rcx
	callq	___xargmatch_internal
	movl	(%r15,%rax,4), %eax
	testl	%eax, %eax
	jne	LBB1_34
## BB#36:                               ##   in Loop: Header=BB1_1 Depth=1
	movb	$0, _input_swap(%rip)
	movb	%r14b, %cl
LBB1_37:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	leaq	_long_options(%rip), %r8
	movq	%r12, %r9
	jmp	LBB1_1
LBB1_15:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$110, %ecx
	je	LBB1_19
## BB#16:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$111, %ecx
	jne	LBB1_17
## BB#291:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	_format_address_std(%rip), %rax
	movq	%rax, _format_address(%rip)
	movl	$8, _address_base(%rip)
LBB1_13:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	$7, _address_pad_len(%rip)
	jmp	LBB1_14
LBB1_34:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$1, %eax
	movb	%r14b, %cl
	leaq	_long_options(%rip), %r8
	movq	%r12, %r9
	jne	LBB1_1
## BB#35:                               ##   in Loop: Header=BB1_1 Depth=1
	movb	$1, _input_swap(%rip)
	movb	%r14b, %cl
	jmp	LBB1_1
LBB1_19:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	_format_address_none(%rip), %rax
	movq	%rax, _format_address(%rip)
	movl	$0, _address_pad_len(%rip)
	jmp	LBB1_14
LBB1_17:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$120, %ecx
	jne	LBB1_20
## BB#18:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	_format_address_std(%rip), %rax
	movq	%rax, _format_address(%rip)
	movl	$16, _address_base(%rip)
	movl	$6, _address_pad_len(%rip)
	jmp	LBB1_14
LBB1_20:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	L_.str16(%rip), %rdx
	movq	%r13, %r12
	movq	%r8, %r13
	movq	%r9, %r15
	callq	_error
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%r12, %r13
LBB1_14:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	movb	$1, %al
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
	movb	%r14b, %cl
	jmp	LBB1_1
LBB1_2:                                 ## %.backedge
	cmpl	$-131, %eax
	jne	LBB1_3
## BB#57:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	_Version@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str14(%rip), %rsi
	leaq	L_.str33(%rip), %rdx
	leaq	L_.str34(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	_version_etc
	xorl	%edi, %edi
	callq	_exit
LBB1_6:                                 ## %.backedge
	cmpl	$-1, %eax
	movq	%r12, %r13
	jne	LBB1_7
## BB#58:
	movl	$1, %ebx
	testb	$1, -1297(%rbp)         ## 1-byte Folded Reload
	je	LBB1_289
## BB#59:
	movb	_flag_dump_strings(%rip), %al
	testb	%al, %al
	je	LBB1_62
## BB#60:
	movq	_n_specs(%rip), %rax
	testq	%rax, %rax
	je	LBB1_62
## BB#61:
	leaq	L_.str35(%rip), %rdx
	movl	$1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB1_62:
	movq	_rpl_optind@GOTPCREL(%rip), %r12
	movslq	(%r12), %rax
	subl	%eax, %r13d
	movb	$1, %cl
	movl	%ecx, -1336(%rbp)       ## 4-byte Spill
	movq	-1312(%rbp), %rcx       ## 8-byte Reload
	testb	%cl, %cl
	je	LBB1_65
## BB#63:
	testb	%r14b, %r14b
	jne	LBB1_65
## BB#64:
                                        ## implicit-def: RAX
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
	movq	-1296(%rbp), %r15       ## 8-byte Reload
	jmp	LBB1_130
LBB1_3:                                 ## %.backedge
	cmpl	$-130, %eax
	jne	LBB1_7
## BB#4:
	xorl	%edi, %edi
	callq	_usage
LBB1_7:
	movl	$1, %edi
	callq	_usage
LBB1_65:
	cmpl	$3, %r13d
	movq	-1296(%rbp), %r15       ## 8-byte Reload
	je	LBB1_103
## BB#66:
	cmpl	$2, %r13d
	jne	LBB1_67
## BB#80:
	incl	%eax
	cltq
	testb	%r14b, %r14b
	jne	LBB1_84
## BB#81:
	movq	(%r15,%rax,8), %rcx
	movsbl	(%rcx), %ecx
	cmpl	$43, %ecx
	je	LBB1_84
## BB#82:
	addl	$-48, %ecx
	cmpl	$9, %ecx
	ja	LBB1_83
LBB1_84:                                ## %._crit_edge361
	movq	(%r15,%rax,8), %rbx
	movb	(%rbx), %al
	movl	$2, %r13d
	testb	%al, %al
	je	LBB1_124
## BB#85:                               ## %._crit_edge361
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	LBB1_87
## BB#86:
	incq	%rbx
LBB1_87:
	movl	$46, %esi
	movq	%rbx, %rdi
	callq	_strchr
	movl	$10, %edx
	testq	%rax, %rax
	jne	LBB1_91
## BB#88:
	movzbl	(%rbx), %eax
	cmpl	$48, %eax
	jne	LBB1_90
## BB#89:
	movb	1(%rbx), %al
	movl	$16, %edx
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$120, %eax
	je	LBB1_91
LBB1_90:
	movl	$8, %edx
LBB1_91:                                ## %parse_old_offset.exit16
	leaq	L_.str61(%rip), %r8
	leaq	-1288(%rbp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_xstrtoumax
	testl	%eax, %eax
	jne	LBB1_124
## BB#92:
	testb	%r14b, %r14b
	je	LBB1_102
## BB#93:
	movslq	(%r12), %rax
	movq	(%r15,%rax,8), %rbx
	movb	(%rbx), %al
	testb	%al, %al
	je	LBB1_102
## BB#94:
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	LBB1_96
## BB#95:
	incq	%rbx
LBB1_96:
	movl	$46, %esi
	movq	%rbx, %rdi
	callq	_strchr
	movl	$10, %edx
	testq	%rax, %rax
	jne	LBB1_100
## BB#97:
	movzbl	(%rbx), %eax
	cmpl	$48, %eax
	jne	LBB1_99
## BB#98:
	movb	1(%rbx), %al
	movl	$16, %edx
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$120, %eax
	je	LBB1_100
LBB1_99:
	movl	$8, %edx
LBB1_100:                               ## %parse_old_offset.exit20
	leaq	L_.str61(%rip), %r8
	xorl	%r13d, %r13d
	leaq	-1280(%rbp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_xstrtoumax
	testl	%eax, %eax
	je	LBB1_101
LBB1_102:                               ## %parse_old_offset.exit20.thread
	movq	-1288(%rbp), %rax
	movq	%rax, _n_bytes_to_skip(%rip)
	movslq	(%r12), %rax
	movq	(%r15,%rax,8), %rcx
	leal	1(%rax), %eax
	cltq
	movq	%rcx, (%r15,%rax,8)
	addq	$8, %r15
	movl	$1, %r13d
	jmp	LBB1_125
LBB1_103:
	testb	%r14b, %r14b
	je	LBB1_104
## BB#105:
	incl	%eax
	cltq
	movq	(%r15,%rax,8), %rbx
	movb	(%rbx), %al
	movl	$3, %r13d
	testb	%al, %al
	je	LBB1_124
## BB#106:
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	LBB1_108
## BB#107:
	incq	%rbx
LBB1_108:
	movl	$46, %esi
	movq	%rbx, %rdi
	callq	_strchr
	movl	$10, %edx
	testq	%rax, %rax
	jne	LBB1_112
## BB#109:
	movzbl	(%rbx), %eax
	cmpl	$48, %eax
	jne	LBB1_111
## BB#110:
	movb	1(%rbx), %al
	movl	$16, %edx
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$120, %eax
	je	LBB1_112
LBB1_111:
	movl	$8, %edx
LBB1_112:                               ## %parse_old_offset.exit24
	leaq	L_.str61(%rip), %r8
	leaq	-1280(%rbp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_xstrtoumax
	testl	%eax, %eax
	jne	LBB1_124
## BB#113:
	movl	(%r12), %eax
	addl	$2, %eax
	cltq
	movq	(%r15,%rax,8), %rbx
	movb	(%rbx), %al
	testb	%al, %al
	je	LBB1_124
## BB#114:
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	LBB1_116
## BB#115:
	incq	%rbx
LBB1_116:
	movl	$46, %esi
	movq	%rbx, %rdi
	callq	_strchr
	movl	$10, %edx
	testq	%rax, %rax
	jne	LBB1_120
## BB#117:
	movzbl	(%rbx), %eax
	cmpl	$48, %eax
	jne	LBB1_119
## BB#118:
	movb	1(%rbx), %al
	movl	$16, %edx
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$120, %eax
	je	LBB1_120
LBB1_119:
	movl	$8, %edx
LBB1_120:                               ## %parse_old_offset.exit28
	leaq	L_.str61(%rip), %r8
	leaq	-1288(%rbp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_xstrtoumax
	testl	%eax, %eax
	jne	LBB1_124
## BB#121:
	movq	-1280(%rbp), %rax
	movq	%rax, _n_bytes_to_skip(%rip)
	movq	-1288(%rbp), %rax
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
	movslq	(%r12), %rax
	movq	(%r15,%rax,8), %rcx
	leal	2(%rax), %eax
	cltq
	movq	%rcx, (%r15,%rax,8)
	movl	$1, %r13d
	jmp	LBB1_122
LBB1_67:
	cmpl	$1, %r13d
	jne	LBB1_124
## BB#68:
	movq	(%r15,%rax,8), %rbx
	movb	(%rbx), %al
	testb	%r14b, %r14b
	je	LBB1_69
## BB#71:
	testb	%al, %al
	je	LBB1_70
## BB#72:
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	LBB1_74
	jmp	LBB1_73
LBB1_124:                               ## %parse_old_offset.exit.thread
	testb	%r14b, %r14b
	je	LBB1_125
## BB#126:                              ## %parse_old_offset.exit.thread
	cmpl	$2, %r13d
	jl	LBB1_125
## BB#127:
	movl	(%r12), %eax
	incl	%eax
	cltq
	movq	(%r15,%rax,8), %rax
	movq	%rax, %rdi
	callq	_quote
	movq	%rax, %rcx
	leaq	L_.str36(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	leaq	L_.str37(%rip), %rcx
	leaq	L_.str38(%rip), %rbx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	callq	_error
	movl	$1, %edi
	callq	_usage
LBB1_104:
	movl	$3, %r13d
	jmp	LBB1_125
LBB1_69:
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	LBB1_70
LBB1_73:                                ## %.thread
	incq	%rbx
LBB1_74:
	movl	$46, %esi
	movq	%rbx, %rdi
	callq	_strchr
	movl	$10, %edx
	testq	%rax, %rax
	jne	LBB1_78
## BB#75:
	movzbl	(%rbx), %eax
	cmpl	$48, %eax
	jne	LBB1_77
## BB#76:
	movb	1(%rbx), %al
	movl	$16, %edx
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$120, %eax
	je	LBB1_78
LBB1_77:
	movl	$8, %edx
LBB1_78:                                ## %parse_old_offset.exit
	leaq	L_.str61(%rip), %r8
	xorl	%r13d, %r13d
	leaq	-1280(%rbp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_xstrtoumax
	testl	%eax, %eax
	je	LBB1_79
LBB1_70:
	movl	$1, %r13d
	jmp	LBB1_125
LBB1_83:
	movl	$2, %r13d
	jmp	LBB1_125
LBB1_79:
	movq	-1280(%rbp), %rax
	movq	%rax, _n_bytes_to_skip(%rip)
	addq	$8, %r15
LBB1_125:
                                        ## implicit-def: RAX
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
LBB1_130:                               ## %.thread53
	movzbl	_limit_bytes_to_format(%rip), %eax
	cmpl	$1, %eax
	jne	LBB1_133
## BB#131:
	movq	_n_bytes_to_skip(%rip), %rax
	addq	_max_bytes_to_format(%rip), %rax
	movq	%rax, _end_offset(%rip)
	jae	LBB1_133
## BB#132:
	leaq	L_.str39(%rip), %rdx
	movl	$1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB1_133:
	cmpq	$0, _n_specs(%rip)
	jne	LBB1_135
## BB#134:
	leaq	L_.str40(%rip), %rdi
	callq	_decode_format_string
LBB1_135:
	testl	%r13d, %r13d
	jle	LBB1_136
## BB#137:
	movslq	(%r12), %rax
	leaq	(%r15,%rax,8), %rax
	jmp	LBB1_138
LBB1_136:
	leaq	_default_file_list(%rip), %rax
LBB1_138:
	movq	%rax, _file_list(%rip)
	callq	_open_next_file
	movb	%al, %r11b
	movq	_in_stream(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB1_139
## BB#140:
	movq	_n_bytes_to_skip(%rip), %r14
	testq	%r14, %r14
	je	LBB1_163
## BB#141:                              ## %.preheader19.i
	movb	%r11b, -1297(%rbp)      ## 1-byte Spill
	movb	$1, %r15b
	leaq	-1248(%rbp), %rbx
	leaq	L_.str37(%rip), %r12
	.align	4, 0x90
LBB1_142:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_151 Depth 2
                                        ##       Child Loop BB1_152 Depth 3
	callq	_fileno
	movl	%eax, %edi
	movq	%rbx, %rsi
	callq	_fstat$INODE64
	testl	%eax, %eax
	je	LBB1_143
## BB#157:                              ##   in Loop: Header=BB1_142 Depth=1
	callq	___error
	movl	(%rax), %esi
	movq	_input_filename(%rip), %rcx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	_error
	jmp	LBB1_158
LBB1_143:                               ##   in Loop: Header=BB1_142 Depth=1
	movzwl	-1244(%rbp), %eax
	orl	$8192, %eax             ## imm = 0x2000
	andl	$61440, %eax            ## imm = 0xF000
	cmpl	$40960, %eax            ## imm = 0xA000
	jne	LBB1_149
## BB#144:                              ## %usable_st_size.exit.thread.i
                                        ##   in Loop: Header=BB1_142 Depth=1
	movslq	-1136(%rbp), %rcx
	testq	%rcx, %rcx
	movl	$512, %eax              ## imm = 0x200
	cmovleq	%rax, %rcx
	movq	-1152(%rbp), %rax
	cmpq	%rax, %rcx
	jge	LBB1_149
## BB#145:                              ##   in Loop: Header=BB1_142 Depth=1
	movq	%r14, %rcx
	subq	%rax, %rcx
	jbe	LBB1_147
## BB#146:                              ##   in Loop: Header=BB1_142 Depth=1
	movq	%rbx, %r12
	movq	%rcx, %r14
	jmp	LBB1_156
LBB1_149:                               ##   in Loop: Header=BB1_142 Depth=1
	movq	%rbx, %r12
	testq	%r14, %r14
	movl	$1024, %r13d            ## imm = 0x400
	je	LBB1_161
LBB1_151:                               ## %.preheader.i
                                        ##   Parent Loop BB1_142 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_152 Depth 3
	movq	_in_stream(%rip), %rcx
	movq	%r14, %rbx
	.align	4, 0x90
LBB1_152:                               ##   Parent Loop BB1_142 Depth=1
                                        ##     Parent Loop BB1_151 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpq	%r13, %rbx
	cmovbq	%rbx, %r13
	movl	$1, %esi
	leaq	-1088(%rbp), %rdi
	movq	%r13, %rdx
	callq	_fread
	movq	%rbx, %r14
	subq	%rax, %r14
	cmpq	%r13, %rax
	je	LBB1_150
## BB#153:                              ##   in Loop: Header=BB1_152 Depth=3
	movq	_in_stream(%rip), %rcx
	movswl	16(%rcx), %edx
	testb	$64, %dl
	jne	LBB1_148
## BB#154:                              ##   in Loop: Header=BB1_152 Depth=3
	testb	$32, %dl
	jne	LBB1_156
## BB#155:                              ##   in Loop: Header=BB1_152 Depth=3
	cmpq	%rax, %rbx
	movq	%r14, %rbx
	jne	LBB1_152
	jmp	LBB1_156
LBB1_150:                               ## %.loopexit.i
                                        ##   in Loop: Header=BB1_151 Depth=2
	cmpq	%r13, %rbx
	jne	LBB1_151
	jmp	LBB1_161
LBB1_156:                               ## %.loopexit11.i
                                        ##   in Loop: Header=BB1_142 Depth=1
	testq	%r14, %r14
	movq	%r12, %rbx
	leaq	L_.str37(%rip), %r12
	je	LBB1_161
LBB1_158:                               ##   in Loop: Header=BB1_142 Depth=1
	xorl	%edi, %edi
	callq	_check_and_close
	movb	%al, %r13b
	andb	%r15b, %r13b
	callq	_open_next_file
	movb	%al, %r15b
	andb	%r13b, %r15b
	movq	_in_stream(%rip), %rdi
	testq	%rdi, %rdi
	jne	LBB1_142
## BB#159:                              ## %.thread9.i
	testq	%r14, %r14
	je	LBB1_161
## BB#160:
	leaq	L_.str59(%rip), %rdx
	movl	$1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	jmp	LBB1_161
LBB1_139:
	movzbl	%r11b, %ebx
	jmp	LBB1_285
LBB1_147:
	movq	_in_stream(%rip), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	callq	_rpl_fseeko
	testl	%eax, %eax
	je	LBB1_161
LBB1_148:
	callq	___error
	xorl	%r15d, %r15d
LBB1_161:                               ## %skip.exit
	movb	-1297(%rbp), %r11b      ## 1-byte Reload
	andb	%r15b, %r11b
	cmpq	$0, _in_stream(%rip)
	je	LBB1_162
LBB1_163:                               ## %skip.exit.thread
	xorl	%eax, %eax
	movl	-1336(%rbp), %ecx       ## 4-byte Reload
	testb	%cl, %cl
	movq	-1320(%rbp), %rcx       ## 8-byte Reload
	jne	LBB1_165
## BB#164:
	movq	-1312(%rbp), %rax       ## 8-byte Reload
	subq	_n_bytes_to_skip(%rip), %rax
LBB1_165:
	movq	%rax, _pseudo_offset(%rip)
	movq	_n_specs(%rip), %r9
	movl	$1, %esi
	testq	%r9, %r9
	je	LBB1_170
## BB#166:                              ## %.lr.ph.i
	movq	_spec(%rip), %r10
	xorl	%edi, %edi
	movl	$1, %esi
	leaq	_width_bytes(%rip), %r8
	.align	4, 0x90
LBB1_167:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_168 Depth 2
	movslq	%esi, %r14
	leaq	(%rdi,%rdi,4), %rax
	movl	4(%r10,%rax,8), %eax
	movslq	(%r8,%rax,4), %rbx
	movq	%rbx, %rdx
	movq	%r14, %rsi
	.align	4, 0x90
LBB1_168:                               ##   Parent Loop BB1_167 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rax
	movq	%rdx, %rsi
	xorl	%edx, %edx
	divq	%rsi
	testq	%rdx, %rdx
	jne	LBB1_168
## BB#169:                              ## %lcm.exit.i
                                        ##   in Loop: Header=BB1_167 Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rsi
	movq	%rax, %rsi
	imulq	%r14, %rsi
	incq	%rdi
	cmpq	%r9, %rdi
	jne	LBB1_167
LBB1_170:                               ## %get_lcm.exit
	movq	-1328(%rbp), %rax       ## 8-byte Reload
	testb	%al, %al
	je	LBB1_175
## BB#171:
	testq	%rcx, %rcx
	movslq	%esi, %r14
	je	LBB1_174
## BB#172:
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%r14
	testq	%rdx, %rdx
	je	LBB1_173
LBB1_174:                               ## %._crit_edge367
	movb	%r11b, -1297(%rbp)      ## 1-byte Spill
	leaq	L_.str41(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%r14d, %r8d
	callq	_error
	movq	%r14, _bytes_per_block(%rip)
	movq	_n_specs(%rip), %r9
	jmp	LBB1_179
LBB1_175:
	cmpl	$15, %esi
	jg	LBB1_177
## BB#176:
	movb	%r11b, -1297(%rbp)      ## 1-byte Spill
	movl	$16, %ecx
	movl	$16, %eax
	xorl	%edx, %edx
	idivl	%esi
	subl	%edx, %ecx
	movslq	%ecx, %r14
	jmp	LBB1_178
LBB1_162:
	movzbl	%r11b, %ebx
	jmp	LBB1_285
LBB1_177:
	movb	%r11b, -1297(%rbp)      ## 1-byte Spill
	movslq	%esi, %r14
LBB1_178:                               ## %.preheader143
	movq	%r14, _bytes_per_block(%rip)
	jmp	LBB1_179
LBB1_173:
	movb	%r11b, -1297(%rbp)      ## 1-byte Spill
	movq	%rcx, _bytes_per_block(%rip)
	movq	%rcx, %r14
LBB1_179:                               ## %.preheader143
	testq	%r9, %r9
	je	LBB1_190
## BB#180:                              ## %.lr.ph146
	movq	_spec(%rip), %r8
	xorl	%ecx, %ecx
	movq	%r9, %r10
	andq	$-2, %r10
	movl	$0, %r12d
	movl	$0, %edi
	je	LBB1_184
## BB#181:                              ## %vector.body.preheader
	leaq	68(%r8), %rbx
	xorl	%r12d, %r12d
	leaq	_width_bytes(%rip), %r11
	movq	%r10, %rcx
	xorl	%edi, %edi
	.align	4, 0x90
LBB1_182:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movl	-64(%rbx), %eax
	movl	-40(%rbx), %esi
	movl	-24(%rbx), %edx
	movslq	(%r11,%rax,4), %r15
	movslq	(%r11,%rdx,4), %r13
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r15
	movq	%rax, %r15
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r13
	movl	(%rbx), %edx
	incl	%esi
	incl	%edx
	imull	%r15d, %esi
	imull	%eax, %edx
	movslq	%esi, %rax
	movslq	%edx, %rdx
	cmpq	%rax, %r12
	cmovbq	%rax, %r12
	cmpq	%rdx, %rdi
	cmovbq	%rdx, %rdi
	addq	$80, %rbx
	addq	$-2, %rcx
	jne	LBB1_182
## BB#183:
	movq	%r10, %rcx
LBB1_184:                               ## %middle.block
	cmpq	%rdi, %r12
	cmovaq	%r12, %rdi
	cmpq	%rcx, %r9
	je	LBB1_187
## BB#185:                              ## %scalar.ph.preheader
	leaq	(%rcx,%rcx,4), %rax
	leaq	28(%r8,%rax,8), %rsi
	leaq	_width_bytes(%rip), %r8
	.align	4, 0x90
LBB1_186:                               ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	-24(%rsi), %eax
	movl	(%rsi), %ebx
	movslq	(%r8,%rax,4), %r10
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r10
	incl	%ebx
	imull	%eax, %ebx
	movslq	%ebx, %rax
	cmpq	%rax, %rdi
	cmovbq	%rax, %rdi
	incq	%rcx
	addq	$40, %rsi
	cmpq	%r9, %rcx
	jb	LBB1_186
LBB1_187:                               ## %.preheader
	testq	%r9, %r9
	je	LBB1_190
## BB#188:                              ## %.lr.ph142
	movq	_spec(%rip), %rcx
	addq	$32, %rcx
	xorl	%esi, %esi
	leaq	_width_bytes(%rip), %r8
	.align	4, 0x90
LBB1_189:                               ## =>This Inner Loop Header: Depth=1
	movl	-28(%rcx), %eax
	movslq	(%r8,%rax,4), %rbx
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%rbx
	imull	-4(%rcx), %eax
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
	incq	%rsi
	addq	$40, %rcx
	cmpq	%r9, %rsi
	jb	LBB1_189
LBB1_190:                               ## %._crit_edge
	movzbl	_flag_dump_strings(%rip), %eax
	cmpl	$1, %eax
	jne	LBB1_252
## BB#191:
	movq	_string_min(%rip), %rax
	cmpq	$100, %rax
	movl	$100, %edi
	cmovaeq	%rax, %rdi
	movq	%rdi, -1104(%rbp)
	callq	_xmalloc
	movq	%rax, -1296(%rbp)       ## 8-byte Spill
	movb	$1, %r12b
	movq	_n_bytes_to_skip(%rip), %r13
	jmp	LBB1_192
LBB1_252:
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r14
	cmpq	$1, %rax
	jbe	LBB1_292
## BB#253:                              ## %xnmalloc.exit.i
	addq	%r14, %r14
	movq	%r14, %rdi
	callq	_xmalloc
	movq	%rax, %r13
	movq	%r13, -64(%rbp)
	movq	_bytes_per_block(%rip), %rdi
                                        ## kill: RAX<def> R13<kill>
	addq	%rdi, %rax
	movq	%rax, -56(%rbp)
	movq	_n_bytes_to_skip(%rip), %rbx
	movb	_limit_bytes_to_format(%rip), %al
	testb	%al, %al
	je	LBB1_254
## BB#256:                              ## %.preheader.i38
	movq	_end_offset(%rip), %rax
	movb	$1, %r14b
	subq	%rbx, %rax
	jbe	LBB1_265
## BB#257:                              ## %.lr.ph.i39.preheader
	cmpq	%rdi, %rax
	cmovbq	%rax, %rdi
	leaq	-1096(%rbp), %rdx
	movq	%r13, %rsi
	callq	_read_block
	movb	%al, -1296(%rbp)        ## 1-byte Spill
	movq	-1096(%rbp), %r12
	movq	%r13, %rax
	movq	_bytes_per_block(%rip), %r13
	xorl	%r15d, %r15d
	cmpq	%r13, %r12
	jae	LBB1_259
## BB#258:
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
	jmp	LBB1_271
LBB1_254:                               ## %.preheader19.i37
	leaq	-1096(%rbp), %rdx
	movq	%r13, %rsi
	callq	_read_block
	movb	%al, -1296(%rbp)        ## 1-byte Spill
	movq	-1096(%rbp), %r12
	movq	_bytes_per_block(%rip), %r14
	xorl	%r15d, %r15d
	cmpq	%r14, %r12
	jae	LBB1_267
## BB#255:
	movq	%r13, -1312(%rbp)       ## 8-byte Spill
	jmp	LBB1_271
LBB1_267:
	movq	%r13, %rcx
	movq	%r13, -1312(%rbp)       ## 8-byte Spill
	.align	4, 0x90
LBB1_268:                               ## %.lr.ph29.i
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%r14, %r12
	jne	LBB1_269
## BB#270:                              ##   in Loop: Header=BB1_268 Depth=1
	xorb	$1, %r15b
	movzbl	%r15b, %eax
	movq	-64(%rbp,%rax,8), %r13
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_write_block
	addq	%r14, %rbx
	movq	_bytes_per_block(%rip), %rdi
	movq	%r13, %rsi
	leaq	-1096(%rbp), %rdx
	callq	_read_block
	andb	%al, -1296(%rbp)        ## 1-byte Folded Spill
	movq	-1096(%rbp), %r12
	movq	_bytes_per_block(%rip), %r14
	cmpq	%r14, %r12
	movq	%r13, %rcx
	jae	LBB1_268
	jmp	LBB1_271
LBB1_259:
	movq	%rax, %rcx
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
LBB1_260:                               ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%r13, %r12
	jne	LBB1_261
## BB#263:                              ##   in Loop: Header=BB1_260 Depth=1
	xorb	$1, %r15b
	movzbl	%r15b, %eax
	movq	-64(%rbp,%rax,8), %r14
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_write_block
	addq	%r13, %rbx
	movq	_end_offset(%rip), %rax
	subq	%rbx, %rax
	jbe	LBB1_264
## BB#266:                              ## %._crit_edge.i41
                                        ##   in Loop: Header=BB1_260 Depth=1
	movq	_bytes_per_block(%rip), %rdi
	cmpq	%rdi, %rax
	cmovbq	%rax, %rdi
	movq	%r14, %rsi
	leaq	-1096(%rbp), %rdx
	callq	_read_block
	andb	%al, -1296(%rbp)        ## 1-byte Folded Spill
	movq	-1096(%rbp), %r12
	movq	_bytes_per_block(%rip), %r13
	cmpq	%r13, %r12
	movq	%r14, %rcx
	jae	LBB1_260
LBB1_271:                               ## %.loopexit.i42
	movq	%rbx, %r13
	testq	%r12, %r12
	je	LBB1_272
## BB#273:
	movq	_n_specs(%rip), %r8
	movl	$1, %ecx
	testq	%r8, %r8
	je	LBB1_279
## BB#274:                              ## %.lr.ph.i.i43
	movq	_spec(%rip), %r10
	xorl	%esi, %esi
	movl	$1, %eax
	leaq	_width_bytes(%rip), %r9
	.align	4, 0x90
LBB1_275:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_276 Depth 2
	movslq	%eax, %rdi
	leaq	(%rsi,%rsi,4), %rax
	movl	4(%r10,%rax,8), %eax
	movslq	(%r9,%rax,4), %rcx
	movq	%rcx, %rdx
	movq	%rdi, %rbx
	.align	4, 0x90
LBB1_276:                               ##   Parent Loop BB1_275 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rax
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
	testq	%rdx, %rdx
	jne	LBB1_276
## BB#277:                              ## %lcm.exit.i.i
                                        ##   in Loop: Header=BB1_275 Depth=1
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rbx
	imulq	%rdi, %rax
	incq	%rsi
	cmpq	%r8, %rsi
	jne	LBB1_275
## BB#278:                              ## %._crit_edge.i.i46
	movslq	%eax, %rcx
LBB1_279:                               ## %get_lcm.exit.i
	leaq	-1(%r12,%rcx), %rsi
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%rcx
	andb	$1, %r15b
	movzbl	%r15b, %ebx
	leaq	(,%rbx,8), %rax
	leaq	-64(%rbp), %r15
	orq	%r15, %rax
	movq	(%rax), %r14
	leaq	(%r14,%r12), %rdi
	addq	%r12, %rdx
	subq	%rdx, %rsi
	callq	___bzero
	xorb	$1, %bl
	movzbl	%bl, %eax
	shlq	$3, %rax
	orq	%r15, %rax
	movq	(%rax), %rdx
	movq	%r13, %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	_write_block
	addq	%r12, %rbx
	movq	-1312(%rbp), %r13       ## 8-byte Reload
	movb	-1296(%rbp), %r14b      ## 1-byte Reload
	jmp	LBB1_280
LBB1_272:
	movb	-1296(%rbp), %r14b      ## 1-byte Reload
	movq	%r13, %rbx
	movq	-1312(%rbp), %r13       ## 8-byte Reload
	jmp	LBB1_280
LBB1_264:
	movb	-1296(%rbp), %r14b      ## 1-byte Reload
	movq	-1312(%rbp), %r13       ## 8-byte Reload
LBB1_265:                               ## %.thread.i
	movq	$0, -1096(%rbp)
LBB1_280:
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*_format_address(%rip)
	cmpq	_end_offset(%rip), %rbx
	jb	LBB1_283
## BB#281:
	movb	_limit_bytes_to_format(%rip), %al
	xorb	$1, %al
	testb	$1, %al
	jne	LBB1_283
## BB#282:
	xorl	%edi, %edi
	callq	_check_and_close
	andb	%al, %r14b
LBB1_283:                               ## %dump.exit
	movq	%r13, %rdi
	callq	_free
	andb	$1, %r14b
	jmp	LBB1_284
LBB1_208:                               ##   in Loop: Header=BB1_192 Depth=1
	movq	%r15, %r13
LBB1_192:                               ## %__sputc.exit16.i
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_197 Depth 2
                                        ##       Child Loop BB1_198 Depth 3
                                        ##     Child Loop BB1_213 Depth 2
                                        ##       Child Loop BB1_217 Depth 3
                                        ##     Child Loop BB1_233 Depth 2
	movb	_limit_bytes_to_format(%rip), %al
	testb	%al, %al
	je	LBB1_193
## BB#194:                              ##   in Loop: Header=BB1_192 Depth=1
	movq	_end_offset(%rip), %rdx
	movq	_string_min(%rip), %rcx
	subq	%rcx, %rdx
	jb	LBB1_251
## BB#195:                              ##   in Loop: Header=BB1_192 Depth=1
	cmpq	%r13, %rdx
	ja	LBB1_196
	jmp	LBB1_251
LBB1_193:                               ## %__sputc.exit16..preheader_crit_edge.i
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	_string_min(%rip), %rcx
LBB1_196:                               ## %.preheader.i32
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	%r13, %r15
	testq	%rcx, %rcx
	movl	$0, %r13d
	movl	$0, %r14d
	je	LBB1_211
LBB1_197:                               ## %.lr.ph.i33
                                        ##   Parent Loop BB1_192 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_198 Depth 3
	movq	_in_stream(%rip), %rdi
	movb	$1, %bl
	jmp	LBB1_198
	.align	4, 0x90
LBB1_200:                               ##   in Loop: Header=BB1_198 Depth=3
	callq	___error
	movl	(%rax), %edi
	callq	_check_and_close
	andb	%al, %bl
	callq	_open_next_file
	andb	%al, %bl
	movq	_in_stream(%rip), %rdi
LBB1_198:                               ## %.lr.ph.i33
                                        ##   Parent Loop BB1_192 Depth=1
                                        ##     Parent Loop BB1_197 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	testq	%rdi, %rdi
	je	LBB1_201
## BB#199:                              ## %.lr.ph.i.i
                                        ##   in Loop: Header=BB1_198 Depth=3
	callq	_fgetc
	movl	%eax, %r14d
	cmpl	$-1, %r14d
	je	LBB1_200
## BB#202:                              ## %read_char.exit.i
                                        ##   in Loop: Header=BB1_197 Depth=2
	andb	%bl, %r12b
	andb	$1, %r12b
	testl	%r14d, %r14d
	js	LBB1_203
## BB#204:                              ##   in Loop: Header=BB1_197 Depth=2
	incq	%r15
	cmpl	$127, %r14d
	ja	LBB1_206
## BB#205:                              ##   in Loop: Header=BB1_197 Depth=2
	movslq	%r14d, %rax
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %rcx
	movl	60(%rcx,%rax,4), %eax
	movl	$262144, %ecx           ## imm = 0x40000
	andl	%ecx, %eax
	jmp	LBB1_207
LBB1_206:                               ##   in Loop: Header=BB1_197 Depth=2
	movl	$262144, %esi           ## imm = 0x40000
	movl	%r14d, %edi
	callq	___maskrune
LBB1_207:                               ## %isprint.exit.i
                                        ##   in Loop: Header=BB1_197 Depth=2
	testl	%eax, %eax
	je	LBB1_208
## BB#209:                              ##   in Loop: Header=BB1_197 Depth=2
	movq	-1296(%rbp), %rax       ## 8-byte Reload
	movb	%r14b, (%rax,%r13)
	incq	%r13
	cmpq	_string_min(%rip), %r13
	jb	LBB1_197
## BB#210:                              ## %..loopexit_crit_edge.i
                                        ##   in Loop: Header=BB1_192 Depth=1
	movb	_limit_bytes_to_format(%rip), %al
	movq	%r13, %r14
LBB1_211:                               ## %.loopexit.i34
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	%r15, %r13
	cmpq	_end_offset(%rip), %r13
	jb	LBB1_213
## BB#212:                              ## %.loopexit.i34
                                        ##   in Loop: Header=BB1_192 Depth=1
	xorb	$1, %al
	testb	$1, %al
	leaq	LJTI1_1(%rip), %rax
	movq	%rax, %r15
	je	LBB1_231
LBB1_213:                               ## %.critedge.i
                                        ##   Parent Loop BB1_192 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_217 Depth 3
	cmpq	-1104(%rbp), %r14
	jne	LBB1_214
## BB#215:                              ##   in Loop: Header=BB1_213 Depth=2
	movq	%r13, %r15
	movq	-1296(%rbp), %rdi       ## 8-byte Reload
	leaq	-1104(%rbp), %rsi
	callq	_x2realloc
	movq	%rax, -1296(%rbp)       ## 8-byte Spill
	jmp	LBB1_216
LBB1_214:                               ##   in Loop: Header=BB1_213 Depth=2
	movq	%r13, %r15
LBB1_216:                               ##   in Loop: Header=BB1_213 Depth=2
	movq	_in_stream(%rip), %rdi
	movb	$1, %bl
	jmp	LBB1_217
LBB1_219:                               ##   in Loop: Header=BB1_217 Depth=3
	callq	___error
	movl	(%rax), %edi
	callq	_check_and_close
	andb	%al, %bl
	callq	_open_next_file
	andb	%al, %bl
	movq	_in_stream(%rip), %rdi
LBB1_217:                               ##   Parent Loop BB1_192 Depth=1
                                        ##     Parent Loop BB1_213 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	testq	%rdi, %rdi
	je	LBB1_220
## BB#218:                              ## %.lr.ph.i6.i
                                        ##   in Loop: Header=BB1_217 Depth=3
	callq	_fgetc
	movl	%eax, %r13d
	cmpl	$-1, %r13d
	je	LBB1_219
## BB#221:                              ## %read_char.exit8.i
                                        ##   in Loop: Header=BB1_213 Depth=2
	andb	%bl, %r12b
	andb	$1, %r12b
	incq	%r15
	testl	%r13d, %r13d
	js	LBB1_203
## BB#222:                              ##   in Loop: Header=BB1_213 Depth=2
	je	LBB1_223
## BB#224:                              ##   in Loop: Header=BB1_213 Depth=2
	cmpl	$127, %r13d
	ja	LBB1_226
## BB#225:                              ##   in Loop: Header=BB1_213 Depth=2
	movslq	%r13d, %rax
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %rcx
	movl	60(%rcx,%rax,4), %eax
	movl	$262144, %ecx           ## imm = 0x40000
	andl	%ecx, %eax
	jmp	LBB1_227
LBB1_226:                               ##   in Loop: Header=BB1_213 Depth=2
	movl	$262144, %esi           ## imm = 0x40000
	movl	%r13d, %edi
	callq	___maskrune
LBB1_227:                               ## %isprint.exit12.i
                                        ##   in Loop: Header=BB1_213 Depth=2
	testl	%eax, %eax
	je	LBB1_228
## BB#229:                              ##   in Loop: Header=BB1_213 Depth=2
	movq	-1296(%rbp), %rax       ## 8-byte Reload
	movb	%r13b, (%rax,%r14)
	incq	%r14
	movb	_limit_bytes_to_format(%rip), %al
	xorb	$1, %al
	movq	%r15, %r13
	cmpq	_end_offset(%rip), %r13
	leaq	LJTI1_1(%rip), %r15
	jb	LBB1_213
## BB#230:                              ##   in Loop: Header=BB1_213 Depth=2
	testb	$1, %al
	jne	LBB1_213
	jmp	LBB1_231
LBB1_223:                               ##   in Loop: Header=BB1_192 Depth=1
	movq	%r15, %r13
	leaq	LJTI1_1(%rip), %rax
	movq	%rax, %r15
LBB1_231:                               ## %split80.i
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	-1296(%rbp), %rbx       ## 8-byte Reload
	movb	$0, (%rbx,%r14)
	notq	%r14
	addq	%r13, %r14
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*_format_address(%rip)
	movb	(%rbx), %al
	testb	%al, %al
	movq	___stdoutp@GOTPCREL(%rip), %r14
	je	LBB1_248
## BB#232:                              ## %.lr.ph83.i.preheader
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	-1296(%rbp), %rcx       ## 8-byte Reload
	leaq	1(%rcx), %rbx
LBB1_233:                               ## %.lr.ph83.i
                                        ##   Parent Loop BB1_192 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsbl	%al, %edi
	leal	-7(%rdi), %ecx
	cmpl	$6, %ecx
	jbe	LBB1_234
## BB#242:                              ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	movl	12(%rsi), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 12(%rsi)
	testl	%ecx, %ecx
	jg	LBB1_245
## BB#243:                              ##   in Loop: Header=BB1_233 Depth=2
	cmpl	40(%rsi), %ecx
	jle	LBB1_246
## BB#244:                              ##   in Loop: Header=BB1_233 Depth=2
	movzbl	%al, %ecx
	cmpl	$10, %ecx
	je	LBB1_246
LBB1_245:                               ## %._crit_edge.i.i
                                        ##   in Loop: Header=BB1_233 Depth=2
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movb	%al, (%rcx)
	jmp	LBB1_247
LBB1_234:                               ## %.lr.ph83.i
                                        ##   in Loop: Header=BB1_233 Depth=2
	movslq	(%r15,%rcx,4), %rax
	addq	%r15, %rax
	jmpq	*%rax
LBB1_235:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str52(%rip), %rdi
	callq	_fputs
	jmp	LBB1_247
LBB1_246:                               ##   in Loop: Header=BB1_233 Depth=2
                                        ## kill: EDI<def> EDI<kill> RDI<kill>
	callq	___swbuf
	jmp	LBB1_247
LBB1_236:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str53(%rip), %rdi
	callq	_fputs
	jmp	LBB1_247
LBB1_240:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str57(%rip), %rdi
	callq	_fputs
	jmp	LBB1_247
LBB1_238:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str55(%rip), %rdi
	callq	_fputs
	jmp	LBB1_247
LBB1_241:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str58(%rip), %rdi
	callq	_fputs
	jmp	LBB1_247
LBB1_237:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str54(%rip), %rdi
	callq	_fputs
	jmp	LBB1_247
LBB1_239:                               ##   in Loop: Header=BB1_233 Depth=2
	movq	(%r14), %rsi
	leaq	L_.str56(%rip), %rdi
	callq	_fputs
LBB1_247:                               ## %__sputc.exit.i
                                        ##   in Loop: Header=BB1_233 Depth=2
	movb	(%rbx), %al
	incq	%rbx
	testb	%al, %al
	jne	LBB1_233
LBB1_248:                               ## %._crit_edge84.i
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	(%r14), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB1_250
## BB#249:                              ## %._crit_edge.i13.i
                                        ##   in Loop: Header=BB1_192 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB1_192
LBB1_250:                               ##   in Loop: Header=BB1_192 Depth=1
	movl	$10, %edi
	callq	___swbuf
	jmp	LBB1_192
LBB1_228:                               ##   in Loop: Header=BB1_192 Depth=1
	movq	%r15, %r13
	jmp	LBB1_192
LBB1_201:                               ## %read_char.exit.thread.i
	andb	%bl, %r12b
LBB1_203:                               ## %.loopexit21.i
	movq	-1296(%rbp), %rdi       ## 8-byte Reload
	callq	_free
	testb	%r12b, %r12b
	setne	%r14b
LBB1_284:                               ## %dump_strings.exit
	movb	-1297(%rbp), %al        ## 1-byte Reload
	andb	%r14b, %al
	movzbl	%al, %ebx
LBB1_285:
	movzbl	_have_read_stdin(%rip), %eax
	cmpl	$1, %eax
	jne	LBB1_288
## BB#286:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_rpl_fclose
	cmpl	$-1, %eax
	jne	LBB1_288
## BB#287:
	callq	___error
	movl	(%rax), %esi
	leaq	L_.str42(%rip), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	_error
LBB1_288:
	xorl	$1, %ebx
LBB1_289:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB1_293
## BB#290:
	movl	%ebx, %eax
	addq	$1304, %rsp             ## imm = 0x518
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_293:
	callq	___stack_chk_fail
LBB1_220:                               ## %read_char.exit8.thread.i
	andb	%bl, %r12b
	jmp	LBB1_203
LBB1_251:
	movq	-1296(%rbp), %rdi       ## 8-byte Reload
	callq	_free
	xorl	%edi, %edi
	callq	_check_and_close
	testb	%r12b, %al
	setne	%r14b
	jmp	LBB1_284
LBB1_101:
	movq	-1280(%rbp), %rax
	movq	%rax, _n_bytes_to_skip(%rip)
	movq	-1288(%rbp), %rax
	movq	%rax, -1312(%rbp)       ## 8-byte Spill
LBB1_122:
	addq	$16, %r15
	leaq	_format_address_none(%rip), %rax
	cmpq	%rax, _format_address(%rip)
	je	LBB1_123
## BB#128:
	leaq	_format_address_label(%rip), %rax
	jmp	LBB1_129
LBB1_123:
	movl	$8, _address_base(%rip)
	movl	$7, _address_pad_len(%rip)
	leaq	_format_address_paren(%rip), %rax
LBB1_129:                               ## %.thread53
	movq	%rax, _format_address(%rip)
	movl	$0, -1336(%rbp)         ## 4-byte Folded Spill
	jmp	LBB1_130
LBB1_25:
	movl	-1260(%rbp), %ecx
	movq	_rpl_optarg@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbx
	leaq	_long_options(%rip), %r8
	movl	$78, %edx
	jmp	LBB1_23
LBB1_28:
	movl	-1260(%rbp), %ecx
	movq	_rpl_optarg@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbx
	leaq	_long_options(%rip), %r8
	movl	$83, %edx
	jmp	LBB1_23
LBB1_22:
	movl	-1260(%rbp), %ecx
	movq	_rpl_optarg@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbx
	leaq	_long_options(%rip), %r8
	movl	$106, %edx
	jmp	LBB1_23
LBB1_55:
	movl	-1260(%rbp), %ecx
	movq	_rpl_optarg@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbx
	leaq	_long_options(%rip), %r8
	movl	$119, %edx
LBB1_23:
	movl	%eax, %edi
	movl	%ecx, %esi
	movq	%r8, %rcx
	movq	%rbx, %r8
	callq	_xstrtol_fatal
LBB1_292:
	callq	_xalloc_die
LBB1_269:
	leaq	L___func__.dump(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str44(%rip), %rbx
	movl	$1415, %edx             ## imm = 0x587
	jmp	LBB1_262
LBB1_261:
	leaq	L___func__.dump(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str44(%rip), %rbx
	movl	$1401, %edx             ## imm = 0x579
LBB1_262:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	callq	___assert_rtn
	.cfi_endproc
	.align	2, 0x90
L1_0_set_10 = LBB1_10-LJTI1_0
L1_0_set_50 = LBB1_50-LJTI1_0
L1_0_set_7 = LBB1_7-LJTI1_0
L1_0_set_42 = LBB1_42-LJTI1_0
L1_0_set_44 = LBB1_44-LJTI1_0
L1_0_set_46 = LBB1_46-LJTI1_0
L1_0_set_48 = LBB1_48-LJTI1_0
L1_0_set_24 = LBB1_24-LJTI1_0
L1_0_set_49 = LBB1_49-LJTI1_0
L1_0_set_26 = LBB1_26-LJTI1_0
L1_0_set_38 = LBB1_38-LJTI1_0
L1_0_set_40 = LBB1_40-LJTI1_0
L1_0_set_41 = LBB1_41-LJTI1_0
L1_0_set_43 = LBB1_43-LJTI1_0
L1_0_set_45 = LBB1_45-LJTI1_0
L1_0_set_52 = LBB1_52-LJTI1_0
L1_0_set_47 = LBB1_47-LJTI1_0
L1_0_set_21 = LBB1_21-LJTI1_0
L1_0_set_51 = LBB1_51-LJTI1_0
L1_0_set_31 = LBB1_31-LJTI1_0
L1_0_set_32 = LBB1_32-LJTI1_0
L1_0_set_53 = LBB1_53-LJTI1_0
L1_0_set_1 = LBB1_1-LJTI1_0
L1_0_set_33 = LBB1_33-LJTI1_0
LJTI1_0:
	.long	L1_0_set_10
	.long	L1_0_set_50
	.long	L1_0_set_7
	.long	L1_0_set_42
	.long	L1_0_set_7
	.long	L1_0_set_44
	.long	L1_0_set_7
	.long	L1_0_set_46
	.long	L1_0_set_48
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_48
	.long	L1_0_set_7
	.long	L1_0_set_24
	.long	L1_0_set_49
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_26
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_46
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_38
	.long	L1_0_set_40
	.long	L1_0_set_41
	.long	L1_0_set_43
	.long	L1_0_set_44
	.long	L1_0_set_45
	.long	L1_0_set_7
	.long	L1_0_set_52
	.long	L1_0_set_47
	.long	L1_0_set_21
	.long	L1_0_set_7
	.long	L1_0_set_48
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_50
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_51
	.long	L1_0_set_31
	.long	L1_0_set_7
	.long	L1_0_set_32
	.long	L1_0_set_53
	.long	L1_0_set_52
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_1
	.long	L1_0_set_33
L1_1_set_235 = LBB1_235-LJTI1_1
L1_1_set_236 = LBB1_236-LJTI1_1
L1_1_set_240 = LBB1_240-LJTI1_1
L1_1_set_238 = LBB1_238-LJTI1_1
L1_1_set_241 = LBB1_241-LJTI1_1
L1_1_set_237 = LBB1_237-LJTI1_1
L1_1_set_239 = LBB1_239-LJTI1_1
LJTI1_1:
	.long	L1_1_set_235
	.long	L1_1_set_236
	.long	L1_1_set_240
	.long	L1_1_set_238
	.long	L1_1_set_241
	.long	L1_1_set_237
	.long	L1_1_set_239

	.align	4, 0x90
_format_address_std:                    ## @format_address_std
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
Ltmp27:
	.cfi_offset %rbx, -32
Ltmp28:
	.cfi_offset %r14, -24
	movq	%rdi, %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -24(%rbp)
	movb	$0, -40(%rbp)
	leaq	-41(%rbp), %rdi
	movb	%sil, -41(%rbp)
	movslq	_address_pad_len(%rip), %rax
	negq	%rax
	leaq	-41(%rbp,%rax), %rsi
	movl	_address_base(%rip), %eax
	cmpl	$16, %eax
	je	LBB2_1
## BB#3:
	cmpl	$10, %eax
	jne	LBB2_6
## BB#4:
	movabsq	$-3689348814741910323, %r8 ## imm = 0xCCCCCCCCCCCCCCCD
	.align	4, 0x90
LBB2_5:                                 ## %.preheader3
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	imull	$10, %edx, %eax
	movl	%ecx, %ebx
	subl	%eax, %ebx
	orl	$48, %ebx
	movb	%bl, -1(%rdi)
	decq	%rdi
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	LBB2_5
	jmp	LBB2_9
LBB2_1:
	leaq	L_.str101(%rip), %rax
	.align	4, 0x90
LBB2_2:                                 ## %.preheader6
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	andq	$15, %rdx
	movb	(%rdx,%rax), %dl
	movb	%dl, -1(%rdi)
	decq	%rdi
	shrq	$4, %rcx
	jne	LBB2_2
	jmp	LBB2_9
LBB2_6:
	cmpl	$8, %eax
	jne	LBB2_9
	.align	4, 0x90
LBB2_7:                                 ## %.preheader2
                                        ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	orl	$48, %eax
	movb	%al, -1(%rdi)
	decq	%rdi
	shrq	$3, %rcx
	jne	LBB2_7
	jmp	LBB2_9
	.align	4, 0x90
LBB2_8:                                 ## %.lr.ph
                                        ##   in Loop: Header=BB2_9 Depth=1
	movb	$48, -1(%rdi)
	decq	%rdi
LBB2_9:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rsi
	jb	LBB2_8
## BB#10:                               ## %._crit_edge
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	callq	_fputs
	movq	(%r14), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB2_12
## BB#11:                               ## %._crit_edge
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB2_12:                                ## %._crit_edge
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_format_address_none:                   ## @format_address_none
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_decode_format_string:                  ## @decode_format_string
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp37:
	.cfi_def_cfa_offset 16
Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp40:
	.cfi_offset %rbx, -56
Ltmp41:
	.cfi_offset %r12, -48
Ltmp42:
	.cfi_offset %r13, -40
Ltmp43:
	.cfi_offset %r14, -32
Ltmp44:
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	je	LBB4_6
## BB#1:                                ## %.preheader
	movb	$1, %r14b
	cmpb	$0, (%rdi)
	je	LBB4_94
## BB#2:                                ## %.lr.ph
	movq	_n_specs(%rip), %rax
	movq	%rdi, %r8
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
LBB4_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_68 Depth 2
                                        ##     Child Loop BB4_28 Depth 2
	movq	_n_specs_allocated(%rip), %rcx
	cmpq	%rax, %rcx
	movq	_spec(%rip), %r15
	ja	LBB4_11
## BB#4:                                ##   in Loop: Header=BB4_3 Depth=1
	testq	%r15, %r15
	je	LBB4_5
## BB#8:                                ##   in Loop: Header=BB4_3 Depth=1
	movabsq	$307445734561825860, %rax ## imm = 0x444444444444444
	cmpq	%rax, %rcx
	jae	LBB4_95
## BB#9:                                ##   in Loop: Header=BB4_3 Depth=1
	movq	%r8, %rbx
	movq	%rcx, %rax
	shrq	%rax
	leaq	1(%rcx,%rax), %rcx
	jmp	LBB4_10
LBB4_5:                                 ##   in Loop: Header=BB4_3 Depth=1
	movq	%r8, %rbx
	testq	%rcx, %rcx
	movl	$3, %eax
	cmoveq	%rax, %rcx
LBB4_10:                                ## %x2nrealloc.exit
                                        ##   in Loop: Header=BB4_3 Depth=1
	movq	%rcx, _n_specs_allocated(%rip)
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rsi
	movq	%r15, %rdi
	callq	_xrealloc
	movq	%rax, %r15
	movq	%r15, _spec(%rip)
	movq	_n_specs(%rip), %rax
	movq	%rbx, %r8
LBB4_11:                                ## %._crit_edge
                                        ##   in Loop: Header=BB4_3 Depth=1
	leaq	(%rax,%rax,4), %r13
	leaq	(,%r13,8), %r14
	addq	%r15, %r14
	je	LBB4_12
## BB#13:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	(%r8), %r12d
	cmpl	$110, %r12d
	jg	LBB4_16
## BB#14:                               ##   in Loop: Header=BB4_3 Depth=1
	leal	-97(%r12), %eax
	cmpl	$5, %eax
	ja	LBB4_88
## BB#15:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	LJTI4_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB4_86:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	1(%r8), %rdi
	movl	$3, %r9d
	movl	$1, %ebx
	movl	$5, %r12d
	leaq	_print_named_ascii(%rip), %rcx
	jmp	LBB4_90
	.align	4, 0x90
LBB4_16:                                ##   in Loop: Header=BB4_3 Depth=1
	leal	-111(%r12), %eax
	cmpl	$9, %eax
	ja	LBB4_88
## BB#17:                               ##   in Loop: Header=BB4_3 Depth=1
	movl	$577, %ecx              ## imm = 0x241
	btl	%eax, %ecx
	jae	LBB4_88
LBB4_18:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	1(%r8), %rdi
	movsbl	1(%r8), %eax
	cmpl	$82, %eax
	jg	LBB4_23
## BB#19:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$67, %eax
	je	LBB4_36
## BB#20:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$73, %eax
	jne	LBB4_21
## BB#25:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	movl	$4, %eax
	jmp	LBB4_37
	.align	4, 0x90
LBB4_23:                                ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$83, %eax
	jne	LBB4_26
## BB#24:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	movl	$2, %eax
	jmp	LBB4_37
LBB4_87:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	1(%r8), %rdi
	movl	$3, %r9d
	movl	$1, %ebx
	movl	$6, %r12d
	leaq	_print_ascii(%rip), %rcx
	jmp	LBB4_90
LBB4_62:                                ##   in Loop: Header=BB4_3 Depth=1
	movsbl	1(%r8), %eax
	cmpl	$68, %eax
	je	LBB4_75
## BB#63:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$76, %eax
	jne	LBB4_64
## BB#66:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	movl	$16, %eax
	jmp	LBB4_77
LBB4_36:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	movl	$1, %eax
	jmp	LBB4_37
LBB4_21:                                ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$76, %eax
	jne	LBB4_26
## BB#22:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	movl	$8, %eax
	jmp	LBB4_37
LBB4_26:                                ##   in Loop: Header=BB4_3 Depth=1
	leal	-48(%rax), %ecx
	cmpl	$9, %ecx
	movl	$0, %ecx
	movl	$0, %ebx
	ja	LBB4_27
	.align	4, 0x90
LBB4_28:                                ## %.lr.ph.i.i
                                        ##   Parent Loop BB4_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addl	$-48, %eax
	movslq	%eax, %rsi
	movq	%rsi, %rax
	notq	%rax
	movabsq	$-3689348814741910323, %rdx ## imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	shrq	$3, %rdx
	cmpq	%rdx, %rbx
	ja	LBB4_97
## BB#29:                               ##   in Loop: Header=BB4_28 Depth=2
	leaq	(%rbx,%rbx,4), %rax
	leaq	(%rsi,%rax,2), %rbx
	movsbl	2(%r8,%rcx), %eax
	leal	-48(%rax), %edx
	incq	%rcx
	cmpl	$10, %edx
	jb	LBB4_28
## BB#30:                               ##   in Loop: Header=BB4_3 Depth=1
	testq	%rcx, %rcx
	movl	$4, %eax
	je	LBB4_37
## BB#31:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpq	$8, %rbx
	ja	LBB4_34
## BB#32:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	_integral_type_size(%rip), %rax
	cmpl	$0, (%rax,%rbx,4)
	je	LBB4_34
## BB#33:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	1(%r8,%rcx), %rdi
	movq	%rbx, %rax
	jmp	LBB4_37
LBB4_27:                                ##   in Loop: Header=BB4_3 Depth=1
	movl	$4, %eax
	.align	4, 0x90
LBB4_37:                                ## %.thread.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	leaq	_integral_type_size(%rip), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	$110, %r12d
	jg	LBB4_42
## BB#38:                               ## %.thread.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$100, %r12d
	jne	LBB4_96
## BB#39:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	leaq	16(%r15,%r13,8), %rdi
	cmpl	$5, %edx
	leaq	L_.str70(%rip), %r8
	je	LBB4_41
## BB#40:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$4, %edx
	leaq	L_.str72(%rip), %r8
	leaq	L_.str71(%rip), %rcx
	cmoveq	%rcx, %r8
LBB4_41:                                ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	leaq	_bytes_to_signed_dec_digits(%rip), %rcx
	movl	(%rcx,%rax,4), %ebx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	leaq	L_.str69(%rip), %rcx
	callq	___sprintf_chk
	jmp	LBB4_54
	.align	4, 0x90
LBB4_42:                                ## %.thread.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$111, %r12d
	je	LBB4_48
## BB#43:                               ## %.thread.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$117, %r12d
	jne	LBB4_44
## BB#51:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	leaq	16(%r15,%r13,8), %rdi
	cmpl	$5, %edx
	leaq	L_.str77(%rip), %r8
	je	LBB4_53
## BB#52:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$4, %edx
	leaq	L_.str79(%rip), %r8
	leaq	L_.str78(%rip), %rcx
	cmoveq	%rcx, %r8
LBB4_53:                                ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	leaq	_bytes_to_unsigned_dec_digits(%rip), %rcx
	movl	(%rcx,%rax,4), %ebx
	xorl	%esi, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	leaq	L_.str69(%rip), %rcx
	callq	___sprintf_chk
	movl	$1, %r12d
	jmp	LBB4_54
LBB4_48:                                ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	leaq	16(%r15,%r13,8), %rdi
	leaq	_bytes_to_oct_digits(%rip), %rcx
	movl	(%rcx,%rax,4), %r8d
	cmpl	$5, %edx
	leaq	L_.str74(%rip), %r9
	je	LBB4_50
## BB#49:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$4, %edx
	leaq	L_.str76(%rip), %r9
	leaq	L_.str75(%rip), %rax
	cmoveq	%rax, %r9
LBB4_50:                                ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	xorl	%esi, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	leaq	L_.str73(%rip), %rcx
	movq	%r8, %rbx
	callq	___sprintf_chk
	movl	$2, %r12d
	jmp	LBB4_54
LBB4_44:                                ## %.thread.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$120, %r12d
	jne	LBB4_96
## BB#45:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	leaq	16(%r15,%r13,8), %rdi
	leaq	_bytes_to_hex_digits(%rip), %rcx
	movl	(%rcx,%rax,4), %r8d
	cmpl	$5, %edx
	leaq	L_.str80(%rip), %r9
	je	LBB4_47
## BB#46:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$4, %edx
	leaq	L_.str82(%rip), %r9
	leaq	L_.str81(%rip), %rax
	cmoveq	%rax, %r9
LBB4_47:                                ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	xorl	%esi, %esi
	movq	$-1, %rdx
	xorl	%eax, %eax
	leaq	L_.str73(%rip), %rcx
	movq	%r8, %rbx
	callq	___sprintf_chk
	movl	$3, %r12d
	.align	4, 0x90
LBB4_54:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	16(%r15,%r13,8), %rdi
	callq	_strlen
	cmpq	$8, %rax
	jae	LBB4_55
## BB#56:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-64(%rbp), %rax         ## 8-byte Reload
	leal	-1(%rax), %ecx
	cmpl	$4, %ecx
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	%rbx, %r9
	ja	LBB4_61
## BB#57:                               ##   in Loop: Header=BB4_3 Depth=1
	movl	$3, %ebx
	leaq	LJTI4_1(%rip), %rdx
	movq	%rdx, %rsi
	movslq	(%rsi,%rcx,4), %rdx
	addq	%rsi, %rdx
	leaq	_print_int(%rip), %rcx
	jmpq	*%rdx
LBB4_89:                                ##   in Loop: Header=BB4_3 Depth=1
	testl	%r12d, %r12d
	leaq	_print_char(%rip), %rcx
	leaq	_print_s_char(%rip), %rax
	cmoveq	%rax, %rcx
	movl	$1, %ebx
	jmp	LBB4_90
LBB4_58:                                ##   in Loop: Header=BB4_3 Depth=1
	testl	%r12d, %r12d
	leaq	_print_short(%rip), %rcx
	leaq	_print_s_short(%rip), %rax
	cmoveq	%rax, %rcx
	movl	$2, %ebx
	jmp	LBB4_90
LBB4_59:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	_print_long(%rip), %rcx
	movl	%eax, %ebx
	jmp	LBB4_90
LBB4_60:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	_print_long_long(%rip), %rcx
	movl	%eax, %ebx
	jmp	LBB4_90
LBB4_75:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	jmp	LBB4_76
LBB4_64:                                ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$70, %eax
	jne	LBB4_67
## BB#65:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	2(%r8), %rdi
	movl	$4, %eax
	jmp	LBB4_77
LBB4_67:                                ##   in Loop: Header=BB4_3 Depth=1
	leaq	1(%r8), %rdi
	leal	-48(%rax), %ecx
	cmpl	$9, %ecx
	movl	$0, %ecx
	movl	$0, %ebx
	ja	LBB4_76
	.align	4, 0x90
LBB4_68:                                ## %.lr.ph.i4.i
                                        ##   Parent Loop BB4_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addl	$-48, %eax
	movslq	%eax, %rsi
	movq	%rsi, %rax
	notq	%rax
	movabsq	$-3689348814741910323, %rdx ## imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	shrq	$3, %rdx
	cmpq	%rdx, %rbx
	ja	LBB4_97
## BB#69:                               ##   in Loop: Header=BB4_68 Depth=2
	leaq	(%rbx,%rbx,4), %rax
	leaq	(%rsi,%rax,2), %rbx
	movsbl	2(%r8,%rcx), %eax
	leal	-48(%rax), %edx
	incq	%rcx
	cmpl	$10, %edx
	jb	LBB4_68
## BB#70:                               ##   in Loop: Header=BB4_3 Depth=1
	testq	%rcx, %rcx
	movl	$8, %eax
	je	LBB4_77
## BB#71:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpq	$16, %rbx
	ja	LBB4_74
## BB#72:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	_fp_type_size(%rip), %rax
	cmpl	$0, (%rax,%rbx,4)
	je	LBB4_74
## BB#73:                               ##   in Loop: Header=BB4_3 Depth=1
	leaq	1(%r8,%rcx), %rdi
	movq	%rbx, %rax
	jmp	LBB4_77
LBB4_76:                                ## %.thread13.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	movl	$8, %eax
LBB4_77:                                ## %.thread13.i
                                        ##   in Loop: Header=BB4_3 Depth=1
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	leaq	_fp_type_size(%rip), %rcx
	movl	(%rcx,%rax,4), %r12d
	callq	_localeconv
	movq	(%rax), %rdi
	cmpb	$0, (%rdi)
	movl	$1, %r9d
	je	LBB4_79
## BB#78:                               ##   in Loop: Header=BB4_3 Depth=1
	callq	_strlen
	movq	%rax, %r9
LBB4_79:                                ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$8, %r12d
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	je	LBB4_84
## BB#80:                               ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$7, %r12d
	jne	LBB4_81
## BB#83:                               ##   in Loop: Header=BB4_3 Depth=1
	addl	$23, %r9d
	movl	$7, %ebx
	movl	$4, %r12d
	leaq	_print_double(%rip), %rcx
	jmp	LBB4_90
LBB4_84:                                ##   in Loop: Header=BB4_3 Depth=1
	addl	$28, %r9d
	movl	$8, %ebx
	movl	$4, %r12d
	leaq	_print_long_double(%rip), %rcx
	jmp	LBB4_90
LBB4_81:                                ##   in Loop: Header=BB4_3 Depth=1
	cmpl	$6, %r12d
	jne	LBB4_85
## BB#82:                               ##   in Loop: Header=BB4_3 Depth=1
	addl	$14, %r9d
	movl	$6, %ebx
	movl	$4, %r12d
	leaq	_print_float(%rip), %rcx
	.align	4, 0x90
LBB4_90:                                ##   in Loop: Header=BB4_3 Depth=1
	movl	%ebx, 4(%r15,%r13,8)
	movl	%r12d, (%r14)
	movq	%rcx, 8(%r15,%r13,8)
	movl	%r9d, 28(%r15,%r13,8)
	movzbl	(%rdi), %eax
	leaq	1(%rdi), %rcx
	cmpl	$122, %eax
	sete	24(%r15,%r13,8)
	cmovneq	%rdi, %rcx
	cmpq	%rcx, %r8
	je	LBB4_91
## BB#92:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	_n_specs(%rip), %rax
	incq	%rax
	movq	%rax, _n_specs(%rip)
	cmpb	$0, (%rcx)
	movq	%rcx, %r8
	jne	LBB4_3
## BB#93:
	movb	$1, %r14b
	jmp	LBB4_94
LBB4_88:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_quote
	movq	%rax, %rbx
	leaq	L_.str85(%rip), %rdx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%r12d, %ecx
	movq	%rbx, %r8
	callq	_error
LBB4_94:                                ## %decode_one_format.exit.thread
	movb	%r14b, %al
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_97:                                ## %simple_strtoul.exit.i
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_quote
	movq	%rax, %rcx
	leaq	L_.str67(%rip), %rdx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	jmp	LBB4_94
LBB4_61:
	callq	_abort
LBB4_34:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_quote
	movq	%rax, %rcx
	leaq	L_.str68(%rip), %rdx
LBB4_35:                                ## %decode_one_format.exit.thread
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	_error
	jmp	LBB4_94
LBB4_74:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_quote
	movq	%rax, %rcx
	leaq	L_.str84(%rip), %rdx
	jmp	LBB4_35
LBB4_6:
	leaq	L___func__.decode_format_string(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str64(%rip), %rbx
	movl	$984, %edx              ## imm = 0x3D8
	jmp	LBB4_7
LBB4_95:
	callq	_xalloc_die
LBB4_12:
	leaq	L___func__.decode_one_format(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str66(%rip), %rbx
	movl	$645, %edx              ## imm = 0x285
	jmp	LBB4_7
LBB4_96:
	callq	_abort
LBB4_55:
	leaq	L___func__.decode_one_format(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str83(%rip), %rbx
	movl	$744, %edx              ## imm = 0x2E8
	jmp	LBB4_7
LBB4_85:
	callq	_abort
LBB4_91:
	leaq	L___func__.decode_format_string(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str65(%rip), %rbx
	movl	$996, %edx              ## imm = 0x3E4
LBB4_7:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	callq	___assert_rtn
	.cfi_endproc
	.align	2, 0x90
L4_0_set_86 = LBB4_86-LJTI4_0
L4_0_set_88 = LBB4_88-LJTI4_0
L4_0_set_87 = LBB4_87-LJTI4_0
L4_0_set_18 = LBB4_18-LJTI4_0
L4_0_set_62 = LBB4_62-LJTI4_0
LJTI4_0:
	.long	L4_0_set_86
	.long	L4_0_set_88
	.long	L4_0_set_87
	.long	L4_0_set_18
	.long	L4_0_set_88
	.long	L4_0_set_62
L4_1_set_89 = LBB4_89-LJTI4_1
L4_1_set_58 = LBB4_58-LJTI4_1
L4_1_set_90 = LBB4_90-LJTI4_1
L4_1_set_59 = LBB4_59-LJTI4_1
L4_1_set_60 = LBB4_60-LJTI4_1
LJTI4_1:
	.long	L4_1_set_89
	.long	L4_1_set_58
	.long	L4_1_set_90
	.long	L4_1_set_59
	.long	L4_1_set_60

	.align	4, 0x90
_format_address_paren:                  ## @format_address_paren
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
Ltmp51:
	.cfi_offset %rbx, -48
Ltmp52:
	.cfi_offset %r12, -40
Ltmp53:
	.cfi_offset %r14, -32
Ltmp54:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	%rax, -40(%rbp)
	movq	___stdoutp@GOTPCREL(%rip), %r12
	movq	(%r12), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB5_2
## BB#1:
	cmpl	40(%rsi), %eax
	jle	LBB5_3
LBB5_2:                                 ## %._crit_edge.i
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$40, (%rax)
	jmp	LBB5_4
LBB5_3:
	movl	$40, %edi
	callq	___swbuf
LBB5_4:                                 ## %__sputc.exit
	movb	$0, -56(%rbp)
	leaq	-57(%rbp), %rdi
	movb	$41, -57(%rbp)
	movslq	_address_pad_len(%rip), %rax
	negq	%rax
	leaq	-57(%rbp,%rax), %rcx
	movl	_address_base(%rip), %eax
	cmpl	$16, %eax
	je	LBB5_5
## BB#7:                                ## %__sputc.exit
	cmpl	$10, %eax
	jne	LBB5_10
## BB#8:
	movabsq	$-3689348814741910323, %r8 ## imm = 0xCCCCCCCCCCCCCCCD
	.align	4, 0x90
LBB5_9:                                 ## %.preheader3.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	mulq	%r8
	shrq	$3, %rdx
	imull	$10, %edx, %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	orl	$48, %esi
	movb	%sil, -1(%rdi)
	decq	%rdi
	cmpq	$9, %rbx
	movq	%rdx, %rbx
	ja	LBB5_9
	jmp	LBB5_13
LBB5_5:
	leaq	L_.str101(%rip), %rax
	.align	4, 0x90
LBB5_6:                                 ## %.preheader6.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	andq	$15, %rdx
	movb	(%rdx,%rax), %dl
	movb	%dl, -1(%rdi)
	decq	%rdi
	shrq	$4, %rbx
	jne	LBB5_6
	jmp	LBB5_13
LBB5_10:                                ## %__sputc.exit
	cmpl	$8, %eax
	jne	LBB5_13
	.align	4, 0x90
LBB5_11:                                ## %.preheader2.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	andl	$7, %eax
	orl	$48, %eax
	movb	%al, -1(%rdi)
	decq	%rdi
	shrq	$3, %rbx
	jne	LBB5_11
	jmp	LBB5_13
	.align	4, 0x90
LBB5_12:                                ## %.lr.ph.i
                                        ##   in Loop: Header=BB5_13 Depth=1
	movb	$48, -1(%rdi)
	decq	%rdi
LBB5_13:                                ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rcx
	jb	LBB5_12
## BB#14:                               ## %format_address_std.exit
	movq	(%r12), %rsi
	callq	_fputs
	testb	%r14b, %r14b
	je	LBB5_20
## BB#15:
	movq	(%r12), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB5_18
## BB#16:
	cmpl	40(%rsi), %eax
	jle	LBB5_19
## BB#17:
	movzbl	%r14b, %eax
	cmpl	$10, %eax
	je	LBB5_19
LBB5_18:                                ## %._crit_edge.i1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%r14b, (%rax)
	jmp	LBB5_20
LBB5_19:
	movsbl	%r14b, %edi
	callq	___swbuf
LBB5_20:                                ## %__sputc.exit3
	movq	(%r15), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB5_22
## BB#21:                               ## %__sputc.exit3
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_22:                                ## %__sputc.exit3
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_format_address_label:                  ## @format_address_label
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp58:
	.cfi_def_cfa_offset 16
Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
Ltmp61:
	.cfi_offset %rbx, -48
Ltmp62:
	.cfi_offset %r12, -40
Ltmp63:
	.cfi_offset %r14, -32
Ltmp64:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	___stack_chk_guard@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	%rax, -40(%rbp)
	movb	$0, -56(%rbp)
	leaq	-57(%rbp), %rdi
	movb	$32, -57(%rbp)
	movslq	_address_pad_len(%rip), %rax
	negq	%rax
	leaq	-57(%rbp,%rax), %rsi
	movl	_address_base(%rip), %eax
	cmpl	$16, %eax
	je	LBB6_1
## BB#3:
	cmpl	$10, %eax
	jne	LBB6_6
## BB#4:
	movabsq	$-3689348814741910323, %r8 ## imm = 0xCCCCCCCCCCCCCCCD
	movq	%r12, %rcx
	.align	4, 0x90
LBB6_5:                                 ## %.preheader3.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	imull	$10, %edx, %eax
	movl	%ecx, %ebx
	subl	%eax, %ebx
	orl	$48, %ebx
	movb	%bl, -1(%rdi)
	decq	%rdi
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	LBB6_5
	jmp	LBB6_10
LBB6_1:
	leaq	L_.str101(%rip), %rax
	movq	%r12, %rcx
	.align	4, 0x90
LBB6_2:                                 ## %.preheader6.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	andq	$15, %rdx
	movb	(%rdx,%rax), %dl
	movb	%dl, -1(%rdi)
	decq	%rdi
	shrq	$4, %rcx
	jne	LBB6_2
	jmp	LBB6_10
LBB6_6:
	cmpl	$8, %eax
	jne	LBB6_10
## BB#7:
	movq	%r12, %rax
	.align	4, 0x90
LBB6_8:                                 ## %.preheader2.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movb	%cl, -1(%rdi)
	decq	%rdi
	shrq	$3, %rax
	jne	LBB6_8
	jmp	LBB6_10
	.align	4, 0x90
LBB6_9:                                 ## %.lr.ph.i
                                        ##   in Loop: Header=BB6_10 Depth=1
	movb	$48, -1(%rdi)
	decq	%rdi
LBB6_10:                                ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rsi
	jb	LBB6_9
## BB#11:                               ## %format_address_std.exit
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	callq	_fputs
	addq	_pseudo_offset(%rip), %r12
	movsbl	%r14b, %esi
	movq	%r12, %rdi
	callq	_format_address_paren
	movq	(%r15), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB6_13
## BB#12:                               ## %format_address_std.exit
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_13:                                ## %format_address_std.exit
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_open_next_file:                        ## @open_next_file
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp68:
	.cfi_def_cfa_offset 16
Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp70:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp71:
	.cfi_offset %rbx, -56
Ltmp72:
	.cfi_offset %r12, -48
Ltmp73:
	.cfi_offset %r13, -40
Ltmp74:
	.cfi_offset %r14, -32
Ltmp75:
	.cfi_offset %r15, -24
	movb	$1, %r13b
	leaq	L_.str46(%rip), %r14
	leaq	L_.str60(%rip), %r15
	leaq	L_.str37(%rip), %r12
	.align	4, 0x90
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	_file_list(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, _input_filename(%rip)
	testq	%rbx, %rbx
	je	LBB7_10
## BB#2:                                ##   in Loop: Header=BB7_1 Depth=1
	addq	$8, %rax
	movq	%rax, _file_list(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB7_3
## BB#4:                                ##   in Loop: Header=BB7_1 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_fopen$DARWIN_EXTSN
	movq	%rax, _in_stream(%rip)
	testq	%rax, %rax
	jne	LBB7_7
## BB#5:                                ##   in Loop: Header=BB7_1 Depth=1
	callq	___error
	movl	(%rax), %esi
	movq	_input_filename(%rip), %rcx
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	_error
	movq	_in_stream(%rip), %rax
	jmp	LBB7_6
	.align	4, 0x90
LBB7_3:                                 ##   in Loop: Header=BB7_1 Depth=1
	leaq	L_.str42(%rip), %rax
	movq	%rax, _input_filename(%rip)
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, _in_stream(%rip)
	movb	$1, _have_read_stdin(%rip)
LBB7_6:                                 ##   in Loop: Header=BB7_1 Depth=1
	testq	%rax, %rax
	je	LBB7_1
LBB7_7:                                 ## %.thread
	movzbl	_limit_bytes_to_format(%rip), %ecx
	cmpl	$1, %ecx
	jne	LBB7_10
## BB#8:
	movb	_flag_dump_strings(%rip), %cl
	testb	%cl, %cl
	jne	LBB7_10
## BB#9:
	xorl	%esi, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	_setvbuf
LBB7_10:                                ## %.loopexit
	andb	$1, %r13b
	movb	%r13b, %al
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
_read_block:                            ## @read_block
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp79:
	.cfi_def_cfa_offset 16
Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp81:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp82:
	.cfi_offset %rbx, -56
Ltmp83:
	.cfi_offset %r12, -48
Ltmp84:
	.cfi_offset %r13, -40
Ltmp85:
	.cfi_offset %r14, -32
Ltmp86:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	leaq	-1(%r12), %rax
	cmpq	_bytes_per_block(%rip), %rax
	jae	LBB8_6
## BB#1:
	movq	$0, (%r15)
	movq	_in_stream(%rip), %rcx
	movb	$1, %r13b
	xorl	%edi, %edi
	testq	%rcx, %rcx
	jne	LBB8_2
	jmp	LBB8_5
	.align	4, 0x90
LBB8_4:                                 ## %._crit_edge5
                                        ##   in Loop: Header=BB8_2 Depth=1
	movq	(%r15), %rdi
LBB8_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rbx
	subq	%rdi, %rbx
	addq	%r14, %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fread
	addq	%rax, (%r15)
	cmpq	%rbx, %rax
	je	LBB8_5
## BB#3:                                ##   in Loop: Header=BB8_2 Depth=1
	callq	___error
	movl	(%rax), %edi
	callq	_check_and_close
	movb	%r13b, %bl
	andb	%al, %bl
	callq	_open_next_file
	movb	%al, %r13b
	andb	%bl, %r13b
	movq	_in_stream(%rip), %rcx
	testq	%rcx, %rcx
	jne	LBB8_4
LBB8_5:                                 ## %split3
	andb	$1, %r13b
	movb	%r13b, %al
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_6:                                 ## %.critedge
	leaq	L___func__.read_block(%rip), %rax
	leaq	L_.str43(%rip), %rcx
	leaq	L_.str51(%rip), %rbx
	movl	$1290, %edx             ## imm = 0x50A
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	callq	___assert_rtn
	.cfi_endproc

	.align	4, 0x90
_write_block:                           ## @write_block
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp90:
	.cfi_def_cfa_offset 16
Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp93:
	.cfi_offset %rbx, -56
Ltmp94:
	.cfi_offset %r12, -48
Ltmp95:
	.cfi_offset %r13, -40
Ltmp96:
	.cfi_offset %r14, -32
Ltmp97:
	.cfi_offset %r15, -24
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movb	_abbreviate_duplicate_blocks(%rip), %al
	testb	%al, %al
	jne	LBB9_6
## BB#1:
	movb	_write_block.first(%rip), %al
	testb	%al, %al
	je	LBB9_6
## BB#2:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	cmpq	%rax, _bytes_per_block(%rip)
	jne	LBB9_6
## BB#3:
	movq	%rdx, %rdi
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	_memcmp
	testl	%eax, %eax
	je	LBB9_4
LBB9_6:
	movb	$0, _write_block.prev_pair_equal(%rip)
	cmpq	$0, _n_specs(%rip)
	je	LBB9_30
## BB#7:                                ## %.lr.ph
	xorl	%r13d, %r13d
	.align	4, 0x90
LBB9_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_13 Depth 2
	movq	_spec(%rip), %rax
	leaq	(%r13,%r13,4), %rbx
	movl	4(%rax,%rbx,8), %eax
	movq	_bytes_per_block(%rip), %rcx
	leaq	_width_bytes(%rip), %rdx
	movslq	(%rdx,%rax,4), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	movq	%rax, %r12
	subq	-48(%rbp), %rcx         ## 8-byte Folded Reload
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	movq	%rax, %r15
	testq	%r13, %r13
	je	LBB9_9
## BB#10:                               ##   in Loop: Header=BB9_8 Depth=1
	movl	_address_pad_len(%rip), %esi
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	leaq	L_.str15(%rip), %rdx
	callq	_printf
	jmp	LBB9_11
	.align	4, 0x90
LBB9_9:                                 ##   in Loop: Header=BB9_8 Depth=1
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	*_format_address(%rip)
LBB9_11:                                ##   in Loop: Header=BB9_8 Depth=1
	movq	_spec(%rip), %rax
	leaq	(,%r13,8), %rcx
	leaq	(%rcx,%rcx,4), %r14
	movslq	%r12d, %rdi
	movslq	%r15d, %rsi
	leaq	16(%rax,%r14), %rcx
	movl	28(%rax,%r14), %r8d
	movl	32(%rax,%r14), %r9d
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	callq	*8(%rax,%r14)
	movq	_spec(%rip), %rcx
	cmpb	$0, 24(%rcx,%r14)
	movq	___stdoutp@GOTPCREL(%rip), %r14
	je	LBB9_26
## BB#12:                               ##   in Loop: Header=BB9_8 Depth=1
	movl	32(%rcx,%rbx,8), %eax
	imull	%r15d, %eax
	cltd
	idivl	%r12d
	imull	28(%rcx,%rbx,8), %r15d
	addl	%eax, %r15d
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	movl	%r15d, %esi
	leaq	L_.str15(%rip), %rdx
	callq	_printf
	movq	(%r14), %rsi
	leaq	L_.str50(%rip), %rdi
	callq	_fputs
	movq	-48(%rbp), %rax         ## 8-byte Reload
	testq	%rax, %rax
	movq	-56(%rbp), %r15         ## 8-byte Reload
	movq	%rax, %r12
	je	LBB9_22
	.align	4, 0x90
LBB9_13:                                ## %.lr.ph.i
                                        ##   Parent Loop BB9_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%r15), %ebx
	incq	%r15
	testb	%bl, %bl
	js	LBB9_15
## BB#14:                               ##   in Loop: Header=BB9_13 Depth=2
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl	60(%rax,%rbx,4), %eax
	movl	$262144, %ecx           ## imm = 0x40000
	andl	%ecx, %eax
	jmp	LBB9_16
	.align	4, 0x90
LBB9_15:                                ##   in Loop: Header=BB9_13 Depth=2
	movl	$262144, %esi           ## imm = 0x40000
	movl	%ebx, %edi
	callq	___maskrune
LBB9_16:                                ## %isprint.exit.i
                                        ##   in Loop: Header=BB9_13 Depth=2
	testl	%eax, %eax
	movl	$46, %eax
	cmovel	%eax, %ebx
	movq	(%r14), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB9_19
## BB#17:                               ##   in Loop: Header=BB9_13 Depth=2
	cmpl	40(%rsi), %eax
	jle	LBB9_20
## BB#18:                               ##   in Loop: Header=BB9_13 Depth=2
	cmpl	$10, %ebx
	je	LBB9_20
LBB9_19:                                ## %._crit_edge.i.i
                                        ##   in Loop: Header=BB9_13 Depth=2
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%bl, (%rax)
	jmp	LBB9_21
LBB9_20:                                ##   in Loop: Header=BB9_13 Depth=2
	movl	%ebx, %edi
	callq	___swbuf
	.align	4, 0x90
LBB9_21:                                ## %__sputc.exit.i
                                        ##   in Loop: Header=BB9_13 Depth=2
	decq	%r12
	jne	LBB9_13
LBB9_22:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB9_8 Depth=1
	movq	(%r14), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jg	LBB9_24
## BB#23:                               ##   in Loop: Header=BB9_8 Depth=1
	cmpl	40(%rsi), %eax
	jle	LBB9_25
LBB9_24:                                ## %._crit_edge.i1.i
                                        ##   in Loop: Header=BB9_8 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$60, (%rax)
	jmp	LBB9_26
LBB9_25:                                ##   in Loop: Header=BB9_8 Depth=1
	movl	$60, %edi
	callq	___swbuf
	.align	4, 0x90
LBB9_26:                                ## %dump_hexl_mode_trailer.exit
                                        ##   in Loop: Header=BB9_8 Depth=1
	movq	(%r14), %rsi
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	jle	LBB9_28
## BB#27:                               ## %._crit_edge.i4
                                        ##   in Loop: Header=BB9_8 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	$10, (%rax)
	jmp	LBB9_29
	.align	4, 0x90
LBB9_28:                                ##   in Loop: Header=BB9_8 Depth=1
	movl	$10, %edi
	callq	___swbuf
LBB9_29:                                ## %__sputc.exit
                                        ##   in Loop: Header=BB9_8 Depth=1
	incq	%r13
	cmpq	_n_specs(%rip), %r13
	jb	LBB9_8
	jmp	LBB9_30
LBB9_4:
	movb	_write_block.prev_pair_equal(%rip), %al
	testb	%al, %al
	jne	LBB9_30
## BB#5:
	leaq	L_str(%rip), %rdi
	callq	_puts
	movb	$1, _write_block.prev_pair_equal(%rip)
LBB9_30:                                ## %.loopexit
	movb	$1, _write_block.first(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_check_and_close:                       ## @check_and_close
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp101:
	.cfi_def_cfa_offset 16
Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp103:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp104:
	.cfi_offset %rbx, -32
Ltmp105:
	.cfi_offset %r14, -24
	movl	%edi, %esi
	movq	_in_stream(%rip), %rbx
	movb	$1, %r14b
	testq	%rbx, %rbx
	je	LBB10_8
## BB#1:
	testb	$64, 16(%rbx)
	je	LBB10_4
## BB#2:
	movq	_input_filename(%rip), %rcx
	leaq	L_.str45(%rip), %rdx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	_error
	movq	_file_list(%rip), %rax
	movq	-8(%rax), %rdi
	leaq	L_.str46(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB10_7
## BB#3:
	movq	_in_stream(%rip), %rdi
	callq	_rpl_fclose
	xorl	%r14d, %r14d
	jmp	LBB10_7
LBB10_4:
	movq	_file_list(%rip), %rax
	movq	-8(%rax), %rdi
	leaq	L_.str46(%rip), %rsi
	callq	_strcmp
	movb	$1, %r14b
	testl	%eax, %eax
	je	LBB10_7
## BB#5:
	movq	%rbx, %rdi
	callq	_rpl_fclose
	testl	%eax, %eax
	je	LBB10_7
## BB#6:
	callq	___error
	movl	(%rax), %esi
	movq	_input_filename(%rip), %rcx
	leaq	L_.str37(%rip), %rdx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	_error
LBB10_7:
	movq	$0, _in_stream(%rip)
LBB10_8:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testb	$64, 16(%rax)
	je	LBB10_10
## BB#9:
	leaq	L_.str47(%rip), %rdx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
LBB10_10:
	movb	%r14b, %al
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_s_char:                          ## @print_s_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp109:
	.cfi_def_cfa_offset 16
Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp111:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp112:
	.cfi_offset %rbx, -56
Ltmp113:
	.cfi_offset %r12, -48
Ltmp114:
	.cfi_offset %r13, -40
Ltmp115:
	.cfi_offset %r14, -32
Ltmp116:
	.cfi_offset %r15, -24
	movl	%r9d, %ebx
	movq	%rdx, %r14
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rsi, %rdi
	jbe	LBB11_3
## BB#1:                                ## %.lr.ph
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-1(%rdi), %r15
	movslq	%ebx, %rax
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	imulq	%rax, %r15
	movq	%rdi, %r13
	.align	4, 0x90
LBB11_2:                                ## =>This Inner Loop Header: Depth=1
	decq	%r13
	xorl	%edx, %edx
	movq	%r15, %rax
	divq	-64(%rbp)               ## 8-byte Folded Reload
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	addl	%r8d, %ebx
	subl	%eax, %ebx
	movsbl	(%r14), %edx
	incq	%r14
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movl	%ebx, %esi
	movl	%r8d, %ebx
	movq	%rcx, %r12
	callq	_xprintf
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r12, %rcx
	movl	%ebx, %r8d
	subq	-72(%rbp), %r15         ## 8-byte Folded Reload
	cmpq	%rax, %r13
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	%eax, %ebx
	ja	LBB11_2
LBB11_3:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_char:                            ## @print_char
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp120:
	.cfi_def_cfa_offset 16
Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp122:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp123:
	.cfi_offset %rbx, -56
Ltmp124:
	.cfi_offset %r12, -48
Ltmp125:
	.cfi_offset %r13, -40
Ltmp126:
	.cfi_offset %r14, -32
Ltmp127:
	.cfi_offset %r15, -24
	movl	%r9d, %ebx
	movq	%rdx, %r14
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rsi, %rdi
	jbe	LBB12_3
## BB#1:                                ## %.lr.ph
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-1(%rdi), %r15
	movslq	%ebx, %rax
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	imulq	%rax, %r15
	movq	%rdi, %r13
	.align	4, 0x90
LBB12_2:                                ## =>This Inner Loop Header: Depth=1
	decq	%r13
	xorl	%edx, %edx
	movq	%r15, %rax
	divq	-64(%rbp)               ## 8-byte Folded Reload
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	addl	%r8d, %ebx
	subl	%eax, %ebx
	movzbl	(%r14), %edx
	incq	%r14
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movl	%ebx, %esi
	movl	%r8d, %ebx
	movq	%rcx, %r12
	callq	_xprintf
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r12, %rcx
	movl	%ebx, %r8d
	subq	-72(%rbp), %r15         ## 8-byte Folded Reload
	cmpq	%rax, %r13
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	%eax, %ebx
	ja	LBB12_2
LBB12_3:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_s_short:                         ## @print_s_short
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp131:
	.cfi_def_cfa_offset 16
Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp133:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp134:
	.cfi_offset %rbx, -56
Ltmp135:
	.cfi_offset %r12, -48
Ltmp136:
	.cfi_offset %r13, -40
Ltmp137:
	.cfi_offset %r14, -32
Ltmp138:
	.cfi_offset %r15, -24
	movl	%r9d, %r15d
	movl	%r8d, -52(%rbp)         ## 4-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	cmpq	%rsi, %r12
	jbe	LBB13_5
## BB#1:                                ## %.lr.ph
	leaq	-1(%r12), %r14
	movslq	%r15d, %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	imulq	%rax, %r14
	movq	%r12, %r13
	.align	4, 0x90
LBB13_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r15d, %esi
	decq	%r13
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r12
	addl	-52(%rbp), %esi         ## 4-byte Folded Reload
	movq	%rax, %r15
	subl	%r15d, %esi
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB13_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB13_2 Depth=1
	movb	1(%rbx), %al
	movb	%al, -48(%rbp)
	movb	(%rbx), %al
	movb	%al, -47(%rbp)
	leaq	-48(%rbp), %rax
LBB13_4:                                ##   in Loop: Header=BB13_2 Depth=1
	addq	$2, %rbx
	movswl	(%rax), %edx
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	_xprintf
	subq	-80(%rbp), %r14         ## 8-byte Folded Reload
	cmpq	-72(%rbp), %r13         ## 8-byte Folded Reload
	ja	LBB13_2
LBB13_5:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_short:                           ## @print_short
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp142:
	.cfi_def_cfa_offset 16
Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp144:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp145:
	.cfi_offset %rbx, -56
Ltmp146:
	.cfi_offset %r12, -48
Ltmp147:
	.cfi_offset %r13, -40
Ltmp148:
	.cfi_offset %r14, -32
Ltmp149:
	.cfi_offset %r15, -24
	movl	%r9d, %r15d
	movl	%r8d, -52(%rbp)         ## 4-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	cmpq	%rsi, %r12
	jbe	LBB14_5
## BB#1:                                ## %.lr.ph
	leaq	-1(%r12), %r14
	movslq	%r15d, %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	imulq	%rax, %r14
	movq	%r12, %r13
	.align	4, 0x90
LBB14_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r15d, %esi
	decq	%r13
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r12
	addl	-52(%rbp), %esi         ## 4-byte Folded Reload
	movq	%rax, %r15
	subl	%r15d, %esi
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB14_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB14_2 Depth=1
	movb	1(%rbx), %al
	movb	%al, -48(%rbp)
	movb	(%rbx), %al
	movb	%al, -47(%rbp)
	leaq	-48(%rbp), %rax
LBB14_4:                                ##   in Loop: Header=BB14_2 Depth=1
	addq	$2, %rbx
	movzwl	(%rax), %edx
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	_xprintf
	subq	-80(%rbp), %r14         ## 8-byte Folded Reload
	cmpq	-72(%rbp), %r13         ## 8-byte Folded Reload
	ja	LBB14_2
LBB14_5:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_int:                             ## @print_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp153:
	.cfi_def_cfa_offset 16
Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp155:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp156:
	.cfi_offset %rbx, -56
Ltmp157:
	.cfi_offset %r12, -48
Ltmp158:
	.cfi_offset %r13, -40
Ltmp159:
	.cfi_offset %r14, -32
Ltmp160:
	.cfi_offset %r15, -24
	movl	%r9d, %r15d
	movl	%r8d, -52(%rbp)         ## 4-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	cmpq	%rsi, %r12
	jbe	LBB15_5
## BB#1:                                ## %.lr.ph
	leaq	-1(%r12), %r14
	movslq	%r15d, %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	imulq	%rax, %r14
	movq	%r12, %r13
	.align	4, 0x90
LBB15_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r15d, %esi
	decq	%r13
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r12
	addl	-52(%rbp), %esi         ## 4-byte Folded Reload
	movq	%rax, %r15
	subl	%r15d, %esi
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB15_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB15_2 Depth=1
	movb	3(%rbx), %al
	movb	%al, -48(%rbp)
	movb	2(%rbx), %al
	movb	%al, -47(%rbp)
	movb	1(%rbx), %al
	movb	%al, -46(%rbp)
	movb	(%rbx), %al
	movb	%al, -45(%rbp)
	leaq	-48(%rbp), %rax
LBB15_4:                                ##   in Loop: Header=BB15_2 Depth=1
	movl	(%rax), %edx
	addq	$4, %rbx
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	_xprintf
	subq	-80(%rbp), %r14         ## 8-byte Folded Reload
	cmpq	-72(%rbp), %r13         ## 8-byte Folded Reload
	ja	LBB15_2
LBB15_5:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_long:                            ## @print_long
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp164:
	.cfi_def_cfa_offset 16
Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp166:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp167:
	.cfi_offset %rbx, -56
Ltmp168:
	.cfi_offset %r12, -48
Ltmp169:
	.cfi_offset %r13, -40
Ltmp170:
	.cfi_offset %r14, -32
Ltmp171:
	.cfi_offset %r15, -24
	movl	%r9d, %r15d
	movl	%r8d, -52(%rbp)         ## 4-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	cmpq	%rsi, %r12
	jbe	LBB16_5
## BB#1:                                ## %.lr.ph
	leaq	-1(%r12), %r14
	movslq	%r15d, %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	imulq	%rax, %r14
	movq	%r12, %r13
	.align	4, 0x90
LBB16_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r15d, %esi
	decq	%r13
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r12
	addl	-52(%rbp), %esi         ## 4-byte Folded Reload
	movq	%rax, %r15
	subl	%r15d, %esi
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB16_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB16_2 Depth=1
	movb	7(%rbx), %al
	movb	%al, -48(%rbp)
	movb	6(%rbx), %al
	movb	%al, -47(%rbp)
	movb	5(%rbx), %al
	movb	%al, -46(%rbp)
	movb	4(%rbx), %al
	movb	%al, -45(%rbp)
	movb	3(%rbx), %al
	movb	%al, -44(%rbp)
	movb	2(%rbx), %al
	movb	%al, -43(%rbp)
	movb	1(%rbx), %al
	movb	%al, -42(%rbp)
	movb	(%rbx), %al
	movb	%al, -41(%rbp)
	leaq	-48(%rbp), %rax
LBB16_4:                                ##   in Loop: Header=BB16_2 Depth=1
	movq	(%rax), %rdx
	addq	$8, %rbx
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	_xprintf
	subq	-80(%rbp), %r14         ## 8-byte Folded Reload
	cmpq	-72(%rbp), %r13         ## 8-byte Folded Reload
	ja	LBB16_2
LBB16_5:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_long_long:                       ## @print_long_long
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp175:
	.cfi_def_cfa_offset 16
Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp177:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp178:
	.cfi_offset %rbx, -56
Ltmp179:
	.cfi_offset %r12, -48
Ltmp180:
	.cfi_offset %r13, -40
Ltmp181:
	.cfi_offset %r14, -32
Ltmp182:
	.cfi_offset %r15, -24
	movl	%r9d, %r15d
	movl	%r8d, -52(%rbp)         ## 4-byte Spill
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	cmpq	%rsi, %r12
	jbe	LBB17_5
## BB#1:                                ## %.lr.ph
	leaq	-1(%r12), %r14
	movslq	%r15d, %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	imulq	%rax, %r14
	movq	%r12, %r13
	.align	4, 0x90
LBB17_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r15d, %esi
	decq	%r13
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%r12
	addl	-52(%rbp), %esi         ## 4-byte Folded Reload
	movq	%rax, %r15
	subl	%r15d, %esi
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB17_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB17_2 Depth=1
	movb	7(%rbx), %al
	movb	%al, -48(%rbp)
	movb	6(%rbx), %al
	movb	%al, -47(%rbp)
	movb	5(%rbx), %al
	movb	%al, -46(%rbp)
	movb	4(%rbx), %al
	movb	%al, -45(%rbp)
	movb	3(%rbx), %al
	movb	%al, -44(%rbp)
	movb	2(%rbx), %al
	movb	%al, -43(%rbp)
	movb	1(%rbx), %al
	movb	%al, -42(%rbp)
	movb	(%rbx), %al
	movb	%al, -41(%rbp)
	leaq	-48(%rbp), %rax
LBB17_4:                                ##   in Loop: Header=BB17_2 Depth=1
	movq	(%rax), %rdx
	addq	$8, %rbx
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	_xprintf
	subq	-80(%rbp), %r14         ## 8-byte Folded Reload
	cmpq	-72(%rbp), %r13         ## 8-byte Folded Reload
	ja	LBB17_2
LBB17_5:                                ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_print_float:                           ## @print_float
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp186:
	.cfi_def_cfa_offset 16
Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp188:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp189:
	.cfi_offset %rbx, -56
Ltmp190:
	.cfi_offset %r12, -48
Ltmp191:
	.cfi_offset %r13, -40
Ltmp192:
	.cfi_offset %r14, -32
Ltmp193:
	.cfi_offset %r15, -24
                                        ## kill: R9D<def> R9D<kill> R9<def>
	movl	%r8d, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	%rsi, %rdi
	jbe	LBB18_5
## BB#1:                                ## %.lr.ph
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	leaq	-1(%rdi), %r14
	movslq	%r9d, %rax
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	imulq	%rax, %r14
	leaq	-80(%rbp), %r13
	movq	%rdi, %r15
	.align	4, 0x90
LBB18_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r9d, %r12d
	decq	%r15
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	-120(%rbp)              ## 8-byte Folded Reload
	addl	-100(%rbp), %r12d       ## 4-byte Folded Reload
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	subl	%eax, %r12d
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB18_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB18_2 Depth=1
	movb	3(%rbx), %al
	movb	%al, -88(%rbp)
	movb	2(%rbx), %al
	movb	%al, -87(%rbp)
	movb	1(%rbx), %al
	movb	%al, -86(%rbp)
	movb	(%rbx), %al
	movb	%al, -85(%rbp)
	leaq	-88(%rbp), %rax
LBB18_4:                                ##   in Loop: Header=BB18_2 Depth=1
	movss	(%rax), %xmm0
	addq	$4, %rbx
	movl	$21, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	_ftoastr
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	callq	_xprintf
	subq	-128(%rbp), %r14        ## 8-byte Folded Reload
	cmpq	-112(%rbp), %r15        ## 8-byte Folded Reload
	movq	-96(%rbp), %r9          ## 8-byte Reload
	ja	LBB18_2
LBB18_5:                                ## %._crit_edge
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB18_7
## BB#6:                                ## %._crit_edge
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB18_7:                                ## %._crit_edge
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_print_double:                          ## @print_double
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp197:
	.cfi_def_cfa_offset 16
Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp199:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp200:
	.cfi_offset %rbx, -56
Ltmp201:
	.cfi_offset %r12, -48
Ltmp202:
	.cfi_offset %r13, -40
Ltmp203:
	.cfi_offset %r14, -32
Ltmp204:
	.cfi_offset %r15, -24
                                        ## kill: R9D<def> R9D<kill> R9<def>
	movl	%r8d, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	%rsi, %rdi
	jbe	LBB19_5
## BB#1:                                ## %.lr.ph
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	leaq	-1(%rdi), %r14
	movslq	%r9d, %rax
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	imulq	%rax, %r14
	leaq	-80(%rbp), %r13
	movq	%rdi, %r15
	.align	4, 0x90
LBB19_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r9d, %r12d
	decq	%r15
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	-120(%rbp)              ## 8-byte Folded Reload
	addl	-100(%rbp), %r12d       ## 4-byte Folded Reload
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	subl	%eax, %r12d
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB19_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB19_2 Depth=1
	movb	7(%rbx), %al
	movb	%al, -88(%rbp)
	movb	6(%rbx), %al
	movb	%al, -87(%rbp)
	movb	5(%rbx), %al
	movb	%al, -86(%rbp)
	movb	4(%rbx), %al
	movb	%al, -85(%rbp)
	movb	3(%rbx), %al
	movb	%al, -84(%rbp)
	movb	2(%rbx), %al
	movb	%al, -83(%rbp)
	movb	1(%rbx), %al
	movb	%al, -82(%rbp)
	movb	(%rbx), %al
	movb	%al, -81(%rbp)
	leaq	-88(%rbp), %rax
LBB19_4:                                ##   in Loop: Header=BB19_2 Depth=1
	movsd	(%rax), %xmm0
	addq	$8, %rbx
	movl	$30, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	_dtoastr
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	callq	_xprintf
	subq	-128(%rbp), %r14        ## 8-byte Folded Reload
	cmpq	-112(%rbp), %r15        ## 8-byte Folded Reload
	movq	-96(%rbp), %r9          ## 8-byte Reload
	ja	LBB19_2
LBB19_5:                                ## %._crit_edge
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB19_7
## BB#6:                                ## %._crit_edge
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_7:                                ## %._crit_edge
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_print_long_double:                     ## @print_long_double
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp208:
	.cfi_def_cfa_offset 16
Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp210:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp211:
	.cfi_offset %rbx, -56
Ltmp212:
	.cfi_offset %r12, -48
Ltmp213:
	.cfi_offset %r13, -40
Ltmp214:
	.cfi_offset %r14, -32
Ltmp215:
	.cfi_offset %r15, -24
                                        ## kill: R9D<def> R9D<kill> R9<def>
	movl	%r8d, -124(%rbp)        ## 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, -136(%rbp)        ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	%rsi, %rdi
	jbe	LBB20_5
## BB#1:                                ## %.lr.ph
	movq	%rdi, -144(%rbp)        ## 8-byte Spill
	leaq	-1(%rdi), %r14
	movslq	%r9d, %rax
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	imulq	%rax, %r14
	leaq	-96(%rbp), %r13
	movq	%rdi, %r12
	.align	4, 0x90
LBB20_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%r9d, %r15d
	decq	%r12
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	-144(%rbp)              ## 8-byte Folded Reload
	addl	-124(%rbp), %r15d       ## 4-byte Folded Reload
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	subl	%eax, %r15d
	movzbl	_input_swap(%rip), %eax
	cmpl	$1, %eax
	movq	%rbx, %rax
	jne	LBB20_4
## BB#3:                                ## %.preheader
                                        ##   in Loop: Header=BB20_2 Depth=1
	movb	15(%rbx), %al
	movb	%al, -112(%rbp)
	movb	14(%rbx), %al
	movb	%al, -111(%rbp)
	movb	13(%rbx), %al
	movb	%al, -110(%rbp)
	movb	12(%rbx), %al
	movb	%al, -109(%rbp)
	movb	11(%rbx), %al
	movb	%al, -108(%rbp)
	movb	10(%rbx), %al
	movb	%al, -107(%rbp)
	movb	9(%rbx), %al
	movb	%al, -106(%rbp)
	movb	8(%rbx), %al
	movb	%al, -105(%rbp)
	movb	7(%rbx), %al
	movb	%al, -104(%rbp)
	movb	6(%rbx), %al
	movb	%al, -103(%rbp)
	movb	5(%rbx), %al
	movb	%al, -102(%rbp)
	movb	4(%rbx), %al
	movb	%al, -101(%rbp)
	movb	3(%rbx), %al
	movb	%al, -100(%rbp)
	movb	2(%rbx), %al
	movb	%al, -99(%rbp)
	movb	1(%rbx), %al
	movb	%al, -98(%rbp)
	movb	(%rbx), %al
	movb	%al, -97(%rbp)
	leaq	-112(%rbp), %rax
LBB20_4:                                ##   in Loop: Header=BB20_2 Depth=1
	fldt	(%rax)
	addq	$16, %rbx
	fstpt	(%rsp)
	movl	$35, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	_ldtoastr
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	callq	_xprintf
	subq	-152(%rbp), %r14        ## 8-byte Folded Reload
	cmpq	-136(%rbp), %r12        ## 8-byte Folded Reload
	movq	-120(%rbp), %r9         ## 8-byte Reload
	ja	LBB20_2
LBB20_5:                                ## %._crit_edge
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB20_7
## BB#6:                                ## %._crit_edge
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB20_7:                                ## %._crit_edge
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_print_named_ascii:                     ## @print_named_ascii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp219:
	.cfi_def_cfa_offset 16
Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp221:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp222:
	.cfi_offset %rbx, -56
Ltmp223:
	.cfi_offset %r12, -48
Ltmp224:
	.cfi_offset %r13, -40
Ltmp225:
	.cfi_offset %r14, -32
Ltmp226:
	.cfi_offset %r15, -24
	movl	%r9d, %ecx
	movl	%r8d, -48(%rbp)         ## 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rdi, %r15
	cmpq	%rsi, %r15
	jbe	LBB21_7
## BB#1:                                ## %.lr.ph
	leaq	-1(%r15), %rbx
	movslq	%ecx, %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	imulq	%rax, %rbx
	movq	%r15, %r12
	.align	4, 0x90
LBB21_2:                                ## =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r15
	movq	%rax, %r14
	movzbl	(%r13), %eax
	andl	$127, %eax
	cmpl	$127, %eax
	leaq	L_.str89(%rip), %rdx
	je	LBB21_6
## BB#3:                                ##   in Loop: Header=BB21_2 Depth=1
	cmpl	$32, %eax
	ja	LBB21_5
## BB#4:                                ##   in Loop: Header=BB21_2 Depth=1
	leaq	_charname(%rip), %rdx
	leaq	(%rdx,%rax,4), %rdx
	jmp	LBB21_6
	.align	4, 0x90
LBB21_5:                                ##   in Loop: Header=BB21_2 Depth=1
	movb	%al, -42(%rbp)
	movb	$0, -41(%rbp)
	leaq	-42(%rbp), %rdx
LBB21_6:                                ##   in Loop: Header=BB21_2 Depth=1
	decq	%r12
	incq	%r13
	addl	-48(%rbp), %ecx         ## 4-byte Folded Reload
	subl	%r14d, %ecx
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	movl	%ecx, %esi
	callq	_xprintf
	subq	-64(%rbp), %rbx         ## 8-byte Folded Reload
	cmpq	-56(%rbp), %r12         ## 8-byte Folded Reload
	movl	%r14d, %ecx
	ja	LBB21_2
LBB21_7:                                ## %._crit_edge
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
_print_ascii:                           ## @print_ascii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp230:
	.cfi_def_cfa_offset 16
Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp232:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp233:
	.cfi_offset %rbx, -56
Ltmp234:
	.cfi_offset %r12, -48
Ltmp235:
	.cfi_offset %r13, -40
Ltmp236:
	.cfi_offset %r14, -32
Ltmp237:
	.cfi_offset %r15, -24
	movl	%r9d, %ebx
	movl	%r8d, -76(%rbp)         ## 4-byte Spill
	movq	%rdx, %rcx
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	cmpq	%rsi, %rdi
	jbe	LBB22_16
## BB#1:                                ## %.lr.ph
	movq	%rdi, -96(%rbp)         ## 8-byte Spill
	leaq	-1(%rdi), %r13
	movslq	%ebx, %rax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	leaq	-44(%rbp), %r14
	movq	%rdi, %rdx
	imulq	%rax, %r13
	jmp	LBB22_2
LBB22_4:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str52(%rip), %rdx
	jmp	LBB22_15
LBB22_5:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str53(%rip), %rdx
	jmp	LBB22_15
LBB22_9:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str57(%rip), %rdx
	jmp	LBB22_15
LBB22_7:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str55(%rip), %rdx
	jmp	LBB22_15
LBB22_10:                               ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str58(%rip), %rdx
	jmp	LBB22_15
LBB22_6:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str54(%rip), %rdx
	jmp	LBB22_15
LBB22_8:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	L_.str56(%rip), %rdx
	jmp	LBB22_15
	.align	4, 0x90
LBB22_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %r15d
	decq	%rdx
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
	xorl	%edx, %edx
	movq	%r13, %rax
	divq	-96(%rbp)               ## 8-byte Folded Reload
	movzbl	(%rcx), %r12d
	incq	%rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	cmpl	$13, %r12d
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	ja	LBB22_11
## BB#3:                                ##   in Loop: Header=BB22_2 Depth=1
	leaq	LJTI22_0(%rip), %rax
	movq	%rax, %rcx
	movslq	(%rcx,%r12,4), %rax
	addq	%rcx, %rax
	leaq	L_.str86(%rip), %rdx
	jmpq	*%rax
	.align	4, 0x90
LBB22_11:                               ##   in Loop: Header=BB22_2 Depth=1
	testb	%r12b, %r12b
	js	LBB22_13
## BB#12:                               ##   in Loop: Header=BB22_2 Depth=1
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl	60(%rax,%r12,4), %eax
	movl	$262144, %ecx           ## imm = 0x40000
	andl	%ecx, %eax
	jmp	LBB22_14
	.align	4, 0x90
LBB22_13:                               ##   in Loop: Header=BB22_2 Depth=1
	movl	$262144, %esi           ## imm = 0x40000
	movl	%r12d, %edi
	callq	___maskrune
LBB22_14:                               ## %isprint.exit
                                        ##   in Loop: Header=BB22_2 Depth=1
	testl	%eax, %eax
	leaq	L_.str88(%rip), %rcx
	leaq	L_.str87(%rip), %rax
	cmovneq	%rax, %rcx
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r12d, %r8d
	callq	___sprintf_chk
	movq	%r14, %rdx
LBB22_15:                               ##   in Loop: Header=BB22_2 Depth=1
	addl	-76(%rbp), %r15d        ## 4-byte Folded Reload
	movq	-64(%rbp), %rbx         ## 8-byte Reload
	subl	%ebx, %r15d
	xorl	%eax, %eax
	leaq	L_.str49(%rip), %rdi
	movl	%r15d, %esi
	callq	_xprintf
	subq	-104(%rbp), %r13        ## 8-byte Folded Reload
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	cmpq	-88(%rbp), %rdx         ## 8-byte Folded Reload
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	ja	LBB22_2
LBB22_16:                               ## %._crit_edge
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L22_0_set_15 = LBB22_15-LJTI22_0
L22_0_set_11 = LBB22_11-LJTI22_0
L22_0_set_4 = LBB22_4-LJTI22_0
L22_0_set_5 = LBB22_5-LJTI22_0
L22_0_set_9 = LBB22_9-LJTI22_0
L22_0_set_7 = LBB22_7-LJTI22_0
L22_0_set_10 = LBB22_10-LJTI22_0
L22_0_set_6 = LBB22_6-LJTI22_0
L22_0_set_8 = LBB22_8-LJTI22_0
LJTI22_0:
	.long	L22_0_set_15
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_4
	.long	L22_0_set_5
	.long	L22_0_set_9
	.long	L22_0_set_7
	.long	L22_0_set_10
	.long	L22_0_set_6
	.long	L22_0_set_8

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [-abcdfilosx]... [FILE] [[+]OFFSET[.][b]]\n  or:  %s --traditional [OPTION]... [FILE] [[+]OFFSET[.][b] [+][LABEL][.][b]]\n"

L_.str1:                                ## @.str1
	.asciz	"\nWrite an unambiguous representation, octal bytes by default,\nof FILE to standard output.  With more than one FILE argument,\nconcatenate them in the listed order to form the input.\n"

L_.str2:                                ## @.str2
	.asciz	"\nIf first and second call formats both apply, the second format is assumed\nif the last operand begins with + or (if there are 2 operands) a digit.\nAn OFFSET operand means -j OFFSET.  LABEL is the pseudo-address\nat first byte printed, incremented when dump is progressing.\nFor OFFSET and LABEL, a 0x or 0X prefix indicates hexadecimal;\nsuffixes may be . for octal and b for multiply by 512.\n"

L_.str3:                                ## @.str3
	.asciz	"  -A, --address-radix=RADIX   output format for file offsets; RADIX is one\n                                of [doxn], for Decimal, Octal, Hex or None\n      --endian={big|little}   swap input bytes according the specified order\n  -j, --skip-bytes=BYTES      skip BYTES input bytes first\n"

L_.str4:                                ## @.str4
	.asciz	"  -N, --read-bytes=BYTES      limit dump to BYTES input bytes\n  -S BYTES, --strings[=BYTES]  output strings of at least BYTES graphic chars;\n                                3 is implied when BYTES is not specified\n  -t, --format=TYPE           select output format or formats\n  -v, --output-duplicates     do not use * to mark line suppression\n  -w[BYTES], --width[=BYTES]  output BYTES bytes per output line;\n                                32 is implied when BYTES is not specified\n      --traditional           accept arguments in third form above\n"

L_.str5:                                ## @.str5
	.asciz	"      --help     display this help and exit\n"

L_.str6:                                ## @.str6
	.asciz	"      --version  output version information and exit\n"

L_.str7:                                ## @.str7
	.asciz	"\n\nTraditional format specifications may be intermixed; they accumulate:\n  -a   same as -t a,  select named characters, ignoring high-order bit\n  -b   same as -t o1, select octal bytes\n  -c   same as -t c,  select printable characters or backslash escapes\n  -d   same as -t u2, select unsigned decimal 2-byte units\n"

L_.str8:                                ## @.str8
	.asciz	"  -f   same as -t fF, select floats\n  -i   same as -t dI, select decimal ints\n  -l   same as -t dL, select decimal longs\n  -o   same as -t o2, select octal 2-byte units\n  -s   same as -t d2, select decimal 2-byte units\n  -x   same as -t x2, select hexadecimal 2-byte units\n"

L_.str9:                                ## @.str9
	.asciz	"\n\nTYPE is made up of one or more of these specifications:\n  a          named character, ignoring high-order bit\n  c          printable character or backslash escape\n"

L_.str10:                               ## @.str10
	.asciz	"  d[SIZE]    signed decimal, SIZE bytes per integer\n  f[SIZE]    floating point, SIZE bytes per integer\n  o[SIZE]    octal, SIZE bytes per integer\n  u[SIZE]    unsigned decimal, SIZE bytes per integer\n  x[SIZE]    hexadecimal, SIZE bytes per integer\n"

L_.str11:                               ## @.str11
	.asciz	"\nSIZE is a number.  For TYPE in [doux], SIZE may also be C for\nsizeof(char), S for sizeof(short), I for sizeof(int) or L for\nsizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D\nfor sizeof(double) or L for sizeof(long double).\n"

L_.str12:                               ## @.str12
	.asciz	"\nAdding a z suffix to any type displays printable characters at the end of\neach output line.\n"

L_.str13:                               ## @.str13
	.asciz	"\n\nBYTES is hex with 0x or 0X prefix, and may have a multiplier suffix:\n  b    512\n  KB   1000\n  K    1024\n  MB   1000*1000\n  M    1024*1024\nand so on for G, T, P, E, Z, Y.\n"

L_.str14:                               ## @.str14
	.asciz	"od"

	.section	__TEXT,__const
_main.multipliers:                      ## @main.multipliers
	.asciz	"bEGKkMmPTYZ0"

	.section	__TEXT,__cstring,cstring_literals
L_.str15:                               ## @.str15
	.space	1

.zerofill __DATA,__bss,_integral_type_size,36,4 ## @integral_type_size
.zerofill __DATA,__bss,_fp_type_size,68,4 ## @fp_type_size
.zerofill __DATA,__bss,_n_specs,8,3     ## @n_specs
.zerofill __DATA,__bss,_n_specs_allocated,8,3 ## @n_specs_allocated
.zerofill __DATA,__bss,_spec,8,3        ## @spec
.zerofill __DATA,__bss,_format_address,8,3 ## @format_address
.zerofill __DATA,__bss,_address_base,4,2 ## @address_base
.zerofill __DATA,__bss,_address_pad_len,4,2 ## @address_pad_len
.zerofill __DATA,__bss,_flag_dump_strings,1,0 ## @flag_dump_strings
	.section	__TEXT,__const
	.align	4                       ## @short_options
_short_options:
	.asciz	"A:aBbcDdeFfHhIij:LlN:OoS:st:vw::Xx"

	.section	__TEXT,__cstring,cstring_literals
L_.str16:                               ## @.str16
	.asciz	"invalid output address radix '%c'; it must be one character from [doxn]"

.zerofill __DATA,__bss,_n_bytes_to_skip,8,3 ## @n_bytes_to_skip
.zerofill __DATA,__bss,_limit_bytes_to_format,1,0 ## @limit_bytes_to_format
.zerofill __DATA,__bss,_max_bytes_to_format,8,3 ## @max_bytes_to_format
.zerofill __DATA,__bss,_string_min,8,3  ## @string_min
.zerofill __DATA,__bss,_abbreviate_duplicate_blocks,1,0 ## @abbreviate_duplicate_blocks
L_.str18:                               ## @.str18
	.asciz	"--endian"

	.section	__DATA,__const
	.align	4                       ## @endian_args
_endian_args:
	.quad	L_.str62
	.quad	L_.str63
	.quad	0

	.section	__TEXT,__const
	.align	2                       ## @endian_types
_endian_types:
	.long	0                       ## 0x0
	.long	1                       ## 0x1

.zerofill __DATA,__bss,_input_swap,1,0  ## @input_swap
	.section	__TEXT,__cstring,cstring_literals
L_.str19:                               ## @.str19
	.asciz	"a"

L_.str20:                               ## @.str20
	.asciz	"o1"

L_.str21:                               ## @.str21
	.asciz	"c"

L_.str22:                               ## @.str22
	.asciz	"u4"

L_.str23:                               ## @.str23
	.asciz	"u2"

L_.str24:                               ## @.str24
	.asciz	"fD"

L_.str25:                               ## @.str25
	.asciz	"fF"

L_.str26:                               ## @.str26
	.asciz	"x4"

L_.str27:                               ## @.str27
	.asciz	"dI"

L_.str28:                               ## @.str28
	.asciz	"dL"

L_.str29:                               ## @.str29
	.asciz	"o4"

L_.str30:                               ## @.str30
	.asciz	"o2"

L_.str31:                               ## @.str31
	.asciz	"d2"

L_.str32:                               ## @.str32
	.asciz	"x2"

L_.str33:                               ## @.str33
	.asciz	"GNU coreutils"

L_.str34:                               ## @.str34
	.asciz	"Jim Meyering"

L_.str35:                               ## @.str35
	.asciz	"no type may be specified when dumping strings"

L_.str36:                               ## @.str36
	.asciz	"extra operand %s"

L_.str37:                               ## @.str37
	.asciz	"%s"

L_.str38:                               ## @.str38
	.asciz	"compatibility mode supports at most one file"

.zerofill __DATA,__bss,_end_offset,8,3  ## @end_offset
L_.str39:                               ## @.str39
	.asciz	"skip-bytes + read-bytes is too large"

L_.str40:                               ## @.str40
	.asciz	"oS"

.zerofill __DATA,__bss,_file_list,8,3   ## @file_list
	.section	__DATA,__const
	.align	4                       ## @default_file_list
_default_file_list:
	.quad	L_.str46
	.quad	0

.zerofill __DATA,__bss,_in_stream,8,3   ## @in_stream
.zerofill __DATA,__bss,_pseudo_offset,8,3 ## @pseudo_offset
.zerofill __DATA,__bss,_bytes_per_block,8,3 ## @bytes_per_block
	.section	__TEXT,__cstring,cstring_literals
L_.str41:                               ## @.str41
	.asciz	"warning: invalid width %lu; using %d instead"

	.section	__TEXT,__const
	.align	4                       ## @width_bytes
_width_bytes:
	.long	4294967295              ## 0xffffffff
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	8                       ## 0x8
	.long	8                       ## 0x8
	.long	4                       ## 0x4
	.long	8                       ## 0x8
	.long	16                      ## 0x10

.zerofill __DATA,__bss,_have_read_stdin,1,0 ## @have_read_stdin
	.section	__TEXT,__cstring,cstring_literals
L_.str42:                               ## @.str42
	.asciz	"standard input"

L___func__.dump:                        ## @__func__.dump
	.asciz	"dump"

L_.str43:                               ## @.str43
	.asciz	"src/od.c"

L_.str44:                               ## @.str44
	.asciz	"n_bytes_read == bytes_per_block"

L_.str45:                               ## @.str45
	.asciz	"%s: read error"

.zerofill __DATA,__bss,_input_filename,8,3 ## @input_filename
L_.str46:                               ## @.str46
	.asciz	"-"

L_.str47:                               ## @.str47
	.asciz	"write error"

.zerofill __DATA,__bss,_write_block.first,1,0 ## @write_block.first
.zerofill __DATA,__bss,_write_block.prev_pair_equal,1,0 ## @write_block.prev_pair_equal
L_.str49:                               ## @.str49
	.asciz	"%*s"

L_.str50:                               ## @.str50
	.asciz	"  >"

L___func__.read_block:                  ## @__func__.read_block
	.asciz	"read_block"

L_.str51:                               ## @.str51
	.asciz	"0 < n && n <= bytes_per_block"

L_.str52:                               ## @.str52
	.asciz	"\\a"

L_.str53:                               ## @.str53
	.asciz	"\\b"

L_.str54:                               ## @.str54
	.asciz	"\\f"

L_.str55:                               ## @.str55
	.asciz	"\\n"

L_.str56:                               ## @.str56
	.asciz	"\\r"

L_.str57:                               ## @.str57
	.asciz	"\\t"

L_.str58:                               ## @.str58
	.asciz	"\\v"

L_.str59:                               ## @.str59
	.asciz	"cannot skip past end of combined input"

L_.str60:                               ## @.str60
	.asciz	"r"

L_.str61:                               ## @.str61
	.asciz	"Bb"

L_.str62:                               ## @.str62
	.asciz	"little"

L_.str63:                               ## @.str63
	.asciz	"big"

L___func__.decode_format_string:        ## @__func__.decode_format_string
	.asciz	"decode_format_string"

L_.str64:                               ## @.str64
	.asciz	"s != NULL"

L_.str65:                               ## @.str65
	.asciz	"s != next"

L___func__.decode_one_format:           ## @__func__.decode_one_format
	.asciz	"decode_one_format"

L_.str66:                               ## @.str66
	.asciz	"tspec != NULL"

L_.str67:                               ## @.str67
	.asciz	"invalid type string %s"

L_.str68:                               ## @.str68
	.asciz	"invalid type string %s;\nthis system doesn't provide a %lu-byte integral type"

	.section	__TEXT,__const
	.align	4                       ## @bytes_to_signed_dec_digits
_bytes_to_signed_dec_digits:
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	6                       ## 0x6
	.long	8                       ## 0x8
	.long	11                      ## 0xb
	.long	13                      ## 0xd
	.long	16                      ## 0x10
	.long	18                      ## 0x12
	.long	20                      ## 0x14
	.long	23                      ## 0x17
	.long	25                      ## 0x19
	.long	28                      ## 0x1c
	.long	30                      ## 0x1e
	.long	33                      ## 0x21
	.long	35                      ## 0x23
	.long	37                      ## 0x25
	.long	40                      ## 0x28

	.section	__TEXT,__cstring,cstring_literals
L_.str69:                               ## @.str69
	.asciz	"%%*%s"

L_.str70:                               ## @.str70
	.asciz	"jd"

L_.str71:                               ## @.str71
	.asciz	"ld"

L_.str72:                               ## @.str72
	.asciz	"d"

L_.str73:                               ## @.str73
	.asciz	"%%*.%d%s"

	.section	__TEXT,__const
	.align	4                       ## @bytes_to_oct_digits
_bytes_to_oct_digits:
	.long	0                       ## 0x0
	.long	3                       ## 0x3
	.long	6                       ## 0x6
	.long	8                       ## 0x8
	.long	11                      ## 0xb
	.long	14                      ## 0xe
	.long	16                      ## 0x10
	.long	19                      ## 0x13
	.long	22                      ## 0x16
	.long	25                      ## 0x19
	.long	27                      ## 0x1b
	.long	30                      ## 0x1e
	.long	32                      ## 0x20
	.long	35                      ## 0x23
	.long	38                      ## 0x26
	.long	41                      ## 0x29
	.long	43                      ## 0x2b

	.section	__TEXT,__cstring,cstring_literals
L_.str74:                               ## @.str74
	.asciz	"jo"

L_.str75:                               ## @.str75
	.asciz	"lo"

L_.str76:                               ## @.str76
	.asciz	"o"

	.section	__TEXT,__const
	.align	4                       ## @bytes_to_unsigned_dec_digits
_bytes_to_unsigned_dec_digits:
	.long	0                       ## 0x0
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	8                       ## 0x8
	.long	10                      ## 0xa
	.long	13                      ## 0xd
	.long	15                      ## 0xf
	.long	17                      ## 0x11
	.long	20                      ## 0x14
	.long	22                      ## 0x16
	.long	25                      ## 0x19
	.long	27                      ## 0x1b
	.long	29                      ## 0x1d
	.long	32                      ## 0x20
	.long	34                      ## 0x22
	.long	37                      ## 0x25
	.long	39                      ## 0x27

	.section	__TEXT,__cstring,cstring_literals
L_.str77:                               ## @.str77
	.asciz	"ju"

L_.str78:                               ## @.str78
	.asciz	"lu"

L_.str79:                               ## @.str79
	.asciz	"u"

	.section	__TEXT,__const
	.align	4                       ## @bytes_to_hex_digits
_bytes_to_hex_digits:
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	6                       ## 0x6
	.long	8                       ## 0x8
	.long	10                      ## 0xa
	.long	12                      ## 0xc
	.long	14                      ## 0xe
	.long	16                      ## 0x10
	.long	18                      ## 0x12
	.long	20                      ## 0x14
	.long	22                      ## 0x16
	.long	24                      ## 0x18
	.long	26                      ## 0x1a
	.long	28                      ## 0x1c
	.long	30                      ## 0x1e
	.long	32                      ## 0x20

	.section	__TEXT,__cstring,cstring_literals
L_.str80:                               ## @.str80
	.asciz	"jx"

L_.str81:                               ## @.str81
	.asciz	"lx"

L_.str82:                               ## @.str82
	.asciz	"x"

L_.str83:                               ## @.str83
	.asciz	"strlen (tspec->fmt_string) < FMT_BYTES_ALLOCATED"

L_.str84:                               ## @.str84
	.asciz	"invalid type string %s;\nthis system doesn't provide a %lu-byte floating point type"

L_.str85:                               ## @.str85
	.asciz	"invalid character '%c' in type string %s"

L_.str86:                               ## @.str86
	.asciz	"\\0"

L_.str87:                               ## @.str87
	.asciz	"%c"

L_.str88:                               ## @.str88
	.asciz	"%03o"

L_.str89:                               ## @.str89
	.asciz	"del"

	.section	__TEXT,__const
	.align	4                       ## @charname
_charname:
	.asciz	"nul"
	.asciz	"soh"
	.asciz	"stx"
	.asciz	"etx"
	.asciz	"eot"
	.asciz	"enq"
	.asciz	"ack"
	.asciz	"bel"
	.asciz	"bs\000"
	.asciz	"ht\000"
	.asciz	"nl\000"
	.asciz	"vt\000"
	.asciz	"ff\000"
	.asciz	"cr\000"
	.asciz	"so\000"
	.asciz	"si\000"
	.asciz	"dle"
	.asciz	"dc1"
	.asciz	"dc2"
	.asciz	"dc3"
	.asciz	"dc4"
	.asciz	"nak"
	.asciz	"syn"
	.asciz	"etb"
	.asciz	"can"
	.asciz	"em\000"
	.asciz	"sub"
	.asciz	"esc"
	.asciz	"fs\000"
	.asciz	"gs\000"
	.asciz	"rs\000"
	.asciz	"us\000"
	.asciz	"sp\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str90:                               ## @.str90
	.asciz	"skip-bytes"

L_.str91:                               ## @.str91
	.asciz	"address-radix"

L_.str92:                               ## @.str92
	.asciz	"read-bytes"

L_.str93:                               ## @.str93
	.asciz	"format"

L_.str94:                               ## @.str94
	.asciz	"output-duplicates"

L_.str95:                               ## @.str95
	.asciz	"strings"

L_.str96:                               ## @.str96
	.asciz	"traditional"

L_.str97:                               ## @.str97
	.asciz	"width"

L_.str98:                               ## @.str98
	.asciz	"endian"

L_.str99:                               ## @.str99
	.asciz	"help"

L_.str100:                              ## @.str100
	.asciz	"version"

	.section	__DATA,__const
	.align	4                       ## @long_options
_long_options:
	.quad	L_.str90
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	106                     ## 0x6a
	.space	4
	.quad	L_.str91
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	65                      ## 0x41
	.space	4
	.quad	L_.str92
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	78                      ## 0x4e
	.space	4
	.quad	L_.str93
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	116                     ## 0x74
	.space	4
	.quad	L_.str94
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	118                     ## 0x76
	.space	4
	.quad	L_.str95
	.long	2                       ## 0x2
	.space	4
	.quad	0
	.long	83                      ## 0x53
	.space	4
	.quad	L_.str96
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	128                     ## 0x80
	.space	4
	.quad	L_.str97
	.long	2                       ## 0x2
	.space	4
	.quad	0
	.long	119                     ## 0x77
	.space	4
	.quad	L_.str98
	.long	1                       ## 0x1
	.space	4
	.quad	0
	.long	129                     ## 0x81
	.space	4
	.quad	L_.str99
	.long	0                       ## 0x0
	.space	4
	.quad	0
	.long	4294967166              ## 0xffffff7e
	.space	4
	.quad	L_.str100
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
L_.str101:                              ## @.str101
	.asciz	"0123456789abcdef"

	.section	__DATA,__const
	.align	4                       ## @emit_ancillary_info.infomap
_emit_ancillary_info.infomap:
	.quad	L_.str102
	.quad	L_.str103
	.quad	L_.str104
	.quad	L_.str105
	.quad	L_.str106
	.quad	L_.str107
	.quad	L_.str108
	.quad	L_.str107
	.quad	L_.str109
	.quad	L_.str107
	.quad	L_.str110
	.quad	L_.str107
	.space	16

	.section	__TEXT,__cstring,cstring_literals
L_.str102:                              ## @.str102
	.asciz	"["

L_.str103:                              ## @.str103
	.asciz	"test invocation"

L_.str104:                              ## @.str104
	.asciz	"coreutils"

L_.str105:                              ## @.str105
	.asciz	"Multi-call invocation"

L_.str106:                              ## @.str106
	.asciz	"sha224sum"

L_.str107:                              ## @.str107
	.asciz	"sha2 utilities"

L_.str108:                              ## @.str108
	.asciz	"sha256sum"

L_.str109:                              ## @.str109
	.asciz	"sha384sum"

L_.str110:                              ## @.str110
	.asciz	"sha512sum"

L_.str111:                              ## @.str111
	.asciz	"\n%s online help: <%s>\n"

L_.str112:                              ## @.str112
	.asciz	"http://www.gnu.org/software/coreutils/"

L_.str113:                              ## @.str113
	.asciz	"en_"

L_.str114:                              ## @.str114
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"

L_.str115:                              ## @.str115
	.asciz	"Full documentation at: <%s%s>\n"

L_.str116:                              ## @.str116
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"

L_.str117:                              ## @.str117
	.asciz	" invocation"

L_.str118:                              ## @.str118
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"

L_.str119:                              ## @.str119
	.asciz	"\nWith no FILE, or when FILE is -, read standard input.\n"

L_.str120:                              ## @.str120
	.asciz	"Try '%s --help' for more information.\n"

L_str:                                  ## @str
	.asciz	"*"


.subsections_via_symbols
