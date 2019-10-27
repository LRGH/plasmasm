	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_polgalois
_polgalois:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $124, %esp
	call      L0000000C
L0000000C:
	popl      %edi
	movl      %edi, 56(%esp)
	movl      144(%esp), %esi
	movl      L_avma$non_lazy_ptr-L0000000C(%edi), %ebx
	movl      %ebx, 60(%esp)
	movl      (%ebx), %eax
	movl      %eax, 32(%esp)
	movl      (%esi), %ebp
	movl      %ebp, %eax
	andl      $-33554432, %eax
	cmpl      $335544320, %eax
	je        L00000050
L00000038:
	leal      LC000046D0-L0000000C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $22, (%esp)
	call      _pari_err
L0000004E:
	movl      (%esi), %ebp
L00000050:
	andl      $16777215, %ebp
	movl      %ebp, 52(%esp)
	movl      %ebp, %eax
	addl      $-3, %eax
	jle       L0000007D
L00000061:
	cmpl      $12, %eax
	movl      %eax, 28(%esp)
	jl        L00000097
L0000006A:
	leal      LC000046D7-L0000000C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $7, (%esp)
	jmp       L00000092
L0000007D:
	movl      %eax, 28(%esp)
	leal      LC000046D0-L0000000C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $21, (%esp)
L00000092:
	call      _pari_err
L00000097:
	movl      %esi, (%esp)
	call      _Q_primpart
L0000009F:
	movl      %eax, %esi
	movl      L_LOG2$non_lazy_ptr-L0000000C(%edi), %eax
	movsd     LC00004660-L0000000C(%edi), %xmm0
	divsd     (%eax), %xmm0
	mulsd     LC00004668-L0000000C(%edi), %xmm0
	movsd     %xmm0, 40(%esp)
	leal      LC00004705-L0000000C(%edi), %eax
	movl      %eax, 36(%esp)
	jmp       L000000E4
L000000CD:
	.align 4, 0x90
L000000D0:
	movl      $0, (%ebx)
	movl      $0, (%esp)
	call      _tschirnhaus
L000000E2:
	movl      %eax, %esi
L000000E4:
	movl      %esi, 68(%esp)
	movl      %esi, (%esp)
	call      _cauchy_bound
L000000F0:
	fstpl     112(%esp)
	leal      -7(%ebp), %eax
	cmpl      $3, %eax
	ja        L000000D0
L000000FC:
	movl      L00000580-L0000000C(%edi,%eax,4), %eax
	addl      %edi, %eax
	jmp       *%eax
L00000107:
	movl      %esi, 68(%esp)
	movl      (%ebx), %eax
	movl      L_bot$non_lazy_ptr-L0000000C(%edi), %ecx
	leal      -28(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        L00000129
L0000011D:
	movl      $14, (%esp)
	call      _pari_err
L00000129:
	movl      %esi, (%ebx)
	movl      $570425351, (%esi)
	cmpl      $-9, 120(%esp)
	jge       L00000310
L0000013C:
	movl      $0, (%esp)
	call      _ZX_is_squarefree
L00000148:
	testl     %eax, %eax
	movl      68(%esp), %esi
	je        L000000D0
L00000150:
	jmp       L00000392
L00000155:
	movsd     112(%esp), %xmm0
	movl      (%ebx), %ecx
	movl      %ecx, 84(%esp)
	leal      -144(%ecx), %ebp
	movl      L_bot$non_lazy_ptr-L0000000C(%edi), %eax
	subl      (%eax), %ecx
	cmpl      $143, %ecx
	ja        L0000018F
L00000177:
	movl      $14, (%esp)
	movsd     %xmm0, 104(%esp)
	call      _pari_err
L00000189:
	movsd     104(%esp), %xmm0
L0000018F:
	movl      %ebp, (%ebx)
	movl      $570425380, (%ebp)
	movl      %ebp, 64(%esp)
	mulsd     40(%esp), %xmm0
	cvttsd2si %xmm0, %eax
	addl      $4, %eax
	jmp       L000001BC
L000001AB:
	.align 4, 0x90
L000001B0:
	movl      72(%esp), %eax
	leal      -2(%eax,%eax), %eax
	movl      68(%esp), %esi
L000001BC:
	movl      %eax, 72(%esp)
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	xorl      %edi, %edi
	movl      $1, %ebx
	movl      $5, %esi
	call      _cleanroots
L000001D8:
	movl      %eax, %ecx
	movl      %ecx, 88(%esp)
	.align 4, 0x90
L000001E0:
	movl      %esi, 80(%esp)
	movl      %ebx, 92(%esp)
	leal      1(%ebx), %ebp
	movl      %ebp, 76(%esp)
	.align 4, 0x90
L000001F0:
	movl      %edi, 96(%esp)
	incl      %esi
	movl      92(%esp), %edi
	.align 4, 0x90
L00000200:
	movl      (%ecx,%edi,4), %eax
	movl      %ecx, %ebx
	movl      (%ebx,%ebp,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
L00000214:
	movl      %ebx, %ecx
	movl      %eax, %ebx
	incl      %ebp
	decl      %esi
	cmpl      $7, %ebp
	jg        L00000200
L0000021F:
	leal      (%ecx,%ebp,4), %eax
	movl      %eax, 104(%esp)
	movl      84(%esp), %eax
	movl      96(%esp), %ecx
	leal      (%eax,%ecx,4), %eax
	movl      %eax, 100(%esp)
	movl      $-35, %edi
	.align 4, 0x90
L00000240:
	movl      104(%esp), %eax
	movl      140(%eax,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L00000257:
	movl      100(%esp), %ecx
	movl      %eax, (%ecx,%edi,4)
	leal      1(%ebp,%edi), %eax
	incl      %edi
	cmpl      $-27, %eax
	jne       L00000240
L00000268:
	movl      96(%esp), %edi
	addl      %esi, %edi
	decl      %esi
	cmpl      $7, %ebp
	movl      88(%esp), %ecx
	jne       L000001F0
L0000027C:
	movl      80(%esp), %esi
	decl      %esi
	movl      76(%esp), %ebx
	cmpl      $6, %ebx
	jne       L000001E0
L0000028E:
	leal      120(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _roots_to_ZX
L000002A2:
	cmpl      $-9, 120(%esp)
	jge       L000001B0
L000002AD:
	movl      $0, (%esp)
	call      _ZX_is_squarefree
L000002B9:
	testl     %eax, %eax
	movl      60(%esp), %ebx
	movl      56(%esp), %edi
	movl      52(%esp), %ebp
	movl      68(%esp), %esi
	je        L000000D0
L000002D1:
	movl      $0, (%esp)
	call      _ZX_factor
L000002DD:
	movl      4(%eax), %eax
	movl      (%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-2, %ecx
	cmpl      $3, %ecx
	jbe       L00000312
L000002F1:
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
L00000305:
	jmp       L000000D0
L0000030A:
	.align 4, 0x90
L00000310:
	jmp       L00000310
L00000312:
	addl      L00000590-L0000000C(%edi,%ecx,4), %edi
	jmp       *%edi
L0000031B:
	movl      %esi, (%esp)
	call      _ZX_disc
L00000323:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L00000333:
	movl      32(%esp), %ecx
	movl      %ecx, (%ebx)
	testl     %eax, %eax
	je        L00000512
L00000341:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $6, 12(%esp)
	movl      $1, 8(%esp)
	movl      $2520, 4(%esp)
	jmp       L00000573
L00000365:
	movl      (%ebx), %eax
	movl      L_bot$non_lazy_ptr-L0000000C(%edi), %ecx
	leal      -28(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        L00000383
L00000377:
	movl      $14, (%esp)
	call      _pari_err
L00000383:
	movl      %esi, (%ebx)
	movl      $570425351, (%esi)
	.align 4, 0x90
L00000390:
	jmp       L00000390
L00000392:
	movl      $0, (%esp)
	call      _ZX_factor
L0000039E:
	movl      4(%eax), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $2, %ecx
	jne       L00000491
L000003B1:
	movl      %esi, (%esp)
	call      _ZX_disc
L000003B9:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L000003C9:
	movl      32(%esp), %ecx
	movl      %ecx, (%ebx)
	testl     %eax, %eax
	je        L00000533
L000003D7:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $4, 12(%esp)
	movl      $1, 8(%esp)
	movl      $12, 4(%esp)
	jmp       L00000573
L000003FB:
	movl      4(%eax), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%ebx)
	cmpl      $10, %eax
	je        L00000419
L00000410:
	cmpl      $31, %eax
	jne       L00000554
L00000419:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $5, 12(%esp)
	movl      $1, 8(%esp)
	movl      $168, 4(%esp)
	jmp       L00000573
L0000043D:
	movl      32(%esp), %eax
	movl      %eax, (%ebx)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $3, 12(%esp)
	movl      $1, 8(%esp)
	movl      $21, 4(%esp)
	jmp       L00000573
L00000467:
	movl      32(%esp), %eax
	movl      %eax, (%ebx)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $2, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $14, 4(%esp)
	jmp       L00000573
L00000491:
	leal      LC000046F7-L0000000C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
L000004A7:
	movl      (%ebx), %eax
	movl      L_bot$non_lazy_ptr-L0000000C(%edi), %esi
	leal      -28(%eax), %edi
	subl      (%esi), %eax
	cmpl      $27, %eax
	ja        L000004C5
L000004B9:
	movl      $14, (%esp)
	call      _pari_err
L000004C5:
	movl      %edi, (%ebx)
	movl      $570425351, (%edi)
	movl      (%ebx), %eax
	leal      -28(%eax), %edi
	subl      (%esi), %eax
	cmpl      $27, %eax
	ja        L000004E5
L000004D9:
	movl      $14, (%esp)
	call      _pari_err
L000004E5:
	movl      %edi, (%ebx)
	movl      $738197511, (%edi)
	movl      (%ebx), %eax
	leal      -28(%eax), %edi
	subl      (%esi), %eax
	cmpl      $27, %eax
	ja        L00000505
L000004F9:
	movl      $14, (%esp)
	call      _pari_err
L00000505:
	movl      %edi, (%ebx)
	movl      $738197511, (%edi)
	.align 4, 0x90
L00000510:
	jmp       L00000510
L00000512:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $7, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $5040, 4(%esp)
	jmp       L00000573
L00000533:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $5, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $24, 4(%esp)
	jmp       L00000573
L00000554:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $4, 12(%esp)
	movl      $-1, 8(%esp)
	movl      $42, 4(%esp)
L00000573:
	call      _galois_res
L00000578:
	addl      $124, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 2, 0x90
L00000580:
	.long	L00000107-L0000000C
	.long	L000004A7-L0000000C
	.long	L00000365-L0000000C
	.long	L00000155-L0000000C
	.align 2, 0x90
L00000590:
	.long	L0000031B-L0000000C
	.long	L000003FB-L0000000C
	.long	L0000043D-L0000000C
	.long	L00000467-L0000000C
# ----------------------
	.align 4, 0x90
	.globl	_nfpoleval
_nfpoleval:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L000005AC
L000005AC:
	popl      %ecx
	movl      68(%esp), %ebp
	movl      $16777215, %esi
	andl      (%ebp), %esi
	cmpl      $2, %esi
	jne       L000005CB
L000005BE:
	movl      L_gen_0$non_lazy_ptr-L000005AC(%ecx), %eax
	movl      (%eax), %ecx
	jmp       L000006CF
L000005CB:
	movl      64(%esp), %edi
	movl      L_avma$non_lazy_ptr-L000005AC(%ecx), %eax
	movl      %ecx, 36(%esp)
	movl      %eax, 32(%esp)
	movl      (%eax), %ebx
	movl      -4(%ebp,%esi,4), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_basis
L000005EF:
	addl      $-2, %esi
	cmpl      $2, %esi
	jl        L0000062C
L000005F7:
	movl      %ebx, 40(%esp)
	movl      72(%esp), %ebx
	.align 4, 0x90
L00000600:
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _nfmul
L00000610:
	movl      (%ebp,%esi,4), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfadd
L00000624:
	decl      %esi
	cmpl      $1, %esi
	jg        L00000600
L0000062A:
	jmp       L00000630
L0000062C:
	movl      %ebx, 40(%esp)
L00000630:
	movl      36(%esp), %edx
	movl      L_bot$non_lazy_ptr-L000005AC(%edx), %ecx
	cmpl      (%ecx), %eax
	movl      40(%esp), %ebx
	jb        L000006C7
L00000646:
	cmpl      %eax, %ebx
	jbe       L000006C7
L0000064A:
	movl      L_top$non_lazy_ptr-L000005AC(%edx), %ecx
	cmpl      (%ecx), %eax
	jae       L000006C7
L00000654:
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %esi
	cmpl      $2, %esi
	jb        L00000668
L00000663:
	cmpl      $2, %ecx
	jne       L000006D9
L00000668:
	movl      %edi, %esi
	andl      $16777215, %esi
	sall      $2, %esi
	movl      %ebx, %ecx
	subl      %esi, %ecx
	movl      %edi, %ebp
	andl      $16777215, %ebp
	movl      32(%esp), %edx
	movl      %ecx, (%edx)
	je        L000006CF
L00000687:
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
	jne       L000007E6
L000006BE:
	movl      32(%esp), %ecx
	jmp       L000008DE
L000006C7:
	movl      32(%esp), %ecx
	movl      %ebx, (%ecx)
	movl      %eax, %ecx
L000006CF:
	movl      %ecx, %eax
L000006D1:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000006D9:
	cmpl      $1, %ecx
	jne       L000008A9
L000006E2:
	movl      4(%eax), %edi
	movl      %edi, %esi
	andl      $16777215, %esi
	movl      %esi, 28(%esp)
	leal      0(,%esi,4), %edx
	movl      %ebx, %ecx
	movl      %edi, %ebx
	subl      %edx, %ecx
	cmpl      $2, %esi
	jb        L00000A56
L00000707:
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
	je        L000009B4
L0000072D:
	movl      %ebx, 24(%esp)
	incl      %esi
	cmpl      $-3, %edi
	movl      $-2, %edx
	cmovg     %edi, %edx
	movl      %edi, 16(%esp)
	movl      %esi, %ebx
	andl      $-8, %ebx
	je        L0000099C
L0000074C:
	movl      %ebx, 12(%esp)
	movl      %esi, 20(%esp)
	movl      %edx, %ebx
	notl      %ebx
	leal      (%eax,%ebx,4), %esi
	movl      40(%esp), %ebx
	leal      -4(%ebx), %edi
	cmpl      %esi, %edi
	movl      $0, %esi
	ja        L00000782
L0000076B:
	leal      -4(%eax,%ebp,4), %edi
	addl      %ebp, %edx
	notl      %edx
	leal      (%ebx,%edx,4), %edx
	cmpl      %edx, %edi
	movl      28(%esp), %edx
	jbe       L000009A6
L00000782:
	movl      28(%esp), %edx
	subl      12(%esp), %edx
	movl      16(%esp), %esi
	cmpl      $-3, %esi
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      1(%edi,%ebp), %esi
	andl      $-8, %esi
	movl      36(%esp), %edi
	movdqa    LC00004670-L000005AC(%edi), %xmm0
L000007AC:
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
	jne       L000007AC
L000007DD:
	movl      12(%esp), %esi
	jmp       L000009A6
L000007E6:
	movl      %ecx, 20(%esp)
	addl      $2, %esi
	cmpl      $-16777216, %ebx
	cmovne    %edx, %edi
	xorl      %ecx, %ecx
	movl      %esi, %edx
	andl      $-8, %edx
	je        L000008C7
L00000803:
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
	ja        L00000842
L0000082B:
	leal      -4(%eax,%ebp,4), %ebx
	addl      %ebp, %edi
	subl      %edi, %esi
	movl      40(%esp), %edx
	leal      (%edx,%esi,4), %edi
	cmpl      %edi, %ebx
	jbe       L000008CB
L00000842:
	movl      %ebp, %ecx
	subl      12(%esp), %ecx
	movl      %ecx, 16(%esp)
	movl      20(%esp), %ecx
	leal      2(%ecx,%ebp), %esi
	andl      $-8, %esi
	movl      36(%esp), %edx
	movdqa    LC00004670-L000005AC(%edx), %xmm0
	movl      %ebp, %ebx
	movl      40(%esp), %edx
	.align 4, 0x90
L00000870:
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
	jne       L00000870
L0000089F:
	movl      16(%esp), %ebp
	movl      12(%esp), %ecx
	jmp       L000008CB
L000008A9:
	andl      $16777215, %edi
	leal      (%eax,%edi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
L000008C2:
	jmp       L000006D1
L000008C7:
	movl      %esi, 24(%esp)
L000008CB:
	cmpl      %ecx, 24(%esp)
	movl      $-2, %edx
	movl      32(%esp), %ecx
	je        L000006CF
L000008DE:
	movl      %ebp, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edx
	leal      2(%ebp,%edx), %esi
	leal      1(%ebp,%edx), %edx
	movl      %edx, 36(%esp)
	movl      %esi, %edx
	testb     $3, %dl
	je        L0000093D
L000008FB:
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
L00000930:
	movl      -4(%eax,%ebp,4), %esi
	movl      %esi, (%edi,%ebp,4)
	leal      -1(%ebp), %ebp
	incl      %ebx
	jne       L00000930
L0000093D:
	cmpl      $3, 36(%esp)
	jb        L000006CF
L00000948:
	incl      %ebp
	movl      28(%esp), %edx
	andl      $16777215, %edx
	movl      $-4, %esi
	subl      %edx, %esi
	movl      40(%esp), %edx
	leal      (%edx,%esi,4), %edx
	.align 4, 0x90
L00000970:
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
	jg        L00000970
L00000997:
	jmp       L000006CF
L0000099C:
	movl      %esi, 20(%esp)
	movl      28(%esp), %edx
	xorl      %esi, %esi
L000009A6:
	cmpl      %esi, 20(%esp)
	movl      24(%esp), %ebx
	je        L00000A56
L000009B4:
	movl      %ebx, %esi
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	leal      (%edx,%ebx), %edi
	leal      1(%edx,%ebx), %ebx
	testb     $3, %bl
	je        L00000A0D
L000009D1:
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
L000009FE:
	movl      -4(%eax,%edx,4), %ebp
	movl      %ebp, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L000009FE
L00000A0B:
	jmp       L00000A15
L00000A0D:
	movl      %edi, 36(%esp)
	movl      %esi, 24(%esp)
L00000A15:
	cmpl      $3, 36(%esp)
	movl      40(%esp), %esi
	movl      24(%esp), %edi
	jb        L00000A56
L00000A24:
	notl      %edi
	orl       $1056964608, %edi
	leal      (%esi,%edi,4), %esi
L00000A2F:
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
	jg        L00000A2F
L00000A56:
	movl      28(%esp), %eax
	orl       $33554432, %eax
	movl      %eax, (%ecx)
	movl      32(%esp), %eax
	movl      %ecx, (%eax)
	jmp       L000006CF
# ----------------------
	.align 4, 0x90
	.globl	_FpX_FpC_nfpoleval
_FpX_FpC_nfpoleval:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $92, %esp
	call      L00000A7C
L00000A7C:
	popl      %ebx
	movl      116(%esp), %ecx
	movl      112(%esp), %eax
	movl      L_avma$non_lazy_ptr-L00000A7C(%ebx), %edx
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
	jne       L00000BC1
L00000AB1:
	movl      %ecx, 72(%esp)
	movl      %ebp, 76(%esp)
	leal      -2(%esi), %ebp
	movl      $2, %eax
	subl      %esi, %eax
	leal      (%edx,%eax,4), %eax
	movl      %eax, 80(%esp)
	movl      L_bot$non_lazy_ptr-L00000A7C(%ebx), %eax
	movl      %ebx, 84(%esp)
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebp, %ecx
	movl      %edx, %edi
	jae       L00000AED
L00000AE1:
	movl      $14, (%esp)
	call      _pari_err
L00000AED:
	movl      88(%esp), %eax
	movl      80(%esp), %ecx
	movl      %ecx, (%eax)
	cmpl      $16777216, %ebp
	movl      %ecx, %ebx
	jb        L00000B1B
L00000B01:
	movl      84(%esp), %eax
	leal      LC00004764-L00000A7C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00000B1B:
	orl       $603979776, %ebp
	movl      %ebp, (%ebx)
	movl      76(%esp), %edx
	testl     %edx, %edx
	jle       L00001275
L00000B2F:
	leal      -4(%esi), %ecx
	movl      $1, %eax
	testb     $3, %dl
	je        L00000B84
L00000B3C:
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
	movl      L_gen_0$non_lazy_ptr-L00000A7C(%edi), %ebp
	.align 4, 0x90
L00000B70:
	movl      (%ebp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %eax
	cmpl      %eax, %ebx
	jne       L00000B70
L00000B7B:
	incl      %eax
	movl      60(%esp), %edi
	movl      80(%esp), %ebx
L00000B84:
	cmpl      $3, %ecx
	jb        L00001275
L00000B8D:
	addl      $2, %eax
	subl      %esi, %eax
	movl      84(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L00000A7C(%ecx), %ecx
	.align 4, 0x90
L00000BA0:
	movl      (%ecx), %edx
	movl      %edx, (%edi,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 4(%edi,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 8(%edi,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 12(%edi,%eax,4)
	addl      $4, %eax
	jne       L00000BA0
L00000BBC:
	jmp       L00001275
L00000BC1:
	movl      %ebx, 84(%esp)
	movl      %edx, 60(%esp)
	movl      124(%esp), %esi
	movl      120(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _zk_multable
L00000BDD:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _FpM_red
L00000BE9:
	movl      %eax, %ebx
	movl      %ebx, 80(%esp)
	movl      116(%esp), %eax
	movl      -4(%eax,%edi,4), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L00000C03:
	movl      %eax, %ebp
	addl      $-2, %edi
	cmpl      $2, %edi
	jl        L000011D7
L00000C11:
	movl      84(%esp), %eax
	movdqa    LC00004680-L00000A7C(%eax), %xmm0
	movdqa    %xmm0, 32(%esp)
	.align 4, 0x90
L00000C30:
	movl      %esi, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %ebx, (%esp)
	call      _FpM_FpC_mul
L00000C40:
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
L00000C72:
	movl      %eax, %edx
	movl      4(%edx), %eax
	sarl      $30, %eax
	testl     %eax, %eax
	je        L00000CB0
L00000C7E:
	jle       L00000CC0
L00000C80:
	movl      124(%esp), %esi
	cmpl      %esi, %edx
	je        L00000CD6
L00000C88:
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
L00000CAC:
	movl      %eax, %ebp
	jmp       L00000CEA
L00000CB0:
	movl      124(%esp), %esi
	jmp       L000011C6
L00000CB9:
	.align 4, 0x90
L00000CC0:
	movl      124(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      _modii
L00000CD0:
	movl      84(%esp), %esi
	jmp       L00000D30
L00000CD6:
	movl      %edx, 72(%esp)
	movl      %ebp, 76(%esp)
	movl      84(%esp), %eax
	movl      L_gen_0$non_lazy_ptr-L00000A7C(%eax), %eax
	movl      (%eax), %ebp
L00000CEA:
	movl      4(%ebp), %eax
	sarl      $30, %eax
	testl     %eax, %eax
	je        L00000DFB
L00000CF8:
	js        L00000E16
L00000CFE:
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _cmpii
L00000D0A:
	testl     %eax, %eax
	movl      %esi, %eax
	movl      84(%esp), %esi
	js        L00000E29
L00000D18:
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	movl      $1, 8(%esp)
	call      _dvmdii
L00000D2C:
	movl      76(%esp), %ebp
L00000D30:
	movl      L_bot$non_lazy_ptr-L00000A7C(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        L00000DF0
L00000D3E:
	cmpl      %eax, %ebx
	jbe       L00000DF0
L00000D46:
	movl      L_top$non_lazy_ptr-L00000A7C(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       L00000DF0
L00000D54:
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
	jb        L000011A7
L00000D85:
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
	je        L00000FA4
L00000DAE:
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
	jne       L00000EE1
L00000DE0:
	movl      68(%esp), %ecx
	movl      %ecx, %ebp
	jmp       L00000F8E
L00000DEB:
	.align 4, 0x90
L00000DF0:
	movl      %esi, 84(%esp)
	movl      %eax, %edx
	jmp       L000011BC
L00000DFB:
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	movl      84(%esp), %eax
	movl      L_gen_0$non_lazy_ptr-L00000A7C(%eax), %eax
	movl      (%eax), %edx
	movl      76(%esp), %ebp
	jmp       L000011C6
L00000E16:
	movl      88(%esp), %eax
	movl      72(%esp), %edx
	movl      %edx, (%eax)
	movl      76(%esp), %ebp
	jmp       L000011C6
L00000E29:
	movl      L_bot$non_lazy_ptr-L00000A7C(%esi), %eax
	cmpl      (%eax), %ebp
	jb        L00000EDA
L00000E37:
	cmpl      %ebp, %ebx
	jbe       L00000EDA
L00000E3F:
	movl      L_top$non_lazy_ptr-L00000A7C(%esi), %eax
	cmpl      (%eax), %ebp
	jae       L00000EDA
L00000E4D:
	movl      4(%ebp), %esi
	movl      %esi, 64(%esp)
	andl      $16777215, %esi
	movl      %esi, 68(%esp)
	leal      0(,%esi,4), %ecx
	movl      %ebx, %edx
	subl      %ecx, %edx
	movl      %edx, 72(%esp)
	cmpl      $2, %esi
	jb        L000011A7
L00000E76:
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
	je        L00001104
L00000E9F:
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
	jne       L0000104C
L00000ED1:
	movl      68(%esp), %edx
	jmp       L000010F2
L00000EDA:
	movl      %ebp, %edx
	jmp       L000011B8
L00000EE1:
	movl      %ecx, 24(%esp)
	movl      %ebx, 28(%esp)
	movl      %esi, %ebp
	notl      %ebp
	leal      (%eax,%ebp,4), %ebx
	movl      56(%esp), %ecx
	leal      -4(%ecx), %ebp
	cmpl      %ebx, %ebp
	movl      68(%esp), %ecx
	ja        L00000F14
L00000EFF:
	leal      -4(%eax,%edx,4), %ebp
	addl      %edx, %esi
	notl      %esi
	movl      56(%esp), %ebx
	leal      (%ebx,%esi,4), %esi
	cmpl      %esi, %ebp
	movl      %ecx, %ebp
	jbe       L00000F8E
L00000F14:
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
L00000F50:
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
	jne       L00000F50
L00000F82:
	movl      28(%esp), %ecx
	movl      %ecx, 52(%esp)
	movl      68(%esp), %ecx
L00000F8E:
	movl      %ecx, 68(%esp)
	movl      52(%esp), %ecx
	cmpl      %ecx, 48(%esp)
	movl      56(%esp), %ebx
	je        L000011A7
L00000FA4:
	movl      %ebp, %edx
	negl      %edx
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	leal      1(%ebp,%esi), %ecx
	addl      %ebp, %esi
	testb     $3, %cl
	je        L00000FFF
L00000FBE:
	movl      %esi, 56(%esp)
	movl      64(%esp), %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
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
L00000FF0:
	movl      -4(%eax,%ebp,4), %ecx
	movl      %ecx, (%esi,%ebp,4)
	leal      -1(%ebp), %ebp
	incl      %edx
	jne       L00000FF0
L00000FFD:
	jmp       L00001003
L00000FFF:
	movl      %esi, 56(%esp)
L00001003:
	cmpl      $3, 56(%esp)
	movl      64(%esp), %ecx
	jb        L000011A7
L00001012:
	andl      $16777215, %ecx
	sall      $2, %ecx
	subl      %ecx, %ebx
	addl      $-4, %ebx
L00001020:
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
	jg        L00001020
L00001047:
	jmp       L000011A7
L0000104C:
	movl      %eax, 24(%esp)
	movl      %edx, %esi
	notl      %esi
	leal      (%ebp,%esi,4), %eax
	movl      %eax, 28(%esp)
	movl      56(%esp), %eax
	leal      -4(%eax), %esi
	cmpl      28(%esp), %esi
	ja        L00001080
L00001069:
	leal      -4(%ebp,%ecx,4), %esi
	addl      %ecx, %edx
	notl      %edx
	movl      56(%esp), %eax
	leal      (%eax,%edx,4), %edx
	cmpl      %edx, %esi
	movl      68(%esp), %edx
	jbe       L000010F2
L00001080:
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
L000010C0:
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
	jne       L000010C0
L000010F2:
	movl      52(%esp), %eax
	cmpl      %eax, 48(%esp)
	movl      56(%esp), %ebx
	je        L000011A7
L00001104:
	movl      %edx, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ecx
	cmovg     %esi, %ecx
	leal      1(%edx,%ecx), %eax
	addl      %edx, %ecx
	testb     $3, %al
	je        L0000115F
L0000111D:
	movl      %ecx, 56(%esp)
	movl      64(%esp), %eax
	andl      $16777215, %eax
	sall      $2, %eax
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
L00001150:
	movl      -4(%ebp,%edx,4), %eax
	movl      %eax, (%ecx,%edx,4)
	leal      -1(%edx), %edx
	incl      %esi
	jne       L00001150
L0000115D:
	jmp       L00001163
L0000115F:
	movl      %ecx, 56(%esp)
L00001163:
	cmpl      $3, 56(%esp)
	movl      64(%esp), %eax
	jb        L000011A7
L0000116E:
	andl      $16777215, %eax
	sall      $2, %eax
	subl      %eax, %ebx
	addl      $-4, %ebx
	.align 4, 0x90
L00001180:
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
	jg        L00001180
L000011A7:
	movl      68(%esp), %eax
	orl       $33554432, %eax
	movl      72(%esp), %edx
	movl      %eax, (%edx)
	movl      %edx, %ebx
L000011B8:
	movl      76(%esp), %ebp
L000011BC:
	movl      124(%esp), %esi
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
L000011C6:
	movl      %edx, 4(%ebp)
	decl      %edi
	cmpl      $1, %edi
	movl      80(%esp), %ebx
	jg        L00000C30
L000011D7:
	movl      84(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L00000A7C(%ecx), %eax
	cmpl      (%eax), %ebp
	movl      60(%esp), %esi
	jb        L0000126D
L000011ED:
	cmpl      %ebp, %esi
	jbe       L0000126D
L000011F1:
	movl      L_top$non_lazy_ptr-L00000A7C(%ecx), %eax
	cmpl      (%eax), %ebp
	jae       L0000126D
L000011FB:
	movl      (%ebp), %edx
	movl      %edx, %eax
	shrl      $25, %eax
	leal      -21(%eax), %ecx
	cmpl      $2, %ecx
	jb        L00001210
L0000120B:
	cmpl      $2, %eax
	jne       L0000127F
L00001210:
	movl      %edx, %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      %esi, %ebx
	subl      %eax, %ebx
	movl      %edx, %ecx
	andl      $16777215, %ecx
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	je        L00001275
L0000122E:
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
	jne       L000013AA
L00001264:
	movl      76(%esp), %ebp
	jmp       L000014A6
L0000126D:
	movl      88(%esp), %eax
	movl      %esi, (%eax)
	movl      %ebp, %ebx
L00001275:
	movl      %ebx, %eax
L00001277:
	addl      $92, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000127F:
	cmpl      $1, %eax
	jne       L0000146B
L00001288:
	movl      4(%ebp), %ecx
	movl      %ecx, %edi
	andl      $16777215, %edi
	leal      0(,%edi,4), %edx
	subl      %edx, %esi
	movl      %esi, 80(%esp)
	cmpl      $2, %edi
	movl      %ebp, 76(%esp)
	jb        L0000160E
L000012AD:
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
	je        L0000156D
L000012D6:
	incl      %eax
	cmpl      $-3, %esi
	movl      $-2, %edx
	cmovg     %esi, %edx
	movl      $0, 68(%esp)
	movl      %eax, %ebx
	andl      $-8, %ebx
	je        L0000154C
L000012F5:
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
	ja        L0000133C
L0000131B:
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
	jbe       L00001556
L0000133C:
	movl      %edi, %edx
	subl      56(%esp), %edx
	cmpl      $-3, %esi
	movl      %edi, %ebx
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      1(%edi,%ebp), %esi
	andl      $-8, %esi
	movl      84(%esp), %eax
	movdqa    LC00004680-L00000A7C(%eax), %xmm0
	movl      60(%esp), %ecx
	movl      76(%esp), %eax
L0000136A:
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
	jne       L0000136A
L0000139B:
	movl      56(%esp), %eax
	movl      %eax, 68(%esp)
	movl      %ebx, %edi
	jmp       L00001556
L000013AA:
	addl      $2, %edi
	cmpl      $-16777216, %eax
	cmovne    %esi, %ebx
	xorl      %esi, %esi
	movl      %edi, %eax
	andl      $-8, %eax
	je        L0000148A
L000013C2:
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
	ja        L00001405
L000013E8:
	movl      76(%esp), %esi
	leal      -4(%esi,%ecx,4), %edi
	xorl      %esi, %esi
	addl      %ecx, %ebx
	subl      %ebx, %eax
	movl      60(%esp), %ebx
	leal      (%ebx,%eax,4), %eax
	cmpl      %eax, %edi
	jbe       L0000148E
L00001405:
	movl      %ecx, %eax
	subl      72(%esp), %eax
	movl      %eax, 68(%esp)
	leal      2(%ebp,%ecx), %ebp
	andl      $-8, %ebp
	movl      84(%esp), %eax
	movdqa    LC00004680-L00000A7C(%eax), %xmm0
	movl      %ecx, %ebx
	movl      60(%esp), %edi
	movl      76(%esp), %esi
	.align 4, 0x90
L00001430:
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
	jne       L00001430
L00001461:
	movl      68(%esp), %ecx
	movl      72(%esp), %esi
	jmp       L0000148E
L0000146B:
	andl      $16777215, %edx
	leal      (%ebp,%edx,4), %eax
	movl      %ebp, 8(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      _gerepile
L00001485:
	jmp       L00001277
L0000148A:
	movl      %edi, 88(%esp)
L0000148E:
	cmpl      %esi, 88(%esp)
	movl      76(%esp), %ebp
	movl      $-2, %esi
	jne       L000014A6
L0000149D:
	movl      80(%esp), %ebx
	jmp       L00001275
L000014A6:
	movl      %ecx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %esi
	leal      2(%ecx,%esi), %eax
	leal      1(%ecx,%esi), %edi
	testb     $3, %al
	je        L000014ED
L000014BC:
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
L000014E0:
	movl      -4(%ebp,%ecx,4), %eax
	movl      %eax, (%esi,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %ebx
	jne       L000014E0
L000014ED:
	cmpl      $3, %edi
	jae       L000014FB
L000014F2:
	movl      80(%esp), %ebx
	jmp       L00001275
L000014FB:
	incl      %ecx
	andl      $16777215, %edx
	movl      $-4, %eax
	subl      %edx, %eax
	movl      60(%esp), %edx
	leal      (%edx,%eax,4), %eax
	movl      80(%esp), %ebx
	.align 4, 0x90
L00001520:
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
	jg        L00001520
L00001547:
	jmp       L00001275
L0000154C:
	movl      %eax, 64(%esp)
	movl      %ecx, 72(%esp)
	movl      %edi, %edx
L00001556:
	movl      68(%esp), %eax
	cmpl      %eax, 64(%esp)
	movl      72(%esp), %ecx
	movl      $-2, %ebx
	je        L0000160E
L0000156D:
	movl      76(%esp), %eax
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      (%edx,%ebx), %esi
	leal      1(%edx,%ebx), %ebx
	testb     $3, %bl
	je        L000015C3
L00001587:
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
L000015B4:
	movl      -4(%eax,%edx,4), %edi
	movl      %edi, (%ebx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebp
	jne       L000015B4
L000015C1:
	jmp       L000015CB
L000015C3:
	movl      %ecx, 72(%esp)
	movl      %edi, 84(%esp)
L000015CB:
	cmpl      $3, %esi
	movl      84(%esp), %edi
	movl      72(%esp), %esi
	jb        L0000160E
L000015D8:
	notl      %esi
	orl       $1056964608, %esi
	movl      60(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
L000015E7:
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
	jg        L000015E7
L0000160E:
	orl       $33554432, %edi
	movl      80(%esp), %ebx
	movl      %edi, (%ebx)
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	jmp       L00001275
# ----------------------
	.align 4, 0x90
	.globl	_galoisapply
_galoisapply:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L0000163C
L0000163C:
	popl      %ecx
	movl      %ecx, 72(%esp)
	movl      104(%esp), %ebp
	movl      100(%esp), %esi
	movl      96(%esp), %eax
	movl      L_avma$non_lazy_ptr-L0000163C(%ecx), %ecx
	movl      %ecx, 68(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 64(%esp)
	movl      %eax, (%esp)
	call      _checknf
L00001665:
	movl      %eax, %edi
	movl      (%ebp), %ebx
	movl      %ebx, %eax
	shrl      $25, %eax
	cmpl      $16, %eax
	jg        L0000176A
L00001678:
	decl      %eax
	cmpl      $9, %eax
	ja        L00001D82
L00001682:
	movl      72(%esp), %ecx
	movl      L00003A00-L0000163C(%ecx,%eax,4), %eax
	addl      %ecx, %eax
	jmp       *%eax
L00001691:
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
	movl      L_bot$non_lazy_ptr-L0000163C(%eax), %eax
	movl      %esi, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edi, %ecx
	jae       L000016D2
L000016C6:
	movl      $14, (%esp)
	call      _pari_err
L000016D2:
	movl      %ebx, 60(%esp)
	movl      68(%esp), %eax
	movl      %ebx, (%eax)
	movl      %edi, %eax
	orl       $33554432, %eax
	movl      %eax, (%ebx)
	cmpl      $2, %edi
	jb        L00001DA8
L000016EE:
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
	je        L0000252D
L00001717:
	incl      %ecx
	movl      %ecx, 68(%esp)
	cmpl      $-3, %eax
	movl      %ecx, %ebx
	movl      $-2, %ecx
	cmovg     %eax, %ecx
	andl      $-8, %ebx
	je        L0000175E
L0000172E:
	movl      %ebx, 52(%esp)
	movl      %ecx, %ebx
	notl      %ebx
	leal      (%ebp,%ebx,4), %ebx
	movl      %ebx, 56(%esp)
	leal      -4(%esi), %ebx
	cmpl      56(%esp), %ebx
	ja        L000024BA
L0000174B:
	leal      -4(%ebp,%edx,4), %ebx
	addl      %edx, %ecx
	notl      %ecx
	leal      (%esi,%ecx,4), %ecx
	cmpl      %ecx, %ebx
	ja        L000024BA
L0000175E:
	movl      $-2, %ebx
	xorl      %eax, %eax
	jmp       L0000251E
L0000176A:
	cmpl      $17, %eax
	je        L000017BA
L0000176F:
	cmpl      $18, %eax
	jne       L0000194C
L00001778:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
L00001784:
	movl      %eax, %esi
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
L00001792:
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       L00001997
L000017A5:
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
L000017B5:
	jmp       L000019B0
L000017BA:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
L000017C6:
	movl      %eax, %ebx
	movl      $16777215, %eax
	andl      (%ebp), %eax
	cmpl      $3, %eax
	jne       L00001A5B
L000017D9:
	movl      %ebx, 56(%esp)
	movl      68(%esp), %ebx
	movl      (%ebx), %esi
	leal      -12(%esi), %eax
	movl      %eax, 60(%esp)
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L0000163C(%eax), %edx
	movl      %edx, 48(%esp)
	movl      %esi, %eax
	subl      (%edx), %eax
	cmpl      $11, %eax
	ja        L0000180D
L00001801:
	movl      $14, (%esp)
	call      _pari_err
L0000180D:
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
L00001835:
	movl      %eax, -8(%esi)
	movl      8(%ebp), %edx
	movl      (%ebx), %ebp
	movl      (%edx), %eax
	movl      %eax, %ecx
	shrl      $25, %ecx
	cmpl      $17, %ecx
	movl      64(%esp), %ebx
	jg        L00001BA2
L00001851:
	decl      %ecx
	cmpl      $9, %ecx
	movl      72(%esp), %esi
	ja        L00001F1B
L0000185F:
	movl      L00003A28-L0000163C(%esi,%ecx,4), %eax
	addl      %esi, %eax
	jmp       *%eax
L0000186A:
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
	jae       L000018AD
L00001899:
	movl      $14, (%esp)
	movl      %edx, %esi
	movl      %ecx, %edi
	call      _pari_err
L000018A9:
	movl      %edi, %ecx
	movl      %esi, %edx
L000018AD:
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
	movl      %ebx, %eax
	orl       $33554432, %eax
	movl      %eax, (%ecx)
	cmpl      $2, %ebx
	movl      60(%esp), %esi
	jb        L00002D44
L000018C9:
	movl      52(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	addl      %edx, %eax
	cmpl      $-1, %eax
	je        L000031E1
L000018ED:
	movl      %ecx, 56(%esp)
	incl      %eax
	movl      %eax, 32(%esp)
	cmpl      $-3, %ebp
	movl      %eax, %ecx
	movl      $-2, %eax
	cmovg     %ebp, %eax
	andl      $-8, %ecx
	je        L000033D8
L0000190C:
	movl      %ecx, 24(%esp)
	movl      %eax, %esi
	notl      %esi
	movl      40(%esp), %ecx
	leal      (%ecx,%esi,4), %esi
	movl      %esi, 28(%esp)
	movl      36(%esp), %edi
	leal      -4(%edi), %esi
	cmpl      28(%esp), %esi
	ja        L00003552
L00001930:
	leal      -4(%ecx,%edx,4), %esi
	addl      %edx, %eax
	notl      %eax
	leal      (%edi,%eax,4), %eax
	cmpl      %eax, %esi
	ja        L00003552
L00001943:
	movl      60(%esp), %eax
	jmp       L000033DE
L0000194C:
	cmpl      $19, %eax
	jne       L00001D82
L00001955:
	andl      $16777215, %ebx
	cmpl      $1, %ebx
	jne       L00001BE7
L00001964:
	movl      68(%esp), %edi
	movl      (%edi), %eax
	movl      72(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L0000163C(%ecx), %ecx
	leal      -4(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $3, %eax
	ja        L0000198A
L0000197E:
	movl      $14, (%esp)
	call      _pari_err
L0000198A:
	movl      %esi, (%edi)
	movl      $637534209, (%esi)
	jmp       L00001D9E
L00001997:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L000019B0:
	movl      64(%esp), %edi
	movl      68(%esp), %ebx
	movl      72(%esp), %edx
	movl      L_bot$non_lazy_ptr-L0000163C(%edx), %ecx
	cmpl      (%ecx), %eax
	jb        L00001A52
L000019CA:
	cmpl      %eax, %edi
	jbe       L00001A52
L000019D2:
	movl      L_top$non_lazy_ptr-L0000163C(%edx), %ecx
	cmpl      (%ecx), %eax
	jae       L00001A52
L000019DC:
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        L000019F4
L000019EB:
	cmpl      $2, %ecx
	jne       L00001F9A
L000019F4:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	subl      %ecx, %edi
	movl      %edi, 60(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      %edi, (%ebx)
	je        L00001F91
L00001A15:
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
	jne       L00002171
L00001A49:
	movl      68(%esp), %esi
	jmp       L00002859
L00001A52:
	movl      %edi, (%ebx)
	movl      %eax, %esi
	jmp       L00001D9E
L00001A5B:
	cmpl      $6, %eax
	jne       L00001D82
L00001A64:
	movl      20(%ebp), %eax
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $33554432, %ecx
	jne       L00001DAE
L00001A7A:
	movl      68(%esp), %esi
	jmp       L00001E51
L00001A83:
	movl      %ebp, (%esp)
	call      _gcopy
L00001A8B:
	jmp       L00001DA0
L00001A90:
	movl      8(%ebp), %ebp
L00001A93:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
L00001A9F:
	movl      %eax, %esi
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
L00001AAD:
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       L00001ACE
L00001ABC:
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
L00001ACC:
	jmp       L00001AE7
L00001ACE:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L00001AE7:
	movl      64(%esp), %ebx
	movl      72(%esp), %esi
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _basistoalg
L00001AFB:
	movl      L_bot$non_lazy_ptr-L0000163C(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        L00001B95
L00001B09:
	cmpl      %eax, %ebx
	jbe       L00001B95
L00001B11:
	movl      L_top$non_lazy_ptr-L0000163C(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       L00001B95
L00001B1B:
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        L00001B33
L00001B2A:
	cmpl      $2, %ecx
	jne       L0000229F
L00001B33:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	subl      %ecx, %ebx
	movl      %ebx, 60(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      68(%esp), %ecx
	movl      %ebx, (%ecx)
	je        L00002296
L00001B58:
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
	jne       L000023B6
L00001B8C:
	movl      68(%esp), %esi
	jmp       L00002CA8
L00001B95:
	movl      68(%esp), %ecx
	movl      %ebx, (%ecx)
	movl      %eax, %esi
	jmp       L00001D9E
L00001BA2:
	cmpl      $18, %ecx
	movl      72(%esp), %esi
	jne       L00001EFF
L00001BAF:
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
L00001BBB:
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       L000020B2
L00001BCE:
	movl      56(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
L00001BE2:
	jmp       L000020CB
L00001BE7:
	movl      4(%ebp), %eax
	movl      $16777215, %ecx
	movl      (%eax), %eax
	andl      %ecx, %eax
	movl      4(%edi), %edx
	andl      (%edx), %ecx
	addl      $-2, %ecx
	cmpl      %ecx, %eax
	jne       L00001D82
L00001C03:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
L00001C0F:
	movl      %eax, 56(%esp)
	movl      68(%esp), %eax
	movl      (%eax), %eax
	leal      0(,%ebx,4), %ecx
	movl      %eax, %edx
	subl      %ecx, %edx
	movl      %edx, %esi
	movl      72(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L0000163C(%ecx), %ecx
	movl      %ecx, 48(%esp)
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       L00001C49
L00001C3D:
	movl      $14, (%esp)
	call      _pari_err
L00001C49:
	movl      68(%esp), %eax
	movl      %esi, 60(%esp)
	movl      %esi, (%eax)
	movl      %ebx, %eax
	orl       $637534208, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        L00001CCE
L00001C61:
	movl      $1, %esi
	.align 4, 0x90
L00001C70:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
L00001C80:
	movl      (%eax), %ecx
	movl      $-33554432, %edx
	andl      %edx, %ecx
	cmpl      $335544320, %ecx
	jne       L00001CA7
L00001C91:
	movl      56(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
L00001CA5:
	jmp       L00001CC2
L00001CA7:
	movl      4(%edi), %ecx
	movl      (%ecx), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-3, %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L00001CC2:
	movl      60(%esp), %ecx
	movl      %eax, (%ecx,%esi,4)
	incl      %esi
	cmpl      %ebx, %esi
	jl        L00001C70
L00001CCE:
	movl      60(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _idealhnf_shallow
L00001CDE:
	movl      48(%esp), %ecx
	cmpl      (%ecx), %eax
	movl      64(%esp), %edi
	jb        L00001F3C
L00001CEE:
	cmpl      %eax, %edi
	jbe       L00001F3C
L00001CF6:
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L0000163C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L00001F3C
L00001D08:
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	movl      68(%esp), %ebx
	jb        L00001D24
L00001D1B:
	cmpl      $2, %ecx
	jne       L00002DE4
L00001D24:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	subl      %ecx, %edi
	movl      %edi, 60(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      %edi, (%ebx)
	je        L00002DCA
L00001D45:
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
	jne       L00003049
L00001D79:
	movl      68(%esp), %esi
	jmp       L000033FD
L00001D82:
	movl      72(%esp), %eax
	leal      LC00004713-L0000163C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      _pari_err
L00001D9C:
	xorl      %esi, %esi
L00001D9E:
	movl      %esi, %eax
L00001DA0:
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00001DA8:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00001DAE:
	movl      4(%ebp), %esi
	movl      8(%ebp), %eax
	movl      28(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L00001DC3:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	movl      %edi, %ecx
	movl      %eax, %edx
	call      _QX_galoisapplymod
L00001DD3:
	movl      %eax, 60(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _zk_multable
L00001DE3:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _FpM_deplin
L00001DEF:
	movl      %eax, %edx
	movl      68(%esp), %eax
	movl      (%eax), %edi
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L0000163C(%eax), %eax
	movl      %edi, %ecx
	subl      (%eax), %ecx
	movl      12(%ebp), %ebx
	movl      16(%ebp), %eax
	movl      %eax, 56(%esp)
	cmpl      $23, %ecx
	leal      -24(%edi), %ebp
	ja        L00001E2B
L00001E17:
	movl      $14, (%esp)
	movl      %edx, 52(%esp)
	call      _pari_err
L00001E27:
	movl      52(%esp), %edx
L00001E2B:
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
L00001E51:
	movl      %ebp, (%esp)
	call      _copy_bin
L00001E59:
	movl      %eax, %edi
	movl      64(%esp), %ebx
	movl      %ebx, (%esi)
	movl      4(%edi), %eax
	testl     %eax, %eax
	je        L00001F49
L00001E6C:
	movl      (%edi), %esi
	movl      %esi, 60(%esp)
	movl      %eax, 56(%esp)
	movl      %eax, %ebp
	subl      8(%edi), %ebp
	sarl      $2, %ebp
	leal      0(,%esi,4), %eax
	movl      %eax, 52(%esp)
	movl      72(%esp), %eax
	movl      L_bot$non_lazy_ptr-L0000163C(%eax), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	movl      52(%esp), %edx
	subl      %edx, %ebx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       L00001EB4
L00001EA4:
	movl      $14, (%esp)
	movl      %edx, %esi
	call      _pari_err
L00001EB2:
	movl      %esi, %edx
L00001EB4:
	movl      68(%esp), %eax
	movl      %ebx, (%eax)
	movl      %edi, %eax
	addl      $16, %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _memcpy
L00001ECF:
	subl      60(%esp), %ebp
	movl      64(%esp), %eax
	leal      (%eax,%ebp,4), %ecx
	movl      %ecx, %eax
	subl      56(%esp), %eax
	cmpl      $0, 12(%edi)
	je        L00002235
L00001EEA:
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, 60(%esp)
	call      _shiftaddress_canon
L00001EFA:
	jmp       L00002245
L00001EFF:
	cmpl      $19, %ecx
	jne       L00001F1B
L00001F04:
	andl      $16777215, %eax
	cmpl      $3, %eax
	jne       L0000247A
L00001F12:
	movl      68(%esp), %ebx
	jmp       L0000293E
L00001F1B:
	leal      LC00004713-L0000163C(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      _pari_err
L00001F31:
	xorl      %ecx, %ecx
L00001F33:
	movl      48(%esp), %edx
	jmp       L00002A29
L00001F3C:
	movl      68(%esp), %ecx
	movl      %edi, (%ecx)
	movl      %eax, %esi
	jmp       L00001D9E
L00001F49:
	movl      72(%esp), %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000163C(%ebp), %esi
	movl      (%esi), %ebx
	movl      $1, (%esi)
	movl      %edi, (%esp)
	call      _free
L00001F63:
	movl      %ebx, (%esi)
	testl     %ebx, %ebx
	jne       L00001F84
L00001F69:
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000163C(%ebp), %eax
	cmpl      $0, (%eax)
	je        L00001F84
L00001F74:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L00001F84:
	movl      L_gen_0$non_lazy_ptr-L0000163C(%ebp), %eax
	movl      (%eax), %esi
	jmp       L00001D9E
L00001F91:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00001F9A:
	cmpl      $1, %ecx
	jne       L00002EFF
L00001FA3:
	movl      4(%eax), %ecx
	movl      %ecx, 56(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %esi
	subl      %esi, %edi
	movl      %edi, 60(%esp)
	cmpl      $2, %ecx
	jb        L0000385F
L00001FC6:
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
	je        L00003205
L00001FEC:
	incl      %edi
	movl      %edi, 48(%esp)
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	movl      $0, 52(%esp)
	andl      $-8, %edi
	je        L000031F5
L0000200D:
	movl      %edx, 40(%esp)
	movl      %esi, %edx
	notl      %esi
	leal      (%eax,%esi,4), %esi
	movl      %esi, 44(%esp)
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      44(%esp), %esi
	ja        L0000204C
L00002029:
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
	jbe       L000031F7
L0000204C:
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
	movdqa    LC00004690-L0000163C(%edx), %xmm0
	movl      64(%esp), %ebx
L0000207A:
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
	jne       L0000207A
L000020A9:
	movl      68(%esp), %ebx
	jmp       L000031F7
L000020B2:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L000020CB:
	movl      48(%esp), %edx
	cmpl      (%edx), %eax
	jb        L00002839
L000020D7:
	cmpl      %eax, %ebp
	jbe       L00002839
L000020DF:
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L0000163C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L00002839
L000020F1:
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        L00002109
L00002100:
	cmpl      $2, %ecx
	jne       L00002F1D
L00002109:
	movl      %edi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      %ebp, %esi
	subl      %ecx, %esi
	movl      %esi, 56(%esp)
	movl      %edi, %edx
	andl      $16777215, %edx
	movl      68(%esp), %ecx
	movl      %esi, (%ecx)
	je        L00002DD3
L00002130:
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
	jne       L0000310D
L00002168:
	movl      56(%esp), %ecx
	jmp       L000034A7
L00002171:
	addl      $2, %esi
	movl      %esi, 56(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	xorl      %ecx, %ecx
	andl      $-8, %esi
	je        L00002846
L0000218C:
	movl      %esi, 52(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      64(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      68(%esp), %esi
	ja        L000021D1
L000021AE:
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	movl      $0, %ecx
	jbe       L0000284A
L000021D1:
	movl      %edx, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LC00004690-L0000163C(%ecx), %xmm0
	movl      %edx, %ebx
	movl      64(%esp), %edi
L000021F4:
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
	jne       L000021F4
L00002223:
	movl      48(%esp), %edx
	movl      52(%esp), %ecx
	movl      $-2, %edi
	jmp       L0000284A
L00002235:
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, 60(%esp)
	call      _shiftaddress
L00002245:
	movl      72(%esp), %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000163C(%ebp), %esi
	movl      (%esi), %ebx
	movl      $1, (%esi)
	movl      %edi, (%esp)
	call      _free
L0000225F:
	movl      %ebx, (%esi)
	testl     %ebx, %ebx
	je        L0000226E
L00002265:
	movl      60(%esp), %esi
	jmp       L00001D9E
L0000226E:
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000163C(%ebp), %eax
	cmpl      $0, (%eax)
	je        L00002900
L0000227D:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L0000228D:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002296:
	movl      60(%esp), %esi
	jmp       L00001D9E
L0000229F:
	cmpl      $1, %ecx
	jne       L00002909
L000022A8:
	movl      4(%eax), %ecx
	movl      %ecx, 56(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %esi
	subl      %esi, %ebx
	movl      %ebx, 60(%esp)
	cmpl      $2, %ecx
	jb        L00003729
L000022CB:
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
	je        L000036A0
L000022F6:
	incl      %edx
	movl      %edx, 48(%esp)
	cmpl      $-3, %edi
	movl      %edx, %esi
	movl      $-2, %edx
	cmovg     %edi, %edx
	movl      $0, 52(%esp)
	andl      $-8, %esi
	je        L00003690
L00002319:
	movl      %esi, 44(%esp)
	movl      %edx, %esi
	notl      %esi
	leal      (%eax,%esi,4), %ebx
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      %ebx, %esi
	ja        L0000234D
L0000232F:
	leal      -4(%eax,%ebp,4), %esi
	addl      %ebp, %edx
	notl      %edx
	movl      64(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movl      $-2, %ebx
	cmpl      %edx, %esi
	movl      %ecx, %esi
	jbe       L00003692
L0000234D:
	movl      %ecx, %esi
	subl      44(%esp), %esi
	cmpl      $-3, %edi
	movl      $-2, %edx
	cmovg     %edi, %edx
	leal      1(%edx,%ebp), %edi
	andl      $-8, %edi
	movl      72(%esp), %edx
	movdqa    LC00004690-L0000163C(%edx), %xmm0
	movl      64(%esp), %ebx
L00002375:
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
	jne       L00002375
L000023A4:
	movl      44(%esp), %edx
	movl      %edx, 52(%esp)
	movl      $-2, %ebx
	jmp       L00003692
L000023B6:
	addl      $2, %esi
	movl      %esi, 56(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	xorl      %ecx, %ecx
	andl      $-8, %esi
	je        L00002C95
L000023D1:
	movl      %esi, 52(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      64(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      68(%esp), %esi
	ja        L00002416
L000023F3:
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	movl      $0, %ecx
	jbe       L00002C99
L00002416:
	movl      %edx, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LC00004690-L0000163C(%ecx), %xmm0
	movl      %edx, %ebx
	movl      64(%esp), %edi
L00002439:
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
	jne       L00002439
L00002468:
	movl      48(%esp), %edx
	movl      52(%esp), %ecx
	movl      $-2, %edi
	jmp       L00002C99
L0000247A:
	movl      %edx, 40(%esp)
	cmpl      $1, %eax
	jne       L0000291E
L00002487:
	leal      -4(%ebp), %ecx
	movl      48(%esp), %edx
	subl      (%edx), %ebp
	cmpl      $3, %ebp
	ja        L000024A9
L00002495:
	movl      $14, (%esp)
	movl      %edx, %esi
	movl      %ecx, %edi
	call      _pari_err
L000024A5:
	movl      %edi, %ecx
	movl      %esi, %edx
L000024A9:
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
	movl      $637534209, (%ecx)
	jmp       L00002A29
L000024BA:
	movl      %edi, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 56(%esp)
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovg     %eax, %ecx
	leal      1(%ecx,%edx), %eax
	andl      $-8, %eax
	movl      72(%esp), %ecx
	movdqa    LC00004690-L0000163C(%ecx), %xmm0
	movl      $-2, %ebx
L000024E7:
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
	jne       L000024E7
L00002516:
	movl      56(%esp), %edi
	movl      52(%esp), %eax
L0000251E:
	cmpl      %eax, 68(%esp)
	jne       L0000252D
L00002524:
	movl      60(%esp), %esi
	jmp       L00001D9E
L0000252D:
	movl      %edi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %ebx
	leal      (%edi,%ebx), %eax
	leal      1(%edi,%ebx), %ecx
	testb     $3, %cl
	je        L0000257D
L00002543:
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
L00002570:
	movl      -4(%ebp,%edi,4), %ebx
	movl      %ebx, (%ecx,%edi,4)
	leal      -1(%edi), %edi
	incl      %edx
	jne       L00002570
L0000257D:
	cmpl      $3, %eax
	jae       L0000258B
L00002582:
	movl      60(%esp), %esi
	jmp       L00001D9E
L0000258B:
	movl      64(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%esi,%eax,4), %eax
	.align 4, 0x90
L000025A0:
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
	jg        L000025A0
L000025C7:
	movl      60(%esp), %esi
	jmp       L00001D9E
L000025D0:
	movl      %edx, (%esp)
	call      _gcopy
L000025D8:
	movl      %eax, %ecx
	jmp       L00001F33
L000025DF:
	movl      8(%edx), %edx
L000025E2:
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
L000025EE:
	movl      $-33554432, %ecx
	andl      (%eax), %ecx
	cmpl      $335544320, %ecx
	jne       L00002613
L000025FD:
	movl      56(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
L00002611:
	jmp       L0000262C
L00002613:
	movl      4(%edi), %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	addl      $-3, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L0000262C:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _basistoalg
L00002638:
	movl      48(%esp), %edx
	cmpl      (%edx), %eax
	jb        L00002839
L00002644:
	cmpl      %eax, %ebp
	jbe       L00002839
L0000264C:
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L0000163C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L00002839
L0000265E:
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        L00002676
L0000266D:
	cmpl      $2, %ecx
	jne       L000032A0
L00002676:
	movl      %edi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      %ebp, %esi
	subl      %ecx, %esi
	movl      %edi, %edx
	andl      $16777215, %edx
	movl      68(%esp), %ecx
	movl      %esi, (%ecx)
	movl      %esi, %ecx
	je        L00001F33
L0000269B:
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
	je        L0000279C
L000026D7:
	addl      $2, %edi
	movl      %edi, 32(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %ebx, %esi
	movl      $0, 40(%esp)
	movl      %edi, %ecx
	andl      $-8, %ecx
	je        L0000278E
L000026FA:
	movl      %ecx, 28(%esp)
	movl      $-2, %ecx
	subl      %esi, %ecx
	leal      (%eax,%ecx,4), %edi
	movl      36(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %edi, %ecx
	ja        L0000272B
L00002713:
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %esi
	movl      $-2, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %esi
	cmpl      %esi, %edi
	jbe       L0000278E
L0000272B:
	movl      %edx, %ecx
	subl      28(%esp), %ecx
	movl      %ecx, 40(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LC00004690-L0000163C(%ecx), %xmm0
	movl      %edx, %esi
	movl      36(%esp), %ebx
L0000274E:
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
	jne       L0000274E
L0000277D:
	movl      40(%esp), %edx
	movl      28(%esp), %ecx
	movl      %ecx, 40(%esp)
	movl      $-2, %ebx
L0000278E:
	movl      32(%esp), %ecx
	cmpl      40(%esp), %ecx
	je        L0000362C
L0000279C:
	movl      %edx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      2(%edx,%ebx), %ecx
	leal      1(%edx,%ebx), %esi
	testb     $3, %cl
	je        L000027E7
L000027B3:
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
L000027DA:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%ebx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebp
	jne       L000027DA
L000027E7:
	cmpl      $3, %esi
	jb        L0000362C
L000027F0:
	incl      %edx
	movl      52(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      64(%esp), %ebx
L0000280D:
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
	jg        L0000280D
L00002834:
	jmp       L00003630
L00002839:
	movl      68(%esp), %ecx
	movl      %ebp, (%ecx)
	movl      %eax, %ecx
	jmp       L00002A29
L00002846:
	movl      68(%esp), %esi
L0000284A:
	cmpl      %ecx, 56(%esp)
	jne       L00002859
L00002850:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002859:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        L000028AD
L00002870:
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
L000028A0:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L000028A0
L000028AD:
	cmpl      $3, %ebp
	jae       L000028BB
L000028B2:
	movl      60(%esp), %esi
	jmp       L00001D9E
L000028BB:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      64(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
L000028D0:
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
	jg        L000028D0
L000028F7:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002900:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002909:
	andl      $16777215, %esi
	leal      (%eax,%esi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	jmp       L00002F0F
L0000291E:
	leal      LC00004713-L0000163C(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      _pari_err
L00002934:
	movl      68(%esp), %ebx
	movl      (%ebx), %ebp
	movl      40(%esp), %edx
L0000293E:
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
	jae       L00002983
L00002967:
	movl      $14, (%esp)
	movl      %edx, %esi
	movl      %ebp, 36(%esp)
	movl      %ecx, %ebp
	call      _pari_err
L0000297B:
	movl      %ebp, %ecx
	movl      36(%esp), %ebp
	movl      %esi, %edx
L00002983:
	movl      %ebp, (%ebx)
	movl      %ebx, 68(%esp)
	movl      $-16777217, %eax
	andl      (%edx), %eax
	movl      %eax, (%ebp)
	cmpl      $2, %ecx
	movl      56(%esp), %esi
	jb        L000029D5
L0000299C:
	movl      $1, %ebx
L000029A1:
	movl      %edi, 52(%esp)
	movl      (%edx,%ebx,4), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	movl      %ebp, %esi
	movl      %ecx, %ebp
	movl      %edx, %edi
	call      _galoisapply
L000029BE:
	movl      %edi, %edx
	movl      52(%esp), %edi
	movl      %ebp, %ecx
	movl      %esi, %ebp
	movl      56(%esp), %esi
	movl      %eax, (%ebp,%ebx,4)
	incl      %ebx
	cmpl      %ecx, %ebx
	jl        L000029A1
L000029D5:
	movl      %edx, %edi
	movl      40(%esp), %eax
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      _ZC_copy
L000029E6:
	movl      %eax, %ebx
	movl      68(%esp), %eax
	movl      (%eax), %esi
	leal      -12(%esi), %ecx
	movl      %esi, %eax
	movl      48(%esp), %edx
	subl      (%edx), %eax
	cmpl      $11, %eax
	ja        L00002A12
L000029FE:
	movl      $14, (%esp)
	movl      %ecx, %ebp
	call      _pari_err
L00002A0C:
	movl      %ebp, %ecx
	movl      48(%esp), %edx
L00002A12:
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
	movl      $637534211, -12(%esi)
	movl      %edi, -8(%esi)
	movl      %ebx, -4(%esi)
	movl      64(%esp), %ebx
L00002A29:
	movl      60(%esp), %esi
L00002A2D:
	movl      44(%esp), %eax
	movl      %ecx, -4(%eax)
	movl      %eax, %edi
	cmpl      (%edx), %esi
	jb        L00002AB9
L00002A3A:
	cmpl      %esi, %ebx
	jbe       L00002AB9
L00002A3E:
	movl      72(%esp), %eax
	movl      L_top$non_lazy_ptr-L0000163C(%eax), %eax
	cmpl      (%eax), %esi
	jae       L00002AB9
L00002A4C:
	movl      (%esi), %ecx
	movl      %ecx, %eax
	shrl      $25, %eax
	leal      -21(%eax), %edx
	cmpl      $2, %edx
	jb        L00002A60
L00002A5B:
	cmpl      $2, %eax
	jne       L00002AC4
L00002A60:
	movl      %ecx, %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      %ebx, %esi
	subl      %eax, %esi
	movl      %ecx, %eax
	andl      $16777215, %eax
	movl      68(%esp), %edx
	movl      %esi, (%edx)
	je        L00001D9E
L00002A81:
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
	jne       L00002BD6
L00002AB2:
	movl      %eax, %ecx
	jmp       L00002D5E
L00002AB9:
	movl      68(%esp), %eax
	movl      %ebx, (%eax)
	jmp       L00001D9E
L00002AC4:
	cmpl      $1, %eax
	jne       L00002C76
L00002ACD:
	movl      %ebx, %edx
	movl      -8(%edi), %ebx
	movl      %ebx, %eax
	andl      $16777215, %eax
	leal      0(,%eax,4), %ecx
	subl      %ecx, %edx
	movl      %edx, 60(%esp)
	cmpl      $2, %eax
	movl      %edi, %esi
	jb        L000037AB
L00002AF1:
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
	je        L00003743
L00002B15:
	incl      %edi
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	movl      $0, 72(%esp)
	movl      %edi, %esi
	andl      $-8, %esi
	je        L00003737
L00002B34:
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
	ja        L00002B82
L00002B5F:
	movl      44(%esp), %esi
	leal      -16(%esi,%ecx,4), %esi
	movl      %esi, 52(%esp)
	addl      %ecx, %edx
	notl      %edx
	movl      64(%esp), %esi
	leal      (%esi,%edx,4), %edx
	cmpl      %edx, 52(%esp)
	movl      %eax, %edx
	jbe       L00003739
L00002B82:
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
L00002BA9:
	movdqu    -16(%ecx), %xmm0
	movups    (%ecx), %xmm1
	movups    %xmm1, (%ebp)
	movdqu    %xmm0, -16(%ebp)
	addl      $-32, %ebp
	addl      $-32, %ecx
	addl      $-8, %esi
	jne       L00002BA9
L00002BC5:
	movl      48(%esp), %ecx
	movl      %ecx, 72(%esp)
	movl      56(%esp), %ebx
	jmp       L00003739
L00002BD6:
	addl      $2, %esi
	cmpl      $-16777216, %ecx
	cmovne    %edx, %ebp
	movl      $0, 72(%esp)
	movl      %esi, %ecx
	andl      $-8, %ecx
	je        L00002D4D
L00002BF5:
	movl      %ecx, 68(%esp)
	movl      $-5, %ecx
	subl      %ebp, %ecx
	leal      (%edi,%ecx,4), %ecx
	movl      64(%esp), %edi
	leal      -4(%edi), %edi
	cmpl      %ecx, %edi
	ja        L00002C31
L00002C0E:
	movl      44(%esp), %ecx
	leal      -16(%ecx,%eax,4), %ecx
	addl      %eax, %ebp
	movl      $-2, %edi
	subl      %ebp, %edi
	movl      64(%esp), %ebp
	leal      (%ebp,%edi,4), %edi
	cmpl      %edi, %ecx
	movl      %eax, %ecx
	jbe       L00002D4F
L00002C31:
	movl      %eax, %ecx
	subl      68(%esp), %ecx
	movl      64(%esp), %edi
	leal      -16(%edi), %ebp
	movl      44(%esp), %edi
	leal      -28(%edi,%eax,4), %edi
	leal      2(%ebx,%eax), %ebx
	andl      $-8, %ebx
L00002C4D:
	movdqu    -16(%edi), %xmm0
	movups    (%edi), %xmm1
	movups    %xmm1, (%ebp)
	movdqu    %xmm0, -16(%ebp)
	addl      $-32, %ebp
	addl      $-32, %edi
	addl      $-8, %ebx
	jne       L00002C4D
L00002C69:
	movl      68(%esp), %edi
	movl      %edi, 72(%esp)
	jmp       L00002D4F
L00002C76:
	andl      $16777215, %ecx
	leal      -12(%edi,%ecx,4), %eax
	movl      %esi, 8(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      _gerepile
L00002C90:
	jmp       L00001DA0
L00002C95:
	movl      68(%esp), %esi
L00002C99:
	cmpl      %ecx, 56(%esp)
	jne       L00002CA8
L00002C9F:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002CA8:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        L00002CF1
L00002CBF:
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
L00002CE4:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L00002CE4
L00002CF1:
	cmpl      $3, %ebp
	jae       L00002CFF
L00002CF6:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002CFF:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      64(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
L00002D14:
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
	jg        L00002D14
L00002D3B:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002D44:
	movl      64(%esp), %ebx
	jmp       L00002A2D
L00002D4D:
	movl      %eax, %ecx
L00002D4F:
	cmpl      72(%esp), %esi
	jne       L00002D5E
L00002D55:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002D5E:
	movl      %ecx, %esi
	notl      %esi
	cmpl      $-3, %esi
	cmovg     %esi, %edx
	leal      2(%ecx,%edx), %ebx
	leal      1(%ecx,%edx), %edx
	testb     $1, %bl
	je        L00002D8B
L00002D75:
	movl      44(%esp), %esi
	movl      -16(%esi,%ecx,4), %esi
	decl      %ecx
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      64(%esp), %ebx
	movl      %esi, (%ebx,%edi,4)
	jmp       L00002D8F
L00002D8B:
	movl      64(%esp), %ebx
L00002D8F:
	movl      60(%esp), %esi
	testl     %edx, %edx
	je        L00001D9E
L00002D9B:
	movl      %esi, %edi
	incl      %ecx
	movl      $-2, %edx
	subl      %eax, %edx
	leal      (%ebx,%edx,4), %eax
	movl      44(%esp), %esi
L00002DAC:
	movl      -20(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	movl      -24(%esi,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	addl      $-2, %ecx
	cmpl      $1, %ecx
	jg        L00002DAC
L00002DC3:
	movl      %edi, %esi
	jmp       L00001D9E
L00002DCA:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00002DD3:
	movl      48(%esp), %edx
	movl      60(%esp), %esi
	movl      56(%esp), %ecx
	jmp       L00002A2D
L00002DE4:
	cmpl      $1, %ecx
	jne       L00002EFF
L00002DED:
	movl      4(%eax), %ecx
	movl      %ecx, 56(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %esi
	subl      %esi, %edi
	movl      %edi, 60(%esp)
	cmpl      $2, %ecx
	jb        L0000385F
L00002E10:
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
	je        L000037CD
L00002E36:
	incl      %edi
	movl      %edi, 52(%esp)
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	movl      %edx, 48(%esp)
	xorl      %edx, %edx
	andl      $-8, %edi
	je        L000037C1
L00002E55:
	movl      %esi, %edx
	notl      %esi
	leal      (%eax,%esi,4), %esi
	movl      %esi, 44(%esp)
	movl      64(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      44(%esp), %esi
	ja        L00002E95
L00002E6D:
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
	jbe       L000037C3
L00002E95:
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
	movdqa    LC00004690-L0000163C(%edx), %xmm0
	movl      64(%esp), %ebx
L00002EC3:
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
	jne       L00002EC3
L00002EF2:
	movl      44(%esp), %edx
	movl      68(%esp), %ebx
	jmp       L000037C3
L00002EFF:
	andl      $16777215, %esi
	leal      (%eax,%esi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
L00002F0F:
	movl      %ecx, 4(%esp)
	call      _gerepile
L00002F18:
	jmp       L00001DA0
L00002F1D:
	cmpl      $1, %ecx
	jne       L000033B8
L00002F26:
	movl      4(%eax), %ecx
	movl      %ecx, 52(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	movl      %ebp, %esi
	movl      %ebp, 36(%esp)
	subl      %edx, %esi
	movl      %esi, %edi
	cmpl      $2, %ecx
	jb        L000039DD
L00002F4D:
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
	je        L00003882
L00002F73:
	incl      %ebp
	movl      %ebp, 32(%esp)
	cmpl      $-3, %ebx
	movl      %ebp, %esi
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	movl      $0, 40(%esp)
	andl      $-8, %esi
	movl      %esi, 28(%esp)
	je        L00003872
L00002F9A:
	movl      %ebp, %esi
	notl      %esi
	leal      (%eax,%esi,4), %esi
	movl      %esi, 24(%esp)
	movl      %ecx, 56(%esp)
	movl      36(%esp), %ecx
	leal      -4(%ecx), %esi
	movl      56(%esp), %ecx
	cmpl      24(%esp), %esi
	ja        L00002FDB
L00002FBA:
	leal      -4(%eax,%edx,4), %esi
	movl      %esi, 24(%esp)
	addl      %edx, %ebp
	notl      %ebp
	movl      %ecx, %esi
	movl      36(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	movl      %esi, %ecx
	cmpl      %ebp, 24(%esp)
	jbe       L00003874
L00002FDB:
	movl      %ecx, 56(%esp)
	movl      %ecx, %esi
	subl      28(%esp), %esi
	cmpl      $-3, %ebx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	leal      1(%ebp,%edx), %ebx
	andl      $-8, %ebx
	movl      72(%esp), %ebp
	movdqa    LC00004690-L0000163C(%ebp), %xmm0
	movl      36(%esp), %ecx
L00003007:
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
	jne       L00003007
L00003038:
	movl      28(%esp), %ecx
	movl      %ecx, 40(%esp)
	movl      56(%esp), %ecx
	jmp       L00003874
L00003049:
	addl      $2, %esi
	movl      %esi, 56(%esp)
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	xorl      %ecx, %ecx
	andl      $-8, %esi
	je        L000033EA
L00003064:
	movl      %esi, 52(%esp)
	movl      $-2, %edi
	movl      $-2, %ecx
	subl      %ebx, %ecx
	leal      (%eax,%ecx,4), %esi
	movl      64(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      %esi, %ecx
	movl      68(%esp), %esi
	ja        L000030A9
L00003086:
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	movl      $0, %ecx
	jbe       L000033EE
L000030A9:
	movl      %edx, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LC00004690-L0000163C(%ecx), %xmm0
	movl      %edx, %ebx
	movl      64(%esp), %edi
L000030CC:
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
	jne       L000030CC
L000030FB:
	movl      48(%esp), %edx
	movl      52(%esp), %ecx
	movl      $-2, %edi
	jmp       L000033EE
L0000310D:
	addl      $2, %edi
	cmpl      $-16777216, %ecx
	cmovne    %ebx, %esi
	movl      $0, 40(%esp)
	movl      %edi, %ecx
	andl      $-8, %ecx
	je        L00003499
L0000312C:
	movl      %ecx, 24(%esp)
	movl      $-2, %ecx
	subl      %esi, %ecx
	leal      (%eax,%ecx,4), %ecx
	movl      %ecx, 28(%esp)
	movl      36(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      28(%esp), %ecx
	ja        L00003173
L0000314B:
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
	jbe       L0000349D
L00003173:
	movl      %edi, 32(%esp)
	movl      %edx, %edi
	subl      24(%esp), %edi
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %ecx
	movdqa    LC00004690-L0000163C(%ecx), %xmm0
	movl      %edx, %esi
	movl      36(%esp), %ebx
L00003196:
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
	jne       L00003196
L000031C5:
	movl      %edi, %edx
	movl      24(%esp), %ecx
	movl      %ecx, 40(%esp)
	movl      $-2, %ebx
	movl      56(%esp), %ecx
	movl      32(%esp), %edi
	jmp       L0000349D
L000031E1:
	movl      %ecx, 56(%esp)
	movl      %esi, %eax
	movl      36(%esp), %edi
	movl      $-2, %ecx
	jmp       L000035D3
L000031F5:
	movl      %ecx, %esi
L000031F7:
	movl      52(%esp), %edx
	cmpl      %edx, 48(%esp)
	je        L0000385F
L00003205:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %edi
	leal      1(%esi,%edx), %edx
	testb     $3, %dl
	je        L00003254
L00003220:
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
L00003247:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       L00003247
L00003254:
	cmpl      $3, %edi
	movl      68(%esp), %ebx
	jb        L0000385F
L00003261:
	movl      56(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      64(%esp), %edx
	leal      (%edx,%edi,4), %edx
L00003274:
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
	jg        L00003274
L0000329B:
	jmp       L0000385F
L000032A0:
	cmpl      $1, %ecx
	jne       L000033B8
L000032A9:
	movl      4(%eax), %ecx
	movl      %ecx, 52(%esp)
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	movl      %ebp, %esi
	movl      %ebp, 36(%esp)
	subl      %edx, %esi
	movl      %esi, %edi
	cmpl      $2, %ecx
	jb        L000039DD
L000032D0:
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
	je        L0000393D
L000032F6:
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
	je        L00003927
L00003321:
	movl      %ebp, %esi
	notl      %esi
	leal      (%eax,%esi,4), %ecx
	movl      %ecx, 24(%esp)
	movl      36(%esp), %ecx
	leal      -4(%ecx), %esi
	cmpl      24(%esp), %esi
	ja        L00003354
L00003339:
	leal      -4(%eax,%edx,4), %esi
	addl      %edx, %ebp
	notl      %ebp
	movl      36(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	cmpl      %ebp, %esi
	movl      40(%esp), %esi
	jbe       L0000392B
L00003354:
	movl      40(%esp), %edi
	movl      %edi, %esi
	subl      28(%esp), %esi
	cmpl      $-3, %ebx
	movl      $-2, %ebp
	cmovg     %ebx, %ebp
	leal      1(%ebp,%edx), %ebx
	andl      $-8, %ebx
	movl      72(%esp), %ebp
	movdqa    LC00004690-L0000163C(%ebp), %xmm0
	movl      36(%esp), %ecx
L00003380:
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
	jne       L00003380
L000033AF:
	movl      28(%esp), %edi
	jmp       L0000392B
L000033B8:
	andl      $16777215, %edi
	leal      (%eax,%edi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %ebp, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
L000033D1:
	movl      %eax, %ecx
	jmp       L00001F33
L000033D8:
	movl      %esi, %eax
	movl      36(%esp), %edi
L000033DE:
	movl      $-2, %ecx
	xorl      %edx, %edx
	jmp       L000035BA
L000033EA:
	movl      68(%esp), %esi
L000033EE:
	cmpl      %ecx, 56(%esp)
	jne       L000033FD
L000033F4:
	movl      60(%esp), %esi
	jmp       L00001D9E
L000033FD:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        L00003446
L00003414:
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
L00003439:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L00003439
L00003446:
	cmpl      $3, %ebp
	jae       L00003454
L0000344B:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00003454:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      64(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
L00003469:
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
	jg        L00003469
L00003490:
	movl      60(%esp), %esi
	jmp       L00001D9E
L00003499:
	movl      56(%esp), %ecx
L0000349D:
	cmpl      40(%esp), %edi
	je        L000039ED
L000034A7:
	movl      %ecx, %edi
	movl      %edx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      2(%edx,%ebx), %ecx
	leal      1(%edx,%ebx), %esi
	testb     $3, %cl
	je        L000034F4
L000034C0:
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
L000034E7:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%ebx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebp
	jne       L000034E7
L000034F4:
	cmpl      $3, %esi
	jae       L000034FF
L000034F9:
	movl      64(%esp), %ebx
	jmp       L00003543
L000034FF:
	incl      %edx
	movl      52(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      36(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      64(%esp), %ebx
L0000351C:
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
	jg        L0000351C
L00003543:
	movl      60(%esp), %esi
	movl      48(%esp), %edx
	movl      %edi, %ecx
	jmp       L00002A2D
L00003552:
	movl      %ebx, %eax
	subl      24(%esp), %eax
	movl      %eax, 28(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %eax
	movdqa    LC00004690-L0000163C(%eax), %xmm0
L0000357A:
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
	jne       L0000357A
L000035A9:
	movl      28(%esp), %ebx
	movl      24(%esp), %edx
	movl      60(%esp), %eax
	movl      $-2, %ecx
L000035BA:
	cmpl      %edx, 32(%esp)
	jne       L000035D3
L000035C0:
	movl      64(%esp), %ebx
	movl      48(%esp), %edx
	movl      %eax, %esi
	movl      56(%esp), %ecx
	jmp       L00002A2D
L000035D3:
	movl      %eax, 60(%esp)
	movl      %ebx, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %ecx
	movl      %ecx, %eax
	leal      (%ebx,%eax), %ecx
	leal      1(%ebx,%eax), %eax
	testb     $3, %al
	je        L00003623
L000035EE:
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
L00003614:
	movl      -4(%ebp,%ebx,4), %esi
	movl      %esi, (%eax,%ebx,4)
	leal      -1(%ebx), %ebx
	incl      %edx
	jne       L00003614
L00003621:
	jmp       L00003627
L00003623:
	movl      40(%esp), %ebp
L00003627:
	cmpl      $3, %ecx
	jae       L00003641
L0000362C:
	movl      64(%esp), %ebx
L00003630:
	movl      60(%esp), %esi
	movl      48(%esp), %edx
	movl      56(%esp), %ecx
	jmp       L00002A2D
L00003641:
	movl      52(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      36(%esp), %eax
	leal      (%eax,%ecx,4), %eax
	movl      60(%esp), %esi
	movl      48(%esp), %edx
L0000365C:
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
	jg        L0000365C
L00003683:
	movl      64(%esp), %ebx
	movl      56(%esp), %ecx
	jmp       L00002A2D
L00003690:
	movl      %ecx, %esi
L00003692:
	movl      52(%esp), %edx
	cmpl      %edx, 48(%esp)
	je        L00003729
L000036A0:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %ebx
	leal      (%esi,%ebx), %edi
	leal      1(%esi,%ebx), %edx
	testb     $3, %dl
	je        L000036EA
L000036B6:
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
L000036DD:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       L000036DD
L000036EA:
	cmpl      $3, %edi
	jb        L00003729
L000036EF:
	movl      56(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      64(%esp), %edx
	leal      (%edx,%edi,4), %edx
L00003702:
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
	jg        L00003702
L00003729:
	orl       $33554432, %ecx
	movl      60(%esp), %esi
	movl      %ecx, (%esi)
	jmp       L000037B6
L00003737:
	movl      %eax, %edx
L00003739:
	cmpl      72(%esp), %edi
	movl      44(%esp), %esi
	je        L000037AB
L00003743:
	movl      %edx, %ecx
	negl      %ecx
	cmpl      $-3, %ecx
	movl      $-2, %edi
	cmovg     %ecx, %edi
	leal      (%edx,%edi), %ebp
	leal      1(%edx,%edi), %ecx
	testb     $1, %cl
	je        L0000377F
L0000375E:
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
L0000377F:
	testl     %ebp, %ebp
	movl      %esi, %edi
	je        L000037AB
L00003785:
	notl      %ebx
	orl       $1056964608, %ebx
	movl      64(%esp), %ecx
	leal      (%ecx,%ebx,4), %ecx
L00003794:
	movl      -16(%edi,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%edi,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	leal      -2(%edx), %edx
	cmpl      $1, %edx
	jg        L00003794
L000037AB:
	orl       $33554432, %eax
	movl      60(%esp), %esi
	movl      %eax, (%esi)
L000037B6:
	movl      68(%esp), %eax
	movl      %esi, (%eax)
	jmp       L00001D9E
L000037C1:
	movl      %ecx, %esi
L000037C3:
	cmpl      %edx, 52(%esp)
	je        L0000385F
L000037CD:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %edi
	leal      1(%esi,%edx), %edx
	testb     $3, %dl
	je        L0000381C
L000037E8:
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
L0000380F:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       L0000380F
L0000381C:
	cmpl      $3, %edi
	movl      68(%esp), %ebx
	jb        L0000385F
L00003825:
	movl      56(%esp), %edi
	notl      %edi
	orl       $1056964608, %edi
	movl      64(%esp), %edx
	leal      (%edx,%edi,4), %edx
L00003838:
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
	jg        L00003838
L0000385F:
	orl       $33554432, %ecx
	movl      60(%esp), %esi
	movl      %ecx, (%esi)
	movl      %esi, (%ebx)
	jmp       L00001D9E
L00003872:
	movl      %ecx, %esi
L00003874:
	movl      40(%esp), %edx
	cmpl      %edx, 32(%esp)
	je        L000039DD
L00003882:
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %ebx
	movl      %ebx, 40(%esp)
	leal      1(%esi,%edx), %ebx
	testb     $3, %bl
	je        L000038D9
L000038A1:
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
L000038CC:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       L000038CC
L000038D9:
	cmpl      $3, 40(%esp)
	jb        L000039DD
L000038E4:
	movl      52(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      %ecx, %ebx
	movl      36(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movl      %ebx, %ecx
L000038FB:
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
	jg        L000038FB
L00003922:
	jmp       L000039DD
L00003927:
	movl      40(%esp), %esi
L0000392B:
	cmpl      %edi, 32(%esp)
	movl      40(%esp), %ecx
	movl      56(%esp), %edi
	je        L000039DD
L0000393D:
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
	je        L00003994
L00003960:
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
L00003987:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       L00003987
L00003994:
	cmpl      $3, 56(%esp)
	movl      40(%esp), %ecx
	jb        L000039DD
L0000399F:
	movl      52(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      %ecx, %ebx
	movl      36(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movl      %ebx, %ecx
L000039B6:
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
	jg        L000039B6
L000039DD:
	orl       $33554432, %ecx
	movl      %ecx, (%edi)
	movl      %edi, %ecx
	movl      68(%esp), %eax
	movl      %ecx, (%eax)
L000039ED:
	movl      64(%esp), %ebx
	movl      60(%esp), %esi
	movl      48(%esp), %edx
	jmp       L00002A2D
	.align 2, 0x90
L00003A00:
	.long	L00001691-L0000163C
	.long	L00001D82-L0000163C
	.long	L00001D82-L0000163C
	.long	L00001A83-L0000163C
	.long	L00001D82-L0000163C
	.long	L00001D82-L0000163C
	.long	L00001D82-L0000163C
	.long	L00001D82-L0000163C
	.long	L00001A90-L0000163C
	.long	L00001A93-L0000163C
	.align 2, 0x90
L00003A28:
	.long	L0000186A-L0000163C
	.long	L00001F1B-L0000163C
	.long	L00001F1B-L0000163C
	.long	L000025D0-L0000163C
	.long	L00001F1B-L0000163C
	.long	L00001F1B-L0000163C
	.long	L00001F1B-L0000163C
	.long	L00001F1B-L0000163C
	.long	L000025DF-L0000163C
	.long	L000025E2-L0000163C
# ----------------------
	.align 4, 0x90
	.globl	_nfgaloismatrix
_nfgaloismatrix:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L00003A5C
L00003A5C:
	popl      %ebp
	movl      84(%esp), %esi
	movl      80(%esp), %eax
	movl      %eax, (%esp)
	call      _checknf
L00003A6D:
	movl      %eax, %edi
	movl      28(%edi), %ebx
	movl      (%esi), %ecx
	movl      %ecx, %eax
	andl      $-33554432, %eax
	cmpl      $603979776, %eax
	jne       L00003A88
L00003A82:
	movl      %esi, 52(%esp)
	jmp       L00003A9A
L00003A88:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _algtobasis
L00003A94:
	movl      %eax, 52(%esp)
	movl      (%eax), %ecx
L00003A9A:
	movl      %ecx, 24(%esp)
	andl      $16777215, %ecx
	movl      %ebp, %esi
	movl      %esi, 36(%esp)
	movl      L_avma$non_lazy_ptr-L00003A5C(%esi), %eax
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
	movl      L_bot$non_lazy_ptr-L00003A5C(%esi), %esi
	movl      %esi, 28(%esp)
	subl      (%esi), %edx
	shrl      $2, %edx
	cmpl      %ecx, %edx
	movl      %ecx, %esi
	jae       L00003AF2
L00003AE6:
	movl      $14, (%esp)
	call      _pari_err
L00003AF2:
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
	jae       L00003B2F
L00003B23:
	movl      $14, (%esp)
	call      _pari_err
L00003B2F:
	movl      44(%esp), %ecx
	movl      40(%esp), %eax
	movl      %ecx, (%eax)
	movl      %esi, 48(%esp)
	movl      %esi, %eax
	orl       $603979776, %eax
	movl      %eax, (%ecx)
	cmpl      $2, %esi
	jb        L00003BDD
L00003B4F:
	movl      48(%esp), %eax
	leal      -1(%eax), %ecx
	leal      -2(%eax), %edx
	movl      $1, %eax
	testb     $3, %cl
	je        L00003BA3
L00003B63:
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
	movl      L_gen_0$non_lazy_ptr-L00003A5C(%esi), %ebx
L00003B90:
	movl      (%ebx), %esi
	movl      %esi, (%edx,%eax,4)
	incl      %eax
	cmpl      %eax, %ecx
	jne       L00003B90
L00003B9A:
	incl      %eax
	movl      40(%esp), %ebx
	movl      28(%esp), %edx
L00003BA3:
	cmpl      $3, %edx
	jb        L00003BDD
L00003BA8:
	subl      48(%esp), %eax
	movl      36(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L00003A5C(%ecx), %ecx
	.align 4, 0x90
L00003BC0:
	movl      (%ecx), %edx
	movl      %edx, (%ebp,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 4(%ebp,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 8(%ebp,%eax,4)
	movl      (%ecx), %edx
	movl      %edx, 12(%ebp,%eax,4)
	addl      $4, %eax
	jne       L00003BC0
L00003BDD:
	movl      36(%esp), %eax
	movl      L_gen_1$non_lazy_ptr-L00003A5C(%eax), %eax
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
	jb        L00003C77
L00003C0A:
	movl      $2, %ebp
	.align 4, 0x90
L00003C10:
	movl      (%ebx,%ebp,4), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_scalar_or_alg
L00003C1F:
	movl      (%eax), %ecx
	movl      $-33554432, %edx
	andl      %edx, %ecx
	cmpl      $335544320, %ecx
	jne       L00003C50
L00003C30:
	movl      52(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nfpoleval
L00003C44:
	jmp       L00003C6B
L00003C46:
	.align 4, 0x90
L00003C50:
	movl      4(%edi), %ecx
	movl      (%ecx), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-3, %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _scalarcol
L00003C6B:
	movl      56(%esp), %ecx
	movl      %eax, (%ecx,%ebp,4)
	incl      %ebp
	cmpl      %esi, %ebp
	jl        L00003C10
L00003C77:
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
	call      L00003C9C
L00003C9C:
	popl      %edi
	movl      120(%esp), %ebp
	movl      116(%esp), %esi
	movl      112(%esp), %eax
	movl      %ebp, 88(%esp)
	movl      L_avma$non_lazy_ptr-L00003C9C(%edi), %ecx
	movl      %ecx, 72(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 44(%esp)
	movl      %eax, (%esp)
	call      _checknf
L00003CC5:
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _checkgal
L00003CCF:
	movl      %ebp, (%esp)
	call      _checkprid
L00003CD7:
	movl      4(%ebx), %eax
	movl      4(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gequal
L00003CE9:
	testl     %eax, %eax
	jne       L00003D03
L00003CED:
	leal      LC0000471F-L00003C9C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      _pari_err
L00003D03:
	movl      12(%ebp), %eax
	cmpl      $2, 8(%eax)
	jl        L00003D22
L00003D0C:
	leal      LC00004743-L00003C9C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      _pari_err
L00003D22:
	movl      %edi, 48(%esp)
	movl      16(%ebp), %eax
	movl      8(%eax), %eax
	cmpl      $1, %eax
	jne       L00003E8C
L00003D35:
	movl      4(%ebx), %eax
	movl      (%eax), %edi
	movl      %edi, %esi
	andl      $16777215, %esi
	leal      -2(%esi), %ebx
	movl      48(%esp), %eax
	movl      L_bot$non_lazy_ptr-L00003C9C(%eax), %eax
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
	jae       L00003D82
L00003D6E:
	movl      $14, (%esp)
	movl      %edx, %ebp
	call      _pari_err
L00003D7C:
	movl      %ebp, %edx
	movl      72(%esp), %ecx
L00003D82:
	leal      -3(%esi), %ebp
	movl      %edx, (%ecx)
	cmpl      $16777216, %ebx
	jb        L00003DB1
L00003D8F:
	movl      48(%esp), %eax
	leal      LC00004764-L00003C9C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 76(%esp)
	call      _pari_err
L00003DAD:
	movl      76(%esp), %edx
L00003DB1:
	movl      %ebx, %eax
	orl       $738197504, %eax
	movl      %eax, (%edx)
	testl     %ebp, %ebp
	jle       L00004545
L00003DC2:
	movl      $1, %eax
	cmpl      $3, %esi
	je        L00003E5A
L00003DD0:
	addl      $5, %edi
	andl      $7, %edi
	movl      %ebp, %ecx
	subl      %edi, %ecx
	movl      $1, %eax
	je        L00003E52
L00003DE1:
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
	movdqa    LC000046B0-L00003C9C(%ecx), %xmm0
	movdqa    LC000046C0-L00003C9C(%ecx), %xmm1
	.align 4, 0x90
L00003E20:
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
	jne       L00003E20
L00003E4A:
	movl      72(%esp), %eax
	movl      76(%esp), %edx
L00003E52:
	cmpl      %eax, %ebx
	je        L00004545
L00003E5A:
	subl      %eax, %ebx
	movl      %ebp, %ecx
	subl      %eax, %ecx
	testb     $3, %bl
	je        L0000416C
L00003E69:
	movl      %edx, 76(%esp)
	movl      $2, %edx
	subl      %esi, %edx
	movl      44(%esp), %edi
	leal      (%edi,%edx,4), %edx
	andl      $3, %ebx
	negl      %ebx
L00003E80:
	movl      %eax, (%edx,%eax,4)
	incl      %eax
	incl      %ebx
	jne       L00003E80
L00003E87:
	jmp       L00004170
L00003E8C:
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
L00003EB2:
	movl      %eax, 32(%esp)
	movl      4(%edi), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	movl      $0, 40(%esp)
	addl      $-3, %ecx
	movl      %ecx, 76(%esp)
	movl      $0, %ebx
	jle       L00003F82
L00003EDA:
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
L00003F10:
	movl      64(%esp), %eax
	movl      4(%eax,%ebp,4), %esi
	movl      %esi, (%esp)
	call      _perm_order
L00003F20:
	cmpl      68(%esp), %eax
	jne       L00003F7B
L00003F26:
	movl      %esi, 4(%esp)
	movl      116(%esp), %eax
	movl      %eax, (%esp)
	call      _galoispermtopol
L00003F36:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _poltobasis
L00003F42:
	movl      %eax, %ebx
	movl      56(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _galoisapply
L00003F58:
	movl      60(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _idealval
L00003F6C:
	cmpl      $1, %eax
	je        L00003FA2
L00003F71:
	movl      72(%esp), %eax
	movl      52(%esp), %ecx
	movl      %ecx, (%eax)
L00003F7B:
	incl      %ebp
	cmpl      76(%esp), %ebp
	jl        L00003F10
L00003F82:
	movl      48(%esp), %ebp
	leal      LC00004769-L00003C9C(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      _pari_err
L00003F9C:
	movl      72(%esp), %ecx
	jmp       L00003FAE
L00003FA2:
	movl      %esi, 40(%esp)
	movl      72(%esp), %ecx
	movl      48(%esp), %ebp
L00003FAE:
	movl      %edi, %eax
	movl      %eax, 28(%esp)
	movl      4(%eax), %eax
	movl      $1073676288, %edi
	andl      4(%eax), %edi
	movl      (%ecx), %esi
	movl      L_bot$non_lazy_ptr-L00003C9C(%ebp), %edx
	movl      %edx, 76(%esp)
	movl      %esi, %eax
	subl      (%edx), %eax
	cmpl      $15, %eax
	movl      %ebp, %edx
	leal      -16(%esi), %ebp
	ja        L00003FED
L00003FD9:
	movl      $14, (%esp)
	call      _pari_err
L00003FE5:
	movl      48(%esp), %edx
	movl      72(%esp), %ecx
L00003FED:
	movl      %ecx, 72(%esp)
	movl      %ebp, (%ecx)
	movl      $335544324, -16(%esi)
	orl       $1073741824, %edi
	movl      %edi, -12(%esi)
	movl      L_gen_0$non_lazy_ptr-L00003C9C(%edx), %eax
	movl      (%eax), %eax
	movl      %eax, -8(%esi)
	movl      L_gen_1$non_lazy_ptr-L00003C9C(%edx), %eax
	movl      %edx, 48(%esp)
	movl      (%eax), %eax
	movl      %eax, -4(%esi)
	movl      32(%esp), %esi
	movl      %esi, (%esp)
	call      _modpr_genFq
L00004029:
	movl      80(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      28(%esp), %edi
	movl      %edi, %ecx
	movl      %eax, %edx
	call      _QX_galoisapplymod
L00004041:
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _nf_to_Fq
L00004051:
	movl      %eax, %esi
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _ZX_equal
L0000405F:
	xorl      %edi, %edi
	jmp       L0000409B
L00004063:
	.align 4, 0x90
L00004070:
	movl      80(%esp), %eax
	movl      84(%esp), %ecx
	movl      %eax, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      _Fq_pow
L0000408C:
	movl      %eax, %ebp
	incl      %edi
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _ZX_equal
L0000409B:
	testl     %eax, %eax
	je        L00004070
L0000409F:
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _Fl_inv
L000040AF:
	movl      %eax, 4(%esp)
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	call      _perm_pow
L000040BF:
	movl      76(%esp), %ecx
	cmpl      (%ecx), %eax
	movl      44(%esp), %edi
	jb        L0000415F
L000040CF:
	cmpl      %eax, %edi
	jbe       L0000415F
L000040D7:
	movl      48(%esp), %ecx
	movl      L_top$non_lazy_ptr-L00003C9C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L0000415F
L000040E5:
	movl      (%eax), %esi
	movl      %esi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        L000040FD
L000040F4:
	cmpl      $2, %ecx
	jne       L000041C1
L000040FD:
	movl      %esi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	subl      %ecx, %edi
	movl      %edi, 76(%esp)
	movl      %esi, %edx
	andl      $16777215, %edx
	movl      72(%esp), %ecx
	movl      %edi, (%ecx)
	je        L000041B8
L00004122:
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
	jne       L000042E9
L00004156:
	movl      72(%esp), %esi
	jmp       L000043EF
L0000415F:
	movl      72(%esp), %ecx
	movl      %edi, (%ecx)
L00004165:
	movl      %eax, %edx
	jmp       L00004545
L0000416C:
	movl      %edx, 76(%esp)
L00004170:
	cmpl      $3, %ecx
	jae       L0000417E
L00004175:
	movl      76(%esp), %edx
	jmp       L00004545
L0000417E:
	movl      $5, %ecx
	subl      %esi, %ecx
	movl      44(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L00004190:
	movl      %eax, -12(%ecx,%eax,4)
	leal      1(%eax), %edx
	movl      %edx, -8(%ecx,%eax,4)
	leal      2(%eax), %edx
	movl      %edx, -4(%ecx,%eax,4)
	leal      3(%eax), %edx
	movl      %edx, (%ecx,%eax,4)
	addl      $4, %eax
	cmpl      %ebp, %edx
	jne       L00004190
L000041AF:
	movl      76(%esp), %edx
	jmp       L00004545
L000041B8:
	movl      76(%esp), %edx
	jmp       L00004545
L000041C1:
	cmpl      $1, %ecx
	jne       L000043B6
L000041CA:
	movl      4(%eax), %ecx
	movl      %ecx, %edx
	andl      $16777215, %edx
	movl      %edx, 68(%esp)
	leal      0(,%edx,4), %esi
	subl      %esi, %edi
	movl      %edi, 76(%esp)
	cmpl      $2, %edx
	jb        L00004530
L000041EF:
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
	je        L000044AB
L0000421A:
	incl      %ebp
	cmpl      $-3, %ebx
	movl      $-2, %edx
	cmovg     %ebx, %edx
	movl      $0, 64(%esp)
	movl      %ebp, %esi
	andl      $-8, %esi
	je        L00004490
L00004239:
	movl      %esi, 56(%esp)
	movl      %ebp, 60(%esp)
	movl      %edx, %esi
	notl      %esi
	leal      (%eax,%esi,4), %ebp
	movl      44(%esp), %esi
	leal      -4(%esi), %esi
	cmpl      %ebp, %esi
	ja        L00004275
L00004253:
	leal      -4(%eax,%edi,4), %esi
	movl      %esi, 52(%esp)
	addl      %edi, %edx
	notl      %edx
	movl      44(%esp), %ebp
	leal      (%ebp,%edx,4), %edx
	cmpl      %edx, 52(%esp)
	movl      68(%esp), %esi
	jbe       L00004498
L00004275:
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
	movdqa    LC000046A0-L00003C9C(%edx), %xmm0
	movl      44(%esp), %ebp
L000042A5:
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
	jne       L000042A5
L000042D8:
	movl      56(%esp), %ecx
	movl      %ecx, 64(%esp)
	movl      40(%esp), %ecx
	jmp       L00004498
L000042E9:
	addl      $2, %esi
	cmpl      $-16777216, %ecx
	cmovne    %edi, %ebx
	movl      $0, 68(%esp)
	movl      %esi, %ecx
	andl      $-8, %ecx
	je        L000043D4
L00004308:
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
	ja        L0000434C
L0000432E:
	leal      -4(%eax,%edx,4), %ecx
	addl      %edx, %ebx
	subl      %ebx, %edi
	movl      %edi, %ebx
	movl      44(%esp), %edi
	leal      (%edi,%ebx,4), %ebx
	movl      $-2, %edi
	cmpl      %ebx, %ecx
	jbe       L000043DC
L0000434C:
	movl      %edx, %ecx
	subl      60(%esp), %ecx
	movl      %ecx, 68(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movl      48(%esp), %ecx
	movdqa    LC000046A0-L00003C9C(%ecx), %xmm0
	movl      %edx, %ebx
	movl      44(%esp), %edi
	.align 4, 0x90
L00004370:
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
	jne       L00004370
L000043A3:
	movl      68(%esp), %edx
	movl      60(%esp), %ecx
	movl      %ecx, 68(%esp)
	movl      $-2, %edi
	jmp       L000043DC
L000043B6:
	andl      $16777215, %esi
	leal      (%eax,%esi,4), %ecx
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
L000043CF:
	jmp       L00004165
L000043D4:
	movl      %esi, 64(%esp)
	movl      72(%esp), %esi
L000043DC:
	movl      68(%esp), %ecx
	cmpl      %ecx, 64(%esp)
	jne       L000043EF
L000043E6:
	movl      76(%esp), %edx
	jmp       L00004545
L000043EF:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebp
	testb     $3, %cl
	je        L0000443D
L00004406:
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
L00004430:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L00004430
L0000443D:
	cmpl      $3, %ebp
	jae       L0000444B
L00004442:
	movl      76(%esp), %edx
	jmp       L00004545
L0000444B:
	incl      %edx
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      44(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
L00004460:
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
	jg        L00004460
L00004487:
	movl      76(%esp), %edx
	jmp       L00004545
L00004490:
	movl      %ebp, 60(%esp)
	movl      68(%esp), %esi
L00004498:
	movl      64(%esp), %edx
	cmpl      %edx, 60(%esp)
	movl      $-2, %edx
	je        L00004530
L000044AB:
	movl      %ecx, %edi
	movl      %esi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %edx
	leal      (%esi,%edx), %ecx
	leal      1(%esi,%edx), %edx
	testb     $3, %dl
	je        L000044F5
L000044C3:
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
L000044E8:
	movl      -4(%eax,%esi,4), %edx
	movl      %edx, (%ebx,%esi,4)
	leal      -1(%esi), %esi
	incl      %ebp
	jne       L000044E8
L000044F5:
	cmpl      $3, %ecx
	jb        L00004530
L000044FA:
	notl      %edi
	orl       $1056964608, %edi
	movl      44(%esp), %edx
	leal      (%edx,%edi,4), %edx
L00004509:
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
	jg        L00004509
L00004530:
	movl      68(%esp), %eax
	orl       $33554432, %eax
	movl      76(%esp), %edx
	movl      %eax, (%edx)
	movl      72(%esp), %eax
	movl      %edx, (%eax)
L00004545:
	movl      %edx, %eax
	addl      $92, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000454F:
	.align 4, 0x90
_QX_galoisapplymod:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	movl      %ecx, %ebx
	call      L0000455E
L0000455E:
	popl      %edi
	movl      52(%esp), %esi
	leal      20(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      _Q_remove_denom
L00004573:
	movl      %eax, %ebp
	movl      20(%esp), %eax
	testl     %eax, %eax
	je        L000045F7
L0000457D:
	movl      %ebx, 16(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _Z_pval
L0000458D:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _powiu
L00004599:
	movl      %eax, %edi
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _mulii
L000045A7:
	movl      %eax, %esi
	movl      20(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _diviiexact
L000045B9:
	leal      24(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _invmod
L000045CD:
	testl     %eax, %eax
	jne       L000045F1
L000045D1:
	movl      24(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _gmodulo
L000045E1:
	movl      %eax, 4(%esp)
	movl      $20, (%esp)
	call      _pari_err
L000045F1:
	movl      24(%esp), %ebx
	jmp       L00004605
L000045F7:
	movl      %ebx, 16(%esp)
	movl      L_gen_1$non_lazy_ptr-L0000455E(%edi), %eax
	movl      (%eax), %ebx
	movl      %ebx, %edi
L00004605:
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _FpX_red
L00004611:
	movl      %eax, %ebp
	movl      %esi, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      _FpC_red
L00004623:
	movl      %esi, 12(%esp)
	movl      %eax, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _FpX_FpC_nfpoleval
L0000463B:
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      _FpC_Fp_mul
L0000464B:
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _gdivexact
L00004657:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LC00004660:
	.long	0
	.long	1075576832
	.align 3
LC00004668:
	.long	0
	.long	1067450368
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LC00004670:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00004680:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00004690:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC000046A0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC000046B0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
LC000046C0:
	.long	4
	.long	5
	.long	6
	.long	7
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC000046D0:
	.string	"galois"
LC000046D7:
	.string	"galois of degree higher than 11"
LC000046F7:
	.string	"galois (bug1)"
LC00004705:
	.string	"galois (bug2)"
LC00004713:
	.string	"galoisapply"
LC0000471F:
	.string	"incompatible data in idealfrobenius"
LC00004743:
	.string	"ramified prime in idealfrobenius"
LC00004764:
	.string	"lg()"
LC00004769:
	.string	"Frobenius element not found"
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

.subsections_via_symbols
