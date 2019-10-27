	.file	"a10.c"
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	andl      $-8, %esp
	subl      $64, %esp
	movsbl    63(%esp), %edx
	movzwl    s.1229, %eax
	cwtl      
	addl      %edx, %eax
	addl      52(%esp), %eax
	movl      %eax, %edx
	sarl      $31, %edx
	addl      32(%esp), %eax
	adcl      36(%esp), %edx
	movl      %eax, 8(%esp)
	movl      %edx, 12(%esp)
	fildq     8(%esp)
	fadds     56(%esp)
	faddl     40(%esp)
	fldt      16(%esp)
	faddp     %st, %st(1)
	fnstcw    6(%esp)
	movzwl    6(%esp), %eax
	movb      $12, %ah
	movw      %ax, 4(%esp)
	fldcw     4(%esp)
	fistpl    (%esp)
	fldcw     6(%esp)
	movl      (%esp), %eax
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.local	s.1229
	.comm	s.1229,2,2
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
