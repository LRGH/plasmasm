	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI0_0:
	.long	4294967291              ## 0xfffffffb
	.long	4294967291              ## 0xfffffffb
	.long	4294967291              ## 0xfffffffb
	.long	4294967291              ## 0xfffffffb
LCPI0_1:
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_2:
	.long	0                       ## double -0.001953125
	.long	3210739712
LCPI0_3:
	.long	0                       ## double 0.0625
	.long	1068498944
LCPI0_4:
	.long	0                       ## double 0.5
	.long	1071644672
LCPI0_5:
	.long	0                       ## double 32
	.long	1077936128
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$220, %esp
	calll	L0$pb
L0$pb:
	popl	%esi
	movl	%esi, -20(%ebp)         ## 4-byte Spill
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	L_x$non_lazy_ptr-L0$pb(%esi), %ecx
	movl	%ecx, -40(%ebp)         ## 4-byte Spill
	movl	%eax, (%ecx)
	movl	%eax, (%esp)
	calll	_strlen
	addl	$2, %eax
	movl	%eax, (%esp)
	movl	$163840, 4(%esp)        ## imm = 0x28000
	calll	_calloc
	movl	L_i$non_lazy_ptr-L0$pb(%esi), %ecx
	movl	%ecx, -44(%ebp)         ## 4-byte Spill
	movl	%eax, (%ecx)
	cmpl	$1, %ebx
	je	LBB0_27
## BB#1:
	movl	L__$non_lazy_ptr-L0$pb(%esi), %eax
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	L_Q$non_lazy_ptr-L0$pb(%esi), %edx
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	movsd	LCPI0_4-L0$pb(%esi), %xmm0 ## xmm0 = mem[0],zero
	movsd	%xmm0, -64(%ebp)        ## 8-byte Spill
	movsd	LCPI0_5-L0$pb(%esi), %xmm0 ## xmm0 = mem[0],zero
	movsd	%xmm0, -72(%ebp)        ## 8-byte Spill
	movl	L_V$non_lazy_ptr-L0$pb(%esi), %eax
	movl	%eax, -48(%ebp)         ## 4-byte Spill
	leal	L_.str.1-L0$pb(%esi), %eax
	movl	%eax, -76(%ebp)         ## 4-byte Spill
	movl	L_s$non_lazy_ptr-L0$pb(%esi), %eax
	movl	%eax, -36(%ebp)         ## 4-byte Spill
	leal	_z-L0$pb(%esi), %eax
	movl	%eax, -52(%ebp)         ## 4-byte Spill
	movsd	LCPI0_2-L0$pb(%esi), %xmm0 ## xmm0 = mem[0],zero
	movsd	%xmm0, -88(%ebp)        ## 8-byte Spill
	movsd	LCPI0_3-L0$pb(%esi), %xmm0 ## xmm0 = mem[0],zero
	movsd	%xmm0, -96(%ebp)        ## 8-byte Spill
	movaps	LCPI0_0-L0$pb(%esi), %xmm0 ## xmm0 = [4294967291,4294967291,4294967291,4294967291]
	movaps	%xmm0, -200(%ebp)       ## 16-byte Spill
	movdqa	LCPI0_1-L0$pb(%esi), %xmm0 ## xmm0 = [3,3,3,3]
	movdqa	%xmm0, -216(%ebp)       ## 16-byte Spill
	movl	L_X$non_lazy_ptr-L0$pb(%esi), %eax
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	leal	L_.str.2-L0$pb(%esi), %eax
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	jmp	LBB0_2
LBB0_8:                                 ##   in Loop: Header=BB0_2 Depth=1
	movsd	_b-L0$pb(%esi), %xmm0   ## xmm0 = mem[0],zero
	mulsd	-64(%ebp), %xmm0        ## 8-byte Folded Reload
	addsd	-72(%ebp), %xmm0        ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movl	%esi, %ebx
	movl	-48(%ebp), %esi         ## 4-byte Reload
	movl	%eax, (%esi)
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_printf
	shll	(%esi)
	movl	%ebx, %esi
	movl	$0, (%edi)
	movl	-36(%ebp), %eax         ## 4-byte Reload
	movl	$0, (%eax)
	movl	$4, %ebx
	movl	%edi, %edx
	.align	4, 0x90
LBB0_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$2, %ebx
	jg	LBB0_9
## BB#3:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	movl	-24(%ebp), %eax         ## 4-byte Reload
	movl	$0, 4(%eax)
	movl	$0, (%eax)
	movl	$0, (%edx)
	movl	%edx, %edi
	movl	-40(%ebp), %ebx         ## 4-byte Reload
	movl	(%ebx), %edx
	leal	1(%edx), %eax
	movl	%eax, (%ebx)
	movb	(%edx), %cl
	movb	%cl, (_z-L0$pb)+1(%esi)
	testb	%cl, %cl
	je	LBB0_8
## BB#4:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %edi
	movl	%ebx, %esi
	leal	2(%edx), %ebx
	movl	%ebx, (%esi)
	movzbl	1(%edx), %edx
	cmpl	$104, %edx
	jne	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_2 Depth=1
	xorb	$32, %cl
	movb	%cl, (_z-L0$pb)+1(%edi)
	jmp	LBB0_7
	.align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, %ebx
	jg	LBB0_24
## BB#10:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	(%edx), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, (%edx)
	testl	%eax, %eax
	jle	LBB0_12
## BB#11:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	-20(%ebp), %esi         ## 4-byte Reload
	movl	L_B$non_lazy_ptr-L0$pb(%esi), %eax
	movsd	(%eax), %xmm0           ## xmm0 = mem[0],zero
	movl	L_k$non_lazy_ptr-L0$pb(%esi), %eax
	addsd	(%eax), %xmm0
	movsd	%xmm0, (%eax)
	cvttsd2si	%xmm0, %eax
	movl	L_o$non_lazy_ptr-L0$pb(%esi), %ecx
	movsd	(%ecx), %xmm0           ## xmm0 = mem[0],zero
	movl	L_l$non_lazy_ptr-L0$pb(%esi), %ecx
	addsd	(%ecx), %xmm0
	movsd	%xmm0, (%ecx)
	addsd	_b-L0$pb(%esi), %xmm0
	cvttsd2si	%xmm0, %ecx
	leal	(%ecx,%ecx,4), %ecx
	shll	$7, %ecx
	movl	%edx, %edi
	movl	-44(%ebp), %edx         ## 4-byte Reload
	addl	(%edx), %ecx
	movl	%edi, %edx
	movb	$1, (%eax,%ecx)
	movl	$3, %ebx
	jmp	LBB0_2
	.align	4, 0x90
LBB0_24:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	-36(%ebp), %eax         ## 4-byte Reload
	movl	(%eax), %eax
	movl	(%edx), %ecx
	leal	(%ecx,%ecx,4), %ecx
	shll	$7, %ecx
	movl	-44(%ebp), %edx         ## 4-byte Reload
	addl	(%edx), %ecx
	movsbl	(%eax,%ecx), %edx
	movl	%ebx, %edi
	movsbl	1(%eax,%ecx), %ebx
	addl	%edx, %ebx
	movsbl	640(%eax,%ecx), %edx
	addl	%ebx, %edx
	movl	%edi, %ebx
	movsbl	641(%eax,%ecx), %eax
	addl	%edx, %eax
	movl	-56(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-32(%ebp), %edx         ## 4-byte Reload
	testl	%eax, %eax
	movl	-20(%ebp), %esi         ## 4-byte Reload
	je	LBB0_26
## BB#25:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	(%edx), %eax
	addl	$2, %eax
	movl	%eax, (%edx)
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	cmpl	(%ecx), %eax
	jl	LBB0_2
LBB0_26:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%edx)
	movl	-36(%ebp), %ecx         ## 4-byte Reload
	movl	(%ecx), %eax
	addl	$2, %eax
	movl	%eax, (%ecx)
	cmpl	$640, %eax              ## imm = 0x280
	jl	LBB0_2
	jmp	LBB0_27
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	%eax, (%esi)
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	-16(%ebp), %ebx         ## 4-byte Reload
	movl	%esi, -28(%ebp)         ## 4-byte Spill
	movl	_Z-L0$pb(%edi), %eax
	movl	-52(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_strstr
	leal	(%eax,%ebx), %ecx
	testl	%eax, %eax
	cmovel	%eax, %ecx
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %ebx
	movl	%ecx, (%esi)
	movl	-32(%ebp), %edx         ## 4-byte Reload
LBB0_19:                                ## %select.unfold.backedge
                                        ##   in Loop: Header=BB0_2 Depth=1
	cmpl	$1, %ebx
	movl	-20(%ebp), %esi         ## 4-byte Reload
	jne	LBB0_2
	jmp	LBB0_27
LBB0_12:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	movl	-24(%ebp), %eax         ## 4-byte Reload
	movsd	(%eax), %xmm0           ## xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB0_13
	jnp	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	addsd	-88(%ebp), %xmm0        ## 8-byte Folded Reload
	movl	-20(%ebp), %esi         ## 4-byte Reload
	movl	L_R$non_lazy_ptr-L0$pb(%esi), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	L_T$non_lazy_ptr-L0$pb(%esi), %edx
	cvtsi2sdl	8(%edx), %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movl	L_O$non_lazy_ptr-L0$pb(%esi), %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%edi), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movl	L_L$non_lazy_ptr-L0$pb(%esi), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	8(%eax), %xmm2
	addsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	(%edx), %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%edi), %xmm1
	addsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2sdl	(%eax), %xmm3
	addsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm3
	movl	L_l$non_lazy_ptr-L0$pb(%esi), %ebx
	movsd	%xmm3, (%ebx)
	subsd	%xmm3, %xmm2
	movsd	-96(%ebp), %xmm7        ## 8-byte Reload
                                        ## xmm7 = mem[0],zero
	mulsd	%xmm7, %xmm2
	movl	L_o$non_lazy_ptr-L0$pb(%esi), %ebx
	movsd	%xmm2, (%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%ecx), %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	4(%ecx), %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdl	12(%edx), %xmm3
	cvtsi2sdl	4(%edx), %xmm4
	cvtsi2sdl	12(%edi), %xmm5
	cvtsi2sdl	4(%edi), %xmm6
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm5
	mulsd	%xmm0, %xmm5
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%eax), %xmm1
	addsd	%xmm5, %xmm1
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm4
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	movsd	%xmm0, (%ecx)
	movl	-32(%ebp), %edx         ## 4-byte Reload
	movl	$16, (%edx)
	addsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm6
	mulsd	%xmm0, %xmm6
	cvtsi2sdl	4(%eax), %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm0, %xmm0
	movl	L_k$non_lazy_ptr-L0$pb(%esi), %eax
	movsd	%xmm0, (%eax)
	subsd	%xmm0, %xmm1
	mulsd	%xmm7, %xmm1
	movl	L_B$non_lazy_ptr-L0$pb(%esi), %eax
	movsd	%xmm1, (%eax)
	movl	$3, %ebx
	jmp	LBB0_2
LBB0_14:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	-28(%ebp), %edi         ## 4-byte Reload
	movl	(%edi), %ecx
	movsbl	(%ecx), %eax
	cmpl	$61, %eax
	movl	-20(%ebp), %edx         ## 4-byte Reload
	jl	LBB0_20
## BB#15:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	L_T$non_lazy_ptr-L0$pb(%edx), %eax
	movl	%eax, -132(%ebp)        ## 4-byte Spill
	movdqu	16(%eax), %xmm2
	movl	L_O$non_lazy_ptr-L0$pb(%edx), %ebx
	movl	%ebx, -176(%ebp)        ## 4-byte Spill
	movdqu	16(%ebx), %xmm1
	movl	L_R$non_lazy_ptr-L0$pb(%edx), %esi
	movl	%esi, -136(%ebp)        ## 4-byte Spill
	movdqu	%xmm2, 16(%esi)
	movdqu	%xmm1, 16(%eax)
	movl	L_L$non_lazy_ptr-L0$pb(%edx), %esi
	movl	%esi, -172(%ebp)        ## 4-byte Spill
	movdqu	16(%esi), %xmm0
	movdqu	%xmm0, 16(%ebx)
	leal	1(%ecx), %edx
	movl	%edx, (%edi)
	movsbl	(%ecx), %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	shrl	$26, %ebx
	addl	%edx, %ebx
	andl	$536870848, %ebx        ## imm = 0x1FFFFFC0
	subl	%ebx, %edx
	leal	(,%edx,8), %ebx
	movl	%ebx, 20(%esi)
	movsbl	1(%ecx), %eax
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$29, %ebx
	addl	%eax, %ebx
	shrl	$3, %ebx
	andl	$7, %ebx
	leal	(%ebx,%edx,8), %eax
	movl	%eax, -156(%ebp)        ## 4-byte Spill
	movl	%eax, 20(%esi)
	leal	2(%ecx), %eax
	movl	%eax, (%edi)
	movsbl	1(%ecx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	andl	$-8, %edx
	subl	%edx, %eax
	leal	3(%ecx), %edx
	movl	%edx, (%edi)
	movl	%eax, 16(%esi)
	movsbl	2(%ecx), %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	shrl	$26, %ebx
	addl	%edx, %ebx
	andl	$-64, %ebx
	subl	%ebx, %edx
	shll	$6, %eax
	leal	-256(%eax,%edx), %edx
	movl	%edx, -160(%ebp)        ## 4-byte Spill
	leal	4(%ecx), %eax
	movl	%eax, (%edi)
	movl	%edx, 16(%esi)
	movsbl	3(%ecx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	andl	$536870848, %edx        ## imm = 0x1FFFFFC0
	subl	%edx, %eax
	leal	(,%eax,8), %edx
	movl	%edx, 28(%esi)
	movsbl	4(%ecx), %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	shrl	$29, %ebx
	addl	%edx, %ebx
	shrl	$3, %ebx
	andl	$7, %ebx
	leal	(%ebx,%eax,8), %edx
	movl	%edx, -164(%ebp)        ## 4-byte Spill
	leal	5(%ecx), %eax
	movl	%eax, (%edi)
	movl	%edx, 28(%esi)
	movsbl	4(%ecx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	andl	$-8, %edx
	subl	%edx, %eax
	leal	6(%ecx), %edx
	movl	%edx, (%edi)
	movl	%eax, 24(%esi)
	movsbl	5(%ecx), %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	shrl	$26, %ebx
	addl	%edx, %ebx
	andl	$-64, %ebx
	subl	%ebx, %edx
	shll	$6, %eax
	leal	-256(%eax,%edx), %eax
	movl	%eax, -168(%ebp)        ## 4-byte Spill
	movl	%eax, 24(%esi)
	movzbl	6(%ecx), %eax
	cmpl	$61, %eax
	jne	LBB0_16
## BB#17:                               ##   in Loop: Header=BB0_2 Depth=1
	addl	$7, %ecx
	movl	%ecx, (%edi)
	movl	-160(%ebp), %esi        ## 4-byte Reload
	movl	-168(%ebp), %edx        ## 4-byte Reload
	movl	-136(%ebp), %ecx        ## 4-byte Reload
	movl	%esi, 16(%ecx)
	movl	-132(%ebp), %edi        ## 4-byte Reload
	movl	%esi, 16(%edi)
	movl	-176(%ebp), %ebx        ## 4-byte Reload
	movl	%esi, 16(%ebx)
	movl	-156(%ebp), %eax        ## 4-byte Reload
	movl	%eax, 20(%ecx)
	movl	%eax, 20(%edi)
	movl	%eax, 20(%ebx)
	movl	%edx, 24(%ecx)
	movl	%edx, 24(%edi)
	movl	%edx, 24(%ebx)
	movl	-164(%ebp), %ecx        ## 4-byte Reload
	movl	-136(%ebp), %edi        ## 4-byte Reload
	movl	%ecx, 28(%edi)
	movl	-132(%ebp), %edi        ## 4-byte Reload
	movl	%ecx, 28(%edi)
	movl	%ecx, 28(%ebx)
	movl	%ecx, -100(%ebp)        ## 4-byte Spill
	movl	%ecx, -112(%ebp)        ## 4-byte Spill
	movl	%ecx, -104(%ebp)        ## 4-byte Spill
	movl	%edx, -152(%ebp)        ## 4-byte Spill
	movl	%edx, -120(%ebp)        ## 4-byte Spill
	movl	%edx, -116(%ebp)        ## 4-byte Spill
	movl	%eax, -140(%ebp)        ## 4-byte Spill
	movl	%eax, -124(%ebp)        ## 4-byte Spill
	movl	%eax, -108(%ebp)        ## 4-byte Spill
	movl	%esi, -144(%ebp)        ## 4-byte Spill
	movl	%esi, -148(%ebp)        ## 4-byte Spill
	movl	%esi, %eax
	movl	%ebx, %edx
	jmp	LBB0_18
LBB0_20:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %esi
	movsbl	%al, %eax
	cmpl	$58, %eax
	jl	LBB0_22
## BB#21:                               ##   in Loop: Header=BB0_2 Depth=1
	incl	%ecx
	movl	%ecx, (%edi)
	movl	L_O$non_lazy_ptr-L0$pb(%esi), %eax
	movdqu	16(%eax), %xmm0
	movl	L_L$non_lazy_ptr-L0$pb(%esi), %ecx
	movdqu	16(%ecx), %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqu	%xmm2, (%ecx)
	movl	L_T$non_lazy_ptr-L0$pb(%esi), %ecx
	movdqu	16(%ecx), %xmm2
	movdqu	%xmm1, 16(%eax)
	movdqa	%xmm1, %xmm3
	psubd	%xmm2, %xmm3
	movdqu	%xmm3, (%eax)
	movl	L_R$non_lazy_ptr-L0$pb(%esi), %eax
	movdqu	%xmm2, 16(%eax)
	movdqu	%xmm0, 16(%ecx)
	paddd	%xmm2, %xmm2
	movdqa	%xmm0, %xmm4
	movdqa	-200(%ebp), %xmm6       ## 16-byte Reload
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      ## xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm0, %xmm5      ## xmm5 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5      ## xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    ## xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm4, %xmm2
	psubd	%xmm1, %xmm2
	movdqu	%xmm2, (%ecx)
	psubd	%xmm1, %xmm0
	pshufd	$245, %xmm0, %xmm1      ## xmm1 = xmm0[1,1,3,3]
	movdqa	-216(%ebp), %xmm2       ## 16-byte Reload
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      ## xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1      ## xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0    ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	paddd	%xmm3, %xmm0
	movdqu	%xmm0, (%eax)
	movl	-24(%ebp), %eax         ## 4-byte Reload
	movl	$1072693248, 4(%eax)    ## imm = 0x3FF00000
	movl	$0, (%eax)
	movl	$3, %ebx
	movl	-32(%ebp), %edx         ## 4-byte Reload
	jmp	LBB0_2
LBB0_16:                                ##   in Loop: Header=BB0_2 Depth=1
	movd	%xmm2, -144(%ebp)       ## 4-byte Folded Spill
	pshufd	$229, %xmm2, %xmm3      ## xmm3 = xmm2[1,1,2,3]
	movd	%xmm3, -140(%ebp)       ## 4-byte Folded Spill
	pshufd	$78, %xmm2, %xmm3       ## xmm3 = xmm2[2,3,0,1]
	movd	%xmm3, -152(%ebp)       ## 4-byte Folded Spill
	pshufd	$231, %xmm2, %xmm2      ## xmm2 = xmm2[3,1,2,3]
	movd	%xmm2, -100(%ebp)       ## 4-byte Folded Spill
	movd	%xmm1, %eax
	pshufd	$229, %xmm1, %xmm2      ## xmm2 = xmm1[1,1,2,3]
	movd	%xmm2, -108(%ebp)       ## 4-byte Folded Spill
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	pshufd	$231, %xmm1, %xmm1      ## xmm1 = xmm1[3,1,2,3]
	pshufd	$229, %xmm0, %xmm3      ## xmm3 = xmm0[1,1,2,3]
	pshufd	$78, %xmm0, %xmm4       ## xmm4 = xmm0[2,3,0,1]
	pshufd	$231, %xmm0, %xmm5      ## xmm5 = xmm0[3,1,2,3]
	movd	%xmm2, -116(%ebp)       ## 4-byte Folded Spill
	movd	%xmm1, -104(%ebp)       ## 4-byte Folded Spill
	movd	%xmm0, -148(%ebp)       ## 4-byte Folded Spill
	movd	%xmm3, -124(%ebp)       ## 4-byte Folded Spill
	movd	%xmm4, -120(%ebp)       ## 4-byte Folded Spill
	movd	%xmm5, -112(%ebp)       ## 4-byte Folded Spill
	movl	-176(%ebp), %edx        ## 4-byte Reload
LBB0_18:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%eax, -128(%ebp)        ## 4-byte Spill
	leal	(%eax,%eax), %eax
	movl	-172(%ebp), %edi        ## 4-byte Reload
	movl	%eax, (%edi)
	movl	-108(%ebp), %eax        ## 4-byte Reload
	leal	(%eax,%eax), %eax
	movl	%eax, 4(%edi)
	movl	-116(%ebp), %eax        ## 4-byte Reload
	leal	(%eax,%eax), %eax
	movl	%eax, 8(%edi)
	movl	-104(%ebp), %eax        ## 4-byte Reload
	leal	(%eax,%eax), %eax
	movl	%eax, 12(%edi)
	movl	-148(%ebp), %esi        ## 4-byte Reload
	movl	%esi, %eax
	movl	-144(%ebp), %ebx        ## 4-byte Reload
	subl	%ebx, %eax
	movl	%eax, (%edx)
	movl	-124(%ebp), %eax        ## 4-byte Reload
	movl	-140(%ebp), %ecx        ## 4-byte Reload
	subl	%ecx, %eax
	movl	%ecx, %edi
	movl	%eax, 4(%edx)
	movl	-120(%ebp), %eax        ## 4-byte Reload
	movl	-152(%ebp), %ecx        ## 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, 8(%edx)
	movl	-112(%ebp), %eax        ## 4-byte Reload
	subl	-100(%ebp), %eax        ## 4-byte Folded Reload
	movl	%eax, 12(%edx)
	imull	$-5, -128(%ebp), %eax   ## 4-byte Folded Reload
	leal	(%eax,%ebx,2), %eax
	leal	(%eax,%esi,4), %eax
	movl	-160(%ebp), %ebx        ## 4-byte Reload
	subl	%ebx, %eax
	movl	-132(%ebp), %esi        ## 4-byte Reload
	movl	%eax, (%esi)
	imull	$-5, -108(%ebp), %eax   ## 4-byte Folded Reload
	leal	(%eax,%edi,2), %eax
	movl	-124(%ebp), %edx        ## 4-byte Reload
	leal	(%eax,%edx,4), %eax
	movl	-156(%ebp), %edi        ## 4-byte Reload
	subl	%edi, %eax
	movl	%eax, 4(%esi)
	imull	$-5, -116(%ebp), %eax   ## 4-byte Folded Reload
	leal	(%eax,%ecx,2), %eax
	movl	-120(%ebp), %ecx        ## 4-byte Reload
	leal	(%eax,%ecx,4), %eax
	movl	-168(%ebp), %edx        ## 4-byte Reload
	subl	%edx, %eax
	movl	%eax, 8(%esi)
	imull	$-5, -104(%ebp), %eax   ## 4-byte Folded Reload
	movl	-100(%ebp), %ecx        ## 4-byte Reload
	leal	(%eax,%ecx,2), %eax
	movl	-112(%ebp), %ecx        ## 4-byte Reload
	leal	(%eax,%ecx,4), %eax
	movl	-164(%ebp), %ecx        ## 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, 12(%esi)
	movl	-128(%ebp), %eax        ## 4-byte Reload
	subl	-148(%ebp), %eax        ## 4-byte Folded Reload
	subl	-144(%ebp), %ebx        ## 4-byte Folded Reload
	leal	(%eax,%eax,2), %eax
	addl	%eax, %ebx
	movl	-136(%ebp), %esi        ## 4-byte Reload
	movl	%ebx, (%esi)
	movl	-108(%ebp), %eax        ## 4-byte Reload
	subl	-124(%ebp), %eax        ## 4-byte Folded Reload
	subl	-140(%ebp), %edi        ## 4-byte Folded Reload
	leal	(%eax,%eax,2), %eax
	addl	%eax, %edi
	movl	%edi, 4(%esi)
	movl	-116(%ebp), %eax        ## 4-byte Reload
	subl	-120(%ebp), %eax        ## 4-byte Folded Reload
	subl	-152(%ebp), %edx        ## 4-byte Folded Reload
	leal	(%eax,%eax,2), %eax
	addl	%eax, %edx
	movl	%edx, 8(%esi)
	movl	-104(%ebp), %eax        ## 4-byte Reload
	subl	-112(%ebp), %eax        ## 4-byte Folded Reload
	subl	-100(%ebp), %ecx        ## 4-byte Folded Reload
	leal	(%eax,%eax,2), %eax
	addl	%eax, %ecx
	movl	%ecx, 12(%esi)
	movl	-24(%ebp), %edi         ## 4-byte Reload
	movl	$1072693248, 4(%edi)    ## imm = 0x3FF00000
	movl	$0, (%edi)
	movl	-32(%ebp), %edx         ## 4-byte Reload
	movl	-16(%ebp), %ebx         ## 4-byte Reload
	jmp	LBB0_19
LBB0_22:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$2, %ebx
	cmpl	$55, %eax
	movl	-32(%ebp), %edx         ## 4-byte Reload
	jl	LBB0_2
## BB#23:                               ##   in Loop: Header=BB0_2 Depth=1
	leal	2(%ecx), %eax
	movl	%esi, %edi
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	%eax, (%esi)
	movl	%edi, %esi
	movsbl	1(%ecx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%eax, %ecx
	andl	$1073741760, %ecx       ## imm = 0x3FFFFFC0
	subl	%ecx, %eax
	shll	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	_b-L0$pb(%esi), %xmm0
	movsd	%xmm0, _b-L0$pb(%esi)
	movl	$3, %ebx
	jmp	LBB0_2
LBB0_27:                                ## %select.unfold._crit_edge
	xorl	%eax, %eax
	addl	$220, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.section	__DATA,__data
	.globl	_b                      ## @b
	.align	3
_b:
	.long	0                       ## double 32
	.long	1077936128

	.globl	_z                      ## @z
_z:
	.asciz	"4_"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"4,8O4.8O4GHt@H|@=HdJHtJHdYHtY:HtFHtF=JDBIlDJTEJDFIlMIlM:HdMHdM=I|KIlMJTOJDOIlWITY:8YEDGEDH=EtCElDH{~H|AJk}Jk?LSzL[|M[wMcxNksNst:4MHs?H|@=HdFHtEI\\HI\\FJLHJTD:8HIT@I\\@=HdHHtGH|KILJJDIJDH:H|KIDK=HdQHtPH|TIDRJDRJDQ:JC?JK?=JDRJLRI|UItU:8T4RHs?H|@=HdFHtEI\\HI\\FJLHJTD:8HIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4S8CHdDH|E=HtAIDAIt@IlAJTCJDCIlKI\\K:8KEDGEDH=EtCElDH{~H|AJk}Jk?LSzL[|M[wMcxNksNst:4TDdWDdW=D\\UD\\VF\\FFdHGtCGtEIDBIDDIlBIdDJT@JLC:8DIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4UGDNG\\L=GDJGLKHLFHLGHtEHtE:G\\QG\\P=GLPGTPGdMGdNGtOGlOGdSGdRGDPGLPG\\LG\\LHtGHtH:4ZFDTFLT=G|EGlHITBH|DIlDIdE:HtMH|M=JDBJLDKLAKDALDFKtFKdMK\\LJTOJ\\NJTMJTM:8M4aGtFGlG=G|HG|H:G\\IG\\J=G|IG|I:GdKGlL=G|JG|J:4bHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIT@I\\@=HdHHtGH|KILJJDIJDH:H|KIDK=HdQHtPH|TIDRJDRJDQ:JC?JK?=JDRJLRI|UItU:8T4dHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8JIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4gHt@H|@=HdJHtJHdYHtY:HtFHtF=JDBIlDJTEJDFIlMIlM:HdMHdM=I|KIlMJTOJDOIlWITY:8YHk~HdA=Jk|Jk~LSyL[{M[wMcxNksNss:4iGlIGlK=G|JG|J:4kHl@Ht@=HdDHtCHdPH|P:HdDHdD=ItBIlDJTEJDFIdNI\\N:8NHk~HdA=Jk|Jk~LSyL[{M[wMcxNksNss:4lID@IL@=HlIH|FHlPH|NHt^H|^:H|MH|N=J\\DJ\\GK\\OKTOKDXJtXItZI|YIlWI|V:8^4mHLGH\\G=HLVH\\V:4nHs?H|@=HdFHtEI\\HI\\FJLHJTD:8HIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8JIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4pHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIT@I\\@=HdHHtGIDKILIJLGJLG:JK?JK?=JDGJLGI|MJDL:8M4rHt@H|@=HtDH|BJdLJTH:ITEI\\E=ILPILNNtCNlB:8N4tHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4uG\\QG\\P=GLPGTPGdMGdNGtOGlOGdSGdRGDPGLPG\\LG\\LHtGHtH:4zI[?Il@=HlHH|HIDLILIJDII|HKDAJ|A:JtCJtC=JdLJtJLTHLdFNk|Nc|:8K"

	.section	__DATA,__data
	.globl	_Z                      ## @Z
	.align	2
_Z:
	.long	L_.str

	.comm	_x,4,2                  ## @x
	.comm	_i,4,2                  ## @i
	.comm	__,8,3                  ## @_
	.comm	_Q,4,2                  ## @Q
	.comm	_X,4,2                  ## @X
	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"P2 %d 320 4 "

	.comm	_V,4,2                  ## @V
	.comm	_s,4,2                  ## @s
	.comm	_B,8,3                  ## @B
	.comm	_k,8,3                  ## @k
	.comm	_o,8,3                  ## @o
	.comm	_l,8,3                  ## @l
	.comm	_R,32,2                 ## @R
	.comm	_T,32,2                 ## @T
	.comm	_O,32,2                 ## @O
	.comm	_L,32,2                 ## @L
L_.str.2:                               ## @.str.2
	.asciz	"%d "


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_B$non_lazy_ptr:
	.indirect_symbol	_B
	.long	0
L_L$non_lazy_ptr:
	.indirect_symbol	_L
	.long	0
L_O$non_lazy_ptr:
	.indirect_symbol	_O
	.long	0
L_Q$non_lazy_ptr:
	.indirect_symbol	_Q
	.long	0
L_R$non_lazy_ptr:
	.indirect_symbol	_R
	.long	0
L_T$non_lazy_ptr:
	.indirect_symbol	_T
	.long	0
L_V$non_lazy_ptr:
	.indirect_symbol	_V
	.long	0
L_X$non_lazy_ptr:
	.indirect_symbol	_X
	.long	0
L__$non_lazy_ptr:
	.indirect_symbol	__
	.long	0
L_i$non_lazy_ptr:
	.indirect_symbol	_i
	.long	0
L_k$non_lazy_ptr:
	.indirect_symbol	_k
	.long	0
L_l$non_lazy_ptr:
	.indirect_symbol	_l
	.long	0
L_o$non_lazy_ptr:
	.indirect_symbol	_o
	.long	0
L_s$non_lazy_ptr:
	.indirect_symbol	_s
	.long	0
L_x$non_lazy_ptr:
	.indirect_symbol	_x
	.long	0

.subsections_via_symbols
