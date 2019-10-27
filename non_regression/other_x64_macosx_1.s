	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_toto
	.align	4, 0x90
_toto:                                  ## @toto
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	addl	$1, %eax
	movl	%eax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_tata
	.align	4, 0x90
_tata:                                  ## @tata
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	addl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	movl	%eax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-52(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	%edi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	l_main.t(%rip), %rcx
	movq	%rcx, -32(%rbp)
	movq	l_main.t+8(%rip), %rcx
	movq	%rcx, -24(%rbp)
	movl	-40(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rcx
	movq	%rax, %rdi
	callq	*-32(%rbp,%rcx,8)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movl	-52(%rbp), %edx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%edx, -56(%rbp)         ## 4-byte Spill
	jne	LBB2_2
## BB#1:                                ## %SP_return
	movl	-56(%rbp), %eax         ## 4-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
LBB2_2:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__DATA,__const
	.align	4                       ## @main.t
l_main.t:
	.quad	_toto
	.quad	_tata


.subsections_via_symbols
