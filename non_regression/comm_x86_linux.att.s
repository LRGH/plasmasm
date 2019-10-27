	.file	"a10.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$64, %esp
	movsbl	63(%esp), %edx
	movzwl	s.1229, %eax
	cwtl
	addl	%edx, %eax
	addl	52(%esp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	32(%esp), %eax
	adcl	36(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	fildq	8(%esp)
	fadds	56(%esp)
	faddl	40(%esp)
	fldt	16(%esp)
	faddp	%st, %st(1)
	fnstcw	6(%esp)
	movzwl	6(%esp), %eax
	movb	$12, %ah
	movw	%ax, 4(%esp)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.local	s.1229
	.comm	s.1229,2,2
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
