	.section       __TEXT,__literal8,8byte_literals
	.p2align 3
LCPI22_0:
	.long	0
	.long	1077018624
LCPI22_1:
	.long	0
	.long	1067450368
LCPI22_2:
	.long	0
	.long	1077215232
LCPI22_3:
	.long	0
	.long	1078263808
LCPI22_4:
	.long	0
	.long	1075576832
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_polgalois
_polgalois:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $188, %esp
	call      L22$pb
L22$pb:
	popl      %edi
	movl      208(%esp), %esi
	movl      %eax, 20(%esp)
	movl      (%eax), %eax
	movl      %eax, 32(%esp)
	movl      (%esi), %ebx
	movl      %ebx, %eax
	andl      $-33554432, %eax
	cmpl      $335544320, %eax
	je        LBB22_2
	movl      %eax, 4(%esp)
	movl      $22, (%esp)
	call      _pari_err
	movl      (%esi), %ebx
LBB22_2:
	movl      %edi, 92(%esp)
	andl      $16777215, %ebx
	movl      %ebx, %esi
	addl      $-3, %ebx
	jle       LBB22_5
	cmpl      $12, %ebx
	movl      92(%esp), %ebp
	jl        LBB22_7
	movl      %eax, 4(%esp)
	movl      $7, (%esp)
	jmp       LBB22_6
LBB22_5:
	movl      92(%esp), %ebp
	movl      %eax, 4(%esp)
	movl      $21, (%esp)
LBB22_6:
	call      _pari_err
LBB22_7:
	movl      208(%esp), %eax
	movl      %eax, (%esp)
	call      _Q_primpart
	movl      %eax, %edi
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _RgX_check_ZX
	movl      %edi, (%esp)
	call      _ZX_is_irred
	testl     %eax, %eax
	jne       LBB22_9
	movl      92(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $7, (%esp)
	call      _pari_err
LBB22_9:
	cmpl      $3, %ebx
	jg        LBB22_13
	cmpl      $5, %esi
	je        LBB22_287
	cmpl      $4, %esi
	jne       LBB22_288
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $1, %edx
	jmp       LBB22_307
LBB22_13:
	movl      %edi, (%esp)
	movl      $0, 4(%esp)
	call      _ZX_primitive_to_monic
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _ZX_Z_normalize
	movl      %eax, %edx
	cmpl      $7, %ebx
	jle       LBB22_15
	movl      212(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      _galoisbig
	jmp       LBB22_309
LBB22_15:
	movl      %ebx, 48(%esp)
	movl      20(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      92(%esp), %ecx
	movsd     (%eax), %xmm0
	movsd     LCPI22_0-L22$pb(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	movsd     LCPI22_1-L22$pb(%ecx), %xmm1
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 160(%esp)
	movsd     LCPI22_2-L22$pb(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 168(%esp)
	movsd     LCPI22_3-L22$pb(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 152(%esp)
	movsd     LCPI22_4-L22$pb(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 144(%esp)
	addl      $-7, %esi
	movl      Ltmp7(%ecx,%esi,4), %eax
	addl      %ecx, %eax
	movl      %eax, 128(%esp)
	movl      %eax, 52(%esp)
	movl      %eax, 108(%esp)
	movl      %eax, 112(%esp)
	movl      %eax, 132(%esp)
	movl      %eax, 104(%esp)
	movl      %edx, 120(%esp)
	movl      %edx, %eax
	movl      %esi, 124(%esp)
	jmp       LBB22_17
# ----------------------
	.p2align 4, 0x90
LBB22_16:
	movl      20(%esp), %eax
	movl      116(%esp), %ecx
	movl      %ecx, (%eax)
	movl      120(%esp), %eax
	movl      %eax, (%esp)
	call      _tschirnhaus
	movl      124(%esp), %esi
LBB22_17:
	movl      %eax, 56(%esp)
	movl      %eax, (%esp)
	call      _cauchy_bound
	fstpl     176(%esp)
	cmpl      $3, %esi
	ja        LBB22_16
	movsd     176(%esp), %xmm0
	movsd     %xmm0, 80(%esp)
	jmp       *128(%esp)
LBB22_19:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 36(%esp)
	movl      %eax, 24(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB22_21
	movl      $14, (%esp)
	call      _pari_err
LBB22_21:
	movl      20(%esp), %eax
	movl      36(%esp), %ecx
	movl      %ecx, (%eax)
	movl      24(%esp), %eax
	movl      $570425351, -28(%eax)
	movsd     80(%esp), %xmm0
	mulsd     160(%esp), %xmm0
	cvttsd2si %xmm0, %eax
	addl      $4, %eax
	jmp       LBB22_23
# ----------------------
	.p2align 4, 0x90
LBB22_22:
	movl      28(%esp), %eax
	leal      -2(%eax,%eax), %eax
LBB22_23:
	movl      %eax, 28(%esp)
	movl      %eax, 4(%esp)
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _cleanroots
	movl      %eax, %ebp
	movl      4(%ebp), %edi
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      4(%ebp), %eax
	movl      16(%ebp), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gmul
	movl      %eax, %esi
	movl      12(%ebp), %edi
	movl      16(%ebp), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %ebx
	movl      8(%ebp), %eax
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      24(%esp), %ecx
	movl      %eax, -24(%ecx)
	movl      (%ebp), %edx
	movl      %edx, %esi
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      %ebx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_25
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
	movl      %ebx, %edx
	movl      16(%esp), %ebx
LBB22_25:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        LBB22_36
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        LBB22_34
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        LBB22_34
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_31
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       LBB22_31
	movl      16(%esp), %eax
	jmp       LBB22_34
LBB22_31:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_32:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_32
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        LBB22_36
# ----------------------
	.p2align 4, 0x90
LBB22_34:
	leal      -4(%ebx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_35:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_35
LBB22_36:
	movl      4(%edi), %eax
	movl      8(%edi), %ebx
	movl      %ebx, 4(%edi)
	movl      %eax, 8(%edi)
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
	movl      24(%esp), %ecx
	movl      %eax, -20(%ecx)
	movl      (%ebp), %edx
	movl      %edx, %esi
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      %ebx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_38
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
	movl      %ebx, %edx
	movl      16(%esp), %ebx
LBB22_38:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        LBB22_49
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        LBB22_47
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        LBB22_47
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_44
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       LBB22_44
	movl      16(%esp), %eax
	jmp       LBB22_47
LBB22_44:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_45:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_45
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        LBB22_49
# ----------------------
	.p2align 4, 0x90
LBB22_47:
	leal      -4(%ebx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_48:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_48
LBB22_49:
	movl      4(%edi), %eax
	movl      12(%edi), %ebx
	movl      %ebx, 4(%edi)
	movl      %eax, 12(%edi)
	movl      8(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
	movl      24(%esp), %ecx
	movl      %eax, -16(%ecx)
	movl      (%ebp), %edx
	movl      %edx, %esi
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      %ebx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_51
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
	movl      %ebx, %edx
	movl      16(%esp), %ebx
LBB22_51:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        LBB22_62
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        LBB22_60
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        LBB22_60
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_57
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       LBB22_57
	movl      16(%esp), %eax
	jmp       LBB22_60
LBB22_57:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_58:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_58
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        LBB22_62
# ----------------------
	.p2align 4, 0x90
LBB22_60:
	leal      -4(%ebx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_61:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_61
LBB22_62:
	movl      4(%edi), %eax
	movl      16(%edi), %ebx
	movl      %ebx, 4(%edi)
	movl      %eax, 16(%edi)
	movl      8(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
	movl      24(%esp), %ecx
	movl      %eax, -12(%ecx)
	movl      (%ebp), %edx
	movl      %edx, %esi
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      %ebx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_64
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
	movl      %ebx, %edx
	movl      16(%esp), %ebx
LBB22_64:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        LBB22_75
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        LBB22_73
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        LBB22_73
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_70
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       LBB22_70
	movl      16(%esp), %eax
	jmp       LBB22_73
LBB22_70:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_71:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_71
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        LBB22_75
# ----------------------
	.p2align 4, 0x90
LBB22_73:
	leal      -4(%ebx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_74:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_74
LBB22_75:
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 8(%edi)
	movl      %eax, 12(%edi)
	movl      4(%edi), %ebx
	movl      %ecx, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
	movl      24(%esp), %ecx
	movl      %eax, -8(%ecx)
	movl      (%ebp), %edx
	movl      %edx, %esi
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      %ebx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_77
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
	movl      %ebx, %edx
	movl      16(%esp), %ebx
LBB22_77:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        LBB22_88
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        LBB22_86
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        LBB22_86
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_83
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       LBB22_83
	movl      16(%esp), %eax
	jmp       LBB22_86
LBB22_83:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_84:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_84
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        LBB22_88
# ----------------------
	.p2align 4, 0x90
LBB22_86:
	leal      -4(%ebx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_87:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_87
LBB22_88:
	movl      12(%edi), %eax
	movl      16(%edi), %ecx
	movl      %ecx, 12(%edi)
	movl      %eax, 16(%edi)
	movl      4(%edi), %ebx
	movl      8(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, %esi
	movl      12(%edi), %ebp
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      24(%esp), %ecx
	movl      %eax, -4(%ecx)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
	movl      %eax, %ebx
	movl      %ebx, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      %eax, %esi
	movl      %ebx, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_90
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_90:
	cmpl      $-9, %ecx
	jge       LBB22_22
	movl      %esi, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	je        LBB22_16
	movl      %esi, (%esp)
	call      _ZX_factor
	movl      4(%eax), %ecx
	movl      (%ecx), %eax
	movl      $16777215, %edx
	andl      %edx, %eax
	cmpl      $4, %eax
	je        LBB22_328
	cmpl      $3, %eax
	movl      48(%esp), %esi
	je        LBB22_330
	cmpl      $2, %eax
	je        LBB22_331
	movl      108(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
LBB22_96:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 36(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB22_98
	movl      $14, (%esp)
	call      _pari_err
LBB22_98:
	movl      20(%esp), %eax
	movl      36(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $570425351, (%ecx)
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 44(%esp)
	movl      %eax, 72(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB22_100
	movl      $14, (%esp)
	call      _pari_err
LBB22_100:
	movl      20(%esp), %eax
	movl      44(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $738197511, (%ecx)
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 76(%esp)
	movl      %eax, 68(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB22_102
	movl      $14, (%esp)
	call      _pari_err
LBB22_102:
	movl      20(%esp), %eax
	movl      76(%esp), %ecx
	movl      %ecx, (%eax)
	movl      68(%esp), %eax
	movl      $738197511, -28(%eax)
	movsd     80(%esp), %xmm0
	mulsd     168(%esp), %xmm0
	cvttsd2si %xmm0, %ecx
	addl      $4, %ecx
	jmp       LBB22_104
# ----------------------
	.p2align 4, 0x90
LBB22_103:
	movl      60(%esp), %ecx
	leal      -2(%ecx,%ecx), %ecx
LBB22_104:
	movl      56(%esp), %eax
	movl      %ecx, 60(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _cleanroots
	movl      %eax, %edi
	leal      4(%edi), %eax
	movl      %eax, 96(%esp)
	leal      -16(%edi), %eax
	movl      %eax, 64(%esp)
	movl      $1, %ebp
	movl      %edi, 28(%esp)
# ----------------------
	.p2align 4, 0x90
LBB22_105:
	cmpl      $1, %ebp
	movl      %edi, %ebx
	je        LBB22_133
	movl      (%edi), %ebx
	movl      %ebx, %esi
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %edx
	movl      %edx, 16(%esp)
	movl      %esi, %eax
	negl      %eax
	movl      %eax, 80(%esp)
	leal      0(,%esi,4), %eax
	movl      %edx, %ecx
	subl      %eax, %ecx
	movl      %ecx, 24(%esp)
	movl      %edx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      $5, %ebp
	jg        LBB22_120
	cmpl      %esi, %eax
	jae       LBB22_109
	movl      $14, (%esp)
	call      _pari_err
LBB22_109:
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	movl      %edx, (%eax)
	movl      (%edi), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edx)
	cmpl      $2, %esi
	movl      16(%esp), %edx
	jb        LBB22_119
	leal      -1(%esi), %eax
	cmpl      $8, %eax
	jb        LBB22_117
	addl      $7, %ebx
	andl      $7, %ebx
	subl      %ebx, %eax
	je        LBB22_117
	movl      80(%esp), %ecx
	leal      4(%edx,%ecx,4), %ecx
	leal      (%edi,%esi,4), %edx
	cmpl      %edx, %ecx
	movl      16(%esp), %edx
	jae       LBB22_114
	cmpl      %edx, 96(%esp)
	jb        LBB22_117
LBB22_114:
	movl      64(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
	subl      %eax, %esi
	leal      -16(%edx), %edx
# ----------------------
	.p2align 4, 0x90
LBB22_115:
	movupd    -16(%ecx), %xmm0
	movupd    (%ecx), %xmm1
	movupd    %xmm1, (%edx)
	movupd    %xmm0, -16(%edx)
	addl      $-32, %ecx
	addl      $-32, %edx
	addl      $-8, %eax
	jne       LBB22_115
	testl     %ebx, %ebx
	movl      16(%esp), %edx
	je        LBB22_119
LBB22_117:
	movl      80(%esp), %eax
	leal      -4(%edx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_118:
	movl      -4(%edi,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_118
LBB22_119:
	movl      24(%esp), %ebx
	movl      4(%ebx), %eax
	movl      (%ebx,%ebp,4), %ecx
	movl      %ecx, 4(%ebx)
	movl      %eax, (%ebx,%ebp,4)
	jmp       LBB22_133
# ----------------------
	.p2align 4, 0x90
LBB22_120:
	cmpl      %esi, %eax
	jae       LBB22_122
	movl      $14, (%esp)
	call      _pari_err
LBB22_122:
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	movl      %edx, (%eax)
	movl      (%edi), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edx)
	cmpl      $2, %esi
	movl      16(%esp), %edx
	jb        LBB22_132
	leal      -1(%esi), %eax
	cmpl      $8, %eax
	jb        LBB22_130
	addl      $7, %ebx
	andl      $7, %ebx
	subl      %ebx, %eax
	je        LBB22_130
	movl      80(%esp), %ecx
	leal      4(%edx,%ecx,4), %ecx
	leal      (%edi,%esi,4), %edx
	cmpl      %edx, %ecx
	movl      16(%esp), %edx
	jae       LBB22_127
	cmpl      %edx, 96(%esp)
	jb        LBB22_130
LBB22_127:
	movl      64(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
	subl      %eax, %esi
	leal      -16(%edx), %edx
# ----------------------
	.p2align 4, 0x90
LBB22_128:
	movupd    -16(%ecx), %xmm0
	movupd    (%ecx), %xmm1
	movupd    %xmm1, (%edx)
	movupd    %xmm0, -16(%edx)
	addl      $-32, %ecx
	addl      $-32, %edx
	addl      $-8, %eax
	jne       LBB22_128
	testl     %ebx, %ebx
	movl      16(%esp), %edx
	je        LBB22_132
LBB22_130:
	movl      80(%esp), %eax
	leal      -4(%edx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_131:
	movl      -4(%edi,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_131
LBB22_132:
	movl      24(%esp), %ebx
	movl      8(%ebx), %eax
	movl      20(%ebx), %ecx
	movl      %ecx, 8(%ebx)
	movl      %eax, 20(%ebx)
LBB22_133:
	movl      %ebp, 16(%esp)
	movl      92(%esp), %eax
	movl      %eax, 80(%esp)
	movl      (%eax), %esi
	movl      $1, %edi
	movl      136(%esp), %ebp
# ----------------------
	.p2align 4, 0x90
LBB22_134:
	movl      %esi, 24(%esp)
	movl      -12(%ebp), %eax
	movl      -8(%ebp), %ecx
	movl      (%ebx,%eax,4), %eax
	movl      (%ebx,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %esi
	movl      -4(%ebp), %eax
	movl      (%ebp), %ecx
	movl      (%ebx,%eax,4), %eax
	movl      (%ebx,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, %esi
	movl      (%ebx,%edi,4), %eax
	movl      %eax, (%esp)
	call      _gsqr
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
	movl      %eax, %esi
	incl      %edi
	addl      $16, %ebp
	cmpl      $6, %edi
	jne       LBB22_134
	movl      %esi, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      76(%esp), %ecx
	movl      16(%esp), %ebp
	movl      %eax, (%ecx,%ebp,4)
	movl      %esi, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_137
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_137:
	movl      44(%esp), %eax
	movl      %ecx, (%eax,%ebp,4)
	movl      36(%esp), %eax
	movl      %esi, (%eax,%ebp,4)
	incl      %ebp
	cmpl      $7, %ebp
	movl      28(%esp), %edi
	jne       LBB22_105
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_140
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_140:
	cmpl      $-9, %ecx
	jge       LBB22_103
	movl      %ebx, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	je        LBB22_16
	movl      %ebx, (%esp)
	call      _ZX_factor
	movl      4(%eax), %esi
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      (%esi), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	cmpl      $2, %ecx
	je        LBB22_290
	testl     %eax, %eax
	je        LBB22_292
	movl      60(%esp), %esi
	addl      $-64, %esi
	sarl      $1, %esi
	negl      %esi
	movl      72(%esp), %eax
	cmpl      %esi, -24(%eax)
	jg        LBB22_146
	movl      68(%esp), %eax
	movl      -24(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
	movl      %eax, (%esp)
	call      _gequal0
	movl      $1, %ecx
	testl     %eax, %eax
	jne       LBB22_162
LBB22_146:
	movl      72(%esp), %eax
	cmpl      %esi, -20(%eax)
	jg        LBB22_148
	movl      68(%esp), %eax
	movl      -20(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
	movl      %eax, (%esp)
	call      _gequal0
	movl      $2, %ecx
	testl     %eax, %eax
	jne       LBB22_162
LBB22_148:
	movl      72(%esp), %eax
	cmpl      %esi, -16(%eax)
	jg        LBB22_150
	movl      68(%esp), %eax
	movl      -16(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
	movl      %eax, (%esp)
	call      _gequal0
	movl      $3, %ecx
	testl     %eax, %eax
	jne       LBB22_162
LBB22_150:
	movl      72(%esp), %eax
	cmpl      %esi, -12(%eax)
	jg        LBB22_152
	movl      68(%esp), %eax
	movl      -12(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
	movl      %eax, (%esp)
	call      _gequal0
	movl      $4, %ecx
	testl     %eax, %eax
	jne       LBB22_162
LBB22_152:
	movl      72(%esp), %eax
	cmpl      %esi, -8(%eax)
	jg        LBB22_154
	movl      68(%esp), %eax
	movl      -8(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
	movl      %eax, (%esp)
	call      _gequal0
	movl      $5, %ecx
	testl     %eax, %eax
	jne       LBB22_162
LBB22_154:
	movl      72(%esp), %eax
	cmpl      %esi, -4(%eax)
	jg        LBB22_161
	movl      68(%esp), %eax
	movl      -4(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
	movl      %eax, (%esp)
	call      _gequal0
	testl     %eax, %eax
	je        LBB22_161
	movl      (%edi), %ebp
	movl      %ebp, %edi
	andl      $16777215, %edi
	movl      20(%esp), %eax
	movl      (%eax), %ebx
	leal      0(,%edi,4), %eax
	movl      %ebx, %esi
	subl      %eax, %esi
	movl      %ebx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %edi, %eax
	jae       LBB22_158
	movl      $14, (%esp)
	call      _pari_err
LBB22_158:
	movl      20(%esp), %eax
	movl      %esi, (%eax)
	movl      28(%esp), %eax
	movl      (%eax), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%esi)
	cmpl      $2, %edi
	jb        LBB22_191
	movl      %edi, %eax
	negl      %eax
	leal      -1(%edi), %ecx
	cmpl      $8, %ecx
	jae       LBB22_181
	movl      28(%esp), %edx
	jmp       LBB22_189
LBB22_161:
	movl      112(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
	movl      $7, %ecx
LBB22_162:
	movl      %ecx, 24(%esp)
	movl      (%edi), %edi
	movl      %edi, %ebx
	andl      $16777215, %ebx
	movl      20(%esp), %eax
	movl      (%eax), %ebp
	leal      0(,%ebx,4), %eax
	movl      %ebp, %esi
	subl      %eax, %esi
	movl      %ebp, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       LBB22_164
	movl      $14, (%esp)
	call      _pari_err
LBB22_164:
	movl      20(%esp), %eax
	movl      %esi, (%eax)
	movl      28(%esp), %eax
	movl      (%eax), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        LBB22_177
	movl      %ebx, %eax
	negl      %eax
	leal      -1(%ebx), %ecx
	cmpl      $8, %ecx
	jae       LBB22_167
	movl      28(%esp), %edx
	jmp       LBB22_175
LBB22_167:
	addl      $7, %edi
	andl      $7, %edi
	subl      %edi, %ecx
	je        LBB22_171
	movl      %eax, 16(%esp)
	leal      4(%ebp,%eax,4), %eax
	movl      28(%esp), %edx
	leal      (%edx,%ebx,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_172
	cmpl      %ebp, 96(%esp)
	jae       LBB22_172
	movl      28(%esp), %edx
	movl      16(%esp), %eax
	jmp       LBB22_175
LBB22_171:
	movl      28(%esp), %edx
	jmp       LBB22_175
LBB22_172:
	movl      28(%esp), %eax
	leal      -16(%eax,%ebx,4), %edx
	subl      %ecx, %ebx
	leal      -16(%ebp), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_173:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_173
	testl     %edi, %edi
	movl      28(%esp), %edx
	movl      16(%esp), %eax
	je        LBB22_177
LBB22_175:
	leal      -4(%ebp,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_176:
	movl      -4(%edx,%ebx,4), %ecx
	movl      %ecx, (%eax,%ebx,4)
	decl      %ebx
	cmpl      $1, %ebx
	jg        LBB22_176
LBB22_177:
	movl      4(%esi), %eax
	movl      24(%esp), %edx
	movl      (%esi,%edx,4), %ecx
	movl      %ecx, 4(%esi)
	movl      %eax, (%esi,%edx,4)
LBB22_178:
	movl      80(%esp), %eax
	movl      (%eax), %ebx
	movl      4(%esi), %eax
	movl      8(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %edi
	movl      4(%esi), %eax
	movl      8(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
	movl      %eax, %edi
	movl      8(%esi), %eax
	movl      12(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %ebx
	movl      8(%esi), %eax
	movl      12(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
	movl      %eax, %edi
	movl      12(%esi), %eax
	movl      16(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %ebx
	movl      12(%esi), %eax
	movl      16(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
	movl      %eax, %edi
	movl      16(%esi), %eax
	movl      20(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %ebx
	movl      16(%esi), %eax
	movl      20(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
	movl      %eax, %edi
	movl      4(%esi), %eax
	movl      20(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
	movl      %eax, %ebx
	movl      4(%esi), %eax
	movl      20(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gsub
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
	movl      %eax, (%esp)
	call      _gsqr
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_180
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_180:
	cmpl      $-10, %ecx
	jg        LBB22_103
	jmp       LBB22_284
LBB22_181:
	addl      $7, %ebp
	andl      $7, %ebp
	subl      %ebp, %ecx
	je        LBB22_185
	movl      %eax, 24(%esp)
	leal      4(%ebx,%eax,4), %eax
	movl      28(%esp), %edx
	leal      (%edx,%edi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_186
	cmpl      %ebx, 96(%esp)
	jae       LBB22_186
	movl      28(%esp), %edx
	movl      24(%esp), %eax
	jmp       LBB22_189
LBB22_185:
	movl      28(%esp), %edx
	jmp       LBB22_189
LBB22_186:
	movl      28(%esp), %eax
	leal      -16(%eax,%edi,4), %edx
	subl      %ecx, %edi
	leal      -16(%ebx), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_187:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_187
	testl     %ebp, %ebp
	movl      28(%esp), %edx
	movl      24(%esp), %eax
	je        LBB22_191
LBB22_189:
	leal      -4(%ebx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_190:
	movl      -4(%edx,%edi,4), %ecx
	movl      %ecx, (%eax,%edi,4)
	decl      %edi
	cmpl      $1, %edi
	jg        LBB22_190
LBB22_191:
	movl      8(%esi), %eax
	movl      20(%esi), %ecx
	movl      %ecx, 8(%esi)
	movl      %eax, 20(%esi)
	jmp       LBB22_178
LBB22_192:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 60(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        LBB22_194
	movl      $14, (%esp)
	call      _pari_err
LBB22_194:
	movl      20(%esp), %eax
	movl      60(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $570425351, (%ecx)
	movsd     80(%esp), %xmm0
	mulsd     152(%esp), %xmm0
	cvttsd2si %xmm0, %ecx
	addl      $4, %ecx
	jmp       LBB22_196
# ----------------------
	.p2align 4, 0x90
LBB22_195:
	movl      100(%esp), %ecx
	leal      -2(%ecx,%ecx), %ecx
LBB22_196:
	movl      56(%esp), %eax
	jmp       LBB22_198
LBB22_197:
	movl      132(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
	movl      56(%esp), %eax
	movl      100(%esp), %ecx
# ----------------------
	.p2align 4, 0x90
LBB22_198:
	movl      %ecx, 100(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _cleanroots
	leal      4(%eax), %ecx
	movl      %ecx, 72(%esp)
	movl      %eax, 64(%esp)
	leal      -16(%eax), %eax
	movl      %eax, 68(%esp)
	movl      $1, %ebp
# ----------------------
	.p2align 4, 0x90
LBB22_199:
	cmpl      $1, %ebp
	movl      64(%esp), %edx
	movl      %edx, %esi
	je        LBB22_214
	movl      (%edx), %esi
	movl      %esi, 24(%esp)
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %edi
	leal      0(,%esi,4), %eax
	movl      %edi, %ecx
	subl      %eax, %ecx
	movl      %ecx, 76(%esp)
	movl      %edi, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_202
	movl      $14, (%esp)
	call      _pari_err
	movl      64(%esp), %edx
LBB22_202:
	movl      20(%esp), %eax
	movl      76(%esp), %ebx
	movl      %ebx, (%eax)
	movl      (%edx), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%ebx)
	cmpl      $2, %esi
	jb        LBB22_213
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        LBB22_211
	movl      24(%esp), %ebx
	addl      $7, %ebx
	andl      $7, %ebx
	subl      %ebx, %ecx
	je        LBB22_211
	movl      %eax, 24(%esp)
	leal      4(%edi,%eax,4), %eax
	leal      (%edx,%esi,4), %edx
	cmpl      %edx, %eax
	jae       LBB22_208
	cmpl      %edi, 72(%esp)
	jae       LBB22_208
	movl      64(%esp), %edx
	movl      24(%esp), %eax
	jmp       LBB22_211
LBB22_208:
	movl      68(%esp), %eax
	leal      (%eax,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%edi), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_209:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_209
	testl     %ebx, %ebx
	movl      64(%esp), %edx
	movl      24(%esp), %eax
	je        LBB22_213
# ----------------------
	.p2align 4, 0x90
LBB22_211:
	leal      -4(%edi,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_212:
	movl      -4(%edx,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_212
LBB22_213:
	movl      76(%esp), %esi
	movl      4(%esi), %eax
	movl      (%esi,%ebp,4), %ecx
	movl      %ecx, 4(%esi)
	movl      %eax, (%esi,%ebp,4)
LBB22_214:
	movl      %esi, 76(%esp)
	movl      %ebp, 96(%esp)
	movl      92(%esp), %eax
	movl      (%eax), %ecx
	movl      $1, %edi
	movl      $20, %eax
	movl      $80, %edx
	movl      140(%esp), %esi
# ----------------------
	.p2align 4, 0x90
LBB22_215:
	movl      %edx, 36(%esp)
	movl      %eax, 28(%esp)
	movl      %edi, %eax
	movl      %eax, 16(%esp)
	leal      1(%edi), %ebx
	movl      %esi, 80(%esp)
	movl      %esi, %edi
	movl      %ebx, 44(%esp)
	movl      76(%esp), %ebp
# ----------------------
	.p2align 4, 0x90
LBB22_216:
	movl      %ecx, 24(%esp)
	movl      -12(%edi), %eax
	movl      -8(%edi), %ecx
	movl      (%ebp,%eax,4), %eax
	movl      (%ebp,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %esi
	movl      -4(%edi), %eax
	movl      (%edi), %ecx
	movl      (%ebp,%eax,4), %eax
	movl      (%ebp,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, %esi
	movl      16(%esp), %eax
	movl      (%ebp,%eax,4), %eax
	movl      (%ebp,%ebx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, (%esp)
	call      _gsqr
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
	movl      %eax, %ecx
	incl      %ebx
	addl      $16, %edi
	cmpl      $7, %ebx
	jne       LBB22_216
	movl      28(%esp), %eax
	addl      $-4, %eax
	movl      36(%esp), %edx
	movl      80(%esp), %esi
	addl      %edx, %esi
	addl      $-16, %edx
	movl      44(%esp), %edi
	cmpl      $6, %edi
	jne       LBB22_215
	movl      60(%esp), %eax
	movl      96(%esp), %ebp
	movl      %ecx, (%eax,%ebp,4)
	incl      %ebp
	cmpl      $7, %ebp
	jne       LBB22_199
	movl      %ecx, %ebp
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
	movl      %eax, %edi
	movl      %edi, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      %eax, %esi
	movl      %edi, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_221
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_221:
	cmpl      $-9, %ecx
	jge       LBB22_195
	movl      %esi, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	je        LBB22_16
	movl      %esi, (%esp)
	call      _ZX_factor
	movl      4(%eax), %esi
	movl      (%esi), %eax
	movl      $16777215, %ecx
	andl      %ecx, %eax
	addl      $-2, %eax
	cmpl      $3, %eax
	ja        LBB22_197
	movl      92(%esp), %ecx
	movl      Ltmp8(%ecx,%eax,4), %eax
	addl      %ecx, %eax
	movl      48(%esp), %ebx
	jmp       *%eax
LBB22_225:
	movl      20(%esp), %eax
	movl      (%eax), %edi
	leal      -44(%edi), %eax
	movl      %eax, 60(%esp)
	movl      %edi, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $43, %eax
	ja        LBB22_227
	movl      $14, (%esp)
	call      _pari_err
LBB22_227:
	movl      20(%esp), %eax
	movl      60(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $570425355, -44(%edi)
	movl      64(%esp), %ebx
	movl      4(%ebx), %eax
	movl      8(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      12(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %esi
	movl      16(%ebx), %eax
	movl      20(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      24(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, -40(%edi)
	movl      $1, 28(%esp)
	movl      $1, %ecx
# ----------------------
	.p2align 4, 0x90
LBB22_228:
	movl      $4, %ebp
	movl      %ecx, 44(%esp)
	movl      %ecx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB22_229:
	movl      64(%esp), %edx
	movl      (%edx), %esi
	movl      %esi, 16(%esp)
	andl      $16777215, %esi
	movl      20(%esp), %eax
	movl      (%eax), %ecx
	leal      0(,%esi,4), %eax
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      %ecx, 24(%esp)
	movl      %ecx, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB22_231
	movl      $14, (%esp)
	call      _pari_err
	movl      64(%esp), %edx
LBB22_231:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%edx), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        LBB22_244
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jae       LBB22_234
	movl      24(%esp), %ecx
	jmp       LBB22_242
# ----------------------
	.p2align 4, 0x90
LBB22_234:
	movl      %eax, 36(%esp)
	movl      16(%esp), %eax
	addl      $7, %eax
	andl      $7, %eax
	movl      %eax, 16(%esp)
	subl      %eax, %ecx
	je        LBB22_238
	movl      %ebx, 80(%esp)
	movl      24(%esp), %eax
	movl      36(%esp), %ebx
	leal      4(%eax,%ebx,4), %eax
	leal      (%edx,%esi,4), %edx
	cmpl      %edx, %eax
	movl      24(%esp), %eax
	jae       LBB22_239
	cmpl      %eax, 72(%esp)
	jae       LBB22_239
	movl      64(%esp), %edx
	movl      %eax, %ecx
	movl      36(%esp), %eax
	movl      80(%esp), %ebx
	jmp       LBB22_242
LBB22_238:
	movl      36(%esp), %eax
	movl      24(%esp), %ecx
	jmp       LBB22_242
LBB22_239:
	movl      %eax, %ebx
	movl      68(%esp), %eax
	leal      (%eax,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
	movl      80(%esp), %ebx
# ----------------------
	.p2align 4, 0x90
LBB22_240:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       LBB22_240
	cmpl      $0, 16(%esp)
	movl      64(%esp), %edx
	movl      24(%esp), %ecx
	movl      36(%esp), %eax
	je        LBB22_244
# ----------------------
	.p2align 4, 0x90
LBB22_242:
	leal      -4(%ecx,%eax,4), %eax
# ----------------------
	.p2align 4, 0x90
LBB22_243:
	movl      -4(%edx,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        LBB22_243
LBB22_244:
	movl      28(%esp), %edx
	movl      (%edi,%edx,4), %eax
	movl      (%edi,%ebp,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	movl      %eax, (%edi,%ebp,4)
	movl      4(%edi), %eax
	movl      8(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, %esi
	movl      16(%edi), %eax
	movl      20(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      24(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      60(%esp), %ecx
	movl      %eax, 4(%ecx,%ebx,4)
	incl      %ebx
	incl      %ebp
	cmpl      $7, %ebp
	jne       LBB22_229
	movl      44(%esp), %ecx
	addl      $3, %ecx
	movl      28(%esp), %eax
	incl      %eax
	movl      %eax, 28(%esp)
	cmpl      $4, %eax
	jne       LBB22_228
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_248
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_248:
	cmpl      $-10, %ecx
	jg        LBB22_195
	movl      %ebx, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	je        LBB22_16
	jmp       LBB22_348
LBB22_250:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -144(%eax), %ecx
	movl      %ecx, 60(%esp)
	movl      %eax, %esi
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $143, %eax
	ja        LBB22_252
	movl      $14, (%esp)
	call      _pari_err
LBB22_252:
	movl      20(%esp), %eax
	movl      60(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $570425380, -144(%esi)
	movsd     80(%esp), %xmm0
	mulsd     144(%esp), %xmm0
	cvttsd2si %xmm0, %eax
	addl      $4, %eax
	leal      -140(%esi), %ecx
	movl      %ecx, 28(%esp)
	addl      $-136, %esi
	movl      %esi, 96(%esp)
	jmp       LBB22_254
# ----------------------
	.p2align 4, 0x90
LBB22_253:
	movl      64(%esp), %eax
	leal      -2(%eax,%eax), %eax
LBB22_254:
	movl      %eax, 64(%esp)
	movl      %eax, 4(%esp)
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	xorl      %esi, %esi
	movl      $2, %edi
	call      _cleanroots
	movl      $5, %ebx
	movl      %eax, %ebp
	movl      %ebp, 24(%esp)
# ----------------------
	.p2align 4, 0x90
LBB22_255:
	movl      %esi, 16(%esp)
	negl      %ebx
# ----------------------
	.p2align 4, 0x90
LBB22_256:
	movl      4(%ebp), %eax
	movl      (%ebp,%edi,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
	movl      %eax, %esi
	incl      %edi
	incl      %ebx
	cmpl      $7, %edi
	jg        LBB22_256
	movl      %ebx, 36(%esp)
	movl      28(%esp), %eax
	movl      16(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %edi, %ebx
# ----------------------
	.p2align 4, 0x90
LBB22_258:
	movl      24(%esp), %eax
	movl      (%eax,%ebx,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, (%ebp)
	incl      %ebx
	addl      $4, %ebp
	cmpl      $8, %ebx
	jne       LBB22_258
	movl      16(%esp), %eax
	movl      36(%esp), %ebx
	subl      %ebx, %eax
	leal      1(%eax), %esi
	negl      %ebx
	cmpl      $7, %edi
	movl      24(%esp), %ebp
	jne       LBB22_255
	incl      %eax
	movl      %eax, 16(%esp)
	movl      $3, %ebx
	movl      $4, %ecx
# ----------------------
	.p2align 4, 0x90
LBB22_261:
	negl      %ecx
	movl      %ecx, %edi
# ----------------------
	.p2align 4, 0x90
LBB22_262:
	movl      8(%ebp), %eax
	movl      (%ebp,%ebx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
	movl      %eax, %esi
	incl      %ebx
	incl      %edi
	cmpl      $7, %ebx
	jg        LBB22_262
	movl      %edi, 36(%esp)
	movl      28(%esp), %eax
	movl      16(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebx, %edi
# ----------------------
	.p2align 4, 0x90
LBB22_264:
	movl      24(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, (%ebp)
	incl      %edi
	addl      $4, %ebp
	cmpl      $8, %edi
	jne       LBB22_264
	movl      16(%esp), %edx
	movl      36(%esp), %ecx
	subl      %ecx, %edx
	leal      1(%edx), %eax
	movl      %eax, 16(%esp)
	negl      %ecx
	cmpl      $7, %ebx
	movl      24(%esp), %ebp
	jne       LBB22_261
	incl      %edx
	movl      $4, %ebx
	movl      $3, %edi
# ----------------------
	.p2align 4, 0x90
LBB22_267:
	movl      %edx, 16(%esp)
	negl      %edi
# ----------------------
	.p2align 4, 0x90
LBB22_268:
	movl      12(%ebp), %eax
	movl      (%ebp,%ebx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
	movl      %eax, %esi
	incl      %ebx
	incl      %edi
	cmpl      $7, %ebx
	jg        LBB22_268
	movl      %edi, 36(%esp)
	movl      28(%esp), %eax
	movl      16(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebx, %edi
# ----------------------
	.p2align 4, 0x90
LBB22_270:
	movl      24(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, (%ebp)
	incl      %edi
	addl      $4, %ebp
	cmpl      $8, %edi
	jne       LBB22_270
	movl      16(%esp), %eax
	movl      36(%esp), %edi
	subl      %edi, %eax
	leal      1(%eax), %edx
	negl      %edi
	cmpl      $7, %ebx
	movl      24(%esp), %ebp
	jne       LBB22_267
	incl      %eax
	movl      $5, %edx
	movl      $2, %ecx
# ----------------------
	.p2align 4, 0x90
LBB22_273:
	movl      %ecx, 80(%esp)
	movl      %eax, 36(%esp)
	leal      (%ecx,%eax), %eax
	movl      96(%esp), %ecx
	leal      (%ecx,%eax,4), %ebx
	leal      (%ebp,%edx,4), %eax
	movl      %eax, 16(%esp)
	xorl      %edi, %edi
# ----------------------
	.p2align 4, 0x90
LBB22_274:
	movl      16(%ebp), %eax
	movl      16(%esp), %ecx
	movl      (%ecx,%edi,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, %esi
	call      _gadd
	movl      %esi, %edx
	movl      %eax, %esi
	addl      $-4, %ebx
	leal      1(%edx,%edi), %eax
	incl      %edi
	cmpl      $7, %eax
	jg        LBB22_274
	movl      %ebx, 76(%esp)
	leal      -7(%edx,%edi), %eax
	movl      %eax, 44(%esp)
	addl      %edi, %edx
	movl      28(%esp), %eax
	movl      36(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %edx, 16(%esp)
	movl      %edx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB22_276:
	movl      24(%esp), %eax
	movl      (%eax,%ebx,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
	movl      %eax, (%ebp)
	incl      %ebx
	addl      $4, %ebp
	cmpl      $8, %ebx
	jne       LBB22_276
	movl      36(%esp), %eax
	movl      80(%esp), %ecx
	leal      1(%ecx,%eax), %eax
	subl      %edi, %eax
	subl      %edi, %ecx
	cmpl      $0, 44(%esp)
	movl      24(%esp), %ebp
	movl      16(%esp), %edx
	jne       LBB22_273
	movl      20(%ebp), %eax
	movl      24(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
	movl      28(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
	movl      76(%esp), %ecx
	movl      %eax, (%ecx)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
	movl      %eax, %ebp
	movl      %esi, (%esp)
	call      _imag_i
	movl      %eax, (%esp)
	call      _gexpo
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       LBB22_280
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
LBB22_280:
	cmpl      $-9, %ecx
	jge       LBB22_253
	movl      %ebp, (%esp)
	call      _ZX_is_squarefree
	testl     %eax, %eax
	je        LBB22_16
	movl      %ebp, (%esp)
	call      _ZX_factor
	movl      4(%eax), %eax
	movl      (%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-2, %ecx
	cmpl      $4, %ecx
	jbe       LBB22_318
	movl      104(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
	jmp       LBB22_16
LBB22_284:
	movl      %ebx, (%esp)
	call      _gequal0
	testl     %eax, %eax
	jne       LBB22_16
	movl      %ebx, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_335
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $5, %edx
	jmp       LBB22_294
LBB22_287:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $1, 4(%esp)
	movl      $-1, (%esp)
	movl      $2, %edx
	jmp       LBB22_307
LBB22_288:
	movl      %edi, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_305
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $3, %edx
	jmp       LBB22_307
LBB22_290:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_293
	movl      $4, 4(%esp)
	movl      $1, (%esp)
	movl      $60, %edx
	jmp       LBB22_294
LBB22_292:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $3, 4(%esp)
	movl      $-1, (%esp)
	movl      $20, %edx
	jmp       LBB22_294
LBB22_293:
	movl      $5, 4(%esp)
	movl      $-1, (%esp)
	movl      $120, %edx
LBB22_294:
	movl      48(%esp), %ecx
	jmp       LBB22_308
LBB22_295:
	movl      4(%esi), %eax
	movl      (%eax), %ecx
	movl      %ecx, %edx
	andl      $16777215, %edx
	movl      $9, %edi
	subl      %edx, %edi
	addl      $-3, %edx
	cmpl      $3, %edx
	cmovg     %edi, %edx
	cmpl      $3, %edx
	je        LBB22_312
	cmpl      $2, %edx
	je        LBB22_314
	cmpl      $1, %edx
	jne       LBB22_301
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_321
	movl      $12, 4(%esp)
	movl      $1, (%esp)
	movl      $60, %edx
	jmp       LBB22_307
LBB22_300:
	movl      4(%esi), %eax
	movl      (%eax), %ecx
LBB22_301:
	andl      $16777215, %ecx
	addl      $-3, %ecx
	cmpl      $2, %ecx
	cmovg     %eax, %ebp
	movl      8(%esi), %eax
	movl      12(%esi), %ecx
	movl      $16777215, %edx
	movl      (%eax), %esi
	andl      %edx, %esi
	addl      $-3, %esi
	cmpl      $2, %esi
	cmovle    %ebp, %eax
	movl      (%ecx), %esi
	andl      %edx, %esi
	addl      $-3, %esi
	cmpl      $2, %esi
	cmovg     %ecx, %eax
	andl      (%eax), %edx
	cmpl      $6, %edx
	jne       LBB22_310
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_316
	movl      $1, 4(%esp)
	jmp       LBB22_306
LBB22_304:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
LBB22_305:
	movl      $2, 4(%esp)
LBB22_306:
	movl      $-1, (%esp)
	movl      $6, %edx
LBB22_307:
	movl      %ebx, %ecx
LBB22_308:
	call      _galois_res
LBB22_309:
	addl      $188, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB22_310:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_317
	movl      $4, 4(%esp)
	movl      $1, (%esp)
	movl      $12, %edx
	jmp       LBB22_307
LBB22_312:
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	testl     %eax, %eax
	je        LBB22_322
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	jmp       LBB22_323
LBB22_314:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	testl     %eax, %eax
	je        LBB22_324
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $7, 4(%esp)
	movl      $1, (%esp)
	jmp       LBB22_327
LBB22_316:
	movl      $3, 4(%esp)
	movl      $-1, (%esp)
	movl      $12, %edx
	jmp       LBB22_307
LBB22_317:
	movl      $8, 4(%esp)
	jmp       LBB22_326
LBB22_318:
	movl      92(%esp), %edx
	addl      Ltmp9(%edx,%ecx,4), %edx
	jmp       *%edx
LBB22_319:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	movl      48(%esp), %ecx
	je        LBB22_346
	movl      $6, 4(%esp)
	movl      $1, (%esp)
	movl      $2520, %edx
	jmp       LBB22_308
LBB22_321:
	movl      $14, 4(%esp)
	movl      $-1, (%esp)
	movl      $120, %edx
	jmp       LBB22_307
LBB22_322:
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	testl     %eax, %eax
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	je        LBB22_333
LBB22_323:
	movl      $5, 4(%esp)
	movl      $-1, (%esp)
	movl      $18, %edx
	jmp       LBB22_307
LBB22_324:
	leal      4(%esi), %eax
	movl      4(%esi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $8, %esi
	cmpl      $5, %edx
	cmovne    %eax, %esi
	movl      (%esi), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_334
	movl      $6, 4(%esp)
LBB22_326:
	movl      $-1, (%esp)
LBB22_327:
	movl      $24, %edx
	jmp       LBB22_307
LBB22_328:
	movl      20(%esp), %eax
	movl      32(%esp), %edx
	movl      %edx, (%eax)
	movl      4(%ecx), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $5, %ecx
	movl      48(%esp), %ecx
	jne       LBB22_342
	movl      $2, 4(%esp)
	movl      $1, (%esp)
	jmp       LBB22_343
LBB22_330:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $3, 4(%esp)
	movl      $-1, (%esp)
	movl      $8, %edx
	jmp       LBB22_345
LBB22_331:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        LBB22_344
	movl      $4, 4(%esp)
	movl      $1, (%esp)
	movl      $12, %edx
	jmp       LBB22_345
LBB22_333:
	movl      $9, 4(%esp)
	movl      $-1, (%esp)
	movl      $36, %edx
	jmp       LBB22_307
LBB22_334:
	movl      $11, 4(%esp)
	movl      $-1, (%esp)
	movl      $48, %edx
	jmp       LBB22_307
LBB22_335:
	movl      $2, 4(%esp)
	movl      $1, (%esp)
	movl      $10, %edx
	jmp       LBB22_294
LBB22_336:
	movl      4(%eax), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	cmpl      $31, %eax
	movl      48(%esp), %ecx
	je        LBB22_338
	cmpl      $10, %eax
	jne       LBB22_347
LBB22_338:
	movl      $5, 4(%esp)
	movl      $1, (%esp)
	movl      $168, %edx
	jmp       LBB22_308
LBB22_339:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $3, 4(%esp)
	movl      $1, (%esp)
	movl      $21, %edx
	jmp       LBB22_294
LBB22_340:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $2, 4(%esp)
	movl      $-1, (%esp)
	movl      $14, %edx
	jmp       LBB22_294
LBB22_341:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $7, %edx
	jmp       LBB22_294
LBB22_342:
	movl      $1, 4(%esp)
	movl      $-1, (%esp)
LBB22_343:
	movl      $4, %edx
	jmp       LBB22_308
LBB22_344:
	movl      $5, 4(%esp)
	movl      $-1, (%esp)
	movl      $24, %edx
LBB22_345:
	movl      %esi, %ecx
	jmp       LBB22_308
LBB22_346:
	movl      $7, 4(%esp)
	movl      $-1, (%esp)
	movl      $5040, %edx
	jmp       LBB22_308
LBB22_347:
	movl      $4, 4(%esp)
	movl      $-1, (%esp)
	movl      $42, %edx
	jmp       LBB22_308
LBB22_348:
	movl      %ebx, (%esp)
	call      _ZX_factor
	movl      4(%eax), %esi
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	movl      $16777215, %ecx
	andl      (%esi), %ecx
	cmpl      $2, %ecx
	jne       LBB22_351
	testl     %eax, %eax
	je        LBB22_353
	movl      $15, 4(%esp)
	movl      $1, (%esp)
	movl      $360, %edx
	jmp       LBB22_294
LBB22_351:
	testl     %eax, %eax
	je        LBB22_354
	movl      $10, 4(%esp)
	movl      $1, (%esp)
	movl      $36, %edx
	jmp       LBB22_294
LBB22_353:
	movl      $16, 4(%esp)
	movl      $-1, (%esp)
	movl      $720, %edx
	jmp       LBB22_294
LBB22_354:
	movl      $13, 4(%esp)
	movl      $-1, (%esp)
	movl      $72, %edx
	jmp       LBB22_294
# ----------------------
	.p2align 2, 0x90
LJTI22_0:
	.long	L22_0_set_19
	.long	L22_0_set_96
	.long	L22_0_set_192
	.long	L22_0_set_250
LJTI22_1:
	.long	L22_1_set_319
	.long	L22_1_set_336
	.long	L22_1_set_339
	.long	L22_1_set_340
	.long	L22_1_set_341
LJTI22_2:
	.long	L22_2_set_225
	.long	L22_2_set_295
	.long	L22_2_set_300
	.long	L22_2_set_304
# ----------------------
	.set	Ltmp7,LJTI22_0-L22$pb
	.set	Ltmp8,LJTI22_2-L22$pb
	.set	Ltmp9,LJTI22_1-L22$pb
	.set	L22_0_set_19,LBB22_19-L22$pb
	.set	L22_0_set_96,LBB22_96-L22$pb
	.set	L22_0_set_192,LBB22_192-L22$pb
	.set	L22_0_set_250,LBB22_250-L22$pb
	.set	L22_1_set_319,LBB22_319-L22$pb
	.set	L22_1_set_336,LBB22_336-L22$pb
	.set	L22_1_set_339,LBB22_339-L22$pb
	.set	L22_1_set_340,LBB22_340-L22$pb
	.set	L22_1_set_341,LBB22_341-L22$pb
	.set	L22_2_set_225,LBB22_225-L22$pb
	.set	L22_2_set_295,LBB22_295-L22$pb
	.set	L22_2_set_300,LBB22_300-L22$pb
	.set	L22_2_set_304,LBB22_304-L22$pb

.subsections_via_symbols
