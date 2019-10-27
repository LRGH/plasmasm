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
	.value	0
	.value	0
	.value	0
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
	.local	my_version.0
	.type	my_version.0, @object
my_version.0:
	.string	"1.2.8"
	.size	my_version.0, 6
# ----------------------
	.text
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      28(%ebp), %eax
	movl      %eax, -20(%ebp)
	movl      32(%ebp), %eax
	movl      12(%ebp), %edx
	testl     %eax, %eax
	movl      %edx, -16(%ebp)
	movl      8(%ebp), %edi
	movl      16(%ebp), %ecx
	movl      20(%ebp), %esi
	movl      24(%ebp), %ebx
	movl      36(%ebp), %edx
	movl      $1, -28(%ebp)
	je        .L00000037
.L00000032:
	cmpb      $49, (%eax)
	je        .L00000044
.L00000037:
	movl      $-6, %eax
.L0000003C:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000044:
	cmpl      $56, %edx
	jne       .L00000037
.L00000049:
	testl     %edi, %edi
	movl      $-2, %eax
	je        .L0000003C
.L00000052:
	movl      32(%edi), %edx
	testl     %edx, %edx
	movl      $0, 24(%edi)
	jne       .L0000006E
.L00000060:
	movl      $zcalloc, 32(%edi)
	movl      $0, 40(%edi)
.L0000006E:
	movl      36(%edi), %edx
	testl     %edx, %edx
	jne       .L0000007C
.L00000075:
	movl      $zcfree, 36(%edi)
.L0000007C:
	cmpl      $-1, -16(%ebp)
	je        .L00000272
.L00000086:
	testl     %esi, %esi
	js        .L00000264
.L0000008E:
	cmpl      $15, %esi
	jle       .L0000009D
.L00000093:
	movl      $2, -28(%ebp)
	subl      $16, %esi
.L0000009D:
	leal      -1(%ebx), %edx
	cmpl      $8, %edx
	ja        .L000000AA
.L000000A5:
	cmpl      $8, %ecx
	je        .L000000B1
.L000000AA:
	movl      $-2, %eax
	jmp       .L0000003C
.L000000B1:
	cmpl      $7, %esi
	jle       .L000000AA
.L000000B6:
	cmpl      $15, %esi
	jg        .L000000AA
.L000000BB:
	movl      -16(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L000000AA
.L000000C2:
	cmpl      $9, -16(%ebp)
	jg        .L000000AA
.L000000C8:
	movl      -20(%ebp), %edx
	testl     %edx, %edx
	js        .L000000AA
.L000000CF:
	cmpl      $4, -20(%ebp)
	jg        .L000000AA
.L000000D5:
	cmpl      $8, %esi
	je        .L0000025A
.L000000DE:
	pushl     %ecx
	pushl     $5828
	pushl     $1
	pushl     40(%edi)
	call      *32(%edi)
.L000000EC:
	movl      %eax, -24(%ebp)
	movl      -24(%ebp), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      $-4, %eax
	je        .L0000003C
.L00000102:
	movl      -24(%ebp), %edx
	movl      -28(%ebp), %ecx
	movl      %ecx, 24(%edx)
	movl      %esi, 48(%edx)
	movl      %edx, 28(%edi)
	movl      %edi, (%edx)
	movl      $0, 28(%edx)
	movl      %esi, %ecx
	movl      $1, %edx
	movl      -24(%ebp), %esi
	sall      %cl, %edx
	movl      $1, %eax
	leal      7(%ebx), %ecx
	movl      %edx, 44(%esi)
	sall      %cl, %eax
	decl      %edx
	movl      %edx, 52(%esi)
	movl      %eax, %edx
	decl      %edx
	movl      %eax, 76(%esi)
	movl      %edx, 84(%esi)
	movl      $-1431655765, %eax
	leal      9(%ebx), %edx
	mull      %edx
	movl      %ecx, 80(%esi)
	movl      %edx, %ecx
	movl      -24(%ebp), %esi
	shrl      $1, %ecx
	movl      %ecx, 88(%esi)
	pushl     %eax
	pushl     $2
	pushl     44(%esi)
	pushl     40(%edi)
	call      *32(%edi)
.L00000163:
	movl      -24(%ebp), %edx
	addl      $12, %esp
	movl      %eax, 56(%edx)
	pushl     $2
	pushl     44(%edx)
	pushl     40(%edi)
	call      *32(%edi)
.L00000177:
	movl      -24(%ebp), %ecx
	addl      $12, %esp
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L0000018B:
	leal      6(%ebx), %ecx
	movl      $1, %edx
	movl      -24(%ebp), %ebx
	movl      -24(%ebp), %esi
	addl      $12, %esp
	sall      %cl, %edx
	movl      %eax, 68(%esi)
	movl      $0, 5824(%esi)
	movl      %edx, 5788(%ebx)
	pushl     $4
	pushl     5788(%ebx)
	pushl     40(%edi)
	call      *32(%edi)
.L000001BF:
	movl      5788(%ebx), %edx
	leal      0(,%edx,4), %esi
	movl      %esi, 12(%ebx)
	movl      56(%ebx), %esi
	addl      $16, %esp
	testl     %esi, %esi
	movl      %eax, %ecx
	movl      %eax, 8(%ebx)
	je        .L00000234
.L000001DE:
	movl      64(%ebx), %eax
	testl     %eax, %eax
	je        .L00000234
.L000001E5:
	movl      68(%ebx), %esi
	testl     %esi, %esi
	je        .L00000234
.L000001EC:
	testl     %ecx, %ecx
	je        .L00000234
.L000001F0:
	movl      %edx, %esi
	andl      $-2, %esi
	leal      (%esi,%ecx), %ebx
	movl      -24(%ebp), %esi
	movl      %ebx, 5796(%esi)
	leal      (%edx,%edx,2), %ebx
	leal      (%ebx,%ecx), %edx
	movl      -16(%ebp), %ebx
	movl      -20(%ebp), %ecx
	movl      %edx, 5784(%esi)
	movl      %ebx, 132(%esi)
	movl      %ecx, 136(%esi)
	movb      $8, 36(%esi)
	movl      %edi, 8(%ebp)
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	jmp       deflateReset
.L00000232:
	.p2align 2
.L00000234:
	movl      -24(%ebp), %edx
	movl      z_errmsg+24, %ebx
	subl      $12, %esp
	movl      $666, 4(%edx)
	movl      %ebx, 24(%edi)
	pushl     %edi
	call      deflateEnd
.L00000250:
	movl      $-4, %eax
	jmp       .L0000003C
.L0000025A:
	movl      $9, %esi
	jmp       .L000000DE
.L00000264:
	movl      $0, -28(%ebp)
	negl      %esi
	jmp       .L0000009D
.L00000272:
	movl      $6, -16(%ebp)
	jmp       .L00000086
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L0000027E:
	.p2align 3
# ----------------------
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	movl      12(%ebp), %esi
	movl      16(%ebp), %ebx
	je        .L000002C0
.L00000296:
	movl      8(%ebp), %edx
	movl      28(%edx), %edi
	testl     %edi, %edi
	je        .L000002C0
.L000002A0:
	testl     %esi, %esi
	je        .L000002C0
.L000002A4:
	movl      24(%edi), %edx
	cmpl      $2, %edx
	movl      %edx, -16(%ebp)
	je        .L000002C0
.L000002AF:
	decl      %edx
	je        .L0000045B
.L000002B6:
	movl      116(%edi), %ecx
	testl     %ecx, %ecx
	je        .L000002CD
.L000002BD:
	.p2align 3
.L000002C0:
	movl      $-2, %eax
.L000002C5:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L000002CD:
	cmpl      $1, -16(%ebp)
	je        .L0000043F
.L000002D7:
	movl      44(%edi), %eax
	cmpl      %eax, %ebx
	movl      $0, 24(%edi)
	jb        .L000002F6
.L000002E5:
	movl      -16(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L00000400
.L000002F0:
	subl      %eax, %ebx
	addl      %ebx, %esi
	movl      %eax, %ebx
.L000002F6:
	movl      8(%ebp), %edx
	movl      4(%edx), %eax
	subl      $12, %esp
	movl      %eax, -20(%ebp)
	movl      8(%ebp), %ecx
	movl      8(%ebp), %eax
	movl      (%ecx), %edx
	movl      %ebx, 4(%eax)
	movl      %esi, (%eax)
	pushl     %edi
	movl      %edx, -24(%ebp)
	call      fill_window
.L00000318:
	movl      116(%edi), %edx
	addl      $16, %esp
	cmpl      $2, %edx
	movl      %edx, %eax
	jbe       .L000003B8
.L00000329:
	.p2align 2
.L0000032C:
	subl      $2, %eax
	movl      68(%edi), %esi
	movl      88(%edi), %ecx
	movl      %eax, -60(%ebp)
	movl      %esi, -40(%ebp)
	movl      %ecx, -48(%ebp)
	movl      56(%edi), %edx
	movl      84(%edi), %eax
	movl      52(%edi), %esi
	movl      64(%edi), %ecx
	movl      108(%edi), %ebx
	movl      %edx, -32(%ebp)
	movl      %eax, -44(%ebp)
	movl      %esi, -28(%ebp)
	movl      %ecx, -36(%ebp)
	.p2align 2
.L0000035C:
	movl      72(%edi), %eax
	movb      -48(%ebp), %cl
	movl      -32(%ebp), %edx
	sall      %cl, %eax
	movzbl    2(%ebx,%edx), %ecx
	xorl      %ecx, %eax
	andl      -44(%ebp), %eax
	movl      -40(%ebp), %esi
	movl      -28(%ebp), %edx
	movw      (%esi,%eax,2), %cx
	andl      %ebx, %edx
	movl      -36(%ebp), %esi
	movw      %cx, (%esi,%edx,2)
	movl      -40(%ebp), %ecx
	movw      %bx, (%ecx,%eax,2)
	incl      %ebx
	decl      -60(%ebp)
	movl      %eax, 72(%edi)
	jne       .L0000035C
.L00000394:
	subl      $12, %esp
	movl      %ebx, 108(%edi)
	movl      $2, 116(%edi)
	pushl     %edi
	call      fill_window
.L000003A7:
	movl      116(%edi), %edx
	addl      $16, %esp
	cmpl      $2, %edx
	movl      %edx, %eax
	ja        .L0000032C
.L000003B8:
	movl      108(%edi), %ecx
	addl      %edx, %ecx
	movl      %edx, 5812(%edi)
	movl      -24(%ebp), %eax
	movl      8(%ebp), %edx
	movl      -20(%ebp), %esi
	movl      -16(%ebp), %ebx
	movl      %ecx, 108(%edi)
	movl      $0, 116(%edi)
	movl      $2, 120(%edi)
	movl      $2, 96(%edi)
	movl      $0, 104(%edi)
	movl      %eax, (%edx)
	movl      %esi, 4(%edx)
	movl      %ecx, 92(%edi)
	movl      %ebx, 24(%edi)
	xorl      %eax, %eax
	jmp       .L000002C5
.L00000400:
	movl      76(%edi), %eax
	movl      68(%edi), %edx
	sall      $1, %eax
	movw      $0, -2(%eax,%edx)
	subl      $2, %eax
	pushl     %ecx
	pushl     %eax
	pushl     $0
	pushl     %edx
	call      memset
.L0000041C:
	addl      $16, %esp
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	movl      $0, 5812(%edi)
	movl      44(%edi), %eax
	jmp       .L000002F0
.L0000043F:
	pushl     %ecx
	pushl     %ebx
	pushl     %esi
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      adler32
.L0000044D:
	movl      8(%ebp), %ecx
	movl      %eax, 48(%ecx)
	addl      $16, %esp
	jmp       .L000002D7
.L0000045B:
	cmpl      $42, 4(%edi)
	jne       .L000002C0
.L00000465:
	jmp       .L000002B6
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
.L0000046A:
	.p2align 2
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	movl      8(%ebp), %esi
	testl     %esi, %esi
	pushl     %ebx
	je        .L00000490
.L00000478:
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L00000490
.L0000047F:
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L00000490
.L00000486:
	movl      36(%esi), %edx
	testl     %edx, %edx
	jne       .L000004B4
.L0000048D:
	.p2align 3
.L00000490:
	movl      $-2, %ebx
.L00000495:
	testl     %ebx, %ebx
	je        .L000004A4
.L00000499:
	leal      -8(%ebp), %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L000004A2:
	.p2align 2
.L000004A4:
	subl      $12, %esp
	pushl     28(%esi)
	call      lm_init
.L000004AF:
	addl      $16, %esp
	jmp       .L00000499
.L000004B4:
	movl      $2, 44(%esi)
	movl      24(%ebx), %eax
	movl      8(%ebx), %ecx
	testl     %eax, %eax
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $0, 20(%ebx)
	movl      %ecx, 16(%ebx)
	js        .L00000533
.L000004E4:
	movl      24(%ebx), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	sete      %dl
	decl      %edx
	andl      $-71, %edx
	addl      $113, %edx
	cmpl      $2, %ecx
	movl      %edx, 4(%ebx)
	je        .L00000525
.L000004FD:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L00000509:
	movl      $0, 40(%ebx)
	movl      %eax, 48(%esi)
	movl      %ebx, (%esp)
	call      _tr_init
.L0000051B:
	xorl      %ebx, %ebx
	addl      $16, %esp
	jmp       .L00000495
.L00000525:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L00000531:
	jmp       .L00000509
.L00000533:
	negl      %eax
	movl      %eax, 24(%ebx)
	jmp       .L000004E4
	.size	deflateReset, .-deflateReset
# ----------------------
.L0000053A:
	.p2align 2
# ----------------------
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	movl      12(%ebp), %ebx
	movl      16(%ebp), %edi
	movl      $0, -20(%ebp)
	je        .L00000578
.L00000559:
	movl      28(%edx), %esi
	testl     %esi, %esi
	je        .L00000578
.L00000560:
	cmpl      $-1, %ebx
	je        .L00000650
.L00000569:
	cmpl      $9, %ebx
	ja        .L00000578
.L0000056E:
	testl     %edi, %edi
	js        .L00000578
.L00000572:
	cmpl      $4, %edi
	jle       .L00000585
.L00000577:
	.p2align 3
.L00000578:
	movl      $-2, %eax
.L0000057D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000585:
	movl      132(%esi), %eax
	leal      (%eax,%eax,2), %ecx
	movl      %eax, -28(%ebp)
	cmpl      136(%esi), %edi
	movl      configuration_table+8(,%ecx,4), %eax
	movl      %eax, -16(%ebp)
	je        .L0000063A
.L000005A7:
	movl      8(%edx), %eax
	testl     %eax, %eax
	jne       .L000005FB
.L000005AE:
	cmpl      %ebx, -28(%ebp)
	je        .L000005F0
.L000005B3:
	leal      (%ebx,%ebx,2), %ecx
	sall      $2, %ecx
	movzwl    configuration_table+2(%ecx), %edx
	movl      %ebx, 132(%esi)
	movzwl    configuration_table(%ecx), %ebx
	movl      %edx, 128(%esi)
	movl      %ebx, 140(%esi)
	movzwl    configuration_table+4(%ecx), %edx
	movzwl    configuration_table+6(%ecx), %ebx
	movl      %edx, 144(%esi)
	movl      %ebx, 124(%esi)
.L000005F0:
	movl      %edi, 136(%esi)
	movl      -20(%ebp), %eax
	jmp       .L0000057D
.L000005FB:
	subl      $8, %esp
	pushl     $5
	pushl     %edx
	call      deflate
.L00000606:
	addl      $16, %esp
	cmpl      $-5, %eax
	movl      %eax, -20(%ebp)
	je        .L0000061C
.L00000611:
	movl      132(%esi), %eax
	movl      %eax, -28(%ebp)
	jmp       .L000005AE
.L0000061C:
	xorl      %ecx, %ecx
	cmpl      $0, 20(%esi)
	sete      %cl
	decl      %ecx
	andl      $-5, %ecx
	movl      132(%esi), %edx
	movl      %ecx, -20(%ebp)
	movl      %edx, -28(%ebp)
	jmp       .L000005AE
.L0000063A:
	leal      (%ebx,%ebx,2), %ecx
	cmpl      configuration_table+8(,%ecx,4), %eax
	jne       .L000005A7
.L0000064A:
	jmp       .L000005AE
.L0000064F:
	.p2align 3
.L00000650:
	movl      $6, %ebx
	jmp       .L00000569
	.size	deflateParams, .-deflateParams
# ----------------------
.L0000065A:
	.p2align 2
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %edi
	movl      12(%ebp), %ebx
	leal      7(%ebx), %eax
	shrl      $3, %eax
	leal      63(%ebx), %esi
	leal      (%eax,%ebx), %edi
	shrl      $6, %esi
	movl      8(%ebp), %ecx
	leal      (%esi,%edi), %eax
	testl     %ecx, %ecx
	leal      5(%eax), %edi
	je        .L00000689
.L00000682:
	movl      28(%ecx), %edx
	testl     %edx, %edx
	jne       .L00000694
.L00000689:
	addl      $11, %eax
.L0000068C:
	popl      %ebx
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000692:
	.p2align 2
.L00000694:
	movl      24(%edx), %eax
	cmpl      $1, %eax
	je        .L00000740
.L000006A0:
	cmpl      $1, %eax
	jle       .L0000072F
.L000006A9:
	cmpl      $2, %eax
	je        .L000006DE
.L000006AE:
	movl      $6, %esi
.L000006B3:
	cmpl      $15, 48(%edx)
	je        .L000006C0
.L000006B9:
	leal      (%esi,%edi), %eax
	jmp       .L0000068C
.L000006BE:
	.p2align 3
.L000006C0:
	cmpl      $15, 80(%edx)
	jne       .L000006B9
.L000006C6:
	movl      %ebx, %edi
	shrl      $12, %edi
	leal      (%edi,%ebx), %edx
	shrl      $14, %ebx
	addl      %ebx, %edx
	shrl      $11, %ebx
	addl      %ebx, %edx
	leal      7(%esi,%edx), %eax
	jmp       .L0000068C
.L000006DE:
	movl      28(%edx), %eax
	testl     %eax, %eax
	movl      $18, %esi
	movl      %eax, -16(%ebp)
	je        .L000006B3
.L000006ED:
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L000006FA
.L000006F4:
	movl      20(%eax), %esi
	addl      $20, %esi
.L000006FA:
	movl      -16(%ebp), %eax
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0000070C
.L00000704:
	movb      (%ecx), %al
	incl      %esi
	incl      %ecx
	testb     %al, %al
	jne       .L00000704
.L0000070C:
	movl      -16(%ebp), %eax
	movl      36(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000720
.L00000716:
	.p2align 3
.L00000718:
	movb      (%ecx), %al
	incl      %esi
	incl      %ecx
	testb     %al, %al
	jne       .L00000718
.L00000720:
	movl      -16(%ebp), %eax
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	je        .L000006B3
.L0000072A:
	addl      $2, %esi
	jmp       .L000006B3
.L0000072F:
	xorl      %esi, %esi
	testl     %eax, %eax
	je        .L000006B3
.L00000739:
	jmp       .L000006AE
.L0000073E:
	.p2align 3
.L00000740:
	movl      108(%edx), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %ecx
	leal      6(,%ecx,4), %esi
	jmp       .L000006B3
	.size	deflateBound, .-deflateBound
# ----------------------
.L00000757:
	.p2align 3
# ----------------------
	.globl	deflate
	.type	deflate, @function
deflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	je        .L00001410
.L0000076C:
	movl      8(%ebp), %edx
	movl      28(%edx), %esi
	testl     %esi, %esi
	je        .L00001410
.L0000077A:
	cmpl      $5, 12(%ebp)
	jg        .L00001410
.L00000784:
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L00001410
.L0000078F:
	movl      8(%ebp), %edx
	movl      12(%edx), %ebx
	testl     %ebx, %ebx
	je        .L00001404
.L0000079D:
	movl      (%edx), %eax
	testl     %eax, %eax
	jne       .L000007AE
.L000007A3:
	movl      4(%edx), %edi
	testl     %edi, %edi
	jne       .L00001404
.L000007AE:
	movl      4(%esi), %eax
	cmpl      $666, %eax
	movl      %eax, %edx
	je        .L000013F8
.L000007BE:
	movl      8(%ebp), %ebx
	movl      16(%ebx), %edi
	testl     %edi, %edi
	jne       .L000007E0
.L000007C8:
	movl      z_errmsg+28, %ecx
	movl      %ecx, 24(%ebx)
.L000007D1:
	movl      $-5, %eax
	.p2align 3
.L000007D8:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L000007E0:
	movl      8(%ebp), %ebx
	movl      40(%esi), %edi
	movl      %ebx, (%esi)
	cmpl      $42, %edx
	movl      12(%ebp), %ebx
	movl      %edi, -16(%ebp)
	movl      %ebx, 40(%esi)
	je        .L000010C5
.L000007FA:
	cmpl      $69, %eax
	je        .L00000F4F
.L00000803:
	movl      20(%esi), %edi
.L00000806:
	cmpl      $73, %eax
	je        .L00000E20
.L0000080F:
	cmpl      $91, %eax
	je        .L00000CF8
.L00000818:
	cmpl      $103, %eax
	je        .L00000C1E
.L00000821:
	testl     %edi, %edi
	jne       .L00000BA2
.L00000829:
	movl      8(%ebp), %eax
	movl      4(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0000086A
.L00000833:
	movl      -16(%ebp), %eax
	movl      12(%ebp), %edx
	sall      $1, %eax
	sall      $1, %edx
	cmpl      $4, 12(%ebp)
	jle       .L00000846
.L00000843:
	subl      $9, %edx
.L00000846:
	cmpl      $4, -16(%ebp)
	jle       .L0000084F
.L0000084C:
	subl      $9, %eax
.L0000084F:
	cmpl      %eax, %edx
	jg        .L0000086A
.L00000853:
	cmpl      $4, 12(%ebp)
	je        .L0000086A
.L00000859:
	movl      z_errmsg+28, %ecx
	movl      8(%ebp), %esi
	movl      %ecx, 24(%esi)
	jmp       .L000007D1
.L0000086A:
	movl      4(%esi), %eax
	cmpl      $666, %eax
	je        .L00000B95
.L00000878:
	testl     %ecx, %ecx
	jne       .L00000891
.L0000087C:
	movl      116(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L00000891
.L00000883:
	movl      12(%ebp), %edx
	testl     %edx, %edx
	je        .L000008EC
.L0000088A:
	cmpl      $666, %eax
	je        .L000008EC
.L00000891:
	movl      136(%esi), %eax
	cmpl      $2, %eax
	je        .L00000B84
.L000008A0:
	cmpl      $3, %eax
	je        .L00000B73
.L000008A9:
	subl      $8, %esp
	movl      132(%esi), %ecx
	pushl     12(%ebp)
	leal      (%ecx,%ecx,2), %edi
	pushl     %esi
	call      *configuration_table+8(,%edi,4)
.L000008C0:
	leal      -2(%eax), %ebx
	addl      $16, %esp
	cmpl      $1, %ebx
	movl      %eax, %edx
	ja        .L000008D4
.L000008CD:
	movl      $666, 4(%esi)
.L000008D4:
	testl     %edx, %edx
	je        .L00000B60
.L000008DC:
	cmpl      $2, %edx
	je        .L00000B60
.L000008E5:
	decl      %edx
	je        .L00000A61
.L000008EC:
	xorl      %eax, %eax
	cmpl      $4, 12(%ebp)
	jne       .L000007D8
.L000008F8:
	movl      24(%esi), %edx
	testl     %edx, %edx
	movl      $1, %eax
	jle       .L000007D8
.L00000908:
	cmpl      $2, %edx
	je        .L000009D3
.L00000911:
	movl      8(%ebp), %edi
	movl      48(%edi), %ecx
	movl      %ecx, %ebx
	movl      20(%esi), %edi
	movl      8(%esi), %edx
	shrl      $24, %ebx
	movb      %bl, (%edi,%edx)
	movl      20(%esi), %ebx
	movl      8(%esi), %edi
	incl      %ebx
	shrl      $16, %ecx
	movl      %ebx, 20(%esi)
	movb      %cl, (%ebx,%edi)
	movl      8(%ebp), %eax
	movzwl    48(%eax), %ebx
	movl      20(%esi), %edi
	movl      %ebx, %edx
	incl      %edi
	movl      8(%esi), %ecx
	shrl      $8, %edx
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	movl      20(%esi), %edi
	incl      %edi
	movl      8(%esi), %edx
	movl      %edi, 20(%esi)
	movb      %bl, (%edi,%edx)
.L0000095B:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	subl      $12, %esp
	incl      20(%esi)
	pushl     %edi
	call      _tr_flush_bits
.L0000096D:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L0000097F
.L0000097D:
	movl      %eax, %ebx
.L0000097F:
	testl     %ebx, %ebx
	jne       .L0000099D
.L00000983:
	movl      24(%esi), %eax
	testl     %eax, %eax
	jle       .L0000098F
.L0000098A:
	negl      %eax
	movl      %eax, 24(%esi)
.L0000098F:
	xorl      %eax, %eax
	cmpl      $0, 20(%esi)
	sete      %al
	jmp       .L000007D8
.L0000099D:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L000009AD:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00000983
.L000009CB:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L00000983
.L000009D3:
	movl      8(%ebp), %ebx
	movl      20(%esi), %edi
	movl      8(%esi), %edx
	movb      48(%ebx), %cl
	movb      %cl, (%edi,%edx)
	movl      20(%esi), %edi
	movl      48(%ebx), %ecx
	movl      8(%esi), %edx
	incl      %edi
	shrl      $8, %ecx
	movl      %edi, 20(%esi)
	movb      %cl, (%edi,%edx)
	movl      20(%esi), %edi
	movl      8(%esi), %ecx
	movzwl    50(%ebx), %edx
	incl      %edi
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	movl      20(%esi), %edi
	movl      8(%esi), %ecx
	movzbl    51(%ebx), %edx
	incl      %edi
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	movl      20(%esi), %edi
	movl      8(%esi), %ecx
	movb      8(%ebx), %dl
	incl      %edi
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	movl      20(%esi), %edi
	movl      8(%ebx), %ecx
	incl      %edi
	movl      8(%esi), %edx
	shrl      $8, %ecx
	movl      %edi, 20(%esi)
	movb      %cl, (%edi,%edx)
	movl      20(%esi), %edi
	incl      %edi
	movl      8(%esi), %ecx
	movzwl    10(%ebx), %edx
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	movl      20(%esi), %edi
	incl      %edi
	movl      8(%esi), %ecx
	movzbl    11(%ebx), %edx
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	jmp       .L0000095B
.L00000A61:
	cmpl      $1, 12(%ebp)
	je        .L00000B4C
.L00000A6B:
	cmpl      $5, 12(%ebp)
	je        .L00000A86
.L00000A71:
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %esi
	call      _tr_stored_block
.L00000A7D:
	addl      $16, %esp
	cmpl      $3, 12(%ebp)
	je        .L00000B05
.L00000A86:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L00000A95:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00000AA7
.L00000AA5:
	movl      %eax, %ebx
.L00000AA7:
	testl     %ebx, %ebx
	jne       .L00000AC1
.L00000AAB:
	testl     %eax, %eax
	jne       .L000008EC
.L00000AB3:
	movl      $-1, 40(%esi)
.L00000ABA:
	xorl      %eax, %eax
	jmp       .L000007D8
.L00000AC1:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L00000AD1:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00000AFD
.L00000AEF:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	movl      8(%ebp), %edi
	movl      16(%edi), %eax
	jmp       .L00000AAB
.L00000AFD:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	jmp       .L00000AAB
.L00000B05:
	movl      76(%esi), %edx
	movl      68(%esi), %ebx
	sall      $1, %edx
	movw      $0, -2(%edx,%ebx)
	subl      $2, %edx
	pushl     %ecx
	pushl     %edx
	pushl     $0
	pushl     %ebx
	call      memset
.L00000B21:
	movl      116(%esi), %edi
	addl      $16, %esp
	testl     %edi, %edi
	jne       .L00000A86
.L00000B2F:
	movl      $0, 108(%esi)
	movl      $0, 92(%esi)
	movl      $0, 5812(%esi)
	jmp       .L00000A86
.L00000B4C:
	subl      $12, %esp
	pushl     %esi
	call      _tr_align
.L00000B55:
	addl      $16, %esp
	jmp       .L00000A86
.L00000B5D:
	.p2align 3
.L00000B60:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	testl     %eax, %eax
	jne       .L00000ABA
.L00000B6E:
	jmp       .L00000AB3
.L00000B73:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %esi
	call      deflate_rle
.L00000B7F:
	jmp       .L000008C0
.L00000B84:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %esi
	call      deflate_huff
.L00000B90:
	jmp       .L000008C0
.L00000B95:
	testl     %ecx, %ecx
	je        .L0000087C
.L00000B9D:
	jmp       .L00000859
.L00000BA2:
	movl      8(%ebp), %ebx
	subl      $12, %esp
	movl      28(%ebx), %edi
	pushl     %edi
	call      _tr_flush_bits
.L00000BB1:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00000BC3
.L00000BC1:
	movl      %eax, %ebx
.L00000BC3:
	testl     %ebx, %ebx
	jne       .L00000BDA
.L00000BC7:
	testl     %eax, %eax
	je        .L00000AB3
.L00000BCF:
	movl      8(%ebp), %edi
	movl      4(%edi), %ecx
	jmp       .L0000086A
.L00000BDA:
	pushl     %ecx
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L00000BEA:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00000C16
.L00000C08:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	movl      8(%ebp), %edi
	movl      16(%edi), %eax
	jmp       .L00000BC7
.L00000C16:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	jmp       .L00000BC7
.L00000C1E:
	movl      28(%esi), %edx
	movl      44(%edx), %ebx
	testl     %ebx, %ebx
	je        .L00000CEC
.L00000C2C:
	leal      2(%edi), %ecx
	movl      12(%esi), %edx
	cmpl      %edx, %ecx
	ja        .L00000C87
.L00000C36:
	leal      2(%edi), %ecx
	cmpl      %edx, %ecx
	ja        .L00000821
.L00000C41:
	movl      8(%ebp), %eax
	movl      8(%esi), %ebx
	movb      48(%eax), %dl
	movb      %dl, (%edi,%ebx)
	movl      8(%ebp), %ebx
	movl      20(%esi), %edi
	movl      48(%ebx), %ecx
	movl      8(%esi), %edx
	incl      %edi
	shrl      $8, %ecx
	movl      %edi, 20(%esi)
	movb      %cl, (%edi,%edx)
	incl      20(%esi)
	pushl     %edi
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L00000C72:
	movl      %eax, 48(%ebx)
	movl      $113, 4(%esi)
	addl      $16, %esp
	movl      20(%esi), %edi
	jmp       .L00000821
.L00000C87:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L00000C96:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00000CA8
.L00000CA6:
	movl      %eax, %ebx
.L00000CA8:
	testl     %ebx, %ebx
	jne       .L00000CB4
.L00000CAC:
	movl      20(%esi), %edi
	movl      12(%esi), %edx
	jmp       .L00000C36
.L00000CB4:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L00000CC4:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00000CAC
.L00000CE2:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L00000CAC
.L00000CEA:
	.p2align 2
.L00000CEC:
	movl      $113, 4(%esi)
	jmp       .L00000821
.L00000CF8:
	movl      28(%esi), %ebx
	movl      36(%ebx), %eax
	testl     %eax, %eax
	je        .L00000D43
.L00000D02:
	movl      %edi, %ecx
.L00000D04:
	cmpl      12(%esi), %edi
	je        .L00000D80
.L00000D09:
	movl      32(%esi), %edx
	movl      36(%ebx), %eax
	movzbl    (%edx,%eax), %ebx
	incl      %edx
	movl      %edx, 32(%esi)
	movl      8(%esi), %edx
	movb      %bl, (%edi,%edx)
	movl      20(%esi), %eax
	incl      %eax
	testl     %ebx, %ebx
	movl      %eax, 20(%esi)
	je        .L00000D2F
.L00000D28:
	movl      %eax, %edi
	movl      28(%esi), %ebx
	jmp       .L00000D04
.L00000D2F:
	movl      %eax, %edi
.L00000D31:
	movl      28(%esi), %eax
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L00000D3F
.L00000D3B:
	cmpl      %ecx, %edi
	ja        .L00000D5C
.L00000D3F:
	testl     %ebx, %ebx
	jne       .L00000D54
.L00000D43:
	movl      $103, 4(%esi)
	movl      $103, %eax
	jmp       .L00000818
.L00000D54:
	movl      4(%esi), %eax
	jmp       .L00000818
.L00000D5C:
	subl      %ecx, %edi
	pushl     %eax
	pushl     %edi
	addl      8(%esi), %ecx
	pushl     %ecx
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32
.L00000D6F:
	movl      8(%ebp), %edi
	movl      %eax, 48(%edi)
	addl      $16, %esp
	movl      20(%esi), %edi
	jmp       .L00000D3F
.L00000D7D:
	.p2align 3
.L00000D80:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	je        .L00000D8B
.L00000D87:
	cmpl      %ecx, %edi
	ja        .L00000E02
.L00000D8B:
	movl      8(%ebp), %ebx
	subl      $12, %esp
	movl      28(%ebx), %edi
	pushl     %edi
	call      _tr_flush_bits
.L00000D9A:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00000DAC
.L00000DAA:
	movl      %eax, %ebx
.L00000DAC:
	testl     %ebx, %ebx
	jne       .L00000DCC
.L00000DB0:
	movl      20(%esi), %edi
	cmpl      12(%esi), %edi
	movl      %edi, %ecx
	je        .L00000DC2
.L00000DBA:
	movl      28(%esi), %ebx
	jmp       .L00000D09
.L00000DC2:
	movl      $1, %ebx
	jmp       .L00000D31
.L00000DCC:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L00000DDC:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00000DB0
.L00000DFA:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L00000DB0
.L00000E02:
	subl      %ecx, %edi
	pushl     %eax
	pushl     %edi
	addl      8(%esi), %ecx
	pushl     %ecx
	movl      8(%ebp), %edi
	pushl     48(%edi)
	call      crc32
.L00000E15:
	movl      %eax, 48(%edi)
	addl      $16, %esp
	jmp       .L00000D8B
.L00000E20:
	movl      28(%esi), %ebx
	movl      28(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L00000E72
.L00000E2A:
	movl      %edi, %ecx
.L00000E2C:
	cmpl      12(%esi), %edi
	je        .L00000EAC
.L00000E31:
	movl      32(%esi), %edx
	movl      28(%ebx), %eax
	movzbl    (%edx,%eax), %ebx
	incl      %edx
	movl      %edx, 32(%esi)
	movl      8(%esi), %edx
	movb      %bl, (%edi,%edx)
	movl      20(%esi), %eax
	incl      %eax
	testl     %ebx, %ebx
	movl      %eax, 20(%esi)
	je        .L00000E57
.L00000E50:
	movl      %eax, %edi
	movl      28(%esi), %ebx
	jmp       .L00000E2C
.L00000E57:
	movl      %eax, %edi
.L00000E59:
	movl      28(%esi), %eax
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L00000E67
.L00000E63:
	cmpl      %ecx, %edi
	ja        .L00000E8B
.L00000E67:
	testl     %ebx, %ebx
	jne       .L00000E83
.L00000E6B:
	movl      $0, 32(%esi)
.L00000E72:
	movl      $91, 4(%esi)
	movl      $91, %eax
	jmp       .L0000080F
.L00000E83:
	movl      4(%esi), %eax
	jmp       .L0000080F
.L00000E8B:
	subl      %ecx, %edi
	pushl     %eax
	pushl     %edi
	addl      8(%esi), %ecx
	pushl     %ecx
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32
.L00000E9E:
	movl      8(%ebp), %edi
	movl      %eax, 48(%edi)
	addl      $16, %esp
	movl      20(%esi), %edi
	jmp       .L00000E67
.L00000EAC:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	je        .L00000EB7
.L00000EB3:
	cmpl      %ecx, %edi
	ja        .L00000F2E
.L00000EB7:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L00000EC6:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00000ED8
.L00000ED6:
	movl      %eax, %ebx
.L00000ED8:
	testl     %ebx, %ebx
	jne       .L00000EF8
.L00000EDC:
	movl      20(%esi), %edi
	cmpl      12(%esi), %edi
	movl      %edi, %ecx
	je        .L00000EEE
.L00000EE6:
	movl      28(%esi), %ebx
	jmp       .L00000E31
.L00000EEE:
	movl      $1, %ebx
	jmp       .L00000E59
.L00000EF8:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L00000F08:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00000EDC
.L00000F26:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L00000EDC
.L00000F2E:
	subl      %ecx, %edi
	pushl     %eax
	pushl     %edi
	addl      8(%esi), %ecx
	pushl     %ecx
	movl      8(%ebp), %edi
	pushl     48(%edi)
	call      crc32
.L00000F41:
	movl      8(%ebp), %ebx
	movl      %eax, 48(%ebx)
	addl      $16, %esp
	jmp       .L00000EB7
.L00000F4F:
	movl      28(%esi), %ebx
	movl      16(%ebx), %ecx
	testl     %ecx, %ecx
	movl      %ebx, -24(%ebp)
	je        .L000010B4
.L00000F60:
	movzwl    20(%ebx), %edx
	movl      20(%esi), %edi
	cmpl      %edx, 32(%esi)
	movl      %edi, -20(%ebp)
	jae       .L00000FA9
.L00000F6F:
	cmpl      12(%esi), %edi
	je        .L00001008
.L00000F78:
	movl      32(%esi), %eax
	movl      16(%ebx), %edx
	movb      (%eax,%edx), %bl
	movl      8(%esi), %ecx
	movb      %bl, (%edi,%ecx)
	movl      20(%esi), %ecx
	movl      32(%esi), %edx
	incl      %ecx
	incl      %edx
	movl      28(%esi), %ebx
	movl      %ecx, 20(%esi)
	movl      %edx, 32(%esi)
	movzwl    20(%ebx), %eax
	cmpl      %eax, %edx
	movl      %ebx, -24(%ebp)
	movl      %ecx, %edi
	jae       .L00000FA9
.L00000FA5:
	movl      %ecx, %edi
	jmp       .L00000F6F
.L00000FA9:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	je        .L00000FB5
.L00000FB0:
	cmpl      -20(%ebp), %edi
	ja        .L00000FDD
.L00000FB5:
	movl      20(%ebx), %edx
	cmpl      %edx, 32(%esi)
	je        .L00000FC5
.L00000FBD:
	movl      4(%esi), %eax
	jmp       .L00000806
.L00000FC5:
	movl      $0, 32(%esi)
	movl      $73, 4(%esi)
	movl      $73, %eax
	jmp       .L00000806
.L00000FDD:
	subl      -20(%ebp), %edi
	pushl     %edx
	pushl     %edi
	movl      8(%esi), %ecx
	addl      %ecx, -20(%ebp)
	pushl     -20(%ebp)
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      crc32
.L00000FF6:
	movl      8(%ebp), %edi
	movl      %eax, 48(%edi)
	addl      $16, %esp
	movl      20(%esi), %edi
	movl      28(%esi), %ebx
	jmp       .L00000FB5
.L00001007:
	.p2align 3
.L00001008:
	movl      -24(%ebp), %eax
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00001017
.L00001012:
	cmpl      -20(%ebp), %edi
	ja        .L0000108D
.L00001017:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L00001026:
	movl      8(%ebp), %ecx
	movl      20(%edi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00001038
.L00001036:
	movl      %eax, %ebx
.L00001038:
	testl     %ebx, %ebx
	jne       .L00001057
.L0000103C:
	movl      20(%esi), %edi
	cmpl      12(%esi), %edi
	movl      %edi, -20(%ebp)
	je        .L0000104F
.L00001047:
	movl      28(%esi), %ebx
	jmp       .L00000F78
.L0000104F:
	movl      28(%esi), %ebx
	jmp       .L00000FA9
.L00001057:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy
.L00001067:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%edi), %edx
	addl      %ebx, 12(%ecx)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%ecx)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L0000103C
.L00001085:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L0000103C
.L0000108D:
	subl      -20(%ebp), %edi
	pushl     %eax
	pushl     %edi
	movl      8(%esi), %edx
	addl      %edx, -20(%ebp)
	pushl     -20(%ebp)
	movl      8(%ebp), %edi
	pushl     48(%edi)
	call      crc32
.L000010A6:
	movl      8(%ebp), %ebx
	movl      %eax, 48(%ebx)
	addl      $16, %esp
	jmp       .L00001017
.L000010B4:
	movl      $73, 4(%esi)
	movl      $73, %eax
	jmp       .L00000803
.L000010C5:
	cmpl      $2, 24(%esi)
	je        .L000011D2
.L000010CF:
	movl      48(%esi), %edi
	subl      $8, %edi
	sall      $12, %edi
	cmpl      $1, 136(%esi)
	leal      2048(%edi), %ebx
	jle       .L000011A5
.L000010EB:
	xorl      %eax, %eax
.L000010ED:
	sall      $6, %eax
	orl       %eax, %ebx
	movl      108(%esi), %eax
	testl     %eax, %eax
	je        .L000010FC
.L000010F9:
	orl       $32, %ebx
.L000010FC:
	movl      $31, %ecx
	movl      %ebx, %eax
	xorl      %edx, %edx
	divl      %ecx
	movl      %ebx, %edi
	subl      %edx, %edi
	leal      31(%edi), %ebx
	movl      %ebx, %ecx
	movl      20(%esi), %edi
	movl      8(%esi), %edx
	shrl      $8, %ecx
	movl      $113, 4(%esi)
	movb      %cl, (%edi,%edx)
	movl      20(%esi), %ecx
	incl      %ecx
	movl      8(%esi), %edi
	movl      %ecx, 20(%esi)
	movb      %bl, (%ecx,%edi)
	movl      20(%esi), %ebx
	movl      108(%esi), %edx
	incl      %ebx
	testl     %edx, %edx
	movl      %ebx, 20(%esi)
	je        .L00001188
.L0000113E:
	movl      8(%ebp), %edi
	movl      48(%edi), %edx
	movl      %edx, %ecx
	movl      8(%esi), %edi
	shrl      $24, %ecx
	movb      %cl, (%ebx,%edi)
	movl      20(%esi), %ebx
	movl      8(%esi), %edi
	incl      %ebx
	shrl      $16, %edx
	movl      %ebx, 20(%esi)
	movb      %dl, (%ebx,%edi)
	movl      8(%ebp), %eax
	movzwl    48(%eax), %ebx
	movl      20(%esi), %edi
	movl      %ebx, %edx
	incl      %edi
	movl      8(%esi), %ecx
	shrl      $8, %edx
	movl      %edi, 20(%esi)
	movb      %dl, (%edi,%ecx)
	movl      20(%esi), %edi
	incl      %edi
	movl      8(%esi), %edx
	movl      %edi, 20(%esi)
	movb      %bl, (%edi,%edx)
	incl      20(%esi)
.L00001188:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L00001194:
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	movl      4(%esi), %eax
	jmp       .L000007FA
.L000011A5:
	movl      132(%esi), %edx
	cmpl      $1, %edx
	jle       .L000010EB
.L000011B4:
	cmpl      $5, %edx
	movl      $1, %eax
	jle       .L000010ED
.L000011C2:
	xorl      %eax, %eax
	cmpl      $6, %edx
	setne     %al
	addl      $2, %eax
	jmp       .L000010ED
.L000011D2:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L000011DE:
	movl      8(%ebp), %edx
	movl      20(%esi), %ecx
	movl      %eax, 48(%edx)
	movl      8(%esi), %eax
	movb      $31, (%ecx,%eax)
	movl      20(%esi), %edi
	incl      %edi
	movl      8(%esi), %ebx
	movl      %edi, 20(%esi)
	movb      $139, (%edi,%ebx)
	movl      20(%esi), %ecx
	incl      %ecx
	movl      8(%esi), %edx
	movl      %ecx, 20(%esi)
	movb      $8, (%ecx,%edx)
	movl      20(%esi), %eax
	movl      28(%esi), %edx
	leal      1(%eax), %ecx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %ecx, 20(%esi)
	jne       .L000012B0
.L00001221:
	movl      8(%esi), %ebx
	movb      $0, (%ecx,%ebx)
	movl      20(%esi), %edi
	movl      8(%esi), %edx
	incl      %edi
	movl      %edi, 20(%esi)
	movb      $0, (%edi,%edx)
	movl      20(%esi), %ebx
	incl      %ebx
	movl      8(%esi), %ecx
	movl      %ebx, 20(%esi)
	movb      $0, (%ebx,%ecx)
	movl      20(%esi), %edi
	incl      %edi
	movl      8(%esi), %edx
	movl      %edi, 20(%esi)
	movb      $0, (%edi,%edx)
	movl      20(%esi), %ebx
	incl      %ebx
	movl      8(%esi), %ecx
	movl      %ebx, 20(%esi)
	movb      $0, (%ebx,%ecx)
	movl      20(%esi), %edi
	movl      132(%esi), %edx
	leal      1(%edi), %ecx
	addl      $2, %edi
	cmpl      $9, %edx
	movl      8(%esi), %ebx
	movl      %edi, 20(%esi)
	movb      $2, %al
	je        .L00001287
.L0000127C:
	cmpl      $1, 136(%esi)
	jle       .L000012A8
.L00001285:
	movb      $4, %al
.L00001287:
	movb      %al, (%ecx,%ebx)
	movl      8(%esi), %eax
	movl      20(%esi), %ecx
	movb      $3, (%ecx,%eax)
	incl      20(%esi)
	movl      $113, 4(%esi)
	movl      $113, %eax
	jmp       .L000007FA
.L000012A8:
	xorl      %eax, %eax
	decl      %edx
	jg        .L00001287
.L000012AD:
	jmp       .L00001285
.L000012AF:
	.p2align 3
.L000012B0:
	addl      $2, %eax
	movl      %eax, 20(%esi)
	movl      44(%edx), %edi
	xorl      %eax, %eax
	cmpl      $0, (%edx)
	setne     %al
	testl     %edi, %edi
	movl      8(%esi), %ebx
	je        .L000012CB
.L000012C8:
	addl      $2, %eax
.L000012CB:
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L000012D5
.L000012D2:
	addl      $4, %eax
.L000012D5:
	movl      28(%edx), %edi
	testl     %edi, %edi
	je        .L000012DF
.L000012DC:
	addl      $8, %eax
.L000012DF:
	movl      36(%edx), %edi
	testl     %edi, %edi
	je        .L000012E9
.L000012E6:
	addl      $16, %eax
.L000012E9:
	movb      %al, (%ecx,%ebx)
	movl      28(%esi), %edx
	movl      20(%esi), %ebx
	movb      4(%edx), %cl
	movl      8(%esi), %edi
	movb      %cl, (%ebx,%edi)
	movl      28(%esi), %edx
	movl      20(%esi), %ebx
	movl      4(%edx), %ecx
	incl      %ebx
	movl      8(%esi), %edi
	shrl      $8, %ecx
	movl      %ebx, 20(%esi)
	movb      %cl, (%ebx,%edi)
	movl      20(%esi), %ebx
	movl      28(%esi), %edx
	incl      %ebx
	movzwl    6(%edx), %ecx
	movl      8(%esi), %edi
	movl      %ebx, 20(%esi)
	movb      %cl, (%ebx,%edi)
	movl      20(%esi), %ebx
	movl      28(%esi), %edx
	incl      %ebx
	movzbl    7(%edx), %ecx
	movl      8(%esi), %edi
	movl      %ebx, 20(%esi)
	movb      %cl, (%ebx,%edi)
	movl      20(%esi), %edx
	leal      1(%edx), %ecx
	addl      $2, %edx
	movl      %edx, 20(%esi)
	movl      132(%esi), %edx
	cmpl      $9, %edx
	movl      8(%esi), %ebx
	movb      $2, %al
	je        .L00001364
.L00001355:
	cmpl      $1, 136(%esi)
	jle       .L000013E8
.L00001362:
	movb      $4, %al
.L00001364:
	movb      %al, (%ecx,%ebx)
	movl      28(%esi), %edx
	movl      20(%esi), %ebx
	movb      12(%edx), %cl
	movl      8(%esi), %edi
	movb      %cl, (%ebx,%edi)
	movl      28(%esi), %ebx
	movl      20(%esi), %ecx
	movl      16(%ebx), %eax
	incl      %ecx
	testl     %eax, %eax
	movl      %ecx, 20(%esi)
	je        .L000013AC
.L00001387:
	movb      20(%ebx), %dl
	movl      8(%esi), %edi
	movb      %dl, (%ecx,%edi)
	movl      20(%esi), %ebx
	incl      %ebx
	movl      %ebx, 20(%esi)
	movl      28(%esi), %edx
	movl      20(%edx), %ecx
	movl      8(%esi), %edi
	shrl      $8, %ecx
	movb      %cl, (%ebx,%edi)
	incl      20(%esi)
	movl      28(%esi), %ebx
.L000013AC:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	jne       .L000013CB
.L000013B3:
	movl      $0, 32(%esi)
	movl      $69, 4(%esi)
	movl      $69, %eax
	jmp       .L000007FA
.L000013CB:
	pushl     %ecx
	pushl     20(%esi)
	pushl     8(%esi)
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32
.L000013DD:
	movl      8(%ebp), %ebx
	movl      %eax, 48(%ebx)
	addl      $16, %esp
	jmp       .L000013B3
.L000013E8:
	xorl      %eax, %eax
	decl      %edx
	jg        .L00001364
.L000013F1:
	jmp       .L00001362
.L000013F6:
	.p2align 3
.L000013F8:
	cmpl      $4, 12(%ebp)
	je        .L000007BE
.L00001402:
	.p2align 2
.L00001404:
	movl      z_errmsg+16, %edx
	movl      8(%ebp), %esi
	movl      %edx, 24(%esi)
.L00001410:
	movl      $-2, %eax
	jmp       .L000007D8
	.size	deflate, .-deflate
# ----------------------
.L0000141A:
	.p2align 2
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L00001431
.L00001428:
	movl      28(%ebx), %edx
	testl     %edx, %edx
	movl      %edx, %ecx
	jne       .L00001440
.L00001431:
	movl      $-2, %eax
.L00001436:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L0000143D:
	.p2align 3
.L00001440:
	movl      4(%edx), %esi
	cmpl      $42, %esi
	je        .L00001470
.L00001448:
	cmpl      $69, %esi
	je        .L00001470
.L0000144D:
	cmpl      $73, %esi
	je        .L00001470
.L00001452:
	cmpl      $91, %esi
	je        .L00001470
.L00001457:
	cmpl      $103, %esi
	je        .L00001470
.L0000145C:
	cmpl      $113, %esi
	je        .L00001470
.L00001461:
	cmpl      $666, %esi
	movl      $-2, %eax
	jne       .L00001436
.L0000146E:
	.p2align 3
.L00001470:
	movl      8(%ecx), %eax
	testl     %eax, %eax
	jne       .L000014E8
.L00001477:
	movl      68(%edx), %eax
	testl     %eax, %eax
	jne       .L000014D4
.L0000147E:
	movl      64(%edx), %eax
	testl     %eax, %eax
	jne       .L000014C0
.L00001485:
	movl      56(%edx), %eax
	testl     %eax, %eax
	jne       .L000014B0
.L0000148C:
	subl      $8, %esp
	pushl     28(%ebx)
	pushl     40(%ebx)
	call      *36(%ebx)
.L00001498:
	xorl      %edx, %edx
	addl      $16, %esp
	cmpl      $113, %esi
	setne     %dl
	movl      $0, 28(%ebx)
	leal      -3(%edx,%edx,2), %eax
	jmp       .L00001436
.L000014B0:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L000014BA:
	addl      $16, %esp
	jmp       .L0000148C
.L000014BF:
	.p2align 3
.L000014C0:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L000014CA:
	addl      $16, %esp
	movl      28(%ebx), %edx
	jmp       .L00001485
.L000014D2:
	.p2align 2
.L000014D4:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L000014DE:
	addl      $16, %esp
	movl      28(%ebx), %edx
	jmp       .L0000147E
.L000014E6:
	.p2align 3
.L000014E8:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L000014F2:
	addl      $16, %esp
	movl      28(%ebx), %edx
	jmp       .L00001477
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L000014FD:
	.p2align 3
# ----------------------
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      12(%ebp), %esi
	testl     %esi, %esi
	movl      8(%ebp), %ebx
	je        .L00001521
.L00001513:
	testl     %ebx, %ebx
	je        .L00001521
.L00001517:
	movl      28(%esi), %edx
	testl     %edx, %edx
	movl      %edx, -20(%ebp)
	jne       .L00001530
.L00001521:
	movl      $-2, %eax
.L00001526:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0000152E:
	.p2align 3
.L00001530:
	cld       
	movl      $14, %ecx
	movl      %ebx, %edi
	rep movsl     
	pushl     %eax
	pushl     $5828
	pushl     $1
	pushl     40(%ebx)
	call      *32(%ebx)
.L00001548:
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      $-4, %eax
	je        .L00001526
.L0000155A:
	movl      -16(%ebp), %eax
	movl      %eax, 28(%ebx)
	cld       
	movl      %eax, %edi
	movl      -20(%ebp), %esi
	movl      $1457, %ecx
	rep movsl     
	movl      %ebx, (%eax)
	pushl     %esi
	pushl     $2
	pushl     44(%eax)
	pushl     40(%ebx)
	call      *32(%ebx)
.L0000157B:
	addl      $12, %esp
	movl      -16(%ebp), %edi
	movl      %eax, 56(%edi)
	pushl     $2
	pushl     44(%edi)
	pushl     40(%ebx)
	call      *32(%ebx)
.L0000158F:
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%ebx)
	call      *32(%ebx)
.L000015A3:
	addl      $12, %esp
	movl      -16(%ebp), %esi
	movl      %eax, 68(%esi)
	pushl     $4
	pushl     5788(%esi)
	pushl     40(%ebx)
	call      *32(%ebx)
.L000015BA:
	movl      %eax, %esi
	movl      -16(%ebp), %eax
	movl      56(%eax), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %esi, 8(%eax)
	je        .L000016A8
.L000015D0:
	movl      64(%eax), %edi
	testl     %edi, %edi
	je        .L000016A8
.L000015DB:
	movl      68(%eax), %ecx
	testl     %ecx, %ecx
	je        .L000016A8
.L000015E6:
	testl     %esi, %esi
	je        .L000016A8
.L000015EE:
	movl      -16(%ebp), %eax
	movl      44(%eax), %ebx
	sall      $1, %ebx
	pushl     %ecx
	pushl     %ebx
	movl      -20(%ebp), %ebx
	pushl     56(%ebx)
	pushl     %edx
	call      memcpy
.L00001604:
	movl      -16(%ebp), %edi
	movl      44(%edi), %edx
	addl      $12, %esp
	sall      $1, %edx
	pushl     %edx
	pushl     64(%ebx)
	pushl     64(%edi)
	call      memcpy
.L0000161B:
	movl      -16(%ebp), %edi
	movl      76(%edi), %ecx
	addl      $12, %esp
	sall      $1, %ecx
	pushl     %ecx
	pushl     68(%ebx)
	pushl     68(%edi)
	call      memcpy
.L00001632:
	movl      -16(%ebp), %edi
	addl      $12, %esp
	pushl     12(%edi)
	movl      -20(%ebp), %edx
	pushl     8(%edx)
	pushl     8(%edi)
	call      memcpy
.L00001649:
	movl      -20(%ebp), %ebx
	movl      16(%ebx), %eax
	subl      8(%ebx), %eax
	movl      8(%edi), %ebx
	leal      (%eax,%ebx), %ecx
	movl      %ecx, 16(%edi)
	movl      5788(%edi), %ecx
	movl      %ecx, %eax
	andl      $-2, %eax
	leal      (%eax,%esi), %edx
	leal      (%ecx,%ecx,2), %esi
	addl      %esi, %ebx
	movl      %ebx, 5784(%edi)
	movl      %edi, %ebx
	addl      $148, %ebx
	movl      %ebx, 2840(%edi)
	addl      $2292, %ebx
	movl      %ebx, 2852(%edi)
	addl      $244, %ebx
	movl      %edx, 5796(%edi)
	movl      %ebx, 2864(%edi)
	xorl      %eax, %eax
	jmp       .L00001526
.L000016A7:
	.p2align 3
.L000016A8:
	subl      $12, %esp
	pushl     %ebx
	call      deflateEnd
.L000016B1:
	movl      $-4, %eax
	jmp       .L00001526
	.size	deflateCopy, .-deflateCopy
# ----------------------
.L000016BB:
	.p2align 2
# ----------------------
	.local	lm_init
	.type	lm_init, @function
lm_init:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $8, %esp
	movl      8(%ebp), %ebx
	movl      44(%ebx), %ecx
	movl      76(%ebx), %edx
	sall      $1, %ecx
	movl      %ecx, 60(%ebx)
	sall      $1, %edx
	movl      68(%ebx), %ecx
	movw      $0, -2(%edx,%ecx)
	subl      $2, %edx
	pushl     %edx
	pushl     $0
	pushl     %ecx
	call      memset
.L000016E9:
	movl      132(%ebx), %edx
	leal      (%edx,%edx,2), %ecx
	sall      $2, %ecx
	movzwl    configuration_table+2(%ecx), %edx
	movl      %edx, 128(%ebx)
	movzwl    configuration_table(%ecx), %edx
	movl      %edx, 140(%ebx)
	movzwl    configuration_table+4(%ecx), %edx
	movl      %edx, 144(%ebx)
	movzwl    configuration_table+6(%ecx), %edx
	movl      %edx, 124(%ebx)
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      $0, 72(%ebx)
	addl      $16, %esp
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	lm_init, .-lm_init
# ----------------------
.L00001769:
	.p2align 2
# ----------------------
	.local	fill_window
	.type	fill_window, @function
fill_window:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      8(%ebp), %edx
	movl      44(%edx), %eax
	movl      8(%ebp), %ecx
	movl      %eax, -20(%ebp)
	movl      116(%ecx), %edi
.L00001784:
	movl      8(%ebp), %ecx
	movl      60(%ecx), %edx
	movl      -20(%ebp), %esi
	movl      8(%ebp), %ecx
	subl      %edi, %edx
	movl      108(%ecx), %ebx
	leal      -262(%eax,%esi), %edi
	subl      %ebx, %edx
	cmpl      %edi, %ebx
	movl      %edx, -16(%ebp)
	jae       .L000019CD
.L000017A9:
	movl      8(%ebp), %ebx
	movl      (%ebx), %esi
	movl      4(%esi), %edx
	testl     %edx, %edx
	je        .L000018CF
.L000017B9:
	movl      8(%ebp), %eax
	movl      108(%eax), %ebx
	addl      56(%eax), %ebx
	movl      116(%eax), %edi
	addl      %edi, %ebx
	cmpl      -16(%ebp), %edx
	movl      %ebx, -24(%ebp)
	movl      %edx, %ebx
	jbe       .L000017D4
.L000017D1:
	movl      -16(%ebp), %ebx
.L000017D4:
	xorl      %eax, %eax
	testl     %ebx, %ebx
	jne       .L00001973
.L000017DE:
	movl      8(%ebp), %ebx
	leal      (%eax,%edi), %esi
	movl      5812(%ebx), %edx
	leal      (%edx,%esi), %edi
	cmpl      $2, %edi
	movl      %esi, 116(%ebx)
	movl      %edx, -44(%ebp)
	jbe       .L00001968
.L000017FC:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %ebx
	subl      %edx, %ebx
	movl      56(%ecx), %edx
	movl      %edx, -28(%ebp)
	movzbl    (%ebx,%edx), %edi
	movl      88(%ecx), %edx
	movl      %edx, -32(%ebp)
	movl      %edi, 72(%ecx)
	movb      -32(%ebp), %cl
	sall      %cl, %edi
	movl      -28(%ebp), %ecx
	movzbl    1(%ebx,%ecx), %edx
	xorl      %edx, %edi
	movl      8(%ebp), %edx
	movl      84(%edx), %ecx
	movl      -44(%ebp), %eax
	andl      %ecx, %edi
	movl      %ecx, -36(%ebp)
	testl     %eax, %eax
	movl      8(%ebp), %ecx
	movl      %edi, 72(%ecx)
	je        .L00001960
.L00001842:
	movl      %esi, %edi
	movl      68(%ecx), %eax
	movl      64(%ecx), %edx
	movl      52(%ecx), %esi
	movl      %eax, -56(%ebp)
	movl      %edx, -40(%ebp)
	movl      %esi, -48(%ebp)
	.p2align 3
.L00001858:
	movl      8(%ebp), %esi
	movl      72(%esi), %eax
	movb      -32(%ebp), %cl
	movl      -28(%ebp), %edx
	sall      %cl, %eax
	movzbl    2(%ebx,%edx), %ecx
	xorl      %ecx, %eax
	andl      -36(%ebp), %eax
	movl      8(%ebp), %ecx
	movl      %eax, 72(%ecx)
	movl      -56(%ebp), %edx
	movl      -48(%ebp), %ecx
	movw      (%edx,%eax,2), %si
	andl      %ebx, %ecx
	movl      -40(%ebp), %edx
	movw      %si, (%edx,%ecx,2)
	movl      -44(%ebp), %edx
	decl      %edx
	movl      -56(%ebp), %esi
	leal      (%edx,%edi), %ecx
	movw      %bx, (%esi,%eax,2)
	incl      %ebx
	movl      8(%ebp), %eax
	cmpl      $2, %ecx
	movl      %edx, 5812(%eax)
	jbe       .L000018B0
.L000018A6:
	testl     %edx, %edx
	movl      %edx, -44(%ebp)
	jne       .L00001858
.L000018AD:
	.p2align 3
.L000018B0:
	cmpl      $261, %edi
	ja        .L000018CF
.L000018B8:
	movl      8(%ebp), %eax
	movl      (%eax), %ecx
	movl      4(%ecx), %edx
	testl     %edx, %edx
	je        .L000018CF
.L000018C4:
	movl      8(%ebp), %ebx
	movl      44(%ebx), %eax
	jmp       .L00001784
.L000018CF:
	movl      8(%ebp), %edi
	movl      5824(%edi), %edx
	movl      60(%edi), %ecx
	cmpl      %ecx, %edx
	jae       .L0000191B
.L000018DF:
	movl      116(%edi), %ebx
	addl      108(%edi), %ebx
	cmpl      %ebx, %edx
	jae       .L00001923
.L000018E9:
	movl      %ecx, %esi
	subl      %ebx, %esi
	cmpl      $258, %esi
	jbe       .L000018FA
.L000018F5:
	movl      $258, %esi
.L000018FA:
	movl      8(%ebp), %eax
	movl      56(%eax), %ecx
	pushl     %edx
	pushl     %esi
	pushl     $0
	addl      %ebx, %ecx
	pushl     %ecx
	call      memset
.L0000190C:
	leal      (%esi,%ebx), %edx
	movl      8(%ebp), %esi
	addl      $16, %esp
	movl      %edx, 5824(%esi)
.L0000191B:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001923:
	leal      258(%ebx), %edi
	cmpl      %edi, %edx
	jae       .L0000191B
.L0000192D:
	subl      %edx, %ebx
	movl      %ecx, %eax
	leal      258(%ebx), %esi
	subl      %edx, %eax
	cmpl      %eax, %esi
	jbe       .L0000193F
.L0000193D:
	movl      %eax, %esi
.L0000193F:
	movl      8(%ebp), %ecx
	addl      56(%ecx), %edx
	pushl     %eax
	pushl     %esi
	pushl     $0
	pushl     %edx
	call      memset
.L0000194F:
	movl      8(%ebp), %ebx
	addl      $16, %esp
	addl      %esi, 5824(%ebx)
	jmp       .L0000191B
.L0000195D:
	.p2align 3
.L00001960:
	movl      %esi, %edi
	jmp       .L000018B0
.L00001967:
	.p2align 3
.L00001968:
	movl      8(%ebp), %ebx
	movl      116(%ebx), %edi
	jmp       .L000018B0
.L00001973:
	subl      %ebx, %edx
	movl      %edx, 4(%esi)
	pushl     %eax
	pushl     %ebx
	pushl     (%esi)
	pushl     -24(%ebp)
	call      memcpy
.L00001984:
	movl      28(%esi), %edx
	movl      24(%edx), %eax
	addl      $16, %esp
	cmpl      $1, %eax
	je        .L000019BE
.L00001992:
	cmpl      $2, %eax
	je        .L000019A9
.L00001997:
	movl      8(%ebp), %ecx
	addl      %ebx, (%esi)
	addl      %ebx, 8(%esi)
	movl      %ebx, %eax
	movl      116(%ecx), %edi
	jmp       .L000017DE
.L000019A9:
	pushl     %eax
	pushl     %ebx
	pushl     -24(%ebp)
	pushl     48(%esi)
	call      crc32
.L000019B6:
	addl      $16, %esp
	movl      %eax, 48(%esi)
	jmp       .L00001997
.L000019BE:
	pushl     %eax
	pushl     %ebx
	pushl     -24(%ebp)
	pushl     48(%esi)
	call      adler32
.L000019CB:
	jmp       .L000019B6
.L000019CD:
	movl      56(%ecx), %ebx
	pushl     %ecx
	pushl     %esi
	leal      (%esi,%ebx), %edx
	pushl     %edx
	pushl     %ebx
	call      memcpy
.L000019DC:
	movl      8(%ebp), %edi
	subl      %esi, 112(%edi)
	subl      %esi, 108(%edi)
	subl      %esi, 92(%edi)
	movl      76(%edi), %ecx
	movl      68(%edi), %esi
	movl      %esi, -56(%ebp)
	leal      (%esi,%ecx,2), %edx
	addl      $16, %esp
	.p2align 3
.L000019F8:
	subl      $2, %edx
	movzwl    (%edx), %eax
	xorl      %ebx, %ebx
	cmpl      -20(%ebp), %eax
	jb        .L00001A0B
.L00001A05:
	movl      %eax, %ebx
	subw      -20(%ebp), %bx
.L00001A0B:
	decl      %ecx
	movw      %bx, (%edx)
	jne       .L000019F8
.L00001A11:
	movl      8(%ebp), %edi
	movl      -20(%ebp), %ecx
	movl      64(%edi), %eax
	leal      (%eax,%ecx,2), %edx
	.p2align 3
.L00001A20:
	subl      $2, %edx
	movzwl    (%edx), %eax
	xorl      %ebx, %ebx
	cmpl      -20(%ebp), %eax
	jb        .L00001A33
.L00001A2D:
	movl      %eax, %ebx
	subw      -20(%ebp), %bx
.L00001A33:
	decl      %ecx
	movw      %bx, (%edx)
	jne       .L00001A20
.L00001A39:
	movl      -20(%ebp), %ecx
	addl      %ecx, -16(%ebp)
	jmp       .L000017A9
	.size	fill_window, .-fill_window
# ----------------------
	.local	deflate_stored
	.type	deflate_stored, @function
deflate_stored:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %ecx
	movl      12(%ecx), %eax
	movl      $65535, -16(%ebp)
	subl      $5, %eax
	cmpl      %eax, -16(%ebp)
	jbe       .L00001A68
.L00001A62:
	movl      %eax, -16(%ebp)
	.p2align 3
.L00001A68:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %edx
	cmpl      $1, %edx
	jbe       .L00001BD8
.L00001A77:
	movl      8(%ebp), %edi
	movl      108(%edi), %eax
	addl      %edx, %eax
	movl      92(%edi), %ecx
	movl      -16(%ebp), %esi
	testl     %eax, %eax
	movl      %eax, 108(%edi)
	movl      $0, 116(%edi)
	leal      (%esi,%ecx), %edx
	je        .L00001A9A
.L00001A96:
	cmpl      %edx, %eax
	jb        .L00001AFA
.L00001A9A:
	subl      %edx, %eax
	movl      8(%ebp), %ebx
	movl      %eax, 116(%ebx)
	movl      %edx, 108(%ebx)
	xorl      %eax, %eax
	subl      %ecx, %edx
	pushl     $0
	testl     %ecx, %ecx
	pushl     %edx
	js        .L00001AB5
.L00001AB0:
	movl      56(%ebx), %eax
	addl      %ecx, %eax
.L00001AB5:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001ABE:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %ebx
	movl      (%ecx), %esi
	movl      %ebx, 92(%ecx)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001AD4:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00001AE3
.L00001AE1:
	movl      %eax, %ebx
.L00001AE3:
	testl     %ebx, %ebx
	jne       .L00001BA0
.L00001AEB:
	movl      8(%ebp), %ecx
	movl      (%ecx), %ebx
	movl      16(%ebx), %edi
	testl     %edi, %edi
	je        .L00001B63
.L00001AF7:
	movl      92(%ecx), %ecx
.L00001AFA:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      44(%edi), %esi
	subl      %ecx, %edx
	subl      $262, %esi
	cmpl      %esi, %edx
	jb        .L00001A68
.L00001B13:
	pushl     $0
	xorl      %eax, %eax
	testl     %ecx, %ecx
	pushl     %edx
	js        .L00001B21
.L00001B1C:
	movl      56(%edi), %eax
	addl      %ecx, %eax
.L00001B21:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001B2A:
	movl      8(%ebp), %ecx
	movl      (%ecx), %esi
	movl      108(%ecx), %edx
	movl      28(%esi), %edi
	movl      %edx, 92(%ecx)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001B40:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00001B4F
.L00001B4D:
	movl      %eax, %ebx
.L00001B4F:
	testl     %ebx, %ebx
	jne       .L00001B6D
.L00001B53:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	jne       .L00001A68
.L00001B63:
	xorl      %eax, %eax
.L00001B65:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001B6D:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L00001B7A:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L00001B53
.L00001B95:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L00001B53
.L00001B9D:
	.p2align 3
.L00001BA0:
	pushl     %edx
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L00001BAD:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L00001AEB
.L00001BCC:
	movl      8(%edi), %edx
	movl      %edx, 16(%edi)
	jmp       .L00001AEB
.L00001BD7:
	.p2align 3
.L00001BD8:
	subl      $12, %esp
	pushl     %ecx
	call      fill_window
.L00001BE1:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	testl     %edx, %edx
	jne       .L00001A77
.L00001BF2:
	movl      12(%ebp), %ebx
	xorl      %eax, %eax
	testl     %ebx, %ebx
	je        .L00001B65
.L00001BFF:
	testl     %edx, %edx
	jne       .L00001A77
.L00001C07:
	movl      8(%ebp), %ebx
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%ebx)
	je        .L00001CB7
.L00001C1E:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %eax
	movl      92(%ebx), %edx
	cmpl      %edx, %eax
	jle       .L00001C7D
.L00001C2B:
	subl      %edx, %eax
	pushl     $0
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L00001C3B
.L00001C36:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L00001C3B:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001C44:
	movl      8(%ebp), %ecx
	movl      (%ecx), %esi
	movl      108(%ecx), %edx
	movl      28(%esi), %edi
	movl      %edx, 92(%ecx)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001C5A:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00001C69
.L00001C67:
	movl      %eax, %ebx
.L00001C69:
	testl     %ebx, %ebx
	jne       .L00001C87
.L00001C6D:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L00001B63
.L00001C7D:
	movl      $1, %eax
	jmp       .L00001B65
.L00001C87:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L00001C94:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L00001C6D
.L00001CAF:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L00001C6D
.L00001CB7:
	pushl     $1
	movl      92(%ebx), %edx
	movl      108(%ebx), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L00001CCD
.L00001CC8:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L00001CCD:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001CD6:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %esi
	movl      %esi, 92(%ebx)
	movl      (%ebx), %esi
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L00001CEC:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00001CFB
.L00001CF9:
	movl      %eax, %ebx
.L00001CFB:
	testl     %ebx, %ebx
	jne       .L00001D17
.L00001CFF:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %bl
	movzbl    %bl, %eax
	addl      $2, %eax
	jmp       .L00001B65
.L00001D17:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L00001D24:
	subl      %ebx, 16(%esi)
	movl      20(%edi), %edx
	addl      %ebx, 12(%esi)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%esi)
	testl     %edx, %edx
	movl      %edx, 20(%edi)
	jne       .L00001CFF
.L00001D3F:
	movl      8(%edi), %ecx
	movl      %ecx, 16(%edi)
	jmp       .L00001CFF
	.size	deflate_stored, .-deflate_stored
# ----------------------
.L00001D47:
	.p2align 3
# ----------------------
	.local	deflate_fast
	.type	deflate_fast, @function
deflate_fast:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      8(%ebp), %edi
.L00001D54:
	movl      116(%edi), %edx
	cmpl      $261, %edx
	jbe       .L00002028
.L00001D63:
	xorl      %ecx, %ecx
	cmpl      $2, %edx
	jbe       .L00001DA0
.L00001D6A:
	movl      72(%edi), %edx
	movl      88(%edi), %ecx
	sall      %cl, %edx
	movl      56(%edi), %ebx
	movl      108(%edi), %ecx
	movzbl    2(%ecx,%ebx), %esi
	xorl      %esi, %edx
	andl      84(%edi), %edx
	movl      68(%edi), %esi
	movzwl    (%esi,%edx,2), %eax
	andl      52(%edi), %ecx
	movl      64(%edi), %ebx
	movw      %ax, (%ebx,%ecx,2)
	movw      108(%edi), %bx
	movl      %edx, 72(%edi)
	movl      %eax, %ecx
	movw      %bx, (%esi,%edx,2)
.L00001DA0:
	testl     %ecx, %ecx
	je        .L00001DBA
.L00001DA4:
	movl      108(%edi), %edx
	movl      44(%edi), %esi
	subl      %ecx, %edx
	subl      $262, %esi
	cmpl      %esi, %edx
	jbe       .L00002010
.L00001DBA:
	cmpl      $2, 96(%edi)
	jbe       .L00001FB8
.L00001DC4:
	movw      108(%edi), %bx
	subw      112(%edi), %bx
	movl      5792(%edi), %esi
	movl      5796(%edi), %ecx
	movb      96(%edi), %dl
	movw      %bx, (%ecx,%esi,2)
	subl      $3, %edx
	movl      5784(%edi), %ecx
	movb      %dl, (%esi,%ecx)
	movzbl    %dl, %eax
	incl      5792(%edi)
	decl      %ebx
	movzbl    _length_code(%eax), %ecx
	incw      1176(%edi,%ecx,4)
	cmpw      $255, %bx
	ja        .L00001FA4
.L00001E0F:
	movzwl    %bx, %edx
	movzbl    _dist_code(%edx), %eax
.L00001E19:
	leal      2432(,%eax,4), %esi
	incw      8(%esi,%edi)
	movl      5788(%edi), %edx
	decl      %edx
	cmpl      %edx, 5792(%edi)
	sete      %cl
	movl      116(%edi), %edx
	movl      96(%edi), %eax
	subl      %eax, %edx
	movzbl    %cl, %ebx
	cmpl      128(%edi), %eax
	movl      %ebx, -16(%ebp)
	movl      %edx, 116(%edi)
	ja        .L00001F74
.L00001E52:
	cmpl      $2, %edx
	jbe       .L00001F74
.L00001E5B:
	decl      %eax
	movl      88(%edi), %esi
	movl      %eax, 96(%edi)
	movl      56(%edi), %ecx
	movl      84(%edi), %edx
	movl      52(%edi), %eax
	movl      64(%edi), %ebx
	movl      %esi, -36(%ebp)
	movl      %ecx, -44(%ebp)
	movl      %edx, -32(%ebp)
	movl      %eax, -40(%ebp)
	movl      %ebx, -48(%ebp)
	movl      68(%edi), %esi
.L00001E80:
	movl      108(%edi), %edx
	movl      %edx, -60(%ebp)
	incl      %edx
	movl      %edx, 108(%edi)
	movl      72(%edi), %eax
	movb      -36(%ebp), %cl
	movl      -44(%ebp), %ebx
	sall      %cl, %eax
	movzbl    2(%edx,%ebx), %ecx
	xorl      %ecx, %eax
	andl      -32(%ebp), %eax
	movl      -40(%ebp), %ebx
	andl      %ebx, %edx
	movw      (%esi,%eax,2), %cx
	movl      -48(%ebp), %ebx
	movw      %cx, (%ebx,%edx,2)
	movl      96(%edi), %ebx
	decl      %ebx
	movw      108(%edi), %cx
	testl     %ebx, %ebx
	movl      %eax, 72(%edi)
	movw      %cx, (%esi,%eax,2)
	movl      %ebx, 96(%edi)
	jne       .L00001E80
.L00001EC5:
	movl      -60(%ebp), %edx
	addl      $2, %edx
	movl      %edx, 108(%edi)
	.p2align 3
.L00001ED0:
	movl      -16(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L00001D54
.L00001EDB:
	pushl     $0
	movl      92(%edi), %edx
	movl      108(%edi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L00001EF1
.L00001EEC:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L00001EF1:
	pushl     %eax
	pushl     %edi
	call      _tr_flush_block
.L00001EF8:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %eax
	movl      %eax, (%esp)
	movl      %eax, -20(%ebp)
	call      _tr_flush_bits
.L00001F0E:
	movl      -20(%ebp), %edx
	movl      20(%edx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00001F20
.L00001F1E:
	movl      %eax, %ebx
.L00001F20:
	testl     %ebx, %ebx
	jne       .L00001F3B
.L00001F24:
	movl      (%edi), %edx
	movl      16(%edx), %esi
	testl     %esi, %esi
	jne       .L00001D54
.L00001F31:
	xorl      %eax, %eax
.L00001F33:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001F3B:
	pushl     %eax
	pushl     %ebx
	movl      -20(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L00001F4B:
	movl      -20(%ebp), %ecx
	subl      %ebx, 16(%esi)
	movl      20(%ecx), %edx
	addl      %ebx, 12(%esi)
	subl      %ebx, %edx
	addl      $16, %esp
	addl      %ebx, 16(%ecx)
	addl      %ebx, 20(%esi)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00001F24
.L00001F69:
	movl      8(%ecx), %ebx
	movl      %ebx, 16(%ecx)
	jmp       .L00001F24
.L00001F71:
	.p2align 2
.L00001F74:
	movl      108(%edi), %edx
	addl      %eax, %edx
	movl      %edx, 108(%edi)
	movl      $0, 96(%edi)
	movl      56(%edi), %ebx
	movzbl    (%edx,%ebx), %esi
	movl      %esi, 72(%edi)
	movl      88(%edi), %ecx
	movzbl    1(%edx,%ebx), %eax
	sall      %cl, %esi
	xorl      %eax, %esi
	andl      84(%edi), %esi
	movl      %esi, 72(%edi)
	jmp       .L00001ED0
.L00001FA4:
	shrw      $7, %bx
	movzwl    %bx, %esi
	movzbl    _dist_code+256(%esi), %eax
	jmp       .L00001E19
.L00001FB7:
	.p2align 3
.L00001FB8:
	movl      108(%edi), %edx
	movl      56(%edi), %esi
	movb      (%edx,%esi), %bl
	movl      5796(%edi), %ecx
	movl      5792(%edi), %esi
	movw      $0, (%ecx,%esi,2)
	movl      5784(%edi), %ecx
	movb      %bl, (%esi,%ecx)
	incl      5792(%edi)
	movzbl    %bl, %esi
	incw      148(%edi,%esi,4)
	movl      5788(%edi), %edx
	decl      %edx
	cmpl      %edx, 5792(%edi)
	sete      %cl
	movzbl    %cl, %ebx
	movl      %ebx, -16(%ebp)
	decl      116(%edi)
	incl      108(%edi)
	jmp       .L00001ED0
.L0000200E:
	.p2align 3
.L00002010:
	subl      $8, %esp
	pushl     %ecx
	pushl     %edi
	call      longest_match
.L0000201A:
	movl      %eax, 96(%edi)
	addl      $16, %esp
	jmp       .L00001DBA
.L00002025:
	.p2align 3
.L00002028:
	subl      $12, %esp
	pushl     %edi
	call      fill_window
.L00002031:
	movl      116(%edi), %edx
	addl      $16, %esp
	cmpl      $261, %edx
	ja        .L0000204C
.L0000203F:
	movl      12(%ebp), %ebx
	xorl      %eax, %eax
	testl     %ebx, %ebx
	je        .L00001F33
.L0000204C:
	testl     %edx, %edx
	jne       .L00001D63
.L00002054:
	movl      108(%edi), %eax
	cmpl      $2, %eax
	movl      %eax, %edx
	jbe       .L00002063
.L0000205E:
	movl      $2, %edx
.L00002063:
	cmpl      $4, 12(%ebp)
	movl      %edx, 5812(%edi)
	je        .L00002110
.L00002073:
	movl      5792(%edi), %ecx
	testl     %ecx, %ecx
	je        .L000020D0
.L0000207D:
	pushl     $0
	movl      92(%edi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L00002090
.L0000208B:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L00002090:
	pushl     %eax
	pushl     %edi
	call      _tr_flush_block
.L00002097:
	movl      108(%edi), %ebx
	movl      (%edi), %esi
	movl      28(%esi), %eax
	movl      %ebx, 92(%edi)
	movl      %eax, -28(%ebp)
	movl      %eax, (%esp)
	call      _tr_flush_bits
.L000020AD:
	movl      -28(%ebp), %edx
	movl      20(%edx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L000020BF
.L000020BD:
	movl      %eax, %ebx
.L000020BF:
	testl     %ebx, %ebx
	jne       .L000020DA
.L000020C3:
	movl      (%edi), %ebx
	movl      16(%ebx), %edi
	testl     %edi, %edi
	je        .L00001F31
.L000020D0:
	movl      $1, %eax
	jmp       .L00001F33
.L000020DA:
	pushl     %eax
	pushl     %ebx
	movl      -28(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L000020EA:
	movl      -28(%ebp), %ecx
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%ecx), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%ecx)
	testl     %esi, %esi
	movl      %esi, 20(%ecx)
	jne       .L000020C3
.L00002108:
	movl      8(%ecx), %edx
	movl      %edx, 16(%ecx)
	jmp       .L000020C3
.L00002110:
	pushl     $1
	movl      92(%edi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L00002123
.L0000211E:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L00002123:
	pushl     %eax
	pushl     %edi
	call      _tr_flush_block
.L0000212A:
	movl      108(%edi), %ebx
	movl      (%edi), %esi
	movl      28(%esi), %eax
	movl      %ebx, 92(%edi)
	movl      %eax, -24(%ebp)
	movl      %eax, (%esp)
	call      _tr_flush_bits
.L00002140:
	movl      -24(%ebp), %ecx
	movl      20(%ecx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00002152
.L00002150:
	movl      %eax, %ebx
.L00002152:
	testl     %ebx, %ebx
	jne       .L0000216B
.L00002156:
	movl      (%edi), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %bl
	movzbl    %bl, %eax
	addl      $2, %eax
	jmp       .L00001F33
.L0000216B:
	pushl     %eax
	pushl     %ebx
	movl      -24(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L0000217B:
	movl      -24(%ebp), %ecx
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%ecx), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%ecx)
	testl     %esi, %esi
	movl      %esi, 20(%ecx)
	jne       .L00002156
.L00002199:
	movl      8(%ecx), %edx
	movl      %edx, 16(%ecx)
	jmp       .L00002156
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L000021A1:
	.p2align 2
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edi
.L000021B0:
	movl      116(%edi), %edx
	cmpl      $261, %edx
	jbe       .L00002560
.L000021BF:
	xorl      %ecx, %ecx
	cmpl      $2, %edx
	jbe       .L00002554
.L000021CA:
	movl      108(%edi), %ebx
	movl      72(%edi), %edx
	movl      88(%edi), %ecx
	movl      56(%edi), %esi
	movl      %ebx, -40(%ebp)
	sall      %cl, %edx
	movzbl    2(%ebx,%esi), %ecx
	xorl      %ecx, %edx
	andl      84(%edi), %edx
	movl      %ebx, %esi
	movl      68(%edi), %ebx
	movzwl    (%ebx,%edx,2), %eax
	andl      52(%edi), %esi
	movl      64(%edi), %ecx
	movw      %ax, (%ecx,%esi,2)
	movw      108(%edi), %si
	movl      %edx, 72(%edi)
	movl      %eax, %ecx
	movw      %si, (%ebx,%edx,2)
.L00002205:
	movl      96(%edi), %edx
	movl      112(%edi), %ebx
	testl     %ecx, %ecx
	movl      %edx, 120(%edi)
	movl      %ebx, 100(%edi)
	movl      $2, 96(%edi)
	je        .L0000223A
.L0000221C:
	cmpl      128(%edi), %edx
	jae       .L0000223A
.L00002224:
	movl      -40(%ebp), %eax
	movl      44(%edi), %esi
	subl      %ecx, %eax
	subl      $262, %esi
	cmpl      %esi, %eax
	jbe       .L000024EF
.L0000223A:
	movl      120(%edi), %eax
	cmpl      $2, %eax
	jbe       .L0000224B
.L00002242:
	cmpl      %eax, 96(%edi)
	jbe       .L0000234C
.L0000224B:
	movl      104(%edi), %eax
	testl     %eax, %eax
	jne       .L00002268
.L00002252:
	movl      -40(%ebp), %edx
	incl      %edx
	movl      $1, 104(%edi)
	movl      %edx, 108(%edi)
	decl      116(%edi)
	jmp       .L000021B0
.L00002268:
	movl      56(%edi), %eax
	addl      %eax, -40(%ebp)
	movl      -40(%ebp), %edx
	movb      -1(%edx), %bl
	movl      5796(%edi), %esi
	movl      5792(%edi), %edx
	movl      5784(%edi), %ecx
	movw      $0, (%esi,%edx,2)
	movb      %bl, (%edx,%ecx)
	incl      5792(%edi)
	movzbl    %bl, %esi
	incw      148(%edi,%esi,4)
	movl      5788(%edi), %ebx
	decl      %ebx
	cmpl      %ebx, 5792(%edi)
	jne       .L000022F8
.L000022AF:
	pushl     $0
	movl      92(%edi), %edx
	movl      108(%edi), %ebx
	subl      %edx, %ebx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ebx
	js        .L000022C5
.L000022C0:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L000022C5:
	pushl     %eax
	pushl     %edi
	call      _tr_flush_block
.L000022CC:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %ecx
	movl      %ecx, (%esp)
	movl      %ecx, -28(%ebp)
	call      _tr_flush_bits
.L000022E2:
	movl      -28(%ebp), %edx
	movl      20(%edx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L000022F4
.L000022F2:
	movl      %eax, %ebx
.L000022F4:
	testl     %ebx, %ebx
	jne       .L00002315
.L000022F8:
	incl      108(%edi)
	decl      116(%edi)
.L000022FE:
	movl      (%edi), %ecx
	movl      16(%ecx), %esi
	testl     %esi, %esi
	jne       .L000021B0
.L0000230B:
	xorl      %eax, %eax
.L0000230D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00002315:
	pushl     %edx
	pushl     %ebx
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%esi)
	call      memcpy
.L00002325:
	movl      -28(%ebp), %edx
	subl      %ebx, 16(%esi)
	movl      20(%edx), %ecx
	addl      %ebx, 12(%esi)
	subl      %ebx, %ecx
	addl      $16, %esp
	addl      %ebx, 16(%edx)
	addl      %ebx, 20(%esi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L000022F8
.L00002343:
	movl      8(%edx), %ebx
	movl      %ebx, 16(%edx)
	jmp       .L000022F8
.L0000234B:
	.p2align 2
.L0000234C:
	movl      116(%edi), %eax
	addl      %eax, -40(%ebp)
	movl      -40(%ebp), %ecx
	movw      108(%edi), %dx
	subw      100(%edi), %dx
	subl      $3, %ecx
	movl      5792(%edi), %ebx
	movl      %ecx, -20(%ebp)
	leal      -1(%edx), %esi
	movb      120(%edi), %cl
	movl      5796(%edi), %eax
	movw      %si, (%eax,%ebx,2)
	subl      $3, %ecx
	movl      5784(%edi), %esi
	movb      %cl, (%ebx,%esi)
	leal      -2(%edx), %esi
	movzbl    %cl, %edx
	incl      5792(%edi)
	movzbl    _length_code(%edx), %ebx
	incw      1176(%edi,%ebx,4)
	cmpw      $255, %si
	ja        .L000024DC
.L000023AB:
	movzwl    %si, %ebx
	movzbl    _dist_code(%ebx), %eax
.L000023B5:
	leal      2432(,%eax,4), %ecx
	incw      8(%ecx,%edi)
	movl      5788(%edi), %esi
	decl      %esi
	cmpl      %esi, 5792(%edi)
	movl      116(%edi), %ecx
	movl      120(%edi), %esi
	sete      %dl
	subl      %esi, %ecx
	movzbl    %dl, %ebx
	incl      %ecx
	subl      $2, %esi
	movl      %ebx, -16(%ebp)
	movl      %ecx, 116(%edi)
	movl      %esi, 120(%edi)
	.p2align 2
.L000023EC:
	movl      108(%edi), %esi
	incl      %esi
	cmpl      -20(%ebp), %esi
	movl      %esi, 108(%edi)
	ja        .L00002429
.L000023F8:
	movl      72(%edi), %edx
	movl      88(%edi), %ecx
	movl      56(%edi), %ebx
	sall      %cl, %edx
	movzbl    2(%esi,%ebx), %ecx
	xorl      %ecx, %edx
	andl      84(%edi), %edx
	movl      68(%edi), %ecx
	movl      64(%edi), %ebx
	movw      (%ecx,%edx,2), %ax
	andl      52(%edi), %esi
	movw      %ax, (%ebx,%esi,2)
	movw      108(%edi), %bx
	movl      %edx, 72(%edi)
	movw      %bx, (%ecx,%edx,2)
.L00002429:
	movl      120(%edi), %edx
	decl      %edx
	testl     %edx, %edx
	movl      %edx, 120(%edi)
	jne       .L000023EC
.L00002434:
	movl      108(%edi), %eax
	movl      -16(%ebp), %esi
	incl      %eax
	testl     %esi, %esi
	movl      $0, 104(%edi)
	movl      $2, 96(%edi)
	movl      %eax, 108(%edi)
	je        .L000021B0
.L00002454:
	pushl     $0
	movl      92(%edi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L00002467
.L00002462:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L00002467:
	pushl     %eax
	pushl     %edi
	call      _tr_flush_block
.L0000246E:
	movl      108(%edi), %ebx
	movl      (%edi), %esi
	movl      %ebx, 92(%edi)
	movl      28(%esi), %ecx
	movl      %ecx, (%esp)
	movl      %ecx, -24(%ebp)
	call      _tr_flush_bits
.L00002484:
	movl      -24(%ebp), %eax
	movl      20(%eax), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00002496
.L00002494:
	movl      %eax, %ebx
.L00002496:
	testl     %ebx, %ebx
	je        .L000022FE
.L0000249E:
	pushl     %eax
	pushl     %ebx
	movl      -24(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%esi)
	call      memcpy
.L000024AE:
	movl      -24(%ebp), %edx
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edx), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%edx)
	testl     %esi, %esi
	movl      %esi, 20(%edx)
	jne       .L000022FE
.L000024D0:
	movl      8(%edx), %ecx
	movl      %ecx, 16(%edx)
	jmp       .L000022FE
.L000024DB:
	.p2align 2
.L000024DC:
	shrw      $7, %si
	movzwl    %si, %edx
	movzbl    _dist_code+256(%edx), %eax
	jmp       .L000023B5
.L000024EF:
	subl      $8, %esp
	pushl     %ecx
	pushl     %edi
	call      longest_match
.L000024F9:
	addl      $16, %esp
	cmpl      $5, %eax
	movl      %eax, 96(%edi)
	ja        .L00002548
.L00002504:
	cmpl      $1, 136(%edi)
	je        .L00002540
.L0000250D:
	cmpl      $3, %eax
	je        .L0000251D
.L00002512:
	movl      108(%edi), %eax
	movl      %eax, -40(%ebp)
	jmp       .L0000223A
.L0000251D:
	movl      108(%edi), %ebx
	movl      %ebx, %ecx
	subl      112(%edi), %ecx
	cmpl      $4096, %ecx
	movl      %ebx, -40(%ebp)
	jbe       .L0000223A
.L00002534:
	movl      $2, 96(%edi)
	jmp       .L0000223A
.L00002540:
	movl      108(%edi), %edx
	movl      %edx, -40(%ebp)
	jmp       .L00002534
.L00002548:
	movl      108(%edi), %esi
	movl      %esi, -40(%ebp)
	jmp       .L0000223A
.L00002553:
	.p2align 2
.L00002554:
	movl      108(%edi), %edx
	movl      %edx, -40(%ebp)
	jmp       .L00002205
.L0000255F:
	.p2align 3
.L00002560:
	subl      $12, %esp
	pushl     %edi
	call      fill_window
.L00002569:
	movl      116(%edi), %edx
	addl      $16, %esp
	cmpl      $261, %edx
	ja        .L00002584
.L00002577:
	movl      12(%ebp), %ebx
	xorl      %eax, %eax
	testl     %ebx, %ebx
	je        .L0000230D
.L00002584:
	testl     %edx, %edx
	jne       .L000021BF
.L0000258C:
	movl      104(%edi), %ebx
	testl     %ebx, %ebx
	je        .L000025CF
.L00002593:
	movl      108(%edi), %esi
	addl      56(%edi), %esi
	movb      -1(%esi), %bl
	movl      5796(%edi), %edx
	movl      5792(%edi), %esi
	movl      5784(%edi), %ecx
	movw      $0, (%edx,%esi,2)
	movb      %bl, (%esi,%ecx)
	incl      5792(%edi)
	movzbl    %bl, %eax
	incw      148(%edi,%eax,4)
	movl      $0, 104(%edi)
.L000025CF:
	movl      108(%edi), %ebx
	cmpl      $2, %ebx
	movl      %ebx, -40(%ebp)
	movl      %ebx, %eax
	jbe       .L000025E1
.L000025DC:
	movl      $2, %eax
.L000025E1:
	cmpl      $4, 12(%ebp)
	movl      %eax, 5812(%edi)
	je        .L00002691
.L000025F1:
	movl      5792(%edi), %ecx
	testl     %ecx, %ecx
	je        .L00002651
.L000025FB:
	pushl     $0
	movl      92(%edi), %eax
	subl      %eax, -40(%ebp)
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     -40(%ebp)
	js        .L00002611
.L0000260C:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L00002611:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L00002618:
	movl      108(%edi), %ebx
	movl      (%edi), %esi
	movl      28(%esi), %eax
	movl      %ebx, 92(%edi)
	movl      %eax, -36(%ebp)
	movl      %eax, (%esp)
	call      _tr_flush_bits
.L0000262E:
	movl      -36(%ebp), %edx
	movl      20(%edx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L00002640
.L0000263E:
	movl      %eax, %ebx
.L00002640:
	testl     %ebx, %ebx
	jne       .L0000265B
.L00002644:
	movl      (%edi), %ebx
	movl      16(%ebx), %edi
	testl     %edi, %edi
	je        .L0000230B
.L00002651:
	movl      $1, %eax
	jmp       .L0000230D
.L0000265B:
	pushl     %eax
	pushl     %ebx
	movl      -36(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L0000266B:
	movl      -36(%ebp), %ecx
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%ecx), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%ecx)
	testl     %esi, %esi
	movl      %esi, 20(%ecx)
	jne       .L00002644
.L00002689:
	movl      8(%ecx), %edx
	movl      %edx, 16(%ecx)
	jmp       .L00002644
.L00002691:
	pushl     $1
	movl      92(%edi), %eax
	subl      %eax, -40(%ebp)
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     -40(%ebp)
	js        .L000026A7
.L000026A2:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L000026A7:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L000026AE:
	movl      (%edi), %esi
	movl      108(%edi), %edx
	movl      28(%esi), %ecx
	movl      %edx, 92(%edi)
	movl      %ecx, -32(%ebp)
	movl      %ecx, (%esp)
	call      _tr_flush_bits
.L000026C4:
	movl      -32(%ebp), %eax
	movl      20(%eax), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L000026D6
.L000026D4:
	movl      %eax, %ebx
.L000026D6:
	testl     %ebx, %ebx
	jne       .L000026EF
.L000026DA:
	movl      (%edi), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L0000230D
.L000026EF:
	pushl     %eax
	pushl     %ebx
	movl      -32(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%esi)
	call      memcpy
.L000026FF:
	movl      -32(%ebp), %ecx
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%ecx), %esi
	subl      %ebx, %esi
	addl      $16, %esp
	addl      %ebx, 16(%ecx)
	testl     %esi, %esi
	movl      %esi, 20(%ecx)
	jne       .L000026DA
.L0000271D:
	movl      8(%ecx), %ebx
	movl      %ebx, 16(%ecx)
	jmp       .L000026DA
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L00002725:
	.p2align 3
# ----------------------
	.local	deflate_rle
	.type	deflate_rle, @function
deflate_rle:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %ebx
.L00002734:
	movl      116(%ebx), %edx
	cmpl      $258, %edx
	jbe       .L00002950
.L00002743:
	cmpl      $2, %edx
	movl      $0, 96(%ebx)
	jbe       .L0000276C
.L0000274F:
	movl      108(%ebx), %eax
	testl     %eax, %eax
	je        .L0000276C
.L00002756:
	movl      56(%ebx), %esi
	addl      %eax, %esi
	movzbl    -1(%esi), %edi
	movzbl    (%esi), %eax
	cmpl      %eax, %edi
	movl      %esi, %ecx
	je        .L000028D2
.L0000276C:
	cmpl      $2, 96(%ebx)
	jbe       .L00002880
.L00002776:
	movb      96(%ebx), %dl
	movl      5792(%ebx), %esi
	movl      5796(%ebx), %ecx
	subl      $3, %edx
	movl      5784(%ebx), %edi
	movw      $1, (%ecx,%esi,2)
	movzbl    %dl, %eax
	movb      %dl, (%esi,%edi)
	incl      5792(%ebx)
	movzbl    _length_code(%eax), %ecx
	incw      1176(%ebx,%ecx,4)
	movzbl    _dist_code, %edx
	incw      2440(%ebx,%edx,4)
	movl      5788(%ebx), %edi
	decl      %edi
	movl      96(%ebx), %esi
	xorl      %edx, %edx
	cmpl      %edi, 5792(%ebx)
	sete      %dl
	movl      $0, 96(%ebx)
	subl      %esi, 116(%ebx)
	addl      %esi, 108(%ebx)
.L000027E0:
	testl     %edx, %edx
	je        .L00002734
.L000027E8:
	pushl     $0
	movl      92(%ebx), %edx
	movl      108(%ebx), %esi
	subl      %edx, %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L000027FE
.L000027F9:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L000027FE:
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L00002805:
	movl      108(%ebx), %edi
	movl      %edi, 92(%ebx)
	movl      (%ebx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -16(%ebp)
	call      _tr_flush_bits
.L0000281B:
	movl      -16(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0000282D
.L0000282B:
	movl      %eax, %esi
.L0000282D:
	testl     %esi, %esi
	jne       .L00002848
.L00002831:
	movl      (%ebx), %ecx
	movl      16(%ecx), %edi
	testl     %edi, %edi
	jne       .L00002734
.L0000283E:
	xorl      %eax, %eax
.L00002840:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00002848:
	pushl     %eax
	pushl     %esi
	movl      -16(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy
.L00002858:
	movl      -16(%ebp), %edx
	subl      %esi, 16(%edi)
	movl      20(%edx), %ecx
	addl      %esi, 12(%edi)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002831
.L00002876:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002831
.L0000287E:
	.p2align 3
.L00002880:
	movl      108(%ebx), %ecx
	movl      56(%ebx), %edi
	movb      (%ecx,%edi), %dl
	movl      5796(%ebx), %esi
	movl      5792(%ebx), %edi
	movl      5784(%ebx), %ecx
	movw      $0, (%esi,%edi,2)
	movb      %dl, (%edi,%ecx)
	incl      5792(%ebx)
	movzbl    %dl, %eax
	incw      148(%ebx,%eax,4)
	movl      5788(%ebx), %esi
	decl      %esi
	xorl      %edx, %edx
	cmpl      %esi, 5792(%ebx)
	sete      %dl
	decl      116(%ebx)
	incl      108(%ebx)
	jmp       .L000027E0
.L000028D2:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L0000276C
.L000028DE:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L0000276C
.L000028EA:
	addl      $258, %esi
.L000028F0:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L000028F8:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002900:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002908:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002910:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002918:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002920:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002928:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, %edi
	jne       .L00002934
.L00002930:
	cmpl      %esi, %ecx
	jb        .L000028F0
.L00002934:
	subl      %ecx, %esi
	movl      $258, %ecx
	subl      %esi, %ecx
	cmpl      %edx, %ecx
	movl      %ecx, 96(%ebx)
	jbe       .L0000276C
.L00002948:
	movl      %edx, 96(%ebx)
	jmp       .L0000276C
.L00002950:
	subl      $12, %esp
	pushl     %ebx
	call      fill_window
.L00002959:
	movl      116(%ebx), %edx
	addl      $16, %esp
	cmpl      $258, %edx
	ja        .L00002974
.L00002967:
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L00002840
.L00002974:
	testl     %edx, %edx
	jne       .L00002743
.L0000297C:
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%ebx)
	je        .L00002A30
.L00002990:
	movl      5792(%ebx), %edx
	testl     %edx, %edx
	je        .L000029F0
.L0000299A:
	pushl     $0
	movl      92(%ebx), %edx
	movl      108(%ebx), %esi
	subl      %edx, %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L000029B0
.L000029AB:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L000029B0:
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L000029B7:
	movl      108(%ebx), %edi
	movl      %edi, 92(%ebx)
	movl      (%ebx), %edi
	movl      28(%edi), %ecx
	movl      %ecx, (%esp)
	movl      %ecx, -24(%ebp)
	call      _tr_flush_bits
.L000029CD:
	movl      -24(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L000029DF
.L000029DD:
	movl      %eax, %esi
.L000029DF:
	testl     %esi, %esi
	jne       .L000029FA
.L000029E3:
	movl      (%ebx), %ecx
	movl      16(%ecx), %edi
	testl     %edi, %edi
	je        .L0000283E
.L000029F0:
	movl      $1, %eax
	jmp       .L00002840
.L000029FA:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy
.L00002A0A:
	movl      -24(%ebp), %edx
	subl      %esi, 16(%edi)
	movl      20(%edx), %ecx
	addl      %esi, 12(%edi)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L000029E3
.L00002A28:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L000029E3
.L00002A30:
	pushl     $1
	movl      92(%ebx), %edx
	movl      108(%ebx), %esi
	subl      %edx, %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L00002A46
.L00002A41:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L00002A46:
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L00002A4D:
	movl      108(%ebx), %edi
	movl      %edi, 92(%ebx)
	movl      (%ebx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -20(%ebp)
	call      _tr_flush_bits
.L00002A63:
	movl      -20(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002A75
.L00002A73:
	movl      %eax, %esi
.L00002A75:
	testl     %esi, %esi
	jne       .L00002A8E
.L00002A79:
	movl      (%ebx), %ecx
	movl      16(%ecx), %edi
	testl     %edi, %edi
	setne     %bl
	movzbl    %bl, %eax
	addl      $2, %eax
	jmp       .L00002840
.L00002A8E:
	pushl     %eax
	pushl     %esi
	movl      -20(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy
.L00002A9E:
	movl      -20(%ebp), %edx
	subl      %esi, 16(%edi)
	movl      20(%edx), %ecx
	addl      %esi, 12(%edi)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002A79
.L00002ABC:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002A79
	.size	deflate_rle, .-deflate_rle
# ----------------------
	.local	deflate_huff
	.type	deflate_huff, @function
deflate_huff:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %ebx
.L00002AD0:
	movl      116(%ebx), %eax
	testl     %eax, %eax
	je        .L00002BC8
.L00002ADB:
	movl      108(%ebx), %ecx
	movl      56(%ebx), %edi
	movl      $0, 96(%ebx)
	movb      (%ecx,%edi), %dl
	movl      5796(%ebx), %esi
	movl      5792(%ebx), %edi
	movl      5784(%ebx), %ecx
	movw      $0, (%esi,%edi,2)
	movb      %dl, (%edi,%ecx)
	incl      5792(%ebx)
	movzbl    %dl, %esi
	incw      148(%ebx,%esi,4)
	movl      5788(%ebx), %edx
	decl      %edx
	cmpl      %edx, 5792(%ebx)
	sete      %al
	movl      108(%ebx), %edx
	incl      %edx
	decl      116(%ebx)
	testb     $1, %al
	movl      %edx, 108(%ebx)
	je        .L00002AD0
.L00002B35:
	pushl     $0
	movl      92(%ebx), %eax
	subl      %eax, %edx
	pushl     %edx
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L00002B48
.L00002B43:
	movl      56(%ebx), %edx
	addl      %eax, %edx
.L00002B48:
	pushl     %edx
	pushl     %ebx
	call      _tr_flush_block
.L00002B4F:
	movl      108(%ebx), %esi
	movl      (%ebx), %edi
	movl      %esi, 92(%ebx)
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -16(%ebp)
	call      _tr_flush_bits
.L00002B65:
	movl      -16(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002B77
.L00002B75:
	movl      %eax, %esi
.L00002B77:
	testl     %esi, %esi
	jne       .L00002B92
.L00002B7B:
	movl      (%ebx), %edi
	movl      16(%edi), %edx
	testl     %edx, %edx
	jne       .L00002AD0
.L00002B88:
	xorl      %eax, %eax
.L00002B8A:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00002B92:
	pushl     %eax
	pushl     %esi
	movl      -16(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy
.L00002BA2:
	movl      -16(%ebp), %edx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 20(%edi)
	movl      20(%edx), %edi
	subl      %esi, %edi
	addl      $16, %esp
	addl      %esi, 16(%edx)
	testl     %edi, %edi
	movl      %edi, 20(%edx)
	jne       .L00002B7B
.L00002BC0:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002B7B
.L00002BC8:
	subl      $12, %esp
	pushl     %ebx
	call      fill_window
.L00002BD1:
	movl      116(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00002ADB
.L00002BDF:
	movl      12(%ebp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L00002B8A
.L00002BE8:
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%ebx)
	je        .L00002C9C
.L00002BFC:
	movl      5792(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L00002C5C
.L00002C06:
	pushl     $0
	movl      92(%ebx), %edx
	movl      108(%ebx), %esi
	subl      %edx, %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L00002C1C
.L00002C17:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L00002C1C:
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L00002C23:
	movl      108(%ebx), %edi
	movl      %edi, 92(%ebx)
	movl      (%ebx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -24(%ebp)
	call      _tr_flush_bits
.L00002C39:
	movl      -24(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002C4B
.L00002C49:
	movl      %eax, %esi
.L00002C4B:
	testl     %esi, %esi
	jne       .L00002C66
.L00002C4F:
	movl      (%ebx), %ecx
	movl      16(%ecx), %edi
	testl     %edi, %edi
	je        .L00002B88
.L00002C5C:
	movl      $1, %eax
	jmp       .L00002B8A
.L00002C66:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy
.L00002C76:
	movl      -24(%ebp), %edx
	subl      %esi, 16(%edi)
	movl      20(%edx), %ecx
	addl      %esi, 12(%edi)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002C4F
.L00002C94:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002C4F
.L00002C9C:
	pushl     $1
	movl      92(%ebx), %edx
	movl      108(%ebx), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L00002CB2
.L00002CAD:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L00002CB2:
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L00002CB9:
	movl      (%ebx), %edi
	movl      108(%ebx), %edx
	movl      28(%edi), %esi
	movl      %edx, 92(%ebx)
	movl      %esi, -20(%ebp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L00002CCF:
	movl      -20(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002CE1
.L00002CDF:
	movl      %eax, %esi
.L00002CE1:
	testl     %esi, %esi
	jne       .L00002CFA
.L00002CE5:
	movl      (%ebx), %edi
	movl      16(%edi), %edx
	testl     %edx, %edx
	setne     %bl
	movzbl    %bl, %eax
	addl      $2, %eax
	jmp       .L00002B8A
.L00002CFA:
	pushl     %eax
	pushl     %esi
	movl      -20(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy
.L00002D0A:
	movl      -20(%ebp), %edx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 20(%edi)
	movl      20(%edx), %edi
	subl      %esi, %edi
	addl      $16, %esp
	addl      %esi, 16(%edx)
	testl     %edi, %edi
	movl      %edi, 20(%edx)
	jne       .L00002CE5
.L00002D28:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002CE5
	.size	deflate_huff, .-deflate_huff
# ----------------------
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	pushl     20(%ebp)
	pushl     16(%ebp)
	pushl     $0
	pushl     $8
	pushl     $15
	pushl     $8
	pushl     12(%ebp)
	pushl     8(%ebp)
	call      deflateInit2_
.L00002D4F:
	leave     
	ret       
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L00002D51:
	.p2align 2
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	movl      8(%ebp), %esi
	testl     %esi, %esi
	pushl     %ebx
	je        .L00002D78
.L00002D60:
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L00002D78
.L00002D67:
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L00002D78
.L00002D6E:
	movl      36(%esi), %edx
	testl     %edx, %edx
	jne       .L00002D84
.L00002D75:
	.p2align 3
.L00002D78:
	movl      $-2, %eax
.L00002D7D:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L00002D84:
	movl      $2, 44(%esi)
	movl      24(%ebx), %eax
	movl      8(%ebx), %ecx
	testl     %eax, %eax
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $0, 20(%ebx)
	movl      %ecx, 16(%ebx)
	js        .L00002DFD
.L00002DB4:
	movl      24(%ebx), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	sete      %dl
	decl      %edx
	andl      $-71, %edx
	addl      $113, %edx
	cmpl      $2, %ecx
	movl      %edx, 4(%ebx)
	je        .L00002DEF
.L00002DCD:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L00002DD9:
	movl      %eax, 48(%esi)
	movl      $0, 40(%ebx)
	movl      %ebx, (%esp)
	call      _tr_init
.L00002DEB:
	xorl      %eax, %eax
	jmp       .L00002D7D
.L00002DEF:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L00002DFB:
	jmp       .L00002DD9
.L00002DFD:
	negl      %eax
	movl      %eax, 24(%ebx)
	jmp       .L00002DB4
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L00002E1B
.L00002E0E:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L00002E1B
.L00002E15:
	cmpl      $2, 24(%edx)
	je        .L00002E24
.L00002E1B:
	movl      $-2, %eax
.L00002E20:
	leave     
	ret       
.L00002E22:
	.p2align 2
.L00002E24:
	movl      12(%ebp), %ecx
	movl      %ecx, 28(%edx)
	xorl      %eax, %eax
	jmp       .L00002E20
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
.L00002E2E:
	.p2align 3
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	pushl     %ebx
	movl      12(%ebp), %ecx
	movl      16(%ebp), %ebx
	je        .L00002E48
.L00002E41:
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L00002E54
.L00002E48:
	movl      $-2, %eax
.L00002E4D:
	movl      (%esp), %ebx
	leave     
	ret       
.L00002E52:
	.p2align 2
.L00002E54:
	testl     %ecx, %ecx
	je        .L00002E5D
.L00002E58:
	movl      20(%edx), %eax
	movl      %eax, (%ecx)
.L00002E5D:
	testl     %ebx, %ebx
	je        .L00002E69
.L00002E61:
	movl      5820(%edx), %ecx
	movl      %ecx, (%ebx)
.L00002E69:
	xorl      %eax, %eax
	jmp       .L00002E4D
	.size	deflatePending, .-deflatePending
# ----------------------
.L00002E6D:
	.p2align 3
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %edi
	je        .L00002E8A
.L00002E83:
	movl      28(%eax), %ebx
	testl     %ebx, %ebx
	jne       .L00002E98
.L00002E8A:
	movl      $-2, %eax
.L00002E8F:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00002E97:
	.p2align 3
.L00002E98:
	movl      16(%ebx), %edx
	addl      $2, %edx
	cmpl      %edx, 5796(%ebx)
	jae       .L00002EB0
.L00002EA6:
	movl      $-5, %eax
	jmp       .L00002E8F
.L00002EAD:
	.p2align 3
.L00002EB0:
	movl      5820(%ebx), %edx
	movl      $16, %esi
	subl      %edx, %esi
	cmpl      %edi, %esi
	jle       .L00002EC3
.L00002EC1:
	movl      %edi, %esi
.L00002EC3:
	movl      %esi, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      16(%ebp), %eax
	movb      %dl, %cl
	sall      %cl, %eax
	subl      $12, %esp
	leal      (%esi,%edx), %ecx
	orw       %ax, 5816(%ebx)
	movl      %ecx, 5820(%ebx)
	pushl     %ebx
	call      _tr_flush_bits
.L00002EED:
	movl      %esi, %ecx
	sarl      %cl, 16(%ebp)
	addl      $16, %esp
	subl      %esi, %edi
	jne       .L00002EB0
.L00002EF9:
	xorl      %eax, %eax
	jmp       .L00002E8F
	.size	deflatePrime, .-deflatePrime
# ----------------------
.L00002EFD:
	.p2align 3
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L00002F11
.L00002F0A:
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L00002F18
.L00002F11:
	movl      $-2, %eax
.L00002F16:
	leave     
	ret       
.L00002F18:
	movl      12(%ebp), %ecx
	movl      %ecx, 140(%edx)
	movl      16(%ebp), %ecx
	movl      %ecx, 128(%edx)
	movl      20(%ebp), %ecx
	movl      %ecx, 144(%edx)
	movl      24(%ebp), %ecx
	movl      %ecx, 124(%edx)
	xorl      %eax, %eax
	jmp       .L00002F16
	.size	deflateTune, .-deflateTune
# ----------------------
.L00002F3D:
	.p2align 3
# ----------------------
	.local	longest_match
	.type	longest_match, @function
longest_match:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $40, %esp
	movl      8(%ebp), %eax
	movl      56(%eax), %ebx
	movl      %ebx, -16(%ebp)
	movl      120(%eax), %ebx
	movl      108(%eax), %edx
	movl      124(%eax), %edi
	movl      %ebx, -20(%ebp)
	movl      144(%eax), %ebx
	movl      8(%ebp), %eax
	movl      %ebx, -24(%ebp)
	movl      44(%eax), %ebx
	movl      -16(%ebp), %esi
	leal      -262(%ebx), %eax
	addl      %edx, %esi
	cmpl      %eax, %edx
	movl      12(%ebp), %ecx
	jbe       .L000030C0
.L00002F83:
	movl      %edx, %eax
	subl      %ebx, %eax
	addl      $262, %eax
	movl      %eax, -28(%ebp)
.L00002F8F:
	movl      8(%ebp), %ebx
	movl      64(%ebx), %eax
	movl      %eax, -32(%ebp)
	movl      8(%ebp), %eax
	movl      52(%eax), %ebx
	movl      %ebx, -36(%ebp)
	movl      -16(%ebp), %ebx
	leal      258(%edx,%ebx), %eax
	movl      -20(%ebp), %edx
	movl      %eax, -40(%ebp)
	leal      (%edx,%esi), %eax
	movb      -1(%eax), %bl
	movb      %bl, -41(%ebp)
	movb      (%eax), %bl
	movb      %bl, -49(%ebp)
	movl      8(%ebp), %ebx
	cmpl      140(%ebx), %edx
	jb        .L00002FCD
.L00002FCA:
	shrl      $2, %edi
.L00002FCD:
	movl      8(%ebp), %ebx
	movl      116(%ebx), %edx
	cmpl      %edx, -24(%ebp)
	movl      %edx, -48(%ebp)
	jbe       .L00002FE0
.L00002FDB:
	movl      %edx, -24(%ebp)
	.p2align 3
.L00002FE0:
	movl      -16(%ebp), %edx
	addl      %ecx, %edx
	movb      -49(%ebp), %bl
	movl      -20(%ebp), %eax
	cmpb      %bl, (%eax,%edx)
	je        .L00003018
.L00002FF0:
	movl      -36(%ebp), %ebx
	andl      %ecx, %ebx
	movl      -32(%ebp), %edx
	movzwl    (%edx,%ebx,2), %ecx
	cmpl      -28(%ebp), %ecx
	jbe       .L00003004
.L00003001:
	decl      %edi
	jne       .L00002FE0
.L00003004:
	movl      -20(%ebp), %eax
	cmpl      -48(%ebp), %eax
	jbe       .L0000300F
.L0000300C:
	movl      -48(%ebp), %eax
.L0000300F:
	addl      $40, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00003017:
	.p2align 3
.L00003018:
	movb      -41(%ebp), %bl
	cmpb      %bl, -1(%eax,%edx)
	jne       .L00002FF0
.L00003021:
	movb      (%esi), %bl
	cmpb      %bl, (%edx)
	jne       .L00002FF0
.L00003027:
	incl      %edx
	movb      1(%esi), %bl
	cmpb      %bl, (%edx)
	jne       .L00002FF0
.L0000302F:
	addl      $2, %esi
	incl      %edx
.L00003033:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L0000303B:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L00003043:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L0000304B:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L00003053:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L0000305B:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L00003063:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L0000306B:
	incl      %edx
	incl      %esi
	movb      (%edx), %bl
	cmpb      %bl, (%esi)
	jne       .L00003078
.L00003073:
	cmpl      -40(%ebp), %esi
	jb        .L00003033
.L00003078:
	movl      -40(%ebp), %ebx
	subl      %esi, %ebx
	movl      $258, %edx
	subl      %ebx, %edx
	movl      -40(%ebp), %esi
	subl      $258, %esi
	cmpl      -20(%ebp), %edx
	jle       .L00002FF0
.L00003096:
	movl      -24(%ebp), %eax
	movl      8(%ebp), %ebx
	cmpl      %eax, %edx
	movl      %ecx, 112(%ebx)
	movl      %edx, -20(%ebp)
	jge       .L00003004
.L000030AA:
	leal      (%edx,%esi), %ebx
	movb      -1(%ebx), %al
	movb      %al, -41(%ebp)
	movb      (%ebx), %dl
	movb      %dl, -49(%ebp)
	jmp       .L00002FF0
.L000030BD:
	.p2align 3
.L000030C0:
	movl      $0, -28(%ebp)
	jmp       .L00002F8F
	.size	longest_match, .-longest_match
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
