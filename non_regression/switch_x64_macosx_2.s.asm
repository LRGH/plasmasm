	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_PyToken_OneChar
_PyToken_OneChar:
	pushq     %rbp
Ltmp0:
Ltmp1:
	movq      %rsp, %rbp
Ltmp2:
	movl      %edi, -8(%rbp)
	movl      %edi, %eax
	subl      $93, %edi
	movl      %eax, -12(%rbp)
	movl      %edi, -16(%rbp)
	jg        LBB0_15
	jmp       LBB0_14
LBB0_14:
	movl      -12(%rbp), %eax
	subl      $57, %eax
	movl      %eax, -20(%rbp)
	jg        LBB0_23
	jmp       LBB0_22
LBB0_22:
	movl      -12(%rbp), %eax
	subl      $37, %eax
	movl      %eax, -24(%rbp)
	je        LBB0_5
	jmp       LBB0_25
LBB0_25:
	movl      -12(%rbp), %eax
	subl      $46, %eax
	movl      %eax, -28(%rbp)
	je        LBB0_4
	jmp       LBB0_12
LBB0_23:
	movl      -12(%rbp), %eax
	addl      $-58, %eax
	movl      %eax, %ecx
	subl      $6, %eax
	movq      %rcx, -40(%rbp)
	movl      %eax, -44(%rbp)
	ja        LBB0_12
	leaq      LJTI0_0(%rip), %rax
	movq      -40(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
LBB0_15:
	movl      -12(%rbp), %eax
	subl      $95, %eax
	movl      %eax, -48(%rbp)
	jg        LBB0_17
	jmp       LBB0_16
LBB0_16:
	movl      -12(%rbp), %eax
	subl      $94, %eax
	movl      %eax, -52(%rbp)
	je        LBB0_9
	jmp       LBB0_12
LBB0_17:
	movl      -12(%rbp), %eax
	subl      $124, %eax
	movl      %eax, -56(%rbp)
	jg        LBB0_19
	jmp       LBB0_18
LBB0_18:
	movl      -12(%rbp), %eax
	subl      $96, %eax
	movl      %eax, -60(%rbp)
	je        LBB0_6
	jmp       LBB0_21
LBB0_21:
	movl      -12(%rbp), %eax
	subl      $123, %eax
	movl      %eax, -64(%rbp)
	je        LBB0_7
	jmp       LBB0_12
LBB0_19:
	movl      -12(%rbp), %eax
	subl      $125, %eax
	movl      %eax, -68(%rbp)
	je        LBB0_8
	jmp       LBB0_20
LBB0_20:
	movl      -12(%rbp), %eax
	subl      $126, %eax
	movl      %eax, -72(%rbp)
	je        LBB0_10
	jmp       LBB0_12
LBB0_1:
	movl      $11, -4(%rbp)
	jmp       LBB0_13
LBB0_2:
	movl      $21, -4(%rbp)
	jmp       LBB0_13
LBB0_3:
	movl      $22, -4(%rbp)
	jmp       LBB0_13
LBB0_4:
	movl      $23, -4(%rbp)
	jmp       LBB0_13
LBB0_5:
	movl      $24, -4(%rbp)
	jmp       LBB0_13
LBB0_6:
	movl      $25, -4(%rbp)
	jmp       LBB0_13
LBB0_7:
	movl      $26, -4(%rbp)
	jmp       LBB0_13
LBB0_8:
	movl      $27, -4(%rbp)
	jmp       LBB0_13
LBB0_9:
	movl      $33, -4(%rbp)
	jmp       LBB0_13
LBB0_10:
	movl      $32, -4(%rbp)
	jmp       LBB0_13
LBB0_11:
	movl      $50, -4(%rbp)
	jmp       LBB0_13
LBB0_12:
	movl      $51, -4(%rbp)
LBB0_13:
	movl      -4(%rbp), %eax
	popq      %rbp
	ret       
	.align 2, 0x90
LJTI0_0:
	.long	L0_0_set_1
	.long	L0_0_set_12
	.long	L0_0_set_12
	.long	L0_0_set_3
	.long	L0_0_set_2
	.long	L0_0_set_12
	.long	L0_0_set_11
# ----------------------
	.align 4, 0x90
	.globl	_PyToken_TwoChars
_PyToken_TwoChars:
	pushq     %rbp
Ltmp3:
Ltmp4:
	movq      %rsp, %rbp
Ltmp5:
	movl      %edi, -8(%rbp)
	movl      %esi, -12(%rbp)
	movl      -8(%rbp), %esi
	movl      %esi, %edi
	subl      $60, %edi
	movl      %esi, -16(%rbp)
	movl      %edi, -20(%rbp)
	jg        LBB1_40
	jmp       LBB1_39
LBB1_39:
	movl      -16(%rbp), %eax
	addl      $-33, %eax
	movl      %eax, %ecx
	subl      $14, %eax
	movq      %rcx, -32(%rbp)
	movl      %eax, -36(%rbp)
	ja        LBB1_37
	leaq      LJTI1_0(%rip), %rax
	movq      -32(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
LBB1_40:
	movl      -16(%rbp), %eax
	subl      $93, %eax
	movl      %eax, -40(%rbp)
	jg        LBB1_42
	jmp       LBB1_41
LBB1_41:
	movl      -16(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -44(%rbp)
	je        LBB1_1
	jmp       LBB1_44
LBB1_44:
	movl      -16(%rbp), %eax
	subl      $62, %eax
	movl      %eax, -48(%rbp)
	je        LBB1_7
	jmp       LBB1_37
LBB1_42:
	movl      -16(%rbp), %eax
	subl      $94, %eax
	movl      %eax, -52(%rbp)
	je        LBB1_34
	jmp       LBB1_43
LBB1_43:
	movl      -16(%rbp), %eax
	subl      $124, %eax
	movl      %eax, -56(%rbp)
	je        LBB1_25
	jmp       LBB1_37
LBB1_1:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -60(%rbp)
	jne       LBB1_3
	jmp       LBB1_2
LBB1_2:
	movl      $28, -4(%rbp)
	jmp       LBB1_38
LBB1_3:
	jmp       LBB1_37
LBB1_4:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -64(%rbp)
	jne       LBB1_6
	jmp       LBB1_5
LBB1_5:
	movl      $29, -4(%rbp)
	jmp       LBB1_38
LBB1_6:
	jmp       LBB1_37
LBB1_7:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	subl      $62, %ecx
	movl      %eax, -68(%rbp)
	movl      %ecx, -72(%rbp)
	je        LBB1_9
	jmp       LBB1_48
LBB1_48:
	movl      -68(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -76(%rbp)
	jne       LBB1_10
	jmp       LBB1_8
LBB1_8:
	movl      $31, -4(%rbp)
	jmp       LBB1_38
LBB1_9:
	movl      $35, -4(%rbp)
	jmp       LBB1_38
LBB1_10:
	jmp       LBB1_37
LBB1_11:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -80(%rbp)
	jne       LBB1_13
	jmp       LBB1_12
LBB1_12:
	movl      $37, -4(%rbp)
	jmp       LBB1_38
LBB1_13:
	jmp       LBB1_37
LBB1_14:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -84(%rbp)
	jne       LBB1_16
	jmp       LBB1_15
LBB1_15:
	movl      $38, -4(%rbp)
	jmp       LBB1_38
LBB1_16:
	jmp       LBB1_37
LBB1_17:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	subl      $61, %ecx
	movl      %eax, -88(%rbp)
	movl      %ecx, -92(%rbp)
	je        LBB1_19
	jmp       LBB1_47
LBB1_47:
	movl      -88(%rbp), %eax
	subl      $42, %eax
	movl      %eax, -96(%rbp)
	jne       LBB1_20
	jmp       LBB1_18
LBB1_18:
	movl      $36, -4(%rbp)
	jmp       LBB1_38
LBB1_19:
	movl      $39, -4(%rbp)
	jmp       LBB1_38
LBB1_20:
	jmp       LBB1_37
LBB1_21:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	subl      $61, %ecx
	movl      %eax, -100(%rbp)
	movl      %ecx, -104(%rbp)
	je        LBB1_23
	jmp       LBB1_46
LBB1_46:
	movl      -100(%rbp), %eax
	subl      $47, %eax
	movl      %eax, -108(%rbp)
	jne       LBB1_24
	jmp       LBB1_22
LBB1_22:
	movl      $48, -4(%rbp)
	jmp       LBB1_38
LBB1_23:
	movl      $40, -4(%rbp)
	jmp       LBB1_38
LBB1_24:
	jmp       LBB1_37
LBB1_25:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -112(%rbp)
	jne       LBB1_27
	jmp       LBB1_26
LBB1_26:
	movl      $43, -4(%rbp)
	jmp       LBB1_38
LBB1_27:
	jmp       LBB1_37
LBB1_28:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -116(%rbp)
	jne       LBB1_30
	jmp       LBB1_29
LBB1_29:
	movl      $41, -4(%rbp)
	jmp       LBB1_38
LBB1_30:
	jmp       LBB1_37
LBB1_31:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -120(%rbp)
	jne       LBB1_33
	jmp       LBB1_32
LBB1_32:
	movl      $42, -4(%rbp)
	jmp       LBB1_38
LBB1_33:
	jmp       LBB1_37
LBB1_34:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -124(%rbp)
	jne       LBB1_36
	jmp       LBB1_35
LBB1_35:
	movl      $44, -4(%rbp)
	jmp       LBB1_38
LBB1_36:
	jmp       LBB1_37
LBB1_37:
	movl      $51, -4(%rbp)
LBB1_38:
	movl      -4(%rbp), %eax
	popq      %rbp
	ret       
	.align 2, 0x90
LJTI1_0:
	.long	L1_0_set_4
	.long	L1_0_set_37
	.long	L1_0_set_37
	.long	L1_0_set_37
	.long	L1_0_set_28
	.long	L1_0_set_31
	.long	L1_0_set_37
	.long	L1_0_set_37
	.long	L1_0_set_37
	.long	L1_0_set_17
	.long	L1_0_set_11
	.long	L1_0_set_37
	.long	L1_0_set_14
	.long	L1_0_set_37
	.long	L1_0_set_21
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp6:
Ltmp7:
	movq      %rsp, %rbp
Ltmp8:
	subq      $32, %rsp
	movl      $0, -4(%rbp)
	movl      %edi, -8(%rbp)
	movq      %rsi, -16(%rbp)
	movl      -8(%rbp), %edi
	call      _PyToken_OneChar
	movl      -8(%rbp), %edi
	movl      -8(%rbp), %esi
	movl      %eax, -20(%rbp)
	call      _PyToken_TwoChars
	movl      -20(%rbp), %esi
	addl      %eax, %esi
	movl      %esi, %eax
	addq      $32, %rsp
	popq      %rbp
	ret       
# ----------------------
	.set	L0_0_set_1,LBB0_1-LJTI0_0
	.set	L0_0_set_12,LBB0_12-LJTI0_0
	.set	L0_0_set_3,LBB0_3-LJTI0_0
	.set	L0_0_set_2,LBB0_2-LJTI0_0
	.set	L0_0_set_11,LBB0_11-LJTI0_0
	.set	L1_0_set_4,LBB1_4-LJTI1_0
	.set	L1_0_set_37,LBB1_37-LJTI1_0
	.set	L1_0_set_28,LBB1_28-LJTI1_0
	.set	L1_0_set_31,LBB1_31-LJTI1_0
	.set	L1_0_set_17,LBB1_17-LJTI1_0
	.set	L1_0_set_11,LBB1_11-LJTI1_0
	.set	L1_0_set_14,LBB1_14-LJTI1_0
	.set	L1_0_set_21,LBB1_21-LJTI1_0

.subsections_via_symbols
