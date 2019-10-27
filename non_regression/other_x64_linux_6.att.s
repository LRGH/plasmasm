	.file	"a03.c"
	.text
	.globl	toto
	.type	toto, @function
toto:
.LFB0:
	.cfi_startproc
	addl	$1, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	toto, .-toto
	.globl	tata
	.type	tata, @function
tata:
.LFB1:
	.cfi_startproc
	subl	$1, (%rdi)
	ret
	.cfi_endproc
.LFE1:
	.size	tata, .-tata
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, 12(%rsp)
	movq	$toto, 16(%rsp)
	movq	$tata, 24(%rsp)
	leal	-1(%rdi), %eax
	cltq
	leaq	12(%rsp), %rdi
	call	*16(%rsp,%rax,8)
	movl	12(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
