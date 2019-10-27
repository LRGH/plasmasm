	.file	"deflate.c"
	.section       .rodata
	.align 32
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 68
# ----------------------
	.local	my_version.0
	.type	my_version.0, @object
my_version.0:
	.string	"1.2.8"
	.size	my_version.0, 6
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
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %eax
	pushl     20(%ebp)
	pushl     16(%ebp)
	pushl     $0
	pushl     $8
	pushl     $15
	pushl     $8
	pushl     12(%ebp)
	call      .L0000001B
.L0000001B:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     8(%ebp)
	call      deflateInit2_@PLT
.L0000002A:
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L0000002F:
	.p2align 3
# ----------------------
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%ebp), %eax
	call      .L00000041
.L00000041:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %eax, %eax
	movl      8(%ebp), %edi
	movl      $1, %esi
	je        .L00000059
.L00000054:
	cmpb      $49, (%eax)
	je        .L00000068
.L00000059:
	movl      $-6, %eax
.L0000005E:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000066:
	.p2align 3
.L00000068:
	cmpl      $56, 36(%ebp)
	jne       .L00000059
.L0000006E:
	testl     %edi, %edi
	movl      $-2, %eax
	je        .L0000005E
.L00000077:
	movl      32(%edi), %edx
	testl     %edx, %edx
	movl      $0, 24(%edi)
	jne       .L00000095
.L00000085:
	leal      zcalloc@GOTOFF(%ebx), %edx
	movl      %edx, 32(%edi)
	movl      $0, 40(%edi)
.L00000095:
	movl      36(%edi), %ecx
	testl     %ecx, %ecx
	jne       .L000000A5
.L0000009C:
	leal      zcfree@GOTOFF(%ebx), %edx
	movl      %edx, 36(%edi)
.L000000A5:
	cmpl      $-1, 12(%ebp)
	je        .L000002B2
.L000000AF:
	movl      20(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L000002A8
.L000000BA:
	cmpl      $15, 20(%ebp)
	jle       .L000000C9
.L000000C0:
	movl      $2, %esi
	subl      $16, 20(%ebp)
.L000000C9:
	movl      24(%ebp), %edx
	decl      %edx
	cmpl      $8, %edx
	ja        .L000000D8
.L000000D2:
	cmpl      $8, 16(%ebp)
	je        .L000000E2
.L000000D8:
	movl      $-2, %eax
	jmp       .L0000005E
.L000000E2:
	cmpl      $7, 20(%ebp)
	jle       .L000000D8
.L000000E8:
	cmpl      $15, 20(%ebp)
	jg        .L000000D8
.L000000EE:
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L000000D8
.L000000F5:
	cmpl      $9, 12(%ebp)
	jg        .L000000D8
.L000000FB:
	movl      28(%ebp), %edx
	testl     %edx, %edx
	js        .L000000D8
.L00000102:
	cmpl      $4, 28(%ebp)
	jg        .L000000D8
.L00000108:
	cmpl      $8, 20(%ebp)
	je        .L00000299
.L00000112:
	pushl     %ecx
	pushl     $5828
	pushl     $1
	pushl     40(%edi)
	call      *32(%edi)
.L00000120:
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      $-4, %eax
	je        .L0000005E
.L00000136:
	movl      -16(%ebp), %ecx
	movl      %esi, 24(%ecx)
	movl      20(%ebp), %esi
	movl      %esi, 48(%ecx)
	movl      $1, %esi
	movl      %ecx, 28(%edi)
	movl      %edi, (%ecx)
	movl      $0, 28(%ecx)
	movl      %esi, %eax
	movb      20(%ebp), %cl
	movl      -16(%ebp), %edx
	sall      %cl, %eax
	movl      %eax, 44(%edx)
	movl      24(%ebp), %ecx
	decl      %eax
	movl      %eax, 52(%edx)
	addl      $7, %ecx
	movl      %esi, %eax
	sall      %cl, %eax
	movl      %ecx, 80(%edx)
	movl      %eax, %ecx
	decl      %ecx
	movl      %eax, 76(%edx)
	movl      %ecx, 84(%edx)
	movl      24(%ebp), %edx
	addl      $9, %edx
	movl      $-1431655765, %eax
	mull      %edx
	movl      %edx, %eax
	shrl      $1, %eax
	movl      -16(%ebp), %ecx
	movl      %eax, 88(%ecx)
	pushl     %eax
	pushl     $2
	pushl     44(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L0000019D:
	addl      $12, %esp
	movl      -16(%ebp), %edx
	movl      %eax, 56(%edx)
	pushl     $2
	pushl     44(%edx)
	pushl     40(%edi)
	call      *32(%edi)
.L000001B1:
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L000001C5:
	movl      24(%ebp), %ecx
	movl      -16(%ebp), %edx
	addl      $6, %ecx
	addl      $12, %esp
	movl      %eax, 68(%edx)
	movl      $0, 5824(%edx)
	sall      %cl, %esi
	movl      -16(%ebp), %edx
	movl      %esi, 5788(%edx)
	pushl     $4
	pushl     5788(%edx)
	pushl     40(%edi)
	call      *32(%edi)
.L000001F7:
	movl      %eax, %ecx
	movl      -16(%ebp), %eax
	movl      5788(%eax), %edx
	movl      %eax, %esi
	movl      %ecx, 8(%eax)
	leal      0(,%edx,4), %eax
	movl      %eax, 12(%esi)
	movl      56(%esi), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000270
.L0000021B:
	movl      64(%esi), %eax
	testl     %eax, %eax
	je        .L00000270
.L00000222:
	movl      68(%esi), %eax
	testl     %eax, %eax
	je        .L00000270
.L00000229:
	testl     %ecx, %ecx
	je        .L00000270
.L0000022D:
	movl      %edx, %esi
	andl      $-2, %esi
	leal      (%esi,%ecx), %eax
	movl      -16(%ebp), %esi
	movl      %eax, 5796(%esi)
	leal      (%edx,%edx,2), %eax
	leal      (%eax,%ecx), %edx
	movl      %edx, 5784(%esi)
	movl      28(%ebp), %eax
	movl      12(%ebp), %edx
	subl      $12, %esp
	movl      %edx, 132(%esi)
	movl      %eax, 136(%esi)
	movb      $8, 36(%esi)
	pushl     %edi
	call      deflateReset@PLT
.L00000269:
	jmp       .L0000005E
.L0000026E:
	.p2align 3
.L00000270:
	movl      z_errmsg@GOT(%ebx), %ecx
	movl      -16(%ebp), %esi
	movl      24(%ecx), %edx
	subl      $12, %esp
	movl      $666, 4(%esi)
	movl      %edx, 24(%edi)
	pushl     %edi
	call      deflateEnd@PLT
.L0000028F:
	movl      $-4, %eax
	jmp       .L0000005E
.L00000299:
	movl      $9, 20(%ebp)
	jmp       .L00000112
.L000002A5:
	.p2align 3
.L000002A8:
	xorl      %esi, %esi
	negl      20(%ebp)
	jmp       .L000000C9
.L000002B2:
	movl      $6, 12(%ebp)
	jmp       .L000000AF
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L000002BE:
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
	call      .L000002D1
.L000002D1:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %edx, %edx
	movl      12(%ebp), %edi
	movl      16(%ebp), %esi
	je        .L00000314
.L000002E2:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, -28(%ebp)
	je        .L00000314
.L000002EF:
	testl     %edi, %edi
	je        .L00000314
.L000002F3:
	movl      -28(%ebp), %eax
	movl      24(%eax), %edx
	cmpl      $2, %edx
	movl      %edx, -16(%ebp)
	je        .L00000314
.L00000301:
	decl      %edx
	je        .L000004CE
.L00000308:
	movl      -28(%ebp), %edx
	movl      116(%edx), %ecx
	testl     %ecx, %ecx
	je        .L00000321
.L00000312:
	.p2align 2
.L00000314:
	movl      $-2, %eax
.L00000319:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000321:
	cmpl      $1, -16(%ebp)
	je        .L000004B2
.L0000032B:
	movl      -28(%ebp), %ecx
	movl      44(%ecx), %eax
	cmpl      %eax, %esi
	movl      $0, 24(%ecx)
	movl      %ecx, %edx
	jb        .L0000034F
.L0000033E:
	movl      -16(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L00000470
.L00000349:
	subl      %eax, %esi
	addl      %esi, %edi
	movl      %eax, %esi
.L0000034F:
	movl      8(%ebp), %edx
	movl      4(%edx), %eax
	subl      $12, %esp
	movl      8(%ebp), %edx
	movl      %eax, -20(%ebp)
	movl      8(%ebp), %eax
	movl      (%edx), %ecx
	movl      %esi, 4(%eax)
	movl      %edi, (%eax)
	pushl     -28(%ebp)
	movl      %ecx, -24(%ebp)
	call      fill_window
.L00000373:
	movl      -28(%ebp), %esi
	movl      116(%esi), %edx
	addl      $16, %esp
	cmpl      $2, %edx
	movl      %edx, %eax
	jbe       .L00000425
.L00000387:
	.p2align 3
.L00000388:
	movl      -28(%ebp), %edi
	movl      68(%edi), %edx
	movl      88(%edi), %ecx
	subl      $2, %eax
	movl      108(%edi), %esi
	movl      %eax, -64(%ebp)
	movl      %edx, -44(%ebp)
	movl      84(%edi), %eax
	movl      56(%edi), %edx
	movl      %ecx, -52(%ebp)
	movl      -28(%ebp), %edi
	movl      -28(%ebp), %ecx
	movl      %edx, -36(%ebp)
	movl      52(%edi), %edx
	movl      64(%ecx), %edi
	movl      %eax, -48(%ebp)
	movl      %edx, -32(%ebp)
	movl      %edi, -40(%ebp)
	.p2align 3
.L000003C0:
	movl      -28(%ebp), %edi
	movl      72(%edi), %eax
	movb      -52(%ebp), %cl
	movl      -36(%ebp), %edx
	sall      %cl, %eax
	movzbl    2(%esi,%edx), %ecx
	xorl      %ecx, %eax
	andl      -48(%ebp), %eax
	movl      -28(%ebp), %ecx
	movl      -44(%ebp), %edx
	movl      %eax, 72(%ecx)
	movl      -32(%ebp), %ecx
	movw      (%edx,%eax,2), %di
	andl      %esi, %ecx
	movl      -40(%ebp), %edx
	movw      %di, (%edx,%ecx,2)
	movl      -44(%ebp), %edi
	movw      %si, (%edi,%eax,2)
	incl      %esi
	decl      -64(%ebp)
	jne       .L000003C0
.L000003FE:
	movl      -28(%ebp), %edi
	subl      $12, %esp
	movl      %esi, 108(%edi)
	movl      $2, 116(%edi)
	pushl     %edi
	call      fill_window
.L00000414:
	movl      116(%edi), %edx
	addl      $16, %esp
	cmpl      $2, %edx
	movl      %edx, %eax
	ja        .L00000388
.L00000425:
	movl      -28(%ebp), %esi
	movl      108(%esi), %ecx
	addl      %edx, %ecx
	movl      %ecx, 108(%esi)
	movl      %edx, 5812(%esi)
	movl      -16(%ebp), %eax
	movl      %ecx, 92(%esi)
	movl      -24(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      -20(%ebp), %edi
	movl      $0, 116(%esi)
	movl      $2, 120(%esi)
	movl      $2, 96(%esi)
	movl      $0, 104(%esi)
	movl      %edx, (%ecx)
	movl      %edi, 4(%ecx)
	movl      %eax, 24(%esi)
	xorl      %eax, %eax
	jmp       .L00000319
.L00000470:
	movl      76(%edx), %eax
	sall      $1, %eax
	movl      68(%edx), %edx
	movw      $0, -2(%eax,%edx)
	subl      $2, %eax
	pushl     %ecx
	pushl     %eax
	pushl     $0
	pushl     %edx
	call      memset@PLT
.L0000048C:
	movl      -28(%ebp), %edx
	addl      $16, %esp
	movl      $0, 108(%edx)
	movl      $0, 92(%edx)
	movl      $0, 5812(%edx)
	movl      44(%edx), %eax
	jmp       .L00000349
.L000004B2:
	pushl     %eax
	pushl     %esi
	pushl     %edi
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      adler32@PLT
.L000004C0:
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	jmp       .L0000032B
.L000004CE:
	movl      -28(%ebp), %edx
	cmpl      $42, 4(%edx)
	jne       .L00000314
.L000004DB:
	jmp       .L00000308
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %edi
	call      .L000004F1
.L000004F1:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %edi, %edi
	je        .L00000514
.L000004FC:
	movl      28(%edi), %esi
	testl     %esi, %esi
	je        .L00000514
.L00000503:
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L00000514
.L0000050A:
	movl      36(%edi), %edx
	testl     %edx, %edx
	jne       .L00000524
.L00000511:
	.p2align 2
.L00000514:
	movl      $-2, %eax
.L00000519:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000521:
	.p2align 2
.L00000524:
	movl      $2, 44(%edi)
	movl      24(%esi), %eax
	movl      8(%esi), %ecx
	testl     %eax, %eax
	movl      $0, 20(%edi)
	movl      $0, 8(%edi)
	movl      $0, 24(%edi)
	movl      $0, 20(%esi)
	movl      %ecx, 16(%esi)
	js        .L0000059D
.L00000554:
	movl      24(%esi), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	sete      %dl
	decl      %edx
	andl      $-71, %edx
	addl      $113, %edx
	cmpl      $2, %ecx
	movl      %edx, 4(%esi)
	je        .L0000058F
.L0000056D:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32@PLT
.L00000579:
	movl      %eax, 48(%edi)
	movl      $0, 40(%esi)
	movl      %esi, (%esp)
	call      _tr_init
.L0000058B:
	xorl      %eax, %eax
	jmp       .L00000519
.L0000058F:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32@PLT
.L0000059B:
	jmp       .L00000579
.L0000059D:
	negl      %eax
	movl      %eax, 24(%esi)
	jmp       .L00000554
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      8(%ebp), %edi
	call      .L000005B5
.L000005B5:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     %edi
	call      deflateResetKeep@PLT
.L000005C2:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L000005D8
.L000005CB:
	leal      -12(%ebp), %esp
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
.L000005D5:
	.p2align 3
.L000005D8:
	subl      $12, %esp
	pushl     28(%edi)
	call      lm_init
.L000005E3:
	addl      $16, %esp
	jmp       .L000005CB
	.size	deflateReset, .-deflateReset
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L000005FF
.L000005F2:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L000005FF
.L000005F9:
	cmpl      $2, 24(%edx)
	je        .L00000608
.L000005FF:
	movl      $-2, %eax
.L00000604:
	leave     
	ret       
.L00000606:
	.p2align 3
.L00000608:
	movl      12(%ebp), %ecx
	movl      %ecx, 28(%edx)
	xorl      %eax, %eax
	jmp       .L00000604
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
.L00000612:
	.p2align 2
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	pushl     %esi
	movl      12(%ebp), %ecx
	movl      16(%ebp), %esi
	je        .L0000062C
.L00000625:
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L00000638
.L0000062C:
	movl      $-2, %eax
.L00000631:
	movl      (%esp), %esi
	leave     
	ret       
.L00000636:
	.p2align 3
.L00000638:
	testl     %ecx, %ecx
	je        .L00000641
.L0000063C:
	movl      20(%edx), %eax
	movl      %eax, (%ecx)
.L00000641:
	testl     %esi, %esi
	je        .L0000064D
.L00000645:
	movl      5820(%edx), %ecx
	movl      %ecx, (%esi)
.L0000064D:
	xorl      %eax, %eax
	jmp       .L00000631
	.size	deflatePending, .-deflatePending
# ----------------------
.L00000651:
	.p2align 2
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	pushl     %edi
	testl     %eax, %eax
	pushl     %esi
	je        .L00000667
.L00000660:
	movl      28(%eax), %esi
	testl     %esi, %esi
	jne       .L00000674
.L00000667:
	movl      $-2, %eax
.L0000066C:
	leal      -8(%ebp), %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000673:
	.p2align 2
.L00000674:
	movl      16(%esi), %edx
	addl      $2, %edx
	cmpl      %edx, 5796(%esi)
	jae       .L0000068C
.L00000682:
	movl      $-5, %eax
	jmp       .L0000066C
.L00000689:
	.p2align 2
.L0000068C:
	movl      5820(%esi), %edx
	movl      $16, %edi
	subl      %edx, %edi
	cmpl      12(%ebp), %edi
	jle       .L000006A1
.L0000069E:
	movl      12(%ebp), %edi
.L000006A1:
	movl      %edi, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      16(%ebp), %eax
	movb      %dl, %cl
	sall      %cl, %eax
	subl      $12, %esp
	leal      (%edi,%edx), %ecx
	orw       %ax, 5816(%esi)
	movl      %ecx, 5820(%esi)
	pushl     %esi
	call      _tr_flush_bits
.L000006CB:
	movl      %edi, %ecx
	sarl      %cl, 16(%ebp)
	addl      $16, %esp
	subl      %edi, 12(%ebp)
	jne       .L0000068C
.L000006D8:
	xorl      %eax, %eax
	jmp       .L0000066C
	.size	deflatePrime, .-deflatePrime
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
	call      .L000006ED
.L000006ED:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %edx, %edx
	movl      12(%ebp), %esi
	movl      $0, -20(%ebp)
	je        .L00000728
.L00000702:
	movl      28(%edx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, -36(%ebp)
	je        .L00000728
.L0000070C:
	cmpl      $-1, %esi
	je        .L00000820
.L00000715:
	cmpl      $9, %esi
	ja        .L00000728
.L0000071A:
	movl      16(%ebp), %eax
	testl     %eax, %eax
	js        .L00000728
.L00000721:
	cmpl      $4, 16(%ebp)
	jle       .L00000735
.L00000727:
	.p2align 3
.L00000728:
	movl      $-2, %eax
.L0000072D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000735:
	movl      -36(%ebp), %eax
	movl      132(%eax), %ecx
	leal      configuration_table@GOTOFF(%ebx), %edi
	leal      (%ecx,%ecx,2), %eax
	movl      %ecx, -32(%ebp)
	movl      8(%edi,%eax,4), %ecx
	movl      %edi, -24(%ebp)
	movl      %ecx, -16(%ebp)
	movl      16(%ebp), %edi
	movl      -36(%ebp), %ecx
	cmpl      136(%ecx), %edi
	je        .L00000808
.L00000766:
	movl      8(%edx), %edi
	testl     %edi, %edi
	jne       .L000007C3
.L0000076D:
	cmpl      %esi, -32(%ebp)
	je        .L000007AF
.L00000772:
	movl      -36(%ebp), %edx
	movl      %esi, 132(%edx)
	leal      (%esi,%esi,2), %edx
	sall      $2, %edx
	movl      -24(%ebp), %ecx
	movl      -36(%ebp), %esi
	movzwl    2(%ecx,%edx), %edi
	movl      %edi, 128(%esi)
	movzwl    (%ecx,%edx), %edi
	movl      %edi, 140(%esi)
	movzwl    4(%ecx,%edx), %edi
	movl      %edi, 144(%esi)
	movzwl    6(%ecx,%edx), %edi
	movl      %edi, 124(%esi)
.L000007AF:
	movl      16(%ebp), %eax
	movl      -36(%ebp), %ecx
	movl      %eax, 136(%ecx)
	movl      -20(%ebp), %eax
	jmp       .L0000072D
.L000007C3:
	subl      $8, %esp
	pushl     $5
	pushl     %edx
	call      deflate@PLT
.L000007CE:
	addl      $16, %esp
	cmpl      $-5, %eax
	movl      %eax, -20(%ebp)
	je        .L000007E7
.L000007D9:
	movl      -36(%ebp), %ecx
	movl      132(%ecx), %eax
	movl      %eax, -32(%ebp)
	jmp       .L0000076D
.L000007E7:
	movl      -36(%ebp), %ecx
	xorl      %edx, %edx
	cmpl      $0, 20(%ecx)
	sete      %dl
	decl      %edx
	andl      $-5, %edx
	movl      132(%ecx), %eax
	movl      %edx, -20(%ebp)
	movl      %eax, -32(%ebp)
	jmp       .L0000076D
.L00000808:
	leal      (%esi,%esi,2), %ecx
	movl      -16(%ebp), %eax
	movl      -24(%ebp), %edi
	cmpl      8(%edi,%ecx,4), %eax
	jne       .L00000766
.L0000081B:
	jmp       .L0000076D
.L00000820:
	movl      $6, %esi
	jmp       .L00000715
	.size	deflateParams, .-deflateParams
# ----------------------
.L0000082A:
	.p2align 2
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L0000083D
.L00000836:
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L00000844
.L0000083D:
	movl      $-2, %eax
.L00000842:
	leave     
	ret       
.L00000844:
	movl      12(%ebp), %ecx
	movl      %ecx, 140(%edx)
	movl      16(%ebp), %ecx
	movl      %ecx, 128(%edx)
	movl      20(%ebp), %ecx
	movl      %ecx, 144(%edx)
	movl      24(%ebp), %ecx
	movl      %ecx, 124(%edx)
	xorl      %eax, %eax
	jmp       .L00000842
	.size	deflateTune, .-deflateTune
# ----------------------
.L00000869:
	.p2align 2
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	subl      $8, %esp
	movl      12(%ebp), %esi
	leal      7(%esi), %eax
	shrl      $3, %eax
	leal      63(%esi), %edi
	shrl      $6, %edi
	leal      (%eax,%esi), %edx
	movl      8(%ebp), %ecx
	leal      (%edi,%edx), %eax
	leal      5(%eax), %edi
	testl     %ecx, %ecx
	movl      %edi, -12(%ebp)
	je        .L0000089D
.L00000896:
	movl      28(%ecx), %edx
	testl     %edx, %edx
	jne       .L000008A8
.L0000089D:
	addl      $11, %eax
.L000008A0:
	addl      $8, %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
.L000008A7:
	.p2align 3
.L000008A8:
	movl      24(%edx), %eax
	cmpl      $1, %eax
	je        .L00000954
.L000008B4:
	cmpl      $1, %eax
	jle       .L00000943
.L000008BD:
	cmpl      $2, %eax
	je        .L000008F2
.L000008C2:
	movl      $6, %edi
.L000008C7:
	cmpl      $15, 48(%edx)
	je        .L000008D4
.L000008CD:
	movl      -12(%ebp), %eax
	addl      %edi, %eax
	jmp       .L000008A0
.L000008D4:
	cmpl      $15, 80(%edx)
	jne       .L000008CD
.L000008DA:
	movl      %esi, %ecx
	shrl      $12, %ecx
	leal      (%ecx,%esi), %edx
	shrl      $14, %esi
	addl      %esi, %edx
	shrl      $11, %esi
	addl      %esi, %edx
	leal      7(%edi,%edx), %eax
	jmp       .L000008A0
.L000008F2:
	movl      28(%edx), %eax
	testl     %eax, %eax
	movl      $18, %edi
	movl      %eax, -16(%ebp)
	je        .L000008C7
.L00000901:
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0000090E
.L00000908:
	movl      20(%eax), %edi
	addl      $20, %edi
.L0000090E:
	movl      -16(%ebp), %eax
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000920
.L00000918:
	movb      (%ecx), %al
	incl      %edi
	incl      %ecx
	testb     %al, %al
	jne       .L00000918
.L00000920:
	movl      -16(%ebp), %eax
	movl      36(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000934
.L0000092A:
	.p2align 2
.L0000092C:
	movb      (%ecx), %al
	incl      %edi
	incl      %ecx
	testb     %al, %al
	jne       .L0000092C
.L00000934:
	movl      -16(%ebp), %eax
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	je        .L000008C7
.L0000093E:
	addl      $2, %edi
	jmp       .L000008C7
.L00000943:
	xorl      %edi, %edi
	testl     %eax, %eax
	je        .L000008C7
.L0000094D:
	jmp       .L000008C2
.L00000952:
	.p2align 2
.L00000954:
	movl      108(%edx), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %ecx
	leal      6(,%ecx,4), %edi
	jmp       .L000008C7
	.size	deflateBound, .-deflateBound
# ----------------------
.L0000096B:
	.p2align 2
# ----------------------
	.globl	deflate
	.type	deflate, @function
deflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      8(%ebp), %edx
	call      .L0000097D
.L0000097D:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %edx, %edx
	je        .L0000172C
.L0000098C:
	movl      8(%ebp), %edx
	movl      28(%edx), %edi
	testl     %edi, %edi
	je        .L0000172C
.L0000099A:
	cmpl      $5, 12(%ebp)
	jg        .L0000172C
.L000009A4:
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L0000172C
.L000009AF:
	movl      8(%ebp), %edx
	movl      12(%edx), %esi
	testl     %esi, %esi
	je        .L0000171C
.L000009BD:
	movl      (%edx), %ecx
	testl     %ecx, %ecx
	jne       .L000009CE
.L000009C3:
	movl      4(%edx), %eax
	testl     %eax, %eax
	jne       .L0000171C
.L000009CE:
	movl      4(%edi), %eax
	cmpl      $666, %eax
	movl      %eax, %edx
	je        .L00001710
.L000009DE:
	movl      8(%ebp), %esi
	movl      16(%esi), %ecx
	testl     %ecx, %ecx
	jne       .L00000A04
.L000009E8:
	movl      z_errmsg@GOT(%ebx), %edi
	movl      28(%edi), %ecx
	movl      %ecx, 24(%esi)
.L000009F4:
	movl      $-5, %eax
	.p2align 2
.L000009FC:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000A04:
	movl      8(%ebp), %esi
	movl      40(%edi), %ecx
	movl      %esi, (%edi)
	cmpl      $42, %edx
	movl      12(%ebp), %esi
	movl      %ecx, -16(%ebp)
	movl      %esi, 40(%edi)
	je        .L000013DC
.L00000A1E:
	cmpl      $69, %eax
	je        .L0000123D
.L00000A27:
	movl      20(%edi), %esi
	movl      %esi, -56(%ebp)
.L00000A2D:
	cmpl      $73, %eax
	je        .L000010D8
.L00000A36:
	cmpl      $91, %eax
	je        .L00000F78
.L00000A3F:
	cmpl      $103, %eax
	je        .L00000E73
.L00000A48:
	movl      -56(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L00000DEE
.L00000A53:
	movl      8(%ebp), %edx
	movl      4(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L00000A97
.L00000A5D:
	movl      -16(%ebp), %eax
	movl      12(%ebp), %edx
	sall      $1, %eax
	sall      $1, %edx
	cmpl      $4, 12(%ebp)
	jle       .L00000A70
.L00000A6D:
	subl      $9, %edx
.L00000A70:
	cmpl      $4, -16(%ebp)
	jle       .L00000A79
.L00000A76:
	subl      $9, %eax
.L00000A79:
	cmpl      %eax, %edx
	jg        .L00000A97
.L00000A7D:
	cmpl      $4, 12(%ebp)
	je        .L00000A97
.L00000A83:
	movl      z_errmsg@GOT(%ebx), %ecx
	movl      28(%ecx), %esi
	movl      8(%ebp), %edi
	movl      %esi, 24(%edi)
	jmp       .L000009F4
.L00000A97:
	movl      4(%edi), %eax
	cmpl      $666, %eax
	je        .L00000DE1
.L00000AA5:
	testl     %ecx, %ecx
	jne       .L00000ABE
.L00000AA9:
	movl      116(%edi), %edx
	testl     %edx, %edx
	jne       .L00000ABE
.L00000AB0:
	movl      12(%ebp), %esi
	testl     %esi, %esi
	je        .L00000B1C
.L00000AB7:
	cmpl      $666, %eax
	je        .L00000B1C
.L00000ABE:
	movl      136(%edi), %eax
	cmpl      $2, %eax
	je        .L00000DD0
.L00000ACD:
	cmpl      $3, %eax
	je        .L00000DBF
.L00000AD6:
	subl      $8, %esp
	movl      132(%edi), %edx
	pushl     12(%ebp)
	leal      (%edx,%edx,2), %esi
	pushl     %edi
	leal      configuration_table@GOTOFF(%ebx), %ecx
	call      *8(%ecx,%esi,4)
.L00000AF0:
	leal      -2(%eax), %esi
	addl      $16, %esp
	cmpl      $1, %esi
	movl      %eax, %edx
	ja        .L00000B04
.L00000AFD:
	movl      $666, 4(%edi)
.L00000B04:
	testl     %edx, %edx
	je        .L00000DAC
.L00000B0C:
	cmpl      $2, %edx
	je        .L00000DAC
.L00000B15:
	decl      %edx
	je        .L00000C9F
.L00000B1C:
	xorl      %eax, %eax
	cmpl      $4, 12(%ebp)
	jne       .L000009FC
.L00000B28:
	movl      24(%edi), %edx
	testl     %edx, %edx
	movl      $1, %eax
	jle       .L000009FC
.L00000B38:
	cmpl      $2, %edx
	je        .L00000C11
.L00000B41:
	movl      8(%ebp), %esi
	movl      48(%esi), %ecx
	movl      %ecx, %eax
	movl      20(%edi), %edx
	movl      8(%edi), %esi
	shrl      $24, %eax
	movb      %al, (%edx,%esi)
	movl      20(%edi), %esi
	movl      8(%edi), %edx
	incl      %esi
	shrl      $16, %ecx
	movl      %esi, 20(%edi)
	movb      %cl, (%esi,%edx)
	movl      8(%ebp), %eax
	movzwl    48(%eax), %esi
	movl      20(%edi), %ecx
	movl      %esi, %eax
	incl      %ecx
	movl      8(%edi), %edx
	shrl      $8, %eax
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %edx
	incl      %edx
	movl      8(%edi), %eax
	movl      %esi, %ecx
	movl      %edx, 20(%edi)
	movb      %cl, (%edx,%eax)
.L00000B8D:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	incl      20(%edi)
	pushl     %eax
	movl      %eax, -52(%ebp)
	call      _tr_flush_bits
.L00000BA2:
	movl      -52(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00000BB7
.L00000BB5:
	movl      %eax, %esi
.L00000BB7:
	testl     %esi, %esi
	jne       .L00000BD5
.L00000BBB:
	movl      24(%edi), %eax
	testl     %eax, %eax
	jle       .L00000BC7
.L00000BC2:
	negl      %eax
	movl      %eax, 24(%edi)
.L00000BC7:
	xorl      %eax, %eax
	cmpl      $0, 20(%edi)
	sete      %al
	jmp       .L000009FC
.L00000BD5:
	pushl     %eax
	pushl     %esi
	movl      -52(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
.L00000BE8:
	movl      8(%ebp), %eax
	movl      -52(%ebp), %ecx
	subl      %esi, 16(%eax)
	movl      20(%ecx), %edx
	addl      %esi, 12(%eax)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%eax)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00000BBB
.L00000C09:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00000BBB
.L00000C11:
	movl      8(%ebp), %esi
	movl      20(%edi), %edx
	movl      8(%edi), %ecx
	movb      48(%esi), %al
	movb      %al, (%edx,%ecx)
	movl      20(%edi), %edx
	movl      48(%esi), %eax
	movl      8(%edi), %ecx
	incl      %edx
	shrl      $8, %eax
	movl      %edx, 20(%edi)
	movb      %al, (%edx,%ecx)
	movl      20(%edi), %ecx
	movl      8(%edi), %edx
	movzwl    50(%esi), %eax
	incl      %ecx
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %ecx
	movl      8(%edi), %edx
	movzbl    51(%esi), %eax
	incl      %ecx
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %ecx
	movl      8(%edi), %edx
	movb      8(%esi), %al
	incl      %ecx
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %edx
	movl      8(%esi), %eax
	incl      %edx
	movl      8(%edi), %ecx
	shrl      $8, %eax
	movl      %edx, 20(%edi)
	movb      %al, (%edx,%ecx)
	movl      20(%edi), %ecx
	incl      %ecx
	movl      8(%edi), %edx
	movzwl    10(%esi), %eax
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %ecx
	incl      %ecx
	movl      8(%edi), %edx
	movzbl    11(%esi), %eax
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	jmp       .L00000B8D
.L00000C9F:
	cmpl      $1, 12(%ebp)
	je        .L00000D98
.L00000CA9:
	cmpl      $5, 12(%ebp)
	je        .L00000CC8
.L00000CAF:
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %edi
	call      _tr_stored_block
.L00000CBB:
	addl      $16, %esp
	cmpl      $3, 12(%ebp)
	je        .L00000D50
.L00000CC8:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	pushl     %eax
	movl      %eax, -48(%ebp)
	call      _tr_flush_bits
.L00000CDA:
	movl      -48(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00000CEF
.L00000CED:
	movl      %eax, %esi
.L00000CEF:
	testl     %esi, %esi
	jne       .L00000D09
.L00000CF3:
	testl     %eax, %eax
	jne       .L00000B1C
.L00000CFB:
	movl      $-1, 40(%edi)
.L00000D02:
	xorl      %eax, %eax
	jmp       .L000009FC
.L00000D09:
	pushl     %eax
	pushl     %esi
	movl      -48(%ebp), %eax
	pushl     16(%eax)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy@PLT
.L00000D1C:
	movl      8(%ebp), %edx
	movl      -48(%ebp), %ecx
	subl      %esi, 16(%edx)
	movl      20(%ecx), %eax
	addl      %esi, 12(%edx)
	subl      %esi, %eax
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%edx)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	jne       .L00000D48
.L00000D3D:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	movl      16(%edx), %eax
	jmp       .L00000CF3
.L00000D48:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	jmp       .L00000CF3
.L00000D50:
	movl      76(%edi), %edx
	movl      68(%edi), %esi
	sall      $1, %edx
	movw      $0, -2(%edx,%esi)
	subl      $2, %edx
	pushl     %ecx
	pushl     %edx
	pushl     $0
	pushl     %esi
	call      memset@PLT
.L00000D6C:
	movl      116(%edi), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	jne       .L00000CC8
.L00000D7A:
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	movl      $0, 5812(%edi)
	jmp       .L00000CC8
.L00000D97:
	.p2align 3
.L00000D98:
	subl      $12, %esp
	pushl     %edi
	call      _tr_align
.L00000DA1:
	addl      $16, %esp
	jmp       .L00000CC8
.L00000DA9:
	.p2align 2
.L00000DAC:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	testl     %eax, %eax
	jne       .L00000D02
.L00000DBA:
	jmp       .L00000CFB
.L00000DBF:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %edi
	call      deflate_rle
.L00000DCB:
	jmp       .L00000AF0
.L00000DD0:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %edi
	call      deflate_huff
.L00000DDC:
	jmp       .L00000AF0
.L00000DE1:
	testl     %ecx, %ecx
	je        .L00000AA9
.L00000DE9:
	jmp       .L00000A83
.L00000DEE:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	movl      %esi, -44(%ebp)
	call      _tr_flush_bits
.L00000E00:
	movl      -44(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00000E15
.L00000E13:
	movl      %eax, %esi
.L00000E15:
	testl     %esi, %esi
	jne       .L00000E2C
.L00000E19:
	testl     %eax, %eax
	je        .L00000CFB
.L00000E21:
	movl      8(%ebp), %eax
	movl      4(%eax), %ecx
	jmp       .L00000A97
.L00000E2C:
	pushl     %eax
	pushl     %esi
	movl      -44(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
.L00000E3F:
	movl      8(%ebp), %edx
	movl      -44(%ebp), %ecx
	subl      %esi, 16(%edx)
	movl      20(%ecx), %eax
	addl      %esi, 12(%edx)
	subl      %esi, %eax
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%edx)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	jne       .L00000E6B
.L00000E60:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	movl      16(%edx), %eax
	jmp       .L00000E19
.L00000E6B:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	jmp       .L00000E19
.L00000E73:
	movl      28(%edi), %edx
	movl      44(%edx), %esi
	testl     %esi, %esi
	je        .L00000F6C
.L00000E81:
	movl      -56(%ebp), %ecx
	addl      $2, %ecx
	movl      12(%edi), %edx
	cmpl      %edx, %ecx
	ja        .L00000EE8
.L00000E8E:
	movl      -56(%ebp), %esi
	addl      $2, %esi
	cmpl      %edx, %esi
	ja        .L00000A48
.L00000E9C:
	movl      8(%ebp), %eax
	movb      48(%eax), %dl
	movl      8(%edi), %esi
	movl      -56(%ebp), %ecx
	movb      %dl, (%ecx,%esi)
	movl      8(%ebp), %esi
	movl      20(%edi), %edx
	movl      48(%esi), %eax
	movl      8(%edi), %ecx
	incl      %edx
	shrl      $8, %eax
	movl      %edx, 20(%edi)
	movb      %al, (%edx,%ecx)
	incl      20(%edi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32@PLT
.L00000ED0:
	movl      20(%edi), %edx
	movl      %eax, 48(%esi)
	movl      $113, 4(%edi)
	addl      $16, %esp
	movl      %edx, -56(%ebp)
	jmp       .L00000A48
.L00000EE8:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	pushl     %eax
	movl      %eax, -40(%ebp)
	call      _tr_flush_bits
.L00000EFA:
	movl      -40(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00000F0F
.L00000F0D:
	movl      %eax, %esi
.L00000F0F:
	testl     %esi, %esi
	jne       .L00000F21
.L00000F13:
	movl      20(%edi), %ecx
	movl      %ecx, -56(%ebp)
.L00000F19:
	movl      12(%edi), %edx
	jmp       .L00000E8E
.L00000F21:
	pushl     %eax
	pushl     %esi
	movl      -40(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
.L00000F34:
	movl      8(%ebp), %eax
	movl      -40(%ebp), %ecx
	subl      %esi, 16(%eax)
	movl      20(%ecx), %edx
	addl      %esi, 12(%eax)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%eax)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00000F63
.L00000F55:
	movl      8(%ecx), %esi
	movl      20(%edi), %eax
	movl      %esi, 16(%ecx)
	movl      %eax, -56(%ebp)
	jmp       .L00000F19
.L00000F63:
	movl      20(%edi), %eax
	movl      %eax, -56(%ebp)
	jmp       .L00000F19
.L00000F6B:
	.p2align 2
.L00000F6C:
	movl      $113, 4(%edi)
	jmp       .L00000A48
.L00000F78:
	movl      28(%edi), %esi
	movl      36(%esi), %edx
	testl     %edx, %edx
	je        .L00000FD9
.L00000F82:
	movl      -56(%ebp), %ecx
	movl      %ecx, -64(%ebp)
.L00000F88:
	movl      -56(%ebp), %edx
	cmpl      12(%edi), %edx
	je        .L0000101C
.L00000F94:
	movl      32(%edi), %ecx
	movl      36(%esi), %edx
	movzbl    (%ecx,%edx), %esi
	incl      %ecx
	movl      %ecx, 32(%edi)
	movl      8(%edi), %eax
	movl      %esi, %edx
	movl      -56(%ebp), %ecx
	movb      %dl, (%ecx,%eax)
	movl      20(%edi), %eax
	incl      %eax
	testl     %esi, %esi
	movl      %eax, 20(%edi)
	je        .L00000FC0
.L00000FB8:
	movl      %eax, -56(%ebp)
	movl      28(%edi), %esi
	jmp       .L00000F88
.L00000FC0:
	movl      %eax, -56(%ebp)
.L00000FC3:
	movl      28(%edi), %ecx
	movl      44(%ecx), %edx
	testl     %edx, %edx
	je        .L00000FD5
.L00000FCD:
	movl      -64(%ebp), %eax
	cmpl      %eax, -56(%ebp)
	ja        .L00000FF2
.L00000FD5:
	testl     %esi, %esi
	jne       .L00000FEA
.L00000FD9:
	movl      $103, 4(%edi)
	movl      $103, %eax
	jmp       .L00000A3F
.L00000FEA:
	movl      4(%edi), %eax
	jmp       .L00000A3F
.L00000FF2:
	subl      %eax, -56(%ebp)
	pushl     %edx
	pushl     -56(%ebp)
	movl      8(%edi), %ecx
	addl      %ecx, %eax
	pushl     %eax
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32@PLT
.L0000100A:
	movl      8(%ebp), %ecx
	movl      %eax, 48(%ecx)
	movl      20(%edi), %eax
	addl      $16, %esp
	movl      %eax, -56(%ebp)
	jmp       .L00000FD5
.L0000101B:
	.p2align 2
.L0000101C:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0000102E
.L00001023:
	movl      -64(%ebp), %ecx
	cmpl      %ecx, %edx
	ja        .L000010B5
.L0000102E:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	movl      %esi, -36(%ebp)
	call      _tr_flush_bits
.L00001040:
	movl      -36(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00001055
.L00001053:
	movl      %eax, %esi
.L00001055:
	testl     %esi, %esi
	jne       .L00001079
.L00001059:
	movl      20(%edi), %eax
	cmpl      12(%edi), %eax
	movl      %eax, -56(%ebp)
	movl      %eax, -64(%ebp)
	je        .L0000106F
.L00001067:
	movl      28(%edi), %esi
	jmp       .L00000F94
.L0000106F:
	movl      $1, %esi
	jmp       .L00000FC3
.L00001079:
	pushl     %eax
	pushl     %esi
	movl      -36(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
.L0000108C:
	movl      8(%ebp), %eax
	movl      -36(%ebp), %ecx
	subl      %esi, 16(%eax)
	movl      20(%ecx), %edx
	addl      %esi, 12(%eax)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%eax)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00001059
.L000010AD:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00001059
.L000010B5:
	subl      %ecx, %edx
	pushl     %eax
	pushl     %edx
	movl      8(%edi), %eax
	addl      %eax, %ecx
	pushl     %ecx
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32@PLT
.L000010CA:
	movl      8(%ebp), %esi
	movl      %eax, 48(%esi)
	addl      $16, %esp
	jmp       .L0000102E
.L000010D8:
	movl      28(%edi), %esi
	movl      28(%esi), %edx
	testl     %edx, %edx
	je        .L00001140
.L000010E2:
	movl      -56(%ebp), %eax
	movl      %eax, -64(%ebp)
.L000010E8:
	movl      -56(%ebp), %eax
	cmpl      12(%edi), %eax
	je        .L00001184
.L000010F4:
	movl      32(%edi), %ecx
	movl      28(%esi), %edx
	movzbl    (%ecx,%edx), %esi
	incl      %ecx
	movl      %ecx, 32(%edi)
	movl      8(%edi), %eax
	movl      %esi, %edx
	movl      -56(%ebp), %ecx
	movb      %dl, (%ecx,%eax)
	movl      20(%edi), %eax
	incl      %eax
	testl     %esi, %esi
	movl      %eax, 20(%edi)
	je        .L00001120
.L00001118:
	movl      %eax, -56(%ebp)
	movl      28(%edi), %esi
	jmp       .L000010E8
.L00001120:
	movl      %eax, -56(%ebp)
.L00001123:
	movl      28(%edi), %ecx
	movl      44(%ecx), %edx
	testl     %edx, %edx
	je        .L00001135
.L0000112D:
	movl      -64(%ebp), %eax
	cmpl      %eax, -56(%ebp)
	ja        .L00001159
.L00001135:
	testl     %esi, %esi
	jne       .L00001151
.L00001139:
	movl      $0, 32(%edi)
.L00001140:
	movl      $91, 4(%edi)
	movl      $91, %eax
	jmp       .L00000A36
.L00001151:
	movl      4(%edi), %eax
	jmp       .L00000A36
.L00001159:
	subl      %eax, -56(%ebp)
	pushl     %edx
	pushl     -56(%ebp)
	movl      8(%edi), %ecx
	addl      %ecx, %eax
	pushl     %eax
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32@PLT
.L00001171:
	movl      8(%ebp), %ecx
	movl      %eax, 48(%ecx)
	movl      20(%edi), %eax
	addl      $16, %esp
	movl      %eax, -56(%ebp)
	jmp       .L00001135
.L00001182:
	.p2align 2
.L00001184:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L00001196
.L0000118B:
	movl      -64(%ebp), %edx
	cmpl      %edx, %eax
	ja        .L0000121D
.L00001196:
	movl      8(%ebp), %esi
	movl      28(%esi), %ecx
	subl      $12, %esp
	pushl     %ecx
	movl      %ecx, -32(%ebp)
	call      _tr_flush_bits
.L000011A8:
	movl      -32(%ebp), %eax
	movl      8(%ebp), %edx
	movl      20(%eax), %esi
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L000011BD
.L000011BB:
	movl      %eax, %esi
.L000011BD:
	testl     %esi, %esi
	jne       .L000011E1
.L000011C1:
	movl      20(%edi), %edx
	cmpl      12(%edi), %edx
	movl      %edx, -56(%ebp)
	movl      %edx, -64(%ebp)
	je        .L000011D7
.L000011CF:
	movl      28(%edi), %esi
	jmp       .L000010F4
.L000011D7:
	movl      $1, %esi
	jmp       .L00001123
.L000011E1:
	pushl     %eax
	pushl     %esi
	movl      -32(%ebp), %ecx
	pushl     16(%ecx)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L000011F4:
	movl      8(%ebp), %edx
	movl      -32(%ebp), %eax
	subl      %esi, 16(%edx)
	movl      20(%eax), %ecx
	addl      %esi, 12(%edx)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%eax)
	addl      %esi, 20(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%eax)
	jne       .L000011C1
.L00001215:
	movl      8(%eax), %esi
	movl      %esi, 16(%eax)
	jmp       .L000011C1
.L0000121D:
	subl      %edx, %eax
	pushl     %ecx
	pushl     %eax
	movl      8(%edi), %esi
	addl      %esi, %edx
	pushl     %edx
	movl      8(%ebp), %esi
	pushl     48(%esi)
	call      crc32@PLT
.L00001232:
	movl      %eax, 48(%esi)
	addl      $16, %esp
	jmp       .L00001196
.L0000123D:
	movl      28(%edi), %esi
	movl      16(%esi), %eax
	testl     %eax, %eax
	movl      %esi, -24(%ebp)
	je        .L000013C5
.L0000124E:
	movzwl    20(%esi), %ecx
	movl      20(%edi), %edx
	cmpl      %ecx, 32(%edi)
	movl      %edx, -56(%ebp)
	movl      %edx, -20(%ebp)
	jae       .L000012A2
.L00001260:
	movl      -56(%ebp), %edx
	cmpl      12(%edi), %edx
	je        .L00001308
.L0000126C:
	movl      16(%esi), %edx
	movl      32(%edi), %esi
	movb      (%esi,%edx), %al
	movl      8(%edi), %ecx
	movl      -56(%ebp), %esi
	movb      %al, (%esi,%ecx)
	movl      20(%edi), %ecx
	movl      32(%edi), %edx
	incl      %ecx
	incl      %edx
	movl      28(%edi), %esi
	movl      %ecx, 20(%edi)
	movl      %edx, 32(%edi)
	movzwl    20(%esi), %eax
	cmpl      %eax, %edx
	movl      %esi, -24(%ebp)
	movl      %ecx, -56(%ebp)
	jae       .L000012A2
.L0000129D:
	movl      %ecx, -56(%ebp)
	jmp       .L00001260
.L000012A2:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L000012B1
.L000012A9:
	movl      -20(%ebp), %ecx
	cmpl      %ecx, -56(%ebp)
	ja        .L000012D9
.L000012B1:
	movl      20(%esi), %edx
	cmpl      %edx, 32(%edi)
	je        .L000012C1
.L000012B9:
	movl      4(%edi), %eax
	jmp       .L00000A2D
.L000012C1:
	movl      $0, 32(%edi)
	movl      $73, 4(%edi)
	movl      $73, %eax
	jmp       .L00000A2D
.L000012D9:
	subl      %ecx, -56(%ebp)
	pushl     %eax
	pushl     -56(%ebp)
	movl      8(%edi), %eax
	addl      %eax, %ecx
	pushl     %ecx
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32@PLT
.L000012F1:
	movl      8(%ebp), %esi
	movl      20(%edi), %edx
	movl      %eax, 48(%esi)
	addl      $16, %esp
	movl      %edx, -56(%ebp)
	movl      28(%edi), %esi
	jmp       .L000012B1
.L00001305:
	.p2align 3
.L00001308:
	movl      -24(%ebp), %eax
	movl      44(%eax), %esi
	testl     %esi, %esi
	je        .L0000131D
.L00001312:
	movl      -20(%ebp), %esi
	cmpl      %esi, %edx
	ja        .L000013A2
.L0000131D:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	pushl     %eax
	movl      %eax, -28(%ebp)
	call      _tr_flush_bits
.L0000132F:
	movl      -28(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00001344
.L00001342:
	movl      %eax, %esi
.L00001344:
	testl     %esi, %esi
	jne       .L00001366
.L00001348:
	movl      20(%edi), %eax
	cmpl      12(%edi), %eax
	movl      %eax, -56(%ebp)
	movl      %eax, -20(%ebp)
	je        .L0000135E
.L00001356:
	movl      28(%edi), %esi
	jmp       .L0000126C
.L0000135E:
	movl      28(%edi), %esi
	jmp       .L000012A2
.L00001366:
	pushl     %eax
	pushl     %esi
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
.L00001379:
	movl      8(%ebp), %eax
	movl      -28(%ebp), %ecx
	subl      %esi, 16(%eax)
	movl      20(%ecx), %edx
	addl      %esi, 12(%eax)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%eax)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00001348
.L0000139A:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00001348
.L000013A2:
	subl      %esi, %edx
	pushl     %eax
	pushl     %edx
	movl      8(%edi), %edx
	addl      %edx, %esi
	pushl     %esi
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32@PLT
.L000013B7:
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	jmp       .L0000131D
.L000013C5:
	movl      20(%edi), %ecx
	movl      $73, 4(%edi)
	movl      $73, %eax
	movl      %ecx, -56(%ebp)
	jmp       .L00000A2D
.L000013DC:
	cmpl      $2, 24(%edi)
	je        .L000014EF
.L000013E6:
	movl      48(%edi), %edx
	subl      $8, %edx
	sall      $12, %edx
	cmpl      $1, 136(%edi)
	leal      2048(%edx), %esi
	jle       .L000014C2
.L00001402:
	xorl      %eax, %eax
.L00001404:
	sall      $6, %eax
	movl      108(%edi), %ecx
	orl       %eax, %esi
	testl     %ecx, %ecx
	je        .L00001413
.L00001410:
	orl       $32, %esi
.L00001413:
	movl      $31, %edx
	movl      %edx, %ecx
	movl      %esi, %eax
	xorl      %edx, %edx
	divl      %ecx
	movl      %esi, %ecx
	subl      %edx, %ecx
	leal      31(%ecx), %esi
	movl      %esi, %eax
	movl      20(%edi), %edx
	movl      8(%edi), %ecx
	shrl      $8, %eax
	movl      $113, 4(%edi)
	movb      %al, (%edx,%ecx)
	movl      20(%edi), %edx
	incl      %edx
	movl      %esi, %ecx
	movl      8(%edi), %eax
	movl      %edx, 20(%edi)
	movb      %cl, (%edx,%eax)
	movl      20(%edi), %esi
	movl      108(%edi), %edx
	incl      %esi
	testl     %edx, %edx
	movl      %esi, 20(%edi)
	je        .L000014A5
.L00001459:
	movl      8(%ebp), %ecx
	movl      48(%ecx), %edx
	movl      %edx, %eax
	movl      8(%edi), %ecx
	shrl      $24, %eax
	movb      %al, (%esi,%ecx)
	movl      20(%edi), %esi
	movl      8(%edi), %ecx
	incl      %esi
	shrl      $16, %edx
	movl      %esi, 20(%edi)
	movb      %dl, (%esi,%ecx)
	movl      8(%ebp), %eax
	movzwl    48(%eax), %esi
	movl      20(%edi), %ecx
	movl      %esi, %eax
	incl      %ecx
	movl      8(%edi), %edx
	shrl      $8, %eax
	movl      %ecx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %edx
	incl      %edx
	movl      8(%edi), %eax
	movl      %esi, %ecx
	movl      %edx, 20(%edi)
	movb      %cl, (%edx,%eax)
	incl      20(%edi)
.L000014A5:
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32@PLT
.L000014B1:
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	movl      4(%edi), %eax
	jmp       .L00000A1E
.L000014C2:
	movl      132(%edi), %edx
	cmpl      $1, %edx
	jle       .L00001402
.L000014D1:
	cmpl      $5, %edx
	movl      $1, %eax
	jle       .L00001404
.L000014DF:
	xorl      %eax, %eax
	cmpl      $6, %edx
	setne     %al
	addl      $2, %eax
	jmp       .L00001404
.L000014EF:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32@PLT
.L000014FB:
	movl      8(%ebp), %edx
	movl      20(%edi), %esi
	movl      %eax, 48(%edx)
	movl      8(%edi), %eax
	movb      $31, (%esi,%eax)
	movl      20(%edi), %esi
	incl      %esi
	movl      8(%edi), %ecx
	movl      %esi, 20(%edi)
	movb      $139, (%esi,%ecx)
	movl      20(%edi), %ecx
	incl      %ecx
	movl      8(%edi), %edx
	movl      %ecx, 20(%edi)
	movb      $8, (%ecx,%edx)
	movl      20(%edi), %eax
	movl      28(%edi), %edx
	leal      1(%eax), %ecx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %ecx, 20(%edi)
	jne       .L000015CC
.L0000153E:
	movl      8(%edi), %esi
	movb      $0, (%ecx,%esi)
	movl      20(%edi), %esi
	movl      8(%edi), %edx
	incl      %esi
	movl      %esi, 20(%edi)
	movb      $0, (%esi,%edx)
	movl      20(%edi), %esi
	incl      %esi
	movl      8(%edi), %ecx
	movl      %esi, 20(%edi)
	movb      $0, (%esi,%ecx)
	movl      20(%edi), %ecx
	incl      %ecx
	movl      8(%edi), %edx
	movl      %ecx, 20(%edi)
	movb      $0, (%ecx,%edx)
	movl      20(%edi), %ecx
	incl      %ecx
	movl      8(%edi), %esi
	movl      %ecx, 20(%edi)
	movb      $0, (%ecx,%esi)
	movl      20(%edi), %edx
	leal      1(%edx), %ecx
	addl      $2, %edx
	movl      %edx, 20(%edi)
	movl      132(%edi), %edx
	cmpl      $9, %edx
	movl      8(%edi), %esi
	movb      $2, %al
	je        .L000015A4
.L00001599:
	cmpl      $1, 136(%edi)
	jle       .L000015C5
.L000015A2:
	movb      $4, %al
.L000015A4:
	movb      %al, (%ecx,%esi)
	movl      8(%edi), %eax
	movl      20(%edi), %ecx
	movb      $3, (%ecx,%eax)
	incl      20(%edi)
	movl      $113, 4(%edi)
	movl      $113, %eax
	jmp       .L00000A1E
.L000015C5:
	xorl      %eax, %eax
	decl      %edx
	jg        .L000015A4
.L000015CA:
	jmp       .L000015A2
.L000015CC:
	addl      $2, %eax
	movl      %eax, 20(%edi)
	xorl      %eax, %eax
	cmpl      $0, (%edx)
	setne     %al
	cmpl      $0, 44(%edx)
	movl      8(%edi), %esi
	je        .L000015E6
.L000015E3:
	addl      $2, %eax
.L000015E6:
	cmpl      $0, 16(%edx)
	je        .L000015EF
.L000015EC:
	addl      $4, %eax
.L000015EF:
	cmpl      $0, 28(%edx)
	je        .L000015F8
.L000015F5:
	addl      $8, %eax
.L000015F8:
	movl      36(%edx), %edx
	testl     %edx, %edx
	je        .L00001602
.L000015FF:
	addl      $16, %eax
.L00001602:
	movb      %al, (%ecx,%esi)
	movl      28(%edi), %eax
	movl      20(%edi), %esi
	movb      4(%eax), %cl
	movl      8(%edi), %edx
	movb      %cl, (%esi,%edx)
	movl      28(%edi), %eax
	movl      20(%edi), %esi
	movl      4(%eax), %ecx
	incl      %esi
	movl      8(%edi), %edx
	shrl      $8, %ecx
	movl      %esi, 20(%edi)
	movb      %cl, (%esi,%edx)
	movl      20(%edi), %esi
	movl      28(%edi), %eax
	incl      %esi
	movzwl    6(%eax), %ecx
	movl      8(%edi), %edx
	movl      %esi, 20(%edi)
	movb      %cl, (%esi,%edx)
	movl      20(%edi), %esi
	movl      28(%edi), %eax
	incl      %esi
	movzbl    7(%eax), %ecx
	movl      8(%edi), %edx
	movl      %esi, 20(%edi)
	movb      %cl, (%esi,%edx)
	movl      20(%edi), %edx
	leal      1(%edx), %ecx
	addl      $2, %edx
	movl      %edx, 20(%edi)
	movl      132(%edi), %edx
	cmpl      $9, %edx
	movl      8(%edi), %esi
	movb      $2, %al
	je        .L0000167D
.L0000166E:
	cmpl      $1, 136(%edi)
	jle       .L00001701
.L0000167B:
	movb      $4, %al
.L0000167D:
	movb      %al, (%ecx,%esi)
	movl      28(%edi), %eax
	movl      20(%edi), %esi
	movb      12(%eax), %cl
	movl      8(%edi), %edx
	movb      %cl, (%esi,%edx)
	movl      28(%edi), %esi
	movl      20(%edi), %ecx
	movl      16(%esi), %edx
	incl      %ecx
	testl     %edx, %edx
	movl      %ecx, 20(%edi)
	je        .L000016C5
.L000016A0:
	movb      20(%esi), %al
	movl      8(%edi), %edx
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %esi
	incl      %esi
	movl      %esi, 20(%edi)
	movl      28(%edi), %eax
	movl      20(%eax), %ecx
	movl      8(%edi), %edx
	shrl      $8, %ecx
	movb      %cl, (%esi,%edx)
	incl      20(%edi)
	movl      28(%edi), %esi
.L000016C5:
	movl      44(%esi), %edx
	testl     %edx, %edx
	jne       .L000016E4
.L000016CC:
	movl      $0, 32(%edi)
	movl      $69, 4(%edi)
	movl      $69, %eax
	jmp       .L00000A1E
.L000016E4:
	pushl     %eax
	pushl     20(%edi)
	pushl     8(%edi)
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32@PLT
.L000016F6:
	movl      8(%ebp), %esi
	movl      %eax, 48(%esi)
	addl      $16, %esp
	jmp       .L000016CC
.L00001701:
	xorl      %eax, %eax
	decl      %edx
	jg        .L0000167D
.L0000170A:
	jmp       .L0000167B
.L0000170F:
	.p2align 3
.L00001710:
	cmpl      $4, 12(%ebp)
	je        .L000009DE
.L0000171A:
	.p2align 2
.L0000171C:
	movl      z_errmsg@GOT(%ebx), %esi
	movl      16(%esi), %edx
	movl      8(%ebp), %edi
	movl      %edx, 24(%edi)
	.p2align 2
.L0000172C:
	movl      $-2, %eax
	jmp       .L000009FC
	.size	deflate, .-deflate
# ----------------------
.L00001736:
	.p2align 3
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	movl      8(%ebp), %esi
	testl     %esi, %esi
	je        .L0000174D
.L00001744:
	movl      28(%esi), %edx
	testl     %edx, %edx
	movl      %edx, %ecx
	jne       .L0000175C
.L0000174D:
	movl      $-2, %eax
.L00001752:
	leal      -8(%ebp), %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001759:
	.p2align 2
.L0000175C:
	movl      4(%edx), %edi
	cmpl      $42, %edi
	je        .L0000178C
.L00001764:
	cmpl      $69, %edi
	je        .L0000178C
.L00001769:
	cmpl      $73, %edi
	je        .L0000178C
.L0000176E:
	cmpl      $91, %edi
	je        .L0000178C
.L00001773:
	cmpl      $103, %edi
	je        .L0000178C
.L00001778:
	cmpl      $113, %edi
	je        .L0000178C
.L0000177D:
	cmpl      $666, %edi
	movl      $-2, %eax
	jne       .L00001752
.L0000178A:
	.p2align 2
.L0000178C:
	movl      8(%ecx), %eax
	testl     %eax, %eax
	jne       .L00001804
.L00001793:
	movl      68(%edx), %eax
	testl     %eax, %eax
	jne       .L000017F0
.L0000179A:
	movl      64(%edx), %eax
	testl     %eax, %eax
	jne       .L000017DC
.L000017A1:
	movl      56(%edx), %eax
	testl     %eax, %eax
	jne       .L000017CC
.L000017A8:
	subl      $8, %esp
	pushl     28(%esi)
	pushl     40(%esi)
	call      *36(%esi)
.L000017B4:
	xorl      %edx, %edx
	addl      $16, %esp
	cmpl      $113, %edi
	setne     %dl
	movl      $0, 28(%esi)
	leal      -3(%edx,%edx,2), %eax
	jmp       .L00001752
.L000017CC:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L000017D6:
	addl      $16, %esp
	jmp       .L000017A8
.L000017DB:
	.p2align 2
.L000017DC:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L000017E6:
	addl      $16, %esp
	movl      28(%esi), %edx
	jmp       .L000017A1
.L000017EE:
	.p2align 3
.L000017F0:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L000017FA:
	addl      $16, %esp
	movl      28(%esi), %edx
	jmp       .L0000179A
.L00001802:
	.p2align 2
.L00001804:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L0000180E:
	addl      $16, %esp
	movl      28(%esi), %edx
	jmp       .L00001793
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L00001819:
	.p2align 2
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
	call      .L0000182D
.L0000182D:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %esi, %esi
	je        .L00001849
.L00001838:
	movl      8(%ebp), %edx
	testl     %edx, %edx
	je        .L00001849
.L0000183F:
	movl      28(%esi), %edx
	testl     %edx, %edx
	movl      %edx, -20(%ebp)
	jne       .L00001858
.L00001849:
	movl      $-2, %eax
.L0000184E:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001856:
	.p2align 3
.L00001858:
	cld       
	movl      8(%ebp), %edi
	movl      $14, %ecx
	rep movsl     
	pushl     %eax
	pushl     $5828
	pushl     $1
	movl      8(%ebp), %esi
	pushl     40(%esi)
	call      *32(%esi)
.L00001874:
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      $-4, %eax
	je        .L0000184E
.L00001886:
	movl      8(%ebp), %esi
	movl      -16(%ebp), %eax
	movl      %eax, 28(%esi)
	cld       
	movl      %eax, %edi
	movl      -20(%ebp), %esi
	movl      $1457, %ecx
	rep movsl     
	movl      -16(%ebp), %edx
	movl      8(%ebp), %edi
	movl      %edi, (%edx)
	pushl     %esi
	pushl     $2
	pushl     44(%edx)
	pushl     40(%edi)
	call      *32(%edi)
.L000018B0:
	addl      $12, %esp
	movl      -16(%ebp), %esi
	movl      %eax, 56(%esi)
	pushl     $2
	movl      8(%ebp), %edi
	pushl     44(%esi)
	pushl     40(%edi)
	call      *32(%edi)
.L000018C7:
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L000018DB:
	addl      $12, %esp
	movl      -16(%ebp), %edx
	movl      %eax, 68(%edx)
	pushl     $4
	pushl     5788(%edx)
	pushl     40(%edi)
	call      *32(%edi)
.L000018F2:
	movl      %eax, %esi
	movl      -16(%ebp), %eax
	movl      56(%eax), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %esi, 8(%eax)
	je        .L000019EC
.L00001908:
	movl      64(%eax), %edi
	testl     %edi, %edi
	je        .L000019EC
.L00001913:
	movl      68(%eax), %ecx
	testl     %ecx, %ecx
	je        .L000019EC
.L0000191E:
	testl     %esi, %esi
	je        .L000019EC
.L00001926:
	movl      -16(%ebp), %eax
	movl      44(%eax), %edi
	sall      $1, %edi
	pushl     %ecx
	pushl     %edi
	movl      -20(%ebp), %ecx
	pushl     56(%ecx)
	pushl     %edx
	call      memcpy@PLT
.L0000193C:
	movl      -16(%ebp), %edi
	movl      44(%edi), %edx
	addl      $12, %esp
	sall      $1, %edx
	pushl     %edx
	movl      -20(%ebp), %eax
	pushl     64(%eax)
	pushl     64(%edi)
	call      memcpy@PLT
.L00001956:
	movl      -16(%ebp), %edi
	movl      76(%edi), %ecx
	addl      $12, %esp
	sall      $1, %ecx
	pushl     %ecx
	movl      -20(%ebp), %edx
	pushl     68(%edx)
	pushl     68(%edi)
	call      memcpy@PLT
.L00001970:
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	pushl     12(%ecx)
	movl      -20(%ebp), %eax
	pushl     8(%eax)
	pushl     8(%ecx)
	call      memcpy@PLT
.L00001987:
	movl      -20(%ebp), %edx
	movl      16(%edx), %eax
	subl      8(%edx), %eax
	movl      -16(%ebp), %edx
	movl      8(%edx), %ecx
	leal      (%eax,%ecx), %edi
	movl      %edi, 16(%edx)
	movl      5788(%edx), %edx
	movl      %edx, %edi
	andl      $-2, %edi
	leal      (%edi,%esi), %eax
	movl      -16(%ebp), %edi
	movl      %eax, 5796(%edi)
	leal      (%edx,%edx,2), %eax
	movl      %edi, %edx
	addl      $148, %edx
	movl      %edx, 2840(%edi)
	addl      $2292, %edx
	addl      %eax, %ecx
	movl      %edx, 2852(%edi)
	addl      $244, %edx
	movl      %ecx, 5784(%edi)
	movl      %edx, 2864(%edi)
	xorl      %eax, %eax
	jmp       .L0000184E
.L000019EB:
	.p2align 2
.L000019EC:
	subl      $12, %esp
	pushl     8(%ebp)
	call      deflateEnd@PLT
.L000019F7:
	movl      $-4, %eax
	jmp       .L0000184E
	.size	deflateCopy, .-deflateCopy
# ----------------------
.L00001A01:
	.p2align 2
# ----------------------
	.local	lm_init
	.type	lm_init, @function
lm_init:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %esi
	movl      44(%esi), %ecx
	movl      76(%esi), %eax
	movl      68(%esi), %edx
	sall      $1, %ecx
	sall      $1, %eax
	movl      %ecx, 60(%esi)
	movw      $0, -2(%eax,%edx)
	subl      $2, %eax
	pushl     %ecx
	pushl     %eax
	pushl     $0
	call      .L00001A2F
.L00001A2F:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     %edx
	call      memset@PLT
.L00001A3C:
	movl      132(%esi), %edx
	leal      (%edx,%edx,2), %eax
	leal      configuration_table@GOTOFF(%ebx), %ecx
	sall      $2, %eax
	movzwl    2(%ecx,%eax), %edx
	movl      %edx, 128(%esi)
	movzwl    (%ecx,%eax), %edx
	movl      %edx, 140(%esi)
	movzwl    4(%ecx,%eax), %edx
	movl      %edx, 144(%esi)
	movzwl    6(%ecx,%eax), %edx
	movl      %edx, 124(%esi)
	movl      $0, 108(%esi)
	movl      $0, 92(%esi)
	movl      $0, 116(%esi)
	movl      $0, 5812(%esi)
	movl      $2, 120(%esi)
	movl      $2, 96(%esi)
	movl      $0, 104(%esi)
	movl      $0, 72(%esi)
	addl      $16, %esp
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
	.size	lm_init, .-lm_init
# ----------------------
.L00001ABB:
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
	movl      8(%ebp), %esi
	movl      44(%edx), %eax
	movl      116(%esi), %ecx
	call      .L00001AD6
.L00001AD6:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	movl      %eax, -20(%ebp)
	movl      %ecx, -44(%ebp)
	.p2align 2
.L00001AE4:
	movl      8(%ebp), %edx
	movl      60(%edx), %esi
	movl      -44(%ebp), %ecx
	subl      %ecx, %esi
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edx
	subl      %edx, %esi
	movl      -20(%ebp), %edi
	movl      %esi, -16(%ebp)
	leal      -262(%eax,%edi), %esi
	cmpl      %esi, %edx
	jae       .L00001D3B
.L00001B0C:
	movl      8(%ebp), %eax
	movl      (%eax), %edi
	movl      4(%edi), %edx
	testl     %edx, %edx
	je        .L00001C38
.L00001B1C:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %esi
	addl      56(%ecx), %esi
	movl      116(%ecx), %eax
	addl      %eax, %esi
	cmpl      -16(%ebp), %edx
	movl      %esi, -24(%ebp)
	movl      %eax, -44(%ebp)
	movl      %edx, %esi
	jbe       .L00001B3A
.L00001B37:
	movl      -16(%ebp), %esi
.L00001B3A:
	xorl      %eax, %eax
	testl     %esi, %esi
	jne       .L00001CDE
.L00001B44:
	movl      8(%ebp), %esi
	movl      -44(%ebp), %edi
	addl      %eax, %edi
	movl      5812(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      $2, %ecx
	movl      %edi, 116(%esi)
	movl      %edx, -48(%ebp)
	jbe       .L00001CD0
.L00001B64:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %esi
	subl      %edx, %esi
	movl      56(%ecx), %edx
	movl      %edx, -28(%ebp)
	movzbl    (%esi,%edx), %eax
	movl      88(%ecx), %edx
	movl      %edx, -32(%ebp)
	movl      %eax, 72(%ecx)
	movb      -32(%ebp), %cl
	sall      %cl, %eax
	movl      -28(%ebp), %ecx
	movzbl    1(%esi,%ecx), %edx
	xorl      %edx, %eax
	movl      8(%ebp), %edx
	movl      84(%edx), %ecx
	movl      -48(%ebp), %edx
	andl      %ecx, %eax
	movl      %ecx, -36(%ebp)
	testl     %edx, %edx
	movl      8(%ebp), %ecx
	movl      %eax, 72(%ecx)
	je        .L00001CC8
.L00001BAA:
	movl      %edi, -44(%ebp)
	movl      68(%ecx), %eax
	movl      64(%ecx), %edx
	movl      52(%ecx), %edi
	movl      %eax, -60(%ebp)
	movl      %edx, -40(%ebp)
	movl      %edi, -52(%ebp)
	.p2align 3
.L00001BC0:
	movl      8(%ebp), %edi
	movl      72(%edi), %eax
	movb      -32(%ebp), %cl
	movl      -28(%ebp), %edx
	sall      %cl, %eax
	movzbl    2(%esi,%edx), %ecx
	xorl      %ecx, %eax
	andl      -36(%ebp), %eax
	movl      8(%ebp), %ecx
	movl      %eax, 72(%ecx)
	movl      -60(%ebp), %edx
	movl      -52(%ebp), %ecx
	movw      (%edx,%eax,2), %di
	andl      %esi, %ecx
	movl      -40(%ebp), %edx
	movw      %di, (%edx,%ecx,2)
	movl      -48(%ebp), %edx
	decl      %edx
	movl      -44(%ebp), %ecx
	movl      -60(%ebp), %edi
	addl      %edx, %ecx
	movw      %si, (%edi,%eax,2)
	incl      %esi
	movl      8(%ebp), %eax
	cmpl      $2, %ecx
	movl      %edx, 5812(%eax)
	jbe       .L00001C18
.L00001C10:
	testl     %edx, %edx
	movl      %edx, -48(%ebp)
	jne       .L00001BC0
.L00001C17:
	.p2align 3
.L00001C18:
	cmpl      $261, -44(%ebp)
	ja        .L00001C38
.L00001C21:
	movl      8(%ebp), %eax
	movl      (%eax), %edi
	movl      4(%edi), %edx
	testl     %edx, %edx
	je        .L00001C38
.L00001C2D:
	movl      8(%ebp), %edi
	movl      44(%edi), %eax
	jmp       .L00001AE4
.L00001C38:
	movl      8(%ebp), %esi
	movl      5824(%esi), %edx
	movl      60(%esi), %ecx
	cmpl      %ecx, %edx
	movl      %esi, %edi
	jae       .L00001C86
.L00001C4A:
	movl      116(%esi), %esi
	addl      108(%edi), %esi
	cmpl      %esi, %edx
	jae       .L00001C8E
.L00001C54:
	movl      %ecx, %edi
	subl      %esi, %edi
	cmpl      $258, %edi
	jbe       .L00001C65
.L00001C60:
	movl      $258, %edi
.L00001C65:
	movl      8(%ebp), %eax
	movl      56(%eax), %ecx
	pushl     %edx
	pushl     %edi
	addl      %esi, %ecx
	pushl     $0
	pushl     %ecx
	call      memset@PLT
.L00001C77:
	leal      (%edi,%esi), %ecx
	movl      8(%ebp), %edx
	addl      $16, %esp
	movl      %ecx, 5824(%edx)
.L00001C86:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001C8E:
	leal      258(%esi), %edi
	cmpl      %edi, %edx
	jae       .L00001C86
.L00001C98:
	subl      %edx, %esi
	movl      %ecx, %eax
	leal      258(%esi), %edi
	subl      %edx, %eax
	cmpl      %eax, %edi
	jbe       .L00001CAA
.L00001CA8:
	movl      %eax, %edi
.L00001CAA:
	movl      8(%ebp), %ecx
	addl      56(%ecx), %edx
	pushl     %esi
	pushl     %edi
	pushl     $0
	pushl     %edx
	call      memset@PLT
.L00001CBA:
	movl      8(%ebp), %esi
	addl      $16, %esp
	addl      %edi, 5824(%esi)
	jmp       .L00001C86
.L00001CC8:
	movl      %edi, -44(%ebp)
	jmp       .L00001C18
.L00001CD0:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %esi
	movl      %esi, -44(%ebp)
	jmp       .L00001C18
.L00001CDE:
	subl      %esi, %edx
	movl      %edx, 4(%edi)
	pushl     %eax
	pushl     %esi
	pushl     (%edi)
	pushl     -24(%ebp)
	call      memcpy@PLT
.L00001CEF:
	movl      28(%edi), %edx
	movl      24(%edx), %eax
	addl      $16, %esp
	cmpl      $1, %eax
	je        .L00001D2C
.L00001CFD:
	cmpl      $2, %eax
	je        .L00001D17
.L00001D02:
	addl      %esi, (%edi)
	addl      %esi, 8(%edi)
	movl      %esi, %eax
	movl      8(%ebp), %esi
	movl      116(%esi), %ecx
	movl      %ecx, -44(%ebp)
	jmp       .L00001B44
.L00001D17:
	pushl     %eax
	pushl     %esi
	pushl     -24(%ebp)
	pushl     48(%edi)
	call      crc32@PLT
.L00001D24:
	addl      $16, %esp
	movl      %eax, 48(%edi)
	jmp       .L00001D02
.L00001D2C:
	pushl     %eax
	pushl     %esi
	pushl     -24(%ebp)
	pushl     48(%edi)
	call      adler32@PLT
.L00001D39:
	jmp       .L00001D24
.L00001D3B:
	movl      56(%ecx), %esi
	pushl     %ecx
	leal      (%edi,%esi), %edx
	pushl     %edi
	pushl     %edx
	pushl     %esi
	call      memcpy@PLT
.L00001D4A:
	movl      8(%ebp), %esi
	subl      %edi, 112(%esi)
	subl      %edi, 108(%esi)
	subl      %edi, 92(%esi)
	movl      76(%esi), %ecx
	movl      68(%esi), %edi
	movl      %edi, -60(%ebp)
	leal      (%edi,%ecx,2), %edx
	addl      $16, %esp
	.p2align 3
.L00001D68:
	subl      $2, %edx
	movzwl    (%edx), %eax
	xorl      %esi, %esi
	cmpl      -20(%ebp), %eax
	jb        .L00001D7B
.L00001D75:
	movl      %eax, %esi
	subw      -20(%ebp), %si
.L00001D7B:
	decl      %ecx
	movw      %si, (%edx)
	jne       .L00001D68
.L00001D81:
	movl      8(%ebp), %esi
	movl      -20(%ebp), %ecx
	movl      64(%esi), %eax
	leal      (%eax,%ecx,2), %edx
	.p2align 3
.L00001D90:
	subl      $2, %edx
	movzwl    (%edx), %eax
	xorl      %esi, %esi
	cmpl      -20(%ebp), %eax
	jb        .L00001DA3
.L00001D9D:
	movl      %eax, %esi
	subw      -20(%ebp), %si
.L00001DA3:
	decl      %ecx
	movw      %si, (%edx)
	jne       .L00001D90
.L00001DA9:
	movl      -20(%ebp), %ecx
	addl      %ecx, -16(%ebp)
	jmp       .L00001B0C
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
	subl      $28, %esp
	movl      8(%ebp), %ecx
	movl      12(%ecx), %eax
	movl      $65535, -16(%ebp)
	subl      $5, %eax
	call      .L00001DD2
.L00001DD2:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	cmpl      %eax, -16(%ebp)
	jbe       .L00001DE4
.L00001DDE:
	movl      %eax, -16(%ebp)
	.p2align 2
.L00001DE4:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %edx
	cmpl      $1, %edx
	jbe       .L00001F70
.L00001DF3:
	movl      8(%ebp), %esi
	movl      108(%esi), %eax
	addl      %edx, %eax
	movl      92(%esi), %ecx
	movl      -16(%ebp), %edi
	testl     %eax, %eax
	movl      %eax, 108(%esi)
	movl      $0, 116(%esi)
	leal      (%edi,%ecx), %edx
	je        .L00001E16
.L00001E12:
	cmpl      %edx, %eax
	jb        .L00001E7C
.L00001E16:
	subl      %edx, %eax
	movl      8(%ebp), %esi
	movl      %eax, 116(%esi)
	movl      %edx, 108(%esi)
	xorl      %eax, %eax
	subl      %ecx, %edx
	pushl     $0
	testl     %ecx, %ecx
	pushl     %edx
	js        .L00001E31
.L00001E2C:
	movl      56(%esi), %eax
	addl      %ecx, %eax
.L00001E31:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001E3A:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %eax
	movl      %eax, (%esp)
	movl      %eax, -20(%ebp)
	call      _tr_flush_bits
.L00001E53:
	movl      -20(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00001E65
.L00001E63:
	movl      %eax, %esi
.L00001E65:
	testl     %esi, %esi
	jne       .L00001F30
.L00001E6D:
	movl      8(%ebp), %esi
	movl      (%esi), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L00001EED
.L00001E79:
	movl      92(%esi), %ecx
.L00001E7C:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      %edi, %esi
	movl      44(%edi), %edi
	subl      %ecx, %edx
	subl      $262, %edi
	cmpl      %edi, %edx
	jb        .L00001DE4
.L00001E97:
	pushl     $0
	xorl      %eax, %eax
	testl     %ecx, %ecx
	pushl     %edx
	js        .L00001EA5
.L00001EA0:
	movl      56(%esi), %eax
	addl      %ecx, %eax
.L00001EA5:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001EAE:
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	movl      108(%esi), %edx
	movl      28(%edi), %eax
	movl      %edx, 92(%esi)
	movl      %eax, -24(%ebp)
	movl      %eax, (%esp)
	call      _tr_flush_bits
.L00001EC7:
	movl      -24(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00001ED9
.L00001ED7:
	movl      %eax, %esi
.L00001ED9:
	testl     %esi, %esi
	jne       .L00001EF7
.L00001EDD:
	movl      8(%ebp), %eax
	movl      (%eax), %edi
	movl      16(%edi), %edx
	testl     %edx, %edx
	jne       .L00001DE4
.L00001EED:
	xorl      %eax, %eax
.L00001EEF:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00001EF7:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
.L00001F07:
	movl      -24(%ebp), %ecx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 20(%edi)
	movl      20(%ecx), %edi
	subl      %esi, %edi
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	testl     %edi, %edi
	movl      %edi, 20(%ecx)
	jne       .L00001EDD
.L00001F25:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00001EDD
.L00001F2D:
	.p2align 3
.L00001F30:
	pushl     %edx
	pushl     %esi
	movl      -20(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
.L00001F40:
	movl      -20(%ebp), %ecx
	subl      %esi, 16(%edi)
	movl      20(%ecx), %edx
	addl      %esi, 12(%edi)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%edi)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00001E6D
.L00001F62:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00001E6D
.L00001F6D:
	.p2align 3
.L00001F70:
	subl      $12, %esp
	pushl     %ecx
	call      fill_window
.L00001F79:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	testl     %edx, %edx
	jne       .L00001DF3
.L00001F8A:
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L00001EEF
.L00001F97:
	testl     %edx, %edx
	jne       .L00001DF3
.L00001F9F:
	movl      8(%ebp), %eax
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%eax)
	je        .L0000205B
.L00001FB6:
	movl      8(%ebp), %esi
	movl      108(%esi), %eax
	movl      92(%esi), %edx
	cmpl      %edx, %eax
	jle       .L0000201B
.L00001FC3:
	subl      %edx, %eax
	pushl     $0
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L00001FD3
.L00001FCE:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L00001FD3:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00001FDC:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -32(%ebp)
	call      _tr_flush_bits
.L00001FF5:
	movl      -32(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002007
.L00002005:
	movl      %eax, %esi
.L00002007:
	testl     %esi, %esi
	jne       .L00002025
.L0000200B:
	movl      8(%ebp), %edx
	movl      (%edx), %edi
	movl      16(%edi), %ecx
	testl     %ecx, %ecx
	je        .L00001EED
.L0000201B:
	movl      $1, %eax
	jmp       .L00001EEF
.L00002025:
	pushl     %eax
	pushl     %esi
	movl      -32(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
.L00002035:
	movl      -32(%ebp), %ecx
	subl      %esi, 16(%edi)
	movl      20(%ecx), %edx
	addl      %esi, 12(%edi)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%edi)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L0000200B
.L00002053:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L0000200B
.L0000205B:
	pushl     $1
	movl      92(%eax), %edx
	movl      108(%eax), %esi
	subl      %edx, %esi
	movl      %eax, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L00002073
.L0000206E:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L00002073:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0000207C:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %esi
	movl      (%ecx), %edi
	movl      %esi, 92(%ecx)
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -28(%ebp)
	call      _tr_flush_bits
.L00002095:
	movl      -28(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L000020A7
.L000020A5:
	movl      %eax, %esi
.L000020A7:
	testl     %esi, %esi
	jne       .L000020C3
.L000020AB:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L00001EEF
.L000020C3:
	pushl     %eax
	pushl     %esi
	movl      -28(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
.L000020D3:
	movl      -28(%ebp), %ecx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 20(%edi)
	movl      20(%ecx), %edi
	subl      %esi, %edi
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	testl     %edi, %edi
	movl      %edi, 20(%ecx)
	jne       .L000020AB
.L000020F1:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L000020AB
	.size	deflate_stored, .-deflate_stored
# ----------------------
.L000020F9:
	.p2align 2
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
	call      .L0000210A
.L0000210A:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	.p2align 2
.L00002114:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	cmpl      $261, %edx
	jbe       .L00002430
.L00002126:
	xorl      %ecx, %ecx
	cmpl      $2, %edx
	jbe       .L0000216B
.L0000212D:
	movl      8(%ebp), %esi
	movl      72(%esi), %edx
	movl      88(%esi), %ecx
	movl      56(%esi), %eax
	sall      %cl, %edx
	movl      108(%esi), %ecx
	movzbl    2(%ecx,%eax), %edi
	xorl      %edi, %edx
	movl      %esi, %edi
	andl      84(%esi), %edx
	movl      68(%edi), %edi
	movzwl    (%edi,%edx,2), %eax
	andl      52(%esi), %ecx
	movl      %edx, 72(%esi)
	movl      64(%esi), %esi
	movw      %ax, (%esi,%ecx,2)
	movl      8(%ebp), %esi
	movl      %eax, %ecx
	movw      108(%esi), %ax
	movw      %ax, (%edi,%edx,2)
.L0000216B:
	testl     %ecx, %ecx
	je        .L00002188
.L0000216F:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      44(%edi), %esi
	subl      %ecx, %edx
	subl      $262, %esi
	cmpl      %esi, %edx
	jbe       .L00002418
.L00002188:
	movl      8(%ebp), %eax
	cmpl      $2, 96(%eax)
	jbe       .L000023B8
.L00002195:
	movw      108(%eax), %si
	subw      112(%eax), %si
	movl      5792(%eax), %ecx
	movb      96(%eax), %dl
	movl      %eax, %edi
	movl      5796(%eax), %eax
	movw      %si, (%eax,%ecx,2)
	subl      $3, %edx
	movl      5784(%edi), %eax
	movb      %dl, (%ecx,%eax)
	movzbl    %dl, %eax
	incl      5792(%edi)
	decl      %esi
	movzbl    _length_code@GOTOFF(%eax,%ebx), %ecx
	incw      1176(%edi,%ecx,4)
	cmpw      $255, %si
	ja        .L000023A4
.L000021E3:
	movzwl    %si, %edi
	movzbl    _dist_code@GOTOFF(%edi,%ebx), %eax
.L000021EE:
	movl      8(%ebp), %esi
	leal      2432(,%eax,4), %edx
	incw      8(%edx,%esi)
	movl      5788(%esi), %edi
	decl      %edi
	cmpl      %edi, 5792(%esi)
	sete      %cl
	movzbl    %cl, %esi
	movl      8(%ebp), %ecx
	movl      116(%ecx), %edx
	movl      96(%ecx), %eax
	subl      %eax, %edx
	cmpl      128(%ecx), %eax
	movl      %esi, -16(%ebp)
	movl      %edx, 116(%ecx)
	ja        .L00002370
.L0000222D:
	cmpl      $2, %edx
	jbe       .L00002370
.L00002236:
	decl      %eax
	movl      88(%ecx), %edi
	movl      %eax, 96(%ecx)
	movl      56(%ecx), %eax
	movl      %edi, -36(%ebp)
	movl      %eax, -44(%ebp)
	movl      64(%ecx), %edi
	movl      84(%ecx), %edx
	movl      52(%ecx), %esi
	movl      8(%ebp), %eax
	movl      %edi, -48(%ebp)
	movl      %edx, -32(%ebp)
	movl      %esi, -40(%ebp)
	movl      68(%eax), %edi
	.p2align 3
.L00002260:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edx
	movl      %edx, -60(%ebp)
	incl      %edx
	movl      %edx, -52(%ebp)
	movl      8(%ebp), %esi
	movl      %edx, 108(%esi)
	movl      72(%esi), %eax
	movl      -52(%ebp), %edx
	movb      -36(%ebp), %cl
	movl      -44(%ebp), %esi
	sall      %cl, %eax
	movzbl    2(%edx,%esi), %ecx
	xorl      %ecx, %eax
	movl      -40(%ebp), %esi
	andl      -32(%ebp), %eax
	movl      8(%ebp), %ecx
	andl      %esi, -52(%ebp)
	movl      -52(%ebp), %esi
	movl      %eax, 72(%ecx)
	movl      -48(%ebp), %edx
	movw      (%edi,%eax,2), %cx
	movw      %cx, (%edx,%esi,2)
	movl      8(%ebp), %esi
	movw      108(%esi), %cx
	movw      %cx, (%edi,%eax,2)
	movl      96(%esi), %ecx
	decl      %ecx
	testl     %ecx, %ecx
	movl      %ecx, 96(%esi)
	jne       .L00002260
.L000022BB:
	movl      -60(%ebp), %edi
	addl      $2, %edi
	movl      %edi, 108(%esi)
.L000022C4:
	movl      -16(%ebp), %esi
	testl     %esi, %esi
	je        .L00002114
.L000022CF:
	pushl     $0
	movl      8(%ebp), %edi
	movl      92(%edi), %edx
	movl      108(%edi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L000022E8
.L000022E3:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L000022E8:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L000022F1:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %eax
	movl      %eax, (%esp)
	movl      %eax, -20(%ebp)
	call      _tr_flush_bits
.L0000230A:
	movl      -20(%ebp), %edx
	movl      20(%edx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0000231C
.L0000231A:
	movl      %eax, %esi
.L0000231C:
	testl     %esi, %esi
	jne       .L0000233A
.L00002320:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	jne       .L00002114
.L00002330:
	xorl      %eax, %eax
.L00002332:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0000233A:
	pushl     %eax
	pushl     %esi
	movl      -20(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
.L0000234A:
	movl      -20(%ebp), %ecx
	subl      %esi, 16(%edi)
	movl      20(%ecx), %edx
	addl      %esi, 12(%edi)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%edi)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00002320
.L00002368:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00002320
.L00002370:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	addl      %eax, %edx
	movl      %edx, 108(%edi)
	movl      $0, 96(%edi)
	movl      56(%edi), %esi
	movzbl    (%edx,%esi), %eax
	movl      %eax, 72(%edi)
	movl      88(%edi), %ecx
	sall      %cl, %eax
	movzbl    1(%edx,%esi), %ecx
	xorl      %ecx, %eax
	andl      84(%edi), %eax
	movl      %eax, 72(%edi)
	jmp       .L000022C4
.L000023A3:
	.p2align 2
.L000023A4:
	shrw      $7, %si
	movzwl    %si, %edx
	movzbl    _dist_code@GOTOFF+256(%edx,%ebx), %eax
	jmp       .L000021EE
.L000023B8:
	movl      8(%ebp), %edx
	movl      108(%edx), %ecx
	movl      56(%edx), %edi
	movl      %edx, %esi
	movb      (%ecx,%edi), %dl
	movl      %esi, %edi
	movl      5796(%edi), %ecx
	movl      5792(%esi), %esi
	movw      $0, (%ecx,%esi,2)
	movl      5784(%edi), %ecx
	movb      %dl, (%esi,%ecx)
	incl      5792(%edi)
	movzbl    %dl, %eax
	incw      148(%edi,%eax,4)
	movl      5788(%edi), %ecx
	decl      %ecx
	cmpl      %ecx, 5792(%edi)
	sete      %dl
	movzbl    %dl, %esi
	movl      %esi, -16(%ebp)
	decl      116(%edi)
	incl      108(%edi)
	jmp       .L000022C4
.L00002415:
	.p2align 3
.L00002418:
	subl      $8, %esp
	pushl     %ecx
	pushl     %edi
	call      longest_match
.L00002422:
	movl      %eax, 96(%edi)
	addl      $16, %esp
	jmp       .L00002188
.L0000242D:
	.p2align 3
.L00002430:
	subl      $12, %esp
	pushl     %eax
	call      fill_window
.L00002439:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	cmpl      $261, %edx
	ja        .L00002457
.L0000244A:
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L00002332
.L00002457:
	testl     %edx, %edx
	jne       .L00002126
.L0000245F:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %eax
	cmpl      $2, %eax
	movl      %eax, %edx
	jbe       .L00002471
.L0000246C:
	movl      $2, %edx
.L00002471:
	movl      8(%ebp), %ecx
	cmpl      $4, 12(%ebp)
	movl      %edx, 5812(%ecx)
	je        .L0000252C
.L00002484:
	movl      8(%ebp), %esi
	movl      5792(%esi), %ecx
	testl     %ecx, %ecx
	je        .L000024EC
.L00002491:
	pushl     $0
	movl      92(%esi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L000024A4
.L0000249F:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L000024A4:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L000024AD:
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      %edi, 92(%edx)
	movl      (%edx), %edi
	movl      28(%edi), %esi
	movl      %esi, (%esp)
	movl      %esi, -28(%ebp)
	call      _tr_flush_bits
.L000024C6:
	movl      -28(%ebp), %edx
	movl      20(%edx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L000024D8
.L000024D6:
	movl      %eax, %esi
.L000024D8:
	testl     %esi, %esi
	jne       .L000024F6
.L000024DC:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L00002330
.L000024EC:
	movl      $1, %eax
	jmp       .L00002332
.L000024F6:
	pushl     %eax
	pushl     %esi
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy@PLT
.L00002506:
	movl      -28(%ebp), %edx
	subl      %esi, 16(%edi)
	movl      20(%edx), %ecx
	addl      %esi, 12(%edi)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L000024DC
.L00002524:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L000024DC
.L0000252C:
	pushl     $1
	movl      92(%ecx), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0000253F
.L0000253A:
	movl      56(%ecx), %eax
	addl      %edx, %eax
.L0000253F:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00002548:
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      %edi, 92(%edx)
	movl      (%edx), %edi
	movl      28(%edi), %esi
	movl      %esi, (%esp)
	movl      %esi, -24(%ebp)
	call      _tr_flush_bits
.L00002561:
	movl      -24(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002573
.L00002571:
	movl      %eax, %esi
.L00002573:
	testl     %esi, %esi
	jne       .L0000258F
.L00002577:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L00002332
.L0000258F:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
.L0000259F:
	movl      -24(%ebp), %ecx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 16(%ecx)
	movl      %ecx, %edx
	movl      20(%ecx), %ecx
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002577
.L000025BF:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002577
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L000025C7:
	.p2align 3
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	call      .L000025D6
.L000025D6:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	.p2align 3
.L000025E0:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	cmpl      $261, %edx
	jbe       .L000029D8
.L000025F2:
	xorl      %ecx, %ecx
	cmpl      $2, %edx
	jbe       .L000029C8
.L000025FD:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      72(%esi), %edx
	movl      88(%esi), %ecx
	movl      56(%esi), %eax
	movl      %edi, -40(%ebp)
	sall      %cl, %edx
	movzbl    2(%edi,%eax), %ecx
	xorl      %ecx, %edx
	andl      84(%esi), %edx
	andl      52(%esi), %edi
	movl      64(%esi), %ecx
	movl      %edx, 72(%esi)
	movl      68(%esi), %esi
	movzwl    (%esi,%edx,2), %eax
	movw      %ax, (%ecx,%edi,2)
	movl      8(%ebp), %edi
	movl      %eax, %ecx
	movw      108(%edi), %ax
	movw      %ax, (%esi,%edx,2)
.L0000263C:
	movl      8(%ebp), %esi
	movl      96(%esi), %edx
	movl      112(%esi), %edi
	testl     %ecx, %ecx
	movl      %edx, 120(%esi)
	movl      %edi, 100(%esi)
	movl      $2, 96(%esi)
	je        .L00002674
.L00002656:
	cmpl      128(%esi), %edx
	jae       .L00002674
.L0000265E:
	movl      -40(%ebp), %eax
	movl      44(%esi), %edi
	subl      %ecx, %eax
	subl      $262, %edi
	cmpl      %edi, %eax
	jbe       .L00002958
.L00002674:
	movl      8(%ebp), %edi
	movl      120(%edi), %eax
	cmpl      $2, %eax
	jbe       .L00002688
.L0000267F:
	cmpl      %eax, 96(%edi)
	jbe       .L00002798
.L00002688:
	movl      8(%ebp), %edi
	movl      104(%edi), %eax
	testl     %eax, %eax
	jne       .L000026AB
.L00002692:
	movl      -40(%ebp), %esi
	movl      8(%ebp), %ecx
	incl      %esi
	movl      $1, 104(%ecx)
	movl      %esi, 108(%ecx)
	decl      116(%ecx)
	jmp       .L000025E0
.L000026AB:
	movl      56(%edi), %edx
	addl      %edx, -40(%ebp)
	movl      5792(%edi), %esi
	movl      5796(%edi), %ecx
	movl      -40(%ebp), %eax
	movb      -1(%eax), %dl
	movw      $0, (%ecx,%esi,2)
	movl      5784(%edi), %ecx
	movb      %dl, (%esi,%ecx)
	incl      5792(%edi)
	movzbl    %dl, %ecx
	incw      148(%edi,%ecx,4)
	movl      5788(%edi), %edx
	decl      %edx
	cmpl      %edx, 5792(%edi)
	jne       .L00002740
.L000026F2:
	pushl     $0
	movl      92(%edi), %edx
	movl      108(%edi), %esi
	subl      %edx, %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L00002708
.L00002703:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L00002708:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L00002711:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edi
	movl      %edi, 92(%ecx)
	movl      (%ecx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -28(%ebp)
	call      _tr_flush_bits
.L0000272A:
	movl      -28(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0000273C
.L0000273A:
	movl      %eax, %esi
.L0000273C:
	testl     %esi, %esi
	jne       .L00002760
.L00002740:
	movl      8(%ebp), %edx
	incl      108(%edx)
	decl      116(%edx)
	movl      (%edx), %eax
.L0000274B:
	movl      16(%eax), %edi
	testl     %edi, %edi
	jne       .L000025E0
.L00002756:
	xorl      %eax, %eax
.L00002758:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00002760:
	pushl     %edx
	pushl     %esi
	movl      -28(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
.L00002770:
	movl      -28(%ebp), %ecx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 16(%ecx)
	movl      %ecx, %edx
	movl      20(%ecx), %ecx
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002740
.L00002790:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002740
.L00002798:
	movl      116(%edi), %esi
	addl      %esi, -40(%ebp)
	movw      108(%edi), %dx
	movl      -40(%ebp), %ecx
	subw      100(%edi), %dx
	movl      8(%ebp), %eax
	subl      $3, %ecx
	movl      5792(%eax), %esi
	movl      %ecx, -20(%ebp)
	movl      5796(%eax), %eax
	movb      120(%edi), %cl
	leal      -1(%edx), %edi
	movw      %di, (%eax,%esi,2)
	movl      8(%ebp), %edi
	movl      5784(%edi), %eax
	subl      $3, %ecx
	movb      %cl, (%esi,%eax)
	movzbl    %cl, %eax
	incl      5792(%edi)
	movl      8(%ebp), %esi
	leal      -2(%edx), %edi
	movzbl    _length_code@GOTOFF(%eax,%ebx), %edx
	incw      1176(%esi,%edx,4)
	cmpw      $255, %di
	ja        .L00002944
.L00002801:
	movzwl    %di, %edx
	movzbl    _dist_code@GOTOFF(%edx,%ebx), %eax
.L0000280C:
	movl      8(%ebp), %edi
	leal      2432(,%eax,4), %ecx
	incw      8(%ecx,%edi)
	movl      5788(%edi), %esi
	decl      %esi
	cmpl      %esi, 5792(%edi)
	sete      %dl
	movl      120(%edi), %esi
	movzbl    %dl, %ecx
	movl      116(%edi), %edx
	subl      %esi, %edx
	incl      %edx
	subl      $2, %esi
	movl      %ecx, -16(%ebp)
	movl      %edx, 116(%edi)
	movl      %esi, 120(%edi)
	.p2align 2
.L00002844:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	incl      %edi
	cmpl      -20(%ebp), %edi
	movl      %edi, 108(%esi)
	ja        .L00002889
.L00002853:
	movl      72(%esi), %edx
	movl      88(%esi), %ecx
	movl      56(%esi), %eax
	sall      %cl, %edx
	movzbl    2(%edi,%eax), %ecx
	xorl      %ecx, %edx
	movl      %esi, %eax
	andl      84(%esi), %edx
	movl      68(%eax), %ecx
	andl      52(%esi), %edi
	movw      (%ecx,%edx,2), %ax
	movl      %edx, 72(%esi)
	movl      64(%esi), %esi
	movw      %ax, (%esi,%edi,2)
	movl      8(%ebp), %eax
	movw      108(%eax), %di
	movw      %di, (%ecx,%edx,2)
.L00002889:
	movl      8(%ebp), %edi
	movl      120(%edi), %edx
	decl      %edx
	testl     %edx, %edx
	movl      %edx, 120(%edi)
	jne       .L00002844
.L00002897:
	movl      108(%edi), %eax
	movl      -16(%ebp), %esi
	incl      %eax
	testl     %esi, %esi
	movl      $0, 104(%edi)
	movl      $2, 96(%edi)
	movl      %eax, 108(%edi)
	je        .L000025E0
.L000028B7:
	pushl     $0
	movl      92(%edi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L000028CA
.L000028C5:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L000028CA:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L000028D3:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %eax
	movl      %eax, (%esp)
	movl      %eax, -24(%ebp)
	call      _tr_flush_bits
.L000028EC:
	movl      -24(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L000028FE
.L000028FC:
	movl      %eax, %esi
.L000028FE:
	testl     %esi, %esi
	jne       .L0000290C
.L00002902:
	movl      8(%ebp), %edi
	movl      (%edi), %eax
	jmp       .L0000274B
.L0000290C:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
.L0000291C:
	movl      -24(%ebp), %ecx
	subl      %esi, 16(%edi)
	movl      20(%ecx), %edx
	addl      %esi, 12(%edi)
	subl      %esi, %edx
	addl      $16, %esp
	addl      %esi, 16(%ecx)
	addl      %esi, 20(%edi)
	testl     %edx, %edx
	movl      %edx, 20(%ecx)
	jne       .L00002902
.L0000293A:
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L00002902
.L00002942:
	.p2align 2
.L00002944:
	shrw      $7, %di
	movzwl    %di, %ecx
	movzbl    _dist_code@GOTOFF+256(%ecx,%ebx), %eax
	jmp       .L0000280C
.L00002958:
	subl      $8, %esp
	pushl     %ecx
	pushl     %esi
	call      longest_match
.L00002962:
	addl      $16, %esp
	cmpl      $5, %eax
	movl      %eax, 96(%esi)
	ja        .L000029BA
.L0000296D:
	cmpl      $1, 136(%esi)
	je        .L000029AF
.L00002976:
	cmpl      $3, %eax
	je        .L00002989
.L0000297B:
	movl      8(%ebp), %edi
	movl      108(%edi), %ecx
	movl      %ecx, -40(%ebp)
	jmp       .L00002674
.L00002989:
	movl      108(%esi), %edx
	movl      %edx, %ecx
	subl      112(%esi), %ecx
	cmpl      $4096, %ecx
	movl      %edx, -40(%ebp)
	jbe       .L00002674
.L000029A0:
	movl      8(%ebp), %eax
	movl      $2, 96(%eax)
	jmp       .L00002674
.L000029AF:
	movl      8(%ebp), %edi
	movl      108(%edi), %esi
	movl      %esi, -40(%ebp)
	jmp       .L000029A0
.L000029BA:
	movl      8(%ebp), %esi
	movl      108(%esi), %edx
	movl      %edx, -40(%ebp)
	jmp       .L00002674
.L000029C8:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      %edx, -40(%ebp)
	jmp       .L0000263C
.L000029D6:
	.p2align 3
.L000029D8:
	subl      $12, %esp
	pushl     %eax
	call      fill_window
.L000029E1:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	cmpl      $261, %edx
	ja        .L000029FF
.L000029F2:
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L00002758
.L000029FF:
	testl     %edx, %edx
	jne       .L000025F2
.L00002A07:
	movl      8(%ebp), %edi
	movl      104(%edi), %edx
	testl     %edx, %edx
	je        .L00002A4D
.L00002A11:
	movl      108(%edi), %esi
	addl      56(%edi), %esi
	movb      -1(%esi), %dl
	movl      5796(%edi), %ecx
	movl      5792(%edi), %esi
	movw      $0, (%ecx,%esi,2)
	movl      5784(%edi), %ecx
	movb      %dl, (%esi,%ecx)
	incl      5792(%edi)
	movzbl    %dl, %eax
	incw      148(%edi,%eax,4)
	movl      $0, 104(%edi)
.L00002A4D:
	movl      8(%ebp), %edi
	movl      108(%edi), %eax
	cmpl      $2, %eax
	movl      %eax, -40(%ebp)
	jbe       .L00002A60
.L00002A5B:
	movl      $2, %eax
.L00002A60:
	movl      8(%ebp), %edx
	cmpl      $4, 12(%ebp)
	movl      %eax, 5812(%edx)
	je        .L00002B1E
.L00002A73:
	movl      8(%ebp), %esi
	movl      5792(%esi), %ecx
	testl     %ecx, %ecx
	je        .L00002ADE
.L00002A80:
	pushl     $0
	movl      92(%esi), %eax
	subl      %eax, -40(%ebp)
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     -40(%ebp)
	js        .L00002A96
.L00002A91:
	movl      56(%esi), %edx
	addl      %eax, %edx
.L00002A96:
	pushl     %edx
	pushl     8(%ebp)
	call      _tr_flush_block
.L00002A9F:
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      %edi, 92(%edx)
	movl      (%edx), %edi
	movl      28(%edi), %esi
	movl      %esi, (%esp)
	movl      %esi, -36(%ebp)
	call      _tr_flush_bits
.L00002AB8:
	movl      -36(%ebp), %edx
	movl      20(%edx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002ACA
.L00002AC8:
	movl      %eax, %esi
.L00002ACA:
	testl     %esi, %esi
	jne       .L00002AE8
.L00002ACE:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L00002756
.L00002ADE:
	movl      $1, %eax
	jmp       .L00002758
.L00002AE8:
	pushl     %eax
	pushl     %esi
	movl      -36(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy@PLT
.L00002AF8:
	movl      -36(%ebp), %edx
	subl      %esi, 16(%edi)
	movl      20(%edx), %ecx
	addl      %esi, 12(%edi)
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002ACE
.L00002B16:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002ACE
.L00002B1E:
	pushl     $1
	movl      92(%edx), %eax
	subl      %eax, -40(%ebp)
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     -40(%ebp)
	js        .L00002B37
.L00002B2F:
	movl      8(%ebp), %esi
	movl      56(%esi), %edx
	addl      %eax, %edx
.L00002B37:
	pushl     %edx
	pushl     8(%ebp)
	call      _tr_flush_block
.L00002B40:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edi
	movl      %edi, 92(%ecx)
	movl      (%ecx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -32(%ebp)
	call      _tr_flush_bits
.L00002B59:
	movl      -32(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L00002B6B
.L00002B69:
	movl      %eax, %esi
.L00002B6B:
	testl     %esi, %esi
	jne       .L00002B87
.L00002B6F:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L00002758
.L00002B87:
	pushl     %eax
	pushl     %esi
	movl      -32(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
.L00002B97:
	movl      -32(%ebp), %ecx
	subl      %esi, 16(%edi)
	addl      %esi, 12(%edi)
	addl      %esi, 16(%ecx)
	movl      %ecx, %edx
	movl      20(%ecx), %ecx
	subl      %esi, %ecx
	addl      $16, %esp
	addl      %esi, 20(%edi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002B6F
.L00002BB7:
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L00002B6F
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L00002BBF:
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
	subl      $28, %esp
	call      .L00002BCE
.L00002BCE:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	movl      8(%ebp), %esi
.L00002BD8:
	movl      116(%esi), %edx
	cmpl      $258, %edx
	jbe       .L00002E10
.L00002BE7:
	cmpl      $2, %edx
	movl      $0, 96(%esi)
	jbe       .L00002C14
.L00002BF3:
	movl      108(%esi), %eax
	testl     %eax, %eax
	je        .L00002C14
.L00002BFA:
	movl      56(%esi), %edi
	addl      %eax, %edi
	movzbl    -1(%edi), %ecx
	movl      %ecx, -16(%ebp)
	movzbl    (%edi), %eax
	cmpl      %eax, -16(%ebp)
	movl      %edi, %ecx
	je        .L00002D86
.L00002C14:
	cmpl      $2, 96(%esi)
	jbe       .L00002D34
.L00002C1E:
	movl      5792(%esi), %edi
	movb      96(%esi), %dl
	movl      5796(%esi), %ecx
	movw      $1, (%ecx,%edi,2)
	subl      $3, %edx
	movl      5784(%esi), %ecx
	movb      %dl, (%edi,%ecx)
	movzbl    %dl, %eax
	incl      5792(%esi)
	movzbl    _length_code@GOTOFF(%eax,%ebx), %edi
	incw      1176(%esi,%edi,4)
	movzbl    _dist_code@GOTOFF(%ebx), %edx
	incw      2440(%esi,%edx,4)
	movl      5788(%esi), %ecx
	decl      %ecx
	movl      96(%esi), %edi
	xorl      %edx, %edx
	cmpl      %ecx, 5792(%esi)
	sete      %dl
	movl      $0, 96(%esi)
	subl      %edi, 116(%esi)
	addl      %edi, 108(%esi)
.L00002C89:
	testl     %edx, %edx
	je        .L00002BD8
.L00002C91:
	pushl     $0
	movl      92(%esi), %edx
	movl      108(%esi), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L00002CA7
.L00002CA2:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L00002CA7:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
.L00002CAE:
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -20(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -24(%ebp)
	call      _tr_flush_bits
.L00002CC7:
	movl      -24(%ebp), %eax
	movl      -20(%ebp), %ecx
	movl      20(%eax), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L00002CDC
.L00002CDA:
	movl      %eax, %edi
.L00002CDC:
	testl     %edi, %edi
	jne       .L00002CF7
.L00002CE0:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L00002BD8
.L00002CED:
	xorl      %eax, %eax
.L00002CEF:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00002CF7:
	pushl     %eax
	pushl     %edi
	movl      -24(%ebp), %edx
	pushl     16(%edx)
	movl      -20(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L00002D0A:
	movl      -20(%ebp), %ecx
	movl      -24(%ebp), %edx
	subl      %edi, 16(%ecx)
	addl      %edi, 12(%ecx)
	addl      %edi, 20(%ecx)
	movl      20(%edx), %ecx
	subl      %edi, %ecx
	addl      $16, %esp
	addl      %edi, 16(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002CE0
.L00002D2B:
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L00002CE0
.L00002D33:
	.p2align 2
.L00002D34:
	movl      108(%esi), %ecx
	movl      56(%esi), %edi
	movb      (%ecx,%edi), %dl
	movl      5792(%esi), %edi
	movl      5796(%esi), %ecx
	movw      $0, (%ecx,%edi,2)
	movl      5784(%esi), %ecx
	movb      %dl, (%edi,%ecx)
	incl      5792(%esi)
	movzbl    %dl, %eax
	incw      148(%esi,%eax,4)
	movl      5788(%esi), %edi
	decl      %edi
	xorl      %edx, %edx
	cmpl      %edi, 5792(%esi)
	sete      %dl
	decl      116(%esi)
	incl      108(%esi)
	jmp       .L00002C89
.L00002D86:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002C14
.L00002D93:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002C14
.L00002DA0:
	addl      $258, %edi
.L00002DA6:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DAF:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DB8:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DC1:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DCA:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DD3:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DDC:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DE5:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L00002DF2
.L00002DEE:
	cmpl      %edi, %ecx
	jb        .L00002DA6
.L00002DF2:
	subl      %ecx, %edi
	movl      $258, %ecx
	subl      %edi, %ecx
	cmpl      %edx, %ecx
	movl      %ecx, 96(%esi)
	jbe       .L00002C14
.L00002E06:
	movl      %edx, 96(%esi)
	jmp       .L00002C14
.L00002E0E:
	.p2align 3
.L00002E10:
	subl      $12, %esp
	pushl     %esi
	call      fill_window
.L00002E19:
	movl      116(%esi), %edx
	addl      $16, %esp
	cmpl      $258, %edx
	ja        .L00002E34
.L00002E27:
	movl      12(%ebp), %edi
	xorl      %eax, %eax
	testl     %edi, %edi
	je        .L00002CEF
.L00002E34:
	testl     %edx, %edx
	jne       .L00002BE7
.L00002E3C:
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%esi)
	je        .L00002EFC
.L00002E50:
	movl      5792(%esi), %edi
	testl     %edi, %edi
	je        .L00002EB6
.L00002E5A:
	pushl     $0
	movl      92(%esi), %edx
	movl      108(%esi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L00002E70
.L00002E6B:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L00002E70:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
.L00002E77:
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -36(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -40(%ebp)
	call      _tr_flush_bits
.L00002E90:
	movl      -40(%ebp), %edx
	movl      -36(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L00002EA5
.L00002EA3:
	movl      %eax, %edi
.L00002EA5:
	testl     %edi, %edi
	jne       .L00002EC0
.L00002EA9:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	je        .L00002CED
.L00002EB6:
	movl      $1, %eax
	jmp       .L00002CEF
.L00002EC0:
	pushl     %eax
	pushl     %edi
	movl      -40(%ebp), %edx
	pushl     16(%edx)
	movl      -36(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L00002ED3:
	movl      -36(%ebp), %ecx
	movl      -40(%ebp), %edx
	subl      %edi, 16(%ecx)
	addl      %edi, 12(%ecx)
	addl      %edi, 20(%ecx)
	movl      20(%edx), %ecx
	subl      %edi, %ecx
	addl      $16, %esp
	addl      %edi, 16(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002EA9
.L00002EF4:
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L00002EA9
.L00002EFC:
	pushl     $1
	movl      92(%esi), %edx
	movl      108(%esi), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L00002F12
.L00002F0D:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L00002F12:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
.L00002F19:
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -28(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -32(%ebp)
	call      _tr_flush_bits
.L00002F32:
	movl      -32(%ebp), %edx
	movl      -28(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L00002F47
.L00002F45:
	movl      %eax, %edi
.L00002F47:
	testl     %edi, %edi
	jne       .L00002F60
.L00002F4B:
	movl      (%esi), %edx
	movl      16(%edx), %esi
	testl     %esi, %esi
	setne     %cl
	movzbl    %cl, %eax
	addl      $2, %eax
	jmp       .L00002CEF
.L00002F60:
	pushl     %eax
	pushl     %edi
	movl      -32(%ebp), %edx
	pushl     16(%edx)
	movl      -28(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L00002F73:
	movl      -28(%ebp), %ecx
	movl      -32(%ebp), %edx
	subl      %edi, 16(%ecx)
	addl      %edi, 12(%ecx)
	addl      %edi, 20(%ecx)
	movl      20(%edx), %ecx
	subl      %edi, %ecx
	addl      $16, %esp
	addl      %edi, 16(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00002F4B
.L00002F94:
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L00002F4B
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
	subl      $28, %esp
	call      .L00002FAA
.L00002FAA:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	movl      8(%ebp), %esi
.L00002FB4:
	movl      116(%esi), %eax
	testl     %eax, %eax
	je        .L000030B8
.L00002FBF:
	movl      108(%esi), %ecx
	movl      56(%esi), %edi
	movl      $0, 96(%esi)
	movb      (%ecx,%edi), %dl
	movl      5792(%esi), %edi
	movl      5796(%esi), %ecx
	movw      $0, (%ecx,%edi,2)
	movl      5784(%esi), %ecx
	movb      %dl, (%edi,%ecx)
	incl      5792(%esi)
	movzbl    %dl, %edi
	incw      148(%esi,%edi,4)
	movl      5788(%esi), %edx
	decl      %edx
	cmpl      %edx, 5792(%esi)
	sete      %al
	movl      108(%esi), %edx
	incl      %edx
	decl      116(%esi)
	testb     $1, %al
	movl      %edx, 108(%esi)
	je        .L00002FB4
.L00003019:
	pushl     $0
	movl      92(%esi), %eax
	subl      %eax, %edx
	pushl     %edx
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0000302C
.L00003027:
	movl      56(%esi), %edx
	addl      %eax, %edx
.L0000302C:
	pushl     %edx
	pushl     %esi
	call      _tr_flush_block
.L00003033:
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -16(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -20(%ebp)
	call      _tr_flush_bits
.L0000304C:
	movl      -20(%ebp), %edx
	movl      -16(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L00003061
.L0000305F:
	movl      %eax, %edi
.L00003061:
	testl     %edi, %edi
	jne       .L0000307C
.L00003065:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L00002FB4
.L00003072:
	xorl      %eax, %eax
.L00003074:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0000307C:
	pushl     %eax
	pushl     %edi
	movl      -20(%ebp), %edx
	pushl     16(%edx)
	movl      -16(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L0000308F:
	movl      -16(%ebp), %ecx
	movl      -20(%ebp), %edx
	subl      %edi, 16(%ecx)
	addl      %edi, 12(%ecx)
	addl      %edi, 20(%ecx)
	movl      20(%edx), %ecx
	subl      %edi, %ecx
	addl      $16, %esp
	addl      %edi, 16(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00003065
.L000030B0:
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L00003065
.L000030B8:
	subl      $12, %esp
	pushl     %esi
	call      fill_window
.L000030C1:
	movl      116(%esi), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00002FBF
.L000030CF:
	movl      12(%ebp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L00003074
.L000030D8:
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%esi)
	je        .L00003198
.L000030EC:
	movl      5792(%esi), %edi
	testl     %edi, %edi
	je        .L00003152
.L000030F6:
	pushl     $0
	movl      92(%esi), %edx
	movl      108(%esi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L0000310C
.L00003107:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L0000310C:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
.L00003113:
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -32(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -36(%ebp)
	call      _tr_flush_bits
.L0000312C:
	movl      -36(%ebp), %edx
	movl      -32(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L00003141
.L0000313F:
	movl      %eax, %edi
.L00003141:
	testl     %edi, %edi
	jne       .L0000315C
.L00003145:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	je        .L00003072
.L00003152:
	movl      $1, %eax
	jmp       .L00003074
.L0000315C:
	pushl     %eax
	pushl     %edi
	movl      -36(%ebp), %edx
	pushl     16(%edx)
	movl      -32(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L0000316F:
	movl      -32(%ebp), %ecx
	movl      -36(%ebp), %edx
	subl      %edi, 16(%ecx)
	addl      %edi, 12(%ecx)
	addl      %edi, 20(%ecx)
	movl      20(%edx), %ecx
	subl      %edi, %ecx
	addl      $16, %esp
	addl      %edi, 16(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L00003145
.L00003190:
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L00003145
.L00003198:
	pushl     $1
	movl      92(%esi), %edx
	movl      108(%esi), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L000031AE
.L000031A9:
	movl      56(%esi), %eax
	addl      %edx, %eax
.L000031AE:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
.L000031B5:
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -24(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -28(%ebp)
	call      _tr_flush_bits
.L000031CE:
	movl      -28(%ebp), %edx
	movl      -24(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L000031E3
.L000031E1:
	movl      %eax, %edi
.L000031E3:
	testl     %edi, %edi
	jne       .L000031FC
.L000031E7:
	movl      (%esi), %edx
	movl      16(%edx), %esi
	testl     %esi, %esi
	setne     %cl
	movzbl    %cl, %eax
	addl      $2, %eax
	jmp       .L00003074
.L000031FC:
	pushl     %eax
	pushl     %edi
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	movl      -24(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
.L0000320F:
	movl      -24(%ebp), %ecx
	movl      -28(%ebp), %edx
	subl      %edi, 16(%ecx)
	addl      %edi, 12(%ecx)
	addl      %edi, 20(%ecx)
	movl      20(%edx), %ecx
	subl      %edi, %ecx
	addl      $16, %esp
	addl      %edi, 16(%edx)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edx)
	jne       .L000031E7
.L00003230:
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L000031E7
	.size	deflate_huff, .-deflate_huff
# ----------------------
	.local	longest_match
	.type	longest_match, @function
longest_match:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	subl      $40, %esp
	movl      8(%ebp), %esi
	movl      56(%esi), %eax
	movl      8(%ebp), %esi
	movl      %eax, -16(%ebp)
	movl      120(%esi), %eax
	movl      8(%ebp), %edi
	movl      %eax, -20(%ebp)
	movl      144(%esi), %eax
	movl      124(%edi), %edx
	movl      %eax, -24(%ebp)
	movl      8(%ebp), %eax
	movl      %edx, -12(%ebp)
	movl      108(%esi), %edx
	movl      44(%eax), %esi
	movl      -16(%ebp), %edi
	leal      -262(%esi), %eax
	addl      %edx, %edi
	cmpl      %eax, %edx
	movl      12(%ebp), %ecx
	jbe       .L000033C4
.L00003283:
	movl      %edx, %eax
	subl      %esi, %eax
	addl      $262, %eax
	movl      %eax, -28(%ebp)
.L0000328F:
	movl      8(%ebp), %esi
	movl      64(%esi), %eax
	movl      %eax, -32(%ebp)
	movl      8(%ebp), %eax
	movl      52(%eax), %esi
	movl      %esi, -36(%ebp)
	movl      -16(%ebp), %esi
	leal      258(%edx,%esi), %eax
	movl      %eax, -40(%ebp)
	movl      -20(%ebp), %eax
	leal      (%eax,%edi), %esi
	movb      -1(%esi), %al
	movb      %al, -41(%ebp)
	movb      (%esi), %dl
	movb      %dl, -42(%ebp)
	movl      -20(%ebp), %esi
	movl      8(%ebp), %edx
	cmpl      140(%edx), %esi
	jb        .L000032D1
.L000032CD:
	shrl      $2, -12(%ebp)
.L000032D1:
	movl      8(%ebp), %esi
	movl      116(%esi), %edx
	cmpl      %edx, -24(%ebp)
	movl      %edx, -48(%ebp)
	jbe       .L000032E4
.L000032DF:
	movl      %edx, -24(%ebp)
	.p2align 2
.L000032E4:
	movl      -16(%ebp), %edx
	addl      %ecx, %edx
	movb      -42(%ebp), %al
	movl      -20(%ebp), %esi
	cmpb      %al, (%esi,%edx)
	je        .L0000331C
.L000032F4:
	movl      -36(%ebp), %esi
	andl      %ecx, %esi
	movl      -32(%ebp), %edx
	movzwl    (%edx,%esi,2), %ecx
	cmpl      -28(%ebp), %ecx
	jbe       .L0000330A
.L00003305:
	decl      -12(%ebp)
	jne       .L000032E4
.L0000330A:
	movl      -20(%ebp), %eax
	cmpl      -48(%ebp), %eax
	jbe       .L00003315
.L00003312:
	movl      -48(%ebp), %eax
.L00003315:
	addl      $40, %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0000331C:
	movb      -41(%ebp), %al
	cmpb      %al, -1(%esi,%edx)
	jne       .L000032F4
.L00003325:
	movb      (%edi), %al
	cmpb      %al, (%edx)
	jne       .L000032F4
.L0000332B:
	incl      %edx
	movb      1(%edi), %al
	cmpb      %al, (%edx)
	jne       .L000032F4
.L00003333:
	addl      $2, %edi
	incl      %edx
.L00003337:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L0000333F:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L00003347:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L0000334F:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L00003357:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L0000335F:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L00003367:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L0000336F:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L0000337C
.L00003377:
	cmpl      -40(%ebp), %edi
	jb        .L00003337
.L0000337C:
	movl      -40(%ebp), %esi
	subl      %edi, %esi
	movl      $258, %edx
	subl      %esi, %edx
	movl      -40(%ebp), %edi
	subl      $258, %edi
	cmpl      -20(%ebp), %edx
	jle       .L000032F4
.L0000339A:
	movl      -24(%ebp), %esi
	movl      8(%ebp), %eax
	cmpl      %esi, %edx
	movl      %ecx, 112(%eax)
	movl      %edx, -20(%ebp)
	jge       .L0000330A
.L000033AE:
	leal      (%edx,%edi), %esi
	movb      -1(%esi), %al
	movb      %al, -41(%ebp)
	movb      (%esi), %dl
	movb      %dl, -42(%ebp)
	jmp       .L000032F4
.L000033C1:
	.p2align 2
.L000033C4:
	movl      $0, -28(%ebp)
	jmp       .L0000328F
	.size	longest_match, .-longest_match
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
