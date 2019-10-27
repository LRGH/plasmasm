	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_polgalois
_polgalois:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $188, %esp
	call      L0000000F
L0000000F:
	popl      %edi
	movl      208(%esp), %esi
	movl      %eax, 20(%esp)
	movl      (%eax), %eax
	movl      %eax, 32(%esp)
	movl      (%esi), %ebx
	movl      %ebx, %eax
	andl      $-33554432, %eax
	cmpl      $335544320, %eax
	je        L00000043
L00000031:
	movl      %eax, 4(%esp)
	movl      $22, (%esp)
	call      _pari_err
L00000041:
	movl      (%esi), %ebx
L00000043:
	movl      %edi, 92(%esp)
	andl      $16777215, %ebx
	movl      %ebx, %esi
	addl      $-3, %ebx
	jle       L0000006A
L00000054:
	cmpl      $12, %ebx
	movl      92(%esp), %ebp
	jl        L0000007E
L0000005D:
	movl      %eax, 4(%esp)
	movl      $7, (%esp)
	jmp       L00000079
L0000006A:
	movl      92(%esp), %ebp
	movl      %eax, 4(%esp)
	movl      $21, (%esp)
L00000079:
	call      _pari_err
L0000007E:
	movl      208(%esp), %eax
	movl      %eax, (%esp)
	call      _Q_primpart
L0000008D:
	movl      %eax, %edi
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _RgX_check_ZX
L0000009B:
	movl      %edi, (%esp)
	call      _ZX_is_irred
L000000A3:
	testl     %eax, %eax
	jne       L000000BB
L000000A7:
	movl      92(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $7, (%esp)
	call      _pari_err
L000000BB:
	cmpl      $3, %ebx
	jg        L000000F5
L000000C0:
	cmpl      $5, %esi
	je        L00001F64
L000000C9:
	cmpl      $4, %esi
	jne       L00001F87
L000000D2:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $1, %edx
	jmp       L00002138
L000000F5:
	movl      %edi, (%esp)
	movl      $0, 4(%esp)
	call      _ZX_primitive_to_monic
L00000105:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _ZX_Z_normalize
L00000115:
	movl      %eax, %edx
	cmpl      $7, %ebx
	jle       L00000134
L0000011C:
	movl      212(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      _galoisbig
L0000012F:
	jmp       L0000213F
L00000134:
	movl      %ebx, 48(%esp)
	movl      20(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      92(%esp), %ecx
	movsd     (%eax), %xmm0
	movsd     LC00002610-L0000000F(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	movsd     LC00002618-L0000000F(%ecx), %xmm1
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 160(%esp)
	movsd     LC00002620-L0000000F(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 168(%esp)
	movsd     LC00002628-L0000000F(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 152(%esp)
	movsd     LC00002630-L0000000F(%ecx), %xmm2
	divsd     %xmm0, %xmm2
	mulsd     %xmm1, %xmm2
	movsd     %xmm2, 144(%esp)
	addl      $-7, %esi
	movl      L000025D8-L0000000F(%ecx,%esi,4), %eax
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
	jmp       L0000020A
L000001EC:
	.align 4, 0x90
L000001F0:
	movl      20(%esp), %eax
	movl      116(%esp), %ecx
	movl      %ecx, (%eax)
	movl      120(%esp), %eax
	movl      %eax, (%esp)
	call      _tschirnhaus
L00000206:
	movl      124(%esp), %esi
L0000020A:
	movl      %eax, 56(%esp)
	movl      %eax, (%esp)
	call      _cauchy_bound
L00000216:
	fstpl     176(%esp)
	cmpl      $3, %esi
	ja        L000001F0
L00000222:
	movsd     176(%esp), %xmm0
	movsd     %xmm0, 80(%esp)
	jmp       *128(%esp)
L00000238:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 36(%esp)
	movl      %eax, 24(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        L00000260
L00000254:
	movl      $14, (%esp)
	call      _pari_err
L00000260:
	movl      20(%esp), %eax
	movl      36(%esp), %ecx
	movl      %ecx, (%eax)
	movl      24(%esp), %eax
	movl      $570425351, -28(%eax)
	movsd     80(%esp), %xmm0
	mulsd     160(%esp), %xmm0
	cvttsd2si %xmm0, %eax
	addl      $4, %eax
	jmp       L00000298
L0000028D:
	.align 4, 0x90
L00000290:
	movl      28(%esp), %eax
	leal      -2(%eax,%eax), %eax
L00000298:
	movl      %eax, 28(%esp)
	movl      %eax, 4(%esp)
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _cleanroots
L000002AC:
	movl      %eax, %ebp
	movl      4(%ebp), %edi
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      _gsqr
L000002BC:
	movl      %eax, %esi
	movl      4(%ebp), %eax
	movl      16(%ebp), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L000002D0:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L000002DC:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gmul
L000002E8:
	movl      %eax, %esi
	movl      12(%ebp), %edi
	movl      16(%ebp), %eax
	movl      %eax, (%esp)
	call      _gsqr
L000002F8:
	movl      %eax, %ebx
	movl      8(%ebp), %eax
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L0000030C:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L00000318:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gmul
L00000324:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000330:
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
	jae       L0000037A
L00000362:
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
L00000374:
	movl      %ebx, %edx
	movl      16(%esp), %ebx
L0000037A:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        L0000042D
L00000395:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        L00000410
L000003A1:
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        L00000410
L000003AB:
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       L000003CC
L000003BF:
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       L000003CC
L000003C6:
	movl      16(%esp), %eax
	jmp       L00000410
L000003CC:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
	.align 4, 0x90
L000003E0:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L000003E0
L000003FD:
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        L0000042D
L00000408:
	.align 4, 0x90
L00000410:
	leal      -4(%ebx,%eax,4), %eax
	.align 4, 0x90
L00000420:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L00000420
L0000042D:
	movl      4(%edi), %eax
	movl      8(%edi), %ebx
	movl      %ebx, 4(%edi)
	movl      %eax, 8(%edi)
	movl      %eax, (%esp)
	call      _gsqr
L00000441:
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L00000455:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000461:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L0000046D:
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L0000047F:
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000493:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L0000049F:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
L000004AB:
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
L000004BB:
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
	jae       L00000505
L000004ED:
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
L000004FF:
	movl      %ebx, %edx
	movl      16(%esp), %ebx
L00000505:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        L000005AD
L00000520:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        L00000590
L0000052C:
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        L00000590
L00000536:
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       L00000557
L0000054A:
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       L00000557
L00000551:
	movl      16(%esp), %eax
	jmp       L00000590
L00000557:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
L00000560:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L00000560
L0000057D:
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        L000005AD
L00000588:
	.align 4, 0x90
L00000590:
	leal      -4(%ebx,%eax,4), %eax
	.align 4, 0x90
L000005A0:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L000005A0
L000005AD:
	movl      4(%edi), %eax
	movl      12(%edi), %ebx
	movl      %ebx, 4(%edi)
	movl      %eax, 12(%edi)
	movl      8(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L000005C4:
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L000005D8:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L000005E4:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L000005F0:
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000602:
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000616:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L00000622:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
L0000062E:
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
L0000063E:
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
	jae       L00000688
L00000670:
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
L00000682:
	movl      %ebx, %edx
	movl      16(%esp), %ebx
L00000688:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        L0000073D
L000006A3:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        L00000720
L000006AF:
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        L00000720
L000006B9:
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       L000006DA
L000006CD:
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       L000006DA
L000006D4:
	movl      16(%esp), %eax
	jmp       L00000720
L000006DA:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
	.align 4, 0x90
L000006F0:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L000006F0
L0000070D:
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        L0000073D
L00000718:
	.align 4, 0x90
L00000720:
	leal      -4(%ebx,%eax,4), %eax
	.align 4, 0x90
L00000730:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L00000730
L0000073D:
	movl      4(%edi), %eax
	movl      16(%edi), %ebx
	movl      %ebx, 4(%edi)
	movl      %eax, 16(%edi)
	movl      8(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000754:
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L00000768:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000774:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L00000780:
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000792:
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L000007A6:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L000007B2:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
L000007BE:
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
L000007CE:
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
	jae       L00000818
L00000800:
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
L00000812:
	movl      %ebx, %edx
	movl      16(%esp), %ebx
L00000818:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        L000008CD
L00000833:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        L000008B0
L0000083F:
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        L000008B0
L00000849:
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       L0000086A
L0000085D:
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       L0000086A
L00000864:
	movl      16(%esp), %eax
	jmp       L000008B0
L0000086A:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
	.align 4, 0x90
L00000880:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L00000880
L0000089D:
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        L000008CD
L000008A8:
	.align 4, 0x90
L000008B0:
	leal      -4(%ebx,%eax,4), %eax
	.align 4, 0x90
L000008C0:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L000008C0
L000008CD:
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 8(%edi)
	movl      %eax, 12(%edi)
	movl      4(%edi), %ebx
	movl      %ecx, (%esp)
	call      _gsqr
L000008E4:
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L000008F8:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000904:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L00000910:
	movl      %eax, 16(%esp)
	movl      12(%edi), %esi
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000922:
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000936:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L00000942:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gmul
L0000094E:
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
L0000095E:
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
	jae       L000009A8
L00000990:
	movl      $14, (%esp)
	movl      %ebx, 16(%esp)
	movl      %edx, %ebx
	call      _pari_err
L000009A2:
	movl      %ebx, %edx
	movl      16(%esp), %ebx
L000009A8:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%ebp), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        L00000A5D
L000009C3:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        L00000A40
L000009CF:
	addl      $7, %edx
	andl      $7, %edx
	subl      %edx, %ecx
	je        L00000A40
L000009D9:
	movl      %edx, 44(%esp)
	movl      %eax, 16(%esp)
	leal      4(%ebx,%eax,4), %eax
	leal      (%ebp,%esi,4), %edx
	cmpl      %edx, %eax
	jae       L000009FA
L000009ED:
	leal      4(%ebp), %eax
	cmpl      %ebx, %eax
	jae       L000009FA
L000009F4:
	movl      16(%esp), %eax
	jmp       L00000A40
L000009FA:
	leal      -16(%ebp,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
	.align 4, 0x90
L00000A10:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L00000A10
L00000A2D:
	cmpl      $0, 44(%esp)
	movl      16(%esp), %eax
	je        L00000A5D
L00000A38:
	.align 4, 0x90
L00000A40:
	leal      -4(%ebx,%eax,4), %eax
	.align 4, 0x90
L00000A50:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L00000A50
L00000A5D:
	movl      12(%edi), %eax
	movl      16(%edi), %ecx
	movl      %ecx, 12(%edi)
	movl      %eax, 16(%edi)
	movl      4(%edi), %ebx
	movl      8(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000A77:
	movl      %eax, %esi
	movl      4(%edi), %eax
	movl      16(%edi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L00000A8B:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000A97:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L00000AA3:
	movl      %eax, %esi
	movl      12(%edi), %ebp
	movl      16(%edi), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000AB3:
	movl      %eax, %ebx
	movl      8(%edi), %eax
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000AC7:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L00000AD3:
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      _gmul
L00000ADF:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000AEB:
	movl      24(%esp), %ecx
	movl      %eax, -4(%ecx)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
L00000B06:
	movl      %eax, %ebx
	movl      %ebx, (%esp)
	call      _real_i
L00000B10:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00000B20:
	movl      %eax, %esi
	movl      %ebx, (%esp)
	call      _imag_i
L00000B2A:
	movl      %eax, (%esp)
	call      _gexpo
L00000B32:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00000B40
L00000B3A:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00000B40:
	cmpl      $-9, %ecx
	jge       L00000290
L00000B49:
	movl      %esi, (%esp)
	call      _ZX_is_squarefree
L00000B51:
	testl     %eax, %eax
	je        L000001F0
L00000B59:
	movl      %esi, (%esp)
	call      _ZX_factor
L00000B61:
	movl      4(%eax), %ecx
	movl      (%ecx), %eax
	movl      $16777215, %edx
	andl      %edx, %eax
	cmpl      $4, %eax
	je        L00002337
L00000B76:
	cmpl      $3, %eax
	movl      48(%esp), %esi
	je        L0000236C
L00000B83:
	cmpl      $2, %eax
	je        L0000238F
L00000B8C:
	movl      108(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
L00000BA0:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 36(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        L00000BC4
L00000BB8:
	movl      $14, (%esp)
	call      _pari_err
L00000BC4:
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
	ja        L00000BF8
L00000BEC:
	movl      $14, (%esp)
	call      _pari_err
L00000BF8:
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
	ja        L00000C2C
L00000C20:
	movl      $14, (%esp)
	call      _pari_err
L00000C2C:
	movl      20(%esp), %eax
	movl      76(%esp), %ecx
	movl      %ecx, (%eax)
	movl      68(%esp), %eax
	movl      $738197511, -28(%eax)
	movsd     80(%esp), %xmm0
	mulsd     168(%esp), %xmm0
	cvttsd2si %xmm0, %ecx
	addl      $4, %ecx
	jmp       L00000C68
L00000C59:
	.align 4, 0x90
L00000C60:
	movl      60(%esp), %ecx
	leal      -2(%ecx,%ecx), %ecx
L00000C68:
	movl      56(%esp), %eax
	movl      %ecx, 60(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _cleanroots
L00000C7C:
	movl      %eax, %edi
	leal      4(%edi), %eax
	movl      %eax, 96(%esp)
	leal      -16(%edi), %eax
	movl      %eax, 64(%esp)
	movl      $1, %ebp
	movl      %edi, 28(%esp)
	.align 4, 0x90
L00000CA0:
	cmpl      $1, %ebp
	movl      %edi, %ebx
	je        L00000E6D
L00000CAB:
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
	jg        L00000DB0
L00000CEA:
	cmpl      %esi, %eax
	jae       L00000CFA
L00000CEE:
	movl      $14, (%esp)
	call      _pari_err
L00000CFA:
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	movl      %edx, (%eax)
	movl      (%edi), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edx)
	cmpl      $2, %esi
	movl      16(%esp), %edx
	jb        L00000D8D
L00000D18:
	leal      -1(%esi), %eax
	cmpl      $8, %eax
	jb        L00000D75
L00000D20:
	addl      $7, %ebx
	andl      $7, %ebx
	subl      %ebx, %eax
	je        L00000D75
L00000D2A:
	movl      80(%esp), %ecx
	leal      4(%edx,%ecx,4), %ecx
	leal      (%edi,%esi,4), %edx
	cmpl      %edx, %ecx
	movl      16(%esp), %edx
	jae       L00000D43
L00000D3D:
	cmpl      %edx, 96(%esp)
	jb        L00000D75
L00000D43:
	movl      64(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
	subl      %eax, %esi
	leal      -16(%edx), %edx
	.align 4, 0x90
L00000D50:
	movupd    -16(%ecx), %xmm0
	movupd    (%ecx), %xmm1
	movupd    %xmm1, (%edx)
	movupd    %xmm0, -16(%edx)
	addl      $-32, %ecx
	addl      $-32, %edx
	addl      $-8, %eax
	jne       L00000D50
L00000D6D:
	testl     %ebx, %ebx
	movl      16(%esp), %edx
	je        L00000D8D
L00000D75:
	movl      80(%esp), %eax
	leal      -4(%edx,%eax,4), %eax
	.align 4, 0x90
L00000D80:
	movl      -4(%edi,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L00000D80
L00000D8D:
	movl      24(%esp), %ebx
	movl      4(%ebx), %eax
	movl      (%ebx,%ebp,4), %ecx
	movl      %ecx, 4(%ebx)
	movl      %eax, (%ebx,%ebp,4)
	jmp       L00000E6D
L00000DA2:
	.align 4, 0x90
L00000DB0:
	cmpl      %esi, %eax
	jae       L00000DC0
L00000DB4:
	movl      $14, (%esp)
	call      _pari_err
L00000DC0:
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	movl      %edx, (%eax)
	movl      (%edi), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edx)
	cmpl      $2, %esi
	movl      16(%esp), %edx
	jb        L00000E5D
L00000DDE:
	leal      -1(%esi), %eax
	cmpl      $8, %eax
	jb        L00000E45
L00000DE6:
	addl      $7, %ebx
	andl      $7, %ebx
	subl      %ebx, %eax
	je        L00000E45
L00000DF0:
	movl      80(%esp), %ecx
	leal      4(%edx,%ecx,4), %ecx
	leal      (%edi,%esi,4), %edx
	cmpl      %edx, %ecx
	movl      16(%esp), %edx
	jae       L00000E09
L00000E03:
	cmpl      %edx, 96(%esp)
	jb        L00000E45
L00000E09:
	movl      64(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
	subl      %eax, %esi
	leal      -16(%edx), %edx
	.align 4, 0x90
L00000E20:
	movupd    -16(%ecx), %xmm0
	movupd    (%ecx), %xmm1
	movupd    %xmm1, (%edx)
	movupd    %xmm0, -16(%edx)
	addl      $-32, %ecx
	addl      $-32, %edx
	addl      $-8, %eax
	jne       L00000E20
L00000E3D:
	testl     %ebx, %ebx
	movl      16(%esp), %edx
	je        L00000E5D
L00000E45:
	movl      80(%esp), %eax
	leal      -4(%edx,%eax,4), %eax
	.align 4, 0x90
L00000E50:
	movl      -4(%edi,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L00000E50
L00000E5D:
	movl      24(%esp), %ebx
	movl      8(%ebx), %eax
	movl      20(%ebx), %ecx
	movl      %ecx, 8(%ebx)
	movl      %eax, 20(%ebx)
L00000E6D:
	movl      %ebp, 16(%esp)
	movl      92(%esp), %eax
	movl      %eax, 80(%esp)
	movl      (%eax), %esi
	movl      $1, %edi
	movl      136(%esp), %ebp
	.align 4, 0x90
L00000E90:
	movl      %esi, 24(%esp)
	movl      -12(%ebp), %eax
	movl      -8(%ebp), %ecx
	movl      (%ebx,%eax,4), %eax
	movl      (%ebx,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000EAC:
	movl      %eax, %esi
	movl      -4(%ebp), %eax
	movl      (%ebp), %ecx
	movl      (%ebx,%eax,4), %eax
	movl      (%ebx,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000EC6:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00000ED2:
	movl      %eax, %esi
	movl      (%ebx,%edi,4), %eax
	movl      %eax, (%esp)
	call      _gsqr
L00000EDF:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00000EEB:
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
L00000EFB:
	movl      %eax, %esi
	incl      %edi
	addl      $16, %ebp
	cmpl      $6, %edi
	jne       L00000E90
L00000F06:
	movl      %esi, (%esp)
	call      _real_i
L00000F0E:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00000F1E:
	movl      76(%esp), %ecx
	movl      16(%esp), %ebp
	movl      %eax, (%ecx,%ebp,4)
	movl      %esi, (%esp)
	call      _imag_i
L00000F31:
	movl      %eax, (%esp)
	call      _gexpo
L00000F39:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00000F47
L00000F41:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00000F47:
	movl      44(%esp), %eax
	movl      %ecx, (%eax,%ebp,4)
	movl      36(%esp), %eax
	movl      %esi, (%eax,%ebp,4)
	incl      %ebp
	cmpl      $7, %ebp
	movl      28(%esp), %edi
	jne       L00000CA0
L00000F63:
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
L00000F77:
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
L00000F81:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00000F91:
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _imag_i
L00000F9B:
	movl      %eax, (%esp)
	call      _gexpo
L00000FA3:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00000FB1
L00000FAB:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00000FB1:
	cmpl      $-9, %ecx
	jge       L00000C60
L00000FBA:
	movl      %ebx, (%esp)
	call      _ZX_is_squarefree
L00000FC2:
	testl     %eax, %eax
	je        L000001F0
L00000FCA:
	movl      %ebx, (%esp)
	call      _ZX_factor
L00000FD2:
	movl      4(%eax), %esi
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L00000FE1:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L00000FF1:
	movl      (%esi), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	cmpl      $2, %ecx
	je        L00001FCA
L00001003:
	testl     %eax, %eax
	je        L00001FEE
L0000100B:
	movl      60(%esp), %esi
	addl      $-64, %esi
	sarl      $1, %esi
	negl      %esi
	movl      72(%esp), %eax
	cmpl      %esi, -24(%eax)
	jg        L00001047
L0000101F:
	movl      68(%esp), %eax
	movl      -24(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
L00001032:
	movl      %eax, (%esp)
	call      _gequal0
L0000103A:
	movl      $1, %ecx
	testl     %eax, %eax
	jne       L000011BD
L00001047:
	movl      72(%esp), %eax
	cmpl      %esi, -20(%eax)
	jg        L00001078
L00001050:
	movl      68(%esp), %eax
	movl      -20(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
L00001063:
	movl      %eax, (%esp)
	call      _gequal0
L0000106B:
	movl      $2, %ecx
	testl     %eax, %eax
	jne       L000011BD
L00001078:
	movl      72(%esp), %eax
	cmpl      %esi, -16(%eax)
	jg        L000010A9
L00001081:
	movl      68(%esp), %eax
	movl      -16(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
L00001094:
	movl      %eax, (%esp)
	call      _gequal0
L0000109C:
	movl      $3, %ecx
	testl     %eax, %eax
	jne       L000011BD
L000010A9:
	movl      72(%esp), %eax
	cmpl      %esi, -12(%eax)
	jg        L000010DA
L000010B2:
	movl      68(%esp), %eax
	movl      -12(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
L000010C5:
	movl      %eax, (%esp)
	call      _gequal0
L000010CD:
	movl      $4, %ecx
	testl     %eax, %eax
	jne       L000011BD
L000010DA:
	movl      72(%esp), %eax
	cmpl      %esi, -8(%eax)
	jg        L0000110B
L000010E3:
	movl      68(%esp), %eax
	movl      -8(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
L000010F6:
	movl      %eax, (%esp)
	call      _gequal0
L000010FE:
	movl      $5, %ecx
	testl     %eax, %eax
	jne       L000011BD
L0000110B:
	movl      72(%esp), %eax
	cmpl      %esi, -4(%eax)
	jg        L000011A4
L00001118:
	movl      68(%esp), %eax
	movl      -4(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _poleval
L0000112B:
	movl      %eax, (%esp)
	call      _gequal0
L00001133:
	testl     %eax, %eax
	je        L000011A4
L00001137:
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
	jae       L0000116D
L00001161:
	movl      $14, (%esp)
	call      _pari_err
L0000116D:
	movl      20(%esp), %eax
	movl      %esi, (%eax)
	movl      28(%esp), %eax
	movl      (%eax), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%esi)
	cmpl      $2, %edi
	jb        L000014DD
L0000118B:
	movl      %edi, %eax
	negl      %eax
	leal      -1(%edi), %ecx
	cmpl      $8, %ecx
	jae       L00001451
L0000119B:
	movl      28(%esp), %edx
	jmp       L000014C9
L000011A4:
	movl      112(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
L000011B8:
	movl      $7, %ecx
L000011BD:
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
	jae       L000011F7
L000011EB:
	movl      $14, (%esp)
	call      _pari_err
L000011F7:
	movl      20(%esp), %eax
	movl      %esi, (%eax)
	movl      28(%esp), %eax
	movl      (%eax), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        L000012AD
L00001215:
	movl      %ebx, %eax
	negl      %eax
	leal      -1(%ebx), %ecx
	cmpl      $8, %ecx
	jae       L00001227
L00001221:
	movl      28(%esp), %edx
	jmp       L00001299
L00001227:
	addl      $7, %edi
	andl      $7, %edi
	subl      %edi, %ecx
	je        L00001254
L00001231:
	movl      %eax, 16(%esp)
	leal      4(%ebp,%eax,4), %eax
	movl      28(%esp), %edx
	leal      (%edx,%ebx,4), %edx
	cmpl      %edx, %eax
	jae       L0000125A
L00001244:
	cmpl      %ebp, 96(%esp)
	jae       L0000125A
L0000124A:
	movl      28(%esp), %edx
	movl      16(%esp), %eax
	jmp       L00001299
L00001254:
	movl      28(%esp), %edx
	jmp       L00001299
L0000125A:
	movl      28(%esp), %eax
	leal      -16(%eax,%ebx,4), %edx
	subl      %ecx, %ebx
	leal      -16(%ebp), %eax
	.align 4, 0x90
L00001270:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L00001270
L0000128D:
	testl     %edi, %edi
	movl      28(%esp), %edx
	movl      16(%esp), %eax
	je        L000012AD
L00001299:
	leal      -4(%ebp,%eax,4), %eax
	.align 4, 0x90
L000012A0:
	movl      -4(%edx,%ebx,4), %ecx
	movl      %ecx, (%eax,%ebx,4)
	decl      %ebx
	cmpl      $1, %ebx
	jg        L000012A0
L000012AD:
	movl      4(%esi), %eax
	movl      24(%esp), %edx
	movl      (%esi,%edx,4), %ecx
	movl      %ecx, 4(%esi)
	movl      %eax, (%esi,%edx,4)
L000012BD:
	movl      80(%esp), %eax
	movl      (%eax), %ebx
	movl      4(%esi), %eax
	movl      8(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L000012D5:
	movl      %eax, %edi
	movl      4(%esi), %eax
	movl      8(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
L000012E9:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gmul
L000012F5:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gadd
L00001301:
	movl      %eax, %edi
	movl      8(%esi), %eax
	movl      12(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001315:
	movl      %eax, %ebx
	movl      8(%esi), %eax
	movl      12(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
L00001329:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L00001335:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
L00001341:
	movl      %eax, %edi
	movl      12(%esi), %eax
	movl      16(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001355:
	movl      %eax, %ebx
	movl      12(%esi), %eax
	movl      16(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
L00001369:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L00001375:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
L00001381:
	movl      %eax, %edi
	movl      16(%esi), %eax
	movl      20(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001395:
	movl      %eax, %ebx
	movl      16(%esi), %eax
	movl      20(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gsub
L000013A9:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L000013B5:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
L000013C1:
	movl      %eax, %edi
	movl      4(%esi), %eax
	movl      20(%esi), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gmul
L000013D5:
	movl      %eax, %ebx
	movl      4(%esi), %eax
	movl      20(%esi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gsub
L000013E9:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gmul
L000013F5:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _gadd
L00001401:
	movl      %eax, (%esp)
	call      _gsqr
L00001409:
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
L00001413:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00001423:
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _imag_i
L0000142D:
	movl      %eax, (%esp)
	call      _gexpo
L00001435:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00001443
L0000143D:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00001443:
	cmpl      $-10, %ecx
	jg        L00000C60
L0000144C:
	jmp       L00001F19
L00001451:
	addl      $7, %ebp
	andl      $7, %ebp
	subl      %ebp, %ecx
	je        L0000147E
L0000145B:
	movl      %eax, 24(%esp)
	leal      4(%ebx,%eax,4), %eax
	movl      28(%esp), %edx
	leal      (%edx,%edi,4), %edx
	cmpl      %edx, %eax
	jae       L00001484
L0000146E:
	cmpl      %ebx, 96(%esp)
	jae       L00001484
L00001474:
	movl      28(%esp), %edx
	movl      24(%esp), %eax
	jmp       L000014C9
L0000147E:
	movl      28(%esp), %edx
	jmp       L000014C9
L00001484:
	movl      28(%esp), %eax
	leal      -16(%eax,%edi,4), %edx
	subl      %ecx, %edi
	leal      -16(%ebx), %eax
	.align 4, 0x90
L000014A0:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L000014A0
L000014BD:
	testl     %ebp, %ebp
	movl      28(%esp), %edx
	movl      24(%esp), %eax
	je        L000014DD
L000014C9:
	leal      -4(%ebx,%eax,4), %eax
	.align 4, 0x90
L000014D0:
	movl      -4(%edx,%edi,4), %ecx
	movl      %ecx, (%eax,%edi,4)
	decl      %edi
	cmpl      $1, %edi
	jg        L000014D0
L000014DD:
	movl      8(%esi), %eax
	movl      20(%esi), %ecx
	movl      %ecx, 8(%esi)
	movl      %eax, 20(%esi)
	jmp       L000012BD
L000014EE:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -28(%eax), %ecx
	movl      %ecx, 60(%esp)
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $27, %eax
	ja        L00001512
L00001506:
	movl      $14, (%esp)
	call      _pari_err
L00001512:
	movl      20(%esp), %eax
	movl      60(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $570425351, (%ecx)
	movsd     80(%esp), %xmm0
	mulsd     152(%esp), %xmm0
	cvttsd2si %xmm0, %ecx
	addl      $4, %ecx
	jmp       L00001548
L0000153A:
	.align 4, 0x90
L00001540:
	movl      100(%esp), %ecx
	leal      -2(%ecx,%ecx), %ecx
L00001548:
	movl      56(%esp), %eax
	jmp       L00001570
L0000154E:
	movl      132(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
L00001565:
	movl      56(%esp), %eax
	movl      100(%esp), %ecx
	.align 4, 0x90
L00001570:
	movl      %ecx, 100(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _cleanroots
L00001580:
	leal      4(%eax), %ecx
	movl      %ecx, 72(%esp)
	movl      %eax, 64(%esp)
	leal      -16(%eax), %eax
	movl      %eax, 68(%esp)
	movl      $1, %ebp
	.align 4, 0x90
L000015A0:
	cmpl      $1, %ebp
	movl      64(%esp), %edx
	movl      %edx, %esi
	je        L000016BD
L000015AF:
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
	jae       L000015EF
L000015DF:
	movl      $14, (%esp)
	call      _pari_err
L000015EB:
	movl      64(%esp), %edx
L000015EF:
	movl      20(%esp), %eax
	movl      76(%esp), %ebx
	movl      %ebx, (%eax)
	movl      (%edx), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%ebx)
	cmpl      $2, %esi
	jb        L000016AD
L0000160D:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jb        L00001690
L00001619:
	movl      24(%esp), %ebx
	addl      $7, %ebx
	andl      $7, %ebx
	subl      %ebx, %ecx
	je        L00001690
L00001627:
	movl      %eax, 24(%esp)
	leal      4(%edi,%eax,4), %eax
	leal      (%edx,%esi,4), %edx
	cmpl      %edx, %eax
	jae       L00001646
L00001636:
	cmpl      %edi, 72(%esp)
	jae       L00001646
L0000163C:
	movl      64(%esp), %edx
	movl      24(%esp), %eax
	jmp       L00001690
L00001646:
	movl      68(%esp), %eax
	leal      (%eax,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%edi), %eax
	.align 4, 0x90
L00001660:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L00001660
L0000167D:
	testl     %ebx, %ebx
	movl      64(%esp), %edx
	movl      24(%esp), %eax
	je        L000016AD
L00001689:
	.align 4, 0x90
L00001690:
	leal      -4(%edi,%eax,4), %eax
	.align 4, 0x90
L000016A0:
	movl      -4(%edx,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L000016A0
L000016AD:
	movl      76(%esp), %esi
	movl      4(%esi), %eax
	movl      (%esi,%ebp,4), %ecx
	movl      %ecx, 4(%esi)
	movl      %eax, (%esi,%ebp,4)
L000016BD:
	movl      %esi, 76(%esp)
	movl      %ebp, 96(%esp)
	movl      92(%esp), %eax
	movl      (%eax), %ecx
	movl      $1, %edi
	movl      $20, %eax
	movl      $80, %edx
	movl      140(%esp), %esi
	.align 4, 0x90
L000016F0:
	movl      %edx, 36(%esp)
	movl      %eax, 28(%esp)
	movl      %edi, %eax
	movl      %eax, 16(%esp)
	leal      1(%edi), %ebx
	movl      %esi, 80(%esp)
	movl      %esi, %edi
	movl      %ebx, 44(%esp)
	movl      76(%esp), %ebp
	.align 4, 0x90
L00001710:
	movl      %ecx, 24(%esp)
	movl      -12(%edi), %eax
	movl      -8(%edi), %ecx
	movl      (%ebp,%eax,4), %eax
	movl      (%ebp,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L0000172E:
	movl      %eax, %esi
	movl      -4(%edi), %eax
	movl      (%edi), %ecx
	movl      (%ebp,%eax,4), %eax
	movl      (%ebp,%ecx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001749:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00001755:
	movl      %eax, %esi
	movl      16(%esp), %eax
	movl      (%ebp,%eax,4), %eax
	movl      (%ebp,%ebx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L0000176F:
	movl      %eax, (%esp)
	call      _gsqr
L00001777:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001783:
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _gadd
L00001793:
	movl      %eax, %ecx
	incl      %ebx
	addl      $16, %edi
	cmpl      $7, %ebx
	jne       L00001710
L000017A2:
	movl      28(%esp), %eax
	addl      $-4, %eax
	movl      36(%esp), %edx
	movl      80(%esp), %esi
	addl      %edx, %esi
	addl      $-16, %edx
	movl      44(%esp), %edi
	cmpl      $6, %edi
	jne       L000016F0
L000017C3:
	movl      60(%esp), %eax
	movl      96(%esp), %ebp
	movl      %ecx, (%eax,%ebp,4)
	incl      %ebp
	cmpl      $7, %ebp
	jne       L000015A0
L000017D8:
	movl      %ecx, %ebp
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
L000017EE:
	movl      %eax, %edi
	movl      %edi, (%esp)
	call      _real_i
L000017F8:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00001808:
	movl      %eax, %esi
	movl      %edi, (%esp)
	call      _imag_i
L00001812:
	movl      %eax, (%esp)
	call      _gexpo
L0000181A:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00001828
L00001822:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00001828:
	cmpl      $-9, %ecx
	jge       L00001540
L00001831:
	movl      %esi, (%esp)
	call      _ZX_is_squarefree
L00001839:
	testl     %eax, %eax
	je        L000001F0
L00001841:
	movl      %esi, (%esp)
	call      _ZX_factor
L00001849:
	movl      4(%eax), %esi
	movl      (%esi), %eax
	movl      $16777215, %ecx
	andl      %ecx, %eax
	addl      $-2, %eax
	cmpl      $3, %eax
	ja        L0000154E
L00001861:
	movl      92(%esp), %ecx
	movl      L000025FC-L0000000F(%ecx,%eax,4), %eax
	addl      %ecx, %eax
	movl      48(%esp), %ebx
	jmp       *%eax
L00001874:
	movl      20(%esp), %eax
	movl      (%eax), %edi
	leal      -44(%edi), %eax
	movl      %eax, 60(%esp)
	movl      %edi, %eax
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $43, %eax
	ja        L0000189A
L0000188E:
	movl      $14, (%esp)
	call      _pari_err
L0000189A:
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
L000018C1:
	movl      12(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L000018D0:
	movl      %eax, %esi
	movl      16(%ebx), %eax
	movl      20(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L000018E4:
	movl      24(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L000018F3:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L000018FF:
	movl      %eax, -40(%edi)
	movl      $1, 28(%esp)
	movl      $1, %ecx
	.align 4, 0x90
L00001910:
	movl      $4, %ebp
	movl      %ecx, 44(%esp)
	movl      %ecx, %ebx
	.align 4, 0x90
L00001920:
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
	jae       L00001964
L00001954:
	movl      $14, (%esp)
	call      _pari_err
L00001960:
	movl      64(%esp), %edx
L00001964:
	movl      20(%esp), %eax
	movl      %edi, (%eax)
	movl      (%edx), %eax
	movl      $-16777217, %ecx
	andl      %ecx, %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	jb        L00001A5D
L0000197E:
	movl      %esi, %eax
	negl      %eax
	leal      -1(%esi), %ecx
	cmpl      $8, %ecx
	jae       L000019A0
L0000198A:
	movl      24(%esp), %ecx
	jmp       L00001A40
L00001993:
	.align 4, 0x90
L000019A0:
	movl      %eax, 36(%esp)
	movl      16(%esp), %eax
	addl      $7, %eax
	andl      $7, %eax
	movl      %eax, 16(%esp)
	subl      %eax, %ecx
	je        L000019E7
L000019B6:
	movl      %ebx, 80(%esp)
	movl      24(%esp), %eax
	movl      36(%esp), %ebx
	leal      4(%eax,%ebx,4), %eax
	leal      (%edx,%esi,4), %edx
	cmpl      %edx, %eax
	movl      24(%esp), %eax
	jae       L000019F1
L000019D1:
	cmpl      %eax, 72(%esp)
	jae       L000019F1
L000019D7:
	movl      64(%esp), %edx
	movl      %eax, %ecx
	movl      36(%esp), %eax
	movl      80(%esp), %ebx
	jmp       L00001A40
L000019E7:
	movl      36(%esp), %eax
	movl      24(%esp), %ecx
	jmp       L00001A40
L000019F1:
	movl      %eax, %ebx
	movl      68(%esp), %eax
	leal      (%eax,%esi,4), %edx
	subl      %ecx, %esi
	leal      -16(%ebx), %eax
	movl      80(%esp), %ebx
	.align 4, 0x90
L00001A10:
	movupd    -16(%edx), %xmm0
	movupd    (%edx), %xmm1
	movupd    %xmm1, (%eax)
	movupd    %xmm0, -16(%eax)
	addl      $-32, %edx
	addl      $-32, %eax
	addl      $-8, %ecx
	jne       L00001A10
L00001A2D:
	cmpl      $0, 16(%esp)
	movl      64(%esp), %edx
	movl      24(%esp), %ecx
	movl      36(%esp), %eax
	je        L00001A5D
L00001A40:
	leal      -4(%ecx,%eax,4), %eax
	.align 4, 0x90
L00001A50:
	movl      -4(%edx,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	decl      %esi
	cmpl      $1, %esi
	jg        L00001A50
L00001A5D:
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
L00001A7F:
	movl      12(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001A8E:
	movl      %eax, %esi
	movl      16(%edi), %eax
	movl      20(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001AA2:
	movl      24(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gmul
L00001AB1:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00001ABD:
	movl      60(%esp), %ecx
	movl      %eax, 4(%ecx,%ebx,4)
	incl      %ebx
	incl      %ebp
	cmpl      $7, %ebp
	jne       L00001920
L00001AD0:
	movl      44(%esp), %ecx
	addl      $3, %ecx
	movl      28(%esp), %eax
	incl      %eax
	movl      %eax, 28(%esp)
	cmpl      $4, %eax
	jne       L00001910
L00001AE9:
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
L00001AFD:
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
L00001B07:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00001B17:
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      _imag_i
L00001B21:
	movl      %eax, (%esp)
	call      _gexpo
L00001B29:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00001B37
L00001B31:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00001B37:
	cmpl      $-10, %ecx
	jg        L00001540
L00001B40:
	movl      %ebx, (%esp)
	call      _ZX_is_squarefree
L00001B48:
	testl     %eax, %eax
	je        L000001F0
L00001B50:
	jmp       L0000252F
L00001B55:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	leal      -144(%eax), %ecx
	movl      %ecx, 60(%esp)
	movl      %eax, %esi
	movl      52(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $143, %eax
	ja        L00001B80
L00001B74:
	movl      $14, (%esp)
	call      _pari_err
L00001B80:
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
	jmp       L00001BC8
L00001BC0:
	movl      64(%esp), %eax
	leal      -2(%eax,%eax), %eax
L00001BC8:
	movl      %eax, 64(%esp)
	movl      %eax, 4(%esp)
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	xorl      %esi, %esi
	movl      $2, %edi
	call      _cleanroots
L00001BE3:
	movl      $5, %ebx
	movl      %eax, %ebp
	movl      %ebp, 24(%esp)
	.align 4, 0x90
L00001BF0:
	movl      %esi, 16(%esp)
	negl      %ebx
	.align 4, 0x90
L00001C00:
	movl      4(%ebp), %eax
	movl      (%ebp,%edi,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
L00001C13:
	movl      %eax, %esi
	incl      %edi
	incl      %ebx
	cmpl      $7, %edi
	jg        L00001C00
L00001C1C:
	movl      %ebx, 36(%esp)
	movl      28(%esp), %eax
	movl      16(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %edi, %ebx
	.align 4, 0x90
L00001C30:
	movl      24(%esp), %eax
	movl      (%eax,%ebx,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00001C43:
	movl      %eax, (%ebp)
	incl      %ebx
	addl      $4, %ebp
	cmpl      $8, %ebx
	jne       L00001C30
L00001C4F:
	movl      16(%esp), %eax
	movl      36(%esp), %ebx
	subl      %ebx, %eax
	leal      1(%eax), %esi
	negl      %ebx
	cmpl      $7, %edi
	movl      24(%esp), %ebp
	jne       L00001BF0
L00001C67:
	incl      %eax
	movl      %eax, 16(%esp)
	movl      $3, %ebx
	movl      $4, %ecx
	.align 4, 0x90
L00001C80:
	negl      %ecx
	movl      %ecx, %edi
	.align 4, 0x90
L00001C90:
	movl      8(%ebp), %eax
	movl      (%ebp,%ebx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
L00001CA3:
	movl      %eax, %esi
	incl      %ebx
	incl      %edi
	cmpl      $7, %ebx
	jg        L00001C90
L00001CAC:
	movl      %edi, 36(%esp)
	movl      28(%esp), %eax
	movl      16(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebx, %edi
	.align 4, 0x90
L00001CC0:
	movl      24(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00001CD3:
	movl      %eax, (%ebp)
	incl      %edi
	addl      $4, %ebp
	cmpl      $8, %edi
	jne       L00001CC0
L00001CDF:
	movl      16(%esp), %edx
	movl      36(%esp), %ecx
	subl      %ecx, %edx
	leal      1(%edx), %eax
	movl      %eax, 16(%esp)
	negl      %ecx
	cmpl      $7, %ebx
	movl      24(%esp), %ebp
	jne       L00001C80
L00001CFB:
	incl      %edx
	movl      $4, %ebx
	movl      $3, %edi
	.align 4, 0x90
L00001D10:
	movl      %edx, 16(%esp)
	negl      %edi
	.align 4, 0x90
L00001D20:
	movl      12(%ebp), %eax
	movl      (%ebp,%ebx,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
L00001D33:
	movl      %eax, %esi
	incl      %ebx
	incl      %edi
	cmpl      $7, %ebx
	jg        L00001D20
L00001D3C:
	movl      %edi, 36(%esp)
	movl      28(%esp), %eax
	movl      16(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebx, %edi
	.align 4, 0x90
L00001D50:
	movl      24(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00001D63:
	movl      %eax, (%ebp)
	incl      %edi
	addl      $4, %ebp
	cmpl      $8, %edi
	jne       L00001D50
L00001D6F:
	movl      16(%esp), %eax
	movl      36(%esp), %edi
	subl      %edi, %eax
	leal      1(%eax), %edx
	negl      %edi
	cmpl      $7, %ebx
	movl      24(%esp), %ebp
	jne       L00001D10
L00001D87:
	incl      %eax
	movl      $5, %edx
	movl      $2, %ecx
	.align 4, 0x90
L00001DA0:
	movl      %ecx, 80(%esp)
	movl      %eax, 36(%esp)
	leal      (%ecx,%eax), %eax
	movl      96(%esp), %ecx
	leal      (%ecx,%eax,4), %ebx
	leal      (%ebp,%edx,4), %eax
	movl      %eax, 16(%esp)
	xorl      %edi, %edi
	.align 4, 0x90
L00001DC0:
	movl      16(%ebp), %eax
	movl      16(%esp), %ecx
	movl      (%ecx,%edi,4), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, %esi
	call      _gadd
L00001DD8:
	movl      %esi, %edx
	movl      %eax, %esi
	addl      $-4, %ebx
	leal      1(%edx,%edi), %eax
	incl      %edi
	cmpl      $7, %eax
	jg        L00001DC0
L00001DE9:
	movl      %ebx, 76(%esp)
	leal      -7(%edx,%edi), %eax
	movl      %eax, 44(%esp)
	addl      %edi, %edx
	movl      28(%esp), %eax
	movl      36(%esp), %ecx
	leal      (%eax,%ecx,4), %ebp
	movl      %edx, 16(%esp)
	movl      %edx, %ebx
	.align 4, 0x90
L00001E10:
	movl      24(%esp), %eax
	movl      (%eax,%ebx,4), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _gadd
L00001E23:
	movl      %eax, (%ebp)
	incl      %ebx
	addl      $4, %ebp
	cmpl      $8, %ebx
	jne       L00001E10
L00001E2F:
	movl      36(%esp), %eax
	movl      80(%esp), %ecx
	leal      1(%ecx,%eax), %eax
	subl      %edi, %eax
	subl      %edi, %ecx
	cmpl      $0, 44(%esp)
	movl      24(%esp), %ebp
	movl      16(%esp), %edx
	jne       L00001DA0
L00001E52:
	movl      20(%ebp), %eax
	movl      24(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
L00001E64:
	movl      28(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _gadd
L00001E73:
	movl      76(%esp), %ecx
	movl      %eax, (%ecx)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _roots_to_pol
L00001E8D:
	movl      %eax, %esi
	movl      %esi, (%esp)
	call      _real_i
L00001E97:
	leal      40(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _grndtoi
L00001EA7:
	movl      %eax, %ebp
	movl      %esi, (%esp)
	call      _imag_i
L00001EB1:
	movl      %eax, (%esp)
	call      _gexpo
L00001EB9:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jle       L00001EC7
L00001EC1:
	movl      %eax, 40(%esp)
	movl      %eax, %ecx
L00001EC7:
	cmpl      $-9, %ecx
	jge       L00001BC0
L00001ED0:
	movl      %ebp, (%esp)
	call      _ZX_is_squarefree
L00001ED8:
	testl     %eax, %eax
	je        L000001F0
L00001EE0:
	movl      %ebp, (%esp)
	call      _ZX_factor
L00001EE8:
	movl      4(%eax), %eax
	movl      (%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	addl      $-2, %ecx
	cmpl      $4, %ecx
	jbe       L00002225
L00001F00:
	movl      104(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $2, (%esp)
	call      _pari_err
L00001F14:
	jmp       L000001F0
L00001F19:
	movl      %ebx, (%esp)
	call      _gequal0
L00001F21:
	testl     %eax, %eax
	jne       L000001F0
L00001F29:
	movl      %ebx, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L00001F39:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L00002408
L00001F4B:
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $5, %edx
	jmp       L00002022
L00001F64:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $1, 4(%esp)
	movl      $-1, (%esp)
	movl      $2, %edx
	jmp       L00002138
L00001F87:
	movl      %edi, (%esp)
	call      _ZX_disc
L00001F8F:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L00001F9F:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L00002124
L00001FB1:
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $3, %edx
	jmp       L00002138
L00001FCA:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L0000200E
L00001FD8:
	movl      $4, 4(%esp)
	movl      $1, (%esp)
	movl      $60, %edx
	jmp       L00002022
L00001FEE:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $3, 4(%esp)
	movl      $-1, (%esp)
	movl      $20, %edx
	jmp       L00002022
L0000200E:
	movl      $5, 4(%esp)
	movl      $-1, (%esp)
	movl      $120, %edx
L00002022:
	movl      48(%esp), %ecx
	jmp       L0000213A
L0000202B:
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
	je        L0000218E
L00002051:
	cmpl      $2, %edx
	je        L000021BD
L0000205A:
	cmpl      $1, %edx
	jne       L000020AB
L0000205F:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L0000206B:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L0000207B:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L0000227D
L0000208D:
	movl      $12, 4(%esp)
	movl      $1, (%esp)
	movl      $60, %edx
	jmp       L00002138
L000020A6:
	movl      4(%esi), %eax
	movl      (%eax), %ecx
L000020AB:
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
	jne       L0000214A
L000020E6:
	movl      %eax, (%esp)
	call      _ZX_disc
L000020EE:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L000020FE:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L000021FF
L00002110:
	movl      $1, 4(%esp)
	jmp       L0000212C
L0000211A:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
L00002124:
	movl      $2, 4(%esp)
L0000212C:
	movl      $-1, (%esp)
	movl      $6, %edx
L00002138:
	movl      %ebx, %ecx
L0000213A:
	call      _galois_res
L0000213F:
	addl      $188, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000214A:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L00002156:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L00002166:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L00002218
L00002178:
	movl      $4, 4(%esp)
	movl      $1, (%esp)
	movl      $12, %edx
	jmp       L00002138
L0000218E:
	movl      %eax, (%esp)
	call      _ZX_disc
L00002196:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L000021A6:
	testl     %eax, %eax
	je        L00002296
L000021AE:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	jmp       L000022C3
L000021BD:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L000021C9:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L000021D9:
	testl     %eax, %eax
	je        L000022DC
L000021E1:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $7, 4(%esp)
	movl      $1, (%esp)
	jmp       L0000232D
L000021FF:
	movl      $3, 4(%esp)
	movl      $-1, (%esp)
	movl      $12, %edx
	jmp       L00002138
L00002218:
	movl      $8, 4(%esp)
	jmp       L00002326
L00002225:
	movl      92(%esp), %edx
	addl      L000025E8-L0000000F(%edx,%ecx,4), %edx
	jmp       *%edx
L00002232:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L0000223E:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L0000224E:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	movl      48(%esp), %ecx
	je        L000024FD
L00002264:
	movl      $6, 4(%esp)
	movl      $1, (%esp)
	movl      $2520, %edx
	jmp       L0000213A
L0000227D:
	movl      $14, 4(%esp)
	movl      $-1, (%esp)
	movl      $120, %edx
	jmp       L00002138
L00002296:
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L000022A1:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L000022B1:
	testl     %eax, %eax
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	je        L000023D6
L000022C3:
	movl      $5, 4(%esp)
	movl      $-1, (%esp)
	movl      $18, %edx
	jmp       L00002138
L000022DC:
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
L000022FC:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L0000230C:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L000023EF
L0000231E:
	movl      $6, 4(%esp)
L00002326:
	movl      $-1, (%esp)
L0000232D:
	movl      $24, %edx
	jmp       L00002138
L00002337:
	movl      20(%esp), %eax
	movl      32(%esp), %edx
	movl      %edx, (%eax)
	movl      4(%ecx), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $5, %ecx
	movl      48(%esp), %ecx
	jne       L000024C9
L00002358:
	movl      $2, 4(%esp)
	movl      $1, (%esp)
	jmp       L000024D8
L0000236C:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $3, 4(%esp)
	movl      $-1, (%esp)
	movl      $8, %edx
	jmp       L000024F6
L0000238F:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L0000239B:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L000023AB:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	testl     %eax, %eax
	je        L000024E2
L000023BD:
	movl      $4, 4(%esp)
	movl      $1, (%esp)
	movl      $12, %edx
	jmp       L000024F6
L000023D6:
	movl      $9, 4(%esp)
	movl      $-1, (%esp)
	movl      $36, %edx
	jmp       L00002138
L000023EF:
	movl      $11, 4(%esp)
	movl      $-1, (%esp)
	movl      $48, %edx
	jmp       L00002138
L00002408:
	movl      $2, 4(%esp)
	movl      $1, (%esp)
	movl      $10, %edx
	jmp       L00002022
L00002421:
	movl      4(%eax), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	cmpl      $31, %eax
	movl      48(%esp), %ecx
	je        L00002447
L0000243E:
	cmpl      $10, %eax
	jne       L00002516
L00002447:
	movl      $5, 4(%esp)
	movl      $1, (%esp)
	movl      $168, %edx
	jmp       L0000213A
L00002460:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $3, 4(%esp)
	movl      $1, (%esp)
	movl      $21, %edx
	jmp       L00002022
L00002483:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $2, 4(%esp)
	movl      $-1, (%esp)
	movl      $14, %edx
	jmp       L00002022
L000024A6:
	movl      20(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	movl      $7, %edx
	jmp       L00002022
L000024C9:
	movl      $1, 4(%esp)
	movl      $-1, (%esp)
L000024D8:
	movl      $4, %edx
	jmp       L0000213A
L000024E2:
	movl      $5, 4(%esp)
	movl      $-1, (%esp)
	movl      $24, %edx
L000024F6:
	movl      %esi, %ecx
	jmp       L0000213A
L000024FD:
	movl      $7, 4(%esp)
	movl      $-1, (%esp)
	movl      $5040, %edx
	jmp       L0000213A
L00002516:
	movl      $4, 4(%esp)
	movl      $-1, (%esp)
	movl      $42, %edx
	jmp       L0000213A
L0000252F:
	movl      %ebx, (%esp)
	call      _ZX_factor
L00002537:
	movl      4(%eax), %esi
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      _ZX_disc
L00002546:
	movl      %eax, (%esp)
	movl      $0, 4(%esp)
	call      _Z_issquareall
L00002556:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      %edx, (%ecx)
	movl      $16777215, %ecx
	andl      (%esi), %ecx
	cmpl      $2, %ecx
	jne       L00002589
L0000256C:
	testl     %eax, %eax
	je        L000025A6
L00002570:
	movl      $15, 4(%esp)
	movl      $1, (%esp)
	movl      $360, %edx
	jmp       L00002022
L00002589:
	testl     %eax, %eax
	je        L000025BF
L0000258D:
	movl      $10, 4(%esp)
	movl      $1, (%esp)
	movl      $36, %edx
	jmp       L00002022
L000025A6:
	movl      $16, 4(%esp)
	movl      $-1, (%esp)
	movl      $720, %edx
	jmp       L00002022
L000025BF:
	movl      $13, 4(%esp)
	movl      $-1, (%esp)
	movl      $72, %edx
	jmp       L00002022
	.align 2, 0x90
L000025D8:
	.long	L00000238-L0000000F
	.long	L00000BA0-L0000000F
	.long	L000014EE-L0000000F
	.long	L00001B55-L0000000F
	.align 2, 0x90
L000025E8:
	.long	L00002232-L0000000F
	.long	L00002421-L0000000F
	.long	L00002460-L0000000F
	.long	L00002483-L0000000F
	.long	L000024A6-L0000000F
	.align 2, 0x90
L000025FC:
	.long	L00001874-L0000000F
	.long	L0000202B-L0000000F
	.long	L000020A6-L0000000F
	.long	L0000211A-L0000000F
# ----------------------
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LC00002610:
	.long	0
	.long	1077018624
	.align 3
LC00002618:
	.long	0
	.long	1067450368
	.align 3
LC00002620:
	.long	0
	.long	1077215232
	.align 3
LC00002628:
	.long	0
	.long	1078263808
	.align 3
LC00002630:
	.long	0
	.long	1075576832
# ----------------------

.subsections_via_symbols
