	.file	"deflate.c"
.globl deflate_copyright
	.section	.rodata
	.align 32
	.type	deflate_copyright,@object
	.size	deflate_copyright,68
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.align 32
	.type	configuration_table,@object
	.size	configuration_table,120
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
	.type	my_version.0,@object
	.size	my_version.0,6
my_version.0:
	.string	"1.2.8"
	.text
	.p2align 2,,3
.globl deflateInit2_
	.type	deflateInit2_,@function
deflateInit2_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	32(%ebp), %eax
	movl	12(%ebp), %edx
	testl	%eax, %eax
	movl	%edx, -16(%ebp)
	movl	8(%ebp), %edi
	movl	16(%ebp), %ecx
	movl	20(%ebp), %esi
	movl	24(%ebp), %ebx
	movl	36(%ebp), %edx
	movl	$1, -28(%ebp)
	je	.L3
	cmpb	$49, (%eax)
	je	.L17
.L3:
	movl	$-6, %eax
.L1:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L17:
	cmpl	$56, %edx
	jne	.L3
	testl	%edi, %edi
	movl	$-2, %eax
	je	.L1
	movl	32(%edi), %edx
	testl	%edx, %edx
	movl	$0, 24(%edi)
	jne	.L5
	movl	$zcalloc, 32(%edi)
	movl	$0, 40(%edi)
.L5:
	movl	36(%edi), %edx
	testl	%edx, %edx
	jne	.L6
	movl	$zcfree, 36(%edi)
.L6:
	cmpl	$-1, -16(%ebp)
	je	.L18
.L7:
	testl	%esi, %esi
	js	.L19
	cmpl	$15, %esi
	jle	.L9
	movl	$2, -28(%ebp)
	subl	$16, %esi
.L9:
	leal	-1(%ebx), %edx
	cmpl	$8, %edx
	ja	.L12
	cmpl	$8, %ecx
	je	.L20
.L12:
	movl	$-2, %eax
	jmp	.L1
.L20:
	cmpl	$7, %esi
	jle	.L12
	cmpl	$15, %esi
	jg	.L12
	movl	-16(%ebp), %ecx
	testl	%ecx, %ecx
	js	.L12
	cmpl	$9, -16(%ebp)
	jg	.L12
	movl	-20(%ebp), %edx
	testl	%edx, %edx
	js	.L12
	cmpl	$4, -20(%ebp)
	jg	.L12
	cmpl	$8, %esi
	je	.L21
.L13:
	pushl	%ecx
	pushl	$5828
	pushl	$1
	pushl	40(%edi)
	call	*32(%edi)
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %ecx
	addl	$16, %esp
	testl	%ecx, %ecx
	movl	$-4, %eax
	je	.L1
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%ecx, 24(%edx)
	movl	%esi, 48(%edx)
	movl	%edx, 28(%edi)
	movl	%edi, (%edx)
	movl	$0, 28(%edx)
	movl	%esi, %ecx
	movl	$1, %edx
	movl	-24(%ebp), %esi
	sall	%cl, %edx
	movl	$1, %eax
	leal	7(%ebx), %ecx
	movl	%edx, 44(%esi)
	sall	%cl, %eax
	decl	%edx
	movl	%edx, 52(%esi)
	movl	%eax, %edx
	decl	%edx
	movl	%eax, 76(%esi)
	movl	%edx, 84(%esi)
	movl	$-1431655765, %eax
	leal	9(%ebx), %edx
	mull	%edx
	movl	%ecx, 80(%esi)
	movl	%edx, %ecx
	movl	-24(%ebp), %esi
	shrl	$1, %ecx
	movl	%ecx, 88(%esi)
	pushl	%eax
	pushl	$2
	pushl	44(%esi)
	pushl	40(%edi)
	call	*32(%edi)
	movl	-24(%ebp), %edx
	addl	$12, %esp
	movl	%eax, 56(%edx)
	pushl	$2
	pushl	44(%edx)
	pushl	40(%edi)
	call	*32(%edi)
	movl	-24(%ebp), %ecx
	addl	$12, %esp
	movl	%eax, 64(%ecx)
	pushl	$2
	pushl	76(%ecx)
	pushl	40(%edi)
	call	*32(%edi)
	leal	6(%ebx), %ecx
	movl	$1, %edx
	movl	-24(%ebp), %ebx
	movl	-24(%ebp), %esi
	addl	$12, %esp
	sall	%cl, %edx
	movl	%eax, 68(%esi)
	movl	$0, 5824(%esi)
	movl	%edx, 5788(%ebx)
	pushl	$4
	pushl	5788(%ebx)
	pushl	40(%edi)
	call	*32(%edi)
	movl	5788(%ebx), %edx
	leal	0(,%edx,4), %esi
	movl	%esi, 12(%ebx)
	movl	56(%ebx), %esi
	addl	$16, %esp
	testl	%esi, %esi
	movl	%eax, %ecx
	movl	%eax, 8(%ebx)
	je	.L16
	movl	64(%ebx), %eax
	testl	%eax, %eax
	je	.L16
	movl	68(%ebx), %esi
	testl	%esi, %esi
	je	.L16
	testl	%ecx, %ecx
	je	.L16
	movl	%edx, %esi
	andl	$-2, %esi
	leal	(%esi,%ecx), %ebx
	movl	-24(%ebp), %esi
	movl	%ebx, 5796(%esi)
	leal	(%edx,%edx,2), %ebx
	leal	(%ebx,%ecx), %edx
	movl	-16(%ebp), %ebx
	movl	-20(%ebp), %ecx
	movl	%edx, 5784(%esi)
	movl	%ebx, 132(%esi)
	movl	%ecx, 136(%esi)
	movb	$8, 36(%esi)
	movl	%edi, 8(%ebp)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	jmp	deflateReset
	.p2align 2,,3
.L16:
	movl	-24(%ebp), %edx
	movl	z_errmsg+24, %ebx
	subl	$12, %esp
	movl	$666, 4(%edx)
	movl	%ebx, 24(%edi)
	pushl	%edi
	call	deflateEnd
	movl	$-4, %eax
	jmp	.L1
.L21:
	movl	$9, %esi
	jmp	.L13
	.p2align 2,,3
.L19:
	movl	$0, -28(%ebp)
	negl	%esi
	jmp	.L9
.L18:
	movl	$6, -16(%ebp)
	jmp	.L7
.Lfe1:
	.size	deflateInit2_,.Lfe1-deflateInit2_
	.p2align 2,,3
.globl deflateSetDictionary
	.type	deflateSetDictionary,@function
deflateSetDictionary:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	movl	12(%ebp), %esi
	movl	16(%ebp), %ebx
	je	.L26
	movl	8(%ebp), %edx
	movl	28(%edx), %edi
	testl	%edi, %edi
	je	.L26
	testl	%esi, %esi
	je	.L26
	movl	24(%edi), %edx
	cmpl	$2, %edx
	movl	%edx, -16(%ebp)
	je	.L26
	decl	%edx
	je	.L65
.L27:
	movl	116(%edi), %ecx
	testl	%ecx, %ecx
	je	.L25
	.p2align 2,,3
.L26:
	movl	$-2, %eax
.L22:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L25:
	cmpl	$1, -16(%ebp)
	je	.L66
.L28:
	movl	44(%edi), %eax
	cmpl	%eax, %ebx
	movl	$0, 24(%edi)
	jb	.L29
	movl	-16(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L67
.L30:
	subl	%eax, %ebx
	addl	%ebx, %esi
	movl	%eax, %ebx
.L29:
	movl	8(%ebp), %edx
	movl	4(%edx), %eax
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	(%ecx), %edx
	movl	%ebx, 4(%eax)
	movl	%esi, (%eax)
	pushl	%edi
	movl	%edx, -24(%ebp)
	call	fill_window
	movl	116(%edi), %edx
	addl	$16, %esp
	cmpl	$2, %edx
	movl	%edx, %eax
	jbe	.L64
	.p2align 2,,3
.L62:
	subl	$2, %eax
	movl	68(%edi), %esi
	movl	88(%edi), %ecx
	movl	%eax, -60(%ebp)
	movl	%esi, -40(%ebp)
	movl	%ecx, -48(%ebp)
	movl	56(%edi), %edx
	movl	84(%edi), %eax
	movl	52(%edi), %esi
	movl	64(%edi), %ecx
	movl	108(%edi), %ebx
	movl	%edx, -32(%ebp)
	movl	%eax, -44(%ebp)
	movl	%esi, -28(%ebp)
	movl	%ecx, -36(%ebp)
	.p2align 2,,3
.L58:
	movl	72(%edi), %eax
	movb	-48(%ebp), %cl
	movl	-32(%ebp), %edx
	sall	%cl, %eax
	movzbl	2(%ebx,%edx), %ecx
	xorl	%ecx, %eax
	andl	-44(%ebp), %eax
	movl	-40(%ebp), %esi
	movl	-28(%ebp), %edx
	movw	(%esi,%eax,2), %cx
	andl	%ebx, %edx
	movl	-36(%ebp), %esi
	movw	%cx, (%esi,%edx,2)
	movl	-40(%ebp), %ecx
	movw	%bx, (%ecx,%eax,2)
	incl	%ebx
	decl	-60(%ebp)
	movl	%eax, 72(%edi)
	jne	.L58
	subl	$12, %esp
	movl	%ebx, 108(%edi)
	movl	$2, 116(%edi)
	pushl	%edi
	call	fill_window
	movl	116(%edi), %edx
	addl	$16, %esp
	cmpl	$2, %edx
	movl	%edx, %eax
	ja	.L62
.L64:
	movl	108(%edi), %ecx
	addl	%edx, %ecx
	movl	%edx, 5812(%edi)
	movl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	-20(%ebp), %esi
	movl	-16(%ebp), %ebx
	movl	%ecx, 108(%edi)
	movl	$0, 116(%edi)
	movl	$2, 120(%edi)
	movl	$2, 96(%edi)
	movl	$0, 104(%edi)
	movl	%eax, (%edx)
	movl	%esi, 4(%edx)
	movl	%ecx, 92(%edi)
	movl	%ebx, 24(%edi)
	xorl	%eax, %eax
	jmp	.L22
.L67:
	movl	76(%edi), %eax
	movl	68(%edi), %edx
	sall	$1, %eax
	movw	$0, -2(%eax,%edx)
	subl	$2, %eax
	pushl	%ecx
	pushl	%eax
	pushl	$0
	pushl	%edx
	call	memset
	addl	$16, %esp
	movl	$0, 108(%edi)
	movl	$0, 92(%edi)
	movl	$0, 5812(%edi)
	movl	44(%edi), %eax
	jmp	.L30
.L66:
	pushl	%ecx
	pushl	%ebx
	pushl	%esi
	movl	8(%ebp), %eax
	pushl	48(%eax)
	call	adler32
	movl	8(%ebp), %ecx
	movl	%eax, 48(%ecx)
	addl	$16, %esp
	jmp	.L28
.L65:
	cmpl	$42, 4(%edi)
	jne	.L26
	jmp	.L27
.Lfe2:
	.size	deflateSetDictionary,.Lfe2-deflateSetDictionary
	.p2align 2,,3
.globl deflateReset
	.type	deflateReset,@function
deflateReset:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	movl	8(%ebp), %esi
	testl	%esi, %esi
	pushl	%ebx
	je	.L70
	movl	28(%esi), %ebx
	testl	%ebx, %ebx
	je	.L70
	movl	32(%esi), %edx
	testl	%edx, %edx
	je	.L70
	movl	36(%esi), %edx
	testl	%edx, %edx
	jne	.L69
	.p2align 2,,3
.L70:
	movl	$-2, %ebx
.L71:
	testl	%ebx, %ebx
	je	.L79
.L77:
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	popl	%esi
	leave
	ret
	.p2align 2,,3
.L79:
	subl	$12, %esp
	pushl	28(%esi)
	call	lm_init
	addl	$16, %esp
	jmp	.L77
	.p2align 2,,3
.L69:
	movl	$2, 44(%esi)
	movl	24(%ebx), %eax
	movl	8(%ebx), %ecx
	testl	%eax, %eax
	movl	$0, 20(%esi)
	movl	$0, 8(%esi)
	movl	$0, 24(%esi)
	movl	$0, 20(%ebx)
	movl	%ecx, 16(%ebx)
	js	.L80
.L72:
	movl	24(%ebx), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	sete	%dl
	decl	%edx
	andl	$-71, %edx
	addl	$113, %edx
	cmpl	$2, %ecx
	movl	%edx, 4(%ebx)
	je	.L81
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	call	adler32
.L78:
	movl	$0, 40(%ebx)
	movl	%eax, 48(%esi)
	movl	%ebx, (%esp)
	call	_tr_init
	xorl	%ebx, %ebx
	addl	$16, %esp
	jmp	.L71
.L81:
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	call	crc32
	jmp	.L78
.L80:
	negl	%eax
	movl	%eax, 24(%ebx)
	jmp	.L72
.Lfe3:
	.size	deflateReset,.Lfe3-deflateReset
	.p2align 2,,3
.globl deflateParams
	.type	deflateParams,@function
deflateParams:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	movl	12(%ebp), %ebx
	movl	16(%ebp), %edi
	movl	$0, -20(%ebp)
	je	.L87
	movl	28(%edx), %esi
	testl	%esi, %esi
	je	.L87
	cmpl	$-1, %ebx
	je	.L93
.L85:
	cmpl	$9, %ebx
	ja	.L87
	testl	%edi, %edi
	js	.L87
	cmpl	$4, %edi
	jle	.L86
	.p2align 2,,3
.L87:
	movl	$-2, %eax
.L82:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L86:
	movl	132(%esi), %eax
	leal	(%eax,%eax,2), %ecx
	movl	%eax, -28(%ebp)
	cmpl	136(%esi), %edi
	movl	configuration_table+8(,%ecx,4), %eax
	movl	%eax, -16(%ebp)
	je	.L94
.L89:
	movl	8(%edx), %eax
	testl	%eax, %eax
	jne	.L95
.L88:
	cmpl	%ebx, -28(%ebp)
	je	.L91
	leal	(%ebx,%ebx,2), %ecx
	sall	$2, %ecx
	movzwl	configuration_table+2(%ecx), %edx
	movl	%ebx, 132(%esi)
	movzwl	configuration_table(%ecx), %ebx
	movl	%edx, 128(%esi)
	movl	%ebx, 140(%esi)
	movzwl	configuration_table+4(%ecx), %edx
	movzwl	configuration_table+6(%ecx), %ebx
	movl	%edx, 144(%esi)
	movl	%ebx, 124(%esi)
.L91:
	movl	%edi, 136(%esi)
	movl	-20(%ebp), %eax
	jmp	.L82
.L95:
	subl	$8, %esp
	pushl	$5
	pushl	%edx
	call	deflate
	addl	$16, %esp
	cmpl	$-5, %eax
	movl	%eax, -20(%ebp)
	je	.L96
	movl	132(%esi), %eax
	movl	%eax, -28(%ebp)
	jmp	.L88
.L96:
	xorl	%ecx, %ecx
	cmpl	$0, 20(%esi)
	sete	%cl
	decl	%ecx
	andl	$-5, %ecx
	movl	132(%esi), %edx
	movl	%ecx, -20(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L88
.L94:
	leal	(%ebx,%ebx,2), %ecx
	cmpl	configuration_table+8(,%ecx,4), %eax
	jne	.L89
	jmp	.L88
	.p2align 2,,3
.L93:
	movl	$6, %ebx
	jmp	.L85
.Lfe4:
	.size	deflateParams,.Lfe4-deflateParams
	.p2align 2,,3
.globl deflateBound
	.type	deflateBound,@function
deflateBound:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%edi
	movl	12(%ebp), %ebx
	leal	7(%ebx), %eax
	shrl	$3, %eax
	leal	63(%ebx), %esi
	leal	(%eax,%ebx), %edi
	shrl	$6, %esi
	movl	8(%ebp), %ecx
	leal	(%esi,%edi), %eax
	testl	%ecx, %ecx
	leal	5(%eax), %edi
	je	.L99
	movl	28(%ecx), %edx
	testl	%edx, %edx
	jne	.L98
.L99:
	addl	$11, %eax
.L97:
	popl	%ebx
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L98:
	movl	24(%edx), %eax
	cmpl	$1, %eax
	je	.L102
	cmpl	$1, %eax
	jle	.L124
	cmpl	$2, %eax
	je	.L105
.L119:
	movl	$6, %esi
.L100:
	cmpl	$15, 48(%edx)
	je	.L125
.L123:
	leal	(%esi,%edi), %eax
	jmp	.L97
	.p2align 2,,3
.L125:
	cmpl	$15, 80(%edx)
	jne	.L123
	movl	%ebx, %edi
	shrl	$12, %edi
	leal	(%edi,%ebx), %edx
	shrl	$14, %ebx
	addl	%ebx, %edx
	shrl	$11, %ebx
	addl	%ebx, %edx
	leal	7(%esi,%edx), %eax
	jmp	.L97
.L105:
	movl	28(%edx), %eax
	testl	%eax, %eax
	movl	$18, %esi
	movl	%eax, -16(%ebp)
	je	.L100
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L107
	movl	20(%eax), %esi
	addl	$20, %esi
.L107:
	movl	-16(%ebp), %eax
	movl	28(%eax), %ecx
	testl	%ecx, %ecx
	je	.L108
	.p2align 2,,3
.L109:
	movb	(%ecx), %al
	incl	%esi
	incl	%ecx
	testb	%al, %al
	jne	.L109
.L108:
	movl	-16(%ebp), %eax
	movl	36(%eax), %ecx
	testl	%ecx, %ecx
	je	.L113
	.p2align 2,,3
.L114:
	movb	(%ecx), %al
	incl	%esi
	incl	%ecx
	testb	%al, %al
	jne	.L114
.L113:
	movl	-16(%ebp), %eax
	movl	44(%eax), %ecx
	testl	%ecx, %ecx
	je	.L100
	addl	$2, %esi
	jmp	.L100
.L124:
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L100
	jmp	.L119
	.p2align 2,,3
.L102:
	movl	108(%edx), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
	leal	6(,%ecx,4), %esi
	jmp	.L100
.Lfe5:
	.size	deflateBound,.Lfe5-deflateBound
	.p2align 2,,3
.globl deflate
	.type	deflate,@function
deflate:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	.L315
	movl	8(%ebp), %edx
	movl	28(%edx), %esi
	testl	%esi, %esi
	je	.L315
	cmpl	$5, 12(%ebp)
	jg	.L315
	movl	12(%ebp), %ecx
	testl	%ecx, %ecx
	js	.L315
	movl	8(%ebp), %edx
	movl	12(%edx), %ebx
	testl	%ebx, %ebx
	je	.L130
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	.L131
	movl	4(%edx), %edi
	testl	%edi, %edi
	jne	.L130
.L131:
	movl	4(%esi), %eax
	cmpl	$666, %eax
	movl	%eax, %edx
	je	.L317
.L129:
	movl	8(%ebp), %ebx
	movl	16(%ebx), %edi
	testl	%edi, %edi
	jne	.L132
	movl	z_errmsg+28, %ecx
	movl	%ecx, 24(%ebx)
.L314:
	movl	$-5, %eax
	.p2align 2,,3
.L126:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L132:
	movl	8(%ebp), %ebx
	movl	40(%esi), %edi
	movl	%ebx, (%esi)
	cmpl	$42, %edx
	movl	12(%ebp), %ebx
	movl	%edi, -16(%ebp)
	movl	%ebx, 40(%esi)
	je	.L318
.L133:
	cmpl	$69, %eax
	je	.L319
.L292:
	movl	20(%esi), %edi
.L166:
	cmpl	$73, %eax
	je	.L320
.L182:
	cmpl	$91, %eax
	je	.L321
.L198:
	cmpl	$103, %eax
	je	.L322
.L214:
	testl	%edi, %edi
	jne	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L229
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	sall	$1, %eax
	sall	$1, %edx
	cmpl	$4, 12(%ebp)
	jle	.L231
	subl	$9, %edx
.L231:
	cmpl	$4, -16(%ebp)
	jle	.L232
	subl	$9, %eax
.L232:
	cmpl	%eax, %edx
	jg	.L229
	cmpl	$4, 12(%ebp)
	je	.L229
.L313:
	movl	z_errmsg+28, %ecx
	movl	8(%ebp), %esi
	movl	%ecx, 24(%esi)
	jmp	.L314
.L229:
	movl	4(%esi), %eax
	cmpl	$666, %eax
	je	.L324
	testl	%ecx, %ecx
	jne	.L236
.L309:
	movl	116(%esi), %ebx
	testl	%ebx, %ebx
	jne	.L236
	movl	12(%ebp), %edx
	testl	%edx, %edx
	je	.L235
	cmpl	$666, %eax
	je	.L235
.L236:
	movl	136(%esi), %eax
	cmpl	$2, %eax
	je	.L325
	cmpl	$3, %eax
	je	.L326
	subl	$8, %esp
	movl	132(%esi), %ecx
	pushl	12(%ebp)
	leal	(%ecx,%ecx,2), %edi
	pushl	%esi
	call	*configuration_table+8(,%edi,4)
.L310:
	leal	-2(%eax), %ebx
	addl	$16, %esp
	cmpl	$1, %ebx
	movl	%eax, %edx
	ja	.L241
	movl	$666, 4(%esi)
.L241:
	testl	%edx, %edx
	je	.L243
	cmpl	$2, %edx
	je	.L243
	decl	%edx
	je	.L327
.L235:
	xorl	%eax, %eax
	cmpl	$4, 12(%ebp)
	jne	.L126
	movl	24(%esi), %edx
	testl	%edx, %edx
	movl	$1, %eax
	jle	.L126
	cmpl	$2, %edx
	je	.L328
	movl	8(%ebp), %edi
	movl	48(%edi), %ecx
	movl	%ecx, %ebx
	movl	20(%esi), %edi
	movl	8(%esi), %edx
	shrl	$24, %ebx
	movb	%bl, (%edi,%edx)
	movl	20(%esi), %ebx
	movl	8(%esi), %edi
	incl	%ebx
	shrl	$16, %ecx
	movl	%ebx, 20(%esi)
	movb	%cl, (%ebx,%edi)
	movl	8(%ebp), %eax
	movzwl	48(%eax), %ebx
	movl	20(%esi), %edi
	movl	%ebx, %edx
	incl	%edi
	movl	8(%esi), %ecx
	shrl	$8, %edx
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	movl	20(%esi), %edi
	incl	%edi
	movl	8(%esi), %edx
	movl	%edi, 20(%esi)
	movb	%bl, (%edi,%edx)
.L311:
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	subl	$12, %esp
	incl	20(%esi)
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L286
	movl	%eax, %ebx
.L286:
	testl	%ebx, %ebx
	jne	.L329
.L288:
	movl	24(%esi), %eax
	testl	%eax, %eax
	jle	.L290
	negl	%eax
	movl	%eax, 24(%esi)
.L290:
	xorl	%eax, %eax
	cmpl	$0, 20(%esi)
	sete	%al
	jmp	.L126
.L329:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L288
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L288
.L328:
	movl	8(%ebp), %ebx
	movl	20(%esi), %edi
	movl	8(%esi), %edx
	movb	48(%ebx), %cl
	movb	%cl, (%edi,%edx)
	movl	20(%esi), %edi
	movl	48(%ebx), %ecx
	movl	8(%esi), %edx
	incl	%edi
	shrl	$8, %ecx
	movl	%edi, 20(%esi)
	movb	%cl, (%edi,%edx)
	movl	20(%esi), %edi
	movl	8(%esi), %ecx
	movzwl	50(%ebx), %edx
	incl	%edi
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	movl	20(%esi), %edi
	movl	8(%esi), %ecx
	movzbl	51(%ebx), %edx
	incl	%edi
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	movl	20(%esi), %edi
	movl	8(%esi), %ecx
	movb	8(%ebx), %dl
	incl	%edi
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	movl	20(%esi), %edi
	movl	8(%ebx), %ecx
	incl	%edi
	movl	8(%esi), %edx
	shrl	$8, %ecx
	movl	%edi, 20(%esi)
	movb	%cl, (%edi,%edx)
	movl	20(%esi), %edi
	incl	%edi
	movl	8(%esi), %ecx
	movzwl	10(%ebx), %edx
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	movl	20(%esi), %edi
	incl	%edi
	movl	8(%esi), %ecx
	movzbl	11(%ebx), %edx
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	jmp	.L311
.L327:
	cmpl	$1, 12(%ebp)
	je	.L330
	cmpl	$5, 12(%ebp)
	je	.L247
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	%esi
	call	_tr_stored_block
	addl	$16, %esp
	cmpl	$3, 12(%ebp)
	je	.L331
.L247:
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	subl	$12, %esp
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L275
	movl	%eax, %ebx
.L275:
	testl	%ebx, %ebx
	jne	.L332
.L277:
	testl	%eax, %eax
	jne	.L235
.L316:
	movl	$-1, 40(%esi)
.L312:
	xorl	%eax, %eax
	jmp	.L126
.L332:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L306
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	movl	8(%ebp), %edi
	movl	16(%edi), %eax
	jmp	.L277
.L306:
	movl	8(%ebp), %edx
	movl	16(%edx), %eax
	jmp	.L277
.L331:
	movl	76(%esi), %edx
	movl	68(%esi), %ebx
	sall	$1, %edx
	movw	$0, -2(%edx,%ebx)
	subl	$2, %edx
	pushl	%ecx
	pushl	%edx
	pushl	$0
	pushl	%ebx
	call	memset
	movl	116(%esi), %edi
	addl	$16, %esp
	testl	%edi, %edi
	jne	.L247
	movl	$0, 108(%esi)
	movl	$0, 92(%esi)
	movl	$0, 5812(%esi)
	jmp	.L247
	.p2align 2,,3
.L330:
	subl	$12, %esp
	pushl	%esi
	call	_tr_align
	addl	$16, %esp
	jmp	.L247
	.p2align 2,,3
.L243:
	movl	8(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	jne	.L312
	jmp	.L316
.L326:
	subl	$8, %esp
	pushl	12(%ebp)
	pushl	%esi
	call	deflate_rle
	jmp	.L310
.L325:
	subl	$8, %esp
	pushl	12(%ebp)
	pushl	%esi
	call	deflate_huff
	jmp	.L310
.L324:
	testl	%ecx, %ecx
	je	.L309
	jmp	.L313
.L323:
	movl	8(%ebp), %ebx
	subl	$12, %esp
	movl	28(%ebx), %edi
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L224
	movl	%eax, %ebx
.L224:
	testl	%ebx, %ebx
	jne	.L333
.L226:
	testl	%eax, %eax
	je	.L316
	movl	8(%ebp), %edi
	movl	4(%edi), %ecx
	jmp	.L229
.L333:
	pushl	%ecx
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L304
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	movl	8(%ebp), %edi
	movl	16(%edi), %eax
	jmp	.L226
.L304:
	movl	8(%ebp), %edx
	movl	16(%edx), %eax
	jmp	.L226
.L322:
	movl	28(%esi), %edx
	movl	44(%edx), %ebx
	testl	%ebx, %ebx
	je	.L215
	leal	2(%edi), %ecx
	movl	12(%esi), %edx
	cmpl	%edx, %ecx
	ja	.L334
.L216:
	leal	2(%edi), %ecx
	cmpl	%edx, %ecx
	ja	.L214
	movl	8(%ebp), %eax
	movl	8(%esi), %ebx
	movb	48(%eax), %dl
	movb	%dl, (%edi,%ebx)
	movl	8(%ebp), %ebx
	movl	20(%esi), %edi
	movl	48(%ebx), %ecx
	movl	8(%esi), %edx
	incl	%edi
	shrl	$8, %ecx
	movl	%edi, 20(%esi)
	movb	%cl, (%edi,%edx)
	incl	20(%esi)
	pushl	%edi
	pushl	$0
	pushl	$0
	pushl	$0
	call	crc32
	movl	%eax, 48(%ebx)
	movl	$113, 4(%esi)
	addl	$16, %esp
	movl	20(%esi), %edi
	jmp	.L214
.L334:
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	subl	$12, %esp
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L217
	movl	%eax, %ebx
.L217:
	testl	%ebx, %ebx
	jne	.L335
.L303:
	movl	20(%esi), %edi
	movl	12(%esi), %edx
	jmp	.L216
.L335:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L303
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L303
	.p2align 2,,3
.L215:
	movl	$113, 4(%esi)
	jmp	.L214
.L321:
	movl	28(%esi), %ebx
	movl	36(%ebx), %eax
	testl	%eax, %eax
	je	.L199
	movl	%edi, %ecx
.L200:
	cmpl	12(%esi), %edi
	je	.L336
.L203:
	movl	32(%esi), %edx
	movl	36(%ebx), %eax
	movzbl	(%edx,%eax), %ebx
	incl	%edx
	movl	%edx, 32(%esi)
	movl	8(%esi), %edx
	movb	%bl, (%edi,%edx)
	movl	20(%esi), %eax
	incl	%eax
	testl	%ebx, %ebx
	movl	%eax, 20(%esi)
	je	.L337
	movl	%eax, %edi
	movl	28(%esi), %ebx
	jmp	.L200
.L337:
	movl	%eax, %edi
.L201:
	movl	28(%esi), %eax
	movl	44(%eax), %edx
	testl	%edx, %edx
	je	.L211
	cmpl	%ecx, %edi
	ja	.L338
.L211:
	testl	%ebx, %ebx
	jne	.L301
.L199:
	movl	$103, 4(%esi)
	movl	$103, %eax
	jmp	.L198
.L301:
	movl	4(%esi), %eax
	jmp	.L198
.L338:
	subl	%ecx, %edi
	pushl	%eax
	pushl	%edi
	addl	8(%esi), %ecx
	pushl	%ecx
	movl	8(%ebp), %ecx
	pushl	48(%ecx)
	call	crc32
	movl	8(%ebp), %edi
	movl	%eax, 48(%edi)
	addl	$16, %esp
	movl	20(%esi), %edi
	jmp	.L211
	.p2align 2,,3
.L336:
	movl	44(%ebx), %eax
	testl	%eax, %eax
	je	.L204
	cmpl	%ecx, %edi
	ja	.L339
.L204:
	movl	8(%ebp), %ebx
	subl	$12, %esp
	movl	28(%ebx), %edi
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L205
	movl	%eax, %ebx
.L205:
	testl	%ebx, %ebx
	jne	.L340
.L207:
	movl	20(%esi), %edi
	cmpl	12(%esi), %edi
	movl	%edi, %ecx
	je	.L308
	movl	28(%esi), %ebx
	jmp	.L203
.L308:
	movl	$1, %ebx
	jmp	.L201
.L340:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L207
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L207
.L339:
	subl	%ecx, %edi
	pushl	%eax
	pushl	%edi
	addl	8(%esi), %ecx
	pushl	%ecx
	movl	8(%ebp), %edi
	pushl	48(%edi)
	call	crc32
	movl	%eax, 48(%edi)
	addl	$16, %esp
	jmp	.L204
.L320:
	movl	28(%esi), %ebx
	movl	28(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L183
	movl	%edi, %ecx
.L184:
	cmpl	12(%esi), %edi
	je	.L341
.L187:
	movl	32(%esi), %edx
	movl	28(%ebx), %eax
	movzbl	(%edx,%eax), %ebx
	incl	%edx
	movl	%edx, 32(%esi)
	movl	8(%esi), %edx
	movb	%bl, (%edi,%edx)
	movl	20(%esi), %eax
	incl	%eax
	testl	%ebx, %ebx
	movl	%eax, 20(%esi)
	je	.L342
	movl	%eax, %edi
	movl	28(%esi), %ebx
	jmp	.L184
.L342:
	movl	%eax, %edi
.L185:
	movl	28(%esi), %eax
	movl	44(%eax), %edx
	testl	%edx, %edx
	je	.L195
	cmpl	%ecx, %edi
	ja	.L343
.L195:
	testl	%ebx, %ebx
	jne	.L298
	movl	$0, 32(%esi)
.L183:
	movl	$91, 4(%esi)
	movl	$91, %eax
	jmp	.L182
.L298:
	movl	4(%esi), %eax
	jmp	.L182
.L343:
	subl	%ecx, %edi
	pushl	%eax
	pushl	%edi
	addl	8(%esi), %ecx
	pushl	%ecx
	movl	8(%ebp), %ecx
	pushl	48(%ecx)
	call	crc32
	movl	8(%ebp), %edi
	movl	%eax, 48(%edi)
	addl	$16, %esp
	movl	20(%esi), %edi
	jmp	.L195
	.p2align 2,,3
.L341:
	movl	44(%ebx), %edx
	testl	%edx, %edx
	je	.L188
	cmpl	%ecx, %edi
	ja	.L344
.L188:
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	subl	$12, %esp
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L189
	movl	%eax, %ebx
.L189:
	testl	%ebx, %ebx
	jne	.L345
.L191:
	movl	20(%esi), %edi
	cmpl	12(%esi), %edi
	movl	%edi, %ecx
	je	.L307
	movl	28(%esi), %ebx
	jmp	.L187
.L307:
	movl	$1, %ebx
	jmp	.L185
.L345:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L191
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L191
.L344:
	subl	%ecx, %edi
	pushl	%eax
	pushl	%edi
	addl	8(%esi), %ecx
	pushl	%ecx
	movl	8(%ebp), %edi
	pushl	48(%edi)
	call	crc32
	movl	8(%ebp), %ebx
	movl	%eax, 48(%ebx)
	addl	$16, %esp
	jmp	.L188
.L319:
	movl	28(%esi), %ebx
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	movl	%ebx, -24(%ebp)
	je	.L167
	movzwl	20(%ebx), %edx
	movl	20(%esi), %edi
	cmpl	%edx, 32(%esi)
	movl	%edi, -20(%ebp)
	jae	.L169
.L178:
	cmpl	12(%esi), %edi
	je	.L346
.L171:
	movl	32(%esi), %eax
	movl	16(%ebx), %edx
	movb	(%eax,%edx), %bl
	movl	8(%esi), %ecx
	movb	%bl, (%edi,%ecx)
	movl	20(%esi), %ecx
	movl	32(%esi), %edx
	incl	%ecx
	incl	%edx
	movl	28(%esi), %ebx
	movl	%ecx, 20(%esi)
	movl	%edx, 32(%esi)
	movzwl	20(%ebx), %eax
	cmpl	%eax, %edx
	movl	%ebx, -24(%ebp)
	movl	%ecx, %edi
	jae	.L169
	movl	%ecx, %edi
	jmp	.L178
.L169:
	movl	44(%ebx), %edx
	testl	%edx, %edx
	je	.L179
	cmpl	-20(%ebp), %edi
	ja	.L347
.L179:
	movl	20(%ebx), %edx
	cmpl	%edx, 32(%esi)
	je	.L348
	movl	4(%esi), %eax
	jmp	.L166
.L348:
	movl	$0, 32(%esi)
	movl	$73, 4(%esi)
	movl	$73, %eax
	jmp	.L166
.L347:
	subl	-20(%ebp), %edi
	pushl	%edx
	pushl	%edi
	movl	8(%esi), %ecx
	addl	%ecx, -20(%ebp)
	pushl	-20(%ebp)
	movl	8(%ebp), %eax
	pushl	48(%eax)
	call	crc32
	movl	8(%ebp), %edi
	movl	%eax, 48(%edi)
	addl	$16, %esp
	movl	20(%esi), %edi
	movl	28(%esi), %ebx
	jmp	.L179
	.p2align 2,,3
.L346:
	movl	-24(%ebp), %eax
	movl	44(%eax), %ecx
	testl	%ecx, %ecx
	je	.L172
	cmpl	-20(%ebp), %edi
	ja	.L349
.L172:
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	subl	$12, %esp
	pushl	%edi
	call	_tr_flush_bits
	movl	8(%ebp), %ecx
	movl	20(%edi), %ebx
	movl	16(%ecx), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L173
	movl	%eax, %ebx
.L173:
	testl	%ebx, %ebx
	jne	.L350
.L175:
	movl	20(%esi), %edi
	cmpl	12(%esi), %edi
	movl	%edi, -20(%ebp)
	je	.L293
	movl	28(%esi), %ebx
	jmp	.L171
.L293:
	movl	28(%esi), %ebx
	jmp	.L169
.L350:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	movl	8(%ebp), %eax
	pushl	12(%eax)
	call	memcpy
	movl	8(%ebp), %ecx
	subl	%ebx, 16(%ecx)
	movl	20(%edi), %edx
	addl	%ebx, 12(%ecx)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%ecx)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L175
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L175
.L349:
	subl	-20(%ebp), %edi
	pushl	%eax
	pushl	%edi
	movl	8(%esi), %edx
	addl	%edx, -20(%ebp)
	pushl	-20(%ebp)
	movl	8(%ebp), %edi
	pushl	48(%edi)
	call	crc32
	movl	8(%ebp), %ebx
	movl	%eax, 48(%ebx)
	addl	$16, %esp
	jmp	.L172
.L167:
	movl	$73, 4(%esi)
	movl	$73, %eax
	jmp	.L292
.L318:
	cmpl	$2, 24(%esi)
	je	.L351
	movl	48(%esi), %edi
	subl	$8, %edi
	sall	$12, %edi
	cmpl	$1, 136(%esi)
	leal	2048(%edi), %ebx
	jle	.L352
.L155:
	xorl	%eax, %eax
.L156:
	sall	$6, %eax
	orl	%eax, %ebx
	movl	108(%esi), %eax
	testl	%eax, %eax
	je	.L161
	orl	$32, %ebx
.L161:
	movl	$31, %ecx
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%ebx, %edi
	subl	%edx, %edi
	leal	31(%edi), %ebx
	movl	%ebx, %ecx
	movl	20(%esi), %edi
	movl	8(%esi), %edx
	shrl	$8, %ecx
	movl	$113, 4(%esi)
	movb	%cl, (%edi,%edx)
	movl	20(%esi), %ecx
	incl	%ecx
	movl	8(%esi), %edi
	movl	%ecx, 20(%esi)
	movb	%bl, (%ecx,%edi)
	movl	20(%esi), %ebx
	movl	108(%esi), %edx
	incl	%ebx
	testl	%edx, %edx
	movl	%ebx, 20(%esi)
	je	.L163
	movl	8(%ebp), %edi
	movl	48(%edi), %edx
	movl	%edx, %ecx
	movl	8(%esi), %edi
	shrl	$24, %ecx
	movb	%cl, (%ebx,%edi)
	movl	20(%esi), %ebx
	movl	8(%esi), %edi
	incl	%ebx
	shrl	$16, %edx
	movl	%ebx, 20(%esi)
	movb	%dl, (%ebx,%edi)
	movl	8(%ebp), %eax
	movzwl	48(%eax), %ebx
	movl	20(%esi), %edi
	movl	%ebx, %edx
	incl	%edi
	movl	8(%esi), %ecx
	shrl	$8, %edx
	movl	%edi, 20(%esi)
	movb	%dl, (%edi,%ecx)
	movl	20(%esi), %edi
	incl	%edi
	movl	8(%esi), %edx
	movl	%edi, 20(%esi)
	movb	%bl, (%edi,%edx)
	incl	20(%esi)
.L163:
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	call	adler32
	movl	8(%ebp), %edx
	movl	%eax, 48(%edx)
	addl	$16, %esp
	movl	4(%esi), %eax
	jmp	.L133
.L352:
	movl	132(%esi), %edx
	cmpl	$1, %edx
	jle	.L155
	cmpl	$5, %edx
	movl	$1, %eax
	jle	.L156
	xorl	%eax, %eax
	cmpl	$6, %edx
	setne	%al
	addl	$2, %eax
	jmp	.L156
.L351:
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	call	crc32
	movl	8(%ebp), %edx
	movl	20(%esi), %ecx
	movl	%eax, 48(%edx)
	movl	8(%esi), %eax
	movb	$31, (%ecx,%eax)
	movl	20(%esi), %edi
	incl	%edi
	movl	8(%esi), %ebx
	movl	%edi, 20(%esi)
	movb	$-117, (%edi,%ebx)
	movl	20(%esi), %ecx
	incl	%ecx
	movl	8(%esi), %edx
	movl	%ecx, 20(%esi)
	movb	$8, (%ecx,%edx)
	movl	20(%esi), %eax
	movl	28(%esi), %edx
	leal	1(%eax), %ecx
	addl	$16, %esp
	testl	%edx, %edx
	movl	%ecx, 20(%esi)
	jne	.L135
	movl	8(%esi), %ebx
	movb	$0, (%ecx,%ebx)
	movl	20(%esi), %edi
	movl	8(%esi), %edx
	incl	%edi
	movl	%edi, 20(%esi)
	movb	$0, (%edi,%edx)
	movl	20(%esi), %ebx
	incl	%ebx
	movl	8(%esi), %ecx
	movl	%ebx, 20(%esi)
	movb	$0, (%ebx,%ecx)
	movl	20(%esi), %edi
	incl	%edi
	movl	8(%esi), %edx
	movl	%edi, 20(%esi)
	movb	$0, (%edi,%edx)
	movl	20(%esi), %ebx
	incl	%ebx
	movl	8(%esi), %ecx
	movl	%ebx, 20(%esi)
	movb	$0, (%ebx,%ecx)
	movl	20(%esi), %edi
	movl	132(%esi), %edx
	leal	1(%edi), %ecx
	addl	$2, %edi
	cmpl	$9, %edx
	movl	8(%esi), %ebx
	movl	%edi, 20(%esi)
	movb	$2, %al
	je	.L137
	cmpl	$1, 136(%esi)
	jle	.L353
.L140:
	movb	$4, %al
.L137:
	movb	%al, (%ecx,%ebx)
	movl	8(%esi), %eax
	movl	20(%esi), %ecx
	movb	$3, (%ecx,%eax)
	incl	20(%esi)
	movl	$113, 4(%esi)
	movl	$113, %eax
	jmp	.L133
.L353:
	xorl	%eax, %eax
	decl	%edx
	jg	.L137
	jmp	.L140
	.p2align 2,,3
.L135:
	addl	$2, %eax
	movl	%eax, 20(%esi)
	movl	44(%edx), %edi
	xorl	%eax, %eax
	cmpl	$0, (%edx)
	setne	%al
	testl	%edi, %edi
	movl	8(%esi), %ebx
	je	.L142
	addl	$2, %eax
.L142:
	movl	16(%edx), %edi
	testl	%edi, %edi
	je	.L143
	addl	$4, %eax
.L143:
	movl	28(%edx), %edi
	testl	%edi, %edi
	je	.L144
	addl	$8, %eax
.L144:
	movl	36(%edx), %edi
	testl	%edi, %edi
	je	.L145
	addl	$16, %eax
.L145:
	movb	%al, (%ecx,%ebx)
	movl	28(%esi), %edx
	movl	20(%esi), %ebx
	movb	4(%edx), %cl
	movl	8(%esi), %edi
	movb	%cl, (%ebx,%edi)
	movl	28(%esi), %edx
	movl	20(%esi), %ebx
	movl	4(%edx), %ecx
	incl	%ebx
	movl	8(%esi), %edi
	shrl	$8, %ecx
	movl	%ebx, 20(%esi)
	movb	%cl, (%ebx,%edi)
	movl	20(%esi), %ebx
	movl	28(%esi), %edx
	incl	%ebx
	movzwl	6(%edx), %ecx
	movl	8(%esi), %edi
	movl	%ebx, 20(%esi)
	movb	%cl, (%ebx,%edi)
	movl	20(%esi), %ebx
	movl	28(%esi), %edx
	incl	%ebx
	movzbl	7(%edx), %ecx
	movl	8(%esi), %edi
	movl	%ebx, 20(%esi)
	movb	%cl, (%ebx,%edi)
	movl	20(%esi), %edx
	leal	1(%edx), %ecx
	addl	$2, %edx
	movl	%edx, 20(%esi)
	movl	132(%esi), %edx
	cmpl	$9, %edx
	movl	8(%esi), %ebx
	movb	$2, %al
	je	.L147
	cmpl	$1, 136(%esi)
	jle	.L354
.L150:
	movb	$4, %al
.L147:
	movb	%al, (%ecx,%ebx)
	movl	28(%esi), %edx
	movl	20(%esi), %ebx
	movb	12(%edx), %cl
	movl	8(%esi), %edi
	movb	%cl, (%ebx,%edi)
	movl	28(%esi), %ebx
	movl	20(%esi), %ecx
	movl	16(%ebx), %eax
	incl	%ecx
	testl	%eax, %eax
	movl	%ecx, 20(%esi)
	je	.L151
	movb	20(%ebx), %dl
	movl	8(%esi), %edi
	movb	%dl, (%ecx,%edi)
	movl	20(%esi), %ebx
	incl	%ebx
	movl	%ebx, 20(%esi)
	movl	28(%esi), %edx
	movl	20(%edx), %ecx
	movl	8(%esi), %edi
	shrl	$8, %ecx
	movb	%cl, (%ebx,%edi)
	incl	20(%esi)
	movl	28(%esi), %ebx
.L151:
	movl	44(%ebx), %eax
	testl	%eax, %eax
	jne	.L355
.L152:
	movl	$0, 32(%esi)
	movl	$69, 4(%esi)
	movl	$69, %eax
	jmp	.L133
.L355:
	pushl	%ecx
	pushl	20(%esi)
	pushl	8(%esi)
	movl	8(%ebp), %ecx
	pushl	48(%ecx)
	call	crc32
	movl	8(%ebp), %ebx
	movl	%eax, 48(%ebx)
	addl	$16, %esp
	jmp	.L152
.L354:
	xorl	%eax, %eax
	decl	%edx
	jg	.L147
	jmp	.L150
	.p2align 2,,3
.L317:
	cmpl	$4, 12(%ebp)
	je	.L129
	.p2align 2,,3
.L130:
	movl	z_errmsg+16, %edx
	movl	8(%ebp), %esi
	movl	%edx, 24(%esi)
	.p2align 2,,3
.L315:
	movl	$-2, %eax
	jmp	.L126
.Lfe6:
	.size	deflate,.Lfe6-deflate
	.p2align 2,,3
.globl deflateEnd
	.type	deflateEnd,@function
deflateEnd:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %ebx
	testl	%ebx, %ebx
	je	.L358
	movl	28(%ebx), %edx
	testl	%edx, %edx
	movl	%edx, %ecx
	jne	.L357
.L358:
	movl	$-2, %eax
.L356:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	leave
	ret
	.p2align 2,,3
.L357:
	movl	4(%edx), %esi
	cmpl	$42, %esi
	je	.L359
	cmpl	$69, %esi
	je	.L359
	cmpl	$73, %esi
	je	.L359
	cmpl	$91, %esi
	je	.L359
	cmpl	$103, %esi
	je	.L359
	cmpl	$113, %esi
	je	.L359
	cmpl	$666, %esi
	movl	$-2, %eax
	jne	.L356
	.p2align 2,,3
.L359:
	movl	8(%ecx), %eax
	testl	%eax, %eax
	jne	.L366
.L360:
	movl	68(%edx), %eax
	testl	%eax, %eax
	jne	.L367
.L361:
	movl	64(%edx), %eax
	testl	%eax, %eax
	jne	.L368
.L362:
	movl	56(%edx), %eax
	testl	%eax, %eax
	jne	.L369
.L363:
	subl	$8, %esp
	pushl	28(%ebx)
	pushl	40(%ebx)
	call	*36(%ebx)
	xorl	%edx, %edx
	addl	$16, %esp
	cmpl	$113, %esi
	setne	%dl
	movl	$0, 28(%ebx)
	leal	-3(%edx,%edx,2), %eax
	jmp	.L356
	.p2align 2,,3
.L369:
	subl	$8, %esp
	pushl	%eax
	pushl	40(%ebx)
	call	*36(%ebx)
	addl	$16, %esp
	jmp	.L363
	.p2align 2,,3
.L368:
	subl	$8, %esp
	pushl	%eax
	pushl	40(%ebx)
	call	*36(%ebx)
	addl	$16, %esp
	movl	28(%ebx), %edx
	jmp	.L362
	.p2align 2,,3
.L367:
	subl	$8, %esp
	pushl	%eax
	pushl	40(%ebx)
	call	*36(%ebx)
	addl	$16, %esp
	movl	28(%ebx), %edx
	jmp	.L361
	.p2align 2,,3
.L366:
	subl	$8, %esp
	pushl	%eax
	pushl	40(%ebx)
	call	*36(%ebx)
	addl	$16, %esp
	movl	28(%ebx), %edx
	jmp	.L360
.Lfe7:
	.size	deflateEnd,.Lfe7-deflateEnd
	.p2align 2,,3
.globl deflateCopy
	.type	deflateCopy,@function
deflateCopy:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	12(%ebp), %esi
	testl	%esi, %esi
	movl	8(%ebp), %ebx
	je	.L372
	testl	%ebx, %ebx
	je	.L372
	movl	28(%esi), %edx
	testl	%edx, %edx
	movl	%edx, -20(%ebp)
	jne	.L371
.L372:
	movl	$-2, %eax
.L370:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L371:
	cld
	movl	$14, %ecx
	movl	%ebx, %edi
	rep
	movsl
	pushl	%eax
	pushl	$5828
	pushl	$1
	pushl	40(%ebx)
	call	*32(%ebx)
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	addl	$16, %esp
	testl	%edx, %edx
	movl	$-4, %eax
	je	.L370
	movl	-16(%ebp), %eax
	movl	%eax, 28(%ebx)
	cld
	movl	%eax, %edi
	movl	-20(%ebp), %esi
	movl	$1457, %ecx
	rep
	movsl
	movl	%ebx, (%eax)
	pushl	%esi
	pushl	$2
	pushl	44(%eax)
	pushl	40(%ebx)
	call	*32(%ebx)
	addl	$12, %esp
	movl	-16(%ebp), %edi
	movl	%eax, 56(%edi)
	pushl	$2
	pushl	44(%edi)
	pushl	40(%ebx)
	call	*32(%ebx)
	addl	$12, %esp
	movl	-16(%ebp), %ecx
	movl	%eax, 64(%ecx)
	pushl	$2
	pushl	76(%ecx)
	pushl	40(%ebx)
	call	*32(%ebx)
	addl	$12, %esp
	movl	-16(%ebp), %esi
	movl	%eax, 68(%esi)
	pushl	$4
	pushl	5788(%esi)
	pushl	40(%ebx)
	call	*32(%ebx)
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	56(%eax), %edx
	addl	$16, %esp
	testl	%edx, %edx
	movl	%esi, 8(%eax)
	je	.L375
	movl	64(%eax), %edi
	testl	%edi, %edi
	je	.L375
	movl	68(%eax), %ecx
	testl	%ecx, %ecx
	je	.L375
	testl	%esi, %esi
	je	.L375
	movl	-16(%ebp), %eax
	movl	44(%eax), %ebx
	sall	$1, %ebx
	pushl	%ecx
	pushl	%ebx
	movl	-20(%ebp), %ebx
	pushl	56(%ebx)
	pushl	%edx
	call	memcpy
	movl	-16(%ebp), %edi
	movl	44(%edi), %edx
	addl	$12, %esp
	sall	$1, %edx
	pushl	%edx
	pushl	64(%ebx)
	pushl	64(%edi)
	call	memcpy
	movl	-16(%ebp), %edi
	movl	76(%edi), %ecx
	addl	$12, %esp
	sall	$1, %ecx
	pushl	%ecx
	pushl	68(%ebx)
	pushl	68(%edi)
	call	memcpy
	movl	-16(%ebp), %edi
	addl	$12, %esp
	pushl	12(%edi)
	movl	-20(%ebp), %edx
	pushl	8(%edx)
	pushl	8(%edi)
	call	memcpy
	movl	-20(%ebp), %ebx
	movl	16(%ebx), %eax
	subl	8(%ebx), %eax
	movl	8(%edi), %ebx
	leal	(%eax,%ebx), %ecx
	movl	%ecx, 16(%edi)
	movl	5788(%edi), %ecx
	movl	%ecx, %eax
	andl	$-2, %eax
	leal	(%eax,%esi), %edx
	leal	(%ecx,%ecx,2), %esi
	addl	%esi, %ebx
	movl	%ebx, 5784(%edi)
	movl	%edi, %ebx
	addl	$148, %ebx
	movl	%ebx, 2840(%edi)
	addl	$2292, %ebx
	movl	%ebx, 2852(%edi)
	addl	$244, %ebx
	movl	%edx, 5796(%edi)
	movl	%ebx, 2864(%edi)
	xorl	%eax, %eax
	jmp	.L370
	.p2align 2,,3
.L375:
	subl	$12, %esp
	pushl	%ebx
	call	deflateEnd
	movl	$-4, %eax
	jmp	.L370
.Lfe8:
	.size	deflateCopy,.Lfe8-deflateCopy
	.p2align 2,,3
	.type	lm_init,@function
lm_init:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$8, %esp
	movl	8(%ebp), %ebx
	movl	44(%ebx), %ecx
	movl	76(%ebx), %edx
	sall	$1, %ecx
	movl	%ecx, 60(%ebx)
	sall	$1, %edx
	movl	68(%ebx), %ecx
	movw	$0, -2(%edx,%ecx)
	subl	$2, %edx
	pushl	%edx
	pushl	$0
	pushl	%ecx
	call	memset
	movl	132(%ebx), %edx
	leal	(%edx,%edx,2), %ecx
	sall	$2, %ecx
	movzwl	configuration_table+2(%ecx), %edx
	movl	%edx, 128(%ebx)
	movzwl	configuration_table(%ecx), %edx
	movl	%edx, 140(%ebx)
	movzwl	configuration_table+4(%ecx), %edx
	movl	%edx, 144(%ebx)
	movzwl	configuration_table+6(%ecx), %edx
	movl	%edx, 124(%ebx)
	movl	$0, 108(%ebx)
	movl	$0, 92(%ebx)
	movl	$0, 116(%ebx)
	movl	$0, 5812(%ebx)
	movl	$2, 120(%ebx)
	movl	$2, 96(%ebx)
	movl	$0, 104(%ebx)
	movl	$0, 72(%ebx)
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
.Lfe9:
	.size	lm_init,.Lfe9-lm_init
	.p2align 2,,3
	.type	fill_window,@function
fill_window:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	8(%ebp), %edx
	movl	44(%edx), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -20(%ebp)
	movl	116(%ecx), %edi
	.p2align 2,,3
.L422:
	movl	8(%ebp), %ecx
	movl	60(%ecx), %edx
	movl	-20(%ebp), %esi
	movl	8(%ebp), %ecx
	subl	%edi, %edx
	movl	108(%ecx), %ebx
	leal	-262(%eax,%esi), %edi
	subl	%ebx, %edx
	cmpl	%edi, %ebx
	movl	%edx, -16(%ebp)
	jae	.L517
.L429:
	movl	8(%ebp), %ebx
	movl	(%ebx), %esi
	movl	4(%esi), %edx
	testl	%edx, %edx
	je	.L423
	movl	8(%ebp), %eax
	movl	108(%eax), %ebx
	addl	56(%eax), %ebx
	movl	116(%eax), %edi
	addl	%edi, %ebx
	cmpl	-16(%ebp), %edx
	movl	%ebx, -24(%ebp)
	movl	%edx, %ebx
	jbe	.L443
	movl	-16(%ebp), %ebx
.L443:
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jne	.L518
.L445:
	movl	8(%ebp), %ebx
	leal	(%eax,%edi), %esi
	movl	5812(%ebx), %edx
	leal	(%edx,%esi), %edi
	cmpl	$2, %edi
	movl	%esi, 116(%ebx)
	movl	%edx, -44(%ebp)
	jbe	.L512
	movl	8(%ebp), %ecx
	movl	108(%ecx), %ebx
	subl	%edx, %ebx
	movl	56(%ecx), %edx
	movl	%edx, -28(%ebp)
	movzbl	(%ebx,%edx), %edi
	movl	88(%ecx), %edx
	movl	%edx, -32(%ebp)
	movl	%edi, 72(%ecx)
	movb	-32(%ebp), %cl
	sall	%cl, %edi
	movl	-28(%ebp), %ecx
	movzbl	1(%ebx,%ecx), %edx
	xorl	%edx, %edi
	movl	8(%ebp), %edx
	movl	84(%edx), %ecx
	movl	-44(%ebp), %eax
	andl	%ecx, %edi
	movl	%ecx, -36(%ebp)
	testl	%eax, %eax
	movl	8(%ebp), %ecx
	movl	%edi, 72(%ecx)
	je	.L513
	movl	%esi, %edi
	movl	68(%ecx), %eax
	movl	64(%ecx), %edx
	movl	52(%ecx), %esi
	movl	%eax, -56(%ebp)
	movl	%edx, -40(%ebp)
	movl	%esi, -48(%ebp)
	.p2align 2,,3
.L454:
	movl	8(%ebp), %esi
	movl	72(%esi), %eax
	movb	-32(%ebp), %cl
	movl	-28(%ebp), %edx
	sall	%cl, %eax
	movzbl	2(%ebx,%edx), %ecx
	xorl	%ecx, %eax
	andl	-36(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	-56(%ebp), %edx
	movl	-48(%ebp), %ecx
	movw	(%edx,%eax,2), %si
	andl	%ebx, %ecx
	movl	-40(%ebp), %edx
	movw	%si, (%edx,%ecx,2)
	movl	-44(%ebp), %edx
	decl	%edx
	movl	-56(%ebp), %esi
	leal	(%edx,%edi), %ecx
	movw	%bx, (%esi,%eax,2)
	incl	%ebx
	movl	8(%ebp), %eax
	cmpl	$2, %ecx
	movl	%edx, 5812(%eax)
	jbe	.L424
	testl	%edx, %edx
	movl	%edx, -44(%ebp)
	jne	.L454
	.p2align 2,,3
.L424:
	cmpl	$261, %edi
	ja	.L423
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%ecx), %edx
	testl	%edx, %edx
	je	.L423
	movl	8(%ebp), %ebx
	movl	44(%ebx), %eax
	jmp	.L422
.L423:
	movl	8(%ebp), %edi
	movl	5824(%edi), %edx
	movl	60(%edi), %ecx
	cmpl	%ecx, %edx
	jae	.L421
	movl	116(%edi), %ebx
	addl	108(%edi), %ebx
	cmpl	%ebx, %edx
	jae	.L458
	movl	%ecx, %esi
	subl	%ebx, %esi
	cmpl	$258, %esi
	jbe	.L459
	movl	$258, %esi
.L459:
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	pushl	%edx
	pushl	%esi
	pushl	$0
	addl	%ebx, %ecx
	pushl	%ecx
	call	memset
	leal	(%esi,%ebx), %edx
	movl	8(%ebp), %esi
	addl	$16, %esp
	movl	%edx, 5824(%esi)
.L421:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L458:
	leal	258(%ebx), %edi
	cmpl	%edi, %edx
	jae	.L421
	subl	%edx, %ebx
	movl	%ecx, %eax
	leal	258(%ebx), %esi
	subl	%edx, %eax
	cmpl	%eax, %esi
	jbe	.L486
	movl	%eax, %esi
.L486:
	movl	8(%ebp), %ecx
	addl	56(%ecx), %edx
	pushl	%eax
	pushl	%esi
	pushl	$0
	pushl	%edx
	call	memset
	movl	8(%ebp), %ebx
	addl	$16, %esp
	addl	%esi, 5824(%ebx)
	jmp	.L421
	.p2align 2,,3
.L513:
	movl	%esi, %edi
	jmp	.L424
	.p2align 2,,3
.L512:
	movl	8(%ebp), %ebx
	movl	116(%ebx), %edi
	jmp	.L424
.L518:
	subl	%ebx, %edx
	movl	%edx, 4(%esi)
	pushl	%eax
	pushl	%ebx
	pushl	(%esi)
	pushl	-24(%ebp)
	call	memcpy
	movl	28(%esi), %edx
	movl	24(%edx), %eax
	addl	$16, %esp
	cmpl	$1, %eax
	je	.L519
	cmpl	$2, %eax
	je	.L520
.L447:
	movl	8(%ebp), %ecx
	addl	%ebx, (%esi)
	addl	%ebx, 8(%esi)
	movl	%ebx, %eax
	movl	116(%ecx), %edi
	jmp	.L445
.L520:
	pushl	%eax
	pushl	%ebx
	pushl	-24(%ebp)
	pushl	48(%esi)
	call	crc32
.L516:
	addl	$16, %esp
	movl	%eax, 48(%esi)
	jmp	.L447
.L519:
	pushl	%eax
	pushl	%ebx
	pushl	-24(%ebp)
	pushl	48(%esi)
	call	adler32
	jmp	.L516
.L517:
	movl	56(%ecx), %ebx
	pushl	%ecx
	pushl	%esi
	leal	(%esi,%ebx), %edx
	pushl	%edx
	pushl	%ebx
	call	memcpy
	movl	8(%ebp), %edi
	subl	%esi, 112(%edi)
	subl	%esi, 108(%edi)
	subl	%esi, 92(%edi)
	movl	76(%edi), %ecx
	movl	68(%edi), %esi
	movl	%esi, -56(%ebp)
	leal	(%esi,%ecx,2), %edx
	addl	$16, %esp
	.p2align 2,,3
.L430:
	subl	$2, %edx
	movzwl	(%edx), %eax
	xorl	%ebx, %ebx
	cmpl	-20(%ebp), %eax
	jb	.L434
	movl	%eax, %ebx
	subw	-20(%ebp), %bx
.L434:
	decl	%ecx
	movw	%bx, (%edx)
	jne	.L430
	movl	8(%ebp), %edi
	movl	-20(%ebp), %ecx
	movl	64(%edi), %eax
	leal	(%eax,%ecx,2), %edx
	.p2align 2,,3
.L436:
	subl	$2, %edx
	movzwl	(%edx), %eax
	xorl	%ebx, %ebx
	cmpl	-20(%ebp), %eax
	jb	.L440
	movl	%eax, %ebx
	subw	-20(%ebp), %bx
.L440:
	decl	%ecx
	movw	%bx, (%edx)
	jne	.L436
	movl	-20(%ebp), %ecx
	addl	%ecx, -16(%ebp)
	jmp	.L429
.Lfe10:
	.size	fill_window,.Lfe10-fill_window
	.p2align 2,,3
	.type	deflate_stored,@function
deflate_stored:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	$65535, -16(%ebp)
	subl	$5, %eax
	cmpl	%eax, -16(%ebp)
	jbe	.L523
	movl	%eax, -16(%ebp)
	.p2align 2,,3
.L523:
	movl	8(%ebp), %ecx
	movl	116(%ecx), %edx
	cmpl	$1, %edx
	jbe	.L565
.L526:
	movl	8(%ebp), %edi
	movl	108(%edi), %eax
	addl	%edx, %eax
	movl	92(%edi), %ecx
	movl	-16(%ebp), %esi
	testl	%eax, %eax
	movl	%eax, 108(%edi)
	movl	$0, 116(%edi)
	leal	(%esi,%ecx), %edx
	je	.L530
	cmpl	%edx, %eax
	jb	.L529
.L530:
	subl	%edx, %eax
	movl	8(%ebp), %ebx
	movl	%eax, 116(%ebx)
	movl	%edx, 108(%ebx)
	xorl	%eax, %eax
	subl	%ecx, %edx
	pushl	$0
	testl	%ecx, %ecx
	pushl	%edx
	js	.L532
	movl	56(%ebx), %eax
	addl	%ecx, %eax
.L532:
	pushl	%eax
	pushl	8(%ebp)
	call	_tr_flush_block
	movl	8(%ebp), %ecx
	movl	108(%ecx), %ebx
	movl	(%ecx), %esi
	movl	%ebx, 92(%ecx)
	movl	28(%esi), %edi
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L533
	movl	%eax, %ebx
.L533:
	testl	%ebx, %ebx
	jne	.L566
.L535:
	movl	8(%ebp), %ecx
	movl	(%ecx), %ebx
	movl	16(%ebx), %edi
	testl	%edi, %edi
	je	.L564
	movl	92(%ecx), %ecx
.L529:
	movl	8(%ebp), %edi
	movl	108(%edi), %edx
	movl	44(%edi), %esi
	subl	%ecx, %edx
	subl	$262, %esi
	cmpl	%esi, %edx
	jb	.L523
	pushl	$0
	xorl	%eax, %eax
	testl	%ecx, %ecx
	pushl	%edx
	js	.L540
	movl	56(%edi), %eax
	addl	%ecx, %eax
.L540:
	pushl	%eax
	pushl	8(%ebp)
	call	_tr_flush_block
	movl	8(%ebp), %ecx
	movl	(%ecx), %esi
	movl	108(%ecx), %edx
	movl	28(%esi), %edi
	movl	%edx, 92(%ecx)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L541
	movl	%eax, %ebx
.L541:
	testl	%ebx, %ebx
	jne	.L567
.L543:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%edx), %edi
	testl	%edi, %edi
	jne	.L523
.L564:
	xorl	%eax, %eax
.L521:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L567:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	pushl	12(%esi)
	call	memcpy
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%edi), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	testl	%esi, %esi
	movl	%esi, 20(%edi)
	jne	.L543
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L543
	.p2align 2,,3
.L566:
	pushl	%edx
	pushl	%ebx
	pushl	16(%edi)
	pushl	12(%esi)
	call	memcpy
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%edi), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	testl	%esi, %esi
	movl	%esi, 20(%edi)
	jne	.L535
	movl	8(%edi), %edx
	movl	%edx, 16(%edi)
	jmp	.L535
	.p2align 2,,3
.L565:
	subl	$12, %esp
	pushl	%ecx
	call	fill_window
	movl	8(%ebp), %eax
	movl	116(%eax), %edx
	addl	$16, %esp
	testl	%edx, %edx
	jne	.L526
	movl	12(%ebp), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.L521
	testl	%edx, %edx
	jne	.L526
	movl	8(%ebp), %ebx
	cmpl	$4, 12(%ebp)
	movl	$0, 5812(%ebx)
	je	.L568
	movl	8(%ebp), %ebx
	movl	108(%ebx), %eax
	movl	92(%ebx), %edx
	cmpl	%edx, %eax
	jle	.L554
	subl	%edx, %eax
	pushl	$0
	pushl	%eax
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.L556
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L556:
	pushl	%eax
	pushl	8(%ebp)
	call	_tr_flush_block
	movl	8(%ebp), %ecx
	movl	(%ecx), %esi
	movl	108(%ecx), %edx
	movl	28(%esi), %edi
	movl	%edx, 92(%ecx)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L557
	movl	%eax, %ebx
.L557:
	testl	%ebx, %ebx
	jne	.L569
.L559:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%edx), %edi
	testl	%edi, %edi
	je	.L564
.L554:
	movl	$1, %eax
	jmp	.L521
.L569:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	pushl	12(%esi)
	call	memcpy
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%edi), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	testl	%esi, %esi
	movl	%esi, 20(%edi)
	jne	.L559
	movl	8(%edi), %ebx
	movl	%ebx, 16(%edi)
	jmp	.L559
.L568:
	pushl	$1
	movl	92(%ebx), %edx
	movl	108(%ebx), %ecx
	subl	%edx, %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%ecx
	js	.L548
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L548:
	pushl	%eax
	pushl	8(%ebp)
	call	_tr_flush_block
	movl	8(%ebp), %ebx
	movl	108(%ebx), %esi
	movl	%esi, 92(%ebx)
	movl	(%ebx), %esi
	movl	28(%esi), %edi
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L549
	movl	%eax, %ebx
.L549:
	testl	%ebx, %ebx
	jne	.L570
.L551:
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	16(%esi), %edi
	testl	%edi, %edi
	setne	%bl
	movzbl	%bl, %eax
	addl	$2, %eax
	jmp	.L521
.L570:
	pushl	%eax
	pushl	%ebx
	pushl	16(%edi)
	pushl	12(%esi)
	call	memcpy
	subl	%ebx, 16(%esi)
	movl	20(%edi), %edx
	addl	%ebx, 12(%esi)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%edi)
	addl	%ebx, 20(%esi)
	testl	%edx, %edx
	movl	%edx, 20(%edi)
	jne	.L551
	movl	8(%edi), %ecx
	movl	%ecx, 16(%edi)
	jmp	.L551
.Lfe11:
	.size	deflate_stored,.Lfe11-deflate_stored
	.p2align 2,,3
	.type	deflate_fast,@function
deflate_fast:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	8(%ebp), %edi
	.p2align 2,,3
.L572:
	movl	116(%edi), %edx
	cmpl	$261, %edx
	jbe	.L618
.L575:
	xorl	%ecx, %ecx
	cmpl	$2, %edx
	jbe	.L578
	movl	72(%edi), %edx
	movl	88(%edi), %ecx
	sall	%cl, %edx
	movl	56(%edi), %ebx
	movl	108(%edi), %ecx
	movzbl	2(%ecx,%ebx), %esi
	xorl	%esi, %edx
	andl	84(%edi), %edx
	movl	68(%edi), %esi
	movzwl	(%esi,%edx,2), %eax
	andl	52(%edi), %ecx
	movl	64(%edi), %ebx
	movw	%ax, (%ebx,%ecx,2)
	movw	108(%edi), %bx
	movl	%edx, 72(%edi)
	movl	%eax, %ecx
	movw	%bx, (%esi,%edx,2)
.L578:
	testl	%ecx, %ecx
	je	.L579
	movl	108(%edi), %edx
	movl	44(%edi), %esi
	subl	%ecx, %edx
	subl	$262, %esi
	cmpl	%esi, %edx
	jbe	.L619
.L579:
	cmpl	$2, 96(%edi)
	jbe	.L580
	movw	108(%edi), %bx
	subw	112(%edi), %bx
	movl	5792(%edi), %esi
	movl	5796(%edi), %ecx
	movb	96(%edi), %dl
	movw	%bx, (%ecx,%esi,2)
	subl	$3, %edx
	movl	5784(%edi), %ecx
	movb	%dl, (%esi,%ecx)
	movzbl	%dl, %eax
	incl	5792(%edi)
	decl	%ebx
	movzbl	_length_code(%eax), %ecx
	incw	1176(%edi,%ecx,4)
	cmpw	$255, %bx
	ja	.L581
	movzwl	%bx, %edx
	movzbl	_dist_code(%edx), %eax
.L616:
	leal	2432(,%eax,4), %esi
	incw	8(%esi,%edi)
	movl	5788(%edi), %edx
	decl	%edx
	cmpl	%edx, 5792(%edi)
	sete	%cl
	movl	116(%edi), %edx
	movl	96(%edi), %eax
	subl	%eax, %edx
	movzbl	%cl, %ebx
	cmpl	128(%edi), %eax
	movl	%ebx, -16(%ebp)
	movl	%edx, 116(%edi)
	ja	.L583
	cmpl	$2, %edx
	jbe	.L583
	decl	%eax
	movl	88(%edi), %esi
	movl	%eax, 96(%edi)
	movl	56(%edi), %ecx
	movl	84(%edi), %edx
	movl	52(%edi), %eax
	movl	64(%edi), %ebx
	movl	%esi, -36(%ebp)
	movl	%ecx, -44(%ebp)
	movl	%edx, -32(%ebp)
	movl	%eax, -40(%ebp)
	movl	%ebx, -48(%ebp)
	movl	68(%edi), %esi
	.p2align 2,,3
.L584:
	movl	108(%edi), %edx
	movl	%edx, -60(%ebp)
	incl	%edx
	movl	%edx, 108(%edi)
	movl	72(%edi), %eax
	movb	-36(%ebp), %cl
	movl	-44(%ebp), %ebx
	sall	%cl, %eax
	movzbl	2(%edx,%ebx), %ecx
	xorl	%ecx, %eax
	andl	-32(%ebp), %eax
	movl	-40(%ebp), %ebx
	andl	%ebx, %edx
	movw	(%esi,%eax,2), %cx
	movl	-48(%ebp), %ebx
	movw	%cx, (%ebx,%edx,2)
	movl	96(%edi), %ebx
	decl	%ebx
	movw	108(%edi), %cx
	testl	%ebx, %ebx
	movl	%eax, 72(%edi)
	movw	%cx, (%esi,%eax,2)
	movl	%ebx, 96(%edi)
	jne	.L584
	movl	-60(%ebp), %edx
	addl	$2, %edx
	movl	%edx, 108(%edi)
	.p2align 2,,3
.L589:
	movl	-16(%ebp), %ebx
	testl	%ebx, %ebx
	je	.L572
	pushl	$0
	movl	92(%edi), %edx
	movl	108(%edi), %ecx
	subl	%edx, %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%ecx
	js	.L592
	movl	56(%edi), %eax
	addl	%edx, %eax
.L592:
	pushl	%eax
	pushl	%edi
	call	_tr_flush_block
	movl	108(%edi), %esi
	movl	%esi, 92(%edi)
	movl	(%edi), %esi
	movl	28(%esi), %eax
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	_tr_flush_bits
	movl	-20(%ebp), %edx
	movl	20(%edx), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L593
	movl	%eax, %ebx
.L593:
	testl	%ebx, %ebx
	jne	.L620
.L595:
	movl	(%edi), %edx
	movl	16(%edx), %esi
	testl	%esi, %esi
	jne	.L572
.L617:
	xorl	%eax, %eax
.L571:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L620:
	pushl	%eax
	pushl	%ebx
	movl	-20(%ebp), %ecx
	pushl	16(%ecx)
	pushl	12(%esi)
	call	memcpy
	movl	-20(%ebp), %ecx
	subl	%ebx, 16(%esi)
	movl	20(%ecx), %edx
	addl	%ebx, 12(%esi)
	subl	%ebx, %edx
	addl	$16, %esp
	addl	%ebx, 16(%ecx)
	addl	%ebx, 20(%esi)
	testl	%edx, %edx
	movl	%edx, 20(%ecx)
	jne	.L595
	movl	8(%ecx), %ebx
	movl	%ebx, 16(%ecx)
	jmp	.L595
	.p2align 2,,3
.L583:
	movl	108(%edi), %edx
	addl	%eax, %edx
	movl	%edx, 108(%edi)
	movl	$0, 96(%edi)
	movl	56(%edi), %ebx
	movzbl	(%edx,%ebx), %esi
	movl	%esi, 72(%edi)
	movl	88(%edi), %ecx
	movzbl	1(%edx,%ebx), %eax
	sall	%cl, %esi
	xorl	%eax, %esi
	andl	84(%edi), %esi
	movl	%esi, 72(%edi)
	jmp	.L589
	.p2align 2,,3
.L581:
	shrw	$7, %bx
	movzwl	%bx, %esi
	movzbl	_dist_code+256(%esi), %eax
	jmp	.L616
	.p2align 2,,3
.L580:
	movl	108(%edi), %edx
	movl	56(%edi), %esi
	movb	(%edx,%esi), %bl
	movl	5796(%edi), %ecx
	movl	5792(%edi), %esi
	movw	$0, (%ecx,%esi,2)
	movl	5784(%edi), %ecx
	movb	%bl, (%esi,%ecx)
	incl	5792(%edi)
	movzbl	%bl, %esi
	incw	148(%edi,%esi,4)
	movl	5788(%edi), %edx
	decl	%edx
	cmpl	%edx, 5792(%edi)
	sete	%cl
	movzbl	%cl, %ebx
	movl	%ebx, -16(%ebp)
	decl	116(%edi)
	incl	108(%edi)
	jmp	.L589
	.p2align 2,,3
.L619:
	subl	$8, %esp
	pushl	%ecx
	pushl	%edi
	call	longest_match
	movl	%eax, 96(%edi)
	addl	$16, %esp
	jmp	.L579
	.p2align 2,,3
.L618:
	subl	$12, %esp
	pushl	%edi
	call	fill_window
	movl	116(%edi), %edx
	addl	$16, %esp
	cmpl	$261, %edx
	ja	.L576
	movl	12(%ebp), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.L571
.L576:
	testl	%edx, %edx
	jne	.L575
	movl	108(%edi), %eax
	cmpl	$2, %eax
	movl	%eax, %edx
	jbe	.L598
	movl	$2, %edx
.L598:
	cmpl	$4, 12(%ebp)
	movl	%edx, 5812(%edi)
	je	.L621
	movl	5792(%edi), %ecx
	testl	%ecx, %ecx
	je	.L607
	pushl	$0
	movl	92(%edi), %edx
	subl	%edx, %eax
	pushl	%eax
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.L609
	movl	56(%edi), %eax
	addl	%edx, %eax
.L609:
	pushl	%eax
	pushl	%edi
	call	_tr_flush_block
	movl	108(%edi), %ebx
	movl	(%edi), %esi
	movl	28(%esi), %eax
	movl	%ebx, 92(%edi)
	movl	%eax, -28(%ebp)
	movl	%eax, (%esp)
	call	_tr_flush_bits
	movl	-28(%ebp), %edx
	movl	20(%edx), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L610
	movl	%eax, %ebx
.L610:
	testl	%ebx, %ebx
	jne	.L622
.L612:
	movl	(%edi), %ebx
	movl	16(%ebx), %edi
	testl	%edi, %edi
	je	.L617
.L607:
	movl	$1, %eax
	jmp	.L571
.L622:
	pushl	%eax
	pushl	%ebx
	movl	-28(%ebp), %ecx
	pushl	16(%ecx)
	pushl	12(%esi)
	call	memcpy
	movl	-28(%ebp), %ecx
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%ecx), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%ecx)
	testl	%esi, %esi
	movl	%esi, 20(%ecx)
	jne	.L612
	movl	8(%ecx), %edx
	movl	%edx, 16(%ecx)
	jmp	.L612
.L621:
	pushl	$1
	movl	92(%edi), %edx
	subl	%edx, %eax
	pushl	%eax
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.L601
	movl	56(%edi), %eax
	addl	%edx, %eax
.L601:
	pushl	%eax
	pushl	%edi
	call	_tr_flush_block
	movl	108(%edi), %ebx
	movl	(%edi), %esi
	movl	28(%esi), %eax
	movl	%ebx, 92(%edi)
	movl	%eax, -24(%ebp)
	movl	%eax, (%esp)
	call	_tr_flush_bits
	movl	-24(%ebp), %ecx
	movl	20(%ecx), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L602
	movl	%eax, %ebx
.L602:
	testl	%ebx, %ebx
	jne	.L623
.L604:
	movl	(%edi), %esi
	movl	16(%esi), %edi
	testl	%edi, %edi
	setne	%bl
	movzbl	%bl, %eax
	addl	$2, %eax
	jmp	.L571
.L623:
	pushl	%eax
	pushl	%ebx
	movl	-24(%ebp), %ecx
	pushl	16(%ecx)
	pushl	12(%esi)
	call	memcpy
	movl	-24(%ebp), %ecx
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%ecx), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%ecx)
	testl	%esi, %esi
	movl	%esi, 20(%ecx)
	jne	.L604
	movl	8(%ecx), %edx
	movl	%edx, 16(%ecx)
	jmp	.L604
.Lfe12:
	.size	deflate_fast,.Lfe12-deflate_fast
	.p2align 2,,3
	.type	deflate_slow,@function
deflate_slow:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	8(%ebp), %edi
	.p2align 2,,3
.L625:
	movl	116(%edi), %edx
	cmpl	$261, %edx
	jbe	.L688
.L628:
	xorl	%ecx, %ecx
	cmpl	$2, %edx
	jbe	.L680
	movl	108(%edi), %ebx
	movl	72(%edi), %edx
	movl	88(%edi), %ecx
	movl	56(%edi), %esi
	movl	%ebx, -40(%ebp)
	sall	%cl, %edx
	movzbl	2(%ebx,%esi), %ecx
	xorl	%ecx, %edx
	andl	84(%edi), %edx
	movl	%ebx, %esi
	movl	68(%edi), %ebx
	movzwl	(%ebx,%edx,2), %eax
	andl	52(%edi), %esi
	movl	64(%edi), %ecx
	movw	%ax, (%ecx,%esi,2)
	movw	108(%edi), %si
	movl	%edx, 72(%edi)
	movl	%eax, %ecx
	movw	%si, (%ebx,%edx,2)
.L631:
	movl	96(%edi), %edx
	movl	112(%edi), %ebx
	testl	%ecx, %ecx
	movl	%edx, 120(%edi)
	movl	%ebx, 100(%edi)
	movl	$2, 96(%edi)
	je	.L632
	cmpl	128(%edi), %edx
	jae	.L632
	movl	-40(%ebp), %eax
	movl	44(%edi), %esi
	subl	%ecx, %eax
	subl	$262, %esi
	cmpl	%esi, %eax
	jbe	.L689
.L632:
	movl	120(%edi), %eax
	cmpl	$2, %eax
	jbe	.L635
	cmpl	%eax, 96(%edi)
	jbe	.L690
.L635:
	movl	104(%edi), %eax
	testl	%eax, %eax
	jne	.L691
	movl	-40(%ebp), %edx
	incl	%edx
	movl	$1, 104(%edi)
	movl	%edx, 108(%edi)
	decl	116(%edi)
	jmp	.L625
.L691:
	movl	56(%edi), %eax
	addl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	movb	-1(%edx), %bl
	movl	5796(%edi), %esi
	movl	5792(%edi), %edx
	movl	5784(%edi), %ecx
	movw	$0, (%esi,%edx,2)
	movb	%bl, (%edx,%ecx)
	incl	5792(%edi)
	movzbl	%bl, %esi
	incw	148(%edi,%esi,4)
	movl	5788(%edi), %ebx
	decl	%ebx
	cmpl	%ebx, 5792(%edi)
	jne	.L653
	pushl	$0
	movl	92(%edi), %edx
	movl	108(%edi), %ebx
	subl	%edx, %ebx
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%ebx
	js	.L655
	movl	56(%edi), %eax
	addl	%edx, %eax
.L655:
	pushl	%eax
	pushl	%edi
	call	_tr_flush_block
	movl	108(%edi), %esi
	movl	%esi, 92(%edi)
	movl	(%edi), %esi
	movl	28(%esi), %ecx
	movl	%ecx, (%esp)
	movl	%ecx, -28(%ebp)
	call	_tr_flush_bits
	movl	-28(%ebp), %edx
	movl	20(%edx), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L656
	movl	%eax, %ebx
.L656:
	testl	%ebx, %ebx
	jne	.L692
.L653:
	incl	108(%edi)
	decl	116(%edi)
.L687:
	movl	(%edi), %ecx
	movl	16(%ecx), %esi
	testl	%esi, %esi
	jne	.L625
.L686:
	xorl	%eax, %eax
.L624:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L692:
	pushl	%edx
	pushl	%ebx
	movl	-28(%ebp), %edx
	pushl	16(%edx)
	pushl	12(%esi)
	call	memcpy
	movl	-28(%ebp), %edx
	subl	%ebx, 16(%esi)
	movl	20(%edx), %ecx
	addl	%ebx, 12(%esi)
	subl	%ebx, %ecx
	addl	$16, %esp
	addl	%ebx, 16(%edx)
	addl	%ebx, 20(%esi)
	testl	%ecx, %ecx
	movl	%ecx, 20(%edx)
	jne	.L653
	movl	8(%edx), %ebx
	movl	%ebx, 16(%edx)
	jmp	.L653
	.p2align 2,,3
.L690:
	movl	116(%edi), %eax
	addl	%eax, -40(%ebp)
	movl	-40(%ebp), %ecx
	movw	108(%edi), %dx
	subw	100(%edi), %dx
	subl	$3, %ecx
	movl	5792(%edi), %ebx
	movl	%ecx, -20(%ebp)
	leal	-1(%edx), %esi
	movb	120(%edi), %cl
	movl	5796(%edi), %eax
	movw	%si, (%eax,%ebx,2)
	subl	$3, %ecx
	movl	5784(%edi), %esi
	movb	%cl, (%ebx,%esi)
	leal	-2(%edx), %esi
	movzbl	%cl, %edx
	incl	5792(%edi)
	movzbl	_length_code(%edx), %ebx
	incw	1176(%edi,%ebx,4)
	cmpw	$255, %si
	ja	.L636
	movzwl	%si, %ebx
	movzbl	_dist_code(%ebx), %eax
.L685:
	leal	2432(,%eax,4), %ecx
	incw	8(%ecx,%edi)
	movl	5788(%edi), %esi
	decl	%esi
	cmpl	%esi, 5792(%edi)
	movl	116(%edi), %ecx
	movl	120(%edi), %esi
	sete	%dl
	subl	%esi, %ecx
	movzbl	%dl, %ebx
	incl	%ecx
	subl	$2, %esi
	movl	%ebx, -16(%ebp)
	movl	%ecx, 116(%edi)
	movl	%esi, 120(%edi)
	.p2align 2,,3
.L638:
	movl	108(%edi), %esi
	incl	%esi
	cmpl	-20(%ebp), %esi
	movl	%esi, 108(%edi)
	ja	.L640
	movl	72(%edi), %edx
	movl	88(%edi), %ecx
	movl	56(%edi), %ebx
	sall	%cl, %edx
	movzbl	2(%esi,%ebx), %ecx
	xorl	%ecx, %edx
	andl	84(%edi), %edx
	movl	68(%edi), %ecx
	movl	64(%edi), %ebx
	movw	(%ecx,%edx,2), %ax
	andl	52(%edi), %esi
	movw	%ax, (%ebx,%esi,2)
	movw	108(%edi), %bx
	movl	%edx, 72(%edi)
	movw	%bx, (%ecx,%edx,2)
.L640:
	movl	120(%edi), %edx
	decl	%edx
	testl	%edx, %edx
	movl	%edx, 120(%edi)
	jne	.L638
	movl	108(%edi), %eax
	movl	-16(%ebp), %esi
	incl	%eax
	testl	%esi, %esi
	movl	$0, 104(%edi)
	movl	$2, 96(%edi)
	movl	%eax, 108(%edi)
	je	.L625
	pushl	$0
	movl	92(%edi), %edx
	subl	%edx, %eax
	pushl	%eax
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.L645
	movl	56(%edi), %eax
	addl	%edx, %eax
.L645:
	pushl	%eax
	pushl	%edi
	call	_tr_flush_block
	movl	108(%edi), %ebx
	movl	(%edi), %esi
	movl	%ebx, 92(%edi)
	movl	28(%esi), %ecx
	movl	%ecx, (%esp)
	movl	%ecx, -24(%ebp)
	call	_tr_flush_bits
	movl	-24(%ebp), %eax
	movl	20(%eax), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L646
	movl	%eax, %ebx
.L646:
	testl	%ebx, %ebx
	je	.L687
	pushl	%eax
	pushl	%ebx
	movl	-24(%ebp), %edx
	pushl	16(%edx)
	pushl	12(%esi)
	call	memcpy
	movl	-24(%ebp), %edx
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%edx), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%edx)
	testl	%esi, %esi
	movl	%esi, 20(%edx)
	jne	.L687
	movl	8(%edx), %ecx
	movl	%ecx, 16(%edx)
	jmp	.L687
	.p2align 2,,3
.L636:
	shrw	$7, %si
	movzwl	%si, %edx
	movzbl	_dist_code+256(%edx), %eax
	jmp	.L685
.L689:
	subl	$8, %esp
	pushl	%ecx
	pushl	%edi
	call	longest_match
	addl	$16, %esp
	cmpl	$5, %eax
	movl	%eax, 96(%edi)
	ja	.L681
	cmpl	$1, 136(%edi)
	je	.L682
	cmpl	$3, %eax
	je	.L693
	movl	108(%edi), %eax
	movl	%eax, -40(%ebp)
	jmp	.L632
.L693:
	movl	108(%edi), %ebx
	movl	%ebx, %ecx
	subl	112(%edi), %ecx
	cmpl	$4096, %ecx
	movl	%ebx, -40(%ebp)
	jbe	.L632
.L634:
	movl	$2, 96(%edi)
	jmp	.L632
.L682:
	movl	108(%edi), %edx
	movl	%edx, -40(%ebp)
	jmp	.L634
.L681:
	movl	108(%edi), %esi
	movl	%esi, -40(%ebp)
	jmp	.L632
	.p2align 2,,3
.L680:
	movl	108(%edi), %edx
	movl	%edx, -40(%ebp)
	jmp	.L631
	.p2align 2,,3
.L688:
	subl	$12, %esp
	pushl	%edi
	call	fill_window
	movl	116(%edi), %edx
	addl	$16, %esp
	cmpl	$261, %edx
	ja	.L629
	movl	12(%ebp), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.L624
.L629:
	testl	%edx, %edx
	jne	.L628
	movl	104(%edi), %ebx
	testl	%ebx, %ebx
	je	.L662
	movl	108(%edi), %esi
	addl	56(%edi), %esi
	movb	-1(%esi), %bl
	movl	5796(%edi), %edx
	movl	5792(%edi), %esi
	movl	5784(%edi), %ecx
	movw	$0, (%edx,%esi,2)
	movb	%bl, (%esi,%ecx)
	incl	5792(%edi)
	movzbl	%bl, %eax
	incw	148(%edi,%eax,4)
	movl	$0, 104(%edi)
.L662:
	movl	108(%edi), %ebx
	cmpl	$2, %ebx
	movl	%ebx, -40(%ebp)
	movl	%ebx, %eax
	jbe	.L663
	movl	$2, %eax
.L663:
	cmpl	$4, 12(%ebp)
	movl	%eax, 5812(%edi)
	je	.L694
	movl	5792(%edi), %ecx
	testl	%ecx, %ecx
	je	.L672
	pushl	$0
	movl	92(%edi), %eax
	subl	%eax, -40(%ebp)
	xorl	%edx, %edx
	testl	%eax, %eax
	pushl	-40(%ebp)
	js	.L674
	movl	56(%edi), %edx
	addl	%eax, %edx
.L674:
	pushl	%edx
	pushl	%edi
	call	_tr_flush_block
	movl	108(%edi), %ebx
	movl	(%edi), %esi
	movl	28(%esi), %eax
	movl	%ebx, 92(%edi)
	movl	%eax, -36(%ebp)
	movl	%eax, (%esp)
	call	_tr_flush_bits
	movl	-36(%ebp), %edx
	movl	20(%edx), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L675
	movl	%eax, %ebx
.L675:
	testl	%ebx, %ebx
	jne	.L695
.L677:
	movl	(%edi), %ebx
	movl	16(%ebx), %edi
	testl	%edi, %edi
	je	.L686
.L672:
	movl	$1, %eax
	jmp	.L624
.L695:
	pushl	%eax
	pushl	%ebx
	movl	-36(%ebp), %ecx
	pushl	16(%ecx)
	pushl	12(%esi)
	call	memcpy
	movl	-36(%ebp), %ecx
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%ecx), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%ecx)
	testl	%esi, %esi
	movl	%esi, 20(%ecx)
	jne	.L677
	movl	8(%ecx), %edx
	movl	%edx, 16(%ecx)
	jmp	.L677
.L694:
	pushl	$1
	movl	92(%edi), %eax
	subl	%eax, -40(%ebp)
	xorl	%edx, %edx
	testl	%eax, %eax
	pushl	-40(%ebp)
	js	.L666
	movl	56(%edi), %edx
	addl	%eax, %edx
.L666:
	pushl	%edx
	pushl	%edi
	call	_tr_flush_block
	movl	(%edi), %esi
	movl	108(%edi), %edx
	movl	28(%esi), %ecx
	movl	%edx, 92(%edi)
	movl	%ecx, -32(%ebp)
	movl	%ecx, (%esp)
	call	_tr_flush_bits
	movl	-32(%ebp), %eax
	movl	20(%eax), %ebx
	movl	16(%esi), %eax
	addl	$16, %esp
	cmpl	%eax, %ebx
	jbe	.L667
	movl	%eax, %ebx
.L667:
	testl	%ebx, %ebx
	jne	.L696
.L669:
	movl	(%edi), %esi
	movl	16(%esi), %edi
	testl	%edi, %edi
	setne	%dl
	movzbl	%dl, %eax
	addl	$2, %eax
	jmp	.L624
.L696:
	pushl	%eax
	pushl	%ebx
	movl	-32(%ebp), %eax
	pushl	16(%eax)
	pushl	12(%esi)
	call	memcpy
	movl	-32(%ebp), %ecx
	subl	%ebx, 16(%esi)
	addl	%ebx, 12(%esi)
	addl	%ebx, 20(%esi)
	movl	20(%ecx), %esi
	subl	%ebx, %esi
	addl	$16, %esp
	addl	%ebx, 16(%ecx)
	testl	%esi, %esi
	movl	%esi, 20(%ecx)
	jne	.L669
	movl	8(%ecx), %ebx
	movl	%ebx, 16(%ecx)
	jmp	.L669
.Lfe13:
	.size	deflate_slow,.Lfe13-deflate_slow
	.p2align 2,,3
	.type	deflate_rle,@function
deflate_rle:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %ebx
	.p2align 2,,3
.L698:
	movl	116(%ebx), %edx
	cmpl	$258, %edx
	jbe	.L742
.L701:
	cmpl	$2, %edx
	movl	$0, 96(%ebx)
	jbe	.L704
	movl	108(%ebx), %eax
	testl	%eax, %eax
	je	.L704
	movl	56(%ebx), %esi
	addl	%eax, %esi
	movzbl	-1(%esi), %edi
	movzbl	(%esi), %eax
	cmpl	%eax, %edi
	movl	%esi, %ecx
	je	.L743
.L704:
	cmpl	$2, 96(%ebx)
	jbe	.L712
	movb	96(%ebx), %dl
	movl	5792(%ebx), %esi
	movl	5796(%ebx), %ecx
	subl	$3, %edx
	movl	5784(%ebx), %edi
	movw	$1, (%ecx,%esi,2)
	movzbl	%dl, %eax
	movb	%dl, (%esi,%edi)
	incl	5792(%ebx)
	movzbl	_length_code(%eax), %ecx
	incw	1176(%ebx,%ecx,4)
	movzbl	_dist_code, %edx
	incw	2440(%ebx,%edx,4)
	movl	5788(%ebx), %edi
	decl	%edi
	movl	96(%ebx), %esi
	xorl	%edx, %edx
	cmpl	%edi, 5792(%ebx)
	sete	%dl
	movl	$0, 96(%ebx)
	subl	%esi, 116(%ebx)
	addl	%esi, 108(%ebx)
.L715:
	testl	%edx, %edx
	je	.L698
	pushl	$0
	movl	92(%ebx), %edx
	movl	108(%ebx), %esi
	subl	%edx, %esi
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%esi
	js	.L718
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L718:
	pushl	%eax
	pushl	%ebx
	call	_tr_flush_block
	movl	108(%ebx), %edi
	movl	%edi, 92(%ebx)
	movl	(%ebx), %edi
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	_tr_flush_bits
	movl	-16(%ebp), %eax
	movl	20(%eax), %esi
	movl	16(%edi), %eax
	addl	$16, %esp
	cmpl	%eax, %esi
	jbe	.L719
	movl	%eax, %esi
.L719:
	testl	%esi, %esi
	jne	.L744
.L721:
	movl	(%ebx), %ecx
	movl	16(%ecx), %edi
	testl	%edi, %edi
	jne	.L698
.L741:
	xorl	%eax, %eax
.L697:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L744:
	pushl	%eax
	pushl	%esi
	movl	-16(%ebp), %edx
	pushl	16(%edx)
	pushl	12(%edi)
	call	memcpy
	movl	-16(%ebp), %edx
	subl	%esi, 16(%edi)
	movl	20(%edx), %ecx
	addl	%esi, 12(%edi)
	subl	%esi, %ecx
	addl	$16, %esp
	addl	%esi, 16(%edx)
	addl	%esi, 20(%edi)
	testl	%ecx, %ecx
	movl	%ecx, 20(%edx)
	jne	.L721
	movl	8(%edx), %esi
	movl	%esi, 16(%edx)
	jmp	.L721
	.p2align 2,,3
.L712:
	movl	108(%ebx), %ecx
	movl	56(%ebx), %edi
	movb	(%ecx,%edi), %dl
	movl	5796(%ebx), %esi
	movl	5792(%ebx), %edi
	movl	5784(%ebx), %ecx
	movw	$0, (%esi,%edi,2)
	movb	%dl, (%edi,%ecx)
	incl	5792(%ebx)
	movzbl	%dl, %eax
	incw	148(%ebx,%eax,4)
	movl	5788(%ebx), %esi
	decl	%esi
	xorl	%edx, %edx
	cmpl	%esi, 5792(%ebx)
	sete	%dl
	decl	116(%ebx)
	incl	108(%ebx)
	jmp	.L715
.L743:
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L704
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L704
	addl	$258, %esi
.L706:
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	incl	%ecx
	movzbl	(%ecx), %eax
	cmpl	%eax, %edi
	jne	.L707
	cmpl	%esi, %ecx
	jb	.L706
.L707:
	subl	%ecx, %esi
	movl	$258, %ecx
	subl	%esi, %ecx
	cmpl	%edx, %ecx
	movl	%ecx, 96(%ebx)
	jbe	.L704
	movl	%edx, 96(%ebx)
	jmp	.L704
	.p2align 2,,3
.L742:
	subl	$12, %esp
	pushl	%ebx
	call	fill_window
	movl	116(%ebx), %edx
	addl	$16, %esp
	cmpl	$258, %edx
	ja	.L702
	movl	12(%ebp), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L697
.L702:
	testl	%edx, %edx
	jne	.L701
	cmpl	$4, 12(%ebp)
	movl	$0, 5812(%ebx)
	je	.L745
	movl	5792(%ebx), %edx
	testl	%edx, %edx
	je	.L732
	pushl	$0
	movl	92(%ebx), %edx
	movl	108(%ebx), %esi
	subl	%edx, %esi
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%esi
	js	.L734
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L734:
	pushl	%eax
	pushl	%ebx
	call	_tr_flush_block
	movl	108(%ebx), %edi
	movl	%edi, 92(%ebx)
	movl	(%ebx), %edi
	movl	28(%edi), %ecx
	movl	%ecx, (%esp)
	movl	%ecx, -24(%ebp)
	call	_tr_flush_bits
	movl	-24(%ebp), %eax
	movl	20(%eax), %esi
	movl	16(%edi), %eax
	addl	$16, %esp
	cmpl	%eax, %esi
	jbe	.L735
	movl	%eax, %esi
.L735:
	testl	%esi, %esi
	jne	.L746
.L737:
	movl	(%ebx), %ecx
	movl	16(%ecx), %edi
	testl	%edi, %edi
	je	.L741
.L732:
	movl	$1, %eax
	jmp	.L697
.L746:
	pushl	%eax
	pushl	%esi
	movl	-24(%ebp), %edx
	pushl	16(%edx)
	pushl	12(%edi)
	call	memcpy
	movl	-24(%ebp), %edx
	subl	%esi, 16(%edi)
	movl	20(%edx), %ecx
	addl	%esi, 12(%edi)
	subl	%esi, %ecx
	addl	$16, %esp
	addl	%esi, 16(%edx)
	addl	%esi, 20(%edi)
	testl	%ecx, %ecx
	movl	%ecx, 20(%edx)
	jne	.L737
	movl	8(%edx), %esi
	movl	%esi, 16(%edx)
	jmp	.L737
.L745:
	pushl	$1
	movl	92(%ebx), %edx
	movl	108(%ebx), %esi
	subl	%edx, %esi
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%esi
	js	.L726
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L726:
	pushl	%eax
	pushl	%ebx
	call	_tr_flush_block
	movl	108(%ebx), %edi
	movl	%edi, 92(%ebx)
	movl	(%ebx), %edi
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -20(%ebp)
	call	_tr_flush_bits
	movl	-20(%ebp), %eax
	movl	20(%eax), %esi
	movl	16(%edi), %eax
	addl	$16, %esp
	cmpl	%eax, %esi
	jbe	.L727
	movl	%eax, %esi
.L727:
	testl	%esi, %esi
	jne	.L747
.L729:
	movl	(%ebx), %ecx
	movl	16(%ecx), %edi
	testl	%edi, %edi
	setne	%bl
	movzbl	%bl, %eax
	addl	$2, %eax
	jmp	.L697
.L747:
	pushl	%eax
	pushl	%esi
	movl	-20(%ebp), %edx
	pushl	16(%edx)
	pushl	12(%edi)
	call	memcpy
	movl	-20(%ebp), %edx
	subl	%esi, 16(%edi)
	movl	20(%edx), %ecx
	addl	%esi, 12(%edi)
	subl	%esi, %ecx
	addl	$16, %esp
	addl	%esi, 16(%edx)
	addl	%esi, 20(%edi)
	testl	%ecx, %ecx
	movl	%ecx, 20(%edx)
	jne	.L729
	movl	8(%edx), %esi
	movl	%esi, 16(%edx)
	jmp	.L729
.Lfe14:
	.size	deflate_rle,.Lfe14-deflate_rle
	.p2align 2,,3
	.type	deflate_huff,@function
deflate_huff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %ebx
	.p2align 2,,3
.L749:
	movl	116(%ebx), %eax
	testl	%eax, %eax
	je	.L780
.L752:
	movl	108(%ebx), %ecx
	movl	56(%ebx), %edi
	movl	$0, 96(%ebx)
	movb	(%ecx,%edi), %dl
	movl	5796(%ebx), %esi
	movl	5792(%ebx), %edi
	movl	5784(%ebx), %ecx
	movw	$0, (%esi,%edi,2)
	movb	%dl, (%edi,%ecx)
	incl	5792(%ebx)
	movzbl	%dl, %esi
	incw	148(%ebx,%esi,4)
	movl	5788(%ebx), %edx
	decl	%edx
	cmpl	%edx, 5792(%ebx)
	sete	%al
	movl	108(%ebx), %edx
	incl	%edx
	decl	116(%ebx)
	testb	$1, %al
	movl	%edx, 108(%ebx)
	je	.L749
	pushl	$0
	movl	92(%ebx), %eax
	subl	%eax, %edx
	pushl	%edx
	xorl	%edx, %edx
	testl	%eax, %eax
	js	.L757
	movl	56(%ebx), %edx
	addl	%eax, %edx
.L757:
	pushl	%edx
	pushl	%ebx
	call	_tr_flush_block
	movl	108(%ebx), %esi
	movl	(%ebx), %edi
	movl	%esi, 92(%ebx)
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	_tr_flush_bits
	movl	-16(%ebp), %eax
	movl	20(%eax), %esi
	movl	16(%edi), %eax
	addl	$16, %esp
	cmpl	%eax, %esi
	jbe	.L758
	movl	%eax, %esi
.L758:
	testl	%esi, %esi
	jne	.L781
.L760:
	movl	(%ebx), %edi
	movl	16(%edi), %edx
	testl	%edx, %edx
	jne	.L749
.L779:
	xorl	%eax, %eax
.L748:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L781:
	pushl	%eax
	pushl	%esi
	movl	-16(%ebp), %ecx
	pushl	16(%ecx)
	pushl	12(%edi)
	call	memcpy
	movl	-16(%ebp), %edx
	subl	%esi, 16(%edi)
	addl	%esi, 12(%edi)
	addl	%esi, 20(%edi)
	movl	20(%edx), %edi
	subl	%esi, %edi
	addl	$16, %esp
	addl	%esi, 16(%edx)
	testl	%edi, %edi
	movl	%edi, 20(%edx)
	jne	.L760
	movl	8(%edx), %esi
	movl	%esi, 16(%edx)
	jmp	.L760
	.p2align 2,,3
.L780:
	subl	$12, %esp
	pushl	%ebx
	call	fill_window
	movl	116(%ebx), %eax
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L752
	movl	12(%ebp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.L748
	cmpl	$4, 12(%ebp)
	movl	$0, 5812(%ebx)
	je	.L782
	movl	5792(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L771
	pushl	$0
	movl	92(%ebx), %edx
	movl	108(%ebx), %esi
	subl	%edx, %esi
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%esi
	js	.L773
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L773:
	pushl	%eax
	pushl	%ebx
	call	_tr_flush_block
	movl	108(%ebx), %edi
	movl	%edi, 92(%ebx)
	movl	(%ebx), %edi
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	movl	%edx, -24(%ebp)
	call	_tr_flush_bits
	movl	-24(%ebp), %eax
	movl	20(%eax), %esi
	movl	16(%edi), %eax
	addl	$16, %esp
	cmpl	%eax, %esi
	jbe	.L774
	movl	%eax, %esi
.L774:
	testl	%esi, %esi
	jne	.L783
.L776:
	movl	(%ebx), %ecx
	movl	16(%ecx), %edi
	testl	%edi, %edi
	je	.L779
.L771:
	movl	$1, %eax
	jmp	.L748
.L783:
	pushl	%eax
	pushl	%esi
	movl	-24(%ebp), %edx
	pushl	16(%edx)
	pushl	12(%edi)
	call	memcpy
	movl	-24(%ebp), %edx
	subl	%esi, 16(%edi)
	movl	20(%edx), %ecx
	addl	%esi, 12(%edi)
	subl	%esi, %ecx
	addl	$16, %esp
	addl	%esi, 16(%edx)
	addl	%esi, 20(%edi)
	testl	%ecx, %ecx
	movl	%ecx, 20(%edx)
	jne	.L776
	movl	8(%edx), %esi
	movl	%esi, 16(%edx)
	jmp	.L776
.L782:
	pushl	$1
	movl	92(%ebx), %edx
	movl	108(%ebx), %ecx
	subl	%edx, %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	pushl	%ecx
	js	.L765
	movl	56(%ebx), %eax
	addl	%edx, %eax
.L765:
	pushl	%eax
	pushl	%ebx
	call	_tr_flush_block
	movl	(%ebx), %edi
	movl	108(%ebx), %edx
	movl	28(%edi), %esi
	movl	%edx, 92(%ebx)
	movl	%esi, -20(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	-20(%ebp), %eax
	movl	20(%eax), %esi
	movl	16(%edi), %eax
	addl	$16, %esp
	cmpl	%eax, %esi
	jbe	.L766
	movl	%eax, %esi
.L766:
	testl	%esi, %esi
	jne	.L784
.L768:
	movl	(%ebx), %edi
	movl	16(%edi), %edx
	testl	%edx, %edx
	setne	%bl
	movzbl	%bl, %eax
	addl	$2, %eax
	jmp	.L748
.L784:
	pushl	%eax
	pushl	%esi
	movl	-20(%ebp), %ecx
	pushl	16(%ecx)
	pushl	12(%edi)
	call	memcpy
	movl	-20(%ebp), %edx
	subl	%esi, 16(%edi)
	addl	%esi, 12(%edi)
	addl	%esi, 20(%edi)
	movl	20(%edx), %edi
	subl	%esi, %edi
	addl	$16, %esp
	addl	%esi, 16(%edx)
	testl	%edi, %edi
	movl	%edi, 20(%edx)
	jne	.L768
	movl	8(%edx), %esi
	movl	%esi, 16(%edx)
	jmp	.L768
.Lfe15:
	.size	deflate_huff,.Lfe15-deflate_huff
	.p2align 2,,3
.globl deflateInit_
	.type	deflateInit_,@function
deflateInit_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	$0
	pushl	$8
	pushl	$15
	pushl	$8
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	deflateInit2_
	leave
	ret
.Lfe16:
	.size	deflateInit_,.Lfe16-deflateInit_
	.p2align 2,,3
.globl deflateResetKeep
	.type	deflateResetKeep,@function
deflateResetKeep:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	movl	8(%ebp), %esi
	testl	%esi, %esi
	pushl	%ebx
	je	.L889
	movl	28(%esi), %ebx
	testl	%ebx, %ebx
	je	.L889
	movl	32(%esi), %edx
	testl	%edx, %edx
	je	.L889
	movl	36(%esi), %edx
	testl	%edx, %edx
	jne	.L888
	.p2align 2,,3
.L889:
	movl	$-2, %eax
.L887:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	leave
	ret
	.p2align 2,,3
.L888:
	movl	$2, 44(%esi)
	movl	24(%ebx), %eax
	movl	8(%ebx), %ecx
	testl	%eax, %eax
	movl	$0, 20(%esi)
	movl	$0, 8(%esi)
	movl	$0, 24(%esi)
	movl	$0, 20(%ebx)
	movl	%ecx, 16(%ebx)
	js	.L896
.L890:
	movl	24(%ebx), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	sete	%dl
	decl	%edx
	andl	$-71, %edx
	addl	$113, %edx
	cmpl	$2, %ecx
	movl	%edx, 4(%ebx)
	je	.L897
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	call	adler32
.L895:
	movl	%eax, 48(%esi)
	movl	$0, 40(%ebx)
	movl	%ebx, (%esp)
	call	_tr_init
	xorl	%eax, %eax
	jmp	.L887
.L897:
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	call	crc32
	jmp	.L895
.L896:
	negl	%eax
	movl	%eax, 24(%ebx)
	jmp	.L890
.Lfe17:
	.size	deflateResetKeep,.Lfe17-deflateResetKeep
	.p2align 2,,3
.globl deflateSetHeader
	.type	deflateSetHeader,@function
deflateSetHeader:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L902
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	.L902
	cmpl	$2, 24(%edx)
	je	.L901
.L902:
	movl	$-2, %eax
.L898:
	leave
	ret
	.p2align 2,,3
.L901:
	movl	12(%ebp), %ecx
	movl	%ecx, 28(%edx)
	xorl	%eax, %eax
	jmp	.L898
.Lfe18:
	.size	deflateSetHeader,.Lfe18-deflateSetHeader
	.p2align 2,,3
.globl deflatePending
	.type	deflatePending,@function
deflatePending:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	pushl	%ebx
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	je	.L905
	movl	28(%eax), %edx
	testl	%edx, %edx
	jne	.L904
.L905:
	movl	$-2, %eax
.L903:
	movl	(%esp), %ebx
	leave
	ret
	.p2align 2,,3
.L904:
	testl	%ecx, %ecx
	je	.L906
	movl	20(%edx), %eax
	movl	%eax, (%ecx)
.L906:
	testl	%ebx, %ebx
	je	.L907
	movl	5820(%edx), %ecx
	movl	%ecx, (%ebx)
.L907:
	xorl	%eax, %eax
	jmp	.L903
.Lfe19:
	.size	deflatePending,.Lfe19-deflatePending
	.p2align 2,,3
.globl deflatePrime
	.type	deflatePrime,@function
deflatePrime:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	movl	12(%ebp), %edi
	je	.L910
	movl	28(%eax), %ebx
	testl	%ebx, %ebx
	jne	.L909
.L910:
	movl	$-2, %eax
.L908:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L909:
	movl	16(%ebx), %edx
	addl	$2, %edx
	cmpl	%edx, 5796(%ebx)
	jae	.L912
	movl	$-5, %eax
	jmp	.L908
	.p2align 2,,3
.L912:
	movl	5820(%ebx), %edx
	movl	$16, %esi
	subl	%edx, %esi
	cmpl	%edi, %esi
	jle	.L915
	movl	%edi, %esi
.L915:
	movl	%esi, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	andl	16(%ebp), %eax
	movb	%dl, %cl
	sall	%cl, %eax
	subl	$12, %esp
	leal	(%esi,%edx), %ecx
	orw	%ax, 5816(%ebx)
	movl	%ecx, 5820(%ebx)
	pushl	%ebx
	call	_tr_flush_bits
	movl	%esi, %ecx
	sarl	%cl, 16(%ebp)
	addl	$16, %esp
	subl	%esi, %edi
	jne	.L912
	xorl	%eax, %eax
	jmp	.L908
.Lfe20:
	.size	deflatePrime,.Lfe20-deflatePrime
	.p2align 2,,3
.globl deflateTune
	.type	deflateTune,@function
deflateTune:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L919
	movl	28(%eax), %edx
	testl	%edx, %edx
	jne	.L918
.L919:
	movl	$-2, %eax
.L917:
	leave
	ret
	.p2align 2,,3
.L918:
	movl	12(%ebp), %ecx
	movl	%ecx, 140(%edx)
	movl	16(%ebp), %ecx
	movl	%ecx, 128(%edx)
	movl	20(%ebp), %ecx
	movl	%ecx, 144(%edx)
	movl	24(%ebp), %ecx
	movl	%ecx, 124(%edx)
	xorl	%eax, %eax
	jmp	.L917
.Lfe21:
	.size	deflateTune,.Lfe21-deflateTune
	.p2align 2,,3
	.type	longest_match,@function
longest_match:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	56(%eax), %ebx
	movl	%ebx, -16(%ebp)
	movl	120(%eax), %ebx
	movl	108(%eax), %edx
	movl	124(%eax), %edi
	movl	%ebx, -20(%ebp)
	movl	144(%eax), %ebx
	movl	8(%ebp), %eax
	movl	%ebx, -24(%ebp)
	movl	44(%eax), %ebx
	movl	-16(%ebp), %esi
	leal	-262(%ebx), %eax
	addl	%edx, %esi
	cmpl	%eax, %edx
	movl	12(%ebp), %ecx
	jbe	.L402
	movl	%edx, %eax
	subl	%ebx, %eax
	addl	$262, %eax
	movl	%eax, -28(%ebp)
.L403:
	movl	8(%ebp), %ebx
	movl	64(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %ebx
	movl	%ebx, -36(%ebp)
	movl	-16(%ebp), %ebx
	leal	258(%edx,%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	leal	(%edx,%esi), %eax
	movb	-1(%eax), %bl
	movb	%bl, -41(%ebp)
	movb	(%eax), %bl
	movb	%bl, -49(%ebp)
	movl	8(%ebp), %ebx
	cmpl	140(%ebx), %edx
	jb	.L404
	shrl	$2, %edi
.L404:
	movl	8(%ebp), %ebx
	movl	116(%ebx), %edx
	cmpl	%edx, -24(%ebp)
	movl	%edx, -48(%ebp)
	jbe	.L406
	movl	%edx, -24(%ebp)
	.p2align 2,,3
.L406:
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	movb	-49(%ebp), %bl
	movl	-20(%ebp), %eax
	cmpb	%bl, (%eax,%edx)
	je	.L931
.L408:
	movl	-36(%ebp), %ebx
	andl	%ecx, %ebx
	movl	-32(%ebp), %edx
	movzwl	(%edx,%ebx,2), %ecx
	cmpl	-28(%ebp), %ecx
	jbe	.L407
	decl	%edi
	jne	.L406
.L407:
	movl	-20(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jbe	.L401
	movl	-48(%ebp), %eax
.L401:
	addl	$40, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L931:
	movb	-41(%ebp), %bl
	cmpb	%bl, -1(%eax,%edx)
	jne	.L408
	movb	(%esi), %bl
	cmpb	%bl, (%edx)
	jne	.L408
	incl	%edx
	movb	1(%esi), %bl
	cmpb	%bl, (%edx)
	jne	.L408
	addl	$2, %esi
	incl	%edx
.L411:
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	incl	%edx
	incl	%esi
	movb	(%edx), %bl
	cmpb	%bl, (%esi)
	jne	.L412
	cmpl	-40(%ebp), %esi
	jb	.L411
.L412:
	movl	-40(%ebp), %ebx
	subl	%esi, %ebx
	movl	$258, %edx
	subl	%ebx, %edx
	movl	-40(%ebp), %esi
	subl	$258, %esi
	cmpl	-20(%ebp), %edx
	jle	.L408
	movl	-24(%ebp), %eax
	movl	8(%ebp), %ebx
	cmpl	%eax, %edx
	movl	%ecx, 112(%ebx)
	movl	%edx, -20(%ebp)
	jge	.L407
	leal	(%edx,%esi), %ebx
	movb	-1(%ebx), %al
	movb	%al, -41(%ebp)
	movb	(%ebx), %dl
	movb	%dl, -49(%ebp)
	jmp	.L408
	.p2align 2,,3
.L402:
	movl	$0, -28(%ebp)
	jmp	.L403
.Lfe22:
	.size	longest_match,.Lfe22-longest_match
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
