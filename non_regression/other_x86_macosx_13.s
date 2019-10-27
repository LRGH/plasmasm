	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_F2x_degree
	.align	4, 0x90
_F2x_degree:                            ## @F2x_degree
## BB#0:
	pushl	%esi
	movl	8(%esp), %edx
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%edx), %ecx
	movl	$-1, %eax
	cmpl	$2, %ecx
	je	LBB0_6
## BB#1:
	movl	-4(%edx,%ecx,4), %edx
	movl	%edx, %eax
	shrl	$16, %eax
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %eax
	movl	$12, %esi
	movl	$28, %edx
	cmoval	%esi, %edx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB0_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %eax
LBB0_3:
	calll	L0$pb
L0$pb:
	popl	%esi
	shll	$5, %ecx
	cmpl	$16, %eax
	jb	LBB0_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %eax
LBB0_5:
	addl	$-65, %ecx
	subl	%edx, %ecx
	subl	_F2x_degree_lg.__bfffo_tabshi-L0$pb(%esi,%eax,4), %ecx
	movl	%ecx, %eax
LBB0_6:                                 ## %F2x_degree_lg.exit
	popl	%esi
	retl

	.globl	_F2x_to_ZX
	.align	4, 0x90
_F2x_to_ZX:                             ## @F2x_to_ZX
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L1$pb
L1$pb:
	popl	%ebx
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	movl	80(%esp), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ecx), %eax
	movl	$2, %ebp
	cmpl	$2, %eax
	je	LBB1_6
## BB#1:
	movl	80(%esp), %ecx
	movl	-4(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %esi
	movl	$28, %edx
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB1_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB1_3:
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB1_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB1_5:
	addl	$-62, %eax
	subl	%edx, %eax
	subl	_F2x_degree_lg.__bfffo_tabshi-L1$pb(%ebx,%ecx,4), %eax
	movl	%eax, %ebp
LBB1_6:                                 ## %F2x_degree.exit
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L1$pb(%ebx), %esi
	movl	(%esi), %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	leal	(,%ebp,4), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, 20(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L1$pb(%ebx), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebp, %ecx
	jae	LBB1_8
## BB#7:
	movl	$14, (%esp)
	calll	_pari_err
LBB1_8:                                 ## %new_chunk.exit.i
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esi)
	cmpl	$16777216, %ebp         ## imm = 0x1000000
	jb	LBB1_10
## BB#9:
	leal	L_.str4-L1$pb(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB1_10:                                ## %cgetg.exit
	movl	%ebp, %eax
	orl	$335544320, %eax        ## imm = 0x14000000
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	80(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	cmpl	$3, %ecx
	jb	LBB1_21
## BB#11:                               ## %.preheader.preheader
	movl	%ebp, %ecx
	negl	%ecx
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	movl	$1, %ecx
	subl	%ebp, %ecx
	movl	28(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	$2, %esi
	movl	$2, %edi
	.align	4, 0x90
LBB1_12:                                ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_18 Depth 2
	movl	%esi, %edx
	subl	%ebp, %edx
	jge	LBB1_13
## BB#14:                               ## %.lr.ph
                                        ##   in Loop: Header=BB1_12 Depth=1
	cmpl	$-32, %edx
	movl	$-32, %eax
	cmoval	%edx, %eax
	movl	%eax, 48(%esp)          ## 4-byte Spill
	movl	32(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%esi), %ebp
	cmpl	$-32, %ebp
	movl	$-32, %eax
	cmovbel	%eax, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	notl	%ebp
	xorl	%eax, %eax
	testb	$1, %cl
	movl	%esi, %ecx
	je	LBB1_16
## BB#15:                               ##   in Loop: Header=BB1_12 Depth=1
	movl	80(%esp), %eax
	movl	(%eax,%edi,4), %eax
	testb	$1, %al
	movl	L_gen_0$non_lazy_ptr-L1$pb(%ebx), %eax
	cmovnel	L_gen_1$non_lazy_ptr-L1$pb(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx,%edx,4)
	movl	$1, %eax
	leal	1(%esi), %ecx
LBB1_16:                                ## %.lr.ph.split
                                        ##   in Loop: Header=BB1_12 Depth=1
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	%esi, 44(%esp)          ## 4-byte Spill
	testl	%ebp, %ebp
	movl	80(%esp), %ecx
	movl	%edi, %edx
	je	LBB1_19
## BB#17:                               ## %.lr.ph.split.split
                                        ##   in Loop: Header=BB1_12 Depth=1
	movl	48(%esp), %esi          ## 4-byte Reload
	notl	%esi
	movl	%esi, 52(%esp)          ## 4-byte Spill
	movl	%ecx, %esi
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	40(%esp), %edi          ## 4-byte Reload
	leal	(%ecx,%edi,4), %ebp
	movl	%esi, %ecx
	.align	4, 0x90
LBB1_18:                                ##   Parent Loop BB1_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%ecx,%edx,4), %esi
	btl	%eax, %esi
	movl	L_gen_1$non_lazy_ptr-L1$pb(%ebx), %esi
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L1$pb(%ecx), %ebx
	movl	%ebx, %edi
	cmovbl	%esi, %edi
	movl	(%edi), %edi
	movl	%edi, -4(%ebp)
	leal	1(%eax), %edi
	movl	%edx, %ecx
	movl	80(%esp), %edx
	movl	(%edx,%ecx,4), %edx
	btl	%edi, %edx
	cmovbl	%esi, %ebx
	movl	(%ebx), %edx
	movl	56(%esp), %ebx          ## 4-byte Reload
	movl	%edx, (%ebp)
	movl	%ecx, %edx
	movl	80(%esp), %ecx
	addl	$2, %eax
	addl	$8, %ebp
	cmpl	52(%esp), %edi          ## 4-byte Folded Reload
	jne	LBB1_18
LBB1_19:                                ## %..critedge_crit_edge
                                        ##   in Loop: Header=BB1_12 Depth=1
	movl	44(%esp), %esi          ## 4-byte Reload
	subl	48(%esp), %esi          ## 4-byte Folded Reload
	movl	(%ecx), %eax
	movl	36(%esp), %ebp          ## 4-byte Reload
	movl	%edx, %ecx
	jmp	LBB1_20
	.align	4, 0x90
LBB1_13:                                ##   in Loop: Header=BB1_12 Depth=1
	movl	%edi, %ecx
LBB1_20:                                ## %.critedge
                                        ##   in Loop: Header=BB1_12 Depth=1
	incl	%ecx
	movl	%ecx, %edi
	movl	%eax, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	cmpl	%edx, %edi
	jl	LBB1_12
LBB1_21:                                ## %._crit_edge
	cmpl	$2, %ebp
	setg	%al
	movzbl	%al, %eax
	shll	$30, %eax
	movl	80(%esp), %ecx
	orl	4(%ecx), %eax
	movl	$1, %ecx
	subl	%ebp, %ecx
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	movl	20(%esp), %eax          ## 4-byte Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2xC_to_ZXC
	.align	4, 0x90
_F2xC_to_ZXC:                           ## @F2xC_to_ZXC
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	movl	32(%esp), %edi
	movl	(%edi), %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	L_avma$non_lazy_ptr-L2$pb(%eax), %ebp
	movl	(%ebp), %ecx
	leal	(,%ebx,4), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	L_bot$non_lazy_ptr-L2$pb(%eax), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	jae	LBB2_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB2_2:                                 ## %cgetg.exit
	movl	%esi, (%ebp)
	movl	%ebx, %eax
	orl	$603979776, %eax        ## imm = 0x24000000
	movl	%eax, (%esi)
	cmpl	$2, %ebx
	jb	LBB2_5
## BB#3:                                ## %.lr.ph.preheader
	movl	$1, %ebp
	.align	4, 0x90
LBB2_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%ebp,4), %eax
	movl	%eax, (%esp)
	calll	_F2x_to_ZX
	movl	%eax, (%esi,%ebp,4)
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	LBB2_4
LBB2_5:                                 ## %._crit_edge
	movl	%esi, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_to_Flx
	.align	4, 0x90
_F2x_to_Flx:                            ## @F2x_to_Flx
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L3$pb
L3$pb:
	popl	%esi
	movl	64(%esp), %edi
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%edi), %eax
	movl	$2, %ecx
	cmpl	$2, %eax
	je	LBB3_6
## BB#1:
	movl	-4(%edi,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %ebx
	movl	$28, %edx
	cmoval	%ebx, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB3_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB3_3:
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB3_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB3_5:
	addl	$-62, %eax
	subl	%edx, %eax
	subl	_F2x_degree_lg.__bfffo_tabshi-L3$pb(%esi,%ecx,4), %eax
	movl	%eax, %ecx
LBB3_6:                                 ## %F2x_degree.exit
	movl	%ecx, %edx
	movl	L_avma$non_lazy_ptr-L3$pb(%esi), %ebx
	movl	(%ebx), %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	leal	(,%edx,4), %eax
	movl	%ecx, %ebp
	subl	%eax, %ebp
	movl	%ebp, 16(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L3$pb(%esi), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%edx, %ecx
	movl	%edx, %ebp
	jae	LBB3_8
## BB#7:
	movl	$14, (%esp)
	calll	_pari_err
LBB3_8:                                 ## %new_chunk.exit.i
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebx)
	movl	%ebp, %ebx
	movl	%ebx, 32(%esp)          ## 4-byte Spill
	cmpl	$16777216, %ebx         ## imm = 0x1000000
	jb	LBB3_10
## BB#9:
	leal	L_.str4-L3$pb(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB3_10:                                ## %cgetg.exit
	movl	%ebx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	16(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	4(%edi), %eax
	movl	$1, %ecx
	subl	%ebx, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	movl	(%edi), %eax
	movl	%eax, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	cmpl	$3, %edx
	jb	LBB3_20
## BB#11:                               ## %.preheader.preheader
	movl	%ebx, %edx
	negl	%edx
	movl	%edx, 28(%esp)          ## 4-byte Spill
	movl	24(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	movl	$2, %esi
	movl	$2, %ebp
	.align	4, 0x90
LBB3_12:                                ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_17 Depth 2
	movl	%esi, %edx
	subl	%ebx, %edx
	jge	LBB3_19
## BB#13:                               ## %.lr.ph
                                        ##   in Loop: Header=BB3_12 Depth=1
	cmpl	$-32, %edx
	movl	$-32, %eax
	cmoval	%edx, %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	movl	28(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%esi), %ecx
	cmpl	$-32, %ecx
	movl	$-32, %eax
	cmovbel	%eax, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	notl	%ecx
	xorl	%eax, %eax
	testb	$1, %bl
	movl	%esi, %ebx
	movl	%esi, 40(%esp)          ## 4-byte Spill
	je	LBB3_15
## BB#14:                               ##   in Loop: Header=BB3_12 Depth=1
	movl	(%edi,%ebp,4), %eax
	andl	$1, %eax
	movl	24(%esp), %esi          ## 4-byte Reload
	movl	%eax, (%esi,%edx,4)
	movl	$1, %eax
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	1(%edx), %ebx
LBB3_15:                                ## %.lr.ph.split
                                        ##   in Loop: Header=BB3_12 Depth=1
	testl	%ecx, %ecx
	je	LBB3_18
## BB#16:                               ## %.lr.ph.split.split
                                        ##   in Loop: Header=BB3_12 Depth=1
	movl	36(%esp), %edx          ## 4-byte Reload
	notl	%edx
	movl	20(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebx,4), %ebx
	.align	4, 0x90
LBB3_17:                                ##   Parent Loop BB3_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%edi,%ebp,4), %esi
	movb	%al, %cl
	shrl	%cl, %esi
	andl	$1, %esi
	movl	%esi, -4(%ebx)
	leal	1(%eax), %ecx
	movl	(%edi,%ebp,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	%esi, (%ebx)
	addl	$2, %eax
	addl	$8, %ebx
	cmpl	%edx, %ecx
	jne	LBB3_17
LBB3_18:                                ## %..critedge_crit_edge
                                        ##   in Loop: Header=BB3_12 Depth=1
	movl	40(%esp), %esi          ## 4-byte Reload
	subl	36(%esp), %esi          ## 4-byte Folded Reload
	movl	(%edi), %eax
	movl	32(%esp), %ebx          ## 4-byte Reload
LBB3_19:                                ## %.critedge
                                        ##   in Loop: Header=BB3_12 Depth=1
	incl	%ebp
	movl	%eax, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	cmpl	%ecx, %ebp
	jl	LBB3_12
LBB3_20:                                ## %._crit_edge
	movl	16(%esp), %eax          ## 4-byte Reload
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_Z_to_F2x
	.align	4, 0x90
_Z_to_F2x:                              ## @Z_to_F2x
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L4$pb
L4$pb:
	popl	%ebp
	movl	36(%esp), %edi
	movl	32(%esp), %eax
	movl	4(%eax), %ecx
	cmpl	$1073741823, %ecx       ## imm = 0x3FFFFFFF
	jbe	LBB4_1
## BB#5:                                ## %mpodd.exit
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	testb	$1, -4(%eax,%ecx,4)
	movl	L_avma$non_lazy_ptr-L4$pb(%ebp), %edi
	movl	(%edi), %ebx
	jne	LBB4_7
## BB#6:
	movl	36(%esp), %edi
	jmp	LBB4_2
LBB4_1:                                 ## %mpodd.exit.thread
	movl	L_avma$non_lazy_ptr-L4$pb(%ebp), %eax
	movl	(%eax), %ebx
LBB4_2:
	leal	-8(%ebx), %esi
	movl	L_bot$non_lazy_ptr-L4$pb(%ebp), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	cmpl	$7, %ecx
	ja	LBB4_4
## BB#3:
	movl	$14, (%esp)
	calll	_pari_err
LBB4_4:                                 ## %pol0_F2x.exit
	movl	L_avma$non_lazy_ptr-L4$pb(%ebp), %eax
	movl	%esi, (%eax)
	movl	$738197506, -8(%ebx)    ## imm = 0x2C000002
	movl	%edi, -4(%ebx)
	jmp	LBB4_10
LBB4_7:
	movl	%ebx, %esi
	addl	$-12, %esi
	movl	L_bot$non_lazy_ptr-L4$pb(%ebp), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	cmpl	$11, %ecx
	ja	LBB4_9
## BB#8:
	movl	$14, (%esp)
	calll	_pari_err
LBB4_9:                                 ## %pol1_F2x.exit
	movl	%esi, (%edi)
	movl	$738197507, -12(%ebx)   ## imm = 0x2C000003
	movl	36(%esp), %eax
	movl	%eax, -8(%ebx)
	movl	$1, -4(%ebx)
LBB4_10:
	movl	%esi, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_ZX_to_F2x
	.align	4, 0x90
_ZX_to_F2x:                             ## @ZX_to_F2x
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L5$pb
L5$pb:
	popl	%eax
	movl	48(%esp), %ecx
	movl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	(%ecx), %esi
	andl	%ebx, %esi
	addl	$93, %esi
	shrl	$5, %esi
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L5$pb(%eax), %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	movl	(%ecx), %edx
	movl	%edx, 24(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %ecx
	movl	%edx, %edi
	subl	%ecx, %edi
	movl	%edi, 16(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L5$pb(%eax), %eax
	subl	(%eax), %edx
	shrl	$2, %edx
	cmpl	%esi, %edx
	jae	LBB5_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB5_2:                                 ## %new_chunk.exit.i
	movl	16(%esp), %ebp          ## 4-byte Reload
	movl	12(%esp), %eax          ## 4-byte Reload
	movl	%ebp, (%eax)
	movl	%esi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebp)
	movl	$1073676288, %eax       ## imm = 0x3FFF0000
	movl	48(%esp), %edi
	andl	4(%edi), %eax
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	andl	(%edi), %ebx
	cmpl	$3, %ebx
	movl	$1, %eax
	jb	LBB5_10
## BB#3:
	movl	$2, %edx
	movl	$32, %ecx
	.align	4, 0x90
LBB5_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$32, %ecx
	jne	LBB5_6
## BB#5:                                ##   in Loop: Header=BB5_4 Depth=1
	incl	%eax
	movl	%eax, %ecx
	subl	%esi, %ecx
	movl	24(%esp), %ebx          ## 4-byte Reload
	movl	$0, (%ebx,%ecx,4)
	xorl	%ecx, %ecx
LBB5_6:                                 ##   in Loop: Header=BB5_4 Depth=1
	movl	(%edi,%edx,4), %ebx
	movl	4(%ebx), %ebp
	cmpl	$1073741824, %ebp       ## imm = 0x40000000
	jb	LBB5_9
## BB#7:                                ## %mpodd.exit
                                        ##   in Loop: Header=BB5_4 Depth=1
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	testb	$1, -4(%ebx,%ebp,4)
	je	LBB5_9
## BB#8:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	$1, %ebx
	shll	%cl, %ebx
	movl	%eax, %ebp
	subl	%esi, %ebp
	movl	%edi, %esi
	movl	24(%esp), %edi          ## 4-byte Reload
	orl	%ebx, (%edi,%ebp,4)
	movl	%esi, %edi
	movl	20(%esp), %esi          ## 4-byte Reload
LBB5_9:                                 ## %.critedge
                                        ##   in Loop: Header=BB5_4 Depth=1
	incl	%edx
	incl	%ecx
	movl	(%edi), %ebx
	movl	$16777215, %ebp         ## imm = 0xFFFFFF
	andl	%ebp, %ebx
	cmpl	%ebx, %edx
	jl	LBB5_4
LBB5_10:                                ## %._crit_edge
	movl	%esi, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_Flx_to_F2x
	.align	4, 0x90
_Flx_to_F2x:                            ## @Flx_to_F2x
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L6$pb
L6$pb:
	popl	%eax
	movl	48(%esp), %ecx
	movl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	(%ecx), %esi
	andl	%ebx, %esi
	addl	$93, %esi
	shrl	$5, %esi
	movl	L_avma$non_lazy_ptr-L6$pb(%eax), %ecx
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	movl	(%ecx), %ebp
	movl	%ebp, 24(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %ecx
	movl	%ebp, %edi
	subl	%ecx, %edi
	movl	L_bot$non_lazy_ptr-L6$pb(%eax), %eax
	subl	(%eax), %ebp
	shrl	$2, %ebp
	cmpl	%esi, %ebp
	jae	LBB6_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB6_2:                                 ## %new_chunk.exit.i
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	%esi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%edi)
	movl	48(%esp), %edi
	movl	4(%edi), %eax
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	andl	(%edi), %ebx
	cmpl	$3, %ebx
	movl	%edi, %ebx
	movl	$1, %edi
	jb	LBB6_9
## BB#3:
	movl	$2, %edx
	movl	$32, %ecx
	.align	4, 0x90
LBB6_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$32, %ecx
	jne	LBB6_6
## BB#5:                                ##   in Loop: Header=BB6_4 Depth=1
	incl	%edi
	movl	%edi, %ecx
	subl	%esi, %ecx
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	$0, (%eax,%ecx,4)
	xorl	%ecx, %ecx
LBB6_6:                                 ##   in Loop: Header=BB6_4 Depth=1
	cmpl	$0, (%ebx,%edx,4)
	je	LBB6_8
## BB#7:                                ##   in Loop: Header=BB6_4 Depth=1
	movl	$1, %ebx
	shll	%cl, %ebx
	movl	%edi, %eax
	subl	%esi, %eax
	movl	%edi, %ebp
	movl	%esi, %edi
	movl	24(%esp), %esi          ## 4-byte Reload
	orl	%ebx, (%esi,%eax,4)
	movl	%edi, %esi
	movl	%ebp, %edi
	movl	48(%esp), %ebx
LBB6_8:                                 ##   in Loop: Header=BB6_4 Depth=1
	incl	%edx
	incl	%ecx
	movl	(%ebx), %eax
	movl	$16777215, %ebp         ## imm = 0xFFFFFF
	andl	%ebp, %eax
	cmpl	%eax, %edx
	jl	LBB6_4
LBB6_9:                                 ## %._crit_edge
	movl	%esi, 4(%esp)
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_to_F2v
	.align	4, 0x90
_F2x_to_F2v:                            ## @F2x_to_F2v
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L7$pb
L7$pb:
	popl	%esi
	movl	68(%esp), %eax
	leal	95(%eax), %edx
	movl	%edx, 28(%esp)          ## 4-byte Spill
	shrl	$5, %edx
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L7$pb(%esi), %edi
	movl	(%edi), %ebx
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	leal	(,%edx,4), %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L7$pb(%esi), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%edx, %ecx
	movl	64(%esp), %ebx
	movl	(%ebx), %ebp
	jae	LBB7_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB7_2:                                 ## %new_chunk.exit.i
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%edi)
	movl	%eax, %edi
	cmpl	$536870912, 28(%esp)    ## 4-byte Folded Reload
                                        ## imm = 0x20000000
	jb	LBB7_4
## BB#3:
	leal	L_.str4-L7$pb(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB7_4:                                 ## %cgetg.exit
	movl	40(%esp), %esi          ## 4-byte Reload
	movl	%esi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%edi)
	movl	$1, %eax
	subl	%esi, %eax
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	68(%esp), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	$2, %eax
	cmpl	$3, %ebp
	jb	LBB7_23
## BB#5:                                ## %.lr.ph5
	movl	$3, %eax
	cmoval	%ebp, %eax
	movl	$2, %ecx
	cmpl	$2, %eax
	je	LBB7_6
## BB#12:                               ## %overflow.checked
	leal	-2(%eax), %esi
	andl	$-8, %esi
	orl	$2, %esi
	movl	%esi, 24(%esp)          ## 4-byte Spill
	leal	-1(%ebp), %edx
	cmpl	$3, %ebp
	movl	$2, %ecx
	cmovbel	%ecx, %edx
	cmpl	$2, %esi
	je	LBB7_21
## BB#13:                               ## %vector.memcheck
	leal	(%ebx,%edx,4), %ecx
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	movl	$2, %ecx
	movl	$2, %edi
	subl	40(%esp), %edi          ## 4-byte Folded Reload
	movl	36(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edi,4), %edi
	cmpl	20(%esp), %edi          ## 4-byte Folded Reload
	movl	32(%esp), %edi          ## 4-byte Reload
	ja	LBB7_15
## BB#14:                               ## %vector.memcheck
	leal	8(%ebx), %esi
	movl	%esi, 20(%esp)          ## 4-byte Spill
	subl	40(%esp), %edx          ## 4-byte Folded Reload
	movl	36(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edx,4), %edx
	cmpl	%edx, 20(%esp)          ## 4-byte Folded Reload
	jbe	LBB7_21
LBB7_15:                                ## %vector.body.preheader
	cmpl	$3, %ebp
	movl	$3, %ecx
	cmoval	%ebp, %ecx
	addl	$-2, %ecx
	andl	$-8, %ecx
	addl	$-8, %ecx
	shrl	$3, %ecx
	leal	1(%ecx), %edx
	movl	$2, %esi
	testb	$1, %dl
	je	LBB7_17
## BB#16:                               ## %vector.body.prol
	movups	8(%ebx), %xmm0
	movups	24(%ebx), %xmm1
	movl	$2, %edx
	subl	40(%esp), %edx          ## 4-byte Folded Reload
	movl	36(%esp), %esi          ## 4-byte Reload
	movups	%xmm0, (%esi,%edx,4)
	movups	%xmm1, 16(%esi,%edx,4)
	movl	$10, %esi
LBB7_17:                                ## %vector.body.preheader.split
	testl	%ecx, %ecx
	je	LBB7_20
## BB#18:                               ## %vector.body.preheader.split.split
	movl	40(%esp), %ecx          ## 4-byte Reload
	negl	%ecx
	leal	12(%esi,%ecx), %ecx
	movl	36(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	cmpl	$3, %ebp
	movl	%esi, %edx
	movl	$3, %esi
	cmoval	%ebp, %esi
	addl	$-2, %esi
	andl	$-8, %esi
	orl	$2, %esi
	subl	%edx, %esi
	leal	48(%ebx,%edx,4), %edx
	.align	4, 0x90
LBB7_19:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	-48(%edx), %xmm0
	movups	-32(%edx), %xmm1
	movups	%xmm0, -48(%ecx)
	movups	%xmm1, -32(%ecx)
	movups	-16(%edx), %xmm0
	movups	(%edx), %xmm1
	movups	%xmm0, -16(%ecx)
	movups	%xmm1, (%ecx)
	addl	$64, %ecx
	addl	$64, %edx
	addl	$-16, %esi
	jne	LBB7_19
LBB7_20:
	movl	24(%esp), %ecx          ## 4-byte Reload
LBB7_21:                                ## %middle.block
	cmpl	%ecx, %eax
	movl	40(%esp), %esi          ## 4-byte Reload
	je	LBB7_22
LBB7_6:                                 ## %scalar.ph.preheader
	movl	%esi, 40(%esp)          ## 4-byte Spill
	movl	%edi, 32(%esp)          ## 4-byte Spill
	leal	1(%ecx), %edx
	cmpl	%ebp, %edx
	movl	%ebp, %eax
	cmovgel	%edx, %eax
	movl	%eax, %esi
	subl	%ecx, %esi
	decl	%eax
	subl	%ecx, %eax
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	testb	$3, %al
	je	LBB7_9
## BB#7:                                ## %scalar.ph.prol.preheader
	movl	28(%esp), %edi          ## 4-byte Reload
	shrl	$3, %edi
	andl	$536870908, %edi        ## imm = 0x1FFFFFFC
	movl	36(%esp), %esi          ## 4-byte Reload
	subl	%edi, %esi
	cmpl	%ebp, %edx
	cmovll	%ebp, %edx
	subl	%ecx, %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB7_8:                                 ## %scalar.ph.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%ecx,4), %edi
	movl	%edi, (%esi,%ecx,4)
	incl	%ecx
	incl	%edx
	jne	LBB7_8
LBB7_9:                                 ## %scalar.ph.preheader.split
	cmpl	$3, 24(%esp)            ## 4-byte Folded Reload
	movl	32(%esp), %edi          ## 4-byte Reload
	movl	40(%esp), %esi          ## 4-byte Reload
	jb	LBB7_22
## BB#10:                               ## %scalar.ph.preheader.split.split
	movl	$3, %eax
	subl	%esi, %eax
	movl	36(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	.align	4, 0x90
LBB7_11:                                ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%ecx,4), %edx
	movl	%edx, -12(%eax,%ecx,4)
	movl	4(%ebx,%ecx,4), %edx
	movl	%edx, -8(%eax,%ecx,4)
	movl	8(%ebx,%ecx,4), %edx
	movl	%edx, -4(%eax,%ecx,4)
	movl	12(%ebx,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	addl	$4, %ecx
	cmpl	%ebp, %ecx
	jl	LBB7_11
LBB7_22:                                ## %..preheader_crit_edge
	cmpl	$3, %ebp
	movl	$3, %eax
	cmoval	%ebp, %eax
LBB7_23:                                ## %.preheader
	movl	%eax, %ecx
	subl	%esi, %ecx
	jge	LBB7_25
## BB#24:                               ## %.lr.ph
	movl	36(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	subl	%eax, %esi
	shll	$2, %esi
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	calll	___bzero
LBB7_25:
	movl	%edi, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_add
	.align	4, 0x90
_F2x_add:                               ## @F2x_add
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	movl	100(%esp), %eax
	movl	96(%esp), %esi
	movl	(%esi), %ecx
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	(%eax), %edi
	movl	%edi, 52(%esp)          ## 4-byte Spill
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	%edi, 56(%esp)          ## 4-byte Spill
	cmpl	%ecx, %edi
	movl	%eax, %edx
	cmoval	%esi, %edx
	movl	%edx, 40(%esp)          ## 4-byte Spill
	cmoval	%eax, %esi
	movl	%ecx, %edx
	cmoval	%edi, %edx
	cmoval	%ecx, %edi
	movl	%edi, 60(%esp)          ## 4-byte Spill
	calll	L8$pb
L8$pb:
	popl	%eax
	movl	L_avma$non_lazy_ptr-L8$pb(%eax), %edi
	movl	(%edi), %ebx
	movl	%ebx, 68(%esp)          ## 4-byte Spill
	leal	(,%edx,4), %ecx
	movl	%ebx, %ebp
	subl	%ecx, %ebp
	movl	%ebp, 64(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L8$pb(%eax), %eax
	subl	(%eax), %ebx
	shrl	$2, %ebx
	cmpl	%edx, %ebx
	movl	%edx, %ebx
	jae	LBB8_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB8_2:                                 ## %cgetg.exit
	movl	64(%esp), %ebp          ## 4-byte Reload
	movl	%ebp, (%edi)
	movl	%ebx, %edi
	movl	%edi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebp)
	movl	4(%esi), %eax
	movl	$1, %ecx
	subl	%edi, %ecx
	movl	68(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	movl	$2, %ecx
	movl	60(%esp), %eax          ## 4-byte Reload
	cmpl	$3, %eax
	movl	72(%esp), %ebx          ## 4-byte Reload
	jb	LBB8_25
## BB#3:                                ## %.lr.ph8
	movl	48(%esp), %ecx          ## 4-byte Reload
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	xorl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	52(%esp), %ebx          ## 4-byte Reload
	orl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	%ebx, %ecx
	movl	%ebx, %edx
	cmoval	%ecx, %edx
	notl	%edx
	movl	%edx, 36(%esp)          ## 4-byte Spill
	cmpl	$3, %edx
	movl	$3, %ebp
	cmoval	%edx, %ebp
	movl	%eax, %edx
	movl	$2, %eax
	cmpl	$2, %ebp
	je	LBB8_4
## BB#10:                               ## %overflow.checked
	movl	%edi, 44(%esp)          ## 4-byte Spill
	leal	-2(%ebp), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movl	72(%esp), %edi          ## 4-byte Reload
	movl	56(%esp), %eax          ## 4-byte Reload
	cmpl	%eax, %edi
	cmoval	%edi, %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	cmpl	%ebx, %ecx
	movl	%ebx, %eax
	cmoval	%ecx, %eax
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	$-2, %edi
	subl	%eax, %edi
	cmpl	$-4, %eax
	movl	$2, %eax
	cmovael	%eax, %edi
	cmpl	$2, %edx
	jne	LBB8_12
## BB#11:
	movl	44(%esp), %edi          ## 4-byte Reload
	jmp	LBB8_23
LBB8_12:                                ## %vector.memcheck
	movl	%edx, 16(%esp)          ## 4-byte Spill
	movl	%ebp, 28(%esp)          ## 4-byte Spill
	movl	$2, %ebp
	movl	32(%esp), %ecx          ## 4-byte Reload
	subl	%ecx, %ebp
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	%edx, 32(%esp)          ## 4-byte Spill
	movl	68(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ebp,4), %ecx
	movl	32(%esp), %ebp          ## 4-byte Reload
	leal	(%edx,%ebp,4), %ebp
	leal	(%esi,%edi,4), %edx
	cmpl	%edx, %ecx
	leal	8(%esi), %edx
	setbe	32(%esp)                ## 1-byte Folded Spill
	cmpl	%ebp, %edx
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edi
	setbe	23(%esp)                ## 1-byte Folded Spill
	cmpl	%edi, %ecx
	leal	8(%edx), %edx
	setbe	%cl
	cmpl	%ebp, %edx
	setbe	%ch
	movb	23(%esp), %dl           ## 1-byte Reload
	testb	32(%esp), %dl           ## 1-byte Folded Reload
	jne	LBB8_21
## BB#13:                               ## %vector.memcheck
	andb	%ch, %cl
	movl	44(%esp), %edi          ## 4-byte Reload
	movl	28(%esp), %ebp          ## 4-byte Reload
	jne	LBB8_23
## BB#14:                               ## %vector.body.preheader
	movl	24(%esp), %ebp          ## 4-byte Reload
	cmpl	%ebp, %ebx
	movl	%ebp, %edx
	cmoval	%ebx, %edx
	notl	%edx
	cmpl	$3, %edx
	movl	$3, %eax
	cmoval	%edx, %eax
	addl	$-2, %eax
	andl	$-4, %eax
	addl	$-4, %eax
	shrl	$2, %eax
	leal	1(%eax), %edx
	movl	$2, %ecx
	testb	$1, %dl
	je	LBB8_16
## BB#15:                               ## %vector.body.prol
	movups	8(%esi), %xmm0
	movl	40(%esp), %edx          ## 4-byte Reload
	movups	8(%edx), %xmm1
	xorps	%xmm0, %xmm1
	movl	$2, %edx
	subl	%edi, %edx
	movl	%ebp, %ecx
	movl	68(%esp), %ebp          ## 4-byte Reload
	movups	%xmm1, (%ebp,%edx,4)
	movl	%ecx, %ebp
	movl	$6, %ecx
LBB8_16:                                ## %vector.body.preheader.split
	movl	%ecx, %edx
	testl	%eax, %eax
	jne	LBB8_18
## BB#17:
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB8_22
LBB8_18:                                ## %vector.body.preheader.split.split
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	72(%esp), %ecx          ## 4-byte Reload
	cmpl	%eax, %ecx
	cmoval	%ecx, %eax
	negl	%eax
	movl	%edx, %edi
	leal	4(%edi,%eax), %eax
	movl	68(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	cmpl	%ebp, %ebx
	cmoval	%ebx, %ebp
	notl	%ebp
	cmpl	$3, %ebp
	movl	$3, %ecx
	cmoval	%ebp, %ecx
	movl	%edi, %ebx
	leal	16(%esi,%ebx,4), %edx
	addl	$-2, %ecx
	andl	$-4, %ecx
	orl	$2, %ecx
	subl	%ebx, %ecx
	movl	40(%esp), %edi          ## 4-byte Reload
	leal	16(%edi,%ebx,4), %edi
	.align	4, 0x90
LBB8_19:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	-16(%edx), %xmm0
	movups	-16(%edi), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, -16(%eax)
	movups	(%edx), %xmm0
	movups	(%edi), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%eax)
	addl	$32, %eax
	addl	$32, %edx
	addl	$32, %edi
	addl	$-8, %ecx
	jne	LBB8_19
## BB#20:
	movl	16(%esp), %eax          ## 4-byte Reload
LBB8_21:                                ## %middle.block
	movl	44(%esp), %edi          ## 4-byte Reload
LBB8_22:                                ## %middle.block
	movl	28(%esp), %ebp          ## 4-byte Reload
LBB8_23:                                ## %middle.block
	cmpl	%eax, %ebp
	movl	60(%esp), %edx          ## 4-byte Reload
	je	LBB8_24
LBB8_4:                                 ## %scalar.ph.preheader
	movl	%edx, 60(%esp)          ## 4-byte Spill
	movl	48(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	52(%esp), %ebx          ## 4-byte Reload
	notl	%ebx
	orl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	cmpl	%ebx, %ecx
	cmoval	%ecx, %ebx
	notl	%ebx
	leal	1(%eax), %ecx
	cmpl	%ecx, %ebx
	cmovll	%ecx, %ebx
	movl	%ebx, %edx
	subl	%eax, %edx
	decl	%ebx
	subl	%eax, %ebx
	movl	%ebx, 52(%esp)          ## 4-byte Spill
	testb	$1, %dl
	je	LBB8_5
## BB#6:                                ## %scalar.ph.prol
	movl	40(%esp), %ebx          ## 4-byte Reload
	movl	(%ebx,%eax,4), %edx
	xorl	(%esi,%eax,4), %edx
	subl	%edi, %eax
	movl	68(%esp), %ebp          ## 4-byte Reload
	movl	%edx, (%ebp,%eax,4)
	jmp	LBB8_7
LBB8_5:
	movl	40(%esp), %ebx          ## 4-byte Reload
	movl	%eax, %ecx
LBB8_7:                                 ## %scalar.ph.preheader.split
	cmpl	$0, 52(%esp)            ## 4-byte Folded Reload
	movl	%ebx, %ebp
	movl	60(%esp), %ebx          ## 4-byte Reload
	je	LBB8_24
## BB#8:                                ## %scalar.ph.preheader.split.split
	movl	72(%esp), %edx          ## 4-byte Reload
	movl	56(%esp), %eax          ## 4-byte Reload
	cmpl	%eax, %edx
	cmoval	%edx, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	68(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%edx,4), %eax
	.align	4, 0x90
LBB8_9:                                 ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebp,%ecx,4), %edx
	xorl	(%esi,%ecx,4), %edx
	movl	%edx, -4(%eax,%ecx,4)
	movl	4(%ebp,%ecx,4), %edx
	xorl	4(%esi,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	addl	$2, %ecx
	cmpl	%ebx, %ecx
	jl	LBB8_9
LBB8_24:                                ## %..preheader_crit_edge
	movl	36(%esp), %eax          ## 4-byte Reload
	cmpl	$3, %eax
	movl	$3, %ecx
	cmoval	%eax, %ecx
	movl	72(%esp), %ebx          ## 4-byte Reload
LBB8_25:                                ## %.preheader
	cmpl	%edi, %ecx
	jge	LBB8_48
## BB#26:                               ## %.lr.ph.preheader
	movl	56(%esp), %ebp          ## 4-byte Reload
	cmpl	%ebp, %ebx
	movl	%ebp, %eax
	cmoval	%ebx, %eax
	leal	-1(%eax), %edx
	subl	%ecx, %edx
	cmpl	$-1, %edx
	je	LBB8_27
## BB#34:                               ## %overflow.checked48
	movl	%edi, 44(%esp)          ## 4-byte Spill
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	%edi, %edx
	andl	$-4, %edx
	movl	%edx, 60(%esp)          ## 4-byte Spill
	cmpl	%ebp, %ebx
	movl	%ebp, %edx
	cmoval	%ebx, %edx
	andl	$-4, %edi
	je	LBB8_46
## BB#35:                               ## %vector.memcheck62
	leal	-4(%esi,%edx,4), %edi
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	68(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%ebx,4), %edx
	cmpl	%edi, %edx
	ja	LBB8_38
## BB#36:                               ## %vector.memcheck62
	leal	(%esi,%ecx,4), %edx
	leal	-4(%ebp), %edi
	cmpl	%edi, %edx
	jbe	LBB8_37
LBB8_38:                                ## %vector.body39.preheader
	movl	72(%esp), %ebp          ## 4-byte Reload
	movl	56(%esp), %edx          ## 4-byte Reload
	cmpl	%ebp, %edx
	cmoval	%edx, %ebp
	subl	%ecx, %ebp
	andl	$-4, %ebp
	addl	$-4, %ebp
	shrl	$2, %ebp
	movl	%ebp, 52(%esp)          ## 4-byte Spill
	leal	1(%ebp), %edx
	testb	$3, %dl
	movl	%ecx, %ebp
	je	LBB8_41
## BB#39:                               ## %vector.body39.prol.preheader
	movl	72(%esp), %edi          ## 4-byte Reload
	movl	56(%esp), %edx          ## 4-byte Reload
	cmpl	%edi, %edx
	movl	%edi, %ebx
	cmoval	%edx, %ebx
	subl	%ecx, %ebx
	andl	$-4, %ebx
	addl	$-4, %ebx
	cmpl	%edx, %edi
	cmoval	%edi, %edx
	leal	(,%edx,4), %ebp
	movl	68(%esp), %edi          ## 4-byte Reload
	subl	%ebp, %edi
	subl	%ecx, %edx
	andl	$12, %edx
	addl	$-4, %edx
	shrl	$2, %edx
	incl	%edx
	andl	$3, %edx
	negl	%edx
	movl	%ecx, %ebp
	.align	4, 0x90
LBB8_40:                                ## %vector.body39.prol
                                        ## =>This Inner Loop Header: Depth=1
	movups	(%esi,%ebp,4), %xmm0
	movups	%xmm0, (%edi,%ebp,4)
	addl	$4, %ebp
	addl	$-4, %ebx
	incl	%edx
	jne	LBB8_40
LBB8_41:                                ## %vector.body39.preheader.split
	movl	60(%esp), %edx          ## 4-byte Reload
	addl	%ecx, %edx
	cmpl	$3, 52(%esp)            ## 4-byte Folded Reload
	jae	LBB8_43
## BB#42:
	movl	%edx, %ecx
LBB8_37:
	movl	44(%esp), %edi          ## 4-byte Reload
	movl	72(%esp), %ebx          ## 4-byte Reload
	jmp	LBB8_47
LBB8_43:                                ## %vector.body39.preheader.split.split
	movl	%edx, 60(%esp)          ## 4-byte Spill
	movl	72(%esp), %ebx          ## 4-byte Reload
	movl	56(%esp), %edi          ## 4-byte Reload
	cmpl	%edi, %ebx
	movl	%edi, %edx
	cmoval	%ebx, %edx
	negl	%edx
	movl	%edx, 52(%esp)          ## 4-byte Spill
	cmpl	%ebx, %edi
	movl	%ebx, %edx
	cmoval	%edi, %edx
	subl	%ecx, %edx
	andl	$-4, %edx
	addl	%ecx, %edx
	movl	52(%esp), %ecx          ## 4-byte Reload
	leal	12(%ebp,%ecx), %ecx
	movl	68(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %ecx
	subl	%ebp, %edx
	leal	48(%esi,%ebp,4), %edi
	.align	4, 0x90
LBB8_44:                                ## %vector.body39
                                        ## =>This Inner Loop Header: Depth=1
	movups	-48(%edi), %xmm0
	movups	%xmm0, -48(%ecx)
	movups	-32(%edi), %xmm0
	movups	%xmm0, -32(%ecx)
	movups	-16(%edi), %xmm0
	movups	%xmm0, -16(%ecx)
	movups	(%edi), %xmm0
	movups	%xmm0, (%ecx)
	addl	$64, %ecx
	addl	$64, %edi
	addl	$-16, %edx
	jne	LBB8_44
## BB#45:
	movl	60(%esp), %ecx          ## 4-byte Reload
LBB8_46:                                ## %middle.block40
	movl	44(%esp), %edi          ## 4-byte Reload
LBB8_47:                                ## %middle.block40
	cmpl	%ecx, %eax
	je	LBB8_48
LBB8_27:                                ## %.lr.ph.preheader79
	movl	%edi, 44(%esp)          ## 4-byte Spill
	movl	56(%esp), %ebp          ## 4-byte Reload
	cmpl	%ebp, %ebx
	movl	%ebp, %eax
	cmoval	%ebx, %eax
	leal	1(%ecx), %edi
	cmpl	%edi, %eax
	cmovll	%edi, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	decl	%eax
	subl	%ecx, %eax
	testb	$3, %dl
	je	LBB8_28
## BB#29:                               ## %.lr.ph.prol.preheader
	cmpl	%ebp, %ebx
	movl	%edi, 60(%esp)          ## 4-byte Spill
	movl	%ebp, %edi
	movl	%ebx, %ebp
	movl	%edi, %ebx
	cmoval	%ebp, %ebx
	shll	$2, %ebx
	movl	68(%esp), %edx          ## 4-byte Reload
	subl	%ebx, %edx
	cmpl	%ebp, %edi
	movl	%ebp, %ebx
	cmoval	%edi, %ebx
	movl	60(%esp), %edi          ## 4-byte Reload
	cmpl	%edi, %ebx
	cmovll	%edi, %ebx
	subl	%ecx, %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB8_30:                                ## %.lr.ph.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%esi,%ecx,4), %edi
	movl	%edi, (%edx,%ecx,4)
	incl	%ecx
	incl	%ebx
	jne	LBB8_30
	jmp	LBB8_31
LBB8_28:
	movl	%ebx, %ebp
LBB8_31:                                ## %.lr.ph.preheader79.split
	cmpl	$3, %eax
	movl	44(%esp), %edi          ## 4-byte Reload
	jb	LBB8_48
## BB#32:                               ## %.lr.ph.preheader79.split.split
	movl	56(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, %ebp
	cmoval	%ebp, %edx
	movl	$3, %eax
	subl	%edx, %eax
	movl	68(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	.align	4, 0x90
LBB8_33:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%esi,%ecx,4), %edx
	movl	%edx, -12(%eax,%ecx,4)
	movl	4(%esi,%ecx,4), %edx
	movl	%edx, -8(%eax,%ecx,4)
	movl	8(%esi,%ecx,4), %edx
	movl	%edx, -4(%eax,%ecx,4)
	movl	12(%esi,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	addl	$4, %ecx
	cmpl	%edi, %ecx
	jl	LBB8_33
LBB8_48:                                ## %._crit_edge
	movl	%edi, 4(%esp)
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_1_add
	.align	4, 0x90
_F2x_1_add:                             ## @F2x_1_add
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L9$pb
L9$pb:
	popl	%eax
	movl	48(%esp), %edi
	movl	(%edi), %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$2, %ebx
	jne	LBB9_5
## BB#1:
	movl	4(%edi), %edi
	movl	L_avma$non_lazy_ptr-L9$pb(%eax), %ebp
	movl	(%ebp), %ebx
	leal	-12(%ebx), %esi
	movl	L_bot$non_lazy_ptr-L9$pb(%eax), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	cmpl	$11, %ecx
	ja	LBB9_3
## BB#2:
	movl	$14, (%esp)
	calll	_pari_err
LBB9_3:                                 ## %pol1_F2x.exit
	movl	%esi, (%ebp)
	movl	%esi, %ebp
	movl	$738197507, -12(%ebx)   ## imm = 0x2C000003
	movl	%edi, -8(%ebx)
	movl	$1, -4(%ebx)
	jmp	LBB9_4
LBB9_5:
	movl	L_avma$non_lazy_ptr-L9$pb(%eax), %ebp
	movl	(%ebp), %edx
	movl	%edx, 24(%esp)          ## 4-byte Spill
	leal	(,%ebx,4), %esi
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	%edx, %ecx
	subl	%esi, %ecx
	movl	%ecx, %esi
	movl	L_bot$non_lazy_ptr-L9$pb(%eax), %eax
	movl	%edx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	jae	LBB9_7
## BB#6:
	movl	$14, (%esp)
	calll	_pari_err
LBB9_7:                                 ## %cgetg.exit
	movl	%esi, (%ebp)
	movl	%esi, %ebp
	movl	%ebx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebp)
	movl	4(%edi), %eax
	movl	$1, %ecx
	subl	%ebx, %ecx
	movl	24(%esp), %esi          ## 4-byte Reload
	movl	%eax, (%esi,%ecx,4)
	movl	8(%edi), %eax
	xorl	$1, %eax
	movl	$2, %ecx
	subl	%ebx, %ecx
	movl	%eax, (%esi,%ecx,4)
	cmpl	$4, %ebx
	jb	LBB9_25
## BB#8:                                ## %.lr.ph.preheader
	movl	$4, %esi
	cmoval	%ebx, %esi
	movl	$3, %edx
	cmpl	$3, %esi
	je	LBB9_19
## BB#9:                                ## %overflow.checked
	leal	-3(%esi), %ecx
	andl	$-8, %ecx
	orl	$3, %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	leal	-1(%ebx), %eax
	cmpl	$4, %ebx
	movl	$3, %edx
	cmovbel	%edx, %eax
	cmpl	$3, %ecx
	je	LBB9_18
## BB#10:                               ## %vector.memcheck
	leal	(%edi,%eax,4), %ecx
	movl	%ecx, 8(%esp)           ## 4-byte Spill
	movl	$3, %edx
	movl	%ebp, 16(%esp)          ## 4-byte Spill
	movl	$3, %ebp
	subl	%ebx, %ebp
	movl	%esi, %ecx
	movl	24(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ebp,4), %ebp
	movl	%ecx, %esi
	cmpl	8(%esp), %ebp           ## 4-byte Folded Reload
	movl	16(%esp), %ebp          ## 4-byte Reload
	ja	LBB9_12
## BB#11:                               ## %vector.memcheck
	leal	12(%edi), %ecx
	movl	%ecx, 8(%esp)           ## 4-byte Spill
	subl	%ebx, %eax
	movl	%esi, %ecx
	movl	24(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %eax
	movl	%ecx, %esi
	cmpl	%eax, 8(%esp)           ## 4-byte Folded Reload
	jbe	LBB9_18
LBB9_12:                                ## %vector.body.preheader
	cmpl	$4, %ebx
	movl	$4, %eax
	cmoval	%ebx, %eax
	addl	$-3, %eax
	andl	$-8, %eax
	addl	$-8, %eax
	shrl	$3, %eax
	leal	1(%eax), %ecx
	movl	$3, %edx
	testb	$1, %cl
	je	LBB9_14
## BB#13:                               ## %vector.body.prol
	movups	12(%edi), %xmm0
	movups	28(%edi), %xmm1
	movl	$3, %ecx
	subl	%ebx, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	movups	%xmm0, (%edx,%ecx,4)
	movups	%xmm1, 16(%edx,%ecx,4)
	movl	$11, %edx
LBB9_14:                                ## %vector.body.preheader.split
	testl	%eax, %eax
	je	LBB9_17
## BB#15:                               ## %vector.body.preheader.split.split
	leal	12(%edx), %eax
	subl	%ebx, %eax
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%edx, 8(%esp)           ## 4-byte Spill
	leal	(%ecx,%eax,4), %edx
	movl	8(%esp), %eax           ## 4-byte Reload
	leal	48(%edi,%eax,4), %ecx
	cmpl	$4, %ebx
	movl	$4, %eax
	cmoval	%ebx, %eax
	addl	$-3, %eax
	andl	$-8, %eax
	orl	$3, %eax
	subl	8(%esp), %eax           ## 4-byte Folded Reload
	.align	4, 0x90
LBB9_16:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	-48(%ecx), %xmm0
	movups	-32(%ecx), %xmm1
	movups	%xmm0, -48(%edx)
	movups	%xmm1, -32(%edx)
	movups	-16(%ecx), %xmm0
	movups	(%ecx), %xmm1
	movups	%xmm0, -16(%edx)
	movups	%xmm1, (%edx)
	addl	$64, %edx
	addl	$64, %ecx
	addl	$-16, %eax
	jne	LBB9_16
LBB9_17:
	movl	12(%esp), %edx          ## 4-byte Reload
LBB9_18:                                ## %middle.block
	cmpl	%edx, %esi
	je	LBB9_25
LBB9_19:                                ## %.lr.ph.preheader19
	movl	%ebp, 16(%esp)          ## 4-byte Spill
	leal	1(%edx), %ecx
	cmpl	%ebx, %ecx
	movl	%ebx, %eax
	cmovgel	%ecx, %eax
	movl	%eax, %esi
	subl	%edx, %esi
	decl	%eax
	subl	%edx, %eax
	movl	%eax, 12(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	testb	$3, %al
	je	LBB9_22
## BB#20:                               ## %.lr.ph.prol.preheader
	movl	24(%esp), %ebp          ## 4-byte Reload
	subl	20(%esp), %ebp          ## 4-byte Folded Reload
	cmpl	%ebx, %ecx
	cmovll	%ebx, %ecx
	subl	%edx, %ecx
	andl	$3, %ecx
	negl	%ecx
	.align	4, 0x90
LBB9_21:                                ## %.lr.ph.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%edx,4), %esi
	movl	%esi, (%ebp,%edx,4)
	incl	%edx
	incl	%ecx
	jne	LBB9_21
LBB9_22:                                ## %.lr.ph.preheader19.split
	cmpl	$3, 12(%esp)            ## 4-byte Folded Reload
	movl	16(%esp), %ebp          ## 4-byte Reload
	jb	LBB9_25
## BB#23:                               ## %.lr.ph.preheader19.split.split
	movl	$3, %eax
	subl	%ebx, %eax
	movl	24(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	.align	4, 0x90
LBB9_24:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%edx,4), %ecx
	movl	%ecx, -12(%eax,%edx,4)
	movl	4(%edi,%edx,4), %ecx
	movl	%ecx, -8(%eax,%edx,4)
	movl	8(%edi,%edx,4), %ecx
	movl	%ecx, -4(%eax,%edx,4)
	movl	12(%edi,%edx,4), %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$4, %edx
	cmpl	%ebx, %edx
	jl	LBB9_24
LBB9_25:                                ## %._crit_edge
	cmpl	$3, %ebx
	jne	LBB9_4
## BB#26:
	movl	%ebp, (%esp)
	movl	$3, 4(%esp)
	calll	_Flx_renormalize
	jmp	LBB9_27
LBB9_4:
	movl	%ebp, %eax
LBB9_27:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_mul
	.align	4, 0x90
_F2x_mul:                               ## @F2x_mul
## BB#0:
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	movl	36(%esp), %edx
	movl	32(%esp), %esi
	leal	8(%esi), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%esi), %edi
	andl	%eax, %edi
	addl	$-2, %edi
	andl	(%edx), %eax
	addl	$8, %edx
	addl	$-2, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2x_mulspec
	movl	4(%esi), %ecx
	movl	%ecx, 4(%eax)
	addl	$20, %esp
	popl	%esi
	popl	%edi
	retl

	.align	4, 0x90
_F2x_mulspec:                           ## @F2x_mulspec
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	movl	%ecx, %esi
	calll	L11$pb
L11$pb:
	popl	%ebp
	movl	148(%esp), %eax
	movl	144(%esp), %edi
	xorl	%ebx, %ebx
	testl	%edi, %edi
	je	LBB11_1
## BB#5:
	xorl	%ecx, %ecx
	.align	4, 0x90
LBB11_6:                                ## %.lr.ph48
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$0, (%esi)
	jne	LBB11_2
## BB#7:                                ##   in Loop: Header=BB11_6 Depth=1
	addl	$4, %esi
	incl	%ecx
	decl	%edi
	jne	LBB11_6
## BB#8:
	xorl	%edi, %edi
	jmp	LBB11_2
LBB11_1:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
LBB11_2:                                ## %.critedge.preheader
	testl	%eax, %eax
	je	LBB11_10
	.align	4, 0x90
LBB11_3:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$0, (%edx)
	jne	LBB11_4
## BB#9:                                ## %.critedge
                                        ##   in Loop: Header=BB11_3 Depth=1
	addl	$4, %edx
	incl	%ecx
	decl	%eax
	jne	LBB11_3
LBB11_10:
	movl	%ebp, 112(%esp)         ## 4-byte Spill
	jmp	LBB11_11
LBB11_4:
	movl	%ebp, 112(%esp)         ## 4-byte Spill
	movl	%eax, %ebx
LBB11_11:                               ## %.critedge2
	movl	%ebx, 120(%esp)         ## 4-byte Spill
	cmpl	%ebx, %edi
	movl	%ebx, %eax
	movl	%eax, %ebp
	cmovlel	%edi, %ebp
	movl	%edi, %ebx
	cmovll	%eax, %ebx
	movl	%edx, %eax
	cmovll	%esi, %eax
	movl	%eax, 108(%esp)         ## 4-byte Spill
	cmovll	%edx, %esi
	movl	112(%esp), %eax         ## 4-byte Reload
	movl	L_avma$non_lazy_ptr-L11$pb(%eax), %edx
	movl	(%edx), %eax
	testl	%ebp, %ebp
	je	LBB11_12
## BB#16:
	movl	%eax, 96(%esp)          ## 4-byte Spill
	cmpl	$1, %ebx
	jg	LBB11_38
## BB#17:
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	%ecx, 92(%esp)          ## 4-byte Spill
	movl	(%esi), %esi
	movl	108(%esp), %eax         ## 4-byte Reload
	movl	(%eax), %ebp
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%eax, 120(%esp)         ## 4-byte Spill
	movzwl	%bp, %edx
	shrl	$16, %ebp
	xorl	%eax, %eax
	andl	$65535, %esi            ## imm = 0xFFFF
	movl	$0, 116(%esp)           ## 4-byte Folded Spill
	movl	$0, %edi
	je	LBB11_24
## BB#18:
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movl	$0, 116(%esp)           ## 4-byte Folded Spill
	.align	4, 0x90
LBB11_19:                               ## %.preheader2.i
                                        ## =>This Inner Loop Header: Depth=1
	btl	%ecx, %esi
	jae	LBB11_21
## BB#20:                               ##   in Loop: Header=BB11_19 Depth=1
	movl	%edx, %ebx
	shll	%cl, %ebx
	xorl	%ebx, 116(%esp)         ## 4-byte Folded Spill
	movl	%ebp, %ebx
	shll	%cl, %ebx
	xorl	%ebx, %edi
LBB11_21:                               ## %.preheader2.i.1235
                                        ##   in Loop: Header=BB11_19 Depth=1
	incl	%ecx
	btl	%ecx, %esi
	jae	LBB11_23
## BB#22:                               ##   in Loop: Header=BB11_19 Depth=1
	movl	%edx, %ebx
	shll	%cl, %ebx
	xorl	%ebx, 116(%esp)         ## 4-byte Folded Spill
	movl	%ebp, %ebx
	shll	%cl, %ebx
	xorl	%ebx, %edi
LBB11_23:                               ##   in Loop: Header=BB11_19 Depth=1
	incl	%ecx
	cmpl	$16, %ecx
	jne	LBB11_19
LBB11_24:                               ## %.loopexit3.i
	cmpl	$0, 120(%esp)           ## 4-byte Folded Reload
	je	LBB11_25
## BB#32:
	xorl	%esi, %esi
	.align	4, 0x90
LBB11_33:                               ## %.preheader.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	120(%esp), %ecx         ## 4-byte Reload
	btl	%eax, %ecx
	jae	LBB11_35
## BB#34:                               ##   in Loop: Header=BB11_33 Depth=1
	movl	%ebp, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	xorl	%ebx, %esi
	movl	%edx, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	xorl	%ebx, %edi
LBB11_35:                               ## %.preheader.i.1234
                                        ##   in Loop: Header=BB11_33 Depth=1
	incl	%eax
	movl	120(%esp), %ecx         ## 4-byte Reload
	btl	%eax, %ecx
	jae	LBB11_37
## BB#36:                               ##   in Loop: Header=BB11_33 Depth=1
	movl	%ebp, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	xorl	%ebx, %esi
	movl	%edx, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	xorl	%ebx, %edi
LBB11_37:                               ##   in Loop: Header=BB11_33 Depth=1
	incl	%eax
	cmpl	$16, %eax
	jne	LBB11_33
	jmp	LBB11_26
LBB11_12:
	leal	-8(%eax), %esi
	movl	112(%esp), %ecx         ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L11$pb(%ecx), %edi
	movl	%eax, %ecx
	subl	(%edi), %ecx
	cmpl	$7, %ecx
	ja	LBB11_14
## BB#13:
	movl	$14, (%esp)
	movl	%eax, %edi
	movl	%edx, %ebx
	calll	_pari_err
	movl	%ebx, %edx
	movl	%edi, %eax
LBB11_14:
	movl	%esi, (%edx)
	movl	$738197506, -8(%eax)    ## imm = 0x2C000002
	movl	$0, -4(%eax)
	movl	%esi, %eax
	jmp	LBB11_15
LBB11_38:
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	%ebx, %edx
	sarl	%edx
	movl	%edx, 116(%esp)         ## 4-byte Spill
	subl	%edx, %ebx
	movl	%ebx, 80(%esp)          ## 4-byte Spill
	leal	(%esi,%ebx,4), %eax
	movl	%eax, 104(%esp)         ## 4-byte Spill
	movl	120(%esp), %ebx         ## 4-byte Reload
	cmpl	%ebx, %edi
	movl	%edi, %eax
	movl	%edi, 88(%esp)          ## 4-byte Spill
	cmovll	%ebx, %eax
	incl	%eax
	subl	%edx, %eax
	.align	4, 0x90
LBB11_39:                               ## =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	cmpl	$1, %eax
	je	LBB11_41
## BB#40:                               ##   in Loop: Header=BB11_39 Depth=1
	cmpl	$0, -8(%esi,%eax,4)
	leal	-1(%eax), %eax
	movl	%eax, %edi
	je	LBB11_39
LBB11_41:                               ## %.critedge3
	movl	%ebp, %eax
	movl	80(%esp), %ebx          ## 4-byte Reload
	subl	%ebx, %eax
	movl	108(%esp), %edx         ## 4-byte Reload
	jle	LBB11_147
## BB#42:
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movl	%ecx, 92(%esp)          ## 4-byte Spill
	leal	(%edx,%ebx,4), %eax
	movl	%eax, 84(%esp)          ## 4-byte Spill
	movl	88(%esp), %ebx          ## 4-byte Reload
	movl	120(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %ebx
	movl	%ebx, %eax
	cmovll	%ecx, %eax
	incl	%eax
	movl	116(%esp), %ebp         ## 4-byte Reload
	subl	%ebp, %eax
	.align	4, 0x90
LBB11_43:                               ## =>This Inner Loop Header: Depth=1
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	je	LBB11_45
## BB#44:                               ##   in Loop: Header=BB11_43 Depth=1
	cmpl	$0, -8(%edx,%eax,4)
	leal	-1(%eax), %eax
	movl	%eax, %ebx
	je	LBB11_43
LBB11_45:                               ## %.critedge4
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	movl	%esi, %ecx
	calll	_F2x_mulspec
	movl	%eax, 52(%esp)          ## 4-byte Spill
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	104(%esp), %ebp         ## 4-byte Reload
	movl	%ebp, %ecx
	movl	84(%esp), %edx          ## 4-byte Reload
	calll	_F2x_mulspec
	movl	%eax, 48(%esp)          ## 4-byte Spill
	movl	116(%esp), %eax         ## 4-byte Reload
	cmpl	%eax, %edi
	movl	%edi, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	cmovgel	%edi, %eax
	movl	%esi, %ecx
	cmovgl	%ebp, %ecx
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	cmovgl	%esi, %ebp
	movl	%ebp, 104(%esp)         ## 4-byte Spill
	movl	%eax, %ebp
	movl	100(%esp), %eax         ## 4-byte Reload
	movl	(%eax), %esi
	movl	%esi, 56(%esp)          ## 4-byte Spill
	movl	$-2, %ecx
	subl	%ebp, %ecx
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	movl	112(%esp), %eax         ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L11$pb(%eax), %edx
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	subl	(%edx), %eax
	shrl	$2, %eax
	leal	2(%ebp), %edx
	cmpl	%edx, %eax
	leal	(%esi,%ecx,4), %esi
	jae	LBB11_47
## BB#46:
	movl	$14, (%esp)
	movl	%ebp, 72(%esp)          ## 4-byte Spill
	movl	%edx, %ebp
	movl	%esi, 60(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	%ebp, %edx
	movl	72(%esp), %ebp          ## 4-byte Reload
LBB11_47:                               ## %new_chunk.exit.i
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	%esi, (%ecx)
	cmpl	$16777216, %edx         ## imm = 0x1000000
	movl	104(%esp), %ecx         ## 4-byte Reload
	jb	LBB11_49
## BB#48:
	movl	112(%esp), %eax         ## 4-byte Reload
	leal	L_.str4-L11$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%ebp, 72(%esp)          ## 4-byte Spill
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	104(%esp), %ecx         ## 4-byte Reload
	movl	72(%esp), %ebp          ## 4-byte Reload
LBB11_49:                               ## %cgetg.exit
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%esi)
	movl	%esi, 60(%esp)          ## 4-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 36(%esp)            ## 4-byte Folded Reload
	jle	LBB11_69
## BB#50:                               ## %.lr.ph9.i
	movl	%ebp, 72(%esp)          ## 4-byte Spill
	movl	%ecx, 104(%esp)         ## 4-byte Spill
	movl	%ebx, 76(%esp)          ## 4-byte Spill
	movl	%edi, %ebp
	notl	%ebp
	movl	116(%esp), %esi         ## 4-byte Reload
	notl	%esi
	cmpl	%esi, %ebp
	movl	%esi, %eax
	cmovgel	%ebp, %eax
	movl	64(%esp), %ecx          ## 4-byte Reload
	addl	$2, %ecx
	xorl	%ebx, %ebx
	cmpl	$-1, %eax
	je	LBB11_51
## BB#56:                               ## %overflow.checked
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	movl	%eax, %ebx
	notl	%ebx
	movl	%ebx, 28(%esp)          ## 4-byte Spill
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	movl	%ecx, %edx
	cmovgel	%edi, %edx
	cmpl	%esi, %ebp
	movl	%esi, %ecx
	cmovgel	%ebp, %ecx
	andl	$-4, %ebx
	je	LBB11_57
## BB#58:                               ## %vector.memcheck
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%esi, 36(%esp)          ## 4-byte Spill
	movl	%ebp, 24(%esp)          ## 4-byte Spill
	leal	(,%edx,4), %ebp
	movl	56(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, %esi
	subl	%ebp, %esi
	movl	$-2, %ebp
	subl	%edx, %ebp
	movl	$-2, %edx
	subl	%ecx, %ebp
	subl	%ecx, %edx
	leal	(%ebx,%ebp,4), %ebp
	movl	32(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edx,4), %ebx
	movl	%ebx, 20(%esp)          ## 4-byte Spill
	movl	104(%esp), %ebx         ## 4-byte Reload
	leal	(%ebx,%edx,4), %edx
	cmpl	%edx, %esi
	setbe	%dh
	cmpl	%ebp, %ebx
	setbe	%dl
	cmpl	20(%esp), %esi          ## 4-byte Folded Reload
	setbe	%bl
	cmpl	%ebp, %ecx
	setbe	%ch
	testb	%dl, %dh
	jne	LBB11_59
## BB#60:                               ## %vector.memcheck
	andb	%ch, %bl
	movl	64(%esp), %ecx          ## 4-byte Reload
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	36(%esp), %esi          ## 4-byte Reload
	movl	$0, %ebx
	jne	LBB11_67
## BB#61:                               ## %vector.body.preheader
	cmpl	%esi, %ebp
	movl	%esi, %edx
	cmovgel	%ebp, %edx
	notl	%edx
	andl	$-4, %edx
	addl	$-4, %edx
	shrl	$2, %edx
	leal	1(%edx), %ecx
	xorl	%ebx, %ebx
	testb	$1, %cl
	movl	104(%esp), %esi         ## 4-byte Reload
	je	LBB11_63
## BB#62:                               ## %vector.body.prol
	movups	(%esi), %xmm0
	movl	32(%esp), %ecx          ## 4-byte Reload
	movups	(%ecx), %xmm1
	xorps	%xmm0, %xmm1
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	64(%esp), %ebx          ## 4-byte Reload
	movups	%xmm1, (%ecx,%ebx,4)
	movl	$4, %ebx
LBB11_63:                               ## %vector.body.preheader.split
	testl	%edx, %edx
	je	LBB11_66
## BB#64:                               ## %vector.body.preheader.split.split
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	negl	%ecx
	leal	4(%ebx,%ecx), %ecx
	movl	56(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ebp
	leal	16(%esi,%ebx,4), %esi
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	36(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	notl	%edx
	andl	$-4, %edx
	subl	%ebx, %edx
	movl	32(%esp), %ecx          ## 4-byte Reload
	leal	16(%ecx,%ebx,4), %ecx
	.align	4, 0x90
LBB11_65:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	-16(%esi), %xmm0
	movups	-16(%ecx), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, -16(%ebp)
	movups	(%esi), %xmm0
	movups	(%ecx), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%ebp)
	addl	$32, %ebp
	addl	$32, %esi
	addl	$32, %ecx
	addl	$-8, %edx
	jne	LBB11_65
LBB11_66:
	movl	16(%esp), %ebx          ## 4-byte Reload
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	36(%esp), %esi          ## 4-byte Reload
	movl	64(%esp), %ecx          ## 4-byte Reload
	jmp	LBB11_67
LBB11_147:
	movl	%ecx, 92(%esp)          ## 4-byte Spill
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	%esi, %ecx
	movl	%edx, %edi
                                        ## kill: EDX<def> EDI<kill>
	calll	_F2x_mulspec
	movl	%eax, %esi
	movl	%ebp, 4(%esp)
	movl	116(%esp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	movl	104(%esp), %ecx         ## 4-byte Reload
	movl	%edi, %edx
	calll	_F2x_mulspec
	movl	%eax, %ecx
	movl	%ebx, %eax
	jmp	LBB11_148
LBB11_25:
	xorl	%esi, %esi
LBB11_26:                               ## %.loopexit.i
	movl	%edi, %eax
	shll	$16, %eax
	xorl	116(%esp), %eax         ## 4-byte Folded Reload
	movl	%eax, 120(%esp)         ## 4-byte Spill
	shrl	$16, %edi
	cmpl	%edi, %esi
	setne	%al
	movzbl	%al, %ebp
	leal	12(,%ebp,4), %eax
	movl	96(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %ebx
	subl	%eax, %ebx
	movl	112(%esp), %eax         ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L11$pb(%eax), %eax
	movl	%ecx, %edx
	subl	(%eax), %edx
	addl	$3, %ebp
	shrl	$2, %edx
	cmpl	%ebp, %edx
	jae	LBB11_28
## BB#27:
	movl	$14, (%esp)
	calll	_pari_err
	movl	96(%esp), %ecx          ## 4-byte Reload
LBB11_28:                               ## %cgetg.exit.i
	movl	100(%esp), %eax         ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	%ebp, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebx)
	movl	$2, %eax
	subl	%ebp, %eax
	movl	120(%esp), %edx         ## 4-byte Reload
	movl	%edx, (%ecx,%eax,4)
	cmpl	%edi, %esi
	je	LBB11_30
## BB#29:
	xorl	%edi, %esi
	movl	$3, %eax
	subl	%ebp, %eax
	movl	%esi, (%ecx,%eax,4)
LBB11_30:                               ## %F2x_mul1.exit
	movl	92(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	%ebx, %edx
	calll	_F2x_shiftip
	jmp	LBB11_15
LBB11_57:
	movl	64(%esp), %ecx          ## 4-byte Reload
	xorl	%ebx, %ebx
	jmp	LBB11_67
LBB11_59:
	movl	64(%esp), %ecx          ## 4-byte Reload
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	36(%esp), %esi          ## 4-byte Reload
	xorl	%ebx, %ebx
LBB11_67:                               ## %middle.block
	cmpl	28(%esp), %ebx          ## 4-byte Folded Reload
	je	LBB11_68
LBB11_51:                               ## %scalar.ph.preheader
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	movl	%esi, 36(%esp)          ## 4-byte Spill
	movl	%ebx, %edx
	notl	%edx
	cmpl	%esi, %ebp
	cmovgel	%ebp, %esi
	subl	%esi, %edx
	movl	$-2, %ecx
	subl	%ebx, %ecx
	subl	%esi, %ecx
	testb	$1, %dl
	je	LBB11_53
## BB#52:                               ## %scalar.ph.prol
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	(%edx,%ebx,4), %edx
	movl	104(%esp), %esi         ## 4-byte Reload
	xorl	(%esi,%ebx,4), %edx
	movl	%edx, 28(%esp)          ## 4-byte Spill
	addl	%ebx, 64(%esp)          ## 4-byte Folded Spill
	movl	56(%esp), %esi          ## 4-byte Reload
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	movl	64(%esp), %ecx          ## 4-byte Reload
	movl	%edx, (%esi,%ecx,4)
	movl	20(%esp), %ecx          ## 4-byte Reload
	incl	%ebx
LBB11_53:                               ## %scalar.ph.preheader.split
	testl	%ecx, %ecx
	movl	36(%esp), %esi          ## 4-byte Reload
	je	LBB11_68
## BB#54:                               ## %scalar.ph.preheader.split.split
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	negl	%ecx
	cmpl	%esi, %ebp
	cmovgel	%ebp, %esi
	movl	%ebx, %ebp
	movl	%ebp, %edx
	notl	%edx
	subl	%esi, %edx
	leal	1(%ebp,%ecx), %ecx
	movl	56(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	movl	32(%esp), %esi          ## 4-byte Reload
	leal	4(%esi,%ebp,4), %esi
	movl	104(%esp), %ebx         ## 4-byte Reload
	leal	4(%ebx,%ebp,4), %ebp
	.align	4, 0x90
LBB11_55:                               ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi), %ebx
	xorl	-4(%ebp), %ebx
	movl	%ebx, -4(%ecx)
	movl	(%esi), %ebx
	xorl	(%ebp), %ebx
	movl	%ebx, (%ecx)
	addl	$8, %ecx
	addl	$8, %esi
	addl	$8, %ebp
	addl	$-2, %edx
	jne	LBB11_55
LBB11_68:                               ## %..preheader_crit_edge.i
	notl	%eax
	movl	76(%esp), %ebx          ## 4-byte Reload
	movl	72(%esp), %ebp          ## 4-byte Reload
LBB11_69:                               ## %.preheader.i12
	cmpl	%ebp, %eax
	jge	LBB11_94
## BB#70:                               ## %.lr.ph.i.preheader
	movl	%ebp, 72(%esp)          ## 4-byte Spill
	movl	116(%esp), %ebp         ## 4-byte Reload
	cmpl	%ebp, %edi
	movl	%ebp, %esi
	cmovgel	%edi, %esi
	leal	-1(%esi), %ecx
	subl	%eax, %ecx
	cmpl	$-1, %ecx
	je	LBB11_71
## BB#79:                               ## %overflow.checked103
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %ecx
	andl	$-4, %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	cmpl	%ebp, %edi
	cmovgel	%edi, %ebp
	andl	$-4, %edx
	je	LBB11_80
## BB#81:                               ## %vector.memcheck117
	movl	%esi, 32(%esp)          ## 4-byte Spill
	movl	104(%esp), %edx         ## 4-byte Reload
	leal	-4(%edx,%ebp,4), %esi
	movl	%esi, 64(%esp)          ## 4-byte Spill
	movl	%eax, %esi
	subl	%ebp, %esi
	movl	56(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%esi,4), %ecx
	movl	%ebp, %esi
	movl	%edx, %ebp
	cmpl	64(%esp), %ecx          ## 4-byte Folded Reload
	ja	LBB11_84
## BB#82:                               ## %vector.memcheck117
	leal	(%ebp,%eax,4), %ecx
	leal	-4(%esi), %edx
	cmpl	%edx, %ecx
	ja	LBB11_84
## BB#83:
	movl	32(%esp), %esi          ## 4-byte Reload
	movl	%ebp, %ecx
	jmp	LBB11_93
LBB11_71:
	movl	104(%esp), %ecx         ## 4-byte Reload
	jmp	LBB11_72
LBB11_80:
	movl	104(%esp), %ecx         ## 4-byte Reload
	jmp	LBB11_93
LBB11_84:                               ## %vector.body94.preheader
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	subl	%eax, %ecx
	andl	$-4, %ecx
	addl	$-4, %ecx
	shrl	$2, %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	leal	1(%ecx), %ecx
	testb	$3, %cl
	movl	%eax, %ebp
	je	LBB11_87
## BB#85:                               ## %vector.body94.prol.preheader
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	movl	%ecx, %edx
	cmovgel	%edi, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	andl	$-4, %ecx
	addl	$-4, %ecx
	shll	$2, %edx
	movl	56(%esp), %esi          ## 4-byte Reload
	subl	%edx, %esi
	movl	%esi, 64(%esp)          ## 4-byte Spill
	movl	%ecx, %edx
	shrl	$2, %edx
	incl	%edx
	andl	$3, %edx
	negl	%edx
	movl	%eax, %ebp
	.align	4, 0x90
LBB11_86:                               ## %vector.body94.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	104(%esp), %esi         ## 4-byte Reload
	movups	(%esi,%ebp,4), %xmm0
	movl	64(%esp), %esi          ## 4-byte Reload
	movups	%xmm0, (%esi,%ebp,4)
	addl	$4, %ebp
	addl	$-4, %ecx
	incl	%edx
	jne	LBB11_86
LBB11_87:                               ## %vector.body94.preheader.split
	movl	36(%esp), %ecx          ## 4-byte Reload
	addl	%eax, %ecx
	cmpl	$3, 28(%esp)            ## 4-byte Folded Reload
	jae	LBB11_89
## BB#88:
	movl	%ecx, %eax
	jmp	LBB11_92
LBB11_89:                               ## %vector.body94.preheader.split.split
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	leal	12(%ebp), %ecx
	movl	116(%esp), %edx         ## 4-byte Reload
	cmpl	%edx, %edi
	cmovgel	%edi, %edx
	subl	%edx, %ecx
	subl	%eax, %edx
	andl	$-4, %edx
	addl	%eax, %edx
	movl	56(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ecx,4), %eax
	subl	%ebp, %edx
	movl	104(%esp), %ecx         ## 4-byte Reload
	leal	48(%ecx,%ebp,4), %ecx
	.align	4, 0x90
LBB11_90:                               ## %vector.body94
                                        ## =>This Inner Loop Header: Depth=1
	movups	-48(%ecx), %xmm0
	movups	%xmm0, -48(%eax)
	movups	-32(%ecx), %xmm0
	movups	%xmm0, -32(%eax)
	movups	-16(%ecx), %xmm0
	movups	%xmm0, -16(%eax)
	movups	(%ecx), %xmm0
	movups	%xmm0, (%eax)
	addl	$64, %eax
	addl	$64, %ecx
	addl	$-16, %edx
	jne	LBB11_90
## BB#91:
	movl	36(%esp), %eax          ## 4-byte Reload
LBB11_92:                               ## %middle.block95
	movl	104(%esp), %ecx         ## 4-byte Reload
	movl	32(%esp), %esi          ## 4-byte Reload
LBB11_93:                               ## %middle.block95
	cmpl	%eax, %esi
	je	LBB11_94
LBB11_72:                               ## %.lr.ph.i.preheader233
	movl	%ecx, 104(%esp)         ## 4-byte Spill
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	movl	%ecx, %esi
	cmovgel	%edi, %esi
	leal	1(%eax), %ebp
	cmpl	%ebp, %esi
	cmovll	%ebp, %esi
	movl	%esi, %edx
	subl	%eax, %edx
	decl	%esi
	subl	%eax, %esi
	movl	%esi, 64(%esp)          ## 4-byte Spill
	testb	$3, %dl
	je	LBB11_73
## BB#74:                               ## %.lr.ph.i.prol.preheader
	cmpl	%ecx, %edi
	movl	%ecx, %edx
	cmovgel	%edi, %edx
	leal	(,%edx,4), %ecx
	movl	56(%esp), %esi          ## 4-byte Reload
	subl	%ecx, %esi
	cmpl	%ebp, %edx
	cmovll	%ebp, %edx
	subl	%eax, %edx
	andl	$3, %edx
	negl	%edx
	movl	104(%esp), %ecx         ## 4-byte Reload
	.align	4, 0x90
LBB11_75:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ecx,%eax,4), %ebp
	movl	%ebp, (%esi,%eax,4)
	incl	%eax
	incl	%edx
	jne	LBB11_75
	jmp	LBB11_76
LBB11_73:
	movl	104(%esp), %ecx         ## 4-byte Reload
LBB11_76:                               ## %.lr.ph.i.preheader233.split
	cmpl	$3, 64(%esp)            ## 4-byte Folded Reload
	movl	%ecx, %esi
	movl	72(%esp), %ebp          ## 4-byte Reload
	jb	LBB11_94
## BB#77:                               ## %.lr.ph.i.preheader233.split.split
	movl	116(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %edi
	cmovll	%ecx, %edi
	movl	$3, %ecx
	subl	%edi, %ecx
	movl	56(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB11_78:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%esi,%eax,4), %edx
	movl	%edx, -12(%ecx,%eax,4)
	movl	4(%esi,%eax,4), %edx
	movl	%edx, -8(%ecx,%eax,4)
	movl	8(%esi,%eax,4), %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	12(%esi,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	addl	$4, %eax
	cmpl	%ebp, %eax
	jl	LBB11_78
LBB11_94:                               ## %F2x_addspec.exit
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	68(%esp), %eax          ## 4-byte Reload
	cmpl	%eax, %ebx
	movl	%ebx, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	%eax, %ebp
	cmovgel	%ebx, %ebp
	movl	108(%esp), %eax         ## 4-byte Reload
	movl	%eax, %ecx
	movl	84(%esp), %edi          ## 4-byte Reload
	cmovgl	%edi, %ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	cmovgl	%eax, %edi
	movl	100(%esp), %eax         ## 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	movl	44(%esp), %edx          ## 4-byte Reload
	subl	(%edx), %eax
	movl	$-2, %esi
	subl	%ebp, %esi
	movl	%esi, 44(%esp)          ## 4-byte Spill
	shrl	$2, %eax
	leal	2(%ebp), %edx
	cmpl	%edx, %eax
	leal	(%ecx,%esi,4), %eax
	movl	100(%esp), %ecx         ## 4-byte Reload
	jae	LBB11_96
## BB#95:
	movl	$14, (%esp)
	movl	%ebp, 104(%esp)         ## 4-byte Spill
	movl	%edx, %ebp
	movl	%eax, 72(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	%ebp, %edx
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	104(%esp), %ebp         ## 4-byte Reload
LBB11_96:                               ## %new_chunk.exit.i32
	movl	%edi, 84(%esp)          ## 4-byte Spill
	movl	%eax, (%ecx)
	cmpl	$16777216, %edx         ## imm = 0x1000000
	movl	88(%esp), %esi          ## 4-byte Reload
	movl	%eax, %edi
	jb	LBB11_98
## BB#97:
	movl	112(%esp), %eax         ## 4-byte Reload
	leal	L_.str4-L11$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%edx, 108(%esp)         ## 4-byte Spill
	calll	_pari_err
	movl	108(%esp), %edx         ## 4-byte Reload
LBB11_98:                               ## %cgetg.exit33
	movl	%edx, 108(%esp)         ## 4-byte Spill
	movl	%edx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%edi)
	movl	%edi, 72(%esp)          ## 4-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 56(%esp)            ## 4-byte Folded Reload
	movl	120(%esp), %edi         ## 4-byte Reload
	jle	LBB11_121
## BB#99:                               ## %.lr.ph9.i21
	movl	%ebp, 104(%esp)         ## 4-byte Spill
	movl	%ebx, %eax
	movl	%ebx, 76(%esp)          ## 4-byte Spill
                                        ## kill: EBX<def> EAX<kill>
	notl	%ebx
	movl	68(%esp), %eax          ## 4-byte Reload
	notl	%eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	addl	$2, 44(%esp)            ## 4-byte Folded Spill
	cmpl	%edi, %esi
	movl	%esi, %ecx
	cmovll	%edi, %ecx
	notl	%esi
	movl	%edi, %ebp
	movl	%esi, %edi
	notl	%ebp
	cmpl	%ebp, %edi
	movl	%ebp, %edx
	cmovgel	%edi, %edx
	addl	%ecx, %edx
	subl	116(%esp), %edx         ## 4-byte Folded Reload
	cmpl	%ebx, %edx
	cmovll	%ebx, %edx
	xorl	%ecx, %ecx
	cmpl	$-1, %edx
	je	LBB11_100
## BB#106:                              ## %overflow.checked147
	notl	%edx
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	%ebx, 68(%esp)          ## 4-byte Spill
	movl	116(%esp), %ecx         ## 4-byte Reload
	leal	-1(%ecx), %ebx
	movl	%ebx, 28(%esp)          ## 4-byte Spill
	movl	88(%esp), %ecx          ## 4-byte Reload
	movl	120(%esp), %esi         ## 4-byte Reload
	cmpl	%esi, %ecx
	movl	%edi, %edx
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	%ecx, %edi
	cmovll	%esi, %edi
	movl	%ebx, %esi
	subl	%edi, %esi
	cmpl	%ebp, %edx
	movl	%ebp, %ecx
	movl	%ebp, 112(%esp)         ## 4-byte Spill
	cmovgel	%edx, %ecx
	movl	56(%esp), %edx          ## 4-byte Reload
	subl	%ecx, %esi
	movl	76(%esp), %ebp          ## 4-byte Reload
	cmpl	%esi, %ebp
	cmovgel	%ebp, %esi
	addl	%edi, %ecx
	subl	116(%esp), %ecx         ## 4-byte Folded Reload
	movl	68(%esp), %ebx          ## 4-byte Reload
	cmpl	%ebx, %ecx
	cmovll	%ebx, %ecx
	movl	%edx, %ebp
	andl	$-4, %ebp
	je	LBB11_107
## BB#108:                              ## %vector.memcheck170
	leal	(,%esi,4), %edi
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	%edx, %ebx
	subl	%edi, %ebx
	movl	$-2, %edi
	subl	%esi, %edi
	movl	$-2, %esi
	subl	%ecx, %edi
	subl	%ecx, %esi
	leal	(%edx,%edi,4), %edx
	movl	40(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%esi,4), %ecx
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	movl	84(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %esi
	cmpl	%esi, %ebx
	setbe	36(%esp)                ## 1-byte Folded Spill
	cmpl	%edx, %ecx
	setbe	%ch
	cmpl	32(%esp), %ebx          ## 4-byte Folded Reload
	setbe	%cl
	cmpl	%edx, %edi
	setbe	%bl
	testb	36(%esp), %ch           ## 1-byte Folded Reload
	jne	LBB11_109
## BB#110:                              ## %vector.memcheck170
	andb	%bl, %cl
	movl	68(%esp), %ebx          ## 4-byte Reload
	movl	$0, %ecx
	movl	56(%esp), %edx          ## 4-byte Reload
	jne	LBB11_119
## BB#111:                              ## %vector.body138.preheader
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	88(%esp), %edi          ## 4-byte Reload
	movl	120(%esp), %ecx         ## 4-byte Reload
	cmpl	%edi, %ecx
	movl	%edi, %esi
	cmovgel	%ecx, %esi
	movl	112(%esp), %ebp         ## 4-byte Reload
	movl	100(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %ebp
	cmovgel	%ebp, %ecx
	addl	%esi, %ecx
	subl	116(%esp), %ecx         ## 4-byte Folded Reload
	cmpl	%ebx, %ecx
	cmovll	%ebx, %ecx
	notl	%ecx
	andl	$-4, %ecx
	addl	$-4, %ecx
	shrl	$2, %ecx
	leal	1(%ecx), %ebx
	xorl	%esi, %esi
	testb	$1, %bl
	je	LBB11_113
## BB#112:                              ## %vector.body138.prol
	movl	84(%esp), %esi          ## 4-byte Reload
	movups	(%esi), %xmm0
	movl	40(%esp), %esi          ## 4-byte Reload
	movups	(%esi), %xmm1
	xorps	%xmm0, %xmm1
	movl	64(%esp), %esi          ## 4-byte Reload
	movl	44(%esp), %ebx          ## 4-byte Reload
	movups	%xmm1, (%esi,%ebx,4)
	movl	$4, %esi
LBB11_113:                              ## %vector.body138.preheader.split
	movl	%esi, 32(%esp)          ## 4-byte Spill
	testl	%ecx, %ecx
	jne	LBB11_115
## BB#114:
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	68(%esp), %ebx          ## 4-byte Reload
	jmp	LBB11_119
LBB11_107:
	xorl	%ecx, %ecx
	jmp	LBB11_119
LBB11_109:
	movl	68(%esp), %ebx          ## 4-byte Reload
	xorl	%ecx, %ecx
	jmp	LBB11_118
LBB11_115:                              ## %vector.body138.preheader.split.split
	movl	120(%esp), %esi         ## 4-byte Reload
	cmpl	%esi, %edi
	movl	%edi, %ecx
	cmovll	%esi, %ecx
	movl	28(%esp), %ebx          ## 4-byte Reload
	subl	%ecx, %ebx
	movl	100(%esp), %edx         ## 4-byte Reload
	cmpl	%ebp, %edx
	movl	%ebp, %ecx
	cmovgel	%edx, %ecx
	subl	%ecx, %ebx
	movl	76(%esp), %ecx          ## 4-byte Reload
	cmpl	%ebx, %ecx
	cmovgel	%ecx, %ebx
	negl	%ebx
	movl	32(%esp), %ecx          ## 4-byte Reload
	leal	4(%ecx,%ebx), %ecx
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%ecx,4), %ebp
	cmpl	%edi, %esi
	movl	%edi, %ecx
	cmovgel	%esi, %ecx
	movl	112(%esp), %edi         ## 4-byte Reload
	cmpl	%edx, %edi
	movl	%edx, %esi
	cmovgel	%edi, %esi
	addl	%ecx, %esi
	movl	84(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	leal	16(%ecx,%edx,4), %ecx
	subl	116(%esp), %esi         ## 4-byte Folded Reload
	movl	68(%esp), %ebx          ## 4-byte Reload
	cmpl	%ebx, %esi
	cmovll	%ebx, %esi
	notl	%esi
	andl	$-4, %esi
	subl	%edx, %esi
	movl	40(%esp), %edi          ## 4-byte Reload
	leal	16(%edi,%edx,4), %edi
	.align	4, 0x90
LBB11_116:                              ## %vector.body138
                                        ## =>This Inner Loop Header: Depth=1
	movups	-16(%ecx), %xmm0
	movups	-16(%edi), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, -16(%ebp)
	movups	(%ecx), %xmm0
	movups	(%edi), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%ebp)
	addl	$32, %ebp
	addl	$32, %ecx
	addl	$32, %edi
	addl	$-8, %esi
	jne	LBB11_116
## BB#117:
	movl	36(%esp), %ecx          ## 4-byte Reload
LBB11_118:                              ## %middle.block139
	movl	56(%esp), %edx          ## 4-byte Reload
LBB11_119:                              ## %middle.block139
	cmpl	%edx, %ecx
	movl	112(%esp), %ebp         ## 4-byte Reload
	movl	100(%esp), %edi         ## 4-byte Reload
	je	LBB11_120
LBB11_100:                              ## %scalar.ph140.preheader
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	movl	%ebp, 112(%esp)         ## 4-byte Spill
	movl	%ecx, %edx
	notl	%edx
	movl	88(%esp), %ecx          ## 4-byte Reload
	movl	120(%esp), %esi         ## 4-byte Reload
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	cmpl	%ebp, %edi
	movl	%ebp, %esi
	cmovgel	%edi, %esi
	addl	%ecx, %esi
	subl	116(%esp), %esi         ## 4-byte Folded Reload
	cmpl	%ebx, %esi
	cmovll	%ebx, %esi
	subl	%esi, %edx
	movl	$-2, %ecx
	movl	68(%esp), %ebp          ## 4-byte Reload
	subl	%ebp, %ecx
	subl	%esi, %ecx
	testb	$1, %dl
	je	LBB11_101
## BB#102:                              ## %scalar.ph140.prol
	movl	%edi, 100(%esp)         ## 4-byte Spill
	movl	40(%esp), %edx          ## 4-byte Reload
	movl	(%edx,%ebp,4), %edx
	movl	84(%esp), %esi          ## 4-byte Reload
	xorl	(%esi,%ebp,4), %edx
	movl	44(%esp), %edi          ## 4-byte Reload
	addl	%ebp, %edi
	movl	64(%esp), %esi          ## 4-byte Reload
	movl	%edx, (%esi,%edi,4)
	incl	%ebp
	jmp	LBB11_103
LBB11_101:
	movl	%edi, 100(%esp)         ## 4-byte Spill
LBB11_103:                              ## %scalar.ph140.preheader.split
	movl	%ebp, %esi
	testl	%ecx, %ecx
	movl	112(%esp), %ebp         ## 4-byte Reload
	movl	100(%esp), %edi         ## 4-byte Reload
	je	LBB11_120
## BB#104:                              ## %scalar.ph140.preheader.split.split
	movl	116(%esp), %ecx         ## 4-byte Reload
	leal	-1(%ecx), %edx
	movl	88(%esp), %ecx          ## 4-byte Reload
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	120(%esp), %esi         ## 4-byte Reload
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	subl	%ecx, %edx
	cmpl	%ebp, %edi
	cmovgel	%edi, %ebp
	subl	%ebp, %edx
	movl	76(%esp), %esi          ## 4-byte Reload
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	addl	%ecx, %ebp
	negl	%edx
	subl	116(%esp), %ebp         ## 4-byte Folded Reload
	cmpl	%ebx, %ebp
	cmovll	%ebx, %ebp
	movl	68(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, %ecx
	notl	%ecx
	subl	%ebp, %ecx
	leal	1(%ebx,%edx), %edx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edx,4), %edx
	movl	40(%esp), %esi          ## 4-byte Reload
	leal	4(%esi,%ebx,4), %esi
	movl	84(%esp), %edi          ## 4-byte Reload
	leal	4(%edi,%ebx,4), %edi
	.align	4, 0x90
LBB11_105:                              ## %scalar.ph140
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi), %ebx
	xorl	-4(%edi), %ebx
	movl	%ebx, -4(%edx)
	movl	(%esi), %ebx
	xorl	(%edi), %ebx
	movl	%ebx, (%edx)
	addl	$8, %edx
	addl	$8, %esi
	addl	$8, %edi
	addl	$-2, %ecx
	jne	LBB11_105
LBB11_120:                              ## %..preheader_crit_edge.i22
	notl	%eax
	movl	88(%esp), %esi          ## 4-byte Reload
	movl	120(%esp), %edi         ## 4-byte Reload
	movl	76(%esp), %ebx          ## 4-byte Reload
	movl	104(%esp), %ebp         ## 4-byte Reload
LBB11_121:                              ## %.preheader.i24
	cmpl	%ebp, %eax
	jge	LBB11_146
## BB#122:                              ## %.lr.ph.i30.preheader
	movl	%ebp, 104(%esp)         ## 4-byte Spill
	movl	116(%esp), %ebp         ## 4-byte Reload
	decl	%ebp
	movl	%ebp, 116(%esp)         ## 4-byte Spill
	cmpl	%edi, %esi
	movl	%esi, %ecx
	cmovll	%edi, %ecx
	subl	%ecx, %ebp
	notl	%esi
	movl	%edi, %edx
	notl	%edx
	cmpl	%edx, %esi
	movl	%edx, %ecx
	cmovgel	%esi, %ecx
	subl	%ecx, %ebp
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	leal	-1(%ebp), %ecx
	subl	%eax, %ecx
	cmpl	$-1, %ecx
	je	LBB11_123
## BB#131:                              ## %overflow.checked201
	movl	%ebp, %ecx
	movl	%ebp, 56(%esp)          ## 4-byte Spill
	subl	%eax, %ecx
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	andl	$-4, %ecx
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	88(%esp), %ebp          ## 4-byte Reload
	cmpl	%edi, %ebp
	movl	%edi, %ecx
	cmovll	%ecx, %ebp
	movl	116(%esp), %ecx         ## 4-byte Reload
	subl	%ebp, %ecx
	cmpl	%edx, %esi
	movl	%edx, %edi
	movl	%edx, 112(%esp)         ## 4-byte Spill
	cmovgel	%esi, %edi
	subl	%edi, %ecx
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	andl	$-4, 68(%esp)           ## 4-byte Folded Spill
	je	LBB11_132
## BB#133:                              ## %vector.memcheck217
	movl	%esi, 100(%esp)         ## 4-byte Spill
	movl	%ebx, 76(%esp)          ## 4-byte Spill
	movl	84(%esp), %ebx          ## 4-byte Reload
	leal	-4(%ebx,%ecx,4), %edx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	64(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%edi,4), %ecx
	movl	%ebp, %edi
	cmpl	%edx, %ecx
	ja	LBB11_136
## BB#134:                              ## %vector.memcheck217
	leal	(%ebx,%eax,4), %ecx
	leal	-4(%edi), %edx
	cmpl	%edx, %ecx
	jbe	LBB11_135
LBB11_136:                              ## %vector.body192.preheader
	movl	88(%esp), %ebp          ## 4-byte Reload
	movl	120(%esp), %edx         ## 4-byte Reload
	cmpl	%ebp, %edx
	movl	%ebp, %ecx
	cmovgel	%edx, %ecx
	movl	116(%esp), %esi         ## 4-byte Reload
	subl	%ecx, %esi
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	112(%esp), %edx         ## 4-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	subl	%ecx, %esi
	movl	76(%esp), %ecx          ## 4-byte Reload
	cmpl	%esi, %ecx
	cmovgel	%ecx, %esi
	subl	%eax, %esi
	andl	$-4, %esi
	addl	$-4, %esi
	shrl	$2, %esi
	leal	1(%esi), %ecx
	testb	$3, %cl
	movl	%eax, %edi
	je	LBB11_139
## BB#137:                              ## %vector.body192.prol.preheader
	movl	88(%esp), %edx          ## 4-byte Reload
	movl	120(%esp), %edi         ## 4-byte Reload
	cmpl	%edx, %edi
	movl	%edx, %ecx
	cmovgel	%edi, %ecx
	movl	116(%esp), %ebp         ## 4-byte Reload
	subl	%ecx, %ebp
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	112(%esp), %esi         ## 4-byte Reload
	cmpl	100(%esp), %esi         ## 4-byte Folded Reload
	movl	100(%esp), %ecx         ## 4-byte Reload
	cmovgel	%esi, %ecx
	subl	%ecx, %ebp
	movl	76(%esp), %ecx          ## 4-byte Reload
	cmpl	%ebp, %ecx
	cmovgel	%ecx, %ebp
	subl	%eax, %ebp
	andl	$-4, %ebp
	addl	$-4, %ebp
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	movl	116(%esp), %ecx         ## 4-byte Reload
	subl	%edx, %ecx
	movl	100(%esp), %edi         ## 4-byte Reload
	cmpl	%esi, %edi
	movl	%esi, %edx
	movl	68(%esp), %esi          ## 4-byte Reload
	cmovgel	%edi, %edx
	subl	%edx, %ecx
	movl	76(%esp), %edx          ## 4-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	leal	(,%ecx,4), %edi
	movl	64(%esp), %edx          ## 4-byte Reload
	subl	%edi, %edx
	subl	%eax, %ecx
	andl	$12, %ecx
	addl	$-4, %ecx
	shrl	$2, %ecx
	incl	%ecx
	andl	$3, %ecx
	negl	%ecx
	movl	%eax, %edi
	.align	4, 0x90
LBB11_138:                              ## %vector.body192.prol
                                        ## =>This Inner Loop Header: Depth=1
	movups	(%ebx,%edi,4), %xmm0
	movups	%xmm0, (%edx,%edi,4)
	addl	$4, %edi
	addl	$-4, %ebp
	incl	%ecx
	jne	LBB11_138
LBB11_139:                              ## %vector.body192.preheader.split
	movl	44(%esp), %ecx          ## 4-byte Reload
	addl	%eax, %ecx
	cmpl	$3, %esi
	jae	LBB11_141
## BB#140:
	movl	%ecx, %eax
LBB11_135:
	movl	88(%esp), %edx          ## 4-byte Reload
	movl	76(%esp), %ebx          ## 4-byte Reload
	jmp	LBB11_145
LBB11_123:
	movl	%edx, 112(%esp)         ## 4-byte Spill
	movl	%esi, 100(%esp)         ## 4-byte Spill
	movl	88(%esp), %edx          ## 4-byte Reload
	jmp	LBB11_124
LBB11_132:
	movl	%esi, 100(%esp)         ## 4-byte Spill
	jmp	LBB11_144
LBB11_141:                              ## %vector.body192.preheader.split.split
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	88(%esp), %ebp          ## 4-byte Reload
	movl	120(%esp), %ebx         ## 4-byte Reload
	cmpl	%ebx, %ebp
	movl	%ebp, %ecx
	cmovll	%ebx, %ecx
	movl	116(%esp), %edx         ## 4-byte Reload
	subl	%ecx, %edx
	movl	100(%esp), %esi         ## 4-byte Reload
	cmpl	112(%esp), %esi         ## 4-byte Folded Reload
	movl	112(%esp), %ecx         ## 4-byte Reload
	cmovgel	%esi, %ecx
	subl	%ecx, %edx
	movl	76(%esp), %ecx          ## 4-byte Reload
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	negl	%edx
	cmpl	%ebp, %ebx
	movl	%ebx, %ecx
	movl	%ebp, %ebx
	cmovgel	%ecx, %ebx
	movl	116(%esp), %ecx         ## 4-byte Reload
	subl	%ebx, %ecx
	movl	112(%esp), %ebp         ## 4-byte Reload
	cmpl	%esi, %ebp
	movl	%esi, %ebx
	cmovgel	%ebp, %ebx
	subl	%ebx, %ecx
	movl	76(%esp), %ebx          ## 4-byte Reload
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	subl	%eax, %ecx
	andl	$-4, %ecx
	addl	%eax, %ecx
	leal	12(%edi,%edx), %eax
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	subl	%edi, %ecx
	movl	84(%esp), %edx          ## 4-byte Reload
	leal	48(%edx,%edi,4), %edx
	.align	4, 0x90
LBB11_142:                              ## %vector.body192
                                        ## =>This Inner Loop Header: Depth=1
	movups	-48(%edx), %xmm0
	movups	%xmm0, -48(%eax)
	movups	-32(%edx), %xmm0
	movups	%xmm0, -32(%eax)
	movups	-16(%edx), %xmm0
	movups	%xmm0, -16(%eax)
	movups	(%edx), %xmm0
	movups	%xmm0, (%eax)
	addl	$64, %eax
	addl	$64, %edx
	addl	$-16, %ecx
	jne	LBB11_142
## BB#143:
	movl	44(%esp), %eax          ## 4-byte Reload
LBB11_144:                              ## %middle.block193
	movl	88(%esp), %edx          ## 4-byte Reload
LBB11_145:                              ## %middle.block193
	movl	120(%esp), %edi         ## 4-byte Reload
	movl	56(%esp), %ecx          ## 4-byte Reload
	cmpl	%eax, %ecx
	je	LBB11_146
LBB11_124:                              ## %.lr.ph.i30.preheader232
	cmpl	%edi, %edx
	movl	%edx, %ecx
	cmovll	%edi, %ecx
	movl	116(%esp), %esi         ## 4-byte Reload
	subl	%ecx, %esi
	movl	100(%esp), %ebp         ## 4-byte Reload
	movl	112(%esp), %ecx         ## 4-byte Reload
	cmpl	%ecx, %ebp
	cmovgel	%ebp, %ecx
	subl	%ecx, %esi
	cmpl	%esi, %ebx
	cmovgel	%ebx, %esi
	leal	1(%eax), %ecx
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	cmpl	%ecx, %esi
	cmovll	%ecx, %esi
	movl	%esi, %edx
	subl	%eax, %edx
	decl	%esi
	subl	%eax, %esi
	testb	$3, %dl
	movl	%ebx, %ecx
	je	LBB11_125
## BB#126:                              ## %.lr.ph.i30.prol.preheader
	movl	88(%esp), %edx          ## 4-byte Reload
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	movl	116(%esp), %ebx         ## 4-byte Reload
	subl	%edx, %ebx
	movl	112(%esp), %edx         ## 4-byte Reload
	cmpl	%edx, %ebp
	cmovgel	%ebp, %edx
	subl	%edx, %ebx
	cmpl	%ebx, %ecx
	cmovgel	%ecx, %ebx
	shll	$2, %ebx
	movl	88(%esp), %edx          ## 4-byte Reload
	movl	64(%esp), %edi          ## 4-byte Reload
	subl	%ebx, %edi
	cmpl	%edx, 120(%esp)         ## 4-byte Folded Reload
	movl	%edx, %ebx
	cmovgel	120(%esp), %ebx         ## 4-byte Folded Reload
	movl	116(%esp), %edx         ## 4-byte Reload
	subl	%ebx, %edx
	cmpl	%ebp, 112(%esp)         ## 4-byte Folded Reload
	cmovgel	112(%esp), %ebp         ## 4-byte Folded Reload
	subl	%ebp, %edx
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	movl	%ecx, 76(%esp)          ## 4-byte Spill
	movl	68(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, %edx
	cmovll	%ecx, %edx
	subl	%eax, %edx
	andl	$3, %edx
	negl	%edx
	movl	84(%esp), %ebx          ## 4-byte Reload
	.align	4, 0x90
LBB11_127:                              ## %.lr.ph.i30.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%eax,4), %ecx
	movl	%ecx, (%edi,%eax,4)
	incl	%eax
	incl	%edx
	jne	LBB11_127
	jmp	LBB11_128
LBB11_125:
	movl	%ecx, 76(%esp)          ## 4-byte Spill
	movl	%edi, 120(%esp)         ## 4-byte Spill
	movl	84(%esp), %ebx          ## 4-byte Reload
LBB11_128:                              ## %.lr.ph.i30.preheader232.split
	cmpl	$3, %esi
	movl	%ebx, %esi
	movl	88(%esp), %ebp          ## 4-byte Reload
	movl	120(%esp), %ecx         ## 4-byte Reload
	movl	76(%esp), %edi          ## 4-byte Reload
	movl	104(%esp), %ebx         ## 4-byte Reload
	jb	LBB11_146
## BB#129:                              ## %.lr.ph.i30.preheader232.split.split
	cmpl	%ecx, %ebp
	cmovll	%ecx, %ebp
	movl	116(%esp), %edx         ## 4-byte Reload
	subl	%ebp, %edx
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	112(%esp), %ebp         ## 4-byte Reload
	cmpl	%ebp, %ecx
	cmovgel	%ecx, %ebp
	subl	%ebp, %edx
	cmpl	%edx, %edi
	cmovgel	%edi, %edx
	movl	$3, %ecx
	subl	%edx, %ecx
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB11_130:                              ## %.lr.ph.i30
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%esi,%eax,4), %edx
	movl	%edx, -12(%ecx,%eax,4)
	movl	4(%esi,%eax,4), %edx
	movl	%edx, -8(%ecx,%eax,4)
	movl	8(%esi,%eax,4), %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	12(%esi,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	addl	$4, %eax
	cmpl	%ebx, %eax
	jl	LBB11_130
LBB11_146:                              ## %F2x_addspec.exit31
	movl	108(%esp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	movl	%eax, %esi
	leal	8(%esi), %ecx
	movl	60(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, %edx
	addl	$8, %edx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%esi), %edi
	andl	%eax, %edi
	addl	$-2, %edi
	andl	(%ebx), %eax
	addl	$-2, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2x_mulspec
	movl	%eax, %edi
	movl	4(%esi), %eax
	movl	%eax, 4(%edi)
	movl	52(%esp), %esi          ## 4-byte Reload
	movl	%esi, 4(%esp)
	movl	48(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, (%esp)
	calll	_F2x_add
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2x_add
	movl	80(%esp), %edi          ## 4-byte Reload
	movl	%edi, (%esp)
	movl	%ebx, %ecx
	movl	%eax, %edx
	calll	_F2x_addshift
	movl	%eax, %ecx
	movl	%edi, %eax
LBB11_148:
	movl	%eax, (%esp)
	movl	%esi, %edx
	calll	_F2x_addshift
	movl	92(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	96(%esp), %ecx          ## 4-byte Reload
	movl	%eax, %edx
	calll	_F2x_shiftip
LBB11_15:
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_sqr
	.align	4, 0x90
_F2x_sqr:                               ## @F2x_sqr
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L12$pb
L12$pb:
	popl	%esi
	movl	48(%esp), %eax
	movl	(%eax), %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, 24(%esp)          ## 4-byte Spill
	leal	(%edx,%edx), %eax
	movl	L_avma$non_lazy_ptr-L12$pb(%esi), %ecx
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	movl	(%ecx), %ebx
	movl	$2, %edi
	subl	%eax, %edi
	movl	L_bot$non_lazy_ptr-L12$pb(%esi), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	leal	-2(%edx,%edx), %ebp
	cmpl	%ebp, %ecx
	leal	(%ebx,%edi,4), %eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	jae	LBB12_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB12_2:                                ## %new_chunk.exit.i
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	cmpl	$16777216, %ebp         ## imm = 0x1000000
	jb	LBB12_4
## BB#3:
	leal	L_.str4-L12$pb(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB12_4:                                ## %cgetg.exit
	movl	%ebp, %eax
	movl	%ebp, 12(%esp)          ## 4-byte Spill
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebx,%edi,4)
	movl	48(%esp), %eax
	movl	4(%eax), %eax
	orl	$1, %edi
	movl	%eax, (%ebx,%edi,4)
	cmpl	$3, 24(%esp)            ## 4-byte Folded Reload
	jb	LBB12_11
## BB#5:                                ## %.lr.ph.preheader
	movl	24(%esp), %eax          ## 4-byte Reload
	leal	(,%eax,8), %eax
	subl	%eax, %ebx
	movl	%ebx, 20(%esp)          ## 4-byte Spill
	movl	$2, %eax
	.align	4, 0x90
LBB12_6:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	48(%esp), %ecx
	movl	(%ecx,%eax,4), %edi
	movl	%edi, %ebp
	shrl	$16, %ebp
	leal	(%eax,%eax), %ecx
	movl	$0, (%ebx,%eax,8)
	testw	%di, %di
	je	LBB12_8
## BB#7:                                ## %.preheader3
                                        ##   in Loop: Header=BB12_6 Depth=1
	movl	%edi, %ebx
	andl	$15, %ebx
	movl	%edi, %edx
	shrl	$2, %edx
	andl	$60, %edx
	movl	_F2x_sqr.sq-L12$pb(%esi,%edx), %edx
	shll	$8, %edx
	orl	_F2x_sqr.sq-L12$pb(%esi,%ebx,4), %edx
	movl	%edi, %ebx
	shrl	$6, %ebx
	andl	$60, %ebx
	movl	_F2x_sqr.sq-L12$pb(%esi,%ebx), %ebx
	shll	$16, %ebx
	orl	%edx, %ebx
	movl	%edi, %edx
	shrl	$10, %edx
	andl	$60, %edx
	movl	_F2x_sqr.sq-L12$pb(%esi,%edx), %edx
	shll	$24, %edx
	orl	%ebx, %edx
	movl	20(%esp), %ebx          ## 4-byte Reload
	movl	%edx, (%ebx,%ecx,4)
LBB12_8:                                ##   in Loop: Header=BB12_6 Depth=1
	movl	$0, 4(%ebx,%eax,8)
	testl	%ebp, %ebp
	je	LBB12_10
## BB#9:                                ## %.preheader
                                        ##   in Loop: Header=BB12_6 Depth=1
	andl	$15, %ebp
	movl	%edi, %edx
	shrl	$18, %edx
	andl	$60, %edx
	movl	_F2x_sqr.sq-L12$pb(%esi,%edx), %edx
	shll	$8, %edx
	orl	_F2x_sqr.sq-L12$pb(%esi,%ebp,4), %edx
	movl	%ebx, %ebp
	movl	%edi, %ebx
	shrl	$22, %ebx
	andl	$60, %ebx
	movl	_F2x_sqr.sq-L12$pb(%esi,%ebx), %ebx
	shll	$16, %ebx
	orl	%edx, %ebx
	shrl	$28, %edi
	movl	_F2x_sqr.sq-L12$pb(%esi,%edi,4), %edx
	shll	$24, %edx
	orl	%ebx, %edx
	movl	%ebp, %ebx
	movl	%edx, 4(%ebx,%ecx,4)
LBB12_10:                               ##   in Loop: Header=BB12_6 Depth=1
	incl	%eax
	cmpl	24(%esp), %eax          ## 4-byte Folded Reload
	jl	LBB12_6
LBB12_11:                               ## %._crit_edge
	movl	12(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI13_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2x_rem
	.align	4, 0x90
_F2x_rem:                               ## @F2x_rem
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	L13$pb
L13$pb:
	popl	%ebx
	movl	100(%esp), %ecx
	movl	96(%esp), %eax
	movl	(%eax), %edi
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ecx), %eax
	movl	$-1, 72(%esp)           ## 4-byte Folded Spill
	cmpl	$2, %eax
	movl	$-1, %edx
	je	LBB13_9
## BB#1:
	movl	-4(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %esi
	movl	$28, %edx
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB13_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB13_3:
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB13_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB13_5:                                ## %F2x_degree.exit
	addl	$-65, %eax
	subl	%edx, %eax
	subl	_F2x_degree_lg.__bfffo_tabshi-L13$pb(%ebx,%ecx,4), %eax
	movl	%eax, %edx
	jne	LBB13_9
## BB#6:
	movl	96(%esp), %eax
	movl	4(%eax), %edi
	movl	%ebx, %eax
	movl	L_avma$non_lazy_ptr-L13$pb(%eax), %ebp
	movl	(%ebp), %ebx
	leal	-8(%ebx), %esi
	movl	L_bot$non_lazy_ptr-L13$pb(%eax), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	cmpl	$7, %ecx
	ja	LBB13_8
## BB#7:
	movl	$14, (%esp)
	calll	_pari_err
LBB13_8:
	movl	%esi, (%ebp)
	movl	$738197506, -8(%ebx)    ## imm = 0x2C000002
	movl	%edi, -4(%ebx)
	movl	%esi, %eax
	jmp	LBB13_80
LBB13_9:                                ## %F2x_degree.exit.thread
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	%edi, %esi
	movl	%edi, 68(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	cmpl	$2, %esi
	je	LBB13_15
## BB#10:
	movl	96(%esp), %eax
	movl	-4(%eax,%esi,4), %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	cmpl	$65535, %ecx            ## imm = 0xFFFF
	cmovbel	%ecx, %eax
	movl	$12, %edx
	movl	$28, %ecx
	cmoval	%edx, %ecx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB13_12
## BB#11:
	addl	$-8, %ecx
	shrl	$8, %eax
LBB13_12:
	movl	%esi, %edx
	shll	$5, %edx
	cmpl	$16, %eax
	jb	LBB13_14
## BB#13:
	addl	$-4, %ecx
	shrl	$4, %eax
LBB13_14:
	addl	$-65, %edx
	subl	%ecx, %edx
	subl	_F2x_degree_lg.__bfffo_tabshi-L13$pb(%ebx,%eax,4), %edx
	movl	%edx, 72(%esp)          ## 4-byte Spill
LBB13_15:                               ## %F2x_degree_lg.exit
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L13$pb(%ebx), %ebp
	movl	(%ebp), %ecx
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	L_bot$non_lazy_ptr-L13$pb(%ebx), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%esi, %ecx
	jae	LBB13_17
## BB#16:
	movl	$14, (%esp)
	calll	_pari_err
LBB13_17:                               ## %cgetg_copy.exit.i.i
	movl	%edi, (%ebp)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	movl	96(%esp), %ecx
	andl	(%ecx), %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	movl	%esi, 52(%esp)          ## 4-byte Spill
	movl	40(%esp), %ebx          ## 4-byte Reload
	jb	LBB13_34
## BB#18:                               ## %.lr.ph.i.i.preheader
	movl	68(%esp), %ebp          ## 4-byte Reload
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, %esi
	negl	%esi
	cmpl	$-3, %esi
	movl	$-2, %edx
	cmovgl	%esi, %edx
	addl	%ebp, %edx
	cmpl	$-1, %edx
	movl	52(%esp), %eax          ## 4-byte Reload
	je	LBB13_27
## BB#19:                               ## %overflow.checked
	incl	%edx
	cmpl	$-3, %esi
	movl	$-2, %ebx
	cmovgl	%esi, %ebx
	xorl	%ecx, %ecx
	movl	%edx, %eax
	andl	$-8, %eax
	je	LBB13_20
## BB#21:                               ## %vector.memcheck
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%ebx, %eax
	notl	%eax
	movl	96(%esp), %ecx
	leal	(%ecx,%eax,4), %ecx
	movl	64(%esp), %eax          ## 4-byte Reload
	leal	-4(%eax), %eax
	cmpl	%ecx, %eax
	ja	LBB13_23
## BB#22:                               ## %vector.memcheck
	movl	96(%esp), %eax
	leal	-4(%eax,%ebp,4), %eax
	addl	%ebp, %ebx
	notl	%ebx
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebx,4), %ebx
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	movl	52(%esp), %eax          ## 4-byte Reload
	jbe	LBB13_26
LBB13_23:                               ## %vector.body.preheader
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %eax
	subl	60(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$-3, %esi
	movl	$-2, %ebx
	cmovgl	%esi, %ebx
	leal	1(%ebx,%ebp), %esi
	andl	$-8, %esi
	movl	36(%esp), %ebx          ## 4-byte Reload
	movdqa	LCPI13_0-L13$pb(%ebx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	96(%esp), %edi
	.align	4, 0x90
LBB13_24:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebx
	movdqu	-12(%edi,%ebx,4), %xmm1
	movups	-28(%edi,%ebx,4), %xmm2
	subl	%ecx, %ebx
	movdqu	%xmm1, -12(%edx,%ebx,4)
	movups	%xmm2, -28(%edx,%ebx,4)
	addl	$-8, %ebp
	addl	$-8, %esi
	jne	LBB13_24
## BB#25:
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	20(%esp), %edi          ## 4-byte Reload
	movl	56(%esp), %edx          ## 4-byte Reload
	jmp	LBB13_26
LBB13_20:
	movl	52(%esp), %eax          ## 4-byte Reload
LBB13_26:                               ## %middle.block
	cmpl	%ecx, %edx
	movl	40(%esp), %ebx          ## 4-byte Reload
	movl	96(%esp), %ecx
	je	LBB13_34
LBB13_27:                               ## %.lr.ph.i.i.preheader82
	movl	%ecx, %edx
	movl	%eax, %esi
	negl	%esi
	cmpl	$-3, %esi
	movl	$-2, %ecx
	cmovgl	%esi, %ecx
	leal	(%eax,%ecx), %ebp
	leal	1(%eax,%ecx), %ecx
	testb	$3, %cl
	je	LBB13_28
## BB#29:                               ## %.lr.ph.i.i.prol.preheader
	movl	%ebp, 60(%esp)          ## 4-byte Spill
	movl	%ebx, %ebp
	movl	68(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	%edi, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %ecx
	movl	%ebx, %edi
	cmpl	$-3, %esi
	movl	$-2, %ebx
	cmovgl	%esi, %ebx
	leal	1(%eax,%ebx), %esi
	andl	$3, %esi
	negl	%esi
	.align	4, 0x90
LBB13_30:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%edx,%eax,4), %ebx
	movl	%ebx, (%ecx,%eax,4)
	leal	-1(%eax), %eax
	incl	%esi
	jne	LBB13_30
	jmp	LBB13_31
LBB13_28:
	movl	%ebp, 60(%esp)          ## 4-byte Spill
	movl	%ebx, %ebp
LBB13_31:                               ## %.lr.ph.i.i.preheader82.split
	cmpl	$3, 60(%esp)            ## 4-byte Folded Reload
	movl	%ebp, %ebx
	movl	%edx, %esi
	jb	LBB13_34
## BB#32:                               ## %.lr.ph.i.i.preheader82.split.split
	movl	68(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB13_33:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	-8(%esi,%eax,4), %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	-12(%esi,%eax,4), %edx
	movl	%edx, -8(%ecx,%eax,4)
	movl	-16(%esi,%eax,4), %edx
	movl	%edx, -12(%ecx,%eax,4)
	leal	-4(%eax), %eax
	cmpl	$1, %eax
	jg	LBB13_33
LBB13_34:                               ## %vecsmall_copy.exit.preheader
	movl	72(%esp), %edx          ## 4-byte Reload
	cmpl	%ebx, %edx
	jge	LBB13_36
## BB#35:
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	52(%esp), %eax          ## 4-byte Reload
	jmp	LBB13_79
LBB13_36:                               ## %.lr.ph
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	68(%esp), %edi          ## 4-byte Reload
	movl	%edi, %eax
	notl	%eax
	movl	%edi, %ecx
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	xorl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	$2, %ecx
	subl	%edi, %ecx
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	movl	100(%esp), %ebp
	leal	8(%ebp), %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	shll	$2, %edi
	movl	64(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %esi
	subl	%edi, %esi
	movl	%esi, 24(%esp)          ## 4-byte Spill
	leal	16(%ebp), %esi
	movl	%esi, 8(%esp)           ## 4-byte Spill
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%ecx,%eax,4), %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	movl	52(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB13_37:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_65 Depth 2
                                        ##     Child Loop BB13_55 Depth 2
                                        ##     Child Loop BB13_45 Depth 2
                                        ##     Child Loop BB13_68 Depth 2
	subl	%ebx, %edx
	movl	%edx, %eax
	sarl	$5, %eax
	movl	(%ebp), %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	andl	$31, %edx
	je	LBB13_38
## BB#59:                               ##   in Loop: Header=BB13_37 Depth=1
	cmpl	$3, %esi
	jb	LBB13_68
## BB#60:                               ## %.lr.ph4.i
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	$32, %ecx
	subl	%edx, %ecx
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	%eax, %ecx
	subl	52(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	cmpl	$2, %esi
	movl	$3, %ebx
	cmovgl	%esi, %ebx
	leal	-2(%ebx), %ecx
	addl	$-3, %ebx
	testb	$1, %cl
	je	LBB13_61
## BB#62:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	%edi, 44(%esp)          ## 4-byte Spill
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	%edx, %ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	8(%ebp), %edx
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %edx
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	48(%esp), %ecx          ## 4-byte Reload
	xorl	%edx, 8(%eax,%ecx,4)
	movl	8(%ebp), %esi
	movl	56(%esp), %ecx          ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %esi
	movl	$3, %edx
	jmp	LBB13_63
	.align	4, 0x90
LBB13_38:                               ## %.preheader.i
                                        ##   in Loop: Header=BB13_37 Depth=1
	cmpl	$3, %esi
	jb	LBB13_68
## BB#39:                               ## %.lr.ph.i.preheader
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	%eax, %ecx
	movl	%eax, 60(%esp)          ## 4-byte Spill
	subl	52(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	cmpl	$3, %esi
	movl	$3, %ecx
	cmoval	%esi, %ecx
	movl	$2, %edx
	cmpl	$2, %ecx
	je	LBB13_40
## BB#47:                               ## %overflow.checked43
                                        ##   in Loop: Header=BB13_37 Depth=1
	leal	-2(%ecx), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movl	%edx, 56(%esp)          ## 4-byte Spill
	cmpl	$3, %esi
	movl	$3, %eax
	cmoval	%esi, %eax
	cmpl	$2, %edx
	movl	$2, %edx
	je	LBB13_58
## BB#48:                               ## %vector.memcheck60
                                        ##   in Loop: Header=BB13_37 Depth=1
	leal	-4(%ebp,%eax,4), %ebx
	movl	%ebx, 48(%esp)          ## 4-byte Spill
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	16(%esp), %esi          ## 4-byte Reload
	movl	60(%esp), %ebx          ## 4-byte Reload
	leal	(%esi,%ebx), %ebx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ebx,4), %ebx
	movl	68(%esp), %esi          ## 4-byte Reload
	cmpl	48(%esp), %ebx          ## 4-byte Folded Reload
	movl	40(%esp), %ebx          ## 4-byte Reload
	ja	LBB13_50
## BB#49:                               ## %vector.memcheck60
                                        ##   in Loop: Header=BB13_37 Depth=1
	addl	60(%esp), %eax          ## 4-byte Folded Reload
	addl	32(%esp), %eax          ## 4-byte Folded Reload
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %eax
	movl	68(%esp), %esi          ## 4-byte Reload
	cmpl	%eax, 12(%esp)          ## 4-byte Folded Reload
	jbe	LBB13_58
LBB13_50:                               ## %vector.body34.preheader
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	%esi, 68(%esp)          ## 4-byte Spill
	cmpl	$3, %esi
	movl	$3, %edx
	cmoval	%esi, %edx
	addl	$-2, %edx
	andl	$-4, %edx
	addl	$-4, %edx
	shrl	$2, %edx
	leal	1(%edx), %eax
	movl	$2, %esi
	testb	$1, %al
	je	LBB13_52
## BB#51:                               ## %vector.body34.prol
                                        ##   in Loop: Header=BB13_37 Depth=1
	movdqu	8(%ebp), %xmm0
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	72(%esp), %esi          ## 4-byte Reload
	movdqu	8(%eax,%esi,4), %xmm1
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, 8(%eax,%esi,4)
	movl	$6, %esi
LBB13_52:                               ## %vector.body34.preheader.split
                                        ##   in Loop: Header=BB13_37 Depth=1
	testl	%edx, %edx
	jne	LBB13_54
## BB#53:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	56(%esp), %edx          ## 4-byte Reload
	jmp	LBB13_57
LBB13_61:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	%edi, 44(%esp)          ## 4-byte Spill
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	%edx, 72(%esp)          ## 4-byte Spill
	movl	$2, %edx
	xorl	%esi, %esi
LBB13_63:                               ## %.lr.ph4.i.split
                                        ##   in Loop: Header=BB13_37 Depth=1
	testl	%ebx, %ebx
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	56(%esp), %ebx          ## 4-byte Reload
	je	LBB13_66
## BB#64:                               ## %.lr.ph4.i.split.split
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	60(%esp), %ecx          ## 4-byte Reload
	leal	(%eax,%ecx,4), %edi
	.align	4, 0x90
LBB13_65:                               ##   Parent Loop BB13_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	movl	(%eax,%edx,4), %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %ebp
	orl	%esi, %ebp
	xorl	%ebp, (%edi,%edx,4)
	movl	(%eax,%edx,4), %esi
	movb	%bl, %cl
	shrl	%cl, %esi
	movl	4(%eax,%edx,4), %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %ebp
	orl	%esi, %ebp
	xorl	%ebp, 4(%edi,%edx,4)
	movl	%eax, %ebp
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	4(%ebp,%edx,4), %esi
	movb	%bl, %cl
	shrl	%cl, %esi
	addl	$2, %edx
	cmpl	%eax, %edx
	jl	LBB13_65
LBB13_66:                               ##   in Loop: Header=BB13_37 Depth=1
	testl	%esi, %esi
	je	LBB13_67
## BB#72:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	%eax, %ecx
	cmpl	$3, %ecx
	movl	$3, %eax
	cmovbel	%eax, %ecx
	movl	48(%esp), %edx          ## 4-byte Reload
	addl	%ecx, %edx
	movl	64(%esp), %eax          ## 4-byte Reload
	xorl	%esi, (%eax,%edx,4)
LBB13_67:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	40(%esp), %ebx          ## 4-byte Reload
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	44(%esp), %edi          ## 4-byte Reload
	jmp	LBB13_68
LBB13_54:                               ## %vector.body34.preheader.split.split
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	60(%esp), %eax          ## 4-byte Reload
	leal	(%esi,%eax), %eax
	movl	24(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %edx
	movl	8(%esp), %eax           ## 4-byte Reload
	movl	%esi, 48(%esp)          ## 4-byte Spill
	leal	(%eax,%esi,4), %esi
	movl	68(%esp), %eax          ## 4-byte Reload
	cmpl	$3, %eax
	movl	$3, %ebx
	cmoval	%eax, %ebx
	addl	$-2, %ebx
	andl	$-4, %ebx
	orl	$2, %ebx
	subl	48(%esp), %ebx          ## 4-byte Folded Reload
	xorl	%eax, %eax
	.align	4, 0x90
LBB13_55:                               ## %vector.body34
                                        ##   Parent Loop BB13_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	-16(%esi,%eax,4), %xmm0
	movups	(%edx,%eax,4), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%edx,%eax,4)
	movdqu	(%esi,%eax,4), %xmm0
	movdqu	16(%edx,%eax,4), %xmm1
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, 16(%edx,%eax,4)
	addl	$8, %eax
	cmpl	%eax, %ebx
	jne	LBB13_55
## BB#56:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	40(%esp), %ebx          ## 4-byte Reload
LBB13_57:                               ## %middle.block35
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	68(%esp), %esi          ## 4-byte Reload
LBB13_58:                               ## %middle.block35
                                        ##   in Loop: Header=BB13_37 Depth=1
	cmpl	%edx, %ecx
	je	LBB13_46
LBB13_40:                               ## %.lr.ph.i.preheader81
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	%esi, 68(%esp)          ## 4-byte Spill
	leal	1(%edx), %ecx
	cmpl	%esi, %ecx
	cmovgel	%ecx, %esi
	movl	%esi, %eax
	subl	%edx, %eax
	decl	%esi
	subl	%edx, %esi
	testb	$1, %al
	je	LBB13_41
## BB#42:                               ## %.lr.ph.i.prol
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	(%ebp,%edx,4), %eax
	movl	%eax, 56(%esp)          ## 4-byte Spill
	movl	72(%esp), %eax          ## 4-byte Reload
	addl	%edx, %eax
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	56(%esp), %ebx          ## 4-byte Reload
	xorl	%ebx, (%edx,%eax,4)
	movl	40(%esp), %ebx          ## 4-byte Reload
	jmp	LBB13_43
LBB13_41:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	%edx, %ecx
LBB13_43:                               ## %.lr.ph.i.preheader81.split
                                        ##   in Loop: Header=BB13_37 Depth=1
	testl	%esi, %esi
	je	LBB13_46
## BB#44:                               ## %.lr.ph.i.preheader81.split.split
                                        ##   in Loop: Header=BB13_37 Depth=1
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	60(%esp), %edx          ## 4-byte Reload
	leal	(%eax,%edx,4), %eax
	movl	68(%esp), %esi          ## 4-byte Reload
	.align	4, 0x90
LBB13_45:                               ## %.lr.ph.i
                                        ##   Parent Loop BB13_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%ebp,%ecx,4), %edx
	xorl	%edx, (%eax,%ecx,4)
	movl	4(%ebp,%ecx,4), %edx
	xorl	%edx, 4(%eax,%ecx,4)
	addl	$2, %ecx
	cmpl	%esi, %ecx
	jl	LBB13_45
LBB13_46:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	28(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB13_68:                               ## %F2x_addshiftip.exit
                                        ##   Parent Loop BB13_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, %eax
	cmpl	$3, %eax
	jl	LBB13_70
## BB#69:                               ##   in Loop: Header=BB13_68 Depth=2
	leal	-1(%eax), %edi
	cmpl	$0, (%ecx,%eax,4)
	je	LBB13_68
LBB13_70:                               ## %.critedge
                                        ##   in Loop: Header=BB13_37 Depth=1
	cmpl	$2, %eax
	jne	LBB13_73
## BB#71:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	$2, %eax
	movl	$-1, %edx
	jmp	LBB13_78
	.align	4, 0x90
LBB13_73:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	%ecx, %edi
	movl	32(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax), %ecx
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	(%edx,%ecx,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$28, %edx
	movl	$12, %esi
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB13_75
## BB#74:                               ##   in Loop: Header=BB13_37 Depth=1
	addl	$-8, %edx
	shrl	$8, %ecx
LBB13_75:                               ##   in Loop: Header=BB13_37 Depth=1
	movl	%eax, %esi
	shll	$5, %esi
	cmpl	$16, %ecx
	jb	LBB13_77
## BB#76:                               ##   in Loop: Header=BB13_37 Depth=1
	addl	$-4, %edx
	shrl	$4, %ecx
LBB13_77:                               ##   in Loop: Header=BB13_37 Depth=1
	addl	$-65, %esi
	subl	%edx, %esi
	movl	36(%esp), %edx          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L13$pb(%edx,%ecx,4), %esi
	movl	%esi, %edx
	movl	%edi, %ecx
LBB13_78:                               ## %vecsmall_copy.exit.backedge
                                        ##   in Loop: Header=BB13_37 Depth=1
	cmpl	%ebx, %edx
	movl	%eax, %edi
	jge	LBB13_37
LBB13_79:                               ## %vecsmall_copy.exit._crit_edge
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
LBB13_80:
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI14_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2x_divrem
	.align	4, 0x90
_F2x_divrem:                            ## @F2x_divrem
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	calll	L14$pb
L14$pb:
	popl	%ebp
	movl	136(%esp), %ebx
	movl	132(%esp), %ecx
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	movl	128(%esp), %eax
	movl	%eax, 100(%esp)         ## 4-byte Spill
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	(%eax), %esi
	andl	%edx, %esi
	movl	4(%eax), %eax
	movl	%eax, 96(%esp)          ## 4-byte Spill
	andl	(%ecx), %edx
	cmpl	$2, %edx
	movl	$-1, %edi
	je	LBB14_6
## BB#1:
	movl	48(%esp), %eax          ## 4-byte Reload
	movl	-4(%eax,%edx,4), %ecx
	movl	%edx, %edi
	movl	%ecx, %eax
	shrl	$16, %eax
	cmpl	$65535, %ecx            ## imm = 0xFFFF
	cmovbel	%ecx, %eax
	movl	$12, %edx
	movl	$28, %ecx
	cmoval	%edx, %ecx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB14_3
## BB#2:
	addl	$-8, %ecx
	shrl	$8, %eax
LBB14_3:
	movl	%edi, %edx
	shll	$5, %edx
	cmpl	$16, %eax
	jb	LBB14_5
## BB#4:
	addl	$-4, %ecx
	shrl	$4, %eax
LBB14_5:                                ## %F2x_degree.exit
	addl	$-65, %edx
	subl	%ecx, %edx
	subl	_F2x_degree_lg.__bfffo_tabshi-L14$pb(%ebp,%eax,4), %edx
	movl	%edx, %edi
	jns	LBB14_7
LBB14_6:                                ## %F2x_degree.exit.thread
	movl	$27, (%esp)
	calll	_pari_err
	movl	%edi, %edx
LBB14_7:
	movl	%ebx, %ecx
	cmpl	$1, %ecx
	je	LBB14_173
## BB#8:
	testl	%edx, %edx
	je	LBB14_9
## BB#34:
	movl	$-1, %eax
	cmpl	$2, %esi
	je	LBB14_40
## BB#35:
	movl	%edx, %ebx
	movl	%ecx, %edi
	movl	100(%esp), %eax         ## 4-byte Reload
	movl	-4(%eax,%esi,4), %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	cmpl	$65535, %ecx            ## imm = 0xFFFF
	cmovbel	%ecx, %eax
	movl	$12, %edx
	movl	$28, %ecx
	cmoval	%edx, %ecx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB14_37
## BB#36:
	addl	$-8, %ecx
	shrl	$8, %eax
LBB14_37:
	movl	%ebx, %edx
	movl	%esi, %ebx
	shll	$5, %ebx
	cmpl	$16, %eax
	jb	LBB14_39
## BB#38:
	addl	$-4, %ecx
	shrl	$4, %eax
LBB14_39:
	addl	$-65, %ebx
	subl	%ecx, %ebx
	subl	_F2x_degree_lg.__bfffo_tabshi-L14$pb(%ebp,%eax,4), %ebx
	movl	%ebx, %eax
	movl	%edi, %ecx
LBB14_40:                               ## %F2x_degree_lg.exit
	cmpl	%edx, %eax
	jge	LBB14_90
## BB#41:
	cmpl	$2, %ecx
	je	LBB14_42
## BB#65:
	movl	L_avma$non_lazy_ptr-L14$pb(%ebp), %ebx
	movl	(%ebx), %esi
	leal	-8(%esi), %edx
	movl	L_bot$non_lazy_ptr-L14$pb(%ebp), %edi
	movl	%ebp, 72(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	subl	(%edi), %eax
	cmpl	$7, %eax
	movl	96(%esp), %eax          ## 4-byte Reload
	ja	LBB14_67
## BB#66:
	movl	$14, (%esp)
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	96(%esp), %eax          ## 4-byte Reload
	movl	40(%esp), %ecx          ## 4-byte Reload
LBB14_67:                               ## %pol0_F2x.exit9
	movl	%edx, (%ebx)
	movl	$738197506, -8(%esi)    ## imm = 0x2C000002
	movl	%eax, -4(%esi)
	testl	%ecx, %ecx
	je	LBB14_172
## BB#68:
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	100(%esp), %eax         ## 4-byte Reload
	movl	(%eax), %esi
	movl	%esi, 92(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	(%ebx), %ebp
	leal	(,%esi,4), %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ebp, %eax
	subl	(%edi), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB14_70
## BB#69:
	movl	$14, (%esp)
	movl	%edx, 104(%esp)         ## 4-byte Spill
	movl	%ecx, %edi
	calll	_pari_err
	movl	%edi, %ecx
	movl	104(%esp), %edx         ## 4-byte Reload
LBB14_70:                               ## %cgetg_copy.exit.i.i10
	movl	%ecx, 96(%esp)          ## 4-byte Spill
	movl	%ecx, (%ebx)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	movl	100(%esp), %edi         ## 4-byte Reload
	andl	(%edi), %eax
	movl	%eax, (%ecx)
	cmpl	$2, %esi
	jb	LBB14_89
## BB#71:                               ## %.lr.ph.i.i13.preheader
	movl	%edx, 104(%esp)         ## 4-byte Spill
	movl	92(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebx
	negl	%ebx
	cmpl	$-3, %ebx
	movl	$-2, %edi
	movl	$-2, %ecx
	cmovgl	%ebx, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB14_72
## BB#73:                               ## %overflow.checked111
	incl	%ecx
	movl	%ecx, 88(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebx
	movl	$-2, %eax
	cmovgl	%ebx, %eax
	andl	$-8, %ecx
	je	LBB14_74
## BB#76:                               ## %vector.memcheck125
	movl	%ecx, 84(%esp)          ## 4-byte Spill
	movl	%eax, %edi
	notl	%edi
	movl	100(%esp), %ecx         ## 4-byte Reload
	leal	(%ecx,%edi,4), %edi
	movl	%edi, 80(%esp)          ## 4-byte Spill
	leal	-4(%ebp), %edi
	cmpl	80(%esp), %edi          ## 4-byte Folded Reload
	ja	LBB14_79
## BB#77:                               ## %vector.memcheck125
	leal	-4(%ecx,%edx,4), %edi
	addl	%edx, %eax
	notl	%eax
	leal	(%ebp,%eax,4), %eax
	cmpl	%eax, %edi
	ja	LBB14_79
## BB#78:
	movl	104(%esp), %edx         ## 4-byte Reload
	movl	$-2, %edi
	jmp	LBB14_75
LBB14_173:
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	jmp	_F2x_rem                ## TAILCALL
LBB14_9:
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	100(%esp), %esi         ## 4-byte Reload
	movl	(%esi), %ebx
	movl	%ebx, 92(%esp)          ## 4-byte Spill
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	%ebp, 72(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L14$pb(%ebp), %edx
	movl	(%edx), %edi
	leal	(,%ebx,4), %eax
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	L_bot$non_lazy_ptr-L14$pb(%ebp), %ebp
	movl	%ebp, 84(%esp)          ## 4-byte Spill
	movl	%edi, %eax
	subl	(%ebp), %eax
	shrl	$2, %eax
	cmpl	%ebx, %eax
	jae	LBB14_11
## BB#10:
	movl	$14, (%esp)
	movl	%ecx, 104(%esp)         ## 4-byte Spill
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	104(%esp), %ecx         ## 4-byte Reload
LBB14_11:                               ## %cgetg_copy.exit.i.i
	movl	%edx, 88(%esp)          ## 4-byte Spill
	movl	%ecx, 104(%esp)         ## 4-byte Spill
	movl	%ecx, (%edx)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%esi), %eax
	movl	%eax, (%ecx)
	cmpl	$2, %ebx
	jb	LBB14_29
## BB#12:                               ## %.lr.ph.i.i.preheader
	movl	92(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %esi
	negl	%esi
	cmpl	$-3, %esi
	movl	$-2, %ecx
	cmovgl	%esi, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB14_13
## BB#14:                               ## %overflow.checked207
	incl	%ecx
	cmpl	$-3, %esi
	movl	$-2, %ebp
	cmovgl	%esi, %ebp
	movl	%ecx, %eax
	andl	$-8, %eax
	je	LBB14_15
## BB#16:                               ## %vector.memcheck221
	movl	%ecx, 76(%esp)          ## 4-byte Spill
	movl	%eax, 80(%esp)          ## 4-byte Spill
	movl	%ebp, %eax
	notl	%eax
	movl	100(%esp), %ecx         ## 4-byte Reload
	leal	(%ecx,%eax,4), %ecx
	leal	-4(%edi), %eax
	cmpl	%ecx, %eax
	ja	LBB14_19
## BB#17:                               ## %vector.memcheck221
	movl	100(%esp), %eax         ## 4-byte Reload
	leal	-4(%eax,%edx,4), %eax
	addl	%edx, %ebp
	notl	%ebp
	leal	(%edi,%ebp,4), %ebp
	cmpl	%ebp, %eax
	ja	LBB14_19
## BB#18:
	xorl	%eax, %eax
	movl	76(%esp), %ecx          ## 4-byte Reload
	jmp	LBB14_22
LBB14_90:
	movl	%esi, 88(%esp)          ## 4-byte Spill
	movl	%eax, 104(%esp)         ## 4-byte Spill
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	(%ecx), %edi
	andl	%eax, %edi
	movl	48(%esp), %ecx          ## 4-byte Reload
	andl	(%ecx), %eax
	subl	%eax, %edi
	leal	3(%edi), %ebx
	movl	%ebp, %esi
	movl	L_avma$non_lazy_ptr-L14$pb(%esi), %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	movl	(%eax), %edx
	movl	%edx, 68(%esp)          ## 4-byte Spill
	movl	$-3, %ebp
	subl	%edi, %ebp
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L14$pb(%esi), %ecx
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	movl	%esi, 72(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%ebx, %eax
	leal	(%edx,%ebp,4), %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	jae	LBB14_92
## BB#91:
	movl	$14, (%esp)
	calll	_pari_err
LBB14_92:                               ## %new_chunk.exit.i.i
	leal	2(%edi), %ebp
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	cmpl	$16777216, %ebx         ## imm = 0x1000000
	jb	LBB14_94
## BB#93:
	movl	72(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L14$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB14_94:                               ## %cgetg.exit.i
	orl	$738197504, %ebx        ## imm = 0x2C000000
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	testl	%ebp, %ebp
	movl	68(%esp), %ebx          ## 4-byte Reload
	jle	LBB14_96
## BB#95:                               ## %.lr.ph.i
	movl	$-2, %eax
	subl	%edi, %eax
	leal	(%ebx,%eax,4), %eax
	shll	$2, %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	calll	___bzero
LBB14_96:                               ## %const_vecsmall.exit
	movl	76(%esp), %eax          ## 4-byte Reload
	movl	96(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 4(%ebx,%eax,4)
	movl	100(%esp), %edi         ## 4-byte Reload
	movl	(%edi), %esi
	movl	%esi, %ebp
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, 80(%esp)          ## 4-byte Spill
	leal	(,%ebp,4), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, 28(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	movl	20(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%ebp, %eax
	jae	LBB14_98
## BB#97:
	movl	$14, (%esp)
	calll	_pari_err
LBB14_98:                               ## %cgetg_copy.exit.i.i15
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%edi), %eax
	movl	%eax, (%ecx)
	cmpl	$2, %ebp
	movl	%ebp, 64(%esp)          ## 4-byte Spill
	movl	%edi, %ecx
	jb	LBB14_114
## BB#99:                               ## %.lr.ph.i.i18.preheader
	movl	%esi, %edi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	%edi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	addl	%edi, %edx
	cmpl	$-1, %edx
	movl	64(%esp), %eax          ## 4-byte Reload
	je	LBB14_108
## BB#100:                              ## %overflow.checked
	incl	%edx
	cmpl	$-3, %ebp
	movl	$-2, %ebx
	cmovgl	%ebp, %ebx
	movl	%edx, %eax
	andl	$-8, %eax
	je	LBB14_101
## BB#102:                              ## %vector.memcheck
	movl	%eax, 92(%esp)          ## 4-byte Spill
	movl	%edx, 96(%esp)          ## 4-byte Spill
	movl	%ebx, %eax
	notl	%eax
	movl	100(%esp), %ecx         ## 4-byte Reload
	leal	(%ecx,%eax,4), %ecx
	movl	80(%esp), %eax          ## 4-byte Reload
	leal	-4(%eax), %eax
	cmpl	%ecx, %eax
	movl	$0, %edx
	ja	LBB14_104
## BB#103:                              ## %vector.memcheck
	movl	100(%esp), %eax         ## 4-byte Reload
	leal	-4(%eax,%edi,4), %eax
	addl	%edi, %ebx
	notl	%ebx
	movl	80(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebx,4), %ebx
	cmpl	%ebx, %eax
	movl	64(%esp), %eax          ## 4-byte Reload
	jbe	LBB14_107
LBB14_104:                              ## %vector.body.preheader
	movl	%esi, 84(%esp)          ## 4-byte Spill
	movl	64(%esp), %esi          ## 4-byte Reload
	movl	%esi, %eax
	subl	92(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$-3, %ebp
	movl	$-2, %ebx
	cmovgl	%ebp, %ebx
	leal	1(%ebx,%edi), %ebx
	andl	$-8, %ebx
	movl	72(%esp), %ebp          ## 4-byte Reload
	movdqa	LCPI14_0-L14$pb(%ebp), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	80(%esp), %edx          ## 4-byte Reload
	.align	4, 0x90
LBB14_105:                              ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebp
	movdqu	-12(%ecx,%ebp,4), %xmm1
	movups	-28(%ecx,%ebp,4), %xmm2
	subl	%esi, %ebp
	movdqu	%xmm1, -12(%edx,%ebp,4)
	movups	%xmm2, -28(%edx,%ebp,4)
	addl	$-8, %edi
	addl	$-8, %ebx
	jne	LBB14_105
## BB#106:
	movl	92(%esp), %edx          ## 4-byte Reload
	movl	84(%esp), %esi          ## 4-byte Reload
	jmp	LBB14_107
LBB14_42:
	xorl	%edx, %edx
	testl	%eax, %eax
	jns	LBB14_172
## BB#43:
	movl	100(%esp), %edi         ## 4-byte Reload
	movl	(%edi), %esi
	movl	%esi, 96(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	%ebp, %ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L14$pb(%ecx), %ebp
	movl	(%ebp), %ebx
	leal	(,%esi,4), %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	L_bot$non_lazy_ptr-L14$pb(%ecx), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%esi, %ecx
	jae	LBB14_45
## BB#44:
	movl	$14, (%esp)
	movl	%edx, 104(%esp)         ## 4-byte Spill
	calll	_pari_err
	movl	104(%esp), %edx         ## 4-byte Reload
LBB14_45:                               ## %cgetg_copy.exit.i.i4
	movl	%edx, (%ebp)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%edi), %eax
	movl	%eax, (%edx)
	cmpl	$2, %esi
	jb	LBB14_172
## BB#46:                               ## %.lr.ph.i.i7.preheader
	movl	%edx, 104(%esp)         ## 4-byte Spill
	movl	96(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %eax
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB14_47
## BB#53:                               ## %overflow.checked159
	incl	%ecx
	movl	%ecx, 92(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	$-2, %edi
	cmovgl	%ebp, %edi
	andl	$-8, %ecx
	movl	%ecx, 88(%esp)          ## 4-byte Spill
	je	LBB14_54
## BB#55:                               ## %vector.memcheck173
	movl	%edi, %eax
	notl	%eax
	movl	100(%esp), %ecx         ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 84(%esp)          ## 4-byte Spill
	leal	-4(%ebx), %eax
	cmpl	84(%esp), %eax          ## 4-byte Folded Reload
	ja	LBB14_58
## BB#56:                               ## %vector.memcheck173
	leal	-4(%ecx,%edx,4), %eax
	addl	%edx, %edi
	notl	%edi
	leal	(%ebx,%edi,4), %edi
	cmpl	%edi, %eax
	ja	LBB14_58
## BB#57:
	movl	$-2, %eax
LBB14_54:
	movl	92(%esp), %edx          ## 4-byte Reload
	xorl	%edi, %edi
	jmp	LBB14_61
LBB14_13:
	movl	100(%esp), %eax         ## 4-byte Reload
	jmp	LBB14_23
LBB14_15:
	xorl	%eax, %eax
	jmp	LBB14_22
LBB14_19:                               ## %vector.body198.preheader
	movl	%ebx, %eax
	subl	80(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 68(%esp)          ## 4-byte Spill
	cmpl	$-3, %esi
	movl	$-2, %eax
	cmovgl	%esi, %eax
	leal	1(%eax,%edx), %esi
	andl	$-8, %esi
	movl	72(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI14_0-L14$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	100(%esp), %ebp         ## 4-byte Reload
	movl	76(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB14_20:                               ## %vector.body198
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movdqu	-12(%ebp,%eax,4), %xmm1
	movups	-28(%ebp,%eax,4), %xmm2
	subl	%ebx, %eax
	movdqu	%xmm1, -12(%edi,%eax,4)
	movups	%xmm2, -28(%edi,%eax,4)
	addl	$-8, %edx
	addl	$-8, %esi
	jne	LBB14_20
## BB#21:
	movl	68(%esp), %ebx          ## 4-byte Reload
	movl	80(%esp), %eax          ## 4-byte Reload
LBB14_22:                               ## %middle.block199
	cmpl	%eax, %ecx
	movl	100(%esp), %eax         ## 4-byte Reload
	je	LBB14_29
LBB14_23:                               ## %.lr.ph.i.i.preheader270
	movl	%eax, %ebp
	movl	%ebx, %edx
	negl	%edx
	cmpl	$-3, %edx
	movl	$-2, %eax
	cmovgl	%edx, %eax
	leal	(%ebx,%eax), %ecx
	leal	1(%ebx,%eax), %eax
	testb	$3, %al
	je	LBB14_26
## BB#24:                               ## %.lr.ph.i.i.prol.preheader
	movl	92(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%edi,%eax,4), %eax
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	leal	1(%ebx,%esi), %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB14_25:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%ebx,4), %esi
	movl	%esi, (%eax,%ebx,4)
	leal	-1(%ebx), %ebx
	incl	%edx
	jne	LBB14_25
LBB14_26:                               ## %.lr.ph.i.i.preheader270.split
	cmpl	$3, %ecx
	movl	%ebp, %edx
	jb	LBB14_29
## BB#27:                               ## %.lr.ph.i.i.preheader270.split.split
	movl	92(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%edi,%eax,4), %eax
	.align	4, 0x90
LBB14_28:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%edx,%ebx,4), %ecx
	movl	%ecx, (%eax,%ebx,4)
	movl	-8(%edx,%ebx,4), %ecx
	movl	%ecx, -4(%eax,%ebx,4)
	movl	-12(%edx,%ebx,4), %ecx
	movl	%ecx, -8(%eax,%ebx,4)
	movl	-16(%edx,%ebx,4), %ecx
	movl	%ecx, -12(%eax,%ebx,4)
	leal	-4(%ebx), %ebx
	cmpl	$1, %ebx
	jg	LBB14_28
LBB14_29:                               ## %vecsmall_copy.exit
	movl	40(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %eax
	orl	$2, %eax
	cmpl	$2, %eax
	jne	LBB14_31
## BB#30:
	movl	104(%esp), %edx         ## 4-byte Reload
	jmp	LBB14_172
LBB14_31:
	movl	88(%esp), %edx          ## 4-byte Reload
	movl	(%edx), %esi
	leal	-8(%esi), %edi
	movl	%esi, %eax
	movl	84(%esp), %ebx          ## 4-byte Reload
	subl	(%ebx), %eax
	cmpl	$7, %eax
	ja	LBB14_33
## BB#32:
	movl	$14, (%esp)
	movl	%ecx, %ebx
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	%ebx, %ecx
LBB14_33:                               ## %pol0_F2x.exit
	movl	%edi, (%edx)
	movl	$738197506, -8(%esi)    ## imm = 0x2C000002
	movl	96(%esp), %eax          ## 4-byte Reload
	movl	%eax, -4(%esi)
	movl	%edi, (%ecx)
	movl	104(%esp), %edx         ## 4-byte Reload
	jmp	LBB14_172
LBB14_101:
	movl	%edx, 96(%esp)          ## 4-byte Spill
	movl	64(%esp), %eax          ## 4-byte Reload
	xorl	%edx, %edx
LBB14_107:                              ## %middle.block
	cmpl	%edx, 96(%esp)          ## 4-byte Folded Reload
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	68(%esp), %ebx          ## 4-byte Reload
	je	LBB14_114
LBB14_108:                              ## %.lr.ph.i.i18.preheader274
	movl	%ebx, 68(%esp)          ## 4-byte Spill
	movl	%ecx, %ebp
	movl	%eax, %edi
	negl	%edi
	cmpl	$-3, %edi
	movl	$-2, %ecx
	cmovgl	%edi, %ecx
	leal	(%eax,%ecx), %edx
	leal	1(%eax,%ecx), %ecx
	testb	$3, %cl
	je	LBB14_111
## BB#109:                              ## %.lr.ph.i.i18.prol.preheader
	movl	%esi, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	80(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%ecx,4), %ecx
	cmpl	$-3, %edi
	movl	$-2, %ebx
	cmovgl	%edi, %ebx
	leal	1(%eax,%ebx), %edi
	andl	$3, %edi
	negl	%edi
	.align	4, 0x90
LBB14_110:                              ## %.lr.ph.i.i18.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%eax,4), %ebx
	movl	%ebx, (%ecx,%eax,4)
	leal	-1(%eax), %eax
	incl	%edi
	jne	LBB14_110
LBB14_111:                              ## %.lr.ph.i.i18.preheader274.split
	cmpl	$3, %edx
	movl	%ebp, %edi
	movl	68(%esp), %ebx          ## 4-byte Reload
	jb	LBB14_114
## BB#112:                              ## %.lr.ph.i.i18.preheader274.split.split
	movl	%esi, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	80(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB14_113:                              ## %.lr.ph.i.i18
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%edi,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	-8(%edi,%eax,4), %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	-12(%edi,%eax,4), %edx
	movl	%edx, -8(%ecx,%eax,4)
	movl	-16(%edi,%eax,4), %edx
	movl	%edx, -12(%ecx,%eax,4)
	leal	-4(%eax), %eax
	cmpl	$1, %eax
	jg	LBB14_113
LBB14_114:                              ## %.lr.ph
	addl	$2, 76(%esp)            ## 4-byte Folded Spill
	movl	%esi, %eax
	notl	%eax
	movl	%esi, %ecx
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	xorl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$2, %ecx
	subl	%esi, %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	48(%esp), %ebp          ## 4-byte Reload
	leal	8(%ebp), %ecx
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	shll	$2, %esi
	movl	80(%esp), %edx          ## 4-byte Reload
	movl	%edx, %ecx
	subl	%esi, %ecx
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	leal	16(%ebp), %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%edx,%eax,4), %eax
	movl	%eax, 84(%esp)          ## 4-byte Spill
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	104(%esp), %esi         ## 4-byte Reload
	.align	4, 0x90
LBB14_115:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_142 Depth 2
                                        ##     Child Loop BB14_131 Depth 2
                                        ##     Child Loop BB14_147 Depth 2
                                        ##     Child Loop BB14_151 Depth 2
	subl	%edx, %esi
	movl	%esi, %edi
	sarl	$5, %edi
	movl	%esi, %ecx
	andl	$31, %ecx
	movl	$1, %eax
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %eax
	movl	76(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edi), %ecx
	orl	%eax, (%ebx,%ecx,4)
	movl	%esi, %ecx
	movl	(%ebp), %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	andl	$31, %ecx
	je	LBB14_116
## BB#135:                              ##   in Loop: Header=BB14_115 Depth=1
	cmpl	$3, %esi
	jb	LBB14_136
## BB#137:                              ## %.lr.ph4.i
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	$32, %eax
	subl	%ecx, %eax
	movl	%eax, 96(%esp)          ## 4-byte Spill
	movl	%edi, %edx
	subl	64(%esp), %edx          ## 4-byte Folded Reload
	cmpl	$2, %esi
	movl	$3, %ebx
	cmovgl	%esi, %ebx
	leal	-2(%ebx), %eax
	addl	$-3, %ebx
	testb	$1, %al
	je	LBB14_138
## BB#139:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%edi, 92(%esp)          ## 4-byte Spill
	movl	%esi, 100(%esp)         ## 4-byte Spill
	movl	%edx, %edi
	movl	%edi, 52(%esp)          ## 4-byte Spill
	movl	8(%ebp), %edx
	movl	%ecx, %esi
	shll	%cl, %edx
	movl	80(%esp), %eax          ## 4-byte Reload
	xorl	%edx, 8(%eax,%edi,4)
	movl	%ebp, %eax
	movl	8(%eax), %ebp
	movl	96(%esp), %ecx          ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %ebp
	movl	$3, %edx
	jmp	LBB14_140
	.align	4, 0x90
LBB14_116:                              ## %.preheader.i
                                        ##   in Loop: Header=BB14_115 Depth=1
	cmpl	$3, %esi
	jb	LBB14_136
## BB#117:                              ## %.lr.ph.i20.preheader
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	%edi, %eax
	movl	%edi, 92(%esp)          ## 4-byte Spill
	subl	64(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 104(%esp)         ## 4-byte Spill
	cmpl	$3, %esi
	movl	$3, %ecx
	cmoval	%esi, %ecx
	movl	$2, %edx
	cmpl	$2, %ecx
	je	LBB14_118
## BB#123:                              ## %overflow.checked67
                                        ##   in Loop: Header=BB14_115 Depth=1
	leal	-2(%ecx), %edi
	andl	$-4, %edi
	orl	$2, %edi
	cmpl	$3, %esi
	movl	$3, %eax
	cmoval	%esi, %eax
	movl	%esi, 100(%esp)         ## 4-byte Spill
	cmpl	$2, %edi
	movl	$2, %edx
	je	LBB14_133
## BB#124:                              ## %vector.memcheck84
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	%edi, 96(%esp)          ## 4-byte Spill
	leal	-4(%ebp,%eax,4), %esi
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	92(%esp), %ebx          ## 4-byte Reload
	leal	(%ebp,%ebx), %ebp
	movl	80(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ebp,4), %ebp
	cmpl	%esi, %ebp
	movl	68(%esp), %ebx          ## 4-byte Reload
	ja	LBB14_126
## BB#125:                              ## %vector.memcheck84
                                        ##   in Loop: Header=BB14_115 Depth=1
	addl	92(%esp), %eax          ## 4-byte Folded Reload
	addl	60(%esp), %eax          ## 4-byte Folded Reload
	movl	80(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%eax,4), %eax
	cmpl	%eax, 16(%esp)          ## 4-byte Folded Reload
	jbe	LBB14_133
LBB14_126:                              ## %vector.body58.preheader
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	100(%esp), %eax         ## 4-byte Reload
	cmpl	$3, %eax
	movl	$3, %edx
	cmoval	%eax, %edx
	addl	$-2, %edx
	andl	$-4, %edx
	addl	$-4, %edx
	shrl	$2, %edx
	leal	1(%edx), %eax
	movl	$2, %edi
	testb	$1, %al
	je	LBB14_128
## BB#127:                              ## %vector.body58.prol
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	48(%esp), %eax          ## 4-byte Reload
	movdqu	8(%eax), %xmm0
	movl	80(%esp), %eax          ## 4-byte Reload
	movl	104(%esp), %esi         ## 4-byte Reload
	movdqu	8(%eax,%esi,4), %xmm1
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, 8(%eax,%esi,4)
	movl	$6, %edi
LBB14_128:                              ## %vector.body58.preheader.split
                                        ##   in Loop: Header=BB14_115 Depth=1
	testl	%edx, %edx
	movl	96(%esp), %esi          ## 4-byte Reload
	jne	LBB14_130
## BB#129:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%esi, %edx
	jmp	LBB14_133
	.align	4, 0x90
LBB14_136:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	88(%esp), %eax          ## 4-byte Reload
	jmp	LBB14_150
LBB14_138:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%edx, 52(%esp)          ## 4-byte Spill
	movl	%edi, 92(%esp)          ## 4-byte Spill
	movl	%esi, 100(%esp)         ## 4-byte Spill
	movl	%ecx, %esi
	movl	%ebp, %eax
	movl	$2, %edx
	xorl	%ebp, %ebp
LBB14_140:                              ## %.lr.ph4.i.split
                                        ##   in Loop: Header=BB14_115 Depth=1
	testl	%ebx, %ebx
	movl	%esi, %ecx
	movl	100(%esp), %edi         ## 4-byte Reload
	je	LBB14_143
## BB#141:                              ## %.lr.ph4.i.split.split
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	%ecx, 104(%esp)         ## 4-byte Spill
	movl	44(%esp), %ecx          ## 4-byte Reload
	movl	92(%esp), %edi          ## 4-byte Reload
	leal	(%ecx,%edi,4), %ecx
	movl	%ecx, 92(%esp)          ## 4-byte Spill
	.align	4, 0x90
LBB14_142:                              ##   Parent Loop BB14_115 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%eax,%edx,4), %edi
	movl	%eax, %esi
	movl	104(%esp), %ecx         ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %edi
	orl	%ebp, %edi
	movl	92(%esp), %eax          ## 4-byte Reload
	xorl	%edi, (%eax,%edx,4)
	movl	(%esi,%edx,4), %edi
	movl	96(%esp), %ebx          ## 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %edi
	movl	4(%esi,%edx,4), %ebp
	movl	104(%esp), %ecx         ## 4-byte Reload
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %ebp
	orl	%edi, %ebp
	movl	100(%esp), %edi         ## 4-byte Reload
	xorl	%ebp, 4(%eax,%edx,4)
	movl	4(%esi,%edx,4), %ebp
	movb	%bl, %cl
	shrl	%cl, %ebp
	movl	%esi, %eax
	addl	$2, %edx
	cmpl	%edi, %edx
	jl	LBB14_142
LBB14_143:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%eax, %ecx
	testl	%ebp, %ebp
	movl	88(%esp), %eax          ## 4-byte Reload
	je	LBB14_144
## BB#145:                              ##   in Loop: Header=BB14_115 Depth=1
	cmpl	$3, %edi
	movl	$3, %edx
	cmovbel	%edx, %edi
	movl	%edi, %edx
	movl	52(%esp), %edi          ## 4-byte Reload
	addl	%edx, %edi
	movl	80(%esp), %edx          ## 4-byte Reload
	xorl	%ebp, (%edx,%edi,4)
LBB14_144:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%ecx, %ebp
	movl	56(%esp), %edx          ## 4-byte Reload
	jmp	LBB14_149
LBB14_130:                              ## %vector.body58.preheader.split.split
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	92(%esp), %eax          ## 4-byte Reload
	leal	(%edi,%eax), %eax
	movl	44(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %edx
	movl	12(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%edi,4), %ebp
	movl	100(%esp), %eax         ## 4-byte Reload
	cmpl	$3, %eax
	movl	$3, %ebx
	cmoval	%eax, %ebx
	addl	$-2, %ebx
	andl	$-4, %ebx
	orl	$2, %ebx
	subl	%edi, %ebx
	xorl	%eax, %eax
	.align	4, 0x90
LBB14_131:                              ## %vector.body58
                                        ##   Parent Loop BB14_115 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	-16(%ebp,%eax,4), %xmm0
	movups	(%edx,%eax,4), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%edx,%eax,4)
	movdqu	(%ebp,%eax,4), %xmm0
	movdqu	16(%edx,%eax,4), %xmm1
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, 16(%edx,%eax,4)
	addl	$8, %eax
	cmpl	%eax, %ebx
	jne	LBB14_131
## BB#132:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%esi, %edx
	movl	68(%esp), %ebx          ## 4-byte Reload
LBB14_133:                              ## %middle.block59
                                        ##   in Loop: Header=BB14_115 Depth=1
	cmpl	%edx, %ecx
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	100(%esp), %esi         ## 4-byte Reload
	jne	LBB14_118
## BB#134:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	56(%esp), %edx          ## 4-byte Reload
	jmp	LBB14_150
LBB14_118:                              ## %.lr.ph.i20.preheader273
                                        ##   in Loop: Header=BB14_115 Depth=1
	leal	1(%edx), %ecx
	cmpl	%esi, %ecx
	movl	%esi, %ebx
	cmovgel	%ecx, %ebx
	movl	%ebx, %eax
	subl	%edx, %eax
	decl	%ebx
	subl	%edx, %ebx
	testb	$1, %al
	je	LBB14_119
## BB#120:                              ## %.lr.ph.i20.prol
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	(%ebp,%edx,4), %eax
	movl	104(%esp), %edi         ## 4-byte Reload
	addl	%edx, %edi
	movl	80(%esp), %edx          ## 4-byte Reload
	xorl	%eax, (%edx,%edi,4)
	jmp	LBB14_121
LBB14_119:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%edx, %ecx
LBB14_121:                              ## %.lr.ph.i20.preheader273.split
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	92(%esp), %edi          ## 4-byte Reload
	testl	%ebx, %ebx
	jne	LBB14_146
## BB#122:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	88(%esp), %eax          ## 4-byte Reload
	jmp	LBB14_149
LBB14_146:                              ## %.lr.ph.i20.preheader273.split.split
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	%edx, %ebx
	movl	44(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%edi,4), %eax
	.align	4, 0x90
LBB14_147:                              ## %.lr.ph.i20
                                        ##   Parent Loop BB14_115 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%ebp,%ecx,4), %edx
	xorl	%edx, (%eax,%ecx,4)
	movl	4(%ebp,%ecx,4), %edx
	xorl	%edx, 4(%eax,%ecx,4)
	addl	$2, %ecx
	cmpl	%esi, %ecx
	jl	LBB14_147
## BB#148:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebx, %edx
	.align	4, 0x90
LBB14_149:                              ## %F2x_addshiftip.exit
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	68(%esp), %ebx          ## 4-byte Reload
LBB14_150:                              ## %F2x_addshiftip.exit
                                        ##   in Loop: Header=BB14_115 Depth=1
	movl	84(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB14_151:                              ## %F2x_addshiftip.exit
                                        ##   Parent Loop BB14_115 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%eax, %esi
	cmpl	$3, %esi
	jl	LBB14_153
## BB#152:                              ##   in Loop: Header=BB14_151 Depth=2
	leal	-1(%esi), %eax
	cmpl	$0, (%ecx,%esi,4)
	je	LBB14_151
LBB14_153:                              ## %.critedge
                                        ##   in Loop: Header=BB14_115 Depth=1
	cmpl	$2, %esi
	jne	LBB14_160
## BB#154:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%ecx, 84(%esp)          ## 4-byte Spill
	movl	$2, 88(%esp)            ## 4-byte Folded Spill
	movl	$-1, %esi
	jmp	LBB14_155
	.align	4, 0x90
LBB14_160:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%ebx, %edi
	movl	%ecx, 84(%esp)          ## 4-byte Spill
	movl	60(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%esi), %eax
	movl	80(%esp), %ecx          ## 4-byte Reload
	movl	(%ecx,%eax,4), %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	cmpl	$65535, %ecx            ## imm = 0xFFFF
	cmovbel	%ecx, %eax
	movl	$28, %ecx
	movl	$12, %ebx
	cmoval	%ebx, %ecx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB14_162
## BB#161:                              ##   in Loop: Header=BB14_115 Depth=1
	addl	$-8, %ecx
	shrl	$8, %eax
LBB14_162:                              ##   in Loop: Header=BB14_115 Depth=1
	movl	%edi, %ebx
	movl	%esi, 88(%esp)          ## 4-byte Spill
	shll	$5, %esi
	cmpl	$16, %eax
	jb	LBB14_164
## BB#163:                              ##   in Loop: Header=BB14_115 Depth=1
	addl	$-4, %ecx
	shrl	$4, %eax
LBB14_164:                              ##   in Loop: Header=BB14_115 Depth=1
	addl	$-65, %esi
	subl	%ecx, %esi
	movl	72(%esp), %ecx          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L14$pb(%ecx,%eax,4), %esi
LBB14_155:                              ## %vecsmall_copy.exit19.backedge
                                        ##   in Loop: Header=BB14_115 Depth=1
	cmpl	%edx, %esi
	jge	LBB14_115
## BB#156:                              ## %vecsmall_copy.exit19._crit_edge
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	(%ecx), %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_Flx_renormalize
	movl	%eax, %edx
	movl	40(%esp), %eax          ## 4-byte Reload
	testl	%eax, %eax
	je	LBB14_157
## BB#165:
	movl	%edx, %ebx
	movl	88(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, %esi
	calll	_Flx_renormalize
	movl	%esi, %ecx
	cmpl	$2, %ecx
	jne	LBB14_170
## BB#166:
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	(%eax), %edx
	andl	%ecx, %edx
	cmpl	$2, %edx
	jne	LBB14_174
## BB#167:
	addl	$8, %eax
	movl	20(%esp), %ecx          ## 4-byte Reload
	cmpl	(%ecx), %eax
	jb	LBB14_171
## BB#168:
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L14$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB14_171
## BB#169:
	movl	36(%esp), %ecx          ## 4-byte Reload
LBB14_170:
	movl	%eax, (%ecx)
LBB14_171:                              ## %vecsmall_copy.exit8
	movl	%ebx, %edx
	jmp	LBB14_172
LBB14_157:
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	28(%esp), %ecx          ## 4-byte Reload
	andl	(%ecx), %eax
	subl	64(%esp), %eax          ## 4-byte Folded Reload
	movl	80(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	movl	20(%esp), %ecx          ## 4-byte Reload
	cmpl	(%ecx), %eax
	jb	LBB14_172
## BB#158:
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L14$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB14_172
## BB#159:
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	jmp	LBB14_172
LBB14_174:
	andl	(%ebx), %ecx
	leal	(%ebx,%ecx,4), %eax
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	xorl	%edx, %edx
	jmp	LBB14_172
LBB14_72:
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	104(%esp), %edx         ## 4-byte Reload
	jmp	LBB14_83
LBB14_74:
	movl	104(%esp), %edx         ## 4-byte Reload
LBB14_75:                               ## %middle.block103
	movl	88(%esp), %eax          ## 4-byte Reload
	xorl	%ecx, %ecx
	jmp	LBB14_82
LBB14_79:                               ## %vector.body102.preheader
	movl	%esi, %eax
	subl	84(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 80(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebx
	movl	$-2, %eax
	cmovgl	%ebx, %eax
	leal	1(%eax,%edx), %edi
	andl	$-8, %edi
	movl	72(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI14_0-L14$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	.align	4, 0x90
LBB14_80:                               ## %vector.body102
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movdqu	-12(%ecx,%eax,4), %xmm1
	movups	-28(%ecx,%eax,4), %xmm2
	subl	%esi, %eax
	movdqu	%xmm1, -12(%ebp,%eax,4)
	movups	%xmm2, -28(%ebp,%eax,4)
	addl	$-8, %edx
	addl	$-8, %edi
	jne	LBB14_80
## BB#81:
	movl	80(%esp), %esi          ## 4-byte Reload
	movl	84(%esp), %ecx          ## 4-byte Reload
	movl	104(%esp), %edx         ## 4-byte Reload
	movl	$-2, %edi
	movl	88(%esp), %eax          ## 4-byte Reload
LBB14_82:                               ## %middle.block103
	cmpl	%ecx, %eax
	movl	100(%esp), %ecx         ## 4-byte Reload
	je	LBB14_89
LBB14_83:                               ## %.lr.ph.i.i13.preheader272
	movl	%edx, 104(%esp)         ## 4-byte Spill
	movl	%ecx, %ebx
	movl	%esi, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %edi
	leal	(%esi,%edi), %ecx
	leal	1(%esi,%edi), %eax
	testb	$3, %al
	je	LBB14_86
## BB#84:                               ## %.lr.ph.i.i13.prol.preheader
	movl	92(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%ebp,%eax,4), %eax
	cmpl	$-3, %edx
	movl	$-2, %edi
	cmovgl	%edx, %edi
	leal	1(%esi,%edi), %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB14_85:                               ## %.lr.ph.i.i13.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebx,%esi,4), %edi
	movl	%edi, (%eax,%esi,4)
	leal	-1(%esi), %esi
	incl	%edx
	jne	LBB14_85
LBB14_86:                               ## %.lr.ph.i.i13.preheader272.split
	cmpl	$3, %ecx
	movl	104(%esp), %edx         ## 4-byte Reload
	jb	LBB14_89
## BB#87:                               ## %.lr.ph.i.i13.preheader272.split.split
	movl	92(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%ebp,%eax,4), %eax
	.align	4, 0x90
LBB14_88:                               ## %.lr.ph.i.i13
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebx,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	movl	-8(%ebx,%esi,4), %ecx
	movl	%ecx, -4(%eax,%esi,4)
	movl	-12(%ebx,%esi,4), %ecx
	movl	%ecx, -8(%eax,%esi,4)
	movl	-16(%ebx,%esi,4), %ecx
	movl	%ecx, -12(%eax,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB14_88
LBB14_89:                               ## %vecsmall_copy.exit14
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	96(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
LBB14_172:                              ## %vecsmall_copy.exit8
	movl	%edx, %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB14_47:
	movl	100(%esp), %ebp         ## 4-byte Reload
	jmp	LBB14_48
LBB14_58:                               ## %vector.body150.preheader
	movl	%esi, %eax
	movl	88(%esp), %edi          ## 4-byte Reload
	subl	%edi, %eax
	movl	%eax, 84(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	leal	1(%eax,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI14_0-L14$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
LBB14_59:                               ## %vector.body150
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movdqu	-12(%ecx,%eax,4), %xmm1
	movups	-28(%ecx,%eax,4), %xmm2
	subl	%esi, %eax
	movdqu	%xmm1, -12(%ebx,%eax,4)
	movups	%xmm2, -28(%ebx,%eax,4)
	addl	$-8, %edx
	addl	$-8, %ebp
	jne	LBB14_59
## BB#60:
	movl	84(%esp), %esi          ## 4-byte Reload
	movl	$-2, %eax
	movl	92(%esp), %edx          ## 4-byte Reload
LBB14_61:                               ## %middle.block151
	cmpl	%edi, %edx
	movl	100(%esp), %ebp         ## 4-byte Reload
	jne	LBB14_48
## BB#62:
	movl	104(%esp), %edx         ## 4-byte Reload
	jmp	LBB14_172
LBB14_48:                               ## %.lr.ph.i.i7.preheader271
	movl	%esi, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %eax
	leal	(%esi,%eax), %ecx
	leal	1(%esi,%eax), %eax
	testb	$3, %al
	je	LBB14_51
## BB#49:                               ## %.lr.ph.i.i7.prol.preheader
	movl	96(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%ebx,%eax,4), %eax
	cmpl	$-3, %edx
	movl	$-2, %edi
	cmovgl	%edx, %edi
	leal	1(%esi,%edi), %edx
	andl	$3, %edx
	negl	%edx
LBB14_50:                               ## %.lr.ph.i.i7.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%esi,4), %edi
	movl	%edi, (%eax,%esi,4)
	leal	-1(%esi), %esi
	incl	%edx
	jne	LBB14_50
LBB14_51:                               ## %.lr.ph.i.i7.preheader271.split
	cmpl	$3, %ecx
	jae	LBB14_63
## BB#52:
	movl	104(%esp), %edx         ## 4-byte Reload
	jmp	LBB14_172
LBB14_63:                               ## %.lr.ph.i.i7.preheader271.split.split
	movl	96(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%ebx,%eax,4), %eax
	movl	104(%esp), %edx         ## 4-byte Reload
LBB14_64:                               ## %.lr.ph.i.i7
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	movl	-8(%ebp,%esi,4), %ecx
	movl	%ecx, -4(%eax,%esi,4)
	movl	-12(%ebp,%esi,4), %ecx
	movl	%ecx, -8(%eax,%esi,4)
	movl	-16(%ebp,%esi,4), %ecx
	movl	%ecx, -12(%eax,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB14_64
	jmp	LBB14_172

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI15_0:
	.space	16,85
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2x_deriv
	.align	4, 0x90
_F2x_deriv:                             ## @F2x_deriv
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L15$pb
L15$pb:
	popl	%edx
	movl	%edx, 20(%esp)          ## 4-byte Spill
	movl	48(%esp), %edi
	movl	(%edi), %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	L_avma$non_lazy_ptr-L15$pb(%edx), %ebp
	movl	(%ebp), %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %eax
	movl	%ecx, %ebx
	subl	%eax, %ebx
	movl	L_bot$non_lazy_ptr-L15$pb(%edx), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%esi, %ecx
	jae	LBB15_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB15_2:                                ## %cgetg.exit
	movl	%ebx, (%ebp)
	movl	%esi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebx)
	movl	4(%edi), %eax
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	cmpl	$3, %esi
	jb	LBB15_17
## BB#3:                                ## %.lr.ph.preheader
	movl	$3, %eax
	cmoval	%esi, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	je	LBB15_11
## BB#4:                                ## %overflow.checked
	leal	-2(%eax), %ecx
	movl	%eax, 16(%esp)          ## 4-byte Spill
	andl	$-8, %ecx
	orl	$2, %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	leal	-1(%esi), %eax
	cmpl	$3, %esi
	movl	$2, %edx
	cmovbel	%edx, %eax
	cmpl	$2, %ecx
	je	LBB15_10
## BB#5:                                ## %vector.memcheck
	leal	(%edi,%eax,4), %ecx
	movl	%ecx, 8(%esp)           ## 4-byte Spill
	movl	$2, %edx
	movl	$2, %ebp
	subl	%esi, %ebp
	movl	24(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebp,4), %ebp
	cmpl	8(%esp), %ebp           ## 4-byte Folded Reload
	ja	LBB15_7
## BB#6:                                ## %vector.memcheck
	leal	8(%edi), %ecx
	subl	%esi, %eax
	movl	24(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%eax,4), %eax
	cmpl	%eax, %ecx
	jbe	LBB15_10
LBB15_7:                                ## %vector.body.preheader
	movl	$6, %eax
	subl	%esi, %eax
	movl	24(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %edx
	leal	24(%edi), %ecx
	cmpl	$3, %esi
	movl	$3, %eax
	cmoval	%esi, %eax
	addl	$-2, %eax
	andl	$-8, %eax
	movl	20(%esp), %ebp          ## 4-byte Reload
	movdqa	LCPI15_0-L15$pb(%ebp), %xmm0 ## xmm0 = [1431655765,1431655765,1431655765,1431655765]
	.align	4, 0x90
LBB15_8:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movdqu	-16(%ecx), %xmm1
	movdqu	(%ecx), %xmm2
	psrld	$1, %xmm1
	psrld	$1, %xmm2
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	movdqu	%xmm1, -16(%edx)
	movdqu	%xmm2, (%edx)
	addl	$32, %edx
	addl	$32, %ecx
	addl	$-8, %eax
	jne	LBB15_8
## BB#9:
	movl	12(%esp), %edx          ## 4-byte Reload
LBB15_10:                               ## %middle.block
	cmpl	%edx, 16(%esp)          ## 4-byte Folded Reload
	je	LBB15_17
LBB15_11:                               ## %.lr.ph.preheader17
	movl	%ebx, 20(%esp)          ## 4-byte Spill
	leal	1(%edx), %eax
	cmpl	%esi, %eax
	movl	%esi, %ecx
	cmovgel	%eax, %ecx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	decl	%ecx
	subl	%edx, %ecx
	testb	$1, %bl
	je	LBB15_12
## BB#13:                               ## %.lr.ph.prol
	movl	(%edi,%edx,4), %ebx
	shrl	%ebx
	andl	$1431655765, %ebx       ## imm = 0x55555555
	subl	%esi, %edx
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	%ebx, (%ebp,%edx,4)
	jmp	LBB15_14
LBB15_12:
	movl	%edx, %eax
LBB15_14:                               ## %.lr.ph.preheader17.split
	movl	20(%esp), %ebx          ## 4-byte Reload
	testl	%ecx, %ecx
	je	LBB15_17
## BB#15:                               ## %.lr.ph.preheader17.split.split
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB15_16:                               ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%eax,4), %edx
	shrl	%edx
	andl	$1431655765, %edx       ## imm = 0x55555555
	movl	%edx, -4(%ecx,%eax,4)
	movl	4(%edi,%eax,4), %edx
	shrl	%edx
	andl	$1431655765, %edx       ## imm = 0x55555555
	movl	%edx, (%ecx,%eax,4)
	addl	$2, %eax
	cmpl	%esi, %eax
	jl	LBB15_16
LBB15_17:                               ## %._crit_edge
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	calll	_Flx_renormalize
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI16_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2x_gcd
	.align	4, 0x90
_F2x_gcd:                               ## @F2x_gcd
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L16$pb
L16$pb:
	popl	%ecx
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	movl	84(%esp), %edx
	movl	80(%esp), %eax
	movl	%eax, 56(%esp)
	movl	%edx, 52(%esp)
	movl	L_avma$non_lazy_ptr-L16$pb(%ecx), %ebx
	movl	(%ebx), %esi
	movl	%esi, 40(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L16$pb(%ecx), %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	(%ecx), %ecx
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	subl	%ecx, %esi
	shrl	$2, %esi
	movl	(%edx), %edi
	movl	%edi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	(%eax), %edx
	movl	%edx, %ebp
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	cmpl	%ebp, %ecx
	jbe	LBB16_1
## BB#2:
	movl	84(%esp), %ecx
	movl	%ecx, 56(%esp)
	movl	%eax, 52(%esp)
	jmp	LBB16_3
LBB16_1:
	movl	%eax, %ecx
	movl	%edi, %edx
	movl	84(%esp), %eax
LBB16_3:                                ## %.preheader
	movl	40(%esp), %edi          ## 4-byte Reload
	movl	44(%esp), %ebp          ## 4-byte Reload
	addl	%ebp, %esi
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	cmpl	$2, %edx
	movl	%edi, %edx
	je	LBB16_18
## BB#4:                                ## %.lr.ph
	movl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	48(%esp), %edx          ## 4-byte Reload
	leal	L_.str-L16$pb(%edx), %edx
	movl	%edx, 44(%esp)          ## 4-byte Spill
	jmp	LBB16_5
	.align	4, 0x90
LBB16_16:                               ## %.backedge._crit_edge
                                        ##   in Loop: Header=BB16_5 Depth=1
	movl	56(%esp), %ecx
LBB16_5:                                ## =>This Inner Loop Header: Depth=1
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_F2x_rem
	movl	52(%esp), %ecx
	movl	%ecx, 56(%esp)
	movl	%eax, 52(%esp)
	cmpl	%esi, (%ebx)
	jae	LBB16_15
## BB#6:                                ##   in Loop: Header=BB16_5 Depth=1
	movl	48(%esp), %ecx          ## 4-byte Reload
	movl	L_DEBUGMEM$non_lazy_ptr-L16$pb(%ecx), %ecx
	cmpl	$2, (%ecx)
	jb	LBB16_14
## BB#7:                                ##   in Loop: Header=BB16_5 Depth=1
	movl	(%eax), %ecx
	andl	%ebp, %ecx
	movl	$-1, %edx
	cmpl	$2, %ecx
	je	LBB16_13
## BB#8:                                ##   in Loop: Header=BB16_5 Depth=1
	movl	%edi, %ebp
	movl	-4(%eax,%ecx,4), %edx
	movl	%edx, %eax
	shrl	$16, %eax
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %eax
	movl	$28, %edx
	movl	$12, %edi
	cmoval	%edi, %edx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB16_10
## BB#9:                                ##   in Loop: Header=BB16_5 Depth=1
	addl	$-8, %edx
	shrl	$8, %eax
LBB16_10:                               ##   in Loop: Header=BB16_5 Depth=1
	movl	%ebp, %edi
	shll	$5, %ecx
	cmpl	$16, %eax
	movl	$16777215, %ebp         ## imm = 0xFFFFFF
	jb	LBB16_12
## BB#11:                               ##   in Loop: Header=BB16_5 Depth=1
	addl	$-4, %edx
	shrl	$4, %eax
LBB16_12:                               ##   in Loop: Header=BB16_5 Depth=1
	addl	$-65, %ecx
	subl	%edx, %ecx
	movl	48(%esp), %edx          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L16$pb(%edx,%eax,4), %ecx
	movl	%ecx, %edx
LBB16_13:                               ## %F2x_degree.exit
                                        ##   in Loop: Header=BB16_5 Depth=1
	movl	%edx, 8(%esp)
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	calll	_pari_warn
LBB16_14:                               ##   in Loop: Header=BB16_5 Depth=1
	leal	52(%esp), %eax
	movl	%eax, 12(%esp)
	leal	56(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	$2, 4(%esp)
	calll	_gerepileall
	movl	52(%esp), %eax
LBB16_15:                               ## %.backedge
                                        ##   in Loop: Header=BB16_5 Depth=1
	movl	(%eax), %ecx
	andl	%ebp, %ecx
	cmpl	$2, %ecx
	jne	LBB16_16
## BB#17:                               ## %._crit_edge
	movl	(%ebx), %edx
LBB16_18:
	movl	56(%esp), %eax
	cmpl	%esi, %edx
	jae	LBB16_45
## BB#19:
	movl	36(%esp), %ecx          ## 4-byte Reload
	cmpl	(%ecx), %eax
	jb	LBB16_22
## BB#20:
	movl	48(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L16$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB16_22
## BB#21:
	cmpl	%eax, %edi
	jbe	LBB16_22
## BB#23:
	movl	(%eax), %ebp
	movl	%ebp, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	%edi, %esi
	subl	%ecx, %esi
	movl	%ebp, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%esi, (%ebx)
	je	LBB16_24
## BB#25:                               ## %.lr.ph.i.preheader
	movl	%esi, 44(%esp)          ## 4-byte Spill
	movl	%ebp, %esi
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	orl	$-16777216, %esi        ## imm = 0xFFFFFFFFFF000000
	movl	%esi, %ecx
	xorl	$16777215, %ecx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %esi        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebx
	cmovel	%ecx, %ebx
	leal	(%ebx,%edx), %ebp
	cmpl	$-2, %ebp
	jne	LBB16_32
## BB#26:
	movl	%edi, 40(%esp)          ## 4-byte Spill
	movl	$-2, %esi
	movl	36(%esp), %ebp          ## 4-byte Reload
	jmp	LBB16_27
LBB16_22:                               ## %.critedge.i
	movl	%edi, (%ebx)
LBB16_44:                               ## %gerepileuptoleaf.exit
	movl	%eax, 56(%esp)
LBB16_45:                               ## %._crit_edge5
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB16_24:
	movl	%esi, %eax
	jmp	LBB16_44
LBB16_32:                               ## %overflow.checked
	movl	%edi, 40(%esp)          ## 4-byte Spill
	addl	$2, %ebp
	cmpl	$-16777216, %esi        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %esi
	cmovnel	%esi, %ecx
	xorl	%edi, %edi
	movl	%ebp, %esi
	andl	$-8, %esi
	je	LBB16_33
## BB#34:                               ## %vector.memcheck
	movl	%esi, 28(%esp)          ## 4-byte Spill
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	movl	$-2, %esi
	movl	$-2, %edi
	subl	%ecx, %edi
	leal	(%eax,%edi,4), %ebp
	movl	40(%esp), %edi          ## 4-byte Reload
	leal	-4(%edi), %edi
	cmpl	%ebp, %edi
	movl	36(%esp), %ebp          ## 4-byte Reload
	ja	LBB16_36
## BB#35:                               ## %vector.memcheck
	leal	-4(%eax,%edx,4), %edi
	addl	%edx, %ecx
	subl	%ecx, %esi
	movl	40(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %ecx
	cmpl	%ecx, %edi
	movl	$0, %edi
	jbe	LBB16_39
LBB16_36:                               ## %vector.body.preheader
	movl	%edx, %ecx
	subl	28(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	leal	2(%ebx,%edx), %ebx
	andl	$-8, %ebx
	movl	48(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI16_0-L16$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %edi
	movl	40(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB16_37:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %esi
	movups	-12(%eax,%esi,4), %xmm1
	movups	-28(%eax,%esi,4), %xmm2
	subl	%edx, %esi
	movups	%xmm1, -12(%ecx,%esi,4)
	movups	%xmm2, -28(%ecx,%esi,4)
	addl	$-8, %edi
	addl	$-8, %ebx
	jne	LBB16_37
## BB#38:
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	28(%esp), %edi          ## 4-byte Reload
	jmp	LBB16_39
LBB16_33:
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	movl	36(%esp), %ebp          ## 4-byte Reload
LBB16_39:                               ## %middle.block
	cmpl	%edi, 32(%esp)          ## 4-byte Folded Reload
	movl	$-2, %esi
	jne	LBB16_27
## BB#40:
	movl	44(%esp), %eax          ## 4-byte Reload
	jmp	LBB16_44
LBB16_27:                               ## %.lr.ph.i.preheader28
	movl	%edx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %esi
	leal	2(%edx,%esi), %ecx
	leal	1(%edx,%esi), %edi
	testb	$3, %cl
	je	LBB16_30
## BB#28:                               ## %.lr.ph.i.prol.preheader
	movl	%ebp, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	40(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	cmpl	$-3, %ebx
	movl	$-2, %esi
	cmovgl	%ebx, %esi
	leal	2(%edx,%esi), %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB16_29:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %esi
	movl	%esi, (%ecx,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB16_29
LBB16_30:                               ## %.lr.ph.i.preheader28.split
	cmpl	$3, %edi
	jae	LBB16_41
## BB#31:
	movl	44(%esp), %eax          ## 4-byte Reload
	jmp	LBB16_44
LBB16_41:                               ## %.lr.ph.i.preheader28.split.split
	incl	%edx
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%ebp, %ecx
	movl	40(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	movl	44(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB16_42:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%eax,%edx,4), %esi
	movl	%esi, 8(%ecx,%edx,4)
	movl	-12(%eax,%edx,4), %esi
	movl	%esi, 4(%ecx,%edx,4)
	movl	-16(%eax,%edx,4), %esi
	movl	%esi, (%ecx,%edx,4)
	movl	-20(%eax,%edx,4), %esi
	movl	%esi, -4(%ecx,%edx,4)
	addl	$-4, %edx
	cmpl	$1, %edx
	jg	LBB16_42
## BB#43:
	movl	%edi, %eax
	jmp	LBB16_44

	.align	4, 0x90
_gerepileall:                           ## @gerepileall
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	L17$pb
L17$pb:
	popl	%ecx
	movl	100(%esp), %ebx
	movl	96(%esp), %ebp
	movl	L___stack_chk_guard$non_lazy_ptr-L17$pb(%ecx), %edi
	movl	(%edi), %eax
	movl	%eax, 72(%esp)
	leal	104(%esp), %eax
	movl	%eax, 28(%esp)
	cmpl	$9, %ebx
	jg	LBB17_7
## BB#1:
	testl	%ebx, %ebx
	jle	LBB17_26
## BB#2:
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	xorl	%esi, %esi
	.align	4, 0x90
LBB17_3:                                ## =>This Inner Loop Header: Depth=1
	movl	28(%esp), %eax
	leal	4(%eax), %ecx
	movl	%ecx, 28(%esp)
	movl	(%eax), %edi
	movl	%edi, 32(%esp,%esi,4)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	calll	_copy_bin
	movl	%eax, (%edi)
	incl	%esi
	cmpl	%esi, %ebx
	jne	LBB17_3
## BB#4:                                ## %._crit_edge7
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	L_avma$non_lazy_ptr-L17$pb(%eax), %eax
	movl	%ebp, (%eax)
	testl	%ebx, %ebx
	movl	20(%esp), %edi          ## 4-byte Reload
	jle	LBB17_24
## BB#5:                                ## %.lr.ph.preheader
	incl	%ebx
	.align	4, 0x90
LBB17_6:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	24(%esp,%ebx,4), %esi
	movl	(%esi), %ecx
	calll	_bin_copy
	movl	%eax, (%esi)
	decl	%ebx
	cmpl	$1, %ebx
	jg	LBB17_6
	jmp	LBB17_24
LBB17_7:
	leal	(,%ebx,4), %eax
	testl	%eax, %eax
	je	LBB17_13
## BB#8:
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L17$pb(%ecx), %edi
	movl	(%edi), %ebp
	movl	$1, (%edi)
	movl	%eax, (%esp)
	calll	_malloc
	movl	%eax, %esi
	movl	%ebp, (%edi)
	testl	%ebp, %ebp
	jne	LBB17_11
## BB#9:
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L17$pb(%eax), %eax
	cmpl	$0, (%eax)
	je	LBB17_11
## BB#10:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB17_11:
	testl	%esi, %esi
	movl	96(%esp), %ebp
	jne	LBB17_16
## BB#12:
	movl	$28, (%esp)
	calll	_pari_err
	xorl	%esi, %esi
	jmp	LBB17_16
LBB17_26:                               ## %._crit_edge7.thread
	movl	L_avma$non_lazy_ptr-L17$pb(%ecx), %eax
	movl	%ebp, (%eax)
	jmp	LBB17_24
LBB17_13:
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	L_DEBUGMEM$non_lazy_ptr-L17$pb(%ecx), %eax
	xorl	%esi, %esi
	cmpl	$0, (%eax)
	je	LBB17_14
## BB#15:
	leal	L_.str3-L17$pb(%ecx), %eax
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	calll	_pari_warn
	jmp	LBB17_16
LBB17_14:
	movl	%ecx, 24(%esp)          ## 4-byte Spill
LBB17_16:                               ## %.lr.ph14
	xorl	%edi, %edi
	.align	4, 0x90
LBB17_17:                               ## =>This Inner Loop Header: Depth=1
	movl	28(%esp), %eax
	leal	4(%eax), %ecx
	movl	%ecx, 28(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esi,%edi,4)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	_copy_bin
	movl	(%esi,%edi,4), %ecx
	movl	%eax, (%ecx)
	incl	%edi
	cmpl	%edi, %ebx
	jne	LBB17_17
## BB#18:                               ## %._crit_edge15
	movl	24(%esp), %edi          ## 4-byte Reload
	movl	L_avma$non_lazy_ptr-L17$pb(%edi), %eax
	movl	%ebp, (%eax)
	testl	%ebx, %ebx
	jle	LBB17_21
## BB#19:                               ## %.lr.ph11.preheader
	incl	%ebx
	.align	4, 0x90
LBB17_20:                               ## %.lr.ph11
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%esi,%ebx,4), %eax
	movl	(%eax), %ecx
	calll	_bin_copy
	movl	-8(%esi,%ebx,4), %ecx
	movl	%eax, (%ecx)
	decl	%ebx
	cmpl	$1, %ebx
	jg	LBB17_20
LBB17_21:                               ## %._crit_edge12
	movl	%edi, %ebp
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L17$pb(%ebp), %edi
	movl	(%edi), %ebx
	movl	$1, (%edi)
	movl	%esi, (%esp)
	calll	_free
	movl	%ebx, (%edi)
	testl	%ebx, %ebx
	movl	20(%esp), %edi          ## 4-byte Reload
	jne	LBB17_24
## BB#22:
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L17$pb(%ebp), %eax
	cmpl	$0, (%eax)
	je	LBB17_24
## BB#23:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB17_24:                               ## %pari_free.exit
	movl	(%edi), %eax
	cmpl	72(%esp), %eax
	jne	LBB17_27
## BB#25:                               ## %pari_free.exit
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB17_27:                               ## %pari_free.exit
	calll	___stack_chk_fail

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI18_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
_gerepileuptoleaf:                      ## @gerepileuptoleaf
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$24, %esp
	calll	L18$pb
L18$pb:
	popl	%ebp
	movl	L_bot$non_lazy_ptr-L18$pb(%ebp), %eax
	cmpl	(%eax), %edx
	jb	LBB18_3
## BB#1:
	movl	L_top$non_lazy_ptr-L18$pb(%ebp), %eax
	cmpl	(%eax), %edx
	jae	LBB18_3
## BB#2:
	cmpl	%edx, %ecx
	jbe	LBB18_3
## BB#4:
	movl	(%edx), %ebx
	movl	%ebx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%ebx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	L_avma$non_lazy_ptr-L18$pb(%ebp), %eax
	movl	%edi, (%eax)
	je	LBB18_23
## BB#5:                                ## %.lr.ph.preheader
	movl	%edi, 20(%esp)          ## 4-byte Spill
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	orl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	movl	%ebx, %eax
	xorl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	%eax, 12(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edi
	cmovel	%eax, %edi
	leal	(%edi,%esi), %eax
	cmpl	$-2, %eax
	jne	LBB18_12
## BB#6:
	movl	$-2, %ebx
	jmp	LBB18_7
LBB18_3:                                ## %.critedge
	movl	L_avma$non_lazy_ptr-L18$pb(%ebp), %eax
	movl	%ecx, (%eax)
	jmp	LBB18_24
LBB18_12:                               ## %overflow.checked
	movl	%edi, 8(%esp)           ## 4-byte Spill
	addl	$2, %eax
	cmpl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	movl	12(%esp), %edi          ## 4-byte Reload
	movl	$-2, %ebx
	cmovnel	%ebx, %edi
	movl	%eax, %ebx
	andl	$-8, %ebx
	je	LBB18_13
## BB#14:                               ## %vector.memcheck
	movl	%ebx, 4(%esp)           ## 4-byte Spill
	movl	%eax, 12(%esp)          ## 4-byte Spill
	movl	$-2, %ebx
	subl	%edi, %ebx
	leal	(%edx,%ebx,4), %eax
	leal	-4(%ecx), %ebx
	cmpl	%eax, %ebx
	movl	$0, %eax
	ja	LBB18_16
## BB#15:                               ## %vector.memcheck
	leal	-4(%edx,%esi,4), %ebx
	movl	%ebx, (%esp)            ## 4-byte Spill
	addl	%esi, %edi
	movl	$-2, %ebx
	subl	%edi, %ebx
	leal	(%ecx,%ebx,4), %edi
	cmpl	%edi, (%esp)            ## 4-byte Folded Reload
	jbe	LBB18_19
LBB18_16:                               ## %vector.body.preheader
	movl	%esi, %edi
	subl	4(%esp), %edi           ## 4-byte Folded Reload
	movl	8(%esp), %eax           ## 4-byte Reload
	leal	2(%eax,%esi), %eax
	andl	$-8, %eax
	movdqa	LCPI18_0-L18$pb(%ebp), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%esi, %ebp
	.align	4, 0x90
LBB18_17:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebx
	movups	-12(%edx,%ebx,4), %xmm1
	movups	-28(%edx,%ebx,4), %xmm2
	subl	%esi, %ebx
	movups	%xmm1, -12(%ecx,%ebx,4)
	movups	%xmm2, -28(%ecx,%ebx,4)
	addl	$-8, %ebp
	addl	$-8, %eax
	jne	LBB18_17
## BB#18:
	movl	%edi, %esi
	movl	4(%esp), %eax           ## 4-byte Reload
	jmp	LBB18_19
LBB18_13:
	movl	%eax, 12(%esp)          ## 4-byte Spill
	xorl	%eax, %eax
LBB18_19:                               ## %middle.block
	cmpl	%eax, 12(%esp)          ## 4-byte Folded Reload
	movl	$-2, %ebx
	jne	LBB18_7
## BB#20:
	movl	20(%esp), %edx          ## 4-byte Reload
	jmp	LBB18_24
LBB18_7:                                ## %.lr.ph.preheader24
	movl	%esi, %edi
	notl	%edi
	cmpl	$-3, %edi
	cmovgl	%edi, %ebx
	leal	2(%esi,%ebx), %eax
	leal	1(%esi,%ebx), %ebx
	testb	$3, %al
	je	LBB18_10
## BB#8:                                ## %.lr.ph.prol.preheader
	movl	16(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%ecx,%eax,4), %eax
	cmpl	$-3, %edi
	movl	$-2, %ebp
	cmovgl	%edi, %ebp
	leal	2(%esi,%ebp), %edi
	andl	$3, %edi
	negl	%edi
	.align	4, 0x90
LBB18_9:                                ## %.lr.ph.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%edx,%esi,4), %ebp
	movl	%ebp, (%eax,%esi,4)
	leal	-1(%esi), %esi
	incl	%edi
	jne	LBB18_9
LBB18_10:                               ## %.lr.ph.preheader24.split
	cmpl	$3, %ebx
	jae	LBB18_21
## BB#11:
	movl	20(%esp), %edx          ## 4-byte Reload
	jmp	LBB18_24
LBB18_21:                               ## %.lr.ph.preheader24.split.split
	incl	%esi
	movl	16(%esp), %edi          ## 4-byte Reload
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	$-4, %eax
	subl	%edi, %eax
	leal	(%ecx,%eax,4), %eax
	movl	20(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB18_22:                               ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%edx,%esi,4), %ecx
	movl	%ecx, 8(%eax,%esi,4)
	movl	-12(%edx,%esi,4), %ecx
	movl	%ecx, 4(%eax,%esi,4)
	movl	-16(%edx,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	movl	-20(%edx,%esi,4), %ecx
	movl	%ecx, -4(%eax,%esi,4)
	addl	$-4, %esi
	cmpl	$1, %esi
	jg	LBB18_22
LBB18_23:
	movl	%edi, %edx
LBB18_24:                               ## %.loopexit
	movl	%edx, %eax
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2x_extgcd
	.align	4, 0x90
_F2x_extgcd:                            ## @F2x_extgcd
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	L19$pb
L19$pb:
	popl	%ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	96(%esp), %edx
	movl	L_avma$non_lazy_ptr-L19$pb(%ecx), %ebp
	movl	(%ebp), %eax
	movl	L_bot$non_lazy_ptr-L19$pb(%ecx), %esi
	movl	(%esi), %edi
	movl	%edi, 28(%esp)          ## 4-byte Spill
	movl	%eax, %ecx
	subl	%edi, %ecx
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	movl	4(%edx), %edi
	movl	%edi, 32(%esp)          ## 4-byte Spill
	movl	%edx, 64(%esp)
	movl	100(%esp), %edx
	movl	%edx, 60(%esp)
	cmpl	$7, %ecx
	leal	-8(%eax), %edi
	movl	%eax, %ebx
	ja	LBB19_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB19_2:                                ## %pol0_F2x.exit
	movl	%ebp, 44(%esp)          ## 4-byte Spill
	movl	%edi, (%ebp)
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	movl	$738197506, -8(%ebx)    ## imm = 0x2C000002
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, -4(%ebx)
	movl	%eax, %ebx
	movl	%edi, 68(%esp)
	movl	(%ebp), %edi
	movl	%edi, %eax
	subl	(%esi), %eax
	shrl	$2, 48(%esp)            ## 4-byte Folded Spill
	cmpl	$11, %eax
	leal	-12(%edi), %esi
	ja	LBB19_4
## BB#3:
	movl	$14, (%esp)
	calll	_pari_err
LBB19_4:                                ## %pol1_F2x.exit
	movl	28(%esp), %eax          ## 4-byte Reload
	addl	%eax, 48(%esp)          ## 4-byte Folded Spill
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	$738197507, -12(%edi)   ## imm = 0x2C000003
	movl	%ebx, -8(%edi)
	movl	$1, -4(%edi)
	movl	%esi, 56(%esp)
	movl	60(%esp), %eax
	movl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	(%eax), %ecx
	andl	%edi, %ecx
	cmpl	$2, %ecx
	je	LBB19_17
## BB#5:                                ## %.lr.ph
	movl	40(%esp), %ecx          ## 4-byte Reload
	leal	L_.str1-L19$pb(%ecx), %ecx
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	.align	4, 0x90
LBB19_6:                                ## =>This Inner Loop Header: Depth=1
	movl	64(%esp), %ecx
	leal	52(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_F2x_divrem
	movl	%eax, %esi
	movl	68(%esp), %ebx
	movl	56(%esp), %edx
	leal	8(%esi), %ecx
	movl	(%esi), %eax
	andl	%edi, %eax
	addl	$-2, %eax
	movl	(%edx), %ebp
	andl	%edi, %ebp
	addl	$8, %edx
	addl	$-2, %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_mulspec
	movl	4(%esi), %ecx
	movl	%ecx, 4(%eax)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_F2x_add
	movl	56(%esp), %ecx
	movl	%ecx, 68(%esp)
	movl	%eax, 56(%esp)
	movl	52(%esp), %eax
	movl	%eax, 72(%esp)
	movl	60(%esp), %ecx
	movl	%ecx, 64(%esp)
	movl	%eax, 60(%esp)
	movl	44(%esp), %edx          ## 4-byte Reload
	movl	48(%esp), %esi          ## 4-byte Reload
	cmpl	%esi, (%edx)
	jae	LBB19_16
## BB#7:                                ##   in Loop: Header=BB19_6 Depth=1
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	L_DEBUGMEM$non_lazy_ptr-L19$pb(%eax), %eax
	cmpl	$2, (%eax)
	jb	LBB19_15
## BB#8:                                ##   in Loop: Header=BB19_6 Depth=1
	movl	(%ecx), %eax
	andl	%edi, %eax
	movl	$-1, %edx
	cmpl	$2, %eax
	je	LBB19_14
## BB#9:                                ##   in Loop: Header=BB19_6 Depth=1
	movl	-4(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$28, %edx
	movl	$12, %esi
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB19_11
## BB#10:                               ##   in Loop: Header=BB19_6 Depth=1
	addl	$-8, %edx
	shrl	$8, %ecx
LBB19_11:                               ##   in Loop: Header=BB19_6 Depth=1
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB19_13
## BB#12:                               ##   in Loop: Header=BB19_6 Depth=1
	addl	$-4, %edx
	shrl	$4, %ecx
LBB19_13:                               ##   in Loop: Header=BB19_6 Depth=1
	addl	$-65, %eax
	subl	%edx, %eax
	movl	40(%esp), %edx          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L19$pb(%edx,%ecx,4), %eax
	movl	%eax, %edx
LBB19_14:                               ## %F2x_degree.exit
                                        ##   in Loop: Header=BB19_6 Depth=1
	movl	%edx, 8(%esp)
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	calll	_pari_warn
LBB19_15:                               ##   in Loop: Header=BB19_6 Depth=1
	leal	56(%esp), %eax
	movl	%eax, 24(%esp)
	leal	68(%esp), %eax
	movl	%eax, 20(%esp)
	leal	72(%esp), %eax
	movl	%eax, 16(%esp)
	leal	60(%esp), %eax
	movl	%eax, 12(%esp)
	leal	64(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$5, 4(%esp)
	calll	_gerepileall
	movl	60(%esp), %eax
LBB19_16:                               ## %.backedge
                                        ##   in Loop: Header=BB19_6 Depth=1
	movl	(%eax), %ecx
	andl	%edi, %ecx
	cmpl	$2, %ecx
	jne	LBB19_6
LBB19_17:                               ## %._crit_edge
	movl	108(%esp), %edx
	movl	104(%esp), %esi
	testl	%esi, %esi
	je	LBB19_19
## BB#18:
	movl	64(%esp), %edi
	movl	%edx, %esi
	movl	68(%esp), %edx
	movl	100(%esp), %eax
	movl	%eax, %ebp
	leal	8(%ebp), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%ebp), %ebx
	andl	%eax, %ebx
	addl	$-2, %ebx
	andl	(%edx), %eax
	addl	$8, %edx
	addl	$-2, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_F2x_mulspec
	movl	4(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2x_add
	movl	96(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	_F2x_divrem
	movl	%esi, %edx
	movl	104(%esp), %esi
	movl	%eax, (%esi)
LBB19_19:
	movl	68(%esp), %eax
	movl	%eax, (%edx)
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	48(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, (%eax)
	jae	LBB19_21
## BB#20:
	testl	%esi, %esi
	setne	%al
	movzbl	%al, %eax
	orl	$2, %eax
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	leal	64(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_gerepileall
LBB19_21:
	movl	64(%esp), %eax
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2xq_mul
	.align	4, 0x90
_F2xq_mul:                              ## @F2xq_mul
## BB#0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	40(%esp), %esi
	movl	36(%esp), %edx
	movl	32(%esp), %edi
	leal	8(%edi), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%edi), %ebx
	andl	%eax, %ebx
	addl	$-2, %ebx
	andl	(%edx), %eax
	addl	$8, %edx
	addl	$-2, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_F2x_mulspec
	movl	4(%edi), %ecx
	movl	%ecx, 4(%eax)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl

	.globl	_F2xq_sqr
	.align	4, 0x90
_F2xq_sqr:                              ## @F2xq_sqr
## BB#0:
	pushl	%esi
	subl	$8, %esp
	movl	20(%esp), %esi
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	_F2x_sqr
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	addl	$8, %esp
	popl	%esi
	retl

	.globl	_F2xq_invsafe
	.align	4, 0x90
_F2xq_invsafe:                          ## @F2xq_invsafe
## BB#0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	calll	L22$pb
L22$pb:
	popl	%esi
	movl	52(%esp), %eax
	movl	48(%esp), %ecx
	leal	28(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	_F2x_extgcd
	movl	%eax, %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	(%ecx), %edx
	xorl	%eax, %eax
	cmpl	$2, %edx
	movl	$0, %ebx
	je	LBB22_6
## BB#1:
	movl	-4(%ecx,%edx,4), %edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edi            ## imm = 0xFFFF
	cmovbel	%edi, %ecx
	movl	$12, %ebx
	movl	$28, %edi
	cmoval	%ebx, %edi
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB22_3
## BB#2:
	addl	$-8, %edi
	shrl	$8, %ecx
LBB22_3:
	shll	$5, %edx
	cmpl	$16, %ecx
	jb	LBB22_5
## BB#4:
	addl	$-4, %edi
	shrl	$4, %ecx
LBB22_5:
	addl	$-65, %edx
	subl	%edi, %edx
	cmpl	_F2x_degree_lg.__bfffo_tabshi-L22$pb(%esi,%ecx,4), %edx
	sete	%bl
LBB22_6:                                ## %F2x_degree.exit
	testb	%bl, %bl
	cmovnel	28(%esp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI23_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_inv
	.align	4, 0x90
_F2xq_inv:                              ## @F2xq_inv
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L23$pb
L23$pb:
	popl	%ebx
	movl	68(%esp), %eax
	movl	64(%esp), %ecx
	movl	L_avma$non_lazy_ptr-L23$pb(%ebx), %edi
	movl	(%edi), %ebp
	leal	40(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	_F2x_extgcd
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	xorl	%esi, %esi
	cmpl	$2, %ecx
	movl	$0, %edx
	je	LBB23_6
## BB#1:
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	-4(%eax,%ecx,4), %edx
	movl	%edx, %eax
	shrl	$16, %eax
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %eax
	movl	$28, %edx
	movl	$12, %ebp
	cmoval	%ebp, %edx
	cmpl	$256, %eax              ## imm = 0x100
	jb	LBB23_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %eax
LBB23_3:
	movl	36(%esp), %ebp          ## 4-byte Reload
	shll	$5, %ecx
	cmpl	$16, %eax
	jb	LBB23_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %eax
LBB23_5:
	addl	$-65, %ecx
	subl	%edx, %ecx
	cmpl	_F2x_degree_lg.__bfffo_tabshi-L23$pb(%ebx,%eax,4), %ecx
	sete	%dl
LBB23_6:                                ## %F2xq_invsafe.exit
	testb	%dl, %dl
	cmovnel	40(%esp), %esi
	testl	%esi, %esi
	jne	LBB23_8
## BB#7:
	movl	$27, (%esp)
	calll	_pari_err
LBB23_8:
	movl	L_bot$non_lazy_ptr-L23$pb(%ebx), %eax
	cmpl	(%eax), %esi
	jb	LBB23_11
## BB#9:
	movl	L_top$non_lazy_ptr-L23$pb(%ebx), %eax
	cmpl	(%eax), %esi
	jae	LBB23_11
## BB#10:
	cmpl	%esi, %ebp
	jbe	LBB23_11
## BB#12:
	movl	(%esi), %ecx
	movl	%ecx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
                                        ## kill: ECX<def> EAX<kill>
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%edx, (%edi)
	je	LBB23_13
## BB#14:                               ## %.lr.ph.i.preheader
	movl	%ebp, %edi
	movl	%edx, 32(%esp)          ## 4-byte Spill
	movl	%eax, %edx
	movl	%eax, 28(%esp)          ## 4-byte Spill
	orl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	%edx, %eax
	xorl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	%eax, 24(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebp
	cmovel	%eax, %ebp
	leal	(%ebp,%ecx), %eax
	cmpl	$-2, %eax
	je	LBB23_24
## BB#15:                               ## %overflow.checked
	movl	%ebp, 20(%esp)          ## 4-byte Spill
	movl	%edi, 36(%esp)          ## 4-byte Spill
	addl	$2, %eax
	cmpl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %edx
	cmovnel	%edx, %ebp
	movl	%eax, %edx
	andl	$-8, %edx
	je	LBB23_16
## BB#17:                               ## %vector.memcheck
	movl	%edx, 16(%esp)          ## 4-byte Spill
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	$-2, %edx
	movl	$-2, %edi
	subl	%ebp, %edi
	leal	(%esi,%edi,4), %eax
	movl	36(%esp), %edi          ## 4-byte Reload
	leal	-4(%edi), %edi
	cmpl	%eax, %edi
	movl	$0, %eax
	ja	LBB23_19
## BB#18:                               ## %vector.memcheck
	leal	-4(%esi,%ecx,4), %edi
	addl	%ecx, %ebp
	subl	%ebp, %edx
	movl	36(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%edx,4), %edx
	cmpl	%edx, %edi
	jbe	LBB23_22
LBB23_19:                               ## %vector.body.preheader
	movl	%ecx, %ebp
	subl	16(%esp), %ebp          ## 4-byte Folded Reload
	movl	20(%esp), %eax          ## 4-byte Reload
	leal	2(%eax,%ecx), %eax
	andl	$-8, %eax
	movdqa	LCPI23_0-L23$pb(%ebx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%ecx, %ebx
	movl	36(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB23_20:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movups	-12(%esi,%edx,4), %xmm1
	movups	-28(%esi,%edx,4), %xmm2
	subl	%ecx, %edx
	movups	%xmm1, -12(%edi,%edx,4)
	movups	%xmm2, -28(%edi,%edx,4)
	addl	$-8, %ebx
	addl	$-8, %eax
	jne	LBB23_20
## BB#21:
	movl	%ebp, %ecx
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB23_22
LBB23_11:                               ## %.critedge.i
	movl	%ebp, (%edi)
LBB23_32:                               ## %gerepileuptoleaf.exit
	movl	%esi, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB23_13:
	movl	%edx, %esi
	jmp	LBB23_32
LBB23_16:
	movl	%eax, 24(%esp)          ## 4-byte Spill
	xorl	%eax, %eax
LBB23_22:                               ## %middle.block
	cmpl	%eax, 24(%esp)          ## 4-byte Folded Reload
	movl	36(%esp), %edi          ## 4-byte Reload
	jne	LBB23_24
## BB#23:
	movl	32(%esp), %esi          ## 4-byte Reload
	jmp	LBB23_32
LBB23_24:                               ## %.lr.ph.i.preheader23
	movl	%ecx, %ebp
	notl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	2(%ecx,%edx), %eax
	leal	1(%ecx,%edx), %ebx
	testb	$3, %al
	je	LBB23_27
## BB#25:                               ## %.lr.ph.i.prol.preheader
	movl	28(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%edi,%eax,4), %eax
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	2(%ecx,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	4, 0x90
LBB23_26:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	leal	-1(%ecx), %ecx
	incl	%ebp
	jne	LBB23_26
LBB23_27:                               ## %.lr.ph.i.preheader23.split
	cmpl	$3, %ebx
	jae	LBB23_29
## BB#28:
	movl	32(%esp), %esi          ## 4-byte Reload
	jmp	LBB23_32
LBB23_29:                               ## %.lr.ph.i.preheader23.split.split
	incl	%ecx
	movl	28(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	$-4, %eax
	subl	%edx, %eax
	leal	(%edi,%eax,4), %eax
	movl	32(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB23_30:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%esi,%ecx,4), %edx
	movl	%edx, 8(%eax,%ecx,4)
	movl	-12(%esi,%ecx,4), %edx
	movl	%edx, 4(%eax,%ecx,4)
	movl	-16(%esi,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	movl	-20(%esi,%ecx,4), %edx
	movl	%edx, -4(%eax,%ecx,4)
	addl	$-4, %ecx
	cmpl	$1, %ecx
	jg	LBB23_30
## BB#31:
	movl	%edi, %esi
	jmp	LBB23_32

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI24_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_div
	.align	4, 0x90
_F2xq_div:                              ## @F2xq_div
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L24$pb
L24$pb:
	popl	%esi
	movl	64(%esp), %ebp
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	movl	L_avma$non_lazy_ptr-L24$pb(%esi), %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	(%ecx), %ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2xq_inv
	leal	8(%ebp), %ecx
	movl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	(%ebp), %edi
	andl	%ebx, %edi
	addl	$-2, %edi
	andl	(%eax), %ebx
	leal	8(%eax), %edx
	addl	$-2, %ebx
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2x_mulspec
	movl	4(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	72(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	movl	L_bot$non_lazy_ptr-L24$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jb	LBB24_3
## BB#1:
	movl	L_top$non_lazy_ptr-L24$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jae	LBB24_3
## BB#2:
	cmpl	%eax, 40(%esp)          ## 4-byte Folded Reload
	jbe	LBB24_3
## BB#4:
	movl	(%eax), %ebx
	movl	%ebx, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	40(%esp), %edi          ## 4-byte Reload
	subl	%ecx, %edi
	movl	%ebx, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%edi, (%ecx)
	je	LBB24_24
## BB#5:                                ## %.lr.ph.i.preheader
	movl	%esi, 28(%esp)          ## 4-byte Spill
	movl	%ebx, %esi
	orl	$-16777216, %esi        ## imm = 0xFFFFFFFFFF000000
	movl	%esi, %ecx
	xorl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %esi        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebp
	cmovel	%ecx, %ebp
	leal	(%ebp,%edx), %ecx
	cmpl	$-2, %ecx
	jne	LBB24_9
## BB#6:
	movl	%ebx, 32(%esp)          ## 4-byte Spill
	movl	%edi, 36(%esp)          ## 4-byte Spill
	jmp	LBB24_7
LBB24_3:                                ## %.critedge.i
	movl	40(%esp), %ecx          ## 4-byte Reload
	movl	36(%esp), %edx          ## 4-byte Reload
	movl	%ecx, (%edx)
	jmp	LBB24_25
LBB24_9:                                ## %overflow.checked
	movl	%ebp, 20(%esp)          ## 4-byte Spill
	addl	$2, %ecx
	cmpl	$-16777216, %esi        ## imm = 0xFFFFFFFFFF000000
	movl	36(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %esi
	cmovnel	%esi, %ebp
	movl	%ecx, %esi
	andl	$-8, %esi
	je	LBB24_10
## BB#11:                               ## %vector.memcheck
	movl	%esi, 16(%esp)          ## 4-byte Spill
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%ebx, 32(%esp)          ## 4-byte Spill
	movl	%edi, 36(%esp)          ## 4-byte Spill
	movl	$-2, %esi
	movl	$-2, %edi
	subl	%ebp, %edi
	leal	(%eax,%edi,4), %edi
	movl	40(%esp), %ebx          ## 4-byte Reload
	leal	-4(%ebx), %ebx
	cmpl	%edi, %ebx
	movl	$0, %ecx
	ja	LBB24_13
## BB#12:                               ## %vector.memcheck
	leal	-4(%eax,%edx,4), %edi
	addl	%edx, %ebp
	subl	%ebp, %esi
	movl	40(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%esi,4), %esi
	cmpl	%esi, %edi
	jbe	LBB24_16
LBB24_13:                               ## %vector.body.preheader
	movl	%edx, %esi
	subl	16(%esp), %esi          ## 4-byte Folded Reload
	movl	20(%esp), %ecx          ## 4-byte Reload
	leal	2(%ecx,%edx), %ecx
	andl	$-8, %ecx
	movl	28(%esp), %edi          ## 4-byte Reload
	movdqa	LCPI24_0-L24$pb(%edi), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %ebx
	movl	40(%esp), %ebp          ## 4-byte Reload
	.align	4, 0x90
LBB24_14:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	movups	-12(%eax,%edi,4), %xmm1
	movups	-28(%eax,%edi,4), %xmm2
	subl	%edx, %edi
	movups	%xmm1, -12(%ebp,%edi,4)
	movups	%xmm2, -28(%ebp,%edi,4)
	addl	$-8, %ebx
	addl	$-8, %ecx
	jne	LBB24_14
## BB#15:
	movl	%esi, %edx
	movl	16(%esp), %ecx          ## 4-byte Reload
	jmp	LBB24_16
LBB24_10:
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%ebx, 32(%esp)          ## 4-byte Spill
	movl	%edi, 36(%esp)          ## 4-byte Spill
	xorl	%ecx, %ecx
LBB24_16:                               ## %middle.block
	cmpl	%ecx, 24(%esp)          ## 4-byte Folded Reload
	jne	LBB24_7
## BB#17:
	movl	36(%esp), %eax          ## 4-byte Reload
	jmp	LBB24_25
LBB24_7:                                ## %.lr.ph.i.preheader22
	movl	%edx, %esi
	notl	%esi
	cmpl	$-3, %esi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	2(%edx,%edi), %ecx
	leal	1(%edx,%edi), %ebx
	testb	$3, %cl
	je	LBB24_8
## BB#18:                               ## %.lr.ph.i.prol.preheader
	movl	32(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	40(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%ecx,4), %ecx
	cmpl	$-3, %esi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	2(%edx,%edi), %esi
	andl	$3, %esi
	negl	%esi
	.align	4, 0x90
LBB24_19:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %edi
	movl	%edi, (%ecx,%edx,4)
	leal	-1(%edx), %edx
	incl	%esi
	jne	LBB24_19
	jmp	LBB24_20
LBB24_8:
	movl	40(%esp), %ebp          ## 4-byte Reload
LBB24_20:                               ## %.lr.ph.i.preheader22.split
	cmpl	$3, %ebx
	jae	LBB24_22
## BB#21:
	movl	36(%esp), %eax          ## 4-byte Reload
	jmp	LBB24_25
LBB24_22:                               ## %.lr.ph.i.preheader22.split.split
	incl	%edx
	movl	32(%esp), %esi          ## 4-byte Reload
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	leal	(%ebp,%ecx,4), %ecx
	movl	36(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB24_23:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%eax,%edx,4), %esi
	movl	%esi, 8(%ecx,%edx,4)
	movl	-12(%eax,%edx,4), %esi
	movl	%esi, 4(%ecx,%edx,4)
	movl	-16(%eax,%edx,4), %esi
	movl	%esi, (%ecx,%edx,4)
	movl	-20(%eax,%edx,4), %esi
	movl	%esi, -4(%ecx,%edx,4)
	addl	$-4, %edx
	cmpl	$1, %edx
	jg	LBB24_23
LBB24_24:
	movl	%edi, %eax
LBB24_25:                               ## %gerepileuptoleaf.exit
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI25_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_pow
	.align	4, 0x90
_F2xq_pow:                              ## @F2xq_pow
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L25$pb
L25$pb:
	popl	%esi
	movl	84(%esp), %ebx
	movl	80(%esp), %edi
	movl	L_avma$non_lazy_ptr-L25$pb(%esi), %ebp
	movl	(%ebp), %edx
	movl	4(%ebx), %eax
	cmpl	$1073741823, %eax       ## imm = 0x3FFFFFFF
	jbe	LBB25_1
## BB#4:
	movl	%eax, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	cmpl	$3, %ecx
	jne	LBB25_5
## BB#7:                                ## %is_pm1.exit
	cmpl	$1, 8(%ebx)
	jne	LBB25_30
## BB#8:
	testl	%eax, %eax
	js	LBB25_9
## BB#10:
	movl	%ebp, 56(%esp)          ## 4-byte Spill
	movl	(%edi), %ebx
	movl	%ebx, 44(%esp)          ## 4-byte Spill
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	leal	(,%ebx,4), %eax
	movl	%edx, %ebp
	subl	%eax, %ebp
	movl	L_bot$non_lazy_ptr-L25$pb(%esi), %eax
	movl	%edx, %ecx
	movl	%edx, 52(%esp)          ## 4-byte Spill
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	jae	LBB25_12
## BB#11:
	movl	$14, (%esp)
	calll	_pari_err
LBB25_12:                               ## %cgetg_copy.exit.i.i
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%ebp, (%eax)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%edi), %eax
	movl	%eax, (%ebp)
	cmpl	$2, %ebx
	jb	LBB25_73
## BB#13:                               ## %.lr.ph.i.i4.preheader
	movl	%ebp, 48(%esp)          ## 4-byte Spill
	movl	44(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %eax
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB25_14
## BB#15:                               ## %overflow.checked83
	incl	%ecx
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	%ecx, %eax
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	andl	$-8, %eax
	movl	%eax, 40(%esp)          ## 4-byte Spill
	je	LBB25_16
## BB#17:                               ## %vector.memcheck97
	movl	%ecx, %eax
	notl	%eax
	leal	(%edi,%eax,4), %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	movl	52(%esp), %eax          ## 4-byte Reload
	leal	-4(%eax), %eax
	cmpl	36(%esp), %eax          ## 4-byte Folded Reload
	ja	LBB25_20
## BB#18:                               ## %vector.memcheck97
	leal	-4(%edi,%edx,4), %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	addl	%edx, %ecx
	notl	%ecx
	movl	52(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ecx,4), %ecx
	cmpl	%ecx, 36(%esp)          ## 4-byte Folded Reload
	ja	LBB25_20
## BB#19:
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %eax
	movl	56(%esp), %ecx          ## 4-byte Reload
	xorl	%edx, %edx
	jmp	LBB25_23
LBB25_1:
	movl	%ebp, %ebx
	movl	4(%edi), %edi
	leal	-12(%edx), %ebp
	movl	L_bot$non_lazy_ptr-L25$pb(%esi), %eax
	movl	%edx, %ecx
	subl	(%eax), %ecx
	cmpl	$11, %ecx
	ja	LBB25_3
## BB#2:
	movl	$14, (%esp)
	movl	%edx, %esi
	calll	_pari_err
	movl	%esi, %edx
LBB25_3:                                ## %pol1_F2x.exit
	movl	%ebp, (%ebx)
	movl	$738197507, -12(%edx)   ## imm = 0x2C000003
	movl	%edi, -8(%edx)
	movl	$1, -4(%edx)
	jmp	LBB25_73
LBB25_5:                                ## %is_pm1.exit.thread
	movl	%ebp, 56(%esp)          ## 4-byte Spill
	testl	%eax, %eax
	movl	88(%esp), %ecx
	js	LBB25_32
## BB#6:
	movl	%edx, %ebp
	jmp	LBB25_33
LBB25_30:
	movl	%ebp, 56(%esp)          ## 4-byte Spill
	testl	%eax, %eax
	movl	88(%esp), %ecx
	js	LBB25_32
## BB#31:
	movl	%edx, %ebp
	jmp	LBB25_33
LBB25_32:
	movl	%edx, %ebp
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, %edi
	calll	_F2xq_inv
	movl	%edi, %ecx
	movl	%eax, %edi
LBB25_33:
	leal	__F2xq_mul-L25$pb(%esi), %eax
	movl	%eax, 16(%esp)
	leal	__F2xq_sqr-L25$pb(%esi), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	calll	_gen_pow
	movl	L_bot$non_lazy_ptr-L25$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jb	LBB25_36
## BB#34:                               ## %isonstack.exit.i
	cmpl	%eax, %ebp
	jbe	LBB25_36
## BB#35:                               ## %isonstack.exit.i
	movl	L_top$non_lazy_ptr-L25$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jae	LBB25_36
## BB#37:
	movl	%ebp, 52(%esp)          ## 4-byte Spill
	movl	(%eax), %edi
	movl	%edi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	jb	LBB25_57
## BB#38:
	cmpl	$2, %ecx
	jne	LBB25_39
LBB25_57:
	movl	%edi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	52(%esp), %ebp          ## 4-byte Reload
	subl	%ecx, %ebp
	movl	%edi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%ebp, (%ecx)
	je	LBB25_73
## BB#58:                               ## %.lr.ph.i.i.preheader
	movl	%ebp, 48(%esp)          ## 4-byte Spill
	movl	%edi, %ecx
	movl	%edi, 56(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %edi
	xorl	$16777215, %edi         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebp
	cmovel	%edi, %ebp
	leal	(%ebp,%edx), %ebx
	cmpl	$-2, %ebx
	jne	LBB25_60
## BB#59:
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %ecx
	jmp	LBB25_67
LBB25_36:                               ## %isonstack.exit.thread.i
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%ebp, (%ecx)
	movl	%eax, %ebp
LBB25_73:                               ## %vecsmall_copy.exit
	movl	%ebp, %eax
LBB25_74:                               ## %vecsmall_copy.exit
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB25_9:
	movl	88(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2xq_inv
	jmp	LBB25_74
LBB25_39:
	cmpl	$1, %ecx
	jne	LBB25_75
## BB#40:                               ## %isonstack.exit.i.i
	movl	4(%eax), %edi
	movl	%edi, 40(%esp)          ## 4-byte Spill
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	%edi, 44(%esp)          ## 4-byte Spill
	leal	(,%edi,4), %edx
	movl	52(%esp), %ebp          ## 4-byte Reload
	subl	%edx, %ebp
	cmpl	$2, %edi
	jb	LBB25_56
## BB#41:                               ## %.lr.ph.i.i.i.preheader
	movl	40(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ecx
	negl	%ecx
	cmpl	$-3, %ecx
	movl	$-2, %ebx
	cmovgl	%ecx, %ebx
	addl	%edx, %ebx
	cmpl	$-1, %ebx
	movl	44(%esp), %edi          ## 4-byte Reload
	je	LBB25_50
## BB#42:                               ## %overflow.checked35
	incl	%ebx
	cmpl	$-3, %ecx
	movl	$-2, %edi
	cmovgl	%ecx, %edi
	movl	%edi, 48(%esp)          ## 4-byte Spill
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	xorl	%ecx, %ecx
	movl	%ebx, %edi
	andl	$-8, %edi
	je	LBB25_43
## BB#44:                               ## %vector.memcheck49
	movl	%edi, 28(%esp)          ## 4-byte Spill
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	movl	48(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, %edi
	notl	%edi
	leal	(%eax,%edi,4), %edi
	movl	%edi, 24(%esp)          ## 4-byte Spill
	movl	52(%esp), %edi          ## 4-byte Reload
	leal	-4(%edi), %edi
	cmpl	24(%esp), %edi          ## 4-byte Folded Reload
	ja	LBB25_46
## BB#45:                               ## %vector.memcheck49
	leal	-4(%eax,%edx,4), %edi
	movl	%edi, 24(%esp)          ## 4-byte Spill
	addl	%edx, %ebx
	notl	%ebx
	movl	52(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ebx,4), %edi
	cmpl	%edi, 24(%esp)          ## 4-byte Folded Reload
	movl	44(%esp), %edi          ## 4-byte Reload
	jbe	LBB25_49
LBB25_46:                               ## %vector.body26.preheader
	movl	%ebp, 48(%esp)          ## 4-byte Spill
	movl	44(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %edi
	subl	28(%esp), %edi          ## 4-byte Folded Reload
	movl	32(%esp), %ebp          ## 4-byte Reload
	cmpl	$-3, %ebp
	movl	$-2, %ebx
	cmovgl	%ebp, %ebx
	leal	1(%ebx,%edx), %ebx
	andl	$-8, %ebx
	movdqa	LCPI25_0-L25$pb(%esi), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	52(%esp), %ebp          ## 4-byte Reload
LBB25_47:                               ## %vector.body26
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %esi
	movups	-12(%eax,%esi,4), %xmm1
	movups	-28(%eax,%esi,4), %xmm2
	subl	%ecx, %esi
	movups	%xmm1, -12(%ebp,%esi,4)
	movups	%xmm2, -28(%ebp,%esi,4)
	addl	$-8, %edx
	addl	$-8, %ebx
	jne	LBB25_47
## BB#48:
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	48(%esp), %ebp          ## 4-byte Reload
	jmp	LBB25_49
LBB25_60:                               ## %overflow.checked
	addl	$2, %ebx
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ecx
	cmovnel	%ecx, %edi
	movl	$0, 44(%esp)            ## 4-byte Folded Spill
	movl	%ebx, %ecx
	andl	$-8, %ecx
	je	LBB25_66
## BB#61:                               ## %vector.memcheck
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	$-2, %ecx
	subl	%edi, %ecx
	leal	(%eax,%ecx,4), %ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	40(%esp), %ecx          ## 4-byte Folded Reload
	ja	LBB25_63
## BB#62:                               ## %vector.memcheck
	leal	-4(%eax,%edx,4), %ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	addl	%edx, %edi
	movl	$-2, %ecx
	subl	%edi, %ecx
	movl	52(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %edi
	cmpl	%edi, 40(%esp)          ## 4-byte Folded Reload
	jbe	LBB25_66
LBB25_63:                               ## %vector.body.preheader
	movl	%edx, %ecx
	subl	36(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movdqa	LCPI25_0-L25$pb(%esi), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %esi
	movl	52(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB25_64:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%eax,%ecx,4), %xmm1
	movups	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movups	%xmm1, -12(%edi,%ecx,4)
	movups	%xmm2, -28(%edi,%ecx,4)
	addl	$-8, %esi
	addl	$-8, %ebp
	jne	LBB25_64
## BB#65:
	movl	44(%esp), %edx          ## 4-byte Reload
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 44(%esp)          ## 4-byte Spill
LBB25_66:                               ## %middle.block
	cmpl	44(%esp), %ebx          ## 4-byte Folded Reload
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %ecx
	je	LBB25_73
LBB25_67:                               ## %.lr.ph.i.i.preheader140
	movl	%edx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %ecx
	movl	%ecx, %esi
	leal	2(%edx,%esi), %ecx
	leal	1(%edx,%esi), %esi
	testb	$3, %cl
	je	LBB25_70
## BB#68:                               ## %.lr.ph.i.i.prol.preheader
	movl	56(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	52(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %edi
	cmpl	$-3, %ebx
	movl	$-2, %ecx
	cmovgl	%ebx, %ecx
	leal	2(%edx,%ecx), %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB25_69:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%edi,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB25_69
LBB25_70:                               ## %.lr.ph.i.i.preheader140.split
	cmpl	$3, %esi
	jb	LBB25_73
## BB#71:                               ## %.lr.ph.i.i.preheader140.split.split
	incl	%edx
	movl	56(%esp), %esi          ## 4-byte Reload
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	52(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	.align	4, 0x90
LBB25_72:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%eax,%edx,4), %esi
	movl	%esi, 8(%ecx,%edx,4)
	movl	-12(%eax,%edx,4), %esi
	movl	%esi, 4(%ecx,%edx,4)
	movl	-16(%eax,%edx,4), %esi
	movl	%esi, (%ecx,%edx,4)
	movl	-20(%eax,%edx,4), %esi
	movl	%esi, -4(%ecx,%edx,4)
	addl	$-4, %edx
	cmpl	$1, %edx
	jg	LBB25_72
	jmp	LBB25_73
LBB25_14:
	movl	48(%esp), %ebp          ## 4-byte Reload
	jmp	LBB25_24
LBB25_75:
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	leal	(%eax,%edi,4), %ecx
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_gerepile
	jmp	LBB25_74
LBB25_16:
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %eax
	xorl	%edx, %edx
	jmp	LBB25_23
LBB25_20:                               ## %vector.body74.preheader
	movl	%ebx, %eax
	movl	40(%esp), %ecx          ## 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	leal	1(%eax,%edx), %ebp
	andl	$-8, %ebp
	movdqa	LCPI25_0-L25$pb(%esi), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	52(%esp), %esi          ## 4-byte Reload
	.align	4, 0x90
LBB25_21:                               ## %vector.body74
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movups	-12(%edi,%eax,4), %xmm1
	movups	-28(%edi,%eax,4), %xmm2
	subl	%ebx, %eax
	movups	%xmm1, -12(%esi,%eax,4)
	movups	%xmm2, -28(%esi,%eax,4)
	addl	$-8, %edx
	addl	$-8, %ebp
	jne	LBB25_21
## BB#22:
	movl	36(%esp), %ebx          ## 4-byte Reload
	movl	%ecx, %edx
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %eax
	movl	56(%esp), %ecx          ## 4-byte Reload
LBB25_23:                               ## %middle.block75
	cmpl	%edx, %ecx
	je	LBB25_73
LBB25_24:                               ## %.lr.ph.i.i4.preheader138
	movl	%ebx, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %eax
	leal	(%ebx,%eax), %ecx
	leal	1(%ebx,%eax), %eax
	testb	$3, %al
	je	LBB25_27
## BB#25:                               ## %.lr.ph.i.i4.prol.preheader
	movl	44(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	movl	52(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %eax
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	leal	1(%ebx,%esi), %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB25_26:                               ## %.lr.ph.i.i4.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%edi,%ebx,4), %esi
	movl	%esi, (%eax,%ebx,4)
	leal	-1(%ebx), %ebx
	incl	%edx
	jne	LBB25_26
LBB25_27:                               ## %.lr.ph.i.i4.preheader138.split
	cmpl	$3, %ecx
	jb	LBB25_73
## BB#28:                               ## %.lr.ph.i.i4.preheader138.split.split
	movl	44(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	52(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ecx,4), %eax
	.align	4, 0x90
LBB25_29:                               ## %.lr.ph.i.i4
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%edi,%ebx,4), %ecx
	movl	%ecx, (%eax,%ebx,4)
	movl	-8(%edi,%ebx,4), %ecx
	movl	%ecx, -4(%eax,%ebx,4)
	movl	-12(%edi,%ebx,4), %ecx
	movl	%ecx, -8(%eax,%ebx,4)
	movl	-16(%edi,%ebx,4), %ecx
	movl	%ecx, -12(%eax,%ebx,4)
	leal	-4(%ebx), %ebx
	cmpl	$1, %ebx
	jg	LBB25_29
	jmp	LBB25_73
LBB25_43:
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	movl	44(%esp), %edi          ## 4-byte Reload
LBB25_49:                               ## %middle.block27
	cmpl	%ecx, 36(%esp)          ## 4-byte Folded Reload
	je	LBB25_56
LBB25_50:                               ## %.lr.ph.i.i.i.preheader139
	movl	%edi, %ebx
	negl	%ebx
	cmpl	$-3, %ebx
	movl	$-2, %edx
	cmovgl	%ebx, %edx
	leal	(%edi,%edx), %ecx
	leal	1(%edi,%edx), %edx
	testb	$3, %dl
	je	LBB25_53
## BB#51:                               ## %.lr.ph.i.i.i.prol.preheader
	movl	40(%esp), %edx          ## 4-byte Reload
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	52(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edx,4), %esi
	cmpl	$-3, %ebx
	movl	$-2, %edx
	cmovgl	%ebx, %edx
	leal	1(%edi,%edx), %ebx
	andl	$3, %ebx
	negl	%ebx
LBB25_52:                               ## %.lr.ph.i.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edi,4), %edx
	movl	%edx, (%esi,%edi,4)
	leal	-1(%edi), %edi
	incl	%ebx
	jne	LBB25_52
LBB25_53:                               ## %.lr.ph.i.i.i.preheader139.split
	cmpl	$3, %ecx
	movl	40(%esp), %esi          ## 4-byte Reload
	jb	LBB25_56
## BB#54:                               ## %.lr.ph.i.i.i.preheader139.split.split
	notl	%esi
	orl	$1056964608, %esi       ## imm = 0x3F000000
	movl	52(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%esi,4), %edx
LBB25_55:                               ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edi,4), %esi
	movl	%esi, (%edx,%edi,4)
	movl	-8(%eax,%edi,4), %esi
	movl	%esi, -4(%edx,%edi,4)
	movl	-12(%eax,%edi,4), %esi
	movl	%esi, -8(%edx,%edi,4)
	movl	-16(%eax,%edi,4), %esi
	movl	%esi, -12(%edx,%edi,4)
	leal	-4(%edi), %edi
	cmpl	$1, %edi
	jg	LBB25_55
LBB25_56:                               ## %gerepileuptoint.exit.i
	movl	44(%esp), %eax          ## 4-byte Reload
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	%eax, (%ebp)
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%ebp, (%eax)
	jmp	LBB25_73

	.align	4, 0x90
__F2xq_sqr:                             ## @_F2xq_sqr
## BB#0:
	pushl	%esi
	subl	$8, %esp
	movl	16(%esp), %esi
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	_F2x_sqr
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	addl	$8, %esp
	popl	%esi
	retl

	.align	4, 0x90
__F2xq_mul:                             ## @_F2xq_mul
## BB#0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	32(%esp), %esi
	movl	40(%esp), %edx
	movl	36(%esp), %edi
	leal	8(%edi), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%edi), %ebx
	andl	%eax, %ebx
	addl	$-2, %ebx
	andl	(%edx), %eax
	addl	$8, %edx
	addl	$-2, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_F2x_mulspec
	movl	4(%edi), %ecx
	movl	%ecx, 4(%eax)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI28_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_powers
	.align	4, 0x90
_F2xq_powers:                           ## @F2xq_powers
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L28$pb
L28$pb:
	popl	%eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	movl	84(%esp), %edx
	movl	%edx, 52(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L28$pb(%eax), %ebx
	movl	(%ebx), %ecx
	movl	$-2, %esi
	subl	%edx, %esi
	movl	L_bot$non_lazy_ptr-L28$pb(%eax), %edi
	movl	%edi, 44(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	subl	(%edi), %eax
	shrl	$2, %eax
	leal	2(%edx), %ebp
	movl	%esi, %edx
	cmpl	%ebp, %eax
	leal	(%ecx,%edx,4), %edi
	jae	LBB28_2
## BB#1:
	movl	$14, (%esp)
	movl	%ecx, %esi
	movl	%ebp, 48(%esp)          ## 4-byte Spill
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	%esi, %ecx
LBB28_2:                                ## %new_chunk.exit.i
	movl	88(%esp), %esi
	movl	%edi, (%ebx)
	cmpl	$16777216, %ebp         ## imm = 0x1000000
	jb	LBB28_4
## BB#3:
	movl	32(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L28$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%ecx, %esi
	movl	%ebp, 48(%esp)          ## 4-byte Spill
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	48(%esp), %ebp          ## 4-byte Reload
	movl	%esi, %ecx
	movl	88(%esp), %esi
LBB28_4:                                ## %cgetg.exit
	movl	%ebp, 48(%esp)          ## 4-byte Spill
	movl	%ebp, %eax
	orl	$570425344, %eax        ## imm = 0x22000000
	movl	%eax, (%edi)
	movl	%edi, 36(%esp)          ## 4-byte Spill
	movl	4(%esi), %esi
	movl	(%ebx), %edi
	movl	%edi, %eax
	movl	44(%esp), %ebp          ## 4-byte Reload
	subl	(%ebp), %eax
	cmpl	$11, %eax
	leal	-12(%edi), %ebp
	ja	LBB28_6
## BB#5:
	movl	$14, (%esp)
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	%edx, 56(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	40(%esp), %ecx          ## 4-byte Reload
LBB28_6:                                ## %pol1_F2x.exit
	movl	%ebp, (%ebx)
	movl	$738197507, -12(%edi)   ## imm = 0x2C000003
	movl	%esi, -8(%edi)
	movl	$1, -4(%edi)
	movl	%ebp, 4(%ecx,%edx,4)
	cmpl	$0, 84(%esp)
	je	LBB28_51
## BB#7:
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	80(%esp), %eax
	movl	(%eax), %edi
	movl	%edi, 24(%esp)          ## 4-byte Spill
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	(%ebx), %esi
	leal	(,%edi,4), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%esi, %eax
	movl	44(%esp), %ebp          ## 4-byte Reload
	subl	(%ebp), %eax
	shrl	$2, %eax
	cmpl	%edi, %eax
	jae	LBB28_9
## BB#8:
	movl	$14, (%esp)
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	%ecx, %ebp
	calll	_pari_err
	movl	%ebp, %ecx
	movl	56(%esp), %edx          ## 4-byte Reload
LBB28_9:                                ## %cgetg_copy.exit.i.i
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	movl	%ecx, (%ebx)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	movl	80(%esp), %ebx
	andl	(%ebx), %eax
	movl	%eax, (%ecx)
	cmpl	$2, %edi
	jb	LBB28_27
## BB#10:                               ## %.lr.ph.i.i.preheader
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	24(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %eax
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB28_11
## BB#12:                               ## %overflow.checked
	incl	%ecx
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	movl	%ecx, %ebx
	andl	$-8, %ebx
	je	LBB28_13
## BB#14:                               ## %vector.memcheck
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	%eax, %ebx
	notl	%ebx
	movl	80(%esp), %ecx
	leal	(%ecx,%ebx,4), %ebx
	movl	%ebx, 20(%esp)          ## 4-byte Spill
	leal	-4(%esi), %ebx
	cmpl	20(%esp), %ebx          ## 4-byte Folded Reload
	ja	LBB28_17
## BB#15:                               ## %vector.memcheck
	leal	-4(%ecx,%edx,4), %ebx
	addl	%edx, %eax
	notl	%eax
	leal	(%esi,%eax,4), %eax
	cmpl	%eax, %ebx
	ja	LBB28_17
## BB#16:
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	%ecx, %ebx
	movl	$-2, %eax
	movl	44(%esp), %ecx          ## 4-byte Reload
	xorl	%ebp, %ebp
	jmp	LBB28_20
LBB28_11:
	movl	56(%esp), %edx          ## 4-byte Reload
	jmp	LBB28_21
LBB28_13:
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	80(%esp), %ebx
	movl	$-2, %eax
	xorl	%ebp, %ebp
	jmp	LBB28_20
LBB28_17:                               ## %vector.body.preheader
	movl	%edi, %eax
	subl	16(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 20(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	leal	1(%eax,%edx), %ebp
	andl	$-8, %ebp
	movl	32(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI28_0-L28$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%ecx, %ebx
	movl	44(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB28_18:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movups	-12(%ebx,%eax,4), %xmm1
	movups	-28(%ebx,%eax,4), %xmm2
	subl	%edi, %eax
	movups	%xmm1, -12(%esi,%eax,4)
	movups	%xmm2, -28(%esi,%eax,4)
	addl	$-8, %edx
	addl	$-8, %ebp
	jne	LBB28_18
## BB#19:
	movl	20(%esp), %edi          ## 4-byte Reload
	movl	16(%esp), %ebp          ## 4-byte Reload
	movl	56(%esp), %edx          ## 4-byte Reload
	movl	$-2, %eax
LBB28_20:                               ## %middle.block
	cmpl	%ebp, %ecx
	je	LBB28_27
LBB28_21:                               ## %.lr.ph.i.i.preheader48
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	%edi, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %eax
	leal	(%edi,%eax), %ecx
	leal	1(%edi,%eax), %eax
	testb	$3, %al
	je	LBB28_24
## BB#22:                               ## %.lr.ph.i.i.prol.preheader
	movl	24(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%esi,%eax,4), %eax
	cmpl	$-3, %edx
	movl	%ebx, %ebp
	movl	$-2, %ebx
	cmovgl	%edx, %ebx
	leal	1(%edi,%ebx), %edx
	movl	%ebp, %ebx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB28_23:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebp
	movl	-4(%ebp,%edi,4), %ebx
	movl	%ebx, (%eax,%edi,4)
	movl	%ebp, %ebx
	leal	-1(%edi), %edi
	incl	%edx
	jne	LBB28_23
LBB28_24:                               ## %.lr.ph.i.i.preheader48.split
	cmpl	$3, %ecx
	movl	56(%esp), %edx          ## 4-byte Reload
	jb	LBB28_27
## BB#25:                               ## %.lr.ph.i.i.preheader48.split.split
	movl	24(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%esi,%eax,4), %eax
	.align	4, 0x90
LBB28_26:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebx,%edi,4), %ecx
	movl	%ecx, (%eax,%edi,4)
	movl	-8(%ebx,%edi,4), %ecx
	movl	%ecx, -4(%eax,%edi,4)
	movl	-12(%ebx,%edi,4), %ecx
	movl	%ecx, -8(%eax,%edi,4)
	movl	-16(%ebx,%edi,4), %ecx
	movl	%ecx, -12(%eax,%edi,4)
	leal	-4(%edi), %edi
	cmpl	$1, %edi
	jg	LBB28_26
LBB28_27:                               ## %vecsmall_copy.exit
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%eax,%edx,4)
	cmpl	$1, 84(%esp)
	je	LBB28_51
## BB#28:
	movl	%ebx, (%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%edi, 56(%esp)          ## 4-byte Spill
	calll	_F2x_sqr
	movl	88(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	movl	%eax, 12(%esi,%edi,4)
	movl	%esi, %ebp
	movl	(%ebx), %eax
	movl	%eax, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	$-2, %ecx
	cmpl	$2, %edx
	je	LBB28_34
## BB#29:
	movl	-4(%ebx,%edx,4), %esi
	movl	%esi, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %esi            ## imm = 0xFFFF
	cmovbel	%esi, %ecx
	movl	$12, %edi
	movl	$28, %esi
	cmoval	%edi, %esi
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB28_31
## BB#30:
	addl	$-8, %esi
	shrl	$8, %ecx
LBB28_31:
	shll	$5, %edx
	cmpl	$16, %ecx
	jb	LBB28_33
## BB#32:
	addl	$-4, %esi
	shrl	$4, %ecx
LBB28_33:
	addl	$2147483583, %edx       ## imm = 0x7FFFFFBF
	subl	%esi, %edx
	movl	32(%esp), %esi          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L28$pb(%esi,%ecx,4), %edx
	addl	%edx, %edx
	movl	%edx, %ecx
LBB28_34:                               ## %F2x_degree.exit
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	88(%esp), %esi
	andl	(%esi), %edx
	movl	$-1, %esi
	cmpl	$2, %edx
	je	LBB28_40
## BB#35:
	movl	88(%esp), %esi
	movl	-4(%esi,%edx,4), %edi
	movl	%edi, %esi
	shrl	$16, %esi
	cmpl	$65535, %edi            ## imm = 0xFFFF
	cmovbel	%edi, %esi
	movl	$12, %ebx
	movl	$28, %edi
	cmoval	%ebx, %edi
	cmpl	$256, %esi              ## imm = 0x100
	jb	LBB28_37
## BB#36:
	addl	$-8, %edi
	shrl	$8, %esi
LBB28_37:
	shll	$5, %edx
	cmpl	$16, %esi
	jb	LBB28_39
## BB#38:
	addl	$-4, %edi
	shrl	$4, %esi
LBB28_39:
	addl	$-65, %edx
	subl	%edi, %edx
	movl	32(%esp), %edi          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L28$pb(%edi,%esi,4), %edx
	movl	%edx, %esi
LBB28_40:                               ## %F2x_degree.exit7
	cmpl	%esi, %ecx
	jge	LBB28_41
## BB#45:                               ## %.preheader
	cmpl	$5, 48(%esp)            ## 4-byte Folded Reload
	movl	%ebp, %ebx
	jl	LBB28_51
## BB#46:                               ## %.lr.ph
	movl	80(%esp), %edx
	leal	8(%edx), %edx
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	$1, %esi
	subl	84(%esp), %esi
	movl	$16777215, %edi         ## imm = 0xFFFFFF
	jmp	LBB28_47
	.align	4, 0x90
LBB28_48:                               ## %._crit_edge
                                        ##   in Loop: Header=BB28_47 Depth=1
	movl	80(%esp), %eax
	movl	(%eax), %eax
	incl	%esi
LBB28_47:                               ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%esi,4), %ebp
	leal	8(%ebp), %ecx
	movl	(%ebp), %edx
	andl	%edi, %edx
	addl	$-2, %edx
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	addl	$-2, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	56(%esp), %edx          ## 4-byte Reload
	calll	_F2x_mulspec
	movl	4(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	88(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	movl	%eax, 4(%ebx,%esi,4)
	cmpl	$-2, %esi
	jne	LBB28_48
	jmp	LBB28_51
LBB28_41:                               ## %.preheader18
	cmpl	$5, 48(%esp)            ## 4-byte Folded Reload
	movl	%ebp, %esi
	movl	56(%esp), %edi          ## 4-byte Reload
	jl	LBB28_51
## BB#42:                               ## %.lr.ph22
	leal	-1(%edi), %eax
	movl	%eax, 48(%esp)          ## 4-byte Spill
	movl	80(%esp), %eax
	leal	8(%eax), %eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	incl	52(%esp)                ## 4-byte Folded Spill
	movl	$4, %ebx
	.align	4, 0x90
LBB28_43:                               ## =>This Inner Loop Header: Depth=1
	testb	$1, %bl
	jne	LBB28_44
## BB#49:                               ##   in Loop: Header=BB28_43 Depth=1
	movl	48(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ebx), %eax
	movl	(%esi,%eax,4), %ebp
	leal	8(%ebp), %ecx
	movl	(%ebp), %eax
	movl	$16777215, %edi         ## imm = 0xFFFFFF
	andl	%edi, %eax
	addl	$-2, %eax
	movl	80(%esp), %edx
	movl	(%edx), %edx
	andl	%edi, %edx
	addl	$-2, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	44(%esp), %edx          ## 4-byte Reload
	calll	_F2x_mulspec
	movl	4(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	88(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	movl	56(%esp), %edi          ## 4-byte Reload
	leal	1(%ebx), %ebp
	jmp	LBB28_50
	.align	4, 0x90
LBB28_44:                               ##   in Loop: Header=BB28_43 Depth=1
	leal	1(%ebx), %ebp
	movl	%ebp, %eax
	shrl	%eax
	addl	%edi, %eax
	movl	(%esi,%eax,4), %eax
	movl	%eax, (%esp)
	calll	_F2x_sqr
	movl	88(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
LBB28_50:                               ##   in Loop: Header=BB28_43 Depth=1
	leal	(%ebx,%edi), %ecx
	movl	%eax, (%esi,%ecx,4)
	cmpl	52(%esp), %ebx          ## 4-byte Folded Reload
	movl	%ebp, %ebx
	jne	LBB28_43
LBB28_51:                               ## %.loopexit
	movl	36(%esp), %eax          ## 4-byte Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2xq_matrix_pow
	.align	4, 0x90
_F2xq_matrix_pow:                       ## @F2xq_matrix_pow
## BB#0:
	pushl	%esi
	subl	$24, %esp
	movl	36(%esp), %esi
	movl	32(%esp), %eax
	movl	44(%esp), %ecx
	movl	40(%esp), %edx
	decl	%edx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2xq_powers
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2xV_to_F2m
	addl	$24, %esp
	popl	%esi
	retl

	.globl	_F2xV_to_F2m
	.align	4, 0x90
_F2xV_to_F2m:                           ## @F2xV_to_F2m
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	calll	L30$pb
L30$pb:
	popl	%edi
	movl	112(%esp), %eax
	movl	$16777215, %esi         ## imm = 0xFFFFFF
	andl	(%eax), %esi
	movl	L_avma$non_lazy_ptr-L30$pb(%edi), %ebx
	movl	(%ebx), %ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %eax
	movl	%ecx, %ebp
	subl	%eax, %ebp
	movl	L_bot$non_lazy_ptr-L30$pb(%edi), %edx
	movl	%edx, 68(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	subl	(%edx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB30_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB30_2:                                ## %cgetg.exit
	movl	%ebx, 48(%esp)          ## 4-byte Spill
	movl	%ebp, (%ebx)
	movl	%esi, 76(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	orl	$637534208, %eax        ## imm = 0x26000000
	movl	%eax, (%ebp)
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	cmpl	$2, %esi
	movl	%ebx, %esi
	jb	LBB30_60
## BB#3:                                ## %.lr.ph
	movl	116(%esp), %eax
	leal	95(%eax), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	movl	%ecx, %edx
	negl	%edx
	movl	%edx, 64(%esp)          ## 4-byte Spill
	movl	%ecx, %edx
	orl	$738197504, %edx        ## imm = 0x2C000000
	movl	%edx, 60(%esp)          ## 4-byte Spill
	movl	$1, %edx
	subl	%ecx, %edx
	movl	%edx, 56(%esp)          ## 4-byte Spill
	movl	$2, %edx
	subl	%ecx, %edx
	movl	%edx, 36(%esp)          ## 4-byte Spill
	cmpl	$536870911, %eax        ## imm = 0x1FFFFFFF
	movl	%ecx, %eax
	notl	%eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	$1, %ebx
	movl	$12, %eax
	jbe	LBB30_4
## BB#11:                               ## %.lr.ph.split.us.preheader
	subl	%ecx, %eax
	movl	%eax, 12(%esp)          ## 4-byte Spill
	movl	$3, %eax
	subl	%ecx, %eax
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	%ecx, 88(%esp)          ## 4-byte Spill
	movl	$1, %ebx
	leal	L_.str4-L30$pb(%edi), %eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	.align	4, 0x90
LBB30_12:                               ## %.lr.ph.split.us
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB30_21 Depth 2
                                        ##     Child Loop BB30_25 Depth 2
                                        ##     Child Loop BB30_31 Depth 2
                                        ##     Child Loop BB30_34 Depth 2
	movl	%ebx, 52(%esp)          ## 4-byte Spill
	movl	112(%esp), %eax
	movl	(%eax,%ebx,4), %ebx
	movl	(%ebx), %edi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	(%esi), %edx
	movl	%edx, 84(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	movl	68(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	88(%esp), %eax          ## 4-byte Folded Reload
	movl	64(%esp), %eax          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	jae	LBB30_14
## BB#13:                               ##   in Loop: Header=BB30_12 Depth=1
	movl	$14, (%esp)
	movl	%eax, %ebp
	calll	_pari_err
	movl	%ebp, %eax
LBB30_14:                               ## %cgetg.exit.i.us
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	%eax, 80(%esp)          ## 4-byte Spill
	movl	%eax, (%esi)
	movl	%eax, %ebp
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebp)
	movl	116(%esp), %eax
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	84(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	movl	$2, %eax
	cmpl	$3, %edi
	jb	LBB30_36
## BB#15:                               ## %.lr.ph5.i.us.preheader
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	$3, %eax
	cmoval	%edi, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	je	LBB30_28
## BB#16:                               ## %overflow.checked32
                                        ##   in Loop: Header=BB30_12 Depth=1
	leal	-2(%eax), %ecx
	movl	%eax, 40(%esp)          ## 4-byte Spill
	andl	$-4, %ecx
	orl	$2, %ecx
	cmpl	$3, %edi
	movl	$3, %eax
	cmoval	%edi, %eax
	cmpl	$2, %ecx
	movl	$2, %edx
	je	LBB30_27
## BB#17:                               ## %vector.memcheck48
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	leal	-4(%ebx,%eax,4), %ebp
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	84(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	cmpl	%ebp, %ecx
	ja	LBB30_19
## BB#18:                               ## %vector.memcheck48
                                        ##   in Loop: Header=BB30_12 Depth=1
	leal	8(%ebx), %ebp
	addl	28(%esp), %eax          ## 4-byte Folded Reload
	movl	84(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %eax
	cmpl	%eax, %ebp
	jbe	LBB30_27
LBB30_19:                               ## %vector.body23.preheader
                                        ##   in Loop: Header=BB30_12 Depth=1
	cmpl	$3, %edi
	movl	$3, %edx
	cmoval	%edi, %edx
	addl	$-2, %edx
	andl	$-4, %edx
	addl	$-4, %edx
	shrl	$2, %edx
	leal	1(%edx), %eax
	movl	$2, %esi
	testb	$3, %al
	je	LBB30_23
## BB#20:                               ## %vector.body23.prol.preheader
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	%edx, 16(%esp)          ## 4-byte Spill
	cmpl	$3, %edi
	movl	$3, %eax
	cmoval	%edi, %eax
	addl	$-2, %eax
	andl	$12, %eax
	addl	$-4, %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negl	%eax
	xorl	%edx, %edx
	.align	4, 0x90
LBB30_21:                               ## %vector.body23.prol
                                        ##   Parent Loop BB30_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edx, %esi
	movups	8(%ebx,%esi,4), %xmm0
	movups	%xmm0, (%ecx,%esi,4)
	leal	4(%esi), %edx
	incl	%eax
	jne	LBB30_21
## BB#22:                               ##   in Loop: Header=BB30_12 Depth=1
	addl	$6, %esi
	movl	16(%esp), %edx          ## 4-byte Reload
LBB30_23:                               ## %vector.body23.preheader.split
                                        ##   in Loop: Header=BB30_12 Depth=1
	cmpl	$3, %edx
	jb	LBB30_26
## BB#24:                               ## %vector.body23.preheader.split.split
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	12(%esp), %eax          ## 4-byte Reload
	movl	84(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	leal	(%eax,%esi,4), %ecx
	cmpl	$3, %edi
	movl	$3, %eax
	cmoval	%edi, %eax
	addl	$-2, %eax
	andl	$-4, %eax
	orl	$2, %eax
	subl	%esi, %eax
	leal	48(%ebx,%esi,4), %edx
	.align	4, 0x90
LBB30_25:                               ## %vector.body23
                                        ##   Parent Loop BB30_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	-48(%edx), %xmm0
	movups	%xmm0, -48(%ecx)
	movups	-32(%edx), %xmm0
	movups	%xmm0, -32(%ecx)
	movups	-16(%edx), %xmm0
	movups	%xmm0, -16(%ecx)
	movups	(%edx), %xmm0
	movups	%xmm0, (%ecx)
	addl	$64, %ecx
	addl	$64, %edx
	addl	$-16, %eax
	jne	LBB30_25
LBB30_26:                               ##   in Loop: Header=BB30_12 Depth=1
	movl	20(%esp), %edx          ## 4-byte Reload
LBB30_27:                               ## %middle.block24
                                        ##   in Loop: Header=BB30_12 Depth=1
	cmpl	%edx, 40(%esp)          ## 4-byte Folded Reload
	movl	48(%esp), %esi          ## 4-byte Reload
	je	LBB30_35
LBB30_28:                               ## %.lr.ph5.i.us.preheader63
                                        ##   in Loop: Header=BB30_12 Depth=1
	leal	1(%edx), %ecx
	cmpl	%edi, %ecx
	movl	%edi, %ebp
	cmovgel	%ecx, %ebp
	movl	%ebp, %eax
	subl	%edx, %eax
	decl	%ebp
	subl	%edx, %ebp
	testb	$3, %al
	je	LBB30_29
## BB#30:                               ## %.lr.ph5.i.us.prol.preheader
                                        ##   in Loop: Header=BB30_12 Depth=1
	cmpl	%edi, %ecx
	cmovll	%edi, %ecx
	subl	%edx, %ecx
	andl	$3, %ecx
	negl	%ecx
	movl	80(%esp), %eax          ## 4-byte Reload
	.align	4, 0x90
LBB30_31:                               ## %.lr.ph5.i.us.prol
                                        ##   Parent Loop BB30_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%ebx,%edx,4), %esi
	movl	%esi, (%eax,%edx,4)
	incl	%edx
	incl	%ecx
	jne	LBB30_31
	jmp	LBB30_32
LBB30_29:                               ##   in Loop: Header=BB30_12 Depth=1
	movl	80(%esp), %eax          ## 4-byte Reload
LBB30_32:                               ## %.lr.ph5.i.us.preheader63.split
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	%eax, 80(%esp)          ## 4-byte Spill
	cmpl	$3, %ebp
	movl	48(%esp), %esi          ## 4-byte Reload
	jb	LBB30_35
## BB#33:                               ## %.lr.ph5.i.us.preheader63.split.split
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	84(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	.align	4, 0x90
LBB30_34:                               ## %.lr.ph5.i.us
                                        ##   Parent Loop BB30_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%ebx,%edx,4), %ecx
	movl	%ecx, -12(%eax,%edx,4)
	movl	4(%ebx,%edx,4), %ecx
	movl	%ecx, -8(%eax,%edx,4)
	movl	8(%ebx,%edx,4), %ecx
	movl	%ecx, -4(%eax,%edx,4)
	movl	12(%ebx,%edx,4), %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$4, %edx
	cmpl	%edi, %edx
	jl	LBB30_34
LBB30_35:                               ## %..preheader_crit_edge.i.us
                                        ##   in Loop: Header=BB30_12 Depth=1
	cmpl	$3, %edi
	movl	$3, %eax
	cmovbel	%eax, %edi
	movl	%edi, %eax
LBB30_36:                               ## %.preheader.i.us
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	%eax, %ecx
	movl	88(%esp), %edx          ## 4-byte Reload
	subl	%edx, %ecx
	jge	LBB30_38
## BB#37:                               ## %.lr.ph.i.us
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	84(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %ecx
	subl	%eax, %edx
	shll	$2, %edx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	calll	___bzero
LBB30_38:                               ## %F2x_to_F2v.exit.us
                                        ##   in Loop: Header=BB30_12 Depth=1
	movl	52(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, %eax
	movl	76(%esp), %ecx          ## 4-byte Reload
	subl	%ecx, %eax
	movl	72(%esp), %edx          ## 4-byte Reload
	movl	80(%esp), %edi          ## 4-byte Reload
	movl	%edi, (%edx,%eax,4)
	incl	%ebx
	cmpl	%ecx, %ebx
	jl	LBB30_12
	jmp	LBB30_60
LBB30_4:                                ## %.lr.ph..lr.ph.split_crit_edge.preheader
	subl	%ecx, %eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	$3, %eax
	subl	%ecx, %eax
	movl	%eax, 40(%esp)          ## 4-byte Spill
	movl	%ecx, 88(%esp)          ## 4-byte Spill
	.align	4, 0x90
LBB30_5:                                ## %.lr.ph..lr.ph.split_crit_edge
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB30_49 Depth 2
                                        ##     Child Loop BB30_53 Depth 2
                                        ##     Child Loop BB30_40 Depth 2
                                        ##     Child Loop BB30_43 Depth 2
	movl	%ebx, 52(%esp)          ## 4-byte Spill
	movl	112(%esp), %eax
	movl	(%eax,%ebx,4), %edi
	movl	(%edi), %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	(%esi), %edx
	movl	%edx, 84(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	movl	68(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	88(%esp), %eax          ## 4-byte Folded Reload
	movl	64(%esp), %eax          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	jae	LBB30_7
## BB#6:                                ##   in Loop: Header=BB30_5 Depth=1
	movl	$14, (%esp)
	movl	%eax, %ebp
	calll	_pari_err
	movl	%ebp, %eax
LBB30_7:                                ## %cgetg.exit.i
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	%eax, 80(%esp)          ## 4-byte Spill
	movl	%eax, (%esi)
	movl	%eax, %ecx
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	116(%esp), %eax
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	84(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ecx,4)
	movl	$2, %eax
	cmpl	$3, %ebx
	jb	LBB30_57
## BB#8:                                ## %.lr.ph5.i.preheader
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	$3, %eax
	cmoval	%ebx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	je	LBB30_9
## BB#44:                               ## %overflow.checked
                                        ##   in Loop: Header=BB30_5 Depth=1
	leal	-2(%eax), %ecx
	movl	%eax, 44(%esp)          ## 4-byte Spill
	andl	$-4, %ecx
	orl	$2, %ecx
	cmpl	$3, %ebx
	movl	$3, %eax
	cmoval	%ebx, %eax
	cmpl	$2, %ecx
	movl	$2, %edx
	je	LBB30_55
## BB#45:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	leal	-4(%edi,%eax,4), %ebp
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	84(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	cmpl	%ebp, %ecx
	ja	LBB30_47
## BB#46:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB30_5 Depth=1
	leal	8(%edi), %ebp
	addl	28(%esp), %eax          ## 4-byte Folded Reload
	movl	84(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %eax
	cmpl	%eax, %ebp
	jbe	LBB30_55
LBB30_47:                               ## %vector.body.preheader
                                        ##   in Loop: Header=BB30_5 Depth=1
	cmpl	$3, %ebx
	movl	$3, %edx
	cmoval	%ebx, %edx
	addl	$-2, %edx
	andl	$-4, %edx
	addl	$-4, %edx
	shrl	$2, %edx
	leal	1(%edx), %eax
	movl	$2, %esi
	testb	$3, %al
	je	LBB30_51
## BB#48:                               ## %vector.body.prol.preheader
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	%edx, 20(%esp)          ## 4-byte Spill
	cmpl	$3, %ebx
	movl	$3, %eax
	cmoval	%ebx, %eax
	addl	$-2, %eax
	andl	$12, %eax
	addl	$-4, %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negl	%eax
	xorl	%edx, %edx
	.align	4, 0x90
LBB30_49:                               ## %vector.body.prol
                                        ##   Parent Loop BB30_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edx, %esi
	movups	8(%edi,%esi,4), %xmm0
	movups	%xmm0, (%ecx,%esi,4)
	leal	4(%esi), %edx
	incl	%eax
	jne	LBB30_49
## BB#50:                               ##   in Loop: Header=BB30_5 Depth=1
	addl	$6, %esi
	movl	20(%esp), %edx          ## 4-byte Reload
LBB30_51:                               ## %vector.body.preheader.split
                                        ##   in Loop: Header=BB30_5 Depth=1
	cmpl	$3, %edx
	jb	LBB30_54
## BB#52:                               ## %vector.body.preheader.split.split
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	84(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	leal	(%eax,%esi,4), %ecx
	cmpl	$3, %ebx
	movl	$3, %eax
	cmoval	%ebx, %eax
	addl	$-2, %eax
	andl	$-4, %eax
	orl	$2, %eax
	subl	%esi, %eax
	leal	48(%edi,%esi,4), %edx
	.align	4, 0x90
LBB30_53:                               ## %vector.body
                                        ##   Parent Loop BB30_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	-48(%edx), %xmm0
	movups	%xmm0, -48(%ecx)
	movups	-32(%edx), %xmm0
	movups	%xmm0, -32(%ecx)
	movups	-16(%edx), %xmm0
	movups	%xmm0, -16(%ecx)
	movups	(%edx), %xmm0
	movups	%xmm0, (%ecx)
	addl	$64, %ecx
	addl	$64, %edx
	addl	$-16, %eax
	jne	LBB30_53
LBB30_54:                               ##   in Loop: Header=BB30_5 Depth=1
	movl	24(%esp), %edx          ## 4-byte Reload
LBB30_55:                               ## %middle.block
                                        ##   in Loop: Header=BB30_5 Depth=1
	cmpl	%edx, 44(%esp)          ## 4-byte Folded Reload
	movl	48(%esp), %esi          ## 4-byte Reload
	je	LBB30_56
LBB30_9:                                ## %.lr.ph5.i.preheader64
                                        ##   in Loop: Header=BB30_5 Depth=1
	leal	1(%edx), %ecx
	cmpl	%ebx, %ecx
	movl	%ebx, %ebp
	cmovgel	%ecx, %ebp
	movl	%ebp, %eax
	subl	%edx, %eax
	decl	%ebp
	subl	%edx, %ebp
	testb	$3, %al
	je	LBB30_10
## BB#39:                               ## %.lr.ph5.i.prol.preheader
                                        ##   in Loop: Header=BB30_5 Depth=1
	cmpl	%ebx, %ecx
	cmovll	%ebx, %ecx
	subl	%edx, %ecx
	andl	$3, %ecx
	negl	%ecx
	movl	80(%esp), %eax          ## 4-byte Reload
	.align	4, 0x90
LBB30_40:                               ## %.lr.ph5.i.prol
                                        ##   Parent Loop BB30_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%edi,%edx,4), %esi
	movl	%esi, (%eax,%edx,4)
	incl	%edx
	incl	%ecx
	jne	LBB30_40
	jmp	LBB30_41
LBB30_10:                               ##   in Loop: Header=BB30_5 Depth=1
	movl	80(%esp), %eax          ## 4-byte Reload
LBB30_41:                               ## %.lr.ph5.i.preheader64.split
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	%eax, 80(%esp)          ## 4-byte Spill
	cmpl	$3, %ebp
	movl	48(%esp), %esi          ## 4-byte Reload
	jb	LBB30_56
## BB#42:                               ## %.lr.ph5.i.preheader64.split.split
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	84(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	.align	4, 0x90
LBB30_43:                               ## %.lr.ph5.i
                                        ##   Parent Loop BB30_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%edi,%edx,4), %ecx
	movl	%ecx, -12(%eax,%edx,4)
	movl	4(%edi,%edx,4), %ecx
	movl	%ecx, -8(%eax,%edx,4)
	movl	8(%edi,%edx,4), %ecx
	movl	%ecx, -4(%eax,%edx,4)
	movl	12(%edi,%edx,4), %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$4, %edx
	cmpl	%ebx, %edx
	jl	LBB30_43
LBB30_56:                               ## %..preheader_crit_edge.i
                                        ##   in Loop: Header=BB30_5 Depth=1
	cmpl	$3, %ebx
	movl	$3, %eax
	cmovbel	%eax, %ebx
	movl	%ebx, %eax
LBB30_57:                               ## %.preheader.i
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	%eax, %ecx
	movl	88(%esp), %edx          ## 4-byte Reload
	subl	%edx, %ecx
	jge	LBB30_59
## BB#58:                               ## %.lr.ph.i
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	84(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %ecx
	subl	%eax, %edx
	shll	$2, %edx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	calll	___bzero
LBB30_59:                               ## %F2x_to_F2v.exit
                                        ##   in Loop: Header=BB30_5 Depth=1
	movl	52(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, %eax
	movl	76(%esp), %ecx          ## 4-byte Reload
	subl	%ecx, %eax
	movl	72(%esp), %edx          ## 4-byte Reload
	movl	80(%esp), %edi          ## 4-byte Reload
	movl	%edi, (%edx,%eax,4)
	incl	%ebx
	cmpl	%ecx, %ebx
	jl	LBB30_5
LBB30_60:                               ## %._crit_edge
	movl	32(%esp), %eax          ## 4-byte Reload
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI31_0:
	.space	16,85
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_trace
	.align	4, 0x90
_F2xq_trace:                            ## @F2xq_trace
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L31$pb
L31$pb:
	popl	%ecx
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	movl	68(%esp), %edi
	movl	L_avma$non_lazy_ptr-L31$pb(%ecx), %eax
	movl	%eax, 40(%esp)          ## 4-byte Spill
	movl	(%eax), %ebx
	movl	(%edi), %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	leal	(,%esi,4), %eax
	movl	%ebx, %ebp
	subl	%eax, %ebp
	movl	L_bot$non_lazy_ptr-L31$pb(%ecx), %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	%ebx, %eax
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB31_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB31_2:                                ## %cgetg.exit.i
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	movl	40(%esp), %ecx          ## 4-byte Reload
	movl	%ebp, (%ecx)
	movl	%esi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebp)
	movl	%ecx, %ebp
	movl	4(%edi), %eax
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	%eax, (%ebx,%ecx,4)
	movl	%ebx, 28(%esp)          ## 4-byte Spill
	movl	64(%esp), %ebx
	cmpl	$3, %esi
	jb	LBB31_17
## BB#3:                                ## %.lr.ph.i.preheader
	movl	$3, %eax
	cmoval	%esi, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	je	LBB31_11
## BB#4:                                ## %overflow.checked
	leal	-2(%eax), %ecx
	andl	$-8, %ecx
	orl	$2, %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	leal	-1(%esi), %ebx
	cmpl	$3, %esi
	movl	$2, %edx
	cmovbel	%edx, %ebx
	cmpl	$2, %ecx
	je	LBB31_10
## BB#5:                                ## %vector.memcheck
	leal	(%edi,%ebx,4), %ecx
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	movl	$2, %edx
	movl	$2, %ebp
	subl	%esi, %ebp
	movl	28(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebp,4), %ebp
	cmpl	16(%esp), %ebp          ## 4-byte Folded Reload
	ja	LBB31_7
## BB#6:                                ## %vector.memcheck
	leal	8(%edi), %ecx
	subl	%esi, %ebx
	movl	28(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%ebx,4), %ebx
	cmpl	%ebx, %ecx
	jbe	LBB31_10
LBB31_7:                                ## %vector.body.preheader
	movl	$6, %edx
	subl	%esi, %edx
	movl	28(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edx,4), %edx
	leal	24(%edi), %ebx
	cmpl	$3, %esi
	movl	$3, %ebp
	cmoval	%esi, %ebp
	addl	$-2, %ebp
	andl	$-8, %ebp
	movl	20(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI31_0-L31$pb(%ecx), %xmm0 ## xmm0 = [1431655765,1431655765,1431655765,1431655765]
	.align	4, 0x90
LBB31_8:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movdqu	-16(%ebx), %xmm1
	movdqu	(%ebx), %xmm2
	psrld	$1, %xmm1
	psrld	$1, %xmm2
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	movdqu	%xmm1, -16(%edx)
	movdqu	%xmm2, (%edx)
	addl	$32, %edx
	addl	$32, %ebx
	addl	$-8, %ebp
	jne	LBB31_8
## BB#9:
	movl	24(%esp), %edx          ## 4-byte Reload
LBB31_10:                               ## %middle.block
	cmpl	%edx, %eax
	movl	40(%esp), %ebp          ## 4-byte Reload
	movl	64(%esp), %ebx
	je	LBB31_17
LBB31_11:                               ## %.lr.ph.i.preheader18
	leal	1(%edx), %eax
	cmpl	%esi, %eax
	movl	%esi, %ecx
	cmovgel	%eax, %ecx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	decl	%ecx
	subl	%edx, %ecx
	testb	$1, %bl
	je	LBB31_12
## BB#13:                               ## %.lr.ph.i.prol
	movl	(%edi,%edx,4), %ebx
	shrl	%ebx
	andl	$1431655765, %ebx       ## imm = 0x55555555
	subl	%esi, %edx
	movl	28(%esp), %edi          ## 4-byte Reload
	movl	%ebx, (%edi,%edx,4)
	jmp	LBB31_14
LBB31_12:
	movl	%edx, %eax
LBB31_14:                               ## %.lr.ph.i.preheader18.split
	movl	64(%esp), %ebx
	testl	%ecx, %ecx
	movl	68(%esp), %edi
	je	LBB31_17
## BB#15:                               ## %.lr.ph.i.preheader18.split.split
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	28(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB31_16:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%eax,4), %edx
	shrl	%edx
	andl	$1431655765, %edx       ## imm = 0x55555555
	movl	%edx, -4(%ecx,%eax,4)
	movl	4(%edi,%eax,4), %edx
	shrl	%edx
	andl	$1431655765, %edx       ## imm = 0x55555555
	movl	%edx, (%ecx,%eax,4)
	addl	$2, %eax
	cmpl	%esi, %eax
	jl	LBB31_16
LBB31_17:                               ## %F2x_deriv.exit
	movl	%esi, 4(%esp)
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	leal	8(%ebx), %ecx
	movl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	(%ebx), %edi
	andl	%esi, %edi
	addl	$-2, %edi
	andl	(%eax), %esi
	leal	8(%eax), %edx
	addl	$-2, %esi
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2x_mulspec
	movl	%eax, %esi
	movl	4(%ebx), %eax
	movl	%eax, 4(%esi)
	movl	(%esi), %edi
	movl	%edi, %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	(%ebp), %ebp
	movl	%ebp, %eax
	movl	36(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	leal	1(%ebx), %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	orl	$-16777216, %edi        ## imm = 0xFFFFFFFFFF000000
	xorl	$16777215, %edi         ## imm = 0xFFFFFF
	shrl	$2, %eax
	cmpl	%ecx, %eax
	leal	(%ebp,%edi,4), %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	jae	LBB31_19
## BB#18:
	movl	$14, (%esp)
	calll	_pari_err
LBB31_19:                               ## %new_chunk.exit.i.i
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	cmpl	$16777216, 36(%esp)     ## 4-byte Folded Reload
                                        ## imm = 0x1000000
	jb	LBB31_21
## BB#20:
	movl	20(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L31$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB31_21:                               ## %cgetg.exit.i1
	movl	36(%esp), %eax          ## 4-byte Reload
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%ebp, 24(%esp)          ## 4-byte Spill
	movl	%eax, (%ebp,%edi,4)
	movl	$0, 8(%ebp,%edi,4)
	movl	$2, %eax
	cmpl	$3, %ebx
	movl	$0, %ecx
	movl	40(%esp), %ebp          ## 4-byte Reload
	jb	LBB31_29
## BB#22:                               ## %.lr.ph.i2.preheader
	cmpl	$2, %ebx
	movl	$3, %eax
	movl	$3, %edx
	cmovgl	%ebx, %edx
	leal	-2(%edx), %ecx
	addl	$-3, %edx
	testb	$1, %cl
	je	LBB31_23
## BB#24:                               ## %.lr.ph.i2.prol
	movl	8(%esi), %ecx
	addl	%ecx, %ecx
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	%ecx, 8(%ebp,%edi,4)
	movl	8(%esi), %ecx
	shrl	$31, %ecx
	jmp	LBB31_25
LBB31_23:
	movl	$2, %eax
	xorl	%ecx, %ecx
LBB31_25:                               ## %.lr.ph.i2.preheader.split
	testl	%edx, %edx
	je	LBB31_28
## BB#26:                               ## %.lr.ph.i2.preheader.split.split
	movl	24(%esp), %edx          ## 4-byte Reload
	leal	4(%edx,%edi,4), %edx
	.align	4, 0x90
LBB31_27:                               ## %.lr.ph.i2
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%esi,%eax,4), %ebp
	addl	%ebp, %ebp
	orl	%ecx, %ebp
	movl	%ebp, -4(%edx,%eax,4)
	movl	(%esi,%eax,4), %ecx
	movl	4(%esi,%eax,4), %ebp
	shldl	$1, %ecx, %ebp
	movl	%ebp, (%edx,%eax,4)
	movl	4(%esi,%eax,4), %ecx
	shrl	$31, %ecx
	addl	$2, %eax
	cmpl	%ebx, %eax
	jl	LBB31_27
LBB31_28:                               ## %._crit_edge.i
	cmpl	$3, %ebx
	movl	$3, %eax
	cmoval	%ebx, %eax
	movl	40(%esp), %ebp          ## 4-byte Reload
LBB31_29:                               ## %F2x_shift.exit
	addl	%edi, %eax
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%ecx, (%edx,%eax,4)
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	movl	68(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	_F2x_divrem
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	cmpl	$2, %ecx
	movl	$0, %ecx
	je	LBB31_31
## BB#30:
	movl	8(%eax), %ecx
	andl	$1, %ecx
LBB31_31:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebp)
	movl	%ecx, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI32_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_conjvec
	.align	4, 0x90
_F2xq_conjvec:                          ## @F2xq_conjvec
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L32$pb
L32$pb:
	popl	%esi
	movl	68(%esp), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ecx), %eax
	movl	$-1, %edx
	cmpl	$2, %eax
	je	LBB32_6
## BB#1:
	movl	%esi, %edi
	movl	-4(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %esi
	movl	$28, %edx
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB32_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB32_3:
	movl	%edi, %esi
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB32_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB32_5:
	addl	$-65, %eax
	subl	%edx, %eax
	subl	_F2x_degree_lg.__bfffo_tabshi-L32$pb(%esi,%ecx,4), %eax
	movl	%eax, %edx
LBB32_6:                                ## %F2x_degree.exit
	movl	%esi, 12(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L32$pb(%esi), %ebp
	movl	(%ebp), %ebx
	leal	(,%edx,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	L_bot$non_lazy_ptr-L32$pb(%esi), %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	movl	%ebx, %eax
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%edx, %eax
	jae	LBB32_8
## BB#7:
	movl	$14, (%esp)
	movl	%edx, %esi
	calll	_pari_err
	movl	%esi, %edx
LBB32_8:                                ## %new_chunk.exit.i
	movl	64(%esp), %esi
	movl	%edi, (%ebp)
	cmpl	$16777216, %edx         ## imm = 0x1000000
	jb	LBB32_10
## BB#9:
	movl	12(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L32$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%edx, 40(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	40(%esp), %edx          ## 4-byte Reload
LBB32_10:                               ## %cgetg.exit
	movl	%edx, %eax
	orl	$603979776, %eax        ## imm = 0x24000000
	movl	%eax, (%edi)
	movl	%edi, 32(%esp)          ## 4-byte Spill
	movl	(%esi), %edi
	movl	%edi, 20(%esp)          ## 4-byte Spill
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	%ebp, 24(%esp)          ## 4-byte Spill
	movl	(%ebp), %ebp
	movl	%ebp, 16(%esp)          ## 4-byte Spill
	leal	(,%edi,4), %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ebp, %eax
	movl	28(%esp), %ebp          ## 4-byte Reload
	subl	(%ebp), %eax
	shrl	$2, %eax
	cmpl	%edi, %eax
	jae	LBB32_12
## BB#11:
	movl	$14, (%esp)
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	40(%esp), %edx          ## 4-byte Reload
LBB32_12:                               ## %cgetg_copy.exit.i.i
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%esi), %eax
	movl	%eax, (%ecx)
	cmpl	$2, %edi
	jb	LBB32_29
## BB#13:                               ## %.lr.ph.i.i.preheader
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	20(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %eax
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB32_14
## BB#15:                               ## %overflow.checked
	incl	%ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	%ecx, %eax
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	andl	$-8, %eax
	je	LBB32_16
## BB#17:                               ## %vector.memcheck
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	notl	%eax
	leal	(%esi,%eax,4), %eax
	movl	%eax, 8(%esp)           ## 4-byte Spill
	movl	16(%esp), %eax          ## 4-byte Reload
	leal	-4(%eax), %eax
	cmpl	8(%esp), %eax           ## 4-byte Folded Reload
	ja	LBB32_19
## BB#18:                               ## %vector.memcheck
	leal	-4(%esi,%edx,4), %eax
	movl	%eax, 8(%esp)           ## 4-byte Spill
	addl	%edx, %ecx
	notl	%ecx
	movl	16(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ecx,4), %ecx
	cmpl	%ecx, 8(%esp)           ## 4-byte Folded Reload
	ja	LBB32_19
LBB32_16:
	movl	$-2, %eax
	xorl	%ecx, %ecx
	jmp	LBB32_22
LBB32_14:
	movl	40(%esp), %edx          ## 4-byte Reload
	jmp	LBB32_23
LBB32_19:                               ## %vector.body.preheader
	movl	%edi, %eax
	subl	24(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 8(%esp)           ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	leal	1(%eax,%edx), %ebp
	andl	$-8, %ebp
	movl	12(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI32_0-L32$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	16(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB32_20:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movups	-12(%esi,%eax,4), %xmm1
	movups	-28(%esi,%eax,4), %xmm2
	subl	%edi, %eax
	movups	%xmm1, -12(%ecx,%eax,4)
	movups	%xmm2, -28(%ecx,%eax,4)
	addl	$-8, %edx
	addl	$-8, %ebp
	jne	LBB32_20
## BB#21:
	movl	8(%esp), %edi           ## 4-byte Reload
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %eax
LBB32_22:                               ## %middle.block
	cmpl	%ecx, 28(%esp)          ## 4-byte Folded Reload
	movl	40(%esp), %edx          ## 4-byte Reload
	je	LBB32_29
LBB32_23:                               ## %.lr.ph.i.i.preheader25
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	%edi, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %eax
	leal	(%edi,%eax), %ecx
	leal	1(%edi,%eax), %eax
	testb	$3, %al
	je	LBB32_26
## BB#24:                               ## %.lr.ph.i.i.prol.preheader
	movl	20(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	movl	16(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%eax,4), %eax
	cmpl	$-3, %edx
	movl	$-2, %ebp
	cmovgl	%edx, %ebp
	leal	1(%edi,%ebp), %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB32_25:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi,%edi,4), %ebp
	movl	%ebp, (%eax,%edi,4)
	leal	-1(%edi), %edi
	incl	%edx
	jne	LBB32_25
LBB32_26:                               ## %.lr.ph.i.i.preheader25.split
	cmpl	$3, %ecx
	movl	40(%esp), %edx          ## 4-byte Reload
	jb	LBB32_29
## BB#27:                               ## %.lr.ph.i.i.preheader25.split.split
	movl	20(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	movl	16(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	.align	4, 0x90
LBB32_28:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi,%edi,4), %ecx
	movl	%ecx, (%eax,%edi,4)
	movl	-8(%esi,%edi,4), %ecx
	movl	%ecx, -4(%eax,%edi,4)
	movl	-12(%esi,%edi,4), %ecx
	movl	%ecx, -8(%eax,%edi,4)
	movl	-16(%esi,%edi,4), %ecx
	movl	%ecx, -12(%eax,%edi,4)
	leal	-4(%edi), %edi
	cmpl	$1, %edi
	jg	LBB32_28
LBB32_29:                               ## %vecsmall_copy.exit
	movl	$1, %eax
	subl	%edx, %eax
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%ebx,%eax,4)
	cmpl	$3, %edx
	movl	68(%esp), %edi
	jl	LBB32_32
## BB#30:                               ## %.lr.ph
	movl	$2, %esi
	subl	%edx, %esi
	.align	4, 0x90
LBB32_31:                               ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebx,%esi,4), %eax
	movl	%eax, (%esp)
	calll	_F2x_sqr
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	movl	%eax, (%ebx,%esi,4)
	incl	%esi
	jne	LBB32_31
LBB32_32:                               ## %._crit_edge
	movl	32(%esp), %eax          ## 4-byte Reload
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_random_F2x
	.align	4, 0x90
_random_F2x:                            ## @random_F2x
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L33$pb
L33$pb:
	popl	%ebp
	movl	48(%esp), %eax
	leal	96(%eax), %ebx
	movl	%ebx, %esi
	shrl	$5, %esi
	movl	L_avma$non_lazy_ptr-L33$pb(%ebp), %edi
	movl	(%edi), %edx
	movl	%edx, 20(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L33$pb(%ebp), %eax
	movl	%edx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%esi, %ecx
	jae	LBB33_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB33_2:                                ## %new_chunk.exit.i
	movl	52(%esp), %edx
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%edi)
	cmpl	$536870912, %ebx        ## imm = 0x20000000
	jb	LBB33_4
## BB#3:
	leal	L_.str4-L33$pb(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%edx, %edi
	calll	_pari_err
	movl	%edi, %edx
LBB33_4:                                ## %cgetg.exit
	movl	%esi, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	$1, %ebp
	movl	$1, %eax
	subl	%esi, %eax
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	%edx, (%ecx,%eax,4)
	cmpl	$-97, 48(%esp)
	ja	LBB33_7
## BB#5:                                ## %.lr.ph.preheader
	shrl	$3, %ebx
	andl	$536870908, %ebx        ## imm = 0x1FFFFFFC
	movl	20(%esp), %edi          ## 4-byte Reload
	subl	%ebx, %edi
	movl	$2, %ebx
	.align	4, 0x90
LBB33_6:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	calll	_pari_rand
	movl	%eax, (%edi,%ebx,4)
	incl	%ebx
	cmpl	%esi, %ebx
	jl	LBB33_6
LBB33_7:                                ## %._crit_edge
	movl	48(%esp), %ecx
                                        ## kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %ebp
	decl	%ebp
	movl	20(%esp), %eax          ## 4-byte Reload
	andl	%ebp, -4(%eax)
	movl	%esi, 4(%esp)
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2xq_order
	.align	4, 0x90
_F2xq_order:                            ## @F2xq_order
## BB#0:
	pushl	%esi
	subl	$24, %esp
	calll	L34$pb
L34$pb:
	popl	%eax
	movl	32(%esp), %ecx
	movl	36(%esp), %edx
	movl	40(%esp), %esi
	leal	_F2xq_star-L34$pb(%eax), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gen_eltorder
	addl	$24, %esp
	popl	%esi
	retl

	.globl	_F2xq_log
	.align	4, 0x90
_F2xq_log:                              ## @F2xq_log
## BB#0:
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	calll	L35$pb
L35$pb:
	popl	%eax
	movl	48(%esp), %ecx
	movl	52(%esp), %edx
	movl	56(%esp), %esi
	movl	60(%esp), %edi
	leal	_F2xq_star-L35$pb(%eax), %eax
	movl	%eax, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	$0, 20(%esp)
	calll	_gen_PH_log
	addl	$36, %esp
	popl	%esi
	popl	%edi
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI36_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_F2xq_sqrt
	.align	4, 0x90
_F2xq_sqrt:                             ## @F2xq_sqrt
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	calll	L36$pb
L36$pb:
	popl	%ebx
	movl	%ebx, 80(%esp)          ## 4-byte Spill
	movl	132(%esp), %ecx
	movl	128(%esp), %esi
	movl	L_avma$non_lazy_ptr-L36$pb(%ebx), %eax
	movl	%eax, 104(%esp)         ## 4-byte Spill
	movl	(%eax), %edi
	movl	%edi, 88(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L36$pb(%ebx), %edx
	movl	$16777215, %ebp         ## imm = 0xFFFFFF
	andl	(%ecx), %ebp
	cmpl	$2, %ebp
	movl	(%edx), %eax
	je	LBB36_36
## BB#1:
	movl	%edi, 88(%esp)          ## 4-byte Spill
	movl	%edx, 92(%esp)          ## 4-byte Spill
	movl	%ebx, %edi
	movl	-4(%ecx,%ebp,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %ebx
	movl	$28, %edx
	cmoval	%ebx, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB36_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB36_3:
	movl	%edi, %ebx
	movl	88(%esp), %edi          ## 4-byte Reload
	shll	$5, %ebp
	cmpl	$16, %ecx
	jb	LBB36_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB36_5:                                ## %F2x_degree.exit
	addl	$-65, %ebp
	subl	%edx, %ebp
	subl	_F2x_degree_lg.__bfffo_tabshi-L36$pb(%ebx,%ecx,4), %ebp
	cmpl	$2, %ebp
	jl	LBB36_36
## BB#6:                                ## %.lr.ph
	movl	%edi, %ecx
	subl	%eax, %ecx
	shrl	$2, %ecx
	addl	%eax, %ecx
	movl	%ecx, 96(%esp)          ## 4-byte Spill
	decl	%ebp
	movl	%ebp, 100(%esp)         ## 4-byte Spill
	leal	-4(%edi), %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	leal	-16(%edi), %eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	$1, %ebp
	leal	L_.str2-L36$pb(%ebx), %eax
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movdqa	LCPI36_0-L36$pb(%ebx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movdqa	%xmm0, 48(%esp)         ## 16-byte Spill
	.align	4, 0x90
LBB36_7:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB36_22 Depth 2
                                        ##     Child Loop BB36_28 Depth 2
                                        ##     Child Loop BB36_31 Depth 2
	movl	%esi, (%esp)
	calll	_F2x_sqr
	movl	132(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2x_rem
	movl	%eax, %esi
	movl	104(%esp), %eax         ## 4-byte Reload
	movl	96(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, (%eax)
	jae	LBB36_34
## BB#8:                                ##   in Loop: Header=BB36_7 Depth=1
	movl	L_DEBUGMEM$non_lazy_ptr-L36$pb(%ebx), %eax
	cmpl	$2, (%eax)
	jb	LBB36_10
## BB#9:                                ##   in Loop: Header=BB36_7 Depth=1
	movl	%ebp, 8(%esp)
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	calll	_pari_warn
LBB36_10:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	92(%esp), %eax          ## 4-byte Reload
	cmpl	(%eax), %esi
	jb	LBB36_13
## BB#11:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	L_top$non_lazy_ptr-L36$pb(%ebx), %eax
	cmpl	(%eax), %esi
	jae	LBB36_13
## BB#12:                               ##   in Loop: Header=BB36_7 Depth=1
	cmpl	%esi, %edi
	jbe	LBB36_13
## BB#14:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	%edi, %ebx
	movl	(%esi), %edi
	movl	%edi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	104(%esp), %eax         ## 4-byte Reload
	movl	%edx, (%eax)
	movdqa	48(%esp), %xmm2         ## 16-byte Reload
	je	LBB36_15
## BB#16:                               ## %.lr.ph.i5.preheader
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	%edx, 76(%esp)          ## 4-byte Spill
	movl	%edi, %edx
	orl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	%edx, %eax
	xorl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	%eax, 84(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebx
	cmovel	%eax, %ebx
	leal	(%ebx,%ecx), %eax
	cmpl	$-2, %eax
	je	LBB36_17
## BB#18:                               ## %overflow.checked
                                        ##   in Loop: Header=BB36_7 Depth=1
	leal	2(%ebx,%ecx), %eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	leal	2(%edi,%ebx), %eax
	movl	%edi, 72(%esp)          ## 4-byte Spill
	andl	$7, %eax
	cmpl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edx
	movl	84(%esp), %edi          ## 4-byte Reload
	cmovnel	%edx, %edi
	movl	%edi, 84(%esp)          ## 4-byte Spill
	movl	44(%esp), %edi          ## 4-byte Reload
	movl	$0, 40(%esp)            ## 4-byte Folded Spill
	movl	%edi, %edx
	subl	%eax, %edx
	je	LBB36_24
## BB#19:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	%ebx, 24(%esp)          ## 4-byte Spill
	movl	%edx, 32(%esp)          ## 4-byte Spill
	movl	$-2, %eax
	movl	84(%esp), %ebx          ## 4-byte Reload
	subl	%ebx, %eax
	leal	(%esi,%eax,4), %eax
	cmpl	%eax, 36(%esp)          ## 4-byte Folded Reload
	ja	LBB36_21
## BB#20:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB36_7 Depth=1
	leal	-4(%esi,%ecx,4), %eax
	addl	%ecx, %ebx
	movl	$-2, %edx
	subl	%ebx, %edx
	movl	88(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %edx
	cmpl	%edx, %eax
	jbe	LBB36_24
LBB36_21:                               ## %vector.body.preheader
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	%ecx, %eax
	subl	32(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 84(%esp)          ## 4-byte Spill
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	24(%esp), %edx          ## 4-byte Reload
	leal	2(%edx,%eax), %ebx
	andl	$7, %ebx
	subl	%edx, %ebx
	addl	$-2, %ebx
	movl	%ecx, %edi
	movl	88(%esp), %edx          ## 4-byte Reload
	.align	4, 0x90
LBB36_22:                               ## %vector.body
                                        ##   Parent Loop BB36_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm0        ## xmm0 = xmm0[0,0,0,0]
	paddd	%xmm2, %xmm0
	movd	%xmm0, %eax
	movdqu	-12(%esi,%eax,4), %xmm0
	movups	-28(%esi,%eax,4), %xmm1
	subl	%ecx, %eax
	movdqu	%xmm0, -12(%edx,%eax,4)
	movups	%xmm1, -28(%edx,%eax,4)
	addl	$-8, %edi
	cmpl	%edi, %ebx
	jne	LBB36_22
## BB#23:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	84(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, 40(%esp)          ## 4-byte Spill
	movl	44(%esp), %edi          ## 4-byte Reload
LBB36_24:                               ## %middle.block
                                        ##   in Loop: Header=BB36_7 Depth=1
	cmpl	40(%esp), %edi          ## 4-byte Folded Reload
	je	LBB36_32
	jmp	LBB36_25
	.align	4, 0x90
LBB36_13:                               ## %.critedge.i2
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	104(%esp), %eax         ## 4-byte Reload
	movl	%edi, (%eax)
	jmp	LBB36_34
LBB36_15:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	%edx, %esi
	movl	%ebx, %edi
	jmp	LBB36_33
LBB36_17:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	%edi, 72(%esp)          ## 4-byte Spill
LBB36_25:                               ## %.lr.ph.i5.preheader92
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	%ecx, %edi
	notl	%edi
	cmpl	$-3, %edi
	movl	$-2, %eax
	cmovgl	%edi, %eax
	leal	2(%ecx,%eax), %edx
	leal	1(%ecx,%eax), %eax
	testb	$3, %dl
	je	LBB36_26
## BB#27:                               ## %.lr.ph.i5.prol.preheader
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	%eax, %edx
	movl	72(%esp), %eax          ## 4-byte Reload
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	36(%esp), %ebx          ## 4-byte Reload
	subl	%eax, %ebx
	cmpl	$-3, %edi
	movl	$-2, %eax
	cmovlel	%eax, %edi
	leal	2(%ecx,%edi), %edi
	andl	$3, %edi
	negl	%edi
	.align	4, 0x90
LBB36_28:                               ## %.lr.ph.i5.prol
                                        ##   Parent Loop BB36_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%esi,%ecx,4), %eax
	movl	%eax, (%ebx,%ecx,4)
	leal	-1(%ecx), %ecx
	incl	%edi
	jne	LBB36_28
	jmp	LBB36_29
LBB36_26:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	%eax, %edx
LBB36_29:                               ## %.lr.ph.i5.preheader92.split
                                        ##   in Loop: Header=BB36_7 Depth=1
	cmpl	$3, %edx
	jb	LBB36_32
## BB#30:                               ## %.lr.ph.i5.preheader92.split.split
                                        ##   in Loop: Header=BB36_7 Depth=1
	incl	%ecx
	movl	72(%esp), %eax          ## 4-byte Reload
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	28(%esp), %edi          ## 4-byte Reload
	subl	%eax, %edi
	.align	4, 0x90
LBB36_31:                               ## %.lr.ph.i5
                                        ##   Parent Loop BB36_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-8(%esi,%ecx,4), %eax
	movl	%eax, 8(%edi,%ecx,4)
	movl	-12(%esi,%ecx,4), %eax
	movl	%eax, 4(%edi,%ecx,4)
	movl	-16(%esi,%ecx,4), %eax
	movl	%eax, (%edi,%ecx,4)
	movl	-20(%esi,%ecx,4), %eax
	movl	%eax, -4(%edi,%ecx,4)
	addl	$-4, %ecx
	cmpl	$1, %ecx
	jg	LBB36_31
LBB36_32:                               ##   in Loop: Header=BB36_7 Depth=1
	movl	76(%esp), %esi          ## 4-byte Reload
	movl	88(%esp), %edi          ## 4-byte Reload
LBB36_33:                               ## %gerepileuptoleaf.exit7
                                        ##   in Loop: Header=BB36_7 Depth=1
	movl	80(%esp), %ebx          ## 4-byte Reload
LBB36_34:                               ## %gerepileuptoleaf.exit7
                                        ##   in Loop: Header=BB36_7 Depth=1
	cmpl	100(%esp), %ebp         ## 4-byte Folded Reload
	leal	1(%ebp), %ebp
	jne	LBB36_7
## BB#35:                               ## %._crit_edge
	movl	92(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
LBB36_36:                               ## %F2x_degree.exit.thread
	cmpl	%eax, %esi
	jb	LBB36_39
## BB#37:                               ## %F2x_degree.exit.thread
	movl	L_top$non_lazy_ptr-L36$pb(%ebx), %eax
	cmpl	(%eax), %esi
	jae	LBB36_39
## BB#38:
	cmpl	%esi, %edi
	jbe	LBB36_39
## BB#40:
	movl	(%esi), %eax
	movl	%eax, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	%edi, %ebp
	subl	%ecx, %ebp
	movl	%eax, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	104(%esp), %edx         ## 4-byte Reload
	movl	%ebp, (%edx)
	je	LBB36_41
## BB#42:                               ## %.lr.ph.i.preheader
	movl	%ebp, 104(%esp)         ## 4-byte Spill
	movl	%ebx, 80(%esp)          ## 4-byte Spill
	movl	%edi, 88(%esp)          ## 4-byte Spill
	movl	%eax, %edx
	orl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	%edx, %ebx
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edi
	cmovel	%ebx, %edi
	leal	(%edi,%ecx), %ebp
	cmpl	$-2, %ebp
	jne	LBB36_49
## BB#43:
	movl	88(%esp), %ebx          ## 4-byte Reload
	movl	$-2, %edx
	jmp	LBB36_44
LBB36_39:                               ## %.critedge.i
	movl	104(%esp), %eax         ## 4-byte Reload
	movl	%edi, (%eax)
LBB36_60:                               ## %gerepileuptoleaf.exit
	movl	%esi, %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB36_41:
	movl	%ebp, %esi
	jmp	LBB36_60
LBB36_49:                               ## %overflow.checked41
	addl	$2, %ebp
	cmpl	$-16777216, %edx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edx
	cmovnel	%edx, %ebx
	movl	$0, 100(%esp)           ## 4-byte Folded Spill
	movl	%ebp, %edx
	andl	$-8, %edx
	je	LBB36_55
## BB#50:                               ## %vector.memcheck55
	movl	%edx, 96(%esp)          ## 4-byte Spill
	movl	$-2, %edx
	subl	%ebx, %edx
	leal	(%esi,%edx,4), %edx
	movl	%edx, 92(%esp)          ## 4-byte Spill
	movl	88(%esp), %edx          ## 4-byte Reload
	leal	-4(%edx), %edx
	cmpl	92(%esp), %edx          ## 4-byte Folded Reload
	ja	LBB36_52
## BB#51:                               ## %vector.memcheck55
	leal	-4(%esi,%ecx,4), %edx
	movl	%edx, 92(%esp)          ## 4-byte Spill
	addl	%ecx, %ebx
	movl	$-2, %edx
	subl	%ebx, %edx
	movl	88(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %ebx
	cmpl	%ebx, 92(%esp)          ## 4-byte Folded Reload
	jbe	LBB36_55
LBB36_52:                               ## %vector.body32.preheader
	movl	%ebp, 92(%esp)          ## 4-byte Spill
	movl	%ecx, %edx
	subl	96(%esp), %edx          ## 4-byte Folded Reload
	movl	%edx, 100(%esp)         ## 4-byte Spill
	leal	2(%edi,%ecx), %edi
	andl	$-8, %edi
	movl	80(%esp), %edx          ## 4-byte Reload
	movdqa	LCPI36_0-L36$pb(%edx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%ecx, %ebx
	movl	88(%esp), %ebp          ## 4-byte Reload
	.align	4, 0x90
LBB36_53:                               ## %vector.body32
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movups	-12(%esi,%edx,4), %xmm1
	movdqu	-28(%esi,%edx,4), %xmm2
	subl	%ecx, %edx
	movups	%xmm1, -12(%ebp,%edx,4)
	movdqu	%xmm2, -28(%ebp,%edx,4)
	addl	$-8, %ebx
	addl	$-8, %edi
	jne	LBB36_53
## BB#54:
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	96(%esp), %edx          ## 4-byte Reload
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	92(%esp), %ebp          ## 4-byte Reload
LBB36_55:                               ## %middle.block33
	cmpl	100(%esp), %ebp         ## 4-byte Folded Reload
	movl	88(%esp), %ebx          ## 4-byte Reload
	movl	$-2, %edx
	jne	LBB36_44
## BB#56:
	movl	104(%esp), %esi         ## 4-byte Reload
	jmp	LBB36_60
LBB36_44:                               ## %.lr.ph.i.preheader91
	movl	%ecx, %ebp
	notl	%ebp
	cmpl	$-3, %ebp
	cmovgl	%ebp, %edx
	movl	%edx, %edi
	leal	2(%ecx,%edi), %edx
	leal	1(%ecx,%edi), %edi
	testb	$3, %dl
	je	LBB36_47
## BB#45:                               ## %.lr.ph.i.prol.preheader
	movl	%eax, %edx
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	leal	(%ebx,%edx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	2(%ecx,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	4, 0x90
LBB36_46:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%esi,%ecx,4), %edx
	movl	%edx, (%ebx,%ecx,4)
	leal	-1(%ecx), %ecx
	incl	%ebp
	jne	LBB36_46
LBB36_47:                               ## %.lr.ph.i.preheader91.split
	cmpl	$3, %edi
	jae	LBB36_57
## BB#48:
	movl	104(%esp), %esi         ## 4-byte Reload
	jmp	LBB36_60
LBB36_57:                               ## %.lr.ph.i.preheader91.split.split
	incl	%ecx
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	$-4, %edx
	subl	%eax, %edx
	movl	88(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%edx,4), %edx
	movl	104(%esp), %edi         ## 4-byte Reload
	.align	4, 0x90
LBB36_58:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%esi,%ecx,4), %eax
	movl	%eax, 8(%edx,%ecx,4)
	movl	-12(%esi,%ecx,4), %eax
	movl	%eax, 4(%edx,%ecx,4)
	movl	-16(%esi,%ecx,4), %eax
	movl	%eax, (%edx,%ecx,4)
	movl	-20(%esi,%ecx,4), %eax
	movl	%eax, -4(%edx,%ecx,4)
	addl	$-4, %ecx
	cmpl	$1, %ecx
	jg	LBB36_58
## BB#59:
	movl	%edi, %esi
	jmp	LBB36_60

	.globl	_F2xq_sqrtn
	.align	4, 0x90
_F2xq_sqrtn:                            ## @F2xq_sqrtn
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L37$pb
L37$pb:
	popl	%edi
	movl	60(%esp), %ebx
	movl	56(%esp), %esi
	movl	48(%esp), %ebp
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%ebp), %ecx
	andl	%eax, %ecx
	cmpl	$2, %ecx
	jne	LBB37_8
## BB#1:
	testl	%ebx, %ebx
	je	LBB37_5
## BB#2:
	movl	L_avma$non_lazy_ptr-L37$pb(%edi), %ebx
	movl	(%ebx), %ebp
	movl	L_bot$non_lazy_ptr-L37$pb(%edi), %eax
	movl	%ebp, %ecx
	subl	(%eax), %ecx
	movl	4(%esi), %eax
	cmpl	$11, %ecx
	leal	-12(%ebp), %esi
	ja	LBB37_4
## BB#3:
	movl	$14, (%esp)
	movl	%eax, 24(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	24(%esp), %eax          ## 4-byte Reload
LBB37_4:                                ## %pol1_F2x.exit
	movl	%esi, (%ebx)
	movl	$738197507, -12(%ebp)   ## imm = 0x2C000003
	movl	%eax, -8(%ebp)
	movl	$1, -4(%ebp)
	movl	60(%esp), %eax
	movl	%esi, (%eax)
	movl	56(%esp), %esi
LBB37_5:                                ## %._crit_edge
	movl	4(%esi), %edx
	movl	L_avma$non_lazy_ptr-L37$pb(%edi), %ebx
	movl	(%ebx), %ebp
	leal	-8(%ebp), %esi
	movl	L_bot$non_lazy_ptr-L37$pb(%edi), %eax
	movl	%ebp, %ecx
	subl	(%eax), %ecx
	cmpl	$7, %ecx
	ja	LBB37_7
## BB#6:
	movl	$14, (%esp)
	movl	%edx, %edi
	calll	_pari_err
	movl	%edi, %edx
LBB37_7:
	movl	%esi, (%ebx)
	movl	$738197506, -8(%ebp)    ## imm = 0x2C000002
	movl	%edx, -4(%ebp)
	movl	%esi, %eax
	jmp	LBB37_15
LBB37_8:
	andl	(%esi), %eax
	movl	$-1, %ecx
	cmpl	$2, %eax
	je	LBB37_14
## BB#9:
	movl	-4(%esi,%eax,4), %edx
	movl	%esi, %ebx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %esi
	movl	$28, %edx
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB37_11
## BB#10:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB37_11:
	shll	$5, %eax
	cmpl	$16, %ecx
	movl	%ebx, %esi
	jb	LBB37_13
## BB#12:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB37_13:
	movl	60(%esp), %ebx
	addl	$-65, %eax
	subl	%edx, %eax
	subl	_F2x_degree_lg.__bfffo_tabshi-L37$pb(%edi,%ecx,4), %eax
	movl	%eax, %ecx
LBB37_14:                               ## %F2x_degree.exit
	movl	%ecx, 4(%esp)
	movl	$2, (%esp)
	calll	_powuu
	movl	4(%eax), %ecx
	sarl	$30, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	calll	_addsi_sign
	leal	_F2xq_star-L37$pb(%edi), %ecx
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_gen_Shanks_sqrtn
LBB37_15:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI38_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_gener_F2xq
	.align	4, 0x90
_gener_F2xq:                            ## @gener_F2xq
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	L38$pb
L38$pb:
	popl	%ebx
	movl	96(%esp), %ecx
	movl	4(%ecx), %esi
	movl	%esi, 48(%esp)          ## 4-byte Spill
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ecx), %eax
	movl	$-1, %ebp
	cmpl	$2, %eax
	je	LBB38_13
## BB#1:
	movl	%esi, %edi
	movl	96(%esp), %ecx
	movl	-4(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$12, %esi
	movl	$28, %edx
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB38_3
## BB#2:
	addl	$-8, %edx
	shrl	$8, %ecx
LBB38_3:
	movl	%edi, %esi
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB38_5
## BB#4:
	addl	$-4, %edx
	shrl	$4, %ecx
LBB38_5:                                ## %F2x_degree.exit
	addl	$-65, %eax
	subl	%edx, %eax
	subl	_F2x_degree_lg.__bfffo_tabshi-L38$pb(%ebx,%ecx,4), %eax
	cmpl	$1, %eax
	movl	%eax, %ebp
	jne	LBB38_13
## BB#6:
	movl	%esi, 48(%esp)          ## 4-byte Spill
	cmpl	$0, 100(%esp)
	je	LBB38_10
## BB#7:
	movl	L_gen_1$non_lazy_ptr-L38$pb(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 68(%esp)          ## 4-byte Spill
	calll	_trivfact
	movl	%eax, %edx
	movl	L_avma$non_lazy_ptr-L38$pb(%ebx), %edi
	movl	%ebx, %esi
	movl	(%edi), %ebx
	leal	-12(%ebx), %ebp
	movl	L_bot$non_lazy_ptr-L38$pb(%esi), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	cmpl	$11, %ecx
	ja	LBB38_9
## BB#8:
	movl	$14, (%esp)
	movl	%edx, 64(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	64(%esp), %edx          ## 4-byte Reload
LBB38_9:                                ## %mkvec2.exit
	movl	%ebp, (%edi)
	movl	$570425347, -12(%ebx)   ## imm = 0x22000003
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%eax, -8(%ebx)
	movl	%edx, -4(%ebx)
	movl	100(%esp), %eax
	movl	%ebp, (%eax)
	movl	%esi, %ebx
LBB38_10:
	movl	%ebx, %eax
	movl	L_avma$non_lazy_ptr-L38$pb(%eax), %ebx
	movl	(%ebx), %edi
	leal	-12(%edi), %esi
	movl	L_bot$non_lazy_ptr-L38$pb(%eax), %eax
	movl	%edi, %ecx
	subl	(%eax), %ecx
	cmpl	$11, %ecx
	ja	LBB38_12
## BB#11:
	movl	$14, (%esp)
	calll	_pari_err
LBB38_12:                               ## %pol1_F2x.exit
	movl	%esi, (%ebx)
	movl	$738197507, -12(%edi)   ## imm = 0x2C000003
	movl	48(%esp), %eax          ## 4-byte Reload
	movl	%eax, -8(%edi)
	movl	$1, -4(%edi)
	jmp	LBB38_71
LBB38_13:                               ## %F2x_degree.exit.thread
	movl	%ebp, 64(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L38$pb(%ebx), %eax
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	%ebp, 4(%esp)
	movl	$2, (%esp)
	calll	_powuu
	movl	4(%eax), %ecx
	sarl	$30, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	calll	_addsi_sign
	movl	%eax, 36(%esp)          ## 4-byte Spill
	movl	L_gen_2$non_lazy_ptr-L38$pb(%ebx), %eax
	movl	(%eax), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	calll	_factor_pn_1
	movl	%eax, 20(%esp)          ## 4-byte Spill
	movl	4(%eax), %ebp
	movl	(%ebp), %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	movl	%ebx, %edi
	movl	%eax, %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %edx
	movl	%edx, 40(%esp)          ## 4-byte Spill
	leal	(,%ebx,4), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L38$pb(%edi), %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%edi, 56(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	subl	(%ecx), %eax
	movl	%ebx, %ecx
	shrl	$2, %eax
	cmpl	%ecx, %eax
	jae	LBB38_15
## BB#14:
	movl	$14, (%esp)
	movl	%ecx, %ebx
	calll	_pari_err
	movl	%ebx, %ecx
LBB38_15:                               ## %cgetg_copy.exit.i
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	68(%esp), %edi          ## 4-byte Reload
	movl	%eax, (%edi)
	movl	$-16777217, %ebx        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%ebp), %ebx
	movl	%ebx, (%eax)
	cmpl	$2, %ecx
	jb	LBB38_32
## BB#16:                               ## %.lr.ph.i.preheader
	movl	%esi, 48(%esp)          ## 4-byte Spill
	movl	32(%esp), %ebx          ## 4-byte Reload
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	%ebx, %edi
	negl	%edi
	cmpl	$-3, %edi
	movl	$-2, %edx
	movl	$-2, %esi
	cmovgl	%edi, %esi
	addl	%ebx, %esi
	cmpl	$-1, %esi
	movl	%ecx, %eax
	movl	%ecx, 52(%esp)          ## 4-byte Spill
	je	LBB38_25
## BB#17:                               ## %overflow.checked
	incl	%esi
	movl	%esi, 60(%esp)          ## 4-byte Spill
	cmpl	$-3, %edi
	movl	%esi, %eax
	movl	$-2, %esi
	cmovgl	%edi, %esi
	xorl	%ecx, %ecx
	andl	$-8, %eax
	je	LBB38_18
## BB#19:                               ## %vector.memcheck
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	notl	%eax
	leal	(%ebp,%eax,4), %ecx
	movl	40(%esp), %eax          ## 4-byte Reload
	leal	-4(%eax), %eax
	cmpl	%ecx, %eax
	ja	LBB38_21
## BB#20:                               ## %vector.memcheck
	leal	-4(%ebp,%ebx,4), %eax
	addl	%ebx, %esi
	notl	%esi
	movl	40(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %esi
	xorl	%ecx, %ecx
	cmpl	%esi, %eax
	movl	52(%esp), %eax          ## 4-byte Reload
	jbe	LBB38_24
LBB38_21:                               ## %vector.body.preheader
	movl	52(%esp), %edx          ## 4-byte Reload
	movl	%edx, %eax
	subl	16(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$-3, %edi
	movl	$-2, %esi
	cmovgl	%edi, %esi
	leal	1(%esi,%ebx), %esi
	andl	$-8, %esi
	movl	56(%esp), %edi          ## 4-byte Reload
	movdqa	LCPI38_0-L38$pb(%edi), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	40(%esp), %ecx          ## 4-byte Reload
	.align	4, 0x90
LBB38_22:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	movups	-12(%ebp,%edi,4), %xmm1
	movups	-28(%ebp,%edi,4), %xmm2
	subl	%edx, %edi
	movups	%xmm1, -12(%ecx,%edi,4)
	movups	%xmm2, -28(%ecx,%edi,4)
	addl	$-8, %ebx
	addl	$-8, %esi
	jne	LBB38_22
## BB#23:
	movl	16(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %edx
	jmp	LBB38_24
LBB38_18:
	movl	52(%esp), %eax          ## 4-byte Reload
LBB38_24:                               ## %middle.block
	cmpl	%ecx, 60(%esp)          ## 4-byte Folded Reload
	je	LBB38_31
LBB38_25:                               ## %.lr.ph.i.preheader48
	movl	%eax, %esi
	negl	%esi
	cmpl	$-3, %esi
	cmovgl	%esi, %edx
	movl	%edx, %ecx
	leal	(%eax,%ecx), %edx
	leal	1(%eax,%ecx), %ecx
	testb	$3, %cl
	je	LBB38_28
## BB#26:                               ## %.lr.ph.i.prol.preheader
	movl	32(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	40(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %ecx
	cmpl	$-3, %esi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	1(%eax,%edi), %esi
	andl	$3, %esi
	negl	%esi
	.align	4, 0x90
LBB38_27:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%eax,4), %edi
	movl	%edi, (%ecx,%eax,4)
	leal	-1(%eax), %eax
	incl	%esi
	jne	LBB38_27
LBB38_28:                               ## %.lr.ph.i.preheader48.split
	cmpl	$3, %edx
	jb	LBB38_31
## BB#29:                               ## %.lr.ph.i.preheader48.split.split
	movl	32(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB38_30:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	-8(%ebp,%eax,4), %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	-12(%ebp,%eax,4), %edx
	movl	%edx, -8(%ecx,%eax,4)
	movl	-16(%ebp,%eax,4), %edx
	movl	%edx, -12(%ecx,%eax,4)
	leal	-4(%eax), %eax
	cmpl	$1, %eax
	jg	LBB38_30
LBB38_31:                               ## %leafcopy.exit.preheader.loopexit
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	movl	48(%esp), %esi          ## 4-byte Reload
	movl	68(%esp), %edi          ## 4-byte Reload
	movl	52(%esp), %ecx          ## 4-byte Reload
LBB38_32:                               ## %leafcopy.exit.preheader
	movl	%ebx, %eax
	andl	$16777214, %eax         ## imm = 0xFFFFFE
	cmpl	$2, %eax
	jb	LBB38_72
## BB#33:                               ## %.lr.ph17.preheader
	movl	%ecx, 52(%esp)          ## 4-byte Spill
	movl	%edi, 68(%esp)          ## 4-byte Spill
	movl	32(%esp), %eax          ## 4-byte Reload
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	40(%esp), %ecx          ## 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	$1, %edi
	movl	$1, %ebp
	.align	4, 0x90
LBB38_34:                               ## %.lr.ph17
                                        ## =>This Inner Loop Header: Depth=1
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	(%eax,%edi,4), %eax
	movl	4(%eax), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	cmpl	$3, %ecx
	jne	LBB38_36
## BB#35:                               ## %equaliu.exit
                                        ##   in Loop: Header=BB38_34 Depth=1
	cmpl	$2, 8(%eax)
	je	LBB38_37
LBB38_36:                               ## %.critedge
                                        ##   in Loop: Header=BB38_34 Depth=1
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_diviiexact
	leal	1(%ebp), %ecx
	subl	52(%esp), %ebp          ## 4-byte Folded Reload
	movl	40(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx,%ebp,4)
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	movl	%ecx, %ebp
LBB38_37:                               ## %leafcopy.exit
                                        ##   in Loop: Header=BB38_34 Depth=1
	incl	%edi
	movl	%ebx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	cmpl	%eax, %edi
	jl	LBB38_34
## BB#38:                               ## %leafcopy.exit._crit_edge
	andl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	cmpl	$16777216, %ebp         ## imm = 0x1000000
	movl	68(%esp), %edi          ## 4-byte Reload
	jb	LBB38_40
## BB#39:
	movl	56(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L38$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
	jmp	LBB38_40
LBB38_72:                               ## %leafcopy.exit._crit_edge.thread
	andl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	movl	$1, %ebp
LBB38_40:                               ## %evallg.exit
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	%ebp, 52(%esp)          ## 4-byte Spill
	movl	%edi, 68(%esp)          ## 4-byte Spill
	orl	%ebp, %ebx
	movl	44(%esp), %ecx          ## 4-byte Reload
	movl	%ebx, (%ecx)
	movl	(%edi), %ecx
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	32(%esp), %ecx          ## 4-byte Reload
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	subl	%ecx, %eax
	movl	%eax, %ebx
	jmp	LBB38_41
	.align	4, 0x90
LBB38_52:                               ## %F2x_degree.exit8.thread
                                        ##   in Loop: Header=BB38_41 Depth=1
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
LBB38_41:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB38_48 Depth 2
	movl	%esi, 4(%esp)
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_random_F2x
	movl	%eax, %edi
	movl	%edi, 72(%esp)
	movl	(%edi), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	%ecx, %eax
	cmpl	$2, %eax
	je	LBB38_52
## BB#42:                               ##   in Loop: Header=BB38_41 Depth=1
	movl	%esi, %ebp
	movl	-4(%edi,%eax,4), %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	cmovbel	%edx, %ecx
	movl	$28, %edx
	movl	$12, %esi
	cmoval	%esi, %edx
	cmpl	$256, %ecx              ## imm = 0x100
	jb	LBB38_44
## BB#43:                               ##   in Loop: Header=BB38_41 Depth=1
	addl	$-8, %edx
	shrl	$8, %ecx
LBB38_44:                               ##   in Loop: Header=BB38_41 Depth=1
	movl	%ebp, %esi
	movl	52(%esp), %ebp          ## 4-byte Reload
	shll	$5, %eax
	cmpl	$16, %ecx
	jb	LBB38_46
## BB#45:                               ##   in Loop: Header=BB38_41 Depth=1
	addl	$-4, %edx
	shrl	$4, %ecx
LBB38_46:                               ## %F2x_degree.exit8
                                        ##   in Loop: Header=BB38_41 Depth=1
	addl	$-65, %eax
	subl	%edx, %eax
	movl	56(%esp), %edx          ## 4-byte Reload
	subl	_F2x_degree_lg.__bfffo_tabshi-L38$pb(%edx,%ecx,4), %eax
	testl	%eax, %eax
	jle	LBB38_52
## BB#47:                               ## %.preheader
                                        ##   in Loop: Header=BB38_41 Depth=1
	movl	$1, %esi
	cmpl	$2, %ebp
	jl	LBB38_51
	.align	4, 0x90
LBB38_48:                               ## %.lr.ph
                                        ##   Parent Loop BB38_41 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%ebx,%esi,4), %eax
	movl	96(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_F2xq_pow
	movl	(%eax), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	cmpl	$3, %ecx
	jne	LBB38_50
## BB#49:                               ## %F2x_equal1.exit
                                        ##   in Loop: Header=BB38_48 Depth=2
	cmpl	$1, 8(%eax)
	je	LBB38_51
LBB38_50:                               ## %.critedge11
                                        ##   in Loop: Header=BB38_48 Depth=2
	incl	%esi
	cmpl	%ebp, %esi
	jl	LBB38_48
LBB38_51:                               ## %F2x_equal1.exit._crit_edge
                                        ##   in Loop: Header=BB38_41 Depth=1
	cmpl	%ebp, %esi
	movl	48(%esp), %esi          ## 4-byte Reload
	jne	LBB38_52
## BB#53:
	movl	100(%esp), %ebp
	testl	%ebp, %ebp
	je	LBB38_54
## BB#68:
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_int2n
	movl	4(%eax), %ecx
	sarl	$30, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	calll	_addsi_sign
	movl	68(%esp), %edi          ## 4-byte Reload
	movl	(%edi), %esi
	leal	-12(%esi), %ebx
	movl	%esi, %edx
	movl	24(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %edx
	cmpl	$11, %edx
	ja	LBB38_70
## BB#69:
	movl	$14, (%esp)
	movl	%eax, 64(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	64(%esp), %eax          ## 4-byte Reload
LBB38_70:                               ## %mkvec2.exit1
	movl	%ebx, (%edi)
	movl	$570425347, -12(%esi)   ## imm = 0x22000003
	movl	%eax, -8(%esi)
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%eax, -4(%esi)
	movl	%ebx, (%ebp)
	movl	%ebp, 12(%esp)
	leal	72(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$2, 4(%esp)
	calll	_gerepileall
	movl	72(%esp), %esi
	jmp	LBB38_71
LBB38_54:
	movl	%edi, (%esp)
	calll	_copy_bin
	movl	%eax, %edx
	movl	28(%esp), %esi          ## 4-byte Reload
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	4(%edx), %eax
	testl	%eax, %eax
	je	LBB38_55
## BB#59:
	movl	(%edx), %ebx
	movl	%ebx, 64(%esp)          ## 4-byte Spill
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%eax, %ebp
	subl	8(%edx), %ebp
	movl	%edx, 48(%esp)          ## 4-byte Spill
	sarl	$2, %ebp
	leal	(,%ebx,4), %edi
	movl	%edi, 52(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	movl	24(%esp), %edx          ## 4-byte Reload
	subl	(%edx), %eax
	subl	%edi, %esi
	shrl	$2, %eax
	cmpl	%ebx, %eax
	jae	LBB38_61
## BB#60:
	movl	$14, (%esp)
	calll	_pari_err
LBB38_61:                               ## %new_chunk.exit.i.i
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	48(%esp), %edi          ## 4-byte Reload
	movl	%edi, %eax
	addl	$16, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_memcpy
	subl	64(%esp), %ebp          ## 4-byte Folded Reload
	movl	28(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ebp,4), %esi
	movl	%esi, %eax
	subl	60(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$0, 12(%edi)
	je	LBB38_63
## BB#62:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_shiftaddress_canon
	jmp	LBB38_64
LBB38_55:
	movl	56(%esp), %ebp          ## 4-byte Reload
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L38$pb(%ebp), %esi
	movl	(%esi), %ebx
	movl	$1, (%esi)
	movl	%edx, (%esp)
	calll	_free
	movl	%ebx, (%esi)
	testl	%ebx, %ebx
	movl	%ebp, %esi
	jne	LBB38_58
## BB#56:
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L38$pb(%esi), %eax
	cmpl	$0, (%eax)
	je	LBB38_58
## BB#57:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB38_58:                               ## %pari_free.exit.i.i
	movl	L_gen_0$non_lazy_ptr-L38$pb(%esi), %eax
	movl	(%eax), %esi
	movl	%esi, 72(%esp)
	jmp	LBB38_71
LBB38_63:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_shiftaddress
LBB38_64:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L38$pb(%eax), %ebx
	movl	(%ebx), %ebp
	movl	$1, (%ebx)
	movl	%edi, (%esp)
	calll	_free
	movl	%ebp, (%ebx)
	testl	%ebp, %ebp
	jne	LBB38_67
## BB#65:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L38$pb(%eax), %eax
	cmpl	$0, (%eax)
	je	LBB38_67
## BB#66:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB38_67:                               ## %gerepilecopy.exit
	movl	%esi, 72(%esp)
LBB38_71:
	movl	%esi, %eax
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
_F2x_equal1:                            ## @F2x_equal1
## BB#0:
	movl	4(%esp), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	cmpl	$3, %ecx
	jne	LBB39_1
## BB#2:
	cmpl	$1, 8(%eax)
	sete	%al
	movzbl	%al, %eax
	retl
LBB39_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retl

	.globl	_ZXX_to_F2xX
	.align	4, 0x90
_ZXX_to_F2xX:                           ## @ZXX_to_F2xX
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L40$pb
L40$pb:
	popl	%eax
	movl	48(%esp), %ebx
	movl	(%ebx), %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	L_avma$non_lazy_ptr-L40$pb(%eax), %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	(%ecx), %edi
	leal	(,%esi,4), %ecx
	movl	%edi, %ebp
	subl	%ecx, %ebp
	movl	%ebp, 20(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L40$pb(%eax), %ecx
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	movl	%edi, %eax
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB40_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB40_2:                                ## %cgetg.exit
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%ebp, (%eax)
	movl	%esi, %eax
	orl	$335544320, %eax        ## imm = 0x14000000
	movl	%eax, (%ebp)
	movl	$1073676288, %eax       ## imm = 0x3FFF0000
	andl	4(%ebx), %eax
	orl	$1073741824, %eax       ## imm = 0x40000000
	movl	$1, %ecx
	subl	%esi, %ecx
	movl	%eax, (%edi,%ecx,4)
	cmpl	$3, %esi
	jb	LBB40_17
## BB#3:                                ## %.lr.ph.preheader
	movl	$2, %edi
	.align	4, 0x90
LBB40_4:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%edi,4), %eax
	movl	(%eax), %ecx
	shrl	$25, %ecx
	cmpl	$10, %ecx
	jne	LBB40_5
## BB#15:                               ##   in Loop: Header=BB40_4 Depth=1
	movl	%eax, (%esp)
	calll	_ZX_to_F2x
	movl	%eax, (%ebp,%edi,4)
	jmp	LBB40_16
	.align	4, 0x90
LBB40_5:                                ## %.lr.ph
                                        ##   in Loop: Header=BB40_4 Depth=1
	cmpl	$1, %ecx
	jne	LBB40_16
## BB#6:                                ##   in Loop: Header=BB40_4 Depth=1
	movl	4(%eax), %ecx
	cmpl	$1073741823, %ecx       ## imm = 0x3FFFFFFF
	jbe	LBB40_7
## BB#11:                               ## %mpodd.exit.i
                                        ##   in Loop: Header=BB40_4 Depth=1
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	testb	$1, -4(%eax,%ecx,4)
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebp
	je	LBB40_8
## BB#12:                               ##   in Loop: Header=BB40_4 Depth=1
	movl	%ebp, %edx
	addl	$-12, %edx
	movl	%ebp, %eax
	movl	16(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$11, %eax
	ja	LBB40_14
## BB#13:                               ##   in Loop: Header=BB40_4 Depth=1
	movl	$14, (%esp)
	movl	%edx, 12(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	12(%esp), %edx          ## 4-byte Reload
LBB40_14:                               ## %pol1_F2x.exit.i
                                        ##   in Loop: Header=BB40_4 Depth=1
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%edx, (%eax)
	movl	$738197507, -12(%ebp)   ## imm = 0x2C000003
	movl	52(%esp), %eax
	movl	%eax, -8(%ebp)
	movl	$1, -4(%ebp)
	movl	20(%esp), %ebp          ## 4-byte Reload
	movl	%edx, (%ebp,%edi,4)
	jmp	LBB40_16
LBB40_7:                                ## %mpodd.exit.thread.i
                                        ##   in Loop: Header=BB40_4 Depth=1
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebp
LBB40_8:                                ##   in Loop: Header=BB40_4 Depth=1
	leal	-8(%ebp), %ebx
	movl	%ebp, %eax
	movl	16(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$7, %eax
	ja	LBB40_10
## BB#9:                                ##   in Loop: Header=BB40_4 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB40_10:                               ## %pol0_F2x.exit.i
                                        ##   in Loop: Header=BB40_4 Depth=1
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	$738197506, -8(%ebp)    ## imm = 0x2C000002
	movl	52(%esp), %eax
	movl	%eax, -4(%ebp)
	movl	20(%esp), %ebp          ## 4-byte Reload
	movl	%ebx, (%ebp,%edi,4)
	movl	48(%esp), %ebx
	.align	4, 0x90
LBB40_16:                               ##   in Loop: Header=BB40_4 Depth=1
	incl	%edi
	cmpl	%esi, %edi
	jl	LBB40_4
LBB40_17:                               ## %._crit_edge
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_FlxX_renormalize
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2c_to_ZC
	.align	4, 0x90
_F2c_to_ZC:                             ## @F2c_to_ZC
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L41$pb
L41$pb:
	popl	%edi
	movl	%edi, 52(%esp)          ## 4-byte Spill
	movl	80(%esp), %eax
	movl	4(%eax), %esi
	movl	L_avma$non_lazy_ptr-L41$pb(%edi), %ebp
	movl	(%ebp), %edx
	movl	%edx, 28(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L41$pb(%edi), %eax
	movl	%edx, %ecx
	subl	(%eax), %ecx
	leal	1(%esi), %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	shrl	$2, %ecx
	cmpl	%eax, %ecx
	movl	%esi, %eax
	notl	%eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	leal	(%edx,%eax,4), %eax
	movl	%eax, 20(%esp)          ## 4-byte Spill
	jae	LBB41_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB41_2:                                ## %new_chunk.exit.i
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebp)
	movl	36(%esp), %ebp          ## 4-byte Reload
	cmpl	$16777216, %ebp         ## imm = 0x1000000
	jb	LBB41_4
## BB#3:
	leal	L_.str4-L41$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB41_4:                                ## %cgetg.exit
	movl	%ebp, %eax
	orl	$603979776, %eax        ## imm = 0x24000000
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	80(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	cmpl	$3, %ecx
	jb	LBB41_14
## BB#5:                                ## %.preheader.lr.ph
	shll	$2, %esi
	movl	28(%esp), %ecx          ## 4-byte Reload
	subl	%esi, %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	$2, %ebx
	movl	$1, %esi
	.align	4, 0x90
LBB41_6:                                ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB41_11 Depth 2
	cmpl	%ebp, %esi
	jge	LBB41_13
## BB#7:                                ## %.lr.ph
                                        ##   in Loop: Header=BB41_6 Depth=1
	movl	32(%esp), %eax          ## 4-byte Reload
	leal	(%esi,%eax), %ebp
	cmpl	$-32, %ebp
	movl	$-32, %edx
	cmoval	%ebp, %edx
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	%edx, %ecx
	notl	%ecx
	negl	%edx
	movl	%esi, %eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	xorl	%esi, %esi
	testb	$1, %dl
	movl	%eax, %edx
	movl	80(%esp), %eax
	je	LBB41_9
## BB#8:                                ##   in Loop: Header=BB41_6 Depth=1
	movl	(%eax,%ebx,4), %edx
	testb	$1, %dl
	movl	L_gen_0$non_lazy_ptr-L41$pb(%edi), %edx
	cmovnel	L_gen_1$non_lazy_ptr-L41$pb(%edi), %edx
	movl	(%edx), %edx
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%edx, (%ecx,%ebp,4)
	movl	$1, %esi
	movl	44(%esp), %ecx          ## 4-byte Reload
	leal	1(%ecx), %edx
	movl	48(%esp), %ecx          ## 4-byte Reload
LBB41_9:                                ## %.lr.ph.split
                                        ##   in Loop: Header=BB41_6 Depth=1
	testl	%ecx, %ecx
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	je	LBB41_12
## BB#10:                               ## %.lr.ph.split.split
                                        ##   in Loop: Header=BB41_6 Depth=1
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	movl	24(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edx,4), %edx
	.align	4, 0x90
LBB41_11:                               ##   Parent Loop BB41_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%eax,%ebx,4), %ebp
	btl	%esi, %ebp
	movl	L_gen_1$non_lazy_ptr-L41$pb(%edi), %ebp
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L41$pb(%ecx), %edi
	movl	%edi, %ebx
	cmovbl	%ebp, %ebx
	movl	(%ebx), %ebx
	movl	%ebx, -4(%edx)
	leal	1(%esi), %ebx
	movl	%eax, %ecx
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	(%ecx,%eax,4), %eax
	btl	%ebx, %eax
	cmovbl	%ebp, %edi
	movl	(%edi), %eax
	movl	52(%esp), %edi          ## 4-byte Reload
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	48(%esp), %ecx          ## 4-byte Reload
	addl	$2, %esi
	addl	$8, %edx
	cmpl	%ecx, %ebx
	movl	56(%esp), %ebx          ## 4-byte Reload
	jne	LBB41_11
LBB41_12:                               ## %..critedge_crit_edge
                                        ##   in Loop: Header=BB41_6 Depth=1
	movl	44(%esp), %esi          ## 4-byte Reload
	subl	40(%esp), %esi          ## 4-byte Folded Reload
	movl	(%eax), %eax
	movl	36(%esp), %ebp          ## 4-byte Reload
LBB41_13:                               ## %.critedge
                                        ##   in Loop: Header=BB41_6 Depth=1
	incl	%ebx
	movl	%eax, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	cmpl	%edx, %ebx
	jl	LBB41_6
LBB41_14:                               ## %._crit_edge
	movl	20(%esp), %eax          ## 4-byte Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2m_to_ZM
	.align	4, 0x90
_F2m_to_ZM:                             ## @F2m_to_ZM
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L42$pb
L42$pb:
	popl	%eax
	movl	32(%esp), %edi
	movl	(%edi), %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	L_avma$non_lazy_ptr-L42$pb(%eax), %ebp
	movl	(%ebp), %ecx
	leal	(,%ebx,4), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	L_bot$non_lazy_ptr-L42$pb(%eax), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	jae	LBB42_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB42_2:                                ## %cgetg.exit
	movl	%esi, (%ebp)
	movl	%ebx, %eax
	orl	$637534208, %eax        ## imm = 0x26000000
	movl	%eax, (%esi)
	cmpl	$2, %ebx
	jb	LBB42_5
## BB#3:                                ## %.lr.ph.preheader
	movl	$1, %ebp
	.align	4, 0x90
LBB42_4:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%ebp,4), %eax
	movl	%eax, (%esp)
	calll	_F2c_to_ZC
	movl	%eax, (%esi,%ebp,4)
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	LBB42_4
LBB42_5:                                ## %._crit_edge
	movl	%esi, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_ZV_to_F2v
	.align	4, 0x90
_ZV_to_F2v:                             ## @ZV_to_F2v
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L43$pb
L43$pb:
	popl	%eax
	movl	48(%esp), %ecx
	movl	$16777215, %edi         ## imm = 0xFFFFFF
	andl	(%ecx), %edi
	leal	94(%edi), %ebx
	shrl	$5, %ebx
	movl	L_avma$non_lazy_ptr-L43$pb(%eax), %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	movl	(%ecx), %edx
	movl	%edx, 24(%esp)          ## 4-byte Spill
	leal	(,%ebx,4), %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	L_bot$non_lazy_ptr-L43$pb(%eax), %eax
	movl	%edx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	leal	-1(%edi), %ebp
	jae	LBB43_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB43_2:                                ## %new_chunk.exit.i
	movl	%esi, 16(%esp)          ## 4-byte Spill
	movl	12(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	%ebx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%esi)
	movl	$1, %eax
	movl	$1, %ecx
	subl	%ebx, %ecx
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%ebp, %esi
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	%esi, (%edx,%ecx,4)
	cmpl	$2, %edi
	jb	LBB43_10
## BB#3:                                ## %.lr.ph.preheader
	movl	$32, %ecx
	xorl	%edx, %edx
	.align	4, 0x90
LBB43_4:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$32, %ecx
	jne	LBB43_6
## BB#5:                                ##   in Loop: Header=BB43_4 Depth=1
	incl	%eax
	movl	%eax, %ecx
	subl	%ebx, %ecx
	movl	24(%esp), %edi          ## 4-byte Reload
	movl	$0, (%edi,%ecx,4)
	xorl	%ecx, %ecx
LBB43_6:                                ##   in Loop: Header=BB43_4 Depth=1
	movl	48(%esp), %edi
	movl	4(%edi,%edx,4), %edi
	movl	4(%edi), %ebp
	cmpl	$1073741824, %ebp       ## imm = 0x40000000
	jb	LBB43_9
## BB#7:                                ## %mpodd.exit
                                        ##   in Loop: Header=BB43_4 Depth=1
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	testb	$1, -4(%edi,%ebp,4)
	je	LBB43_9
## BB#8:                                ##   in Loop: Header=BB43_4 Depth=1
	movl	$1, %edi
	shll	%cl, %edi
	movl	%eax, %ebp
	subl	%ebx, %ebp
	movl	%ebx, %esi
	movl	24(%esp), %ebx          ## 4-byte Reload
	orl	%edi, (%ebx,%ebp,4)
	movl	%esi, %ebx
	movl	20(%esp), %esi          ## 4-byte Reload
LBB43_9:                                ## %.critedge
                                        ##   in Loop: Header=BB43_4 Depth=1
	incl	%ecx
	incl	%edx
	cmpl	%esi, %edx
	jl	LBB43_4
LBB43_10:                               ## %._crit_edge
	movl	16(%esp), %eax          ## 4-byte Reload
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_Flv_to_F2v
	.align	4, 0x90
_Flv_to_F2v:                            ## @Flv_to_F2v
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L44$pb
L44$pb:
	popl	%eax
	movl	32(%esp), %ecx
	movl	$16777215, %edi         ## imm = 0xFFFFFF
	andl	(%ecx), %edi
	leal	94(%edi), %ebx
	shrl	$5, %ebx
	movl	L_avma$non_lazy_ptr-L44$pb(%eax), %edx
	movl	(%edx), %ebp
	leal	(,%ebx,4), %ecx
	movl	%ebp, %esi
	subl	%ecx, %esi
	movl	L_bot$non_lazy_ptr-L44$pb(%eax), %eax
	movl	%ebp, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	leal	-1(%edi), %eax
	movl	%eax, 8(%esp)           ## 4-byte Spill
	jae	LBB44_2
## BB#1:
	movl	$14, (%esp)
	movl	%edx, 4(%esp)           ## 4-byte Spill
	calll	_pari_err
	movl	4(%esp), %edx           ## 4-byte Reload
LBB44_2:                                ## %new_chunk.exit.i
	movl	%esi, (%edx)
	movl	%ebx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%esi)
	movl	%esi, 4(%esp)           ## 4-byte Spill
	movl	$1, %esi
	movl	$1, %ecx
	subl	%ebx, %ecx
	movl	8(%esp), %eax           ## 4-byte Reload
	movl	%eax, (%ebp,%ecx,4)
	cmpl	$2, %edi
	jb	LBB44_9
## BB#3:                                ## %.lr.ph.preheader
	movl	$32, %ecx
	xorl	%edx, %edx
	.align	4, 0x90
LBB44_4:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$32, %ecx
	jne	LBB44_6
## BB#5:                                ##   in Loop: Header=BB44_4 Depth=1
	incl	%esi
	movl	%esi, %ecx
	subl	%ebx, %ecx
	movl	$0, (%ebp,%ecx,4)
	xorl	%ecx, %ecx
LBB44_6:                                ##   in Loop: Header=BB44_4 Depth=1
	movl	32(%esp), %eax
	testb	$1, 4(%eax,%edx,4)
	je	LBB44_8
## BB#7:                                ##   in Loop: Header=BB44_4 Depth=1
	movl	$1, %edi
	shll	%cl, %edi
	movl	%esi, %eax
	subl	%ebx, %eax
	orl	%edi, (%ebp,%eax,4)
LBB44_8:                                ##   in Loop: Header=BB44_4 Depth=1
	incl	%ecx
	incl	%edx
	cmpl	8(%esp), %edx           ## 4-byte Folded Reload
	jl	LBB44_4
LBB44_9:                                ## %._crit_edge
	movl	4(%esp), %eax           ## 4-byte Reload
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_ZM_to_F2m
	.align	4, 0x90
_ZM_to_F2m:                             ## @ZM_to_F2m
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L45$pb
L45$pb:
	popl	%eax
	movl	32(%esp), %edi
	movl	(%edi), %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	L_avma$non_lazy_ptr-L45$pb(%eax), %ebp
	movl	(%ebp), %ecx
	leal	(,%ebx,4), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	L_bot$non_lazy_ptr-L45$pb(%eax), %eax
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	jae	LBB45_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB45_2:                                ## %cgetg.exit
	movl	%esi, (%ebp)
	movl	%ebx, %eax
	orl	$637534208, %eax        ## imm = 0x26000000
	movl	%eax, (%esi)
	cmpl	$2, %ebx
	jb	LBB45_5
## BB#3:                                ## %.lr.ph.preheader
	movl	$1, %ebp
	.align	4, 0x90
LBB45_4:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%edi,%ebp,4), %eax
	movl	%eax, (%esp)
	calll	_ZV_to_F2v
	movl	%eax, (%esi,%ebp,4)
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	LBB45_4
LBB45_5:                                ## %.loopexit
	movl	%esi, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_Flm_to_F2m
	.align	4, 0x90
_Flm_to_F2m:                            ## @Flm_to_F2m
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L46$pb
L46$pb:
	popl	%eax
	movl	64(%esp), %ecx
	movl	$16777215, %esi         ## imm = 0xFFFFFF
	andl	(%ecx), %esi
	movl	L_avma$non_lazy_ptr-L46$pb(%eax), %edi
	movl	%edi, 28(%esp)          ## 4-byte Spill
	movl	(%edi), %edx
	movl	%edx, 16(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %ecx
	movl	%edx, %ebx
	subl	%ecx, %ebx
	movl	L_bot$non_lazy_ptr-L46$pb(%eax), %ecx
	movl	%ecx, 12(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB46_2
## BB#1:
	movl	$14, (%esp)
	calll	_pari_err
LBB46_2:                                ## %cgetg.exit
	movl	%edi, %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	movl	%ebx, (%ecx)
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	orl	$637534208, %eax        ## imm = 0x26000000
	movl	%eax, (%ebx)
	movl	%ebx, 8(%esp)           ## 4-byte Spill
	cmpl	$2, %esi
	jb	LBB46_14
## BB#3:
	movl	$1, %esi
	.align	4, 0x90
LBB46_4:                                ## %.lr.ph
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB46_8 Depth 2
	movl	%esi, 24(%esp)          ## 4-byte Spill
	movl	64(%esp), %eax
	movl	(%eax,%esi,4), %esi
	movl	(%esi), %edi
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	%eax, %edi
	leal	94(%edi), %ebp
	shrl	$5, %ebp
	movl	(%ecx), %ebx
	leal	(,%ebp,4), %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	movl	12(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	movl	%ebp, %ecx
	shrl	$2, %eax
	cmpl	%ecx, %eax
	leal	-1(%edi), %ebp
	jae	LBB46_6
## BB#5:                                ##   in Loop: Header=BB46_4 Depth=1
	movl	$14, (%esp)
	movl	%edx, 32(%esp)          ## 4-byte Spill
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	movl	%ecx, %ebp
	calll	_pari_err
	movl	%ebp, %ecx
	movl	40(%esp), %ebp          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
LBB46_6:                                ## %new_chunk.exit.i.i
                                        ##   in Loop: Header=BB46_4 Depth=1
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	%edx, 32(%esp)          ## 4-byte Spill
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%edx, (%eax)
	movl	%ecx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%edx)
	movl	$1, %eax
	subl	%ecx, %eax
	movl	%ebp, (%ebx,%eax,4)
	cmpl	$2, %edi
	movl	%ebx, %eax
	jb	LBB46_13
## BB#7:                                ## %.lr.ph.i.preheader
                                        ##   in Loop: Header=BB46_4 Depth=1
	movl	$32, %ecx
	movl	$1, 40(%esp)            ## 4-byte Folded Spill
	xorl	%edx, %edx
	.align	4, 0x90
LBB46_8:                                ## %.lr.ph.i
                                        ##   Parent Loop BB46_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$32, %ecx
	jne	LBB46_10
## BB#9:                                ##   in Loop: Header=BB46_8 Depth=2
	movl	40(%esp), %ecx          ## 4-byte Reload
	incl	%ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	subl	36(%esp), %ecx          ## 4-byte Folded Reload
	movl	$0, (%eax,%ecx,4)
	xorl	%ecx, %ecx
LBB46_10:                               ##   in Loop: Header=BB46_8 Depth=2
	testb	$1, 4(%esi,%edx,4)
	je	LBB46_12
## BB#11:                               ##   in Loop: Header=BB46_8 Depth=2
	movl	%esi, %ebx
	movl	$1, %esi
	shll	%cl, %esi
	movl	%ebp, %edi
	movl	%eax, %ebp
	movl	40(%esp), %eax          ## 4-byte Reload
	subl	36(%esp), %eax          ## 4-byte Folded Reload
	orl	%esi, (%ebp,%eax,4)
	movl	%ebp, %eax
	movl	%edi, %ebp
	movl	%ebx, %esi
LBB46_12:                               ##   in Loop: Header=BB46_8 Depth=2
	incl	%ecx
	incl	%edx
	cmpl	%ebp, %edx
	jl	LBB46_8
LBB46_13:                               ## %Flv_to_F2v.exit
                                        ##   in Loop: Header=BB46_4 Depth=1
	movl	24(%esp), %esi          ## 4-byte Reload
	movl	%esi, %eax
	movl	20(%esp), %ecx          ## 4-byte Reload
	subl	%ecx, %eax
	movl	16(%esp), %edx          ## 4-byte Reload
	movl	32(%esp), %edi          ## 4-byte Reload
	movl	%edi, (%edx,%eax,4)
	incl	%esi
	cmpl	%ecx, %esi
	movl	28(%esp), %ecx          ## 4-byte Reload
	jl	LBB46_4
LBB46_14:                               ## %.loopexit
	movl	8(%esp), %eax           ## 4-byte Reload
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_F2v_add_inplace
	.align	4, 0x90
_F2v_add_inplace:                       ## @F2v_add_inplace
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	24(%esp), %ecx
	movl	20(%esp), %eax
	movl	(%ecx), %esi
	movl	%esi, %edi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	addl	$6, %esi
	andl	$7, %esi
	movl	%edi, %ebx
	subl	%esi, %ebx
	movl	$2, %edx
	cmpl	$3, %ebx
	jl	LBB47_4
## BB#1:                                ## %.lr.ph
	addl	$-3, %edi
	subl	%esi, %edi
	andl	$-8, %edi
	movl	$2, %edx
	.align	4, 0x90
LBB47_2:                                ## =>This Inner Loop Header: Depth=1
	movl	(%ecx,%edx,4), %ebp
	xorl	%ebp, (%eax,%edx,4)
	movl	4(%ecx,%edx,4), %ebp
	xorl	%ebp, 4(%eax,%edx,4)
	movl	8(%ecx,%edx,4), %ebp
	xorl	%ebp, 8(%eax,%edx,4)
	movl	12(%ecx,%edx,4), %ebp
	xorl	%ebp, 12(%eax,%edx,4)
	movl	16(%ecx,%edx,4), %ebp
	xorl	%ebp, 16(%eax,%edx,4)
	movl	20(%ecx,%edx,4), %ebp
	xorl	%ebp, 20(%eax,%edx,4)
	movl	24(%ecx,%edx,4), %ebp
	xorl	%ebp, 24(%eax,%edx,4)
	movl	28(%ecx,%edx,4), %ebp
	xorl	%ebp, 28(%eax,%edx,4)
	addl	$8, %edx
	cmpl	%ebx, %edx
	jl	LBB47_2
## BB#3:                                ## %._crit_edge
	addl	$10, %edi
	movl	%edi, %edx
LBB47_4:
	decl	%esi
	cmpl	$6, %esi
	ja	LBB47_13
## BB#5:
	calll	L47$pb
L47$pb:
	popl	%edi
Ltmp0 = LJTI47_0-L47$pb
	addl	Ltmp0(%edi,%esi,4), %edi
	jmpl	*%edi
LBB47_6:
	movl	(%ecx,%edx,4), %esi
	xorl	%esi, (%eax,%edx,4)
	orl	$1, %edx
LBB47_7:
	movl	(%ecx,%edx,4), %esi
	xorl	%esi, (%eax,%edx,4)
	incl	%edx
LBB47_8:
	movl	(%ecx,%edx,4), %esi
	xorl	%esi, (%eax,%edx,4)
	incl	%edx
LBB47_9:
	movl	(%ecx,%edx,4), %esi
	xorl	%esi, (%eax,%edx,4)
	incl	%edx
LBB47_10:
	movl	(%ecx,%edx,4), %esi
	xorl	%esi, (%eax,%edx,4)
	incl	%edx
LBB47_11:
	movl	(%ecx,%edx,4), %esi
	xorl	%esi, (%eax,%edx,4)
	incl	%edx
LBB47_12:
	movl	(%ecx,%edx,4), %ecx
	xorl	%ecx, (%eax,%edx,4)
LBB47_13:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
	.align	2, 0x90
L47_0_set_12 = LBB47_12-L47$pb
L47_0_set_11 = LBB47_11-L47$pb
L47_0_set_10 = LBB47_10-L47$pb
L47_0_set_9 = LBB47_9-L47$pb
L47_0_set_8 = LBB47_8-L47$pb
L47_0_set_7 = LBB47_7-L47$pb
L47_0_set_6 = LBB47_6-L47$pb
LJTI47_0:
	.long	L47_0_set_12
	.long	L47_0_set_11
	.long	L47_0_set_10
	.long	L47_0_set_9
	.long	L47_0_set_8
	.long	L47_0_set_7
	.long	L47_0_set_6

	.align	4, 0x90
_F2x_shiftip:                           ## @F2x_shiftip
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L48$pb
L48$pb:
	popl	%esi
	movl	64(%esp), %edi
	testl	%edi, %edi
	je	LBB48_2
## BB#1:
	movl	(%edx), %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	cmpl	$2, %eax
	je	LBB48_2
## BB#3:
	movl	%edx, 24(%esp)          ## 4-byte Spill
	movl	%eax, 36(%esp)          ## 4-byte Spill
	leal	(%eax,%edi), %ebx
	movl	%ecx, %ebp
	movl	%ebx, 28(%esp)          ## 4-byte Spill
	leal	(,%ebx,4), %eax
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	L_bot$non_lazy_ptr-L48$pb(%esi), %eax
                                        ## kill: ECX<def> EBP<kill>
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	movl	L_avma$non_lazy_ptr-L48$pb(%esi), %ebx
	movl	%esi, 32(%esp)          ## 4-byte Spill
	movl	%ebp, (%ebx)
	movl	%ebp, %esi
	jae	LBB48_5
## BB#4:
	movl	$14, (%esp)
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
LBB48_5:                                ## %new_chunk.exit
	movl	%edx, (%ebx)
	movl	36(%esp), %ebx          ## 4-byte Reload
	cmpl	$3, %ebx
	movl	%esi, 40(%esp)          ## 4-byte Spill
	jb	LBB48_24
## BB#6:                                ## %.lr.ph8
	movl	24(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ebx,4), %ecx
	movl	$2, %eax
	movl	$2, %edx
	subl	%ebx, %edx
	cmpl	$3, %ebx
	movl	$-1, %esi
	cmoval	%edx, %esi
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	$3, %edx
	movl	$3, %esi
	cmoval	%ebx, %esi
	cmpl	$2, %esi
	jne	LBB48_15
## BB#7:
	movl	40(%esp), %edx          ## 4-byte Reload
	jmp	LBB48_8
LBB48_2:
	calll	_gerepileuptoleaf
	jmp	LBB48_46
LBB48_15:                               ## %overflow.checked
	movl	%esi, 16(%esp)          ## 4-byte Spill
	leal	-2(%esi), %esi
	andl	$-8, %esi
	leal	2(%esi), %eax
	cmpl	$3, %ebx
	cmoval	%ebx, %edx
	cmpl	$2, %eax
	jne	LBB48_17
## BB#16:
	movl	$2, %eax
	movl	40(%esp), %ebp          ## 4-byte Reload
	movl	%ebp, %edx
	jmp	LBB48_22
LBB48_17:                               ## %vector.memcheck
	movl	%eax, 12(%esp)          ## 4-byte Spill
	leal	2(%ebx), %eax
	subl	%edx, %eax
	movl	24(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%eax,4), %eax
	movl	40(%esp), %ebp          ## 4-byte Reload
	leal	-4(%ebp), %ebx
	cmpl	%eax, %ebx
	ja	LBB48_19
## BB#18:                               ## %vector.memcheck
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	24(%esp), %ebx          ## 4-byte Reload
	leal	-4(%ebx,%eax,4), %eax
	movl	%eax, 8(%esp)           ## 4-byte Spill
	movl	$2, %eax
	movl	%ebp, %ebx
	movl	$2, %ebp
	subl	%edx, %ebp
	leal	(%ebx,%ebp,4), %edx
	movl	%ebx, %ebp
	cmpl	%edx, 8(%esp)           ## 4-byte Folded Reload
	movl	%ebp, %edx
	jbe	LBB48_22
LBB48_19:                               ## %vector.body.preheader
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %eax
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%ebp, %ebx
	movl	36(%esp), %ebp          ## 4-byte Reload
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	24(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %ecx
	leal	-16(%esi,%ebp,4), %eax
	leal	-16(%ebx), %esi
	cmpl	$3, %ebp
	movl	$3, %ebx
	cmoval	%ebp, %ebx
	addl	$-2, %ebx
	andl	$-8, %ebx
	.align	4, 0x90
LBB48_20:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	-16(%eax), %xmm0
	movups	(%eax), %xmm1
	movups	%xmm1, (%esi)
	movups	%xmm0, -16(%esi)
	addl	$-32, %eax
	addl	$-32, %esi
	addl	$-8, %ebx
	jne	LBB48_20
## BB#21:
	movl	12(%esp), %eax          ## 4-byte Reload
	movl	40(%esp), %ebp          ## 4-byte Reload
LBB48_22:                               ## %middle.block
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	cmpl	%eax, 16(%esp)          ## 4-byte Folded Reload
	movl	36(%esp), %ebx          ## 4-byte Reload
	je	LBB48_23
LBB48_8:                                ## %scalar.ph.preheader
	leal	1(%eax), %esi
	cmpl	%ebx, %esi
	cmovgel	%esi, %ebx
	movl	%ebx, %ebp
	subl	%eax, %ebp
	decl	%ebx
	subl	%eax, %ebx
	movl	%ebx, 24(%esp)          ## 4-byte Spill
	movl	%ebp, %ebx
	testb	$7, %bl
	je	LBB48_12
## BB#9:                                ## %scalar.ph.prol.preheader
	movl	36(%esp), %ebx          ## 4-byte Reload
	cmpl	%ebx, %esi
	cmovll	%ebx, %esi
	subl	%eax, %esi
	andl	$7, %esi
	negl	%esi
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB48_10:                               ## %scalar.ph.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ecx,%ebx), %ebp
	movl	%ebp, -4(%edx,%ebx)
	incl	%eax
	addl	$-4, %ebx
	incl	%esi
	jne	LBB48_10
## BB#11:                               ## %scalar.ph.preheader.split.loopexit
	addl	%ebx, %edx
	addl	%ebx, %ecx
LBB48_12:                               ## %scalar.ph.preheader.split
	cmpl	$7, 24(%esp)            ## 4-byte Folded Reload
	movl	36(%esp), %ebx          ## 4-byte Reload
	jb	LBB48_23
## BB#13:                               ## %scalar.ph.preheader.split.split
	addl	$-4, %edx
	addl	$-4, %ecx
	.align	4, 0x90
LBB48_14:                               ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ecx), %esi
	movl	%esi, (%edx)
	movl	-4(%ecx), %esi
	movl	%esi, -4(%edx)
	movl	-8(%ecx), %esi
	movl	%esi, -8(%edx)
	movl	-12(%ecx), %esi
	movl	%esi, -12(%edx)
	movl	-16(%ecx), %esi
	movl	%esi, -16(%edx)
	movl	-20(%ecx), %esi
	movl	%esi, -20(%edx)
	movl	-24(%ecx), %esi
	movl	%esi, -24(%edx)
	movl	-28(%ecx), %esi
	movl	%esi, -28(%edx)
	addl	$8, %eax
	addl	$-32, %edx
	addl	$-32, %ecx
	cmpl	%ebx, %eax
	jl	LBB48_14
LBB48_23:                               ## %..preheader_crit_edge
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	40(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
LBB48_24:                               ## %.preheader
	testl	%edi, %edi
	jle	LBB48_25
## BB#26:                               ## %.lr.ph
	movl	%edi, %eax
	negl	%eax
	xorl	%edx, %edx
	testl	%edi, %edi
	movl	40(%esp), %ebp          ## 4-byte Reload
	movl	%ebp, %ecx
	je	LBB48_27
## BB#33:                               ## %overflow.checked76
	movl	%edi, %ebx
	andl	$-8, %ebx
	xorl	%edx, %edx
	movl	%edi, %esi
	andl	$-8, %esi
	movl	%ebp, %ecx
	je	LBB48_41
## BB#34:                               ## %vector.body67.preheader
	shll	$2, %ebx
	leal	-8(%esi), %edx
	shrl	$3, %edx
	leal	1(%edx), %ecx
	movl	$0, 36(%esp)            ## 4-byte Folded Spill
	testb	$1, %cl
	je	LBB48_36
## BB#35:                               ## %vector.body67.prol
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%ebp)
	movups	%xmm0, -32(%ebp)
	movl	$8, 36(%esp)            ## 4-byte Folded Spill
LBB48_36:                               ## %vector.body67.preheader.split
	movl	%ebp, %ecx
	subl	%ebx, %ecx
	testl	%edx, %edx
	jne	LBB48_38
## BB#37:
	movl	%esi, %edx
	jmp	LBB48_41
LBB48_25:
	movl	40(%esp), %ebp          ## 4-byte Reload
	jmp	LBB48_43
LBB48_38:                               ## %vector.body67.preheader.split.split
	movl	$-4, %edx
	subl	36(%esp), %edx          ## 4-byte Folded Reload
	leal	(%ebp,%edx,4), %edx
	movl	%ebp, 40(%esp)          ## 4-byte Spill
	movl	%esi, %ebx
	subl	36(%esp), %ebx          ## 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	.align	4, 0x90
LBB48_39:                               ## %vector.body67
                                        ## =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%edx)
	movups	%xmm0, -16(%edx)
	movups	%xmm0, -32(%edx)
	movups	%xmm0, -48(%edx)
	addl	$-64, %edx
	addl	$-16, %ebx
	jne	LBB48_39
## BB#40:
	movl	%esi, %edx
	movl	40(%esp), %ebp          ## 4-byte Reload
LBB48_41:                               ## %middle.block68
	cmpl	%edi, %edx
	je	LBB48_42
LBB48_27:                               ## %scalar.ph69.preheader
	movl	%edi, %ebx
	subl	%edx, %ebx
	leal	-1(%edi), %esi
	subl	%edx, %esi
	testb	$7, %bl
	je	LBB48_30
## BB#28:                               ## %scalar.ph69.prol.preheader
	andl	$7, %ebx
	negl	%ebx
	.align	4, 0x90
LBB48_29:                               ## %scalar.ph69.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	$0, -4(%ecx)
	addl	$-4, %ecx
	incl	%edx
	incl	%ebx
	jne	LBB48_29
LBB48_30:                               ## %scalar.ph69.preheader.split
	cmpl	$7, %esi
	jb	LBB48_42
## BB#31:                               ## %scalar.ph69.preheader.split.split
	addl	$-4, %ecx
	subl	%edx, %edi
	xorps	%xmm0, %xmm0
	.align	4, 0x90
LBB48_32:                               ## %scalar.ph69
                                        ## =>This Inner Loop Header: Depth=1
	movl	$0, (%ecx)
	movl	$0, -4(%ecx)
	movl	$0, -8(%ecx)
	movl	$0, -12(%ecx)
	movups	%xmm0, -28(%ecx)
	addl	$-32, %ecx
	addl	$-8, %edi
	jne	LBB48_32
LBB48_42:                               ## %._crit_edge
	leal	(%ebp,%eax,4), %ebp
LBB48_43:
	addl	$-8, %ebp
	movl	28(%esp), %esi          ## 4-byte Reload
	cmpl	$16777216, %esi         ## imm = 0x1000000
	movl	32(%esp), %eax          ## 4-byte Reload
	jb	LBB48_45
## BB#44:
	leal	L_.str4-L48$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB48_45:
	orl	$738197504, %esi        ## imm = 0x2C000000
	movl	%esi, (%ebp)
	movl	%ebp, %eax
LBB48_46:
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
_F2x_addshift:                          ## @F2x_addshift
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	128(%esp), %edi
	movl	(%edx), %eax
	movl	%eax, 84(%esp)          ## 4-byte Spill
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	%eax, 80(%esp)          ## 4-byte Spill
	leal	-2(%eax), %eax
	movl	%eax, 76(%esp)          ## 4-byte Spill
	movl	(%ecx), %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	%ebx, 68(%esp)          ## 4-byte Spill
	subl	%edi, %eax
	calll	L49$pb
L49$pb:
	popl	%edx
	movl	L_avma$non_lazy_ptr-L49$pb(%edx), %esi
	movl	%esi, 88(%esp)          ## 4-byte Spill
	movl	(%esi), %esi
	movl	4(%ecx), %ebp
	movl	%ebp, 64(%esp)          ## 4-byte Spill
	leal	-2(%ebx), %ebx
	leal	8(%ecx), %ebp
	movl	%ebp, 104(%esp)         ## 4-byte Spill
	movl	100(%esp), %ebp         ## 4-byte Reload
	leal	8(%ebp), %ebp
	movl	%ebp, 60(%esp)          ## 4-byte Spill
	jle	LBB49_1
## BB#15:
	movl	%ebx, 96(%esp)          ## 4-byte Spill
	movl	%eax, 92(%esp)          ## 4-byte Spill
	leal	(,%edi,4), %eax
	movl	%eax, 52(%esp)          ## 4-byte Spill
	movl	%esi, %ebx
	subl	%eax, %ebx
	movl	L_bot$non_lazy_ptr-L49$pb(%edx), %ebp
	movl	%edx, 76(%esp)          ## 4-byte Spill
	movl	(%ebp), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	shrl	$2, %ecx
	cmpl	%edi, %ecx
	jae	LBB49_17
## BB#16:
	movl	$14, (%esp)
	calll	_pari_err
	movl	128(%esp), %edi
	movl	(%ebp), %eax
LBB49_17:                               ## %new_chunk.exit3
	movl	%eax, 44(%esp)          ## 4-byte Spill
	movl	%ebx, 48(%esp)          ## 4-byte Spill
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	%edi, %edx
	movl	100(%esp), %eax         ## 4-byte Reload
	leal	8(%eax,%edx,4), %edi
	movl	92(%esp), %ecx          ## 4-byte Reload
	movl	96(%esp), %ebp          ## 4-byte Reload
	cmpl	%ebp, %ecx
	movl	%ecx, %eax
	cmovgl	%ebp, %eax
	movl	%eax, 100(%esp)         ## 4-byte Spill
	cmovgel	%ecx, %ebp
	movl	%edi, %eax
	movl	104(%esp), %ecx         ## 4-byte Reload
	cmovgl	%ecx, %eax
	movl	%eax, 40(%esp)          ## 4-byte Spill
	cmovgl	%edi, %ecx
	movl	%ecx, 104(%esp)         ## 4-byte Spill
	leal	2(%ebp), %eax
	movl	%ebx, %ecx
	movl	%ebp, %ebx
	subl	44(%esp), %ecx          ## 4-byte Folded Reload
	movl	$-2, %ebp
	subl	%ebx, %ebp
	subl	%edx, %ebp
	movl	%ebp, 44(%esp)          ## 4-byte Spill
	shrl	$2, %ecx
	cmpl	%eax, %ecx
	leal	(%esi,%ebp,4), %ebp
	jae	LBB49_19
## BB#18:
	movl	$14, (%esp)
	movl	%ebx, 72(%esp)          ## 4-byte Spill
	movl	%eax, %ebx
	calll	_pari_err
	movl	%ebx, %eax
	movl	72(%esp), %ebx          ## 4-byte Reload
LBB49_19:                               ## %new_chunk.exit.i
	movl	88(%esp), %ecx          ## 4-byte Reload
	movl	%ebp, (%ecx)
	cmpl	$16777216, %eax         ## imm = 0x1000000
	movl	%ebx, %edx
	jb	LBB49_21
## BB#20:
	movl	%eax, 56(%esp)          ## 4-byte Spill
	movl	76(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L49$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%edx, %ebx
	calll	_pari_err
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%ebx, %edx
LBB49_21:                               ## %cgetg.exit
	movl	%eax, 56(%esp)          ## 4-byte Spill
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%ebp)
	movl	%ebp, 88(%esp)          ## 4-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 100(%esp)           ## 4-byte Folded Reload
	jle	LBB49_42
## BB#22:                               ## %.lr.ph9.i
	movl	%edx, 72(%esp)          ## 4-byte Spill
	movl	92(%esp), %eax          ## 4-byte Reload
	notl	%eax
	movl	$1, %ebp
	subl	68(%esp), %ebp          ## 4-byte Folded Reload
	cmpl	%eax, %ebp
	cmovgel	%ebp, %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	addl	$2, 44(%esp)            ## 4-byte Folded Spill
	movl	128(%esp), %ecx
	leal	1(%ecx), %ebx
	movl	84(%esp), %ecx          ## 4-byte Reload
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	subl	%ecx, %ebx
	cmpl	%ebp, %ebx
	movl	%ebp, %eax
	cmovgel	%ebx, %eax
	xorl	%edx, %edx
	cmpl	$-1, %eax
	je	LBB49_23
## BB#28:                               ## %overflow.checked
	notl	%eax
	movl	%eax, 20(%esp)          ## 4-byte Spill
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	leal	-2(%ecx), %ebx
	movl	%ebp, %edx
	movl	%edx, 16(%esp)          ## 4-byte Spill
	movl	128(%esp), %ebp
	movl	%ebp, %eax
	subl	%eax, %ebx
	movl	%ebx, 8(%esp)           ## 4-byte Spill
	movl	96(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	movl	36(%esp), %ebx          ## 4-byte Reload
	cmpl	%edx, %ebx
	cmovgel	%ebx, %edx
	movl	20(%esp), %ebp          ## 4-byte Reload
	andl	$-4, %ebp
	movl	%ebp, 24(%esp)          ## 4-byte Spill
	je	LBB49_29
## BB#30:                               ## %vector.memcheck
	movl	%eax, %ebx
	negl	%ebx
	subl	%ecx, %ebx
	movl	$-2, %ebp
	subl	%eax, %ebp
	subl	%ecx, %ebp
	movl	$-2, %ecx
	subl	%edx, %ebp
	subl	%edx, %ecx
	leal	(%esi,%ebx,4), %eax
	movl	%eax, 12(%esp)          ## 4-byte Spill
	leal	(%esi,%ebp,4), %eax
	movl	40(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%ecx,4), %edx
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	104(%esp), %ebx         ## 4-byte Reload
	leal	(%ebx,%ecx,4), %edx
	movl	12(%esp), %ecx          ## 4-byte Reload
	cmpl	%edx, %ecx
	setbe	%dh
	cmpl	%eax, %ebx
	setbe	%dl
	cmpl	100(%esp), %ecx         ## 4-byte Folded Reload
	setbe	%cl
	cmpl	%eax, %ebp
	setbe	%ch
	testb	%dl, %dh
	jne	LBB49_31
## BB#32:                               ## %vector.memcheck
	andb	%ch, %cl
	movl	36(%esp), %ebx          ## 4-byte Reload
	movl	16(%esp), %ebp          ## 4-byte Reload
	movl	$0, %edx
	jne	LBB49_40
## BB#33:                               ## %vector.body.preheader
	movl	$1, %ecx
	subl	68(%esp), %ecx          ## 4-byte Folded Reload
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	notl	%ecx
	andl	$-4, %ecx
	addl	$-4, %ecx
	shrl	$2, %ecx
	leal	1(%ecx), %edx
	xorl	%ebx, %ebx
	testb	$1, %dl
	je	LBB49_35
## BB#34:                               ## %vector.body.prol
	movl	104(%esp), %edx         ## 4-byte Reload
	movups	(%edx), %xmm0
	movl	40(%esp), %edx          ## 4-byte Reload
	movups	(%edx), %xmm1
	xorps	%xmm0, %xmm1
	movl	44(%esp), %edx          ## 4-byte Reload
	movups	%xmm1, (%esi,%edx,4)
	movl	$4, %ebx
LBB49_35:                               ## %vector.body.preheader.split
	testl	%ecx, %ecx
	jne	LBB49_37
## BB#36:
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	36(%esp), %ebx          ## 4-byte Reload
	jmp	LBB49_40
LBB49_1:
	movl	%ecx, 84(%esp)          ## 4-byte Spill
	addl	%ebx, %edi
	cmpl	%ebx, %eax
	movl	%eax, 92(%esp)          ## 4-byte Spill
	cmovgl	76(%esp), %edi          ## 4-byte Folded Reload
	movl	$-2, %eax
	subl	%edi, %eax
	addl	$2, %edi
	movl	%edi, 24(%esp)          ## 4-byte Spill
	leal	(%esi,%eax,4), %ebp
	movl	L_bot$non_lazy_ptr-L49$pb(%edx), %eax
	movl	%edx, 76(%esp)          ## 4-byte Spill
	movl	%esi, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%edi, %ecx
	jae	LBB49_3
## BB#2:
	movl	$14, (%esp)
	calll	_pari_err
LBB49_3:                                ## %new_chunk.exit
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebp, (%eax)
	movl	68(%esp), %eax          ## 4-byte Reload
	cmpl	$3, %eax
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	104(%esp), %edi         ## 4-byte Reload
	movl	84(%esp), %ecx          ## 4-byte Reload
	jb	LBB49_6
## BB#4:                                ## %.lr.ph16
	leal	(%ecx,%eax,4), %eax
	.align	4, 0x90
LBB49_5:                                ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax), %ecx
	addl	$-4, %eax
	movl	%ecx, -4(%esi)
	addl	$-4, %esi
	cmpl	%edi, %eax
	ja	LBB49_5
LBB49_6:                                ## %._crit_edge17
	movl	80(%esp), %eax          ## 4-byte Reload
	movl	100(%esp), %ecx         ## 4-byte Reload
	leal	(%ecx,%eax,4), %edi
	movl	92(%esp), %eax          ## 4-byte Reload
	testl	%eax, %eax
	movl	24(%esp), %ebx          ## 4-byte Reload
	movl	60(%esp), %ebp          ## 4-byte Reload
	jns	LBB49_7
## BB#13:
	leal	(%esi,%eax,4), %eax
	.align	4, 0x90
LBB49_14:                               ## %.lr.ph12
                                        ## =>This Inner Loop Header: Depth=1
	movl	$0, -4(%esi)
	addl	$-4, %esi
	cmpl	%eax, %esi
	ja	LBB49_14
LBB49_7:
	movl	76(%esp), %ecx          ## 4-byte Reload
	jmp	LBB49_9
LBB49_31:
	movl	36(%esp), %ebx          ## 4-byte Reload
LBB49_29:
	movl	16(%esp), %ebp          ## 4-byte Reload
	xorl	%edx, %edx
	jmp	LBB49_40
LBB49_37:                               ## %vector.body.preheader.split.split
	movl	%ebx, %ecx
	subl	128(%esp), %ecx
	movl	96(%esp), %edx          ## 4-byte Reload
	movl	%ebx, %eax
	movl	%eax, 100(%esp)         ## 4-byte Spill
	movl	8(%esp), %ebx           ## 4-byte Reload
	cmpl	%edx, %ebx
	cmovll	%edx, %ebx
	subl	%ebx, %ecx
	leal	(%esi,%ecx,4), %ebx
	movl	104(%esp), %ecx         ## 4-byte Reload
	leal	16(%ecx,%eax,4), %ecx
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	16(%edx,%eax,4), %edx
	movl	$1, %ebp
	subl	68(%esp), %ebp          ## 4-byte Folded Reload
	movl	36(%esp), %eax          ## 4-byte Reload
	cmpl	%ebp, %eax
	cmovgel	%eax, %ebp
	notl	%ebp
	andl	$-4, %ebp
	subl	100(%esp), %ebp         ## 4-byte Folded Reload
	movl	%ebp, 100(%esp)         ## 4-byte Spill
	xorl	%ebp, %ebp
	.align	4, 0x90
LBB49_38:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	-16(%ecx,%ebp,4), %xmm0
	movups	-16(%edx,%ebp,4), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%ebx,%ebp,4)
	movups	(%ecx,%ebp,4), %xmm0
	movups	(%edx,%ebp,4), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, 16(%ebx,%ebp,4)
	addl	$8, %ebp
	cmpl	%ebp, 100(%esp)         ## 4-byte Folded Reload
	jne	LBB49_38
## BB#39:
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	36(%esp), %ebx          ## 4-byte Reload
	movl	16(%esp), %ebp          ## 4-byte Reload
LBB49_40:                               ## %middle.block
	cmpl	20(%esp), %edx          ## 4-byte Folded Reload
	je	LBB49_41
LBB49_23:                               ## %scalar.ph.preheader
	movl	%edx, %ecx
	notl	%ecx
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	subl	%ebp, %ecx
	movl	$-2, %eax
	subl	%edx, %eax
	subl	%ebp, %eax
	testb	$1, %cl
	je	LBB49_25
## BB#24:                               ## %scalar.ph.prol
	movl	40(%esp), %ecx          ## 4-byte Reload
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	movl	104(%esp), %ebx         ## 4-byte Reload
	xorl	(%ebx,%edx,4), %ecx
	movl	44(%esp), %ebx          ## 4-byte Reload
	addl	%edx, %ebx
	movl	%ecx, (%esi,%ebx,4)
	movl	36(%esp), %ebx          ## 4-byte Reload
	incl	%edx
LBB49_25:                               ## %scalar.ph.preheader.split
	testl	%eax, %eax
	je	LBB49_41
## BB#26:                               ## %scalar.ph.preheader.split.split
	movl	%edx, %ecx
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	128(%esp), %edx
	subl	%edx, %ecx
	movl	28(%esp), %ebp          ## 4-byte Reload
	addl	$-2, %ebp
	subl	%edx, %ebp
	movl	96(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, %ebp
	cmovll	%edx, %ebp
	subl	%ebp, %ecx
	movl	%ebx, %edx
	movl	$1, %ebx
	subl	68(%esp), %ebx          ## 4-byte Folded Reload
	leal	(%esi,%ecx,4), %eax
	cmpl	%ebx, %edx
	cmovgel	%edx, %ebx
	movl	44(%esp), %ebp          ## 4-byte Reload
	movl	%ebp, %ecx
	notl	%ecx
	subl	%ebx, %ecx
	movl	%ecx, 100(%esp)         ## 4-byte Spill
	movl	40(%esp), %ecx          ## 4-byte Reload
	leal	4(%ecx,%ebp,4), %ecx
	movl	104(%esp), %edx         ## 4-byte Reload
	leal	4(%edx,%ebp,4), %ebp
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB49_27:                               ## %scalar.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ecx,%ebx,4), %edx
	xorl	-4(%ebp,%ebx,4), %edx
	movl	%edx, (%eax,%ebx,4)
	movl	(%ecx,%ebx,4), %edx
	xorl	(%ebp,%ebx,4), %edx
	movl	%edx, 4(%eax,%ebx,4)
	addl	$2, %ebx
	cmpl	%ebx, 100(%esp)         ## 4-byte Folded Reload
	jne	LBB49_27
LBB49_41:                               ## %..preheader_crit_edge.i
	movl	32(%esp), %eax          ## 4-byte Reload
	notl	%eax
	movl	72(%esp), %edx          ## 4-byte Reload
LBB49_42:                               ## %.preheader.i
	cmpl	%edx, %eax
	jge	LBB49_66
## BB#43:                               ## %.lr.ph.i.preheader
	movl	84(%esp), %ebx          ## 4-byte Reload
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	addl	$-2, %ebx
	subl	128(%esp), %ebx
	movl	96(%esp), %ebp          ## 4-byte Reload
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	leal	-1(%ebp), %ecx
	subl	%eax, %ecx
	cmpl	$-1, %ecx
	je	LBB49_44
## BB#52:                               ## %overflow.checked64
	movl	%edx, 72(%esp)          ## 4-byte Spill
	movl	%ebp, %edx
	movl	%ebp, 68(%esp)          ## 4-byte Spill
	subl	%eax, %edx
	movl	%edx, %ebp
	andl	$-4, %ebp
	movl	96(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	andl	$-4, %edx
	je	LBB49_53
## BB#54:                               ## %vector.memcheck78
	movl	%ebp, 44(%esp)          ## 4-byte Spill
	movl	%ebx, 84(%esp)          ## 4-byte Spill
	movl	104(%esp), %ebp         ## 4-byte Reload
	leal	-4(%ebp,%ecx,4), %edx
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	%eax, %ebx
	movl	128(%esp), %edx
	subl	%edx, %ebx
	subl	%ecx, %ebx
	leal	(%esi,%ebx,4), %ecx
	cmpl	100(%esp), %ecx         ## 4-byte Folded Reload
	ja	LBB49_56
## BB#55:                               ## %vector.memcheck78
	leal	(%ebp,%eax,4), %ecx
	notl	%edx
	leal	(%esi,%edx,4), %edx
	cmpl	%edx, %ecx
	jbe	LBB49_64
LBB49_56:                               ## %vector.body55.preheader
	movl	96(%esp), %ecx          ## 4-byte Reload
	movl	84(%esp), %edx          ## 4-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	subl	%eax, %ecx
	andl	$-4, %ecx
	addl	$-4, %ecx
	shrl	$2, %ecx
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	leal	1(%ecx), %ecx
	testb	$3, %cl
	movl	%eax, %ebx
	je	LBB49_59
## BB#57:                               ## %vector.body55.prol.preheader
	movl	96(%esp), %ecx          ## 4-byte Reload
	movl	84(%esp), %edx          ## 4-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	movl	128(%esp), %edx
	negl	%edx
	subl	%ecx, %edx
	subl	%eax, %ecx
	andl	$-4, %ecx
	addl	$-4, %ecx
	leal	(%esi,%edx,4), %edx
	movl	%edx, 100(%esp)         ## 4-byte Spill
	movl	%ecx, %edx
	shrl	$2, %edx
	incl	%edx
	andl	$3, %edx
	negl	%edx
	movl	%eax, %ebx
	.align	4, 0x90
LBB49_58:                               ## %vector.body55.prol
                                        ## =>This Inner Loop Header: Depth=1
	movups	(%ebp,%ebx,4), %xmm0
	movl	100(%esp), %ebp         ## 4-byte Reload
	movups	%xmm0, (%ebp,%ebx,4)
	movl	104(%esp), %ebp         ## 4-byte Reload
	addl	$4, %ebx
	addl	$-4, %ecx
	incl	%edx
	jne	LBB49_58
LBB49_59:                               ## %vector.body55.preheader.split
	movl	44(%esp), %ebp          ## 4-byte Reload
	addl	%eax, %ebp
	cmpl	$3, 40(%esp)            ## 4-byte Folded Reload
	movl	72(%esp), %edx          ## 4-byte Reload
	jae	LBB49_61
## BB#60:
	movl	%ebp, %eax
	jmp	LBB49_65
LBB49_44:
	movl	%ebx, 84(%esp)          ## 4-byte Spill
	jmp	LBB49_45
LBB49_53:
	movl	%ebx, 84(%esp)          ## 4-byte Spill
	jmp	LBB49_64
LBB49_61:                               ## %vector.body55.preheader.split.split
	movl	%ebx, %ecx
	subl	128(%esp), %ecx
	movl	96(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, 84(%esp)          ## 4-byte Folded Reload
	cmovgel	84(%esp), %edx          ## 4-byte Folded Reload
	subl	%edx, %ecx
	leal	(%esi,%ecx,4), %ecx
	subl	%eax, %edx
	andl	$-4, %edx
	addl	%eax, %edx
	movl	104(%esp), %eax         ## 4-byte Reload
	leal	48(%eax,%ebx,4), %eax
	subl	%ebx, %edx
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB49_62:                               ## %vector.body55
                                        ## =>This Inner Loop Header: Depth=1
	movups	-48(%eax,%ebx,4), %xmm0
	movups	%xmm0, (%ecx,%ebx,4)
	movups	-32(%eax,%ebx,4), %xmm0
	movups	%xmm0, 16(%ecx,%ebx,4)
	movups	-16(%eax,%ebx,4), %xmm0
	movups	%xmm0, 32(%ecx,%ebx,4)
	movups	(%eax,%ebx,4), %xmm0
	movups	%xmm0, 48(%ecx,%ebx,4)
	addl	$16, %ebx
	cmpl	%ebx, %edx
	jne	LBB49_62
## BB#63:
	movl	%ebp, %eax
LBB49_64:                               ## %middle.block56
	movl	72(%esp), %edx          ## 4-byte Reload
LBB49_65:                               ## %middle.block56
	movl	68(%esp), %ecx          ## 4-byte Reload
	cmpl	%eax, %ecx
	je	LBB49_66
LBB49_45:                               ## %.lr.ph.i.preheader94
	movl	%edx, 72(%esp)          ## 4-byte Spill
	movl	84(%esp), %ebx          ## 4-byte Reload
	movl	96(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, %ebx
	movl	%ecx, %ebp
	cmovgel	%ebx, %ebp
	leal	1(%eax), %edx
	movl	%edx, 68(%esp)          ## 4-byte Spill
	cmpl	%edx, %ebp
	cmovll	%edx, %ebp
	movl	%ebp, %edx
	subl	%eax, %edx
	decl	%ebp
	subl	%eax, %ebp
	movl	%ebp, 100(%esp)         ## 4-byte Spill
	testb	$3, %dl
	je	LBB49_46
## BB#47:                               ## %.lr.ph.i.prol.preheader
	movl	128(%esp), %ebp
	negl	%ebp
	cmpl	%ecx, %ebx
	movl	%ecx, %edx
	cmovgel	%ebx, %edx
	subl	%edx, %ebp
	movl	68(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, %edx
	cmovll	%ecx, %edx
	leal	(%esi,%ebp,4), %ecx
	subl	%eax, %edx
	andl	$3, %edx
	negl	%edx
	movl	104(%esp), %ebx         ## 4-byte Reload
	.align	4, 0x90
LBB49_48:                               ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%eax,4), %ebp
	movl	%ebp, (%ecx,%eax,4)
	incl	%eax
	incl	%edx
	jne	LBB49_48
	jmp	LBB49_49
LBB49_46:
	movl	104(%esp), %ebx         ## 4-byte Reload
LBB49_49:                               ## %.lr.ph.i.preheader94.split
	cmpl	$3, 100(%esp)           ## 4-byte Folded Reload
	jb	LBB49_66
## BB#50:                               ## %.lr.ph.i.preheader94.split.split
	movl	128(%esp), %ecx
	negl	%ecx
	movl	84(%esp), %edx          ## 4-byte Reload
	movl	96(%esp), %ebp          ## 4-byte Reload
	cmpl	%ebp, %edx
	cmovll	%ebp, %edx
	subl	%edx, %ecx
	movl	72(%esp), %ebp          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	.align	4, 0x90
LBB49_51:                               ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%eax,4), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	4(%ebx,%eax,4), %edx
	movl	%edx, 4(%ecx,%eax,4)
	movl	8(%ebx,%eax,4), %edx
	movl	%edx, 8(%ecx,%eax,4)
	movl	12(%ebx,%eax,4), %edx
	movl	%edx, 12(%ecx,%eax,4)
	addl	$4, %eax
	cmpl	%ebp, %eax
	jl	LBB49_51
LBB49_66:                               ## %F2x_addspec.exit
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_Flx_renormalize
	movl	96(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, 92(%esp)          ## 4-byte Folded Reload
	jg	LBB49_68
## BB#67:
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	addl	128(%esp), %ecx
	movl	%ecx, 80(%esp)          ## 4-byte Spill
LBB49_68:
	addl	$8, %eax
	cmpl	%eax, 48(%esp)          ## 4-byte Folded Reload
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	52(%esp), %ebx          ## 4-byte Reload
	jbe	LBB49_69
## BB#70:                               ## %.lr.ph22.preheader
	negl	%ebx
	.align	4, 0x90
LBB49_71:                               ## %.lr.ph22
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebx,%esi), %ecx
	movl	%ecx, -4(%esi)
	leal	-4(%esi,%ebx), %ecx
	leal	-4(%esi), %esi
	cmpl	%eax, %ecx
	ja	LBB49_71
LBB49_69:
	movl	80(%esp), %ebx          ## 4-byte Reload
	movl	76(%esp), %ecx          ## 4-byte Reload
	movl	60(%esp), %ebp          ## 4-byte Reload
	jmp	LBB49_9
	.align	4, 0x90
LBB49_8:                                ## %.lr.ph
                                        ##   in Loop: Header=BB49_9 Depth=1
	movl	-4(%edi), %eax
	addl	$-4, %edi
	movl	%eax, -4(%esi)
	addl	$-4, %esi
LBB49_9:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %edi
	ja	LBB49_8
## BB#10:                               ## %._crit_edge
	movl	%edx, -4(%esi)
	cmpl	$16777216, %ebx         ## imm = 0x1000000
	jb	LBB49_12
## BB#11:
	leal	L_.str4-L49$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB49_12:                               ## %evallg.exit
	orl	$738197504, %ebx        ## imm = 0x2C000000
	movl	%ebx, -8(%esi)
	addl	$-8, %esi
	movl	%esi, %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
_bin_copy:                              ## @bin_copy
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	%ecx, %esi
	calll	L50$pb
L50$pb:
	popl	%ecx
	movl	4(%esi), %ebp
	testl	%ebp, %ebp
	je	LBB50_1
## BB#5:
	movl	(%esi), %edx
	movl	%edx, 36(%esp)          ## 4-byte Spill
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	subl	8(%esi), %ebp
	sarl	$2, %ebp
	movl	L_avma$non_lazy_ptr-L50$pb(%ecx), %eax
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	(%eax), %ebx
	movl	%ebx, 28(%esp)          ## 4-byte Spill
	leal	(,%edx,4), %edi
	movl	L_bot$non_lazy_ptr-L50$pb(%ecx), %eax
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	subl	%edi, %ebx
	shrl	$2, %ecx
	cmpl	%edx, %ecx
	jae	LBB50_7
## BB#6:
	movl	$14, (%esp)
	calll	_pari_err
LBB50_7:                                ## %new_chunk.exit
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	leal	16(%esi), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_memcpy
	subl	36(%esp), %ebp          ## 4-byte Folded Reload
	movl	28(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ebp,4), %edi
	movl	%edi, %eax
	subl	32(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$0, 12(%esi)
	je	LBB50_9
## BB#8:
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_shiftaddress_canon
	jmp	LBB50_10
LBB50_1:
	movl	%ecx, %ebp
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L50$pb(%ebp), %edi
	movl	(%edi), %ebx
	movl	$1, (%edi)
	movl	%esi, (%esp)
	calll	_free
	movl	%ebx, (%edi)
	movl	%ebp, %esi
	testl	%ebx, %ebx
	jne	LBB50_4
## BB#2:
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L50$pb(%esi), %eax
	cmpl	$0, (%eax)
	je	LBB50_4
## BB#3:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB50_4:                                ## %pari_free.exit
	movl	L_gen_0$non_lazy_ptr-L50$pb(%esi), %eax
	movl	(%eax), %edi
	jmp	LBB50_13
LBB50_9:
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_shiftaddress
LBB50_10:
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L50$pb(%eax), %ebx
	movl	(%ebx), %ebp
	movl	$1, (%ebx)
	movl	%esi, (%esp)
	calll	_free
	movl	%ebp, (%ebx)
	testl	%ebp, %ebp
	jne	LBB50_13
## BB#11:
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L50$pb(%eax), %eax
	cmpl	$0, (%eax)
	je	LBB50_13
## BB#12:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB50_13:                               ## %pari_free.exit1
	movl	%edi, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
__F2xq_pow:                             ## @_F2xq_pow
## BB#0:
	subl	$12, %esp
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	movl	16(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_F2xq_pow
	addl	$12, %esp
	retl

	.align	4, 0x90
__F2xq_rand:                            ## @_F2xq_rand
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L52$pb
L52$pb:
	popl	%ebp
	movl	32(%esp), %edx
	movl	L_avma$non_lazy_ptr-L52$pb(%ebp), %edi
	movl	(%edi), %ebx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	(%edx), %ecx
	andl	%eax, %ecx
	movl	$-1, %esi
	cmpl	$2, %ecx
	je	LBB52_6
## BB#1:
	movl	-4(%edx,%ecx,4), %eax
	movl	%eax, %edx
	shrl	$16, %edx
	cmpl	$65535, %eax            ## imm = 0xFFFF
	cmovbel	%eax, %edx
	movl	$12, %esi
	movl	$28, %eax
	cmoval	%esi, %eax
	cmpl	$256, %edx              ## imm = 0x100
	jb	LBB52_3
## BB#2:
	addl	$-8, %eax
	shrl	$8, %edx
LBB52_3:
	shll	$5, %ecx
	cmpl	$16, %edx
	jb	LBB52_5
## BB#4:
	addl	$-4, %eax
	shrl	$4, %edx
LBB52_5:
	addl	$-65, %ecx
	subl	%eax, %ecx
	subl	_F2x_degree_lg.__bfffo_tabshi-L52$pb(%ebp,%edx,4), %ecx
	movl	%ecx, %esi
	movl	32(%esp), %edx
	.align	4, 0x90
LBB52_6:                                ## =>This Inner Loop Header: Depth=1
	movl	%ebx, (%edi)
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, %ebp
	calll	_random_F2x
	movl	%ebp, %edx
	movl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	(%eax), %ecx
	andl	%ebp, %ecx
	cmpl	$2, %ecx
	je	LBB52_6
## BB#7:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
__F2xq_hash:                            ## @_F2xq_hash
## BB#0:
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	retl

	.align	4, 0x90
_vecsmall_lexcmp:                       ## @vecsmall_lexcmp
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	24(%esp), %eax
	movl	20(%esp), %esi
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	(%esi), %edx
	andl	%ecx, %edx
	andl	(%eax), %ecx
	cmpl	%ecx, %edx
	movl	%ecx, %edi
	cmovbl	%edx, %edi
	cmpl	$1, %edi
	jbe	LBB54_5
## BB#1:
	movl	$1, %ebx
	.align	4, 0x90
LBB54_3:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%eax,%ebx,4), %ebp
	cmpl	%ebp, (%esi,%ebx,4)
	jne	LBB54_4
## BB#2:                                ##   in Loop: Header=BB54_3 Depth=1
	incl	%ebx
	cmpl	%edi, %ebx
	jl	LBB54_3
LBB54_5:                                ## %._crit_edge
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	je	LBB54_7
## BB#6:
	movl	$-1, %ecx
	movl	$1, %eax
	cmovbl	%ecx, %eax
	jmp	LBB54_7
LBB54_4:
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%ecx, %eax
LBB54_7:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__const
	.align	2                       ## @F2x_sqr.sq
_F2x_sqr.sq:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	16                      ## 0x10
	.long	17                      ## 0x11
	.long	20                      ## 0x14
	.long	21                      ## 0x15
	.long	64                      ## 0x40
	.long	65                      ## 0x41
	.long	68                      ## 0x44
	.long	69                      ## 0x45
	.long	80                      ## 0x50
	.long	81                      ## 0x51
	.long	84                      ## 0x54
	.long	85                      ## 0x55

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"F2x_gcd (d = %ld)"

L_.str1:                                ## @.str1
	.asciz	"F2x_extgcd (d = %ld)"

	.section	__DATA,__const
	.align	2                       ## @F2xq_star
_F2xq_star:
	.long	__F2xq_mul
	.long	__F2xq_pow
	.long	__F2xq_rand
	.long	__F2xq_hash
	.long	_vecsmall_lexcmp
	.long	_F2x_equal1

	.section	__TEXT,__cstring,cstring_literals
L_.str2:                                ## @.str2
	.asciz	"F2xq_sqrt (i = %ld)"

	.section	__TEXT,__const
	.align	2                       ## @F2x_degree_lg.__bfffo_tabshi
_F2x_degree_lg.__bfffo_tabshi:
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str3:                                ## @.str3
	.asciz	"mallocing NULL object"

L_.str4:                                ## @.str4
	.asciz	"lg()"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_DEBUGMEM$non_lazy_ptr:
	.indirect_symbol	_DEBUGMEM
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
L_top$non_lazy_ptr:
	.indirect_symbol	_top
	.long	0

.subsections_via_symbols
