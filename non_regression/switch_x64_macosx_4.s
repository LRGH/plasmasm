	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_ellrootno_global
	.align	4, 0x90
_ellrootno_global:                      ## @ellrootno_global
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
Ltmp6:
	.cfi_def_cfa_offset 80
Ltmp7:
	.cfi_offset %rbx, -56
Ltmp8:
	.cfi_offset %r12, -48
Ltmp9:
	.cfi_offset %r13, -40
Ltmp10:
	.cfi_offset %r14, -32
Ltmp11:
	.cfi_offset %r15, -24
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	%rax, 16(%rsp)
	leaq	16(%rsp), %rdx
	movl	$2, %esi
	movq	%rax, %rdi
	callq	_Z_lvalrem
	movq	$-1, %rbx
	testq	%rax, %rax
	je	LBB0_2
## BB#1:
	movq	%r14, %rdi
	callq	_ellrootno_2
	movq	%rax, %rbx
	negq	%rbx
LBB0_2:
	movq	16(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$3, %esi
	callq	_Z_lvalrem
	testq	%rax, %rax
	je	LBB0_4
## BB#3:
	movq	%r14, %rdi
	callq	_ellrootno_3
	imulq	%rax, %rbx
LBB0_4:
	movq	16(%rsp), %rdi
	callq	_Z_factor
	movq	8(%rax), %r13
	movl	$1, %ebp
	testl	$16777214, (%r13)       ## imm = 0xFFFFFE
	je	LBB0_12
## BB#5:
	movq	16(%rax), %rax
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	.align	4, 0x90
LBB0_6:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbp,8), %r12
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	(%rax,%rbp,8), %rax
	movq	8(%rax), %rcx
	andq	%rdx, %rcx
	cmpq	$2, %rcx
	movl	$16777215, %r15d        ## imm = 0xFFFFFF
	movl	$0, %edx
	je	LBB0_11
## BB#7:                                ## %.lr.ph
                                        ##   in Loop: Header=BB0_6 Depth=1
	cmpq	$3, %rcx
	jne	LBB0_9
## BB#8:                                ##   in Loop: Header=BB0_6 Depth=1
	movq	16(%rax), %rdx
	jmp	LBB0_10
	.align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=1
	movl	$15, %edi
	xorl	%eax, %eax
	leaq	L_.str2(%rip), %rsi
	callq	_pari_err
	xorl	%edx, %edx
LBB0_10:                                ## %itou.exit
                                        ##   in Loop: Header=BB0_6 Depth=1
	movl	$16777215, %r15d        ## imm = 0xFFFFFF
LBB0_11:                                ## %itou.exit
                                        ##   in Loop: Header=BB0_6 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ellrootno_p
	imulq	%rax, %rbx
	incq	%rbp
	movq	(%r13), %rax
	andq	%r15, %rax
	cmpq	%rax, %rbp
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	jl	LBB0_6
LBB0_12:                                ## %._crit_edge
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
_ellrootno_2:                           ## @ellrootno_2
	.cfi_startproc
## BB#0:
	pushq	%r14
Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Ltmp14:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
Ltmp15:
	.cfi_def_cfa_offset 112
Ltmp16:
	.cfi_offset %rbx, -24
Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	56(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	40(%rsp), %rcx
	leaq	72(%rsp), %r8
	leaq	32(%rsp), %r9
	movl	$2, %esi
	movl	$64, %edx
	xorl	%eax, %eax
                                        ## kill: RDI<def> RBX<kill>
	callq	_val_init
	movl	$1, %eax
	cmpq	$0, 48(%rsp)
	je	LBB1_54
## BB#1:
	leaq	80(%rsp), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	_neron
	movq	%rax, %rdi
	movq	80(%rsp), %rcx
	cmpq	$5, %rcx
	jl	LBB1_3
## BB#2:
	movq	16(%rbx), %rdi
	movl	$2, %esi
	callq	_umodiu
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	movl	$2, %esi
	callq	_umodiu
	addl	%r14d, %eax
	addl	%eax, %eax
	andq	$2, %rax
	decq	%rax
	jmp	LBB1_54
LBB1_3:
	cmpq	$-10, %rcx
	jg	LBB1_6
## BB#4:
	movq	$-1, %rax
	cmpq	$2, %rdi
	jne	LBB1_54
## BB#5:
	movq	64(%rsp), %rsi
LBB1_21:
	movq	$-1, %rdi
LBB1_22:
	callq	_kross
	negq	%rax
	jmp	LBB1_54
LBB1_6:
	movl	$1, %eax
	addq	$9, %rcx
	cmpq	$12, %rcx
	ja	LBB1_14
## BB#7:
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdx
	leaq	(%rsi,%rdx,2), %r8
	leaq	LJTI1_0(%rip), %rbx
	movslq	(%rbx,%rcx,4), %rcx
	addq	%rbx, %rcx
	jmpq	*%rcx
LBB1_75:
	movq	$-1, %rax
	cmpq	$2, %rdi
	jne	LBB1_54
## BB#76:
	movq	56(%rsp), %rsi
	jmp	LBB1_21
LBB1_73:
	movq	$-1, %rax
	cmpq	$2, %rdi
	jne	LBB1_54
## BB#74:
	imulq	56(%rsp), %rdx
	jmp	LBB1_18
LBB1_67:
	movl	$1, %eax
	cmpq	$1, %rdi
	je	LBB1_54
	jmp	LBB1_68
LBB1_61:
	movl	$1, %eax
	cmpq	$1, %rdi
	je	LBB1_54
## BB#62:
	cmpq	$3, %rdi
	jne	LBB1_63
## BB#65:
	movq	%rsi, %rax
	sarq	$63, %rax
	shrq	$60, %rax
	addq	%rsi, %rax
	andq	$-16, %rax
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movl	$1, %eax
	cmpq	$11, %rcx
	je	LBB1_54
## BB#66:
	leaq	(%rsi,%rdx,4), %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$60, %rcx
	addq	%rax, %rcx
	andq	$-16, %rcx
	subq	%rcx, %rax
	cmpq	$3, %rax
	jmp	LBB1_30
LBB1_58:
	cmpq	$1, %rdi
	jne	LBB1_60
## BB#59:
	movq	%r8, %rax
	sarq	$63, %rax
	shrq	$59, %rax
	addq	%r8, %rax
	andq	$-32, %rax
	subq	%rax, %r8
	cmpq	$23, %r8
	jmp	LBB1_30
LBB1_48:
	decq	%rdi
	cmpq	$3, %rdi
	jbe	LBB1_49
LBB1_60:
	leaq	(%rdx,%rsi,2), %rsi
	movl	$2, %edi
	jmp	LBB1_22
LBB1_46:
	cmpq	$1, %rdi
	jne	LBB1_18
## BB#47:
	movq	$-2, %rdi
	jmp	LBB1_19
LBB1_37:
	decq	%rdi
	cmpq	$3, %rdi
	ja	LBB1_18
## BB#38:
	leaq	LJTI1_2(%rip), %rax
	movslq	(%rax,%rdi,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB1_39:
	movl	$2, %edi
	movq	%r8, %rsi
	jmp	LBB1_22
LBB1_8:
	decq	%rdi
	cmpq	$4, %rdi
	ja	LBB1_18
## BB#9:
	leaq	LJTI1_4(%rip), %rax
	movslq	(%rax,%rdi,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB1_10:
	movl	$1, %eax
	movq	40(%rsp), %rcx
	cmpq	$5, %rcx
	je	LBB1_54
## BB#11:
	cmpq	$4, %rcx
	jne	LBB1_14
## BB#12:
	movq	$-1, %rdi
	callq	_kross
	jmp	LBB1_54
LBB1_23:
	decq	%rdi
	cmpq	$4, %rdi
	ja	LBB1_18
## BB#24:
	leaq	LJTI1_3(%rip), %rax
	movslq	(%rax,%rdi,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB1_25:
	imulq	%rsi, %rdx
LBB1_26:
	movl	$2, %edi
	movq	%rdx, %rsi
	jmp	LBB1_22
LBB1_49:
	leaq	LJTI1_1(%rip), %rax
	movslq	(%rax,%rdi,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB1_50:
	addq	%rdx, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rsi, %rax
	andq	$-64, %rax
	movq	%rsi, %rcx
	subq	%rax, %rcx
	addq	$64, %rcx
	subq	%rax, %rsi
	cmovsq	%rcx, %rsi
	movl	$1, %eax
	cmpq	$3, %rsi
	je	LBB1_54
## BB#51:
	cmpq	$19, %rsi
	jmp	LBB1_30
LBB1_63:
	cmpq	$2, %rdi
	jne	LBB1_68
## BB#64:
	movl	$1, %eax
	cmpq	$10, 32(%rsp)
	jne	LBB1_14
	jmp	LBB1_54
LBB1_68:
	movq	32(%rsp), %rax
	leal	-8(%rax), %ecx
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shlq	%cl, %rdx
	addl	%edx, %esi
	andq	$15, %rsi
	cmpq	$10, %rax
	jne	LBB1_71
## BB#69:
	movl	$1, %eax
	cmpq	$9, %rsi
	je	LBB1_54
## BB#70:
	cmpq	$13, %rsi
	jmp	LBB1_30
LBB1_71:
	movl	$1, %eax
	cmpq	$9, %rsi
	je	LBB1_54
## BB#72:
	cmpq	$5, %rsi
	jmp	LBB1_30
LBB1_33:
	cmpq	$8, 32(%rsp)
	jne	LBB1_36
## BB#34:
	movl	$2, %edi
	jmp	LBB1_35
LBB1_40:
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$61, %rax
	addq	%rdx, %rax
	andq	$-8, %rax
	subq	%rax, %rdx
	movl	$1, %eax
	cmpq	$7, %rdx
	je	LBB1_54
## BB#41:
	movq	%r8, %rax
	sarq	$63, %rax
	shrq	$59, %rax
	addq	%r8, %rax
	andq	$-32, %rax
	subq	%rax, %r8
	cmpq	$11, %r8
	jmp	LBB1_30
LBB1_42:
	movl	$1, %eax
	cmpq	$6, 40(%rsp)
	jne	LBB1_14
	jmp	LBB1_54
LBB1_43:
	movq	40(%rsp), %rcx
	cmpq	$7, %rcx
	jge	LBB1_18
## BB#44:
	movq	$-1, %rax
	cmpq	$6, %rcx
	jne	LBB1_54
## BB#45:
	imulq	%rsi, %rdx
	movq	$-1, %rdi
	movq	%rdx, %rsi
	jmp	LBB1_22
LBB1_52:
	movq	$-1, %rdi
	callq	_kross
	leaq	(%rax,%rax), %rdi
	movq	64(%rsp), %rsi
	callq	_kross
	jmp	LBB1_54
LBB1_53:
	movq	$-1, %rdi
	callq	_kross
	movq	%rax, %rbx
	negq	%rbx
	movq	72(%rsp), %rsi
	movq	$-1, %rdi
	callq	_kross
	leaq	(%rax,%rax), %rdi
	negq	%rdi
	movq	64(%rsp), %rsi
	imulq	72(%rsp), %rsi
	callq	_kross
	imulq	%rbx, %rax
	jmp	LBB1_54
LBB1_55:
	cmpq	$11, 32(%rsp)
	jne	LBB1_57
## BB#56:
	movq	$-2, %rdi
LBB1_35:
	movq	%r8, %rsi
	callq	_kross
	jmp	LBB1_54
LBB1_13:
	movl	$1, %eax
	cmpq	$7, 32(%rsp)
	je	LBB1_54
LBB1_14:
	movq	$-1, %rax
	jmp	LBB1_54
LBB1_15:
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$61, %rax
	addq	%rdx, %rax
	andq	$-8, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$1, %eax
	cmpq	$5, %rcx
	je	LBB1_54
## BB#16:
	imulq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$61, %rax
	addq	%rdx, %rax
	andq	$-8, %rax
	subq	%rax, %rdx
	cmpq	$5, %rdx
	jmp	LBB1_30
LBB1_17:
	movq	40(%rsp), %rcx
	cmpq	$6, %rcx
	jl	LBB1_20
LBB1_18:
	movq	$-1, %rdi
LBB1_19:
	movq	%rdx, %rsi
	callq	_kross
	jmp	LBB1_54
LBB1_28:
	movl	32(%rsp), %ecx
	addl	$-5, %ecx
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shlq	%cl, %rdx
	subl	%edx, %esi
	andq	$15, %rsi
	movl	$1, %eax
	cmpq	$7, %rsi
	je	LBB1_54
## BB#29:
	cmpq	$11, %rsi
	jmp	LBB1_30
LBB1_31:
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$61, %rax
	addq	%rdx, %rax
	andq	$-8, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$1, %eax
	cmpq	$3, %rcx
	je	LBB1_54
## BB#32:
	leaq	(%rdx,%rsi,2), %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$61, %rcx
	addq	%rax, %rcx
	andq	$-8, %rcx
	subq	%rcx, %rax
	cmpq	$7, %rax
LBB1_30:
	movl	$1, %ecx
	movq	$-1, %rax
	cmoveq	%rcx, %rax
LBB1_54:
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
LBB1_36:
	movq	$-2, %rdi
	callq	_kross
	jmp	LBB1_54
LBB1_57:
	movq	$-2, %rdi
	jmp	LBB1_22
LBB1_20:
	movq	$-1, %rax
	cmpq	$5, %rcx
	jne	LBB1_54
	jmp	LBB1_21
	.cfi_endproc
	.align	2, 0x90
L1_0_set_75 = LBB1_75-LJTI1_0
L1_0_set_73 = LBB1_73-LJTI1_0
L1_0_set_67 = LBB1_67-LJTI1_0
L1_0_set_61 = LBB1_61-LJTI1_0
L1_0_set_58 = LBB1_58-LJTI1_0
L1_0_set_14 = LBB1_14-LJTI1_0
L1_0_set_48 = LBB1_48-LJTI1_0
L1_0_set_46 = LBB1_46-LJTI1_0
L1_0_set_37 = LBB1_37-LJTI1_0
L1_0_set_54 = LBB1_54-LJTI1_0
L1_0_set_8 = LBB1_8-LJTI1_0
L1_0_set_23 = LBB1_23-LJTI1_0
LJTI1_0:
	.long	L1_0_set_75
	.long	L1_0_set_73
	.long	L1_0_set_67
	.long	L1_0_set_61
	.long	L1_0_set_58
	.long	L1_0_set_14
	.long	L1_0_set_48
	.long	L1_0_set_46
	.long	L1_0_set_37
	.long	L1_0_set_14
	.long	L1_0_set_54
	.long	L1_0_set_8
	.long	L1_0_set_23
L1_1_set_50 = LBB1_50-LJTI1_1
L1_1_set_52 = LBB1_52-LJTI1_1
L1_1_set_53 = LBB1_53-LJTI1_1
L1_1_set_55 = LBB1_55-LJTI1_1
LJTI1_1:
	.long	L1_1_set_50
	.long	L1_1_set_52
	.long	L1_1_set_53
	.long	L1_1_set_55
L1_2_set_39 = LBB1_39-LJTI1_2
L1_2_set_40 = LBB1_40-LJTI1_2
L1_2_set_42 = LBB1_42-LJTI1_2
L1_2_set_43 = LBB1_43-LJTI1_2
LJTI1_2:
	.long	L1_2_set_39
	.long	L1_2_set_40
	.long	L1_2_set_42
	.long	L1_2_set_43
L1_3_set_25 = LBB1_25-LJTI1_3
L1_3_set_26 = LBB1_26-LJTI1_3
L1_3_set_28 = LBB1_28-LJTI1_3
L1_3_set_31 = LBB1_31-LJTI1_3
L1_3_set_33 = LBB1_33-LJTI1_3
LJTI1_3:
	.long	L1_3_set_25
	.long	L1_3_set_26
	.long	L1_3_set_28
	.long	L1_3_set_31
	.long	L1_3_set_33
L1_4_set_10 = LBB1_10-LJTI1_4
L1_4_set_13 = LBB1_13-LJTI1_4
L1_4_set_15 = LBB1_15-LJTI1_4
L1_4_set_17 = LBB1_17-LJTI1_4
L1_4_set_33 = LBB1_33-LJTI1_4
LJTI1_4:
	.long	L1_4_set_10
	.long	L1_4_set_13
	.long	L1_4_set_15
	.long	L1_4_set_17
	.long	L1_4_set_33

	.align	4, 0x90
_ellrootno_3:                           ## @ellrootno_3
	.cfi_startproc
## BB#0:
	pushq	%r15
Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r13
Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
Ltmp22:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
Ltmp23:
	.cfi_def_cfa_offset 128
Ltmp24:
	.cfi_offset %rbx, -48
Ltmp25:
	.cfi_offset %r12, -40
Ltmp26:
	.cfi_offset %r13, -32
Ltmp27:
	.cfi_offset %r14, -24
Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	32(%rsp), %rcx
	leaq	64(%rsp), %r8
	leaq	24(%rsp), %r9
	movl	$3, %esi
	movl	$81, %edx
	xorl	%eax, %eax
                                        ## kill: RDI<def> RBX<kill>
	callq	_val_init
	movl	$1, %eax
	cmpq	$0, 40(%rsp)
	je	LBB2_28
## BB#1:
	leaq	72(%rsp), %rdx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	_neron
	movq	%rax, %r15
	movq	56(%rsp), %rdi
	movl	$3, %esi
	callq	_kross
	movq	%rax, %r12
	movq	72(%rsp), %rbx
	cmpq	$4, %rbx
	jle	LBB2_3
## BB#2:
	movq	%r12, %rax
	jmp	LBB2_28
LBB2_3:
	movq	56(%rsp), %r14
	movabsq	$2049638230412172402, %rcx ## imm = 0x1C71C71C71C71C72
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %r13
	movq	64(%rsp), %rdi
	movl	$3, %esi
	callq	_kross
	movq	%rax, %rcx
	movl	$1, %eax
	addq	$4, %rbx
	cmpq	$8, %rbx
	ja	LBB2_27
## BB#4:
	movq	%r13, %rdx
	shrq	$63, %rdx
	addq	%r13, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	subq	%rdx, %r14
	leaq	LJTI2_0(%rip), %rdx
	movslq	(%rdx,%rbx,4), %rsi
	addq	%rdx, %rsi
	jmpq	*%rsi
LBB2_16:
	decq	%r15
	cmpq	$3, %r15
	jbe	LBB2_17
LBB2_27:
	movq	$-1, %rax
LBB2_28:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
LBB2_5:
	movl	$1, %eax
	leaq	-1(%r15), %rdx
	cmpq	$3, %rdx
	ja	LBB2_15
## BB#6:
	leaq	LJTI2_2(%rip), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rsi, %rdx
	jmpq	*%rdx
LBB2_7:
	movl	$1, %eax
	cmpq	$4, %r14
	je	LBB2_28
## BB#8:
	cmpq	$6, %r14
	movl	$1, %ecx
	movq	$-1, %rax
	cmovgq	%rcx, %rax
	jmp	LBB2_28
LBB2_10:
	cmpq	$3, %r15
	je	LBB2_24
## BB#11:
	cmpq	$2, %r15
	jne	LBB2_12
## BB#14:
	negq	%rcx
	movq	%rcx, %rax
	jmp	LBB2_28
LBB2_17:
	leaq	LJTI2_1(%rip), %rax
	movslq	(%rax,%r15,4), %rcx
	addq	%rax, %rcx
	movq	%r12, %rax
	jmpq	*%rcx
LBB2_18:
	cmpq	$4, 32(%rsp)
	jne	LBB2_22
## BB#19:
	movl	$1, %eax
	cmpq	$4, %r14
	je	LBB2_28
## BB#20:
	cmpq	$8, %r14
	jmp	LBB2_21
LBB2_24:
	negq	%r12
	movq	%r12, %rax
	jmp	LBB2_28
LBB2_12:
	cmpq	$1, %r15
	jne	LBB2_15
## BB#13:
	movq	48(%rsp), %rdi
	movl	$3, %esi
	callq	_kross
	imulq	%r12, %rax
	jmp	LBB2_28
LBB2_15:
	cmpq	$2, %r15
	movl	$1, %eax
	cmoveq	%rax, %r12
	movq	%r12, %rax
	jmp	LBB2_28
LBB2_9:
	negq	%r12
	imulq	%r12, %rcx
	movq	%rcx, %rax
	jmp	LBB2_28
LBB2_25:
	movl	$1, %eax
	cmpq	$2, %r14
	je	LBB2_28
## BB#26:
	cmpq	$7, %r14
	jmp	LBB2_21
LBB2_22:
	movl	$1, %eax
	cmpq	$1, %r14
	je	LBB2_28
## BB#23:
	cmpq	$2, %r14
LBB2_21:
	movl	$1, %ecx
	movq	$-1, %rax
	cmoveq	%rcx, %rax
	jmp	LBB2_28
	.cfi_endproc
	.align	2, 0x90
L2_0_set_16 = LBB2_16-LJTI2_0
L2_0_set_28 = LBB2_28-LJTI2_0
L2_0_set_15 = LBB2_15-LJTI2_0
L2_0_set_27 = LBB2_27-LJTI2_0
L2_0_set_5 = LBB2_5-LJTI2_0
L2_0_set_10 = LBB2_10-LJTI2_0
LJTI2_0:
	.long	L2_0_set_16
	.long	L2_0_set_28
	.long	L2_0_set_15
	.long	L2_0_set_27
	.long	L2_0_set_27
	.long	L2_0_set_28
	.long	L2_0_set_5
	.long	L2_0_set_28
	.long	L2_0_set_10
L2_1_set_18 = LBB2_18-LJTI2_1
L2_1_set_24 = LBB2_24-LJTI2_1
L2_1_set_25 = LBB2_25-LJTI2_1
L2_1_set_28 = LBB2_28-LJTI2_1
LJTI2_1:
	.long	L2_1_set_18
	.long	L2_1_set_24
	.long	L2_1_set_25
	.long	L2_1_set_28
L2_2_set_7 = LBB2_7-LJTI2_2
L2_2_set_9 = LBB2_9-LJTI2_2
L2_2_set_28 = LBB2_28-LJTI2_2
L2_2_set_24 = LBB2_24-LJTI2_2
LJTI2_2:
	.long	L2_2_set_7
	.long	L2_2_set_9
	.long	L2_2_set_28
	.long	L2_2_set_24

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI3_0:
	.quad	-1                      ## 0xffffffffffffffff
	.quad	-2                      ## 0xfffffffffffffffe
	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
_ellrootno_p:                           ## @ellrootno_p
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp34:
	.cfi_def_cfa_offset 56
	pushq	%rax
Ltmp35:
	.cfi_def_cfa_offset 64
Ltmp36:
	.cfi_offset %rbx, -56
Ltmp37:
	.cfi_offset %r12, -48
Ltmp38:
	.cfi_offset %r13, -40
Ltmp39:
	.cfi_offset %r14, -32
Ltmp40:
	.cfi_offset %r15, -24
Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$1, %eax
	testq	%rdx, %rdx
	je	LBB3_18
## BB#1:
	cmpq	$1, %rdx
	jne	LBB3_19
## BB#2:
	movq	88(%rbx), %rbx
	movq	(%rbx), %r10
	movq	%r10, %r13
	andq	$16777215, %r13         ## imm = 0xFFFFFF
	movq	_avma@GOTPCREL(%rip), %r15
	movq	(%r15), %r12
	leaq	(,%r13,8), %rax
	movq	%r12, %r14
	subq	%rax, %r14
	movq	_bot@GOTPCREL(%rip), %rax
	movq	%r12, %rcx
	subq	(%rax), %rcx
	shrq	$3, %rcx
	cmpq	%r13, %rcx
	jae	LBB3_4
## BB#3:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r14, (%rsp)            ## 8-byte Spill
	movq	%r10, %r14
	callq	_pari_err
	movq	%r14, %r10
	movq	(%rsp), %r14            ## 8-byte Reload
LBB3_4:                                 ## %cgetg_copy.exit.i.i.i
	movq	%r14, (%r15)
	movq	$-16777217, %rax        ## imm = 0xFFFFFFFFFEFFFFFF
	andq	(%rbx), %rax
	movq	%rax, (%r14)
	cmpq	$2, %r13
	jb	LBB3_15
## BB#5:                                ## %.lr.ph.i.i.i.preheader
	movq	%r10, %rcx
	andq	$16777215, %rcx         ## imm = 0xFFFFFF
	movq	%rcx, %rdi
	negq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rsi
	movq	$-2, %rax
	cmovgq	%rdi, %rax
	addq	%rcx, %rax
	cmpq	$-1, %rax
	movq	%r13, %rdx
	je	LBB3_13
## BB#6:                                ## %overflow.checked
	incq	%rax
	cmpq	$-3, %rdi
	cmovgq	%rdi, %rsi
	xorl	%r9d, %r9d
	movq	%rax, %r8
	andq	$-4, %r8
	movq	%r13, %rdx
	je	LBB3_12
## BB#7:                                ## %vector.memcheck
	movq	%rsi, %rdx
	notq	%rdx
	leaq	(%rbx,%rdx,8), %r11
	leaq	-8(%r12), %rdx
	xorl	%r9d, %r9d
	cmpq	%r11, %rdx
	ja	LBB3_9
## BB#8:                                ## %vector.memcheck
	leaq	-8(%rbx,%rcx,8), %rdx
	addq	%rcx, %rsi
	notq	%rsi
	leaq	(%r12,%rsi,8), %rsi
	cmpq	%rsi, %rdx
	movq	%r13, %rdx
	jbe	LBB3_12
LBB3_9:                                 ## %vector.body.preheader
	movq	%r13, %rdx
	subq	%r8, %rdx
	cmpq	$-3, %rdi
	movq	$-2, %rsi
	cmovgq	%rdi, %rsi
	leaq	1(%rsi,%rcx), %rsi
	andq	$-4, %rsi
	movdqa	LCPI3_0(%rip), %xmm0    ## xmm0 = [18446744073709551615,18446744073709551614]
	.align	4, 0x90
LBB3_10:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       ## xmm1 = xmm1[0,1,0,1]
	paddq	%xmm0, %xmm1
	movd	%xmm1, %rdi
	movups	-8(%rbx,%rdi,8), %xmm1
	movups	-24(%rbx,%rdi,8), %xmm2
	subq	%r13, %rdi
	movups	%xmm1, -8(%r12,%rdi,8)
	movups	%xmm2, -24(%r12,%rdi,8)
	addq	$-4, %rcx
	addq	$-4, %rsi
	jne	LBB3_10
## BB#11:
	movq	%r8, %r9
LBB3_12:                                ## %middle.block
	cmpq	%r9, %rax
	je	LBB3_15
LBB3_13:                                ## %.lr.ph.i.i.i.preheader21
	notl	%r10d
	movabsq	$2305843009196916736, %rax ## imm = 0x1FFFFFFFFF000000
	orq	%r10, %rax
	leaq	(%r12,%rax,8), %rax
	.align	4, 0x90
LBB3_14:                                ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	leaq	-1(%rdx), %rdx
	cmpq	$1, %rdx
	jg	LBB3_14
LBB3_15:                                ## %leafcopy.exit.i.i
	movl	$1, %eax
	subq	%r13, %rax
	movq	(%r12,%rax,8), %rcx
	cmpq	$1073741824, %rcx       ## imm = 0x40000000
	jb	LBB3_17
## BB#16:
	movl	$2147483648, %edx       ## imm = 0x80000000
	xorq	%rdx, %rcx
	movq	%rcx, (%r12,%rax,8)
LBB3_17:                                ## %negi.exit
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	_kronecker
	negq	%rax
LBB3_18:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_19:
	movq	104(%rbx), %r15
	movq	%r15, %rdi
	callq	_gequal0
	testl	%eax, %eax
	jne	LBB3_23
## BB#20:
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	_Q_pval
	testq	%rax, %rax
	js	LBB3_21
LBB3_23:
	movq	96(%rbx), %rdi
	movq	%rbp, %rsi
	callq	_Z_pval
	movl	$12, %edi
	movq	%rax, %rsi
	callq	_ugcd
	movq	%rax, %rcx
	movl	$12, %eax
	xorl	%edx, %edx
	divq	%rcx
	movl	$2, %edi
	cmpq	$4, %rax
	je	LBB3_25
## BB#24:
	andq	$1, %rax
	leaq	1(%rax,%rax), %rdi
LBB3_25:
	negq	%rdi
LBB3_22:
	movq	%rbp, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_krosi                  ## TAILCALL
LBB3_21:
	movq	$-1, %rdi
	jmp	LBB3_22
	.cfi_endproc

	.globl	_ellrootno
	.align	4, 0x90
_ellrootno:                             ## @ellrootno
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp47:
	.cfi_def_cfa_offset 56
	pushq	%rax
Ltmp48:
	.cfi_def_cfa_offset 64
Ltmp49:
	.cfi_offset %rbx, -56
Ltmp50:
	.cfi_offset %r12, -48
Ltmp51:
	.cfi_offset %r13, -40
Ltmp52:
	.cfi_offset %r14, -32
Ltmp53:
	.cfi_offset %r15, -24
Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	_avma@GOTPCREL(%rip), %r13
	movq	(%r13), %rbp
                                        ## kill: RDI<def> RBX<kill>
	callq	_checksmallell
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ell_to_small_red
	movq	%rax, %r14
	testq	%r12, %r12
	je	LBB4_2
## BB#1:
	movq	%r12, %rdi
	callq	_gequal1
	testl	%eax, %eax
	je	LBB4_3
LBB4_2:
	movq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	_ellrootno_global
LBB4_17:                                ## %itou.exit.thread
	movq	%rax, %r15
LBB4_18:                                ## %itou.exit.thread
	movq	%rbp, (%r13)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_3:
	movq	$-33554432, %rax        ## imm = 0xFFFFFFFFFE000000
	andq	(%r12), %rax
	cmpq	$33554432, %rax         ## imm = 0x2000000
	jne	LBB4_5
## BB#4:
	movq	8(%r12), %rax
	testq	%rax, %rax
	jns	LBB4_6
LBB4_5:                                 ## %._crit_edge
	leaq	L_.str(%rip), %rsi
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
	movq	8(%r12), %rax
LBB4_6:
	andq	$16777215, %rax         ## imm = 0xFFFFFF
	cmpq	$2, %rax
	je	LBB4_10
## BB#7:
	cmpq	$3, %rax
	ja	LBB4_9
## BB#8:                                ## %cmpiu.exit
	cmpq	$4, 16(%r12)
	jb	LBB4_10
LBB4_9:                                 ## %.critedge1
	movq	(%rsp), %rdi
	movq	%r12, %rsi
	callq	_Z_pval
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_ellrootno_p
	jmp	LBB4_17
LBB4_10:                                ## %.critedge
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andq	8(%r12), %rax
	movq	$-1, %r15
	cmpq	$2, %rax
	je	LBB4_18
## BB#11:                               ## %.critedge
	cmpq	$3, %rax
	jne	LBB4_12
## BB#13:                               ## %itou.exit
	movq	16(%r12), %rax
	cmpq	$3, %rax
	jne	LBB4_14
## BB#16:
	movq	%r14, %rdi
	callq	_ellrootno_3
	jmp	LBB4_17
LBB4_12:
	leaq	L_.str2(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
	jmp	LBB4_18
LBB4_14:                                ## %itou.exit
	cmpq	$2, %rax
	jne	LBB4_18
## BB#15:
	movq	%r14, %rdi
	callq	_ellrootno_2
	jmp	LBB4_17
	.cfi_endproc

	.align	4, 0x90
_neron:                                 ## @neron
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp60:
	.cfi_def_cfa_offset 56
	pushq	%rax
Ltmp61:
	.cfi_def_cfa_offset 64
Ltmp62:
	.cfi_offset %rbx, -56
Ltmp63:
	.cfi_offset %r12, -48
Ltmp64:
	.cfi_offset %r13, -40
Ltmp65:
	.cfi_offset %r14, -32
Ltmp66:
	.cfi_offset %r15, -24
Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	_avma@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, (%rsp)            ## 8-byte Spill
	movq	16, %rcx
	movq	8(%rcx), %rax
	xorl	%r15d, %r15d
	movq	%rax, %rbp
	sarq	$30, %rbp
	je	LBB5_5
## BB#1:
	movq	16(%rcx), %r12
	andq	$16777212, %rax         ## imm = 0xFFFFFC
	cmpq	$3, %rax
	ja	LBB5_3
## BB#2:
	testq	%r12, %r12
	jns	LBB5_4
LBB5_3:
	leaq	L_.str1(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB5_4:
	movq	%r12, %r15
	negq	%r15
	testq	%rbp, %rbp
	cmovgq	%r12, %r15
LBB5_5:                                 ## %itos.exit
	movq	%r15, (%r14)
	movq	80(%rbx), %rbp
	movq	88(%rbx), %r14
	movq	96(%rbx), %r12
	movq	%rbp, %rdi
	callq	_gequal0
	movl	$12, %ebx
	testl	%eax, %eax
	jne	LBB5_7
## BB#6:
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	_Z_lval
	movq	%rax, %rbx
LBB5_7:
	movq	%r14, %rdi
	callq	_gequal0
	movl	$12, %ebp
	testl	%eax, %eax
	jne	LBB5_9
## BB#8:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_Z_lval
	movq	%rax, %rbp
LBB5_9:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_Z_lval
	movq	%rax, %rcx
	movq	_avma@GOTPCREL(%rip), %rax
	movq	(%rsp), %rdx            ## 8-byte Reload
	movq	%rdx, (%rax)
	cmpq	$2, %r13
	jne	LBB5_40
## BB#10:
	movl	$1, %eax
	cmpq	$4, %r15
	jg	LBB5_54
## BB#11:
	addq	$7, %r15
	cmpq	$11, %r15
	ja	LBB5_35
## BB#12:
	leaq	LJTI5_0(%rip), %rax
	movslq	(%rax,%r15,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB5_39:
	movl	$2, %eax
	cmpq	$12, %rcx
	jne	LBB5_35
	jmp	LBB5_54
LBB5_40:
	movq	%r15, %rdx
	negq	%rdx
	cmovlq	%r15, %rdx
	movl	$1, %eax
	cmpq	$4, %rdx
	jg	LBB5_54
## BB#41:
	addq	$4, %r15
	cmpq	$7, %r15
	ja	LBB5_51
## BB#42:
	movl	$65, %eax
	btq	%r15, %rax
	jb	LBB5_47
## BB#43:
	movl	$130, %eax
	btq	%r15, %rax
	jae	LBB5_44
## BB#46:
	addq	%rbp, %rbp
	addq	$3, %rcx
	cmpq	%rcx, %rbp
	jmp	LBB5_14
LBB5_47:
	movabsq	$3074457345618258603, %rdx ## imm = 0x2AAAAAAAAAAAAAAB
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rax
	subq	%rax, %rcx
	movl	$3, %eax
	cmpq	$4, %rcx
	je	LBB5_54
## BB#48:
	cmpq	$5, %rcx
	jne	LBB5_50
## BB#49:
	movl	$4, %eax
	jmp	LBB5_54
LBB5_44:
	movl	$40, %eax
	btq	%r15, %rax
	jae	LBB5_51
## BB#45:
	andq	$1, %rbx
	incq	%rbx
	movq	%rbx, %rax
	jmp	LBB5_54
LBB5_51:
	movabsq	$3074457345618258603, %rdx ## imm = 0x2AAAAAAAAAAAAAAB
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmpq	$1, %rdx
	sete	%dl
	cmpq	%rax, %rcx
	movzbl	%dl, %eax
	leaq	1(%rax,%rax), %rcx
	movl	$2, %eax
	cmovneq	%rcx, %rax
	jmp	LBB5_54
LBB5_36:
	movl	$2, %eax
	cmpq	$12, %rcx
	je	LBB5_54
## BB#37:
	cmpq	$13, %rcx
	jne	LBB5_35
## BB#38:
	movl	$3, %eax
	jmp	LBB5_54
LBB5_34:
	movl	$2, %eax
	cmpq	$7, %rbp
	je	LBB5_54
LBB5_35:
	cmpq	$6, %rbx
	sete	%al
	jmp	LBB5_15
LBB5_33:
	cmpq	$7, %rbp
	sete	%al
	jmp	LBB5_15
LBB5_52:
	movq	%rcx, %rdx
	addq	$-12, %rdx
	movl	$1, %eax
	cmpq	$4, %rdx
	jae	LBB5_54
## BB#53:                               ## %switch.lookup
	leaq	l_switch.table(%rip), %rax
	movq	-96(%rax,%rcx,8), %rax
	jmp	LBB5_54
LBB5_32:
	cmpq	$14, %rcx
	sete	%al
	movzbl	%al, %eax
	leaq	1(%rax,%rax), %rdx
	cmpq	$12, %rcx
	movl	$2, %eax
	cmovneq	%rdx, %rax
	jmp	LBB5_54
LBB5_28:
	movl	$2, %eax
	cmpq	$9, %rcx
	je	LBB5_54
## BB#29:
	cmpq	$10, %rcx
	jne	LBB5_31
## BB#30:
	movl	$4, %eax
	jmp	LBB5_54
LBB5_13:
	testq	%rbp, %rbp
	jmp	LBB5_14
LBB5_16:
	movl	$1, %eax
	cmpq	$4, %rcx
	je	LBB5_54
## BB#17:
	cmpq	$7, %rcx
	jne	LBB5_19
## BB#18:
	movl	$3, %eax
	jmp	LBB5_54
LBB5_20:
	movl	$3, %eax
	cmpq	$6, %rcx
	je	LBB5_54
## BB#21:
	cmpq	$9, %rcx
	jne	LBB5_22
## BB#24:
	movl	$5, %eax
	jmp	LBB5_54
LBB5_27:
	cmpq	$4, %rbx
LBB5_14:
	setg	%al
LBB5_15:
	movzbl	%al, %eax
	incq	%rax
LBB5_54:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_50:
	movabsq	$6148914691236517206, %rcx ## imm = 0x5555555555555556
	movq	%rbp, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	leaq	(%rax,%rax,2), %rax
	subq	%rax, %rbp
	cmpq	$1, %rbp
	sete	%al
	jmp	LBB5_15
LBB5_22:
	cmpq	$8, %rcx
	jne	LBB5_25
## BB#23:
	movl	$4, %eax
	jmp	LBB5_54
LBB5_31:
	cmpq	$4, %rbx
	setg	%al
	movzbl	%al, %eax
	leaq	1(%rax,%rax), %rax
	jmp	LBB5_54
LBB5_19:
	cmpq	$4, %rbx
	setne	%al
	movzbl	%al, %eax
	leaq	2(%rax,%rax), %rax
	jmp	LBB5_54
LBB5_25:
	cmpq	$5, %rbx
	sete	%al
	jmp	LBB5_15
	.cfi_endproc
	.align	2, 0x90
L5_0_set_39 = LBB5_39-LJTI5_0
L5_0_set_36 = LBB5_36-LJTI5_0
L5_0_set_34 = LBB5_34-LJTI5_0
L5_0_set_33 = LBB5_33-LJTI5_0
L5_0_set_52 = LBB5_52-LJTI5_0
L5_0_set_32 = LBB5_32-LJTI5_0
L5_0_set_28 = LBB5_28-LJTI5_0
L5_0_set_35 = LBB5_35-LJTI5_0
L5_0_set_13 = LBB5_13-LJTI5_0
L5_0_set_16 = LBB5_16-LJTI5_0
L5_0_set_20 = LBB5_20-LJTI5_0
L5_0_set_27 = LBB5_27-LJTI5_0
LJTI5_0:
	.long	L5_0_set_39
	.long	L5_0_set_36
	.long	L5_0_set_34
	.long	L5_0_set_33
	.long	L5_0_set_52
	.long	L5_0_set_32
	.long	L5_0_set_28
	.long	L5_0_set_35
	.long	L5_0_set_13
	.long	L5_0_set_16
	.long	L5_0_set_20
	.long	L5_0_set_27

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"ellrootno"

L_.str1:                                ## @.str1
	.asciz	"t_INT-->long assignment"

L_.str2:                                ## @.str2
	.asciz	"t_INT-->ulong assignment"

	.section	__TEXT,__const
	.align	4                       ## @switch.table
l_switch.table:
	.quad	2                       ## 0x2
	.quad	1                       ## 0x1
	.quad	3                       ## 0x3
	.quad	4                       ## 0x4


.subsections_via_symbols
