	.section       __TEXT,__literal16,16byte_literals
	.align 4
LCPI0_0:
	.long	-5
	.long	-5
	.long	-5
	.long	-5
LCPI0_1:
	.long	3
	.long	3
	.long	3
	.long	3
# ----------------------
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LCPI0_2:
	.long	0
	.long	-1084227584
LCPI0_3:
	.long	0
	.long	1068498944
LCPI0_4:
	.long	0
	.long	1071644672
LCPI0_5:
	.long	0
	.long	1077936128
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $220, %esp
	call      L0$pb
L0$pb:
	popl      %esi
	movl      %esi, -20(%ebp)
	movl      8(%ebp), %ebx
	movl      12(%ebp), %eax
	movl      4(%eax), %eax
	movl      L_x$non_lazy_ptr-L0$pb(%esi), %ecx
	movl      %ecx, -40(%ebp)
	movl      %eax, (%ecx)
	movl      %eax, (%esp)
	call      _strlen
	addl      $2, %eax
	movl      %eax, (%esp)
	movl      $163840, 4(%esp)
	call      _calloc
	movl      L_i$non_lazy_ptr-L0$pb(%esi), %ecx
	movl      %ecx, -44(%ebp)
	movl      %eax, (%ecx)
	cmpl      $1, %ebx
	je        LBB0_27
	movl      L__$non_lazy_ptr-L0$pb(%esi), %eax
	movl      %eax, -24(%ebp)
	movl      L_Q$non_lazy_ptr-L0$pb(%esi), %edx
	movl      %edx, -32(%ebp)
	movsd     LCPI0_4-L0$pb(%esi), %xmm0
	movsd     %xmm0, -64(%ebp)
	movsd     LCPI0_5-L0$pb(%esi), %xmm0
	movsd     %xmm0, -72(%ebp)
	movl      L_V$non_lazy_ptr-L0$pb(%esi), %eax
	movl      %eax, -48(%ebp)
	leal      L_.str.1-L0$pb(%esi), %eax
	movl      %eax, -76(%ebp)
	movl      L_s$non_lazy_ptr-L0$pb(%esi), %eax
	movl      %eax, -36(%ebp)
	leal      _z-L0$pb(%esi), %eax
	movl      %eax, -52(%ebp)
	movsd     LCPI0_2-L0$pb(%esi), %xmm0
	movsd     %xmm0, -88(%ebp)
	movsd     LCPI0_3-L0$pb(%esi), %xmm0
	movsd     %xmm0, -96(%ebp)
	movaps    LCPI0_0-L0$pb(%esi), %xmm0
	movaps    %xmm0, -200(%ebp)
	movdqa    LCPI0_1-L0$pb(%esi), %xmm0
	movdqa    %xmm0, -216(%ebp)
	movl      L_X$non_lazy_ptr-L0$pb(%esi), %eax
	movl      %eax, -28(%ebp)
	leal      L_.str.2-L0$pb(%esi), %eax
	movl      %eax, -56(%ebp)
	jmp       LBB0_2
LBB0_8:
	movsd     _b-L0$pb(%esi), %xmm0
	mulsd     -64(%ebp), %xmm0
	addsd     -72(%ebp), %xmm0
	cvttsd2si %xmm0, %eax
	movl      %esi, %ebx
	movl      -48(%ebp), %esi
	movl      %eax, (%esi)
	movl      %eax, 4(%esp)
	movl      -76(%ebp), %eax
	movl      %eax, (%esp)
	call      _printf
	shll      $1, (%esi)
	movl      %ebx, %esi
	movl      $0, (%edi)
	movl      -36(%ebp), %eax
	movl      $0, (%eax)
	movl      $4, %ebx
	movl      %edi, %edx
	.align 4, 0x90
LBB0_2:
	cmpl      $2, %ebx
	jg        LBB0_9
	movl      %ebx, -16(%ebp)
	movl      -24(%ebp), %eax
	movl      $0, 4(%eax)
	movl      $0, (%eax)
	movl      $0, (%edx)
	movl      %edx, %edi
	movl      -40(%ebp), %ebx
	movl      (%ebx), %edx
	leal      1(%edx), %eax
	movl      %eax, (%ebx)
	movb      (%edx), %cl
	movb      %cl, _z-L0$pb+1(%esi)
	testb     %cl, %cl
	je        LBB0_8
	movl      %esi, %edi
	movl      %ebx, %esi
	leal      2(%edx), %ebx
	movl      %ebx, (%esi)
	movzbl    1(%edx), %edx
	cmpl      $104, %edx
	jne       LBB0_6
	xorb      $32, %cl
	movb      %cl, _z-L0$pb+1(%edi)
	jmp       LBB0_7
	.align 4, 0x90
LBB0_9:
	cmpl      $3, %ebx
	jg        LBB0_24
	movl      (%edx), %eax
	leal      -1(%eax), %ecx
	movl      %ecx, (%edx)
	testl     %eax, %eax
	jle       LBB0_12
	movl      -20(%ebp), %esi
	movl      L_B$non_lazy_ptr-L0$pb(%esi), %eax
	movsd     (%eax), %xmm0
	movl      L_k$non_lazy_ptr-L0$pb(%esi), %eax
	addsd     (%eax), %xmm0
	movsd     %xmm0, (%eax)
	cvttsd2si %xmm0, %eax
	movl      L_o$non_lazy_ptr-L0$pb(%esi), %ecx
	movsd     (%ecx), %xmm0
	movl      L_l$non_lazy_ptr-L0$pb(%esi), %ecx
	addsd     (%ecx), %xmm0
	movsd     %xmm0, (%ecx)
	addsd     _b-L0$pb(%esi), %xmm0
	cvttsd2si %xmm0, %ecx
	leal      (%ecx,%ecx,4), %ecx
	shll      $7, %ecx
	movl      %edx, %edi
	movl      -44(%ebp), %edx
	addl      (%edx), %ecx
	movl      %edi, %edx
	movb      $1, (%eax,%ecx)
	movl      $3, %ebx
	jmp       LBB0_2
	.align 4, 0x90
LBB0_24:
	movl      -36(%ebp), %eax
	movl      (%eax), %eax
	movl      (%edx), %ecx
	leal      (%ecx,%ecx,4), %ecx
	shll      $7, %ecx
	movl      -44(%ebp), %edx
	addl      (%edx), %ecx
	movsbl    (%eax,%ecx), %edx
	movl      %ebx, %edi
	movsbl    1(%eax,%ecx), %ebx
	addl      %edx, %ebx
	movsbl    640(%eax,%ecx), %edx
	addl      %ebx, %edx
	movl      %edi, %ebx
	movsbl    641(%eax,%ecx), %eax
	addl      %edx, %eax
	movl      -56(%ebp), %ecx
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      _printf
	movl      -32(%ebp), %edx
	testl     %eax, %eax
	movl      -20(%ebp), %esi
	je        LBB0_26
	movl      (%edx), %eax
	addl      $2, %eax
	movl      %eax, (%edx)
	movl      -48(%ebp), %ecx
	cmpl      (%ecx), %eax
	jl        LBB0_2
LBB0_26:
	movl      $0, (%edx)
	movl      -36(%ebp), %ecx
	movl      (%ecx), %eax
	addl      $2, %eax
	movl      %eax, (%ecx)
	cmpl      $640, %eax
	jl        LBB0_2
	jmp       LBB0_27
LBB0_6:
	movl      %eax, (%esi)
LBB0_7:
	movl      -28(%ebp), %esi
	movl      -16(%ebp), %ebx
	movl      %esi, -28(%ebp)
	movl      _Z-L0$pb(%edi), %eax
	movl      -52(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _strstr
	leal      (%eax,%ebx), %ecx
	testl     %eax, %eax
	cmove     %eax, %ecx
	setne     %al
	movzbl    %al, %eax
	addl      %eax, %ebx
	movl      %ecx, (%esi)
	movl      -32(%ebp), %edx
LBB0_19:
	cmpl      $1, %ebx
	movl      -20(%ebp), %esi
	jne       LBB0_2
	jmp       LBB0_27
LBB0_12:
	movl      %ebx, -16(%ebp)
	movl      -24(%ebp), %eax
	movsd     (%eax), %xmm0
	pxor      %xmm1, %xmm1
	ucomisd   %xmm1, %xmm0
	jne       LBB0_13
	jnp       LBB0_14
LBB0_13:
	addsd     -88(%ebp), %xmm0
	movl      -20(%ebp), %esi
	movl      L_R$non_lazy_ptr-L0$pb(%esi), %ecx
	xorps     %xmm1, %xmm1
	cvtsi2sd  8(%ecx), %xmm1
	mulsd     %xmm0, %xmm1
	movl      L_T$non_lazy_ptr-L0$pb(%esi), %edx
	cvtsi2sd  8(%edx), %xmm2
	addsd     %xmm1, %xmm2
	mulsd     %xmm0, %xmm2
	movl      L_O$non_lazy_ptr-L0$pb(%esi), %edi
	xorps     %xmm1, %xmm1
	cvtsi2sd  8(%edi), %xmm1
	addsd     %xmm2, %xmm1
	mulsd     %xmm0, %xmm1
	movl      L_L$non_lazy_ptr-L0$pb(%esi), %eax
	xorps     %xmm2, %xmm2
	cvtsi2sd  8(%eax), %xmm2
	addsd     %xmm1, %xmm2
	addsd     %xmm2, %xmm2
	xorps     %xmm1, %xmm1
	cvtsi2sd  (%ecx), %xmm1
	mulsd     %xmm0, %xmm1
	cvtsi2sd  (%edx), %xmm3
	addsd     %xmm1, %xmm3
	mulsd     %xmm0, %xmm3
	xorps     %xmm1, %xmm1
	cvtsi2sd  (%edi), %xmm1
	addsd     %xmm3, %xmm1
	mulsd     %xmm0, %xmm1
	xorps     %xmm3, %xmm3
	cvtsi2sd  (%eax), %xmm3
	addsd     %xmm1, %xmm3
	addsd     %xmm3, %xmm3
	movl      L_l$non_lazy_ptr-L0$pb(%esi), %ebx
	movsd     %xmm3, (%ebx)
	subsd     %xmm3, %xmm2
	movsd     -96(%ebp), %xmm7
	mulsd     %xmm7, %xmm2
	movl      L_o$non_lazy_ptr-L0$pb(%esi), %ebx
	movsd     %xmm2, (%ebx)
	xorps     %xmm1, %xmm1
	cvtsi2sd  12(%ecx), %xmm1
	xorps     %xmm2, %xmm2
	cvtsi2sd  4(%ecx), %xmm2
	xorps     %xmm3, %xmm3
	cvtsi2sd  12(%edx), %xmm3
	cvtsi2sd  4(%edx), %xmm4
	cvtsi2sd  12(%edi), %xmm5
	cvtsi2sd  4(%edi), %xmm6
	mulsd     %xmm0, %xmm1
	addsd     %xmm1, %xmm3
	mulsd     %xmm0, %xmm3
	addsd     %xmm3, %xmm5
	mulsd     %xmm0, %xmm5
	xorps     %xmm1, %xmm1
	cvtsi2sd  12(%eax), %xmm1
	addsd     %xmm5, %xmm1
	mulsd     %xmm0, %xmm2
	addsd     %xmm2, %xmm4
	movl      -24(%ebp), %ecx
	movsd     %xmm0, (%ecx)
	movl      -32(%ebp), %edx
	movl      $16, (%edx)
	addsd     %xmm1, %xmm1
	mulsd     %xmm0, %xmm4
	addsd     %xmm4, %xmm6
	mulsd     %xmm0, %xmm6
	cvtsi2sd  4(%eax), %xmm0
	addsd     %xmm6, %xmm0
	addsd     %xmm0, %xmm0
	movl      L_k$non_lazy_ptr-L0$pb(%esi), %eax
	movsd     %xmm0, (%eax)
	subsd     %xmm0, %xmm1
	mulsd     %xmm7, %xmm1
	movl      L_B$non_lazy_ptr-L0$pb(%esi), %eax
	movsd     %xmm1, (%eax)
	movl      $3, %ebx
	jmp       LBB0_2
LBB0_14:
	movl      -28(%ebp), %edi
	movl      (%edi), %ecx
	movsbl    (%ecx), %eax
	cmpl      $61, %eax
	movl      -20(%ebp), %edx
	jl        LBB0_20
	movl      L_T$non_lazy_ptr-L0$pb(%edx), %eax
	movl      %eax, -132(%ebp)
	movdqu    16(%eax), %xmm2
	movl      L_O$non_lazy_ptr-L0$pb(%edx), %ebx
	movl      %ebx, -176(%ebp)
	movdqu    16(%ebx), %xmm1
	movl      L_R$non_lazy_ptr-L0$pb(%edx), %esi
	movl      %esi, -136(%ebp)
	movdqu    %xmm2, 16(%esi)
	movdqu    %xmm1, 16(%eax)
	movl      L_L$non_lazy_ptr-L0$pb(%edx), %esi
	movl      %esi, -172(%ebp)
	movdqu    16(%esi), %xmm0
	movdqu    %xmm0, 16(%ebx)
	leal      1(%ecx), %edx
	movl      %edx, (%edi)
	movsbl    (%ecx), %edx
	movl      %edx, %ebx
	sarl      $31, %ebx
	shrl      $26, %ebx
	addl      %edx, %ebx
	andl      $536870848, %ebx
	subl      %ebx, %edx
	leal      0(,%edx,8), %ebx
	movl      %ebx, 20(%esi)
	movsbl    1(%ecx), %eax
	movl      %eax, %ebx
	sarl      $31, %ebx
	shrl      $29, %ebx
	addl      %eax, %ebx
	shrl      $3, %ebx
	andl      $7, %ebx
	leal      (%ebx,%edx,8), %eax
	movl      %eax, -156(%ebp)
	movl      %eax, 20(%esi)
	leal      2(%ecx), %eax
	movl      %eax, (%edi)
	movsbl    1(%ecx), %eax
	movl      %eax, %edx
	sarl      $31, %edx
	shrl      $29, %edx
	addl      %eax, %edx
	andl      $-8, %edx
	subl      %edx, %eax
	leal      3(%ecx), %edx
	movl      %edx, (%edi)
	movl      %eax, 16(%esi)
	movsbl    2(%ecx), %edx
	movl      %edx, %ebx
	sarl      $31, %ebx
	shrl      $26, %ebx
	addl      %edx, %ebx
	andl      $-64, %ebx
	subl      %ebx, %edx
	shll      $6, %eax
	leal      -256(%eax,%edx), %edx
	movl      %edx, -160(%ebp)
	leal      4(%ecx), %eax
	movl      %eax, (%edi)
	movl      %edx, 16(%esi)
	movsbl    3(%ecx), %eax
	movl      %eax, %edx
	sarl      $31, %edx
	shrl      $26, %edx
	addl      %eax, %edx
	andl      $536870848, %edx
	subl      %edx, %eax
	leal      0(,%eax,8), %edx
	movl      %edx, 28(%esi)
	movsbl    4(%ecx), %edx
	movl      %edx, %ebx
	sarl      $31, %ebx
	shrl      $29, %ebx
	addl      %edx, %ebx
	shrl      $3, %ebx
	andl      $7, %ebx
	leal      (%ebx,%eax,8), %edx
	movl      %edx, -164(%ebp)
	leal      5(%ecx), %eax
	movl      %eax, (%edi)
	movl      %edx, 28(%esi)
	movsbl    4(%ecx), %eax
	movl      %eax, %edx
	sarl      $31, %edx
	shrl      $29, %edx
	addl      %eax, %edx
	andl      $-8, %edx
	subl      %edx, %eax
	leal      6(%ecx), %edx
	movl      %edx, (%edi)
	movl      %eax, 24(%esi)
	movsbl    5(%ecx), %edx
	movl      %edx, %ebx
	sarl      $31, %ebx
	shrl      $26, %ebx
	addl      %edx, %ebx
	andl      $-64, %ebx
	subl      %ebx, %edx
	shll      $6, %eax
	leal      -256(%eax,%edx), %eax
	movl      %eax, -168(%ebp)
	movl      %eax, 24(%esi)
	movzbl    6(%ecx), %eax
	cmpl      $61, %eax
	jne       LBB0_16
	addl      $7, %ecx
	movl      %ecx, (%edi)
	movl      -160(%ebp), %esi
	movl      -168(%ebp), %edx
	movl      -136(%ebp), %ecx
	movl      %esi, 16(%ecx)
	movl      -132(%ebp), %edi
	movl      %esi, 16(%edi)
	movl      -176(%ebp), %ebx
	movl      %esi, 16(%ebx)
	movl      -156(%ebp), %eax
	movl      %eax, 20(%ecx)
	movl      %eax, 20(%edi)
	movl      %eax, 20(%ebx)
	movl      %edx, 24(%ecx)
	movl      %edx, 24(%edi)
	movl      %edx, 24(%ebx)
	movl      -164(%ebp), %ecx
	movl      -136(%ebp), %edi
	movl      %ecx, 28(%edi)
	movl      -132(%ebp), %edi
	movl      %ecx, 28(%edi)
	movl      %ecx, 28(%ebx)
	movl      %ecx, -100(%ebp)
	movl      %ecx, -112(%ebp)
	movl      %ecx, -104(%ebp)
	movl      %edx, -152(%ebp)
	movl      %edx, -120(%ebp)
	movl      %edx, -116(%ebp)
	movl      %eax, -140(%ebp)
	movl      %eax, -124(%ebp)
	movl      %eax, -108(%ebp)
	movl      %esi, -144(%ebp)
	movl      %esi, -148(%ebp)
	movl      %esi, %eax
	movl      %ebx, %edx
	jmp       LBB0_18
LBB0_20:
	movl      %edx, %esi
	movsbl    %al, %eax
	cmpl      $58, %eax
	jl        LBB0_22
	incl      %ecx
	movl      %ecx, (%edi)
	movl      L_O$non_lazy_ptr-L0$pb(%esi), %eax
	movdqu    16(%eax), %xmm0
	movl      L_L$non_lazy_ptr-L0$pb(%esi), %ecx
	movdqu    16(%ecx), %xmm1
	movdqa    %xmm0, %xmm2
	paddd     %xmm2, %xmm2
	movdqu    %xmm2, (%ecx)
	movl      L_T$non_lazy_ptr-L0$pb(%esi), %ecx
	movdqu    16(%ecx), %xmm2
	movdqu    %xmm1, 16(%eax)
	movdqa    %xmm1, %xmm3
	psubd     %xmm2, %xmm3
	movdqu    %xmm3, (%eax)
	movl      L_R$non_lazy_ptr-L0$pb(%esi), %eax
	movdqu    %xmm2, 16(%eax)
	movdqu    %xmm0, 16(%ecx)
	paddd     %xmm2, %xmm2
	movdqa    %xmm0, %xmm4
	movdqa    -200(%ebp), %xmm6
	pmuludq   %xmm6, %xmm4
	pshufd    $232, %xmm4, %xmm4
	pshufd    $245, %xmm0, %xmm5
	pmuludq   %xmm6, %xmm5
	pshufd    $232, %xmm5, %xmm5
	punpckldq %xmm5, %xmm4
	paddd     %xmm2, %xmm4
	movdqa    %xmm1, %xmm2
	pslld     $2, %xmm2
	paddd     %xmm4, %xmm2
	psubd     %xmm1, %xmm2
	movdqu    %xmm2, (%ecx)
	psubd     %xmm1, %xmm0
	pshufd    $245, %xmm0, %xmm1
	movdqa    -216(%ebp), %xmm2
	pmuludq   %xmm2, %xmm0
	pshufd    $232, %xmm0, %xmm0
	pmuludq   %xmm2, %xmm1
	pshufd    $232, %xmm1, %xmm1
	punpckldq %xmm1, %xmm0
	paddd     %xmm3, %xmm0
	movdqu    %xmm0, (%eax)
	movl      -24(%ebp), %eax
	movl      $1072693248, 4(%eax)
	movl      $0, (%eax)
	movl      $3, %ebx
	movl      -32(%ebp), %edx
	jmp       LBB0_2
LBB0_16:
	movd      %xmm2, -144(%ebp)
	pshufd    $229, %xmm2, %xmm3
	movd      %xmm3, -140(%ebp)
	pshufd    $78, %xmm2, %xmm3
	movd      %xmm3, -152(%ebp)
	pshufd    $231, %xmm2, %xmm2
	movd      %xmm2, -100(%ebp)
	movd      %xmm1, %eax
	pshufd    $229, %xmm1, %xmm2
	movd      %xmm2, -108(%ebp)
	pshufd    $78, %xmm1, %xmm2
	pshufd    $231, %xmm1, %xmm1
	pshufd    $229, %xmm0, %xmm3
	pshufd    $78, %xmm0, %xmm4
	pshufd    $231, %xmm0, %xmm5
	movd      %xmm2, -116(%ebp)
	movd      %xmm1, -104(%ebp)
	movd      %xmm0, -148(%ebp)
	movd      %xmm3, -124(%ebp)
	movd      %xmm4, -120(%ebp)
	movd      %xmm5, -112(%ebp)
	movl      -176(%ebp), %edx
LBB0_18:
	movl      %eax, -128(%ebp)
	leal      (%eax,%eax), %eax
	movl      -172(%ebp), %edi
	movl      %eax, (%edi)
	movl      -108(%ebp), %eax
	leal      (%eax,%eax), %eax
	movl      %eax, 4(%edi)
	movl      -116(%ebp), %eax
	leal      (%eax,%eax), %eax
	movl      %eax, 8(%edi)
	movl      -104(%ebp), %eax
	leal      (%eax,%eax), %eax
	movl      %eax, 12(%edi)
	movl      -148(%ebp), %esi
	movl      %esi, %eax
	movl      -144(%ebp), %ebx
	subl      %ebx, %eax
	movl      %eax, (%edx)
	movl      -124(%ebp), %eax
	movl      -140(%ebp), %ecx
	subl      %ecx, %eax
	movl      %ecx, %edi
	movl      %eax, 4(%edx)
	movl      -120(%ebp), %eax
	movl      -152(%ebp), %ecx
	subl      %ecx, %eax
	movl      %eax, 8(%edx)
	movl      -112(%ebp), %eax
	subl      -100(%ebp), %eax
	movl      %eax, 12(%edx)
	imull     $-5, -128(%ebp), %eax
	leal      (%eax,%ebx,2), %eax
	leal      (%eax,%esi,4), %eax
	movl      -160(%ebp), %ebx
	subl      %ebx, %eax
	movl      -132(%ebp), %esi
	movl      %eax, (%esi)
	imull     $-5, -108(%ebp), %eax
	leal      (%eax,%edi,2), %eax
	movl      -124(%ebp), %edx
	leal      (%eax,%edx,4), %eax
	movl      -156(%ebp), %edi
	subl      %edi, %eax
	movl      %eax, 4(%esi)
	imull     $-5, -116(%ebp), %eax
	leal      (%eax,%ecx,2), %eax
	movl      -120(%ebp), %ecx
	leal      (%eax,%ecx,4), %eax
	movl      -168(%ebp), %edx
	subl      %edx, %eax
	movl      %eax, 8(%esi)
	imull     $-5, -104(%ebp), %eax
	movl      -100(%ebp), %ecx
	leal      (%eax,%ecx,2), %eax
	movl      -112(%ebp), %ecx
	leal      (%eax,%ecx,4), %eax
	movl      -164(%ebp), %ecx
	subl      %ecx, %eax
	movl      %eax, 12(%esi)
	movl      -128(%ebp), %eax
	subl      -148(%ebp), %eax
	subl      -144(%ebp), %ebx
	leal      (%eax,%eax,2), %eax
	addl      %eax, %ebx
	movl      -136(%ebp), %esi
	movl      %ebx, (%esi)
	movl      -108(%ebp), %eax
	subl      -124(%ebp), %eax
	subl      -140(%ebp), %edi
	leal      (%eax,%eax,2), %eax
	addl      %eax, %edi
	movl      %edi, 4(%esi)
	movl      -116(%ebp), %eax
	subl      -120(%ebp), %eax
	subl      -152(%ebp), %edx
	leal      (%eax,%eax,2), %eax
	addl      %eax, %edx
	movl      %edx, 8(%esi)
	movl      -104(%ebp), %eax
	subl      -112(%ebp), %eax
	subl      -100(%ebp), %ecx
	leal      (%eax,%eax,2), %eax
	addl      %eax, %ecx
	movl      %ecx, 12(%esi)
	movl      -24(%ebp), %edi
	movl      $1072693248, 4(%edi)
	movl      $0, (%edi)
	movl      -32(%ebp), %edx
	movl      -16(%ebp), %ebx
	jmp       LBB0_19
LBB0_22:
	movl      $2, %ebx
	cmpl      $55, %eax
	movl      -32(%ebp), %edx
	jl        LBB0_2
	leal      2(%ecx), %eax
	movl      %esi, %edi
	movl      -28(%ebp), %esi
	movl      %eax, (%esi)
	movl      %edi, %esi
	movsbl    1(%ecx), %eax
	movl      %eax, %ecx
	sarl      $31, %ecx
	shrl      $26, %ecx
	addl      %eax, %ecx
	andl      $1073741760, %ecx
	subl      %ecx, %eax
	shll      $2, %eax
	cvtsi2sd  %eax, %xmm0
	addsd     _b-L0$pb(%esi), %xmm0
	movsd     %xmm0, _b-L0$pb(%esi)
	movl      $3, %ebx
	jmp       LBB0_2
LBB0_27:
	xorl      %eax, %eax
	addl      $220, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __DATA,__data
	.align 3
	.globl	_b
_b:
	.long	0
	.long	1077936128
# ----------------------
	.globl	_z
_z:
	.asciz	"4_"
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"4,8O4.8O4GHt@H|@=HdJHtJHdYHtY:HtFHtF=JDBIlDJTEJDFIlMIlM:HdMHdM=I|KIlMJTOJDOIlWITY:8YEDGEDH=EtCElDH{~H|AJk}Jk?LSzL[|M[wMcxNksNst:4MHs?H|@=HdFHtEI\\HI\\FJLHJTD:8HIT@I\\@=HdHHtGH|KILJJDIJDH:H|KIDK=HdQHtPH|TIDRJDRJDQ:JC?JK?=JDRJLRI|UItU:8T4RHs?H|@=HdFHtEI\\HI\\FJLHJTD:8HIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4S8CHdDH|E=HtAIDAIt@IlAJTCJDCIlKI\\K:8KEDGEDH=EtCElDH{~H|AJk}Jk?LSzL[|M[wMcxNksNst:4TDdWDdW=D\\UD\\VF\\FFdHGtCGtEIDBIDDIlBIdDJT@JLC:8DIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4UGDNG\\L=GDJGLKHLFHLGHtEHtE:G\\QG\\P=GLPGTPGdMGdNGtOGlOGdSGdRGDPGLPG\\LG\\LHtGHtH:4ZFDTFLT=G|EGlHITBH|DIlDIdE:HtMH|M=JDBJLDKLAKDALDFKtFKdMK\\LJTOJ\\NJTMJTM:8M4aGtFGlG=G|HG|H:G\\IG\\J=G|IG|I:GdKGlL=G|JG|J:4bHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIT@I\\@=HdHHtGH|KILJJDIJDH:H|KIDK=HdQHtPH|TIDRJDRJDQ:JC?JK?=JDRJLRI|UItU:8T4dHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8JIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4gHt@H|@=HdJHtJHdYHtY:HtFHtF=JDBIlDJTEJDFIlMIlM:HdMHdM=I|KIlMJTOJDOIlWITY:8YHk~HdA=Jk|Jk~LSyL[{M[wMcxNksNss:4iGlIGlK=G|JG|J:4kHl@Ht@=HdDHtCHdPH|P:HdDHdD=ItBIlDJTEJDFIdNI\\N:8NHk~HdA=Jk|Jk~LSyL[{M[wMcxNksNss:4lID@IL@=HlIH|FHlPH|NHt^H|^:H|MH|N=J\\DJ\\GK\\OKTOKDXJtXItZI|YIlWI|V:8^4mHLGH\\G=HLVH\\V:4nHs?H|@=HdFHtEI\\HI\\FJLHJTD:8HIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8JIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4pHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIT@I\\@=HdHHtGIDKILIJLGJLG:JK?JK?=JDGJLGI|MJDL:8M4rHt@H|@=HtDH|BJdLJTH:ITEI\\E=ILPILNNtCNlB:8N4tHs?H{?=HdGH|FI\\II\\GJlHJlFL\\DLTCMlAM\\@Ns}Nk|:8GIS?I\\@=HdGHtGIDJILIJDIItHJTFJDF:8J4uG\\QG\\P=GLPGTPGdMGdNGtOGlOGdSGdRGDPGLPG\\LG\\LHtGHtH:4zI[?Il@=HlHH|HIDLILIJDII|HKDAJ|A:JtCJtC=JdLJtJLTHLdFNk|Nc|:8K"
L_.str.1:
	.asciz	"P2 %d 320 4 "
L_.str.2:
	.asciz	"%d "
# ----------------------
	.section       __DATA,__data
	.align 2
	.globl	_Z
_Z:
	.long	L_.str
# ----------------------
	.comm	_x,4,2
# ----------------------
	.comm	_i,4,2
# ----------------------
	.comm	__,8,3
# ----------------------
	.comm	_Q,4,2
# ----------------------
	.comm	_X,4,2
# ----------------------
	.comm	_V,4,2
# ----------------------
	.comm	_s,4,2
# ----------------------
	.comm	_B,8,3
# ----------------------
	.comm	_k,8,3
# ----------------------
	.comm	_o,8,3
# ----------------------
	.comm	_l,8,3
# ----------------------
	.comm	_R,32,2
# ----------------------
	.comm	_T,32,2
# ----------------------
	.comm	_O,32,2
# ----------------------
	.comm	_L,32,2
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L_B$non_lazy_ptr:
	.indirect_symbol _B
	.long	0
# ----------------------
L_L$non_lazy_ptr:
	.indirect_symbol _L
	.long	0
# ----------------------
L_O$non_lazy_ptr:
	.indirect_symbol _O
	.long	0
# ----------------------
L_Q$non_lazy_ptr:
	.indirect_symbol _Q
	.long	0
# ----------------------
L_R$non_lazy_ptr:
	.indirect_symbol _R
	.long	0
# ----------------------
L_T$non_lazy_ptr:
	.indirect_symbol _T
	.long	0
# ----------------------
L_V$non_lazy_ptr:
	.indirect_symbol _V
	.long	0
# ----------------------
L_X$non_lazy_ptr:
	.indirect_symbol _X
	.long	0
# ----------------------
L__$non_lazy_ptr:
	.indirect_symbol __
	.long	0
# ----------------------
L_i$non_lazy_ptr:
	.indirect_symbol _i
	.long	0
# ----------------------
L_k$non_lazy_ptr:
	.indirect_symbol _k
	.long	0
# ----------------------
L_l$non_lazy_ptr:
	.indirect_symbol _l
	.long	0
# ----------------------
L_o$non_lazy_ptr:
	.indirect_symbol _o
	.long	0
# ----------------------
L_s$non_lazy_ptr:
	.indirect_symbol _s
	.long	0
# ----------------------
L_x$non_lazy_ptr:
	.indirect_symbol _x
	.long	0
# ----------------------

.subsections_via_symbols
