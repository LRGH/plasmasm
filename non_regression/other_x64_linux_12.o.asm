	.file	"a03bis.c"
	.section       .data.rel,"wa",@progbits
	.globl	t
	.type	t, @object
t:
	.quad	toto
	.quad	tata
	.size	t, 16
# ----------------------
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
	subq      $32, %rsp
	movl      %edi, -20(%rbp)
	movq      %rsi, -32(%rbp)
	movl      $0, -4(%rbp)
	movl      -20(%rbp), %eax
	leal      -1(%rax), %edx
	movq      t@GOTPCREL(%rip), %rax
	movslq    %edx, %rdx
	movq      (%rax,%rdx,8), %rax
	leaq      -4(%rbp), %rdx
	movq      %rdx, %rdi
	call      *%rax
.L00000065:
	movl      -4(%rbp), %eax
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
