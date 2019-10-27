	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_toto
_toto:
	pushq     %rbp
Ltmp0:
Ltmp1:
	movq      %rsp, %rbp
Ltmp2:
	incl      (%rdi)
	popq      %rbp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_tata
_tata:
	pushq     %rbp
Ltmp3:
Ltmp4:
	movq      %rsp, %rbp
Ltmp5:
	decl      (%rdi)
	popq      %rbp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp6:
Ltmp7:
	movq      %rsp, %rbp
Ltmp8:
	subq      $16, %rsp
	movl      $0, -4(%rbp)
	decl      %edi
	movslq    %edi, %rax
	leaq      l_main.t(%rip), %rcx
	leaq      -4(%rbp), %rdi
	call      *(%rcx,%rax,8)
	movl      -4(%rbp), %eax
	addq      $16, %rsp
	popq      %rbp
	ret       
# ----------------------
	.section       __DATA,__const
	.align 4
l_main.t:
	.quad	_toto
	.quad	_tata
# ----------------------

.subsections_via_symbols
