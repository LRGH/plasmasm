	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_jpeg_resync_to_restart
	.p2align	4, 0x90
_jpeg_resync_to_restart:                ## @jpeg_resync_to_restart
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edi
	movl	(%ecx), %eax
	movl	472(%ecx), %esi
	movl	$121, 20(%eax)
	movl	%esi, 24(%eax)
	movl	%edi, 28(%eax)
	subl	$8, %esp
	pushl	$-1
	pushl	%ecx
	calll	*4(%eax)
	addl	$16, %esp
	leal	1(%edi), %eax
	andl	$7, %eax
	orl	$208, %eax
	leal	2(%edi), %ebx
	andl	$7, %ebx
	orl	$208, %ebx
	leal	7(%edi), %edx
	andl	$7, %edx
	orl	$208, %edx
	addl	$6, %edi
	andl	$7, %edi
	orl	$208, %edi
	movl	%edi, -32(%ebp)         ## 4-byte Spill
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	movl	%ebx, -24(%ebp)         ## 4-byte Spill
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	472(%esi), %esi
	movl	-32(%ebp), %edi         ## 4-byte Reload
	movl	-28(%ebp), %eax         ## 4-byte Reload
	movl	-24(%ebp), %ebx         ## 4-byte Reload
	movl	-20(%ebp), %edx         ## 4-byte Reload
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	cmpl	$192, %esi
	setl	-13(%ebp)               ## 1-byte Folded Spill
	movl	%esi, %ecx
	andl	$-8, %ecx
	cmpl	%eax, %esi
	sete	%ah
	cmpl	%ebx, %esi
	sete	%bh
	cmpl	%edx, %esi
	sete	%bl
	cmpl	%edi, %esi
	sete	%al
	cmpl	$208, %ecx
	setne	%cl
	movb	-13(%ebp), %dl          ## 1-byte Reload
	orb	%dl, %ah
	orb	%cl, %ah
	xorl	%ecx, %ecx
	andb	%ah, %dl
	sete	%cl
	orl	$2, %ecx
	orb	%bl, %al
	movzbl	%al, %edi
	incl	%edi
	testb	%dl, %dl
	sete	%bl
	orb	%bh, %ah
	cmovnel	%ecx, %edi
	jne	LBB0_2
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	incb	%al
	movl	%eax, %ebx
	jmp	LBB0_4
	.p2align	4, 0x90
LBB0_2:                                 ##   in Loop: Header=BB0_1 Depth=1
	orb	$2, %bl
	.p2align	4, 0x90
LBB0_4:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$97, 20(%eax)
	movl	%esi, 24(%eax)
	movl	%edi, 28(%eax)
	subl	$8, %esp
	pushl	$4
	pushl	%ecx
	calll	*4(%eax)
	addl	$16, %esp
	movl	%ebx, %ecx
	andb	$3, %cl
	movl	$1, %eax
	cmpb	$3, %cl
	je	LBB0_8
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=2
	cmpb	$2, %cl
	je	LBB0_9
## BB#6:                                ##   in Loop: Header=BB0_4 Depth=2
	cmpb	$1, %cl
	jne	LBB0_4
	jmp	LBB0_7
	.p2align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	8(%ebp), %esi
	movl	%esi, %ecx
	calll	_next_marker
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	LBB0_10
	jmp	LBB0_8
LBB0_7:
	movl	8(%ebp), %ecx
	movl	$0, 472(%ecx)
LBB0_8:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.p2align	4, 0x90
_next_marker:                           ## @next_marker
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	24(%ecx), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %esi
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	%ebx, (%edi)
	movl	%esi, 4(%edi)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_7 Depth 2
	testl	%esi, %esi
	jne	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	%ecx, (%esp)
	calll	*12(%edi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB1_16
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	(%edi), %ebx
	movl	4(%edi), %esi
	movl	-16(%ebp), %ecx         ## 4-byte Reload
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	decl	%esi
	cmpb	$-1, (%ebx)
	leal	1(%ebx), %ebx
	je	LBB1_7
## BB#5:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	496(%ecx), %eax
	incl	24(%eax)
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_7:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testl	%esi, %esi
	jne	LBB1_10
## BB#8:                                ##   in Loop: Header=BB1_7 Depth=2
	movl	%ecx, (%esp)
	calll	*12(%edi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB1_16
## BB#9:                                ##   in Loop: Header=BB1_7 Depth=2
	movl	(%edi), %ebx
	movl	4(%edi), %esi
	movl	-16(%ebp), %ecx         ## 4-byte Reload
LBB1_10:                                ##   in Loop: Header=BB1_7 Depth=2
	decl	%esi
	movzbl	(%ebx), %eax
	incl	%ebx
	cmpl	$255, %eax
	je	LBB1_7
## BB#11:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	496(%ecx), %edx
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	movl	24(%edx), %eax
	movl	-20(%ebp), %edx         ## 4-byte Reload
	testb	%dl, %dl
	jne	LBB1_13
## BB#12:                               ##   in Loop: Header=BB1_1 Depth=1
	addl	$2, %eax
	movl	-24(%ebp), %edx         ## 4-byte Reload
	movl	%eax, 24(%edx)
	jmp	LBB1_6
LBB1_13:
	testl	%eax, %eax
	je	LBB1_15
## BB#14:
	movl	(%ecx), %edx
	movl	$116, 20(%edx)
	movl	%eax, 24(%edx)
	movl	-20(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 28(%edx)
	movl	%ecx, (%esp)
	movl	$-1, 4(%esp)
	calll	*4(%edx)
	movl	-16(%ebp), %ecx         ## 4-byte Reload
	movl	496(%ecx), %eax
	movl	$0, 24(%eax)
LBB1_15:
	movl	-20(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 472(%ecx)
	movl	%ebx, (%edi)
	movl	%esi, 4(%edi)
	movl	$1, %eax
LBB1_16:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_jinit_marker_reader
	.p2align	4, 0x90
_jinit_marker_reader:                   ## @jinit_marker_reader
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	calll	L2$pb
L2$pb:
	popl	%edi
	movl	8(%ebp), %esi
	movl	4(%esi), %eax
	subl	$4, %esp
	pushl	$172
	pushl	$0
	pushl	%esi
	calll	*(%eax)
	addl	$16, %esp
	movl	%eax, 496(%esi)
	leal	_reset_marker_reader-L2$pb(%edi), %ecx
	movl	%ecx, (%eax)
	leal	_read_markers-L2$pb(%edi), %ecx
	movl	%ecx, 4(%eax)
	leal	_read_restart_marker-L2$pb(%edi), %ecx
	movl	%ecx, 8(%eax)
	leal	_skip_variable-L2$pb(%edi), %ecx
	movl	%ecx, 28(%eax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%eax)
	movl	$0, 112(%eax)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 36(%eax)
	movl	$0, 116(%eax)
	movl	%ecx, 52(%eax)
	movl	$0, 120(%eax)
	movdqu	%xmm1, 56(%eax)
	movups	%xmm0, 124(%eax)
	movdqu	%xmm1, 72(%eax)
	movups	%xmm0, 140(%eax)
	movl	$0, 156(%eax)
	movl	%ecx, 92(%eax)
	movl	$0, 160(%eax)
	leal	_get_interesting_appn-L2$pb(%edi), %ecx
	movl	%ecx, 32(%eax)
	movl	%ecx, 88(%eax)
	movl	496(%esi), %eax
	movl	$0, 216(%esi)
	movl	$0, 144(%esi)
	movl	$0, 472(%esi)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 24(%eax)
	movl	$0, 164(%eax)
	popl	%esi
	popl	%edi
	popl	%ebp
	retl

	.p2align	4, 0x90
_reset_marker_reader:                   ## @reset_marker_reader
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	496(%eax), %ecx
	movl	$0, 216(%eax)
	movl	$0, 144(%eax)
	movl	$0, 472(%eax)
	movl	$0, 12(%ecx)
	movl	$0, 16(%ecx)
	movl	$0, 24(%ecx)
	movl	$0, 164(%ecx)
	popl	%ebp
	retl

	.p2align	4, 0x90
_read_markers:                          ## @read_markers
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$604, %esp              ## imm = 0x25C
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	8(%ebp), %esi
	movl	%eax, -588(%ebp)        ## 4-byte Spill
	movl	L___stack_chk_guard$non_lazy_ptr-L4$pb(%eax), %eax
	movl	%eax, -592(%ebp)        ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	472(%esi), %edi
	jmp	LBB4_2
	.p2align	4, 0x90
LBB4_1:                                 ##   in Loop: Header=BB4_2 Depth=1
	movl	$0, 472(%esi)
	xorl	%edi, %edi
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_82 Depth 2
                                        ##       Child Loop BB4_90 Depth 3
                                        ##       Child Loop BB4_107 Depth 3
                                        ##     Child Loop BB4_54 Depth 2
                                        ##       Child Loop BB4_58 Depth 3
                                        ##       Child Loop BB4_67 Depth 3
	testl	%edi, %edi
	jne	LBB4_17
## BB#3:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	496(%esi), %eax
	cmpl	$0, 12(%eax)
	je	LBB4_6
## BB#4:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, %ecx
	calll	_next_marker
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#5:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	472(%esi), %edi
	jmp	LBB4_17
LBB4_6:                                 ##   in Loop: Header=BB4_2 Depth=1
	movl	24(%esi), %edi
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	jne	LBB4_9
## BB#7:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	*12(%edi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#8:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	4(%edi), %ebx
LBB4_9:                                 ##   in Loop: Header=BB4_2 Depth=1
	movl	(%edi), %esi
	decl	%ebx
	movzbl	(%esi), %edx
	movl	%edi, -568(%ebp)        ## 4-byte Spill
	je	LBB4_11
## BB#10:                               ##   in Loop: Header=BB4_2 Depth=1
	incl	%esi
	jmp	LBB4_13
LBB4_11:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%edx, -572(%ebp)        ## 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	*12(%edi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#12:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	(%edi), %esi
	movl	4(%edi), %ebx
	movl	-572(%ebp), %edx        ## 4-byte Reload
LBB4_13:                                ##   in Loop: Header=BB4_2 Depth=1
	decl	%ebx
	movb	(%esi), %al
	incl	%esi
	movzbl	%al, %edi
	cmpb	$-1, %dl
	jne	LBB4_15
## BB#14:                               ##   in Loop: Header=BB4_2 Depth=1
	cmpb	$-40, %al
	je	LBB4_16
LBB4_15:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$53, 20(%eax)
	movl	%edx, 24(%eax)
	movl	%edi, 28(%eax)
	movl	%ecx, (%esp)
	calll	*(%eax)
LBB4_16:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%edi, 472(%eax)
	movl	-568(%ebp), %ecx        ## 4-byte Reload
	movl	%esi, (%ecx)
	movl	%ebx, 4(%ecx)
	movl	%eax, %esi
	.p2align	4, 0x90
LBB4_17:                                ##   in Loop: Header=BB4_2 Depth=1
	leal	-1(%edi), %eax
	cmpl	$253, %eax
	ja	LBB4_24
## BB#18:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	-588(%ebp), %ecx        ## 4-byte Reload
Ltmp0 = LJTI4_0-L4$pb
	movl	Ltmp0(%ecx,%eax,4), %eax
	addl	%ecx, %eax
	jmpl	*%eax
LBB4_19:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	496(%esi), %eax
	movl	%esi, (%esp)
	calll	*-864(%eax,%edi,4)
	jmp	LBB4_36
LBB4_20:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %eax
	movl	$92, 20(%eax)
	movl	%edi, 24(%eax)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	jmp	LBB4_1
LBB4_21:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %eax
	movl	$60, 20(%eax)
LBB4_22:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%edi, 24(%eax)
	movl	%esi, (%esp)
	calll	*(%eax)
	jmp	LBB4_1
LBB4_23:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	jmp	LBB4_32
LBB4_24:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %eax
	movl	$68, 20(%eax)
	jmp	LBB4_22
LBB4_25:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	jmp	LBB4_34
LBB4_26:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	24(%esi), %edi
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	jne	LBB4_29
## BB#27:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	*12(%edi)
	testl	%eax, %eax
	je	LBB4_128
## BB#28:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	4(%edi), %ebx
LBB4_29:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	(%edi), %edx
	movzbl	(%edx), %esi
	decl	%ebx
	movl	%edi, -568(%ebp)        ## 4-byte Spill
	je	LBB4_51
## BB#30:                               ##   in Loop: Header=BB4_2 Depth=1
	incl	%edx
	jmp	LBB4_53
LBB4_31:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
LBB4_32:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	$0, 4(%esp)
	jmp	LBB4_35
LBB4_33:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
LBB4_34:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	$1, 4(%esp)
LBB4_35:                                ##   in Loop: Header=BB4_2 Depth=1
	calll	_get_sof
	.p2align	4, 0x90
LBB4_36:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	LBB4_1
	jmp	LBB4_129
LBB4_37:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	calll	_get_dac
	jmp	LBB4_36
LBB4_38:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	calll	_get_soi
	jmp	LBB4_36
LBB4_39:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	24(%esi), %ecx
	movl	4(%ecx), %ebx
	testl	%ebx, %ebx
	jne	LBB4_42
## BB#40:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	movl	%ecx, %esi
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#41:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	4(%esi), %ebx
	movl	%esi, %ecx
LBB4_42:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	(%ecx), %edx
	movzbl	(%edx), %edi
	decl	%ebx
	je	LBB4_79
## BB#43:                               ##   in Loop: Header=BB4_2 Depth=1
	incl	%edx
	jmp	LBB4_81
LBB4_44:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	calll	_skip_variable
	jmp	LBB4_36
LBB4_45:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	24(%esi), %ebx
	movl	4(%ebx), %edi
	testl	%edi, %edi
	jne	LBB4_48
## BB#46:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	%esi, (%esp)
	calll	*12(%ebx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#47:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	4(%ebx), %edi
LBB4_48:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	%ebx, %esi
	movl	(%esi), %ebx
	movzbl	(%ebx), %ecx
	decl	%edi
	movl	%esi, -568(%ebp)        ## 4-byte Spill
	je	LBB4_112
## BB#49:                               ##   in Loop: Header=BB4_2 Depth=1
	incl	%ebx
	jmp	LBB4_114
LBB4_50:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	496(%esi), %eax
	movl	%esi, (%esp)
	calll	*28(%eax)
	jmp	LBB4_36
LBB4_51:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	*12(%edi)
	testl	%eax, %eax
	je	LBB4_128
## BB#52:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	(%edi), %edx
	movl	4(%edi), %ebx
LBB4_53:                                ##   in Loop: Header=BB4_2 Depth=1
	shll	$8, %esi
	decl	%ebx
	movzbl	(%edx), %eax
	incl	%edx
	orl	%esi, %eax
	addl	$-2, %eax
	cmpl	$17, %eax
	jl	LBB4_76
LBB4_54:                                ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB4_58 Depth 3
                                        ##       Child Loop BB4_67 Depth 3
	movl	%eax, -576(%ebp)        ## 4-byte Spill
	testl	%ebx, %ebx
	jne	LBB4_57
## BB#55:                               ##   in Loop: Header=BB4_54 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-568(%ebp), %edi        ## 4-byte Reload
	calll	*12(%edi)
	testl	%eax, %eax
	je	LBB4_128
## BB#56:                               ##   in Loop: Header=BB4_54 Depth=2
	movl	(%edi), %edx
	movl	4(%edi), %ebx
LBB4_57:                                ##   in Loop: Header=BB4_54 Depth=2
	movzbl	(%edx), %esi
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$80, 20(%eax)
	movl	%esi, -580(%ebp)        ## 4-byte Spill
	movl	%esi, 24(%eax)
	movl	%ecx, (%esp)
	movl	$1, 4(%esp)
	movl	%edx, %esi
	calll	*4(%eax)
	movl	%esi, %edx
	movw	$0, -50(%ebp)
	decl	%ebx
	incl	%edx
	xorl	%ecx, %ecx
	movl	$1, %edi
	.p2align	4, 0x90
LBB4_58:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_54 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	testl	%ebx, %ebx
	jne	LBB4_61
## BB#59:                               ##   in Loop: Header=BB4_58 Depth=3
	movl	%ecx, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-568(%ebp), %ebx        ## 4-byte Reload
	calll	*12(%ebx)
	testl	%eax, %eax
	je	LBB4_128
## BB#60:                               ##   in Loop: Header=BB4_58 Depth=3
	movl	(%ebx), %edx
	movl	4(%ebx), %ebx
	movl	%esi, %ecx
LBB4_61:                                ##   in Loop: Header=BB4_58 Depth=3
	movzbl	(%edx), %eax
	movw	%ax, -50(%ebp,%edi,2)
	addl	%eax, %ecx
	incl	%edi
	decl	%ebx
	incl	%edx
	cmpl	$17, %edi
	jl	LBB4_58
## BB#62:                               ##   in Loop: Header=BB4_54 Depth=2
	movl	%edx, %esi
	addl	$-17, -576(%ebp)        ## 4-byte Folded Spill
	movl	8(%ebp), %eax
	movl	%eax, %edi
	movl	(%edi), %eax
	pmovsxwd	-48(%ebp), %xmm0
	movdqu	%xmm0, 24(%eax)
	pmovsxwd	-40(%ebp), %xmm0
	movdqu	%xmm0, 40(%eax)
	movl	$86, 20(%eax)
	movl	%edi, (%esp)
	movl	$2, 4(%esp)
	movl	%ecx, -572(%ebp)        ## 4-byte Spill
	calll	*4(%eax)
	movl	(%edi), %eax
	pmovsxwd	-32(%ebp), %xmm0
	movdqu	%xmm0, 24(%eax)
	pmovsxwd	-24(%ebp), %xmm0
	movdqu	%xmm0, 40(%eax)
	movl	$86, 20(%eax)
	movl	%edi, (%esp)
	movl	$2, 4(%esp)
	calll	*4(%eax)
	movl	-572(%ebp), %ecx        ## 4-byte Reload
	cmpl	$256, %ecx              ## imm = 0x100
	jg	LBB4_64
## BB#63:                               ##   in Loop: Header=BB4_54 Depth=2
	cmpl	%ecx, -576(%ebp)        ## 4-byte Folded Reload
	jge	LBB4_65
LBB4_64:                                ##   in Loop: Header=BB4_54 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$8, 20(%eax)
	movl	%ecx, (%esp)
	calll	*(%eax)
	movl	-572(%ebp), %ecx        ## 4-byte Reload
LBB4_65:                                ##   in Loop: Header=BB4_54 Depth=2
	testl	%ecx, %ecx
	jle	LBB4_71
## BB#66:                               ##   in Loop: Header=BB4_54 Depth=2
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB4_67:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_54 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	testl	%ebx, %ebx
	jne	LBB4_70
## BB#68:                               ##   in Loop: Header=BB4_67 Depth=3
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-568(%ebp), %ebx        ## 4-byte Reload
	calll	*12(%ebx)
	testl	%eax, %eax
	je	LBB4_128
## BB#69:                               ##   in Loop: Header=BB4_67 Depth=3
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	movl	-572(%ebp), %ecx        ## 4-byte Reload
LBB4_70:                                ##   in Loop: Header=BB4_67 Depth=3
	decl	%ebx
	movzbl	(%esi), %eax
	incl	%esi
	movw	%ax, -562(%ebp,%edi,2)
	incl	%edi
	cmpl	%ecx, %edi
	jl	LBB4_67
LBB4_71:                                ##   in Loop: Header=BB4_54 Depth=2
	movl	%esi, -584(%ebp)        ## 4-byte Spill
	movl	-580(%ebp), %edi        ## 4-byte Reload
	leal	-16(%edi), %eax
	movl	%edi, %ecx
	andl	$16, %ecx
	cmovel	%edi, %eax
	testl	%ecx, %ecx
	movl	8(%ebp), %ecx
	movl	%ecx, %edx
	leal	132(%edx,%edi,4), %ecx
	leal	180(%edx,%edi,4), %edi
	cmovnel	%ecx, %edi
	cmpl	$4, %eax
	jb	LBB4_73
## BB#72:                               ##   in Loop: Header=BB4_54 Depth=2
	movl	8(%ebp), %ecx
	movl	%ecx, %edx
	movl	(%edx), %ecx
	movl	$30, 20(%ecx)
	movl	%eax, 24(%ecx)
	movl	%edx, (%esp)
	calll	*(%ecx)
LBB4_73:                                ##   in Loop: Header=BB4_54 Depth=2
	movl	-576(%ebp), %esi        ## 4-byte Reload
	subl	-572(%ebp), %esi        ## 4-byte Folded Reload
	movl	(%edi), %eax
	testl	%eax, %eax
	jne	LBB4_75
## BB#74:                               ##   in Loop: Header=BB4_54 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_jpeg_alloc_huff_table
	movl	%eax, (%edi)
LBB4_75:                                ##   in Loop: Header=BB4_54 Depth=2
	movzwl	-18(%ebp), %ecx
	movw	%cx, 32(%eax)
	movsd	-26(%ebp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%eax)
	movsd	-34(%ebp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, 16(%eax)
	movsd	-50(%ebp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-42(%ebp), %xmm1        ## xmm1 = mem[0],zero
	movsd	%xmm1, 8(%eax)
	movsd	%xmm0, (%eax)
	movl	(%edi), %eax
	addl	$34, %eax
	leal	-562(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$512, 8(%esp)           ## imm = 0x200
	calll	_memcpy
	cmpl	$16, %esi
	movl	%esi, %eax
	movl	-584(%ebp), %edx        ## 4-byte Reload
	jg	LBB4_54
LBB4_76:                                ##   in Loop: Header=BB4_2 Depth=1
	testl	%eax, %eax
	je	LBB4_78
## BB#77:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$11, 20(%eax)
	movl	%ecx, (%esp)
	movl	%edx, %esi
	calll	*(%eax)
	movl	%esi, %edx
LBB4_78:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	-568(%ebp), %eax        ## 4-byte Reload
	movl	%edx, (%eax)
	movl	%ebx, 4(%eax)
	movl	8(%ebp), %esi
	jmp	LBB4_1
LBB4_79:                                ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ecx, %esi
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#80:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %edx
	movl	4(%esi), %ebx
	movl	%esi, %ecx
LBB4_81:                                ##   in Loop: Header=BB4_2 Depth=1
	shll	$8, %edi
	decl	%ebx
	movzbl	(%edx), %eax
	incl	%edx
	movl	%edx, -580(%ebp)        ## 4-byte Spill
	orl	%edi, %eax
	cmpl	$3, %eax
	leal	-2(%eax), %eax
	movl	%ecx, -576(%ebp)        ## 4-byte Spill
	jb	LBB4_109
LBB4_82:                                ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB4_90 Depth 3
                                        ##       Child Loop BB4_107 Depth 3
	movl	%eax, -584(%ebp)        ## 4-byte Spill
	testl	%ebx, %ebx
	jne	LBB4_85
## BB#83:                               ##   in Loop: Header=BB4_82 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ecx, %esi
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#84:                               ##   in Loop: Header=BB4_82 Depth=2
	movl	(%esi), %eax
	movl	%eax, -580(%ebp)        ## 4-byte Spill
	movl	4(%esi), %ebx
LBB4_85:                                ##   in Loop: Header=BB4_82 Depth=2
	movl	-580(%ebp), %eax        ## 4-byte Reload
	movzbl	(%eax), %edi
	movl	%edi, %ecx
	shrl	$4, %ecx
	andl	$15, %edi
	movl	8(%ebp), %esi
	movl	(%esi), %eax
	movl	$81, 20(%eax)
	movl	%edi, 24(%eax)
	movl	%ecx, -572(%ebp)        ## 4-byte Spill
	movl	%ecx, 28(%eax)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	cmpl	$4, %edi
	jb	LBB4_87
## BB#86:                               ##   in Loop: Header=BB4_82 Depth=2
	movl	(%esi), %eax
	movl	$31, 20(%eax)
	movl	%edi, 24(%eax)
	movl	%esi, (%esp)
	calll	*(%eax)
LBB4_87:                                ##   in Loop: Header=BB4_82 Depth=2
	movl	164(%esi,%edi,4), %eax
	movl	%eax, -568(%ebp)        ## 4-byte Spill
	testl	%eax, %eax
	jne	LBB4_89
## BB#88:                               ##   in Loop: Header=BB4_82 Depth=2
	movl	8(%ebp), %eax
	movl	%eax, %esi
	movl	%esi, (%esp)
	calll	_jpeg_alloc_quant_table
	movl	%eax, -568(%ebp)        ## 4-byte Spill
	movl	%eax, 164(%esi,%edi,4)
LBB4_89:                                ##   in Loop: Header=BB4_82 Depth=2
	decl	%ebx
	movl	-580(%ebp), %ecx        ## 4-byte Reload
	incl	%ecx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB4_90:                                ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_82 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$0, -572(%ebp)          ## 4-byte Folded Reload
	je	LBB4_96
## BB#91:                               ##   in Loop: Header=BB4_90 Depth=3
	testl	%ebx, %ebx
	jne	LBB4_94
## BB#92:                               ##   in Loop: Header=BB4_90 Depth=3
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-576(%ebp), %esi        ## 4-byte Reload
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#93:                               ##   in Loop: Header=BB4_90 Depth=3
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
LBB4_94:                                ##   in Loop: Header=BB4_90 Depth=3
	movzbl	(%ecx), %esi
	decl	%ebx
	je	LBB4_100
## BB#95:                               ##   in Loop: Header=BB4_90 Depth=3
	incl	%ecx
	jmp	LBB4_102
	.p2align	4, 0x90
LBB4_96:                                ##   in Loop: Header=BB4_90 Depth=3
	testl	%ebx, %ebx
	jne	LBB4_99
## BB#97:                               ##   in Loop: Header=BB4_90 Depth=3
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-576(%ebp), %esi        ## 4-byte Reload
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#98:                               ##   in Loop: Header=BB4_90 Depth=3
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
LBB4_99:                                ##   in Loop: Header=BB4_90 Depth=3
	movzbl	(%ecx), %eax
	jmp	LBB4_103
	.p2align	4, 0x90
LBB4_100:                               ##   in Loop: Header=BB4_90 Depth=3
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-576(%ebp), %ebx        ## 4-byte Reload
	calll	*12(%ebx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#101:                              ##   in Loop: Header=BB4_90 Depth=3
	movl	(%ebx), %ecx
	movl	4(%ebx), %eax
	movl	%eax, %ebx
LBB4_102:                               ##   in Loop: Header=BB4_90 Depth=3
	shll	$8, %esi
	movzbl	(%ecx), %eax
	orl	%esi, %eax
LBB4_103:                               ##   in Loop: Header=BB4_90 Depth=3
	movl	%ecx, %esi
	movl	-588(%ebp), %ecx        ## 4-byte Reload
	movl	L_jpeg_natural_order$non_lazy_ptr-L4$pb(%ecx), %ecx
	movl	(%ecx,%edi,4), %ecx
	movl	-568(%ebp), %edx        ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	incl	%edi
	decl	%ebx
	incl	%esi
	cmpl	$64, %edi
	movl	%esi, %ecx
	jl	LBB4_90
## BB#104:                              ##   in Loop: Header=BB4_82 Depth=2
	movl	%ecx, -580(%ebp)        ## 4-byte Spill
	movl	8(%ebp), %esi
	movl	(%esi), %eax
	cmpl	$2, 104(%eax)
	jl	LBB4_108
## BB#105:                              ##   in Loop: Header=BB4_82 Depth=2
	movl	$8, %edi
	jmp	LBB4_107
	.p2align	4, 0x90
LBB4_106:                               ##   in Loop: Header=BB4_107 Depth=3
	movl	(%esi), %eax
	addl	$8, %edi
LBB4_107:                               ##   Parent Loop BB4_2 Depth=1
                                        ##     Parent Loop BB4_82 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-568(%ebp), %edx        ## 4-byte Reload
	movl	-32(%edx,%edi,4), %ecx
	movl	%ecx, 24(%eax)
	movl	-28(%edx,%edi,4), %ecx
	movl	%ecx, 28(%eax)
	movl	-24(%edx,%edi,4), %ecx
	movl	%ecx, 32(%eax)
	movl	-20(%edx,%edi,4), %ecx
	movl	%ecx, 36(%eax)
	movl	-16(%edx,%edi,4), %ecx
	movl	%ecx, 40(%eax)
	movl	-12(%edx,%edi,4), %ecx
	movl	%ecx, 44(%eax)
	movl	-8(%edx,%edi,4), %ecx
	movl	%ecx, 48(%eax)
	movl	-4(%edx,%edi,4), %ecx
	movl	%ecx, 52(%eax)
	movl	$93, 20(%eax)
	movl	%esi, (%esp)
	movl	$2, 4(%esp)
	calll	*4(%eax)
	cmpl	$63, %edi
	jle	LBB4_106
LBB4_108:                               ##   in Loop: Header=BB4_82 Depth=2
	cmpl	$0, -572(%ebp)          ## 4-byte Folded Reload
	movl	$-129, %eax
	movl	$-65, %ecx
	cmovel	%ecx, %eax
	movl	-584(%ebp), %ecx        ## 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	movl	-576(%ebp), %ecx        ## 4-byte Reload
	jg	LBB4_82
LBB4_109:                               ##   in Loop: Header=BB4_2 Depth=1
	testl	%eax, %eax
	je	LBB4_111
## BB#110:                              ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$11, 20(%eax)
	movl	%ecx, (%esp)
	calll	*(%eax)
	movl	-576(%ebp), %ecx        ## 4-byte Reload
LBB4_111:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	-580(%ebp), %eax        ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	%ebx, 4(%ecx)
	movl	8(%ebp), %esi
	jmp	LBB4_1
LBB4_112:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	%ecx, -572(%ebp)        ## 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#113:                              ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %ebx
	movl	4(%esi), %edi
	movl	-572(%ebp), %ecx        ## 4-byte Reload
LBB4_114:                               ##   in Loop: Header=BB4_2 Depth=1
	shll	$8, %ecx
	decl	%edi
	movzbl	(%ebx), %eax
	orl	%ecx, %eax
	cmpl	$4, %eax
	je	LBB4_116
## BB#115:                              ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$11, 20(%eax)
	movl	%ecx, (%esp)
	calll	*(%eax)
LBB4_116:                               ##   in Loop: Header=BB4_2 Depth=1
	testl	%edi, %edi
	je	LBB4_118
## BB#117:                              ##   in Loop: Header=BB4_2 Depth=1
	incl	%ebx
	jmp	LBB4_120
LBB4_118:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-568(%ebp), %esi        ## 4-byte Reload
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#119:                              ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %ebx
	movl	4(%esi), %edi
LBB4_120:                               ##   in Loop: Header=BB4_2 Depth=1
	movzbl	(%ebx), %eax
	decl	%edi
	je	LBB4_122
## BB#121:                              ##   in Loop: Header=BB4_2 Depth=1
	incl	%ebx
	jmp	LBB4_124
LBB4_122:                               ##   in Loop: Header=BB4_2 Depth=1
	movl	%eax, -572(%ebp)        ## 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-568(%ebp), %esi        ## 4-byte Reload
	calll	*12(%esi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#123:                              ##   in Loop: Header=BB4_2 Depth=1
	movl	(%esi), %ebx
	movl	4(%esi), %edi
	movl	-572(%ebp), %eax        ## 4-byte Reload
LBB4_124:                               ##   in Loop: Header=BB4_2 Depth=1
	shll	$8, %eax
	decl	%edi
	movzbl	(%ebx), %esi
	incl	%ebx
	orl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$82, 20(%eax)
	movl	%esi, 24(%eax)
	movl	%ecx, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	movl	8(%ebp), %ecx
	movl	%esi, 324(%ecx)
	movl	-568(%ebp), %eax        ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	%ecx, %esi
	movl	%edi, 4(%eax)
	jmp	LBB4_1
LBB4_125:
	movl	(%esi), %eax
	movl	$85, 20(%eax)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	movl	$0, 472(%esi)
	movl	$2, %eax
	jmp	LBB4_129
LBB4_126:
	movl	%esi, (%esp)
	calll	_get_sos
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB4_129
## BB#127:
	movl	$0, 472(%esi)
	movl	$1, %eax
	jmp	LBB4_129
LBB4_128:
	xorl	%eax, %eax
LBB4_129:
	movl	-592(%ebp), %ecx        ## 4-byte Reload
	movl	(%ecx), %ecx
	cmpl	-16(%ebp), %ecx
	jne	LBB4_131
## BB#130:
	addl	$604, %esp              ## imm = 0x25C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB4_131:
	calll	___stack_chk_fail
	.p2align	2, 0x90
	.data_region jt32
L4_0_set_20 = LBB4_20-L4$pb
L4_0_set_24 = LBB4_24-L4$pb
L4_0_set_23 = LBB4_23-L4$pb
L4_0_set_25 = LBB4_25-L4$pb
L4_0_set_21 = LBB4_21-L4$pb
L4_0_set_26 = LBB4_26-L4$pb
L4_0_set_31 = LBB4_31-L4$pb
L4_0_set_33 = LBB4_33-L4$pb
L4_0_set_37 = LBB4_37-L4$pb
L4_0_set_38 = LBB4_38-L4$pb
L4_0_set_125 = LBB4_125-L4$pb
L4_0_set_126 = LBB4_126-L4$pb
L4_0_set_39 = LBB4_39-L4$pb
L4_0_set_44 = LBB4_44-L4$pb
L4_0_set_45 = LBB4_45-L4$pb
L4_0_set_19 = LBB4_19-L4$pb
L4_0_set_50 = LBB4_50-L4$pb
LJTI4_0:
	.long	L4_0_set_20
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_23
	.long	L4_0_set_23
	.long	L4_0_set_25
	.long	L4_0_set_21
	.long	L4_0_set_26
	.long	L4_0_set_21
	.long	L4_0_set_21
	.long	L4_0_set_21
	.long	L4_0_set_21
	.long	L4_0_set_31
	.long	L4_0_set_33
	.long	L4_0_set_21
	.long	L4_0_set_37
	.long	L4_0_set_21
	.long	L4_0_set_21
	.long	L4_0_set_21
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_20
	.long	L4_0_set_38
	.long	L4_0_set_125
	.long	L4_0_set_126
	.long	L4_0_set_39
	.long	L4_0_set_44
	.long	L4_0_set_45
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_19
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_50
	.end_data_region

	.p2align	4, 0x90
_read_restart_marker:                   ## @read_restart_marker
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%eax
	movl	8(%ebp), %esi
	movl	472(%esi), %eax
	testl	%eax, %eax
	jne	LBB5_3
## BB#1:
	movl	%esi, %ecx
	calll	_next_marker
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB5_7
## BB#2:
	movl	472(%esi), %eax
LBB5_3:
	movl	496(%esi), %ecx
	movl	20(%ecx), %ecx
	leal	208(%ecx), %edx
	cmpl	%edx, %eax
	jne	LBB5_5
## BB#4:
	movl	(%esi), %eax
	movl	$98, 20(%eax)
	movl	%ecx, 24(%eax)
	subl	$8, %esp
	pushl	$3
	pushl	%esi
	calll	*4(%eax)
	addl	$16, %esp
	movl	$0, 472(%esi)
	jmp	LBB5_6
LBB5_5:
	movl	24(%esi), %eax
	subl	$8, %esp
	pushl	%ecx
	pushl	%esi
	calll	*20(%eax)
	addl	$16, %esp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	LBB5_7
LBB5_6:
	movl	496(%esi), %eax
	movl	20(%eax), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 20(%eax)
	movl	$1, %eax
LBB5_7:
	addl	$4, %esp
	popl	%esi
	popl	%ebp
	retl

	.p2align	4, 0x90
_skip_variable:                         ## @skip_variable
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	8(%ebp), %edx
	movl	24(%edx), %ebx
	movl	4(%ebx), %esi
	testl	%esi, %esi
	jne	LBB6_3
## BB#1:
	movl	%edx, %edi
	movl	%edx, (%esp)
	calll	*12(%ebx)
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB6_9
## BB#2:
	movl	4(%ebx), %esi
	movl	%edi, %edx
LBB6_3:
	movl	(%ebx), %edi
	movzbl	(%edi), %ecx
	decl	%esi
	je	LBB6_5
## BB#4:
	movl	%ebx, -20(%ebp)         ## 4-byte Spill
	incl	%edi
	jmp	LBB6_7
LBB6_5:
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	movl	%edx, (%esp)
	calll	*12(%ebx)
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB6_9
## BB#6:
	movl	(%ebx), %edi
	movl	%ebx, -20(%ebp)         ## 4-byte Spill
	movl	4(%ebx), %esi
	movl	8(%ebp), %edx
	movl	-16(%ebp), %ecx         ## 4-byte Reload
LBB6_7:
	shll	$8, %ecx
	decl	%esi
	movzbl	(%edi), %ebx
	incl	%edi
	orl	%ecx, %ebx
	movl	(%edx), %eax
	movl	$91, 20(%eax)
	movl	472(%edx), %ecx
	movl	%ecx, 24(%eax)
	leal	-2(%ebx), %ecx
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	movl	%ecx, 28(%eax)
	movl	%edx, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	movl	-20(%ebp), %eax         ## 4-byte Reload
	movl	%edi, (%eax)
	movl	%esi, 4(%eax)
	movl	$1, %esi
	cmpl	$3, %ebx
	jb	LBB6_9
## BB#8:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	24(%edx), %eax
	movl	-16(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	calll	*16(%eax)
LBB6_9:
	movl	%esi, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.p2align	4, 0x90
_get_interesting_appn:                  ## @get_interesting_appn
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L7$pb
L7$pb:
	popl	%eax
	movl	8(%ebp), %ecx
	movl	L___stack_chk_guard$non_lazy_ptr-L7$pb(%eax), %eax
	movl	%eax, -52(%ebp)         ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	24(%ecx), %ecx
	movl	4(%ecx), %edx
	testl	%edx, %edx
	jne	LBB7_3
## BB#1:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ecx, %edi
	calll	*12(%edi)
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB7_26
## BB#2:
	movl	4(%edi), %edx
	movl	%edi, %ecx
LBB7_3:
	movl	(%ecx), %esi
	movzbl	(%esi), %ebx
	decl	%edx
	je	LBB7_5
## BB#4:
	incl	%esi
	jmp	LBB7_7
LBB7_5:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ecx, %edi
	calll	*12(%edi)
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB7_26
## BB#6:
	movl	(%edi), %esi
	movl	4(%edi), %edx
	movl	%edi, %ecx
LBB7_7:
	shll	$8, %ebx
	movzbl	(%esi), %eax
	orl	%ebx, %eax
	xorl	%ebx, %ebx
	cmpl	$2, %eax
	leal	-2(%eax), %edi
	movl	$0, %eax
	cmoval	%edi, %eax
	movl	%edi, -40(%ebp)         ## 4-byte Spill
	cmpl	$13, %edi
	movl	$14, %edi
	cmovlel	%eax, %edi
	decl	%edx
	incl	%esi
	testl	%edi, %edi
	movl	%edi, -36(%ebp)         ## 4-byte Spill
	je	LBB7_12
	.p2align	4, 0x90
LBB7_8:                                 ## =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jne	LBB7_11
## BB#9:                                ##   in Loop: Header=BB7_8 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ecx, %edi
	calll	*12(%edi)
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB7_26
## BB#10:                               ##   in Loop: Header=BB7_8 Depth=1
	movl	(%edi), %esi
	movl	4(%edi), %edx
	movl	%edi, %ecx
	movl	-36(%ebp), %edi         ## 4-byte Reload
LBB7_11:                                ##   in Loop: Header=BB7_8 Depth=1
	movzbl	(%esi), %eax
	movb	%al, -30(%ebp,%ebx)
	incl	%ebx
	decl	%edx
	incl	%esi
	cmpl	%edi, %ebx
	jb	LBB7_8
LBB7_12:
	movl	-40(%ebp), %eax         ## 4-byte Reload
	subl	%edi, %eax
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	472(%eax), %eax
	cmpl	$238, %eax
	movl	%edx, -48(%ebp)         ## 4-byte Spill
	movl	%ecx, %ebx
	je	LBB7_15
## BB#13:
	cmpl	$224, %eax
	jne	LBB7_23
## BB#14:
	movl	%edi, 4(%esp)
	movl	-36(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	leal	-30(%ebp), %edx
	movl	8(%ebp), %ecx
	calll	_examine_app0
	jmp	LBB7_24
LBB7_15:
	cmpl	$12, -36(%ebp)          ## 4-byte Folded Reload
	jb	LBB7_22
## BB#16:
	cmpb	$65, -30(%ebp)
	jne	LBB7_22
## BB#17:
	cmpb	$100, -29(%ebp)
	jne	LBB7_22
## BB#18:
	cmpb	$111, -28(%ebp)
	jne	LBB7_22
## BB#19:
	cmpb	$98, -27(%ebp)
	jne	LBB7_22
## BB#20:
	cmpb	$101, -26(%ebp)
	jne	LBB7_22
## BB#21:
	movzbl	-25(%ebp), %eax
	shll	$8, %eax
	movzbl	-24(%ebp), %ecx
	orl	%eax, %ecx
	movl	%ecx, -36(%ebp)         ## 4-byte Spill
	movzbl	-23(%ebp), %eax
	shll	$8, %eax
	movzbl	-22(%ebp), %ecx
	orl	%eax, %ecx
	movl	%ecx, -40(%ebp)         ## 4-byte Spill
	movzbl	-21(%ebp), %eax
	shll	$8, %eax
	movzbl	-20(%ebp), %ecx
	orl	%eax, %ecx
	movzbl	-19(%ebp), %eax
	movl	%eax, -44(%ebp)         ## 4-byte Spill
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-36(%ebp), %edx         ## 4-byte Reload
	movl	%edx, 24(%eax)
	movl	-40(%ebp), %edx         ## 4-byte Reload
	movl	%edx, 28(%eax)
	movl	%ecx, 32(%eax)
	movl	-44(%ebp), %ecx         ## 4-byte Reload
	movzwl	%cx, %ecx
	movl	%ecx, -36(%ebp)         ## 4-byte Spill
	movl	%ecx, 36(%eax)
	movl	$76, 20(%eax)
	movl	8(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	movl	8(%ebp), %eax
	movl	$1, 348(%eax)
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	movw	%cx, 352(%eax)
	jmp	LBB7_24
LBB7_23:
	movl	8(%ebp), %ecx
	movl	%ecx, %edx
	movl	(%edx), %ecx
	movl	$68, 20(%ecx)
	movl	%eax, 24(%ecx)
	movl	%edx, (%esp)
	calll	*(%ecx)
	jmp	LBB7_24
LBB7_22:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	(%ecx), %eax
	movl	$78, 20(%eax)
	movl	-40(%ebp), %edx         ## 4-byte Reload
	movl	%edx, 24(%eax)
	movl	%ecx, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
LBB7_24:
	movl	%esi, (%ebx)
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	$1, %esi
	testl	%edi, %edi
	jle	LBB7_26
## BB#25:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	24(%ecx), %eax
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	calll	*16(%eax)
LBB7_26:
	movl	-52(%ebp), %eax         ## 4-byte Reload
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	LBB7_28
## BB#27:
	movl	%esi, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB7_28:
	calll	___stack_chk_fail

	.globl	_jpeg_save_markers
	.p2align	4, 0x90
_jpeg_save_markers:                     ## @jpeg_save_markers
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	calll	L8$pb
L8$pb:
	popl	%edi
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	4(%edx), %esi
	movl	48(%esi), %ebx
	addl	$-20, %ebx
	cmpl	%ecx, %ebx
	cmovgl	%ecx, %ebx
	movl	496(%edx), %ecx
	testl	%ebx, %ebx
	je	LBB8_5
## BB#1:
	cmpl	$224, %eax
	jne	LBB8_4
## BB#2:
	cmpl	$14, %ebx
	jae	LBB8_4
## BB#3:
	leal	_save_marker-L8$pb(%edi), %edi
	movl	$14, %esi
	jmp	LBB8_9
LBB8_5:
	cmpl	$238, %eax
	leal	_get_interesting_appn-L8$pb(%edi), %esi
	leal	_skip_variable-L8$pb(%edi), %edi
	cmovel	%esi, %edi
	cmpl	$224, %eax
	cmovel	%esi, %edi
	xorl	%esi, %esi
	jmp	LBB8_6
LBB8_4:
	cmpl	$12, %ebx
	movl	$12, %esi
	cmovael	%ebx, %esi
	cmpl	$238, %eax
	cmovnel	%ebx, %esi
	leal	_save_marker-L8$pb(%edi), %edi
LBB8_6:
	cmpl	$254, %eax
	jne	LBB8_8
## BB#7:
	movl	%edi, 28(%ecx)
	movl	%esi, 96(%ecx)
	jmp	LBB8_10
LBB8_8:
	movl	%eax, %ebx
	andl	$-16, %ebx
	cmpl	$224, %ebx
	jne	LBB8_11
LBB8_9:
	movl	%edi, -864(%ecx,%eax,4)
	movl	%esi, -796(%ecx,%eax,4)
LBB8_10:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB8_11:
	movl	(%edx), %ecx
	movl	$68, 20(%ecx)
	movl	%eax, 24(%ecx)
	movl	(%ecx), %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	jmpl	*%eax                   ## TAILCALL

	.p2align	4, 0x90
_save_marker:                           ## @save_marker
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	movl	8(%ebp), %ebx
	movl	24(%ebx), %ecx
	movl	496(%ebx), %esi
	movl	164(%esi), %edi
	movl	(%ecx), %edx
	testl	%edi, %edi
	movl	4(%ecx), %eax
	movl	%ecx, -36(%ebp)         ## 4-byte Spill
	movl	%esi, -40(%ebp)         ## 4-byte Spill
	je	LBB9_1
## BB#11:
	movl	168(%esi), %ebx
	movl	%edi, -32(%ebp)         ## 4-byte Spill
	movl	-32(%ebp), %edi         ## 4-byte Reload
	movl	12(%edi), %edi
	movl	%edi, -24(%ebp)         ## 4-byte Spill
	movl	-32(%ebp), %edi         ## 4-byte Reload
	movl	16(%edi), %edi
	addl	%ebx, %edi
	movl	$0, -28(%ebp)           ## 4-byte Folded Spill
	jmp	LBB9_12
LBB9_1:
	testl	%eax, %eax
	jne	LBB9_4
## BB#2:
	movl	%ebx, %edi
	movl	%ebx, (%esp)
	movl	%ecx, %esi
	calll	*12(%esi)
	movl	%esi, %ecx
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB9_57
## BB#3:
	movl	(%ecx), %edx
	movl	4(%ecx), %eax
	movl	%edi, %ebx
LBB9_4:
	movzbl	(%edx), %edi
	decl	%eax
	je	LBB9_6
## BB#5:
	incl	%edx
	jmp	LBB9_8
LBB9_6:
	movl	%ebx, (%esp)
	movl	%ecx, %esi
	calll	*12(%esi)
	movl	%esi, %ecx
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB9_57
## BB#7:
	movl	(%ecx), %edx
	movl	4(%ecx), %eax
	movl	8(%ebp), %ebx
LBB9_8:
	shll	$8, %edi
	decl	%eax
	movzbl	(%edx), %esi
	incl	%edx
	orl	%edi, %esi
	addl	$-2, %esi
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movl	%esi, -28(%ebp)         ## 4-byte Spill
	js	LBB9_9
## BB#10:
	movl	4(%ebx), %eax
	movl	472(%ebx), %ecx
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %edi         ## 4-byte Reload
	leal	96(%edi), %edx
	cmpl	$254, %ecx
	leal	-796(%edi,%ecx,4), %ecx
	cmovel	%edx, %ecx
	movl	(%ecx), %edi
	cmpl	%edi, %esi
	cmovbl	%esi, %edi
	leal	20(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 8(%esp)
	movl	$1, 4(%esp)
	calll	*4(%eax)
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	movl	-20(%ebp), %edx         ## 4-byte Reload
	movl	%eax, %ebx
	movl	$0, (%ebx)
	movl	8(%ebp), %eax
	movzwl	472(%eax), %eax
	movw	%ax, 4(%ebx)
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%esi, 8(%ebx)
	movl	-40(%ebp), %esi         ## 4-byte Reload
	movl	%edi, -24(%ebp)         ## 4-byte Spill
	movl	%edi, 12(%ebx)
	leal	20(%ebx), %edi
	movl	%edi, 16(%ebx)
	movl	%ebx, -32(%ebp)         ## 4-byte Spill
	movl	%ebx, 164(%esi)
	movl	$0, 168(%esi)
	xorl	%ebx, %ebx
	jmp	LBB9_12
	.p2align	4, 0x90
LBB9_26:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	-20(%ebp), %edx         ## 4-byte Reload
	movl	-44(%ebp), %ebx         ## 4-byte Reload
LBB9_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_36 Depth 2
                                        ##     Child Loop BB9_39 Depth 2
                                        ##     Child Loop BB9_42 Depth 2
	cmpl	-24(%ebp), %ebx         ## 4-byte Folded Reload
	jae	LBB9_13
## BB#22:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	%edx, (%ecx)
	movl	%eax, 4(%ecx)
	movl	%ebx, 168(%esi)
	testl	%eax, %eax
	jne	LBB9_25
## BB#23:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ecx, %esi
	calll	*12(%esi)
	movl	%esi, %ecx
	xorl	%esi, %esi
	testl	%eax, %eax
	je	LBB9_57
## BB#24:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	(%ecx), %edx
	movl	4(%ecx), %eax
	movl	-40(%ebp), %esi         ## 4-byte Reload
LBB9_25:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	movl	%ebx, -44(%ebp)         ## 4-byte Spill
	subl	-24(%ebp), %ebx         ## 4-byte Folded Reload
	jae	LBB9_26
## BB#27:                               ##   in Loop: Header=BB9_12 Depth=1
	testl	%eax, %eax
	je	LBB9_26
## BB#28:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	negl	%eax
	cmpl	%eax, %ebx
	movl	%ebx, %edx
	cmovbl	%eax, %edx
	negl	%edx
	cmpl	$32, %edx
	jb	LBB9_29
## BB#30:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	%edx, %esi
	andl	$-32, %esi
	movl	%esi, -48(%ebp)         ## 4-byte Spill
	je	LBB9_29
## BB#31:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	%edx, -52(%ebp)         ## 4-byte Spill
	cmpl	%eax, %ebx
	movl	%ebx, %ecx
	cmovbl	%eax, %ecx
	movl	-20(%ebp), %edx         ## 4-byte Reload
	movl	%edx, %esi
	subl	%ecx, %esi
	cmpl	%esi, %edi
	jae	LBB9_34
## BB#32:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	%edi, %esi
	subl	%ecx, %esi
	cmpl	%esi, %edx
	jb	LBB9_33
LBB9_34:                                ##   in Loop: Header=BB9_12 Depth=1
	cmpl	%eax, %ebx
	cmovbl	%eax, %ebx
	movl	$-32, %esi
	subl	%ebx, %esi
	movl	%esi, %ecx
	shrl	$5, %ecx
	incl	%ecx
	xorl	%eax, %eax
	andl	$3, %ecx
	je	LBB9_37
## BB#35:                               ##   in Loop: Header=BB9_12 Depth=1
	negl	%ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB9_36:                                ##   Parent Loop BB9_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	(%edx,%eax), %xmm0
	movups	16(%edx,%eax), %xmm1
	movups	%xmm0, (%edi,%eax)
	movups	%xmm1, 16(%edi,%eax)
	addl	$32, %eax
	incl	%ecx
	jne	LBB9_36
LBB9_37:                                ##   in Loop: Header=BB9_12 Depth=1
	cmpl	$96, %esi
	movl	-44(%ebp), %ebx         ## 4-byte Reload
	jb	LBB9_40
## BB#38:                               ##   in Loop: Header=BB9_12 Depth=1
	movl	-48(%ebp), %edx         ## 4-byte Reload
	subl	%eax, %edx
	leal	112(%edi,%eax), %ecx
	movl	-20(%ebp), %esi         ## 4-byte Reload
	leal	112(%esi,%eax), %eax
	.p2align	4, 0x90
LBB9_39:                                ##   Parent Loop BB9_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	-112(%eax), %xmm0
	movups	-96(%eax), %xmm1
	movups	%xmm0, -112(%ecx)
	movups	%xmm1, -96(%ecx)
	movups	-80(%eax), %xmm0
	movups	-64(%eax), %xmm1
	movups	%xmm0, -80(%ecx)
	movups	%xmm1, -64(%ecx)
	movups	-48(%eax), %xmm0
	movups	-32(%eax), %xmm1
	movups	%xmm0, -48(%ecx)
	movups	%xmm1, -32(%ecx)
	movups	-16(%eax), %xmm0
	movups	(%eax), %xmm1
	movups	%xmm0, -16(%ecx)
	movups	%xmm1, (%ecx)
	subl	$-128, %ecx
	subl	$-128, %eax
	addl	$-128, %edx
	jne	LBB9_39
LBB9_40:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	subl	%ecx, %eax
	movl	-20(%ebp), %edx         ## 4-byte Reload
	addl	%ecx, %edx
	addl	%ecx, %edi
	addl	%ecx, %ebx
	cmpl	-52(%ebp), %ecx         ## 4-byte Folded Reload
	movl	-40(%ebp), %esi         ## 4-byte Reload
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	je	LBB9_12
	jmp	LBB9_41
	.p2align	4, 0x90
LBB9_29:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	-20(%ebp), %edx         ## 4-byte Reload
LBB9_33:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	-44(%ebp), %ebx         ## 4-byte Reload
LBB9_41:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	%edx, %esi
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	decl	%eax
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB9_42:                                ##   Parent Loop BB9_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%esi,%edx), %ecx
	movb	%cl, (%edi,%edx)
	leal	1(%ebx,%edx), %ecx
	cmpl	-24(%ebp), %ecx         ## 4-byte Folded Reload
	leal	1(%edx), %ecx
	jae	LBB9_44
## BB#43:                               ##   in Loop: Header=BB9_42 Depth=2
	cmpl	%edx, %eax
	movl	%ecx, %edx
	jne	LBB9_42
LBB9_44:                                ##   in Loop: Header=BB9_12 Depth=1
	movl	-16(%ebp), %eax         ## 4-byte Reload
	subl	%ecx, %eax
	movl	%esi, %edx
	addl	%ecx, %edx
	addl	%ecx, %edi
	addl	%ecx, %ebx
	movl	-40(%ebp), %esi         ## 4-byte Reload
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	jmp	LBB9_12
LBB9_13:
	cmpl	$0, -32(%ebp)           ## 4-byte Folded Reload
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movl	8(%ebp), %ebx
	je	LBB9_19
## BB#14:
	movl	360(%ebx), %eax
	testl	%eax, %eax
	je	LBB9_58
## BB#15:
	movl	%ecx, %edi
	.p2align	4, 0x90
LBB9_16:                                ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	LBB9_16
## BB#17:
	movl	-32(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	%edi, %ecx
	movl	%eax, %edi
	jmp	LBB9_18
LBB9_58:
	movl	-32(%ebp), %edi         ## 4-byte Reload
	movl	%edi, 360(%ebx)
LBB9_18:
	movl	8(%edi), %eax
	movl	16(%edi), %edi
	subl	-24(%ebp), %eax         ## 4-byte Folded Reload
	movl	%eax, -28(%ebp)         ## 4-byte Spill
LBB9_19:
	movl	$0, 164(%esi)
	movl	472(%ebx), %eax
	cmpl	$238, %eax
	je	LBB9_45
## BB#20:
	movl	%edx, %esi
	cmpl	$224, %eax
	jne	LBB9_53
## BB#21:
	movl	-28(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	calll	_examine_app0
	jmp	LBB9_54
LBB9_45:
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	movl	-24(%ebp), %edx         ## 4-byte Reload
	cmpl	$12, %edx
	jb	LBB9_52
## BB#46:
	cmpb	$65, (%edi)
	jne	LBB9_52
## BB#47:
	cmpb	$100, 1(%edi)
	jne	LBB9_52
## BB#48:
	cmpb	$111, 2(%edi)
	jne	LBB9_52
## BB#49:
	cmpb	$98, 3(%edi)
	jne	LBB9_52
## BB#50:
	cmpb	$101, 4(%edi)
	jne	LBB9_52
## BB#51:
	movzbl	5(%edi), %eax
	shll	$8, %eax
	movzbl	6(%edi), %ecx
	orl	%eax, %ecx
	movzbl	7(%edi), %eax
	shll	$8, %eax
	movzbl	8(%edi), %edx
	orl	%eax, %edx
	movzbl	9(%edi), %eax
	shll	$8, %eax
	movzbl	10(%edi), %esi
	orl	%eax, %esi
	movzbl	11(%edi), %eax
	movl	(%ebx), %edi
	movl	%ecx, 24(%edi)
	movl	%edx, 28(%edi)
	movl	%esi, 32(%edi)
	movzwl	%ax, %esi
	movl	%esi, 36(%edi)
	movl	$76, 20(%edi)
	movl	%ebx, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%edi)
	movl	$1, 348(%ebx)
	movw	%si, 352(%ebx)
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	movl	-20(%ebp), %esi         ## 4-byte Reload
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	-28(%ebp), %edi         ## 4-byte Reload
	jmp	LBB9_55
LBB9_53:
	movl	(%ebx), %ecx
	movl	$91, 20(%ecx)
	movl	%eax, 24(%ecx)
	movl	-28(%ebp), %edi         ## 4-byte Reload
	movl	-24(%ebp), %eax         ## 4-byte Reload
	addl	%edi, %eax
	movl	%eax, 28(%ecx)
	movl	%ebx, (%esp)
	movl	$1, 4(%esp)
	calll	*4(%ecx)
LBB9_54:
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	jmp	LBB9_55
LBB9_52:
	movl	(%ebx), %eax
	movl	$78, 20(%eax)
	movl	-28(%ebp), %edi         ## 4-byte Reload
	addl	%edi, %edx
	movl	%edx, 24(%eax)
	movl	%ebx, (%esp)
	movl	$1, 4(%esp)
	movl	%ecx, %esi
	calll	*4(%eax)
	movl	%esi, %ecx
	movl	-20(%ebp), %esi         ## 4-byte Reload
	movl	-16(%ebp), %eax         ## 4-byte Reload
LBB9_55:
	movl	%esi, (%ecx)
	movl	%eax, 4(%ecx)
	movl	$1, %esi
	testl	%edi, %edi
	jle	LBB9_57
## BB#56:
	movl	24(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	*16(%eax)
LBB9_57:
	movl	%esi, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB9_9:
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	xorl	%edi, %edi
	movl	-40(%ebp), %esi         ## 4-byte Reload
	jmp	LBB9_19

	.p2align	4, 0x90
_examine_app0:                          ## @examine_app0
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	%edx, %edi
	movl	%ecx, %esi
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	addl	%eax, %ebx
	cmpl	$14, %eax
	jb	LBB10_15
## BB#1:
	cmpb	$74, (%edi)
	jne	LBB10_28
## BB#2:
	cmpb	$70, 1(%edi)
	jne	LBB10_17
## BB#3:
	cmpb	$73, 2(%edi)
	jne	LBB10_17
## BB#4:
	cmpb	$70, 3(%edi)
	jne	LBB10_17
## BB#5:
	cmpb	$0, 4(%edi)
	jne	LBB10_17
## BB#6:
	movl	$1, 328(%esi)
	movzbl	5(%edi), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movw	%ax, 332(%esi)
	movzbl	6(%edi), %eax
	movw	%ax, 334(%esi)
	movzbl	7(%edi), %ecx
	movl	%ecx, -20(%ebp)         ## 4-byte Spill
	movw	%cx, 336(%esi)
	movzbl	8(%edi), %ecx
	shll	$8, %ecx
	movzbl	9(%edi), %edx
	orl	%ecx, %edx
	movl	%edx, 340(%esi)
	movzbl	10(%edi), %ecx
	shll	$8, %ecx
	movzbl	11(%edi), %edx
	orl	%ecx, %edx
	movl	%edx, 344(%esi)
	movl	-16(%ebp), %edx         ## 4-byte Reload
	cmpl	$1, %edx
	jne	LBB10_8
## BB#7:
	movl	$1, -16(%ebp)           ## 4-byte Folded Spill
	jmp	LBB10_9
LBB10_15:
	cmpl	$6, %eax
	jb	LBB10_28
## BB#16:
	cmpb	$74, (%edi)
	jne	LBB10_28
LBB10_17:
	cmpb	$70, 1(%edi)
	jne	LBB10_28
## BB#18:
	cmpb	$88, 2(%edi)
	jne	LBB10_28
## BB#19:
	cmpb	$88, 3(%edi)
	jne	LBB10_28
## BB#20:
	cmpb	$0, 4(%edi)
	je	LBB10_21
LBB10_28:
	movl	(%esi), %eax
	movl	$77, 20(%eax)
LBB10_13:
	movl	%ebx, 24(%eax)
LBB10_14:
	subl	$8, %esp
	pushl	$1
	pushl	%esi
	calll	*4(%eax)
	addl	$28, %esp
LBB10_30:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB10_21:
	movb	5(%edi), %al
	cmpb	$19, %al
	je	LBB10_26
## BB#22:
	cmpb	$17, %al
	je	LBB10_25
## BB#23:
	cmpb	$16, %al
	jne	LBB10_27
## BB#24:
	movl	(%esi), %eax
	movl	$108, 20(%eax)
	jmp	LBB10_13
LBB10_8:
	movl	(%esi), %ecx
	movl	$119, 20(%ecx)
	movl	%edx, 24(%ecx)
	movzwl	%ax, %eax
	movl	%eax, 28(%ecx)
	subl	$8, %esp
	pushl	$-1
	pushl	%esi
	calll	*4(%ecx)
	addl	$16, %esp
	movl	332(%esi), %eax
	movswl	%ax, %ecx
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	shrl	$16, %eax
	movw	336(%esi), %cx
	movl	%ecx, -20(%ebp)         ## 4-byte Spill
LBB10_9:
	movl	(%esi), %ecx
	movl	-16(%ebp), %edx         ## 4-byte Reload
	movl	%edx, 24(%ecx)
	cwtl
	movl	%eax, 28(%ecx)
	movl	340(%esi), %eax
	movl	%eax, 32(%ecx)
	movl	344(%esi), %eax
	movl	%eax, 36(%ecx)
	movl	-20(%ebp), %eax         ## 4-byte Reload
	cwtl
	movl	%eax, 40(%ecx)
	movl	$87, 20(%ecx)
	subl	$8, %esp
	pushl	$1
	pushl	%esi
	calll	*4(%ecx)
	addl	$16, %esp
	movb	12(%edi), %al
	movb	13(%edi), %cl
	movl	%ecx, %edx
	orb	%al, %dl
	je	LBB10_11
## BB#10:
	movl	(%esi), %eax
	movl	$90, 20(%eax)
	movzbl	12(%edi), %ecx
	movl	%ecx, 24(%eax)
	movzbl	13(%edi), %ecx
	movl	%ecx, 28(%eax)
	subl	$8, %esp
	pushl	$1
	pushl	%esi
	calll	*4(%eax)
	addl	$16, %esp
	movb	12(%edi), %al
	movb	13(%edi), %cl
LBB10_11:
	addl	$-14, %ebx
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	imull	%eax, %ecx
	leal	(%ecx,%ecx,2), %eax
	cmpl	%eax, %ebx
	jne	LBB10_12
## BB#29:
	addl	$12, %esp
	jmp	LBB10_30
LBB10_12:
	movl	(%esi), %eax
	movl	$88, 20(%eax)
	jmp	LBB10_13
LBB10_26:
	movl	(%esi), %eax
	movl	$110, 20(%eax)
	jmp	LBB10_13
LBB10_25:
	movl	(%esi), %eax
	movl	$109, 20(%eax)
	jmp	LBB10_13
LBB10_27:
	movl	(%esi), %eax
	movl	$89, 20(%eax)
	movzbl	5(%edi), %ecx
	movl	%ecx, 24(%eax)
	movl	%ebx, 28(%eax)
	jmp	LBB10_14


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0
L_jpeg_natural_order$non_lazy_ptr:
	.indirect_symbol	_jpeg_natural_order
	.long	0

.subsections_via_symbols
