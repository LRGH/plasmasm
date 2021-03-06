	.file	"deflate.c"
	.section       .rodata
	.align 32
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 68
# ----------------------
	.section       .data.rel.ro.local,"aw",@progbits
	.align 32
	.local	configuration_table
	.type	configuration_table, @object
configuration_table:
	.value	0
	.value	0
	.value	0
	.value	0
	.long	deflate_stored
	.value	4
	.value	4
	.value	8
	.value	4
	.long	deflate_fast
	.value	4
	.value	5
	.value	16
	.value	8
	.long	deflate_fast
	.value	4
	.value	6
	.value	32
	.value	32
	.long	deflate_fast
	.value	4
	.value	4
	.value	16
	.value	16
	.long	deflate_slow
	.value	8
	.value	16
	.value	32
	.value	32
	.long	deflate_slow
	.value	8
	.value	16
	.value	128
	.value	128
	.long	deflate_slow
	.value	8
	.value	32
	.value	128
	.value	256
	.long	deflate_slow
	.value	32
	.value	128
	.value	258
	.value	1024
	.long	deflate_slow
	.value	32
	.value	258
	.value	258
	.value	4096
	.long	deflate_slow
	.size	configuration_table, 120
# ----------------------
	.text
	.p2align 2,,3
# ----------------------
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
	call      .L2
.L2:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L2], %ebx
	pushl     8(%ebp)
	call      deflateInit2_@PLT
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	deflateInit_, .-deflateInit_
# ----------------------
	.section       .rodata
	.local	my_version.0
	.type	my_version.0, @object
my_version.0:
	.string	"1.2.8"
	.size	my_version.0, 6
# ----------------------
	.text
	.p2align 2,,3
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
	call      .L24
.L24:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L24], %ebx
	testl     %eax, %eax
	movl      8(%ebp), %edi
	movl      $1, %esi
	je        .L5
	cmpb      $49, (%eax)
	je        .L19
.L5:
	movl      $-6, %eax
.L3:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L19:
	cmpl      $56, 36(%ebp)
	jne       .L5
	testl     %edi, %edi
	movl      $-2, %eax
	je        .L3
	movl      32(%edi), %edx
	testl     %edx, %edx
	movl      $0, 24(%edi)
	jne       .L7
	leal      zcalloc@GOTOFF(%ebx), %edx
	movl      %edx, 32(%edi)
	movl      $0, 40(%edi)
.L7:
	movl      36(%edi), %ecx
	testl     %ecx, %ecx
	jne       .L8
	leal      zcfree@GOTOFF(%ebx), %edx
	movl      %edx, 36(%edi)
.L8:
	cmpl      $-1, 12(%ebp)
	je        .L20
.L9:
	movl      20(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L21
	cmpl      $15, 20(%ebp)
	jle       .L11
	movl      $2, %esi
	subl      $16, 20(%ebp)
.L11:
	movl      24(%ebp), %edx
	decl      %edx
	cmpl      $8, %edx
	ja        .L14
	cmpl      $8, 16(%ebp)
	je        .L22
.L14:
	movl      $-2, %eax
	jmp       .L3
.L22:
	cmpl      $7, 20(%ebp)
	jle       .L14
	cmpl      $15, 20(%ebp)
	jg        .L14
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L14
	cmpl      $9, 12(%ebp)
	jg        .L14
	movl      28(%ebp), %edx
	testl     %edx, %edx
	js        .L14
	cmpl      $4, 28(%ebp)
	jg        .L14
	cmpl      $8, 20(%ebp)
	je        .L23
.L15:
	pushl     %ecx
	pushl     $5828
	pushl     $1
	pushl     40(%edi)
	call      *32(%edi)
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      $-4, %eax
	je        .L3
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
	addl      $12, %esp
	movl      -16(%ebp), %edx
	movl      %eax, 56(%edx)
	pushl     $2
	pushl     44(%edx)
	pushl     40(%edi)
	call      *32(%edi)
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
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
	je        .L18
	movl      64(%esi), %eax
	testl     %eax, %eax
	je        .L18
	movl      68(%esi), %eax
	testl     %eax, %eax
	je        .L18
	testl     %ecx, %ecx
	je        .L18
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
	jmp       .L3
	.p2align 2,,3
.L18:
	movl      z_errmsg@GOT(%ebx), %ecx
	movl      -16(%ebp), %esi
	movl      24(%ecx), %edx
	subl      $12, %esp
	movl      $666, 4(%esi)
	movl      %edx, 24(%edi)
	pushl     %edi
	call      deflateEnd@PLT
	movl      $-4, %eax
	jmp       .L3
.L23:
	movl      $9, 20(%ebp)
	jmp       .L15
	.p2align 2,,3
.L21:
	xorl      %esi, %esi
	negl      20(%ebp)
	jmp       .L11
.L20:
	movl      $6, 12(%ebp)
	jmp       .L9
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
	.p2align 2,,3
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
	call      .L71
.L71:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L71], %ebx
	testl     %edx, %edx
	movl      12(%ebp), %edi
	movl      16(%ebp), %esi
	je        .L29
	movl      8(%ebp), %ecx
	movl      28(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, -28(%ebp)
	je        .L29
	testl     %edi, %edi
	je        .L29
	movl      -28(%ebp), %eax
	movl      24(%eax), %edx
	cmpl      $2, %edx
	movl      %edx, -16(%ebp)
	je        .L29
	decl      %edx
	je        .L68
.L30:
	movl      -28(%ebp), %edx
	movl      116(%edx), %ecx
	testl     %ecx, %ecx
	je        .L28
	.p2align 2,,3
.L29:
	movl      $-2, %eax
.L25:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L28:
	cmpl      $1, -16(%ebp)
	je        .L69
.L31:
	movl      -28(%ebp), %ecx
	movl      44(%ecx), %eax
	cmpl      %eax, %esi
	movl      $0, 24(%ecx)
	movl      %ecx, %edx
	jb        .L32
	movl      -16(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L70
.L33:
	subl      %eax, %esi
	addl      %esi, %edi
	movl      %eax, %esi
.L32:
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
	movl      -28(%ebp), %esi
	movl      116(%esi), %edx
	addl      $16, %esp
	cmpl      $2, %edx
	movl      %edx, %eax
	jbe       .L67
	.p2align 2,,3
.L65:
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
	.p2align 2,,3
.L61:
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
	jne       .L61
	movl      -28(%ebp), %edi
	subl      $12, %esp
	movl      %esi, 108(%edi)
	movl      $2, 116(%edi)
	pushl     %edi
	call      fill_window
	movl      116(%edi), %edx
	addl      $16, %esp
	cmpl      $2, %edx
	movl      %edx, %eax
	ja        .L65
.L67:
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
	jmp       .L25
.L70:
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
	movl      -28(%ebp), %edx
	addl      $16, %esp
	movl      $0, 108(%edx)
	movl      $0, 92(%edx)
	movl      $0, 5812(%edx)
	movl      44(%edx), %eax
	jmp       .L33
.L69:
	pushl     %eax
	pushl     %esi
	pushl     %edi
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      adler32@PLT
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	jmp       .L31
.L68:
	movl      -28(%ebp), %edx
	cmpl      $42, 4(%edx)
	jne       .L29
	jmp       .L30
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
	.p2align 2,,3
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
	call      .L83
.L83:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L83], %ebx
	testl     %edi, %edi
	je        .L74
	movl      28(%edi), %esi
	testl     %esi, %esi
	je        .L74
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L74
	movl      36(%edi), %edx
	testl     %edx, %edx
	jne       .L73
	.p2align 2,,3
.L74:
	movl      $-2, %eax
.L72:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L73:
	movl      $2, 44(%edi)
	movl      24(%esi), %eax
	movl      8(%esi), %ecx
	testl     %eax, %eax
	movl      $0, 20(%edi)
	movl      $0, 8(%edi)
	movl      $0, 24(%edi)
	movl      $0, 20(%esi)
	movl      %ecx, 16(%esi)
	js        .L81
.L75:
	movl      24(%esi), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	sete      %dl
	decl      %edx
	andl      $-71, %edx
	addl      $113, %edx
	cmpl      $2, %ecx
	movl      %edx, 4(%esi)
	je        .L82
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32@PLT
.L80:
	movl      %eax, 48(%edi)
	movl      $0, 40(%esi)
	movl      %esi, (%esp)
	call      _tr_init
	xorl      %eax, %eax
	jmp       .L72
.L82:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32@PLT
	jmp       .L80
.L81:
	negl      %eax
	movl      %eax, 24(%esi)
	jmp       .L75
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
	.p2align 2,,3
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
	call      .L87
.L87:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L87], %ebx
	pushl     %edi
	call      deflateResetKeep@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L86
.L85:
	leal      -12(%ebp), %esp
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L86:
	subl      $12, %esp
	pushl     28(%edi)
	call      lm_init
	addl      $16, %esp
	jmp       .L85
	.size	deflateReset, .-deflateReset
# ----------------------
	.p2align 2,,3
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L92
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L92
	cmpl      $2, 24(%edx)
	je        .L91
.L92:
	movl      $-2, %eax
.L88:
	leave     
	ret       
	.p2align 2,,3
.L91:
	movl      12(%ebp), %ecx
	movl      %ecx, 28(%edx)
	xorl      %eax, %eax
	jmp       .L88
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
	.p2align 2,,3
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
	je        .L95
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L94
.L95:
	movl      $-2, %eax
.L93:
	movl      (%esp), %esi
	leave     
	ret       
	.p2align 2,,3
.L94:
	testl     %ecx, %ecx
	je        .L96
	movl      20(%edx), %eax
	movl      %eax, (%ecx)
.L96:
	testl     %esi, %esi
	je        .L97
	movl      5820(%edx), %ecx
	movl      %ecx, (%esi)
.L97:
	xorl      %eax, %eax
	jmp       .L93
	.size	deflatePending, .-deflatePending
# ----------------------
	.p2align 2,,3
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
	je        .L100
	movl      28(%eax), %esi
	testl     %esi, %esi
	jne       .L99
.L100:
	movl      $-2, %eax
.L98:
	leal      -8(%ebp), %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L99:
	movl      16(%esi), %edx
	addl      $2, %edx
	cmpl      %edx, 5796(%esi)
	jae       .L102
	movl      $-5, %eax
	jmp       .L98
	.p2align 2,,3
.L102:
	movl      5820(%esi), %edx
	movl      $16, %edi
	subl      %edx, %edi
	cmpl      12(%ebp), %edi
	jle       .L105
	movl      12(%ebp), %edi
.L105:
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
	movl      %edi, %ecx
	sarl      %cl, 16(%ebp)
	addl      $16, %esp
	subl      %edi, 12(%ebp)
	jne       .L102
	xorl      %eax, %eax
	jmp       .L98
	.size	deflatePrime, .-deflatePrime
# ----------------------
	.p2align 2,,3
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
	call      .L122
.L122:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L122], %ebx
	testl     %edx, %edx
	movl      12(%ebp), %esi
	movl      $0, -20(%ebp)
	je        .L112
	movl      28(%edx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, -36(%ebp)
	je        .L112
	cmpl      $-1, %esi
	je        .L118
.L110:
	cmpl      $9, %esi
	ja        .L112
	movl      16(%ebp), %eax
	testl     %eax, %eax
	js        .L112
	cmpl      $4, 16(%ebp)
	jle       .L111
	.p2align 2,,3
.L112:
	movl      $-2, %eax
.L107:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L111:
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
	je        .L119
.L114:
	movl      8(%edx), %edi
	testl     %edi, %edi
	jne       .L120
.L113:
	cmpl      %esi, -32(%ebp)
	je        .L116
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
.L116:
	movl      16(%ebp), %eax
	movl      -36(%ebp), %ecx
	movl      %eax, 136(%ecx)
	movl      -20(%ebp), %eax
	jmp       .L107
.L120:
	subl      $8, %esp
	pushl     $5
	pushl     %edx
	call      deflate@PLT
	addl      $16, %esp
	cmpl      $-5, %eax
	movl      %eax, -20(%ebp)
	je        .L121
	movl      -36(%ebp), %ecx
	movl      132(%ecx), %eax
	movl      %eax, -32(%ebp)
	jmp       .L113
.L121:
	movl      -36(%ebp), %ecx
	xorl      %edx, %edx
	cmpl      $0, 20(%ecx)
	sete      %dl
	decl      %edx
	andl      $-5, %edx
	movl      132(%ecx), %eax
	movl      %edx, -20(%ebp)
	movl      %eax, -32(%ebp)
	jmp       .L113
.L119:
	leal      (%esi,%esi,2), %ecx
	movl      -16(%ebp), %eax
	movl      -24(%ebp), %edi
	cmpl      8(%edi,%ecx,4), %eax
	jne       .L114
	jmp       .L113
	.p2align 2,,3
.L118:
	movl      $6, %esi
	jmp       .L110
	.size	deflateParams, .-deflateParams
# ----------------------
	.p2align 2,,3
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L125
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L124
.L125:
	movl      $-2, %eax
.L123:
	leave     
	ret       
	.p2align 2,,3
.L124:
	movl      12(%ebp), %ecx
	movl      %ecx, 140(%edx)
	movl      16(%ebp), %ecx
	movl      %ecx, 128(%edx)
	movl      20(%ebp), %ecx
	movl      %ecx, 144(%edx)
	movl      24(%ebp), %ecx
	movl      %ecx, 124(%edx)
	xorl      %eax, %eax
	jmp       .L123
	.size	deflateTune, .-deflateTune
# ----------------------
	.p2align 2,,3
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
	je        .L128
	movl      28(%ecx), %edx
	testl     %edx, %edx
	jne       .L127
.L128:
	addl      $11, %eax
.L126:
	addl      $8, %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L127:
	movl      24(%edx), %eax
	cmpl      $1, %eax
	je        .L131
	cmpl      $1, %eax
	jle       .L153
	cmpl      $2, %eax
	je        .L134
.L148:
	movl      $6, %edi
.L129:
	cmpl      $15, 48(%edx)
	je        .L154
.L152:
	movl      -12(%ebp), %eax
	addl      %edi, %eax
	jmp       .L126
	.p2align 2,,3
.L154:
	cmpl      $15, 80(%edx)
	jne       .L152
	movl      %esi, %ecx
	shrl      $12, %ecx
	leal      (%ecx,%esi), %edx
	shrl      $14, %esi
	addl      %esi, %edx
	shrl      $11, %esi
	addl      %esi, %edx
	leal      7(%edi,%edx), %eax
	jmp       .L126
.L134:
	movl      28(%edx), %eax
	testl     %eax, %eax
	movl      $18, %edi
	movl      %eax, -16(%ebp)
	je        .L129
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L136
	movl      20(%eax), %edi
	addl      $20, %edi
.L136:
	movl      -16(%ebp), %eax
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L137
	.p2align 2,,3
.L138:
	movb      (%ecx), %al
	incl      %edi
	incl      %ecx
	testb     %al, %al
	jne       .L138
.L137:
	movl      -16(%ebp), %eax
	movl      36(%eax), %ecx
	testl     %ecx, %ecx
	je        .L142
	.p2align 2,,3
.L143:
	movb      (%ecx), %al
	incl      %edi
	incl      %ecx
	testb     %al, %al
	jne       .L143
.L142:
	movl      -16(%ebp), %eax
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	je        .L129
	addl      $2, %edi
	jmp       .L129
.L153:
	xorl      %edi, %edi
	testl     %eax, %eax
	je        .L129
	jmp       .L148
	.p2align 2,,3
.L131:
	movl      108(%edx), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %ecx
	leal      6(,%ecx,4), %edi
	jmp       .L129
	.size	deflateBound, .-deflateBound
# ----------------------
	.p2align 2,,3
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
	call      .L386
.L386:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L386], %ebx
	testl     %edx, %edx
	je        .L345
	movl      8(%ebp), %edx
	movl      28(%edx), %edi
	testl     %edi, %edi
	je        .L345
	cmpl      $5, 12(%ebp)
	jg        .L345
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L345
	movl      8(%ebp), %edx
	movl      12(%edx), %esi
	testl     %esi, %esi
	je        .L159
	movl      (%edx), %ecx
	testl     %ecx, %ecx
	jne       .L160
	movl      4(%edx), %eax
	testl     %eax, %eax
	jne       .L159
.L160:
	movl      4(%edi), %eax
	cmpl      $666, %eax
	movl      %eax, %edx
	je        .L347
.L158:
	movl      8(%ebp), %esi
	movl      16(%esi), %ecx
	testl     %ecx, %ecx
	jne       .L161
	movl      z_errmsg@GOT(%ebx), %edi
	movl      28(%edi), %ecx
	movl      %ecx, 24(%esi)
.L344:
	movl      $-5, %eax
	.p2align 2,,3
.L155:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L161:
	movl      8(%ebp), %esi
	movl      40(%edi), %ecx
	movl      %esi, (%edi)
	cmpl      $42, %edx
	movl      12(%ebp), %esi
	movl      %ecx, -16(%ebp)
	movl      %esi, 40(%edi)
	je        .L348
.L162:
	cmpl      $69, %eax
	je        .L349
	movl      20(%edi), %esi
	movl      %esi, -56(%ebp)
.L195:
	cmpl      $73, %eax
	je        .L350
.L211:
	cmpl      $91, %eax
	je        .L351
.L227:
	cmpl      $103, %eax
	je        .L352
.L243:
	movl      -56(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L353
	movl      8(%ebp), %edx
	movl      4(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L258
	movl      -16(%ebp), %eax
	movl      12(%ebp), %edx
	sall      $1, %eax
	sall      $1, %edx
	cmpl      $4, 12(%ebp)
	jle       .L260
	subl      $9, %edx
.L260:
	cmpl      $4, -16(%ebp)
	jle       .L261
	subl      $9, %eax
.L261:
	cmpl      %eax, %edx
	jg        .L258
	cmpl      $4, 12(%ebp)
	je        .L258
.L343:
	movl      z_errmsg@GOT(%ebx), %ecx
	movl      28(%ecx), %esi
	movl      8(%ebp), %edi
	movl      %esi, 24(%edi)
	jmp       .L344
.L258:
	movl      4(%edi), %eax
	cmpl      $666, %eax
	je        .L354
	testl     %ecx, %ecx
	jne       .L265
.L338:
	movl      116(%edi), %edx
	testl     %edx, %edx
	jne       .L265
	movl      12(%ebp), %esi
	testl     %esi, %esi
	je        .L264
	cmpl      $666, %eax
	je        .L264
.L265:
	movl      136(%edi), %eax
	cmpl      $2, %eax
	je        .L355
	cmpl      $3, %eax
	je        .L356
	subl      $8, %esp
	movl      132(%edi), %edx
	pushl     12(%ebp)
	leal      (%edx,%edx,2), %esi
	pushl     %edi
	leal      configuration_table@GOTOFF(%ebx), %ecx
	call      *8(%ecx,%esi,4)
.L340:
	leal      -2(%eax), %esi
	addl      $16, %esp
	cmpl      $1, %esi
	movl      %eax, %edx
	ja        .L270
	movl      $666, 4(%edi)
.L270:
	testl     %edx, %edx
	je        .L272
	cmpl      $2, %edx
	je        .L272
	decl      %edx
	je        .L357
.L264:
	xorl      %eax, %eax
	cmpl      $4, 12(%ebp)
	jne       .L155
	movl      24(%edi), %edx
	testl     %edx, %edx
	movl      $1, %eax
	jle       .L155
	cmpl      $2, %edx
	je        .L358
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
.L341:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	incl      20(%edi)
	pushl     %eax
	movl      %eax, -52(%ebp)
	call      _tr_flush_bits
	movl      -52(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L315
	movl      %eax, %esi
.L315:
	testl     %esi, %esi
	jne       .L359
.L317:
	movl      24(%edi), %eax
	testl     %eax, %eax
	jle       .L319
	negl      %eax
	movl      %eax, 24(%edi)
.L319:
	xorl      %eax, %eax
	cmpl      $0, 20(%edi)
	sete      %al
	jmp       .L155
.L359:
	pushl     %eax
	pushl     %esi
	movl      -52(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
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
	jne       .L317
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L317
.L358:
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
	jmp       .L341
.L357:
	cmpl      $1, 12(%ebp)
	je        .L360
	cmpl      $5, 12(%ebp)
	je        .L276
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %edi
	call      _tr_stored_block
	addl      $16, %esp
	cmpl      $3, 12(%ebp)
	je        .L361
.L276:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	pushl     %eax
	movl      %eax, -48(%ebp)
	call      _tr_flush_bits
	movl      -48(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L304
	movl      %eax, %esi
.L304:
	testl     %esi, %esi
	jne       .L362
.L306:
	testl     %eax, %eax
	jne       .L264
.L346:
	movl      $-1, 40(%edi)
.L342:
	xorl      %eax, %eax
	jmp       .L155
.L362:
	pushl     %eax
	pushl     %esi
	movl      -48(%ebp), %eax
	pushl     16(%eax)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy@PLT
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
	jne       .L335
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	movl      16(%edx), %eax
	jmp       .L306
.L335:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	jmp       .L306
.L361:
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
	movl      116(%edi), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	jne       .L276
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	movl      $0, 5812(%edi)
	jmp       .L276
	.p2align 2,,3
.L360:
	subl      $12, %esp
	pushl     %edi
	call      _tr_align
	addl      $16, %esp
	jmp       .L276
	.p2align 2,,3
.L272:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	testl     %eax, %eax
	jne       .L342
	jmp       .L346
.L356:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %edi
	call      deflate_rle
	jmp       .L340
.L355:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %edi
	call      deflate_huff
	jmp       .L340
.L354:
	testl     %ecx, %ecx
	je        .L338
	jmp       .L343
.L353:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	movl      %esi, -44(%ebp)
	call      _tr_flush_bits
	movl      -44(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L253
	movl      %eax, %esi
.L253:
	testl     %esi, %esi
	jne       .L363
.L255:
	testl     %eax, %eax
	je        .L346
	movl      8(%ebp), %eax
	movl      4(%eax), %ecx
	jmp       .L258
.L363:
	pushl     %eax
	pushl     %esi
	movl      -44(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
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
	jne       .L333
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	movl      16(%edx), %eax
	jmp       .L255
.L333:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	jmp       .L255
.L352:
	movl      28(%edi), %edx
	movl      44(%edx), %esi
	testl     %esi, %esi
	je        .L244
	movl      -56(%ebp), %ecx
	addl      $2, %ecx
	movl      12(%edi), %edx
	cmpl      %edx, %ecx
	ja        .L364
.L245:
	movl      -56(%ebp), %esi
	addl      $2, %esi
	cmpl      %edx, %esi
	ja        .L243
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
	movl      20(%edi), %edx
	movl      %eax, 48(%esi)
	movl      $113, 4(%edi)
	addl      $16, %esp
	movl      %edx, -56(%ebp)
	jmp       .L243
.L364:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	pushl     %eax
	movl      %eax, -40(%ebp)
	call      _tr_flush_bits
	movl      -40(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L246
	movl      %eax, %esi
.L246:
	testl     %esi, %esi
	jne       .L365
	movl      20(%edi), %ecx
	movl      %ecx, -56(%ebp)
.L339:
	movl      12(%edi), %edx
	jmp       .L245
.L365:
	pushl     %eax
	pushl     %esi
	movl      -40(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
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
	jne       .L332
	movl      8(%ecx), %esi
	movl      20(%edi), %eax
	movl      %esi, 16(%ecx)
	movl      %eax, -56(%ebp)
	jmp       .L339
.L332:
	movl      20(%edi), %eax
	movl      %eax, -56(%ebp)
	jmp       .L339
	.p2align 2,,3
.L244:
	movl      $113, 4(%edi)
	jmp       .L243
.L351:
	movl      28(%edi), %esi
	movl      36(%esi), %edx
	testl     %edx, %edx
	je        .L228
	movl      -56(%ebp), %ecx
	movl      %ecx, -64(%ebp)
.L229:
	movl      -56(%ebp), %edx
	cmpl      12(%edi), %edx
	je        .L366
.L232:
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
	je        .L367
	movl      %eax, -56(%ebp)
	movl      28(%edi), %esi
	jmp       .L229
.L367:
	movl      %eax, -56(%ebp)
.L230:
	movl      28(%edi), %ecx
	movl      44(%ecx), %edx
	testl     %edx, %edx
	je        .L240
	movl      -64(%ebp), %eax
	cmpl      %eax, -56(%ebp)
	ja        .L368
.L240:
	testl     %esi, %esi
	jne       .L330
.L228:
	movl      $103, 4(%edi)
	movl      $103, %eax
	jmp       .L227
.L330:
	movl      4(%edi), %eax
	jmp       .L227
.L368:
	subl      %eax, -56(%ebp)
	pushl     %edx
	pushl     -56(%ebp)
	movl      8(%edi), %ecx
	addl      %ecx, %eax
	pushl     %eax
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32@PLT
	movl      8(%ebp), %ecx
	movl      %eax, 48(%ecx)
	movl      20(%edi), %eax
	addl      $16, %esp
	movl      %eax, -56(%ebp)
	jmp       .L240
	.p2align 2,,3
.L366:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L233
	movl      -64(%ebp), %ecx
	cmpl      %ecx, %edx
	ja        .L369
.L233:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	movl      %esi, -36(%ebp)
	call      _tr_flush_bits
	movl      -36(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L234
	movl      %eax, %esi
.L234:
	testl     %esi, %esi
	jne       .L370
.L236:
	movl      20(%edi), %eax
	cmpl      12(%edi), %eax
	movl      %eax, -56(%ebp)
	movl      %eax, -64(%ebp)
	je        .L337
	movl      28(%edi), %esi
	jmp       .L232
.L337:
	movl      $1, %esi
	jmp       .L230
.L370:
	pushl     %eax
	pushl     %esi
	movl      -36(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
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
	jne       .L236
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L236
.L369:
	subl      %ecx, %edx
	pushl     %eax
	pushl     %edx
	movl      8(%edi), %eax
	addl      %eax, %ecx
	pushl     %ecx
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32@PLT
	movl      8(%ebp), %esi
	movl      %eax, 48(%esi)
	addl      $16, %esp
	jmp       .L233
.L350:
	movl      28(%edi), %esi
	movl      28(%esi), %edx
	testl     %edx, %edx
	je        .L212
	movl      -56(%ebp), %eax
	movl      %eax, -64(%ebp)
.L213:
	movl      -56(%ebp), %eax
	cmpl      12(%edi), %eax
	je        .L371
.L216:
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
	je        .L372
	movl      %eax, -56(%ebp)
	movl      28(%edi), %esi
	jmp       .L213
.L372:
	movl      %eax, -56(%ebp)
.L214:
	movl      28(%edi), %ecx
	movl      44(%ecx), %edx
	testl     %edx, %edx
	je        .L224
	movl      -64(%ebp), %eax
	cmpl      %eax, -56(%ebp)
	ja        .L373
.L224:
	testl     %esi, %esi
	jne       .L327
	movl      $0, 32(%edi)
.L212:
	movl      $91, 4(%edi)
	movl      $91, %eax
	jmp       .L211
.L327:
	movl      4(%edi), %eax
	jmp       .L211
.L373:
	subl      %eax, -56(%ebp)
	pushl     %edx
	pushl     -56(%ebp)
	movl      8(%edi), %ecx
	addl      %ecx, %eax
	pushl     %eax
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32@PLT
	movl      8(%ebp), %ecx
	movl      %eax, 48(%ecx)
	movl      20(%edi), %eax
	addl      $16, %esp
	movl      %eax, -56(%ebp)
	jmp       .L224
	.p2align 2,,3
.L371:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L217
	movl      -64(%ebp), %edx
	cmpl      %edx, %eax
	ja        .L374
.L217:
	movl      8(%ebp), %esi
	movl      28(%esi), %ecx
	subl      $12, %esp
	pushl     %ecx
	movl      %ecx, -32(%ebp)
	call      _tr_flush_bits
	movl      -32(%ebp), %eax
	movl      8(%ebp), %edx
	movl      20(%eax), %esi
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L218
	movl      %eax, %esi
.L218:
	testl     %esi, %esi
	jne       .L375
.L220:
	movl      20(%edi), %edx
	cmpl      12(%edi), %edx
	movl      %edx, -56(%ebp)
	movl      %edx, -64(%ebp)
	je        .L336
	movl      28(%edi), %esi
	jmp       .L216
.L336:
	movl      $1, %esi
	jmp       .L214
.L375:
	pushl     %eax
	pushl     %esi
	movl      -32(%ebp), %ecx
	pushl     16(%ecx)
	movl      8(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L220
	movl      8(%eax), %esi
	movl      %esi, 16(%eax)
	jmp       .L220
.L374:
	subl      %edx, %eax
	pushl     %ecx
	pushl     %eax
	movl      8(%edi), %esi
	addl      %esi, %edx
	pushl     %edx
	movl      8(%ebp), %esi
	pushl     48(%esi)
	call      crc32@PLT
	movl      %eax, 48(%esi)
	addl      $16, %esp
	jmp       .L217
.L349:
	movl      28(%edi), %esi
	movl      16(%esi), %eax
	testl     %eax, %eax
	movl      %esi, -24(%ebp)
	je        .L196
	movzwl    20(%esi), %ecx
	movl      20(%edi), %edx
	cmpl      %ecx, 32(%edi)
	movl      %edx, -56(%ebp)
	movl      %edx, -20(%ebp)
	jae       .L198
.L207:
	movl      -56(%ebp), %edx
	cmpl      12(%edi), %edx
	je        .L376
.L200:
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
	jae       .L198
	movl      %ecx, -56(%ebp)
	jmp       .L207
.L198:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L208
	movl      -20(%ebp), %ecx
	cmpl      %ecx, -56(%ebp)
	ja        .L377
.L208:
	movl      20(%esi), %edx
	cmpl      %edx, 32(%edi)
	je        .L378
	movl      4(%edi), %eax
	jmp       .L195
.L378:
	movl      $0, 32(%edi)
	movl      $73, 4(%edi)
	movl      $73, %eax
	jmp       .L195
.L377:
	subl      %ecx, -56(%ebp)
	pushl     %eax
	pushl     -56(%ebp)
	movl      8(%edi), %eax
	addl      %eax, %ecx
	pushl     %ecx
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32@PLT
	movl      8(%ebp), %esi
	movl      20(%edi), %edx
	movl      %eax, 48(%esi)
	addl      $16, %esp
	movl      %edx, -56(%ebp)
	movl      28(%edi), %esi
	jmp       .L208
	.p2align 2,,3
.L376:
	movl      -24(%ebp), %eax
	movl      44(%eax), %esi
	testl     %esi, %esi
	je        .L201
	movl      -20(%ebp), %esi
	cmpl      %esi, %edx
	ja        .L379
.L201:
	movl      8(%ebp), %ecx
	movl      28(%ecx), %eax
	subl      $12, %esp
	pushl     %eax
	movl      %eax, -28(%ebp)
	call      _tr_flush_bits
	movl      -28(%ebp), %edx
	movl      8(%ebp), %ecx
	movl      20(%edx), %esi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L202
	movl      %eax, %esi
.L202:
	testl     %esi, %esi
	jne       .L380
.L204:
	movl      20(%edi), %eax
	cmpl      12(%edi), %eax
	movl      %eax, -56(%ebp)
	movl      %eax, -20(%ebp)
	je        .L322
	movl      28(%edi), %esi
	jmp       .L200
.L322:
	movl      28(%edi), %esi
	jmp       .L198
.L380:
	pushl     %eax
	pushl     %esi
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy@PLT
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
	jne       .L204
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L204
.L379:
	subl      %esi, %edx
	pushl     %eax
	pushl     %edx
	movl      8(%edi), %edx
	addl      %edx, %esi
	pushl     %esi
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32@PLT
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	jmp       .L201
.L196:
	movl      20(%edi), %ecx
	movl      $73, 4(%edi)
	movl      $73, %eax
	movl      %ecx, -56(%ebp)
	jmp       .L195
.L348:
	cmpl      $2, 24(%edi)
	je        .L381
	movl      48(%edi), %edx
	subl      $8, %edx
	sall      $12, %edx
	cmpl      $1, 136(%edi)
	leal      2048(%edx), %esi
	jle       .L382
.L184:
	xorl      %eax, %eax
.L185:
	sall      $6, %eax
	movl      108(%edi), %ecx
	orl       %eax, %esi
	testl     %ecx, %ecx
	je        .L190
	orl       $32, %esi
.L190:
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
	je        .L192
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
.L192:
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32@PLT
	movl      8(%ebp), %edx
	movl      %eax, 48(%edx)
	addl      $16, %esp
	movl      4(%edi), %eax
	jmp       .L162
.L382:
	movl      132(%edi), %edx
	cmpl      $1, %edx
	jle       .L184
	cmpl      $5, %edx
	movl      $1, %eax
	jle       .L185
	xorl      %eax, %eax
	cmpl      $6, %edx
	setne     %al
	addl      $2, %eax
	jmp       .L185
.L381:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32@PLT
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
	jne       .L164
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
	je        .L166
	cmpl      $1, 136(%edi)
	jle       .L383
.L169:
	movb      $4, %al
.L166:
	movb      %al, (%ecx,%esi)
	movl      8(%edi), %eax
	movl      20(%edi), %ecx
	movb      $3, (%ecx,%eax)
	incl      20(%edi)
	movl      $113, 4(%edi)
	movl      $113, %eax
	jmp       .L162
.L383:
	xorl      %eax, %eax
	decl      %edx
	jg        .L166
	jmp       .L169
	.p2align 2,,3
.L164:
	addl      $2, %eax
	movl      %eax, 20(%edi)
	xorl      %eax, %eax
	cmpl      $0, (%edx)
	setne     %al
	cmpl      $0, 44(%edx)
	movl      8(%edi), %esi
	je        .L171
	addl      $2, %eax
.L171:
	cmpl      $0, 16(%edx)
	je        .L172
	addl      $4, %eax
.L172:
	cmpl      $0, 28(%edx)
	je        .L173
	addl      $8, %eax
.L173:
	movl      36(%edx), %edx
	testl     %edx, %edx
	je        .L174
	addl      $16, %eax
.L174:
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
	je        .L176
	cmpl      $1, 136(%edi)
	jle       .L384
.L179:
	movb      $4, %al
.L176:
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
	je        .L180
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
.L180:
	movl      44(%esi), %edx
	testl     %edx, %edx
	jne       .L385
.L181:
	movl      $0, 32(%edi)
	movl      $69, 4(%edi)
	movl      $69, %eax
	jmp       .L162
.L385:
	pushl     %eax
	pushl     20(%edi)
	pushl     8(%edi)
	movl      8(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32@PLT
	movl      8(%ebp), %esi
	movl      %eax, 48(%esi)
	addl      $16, %esp
	jmp       .L181
.L384:
	xorl      %eax, %eax
	decl      %edx
	jg        .L176
	jmp       .L179
	.p2align 2,,3
.L347:
	cmpl      $4, 12(%ebp)
	je        .L158
	.p2align 2,,3
.L159:
	movl      z_errmsg@GOT(%ebx), %esi
	movl      16(%esi), %edx
	movl      8(%ebp), %edi
	movl      %edx, 24(%edi)
	.p2align 2,,3
.L345:
	movl      $-2, %eax
	jmp       .L155
	.size	deflate, .-deflate
# ----------------------
	.p2align 2,,3
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
	je        .L389
	movl      28(%esi), %edx
	testl     %edx, %edx
	movl      %edx, %ecx
	jne       .L388
.L389:
	movl      $-2, %eax
.L387:
	leal      -8(%ebp), %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L388:
	movl      4(%edx), %edi
	cmpl      $42, %edi
	je        .L390
	cmpl      $69, %edi
	je        .L390
	cmpl      $73, %edi
	je        .L390
	cmpl      $91, %edi
	je        .L390
	cmpl      $103, %edi
	je        .L390
	cmpl      $113, %edi
	je        .L390
	cmpl      $666, %edi
	movl      $-2, %eax
	jne       .L387
	.p2align 2,,3
.L390:
	movl      8(%ecx), %eax
	testl     %eax, %eax
	jne       .L397
.L391:
	movl      68(%edx), %eax
	testl     %eax, %eax
	jne       .L398
.L392:
	movl      64(%edx), %eax
	testl     %eax, %eax
	jne       .L399
.L393:
	movl      56(%edx), %eax
	testl     %eax, %eax
	jne       .L400
.L394:
	subl      $8, %esp
	pushl     28(%esi)
	pushl     40(%esi)
	call      *36(%esi)
	xorl      %edx, %edx
	addl      $16, %esp
	cmpl      $113, %edi
	setne     %dl
	movl      $0, 28(%esi)
	leal      -3(%edx,%edx,2), %eax
	jmp       .L387
	.p2align 2,,3
.L400:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
	addl      $16, %esp
	jmp       .L394
	.p2align 2,,3
.L399:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
	addl      $16, %esp
	movl      28(%esi), %edx
	jmp       .L393
	.p2align 2,,3
.L398:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
	addl      $16, %esp
	movl      28(%esi), %edx
	jmp       .L392
	.p2align 2,,3
.L397:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
	addl      $16, %esp
	movl      28(%esi), %edx
	jmp       .L391
	.size	deflateEnd, .-deflateEnd
# ----------------------
	.p2align 2,,3
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
	call      .L407
.L407:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L407], %ebx
	testl     %esi, %esi
	je        .L403
	movl      8(%ebp), %edx
	testl     %edx, %edx
	je        .L403
	movl      28(%esi), %edx
	testl     %edx, %edx
	movl      %edx, -20(%ebp)
	jne       .L402
.L403:
	movl      $-2, %eax
.L401:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L402:
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
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      $-4, %eax
	je        .L401
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
	addl      $12, %esp
	movl      -16(%ebp), %esi
	movl      %eax, 56(%esi)
	pushl     $2
	movl      8(%ebp), %edi
	pushl     44(%esi)
	pushl     40(%edi)
	call      *32(%edi)
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
	addl      $12, %esp
	movl      -16(%ebp), %edx
	movl      %eax, 68(%edx)
	pushl     $4
	pushl     5788(%edx)
	pushl     40(%edi)
	call      *32(%edi)
	movl      %eax, %esi
	movl      -16(%ebp), %eax
	movl      56(%eax), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %esi, 8(%eax)
	je        .L406
	movl      64(%eax), %edi
	testl     %edi, %edi
	je        .L406
	movl      68(%eax), %ecx
	testl     %ecx, %ecx
	je        .L406
	testl     %esi, %esi
	je        .L406
	movl      -16(%ebp), %eax
	movl      44(%eax), %edi
	sall      $1, %edi
	pushl     %ecx
	pushl     %edi
	movl      -20(%ebp), %ecx
	pushl     56(%ecx)
	pushl     %edx
	call      memcpy@PLT
	movl      -16(%ebp), %edi
	movl      44(%edi), %edx
	addl      $12, %esp
	sall      $1, %edx
	pushl     %edx
	movl      -20(%ebp), %eax
	pushl     64(%eax)
	pushl     64(%edi)
	call      memcpy@PLT
	movl      -16(%ebp), %edi
	movl      76(%edi), %ecx
	addl      $12, %esp
	sall      $1, %ecx
	pushl     %ecx
	movl      -20(%ebp), %edx
	pushl     68(%edx)
	pushl     68(%edi)
	call      memcpy@PLT
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	pushl     12(%ecx)
	movl      -20(%ebp), %eax
	pushl     8(%eax)
	pushl     8(%ecx)
	call      memcpy@PLT
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
	jmp       .L401
	.p2align 2,,3
.L406:
	subl      $12, %esp
	pushl     8(%ebp)
	call      deflateEnd@PLT
	movl      $-4, %eax
	jmp       .L401
	.size	deflateCopy, .-deflateCopy
# ----------------------
	.p2align 2,,3
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
	call      .L433
.L433:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L433], %ebx
	pushl     %edx
	call      memset@PLT
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
	.p2align 2,,3
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
	call      .L554
.L554:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L554], %ebx
	movl      %eax, -20(%ebp)
	movl      %ecx, -44(%ebp)
	.p2align 2,,3
.L455:
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
	jae       .L550
.L462:
	movl      8(%ebp), %eax
	movl      (%eax), %edi
	movl      4(%edi), %edx
	testl     %edx, %edx
	je        .L456
	movl      8(%ebp), %ecx
	movl      108(%ecx), %esi
	addl      56(%ecx), %esi
	movl      116(%ecx), %eax
	addl      %eax, %esi
	cmpl      -16(%ebp), %edx
	movl      %esi, -24(%ebp)
	movl      %eax, -44(%ebp)
	movl      %edx, %esi
	jbe       .L476
	movl      -16(%ebp), %esi
.L476:
	xorl      %eax, %eax
	testl     %esi, %esi
	jne       .L551
.L478:
	movl      8(%ebp), %esi
	movl      -44(%ebp), %edi
	addl      %eax, %edi
	movl      5812(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      $2, %ecx
	movl      %edi, 116(%esi)
	movl      %edx, -48(%ebp)
	jbe       .L545
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
	je        .L546
	movl      %edi, -44(%ebp)
	movl      68(%ecx), %eax
	movl      64(%ecx), %edx
	movl      52(%ecx), %edi
	movl      %eax, -60(%ebp)
	movl      %edx, -40(%ebp)
	movl      %edi, -52(%ebp)
	.p2align 2,,3
.L487:
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
	jbe       .L457
	testl     %edx, %edx
	movl      %edx, -48(%ebp)
	jne       .L487
	.p2align 2,,3
.L457:
	cmpl      $261, -44(%ebp)
	ja        .L456
	movl      8(%ebp), %eax
	movl      (%eax), %edi
	movl      4(%edi), %edx
	testl     %edx, %edx
	je        .L456
	movl      8(%ebp), %edi
	movl      44(%edi), %eax
	jmp       .L455
.L456:
	movl      8(%ebp), %esi
	movl      5824(%esi), %edx
	movl      60(%esi), %ecx
	cmpl      %ecx, %edx
	movl      %esi, %edi
	jae       .L454
	movl      116(%esi), %esi
	addl      108(%edi), %esi
	cmpl      %esi, %edx
	jae       .L491
	movl      %ecx, %edi
	subl      %esi, %edi
	cmpl      $258, %edi
	jbe       .L492
	movl      $258, %edi
.L492:
	movl      8(%ebp), %eax
	movl      56(%eax), %ecx
	pushl     %edx
	pushl     %edi
	addl      %esi, %ecx
	pushl     $0
	pushl     %ecx
	call      memset@PLT
	leal      (%edi,%esi), %ecx
	movl      8(%ebp), %edx
	addl      $16, %esp
	movl      %ecx, 5824(%edx)
.L454:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L491:
	leal      258(%esi), %edi
	cmpl      %edi, %edx
	jae       .L454
	subl      %edx, %esi
	movl      %ecx, %eax
	leal      258(%esi), %edi
	subl      %edx, %eax
	cmpl      %eax, %edi
	jbe       .L519
	movl      %eax, %edi
.L519:
	movl      8(%ebp), %ecx
	addl      56(%ecx), %edx
	pushl     %esi
	pushl     %edi
	pushl     $0
	pushl     %edx
	call      memset@PLT
	movl      8(%ebp), %esi
	addl      $16, %esp
	addl      %edi, 5824(%esi)
	jmp       .L454
	.p2align 2,,3
.L546:
	movl      %edi, -44(%ebp)
	jmp       .L457
	.p2align 2,,3
.L545:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %esi
	movl      %esi, -44(%ebp)
	jmp       .L457
.L551:
	subl      %esi, %edx
	movl      %edx, 4(%edi)
	pushl     %eax
	pushl     %esi
	pushl     (%edi)
	pushl     -24(%ebp)
	call      memcpy@PLT
	movl      28(%edi), %edx
	movl      24(%edx), %eax
	addl      $16, %esp
	cmpl      $1, %eax
	je        .L552
	cmpl      $2, %eax
	je        .L553
.L480:
	addl      %esi, (%edi)
	addl      %esi, 8(%edi)
	movl      %esi, %eax
	movl      8(%ebp), %esi
	movl      116(%esi), %ecx
	movl      %ecx, -44(%ebp)
	jmp       .L478
.L553:
	pushl     %eax
	pushl     %esi
	pushl     -24(%ebp)
	pushl     48(%edi)
	call      crc32@PLT
.L549:
	addl      $16, %esp
	movl      %eax, 48(%edi)
	jmp       .L480
.L552:
	pushl     %eax
	pushl     %esi
	pushl     -24(%ebp)
	pushl     48(%edi)
	call      adler32@PLT
	jmp       .L549
.L550:
	movl      56(%ecx), %esi
	pushl     %ecx
	leal      (%edi,%esi), %edx
	pushl     %edi
	pushl     %edx
	pushl     %esi
	call      memcpy@PLT
	movl      8(%ebp), %esi
	subl      %edi, 112(%esi)
	subl      %edi, 108(%esi)
	subl      %edi, 92(%esi)
	movl      76(%esi), %ecx
	movl      68(%esi), %edi
	movl      %edi, -60(%ebp)
	leal      (%edi,%ecx,2), %edx
	addl      $16, %esp
	.p2align 2,,3
.L463:
	subl      $2, %edx
	movzwl    (%edx), %eax
	xorl      %esi, %esi
	cmpl      -20(%ebp), %eax
	jb        .L467
	movl      %eax, %esi
	subw      -20(%ebp), %si
.L467:
	decl      %ecx
	movw      %si, (%edx)
	jne       .L463
	movl      8(%ebp), %esi
	movl      -20(%ebp), %ecx
	movl      64(%esi), %eax
	leal      (%eax,%ecx,2), %edx
	.p2align 2,,3
.L469:
	subl      $2, %edx
	movzwl    (%edx), %eax
	xorl      %esi, %esi
	cmpl      -20(%ebp), %eax
	jb        .L473
	movl      %eax, %esi
	subw      -20(%ebp), %si
.L473:
	decl      %ecx
	movw      %si, (%edx)
	jne       .L469
	movl      -20(%ebp), %ecx
	addl      %ecx, -16(%ebp)
	jmp       .L462
	.size	fill_window, .-fill_window
# ----------------------
	.p2align 2,,3
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
	call      .L605
.L605:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L605], %ebx
	cmpl      %eax, -16(%ebp)
	jbe       .L557
	movl      %eax, -16(%ebp)
	.p2align 2,,3
.L557:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %edx
	cmpl      $1, %edx
	jbe       .L599
.L560:
	movl      8(%ebp), %esi
	movl      108(%esi), %eax
	addl      %edx, %eax
	movl      92(%esi), %ecx
	movl      -16(%ebp), %edi
	testl     %eax, %eax
	movl      %eax, 108(%esi)
	movl      $0, 116(%esi)
	leal      (%edi,%ecx), %edx
	je        .L564
	cmpl      %edx, %eax
	jb        .L563
.L564:
	subl      %edx, %eax
	movl      8(%ebp), %esi
	movl      %eax, 116(%esi)
	movl      %edx, 108(%esi)
	xorl      %eax, %eax
	subl      %ecx, %edx
	pushl     $0
	testl     %ecx, %ecx
	pushl     %edx
	js        .L566
	movl      56(%esi), %eax
	addl      %ecx, %eax
.L566:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %eax
	movl      %eax, (%esp)
	movl      %eax, -20(%ebp)
	call      _tr_flush_bits
	movl      -20(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L567
	movl      %eax, %esi
.L567:
	testl     %esi, %esi
	jne       .L600
.L569:
	movl      8(%ebp), %esi
	movl      (%esi), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L598
	movl      92(%esi), %ecx
.L563:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      %edi, %esi
	movl      44(%edi), %edi
	subl      %ecx, %edx
	subl      $262, %edi
	cmpl      %edi, %edx
	jb        .L557
	pushl     $0
	xorl      %eax, %eax
	testl     %ecx, %ecx
	pushl     %edx
	js        .L574
	movl      56(%esi), %eax
	addl      %ecx, %eax
.L574:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	movl      108(%esi), %edx
	movl      28(%edi), %eax
	movl      %edx, 92(%esi)
	movl      %eax, -24(%ebp)
	movl      %eax, (%esp)
	call      _tr_flush_bits
	movl      -24(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L575
	movl      %eax, %esi
.L575:
	testl     %esi, %esi
	jne       .L601
.L577:
	movl      8(%ebp), %eax
	movl      (%eax), %edi
	movl      16(%edi), %edx
	testl     %edx, %edx
	jne       .L557
.L598:
	xorl      %eax, %eax
.L555:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L601:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L577
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L577
	.p2align 2,,3
.L600:
	pushl     %edx
	pushl     %esi
	movl      -20(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L569
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L569
	.p2align 2,,3
.L599:
	subl      $12, %esp
	pushl     %ecx
	call      fill_window
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	testl     %edx, %edx
	jne       .L560
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L555
	testl     %edx, %edx
	jne       .L560
	movl      8(%ebp), %eax
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%eax)
	je        .L602
	movl      8(%ebp), %esi
	movl      108(%esi), %eax
	movl      92(%esi), %edx
	cmpl      %edx, %eax
	jle       .L588
	subl      %edx, %eax
	pushl     $0
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L590
	movl      56(%esi), %eax
	addl      %edx, %eax
.L590:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -32(%ebp)
	call      _tr_flush_bits
	movl      -32(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L591
	movl      %eax, %esi
.L591:
	testl     %esi, %esi
	jne       .L603
.L593:
	movl      8(%ebp), %edx
	movl      (%edx), %edi
	movl      16(%edi), %ecx
	testl     %ecx, %ecx
	je        .L598
.L588:
	movl      $1, %eax
	jmp       .L555
.L603:
	pushl     %eax
	pushl     %esi
	movl      -32(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L593
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L593
.L602:
	pushl     $1
	movl      92(%eax), %edx
	movl      108(%eax), %esi
	subl      %edx, %esi
	movl      %eax, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L582
	movl      56(%edi), %eax
	addl      %edx, %eax
.L582:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %ecx
	movl      108(%ecx), %esi
	movl      (%ecx), %edi
	movl      %esi, 92(%ecx)
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -28(%ebp)
	call      _tr_flush_bits
	movl      -28(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L583
	movl      %eax, %esi
.L583:
	testl     %esi, %esi
	jne       .L604
.L585:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L555
.L604:
	pushl     %eax
	pushl     %esi
	movl      -28(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L585
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L585
	.size	deflate_stored, .-deflate_stored
# ----------------------
	.p2align 2,,3
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
	call      .L659
.L659:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L659], %ebx
	.p2align 2,,3
.L607:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	cmpl      $261, %edx
	jbe       .L653
.L610:
	xorl      %ecx, %ecx
	cmpl      $2, %edx
	jbe       .L613
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
.L613:
	testl     %ecx, %ecx
	je        .L614
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      44(%edi), %esi
	subl      %ecx, %edx
	subl      $262, %esi
	cmpl      %esi, %edx
	jbe       .L654
.L614:
	movl      8(%ebp), %eax
	cmpl      $2, 96(%eax)
	jbe       .L615
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
	ja        .L616
	movzwl    %si, %edi
	movzbl    _dist_code@GOTOFF(%edi,%ebx), %eax
.L651:
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
	ja        .L618
	cmpl      $2, %edx
	jbe       .L618
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
	.p2align 2,,3
.L619:
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
	jne       .L619
	movl      -60(%ebp), %edi
	addl      $2, %edi
	movl      %edi, 108(%esi)
	.p2align 2,,3
.L624:
	movl      -16(%ebp), %esi
	testl     %esi, %esi
	je        .L607
	pushl     $0
	movl      8(%ebp), %edi
	movl      92(%edi), %edx
	movl      108(%edi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L627
	movl      56(%edi), %eax
	addl      %edx, %eax
.L627:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %eax
	movl      %eax, (%esp)
	movl      %eax, -20(%ebp)
	call      _tr_flush_bits
	movl      -20(%ebp), %edx
	movl      20(%edx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L628
	movl      %eax, %esi
.L628:
	testl     %esi, %esi
	jne       .L655
.L630:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	jne       .L607
.L652:
	xorl      %eax, %eax
.L606:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L655:
	pushl     %eax
	pushl     %esi
	movl      -20(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L630
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L630
	.p2align 2,,3
.L618:
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
	jmp       .L624
	.p2align 2,,3
.L616:
	shrw      $7, %si
	movzwl    %si, %edx
	movzbl    _dist_code@GOTOFF+256(%edx,%ebx), %eax
	jmp       .L651
	.p2align 2,,3
.L615:
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
	jmp       .L624
	.p2align 2,,3
.L654:
	subl      $8, %esp
	pushl     %ecx
	pushl     %edi
	call      longest_match
	movl      %eax, 96(%edi)
	addl      $16, %esp
	jmp       .L614
	.p2align 2,,3
.L653:
	subl      $12, %esp
	pushl     %eax
	call      fill_window
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	cmpl      $261, %edx
	ja        .L611
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L606
.L611:
	testl     %edx, %edx
	jne       .L610
	movl      8(%ebp), %ecx
	movl      108(%ecx), %eax
	cmpl      $2, %eax
	movl      %eax, %edx
	jbe       .L633
	movl      $2, %edx
.L633:
	movl      8(%ebp), %ecx
	cmpl      $4, 12(%ebp)
	movl      %edx, 5812(%ecx)
	je        .L656
	movl      8(%ebp), %esi
	movl      5792(%esi), %ecx
	testl     %ecx, %ecx
	je        .L642
	pushl     $0
	movl      92(%esi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L644
	movl      56(%esi), %eax
	addl      %edx, %eax
.L644:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      %edi, 92(%edx)
	movl      (%edx), %edi
	movl      28(%edi), %esi
	movl      %esi, (%esp)
	movl      %esi, -28(%ebp)
	call      _tr_flush_bits
	movl      -28(%ebp), %edx
	movl      20(%edx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L645
	movl      %eax, %esi
.L645:
	testl     %esi, %esi
	jne       .L657
.L647:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L652
.L642:
	movl      $1, %eax
	jmp       .L606
.L657:
	pushl     %eax
	pushl     %esi
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L647
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L647
.L656:
	pushl     $1
	movl      92(%ecx), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L636
	movl      56(%ecx), %eax
	addl      %edx, %eax
.L636:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      %edi, 92(%edx)
	movl      (%edx), %edi
	movl      28(%edi), %esi
	movl      %esi, (%esp)
	movl      %esi, -24(%ebp)
	call      _tr_flush_bits
	movl      -24(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L637
	movl      %eax, %esi
.L637:
	testl     %esi, %esi
	jne       .L658
.L639:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L606
.L658:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L639
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L639
	.size	deflate_fast, .-deflate_fast
# ----------------------
	.p2align 2,,3
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
	call      .L734
.L734:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L734], %ebx
	.p2align 2,,3
.L661:
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	cmpl      $261, %edx
	jbe       .L724
.L664:
	xorl      %ecx, %ecx
	cmpl      $2, %edx
	jbe       .L716
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
.L667:
	movl      8(%ebp), %esi
	movl      96(%esi), %edx
	movl      112(%esi), %edi
	testl     %ecx, %ecx
	movl      %edx, 120(%esi)
	movl      %edi, 100(%esi)
	movl      $2, 96(%esi)
	je        .L668
	cmpl      128(%esi), %edx
	jae       .L668
	movl      -40(%ebp), %eax
	movl      44(%esi), %edi
	subl      %ecx, %eax
	subl      $262, %edi
	cmpl      %edi, %eax
	jbe       .L725
.L668:
	movl      8(%ebp), %edi
	movl      120(%edi), %eax
	cmpl      $2, %eax
	jbe       .L671
	cmpl      %eax, 96(%edi)
	jbe       .L726
.L671:
	movl      8(%ebp), %edi
	movl      104(%edi), %eax
	testl     %eax, %eax
	jne       .L727
	movl      -40(%ebp), %esi
	movl      8(%ebp), %ecx
	incl      %esi
	movl      $1, 104(%ecx)
	movl      %esi, 108(%ecx)
	decl      116(%ecx)
	jmp       .L661
.L727:
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
	jne       .L689
	pushl     $0
	movl      92(%edi), %edx
	movl      108(%edi), %esi
	subl      %edx, %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %esi
	js        .L691
	movl      56(%edi), %eax
	addl      %edx, %eax
.L691:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edi
	movl      %edi, 92(%ecx)
	movl      (%ecx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -28(%ebp)
	call      _tr_flush_bits
	movl      -28(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L692
	movl      %eax, %esi
.L692:
	testl     %esi, %esi
	jne       .L728
.L689:
	movl      8(%ebp), %edx
	incl      108(%edx)
	decl      116(%edx)
	movl      (%edx), %eax
.L723:
	movl      16(%eax), %edi
	testl     %edi, %edi
	jne       .L661
.L722:
	xorl      %eax, %eax
.L660:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L728:
	pushl     %edx
	pushl     %esi
	movl      -28(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L689
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L689
	.p2align 2,,3
.L726:
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
	ja        .L672
	movzwl    %di, %edx
	movzbl    _dist_code@GOTOFF(%edx,%ebx), %eax
.L721:
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
	.p2align 2,,3
.L674:
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	incl      %edi
	cmpl      -20(%ebp), %edi
	movl      %edi, 108(%esi)
	ja        .L676
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
.L676:
	movl      8(%ebp), %edi
	movl      120(%edi), %edx
	decl      %edx
	testl     %edx, %edx
	movl      %edx, 120(%edi)
	jne       .L674
	movl      108(%edi), %eax
	movl      -16(%ebp), %esi
	incl      %eax
	testl     %esi, %esi
	movl      $0, 104(%edi)
	movl      $2, 96(%edi)
	movl      %eax, 108(%edi)
	je        .L661
	pushl     $0
	movl      92(%edi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L681
	movl      56(%edi), %eax
	addl      %edx, %eax
.L681:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %esi
	movl      108(%esi), %edi
	movl      %edi, 92(%esi)
	movl      (%esi), %edi
	movl      28(%edi), %eax
	movl      %eax, (%esp)
	movl      %eax, -24(%ebp)
	call      _tr_flush_bits
	movl      -24(%ebp), %ecx
	movl      20(%ecx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L682
	movl      %eax, %esi
.L682:
	testl     %esi, %esi
	jne       .L729
.L684:
	movl      8(%ebp), %edi
	movl      (%edi), %eax
	jmp       .L723
.L729:
	pushl     %eax
	pushl     %esi
	movl      -24(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L684
	movl      8(%ecx), %esi
	movl      %esi, 16(%ecx)
	jmp       .L684
	.p2align 2,,3
.L672:
	shrw      $7, %di
	movzwl    %di, %ecx
	movzbl    _dist_code@GOTOFF+256(%ecx,%ebx), %eax
	jmp       .L721
.L725:
	subl      $8, %esp
	pushl     %ecx
	pushl     %esi
	call      longest_match
	addl      $16, %esp
	cmpl      $5, %eax
	movl      %eax, 96(%esi)
	ja        .L717
	cmpl      $1, 136(%esi)
	je        .L718
	cmpl      $3, %eax
	je        .L730
	movl      8(%ebp), %edi
	movl      108(%edi), %ecx
	movl      %ecx, -40(%ebp)
	jmp       .L668
.L730:
	movl      108(%esi), %edx
	movl      %edx, %ecx
	subl      112(%esi), %ecx
	cmpl      $4096, %ecx
	movl      %edx, -40(%ebp)
	jbe       .L668
.L670:
	movl      8(%ebp), %eax
	movl      $2, 96(%eax)
	jmp       .L668
.L718:
	movl      8(%ebp), %edi
	movl      108(%edi), %esi
	movl      %esi, -40(%ebp)
	jmp       .L670
.L717:
	movl      8(%ebp), %esi
	movl      108(%esi), %edx
	movl      %edx, -40(%ebp)
	jmp       .L668
	.p2align 2,,3
.L716:
	movl      8(%ebp), %edi
	movl      108(%edi), %edx
	movl      %edx, -40(%ebp)
	jmp       .L667
	.p2align 2,,3
.L724:
	subl      $12, %esp
	pushl     %eax
	call      fill_window
	movl      8(%ebp), %eax
	movl      116(%eax), %edx
	addl      $16, %esp
	cmpl      $261, %edx
	ja        .L665
	movl      12(%ebp), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L660
.L665:
	testl     %edx, %edx
	jne       .L664
	movl      8(%ebp), %edi
	movl      104(%edi), %edx
	testl     %edx, %edx
	je        .L698
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
.L698:
	movl      8(%ebp), %edi
	movl      108(%edi), %eax
	cmpl      $2, %eax
	movl      %eax, -40(%ebp)
	jbe       .L699
	movl      $2, %eax
.L699:
	movl      8(%ebp), %edx
	cmpl      $4, 12(%ebp)
	movl      %eax, 5812(%edx)
	je        .L731
	movl      8(%ebp), %esi
	movl      5792(%esi), %ecx
	testl     %ecx, %ecx
	je        .L708
	pushl     $0
	movl      92(%esi), %eax
	subl      %eax, -40(%ebp)
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     -40(%ebp)
	js        .L710
	movl      56(%esi), %edx
	addl      %eax, %edx
.L710:
	pushl     %edx
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      %edi, 92(%edx)
	movl      (%edx), %edi
	movl      28(%edi), %esi
	movl      %esi, (%esp)
	movl      %esi, -36(%ebp)
	call      _tr_flush_bits
	movl      -36(%ebp), %edx
	movl      20(%edx), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L711
	movl      %eax, %esi
.L711:
	testl     %esi, %esi
	jne       .L732
.L713:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L722
.L708:
	movl      $1, %eax
	jmp       .L660
.L732:
	pushl     %eax
	pushl     %esi
	movl      -36(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L713
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L713
.L731:
	pushl     $1
	movl      92(%edx), %eax
	subl      %eax, -40(%ebp)
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     -40(%ebp)
	js        .L702
	movl      8(%ebp), %esi
	movl      56(%esi), %edx
	addl      %eax, %edx
.L702:
	pushl     %edx
	pushl     8(%ebp)
	call      _tr_flush_block
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edi
	movl      %edi, 92(%ecx)
	movl      (%ecx), %edi
	movl      28(%edi), %edx
	movl      %edx, (%esp)
	movl      %edx, -32(%ebp)
	call      _tr_flush_bits
	movl      -32(%ebp), %eax
	movl      20(%eax), %esi
	movl      16(%edi), %eax
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L703
	movl      %eax, %esi
.L703:
	testl     %esi, %esi
	jne       .L733
.L705:
	movl      8(%ebp), %eax
	movl      (%eax), %esi
	movl      16(%esi), %edi
	testl     %edi, %edi
	setne     %dl
	movzbl    %dl, %eax
	addl      $2, %eax
	jmp       .L660
.L733:
	pushl     %eax
	pushl     %esi
	movl      -32(%ebp), %eax
	pushl     16(%eax)
	pushl     12(%edi)
	call      memcpy@PLT
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
	jne       .L705
	movl      8(%edx), %esi
	movl      %esi, 16(%edx)
	jmp       .L705
	.size	deflate_slow, .-deflate_slow
# ----------------------
	.p2align 2,,3
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
	call      .L786
.L786:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L786], %ebx
	movl      8(%ebp), %esi
	.p2align 2,,3
.L736:
	movl      116(%esi), %edx
	cmpl      $258, %edx
	jbe       .L780
.L739:
	cmpl      $2, %edx
	movl      $0, 96(%esi)
	jbe       .L742
	movl      108(%esi), %eax
	testl     %eax, %eax
	je        .L742
	movl      56(%esi), %edi
	addl      %eax, %edi
	movzbl    -1(%edi), %ecx
	movl      %ecx, -16(%ebp)
	movzbl    (%edi), %eax
	cmpl      %eax, -16(%ebp)
	movl      %edi, %ecx
	je        .L781
.L742:
	cmpl      $2, 96(%esi)
	jbe       .L750
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
.L753:
	testl     %edx, %edx
	je        .L736
	pushl     $0
	movl      92(%esi), %edx
	movl      108(%esi), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L756
	movl      56(%esi), %eax
	addl      %edx, %eax
.L756:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -20(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -24(%ebp)
	call      _tr_flush_bits
	movl      -24(%ebp), %eax
	movl      -20(%ebp), %ecx
	movl      20(%eax), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L757
	movl      %eax, %edi
.L757:
	testl     %edi, %edi
	jne       .L782
.L759:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L736
.L779:
	xorl      %eax, %eax
.L735:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L782:
	pushl     %eax
	pushl     %edi
	movl      -24(%ebp), %edx
	pushl     16(%edx)
	movl      -20(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L759
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L759
	.p2align 2,,3
.L750:
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
	jmp       .L753
.L781:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L742
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L742
	addl      $258, %edi
.L744:
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	incl      %ecx
	movzbl    (%ecx), %eax
	cmpl      %eax, -16(%ebp)
	jne       .L745
	cmpl      %edi, %ecx
	jb        .L744
.L745:
	subl      %ecx, %edi
	movl      $258, %ecx
	subl      %edi, %ecx
	cmpl      %edx, %ecx
	movl      %ecx, 96(%esi)
	jbe       .L742
	movl      %edx, 96(%esi)
	jmp       .L742
	.p2align 2,,3
.L780:
	subl      $12, %esp
	pushl     %esi
	call      fill_window
	movl      116(%esi), %edx
	addl      $16, %esp
	cmpl      $258, %edx
	ja        .L740
	movl      12(%ebp), %edi
	xorl      %eax, %eax
	testl     %edi, %edi
	je        .L735
.L740:
	testl     %edx, %edx
	jne       .L739
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%esi)
	je        .L783
	movl      5792(%esi), %edi
	testl     %edi, %edi
	je        .L770
	pushl     $0
	movl      92(%esi), %edx
	movl      108(%esi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L772
	movl      56(%esi), %eax
	addl      %edx, %eax
.L772:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -36(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -40(%ebp)
	call      _tr_flush_bits
	movl      -40(%ebp), %edx
	movl      -36(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L773
	movl      %eax, %edi
.L773:
	testl     %edi, %edi
	jne       .L784
.L775:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	je        .L779
.L770:
	movl      $1, %eax
	jmp       .L735
.L784:
	pushl     %eax
	pushl     %edi
	movl      -40(%ebp), %edx
	pushl     16(%edx)
	movl      -36(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L775
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L775
.L783:
	pushl     $1
	movl      92(%esi), %edx
	movl      108(%esi), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L764
	movl      56(%esi), %eax
	addl      %edx, %eax
.L764:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -28(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -32(%ebp)
	call      _tr_flush_bits
	movl      -32(%ebp), %edx
	movl      -28(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L765
	movl      %eax, %edi
.L765:
	testl     %edi, %edi
	jne       .L785
.L767:
	movl      (%esi), %edx
	movl      16(%edx), %esi
	testl     %esi, %esi
	setne     %cl
	movzbl    %cl, %eax
	addl      $2, %eax
	jmp       .L735
.L785:
	pushl     %eax
	pushl     %edi
	movl      -32(%ebp), %edx
	pushl     16(%edx)
	movl      -28(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L767
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L767
	.size	deflate_rle, .-deflate_rle
# ----------------------
	.p2align 2,,3
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
	call      .L824
.L824:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L824], %ebx
	movl      8(%ebp), %esi
	.p2align 2,,3
.L788:
	movl      116(%esi), %eax
	testl     %eax, %eax
	je        .L819
.L791:
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
	je        .L788
	pushl     $0
	movl      92(%esi), %eax
	subl      %eax, %edx
	pushl     %edx
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L796
	movl      56(%esi), %edx
	addl      %eax, %edx
.L796:
	pushl     %edx
	pushl     %esi
	call      _tr_flush_block
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -16(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -20(%ebp)
	call      _tr_flush_bits
	movl      -20(%ebp), %edx
	movl      -16(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L797
	movl      %eax, %edi
.L797:
	testl     %edi, %edi
	jne       .L820
.L799:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L788
.L818:
	xorl      %eax, %eax
.L787:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L820:
	pushl     %eax
	pushl     %edi
	movl      -20(%ebp), %edx
	pushl     16(%edx)
	movl      -16(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L799
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L799
	.p2align 2,,3
.L819:
	subl      $12, %esp
	pushl     %esi
	call      fill_window
	movl      116(%esi), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L791
	movl      12(%ebp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L787
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%esi)
	je        .L821
	movl      5792(%esi), %edi
	testl     %edi, %edi
	je        .L810
	pushl     $0
	movl      92(%esi), %edx
	movl      108(%esi), %ecx
	subl      %edx, %ecx
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ecx
	js        .L812
	movl      56(%esi), %eax
	addl      %edx, %eax
.L812:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -32(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -36(%ebp)
	call      _tr_flush_bits
	movl      -36(%ebp), %edx
	movl      -32(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L813
	movl      %eax, %edi
.L813:
	testl     %edi, %edi
	jne       .L822
.L815:
	movl      (%esi), %edx
	movl      16(%edx), %ecx
	testl     %ecx, %ecx
	je        .L818
.L810:
	movl      $1, %eax
	jmp       .L787
.L822:
	pushl     %eax
	pushl     %edi
	movl      -36(%ebp), %edx
	pushl     16(%edx)
	movl      -32(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L815
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L815
.L821:
	pushl     $1
	movl      92(%esi), %edx
	movl      108(%esi), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L804
	movl      56(%esi), %eax
	addl      %edx, %eax
.L804:
	pushl     %eax
	pushl     %esi
	call      _tr_flush_block
	movl      (%esi), %ecx
	movl      108(%esi), %edx
	movl      28(%ecx), %edi
	movl      %edx, 92(%esi)
	movl      %ecx, -24(%ebp)
	movl      %edi, (%esp)
	movl      %edi, -28(%ebp)
	call      _tr_flush_bits
	movl      -28(%ebp), %edx
	movl      -24(%ebp), %ecx
	movl      20(%edx), %edi
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L805
	movl      %eax, %edi
.L805:
	testl     %edi, %edi
	jne       .L823
.L807:
	movl      (%esi), %edx
	movl      16(%edx), %esi
	testl     %esi, %esi
	setne     %cl
	movzbl    %cl, %eax
	addl      $2, %eax
	jmp       .L787
.L823:
	pushl     %eax
	pushl     %edi
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	movl      -24(%ebp), %eax
	pushl     12(%eax)
	call      memcpy@PLT
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
	jne       .L807
	movl      8(%edx), %edi
	movl      %edi, 16(%edx)
	jmp       .L807
	.size	deflate_huff, .-deflate_huff
# ----------------------
	.p2align 2,,3
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
	jbe       .L435
	movl      %edx, %eax
	subl      %esi, %eax
	addl      $262, %eax
	movl      %eax, -28(%ebp)
.L436:
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
	jb        .L437
	shrl      $2, -12(%ebp)
.L437:
	movl      8(%ebp), %esi
	movl      116(%esi), %edx
	cmpl      %edx, -24(%ebp)
	movl      %edx, -48(%ebp)
	jbe       .L439
	movl      %edx, -24(%ebp)
	.p2align 2,,3
.L439:
	movl      -16(%ebp), %edx
	addl      %ecx, %edx
	movb      -42(%ebp), %al
	movl      -20(%ebp), %esi
	cmpb      %al, (%esi,%edx)
	je        .L937
.L441:
	movl      -36(%ebp), %esi
	andl      %ecx, %esi
	movl      -32(%ebp), %edx
	movzwl    (%edx,%esi,2), %ecx
	cmpl      -28(%ebp), %ecx
	jbe       .L440
	decl      -12(%ebp)
	jne       .L439
.L440:
	movl      -20(%ebp), %eax
	cmpl      -48(%ebp), %eax
	jbe       .L434
	movl      -48(%ebp), %eax
.L434:
	addl      $40, %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L937:
	movb      -41(%ebp), %al
	cmpb      %al, -1(%esi,%edx)
	jne       .L441
	movb      (%edi), %al
	cmpb      %al, (%edx)
	jne       .L441
	incl      %edx
	movb      1(%edi), %al
	cmpb      %al, (%edx)
	jne       .L441
	addl      $2, %edi
	incl      %edx
.L444:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	cmpb      %al, (%edi)
	jne       .L445
	cmpl      -40(%ebp), %edi
	jb        .L444
.L445:
	movl      -40(%ebp), %esi
	subl      %edi, %esi
	movl      $258, %edx
	subl      %esi, %edx
	movl      -40(%ebp), %edi
	subl      $258, %edi
	cmpl      -20(%ebp), %edx
	jle       .L441
	movl      -24(%ebp), %esi
	movl      8(%ebp), %eax
	cmpl      %esi, %edx
	movl      %ecx, 112(%eax)
	movl      %edx, -20(%ebp)
	jge       .L440
	leal      (%edx,%edi), %esi
	movb      -1(%esi), %al
	movb      %al, -41(%ebp)
	movb      (%esi), %dl
	movb      %dl, -42(%ebp)
	jmp       .L441
	.p2align 2,,3
.L435:
	movl      $0, -28(%ebp)
	jmp       .L436
	.size	longest_match, .-longest_match
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
