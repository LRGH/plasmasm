	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI22_0:
	.long	0                       ## double 18
	.long	1077018624
LCPI22_1:
	.long	0                       ## double 0.03125
	.long	1067450368
LCPI22_2:
	.long	0                       ## double 21
	.long	1077215232
LCPI22_3:
	.long	0                       ## double 42
	.long	1078263808
LCPI22_4:
	.long	0                       ## double 7
	.long	1075576832
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_polgalois
	.p2align	4, 0x90
_polgalois:                             ## @polgalois
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$188, %esp
	calll	L22$pb
L22$pb:
	popl	%edi
	movl	208(%esp), %esi
	movl	%eax, 20(%esp)          ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, 32(%esp)          ## 4-byte Spill
	movl	(%esi), %ebx
	movl	%ebx, %eax
	andl	$-33554432, %eax        ## imm = 0xFE000000
	cmpl	$335544320, %eax        ## imm = 0x14000000
	je	LBB22_2
## BB#1:
	movl	%eax, 4(%esp)
	movl	$22, (%esp)
	calll	_pari_err
	movl	(%esi), %ebx
LBB22_2:
	movl	%edi, 92(%esp)          ## 4-byte Spill
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	%ebx, %esi
	addl	$-3, %ebx
	jle	LBB22_5
## BB#3:
	cmpl	$12, %ebx
	movl	92(%esp), %ebp          ## 4-byte Reload
	jl	LBB22_7
## BB#4:
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	jmp	LBB22_6
LBB22_5:
	movl	92(%esp), %ebp          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$21, (%esp)
LBB22_6:
	calll	_pari_err
LBB22_7:
	movl	208(%esp), %eax
	movl	%eax, (%esp)
	calll	_Q_primpart
	movl	%eax, %edi
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_RgX_check_ZX
	movl	%edi, (%esp)
	calll	_ZX_is_irred
	testl	%eax, %eax
	jne	LBB22_9
## BB#8:
	movl	92(%esp), %eax          ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	calll	_pari_err
LBB22_9:
	cmpl	$3, %ebx
	jg	LBB22_13
## BB#10:
	cmpl	$5, %esi
	je	LBB22_287
## BB#11:
	cmpl	$4, %esi
	jne	LBB22_288
## BB#12:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	movl	$1, %edx
	jmp	LBB22_307
LBB22_13:
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	calll	_ZX_primitive_to_monic
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_ZX_Z_normalize
	movl	%eax, %edx
	cmpl	$7, %ebx
	jle	LBB22_15
## BB#14:
	movl	212(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	calll	_galoisbig
	jmp	LBB22_309
LBB22_15:
	movl	%ebx, 48(%esp)          ## 4-byte Spill
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	movl	%eax, 116(%esp)         ## 4-byte Spill
	movl	92(%esp), %ecx          ## 4-byte Reload
	movsd	(%eax), %xmm0           ## xmm0 = mem[0],zero
	movsd	LCPI22_0-L22$pb(%ecx), %xmm2 ## xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	LCPI22_1-L22$pb(%ecx), %xmm1 ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, 160(%esp)        ## 8-byte Spill
	movsd	LCPI22_2-L22$pb(%ecx), %xmm2 ## xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, 168(%esp)        ## 8-byte Spill
	movsd	LCPI22_3-L22$pb(%ecx), %xmm2 ## xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, 152(%esp)        ## 8-byte Spill
	movsd	LCPI22_4-L22$pb(%ecx), %xmm2 ## xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, 144(%esp)        ## 8-byte Spill
	addl	$-7, %esi
Ltmp7 = LJTI22_0-L22$pb
	movl	Ltmp7(%ecx,%esi,4), %eax
	addl	%ecx, %eax
	movl	%eax, 128(%esp)         ## 4-byte Spill
	movl	%eax, 52(%esp)          ## 4-byte Spill
	movl	%eax, 108(%esp)         ## 4-byte Spill
	movl	%eax, 112(%esp)         ## 4-byte Spill
	movl	%eax, 132(%esp)         ## 4-byte Spill
	movl	%eax, 104(%esp)         ## 4-byte Spill
	movl	%edx, 120(%esp)         ## 4-byte Spill
	movl	%edx, %eax
	movl	%esi, 124(%esp)         ## 4-byte Spill
	jmp	LBB22_17
	.p2align	4, 0x90
LBB22_16:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	116(%esp), %ecx         ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	120(%esp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_tschirnhaus
	movl	124(%esp), %esi         ## 4-byte Reload
LBB22_17:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB22_254 Depth 2
                                        ##       Child Loop BB22_255 Depth 3
                                        ##         Child Loop BB22_256 Depth 4
                                        ##         Child Loop BB22_258 Depth 4
                                        ##       Child Loop BB22_261 Depth 3
                                        ##         Child Loop BB22_262 Depth 4
                                        ##         Child Loop BB22_264 Depth 4
                                        ##       Child Loop BB22_267 Depth 3
                                        ##         Child Loop BB22_268 Depth 4
                                        ##         Child Loop BB22_270 Depth 4
                                        ##       Child Loop BB22_273 Depth 3
                                        ##         Child Loop BB22_274 Depth 4
                                        ##         Child Loop BB22_276 Depth 4
                                        ##     Child Loop BB22_196 Depth 2
                                        ##       Child Loop BB22_198 Depth 3
                                        ##         Child Loop BB22_199 Depth 4
                                        ##           Child Loop BB22_209 Depth 5
                                        ##           Child Loop BB22_212 Depth 5
                                        ##           Child Loop BB22_215 Depth 5
                                        ##             Child Loop BB22_216 Depth 6
                                        ##       Child Loop BB22_228 Depth 3
                                        ##         Child Loop BB22_229 Depth 4
                                        ##           Child Loop BB22_240 Depth 5
                                        ##           Child Loop BB22_243 Depth 5
                                        ##     Child Loop BB22_23 Depth 2
                                        ##       Child Loop BB22_32 Depth 3
                                        ##       Child Loop BB22_35 Depth 3
                                        ##       Child Loop BB22_45 Depth 3
                                        ##       Child Loop BB22_48 Depth 3
                                        ##       Child Loop BB22_58 Depth 3
                                        ##       Child Loop BB22_61 Depth 3
                                        ##       Child Loop BB22_71 Depth 3
                                        ##       Child Loop BB22_74 Depth 3
                                        ##       Child Loop BB22_84 Depth 3
                                        ##       Child Loop BB22_87 Depth 3
                                        ##     Child Loop BB22_104 Depth 2
                                        ##       Child Loop BB22_105 Depth 3
                                        ##         Child Loop BB22_128 Depth 4
                                        ##         Child Loop BB22_131 Depth 4
                                        ##         Child Loop BB22_115 Depth 4
                                        ##         Child Loop BB22_118 Depth 4
                                        ##         Child Loop BB22_134 Depth 4
                                        ##       Child Loop BB22_187 Depth 3
                                        ##       Child Loop BB22_190 Depth 3
                                        ##       Child Loop BB22_173 Depth 3
                                        ##       Child Loop BB22_176 Depth 3
	movl	%eax, 56(%esp)          ## 4-byte Spill
	movl	%eax, (%esp)
	calll	_cauchy_bound
	fstpl	176(%esp)
	cmpl	$3, %esi
	ja	LBB22_16
## BB#18:                               ##   in Loop: Header=BB22_17 Depth=1
	movsd	176(%esp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%esp)         ## 8-byte Spill
	jmpl	*128(%esp)              ## 4-byte Folded Reload
LBB22_19:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	leal	-28(%eax), %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB22_21
## BB#20:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB22_21:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	$570425351, -28(%eax)   ## imm = 0x22000007
	movsd	80(%esp), %xmm0         ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	160(%esp), %xmm0        ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	addl	$4, %eax
	jmp	LBB22_23
	.p2align	4, 0x90
LBB22_22:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	28(%esp), %eax          ## 4-byte Reload
	leal	-2(%eax,%eax), %eax
LBB22_23:                               ##   Parent Loop BB22_17 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB22_32 Depth 3
                                        ##       Child Loop BB22_35 Depth 3
                                        ##       Child Loop BB22_45 Depth 3
                                        ##       Child Loop BB22_48 Depth 3
                                        ##       Child Loop BB22_58 Depth 3
                                        ##       Child Loop BB22_61 Depth 3
                                        ##       Child Loop BB22_71 Depth 3
                                        ##       Child Loop BB22_74 Depth 3
                                        ##       Child Loop BB22_84 Depth 3
                                        ##       Child Loop BB22_87 Depth 3
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_cleanroots
	movl	%eax, %ebp
	movl	4(%ebp), %edi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	4(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gmul
	movl	%eax, %esi
	movl	12(%ebp), %edi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, -24(%ecx)
	movl	(%ebp), %edx
	movl	%edx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	leal	(,%esi,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_25
## BB#24:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	$14, (%esp)
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	calll	_pari_err
	movl	%ebx, %edx
	movl	16(%esp), %ebx          ## 4-byte Reload
LBB22_25:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	(%ebp), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	jb	LBB22_36
## BB#26:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jb	LBB22_34
## BB#27:                               ##   in Loop: Header=BB22_23 Depth=2
	addl	$7, %edx
	andl	$7, %edx
	subl	%edx, %ecx
	je	LBB22_34
## BB#28:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	4(%ebx,%eax,4), %eax
	leal	(%ebp,%esi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_31
## BB#29:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	4(%ebp), %eax
	cmpl	%ebx, %eax
	jae	LBB22_31
## BB#30:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_34
LBB22_31:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-16(%ebp,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%ebx), %eax
	.p2align	4, 0x90
LBB22_32:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_32
## BB#33:                               ##   in Loop: Header=BB22_23 Depth=2
	cmpl	$0, 44(%esp)            ## 4-byte Folded Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	je	LBB22_36
	.p2align	4, 0x90
LBB22_34:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-4(%ebx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_35:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%ebp,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_35
LBB22_36:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	4(%edi), %eax
	movl	8(%edi), %ebx
	movl	%ebx, 4(%edi)
	movl	%eax, 8(%edi)
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	4(%edi), %eax
	movl	16(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	12(%edi), %esi
	movl	16(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %ebx
	movl	8(%edi), %eax
	movl	12(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_gadd
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, -20(%ecx)
	movl	(%ebp), %edx
	movl	%edx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	leal	(,%esi,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_38
## BB#37:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	$14, (%esp)
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	calll	_pari_err
	movl	%ebx, %edx
	movl	16(%esp), %ebx          ## 4-byte Reload
LBB22_38:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	(%ebp), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	jb	LBB22_49
## BB#39:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jb	LBB22_47
## BB#40:                               ##   in Loop: Header=BB22_23 Depth=2
	addl	$7, %edx
	andl	$7, %edx
	subl	%edx, %ecx
	je	LBB22_47
## BB#41:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	4(%ebx,%eax,4), %eax
	leal	(%ebp,%esi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_44
## BB#42:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	4(%ebp), %eax
	cmpl	%ebx, %eax
	jae	LBB22_44
## BB#43:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_47
LBB22_44:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-16(%ebp,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%ebx), %eax
	.p2align	4, 0x90
LBB22_45:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_45
## BB#46:                               ##   in Loop: Header=BB22_23 Depth=2
	cmpl	$0, 44(%esp)            ## 4-byte Folded Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	je	LBB22_49
	.p2align	4, 0x90
LBB22_47:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-4(%ebx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_48:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%ebp,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_48
LBB22_49:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	4(%edi), %eax
	movl	12(%edi), %ebx
	movl	%ebx, 4(%edi)
	movl	%eax, 12(%edi)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	4(%edi), %eax
	movl	16(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	12(%edi), %esi
	movl	16(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %ebx
	movl	8(%edi), %eax
	movl	12(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_gadd
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, -16(%ecx)
	movl	(%ebp), %edx
	movl	%edx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	leal	(,%esi,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_51
## BB#50:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	$14, (%esp)
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	calll	_pari_err
	movl	%ebx, %edx
	movl	16(%esp), %ebx          ## 4-byte Reload
LBB22_51:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	(%ebp), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	jb	LBB22_62
## BB#52:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jb	LBB22_60
## BB#53:                               ##   in Loop: Header=BB22_23 Depth=2
	addl	$7, %edx
	andl	$7, %edx
	subl	%edx, %ecx
	je	LBB22_60
## BB#54:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	4(%ebx,%eax,4), %eax
	leal	(%ebp,%esi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_57
## BB#55:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	4(%ebp), %eax
	cmpl	%ebx, %eax
	jae	LBB22_57
## BB#56:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_60
LBB22_57:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-16(%ebp,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%ebx), %eax
	.p2align	4, 0x90
LBB22_58:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_58
## BB#59:                               ##   in Loop: Header=BB22_23 Depth=2
	cmpl	$0, 44(%esp)            ## 4-byte Folded Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	je	LBB22_62
	.p2align	4, 0x90
LBB22_60:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-4(%ebx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_61:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%ebp,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_61
LBB22_62:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	4(%edi), %eax
	movl	16(%edi), %ebx
	movl	%ebx, 4(%edi)
	movl	%eax, 16(%edi)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	4(%edi), %eax
	movl	16(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	12(%edi), %esi
	movl	16(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %ebx
	movl	8(%edi), %eax
	movl	12(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_gadd
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, -12(%ecx)
	movl	(%ebp), %edx
	movl	%edx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	leal	(,%esi,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_64
## BB#63:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	$14, (%esp)
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	calll	_pari_err
	movl	%ebx, %edx
	movl	16(%esp), %ebx          ## 4-byte Reload
LBB22_64:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	(%ebp), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	jb	LBB22_75
## BB#65:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jb	LBB22_73
## BB#66:                               ##   in Loop: Header=BB22_23 Depth=2
	addl	$7, %edx
	andl	$7, %edx
	subl	%edx, %ecx
	je	LBB22_73
## BB#67:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	4(%ebx,%eax,4), %eax
	leal	(%ebp,%esi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_70
## BB#68:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	4(%ebp), %eax
	cmpl	%ebx, %eax
	jae	LBB22_70
## BB#69:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_73
LBB22_70:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-16(%ebp,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%ebx), %eax
	.p2align	4, 0x90
LBB22_71:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_71
## BB#72:                               ##   in Loop: Header=BB22_23 Depth=2
	cmpl	$0, 44(%esp)            ## 4-byte Folded Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	je	LBB22_75
	.p2align	4, 0x90
LBB22_73:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-4(%ebx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_74:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%ebp,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_74
LBB22_75:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	8(%edi), %eax
	movl	12(%edi), %ecx
	movl	%ecx, 8(%edi)
	movl	%eax, 12(%edi)
	movl	4(%edi), %ebx
	movl	%ecx, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	4(%edi), %eax
	movl	16(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	12(%edi), %esi
	movl	16(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %ebx
	movl	8(%edi), %eax
	movl	12(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_gadd
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, -8(%ecx)
	movl	(%ebp), %edx
	movl	%edx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	leal	(,%esi,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_77
## BB#76:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	$14, (%esp)
	movl	%ebx, 16(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	calll	_pari_err
	movl	%ebx, %edx
	movl	16(%esp), %ebx          ## 4-byte Reload
LBB22_77:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	(%ebp), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	jb	LBB22_88
## BB#78:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jb	LBB22_86
## BB#79:                               ##   in Loop: Header=BB22_23 Depth=2
	addl	$7, %edx
	andl	$7, %edx
	subl	%edx, %ecx
	je	LBB22_86
## BB#80:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%edx, 44(%esp)          ## 4-byte Spill
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	4(%ebx,%eax,4), %eax
	leal	(%ebp,%esi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_83
## BB#81:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	4(%ebp), %eax
	cmpl	%ebx, %eax
	jae	LBB22_83
## BB#82:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_86
LBB22_83:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-16(%ebp,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%ebx), %eax
	.p2align	4, 0x90
LBB22_84:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_84
## BB#85:                               ##   in Loop: Header=BB22_23 Depth=2
	cmpl	$0, 44(%esp)            ## 4-byte Folded Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	je	LBB22_88
	.p2align	4, 0x90
LBB22_86:                               ##   in Loop: Header=BB22_23 Depth=2
	leal	-4(%ebx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_87:                               ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%ebp,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_87
LBB22_88:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	12(%edi), %eax
	movl	16(%edi), %ecx
	movl	%ecx, 12(%edi)
	movl	%eax, 16(%edi)
	movl	4(%edi), %ebx
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	4(%edi), %eax
	movl	16(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, %esi
	movl	12(%edi), %ebp
	movl	16(%edi), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %ebx
	movl	8(%edi), %eax
	movl	12(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	%eax, -4(%ecx)
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_roots_to_pol
	movl	%eax, %ebx
	movl	%ebx, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	%eax, %esi
	movl	%ebx, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_90
## BB#89:                               ##   in Loop: Header=BB22_23 Depth=2
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_90:                               ##   in Loop: Header=BB22_23 Depth=2
	cmpl	$-9, %ecx
	jge	LBB22_22
## BB#91:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	%esi, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	je	LBB22_16
## BB#92:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	%esi, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %ecx
	movl	(%ecx), %eax
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %eax
	cmpl	$4, %eax
	je	LBB22_328
## BB#93:                               ##   in Loop: Header=BB22_17 Depth=1
	cmpl	$3, %eax
	movl	48(%esp), %esi          ## 4-byte Reload
	je	LBB22_330
## BB#94:                               ##   in Loop: Header=BB22_17 Depth=1
	cmpl	$2, %eax
	je	LBB22_331
## BB#95:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	108(%esp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	calll	_pari_err
LBB22_96:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	leal	-28(%eax), %ecx
	movl	%ecx, 36(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB22_98
## BB#97:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB22_98:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	36(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$570425351, (%ecx)      ## imm = 0x22000007
	movl	(%eax), %eax
	leal	-28(%eax), %ecx
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	%eax, 72(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB22_100
## BB#99:                               ##   in Loop: Header=BB22_17 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB22_100:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	44(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$738197511, (%ecx)      ## imm = 0x2C000007
	movl	(%eax), %eax
	leal	-28(%eax), %ecx
	movl	%ecx, 76(%esp)          ## 4-byte Spill
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB22_102
## BB#101:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB22_102:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	76(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	$738197511, -28(%eax)   ## imm = 0x2C000007
	movsd	80(%esp), %xmm0         ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	168(%esp), %xmm0        ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %ecx
	addl	$4, %ecx
	jmp	LBB22_104
	.p2align	4, 0x90
LBB22_103:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	60(%esp), %ecx          ## 4-byte Reload
	leal	-2(%ecx,%ecx), %ecx
LBB22_104:                              ##   Parent Loop BB22_17 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB22_105 Depth 3
                                        ##         Child Loop BB22_128 Depth 4
                                        ##         Child Loop BB22_131 Depth 4
                                        ##         Child Loop BB22_115 Depth 4
                                        ##         Child Loop BB22_118 Depth 4
                                        ##         Child Loop BB22_134 Depth 4
                                        ##       Child Loop BB22_187 Depth 3
                                        ##       Child Loop BB22_190 Depth 3
                                        ##       Child Loop BB22_173 Depth 3
                                        ##       Child Loop BB22_176 Depth 3
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_cleanroots
	movl	%eax, %edi
	leal	4(%edi), %eax
	movl	%eax, 96(%esp)          ## 4-byte Spill
	leal	-16(%edi), %eax
	movl	%eax, 64(%esp)          ## 4-byte Spill
	movl	$1, %ebp
	movl	%edi, 28(%esp)          ## 4-byte Spill
	.p2align	4, 0x90
LBB22_105:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_128 Depth 4
                                        ##         Child Loop BB22_131 Depth 4
                                        ##         Child Loop BB22_115 Depth 4
                                        ##         Child Loop BB22_118 Depth 4
                                        ##         Child Loop BB22_134 Depth 4
	cmpl	$1, %ebp
	movl	%edi, %ebx
	je	LBB22_133
## BB#106:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	(%edi), %ebx
	movl	%ebx, %esi
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %edx
	movl	%edx, 16(%esp)          ## 4-byte Spill
	movl	%esi, %eax
	negl	%eax
	movl	%eax, 80(%esp)          ## 4-byte Spill
	leal	(,%esi,4), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%edx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	$5, %ebp
	jg	LBB22_120
## BB#107:                              ##   in Loop: Header=BB22_105 Depth=3
	cmpl	%esi, %eax
	jae	LBB22_109
## BB#108:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	$14, (%esp)
	calll	_pari_err
LBB22_109:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%eax)
	movl	(%edi), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edx)
	cmpl	$2, %esi
	movl	16(%esp), %edx          ## 4-byte Reload
	jb	LBB22_119
## BB#110:                              ##   in Loop: Header=BB22_105 Depth=3
	leal	-1(%esi), %eax
	cmpl	$8, %eax
	jb	LBB22_117
## BB#111:                              ##   in Loop: Header=BB22_105 Depth=3
	addl	$7, %ebx
	andl	$7, %ebx
	subl	%ebx, %eax
	je	LBB22_117
## BB#112:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	80(%esp), %ecx          ## 4-byte Reload
	leal	4(%edx,%ecx,4), %ecx
	leal	(%edi,%esi,4), %edx
	cmpl	%edx, %ecx
	movl	16(%esp), %edx          ## 4-byte Reload
	jae	LBB22_114
## BB#113:                              ##   in Loop: Header=BB22_105 Depth=3
	cmpl	%edx, 96(%esp)          ## 4-byte Folded Reload
	jb	LBB22_117
LBB22_114:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %ecx
	subl	%eax, %esi
	leal	-16(%edx), %edx
	.p2align	4, 0x90
LBB22_115:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ##       Parent Loop BB22_105 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movupd	-16(%ecx), %xmm0
	movupd	(%ecx), %xmm1
	movupd	%xmm1, (%edx)
	movupd	%xmm0, -16(%edx)
	addl	$-32, %ecx
	addl	$-32, %edx
	addl	$-8, %eax
	jne	LBB22_115
## BB#116:                              ##   in Loop: Header=BB22_105 Depth=3
	testl	%ebx, %ebx
	movl	16(%esp), %edx          ## 4-byte Reload
	je	LBB22_119
LBB22_117:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	80(%esp), %eax          ## 4-byte Reload
	leal	-4(%edx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_118:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ##       Parent Loop BB22_105 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-4(%edi,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_118
LBB22_119:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	24(%esp), %ebx          ## 4-byte Reload
	movl	4(%ebx), %eax
	movl	(%ebx,%ebp,4), %ecx
	movl	%ecx, 4(%ebx)
	movl	%eax, (%ebx,%ebp,4)
	jmp	LBB22_133
	.p2align	4, 0x90
LBB22_120:                              ##   in Loop: Header=BB22_105 Depth=3
	cmpl	%esi, %eax
	jae	LBB22_122
## BB#121:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	$14, (%esp)
	calll	_pari_err
LBB22_122:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%eax)
	movl	(%edi), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edx)
	cmpl	$2, %esi
	movl	16(%esp), %edx          ## 4-byte Reload
	jb	LBB22_132
## BB#123:                              ##   in Loop: Header=BB22_105 Depth=3
	leal	-1(%esi), %eax
	cmpl	$8, %eax
	jb	LBB22_130
## BB#124:                              ##   in Loop: Header=BB22_105 Depth=3
	addl	$7, %ebx
	andl	$7, %ebx
	subl	%ebx, %eax
	je	LBB22_130
## BB#125:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	80(%esp), %ecx          ## 4-byte Reload
	leal	4(%edx,%ecx,4), %ecx
	leal	(%edi,%esi,4), %edx
	cmpl	%edx, %ecx
	movl	16(%esp), %edx          ## 4-byte Reload
	jae	LBB22_127
## BB#126:                              ##   in Loop: Header=BB22_105 Depth=3
	cmpl	%edx, 96(%esp)          ## 4-byte Folded Reload
	jb	LBB22_130
LBB22_127:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	64(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%esi,4), %ecx
	subl	%eax, %esi
	leal	-16(%edx), %edx
	.p2align	4, 0x90
LBB22_128:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ##       Parent Loop BB22_105 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movupd	-16(%ecx), %xmm0
	movupd	(%ecx), %xmm1
	movupd	%xmm1, (%edx)
	movupd	%xmm0, -16(%edx)
	addl	$-32, %ecx
	addl	$-32, %edx
	addl	$-8, %eax
	jne	LBB22_128
## BB#129:                              ##   in Loop: Header=BB22_105 Depth=3
	testl	%ebx, %ebx
	movl	16(%esp), %edx          ## 4-byte Reload
	je	LBB22_132
LBB22_130:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	80(%esp), %eax          ## 4-byte Reload
	leal	-4(%edx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_131:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ##       Parent Loop BB22_105 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	-4(%edi,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_131
LBB22_132:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	24(%esp), %ebx          ## 4-byte Reload
	movl	8(%ebx), %eax
	movl	20(%ebx), %ecx
	movl	%ecx, 8(%ebx)
	movl	%eax, 20(%ebx)
LBB22_133:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	%ebp, 16(%esp)          ## 4-byte Spill
	movl	92(%esp), %eax          ## 4-byte Reload
	movl	%eax, 80(%esp)          ## 4-byte Spill
	movl	(%eax), %esi
	movl	$1, %edi
	movl	136(%esp), %ebp         ## 4-byte Reload
	.p2align	4, 0x90
LBB22_134:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ##       Parent Loop BB22_105 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	%esi, 24(%esp)          ## 4-byte Spill
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	(%ebx,%eax,4), %eax
	movl	(%ebx,%ecx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %esi
	movl	-4(%ebp), %eax
	movl	(%ebp), %ecx
	movl	(%ebx,%eax,4), %eax
	movl	(%ebx,%ecx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, %esi
	movl	(%ebx,%edi,4), %eax
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_gadd
	movl	%eax, %esi
	incl	%edi
	addl	$16, %ebp
	cmpl	$6, %edi
	jne	LBB22_134
## BB#135:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	%esi, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	76(%esp), %ecx          ## 4-byte Reload
	movl	16(%esp), %ebp          ## 4-byte Reload
	movl	%eax, (%ecx,%ebp,4)
	movl	%esi, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_137
## BB#136:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_137:                              ##   in Loop: Header=BB22_105 Depth=3
	movl	44(%esp), %eax          ## 4-byte Reload
	movl	%ecx, (%eax,%ebp,4)
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax,%ebp,4)
	incl	%ebp
	cmpl	$7, %ebp
	movl	28(%esp), %edi          ## 4-byte Reload
	jne	LBB22_105
## BB#138:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_roots_to_pol
	movl	%eax, %esi
	movl	%esi, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	%eax, %ebx
	movl	%esi, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_140
## BB#139:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_140:                              ##   in Loop: Header=BB22_104 Depth=2
	cmpl	$-9, %ecx
	jge	LBB22_103
## BB#141:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%ebx, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	je	LBB22_16
## BB#142:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%ebx, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %esi
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	(%esi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	cmpl	$2, %ecx
	je	LBB22_290
## BB#143:                              ##   in Loop: Header=BB22_104 Depth=2
	testl	%eax, %eax
	je	LBB22_292
## BB#144:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	60(%esp), %esi          ## 4-byte Reload
	addl	$-64, %esi
	sarl	%esi
	negl	%esi
	movl	72(%esp), %eax          ## 4-byte Reload
	cmpl	%esi, -24(%eax)
	jg	LBB22_146
## BB#145:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	-24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_poleval
	movl	%eax, (%esp)
	calll	_gequal0
	movl	$1, %ecx
	testl	%eax, %eax
	jne	LBB22_162
LBB22_146:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	72(%esp), %eax          ## 4-byte Reload
	cmpl	%esi, -20(%eax)
	jg	LBB22_148
## BB#147:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	-20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_poleval
	movl	%eax, (%esp)
	calll	_gequal0
	movl	$2, %ecx
	testl	%eax, %eax
	jne	LBB22_162
LBB22_148:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	72(%esp), %eax          ## 4-byte Reload
	cmpl	%esi, -16(%eax)
	jg	LBB22_150
## BB#149:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	-16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_poleval
	movl	%eax, (%esp)
	calll	_gequal0
	movl	$3, %ecx
	testl	%eax, %eax
	jne	LBB22_162
LBB22_150:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	72(%esp), %eax          ## 4-byte Reload
	cmpl	%esi, -12(%eax)
	jg	LBB22_152
## BB#151:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	-12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_poleval
	movl	%eax, (%esp)
	calll	_gequal0
	movl	$4, %ecx
	testl	%eax, %eax
	jne	LBB22_162
LBB22_152:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	72(%esp), %eax          ## 4-byte Reload
	cmpl	%esi, -8(%eax)
	jg	LBB22_154
## BB#153:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	-8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_poleval
	movl	%eax, (%esp)
	calll	_gequal0
	movl	$5, %ecx
	testl	%eax, %eax
	jne	LBB22_162
LBB22_154:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	72(%esp), %eax          ## 4-byte Reload
	cmpl	%esi, -4(%eax)
	jg	LBB22_161
## BB#155:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	68(%esp), %eax          ## 4-byte Reload
	movl	-4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_poleval
	movl	%eax, (%esp)
	calll	_gequal0
	testl	%eax, %eax
	je	LBB22_161
## BB#156:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	(%edi), %ebp
	movl	%ebp, %edi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	leal	(,%edi,4), %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	movl	%ebx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%edi, %eax
	jae	LBB22_158
## BB#157:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	$14, (%esp)
	calll	_pari_err
LBB22_158:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%esi)
	cmpl	$2, %edi
	jb	LBB22_191
## BB#159:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%edi, %eax
	negl	%eax
	leal	-1(%edi), %ecx
	cmpl	$8, %ecx
	jae	LBB22_181
## BB#160:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %edx          ## 4-byte Reload
	jmp	LBB22_189
LBB22_161:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	112(%esp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	calll	_pari_err
	movl	$7, %ecx
LBB22_162:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	(%edi), %edi
	movl	%edi, %ebx
	andl	$16777215, %ebx         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebp
	leal	(,%ebx,4), %eax
	movl	%ebp, %esi
	subl	%eax, %esi
	movl	%ebp, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%ebx, %eax
	jae	LBB22_164
## BB#163:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	$14, (%esp)
	calll	_pari_err
LBB22_164:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%esi, (%eax)
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%esi)
	cmpl	$2, %ebx
	jb	LBB22_177
## BB#165:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%ebx, %eax
	negl	%eax
	leal	-1(%ebx), %ecx
	cmpl	$8, %ecx
	jae	LBB22_167
## BB#166:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %edx          ## 4-byte Reload
	jmp	LBB22_175
LBB22_167:                              ##   in Loop: Header=BB22_104 Depth=2
	addl	$7, %edi
	andl	$7, %edi
	subl	%edi, %ecx
	je	LBB22_171
## BB#168:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	4(%ebp,%eax,4), %eax
	movl	28(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%ebx,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_172
## BB#169:                              ##   in Loop: Header=BB22_104 Depth=2
	cmpl	%ebp, 96(%esp)          ## 4-byte Folded Reload
	jae	LBB22_172
## BB#170:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_175
LBB22_171:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %edx          ## 4-byte Reload
	jmp	LBB22_175
LBB22_172:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %eax          ## 4-byte Reload
	leal	-16(%eax,%ebx,4), %edx
	subl	%ecx, %ebx
	leal	-16(%ebp), %eax
	.p2align	4, 0x90
LBB22_173:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_173
## BB#174:                              ##   in Loop: Header=BB22_104 Depth=2
	testl	%edi, %edi
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	16(%esp), %eax          ## 4-byte Reload
	je	LBB22_177
LBB22_175:                              ##   in Loop: Header=BB22_104 Depth=2
	leal	-4(%ebp,%eax,4), %eax
	.p2align	4, 0x90
LBB22_176:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%edx,%ebx,4), %ecx
	movl	%ecx, (%eax,%ebx,4)
	decl	%ebx
	cmpl	$1, %ebx
	jg	LBB22_176
LBB22_177:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	4(%esi), %eax
	movl	24(%esp), %edx          ## 4-byte Reload
	movl	(%esi,%edx,4), %ecx
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi,%edx,4)
LBB22_178:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	80(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ebx
	movl	4(%esi), %eax
	movl	8(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %edi
	movl	4(%esi), %eax
	movl	8(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gsub
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gadd
	movl	%eax, %edi
	movl	8(%esi), %eax
	movl	12(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %ebx
	movl	8(%esi), %eax
	movl	12(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gsub
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gadd
	movl	%eax, %edi
	movl	12(%esi), %eax
	movl	16(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %ebx
	movl	12(%esi), %eax
	movl	16(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gsub
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gadd
	movl	%eax, %edi
	movl	16(%esi), %eax
	movl	20(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %ebx
	movl	16(%esi), %eax
	movl	20(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gsub
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gadd
	movl	%eax, %edi
	movl	4(%esi), %eax
	movl	20(%esi), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_gmul
	movl	%eax, %ebx
	movl	4(%esi), %eax
	movl	20(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gsub
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_gadd
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%eax, %esi
	movl	%esi, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	%eax, %ebx
	movl	%esi, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_180
## BB#179:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_180:                              ##   in Loop: Header=BB22_104 Depth=2
	cmpl	$-10, %ecx
	jg	LBB22_103
	jmp	LBB22_284
LBB22_181:                              ##   in Loop: Header=BB22_104 Depth=2
	addl	$7, %ebp
	andl	$7, %ebp
	subl	%ebp, %ecx
	je	LBB22_185
## BB#182:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	%eax, 24(%esp)          ## 4-byte Spill
	leal	4(%ebx,%eax,4), %eax
	movl	28(%esp), %edx          ## 4-byte Reload
	leal	(%edx,%edi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_186
## BB#183:                              ##   in Loop: Header=BB22_104 Depth=2
	cmpl	%ebx, 96(%esp)          ## 4-byte Folded Reload
	jae	LBB22_186
## BB#184:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	24(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_189
LBB22_185:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %edx          ## 4-byte Reload
	jmp	LBB22_189
LBB22_186:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	28(%esp), %eax          ## 4-byte Reload
	leal	-16(%eax,%edi,4), %edx
	subl	%ecx, %edi
	leal	-16(%ebx), %eax
	.p2align	4, 0x90
LBB22_187:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_187
## BB#188:                              ##   in Loop: Header=BB22_104 Depth=2
	testl	%ebp, %ebp
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	24(%esp), %eax          ## 4-byte Reload
	je	LBB22_191
LBB22_189:                              ##   in Loop: Header=BB22_104 Depth=2
	leal	-4(%ebx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_190:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_104 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-4(%edx,%edi,4), %ecx
	movl	%ecx, (%eax,%edi,4)
	decl	%edi
	cmpl	$1, %edi
	jg	LBB22_190
LBB22_191:                              ##   in Loop: Header=BB22_104 Depth=2
	movl	8(%esi), %eax
	movl	20(%esi), %ecx
	movl	%ecx, 8(%esi)
	movl	%eax, 20(%esi)
	jmp	LBB22_178
LBB22_192:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	leal	-28(%eax), %ecx
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$27, %eax
	ja	LBB22_194
## BB#193:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB22_194:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$570425351, (%ecx)      ## imm = 0x22000007
	movsd	80(%esp), %xmm0         ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	152(%esp), %xmm0        ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %ecx
	addl	$4, %ecx
	jmp	LBB22_196
	.p2align	4, 0x90
LBB22_195:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	100(%esp), %ecx         ## 4-byte Reload
	leal	-2(%ecx,%ecx), %ecx
LBB22_196:                              ##   Parent Loop BB22_17 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB22_198 Depth 3
                                        ##         Child Loop BB22_199 Depth 4
                                        ##           Child Loop BB22_209 Depth 5
                                        ##           Child Loop BB22_212 Depth 5
                                        ##           Child Loop BB22_215 Depth 5
                                        ##             Child Loop BB22_216 Depth 6
                                        ##       Child Loop BB22_228 Depth 3
                                        ##         Child Loop BB22_229 Depth 4
                                        ##           Child Loop BB22_240 Depth 5
                                        ##           Child Loop BB22_243 Depth 5
	movl	56(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_198
LBB22_197:                              ##   in Loop: Header=BB22_198 Depth=3
	movl	132(%esp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	calll	_pari_err
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	100(%esp), %ecx         ## 4-byte Reload
	.p2align	4, 0x90
LBB22_198:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_199 Depth 4
                                        ##           Child Loop BB22_209 Depth 5
                                        ##           Child Loop BB22_212 Depth 5
                                        ##           Child Loop BB22_215 Depth 5
                                        ##             Child Loop BB22_216 Depth 6
	movl	%ecx, 100(%esp)         ## 4-byte Spill
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_cleanroots
	leal	4(%eax), %ecx
	movl	%ecx, 72(%esp)          ## 4-byte Spill
	movl	%eax, 64(%esp)          ## 4-byte Spill
	leal	-16(%eax), %eax
	movl	%eax, 68(%esp)          ## 4-byte Spill
	movl	$1, %ebp
	.p2align	4, 0x90
LBB22_199:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_198 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB22_209 Depth 5
                                        ##           Child Loop BB22_212 Depth 5
                                        ##           Child Loop BB22_215 Depth 5
                                        ##             Child Loop BB22_216 Depth 6
	cmpl	$1, %ebp
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	%edx, %esi
	je	LBB22_214
## BB#200:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	(%edx), %esi
	movl	%esi, 24(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %edi
	leal	(,%esi,4), %eax
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 76(%esp)          ## 4-byte Spill
	movl	%edi, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_202
## BB#201:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	$14, (%esp)
	calll	_pari_err
	movl	64(%esp), %edx          ## 4-byte Reload
LBB22_202:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	76(%esp), %ebx          ## 4-byte Reload
	movl	%ebx, (%eax)
	movl	(%edx), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%ebx)
	cmpl	$2, %esi
	jb	LBB22_213
## BB#203:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jb	LBB22_211
## BB#204:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	24(%esp), %ebx          ## 4-byte Reload
	addl	$7, %ebx
	andl	$7, %ebx
	subl	%ebx, %ecx
	je	LBB22_211
## BB#205:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	%eax, 24(%esp)          ## 4-byte Spill
	leal	4(%edi,%eax,4), %eax
	leal	(%edx,%esi,4), %edx
	cmpl	%edx, %eax
	jae	LBB22_208
## BB#206:                              ##   in Loop: Header=BB22_199 Depth=4
	cmpl	%edi, 72(%esp)          ## 4-byte Folded Reload
	jae	LBB22_208
## BB#207:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	24(%esp), %eax          ## 4-byte Reload
	jmp	LBB22_211
LBB22_208:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	68(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%edi), %eax
	.p2align	4, 0x90
LBB22_209:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_198 Depth=3
                                        ##         Parent Loop BB22_199 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_209
## BB#210:                              ##   in Loop: Header=BB22_199 Depth=4
	testl	%ebx, %ebx
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	24(%esp), %eax          ## 4-byte Reload
	je	LBB22_213
	.p2align	4, 0x90
LBB22_211:                              ##   in Loop: Header=BB22_199 Depth=4
	leal	-4(%edi,%eax,4), %eax
	.p2align	4, 0x90
LBB22_212:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_198 Depth=3
                                        ##         Parent Loop BB22_199 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movl	-4(%edx,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_212
LBB22_213:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	76(%esp), %esi          ## 4-byte Reload
	movl	4(%esi), %eax
	movl	(%esi,%ebp,4), %ecx
	movl	%ecx, 4(%esi)
	movl	%eax, (%esi,%ebp,4)
LBB22_214:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	%esi, 76(%esp)          ## 4-byte Spill
	movl	%ebp, 96(%esp)          ## 4-byte Spill
	movl	92(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ecx
	movl	$1, %edi
	movl	$20, %eax
	movl	$80, %edx
	movl	140(%esp), %esi         ## 4-byte Reload
	.p2align	4, 0x90
LBB22_215:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_198 Depth=3
                                        ##         Parent Loop BB22_199 Depth=4
                                        ## =>        This Loop Header: Depth=5
                                        ##             Child Loop BB22_216 Depth 6
	movl	%edx, 36(%esp)          ## 4-byte Spill
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	%edi, %eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	leal	1(%edi), %ebx
	movl	%esi, 80(%esp)          ## 4-byte Spill
	movl	%esi, %edi
	movl	%ebx, 44(%esp)          ## 4-byte Spill
	movl	76(%esp), %ebp          ## 4-byte Reload
	.p2align	4, 0x90
LBB22_216:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_198 Depth=3
                                        ##         Parent Loop BB22_199 Depth=4
                                        ##           Parent Loop BB22_215 Depth=5
                                        ## =>          This Inner Loop Header: Depth=6
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	-12(%edi), %eax
	movl	-8(%edi), %ecx
	movl	(%ebp,%eax,4), %eax
	movl	(%ebp,%ecx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %esi
	movl	-4(%edi), %eax
	movl	(%edi), %ecx
	movl	(%ebp,%eax,4), %eax
	movl	(%ebp,%ecx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, %esi
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	(%ebp,%eax,4), %eax
	movl	(%ebp,%ebx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, (%esp)
	calll	_gsqr
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_gadd
	movl	%eax, %ecx
	incl	%ebx
	addl	$16, %edi
	cmpl	$7, %ebx
	jne	LBB22_216
## BB#217:                              ##   in Loop: Header=BB22_215 Depth=5
	movl	28(%esp), %eax          ## 4-byte Reload
	addl	$-4, %eax
	movl	36(%esp), %edx          ## 4-byte Reload
	movl	80(%esp), %esi          ## 4-byte Reload
	addl	%edx, %esi
	addl	$-16, %edx
	movl	44(%esp), %edi          ## 4-byte Reload
	cmpl	$6, %edi
	jne	LBB22_215
## BB#218:                              ##   in Loop: Header=BB22_199 Depth=4
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	96(%esp), %ebp          ## 4-byte Reload
	movl	%ecx, (%eax,%ebp,4)
	incl	%ebp
	cmpl	$7, %ebp
	jne	LBB22_199
## BB#219:                              ##   in Loop: Header=BB22_198 Depth=3
	movl	%ecx, %ebp
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_roots_to_pol
	movl	%eax, %edi
	movl	%edi, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	%eax, %esi
	movl	%edi, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_221
## BB#220:                              ##   in Loop: Header=BB22_198 Depth=3
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_221:                              ##   in Loop: Header=BB22_198 Depth=3
	cmpl	$-9, %ecx
	jge	LBB22_195
## BB#222:                              ##   in Loop: Header=BB22_198 Depth=3
	movl	%esi, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	je	LBB22_16
## BB#223:                              ##   in Loop: Header=BB22_198 Depth=3
	movl	%esi, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %esi
	movl	(%esi), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	%ecx, %eax
	addl	$-2, %eax
	cmpl	$3, %eax
	ja	LBB22_197
## BB#224:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	92(%esp), %ecx          ## 4-byte Reload
Ltmp8 = LJTI22_2-L22$pb
	movl	Ltmp8(%ecx,%eax,4), %eax
	addl	%ecx, %eax
	movl	48(%esp), %ebx          ## 4-byte Reload
	jmpl	*%eax
LBB22_225:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %edi
	leal	-44(%edi), %eax
	movl	%eax, 60(%esp)          ## 4-byte Spill
	movl	%edi, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$43, %eax
	ja	LBB22_227
## BB#226:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	$14, (%esp)
	calll	_pari_err
LBB22_227:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$570425355, -44(%edi)   ## imm = 0x2200000B
	movl	64(%esp), %ebx          ## 4-byte Reload
	movl	4(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	12(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %esi
	movl	16(%ebx), %eax
	movl	20(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	24(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, -40(%edi)
	movl	$1, 28(%esp)            ## 4-byte Folded Spill
	movl	$1, %ecx
	.p2align	4, 0x90
LBB22_228:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_229 Depth 4
                                        ##           Child Loop BB22_240 Depth 5
                                        ##           Child Loop BB22_243 Depth 5
	movl	$4, %ebp
	movl	%ecx, 44(%esp)          ## 4-byte Spill
	movl	%ecx, %ebx
	.p2align	4, 0x90
LBB22_229:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_228 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB22_240 Depth 5
                                        ##           Child Loop BB22_243 Depth 5
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	(%edx), %esi
	movl	%esi, 16(%esp)          ## 4-byte Spill
	andl	$16777215, %esi         ## imm = 0xFFFFFF
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %ecx
	leal	(,%esi,4), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%ecx, 24(%esp)          ## 4-byte Spill
	movl	%ecx, %eax
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	shrl	$2, %eax
	cmpl	%esi, %eax
	jae	LBB22_231
## BB#230:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	$14, (%esp)
	calll	_pari_err
	movl	64(%esp), %edx          ## 4-byte Reload
LBB22_231:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%edi, (%eax)
	movl	(%edx), %eax
	movl	$-16777217, %ecx        ## imm = 0xFEFFFFFF
	andl	%ecx, %eax
	movl	%eax, (%edi)
	cmpl	$2, %esi
	jb	LBB22_244
## BB#232:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	%esi, %eax
	negl	%eax
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	jae	LBB22_234
## BB#233:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	24(%esp), %ecx          ## 4-byte Reload
	jmp	LBB22_242
	.p2align	4, 0x90
LBB22_234:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	%eax, 36(%esp)          ## 4-byte Spill
	movl	16(%esp), %eax          ## 4-byte Reload
	addl	$7, %eax
	andl	$7, %eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	subl	%eax, %ecx
	je	LBB22_238
## BB#235:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	%ebx, 80(%esp)          ## 4-byte Spill
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	36(%esp), %ebx          ## 4-byte Reload
	leal	4(%eax,%ebx,4), %eax
	leal	(%edx,%esi,4), %edx
	cmpl	%edx, %eax
	movl	24(%esp), %eax          ## 4-byte Reload
	jae	LBB22_239
## BB#236:                              ##   in Loop: Header=BB22_229 Depth=4
	cmpl	%eax, 72(%esp)          ## 4-byte Folded Reload
	jae	LBB22_239
## BB#237:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	%eax, %ecx
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	80(%esp), %ebx          ## 4-byte Reload
	jmp	LBB22_242
LBB22_238:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	24(%esp), %ecx          ## 4-byte Reload
	jmp	LBB22_242
LBB22_239:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	%eax, %ebx
	movl	68(%esp), %eax          ## 4-byte Reload
	leal	(%eax,%esi,4), %edx
	subl	%ecx, %esi
	leal	-16(%ebx), %eax
	movl	80(%esp), %ebx          ## 4-byte Reload
	.p2align	4, 0x90
LBB22_240:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_228 Depth=3
                                        ##         Parent Loop BB22_229 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movupd	-16(%edx), %xmm0
	movupd	(%edx), %xmm1
	movupd	%xmm1, (%eax)
	movupd	%xmm0, -16(%eax)
	addl	$-32, %edx
	addl	$-32, %eax
	addl	$-8, %ecx
	jne	LBB22_240
## BB#241:                              ##   in Loop: Header=BB22_229 Depth=4
	cmpl	$0, 16(%esp)            ## 4-byte Folded Reload
	movl	64(%esp), %edx          ## 4-byte Reload
	movl	24(%esp), %ecx          ## 4-byte Reload
	movl	36(%esp), %eax          ## 4-byte Reload
	je	LBB22_244
	.p2align	4, 0x90
LBB22_242:                              ##   in Loop: Header=BB22_229 Depth=4
	leal	-4(%ecx,%eax,4), %eax
	.p2align	4, 0x90
LBB22_243:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_196 Depth=2
                                        ##       Parent Loop BB22_228 Depth=3
                                        ##         Parent Loop BB22_229 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movl	-4(%edx,%esi,4), %ecx
	movl	%ecx, (%eax,%esi,4)
	decl	%esi
	cmpl	$1, %esi
	jg	LBB22_243
LBB22_244:                              ##   in Loop: Header=BB22_229 Depth=4
	movl	28(%esp), %edx          ## 4-byte Reload
	movl	(%edi,%edx,4), %eax
	movl	(%edi,%ebp,4), %ecx
	movl	%ecx, (%edi,%edx,4)
	movl	%eax, (%edi,%ebp,4)
	movl	4(%edi), %eax
	movl	8(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	12(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, %esi
	movl	16(%edi), %eax
	movl	20(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	24(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gmul
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%eax, 4(%ecx,%ebx,4)
	incl	%ebx
	incl	%ebp
	cmpl	$7, %ebp
	jne	LBB22_229
## BB#245:                              ##   in Loop: Header=BB22_228 Depth=3
	movl	44(%esp), %ecx          ## 4-byte Reload
	addl	$3, %ecx
	movl	28(%esp), %eax          ## 4-byte Reload
	incl	%eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	cmpl	$4, %eax
	jne	LBB22_228
## BB#246:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_roots_to_pol
	movl	%eax, %esi
	movl	%esi, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	%eax, %ebx
	movl	%esi, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_248
## BB#247:                              ##   in Loop: Header=BB22_196 Depth=2
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_248:                              ##   in Loop: Header=BB22_196 Depth=2
	cmpl	$-10, %ecx
	jg	LBB22_195
## BB#249:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	%ebx, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	je	LBB22_16
	jmp	LBB22_348
LBB22_250:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	(%eax), %eax
	leal	-144(%eax), %ecx
	movl	%ecx, 60(%esp)          ## 4-byte Spill
	movl	%eax, %esi
	movl	52(%esp), %ecx          ## 4-byte Reload
	subl	(%ecx), %eax
	cmpl	$143, %eax
	ja	LBB22_252
## BB#251:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	$14, (%esp)
	calll	_pari_err
LBB22_252:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	60(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$570425380, -144(%esi)  ## imm = 0x22000024
	movsd	80(%esp), %xmm0         ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	144(%esp), %xmm0        ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	addl	$4, %eax
	leal	-140(%esi), %ecx
	movl	%ecx, 28(%esp)          ## 4-byte Spill
	addl	$-136, %esi
	movl	%esi, 96(%esp)          ## 4-byte Spill
	jmp	LBB22_254
	.p2align	4, 0x90
LBB22_253:                              ##   in Loop: Header=BB22_254 Depth=2
	movl	64(%esp), %eax          ## 4-byte Reload
	leal	-2(%eax,%eax), %eax
LBB22_254:                              ##   Parent Loop BB22_17 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB22_255 Depth 3
                                        ##         Child Loop BB22_256 Depth 4
                                        ##         Child Loop BB22_258 Depth 4
                                        ##       Child Loop BB22_261 Depth 3
                                        ##         Child Loop BB22_262 Depth 4
                                        ##         Child Loop BB22_264 Depth 4
                                        ##       Child Loop BB22_267 Depth 3
                                        ##         Child Loop BB22_268 Depth 4
                                        ##         Child Loop BB22_270 Depth 4
                                        ##       Child Loop BB22_273 Depth 3
                                        ##         Child Loop BB22_274 Depth 4
                                        ##         Child Loop BB22_276 Depth 4
	movl	%eax, 64(%esp)          ## 4-byte Spill
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	xorl	%esi, %esi
	movl	$2, %edi
	calll	_cleanroots
	movl	$5, %ebx
	movl	%eax, %ebp
	movl	%ebp, 24(%esp)          ## 4-byte Spill
	.p2align	4, 0x90
LBB22_255:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_256 Depth 4
                                        ##         Child Loop BB22_258 Depth 4
	movl	%esi, 16(%esp)          ## 4-byte Spill
	negl	%ebx
	.p2align	4, 0x90
LBB22_256:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_255 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	4(%ebp), %eax
	movl	(%ebp,%edi,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gadd
	movl	%eax, %esi
	incl	%edi
	incl	%ebx
	cmpl	$7, %edi
	jg	LBB22_256
## BB#257:                              ##   in Loop: Header=BB22_255 Depth=3
	movl	%ebx, 36(%esp)          ## 4-byte Spill
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	16(%esp), %ecx          ## 4-byte Reload
	leal	(%eax,%ecx,4), %ebp
	movl	%edi, %ebx
	.p2align	4, 0x90
LBB22_258:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_255 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	(%eax,%ebx,4), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, (%ebp)
	incl	%ebx
	addl	$4, %ebp
	cmpl	$8, %ebx
	jne	LBB22_258
## BB#259:                              ##   in Loop: Header=BB22_255 Depth=3
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	36(%esp), %ebx          ## 4-byte Reload
	subl	%ebx, %eax
	leal	1(%eax), %esi
	negl	%ebx
	cmpl	$7, %edi
	movl	24(%esp), %ebp          ## 4-byte Reload
	jne	LBB22_255
## BB#260:                              ##   in Loop: Header=BB22_254 Depth=2
	incl	%eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	movl	$3, %ebx
	movl	$4, %ecx
	.p2align	4, 0x90
LBB22_261:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_262 Depth 4
                                        ##         Child Loop BB22_264 Depth 4
	negl	%ecx
	movl	%ecx, %edi
	.p2align	4, 0x90
LBB22_262:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_261 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	8(%ebp), %eax
	movl	(%ebp,%ebx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gadd
	movl	%eax, %esi
	incl	%ebx
	incl	%edi
	cmpl	$7, %ebx
	jg	LBB22_262
## BB#263:                              ##   in Loop: Header=BB22_261 Depth=3
	movl	%edi, 36(%esp)          ## 4-byte Spill
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	16(%esp), %ecx          ## 4-byte Reload
	leal	(%eax,%ecx,4), %ebp
	movl	%ebx, %edi
	.p2align	4, 0x90
LBB22_264:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_261 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	(%eax,%edi,4), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, (%ebp)
	incl	%edi
	addl	$4, %ebp
	cmpl	$8, %edi
	jne	LBB22_264
## BB#265:                              ##   in Loop: Header=BB22_261 Depth=3
	movl	16(%esp), %edx          ## 4-byte Reload
	movl	36(%esp), %ecx          ## 4-byte Reload
	subl	%ecx, %edx
	leal	1(%edx), %eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	negl	%ecx
	cmpl	$7, %ebx
	movl	24(%esp), %ebp          ## 4-byte Reload
	jne	LBB22_261
## BB#266:                              ##   in Loop: Header=BB22_254 Depth=2
	incl	%edx
	movl	$4, %ebx
	movl	$3, %edi
	.p2align	4, 0x90
LBB22_267:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_268 Depth 4
                                        ##         Child Loop BB22_270 Depth 4
	movl	%edx, 16(%esp)          ## 4-byte Spill
	negl	%edi
	.p2align	4, 0x90
LBB22_268:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_267 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	12(%ebp), %eax
	movl	(%ebp,%ebx,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gadd
	movl	%eax, %esi
	incl	%ebx
	incl	%edi
	cmpl	$7, %ebx
	jg	LBB22_268
## BB#269:                              ##   in Loop: Header=BB22_267 Depth=3
	movl	%edi, 36(%esp)          ## 4-byte Spill
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	16(%esp), %ecx          ## 4-byte Reload
	leal	(%eax,%ecx,4), %ebp
	movl	%ebx, %edi
	.p2align	4, 0x90
LBB22_270:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_267 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	(%eax,%edi,4), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, (%ebp)
	incl	%edi
	addl	$4, %ebp
	cmpl	$8, %edi
	jne	LBB22_270
## BB#271:                              ##   in Loop: Header=BB22_267 Depth=3
	movl	16(%esp), %eax          ## 4-byte Reload
	movl	36(%esp), %edi          ## 4-byte Reload
	subl	%edi, %eax
	leal	1(%eax), %edx
	negl	%edi
	cmpl	$7, %ebx
	movl	24(%esp), %ebp          ## 4-byte Reload
	jne	LBB22_267
## BB#272:                              ##   in Loop: Header=BB22_254 Depth=2
	incl	%eax
	movl	$5, %edx
	movl	$2, %ecx
	.p2align	4, 0x90
LBB22_273:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB22_274 Depth 4
                                        ##         Child Loop BB22_276 Depth 4
	movl	%ecx, 80(%esp)          ## 4-byte Spill
	movl	%eax, 36(%esp)          ## 4-byte Spill
	leal	(%ecx,%eax), %eax
	movl	96(%esp), %ecx          ## 4-byte Reload
	leal	(%ecx,%eax,4), %ebx
	leal	(%ebp,%edx,4), %eax
	movl	%eax, 16(%esp)          ## 4-byte Spill
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB22_274:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_273 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	16(%ebp), %eax
	movl	16(%esp), %ecx          ## 4-byte Reload
	movl	(%ecx,%edi,4), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, %esi
	calll	_gadd
	movl	%esi, %edx
	movl	%eax, %esi
	addl	$-4, %ebx
	leal	1(%edx,%edi), %eax
	incl	%edi
	cmpl	$7, %eax
	jg	LBB22_274
## BB#275:                              ##   in Loop: Header=BB22_273 Depth=3
	movl	%ebx, 76(%esp)          ## 4-byte Spill
	leal	-7(%edx,%edi), %eax
	movl	%eax, 44(%esp)          ## 4-byte Spill
	addl	%edi, %edx
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	36(%esp), %ecx          ## 4-byte Reload
	leal	(%eax,%ecx,4), %ebp
	movl	%edx, 16(%esp)          ## 4-byte Spill
	movl	%edx, %ebx
	.p2align	4, 0x90
LBB22_276:                              ##   Parent Loop BB22_17 Depth=1
                                        ##     Parent Loop BB22_254 Depth=2
                                        ##       Parent Loop BB22_273 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	24(%esp), %eax          ## 4-byte Reload
	movl	(%eax,%ebx,4), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_gadd
	movl	%eax, (%ebp)
	incl	%ebx
	addl	$4, %ebp
	cmpl	$8, %ebx
	jne	LBB22_276
## BB#277:                              ##   in Loop: Header=BB22_273 Depth=3
	movl	36(%esp), %eax          ## 4-byte Reload
	movl	80(%esp), %ecx          ## 4-byte Reload
	leal	1(%ecx,%eax), %eax
	subl	%edi, %eax
	subl	%edi, %ecx
	cmpl	$0, 44(%esp)            ## 4-byte Folded Reload
	movl	24(%esp), %ebp          ## 4-byte Reload
	movl	16(%esp), %edx          ## 4-byte Reload
	jne	LBB22_273
## BB#278:                              ##   in Loop: Header=BB22_254 Depth=2
	movl	20(%ebp), %eax
	movl	24(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gadd
	movl	28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_gadd
	movl	76(%esp), %ecx          ## 4-byte Reload
	movl	%eax, (%ecx)
	movl	60(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_roots_to_pol
	movl	%eax, %esi
	movl	%esi, (%esp)
	calll	_real_i
	leal	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_grndtoi
	movl	%eax, %ebp
	movl	%esi, (%esp)
	calll	_imag_i
	movl	%eax, (%esp)
	calll	_gexpo
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	jle	LBB22_280
## BB#279:                              ##   in Loop: Header=BB22_254 Depth=2
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
LBB22_280:                              ##   in Loop: Header=BB22_254 Depth=2
	cmpl	$-9, %ecx
	jge	LBB22_253
## BB#281:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	%ebp, (%esp)
	calll	_ZX_is_squarefree
	testl	%eax, %eax
	je	LBB22_16
## BB#282:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	%ebp, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %eax
	movl	(%eax), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	%edx, %ecx
	addl	$-2, %ecx
	cmpl	$4, %ecx
	jbe	LBB22_318
## BB#283:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	104(%esp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	calll	_pari_err
	jmp	LBB22_16
LBB22_284:                              ##   in Loop: Header=BB22_17 Depth=1
	movl	%ebx, (%esp)
	calll	_gequal0
	testl	%eax, %eax
	jne	LBB22_16
## BB#285:
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_335
## BB#286:
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	movl	$5, %edx
	jmp	LBB22_294
LBB22_287:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$1, 4(%esp)
	movl	$-1, (%esp)
	movl	$2, %edx
	jmp	LBB22_307
LBB22_288:
	movl	%edi, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_305
## BB#289:
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	movl	$3, %edx
	jmp	LBB22_307
LBB22_290:
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_293
## BB#291:
	movl	$4, 4(%esp)
	movl	$1, (%esp)
	movl	$60, %edx
	jmp	LBB22_294
LBB22_292:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$3, 4(%esp)
	movl	$-1, (%esp)
	movl	$20, %edx
	jmp	LBB22_294
LBB22_293:
	movl	$5, 4(%esp)
	movl	$-1, (%esp)
	movl	$120, %edx
LBB22_294:
	movl	48(%esp), %ecx          ## 4-byte Reload
	jmp	LBB22_308
LBB22_295:
	movl	4(%esi), %eax
	movl	(%eax), %ecx
	movl	%ecx, %edx
	andl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	$9, %edi
	subl	%edx, %edi
	addl	$-3, %edx
	cmpl	$3, %edx
	cmovgl	%edi, %edx
	cmpl	$3, %edx
	je	LBB22_312
## BB#296:
	cmpl	$2, %edx
	je	LBB22_314
## BB#297:
	cmpl	$1, %edx
	jne	LBB22_301
## BB#298:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_321
## BB#299:
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	movl	$60, %edx
	jmp	LBB22_307
LBB22_300:
	movl	4(%esi), %eax
	movl	(%eax), %ecx
LBB22_301:
	andl	$16777215, %ecx         ## imm = 0xFFFFFF
	addl	$-3, %ecx
	cmpl	$2, %ecx
	cmovgl	%eax, %ebp
	movl	8(%esi), %eax
	movl	12(%esi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	movl	(%eax), %esi
	andl	%edx, %esi
	addl	$-3, %esi
	cmpl	$2, %esi
	cmovlel	%ebp, %eax
	movl	(%ecx), %esi
	andl	%edx, %esi
	addl	$-3, %esi
	cmpl	$2, %esi
	cmovgl	%ecx, %eax
	andl	(%eax), %edx
	cmpl	$6, %edx
	jne	LBB22_310
## BB#302:
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_316
## BB#303:
	movl	$1, 4(%esp)
	jmp	LBB22_306
LBB22_304:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
LBB22_305:
	movl	$2, 4(%esp)
LBB22_306:
	movl	$-1, (%esp)
	movl	$6, %edx
LBB22_307:
	movl	%ebx, %ecx
LBB22_308:
	calll	_galois_res
LBB22_309:
	addl	$188, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB22_310:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_317
## BB#311:
	movl	$4, 4(%esp)
	movl	$1, (%esp)
	movl	$12, %edx
	jmp	LBB22_307
LBB22_312:
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	testl	%eax, %eax
	je	LBB22_322
## BB#313:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	jmp	LBB22_323
LBB22_314:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	testl	%eax, %eax
	je	LBB22_324
## BB#315:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$7, 4(%esp)
	movl	$1, (%esp)
	jmp	LBB22_327
LBB22_316:
	movl	$3, 4(%esp)
	movl	$-1, (%esp)
	movl	$12, %edx
	jmp	LBB22_307
LBB22_317:
	movl	$8, 4(%esp)
	jmp	LBB22_326
LBB22_318:
	movl	92(%esp), %edx          ## 4-byte Reload
Ltmp9 = LJTI22_1-L22$pb
	addl	Ltmp9(%edx,%ecx,4), %edx
	jmpl	*%edx
LBB22_319:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	movl	48(%esp), %ecx          ## 4-byte Reload
	je	LBB22_346
## BB#320:
	movl	$6, 4(%esp)
	movl	$1, (%esp)
	movl	$2520, %edx             ## imm = 0x9D8
	jmp	LBB22_308
LBB22_321:
	movl	$14, 4(%esp)
	movl	$-1, (%esp)
	movl	$120, %edx
	jmp	LBB22_307
LBB22_322:
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	testl	%eax, %eax
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	je	LBB22_333
LBB22_323:
	movl	$5, 4(%esp)
	movl	$-1, (%esp)
	movl	$18, %edx
	jmp	LBB22_307
LBB22_324:
	leal	4(%esi), %eax
	movl	4(%esi), %ecx
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andl	(%ecx), %edx
	addl	$8, %esi
	cmpl	$5, %edx
	cmovnel	%eax, %esi
	movl	(%esi), %eax
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_334
## BB#325:
	movl	$6, 4(%esp)
LBB22_326:
	movl	$-1, (%esp)
LBB22_327:
	movl	$24, %edx
	jmp	LBB22_307
LBB22_328:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%eax)
	movl	4(%ecx), %eax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%eax), %ecx
	cmpl	$5, %ecx
	movl	48(%esp), %ecx          ## 4-byte Reload
	jne	LBB22_342
## BB#329:
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	jmp	LBB22_343
LBB22_330:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$3, 4(%esp)
	movl	$-1, (%esp)
	movl	$8, %edx
	jmp	LBB22_345
LBB22_331:
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	testl	%eax, %eax
	je	LBB22_344
## BB#332:
	movl	$4, 4(%esp)
	movl	$1, (%esp)
	movl	$12, %edx
	jmp	LBB22_345
LBB22_333:
	movl	$9, 4(%esp)
	movl	$-1, (%esp)
	movl	$36, %edx
	jmp	LBB22_307
LBB22_334:
	movl	$11, 4(%esp)
	movl	$-1, (%esp)
	movl	$48, %edx
	jmp	LBB22_307
LBB22_335:
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	movl	$10, %edx
	jmp	LBB22_294
LBB22_336:
	movl	4(%eax), %ecx
	movl	$16777215, %eax         ## imm = 0xFFFFFF
	andl	(%ecx), %eax
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	cmpl	$31, %eax
	movl	48(%esp), %ecx          ## 4-byte Reload
	je	LBB22_338
## BB#337:
	cmpl	$10, %eax
	jne	LBB22_347
LBB22_338:
	movl	$5, 4(%esp)
	movl	$1, (%esp)
	movl	$168, %edx
	jmp	LBB22_308
LBB22_339:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$3, 4(%esp)
	movl	$1, (%esp)
	movl	$21, %edx
	jmp	LBB22_294
LBB22_340:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$2, 4(%esp)
	movl	$-1, (%esp)
	movl	$14, %edx
	jmp	LBB22_294
LBB22_341:
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	32(%esp), %ecx          ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	movl	$7, %edx
	jmp	LBB22_294
LBB22_342:
	movl	$1, 4(%esp)
	movl	$-1, (%esp)
LBB22_343:
	movl	$4, %edx
	jmp	LBB22_308
LBB22_344:
	movl	$5, 4(%esp)
	movl	$-1, (%esp)
	movl	$24, %edx
LBB22_345:
	movl	%esi, %ecx
	jmp	LBB22_308
LBB22_346:
	movl	$7, 4(%esp)
	movl	$-1, (%esp)
	movl	$5040, %edx             ## imm = 0x13B0
	jmp	LBB22_308
LBB22_347:
	movl	$4, 4(%esp)
	movl	$-1, (%esp)
	movl	$42, %edx
	jmp	LBB22_308
LBB22_348:
	movl	%ebx, (%esp)
	calll	_ZX_factor
	movl	4(%eax), %esi
	movl	56(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZX_disc
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	_Z_issquareall
	movl	20(%esp), %ecx          ## 4-byte Reload
	movl	32(%esp), %edx          ## 4-byte Reload
	movl	%edx, (%ecx)
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andl	(%esi), %ecx
	cmpl	$2, %ecx
	jne	LBB22_351
## BB#349:
	testl	%eax, %eax
	je	LBB22_353
## BB#350:
	movl	$15, 4(%esp)
	movl	$1, (%esp)
	movl	$360, %edx              ## imm = 0x168
	jmp	LBB22_294
LBB22_351:
	testl	%eax, %eax
	je	LBB22_354
## BB#352:
	movl	$10, 4(%esp)
	movl	$1, (%esp)
	movl	$36, %edx
	jmp	LBB22_294
LBB22_353:
	movl	$16, 4(%esp)
	movl	$-1, (%esp)
	movl	$720, %edx              ## imm = 0x2D0
	jmp	LBB22_294
LBB22_354:
	movl	$13, 4(%esp)
	movl	$-1, (%esp)
	movl	$72, %edx
	jmp	LBB22_294
	.p2align	2, 0x90
	.data_region jt32
L22_0_set_19 = LBB22_19-L22$pb
L22_0_set_96 = LBB22_96-L22$pb
L22_0_set_192 = LBB22_192-L22$pb
L22_0_set_250 = LBB22_250-L22$pb
LJTI22_0:
	.long	L22_0_set_19
	.long	L22_0_set_96
	.long	L22_0_set_192
	.long	L22_0_set_250
L22_1_set_319 = LBB22_319-L22$pb
L22_1_set_336 = LBB22_336-L22$pb
L22_1_set_339 = LBB22_339-L22$pb
L22_1_set_340 = LBB22_340-L22$pb
L22_1_set_341 = LBB22_341-L22$pb
LJTI22_1:
	.long	L22_1_set_319
	.long	L22_1_set_336
	.long	L22_1_set_339
	.long	L22_1_set_340
	.long	L22_1_set_341
L22_2_set_225 = LBB22_225-L22$pb
L22_2_set_295 = LBB22_295-L22$pb
L22_2_set_300 = LBB22_300-L22$pb
L22_2_set_304 = LBB22_304-L22$pb
LJTI22_2:
	.long	L22_2_set_225
	.long	L22_2_set_295
	.long	L22_2_set_300
	.long	L22_2_set_304
	.end_data_region


.subsections_via_symbols
