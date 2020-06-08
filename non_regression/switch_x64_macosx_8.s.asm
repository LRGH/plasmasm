	.macosx_version_min 10, 13
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_test
_test:
	pushq     %rbp
Lcfi0:
Lcfi1:
	movq      %rsp, %rbp
Lcfi2:
	movq      %rdi, -8(%rbp)
LBB0_1:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	movq      %rcx, %rdx
	subq      $180, %rdx
	movq      %rcx, -24(%rbp)
	movq      %rdx, -32(%rbp)
	ja        LBB0_18
	leaq      LJTI0_0(%rip), %rax
	movq      -24(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
LBB0_2:
	jmp       LBB0_19
LBB0_3:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	movq      %rcx, %rdx
	subq      $3, %rdx
	movq      %rcx, -40(%rbp)
	movq      %rdx, -48(%rbp)
	ja        LBB0_8
	leaq      LJTI0_2(%rip), %rax
	movq      -40(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
LBB0_4:
	jmp       LBB0_9
LBB0_5:
	jmp       LBB0_9
LBB0_6:
	jmp       LBB0_9
LBB0_7:
	jmp       LBB0_9
LBB0_8:
	jmp       LBB0_9
LBB0_9:
	jmp       LBB0_19
LBB0_10:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	movq      %rcx, %rdx
	subq      $4, %rdx
	movq      %rcx, -56(%rbp)
	movq      %rdx, -64(%rbp)
	ja        LBB0_16
	leaq      LJTI0_1(%rip), %rax
	movq      -56(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
LBB0_11:
	jmp       LBB0_17
LBB0_12:
	jmp       LBB0_17
LBB0_13:
	jmp       LBB0_17
LBB0_14:
	jmp       LBB0_17
LBB0_15:
	jmp       LBB0_17
LBB0_16:
	jmp       LBB0_17
LBB0_17:
	jmp       LBB0_1
LBB0_18:
	movl      $1, -12(%rbp)
LBB0_19:
	cmpl      $1, -12(%rbp)
	je        LBB0_21
	jmp       LBB0_22
LBB0_21:
	jmp       LBB0_1
LBB0_22:
	xorl      %eax, %eax
	popq      %rbp
	ret       
# ----------------------
	.p2align 2, 0x90
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_2
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_10
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_3
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_18
	.long	L0_0_set_2
LJTI0_1:
	.long	L0_1_set_11
	.long	L0_1_set_12
	.long	L0_1_set_13
	.long	L0_1_set_14
	.long	L0_1_set_15
LJTI0_2:
	.long	L0_2_set_7
	.long	L0_2_set_6
	.long	L0_2_set_5
	.long	L0_2_set_4
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_empty
_empty:
	pushq     %rbp
Lcfi3:
Lcfi4:
	movq      %rsp, %rbp
Lcfi5:
	popq      %rbp
	ret       
# ----------------------
	.set	L0_0_set_2,LBB0_2-LJTI0_0
	.set	L0_0_set_18,LBB0_18-LJTI0_0
	.set	L0_0_set_10,LBB0_10-LJTI0_0
	.set	L0_0_set_3,LBB0_3-LJTI0_0
	.set	L0_1_set_11,LBB0_11-LJTI0_1
	.set	L0_1_set_12,LBB0_12-LJTI0_1
	.set	L0_1_set_13,LBB0_13-LJTI0_1
	.set	L0_1_set_14,LBB0_14-LJTI0_1
	.set	L0_1_set_15,LBB0_15-LJTI0_1
	.set	L0_2_set_7,LBB0_7-LJTI0_2
	.set	L0_2_set_6,LBB0_6-LJTI0_2
	.set	L0_2_set_5,LBB0_5-LJTI0_2
	.set	L0_2_set_4,LBB0_4-LJTI0_2

.subsections_via_symbols
