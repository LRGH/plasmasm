	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_test
	.p2align	4, 0x90
_test:                                  ## @test
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$180, %rdx
	movq	%rcx, -24(%rbp)         ## 8-byte Spill
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	ja	LBB0_18
## BB#23:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	LJTI0_0(%rip), %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_2:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_19
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -40(%rbp)         ## 8-byte Spill
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	ja	LBB0_8
## BB#25:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	LJTI0_2(%rip), %rax
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_19
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	ja	LBB0_16
## BB#24:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	LJTI0_1(%rip), %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_18:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -12(%rbp)
LBB0_19:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -12(%rbp)
	je	LBB0_21
## BB#20:
	jmp	LBB0_22
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_22:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L0_0_set_2 = LBB0_2-LJTI0_0
L0_0_set_18 = LBB0_18-LJTI0_0
L0_0_set_10 = LBB0_10-LJTI0_0
L0_0_set_3 = LBB0_3-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_10
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_3
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_2
L0_1_set_11 = LBB0_11-LJTI0_1
L0_1_set_12 = LBB0_12-LJTI0_1
L0_1_set_13 = LBB0_13-LJTI0_1
L0_1_set_14 = LBB0_14-LJTI0_1
L0_1_set_15 = LBB0_15-LJTI0_1
LJTI0_1:
	.long	L0_1_set_11
	.long	L0_1_set_12
	.long	L0_1_set_13
	.long	L0_1_set_14
	.long	L0_1_set_15
L0_2_set_7 = LBB0_7-LJTI0_2
L0_2_set_6 = LBB0_6-LJTI0_2
L0_2_set_5 = LBB0_5-LJTI0_2
L0_2_set_4 = LBB0_4-LJTI0_2
LJTI0_2:
	.long	L0_2_set_7
	.long	L0_2_set_6
	.long	L0_2_set_5
	.long	L0_2_set_4
	.end_data_region

	.globl	_empty
	.p2align	4, 0x90
_empty:                                 ## @empty
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
