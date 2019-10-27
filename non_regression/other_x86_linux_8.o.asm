	.file	"deflate.c"
	.section       .rodata
	.align 32
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 68
# ----------------------
.LC00000044:
	.zero	28
# ----------------------
	.local	configuration_table
	.type	configuration_table, @object
configuration_table:
	.value	0
	.zero	6
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
	pushl     %esi
	pushl     %ebx
	subl      $52, %esp
	movl      108(%eax), %edi
	movl      56(%eax), %ebp
	movl      120(%eax), %esi
	movl      124(%eax), %ecx
	movl      $0, 16(%esp)
	leal      (%ebp,%edi), %ebx
	movl      %ebx, 32(%esp)
	movl      144(%eax), %ebx
	movl      %esi, 48(%esp)
	movl      %ebx, 28(%esp)
	movl      44(%eax), %ebx
	movl      %ebx, 8(%esp)
	subl      $262, %ebx
	cmpl      %ebx, %edi
	jbe       .L00000054
.L00000042:
	leal      262(%edi), %ebx
	movl      %ebx, 16(%esp)
	movl      8(%esp), %ebx
	subl      %ebx, 16(%esp)
.L00000054:
	movl      64(%eax), %ebx
	leal      258(%ebp,%edi), %edi
	movl      %edi, 44(%esp)
	movl      %ecx, %edi
	shrl      $2, %edi
	cmpl      140(%eax), %esi
	movl      %ebx, 12(%esp)
	movl      52(%eax), %ebx
	cmovae    %edi, %ecx
	movl      %ecx, 4(%esp)
	movl      %ebx, 20(%esp)
	movl      32(%esp), %ebx
	movzbl    -1(%ebx,%esi), %ebx
	movb      %bl, 40(%esp)
	movl      32(%esp), %ebx
	movzbl    (%ebx,%esi), %ebx
	movb      %bl, 8(%esp)
	movl      116(%eax), %ebx
	cmpl      %ebx, 28(%esp)
	movl      %ebx, 24(%esp)
	cmovbe    28(%esp), %ebx
	movl      %ebx, 28(%esp)
	movl      48(%esp), %ebx
	movl      %eax, 48(%esp)
	jmp       .L000000D9
.L000000B6:
	.p2align 3
.L000000B8:
	movl      12(%esp), %eax
	andl      20(%esp), %edx
	movzwl    (%eax,%edx,2), %edx
	cmpl      %edx, 16(%esp)
	jae       .L00000240
.L000000CE:
	subl      $1, 4(%esp)
	je        .L00000240
.L000000D9:
	leal      (%ebp,%edx), %eax
	movl      %ebx, %edi
	movzbl    (%eax,%ebx), %esi
	movl      %esi, %ecx
	cmpb      8(%esp), %cl
	jne       .L000000B8
.L000000EB:
	movzbl    -1(%eax,%ebx), %ecx
	movb      %cl, 39(%esp)
	movzbl    40(%esp), %ecx
	cmpb      %cl, 39(%esp)
	jne       .L000000B8
.L000000FF:
	movl      32(%esp), %ecx
	movzbl    (%ecx), %ecx
	cmpb      %cl, (%eax)
	jne       .L000000B8
.L0000010A:
	movl      32(%esp), %ecx
	movzbl    1(%ecx), %ecx
	cmpb      %cl, 1(%eax)
	jne       .L000000B8
.L00000117:
	movl      32(%esp), %ecx
	addl      $2, %eax
	movl      %ebx, 40(%esp)
	movl      %edx, (%esp)
	addl      $2, %ecx
	movl      %ecx, 8(%esp)
	movl      4(%esp), %ecx
	movl      %ecx, 32(%esp)
	movl      8(%esp), %ecx
.L00000138:
	movzbl    1(%eax), %edx
	leal      1(%ecx), %ebx
	cmpb      %dl, 1(%ecx)
	jne       .L00000253
.L00000148:
	movzbl    2(%eax), %edx
	leal      2(%ecx), %ebx
	cmpb      %dl, 2(%ecx)
	jne       .L00000287
.L00000158:
	movzbl    3(%eax), %edx
	leal      3(%ecx), %ebx
	cmpb      %dl, 3(%ecx)
	jne       .L0000026D
.L00000168:
	movzbl    4(%eax), %edx
	leal      4(%ecx), %ebx
	cmpb      %dl, 4(%ecx)
	jne       .L00000253
.L00000178:
	movzbl    5(%eax), %edx
	leal      5(%ecx), %ebx
	cmpb      %dl, 5(%ecx)
	jne       .L00000287
.L00000188:
	movzbl    6(%eax), %edx
	leal      6(%ecx), %ebx
	cmpb      %dl, 6(%ecx)
	jne       .L0000026D
.L00000198:
	movzbl    7(%eax), %edx
	leal      7(%ecx), %ebx
	cmpb      %dl, 7(%ecx)
	jne       .L00000253
.L000001A8:
	addl      $8, %eax
	addl      $8, %ecx
	movzbl    (%eax), %ebx
	cmpb      %bl, (%ecx)
	jne       .L000002A1
.L000001B9:
	cmpl      %ecx, 44(%esp)
	ja        .L00000138
.L000001C3:
	movl      32(%esp), %eax
	movl      40(%esp), %ebx
	movl      (%esp), %edx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, %eax
.L000001D8:
	movl      44(%esp), %ecx
	subl      44(%esp), %eax
	subl      $258, %ecx
	addl      $258, %eax
	movl      %ecx, 32(%esp)
	movl      %esi, %ecx
	cmpl      %eax, %ebx
	movb      %cl, 8(%esp)
	movzbl    39(%esp), %ecx
	movb      %cl, 40(%esp)
	jge       .L000000B8
.L00000206:
	movl      48(%esp), %ebx
	cmpl      %eax, 28(%esp)
	movl      %edx, 112(%ebx)
	jle       .L00000239
.L00000213:
	movl      %eax, %edi
	movl      44(%esp), %ecx
	movl      32(%esp), %eax
	movl      %edi, %ebx
	movzbl    -258(%ecx,%edi), %ecx
	movzbl    -1(%eax,%edi), %eax
	movb      %cl, 8(%esp)
	movb      %al, 40(%esp)
	jmp       .L000000B8
.L00000239:
	movl      %eax, %edi
	.p2align 3
.L00000240:
	movl      24(%esp), %eax
	cmpl      24(%esp), %edi
	cmovbe    %edi, %eax
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000253:
	movl      32(%esp), %edx
	movl      %ebx, %eax
	movl      %eax, 8(%esp)
	movl      40(%esp), %ebx
	movl      %edx, 4(%esp)
	movl      (%esp), %edx
	jmp       .L000001D8
.L0000026D:
	movl      32(%esp), %eax
	movl      (%esp), %edx
	movl      %eax, 4(%esp)
	movl      %ebx, %eax
	movl      40(%esp), %ebx
	movl      %eax, 8(%esp)
	jmp       .L000001D8
.L00000287:
	movl      32(%esp), %ecx
	movl      %ebx, %eax
	movl      (%esp), %edx
	movl      40(%esp), %ebx
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	jmp       .L000001D8
.L000002A1:
	movl      %ecx, 8(%esp)
	movl      32(%esp), %ecx
	movl      40(%esp), %ebx
	movl      (%esp), %edx
	movl      8(%esp), %eax
	movl      %ecx, 4(%esp)
	jmp       .L000001D8
	.size	longest_match, .-longest_match
# ----------------------
.L000002BD:
	.p2align 3
# ----------------------
	.local	lm_init
	.type	lm_init, @function
lm_init:
	pushl     %ebx
	movl      %eax, %ebx
	subl      $24, %esp
	movl      44(%eax), %eax
	movl      76(%ebx), %edx
	addl      %eax, %eax
	movl      %eax, 60(%ebx)
	movl      68(%ebx), %eax
	movw      $0, -2(%eax,%edx,2)
	leal      -2(%edx,%edx), %edx
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset
.L000002F3:
	movl      132(%ebx), %eax
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	leal      (%eax,%eax,2), %edx
	sall      $2, %edx
	leal      configuration_table(%edx), %eax
	movzwl    configuration_table+2(%edx), %ecx
	movzwl    configuration_table(%edx), %edx
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	movl      %ecx, 128(%ebx)
	movl      %edx, 140(%ebx)
	movzwl    4(%eax), %edx
	movzwl    6(%eax), %eax
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      %edx, 144(%ebx)
	movl      %eax, 124(%ebx)
	movl      $0, 72(%ebx)
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	lm_init, .-lm_init
# ----------------------
	.local	fill_window
	.type	fill_window, @function
fill_window:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $76, %esp
	movl      44(%eax), %edx
	movl      116(%eax), %esi
	movl      %edx, 48(%esp)
	movl      48(%esp), %eax
	addl      %edx, %edx
	movl      %edx, 56(%esp)
	movl      %esi, 32(%esp)
	movl      %eax, %edx
	negl      %edx
	leal      -262(%eax), %edi
	addl      %edx, %edx
	movl      %edi, 52(%esp)
	movl      %edx, 60(%esp)
	.p2align 3
.L000003A8:
	movl      108(%ebx), %ebp
	movl      60(%ebx), %esi
	subl      32(%esp), %esi
	addl      52(%esp), %eax
	movl      %ebp, 28(%esp)
	subl      %ebp, %esi
	cmpl      %eax, %ebp
	jae       .L000004F8
.L000003C4:
	movl      (%ebx), %edi
	movl      4(%edi), %ebp
	testl     %ebp, %ebp
	je        .L000005A0
.L000003D1:
	xorl      %edx, %edx
	cmpl      %ebp, %esi
	movl      56(%ebx), %ecx
	movl      116(%ebx), %eax
	jb        .L000004E8
.L000003E1:
	addl      28(%esp), %eax
	movl      %edx, 4(%edi)
	leal      (%ecx,%eax), %esi
	movl      (%edi), %eax
	movl      %ebp, 8(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy
.L000003FD:
	movl      28(%edi), %eax
	movl      24(%eax), %eax
	cmpl      $1, %eax
	je        .L00000630
.L0000040C:
	cmpl      $2, %eax
	je        .L00000650
.L00000415:
	addl      %ebp, (%edi)
	addl      %ebp, 8(%edi)
	movl      116(%ebx), %eax
.L0000041D:
	movl      5812(%ebx), %edx
	addl      %eax, %ebp
	movl      %ebp, %eax
	movl      %ebp, 32(%esp)
	movl      %ebp, 116(%ebx)
	addl      %edx, %eax
	cmpl      $2, %eax
	jbe       .L000004C5
.L00000439:
	movl      108(%ebx), %esi
	movl      56(%ebx), %eax
	movl      88(%ebx), %ecx
	movl      84(%ebx), %ebp
	subl      %edx, %esi
	movzbl    (%eax,%esi), %edi
	movl      %eax, 36(%esp)
	movl      %ebp, 44(%esp)
	movl      %ecx, 40(%esp)
	movl      %edi, 72(%ebx)
	movzbl    1(%eax,%esi), %eax
	sall      %cl, %edi
	movl      %esi, 24(%esp)
	xorl      %edi, %eax
	andl      44(%esp), %eax
	movl      %eax, 72(%ebx)
	.p2align 3
.L00000470:
	testl     %edx, %edx
	je        .L000004C5
.L00000474:
	movl      24(%esp), %esi
	subl      $1, %edx
	movl      36(%esp), %ebp
	movzbl    40(%esp), %ecx
	movzbl    2(%ebp,%esi), %edi
	sall      %cl, %eax
	andl      52(%ebx), %esi
	xorl      %edi, %eax
	movl      64(%ebx), %edi
	andl      44(%esp), %eax
	leal      (%eax,%eax), %ecx
	addl      68(%ebx), %ecx
	movl      %eax, 72(%ebx)
	movzwl    (%ecx), %ebp
	movw      %bp, (%edi,%esi,2)
	movzwl    24(%esp), %esi
	addl      $1, 24(%esp)
	movw      %si, (%ecx)
	movl      32(%esp), %ecx
	movl      %edx, 5812(%ebx)
	addl      %edx, %ecx
	cmpl      $2, %ecx
	ja        .L00000470
.L000004C5:
	cmpl      $261, 32(%esp)
	ja        .L000005A0
.L000004D3:
	movl      (%ebx), %eax
	movl      4(%eax), %eax
	testl     %eax, %eax
	je        .L000005A0
.L000004E0:
	movl      44(%ebx), %eax
	jmp       .L000003A8
.L000004E8:
	testl     %esi, %esi
	jne       .L0000066B
.L000004F0:
	xorl      %ebp, %ebp
	jmp       .L0000041D
.L000004F7:
	.p2align 3
.L000004F8:
	movl      56(%ebx), %eax
	movl      48(%esp), %edx
	movl      48(%esp), %edi
	movl      %eax, (%esp)
	addl      %eax, %edx
	movl      %edx, 4(%esp)
	movl      %edi, 8(%esp)
	call      memcpy
.L00000515:
	movl      76(%ebx), %eax
	movl      108(%ebx), %ebp
	subl      %edi, 112(%ebx)
	subl      %edi, 92(%ebx)
	leal      (%eax,%eax), %edx
	movl      %eax, %ecx
	addl      68(%ebx), %edx
	subl      %edi, %ebp
	negl      %ecx
	movl      %ebp, 28(%esp)
	movl      %ebp, 108(%ebx)
	leal      (%edx,%ecx,2), %ecx
	xorl      %ebp, %ebp
	movl      %esi, 32(%esp)
	movl      %edi, %esi
	.p2align 3
.L00000540:
	movzwl    -2(%ecx,%eax,2), %edx
	movl      %edx, %edi
	subl      %esi, %edi
	cmpl      %edx, %esi
	cmova     %ebp, %edi
	movw      %di, -2(%ecx,%eax,2)
	subl      $1, %eax
	jne       .L00000540
.L00000558:
	movl      48(%esp), %eax
	xorl      %ebp, %ebp
	movl      56(%esp), %ecx
	addl      64(%ebx), %ecx
	addl      60(%esp), %ecx
	movl      %eax, %esi
	.p2align 3
.L00000570:
	movzwl    -2(%ecx,%eax,2), %edx
	movl      %edx, %edi
	subl      %esi, %edi
	cmpl      %edx, %esi
	cmova     %ebp, %edi
	movw      %di, -2(%ecx,%eax,2)
	subl      $1, %eax
	jne       .L00000570
.L00000588:
	movl      (%ebx), %edi
	movl      32(%esp), %esi
	addl      48(%esp), %esi
	movl      4(%edi), %ebp
	testl     %ebp, %ebp
	jne       .L000003D1
.L0000059D:
	.p2align 3
.L000005A0:
	movl      5824(%ebx), %eax
	movl      60(%ebx), %edx
	cmpl      %edx, %eax
	jae       .L000005E8
.L000005AD:
	movl      116(%ebx), %esi
	addl      108(%ebx), %esi
	cmpl      %esi, %eax
	jae       .L000005F0
.L000005B7:
	movl      56(%ebx), %eax
	subl      %esi, %edx
	movl      $258, %edi
	cmpl      $258, %edx
	cmovbe    %edx, %edi
	movl      %edi, 8(%esp)
	addl      %esi, %eax
	addl      %edi, %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset
.L000005E2:
	movl      %esi, 5824(%ebx)
.L000005E8:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000005F0:
	leal      258(%esi), %ecx
	cmpl      %ecx, %eax
	jae       .L000005E8
.L000005FA:
	subl      %eax, %esi
	subl      %eax, %edx
	addl      $258, %esi
	cmpl      %edx, %esi
	cmova     %edx, %esi
	addl      56(%ebx), %eax
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset
.L00000620:
	addl      %esi, 5824(%ebx)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000062E:
	.p2align 3
.L00000630:
	movl      %ebp, 8(%esp)
	movl      %esi, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      adler32
.L00000643:
	movl      %eax, 48(%edi)
	jmp       .L00000415
.L0000064B:
	.p2align 3
.L00000650:
	movl      %ebp, 8(%esp)
	movl      %esi, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00000663:
	movl      %eax, 48(%edi)
	jmp       .L00000415
.L0000066B:
	movl      %ebp, %edx
	movl      %esi, %ebp
	subl      %esi, %edx
	jmp       .L000003E1
	.size	fill_window, .-fill_window
# ----------------------
.L00000676:
	.p2align 4
# ----------------------
	.local	flush_pending
	.type	flush_pending, @function
flush_pending:
	subl      $28, %esp
	movl      %esi, 20(%esp)
	movl      28(%eax), %esi
	movl      %ebx, 16(%esp)
	movl      %eax, %ebx
	movl      %edi, 24(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0000069C:
	movl      20(%esi), %edi
	cmpl      %edi, 16(%ebx)
	cmovbe    16(%ebx), %edi
	testl     %edi, %edi
	jne       .L000006C0
.L000006AA:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
.L000006BA:
	.p2align 3
.L000006C0:
	movl      16(%esi), %edx
	movl      12(%ebx), %eax
	movl      %edi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy
.L000006D6:
	movl      20(%esi), %eax
	addl      %edi, 12(%ebx)
	addl      %edi, 16(%esi)
	addl      %edi, 20(%ebx)
	subl      %edi, %eax
	subl      %edi, 16(%ebx)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L000006AA
.L000006EE:
	movl      8(%esi), %eax
	movl      16(%esp), %ebx
	movl      24(%esp), %edi
	movl      %eax, 16(%esi)
	movl      20(%esp), %esi
	addl      $28, %esp
	ret       
	.size	flush_pending, .-flush_pending
# ----------------------
.L00000704:
	.p2align 4
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
.L0000071B:
	movl      116(%ebx), %ebp
	.p2align 3
.L00000720:
	cmpl      $261, %ebp
	jbe       .L00000981
.L0000072C:
	movl      108(%ebx), %esi
	movl      56(%ebx), %eax
	movl      88(%ebx), %ecx
	movl      72(%ebx), %edx
	movl      68(%ebx), %edi
	movzbl    2(%eax,%esi), %eax
	sall      %cl, %edx
	movl      64(%ebx), %ecx
	xorl      %edx, %eax
	andl      84(%ebx), %eax
	movl      %eax, 72(%ebx)
	leal      (%edi,%eax,2), %eax
	movl      52(%ebx), %edi
	movzwl    (%eax), %edx
	andl      %esi, %edi
	movw      %dx, (%ecx,%edi,2)
	movl      96(%ebx), %edi
	testl     %edx, %edx
	movw      %si, (%eax)
	movl      112(%ebx), %eax
	movl      $2, 96(%ebx)
	movl      %edi, 120(%ebx)
	movl      %eax, 100(%ebx)
	movl      $2, %eax
	je        .L00000798
.L0000077B:
	cmpl      128(%ebx), %edi
	jae       .L00000798
.L00000783:
	movl      44(%ebx), %ecx
	subl      %edx, %esi
	subl      $262, %ecx
	cmpl      %ecx, %esi
	jbe       .L00000A40
.L00000796:
	.p2align 3
.L00000798:
	cmpl      $2, %edi
	jbe       .L00000908
.L000007A1:
	cmpl      %eax, %edi
	jb        .L00000908
.L000007A9:
	movl      108(%ebx), %ecx
	leal      -3(%edi), %edx
	movl      116(%ebx), %eax
	movl      5796(%ebx), %esi
	addl      %ecx, %eax
	subl      $3, %eax
	subw      100(%ebx), %cx
	movl      %eax, 16(%esp)
	movl      5792(%ebx), %eax
	leal      -1(%ecx), %edi
	subl      $2, %ecx
	movw      %di, (%esi,%eax,2)
	movl      5784(%ebx), %esi
	movb      %dl, (%esi,%eax)
	addl      $1, %eax
	movzbl    %dl, %edx
	movl      %eax, 5792(%ebx)
	movl      %eax, 20(%esp)
	movzbl    _length_code(%edx), %eax
	addw      $1, 1176(%ebx,%eax,4)
	cmpw      $255, %cx
	ja        .L000009E8
.L00000809:
	movzwl    %cx, %ecx
	movzbl    _dist_code(%ecx), %eax
.L00000813:
	addw      $1, 2440(%ebx,%eax,4)
	movl      116(%ebx), %ebp
	movl      120(%ebx), %edx
	movl      5788(%ebx), %eax
	movl      108(%ebx), %ecx
	addl      $1, %ebp
	subl      %edx, %ebp
	subl      $2, %edx
	subl      $1, %eax
	movl      %eax, 24(%esp)
	movl      %ebp, 116(%ebx)
	movl      %edx, 120(%ebx)
	movl      %ebp, 28(%esp)
	jmp       .L0000084A
.L00000846:
	.p2align 3
.L00000848:
	movl      %eax, %ecx
.L0000084A:
	leal      1(%ecx), %eax
	cmpl      %eax, 16(%esp)
	movl      %eax, 108(%ebx)
	jb        .L00000886
.L00000856:
	movl      56(%ebx), %esi
	movl      72(%ebx), %edi
	movzbl    3(%esi,%ecx), %esi
	movl      88(%ebx), %ecx
	sall      %cl, %edi
	movl      68(%ebx), %ecx
	xorl      %edi, %esi
	movl      52(%ebx), %edi
	andl      84(%ebx), %esi
	movl      %esi, 72(%ebx)
	leal      (%ecx,%esi,2), %esi
	movl      64(%ebx), %ecx
	movzwl    (%esi), %ebp
	andl      %eax, %edi
	movw      %bp, (%ecx,%edi,2)
	movw      %ax, (%esi)
.L00000886:
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, 120(%ebx)
	jne       .L00000848
.L00000890:
	movl      24(%esp), %edx
	addl      $1, %eax
	cmpl      %edx, 20(%esp)
	movl      28(%esp), %ebp
	movl      $0, 104(%ebx)
	movl      $2, 96(%ebx)
	movl      %eax, 108(%ebx)
	jne       .L00000720
.L000008B6:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L000008C6
.L000008C1:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L000008C6:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L000008DE:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L000008EB:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L0000071B
.L000008F8:
	xorl      %eax, %eax
.L000008FA:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000902:
	.p2align 3
.L00000908:
	movl      104(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L000009C8
.L00000913:
	movl      108(%ebx), %eax
	movl      56(%ebx), %edx
	movl      5796(%ebx), %ecx
	movzbl    -1(%edx,%eax), %edx
	movl      5792(%ebx), %eax
	movw      $0, (%ecx,%eax,2)
	movl      5784(%ebx), %ecx
	movb      %dl, (%ecx,%eax)
	addl      $1, %eax
	movzbl    %dl, %edx
	movl      %eax, 5792(%ebx)
	addw      $1, 148(%ebx,%edx,4)
	movl      5788(%ebx), %edx
	subl      $1, %edx
	cmpl      %edx, %eax
	je        .L00000A00
.L0000095F:
	movl      (%ebx), %eax
	movl      116(%ebx), %ebp
	addl      $1, 108(%ebx)
	movl      16(%eax), %edi
	subl      $1, %ebp
	movl      %ebp, 116(%ebx)
	testl     %edi, %edi
	je        .L000008F8
.L00000975:
	cmpl      $261, %ebp
	ja        .L0000072C
.L00000981:
	movl      %ebx, %eax
	call      fill_window
.L00000988:
	movl      68(%esp), %ebp
	movl      116(%ebx), %eax
	testl     %ebp, %ebp
	je        .L00000A87
.L00000997:
	testl     %eax, %eax
	je        .L00000A9A
.L0000099F:
	cmpl      $2, %eax
	ja        .L0000072C
.L000009A8:
	movl      96(%ebx), %edi
	movl      112(%ebx), %eax
	movl      $2, 96(%ebx)
	movl      %edi, 120(%ebx)
	movl      %eax, 100(%ebx)
	movl      $2, %eax
	jmp       .L00000798
.L000009C5:
	.p2align 3
.L000009C8:
	movl      116(%ebx), %ebp
	movl      $1, 104(%ebx)
	addl      $1, 108(%ebx)
	subl      $1, %ebp
	movl      %ebp, 116(%ebx)
	jmp       .L00000720
.L000009E1:
	.p2align 3
.L000009E8:
	shrw      $7, %cx
	movzwl    %cx, %ecx
	movzbl    _dist_code+256(%ecx), %eax
	jmp       .L00000813
.L000009FB:
	.p2align 3
.L00000A00:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00000A13
.L00000A0E:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L00000A13:
	movl      %eax, 8(%esp)
	movl      $0, 12(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00000A2B:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00000A38:
	jmp       .L0000095F
.L00000A3D:
	.p2align 3
.L00000A40:
	movl      %ebx, %eax
	call      longest_match
.L00000A47:
	cmpl      $5, %eax
	movl      %eax, 96(%ebx)
	ja        .L00000A5D
.L00000A4F:
	cmpl      $1, 136(%ebx)
	je        .L00000A73
.L00000A58:
	cmpl      $3, %eax
	je        .L00000A65
.L00000A5D:
	movl      120(%ebx), %edi
	jmp       .L00000798
.L00000A65:
	movl      108(%ebx), %edx
	subl      112(%ebx), %edx
	cmpl      $4096, %edx
	jbe       .L00000A5D
.L00000A73:
	movl      $2, 96(%ebx)
	movl      120(%ebx), %edi
	movl      $2, %eax
	jmp       .L00000798
.L00000A87:
	cmpl      $261, %eax
	jbe       .L000008F8
.L00000A92:
	testl     %eax, %eax
	jne       .L0000099F
.L00000A9A:
	movl      104(%ebx), %esi
	testl     %esi, %esi
	jne       .L00000B1C
.L00000AA1:
	movl      108(%ebx), %edx
	movl      $2, %eax
	cmpl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $4, 68(%esp)
	movl      %eax, 5812(%ebx)
	je        .L00000B63
.L00000AC0:
	movl      5792(%ebx), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L000008FA
.L00000AD3:
	movl      92(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00000AE3
.L00000ADE:
	movl      56(%ebx), %ecx
	addl      %eax, %ecx
.L00000AE3:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      $0, 12(%esp)
	call      _tr_flush_block
.L00000AFB:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00000B08:
	movl      (%ebx), %eax
	movl      16(%eax), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	setne     %al
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000B1C:
	movl      108(%ebx), %eax
	movl      56(%ebx), %edx
	movl      5796(%ebx), %ecx
	movzbl    -1(%edx,%eax), %edx
	movl      5792(%ebx), %eax
	movw      $0, (%ecx,%eax,2)
	movl      5784(%ebx), %ecx
	movb      %dl, (%ecx,%eax)
	addl      $1, %eax
	movl      %eax, 5792(%ebx)
	movzbl    %dl, %eax
	addw      $1, 148(%ebx,%eax,4)
	movl      $0, 104(%ebx)
	jmp       .L00000AA1
.L00000B63:
	movl      92(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00000B73
.L00000B6E:
	movl      56(%ebx), %ecx
	addl      %eax, %ecx
.L00000B73:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $1, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00000B8B:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00000B98:
	movl      (%ebx), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $3, %eax
	jmp       .L000008FA
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L00000BA8:
	.p2align 4
# ----------------------
	.local	deflate_fast
	.type	deflate_fast, @function
deflate_fast:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %ebx
.L00000BBB:
	movl      116(%ebx), %ebp
	.p2align 3
.L00000BC0:
	cmpl      $261, %ebp
	jbe       .L00000E60
.L00000BCC:
	movl      108(%ebx), %esi
	movl      56(%ebx), %eax
	movl      88(%ebx), %ecx
	movl      72(%ebx), %edx
	movl      68(%ebx), %ebp
	movzbl    2(%eax,%esi), %eax
	movl      52(%ebx), %edi
	sall      %cl, %edx
	movl      64(%ebx), %ecx
	xorl      %edx, %eax
	andl      84(%ebx), %eax
	andl      %esi, %edi
	movl      %eax, 72(%ebx)
	leal      (%ebp,%eax,2), %eax
	movzwl    (%eax), %edx
	testl     %edx, %edx
	movw      %dx, (%ecx,%edi,2)
	movw      %si, (%eax)
	je        .L00000C18
.L00000C04:
	movl      44(%ebx), %eax
	movl      %esi, %ecx
	subl      %edx, %ecx
	subl      $262, %eax
	cmpl      %eax, %ecx
	jbe       .L00000EA8
.L00000C18:
	movl      96(%ebx), %eax
.L00000C1B:
	cmpl      $2, %eax
	jbe       .L00000DC0
.L00000C24:
	movl      5792(%ebx), %edx
	subl      $3, %eax
	movl      5796(%ebx), %ecx
	subw      112(%ebx), %si
	movw      %si, (%ecx,%edx,2)
	movl      5784(%ebx), %ecx
	subl      $1, %esi
	movb      %al, (%ecx,%edx)
	movzbl    %al, %eax
	addl      $1, %edx
	movzbl    _length_code(%eax), %eax
	movl      %edx, 5792(%ebx)
	addw      $1, 1176(%ebx,%eax,4)
	cmpw      $255, %si
	ja        .L00000E90
.L00000C6E:
	movzwl    %si, %esi
	movzbl    _dist_code(%esi), %eax
.L00000C78:
	addw      $1, 2440(%ebx,%eax,4)
	movl      5788(%ebx), %eax
	movl      116(%ebx), %ebp
	subl      $1, %eax
	cmpl      %eax, %edx
	movl      96(%ebx), %edx
	sete      %al
	movzbl    %al, %eax
	movl      %eax, 28(%esp)
	subl      %edx, %ebp
	cmpl      128(%ebx), %edx
	movl      %edx, 24(%esp)
	movl      %ebp, 116(%ebx)
	ja        .L00000E28
.L00000CB1:
	cmpl      $2, %ebp
	jbe       .L00000E28
.L00000CBA:
	movl      108(%ebx), %edi
	movl      %edx, %esi
	movl      64(%ebx), %edx
	subl      $1, %esi
	movl      88(%ebx), %ecx
	movl      72(%ebx), %eax
	movl      %edi, 56(%esp)
	movl      52(%ebx), %edi
	movl      %edx, 32(%esp)
	movl      68(%ebx), %edx
	movl      %esi, 96(%ebx)
	movl      %ecx, 48(%esp)
	movl      %edi, 36(%esp)
	movl      56(%ebx), %edi
	movl      %edx, 40(%esp)
	movl      56(%esp), %edx
	movl      %ebp, 60(%esp)
	movl      %ebx, 16(%esp)
	movl      %edi, 44(%esp)
	movl      84(%ebx), %edi
	movl      %edi, 52(%esp)
	.p2align 3
.L00000D08:
	movl      16(%esp), %ebx
	addl      $1, %edx
	subl      $1, %esi
	movl      44(%esp), %ebp
	movzbl    48(%esp), %ecx
	movl      %edx, 108(%ebx)
	movzbl    2(%ebp,%edx), %edi
	sall      %cl, %eax
	movl      32(%esp), %ebp
	xorl      %edi, %eax
	movl      36(%esp), %edi
	andl      52(%esp), %eax
	movl      %eax, 72(%ebx)
	movl      40(%esp), %ebx
	andl      %edx, %edi
	testl     %esi, %esi
	leal      (%ebx,%eax,2), %ecx
	movzwl    (%ecx), %ebx
	movw      %bx, (%ebp,%edi,2)
	movl      16(%esp), %edi
	movw      %dx, (%ecx)
	movl      %esi, 96(%edi)
	jne       .L00000D08
.L00000D55:
	movl      56(%esp), %eax
	movl      %edi, %ebx
	addl      24(%esp), %eax
	movl      60(%esp), %ebp
	movl      %eax, 108(%edi)
	.p2align 3
.L00000D68:
	movl      28(%esp), %edi
	testl     %edi, %edi
	je        .L00000BC0
.L00000D74:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00000D84
.L00000D7F:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L00000D84:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00000D9C:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00000DA9:
	movl      (%ebx), %eax
	movl      16(%eax), %esi
	testl     %esi, %esi
	jne       .L00000BBB
.L00000DB6:
	xorl      %eax, %eax
.L00000DB8:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000DC0:
	movl      56(%ebx), %eax
	movl      5796(%ebx), %ecx
	movzbl    (%eax,%esi), %edx
	movl      5792(%ebx), %eax
	movw      $0, (%ecx,%eax,2)
	movl      5784(%ebx), %ecx
	movb      %dl, (%ecx,%eax)
	addl      $1, %eax
	movzbl    %dl, %edx
	movl      %eax, 5792(%ebx)
	addw      $1, 148(%ebx,%edx,4)
	movl      5788(%ebx), %edx
	movl      116(%ebx), %ebp
	subl      $1, %edx
	cmpl      %edx, %eax
	sete      %al
	subl      $1, %ebp
	movzbl    %al, %eax
	movl      %eax, 28(%esp)
	movl      108(%ebx), %eax
	movl      %ebp, 116(%ebx)
	addl      $1, %eax
	movl      %eax, 108(%ebx)
	jmp       .L00000D68
.L00000E23:
	.p2align 3
.L00000E28:
	movl      56(%ebx), %edx
	movl      24(%esp), %eax
	addl      108(%ebx), %eax
	movl      $0, 96(%ebx)
	movl      88(%ebx), %ecx
	movl      %eax, 108(%ebx)
	movzbl    (%edx,%eax), %esi
	movl      %esi, 72(%ebx)
	movzbl    1(%edx,%eax), %edx
	sall      %cl, %esi
	xorl      %esi, %edx
	andl      84(%ebx), %edx
	movl      %edx, 72(%ebx)
	jmp       .L00000D68
.L00000E5A:
	.p2align 3
.L00000E60:
	movl      %ebx, %eax
	call      fill_window
.L00000E67:
	movl      100(%esp), %edx
	movl      116(%ebx), %eax
	testl     %edx, %edx
	je        .L00000EBA
.L00000E72:
	testl     %eax, %eax
	je        .L00000EC9
.L00000E76:
	cmpl      $2, %eax
	ja        .L00000BCC
.L00000E7F:
	movl      96(%ebx), %eax
	movl      108(%ebx), %esi
	jmp       .L00000C1B
.L00000E8A:
	.p2align 3
.L00000E90:
	shrw      $7, %si
	movzwl    %si, %esi
	movzbl    _dist_code+256(%esi), %eax
	jmp       .L00000C78
.L00000EA3:
	.p2align 3
.L00000EA8:
	movl      %ebx, %eax
	call      longest_match
.L00000EAF:
	movl      108(%ebx), %esi
	movl      %eax, 96(%ebx)
	jmp       .L00000C1B
.L00000EBA:
	cmpl      $261, %eax
	jbe       .L00000DB6
.L00000EC5:
	testl     %eax, %eax
	jne       .L00000E76
.L00000EC9:
	movl      108(%ebx), %edx
	movl      $2, %eax
	cmpl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $4, 100(%esp)
	movl      %eax, 5812(%ebx)
	je        .L00000F41
.L00000EE4:
	movl      5792(%ebx), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L00000DB8
.L00000EF7:
	movl      92(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00000F07
.L00000F02:
	movl      56(%ebx), %ecx
	addl      %eax, %ecx
.L00000F07:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      $0, 12(%esp)
	call      _tr_flush_block
.L00000F1F:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00000F2C:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	addl      $76, %esp
	popl      %ebx
	movzbl    %al, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000F41:
	movl      92(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00000F51
.L00000F4C:
	movl      56(%ebx), %ecx
	addl      %eax, %ecx
.L00000F51:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      $1, 12(%esp)
	call      _tr_flush_block
.L00000F69:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00000F76:
	movl      (%ebx), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $76, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L00000F89:
	.p2align 4
# ----------------------
	.local	deflate_stored
	.type	deflate_stored, @function
deflate_stored:
	pushl     %edi
	movl      $65535, %eax
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %ebx
	movl      36(%esp), %edi
	movl      12(%ebx), %esi
	subl      $5, %esi
	cmpl      $65535, %esi
	cmovae    %eax, %esi
	.p2align 3
.L00000FB8:
	movl      116(%ebx), %edx
	cmpl      $1, %edx
	jbe       .L00001080
.L00000FC4:
	addl      108(%ebx), %edx
	movl      92(%ebx), %eax
	movl      $0, 116(%ebx)
	testl     %edx, %edx
	movl      %edx, 108(%ebx)
	leal      (%esi,%eax), %ecx
	je        .L00000FDF
.L00000FDB:
	cmpl      %ecx, %edx
	jb        .L00001028
.L00000FDF:
	subl      %ecx, %edx
	movl      %edx, 116(%ebx)
	xorl      %edx, %edx
	movl      %ecx, 108(%ebx)
	subl      %eax, %ecx
	testl     %eax, %eax
	js        .L00000FF4
.L00000FEF:
	movl      56(%ebx), %edx
	addl      %eax, %edx
.L00000FF4:
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L0000100C:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00001019:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L00001074
.L00001022:
	movl      108(%ebx), %edx
	movl      92(%ebx), %eax
.L00001028:
	movl      44(%ebx), %ecx
	subl      %eax, %edx
	subl      $262, %ecx
	cmpl      %ecx, %edx
	jb        .L00000FB8
.L00001037:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	js        .L00001042
.L0000103D:
	movl      56(%ebx), %ecx
	addl      %eax, %ecx
.L00001042:
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L0000105A:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00001067:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L00000FB8
.L00001074:
	xorl      %eax, %eax
.L00001076:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000107D:
	.p2align 3
.L00001080:
	movl      %ebx, %eax
	call      fill_window
.L00001087:
	movl      116(%ebx), %edx
	testl     %edx, %edx
	sete      %al
	testl     %edi, %edi
	je        .L000010FC
.L00001093:
	testb     %al, %al
	je        .L00000FC4
.L0000109B:
	cmpl      $4, %edi
	movl      $0, 5812(%ebx)
	je        .L00001109
.L000010AA:
	movl      108(%ebx), %ecx
	movl      $1, %eax
	movl      92(%ebx), %edx
	cmpl      %edx, %ecx
	jle       .L00001076
.L000010B9:
	subl      %edx, %ecx
	xorb      %al, %al
	testl     %edx, %edx
	js        .L000010C6
.L000010C1:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L000010C6:
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L000010DE:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L000010EB:
	movl      (%ebx), %eax
	movl      16(%eax), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	setne     %al
	jmp       .L00001076
.L000010FC:
	testb     %al, %al
	je        .L00000FC4
.L00001104:
	jmp       .L00001074
.L00001109:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0000111C
.L00001117:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L0000111C:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $1, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00001134:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00001141:
	movl      (%ebx), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $3, %eax
	jmp       .L00001076
	.size	deflate_stored, .-deflate_stored
# ----------------------
.L00001151:
	.p2align 4
# ----------------------
	.local	deflate_huff
	.type	deflate_huff, @function
deflate_huff:
	pushl     %edi
	pushl     %esi
	movl      %edx, %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $16, %esp
.L0000116A:
	movl      116(%ebx), %edx
	jmp       .L000011D4
.L0000116F:
	.p2align 3
.L00001170:
	movl      108(%ebx), %eax
	movl      56(%ebx), %edx
	movl      $0, 96(%ebx)
	movl      5796(%ebx), %ecx
	movzbl    (%edx,%eax), %edx
	movl      5792(%ebx), %eax
	movw      $0, (%ecx,%eax,2)
	movl      5784(%ebx), %ecx
	movb      %dl, (%ecx,%eax)
	addl      $1, %eax
	movzbl    %dl, %edx
	movl      %eax, 5792(%ebx)
	addw      $1, 148(%ebx,%edx,4)
	movl      5788(%ebx), %edi
	movl      116(%ebx), %edx
	movl      108(%ebx), %ecx
	subl      $1, %edi
	subl      $1, %edx
	addl      $1, %ecx
	cmpl      %edi, %eax
	movl      %edx, 116(%ebx)
	movl      %ecx, 108(%ebx)
	je        .L00001260
.L000011D4:
	testl     %edx, %edx
	jne       .L00001170
.L000011D8:
	movl      %ebx, %eax
	call      fill_window
.L000011DF:
	movl      116(%ebx), %edi
	testl     %edi, %edi
	jne       .L00001170
.L000011E6:
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L00001253
.L000011EC:
	cmpl      $4, %esi
	movl      $0, 5812(%ebx)
	je        .L000012AB
.L000011FF:
	movl      5792(%ebx), %edx
	movl      $1, %eax
	testl     %edx, %edx
	je        .L00001253
.L0000120E:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00001221
.L0000121C:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L00001221:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00001239:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00001246:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
.L00001253:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000125A:
	.p2align 3
.L00001260:
	movl      92(%ebx), %eax
	xorl      %edx, %edx
	subl      %eax, %ecx
	testl     %eax, %eax
	js        .L00001270
.L0000126B:
	movl      56(%ebx), %edx
	addl      %eax, %edx
.L00001270:
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00001288:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00001295:
	movl      (%ebx), %eax
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0000116A
.L000012A2:
	addl      $16, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000012AB:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L000012BE
.L000012B9:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L000012BE:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      $1, 12(%esp)
	call      _tr_flush_block
.L000012D6:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L000012E3:
	movl      (%ebx), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $16, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	ret       
	.size	deflate_huff, .-deflate_huff
# ----------------------
.L000012F5:
	.p2align 4
# ----------------------
	.local	deflate_rle
	.type	deflate_rle, @function
deflate_rle:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $60, %esp
	movzbl    _dist_code, %esi
	movl      %edx, 32(%esp)
.L00001314:
	movl      116(%ebx), %eax
	jmp       .L000013AE
.L0000131C:
	.p2align 3
.L00001320:
	movl      $0, 96(%ebx)
.L00001327:
	movl      108(%ebx), %edx
	movl      56(%ebx), %ecx
	testl     %edx, %edx
	je        .L00001350
.L00001331:
	leal      -1(%ecx,%edx), %edi
	movzbl    1(%edi), %ebp
	movl      %ebp, 28(%esp)
	movzbl    (%edi), %ebp
	cmpl      %ebp, 28(%esp)
	je        .L000013F8
.L0000134A:
	.p2align 3
.L00001350:
	movzbl    (%ecx,%edx), %edx
	movl      5792(%ebx), %eax
	movl      5796(%ebx), %ecx
	movw      $0, (%ecx,%eax,2)
	movl      5784(%ebx), %ecx
	movb      %dl, (%ecx,%eax)
	addl      $1, %eax
	movzbl    %dl, %edx
	movl      %eax, 5792(%ebx)
	xorl      %ecx, %ecx
	addw      $1, 148(%ebx,%edx,4)
	movl      5788(%ebx), %edx
	subl      $1, %edx
	cmpl      %edx, %eax
	movl      116(%ebx), %eax
	movl      108(%ebx), %edx
	sete      %cl
	subl      $1, %eax
	addl      $1, %edx
	testl     %ecx, %ecx
	movl      %eax, 116(%ebx)
	movl      %edx, 108(%ebx)
	jne       .L00001531
.L000013AE:
	cmpl      $258, %eax
	ja        .L00001320
.L000013B9:
	movl      %ebx, %eax
	call      fill_window
.L000013C0:
	movl      32(%esp), %edi
	movl      116(%ebx), %eax
	testl     %edi, %edi
	je        .L0000157D
.L000013CF:
	testl     %eax, %eax
	je        .L0000158C
.L000013D7:
	cmpl      $2, %eax
	movl      $0, 96(%ebx)
	ja        .L00001327
.L000013E7:
	movl      56(%ebx), %ecx
	movl      108(%ebx), %edx
	jmp       .L00001350
.L000013F2:
	.p2align 3
.L000013F8:
	movzbl    2(%edi), %ebp
	cmpl      %ebp, 28(%esp)
	jne       .L00001350
.L00001406:
	movzbl    3(%edi), %ebp
	cmpl      %ebp, 28(%esp)
	jne       .L00001350
.L00001414:
	leal      3(%edi), %ebp
	leal      258(%ecx,%edx), %edi
	movl      %eax, 44(%esp)
	movl      28(%esp), %eax
	movl      %edi, 36(%esp)
	movl      %edx, 40(%esp)
	jmp       .L0000148B
.L00001430:
	movzbl    2(%ebp), %edx
	leal      2(%ebp), %edi
	cmpl      %edx, %eax
	jne       .L00001496
.L0000143B:
	movzbl    3(%ebp), %edx
	leal      3(%ebp), %edi
	cmpl      %edx, %eax
	jne       .L00001496
.L00001446:
	movzbl    4(%ebp), %edx
	leal      4(%ebp), %edi
	cmpl      %edx, %eax
	jne       .L00001496
.L00001451:
	movzbl    5(%ebp), %edx
	leal      5(%ebp), %edi
	cmpl      %edx, %eax
	jne       .L00001496
.L0000145C:
	movzbl    6(%ebp), %edx
	leal      6(%ebp), %edi
	cmpl      %edx, %eax
	jne       .L00001496
.L00001467:
	movzbl    7(%ebp), %edx
	leal      7(%ebp), %edi
	cmpl      %edx, %eax
	jne       .L00001496
.L00001472:
	addl      $8, %ebp
	movzbl    (%ebp), %edx
	cmpl      %edx, %eax
	jne       .L0000164D
.L00001481:
	cmpl      %ebp, 36(%esp)
	jbe       .L0000164D
.L0000148B:
	movzbl    1(%ebp), %edx
	leal      1(%ebp), %edi
	cmpl      %edx, %eax
	je        .L00001430
.L00001496:
	movl      40(%esp), %edx
	movl      %edi, %ebp
	movl      44(%esp), %eax
.L000014A0:
	subl      36(%esp), %ebp
	leal      258(%ebp), %edi
	cmpl      %eax, %edi
	movl      %edi, 96(%ebx)
	ja        .L000015F8
.L000014B5:
	cmpl      $2, %edi
	jbe       .L00001350
.L000014BE:
	movl      5792(%ebx), %eax
	leal      -3(%edi), %edx
	movl      5796(%ebx), %ecx
	movw      $1, (%ecx,%eax,2)
	movl      5784(%ebx), %ecx
	movb      %dl, (%ecx,%eax)
	movzbl    %dl, %edx
	addl      $1, %eax
	movzbl    _length_code(%edx), %edx
	xorl      %ecx, %ecx
	movl      %eax, 5792(%ebx)
	addw      $1, 1176(%ebx,%edx,4)
	addw      $1, 2440(%ebx,%esi,4)
	movl      5788(%ebx), %edx
	subl      $1, %edx
	cmpl      %edx, %eax
	movl      96(%ebx), %edx
	movl      116(%ebx), %eax
	sete      %cl
	movl      $0, 96(%ebx)
	subl      %edx, %eax
	addl      108(%ebx), %edx
	testl     %ecx, %ecx
	movl      %eax, 116(%ebx)
	movl      %edx, 108(%ebx)
	je        .L000013AE
.L00001531:
	movl      92(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L00001541
.L0000153C:
	movl      56(%ebx), %ecx
	addl      %eax, %ecx
.L00001541:
	movl      %ecx, 4(%esp)
	movl      %edx, 8(%esp)
	movl      $0, 12(%esp)
	movl      %ebx, (%esp)
	call      _tr_flush_block
.L00001559:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L00001566:
	movl      (%ebx), %eax
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L00001314
.L00001573:
	xorl      %eax, %eax
.L00001575:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000157D:
	cmpl      $258, %eax
	jbe       .L00001573
.L00001584:
	testl     %eax, %eax
	jne       .L000013D7
.L0000158C:
	cmpl      $4, 32(%esp)
	movl      $0, 5812(%ebx)
	je        .L00001602
.L0000159D:
	movl      5792(%ebx), %edx
	movl      $1, %eax
	testl     %edx, %edx
	je        .L00001575
.L000015AC:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L000015BF
.L000015BA:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L000015BF:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      $0, 12(%esp)
	call      _tr_flush_block
.L000015D7:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L000015E4:
	movl      (%ebx), %eax
	movl      16(%eax), %ebp
	xorl      %eax, %eax
	testl     %ebp, %ebp
	setne     %al
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000015F8:
	movl      %eax, 96(%ebx)
	movl      %eax, %edi
	jmp       .L000014BE
.L00001602:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L00001615
.L00001610:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L00001615:
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      $1, 12(%esp)
	call      _tr_flush_block
.L0000162D:
	movl      108(%ebx), %eax
	movl      %eax, 92(%ebx)
	movl      (%ebx), %eax
	call      flush_pending
.L0000163A:
	movl      (%ebx), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $60, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000164D:
	movl      40(%esp), %edx
	movl      44(%esp), %eax
	jmp       .L000014A0
	.size	deflate_rle, .-deflate_rle
# ----------------------
.L0000165A:
	.p2align 3
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
	movl      100(%esp), %esi
	movl      104(%esp), %edi
	testl     %ecx, %ecx
	je        .L00001896
.L0000167B:
	movl      96(%esp), %edx
	testl     %esi, %esi
	movl      28(%edx), %ebx
	je        .L00001896
.L0000168A:
	testl     %ebx, %ebx
	je        .L00001896
.L00001692:
	movl      24(%ebx), %ebp
	cmpl      $2, %ebp
	movl      %ebp, 52(%esp)
	je        .L00001896
.L000016A2:
	cmpl      $1, %ebp
	je        .L00001820
.L000016AB:
	movl      116(%ebx), %edx
	movl      $-2, %eax
	testl     %edx, %edx
	jne       .L00001805
.L000016BB:
	cmpl      $1, 52(%esp)
	je        .L00001873
.L000016C6:
	movl      44(%ebx), %eax
	movl      $0, 24(%ebx)
	cmpl      %eax, %edi
	jae       .L0000180D
.L000016D8:
	movl      96(%esp), %edx
	movl      96(%esp), %ebp
	movl      4(%edx), %edx
	movl      (%ebp), %ebp
	movl      %edx, 56(%esp)
	movl      96(%esp), %edx
	movl      %ebp, 60(%esp)
	movl      %edi, 4(%edx)
	movl      %esi, (%edx)
	.p2align 3
.L000016F8:
	movl      %ebx, %eax
	call      fill_window
.L000016FF:
	movl      116(%ebx), %ebp
	cmpl      $2, %ebp
	movl      %ebp, 44(%esp)
	jbe       .L000017B8
.L0000170F:
	movl      56(%ebx), %edx
	movl      84(%ebx), %ebp
	movl      108(%ebx), %eax
	movl      44(%esp), %esi
	movl      %edx, 24(%esp)
	movl      64(%ebx), %edx
	movl      88(%ebx), %ecx
	movl      %ebp, 28(%esp)
	movl      52(%ebx), %ebp
	movl      %eax, 48(%esp)
	movl      72(%ebx), %eax
	subl      $2, %esi
	movl      %edx, 32(%esp)
	movl      68(%ebx), %edx
	movl      %ebx, 20(%esp)
	movl      %ebp, 36(%esp)
	movl      %ecx, 16(%esp)
	movl      %edx, 40(%esp)
	movl      48(%esp), %edx
	.p2align 3
.L00001758:
	movl      24(%esp), %ebx
	movzbl    16(%esp), %ecx
	movl      40(%esp), %ebp
	movzbl    2(%ebx,%edx), %edi
	sall      %cl, %eax
	movl      20(%esp), %ebx
	xorl      %edi, %eax
	andl      28(%esp), %eax
	leal      (%ebp,%eax,2), %edi
	movl      36(%esp), %ebp
	movl      %eax, 72(%ebx)
	movzwl    (%edi), %ecx
	movl      32(%esp), %ebx
	andl      %edx, %ebp
	movw      %cx, (%ebx,%ebp,2)
	movw      %dx, (%edi)
	addl      $1, %edx
	subl      $1, %esi
	jne       .L00001758
.L00001799:
	movl      44(%esp), %edx
	movl      48(%esp), %ebp
	movl      20(%esp), %ebx
	leal      -2(%edx,%ebp), %eax
	movl      %eax, 108(%ebx)
	movl      $2, 116(%ebx)
	jmp       .L000016F8
.L000017B8:
	movl      44(%esp), %eax
	addl      108(%ebx), %eax
	movl      96(%esp), %edx
	movl      60(%esp), %ebp
	movl      %eax, 108(%ebx)
	movl      %eax, 92(%ebx)
	movl      44(%esp), %eax
	movl      $0, 116(%ebx)
	movl      $2, 120(%ebx)
	movl      $2, 96(%ebx)
	movl      %eax, 5812(%ebx)
	xorl      %eax, %eax
	movl      $0, 104(%ebx)
	movl      %ebp, (%edx)
	movl      56(%esp), %ebp
	movl      %ebp, 4(%edx)
	movl      52(%esp), %edx
	movl      %edx, 24(%ebx)
.L00001805:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000180D:
	movl      52(%esp), %ebp
	testl     %ebp, %ebp
	je        .L00001831
.L00001815:
	subl      %eax, %edi
	addl      %edi, %esi
	movl      %eax, %edi
	jmp       .L000016D8
.L00001820:
	cmpl      $42, 4(%ebx)
	movl      $-2, %eax
	je        .L000016AB
.L0000182F:
	jmp       .L00001805
.L00001831:
	movl      76(%ebx), %edx
	movl      68(%ebx), %eax
	movw      $0, -2(%eax,%edx,2)
	leal      -2(%edx,%edx), %edx
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset
.L00001856:
	movl      44(%ebx), %eax
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 5812(%ebx)
	jmp       .L00001815
.L00001873:
	movl      96(%esp), %edx
	movl      %edi, 8(%esp)
	movl      %esi, 4(%esp)
	movl      48(%edx), %eax
	movl      %eax, (%esp)
	call      adler32
.L0000188A:
	movl      96(%esp), %ebp
	movl      %eax, 48(%ebp)
	jmp       .L000016C6
.L00001896:
	movl      $-2, %eax
	jmp       .L00001805
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ebx
	testl     %ebx, %ebx
	je        .L00001978
.L000018B1:
	movl      28(%ebx), %esi
	testl     %esi, %esi
	je        .L00001978
.L000018BC:
	movl      32(%ebx), %eax
	testl     %eax, %eax
	je        .L00001978
.L000018C7:
	movl      36(%ebx), %eax
	testl     %eax, %eax
	je        .L00001978
.L000018D2:
	movl      8(%esi), %eax
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	movl      $2, 44(%ebx)
	movl      %eax, 16(%esi)
	movl      24(%esi), %eax
	movl      $0, 20(%esi)
	cmpl      $0, %eax
	jl        .L00001948
.L00001903:
	jne       .L0000194D
.L00001905:
	movl      $113, 4(%esi)
.L0000190C:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      adler32
.L00001928:
	movl      %eax, 48(%ebx)
	movl      $0, 40(%esi)
	movl      %esi, (%esp)
	call      _tr_init
.L0000193A:
	xorl      %eax, %eax
.L0000193C:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L00001942:
	.p2align 3
.L00001948:
	negl      %eax
	movl      %eax, 24(%esi)
.L0000194D:
	cmpl      $2, %eax
	movl      $42, 4(%esi)
	jne       .L0000190C
.L00001959:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32
.L00001975:
	jmp       .L00001928
.L00001977:
	.p2align 3
.L00001978:
	movl      $-2, %eax
	jmp       .L0000193C
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
.L0000197F:
	.p2align 3
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	subl      $28, %esp
	movl      %esi, 24(%esp)
	movl      32(%esp), %esi
	movl      %ebx, 20(%esp)
	movl      %esi, (%esp)
	call      deflateResetKeep
.L00001997:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L000019A5
.L0000199D:
	movl      28(%esi), %eax
	call      lm_init
.L000019A5:
	movl      %ebx, %eax
	movl      24(%esp), %esi
	movl      20(%esp), %ebx
	addl      $28, %esp
	ret       
	.size	deflateReset, .-deflateReset
# ----------------------
.L000019B3:
	.p2align 4
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L000019EA
.L000019C8:
	movl      28(%eax), %edx
	movl      $-2, %eax
	testl     %edx, %edx
	je        .L000019E8
.L000019D4:
	cmpl      $2, 24(%edx)
	jne       .L000019E8
.L000019DA:
	movl      8(%esp), %eax
	movl      %eax, 28(%edx)
	xorl      %eax, %eax
	ret       
.L000019E4:
	.p2align 3
.L000019E8:
	rep; ret       
.L000019EA:
	movl      $-2, %eax
	ret       
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	pushl     %ebx
	movl      8(%esp), %eax
	movl      12(%esp), %ebx
	movl      16(%esp), %ecx
	testl     %eax, %eax
	je        .L00001A28
.L00001A01:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L00001A28
.L00001A08:
	testl     %ebx, %ebx
	je        .L00001A11
.L00001A0C:
	movl      20(%edx), %eax
	movl      %eax, (%ebx)
.L00001A11:
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L00001A1F
.L00001A17:
	movl      5820(%edx), %edx
	movl      %edx, (%ecx)
.L00001A1F:
	popl      %ebx
	ret       
.L00001A21:
	.p2align 3
.L00001A28:
	movl      $-2, %eax
	popl      %ebx
	ret       
	.size	deflatePending, .-deflatePending
# ----------------------
.L00001A2F:
	.p2align 3
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	testl     %eax, %eax
	je        .L00001AB5
.L00001A47:
	movl      28(%eax), %esi
	testl     %esi, %esi
	je        .L00001AB5
.L00001A4E:
	movl      16(%esi), %edx
	movl      $-5, %eax
	addl      $2, %edx
	cmpl      %edx, 5796(%esi)
	jb        .L00001AAD
.L00001A61:
	.p2align 3
.L00001A68:
	movl      5820(%esi), %edx
	movl      $16, %ebx
	movl      $1, %eax
	subl      %edx, %ebx
	cmpl      %ebx, %edi
	cmovle    %edi, %ebx
	movl      %ebx, %ecx
	sall      %cl, %eax
	movl      %edx, %ecx
	subl      $1, %eax
	addl      %ebx, %edx
	andl      %ebp, %eax
	sall      %cl, %eax
	orw       %ax, 5816(%esi)
	movl      %edx, 5820(%esi)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00001AA3:
	movl      %ebx, %ecx
	sarl      %cl, %ebp
	subl      %ebx, %edi
	jne       .L00001A68
.L00001AAB:
	xorl      %eax, %eax
.L00001AAD:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001AB5:
	movl      $-2, %eax
	jmp       .L00001AAD
	.size	deflatePrime, .-deflatePrime
# ----------------------
.L00001ABC:
	.p2align 3
# ----------------------
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %edi
	movl      68(%esp), %esi
	testl     %edi, %edi
	je        .L00001F08
.L00001AD7:
	movl      28(%edi), %ebx
	testl     %ebx, %ebx
	je        .L00001F08
.L00001AE2:
	cmpl      $-1, %esi
	je        .L00001B98
.L00001AEB:
	cmpl      $9, %esi
	ja        .L00001F08
.L00001AF4:
	movl      72(%esp), %eax
	shrl      $31, %eax
	testb     %al, %al
	jne       .L00001F08
.L00001B03:
	cmpl      $4, 72(%esp)
	movl      $-2, %eax
	jg        .L00001B8D
.L00001B0F:
	movl      132(%ebx), %edx
	movl      72(%esp), %ecx
	leal      (%edx,%edx,2), %eax
	movl      configuration_table+8(,%eax,4), %eax
	movl      %eax, 16(%esp)
	movl      136(%ebx), %eax
	cmpl      %ecx, %eax
	movl      %eax, 24(%esp)
	je        .L00001BA8
.L00001B35:
	movl      8(%edi), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	jne       .L00001BC7
.L00001B42:
	cmpl      %edx, %esi
	je        .L00001B83
.L00001B46:
	leal      (%esi,%esi,2), %ecx
	sall      $2, %ecx
	leal      configuration_table(%ecx), %edx
	movl      %esi, 132(%ebx)
	movzwl    configuration_table+2(%ecx), %esi
	movzwl    configuration_table(%ecx), %ecx
	movl      %esi, 128(%ebx)
	movl      %ecx, 140(%ebx)
	movzwl    4(%edx), %ecx
	movzwl    6(%edx), %edx
	movl      %ecx, 144(%ebx)
	movl      %edx, 124(%ebx)
.L00001B83:
	movl      72(%esp), %ecx
	movl      %ecx, 136(%ebx)
.L00001B8D:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001B95:
	.p2align 3
.L00001B98:
	movl      $6, %esi
	jmp       .L00001AF4
.L00001BA2:
	.p2align 3
.L00001BA8:
	leal      (%esi,%esi,2), %ebp
	movl      16(%esp), %ecx
	xorl      %eax, %eax
	cmpl      %ecx, configuration_table+8(,%ebp,4)
	je        .L00001B42
.L00001BBA:
	movl      8(%edi), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L00001B42
.L00001BC7:
	movl      12(%edi), %eax
	testl     %eax, %eax
	je        .L00002048
.L00001BD2:
	movl      (%edi), %eax
	testl     %eax, %eax
	je        .L00002038
.L00001BDC:
	movl      4(%ebx), %ebp
	cmpl      $666, %ebp
	je        .L00002048
.L00001BEB:
	movl      16(%edi), %eax
	testl     %eax, %eax
	je        .L0000224E
.L00001BF6:
	movl      40(%ebx), %ecx
	cmpl      $42, %ebp
	movl      %edi, (%ebx)
	movl      $5, 40(%ebx)
	movl      %ecx, 16(%esp)
	je        .L00001CE0
.L00001C0F:
	cmpl      $69, %ebp
	je        .L00001DB8
.L00001C18:
	movl      20(%ebx), %eax
.L00001C1B:
	cmpl      $73, %ebp
	je        .L00002030
.L00001C24:
	cmpl      $91, %ebp
	je        .L000020F0
.L00001C2D:
	cmpl      $103, %ebp
	je        .L00002080
.L00001C36:
	testl     %eax, %eax
	jne       .L00001EE8
.L00001C3E:
	movl      4(%edi), %eax
	testl     %eax, %eax
	jne       .L00001C62
.L00001C45:
	movl      16(%esp), %edx
	xorl      %ecx, %ecx
	addl      %edx, %edx
	cmpl      $5, 16(%esp)
	setge     %cl
	leal      (%ecx,%ecx,8), %ecx
	subl      %ecx, %edx
	testl     %edx, %edx
	jg        .L0000243C
.L00001C62:
	movl      4(%ebx), %edx
	cmpl      $666, %edx
	je        .L00001EC0
.L00001C71:
	testl     %eax, %eax
	je        .L00001EC8
.L00001C79:
	movl      136(%ebx), %eax
	cmpl      $2, %eax
	je        .L000021C0
.L00001C88:
	cmpl      $3, %eax
	je        .L00002018
.L00001C91:
	movl      132(%ebx), %eax
	movl      $5, 4(%esp)
	movl      %ebx, (%esp)
	leal      (%eax,%eax,2), %eax
	call      *configuration_table+8(,%eax,4)
.L00001CAC:
	leal      -2(%eax), %edx
	cmpl      $1, %edx
	jbe       .L00002008
.L00001CB8:
	cmpl      $2, %eax
	je        .L00001CC5
.L00001CBD:
	testl     %eax, %eax
	jne       .L00001E50
.L00001CC5:
	movl      16(%edi), %eax
	testl     %eax, %eax
	je        .L00001EF6
.L00001CD0:
	movl      132(%ebx), %edx
	xorl      %eax, %eax
	jmp       .L00001B42
.L00001CDD:
	.p2align 3
.L00001CE0:
	cmpl      $2, 24(%ebx)
	je        .L00002280
.L00001CEA:
	movl      48(%ebx), %eax
	sall      $12, %eax
	leal      -30720(%eax), %ebp
	xorl      %eax, %eax
	cmpl      $1, 24(%esp)
	jle       .L00001F98
.L00001D03:
	movl      %eax, %ecx
	movl      $138547333, %edx
	orl       %ebp, %ecx
	movl      108(%ebx), %ebp
	movl      %ecx, %eax
	orl       $32, %eax
	movl      $113, 4(%ebx)
	testl     %ebp, %ebp
	movl      8(%ebx), %ebp
	cmovne    %eax, %ecx
	movl      %ecx, %eax
	mull      %edx
	subl      %edx, %ecx
	shrl      $1, %ecx
	addl      %ecx, %edx
	shrl      $4, %edx
	movl      %edx, %eax
	sall      $5, %eax
	subl      %edx, %eax
	leal      31(%eax), %edx
	movl      20(%ebx), %eax
	movl      %edx, %ecx
	shrl      $8, %ecx
	movb      %cl, (%ebp,%eax)
	movl      8(%ebx), %ecx
	movb      %dl, 1(%ecx,%eax)
	leal      2(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      108(%ebx), %edx
	testl     %edx, %edx
	je        .L00001D90
.L00001D5A:
	movl      48(%edi), %edx
	movl      8(%ebx), %ebp
	movl      %edx, %ecx
	shrl      $24, %edx
	movb      %dl, 2(%ebp,%eax)
	movl      8(%ebx), %edx
	shrl      $16, %ecx
	movb      %cl, 3(%edx,%eax)
	movzwl    48(%edi), %edx
	movl      8(%ebx), %ebp
	movl      %edx, %ecx
	shrl      $8, %ecx
	movb      %cl, 4(%ebp,%eax)
	movl      8(%ebx), %ecx
	movb      %dl, 5(%ecx,%eax)
	addl      $6, %eax
	movl      %eax, 20(%ebx)
.L00001D90:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      adler32
.L00001DAC:
	movl      4(%ebx), %ebp
	movl      %eax, 48(%edi)
	jmp       .L00001C0F
.L00001DB7:
	.p2align 3
.L00001DB8:
	movl      28(%ebx), %eax
	movl      %eax, 20(%esp)
	movl      20(%ebx), %eax
.L00001DC2:
	movl      20(%esp), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	je        .L0000222A
.L00001DD1:
	movl      32(%ebx), %ecx
	movzwl    20(%edx), %ebp
	movl      %eax, 24(%esp)
	cmpl      %ebp, %ecx
	jae       .L00001E70
.L00001DE4:
	movl      %esi, 28(%esp)
	movl      %eax, %ebp
	movl      %edx, %esi
	jmp       .L00001E19
.L00001DEE:
	.p2align 3
.L00001DF0:
	movl      16(%esi), %edx
	movzbl    (%edx,%ecx), %ecx
	movl      8(%ebx), %edx
	movb      %cl, (%edx,%eax)
	movl      28(%ebx), %edx
	addl      $1, %eax
	movl      32(%ebx), %ecx
	movl      %eax, 20(%ebx)
	movzwl    20(%edx), %esi
	addl      $1, %ecx
	movl      %ecx, 32(%ebx)
	cmpl      %esi, %ecx
	jae       .L00001E68
.L00001E17:
	movl      %edx, %esi
.L00001E19:
	cmpl      %eax, 12(%ebx)
	jne       .L00001DF0
.L00001E1E:
	movl      44(%edx), %edx
	testl     %edx, %edx
	je        .L00001E2D
.L00001E25:
	cmpl      %eax, %ebp
	jb        .L00002060
.L00001E2D:
	movl      %edi, %eax
	call      flush_pending
.L00001E34:
	movl      20(%ebx), %ebp
	cmpl      12(%ebx), %ebp
	je        .L00002218
.L00001E40:
	movl      28(%ebx), %esi
	movl      %ebp, %eax
	movl      32(%ebx), %ecx
	jmp       .L00001DF0
.L00001E4A:
	.p2align 3
.L00001E50:
	cmpl      $1, %eax
	jne       .L00001CD0
.L00001E59:
	movl      %edi, %eax
	call      flush_pending
.L00001E60:
	jmp       .L00001CC5
.L00001E65:
	.p2align 3
.L00001E68:
	movl      28(%esp), %esi
	movl      %ebp, 24(%esp)
.L00001E70:
	movl      44(%edx), %ebp
	testl     %ebp, %ebp
	je        .L00001EA8
.L00001E77:
	cmpl      %eax, 24(%esp)
	jae       .L00001EA8
.L00001E7D:
	subl      24(%esp), %eax
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	addl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00001E9B:
	movl      28(%ebx), %edx
	movl      %eax, 48(%edi)
	.p2align 3
.L00001EA8:
	movl      20(%edx), %ecx
	cmpl      %ecx, 32(%ebx)
	je        .L00001F20
.L00001EB0:
	movl      4(%ebx), %ebp
	movl      20(%ebx), %eax
	jmp       .L00001C1B
.L00001EBB:
	.p2align 3
.L00001EC0:
	testl     %eax, %eax
	jne       .L00001FBE
.L00001EC8:
	movl      116(%ebx), %eax
	testl     %eax, %eax
	jne       .L00001C79
.L00001ED3:
	cmpl      $666, %edx
	jne       .L00001C79
.L00001EDF:
	jmp       .L00001CD0
.L00001EE4:
	.p2align 3
.L00001EE8:
	movl      %edi, %eax
	call      flush_pending
.L00001EEF:
	movl      16(%edi), %eax
	testl     %eax, %eax
	jne       .L00001F18
.L00001EF6:
	movl      $-1, 40(%ebx)
	jmp       .L00001CD0
.L00001F02:
	.p2align 3
.L00001F08:
	movl      $-2, %eax
	jmp       .L00001B8D
.L00001F12:
	.p2align 3
.L00001F18:
	movl      4(%edi), %eax
	jmp       .L00001C62
.L00001F20:
	movl      20(%ebx), %eax
	movl      $0, 32(%ebx)
	movl      $73, 4(%ebx)
.L00001F31:
	movl      28(%edx), %ecx
	testl     %ecx, %ecx
	je        .L00002236
.L00001F3C:
	movl      %eax, %ecx
	jmp       .L00001F64
.L00001F40:
	movl      32(%ebx), %ebp
	movl      28(%edx), %edx
	movzbl    (%edx,%ebp), %edx
	addl      $1, %ebp
	movl      %ebp, 32(%ebx)
	movl      8(%ebx), %ebp
	movb      %dl, (%ebp,%ecx)
	addl      $1, %ecx
	testb     %dl, %dl
	movl      %ecx, 20(%ebx)
	je        .L00001FE0
.L00001F61:
	movl      28(%ebx), %edx
.L00001F64:
	cmpl      %ecx, 12(%ebx)
	jne       .L00001F40
.L00001F69:
	movl      44(%edx), %ebp
	testl     %ebp, %ebp
	je        .L00001F78
.L00001F70:
	cmpl      %eax, %ecx
	ja        .L000021D8
.L00001F78:
	movl      %edi, %eax
	call      flush_pending
.L00001F7F:
	movl      20(%ebx), %eax
	cmpl      12(%ebx), %eax
	je        .L00002424
.L00001F8B:
	movl      28(%ebx), %edx
	movl      %eax, %ecx
	jmp       .L00001F40
.L00001F92:
	.p2align 3
.L00001F98:
	cmpl      $1, %edx
	jle       .L00001D03
.L00001FA1:
	cmpl      $5, %edx
	movb      $64, %al
	jle       .L00001D03
.L00001FAC:
	cmpl      $6, %edx
	movb      $192, %al
	movl      $128, %edx
	cmove     %edx, %eax
	jmp       .L00001D03
.L00001FBE:
	movl      z_errmsg+28, %eax
	movl      132(%ebx), %edx
	movl      %eax, 24(%edi)
	movl      20(%ebx), %eax
	.p2align 3
.L00001FD0:
	cmpl      $1, %eax
	sbbl      %eax, %eax
	notl      %eax
	andl      $-5, %eax
	jmp       .L00001B42
.L00001FDF:
	.p2align 3
.L00001FE0:
	xorl      %ebp, %ebp
.L00001FE2:
	movl      28(%ebx), %edx
	movl      44(%edx), %edx
	testl     %edx, %edx
	je        .L00001FF4
.L00001FEC:
	cmpl      %ecx, %eax
	jb        .L00002404
.L00001FF4:
	testl     %ebp, %ebp
	je        .L00002188
.L00001FFC:
	movl      4(%ebx), %ebp
	movl      20(%ebx), %eax
	jmp       .L00001C24
.L00002007:
	.p2align 3
.L00002008:
	movl      $666, 4(%ebx)
	jmp       .L00001CB8
.L00002014:
	.p2align 3
.L00002018:
	movl      $5, %edx
	movl      %ebx, %eax
	call      deflate_rle
.L00002024:
	jmp       .L00001CAC
.L00002029:
	.p2align 4
.L00002030:
	movl      28(%ebx), %edx
	jmp       .L00001F31
.L00002038:
	movl      4(%edi), %eax
	testl     %eax, %eax
	.p2align 3
	je        .L00001BDC
.L00002046:
	.p2align 3
.L00002048:
	movl      z_errmsg+16, %eax
	movl      %eax, 24(%edi)
	movl      $-2, %eax
	jmp       .L00001B42
.L0000205A:
	.p2align 3
.L00002060:
	subl      %ebp, %eax
	movl      %eax, 8(%esp)
	addl      8(%ebx), %ebp
	movl      %ebp, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002078:
	movl      %eax, 48(%edi)
	jmp       .L00001E2D
.L00002080:
	movl      28(%ebx), %edx
.L00002083:
	movl      44(%edx), %edx
	testl     %edx, %edx
	je        .L000020E0
.L0000208A:
	leal      2(%eax), %edx
	cmpl      12(%ebx), %edx
	ja        .L0000225E
.L00002096:
	movzbl    48(%edi), %ecx
	movl      8(%ebx), %ebp
	movb      %cl, (%ebp,%eax)
	movl      48(%edi), %ecx
	movl      8(%ebx), %ebp
	shrl      $8, %ecx
	movb      %cl, 1(%ebp,%eax)
	movl      %edx, 20(%ebx)
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32
.L000020CD:
	movl      %eax, 48(%edi)
	movl      20(%ebx), %eax
	movl      $113, 4(%ebx)
	jmp       .L00001C36
.L000020DF:
	.p2align 3
.L000020E0:
	movl      $113, 4(%ebx)
	jmp       .L00001C36
.L000020EC:
	.p2align 3
.L000020F0:
	movl      28(%ebx), %edx
.L000020F3:
	movl      36(%edx), %ecx
	testl     %ecx, %ecx
	je        .L00002242
.L000020FE:
	movl      %eax, %ecx
	jmp       .L0000212C
.L00002102:
	.p2align 3
.L00002108:
	movl      32(%ebx), %ebp
	movl      36(%edx), %edx
	movzbl    (%edx,%ebp), %edx
	addl      $1, %ebp
	movl      %ebp, 32(%ebx)
	movl      8(%ebx), %ebp
	movb      %dl, (%ebp,%ecx)
	addl      $1, %ecx
	testb     %dl, %dl
	movl      %ecx, 20(%ebx)
	je        .L00002160
.L00002129:
	movl      28(%ebx), %edx
.L0000212C:
	cmpl      %ecx, 12(%ebx)
	jne       .L00002108
.L00002131:
	movl      44(%edx), %ebp
	testl     %ebp, %ebp
	je        .L00002140
.L00002138:
	cmpl      %eax, %ecx
	ja        .L000021F8
.L00002140:
	movl      %edi, %eax
	call      flush_pending
.L00002147:
	movl      20(%ebx), %eax
	cmpl      12(%ebx), %eax
	je        .L00002430
.L00002153:
	movl      28(%ebx), %edx
	movl      %eax, %ecx
	jmp       .L00002108
.L0000215A:
	.p2align 3
.L00002160:
	xorl      %ebp, %ebp
.L00002162:
	movl      28(%ebx), %edx
	movl      44(%edx), %edx
	testl     %edx, %edx
	je        .L00002174
.L0000216C:
	cmpl      %ecx, %eax
	jb        .L000023E4
.L00002174:
	testl     %ebp, %ebp
	je        .L000021A8
.L00002178:
	movl      4(%ebx), %ebp
	movl      20(%ebx), %eax
	jmp       .L00001C2D
.L00002183:
	.p2align 3
.L00002188:
	movl      $0, 32(%ebx)
	movl      28(%ebx), %edx
	movl      $91, 4(%ebx)
	movl      20(%ebx), %eax
	jmp       .L000020F3
.L000021A1:
	.p2align 3
.L000021A8:
	movl      $103, 4(%ebx)
	movl      28(%ebx), %edx
	movl      20(%ebx), %eax
	jmp       .L00002083
.L000021BA:
	.p2align 3
.L000021C0:
	movl      $5, %edx
	movl      %ebx, %eax
	call      deflate_huff
.L000021CC:
	jmp       .L00001CAC
.L000021D1:
	.p2align 3
.L000021D8:
	subl      %eax, %ecx
	movl      %ecx, 8(%esp)
	addl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L000021F0:
	movl      %eax, 48(%edi)
	jmp       .L00001F78
.L000021F8:
	subl      %eax, %ecx
	movl      %ecx, 8(%esp)
	addl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002210:
	movl      %eax, 48(%edi)
	jmp       .L00002140
.L00002218:
	movl      %ebp, 24(%esp)
	movl      28(%esp), %esi
	movl      %ebp, %eax
	movl      28(%ebx), %edx
	jmp       .L00001E70
.L0000222A:
	movl      $73, 4(%ebx)
	jmp       .L00001F31
.L00002236:
	movl      $91, 4(%ebx)
	jmp       .L000020F3
.L00002242:
	movl      $103, 4(%ebx)
	jmp       .L00002083
.L0000224E:
	movl      z_errmsg+28, %eax
	movl      %eax, 24(%edi)
	movl      20(%ebx), %eax
	jmp       .L00001FD0
.L0000225E:
	movl      %edi, %eax
	call      flush_pending
.L00002265:
	movl      20(%ebx), %eax
	leal      2(%eax), %edx
	cmpl      12(%ebx), %edx
	ja        .L00001C36
.L00002274:
	jmp       .L00002096
.L00002279:
	.p2align 4
.L00002280:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32
.L0000229C:
	movl      20(%ebx), %edx
	movl      %eax, 48(%edi)
	movl      8(%ebx), %eax
	movb      $31, (%eax,%edx)
	movl      8(%ebx), %eax
	movb      $139, 1(%eax,%edx)
	movl      8(%ebx), %eax
	movb      $8, 2(%eax,%edx)
	movl      28(%ebx), %ecx
	leal      3(%edx), %eax
	movl      %eax, 20(%ebx)
	testl     %ecx, %ecx
	je        .L00002487
.L000022CA:
	addl      8(%ebx), %eax
	movl      %eax, 20(%esp)
	movl      (%ecx), %eax
	testl     %eax, %eax
	setne     %al
	cmpl      $1, 44(%ecx)
	movl      %eax, %ebp
	sbbl      %eax, %eax
	notl      %eax
	andl      $2, %eax
	addl      %eax, %ebp
	cmpl      $1, 16(%ecx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $4, %eax
	addl      %eax, %ebp
	cmpl      $1, 28(%ecx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $8, %eax
	addl      %eax, %ebp
	cmpl      $1, 36(%ecx)
	movl      20(%esp), %ecx
	sbbl      %eax, %eax
	notl      %eax
	andl      $16, %eax
	addl      %ebp, %eax
	movb      %al, (%ecx)
	movl      28(%ebx), %eax
	movl      8(%ebx), %ecx
	movl      4(%eax), %eax
	movb      %al, 4(%ecx,%edx)
	movl      28(%ebx), %eax
	movl      8(%ebx), %ecx
	movl      4(%eax), %eax
	shrl      $8, %eax
	movb      %al, 5(%ecx,%edx)
	movl      28(%ebx), %eax
	movl      8(%ebx), %ecx
	movzwl    6(%eax), %eax
	movb      %al, 6(%ecx,%edx)
	movl      28(%ebx), %eax
	movl      8(%ebx), %ecx
	movzbl    7(%eax), %eax
	movb      %al, 7(%ecx,%edx)
	movl      132(%ebx), %ebp
	leal      8(%edx), %ecx
	movl      %ecx, 20(%ebx)
	movl      $2, %eax
	addl      8(%ebx), %ecx
	cmpl      $9, %ebp
	je        .L00002378
.L00002366:
	cmpl      $1, 136(%ebx)
	movl      $4, %eax
	jle       .L00002479
.L00002378:
	movb      %al, (%ecx)
	movl      28(%ebx), %eax
	movl      8(%ebx), %ecx
	movl      12(%eax), %eax
	movb      %al, 9(%ecx,%edx)
	movl      28(%ebx), %ecx
	leal      10(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      16(%ecx), %ebp
	movl      %ecx, 20(%esp)
	testl     %ebp, %ebp
	je        .L000023C6
.L0000239B:
	movl      %ecx, %ebp
	movl      8(%ebx), %ecx
	movl      20(%ebp), %eax
	movb      %al, 10(%ecx,%edx)
	movl      28(%ebx), %eax
	movl      8(%ebx), %ecx
	movl      20(%eax), %eax
	shrl      $8, %eax
	movb      %al, 11(%ecx,%edx)
	leal      12(%edx), %eax
	movl      28(%ebx), %edx
	movl      %eax, 20(%ebx)
	movl      %edx, 20(%esp)
	movl      %edx, %ecx
.L000023C6:
	movl      44(%ecx), %ecx
	testl     %ecx, %ecx
	jne       .L00002451
.L000023D1:
	movl      $0, 32(%ebx)
	movl      $69, 4(%ebx)
	jmp       .L00001DC2
.L000023E4:
	subl      %eax, %ecx
	movl      %ecx, 8(%esp)
	addl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L000023FC:
	movl      %eax, 48(%edi)
	jmp       .L00002174
.L00002404:
	subl      %eax, %ecx
	movl      %ecx, 8(%esp)
	addl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L0000241C:
	movl      %eax, 48(%edi)
	jmp       .L00001FF4
.L00002424:
	movl      %eax, %ecx
	movl      $1, %ebp
	jmp       .L00001FE2
.L00002430:
	movl      %eax, %ecx
	movl      $1, %ebp
	jmp       .L00002162
.L0000243C:
	movl      z_errmsg+28, %eax
	movl      132(%ebx), %edx
	movl      %eax, 24(%edi)
	xorl      %eax, %eax
	jmp       .L00001B42
.L00002451:
	movl      %eax, 8(%esp)
	movl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%edi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002467:
	movl      %eax, 48(%edi)
	movl      28(%ebx), %eax
	movl      %eax, 20(%esp)
	movl      20(%ebx), %eax
	jmp       .L000023D1
.L00002479:
	cmpl      $1, %ebp
	setle     %al
	sall      $2, %eax
	jmp       .L00002378
.L00002487:
	movl      8(%ebx), %eax
	leal      8(%edx), %ebp
	movb      $0, 3(%eax,%edx)
	movl      8(%ebx), %eax
	movb      $0, 4(%eax,%edx)
	movl      8(%ebx), %eax
	movb      $0, 5(%eax,%edx)
	movl      8(%ebx), %eax
	movb      $0, 6(%eax,%edx)
	movl      8(%ebx), %eax
	movb      $0, 7(%eax,%edx)
	movl      132(%ebx), %ecx
	movl      $2, %eax
	movl      %ebp, 20(%ebx)
	addl      8(%ebx), %ebp
	cmpl      $9, %ecx
	je        .L000024D6
.L000024C8:
	cmpl      $1, 136(%ebx)
	movl      $4, %eax
	jle       .L000024F3
.L000024D6:
	movb      %al, (%ebp)
	movl      8(%ebx), %eax
	movb      $3, 9(%eax,%edx)
	leal      10(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      $113, 4(%ebx)
	jmp       .L00001C36
.L000024F3:
	subl      $1, %ecx
	setle     %al
	sall      $2, %eax
	jmp       .L000024D6
	.size	deflateParams, .-deflateParams
# ----------------------
.L000024FE:
	.p2align 3
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L00002537
.L00002508:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L0000253D
.L0000250F:
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
.L00002537:
	movl      $-2, %eax
	ret       
.L0000253D:
	movl      $-2, %eax
	ret       
	.size	deflateTune, .-deflateTune
# ----------------------
.L00002543:
	.p2align 4
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	subl      $16, %esp
	movl      24(%esp), %ecx
	movl      %ebx, (%esp)
	movl      20(%esp), %ebx
	movl      %esi, 4(%esp)
	movl      %edi, 8(%esp)
	leal      7(%ecx), %esi
	movl      %esi, %edx
	leal      63(%ecx), %eax
	shrl      $3, %edx
	shrl      $6, %eax
	addl      %edx, %eax
	addl      %ecx, %eax
	testl     %ebx, %ebx
	movl      %ebp, 12(%esp)
	je        .L00002660
.L00002584:
	movl      28(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L00002660
.L0000258F:
	movl      24(%ebx), %edx
	cmpl      $1, %edx
	je        .L00002648
.L0000259B:
	cmpl      $2, %edx
	je        .L000025C8
.L000025A0:
	cmpl      $1, %edx
	sbbl      %edx, %edx
	notl      %edx
	andl      $6, %edx
.L000025AA:
	cmpl      $15, 48(%ebx)
	je        .L00002623
.L000025B0:
	leal      5(%edx,%eax), %eax
.L000025B4:
	movl      (%esp), %ebx
	movl      4(%esp), %esi
	movl      8(%esp), %edi
	movl      12(%esp), %ebp
	addl      $16, %esp
	ret       
.L000025C7:
	.p2align 3
.L000025C8:
	movl      28(%ebx), %edi
	movl      $18, %edx
	testl     %edi, %edi
	je        .L000025AA
.L000025D4:
	movl      16(%edi), %ebp
	testl     %ebp, %ebp
	je        .L000025E1
.L000025DB:
	movl      20(%edi), %edx
	addl      $20, %edx
.L000025E1:
	movl      28(%edi), %ebp
	testl     %ebp, %ebp
	je        .L000025FA
.L000025E8:
	subl      %edx, %ebp
	.p2align 3
.L000025F0:
	addl      $1, %edx
	cmpb      $0, -1(%ebp,%edx)
	jne       .L000025F0
.L000025FA:
	movl      36(%edi), %ebp
	testl     %ebp, %ebp
	je        .L00002612
.L00002601:
	subl      %edx, %ebp
	.p2align 3
.L00002608:
	addl      $1, %edx
	cmpb      $0, -1(%ebp,%edx)
	jne       .L00002608
.L00002612:
	movl      44(%edi), %edi
	leal      2(%edx), %ebp
	testl     %edi, %edi
	cmovne    %ebp, %edx
	cmpl      $15, 48(%ebx)
	jne       .L000025B0
.L00002623:
	cmpl      $15, 80(%ebx)
	jne       .L000025B0
.L00002629:
	movl      %ecx, %eax
	movl      %ecx, %ebx
	shrl      $12, %eax
	addl      %esi, %eax
	shrl      $14, %ebx
	addl      %ebx, %eax
	shrl      $25, %ecx
	addl      %ecx, %eax
	addl      %edx, %eax
	jmp       .L000025B4
.L00002643:
	.p2align 3
.L00002648:
	cmpl      $1, 108(%ebx)
	sbbl      %edx, %edx
	andl      $-4, %edx
	addl      $10, %edx
	jmp       .L000025AA
.L00002659:
	.p2align 4
.L00002660:
	addl      $11, %eax
	jmp       .L000025B4
	.size	deflateBound, .-deflateBound
# ----------------------
.L00002668:
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
	movl      64(%esp), %esi
	testl     %esi, %esi
	je        .L00002DD0
.L00002683:
	cmpl      $5, 68(%esp)
	movl      28(%esi), %ebx
	jg        .L00002DD0
.L00002691:
	testl     %ebx, %ebx
	je        .L00002DD0
.L00002699:
	movl      68(%esp), %eax
	testl     %eax, %eax
	js        .L00002DD0
.L000026A5:
	movl      12(%esi), %eax
	testl     %eax, %eax
	je        .L00002CAB
.L000026B0:
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L00002CA0
.L000026BA:
	cmpl      $4, 68(%esp)
	movl      4(%ebx), %eax
	setne     27(%esp)
	jne       .L00002E60
.L000026CD:
	movl      16(%esi), %ebp
	testl     %ebp, %ebp
	je        .L000027F0
.L000026D8:
	movl      40(%ebx), %ecx
	cmpl      $42, %eax
	movl      %esi, (%ebx)
	movl      %ecx, 20(%esp)
	movl      68(%esp), %ecx
	movl      %ecx, 40(%ebx)
	je        .L00002870
.L000026F1:
	cmpl      $69, %eax
	je        .L0000294F
.L000026FA:
	cmpl      $73, %eax
	movl      20(%ebx), %edx
	je        .L00002A08
.L00002706:
	cmpl      $91, %eax
	je        .L00002C30
.L0000270F:
	cmpl      $103, %eax
	je        .L00002D10
.L00002718:
	testl     %edx, %edx
	jne       .L00002850
.L00002720:
	movl      4(%esi), %eax
	testl     %eax, %eax
	je        .L000027B0
.L0000272B:
	movl      4(%ebx), %edx
	cmpl      $666, %edx
	je        .L00002800
.L0000273A:
	testl     %eax, %eax
	je        .L00002804
.L00002742:
	movl      136(%ebx), %eax
	cmpl      $2, %eax
	je        .L00002DC0
.L00002751:
	cmpl      $3, %eax
	je        .L00002A10
.L0000275A:
	movl      132(%ebx), %eax
	movl      68(%esp), %ecx
	movl      %ebx, (%esp)
	leal      (%eax,%eax,2), %eax
	movl      %ecx, 4(%esp)
	call      *configuration_table+8(,%eax,4)
.L00002775:
	leal      -2(%eax), %edx
	cmpl      $1, %edx
	jbe       .L00002A27
.L00002781:
	cmpl      $2, %eax
	je        .L00002830
.L0000278A:
	testl     %eax, %eax
	je        .L00002830
.L00002792:
	cmpl      $1, %eax
	je        .L00002AB0
.L0000279B:
	xorl      %eax, %eax
	cmpb      $0, 27(%esp)
	je        .L00002A38
.L000027A8:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000027B0:
	movl      68(%esp), %ebp
	xorl      %edx, %edx
	addl      %ebp, %ebp
	cmpl      $5, 68(%esp)
	sete      %dl
	xorl      %ecx, %ecx
	leal      (%edx,%edx,8), %edx
	subl      %edx, %ebp
	movl      20(%esp), %edx
	addl      %edx, %edx
	cmpl      $5, 20(%esp)
	setge     %cl
	movl      %ecx, %edi
	leal      (%edi,%edi,8), %edi
	subl      %edi, %edx
	cmpl      %edx, %ebp
	jg        .L0000272B
.L000027E4:
	cmpb      $0, 27(%esp)
	je        .L0000272B
.L000027EF:
	.p2align 3
.L000027F0:
	movl      z_errmsg+28, %eax
	movl      %eax, 24(%esi)
	movl      $-5, %eax
	jmp       .L000027A8
.L000027FF:
	.p2align 3
.L00002800:
	testl     %eax, %eax
	jne       .L000027F0
.L00002804:
	movl      116(%ebx), %edi
	testl     %edi, %edi
	jne       .L00002742
.L0000280F:
	movl      68(%esp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L000027A8
.L00002819:
	cmpl      $666, %edx
	jne       .L00002742
.L00002825:
	jmp       .L0000279B
.L0000282A:
	.p2align 3
.L00002830:
	movl      16(%esi), %ebp
	xorl      %eax, %eax
	testl     %ebp, %ebp
	jne       .L000027A8
.L0000283D:
	movl      $-1, 40(%ebx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000284C:
	.p2align 3
.L00002850:
	movl      %esi, %eax
	call      flush_pending
.L00002857:
	movl      16(%esi), %ebp
	testl     %ebp, %ebp
	je        .L00002B42
.L00002862:
	movl      4(%esi), %eax
	jmp       .L0000272B
.L0000286A:
	.p2align 3
.L00002870:
	cmpl      $2, 24(%ebx)
	je        .L00002F27
.L0000287A:
	movl      48(%ebx), %eax
	sall      $12, %eax
	leal      -30720(%eax), %ecx
	xorl      %eax, %eax
	cmpl      $1, 136(%ebx)
	jle       .L00002BD0
.L00002895:
	movl      108(%ebx), %edx
	orl       %eax, %ecx
	movl      %ecx, %eax
	movl      8(%ebx), %ebp
	orl       $32, %eax
	movl      $113, 4(%ebx)
	testl     %edx, %edx
	movl      $138547333, %edx
	cmovne    %eax, %ecx
	movl      %ecx, %eax
	mull      %edx
	movl      20(%ebx), %eax
	subl      %edx, %ecx
	shrl      $1, %ecx
	addl      %edx, %ecx
	shrl      $4, %ecx
	movl      %ecx, %edx
	sall      $5, %edx
	subl      %ecx, %edx
	addl      $31, %edx
	movl      %edx, %edi
	shrl      $8, %edi
	movl      %edi, %ecx
	movb      %cl, (%ebp,%eax)
	movl      8(%ebx), %ecx
	movb      %dl, 1(%ecx,%eax)
	movl      108(%ebx), %ecx
	leal      2(%eax), %edx
	movl      %edx, 20(%ebx)
	testl     %ecx, %ecx
	je        .L00002924
.L000028EC:
	movl      48(%esi), %edx
	movl      8(%ebx), %edi
	movl      %edx, %ecx
	shrl      $24, %edx
	movb      %dl, 2(%edi,%eax)
	movl      8(%ebx), %edx
	shrl      $16, %ecx
	movb      %cl, 3(%edx,%eax)
	movzwl    48(%esi), %edx
	movl      8(%ebx), %ebp
	movl      %edx, %edi
	shrl      $8, %edi
	movl      %edi, %ecx
	movb      %cl, 4(%ebp,%eax)
	movl      8(%ebx), %ecx
	movb      %dl, 5(%ecx,%eax)
	addl      $6, %eax
	movl      %eax, 20(%ebx)
.L00002924:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      adler32
.L00002940:
	movl      %eax, 48(%esi)
	movl      4(%ebx), %eax
	cmpl      $69, %eax
	jne       .L000026FA
.L0000294F:
	movl      28(%ebx), %edi
	movl      20(%ebx), %edx
.L00002955:
	movl      16(%edi), %eax
	testl     %eax, %eax
	je        .L00002E70
.L00002960:
	movl      32(%ebx), %ecx
	movl      %edi, %eax
	movzwl    20(%edi), %ebp
	movl      %edx, 28(%esp)
	cmpl      %ebp, %ecx
	jae       .L000029DC
.L00002971:
	movl      %edx, %ebp
	jmp       .L000029A1
.L00002975:
	.p2align 3
.L00002978:
	movl      16(%edi), %eax
	movzbl    (%eax,%ecx), %ecx
	movl      8(%ebx), %eax
	movb      %cl, (%eax,%edx)
	movl      28(%ebx), %eax
	addl      $1, %edx
	movl      32(%ebx), %ecx
	movl      %edx, 20(%ebx)
	movzwl    20(%eax), %edi
	addl      $1, %ecx
	movl      %ecx, 32(%ebx)
	cmpl      %ecx, %edi
	jbe       .L000029D8
.L0000299F:
	movl      %eax, %edi
.L000029A1:
	cmpl      %edx, 12(%ebx)
	jne       .L00002978
.L000029A6:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L000029B5
.L000029AD:
	cmpl      %ebp, %edx
	ja        .L00002CC0
.L000029B5:
	movl      %esi, %eax
	call      flush_pending
.L000029BC:
	movl      20(%ebx), %ebp
	cmpl      12(%ebx), %ebp
	je        .L00002E50
.L000029C8:
	movl      28(%ebx), %edi
	movl      %ebp, %edx
	movl      32(%ebx), %ecx
	jmp       .L00002978
.L000029D2:
	.p2align 3
.L000029D8:
	movl      %ebp, 28(%esp)
.L000029DC:
	movl      44(%eax), %edi
	testl     %edi, %edi
	je        .L000029ED
.L000029E3:
	cmpl      %edx, 28(%esp)
	jb        .L00002E20
.L000029ED:
	movl      20(%eax), %edx
	cmpl      %edx, 32(%ebx)
	je        .L00002B58
.L000029F9:
	movl      4(%ebx), %eax
	movl      20(%ebx), %edx
	cmpl      $73, %eax
	jne       .L00002706
.L00002A08:
	movl      28(%ebx), %eax
	jmp       .L00002B69
.L00002A10:
	movl      68(%esp), %edx
	movl      %ebx, %eax
	call      deflate_rle
.L00002A1B:
	leal      -2(%eax), %edx
	cmpl      $1, %edx
	ja        .L00002781
.L00002A27:
	movl      $666, 4(%ebx)
	jmp       .L00002781
.L00002A33:
	.p2align 3
.L00002A38:
	movl      24(%ebx), %edx
	movb      $1, %al
	testl     %edx, %edx
	jle       .L000027A8
.L00002A45:
	cmpl      $2, %edx
	je        .L00002EC0
.L00002A4E:
	movl      48(%esi), %edx
	movl      20(%ebx), %eax
	movl      8(%ebx), %edi
	movl      %edx, %ecx
	shrl      $24, %edx
	movb      %dl, (%edi,%eax)
	movl      8(%ebx), %edx
	shrl      $16, %ecx
	movb      %cl, 1(%edx,%eax)
	movzwl    48(%esi), %edx
	movl      8(%ebx), %ebp
	movl      %edx, %edi
	shrl      $8, %edi
	movl      %edi, %ecx
	movb      %cl, 2(%ebp,%eax)
	movl      8(%ebx), %ecx
	movb      %dl, 3(%ecx,%eax)
	addl      $4, %eax
	movl      %eax, 20(%ebx)
.L00002A88:
	movl      %esi, %eax
	call      flush_pending
.L00002A8F:
	movl      24(%ebx), %eax
	testl     %eax, %eax
	jle       .L00002A9B
.L00002A96:
	negl      %eax
	movl      %eax, 24(%ebx)
.L00002A9B:
	movl      20(%ebx), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	sete      %al
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002AAD:
	.p2align 3
.L00002AB0:
	cmpl      $1, 68(%esp)
	je        .L000030CE
.L00002ABB:
	cmpl      $5, 68(%esp)
	je        .L00002B30
.L00002AC2:
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      %ebx, (%esp)
	call      _tr_stored_block
.L00002AE2:
	cmpl      $3, 68(%esp)
	jne       .L00002B30
.L00002AE9:
	movl      76(%ebx), %edx
	movl      68(%ebx), %eax
	movw      $0, -2(%eax,%edx,2)
	leal      -2(%edx,%edx), %edx
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset
.L00002B0E:
	movl      116(%ebx), %edi
	testl     %edi, %edi
	jne       .L00002B30
.L00002B15:
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 5812(%ebx)
	.p2align 3
.L00002B30:
	movl      %esi, %eax
	call      flush_pending
.L00002B37:
	movl      16(%esi), %ecx
	testl     %ecx, %ecx
	jne       .L0000279B
.L00002B42:
	movl      $-1, 40(%ebx)
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002B53:
	.p2align 3
.L00002B58:
	movl      20(%ebx), %edx
	movl      $0, 32(%ebx)
	movl      $73, 4(%ebx)
.L00002B69:
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002E90
.L00002B74:
	movl      %edx, %ecx
	jmp       .L00002B9B
.L00002B78:
	movl      32(%ebx), %edi
	movl      28(%eax), %eax
	movzbl    (%eax,%edi), %eax
	addl      $1, %edi
	movl      %edi, 32(%ebx)
	movl      8(%ebx), %edi
	movb      %al, (%edi,%edx)
	addl      $1, %edx
	testb     %al, %al
	movl      %edx, 20(%ebx)
	je        .L00002C00
.L00002B98:
	movl      28(%ebx), %eax
.L00002B9B:
	cmpl      %edx, 12(%ebx)
	jne       .L00002B78
.L00002BA0:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L00002BAF
.L00002BA7:
	cmpl      %edx, %ecx
	jb        .L00002E00
.L00002BAF:
	movl      %esi, %eax
	call      flush_pending
.L00002BB6:
	movl      20(%ebx), %ecx
	cmpl      12(%ebx), %ecx
	je        .L000030B6
.L00002BC2:
	movl      28(%ebx), %eax
	movl      %ecx, %edx
	jmp       .L00002B78
.L00002BC9:
	.p2align 4
.L00002BD0:
	movl      132(%ebx), %edx
	cmpl      $1, %edx
	jle       .L00002895
.L00002BDF:
	cmpl      $5, %edx
	movb      $64, %al
	jle       .L00002895
.L00002BEA:
	cmpl      $6, %edx
	movb      $128, %al
	movl      $192, %edx
	cmovne    %edx, %eax
	jmp       .L00002895
.L00002BFC:
	.p2align 3
.L00002C00:
	xorl      %edi, %edi
.L00002C02:
	movl      28(%ebx), %eax
	movl      44(%eax), %ebp
	testl     %ebp, %ebp
	je        .L00002C14
.L00002C0C:
	cmpl      %edx, %ecx
	jb        .L00003096
.L00002C14:
	testl     %edi, %edi
	je        .L00002DA0
.L00002C1C:
	movl      4(%ebx), %eax
	movl      20(%ebx), %edx
	cmpl      $91, %eax
	jne       .L0000270F
.L00002C2B:
	.p2align 3
.L00002C30:
	movl      28(%ebx), %eax
.L00002C33:
	movl      36(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002E80
.L00002C3E:
	movl      %edx, %ecx
	jmp       .L00002C6B
.L00002C42:
	.p2align 3
.L00002C48:
	movl      32(%ebx), %edi
	movl      36(%eax), %eax
	movzbl    (%eax,%edi), %eax
	addl      $1, %edi
	movl      %edi, 32(%ebx)
	movl      8(%ebx), %edi
	movb      %al, (%edi,%edx)
	addl      $1, %edx
	testb     %al, %al
	movl      %edx, 20(%ebx)
	je        .L00002CE0
.L00002C68:
	movl      28(%ebx), %eax
.L00002C6B:
	cmpl      12(%ebx), %edx
	jne       .L00002C48
.L00002C70:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L00002C7F
.L00002C77:
	cmpl      %edx, %ecx
	jb        .L00002DE0
.L00002C7F:
	movl      %esi, %eax
	call      flush_pending
.L00002C86:
	movl      20(%ebx), %ecx
	cmpl      12(%ebx), %ecx
	je        .L000030C2
.L00002C92:
	movl      28(%ebx), %eax
	movl      %ecx, %edx
	jmp       .L00002C48
.L00002C99:
	.p2align 4
.L00002CA0:
	movl      4(%esi), %eax
	testl     %eax, %eax
	je        .L000026BA
.L00002CAB:
	movl      z_errmsg+16, %eax
	movl      %eax, 24(%esi)
	movl      $-2, %eax
	jmp       .L000027A8
.L00002CBD:
	.p2align 3
.L00002CC0:
	subl      %ebp, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebx), %ebp
	movl      %ebp, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002CD8:
	movl      %eax, 48(%esi)
	jmp       .L000029B5
.L00002CE0:
	xorl      %edi, %edi
.L00002CE2:
	movl      28(%ebx), %eax
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L00002CF4
.L00002CEC:
	cmpl      %edx, %ecx
	jb        .L00003076
.L00002CF4:
	testl     %edi, %edi
	je        .L00002D88
.L00002CFC:
	movl      4(%ebx), %eax
	movl      20(%ebx), %edx
	cmpl      $103, %eax
	jne       .L00002718
.L00002D0B:
	.p2align 3
.L00002D10:
	movl      28(%ebx), %eax
.L00002D13:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L00002D78
.L00002D1A:
	leal      2(%edx), %eax
	cmpl      12(%ebx), %eax
	ja        .L00002EA0
.L00002D26:
	movl      48(%esi), %edi
	movl      8(%ebx), %ebp
	movl      %edi, %ecx
	movb      %cl, (%ebp,%edx)
	movl      48(%esi), %edi
	movl      8(%ebx), %ebp
	shrl      $8, %edi
	movl      %edi, %ecx
	movb      %cl, 1(%ebp,%edx)
	movl      %eax, 20(%ebx)
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32
.L00002D60:
	movl      20(%ebx), %edx
	movl      %eax, 48(%esi)
	movl      $113, 4(%ebx)
	jmp       .L00002718
.L00002D72:
	.p2align 3
.L00002D78:
	movl      $113, 4(%ebx)
	jmp       .L00002718
.L00002D84:
	.p2align 3
.L00002D88:
	movl      $103, 4(%ebx)
	movl      28(%ebx), %eax
	movl      20(%ebx), %edx
	jmp       .L00002D13
.L00002D9A:
	.p2align 3
.L00002DA0:
	movl      $0, 32(%ebx)
	movl      28(%ebx), %eax
	movl      $91, 4(%ebx)
	movl      20(%ebx), %edx
	jmp       .L00002C33
.L00002DB9:
	.p2align 4
.L00002DC0:
	movl      68(%esp), %edx
	movl      %ebx, %eax
	call      deflate_huff
.L00002DCB:
	jmp       .L00002775
.L00002DD0:
	movl      $-2, %eax
	jmp       .L000027A8
.L00002DDA:
	.p2align 3
.L00002DE0:
	subl      %ecx, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002DF8:
	movl      %eax, 48(%esi)
	jmp       .L00002C7F
.L00002E00:
	subl      %ecx, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002E18:
	movl      %eax, 48(%esi)
	jmp       .L00002BAF
.L00002E20:
	subl      28(%esp), %edx
	movl      28(%esp), %eax
	movl      %edx, 8(%esp)
	addl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L00002E3E:
	movl      %eax, 48(%esi)
	movl      28(%ebx), %eax
	jmp       .L000029ED
.L00002E49:
	.p2align 4
.L00002E50:
	movl      %ebp, 28(%esp)
	movl      28(%ebx), %eax
	movl      %ebp, %edx
	jmp       .L000029DC
.L00002E5E:
	.p2align 3
.L00002E60:
	cmpl      $666, %eax
	jne       .L000026CD
.L00002E6B:
	jmp       .L00002CAB
.L00002E70:
	movl      $73, 4(%ebx)
	movl      %edi, %eax
	jmp       .L00002B69
.L00002E7E:
	.p2align 3
.L00002E80:
	movl      $103, 4(%ebx)
	jmp       .L00002D13
.L00002E8C:
	.p2align 3
.L00002E90:
	movl      $91, 4(%ebx)
	jmp       .L00002C33
.L00002E9C:
	.p2align 3
.L00002EA0:
	movl      %esi, %eax
	call      flush_pending
.L00002EA7:
	movl      20(%ebx), %edx
	leal      2(%edx), %eax
	cmpl      12(%ebx), %eax
	ja        .L00002718
.L00002EB6:
	jmp       .L00002D26
.L00002EBB:
	.p2align 3
.L00002EC0:
	movl      20(%ebx), %eax
	movl      48(%esi), %ecx
	movl      8(%ebx), %edx
	movb      %cl, (%edx,%eax)
	movl      48(%esi), %edx
	movl      8(%ebx), %ecx
	shrl      $8, %edx
	movb      %dl, 1(%ecx,%eax)
	movzwl    50(%esi), %ecx
	movl      8(%ebx), %edx
	movb      %cl, 2(%edx,%eax)
	movzbl    51(%esi), %ecx
	movl      8(%ebx), %edx
	movb      %cl, 3(%edx,%eax)
	movl      8(%esi), %ecx
	movl      8(%ebx), %edx
	movb      %cl, 4(%edx,%eax)
	movl      8(%esi), %edx
	movl      8(%ebx), %ecx
	shrl      $8, %edx
	movb      %dl, 5(%ecx,%eax)
	movzwl    10(%esi), %ecx
	movl      8(%ebx), %edx
	movb      %cl, 6(%edx,%eax)
	movzbl    11(%esi), %ecx
	movl      8(%ebx), %edx
	movb      %cl, 7(%edx,%eax)
	addl      $8, %eax
	movl      %eax, 20(%ebx)
	jmp       .L00002A88
.L00002F27:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      crc32
.L00002F43:
	movl      8(%ebx), %edx
	movl      %eax, 48(%esi)
	movl      20(%ebx), %eax
	movb      $31, (%edx,%eax)
	movl      8(%ebx), %edx
	leal      3(%eax), %ecx
	movb      $139, 1(%edx,%eax)
	movl      8(%ebx), %edx
	movb      $8, 2(%edx,%eax)
	movl      28(%ebx), %edx
	movl      %ecx, 20(%ebx)
	testl     %edx, %edx
	je        .L0000310D
.L00002F71:
	movl      (%edx), %edi
	movl      8(%ebx), %ebp
	addl      %ecx, %ebp
	testl     %edi, %edi
	setne     %cl
	cmpl      $1, 44(%edx)
	movl      %ecx, %edi
	sbbl      %ecx, %ecx
	notl      %ecx
	andl      $2, %ecx
	addl      %ecx, %edi
	cmpl      $1, 16(%edx)
	sbbl      %ecx, %ecx
	notl      %ecx
	andl      $4, %ecx
	addl      %ecx, %edi
	cmpl      $1, 28(%edx)
	sbbl      %ecx, %ecx
	notl      %ecx
	andl      $8, %ecx
	addl      %edi, %ecx
	cmpl      $1, 36(%edx)
	sbbl      %edx, %edx
	notl      %edx
	andl      $16, %edx
	addl      %ecx, %edx
	movb      %dl, (%ebp)
	movl      28(%ebx), %edx
	movl      8(%ebx), %ecx
	movl      4(%edx), %edx
	movb      %dl, 4(%ecx,%eax)
	movl      28(%ebx), %edx
	movl      8(%ebx), %ecx
	movl      4(%edx), %edx
	shrl      $8, %edx
	movb      %dl, 5(%ecx,%eax)
	movl      28(%ebx), %edx
	movl      8(%ebx), %ecx
	movzwl    6(%edx), %edx
	movb      %dl, 6(%ecx,%eax)
	movl      28(%ebx), %edx
	movl      8(%ebx), %ecx
	movzbl    7(%edx), %edx
	movb      %dl, 7(%ecx,%eax)
	movl      132(%ebx), %edi
	leal      8(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movl      $2, %edx
	addl      8(%ebx), %ecx
	cmpl      $9, %edi
	je        .L0000301A
.L00003008:
	cmpl      $1, 136(%ebx)
	movl      $4, %edx
	jle       .L000030FF
.L0000301A:
	movb      %dl, (%ecx)
	movl      28(%ebx), %edx
	movl      8(%ebx), %ecx
	movl      12(%edx), %edx
	movb      %dl, 9(%ecx,%eax)
	movl      28(%ebx), %edi
	leal      10(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      16(%edi), %ecx
	testl     %ecx, %ecx
	je        .L0000305C
.L00003039:
	movl      20(%edi), %edx
	movl      8(%ebx), %ecx
	movb      %dl, 10(%ecx,%eax)
	movl      28(%ebx), %edx
	movl      8(%ebx), %ecx
	movl      20(%edx), %edx
	shrl      $8, %edx
	movb      %dl, 11(%ecx,%eax)
	movl      28(%ebx), %edi
	leal      12(%eax), %edx
	movl      %edx, 20(%ebx)
.L0000305C:
	movl      44(%edi), %ebp
	testl     %ebp, %ebp
	jne       .L000030DB
.L00003063:
	movl      $0, 32(%ebx)
	movl      $69, 4(%ebx)
	jmp       .L00002955
.L00003076:
	subl      %ecx, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L0000308E:
	movl      %eax, 48(%esi)
	jmp       .L00002CF4
.L00003096:
	subl      %ecx, %edx
	movl      %edx, 8(%esp)
	addl      8(%ebx), %ecx
	movl      %ecx, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L000030AE:
	movl      %eax, 48(%esi)
	jmp       .L00002C14
.L000030B6:
	movl      %ecx, %edx
	movl      $1, %edi
	jmp       .L00002C02
.L000030C2:
	movl      %ecx, %edx
	movl      $1, %edi
	jmp       .L00002CE2
.L000030CE:
	movl      %ebx, (%esp)
	call      _tr_align
.L000030D6:
	jmp       .L00002B30
.L000030DB:
	movl      %edx, 8(%esp)
	movl      8(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      48(%esi), %eax
	movl      %eax, (%esp)
	call      crc32
.L000030F1:
	movl      28(%ebx), %edi
	movl      20(%ebx), %edx
	movl      %eax, 48(%esi)
	jmp       .L00003063
.L000030FF:
	cmpl      $1, %edi
	setle     %dl
	sall      $2, %edx
	jmp       .L0000301A
.L0000310D:
	movl      8(%ebx), %edx
	leal      8(%eax), %edi
	movb      $0, 3(%edx,%eax)
	movl      8(%ebx), %edx
	movb      $0, 4(%edx,%eax)
	movl      8(%ebx), %edx
	movb      $0, 5(%edx,%eax)
	movl      8(%ebx), %edx
	movb      $0, 6(%edx,%eax)
	movl      8(%ebx), %edx
	movb      $0, 7(%edx,%eax)
	movl      132(%ebx), %ecx
	movl      $2, %edx
	movl      %edi, 20(%ebx)
	addl      8(%ebx), %edi
	cmpl      $9, %ecx
	je        .L0000315C
.L0000314E:
	cmpl      $1, 136(%ebx)
	movl      $4, %edx
	jle       .L00003178
.L0000315C:
	movb      %dl, (%edi)
	movl      8(%ebx), %edx
	movb      $3, 9(%edx,%eax)
	leal      10(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      $113, 4(%ebx)
	jmp       .L00002718
.L00003178:
	cmpl      $1, %ecx
	setle     %dl
	sall      $2, %edx
	jmp       .L0000315C
	.size	deflate, .-deflate
# ----------------------
.L00003183:
	.p2align 4
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ebx
	testl     %ebx, %ebx
	je        .L00003288
.L000031A1:
	movl      28(%ebx), %edx
	testl     %edx, %edx
	je        .L00003288
.L000031AC:
	movl      4(%edx), %esi
	cmpl      $69, %esi
	jne       .L00003240
.L000031B8:
	movl      8(%edx), %eax
	testl     %eax, %eax
	je        .L000031CF
.L000031BF:
	movl      %eax, 4(%esp)
	movl      40(%ebx), %eax
	movl      %eax, (%esp)
	call      *36(%ebx)
.L000031CC:
	movl      28(%ebx), %edx
.L000031CF:
	movl      68(%edx), %eax
	testl     %eax, %eax
	je        .L000031E6
.L000031D6:
	movl      %eax, 4(%esp)
	movl      40(%ebx), %eax
	movl      %eax, (%esp)
	call      *36(%ebx)
.L000031E3:
	movl      28(%ebx), %edx
.L000031E6:
	movl      64(%edx), %eax
	testl     %eax, %eax
	je        .L000031FD
.L000031ED:
	movl      %eax, 4(%esp)
	movl      40(%ebx), %eax
	movl      %eax, (%esp)
	call      *36(%ebx)
.L000031FA:
	movl      28(%ebx), %edx
.L000031FD:
	movl      56(%edx), %eax
	testl     %eax, %eax
	je        .L00003214
.L00003204:
	movl      %eax, 4(%esp)
	movl      40(%ebx), %eax
	movl      %eax, (%esp)
	call      *36(%ebx)
.L00003211:
	movl      28(%ebx), %edx
.L00003214:
	movl      %edx, 4(%esp)
	movl      40(%ebx), %eax
	movl      %eax, (%esp)
	call      *36(%ebx)
.L00003221:
	xorl      %eax, %eax
	cmpl      $113, %esi
	setne     %al
	movl      $0, 28(%ebx)
	leal      -3(%eax,%eax,2), %eax
.L00003234:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0000323A:
	.p2align 3
.L00003240:
	cmpl      $42, %esi
	je        .L000031B8
.L00003249:
	cmpl      $91, %esi
	je        .L000031B8
.L00003252:
	cmpl      $73, %esi
	je        .L000031B8
.L0000325B:
	cmpl      $113, %esi
	.p2align 3
	je        .L000031B8
.L00003266:
	cmpl      $103, %esi
	je        .L000031B8
.L0000326F:
	cmpl      $666, %esi
	movl      $-2, %eax
	je        .L000031B8
.L00003280:
	jmp       .L00003234
.L00003282:
	.p2align 3
.L00003288:
	movl      $-2, %eax
	jmp       .L00003234
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L0000328F:
	.p2align 3
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
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      76(%esp), %ebp
	testl     %eax, %eax
	je        .L00003568
.L000032AF:
	cmpl      $56, 92(%esp)
	jne       .L00003568
.L000032BA:
	cmpb      $49, (%eax)
	jne       .L00003568
.L000032C3:
	testl     %esi, %esi
	je        .L00003530
.L000032CB:
	movl      32(%esi), %eax
	movl      $0, 24(%esi)
	testl     %eax, %eax
	je        .L00003550
.L000032DD:
	movl      36(%esi), %ebx
	testl     %ebx, %ebx
	je        .L00003540
.L000032E8:
	cmpl      $-1, %edi
	movl      $6, %eax
	cmove     %eax, %edi
	testl     %ebp, %ebp
	js        .L00003520
.L000032FB:
	cmpl      $15, %ebp
	movl      $1, %edx
	jg        .L000034F8
.L00003309:
	movl      80(%esp), %eax
	subl      $1, %eax
	cmpl      $8, %eax
	ja        .L00003530
.L00003319:
	cmpl      $8, 72(%esp)
	jne       .L00003530
.L00003324:
	cmpl      $15, %ebp
	jg        .L00003530
.L0000332D:
	cmpl      $7, %ebp
	jle       .L00003530
.L00003336:
	cmpl      $9, %edi
	jg        .L00003530
.L0000333F:
	movl      %edi, %eax
	shrl      $31, %eax
	testb     %al, %al
	jne       .L00003530
.L0000334C:
	cmpl      $4, 84(%esp)
	jg        .L00003530
.L00003357:
	movl      84(%esp), %eax
	shrl      $31, %eax
	testb     %al, %al
	jne       .L00003530
.L00003366:
	cmpl      $8, %ebp
	movl      $9, %eax
	cmove     %eax, %ebp
	movl      $5828, 8(%esp)
	movl      $1, 4(%esp)
	movl      40(%esi), %eax
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      *32(%esi)
.L0000338E:
	movl      28(%esp), %edx
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L000035A0
.L0000339C:
	movl      %eax, 28(%esi)
	movl      %ebp, %ecx
	movl      %edx, 24(%eax)
	movl      $-1431655765, %edx
	movl      %ebp, 48(%eax)
	movl      %esi, (%eax)
	movl      $0, 28(%eax)
	movl      $1, %eax
	sall      %cl, %eax
	movl      80(%esp), %ecx
	movl      %eax, 44(%ebx)
	movl      %eax, %ebp
	leal      -1(%eax), %eax
	movl      %eax, 52(%ebx)
	movl      $1, %eax
	addl      $7, %ecx
	sall      %cl, %eax
	movl      %ecx, 80(%ebx)
	movl      %eax, %ecx
	movl      %eax, 76(%ebx)
	movl      80(%esp), %eax
	subl      $1, %ecx
	movl      %ecx, 84(%ebx)
	addl      $9, %eax
	mull      %edx
	shrl      $1, %edx
	movl      %edx, 88(%ebx)
	movl      $2, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L00003406:
	movl      %eax, 56(%ebx)
	movl      $2, 8(%esp)
	movl      44(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L00003421:
	movl      %eax, 64(%ebx)
	movl      $2, 8(%esp)
	movl      76(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L0000343C:
	movl      80(%esp), %ecx
	movl      $0, 5824(%ebx)
	addl      $6, %ecx
	movl      %eax, 68(%ebx)
	movl      $1, %eax
	sall      %cl, %eax
	movl      %eax, 5788(%ebx)
	movl      $4, 8(%esp)
	movl      %eax, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L00003472:
	movl      5788(%ebx), %edx
	leal      0(,%edx,4), %ecx
	movl      %ecx, 12(%ebx)
	movl      56(%ebx), %ecx
	movl      %eax, 8(%ebx)
	testl     %ecx, %ecx
	je        .L00003578
.L00003490:
	movl      64(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L00003578
.L0000349B:
	movl      68(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L00003578
.L000034A6:
	testl     %eax, %eax
	je        .L00003578
.L000034AE:
	movl      %edx, %ecx
	andl      $-2, %ecx
	addl      %eax, %ecx
	movl      %ecx, 5796(%ebx)
	movl      84(%esp), %ecx
	leal      (%edx,%edx,2), %edx
	addl      %edx, %eax
	movl      %eax, 5784(%ebx)
	movl      %edi, 132(%ebx)
	movl      %ecx, 136(%ebx)
	movb      $8, 36(%ebx)
	movl      %esi, (%esp)
	call      deflateResetKeep
.L000034E2:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L00003508
.L000034E8:
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000034F2:
	.p2align 3
.L000034F8:
	subl      $16, %ebp
	movb      $2, %dl
	jmp       .L00003309
.L00003502:
	.p2align 3
.L00003508:
	movl      28(%esi), %eax
	call      lm_init
.L00003510:
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000351A:
	.p2align 3
.L00003520:
	negl      %ebp
	xorl      %edx, %edx
	jmp       .L00003309
.L00003529:
	.p2align 4
.L00003530:
	addl      $44, %esp
	movl      $-2, %ebx
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000353F:
	.p2align 3
.L00003540:
	movl      $zcfree, 36(%esi)
	jmp       .L000032E8
.L0000354C:
	.p2align 3
.L00003550:
	movl      $zcalloc, 32(%esi)
	movl      $0, 40(%esi)
	jmp       .L000032DD
.L00003563:
	.p2align 3
.L00003568:
	movl      $-6, %ebx
	jmp       .L000034E8
.L00003572:
	.p2align 3
.L00003578:
	movl      z_errmsg+24, %eax
	movl      $666, 4(%ebx)
	movl      $-4, %ebx
	movl      %eax, 24(%esi)
	movl      %esi, (%esp)
	call      deflateEnd
.L00003594:
	jmp       .L000034E8
.L00003599:
	.p2align 4
.L000035A0:
	movl      $-4, %ebx
	jmp       .L000034E8
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L000035AA:
	.p2align 3
# ----------------------
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      40(%esp), %eax
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	testl     %eax, %eax
	je        .L000037D8
.L000035CA:
	cmpl      $56, 44(%esp)
	jne       .L000037D8
.L000035D5:
	cmpb      $49, (%eax)
	jne       .L000037D8
.L000035DE:
	testl     %esi, %esi
	je        .L000037E0
.L000035E6:
	movl      32(%esi), %eax
	movl      $0, 24(%esi)
	testl     %eax, %eax
	je        .L000037C0
.L000035F8:
	movl      36(%esi), %ebx
	testl     %ebx, %ebx
	je        .L000037B0
.L00003603:
	cmpl      $-1, %edi
	je        .L000037A0
.L0000360C:
	cmpl      $9, %edi
	jg        .L000037E0
.L00003615:
	movl      %edi, %eax
	shrl      $31, %eax
	testb     %al, %al
	jne       .L000037E0
.L00003622:
	movl      $5828, 8(%esp)
	movl      $1, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L0000363B:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L00003810
.L00003645:
	movl      %eax, 28(%esi)
	movl      %esi, (%eax)
	movl      $1, 24(%eax)
	movl      $0, 28(%eax)
	movl      $15, 48(%eax)
	movl      $32768, 44(%eax)
	movl      $32767, 52(%eax)
	movl      $15, 80(%eax)
	movl      $32768, 76(%eax)
	movl      $32767, 84(%eax)
	movl      $5, 88(%eax)
	movl      $2, 8(%esp)
	movl      $32768, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L000036A2:
	movl      %eax, 56(%ebx)
	movl      $2, 8(%esp)
	movl      44(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L000036BD:
	movl      %eax, 64(%ebx)
	movl      $2, 8(%esp)
	movl      76(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L000036D8:
	movl      $0, 5824(%ebx)
	movl      $16384, 5788(%ebx)
	movl      %eax, 68(%ebx)
	movl      $4, 8(%esp)
	movl      $16384, 4(%esp)
	movl      40(%esi), %eax
	movl      %eax, (%esp)
	call      *32(%esi)
.L00003708:
	movl      5788(%ebx), %edx
	leal      0(,%edx,4), %ecx
	movl      %ecx, 12(%ebx)
	movl      56(%ebx), %ecx
	movl      %eax, 8(%ebx)
	testl     %ecx, %ecx
	je        .L000037E8
.L00003726:
	movl      64(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L000037E8
.L00003731:
	movl      68(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L000037E8
.L0000373C:
	testl     %eax, %eax
	je        .L000037E8
.L00003744:
	movl      %edx, %ecx
	andl      $-2, %ecx
	leal      (%edx,%edx,2), %edx
	addl      %eax, %ecx
	addl      %edx, %eax
	movl      %ecx, 5796(%ebx)
	movl      %eax, 5784(%ebx)
	movl      %edi, 132(%ebx)
	movl      $0, 136(%ebx)
	movb      $8, 36(%ebx)
	movl      %esi, (%esp)
	call      deflateResetKeep
.L00003778:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L00003788
.L0000377E:
	addl      $16, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00003787:
	.p2align 3
.L00003788:
	movl      28(%esi), %eax
	call      lm_init
.L00003790:
	addl      $16, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00003799:
	.p2align 4
.L000037A0:
	movl      $6, %edi
	jmp       .L00003622
.L000037AA:
	.p2align 3
.L000037B0:
	movl      $zcfree, 36(%esi)
	jmp       .L00003603
.L000037BC:
	.p2align 3
.L000037C0:
	movl      $zcalloc, 32(%esi)
	movl      $0, 40(%esi)
	jmp       .L000035F8
.L000037D3:
	.p2align 3
.L000037D8:
	movl      $-6, %ebx
	jmp       .L0000377E
.L000037DF:
	.p2align 3
.L000037E0:
	movl      $-2, %ebx
	jmp       .L0000377E
.L000037E7:
	.p2align 3
.L000037E8:
	movl      z_errmsg+24, %eax
	movl      $666, 4(%ebx)
	movl      $-4, %ebx
	movl      %eax, 24(%esi)
	movl      %esi, (%esp)
	call      deflateEnd
.L00003804:
	jmp       .L0000377E
.L00003809:
	.p2align 4
.L00003810:
	movl      $-4, %ebx
	jmp       .L0000377E
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L0000381A:
	.p2align 3
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
	movl      64(%esp), %ebp
	testl     %eax, %eax
	je        .L00003AD0
.L00003837:
	testl     %ebp, %ebp
	je        .L00003AD0
.L0000383F:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L00003AD0
.L0000384A:
	movl      (%eax), %ecx
	movl      %ecx, (%ebp)
	movl      4(%eax), %ecx
	movl      %ecx, 4(%ebp)
	movl      8(%eax), %ecx
	movl      %ecx, 8(%ebp)
	movl      12(%eax), %ecx
	movl      %ecx, 12(%ebp)
	movl      16(%eax), %ecx
	movl      %ecx, 16(%ebp)
	movl      20(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movl      24(%eax), %ecx
	movl      %ecx, 24(%ebp)
	movl      28(%eax), %ecx
	movl      %ecx, 28(%ebp)
	movl      32(%eax), %ecx
	movl      %ecx, 32(%ebp)
	movl      36(%eax), %ebx
	movl      %ebx, 36(%ebp)
	movl      40(%eax), %ebx
	movl      %ebx, 40(%ebp)
	movl      44(%eax), %esi
	movl      %esi, 44(%ebp)
	movl      48(%eax), %esi
	movl      %esi, 48(%ebp)
	movl      52(%eax), %eax
	movl      %eax, 52(%ebp)
	movl      %ebx, (%esp)
	movl      %edx, 28(%esp)
	movl      $5828, 8(%esp)
	movl      $1, 4(%esp)
	call      *%ecx
.L000038B6:
	movl      28(%esp), %edx
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L00003AE8
.L000038C4:
	testb     $1, %bl
	movl      %eax, %edi
	movl      %eax, 28(%ebp)
	movl      %edx, %esi
	movl      $5828, %eax
	jne       .L00003AB8
.L000038D9:
	testl     $2, %edi
	jne       .L00003AA0
.L000038E5:
	movl      %eax, %ecx
	shrl      $2, %ecx
	testb     $2, %al
	rep movsl     
	jne       .L00003A88
.L000038F4:
	testb     $1, %al
	jne       .L00003A78
.L000038FC:
	movl      %ebp, (%ebx)
	movl      $2, 8(%esp)
	movl      44(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%ebp), %eax
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      *32(%ebp)
.L0000391A:
	movl      %eax, 56(%ebx)
	movl      $2, 8(%esp)
	movl      44(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%ebp), %eax
	movl      %eax, (%esp)
	call      *32(%ebp)
.L00003935:
	movl      %eax, 64(%ebx)
	movl      $2, 8(%esp)
	movl      76(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%ebp), %eax
	movl      %eax, (%esp)
	call      *32(%ebp)
.L00003950:
	movl      %eax, 68(%ebx)
	movl      $4, 8(%esp)
	movl      5788(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      40(%ebp), %eax
	movl      %eax, (%esp)
	call      *32(%ebp)
.L0000396E:
	movl      28(%esp), %edx
	movl      %eax, %esi
	movl      %eax, 8(%ebx)
	movl      56(%ebx), %eax
	testl     %eax, %eax
	je        .L00003AD8
.L00003982:
	movl      64(%ebx), %edi
	testl     %edi, %edi
	je        .L00003AD8
.L0000398D:
	movl      68(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L00003AD8
.L00003998:
	testl     %esi, %esi
	je        .L00003AD8
.L000039A0:
	movl      44(%ebx), %edi
	movl      56(%edx), %ecx
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	addl      %edi, %edi
	movl      %edi, 8(%esp)
	movl      %ecx, 4(%esp)
	call      memcpy
.L000039BC:
	movl      28(%esp), %edx
	movl      44(%ebx), %edi
	movl      64(%ebx), %eax
	movl      64(%edx), %ecx
	addl      %edi, %edi
	movl      %edi, 8(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy
.L000039DB:
	movl      28(%esp), %edx
	movl      76(%ebx), %edi
	movl      68(%ebx), %eax
	movl      68(%edx), %ecx
	addl      %edi, %edi
	movl      %edi, 8(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy
.L000039FA:
	movl      28(%esp), %edx
	movl      8(%ebx), %eax
	movl      12(%ebx), %edi
	movl      8(%edx), %ecx
	movl      %eax, (%esp)
	movl      %edi, 8(%esp)
	movl      %ecx, 4(%esp)
	call      memcpy
.L00003A17:
	movl      28(%esp), %edx
	movl      8(%ebx), %ecx
	movl      16(%edx), %eax
	addl      %ecx, %eax
	subl      8(%edx), %eax
	movl      %eax, 16(%ebx)
	movl      5788(%ebx), %eax
	movl      %eax, %edx
	leal      (%eax,%eax,2), %eax
	andl      $-2, %edx
	addl      %eax, %ecx
	addl      %edx, %esi
	leal      148(%ebx), %eax
	movl      %eax, 2840(%ebx)
	leal      2440(%ebx), %eax
	movl      %eax, 2852(%ebx)
	leal      2684(%ebx), %eax
	movl      %eax, 2864(%ebx)
	xorl      %eax, %eax
	movl      %esi, 5796(%ebx)
	movl      %ecx, 5784(%ebx)
.L00003A6D:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003A75:
	.p2align 3
.L00003A78:
	movzbl    (%esi,%ecx), %eax
	movb      %al, (%edi,%ecx)
	jmp       .L000038FC
.L00003A84:
	.p2align 3
.L00003A88:
	movzwl    (%esi), %ecx
	testb     $1, %al
	movw      %cx, (%edi)
	movl      $2, %ecx
	je        .L000038FC
.L00003A9B:
	jmp       .L00003A78
.L00003A9D:
	.p2align 3
.L00003AA0:
	movzwl    (%esi), %ecx
	subl      $2, %eax
	addl      $2, %esi
	movw      %cx, (%edi)
	addl      $2, %edi
	jmp       .L000038E5
.L00003AB4:
	.p2align 3
.L00003AB8:
	movzbl    (%edx), %eax
	leal      1(%ebx), %edi
	leal      1(%edx), %esi
	movb      %al, (%ebx)
	movl      $5827, %eax
	jmp       .L000038D9
.L00003ACD:
	.p2align 3
.L00003AD0:
	movl      $-2, %eax
	jmp       .L00003A6D
.L00003AD7:
	.p2align 3
.L00003AD8:
	movl      %ebp, (%esp)
	call      deflateEnd
.L00003AE0:
	movl      $-4, %eax
	jmp       .L00003A6D
.L00003AE7:
	.p2align 3
.L00003AE8:
	movl      $-4, %eax
	jmp       .L00003A6D
	.size	deflateCopy, .-deflateCopy
# ----------------------
	.hidden	_tr_flush_bits
	.hidden	_length_code
	.hidden	_dist_code
	.hidden	_tr_flush_block
	.hidden	_tr_init
	.hidden	_tr_stored_block
	.hidden	_tr_align
	.hidden	zcfree
	.hidden	zcalloc
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
