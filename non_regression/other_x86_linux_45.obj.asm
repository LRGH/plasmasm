	.file	"infback.c"
	.text
	.def	_inflateBackInit_;	.scl	2;	.type	32;	.endef
_inflateBackInit_:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	movl      %ebx, -12(%ebp)
	movl      20(%ebp), %eax
	movl      12(%ebp), %ebx
	movl      %esi, -8(%ebp)
	testl     %eax, %eax
	movl      %edi, -4(%ebp)
	movl      8(%ebp), %esi
	movl      16(%ebp), %edi
	je        L00000032
L0000001F:
	cmpb      $49, (%eax)
	setne     %al
	cmpl      $56, 24(%ebp)
	setne     %dl
	orl       %edx, %eax
	testb     $1, %al
	je        L00000044
L00000032:
	movl      $-6, %eax
L00000037:
	movl      -12(%ebp), %ebx
	movl      -8(%ebp), %esi
	movl      -4(%ebp), %edi
	movl      %ebp, %esp
	popl      %ebp
	ret       
L00000044:
	testl     %esi, %esi
	sete      %al
	testl     %edi, %edi
	sete      %cl
	orl       %ecx, %eax
	testb     $1, %al
	jne       L00000066
L00000054:
	cmpl      $7, %ebx
	setle     %al
	cmpl      $15, %ebx
	setg      %dl
	orl       %edx, %eax
	testb     $1, %al
	je        L00000078
L00000066:
	movl      -12(%ebp), %ebx
	movl      $-2, %eax
	movl      -8(%ebp), %esi
	movl      -4(%ebp), %edi
	movl      %ebp, %esp
	popl      %ebp
	ret       
L00000078:
	movl      $0, 24(%esi)
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        L000000F6
L00000086:
	movl      36(%esi), %ecx
	testl     %ecx, %ecx
	jne       L00000094
L0000008D:
	movl      $_zcfree, 36(%esi)
L00000094:
	movl      $7116, %eax
	movl      $1, %ecx
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *%edx
L000000AE:
	movl      %eax, %edx
	testl     %edx, %edx
	movl      $-4, %eax
	je        L00000037
L000000BD:
	movl      %edx, 28(%esi)
	movb      %bl, %cl
	movl      $1, %esi
	movl      $32768, 20(%edx)
	sall      %cl, %esi
	xorl      %eax, %eax
	movl      %ebx, 36(%edx)
	movl      %esi, 40(%edx)
	movl      %edi, 52(%edx)
	movl      $0, 48(%edx)
	movl      $0, 44(%edx)
	movl      -12(%ebp), %ebx
	movl      -8(%ebp), %esi
	movl      -4(%ebp), %edi
	movl      %ebp, %esp
	popl      %ebp
	ret       
L000000F6:
	movl      $0, 40(%esi)
	movl      $_zcalloc, %edx
	movl      %edx, 32(%esi)
	jmp       L00000086
# ----------------------
	.def	_inflateBack;	.scl	2;	.type	32;	.endef
_inflateBack:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	je        L00000190
L00000120:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        L00000190
L0000012A:
	movl      $11, (%edi)
	movl      8(%ebp), %edx
	movl      $0, 4(%edi)
	movl      $0, 44(%edi)
	movl      (%edx), %ecx
	movl      $0, 24(%edx)
	movl      $0, -24(%ebp)
	testl     %ecx, %ecx
	movl      %ecx, -16(%ebp)
	je        L0000015E
L00000158:
	movl      4(%edx), %ebx
	movl      %ebx, -24(%ebp)
L0000015E:
	movl      $0, -32(%ebp)
	movl      52(%edi), %edx
	movl      40(%edi), %esi
	movl      $0, -36(%ebp)
	movl      %edx, -20(%ebp)
	movl      %esi, -28(%ebp)
L00000178:
	movl      (%edi), %eax
L0000017A:
	subl      $11, %eax
	cmpl      $18, %eax
	ja        L000001F0
L00000182:
	jmp       *LC000009F0(,%eax,4)
L00000190:
	addl      $108, %esp
	movl      $-2, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L000001A0:
	leal      -16(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      16(%ebp), %edx
	movl      %edx, (%esp)
	call      *12(%ebp)
L000001B0:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L000001BB:
	.p2align 3
L000001C0:
	decl      -24(%ebp)
	movl      -16(%ebp), %esi
	movzbl    -36(%ebp), %ecx
	movzbl    (%esi), %eax
	incl      %esi
	addl      $8, -36(%ebp)
	movl      %esi, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L000001DA:
	cmpl      $13, -36(%ebp)
	ja        L000003D0
L000001E4:
	movl      -24(%ebp), %ebx
	testl     %ebx, %ebx
	jne       L000001C0
L000001EB:
	jmp       L000001A0
L000001F0:
	movl      $-2, %ebx
	.p2align 4
L00000200:
	movl      8(%ebp), %edi
	movl      -24(%ebp), %eax
	movl      -16(%ebp), %ecx
	movl      %eax, 4(%edi)
	movl      %ebx, %eax
	movl      %ecx, (%edi)
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L00000218:
	movl      $20, (%edi)
	.p2align 3
L00000220:
	cmpl      $5, -24(%ebp)
	seta      %al
	xorl      %edx, %edx
	cmpl      $257, -28(%ebp)
	seta      %dl
	testl     %eax, %edx
	je        L000004D3
L0000023B:
	movl      8(%ebp), %esi
	movl      -28(%ebp), %edx
	movl      -24(%ebp), %ecx
	movl      -20(%ebp), %ebx
	movl      -16(%ebp), %eax
	movl      %edx, 16(%esi)
	movl      %ecx, 4(%esi)
	movl      40(%edi), %edx
	cmpl      %edx, 44(%edi)
	movl      %ebx, 12(%esi)
	movl      -32(%ebp), %ebx
	movl      %eax, (%esi)
	movl      -36(%ebp), %esi
	movl      %ebx, 56(%edi)
	movl      %esi, 60(%edi)
	jae       L00000273
L00000269:
	movl      -28(%ebp), %ecx
	movl      %edx, %esi
	subl      %ecx, %esi
	movl      %esi, 44(%edi)
L00000273:
	movl      %edx, 4(%esp)
	movl      8(%ebp), %ecx
	movl      %ecx, (%esp)
	call      _inflate_fast
L00000282:
	movl      8(%ebp), %esi
	movl      8(%ebp), %edx
	movl      12(%esi), %ebx
	movl      16(%edx), %eax
	movl      8(%ebp), %esi
	movl      56(%edi), %edx
	movl      %ebx, -20(%ebp)
	movl      (%esi), %ecx
	movl      %eax, -28(%ebp)
	movl      4(%esi), %ebx
	movl      %edx, -32(%ebp)
	movl      60(%edi), %eax
	movl      %ecx, -16(%ebp)
	movl      %ebx, -24(%ebp)
	movl      %eax, -36(%ebp)
	jmp       L00000178
L000002B3:
	movl      40(%edi), %eax
	movl      $1, %ebx
	cmpl      -28(%ebp), %eax
	jbe       L00000200
L000002C4:
	movl      -28(%ebp), %esi
	subl      %esi, %eax
	movl      %eax, 8(%esp)
	movl      52(%edi), %edx
	movl      %edx, 4(%esp)
	movl      24(%ebp), %edi
	movl      %edi, (%esp)
	call      *20(%ebp)
L000002DD:
	testl     %eax, %eax
	je        L00000200
L000002E5:
	movl      $-5, %ebx
	jmp       L00000200
L000002F0:
	movl      -36(%ebp), %ecx
	andl      $-8, -36(%ebp)
	andl      $7, %ecx
	shrl      %cl, -32(%ebp)
	jmp       L0000031A
L00000300:
	decl      -24(%ebp)
	movl      -16(%ebp), %ebx
	movzbl    -36(%ebp), %ecx
	movzbl    (%ebx), %edx
	incl      %ebx
	addl      $8, -36(%ebp)
	movl      %ebx, -16(%ebp)
	sall      %cl, %edx
	addl      %edx, -32(%ebp)
L0000031A:
	cmpl      $31, -36(%ebp)
	ja        L000004B0
L00000324:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	jne       L00000300
L0000032B:
	leal      -16(%ebp), %esi
	movl      %esi, 4(%esp)
	movl      16(%ebp), %eax
	movl      %eax, (%esp)
	call      *12(%ebp)
L0000033B:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	jne       L00000300
L00000342:
	jmp       L00000482
L00000347:
	movl      4(%edi), %eax
	testl     %eax, %eax
	je        L000003AA
L0000034E:
	movl      $28, (%edi)
	movl      -36(%ebp), %ecx
	movl      $28, %eax
	andl      $-8, -36(%ebp)
	andl      $7, %ecx
	shrl      %cl, -32(%ebp)
	jmp       L0000017A
L0000036B:
	leal      -16(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L0000037B:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L00000386:
	.p2align 4
L00000390:
	decl      -24(%ebp)
	movl      -16(%ebp), %ebx
	movzbl    -36(%ebp), %ecx
	movzbl    (%ebx), %eax
	incl      %ebx
	addl      $8, -36(%ebp)
	movl      %ebx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L000003AA:
	cmpl      $2, -36(%ebp)
	ja        L0000054B
L000003B4:
	movl      -24(%ebp), %ebx
	testl     %ebx, %ebx
	jne       L00000390
L000003BB:
	jmp       L0000036B
L000003C0:
	movl      $-3, %ebx
	jmp       L00000200
L000003D0:
	subl      $14, -36(%ebp)
	movl      -32(%ebp), %esi
	movl      -32(%ebp), %ebx
	shrl      $10, -32(%ebp)
	andl      $31, %esi
	shrl      $5, %ebx
	movl      -32(%ebp), %edx
	andl      $31, %ebx
	addl      $257, %esi
	shrl      $4, -32(%ebp)
	leal      1(%ebx), %ecx
	andl      $15, %edx
	movl      %esi, 96(%edi)
	leal      4(%edx), %ebx
	cmpl      $286, %esi
	movl      %ecx, 100(%edi)
	movl      %ebx, 92(%edi)
	ja        L00000493
L00000412:
	cmpl      $30, %ecx
	ja        L00000493
L0000041B:
	movl      $0, 104(%edi)
	testl     %ebx, %ebx
	je        L000005E1
L0000042A:
	.p2align 3
L00000430:
	cmpl      $2, -36(%ebp)
	jbe       L00000464
L00000436:
	jmp       L000005B7
L00000440:
	decl      -24(%ebp)
	movl      -16(%ebp), %ebx
	movzbl    -36(%ebp), %ecx
	movzbl    (%ebx), %eax
	incl      %ebx
	addl      $8, -36(%ebp)
	movl      %ebx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
	cmpl      $2, -36(%ebp)
	ja        L000005B4
L00000464:
	movl      -24(%ebp), %ecx
	testl     %ecx, %ecx
	jne       L00000440
L0000046B:
	leal      -16(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L0000047B:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	jne       L00000440
L00000482:
	movl      $0, -16(%ebp)
	movl      $-5, %ebx
	jmp       L00000200
L00000493:
	movl      8(%ebp), %eax
	movl      $LC000008C0, 24(%eax)
L0000049D:
	movl      $29, (%edi)
	movl      $29, %eax
	jmp       L0000017A
L000004B0:
	movzwl    -32(%ebp), %edx
	movl      -32(%ebp), %eax
	shrl      $16, %eax
	xorl      $65535, %eax
	cmpl      %eax, %edx
	je        L00000767
L000004C7:
	movl      8(%ebp), %esi
	movl      $LC000008E4, 24(%esi)
	jmp       L0000049D
L000004D3:
	movl      76(%edi), %eax
	movl      84(%edi), %esi
	movl      %eax, -76(%ebp)
	jmp       L000004FA
L000004E0:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %eax
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L000004FA:
	movl      %esi, %ecx
	movl      -32(%ebp), %ebx
	movl      $1, %eax
	sall      %cl, %eax
	movl      -76(%ebp), %edx
	decl      %eax
	andl      %ebx, %eax
	movl      (%edx,%eax,4), %ebx
	movzbl    %bh, %ecx
	movzbl    %cl, %edx
	cmpl      -36(%ebp), %edx
	jbe       L00000677
L0000051E:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	jne       L000004E0
L00000525:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L00000535:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L00000540:
	movl      76(%edi), %ebx
	movl      84(%edi), %esi
	movl      %ebx, -76(%ebp)
	jmp       L000004E0
L0000054B:
	movl      -32(%ebp), %eax
	movl      -32(%ebp), %esi
	movl      -36(%ebp), %edx
	shrl      $1, %eax
	movl      %eax, %ebx
	andl      $1, %esi
	movl      %esi, 4(%edi)
	andl      $3, %ebx
	decl      %edx
	cmpl      $1, %ebx
	je        L00000590
L00000567:
	jb        L0000083C
L0000056D:
	cmpl      $2, %ebx
	je        L00000A57
L00000576:
	cmpl      $3, %ebx
	je        L00000B02
L0000057F:
	shrl      $2, %eax
	subl      $2, %edx
	movl      %eax, -32(%ebp)
	movl      %edx, -36(%ebp)
	jmp       L00000178
L00000590:
	movl      $lenfix.1, 76(%edi)
	movl      $9, 84(%edi)
	movl      $distfix.2, 80(%edi)
	movl      $5, 88(%edi)
	movl      $20, (%edi)
	jmp       L0000057F
L000005B4:
	movl      92(%edi), %ebx
L000005B7:
	subl      $3, -36(%ebp)
	movl      104(%edi), %esi
	movl      -32(%ebp), %edx
	shrl      $3, -32(%ebp)
	movzwl    order.0(%esi,%esi), %eax
	incl      %esi
	andl      $7, %edx
	movl      %esi, 104(%edi)
	cmpl      %ebx, %esi
	movw      %dx, 112(%edi,%eax,2)
	jb        L00000430
L000005E1:
	movl      104(%edi), %eax
	cmpl      $18, %eax
	ja        L0000060A
L000005E9:
	leal      1(%eax), %edx
	.p2align 3
L000005F0:
	movzwl    order.0-2(%edx,%edx), %ebx
	movl      %edx, %eax
	incl      %edx
	cmpl      $18, %eax
	movw      $0, 112(%edi,%ebx,2)
	jbe       L000005F0
L00000607:
	movl      %eax, 104(%edi)
L0000060A:
	movl      $7, 84(%edi)
	leal      1328(%edi), %ecx
	movl      $19, %esi
	movl      %ecx, -52(%ebp)
	leal      84(%edi), %edx
	leal      108(%edi), %eax
	movl      %ecx, 108(%edi)
	leal      752(%edi), %ebx
	movl      %ecx, 76(%edi)
	leal      112(%edi), %ecx
	movl      %ebx, -48(%ebp)
	movl      %ebx, 20(%esp)
	movl      %edx, -56(%ebp)
	movl      %edx, 16(%esp)
	movl      %eax, -60(%ebp)
	movl      %eax, 12(%esp)
	movl      %esi, 8(%esp)
	movl      %ecx, -64(%ebp)
	movl      %ecx, 4(%esp)
	movl      $0, (%esp)
	call      _inflate_table
L00000660:
	testl     %eax, %eax
	je        L00000861
L00000668:
	movl      8(%ebp), %esi
	movl      $LC00000901, 24(%esi)
	jmp       L0000049D
L00000677:
	testb     %bl, %bl
	je        L00000724
L0000067F:
	testb     $240, %bl
	jne       L00000724
L00000688:
	movl      %ebx, %esi
	shrl      $16, %ebx
	movl      %ebx, -40(%ebp)
	jmp       L000006AC
L00000692:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %eax
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L000006AC:
	movl      %esi, %edx
	movzbl    %dh, %ebx
	movzbl    %dl, %eax
	movzbl    %bl, %ecx
	addl      %eax, %ecx
	movl      -32(%ebp), %ebx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %ebx, %eax
	movzbl    %dh, %ecx
	movl      -40(%ebp), %ebx
	shrl      %cl, %eax
	movl      -76(%ebp), %ecx
	addl      %ebx, %eax
	movl      (%ecx,%eax,4), %ebx
	movzbl    %dh, %eax
	movzbl    %al, %eax
	movzbl    %bh, %edx
	movzbl    %dl, %ecx
	addl      %ecx, %eax
	cmpl      -36(%ebp), %eax
	jbe       L00000716
L000006E9:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	jne       L00000692
L000006F0:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %ecx
	movl      %ecx, (%esp)
	call      *12(%ebp)
L00000700:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L0000070B:
	movl      76(%edi), %ebx
	movl      %ebx, -76(%ebp)
	jmp       L00000692
L00000716:
	movl      %esi, %eax
	movzbl    %ah, %ecx
	movzbl    %cl, %esi
	shrl      %cl, -32(%ebp)
	subl      %esi, -36(%ebp)
L00000724:
	movzbl    %bh, %ecx
	movl      %ebx, %edx
	movzbl    %cl, %esi
	shrl      %cl, -32(%ebp)
	shrl      $16, %edx
	subl      %esi, -36(%ebp)
	testb     %bl, %bl
	jne       L00000822
L0000073D:
	movl      %edx, 64(%edi)
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        L00000A27
L0000074B:
	movl      -20(%ebp), %ecx
	movl      $20, %eax
	movb      %dl, (%ecx)
	incl      %ecx
	decl      -28(%ebp)
	movl      %ecx, -20(%ebp)
	movl      $20, (%edi)
	jmp       L0000017A
L00000767:
	movl      %edx, 64(%edi)
	movl      %edx, %esi
	movl      $0, -32(%ebp)
	movl      $0, -36(%ebp)
	jmp       L000007C3
L00000780:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        L000007F0
L00000787:
	cmpl      -24(%ebp), %esi
	jbe       L0000078F
L0000078C:
	movl      -24(%ebp), %ebx
L0000078F:
	cmpl      -28(%ebp), %ebx
	jbe       L00000797
L00000794:
	movl      -28(%ebp), %ebx
L00000797:
	movl      %ebx, 8(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      -20(%ebp), %esi
	movl      %esi, (%esp)
	call      _memcpy
L000007AD:
	subl      %ebx, -24(%ebp)
	movl      64(%edi), %ecx
	addl      %ebx, -16(%ebp)
	subl      %ebx, -28(%ebp)
	subl      %ebx, %ecx
	movl      %ecx, %esi
	addl      %ebx, -20(%ebp)
	movl      %ecx, 64(%edi)
L000007C3:
	testl     %esi, %esi
	je        L0000082C
L000007C7:
	movl      -24(%ebp), %edx
	movl      %esi, %ebx
	testl     %edx, %edx
	jne       L00000780
L000007D0:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %ecx
	movl      %ecx, (%esp)
	call      *12(%ebp)
L000007E0:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	jne       L00000780
L000007E7:
	jmp       L00000482
L000007F0:
	movl      40(%edi), %edx
	movl      52(%edi), %eax
	movl      %edx, -28(%ebp)
	movl      %eax, -20(%ebp)
	movl      %edx, 44(%edi)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      24(%ebp), %ecx
	movl      %ecx, (%esp)
	call      *20(%ebp)
L00000810:
	testl     %eax, %eax
	je        L00000787
L00000818:
	movl      $-5, %ebx
	jmp       L00000200
L00000822:
	movzbl    %bl, %eax
	testb     $32, %al
	je        L00000847
L00000829:
	movl      %edx, 64(%edi)
L0000082C:
	movl      $11, (%edi)
	movl      $11, %eax
	jmp       L0000017A
L0000083C:
	movl      $13, (%edi)
	jmp       L0000057F
L00000847:
	testb     $64, %al
	je        L00000A62
L0000084F:
	movl      %edx, 64(%edi)
	movl      8(%ebp), %ebx
	movl      $LC0000091A, 24(%ebx)
	jmp       L0000049D
L00000861:
	movl      $0, 104(%edi)
	movl      100(%edi), %ebx
	movl      96(%edi), %ecx
	addl      %ecx, %ebx
	cmpl      %ebx, %eax
L00000872:
	jae       L00000ADA
L00000878:
	movl      84(%edi), %eax
	movl      76(%edi), %esi
	movl      %eax, -84(%ebp)
	jmp       L0000089D
L00000883:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %eax
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L0000089D:
	movzbl    -84(%ebp), %ecx
	movl      $1, %eax
	movl      -32(%ebp), %ebx
	sall      %cl, %eax
	decl      %eax
	andl      %ebx, %eax
	movl      (%esi,%eax,4), %ebx
	movzbl    %bh, %ecx
	movzbl    %cl, %edx
	cmpl      -36(%ebp), %edx
	jbe       L000008E9
L000008BC:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	jne       L00000883
L000008C3:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L000008D3:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L000008DE:
	movl      84(%edi), %ebx
	movl      76(%edi), %esi
	movl      %ebx, -84(%ebp)
	jmp       L00000883
L000008E9:
	movl      %ebx, %edx
	shrl      $16, %edx
	cmpw      $15, %dx
	ja        L00000923
L000008F4:
	movl      96(%edi), %esi
	movzbl    %bh, %ecx
	movl      104(%edi), %eax
	shrl      %cl, -32(%ebp)
	movzbl    %cl, %ebx
	movl      %esi, -72(%ebp)
	movl      100(%edi), %esi
	subl      %ebx, -36(%ebp)
	movw      %dx, 112(%edi,%eax,2)
	incl      %eax
	movl      %eax, 104(%edi)
L00000915:
	movl      %eax, %ecx
L00000917:
	movl      -72(%ebp), %ebx
	addl      %esi, %ebx
	cmpl      %ebx, %ecx
	jmp       L00000872
L00000923:
	cmpw      $16, %dx
	je        L000009BC
L0000092D:
	cmpw      $17, %dx
	jne       L00000952
L00000933:
	jmp       L00000A0C
L00000938:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %eax
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L00000952:
	movzbl    %bh, %edx
	movzbl    %dl, %esi
	addl      $7, %esi
	cmpl      -36(%ebp), %esi
	jbe       L00000B17
L00000964:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	jne       L00000938
L0000096B:
	leal      -16(%ebp), %esi
	movl      %esi, 4(%esp)
	movl      16(%ebp), %ecx
	movl      %ecx, (%esp)
	call      *12(%ebp)
L0000097B:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	jne       L00000938
L00000982:
	jmp       L00000482
L00000987:
	leal      -16(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      16(%ebp), %ecx
	movl      %ecx, (%esp)
	call      *12(%ebp)
L00000997:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L000009A2:
	decl      -24(%ebp)
	movl      -16(%ebp), %esi
	movzbl    -36(%ebp), %ecx
	movzbl    (%esi), %eax
	incl      %esi
	addl      $8, -36(%ebp)
	movl      %esi, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L000009BC:
	movzbl    %bh, %eax
	movzbl    %al, %edx
	addl      $2, %edx
	cmpl      -36(%ebp), %edx
	jbe       L00000CE7
L000009CE:
	movl      -24(%ebp), %esi
	testl     %esi, %esi
	jne       L000009A2
L000009D5:
	jmp       L00000987
L000009D7:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L000009E7:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L000009F2:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %esi
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %esi
	addl      %esi, -32(%ebp)
L00000A0C:
	movzbl    %bh, %edx
	movzbl    %dl, %eax
	addl      $3, %eax
	cmpl      -36(%ebp), %eax
	jbe       L00000D89
L00000A1E:
	movl      -24(%ebp), %ecx
	testl     %ecx, %ecx
	jne       L000009F2
L00000A25:
	jmp       L000009D7
L00000A27:
	movl      40(%edi), %edx
	movl      52(%edi), %esi
	movl      %edx, -28(%ebp)
	movl      %esi, -20(%ebp)
	movl      %edx, 44(%edi)
	movl      %edx, 8(%esp)
	movl      %esi, 4(%esp)
	movl      24(%ebp), %eax
	movl      %eax, (%esp)
	call      *20(%ebp)
L00000A47:
	testl     %eax, %eax
	jne       L000002E5
L00000A4F:
	movl      64(%edi), %edx
	jmp       L0000074B
L00000A57:
	movl      $16, (%edi)
	jmp       L0000057F
L00000A62:
	movl      %eax, %ebx
	andl      $15, %ebx
	testl     %ebx, %ebx
	movl      %ebx, 72(%edi)
	je        L00000B88
L00000A72:
	cmpl      -36(%ebp), %ebx
	jbe       L00000CC7
L00000A7B:
	movl      %edx, 64(%edi)
	jmp       L00000AA3
L00000A80:
	decl      -24(%ebp)
	movl      -16(%ebp), %esi
	movzbl    -36(%ebp), %ecx
	movzbl    (%esi), %eax
	incl      %esi
	addl      $8, -36(%ebp)
	movl      %esi, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
	cmpl      -36(%ebp), %ebx
	jbe       L00000CC4
L00000AA3:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	jne       L00000A80
L00000AAA:
	leal      -16(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L00000ABA:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L00000AC5:
	movl      72(%edi), %ebx
	jmp       L00000A80
L00000ACA:
	movl      8(%ebp), %edx
	movl      $LC00000936, 24(%edx)
L00000AD4:
	movl      $29, (%edi)
L00000ADA:
	movl      (%edi), %eax
	cmpl      $29, %eax
	je        L0000017A
L00000AE5:
	cmpw      $0, 624(%edi)
	jne       L00000DB4
L00000AF3:
	movl      8(%ebp), %ecx
	movl      $LC00000950, 24(%ecx)
	jmp       L0000049D
L00000B02:
	movl      $29, (%edi)
	movl      8(%ebp), %ebx
	movl      $LC00000975, 24(%ebx)
	jmp       L0000057F
L00000B17:
	movl      -32(%ebp), %esi
	movzbl    %bh, %ecx
	movzbl    %cl, %ebx
	shrl      %cl, %esi
	movl      -36(%ebp), %ecx
	movl      %esi, %edx
	andl      $127, %edx
	shrl      $7, %esi
	addl      $11, %edx
	movl      %edx, -68(%ebp)
	subl      %ebx, %ecx
	subl      $7, %ecx
	movl      %esi, -32(%ebp)
	xorl      %ebx, %ebx
L00000B3D:
	movl      %ecx, -36(%ebp)
	movl      104(%edi), %ecx
L00000B43:
	movl      -68(%ebp), %esi
	movl      96(%edi), %eax
	leal      (%ecx,%esi), %edx
	movl      %eax, -72(%ebp)
	movl      100(%edi), %esi
	addl      %esi, %eax
	cmpl      %eax, %edx
	ja        L00000ACA
L00000B5C:
	movl      -68(%ebp), %edx
	decl      %edx
	cmpl      $-1, %edx
	jne       L00000B72
L00000B65:
	jmp       L00000917
L00000B70:
	movl      %eax, %ecx
L00000B72:
	movw      %bx, 112(%edi,%ecx,2)
	decl      %edx
	leal      1(%ecx), %eax
	movl      %eax, 104(%edi)
	cmpl      $-1, %edx
	jne       L00000B70
L00000B83:
	jmp       L00000915
L00000B88:
	movl      %edx, 64(%edi)
L00000B8B:
	movl      80(%edi), %ebx
	movl      88(%edi), %esi
	movl      %ebx, -80(%ebp)
	jmp       L00000BB0
L00000B96:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %eax
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L00000BB0:
	movl      %esi, %ecx
	movl      -32(%ebp), %ebx
	movl      $1, %eax
	sall      %cl, %eax
	movl      -80(%ebp), %edx
	decl      %eax
	andl      %ebx, %eax
	movl      (%edx,%eax,4), %ebx
	movzbl    %bh, %ecx
	movzbl    %cl, %edx
	cmpl      -36(%ebp), %edx
	jbe       L00000BFD
L00000BD0:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	jne       L00000B96
L00000BD7:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L00000BE7:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L00000BF2:
	movl      80(%edi), %ebx
	movl      88(%edi), %esi
	movl      %ebx, -80(%ebp)
	jmp       L00000B96
L00000BFD:
	testb     $240, %bl
	jne       L00000CA2
L00000C06:
	movl      %ebx, %esi
	shrl      $16, %ebx
	movl      %ebx, -44(%ebp)
	jmp       L00000C2A
L00000C10:
	decl      -24(%ebp)
	movl      -16(%ebp), %edx
	movzbl    -36(%ebp), %ecx
	movzbl    (%edx), %eax
	incl      %edx
	addl      $8, -36(%ebp)
	movl      %edx, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
L00000C2A:
	movl      %esi, %edx
	movzbl    %dh, %ebx
	movzbl    %dl, %eax
	movzbl    %bl, %ecx
	addl      %eax, %ecx
	movl      -32(%ebp), %ebx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %ebx, %eax
	movzbl    %dh, %ecx
	movl      -44(%ebp), %ebx
	shrl      %cl, %eax
	movl      -80(%ebp), %ecx
	addl      %ebx, %eax
	movl      (%ecx,%eax,4), %ebx
	movzbl    %dh, %eax
	movzbl    %al, %eax
	movzbl    %bh, %ecx
	movzbl    %cl, %edx
	addl      %edx, %eax
	cmpl      -36(%ebp), %eax
	jbe       L00000C94
L00000C67:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	jne       L00000C10
L00000C6E:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebp), %ecx
	movl      %ecx, (%esp)
	call      *12(%ebp)
L00000C7E:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L00000C89:
	movl      80(%edi), %ebx
	movl      %ebx, -80(%ebp)
	jmp       L00000C10
L00000C94:
	movl      %esi, %eax
	movzbl    %ah, %ecx
	movzbl    %cl, %esi
	shrl      %cl, -32(%ebp)
	subl      %esi, -36(%ebp)
L00000CA2:
	movzbl    %bh, %ecx
	movzbl    %bl, %eax
	movzbl    %cl, %esi
	shrl      %cl, -32(%ebp)
	subl      %esi, -36(%ebp)
	testb     $64, %al
	je        L00000D1C
L00000CB5:
	movl      8(%ebp), %ebx
	movl      $LC00000988, 24(%ebx)
	jmp       L0000049D
L00000CC4:
	movl      64(%edi), %edx
L00000CC7:
	subl      %ebx, -36(%ebp)
	movb      %bl, %cl
	movl      -32(%ebp), %esi
	shrl      %cl, -32(%ebp)
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %esi, %eax
	leal      (%edx,%eax), %esi
	movl      %esi, 64(%edi)
	jmp       L00000B8B
L00000CE7:
	movzbl    %bh, %ecx
	movzbl    %cl, %ebx
	shrl      %cl, -32(%ebp)
	movl      104(%edi), %ecx
	subl      %ebx, -36(%ebp)
	testl     %ecx, %ecx
	je        L00000F36
L00000CFE:
	movzwl    110(%edi,%ecx,2), %ebx
	movl      -32(%ebp), %esi
	subl      $2, -36(%ebp)
	shrl      $2, -32(%ebp)
	andl      $3, %esi
	addl      $3, %esi
	movl      %esi, -68(%ebp)
	jmp       L00000B43
L00000D1C:
	movl      %ebx, %edx
	movl      %eax, %ebx
	shrl      $16, %edx
	andl      $15, %ebx
	testl     %ebx, %ebx
	movl      %ebx, 72(%edi)
	je        L00000E0A
L00000D31:
	cmpl      -36(%ebp), %ebx
	jbe       L00000EC0
L00000D3A:
	movl      %edx, 68(%edi)
	jmp       L00000D62
L00000D3F:
	decl      -24(%ebp)
	movl      -16(%ebp), %esi
	movzbl    -36(%ebp), %ecx
	movzbl    (%esi), %eax
	incl      %esi
	addl      $8, -36(%ebp)
	movl      %esi, -16(%ebp)
	sall      %cl, %eax
	addl      %eax, -32(%ebp)
	cmpl      -36(%ebp), %ebx
	jbe       L00000EBD
L00000D62:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	jne       L00000D3F
L00000D69:
	leal      -16(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      16(%ebp), %esi
	movl      %esi, (%esp)
	call      *12(%ebp)
L00000D79:
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L00000482
L00000D84:
	movl      72(%edi), %ebx
	jmp       L00000D3F
L00000D89:
	movl      -32(%ebp), %edx
	movzbl    %bh, %ecx
	movzbl    %cl, %ebx
	shrl      %cl, %edx
	movl      -36(%ebp), %ecx
	movl      %edx, %eax
	andl      $7, %eax
	shrl      $3, %edx
	addl      $3, %eax
	movl      %eax, -68(%ebp)
	subl      %ebx, %ecx
	subl      $3, %ecx
	movl      %edx, -32(%ebp)
	xorl      %ebx, %ebx
	jmp       L00000B3D
L00000DB4:
	movl      $9, 84(%edi)
	movl      -52(%ebp), %eax
	movl      -48(%ebp), %ecx
	movl      %eax, 108(%edi)
	movl      %eax, 76(%edi)
	movl      %ecx, 20(%esp)
	movl      -56(%ebp), %ebx
	movl      %ebx, 16(%esp)
	movl      -60(%ebp), %esi
	movl      %esi, 12(%esp)
	movl      96(%edi), %edx
	movl      %edx, 8(%esp)
	movl      -64(%ebp), %eax
	movl      $1, (%esp)
	movl      %eax, 4(%esp)
	call      _inflate_table
L00000DF3:
	testl     %eax, %eax
	je        L00000EDF
L00000DFB:
	movl      8(%ebp), %edx
	movl      $LC0000099E, 24(%edx)
	jmp       L0000049D
L00000E0A:
	movl      %edx, 68(%edi)
L00000E0D:
	movl      40(%edi), %ebx
	cmpl      %ebx, 44(%edi)
	jae       L00000EB6
L00000E19:
	movl      -28(%ebp), %ecx
	movl      %ebx, %eax
	subl      %ecx, %eax
	cmpl      %eax, %edx
L00000E22:
	jbe       L00000E41
L00000E24:
	movl      8(%ebp), %ebx
	movl      $LC000009BA, 24(%ebx)
	jmp       L0000049D
L00000E33:
	movl      64(%edi), %ecx
	testl     %ecx, %ecx
	je        L00000178
L00000E3E:
	movl      40(%edi), %ebx
L00000E41:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        L00000E8C
L00000E48:
	movl      68(%edi), %edx
	movl      %ebx, %eax
	subl      %edx, %eax
	cmpl      -28(%ebp), %eax
	jae       L00000E82
L00000E54:
	movl      -20(%ebp), %ecx
	movl      -28(%ebp), %edx
	addl      %eax, %ecx
	subl      %eax, %edx
L00000E5E:
	movl      64(%edi), %eax
	cmpl      %edx, %eax
	jae       L00000E67
L00000E65:
	movl      %eax, %edx
L00000E67:
	subl      %edx, -28(%ebp)
	subl      %edx, %eax
	movl      %eax, 64(%edi)
	.p2align 3
L00000E70:
	movzbl    (%ecx), %eax
	incl      %ecx
	movl      -20(%ebp), %ebx
	movb      %al, (%ebx)
	incl      %ebx
	decl      %edx
	movl      %ebx, -20(%ebp)
	jne       L00000E70
L00000E80:
	jmp       L00000E33
L00000E82:
	movl      -20(%ebp), %ecx
	subl      %edx, %ecx
	movl      -28(%ebp), %edx
	jmp       L00000E5E
L00000E8C:
	movl      %ebx, -28(%ebp)
	movl      52(%edi), %eax
	movl      %ebx, 44(%edi)
	movl      %eax, -20(%ebp)
	movl      %ebx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      24(%ebp), %esi
	movl      %esi, (%esp)
	call      *20(%ebp)
L00000EA9:
	testl     %eax, %eax
	jne       L000002E5
L00000EB1:
	movl      40(%edi), %ebx
	jmp       L00000E48
L00000EB6:
	cmpl      %ebx, %edx
	jmp       L00000E22
L00000EBD:
	movl      68(%edi), %edx
L00000EC0:
	subl      %ebx, -36(%ebp)
	movb      %bl, %cl
	movl      -32(%ebp), %esi
	shrl      %cl, -32(%ebp)
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %esi, %eax
	addl      %eax, %edx
	movl      %edx, 68(%edi)
	jmp       L00000E0D
L00000EDF:
	movl      $6, 88(%edi)
	movl      108(%edi), %ebx
	leal      88(%edi), %edx
	movl      -48(%ebp), %esi
	movl      %ebx, 80(%edi)
	movl      %esi, 20(%esp)
	movl      %edx, 16(%esp)
	movl      -60(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      100(%edi), %ecx
	movl      %ecx, 8(%esp)
	movl      96(%edi), %ebx
	movl      $2, (%esp)
	leal      112(%edi,%ebx,2), %esi
	movl      %esi, 4(%esp)
	call      _inflate_table
L00000F1F:
	testl     %eax, %eax
	je        L00000218
L00000F27:
	movl      8(%ebp), %ecx
	movl      $LC000009D8, 24(%ecx)
	jmp       L0000049D
L00000F36:
	movl      8(%ebp), %eax
	movl      $LC00000936, 24(%eax)
	jmp       L00000AD4
# ----------------------
	.def	_inflateBackEnd;	.scl	2;	.type	32;	.endef
_inflateBackEnd:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $20, %esp
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	je        L00000F65
L00000F5E:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	jne       L00000F70
L00000F65:
	addl      $20, %esp
	movl      $-2, %eax
	popl      %ebx
	popl      %ebp
	ret       
L00000F70:
	movl      36(%ebx), %edx
	testl     %edx, %edx
	je        L00000F65
L00000F77:
	movl      %eax, 4(%esp)
	movl      40(%ebx), %eax
	movl      %eax, (%esp)
	call      *%edx
L00000F83:
	movl      $0, 28(%ebx)
	addl      $20, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       .rdata
	.def	order.0;	.scl	3;	.endef
order.0:
	.long	1114128
	.long	18
	.long	458760
	.long	393225
	.long	327690
	.long	262155
	.long	196620
	.long	131085
	.long	65550
	.long	15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
lenfix.1:
	.long	1888
	.long	5244928
	.long	1050624
	.long	7538708
	.long	2033426
	.long	7342080
	.long	3147776
	.long	12585216
	.long	657168
	.long	6293504
	.long	2099200
	.long	10488064
	.long	2048
	.long	8390656
	.long	4196352
	.long	14682368
	.long	395024
	.long	5769216
	.long	1574912
	.long	9439488
	.long	3868435
	.long	7866368
	.long	3672064
	.long	13633792
	.long	1115921
	.long	6817792
	.long	2623488
	.long	11536640
	.long	526336
	.long	8914944
	.long	4720640
	.long	15730944
	.long	263952
	.long	5507072
	.long	1312768
	.long	14878741
	.long	2819859
	.long	7604224
	.long	3409920
	.long	13109504
	.long	853777
	.long	6555648
	.long	2361344
	.long	11012352
	.long	264192
	.long	8652800
	.long	4458496
	.long	15206656
	.long	526096
	.long	6031360
	.long	1837056
	.long	9963776
	.long	5441300
	.long	8128512
	.long	3934208
	.long	14158080
	.long	1509138
	.long	7079936
	.long	2885632
	.long	12060928
	.long	788480
	.long	9177088
	.long	4982784
	.long	16255232
	.long	198416
	.long	5376000
	.long	1181696
	.long	10684437
	.long	2295571
	.long	7473152
	.long	3278848
	.long	12847360
	.long	722705
	.long	6424576
	.long	2230272
	.long	10750208
	.long	133120
	.long	8521728
	.long	4327424
	.long	14944512
	.long	460560
	.long	5900288
	.long	1705984
	.long	9701632
	.long	4392724
	.long	7997440
	.long	3803136
	.long	13895936
	.long	1246994
	.long	6948864
	.long	2754560
	.long	11798784
	.long	657408
	.long	9046016
	.long	4851712
	.long	15993088
	.long	329488
	.long	5638144
	.long	1443840
	.long	2112
	.long	3344147
	.long	7735296
	.long	3540992
	.long	13371648
	.long	984849
	.long	6686720
	.long	2492416
	.long	11274496
	.long	395264
	.long	8783872
	.long	4589568
	.long	15468800
	.long	591632
	.long	6162432
	.long	1968128
	.long	10225920
	.long	6489876
	.long	8259584
	.long	4065280
	.long	14420224
	.long	1771282
	.long	7211008
	.long	3016704
	.long	12323072
	.long	919552
	.long	9308160
	.long	5113856
	.long	16517376
	.long	1888
	.long	5310464
	.long	1116160
	.long	8587285
	.long	2033426
	.long	7407616
	.long	3213312
	.long	12716288
	.long	657168
	.long	6359040
	.long	2164736
	.long	10619136
	.long	67584
	.long	8456192
	.long	4261888
	.long	14813440
	.long	395024
	.long	5834752
	.long	1640448
	.long	9570560
	.long	3868435
	.long	7931904
	.long	3737600
	.long	13764864
	.long	1115921
	.long	6883328
	.long	2689024
	.long	11667712
	.long	591872
	.long	8980480
	.long	4786176
	.long	15862016
	.long	263952
	.long	5572608
	.long	1378304
	.long	16910352
	.long	2819859
	.long	7669760
	.long	3475456
	.long	13240576
	.long	853777
	.long	6621184
	.long	2426880
	.long	11143424
	.long	329728
	.long	8718336
	.long	4524032
	.long	15337728
	.long	526096
	.long	6096896
	.long	1902592
	.long	10094848
	.long	5441300
	.long	8194048
	.long	3999744
	.long	14289152
	.long	1509138
	.long	7145472
	.long	2951168
	.long	12192000
	.long	854016
	.long	9242624
	.long	5048320
	.long	16386304
	.long	198416
	.long	5441536
	.long	1247232
	.long	12781589
	.long	2295571
	.long	7538688
	.long	3344384
	.long	12978432
	.long	722705
	.long	6490112
	.long	2295808
	.long	10881280
	.long	198656
	.long	8587264
	.long	4392960
	.long	15075584
	.long	460560
	.long	5965824
	.long	1771520
	.long	9832704
	.long	4392724
	.long	8062976
	.long	3868672
	.long	14027008
	.long	1246994
	.long	7014400
	.long	2820096
	.long	11929856
	.long	722944
	.long	9111552
	.long	4917248
	.long	16124160
	.long	329488
	.long	5703680
	.long	1509376
	.long	2112
	.long	3344147
	.long	7800832
	.long	3606528
	.long	13502720
	.long	984849
	.long	6752256
	.long	2557952
	.long	11405568
	.long	460800
	.long	8849408
	.long	4655104
	.long	15599872
	.long	591632
	.long	6227968
	.long	2033664
	.long	10356992
	.long	6489876
	.long	8325120
	.long	4130816
	.long	14551296
	.long	1771282
	.long	7276544
	.long	3082240
	.long	12454144
	.long	985088
	.long	9373696
	.long	5179392
	.long	16648448
	.long	1888
	.long	5244928
	.long	1050624
	.long	7538708
	.long	2033426
	.long	7342080
	.long	3147776
	.long	12650752
	.long	657168
	.long	6293504
	.long	2099200
	.long	10553600
	.long	2048
	.long	8390656
	.long	4196352
	.long	14747904
	.long	395024
	.long	5769216
	.long	1574912
	.long	9505024
	.long	3868435
	.long	7866368
	.long	3672064
	.long	13699328
	.long	1115921
	.long	6817792
	.long	2623488
	.long	11602176
	.long	526336
	.long	8914944
	.long	4720640
	.long	15796480
	.long	263952
	.long	5507072
	.long	1312768
	.long	14878741
	.long	2819859
	.long	7604224
	.long	3409920
	.long	13175040
	.long	853777
	.long	6555648
	.long	2361344
	.long	11077888
	.long	264192
	.long	8652800
	.long	4458496
	.long	15272192
	.long	526096
	.long	6031360
	.long	1837056
	.long	10029312
	.long	5441300
	.long	8128512
	.long	3934208
	.long	14223616
	.long	1509138
	.long	7079936
	.long	2885632
	.long	12126464
	.long	788480
	.long	9177088
	.long	4982784
	.long	16320768
	.long	198416
	.long	5376000
	.long	1181696
	.long	10684437
	.long	2295571
	.long	7473152
	.long	3278848
	.long	12912896
	.long	722705
	.long	6424576
	.long	2230272
	.long	10815744
	.long	133120
	.long	8521728
	.long	4327424
	.long	15010048
	.long	460560
	.long	5900288
	.long	1705984
	.long	9767168
	.long	4392724
	.long	7997440
	.long	3803136
	.long	13961472
	.long	1246994
	.long	6948864
	.long	2754560
	.long	11864320
	.long	657408
	.long	9046016
	.long	4851712
	.long	16058624
	.long	329488
	.long	5638144
	.long	1443840
	.long	2112
	.long	3344147
	.long	7735296
	.long	3540992
	.long	13437184
	.long	984849
	.long	6686720
	.long	2492416
	.long	11340032
	.long	395264
	.long	8783872
	.long	4589568
	.long	15534336
	.long	591632
	.long	6162432
	.long	1968128
	.long	10291456
	.long	6489876
	.long	8259584
	.long	4065280
	.long	14485760
	.long	1771282
	.long	7211008
	.long	3016704
	.long	12388608
	.long	919552
	.long	9308160
	.long	5113856
	.long	16582912
	.long	1888
	.long	5310464
	.long	1116160
	.long	8587285
	.long	2033426
	.long	7407616
	.long	3213312
	.long	12781824
	.long	657168
	.long	6359040
	.long	2164736
	.long	10684672
	.long	67584
	.long	8456192
	.long	4261888
	.long	14878976
	.long	395024
	.long	5834752
	.long	1640448
	.long	9636096
	.long	3868435
	.long	7931904
	.long	3737600
	.long	13830400
	.long	1115921
	.long	6883328
	.long	2689024
	.long	11733248
	.long	591872
	.long	8980480
	.long	4786176
	.long	15927552
	.long	263952
	.long	5572608
	.long	1378304
	.long	16910352
	.long	2819859
	.long	7669760
	.long	3475456
	.long	13306112
	.long	853777
	.long	6621184
	.long	2426880
	.long	11208960
	.long	329728
	.long	8718336
	.long	4524032
	.long	15403264
	.long	526096
	.long	6096896
	.long	1902592
	.long	10160384
	.long	5441300
	.long	8194048
	.long	3999744
	.long	14354688
	.long	1509138
	.long	7145472
	.long	2951168
	.long	12257536
	.long	854016
	.long	9242624
	.long	5048320
	.long	16451840
	.long	198416
	.long	5441536
	.long	1247232
	.long	12781589
	.long	2295571
	.long	7538688
	.long	3344384
	.long	13043968
	.long	722705
	.long	6490112
	.long	2295808
	.long	10946816
	.long	198656
	.long	8587264
	.long	4392960
	.long	15141120
	.long	460560
	.long	5965824
	.long	1771520
	.long	9898240
	.long	4392724
	.long	8062976
	.long	3868672
	.long	14092544
	.long	1246994
	.long	7014400
	.long	2820096
	.long	11995392
	.long	722944
	.long	9111552
	.long	4917248
	.long	16189696
	.long	329488
	.long	5703680
	.long	1509376
	.long	2112
	.long	3344147
	.long	7800832
	.long	3606528
	.long	13568256
	.long	984849
	.long	6752256
	.long	2557952
	.long	11471104
	.long	460800
	.long	8849408
	.long	4655104
	.long	15665408
	.long	591632
	.long	6227968
	.long	2033664
	.long	10422528
	.long	6489876
	.long	8325120
	.long	4130816
	.long	14616832
	.long	1771282
	.long	7276544
	.long	3082240
	.long	12519680
	.long	985088
	.long	9373696
	.long	5179392
	.long	16713984
distfix.2:
	.long	66832
	.long	16844055
	.long	1115411
	.long	268502299
	.long	328977
	.long	67175705
	.long	4261141
	.long	1073808669
	.long	197904
	.long	33621272
	.long	2163988
	.long	536937756
	.long	591122
	.long	134284570
	.long	8455446
	.long	1344
	.long	132368
	.long	25232663
	.long	1639699
	.long	402720027
	.long	460049
	.long	100730137
	.long	6358293
	.long	1610679581
	.long	263440
	.long	50398488
	.long	3212564
	.long	805373212
	.long	853266
	.long	201393434
	.long	12649750
	.long	1344
LC000008C0:
	.string	"too many length or distance symbols"
LC000008E4:
	.string	"invalid stored block lengths"
LC00000901:
	.string	"invalid code lengths set"
LC0000091A:
	.string	"invalid literal/length code"
LC00000936:
	.string	"invalid bit length repeat"
LC00000950:
	.string	"invalid code -- missing end-of-block"
LC00000975:
	.string	"invalid block type"
LC00000988:
	.string	"invalid distance code"
LC0000099E:
	.string	"invalid literal/lengths set"
LC000009BA:
	.string	"invalid distance too far back"
LC000009D8:
	.string	"invalid distances set"
	.align 4
LC000009F0:
	.long	L00000347
	.long	L000001F0
	.long	L000002F0
	.long	L000001F0
	.long	L000001F0
	.long	L000001DA
	.long	L000001F0
	.long	L000001F0
	.long	L000001F0
	.long	L00000220
	.long	L000001F0
	.long	L000001F0
	.long	L000001F0
	.long	L000001F0
	.long	L000001F0
	.long	L000001F0
	.long	L000001F0
	.long	L000002B3
	.long	L000003C0
	.zero	4
# ----------------------
