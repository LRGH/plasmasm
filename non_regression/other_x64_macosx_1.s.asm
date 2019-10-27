	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_toto
_toto:
	pushq     %rbp
Ltmp0:
Ltmp1:
	movq      %rsp, %rbp
Ltmp2:
	movq      %rdi, -8(%rbp)
	movq      -8(%rbp), %rdi
	movl      (%rdi), %eax
	addl      $1, %eax
	movl      %eax, (%rdi)
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
	movq      %rdi, -8(%rbp)
	movq      -8(%rbp), %rdi
	movl      (%rdi), %eax
	addl      $-1, %eax
	movl      %eax, (%rdi)
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
	subq      $64, %rsp
	leaq      -52(%rbp), %rax
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	movq      %rcx, -8(%rbp)
	movl      $0, -36(%rbp)
	movl      %edi, -40(%rbp)
	movq      %rsi, -48(%rbp)
	movl      $0, -52(%rbp)
	movq      l_main.t(%rip), %rcx
	movq      %rcx, -32(%rbp)
	movq      l_main.t+8(%rip), %rcx
	movq      %rcx, -24(%rbp)
	movl      -40(%rbp), %edi
	subl      $1, %edi
	movslq    %edi, %rcx
	movq      %rax, %rdi
	call      *-32(%rbp,%rcx,8)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movl      -52(%rbp), %edx
	movq      (%rax), %rax
	cmpq      -8(%rbp), %rax
	movl      %edx, -56(%rbp)
	jne       LBB2_2
	movl      -56(%rbp), %eax
	addq      $64, %rsp
	popq      %rbp
	ret       
LBB2_2:
	call      ___stack_chk_fail
# ----------------------
	.section       __DATA,__const
	.align 4
l_main.t:
	.quad	_toto
	.quad	_tata
# ----------------------

.subsections_via_symbols
