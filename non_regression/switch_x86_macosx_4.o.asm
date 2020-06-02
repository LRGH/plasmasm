	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_xstrtoimax
_xstrtoimax:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L0000000E
L0000000E:
	popl      %eax
	movl      %eax, -32(%ebp)
	movl      16(%ebp), %ebx
	cmpl      $37, %ebx
	jae       L0000160F
L0000001E:
	movl      12(%ebp), %eax
	movl      8(%ebp), %esi
	testl     %eax, %eax
	leal      -16(%ebp), %edi
	cmovne    %eax, %edi
	movl      %edi, -20(%ebp)
	call      ___error
L00000034:
	movl      $0, (%eax)
	movl      %ebx, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %esi, (%esp)
	call      _strtoimax
L0000004A:
	cmpl      %esi, (%edi)
	je        L0000007D
L0000004E:
	movl      24(%ebp), %edi
	movl      %eax, -28(%ebp)
	movl      %edx, -24(%ebp)
	call      ___error
L0000005C:
	xorl      %esi, %esi
	cmpl      $0, (%eax)
	je        L000000C0
L00000063:
	call      ___error
L00000068:
	movl      $4, %ebx
	movl      $1, %esi
	cmpl      $34, (%eax)
	jne       L000019CE
L0000007B:
	jmp       L000000C0
L0000007D:
	movl      $4, %ebx
	movl      24(%ebp), %eax
	testl     %eax, %eax
	movl      %eax, %ecx
	je        L000019CE
L0000008F:
	movsbl    (%esi), %eax
	testl     %eax, %eax
	je        L000019CE
L0000009A:
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, %edi
	call      _strchr
L000000A8:
	testl     %eax, %eax
	je        L000019CE
L000000B0:
	movl      $1, -28(%ebp)
	movl      $0, -24(%ebp)
	xorl      %esi, %esi
L000000C0:
	testl     %edi, %edi
	je        L00000128
L000000C4:
	movl      -20(%ebp), %eax
	movl      (%eax), %eax
	movl      %eax, -36(%ebp)
	movsbl    (%eax), %ebx
	testl     %ebx, %ebx
	je        L0000013B
L000000D3:
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _strchr
L000000DF:
	testl     %eax, %eax
	je        L00000A45
L000000E7:
	movl      %edi, (%esp)
	movl      $48, 4(%esp)
	call      _strchr
L000000F7:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      $1024, -40(%ebp)
	movl      $1, %edx
	je        L00000161
L00000109:
	movl      -36(%ebp), %eax
	movsbl    1(%eax), %eax
	cmpl      $66, %eax
	je        L0000011A
L00000115:
	cmpl      $68, %eax
	jne       L00000146
L0000011A:
	movl      $1000, -40(%ebp)
	movl      $2, %edx
	jmp       L00000161
L00000128:
	movl      20(%ebp), %eax
	movl      -28(%ebp), %ecx
	movl      %ecx, (%eax)
	movl      -24(%ebp), %ecx
	movl      %ecx, 4(%eax)
	jmp       L000019CC
L0000013B:
	movl      -28(%ebp), %ecx
	movl      -24(%ebp), %ebx
	jmp       L000019C4
L00000146:
	cmpl      $105, %eax
	jne       L00000161
L0000014B:
	movl      -36(%ebp), %eax
	movzbl    2(%eax), %eax
	movl      $3, %edx
	cmpl      $66, %eax
	je        L00000161
L0000015C:
	movl      $1, %edx
L00000161:
	cmpl      $68, %ebx
	jg        L000001B1
L00000166:
	movl      %edx, -44(%ebp)
	cmpl      $66, %ebx
	jne       L00000A45
L00000172:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	cmpl      $-2097152, -24(%ebp)
	movl      $1, %edx
	jl        L000019A6
L00000197:
	movl      -24(%ebp), %edi
	movl      %edi, %ebx
	movl      -28(%ebp), %eax
	shldl     $10, %eax, %ebx
	sall      $10, %eax
	cmpl      $2097151, %edi
	jmp       L00000420
L000001B1:
	cmpl      $118, %ebx
	jg        L000003DD
L000001BA:
	cmpl      $115, %ebx
	jg        L0000043E
L000001C3:
	cmpl      $97, %ebx
	jg        L0000044F
L000001CC:
	cmpl      $88, %ebx
	jg        L000004B4
L000001D5:
	movl      %edx, -44(%ebp)
	cmpl      $83, %ebx
	jg        L00000685
L000001E1:
	addl      $-69, %ebx
	cmpl      $11, %ebx
	ja        L00000A45
L000001ED:
	movl      -32(%ebp), %eax
	addl      L00001A2C-L0000000E(%eax,%ebx,4), %eax
	jmp       *%eax
L000001F9:
	movl      %esi, -60(%ebp)
	movl      $-1, %esi
	addl      $1, %esi
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, (%esp)
	movl      %ebx, 4(%esp)
	call      ___divdi3
L00000226:
	movl      %eax, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	movl      -24(%ebp), %edi
	cmpl      %edx, %edi
	setl      %cl
	je        L0000023B
L00000239:
	movb      %cl, %al
L0000023B:
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       L000002B8
L00000246:
	movl      %edx, -56(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000026D:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      %edi, %edx
	setl      %cl
	je        L0000027C
L0000027A:
	movb      %cl, %al
L0000027C:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %esi
	movl      $2147483647, %ebx
	jne       L000002E9
L00000291:
	movl      -28(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      %edi, %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, %ebx
	movl      -56(%ebp), %edx
L000002B8:
	movl      %edx, -56(%ebp)
	cmpl      -32(%ebp), %esi
	setb      %al
	cmpl      %edx, %ebx
	setl      %cl
	je        L000002CA
L000002C8:
	movb      %cl, %al
L000002CA:
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      %ecx, -24(%ebp)
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -28(%ebp)
	movl      $1, %edi
	testb     %al, %al
	jne       L00000350
L000002E9:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000030D:
	movl      %edx, %ecx
	cmpl      %esi, %eax
	setb      %al
	cmpl      %ebx, %ecx
	setl      %cl
	je        L0000031D
L0000031B:
	movb      %cl, %al
L0000031D:
	movl      $1, %edi
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, -28(%ebp)
	jne       L00000389
L00000334:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -24(%ebp)
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	imull     %ecx, %ebx
	addl      %esi, %ebx
	xorl      %edi, %edi
	movl      %ebx, -28(%ebp)
L00000350:
	movl      -24(%ebp), %eax
	cmpl      -32(%ebp), %eax
	setb      %al
	movl      -28(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        L00000366
L00000364:
	movb      %cl, %al
L00000366:
	orl       -52(%ebp), %edi
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -52(%ebp)
	movl      $1, %esi
	testb     %al, %al
	jne       L0000165D
L00000389:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000003AD:
	movl      %edx, %ecx
	cmpl      -24(%ebp), %eax
	setae     %al
	cmpl      -28(%ebp), %ecx
	setge     %cl
	je        L000003BF
L000003BD:
	movb      %cl, %al
L000003BF:
	testb     %al, %al
	jne       L0000163C
L000003C7:
	movl      $1, %esi
	movl      $-1, %ebx
	movl      $2147483647, -52(%ebp)
	jmp       L00001695
L000003DD:
	movl      %edx, -44(%ebp)
	cmpl      $119, %ebx
	jne       L00000A45
L000003E9:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	cmpl      $-1073741824, -24(%ebp)
	movl      $1, %edx
	jl        L000019A6
L0000040E:
	movl      -28(%ebp), %eax
	addl      %eax, %eax
	movl      -24(%ebp), %edi
	movl      %edi, %ebx
	adcl      %ebx, %ebx
	cmpl      $1073741823, %edi
L00000420:
	setg      %dl
	movl      $-1, %ecx
	cmovg     %ecx, %eax
	movl      $2147483647, %ecx
	cmovg     %ecx, %ebx
	movzbl    %dl, %edx
	movl      %eax, -32(%ebp)
	jmp       L000019A6
L0000043E:
	movl      %edx, -44(%ebp)
	cmpl      $116, %ebx
	jne       L00000A45
L0000044A:
	jmp       L0000068E
L0000044F:
	movl      %edx, -44(%ebp)
	addl      $-98, %ebx
	cmpl      $11, %ebx
	ja        L00000A45
L0000045E:
	movl      -32(%ebp), %edi
	addl      L000019FC-L0000000E(%edi,%ebx,4), %edi
	movl      -28(%ebp), %eax
	movl      %eax, -32(%ebp)
	movl      -24(%ebp), %ebx
	xorl      %edx, %edx
	jmp       *%edi
L00000475:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	cmpl      $-4194304, -24(%ebp)
	movl      $1, %edx
	jl        L000019A6
L0000049A:
	movl      -24(%ebp), %edi
	movl      %edi, %ebx
	movl      -28(%ebp), %eax
	shldl     $9, %eax, %ebx
	sall      $9, %eax
	cmpl      $4194303, %edi
	jmp       L00000420
L000004B4:
	cmpl      $89, %ebx
	jne       L00000871
L000004BD:
	movl      %edx, -44(%ebp)
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
L000004ED:
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        L00000503
L00000501:
	movb      %cl, %al
L00000503:
	movl      $1, %ecx
	testb     %al, %al
	jne       L00000573
L0000050C:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000530:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        L00000540
L0000053E:
	movb      %cl, %al
L00000540:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       L0000059F
L00000555:
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %ecx, %ecx
	movl      %edi, %esi
L00000573:
	movl      %ecx, -52(%ebp)
	cmpl      -56(%ebp), %ebx
	setb      %ch
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L00000586
L00000584:
	movb      %cl, %ch
L00000586:
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, %edx
	testb     %ch, %ch
	jne       L000005FC
L0000059F:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000005C3:
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        L000005D1
L000005CF:
	movb      %cl, %al
L000005D1:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, -28(%ebp)
	movl      $2147483647, %edi
	jne       L00000631
L000005E6:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	xorl      %edx, %edx
	movl      %esi, %edi
L000005FC:
	movl      %eax, -28(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        L0000060F
L0000060D:
	movb      %cl, %al
L0000060F:
	orl       -52(%ebp), %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       L00000DFB
L00000631:
	movl      %edx, -52(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000658:
	movl      -28(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        L00000669
L00000667:
	movb      %cl, %al
L00000669:
	testb     %al, %al
	jne       L00000DDB
L00000671:
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jmp       L00000E2F
L00000685:
	cmpl      $84, %ebx
	jne       L00000A45
L0000068E:
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
L000006BB:
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        L000006D1
L000006CF:
	movb      %cl, %al
L000006D1:
	movl      $1, %ecx
	testb     %al, %al
	jne       L00000741
L000006DA:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000006FE:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        L0000070E
L0000070C:
	movb      %cl, %al
L0000070E:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       L0000076D
L00000723:
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %ecx, %ecx
	movl      %edi, %esi
L00000741:
	movl      %ecx, -52(%ebp)
	cmpl      -56(%ebp), %ebx
	setb      %ch
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L00000754
L00000752:
	movb      %cl, %ch
L00000754:
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, %edx
	testb     %ch, %ch
	jne       L000007CA
L0000076D:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000791:
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        L0000079F
L0000079D:
	movb      %cl, %al
L0000079F:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	jne       L000007FB
L000007B4:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	xorl      %edx, %edx
	movl      %esi, %edi
L000007CA:
	movl      %eax, -24(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %ch
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        L000007DD
L000007DB:
	movb      %cl, %ch
L000007DD:
	orl       -52(%ebp), %edx
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -52(%ebp)
	testb     %ch, %ch
	jne       L00000857
L000007FB:
	movl      %edx, %ebx
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000821:
	movl      -24(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        L00000832
L00000830:
	movb      %cl, %al
L00000832:
	testb     %al, %al
	je        L00001045
L0000083A:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -52(%ebp)
	movl      %edi, %esi
	movl      %ebx, %edx
L00000857:
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      -32(%ebp), %esi
	setl      %ch
	movl      %eax, %edi
	je        L00000869
L00000867:
	movb      %ch, %cl
L00000869:
	orl       %edx, -52(%ebp)
	jmp       L00001088
L00000871:
	cmpl      $90, %ebx
	jne       L00000A45
L0000087A:
	movl      %edx, -44(%ebp)
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
L000008AA:
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        L000008C0
L000008BE:
	movb      %cl, %al
L000008C0:
	movl      $1, %ecx
	testb     %al, %al
	jne       L00000930
L000008C9:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000008ED:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        L000008FD
L000008FB:
	movb      %cl, %al
L000008FD:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       L0000095C
L00000912:
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %ecx, %ecx
	movl      %edi, %esi
L00000930:
	movl      %ecx, -52(%ebp)
	cmpl      -56(%ebp), %ebx
	setb      %ch
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L00000943
L00000941:
	movb      %cl, %ch
L00000943:
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, %edx
	testb     %ch, %ch
	jne       L000009B9
L0000095C:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000980:
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        L0000098E
L0000098C:
	movb      %cl, %al
L0000098E:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, -28(%ebp)
	movl      $2147483647, %edi
	jne       L000009EE
L000009A3:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	xorl      %edx, %edx
	movl      %esi, %edi
L000009B9:
	movl      %eax, -28(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        L000009CC
L000009CA:
	movb      %cl, %al
L000009CC:
	orl       -52(%ebp), %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       L0000119B
L000009EE:
	movl      %edx, -52(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000A15:
	movl      -28(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        L00000A26
L00000A24:
	movb      %cl, %al
L00000A26:
	testb     %al, %al
	jne       L0000117B
L00000A2E:
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	movl      -48(%ebp), %ecx
	jmp       L000011D2
L00000A45:
	movl      20(%ebp), %eax
	movl      -28(%ebp), %ecx
	movl      %ecx, (%eax)
	movl      -24(%ebp), %ecx
	movl      %ecx, 4(%eax)
	orl       $2, %esi
	jmp       L000019CC
L00000A5B:
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
L00000A88:
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        L00000A9E
L00000A9C:
	movb      %cl, %al
L00000A9E:
	movl      $1, %edx
	testb     %al, %al
	jne       L00000B0C
L00000AA7:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000ACB:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        L00000ADB
L00000AD9:
	movb      %cl, %al
L00000ADB:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       L00000B37
L00000AEE:
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %edx, %edx
	movl      %edi, %esi
L00000B0C:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L00000B1C
L00000B1A:
	movb      %cl, %al
L00000B1C:
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       L00000BA3
L00000B37:
	movl      %edx, -28(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000B5E:
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        L00000B6C
L00000B6A:
	movb      %cl, %al
L00000B6C:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	jne       L00000BD9
L00000B83:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	movl      %eax, %ecx
	addl      %ebx, %esi
	movl      $0, -52(%ebp)
	movl      %esi, %edi
	movl      -28(%ebp), %edx
L00000BA3:
	movl      %ecx, -24(%ebp)
	cmpl      -56(%ebp), %ecx
	setb      %cl
	cmpl      -32(%ebp), %edi
	setl      %al
	je        L00000BB6
L00000BB4:
	movb      %al, %cl
L00000BB6:
	orl       %edx, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       L0000199E
L00000BD9:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000BFD:
	cmpl      -24(%ebp), %eax
	setb      %cl
	cmpl      %edi, %edx
	setl      %al
	je        L00000C0C
L00000C0A:
	movb      %al, %cl
L00000C0C:
	movl      $1, %eax
	testb     %cl, %cl
	jne       L00001992
L00000C19:
	movl      -24(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %eax
	imull     %esi, %eax
	addl      %edx, %eax
	imull     %ecx, %edi
	addl      %eax, %edi
	xorl      %eax, %eax
	movl      %edi, %ebx
	jmp       L0000199E
L00000C3C:
	movl      $-1, %edx
	addl      $1, %edx
	movl      %edx, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edx, (%esp)
	movl      %ebx, 4(%esp)
	call      ___divdi3
L00000C69:
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        L00000C79
L00000C77:
	movb      %cl, %al
L00000C79:
	testb     %al, %al
	je        L00001107
L00000C81:
	movl      $1, %edx
	jmp       L000019A6
L00000C8B:
	movl      %esi, -60(%ebp)
	movl      $-1, %edx
	addl      $1, %edx
	movl      %edx, -56(%ebp)
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
L00000CBB:
	movl      %eax, %ebx
	cmpl      %ebx, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        L00000CCD
L00000CCB:
	movb      %cl, %al
L00000CCD:
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       L00000D4D
L00000CD8:
	movl      %edx, -32(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000CFF:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        L00000D0F
L00000D0D:
	movb      %cl, %al
L00000D0F:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, -56(%ebp)
	movl      $2147483647, %esi
	jne       L00000D7C
L00000D26:
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -56(%ebp)
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -52(%ebp)
	movl      %edi, %esi
	movl      -32(%ebp), %edx
L00000D4D:
	cmpl      %ebx, -56(%ebp)
	setb      %cl
	cmpl      %edx, %esi
	setl      %al
	je        L00000D5C
L00000D5A:
	movb      %al, %cl
L00000D5C:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       L0000199E
L00000D7C:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000DA0:
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      %esi, %edx
	setl      %al
	je        L00000DAF
L00000DAD:
	movb      %al, %cl
L00000DAF:
	movl      $1, %eax
	testb     %cl, %cl
	jne       L00001992
L00000DBC:
	movl      -56(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %edi
	imull     %ebx, %edi
	addl      %edx, %edi
	imull     %ecx, %esi
	addl      %edi, %esi
	jmp       L000010FE
L00000DDB:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -52(%ebp), %edx
L00000DFB:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L00000E0B
L00000E09:
	movb      %cl, %al
L00000E0B:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -28(%ebp)
	testb     %cl, %cl
	jne       L00000E99
L00000E2F:
	movl      %edx, -24(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000E56:
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        L00000E64
L00000E62:
	movb      %cl, %al
L00000E64:
	testb     %al, %al
	jne       L00000E7B
L00000E68:
	movl      $1, %edx
	movl      $-1, -52(%ebp)
	movl      $2147483647, %edi
	jmp       L00000ECE
L00000E7B:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -28(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
L00000E99:
	movl      %eax, -52(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        L00000EAC
L00000EAA:
	movb      %cl, %al
L00000EAC:
	movl      -28(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       L00000F3B
L00000ECE:
	movl      %edx, -28(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000EF5:
	movl      -52(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        L00000F06
L00000F04:
	movb      %cl, %al
L00000F06:
	testb     %al, %al
	jne       L00000F1B
L00000F0A:
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jmp       L00000F6F
L00000F1B:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -28(%ebp), %edx
L00000F3B:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L00000F4B
L00000F49:
	movb      %cl, %al
L00000F4B:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -28(%ebp)
	testb     %cl, %cl
	jne       L00000FD9
L00000F6F:
	movl      %edx, -24(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00000F96:
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        L00000FA4
L00000FA2:
	movb      %cl, %al
L00000FA4:
	testb     %al, %al
	jne       L00000FBB
L00000FA8:
	movl      $1, %ebx
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	jmp       L0000100C
L00000FBB:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -28(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
L00000FD9:
	movl      %eax, -24(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %ch
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        L00000FEC
L00000FEA:
	movb      %cl, %ch
L00000FEC:
	movl      -28(%ebp), %ebx
	orl       %edx, %ebx
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -52(%ebp)
	testb     %ch, %ch
	jne       L00001073
L0000100C:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00001030:
	movl      -24(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        L00001041
L0000103F:
	movb      %cl, %al
L00001041:
	testb     %al, %al
	jne       L00001058
L00001045:
	movl      $1, -52(%ebp)
	movl      $-1, %edi
	movl      $2147483647, %esi
	jmp       L000010A8
L00001058:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -52(%ebp)
	movl      %edi, %esi
L00001073:
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      -32(%ebp), %esi
	setl      %dl
	movl      %eax, %edi
	je        L00001085
L00001083:
	movb      %dl, %cl
L00001085:
	orl       %ebx, -52(%ebp)
L00001088:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       L0000199E
L000010A8:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000010CC:
	cmpl      %edi, %eax
	setb      %cl
	cmpl      %esi, %edx
	setl      %al
	je        L000010DA
L000010D8:
	movb      %al, %cl
L000010DA:
	movl      $1, %eax
	testb     %cl, %cl
	jne       L00001992
L000010E7:
	movl      %edi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %eax
	imull     %edi, %eax
	addl      %edx, %eax
	imull     %ecx, %esi
	addl      %eax, %esi
L000010FE:
	xorl      %eax, %eax
	movl      %esi, %ebx
	jmp       L0000199E
L00001107:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000112B:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        L0000113B
L00001139:
	movb      %cl, %al
L0000113B:
	testb     %al, %al
	movl      $-1, -32(%ebp)
	movl      $2147483647, %ebx
	movl      -48(%ebp), %eax
	movl      $1, %edx
	jne       L000019A6
L00001157:
	movl      %eax, %ecx
	movl      -28(%ebp), %eax
	imull     %eax, %ecx
	movl      -40(%ebp), %ebx
	mull      %ebx
	movl      %eax, -32(%ebp)
	addl      %edx, %ecx
	movl      -24(%ebp), %edi
	imull     %ebx, %edi
	addl      %ecx, %edi
	movl      %edi, %ebx
	movl      -48(%ebp), %edx
	jmp       L000019A6
L0000117B:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -52(%ebp), %edx
L0000119B:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L000011AB
L000011A9:
	movb      %cl, %al
L000011AB:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -28(%ebp)
	testb     %cl, %cl
	movl      -48(%ebp), %ecx
	jne       L0000123B
L000011D2:
	movl      %edx, -24(%ebp)
	movl      %ecx, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000011F6:
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        L00001204
L00001202:
	movb      %cl, %al
L00001204:
	testb     %al, %al
	jne       L0000121B
L00001208:
	movl      $1, %edx
	movl      $-1, -52(%ebp)
	movl      $2147483647, %edi
	jmp       L00001270
L0000121B:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      -48(%ebp), %edi
	imull     %edi, %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -28(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
L0000123B:
	movl      %eax, -52(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        L0000124E
L0000124C:
	movb      %cl, %al
L0000124E:
	movl      -28(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       L000012E0
L00001270:
	movl      %edx, -28(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00001297:
	movl      -52(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        L000012A8
L000012A6:
	movb      %cl, %al
L000012A8:
	testb     %al, %al
	jne       L000012C0
L000012AC:
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	movl      -48(%ebp), %ecx
	jmp       L00001317
L000012C0:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -28(%ebp), %edx
L000012E0:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        L000012F0
L000012EE:
	movb      %cl, %al
L000012F0:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -52(%ebp)
	testb     %cl, %cl
	movl      -48(%ebp), %ecx
	jne       L00001385
L00001317:
	movl      %edx, -24(%ebp)
	movl      %ecx, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000133B:
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        L00001349
L00001347:
	movb      %cl, %al
L00001349:
	testb     %al, %al
	jne       L00001365
L0000134D:
	movl      $1, -52(%ebp)
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	movl      -60(%ebp), %esi
	jmp       L000013BA
L00001365:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      -48(%ebp), %edi
	imull     %edi, %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -52(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
L00001385:
	movl      %eax, -24(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      -32(%ebp), %edi
	setl      %al
	je        L00001398
L00001396:
	movb      %al, %cl
L00001398:
	orl       %edx, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	movl      -60(%ebp), %esi
	jne       L00001421
L000013BA:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000013DE:
	movl      -24(%ebp), %ebx
	cmpl      %ebx, %eax
	setb      %cl
	cmpl      %edi, %edx
	setl      %al
	je        L000013EF
L000013ED:
	movb      %al, %cl
L000013EF:
	movl      $1, %eax
	testb     %cl, %cl
	je        L00001406
L000013F8:
	movl      $-1, -32(%ebp)
	movl      $2147483647, %ebx
	jmp       L00001421
L00001406:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %eax
	imull     %ebx, %eax
	addl      %edx, %eax
	imull     %ecx, %edi
	addl      %eax, %edi
	xorl      %eax, %eax
	movl      %edi, %ebx
L00001421:
	movl      -52(%ebp), %edx
	orl       %eax, %edx
	jmp       L000019A6
L0000142B:
	movl      %esi, -60(%ebp)
	movl      $-1, %esi
	addl      $1, %esi
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, (%esp)
	movl      %ebx, 4(%esp)
	call      ___divdi3
L00001458:
	movl      %eax, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	movl      -24(%ebp), %edi
	cmpl      %edx, %edi
	setl      %cl
	je        L0000146D
L0000146B:
	movb      %cl, %al
L0000146D:
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       L000014EA
L00001478:
	movl      %edx, -56(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000149F:
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      %edi, %edx
	setl      %cl
	je        L000014AE
L000014AC:
	movb      %cl, %al
L000014AE:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %esi
	movl      $2147483647, %ebx
	jne       L0000151B
L000014C3:
	movl      -28(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      %edi, %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, %ebx
	movl      -56(%ebp), %edx
L000014EA:
	movl      %edx, -56(%ebp)
	cmpl      -32(%ebp), %esi
	setb      %al
	cmpl      %edx, %ebx
	setl      %cl
	je        L000014FC
L000014FA:
	movb      %cl, %al
L000014FC:
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      %ecx, -24(%ebp)
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -28(%ebp)
	movl      $1, %edi
	testb     %al, %al
	jne       L00001582
L0000151B:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000153F:
	movl      %edx, %ecx
	cmpl      %esi, %eax
	setb      %al
	cmpl      %ebx, %ecx
	setl      %cl
	je        L0000154F
L0000154D:
	movb      %cl, %al
L0000154F:
	movl      $1, %edi
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, -28(%ebp)
	jne       L000015BB
L00001566:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -24(%ebp)
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	imull     %ecx, %ebx
	addl      %esi, %ebx
	xorl      %edi, %edi
	movl      %ebx, -28(%ebp)
L00001582:
	movl      -24(%ebp), %eax
	cmpl      -32(%ebp), %eax
	setb      %al
	movl      -28(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        L00001598
L00001596:
	movb      %cl, %al
L00001598:
	orl       -52(%ebp), %edi
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -64(%ebp)
	movl      $1, %esi
	testb     %al, %al
	jne       L0000170B
L000015BB:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000015DF:
	movl      %edx, %ecx
	cmpl      -24(%ebp), %eax
	setae     %al
	cmpl      -28(%ebp), %ecx
	setge     %cl
	je        L000015F1
L000015EF:
	movb      %cl, %al
L000015F1:
	testb     %al, %al
	jne       L000016EA
L000015F9:
	movl      $1, %esi
	movl      $-1, %ebx
	movl      $2147483647, -64(%ebp)
	jmp       L00001742
L0000160F:
	movl      -32(%ebp), %ecx
	leal      LC00001A75-L0000000E(%ecx), %eax
	movl      %eax, 12(%esp)
	leal      LC00001A67-L0000000E(%ecx), %eax
	movl      %eax, 4(%esp)
	leal      LC00001A5C-L0000000E(%ecx), %eax
	movl      %eax, (%esp)
	movl      $96, 8(%esp)
	call      ___assert_rtn
L0000163C:
	movl      -24(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	movl      -28(%ebp), %eax
	imull     %ecx, %eax
	addl      %esi, %eax
	xorl      %esi, %esi
	movl      %eax, -52(%ebp)
L0000165D:
	cmpl      -32(%ebp), %ebx
	setb      %al
	movl      -52(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        L00001670
L0000166E:
	movb      %cl, %al
L00001670:
	orl       %edi, %esi
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      %ecx, -24(%ebp)
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -28(%ebp)
	movl      $1, %edi
	testb     %al, %al
	jne       L000017B6
L00001695:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000016B9:
	movl      %edx, %ecx
	cmpl      %ebx, %eax
	setae     %al
	cmpl      -52(%ebp), %ecx
	setge     %cl
	je        L000016CA
L000016C8:
	movb      %cl, %al
L000016CA:
	testb     %al, %al
	jne       L00001797
L000016D2:
	movl      $1, %edi
	movl      $-1, -24(%ebp)
	movl      $2147483647, -28(%ebp)
	jmp       L000017F0
L000016EA:
	movl      -24(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	movl      -28(%ebp), %eax
	imull     %ecx, %eax
	addl      %esi, %eax
	xorl      %esi, %esi
	movl      %eax, -64(%ebp)
L0000170B:
	cmpl      -32(%ebp), %ebx
	setb      %al
	movl      -64(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        L0000171E
L0000171C:
	movb      %cl, %al
L0000171E:
	orl       %edi, %esi
	movl      $-1, %edi
	addl      $1, %edi
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -24(%ebp)
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       L00001869
L00001742:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00001766:
	movl      %edx, %ecx
	cmpl      %ebx, %eax
	setae     %al
	cmpl      -64(%ebp), %ecx
	setge     %cl
	je        L00001777
L00001775:
	movb      %cl, %al
L00001777:
	testb     %al, %al
	jne       L00001846
L0000177F:
	movl      $1, -52(%ebp)
	movl      $-1, %edi
	movl      $2147483647, -24(%ebp)
	jmp       L0000189F
L00001797:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -24(%ebp)
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      -52(%ebp), %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	xorl      %edi, %edi
	movl      %eax, -28(%ebp)
L000017B6:
	movl      -24(%ebp), %eax
	cmpl      -32(%ebp), %eax
	setb      %al
	movl      -28(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        L000017CC
L000017CA:
	movb      %cl, %al
L000017CC:
	orl       %esi, %edi
	movl      $-1, %esi
	addl      $1, %esi
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -64(%ebp)
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       L00001924
L000017F0:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L00001814:
	movl      %edx, %ecx
	cmpl      -24(%ebp), %eax
	setae     %al
	cmpl      -28(%ebp), %ecx
	setge     %cl
	je        L00001826
L00001824:
	movb      %cl, %al
L00001826:
	testb     %al, %al
	jne       L000018FE
L0000182E:
	movl      $1, -52(%ebp)
	movl      $-1, %esi
	movl      $2147483647, -64(%ebp)
	jmp       L00001956
L00001846:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %edi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      -64(%ebp), %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, -24(%ebp)
L00001869:
	cmpl      -32(%ebp), %edi
	setb      %cl
	movl      -24(%ebp), %eax
	cmpl      -56(%ebp), %eax
	setl      %al
	je        L0000187C
L0000187A:
	movb      %al, %cl
L0000187C:
	orl       %esi, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       L0000199E
L0000189F:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L000018C3:
	cmpl      %edi, %eax
	setb      %cl
	cmpl      -24(%ebp), %edx
	setl      %al
	je        L000018D2
L000018D0:
	movb      %al, %cl
L000018D2:
	movl      $1, %eax
	testb     %cl, %cl
	jne       L00001992
L000018DF:
	movl      %edi, %eax
	movl      -40(%ebp), %esi
	mull      %esi
	movl      %eax, -32(%ebp)
	movl      %edx, %eax
	movl      -48(%ebp), %ecx
	imull     %edi, %ecx
	addl      %eax, %ecx
	movl      -24(%ebp), %edx
	imull     %esi, %edx
	jmp       L000019F2
L000018FE:
	movl      -24(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      -28(%ebp), %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, -64(%ebp)
L00001924:
	cmpl      -32(%ebp), %esi
	setb      %cl
	movl      -64(%ebp), %eax
	cmpl      -56(%ebp), %eax
	setl      %al
	je        L00001937
L00001935:
	movb      %al, %cl
L00001937:
	orl       %edi, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       L0000199E
L00001956:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
L0000197A:
	cmpl      %esi, %eax
	setb      %cl
	cmpl      -64(%ebp), %edx
	setl      %al
	je        L00001989
L00001987:
	movb      %al, %cl
L00001989:
	movl      $1, %eax
	testb     %cl, %cl
	je        L000019D8
L00001992:
	movl      $-1, -32(%ebp)
	movl      $2147483647, %ebx
L0000199E:
	movl      -52(%ebp), %edx
	orl       %eax, %edx
	movl      -60(%ebp), %esi
L000019A6:
	orl       %esi, %edx
	movl      -36(%ebp), %esi
	movl      -44(%ebp), %edi
	leal      (%esi,%edi), %eax
	movl      -20(%ebp), %ecx
	movl      %eax, (%ecx)
	cmpb      $0, (%esi,%edi)
	je        L000019BF
L000019BC:
	orl       $2, %edx
L000019BF:
	movl      -32(%ebp), %ecx
	movl      %edx, %esi
L000019C4:
	movl      20(%ebp), %eax
	movl      %ecx, (%eax)
	movl      %ebx, 4(%eax)
L000019CC:
	movl      %esi, %ebx
L000019CE:
	movl      %ebx, %eax
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000019D8:
	movl      %esi, %eax
	movl      -40(%ebp), %ebx
	mull      %ebx
	movl      %eax, -32(%ebp)
	movl      %edx, %eax
	movl      -48(%ebp), %ecx
	imull     %esi, %ecx
	addl      %eax, %ecx
	movl      -64(%ebp), %edx
	imull     %ebx, %edx
L000019F2:
	addl      %ecx, %edx
	xorl      %eax, %eax
	movl      %edx, %ebx
	jmp       L0000199E
	.align 2, 0x90
L000019FC:
	.long	L00000475-L0000000E
	.long	L000019A6-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A5B-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000C3C-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000C8B-L0000000E
	.align 2, 0x90
L00001A2C:
	.long	L000001F9-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A5B-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000C3C-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000C8B-L0000000E
	.long	L00000A45-L0000000E
	.long	L00000A45-L0000000E
	.long	L0000142B-L0000000E
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00001A5C:
	.string	"xstrtoimax"
LC00001A67:
	.string	"lib/xstrtol.c"
LC00001A75:
	.string	"0 <= strtol_base && strtol_base <= 36"
# ----------------------

.subsections_via_symbols
