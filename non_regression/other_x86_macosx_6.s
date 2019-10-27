	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_umodiu
	.align	4, 0x90
_umodiu:                                ## @umodiu
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L13$pb
L13$pb:
	popl	%eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	84(%esp), %edi
	movl	80(%esp), %ebp
	movl	4(%ebp), %esi
	sarl	$30, %esi
	testl	%edi, %edi
	jne	LBB13_2
## BB#1:
	movl	$27, (%esp)
	calll	_pari_err
LBB13_2:
	xorl	%eax, %eax
	testl	%esi, %esi
	movl	%esi, 16(%esp)          ## 4-byte Spill
	je	LBB13_31
## BB#3:
	movl	$16777215, %ebx         ## imm = 0xFFFFFF
	andl	4(%ebp), %ebx
	movl	8(%ebp), %esi
	cmpl	%edi, %esi
	jae	LBB13_4
## BB#5:
	cmpl	$3, %ebx
	je	LBB13_30
## BB#6:
	addl	$4, %ebp
	decl	%ebx
	jmp	LBB13_7
LBB13_4:
	xorl	%esi, %esi
LBB13_7:
	cmpl	$3, %ebx
	jl	LBB13_29
## BB#8:                                ## %.lr.ph
	movl	%edi, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edi            ## imm = 0xFFFF
	movl	$12, %eax
	movl	$28, %edx
	cmoval	%eax, %edx
	movl	%edx, 36(%esp)          ## 4-byte Spill
	cmovbel	%edi, %ecx
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	cmpl	$65535, %edi            ## imm = 0xFFFF
	jae	LBB13_9
## BB#12:                               ## %.lr.ph.split.us.preheader
	addl	$-2, %ebx
	addl	$8, %ebp
	.align	4, 0x90
LBB13_13:                               ## %.lr.ph.split.us
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebp), %ecx
	testl	%esi, %esi
	je	LBB13_15
## BB#14:                               ##   in Loop: Header=BB13_13 Depth=1
	shldl	$16, %ecx, %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%edi
	shll	$16, %edx
	movzwl	%cx, %ecx
	orl	%edx, %ecx
LBB13_15:                               ##   in Loop: Header=BB13_13 Depth=1
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%edx, %esi
	addl	$4, %ebp
	decl	%ebx
	jne	LBB13_13
	jmp	LBB13_29
LBB13_9:                                ## %.lr.ph..lr.ph.split_crit_edge.preheader
	leal	-8(%edx), %eax
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	shrl	$8, %eax
	movl	%eax, 20(%esp)          ## 4-byte Spill
	addl	$-2, %ebx
	addl	$8, %ebp
	.align	4, 0x90
LBB13_10:                               ## %.lr.ph..lr.ph.split_crit_edge
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebp), %eax
	testl	%esi, %esi
	je	LBB13_11
## BB#16:                               ##   in Loop: Header=BB13_10 Depth=1
	testl	%edi, %edi
	js	LBB13_17
## BB#18:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	%eax, 56(%esp)          ## 4-byte Spill
	cmpl	$255, %ecx
	cmoval	24(%esp), %edx          ## 4-byte Folded Reload
	movl	%ecx, %eax
	cmoval	20(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$16, %eax
	jb	LBB13_19
## BB#20:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	movl	%ebx, 44(%esp)          ## 4-byte Spill
	addl	$-4, %edx
	shrl	$4, %eax
	jmp	LBB13_21
	.align	4, 0x90
LBB13_11:                               ##   in Loop: Header=BB13_10 Depth=1
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %esi
	movl	36(%esp), %edx          ## 4-byte Reload
	jmp	LBB13_28
	.align	4, 0x90
LBB13_17:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	movl	$0, 48(%esp)            ## 4-byte Folded Spill
	movl	%ebx, 44(%esp)          ## 4-byte Spill
	movl	%eax, %ebx
	jmp	LBB13_22
LBB13_19:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	movl	%ebx, 44(%esp)          ## 4-byte Spill
LBB13_21:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%edx, 48(%esp)          ## 4-byte Spill
	movb	%dl, %cl
	movl	56(%esp), %ebx          ## 4-byte Reload
	shldl	%cl, %ebx, %esi
	movb	%dl, %cl
	shll	%cl, %ebx
	movb	%dl, %cl
	shll	%cl, %edi
LBB13_22:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	movzwl	%di, %ebp
	movl	%ebp, 52(%esp)          ## 4-byte Spill
	movl	%edi, %ecx
                                        ## kill: EDI<def> ECX<kill>
	shrl	$16, %edi
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%edi
	movl	%eax, %edx
	imull	%edi, %edx
	subl	%edx, %esi
	imull	%ebp, %eax
	shldl	$16, %ebx, %esi
	cmpl	%eax, %esi
	jae	LBB13_23
## BB#24:                               ##   in Loop: Header=BB13_10 Depth=1
	addl	%ecx, %esi
	setb	%dl
	xorb	$1, %dl
	movl	$0, %edx
	cmovnel	%ecx, %edx
	movl	%ecx, %ebx
	cmpl	%eax, %esi
	movl	$0, %ecx
	cmovael	%ecx, %edx
	addl	%edx, %esi
	jmp	LBB13_25
	.align	4, 0x90
LBB13_23:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	%ecx, %ebx
LBB13_25:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	40(%esp), %ebp          ## 4-byte Reload
	subl	%eax, %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%edi
	imull	%eax, %edi
	subl	%edi, %esi
	movl	52(%esp), %ecx          ## 4-byte Reload
	imull	%eax, %ecx
	shll	$16, %esi
	movl	56(%esp), %eax          ## 4-byte Reload
	movzwl	%ax, %eax
	orl	%esi, %eax
	movl	%ecx, %esi
	cmpl	%esi, %eax
	jae	LBB13_27
## BB#26:                               ##   in Loop: Header=BB13_10 Depth=1
	addl	%ebx, %eax
	setb	%dl
	xorb	$1, %dl
	movl	$0, %ecx
	cmovel	%ecx, %ebx
	cmpl	%esi, %eax
	cmovael	%ecx, %ebx
	addl	%ebx, %eax
LBB13_27:                               ##   in Loop: Header=BB13_10 Depth=1
	movl	84(%esp), %edi
	movl	44(%esp), %ebx          ## 4-byte Reload
	movl	36(%esp), %edx          ## 4-byte Reload
	subl	%esi, %eax
	movl	48(%esp), %ecx          ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	movl	%eax, %esi
	movl	32(%esp), %ecx          ## 4-byte Reload
LBB13_28:                               ##   in Loop: Header=BB13_10 Depth=1
	addl	$4, %ebp
	decl	%ebx
	jne	LBB13_10
LBB13_29:                               ## %._crit_edge
	xorl	%eax, %eax
	testl	%esi, %esi
	je	LBB13_31
LBB13_30:
	subl	%esi, %edi
	cmpl	$0, 16(%esp)            ## 4-byte Folded Reload
	cmovgl	%esi, %edi
	movl	%edi, %eax
LBB13_31:
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl



	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_DEBUGMEM$non_lazy_ptr:
	.indirect_symbol	_DEBUGMEM
	.long	0
L_LOG10_2$non_lazy_ptr:
	.indirect_symbol	_LOG10_2
	.long	0
L_PARI_SIGINT_block$non_lazy_ptr:
	.indirect_symbol	_PARI_SIGINT_block
	.long	0
L_PARI_SIGINT_pending$non_lazy_ptr:
	.indirect_symbol	_PARI_SIGINT_pending
	.long	0
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0
L_avma$non_lazy_ptr:
	.indirect_symbol	_avma
	.long	0
L_bot$non_lazy_ptr:
	.indirect_symbol	_bot
	.long	0
L_gen_0$non_lazy_ptr:
	.indirect_symbol	_gen_0
	.long	0
L_gen_1$non_lazy_ptr:
	.indirect_symbol	_gen_1
	.long	0
L_gen_2$non_lazy_ptr:
	.indirect_symbol	_gen_2
	.long	0
L_gen_m1$non_lazy_ptr:
	.indirect_symbol	_gen_m1
	.long	0
L_gen_m2$non_lazy_ptr:
	.indirect_symbol	_gen_m2
	.long	0
L_top$non_lazy_ptr:
	.indirect_symbol	_top
	.long	0

.subsections_via_symbols
