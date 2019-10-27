	.file	"a03bis.c"
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
	.section       .data.rel,"aw",@progbits
	.align 16
	.globl	t
	.type	t, @object
t:
	.quad	toto
	.quad	tata
	.size	t, 16
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
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
	movl      -4(%rbp), %eax
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
