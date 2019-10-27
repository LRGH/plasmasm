	.file	"a03.c"
	.text
	.globl	toto
	.type	toto, @function
toto:
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
	.size	toto, .-toto
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
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
	.size	tata, .-tata
# ----------------------
	.globl	main
	.type	main, @function
main:
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
.L00000074:
	movl      -20(%rbp), %eax
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
