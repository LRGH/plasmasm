	.file	"a03.c"
	.text
	.globl	toto
	.type	toto, @function
toto:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	movq      %rdi, -8(%rbp)
	movq      -8(%rbp), %rax
	movl      (%rax), %eax
	leal      1(%rax), %edx
	movq      -8(%rbp), %rax
	movl      %edx, (%rax)
	popq      %rbp
	ret       
	.cfi_endproc
	.size	toto, .-toto
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	movq      %rdi, -8(%rbp)
	movq      -8(%rbp), %rax
	movl      (%rax), %eax
	leal      -1(%rax), %edx
	movq      -8(%rbp), %rax
	movl      %edx, (%rax)
	popq      %rbp
	ret       
	.cfi_endproc
	.size	tata, .-tata
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	subq      $48, %rsp
	movl      %edi, -36(%rbp)
	movq      %rsi, -48(%rbp)
	movl      $0, -20(%rbp)
	movq      toto@GOTPCREL(%rip), %rax
	movq      %rax, -16(%rbp)
	movq      tata@GOTPCREL(%rip), %rax
	movq      %rax, -8(%rbp)
	movl      -36(%rbp), %eax
	subl      $1, %eax
	cltq      
	movq      -16(%rbp,%rax,8), %rax
	leaq      -20(%rbp), %rdx
	movq      %rdx, %rdi
	call      *%rax
	movl      -20(%rbp), %eax
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
