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

	.globl	__Z4mulbaa
	.p2align	4, 0x90
__Z4mulbaa:                             ## @_Z4mulbaa
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	movl	%esi, %eax
	mulb	%dil
	movsbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI4_0:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z7do_fabsd
	.p2align	4, 0x90
__Z7do_fabsd:                           ## @_Z7do_fabsd
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	andps	LCPI4_0(%rip), %xmm0
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
