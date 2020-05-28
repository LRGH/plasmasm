	.macosx_version_min 10, 12
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LCPI0_0:
	.long	0
	.long	1075576832
LCPI0_1:
	.long	0
	.long	1067450368
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_polgalois
_polgalois:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $124, %esp
	call      L0$pb
L0$pb:
	popl      %edi
	movl      %edi, 56(%esp)
	movl      144(%esp), %esi
	movl      L_avma$non_lazy_ptr-L0$pb(%edi), %ebx
	movl      %ebx, 60(%esp)
	movl      (%ebx), %eax
	movl      %eax, 32(%esp)
	movl      (%esi), %ebp
	movl      %ebp, %eax
	andl      $-33554432, %eax
	cmpl      $335544320, %eax
	je        LBB0_2
	leal      L_.str-L0$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $22, (%esp)
	call      _pari_err
	movl      (%esi), %ebp
LBB0_2:
	andl      $16777215, %ebp
	movl      %ebp, 52(%esp)
	movl      %ebp, %eax
	addl      $-3, %eax
	jle       LBB0_3
	cmpl      $12, %eax
	movl      %eax, 28(%esp)
	jl        LBB0_7
	leal      L_.str1-L0$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $7, (%esp)
	jmp       LBB0_6
LBB0_3:
	movl      %eax, 28(%esp)
	leal      L_.str-L0$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $21, (%esp)
LBB0_6:
	call      _pari_err
LBB0_7:
	movl      %esi, (%esp)
	call      _Q_primpart
	movl      %eax, %esi
	movl      L_LOG2$non_lazy_ptr-L0$pb(%edi), %eax
	movsd     LCPI0_0-L0$pb(%edi), %xmm0
	divsd     (%eax), %xmm0
	mulsd     LCPI0_1-L0$pb(%edi), %xmm0
	movsd     %xmm0, 40(%esp)
	leal      L_.str3-L0$pb(%edi), %eax
	movl      %eax, 36(%esp)
	jmp       LBB0_8
	.align 4, 0x90
LBB0_57:
	movl      $0, (%ebx)
	movl      $0, (%esp)
	call      _tschirnhaus
	movl      %eax, %esi
LBB0_8:
	movl      %esi, 68(%esp)
	movl      %esi, (%esp)
	call      _cauchy_bound
	fstpl     112(%esp)
	leal      -7(%ebp), %eax
	cmpl      $3, %eax
	ja        LBB0_57
	movl      Ltmp0(%edi,%eax,4), %eax
	addl      %edi, %eax
	jmp       *%eax
LBB0_10:
	movl      %esi, 68(%esp)
	movl      (%ebx), %eax
	movl      L_bot$non_lazy_ptr-L0$pb(%edi), %ecx
	leal      -28(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB0_12
	movl      $14, (%esp)
	call      _pari_err
LBB0_12:
	movl      %esi, (%ebx)
	movl      $570425351, (%esi)
	cmpl      $-9, 120(%esp)
	jge       LBB0_13
	movl      $0, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	movl      68(%esp), %esi
	je        LBB0_57
	jmp       LBB0_15
LBB0_31:
	movsd     112(%esp), %xmm0
	movl      (%ebx), %ecx
	movl      %ecx, 84(%esp)
	leal      -144(%ecx), %ebp
	movl      L_bot$non_lazy_ptr-L0$pb(%edi), %eax
	subl      (%eax), %ecx
	cmpl      $143, %ecx
	ja        LBB0_33
	movl      $14, (%esp)
	movsd     %xmm0, 104(%esp)
	call      _pari_err
	movsd     104(%esp), %xmm0
LBB0_33:
	movl      %ebp, (%ebx)
	movl      $570425380, (%ebp)
	movl      %ebp, 64(%esp)
	mulsd     40(%esp), %xmm0
	cvttsd2si %xmm0, %eax
	addl      $4, %eax
	jmp       LBB0_34
	.align 4, 0x90
LBB0_43:
	movl      72(%esp), %eax
	leal      -2(%eax,%eax), %eax
	movl      68(%esp), %esi
LBB0_34:
	movl      %eax, 72(%esp)
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	xorl      %edi, %edi
	movl      $1, %ebx
	movl      $5, %esi
	call      _cleanroots
	movl      %eax, %ecx
	movl      %ecx, 88(%esp)
	.align 4, 0x90
LBB0_36:
	movl      %esi, 80(%esp)
	movl      %ebx, 92(%esp)
	leal      1(%ebx), %ebp
	movl      %ebp, 76(%esp)
	.align 4, 0x90
LBB0_38:
	movl      %edi, 96(%esp)
	incl      %esi
	movl      92(%esp), %edi
	.align 4, 0x90
LBB0_39:
	movl      (%ecx,%edi,4), %eax
	movl      %ecx, %ebx
	movl      (%ebx,%ebp,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
	movl      %ebx, %ecx
	movl      %eax, %ebx
	incl      %ebp
	decl      %esi
	cmpl      $7, %ebp
	jg        LBB0_39
	leal      (%ecx,%ebp,4), %eax
	movl      %eax, 104(%esp)
	movl      84(%esp), %eax
	movl      96(%esp), %ecx
	leal      (%eax,%ecx,4), %eax
	movl      %eax, 100(%esp)
	movl      $-35, %edi
	.align 4, 0x90
LBB0_41:
	movl      104(%esp), %eax
	movl      140(%eax,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      100(%esp), %ecx
	movl      %eax, (%ecx,%edi,4)
	leal      1(%ebp,%edi), %eax
	incl      %edi
	cmpl      $-27, %eax
	jne       LBB0_41
	movl      96(%esp), %edi
	addl      %esi, %edi
	decl      %esi
	cmpl      $7, %ebp
	movl      88(%esp), %ecx
	jne       LBB0_38
	movl      80(%esp), %esi
	decl      %esi
	movl      76(%esp), %ebx
	cmpl      $6, %ebx
	jne       LBB0_36
	leal      120(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _roots_to_ZX
	cmpl      $-9, 120(%esp)
	jge       LBB0_43
	movl      $0, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	movl      60(%esp), %ebx
	movl      56(%esp), %edi
	movl      52(%esp), %ebp
	movl      68(%esp), %esi
	je        LBB0_57
	movl      $0, (%esp)
	call      _ZX_factor
	movl      4(%eax), %eax
	movl      (%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-2, %ecx
	cmpl      $3, %ecx
	jbe       LBB0_46
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
	jmp       LBB0_57
	.align 4, 0x90
LBB0_13:
	jmp       LBB0_13
LBB0_46:
	addl      Ltmp1(%edi,%ecx,4), %edi
	jmp       *%edi
LBB0_47:
	movl      %esi, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      32(%esp), %ecx
	movl      %ecx, (%ebx)
	testl     %eax, %eax
	je        LBB0_49
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $6, 12(%esp)
	movl      $1, 8(%esp)
	movl      $2520, 4(%esp)
	jmp       LBB0_59
LBB0_27:
	movl      (%ebx), %eax
	movl      L_bot$non_lazy_ptr-L0$pb(%edi), %ecx
	leal      -28(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB0_29
	movl      $14, (%esp)
	call      _pari_err
LBB0_29:
	movl      %esi, (%ebx)
	movl      $570425351, (%esi)
	.align 4, 0x90
LBB0_30:
	jmp       LBB0_30
LBB0_15:
	movl      $0, (%esp)
	call      _ZX_factor
	movl      4(%eax), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $2, %ecx
	jne       LBB0_18
	movl      %esi, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      32(%esp), %ecx
	movl      %ecx, (%ebx)
	testl     %eax, %eax
	je        LBB0_58
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $4, 12(%esp)
	movl      $1, 8(%esp)
	movl      $12, 4(%esp)
	jmp       LBB0_59
LBB0_50:
	movl      4(%eax), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%ebx)
	cmpl      $10, %eax
	je        LBB0_52
	cmpl      $31, %eax
	jne       LBB0_53
LBB0_52:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $5, 12(%esp)
	movl      $1, 8(%esp)
	movl      $168, 4(%esp)
	jmp       LBB0_59
LBB0_54:
	movl      32(%esp), %eax
	movl      %eax, (%ebx)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $3, 12(%esp)
	movl      $1, 8(%esp)
	movl      $21, 4(%esp)
	jmp       LBB0_59
LBB0_55:
	movl      32(%esp), %eax
	movl      %eax, (%ebx)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $2, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $14, 4(%esp)
	jmp       LBB0_59
LBB0_18:
	leal      L_.str2-L0$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
LBB0_19:
	movl      (%ebx), %eax
	movl      L_bot$non_lazy_ptr-L0$pb(%edi), %esi
	leal      -28(%eax), %edi
	subl      (%esi), %eax
	cmpl      $27, %eax
	ja        LBB0_21
	movl      $14, (%esp)
	call      _pari_err
LBB0_21:
	movl      %edi, (%ebx)
	movl      $570425351, (%edi)
	movl      (%ebx), %eax
	leal      -28(%eax), %edi
	subl      (%esi), %eax
	cmpl      $27, %eax
	ja        LBB0_23
	movl      $14, (%esp)
	call      _pari_err
LBB0_23:
	movl      %edi, (%ebx)
	movl      $738197511, (%edi)
	movl      (%ebx), %eax
	leal      -28(%eax), %edi
	subl      (%esi), %eax
	cmpl      $27, %eax
	ja        LBB0_25
	movl      $14, (%esp)
	call      _pari_err
LBB0_25:
	movl      %edi, (%ebx)
	movl      $738197511, (%edi)
	.align 4, 0x90
LBB0_26:
	jmp       LBB0_26
LBB0_49:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $7, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $5040, 4(%esp)
	jmp       LBB0_59
LBB0_58:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $5, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $24, 4(%esp)
	jmp       LBB0_59
LBB0_53:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $4, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $42, 4(%esp)
LBB0_59:
	call      _galois_res
	addl      $124, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 2, 0x90
LJTI0_0:
	.long	L0_0_set_10
	.long	L0_0_set_19
	.long	L0_0_set_27
	.long	L0_0_set_31
LJTI0_1:
	.long	L0_1_set_47
	.long	L0_1_set_50
	.long	L0_1_set_54
	.long	L0_1_set_55
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LCPI1_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI2_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI3_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI5_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
LCPI5_1:
	.long	0
	.long	1
	.long	2
	.long	3
LCPI5_2:
	.long	4
	.long	5
	.long	6
	.long	7
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_nfpoleval
_nfpoleval:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L1$pb
L1$pb:
	popl      %ecx
	movl      68(%esp), %ebp
	movl      $16777215, %esi
	andl      (%ebp), %esi
	cmpl      $2, %esi
	jne       LBB1_2
	movl      L_gen_0$non_lazy_ptr-L1$pb(%ecx), %eax
	movl      (%eax), %ecx
	jmp       LBB1_48
LBB1_2:
	movl      64(%esp), %edi
	movl      L_avma$non_lazy_ptr-L1$pb(%ecx), %eax
	movl      %ecx, 36(%esp)
	movl      %eax, 32(%esp)
	movl      (%eax), %ebx
	movl      -4(%ebp,%esi,4), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_basis
	addl      $-2, %esi
	cmpl      $2, %esi
	jl        LBB1_3
	movl      %ebx, 40(%esp)
	movl      72(%esp), %ebx
	.align 4, 0x90
LBB1_5:
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _nfmul
	movl      (%ebp,%esi,4), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfadd
	decl      %esi
	cmpl      $1, %esi
	jg        LBB1_5
	jmp       LBB1_6
LBB1_3:
	movl      %ebx, 40(%esp)
LBB1_6:
	movl      36(%esp), %edx
	movl      L_bot$non_lazy_ptr-L1$pb(%edx), %ecx
	cmpl      (%ecx), %eax
	movl      40(%esp), %ebx
	jb        LBB1_9
	cmpl      %eax, %ebx
	jbe       LBB1_9
	movl      L_top$non_lazy_ptr-L1$pb(%edx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB1_9
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %esi
	cmpl      $2, %esi
	jb        LBB1_31
	cmpl      $2, %ecx
	jne       LBB1_12
LBB1_31:
	movl      %edi, %esi
	andl      $16777215, %esi
	shll      $2, %esi
	movl      %ebx, %ecx
	subl      %esi, %ecx
	movl      %edi, %ebp
	andl      $16777215, %ebp
	movl      32(%esp), %edx
	movl      %ecx, (%edx)
	je        LBB1_48
	movl      %ecx, 32(%esp)
	movl      %edi, %ebx
	movl      %edi, 28(%esp)
	orl       $-16777216, %ebx
	movl      %ebx, %edi
	xorl      $16777215, %edi
	cmpl      $-16777216, %ebx
	movl      $-2, %edx
	movl      $-2, %ecx
	cmove     %edi, %ecx
	leal      (%ecx,%ebp), %esi
	cmpl      $-2, %esi
	jne       LBB1_34
	movl      32(%esp), %ecx
	jmp       LBB1_42
LBB1_9:
	movl      32(%esp), %ecx
	movl      %ebx, (%ecx)
	movl      %eax, %ecx
LBB1_48:
	movl      %ecx, %eax
LBB1_49:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB1_12:
	cmpl      $1, %ecx
	jne       LBB1_50
	movl      4(%eax), %edi
	movl      %edi, %esi
	andl      $16777215, %esi
	movl      %esi, 28(%esp)
	leal      0(,%esi,4), %edx
	movl      %ebx, %ecx
	movl      %edi, %ebx
	subl      %edx, %ecx
	cmpl      $2, %esi
	jb        LBB1_30
	movl      %ebx, %ebp
	andl      $16777215, %ebp
	movl      %ebp, %edi
	negl      %edi
	cmpl      $-3, %edi
	movl      $-2, %esi
	cmovg     %edi, %esi
	addl      %ebp, %esi
	cmpl      $-1, %esi
	movl      28(%esp), %edx
	je        LBB1_23
	movl      %ebx, 24(%esp)
	incl      %esi
	cmpl      $-3, %edi
	movl      $-2, %edx
	cmovg     %edi, %edx
	movl      %edi, 16(%esp)
	movl      %esi, %ebx
	andl      $-8, %ebx
	je        LBB1_16
	movl      %ebx, 12(%esp)
	movl      %esi, 20(%esp)
	movl      %edx, %ebx
	notl      %ebx
	leal      (%eax,%ebx,4), %esi
	movl      40(%esp), %ebx
	leal      -4(%ebx), %edi
	cmpl      %esi, %edi
	movl      $0, %esi
	ja        LBB1_19
	leal      -4(%eax,%ebp,4), %edi
	addl      %ebp, %edx
	notl      %edx
	leal      (%ebx,%edx,4), %edx
	cmpl      %edx, %edi
	movl      28(%esp), %edx
	jbe       LBB1_22
LBB1_19:
	movl      28(%esp), %edx
	subl      12(%esp), %edx
	movl      16(%esp), %esi
	cmpl      $-3, %esi
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      1(%edi,%ebp), %esi
	andl      $-8, %esi
	movl      36(%esp), %edi
	movdqa    LCPI1_0-L1$pb(%edi), %xmm0
LBB1_20:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edi
	movups    -12(%eax,%edi,4), %xmm1
	movups    -28(%eax,%edi,4), %xmm2
	subl      28(%esp), %edi
	movups    %xmm1, -12(%ebx,%edi,4)
	movups    %xmm2, -28(%ebx,%edi,4)
	addl      $-8, %ebp
	addl      $-8, %esi
	jne       LBB1_20
	movl      12(%esp), %esi
	jmp       LBB1_22
LBB1_34:
	movl      %ecx, 20(%esp)
	addl      $2, %esi
	cmpl      $-16777216, %ebx
	cmovne    %edx, %edi
	xorl      %ecx, %ecx
	movl      %esi, %edx
	andl      $-8, %edx
	je        LBB1_35
	movl      %edx, 12(%esp)
	movl      %esi, 24(%esp)
	movl      $-2, %esi
	movl      $-2, %ebx
	subl      %edi, %ebx
	leal      (%eax,%ebx,4), %edx
	movl      %edx, 16(%esp)
	movl      40(%esp), %edx
	leal      -4(%edx), %ebx
	cmpl      16(%esp), %ebx
	ja        LBB1_38
	leal      -4(%eax,%ebp,4), %ebx
	addl      %ebp, %edi
	subl      %edi, %esi
	movl      40(%esp), %edx
	leal      (%edx,%esi,4), %edi
	cmpl      %edi, %ebx
	jbe       LBB1_41
LBB1_38:
	movl      %ebp, %ecx
	subl      12(%esp), %ecx
	movl      %ecx, 16(%esp)
	movl      20(%esp), %ecx
	leal      2(%ecx,%ebp), %esi
	andl      $-8, %esi
	movl      36(%esp), %edx
	movdqa    LCPI1_0-L1$pb(%edx), %xmm0
	movl      %ebp, %ebx
	movl      40(%esp), %edx
	.align 4, 0x90
LBB1_39:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edi
	movups    -12(%eax,%edi,4), %xmm1
	movups    -28(%eax,%edi,4), %xmm2
	subl      %ebp, %edi
	movups    %xmm1, -12(%edx,%edi,4)
	movups    %xmm2, -28(%edx,%edi,4)
	addl      $-8, %ebx
	addl      $-8, %esi
	jne       LBB1_39
	movl      16(%esp), %ebp
	movl      12(%esp), %ecx
	jmp       LBB1_41
LBB1_50:
	andl      $16777215, %edi
	leal      (%eax,%edi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
	jmp       LBB1_49
LBB1_35:
	movl      %esi, 24(%esp)
LBB1_41:
	cmpl      %ecx, 24(%esp)
	movl      $-2, %edx
	movl      32(%esp), %ecx
	je        LBB1_48
LBB1_42:
	movl      %ebp, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edx
	leal      2(%ebp,%edx), %esi
	leal      1(%ebp,%edx), %edx
	movl      %edx, 36(%esp)
	movl      %esi, %edx
	testb     $3, %dl
	je        LBB1_45
	movl      28(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      40(%esp), %edx
	leal      (%edx,%edi,4), %edi
	cmpl      $-3, %ebx
	movl      $-2, %esi
	cmovg     %ebx, %esi
	leal      2(%ebp,%esi), %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB1_44:
	movl      -4(%eax,%ebp,4), %esi
	movl      %esi, (%edi,%ebp,4)
	leal      -1(%ebp), %ebp
	incl      %ebx
	jne       LBB1_44
LBB1_45:
	cmpl      $3, 36(%esp)
	jb        LBB1_48
	incl      %ebp
	movl      28(%esp), %edx
	andl      $16777215, %edx
	movl      $-4, %esi
	subl      %edx, %esi
	movl      40(%esp), %edx
	leal      (%edx,%esi,4), %edx
	.align 4, 0x90
LBB1_47:
	movl      -8(%eax,%ebp,4), %esi
	movl      %esi, 8(%edx,%ebp,4)
	movl      -12(%eax,%ebp,4), %esi
	movl      %esi, 4(%edx,%ebp,4)
	movl      -16(%eax,%ebp,4), %esi
	movl      %esi, (%edx,%ebp,4)
	movl      -20(%eax,%ebp,4), %esi
	movl      %esi, -4(%edx,%ebp,4)
	addl      $-4, %ebp
	cmpl      $1, %ebp
	jg        LBB1_47
	jmp       LBB1_48
LBB1_16:
	movl      %esi, 20(%esp)
	movl      28(%esp), %edx
	xorl      %esi, %esi
LBB1_22:
	cmpl      %esi, 20(%esp)
	movl      24(%esp), %ebx
	je        LBB1_30
LBB1_23:
	movl      %ebx, %esi
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	leal      (%edx,%ebx), %edi
	leal      1(%edx,%ebx), %ebx
	testb     $3, %bl
	je        LBB1_24
	movl      %edi, 36(%esp)
	movl      %esi, 24(%esp)
	movl      %esi, %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      40(%esp), %esi
	leal      (%esi,%edi,4), %edi
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	leal      1(%edx,%ebx), %ebx
	andl      $3, %ebx
	negl      %ebx
LBB1_26:
	movl      -4(%eax,%edx,4), %ebp
	movl      %ebp, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB1_26
	jmp       LBB1_27
LBB1_24:
	movl      %edi, 36(%esp)
	movl      %esi, 24(%esp)
LBB1_27:
	cmpl      $3, 36(%esp)
	movl      40(%esp), %esi
	movl      24(%esp), %edi
	jb        LBB1_30
	notl      %edi
	orl       $1056964608, %edi
	leal      (%esi,%edi,4), %esi
LBB1_29:
	movl      -4(%eax,%edx,4), %edi
	movl      %edi, (%esi,%edx,4)
	movl      -8(%eax,%edx,4), %edi
	movl      %edi, -4(%esi,%edx,4)
	movl      -12(%eax,%edx,4), %edi
	movl      %edi, -8(%esi,%edx,4)
	movl      -16(%eax,%edx,4), %edi
	movl      %edi, -12(%esi,%edx,4)
	leal      -4(%edx), %edx
	cmpl      $1, %edx
	jg        LBB1_29
LBB1_30:
	movl      28(%esp), %eax
	orl       $33554432, %eax
	movl      %eax, (%ecx)
	movl      32(%esp), %eax
	movl      %ecx, (%eax)
	jmp       LBB1_48
# ----------------------
	.align 4, 0x90
	.globl	_FpX_FpC_nfpoleval
_FpX_FpC_nfpoleval:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $92, %esp
	call      L2$pb
L2$pb:
	popl      %ebx
	movl      116(%esp), %ecx
	movl      112(%esp), %eax
	movl      L_avma$non_lazy_ptr-L2$pb(%ebx), %edx
	movl      %edx, 88(%esp)
	movl      $16777215, %edi
	andl      (%ecx), %edi
	movl      4(%eax), %ecx
	movl      (%ecx), %ecx
	movl      %ecx, %esi
	andl      $16777215, %esi
	cmpl      $2, %edi
	movl      (%edx), %edx
	leal      -3(%esi), %ebp
	jne       LBB2_13
	movl      %ecx, 72(%esp)
	movl      %ebp, 76(%esp)
	leal      -2(%esi), %ebp
	movl      $2, %eax
	subl      %esi, %eax
	leal      (%edx,%eax,4), %eax
	movl      %eax, 80(%esp)
	movl      L_bot$non_lazy_ptr-L2$pb(%ebx), %eax
	movl      %ebx, 84(%esp)
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebp, %ecx
	movl      %edx, %edi
	jae       LBB2_3
	movl      $14, (%esp)
	call      _pari_err
LBB2_3:
	movl      88(%esp), %eax
	movl      80(%esp), %ecx
	movl      %ecx, (%eax)
	cmpl      $16777216, %ebp
	movl      %ecx, %ebx
	jb        LBB2_5
	movl      84(%esp), %eax
	leal      L_.str7-L2$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB2_5:
	orl       $603979776, %ebp
	movl      %ebp, (%ebx)
	movl      76(%esp), %edx
	testl     %edx, %edx
	jle       LBB2_117
	leal      -4(%esi), %ecx
	movl      $1, %eax
	testb     $3, %dl
	je        LBB2_10
	movl      $3, %eax
	subl      %esi, %eax
	leal      (%edi,%eax,4), %edx
	movl      %edi, 60(%esp)
	movl      72(%esp), %eax
	incb      %al
	movzbl    %al, %ebx
	andl      $3, %ebx
	xorl      %eax, %eax
	movl      84(%esp), %edi
	movl      L_gen_0$non_lazy_ptr-L2$pb(%edi), %ebp
	.align 4, 0x90
LBB2_8:
	movl      (%ebp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %eax
	cmpl      %eax, %ebx
	jne       LBB2_8
	incl      %eax
	movl      60(%esp), %edi
	movl      80(%esp), %ebx
LBB2_10:
	cmpl      $3, %ecx
	jb        LBB2_117
	addl      $2, %eax
	subl      %esi, %eax
	movl      84(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L2$pb(%ecx), %ecx
	.align 4, 0x90
LBB2_12:
	movl      (%ecx), %edx
	movl      %edx, (%edi,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 4(%edi,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 8(%edi,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 12(%edi,%eax,4)
	addl      $4, %eax
	jne       LBB2_12
	jmp       LBB2_117
LBB2_13:
	movl      %ebx, 84(%esp)
	movl      %edx, 60(%esp)
	movl      124(%esp), %esi
	movl      120(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _zk_multable
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _FpM_red
	movl      %eax, %ebx
	movl      %ebx, 80(%esp)
	movl      116(%esp), %eax
	movl      -4(%eax,%edi,4), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
	movl      %eax, %ebp
	addl      $-2, %edi
	cmpl      $2, %edi
	jl        LBB2_73
	movl      84(%esp), %eax
	movdqa    LCPI2_0-L2$pb(%eax), %xmm0
	movdqa    %xmm0, 32(%esp)
	.align 4, 0x90
LBB2_15:
	movl      %esi, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %ebx, (%esp)
	call      _FpM_FpC_mul
	movl      %eax, %ebp
	movl      4(%ebp), %eax
	movl      116(%esp), %ecx
	movl      (%ecx,%edi,4), %ecx
	movl      88(%esp), %edx
	movl      (%edx), %ebx
	movl      4(%eax), %edx
	sarl      $30, %edx
	movl      4(%ecx), %esi
	sarl      $30, %esi
	movl      %esi, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _addii_sign
	movl      %eax, %edx
	movl      4(%edx), %eax
	sarl      $30, %eax
	testl     %eax, %eax
	je        LBB2_16
	jle       LBB2_47
	movl      124(%esp), %esi
	cmpl      %esi, %edx
	je        LBB2_19
	movl      %ebp, 76(%esp)
	movl      4(%esi), %ecx
	sarl      $30, %ecx
	negl      %ecx
	movl      %ecx, 12(%esp)
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	movl      %edx, 72(%esp)
	call      _addii_sign
	movl      %eax, %ebp
	jmp       LBB2_21
	.align 4, 0x90
LBB2_16:
	movl      124(%esp), %esi
	jmp       LBB2_72
	.align 4, 0x90
LBB2_47:
	movl      124(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      _modii
	movl      84(%esp), %esi
	jmp       LBB2_48
LBB2_19:
	movl      %edx, 72(%esp)
	movl      %ebp, 76(%esp)
	movl      84(%esp), %eax
	movl      L_gen_0$non_lazy_ptr-L2$pb(%eax), %eax
	movl      (%eax), %ebp
LBB2_21:
	movl      4(%ebp), %eax
	sarl      $30, %eax
	testl     %eax, %eax
	je        LBB2_22
	js        LBB2_24
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _cmpii
	testl     %eax, %eax
	movl      %esi, %eax
	movl      84(%esp), %esi
	js        LBB2_26
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	movl      $1, 8(%esp)
	call      _dvmdii
	movl      76(%esp), %ebp
LBB2_48:
	movl      L_bot$non_lazy_ptr-L2$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        LBB2_49
	cmpl      %eax, %ebx
	jbe       LBB2_49
	movl      L_top$non_lazy_ptr-L2$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       LBB2_49
	movl      %esi, 84(%esp)
	movl      %ebp, 76(%esp)
	movl      4(%eax), %ebp
	movl      %ebp, 64(%esp)
	andl      $16777215, %ebp
	movl      %ebp, 68(%esp)
	leal      0(,%ebp,4), %edx
	movl      %ebx, %esi
	subl      %edx, %esi
	movl      %esi, 72(%esp)
	cmpl      $2, %ebp
	jb        LBB2_69
	movl      64(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ecx
	negl      %ecx
	cmpl      $-3, %ecx
	movl      $-2, %esi
	cmovg     %ecx, %esi
	leal      (%esi,%edx), %ebp
	cmpl      $-1, %ebp
	movl      68(%esp), %ebp
	je        LBB2_62
	movl      %ebx, 56(%esp)
	leal      1(%esi,%edx), %ebx
	movl      %ebx, 48(%esp)
	movl      64(%esp), %ebp
	leal      1(%ebp,%esi), %ebp
	andl      $7, %ebp
	cmpl      $-3, %ecx
	movl      $-2, %esi
	cmovg     %ecx, %esi
	movl      $0, 52(%esp)
	subl      %ebp, %ebx
	jne       LBB2_56
	movl      68(%esp), %ecx
	movl      %ecx, %ebp
	jmp       LBB2_61
	.align 4, 0x90
LBB2_49:
	movl      %esi, 84(%esp)
	movl      %eax, %edx
	jmp       LBB2_71
LBB2_22:
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	movl      84(%esp), %eax
	movl      L_gen_0$non_lazy_ptr-L2$pb(%eax), %eax
	movl      (%eax), %edx
	movl      76(%esp), %ebp
	jmp       LBB2_72
LBB2_24:
	movl      88(%esp), %eax
	movl      72(%esp), %edx
	movl      %edx, (%eax)
	movl      76(%esp), %ebp
	jmp       LBB2_72
LBB2_26:
	movl      L_bot$non_lazy_ptr-L2$pb(%esi), %eax
	cmpl      (%eax), %ebp
	jb        LBB2_27
	cmpl      %ebp, %ebx
	jbe       LBB2_27
	movl      L_top$non_lazy_ptr-L2$pb(%esi), %eax
	cmpl      (%eax), %ebp
	jae       LBB2_27
	movl      4(%ebp), %esi
	movl      %esi, 64(%esp)
	andl      $16777215, %esi
	movl      %esi, 68(%esp)
	leal      0(,%esi,4), %ecx
	movl      %ebx, %edx
	subl      %ecx, %edx
	movl      %edx, 72(%esp)
	cmpl      $2, %esi
	jb        LBB2_69
	movl      64(%esp), %ecx
	andl      $16777215, %ecx
	movl      %ecx, %eax
	negl      %eax
	cmpl      $-3, %eax
	movl      $-2, %esi
	cmovg     %eax, %esi
	leal      (%esi,%ecx), %edx
	cmpl      $-1, %edx
	movl      68(%esp), %edx
	je        LBB2_39
	movl      %ebx, 56(%esp)
	leal      1(%esi,%ecx), %ebx
	movl      %ebx, 48(%esp)
	movl      64(%esp), %edx
	leal      1(%edx,%esi), %esi
	andl      $7, %esi
	cmpl      $-3, %eax
	movl      $-2, %edx
	cmovg     %eax, %edx
	movl      $0, 52(%esp)
	subl      %esi, %ebx
	jne       LBB2_34
	movl      68(%esp), %edx
	jmp       LBB2_38
LBB2_27:
	movl      %ebp, %edx
	jmp       LBB2_70
LBB2_56:
	movl      %ecx, 24(%esp)
	movl      %ebx, 28(%esp)
	movl      %esi, %ebp
	notl      %ebp
	leal      (%eax,%ebp,4), %ebx
	movl      56(%esp), %ecx
	leal      -4(%ecx), %ebp
	cmpl      %ebx, %ebp
	movl      68(%esp), %ecx
	ja        LBB2_58
	leal      -4(%eax,%edx,4), %ebp
	addl      %edx, %esi
	notl      %esi
	movl      56(%esp), %ebx
	leal      (%ebx,%esi,4), %esi
	cmpl      %esi, %ebp
	movl      %ecx, %ebp
	jbe       LBB2_61
LBB2_58:
	movl      %ecx, %ebp
	subl      28(%esp), %ebp
	movl      24(%esp), %ebx
	cmpl      $-3, %ebx
	movl      $-2, %ecx
	cmovle    %ecx, %ebx
	movl      64(%esp), %ecx
	leal      1(%ecx,%ebx), %esi
	andl      $7, %esi
	subl      %ebx, %esi
	decl      %esi
	movdqa    32(%esp), %xmm2
	movl      56(%esp), %ebx
	.align 4, 0x90
LBB2_59:
	movd      %edx, %xmm0
	pshufd    $0, %xmm0, %xmm0
	paddd     %xmm2, %xmm0
	movd      %xmm0, %ecx
	movdqu    -12(%eax,%ecx,4), %xmm0
	movups    -28(%eax,%ecx,4), %xmm1
	subl      68(%esp), %ecx
	movdqu    %xmm0, -12(%ebx,%ecx,4)
	movups    %xmm1, -28(%ebx,%ecx,4)
	addl      $-8, %edx
	cmpl      %edx, %esi
	jne       LBB2_59
	movl      28(%esp), %ecx
	movl      %ecx, 52(%esp)
	movl      68(%esp), %ecx
LBB2_61:
	movl      %ecx, 68(%esp)
	movl      52(%esp), %ecx
	cmpl      %ecx, 48(%esp)
	movl      56(%esp), %ebx
	je        LBB2_69
LBB2_62:
	movl      %ebp, %edx
	negl      %edx
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	leal      1(%ebp,%esi), %ecx
	addl      %ebp, %esi
	testb     $3, %cl
	je        LBB2_63
	movl      %esi, 56(%esp)
	movl      64(%esp), %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      %ebx, %esi
	subl      %ecx, %esi
	addl      $-4, %esi
	cmpl      $-3, %edx
	movl      $-2, %ecx
	cmovle    %ecx, %edx
	leal      1(%ebp,%edx), %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB2_65:
	movl      -4(%eax,%ebp,4), %ecx
	movl      %ecx, (%esi,%ebp,4)
	leal      -1(%ebp), %ebp
	incl      %edx
	jne       LBB2_65
	jmp       LBB2_66
LBB2_63:
	movl      %esi, 56(%esp)
LBB2_66:
	cmpl      $3, 56(%esp)
	movl      64(%esp), %ecx
	jb        LBB2_69
	andl      $16777215, %ecx
	shll      $2, %ecx
	subl      %ecx, %ebx
	addl      $-4, %ebx
	.align 4, 0x90
LBB2_68:
	movl      -4(%eax,%ebp,4), %ecx
	movl      %ecx, (%ebx,%ebp,4)
	movl      -8(%eax,%ebp,4), %ecx
	movl      %ecx, -4(%ebx,%ebp,4)
	movl      -12(%eax,%ebp,4), %ecx
	movl      %ecx, -8(%ebx,%ebp,4)
	movl      -16(%eax,%ebp,4), %ecx
	movl      %ecx, -12(%ebx,%ebp,4)
	leal      -4(%ebp), %ebp
	cmpl      $1, %ebp
	jg        LBB2_68
	jmp       LBB2_69
LBB2_34:
	movl      %eax, 24(%esp)
	movl      %edx, %esi
	notl      %esi
	leal      (%ebp,%esi,4), %eax
	movl      %eax, 28(%esp)
	movl      56(%esp), %eax
	leal      -4(%eax), %esi
	cmpl      28(%esp), %esi
	ja        LBB2_36
	leal      -4(%ebp,%ecx,4), %esi
	addl      %ecx, %edx
	notl      %edx
	movl      56(%esp), %eax
	leal      (%eax,%edx,4), %edx
	cmpl      %edx, %esi
	movl      68(%esp), %edx
	jbe       LBB2_38
LBB2_36:
	movl      68(%esp), %edx
	subl      %ebx, %edx
	movl      %ebx, 52(%esp)
	movl      24(%esp), %ebx
	cmpl      $-3, %ebx
	movl      $-2, %eax
	cmovle    %eax, %ebx
	movl      64(%esp), %eax
	leal      1(%eax,%ebx), %esi
	andl      $7, %esi
	subl      %ebx, %esi
	decl      %esi
	movdqa    32(%esp), %xmm2
	movl      56(%esp), %ebx
	.align 4, 0x90
LBB2_37:
	movd      %ecx, %xmm0
	pshufd    $0, %xmm0, %xmm0
	paddd     %xmm2, %xmm0
	movd      %xmm0, %eax
	movdqu    -12(%ebp,%eax,4), %xmm0
	movups    -28(%ebp,%eax,4), %xmm1
	subl      68(%esp), %eax
	movdqu    %xmm0, -12(%ebx,%eax,4)
	movups    %xmm1, -28(%ebx,%eax,4)
	addl      $-8, %ecx
	cmpl      %ecx, %esi
	jne       LBB2_37
LBB2_38:
	movl      52(%esp), %eax
	cmpl      %eax, 48(%esp)
	movl      56(%esp), %ebx
	je        LBB2_69
LBB2_39:
	movl      %edx, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ecx
	cmovg     %esi, %ecx
	leal      1(%edx,%ecx), %eax
	addl      %edx, %ecx
	testb     $3, %al
	je        LBB2_40
	movl      %ecx, 56(%esp)
	movl      64(%esp), %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      %ebx, %ecx
	subl      %eax, %ecx
	addl      $-4, %ecx
	cmpl      $-3, %esi
	movl      $-2, %eax
	cmovle    %eax, %esi
	leal      1(%edx,%esi), %esi
	andl      $3, %esi
	negl      %esi
	.align 4, 0x90
LBB2_42:
	movl      -4(%ebp,%edx,4), %eax
	movl      %eax, (%ecx,%edx,4)
	leal      -1(%edx), %edx
	incl      %esi
	jne       LBB2_42
	jmp       LBB2_43
LBB2_40:
	movl      %ecx, 56(%esp)
LBB2_43:
	cmpl      $3, 56(%esp)
	movl      64(%esp), %eax
	jb        LBB2_69
	andl      $16777215, %eax
	shll      $2, %eax
	subl      %eax, %ebx
	addl      $-4, %ebx
	.align 4, 0x90
LBB2_45:
	movl      -4(%ebp,%edx,4), %eax
	movl      %eax, (%ebx,%edx,4)
	movl      -8(%ebp,%edx,4), %eax
	movl      %eax, -4(%ebx,%edx,4)
	movl      -12(%ebp,%edx,4), %eax
	movl      %eax, -8(%ebx,%edx,4)
	movl      -16(%ebp,%edx,4), %eax
	movl      %eax, -12(%ebx,%edx,4)
	leal      -4(%edx), %edx
	cmpl      $1, %edx
	jg        LBB2_45
LBB2_69:
	movl      68(%esp), %eax
	orl       $33554432, %eax
	movl      72(%esp), %edx
	movl      %eax, (%edx)
	movl      %edx, %ebx
LBB2_70:
	movl      76(%esp), %ebp
LBB2_71:
	movl      124(%esp), %esi
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
LBB2_72:
	movl      %edx, 4(%ebp)
	decl      %edi
	cmpl      $1, %edi
	movl      80(%esp), %ebx
	jg        LBB2_15
LBB2_73:
	movl      84(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L2$pb(%ecx), %eax
	cmpl      (%eax), %ebp
	movl      60(%esp), %esi
	jb        LBB2_76
	cmpl      %ebp, %esi
	jbe       LBB2_76
	movl      L_top$non_lazy_ptr-L2$pb(%ecx), %eax
	cmpl      (%eax), %ebp
	jae       LBB2_76
	movl      (%ebp), %edx
	movl      %edx, %eax
	shrl      $25, %eax
	leal      -21(%eax), %ecx
	cmpl      $2, %ecx
	jb        LBB2_98
	cmpl      $2, %eax
	jne       LBB2_79
LBB2_98:
	movl      %edx, %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      %esi, %ebx
	subl      %eax, %ebx
	movl      %edx, %ecx
	andl      $16777215, %ecx
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	je        LBB2_117
	movl      %ebx, 80(%esp)
	movl      %ebp, 76(%esp)
	movl      %edx, %eax
	orl       $-16777216, %eax
	movl      %eax, %ebx
	xorl      $16777215, %ebx
	cmpl      $-16777216, %eax
	movl      $-2, %esi
	movl      $-2, %ebp
	cmove     %ebx, %ebp
	leal      (%ebp,%ecx), %edi
	cmpl      $-2, %edi
	jne       LBB2_106
	movl      76(%esp), %ebp
	jmp       LBB2_101
LBB2_76:
	movl      88(%esp), %eax
	movl      %esi, (%eax)
	movl      %ebp, %ebx
LBB2_117:
	movl      %ebx, %eax
LBB2_118:
	addl      $92, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB2_79:
	cmpl      $1, %eax
	jne       LBB2_119
	movl      4(%ebp), %ecx
	movl      %ecx, %edi
	andl      $16777215, %edi
	leal      0(,%edi,4), %edx
	subl      %edx, %esi
	movl      %esi, 80(%esp)
	cmpl      $2, %edi
	movl      %ebp, 76(%esp)
	jb        LBB2_97
	movl      %ecx, %ebp
	andl      $16777215, %ebp
	movl      %ebp, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ebx
	movl      $-2, %eax
	cmovg     %esi, %eax
	addl      %ebp, %eax
	cmpl      $-1, %eax
	movl      %edi, %edx
	je        LBB2_90
	incl      %eax
	cmpl      $-3, %esi
	movl      $-2, %edx
	cmovg     %esi, %edx
	movl      $0, 68(%esp)
	movl      %eax, %ebx
	andl      $-8, %ebx
	je        LBB2_83
	movl      %ebx, 56(%esp)
	movl      %eax, 64(%esp)
	movl      %ecx, 72(%esp)
	movl      %edi, %ebx
	movl      %edx, %edi
	notl      %edi
	movl      76(%esp), %eax
	leal      (%eax,%edi,4), %eax
	movl      60(%esp), %ecx
	leal      -4(%ecx), %edi
	cmpl      %eax, %edi
	movl      %ebx, %edi
	ja        LBB2_86
	movl      76(%esp), %eax
	movl      %edi, %ebx
	leal      -4(%eax,%ebp,4), %edi
	addl      %ebp, %edx
	notl      %edx
	movl      60(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	cmpl      %edx, %edi
	movl      %ebx, %edi
	movl      %edi, %edx
	jbe       LBB2_89
LBB2_86:
	movl      %edi, %edx
	subl      56(%esp), %edx
	cmpl      $-3, %esi
	movl      %edi, %ebx
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      1(%edi,%ebp), %esi
	andl      $-8, %esi
	movl      84(%esp), %eax
	movdqa    LCPI2_0-L2$pb(%eax), %xmm0
	movl      60(%esp), %ecx
	movl      76(%esp), %eax
LBB2_87:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edi
	movups    -12(%eax,%edi,4), %xmm1
	movdqu    -28(%eax,%edi,4), %xmm2
	subl      %ebx, %edi
	movups    %xmm1, -12(%ecx,%edi,4)
	movdqu    %xmm2, -28(%ecx,%edi,4)
	addl      $-8, %ebp
	addl      $-8, %esi
	jne       LBB2_87
	movl      56(%esp), %eax
	movl      %eax, 68(%esp)
	movl      %ebx, %edi
	jmp       LBB2_89
LBB2_106:
	addl      $2, %edi
	cmpl      $-16777216, %eax
	cmovne    %esi, %ebx
	xorl      %esi, %esi
	movl      %edi, %eax
	andl      $-8, %eax
	je        LBB2_107
	movl      %eax, 72(%esp)
	movl      %edi, 88(%esp)
	movl      $-2, %eax
	movl      $-2, %edi
	subl      %ebx, %edi
	movl      76(%esp), %esi
	leal      (%esi,%edi,4), %esi
	movl      60(%esp), %edi
	leal      -4(%edi), %edi
	cmpl      %esi, %edi
	ja        LBB2_110
	movl      76(%esp), %esi
	leal      -4(%esi,%ecx,4), %edi
	xorl      %esi, %esi
	addl      %ecx, %ebx
	subl      %ebx, %eax
	movl      60(%esp), %ebx
	leal      (%ebx,%eax,4), %eax
	cmpl      %eax, %edi
	jbe       LBB2_113
LBB2_110:
	movl      %ecx, %eax
	subl      72(%esp), %eax
	movl      %eax, 68(%esp)
	leal      2(%ebp,%ecx), %ebp
	andl      $-8, %ebp
	movl      84(%esp), %eax
	movdqa    LCPI2_0-L2$pb(%eax), %xmm0
	movl      %ecx, %ebx
	movl      60(%esp), %edi
	movl      76(%esp), %esi
	.align 4, 0x90
LBB2_111:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movups    -12(%esi,%eax,4), %xmm1
	movdqu    -28(%esi,%eax,4), %xmm2
	subl      %ecx, %eax
	movups    %xmm1, -12(%edi,%eax,4)
	movdqu    %xmm2, -28(%edi,%eax,4)
	addl      $-8, %ebx
	addl      $-8, %ebp
	jne       LBB2_111
	movl      68(%esp), %ecx
	movl      72(%esp), %esi
	jmp       LBB2_113
LBB2_119:
	andl      $16777215, %edx
	leal      (%ebp,%edx,4), %eax
	movl      %ebp, 8(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      _gerepile
	jmp       LBB2_118
LBB2_107:
	movl      %edi, 88(%esp)
LBB2_113:
	cmpl      %esi, 88(%esp)
	movl      76(%esp), %ebp
	movl      $-2, %esi
	jne       LBB2_101
	movl      80(%esp), %ebx
	jmp       LBB2_117
LBB2_101:
	movl      %ecx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %esi
	leal      2(%ecx,%esi), %eax
	leal      1(%ecx,%esi), %edi
	testb     $3, %al
	je        LBB2_104
	movl      %edx, %eax
	notl      %eax
	orl       $1056964608, %eax
	movl      60(%esp), %esi
	leal      (%esi,%eax,4), %esi
	cmpl      $-3, %ebx
	movl      $-2, %eax
	cmovg     %ebx, %eax
	leal      2(%ecx,%eax), %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB2_103:
	movl      -4(%ebp,%ecx,4), %eax
	movl      %eax, (%esi,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %ebx
	jne       LBB2_103
LBB2_104:
	cmpl      $3, %edi
	jae       LBB2_115
	movl      80(%esp), %ebx
	jmp       LBB2_117
LBB2_115:
	incl      %ecx
	andl      $16777215, %edx
	movl      $-4, %eax
	subl      %edx, %eax
	movl      60(%esp), %edx
	leal      (%edx,%eax,4), %eax
	movl      80(%esp), %ebx
	.align 4, 0x90
LBB2_116:
	movl      -8(%ebp,%ecx,4), %edx
	movl      %edx, 8(%eax,%ecx,4)
	movl      -12(%ebp,%ecx,4), %edx
	movl      %edx, 4(%eax,%ecx,4)
	movl      -16(%ebp,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	movl      -20(%ebp,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	addl      $-4, %ecx
	cmpl      $1, %ecx
	jg        LBB2_116
	jmp       LBB2_117
LBB2_83:
	movl      %eax, 64(%esp)
	movl      %ecx, 72(%esp)
	movl      %edi, %edx
LBB2_89:
	movl      68(%esp), %eax
	cmpl      %eax, 64(%esp)
	movl      72(%esp), %ecx
	movl      $-2, %ebx
	je        LBB2_97
LBB2_90:
	movl      76(%esp), %eax
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      (%edx,%ebx), %esi
	leal      1(%edx,%ebx), %ebx
	testb     $3, %bl
	je        LBB2_91
	movl      %edi, 84(%esp)
	movl      %ecx, %edi
	movl      %ecx, 72(%esp)
	notl      %edi
	orl       $1056964608, %edi
	movl      60(%esp), %ecx
	leal      (%ecx,%edi,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edi
	cmovg     %ebp, %edi
	leal      1(%edx,%edi), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB2_93:
	movl      -4(%eax,%edx,4), %edi
	movl      %edi, (%ebx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebp
	jne       LBB2_93
	jmp       LBB2_94
LBB2_91:
	movl      %ecx, 72(%esp)
	movl      %edi, 84(%esp)
LBB2_94:
	cmpl      $3, %esi
	movl      84(%esp), %edi
	movl      72(%esp), %esi
	jb        LBB2_97
	notl      %esi
	orl       $1056964608, %esi
	movl      60(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
LBB2_96:
	movl      -4(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, -8(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, -12(%ecx,%edx,4)
	leal      -4(%edx), %edx
	cmpl      $1, %edx
	jg        LBB2_96
LBB2_97:
	orl       $33554432, %edi
	movl      80(%esp), %ebx
	movl      %edi, (%ebx)
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	jmp       LBB2_117
# ----------------------
	.align 4, 0x90
	.globl	_galoisapply
_galoisapply:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L3$pb
L3$pb:
	popl      %ecx
	movl      %ecx, 72(%esp)
	movl      104(%esp), %ebp
	movl      100(%esp), %esi
	movl      96(%esp), %eax
	movl      L_avma$non_lazy_ptr-L3$pb(%ecx), %ecx
	movl      %ecx, 68(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 64(%esp)
	movl      %eax, (%esp)
	call      _checknf
	movl      %eax, %edi
	movl      (%ebp), %ebx
	movl      %ebx, %eax
	shrl      $25, %eax
	cmpl      $16, %eax
	jg        LBB3_3
	decl      %eax
	cmpl      $9, %eax
	ja        LBB3_397
	movl      72(%esp), %ecx
	movl      Ltmp2(%ecx,%eax,4), %eax
	addl      %ecx, %eax
	jmp       *%eax
LBB3_10:
	movl      4(%ebp), %edi
	movl      %edi, 64(%esp)
	andl      $16777215, %edi
	movl      68(%esp), %eax
	movl      (%eax), %esi
	leal      0(,%edi,4), %eax
	movl      %esi, %ecx
	subl      %eax, %ecx
	movl      %ecx, %ebx
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L3$pb(%eax), %eax
	movl      %esi, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edi, %ecx
	jae       LBB3_12
	movl      $14, (%esp)
	call      _pari_err
LBB3_12:
	movl      %ebx, 60(%esp)
	movl      68(%esp), %eax
	movl      %ebx, (%eax)
	movl      %edi, %eax
	orl       $33554432, %eax
	movl      %eax, (%ebx)
	cmpl      $2, %edi
	jb        LBB3_13
	movl      64(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %eax
	negl      %eax
	cmpl      $-3, %eax
	movl      $-2, %ebx
	movl      $-2, %ecx
	cmovg     %eax, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB3_24
	incl      %ecx
	movl      %ecx, 68(%esp)
	cmpl      $-3, %eax
	movl      %ecx, %ebx
	movl      $-2, %ecx
	cmovg     %eax, %ecx
	andl      $-8, %ebx
	je        LBB3_16
	movl      %ebx, 52(%esp)
	movl      %ecx, %ebx
	notl      %ebx
	leal      (%ebp,%ebx,4), %ebx
	movl      %ebx, 56(%esp)
	leal      -4(%esi), %ebx
	cmpl      56(%esp), %ebx
	ja        LBB3_19
	leal      -4(%ebp,%edx,4), %ebx
	addl      %edx, %ecx
	notl      %ecx
	leal      (%esi,%ecx,4), %ecx
	cmpl      %ecx, %ebx
	ja        LBB3_19
LBB3_16:
	movl      $-2, %ebx
	xorl      %eax, %eax
	jmp       LBB3_22
LBB3_3:
	cmpl      $17, %eax
	je        LBB3_86
	cmpl      $18, %eax
	jne       LBB3_5
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
	movl      %eax, %esi
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       LBB3_297
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
	jmp       LBB3_298
LBB3_86:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
	movl      %eax, %ebx
	movl      $16777215, %eax
	andl      (%ebp), %eax
	cmpl      $3, %eax
	jne       LBB3_87
	movl      %ebx, 56(%esp)
	movl      68(%esp), %ebx
	movl      (%ebx), %esi
	leal      -12(%esi), %eax
	movl      %eax, 60(%esp)
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L3$pb(%eax), %edx
	movl      %edx, 48(%esp)
	movl      %esi, %eax
	subl      (%edx), %eax
	cmpl      $11, %eax
	ja        LBB3_110
	movl      $14, (%esp)
	call      _pari_err
LBB3_110:
	movl      60(%esp), %eax
	movl      %eax, (%ebx)
	movl      %esi, 44(%esp)
	movl      $570425347, -12(%esi)
	movl      4(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      56(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _galoisapply
	movl      %eax, -8(%esi)
	movl      8(%ebp), %edx
	movl      (%ebx), %ebp
	movl      (%edx), %eax
	movl      %eax, %ecx
	shrl      $25, %ecx
	cmpl      $17, %ecx
	movl      64(%esp), %ebx
	jg        LBB3_113
	decl      %ecx
	cmpl      $9, %ecx
	movl      72(%esp), %esi
	ja        LBB3_249
	movl      Ltmp3(%esi,%ecx,4), %eax
	addl      %esi, %eax
	jmp       *%eax
LBB3_117:
	movl      4(%edx), %ebx
	movl      %ebx, 52(%esp)
	movl      %edx, 40(%esp)
	andl      $16777215, %ebx
	leal      0(,%ebx,4), %eax
	movl      %ebp, %ecx
	subl      %eax, %ecx
	movl      %ebp, %eax
	movl      %ebp, 36(%esp)
	movl      48(%esp), %edx
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       LBB3_119
	movl      $14, (%esp)
	movl      %edx, %esi
	movl      %ecx, %edi
	call      _pari_err
	movl      %edi, %ecx
	movl      %esi, %edx
LBB3_119:
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
	movl      %ebx, %eax
	orl       $33554432, %eax
	movl      %eax, (%ecx)
	cmpl      $2, %ebx
	movl      60(%esp), %esi
	jb        LBB3_120
	movl      52(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	addl      %edx, %eax
	cmpl      $-1, %eax
	je        LBB3_122
	movl      %ecx, 56(%esp)
	incl      %eax
	movl      %eax, 32(%esp)
	cmpl      $-3, %ebp
	movl      %eax, %ecx
	movl      $-2, %eax
	cmovg     %ebp, %eax
	andl      $-8, %ecx
	je        LBB3_126
	movl      %ecx, 24(%esp)
	movl      %eax, %esi
	notl      %esi
	movl      40(%esp), %ecx
	leal      (%ecx,%esi,4), %esi
	movl      %esi, 28(%esp)
	movl      36(%esp), %edi
	leal      -4(%edi), %esi
	cmpl      28(%esp), %esi
	ja        LBB3_131
	leal      -4(%ecx,%edx,4), %esi
	addl      %edx, %eax
	notl      %eax
	leal      (%edi,%eax,4), %eax
	cmpl      %eax, %esi
	ja        LBB3_131
	movl      60(%esp), %eax
	jmp       LBB3_130
LBB3_5:
	cmpl      $19, %eax
	jne       LBB3_397
	andl      $16777215, %ebx
	cmpl      $1, %ebx
	jne       LBB3_343
	movl      68(%esp), %edi
	movl      (%edi), %eax
	movl      72(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L3$pb(%ecx), %ecx
	leal      -4(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $3, %eax
	ja        LBB3_9
	movl      $14, (%esp)
	call      _pari_err
LBB3_9:
	movl      %esi, (%edi)
	movl      $637534209, (%esi)
	jmp       LBB3_398
LBB3_297:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
LBB3_298:
	movl      64(%esp), %edi
	movl      68(%esp), %ebx
	movl      72(%esp), %edx
	movl      L_bot$non_lazy_ptr-L3$pb(%edx), %ecx
	cmpl      (%ecx), %eax
	jb        LBB3_301
	cmpl      %eax, %edi
	jbe       LBB3_301
	movl      L_top$non_lazy_ptr-L3$pb(%edx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB3_301
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        LBB3_322
	cmpl      $2, %ecx
	jne       LBB3_304
LBB3_322:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	subl      %ecx, %edi
	movl      %edi, 60(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      %edi, (%ebx)
	je        LBB3_323
	movl      %esi, %ecx
	movl      %esi, 68(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %ebx
	xorl      $16777215, %ebx
	cmpl      $-16777216, %ecx
	movl      $-2, %edi
	movl      $-2, %ebp
	cmove     %ebx, %ebp
	leal      (%ebp,%edx), %esi
	cmpl      $-2, %esi
	jne       LBB3_331
	movl      68(%esp), %esi
	jmp       LBB3_326
LBB3_301:
	movl      %edi, (%ebx)
	movl      %eax, %esi
	jmp       LBB3_398
LBB3_87:
	cmpl      $6, %eax
	jne       LBB3_397
	movl      20(%ebp), %eax
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $33554432, %ecx
	jne       LBB3_90
	movl      68(%esp), %esi
	jmp       LBB3_93
LBB3_32:
	movl      %ebp, (%esp)
	call      _gcopy
	jmp       LBB3_399
LBB3_33:
	movl      8(%ebp), %ebp
LBB3_34:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
	movl      %eax, %esi
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       LBB3_36
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
	jmp       LBB3_37
LBB3_36:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
LBB3_37:
	movl      64(%esp), %ebx
	movl      72(%esp), %esi
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _basistoalg
	movl      L_bot$non_lazy_ptr-L3$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        LBB3_40
	cmpl      %eax, %ebx
	jbe       LBB3_40
	movl      L_top$non_lazy_ptr-L3$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       LBB3_40
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        LBB3_62
	cmpl      $2, %ecx
	jne       LBB3_43
LBB3_62:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	subl      %ecx, %ebx
	movl      %ebx, 60(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      68(%esp), %ecx
	movl      %ebx, (%ecx)
	je        LBB3_63
	movl      %esi, %ecx
	movl      %esi, 68(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %ebx
	xorl      $16777215, %ebx
	cmpl      $-16777216, %ecx
	movl      $-2, %edi
	movl      $-2, %ebp
	cmove     %ebx, %ebp
	leal      (%ebp,%edx), %esi
	cmpl      $-2, %esi
	jne       LBB3_71
	movl      68(%esp), %esi
	jmp       LBB3_66
LBB3_40:
	movl      68(%esp), %ecx
	movl      %ebx, (%ecx)
	movl      %eax, %esi
	jmp       LBB3_398
LBB3_113:
	cmpl      $18, %ecx
	movl      72(%esp), %esi
	jne       LBB3_114
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       LBB3_191
	movl      56(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
	jmp       LBB3_192
LBB3_343:
	movl      4(%ebp), %eax
	movl      $16777215, %ecx
	movl      (%eax), %eax
	andl      %ecx, %eax
	movl      4(%edi), %edx
	andl      (%edx), %ecx
	addl      $-2, %ecx
	cmpl      %ecx, %eax
	jne       LBB3_397
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
	movl      %eax, 56(%esp)
	movl      68(%esp), %eax
	movl      (%eax), %eax
	leal      0(,%ebx,4), %ecx
	movl      %eax, %edx
	subl      %ecx, %edx
	movl      %edx, %esi
	movl      72(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L3$pb(%ecx), %ecx
	movl      %ecx, 48(%esp)
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       LBB3_346
	movl      $14, (%esp)
	call      _pari_err
LBB3_346:
	movl      68(%esp), %eax
	movl      %esi, 60(%esp)
	movl      %esi, (%eax)
	movl      %ebx, %eax
	orl       $637534208, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        LBB3_352
	movl      $1, %esi
	.align 4, 0x90
LBB3_348:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
	movl      (%eax), %ecx
	movl      $-33554432, %edx
	andl      %edx, %ecx
	cmpl      $335544320, %ecx
	jne       LBB3_350
	movl      56(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
	jmp       LBB3_351
LBB3_350:
	movl      4(%edi), %ecx
	movl      (%ecx), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-3, %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
LBB3_351:
	movl      60(%esp), %ecx
	movl      %eax, (%ecx,%esi,4)
	incl      %esi
	cmpl      %ebx, %esi
	jl        LBB3_348
LBB3_352:
	movl      60(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _idealhnf_shallow
	movl      48(%esp), %ecx
	cmpl      (%ecx), %eax
	movl      64(%esp), %edi
	jb        LBB3_355
	cmpl      %eax, %edi
	jbe       LBB3_355
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L3$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB3_355
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	movl      68(%esp), %ebx
	jb        LBB3_375
	cmpl      $2, %ecx
	jne       LBB3_358
LBB3_375:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	subl      %ecx, %edi
	movl      %edi, 60(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      %edi, (%ebx)
	je        LBB3_376
	movl      %esi, %ecx
	movl      %esi, 68(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %ebx
	xorl      $16777215, %ebx
	cmpl      $-16777216, %ecx
	movl      $-2, %edi
	movl      $-2, %ebp
	cmove     %ebx, %ebp
	leal      (%ebp,%edx), %esi
	cmpl      $-2, %esi
	jne       LBB3_384
	movl      68(%esp), %esi
	jmp       LBB3_379
LBB3_397:
	movl      72(%esp), %eax
	leal      L_.str4-L3$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      _pari_err
	xorl      %esi, %esi
LBB3_398:
	movl      %esi, %eax
LBB3_399:
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB3_13:
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_90:
	movl      4(%ebp), %esi
	movl      8(%ebp), %eax
	movl      28(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	movl      %edi, %ecx
	movl      %eax, %edx
	call      _QX_galoisapplymod
	movl      %eax, 60(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _zk_multable
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _FpM_deplin
	movl      %eax, %edx
	movl      68(%esp), %eax
	movl      (%eax), %edi
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L3$pb(%eax), %eax
	movl      %edi, %ecx
	subl      (%eax), %ecx
	movl      12(%ebp), %ebx
	movl      16(%ebp), %eax
	movl      %eax, 56(%esp)
	cmpl      $23, %ecx
	leal      -24(%edi), %ebp
	ja        LBB3_92
	movl      $14, (%esp)
	movl      %edx, 52(%esp)
	call      _pari_err
	movl      52(%esp), %edx
LBB3_92:
	movl      68(%esp), %eax
	movl      %ebp, (%eax)
	movl      $570425350, -24(%edi)
	movl      %esi, -20(%edi)
	movl      60(%esp), %ecx
	movl      %ecx, -16(%edi)
	movl      %ebx, -12(%edi)
	movl      %eax, %esi
	movl      56(%esp), %eax
	movl      %eax, -8(%edi)
	movl      %edx, -4(%edi)
LBB3_93:
	movl      %ebp, (%esp)
	call      _copy_bin
	movl      %eax, %edi
	movl      64(%esp), %ebx
	movl      %ebx, (%esi)
	movl      4(%edi), %eax
	testl     %eax, %eax
	je        LBB3_94
	movl      (%edi), %esi
	movl      %esi, 60(%esp)
	movl      %eax, 56(%esp)
	movl      %eax, %ebp
	subl      8(%edi), %ebp
	sarl      $2, %ebp
	leal      0(,%esi,4), %eax
	movl      %eax, 52(%esp)
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L3$pb(%eax), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	movl      52(%esp), %edx
	subl      %edx, %ebx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       LBB3_100
	movl      $14, (%esp)
	movl      %edx, %esi
	call      _pari_err
	movl      %esi, %edx
LBB3_100:
	movl      68(%esp), %eax
	movl      %ebx, (%eax)
	movl      %edi, %eax
	addl      $16, %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _memcpy
	subl      60(%esp), %ebp
	movl      64(%esp), %eax
	leal      (%eax,%ebp,4), %ecx
	movl      %ecx, %eax
	subl      56(%esp), %eax
	cmpl      $0, 12(%edi)
	je        LBB3_102
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, 60(%esp)
	call      _shiftaddress_canon
	jmp       LBB3_103
LBB3_114:
	cmpl      $19, %ecx
	jne       LBB3_249
	andl      $16777215, %eax
	cmpl      $3, %eax
	jne       LBB3_236
	movl      68(%esp), %ebx
	jmp       LBB3_241
LBB3_249:
	leal      L_.str4-L3$pb(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      _pari_err
	xorl      %ecx, %ecx
LBB3_250:
	movl      48(%esp), %edx
	jmp       LBB3_251
LBB3_355:
	movl      68(%esp), %ecx
	movl      %edi, (%ecx)
	movl      %eax, %esi
	jmp       LBB3_398
LBB3_94:
	movl      72(%esp), %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L3$pb(%ebp), %esi
	movl      (%esi), %ebx
	movl      $1, (%esi)
	movl      %edi, (%esp)
	call      _free
	movl      %ebx, (%esi)
	testl     %ebx, %ebx
	jne       LBB3_97
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L3$pb(%ebp), %eax
	cmpl      $0, (%eax)
	je        LBB3_97
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB3_97:
	movl      L_gen_0$non_lazy_ptr-L3$pb(%ebp), %eax
	movl      (%eax), %esi
	jmp       LBB3_398
LBB3_323:
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_304:
	cmpl      $1, %ecx
	jne       LBB3_396
	movl      4(%eax), %ecx
	movl      %ecx, 56(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %esi
	subl      %esi, %edi
	movl      %edi, 60(%esp)
	cmpl      $2, %ecx
	jb        LBB3_321
	movl      56(%esp), %ebp
	andl      $16777215, %ebp
	movl      %ebp, %edx
	negl      %edx
	cmpl      $-3, %edx
	movl      $-2, %edi
	cmovg     %edx, %edi
	addl      %ebp, %edi
	cmpl      $-1, %edi
	movl      %ecx, %esi
	je        LBB3_315
	incl      %edi
	movl      %edi, 48(%esp)
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	movl      $0, 52(%esp)
	andl      $-8, %edi
	je        LBB3_308
	movl      %edx, 40(%esp)
	movl      %esi, %edx
	notl      %esi
	leal      (%eax,%esi,4), %esi
	movl      %esi, 44(%esp)
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      44(%esp), %esi
	ja        LBB3_311
	leal      -4(%eax,%ebp,4), %esi
	movl      %esi, 44(%esp)
	addl      %ebp, %edx
	notl      %edx
	movl      %ebx, %esi
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movl      %esi, %ebx
	cmpl      %edx, 44(%esp)
	movl      %ecx, %esi
	jbe       LBB3_314
LBB3_311:
	movl      %ecx, %esi
	subl      %edi, %esi
	movl      %edi, 52(%esp)
	movl      40(%esp), %edi
	cmpl      $-3, %edi
	movl      $-2, %edx
	cmovg     %edi, %edx
	leal      1(%edx,%ebp), %edi
	andl      $-8, %edi
	movl      72(%esp), %edx
	movdqa    LCPI3_0-L3$pb(%edx), %xmm0
	movl      64(%esp), %ebx
LBB3_312:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edx
	movups    -12(%eax,%edx,4), %xmm1
	movups    -28(%eax,%edx,4), %xmm2
	subl      %ecx, %edx
	movups    %xmm1, -12(%ebx,%edx,4)
	movups    %xmm2, -28(%ebx,%edx,4)
	addl      $-8, %ebp
	addl      $-8, %edi
	jne       LBB3_312
	movl      68(%esp), %ebx
	jmp       LBB3_314
LBB3_191:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
LBB3_192:
	movl      48(%esp), %edx
	cmpl      (%edx), %eax
	jb        LBB3_151
	cmpl      %eax, %ebp
	jbe       LBB3_151
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L3$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB3_151
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        LBB3_214
	cmpl      $2, %ecx
	jne       LBB3_197
LBB3_214:
	movl      %edi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      %ebp, %esi
	subl      %ecx, %esi
	movl      %esi, 56(%esp)
	movl      %edi, %edx
	andl      $16777215, %edx
	movl      68(%esp), %ecx
	movl      %esi, (%ecx)
	je        LBB3_215
	movl      %ebp, 36(%esp)
	movl      %edi, %ecx
	movl      %edi, 52(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %esi
	xorl      $16777215, %esi
	cmpl      $-16777216, %ecx
	movl      $-2, %ebx
	movl      $-2, %ebp
	cmove     %esi, %ebp
	leal      (%ebp,%edx), %edi
	cmpl      $-2, %edi
	jne       LBB3_223
	movl      56(%esp), %ecx
	jmp       LBB3_218
LBB3_331:
	addl      $2, %esi
	movl      %esi, 56(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	xorl      %ecx, %ecx
	andl      $-8, %esi
	je        LBB3_332
	movl      %esi, 52(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      64(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      68(%esp), %esi
	ja        LBB3_335
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	movl      $0, %ecx
	jbe       LBB3_338
LBB3_335:
	movl      %edx, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LCPI3_0-L3$pb(%ecx), %xmm0
	movl      %edx, %ebx
	movl      64(%esp), %edi
LBB3_336:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%eax,%ecx,4), %xmm1
	movups    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movups    %xmm1, -12(%edi,%ecx,4)
	movups    %xmm2, -28(%edi,%ecx,4)
	addl      $-8, %ebx
	addl      $-8, %ebp
	jne       LBB3_336
	movl      48(%esp), %edx
	movl      52(%esp), %ecx
	movl      $-2, %edi
	jmp       LBB3_338
LBB3_102:
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, 60(%esp)
	call      _shiftaddress
LBB3_103:
	movl      72(%esp), %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L3$pb(%ebp), %esi
	movl      (%esi), %ebx
	movl      $1, (%esi)
	movl      %edi, (%esp)
	call      _free
	movl      %ebx, (%esi)
	testl     %ebx, %ebx
	je        LBB3_105
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_105:
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L3$pb(%ebp), %eax
	cmpl      $0, (%eax)
	je        LBB3_106
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_63:
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_43:
	cmpl      $1, %ecx
	jne       LBB3_83
	movl      4(%eax), %ecx
	movl      %ecx, 56(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %esi
	subl      %esi, %ebx
	movl      %ebx, 60(%esp)
	cmpl      $2, %ecx
	jb        LBB3_60
	movl      56(%esp), %ebp
	andl      $16777215, %ebp
	movl      %ebp, %edi
	negl      %edi
	cmpl      $-3, %edi
	movl      $-2, %ebx
	movl      $-2, %edx
	cmovg     %edi, %edx
	addl      %ebp, %edx
	cmpl      $-1, %edx
	movl      %ecx, %esi
	je        LBB3_54
	incl      %edx
	movl      %edx, 48(%esp)
	cmpl      $-3, %edi
	movl      %edx, %esi
	movl      $-2, %edx
	cmovg     %edi, %edx
	movl      $0, 52(%esp)
	andl      $-8, %esi
	je        LBB3_47
	movl      %esi, 44(%esp)
	movl      %edx, %esi
	notl      %esi
	leal      (%eax,%esi,4), %ebx
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      %ebx, %esi
	ja        LBB3_50
	leal      -4(%eax,%ebp,4), %esi
	addl      %ebp, %edx
	notl      %edx
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movl      $-2, %ebx
	cmpl      %edx, %esi
	movl      %ecx, %esi
	jbe       LBB3_53
LBB3_50:
	movl      %ecx, %esi
	subl      44(%esp), %esi
	cmpl      $-3, %edi
	movl      $-2, %edx
	cmovg     %edi, %edx
	leal      1(%edx,%ebp), %edi
	andl      $-8, %edi
	movl      72(%esp), %edx
	movdqa    LCPI3_0-L3$pb(%edx), %xmm0
	movl      64(%esp), %ebx
LBB3_51:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edx
	movups    -12(%eax,%edx,4), %xmm1
	movups    -28(%eax,%edx,4), %xmm2
	subl      %ecx, %edx
	movups    %xmm1, -12(%ebx,%edx,4)
	movups    %xmm2, -28(%ebx,%edx,4)
	addl      $-8, %ebp
	addl      $-8, %edi
	jne       LBB3_51
	movl      44(%esp), %edx
	movl      %edx, 52(%esp)
	movl      $-2, %ebx
	jmp       LBB3_53
LBB3_71:
	addl      $2, %esi
	movl      %esi, 56(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	xorl      %ecx, %ecx
	andl      $-8, %esi
	je        LBB3_72
	movl      %esi, 52(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      64(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      68(%esp), %esi
	ja        LBB3_75
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	movl      $0, %ecx
	jbe       LBB3_78
LBB3_75:
	movl      %edx, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LCPI3_0-L3$pb(%ecx), %xmm0
	movl      %edx, %ebx
	movl      64(%esp), %edi
LBB3_76:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%eax,%ecx,4), %xmm1
	movups    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movups    %xmm1, -12(%edi,%ecx,4)
	movups    %xmm2, -28(%edi,%ecx,4)
	addl      $-8, %ebx
	addl      $-8, %ebp
	jne       LBB3_76
	movl      48(%esp), %edx
	movl      52(%esp), %ecx
	movl      $-2, %edi
	jmp       LBB3_78
LBB3_236:
	movl      %edx, 40(%esp)
	cmpl      $1, %eax
	jne       LBB3_240
	leal      -4(%ebp), %ecx
	movl      48(%esp), %edx
	subl      (%edx), %ebp
	cmpl      $3, %ebp
	ja        LBB3_239
	movl      $14, (%esp)
	movl      %edx, %esi
	movl      %ecx, %edi
	call      _pari_err
	movl      %edi, %ecx
	movl      %esi, %edx
LBB3_239:
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
	movl      $637534209, (%ecx)
	jmp       LBB3_251
LBB3_19:
	movl      %edi, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 56(%esp)
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovg     %eax, %ecx
	leal      1(%ecx,%edx), %eax
	andl      $-8, %eax
	movl      72(%esp), %ecx
	movdqa    LCPI3_0-L3$pb(%ecx), %xmm0
	movl      $-2, %ebx
LBB3_20:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%ebp,%ecx,4), %xmm1
	movups    -28(%ebp,%ecx,4), %xmm2
	subl      %edi, %ecx
	movups    %xmm1, -12(%esi,%ecx,4)
	movups    %xmm2, -28(%esi,%ecx,4)
	addl      $-8, %edx
	addl      $-8, %eax
	jne       LBB3_20
	movl      56(%esp), %edi
	movl      52(%esp), %eax
LBB3_22:
	cmpl      %eax, 68(%esp)
	jne       LBB3_24
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_24:
	movl      %edi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %ebx
	leal      (%edi,%ebx), %eax
	leal      1(%edi,%ebx), %ecx
	testb     $3, %cl
	je        LBB3_27
	movl      64(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	leal      (%esi,%ecx,4), %ecx
	cmpl      $-3, %edx
	movl      $-2, %ebx
	cmovg     %edx, %ebx
	leal      1(%edi,%ebx), %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB3_26:
	movl      -4(%ebp,%edi,4), %ebx
	movl      %ebx, (%ecx,%edi,4)
	leal      -1(%edi), %edi
	incl      %edx
	jne       LBB3_26
LBB3_27:
	cmpl      $3, %eax
	jae       LBB3_29
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_29:
	movl      64(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%esi,%eax,4), %eax
	.align 4, 0x90
LBB3_30:
	movl      -4(%ebp,%edi,4), %ecx
	movl      %ecx, (%eax,%edi,4)
	movl      -8(%ebp,%edi,4), %ecx
	movl      %ecx, -4(%eax,%edi,4)
	movl      -12(%ebp,%edi,4), %ecx
	movl      %ecx, -8(%eax,%edi,4)
	movl      -16(%ebp,%edi,4), %ecx
	movl      %ecx, -12(%eax,%edi,4)
	leal      -4(%edi), %edi
	cmpl      $1, %edi
	jg        LBB3_30
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_142:
	movl      %edx, (%esp)
	call      _gcopy
	movl      %eax, %ecx
	jmp       LBB3_250
LBB3_144:
	movl      8(%edx), %edx
LBB3_145:
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       LBB3_147
	movl      56(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
	jmp       LBB3_148
LBB3_147:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
LBB3_148:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _basistoalg
	movl      48(%esp), %edx
	cmpl      (%edx), %eax
	jb        LBB3_151
	cmpl      %eax, %ebp
	jbe       LBB3_151
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L3$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB3_151
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        LBB3_172
	cmpl      $2, %ecx
	jne       LBB3_154
LBB3_172:
	movl      %edi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      %ebp, %esi
	subl      %ecx, %esi
	movl      %edi, %edx
	andl      $16777215, %edx
	movl      68(%esp), %ecx
	movl      %esi, (%ecx)
	movl      %esi, %ecx
	je        LBB3_250
	movl      %ecx, 56(%esp)
	movl      %ebp, 36(%esp)
	movl      %edi, %ecx
	movl      %edi, 52(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %esi
	xorl      $16777215, %esi
	cmpl      $-16777216, %ecx
	movl      $-2, %ebx
	movl      $-2, %ebp
	cmove     %esi, %ebp
	leal      (%ebp,%edx), %edi
	cmpl      $-2, %edi
	je        LBB3_182
	addl      $2, %edi
	movl      %edi, 32(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %ebx, %esi
	movl      $0, 40(%esp)
	movl      %edi, %ecx
	andl      $-8, %ecx
	je        LBB3_180
	movl      %ecx, 28(%esp)
	movl      $-2, %ecx
	subl      %esi, %ecx
	leal      (%eax,%ecx,4), %edi
	movl      36(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %edi, %ecx
	ja        LBB3_177
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %esi
	movl      $-2, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %esi
	cmpl      %esi, %edi
	jbe       LBB3_180
LBB3_177:
	movl      %edx, %ecx
	subl      28(%esp), %ecx
	movl      %ecx, 40(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LCPI3_0-L3$pb(%ecx), %xmm0
	movl      %edx, %esi
	movl      36(%esp), %ebx
LBB3_178:
	movd      %esi, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%eax,%ecx,4), %xmm1
	movups    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movups    %xmm1, -12(%ebx,%ecx,4)
	movups    %xmm2, -28(%ebx,%ecx,4)
	addl      $-8, %esi
	addl      $-8, %ebp
	jne       LBB3_178
	movl      40(%esp), %edx
	movl      28(%esp), %ecx
	movl      %ecx, 40(%esp)
	movl      $-2, %ebx
LBB3_180:
	movl      32(%esp), %ecx
	cmpl      40(%esp), %ecx
	je        LBB3_181
LBB3_182:
	movl      %edx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      2(%edx,%ebx), %ecx
	leal      1(%edx,%ebx), %esi
	testb     $3, %cl
	je        LBB3_185
	movl      52(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      36(%esp), %ebx
	leal      (%ebx,%ecx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	leal      2(%edx,%ecx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_184:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%ebx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebp
	jne       LBB3_184
LBB3_185:
	cmpl      $3, %esi
	jb        LBB3_181
	incl      %edx
	movl      52(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      64(%esp), %ebx
LBB3_187:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB3_187
	jmp       LBB3_188
LBB3_151:
	movl      68(%esp), %ecx
	movl      %ebp, (%ecx)
	movl      %eax, %ecx
	jmp       LBB3_251
LBB3_332:
	movl      68(%esp), %esi
LBB3_338:
	cmpl      %ecx, 56(%esp)
	jne       LBB3_326
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_326:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        LBB3_329
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      64(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      $-3, %ebx
	movl      $-2, %ecx
	cmovg     %ebx, %ecx
	leal      2(%edx,%ecx), %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB3_328:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB3_328
LBB3_329:
	cmpl      $3, %ebp
	jae       LBB3_340
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_340:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      64(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	.align 4, 0x90
LBB3_341:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB3_341
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_106:
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_83:
	andl      $16777215, %esi
	leal      (%eax,%esi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	jmp       LBB3_84
LBB3_240:
	leal      L_.str4-L3$pb(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      _pari_err
	movl      68(%esp), %ebx
	movl      (%ebx), %ebp
	movl      40(%esp), %edx
LBB3_241:
	movl      %edx, 40(%esp)
	movl      4(%edx), %edx
	movl      (%edx), %esi
	andl      $16777215, %esi
	leal      0(,%esi,4), %eax
	movl      %ebp, %ecx
	subl      %eax, %ebp
	movl      48(%esp), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	movl      %esi, %ecx
	jae       LBB3_243
	movl      $14, (%esp)
	movl      %edx, %esi
	movl      %ebp, 36(%esp)
	movl      %ecx, %ebp
	call      _pari_err
	movl      %ebp, %ecx
	movl      36(%esp), %ebp
	movl      %esi, %edx
LBB3_243:
	movl      %ebp, (%ebx)
	movl      %ebx, 68(%esp)
	movl      $-16777217, %eax
	andl      (%edx), %eax
	movl      %eax, (%ebp)
	cmpl      $2, %ecx
	movl      56(%esp), %esi
	jb        LBB3_246
	movl      $1, %ebx
LBB3_245:
	movl      %edi, 52(%esp)
	movl      (%edx,%ebx,4), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	movl      %ebp, %esi
	movl      %ecx, %ebp
	movl      %edx, %edi
	call      _galoisapply
	movl      %edi, %edx
	movl      52(%esp), %edi
	movl      %ebp, %ecx
	movl      %esi, %ebp
	movl      56(%esp), %esi
	movl      %eax, (%ebp,%ebx,4)
	incl      %ebx
	cmpl      %ecx, %ebx
	jl        LBB3_245
LBB3_246:
	movl      %edx, %edi
	movl      40(%esp), %eax
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      _ZC_copy
	movl      %eax, %ebx
	movl      68(%esp), %eax
	movl      (%eax), %esi
	leal      -12(%esi), %ecx
	movl      %esi, %eax
	movl      48(%esp), %edx
	subl      (%edx), %eax
	cmpl      $11, %eax
	ja        LBB3_248
	movl      $14, (%esp)
	movl      %ecx, %ebp
	call      _pari_err
	movl      %ebp, %ecx
	movl      48(%esp), %edx
LBB3_248:
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
	movl      $637534211, -12(%esi)
	movl      %edi, -8(%esi)
	movl      %ebx, -4(%esi)
	movl      64(%esp), %ebx
LBB3_251:
	movl      60(%esp), %esi
LBB3_252:
	movl      44(%esp), %eax
	movl      %ecx, -4(%eax)
	movl      %eax, %edi
	cmpl      (%edx), %esi
	jb        LBB3_255
	cmpl      %esi, %ebx
	jbe       LBB3_255
	movl      72(%esp), %eax
	movl      L_top$non_lazy_ptr-L3$pb(%eax), %eax
	cmpl      (%eax), %esi
	jae       LBB3_255
	movl      (%esi), %ecx
	movl      %ecx, %eax
	shrl      $25, %eax
	leal      -21(%eax), %edx
	cmpl      $2, %edx
	jb        LBB3_275
	cmpl      $2, %eax
	jne       LBB3_258
LBB3_275:
	movl      %ecx, %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      %ebx, %esi
	subl      %eax, %esi
	movl      %ecx, %eax
	andl      $16777215, %eax
	movl      68(%esp), %edx
	movl      %esi, (%edx)
	je        LBB3_398
	movl      %esi, 60(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %ebp
	xorl      $16777215, %ebp
	cmpl      $-16777216, %ecx
	movl      $-2, %edx
	movl      $-2, %ebx
	cmove     %ebp, %ebx
	leal      (%ebx,%eax), %esi
	cmpl      $-2, %esi
	jne       LBB3_280
	movl      %eax, %ecx
	jmp       LBB3_278
LBB3_255:
	movl      68(%esp), %eax
	movl      %ebx, (%eax)
	jmp       LBB3_398
LBB3_258:
	cmpl      $1, %eax
	jne       LBB3_294
	movl      %ebx, %edx
	movl      -8(%edi), %ebx
	movl      %ebx, %eax
	andl      $16777215, %eax
	leal      0(,%eax,4), %ecx
	subl      %ecx, %edx
	movl      %edx, 60(%esp)
	cmpl      $2, %eax
	movl      %edi, %esi
	jb        LBB3_274
	movl      %ebx, %ecx
	andl      $16777215, %ecx
	movl      %ecx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edi
	cmovg     %ebp, %edi
	addl      %ecx, %edi
	cmpl      $-1, %edi
	movl      %eax, %edx
	je        LBB3_269
	incl      %edi
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	movl      $0, 72(%esp)
	movl      %edi, %esi
	andl      $-8, %esi
	je        LBB3_262
	movl      %esi, 48(%esp)
	movl      $-4, %esi
	subl      %edx, %esi
	movl      %ebx, 56(%esp)
	movl      44(%esp), %ebx
	leal      (%ebx,%esi,4), %esi
	movl      %esi, 52(%esp)
	movl      56(%esp), %ebx
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      52(%esp), %esi
	ja        LBB3_265
	movl      44(%esp), %esi
	leal      -16(%esi,%ecx,4), %esi
	movl      %esi, 52(%esp)
	addl      %ecx, %edx
	notl      %edx
	movl      64(%esp), %esi
	leal      (%esi,%edx,4), %edx
	cmpl      %edx, 52(%esp)
	movl      %eax, %edx
	jbe       LBB3_268
LBB3_265:
	movl      %eax, %edx
	subl      48(%esp), %edx
	cmpl      $-3, %ebp
	movl      $-2, %esi
	cmovg     %ebp, %esi
	movl      64(%esp), %ebp
	leal      -16(%ebp), %ebp
	leal      1(%esi,%ecx), %esi
	movl      44(%esp), %ebx
	leal      -28(%ebx,%ecx,4), %ecx
	andl      $-8, %esi
LBB3_266:
	movdqu    -16(%ecx), %xmm0
	movups    (%ecx), %xmm1
	movups    %xmm1, (%ebp)
	movdqu    %xmm0, -16(%ebp)
	addl      $-32, %ebp
	addl      $-32, %ecx
	addl      $-8, %esi
	jne       LBB3_266
	movl      48(%esp), %ecx
	movl      %ecx, 72(%esp)
	movl      56(%esp), %ebx
	jmp       LBB3_268
LBB3_280:
	addl      $2, %esi
	cmpl      $-16777216, %ecx
	cmovne    %edx, %ebp
	movl      $0, 72(%esp)
	movl      %esi, %ecx
	andl      $-8, %ecx
	je        LBB3_281
	movl      %ecx, 68(%esp)
	movl      $-5, %ecx
	subl      %ebp, %ecx
	leal      (%edi,%ecx,4), %ecx
	movl      64(%esp), %edi
	leal      -4(%edi), %edi
	cmpl      %ecx, %edi
	ja        LBB3_284
	movl      44(%esp), %ecx
	leal      -16(%ecx,%eax,4), %ecx
	addl      %eax, %ebp
	movl      $-2, %edi
	subl      %ebp, %edi
	movl      64(%esp), %ebp
	leal      (%ebp,%edi,4), %edi
	cmpl      %edi, %ecx
	movl      %eax, %ecx
	jbe       LBB3_287
LBB3_284:
	movl      %eax, %ecx
	subl      68(%esp), %ecx
	movl      64(%esp), %edi
	leal      -16(%edi), %ebp
	movl      44(%esp), %edi
	leal      -28(%edi,%eax,4), %edi
	leal      2(%ebx,%eax), %ebx
	andl      $-8, %ebx
LBB3_285:
	movdqu    -16(%edi), %xmm0
	movups    (%edi), %xmm1
	movups    %xmm1, (%ebp)
	movdqu    %xmm0, -16(%ebp)
	addl      $-32, %ebp
	addl      $-32, %edi
	addl      $-8, %ebx
	jne       LBB3_285
	movl      68(%esp), %edi
	movl      %edi, 72(%esp)
	jmp       LBB3_287
LBB3_294:
	andl      $16777215, %ecx
	leal      -12(%edi,%ecx,4), %eax
	movl      %esi, 8(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      _gerepile
	jmp       LBB3_399
LBB3_72:
	movl      68(%esp), %esi
LBB3_78:
	cmpl      %ecx, 56(%esp)
	jne       LBB3_66
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_66:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        LBB3_69
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      64(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      $-3, %ebx
	movl      $-2, %ecx
	cmovg     %ebx, %ecx
	leal      2(%edx,%ecx), %ebx
	andl      $3, %ebx
	negl      %ebx
LBB3_68:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB3_68
LBB3_69:
	cmpl      $3, %ebp
	jae       LBB3_80
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_80:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      64(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
LBB3_81:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB3_81
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_120:
	movl      64(%esp), %ebx
	jmp       LBB3_252
LBB3_281:
	movl      %eax, %ecx
LBB3_287:
	cmpl      72(%esp), %esi
	jne       LBB3_278
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_278:
	movl      %ecx, %esi
	notl      %esi
	cmpl      $-3, %esi
	cmovg     %esi, %edx
	leal      2(%ecx,%edx), %ebx
	leal      1(%ecx,%edx), %edx
	testb     $1, %bl
	je        LBB3_279
	movl      44(%esp), %esi
	movl      -16(%esi,%ecx,4), %esi
	decl      %ecx
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      64(%esp), %ebx
	movl      %esi, (%ebx,%edi,4)
	jmp       LBB3_290
LBB3_279:
	movl      64(%esp), %ebx
LBB3_290:
	movl      60(%esp), %esi
	testl     %edx, %edx
	je        LBB3_398
	movl      %esi, %edi
	incl      %ecx
	movl      $-2, %edx
	subl      %eax, %edx
	leal      (%ebx,%edx,4), %eax
	movl      44(%esp), %esi
LBB3_292:
	movl      -20(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	movl      -24(%esi,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	addl      $-2, %ecx
	cmpl      $1, %ecx
	jg        LBB3_292
	movl      %edi, %esi
	jmp       LBB3_398
LBB3_376:
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_215:
	movl      48(%esp), %edx
	movl      60(%esp), %esi
	movl      56(%esp), %ecx
	jmp       LBB3_252
LBB3_358:
	cmpl      $1, %ecx
	jne       LBB3_396
	movl      4(%eax), %ecx
	movl      %ecx, 56(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %esi
	subl      %esi, %edi
	movl      %edi, 60(%esp)
	cmpl      $2, %ecx
	jb        LBB3_321
	movl      56(%esp), %ebp
	andl      $16777215, %ebp
	movl      %ebp, %edx
	negl      %edx
	cmpl      $-3, %edx
	movl      $-2, %edi
	cmovg     %edx, %edi
	addl      %ebp, %edi
	cmpl      $-1, %edi
	movl      %ecx, %esi
	je        LBB3_369
	incl      %edi
	movl      %edi, 52(%esp)
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	movl      %edx, 48(%esp)
	xorl      %edx, %edx
	andl      $-8, %edi
	je        LBB3_362
	movl      %esi, %edx
	notl      %esi
	leal      (%eax,%esi,4), %esi
	movl      %esi, 44(%esp)
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      44(%esp), %esi
	ja        LBB3_365
	leal      -4(%eax,%ebp,4), %esi
	movl      %esi, 44(%esp)
	addl      %ebp, %edx
	notl      %edx
	movl      %ebx, %esi
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movl      %esi, %ebx
	cmpl      %edx, 44(%esp)
	movl      $0, %edx
	movl      %ecx, %esi
	jbe       LBB3_368
LBB3_365:
	movl      %ecx, %esi
	subl      %edi, %esi
	movl      %edi, 44(%esp)
	movl      48(%esp), %edi
	cmpl      $-3, %edi
	movl      $-2, %edx
	cmovg     %edi, %edx
	leal      1(%edx,%ebp), %edi
	andl      $-8, %edi
	movl      72(%esp), %edx
	movdqa    LCPI3_0-L3$pb(%edx), %xmm0
	movl      64(%esp), %ebx
LBB3_366:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edx
	movups    -12(%eax,%edx,4), %xmm1
	movups    -28(%eax,%edx,4), %xmm2
	subl      %ecx, %edx
	movups    %xmm1, -12(%ebx,%edx,4)
	movups    %xmm2, -28(%ebx,%edx,4)
	addl      $-8, %ebp
	addl      $-8, %edi
	jne       LBB3_366
	movl      44(%esp), %edx
	movl      68(%esp), %ebx
	jmp       LBB3_368
LBB3_396:
	andl      $16777215, %esi
	leal      (%eax,%esi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
LBB3_84:
	movl      %ecx, 4(%esp)
	call      _gerepile
	jmp       LBB3_399
LBB3_197:
	cmpl      $1, %ecx
	jne       LBB3_235
	movl      4(%eax), %ecx
	movl      %ecx, 52(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	movl      %ebp, %esi
	movl      %ebp, 36(%esp)
	subl      %edx, %esi
	movl      %esi, %edi
	cmpl      $2, %ecx
	jb        LBB3_171
	movl      52(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebx
	negl      %ebx
	cmpl      $-3, %ebx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	addl      %edx, %ebp
	cmpl      $-1, %ebp
	movl      %ecx, %esi
	je        LBB3_208
	incl      %ebp
	movl      %ebp, 32(%esp)
	cmpl      $-3, %ebx
	movl      %ebp, %esi
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	movl      $0, 40(%esp)
	andl      $-8, %esi
	movl      %esi, 28(%esp)
	je        LBB3_201
	movl      %ebp, %esi
	notl      %esi
	leal      (%eax,%esi,4), %esi
	movl      %esi, 24(%esp)
	movl      %ecx, 56(%esp)
	movl      36(%esp), %ecx
	leal      -4(%ecx), %esi
	movl      56(%esp), %ecx
	cmpl      24(%esp), %esi
	ja        LBB3_204
	leal      -4(%eax,%edx,4), %esi
	movl      %esi, 24(%esp)
	addl      %edx, %ebp
	notl      %ebp
	movl      %ecx, %esi
	movl      36(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	movl      %esi, %ecx
	cmpl      %ebp, 24(%esp)
	jbe       LBB3_207
LBB3_204:
	movl      %ecx, 56(%esp)
	movl      %ecx, %esi
	subl      28(%esp), %esi
	cmpl      $-3, %ebx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	leal      1(%ebp,%edx), %ebx
	andl      $-8, %ebx
	movl      72(%esp), %ebp
	movdqa    LCPI3_0-L3$pb(%ebp), %xmm0
	movl      36(%esp), %ecx
LBB3_205:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ebp
	movups    -12(%eax,%ebp,4), %xmm1
	movups    -28(%eax,%ebp,4), %xmm2
	subl      56(%esp), %ebp
	movups    %xmm1, -12(%ecx,%ebp,4)
	movups    %xmm2, -28(%ecx,%ebp,4)
	addl      $-8, %edx
	addl      $-8, %ebx
	jne       LBB3_205
	movl      28(%esp), %ecx
	movl      %ecx, 40(%esp)
	movl      56(%esp), %ecx
	jmp       LBB3_207
LBB3_384:
	addl      $2, %esi
	movl      %esi, 56(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	xorl      %ecx, %ecx
	andl      $-8, %esi
	je        LBB3_385
	movl      %esi, 52(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      64(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      68(%esp), %esi
	ja        LBB3_388
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	movl      $0, %ecx
	jbe       LBB3_391
LBB3_388:
	movl      %edx, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LCPI3_0-L3$pb(%ecx), %xmm0
	movl      %edx, %ebx
	movl      64(%esp), %edi
LBB3_389:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%eax,%ecx,4), %xmm1
	movups    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movups    %xmm1, -12(%edi,%ecx,4)
	movups    %xmm2, -28(%edi,%ecx,4)
	addl      $-8, %ebx
	addl      $-8, %ebp
	jne       LBB3_389
	movl      48(%esp), %edx
	movl      52(%esp), %ecx
	movl      $-2, %edi
	jmp       LBB3_391
LBB3_223:
	addl      $2, %edi
	cmpl      $-16777216, %ecx
	cmovne    %ebx, %esi
	movl      $0, 40(%esp)
	movl      %edi, %ecx
	andl      $-8, %ecx
	je        LBB3_224
	movl      %ecx, 24(%esp)
	movl      $-2, %ecx
	subl      %esi, %ecx
	leal      (%eax,%ecx,4), %ecx
	movl      %ecx, 28(%esp)
	movl      36(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      28(%esp), %ecx
	ja        LBB3_227
	movl      %edi, 32(%esp)
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %esi
	movl      $-2, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %esi
	cmpl      %esi, %edi
	movl      56(%esp), %ecx
	movl      32(%esp), %edi
	jbe       LBB3_230
LBB3_227:
	movl      %edi, 32(%esp)
	movl      %edx, %edi
	subl      24(%esp), %edi
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LCPI3_0-L3$pb(%ecx), %xmm0
	movl      %edx, %esi
	movl      36(%esp), %ebx
LBB3_228:
	movd      %esi, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%eax,%ecx,4), %xmm1
	movups    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movups    %xmm1, -12(%ebx,%ecx,4)
	movups    %xmm2, -28(%ebx,%ecx,4)
	addl      $-8, %esi
	addl      $-8, %ebp
	jne       LBB3_228
	movl      %edi, %edx
	movl      24(%esp), %ecx
	movl      %ecx, 40(%esp)
	movl      $-2, %ebx
	movl      56(%esp), %ecx
	movl      32(%esp), %edi
	jmp       LBB3_230
LBB3_122:
	movl      %ecx, 56(%esp)
	movl      %esi, %eax
	movl      36(%esp), %edi
	movl      $-2, %ecx
	jmp       LBB3_123
LBB3_308:
	movl      %ecx, %esi
LBB3_314:
	movl      52(%esp), %edx
	cmpl      %edx, 48(%esp)
	je        LBB3_321
LBB3_315:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %edi
	leal      1(%esi,%edx), %edx
	testb     $3, %dl
	je        LBB3_318
	movl      56(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      1(%esi,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_317:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       LBB3_317
LBB3_318:
	cmpl      $3, %edi
	movl      68(%esp), %ebx
	jb        LBB3_321
	movl      56(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      64(%esp), %edx
	leal      (%edx,%edi,4), %edx
LBB3_320:
	movl      -4(%eax,%esi,4), %edi
	movl      %edi, (%edx,%esi,4)
	movl      -8(%eax,%esi,4), %edi
	movl      %edi, -4(%edx,%esi,4)
	movl      -12(%eax,%esi,4), %edi
	movl      %edi, -8(%edx,%esi,4)
	movl      -16(%eax,%esi,4), %edi
	movl      %edi, -12(%edx,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB3_320
	jmp       LBB3_321
LBB3_154:
	cmpl      $1, %ecx
	jne       LBB3_235
	movl      4(%eax), %ecx
	movl      %ecx, 52(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	movl      %ebp, %esi
	movl      %ebp, 36(%esp)
	subl      %edx, %esi
	movl      %esi, %edi
	cmpl      $2, %ecx
	jb        LBB3_171
	movl      52(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebx
	negl      %ebx
	cmpl      $-3, %ebx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	addl      %edx, %ebp
	cmpl      $-1, %ebp
	movl      %ecx, %esi
	je        LBB3_165
	movl      %edi, 56(%esp)
	movl      %ecx, 40(%esp)
	incl      %ebp
	movl      %ebp, 32(%esp)
	cmpl      $-3, %ebx
	movl      %ebp, %ecx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	xorl      %edi, %edi
	movl      %ecx, %esi
	andl      $-8, %esi
	movl      %esi, 28(%esp)
	je        LBB3_158
	movl      %ebp, %esi
	notl      %esi
	leal      (%eax,%esi,4), %ecx
	movl      %ecx, 24(%esp)
	movl      36(%esp), %ecx
	leal      -4(%ecx), %esi
	cmpl      24(%esp), %esi
	ja        LBB3_161
	leal      -4(%eax,%edx,4), %esi
	addl      %edx, %ebp
	notl      %ebp
	movl      36(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	cmpl      %ebp, %esi
	movl      40(%esp), %esi
	jbe       LBB3_164
LBB3_161:
	movl      40(%esp), %edi
	movl      %edi, %esi
	subl      28(%esp), %esi
	cmpl      $-3, %ebx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	leal      1(%ebp,%edx), %ebx
	andl      $-8, %ebx
	movl      72(%esp), %ebp
	movdqa    LCPI3_0-L3$pb(%ebp), %xmm0
	movl      36(%esp), %ecx
LBB3_162:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ebp
	movups    -12(%eax,%ebp,4), %xmm1
	movups    -28(%eax,%ebp,4), %xmm2
	subl      %edi, %ebp
	movups    %xmm1, -12(%ecx,%ebp,4)
	movups    %xmm2, -28(%ecx,%ebp,4)
	addl      $-8, %edx
	addl      $-8, %ebx
	jne       LBB3_162
	movl      28(%esp), %edi
	jmp       LBB3_164
LBB3_235:
	andl      $16777215, %edi
	leal      (%eax,%edi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %ebp, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
	movl      %eax, %ecx
	jmp       LBB3_250
LBB3_126:
	movl      %esi, %eax
	movl      36(%esp), %edi
LBB3_130:
	movl      $-2, %ecx
	xorl      %edx, %edx
	jmp       LBB3_134
LBB3_385:
	movl      68(%esp), %esi
LBB3_391:
	cmpl      %ecx, 56(%esp)
	jne       LBB3_379
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_379:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        LBB3_382
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      64(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      $-3, %ebx
	movl      $-2, %ecx
	cmovg     %ebx, %ecx
	leal      2(%edx,%ecx), %ebx
	andl      $3, %ebx
	negl      %ebx
LBB3_381:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB3_381
LBB3_382:
	cmpl      $3, %ebp
	jae       LBB3_393
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_393:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      64(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
LBB3_394:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB3_394
	movl      60(%esp), %esi
	jmp       LBB3_398
LBB3_224:
	movl      56(%esp), %ecx
LBB3_230:
	cmpl      40(%esp), %edi
	je        LBB3_231
LBB3_218:
	movl      %ecx, %edi
	movl      %edx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      2(%edx,%ebx), %ecx
	leal      1(%edx,%ebx), %esi
	testb     $3, %cl
	je        LBB3_221
	movl      52(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      36(%esp), %ebx
	leal      (%ebx,%ecx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	leal      2(%edx,%ecx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_220:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%ebx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebp
	jne       LBB3_220
LBB3_221:
	cmpl      $3, %esi
	jae       LBB3_232
	movl      64(%esp), %ebx
	jmp       LBB3_234
LBB3_232:
	incl      %edx
	movl      52(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      64(%esp), %ebx
LBB3_233:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB3_233
LBB3_234:
	movl      60(%esp), %esi
	movl      48(%esp), %edx
	movl      %edi, %ecx
	jmp       LBB3_252
LBB3_131:
	movl      %ebx, %eax
	subl      24(%esp), %eax
	movl      %eax, 28(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %eax
	movdqa    LCPI3_0-L3$pb(%eax), %xmm0
LBB3_132:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movups    -12(%ecx,%eax,4), %xmm1
	movups    -28(%ecx,%eax,4), %xmm2
	subl      %ebx, %eax
	movups    %xmm1, -12(%edi,%eax,4)
	movups    %xmm2, -28(%edi,%eax,4)
	addl      $-8, %edx
	addl      $-8, %ebp
	jne       LBB3_132
	movl      28(%esp), %ebx
	movl      24(%esp), %edx
	movl      60(%esp), %eax
	movl      $-2, %ecx
LBB3_134:
	cmpl      %edx, 32(%esp)
	jne       LBB3_123
	movl      64(%esp), %ebx
	movl      48(%esp), %edx
	movl      %eax, %esi
	movl      56(%esp), %ecx
	jmp       LBB3_252
LBB3_123:
	movl      %eax, 60(%esp)
	movl      %ebx, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %ecx
	movl      %ecx, %eax
	leal      (%ebx,%eax), %ecx
	leal      1(%ebx,%eax), %eax
	testb     $3, %al
	je        LBB3_124
	movl      52(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%edi,%eax,4), %eax
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	leal      1(%ebx,%esi), %edx
	andl      $3, %edx
	negl      %edx
	movl      40(%esp), %ebp
LBB3_137:
	movl      -4(%ebp,%ebx,4), %esi
	movl      %esi, (%eax,%ebx,4)
	leal      -1(%ebx), %ebx
	incl      %edx
	jne       LBB3_137
	jmp       LBB3_138
LBB3_124:
	movl      40(%esp), %ebp
LBB3_138:
	cmpl      $3, %ecx
	jae       LBB3_139
LBB3_181:
	movl      64(%esp), %ebx
LBB3_188:
	movl      60(%esp), %esi
	movl      48(%esp), %edx
	movl      56(%esp), %ecx
	jmp       LBB3_252
LBB3_139:
	movl      52(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      36(%esp), %eax
	leal      (%eax,%ecx,4), %eax
	movl      60(%esp), %esi
	movl      48(%esp), %edx
LBB3_140:
	movl      -4(%ebp,%ebx,4), %ecx
	movl      %ecx, (%eax,%ebx,4)
	movl      -8(%ebp,%ebx,4), %ecx
	movl      %ecx, -4(%eax,%ebx,4)
	movl      -12(%ebp,%ebx,4), %ecx
	movl      %ecx, -8(%eax,%ebx,4)
	movl      -16(%ebp,%ebx,4), %ecx
	movl      %ecx, -12(%eax,%ebx,4)
	leal      -4(%ebx), %ebx
	cmpl      $1, %ebx
	jg        LBB3_140
	movl      64(%esp), %ebx
	movl      56(%esp), %ecx
	jmp       LBB3_252
LBB3_47:
	movl      %ecx, %esi
LBB3_53:
	movl      52(%esp), %edx
	cmpl      %edx, 48(%esp)
	je        LBB3_60
LBB3_54:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      (%esi,%ebx), %edi
	leal      1(%esi,%ebx), %edx
	testb     $3, %dl
	je        LBB3_57
	movl      56(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      1(%esi,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_56:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       LBB3_56
LBB3_57:
	cmpl      $3, %edi
	jb        LBB3_60
	movl      56(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      64(%esp), %edx
	leal      (%edx,%edi,4), %edx
LBB3_59:
	movl      -4(%eax,%esi,4), %edi
	movl      %edi, (%edx,%esi,4)
	movl      -8(%eax,%esi,4), %edi
	movl      %edi, -4(%edx,%esi,4)
	movl      -12(%eax,%esi,4), %edi
	movl      %edi, -8(%edx,%esi,4)
	movl      -16(%eax,%esi,4), %edi
	movl      %edi, -12(%edx,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB3_59
LBB3_60:
	orl       $33554432, %ecx
	movl      60(%esp), %esi
	movl      %ecx, (%esi)
	jmp       LBB3_61
LBB3_262:
	movl      %eax, %edx
LBB3_268:
	cmpl      72(%esp), %edi
	movl      44(%esp), %esi
	je        LBB3_274
LBB3_269:
	movl      %edx, %ecx
	negl      %ecx
	cmpl      $-3, %ecx
	movl      $-2, %edi
	cmovg     %ecx, %edi
	leal      (%edx,%edi), %ebp
	leal      1(%edx,%edi), %ecx
	testb     $1, %cl
	je        LBB3_271
	movl      -16(%esi,%edx,4), %ecx
	movl      %ecx, 72(%esp)
	decl      %edx
	movl      %edx, %edi
	subl      %eax, %edi
	movl      %ebp, 56(%esp)
	movl      64(%esp), %ebp
	movl      72(%esp), %ecx
	movl      %ecx, (%ebp,%edi,4)
	movl      56(%esp), %ebp
LBB3_271:
	testl     %ebp, %ebp
	movl      %esi, %edi
	je        LBB3_274
	notl      %ebx
	orl       $1056964608, %ebx
	movl      64(%esp), %ecx
	leal      (%ecx,%ebx,4), %ecx
LBB3_273:
	movl      -16(%edi,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%edi,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	leal      -2(%edx), %edx
	cmpl      $1, %edx
	jg        LBB3_273
LBB3_274:
	orl       $33554432, %eax
	movl      60(%esp), %esi
	movl      %eax, (%esi)
LBB3_61:
	movl      68(%esp), %eax
	movl      %esi, (%eax)
	jmp       LBB3_398
LBB3_362:
	movl      %ecx, %esi
LBB3_368:
	cmpl      %edx, 52(%esp)
	je        LBB3_321
LBB3_369:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %edi
	leal      1(%esi,%edx), %edx
	testb     $3, %dl
	je        LBB3_372
	movl      56(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      1(%esi,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_371:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       LBB3_371
LBB3_372:
	cmpl      $3, %edi
	movl      68(%esp), %ebx
	jb        LBB3_321
	movl      56(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      64(%esp), %edx
	leal      (%edx,%edi,4), %edx
LBB3_374:
	movl      -4(%eax,%esi,4), %edi
	movl      %edi, (%edx,%esi,4)
	movl      -8(%eax,%esi,4), %edi
	movl      %edi, -4(%edx,%esi,4)
	movl      -12(%eax,%esi,4), %edi
	movl      %edi, -8(%edx,%esi,4)
	movl      -16(%eax,%esi,4), %edi
	movl      %edi, -12(%edx,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB3_374
LBB3_321:
	orl       $33554432, %ecx
	movl      60(%esp), %esi
	movl      %ecx, (%esi)
	movl      %esi, (%ebx)
	jmp       LBB3_398
LBB3_201:
	movl      %ecx, %esi
LBB3_207:
	movl      40(%esp), %edx
	cmpl      %edx, 32(%esp)
	je        LBB3_171
LBB3_208:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %ebx
	movl      %ebx, 40(%esp)
	leal      1(%esi,%edx), %ebx
	testb     $3, %bl
	je        LBB3_211
	movl      52(%esp), %ebx
	notl      %ebx
	orl       $1056964608, %ebx
	movl      %ecx, %edx
	movl      36(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	movl      %edx, %ecx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      1(%esi,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_210:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       LBB3_210
LBB3_211:
	cmpl      $3, 40(%esp)
	jb        LBB3_171
	movl      52(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      %ecx, %ebx
	movl      36(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movl      %ebx, %ecx
LBB3_213:
	movl      -4(%eax,%esi,4), %ebx
	movl      %ebx, (%edx,%esi,4)
	movl      -8(%eax,%esi,4), %ebx
	movl      %ebx, -4(%edx,%esi,4)
	movl      -12(%eax,%esi,4), %ebx
	movl      %ebx, -8(%edx,%esi,4)
	movl      -16(%eax,%esi,4), %ebx
	movl      %ebx, -12(%edx,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB3_213
	jmp       LBB3_171
LBB3_158:
	movl      40(%esp), %esi
LBB3_164:
	cmpl      %edi, 32(%esp)
	movl      40(%esp), %ecx
	movl      56(%esp), %edi
	je        LBB3_171
LBB3_165:
	movl      %ecx, 40(%esp)
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	leal      (%esi,%ecx), %edx
	movl      %edx, 56(%esp)
	leal      1(%esi,%ecx), %ebx
	testb     $3, %bl
	je        LBB3_168
	movl      52(%esp), %ebx
	notl      %ebx
	orl       $1056964608, %ebx
	movl      36(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      1(%esi,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB3_167:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       LBB3_167
LBB3_168:
	cmpl      $3, 56(%esp)
	movl      40(%esp), %ecx
	jb        LBB3_171
	movl      52(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      %ecx, %ebx
	movl      36(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movl      %ebx, %ecx
LBB3_170:
	movl      -4(%eax,%esi,4), %ebx
	movl      %ebx, (%edx,%esi,4)
	movl      -8(%eax,%esi,4), %ebx
	movl      %ebx, -4(%edx,%esi,4)
	movl      -12(%eax,%esi,4), %ebx
	movl      %ebx, -8(%edx,%esi,4)
	movl      -16(%eax,%esi,4), %ebx
	movl      %ebx, -12(%edx,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB3_170
LBB3_171:
	orl       $33554432, %ecx
	movl      %ecx, (%edi)
	movl      %edi, %ecx
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
LBB3_231:
	movl      64(%esp), %ebx
	movl      60(%esp), %esi
	movl      48(%esp), %edx
	jmp       LBB3_252
	.align 2, 0x90
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
# ----------------------
	.align 4, 0x90
	.globl	_nfgaloismatrix
_nfgaloismatrix:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L4$pb
L4$pb:
	popl      %ebp
	movl      84(%esp), %esi
	movl      80(%esp), %eax
	movl      %eax, (%esp)
	call      _checknf
	movl      %eax, %edi
	movl      28(%edi), %ebx
	movl      (%esi), %ecx
	movl      %ecx, %eax
	andl      $-33554432, %eax
	cmpl      $603979776, %eax
	jne       LBB4_2
	movl      %esi, 52(%esp)
	jmp       LBB4_3
LBB4_2:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
	movl      %eax, 52(%esp)
	movl      (%eax), %ecx
LBB4_3:
	movl      %ecx, 24(%esp)
	andl      $16777215, %ecx
	movl      %ebp, %esi
	movl      %esi, 36(%esp)
	movl      L_avma$non_lazy_ptr-L4$pb(%esi), %eax
	movl      %eax, 40(%esp)
	movl      (%eax), %edx
	movl      %edx, 32(%esp)
	movl      %ecx, %eax
	negl      %eax
	movl      %eax, 44(%esp)
	leal      0(,%ecx,4), %eax
	movl      %edx, %ebp
	subl      %eax, %ebp
	movl      %ebp, 56(%esp)
	movl      L_bot$non_lazy_ptr-L4$pb(%esi), %esi
	movl      %esi, 28(%esp)
	subl      (%esi), %edx
	shrl      $2, %edx
	cmpl      %ecx, %edx
	movl      %ecx, %esi
	jae       LBB4_5
	movl      $14, (%esp)
	call      _pari_err
LBB4_5:
	movl      56(%esp), %ebp
	movl      40(%esp), %ecx
	movl      %ebp, (%ecx)
	movl      %esi, %eax
	orl       $637534208, %eax
	movl      %eax, (%ebp)
	movl      (%ecx), %ebp
	movl      44(%esp), %eax
	leal      (%ebp,%eax,4), %eax
	movl      %eax, 44(%esp)
	movl      %ebp, %eax
	movl      28(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB4_7
	movl      $14, (%esp)
	call      _pari_err
LBB4_7:
	movl      44(%esp), %ecx
	movl      40(%esp), %eax
	movl      %ecx, (%eax)
	movl      %esi, 48(%esp)
	movl      %esi, %eax
	orl       $603979776, %eax
	movl      %eax, (%ecx)
	cmpl      $2, %esi
	jb        LBB4_15
	movl      48(%esp), %eax
	leal      -1(%eax), %ecx
	leal      -2(%eax), %edx
	movl      $1, %eax
	testb     $3, %cl
	je        LBB4_12
	movl      %edx, 28(%esp)
	movl      %ebx, 40(%esp)
	movl      $1, %eax
	subl      48(%esp), %eax
	leal      (%ebp,%eax,4), %edx
	movl      24(%esp), %eax
	addb      $3, %al
	movzbl    %al, %ecx
	andl      $3, %ecx
	xorl      %eax, %eax
	movl      36(%esp), %esi
	movl      L_gen_0$non_lazy_ptr-L4$pb(%esi), %ebx
	.align 4, 0x90
LBB4_10:
	movl      (%ebx), %esi
	movl      %esi, (%edx,%eax,4)
	incl      %eax
	cmpl      %eax, %ecx
	jne       LBB4_10
	incl      %eax
	movl      40(%esp), %ebx
	movl      28(%esp), %edx
LBB4_12:
	cmpl      $3, %edx
	jb        LBB4_15
	subl      48(%esp), %eax
	movl      36(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L4$pb(%ecx), %ecx
	.align 4, 0x90
LBB4_14:
	movl      (%ecx), %edx
	movl      %edx, (%ebp,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 4(%ebp,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 8(%ebp,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 12(%ebp,%eax,4)
	addl      $4, %eax
	jne       LBB4_14
LBB4_15:
	movl      36(%esp), %eax
	movl      L_gen_1$non_lazy_ptr-L4$pb(%eax), %eax
	movl      (%eax), %eax
	movl      $1, %ecx
	movl      48(%esp), %edx
	subl      %edx, %ecx
	movl      %eax, (%ebp,%ecx,4)
	movl      32(%esp), %eax
	movl      44(%esp), %esi
	movl      %esi, (%eax,%ecx,4)
	cmpl      $3, %edx
	movl      %edx, %esi
	jb        LBB4_21
	movl      $2, %ebp
	.align 4, 0x90
LBB4_17:
	movl      (%ebx,%ebp,4), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
	movl      (%eax), %ecx
	movl      $-33554432, %edx
	andl      %edx, %ecx
	cmpl      $335544320, %ecx
	jne       LBB4_19
	movl      52(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
	jmp       LBB4_20
	.align 4, 0x90
LBB4_19:
	movl      4(%edi), %ecx
	movl      (%ecx), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-3, %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
LBB4_20:
	movl      56(%esp), %ecx
	movl      %eax, (%ecx,%ebp,4)
	incl      %ebp
	cmpl      %esi, %ebp
	jl        LBB4_17
LBB4_21:
	movl      56(%esp), %eax
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_idealfrobenius
_idealfrobenius:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $92, %esp
	call      L5$pb
L5$pb:
	popl      %edi
	movl      120(%esp), %ebp
	movl      116(%esp), %esi
	movl      112(%esp), %eax
	movl      %ebp, 88(%esp)
	movl      L_avma$non_lazy_ptr-L5$pb(%edi), %ecx
	movl      %ecx, 72(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 44(%esp)
	movl      %eax, (%esp)
	call      _checknf
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _checkgal
	movl      %ebp, (%esp)
	call      _checkprid
	movl      4(%ebx), %eax
	movl      4(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gequal
	testl     %eax, %eax
	jne       LBB5_2
	leal      L_.str5-L5$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      _pari_err
LBB5_2:
	movl      12(%ebp), %eax
	cmpl      $2, 8(%eax)
	jl        LBB5_4
	leal      L_.str6-L5$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      _pari_err
LBB5_4:
	movl      %edi, 48(%esp)
	movl      16(%ebp), %eax
	movl      8(%eax), %eax
	cmpl      $1, %eax
	jne       LBB5_25
	movl      4(%ebx), %eax
	movl      (%eax), %edi
	movl      %edi, %esi
	andl      $16777215, %esi
	leal      -2(%esi), %ebx
	movl      48(%esp), %eax
	movl      L_bot$non_lazy_ptr-L5$pb(%eax), %eax
	movl      44(%esp), %edx
	movl      %edx, %ecx
	subl      (%eax), %ecx
	movl      $2, %eax
	subl      %esi, %eax
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	movl      72(%esp), %ecx
	movl      %edx, (%ecx)
	leal      (%edx,%eax,4), %edx
	jae       LBB5_7
	movl      $14, (%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      72(%esp), %ecx
LBB5_7:
	leal      -3(%esi), %ebp
	movl      %edx, (%ecx)
	cmpl      $16777216, %ebx
	jb        LBB5_9
	movl      48(%esp), %eax
	leal      L_.str7-L5$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 76(%esp)
	call      _pari_err
	movl      76(%esp), %edx
LBB5_9:
	movl      %ebx, %eax
	orl       $738197504, %eax
	movl      %eax, (%edx)
	testl     %ebp, %ebp
	jle       LBB5_85
	movl      $1, %eax
	cmpl      $3, %esi
	je        LBB5_16
	addl      $5, %edi
	andl      $7, %edi
	movl      %ebp, %ecx
	subl      %edi, %ecx
	movl      $1, %eax
	je        LBB5_15
	movl      %edx, 76(%esp)
	incl      %ecx
	movl      %ecx, 72(%esp)
	movl      $7, %eax
	subl      %esi, %eax
	movl      44(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	negl      %edi
	leal      -3(%esi,%edi), %edx
	xorl      %edi, %edi
	movl      48(%esp), %ecx
	movdqa    LCPI5_1-L5$pb(%ecx), %xmm0
	movdqa    LCPI5_2-L5$pb(%ecx), %xmm1
	.align 4, 0x90
LBB5_13:
	leal      1(%edi), %ecx
	movd      %ecx, %xmm2
	pshufd    $0, %xmm2, %xmm2
	movdqa    %xmm2, %xmm3
	paddd     %xmm0, %xmm3
	paddd     %xmm1, %xmm2
	movdqu    %xmm3, -16(%eax,%edi,4)
	movdqu    %xmm2, (%eax,%edi,4)
	addl      $8, %edi
	cmpl      %edi, %edx
	jne       LBB5_13
	movl      72(%esp), %eax
	movl      76(%esp), %edx
LBB5_15:
	cmpl      %eax, %ebx
	je        LBB5_85
LBB5_16:
	subl      %eax, %ebx
	movl      %ebp, %ecx
	subl      %eax, %ecx
	testb     $3, %bl
	je        LBB5_17
	movl      %edx, 76(%esp)
	movl      $2, %edx
	subl      %esi, %edx
	movl      44(%esp), %edi
	leal      (%edi,%edx,4), %edx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB5_19:
	movl      %eax, (%edx,%eax,4)
	incl      %eax
	incl      %ebx
	jne       LBB5_19
	jmp       LBB5_20
LBB5_25:
	movl      %eax, 36(%esp)
	leal      80(%esp), %eax
	movl      %eax, 12(%esp)
	leal      84(%esp), %eax
	movl      %eax, 8(%esp)
	leal      88(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, %edi
	movl      %edi, (%esp)
	call      _nf_to_Fq_init
	movl      %eax, 32(%esp)
	movl      4(%edi), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	movl      $0, 40(%esp)
	addl      $-3, %ecx
	movl      %ecx, 76(%esp)
	movl      $0, %ebx
	jle       LBB5_32
	movl      88(%esp), %ecx
	movl      %ecx, 60(%esp)
	movl      72(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 52(%esp)
	movl      8(%ecx), %eax
	movl      %eax, 56(%esp)
	movl      16(%ecx), %eax
	movl      8(%eax), %eax
	movl      %eax, 68(%esp)
	movl      116(%esp), %eax
	movl      24(%eax), %eax
	movl      %eax, 64(%esp)
	xorl      %ebp, %ebp
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB5_27:
	movl      64(%esp), %eax
	movl      4(%eax,%ebp,4), %esi
	movl      %esi, (%esp)
	call      _perm_order
	cmpl      68(%esp), %eax
	jne       LBB5_31
	movl      %esi, 4(%esp)
	movl      116(%esp), %eax
	movl      %eax, (%esp)
	call      _galoispermtopol
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _poltobasis
	movl      %eax, %ebx
	movl      56(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _galoisapply
	movl      60(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _idealval
	cmpl      $1, %eax
	je        LBB5_29
	movl      72(%esp), %eax
	movl      52(%esp), %ecx
	movl      %ecx, (%eax)
LBB5_31:
	incl      %ebp
	cmpl      76(%esp), %ebp
	jl        LBB5_27
LBB5_32:
	movl      48(%esp), %ebp
	leal      L_.str8-L5$pb(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      _pari_err
	movl      72(%esp), %ecx
	jmp       LBB5_33
LBB5_29:
	movl      %esi, 40(%esp)
	movl      72(%esp), %ecx
	movl      48(%esp), %ebp
LBB5_33:
	movl      %edi, %eax
	movl      %eax, 28(%esp)
	movl      4(%eax), %eax
	movl      $1073676288, %edi
	andl      4(%eax), %edi
	movl      (%ecx), %esi
	movl      L_bot$non_lazy_ptr-L5$pb(%ebp), %edx
	movl      %edx, 76(%esp)
	movl      %esi, %eax
	subl      (%edx), %eax
	cmpl      $15, %eax
	movl      %ebp, %edx
	leal      -16(%esi), %ebp
	ja        LBB5_35
	movl      $14, (%esp)
	call      _pari_err
	movl      48(%esp), %edx
	movl      72(%esp), %ecx
LBB5_35:
	movl      %ecx, 72(%esp)
	movl      %ebp, (%ecx)
	movl      $335544324, -16(%esi)
	orl       $1073741824, %edi
	movl      %edi, -12(%esi)
	movl      L_gen_0$non_lazy_ptr-L5$pb(%edx), %eax
	movl      (%eax), %eax
	movl      %eax, -8(%esi)
	movl      L_gen_1$non_lazy_ptr-L5$pb(%edx), %eax
	movl      %edx, 48(%esp)
	movl      (%eax), %eax
	movl      %eax, -4(%esi)
	movl      32(%esp), %esi
	movl      %esi, (%esp)
	call      _modpr_genFq
	movl      80(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      28(%esp), %edi
	movl      %edi, %ecx
	movl      %eax, %edx
	call      _QX_galoisapplymod
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_Fq
	movl      %eax, %esi
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _ZX_equal
	xorl      %edi, %edi
	jmp       LBB5_37
	.align 4, 0x90
LBB5_36:
	movl      80(%esp), %eax
	movl      84(%esp), %ecx
	movl      %eax, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      _Fq_pow
	movl      %eax, %ebp
	incl      %edi
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _ZX_equal
LBB5_37:
	testl     %eax, %eax
	je        LBB5_36
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _Fl_inv
	movl      %eax, 4(%esp)
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	call      _perm_pow
	movl      76(%esp), %ecx
	cmpl      (%ecx), %eax
	movl      44(%esp), %edi
	jb        LBB5_41
	cmpl      %eax, %edi
	jbe       LBB5_41
	movl      48(%esp), %ecx
	movl      L_top$non_lazy_ptr-L5$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB5_41
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        LBB5_62
	cmpl      $2, %ecx
	jne       LBB5_44
LBB5_62:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	subl      %ecx, %edi
	movl      %edi, 76(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      72(%esp), %ecx
	movl      %edi, (%ecx)
	je        LBB5_63
	movl      %esi, %ecx
	movl      %esi, 72(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %ebx
	xorl      $16777215, %ebx
	cmpl      $-16777216, %ecx
	movl      $-2, %edi
	movl      $-2, %ebp
	cmove     %ebx, %ebp
	leal      (%ebp,%edx), %esi
	cmpl      $-2, %esi
	jne       LBB5_71
	movl      72(%esp), %esi
	jmp       LBB5_66
LBB5_41:
	movl      72(%esp), %ecx
	movl      %edi, (%ecx)
LBB5_84:
	movl      %eax, %edx
	jmp       LBB5_85
LBB5_17:
	movl      %edx, 76(%esp)
LBB5_20:
	cmpl      $3, %ecx
	jae       LBB5_22
	movl      76(%esp), %edx
	jmp       LBB5_85
LBB5_22:
	movl      $5, %ecx
	subl      %esi, %ecx
	movl      44(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB5_23:
	movl      %eax, -12(%ecx,%eax,4)
	leal      1(%eax), %edx
	movl      %edx, -8(%ecx,%eax,4)
	leal      2(%eax), %edx
	movl      %edx, -4(%ecx,%eax,4)
	leal      3(%eax), %edx
	movl      %edx, (%ecx,%eax,4)
	addl      $4, %eax
	cmpl      %ebp, %edx
	jne       LBB5_23
	movl      76(%esp), %edx
	jmp       LBB5_85
LBB5_63:
	movl      76(%esp), %edx
	jmp       LBB5_85
LBB5_44:
	cmpl      $1, %ecx
	jne       LBB5_83
	movl      4(%eax), %ecx
	movl      %ecx, %edx
	andl      $16777215, %edx
	movl      %edx, 68(%esp)
	leal      0(,%edx,4), %esi
	subl      %esi, %edi
	movl      %edi, 76(%esp)
	cmpl      $2, %edx
	jb        LBB5_61
	movl      %ecx, %edi
	andl      $16777215, %edi
	movl      %edi, %ebx
	negl      %ebx
	cmpl      $-3, %ebx
	movl      $-2, %edx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	addl      %edi, %ebp
	cmpl      $-1, %ebp
	movl      68(%esp), %esi
	je        LBB5_55
	incl      %ebp
	cmpl      $-3, %ebx
	movl      $-2, %edx
	cmovg     %ebx, %edx
	movl      $0, 64(%esp)
	movl      %ebp, %esi
	andl      $-8, %esi
	je        LBB5_48
	movl      %esi, 56(%esp)
	movl      %ebp, 60(%esp)
	movl      %edx, %esi
	notl      %esi
	leal      (%eax,%esi,4), %ebp
	movl      44(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      %ebp, %esi
	ja        LBB5_51
	leal      -4(%eax,%edi,4), %esi
	movl      %esi, 52(%esp)
	addl      %edi, %edx
	notl      %edx
	movl      44(%esp), %ebp
	leal      (%ebp,%edx,4), %edx
	cmpl      %edx, 52(%esp)
	movl      68(%esp), %esi
	jbe       LBB5_54
LBB5_51:
	movl      %ecx, 40(%esp)
	movl      68(%esp), %ecx
	movl      %ecx, %esi
	subl      56(%esp), %esi
	cmpl      $-3, %ebx
	movl      $-2, %edx
	cmovg     %ebx, %edx
	leal      1(%edx,%edi), %ebx
	andl      $-8, %ebx
	movl      48(%esp), %edx
	movdqa    LCPI5_0-L5$pb(%edx), %xmm0
	movl      44(%esp), %ebp
LBB5_52:
	movd      %edi, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edx
	movdqu    -12(%eax,%edx,4), %xmm1
	movdqu    -28(%eax,%edx,4), %xmm2
	subl      %ecx, %edx
	movdqu    %xmm1, -12(%ebp,%edx,4)
	movdqu    %xmm2, -28(%ebp,%edx,4)
	addl      $-8, %edi
	addl      $-8, %ebx
	jne       LBB5_52
	movl      56(%esp), %ecx
	movl      %ecx, 64(%esp)
	movl      40(%esp), %ecx
	jmp       LBB5_54
LBB5_71:
	addl      $2, %esi
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	movl      $0, 68(%esp)
	movl      %esi, %ecx
	andl      $-8, %ecx
	je        LBB5_72
	movl      %ecx, 60(%esp)
	movl      %esi, 64(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      44(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      72(%esp), %esi
	ja        LBB5_75
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      44(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	jbe       LBB5_78
LBB5_75:
	movl      %edx, %ecx
	subl      60(%esp), %ecx
	movl      %ecx, 68(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      48(%esp), %ecx
	movdqa    LCPI5_0-L5$pb(%ecx), %xmm0
	movl      %edx, %ebx
	movl      44(%esp), %edi
	.align 4, 0x90
LBB5_76:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movdqu    -12(%eax,%ecx,4), %xmm1
	movdqu    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movdqu    %xmm1, -12(%edi,%ecx,4)
	movdqu    %xmm2, -28(%edi,%ecx,4)
	addl      $-8, %ebx
	addl      $-8, %ebp
	jne       LBB5_76
	movl      68(%esp), %edx
	movl      60(%esp), %ecx
	movl      %ecx, 68(%esp)
	movl      $-2, %edi
	jmp       LBB5_78
LBB5_83:
	andl      $16777215, %esi
	leal      (%eax,%esi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
	jmp       LBB5_84
LBB5_72:
	movl      %esi, 64(%esp)
	movl      72(%esp), %esi
LBB5_78:
	movl      68(%esp), %ecx
	cmpl      %ecx, 64(%esp)
	jne       LBB5_66
	movl      76(%esp), %edx
	jmp       LBB5_85
LBB5_66:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        LBB5_69
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      44(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      $-3, %ebx
	movl      $-2, %ecx
	cmovg     %ebx, %ecx
	leal      2(%edx,%ecx), %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB5_68:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB5_68
LBB5_69:
	cmpl      $3, %ebp
	jae       LBB5_80
	movl      76(%esp), %edx
	jmp       LBB5_85
LBB5_80:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      44(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	.align 4, 0x90
LBB5_81:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB5_81
	movl      76(%esp), %edx
	jmp       LBB5_85
LBB5_48:
	movl      %ebp, 60(%esp)
	movl      68(%esp), %esi
LBB5_54:
	movl      64(%esp), %edx
	cmpl      %edx, 60(%esp)
	movl      $-2, %edx
	je        LBB5_61
LBB5_55:
	movl      %ecx, %edi
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %ecx
	leal      1(%esi,%edx), %edx
	testb     $3, %dl
	je        LBB5_58
	movl      %edi, %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      44(%esp), %ebx
	leal      (%ebx,%edx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      1(%esi,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
LBB5_57:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       LBB5_57
LBB5_58:
	cmpl      $3, %ecx
	jb        LBB5_61
	notl      %edi
	orl       $1056964608, %edi
	movl      44(%esp), %edx
	leal      (%edx,%edi,4), %edx
LBB5_60:
	movl      -4(%eax,%esi,4), %edi
	movl      %edi, (%edx,%esi,4)
	movl      -8(%eax,%esi,4), %edi
	movl      %edi, -4(%edx,%esi,4)
	movl      -12(%eax,%esi,4), %edi
	movl      %edi, -8(%edx,%esi,4)
	movl      -16(%eax,%esi,4), %edi
	movl      %edi, -12(%edx,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB5_60
LBB5_61:
	movl      68(%esp), %eax
	orl       $33554432, %eax
	movl      76(%esp), %edx
	movl      %eax, (%edx)
	movl      72(%esp), %eax
	movl      %edx, (%eax)
LBB5_85:
	movl      %edx, %eax
	addl      $92, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
_QX_galoisapplymod:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	movl      %ecx, %ebx
	call      L6$pb
L6$pb:
	popl      %edi
	movl      52(%esp), %esi
	leal      20(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      _Q_remove_denom
	movl      %eax, %ebp
	movl      20(%esp), %eax
	testl     %eax, %eax
	je        LBB6_4
	movl      %ebx, 16(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _Z_pval
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _powiu
	movl      %eax, %edi
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _mulii
	movl      %eax, %esi
	movl      20(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _diviiexact
	leal      24(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _invmod
	testl     %eax, %eax
	jne       LBB6_3
	movl      24(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _gmodulo
	movl      %eax, 4(%esp)
	movl      $20, (%esp)
	call      _pari_err
LBB6_3:
	movl      24(%esp), %ebx
	jmp       LBB6_5
LBB6_4:
	movl      %ebx, 16(%esp)
	movl      L_gen_1$non_lazy_ptr-L6$pb(%edi), %eax
	movl      (%eax), %ebx
	movl      %ebx, %edi
LBB6_5:
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _FpX_red
	movl      %eax, %ebp
	movl      %esi, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      _FpC_red
	movl      %esi, 12(%esp)
	movl      %eax, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _FpX_FpC_nfpoleval
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      _FpC_Fp_mul
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _gdivexact
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"galois"
L_.str1:
	.asciz	"galois of degree higher than 11"
L_.str2:
	.asciz	"galois (bug1)"
L_.str3:
	.asciz	"galois (bug2)"
L_.str4:
	.asciz	"galoisapply"
L_.str5:
	.asciz	"incompatible data in idealfrobenius"
L_.str6:
	.asciz	"ramified prime in idealfrobenius"
L_.str7:
	.asciz	"lg()"
L_.str8:
	.asciz	"Frobenius element not found"
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L_LOG2$non_lazy_ptr:
	.indirect_symbol _LOG2
	.long	0
# ----------------------
L_PARI_SIGINT_block$non_lazy_ptr:
	.indirect_symbol _PARI_SIGINT_block
	.long	0
# ----------------------
L_PARI_SIGINT_pending$non_lazy_ptr:
	.indirect_symbol _PARI_SIGINT_pending
	.long	0
# ----------------------
L_avma$non_lazy_ptr:
	.indirect_symbol _avma
	.long	0
# ----------------------
L_bot$non_lazy_ptr:
	.indirect_symbol _bot
	.long	0
# ----------------------
L_gen_0$non_lazy_ptr:
	.indirect_symbol _gen_0
	.long	0
# ----------------------
L_gen_1$non_lazy_ptr:
	.indirect_symbol _gen_1
	.long	0
# ----------------------
L_top$non_lazy_ptr:
	.indirect_symbol _top
	.long	0
# ----------------------
	.set	Ltmp0,LJTI0_0-L0$pb
	.set	Ltmp1,LJTI0_1-L0$pb
	.set	L0_0_set_10,LBB0_10-L0$pb
	.set	L0_0_set_19,LBB0_19-L0$pb
	.set	L0_0_set_27,LBB0_27-L0$pb
	.set	L0_0_set_31,LBB0_31-L0$pb
	.set	L0_1_set_47,LBB0_47-L0$pb
	.set	L0_1_set_50,LBB0_50-L0$pb
	.set	L0_1_set_54,LBB0_54-L0$pb
	.set	L0_1_set_55,LBB0_55-L0$pb
	.set	Ltmp2,LJTI3_0-L3$pb
	.set	Ltmp3,LJTI3_1-L3$pb
	.set	L3_0_set_10,LBB3_10-L3$pb
	.set	L3_0_set_397,LBB3_397-L3$pb
	.set	L3_0_set_32,LBB3_32-L3$pb
	.set	L3_0_set_33,LBB3_33-L3$pb
	.set	L3_0_set_34,LBB3_34-L3$pb
	.set	L3_1_set_117,LBB3_117-L3$pb
	.set	L3_1_set_249,LBB3_249-L3$pb
	.set	L3_1_set_142,LBB3_142-L3$pb
	.set	L3_1_set_144,LBB3_144-L3$pb
	.set	L3_1_set_145,LBB3_145-L3$pb

.subsections_via_symbols
