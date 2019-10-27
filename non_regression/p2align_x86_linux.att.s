	.file	"a02.c"
	.text
	.p2align 4,,15
	.globl	toto
	.type	toto, @function
toto:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	addl	$1, (%eax)
	ret
	.cfi_endproc
.LFE0:
	.size	toto, .-toto
	.p2align 4,,15
	.globl	tata
	.type	tata, @function
tata:
.LFB1:
	.cfi_startproc
	movl	4(%esp), %eax
	subl	$1, (%eax)
	ret
	.cfi_endproc
.LFE1:
	.size	tata, .-tata
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	movl	$0, 16(%esp)
	call	toto
	movl	16(%esp), %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
