	.file	"a03.c"
	.text
	.globl	toto
	.type	toto, @function
toto:
	.cfi_startproc
	addl      $1, (%rdi)
	ret       
	.cfi_endproc
	.size	toto, .-toto
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	.cfi_startproc
	subl      $1, (%rdi)
	ret       
	.cfi_endproc
	.size	tata, .-tata
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	subq      $40, %rsp
	movl      $0, 12(%rsp)
	movq      $toto, 16(%rsp)
	movq      $tata, 24(%rsp)
	leal      -1(%rdi), %eax
	cltq      
	leaq      12(%rsp), %rdi
	call      *16(%rsp,%rax,8)
	movl      12(%rsp), %eax
	addq      $40, %rsp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
