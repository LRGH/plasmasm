	.file	"deflate.c"
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.section       .rodata
	.align 32
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 68
# ----------------------
	.section       .data.rel.ro.local,"wa",@progbits
	.local	configuration_table
	.type	configuration_table, @object
configuration_table:
	.zero	8
	.long	deflate_stored
	.long	262148
	.long	262152
	.long	deflate_fast
	.long	327684
	.long	524304
	.long	deflate_fast
	.long	393220
	.long	2097184
	.long	deflate_fast
	.long	262148
	.long	1048592
	.long	deflate_slow
	.long	1048584
	.long	2097184
	.long	deflate_slow
	.long	1048584
	.long	8388736
	.long	deflate_slow
	.long	2097160
	.long	16777344
	.long	deflate_slow
	.long	8388640
	.long	67109122
	.long	deflate_slow
	.long	16908320
	.long	268435714
	.long	deflate_slow
	.size	configuration_table, 120
# ----------------------
	.text
	.local	longest_match
	.type	longest_match, @function
longest_match:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	subl      $44, %esp
	movl      108(%eax), %ecx
	movl      56(%eax), %esi
	movl      %edx, (%esp)
	movl      124(%eax), %ebp
	movl      %eax, 24(%esp)
	movl      120(%eax), %eax
	movl      %ecx, %edx
	addl      %esi, %ecx
	movl      %ecx, 28(%esp)
	movl      144(%edi), %ecx
	movl      44(%edi), %edi
	movl      %eax, 16(%esp)
	movl      $0, 4(%esp)
	movl      %ecx, 32(%esp)
	leal      -262(%edi), %ecx
	cmpl      %ecx, %edx
	jbe       .L00000056
.L00000046:
	movl      %edx, %ecx
	addl      $262, %ecx
	movl      %ecx, 4(%esp)
	subl      %edi, 4(%esp)
.L00000056:
	movl      24(%esp), %edi
	movl      64(%edi), %ecx
	movl      %ecx, 8(%esp)
	movl      52(%edi), %ecx
	movl      28(%esp), %edi
	movl      %ecx, 12(%esp)
	leal      258(%esi,%edx), %ecx
	movzbl    -1(%edi,%eax), %edx
	movl      %ecx, 40(%esp)
	movl      16(%esp), %ecx
	movb      %dl, 22(%esp)
	movzbl    (%edi,%eax), %edx
	movl      %ebp, %edi
	shrl      $2, %edi
	movb      %dl, 21(%esp)
	movl      24(%esp), %edx
	cmpl      140(%edx), %eax
	movl      116(%edx), %eax
	cmovae    %edi, %ebp
	movl      32(%esp), %edi
	movl      %eax, 36(%esp)
	cmpl      %eax, %edi
	cmova     %eax, %edi
	movl      %edi, 32(%esp)
	jmp       .L000000DD
.L000000B4:
	.p2align 3
.L000000B8:
	movl      (%esp), %edx
	movl      8(%esp), %eax
	andl      12(%esp), %edx
	movzwl    (%eax,%edx,2), %eax
	cmpl      %eax, 4(%esp)
	movl      %eax, (%esp)
	jae       .L000001F0
.L000000D4:
	subl      $1, %ebp
	je        .L000001F0
.L000000DD:
	movl      (%esp), %eax
	movl      %ecx, %edi
	addl      %esi, %eax
	movzbl    (%eax,%ecx), %edx
	cmpb      21(%esp), %dl
	movb      %dl, 16(%esp)
	jne       .L000000B8
.L000000F2:
	movzbl    -1(%eax,%ecx), %edx
	cmpb      22(%esp), %dl
	movb      %dl, 23(%esp)
	jne       .L000000B8
.L00000101:
	movl      28(%esp), %edx
	movzbl    (%edx), %edx
	cmpb      %dl, (%eax)
	jne       .L000000B8
.L0000010C:
	movl      28(%esp), %edx
	movzbl    1(%edx), %edx
	cmpb      %dl, 1(%eax)
	jne       .L000000B8
.L00000119:
	movl      28(%esp), %edi
	addl      $2, %edi
	movl      %edi, %edx
	leal      2(%eax), %edi
	movl      %edx, %eax
	jmp       .L00000191
.L00000129:
	.p2align 4
.L00000130:
	movzbl    2(%edi), %edx
	cmpb      %dl, 2(%eax)
	jne       .L00000241
.L0000013D:
	movzbl    3(%edi), %edx
	cmpb      %dl, 3(%eax)
	jne       .L00000239
.L0000014A:
	movzbl    4(%edi), %edx
	cmpb      %dl, 4(%eax)
	jne       .L00000231
.L00000157:
	movzbl    5(%edi), %edx
	cmpb      %dl, 5(%eax)
	jne       .L00000229
.L00000164:
	movzbl    6(%edi), %edx
	cmpb      %dl, 6(%eax)
	jne       .L00000221
.L00000171:
	movzbl    7(%edi), %edx
	cmpb      %dl, 7(%eax)
	jne       .L00000219
.L0000017E:
	addl      $8, %edi
	addl      $8, %eax
	movzbl    (%edi), %edx
	cmpb      %dl, (%eax)
	jne       .L0000019D
.L0000018B:
	cmpl      %eax, 40(%esp)
	jbe       .L0000019D
.L00000191:
	movzbl    1(%edi), %edx
	cmpb      %dl, 1(%eax)
	je        .L00000130
.L0000019A:
	addl      $1, %eax
.L0000019D:
	movl      40(%esp), %edx
	subl      %edx, %eax
	leal      258(%eax), %edi
	movl      %edx, %eax
	subl      $258, %eax
	cmpl      %edi, %ecx
	movl      %eax, 28(%esp)
	jge       .L00000200
.L000001B8:
	movl      24(%esp), %eax
	movl      (%esp), %ecx
	cmpl      %edi, 32(%esp)
	movl      %ecx, 112(%eax)
	jle       .L000001F0
.L000001C8:
	movl      28(%esp), %eax
	movl      %edi, %ecx
	movzbl    -1(%eax,%edi), %eax
	movb      %al, 22(%esp)
	movl      40(%esp), %eax
	movzbl    -258(%eax,%edi), %eax
	movb      %al, 21(%esp)
	jmp       .L000000B8
.L000001EC:
	.p2align 3
.L000001F0:
	movl      36(%esp), %eax
	cmpl      %eax, %edi
	cmovbe    %edi, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000200:
	movzbl    16(%esp), %eax
	movl      %ecx, %edi
	movb      %al, 21(%esp)
	movzbl    23(%esp), %eax
	movb      %al, 22(%esp)
	jmp       .L000000B8
.L00000219:
	addl      $7, %eax
	jmp       .L0000019D
.L00000221:
	addl      $6, %eax
	jmp       .L0000019D
.L00000229:
	addl      $5, %eax
	jmp       .L0000019D
.L00000231:
	addl      $4, %eax
	jmp       .L0000019D
.L00000239:
	addl      $3, %eax
	jmp       .L0000019D
.L00000241:
	addl      $2, %eax
	jmp       .L0000019D
	.size	longest_match, .-longest_match
# ----------------------
.L00000249:
	.p2align 4
# ----------------------
	.local	fill_window
	.type	fill_window, @function
fill_window:
	pushl     %ebp
	movl      %eax, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      44(%eax), %eax
	call      __x86.get_pc_thunk.bx
.L00000261:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      116(%ebp), %ecx
	leal      (%eax,%eax), %esi
	movl      %eax, %edx
	movl      %eax, 40(%esp)
	subl      $262, %eax
	movl      %esi, 44(%esp)
	movl      %eax, 36(%esp)
.L00000280:
	movl      60(%ebp), %edi
	movl      108(%ebp), %eax
	addl      36(%esp), %edx
	subl      %ecx, %edi
	subl      %eax, %edi
	cmpl      %edx, %eax
	jae       .L00000408
.L00000296:
	movl      (%ebp), %esi
	movl      4(%esi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, 12(%esp)
	je        .L000004B8
.L000002A8:
	movl      56(%ebp), %edx
	cmpl      12(%esp), %edi
	movl      %edx, 16(%esp)
	movl      116(%ebp), %edx
	jae       .L000003B8
.L000002BC:
	testl     %edi, %edi
	jne       .L00000584
.L000002C4:
	xorl      %eax, %eax
.L000002C6:
	movl      5812(%ebp), %esi
	addl      %edx, %eax
	movl      %eax, 20(%esp)
	movl      %eax, 116(%ebp)
	addl      %esi, %eax
	cmpl      $2, %eax
	jbe       .L0000038D
.L000002E0:
	movl      108(%ebp), %edx
	movl      56(%ebp), %eax
	movl      88(%ebp), %edi
	movl      %esi, 16(%esp)
	subl      %esi, %edx
	movl      %eax, %ecx
	movl      %edi, 24(%esp)
	movl      84(%ebp), %edi
	movl      %eax, 32(%esp)
	movzbl    (%eax,%edx), %eax
	movl      %edx, 12(%esp)
	movl      %edi, 28(%esp)
	movl      %eax, 72(%ebp)
	movzbl    1(%ecx,%edx), %edi
	movzbl    24(%esp), %ecx
	sall      %cl, %eax
	xorl      %eax, %edi
	andl      28(%esp), %edi
	movl      %edi, 72(%ebp)
	jmp       .L00000385
.L00000322:
	.p2align 3
.L00000328:
	movl      12(%esp), %esi
	movl      32(%esp), %edx
	movzbl    24(%esp), %ecx
	movl      68(%ebp), %eax
	movzbl    2(%edx,%esi), %edx
	sall      %cl, %edi
	movl      64(%ebp), %ecx
	xorl      %edi, %edx
	movl      52(%ebp), %edi
	andl      28(%esp), %edx
	leal      (%eax,%edx,2), %eax
	andl      %esi, %edi
	movzwl    (%eax), %esi
	movl      %edx, 72(%ebp)
	movw      %si, (%ecx,%edi,2)
	movzwl    12(%esp), %ecx
	movl      16(%esp), %esi
	addl      $1, 12(%esp)
	movw      %cx, (%eax)
	movl      20(%esp), %eax
	subl      $1, %esi
	movl      %esi, 5812(%ebp)
	addl      %esi, %eax
	cmpl      $2, %eax
	jbe       .L0000038D
.L0000037F:
	movl      %edx, %edi
	movl      %esi, 16(%esp)
.L00000385:
	movl      16(%esp), %edx
	testl     %edx, %edx
	jne       .L00000328
.L0000038D:
	cmpl      $261, 20(%esp)
	ja        .L000004B8
.L0000039B:
	movl      (%ebp), %eax
	movl      4(%eax), %eax
	testl     %eax, %eax
	je        .L000004B8
.L000003A9:
	movl      44(%ebp), %edx
	movl      20(%esp), %ecx
	jmp       .L00000280
.L000003B5:
	.p2align 3
.L000003B8:
	xorl      %ecx, %ecx
.L000003BA:
	movl      16(%esp), %edi
	addl      %edx, %eax
	movl      12(%esp), %edx
	movl      %ecx, 4(%esi)
	addl      %eax, %edi
	movl      (%esi), %eax
	movl      %edx, 8(%esp)
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
.L000003DB:
	movl      28(%esi), %eax
	movl      24(%eax), %eax
	cmpl      $1, %eax
	je        .L00000508
.L000003EA:
	cmpl      $2, %eax
	je        .L00000527
.L000003F3:
	movl      12(%esp), %eax
	addl      %eax, (%esi)
	addl      %eax, 8(%esi)
	movl      116(%ebp), %edx
	jmp       .L000002C6
.L00000404:
	.p2align 3
.L00000408:
	movl      40(%esp), %esi
	movl      56(%ebp), %eax
	movl      %esi, 8(%esp)
	leal      (%eax,%esi), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L00000422:
	movl      108(%ebp), %eax
	movl      76(%ebp), %edx
	subl      %esi, 112(%ebp)
	subl      %esi, 92(%ebp)
	movl      %eax, 12(%esp)
	subl      %esi, 12(%esp)
	movl      12(%esp), %eax
	movl      %edi, 16(%esp)
	movl      %eax, 108(%ebp)
	movl      68(%ebp), %eax
	leal      (%eax,%edx,2), %eax
	.p2align 3
.L00000448:
	subl      $2, %eax
	movzwl    (%eax), %ecx
	movl      %ecx, %edi
	subl      %esi, %edi
	cmpl      %ecx, %esi
	movl      $0, %ecx
	cmova     %ecx, %edi
	subl      $1, %edx
	movw      %di, (%eax)
	jne       .L00000448
.L00000464:
	movl      40(%esp), %esi
	movl      44(%esp), %eax
	addl      64(%ebp), %eax
	movl      %esi, %edx
	.p2align 3
.L00000478:
	subl      $2, %eax
	movzwl    (%eax), %ecx
	movl      %ecx, %edi
	subl      %esi, %edi
	cmpl      %ecx, %esi
	movl      $0, %ecx
	cmova     %ecx, %edi
	subl      $1, %edx
	movw      %di, (%eax)
	jne       .L00000478
.L00000494:
	movl      (%ebp), %esi
	movl      16(%esp), %edi
	addl      40(%esp), %edi
	movl      12(%esp), %eax
	movl      4(%esi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, 12(%esp)
	jne       .L000002A8
.L000004B2:
	.p2align 3
.L000004B8:
	movl      5824(%ebp), %eax
	movl      60(%ebp), %edx
	cmpl      %edx, %eax
	jae       .L00000500
.L000004C5:
	movl      116(%ebp), %esi
	addl      108(%ebp), %esi
	cmpl      %esi, %eax
	jae       .L00000546
.L000004CF:
	movl      56(%ebp), %eax
	subl      %esi, %edx
	movl      $258, %edi
	cmpl      $258, %edx
	cmovbe    %edx, %edi
	movl      %edi, 8(%esp)
	addl      %esi, %eax
	addl      %edi, %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset@PLT
.L000004FA:
	movl      %esi, 5824(%ebp)
.L00000500:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000508:
	movl      12(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, 8(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      adler32@PLT
.L0000051F:
	movl      %eax, 48(%esi)
	jmp       .L000003F3
.L00000527:
	movl      12(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, 8(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L0000053E:
	movl      %eax, 48(%esi)
	jmp       .L000003F3
.L00000546:
	leal      258(%esi), %ecx
	cmpl      %ecx, %eax
	jae       .L00000500
.L00000550:
	subl      %eax, %esi
	subl      %eax, %edx
	addl      $258, %esi
	cmpl      %edx, %esi
	cmova     %edx, %esi
	addl      56(%ebp), %eax
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset@PLT
.L00000576:
	addl      %esi, 5824(%ebp)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000584:
	movl      12(%esp), %ecx
	movl      %edi, 12(%esp)
	subl      %edi, %ecx
	jmp       .L000003BA
	.size	fill_window, .-fill_window
# ----------------------
.L00000593:
	.p2align 4
# ----------------------
	.local	deflate_fast
	.type	deflate_fast, @function
deflate_fast:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000005A9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $76, %esp
	movl      96(%esp), %ebp
.L000005B6:
	movl      116(%ebp), %edi
	.p2align 4
.L000005C0:
	cmpl      $261, %edi
	jbe       .L000008A0
.L000005CC:
	movl      108(%ebp), %esi
	movl      56(%ebp), %eax
	movl      88(%ebp), %ecx
	movl      72(%ebp), %edx
	movl      52(%ebp), %edi
	movzbl    2(%eax,%esi), %eax
	sall      %cl, %edx
	movl      64(%ebp), %ecx
	andl      %esi, %edi
	xorl      %edx, %eax
	movl      68(%ebp), %edx
	andl      84(%ebp), %eax
	movl      %eax, 72(%ebp)
	leal      (%edx,%eax,2), %eax
	movzwl    (%eax), %edx
	testl     %edx, %edx
	movw      %dx, (%ecx,%edi,2)
	movw      %si, (%eax)
	je        .L00000617
.L00000603:
	movl      44(%ebp), %eax
	movl      %esi, %ecx
	subl      %edx, %ecx
	subl      $262, %eax
	cmpl      %eax, %ecx
	jbe       .L000008F8
.L00000617:
	movl      96(%ebp), %eax
.L0000061A:
	cmpl      $2, %eax
	jbe       .L00000800
.L00000623:
	movl      5792(%ebp), %edx
	subl      $3, %eax
	movl      5796(%ebp), %ecx
	subw      112(%ebp), %si
	leal      1(%edx), %edi
	movw      %si, (%ecx,%edx,2)
	movl      5784(%ebp), %ecx
	subl      $1, %esi
	movl      %edi, 5792(%ebp)
	movb      %al, (%ecx,%edx)
	movzbl    %al, %eax
	movzbl    _length_code@GOTOFF(%ebx,%eax), %eax
	addw      $1, 1176(%ebp,%eax,4)
	cmpw      $255, %si
	ja        .L000008E0
.L0000066E:
	movzwl    %si, %esi
	movzbl    _dist_code@GOTOFF(%ebx,%esi), %eax
.L00000679:
	addw      $1, 2440(%ebp,%eax,4)
	movl      5788(%ebp), %eax
	movl      116(%ebp), %ecx
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	movl      %ecx, 24(%esp)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, 28(%esp)
	movl      96(%ebp), %eax
	subl      %eax, 24(%esp)
	movl      24(%esp), %edi
	cmpl      128(%ebp), %eax
	movl      %eax, 56(%esp)
	movl      %edi, 116(%ebp)
	ja        .L00000868
.L000006C0:
	cmpl      $2, %edi
	jbe       .L00000868
.L000006C9:
	movl      64(%ebp), %ecx
	leal      -1(%eax), %esi
	movl      108(%ebp), %eax
	movl      %esi, 96(%ebp)
	movl      72(%ebp), %edi
	movl      %esi, 20(%esp)
	movl      %ecx, 32(%esp)
	movl      52(%ebp), %ecx
	movl      %eax, 60(%esp)
	leal      1(%eax), %edx
	movl      %ebp, %eax
	movl      %ebp, 96(%esp)
	movl      %ecx, 36(%esp)
	movl      68(%ebp), %ecx
	movl      %ecx, 40(%esp)
	movl      56(%ebp), %ecx
	movl      %ecx, 44(%esp)
	movl      88(%ebp), %ecx
	movl      %ecx, 48(%esp)
	movl      84(%ebp), %ecx
	movl      %ecx, 52(%esp)
	jmp       .L00000722
.L00000712:
	.p2align 3
.L00000718:
	movl      %eax, %edi
	movl      96(%esp), %eax
	movl      %esi, 20(%esp)
.L00000722:
	movl      %edx, 108(%eax)
	movl      44(%esp), %eax
	movzbl    48(%esp), %ecx
	movl      32(%esp), %esi
	movzbl    2(%eax,%edx), %eax
	sall      %cl, %edi
	movl      96(%esp), %ecx
	xorl      %edi, %eax
	movl      36(%esp), %edi
	andl      52(%esp), %eax
	movl      %eax, 72(%ecx)
	movl      40(%esp), %ecx
	andl      %edx, %edi
	leal      (%ecx,%eax,2), %ecx
	movzwl    (%ecx), %ebp
	movw      %bp, (%esi,%edi,2)
	movl      20(%esp), %esi
	movl      96(%esp), %edi
	movw      %dx, (%ecx)
	addl      $1, %edx
	subl      $1, %esi
	testl     %esi, %esi
	movl      %esi, 96(%edi)
	jne       .L00000718
.L00000772:
	movl      60(%esp), %edx
	movl      %edi, %ebp
	addl      56(%esp), %edx
	movl      %edx, 108(%edi)
	movl      24(%esp), %edi
	.p2align 3
.L00000788:
	movl      28(%esp), %eax
	testl     %eax, %eax
	je        .L000005C0
.L00000794:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L000007A4
.L0000079F:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L000007A4:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L000007BC:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L000007D0:
	movl      20(%edi), %eax
	movl      16(%esi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L0000090A
.L000007E3:
	movl      (%ebp), %eax
	movl      16(%eax), %esi
	testl     %esi, %esi
	jne       .L000005B6
.L000007F1:
	addl      $76, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000007FB:
	.p2align 3
.L00000800:
	movl      56(%ebp), %eax
	movl      5796(%ebp), %ecx
	movzbl    (%eax,%esi), %edx
	xorl      %esi, %esi
	movl      5792(%ebp), %eax
	movw      %si, (%ecx,%eax,2)
	movl      5784(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 5792(%ebp)
	movb      %dl, (%ecx,%eax)
	addw      $1, 148(%ebp,%edx,4)
	movl      5788(%ebp), %eax
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, 28(%esp)
	movl      116(%ebp), %eax
	leal      -1(%eax), %edi
	movl      108(%ebp), %eax
	movl      %edi, 116(%ebp)
	leal      1(%eax), %edx
	movl      %edx, 108(%ebp)
	jmp       .L00000788
.L00000864:
	.p2align 3
.L00000868:
	movl      56(%ebp), %eax
	movl      56(%esp), %edx
	addl      108(%ebp), %edx
	movl      $0, 96(%ebp)
	movl      88(%ebp), %ecx
	movl      24(%esp), %edi
	movl      %edx, 108(%ebp)
	movzbl    (%eax,%edx), %esi
	movl      %esi, 72(%ebp)
	movzbl    1(%eax,%edx), %eax
	sall      %cl, %esi
	xorl      %esi, %eax
	andl      84(%ebp), %eax
	movl      %eax, 72(%ebp)
	jmp       .L00000788
.L0000089E:
	.p2align 3
.L000008A0:
	movl      %ebp, %eax
	call      fill_window
.L000008A7:
	movl      116(%ebp), %eax
	cmpl      $261, %eax
	ja        .L000005CC
.L000008B5:
	movl      100(%esp), %edi
	testl     %edi, %edi
	je        .L000007F1
.L000008C1:
	testl     %eax, %eax
	je        .L00000948
.L000008C9:
	cmpl      $2, %eax
	ja        .L000005CC
.L000008D2:
	movl      96(%ebp), %eax
	movl      108(%ebp), %esi
	jmp       .L0000061A
.L000008DD:
	.p2align 3
.L000008E0:
	shrw      $7, %si
	movzwl    %si, %esi
	movzbl    _dist_code@GOTOFF+256(%ebx,%esi), %eax
	jmp       .L00000679
.L000008F4:
	.p2align 3
.L000008F8:
	movl      %ebp, %eax
	call      longest_match
.L000008FF:
	movl      108(%ebp), %esi
	movl      %eax, 96(%ebp)
	jmp       .L0000061A
.L0000090A:
	movl      12(%esi), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00000924:
	movl      20(%esp), %edx
	addl      %edx, 12(%esi)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%esi)
	subl      %edx, 16(%esi)
	subl      %edx, 20(%edi)
	jne       .L000007E3
.L0000093D:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L000007E3
.L00000948:
	movl      108(%ebp), %edx
	movl      $2, %eax
	cmpl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $4, 100(%esp)
	movl      %eax, 5812(%ebp)
	je        .L000009D3
.L00000963:
	movl      5792(%ebp), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L000009CB
.L00000972:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00000982
.L0000097D:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L00000982:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L0000099A:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %esi
	movl      %eax, 92(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L000009AE:
	movl      20(%esi), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00000A32
.L000009BD:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
.L000009CB:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000009D3:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L000009E3
.L000009DE:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L000009E3:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $1, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L000009FB:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %esi
	movl      %eax, 92(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00000A0F:
	movl      20(%esi), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00000A70
.L00000A1E:
	movl      (%ebp), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $76, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000A32:
	movl      12(%edi), %eax
	movl      16(%esi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00000A4C:
	movl      20(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%esi)
	addl      %edx, 20(%edi)
	subl      %edx, 16(%edi)
	subl      %edx, 20(%esi)
	jne       .L000009BD
.L00000A65:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L000009BD
.L00000A70:
	movl      12(%edi), %eax
	movl      16(%esi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00000A8A:
	movl      20(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%esi)
	addl      %edx, 20(%edi)
	subl      %edx, 16(%edi)
	subl      %edx, 20(%esi)
	jne       .L00000A1E
.L00000AA3:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00000A1E
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L00000AAE:
	.p2align 3
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000AB9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $60, %esp
	movl      80(%esp), %ebp
.L00000AC6:
	movl      116(%ebp), %edx
	.p2align 4
.L00000AD0:
	cmpl      $261, %edx
	jbe       .L00000D70
.L00000ADC:
	movl      108(%ebp), %esi
	movl      56(%ebp), %eax
	movl      88(%ebp), %ecx
	movl      72(%ebp), %edx
	movl      52(%ebp), %edi
	movzbl    2(%eax,%esi), %eax
	sall      %cl, %edx
	movl      64(%ebp), %ecx
	andl      %esi, %edi
	xorl      %edx, %eax
	movl      68(%ebp), %edx
	andl      84(%ebp), %eax
	movl      %eax, 72(%ebp)
	leal      (%edx,%eax,2), %eax
	movzwl    (%eax), %edx
	movw      %dx, (%ecx,%edi,2)
	movl      %edx, %ecx
	movl      96(%ebp), %edx
	movw      %si, (%eax)
	movl      112(%ebp), %eax
	testl     %ecx, %ecx
	movl      $2, 96(%ebp)
	movl      %edx, 120(%ebp)
	movl      %eax, 100(%ebp)
	je        .L00000B44
.L00000B28:
	cmpl      128(%ebp), %edx
	jae       .L00000B44
.L00000B30:
	movl      44(%ebp), %eax
	movl      %esi, %edi
	subl      %ecx, %edi
	subl      $262, %eax
	cmpl      %eax, %edi
	jbe       .L00000E90
.L00000B44:
	movl      $2, %eax
.L00000B49:
	cmpl      $2, %edx
	jbe       .L00000CF8
.L00000B52:
	cmpl      %eax, %edx
	jb        .L00000CF8
.L00000B5A:
	movl      116(%ebp), %eax
	movl      %esi, %ecx
	subl      $3, %edx
	subw      100(%ebp), %cx
	leal      -3(%esi,%eax), %eax
	movl      5796(%ebp), %esi
	movl      %eax, 24(%esp)
	movl      5792(%ebp), %eax
	leal      -1(%ecx), %edi
	subl      $2, %ecx
	movw      %di, (%esi,%eax,2)
	movl      5784(%ebp), %esi
	leal      1(%eax), %edi
	movl      %edi, 5792(%ebp)
	movb      %dl, (%esi,%eax)
	movzbl    %dl, %edx
	movzbl    _length_code@GOTOFF(%ebx,%edx), %eax
	addw      $1, 1176(%ebp,%eax,4)
	cmpw      $255, %cx
	ja        .L00000DE8
.L00000BB5:
	movzwl    %cx, %ecx
	movzbl    _dist_code@GOTOFF(%ebx,%ecx), %eax
.L00000BC0:
	addw      $1, 2440(%ebp,%eax,4)
	movl      5792(%ebp), %eax
	movl      116(%ebp), %ecx
	movl      %eax, 32(%esp)
	movl      5788(%ebp), %eax
	leal      1(%ecx), %edi
	movl      %edi, 28(%esp)
	subl      $1, %eax
	movl      %eax, 36(%esp)
	movl      120(%ebp), %eax
	subl      %eax, 28(%esp)
	movl      28(%esp), %edi
	leal      -2(%eax), %esi
	movl      %eax, 40(%esp)
	movl      108(%ebp), %eax
	movl      %edi, 116(%ebp)
	movl      %esi, 120(%ebp)
	movl      %eax, 44(%esp)
	addl      $1, %eax
	.p2align 3
.L00000C10:
	cmpl      24(%esp), %eax
	movl      %esi, 20(%esp)
	movl      %eax, 108(%ebp)
	ja        .L00000C4D
.L00000C1D:
	movl      56(%ebp), %edx
	movl      88(%ebp), %ecx
	movl      72(%ebp), %edi
	movzbl    2(%edx,%eax), %edx
	sall      %cl, %edi
	movl      68(%ebp), %ecx
	xorl      %edi, %edx
	movl      52(%ebp), %edi
	andl      84(%ebp), %edx
	movl      %edx, 72(%ebp)
	leal      (%ecx,%edx,2), %edx
	movl      64(%ebp), %ecx
	movzwl    (%edx), %esi
	andl      %eax, %edi
	movw      %si, (%ecx,%edi,2)
	movw      %ax, (%edx)
.L00000C4D:
	movl      20(%esp), %esi
	addl      $1, %eax
	subl      $1, %esi
	testl     %esi, %esi
	movl      %esi, 120(%ebp)
	jne       .L00000C10
.L00000C5E:
	movl      40(%esp), %eax
	movl      44(%esp), %ecx
	movl      36(%esp), %edi
	cmpl      %edi, 32(%esp)
	movl      $0, 104(%ebp)
	movl      28(%esp), %edx
	leal      -1(%eax,%ecx), %eax
	movl      $2, 96(%ebp)
	movl      %eax, 108(%ebp)
	jne       .L00000AD0
.L00000C8D:
	movl      92(%ebp), %edx
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00000C9D
.L00000C98:
	movl      56(%ebp), %ecx
	addl      %edx, %ecx
.L00000C9D:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L00000CB5:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00000CC9:
	movl      20(%edi), %eax
	movl      16(%esi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00000EBA
.L00000CDC:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L00000AC6
.L00000CEA:
	xorl      %eax, %eax
.L00000CEC:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000CF4:
	.p2align 3
.L00000CF8:
	movl      104(%ebp), %edi
	testl     %edi, %edi
	je        .L00000DC8
.L00000D03:
	movl      56(%ebp), %eax
	movl      5796(%ebp), %ecx
	movzbl    -1(%eax,%esi), %edx
	xorl      %esi, %esi
	movl      5792(%ebp), %eax
	movw      %si, (%ecx,%eax,2)
	movl      5784(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 5792(%ebp)
	movb      %dl, (%ecx,%eax)
	addw      $1, 148(%ebp,%edx,4)
	movl      5788(%ebp), %eax
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	je        .L00000E00
.L00000D4D:
	movl      116(%ebp), %eax
	addl      $1, 108(%ebp)
	leal      -1(%eax), %edx
	movl      (%ebp), %eax
	movl      %edx, 116(%ebp)
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L00000CEA
.L00000D64:
	cmpl      $261, %edx
	ja        .L00000ADC
.L00000D70:
	movl      %ebp, %eax
	call      fill_window
.L00000D77:
	movl      116(%ebp), %eax
	cmpl      $261, %eax
	ja        .L00000ADC
.L00000D85:
	movl      84(%esp), %edx
	testl     %edx, %edx
	je        .L00000CEA
.L00000D91:
	testl     %eax, %eax
	je        .L00000F2B
.L00000D99:
	cmpl      $2, %eax
	ja        .L00000ADC
.L00000DA2:
	movl      96(%ebp), %edx
	movl      112(%ebp), %eax
	movl      $2, 96(%ebp)
	movl      108(%ebp), %esi
	movl      %edx, 120(%ebp)
	movl      %eax, 100(%ebp)
	movl      $2, %eax
	jmp       .L00000B49
.L00000DC2:
	.p2align 3
.L00000DC8:
	movl      116(%ebp), %eax
	addl      $1, %esi
	movl      $1, 104(%ebp)
	movl      %esi, 108(%ebp)
	leal      -1(%eax), %edx
	movl      %edx, 116(%ebp)
	jmp       .L00000AD0
.L00000DE3:
	.p2align 3
.L00000DE8:
	shrw      $7, %cx
	movzwl    %cx, %ecx
	movzbl    _dist_code@GOTOFF+256(%ebx,%ecx), %eax
	jmp       .L00000BC0
.L00000DFC:
	.p2align 3
.L00000E00:
	movl      92(%ebp), %edx
	xorl      %ecx, %ecx
	movl      108(%ebp), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00000E13
.L00000E0E:
	movl      56(%ebp), %ecx
	addl      %edx, %ecx
.L00000E13:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L00000E2B:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00000E3F:
	movl      20(%edi), %eax
	movl      16(%esi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	je        .L00000D4D
.L00000E52:
	movl      12(%esi), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00000E6C:
	movl      20(%esp), %edx
	addl      %edx, 12(%esi)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%esi)
	subl      %edx, 16(%esi)
	subl      %edx, 20(%edi)
	jne       .L00000D4D
.L00000E85:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L00000D4D
.L00000E90:
	movl      %ecx, %edx
	movl      %ebp, %eax
	call      longest_match
.L00000E99:
	cmpl      $5, %eax
	movl      %eax, 96(%ebp)
	ja        .L00000EAF
.L00000EA1:
	cmpl      $1, 136(%ebp)
	je        .L00000EF8
.L00000EAA:
	cmpl      $3, %eax
	je        .L00000F0F
.L00000EAF:
	movl      120(%ebp), %edx
	movl      108(%ebp), %esi
	jmp       .L00000B49
.L00000EBA:
	movl      12(%esi), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00000ED4:
	movl      20(%esp), %edx
	addl      %edx, 12(%esi)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%esi)
	subl      %edx, 16(%esi)
	subl      %edx, 20(%edi)
	jne       .L00000CDC
.L00000EED:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L00000CDC
.L00000EF8:
	movl      108(%ebp), %esi
.L00000EFB:
	movl      $2, 96(%ebp)
	movl      120(%ebp), %edx
	movl      $2, %eax
	jmp       .L00000B49
.L00000F0F:
	movl      108(%ebp), %esi
	movl      %esi, %eax
	subl      112(%ebp), %eax
	cmpl      $4096, %eax
	ja        .L00000EFB
.L00000F1E:
	movl      120(%ebp), %edx
	movl      $3, %eax
	jmp       .L00000B49
.L00000F2B:
	movl      104(%ebp), %edi
	testl     %edi, %edi
	jne       .L00000FCD
.L00000F36:
	movl      108(%ebp), %edx
	movl      $2, %eax
	cmpl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $4, 84(%esp)
	movl      %eax, 5812(%ebp)
	je        .L00001011
.L00000F55:
	movl      5792(%ebp), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L00000CEC
.L00000F68:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00000F78
.L00000F73:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L00000F78:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L00000F90:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %esi
	movl      %eax, 92(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00000FA4:
	movl      20(%esi), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00001070
.L00000FB7:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	addl      $60, %esp
	popl      %ebx
	movzbl    %al, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000FCD:
	movl      108(%ebp), %eax
	xorl      %esi, %esi
	movl      56(%ebp), %edx
	movl      5796(%ebp), %ecx
	movzbl    -1(%edx,%eax), %edx
	movl      5792(%ebp), %eax
	movw      %si, (%ecx,%eax,2)
	movl      5784(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 5792(%ebp)
	movb      %dl, (%ecx,%eax)
	addw      $1, 148(%ebp,%edx,4)
	movl      $0, 104(%ebp)
	jmp       .L00000F36
.L00001011:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00001021
.L0000101C:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L00001021:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $1, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L00001039:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %esi
	movl      %eax, 92(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0000104D:
	movl      20(%esi), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L000010AE
.L0000105C:
	movl      (%ebp), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $60, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001070:
	movl      12(%edi), %eax
	movl      16(%esi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L0000108A:
	movl      20(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%esi)
	addl      %edx, 20(%edi)
	subl      %edx, 16(%edi)
	subl      %edx, 20(%esi)
	jne       .L00000FB7
.L000010A3:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00000FB7
.L000010AE:
	movl      12(%edi), %eax
	movl      16(%esi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L000010C8:
	movl      20(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%esi)
	addl      %edx, 20(%edi)
	subl      %edx, 16(%edi)
	subl      %edx, 20(%esi)
	jne       .L0000105C
.L000010E1:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L0000105C
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L000010EC:
	.p2align 3
# ----------------------
	.local	deflate_stored
	.type	deflate_stored, @function
deflate_stored:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L00001100:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      12(%esi), %eax
	subl      $5, %eax
	movl      %eax, %edi
	cmpl      $65535, %eax
	movl      $65535, %eax
	cmovb     %edi, %eax
	movl      %eax, 24(%esp)
	jmp       .L0000114E
.L00001121:
	.p2align 3
.L00001128:
	movl      (%esi), %eax
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00001212
.L00001135:
	movl      108(%esi), %edx
	movl      92(%esi), %eax
.L0000113B:
	movl      44(%esi), %edi
	subl      %eax, %edx
	leal      -262(%edi), %ecx
	cmpl      %ecx, %edx
	jae       .L000012C0
.L0000114E:
	movl      116(%esi), %edx
	cmpl      $1, %edx
	jbe       .L00001220
.L0000115A:
	addl      108(%esi), %edx
	movl      92(%esi), %eax
	movl      24(%esp), %edi
	testl     %edx, %edx
	movl      %edx, 108(%esi)
	movl      $0, 116(%esi)
	leal      (%edi,%eax), %ecx
	je        .L00001179
.L00001175:
	cmpl      %ecx, %edx
	jb        .L0000113B
.L00001179:
	subl      %ecx, %edx
	movl      %edx, 116(%esi)
	xorl      %edx, %edx
	movl      %ecx, 108(%esi)
	subl      %eax, %ecx
	testl     %eax, %eax
	js        .L0000118E
.L00001189:
	addl      56(%esi), %eax
	movl      %eax, %edx
.L0000118E:
	movl      %edx, 4(%esp)
	movl      %ecx, 8(%esp)
	movl      $0, 12(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_block
.L000011A6:
	movl      (%esi), %edi
	movl      108(%esi), %eax
	movl      28(%edi), %ebp
	movl      %eax, 92(%esi)
	movl      %ebp, (%esp)
	call      _tr_flush_bits
.L000011B9:
	movl      20(%ebp), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	je        .L00001128
.L000011CC:
	movl      12(%edi), %eax
	movl      16(%ebp), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L000011E6:
	movl      28(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%ebp)
	addl      %edx, 20(%edi)
	subl      %edx, 16(%edi)
	subl      %edx, 20(%ebp)
	jne       .L00001128
.L000011FF:
	movl      8(%ebp), %eax
	movl      %eax, 16(%ebp)
	movl      (%esi), %eax
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L00001135
.L00001212:
	xorl      %eax, %eax
.L00001214:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000121C:
	.p2align 3
.L00001220:
	movl      %esi, %eax
	call      fill_window
.L00001227:
	movl      116(%esi), %edx
	testl     %edx, %edx
	jne       .L0000115A
.L00001232:
	movl      68(%esp), %edi
	testl     %edi, %edi
	je        .L00001212
.L0000123A:
	cmpl      $4, 68(%esp)
	movl      $0, 5812(%esi)
	je        .L0000134F
.L0000124F:
	movl      108(%esi), %ecx
	movl      $1, %eax
	movl      92(%esi), %edx
	cmpl      %edx, %ecx
	jle       .L00001214
.L0000125E:
	subl      %edx, %ecx
	xorb      %al, %al
	testl     %edx, %edx
	js        .L0000126B
.L00001266:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L0000126B:
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $0, 12(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_block
.L00001283:
	movl      (%esi), %ebp
	movl      108(%esi), %eax
	movl      28(%ebp), %edi
	movl      %eax, 92(%esi)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001296:
	movl      20(%edi), %eax
	movl      16(%ebp), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L000013AC
.L000012A9:
	movl      (%esi), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
	jmp       .L00001214
.L000012BB:
	.p2align 3
.L000012C0:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	js        .L000012CB
.L000012C6:
	addl      56(%esi), %eax
	movl      %eax, %ecx
.L000012CB:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_block
.L000012E3:
	movl      (%esi), %edi
	movl      108(%esi), %eax
	movl      28(%edi), %ebp
	movl      %eax, 92(%esi)
	movl      %ebp, (%esp)
	call      _tr_flush_bits
.L000012F6:
	movl      20(%ebp), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00001318
.L00001305:
	movl      (%esi), %eax
	movl      16(%eax), %edx
	testl     %edx, %edx
	jne       .L0000114E
.L00001312:
	jmp       .L00001212
.L00001317:
	.p2align 3
.L00001318:
	movl      12(%edi), %eax
	movl      16(%ebp), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00001332:
	movl      28(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%ebp)
	addl      %edx, 20(%edi)
	subl      %edx, 16(%edi)
	subl      %edx, 20(%ebp)
	jne       .L00001305
.L00001347:
	movl      8(%ebp), %eax
	movl      %eax, 16(%ebp)
	jmp       .L00001305
.L0000134F:
	movl      92(%esi), %edx
	xorl      %ecx, %ecx
	movl      108(%esi), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00001362
.L0000135D:
	movl      56(%esi), %ecx
	addl      %edx, %ecx
.L00001362:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $1, 12(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_block
.L0000137A:
	movl      (%esi), %ebp
	movl      108(%esi), %eax
	movl      28(%ebp), %edi
	movl      %eax, 92(%esi)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0000138D:
	movl      20(%edi), %eax
	movl      16(%ebp), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L000013EA
.L0000139C:
	movl      (%esi), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $3, %eax
	jmp       .L00001214
.L000013AC:
	movl      12(%ebp), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 24(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L000013C6:
	movl      24(%esp), %edx
	addl      %edx, 12(%ebp)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%ebp)
	subl      %edx, 16(%ebp)
	subl      %edx, 20(%edi)
	jne       .L000012A9
.L000013DF:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L000012A9
.L000013EA:
	movl      12(%ebp), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 24(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00001404:
	movl      24(%esp), %edx
	addl      %edx, 12(%ebp)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%ebp)
	subl      %edx, 16(%ebp)
	subl      %edx, 20(%edi)
	jne       .L0000139C
.L00001419:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0000139C
	.size	deflate_stored, .-deflate_stored
# ----------------------
.L00001424:
	.p2align 4
# ----------------------
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %ecx
	call      __x86.get_pc_thunk.bx
.L00001440:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      100(%esp), %esi
	movl      104(%esp), %ebp
	testl     %ecx, %ecx
	je        .L0000166D
.L00001456:
	movl      96(%esp), %eax
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L0000166D
.L00001465:
	testl     %esi, %esi
	je        .L0000166D
.L0000146D:
	movl      24(%edi), %eax
	cmpl      $2, %eax
	movl      %eax, 52(%esp)
	je        .L0000166D
.L0000147D:
	cmpl      $1, %eax
	je        .L000015E3
.L00001486:
	movl      116(%edi), %eax
	testl     %eax, %eax
	jne       .L0000166D
.L00001491:
	movl      44(%edi), %eax
	movl      $0, 24(%edi)
	cmpl      %eax, %ebp
	jae       .L000015CE
.L000014A3:
	movl      96(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, 56(%esp)
	movl      96(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 60(%esp)
	movl      96(%esp), %eax
	movl      %ebp, 4(%eax)
	movl      %esi, (%eax)
	movl      %edi, %eax
	call      fill_window
.L000014C8:
	movl      116(%edi), %eax
	cmpl      $2, %eax
	jbe       .L0000157F
.L000014D4:
	movl      %eax, %edx
	.p2align 3
.L000014D8:
	movl      88(%edi), %ecx
	movl      108(%edi), %esi
	movl      68(%edi), %ebp
	movl      72(%edi), %eax
	movl      %ecx, 28(%esp)
	movl      56(%edi), %ecx
	movl      %edi, 20(%esp)
	movl      %ebp, 48(%esp)
	movl      %ecx, 32(%esp)
	movl      84(%edi), %ecx
	movl      %ecx, 36(%esp)
	movl      64(%edi), %ecx
	movl      %ecx, 40(%esp)
	movl      52(%edi), %ecx
	movl      %ecx, 44(%esp)
	leal      -2(%esi,%edx), %ecx
	movl      %ecx, 24(%esp)
	jmp       .L0000151A
.L00001516:
	.p2align 3
.L00001518:
	movl      %edx, %eax
.L0000151A:
	movl      32(%esp), %edx
	movzbl    28(%esp), %ecx
	movl      40(%esp), %ebp
	movzbl    2(%edx,%esi), %edx
	sall      %cl, %eax
	movl      44(%esp), %ecx
	xorl      %eax, %edx
	movl      20(%esp), %eax
	andl      36(%esp), %edx
	andl      %esi, %ecx
	movl      %edx, 72(%eax)
	movl      48(%esp), %eax
	leal      (%eax,%edx,2), %eax
	movzwl    (%eax), %edi
	movw      %di, (%ebp,%ecx,2)
	movw      %si, (%eax)
	addl      $1, %esi
	cmpl      24(%esp), %esi
	jne       .L00001518
.L0000155C:
	movl      20(%esp), %edi
	movl      %esi, 108(%edi)
	movl      %edi, %eax
	movl      $2, 116(%edi)
	call      fill_window
.L00001571:
	movl      116(%edi), %edx
	cmpl      $2, %edx
	ja        .L000014D8
.L0000157D:
	movl      %edx, %eax
.L0000157F:
	movl      108(%edi), %edx
	movl      %eax, 5812(%edi)
	movl      60(%esp), %esi
	movl      $0, 116(%edi)
	movl      $2, 120(%edi)
	addl      %eax, %edx
	movl      96(%esp), %eax
	movl      %edx, 108(%edi)
	movl      %edx, 92(%edi)
	movl      $2, 96(%edi)
	movl      $0, 104(%edi)
	movl      %esi, (%eax)
	movl      56(%esp), %esi
	movl      %esi, 4(%eax)
	movl      52(%esp), %eax
	movl      %eax, 24(%edi)
	xorl      %eax, %eax
.L000015C6:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000015CE:
	movl      52(%esp), %edx
	testl     %edx, %edx
	je        .L00001625
.L000015D6:
	movl      %ebp, %edx
	movl      %eax, %ebp
	subl      %eax, %edx
	addl      %edx, %esi
	jmp       .L000014A3
.L000015E3:
	cmpl      $42, 4(%edi)
	jne       .L0000166D
.L000015ED:
	movl      116(%edi), %edx
	testl     %edx, %edx
	jne       .L0000166D
.L000015F4:
	movl      96(%esp), %eax
	movl      %ebp, 8(%esp)
	movl      %esi, 4(%esp)
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      adler32@PLT
.L0000160B:
	movl      96(%esp), %ecx
	movl      %eax, 48(%ecx)
	movl      44(%edi), %eax
	movl      $0, 24(%edi)
	cmpl      %eax, %ebp
	jae       .L000015D6
.L00001620:
	jmp       .L000014A3
.L00001625:
	movl      76(%edi), %eax
	movl      68(%edi), %edx
	addl      $2147483647, %eax
	leal      (%eax,%eax), %ecx
	movw      $0, (%edx,%eax,2)
	movl      %ecx, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edx, (%esp)
	call      memset@PLT
.L0000164D:
	movl      44(%edi), %eax
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	movl      $0, 5812(%edi)
	jmp       .L000015D6
.L0000166D:
	movl      $-2, %eax
	jmp       .L000015C6
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
.L00001677:
	.p2align 4
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L0000168F:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %esi, %esi
	je        .L00001760
.L0000169D:
	movl      28(%esi), %edi
	testl     %edi, %edi
	je        .L00001760
.L000016A8:
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L00001760
.L000016B3:
	movl      36(%esi), %eax
	testl     %eax, %eax
	je        .L00001760
.L000016BE:
	movl      8(%edi), %eax
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $2, 44(%esi)
	movl      %eax, 16(%edi)
	movl      24(%edi), %eax
	movl      $0, 20(%edi)
	testl     %eax, %eax
	js        .L00001730
.L000016EE:
	jne       .L00001735
.L000016F0:
	movl      $113, 4(%edi)
.L000016F7:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      adler32@PLT
.L00001713:
	movl      %eax, 48(%esi)
	movl      $0, 40(%edi)
	movl      %edi, (%esp)
	call      _tr_init
.L00001725:
	xorl      %eax, %eax
.L00001727:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000172E:
	.p2align 3
.L00001730:
	negl      %eax
	movl      %eax, 24(%edi)
.L00001735:
	cmpl      $2, %eax
	movl      $42, 4(%edi)
	jne       .L000016F7
.L00001741:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32@PLT
.L0000175D:
	jmp       .L00001713
.L0000175F:
	.p2align 3
.L00001760:
	movl      $-2, %eax
	jmp       .L00001727
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
.L00001767:
	.p2align 4
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	call      __x86.get_pc_thunk.bx
.L0000177B:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      32(%esp), %esi
	movl      %esi, (%esp)
	call      deflateResetKeep@PLT
.L0000178D:
	testl     %eax, %eax
	movl      %eax, %edi
	jne       .L0000183A
.L00001797:
	movl      28(%esi), %esi
	movl      44(%esi), %eax
	movl      76(%esi), %ecx
	addl      %eax, %eax
	movl      %eax, 60(%esi)
	movl      68(%esi), %eax
	leal      2147483647(%ecx), %edx
	leal      (%edx,%edx), %ecx
	movw      $0, (%eax,%edx,2)
	movl      %ecx, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset@PLT
.L000017CB:
	movl      132(%esi), %eax
	movl      $0, 108(%esi)
	movl      $0, 92(%esi)
	movl      $0, 116(%esi)
	leal      (%eax,%eax,2), %eax
	leal      configuration_table@GOTOFF(%ebx,%eax,4), %eax
	movzwl    2(%eax), %edx
	movl      $0, 5812(%esi)
	movl      $2, 120(%esi)
	movl      $2, 96(%esi)
	movl      %edx, 128(%esi)
	movzwl    (%eax), %edx
	movl      $0, 104(%esi)
	movl      $0, 72(%esi)
	movl      %edx, 140(%esi)
	movzwl    4(%eax), %edx
	movzwl    6(%eax), %eax
	movl      %edx, 144(%esi)
	movl      %eax, 124(%esi)
.L0000183A:
	addl      $16, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	deflateReset, .-deflateReset
# ----------------------
.L00001843:
	.p2align 4
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L00001870
.L00001858:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L00001870
.L0000185F:
	cmpl      $2, 24(%eax)
	jne       .L00001870
.L00001865:
	movl      8(%esp), %edx
	movl      %edx, 28(%eax)
	xorl      %eax, %eax
	ret       
.L0000186F:
	.p2align 3
.L00001870:
	movl      $-2, %eax
	ret       
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
.L00001876:
	.p2align 4
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	pushl     %esi
	movl      8(%esp), %eax
	movl      12(%esp), %ecx
	movl      16(%esp), %edx
	testl     %eax, %eax
	je        .L000018C0
.L00001891:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L000018C0
.L00001898:
	testl     %ecx, %ecx
	je        .L000018A1
.L0000189C:
	movl      20(%eax), %esi
	movl      %esi, (%ecx)
.L000018A1:
	testl     %edx, %edx
	je        .L000018B8
.L000018A5:
	movl      5820(%eax), %eax
	movl      %eax, (%edx)
	xorl      %eax, %eax
	popl      %esi
	ret       
.L000018B1:
	.p2align 3
.L000018B8:
	xorl      %eax, %eax
	popl      %esi
	ret       
.L000018BC:
	.p2align 3
.L000018C0:
	movl      $-2, %eax
	popl      %esi
	ret       
	.size	deflatePending, .-deflatePending
# ----------------------
.L000018C7:
	.p2align 4
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	subl      $16, %esp
	movl      32(%esp), %eax
	movl      36(%esp), %ebp
	testl     %eax, %eax
	je        .L00001950
.L000018E2:
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L00001950
.L000018E9:
	movl      16(%edi), %eax
	addl      $2, %eax
	cmpl      %eax, 5796(%edi)
	jb        .L00001949
.L000018F7:
	.p2align 3
.L000018F8:
	movl      5820(%edi), %edx
	movl      $16, %esi
	movl      $1, %eax
	subl      %edx, %esi
	cmpl      %esi, %ebp
	cmovle    %ebp, %esi
	movl      %esi, %ecx
	sall      %cl, %eax
	movl      %edx, %ecx
	subl      $1, %eax
	andl      40(%esp), %eax
	sall      %cl, %eax
	orw       %ax, 5816(%edi)
	leal      (%edx,%esi), %eax
	movl      %eax, 5820(%edi)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001936:
	movl      %esi, %ecx
	sarl      %cl, 40(%esp)
	subl      %esi, %ebp
	jne       .L000018F8
.L00001940:
	xorl      %eax, %eax
.L00001942:
	addl      $16, %esp
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001949:
	movl      $-5, %eax
	jmp       .L00001942
.L00001950:
	movl      $-2, %eax
	jmp       .L00001942
	.size	deflatePrime, .-deflatePrime
# ----------------------
.L00001957:
	.p2align 4
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L00001998
.L00001968:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L00001998
.L0000196F:
	movl      8(%esp), %edx
	movl      %edx, 140(%eax)
	movl      12(%esp), %edx
	movl      %edx, 128(%eax)
	movl      16(%esp), %edx
	movl      %edx, 144(%eax)
	movl      20(%esp), %edx
	movl      %edx, 124(%eax)
	xorl      %eax, %eax
	ret       
.L00001997:
	.p2align 3
.L00001998:
	movl      $-2, %eax
	ret       
	.size	deflateTune, .-deflateTune
# ----------------------
.L0000199E:
	.p2align 3
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	subl      $8, %esp
	movl      28(%esp), %ecx
	movl      24(%esp), %esi
	leal      7(%ecx), %edi
	movl      %edi, %edx
	leal      63(%ecx), %eax
	shrl      $3, %edx
	shrl      $6, %eax
	addl      %edx, %eax
	addl      %ecx, %eax
	testl     %esi, %esi
	je        .L00001AA8
.L000019C8:
	movl      28(%esi), %esi
	testl     %esi, %esi
	je        .L00001AA8
.L000019D3:
	movl      24(%esi), %edx
	cmpl      $1, %edx
	je        .L00001A90
.L000019DF:
	cmpl      $2, %edx
	je        .L00001A00
.L000019E4:
	cmpl      $1, %edx
	sbbl      %edx, %edx
	notl      %edx
	andl      $6, %edx
.L000019EE:
	cmpl      $15, 48(%esi)
	je        .L00001A6C
.L000019F4:
	addl      $8, %esp
	popl      %esi
	leal      5(%edx,%eax), %eax
	popl      %edi
	popl      %ebp
	ret       
.L000019FF:
	.p2align 3
.L00001A00:
	movl      28(%esi), %edx
	testl     %edx, %edx
	movl      %edx, (%esp)
	je        .L00001AB8
.L00001A0E:
	movl      16(%edx), %ebp
	testl     %ebp, %ebp
	je        .L00001AC8
.L00001A19:
	movl      20(%edx), %edx
	movl      %edx, 4(%esp)
	addl      $20, %edx
.L00001A23:
	movl      (%esp), %ebp
	movl      28(%ebp), %ebp
	testl     %ebp, %ebp
	je        .L00001A3A
.L00001A2D:
	subl      %edx, %ebp
	.p2align 3
.L00001A30:
	addl      $1, %edx
	cmpb      $0, -1(%ebp,%edx)
	jne       .L00001A30
.L00001A3A:
	movl      (%esp), %ebp
	movl      36(%ebp), %ebp
	testl     %ebp, %ebp
	je        .L00001A52
.L00001A44:
	subl      %edx, %ebp
	.p2align 3
.L00001A48:
	addl      $1, %edx
	cmpb      $0, -1(%ebp,%edx)
	jne       .L00001A48
.L00001A52:
	leal      2(%edx), %ebp
	movl      %ebp, 4(%esp)
	movl      (%esp), %ebp
	movl      44(%ebp), %ebp
	testl     %ebp, %ebp
	cmovne    4(%esp), %edx
	cmpl      $15, 48(%esi)
	jne       .L000019F4
.L00001A6C:
	cmpl      $15, 80(%esi)
	jne       .L000019F4
.L00001A72:
	movl      %ecx, %eax
	movl      %ecx, %esi
	shrl      $12, %eax
	addl      $8, %esp
	addl      %edi, %eax
	shrl      $14, %esi
	addl      %esi, %eax
	shrl      $25, %ecx
	addl      %ecx, %eax
	popl      %esi
	addl      %edx, %eax
	popl      %edi
	popl      %ebp
	ret       
.L00001A8E:
	.p2align 3
.L00001A90:
	cmpl      $1, 108(%esi)
	sbbl      %edx, %edx
	andl      $-4, %edx
	addl      $10, %edx
	jmp       .L000019EE
.L00001AA1:
	.p2align 3
.L00001AA8:
	addl      $8, %esp
	addl      $11, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001AB2:
	.p2align 3
.L00001AB8:
	movl      $18, %edx
	jmp       .L000019EE
.L00001AC2:
	.p2align 3
.L00001AC8:
	movl      $18, %edx
	jmp       .L00001A23
	.size	deflateBound, .-deflateBound
# ----------------------
.L00001AD2:
	.p2align 4
# ----------------------
	.globl	deflate
	.type	deflate, @function
deflate:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ecx
	call      __x86.get_pc_thunk.bx
.L00001AF0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %ecx, %ecx
	je        .L00002971
.L00001AFE:
	movl      64(%esp), %eax
	movl      28(%eax), %ebp
	testl     %ebp, %ebp
	je        .L00002971
.L00001B0D:
	cmpl      $5, 68(%esp)
	ja        .L00002971
.L00001B18:
	movl      12(%eax), %edx
	testl     %edx, %edx
	je        .L00001CD3
.L00001B23:
	movl      (%eax), %edi
	testl     %edi, %edi
	je        .L000026F8
.L00001B2D:
	movl      4(%ebp), %eax
	cmpl      $666, %eax
	je        .L00001CC8
.L00001B3B:
	movl      64(%esp), %esi
	movl      16(%esi), %ecx
	testl     %ecx, %ecx
	je        .L00002A54
.L00001B4A:
	movl      %esi, (%ebp)
	movl      68(%esp), %edi
	cmpl      $42, %eax
	movl      40(%ebp), %esi
	movl      %edi, 40(%ebp)
	movl      %esi, 24(%esp)
	je        .L00001DA0
.L00001B64:
	cmpl      $69, %eax
	je        .L00001EA8
.L00001B6D:
	cmpl      $73, %eax
	movl      20(%ebp), %edx
	je        .L00001F80
.L00001B79:
	cmpl      $91, %eax
	je        .L000026C5
.L00001B82:
	cmpl      $103, %eax
	je        .L00002875
.L00001B8B:
	testl     %edx, %edx
	movl      64(%esp), %eax
	jne       .L00001CF0
.L00001B97:
	movl      4(%eax), %edx
	testl     %edx, %edx
	jne       .L000025F0
.L00001BA2:
	movl      68(%esp), %eax
	movl      24(%esp), %esi
	cmpl      $5, %eax
	leal      (%eax,%eax), %edx
	sete      %al
	movzbl    %al, %eax
	xorl      %ecx, %ecx
	leal      (%eax,%eax,8), %eax
	subl      %eax, %edx
	movl      %esi, %eax
	addl      %eax, %eax
	cmpl      $5, %esi
	setge     %cl
	leal      (%ecx,%ecx,8), %ecx
	subl      %ecx, %eax
	cmpl      %eax, %edx
	jg        .L00001BDB
.L00001BD0:
	cmpl      $4, 68(%esp)
	jne       .L00002606
.L00001BDB:
	movl      4(%ebp), %eax
	.p2align 3
.L00001BE0:
	movl      116(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L00001D37
.L00001BEB:
	movl      68(%esp), %edx
	testl     %edx, %edx
	je        .L00001D95
.L00001BF7:
	cmpl      $666, %eax
	jne       .L00001D37
.L00001C02:
	.p2align 3
.L00001C08:
	cmpl      $4, 68(%esp)
	jne       .L00001D95
.L00001C13:
	movl      24(%ebp), %eax
	testl     %eax, %eax
	jle       .L00002D9F
.L00001C1E:
	cmpl      $2, %eax
	je        .L00002B01
.L00001C27:
	movl      64(%esp), %eax
	movl      8(%ebp), %edi
	movl      48(%eax), %edx
	movl      20(%ebp), %eax
	movl      %edx, %ecx
	leal      1(%eax), %esi
	shrl      $24, %edx
	movl      %esi, 20(%ebp)
	shrl      $16, %ecx
	movb      %dl, (%edi,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebp)
	movb      %cl, (%edx,%eax)
	movl      64(%esp), %eax
	movl      8(%ebp), %edi
	movzwl    48(%eax), %edx
	movl      20(%ebp), %eax
	movl      %edx, %ecx
	leal      1(%eax), %esi
	shrl      $8, %ecx
	movl      %esi, 20(%ebp)
	movb      %cl, (%edi,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebp)
	movb      %dl, (%ecx,%eax)
	movl      64(%esp), %eax
.L00001C83:
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00001C8E:
	movl      64(%esp), %edi
	movl      20(%esi), %eax
	movl      16(%edi), %edi
	cmpl      %eax, %edi
	cmova     %eax, %edi
	testl     %edi, %edi
	jne       .L000029EB
.L00001CA5:
	movl      24(%ebp), %eax
	testl     %eax, %eax
	jle       .L00001CB1
.L00001CAC:
	negl      %eax
	movl      %eax, 24(%ebp)
.L00001CB1:
	movl      20(%ebp), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	sete      %al
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001CC3:
	.p2align 3
.L00001CC8:
	cmpl      $4, 68(%esp)
	je        .L00001B3B
.L00001CD3:
	movl      z_errmsg@GOT(%ebx), %eax
	movl      64(%esp), %esi
	movl      16(%eax), %eax
	movl      %eax, 24(%esi)
	movl      $-2, %eax
	jmp       .L00001D97
.L00001CED:
	.p2align 3
.L00001CF0:
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00001CFB:
	movl      64(%esp), %eax
	movl      20(%esi), %edi
	movl      16(%eax), %eax
	cmpl      %edi, %eax
	cmovbe    %eax, %edi
	testl     %edi, %edi
	jne       .L00002307
.L00001D12:
	testl     %eax, %eax
	je        .L000022F8
.L00001D1A:
	movl      64(%esp), %eax
	movl      4(%eax), %edx
	movl      4(%ebp), %eax
	cmpl      $666, %eax
	je        .L000025FE
.L00001D2F:
	testl     %edx, %edx
	je        .L00001BE0
.L00001D37:
	movl      136(%ebp), %eax
	cmpl      $2, %eax
	je        .L00002125
.L00001D46:
	cmpl      $3, %eax
	je        .L00001FE5
.L00001D4F:
	movl      132(%ebp), %eax
	movl      68(%esp), %esi
	movl      %ebp, (%esp)
	leal      (%eax,%eax,2), %eax
	movl      %esi, 4(%esp)
	call      *configuration_table@GOTOFF+8(%ebx,%eax,4)
.L00001D6A:
	movl      %eax, %edx
	andl      $-3, %edx
	leal      -2(%eax), %ecx
.L00001D72:
	cmpl      $1, %ecx
	jbe       .L00002688
.L00001D7B:
	testl     %edx, %edx
	jne       .L00002240
.L00001D83:
	movl      64(%esp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L00001D95
.L00001D8E:
	movl      $-1, 40(%ebp)
.L00001D95:
	xorl      %eax, %eax
.L00001D97:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001D9F:
	.p2align 3
.L00001DA0:
	cmpl      $2, 24(%ebp)
	je        .L00002BA6
.L00001DAA:
	movl      48(%ebp), %eax
	sall      $12, %eax
	leal      -30720(%eax), %ecx
	xorl      %eax, %eax
	cmpl      $1, 136(%ebp)
	jle       .L000023EB
.L00001DC5:
	movl      108(%ebp), %esi
	orl       %eax, %ecx
	movl      $138547333, %edx
	movl      %ecx, %eax
	orl       $32, %eax
	movl      $113, 4(%ebp)
	testl     %esi, %esi
	movl      8(%ebp), %esi
	cmovne    %eax, %ecx
	movl      %ecx, %eax
	mull      %edx
	movl      20(%ebp), %eax
	subl      %edx, %ecx
	shrl      $1, %ecx
	addl      %edx, %ecx
	shrl      $4, %ecx
	movl      %ecx, %edx
	sall      $5, %edx
	subl      %ecx, %edx
	addl      $31, %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movl      %edx, %ecx
	shrl      $8, %ecx
	movb      %cl, (%esi,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebp)
	movb      %dl, (%ecx,%eax)
	movl      108(%ebp), %edi
	testl     %edi, %edi
	je        .L00001E79
.L00001E21:
	movl      64(%esp), %eax
	movl      8(%ebp), %edi
	movl      48(%eax), %edx
	movl      20(%ebp), %eax
	movl      %edx, %ecx
	leal      1(%eax), %esi
	shrl      $24, %edx
	movl      %esi, 20(%ebp)
	shrl      $16, %ecx
	movb      %dl, (%edi,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebp)
	movb      %cl, (%edx,%eax)
	movl      64(%esp), %eax
	movl      8(%ebp), %esi
	movzwl    48(%eax), %edx
	movl      20(%ebp), %eax
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movl      %edx, %ecx
	shrl      $8, %ecx
	movb      %cl, (%esi,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebp)
	movb      %dl, (%ecx,%eax)
.L00001E79:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      adler32@PLT
.L00001E95:
	movl      64(%esp), %edi
	movl      %eax, 48(%edi)
	movl      4(%ebp), %eax
	cmpl      $69, %eax
	jne       .L00001B6D
.L00001EA8:
	movl      28(%ebp), %eax
.L00001EAB:
	movl      16(%eax), %edx
	testl     %edx, %edx
	je        .L00002A45
.L00001EB6:
	movl      32(%ebp), %esi
	movzwl    20(%eax), %ecx
	movl      20(%ebp), %edx
	cmpl      %esi, %ecx
	movl      %edx, 20(%esp)
	jbe       .L00001F53
.L00001ECC:
	movl      %edx, %ecx
	jmp       .L00001EFA
.L00001ED0:
	leal      1(%ecx), %eax
	movl      %eax, 20(%ebp)
	movl      16(%edi), %eax
	movzbl    (%eax,%esi), %eax
	movl      8(%ebp), %esi
	movb      %al, (%esi,%ecx)
	movl      32(%ebp), %eax
	leal      1(%eax), %esi
	movl      28(%ebp), %eax
	movl      %esi, 32(%ebp)
	movzwl    20(%eax), %ecx
	cmpl      %esi, %ecx
	jbe       .L00001F50
.L00001EF7:
	movl      20(%ebp), %ecx
.L00001EFA:
	cmpl      %ecx, 12(%ebp)
	movl      %eax, %edi
	jne       .L00001ED0
.L00001F01:
	movl      44(%eax), %edi
	testl     %edi, %edi
	je        .L00001F10
.L00001F08:
	cmpl      %edx, %ecx
	ja        .L00002708
.L00001F10:
	movl      64(%esp), %eax
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00001F1F:
	movl      64(%esp), %edi
	movl      20(%esi), %eax
	movl      16(%edi), %edi
	cmpl      %eax, %edi
	cmova     %eax, %edi
	testl     %edi, %edi
	jne       .L000025B0
.L00001F36:
	movl      20(%ebp), %edx
	cmpl      12(%ebp), %edx
	movl      %edx, 20(%esp)
	je        .L00002A3D
.L00001F46:
	movl      28(%ebp), %edi
	movl      %edx, %ecx
	movl      32(%ebp), %esi
	jmp       .L00001ED0
.L00001F50:
	movl      20(%ebp), %edx
.L00001F53:
	movl      44(%eax), %esi
	testl     %esi, %esi
	je        .L00001F64
.L00001F5A:
	cmpl      %edx, 20(%esp)
	jb        .L0000297B
.L00001F64:
	movl      20(%eax), %edi
	cmpl      %edi, 32(%ebp)
	je        .L0000234D
.L00001F70:
	movl      4(%ebp), %eax
	cmpl      $73, %eax
	jne       .L00001B79
.L00001F7C:
	.p2align 3
.L00001F80:
	movl      28(%ebp), %eax
	jmp       .L0000235B
.L00001F88:
	movl      92(%ebp), %edx
	xorl      %esi, %esi
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00001F98
.L00001F93:
	movl      56(%ebp), %esi
	addl      %edx, %esi
.L00001F98:
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L00001FB0:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001FC4:
	movl      20(%edi), %eax
	movl      16(%esi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00002730
.L00001FD7:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L00001D83
.L00001FE5:
	movl      116(%ebp), %edi
	jmp       .L00002070
.L00001FED:
	.p2align 3
.L00001FF0:
	movl      $0, 96(%ebp)
.L00001FF7:
	movl      108(%ebp), %esi
	movl      56(%ebp), %eax
	testl     %esi, %esi
	jne       .L00002418
.L00002005:
	movl      $0, 20(%esp)
.L0000200D:
	movl      20(%esp), %esi
	movl      5796(%ebp), %ecx
	movzbl    (%eax,%esi), %edx
	xorl      %esi, %esi
	movl      5792(%ebp), %eax
	movw      %si, (%ecx,%eax,2)
	movl      5784(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 5792(%ebp)
	movb      %dl, (%ecx,%eax)
	addw      $1, 148(%ebp,%edx,4)
	xorl      %edx, %edx
	movl      5788(%ebp), %eax
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	movl      116(%ebp), %eax
	sete      %dl
	leal      -1(%eax), %edi
	movl      108(%ebp), %eax
	movl      %edi, 116(%ebp)
	addl      $1, %eax
	movl      %eax, 108(%ebp)
.L00002068:
	testl     %edx, %edx
	jne       .L00001F88
.L00002070:
	cmpl      $258, %edi
	ja        .L00001FF0
.L0000207C:
	movl      %ebp, %eax
	call      fill_window
.L00002083:
	movl      116(%ebp), %edi
	cmpl      $258, %edi
	ja        .L00001FF0
.L00002092:
	movl      68(%esp), %eax
	testl     %eax, %eax
	je        .L00001D83
.L0000209E:
	testl     %edi, %edi
	je        .L000021B3
.L000020A6:
	cmpl      $2, %edi
	movl      $0, 96(%ebp)
	ja        .L00001FF7
.L000020B6:
	movl      108(%ebp), %eax
	movl      %eax, 20(%esp)
	movl      56(%ebp), %eax
	jmp       .L0000200D
.L000020C5:
	.p2align 3
.L000020C8:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L000020D8
.L000020D3:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L000020D8:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L000020F0:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00002104:
	movl      20(%edi), %eax
	movl      16(%esi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00002933
.L00002117:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L00001D83
.L00002125:
	movl      116(%ebp), %eax
	jmp       .L00002195
.L0000212A:
	.p2align 3
.L00002130:
	movl      108(%ebp), %eax
	xorl      %esi, %esi
	movl      56(%ebp), %edx
	movl      $0, 96(%ebp)
	movl      5796(%ebp), %ecx
	movzbl    (%edx,%eax), %edx
	movl      5792(%ebp), %eax
	movw      %si, (%ecx,%eax,2)
	movl      5784(%ebp), %ecx
	leal      1(%eax), %esi
	movl      %esi, 5792(%ebp)
	movb      %dl, (%ecx,%eax)
	addw      $1, 148(%ebp,%edx,4)
	movl      5788(%ebp), %eax
	movl      108(%ebp), %esi
	leal      -1(%eax), %ecx
	movl      116(%ebp), %eax
	leal      1(%esi), %edx
	movl      %edx, 108(%ebp)
	subl      $1, %eax
	cmpl      %ecx, 5792(%ebp)
	movl      %eax, 116(%ebp)
	je        .L000020C8
.L00002195:
	testl     %eax, %eax
	jne       .L00002130
.L00002199:
	movl      %ebp, %eax
	call      fill_window
.L000021A0:
	movl      116(%ebp), %eax
	testl     %eax, %eax
	jne       .L00002130
.L000021A7:
	movl      68(%esp), %edi
	testl     %edi, %edi
	je        .L00001D83
.L000021B3:
	cmpl      $4, 68(%esp)
	movl      $0, 5812(%ebp)
	je        .L00002620
.L000021C8:
	movl      5792(%ebp), %eax
	testl     %eax, %eax
	je        .L00002249
.L000021D2:
	movl      92(%ebp), %edx
	xorl      %ecx, %ecx
	movl      108(%ebp), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L000021E5
.L000021E0:
	movl      56(%ebp), %ecx
	addl      %edx, %ecx
.L000021E5:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L000021FD:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %esi
	movl      %eax, 92(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00002211:
	movl      20(%esi), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L000029AD
.L00002224:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
	leal      -2(%eax), %ecx
	movl      %eax, %edx
	jmp       .L00001D72
.L0000223C:
	.p2align 3
.L00002240:
	cmpl      $1, %eax
	jne       .L00001C08
.L00002249:
	cmpl      $1, 68(%esp)
	je        .L00002E45
.L00002254:
	cmpl      $5, 68(%esp)
	je        .L000022CA
.L0000225B:
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      %ebp, (%esp)
	call      _tr_stored_block
.L0000227B:
	cmpl      $3, 68(%esp)
	jne       .L000022CA
.L00002282:
	movl      76(%ebp), %esi
	movl      68(%ebp), %eax
	leal      2147483647(%esi), %edx
	xorl      %esi, %esi
	leal      (%edx,%edx), %ecx
	movw      %si, (%eax,%edx,2)
	movl      %ecx, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset@PLT
.L000022AB:
	movl      116(%ebp), %edi
	testl     %edi, %edi
	jne       .L000022CA
.L000022B2:
	movl      $0, 108(%ebp)
	movl      $0, 92(%ebp)
	movl      $0, 5812(%ebp)
.L000022CA:
	movl      64(%esp), %eax
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L000022D9:
	movl      64(%esp), %eax
	movl      20(%esi), %edi
	movl      16(%eax), %eax
	cmpl      %edi, %eax
	cmovbe    %eax, %edi
	testl     %edi, %edi
	jne       .L00002AC0
.L000022F0:
	testl     %eax, %eax
	jne       .L00001C08
.L000022F8:
	movl      $-1, 40(%ebp)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002307:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L00002321:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L0000233C
.L00002336:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
.L0000233C:
	movl      64(%esp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L00001D1A
.L0000234B:
	jmp       .L000022F8
.L0000234D:
	movl      $0, 32(%ebp)
	movl      $73, 4(%ebp)
.L0000235B:
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002A76
.L00002366:
	movl      %edx, 20(%esp)
	movl      %edx, %ecx
	jmp       .L0000239A
.L0000236E:
	.p2align 3
.L00002370:
	movl      28(%eax), %esi
	movl      32(%ebp), %eax
	leal      1(%eax), %edi
	movl      %edi, 32(%ebp)
	movzbl    (%esi,%eax), %eax
	leal      1(%ecx), %edi
	movl      8(%ebp), %esi
	movl      %edi, 20(%ebp)
	testb     %al, %al
	movb      %al, (%esi,%ecx)
	je        .L00002698
.L00002394:
	movl      20(%ebp), %ecx
	movl      28(%ebp), %eax
.L0000239A:
	cmpl      %ecx, 12(%ebp)
	jne       .L00002370
.L0000239F:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L000023AE
.L000023A6:
	cmpl      %ecx, %edx
	jb        .L000026D0
.L000023AE:
	movl      64(%esp), %eax
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L000023BD:
	movl      64(%esp), %edi
	movl      20(%esi), %eax
	movl      16(%edi), %edi
	cmpl      %eax, %edi
	cmova     %eax, %edi
	testl     %edi, %edi
	jne       .L00002570
.L000023D4:
	movl      20(%ebp), %edx
	cmpl      12(%ebp), %edx
	movl      %edx, 20(%esp)
	je        .L00002A33
.L000023E4:
	movl      28(%ebp), %eax
	movl      %edx, %ecx
	jmp       .L00002370
.L000023EB:
	movl      132(%ebp), %edx
	cmpl      $1, %edx
	jle       .L00001DC5
.L000023FA:
	cmpl      $5, %edx
	movb      $64, %al
	jle       .L00001DC5
.L00002405:
	cmpl      $6, %edx
	movb      $128, %al
	movl      $192, %edx
	cmovne    %edx, %eax
	jmp       .L00001DC5
.L00002417:
	.p2align 3
.L00002418:
	leal      -1(%eax,%esi), %ecx
	movzbl    (%ecx), %edx
	movl      %esi, 20(%esp)
	movl      %edx, 24(%esp)
	movzbl    (%ecx), %edx
	cmpb      %dl, 1(%ecx)
	jne       .L0000200D
.L00002433:
	movzbl    2(%ecx), %edx
	cmpl      %edx, 24(%esp)
	jne       .L0000200D
.L00002441:
	movzbl    3(%ecx), %edx
	cmpl      %edx, 24(%esp)
	jne       .L0000200D
.L0000244F:
	leal      258(%eax,%esi), %edx
	addl      $3, %ecx
	movl      %edx, 20(%esp)
	movl      24(%esp), %edx
	movl      %ebp, 28(%esp)
	jmp       .L000024C8
.L00002467:
	.p2align 3
.L00002468:
	movzbl    2(%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002E8A
.L00002474:
	movzbl    3(%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002EBA
.L00002480:
	movzbl    4(%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002EAE
.L0000248C:
	movzbl    5(%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002EA2
.L00002498:
	movzbl    6(%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002E96
.L000024A4:
	movzbl    7(%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002E7E
.L000024B0:
	addl      $8, %ecx
	movzbl    (%ecx), %ebp
	cmpl      %ebp, %edx
	jne       .L00002E3C
.L000024BE:
	cmpl      20(%esp), %ecx
	jae       .L00002E3C
.L000024C8:
	movzbl    1(%ecx), %ebp
	cmpl      %ebp, %edx
	je        .L00002468
.L000024D0:
	movl      28(%esp), %ebp
	addl      $1, %ecx
.L000024D7:
	subl      20(%esp), %ecx
	leal      258(%ecx), %edx
	cmpl      %edi, %edx
	movl      %edx, 96(%ebp)
	jbe       .L00002DA9
.L000024EC:
	movl      %edi, 96(%ebp)
	movl      %edi, %edx
.L000024F1:
	movl      5792(%ebp), %eax
	movl      $1, %edi
	subl      $3, %edx
	movl      5796(%ebp), %ecx
	leal      1(%eax), %esi
	movw      %di, (%ecx,%eax,2)
	movl      5784(%ebp), %ecx
	movl      %esi, 5792(%ebp)
	movb      %dl, (%ecx,%eax)
	movzbl    %dl, %edx
	movzbl    _length_code@GOTOFF(%ebx,%edx), %eax
	xorl      %edx, %edx
	addw      $1, 1176(%ebp,%eax,4)
	movzbl    _dist_code@GOTOFF(%ebx), %eax
	addw      $1, 2440(%ebp,%eax,4)
	movl      5788(%ebp), %eax
	movl      116(%ebp), %edi
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	movl      96(%ebp), %eax
	movl      $0, 96(%ebp)
	sete      %dl
	subl      %eax, %edi
	addl      108(%ebp), %eax
	movl      %edi, 116(%ebp)
	movl      %eax, 108(%ebp)
	jmp       .L00002068
.L00002570:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L0000258A:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L000023D4
.L000025A3:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L000023D4
.L000025AE:
	.p2align 3
.L000025B0:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L000025CA:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L00001F36
.L000025E3:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00001F36
.L000025EE:
	.p2align 3
.L000025F0:
	movl      4(%ebp), %eax
	cmpl      $666, %eax
	jne       .L00001D37
.L000025FE:
	testl     %edx, %edx
	je        .L00001BE0
.L00002606:
	movl      z_errmsg@GOT(%ebx), %eax
	movl      64(%esp), %esi
	movl      28(%eax), %eax
	movl      %eax, 24(%esi)
	movl      $-5, %eax
	jmp       .L00001D97
.L00002620:
	movl      92(%ebp), %edx
	xorl      %ecx, %ecx
	movl      108(%ebp), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00002633
.L0000262E:
	movl      56(%ebp), %ecx
	addl      %edx, %ecx
.L00002633:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $1, 12(%esp)
	movl      %ebp, (%esp)
	call      _tr_flush_block
.L0000264B:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %esi
	movl      %eax, 92(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0000265F:
	movl      20(%esi), %eax
	movl      16(%edi), %edx
	cmpl      %eax, %edx
	cmova     %eax, %edx
	testl     %edx, %edx
	jne       .L00002DC0
.L00002672:
	movl      (%ebp), %eax
	movl      16(%eax), %ecx
	cmpl      $1, %ecx
	sbbl      %edx, %edx
	addl      $1, %edx
	cmpl      $1, %ecx
	sbbl      %eax, %eax
	addl      $3, %eax
.L00002688:
	movl      $666, 4(%ebp)
	jmp       .L00001D7B
.L00002694:
	.p2align 3
.L00002698:
	movl      20(%ebp), %edx
	xorl      %esi, %esi
.L0000269D:
	movl      28(%ebp), %eax
	movl      44(%eax), %edi
	testl     %edi, %edi
	je        .L000026B1
.L000026A7:
	cmpl      %edx, 20(%esp)
	jb        .L00002D70
.L000026B1:
	testl     %esi, %esi
	je        .L0000276E
.L000026B9:
	movl      4(%ebp), %eax
	cmpl      $91, %eax
	jne       .L00001B82
.L000026C5:
	movl      28(%ebp), %eax
	jmp       .L0000277F
.L000026CD:
	.p2align 3
.L000026D0:
	subl      %edx, %ecx
	movl      64(%esp), %eax
	movl      %ecx, 8(%esp)
	addl      8(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L000026EC:
	movl      64(%esp), %edi
	movl      %eax, 48(%edi)
	jmp       .L000023AE
.L000026F8:
	movl      4(%eax), %esi
	testl     %esi, %esi
	je        .L00001B2D
.L00002703:
	jmp       .L00001CD3
.L00002708:
	subl      %edx, %ecx
	movl      64(%esp), %eax
	movl      %ecx, 8(%esp)
	addl      8(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L00002724:
	movl      64(%esp), %edi
	movl      %eax, 48(%edi)
	jmp       .L00001F10
.L00002730:
	movl      12(%esi), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L0000274A:
	movl      20(%esp), %edx
	addl      %edx, 12(%esi)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%esi)
	subl      %edx, 16(%esi)
	subl      %edx, 20(%edi)
	jne       .L00001FD7
.L00002763:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L00001FD7
.L0000276E:
	movl      28(%ebp), %eax
	movl      $0, 32(%ebp)
	movl      $91, 4(%ebp)
.L0000277F:
	movl      36(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002A6A
.L0000278A:
	movl      %edx, 20(%esp)
	movl      %edx, %ecx
	jmp       .L000027C2
.L00002792:
	.p2align 3
.L00002798:
	movl      36(%eax), %esi
	movl      32(%ebp), %eax
	leal      1(%eax), %edi
	movl      %edi, 32(%ebp)
	movzbl    (%esi,%eax), %eax
	leal      1(%ecx), %edi
	movl      8(%ebp), %esi
	movl      %edi, 20(%ebp)
	testb     %al, %al
	movb      %al, (%esi,%ecx)
	je        .L00002848
.L000027BC:
	movl      20(%ebp), %ecx
	movl      28(%ebp), %eax
.L000027C2:
	cmpl      %ecx, 12(%ebp)
	jne       .L00002798
.L000027C7:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L000027D6
.L000027CE:
	cmpl      %ecx, %edx
	jb        .L000028F0
.L000027D6:
	movl      64(%esp), %eax
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L000027E5:
	movl      64(%esp), %edi
	movl      20(%esi), %eax
	movl      16(%edi), %edi
	cmpl      %eax, %edi
	cmova     %eax, %edi
	testl     %edi, %edi
	jne       .L00002810
.L000027F8:
	movl      20(%ebp), %edx
	cmpl      12(%ebp), %edx
	movl      %edx, 20(%esp)
	je        .L00002A29
.L00002808:
	movl      28(%ebp), %eax
	movl      %edx, %ecx
	jmp       .L00002798
.L0000280F:
	.p2align 3
.L00002810:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L0000282A:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L000027F8
.L0000283F:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L000027F8
.L00002847:
	.p2align 3
.L00002848:
	movl      20(%ebp), %edx
	xorl      %esi, %esi
.L0000284D:
	movl      28(%ebp), %eax
	movl      44(%eax), %edi
	testl     %edi, %edi
	je        .L00002861
.L00002857:
	cmpl      %edx, 20(%esp)
	jb        .L00002D41
.L00002861:
	testl     %esi, %esi
	je        .L00002924
.L00002869:
	movl      4(%ebp), %eax
	cmpl      $103, %eax
	jne       .L00001B8B
.L00002875:
	movl      28(%ebp), %eax
.L00002878:
	movl      44(%eax), %esi
	testl     %esi, %esi
	je        .L00002918
.L00002883:
	leal      2(%edx), %eax
	cmpl      12(%ebp), %eax
	ja        .L00002A82
.L0000288F:
	movl      64(%esp), %esi
	leal      1(%edx), %ecx
	movl      %ecx, 20(%ebp)
	movl      8(%ebp), %eax
	movl      48(%esi), %ecx
	movb      %cl, (%eax,%edx)
	movl      20(%ebp), %edx
	movl      8(%ebp), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebp)
	movl      48(%esi), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32@PLT
.L000028D3:
	movl      64(%esp), %esi
	movl      20(%ebp), %edx
	movl      %eax, 48(%esi)
	movl      $113, 4(%ebp)
	jmp       .L00001B8B
.L000028E9:
	.p2align 4
.L000028F0:
	subl      %edx, %ecx
	movl      64(%esp), %eax
	movl      %ecx, 8(%esp)
	addl      8(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L0000290C:
	movl      64(%esp), %esi
	movl      %eax, 48(%esi)
	jmp       .L000027D6
.L00002918:
	movl      $113, 4(%ebp)
	jmp       .L00001B8B
.L00002924:
	movl      $103, 4(%ebp)
	movl      28(%ebp), %eax
	jmp       .L00002878
.L00002933:
	movl      12(%esi), %eax
	movl      16(%edi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L0000294D:
	movl      20(%esp), %edx
	addl      %edx, 12(%esi)
	addl      %edx, 16(%edi)
	addl      %edx, 20(%esi)
	subl      %edx, 16(%esi)
	subl      %edx, 20(%edi)
	jne       .L00002117
.L00002966:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L00002117
.L00002971:
	movl      $-2, %eax
	jmp       .L00001D97
.L0000297B:
	movl      20(%esp), %eax
	subl      %eax, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L0000299B:
	movl      64(%esp), %edi
	movl      20(%ebp), %edx
	movl      %eax, 48(%edi)
	movl      28(%ebp), %eax
	jmp       .L00001F64
.L000029AD:
	movl      12(%edi), %eax
	movl      16(%esi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L000029C7:
	movl      20(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%esi)
	subl      %edx, 16(%edi)
	addl      %edx, 20(%edi)
	subl      %edx, 20(%esi)
	jne       .L00002224
.L000029E0:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00002224
.L000029EB:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L00002A05:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L00001CA5
.L00002A1E:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00001CA5
.L00002A29:
	movl      $1, %esi
	jmp       .L0000284D
.L00002A33:
	movl      $1, %esi
	jmp       .L0000269D
.L00002A3D:
	movl      28(%ebp), %eax
	jmp       .L00001F53
.L00002A45:
	movl      $73, 4(%ebp)
	movl      20(%ebp), %edx
	jmp       .L0000235B
.L00002A54:
	movl      z_errmsg@GOT(%ebx), %eax
	movl      28(%eax), %eax
	movl      %eax, 24(%esi)
	movl      $-5, %eax
	jmp       .L00001D97
.L00002A6A:
	movl      $103, 4(%ebp)
	jmp       .L00002878
.L00002A76:
	movl      $91, 4(%ebp)
	jmp       .L0000277F
.L00002A82:
	movl      64(%esp), %eax
	movl      28(%eax), %esi
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00002A91:
	movl      64(%esp), %edi
	movl      20(%esi), %eax
	movl      16(%edi), %edi
	cmpl      %eax, %edi
	cmova     %eax, %edi
	testl     %edi, %edi
	jne       .L00002DFE
.L00002AA8:
	movl      20(%ebp), %edx
	leal      2(%edx), %eax
	cmpl      12(%ebp), %eax
	ja        .L00001B8B
.L00002AB7:
	jmp       .L0000288F
.L00002ABC:
	.p2align 3
.L00002AC0:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L00002ADA:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L00002AF5
.L00002AEF:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
.L00002AF5:
	movl      64(%esp), %eax
	movl      16(%eax), %eax
	jmp       .L000022F0
.L00002B01:
	movl      20(%ebp), %eax
	movl      64(%esp), %esi
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movl      48(%esi), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %edx
	movl      8(%ebp), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebp)
	movl      48(%esi), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzwl    50(%esi), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzbl    51(%esi), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movl      8(%esi), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %edx
	movl      8(%ebp), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebp)
	movl      8(%esi), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzwl    10(%esi), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzbl    11(%esi), %ecx
	movb      %cl, (%edx,%eax)
	movl      %esi, %eax
	jmp       .L00001C83
.L00002BA6:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32@PLT
.L00002BC2:
	movl      64(%esp), %esi
	movl      8(%ebp), %edx
	movl      %eax, 48(%esi)
	movl      20(%ebp), %eax
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $31, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $139, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $8, (%edx,%eax)
	movl      28(%ebp), %eax
	testl     %eax, %eax
	je        .L00002EC6
.L00002C04:
	movl      20(%ebp), %esi
	movl      8(%ebp), %edi
	leal      1(%esi), %edx
	movl      %edx, 20(%ebp)
	movl      (%eax), %edx
	testl     %edx, %edx
	setne     %cl
	cmpl      $1, 44(%eax)
	sbbl      %edx, %edx
	notl      %edx
	andl      $2, %edx
	addl      %edx, %ecx
	cmpl      $1, 16(%eax)
	sbbl      %edx, %edx
	notl      %edx
	andl      $4, %edx
	addl      %edx, %ecx
	cmpl      $1, 28(%eax)
	sbbl      %edx, %edx
	notl      %edx
	andl      $8, %edx
	addl      %ecx, %edx
	cmpl      $1, 36(%eax)
	sbbl      %eax, %eax
	notl      %eax
	andl      $16, %eax
	addl      %edx, %eax
	movb      %al, (%edi,%esi)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movl      28(%ebp), %edx
	movl      4(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %edx
	movl      8(%ebp), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebp)
	movl      28(%ebp), %eax
	movl      4(%eax), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movl      28(%ebp), %edx
	movzwl    6(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movl      28(%ebp), %edx
	movzbl    7(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %ecx
	leal      1(%ecx), %eax
	movl      %eax, 20(%ebp)
	movl      132(%ebp), %edx
	movl      $2, %eax
	addl      8(%ebp), %ecx
	cmpl      $9, %edx
	je        .L00002CD5
.L00002CC3:
	cmpl      $1, 136(%ebp)
	movl      $4, %eax
	jle       .L00002F6A
.L00002CD5:
	movb      %al, (%ecx)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movl      28(%ebp), %edx
	movl      12(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      28(%ebp), %eax
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002D23
.L00002CF6:
	movl      20(%ebp), %edx
	movl      20(%eax), %eax
	movl      8(%ebp), %esi
	leal      1(%edx), %ecx
	movl      %ecx, 20(%ebp)
	movb      %al, (%esi,%edx)
	movl      20(%ebp), %edx
	movl      8(%ebp), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebp)
	movl      28(%ebp), %eax
	movl      20(%eax), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      28(%ebp), %eax
.L00002D23:
	movl      44(%eax), %edx
	testl     %edx, %edx
	jne       .L00002E52
.L00002D2E:
	movl      $0, 32(%ebp)
	movl      $69, 4(%ebp)
	jmp       .L00001EAB
.L00002D41:
	movl      20(%esp), %eax
	subl      %eax, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L00002D61:
	movl      64(%esp), %edi
	movl      20(%ebp), %edx
	movl      %eax, 48(%edi)
	jmp       .L00002861
.L00002D70:
	movl      20(%esp), %eax
	subl      %eax, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L00002D90:
	movl      64(%esp), %edi
	movl      20(%ebp), %edx
	movl      %eax, 48(%edi)
	jmp       .L000026B1
.L00002D9F:
	movl      $1, %eax
	jmp       .L00001D97
.L00002DA9:
	cmpl      $2, %edx
	ja        .L000024F1
.L00002DB2:
	movl      %esi, 20(%esp)
	jmp       .L0000200D
.L00002DBB:
	.p2align 3
.L00002DC0:
	movl      12(%edi), %eax
	movl      16(%esi), %ecx
	movl      %edx, 8(%esp)
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00002DDA:
	movl      20(%esp), %edx
	addl      %edx, 12(%edi)
	addl      %edx, 16(%esi)
	subl      %edx, 16(%edi)
	addl      %edx, 20(%edi)
	subl      %edx, 20(%esi)
	jne       .L00002672
.L00002DF3:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00002672
.L00002DFE:
	movl      64(%esp), %eax
	movl      16(%esi), %edx
	movl      12(%eax), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L00002E18:
	movl      64(%esp), %eax
	addl      %edi, 12(%eax)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%eax)
	subl      %edi, 16(%eax)
	subl      %edi, 20(%esi)
	jne       .L00002AA8
.L00002E31:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L00002AA8
.L00002E3C:
	movl      28(%esp), %ebp
	jmp       .L000024D7
.L00002E45:
	movl      %ebp, (%esp)
	call      _tr_align
.L00002E4D:
	jmp       .L000022CA
.L00002E52:
	movl      20(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      8(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      48(%eax), %eax
	movl      %eax, (%esp)
	call      crc32@PLT
.L00002E6F:
	movl      64(%esp), %esi
	movl      %eax, 48(%esi)
	movl      28(%ebp), %eax
	jmp       .L00002D2E
.L00002E7E:
	movl      28(%esp), %ebp
	addl      $7, %ecx
	jmp       .L000024D7
.L00002E8A:
	movl      28(%esp), %ebp
	addl      $2, %ecx
	jmp       .L000024D7
.L00002E96:
	movl      28(%esp), %ebp
	addl      $6, %ecx
	jmp       .L000024D7
.L00002EA2:
	movl      28(%esp), %ebp
	addl      $5, %ecx
	jmp       .L000024D7
.L00002EAE:
	movl      28(%esp), %ebp
	addl      $4, %ecx
	jmp       .L000024D7
.L00002EBA:
	movl      28(%esp), %ebp
	addl      $3, %ecx
	jmp       .L000024D7
.L00002EC6:
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $0, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $0, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $0, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $0, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $0, (%edx,%eax)
	movl      20(%ebp), %ecx
	movl      132(%ebp), %edx
	leal      1(%ecx), %eax
	addl      8(%ebp), %ecx
	cmpl      $9, %edx
	movl      %eax, 20(%ebp)
	movl      $2, %eax
	je        .L00002F49
.L00002F32:
	cmpl      $1, 136(%ebp)
	movl      $4, %eax
	jg        .L00002F49
.L00002F40:
	cmpl      $1, %edx
	setle     %al
	sall      $2, %eax
.L00002F49:
	movb      %al, (%ecx)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movb      $3, (%edx,%eax)
	movl      20(%ebp), %edx
	movl      $113, 4(%ebp)
	jmp       .L00001B8B
.L00002F6A:
	cmpl      $1, %edx
	setle     %al
	sall      $2, %eax
	jmp       .L00002CD5
	.size	deflate, .-deflate
# ----------------------
.L00002F78:
	.p2align 4
# ----------------------
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %edx
	call      __x86.get_pc_thunk.bx
.L00002F90:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      52(%esp), %edi
	testl     %edx, %edx
	je        .L000030A8
.L00002FA2:
	movl      28(%edx), %esi
	testl     %esi, %esi
	je        .L000030A8
.L00002FAD:
	cmpl      $-1, %edi
	je        .L00003048
.L00002FB6:
	cmpl      $9, %edi
	ja        .L000030A8
.L00002FBF:
	cmpl      $4, 56(%esp)
	ja        .L000030A8
.L00002FCA:
	movl      132(%esi), %eax
	leal      configuration_table@GOTOFF(%ebx), %ebp
	movl      %eax, 12(%esp)
	leal      (%eax,%eax,2), %eax
	movl      8(%ebp,%eax,4), %eax
	movl      %eax, %ecx
	movl      56(%esp), %eax
	cmpl      %eax, 136(%esi)
	je        .L00003058
.L00002FEF:
	movl      8(%edx), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	jne       .L00003068
.L00002FF8:
	cmpl      12(%esp), %edi
	je        .L0000302F
.L00002FFE:
	leal      (%edi,%edi,2), %edx
	leal      (%ebp,%edx,4), %edx
	movzwl    2(%edx), %ecx
	movl      %edi, 132(%esi)
	movl      %ecx, 128(%esi)
	movzwl    (%edx), %ecx
	movl      %ecx, 140(%esi)
	movzwl    4(%edx), %ecx
	movzwl    6(%edx), %edx
	movl      %ecx, 144(%esi)
	movl      %edx, 124(%esi)
.L0000302F:
	movl      56(%esp), %edi
	movl      %edi, 136(%esi)
.L00003039:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003041:
	.p2align 3
.L00003048:
	movl      $6, %edi
	jmp       .L00002FBF
.L00003052:
	.p2align 3
.L00003058:
	leal      (%edi,%edi,2), %eax
	cmpl      %ecx, 8(%ebp,%eax,4)
	jne       .L00002FEF
.L00003061:
	xorl      %eax, %eax
	jmp       .L00002FF8
.L00003065:
	.p2align 3
.L00003068:
	movl      $5, 4(%esp)
	movl      %edx, (%esp)
	call      deflate@PLT
.L00003078:
	cmpl      $-5, %eax
	je        .L00003090
.L0000307D:
	movl      132(%esi), %ecx
	movl      %ecx, 12(%esp)
	jmp       .L00002FF8
.L0000308C:
	.p2align 3
.L00003090:
	movl      20(%esi), %edx
	testl     %edx, %edx
	jne       .L0000307D
.L00003097:
	movl      132(%esi), %eax
	movl      %eax, 12(%esp)
	xorl      %eax, %eax
	jmp       .L00002FF8
.L000030A8:
	movl      $-2, %eax
	jmp       .L00003039
	.size	deflateParams, .-deflateParams
# ----------------------
.L000030AF:
	.p2align 3
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	pushl     %edi
	pushl     %esi
	subl      $20, %esp
	movl      32(%esp), %esi
	testl     %esi, %esi
	je        .L0000319B
.L000030C1:
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L0000319B
.L000030CC:
	movl      4(%eax), %edi
	cmpl      $42, %edi
	jne       .L00003160
.L000030D8:
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L000030EF
.L000030DF:
	movl      %edx, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *36(%esi)
.L000030EC:
	movl      28(%esi), %eax
.L000030EF:
	movl      68(%eax), %edx
	testl     %edx, %edx
	je        .L00003106
.L000030F6:
	movl      %edx, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *36(%esi)
.L00003103:
	movl      28(%esi), %eax
.L00003106:
	movl      64(%eax), %edx
	testl     %edx, %edx
	je        .L0000311D
.L0000310D:
	movl      %edx, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *36(%esi)
.L0000311A:
	movl      28(%esi), %eax
.L0000311D:
	movl      56(%eax), %edx
	testl     %edx, %edx
	je        .L00003134
.L00003124:
	movl      %edx, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *36(%esi)
.L00003131:
	movl      28(%esi), %eax
.L00003134:
	movl      %eax, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *36(%esi)
.L00003141:
	xorl      %eax, %eax
	cmpl      $113, %edi
	setne     %al
	movl      $0, 28(%esi)
	leal      -3(%eax,%eax,2), %eax
.L00003154:
	addl      $20, %esp
	popl      %esi
	popl      %edi
	ret       
.L0000315A:
	.p2align 3
.L00003160:
	cmpl      $69, %edi
	je        .L000030D8
.L00003169:
	cmpl      $73, %edi
	je        .L000030D8
.L00003172:
	cmpl      $91, %edi
	je        .L000030D8
.L0000317B:
	cmpl      $103, %edi
	.p2align 3
	je        .L000030D8
.L00003186:
	cmpl      $113, %edi
	je        .L000030D8
.L0000318F:
	cmpl      $666, %edi
	je        .L000030D8
.L0000319B:
	movl      $-2, %eax
	jmp       .L00003154
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L000031A2:
	.p2align 4
# ----------------------
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      88(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000031C0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      64(%esp), %edi
	movl      76(%esp), %ecx
	testl     %eax, %eax
	je        .L00003438
.L000031D6:
	cmpb      $49, (%eax)
	jne       .L00003438
.L000031DF:
	cmpl      $56, 92(%esp)
	jne       .L00003438
.L000031EA:
	testl     %edi, %edi
	je        .L00003448
.L000031F2:
	movl      32(%edi), %eax
	movl      $0, 24(%edi)
	testl     %eax, %eax
	je        .L00003458
.L00003204:
	movl      36(%edi), %esi
	testl     %esi, %esi
	je        .L00003478
.L0000320F:
	cmpl      $-1, 68(%esp)
	movl      $6, %edx
	cmovne    68(%esp), %edx
	testl     %ecx, %ecx
	movl      %edx, 68(%esp)
	js        .L00003410
.L0000322A:
	cmpl      $15, %ecx
	movl      $1, %ebp
	jg        .L00003400
.L00003238:
	movl      80(%esp), %edx
	leal      -1(%edx), %esi
	cmpl      $8, %esi
	ja        .L00003448
.L00003248:
	cmpl      $8, 72(%esp)
	jne       .L00003448
.L00003253:
	leal      -8(%ecx), %esi
	cmpl      $7, %esi
	ja        .L00003448
.L0000325F:
	cmpl      $9, 68(%esp)
	ja        .L00003448
.L0000326A:
	cmpl      $4, 84(%esp)
	ja        .L00003448
.L00003275:
	cmpl      $8, %ecx
	je        .L00003420
.L0000327E:
	movl      %ecx, 24(%esp)
.L00003282:
	movl      $5828, 8(%esp)
	movl      $1, 4(%esp)
	movl      40(%edi), %esi
	movl      %ecx, 28(%esp)
	movl      %esi, (%esp)
	call      *%eax
.L0000329E:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L000034B0
.L000032A8:
	movl      28(%esp), %ecx
	movl      $-1431655765, %edx
	movl      %eax, 28(%edi)
	movl      %ebp, 24(%eax)
	movl      $1, %ebp
	movl      %edi, (%eax)
	movl      $0, 28(%eax)
	movl      24(%esp), %eax
	sall      %cl, %ebp
	movl      %ebp, 44(%esi)
	movl      %eax, 48(%esi)
	leal      -1(%ebp), %eax
	movl      %eax, 52(%esi)
	movl      80(%esp), %eax
	leal      7(%eax), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      %ecx, 80(%esi)
	movl      %eax, %ecx
	movl      %eax, 76(%esi)
	movl      80(%esp), %eax
	subl      $1, %ecx
	movl      %ecx, 84(%esi)
	addl      $9, %eax
	mull      %edx
	shrl      $1, %edx
	movl      %edx, 88(%esi)
	movl      $2, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      40(%edi), %eax
	movl      %eax, (%esp)
	call      *32(%edi)
.L00003316:
	movl      %eax, 56(%esi)
	movl      $2, 8(%esp)
	movl      44(%esi), %eax
	movl      %eax, 4(%esp)
	movl      40(%edi), %eax
	movl      %eax, (%esp)
	call      *32(%edi)
.L00003331:
	movl      %eax, 64(%esi)
	movl      $2, 8(%esp)
	movl      76(%esi), %eax
	movl      %eax, 4(%esp)
	movl      40(%edi), %eax
	movl      %eax, (%esp)
	call      *32(%edi)
.L0000334C:
	movl      $0, 5824(%esi)
	movl      %eax, 68(%esi)
	movl      80(%esp), %eax
	leal      6(%eax), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      %eax, 5788(%esi)
	movl      $4, 8(%esp)
	movl      %eax, 4(%esp)
	movl      40(%edi), %eax
	movl      %eax, (%esp)
	call      *32(%edi)
.L00003382:
	movl      5788(%esi), %edx
	leal      0(,%edx,4), %ecx
	movl      %ecx, 12(%esi)
	movl      56(%esi), %ecx
	movl      %eax, 8(%esi)
	testl     %ecx, %ecx
	je        .L00003488
.L000033A0:
	movl      64(%esi), %ebp
	testl     %ebp, %ebp
	je        .L00003488
.L000033AB:
	movl      68(%esi), %ecx
	testl     %ecx, %ecx
	je        .L00003488
.L000033B6:
	testl     %eax, %eax
	je        .L00003488
.L000033BE:
	movl      %edx, %ecx
	andl      $-2, %ecx
	leal      (%edx,%edx,2), %edx
	addl      %eax, %ecx
	addl      %edx, %eax
	movl      %eax, 5784(%esi)
	movl      68(%esp), %eax
	movl      %ecx, 5796(%esi)
	movb      $8, 36(%esi)
	movl      %eax, 132(%esi)
	movl      84(%esp), %eax
	movl      %eax, 136(%esi)
	movl      %edi, (%esp)
	call      deflateReset@PLT
.L000033F6:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000033FE:
	.p2align 3
.L00003400:
	subl      $16, %ecx
	movw      $2, %bp
	jmp       .L00003238
.L0000340C:
	.p2align 3
.L00003410:
	negl      %ecx
	xorl      %ebp, %ebp
	jmp       .L00003238
.L00003419:
	.p2align 4
.L00003420:
	movl      $9, 24(%esp)
	movl      $9, %ecx
	jmp       .L00003282
.L00003432:
	.p2align 3
.L00003438:
	addl      $44, %esp
	movl      $-6, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003445:
	.p2align 3
.L00003448:
	addl      $44, %esp
	movl      $-2, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003455:
	.p2align 3
.L00003458:
	movl      36(%edi), %esi
	leal      zcalloc@GOTOFF(%ebx), %eax
	movl      %eax, 32(%edi)
	movl      $0, 40(%edi)
	testl     %esi, %esi
	jne       .L0000320F
.L00003473:
	.p2align 3
.L00003478:
	leal      zcfree@GOTOFF(%ebx), %edx
	movl      %edx, 36(%edi)
	jmp       .L0000320F
.L00003486:
	.p2align 3
.L00003488:
	movl      z_errmsg@GOT(%ebx), %eax
	movl      $666, 4(%esi)
	movl      24(%eax), %eax
	movl      %eax, 24(%edi)
	movl      %edi, (%esp)
	call      deflateEnd@PLT
.L000034A3:
	movl      $-4, %eax
	jmp       .L000033F6
.L000034AD:
	.p2align 3
.L000034B0:
	movl      $-4, %eax
	jmp       .L000033F6
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L000034BA:
	.p2align 3
# ----------------------
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	pushl     %ebx
	subl      $40, %esp
	movl      60(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000034CD:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 20(%esp)
	movl      $8, 16(%esp)
	movl      %eax, 28(%esp)
	movl      56(%esp), %eax
	movl      $15, 12(%esp)
	movl      $8, 8(%esp)
	movl      %eax, 24(%esp)
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      deflateInit2_@PLT
.L00003513:
	addl      $40, %esp
	popl      %ebx
	ret       
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L00003518:
	.p2align 4
# ----------------------
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L00003530:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      64(%esp), %edx
	testl     %eax, %eax
	je        .L000037E8
.L00003542:
	testl     %edx, %edx
	je        .L000037E8
.L0000354A:
	movl      28(%eax), %esi
	testl     %esi, %esi
	movl      %esi, 24(%esp)
	je        .L000037E8
.L00003559:
	movl      (%eax), %ecx
	movl      %edx, 28(%esp)
	movl      %ecx, (%edx)
	movl      4(%eax), %ecx
	movl      %ecx, 4(%edx)
	movl      8(%eax), %ecx
	movl      %ecx, 8(%edx)
	movl      12(%eax), %ecx
	movl      %ecx, 12(%edx)
	movl      16(%eax), %ecx
	movl      %ecx, 16(%edx)
	movl      20(%eax), %ecx
	movl      %ecx, 20(%edx)
	movl      24(%eax), %ecx
	movl      %ecx, 24(%edx)
	movl      28(%eax), %ecx
	movl      %ecx, 28(%edx)
	movl      32(%eax), %ecx
	movl      %ecx, 32(%edx)
	movl      36(%eax), %ecx
	movl      %ecx, 36(%edx)
	movl      40(%eax), %ecx
	movl      %ecx, 40(%edx)
	movl      44(%eax), %ecx
	movl      %ecx, 44(%edx)
	movl      48(%eax), %ecx
	movl      %ecx, 48(%edx)
	movl      52(%eax), %eax
	movl      %eax, 52(%edx)
	movl      $5828, 8(%esp)
	movl      $1, 4(%esp)
	movl      40(%edx), %eax
	movl      %eax, (%esp)
	call      *32(%edx)
.L000035C8:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00003808
.L000035D2:
	movl      28(%esp), %edx
	testl     $1, %ebp
	movl      %eax, %edi
	movl      %eax, 28(%edx)
	movl      $5828, %eax
	jne       .L000037C8
.L000035EC:
	testl     $2, %edi
	jne       .L000037B0
.L000035F8:
	movl      %eax, %ecx
	shrl      $2, %ecx
	testb     $2, %al
	rep movsl     
	jne       .L00003798
.L00003607:
	testb     $1, %al
	jne       .L00003788
.L0000360F:
	movl      %edx, (%ebp)
	movl      $2, 8(%esp)
	movl      44(%ebp), %eax
	movl      %edx, 28(%esp)
	movl      %eax, 4(%esp)
	movl      40(%edx), %eax
	movl      %eax, (%esp)
	call      *32(%edx)
.L0000362E:
	movl      28(%esp), %edx
	movl      %eax, 56(%ebp)
	movl      $2, 8(%esp)
	movl      44(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      40(%edx), %eax
	movl      %eax, (%esp)
	call      *32(%edx)
.L0000364D:
	movl      28(%esp), %edx
	movl      %eax, 64(%ebp)
	movl      $2, 8(%esp)
	movl      76(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      40(%edx), %eax
	movl      %eax, (%esp)
	call      *32(%edx)
.L0000366C:
	movl      28(%esp), %edx
	movl      %eax, 68(%ebp)
	movl      $4, 8(%esp)
	movl      5788(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      40(%edx), %eax
	movl      %eax, (%esp)
	call      *32(%edx)
.L0000368E:
	movl      28(%esp), %edx
	movl      %eax, %esi
	movl      %eax, 8(%ebp)
	movl      56(%ebp), %eax
	testl     %eax, %eax
	je        .L000037F0
.L000036A2:
	movl      64(%ebp), %edi
	testl     %edi, %edi
	je        .L000037F0
.L000036AD:
	movl      68(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L000037F0
.L000036B8:
	testl     %esi, %esi
	je        .L000037F0
.L000036C0:
	movl      44(%ebp), %edi
	leal      (%edi,%edi), %ecx
	movl      24(%esp), %edi
	movl      56(%edi), %edx
	movl      %ecx, 8(%esp)
	movl      %eax, (%esp)
	movl      %edx, 4(%esp)
	call      memcpy@PLT
.L000036DD:
	movl      44(%ebp), %ecx
	movl      64(%edi), %edx
	movl      64(%ebp), %eax
	addl      %ecx, %ecx
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L000036F8:
	movl      76(%ebp), %ecx
	movl      68(%edi), %edx
	movl      68(%ebp), %eax
	addl      %ecx, %ecx
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L00003713:
	movl      8(%edi), %edx
	movl      12(%ebp), %ecx
	movl      8(%ebp), %eax
	movl      %edx, 4(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, (%esp)
	call      memcpy@PLT
.L0000372C:
	movl      16(%edi), %eax
	movl      8(%ebp), %edx
	addl      %edx, %eax
	subl      8(%edi), %eax
	movl      %eax, 16(%ebp)
	movl      5788(%ebp), %eax
	movl      %eax, %ecx
	leal      (%eax,%eax,2), %eax
	andl      $-2, %ecx
	addl      %eax, %edx
	addl      %ecx, %esi
	leal      148(%ebp), %eax
	movl      %eax, 2840(%ebp)
	leal      2440(%ebp), %eax
	movl      %eax, 2852(%ebp)
	leal      2684(%ebp), %eax
	movl      %eax, 2864(%ebp)
	xorl      %eax, %eax
	movl      %esi, 5796(%ebp)
	movl      %edx, 5784(%ebp)
.L0000377E:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003786:
	.p2align 3
.L00003788:
	movzbl    (%esi,%ecx), %eax
	movb      %al, (%edi,%ecx)
	jmp       .L0000360F
.L00003794:
	.p2align 3
.L00003798:
	movzwl    (%esi), %ecx
	testb     $1, %al
	movw      %cx, (%edi)
	movl      $2, %ecx
	je        .L0000360F
.L000037AB:
	jmp       .L00003788
.L000037AD:
	.p2align 3
.L000037B0:
	movzwl    (%esi), %ecx
	addl      $2, %edi
	addl      $2, %esi
	subl      $2, %eax
	movw      %cx, -2(%edi)
	jmp       .L000035F8
.L000037C5:
	.p2align 3
.L000037C8:
	movl      24(%esp), %esi
	leal      1(%ebp), %edi
	movzbl    (%esi), %eax
	leal      1(%esi), %esi
	movb      %al, (%ebp)
	movl      $5827, %eax
	jmp       .L000035EC
.L000037E2:
	.p2align 3
.L000037E8:
	movl      $-2, %eax
	jmp       .L0000377E
.L000037EF:
	.p2align 3
.L000037F0:
	movl      %edx, (%esp)
	call      deflateEnd@PLT
.L000037F8:
	movl      $-4, %eax
	jmp       .L0000377E
.L00003802:
	.p2align 3
.L00003808:
	movl      $-4, %eax
	jmp       .L0000377E
	.size	deflateCopy, .-deflateCopy
# ----------------------
	.hidden	_length_code
	.hidden	_dist_code
	.hidden	_tr_flush_block
	.hidden	_tr_flush_bits
	.hidden	_tr_init
	.hidden	_tr_stored_block
	.hidden	_tr_align
	.hidden	zcalloc
	.hidden	zcfree
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
