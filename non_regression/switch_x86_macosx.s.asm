	.macosx_version_min 10, 10
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_PyToken_OneChar
_PyToken_OneChar:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	cmpl      $93, %ecx
	jg        LBB0_7
	cmpl      $57, %ecx
	jg        LBB0_5
	cmpl      $37, %ecx
	jne       LBB0_3
	movl      $24, %eax
	popl      %ebp
	ret       
LBB0_7:
	cmpl      $95, %ecx
	jg        LBB0_10
	cmpl      $94, %ecx
	jne       LBB0_23
	movl      $33, %eax
	popl      %ebp
	ret       
LBB0_5:
	addl      $-58, %ecx
	cmpl      $6, %ecx
	ja        LBB0_23
	call      L0$pb
L0$pb:
	popl      %edx
	movl      $11, %eax
	addl      Ltmp0(%edx,%ecx,4), %edx
	jmp       *%edx
LBB0_18:
	movl      $22, %eax
	popl      %ebp
	ret       
LBB0_10:
	cmpl      $124, %ecx
	jg        LBB0_14
	cmpl      $96, %ecx
	jne       LBB0_12
	movl      $25, %eax
	popl      %ebp
	ret       
LBB0_3:
	cmpl      $46, %ecx
	jne       LBB0_23
	movl      $23, %eax
	popl      %ebp
	ret       
LBB0_14:
	cmpl      $125, %ecx
	jne       LBB0_15
	movl      $27, %eax
	popl      %ebp
	ret       
LBB0_12:
	cmpl      $123, %ecx
	jne       LBB0_23
	movl      $26, %eax
	popl      %ebp
	ret       
LBB0_15:
	cmpl      $126, %ecx
	jne       LBB0_23
	movl      $32, %eax
	popl      %ebp
	ret       
LBB0_23:
	movl      $51, %eax
LBB0_24:
	popl      %ebp
	ret       
LBB0_17:
	movl      $21, %eax
	popl      %ebp
	ret       
LBB0_22:
	movl      $50, %eax
	popl      %ebp
	ret       
	.align 2, 0x90
LJTI0_0:
	.long	L0_0_set_24
	.long	L0_0_set_23
	.long	L0_0_set_23
	.long	L0_0_set_18
	.long	L0_0_set_17
	.long	L0_0_set_23
	.long	L0_0_set_22
# ----------------------
	.align 4, 0x90
	.globl	_PyToken_TwoChars
_PyToken_TwoChars:
	pushl     %ebp
	movl      %esp, %ebp
	movl      12(%ebp), %ecx
	movl      8(%ebp), %eax
	cmpl      $60, %eax
	jg        LBB1_3
	addl      $-33, %eax
	cmpl      $14, %eax
	ja        LBB1_20
	call      L1$pb
L1$pb:
	popl      %edx
	addl      Ltmp1(%edx,%eax,4), %edx
	jmp       *%edx
LBB1_11:
	movl      $29, %eax
	jmp       LBB1_19
LBB1_3:
	cmpl      $93, %eax
	jg        LBB1_7
	cmpl      $61, %eax
	jne       LBB1_5
	movl      $28, %eax
	jmp       LBB1_19
LBB1_7:
	cmpl      $94, %eax
	jne       LBB1_8
	movl      $44, %eax
	jmp       LBB1_19
LBB1_5:
	cmpl      $62, %eax
	jne       LBB1_20
	cmpl      $62, %ecx
	movl      $35, %eax
	movl      $51, %edx
	cmove     %eax, %edx
	cmpl      $61, %ecx
	movl      $31, %eax
	cmovne    %edx, %eax
	popl      %ebp
	ret       
LBB1_8:
	cmpl      $124, %eax
	jne       LBB1_20
	movl      $43, %eax
	jmp       LBB1_19
LBB1_16:
	movl      $41, %eax
	jmp       LBB1_19
LBB1_17:
	movl      $42, %eax
	jmp       LBB1_19
LBB1_14:
	cmpl      $61, %ecx
	movl      $39, %eax
	movl      $51, %edx
	cmove     %eax, %edx
	cmpl      $42, %ecx
	movl      $36, %eax
	cmovne    %edx, %eax
	popl      %ebp
	ret       
LBB1_12:
	movl      $37, %eax
	jmp       LBB1_19
LBB1_13:
	movl      $38, %eax
LBB1_19:
	cmpl      $61, %ecx
	je        LBB1_21
LBB1_20:
	movl      $51, %eax
LBB1_21:
	popl      %ebp
	ret       
LBB1_15:
	cmpl      $61, %ecx
	movl      $40, %eax
	movl      $51, %edx
	cmove     %eax, %edx
	cmpl      $47, %ecx
	movl      $48, %eax
	cmovne    %edx, %eax
	popl      %ebp
	ret       
	.align 2, 0x90
LJTI1_0:
	.long	L1_0_set_11
	.long	L1_0_set_20
	.long	L1_0_set_20
	.long	L1_0_set_20
	.long	L1_0_set_16
	.long	L1_0_set_17
	.long	L1_0_set_20
	.long	L1_0_set_20
	.long	L1_0_set_20
	.long	L1_0_set_14
	.long	L1_0_set_12
	.long	L1_0_set_20
	.long	L1_0_set_13
	.long	L1_0_set_20
	.long	L1_0_set_15
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	movl      $51, %ecx
	movl      8(%ebp), %edx
	cmpl      $93, %edx
	jg        LBB2_7
	cmpl      $57, %edx
	jg        LBB2_5
	cmpl      $37, %edx
	jne       LBB2_3
	movl      $24, %eax
	jmp       LBB2_28
LBB2_7:
	cmpl      $95, %edx
	jg        LBB2_12
	cmpl      $94, %edx
	jne       LBB2_9
	movl      $33, %eax
	jmp       LBB2_28
LBB2_5:
	leal      -58(%edx), %esi
	cmpl      $6, %esi
	ja        LBB2_9
	call      L2$pb
L2$pb:
	popl      %edi
	movl      $11, %eax
	addl      Ltmp2(%edi,%esi,4), %edi
	jmp       *%edi
LBB2_22:
	movl      $28, %ecx
	movl      $22, %eax
	jmp       LBB2_28
LBB2_12:
	cmpl      $124, %edx
	jg        LBB2_16
	cmpl      $96, %edx
	jne       LBB2_14
	movl      $25, %eax
	jmp       LBB2_28
LBB2_3:
	cmpl      $46, %edx
	jne       LBB2_9
	movl      $23, %eax
	jmp       LBB2_28
LBB2_16:
	cmpl      $125, %edx
	jne       LBB2_17
	movl      $27, %eax
	jmp       LBB2_28
LBB2_14:
	cmpl      $123, %edx
	jne       LBB2_9
	movl      $26, %eax
	jmp       LBB2_28
LBB2_17:
	cmpl      $126, %edx
	jne       LBB2_9
	movl      $32, %eax
	jmp       LBB2_28
LBB2_9:
	movl      $51, %eax
	cmpl      $42, %edx
	jne       LBB2_10
	movl      $36, %ecx
	jmp       LBB2_28
LBB2_10:
	cmpl      $47, %edx
	jne       LBB2_11
	movl      $48, %ecx
	jmp       LBB2_28
LBB2_11:
	movl      $51, %ecx
	jmp       LBB2_28
LBB2_23:
	movl      $35, %ecx
	movl      $21, %eax
	jmp       LBB2_28
LBB2_21:
	movl      $50, %eax
LBB2_28:
	addl      %ecx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.align 2, 0x90
LJTI2_0:
	.long	L2_0_set_28
	.long	L2_0_set_9
	.long	L2_0_set_9
	.long	L2_0_set_22
	.long	L2_0_set_23
	.long	L2_0_set_9
	.long	L2_0_set_21
# ----------------------
	.set	Ltmp0,LJTI0_0-L0$pb
	.set	L0_0_set_24,LBB0_24-L0$pb
	.set	L0_0_set_23,LBB0_23-L0$pb
	.set	L0_0_set_18,LBB0_18-L0$pb
	.set	L0_0_set_17,LBB0_17-L0$pb
	.set	L0_0_set_22,LBB0_22-L0$pb
	.set	Ltmp1,LJTI1_0-L1$pb
	.set	L1_0_set_11,LBB1_11-L1$pb
	.set	L1_0_set_20,LBB1_20-L1$pb
	.set	L1_0_set_16,LBB1_16-L1$pb
	.set	L1_0_set_17,LBB1_17-L1$pb
	.set	L1_0_set_14,LBB1_14-L1$pb
	.set	L1_0_set_12,LBB1_12-L1$pb
	.set	L1_0_set_13,LBB1_13-L1$pb
	.set	L1_0_set_15,LBB1_15-L1$pb
	.set	Ltmp2,LJTI2_0-L2$pb
	.set	L2_0_set_28,LBB2_28-L2$pb
	.set	L2_0_set_9,LBB2_9-L2$pb
	.set	L2_0_set_22,LBB2_22-L2$pb
	.set	L2_0_set_23,LBB2_23-L2$pb
	.set	L2_0_set_21,LBB2_21-L2$pb

.subsections_via_symbols
