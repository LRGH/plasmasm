	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.long	0                       ## double 7
	.long	1075576832
LCPI0_1:
	.long	0                       ## double 0.03125
	.long	1067450368
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_polgalois
	.align	4, 0x90
_polgalois:                             ## @polgalois
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	calll	L0$pb
L0$pb:
	popl	%edi
	movl	%edi, 56(%esp)          ## 4-byte Spill
	movl	144(%esp), %esi
	movl	L_avma$non_lazy_ptr-L0$pb(%edi), %ebx
	movl	%ebx, 60(%esp)          ## 4-byte Spill
	movl	(%ebx), %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	movl	(%esi), %ebp
	movl	%ebp, %eax
	andl	$-33554432, %eax        ## imm = 0xFFFFFFFFFE000000
	cmpl	$335544320, %eax        ## imm = 0x14000000
	je	LBB0_2
## BB#1:
	leal	L_.str-L0$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$22, (%esp)
	calll	_pari_err
	movl	(%esi), %ebp
LBB0_2:
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, 52(%esp)          ## 4-byte Spill
	movl	%ebp, %eax
	addl	$-3, %eax
	jle	LBB0_3
## BB#4:
	cmpl	$12, %eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	jl	LBB0_7
## BB#5:
	leal	L_.str1-L0$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	jmp	LBB0_6
LBB0_3:                                 ## %.thread
	movl	%eax, 28(%esp)          ## 4-byte Spill
	leal	L_.str-L0$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$21, (%esp)
LBB0_6:
	calll	_pari_err
LBB0_7:
	movl	%esi, (%esp)
	calll	_Q_primpart
	movl	%eax, %esi
	movl	L_LOG2$non_lazy_ptr-L0$pb(%edi), %eax
	movsd	LCPI0_0-L0$pb(%edi), %xmm0 ## xmm0 = mem[0],zero
	divsd	(%eax), %xmm0
	mulsd	LCPI0_1-L0$pb(%edi), %xmm0
	movsd	%xmm0, 40(%esp)         ## 8-byte Spill
	leal	L_.str3-L0$pb(%edi), %eax
	movl	%eax, 36(%esp)          ## 4-byte Spill
	jmp	LBB0_8
	.align	4, 0x90
LBB0_57:                                ##   in Loop: Header=BB0_8 Depth=1
	movl	$0, (%ebx)
	movl	$0, (%esp)
	calll	_tschirnhaus
	movl	%eax, %esi
LBB0_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_34 Depth 2
                                        ##       Child Loop BB0_36 Depth 3
                                        ##         Child Loop BB0_38 Depth 4
                                        ##           Child Loop BB0_39 Depth 5
                                        ##           Child Loop BB0_41 Depth 5
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	%esi, (%esp)
	calll	_cauchy_bound
	fstpl	112(%esp)
	leal	-7(%ebp), %eax
	cmpl	$3, %eax
	ja	LBB0_57
## BB#9:                                ##   in Loop: Header=BB0_8 Depth=1
Ltmp0 = LJTI0_0-L0$pb
	movl	Ltmp0(%edi,%eax,4), %eax
	addl	%edi, %eax
	jmpl	*%eax
LBB0_10:                                ##   in Loop: Header=BB0_8 Depth=1
	movl	%esi, 68(%esp)          ## 4-byte Spill
	movl	(%ebx), %eax
	movl	L_bot$non_lazy_ptr-L0$pb(%edi), %ecx
	leal	-28(%eax), %esi
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB0_12
## BB#11:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB0_12:                                ## %cgetg.exit
                                        ##   in Loop: Header=BB0_8 Depth=1
	movl	%esi, (%ebx)
	movl	$570425351, (%esi)      ## imm = 0x22000007
	cmpl	$-9, 120(%esp)
	jge	LBB0_13
## BB#14:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	$0, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	movl	68(%esp), %esi          ## 4-byte Reload
	je	LBB0_57
	jmp	LBB0_15
LBB0_31:                                ##   in Loop: Header=BB0_8 Depth=1
	movsd	112(%esp), %xmm0        ## xmm0 = mem[0],zero
	movl	(%ebx), %ecx
	movl	%ecx, 84(%esp)          ## 4-byte Spill
	leal	-144(%ecx), %ebp
	movl	L_bot$non_lazy_ptr-L0$pb(%edi), %eax
	subl	(%eax), %ecx
	cmpl	$143, %ecx
	ja	LBB0_33
## BB#32:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	$14, (%esp)
	movsd	%xmm0, 104(%esp)        ## 8-byte Spill
	calll	_pari_err
	movsd	104(%esp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB0_33:                                ## %cgetg.exit8
                                        ##   in Loop: Header=BB0_8 Depth=1
	movl	%ebp, (%ebx)
	movl	$570425380, (%ebp)      ## imm = 0x22000024
	movl	%ebp, 64(%esp)          ## 4-byte Spill
	mulsd	40(%esp), %xmm0         ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	addl	$4, %eax
	jmp	LBB0_34
	.align	4, 0x90
LBB0_43:                                ##   in Loop: Header=BB0_34 Depth=2
	movl	72(%esp), %eax          ## 4-byte Reload
	leal	-2(%eax,%eax), %eax
	movl	68(%esp), %esi          ## 4-byte Reload
LBB0_34:                                ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_36 Depth 3
                                        ##         Child Loop BB0_38 Depth 4
                                        ##           Child Loop BB0_39 Depth 5
                                        ##           Child Loop BB0_41 Depth 5
	movl	%eax, 72(%esp)          ## 4-byte Spill
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	xorl	%edi, %edi
	movl	$1, %ebx
	movl	$5, %esi
	calll	_cleanroots
	movl	%eax, %ecx
	movl	%ecx, 88(%esp)          ## 4-byte Spill
	.align	4, 0x90
LBB0_36:                                ## %.lr.ph24
                                        ##   Parent Loop BB0_8 Depth=1
                                        ##     Parent Loop BB0_34 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_38 Depth 4
                                        ##           Child Loop BB0_39 Depth 5
                                        ##           Child Loop BB0_41 Depth 5
	movl	%esi, 80(%esp)          ## 4-byte Spill
	movl	%ebx, 92(%esp)          ## 4-byte Spill
	leal	1(%ebx), %ebp
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	.align	4, 0x90
LBB0_38:                                ## %.outer
                                        ##   Parent Loop BB0_8 Depth=1
                                        ##     Parent Loop BB0_34 Depth=2
                                        ##       Parent Loop BB0_36 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB0_39 Depth 5
                                        ##           Child Loop BB0_41 Depth 5
	movl	%edi, 96(%esp)          ## 4-byte Spill
	incl	%esi
	movl	92(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB0_39:                                ##   Parent Loop BB0_8 Depth=1
                                        ##     Parent Loop BB0_34 Depth=2
                                        ##       Parent Loop BB0_36 Depth=3
                                        ##         Parent Loop BB0_38 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movl	(%ecx,%edi,4), %eax
	movl	%ecx, %ebx
	movl	(%ebx,%ebp,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gadd
	movl	%ebx, %ecx
	movl	%eax, %ebx
	incl	%ebp
	decl	%esi
	cmpl	$7, %ebp
	jg	LBB0_39
## BB#40:                               ## %.lr.ph.preheader
                                        ##   in Loop: Header=BB0_38 Depth=4
	leal	(%ecx,%ebp,4), %eax
	movl	%eax, 104(%esp)         ## 4-byte Spill
	movl	84(%esp), %eax          ## 4-byte Reload
	movl	96(%esp), %ecx          ## 4-byte Reload
	leal	(%eax,%ecx,4), %eax
	movl	%eax, 100(%esp)         ## 4-byte Spill
	movl	$-35, %edi
	.align	4, 0x90
LBB0_41:                                ## %.lr.ph
                                        ##   Parent Loop BB0_8 Depth=1
                                        ##     Parent Loop BB0_34 Depth=2
                                        ##       Parent Loop BB0_36 Depth=3
                                        ##         Parent Loop BB0_38 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movl	104(%esp), %eax         ## 4-byte Reload
	movl	140(%eax,%edi,4), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	100(%esp), %ecx         ## 4-byte Reload
	movl	%eax, (%ecx,%edi,4)
	leal	1(%ebp,%edi), %eax
	incl	%edi
	cmpl	$-27, %eax
	jne	LBB0_41
## BB#37:                               ## %.loopexit
                                        ##   in Loop: Header=BB0_38 Depth=4
	movl	96(%esp), %edi          ## 4-byte Reload
	addl	%esi, %edi
	decl	%esi
	cmpl	$7, %ebp
	movl	88(%esp), %ecx          ## 4-byte Reload
	jne	LBB0_38
## BB#35:                               ## %.loopexit9
                                        ##   in Loop: Header=BB0_36 Depth=3
	movl	80(%esp), %esi          ## 4-byte Reload
	decl	%esi
	movl	76(%esp), %ebx          ## 4-byte Reload
	cmpl	$6, %ebx
	jne	LBB0_36
## BB#42:                               ##   in Loop: Header=BB0_34 Depth=2
	leal	120(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_roots_to_ZX
	cmpl	$-9, 120(%esp)
	jge	LBB0_43
## BB#44:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	$0, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	movl	60(%esp), %ebx          ## 4-byte Reload
	movl	56(%esp), %edi          ## 4-byte Reload
	movl	52(%esp), %ebp          ## 4-byte Reload
	movl	68(%esp), %esi          ## 4-byte Reload
	je	LBB0_57
## BB#45:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	$0, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %eax
	movl	(%eax), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	addl	$-2, %ecx
	cmpl	$3, %ecx
	jbe	LBB0_46
## BB#56:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	calll	_pari_err
	jmp	LBB0_57
	.align	4, 0x90
LBB0_13:                                ## %.lr.ph29..lr.ph29.split_crit_edge
                                        ## =>This Inner Loop Header: Depth=1
	jmp	LBB0_13
LBB0_46:
Ltmp1 = LJTI0_1-L0$pb
	addl	Ltmp1(%edi,%ecx,4), %edi
	jmpl	*%edi
LBB0_47:
	movl	%esi, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%ebx)
	testl	%eax, %eax
	je	LBB0_49
## BB#48:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$6, 12(%esp)
	movl	$1, 8(%esp)
	movl	$2520, 4(%esp)          ## imm = 0x9D8
	jmp	LBB0_59
LBB0_27:
	movl	(%ebx), %eax
	movl	L_bot$non_lazy_ptr-L0$pb(%edi), %ecx
	leal	-28(%eax), %esi
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB0_29
## BB#28:
	movl	$14, (%esp)
	calll	_pari_err
LBB0_29:                                ## %cgetg.exit7
	movl	%esi, (%ebx)
	movl	$570425351, (%esi)      ## imm = 0x22000007
	.align	4, 0x90
LBB0_30:                                ## =>This Inner Loop Header: Depth=1
	jmp	LBB0_30
LBB0_15:
	movl	$0, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	cmpl	$2, %ecx
	jne	LBB0_18
## BB#16:
	movl	%esi, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%ebx)
	testl	%eax, %eax
	je	LBB0_58
## BB#17:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$4, 12(%esp)
	movl	$1, 8(%esp)
	movl	$12, 4(%esp)
	jmp	LBB0_59
LBB0_50:
	movl	4(%eax), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ecx), %eax
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%ebx)
	cmpl	$10, %eax
	je	LBB0_52
## BB#51:
	cmpl	$31, %eax
	jne	LBB0_53
LBB0_52:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$5, 12(%esp)
	movl	$1, 8(%esp)
	movl	$168, 4(%esp)
	jmp	LBB0_59
LBB0_54:
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebx)
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$3, 12(%esp)
	movl	$1, 8(%esp)
	movl	$21, 4(%esp)
	jmp	LBB0_59
LBB0_55:
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebx)
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$2, 12(%esp)
	movl	$-1, 8(%esp)
	movl	$14, 4(%esp)
	jmp	LBB0_59
LBB0_18:
	leal	L_.str2-L0$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	calll	_pari_err
LBB0_19:                                ## %.loopexit10
	movl	(%ebx), %eax
	movl	L_bot$non_lazy_ptr-L0$pb(%edi), %esi
	leal	-28(%eax), %edi
	subl	(%esi), %eax
	cmpl	$27, %eax
	ja	LBB0_21
## BB#20:
	movl	$14, (%esp)
	calll	_pari_err
LBB0_21:                                ## %cgetg.exit4
	movl	%edi, (%ebx)
	movl	$570425351, (%edi)      ## imm = 0x22000007
	movl	(%ebx), %eax
	leal	-28(%eax), %edi
	subl	(%esi), %eax
	cmpl	$27, %eax
	ja	LBB0_23
## BB#22:
	movl	$14, (%esp)
	calll	_pari_err
LBB0_23:                                ## %cgetg.exit5
	movl	%edi, (%ebx)
	movl	$738197511, (%edi)      ## imm = 0x2C000007
	movl	(%ebx), %eax
	leal	-28(%eax), %edi
	subl	(%esi), %eax
	cmpl	$27, %eax
	ja	LBB0_25
## BB#24:
	movl	$14, (%esp)
	calll	_pari_err
LBB0_25:                                ## %cgetg.exit6
	movl	%edi, (%ebx)
	movl	$738197511, (%edi)      ## imm = 0x2C000007
	.align	4, 0x90
LBB0_26:                                ## =>This Inner Loop Header: Depth=1
	jmp	LBB0_26
LBB0_49:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$7, 12(%esp)
	movl	$-1, 8(%esp)
	movl	$5040, 4(%esp)          ## imm = 0x13B0
	jmp	LBB0_59
LBB0_58:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$5, 12(%esp)
	movl	$-1, 8(%esp)
	movl	$24, 4(%esp)
	jmp	LBB0_59
LBB0_53:
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$4, 12(%esp)
	movl	$-1, 8(%esp)
	movl	$42, 4(%esp)
LBB0_59:
	calll	_galois_res
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
	.align	2, 0x90
L0_0_set_10 = LBB0_10-L0$pb
L0_0_set_19 = LBB0_19-L0$pb
L0_0_set_27 = LBB0_27-L0$pb
L0_0_set_31 = LBB0_31-L0$pb
LJTI0_0:
	.long	L0_0_set_10
	.long	L0_0_set_19
	.long	L0_0_set_27
	.long	L0_0_set_31
L0_1_set_47 = LBB0_47-L0$pb
L0_1_set_50 = LBB0_50-L0$pb
L0_1_set_54 = LBB0_54-L0$pb
L0_1_set_55 = LBB0_55-L0$pb
LJTI0_1:
	.long	L0_1_set_47
	.long	L0_1_set_50
	.long	L0_1_set_54
	.long	L0_1_set_55

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI1_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_nfpoleval
	.align	4, 0x90
_nfpoleval:                             ## @nfpoleval
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L1$pb
L1$pb:
	popl	%ecx
	movl	68(%esp), %ebp
	movl	$16777215, %esi         ## imm = 0xFFFFFF
	andl	(%ebp), %esi
	cmpl	$2, %esi
	jne	LBB1_2
## BB#1:
	movl	L_gen_0$non_lazy_ptr-L1$pb(%ecx), %eax
	movl	(%eax), %ecx
	jmp	LBB1_48
LBB1_2:
	movl	64(%esp), %edi
	movl	L_avma$non_lazy_ptr-L1$pb(%ecx), %eax
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	%eax, 32(%esp)          ## 4-byte Spill
	movl	(%eax), %ebx
	movl	-4(%ebp,%esi,4), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_basis
	addl	$-2, %esi
	cmpl	$2, %esi
	jl	LBB1_3
## BB#4:
	movl	%ebx, 40(%esp)          ## 4-byte Spill
	movl	72(%esp), %ebx
	.align	4, 0x90
LBB1_5:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfmul
	movl	(%ebp,%esi,4), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfadd
	decl	%esi
	cmpl	$1, %esi
	jg	LBB1_5
	jmp	LBB1_6
LBB1_3:
	movl	%ebx, 40(%esp)          ## 4-byte Spill
LBB1_6:                                 ## %._crit_edge
	movl	36(%esp), %edx          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L1$pb(%edx), %ecx
	cmpl	(%ecx), %eax
	movl	40(%esp), %ebx          ## 4-byte Reload
	jb	LBB1_9
## BB#7:                                ## %isonstack.exit.i
	cmpl	%eax, %ebx
	jbe	LBB1_9
## BB#8:                                ## %isonstack.exit.i
	movl	L_top$non_lazy_ptr-L1$pb(%edx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB1_9
## BB#10:
	movl	(%eax), %edi
	movl	%edi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %esi
	cmpl	$2, %esi
	jb	LBB1_31
## BB#11:
	cmpl	$2, %ecx
	jne	LBB1_12
LBB1_31:
	movl	%edi, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	shll	$2, %esi
	movl	%ebx, %ecx
	subl	%esi, %ecx
	movl	%edi, %ebp
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%ecx, (%edx)
	je	LBB1_48
## BB#32:                               ## %.lr.ph.i.i.preheader
	movl	%ecx, 32(%esp)          ## 4-byte Spill
	movl	%edi, %ebx
	movl	%edi, 28(%esp)          ## 4-byte Spill
	orl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	movl	%ebx, %edi
	xorl	$16777215, %edi         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edx
	movl	$-2, %ecx
	cmovel	%edi, %ecx
	leal	(%ecx,%ebp), %esi
	cmpl	$-2, %esi
	jne	LBB1_34
## BB#33:
	movl	32(%esp), %ecx          ## 4-byte Reload
	jmp	LBB1_42
LBB1_9:                                 ## %isonstack.exit.thread.i
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ebx, (%ecx)
	movl	%eax, %ecx
LBB1_48:                                ## %gerepileupto.exit
	movl	%ecx, %eax
LBB1_49:                                ## %gerepileupto.exit
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB1_12:
	cmpl	$1, %ecx
	jne	LBB1_50
## BB#13:                               ## %isonstack.exit.i.i
	movl	4(%eax), %edi
	movl	%edi, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	%esi, 28(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %edx
	movl	%ebx, %ecx
	movl	%edi, %ebx
	subl	%edx, %ecx
	cmpl	$2, %esi
	jb	LBB1_30
## BB#14:                               ## %.lr.ph.i.i.i.preheader
	movl	%ebx, %ebp
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, %edi
	negl	%edi
	cmpl	$-3, %edi
	movl	$-2, %esi
	cmovgl	%edi, %esi
	addl	%ebp, %esi
	cmpl	$-1, %esi
	movl	28(%esp), %edx          ## 4-byte Reload
	je	LBB1_23
## BB#15:                               ## %overflow.checked31
	movl	%ebx, 24(%esp)          ## 4-byte Spill
	incl	%esi
	cmpl	$-3, %edi
	movl	$-2, %edx
	cmovgl	%edi, %edx
	movl	%edi, 16(%esp)          ## 4-byte Spill
	movl	%esi, %ebx
	andl	$-8, %ebx
	je	LBB1_16
## BB#17:                               ## %vector.memcheck45
	movl	%ebx, 12(%esp)          ## 4-byte Spill
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	notl	%ebx
	leal	(%eax,%ebx,4), %esi
	movl	40(%esp), %ebx          ## 4-byte Reload
	leal	-4(%ebx), %edi
	cmpl	%esi, %edi
	movl	$0, %esi
	ja	LBB1_19
## BB#18:                               ## %vector.memcheck45
	leal	-4(%eax,%ebp,4), %edi
	addl	%ebp, %edx
	notl	%edx
	leal	(%ebx,%edx,4), %edx
	cmpl	%edx, %edi
	movl	28(%esp), %edx          ## 4-byte Reload
	jbe	LBB1_22
LBB1_19:                                ## %vector.body22.preheader
	movl	28(%esp), %edx          ## 4-byte Reload
	subl	12(%esp), %edx          ## 4-byte Folded Reload
	movl	16(%esp), %esi          ## 4-byte Reload
	cmpl	$-3, %esi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	1(%edi,%ebp), %esi
	andl	$-8, %esi
	movl	36(%esp), %edi          ## 4-byte Reload
	movdqa	LCPI1_0-L1$pb(%edi), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
LBB1_20:                                ## %vector.body22
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	movups	-12(%eax,%edi,4), %xmm1
	movups	-28(%eax,%edi,4), %xmm2
	subl	28(%esp), %edi          ## 4-byte Folded Reload
	movups	%xmm1, -12(%ebx,%edi,4)
	movups	%xmm2, -28(%ebx,%edi,4)
	addl	$-8, %ebp
	addl	$-8, %esi
	jne	LBB1_20
## BB#21:
	movl	12(%esp), %esi          ## 4-byte Reload
	jmp	LBB1_22
LBB1_34:                                ## %overflow.checked
	movl	%ecx, 20(%esp)          ## 4-byte Spill
	addl	$2, %esi
	cmpl	$-16777216, %ebx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%edx, %edi
	xorl	%ecx, %ecx
	movl	%esi, %edx
	andl	$-8, %edx
	je	LBB1_35
## BB#36:                               ## %vector.memcheck
	movl	%edx, 12(%esp)          ## 4-byte Spill
	movl	%esi, 24(%esp)          ## 4-byte Spill
	movl	$-2, %esi
	movl	$-2, %ebx
	subl	%edi, %ebx
	leal	(%eax,%ebx,4), %edx
	movl	%edx, 16(%esp)          ## 4-byte Spill
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	-4(%edx), %ebx
	cmpl	16(%esp), %ebx          ## 4-byte Folded Reload
	ja	LBB1_38
## BB#37:                               ## %vector.memcheck
	leal	-4(%eax,%ebp,4), %ebx
	addl	%ebp, %edi
	subl	%edi, %esi
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%esi,4), %edi
	cmpl	%edi, %ebx
	jbe	LBB1_41
LBB1_38:                                ## %vector.body.preheader
	movl	%ebp, %ecx
	subl	12(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	movl	20(%esp), %ecx          ## 4-byte Reload
	leal	2(%ecx,%ebp), %esi
	andl	$-8, %esi
	movl	36(%esp), %edx          ## 4-byte Reload
	movdqa	LCPI1_0-L1$pb(%edx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%ebp, %ebx
	movl	40(%esp), %edx          ## 4-byte Reload
	.align	4, 0x90
LBB1_39:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	movups	-12(%eax,%edi,4), %xmm1
	movups	-28(%eax,%edi,4), %xmm2
	subl	%ebp, %edi
	movups	%xmm1, -12(%edx,%edi,4)
	movups	%xmm2, -28(%edx,%edi,4)
	addl	$-8, %ebx
	addl	$-8, %esi
	jne	LBB1_39
## BB#40:
	movl	16(%esp), %ebp          ## 4-byte Reload
	movl	12(%esp), %ecx          ## 4-byte Reload
	jmp	LBB1_41
LBB1_50:
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	leal	(%eax,%edi,4), %ecx
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	calll	_gerepile
	jmp	LBB1_49
LBB1_35:
	movl	%esi, 24(%esp)          ## 4-byte Spill
LBB1_41:                                ## %middle.block
	cmpl	%ecx, 24(%esp)          ## 4-byte Folded Reload
	movl	$-2, %edx
	movl	32(%esp), %ecx          ## 4-byte Reload
	je	LBB1_48
LBB1_42:                                ## %.lr.ph.i.i.preheader80
	movl	%ebp, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %edx
	leal	2(%ebp,%edx), %esi
	leal	1(%ebp,%edx), %edx
	movl	%edx, 36(%esp)          ## 4-byte Spill
	movl	%esi, %edx
	testb	$3, %dl
	je	LBB1_45
## BB#43:                               ## %.lr.ph.i.i.prol.preheader
	movl	28(%esp), %edi          ## 4-byte Reload
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edi
	cmpl	$-3, %ebx
	movl	$-2, %esi
	cmovgl	%ebx, %esi
	leal	2(%ebp,%esi), %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB1_44:                                ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%ebp,4), %esi
	movl	%esi, (%edi,%ebp,4)
	leal	-1(%ebp), %ebp
	incl	%ebx
	jne	LBB1_44
LBB1_45:                                ## %.lr.ph.i.i.preheader80.split
	cmpl	$3, 36(%esp)            ## 4-byte Folded Reload
	jb	LBB1_48
## BB#46:                               ## %.lr.ph.i.i.preheader80.split.split
	incl	%ebp
	movl	28(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	$-4, %esi
	subl	%edx, %esi
	movl	40(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%esi,4), %edx
	.align	4, 0x90
LBB1_47:                                ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%eax,%ebp,4), %esi
	movl	%esi, 8(%edx,%ebp,4)
	movl	-12(%eax,%ebp,4), %esi
	movl	%esi, 4(%edx,%ebp,4)
	movl	-16(%eax,%ebp,4), %esi
	movl	%esi, (%edx,%ebp,4)
	movl	-20(%eax,%ebp,4), %esi
	movl	%esi, -4(%edx,%ebp,4)
	addl	$-4, %ebp
	cmpl	$1, %ebp
	jg	LBB1_47
	jmp	LBB1_48
LBB1_16:
	movl	%esi, 20(%esp)          ## 4-byte Spill
	movl	28(%esp), %edx          ## 4-byte Reload
	xorl	%esi, %esi
LBB1_22:                                ## %middle.block23
	cmpl	%esi, 20(%esp)          ## 4-byte Folded Reload
	movl	24(%esp), %ebx          ## 4-byte Reload
	je	LBB1_30
LBB1_23:                                ## %.lr.ph.i.i.i.preheader79
	movl	%ebx, %esi
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %ebx
	cmovgl	%ebp, %ebx
	leal	(%edx,%ebx), %edi
	leal	1(%edx,%ebx), %ebx
	testb	$3, %bl
	je	LBB1_24
## BB#25:                               ## %.lr.ph.i.i.i.prol.preheader
	movl	%edi, 36(%esp)          ## 4-byte Spill
	movl	%esi, 24(%esp)          ## 4-byte Spill
	movl	%esi, %edi
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	40(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edi,4), %edi
	cmpl	$-3, %ebp
	movl	$-2, %ebx
	cmovgl	%ebp, %ebx
	leal	1(%edx,%ebx), %ebx
	andl	$3, %ebx
	negl	%ebx
LBB1_26:                                ## %.lr.ph.i.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ebp
	movl	%ebp, (%edi,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB1_26
	jmp	LBB1_27
LBB1_24:
	movl	%edi, 36(%esp)          ## 4-byte Spill
	movl	%esi, 24(%esp)          ## 4-byte Spill
LBB1_27:                                ## %.lr.ph.i.i.i.preheader79.split
	cmpl	$3, 36(%esp)            ## 4-byte Folded Reload
	movl	40(%esp), %esi          ## 4-byte Reload
	movl	24(%esp), %edi          ## 4-byte Reload
	jb	LBB1_30
## BB#28:                               ## %.lr.ph.i.i.i.preheader79.split.split
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	leal	(%esi,%edi,4), %esi
LBB1_29:                                ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %edi
	movl	%edi, (%esi,%edx,4)
	movl	-8(%eax,%edx,4), %edi
	movl	%edi, -4(%esi,%edx,4)
	movl	-12(%eax,%edx,4), %edi
	movl	%edi, -8(%esi,%edx,4)
	movl	-16(%eax,%edx,4), %edi
	movl	%edi, -12(%esi,%edx,4)
	leal	-4(%edx), %edx
	cmpl	$1, %edx
	jg	LBB1_29
LBB1_30:                                ## %gerepileuptoint.exit.i
	movl	28(%esp), %eax          ## 4-byte Reload
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	%eax, (%ecx)
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
	jmp	LBB1_48

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_FpX_FpC_nfpoleval
	.align	4, 0x90
_FpX_FpC_nfpoleval:                     ## @FpX_FpC_nfpoleval
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	calll	L2$pb
L2$pb:
	popl	%ebx
	movl	116(%esp), %ecx
	movl	112(%esp), %eax
	movl	L_avma$non_lazy_ptr-L2$pb(%ebx), %edx
	movl	%edx, 88(%esp)          ## 4-byte Spill
	movl	$16777215, %edi         ## imm = 0xFFFFFF
	andl	(%ecx), %edi
	movl	4(%eax), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	cmpl	$2, %edi
	movl	(%edx), %edx
	leal	-3(%esi), %ebp
	jne	LBB2_13
## BB#1:
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	leal	-2(%esi), %ebp
	movl	$2, %eax
	subl	%esi, %eax
	leal	(%edx,%eax,4), %eax
	movl	%eax, 80(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L2$pb(%ebx), %eax
	movl	%ebx, 84(%esp)          ## 4-byte Spill
	movl	%edx, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%ebp, %ecx
	movl	%edx, %edi
	jae	LBB2_3
## BB#2:
	movl	$14, (%esp)
	calll	_pari_err
LBB2_3:                                 ## %new_chunk.exit.i.i
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	80(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	cmpl	$16777216, %ebp         ## imm = 0x1000000
	movl	%ecx, %ebx
	jb	LBB2_5
## BB#4:
	movl	84(%esp), %eax          ## 4-byte Reload
	leal	L_.str7-L2$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	calll	_pari_err
LBB2_5:                                 ## %cgetg.exit.i
	orl	$603979776, %ebp        ## imm = 0x24000000
	movl	%ebp, (%ebx)
	movl	76(%esp), %edx          ## 4-byte Reload
	testl	%edx, %edx
	jle	LBB2_117
## BB#6:                                ## %.lr.ph.i.preheader
	leal	-4(%esi), %ecx
	movl	$1, %eax
	testb	$3, %dl
	je	LBB2_10
## BB#7:                                ## %.lr.ph.i.prol.preheader
	movl	$3, %eax
	subl	%esi, %eax
	leal	(%edi,%eax,4), %edx
	movl	%edi, 60(%esp)          ## 4-byte Spill
	movl	72(%esp), %eax          ## 4-byte Reload
	incb	%al
	movzbl	%al, %ebx
	andl	$3, %ebx
	xorl	%eax, %eax
	movl	84(%esp), %edi          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L2$pb(%edi), %ebp
	.align	4, 0x90
LBB2_8:                                 ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebp), %edi
	movl	%edi, (%edx,%eax,4)
	incl	%eax
	cmpl	%eax, %ebx
	jne	LBB2_8
## BB#9:                                ## %.lr.ph.i.preheader.split.loopexit
	incl	%eax
	movl	60(%esp), %edi          ## 4-byte Reload
	movl	80(%esp), %ebx          ## 4-byte Reload
LBB2_10:                                ## %.lr.ph.i.preheader.split
	cmpl	$3, %ecx
	jb	LBB2_117
## BB#11:                               ## %.lr.ph.i.preheader.split.split
	addl	$2, %eax
	subl	%esi, %eax
	movl	84(%esp), %ecx          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L2$pb(%ecx), %ecx
	.align	4, 0x90
LBB2_12:                                ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ecx), %edx
	movl	%edx, (%edi,%eax,4)
	movl	(%ecx), %edx
	movl	%edx, 4(%edi,%eax,4)
	movl	(%ecx), %edx
	movl	%edx, 8(%edi,%eax,4)
	movl	(%ecx), %edx
	movl	%edx, 12(%edi,%eax,4)
	addl	$4, %eax
	jne	LBB2_12
	jmp	LBB2_117
LBB2_13:
	movl	%ebx, 84(%esp)          ## 4-byte Spill
	movl	%edx, 60(%esp)          ## 4-byte Spill
	movl	124(%esp), %esi
	movl	120(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_zk_multable
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_FpM_red
	movl	%eax, %ebx
	movl	%ebx, 80(%esp)          ## 4-byte Spill
	movl	116(%esp), %eax
	movl	-4(%eax,%edi,4), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
	movl	%eax, %ebp
	addl	$-2, %edi
	cmpl	$2, %edi
	jl	LBB2_73
## BB#14:                               ## %.lr.ph
	movl	84(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI2_0-L2$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movdqa	%xmm0, 32(%esp)         ## 16-byte Spill
	.align	4, 0x90
LBB2_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_59 Depth 2
                                        ##     Child Loop BB2_65 Depth 2
                                        ##     Child Loop BB2_68 Depth 2
                                        ##     Child Loop BB2_37 Depth 2
                                        ##     Child Loop BB2_42 Depth 2
                                        ##     Child Loop BB2_45 Depth 2
	movl	%esi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	calll	_FpM_FpC_mul
	movl	%eax, %ebp
	movl	4(%ebp), %eax
	movl	116(%esp), %ecx
	movl	(%ecx,%edi,4), %ecx
	movl	88(%esp), %edx          ## 4-byte Reload
	movl	(%edx), %ebx
	movl	4(%eax), %edx
	sarl	$30, %edx
	movl	4(%ecx), %esi
	sarl	$30, %esi
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_addii_sign
	movl	%eax, %edx
	movl	4(%edx), %eax
	sarl	$30, %eax
	testl	%eax, %eax
	je	LBB2_16
## BB#17:                               ##   in Loop: Header=BB2_15 Depth=1
	jle	LBB2_47
## BB#18:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	124(%esp), %esi
	cmpl	%esi, %edx
	je	LBB2_19
## BB#20:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	movl	4(%esi), %ecx
	sarl	$30, %ecx
	negl	%ecx
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, 72(%esp)          ## 4-byte Spill
	calll	_addii_sign
	movl	%eax, %ebp
	jmp	LBB2_21
	.align	4, 0x90
LBB2_16:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	124(%esp), %esi
	jmp	LBB2_72
	.align	4, 0x90
LBB2_47:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	124(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	calll	_modii
	movl	84(%esp), %esi          ## 4-byte Reload
	jmp	LBB2_48
LBB2_19:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	%edx, 72(%esp)          ## 4-byte Spill
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	movl	84(%esp), %eax          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L2$pb(%eax), %eax
	movl	(%eax), %ebp
LBB2_21:                                ## %subii.exit.i
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	4(%ebp), %eax
	sarl	$30, %eax
	testl	%eax, %eax
	je	LBB2_22
## BB#23:                               ##   in Loop: Header=BB2_15 Depth=1
	js	LBB2_24
## BB#25:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_cmpii
	testl	%eax, %eax
	movl	%esi, %eax
	movl	84(%esp), %esi          ## 4-byte Reload
	js	LBB2_26
## BB#46:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$1, 8(%esp)
	calll	_dvmdii
	movl	76(%esp), %ebp          ## 4-byte Reload
LBB2_48:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	L_bot$non_lazy_ptr-L2$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jb	LBB2_49
## BB#50:                               ## %isonstack.exit.i3.i
                                        ##   in Loop: Header=BB2_15 Depth=1
	cmpl	%eax, %ebx
	jbe	LBB2_49
## BB#51:                               ## %isonstack.exit.i3.i
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	L_top$non_lazy_ptr-L2$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jae	LBB2_49
## BB#52:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	%esi, 84(%esp)          ## 4-byte Spill
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	movl	4(%eax), %ebp
	movl	%ebp, 64(%esp)          ## 4-byte Spill
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, 68(%esp)          ## 4-byte Spill
	leal	(,%ebp,4), %edx
	movl	%ebx, %esi
	subl	%edx, %esi
	movl	%esi, 72(%esp)          ## 4-byte Spill
	cmpl	$2, %ebp
	jb	LBB2_69
## BB#53:                               ## %.lr.ph.i.i6.i.preheader
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	64(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ecx
	negl	%ecx
	cmpl	$-3, %ecx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	(%esi,%edx), %ebp
	cmpl	$-1, %ebp
	movl	68(%esp), %ebp          ## 4-byte Reload
	je	LBB2_62
## BB#54:                               ## %overflow.checked42
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	leal	1(%esi,%edx), %ebx
	movl	%ebx, 48(%esp)          ## 4-byte Spill
	movl	64(%esp), %ebp          ## 4-byte Reload
	leal	1(%ebp,%esi), %ebp
	andl	$7, %ebp
	cmpl	$-3, %ecx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	movl	$0, 52(%esp)            ## 4-byte Folded Spill
	subl	%ebp, %ebx
	jne	LBB2_56
## BB#55:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %ebp
	jmp	LBB2_61
	.align	4, 0x90
LBB2_49:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	%esi, 84(%esp)          ## 4-byte Spill
	movl	%eax, %edx
	jmp	LBB2_71
LBB2_22:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	84(%esp), %eax          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L2$pb(%eax), %eax
	movl	(%eax), %edx
	movl	76(%esp), %ebp          ## 4-byte Reload
	jmp	LBB2_72
LBB2_24:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	72(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%eax)
	movl	76(%esp), %ebp          ## 4-byte Reload
	jmp	LBB2_72
LBB2_26:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	L_bot$non_lazy_ptr-L2$pb(%esi), %eax
	cmpl	(%eax), %ebp
	jb	LBB2_27
## BB#28:                               ## %isonstack.exit.i.i1
                                        ##   in Loop: Header=BB2_15 Depth=1
	cmpl	%ebp, %ebx
	jbe	LBB2_27
## BB#29:                               ## %isonstack.exit.i.i1
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	L_top$non_lazy_ptr-L2$pb(%esi), %eax
	cmpl	(%eax), %ebp
	jae	LBB2_27
## BB#30:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	4(%ebp), %esi
	movl	%esi, 64(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	%esi, 68(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %ecx
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edx, 72(%esp)          ## 4-byte Spill
	cmpl	$2, %esi
	jb	LBB2_69
## BB#31:                               ## %.lr.ph.i.i.i4.preheader
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	64(%esp), %ecx          ## 4-byte Reload
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, %eax
	negl	%eax
	cmpl	$-3, %eax
	movl	$-2, %esi
	cmovgl	%eax, %esi
	leal	(%esi,%ecx), %edx
	cmpl	$-1, %edx
	movl	68(%esp), %edx          ## 4-byte Reload
	je	LBB2_39
## BB#32:                               ## %overflow.checked
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	leal	1(%esi,%ecx), %ebx
	movl	%ebx, 48(%esp)          ## 4-byte Spill
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	1(%edx,%esi), %esi
	andl	$7, %esi
	cmpl	$-3, %eax
	movl	$-2, %edx
	cmovgl	%eax, %edx
	movl	$0, 52(%esp)            ## 4-byte Folded Spill
	subl	%esi, %ebx
	jne	LBB2_34
## BB#33:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	68(%esp), %edx          ## 4-byte Reload
	jmp	LBB2_38
LBB2_27:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	%ebp, %edx
	jmp	LBB2_70
LBB2_56:                                ## %vector.memcheck59
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%ebx, 28(%esp)          ## 4-byte Spill
	movl	%esi, %ebp
	notl	%ebp
	leal	(%eax,%ebp,4), %ebx
	movl	56(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ebp
	cmpl	%ebx, %ebp
	movl	68(%esp), %ecx          ## 4-byte Reload
	ja	LBB2_58
## BB#57:                               ## %vector.memcheck59
                                        ##   in Loop: Header=BB2_15 Depth=1
	leal	-4(%eax,%edx,4), %ebp
	addl	%edx, %esi
	notl	%esi
	movl	56(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%esi,4), %esi
	cmpl	%esi, %ebp
	movl	%ecx, %ebp
	jbe	LBB2_61
LBB2_58:                                ## %vector.body33.preheader
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ecx, %ebp
	subl	28(%esp), %ebp          ## 4-byte Folded Reload
	movl	24(%esp), %ebx          ## 4-byte Reload
	cmpl	$-3, %ebx
	movl	$-2, %ecx
	cmovlel	%ecx, %ebx
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	1(%ecx,%ebx), %esi
	andl	$7, %esi
	subl	%ebx, %esi
	decl	%esi
	movdqa	32(%esp), %xmm2         ## 16-byte Reload
	movl	56(%esp), %ebx          ## 4-byte Reload
	.align	4, 0x90
LBB2_59:                                ## %vector.body33
                                        ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        ## xmm0 = xmm0[0,0,0,0]
	paddd	%xmm2, %xmm0
	movd	%xmm0, %ecx
	movdqu	-12(%eax,%ecx,4), %xmm0
	movups	-28(%eax,%ecx,4), %xmm1
	subl	68(%esp), %ecx          ## 4-byte Folded Reload
	movdqu	%xmm0, -12(%ebx,%ecx,4)
	movups	%xmm1, -28(%ebx,%ecx,4)
	addl	$-8, %edx
	cmpl	%edx, %esi
	jne	LBB2_59
## BB#60:                               ##   in Loop: Header=BB2_15 Depth=1
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 52(%esp)          ## 4-byte Spill
	movl	68(%esp), %ecx          ## 4-byte Reload
LBB2_61:                                ## %middle.block34
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, 48(%esp)          ## 4-byte Folded Reload
	movl	56(%esp), %ebx          ## 4-byte Reload
	je	LBB2_69
LBB2_62:                                ## %.lr.ph.i.i6.i.preheader208
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ebp, %edx
	negl	%edx
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	leal	1(%ebp,%esi), %ecx
	addl	%ebp, %esi
	testb	$3, %cl
	je	LBB2_63
## BB#64:                               ## %.lr.ph.i.i6.i.prol.preheader
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%esi, 56(%esp)          ## 4-byte Spill
	movl	64(%esp), %ecx          ## 4-byte Reload
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	%ebx, %esi
	subl	%ecx, %esi
	addl	$-4, %esi
	cmpl	$-3, %edx
	movl	$-2, %ecx
	cmovlel	%ecx, %edx
	leal	1(%ebp,%edx), %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB2_65:                                ## %.lr.ph.i.i6.i.prol
                                        ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%eax,%ebp,4), %ecx
	movl	%ecx, (%esi,%ebp,4)
	leal	-1(%ebp), %ebp
	incl	%edx
	jne	LBB2_65
	jmp	LBB2_66
LBB2_63:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	%esi, 56(%esp)          ## 4-byte Spill
LBB2_66:                                ## %.lr.ph.i.i6.i.preheader208.split
                                        ##   in Loop: Header=BB2_15 Depth=1
	cmpl	$3, 56(%esp)            ## 4-byte Folded Reload
	movl	64(%esp), %ecx          ## 4-byte Reload
	jb	LBB2_69
## BB#67:                               ## %.lr.ph.i.i6.i.preheader208.split.split
                                        ##   in Loop: Header=BB2_15 Depth=1
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	subl	%ecx, %ebx
	addl	$-4, %ebx
	.align	4, 0x90
LBB2_68:                                ## %.lr.ph.i.i6.i
                                        ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%eax,%ebp,4), %ecx
	movl	%ecx, (%ebx,%ebp,4)
	movl	-8(%eax,%ebp,4), %ecx
	movl	%ecx, -4(%ebx,%ebp,4)
	movl	-12(%eax,%ebp,4), %ecx
	movl	%ecx, -8(%ebx,%ebp,4)
	movl	-16(%eax,%ebp,4), %ecx
	movl	%ecx, -12(%ebx,%ebp,4)
	leal	-4(%ebp), %ebp
	cmpl	$1, %ebp
	jg	LBB2_68
	jmp	LBB2_69
LBB2_34:                                ## %vector.memcheck
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	%edx, %esi
	notl	%esi
	leal	(%ebp,%esi,4), %eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	56(%esp), %eax          ## 4-byte Reload
	leal	-4(%eax), %esi
	cmpl	28(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB2_36
## BB#35:                               ## %vector.memcheck
                                        ##   in Loop: Header=BB2_15 Depth=1
	leal	-4(%ebp,%ecx,4), %esi
	addl	%ecx, %edx
	notl	%edx
	movl	56(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%edx,4), %edx
	cmpl	%edx, %esi
	movl	68(%esp), %edx          ## 4-byte Reload
	jbe	LBB2_38
LBB2_36:                                ## %vector.body.preheader
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	68(%esp), %edx          ## 4-byte Reload
	subl	%ebx, %edx
	movl	%ebx, 52(%esp)          ## 4-byte Spill
	movl	24(%esp), %ebx          ## 4-byte Reload
	cmpl	$-3, %ebx
	movl	$-2, %eax
	cmovlel	%eax, %ebx
	movl	64(%esp), %eax          ## 4-byte Reload
	leal	1(%eax,%ebx), %esi
	andl	$7, %esi
	subl	%ebx, %esi
	decl	%esi
	movdqa	32(%esp), %xmm2         ## 16-byte Reload
	movl	56(%esp), %ebx          ## 4-byte Reload
	.align	4, 0x90
LBB2_37:                                ## %vector.body
                                        ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        ## xmm0 = xmm0[0,0,0,0]
	paddd	%xmm2, %xmm0
	movd	%xmm0, %eax
	movdqu	-12(%ebp,%eax,4), %xmm0
	movups	-28(%ebp,%eax,4), %xmm1
	subl	68(%esp), %eax          ## 4-byte Folded Reload
	movdqu	%xmm0, -12(%ebx,%eax,4)
	movups	%xmm1, -28(%ebx,%eax,4)
	addl	$-8, %ecx
	cmpl	%ecx, %esi
	jne	LBB2_37
LBB2_38:                                ## %middle.block
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	52(%esp), %eax          ## 4-byte Reload
	cmpl	%eax, 48(%esp)          ## 4-byte Folded Reload
	movl	56(%esp), %ebx          ## 4-byte Reload
	je	LBB2_69
LBB2_39:                                ## %.lr.ph.i.i.i4.preheader207
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%edx, %esi
	negl	%esi
	cmpl	$-3, %esi
	movl	$-2, %ecx
	cmovgl	%esi, %ecx
	leal	1(%edx,%ecx), %eax
	addl	%edx, %ecx
	testb	$3, %al
	je	LBB2_40
## BB#41:                               ## %.lr.ph.i.i.i4.prol.preheader
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	64(%esp), %eax          ## 4-byte Reload
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	addl	$-4, %ecx
	cmpl	$-3, %esi
	movl	$-2, %eax
	cmovlel	%eax, %esi
	leal	1(%edx,%esi), %esi
	andl	$3, %esi
	negl	%esi
	.align	4, 0x90
LBB2_42:                                ## %.lr.ph.i.i.i4.prol
                                        ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%ebp,%edx,4), %eax
	movl	%eax, (%ecx,%edx,4)
	leal	-1(%edx), %edx
	incl	%esi
	jne	LBB2_42
	jmp	LBB2_43
LBB2_40:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	%ecx, 56(%esp)          ## 4-byte Spill
LBB2_43:                                ## %.lr.ph.i.i.i4.preheader207.split
                                        ##   in Loop: Header=BB2_15 Depth=1
	cmpl	$3, 56(%esp)            ## 4-byte Folded Reload
	movl	64(%esp), %eax          ## 4-byte Reload
	jb	LBB2_69
## BB#44:                               ## %.lr.ph.i.i.i4.preheader207.split.split
                                        ##   in Loop: Header=BB2_15 Depth=1
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	subl	%eax, %ebx
	addl	$-4, %ebx
	.align	4, 0x90
LBB2_45:                                ## %.lr.ph.i.i.i4
                                        ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%ebp,%edx,4), %eax
	movl	%eax, (%ebx,%edx,4)
	movl	-8(%ebp,%edx,4), %eax
	movl	%eax, -4(%ebx,%edx,4)
	movl	-12(%ebp,%edx,4), %eax
	movl	%eax, -8(%ebx,%edx,4)
	movl	-16(%ebp,%edx,4), %eax
	movl	%eax, -12(%ebx,%edx,4)
	leal	-4(%edx), %edx
	cmpl	$1, %edx
	jg	LBB2_45
LBB2_69:                                ## %icopy_avma.exit.i7.i
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	68(%esp), %eax          ## 4-byte Reload
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	72(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx)
	movl	%edx, %ebx
LBB2_70:                                ## %gerepileuptoint.exit10.i
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	76(%esp), %ebp          ## 4-byte Reload
LBB2_71:                                ## %gerepileuptoint.exit10.i
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	124(%esp), %esi
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
LBB2_72:                                ## %Fp_add.exit
                                        ##   in Loop: Header=BB2_15 Depth=1
	movl	%edx, 4(%ebp)
	decl	%edi
	cmpl	$1, %edi
	movl	80(%esp), %ebx          ## 4-byte Reload
	jg	LBB2_15
LBB2_73:                                ## %._crit_edge
	movl	84(%esp), %ecx          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L2$pb(%ecx), %eax
	cmpl	(%eax), %ebp
	movl	60(%esp), %esi          ## 4-byte Reload
	jb	LBB2_76
## BB#74:                               ## %isonstack.exit.i
	cmpl	%ebp, %esi
	jbe	LBB2_76
## BB#75:                               ## %isonstack.exit.i
	movl	L_top$non_lazy_ptr-L2$pb(%ecx), %eax
	cmpl	(%eax), %ebp
	jae	LBB2_76
## BB#77:
	movl	(%ebp), %edx
	movl	%edx, %eax
	shrl	$25, %eax
	leal	-21(%eax), %ecx
	cmpl	$2, %ecx
	jb	LBB2_98
## BB#78:
	cmpl	$2, %eax
	jne	LBB2_79
LBB2_98:
	movl	%edx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	%esi, %ebx
	subl	%eax, %ebx
	movl	%edx, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	je	LBB2_117
## BB#99:                               ## %.lr.ph.i.i.preheader
	movl	%ebx, 80(%esp)          ## 4-byte Spill
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	orl	$-16777216, %eax        ## imm = 0xFFFFFFFFFF000000
	movl	%eax, %ebx
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %eax        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %esi
	movl	$-2, %ebp
	cmovel	%ebx, %ebp
	leal	(%ebp,%ecx), %edi
	cmpl	$-2, %edi
	jne	LBB2_106
## BB#100:
	movl	76(%esp), %ebp          ## 4-byte Reload
	jmp	LBB2_101
LBB2_76:                                ## %isonstack.exit.thread.i
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	%ebp, %ebx
LBB2_117:                               ## %zerocol.exit
	movl	%ebx, %eax
LBB2_118:                               ## %zerocol.exit
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB2_79:
	cmpl	$1, %eax
	jne	LBB2_119
## BB#80:                               ## %isonstack.exit.i.i
	movl	4(%ebp), %ecx
	movl	%ecx, %edi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	leal	(,%edi,4), %edx
	subl	%edx, %esi
	movl	%esi, 80(%esp)          ## 4-byte Spill
	cmpl	$2, %edi
	movl	%ebp, 76(%esp)          ## 4-byte Spill
	jb	LBB2_97
## BB#81:                               ## %.lr.ph.i.i.i.preheader
	movl	%ecx, %ebp
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, %esi
	negl	%esi
	cmpl	$-3, %esi
	movl	$-2, %ebx
	movl	$-2, %eax
	cmovgl	%esi, %eax
	addl	%ebp, %eax
	cmpl	$-1, %eax
	movl	%edi, %edx
	je	LBB2_90
## BB#82:                               ## %overflow.checked141
	incl	%eax
	cmpl	$-3, %esi
	movl	$-2, %edx
	cmovgl	%esi, %edx
	movl	$0, 68(%esp)            ## 4-byte Folded Spill
	movl	%eax, %ebx
	andl	$-8, %ebx
	je	LBB2_83
## BB#84:                               ## %vector.memcheck155
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	movl	%eax, 64(%esp)          ## 4-byte Spill
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	%edi, %ebx
	movl	%edx, %edi
	notl	%edi
	movl	76(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%edi,4), %eax
	movl	60(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %edi
	cmpl	%eax, %edi
	movl	%ebx, %edi
	ja	LBB2_86
## BB#85:                               ## %vector.memcheck155
	movl	76(%esp), %eax          ## 4-byte Reload
	movl	%edi, %ebx
	leal	-4(%eax,%ebp,4), %edi
	addl	%ebp, %edx
	notl	%edx
	movl	60(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edx,4), %edx
	cmpl	%edx, %edi
	movl	%ebx, %edi
	movl	%edi, %edx
	jbe	LBB2_89
LBB2_86:                                ## %vector.body132.preheader
	movl	%edi, %edx
	subl	56(%esp), %edx          ## 4-byte Folded Reload
	cmpl	$-3, %esi
	movl	%edi, %ebx
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	1(%edi,%ebp), %esi
	andl	$-8, %esi
	movl	84(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI2_0-L2$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	76(%esp), %eax          ## 4-byte Reload
LBB2_87:                                ## %vector.body132
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	movups	-12(%eax,%edi,4), %xmm1
	movdqu	-28(%eax,%edi,4), %xmm2
	subl	%ebx, %edi
	movups	%xmm1, -12(%ecx,%edi,4)
	movdqu	%xmm2, -28(%ecx,%edi,4)
	addl	$-8, %ebp
	addl	$-8, %esi
	jne	LBB2_87
## BB#88:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movl	%ebx, %edi
	jmp	LBB2_89
LBB2_106:                               ## %overflow.checked93
	addl	$2, %edi
	cmpl	$-16777216, %eax        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%esi, %ebx
	xorl	%esi, %esi
	movl	%edi, %eax
	andl	$-8, %eax
	je	LBB2_107
## BB#108:                              ## %vector.memcheck107
	movl	%eax, 72(%esp)          ## 4-byte Spill
	movl	%edi, 88(%esp)          ## 4-byte Spill
	movl	$-2, %eax
	movl	$-2, %edi
	subl	%ebx, %edi
	movl	76(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edi,4), %esi
	movl	60(%esp), %edi          ## 4-byte Reload
	leal	-4(%edi), %edi
	cmpl	%esi, %edi
	ja	LBB2_110
## BB#109:                              ## %vector.memcheck107
	movl	76(%esp), %esi          ## 4-byte Reload
	leal	-4(%esi,%ecx,4), %edi
	xorl	%esi, %esi
	addl	%ecx, %ebx
	subl	%ebx, %eax
	movl	60(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%eax,4), %eax
	cmpl	%eax, %edi
	jbe	LBB2_113
LBB2_110:                               ## %vector.body84.preheader
	movl	%ecx, %eax
	subl	72(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 68(%esp)          ## 4-byte Spill
	leal	2(%ebp,%ecx), %ebp
	andl	$-8, %ebp
	movl	84(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI2_0-L2$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%ecx, %ebx
	movl	60(%esp), %edi          ## 4-byte Reload
	movl	76(%esp), %esi          ## 4-byte Reload
	.align	4, 0x90
LBB2_111:                               ## %vector.body84
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movups	-12(%esi,%eax,4), %xmm1
	movdqu	-28(%esi,%eax,4), %xmm2
	subl	%ecx, %eax
	movups	%xmm1, -12(%edi,%eax,4)
	movdqu	%xmm2, -28(%edi,%eax,4)
	addl	$-8, %ebx
	addl	$-8, %ebp
	jne	LBB2_111
## BB#112:
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	72(%esp), %esi          ## 4-byte Reload
	jmp	LBB2_113
LBB2_119:
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	leal	(%ebp,%edx,4), %eax
	movl	%ebp, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	calll	_gerepile
	jmp	LBB2_118
LBB2_107:
	movl	%edi, 88(%esp)          ## 4-byte Spill
LBB2_113:                               ## %middle.block85
	cmpl	%esi, 88(%esp)          ## 4-byte Folded Reload
	movl	76(%esp), %ebp          ## 4-byte Reload
	movl	$-2, %esi
	jne	LBB2_101
## BB#114:
	movl	80(%esp), %ebx          ## 4-byte Reload
	jmp	LBB2_117
LBB2_101:                               ## %.lr.ph.i.i.preheader205
	movl	%ecx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %esi
	leal	2(%ecx,%esi), %eax
	leal	1(%ecx,%esi), %edi
	testb	$3, %al
	je	LBB2_104
## BB#102:                              ## %.lr.ph.i.i.prol.preheader
	movl	%edx, %eax
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	movl	60(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%eax,4), %esi
	cmpl	$-3, %ebx
	movl	$-2, %eax
	cmovgl	%ebx, %eax
	leal	2(%ecx,%eax), %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB2_103:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%ecx,4), %eax
	movl	%eax, (%esi,%ecx,4)
	leal	-1(%ecx), %ecx
	incl	%ebx
	jne	LBB2_103
LBB2_104:                               ## %.lr.ph.i.i.preheader205.split
	cmpl	$3, %edi
	jae	LBB2_115
## BB#105:
	movl	80(%esp), %ebx          ## 4-byte Reload
	jmp	LBB2_117
LBB2_115:                               ## %.lr.ph.i.i.preheader205.split.split
	incl	%ecx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	$-4, %eax
	subl	%edx, %eax
	movl	60(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%eax,4), %eax
	movl	80(%esp), %ebx          ## 4-byte Reload
	.align	4, 0x90
LBB2_116:                               ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-8(%ebp,%ecx,4), %edx
	movl	%edx, 8(%eax,%ecx,4)
	movl	-12(%ebp,%ecx,4), %edx
	movl	%edx, 4(%eax,%ecx,4)
	movl	-16(%ebp,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	movl	-20(%ebp,%ecx,4), %edx
	movl	%edx, -4(%eax,%ecx,4)
	addl	$-4, %ecx
	cmpl	$1, %ecx
	jg	LBB2_116
	jmp	LBB2_117
LBB2_83:
	movl	%eax, 64(%esp)          ## 4-byte Spill
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	%edi, %edx
LBB2_89:                                ## %middle.block133
	movl	68(%esp), %eax          ## 4-byte Reload
	cmpl	%eax, 64(%esp)          ## 4-byte Folded Reload
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %ebx
	je	LBB2_97
LBB2_90:                                ## %.lr.ph.i.i.i.preheader204
	movl	76(%esp), %eax          ## 4-byte Reload
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	cmovgl	%ebp, %ebx
	leal	(%edx,%ebx), %esi
	leal	1(%edx,%ebx), %ebx
	testb	$3, %bl
	je	LBB2_91
## BB#92:                               ## %.lr.ph.i.i.i.prol.preheader
	movl	%edi, 84(%esp)          ## 4-byte Spill
	movl	%ecx, %edi
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	60(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edi,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edi
	cmovgl	%ebp, %edi
	leal	1(%edx,%edi), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB2_93:                                ## %.lr.ph.i.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %edi
	movl	%edi, (%ebx,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebp
	jne	LBB2_93
	jmp	LBB2_94
LBB2_91:
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	%edi, 84(%esp)          ## 4-byte Spill
LBB2_94:                                ## %.lr.ph.i.i.i.preheader204.split
	cmpl	$3, %esi
	movl	84(%esp), %edi          ## 4-byte Reload
	movl	72(%esp), %esi          ## 4-byte Reload
	jb	LBB2_97
## BB#95:                               ## %.lr.ph.i.i.i.preheader204.split.split
	notl	%esi
	orl	$1056964608, %esi       ## imm = 0x3F000000
	movl	60(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %ecx
LBB2_96:                                ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %esi
	movl	%esi, (%ecx,%edx,4)
	movl	-8(%eax,%edx,4), %esi
	movl	%esi, -4(%ecx,%edx,4)
	movl	-12(%eax,%edx,4), %esi
	movl	%esi, -8(%ecx,%edx,4)
	movl	-16(%eax,%edx,4), %esi
	movl	%esi, -12(%ecx,%edx,4)
	leal	-4(%edx), %edx
	cmpl	$1, %edx
	jg	LBB2_96
LBB2_97:                                ## %gerepileuptoint.exit.i
	orl	$33554432, %edi         ## imm = 0x2000000
	movl	80(%esp), %ebx          ## 4-byte Reload
	movl	%edi, (%ebx)
	movl	88(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	jmp	LBB2_117

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI3_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_galoisapply
	.align	4, 0x90
_galoisapply:                           ## @galoisapply
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	L3$pb
L3$pb:
	popl	%ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	104(%esp), %ebp
	movl	100(%esp), %esi
	movl	96(%esp), %eax
	movl	L_avma$non_lazy_ptr-L3$pb(%ecx), %ecx
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	movl	(%ecx), %ecx
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	movl	%eax, (%esp)
	calll	_checknf
	movl	%eax, %edi
	movl	(%ebp), %ebx
	movl	%ebx, %eax
	shrl	$25, %eax
	cmpl	$16, %eax
	jg	LBB3_3
## BB#1:
	decl	%eax
	cmpl	$9, %eax
	ja	LBB3_397
## BB#2:
	movl	72(%esp), %ecx          ## 4-byte Reload
Ltmp2 = LJTI3_0-L3$pb
	movl	Ltmp2(%ecx,%eax,4), %eax
	addl	%ecx, %eax
	jmpl	*%eax
LBB3_10:
	movl	4(%ebp), %edi
	movl	%edi, 64(%esp)          ## 4-byte Spill
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %esi
	leal	(,%edi,4), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%eax), %eax
	movl	%esi, %ecx
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%edi, %ecx
	jae	LBB3_12
## BB#11:
	movl	$14, (%esp)
	calll	_pari_err
LBB3_12:                                ## %cgeti.exit.i
	movl	%ebx, 60(%esp)          ## 4-byte Spill
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	%edi, %eax
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	%eax, (%ebx)
	cmpl	$2, %edi
	jb	LBB3_13
## BB#14:                               ## %.lr.ph.i.preheader
	movl	64(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %eax
	negl	%eax
	cmpl	$-3, %eax
	movl	$-2, %ebx
	movl	$-2, %ecx
	cmovgl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	$-1, %ecx
	je	LBB3_24
## BB#15:                               ## %overflow.checked685
	incl	%ecx
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	cmpl	$-3, %eax
	movl	%ecx, %ebx
	movl	$-2, %ecx
	cmovgl	%eax, %ecx
	andl	$-8, %ebx
	je	LBB3_16
## BB#17:                               ## %vector.memcheck699
	movl	%ebx, 52(%esp)          ## 4-byte Spill
	movl	%ecx, %ebx
	notl	%ebx
	leal	(%ebp,%ebx,4), %ebx
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	leal	-4(%esi), %ebx
	cmpl	56(%esp), %ebx          ## 4-byte Folded Reload
	ja	LBB3_19
## BB#18:                               ## %vector.memcheck699
	leal	-4(%ebp,%edx,4), %ebx
	addl	%edx, %ecx
	notl	%ecx
	leal	(%esi,%ecx,4), %ecx
	cmpl	%ecx, %ebx
	ja	LBB3_19
LBB3_16:
	movl	$-2, %ebx
	xorl	%eax, %eax
	jmp	LBB3_22
LBB3_3:
	cmpl	$17, %eax
	je	LBB3_86
## BB#4:
	cmpl	$18, %eax
	jne	LBB3_5
## BB#295:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_algtobasis
	movl	%eax, %esi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_alg
	movl	$-33554432, %ecx        ## imm = 0xFFFFFFFFFE000000
	andl	(%eax), %ecx
	cmpl	$335544320, %ecx        ## imm = 0x14000000
	jne	LBB3_297
## BB#296:
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfpoleval
	jmp	LBB3_298
LBB3_86:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_algtobasis
	movl	%eax, %ebx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ebp), %eax
	cmpl	$3, %eax
	jne	LBB3_87
## BB#108:
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	movl	68(%esp), %ebx          ## 4-byte Reload
	movl	(%ebx), %esi
	leal	-12(%esi), %eax
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%eax), %edx
	movl	%edx, 48(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	subl	(%edx), %eax
	cmpl	$11, %eax
	ja	LBB3_110
## BB#109:
	movl	$14, (%esp)
	calll	_pari_err
LBB3_110:                               ## %cgetg.exit
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebx)
	movl	%esi, 44(%esp)          ## 4-byte Spill
	movl	$570425347, -12(%esi)   ## imm = 0x22000003
	movl	4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_galoisapply
	movl	%eax, -8(%esi)
	movl	8(%ebp), %edx
	movl	(%ebx), %ebp
	movl	(%edx), %eax
	movl	%eax, %ecx
	shrl	$25, %ecx
	cmpl	$17, %ecx
	movl	64(%esp), %ebx          ## 4-byte Reload
	jg	LBB3_113
## BB#111:                              ## %cgetg.exit
	decl	%ecx
	cmpl	$9, %ecx
	movl	72(%esp), %esi          ## 4-byte Reload
	ja	LBB3_249
## BB#112:                              ## %cgetg.exit
Ltmp3 = LJTI3_1-L3$pb
	movl	Ltmp3(%esi,%ecx,4), %eax
	addl	%esi, %eax
	jmpl	*%eax
LBB3_117:
	movl	4(%edx), %ebx
	movl	%ebx, 52(%esp)          ## 4-byte Spill
	movl	%edx, 40(%esp)          ## 4-byte Spill
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	leal	(,%ebx,4), %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ebp, %eax
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	48(%esp), %edx          ## 4-byte Reload
	subl	(%edx), %eax
	shrl	$2, %eax
	cmpl	%ebx, %eax
	jae	LBB3_119
## BB#118:
	movl	$14, (%esp)
	movl	%edx, %esi
	movl	%ecx, %edi
	calll	_pari_err
	movl	%edi, %ecx
	movl	%esi, %edx
LBB3_119:                               ## %cgeti.exit.i.i
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	%ebx, %eax
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	%eax, (%ecx)
	cmpl	$2, %ebx
	movl	60(%esp), %esi          ## 4-byte Reload
	jb	LBB3_120
## BB#121:                              ## %.lr.ph.i.i54.preheader
	movl	52(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	addl	%edx, %eax
	cmpl	$-1, %eax
	je	LBB3_122
## BB#125:                              ## %overflow.checked445
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	incl	%eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	%eax, %ecx
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	andl	$-8, %ecx
	je	LBB3_126
## BB#127:                              ## %vector.memcheck459
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%eax, %esi
	notl	%esi
	movl	40(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %esi
	movl	%esi, 28(%esp)          ## 4-byte Spill
	movl	36(%esp), %edi          ## 4-byte Reload
	leal	-4(%edi), %esi
	cmpl	28(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB3_131
## BB#128:                              ## %vector.memcheck459
	leal	-4(%ecx,%edx,4), %esi
	addl	%edx, %eax
	notl	%eax
	leal	(%edi,%eax,4), %eax
	cmpl	%eax, %esi
	ja	LBB3_131
## BB#129:
	movl	60(%esp), %eax          ## 4-byte Reload
	jmp	LBB3_130
LBB3_5:
	cmpl	$19, %eax
	jne	LBB3_397
## BB#6:
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$1, %ebx
	jne	LBB3_343
## BB#7:
	movl	68(%esp), %edi          ## 4-byte Reload
	movl	(%edi), %eax
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%ecx), %ecx
	leal	-4(%eax), %esi
	subl	(%ecx), %eax
	cmpl	$3, %eax
	ja	LBB3_9
## BB#8:
	movl	$14, (%esp)
	calll	_pari_err
LBB3_9:                                 ## %cgetg.exit51
	movl	%esi, (%edi)
	movl	$637534209, (%esi)      ## imm = 0x26000001
	jmp	LBB3_398
LBB3_297:
	movl	4(%edi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	(%ecx), %edx
	addl	$-3, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
LBB3_298:                               ## %ZC_galoisapply.exit37
	movl	64(%esp), %edi          ## 4-byte Reload
	movl	68(%esp), %ebx          ## 4-byte Reload
	movl	72(%esp), %edx          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%edx), %ecx
	cmpl	(%ecx), %eax
	jb	LBB3_301
## BB#299:                              ## %isonstack.exit.i39
	cmpl	%eax, %edi
	jbe	LBB3_301
## BB#300:                              ## %isonstack.exit.i39
	movl	L_top$non_lazy_ptr-L3$pb(%edx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB3_301
## BB#302:
	movl	(%eax), %esi
	movl	%esi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	jb	LBB3_322
## BB#303:
	cmpl	$2, %ecx
	jne	LBB3_304
LBB3_322:
	movl	%esi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, 60(%esp)          ## 4-byte Spill
	movl	%esi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edi, (%ebx)
	je	LBB3_323
## BB#324:                              ## %.lr.ph.i.i48.preheader
	movl	%esi, %ecx
	movl	%esi, 68(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %ebx
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edi
	movl	$-2, %ebp
	cmovel	%ebx, %ebp
	leal	(%ebp,%edx), %esi
	cmpl	$-2, %esi
	jne	LBB3_331
## BB#325:
	movl	68(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_326
LBB3_301:                               ## %isonstack.exit.thread.i40
	movl	%edi, (%ebx)
	movl	%eax, %esi
	jmp	LBB3_398
LBB3_87:
	cmpl	$6, %eax
	jne	LBB3_397
## BB#88:
	movl	20(%ebp), %eax
	movl	$-33554432, %ecx        ## imm = 0xFFFFFFFFFE000000
	andl	(%eax), %ecx
	cmpl	$33554432, %ecx         ## imm = 0x2000000
	jne	LBB3_90
## BB#89:
	movl	68(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_93
LBB3_32:
	movl	%ebp, (%esp)
	calll	_gcopy
	jmp	LBB3_399
LBB3_33:
	movl	8(%ebp), %ebp
LBB3_34:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_algtobasis
	movl	%eax, %esi
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_alg
	movl	$-33554432, %ecx        ## imm = 0xFFFFFFFFFE000000
	andl	(%eax), %ecx
	cmpl	$335544320, %ecx        ## imm = 0x14000000
	jne	LBB3_36
## BB#35:
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfpoleval
	jmp	LBB3_37
LBB3_36:
	movl	4(%edi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	(%ecx), %edx
	addl	$-3, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
LBB3_37:                                ## %ZC_galoisapply.exit
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	72(%esp), %esi          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_basistoalg
	movl	L_bot$non_lazy_ptr-L3$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jb	LBB3_40
## BB#38:                               ## %isonstack.exit.i3
	cmpl	%eax, %ebx
	jbe	LBB3_40
## BB#39:                               ## %isonstack.exit.i3
	movl	L_top$non_lazy_ptr-L3$pb(%esi), %ecx
	cmpl	(%ecx), %eax
	jae	LBB3_40
## BB#41:
	movl	(%eax), %esi
	movl	%esi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	jb	LBB3_62
## BB#42:
	cmpl	$2, %ecx
	jne	LBB3_43
LBB3_62:
	movl	%esi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	subl	%ecx, %ebx
	movl	%ebx, 60(%esp)          ## 4-byte Spill
	movl	%esi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%ebx, (%ecx)
	je	LBB3_63
## BB#64:                               ## %.lr.ph.i.i12.preheader
	movl	%esi, %ecx
	movl	%esi, 68(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %ebx
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edi
	movl	$-2, %ebp
	cmovel	%ebx, %ebp
	leal	(%ebp,%edx), %esi
	cmpl	$-2, %esi
	jne	LBB3_71
## BB#65:
	movl	68(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_66
LBB3_40:                                ## %isonstack.exit.thread.i4
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%ebx, (%ecx)
	movl	%eax, %esi
	jmp	LBB3_398
LBB3_113:                               ## %cgetg.exit
	cmpl	$18, %ecx
	movl	72(%esp), %esi          ## 4-byte Reload
	jne	LBB3_114
## BB#189:
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_alg
	movl	$-33554432, %ecx        ## imm = 0xFFFFFFFFFE000000
	andl	(%eax), %ecx
	cmpl	$335544320, %ecx        ## imm = 0x14000000
	jne	LBB3_191
## BB#190:
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfpoleval
	jmp	LBB3_192
LBB3_343:
	movl	4(%ebp), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	(%eax), %eax
	andl	%ecx, %eax
	movl	4(%edi), %edx
	andl	(%edx), %ecx
	addl	$-2, %ecx
	cmpl	%ecx, %eax
	jne	LBB3_397
## BB#344:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_algtobasis
	movl	%eax, 56(%esp)          ## 4-byte Spill
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	leal	(,%ebx,4), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %esi
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%ecx), %ecx
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%ebx, %eax
	jae	LBB3_346
## BB#345:
	movl	$14, (%esp)
	calll	_pari_err
LBB3_346:                               ## %cgetg.exit21
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%esi, 60(%esp)          ## 4-byte Spill
	movl	%esi, (%eax)
	movl	%ebx, %eax
	orl	$637534208, %eax        ## imm = 0x26000000
	movl	%eax, (%esi)
	cmpl	$2, %ebx
	jb	LBB3_352
## BB#347:                              ## %.lr.ph73.preheader
	movl	$1, %esi
	.align	4, 0x90
LBB3_348:                               ## %.lr.ph73
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebp,%esi,4), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_alg
	movl	(%eax), %ecx
	movl	$-33554432, %edx        ## imm = 0xFFFFFFFFFE000000
	andl	%edx, %ecx
	cmpl	$335544320, %ecx        ## imm = 0x14000000
	jne	LBB3_350
## BB#349:                              ##   in Loop: Header=BB3_348 Depth=1
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfpoleval
	jmp	LBB3_351
LBB3_350:                               ##   in Loop: Header=BB3_348 Depth=1
	movl	4(%edi), %ecx
	movl	(%ecx), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	addl	$-3, %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
LBB3_351:                               ## %ZC_galoisapply.exit20
                                        ##   in Loop: Header=BB3_348 Depth=1
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx,%esi,4)
	incl	%esi
	cmpl	%ebx, %esi
	jl	LBB3_348
LBB3_352:                               ## %._crit_edge74
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_idealhnf_shallow
	movl	48(%esp), %ecx          ## 4-byte Reload
	cmpl	(%ecx), %eax
	movl	64(%esp), %edi          ## 4-byte Reload
	jb	LBB3_355
## BB#353:                              ## %isonstack.exit.i
	cmpl	%eax, %edi
	jbe	LBB3_355
## BB#354:                              ## %isonstack.exit.i
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L3$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB3_355
## BB#356:
	movl	(%eax), %esi
	movl	%esi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	movl	68(%esp), %ebx          ## 4-byte Reload
	jb	LBB3_375
## BB#357:
	cmpl	$2, %ecx
	jne	LBB3_358
LBB3_375:
	movl	%esi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, 60(%esp)          ## 4-byte Spill
	movl	%esi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edi, (%ebx)
	je	LBB3_376
## BB#377:                              ## %.lr.ph.i.i.preheader
	movl	%esi, %ecx
	movl	%esi, 68(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %ebx
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edi
	movl	$-2, %ebp
	cmovel	%ebx, %ebp
	leal	(%ebp,%edx), %esi
	cmpl	$-2, %esi
	jne	LBB3_384
## BB#378:
	movl	68(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_379
LBB3_397:
	movl	72(%esp), %eax          ## 4-byte Reload
	leal	L_.str4-L3$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	calll	_pari_err
	xorl	%esi, %esi
LBB3_398:                               ## %icopy.exit
	movl	%esi, %eax
LBB3_399:                               ## %icopy.exit
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB3_13:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_90:
	movl	4(%ebp), %esi
	movl	8(%ebp), %eax
	movl	28(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edi, %ecx
	movl	%eax, %edx
	calll	_QX_galoisapplymod
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_zk_multable
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_FpM_deplin
	movl	%eax, %edx
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %edi
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%eax), %eax
	movl	%edi, %ecx
	subl	(%eax), %ecx
	movl	12(%ebp), %ebx
	movl	16(%ebp), %eax
	movl	%eax, 56(%esp)          ## 4-byte Spill
	cmpl	$23, %ecx
	leal	-24(%edi), %ebp
	ja	LBB3_92
## BB#91:
	movl	$14, (%esp)
	movl	%edx, 52(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	52(%esp), %edx          ## 4-byte Reload
LBB3_92:                                ## %mkvec5.exit.i
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ebp, (%eax)
	movl	$570425350, -24(%edi)   ## imm = 0x22000006
	movl	%esi, -20(%edi)
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, -16(%edi)
	movl	%ebx, -12(%edi)
	movl	%eax, %esi
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, -8(%edi)
	movl	%edx, -4(%edi)
LBB3_93:                                ## %pr_galoisapply.exit
	movl	%ebp, (%esp)
	calll	_copy_bin
	movl	%eax, %edi
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, (%esi)
	movl	4(%edi), %eax
	testl	%eax, %eax
	je	LBB3_94
## BB#98:
	movl	(%edi), %esi
	movl	%esi, 60(%esp)          ## 4-byte Spill
	movl	%eax, 56(%esp)          ## 4-byte Spill
	movl	%eax, %ebp
	subl	8(%edi), %ebp
	sarl	$2, %ebp
	leal	(,%esi,4), %eax
	movl	%eax, 52(%esp)          ## 4-byte Spill
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L3$pb(%eax), %eax
	movl	%ebx, %ecx
	subl	(%eax), %ecx
	movl	52(%esp), %edx          ## 4-byte Reload
	subl	%edx, %ebx
	shrl	$2, %ecx
	cmpl	%esi, %ecx
	jae	LBB3_100
## BB#99:
	movl	$14, (%esp)
	movl	%edx, %esi
	calll	_pari_err
	movl	%esi, %edx
LBB3_100:                               ## %new_chunk.exit.i.i
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	%edi, %eax
	addl	$16, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_memcpy
	subl	60(%esp), %ebp          ## 4-byte Folded Reload
	movl	64(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ebp,4), %ecx
	movl	%ecx, %eax
	subl	56(%esp), %eax          ## 4-byte Folded Reload
	cmpl	$0, 12(%edi)
	je	LBB3_102
## BB#101:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	calll	_shiftaddress_canon
	jmp	LBB3_103
LBB3_114:                               ## %cgetg.exit
	cmpl	$19, %ecx
	jne	LBB3_249
## BB#115:
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	cmpl	$3, %eax
	jne	LBB3_236
## BB#116:
	movl	68(%esp), %ebx          ## 4-byte Reload
	jmp	LBB3_241
LBB3_249:
	leal	L_.str4-L3$pb(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	calll	_pari_err
	xorl	%ecx, %ecx
LBB3_250:                               ## %elt_galoisapply.exit
	movl	48(%esp), %edx          ## 4-byte Reload
	jmp	LBB3_251
LBB3_355:                               ## %isonstack.exit.thread.i
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%edi, (%ecx)
	movl	%eax, %esi
	jmp	LBB3_398
LBB3_94:
	movl	72(%esp), %ebp          ## 4-byte Reload
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L3$pb(%ebp), %esi
	movl	(%esi), %ebx
	movl	$1, (%esi)
	movl	%edi, (%esp)
	calll	_free
	movl	%ebx, (%esi)
	testl	%ebx, %ebx
	jne	LBB3_97
## BB#95:
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L3$pb(%ebp), %eax
	cmpl	$0, (%eax)
	je	LBB3_97
## BB#96:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
LBB3_97:                                ## %pari_free.exit.i.i
	movl	L_gen_0$non_lazy_ptr-L3$pb(%ebp), %eax
	movl	(%eax), %esi
	jmp	LBB3_398
LBB3_323:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_304:
	cmpl	$1, %ecx
	jne	LBB3_396
## BB#305:                              ## %isonstack.exit.i.i41
	movl	4(%eax), %ecx
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	leal	(,%ecx,4), %esi
	subl	%esi, %edi
	movl	%edi, 60(%esp)          ## 4-byte Spill
	cmpl	$2, %ecx
	jb	LBB3_321
## BB#306:                              ## %.lr.ph.i.i.i44.preheader
	movl	56(%esp), %ebp          ## 4-byte Reload
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, %edx
	negl	%edx
	cmpl	$-3, %edx
	movl	$-2, %edi
	cmovgl	%edx, %edi
	addl	%ebp, %edi
	cmpl	$-1, %edi
	movl	%ecx, %esi
	je	LBB3_315
## BB#307:                              ## %overflow.checked205
	incl	%edi
	movl	%edi, 48(%esp)          ## 4-byte Spill
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	movl	$0, 52(%esp)            ## 4-byte Folded Spill
	andl	$-8, %edi
	je	LBB3_308
## BB#309:                              ## %vector.memcheck219
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	%esi, %edx
                                        ## kill: ESI<def> EDX<kill>
	notl	%esi
	leal	(%eax,%esi,4), %esi
	movl	%esi, 44(%esp)          ## 4-byte Spill
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	-4(%esi), %esi
	cmpl	44(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB3_311
## BB#310:                              ## %vector.memcheck219
	leal	-4(%eax,%ebp,4), %esi
	movl	%esi, 44(%esp)          ## 4-byte Spill
	addl	%ebp, %edx
	notl	%edx
	movl	%ebx, %esi
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %edx
	movl	%esi, %ebx
	cmpl	%edx, 44(%esp)          ## 4-byte Folded Reload
	movl	%ecx, %esi
	jbe	LBB3_314
LBB3_311:                               ## %vector.body196.preheader
	movl	%ecx, %esi
	subl	%edi, %esi
	movl	%edi, 52(%esp)          ## 4-byte Spill
	movl	40(%esp), %edi          ## 4-byte Reload
	cmpl	$-3, %edi
	movl	$-2, %edx
	cmovgl	%edi, %edx
	leal	1(%edx,%ebp), %edi
	andl	$-8, %edi
	movl	72(%esp), %edx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%edx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_312:                               ## %vector.body196
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movups	-12(%eax,%edx,4), %xmm1
	movups	-28(%eax,%edx,4), %xmm2
	subl	%ecx, %edx
	movups	%xmm1, -12(%ebx,%edx,4)
	movups	%xmm2, -28(%ebx,%edx,4)
	addl	$-8, %ebp
	addl	$-8, %edi
	jne	LBB3_312
## BB#313:
	movl	68(%esp), %ebx          ## 4-byte Reload
	jmp	LBB3_314
LBB3_191:
	movl	4(%edi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	(%ecx), %edx
	addl	$-3, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
LBB3_192:                               ## %ZC_galoisapply.exit4.i
	movl	48(%esp), %edx          ## 4-byte Reload
	cmpl	(%edx), %eax
	jb	LBB3_151
## BB#193:                              ## %isonstack.exit.i6.i
	cmpl	%eax, %ebp
	jbe	LBB3_151
## BB#194:                              ## %isonstack.exit.i6.i
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L3$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB3_151
## BB#195:
	movl	(%eax), %edi
	movl	%edi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	jb	LBB3_214
## BB#196:
	cmpl	$2, %ecx
	jne	LBB3_197
LBB3_214:
	movl	%edi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	%ebp, %esi
	subl	%ecx, %esi
	movl	%esi, 56(%esp)          ## 4-byte Spill
	movl	%edi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%esi, (%ecx)
	je	LBB3_215
## BB#216:                              ## %.lr.ph.i.i15.i.preheader
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	%edi, %ecx
	movl	%edi, 52(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %esi
	xorl	$16777215, %esi         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebx
	movl	$-2, %ebp
	cmovel	%esi, %ebp
	leal	(%ebp,%edx), %edi
	cmpl	$-2, %edi
	jne	LBB3_223
## BB#217:
	movl	56(%esp), %ecx          ## 4-byte Reload
	jmp	LBB3_218
LBB3_331:                               ## %overflow.checked157
	addl	$2, %esi
	movl	%esi, 56(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%edi, %ebx
	xorl	%ecx, %ecx
	andl	$-8, %esi
	je	LBB3_332
## BB#333:                              ## %vector.memcheck171
	movl	%esi, 52(%esp)          ## 4-byte Spill
	movl	$-2, %edi
	movl	$-2, %ecx
	subl	%ebx, %ecx
	leal	(%eax,%ecx,4), %esi
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	%esi, %ecx
	movl	68(%esp), %esi          ## 4-byte Reload
	ja	LBB3_335
## BB#334:                              ## %vector.memcheck171
	leal	-4(%eax,%edx,4), %ecx
	addl	%edx, %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ebx,4), %ebx
	movl	$-2, %edi
	cmpl	%ebx, %ecx
	movl	$0, %ecx
	jbe	LBB3_338
LBB3_335:                               ## %vector.body148.preheader
	movl	%edx, %ecx
	subl	52(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
LBB3_336:                               ## %vector.body148
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%eax,%ecx,4), %xmm1
	movups	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movups	%xmm1, -12(%edi,%ecx,4)
	movups	%xmm2, -28(%edi,%ecx,4)
	addl	$-8, %ebx
	addl	$-8, %ebp
	jne	LBB3_336
## BB#337:
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %edi
	jmp	LBB3_338
LBB3_102:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	calll	_shiftaddress
LBB3_103:
	movl	72(%esp), %ebp          ## 4-byte Reload
	movl	L_PARI_SIGINT_block$non_lazy_ptr-L3$pb(%ebp), %esi
	movl	(%esi), %ebx
	movl	$1, (%esi)
	movl	%edi, (%esp)
	calll	_free
	movl	%ebx, (%esi)
	testl	%ebx, %ebx
	je	LBB3_105
## BB#104:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_105:
	movl	L_PARI_SIGINT_pending$non_lazy_ptr-L3$pb(%ebp), %eax
	cmpl	$0, (%eax)
	je	LBB3_106
## BB#107:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ecx, (%esp)
	calll	_raise
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_63:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_43:
	cmpl	$1, %ecx
	jne	LBB3_83
## BB#44:                               ## %isonstack.exit.i.i5
	movl	4(%eax), %ecx
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	leal	(,%ecx,4), %esi
	subl	%esi, %ebx
	movl	%ebx, 60(%esp)          ## 4-byte Spill
	cmpl	$2, %ecx
	jb	LBB3_60
## BB#45:                               ## %.lr.ph.i.i.i8.preheader
	movl	56(%esp), %ebp          ## 4-byte Reload
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, %edi
	negl	%edi
	cmpl	$-3, %edi
	movl	$-2, %ebx
	movl	$-2, %edx
	cmovgl	%edi, %edx
	addl	%ebp, %edx
	cmpl	$-1, %edx
	movl	%ecx, %esi
	je	LBB3_54
## BB#46:                               ## %overflow.checked637
	incl	%edx
	movl	%edx, 48(%esp)          ## 4-byte Spill
	cmpl	$-3, %edi
	movl	%edx, %esi
	movl	$-2, %edx
	cmovgl	%edi, %edx
	movl	$0, 52(%esp)            ## 4-byte Folded Spill
	andl	$-8, %esi
	je	LBB3_47
## BB#48:                               ## %vector.memcheck651
	movl	%esi, 44(%esp)          ## 4-byte Spill
	movl	%edx, %esi
	notl	%esi
	leal	(%eax,%esi,4), %ebx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	-4(%esi), %esi
	cmpl	%ebx, %esi
	ja	LBB3_50
## BB#49:                               ## %vector.memcheck651
	leal	-4(%eax,%ebp,4), %esi
	addl	%ebp, %edx
	notl	%edx
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %edx
	movl	$-2, %ebx
	cmpl	%edx, %esi
	movl	%ecx, %esi
	jbe	LBB3_53
LBB3_50:                                ## %vector.body628.preheader
	movl	%ecx, %esi
	subl	44(%esp), %esi          ## 4-byte Folded Reload
	cmpl	$-3, %edi
	movl	$-2, %edx
	cmovgl	%edi, %edx
	leal	1(%edx,%ebp), %edi
	andl	$-8, %edi
	movl	72(%esp), %edx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%edx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_51:                                ## %vector.body628
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movups	-12(%eax,%edx,4), %xmm1
	movups	-28(%eax,%edx,4), %xmm2
	subl	%ecx, %edx
	movups	%xmm1, -12(%ebx,%edx,4)
	movups	%xmm2, -28(%ebx,%edx,4)
	addl	$-8, %ebp
	addl	$-8, %edi
	jne	LBB3_51
## BB#52:
	movl	44(%esp), %edx          ## 4-byte Reload
	movl	%edx, 52(%esp)          ## 4-byte Spill
	movl	$-2, %ebx
	jmp	LBB3_53
LBB3_71:                                ## %overflow.checked589
	addl	$2, %esi
	movl	%esi, 56(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%edi, %ebx
	xorl	%ecx, %ecx
	andl	$-8, %esi
	je	LBB3_72
## BB#73:                               ## %vector.memcheck603
	movl	%esi, 52(%esp)          ## 4-byte Spill
	movl	$-2, %edi
	movl	$-2, %ecx
	subl	%ebx, %ecx
	leal	(%eax,%ecx,4), %esi
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	%esi, %ecx
	movl	68(%esp), %esi          ## 4-byte Reload
	ja	LBB3_75
## BB#74:                               ## %vector.memcheck603
	leal	-4(%eax,%edx,4), %ecx
	addl	%edx, %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ebx,4), %ebx
	movl	$-2, %edi
	cmpl	%ebx, %ecx
	movl	$0, %ecx
	jbe	LBB3_78
LBB3_75:                                ## %vector.body580.preheader
	movl	%edx, %ecx
	subl	52(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
LBB3_76:                                ## %vector.body580
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%eax,%ecx,4), %xmm1
	movups	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movups	%xmm1, -12(%edi,%ecx,4)
	movups	%xmm2, -28(%edi,%ecx,4)
	addl	$-8, %ebx
	addl	$-8, %ebp
	jne	LBB3_76
## BB#77:
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %edi
	jmp	LBB3_78
LBB3_236:
	movl	%edx, 40(%esp)          ## 4-byte Spill
	cmpl	$1, %eax
	jne	LBB3_240
## BB#237:
	leal	-4(%ebp), %ecx
	movl	48(%esp), %edx          ## 4-byte Reload
	subl	(%edx), %ebp
	cmpl	$3, %ebp
	ja	LBB3_239
## BB#238:
	movl	$14, (%esp)
	movl	%edx, %esi
	movl	%ecx, %edi
	calll	_pari_err
	movl	%edi, %ecx
	movl	%esi, %edx
LBB3_239:                               ## %cgetg.exit.i
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$637534209, (%ecx)      ## imm = 0x26000001
	jmp	LBB3_251
LBB3_19:                                ## %vector.body676.preheader
	movl	%edi, %ecx
	subl	52(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	cmpl	$-3, %eax
	movl	$-2, %ecx
	cmovgl	%eax, %ecx
	leal	1(%ecx,%edx), %eax
	andl	$-8, %eax
	movl	72(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	$-2, %ebx
LBB3_20:                                ## %vector.body676
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%ebp,%ecx,4), %xmm1
	movups	-28(%ebp,%ecx,4), %xmm2
	subl	%edi, %ecx
	movups	%xmm1, -12(%esi,%ecx,4)
	movups	%xmm2, -28(%esi,%ecx,4)
	addl	$-8, %edx
	addl	$-8, %eax
	jne	LBB3_20
## BB#21:
	movl	56(%esp), %edi          ## 4-byte Reload
	movl	52(%esp), %eax          ## 4-byte Reload
LBB3_22:                                ## %middle.block677
	cmpl	%eax, 68(%esp)          ## 4-byte Folded Reload
	jne	LBB3_24
## BB#23:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_24:                                ## %.lr.ph.i.preheader829
	movl	%edi, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %ebx
	leal	(%edi,%ebx), %eax
	leal	1(%edi,%ebx), %ecx
	testb	$3, %cl
	je	LBB3_27
## BB#25:                               ## %.lr.ph.i.prol.preheader
	movl	64(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	leal	(%esi,%ecx,4), %ecx
	cmpl	$-3, %edx
	movl	$-2, %ebx
	cmovgl	%edx, %ebx
	leal	1(%edi,%ebx), %edx
	andl	$3, %edx
	negl	%edx
	.align	4, 0x90
LBB3_26:                                ## %.lr.ph.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%edi,4), %ebx
	movl	%ebx, (%ecx,%edi,4)
	leal	-1(%edi), %edi
	incl	%edx
	jne	LBB3_26
LBB3_27:                                ## %.lr.ph.i.preheader829.split
	cmpl	$3, %eax
	jae	LBB3_29
## BB#28:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_29:                                ## %.lr.ph.i.preheader829.split.split
	movl	64(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%esi,%eax,4), %eax
	.align	4, 0x90
LBB3_30:                                ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%edi,4), %ecx
	movl	%ecx, (%eax,%edi,4)
	movl	-8(%ebp,%edi,4), %ecx
	movl	%ecx, -4(%eax,%edi,4)
	movl	-12(%ebp,%edi,4), %ecx
	movl	%ecx, -8(%eax,%edi,4)
	movl	-16(%ebp,%edi,4), %ecx
	movl	%ecx, -12(%eax,%edi,4)
	leal	-4(%edi), %edi
	cmpl	$1, %edi
	jg	LBB3_30
## BB#31:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_142:
	movl	%edx, (%esp)
	calll	_gcopy
	movl	%eax, %ecx
	jmp	LBB3_250
LBB3_144:
	movl	8(%edx), %edx
LBB3_145:
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_alg
	movl	$-33554432, %ecx        ## imm = 0xFFFFFFFFFE000000
	andl	(%eax), %ecx
	cmpl	$335544320, %ecx        ## imm = 0x14000000
	jne	LBB3_147
## BB#146:
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfpoleval
	jmp	LBB3_148
LBB3_147:
	movl	4(%edi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	(%ecx), %edx
	addl	$-3, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
LBB3_148:                               ## %ZC_galoisapply.exit.i
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_basistoalg
	movl	48(%esp), %edx          ## 4-byte Reload
	cmpl	(%edx), %eax
	jb	LBB3_151
## BB#149:                              ## %isonstack.exit.i.i55
	cmpl	%eax, %ebp
	jbe	LBB3_151
## BB#150:                              ## %isonstack.exit.i.i55
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L3$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB3_151
## BB#152:
	movl	(%eax), %edi
	movl	%edi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	jb	LBB3_172
## BB#153:
	cmpl	$2, %ecx
	jne	LBB3_154
LBB3_172:
	movl	%edi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	movl	%ebp, %esi
	subl	%ecx, %esi
	movl	%edi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%esi, (%ecx)
	movl	%esi, %ecx
	je	LBB3_250
## BB#173:                              ## %.lr.ph.i.i.i58.preheader
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	%edi, %ecx
	movl	%edi, 52(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %esi
	xorl	$16777215, %esi         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %ebx
	movl	$-2, %ebp
	cmovel	%esi, %ebp
	leal	(%ebp,%edx), %edi
	cmpl	$-2, %edi
	je	LBB3_182
## BB#174:                              ## %overflow.checked349
	addl	$2, %edi
	movl	%edi, 32(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%ebx, %esi
	movl	$0, 40(%esp)            ## 4-byte Folded Spill
	movl	%edi, %ecx
	andl	$-8, %ecx
	je	LBB3_180
## BB#175:                              ## %vector.memcheck363
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	movl	$-2, %ecx
	subl	%esi, %ecx
	leal	(%eax,%ecx,4), %edi
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	%edi, %ecx
	ja	LBB3_177
## BB#176:                              ## %vector.memcheck363
	leal	-4(%eax,%edx,4), %edi
	addl	%edx, %esi
	movl	$-2, %ecx
	subl	%esi, %ecx
	movl	36(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %esi
	cmpl	%esi, %edi
	jbe	LBB3_180
LBB3_177:                               ## %vector.body340.preheader
	movl	%edx, %ecx
	subl	28(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %esi
	movl	36(%esp), %ebx          ## 4-byte Reload
LBB3_178:                               ## %vector.body340
                                        ## =>This Inner Loop Header: Depth=1
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%eax,%ecx,4), %xmm1
	movups	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movups	%xmm1, -12(%ebx,%ecx,4)
	movups	%xmm2, -28(%ebx,%ecx,4)
	addl	$-8, %esi
	addl	$-8, %ebp
	jne	LBB3_178
## BB#179:
	movl	40(%esp), %edx          ## 4-byte Reload
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	$-2, %ebx
LBB3_180:                               ## %middle.block341
	movl	32(%esp), %ecx          ## 4-byte Reload
	cmpl	40(%esp), %ecx          ## 4-byte Folded Reload
	je	LBB3_181
LBB3_182:                               ## %.lr.ph.i.i.i58.preheader838
	movl	%edx, %ebp
	notl	%ebp
	cmpl	$-3, %ebp
	cmovgl	%ebp, %ebx
	leal	2(%edx,%ebx), %ecx
	leal	1(%edx,%ebx), %esi
	testb	$3, %cl
	je	LBB3_185
## BB#183:                              ## %.lr.ph.i.i.i58.prol.preheader
	movl	52(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	36(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%ecx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	leal	2(%edx,%ecx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_184:                               ## %.lr.ph.i.i.i58.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%ebx,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebp
	jne	LBB3_184
LBB3_185:                               ## %.lr.ph.i.i.i58.preheader838.split
	cmpl	$3, %esi
	jb	LBB3_181
## BB#186:                              ## %.lr.ph.i.i.i58.preheader838.split.split
	incl	%edx
	movl	52(%esp), %esi          ## 4-byte Reload
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	36(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_187:                               ## %.lr.ph.i.i.i58
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
	jg	LBB3_187
	jmp	LBB3_188
LBB3_151:                               ## %isonstack.exit.thread.i.i
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%ebp, (%ecx)
	movl	%eax, %ecx
	jmp	LBB3_251
LBB3_332:
	movl	68(%esp), %esi          ## 4-byte Reload
LBB3_338:                               ## %middle.block149
	cmpl	%ecx, 56(%esp)          ## 4-byte Folded Reload
	jne	LBB3_326
## BB#339:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_326:                               ## %.lr.ph.i.i48.preheader844
	movl	%edx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %edi
	leal	2(%edx,%edi), %ecx
	leal	1(%edx,%edi), %ebp
	testb	$3, %cl
	je	LBB3_329
## BB#327:                              ## %.lr.ph.i.i48.prol.preheader
	movl	%esi, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %edi
	cmpl	$-3, %ebx
	movl	$-2, %ecx
	cmovgl	%ebx, %ecx
	leal	2(%edx,%ecx), %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB3_328:                               ## %.lr.ph.i.i48.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%edi,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB3_328
LBB3_329:                               ## %.lr.ph.i.i48.preheader844.split
	cmpl	$3, %ebp
	jae	LBB3_340
## BB#330:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_340:                               ## %.lr.ph.i.i48.preheader844.split.split
	incl	%edx
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	.align	4, 0x90
LBB3_341:                               ## %.lr.ph.i.i48
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
	jg	LBB3_341
## BB#342:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_106:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_83:
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	leal	(%eax,%esi,4), %ecx
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	jmp	LBB3_84
LBB3_240:
	leal	L_.str4-L3$pb(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	calll	_pari_err
	movl	68(%esp), %ebx          ## 4-byte Reload
	movl	(%ebx), %ebp
	movl	40(%esp), %edx          ## 4-byte Reload
LBB3_241:
	movl	%edx, 40(%esp)          ## 4-byte Spill
	movl	4(%edx), %edx
	movl	(%edx), %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	leal	(,%esi,4), %eax
	movl	%ebp, %ecx
                                        ## kill: EBP<def> ECX<kill>
	subl	%eax, %ebp
	movl	48(%esp), %eax          ## 4-byte Reload
	subl	(%eax), %ecx
	shrl	$2, %ecx
	cmpl	%esi, %ecx
	movl	%esi, %ecx
	jae	LBB3_243
## BB#242:
	movl	$14, (%esp)
	movl	%edx, %esi
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	movl	%ecx, %ebp
	calll	_pari_err
	movl	%ebp, %ecx
	movl	36(%esp), %ebp          ## 4-byte Reload
	movl	%esi, %edx
LBB3_243:                               ## %cgetg_copy.exit.i
	movl	%ebp, (%ebx)
	movl	%ebx, 68(%esp)          ## 4-byte Spill
	movl	$-16777217, %eax        ## imm = 0xFFFFFFFFFEFFFFFF
	andl	(%edx), %eax
	movl	%eax, (%ebp)
	cmpl	$2, %ecx
	movl	56(%esp), %esi          ## 4-byte Reload
	jb	LBB3_246
## BB#244:                              ## %.lr.ph.preheader
	movl	$1, %ebx
LBB3_245:                               ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	%edi, 52(%esp)          ## 4-byte Spill
	movl	(%edx,%ebx,4), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	movl	%ebp, %esi
	movl	%ecx, %ebp
	movl	%edx, %edi
	calll	_galoisapply
	movl	%edi, %edx
	movl	52(%esp), %edi          ## 4-byte Reload
	movl	%ebp, %ecx
	movl	%esi, %ebp
	movl	56(%esp), %esi          ## 4-byte Reload
	movl	%eax, (%ebp,%ebx,4)
	incl	%ebx
	cmpl	%ecx, %ebx
	jl	LBB3_245
LBB3_246:                               ## %._crit_edge
	movl	%edx, %edi
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	calll	_ZC_copy
	movl	%eax, %ebx
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %esi
	leal	-12(%esi), %ecx
	movl	%esi, %eax
	movl	48(%esp), %edx          ## 4-byte Reload
	subl	(%edx), %eax
	cmpl	$11, %eax
	ja	LBB3_248
## BB#247:
	movl	$14, (%esp)
	movl	%ecx, %ebp
	calll	_pari_err
	movl	%ebp, %ecx
	movl	48(%esp), %edx          ## 4-byte Reload
LBB3_248:                               ## %mkmat2.exit.i
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$637534211, -12(%esi)   ## imm = 0x26000003
	movl	%edi, -8(%esi)
	movl	%ebx, -4(%esi)
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_251:                               ## %elt_galoisapply.exit
	movl	60(%esp), %esi          ## 4-byte Reload
LBB3_252:                               ## %elt_galoisapply.exit
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	%ecx, -4(%eax)
	movl	%eax, %edi
	cmpl	(%edx), %esi
	jb	LBB3_255
## BB#253:                              ## %isonstack.exit.i23
	cmpl	%esi, %ebx
	jbe	LBB3_255
## BB#254:                              ## %isonstack.exit.i23
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L3$pb(%eax), %eax
	cmpl	(%eax), %esi
	jae	LBB3_255
## BB#256:
	movl	(%esi), %ecx
	movl	%ecx, %eax
	shrl	$25, %eax
	leal	-21(%eax), %edx
	cmpl	$2, %edx
	jb	LBB3_275
## BB#257:
	cmpl	$2, %eax
	jne	LBB3_258
LBB3_275:
	movl	%ecx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	shll	$2, %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	movl	%ecx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	movl	68(%esp), %edx          ## 4-byte Reload
	movl	%esi, (%edx)
	je	LBB3_398
## BB#276:                              ## %.lr.ph.i.i32.preheader
	movl	%esi, 60(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %ebp
	xorl	$16777215, %ebp         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edx
	movl	$-2, %ebx
	cmovel	%ebp, %ebx
	leal	(%ebx,%eax), %esi
	cmpl	$-2, %esi
	jne	LBB3_280
## BB#277:
	movl	%eax, %ecx
	jmp	LBB3_278
LBB3_255:                               ## %isonstack.exit.thread.i24
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ebx, (%eax)
	jmp	LBB3_398
LBB3_258:
	cmpl	$1, %eax
	jne	LBB3_294
## BB#259:                              ## %isonstack.exit.i.i25
	movl	%ebx, %edx
	movl	-8(%edi), %ebx
	movl	%ebx, %eax
	andl	$16777215, %eax         ## imm = 0xFFFFFF
	leal	(,%eax,4), %ecx
	subl	%ecx, %edx
	movl	%edx, 60(%esp)          ## 4-byte Spill
	cmpl	$2, %eax
	movl	%edi, %esi
	jb	LBB3_274
## BB#260:                              ## %.lr.ph.i.i.i28.preheader
	movl	%ebx, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ecx, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edi
	cmovgl	%ebp, %edi
	addl	%ecx, %edi
	cmpl	$-1, %edi
	movl	%eax, %edx
	je	LBB3_269
## BB#261:                              ## %overflow.checked541
	incl	%edi
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	movl	$0, 72(%esp)            ## 4-byte Folded Spill
	movl	%edi, %esi
	andl	$-8, %esi
	je	LBB3_262
## BB#263:                              ## %vector.memcheck555
	movl	%esi, 48(%esp)          ## 4-byte Spill
	movl	$-4, %esi
	subl	%edx, %esi
	movl	%ebx, 56(%esp)          ## 4-byte Spill
	movl	44(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%esi,4), %esi
	movl	%esi, 52(%esp)          ## 4-byte Spill
	movl	56(%esp), %ebx          ## 4-byte Reload
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	-4(%esi), %esi
	cmpl	52(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB3_265
## BB#264:                              ## %vector.memcheck555
	movl	44(%esp), %esi          ## 4-byte Reload
	leal	-16(%esi,%ecx,4), %esi
	movl	%esi, 52(%esp)          ## 4-byte Spill
	addl	%ecx, %edx
	notl	%edx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%edx,4), %edx
	cmpl	%edx, 52(%esp)          ## 4-byte Folded Reload
	movl	%eax, %edx
	jbe	LBB3_268
LBB3_265:                               ## %vector.body532.preheader
	movl	%eax, %edx
	subl	48(%esp), %edx          ## 4-byte Folded Reload
	cmpl	$-3, %ebp
	movl	$-2, %esi
	cmovgl	%ebp, %esi
	movl	64(%esp), %ebp          ## 4-byte Reload
	leal	-16(%ebp), %ebp
	leal	1(%esi,%ecx), %esi
	movl	44(%esp), %ebx          ## 4-byte Reload
	leal	-28(%ebx,%ecx,4), %ecx
	andl	$-8, %esi
LBB3_266:                               ## %vector.body532
                                        ## =>This Inner Loop Header: Depth=1
	movdqu	-16(%ecx), %xmm0
	movups	(%ecx), %xmm1
	movups	%xmm1, (%ebp)
	movdqu	%xmm0, -16(%ebp)
	addl	$-32, %ebp
	addl	$-32, %ecx
	addl	$-8, %esi
	jne	LBB3_266
## BB#267:
	movl	48(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	56(%esp), %ebx          ## 4-byte Reload
	jmp	LBB3_268
LBB3_280:                               ## %overflow.checked493
	addl	$2, %esi
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%edx, %ebp
	movl	$0, 72(%esp)            ## 4-byte Folded Spill
	movl	%esi, %ecx
	andl	$-8, %ecx
	je	LBB3_281
## BB#282:                              ## %vector.memcheck507
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	movl	$-5, %ecx
	subl	%ebp, %ecx
	leal	(%edi,%ecx,4), %ecx
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	-4(%edi), %edi
	cmpl	%ecx, %edi
	ja	LBB3_284
## BB#283:                              ## %vector.memcheck507
	movl	44(%esp), %ecx          ## 4-byte Reload
	leal	-16(%ecx,%eax,4), %ecx
	addl	%eax, %ebp
	movl	$-2, %edi
	subl	%ebp, %edi
	movl	64(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%edi,4), %edi
	cmpl	%edi, %ecx
	movl	%eax, %ecx
	jbe	LBB3_287
LBB3_284:                               ## %vector.body484.preheader
	movl	%eax, %ecx
	subl	68(%esp), %ecx          ## 4-byte Folded Reload
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	-16(%edi), %ebp
	movl	44(%esp), %edi          ## 4-byte Reload
	leal	-28(%edi,%eax,4), %edi
	leal	2(%ebx,%eax), %ebx
	andl	$-8, %ebx
LBB3_285:                               ## %vector.body484
                                        ## =>This Inner Loop Header: Depth=1
	movdqu	-16(%edi), %xmm0
	movups	(%edi), %xmm1
	movups	%xmm1, (%ebp)
	movdqu	%xmm0, -16(%ebp)
	addl	$-32, %ebp
	addl	$-32, %edi
	addl	$-8, %ebx
	jne	LBB3_285
## BB#286:
	movl	68(%esp), %edi          ## 4-byte Reload
	movl	%edi, 72(%esp)          ## 4-byte Spill
	jmp	LBB3_287
LBB3_294:
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	leal	-12(%edi,%ecx,4), %eax
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	calll	_gerepile
	jmp	LBB3_399
LBB3_72:
	movl	68(%esp), %esi          ## 4-byte Reload
LBB3_78:                                ## %middle.block581
	cmpl	%ecx, 56(%esp)          ## 4-byte Folded Reload
	jne	LBB3_66
## BB#79:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_66:                                ## %.lr.ph.i.i12.preheader831
	movl	%edx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %edi
	leal	2(%edx,%edi), %ecx
	leal	1(%edx,%edi), %ebp
	testb	$3, %cl
	je	LBB3_69
## BB#67:                               ## %.lr.ph.i.i12.prol.preheader
	movl	%esi, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %edi
	cmpl	$-3, %ebx
	movl	$-2, %ecx
	cmovgl	%ebx, %ecx
	leal	2(%edx,%ecx), %ebx
	andl	$3, %ebx
	negl	%ebx
LBB3_68:                                ## %.lr.ph.i.i12.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%edi,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB3_68
LBB3_69:                                ## %.lr.ph.i.i12.preheader831.split
	cmpl	$3, %ebp
	jae	LBB3_80
## BB#70:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_80:                                ## %.lr.ph.i.i12.preheader831.split.split
	incl	%edx
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
LBB3_81:                                ## %.lr.ph.i.i12
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
	jg	LBB3_81
## BB#82:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_120:
	movl	64(%esp), %ebx          ## 4-byte Reload
	jmp	LBB3_252
LBB3_281:
	movl	%eax, %ecx
LBB3_287:                               ## %middle.block485
	cmpl	72(%esp), %esi          ## 4-byte Folded Reload
	jne	LBB3_278
## BB#288:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_278:                               ## %.lr.ph.i.i32.preheader834
	movl	%ecx, %esi
	notl	%esi
	cmpl	$-3, %esi
	cmovgl	%esi, %edx
	leal	2(%ecx,%edx), %ebx
	leal	1(%ecx,%edx), %edx
	testb	$1, %bl
	je	LBB3_279
## BB#289:                              ## %.lr.ph.i.i32.prol
	movl	44(%esp), %esi          ## 4-byte Reload
	movl	-16(%esi,%ecx,4), %esi
	decl	%ecx
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	%esi, (%ebx,%edi,4)
	jmp	LBB3_290
LBB3_279:
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_290:                               ## %.lr.ph.i.i32.preheader834.split
	movl	60(%esp), %esi          ## 4-byte Reload
	testl	%edx, %edx
	je	LBB3_398
## BB#291:                              ## %.lr.ph.i.i32.preheader834.split.split
	movl	%esi, %edi
	incl	%ecx
	movl	$-2, %edx
	subl	%eax, %edx
	leal	(%ebx,%edx,4), %eax
	movl	44(%esp), %esi          ## 4-byte Reload
LBB3_292:                               ## %.lr.ph.i.i32
                                        ## =>This Inner Loop Header: Depth=1
	movl	-20(%esi,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
	movl	-24(%esi,%ecx,4), %edx
	movl	%edx, -4(%eax,%ecx,4)
	addl	$-2, %ecx
	cmpl	$1, %ecx
	jg	LBB3_292
## BB#293:
	movl	%edi, %esi
	jmp	LBB3_398
LBB3_376:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_215:
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	56(%esp), %ecx          ## 4-byte Reload
	jmp	LBB3_252
LBB3_358:
	cmpl	$1, %ecx
	jne	LBB3_396
## BB#359:                              ## %isonstack.exit.i.i
	movl	4(%eax), %ecx
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	leal	(,%ecx,4), %esi
	subl	%esi, %edi
	movl	%edi, 60(%esp)          ## 4-byte Spill
	cmpl	$2, %ecx
	jb	LBB3_321
## BB#360:                              ## %.lr.ph.i.i.i.preheader
	movl	56(%esp), %ebp          ## 4-byte Reload
	andl	$16777215, %ebp         ## imm = 0xFFFFFF
	movl	%ebp, %edx
	negl	%edx
	cmpl	$-3, %edx
	movl	$-2, %edi
	cmovgl	%edx, %edi
	addl	%ebp, %edi
	cmpl	$-1, %edi
	movl	%ecx, %esi
	je	LBB3_369
## BB#361:                              ## %overflow.checked109
	incl	%edi
	movl	%edi, 52(%esp)          ## 4-byte Spill
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	movl	%edx, 48(%esp)          ## 4-byte Spill
	xorl	%edx, %edx
	andl	$-8, %edi
	je	LBB3_362
## BB#363:                              ## %vector.memcheck123
	movl	%esi, %edx
                                        ## kill: ESI<def> EDX<kill>
	notl	%esi
	leal	(%eax,%esi,4), %esi
	movl	%esi, 44(%esp)          ## 4-byte Spill
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	-4(%esi), %esi
	cmpl	44(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB3_365
## BB#364:                              ## %vector.memcheck123
	leal	-4(%eax,%ebp,4), %esi
	movl	%esi, 44(%esp)          ## 4-byte Spill
	addl	%ebp, %edx
	notl	%edx
	movl	%ebx, %esi
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %edx
	movl	%esi, %ebx
	cmpl	%edx, 44(%esp)          ## 4-byte Folded Reload
	movl	$0, %edx
	movl	%ecx, %esi
	jbe	LBB3_368
LBB3_365:                               ## %vector.body100.preheader
	movl	%ecx, %esi
	subl	%edi, %esi
	movl	%edi, 44(%esp)          ## 4-byte Spill
	movl	48(%esp), %edi          ## 4-byte Reload
	cmpl	$-3, %edi
	movl	$-2, %edx
	cmovgl	%edi, %edx
	leal	1(%edx,%ebp), %edi
	andl	$-8, %edi
	movl	72(%esp), %edx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%edx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_366:                               ## %vector.body100
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movups	-12(%eax,%edx,4), %xmm1
	movups	-28(%eax,%edx,4), %xmm2
	subl	%ecx, %edx
	movups	%xmm1, -12(%ebx,%edx,4)
	movups	%xmm2, -28(%ebx,%edx,4)
	addl	$-8, %ebp
	addl	$-8, %edi
	jne	LBB3_366
## BB#367:
	movl	44(%esp), %edx          ## 4-byte Reload
	movl	68(%esp), %ebx          ## 4-byte Reload
	jmp	LBB3_368
LBB3_396:
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	leal	(%eax,%esi,4), %ecx
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
LBB3_84:
	movl	%ecx, 4(%esp)
	calll	_gerepile
	jmp	LBB3_399
LBB3_197:
	cmpl	$1, %ecx
	jne	LBB3_235
## BB#198:                              ## %isonstack.exit.i.i8.i
	movl	4(%eax), %ecx
	movl	%ecx, 52(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	leal	(,%ecx,4), %edx
	movl	%ebp, %esi
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	subl	%edx, %esi
	movl	%esi, %edi
	cmpl	$2, %ecx
	jb	LBB3_171
## BB#199:                              ## %.lr.ph.i.i.i11.i.preheader
	movl	52(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebx
	negl	%ebx
	cmpl	$-3, %ebx
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	addl	%edx, %ebp
	cmpl	$-1, %ebp
	movl	%ecx, %esi
	je	LBB3_208
## BB#200:                              ## %overflow.checked301
	incl	%ebp
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebx
	movl	%ebp, %esi
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	movl	$0, 40(%esp)            ## 4-byte Folded Spill
	andl	$-8, %esi
	movl	%esi, 28(%esp)          ## 4-byte Spill
	je	LBB3_201
## BB#202:                              ## %vector.memcheck315
	movl	%ebp, %esi
	notl	%esi
	leal	(%eax,%esi,4), %esi
	movl	%esi, 24(%esp)          ## 4-byte Spill
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %esi
	movl	56(%esp), %ecx          ## 4-byte Reload
	cmpl	24(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB3_204
## BB#203:                              ## %vector.memcheck315
	leal	-4(%eax,%edx,4), %esi
	movl	%esi, 24(%esp)          ## 4-byte Spill
	addl	%edx, %ebp
	notl	%ebp
	movl	%ecx, %esi
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebp,4), %ebp
	movl	%esi, %ecx
	cmpl	%ebp, 24(%esp)          ## 4-byte Folded Reload
                                        ## kill: ESI<def> ECX<kill>
	jbe	LBB3_207
LBB3_204:                               ## %vector.body292.preheader
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	%ecx, %esi
	subl	28(%esp), %esi          ## 4-byte Folded Reload
	cmpl	$-3, %ebx
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	leal	1(%ebp,%edx), %ebx
	andl	$-8, %ebx
	movl	72(%esp), %ebp          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ebp), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	36(%esp), %ecx          ## 4-byte Reload
LBB3_205:                               ## %vector.body292
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebp
	movups	-12(%eax,%ebp,4), %xmm1
	movups	-28(%eax,%ebp,4), %xmm2
	subl	56(%esp), %ebp          ## 4-byte Folded Reload
	movups	%xmm1, -12(%ecx,%ebp,4)
	movups	%xmm2, -28(%ecx,%ebp,4)
	addl	$-8, %edx
	addl	$-8, %ebx
	jne	LBB3_205
## BB#206:
	movl	28(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	56(%esp), %ecx          ## 4-byte Reload
	jmp	LBB3_207
LBB3_384:                               ## %overflow.checked
	addl	$2, %esi
	movl	%esi, 56(%esp)          ## 4-byte Spill
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%edi, %ebx
	xorl	%ecx, %ecx
	andl	$-8, %esi
	je	LBB3_385
## BB#386:                              ## %vector.memcheck
	movl	%esi, 52(%esp)          ## 4-byte Spill
	movl	$-2, %edi
	movl	$-2, %ecx
	subl	%ebx, %ecx
	leal	(%eax,%ecx,4), %esi
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	%esi, %ecx
	movl	68(%esp), %esi          ## 4-byte Reload
	ja	LBB3_388
## BB#387:                              ## %vector.memcheck
	leal	-4(%eax,%edx,4), %ecx
	addl	%edx, %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ebx,4), %ebx
	movl	$-2, %edi
	cmpl	%ebx, %ecx
	movl	$0, %ecx
	jbe	LBB3_391
LBB3_388:                               ## %vector.body.preheader
	movl	%edx, %ecx
	subl	52(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 48(%esp)          ## 4-byte Spill
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %ebx
	movl	64(%esp), %edi          ## 4-byte Reload
LBB3_389:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%eax,%ecx,4), %xmm1
	movups	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movups	%xmm1, -12(%edi,%ecx,4)
	movups	%xmm2, -28(%edi,%ecx,4)
	addl	$-8, %ebx
	addl	$-8, %ebp
	jne	LBB3_389
## BB#390:
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	$-2, %edi
	jmp	LBB3_391
LBB3_223:                               ## %overflow.checked253
	addl	$2, %edi
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%ebx, %esi
	movl	$0, 40(%esp)            ## 4-byte Folded Spill
	movl	%edi, %ecx
	andl	$-8, %ecx
	je	LBB3_224
## BB#225:                              ## %vector.memcheck267
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	$-2, %ecx
	subl	%esi, %ecx
	leal	(%eax,%ecx,4), %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	28(%esp), %ecx          ## 4-byte Folded Reload
	ja	LBB3_227
## BB#226:                              ## %vector.memcheck267
	movl	%edi, 32(%esp)          ## 4-byte Spill
	leal	-4(%eax,%edx,4), %edi
	addl	%edx, %esi
	movl	$-2, %ecx
	subl	%esi, %ecx
	movl	36(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %esi
	cmpl	%esi, %edi
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edi          ## 4-byte Reload
	jbe	LBB3_230
LBB3_227:                               ## %vector.body244.preheader
	movl	%edi, 32(%esp)          ## 4-byte Spill
	movl	%edx, %edi
	subl	24(%esp), %edi          ## 4-byte Folded Reload
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %esi
	movl	36(%esp), %ebx          ## 4-byte Reload
LBB3_228:                               ## %vector.body244
                                        ## =>This Inner Loop Header: Depth=1
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movups	-12(%eax,%ecx,4), %xmm1
	movups	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movups	%xmm1, -12(%ebx,%ecx,4)
	movups	%xmm2, -28(%ebx,%ecx,4)
	addl	$-8, %esi
	addl	$-8, %ebp
	jne	LBB3_228
## BB#229:
	movl	%edi, %edx
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	$-2, %ebx
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edi          ## 4-byte Reload
	jmp	LBB3_230
LBB3_122:
	movl	%ecx, 56(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	movl	36(%esp), %edi          ## 4-byte Reload
	movl	$-2, %ecx
	jmp	LBB3_123
LBB3_308:
	movl	%ecx, %esi
LBB3_314:                               ## %middle.block197
	movl	52(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, 48(%esp)          ## 4-byte Folded Reload
	je	LBB3_321
LBB3_315:                               ## %.lr.ph.i.i.i44.preheader843
	movl	%esi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	(%esi,%edx), %edi
	leal	1(%esi,%edx), %edx
	testb	$3, %dl
	je	LBB3_318
## BB#316:                              ## %.lr.ph.i.i.i44.prol.preheader
	movl	56(%esp), %edx          ## 4-byte Reload
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%esi,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_317:                               ## %.lr.ph.i.i.i44.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edx
	movl	%edx, (%ebx,%esi,4)
	leal	-1(%esi), %esi
	incl	%ebp
	jne	LBB3_317
LBB3_318:                               ## %.lr.ph.i.i.i44.preheader843.split
	cmpl	$3, %edi
	movl	68(%esp), %ebx          ## 4-byte Reload
	jb	LBB3_321
## BB#319:                              ## %.lr.ph.i.i.i44.preheader843.split.split
	movl	56(%esp), %edi          ## 4-byte Reload
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edx
LBB3_320:                               ## %.lr.ph.i.i.i44
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edi
	movl	%edi, (%edx,%esi,4)
	movl	-8(%eax,%esi,4), %edi
	movl	%edi, -4(%edx,%esi,4)
	movl	-12(%eax,%esi,4), %edi
	movl	%edi, -8(%edx,%esi,4)
	movl	-16(%eax,%esi,4), %edi
	movl	%edi, -12(%edx,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB3_320
	jmp	LBB3_321
LBB3_154:
	cmpl	$1, %ecx
	jne	LBB3_235
## BB#155:                              ## %isonstack.exit.i.i.i
	movl	4(%eax), %ecx
	movl	%ecx, 52(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	leal	(,%ecx,4), %edx
	movl	%ebp, %esi
	movl	%ebp, 36(%esp)          ## 4-byte Spill
	subl	%edx, %esi
	movl	%esi, %edi
	cmpl	$2, %ecx
	jb	LBB3_171
## BB#156:                              ## %.lr.ph.i.i.i.i.preheader
	movl	52(%esp), %edx          ## 4-byte Reload
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, %ebx
	negl	%ebx
	cmpl	$-3, %ebx
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	addl	%edx, %ebp
	cmpl	$-1, %ebp
	movl	%ecx, %esi
	je	LBB3_165
## BB#157:                              ## %overflow.checked397
	movl	%edi, 56(%esp)          ## 4-byte Spill
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	incl	%ebp
	movl	%ebp, 32(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebx
	movl	%ebp, %ecx
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	xorl	%edi, %edi
	movl	%ecx, %esi
	andl	$-8, %esi
	movl	%esi, 28(%esp)          ## 4-byte Spill
	je	LBB3_158
## BB#159:                              ## %vector.memcheck411
	movl	%ebp, %esi
	notl	%esi
	leal	(%eax,%esi,4), %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %esi
	cmpl	24(%esp), %esi          ## 4-byte Folded Reload
	ja	LBB3_161
## BB#160:                              ## %vector.memcheck411
	leal	-4(%eax,%edx,4), %esi
	addl	%edx, %ebp
	notl	%ebp
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebp,4), %ebp
	cmpl	%ebp, %esi
	movl	40(%esp), %esi          ## 4-byte Reload
	jbe	LBB3_164
LBB3_161:                               ## %vector.body388.preheader
	movl	40(%esp), %edi          ## 4-byte Reload
	movl	%edi, %esi
	subl	28(%esp), %esi          ## 4-byte Folded Reload
	cmpl	$-3, %ebx
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	leal	1(%ebp,%edx), %ebx
	andl	$-8, %ebx
	movl	72(%esp), %ebp          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%ebp), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	36(%esp), %ecx          ## 4-byte Reload
LBB3_162:                               ## %vector.body388
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebp
	movups	-12(%eax,%ebp,4), %xmm1
	movups	-28(%eax,%ebp,4), %xmm2
	subl	%edi, %ebp
	movups	%xmm1, -12(%ecx,%ebp,4)
	movups	%xmm2, -28(%ecx,%ebp,4)
	addl	$-8, %edx
	addl	$-8, %ebx
	jne	LBB3_162
## BB#163:
	movl	28(%esp), %edi          ## 4-byte Reload
	jmp	LBB3_164
LBB3_235:
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	leal	(%eax,%edi,4), %ecx
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 4(%esp)
	calll	_gerepile
	movl	%eax, %ecx
	jmp	LBB3_250
LBB3_126:
	movl	%esi, %eax
	movl	36(%esp), %edi          ## 4-byte Reload
LBB3_130:                               ## %middle.block437
	movl	$-2, %ecx
	xorl	%edx, %edx
	jmp	LBB3_134
LBB3_385:
	movl	68(%esp), %esi          ## 4-byte Reload
LBB3_391:                               ## %middle.block
	cmpl	%ecx, 56(%esp)          ## 4-byte Folded Reload
	jne	LBB3_379
## BB#392:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_379:                               ## %.lr.ph.i.i.preheader847
	movl	%edx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %edi
	leal	2(%edx,%edi), %ecx
	leal	1(%edx,%edi), %ebp
	testb	$3, %cl
	je	LBB3_382
## BB#380:                              ## %.lr.ph.i.i.prol.preheader
	movl	%esi, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	64(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %edi
	cmpl	$-3, %ebx
	movl	$-2, %ecx
	cmovgl	%ebx, %ecx
	leal	2(%edx,%ecx), %ebx
	andl	$3, %ebx
	negl	%ebx
LBB3_381:                               ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%edi,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB3_381
LBB3_382:                               ## %.lr.ph.i.i.preheader847.split
	cmpl	$3, %ebp
	jae	LBB3_393
## BB#383:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_393:                               ## %.lr.ph.i.i.preheader847.split.split
	incl	%edx
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	64(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
LBB3_394:                               ## %.lr.ph.i.i
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
	jg	LBB3_394
## BB#395:
	movl	60(%esp), %esi          ## 4-byte Reload
	jmp	LBB3_398
LBB3_224:
	movl	56(%esp), %ecx          ## 4-byte Reload
LBB3_230:                               ## %middle.block245
	cmpl	40(%esp), %edi          ## 4-byte Folded Reload
	je	LBB3_231
LBB3_218:                               ## %.lr.ph.i.i15.i.preheader841
	movl	%ecx, %edi
	movl	%edx, %ebp
	notl	%ebp
	cmpl	$-3, %ebp
	cmovgl	%ebp, %ebx
	leal	2(%edx,%ebx), %ecx
	leal	1(%edx,%ebx), %esi
	testb	$3, %cl
	je	LBB3_221
## BB#219:                              ## %.lr.ph.i.i15.i.prol.preheader
	movl	52(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	36(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%ecx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	leal	2(%edx,%ecx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_220:                               ## %.lr.ph.i.i15.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%ebx,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebp
	jne	LBB3_220
LBB3_221:                               ## %.lr.ph.i.i15.i.preheader841.split
	cmpl	$3, %esi
	jae	LBB3_232
## BB#222:
	movl	64(%esp), %ebx          ## 4-byte Reload
	jmp	LBB3_234
LBB3_232:                               ## %.lr.ph.i.i15.i.preheader841.split.split
	incl	%edx
	movl	52(%esp), %esi          ## 4-byte Reload
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	36(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_233:                               ## %.lr.ph.i.i15.i
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
	jg	LBB3_233
LBB3_234:
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	%edi, %ecx
	jmp	LBB3_252
LBB3_131:                               ## %vector.body436.preheader
	movl	%ebx, %eax
	subl	24(%esp), %eax          ## 4-byte Folded Reload
	movl	%eax, 28(%esp)          ## 4-byte Spill
	cmpl	$-3, %ebp
	movl	$-2, %eax
	cmovgl	%ebp, %eax
	leal	1(%eax,%edx), %ebp
	andl	$-8, %ebp
	movl	72(%esp), %eax          ## 4-byte Reload
	movdqa	LCPI3_0-L3$pb(%eax), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
LBB3_132:                               ## %vector.body436
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	movups	-12(%ecx,%eax,4), %xmm1
	movups	-28(%ecx,%eax,4), %xmm2
	subl	%ebx, %eax
	movups	%xmm1, -12(%edi,%eax,4)
	movups	%xmm2, -28(%edi,%eax,4)
	addl	$-8, %edx
	addl	$-8, %ebp
	jne	LBB3_132
## BB#133:
	movl	28(%esp), %ebx          ## 4-byte Reload
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	$-2, %ecx
LBB3_134:                               ## %middle.block437
	cmpl	%edx, 32(%esp)          ## 4-byte Folded Reload
	jne	LBB3_123
## BB#135:
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	%eax, %esi
	movl	56(%esp), %ecx          ## 4-byte Reload
	jmp	LBB3_252
LBB3_123:                               ## %.lr.ph.i.i54.preheader836
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%ebx, %edx
	negl	%edx
	cmpl	$-3, %edx
	cmovgl	%edx, %ecx
	movl	%ecx, %eax
	leal	(%ebx,%eax), %ecx
	leal	1(%ebx,%eax), %eax
	testb	$3, %al
	je	LBB3_124
## BB#136:                              ## %.lr.ph.i.i54.prol.preheader
	movl	52(%esp), %eax          ## 4-byte Reload
	notl	%eax
	orl	$1056964608, %eax       ## imm = 0x3F000000
	leal	(%edi,%eax,4), %eax
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	leal	1(%ebx,%esi), %edx
	andl	$3, %edx
	negl	%edx
	movl	40(%esp), %ebp          ## 4-byte Reload
LBB3_137:                               ## %.lr.ph.i.i54.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%ebx,4), %esi
	movl	%esi, (%eax,%ebx,4)
	leal	-1(%ebx), %ebx
	incl	%edx
	jne	LBB3_137
	jmp	LBB3_138
LBB3_124:
	movl	40(%esp), %ebp          ## 4-byte Reload
LBB3_138:                               ## %.lr.ph.i.i54.preheader836.split
	cmpl	$3, %ecx
	jae	LBB3_139
LBB3_181:
	movl	64(%esp), %ebx          ## 4-byte Reload
LBB3_188:
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	56(%esp), %ecx          ## 4-byte Reload
	jmp	LBB3_252
LBB3_139:                               ## %.lr.ph.i.i54.preheader836.split.split
	movl	52(%esp), %ecx          ## 4-byte Reload
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	36(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%ecx,4), %eax
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	48(%esp), %edx          ## 4-byte Reload
LBB3_140:                               ## %.lr.ph.i.i54
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%ebp,%ebx,4), %ecx
	movl	%ecx, (%eax,%ebx,4)
	movl	-8(%ebp,%ebx,4), %ecx
	movl	%ecx, -4(%eax,%ebx,4)
	movl	-12(%ebp,%ebx,4), %ecx
	movl	%ecx, -8(%eax,%ebx,4)
	movl	-16(%ebp,%ebx,4), %ecx
	movl	%ecx, -12(%eax,%ebx,4)
	leal	-4(%ebx), %ebx
	cmpl	$1, %ebx
	jg	LBB3_140
## BB#141:
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	56(%esp), %ecx          ## 4-byte Reload
	jmp	LBB3_252
LBB3_47:
	movl	%ecx, %esi
LBB3_53:                                ## %middle.block629
	movl	52(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, 48(%esp)          ## 4-byte Folded Reload
	je	LBB3_60
LBB3_54:                                ## %.lr.ph.i.i.i8.preheader830
	movl	%esi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	cmovgl	%ebp, %ebx
	leal	(%esi,%ebx), %edi
	leal	1(%esi,%ebx), %edx
	testb	$3, %dl
	je	LBB3_57
## BB#55:                               ## %.lr.ph.i.i.i8.prol.preheader
	movl	56(%esp), %edx          ## 4-byte Reload
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%esi,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_56:                                ## %.lr.ph.i.i.i8.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edx
	movl	%edx, (%ebx,%esi,4)
	leal	-1(%esi), %esi
	incl	%ebp
	jne	LBB3_56
LBB3_57:                                ## %.lr.ph.i.i.i8.preheader830.split
	cmpl	$3, %edi
	jb	LBB3_60
## BB#58:                               ## %.lr.ph.i.i.i8.preheader830.split.split
	movl	56(%esp), %edi          ## 4-byte Reload
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edx
LBB3_59:                                ## %.lr.ph.i.i.i8
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edi
	movl	%edi, (%edx,%esi,4)
	movl	-8(%eax,%esi,4), %edi
	movl	%edi, -4(%edx,%esi,4)
	movl	-12(%eax,%esi,4), %edi
	movl	%edi, -8(%edx,%esi,4)
	movl	-16(%eax,%esi,4), %edi
	movl	%edi, -12(%edx,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB3_59
LBB3_60:                                ## %gerepileuptoint.exit.i9
	orl	$33554432, %ecx         ## imm = 0x2000000
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	%ecx, (%esi)
	jmp	LBB3_61
LBB3_262:
	movl	%eax, %edx
LBB3_268:                               ## %middle.block533
	cmpl	72(%esp), %edi          ## 4-byte Folded Reload
	movl	44(%esp), %esi          ## 4-byte Reload
	je	LBB3_274
LBB3_269:                               ## %.lr.ph.i.i.i28.preheader833
	movl	%edx, %ecx
	negl	%ecx
	cmpl	$-3, %ecx
	movl	$-2, %edi
	cmovgl	%ecx, %edi
	leal	(%edx,%edi), %ebp
	leal	1(%edx,%edi), %ecx
	testb	$1, %cl
	je	LBB3_271
## BB#270:                              ## %.lr.ph.i.i.i28.prol
	movl	-16(%esi,%edx,4), %ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	decl	%edx
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%ebp, 56(%esp)          ## 4-byte Spill
	movl	64(%esp), %ebp          ## 4-byte Reload
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%ebp,%edi,4)
	movl	56(%esp), %ebp          ## 4-byte Reload
LBB3_271:                               ## %.lr.ph.i.i.i28.preheader833.split
	testl	%ebp, %ebp
	movl	%esi, %edi
	je	LBB3_274
## BB#272:                              ## %.lr.ph.i.i.i28.preheader833.split.split
	notl	%ebx
	orl	$1056964608, %ebx       ## imm = 0x3F000000
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebx,4), %ecx
LBB3_273:                               ## %.lr.ph.i.i.i28
                                        ## =>This Inner Loop Header: Depth=1
	movl	-16(%edi,%edx,4), %esi
	movl	%esi, (%ecx,%edx,4)
	movl	-20(%edi,%edx,4), %esi
	movl	%esi, -4(%ecx,%edx,4)
	leal	-2(%edx), %edx
	cmpl	$1, %edx
	jg	LBB3_273
LBB3_274:                               ## %gerepileuptoint.exit.i29
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	%eax, (%esi)
LBB3_61:                                ## %icopy.exit
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	jmp	LBB3_398
LBB3_362:
	movl	%ecx, %esi
LBB3_368:                               ## %middle.block101
	cmpl	%edx, 52(%esp)          ## 4-byte Folded Reload
	je	LBB3_321
LBB3_369:                               ## %.lr.ph.i.i.i.preheader846
	movl	%esi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	(%esi,%edx), %edi
	leal	1(%esi,%edx), %edx
	testb	$3, %dl
	je	LBB3_372
## BB#370:                              ## %.lr.ph.i.i.i.prol.preheader
	movl	56(%esp), %edx          ## 4-byte Reload
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	64(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%esi,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_371:                               ## %.lr.ph.i.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edx
	movl	%edx, (%ebx,%esi,4)
	leal	-1(%esi), %esi
	incl	%ebp
	jne	LBB3_371
LBB3_372:                               ## %.lr.ph.i.i.i.preheader846.split
	cmpl	$3, %edi
	movl	68(%esp), %ebx          ## 4-byte Reload
	jb	LBB3_321
## BB#373:                              ## %.lr.ph.i.i.i.preheader846.split.split
	movl	56(%esp), %edi          ## 4-byte Reload
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	64(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edx
LBB3_374:                               ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edi
	movl	%edi, (%edx,%esi,4)
	movl	-8(%eax,%esi,4), %edi
	movl	%edi, -4(%edx,%esi,4)
	movl	-12(%eax,%esi,4), %edi
	movl	%edi, -8(%edx,%esi,4)
	movl	-16(%eax,%esi,4), %edi
	movl	%edi, -12(%edx,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB3_374
LBB3_321:                               ## %gerepileuptoint.exit.i45
	orl	$33554432, %ecx         ## imm = 0x2000000
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	%ecx, (%esi)
	movl	%esi, (%ebx)
	jmp	LBB3_398
LBB3_201:
	movl	%ecx, %esi
LBB3_207:                               ## %middle.block293
	movl	40(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, 32(%esp)          ## 4-byte Folded Reload
	je	LBB3_171
LBB3_208:                               ## %.lr.ph.i.i.i11.i.preheader840
	movl	%esi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	(%esi,%edx), %ebx
	movl	%ebx, 40(%esp)          ## 4-byte Spill
	leal	1(%esi,%edx), %ebx
	testb	$3, %bl
	je	LBB3_211
## BB#209:                              ## %.lr.ph.i.i.i11.i.prol.preheader
	movl	52(%esp), %ebx          ## 4-byte Reload
	notl	%ebx
	orl	$1056964608, %ebx       ## imm = 0x3F000000
	movl	%ecx, %edx
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebx,4), %ebx
	movl	%edx, %ecx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%esi,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_210:                               ## %.lr.ph.i.i.i11.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edx
	movl	%edx, (%ebx,%esi,4)
	leal	-1(%esi), %esi
	incl	%ebp
	jne	LBB3_210
LBB3_211:                               ## %.lr.ph.i.i.i11.i.preheader840.split
	cmpl	$3, 40(%esp)            ## 4-byte Folded Reload
	jb	LBB3_171
## BB#212:                              ## %.lr.ph.i.i.i11.i.preheader840.split.split
	movl	52(%esp), %edx          ## 4-byte Reload
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	%ecx, %ebx
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edx,4), %edx
	movl	%ebx, %ecx
LBB3_213:                               ## %.lr.ph.i.i.i11.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %ebx
	movl	%ebx, (%edx,%esi,4)
	movl	-8(%eax,%esi,4), %ebx
	movl	%ebx, -4(%edx,%esi,4)
	movl	-12(%eax,%esi,4), %ebx
	movl	%ebx, -8(%edx,%esi,4)
	movl	-16(%eax,%esi,4), %ebx
	movl	%ebx, -12(%edx,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB3_213
	jmp	LBB3_171
LBB3_158:
	movl	40(%esp), %esi          ## 4-byte Reload
LBB3_164:                               ## %middle.block389
	cmpl	%edi, 32(%esp)          ## 4-byte Folded Reload
	movl	40(%esp), %ecx          ## 4-byte Reload
	movl	56(%esp), %edi          ## 4-byte Reload
	je	LBB3_171
LBB3_165:                               ## %.lr.ph.i.i.i.i.preheader837
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	%esi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	leal	(%esi,%ecx), %edx
	movl	%edx, 56(%esp)          ## 4-byte Spill
	leal	1(%esi,%ecx), %ebx
	testb	$3, %bl
	je	LBB3_168
## BB#166:                              ## %.lr.ph.i.i.i.i.prol.preheader
	movl	52(%esp), %ebx          ## 4-byte Reload
	notl	%ebx
	orl	$1056964608, %ebx       ## imm = 0x3F000000
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%ebx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%esi,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB3_167:                               ## %.lr.ph.i.i.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edx
	movl	%edx, (%ebx,%esi,4)
	leal	-1(%esi), %esi
	incl	%ebp
	jne	LBB3_167
LBB3_168:                               ## %.lr.ph.i.i.i.i.preheader837.split
	cmpl	$3, 56(%esp)            ## 4-byte Folded Reload
	movl	40(%esp), %ecx          ## 4-byte Reload
	jb	LBB3_171
## BB#169:                              ## %.lr.ph.i.i.i.i.preheader837.split.split
	movl	52(%esp), %edx          ## 4-byte Reload
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	%ecx, %ebx
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%edx,4), %edx
	movl	%ebx, %ecx
LBB3_170:                               ## %.lr.ph.i.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %ebx
	movl	%ebx, (%edx,%esi,4)
	movl	-8(%eax,%esi,4), %ebx
	movl	%ebx, -4(%edx,%esi,4)
	movl	-12(%eax,%esi,4), %ebx
	movl	%ebx, -8(%edx,%esi,4)
	movl	-16(%eax,%esi,4), %ebx
	movl	%ebx, -12(%edx,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB3_170
LBB3_171:                               ## %gerepileuptoint.exit.i.i
	orl	$33554432, %ecx         ## imm = 0x2000000
	movl	%ecx, (%edi)
	movl	%edi, %ecx
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
LBB3_231:
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	60(%esp), %esi          ## 4-byte Reload
	movl	48(%esp), %edx          ## 4-byte Reload
	jmp	LBB3_252
	.align	2, 0x90
L3_0_set_10 = LBB3_10-L3$pb
L3_0_set_397 = LBB3_397-L3$pb
L3_0_set_32 = LBB3_32-L3$pb
L3_0_set_33 = LBB3_33-L3$pb
L3_0_set_34 = LBB3_34-L3$pb
LJTI3_0:
	.long	L3_0_set_10
	.long	L3_0_set_397
	.long	L3_0_set_397
	.long	L3_0_set_32
	.long	L3_0_set_397
	.long	L3_0_set_397
	.long	L3_0_set_397
	.long	L3_0_set_397
	.long	L3_0_set_33
	.long	L3_0_set_34
L3_1_set_117 = LBB3_117-L3$pb
L3_1_set_249 = LBB3_249-L3$pb
L3_1_set_142 = LBB3_142-L3$pb
L3_1_set_144 = LBB3_144-L3$pb
L3_1_set_145 = LBB3_145-L3$pb
LJTI3_1:
	.long	L3_1_set_117
	.long	L3_1_set_249
	.long	L3_1_set_249
	.long	L3_1_set_142
	.long	L3_1_set_249
	.long	L3_1_set_249
	.long	L3_1_set_249
	.long	L3_1_set_249
	.long	L3_1_set_144
	.long	L3_1_set_145

	.globl	_nfgaloismatrix
	.align	4, 0x90
_nfgaloismatrix:                        ## @nfgaloismatrix
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L4$pb
L4$pb:
	popl	%ebp
	movl	84(%esp), %esi
	movl	80(%esp), %eax
	movl	%eax, (%esp)
	calll	_checknf
	movl	%eax, %edi
	movl	28(%edi), %ebx
	movl	(%esi), %ecx
	movl	%ecx, %eax
	andl	$-33554432, %eax        ## imm = 0xFFFFFFFFFE000000
	cmpl	$603979776, %eax        ## imm = 0x24000000
	jne	LBB4_2
## BB#1:
	movl	%esi, 52(%esp)          ## 4-byte Spill
	jmp	LBB4_3
LBB4_2:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_algtobasis
	movl	%eax, 52(%esp)          ## 4-byte Spill
	movl	(%eax), %ecx
LBB4_3:
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	movl	%ebp, %esi
	movl	%esi, 36(%esp)          ## 4-byte Spill
	movl	L_avma$non_lazy_ptr-L4$pb(%esi), %eax
	movl	%eax, 40(%esp)          ## 4-byte Spill
	movl	(%eax), %edx
	movl	%edx, 32(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	leal	(,%ecx,4), %eax
	movl	%edx, %ebp
	subl	%eax, %ebp
	movl	%ebp, 56(%esp)          ## 4-byte Spill
	movl	L_bot$non_lazy_ptr-L4$pb(%esi), %esi
	movl	%esi, 28(%esp)          ## 4-byte Spill
	subl	(%esi), %edx
	shrl	$2, %edx
	cmpl	%ecx, %edx
	movl	%ecx, %esi
	jae	LBB4_5
## BB#4:
	movl	$14, (%esp)
	calll	_pari_err
LBB4_5:                                 ## %cgetg.exit
	movl	56(%esp), %ebp          ## 4-byte Reload
	movl	40(%esp), %ecx          ## 4-byte Reload
	movl	%ebp, (%ecx)
	movl	%esi, %eax
	orl	$637534208, %eax        ## imm = 0x26000000
	movl	%eax, (%ebp)
	movl	(%ecx), %ebp
	movl	44(%esp), %eax          ## 4-byte Reload
	leal	(%ebp,%eax,4), %eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	movl	%ebp, %eax
	movl	28(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB4_7
## BB#6:
	movl	$14, (%esp)
	calll	_pari_err
LBB4_7:                                 ## %new_chunk.exit.i.i.i
	movl	44(%esp), %ecx          ## 4-byte Reload
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	%esi, 48(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	orl	$603979776, %eax        ## imm = 0x24000000
	movl	%eax, (%ecx)
	cmpl	$2, %esi
	jb	LBB4_15
## BB#8:                                ## %.lr.ph.i.i.preheader
	movl	48(%esp), %eax          ## 4-byte Reload
	leal	-1(%eax), %ecx
	leal	-2(%eax), %edx
	movl	$1, %eax
	testb	$3, %cl
	je	LBB4_12
## BB#9:                                ## %.lr.ph.i.i.prol.preheader
	movl	%edx, 28(%esp)          ## 4-byte Spill
	movl	%ebx, 40(%esp)          ## 4-byte Spill
	movl	$1, %eax
	subl	48(%esp), %eax          ## 4-byte Folded Reload
	leal	(%ebp,%eax,4), %edx
	movl	24(%esp), %eax          ## 4-byte Reload
	addb	$3, %al
	movzbl	%al, %ecx
	andl	$3, %ecx
	xorl	%eax, %eax
	movl	36(%esp), %esi          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L4$pb(%esi), %ebx
	.align	4, 0x90
LBB4_10:                                ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ebx), %esi
	movl	%esi, (%edx,%eax,4)
	incl	%eax
	cmpl	%eax, %ecx
	jne	LBB4_10
## BB#11:                               ## %.lr.ph.i.i.preheader.split.loopexit
	incl	%eax
	movl	40(%esp), %ebx          ## 4-byte Reload
	movl	28(%esp), %edx          ## 4-byte Reload
LBB4_12:                                ## %.lr.ph.i.i.preheader.split
	cmpl	$3, %edx
	jb	LBB4_15
## BB#13:                               ## %.lr.ph.i.i.preheader.split.split
	subl	48(%esp), %eax          ## 4-byte Folded Reload
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	L_gen_0$non_lazy_ptr-L4$pb(%ecx), %ecx
	.align	4, 0x90
LBB4_14:                                ## %.lr.ph.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%ecx), %edx
	movl	%edx, (%ebp,%eax,4)
	movl	(%ecx), %edx
	movl	%edx, 4(%ebp,%eax,4)
	movl	(%ecx), %edx
	movl	%edx, 8(%ebp,%eax,4)
	movl	(%ecx), %edx
	movl	%edx, 12(%ebp,%eax,4)
	addl	$4, %eax
	jne	LBB4_14
LBB4_15:                                ## %col_ei.exit
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	L_gen_1$non_lazy_ptr-L4$pb(%eax), %eax
	movl	(%eax), %eax
	movl	$1, %ecx
	movl	48(%esp), %edx          ## 4-byte Reload
	subl	%edx, %ecx
	movl	%eax, (%ebp,%ecx,4)
	movl	32(%esp), %eax          ## 4-byte Reload
	movl	44(%esp), %esi          ## 4-byte Reload
	movl	%esi, (%eax,%ecx,4)
	cmpl	$3, %edx
	movl	%edx, %esi
	jb	LBB4_21
## BB#16:                               ## %.lr.ph
	movl	$2, %ebp
	.align	4, 0x90
LBB4_17:                                ## =>This Inner Loop Header: Depth=1
	movl	(%ebx,%ebp,4), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_scalar_or_alg
	movl	(%eax), %ecx
	movl	$-33554432, %edx        ## imm = 0xFFFFFFFFFE000000
	andl	%edx, %ecx
	cmpl	$335544320, %ecx        ## imm = 0x14000000
	jne	LBB4_19
## BB#18:                               ##   in Loop: Header=BB4_17 Depth=1
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nfpoleval
	jmp	LBB4_20
	.align	4, 0x90
LBB4_19:                                ##   in Loop: Header=BB4_17 Depth=1
	movl	4(%edi), %ecx
	movl	(%ecx), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	addl	$-3, %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_scalarcol
LBB4_20:                                ## %ZC_galoisapply.exit
                                        ##   in Loop: Header=BB4_17 Depth=1
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx,%ebp,4)
	incl	%ebp
	cmpl	%esi, %ebp
	jl	LBB4_17
LBB4_21:                                ## %._crit_edge
	movl	56(%esp), %eax          ## 4-byte Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI5_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
LCPI5_1:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
LCPI5_2:
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_idealfrobenius
	.align	4, 0x90
_idealfrobenius:                        ## @idealfrobenius
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	calll	L5$pb
L5$pb:
	popl	%edi
	movl	120(%esp), %ebp
	movl	116(%esp), %esi
	movl	112(%esp), %eax
	movl	%ebp, 88(%esp)
	movl	L_avma$non_lazy_ptr-L5$pb(%edi), %ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	(%ecx), %ecx
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	%eax, (%esp)
	calll	_checknf
	movl	%eax, %ebx
	movl	%esi, (%esp)
	calll	_checkgal
	movl	%ebp, (%esp)
	calll	_checkprid
	movl	4(%ebx), %eax
	movl	4(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gequal
	testl	%eax, %eax
	jne	LBB5_2
## BB#1:
	leal	L_.str5-L5$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	calll	_pari_err
LBB5_2:
	movl	12(%ebp), %eax
	cmpl	$2, 8(%eax)
	jl	LBB5_4
## BB#3:
	leal	L_.str6-L5$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	calll	_pari_err
LBB5_4:
	movl	%edi, 48(%esp)          ## 4-byte Spill
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	LBB5_25
## BB#5:
	movl	4(%ebx), %eax
	movl	(%eax), %edi
	movl	%edi, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	leal	-2(%esi), %ebx
	movl	48(%esp), %eax          ## 4-byte Reload
	movl	L_bot$non_lazy_ptr-L5$pb(%eax), %eax
	movl	44(%esp), %edx          ## 4-byte Reload
	movl	%edx, %ecx
	subl	(%eax), %ecx
	movl	$2, %eax
	subl	%esi, %eax
	shrl	$2, %ecx
	cmpl	%ebx, %ecx
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	%edx, (%ecx)
	leal	(%edx,%eax,4), %edx
	jae	LBB5_7
## BB#6:
	movl	$14, (%esp)
	movl	%edx, %ebp
	calll	_pari_err
	movl	%ebp, %edx
	movl	72(%esp), %ecx          ## 4-byte Reload
LBB5_7:                                 ## %new_chunk.exit.i.i
	leal	-3(%esi), %ebp
	movl	%edx, (%ecx)
	cmpl	$16777216, %ebx         ## imm = 0x1000000
	jb	LBB5_9
## BB#8:
	movl	48(%esp), %eax          ## 4-byte Reload
	leal	L_.str7-L5$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	movl	%edx, 76(%esp)          ## 4-byte Spill
	calll	_pari_err
	movl	76(%esp), %edx          ## 4-byte Reload
LBB5_9:                                 ## %cgetg.exit.i
	movl	%ebx, %eax
	orl	$738197504, %eax        ## imm = 0x2C000000
	movl	%eax, (%edx)
	testl	%ebp, %ebp
	jle	LBB5_85
## BB#10:                               ## %.lr.ph.i3.preheader
	movl	$1, %eax
	cmpl	$3, %esi
	je	LBB5_16
## BB#11:                               ## %overflow.checked95
	addl	$5, %edi
	andl	$7, %edi
	movl	%ebp, %ecx
	subl	%edi, %ecx
	movl	$1, %eax
	je	LBB5_15
## BB#12:                               ## %vector.body86.preheader
	movl	%edx, 76(%esp)          ## 4-byte Spill
	incl	%ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	$7, %eax
	subl	%esi, %eax
	movl	44(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %eax
	negl	%edi
	leal	-3(%esi,%edi), %edx
	xorl	%edi, %edi
	movl	48(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI5_1-L5$pb(%ecx), %xmm0 ## xmm0 = [0,1,2,3]
	movdqa	LCPI5_2-L5$pb(%ecx), %xmm1 ## xmm1 = [4,5,6,7]
	.align	4, 0x90
LBB5_13:                                ## %vector.body86
                                        ## =>This Inner Loop Header: Depth=1
	leal	1(%edi), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        ## xmm2 = xmm2[0,0,0,0]
	movdqa	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm2
	movdqu	%xmm3, -16(%eax,%edi,4)
	movdqu	%xmm2, (%eax,%edi,4)
	addl	$8, %edi
	cmpl	%edi, %edx
	jne	LBB5_13
## BB#14:
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	76(%esp), %edx          ## 4-byte Reload
LBB5_15:                                ## %middle.block87
	cmpl	%eax, %ebx
	je	LBB5_85
LBB5_16:                                ## %.lr.ph.i3.preheader123
	subl	%eax, %ebx
	movl	%ebp, %ecx
	subl	%eax, %ecx
	testb	$3, %bl
	je	LBB5_17
## BB#18:                               ## %.lr.ph.i3.prol.preheader
	movl	%edx, 76(%esp)          ## 4-byte Spill
	movl	$2, %edx
	subl	%esi, %edx
	movl	44(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%edx,4), %edx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB5_19:                                ## %.lr.ph.i3.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	%eax, (%edx,%eax,4)
	incl	%eax
	incl	%ebx
	jne	LBB5_19
	jmp	LBB5_20
LBB5_25:
	movl	%eax, 36(%esp)          ## 4-byte Spill
	leal	80(%esp), %eax
	movl	%eax, 12(%esp)
	leal	84(%esp), %eax
	movl	%eax, 8(%esp)
	leal	88(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %edi
	movl	%edi, (%esp)
	calll	_nf_to_Fq_init
	movl	%eax, 32(%esp)          ## 4-byte Spill
	movl	4(%edi), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	movl	$0, 40(%esp)            ## 4-byte Folded Spill
	addl	$-3, %ecx
	movl	%ecx, 76(%esp)          ## 4-byte Spill
	movl	$0, %ebx
	jle	LBB5_32
## BB#26:                               ## %.lr.ph.i.preheader
	movl	88(%esp), %ecx
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	movl	%eax, 52(%esp)          ## 4-byte Spill
	movl	8(%ecx), %eax
	movl	%eax, 56(%esp)          ## 4-byte Spill
	movl	16(%ecx), %eax
	movl	8(%eax), %eax
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movl	116(%esp), %eax
	movl	24(%eax), %eax
	movl	%eax, 64(%esp)          ## 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB5_27:                                ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	64(%esp), %eax          ## 4-byte Reload
	movl	4(%eax,%ebp,4), %esi
	movl	%esi, (%esp)
	calll	_perm_order
	cmpl	68(%esp), %eax          ## 4-byte Folded Reload
	jne	LBB5_31
## BB#28:                               ##   in Loop: Header=BB5_27 Depth=1
	movl	%esi, 4(%esp)
	movl	116(%esp), %eax
	movl	%eax, (%esp)
	calll	_galoispermtopol
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_poltobasis
	movl	%eax, %ebx
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	calll	_galoisapply
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_idealval
	cmpl	$1, %eax
	je	LBB5_29
## BB#30:                               ##   in Loop: Header=BB5_27 Depth=1
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	52(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
LBB5_31:                                ##   in Loop: Header=BB5_27 Depth=1
	incl	%ebp
	cmpl	76(%esp), %ebp          ## 4-byte Folded Reload
	jl	LBB5_27
LBB5_32:                                ## %._crit_edge.i
	movl	48(%esp), %ebp          ## 4-byte Reload
	leal	L_.str8-L5$pb(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	calll	_pari_err
	movl	72(%esp), %ecx          ## 4-byte Reload
	jmp	LBB5_33
LBB5_29:
	movl	%esi, 40(%esp)          ## 4-byte Spill
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	48(%esp), %ebp          ## 4-byte Reload
LBB5_33:                                ## %idealquasifrob.exit
	movl	%edi, %eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	4(%eax), %eax
	movl	$1073676288, %edi       ## imm = 0x3FFF0000
	andl	4(%eax), %edi
	movl	(%ecx), %esi
	movl	L_bot$non_lazy_ptr-L5$pb(%ebp), %edx
	movl	%edx, 76(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	subl	(%edx), %eax
	cmpl	$15, %eax
	movl	%ebp, %edx
	leal	-16(%esi), %ebp
	ja	LBB5_35
## BB#34:
	movl	$14, (%esp)
	calll	_pari_err
	movl	48(%esp), %edx          ## 4-byte Reload
	movl	72(%esp), %ecx          ## 4-byte Reload
LBB5_35:                                ## %pol_x.exit
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	%ebp, (%ecx)
	movl	$335544324, -16(%esi)   ## imm = 0x14000004
	orl	$1073741824, %edi       ## imm = 0x40000000
	movl	%edi, -12(%esi)
	movl	L_gen_0$non_lazy_ptr-L5$pb(%edx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%esi)
	movl	L_gen_1$non_lazy_ptr-L5$pb(%edx), %eax
	movl	%edx, 48(%esp)          ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -4(%esi)
	movl	32(%esp), %esi          ## 4-byte Reload
	movl	%esi, (%esp)
	calll	_modpr_genFq
	movl	80(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	movl	28(%esp), %edi          ## 4-byte Reload
	movl	%edi, %ecx
	movl	%eax, %edx
	calll	_QX_galoisapplymod
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_nf_to_Fq
	movl	%eax, %esi
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZX_equal
	xorl	%edi, %edi
	jmp	LBB5_37
	.align	4, 0x90
LBB5_36:                                ## %.lr.ph
                                        ##   in Loop: Header=BB5_37 Depth=1
	movl	80(%esp), %eax
	movl	84(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_Fq_pow
	movl	%eax, %ebp
	incl	%edi
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZX_equal
LBB5_37:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	je	LBB5_36
## BB#38:                               ## %._crit_edge
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_Fl_inv
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_perm_pow
	movl	76(%esp), %ecx          ## 4-byte Reload
	cmpl	(%ecx), %eax
	movl	44(%esp), %edi          ## 4-byte Reload
	jb	LBB5_41
## BB#39:                               ## %isonstack.exit.i
	cmpl	%eax, %edi
	jbe	LBB5_41
## BB#40:                               ## %isonstack.exit.i
	movl	48(%esp), %ecx          ## 4-byte Reload
	movl	L_top$non_lazy_ptr-L5$pb(%ecx), %ecx
	cmpl	(%ecx), %eax
	jae	LBB5_41
## BB#42:
	movl	(%eax), %esi
	movl	%esi, %ecx
	shrl	$25, %ecx
	leal	-21(%ecx), %edx
	cmpl	$2, %edx
	jb	LBB5_62
## BB#43:
	cmpl	$2, %ecx
	jne	LBB5_44
LBB5_62:
	movl	%esi, %ecx
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	shll	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, 76(%esp)          ## 4-byte Spill
	movl	%esi, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	%edi, (%ecx)
	je	LBB5_63
## BB#64:                               ## %.lr.ph.i.i.preheader
	movl	%esi, %ecx
	movl	%esi, 72(%esp)          ## 4-byte Spill
	orl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	%ecx, %ebx
	xorl	$16777215, %ebx         ## imm = 0xFFFFFF
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	movl	$-2, %edi
	movl	$-2, %ebp
	cmovel	%ebx, %ebp
	leal	(%ebp,%edx), %esi
	cmpl	$-2, %esi
	jne	LBB5_71
## BB#65:
	movl	72(%esp), %esi          ## 4-byte Reload
	jmp	LBB5_66
LBB5_41:                                ## %isonstack.exit.thread.i
	movl	72(%esp), %ecx          ## 4-byte Reload
	movl	%edi, (%ecx)
LBB5_84:                                ## %identity_perm.exit
	movl	%eax, %edx
	jmp	LBB5_85
LBB5_17:
	movl	%edx, 76(%esp)          ## 4-byte Spill
LBB5_20:                                ## %.lr.ph.i3.preheader123.split
	cmpl	$3, %ecx
	jae	LBB5_22
## BB#21:
	movl	76(%esp), %edx          ## 4-byte Reload
	jmp	LBB5_85
LBB5_22:                                ## %.lr.ph.i3.preheader123.split.split
	movl	$5, %ecx
	subl	%esi, %ecx
	movl	44(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ecx,4), %ecx
	.align	4, 0x90
LBB5_23:                                ## %.lr.ph.i3
                                        ## =>This Inner Loop Header: Depth=1
	movl	%eax, -12(%ecx,%eax,4)
	leal	1(%eax), %edx
	movl	%edx, -8(%ecx,%eax,4)
	leal	2(%eax), %edx
	movl	%edx, -4(%ecx,%eax,4)
	leal	3(%eax), %edx
	movl	%edx, (%ecx,%eax,4)
	addl	$4, %eax
	cmpl	%ebp, %edx
	jne	LBB5_23
## BB#24:
	movl	76(%esp), %edx          ## 4-byte Reload
	jmp	LBB5_85
LBB5_63:
	movl	76(%esp), %edx          ## 4-byte Reload
	jmp	LBB5_85
LBB5_44:
	cmpl	$1, %ecx
	jne	LBB5_83
## BB#45:                               ## %isonstack.exit.i.i
	movl	4(%eax), %ecx
	movl	%ecx, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	%edx, 68(%esp)          ## 4-byte Spill
	leal	(,%edx,4), %esi
	subl	%esi, %edi
	movl	%edi, 76(%esp)          ## 4-byte Spill
	cmpl	$2, %edx
	jb	LBB5_61
## BB#46:                               ## %.lr.ph.i.i.i.preheader
	movl	%ecx, %edi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	%edi, %ebx
	negl	%ebx
	cmpl	$-3, %ebx
	movl	$-2, %edx
	movl	$-2, %ebp
	cmovgl	%ebx, %ebp
	addl	%edi, %ebp
	cmpl	$-1, %ebp
	movl	68(%esp), %esi          ## 4-byte Reload
	je	LBB5_55
## BB#47:                               ## %overflow.checked48
	incl	%ebp
	cmpl	$-3, %ebx
	movl	$-2, %edx
	cmovgl	%ebx, %edx
	movl	$0, 64(%esp)            ## 4-byte Folded Spill
	movl	%ebp, %esi
	andl	$-8, %esi
	je	LBB5_48
## BB#49:                               ## %vector.memcheck62
	movl	%esi, 56(%esp)          ## 4-byte Spill
	movl	%ebp, 60(%esp)          ## 4-byte Spill
	movl	%edx, %esi
	notl	%esi
	leal	(%eax,%esi,4), %ebp
	movl	44(%esp), %esi          ## 4-byte Reload
	leal	-4(%esi), %esi
	cmpl	%ebp, %esi
	ja	LBB5_51
## BB#50:                               ## %vector.memcheck62
	leal	-4(%eax,%edi,4), %esi
	movl	%esi, 52(%esp)          ## 4-byte Spill
	addl	%edi, %edx
	notl	%edx
	movl	44(%esp), %ebp          ## 4-byte Reload
	leal	(%ebp,%edx,4), %edx
	cmpl	%edx, 52(%esp)          ## 4-byte Folded Reload
	movl	68(%esp), %esi          ## 4-byte Reload
	jbe	LBB5_54
LBB5_51:                                ## %vector.body39.preheader
	movl	%ecx, 40(%esp)          ## 4-byte Spill
	movl	68(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, %esi
	subl	56(%esp), %esi          ## 4-byte Folded Reload
	cmpl	$-3, %ebx
	movl	$-2, %edx
	cmovgl	%ebx, %edx
	leal	1(%edx,%edi), %ebx
	andl	$-8, %ebx
	movl	48(%esp), %edx          ## 4-byte Reload
	movdqa	LCPI5_0-L5$pb(%edx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	44(%esp), %ebp          ## 4-byte Reload
LBB5_52:                                ## %vector.body39
                                        ## =>This Inner Loop Header: Depth=1
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movdqu	-12(%eax,%edx,4), %xmm1
	movdqu	-28(%eax,%edx,4), %xmm2
	subl	%ecx, %edx
	movdqu	%xmm1, -12(%ebp,%edx,4)
	movdqu	%xmm2, -28(%ebp,%edx,4)
	addl	$-8, %edi
	addl	$-8, %ebx
	jne	LBB5_52
## BB#53:
	movl	56(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 64(%esp)          ## 4-byte Spill
	movl	40(%esp), %ecx          ## 4-byte Reload
	jmp	LBB5_54
LBB5_71:                                ## %overflow.checked
	addl	$2, %esi
	cmpl	$-16777216, %ecx        ## imm = 0xFFFFFFFFFF000000
	cmovnel	%edi, %ebx
	movl	$0, 68(%esp)            ## 4-byte Folded Spill
	movl	%esi, %ecx
	andl	$-8, %ecx
	je	LBB5_72
## BB#73:                               ## %vector.memcheck
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	%esi, 64(%esp)          ## 4-byte Spill
	movl	$-2, %edi
	movl	$-2, %ecx
	subl	%ebx, %ecx
	leal	(%eax,%ecx,4), %esi
	movl	44(%esp), %ecx          ## 4-byte Reload
	leal	-4(%ecx), %ecx
	cmpl	%esi, %ecx
	movl	72(%esp), %esi          ## 4-byte Reload
	ja	LBB5_75
## BB#74:                               ## %vector.memcheck
	leal	-4(%eax,%edx,4), %ecx
	addl	%edx, %ebx
	subl	%ebx, %edi
	movl	%edi, %ebx
	movl	44(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ebx,4), %ebx
	movl	$-2, %edi
	cmpl	%ebx, %ecx
	jbe	LBB5_78
LBB5_75:                                ## %vector.body.preheader
	movl	%edx, %ecx
	subl	60(%esp), %ecx          ## 4-byte Folded Reload
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	leal	2(%ebp,%edx), %ebp
	andl	$-8, %ebp
	movl	48(%esp), %ecx          ## 4-byte Reload
	movdqa	LCPI5_0-L5$pb(%ecx), %xmm0 ## xmm0 = [4294967295,4294967294,4294967293,4294967292]
	movl	%edx, %ebx
	movl	44(%esp), %edi          ## 4-byte Reload
	.align	4, 0x90
LBB5_76:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        ## xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movdqu	-12(%eax,%ecx,4), %xmm1
	movdqu	-28(%eax,%ecx,4), %xmm2
	subl	%edx, %ecx
	movdqu	%xmm1, -12(%edi,%ecx,4)
	movdqu	%xmm2, -28(%edi,%ecx,4)
	addl	$-8, %ebx
	addl	$-8, %ebp
	jne	LBB5_76
## BB#77:
	movl	68(%esp), %edx          ## 4-byte Reload
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, 68(%esp)          ## 4-byte Spill
	movl	$-2, %edi
	jmp	LBB5_78
LBB5_83:
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	leal	(%eax,%esi,4), %ecx
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	calll	_gerepile
	jmp	LBB5_84
LBB5_72:
	movl	%esi, 64(%esp)          ## 4-byte Spill
	movl	72(%esp), %esi          ## 4-byte Reload
LBB5_78:                                ## %middle.block
	movl	68(%esp), %ecx          ## 4-byte Reload
	cmpl	%ecx, 64(%esp)          ## 4-byte Folded Reload
	jne	LBB5_66
## BB#79:
	movl	76(%esp), %edx          ## 4-byte Reload
	jmp	LBB5_85
LBB5_66:                                ## %.lr.ph.i.i.preheader125
	movl	%edx, %ebx
	notl	%ebx
	cmpl	$-3, %ebx
	cmovgl	%ebx, %edi
	leal	2(%edx,%edi), %ecx
	leal	1(%edx,%edi), %ebp
	testb	$3, %cl
	je	LBB5_69
## BB#67:                               ## %.lr.ph.i.i.prol.preheader
	movl	%esi, %ecx
	notl	%ecx
	orl	$1056964608, %ecx       ## imm = 0x3F000000
	movl	44(%esp), %edi          ## 4-byte Reload
	leal	(%edi,%ecx,4), %edi
	cmpl	$-3, %ebx
	movl	$-2, %ecx
	cmovgl	%ebx, %ecx
	leal	2(%edx,%ecx), %ebx
	andl	$3, %ebx
	negl	%ebx
	.align	4, 0x90
LBB5_68:                                ## %.lr.ph.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%edx,4), %ecx
	movl	%ecx, (%edi,%edx,4)
	leal	-1(%edx), %edx
	incl	%ebx
	jne	LBB5_68
LBB5_69:                                ## %.lr.ph.i.i.preheader125.split
	cmpl	$3, %ebp
	jae	LBB5_80
## BB#70:
	movl	76(%esp), %edx          ## 4-byte Reload
	jmp	LBB5_85
LBB5_80:                                ## %.lr.ph.i.i.preheader125.split.split
	incl	%edx
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	$-4, %ecx
	subl	%esi, %ecx
	movl	44(%esp), %esi          ## 4-byte Reload
	leal	(%esi,%ecx,4), %ecx
	.align	4, 0x90
LBB5_81:                                ## %.lr.ph.i.i
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
	jg	LBB5_81
## BB#82:
	movl	76(%esp), %edx          ## 4-byte Reload
	jmp	LBB5_85
LBB5_48:
	movl	%ebp, 60(%esp)          ## 4-byte Spill
	movl	68(%esp), %esi          ## 4-byte Reload
LBB5_54:                                ## %middle.block40
	movl	64(%esp), %edx          ## 4-byte Reload
	cmpl	%edx, 60(%esp)          ## 4-byte Folded Reload
	movl	$-2, %edx
	je	LBB5_61
LBB5_55:                                ## %.lr.ph.i.i.i.preheader124
	movl	%ecx, %edi
	movl	%esi, %ebp
	negl	%ebp
	cmpl	$-3, %ebp
	cmovgl	%ebp, %edx
	leal	(%esi,%edx), %ecx
	leal	1(%esi,%edx), %edx
	testb	$3, %dl
	je	LBB5_58
## BB#56:                               ## %.lr.ph.i.i.i.prol.preheader
	movl	%edi, %edx
	notl	%edx
	orl	$1056964608, %edx       ## imm = 0x3F000000
	movl	44(%esp), %ebx          ## 4-byte Reload
	leal	(%ebx,%edx,4), %ebx
	cmpl	$-3, %ebp
	movl	$-2, %edx
	cmovgl	%ebp, %edx
	leal	1(%esi,%edx), %ebp
	andl	$3, %ebp
	negl	%ebp
LBB5_57:                                ## %.lr.ph.i.i.i.prol
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edx
	movl	%edx, (%ebx,%esi,4)
	leal	-1(%esi), %esi
	incl	%ebp
	jne	LBB5_57
LBB5_58:                                ## %.lr.ph.i.i.i.preheader124.split
	cmpl	$3, %ecx
	jb	LBB5_61
## BB#59:                               ## %.lr.ph.i.i.i.preheader124.split.split
	notl	%edi
	orl	$1056964608, %edi       ## imm = 0x3F000000
	movl	44(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edx
LBB5_60:                                ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	-4(%eax,%esi,4), %edi
	movl	%edi, (%edx,%esi,4)
	movl	-8(%eax,%esi,4), %edi
	movl	%edi, -4(%edx,%esi,4)
	movl	-12(%eax,%esi,4), %edi
	movl	%edi, -8(%edx,%esi,4)
	movl	-16(%eax,%esi,4), %edi
	movl	%edi, -12(%edx,%esi,4)
	leal	-4(%esi), %esi
	cmpl	$1, %esi
	jg	LBB5_60
LBB5_61:                                ## %gerepileuptoint.exit.i
	movl	68(%esp), %eax          ## 4-byte Reload
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	76(%esp), %edx          ## 4-byte Reload
	movl	%eax, (%edx)
	movl	72(%esp), %eax          ## 4-byte Reload
	movl	%edx, (%eax)
LBB5_85:                                ## %identity_perm.exit
	movl	%edx, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
_QX_galoisapplymod:                     ## @QX_galoisapplymod
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	%ecx, %ebx
	calll	L6$pb
L6$pb:
	popl	%edi
	movl	52(%esp), %esi
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	calll	_Q_remove_denom
	movl	%eax, %ebp
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	LBB6_4
## BB#1:
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z_pval
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_powiu
	movl	%eax, %edi
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_mulii
	movl	%eax, %esi
	movl	20(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_diviiexact
	leal	24(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_invmod
	testl	%eax, %eax
	jne	LBB6_3
## BB#2:
	movl	24(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmodulo
	movl	%eax, 4(%esp)
	movl	$20, (%esp)
	calll	_pari_err
LBB6_3:                                 ## %Fp_inv.exit
	movl	24(%esp), %ebx
	jmp	LBB6_5
LBB6_4:
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	L_gen_1$non_lazy_ptr-L6$pb(%edi), %eax
	movl	(%eax), %ebx
	movl	%ebx, %edi
LBB6_5:
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_FpX_red
	movl	%eax, %ebp
	movl	%esi, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	calll	_FpC_red
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_FpX_FpC_nfpoleval
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	calll	_FpC_Fp_mul
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_gdivexact
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"galois"

L_.str1:                                ## @.str1
	.asciz	"galois of degree higher than 11"

L_.str2:                                ## @.str2
	.asciz	"galois (bug1)"

L_.str3:                                ## @.str3
	.asciz	"galois (bug2)"

L_.str4:                                ## @.str4
	.asciz	"galoisapply"

L_.str5:                                ## @.str5
	.asciz	"incompatible data in idealfrobenius"

L_.str6:                                ## @.str6
	.asciz	"ramified prime in idealfrobenius"

L_.str7:                                ## @.str7
	.asciz	"lg()"

L_.str8:                                ## @.str8
	.asciz	"Frobenius element not found"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_LOG2$non_lazy_ptr:
	.indirect_symbol	_LOG2
	.long	0
L_PARI_SIGINT_block$non_lazy_ptr:
	.indirect_symbol	_PARI_SIGINT_block
	.long	0
L_PARI_SIGINT_pending$non_lazy_ptr:
	.indirect_symbol	_PARI_SIGINT_pending
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
L_top$non_lazy_ptr:
	.indirect_symbol	_top
	.long	0

.subsections_via_symbols
