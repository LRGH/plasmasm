	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	__Z4xaddPU7_Atomici
	.p2align	4, 0x90
__Z4xaddPU7_Atomici:                    ## @_Z4xaddPU7_Atomici
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
	movl	$-1, %eax
	lock		xaddl	%eax, (%rdi)
	decl	%eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z4xchgNSt3__16atomicIiEEi
	.p2align	4, 0x90
__Z4xchgNSt3__16atomicIiEEi:            ## @_Z4xchgNSt3__16atomicIiEEi
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
	xchgl	%esi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z3rorjj
	.p2align	4, 0x90
__Z3rorjj:                              ## @_Z3rorjj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	movl	%esi, %ecx
	rorl	%cl, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
