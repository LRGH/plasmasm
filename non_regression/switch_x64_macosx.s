	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_PyToken_OneChar
	.align	4, 0x90
_PyToken_OneChar:                       ## @PyToken_OneChar
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	cmpl	$93, %edi
	jg	LBB0_7
## BB#1:
	cmpl	$57, %edi
	jg	LBB0_5
## BB#2:
	cmpl	$37, %edi
	jne	LBB0_3
## BB#19:
	movl	$24, %eax
	popq	%rbp
	retq
LBB0_7:
	cmpl	$95, %edi
	jg	LBB0_10
## BB#8:
	cmpl	$94, %edi
	jne	LBB0_23
## BB#9:
	movl	$33, %eax
	popq	%rbp
	retq
LBB0_5:
	addl	$-58, %edi
	cmpl	$6, %edi
	ja	LBB0_23
## BB#6:
	movl	$11, %eax
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rdi,4), %rdx
	addq	%rcx, %rdx
	jmpq	*%rdx
LBB0_18:
	movl	$22, %eax
	popq	%rbp
	retq
LBB0_10:
	cmpl	$124, %edi
	jg	LBB0_14
## BB#11:
	cmpl	$96, %edi
	jne	LBB0_12
## BB#20:
	movl	$25, %eax
	popq	%rbp
	retq
LBB0_3:
	cmpl	$46, %edi
	jne	LBB0_23
## BB#4:
	movl	$23, %eax
	popq	%rbp
	retq
LBB0_14:
	cmpl	$125, %edi
	jne	LBB0_15
## BB#21:
	movl	$27, %eax
	popq	%rbp
	retq
LBB0_12:
	cmpl	$123, %edi
	jne	LBB0_23
## BB#13:
	movl	$26, %eax
	popq	%rbp
	retq
LBB0_15:
	cmpl	$126, %edi
	jne	LBB0_23
## BB#16:
	movl	$32, %eax
	popq	%rbp
	retq
LBB0_23:
	movl	$51, %eax
LBB0_24:
	popq	%rbp
	retq
LBB0_17:
	movl	$21, %eax
	popq	%rbp
	retq
LBB0_22:
	movl	$50, %eax
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L0_0_set_24 = LBB0_24-LJTI0_0
L0_0_set_23 = LBB0_23-LJTI0_0
L0_0_set_18 = LBB0_18-LJTI0_0
L0_0_set_17 = LBB0_17-LJTI0_0
L0_0_set_22 = LBB0_22-LJTI0_0
LJTI0_0:
	.long	L0_0_set_24
	.long	L0_0_set_23
	.long	L0_0_set_23
	.long	L0_0_set_18
	.long	L0_0_set_17
	.long	L0_0_set_23
	.long	L0_0_set_22

	.globl	_PyToken_TwoChars
	.align	4, 0x90
_PyToken_TwoChars:                      ## @PyToken_TwoChars
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	cmpl	$60, %edi
	jg	LBB1_3
## BB#1:
	addl	$-33, %edi
	cmpl	$14, %edi
	ja	LBB1_20
## BB#2:
	leaq	LJTI1_0(%rip), %rax
	movslq	(%rax,%rdi,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB1_11:
	movl	$29, %eax
	jmp	LBB1_19
LBB1_3:
	cmpl	$93, %edi
	jg	LBB1_7
## BB#4:
	cmpl	$61, %edi
	jne	LBB1_5
## BB#10:
	movl	$28, %eax
	jmp	LBB1_19
LBB1_7:
	cmpl	$94, %edi
	jne	LBB1_8
## BB#18:
	movl	$44, %eax
	jmp	LBB1_19
LBB1_5:
	cmpl	$62, %edi
	jne	LBB1_20
## BB#6:
	cmpl	$62, %esi
	movl	$35, %eax
	movl	$51, %ecx
	cmovel	%eax, %ecx
	cmpl	$61, %esi
	movl	$31, %eax
	cmovnel	%ecx, %eax
	popq	%rbp
	retq
LBB1_8:
	cmpl	$124, %edi
	jne	LBB1_20
## BB#9:
	movl	$43, %eax
	jmp	LBB1_19
LBB1_16:
	movl	$41, %eax
	jmp	LBB1_19
LBB1_17:
	movl	$42, %eax
	jmp	LBB1_19
LBB1_14:
	cmpl	$61, %esi
	movl	$39, %eax
	movl	$51, %ecx
	cmovel	%eax, %ecx
	cmpl	$42, %esi
	movl	$36, %eax
	cmovnel	%ecx, %eax
	popq	%rbp
	retq
LBB1_12:
	movl	$37, %eax
	jmp	LBB1_19
LBB1_13:
	movl	$38, %eax
LBB1_19:
	cmpl	$61, %esi
	je	LBB1_21
LBB1_20:
	movl	$51, %eax
LBB1_21:
	popq	%rbp
	retq
LBB1_15:
	cmpl	$61, %esi
	movl	$40, %eax
	movl	$51, %ecx
	cmovel	%eax, %ecx
	cmpl	$47, %esi
	movl	$48, %eax
	cmovnel	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L1_0_set_11 = LBB1_11-LJTI1_0
L1_0_set_20 = LBB1_20-LJTI1_0
L1_0_set_16 = LBB1_16-LJTI1_0
L1_0_set_17 = LBB1_17-LJTI1_0
L1_0_set_14 = LBB1_14-LJTI1_0
L1_0_set_12 = LBB1_12-LJTI1_0
L1_0_set_13 = LBB1_13-LJTI1_0
L1_0_set_15 = LBB1_15-LJTI1_0
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

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	movl	$51, %ecx
	cmpl	$93, %edi
	jg	LBB2_7
## BB#1:
	cmpl	$57, %edi
	jg	LBB2_5
## BB#2:
	cmpl	$37, %edi
	jne	LBB2_3
## BB#26:                               ## %PyToken_OneChar.exit.thread8
	movl	$24, %eax
	jmp	LBB2_28
LBB2_7:
	cmpl	$95, %edi
	jg	LBB2_12
## BB#8:
	cmpl	$94, %edi
	jne	LBB2_9
## BB#27:                               ## %PyToken_OneChar.exit.thread10
	movl	$33, %eax
	jmp	LBB2_28
LBB2_5:
	leal	-58(%rdi), %edx
	cmpl	$6, %edx
	ja	LBB2_9
## BB#6:
	movl	$11, %eax
	leaq	LJTI2_0(%rip), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rsi, %rdx
	jmpq	*%rdx
LBB2_22:                                ## %PyToken_OneChar.exit.thread4
	movl	$28, %ecx
	movl	$22, %eax
	jmp	LBB2_28
LBB2_12:
	cmpl	$124, %edi
	jg	LBB2_16
## BB#13:
	cmpl	$96, %edi
	jne	LBB2_14
## BB#19:
	movl	$25, %eax
	jmp	LBB2_28
LBB2_3:
	cmpl	$46, %edi
	jne	LBB2_9
## BB#4:
	movl	$23, %eax
	jmp	LBB2_28
LBB2_16:
	cmpl	$125, %edi
	jne	LBB2_17
## BB#20:
	movl	$27, %eax
	jmp	LBB2_28
LBB2_14:
	cmpl	$123, %edi
	jne	LBB2_9
## BB#15:
	movl	$26, %eax
	jmp	LBB2_28
LBB2_17:
	cmpl	$126, %edi
	jne	LBB2_9
## BB#18:
	movl	$32, %eax
	jmp	LBB2_28
LBB2_9:                                 ## %PyToken_OneChar.exit
	movl	$51, %eax
	cmpl	$42, %edi
	jne	LBB2_10
## BB#24:
	movl	$36, %ecx
	jmp	LBB2_28
LBB2_10:                                ## %PyToken_OneChar.exit
	cmpl	$47, %edi
	jne	LBB2_11
## BB#25:
	movl	$48, %ecx
	jmp	LBB2_28
LBB2_11:
	movl	$51, %ecx
	jmp	LBB2_28
LBB2_23:                                ## %PyToken_OneChar.exit.thread6
	movl	$35, %ecx
	movl	$21, %eax
	jmp	LBB2_28
LBB2_21:
	movl	$50, %eax
LBB2_28:                                ## %PyToken_TwoChars.exit
	addl	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L2_0_set_28 = LBB2_28-LJTI2_0
L2_0_set_9 = LBB2_9-LJTI2_0
L2_0_set_22 = LBB2_22-LJTI2_0
L2_0_set_23 = LBB2_23-LJTI2_0
L2_0_set_21 = LBB2_21-LJTI2_0
LJTI2_0:
	.long	L2_0_set_28
	.long	L2_0_set_9
	.long	L2_0_set_9
	.long	L2_0_set_22
	.long	L2_0_set_23
	.long	L2_0_set_9
	.long	L2_0_set_21


.subsections_via_symbols
