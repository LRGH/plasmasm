	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	__Z4xaddPU7_Atomici
	.p2align	4, 0x90
__Z4xaddPU7_Atomici:                    ## @_Z4xaddPU7_Atomici
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	movl	$-1, %eax
	lock		xaddl	%eax, (%ecx)
	decl	%eax
	popl	%ebp
	retl

	.globl	__Z4xchgNSt3__16atomicIiEEi
	.p2align	4, 0x90
__Z4xchgNSt3__16atomicIiEEi:            ## @_Z4xchgNSt3__16atomicIiEEi
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	xchgl	%ecx, (%eax)
	popl	%ebp
	retl

	.globl	__Z3rorjj
	.p2align	4, 0x90
__Z3rorjj:                              ## @_Z3rorjj
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movb	12(%ebp), %cl
	movl	8(%ebp), %eax
	rorl	%cl, %eax
	popl	%ebp
	retl

	.globl	__Z4mulbaa
	.p2align	4, 0x90
__Z4mulbaa:                             ## @_Z4mulbaa
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movb	12(%ebp), %al
	mulb	8(%ebp)
	movsbl	%al, %eax
	popl	%ebp
	retl

	.globl	__Z7do_fabsd
	.p2align	4, 0x90
__Z7do_fabsd:                           ## @_Z7do_fabsd
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	fldl	8(%ebp)
	fabs
	popl	%ebp
	retl


.subsections_via_symbols
