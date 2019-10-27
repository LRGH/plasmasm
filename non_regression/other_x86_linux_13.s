	.file	"deflate.c"
	.text
	.p2align 4,,15
	.type	longest_match, @function
longest_match:
.LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subl	$44, %esp
	.cfi_def_cfa_offset 60
	movl	108(%eax), %ecx
	movl	56(%eax), %esi
	movl	%edx, (%esp)
	movl	124(%eax), %ebp
	movl	%eax, 24(%esp)
	movl	120(%eax), %eax
	movl	%ecx, %edx
	addl	%esi, %ecx
	movl	%ecx, 28(%esp)
	movl	144(%edi), %ecx
	movl	44(%edi), %edi
	movl	%eax, 16(%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 32(%esp)
	leal	-262(%edi), %ecx
	cmpl	%ecx, %edx
	jbe	.L2
	movl	%edx, %ecx
	addl	$262, %ecx
	movl	%ecx, 4(%esp)
	subl	%edi, 4(%esp)
.L2:
	movl	24(%esp), %edi
	movl	64(%edi), %ecx
	movl	%ecx, 8(%esp)
	movl	52(%edi), %ecx
	movl	28(%esp), %edi
	movl	%ecx, 12(%esp)
	leal	258(%esi,%edx), %ecx
	movzbl	-1(%edi,%eax), %edx
	movl	%ecx, 40(%esp)
	movl	16(%esp), %ecx
	movb	%dl, 22(%esp)
	movzbl	(%edi,%eax), %edx
	movl	%ebp, %edi
	shrl	$2, %edi
	movb	%dl, 21(%esp)
	movl	24(%esp), %edx
	cmpl	140(%edx), %eax
	movl	116(%edx), %eax
	cmovnb	%edi, %ebp
	movl	32(%esp), %edi
	movl	%eax, 36(%esp)
	cmpl	%eax, %edi
	cmova	%eax, %edi
	movl	%edi, 32(%esp)
	jmp	.L17
	.p2align 4,,7
	.p2align 3
.L5:
	movl	(%esp), %edx
	movl	8(%esp), %eax
	andl	12(%esp), %edx
	movzwl	(%eax,%edx,2), %eax
	cmpl	%eax, 4(%esp)
	movl	%eax, (%esp)
	jnb	.L16
	subl	$1, %ebp
	je	.L16
.L17:
	movl	(%esp), %eax
	movl	%ecx, %edi
	addl	%esi, %eax
	movzbl	(%eax,%ecx), %edx
	cmpb	21(%esp), %dl
	movb	%dl, 16(%esp)
	jne	.L5
	movzbl	-1(%eax,%ecx), %edx
	cmpb	22(%esp), %dl
	movb	%dl, 23(%esp)
	jne	.L5
	movl	28(%esp), %edx
	movzbl	(%edx), %edx
	cmpb	%dl, (%eax)
	jne	.L5
	movl	28(%esp), %edx
	movzbl	1(%edx), %edx
	cmpb	%dl, 1(%eax)
	jne	.L5
	movl	28(%esp), %edi
	addl	$2, %edi
	movl	%edi, %edx
	leal	2(%eax), %edi
	movl	%edx, %eax
	jmp	.L14
	.p2align 4,,7
	.p2align 3
.L6:
	movzbl	2(%edi), %edx
	cmpb	%dl, 2(%eax)
	jne	.L31
	movzbl	3(%edi), %edx
	cmpb	%dl, 3(%eax)
	jne	.L32
	movzbl	4(%edi), %edx
	cmpb	%dl, 4(%eax)
	jne	.L33
	movzbl	5(%edi), %edx
	cmpb	%dl, 5(%eax)
	jne	.L34
	movzbl	6(%edi), %edx
	cmpb	%dl, 6(%eax)
	jne	.L35
	movzbl	7(%edi), %edx
	cmpb	%dl, 7(%eax)
	jne	.L36
	addl	$8, %edi
	addl	$8, %eax
	movzbl	(%edi), %edx
	cmpb	%dl, (%eax)
	jne	.L7
	cmpl	%eax, 40(%esp)
	jbe	.L7
.L14:
	movzbl	1(%edi), %edx
	cmpb	%dl, 1(%eax)
	je	.L6
	addl	$1, %eax
.L7:
	movl	40(%esp), %edx
	subl	%edx, %eax
	leal	258(%eax), %edi
	movl	%edx, %eax
	subl	$258, %eax
	cmpl	%edi, %ecx
	movl	%eax, 28(%esp)
	jge	.L23
	movl	24(%esp), %eax
	movl	(%esp), %ecx
	cmpl	%edi, 32(%esp)
	movl	%ecx, 112(%eax)
	jle	.L16
	movl	28(%esp), %eax
	movl	%edi, %ecx
	movzbl	-1(%eax,%edi), %eax
	movb	%al, 22(%esp)
	movl	40(%esp), %eax
	movzbl	-258(%eax,%edi), %eax
	movb	%al, 21(%esp)
	jmp	.L5
	.p2align 4,,7
	.p2align 3
.L16:
	movl	36(%esp), %eax
	cmpl	%eax, %edi
	cmovbe	%edi, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L23:
	.cfi_restore_state
	movzbl	16(%esp), %eax
	movl	%ecx, %edi
	movb	%al, 21(%esp)
	movzbl	23(%esp), %eax
	movb	%al, 22(%esp)
	jmp	.L5
.L36:
	addl	$7, %eax
	jmp	.L7
.L35:
	addl	$6, %eax
	jmp	.L7
.L34:
	addl	$5, %eax
	.p2align 4,,2
	jmp	.L7
.L33:
	addl	$4, %eax
	.p2align 4,,2
	jmp	.L7
.L32:
	addl	$3, %eax
	.p2align 4,,2
	jmp	.L7
.L31:
	addl	$2, %eax
	.p2align 4,,2
	jmp	.L7
	.cfi_endproc
.LFE66:
	.size	longest_match, .-longest_match
	.p2align 4,,15
	.type	fill_window, @function
fill_window:
.LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	44(%eax), %eax
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	116(%ebp), %ecx
	leal	(%eax,%eax), %esi
	movl	%eax, %edx
	movl	%eax, 40(%esp)
	subl	$262, %eax
	movl	%esi, 44(%esp)
	movl	%eax, 36(%esp)
	.p2align 4,,7
	.p2align 3
.L56:
	movl	60(%ebp), %edi
	movl	108(%ebp), %eax
	addl	36(%esp), %edx
	subl	%ecx, %edi
	subl	%eax, %edi
	cmpl	%edx, %eax
	jnb	.L64
	movl	0(%ebp), %esi
	movl	4(%esi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 12(%esp)
	je	.L52
.L43:
	movl	56(%ebp), %edx
	cmpl	12(%esp), %edi
	movl	%edx, 16(%esp)
	movl	116(%ebp), %edx
	jnb	.L59
	testl	%edi, %edi
	jne	.L65
	xorl	%eax, %eax
.L47:
	movl	5812(%ebp), %esi
	addl	%edx, %eax
	movl	%eax, 20(%esp)
	movl	%eax, 116(%ebp)
	addl	%esi, %eax
	cmpl	$2, %eax
	jbe	.L54
	movl	108(%ebp), %edx
	movl	56(%ebp), %eax
	movl	88(%ebp), %edi
	movl	%esi, 16(%esp)
	subl	%esi, %edx
	movl	%eax, %ecx
	movl	%edi, 24(%esp)
	movl	84(%ebp), %edi
	movl	%eax, 32(%esp)
	movzbl	(%eax,%edx), %eax
	movl	%edx, 12(%esp)
	movl	%edi, 28(%esp)
	movl	%eax, 72(%ebp)
	movzbl	1(%ecx,%edx), %edi
	movzbl	24(%esp), %ecx
	sall	%cl, %eax
	xorl	%eax, %edi
	andl	28(%esp), %edi
	movl	%edi, 72(%ebp)
	jmp	.L53
	.p2align 4,,7
	.p2align 3
.L55:
	movl	12(%esp), %esi
	movl	32(%esp), %edx
	movzbl	24(%esp), %ecx
	movl	68(%ebp), %eax
	movzbl	2(%edx,%esi), %edx
	sall	%cl, %edi
	movl	64(%ebp), %ecx
	xorl	%edi, %edx
	movl	52(%ebp), %edi
	andl	28(%esp), %edx
	leal	(%eax,%edx,2), %eax
	andl	%esi, %edi
	movzwl	(%eax), %esi
	movl	%edx, 72(%ebp)
	movw	%si, (%ecx,%edi,2)
	movzwl	12(%esp), %ecx
	movl	16(%esp), %esi
	addl	$1, 12(%esp)
	movw	%cx, (%eax)
	movl	20(%esp), %eax
	subl	$1, %esi
	movl	%esi, 5812(%ebp)
	addl	%esi, %eax
	cmpl	$2, %eax
	jbe	.L54
	movl	%edx, %edi
	movl	%esi, 16(%esp)
.L53:
	movl	16(%esp), %edx
	testl	%edx, %edx
	jne	.L55
.L54:
	cmpl	$261, 20(%esp)
	ja	.L52
	movl	0(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L52
	movl	44(%ebp), %edx
	movl	20(%esp), %ecx
	jmp	.L56
	.p2align 4,,7
	.p2align 3
.L59:
	xorl	%ecx, %ecx
.L46:
	movl	16(%esp), %edi
	addl	%edx, %eax
	movl	12(%esp), %edx
	movl	%ecx, 4(%esi)
	addl	%eax, %edi
	movl	(%esi), %eax
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	memcpy@PLT
	movl	28(%esi), %eax
	movl	24(%eax), %eax
	cmpl	$1, %eax
	je	.L66
	cmpl	$2, %eax
	je	.L67
.L49:
	movl	12(%esp), %eax
	addl	%eax, (%esi)
	addl	%eax, 8(%esi)
	movl	116(%ebp), %edx
	jmp	.L47
	.p2align 4,,7
	.p2align 3
.L64:
	movl	40(%esp), %esi
	movl	56(%ebp), %eax
	movl	%esi, 8(%esp)
	leal	(%eax,%esi), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	108(%ebp), %eax
	movl	76(%ebp), %edx
	subl	%esi, 112(%ebp)
	subl	%esi, 92(%ebp)
	movl	%eax, 12(%esp)
	subl	%esi, 12(%esp)
	movl	12(%esp), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 108(%ebp)
	movl	68(%ebp), %eax
	leal	(%eax,%edx,2), %eax
	.p2align 4,,7
	.p2align 3
.L40:
	subl	$2, %eax
	movzwl	(%eax), %ecx
	movl	%ecx, %edi
	subl	%esi, %edi
	cmpl	%ecx, %esi
	movl	$0, %ecx
	cmova	%ecx, %edi
	subl	$1, %edx
	movw	%di, (%eax)
	jne	.L40
	movl	40(%esp), %esi
	movl	44(%esp), %eax
	addl	64(%ebp), %eax
	movl	%esi, %edx
	.p2align 4,,7
	.p2align 3
.L42:
	subl	$2, %eax
	movzwl	(%eax), %ecx
	movl	%ecx, %edi
	subl	%esi, %edi
	cmpl	%ecx, %esi
	movl	$0, %ecx
	cmova	%ecx, %edi
	subl	$1, %edx
	movw	%di, (%eax)
	jne	.L42
	movl	0(%ebp), %esi
	movl	16(%esp), %edi
	addl	40(%esp), %edi
	movl	12(%esp), %eax
	movl	4(%esi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 12(%esp)
	jne	.L43
	.p2align 4,,7
	.p2align 3
.L52:
	movl	5824(%ebp), %eax
	movl	60(%ebp), %edx
	cmpl	%edx, %eax
	jnb	.L37
	movl	116(%ebp), %esi
	addl	108(%ebp), %esi
	cmpl	%esi, %eax
	jnb	.L57
	movl	56(%ebp), %eax
	subl	%esi, %edx
	movl	$258, %edi
	cmpl	$258, %edx
	cmovbe	%edx, %edi
	movl	%edi, 8(%esp)
	addl	%esi, %eax
	addl	%edi, %esi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset@PLT
	movl	%esi, 5824(%ebp)
.L37:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L66:
	.cfi_restore_state
	movl	12(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	48(%esi), %eax
	movl	%eax, (%esp)
	call	adler32@PLT
	movl	%eax, 48(%esi)
	jmp	.L49
.L67:
	movl	12(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	48(%esi), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	%eax, 48(%esi)
	jmp	.L49
.L57:
	leal	258(%esi), %ecx
	cmpl	%ecx, %eax
	jnb	.L37
	subl	%eax, %esi
	subl	%eax, %edx
	addl	$258, %esi
	cmpl	%edx, %esi
	cmova	%edx, %esi
	addl	56(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset@PLT
	addl	%esi, 5824(%ebp)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L65:
	.cfi_restore_state
	movl	12(%esp), %ecx
	movl	%edi, 12(%esp)
	subl	%edi, %ecx
	jmp	.L46
	.cfi_endproc
.LFE67:
	.size	fill_window, .-fill_window
	.p2align 4,,15
	.type	deflate_fast, @function
deflate_fast:
.LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %ebp
.L91:
	movl	116(%ebp), %edi
	.p2align 4,,7
	.p2align 3
.L85:
	cmpl	$261, %edi
	jbe	.L108
.L73:
	movl	108(%ebp), %esi
	movl	56(%ebp), %eax
	movl	88(%ebp), %ecx
	movl	72(%ebp), %edx
	movl	52(%ebp), %edi
	movzbl	2(%eax,%esi), %eax
	sall	%cl, %edx
	movl	64(%ebp), %ecx
	andl	%esi, %edi
	xorl	%edx, %eax
	movl	68(%ebp), %edx
	andl	84(%ebp), %eax
	movl	%eax, 72(%ebp)
	leal	(%edx,%eax,2), %eax
	movzwl	(%eax), %edx
	testl	%edx, %edx
	movw	%dx, (%ecx,%edi,2)
	movw	%si, (%eax)
	je	.L107
	movl	44(%ebp), %eax
	movl	%esi, %ecx
	subl	%edx, %ecx
	subl	$262, %eax
	cmpl	%eax, %ecx
	jbe	.L76
.L107:
	movl	96(%ebp), %eax
.L74:
	cmpl	$2, %eax
	jbe	.L77
	movl	5792(%ebp), %edx
	subl	$3, %eax
	movl	5796(%ebp), %ecx
	subw	112(%ebp), %si
	leal	1(%edx), %edi
	movw	%si, (%ecx,%edx,2)
	movl	5784(%ebp), %ecx
	subl	$1, %esi
	movl	%edi, 5792(%ebp)
	movb	%al, (%ecx,%edx)
	movzbl	%al, %eax
	movzbl	_length_code@GOTOFF(%ebx,%eax), %eax
	addw	$1, 1176(%ebp,%eax,4)
	cmpw	$255, %si
	ja	.L78
	movzwl	%si, %esi
	movzbl	_dist_code@GOTOFF(%ebx,%esi), %eax
.L79:
	addw	$1, 2440(%ebp,%eax,4)
	movl	5788(%ebp), %eax
	movl	116(%ebp), %ecx
	subl	$1, %eax
	cmpl	%eax, 5792(%ebp)
	movl	%ecx, 24(%esp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 28(%esp)
	movl	96(%ebp), %eax
	subl	%eax, 24(%esp)
	movl	24(%esp), %edi
	cmpl	128(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	%edi, 116(%ebp)
	ja	.L80
	cmpl	$2, %edi
	jbe	.L80
	movl	64(%ebp), %ecx
	leal	-1(%eax), %esi
	movl	108(%ebp), %eax
	movl	%esi, 96(%ebp)
	movl	72(%ebp), %edi
	movl	%esi, 20(%esp)
	movl	%ecx, 32(%esp)
	movl	52(%ebp), %ecx
	movl	%eax, 60(%esp)
	leal	1(%eax), %edx
	movl	%ebp, %eax
	movl	%ebp, 96(%esp)
	movl	%ecx, 36(%esp)
	movl	68(%ebp), %ecx
	movl	%ecx, 40(%esp)
	movl	56(%ebp), %ecx
	movl	%ecx, 44(%esp)
	movl	88(%ebp), %ecx
	movl	%ecx, 48(%esp)
	movl	84(%ebp), %ecx
	movl	%ecx, 52(%esp)
	jmp	.L82
	.p2align 4,,7
	.p2align 3
.L109:
	movl	%eax, %edi
	movl	96(%esp), %eax
	movl	%esi, 20(%esp)
.L82:
	movl	%edx, 108(%eax)
	movl	44(%esp), %eax
	movzbl	48(%esp), %ecx
	movl	32(%esp), %esi
	movzbl	2(%eax,%edx), %eax
	sall	%cl, %edi
	movl	96(%esp), %ecx
	xorl	%edi, %eax
	movl	36(%esp), %edi
	andl	52(%esp), %eax
	movl	%eax, 72(%ecx)
	movl	40(%esp), %ecx
	andl	%edx, %edi
	leal	(%ecx,%eax,2), %ecx
	movzwl	(%ecx), %ebp
	movw	%bp, (%esi,%edi,2)
	movl	20(%esp), %esi
	movl	96(%esp), %edi
	movw	%dx, (%ecx)
	addl	$1, %edx
	subl	$1, %esi
	testl	%esi, %esi
	movl	%esi, 96(%edi)
	jne	.L109
	movl	60(%esp), %edx
	movl	%edi, %ebp
	addl	56(%esp), %edx
	movl	%edx, 108(%edi)
	movl	24(%esp), %edi
	.p2align 4,,7
	.p2align 3
.L83:
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	.L85
	movl	92(%ebp), %eax
	xorl	%ecx, %ecx
	subl	%eax, %edx
	testl	%eax, %eax
	js	.L86
	addl	56(%ebp), %eax
	movl	%eax, %ecx
.L86:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %esi
	movl	108(%ebp), %eax
	movl	28(%esi), %edi
	movl	%eax, 92(%ebp)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%esi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L110
.L88:
	movl	0(%ebp), %eax
	movl	16(%eax), %esi
	testl	%esi, %esi
	jne	.L91
.L90:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L77:
	.cfi_restore_state
	movl	56(%ebp), %eax
	movl	5796(%ebp), %ecx
	movzbl	(%eax,%esi), %edx
	xorl	%esi, %esi
	movl	5792(%ebp), %eax
	movw	%si, (%ecx,%eax,2)
	movl	5784(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 5792(%ebp)
	movb	%dl, (%ecx,%eax)
	addw	$1, 148(%ebp,%edx,4)
	movl	5788(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, 5792(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 28(%esp)
	movl	116(%ebp), %eax
	leal	-1(%eax), %edi
	movl	108(%ebp), %eax
	movl	%edi, 116(%ebp)
	leal	1(%eax), %edx
	movl	%edx, 108(%ebp)
	jmp	.L83
	.p2align 4,,7
	.p2align 3
.L80:
	movl	56(%ebp), %eax
	movl	56(%esp), %edx
	addl	108(%ebp), %edx
	movl	$0, 96(%ebp)
	movl	88(%ebp), %ecx
	movl	24(%esp), %edi
	movl	%edx, 108(%ebp)
	movzbl	(%eax,%edx), %esi
	movl	%esi, 72(%ebp)
	movzbl	1(%eax,%edx), %eax
	sall	%cl, %esi
	xorl	%esi, %eax
	andl	84(%ebp), %eax
	movl	%eax, 72(%ebp)
	jmp	.L83
	.p2align 4,,7
	.p2align 3
.L108:
	movl	%ebp, %eax
	call	fill_window
	movl	116(%ebp), %eax
	cmpl	$261, %eax
	ja	.L73
	movl	100(%esp), %edi
	testl	%edi, %edi
	je	.L90
	testl	%eax, %eax
	je	.L72
	cmpl	$2, %eax
	ja	.L73
	movl	96(%ebp), %eax
	movl	108(%ebp), %esi
	jmp	.L74
	.p2align 4,,7
	.p2align 3
.L78:
	shrw	$7, %si
	movzwl	%si, %esi
	movzbl	256+_dist_code@GOTOFF(%ebx,%esi), %eax
	jmp	.L79
	.p2align 4,,7
	.p2align 3
.L76:
	movl	%ebp, %eax
	call	longest_match
	movl	108(%ebp), %esi
	movl	%eax, 96(%ebp)
	jmp	.L74
.L110:
	movl	12(%esi), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%esi)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%esi)
	subl	%edx, 16(%esi)
	subl	%edx, 20(%edi)
	jne	.L88
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L88
.L72:
	movl	108(%ebp), %edx
	movl	$2, %eax
	cmpl	$2, %edx
	cmovbe	%edx, %eax
	cmpl	$4, 100(%esp)
	movl	%eax, 5812(%ebp)
	je	.L111
	movl	5792(%ebp), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.L71
	movl	92(%ebp), %eax
	xorl	%ecx, %ecx
	subl	%eax, %edx
	testl	%eax, %eax
	js	.L97
	addl	56(%ebp), %eax
	movl	%eax, %ecx
.L97:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %edi
	movl	108(%ebp), %eax
	movl	28(%edi), %esi
	movl	%eax, 92(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	20(%esi), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L112
.L99:
	movl	0(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L71:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L111:
	.cfi_restore_state
	movl	92(%ebp), %eax
	xorl	%ecx, %ecx
	subl	%eax, %edx
	testl	%eax, %eax
	js	.L93
	addl	56(%ebp), %eax
	movl	%eax, %ecx
.L93:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %edi
	movl	108(%ebp), %eax
	movl	28(%edi), %esi
	movl	%eax, 92(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	20(%esi), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L113
.L95:
	movl	0(%ebp), %eax
	cmpl	$1, 16(%eax)
	sbbl	%eax, %eax
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	addl	$3, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L112:
	.cfi_restore_state
	movl	12(%edi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%esi)
	addl	%edx, 20(%edi)
	subl	%edx, 16(%edi)
	subl	%edx, 20(%esi)
	jne	.L99
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L99
.L113:
	movl	12(%edi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%esi)
	addl	%edx, 20(%edi)
	subl	%edx, 16(%edi)
	subl	%edx, 20(%esi)
	jne	.L95
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L95
	.cfi_endproc
.LFE69:
	.size	deflate_fast, .-deflate_fast
	.p2align 4,,15
	.type	deflate_slow, @function
deflate_slow:
.LFB70:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebp
.L170:
	movl	116(%ebp), %edx
	.p2align 4,,7
	.p2align 3
.L115:
	cmpl	$261, %edx
	jbe	.L173
.L153:
	movl	108(%ebp), %esi
	movl	56(%ebp), %eax
	movl	88(%ebp), %ecx
	movl	72(%ebp), %edx
	movl	52(%ebp), %edi
	movzbl	2(%eax,%esi), %eax
	sall	%cl, %edx
	movl	64(%ebp), %ecx
	andl	%esi, %edi
	xorl	%edx, %eax
	movl	68(%ebp), %edx
	andl	84(%ebp), %eax
	movl	%eax, 72(%ebp)
	leal	(%edx,%eax,2), %eax
	movzwl	(%eax), %edx
	movw	%dx, (%ecx,%edi,2)
	movl	%edx, %ecx
	movl	96(%ebp), %edx
	movw	%si, (%eax)
	movl	112(%ebp), %eax
	testl	%ecx, %ecx
	movl	$2, 96(%ebp)
	movl	%edx, 120(%ebp)
	movl	%eax, 100(%ebp)
	je	.L156
	cmpl	128(%ebp), %edx
	jnb	.L156
	movl	44(%ebp), %eax
	movl	%esi, %edi
	subl	%ecx, %edi
	subl	$262, %eax
	cmpl	%eax, %edi
	jbe	.L174
.L156:
	movl	$2, %eax
.L121:
	cmpl	$2, %edx
	jbe	.L126
	cmpl	%eax, %edx
	jb	.L126
	movl	116(%ebp), %eax
	movl	%esi, %ecx
	subl	$3, %edx
	subw	100(%ebp), %cx
	leal	-3(%esi,%eax), %eax
	movl	5796(%ebp), %esi
	movl	%eax, 24(%esp)
	movl	5792(%ebp), %eax
	leal	-1(%ecx), %edi
	subl	$2, %ecx
	movw	%di, (%esi,%eax,2)
	movl	5784(%ebp), %esi
	leal	1(%eax), %edi
	movl	%edi, 5792(%ebp)
	movb	%dl, (%esi,%eax)
	movzbl	%dl, %edx
	movzbl	_length_code@GOTOFF(%ebx,%edx), %eax
	addw	$1, 1176(%ebp,%eax,4)
	cmpw	$255, %cx
	ja	.L127
	movzwl	%cx, %ecx
	movzbl	_dist_code@GOTOFF(%ebx,%ecx), %eax
.L128:
	addw	$1, 2440(%ebp,%eax,4)
	movl	5792(%ebp), %eax
	movl	116(%ebp), %ecx
	movl	%eax, 32(%esp)
	movl	5788(%ebp), %eax
	leal	1(%ecx), %edi
	movl	%edi, 28(%esp)
	subl	$1, %eax
	movl	%eax, 36(%esp)
	movl	120(%ebp), %eax
	subl	%eax, 28(%esp)
	movl	28(%esp), %edi
	leal	-2(%eax), %esi
	movl	%eax, 40(%esp)
	movl	108(%ebp), %eax
	movl	%edi, 116(%ebp)
	movl	%esi, 120(%ebp)
	movl	%eax, 44(%esp)
	addl	$1, %eax
	.p2align 4,,7
	.p2align 3
.L172:
	cmpl	24(%esp), %eax
	movl	%esi, 20(%esp)
	movl	%eax, 108(%ebp)
	ja	.L129
	movl	56(%ebp), %edx
	movl	88(%ebp), %ecx
	movl	72(%ebp), %edi
	movzbl	2(%edx,%eax), %edx
	sall	%cl, %edi
	movl	68(%ebp), %ecx
	xorl	%edi, %edx
	movl	52(%ebp), %edi
	andl	84(%ebp), %edx
	movl	%edx, 72(%ebp)
	leal	(%ecx,%edx,2), %edx
	movl	64(%ebp), %ecx
	movzwl	(%edx), %esi
	andl	%eax, %edi
	movw	%si, (%ecx,%edi,2)
	movw	%ax, (%edx)
.L129:
	movl	20(%esp), %esi
	addl	$1, %eax
	subl	$1, %esi
	testl	%esi, %esi
	movl	%esi, 120(%ebp)
	jne	.L172
	movl	40(%esp), %eax
	movl	44(%esp), %ecx
	movl	36(%esp), %edi
	cmpl	%edi, 32(%esp)
	movl	$0, 104(%ebp)
	movl	28(%esp), %edx
	leal	-1(%eax,%ecx), %eax
	movl	$2, 96(%ebp)
	movl	%eax, 108(%ebp)
	jne	.L115
	movl	92(%ebp), %edx
	xorl	%ecx, %ecx
	subl	%edx, %eax
	testl	%edx, %edx
	js	.L133
	movl	56(%ebp), %ecx
	addl	%edx, %ecx
.L133:
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %esi
	movl	108(%ebp), %eax
	movl	28(%esi), %edi
	movl	%eax, 92(%ebp)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%esi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L175
.L135:
	movl	0(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L170
.L137:
	xorl	%eax, %eax
.L167:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L126:
	.cfi_restore_state
	movl	104(%ebp), %edi
	testl	%edi, %edi
	je	.L138
	movl	56(%ebp), %eax
	movl	5796(%ebp), %ecx
	movzbl	-1(%eax,%esi), %edx
	xorl	%esi, %esi
	movl	5792(%ebp), %eax
	movw	%si, (%ecx,%eax,2)
	movl	5784(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 5792(%ebp)
	movb	%dl, (%ecx,%eax)
	addw	$1, 148(%ebp,%edx,4)
	movl	5788(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, 5792(%ebp)
	je	.L176
.L140:
	movl	116(%ebp), %eax
	addl	$1, 108(%ebp)
	leal	-1(%eax), %edx
	movl	0(%ebp), %eax
	movl	%edx, 116(%ebp)
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L137
	cmpl	$261, %edx
	ja	.L153
.L173:
	movl	%ebp, %eax
	call	fill_window
	movl	116(%ebp), %eax
	cmpl	$261, %eax
	ja	.L153
	movl	84(%esp), %edx
	testl	%edx, %edx
	je	.L137
	testl	%eax, %eax
	je	.L119
	cmpl	$2, %eax
	ja	.L153
	movl	96(%ebp), %edx
	movl	112(%ebp), %eax
	movl	$2, 96(%ebp)
	movl	108(%ebp), %esi
	movl	%edx, 120(%ebp)
	movl	%eax, 100(%ebp)
	movl	$2, %eax
	jmp	.L121
	.p2align 4,,7
	.p2align 3
.L138:
	movl	116(%ebp), %eax
	addl	$1, %esi
	movl	$1, 104(%ebp)
	movl	%esi, 108(%ebp)
	leal	-1(%eax), %edx
	movl	%edx, 116(%ebp)
	jmp	.L115
	.p2align 4,,7
	.p2align 3
.L127:
	shrw	$7, %cx
	movzwl	%cx, %ecx
	movzbl	256+_dist_code@GOTOFF(%ebx,%ecx), %eax
	jmp	.L128
	.p2align 4,,7
	.p2align 3
.L176:
	movl	92(%ebp), %edx
	xorl	%ecx, %ecx
	movl	108(%ebp), %eax
	subl	%edx, %eax
	testl	%edx, %edx
	js	.L141
	movl	56(%ebp), %ecx
	addl	%edx, %ecx
.L141:
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %esi
	movl	108(%ebp), %eax
	movl	28(%esi), %edi
	movl	%eax, 92(%ebp)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%esi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	je	.L140
	movl	12(%esi), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%esi)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%esi)
	subl	%edx, 16(%esi)
	subl	%edx, 20(%edi)
	jne	.L140
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L140
	.p2align 4,,7
	.p2align 3
.L174:
	movl	%ecx, %edx
	movl	%ebp, %eax
	call	longest_match
	cmpl	$5, %eax
	movl	%eax, 96(%ebp)
	ja	.L171
	cmpl	$1, 136(%ebp)
	je	.L177
	cmpl	$3, %eax
	je	.L125
.L171:
	movl	120(%ebp), %edx
	movl	108(%ebp), %esi
	jmp	.L121
.L175:
	movl	12(%esi), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%esi)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%esi)
	subl	%edx, 16(%esi)
	subl	%edx, 20(%edi)
	jne	.L135
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L135
.L177:
	movl	108(%ebp), %esi
.L124:
	movl	$2, 96(%ebp)
	movl	120(%ebp), %edx
	movl	$2, %eax
	jmp	.L121
.L125:
	movl	108(%ebp), %esi
	movl	%esi, %eax
	subl	112(%ebp), %eax
	cmpl	$4096, %eax
	ja	.L124
	movl	120(%ebp), %edx
	movl	$3, %eax
	jmp	.L121
.L119:
	movl	104(%ebp), %edi
	testl	%edi, %edi
	jne	.L178
.L143:
	movl	108(%ebp), %edx
	movl	$2, %eax
	cmpl	$2, %edx
	cmovbe	%edx, %eax
	cmpl	$4, 84(%esp)
	movl	%eax, 5812(%ebp)
	je	.L179
	movl	5792(%ebp), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.L167
	movl	92(%ebp), %eax
	xorl	%ecx, %ecx
	subl	%eax, %edx
	testl	%eax, %eax
	js	.L149
	addl	56(%ebp), %eax
	movl	%eax, %ecx
.L149:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %edi
	movl	108(%ebp), %eax
	movl	28(%edi), %esi
	movl	%eax, 92(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	20(%esi), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L180
.L151:
	movl	0(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L178:
	.cfi_restore_state
	movl	108(%ebp), %eax
	xorl	%esi, %esi
	movl	56(%ebp), %edx
	movl	5796(%ebp), %ecx
	movzbl	-1(%edx,%eax), %edx
	movl	5792(%ebp), %eax
	movw	%si, (%ecx,%eax,2)
	movl	5784(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 5792(%ebp)
	movb	%dl, (%ecx,%eax)
	addw	$1, 148(%ebp,%edx,4)
	movl	$0, 104(%ebp)
	jmp	.L143
.L179:
	movl	92(%ebp), %eax
	xorl	%ecx, %ecx
	subl	%eax, %edx
	testl	%eax, %eax
	js	.L145
	addl	56(%ebp), %eax
	movl	%eax, %ecx
.L145:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %edi
	movl	108(%ebp), %eax
	movl	28(%edi), %esi
	movl	%eax, 92(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	20(%esi), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L181
.L147:
	movl	0(%ebp), %eax
	cmpl	$1, 16(%eax)
	sbbl	%eax, %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	addl	$3, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L180:
	.cfi_restore_state
	movl	12(%edi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%esi)
	addl	%edx, 20(%edi)
	subl	%edx, 16(%edi)
	subl	%edx, 20(%esi)
	jne	.L151
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L151
.L181:
	movl	12(%edi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%esi)
	addl	%edx, 20(%edi)
	subl	%edx, 16(%edi)
	subl	%edx, 20(%esi)
	jne	.L147
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L147
	.cfi_endproc
.LFE70:
	.size	deflate_slow, .-deflate_slow
	.p2align 4,,15
	.type	deflate_stored, @function
deflate_stored:
.LFB68:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%esi), %eax
	subl	$5, %eax
	movl	%eax, %edi
	cmpl	$65535, %eax
	movl	$65535, %eax
	cmovb	%edi, %eax
	movl	%eax, 24(%esp)
	jmp	.L195
	.p2align 4,,7
	.p2align 3
.L191:
	movl	(%esi), %eax
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L193
.L225:
	movl	108(%esi), %edx
	movl	92(%esi), %eax
.L188:
	movl	44(%esi), %edi
	subl	%eax, %edx
	leal	-262(%edi), %ecx
	cmpl	%ecx, %edx
	jnb	.L223
.L195:
	movl	116(%esi), %edx
	cmpl	$1, %edx
	jbe	.L224
.L184:
	addl	108(%esi), %edx
	movl	92(%esi), %eax
	movl	24(%esp), %edi
	testl	%edx, %edx
	movl	%edx, 108(%esi)
	movl	$0, 116(%esi)
	leal	(%edi,%eax), %ecx
	je	.L187
	cmpl	%ecx, %edx
	jb	.L188
.L187:
	subl	%ecx, %edx
	movl	%edx, 116(%esi)
	xorl	%edx, %edx
	movl	%ecx, 108(%esi)
	subl	%eax, %ecx
	testl	%eax, %eax
	js	.L189
	addl	56(%esi), %eax
	movl	%eax, %edx
.L189:
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	call	_tr_flush_block
	movl	(%esi), %edi
	movl	108(%esi), %eax
	movl	28(%edi), %ebp
	movl	%eax, 92(%esi)
	movl	%ebp, (%esp)
	call	_tr_flush_bits
	movl	20(%ebp), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	je	.L191
	movl	12(%edi), %eax
	movl	16(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	28(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%ebp)
	addl	%edx, 20(%edi)
	subl	%edx, 16(%edi)
	subl	%edx, 20(%ebp)
	jne	.L191
	movl	8(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	(%esi), %eax
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L225
.L193:
	xorl	%eax, %eax
.L186:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L224:
	.cfi_restore_state
	movl	%esi, %eax
	call	fill_window
	movl	116(%esi), %edx
	testl	%edx, %edx
	jne	.L184
	movl	68(%esp), %edi
	testl	%edi, %edi
	je	.L193
	cmpl	$4, 68(%esp)
	movl	$0, 5812(%esi)
	je	.L226
	movl	108(%esi), %ecx
	movl	$1, %eax
	movl	92(%esi), %edx
	cmpl	%edx, %ecx
	jle	.L186
	subl	%edx, %ecx
	xorb	%al, %al
	testl	%edx, %edx
	js	.L206
	movl	56(%esi), %eax
	addl	%edx, %eax
.L206:
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	call	_tr_flush_block
	movl	(%esi), %ebp
	movl	108(%esi), %eax
	movl	28(%ebp), %edi
	movl	%eax, 92(%esi)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%ebp), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L227
.L208:
	movl	(%esi), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L186
	.p2align 4,,7
	.p2align 3
.L223:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.L196
	addl	56(%esi), %eax
	movl	%eax, %ecx
.L196:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	call	_tr_flush_block
	movl	(%esi), %edi
	movl	108(%esi), %eax
	movl	28(%edi), %ebp
	movl	%eax, 92(%esi)
	movl	%ebp, (%esp)
	call	_tr_flush_bits
	movl	20(%ebp), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L228
.L198:
	movl	(%esi), %eax
	movl	16(%eax), %edx
	testl	%edx, %edx
	jne	.L195
	jmp	.L193
	.p2align 4,,7
	.p2align 3
.L228:
	movl	12(%edi), %eax
	movl	16(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	28(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%ebp)
	addl	%edx, 20(%edi)
	subl	%edx, 16(%edi)
	subl	%edx, 20(%ebp)
	jne	.L198
	movl	8(%ebp), %eax
	movl	%eax, 16(%ebp)
	jmp	.L198
.L226:
	movl	92(%esi), %edx
	xorl	%ecx, %ecx
	movl	108(%esi), %eax
	subl	%edx, %eax
	testl	%edx, %edx
	js	.L202
	movl	56(%esi), %ecx
	addl	%edx, %ecx
.L202:
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, 12(%esp)
	movl	%esi, (%esp)
	call	_tr_flush_block
	movl	(%esi), %ebp
	movl	108(%esi), %eax
	movl	28(%ebp), %edi
	movl	%eax, 92(%esi)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%ebp), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L229
.L204:
	movl	(%esi), %eax
	cmpl	$1, 16(%eax)
	sbbl	%eax, %eax
	addl	$3, %eax
	jmp	.L186
.L227:
	movl	12(%ebp), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	24(%esp), %edx
	addl	%edx, 12(%ebp)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%ebp)
	subl	%edx, 16(%ebp)
	subl	%edx, 20(%edi)
	jne	.L208
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L208
.L229:
	movl	12(%ebp), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	24(%esp), %edx
	addl	%edx, 12(%ebp)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%ebp)
	subl	%edx, 16(%ebp)
	subl	%edx, 20(%edi)
	jne	.L204
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L204
	.cfi_endproc
.LFE68:
	.size	deflate_stored, .-deflate_stored
	.p2align 4,,15
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
.LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %ecx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	100(%esp), %esi
	movl	104(%esp), %ebp
	testl	%ecx, %ecx
	je	.L251
	movl	96(%esp), %eax
	movl	28(%eax), %edi
	testl	%edi, %edi
	je	.L251
	testl	%esi, %esi
	je	.L251
	movl	24(%edi), %eax
	cmpl	$2, %eax
	movl	%eax, 52(%esp)
	je	.L251
	cmpl	$1, %eax
	je	.L257
	movl	116(%edi), %eax
	testl	%eax, %eax
	jne	.L251
	movl	44(%edi), %eax
	movl	$0, 24(%edi)
	cmpl	%eax, %ebp
	jnb	.L258
.L235:
	movl	96(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, 56(%esp)
	movl	96(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 60(%esp)
	movl	96(%esp), %eax
	movl	%ebp, 4(%eax)
	movl	%esi, (%eax)
	movl	%edi, %eax
	call	fill_window
	movl	116(%edi), %eax
	cmpl	$2, %eax
	jbe	.L237
	movl	%eax, %edx
	.p2align 4,,7
	.p2align 3
.L240:
	movl	88(%edi), %ecx
	movl	108(%edi), %esi
	movl	68(%edi), %ebp
	movl	72(%edi), %eax
	movl	%ecx, 28(%esp)
	movl	56(%edi), %ecx
	movl	%edi, 20(%esp)
	movl	%ebp, 48(%esp)
	movl	%ecx, 32(%esp)
	movl	84(%edi), %ecx
	movl	%ecx, 36(%esp)
	movl	64(%edi), %ecx
	movl	%ecx, 40(%esp)
	movl	52(%edi), %ecx
	movl	%ecx, 44(%esp)
	leal	-2(%esi,%edx), %ecx
	movl	%ecx, 24(%esp)
	jmp	.L239
	.p2align 4,,7
	.p2align 3
.L259:
	movl	%edx, %eax
.L239:
	movl	32(%esp), %edx
	movzbl	28(%esp), %ecx
	movl	40(%esp), %ebp
	movzbl	2(%edx,%esi), %edx
	sall	%cl, %eax
	movl	44(%esp), %ecx
	xorl	%eax, %edx
	movl	20(%esp), %eax
	andl	36(%esp), %edx
	andl	%esi, %ecx
	movl	%edx, 72(%eax)
	movl	48(%esp), %eax
	leal	(%eax,%edx,2), %eax
	movzwl	(%eax), %edi
	movw	%di, 0(%ebp,%ecx,2)
	movw	%si, (%eax)
	addl	$1, %esi
	cmpl	24(%esp), %esi
	jne	.L259
	movl	20(%esp), %edi
	movl	%esi, 108(%edi)
	movl	%edi, %eax
	movl	$2, 116(%edi)
	call	fill_window
	movl	116(%edi), %edx
	cmpl	$2, %edx
	ja	.L240
	movl	%edx, %eax
.L237:
	movl	108(%edi), %edx
	movl	%eax, 5812(%edi)
	movl	60(%esp), %esi
	movl	$0, 116(%edi)
	movl	$2, 120(%edi)
	addl	%eax, %edx
	movl	96(%esp), %eax
	movl	%edx, 108(%edi)
	movl	%edx, 92(%edi)
	movl	$2, 96(%edi)
	movl	$0, 104(%edi)
	movl	%esi, (%eax)
	movl	56(%esp), %esi
	movl	%esi, 4(%eax)
	movl	52(%esp), %eax
	movl	%eax, 24(%edi)
	xorl	%eax, %eax
.L253:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L258:
	.cfi_restore_state
	movl	52(%esp), %edx
	testl	%edx, %edx
	je	.L260
.L234:
	movl	%ebp, %edx
	movl	%eax, %ebp
	subl	%eax, %edx
	addl	%edx, %esi
	jmp	.L235
.L257:
	cmpl	$42, 4(%edi)
	jne	.L251
	movl	116(%edi), %edx
	testl	%edx, %edx
	jne	.L251
	movl	96(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%esi, 4(%esp)
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	adler32@PLT
	movl	96(%esp), %ecx
	movl	%eax, 48(%ecx)
	movl	44(%edi), %eax
	movl	$0, 24(%edi)
	cmpl	%eax, %ebp
	jnb	.L234
	jmp	.L235
.L260:
	movl	76(%edi), %eax
	movl	68(%edi), %edx
	addl	$2147483647, %eax
	leal	(%eax,%eax), %ecx
	movw	$0, (%edx,%eax,2)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	movl	44(%edi), %eax
	movl	$0, 108(%edi)
	movl	$0, 92(%edi)
	movl	$0, 5812(%edi)
	jmp	.L234
.L251:
	movl	$-2, %eax
	jmp	.L253
	.cfi_endproc
.LFE50:
	.size	deflateSetDictionary, .-deflateSetDictionary
	.p2align 4,,15
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
.LFB51:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	testl	%esi, %esi
	je	.L271
	movl	28(%esi), %edi
	testl	%edi, %edi
	je	.L271
	movl	32(%esi), %edx
	testl	%edx, %edx
	je	.L271
	movl	36(%esi), %eax
	testl	%eax, %eax
	je	.L271
	movl	8(%edi), %eax
	movl	$0, 20(%esi)
	movl	$0, 8(%esi)
	movl	$0, 24(%esi)
	movl	$2, 44(%esi)
	movl	%eax, 16(%edi)
	movl	24(%edi), %eax
	movl	$0, 20(%edi)
	testl	%eax, %eax
	js	.L263
	jne	.L264
	movl	$113, 4(%edi)
.L266:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	adler32@PLT
.L267:
	movl	%eax, 48(%esi)
	movl	$0, 40(%edi)
	movl	%edi, (%esp)
	call	_tr_init
	xorl	%eax, %eax
.L273:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L263:
	.cfi_restore_state
	negl	%eax
	movl	%eax, 24(%edi)
.L264:
	cmpl	$2, %eax
	movl	$42, 4(%edi)
	jne	.L266
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	crc32@PLT
	jmp	.L267
	.p2align 4,,7
	.p2align 3
.L271:
	movl	$-2, %eax
	jmp	.L273
	.cfi_endproc
.LFE51:
	.size	deflateResetKeep, .-deflateResetKeep
	.p2align 4,,15
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
.LFB52:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	32(%esp), %esi
	movl	%esi, (%esp)
	call	deflateResetKeep@PLT
	testl	%eax, %eax
	movl	%eax, %edi
	jne	.L276
	movl	28(%esi), %esi
	movl	44(%esi), %eax
	movl	76(%esi), %ecx
	addl	%eax, %eax
	movl	%eax, 60(%esi)
	movl	68(%esi), %eax
	leal	2147483647(%ecx), %edx
	leal	(%edx,%edx), %ecx
	movw	$0, (%eax,%edx,2)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset@PLT
	movl	132(%esi), %eax
	movl	$0, 108(%esi)
	movl	$0, 92(%esi)
	movl	$0, 116(%esi)
	leal	(%eax,%eax,2), %eax
	leal	configuration_table@GOTOFF(%ebx,%eax,4), %eax
	movzwl	2(%eax), %edx
	movl	$0, 5812(%esi)
	movl	$2, 120(%esi)
	movl	$2, 96(%esi)
	movl	%edx, 128(%esi)
	movzwl	(%eax), %edx
	movl	$0, 104(%esi)
	movl	$0, 72(%esi)
	movl	%edx, 140(%esi)
	movzwl	4(%eax), %edx
	movzwl	6(%eax), %eax
	movl	%edx, 144(%esi)
	movl	%eax, 124(%esi)
.L276:
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE52:
	.size	deflateReset, .-deflateReset
	.p2align 4,,15
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
.LFB53:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	.L282
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L282
	cmpl	$2, 24(%eax)
	jne	.L282
	movl	8(%esp), %edx
	movl	%edx, 28(%eax)
	xorl	%eax, %eax
	ret
	.p2align 4,,7
	.p2align 3
.L282:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE53:
	.size	deflateSetHeader, .-deflateSetHeader
	.p2align 4,,15
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
.LFB54:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	8(%esp), %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	.L287
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L287
	testl	%ecx, %ecx
	je	.L285
	movl	20(%eax), %esi
	movl	%esi, (%ecx)
.L285:
	testl	%edx, %edx
	je	.L288
	movl	5820(%eax), %eax
	movl	%eax, (%edx)
	xorl	%eax, %eax
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L288:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L287:
	.cfi_restore_state
	movl	$-2, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE54:
	.size	deflatePending, .-deflatePending
	.p2align 4,,15
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
.LFB55:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	36(%esp), %ebp
	testl	%eax, %eax
	je	.L297
	movl	28(%eax), %edi
	testl	%edi, %edi
	je	.L297
	movl	16(%edi), %eax
	addl	$2, %eax
	cmpl	%eax, 5796(%edi)
	jb	.L298
	.p2align 4,,7
	.p2align 3
.L295:
	movl	5820(%edi), %edx
	movl	$16, %esi
	movl	$1, %eax
	subl	%edx, %esi
	cmpl	%esi, %ebp
	cmovle	%ebp, %esi
	movl	%esi, %ecx
	sall	%cl, %eax
	movl	%edx, %ecx
	subl	$1, %eax
	andl	40(%esp), %eax
	sall	%cl, %eax
	orw	%ax, 5816(%edi)
	leal	(%edx,%esi), %eax
	movl	%eax, 5820(%edi)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	%esi, %ecx
	sarl	%cl, 40(%esp)
	subl	%esi, %ebp
	jne	.L295
	xorl	%eax, %eax
.L294:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L298:
	.cfi_restore_state
	movl	$-5, %eax
	jmp	.L294
.L297:
	movl	$-2, %eax
	jmp	.L294
	.cfi_endproc
.LFE55:
	.size	deflatePrime, .-deflatePrime
	.p2align 4,,15
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
.LFB57:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	.L304
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L304
	movl	8(%esp), %edx
	movl	%edx, 140(%eax)
	movl	12(%esp), %edx
	movl	%edx, 128(%eax)
	movl	16(%esp), %edx
	movl	%edx, 144(%eax)
	movl	20(%esp), %edx
	movl	%edx, 124(%eax)
	xorl	%eax, %eax
	ret
	.p2align 4,,7
	.p2align 3
.L304:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE57:
	.size	deflateTune, .-deflateTune
	.p2align 4,,15
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
.LFB58:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	28(%esp), %ecx
	movl	24(%esp), %esi
	leal	7(%ecx), %edi
	movl	%edi, %edx
	leal	63(%ecx), %eax
	shrl	$3, %edx
	shrl	$6, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	testl	%esi, %esi
	je	.L306
	movl	28(%esi), %esi
	testl	%esi, %esi
	je	.L306
	movl	24(%esi), %edx
	cmpl	$1, %edx
	je	.L310
	cmpl	$2, %edx
	je	.L311
	cmpl	$1, %edx
	sbbl	%edx, %edx
	notl	%edx
	andl	$6, %edx
.L309:
	cmpl	$15, 48(%esi)
	je	.L330
.L318:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	leal	5(%edx,%eax), %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L311:
	.cfi_restore_state
	movl	28(%esi), %edx
	testl	%edx, %edx
	movl	%edx, (%esp)
	je	.L322
	movl	16(%edx), %ebp
	testl	%ebp, %ebp
	je	.L323
	movl	20(%edx), %edx
	movl	%edx, 4(%esp)
	addl	$20, %edx
.L313:
	movl	(%esp), %ebp
	movl	28(%ebp), %ebp
	testl	%ebp, %ebp
	je	.L314
	subl	%edx, %ebp
	.p2align 4,,7
	.p2align 3
.L315:
	addl	$1, %edx
	cmpb	$0, -1(%ebp,%edx)
	jne	.L315
.L314:
	movl	(%esp), %ebp
	movl	36(%ebp), %ebp
	testl	%ebp, %ebp
	je	.L316
	subl	%edx, %ebp
	.p2align 4,,7
	.p2align 3
.L317:
	addl	$1, %edx
	cmpb	$0, -1(%ebp,%edx)
	jne	.L317
.L316:
	leal	2(%edx), %ebp
	movl	%ebp, 4(%esp)
	movl	(%esp), %ebp
	movl	44(%ebp), %ebp
	testl	%ebp, %ebp
	cmovne	4(%esp), %edx
	cmpl	$15, 48(%esi)
	jne	.L318
.L330:
	cmpl	$15, 80(%esi)
	jne	.L318
	movl	%ecx, %eax
	movl	%ecx, %esi
	shrl	$12, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	addl	%edi, %eax
	shrl	$14, %esi
	addl	%esi, %eax
	shrl	$25, %ecx
	addl	%ecx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	%edx, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L310:
	.cfi_restore_state
	cmpl	$1, 108(%esi)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$10, %edx
	jmp	.L309
	.p2align 4,,7
	.p2align 3
.L306:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	addl	$11, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L322:
	.cfi_restore_state
	movl	$18, %edx
	jmp	.L309
	.p2align 4,,7
	.p2align 3
.L323:
	movl	$18, %edx
	jmp	.L313
	.cfi_endproc
.LFE58:
	.size	deflateBound, .-deflateBound
	.p2align 4,,15
	.globl	deflate
	.type	deflate, @function
deflate:
.LFB61:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ecx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	testl	%ecx, %ecx
	je	.L490
	movl	64(%esp), %eax
	movl	28(%eax), %ebp
	testl	%ebp, %ebp
	je	.L490
	cmpl	$5, 68(%esp)
	ja	.L490
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	.L333
	movl	(%eax), %edi
	testl	%edi, %edi
	je	.L580
.L334:
	movl	4(%ebp), %eax
	cmpl	$666, %eax
	je	.L581
.L335:
	movl	64(%esp), %esi
	movl	16(%esi), %ecx
	testl	%ecx, %ecx
	je	.L582
	movl	%esi, 0(%ebp)
	movl	68(%esp), %edi
	cmpl	$42, %eax
	movl	40(%ebp), %esi
	movl	%edi, 40(%ebp)
	movl	%esi, 24(%esp)
	je	.L583
	cmpl	$69, %eax
	je	.L556
.L593:
	cmpl	$73, %eax
	movl	20(%ebp), %edx
	je	.L584
.L366:
	cmpl	$91, %eax
	je	.L585
.L341:
	cmpl	$103, %eax
	je	.L586
.L390:
	testl	%edx, %edx
	movl	64(%esp), %eax
	jne	.L587
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	.L400
	movl	68(%esp), %eax
	movl	24(%esp), %esi
	cmpl	$5, %eax
	leal	(%eax,%eax), %edx
	sete	%al
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	leal	(%eax,%eax,8), %eax
	subl	%eax, %edx
	movl	%esi, %eax
	addl	%eax, %eax
	cmpl	$5, %esi
	setge	%cl
	leal	(%ecx,%ecx,8), %ecx
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jg	.L403
	cmpl	$4, 68(%esp)
	jne	.L564
.L403:
	movl	4(%ebp), %eax
	.p2align 4,,7
	.p2align 3
.L405:
	movl	116(%ebp), %ecx
	testl	%ecx, %ecx
	jne	.L406
	movl	68(%esp), %edx
	testl	%edx, %edx
	je	.L565
	cmpl	$666, %eax
	jne	.L406
	.p2align 4,,7
	.p2align 3
.L408:
	cmpl	$4, 68(%esp)
	jne	.L565
	movl	24(%ebp), %eax
	testl	%eax, %eax
	jle	.L532
	cmpl	$2, %eax
	je	.L588
	movl	64(%esp), %eax
	movl	8(%ebp), %edi
	movl	48(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	leal	1(%eax), %esi
	shrl	$24, %edx
	movl	%esi, 20(%ebp)
	shrl	$16, %ecx
	movb	%dl, (%edi,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %esi
	movl	%esi, 20(%ebp)
	movb	%cl, (%edx,%eax)
	movl	64(%esp), %eax
	movl	8(%ebp), %edi
	movzwl	48(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	leal	1(%eax), %esi
	shrl	$8, %ecx
	movl	%esi, 20(%ebp)
	movb	%cl, (%edi,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 20(%ebp)
	movb	%dl, (%ecx,%eax)
	movl	64(%esp), %eax
.L478:
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %edi
	movl	20(%esi), %eax
	movl	16(%edi), %edi
	cmpl	%eax, %edi
	cmova	%eax, %edi
	testl	%edi, %edi
	jne	.L589
.L480:
	movl	24(%ebp), %eax
	testl	%eax, %eax
	jle	.L482
	negl	%eax
	movl	%eax, 24(%ebp)
.L482:
	movl	20(%ebp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L581:
	.cfi_restore_state
	cmpl	$4, 68(%esp)
	je	.L335
.L333:
	movl	z_errmsg@GOT(%ebx), %eax
	movl	64(%esp), %esi
	movl	16(%eax), %eax
	movl	%eax, 24(%esi)
	movl	$-2, %eax
	jmp	.L554
	.p2align 4,,7
	.p2align 3
.L587:
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %eax
	movl	20(%esi), %edi
	movl	16(%eax), %eax
	cmpl	%edi, %eax
	cmovbe	%eax, %edi
	testl	%edi, %edi
	jne	.L590
	testl	%eax, %eax
	je	.L563
.L399:
	movl	64(%esp), %eax
	movl	4(%eax), %edx
	movl	4(%ebp), %eax
	cmpl	$666, %eax
	je	.L487
	testl	%edx, %edx
	je	.L405
.L406:
	movl	136(%ebp), %eax
	cmpl	$2, %eax
	je	.L420
	cmpl	$3, %eax
	je	.L458
	movl	132(%ebp), %eax
	movl	68(%esp), %esi
	movl	%ebp, (%esp)
	leal	(%eax,%eax,2), %eax
	movl	%esi, 4(%esp)
	call	*8+configuration_table@GOTOFF(%ebx,%eax,4)
	movl	%eax, %edx
	andl	$-3, %edx
	leal	-2(%eax), %ecx
.L430:
	cmpl	$1, %ecx
	jbe	.L557
.L468:
	testl	%edx, %edx
	jne	.L469
.L544:
	movl	64(%esp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L565
	movl	$-1, 40(%ebp)
.L565:
	xorl	%eax, %eax
.L554:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L583:
	.cfi_restore_state
	cmpl	$2, 24(%ebp)
	je	.L591
	movl	48(%ebp), %eax
	sall	$12, %eax
	leal	-30720(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$1, 136(%ebp)
	jle	.L592
.L350:
	movl	108(%ebp), %esi
	orl	%eax, %ecx
	movl	$138547333, %edx
	movl	%ecx, %eax
	orl	$32, %eax
	movl	$113, 4(%ebp)
	testl	%esi, %esi
	movl	8(%ebp), %esi
	cmovne	%eax, %ecx
	movl	%ecx, %eax
	mull	%edx
	movl	20(%ebp), %eax
	subl	%edx, %ecx
	shrl	%ecx
	addl	%edx, %ecx
	shrl	$4, %ecx
	movl	%ecx, %edx
	sall	$5, %edx
	subl	%ecx, %edx
	addl	$31, %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movb	%cl, (%esi,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 20(%ebp)
	movb	%dl, (%ecx,%eax)
	movl	108(%ebp), %edi
	testl	%edi, %edi
	je	.L352
	movl	64(%esp), %eax
	movl	8(%ebp), %edi
	movl	48(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	leal	1(%eax), %esi
	shrl	$24, %edx
	movl	%esi, 20(%ebp)
	shrl	$16, %ecx
	movb	%dl, (%edi,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %esi
	movl	%esi, 20(%ebp)
	movb	%cl, (%edx,%eax)
	movl	64(%esp), %eax
	movl	8(%ebp), %esi
	movzwl	48(%eax), %edx
	movl	20(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movb	%cl, (%esi,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 20(%ebp)
	movb	%dl, (%ecx,%eax)
.L352:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	adler32@PLT
	movl	64(%esp), %edi
	movl	%eax, 48(%edi)
	movl	4(%ebp), %eax
	cmpl	$69, %eax
	jne	.L593
.L556:
	movl	28(%ebp), %eax
.L349:
	movl	16(%eax), %edx
	testl	%edx, %edx
	je	.L354
	movl	32(%ebp), %esi
	movzwl	20(%eax), %ecx
	movl	20(%ebp), %edx
	cmpl	%esi, %ecx
	movl	%edx, 20(%esp)
	jbe	.L355
	movl	%edx, %ecx
	jmp	.L362
	.p2align 4,,7
	.p2align 3
.L356:
	leal	1(%ecx), %eax
	movl	%eax, 20(%ebp)
	movl	16(%edi), %eax
	movzbl	(%eax,%esi), %eax
	movl	8(%ebp), %esi
	movb	%al, (%esi,%ecx)
	movl	32(%ebp), %eax
	leal	1(%eax), %esi
	movl	28(%ebp), %eax
	movl	%esi, 32(%ebp)
	movzwl	20(%eax), %ecx
	cmpl	%esi, %ecx
	jbe	.L507
	movl	20(%ebp), %ecx
.L362:
	cmpl	%ecx, 12(%ebp)
	movl	%eax, %edi
	jne	.L356
	movl	44(%eax), %edi
	testl	%edi, %edi
	je	.L357
	cmpl	%edx, %ecx
	ja	.L594
.L357:
	movl	64(%esp), %eax
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %edi
	movl	20(%esi), %eax
	movl	16(%edi), %edi
	cmpl	%eax, %edi
	cmova	%eax, %edi
	testl	%edi, %edi
	jne	.L595
.L359:
	movl	20(%ebp), %edx
	cmpl	12(%ebp), %edx
	movl	%edx, 20(%esp)
	je	.L596
	movl	28(%ebp), %edi
	movl	%edx, %ecx
	movl	32(%ebp), %esi
	jmp	.L356
	.p2align 4,,7
	.p2align 3
.L507:
	movl	20(%ebp), %edx
.L355:
	movl	44(%eax), %esi
	testl	%esi, %esi
	je	.L363
	cmpl	%edx, 20(%esp)
	jb	.L597
.L363:
	movl	20(%eax), %edi
	cmpl	%edi, 32(%ebp)
	je	.L364
	movl	4(%ebp), %eax
	cmpl	$73, %eax
	jne	.L366
	.p2align 4,,7
	.p2align 3
.L584:
	movl	28(%ebp), %eax
	jmp	.L483
	.p2align 4,,7
	.p2align 3
.L599:
	movl	92(%ebp), %edx
	xorl	%esi, %esi
	subl	%edx, %eax
	testl	%edx, %edx
	js	.L453
	movl	56(%ebp), %esi
	addl	%edx, %esi
.L453:
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %esi
	movl	108(%ebp), %eax
	movl	28(%esi), %edi
	movl	%eax, 92(%ebp)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%esi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L598
.L455:
	movl	0(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L544
.L458:
	movl	116(%ebp), %edi
	jmp	.L452
	.p2align 4,,7
	.p2align 3
.L432:
	movl	$0, 96(%ebp)
.L486:
	movl	108(%ebp), %esi
	movl	56(%ebp), %eax
	testl	%esi, %esi
	jne	.L437
	movl	$0, 20(%esp)
.L438:
	movl	20(%esp), %esi
	movl	5796(%ebp), %ecx
	movzbl	(%eax,%esi), %edx
	xorl	%esi, %esi
	movl	5792(%ebp), %eax
	movw	%si, (%ecx,%eax,2)
	movl	5784(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 5792(%ebp)
	movb	%dl, (%ecx,%eax)
	addw	$1, 148(%ebp,%edx,4)
	xorl	%edx, %edx
	movl	5788(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, 5792(%ebp)
	movl	116(%ebp), %eax
	sete	%dl
	leal	-1(%eax), %edi
	movl	108(%ebp), %eax
	movl	%edi, 116(%ebp)
	addl	$1, %eax
	movl	%eax, 108(%ebp)
.L450:
	testl	%edx, %edx
	jne	.L599
.L452:
	cmpl	$258, %edi
	ja	.L432
	movl	%ebp, %eax
	call	fill_window
	movl	116(%ebp), %edi
	cmpl	$258, %edi
	ja	.L432
	movl	68(%esp), %eax
	testl	%eax, %eax
	je	.L544
	testl	%edi, %edi
	je	.L435
	cmpl	$2, %edi
	movl	$0, 96(%ebp)
	ja	.L486
	movl	108(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	56(%ebp), %eax
	jmp	.L438
	.p2align 4,,7
	.p2align 3
.L601:
	movl	92(%ebp), %eax
	xorl	%ecx, %ecx
	subl	%eax, %edx
	testl	%eax, %eax
	js	.L415
	addl	56(%ebp), %eax
	movl	%eax, %ecx
.L415:
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %esi
	movl	108(%ebp), %eax
	movl	28(%esi), %edi
	movl	%eax, 92(%ebp)
	movl	%edi, (%esp)
	call	_tr_flush_bits
	movl	20(%edi), %eax
	movl	16(%esi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L600
.L417:
	movl	0(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L544
.L420:
	movl	116(%ebp), %eax
	jmp	.L414
	.p2align 4,,7
	.p2align 3
.L410:
	movl	108(%ebp), %eax
	xorl	%esi, %esi
	movl	56(%ebp), %edx
	movl	$0, 96(%ebp)
	movl	5796(%ebp), %ecx
	movzbl	(%edx,%eax), %edx
	movl	5792(%ebp), %eax
	movw	%si, (%ecx,%eax,2)
	movl	5784(%ebp), %ecx
	leal	1(%eax), %esi
	movl	%esi, 5792(%ebp)
	movb	%dl, (%ecx,%eax)
	addw	$1, 148(%ebp,%edx,4)
	movl	5788(%ebp), %eax
	movl	108(%ebp), %esi
	leal	-1(%eax), %ecx
	movl	116(%ebp), %eax
	leal	1(%esi), %edx
	movl	%edx, 108(%ebp)
	subl	$1, %eax
	cmpl	%ecx, 5792(%ebp)
	movl	%eax, 116(%ebp)
	je	.L601
.L414:
	testl	%eax, %eax
	jne	.L410
	movl	%ebp, %eax
	call	fill_window
	movl	116(%ebp), %eax
	testl	%eax, %eax
	jne	.L410
	movl	68(%esp), %edi
	testl	%edi, %edi
	je	.L544
.L435:
	cmpl	$4, 68(%esp)
	movl	$0, 5812(%ebp)
	je	.L602
	movl	5792(%ebp), %eax
	testl	%eax, %eax
	je	.L545
	movl	92(%ebp), %edx
	xorl	%ecx, %ecx
	movl	108(%ebp), %eax
	subl	%edx, %eax
	testl	%edx, %edx
	js	.L464
	movl	56(%ebp), %ecx
	addl	%edx, %ecx
.L464:
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %edi
	movl	108(%ebp), %eax
	movl	28(%edi), %esi
	movl	%eax, 92(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	20(%esi), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L603
.L466:
	movl	0(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	-2(%eax), %ecx
	movl	%eax, %edx
	jmp	.L430
	.p2align 4,,7
	.p2align 3
.L469:
	cmpl	$1, %eax
	jne	.L408
.L545:
	cmpl	$1, 68(%esp)
	je	.L604
	cmpl	$5, 68(%esp)
	je	.L472
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	_tr_stored_block
	cmpl	$3, 68(%esp)
	jne	.L472
	movl	76(%ebp), %esi
	movl	68(%ebp), %eax
	leal	2147483647(%esi), %edx
	xorl	%esi, %esi
	leal	(%edx,%edx), %ecx
	movw	%si, (%eax,%edx,2)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset@PLT
	movl	116(%ebp), %edi
	testl	%edi, %edi
	jne	.L472
	movl	$0, 108(%ebp)
	movl	$0, 92(%ebp)
	movl	$0, 5812(%ebp)
.L472:
	movl	64(%esp), %eax
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %eax
	movl	20(%esi), %edi
	movl	16(%eax), %eax
	cmpl	%edi, %eax
	cmovbe	%eax, %edi
	testl	%edi, %edi
	jne	.L605
.L475:
	testl	%eax, %eax
	jne	.L408
.L563:
	movl	$-1, 40(%ebp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L590:
	.cfi_restore_state
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L561
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
.L561:
	movl	64(%esp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L399
	jmp	.L563
.L364:
	movl	$0, 32(%ebp)
	movl	$73, 4(%ebp)
.L483:
	movl	28(%eax), %ecx
	testl	%ecx, %ecx
	je	.L367
	movl	%edx, 20(%esp)
	movl	%edx, %ecx
	jmp	.L374
	.p2align 4,,7
	.p2align 3
.L368:
	movl	28(%eax), %esi
	movl	32(%ebp), %eax
	leal	1(%eax), %edi
	movl	%edi, 32(%ebp)
	movzbl	(%esi,%eax), %eax
	leal	1(%ecx), %edi
	movl	8(%ebp), %esi
	movl	%edi, 20(%ebp)
	testb	%al, %al
	movb	%al, (%esi,%ecx)
	je	.L509
	movl	20(%ebp), %ecx
	movl	28(%ebp), %eax
.L374:
	cmpl	%ecx, 12(%ebp)
	jne	.L368
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L369
	cmpl	%ecx, %edx
	jb	.L606
.L369:
	movl	64(%esp), %eax
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %edi
	movl	20(%esi), %eax
	movl	16(%edi), %edi
	cmpl	%eax, %edi
	cmova	%eax, %edi
	testl	%edi, %edi
	jne	.L607
.L371:
	movl	20(%ebp), %edx
	cmpl	12(%ebp), %edx
	movl	%edx, 20(%esp)
	je	.L508
	movl	28(%ebp), %eax
	movl	%edx, %ecx
	jmp	.L368
.L592:
	movl	132(%ebp), %edx
	cmpl	$1, %edx
	jle	.L350
	cmpl	$5, %edx
	movb	$64, %al
	jle	.L350
	cmpl	$6, %edx
	movb	$-128, %al
	movl	$192, %edx
	cmovne	%edx, %eax
	jmp	.L350
	.p2align 4,,7
	.p2align 3
.L437:
	leal	-1(%eax,%esi), %ecx
	movzbl	(%ecx), %edx
	movl	%esi, 20(%esp)
	movl	%edx, 24(%esp)
	movzbl	(%ecx), %edx
	cmpb	%dl, 1(%ecx)
	jne	.L438
	movzbl	2(%ecx), %edx
	cmpl	%edx, 24(%esp)
	jne	.L438
	movzbl	3(%ecx), %edx
	cmpl	%edx, 24(%esp)
	jne	.L438
	leal	258(%eax,%esi), %edx
	addl	$3, %ecx
	movl	%edx, 20(%esp)
	movl	24(%esp), %edx
	movl	%ebp, 28(%esp)
	jmp	.L447
	.p2align 4,,7
	.p2align 3
.L439:
	movzbl	2(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L608
	movzbl	3(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L609
	movzbl	4(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L610
	movzbl	5(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L611
	movzbl	6(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L612
	movzbl	7(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L613
	addl	$8, %ecx
	movzbl	(%ecx), %ebp
	cmpl	%ebp, %edx
	jne	.L559
	cmpl	20(%esp), %ecx
	jnb	.L559
.L447:
	movzbl	1(%ecx), %ebp
	cmpl	%ebp, %edx
	je	.L439
	movl	28(%esp), %ebp
	addl	$1, %ecx
.L440:
	subl	20(%esp), %ecx
	leal	258(%ecx), %edx
	cmpl	%edi, %edx
	movl	%edx, 96(%ebp)
	jbe	.L448
	movl	%edi, 96(%ebp)
	movl	%edi, %edx
.L449:
	movl	5792(%ebp), %eax
	movl	$1, %edi
	subl	$3, %edx
	movl	5796(%ebp), %ecx
	leal	1(%eax), %esi
	movw	%di, (%ecx,%eax,2)
	movl	5784(%ebp), %ecx
	movl	%esi, 5792(%ebp)
	movb	%dl, (%ecx,%eax)
	movzbl	%dl, %edx
	movzbl	_length_code@GOTOFF(%ebx,%edx), %eax
	xorl	%edx, %edx
	addw	$1, 1176(%ebp,%eax,4)
	movzbl	_dist_code@GOTOFF(%ebx), %eax
	addw	$1, 2440(%ebp,%eax,4)
	movl	5788(%ebp), %eax
	movl	116(%ebp), %edi
	subl	$1, %eax
	cmpl	%eax, 5792(%ebp)
	movl	96(%ebp), %eax
	movl	$0, 96(%ebp)
	sete	%dl
	subl	%eax, %edi
	addl	108(%ebp), %eax
	movl	%edi, 116(%ebp)
	movl	%eax, 108(%ebp)
	jmp	.L450
	.p2align 4,,7
	.p2align 3
.L607:
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L371
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L371
	.p2align 4,,7
	.p2align 3
.L595:
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L359
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L359
	.p2align 4,,7
	.p2align 3
.L400:
	movl	4(%ebp), %eax
	cmpl	$666, %eax
	jne	.L406
.L487:
	testl	%edx, %edx
	je	.L405
.L564:
	movl	z_errmsg@GOT(%ebx), %eax
	movl	64(%esp), %esi
	movl	28(%eax), %eax
	movl	%eax, 24(%esi)
	movl	$-5, %eax
	jmp	.L554
.L602:
	movl	92(%ebp), %edx
	xorl	%ecx, %ecx
	movl	108(%ebp), %eax
	subl	%edx, %eax
	testl	%edx, %edx
	js	.L460
	movl	56(%ebp), %ecx
	addl	%edx, %ecx
.L460:
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, 12(%esp)
	movl	%ebp, (%esp)
	call	_tr_flush_block
	movl	0(%ebp), %edi
	movl	108(%ebp), %eax
	movl	28(%edi), %esi
	movl	%eax, 92(%ebp)
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	20(%esi), %eax
	movl	16(%edi), %edx
	cmpl	%eax, %edx
	cmova	%eax, %edx
	testl	%edx, %edx
	jne	.L614
.L462:
	movl	0(%ebp), %eax
	movl	16(%eax), %ecx
	cmpl	$1, %ecx
	sbbl	%edx, %edx
	addl	$1, %edx
	cmpl	$1, %ecx
	sbbl	%eax, %eax
	addl	$3, %eax
	.p2align 4,,7
	.p2align 3
.L557:
	movl	$666, 4(%ebp)
	jmp	.L468
	.p2align 4,,7
	.p2align 3
.L509:
	movl	20(%ebp), %edx
	xorl	%esi, %esi
.L373:
	movl	28(%ebp), %eax
	movl	44(%eax), %edi
	testl	%edi, %edi
	je	.L375
	cmpl	%edx, 20(%esp)
	jb	.L615
.L375:
	testl	%esi, %esi
	je	.L376
	movl	4(%ebp), %eax
	cmpl	$91, %eax
	jne	.L341
.L585:
	movl	28(%ebp), %eax
	jmp	.L484
	.p2align 4,,7
	.p2align 3
.L606:
	subl	%edx, %ecx
	movl	64(%esp), %eax
	movl	%ecx, 8(%esp)
	addl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %edi
	movl	%eax, 48(%edi)
	jmp	.L369
	.p2align 4,,7
	.p2align 3
.L580:
	movl	4(%eax), %esi
	testl	%esi, %esi
	je	.L334
	jmp	.L333
	.p2align 4,,7
	.p2align 3
.L594:
	subl	%edx, %ecx
	movl	64(%esp), %eax
	movl	%ecx, 8(%esp)
	addl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %edi
	movl	%eax, 48(%edi)
	jmp	.L357
	.p2align 4,,7
	.p2align 3
.L598:
	movl	12(%esi), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%esi)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%esi)
	subl	%edx, 16(%esi)
	subl	%edx, 20(%edi)
	jne	.L455
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L455
.L376:
	movl	28(%ebp), %eax
	movl	$0, 32(%ebp)
	movl	$91, 4(%ebp)
.L484:
	movl	36(%eax), %ecx
	testl	%ecx, %ecx
	je	.L378
	movl	%edx, 20(%esp)
	movl	%edx, %ecx
	jmp	.L385
	.p2align 4,,7
	.p2align 3
.L379:
	movl	36(%eax), %esi
	movl	32(%ebp), %eax
	leal	1(%eax), %edi
	movl	%edi, 32(%ebp)
	movzbl	(%esi,%eax), %eax
	leal	1(%ecx), %edi
	movl	8(%ebp), %esi
	movl	%edi, 20(%ebp)
	testb	%al, %al
	movb	%al, (%esi,%ecx)
	je	.L511
	movl	20(%ebp), %ecx
	movl	28(%ebp), %eax
.L385:
	cmpl	%ecx, 12(%ebp)
	jne	.L379
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L380
	cmpl	%ecx, %edx
	jb	.L616
.L380:
	movl	64(%esp), %eax
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %edi
	movl	20(%esi), %eax
	movl	16(%edi), %edi
	cmpl	%eax, %edi
	cmova	%eax, %edi
	testl	%edi, %edi
	jne	.L617
.L382:
	movl	20(%ebp), %edx
	cmpl	12(%ebp), %edx
	movl	%edx, 20(%esp)
	je	.L510
	movl	28(%ebp), %eax
	movl	%edx, %ecx
	jmp	.L379
	.p2align 4,,7
	.p2align 3
.L617:
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L382
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L382
	.p2align 4,,7
	.p2align 3
.L511:
	movl	20(%ebp), %edx
	xorl	%esi, %esi
.L384:
	movl	28(%ebp), %eax
	movl	44(%eax), %edi
	testl	%edi, %edi
	je	.L386
	cmpl	%edx, 20(%esp)
	jb	.L618
.L386:
	testl	%esi, %esi
	je	.L387
	movl	4(%ebp), %eax
	cmpl	$103, %eax
	jne	.L390
.L586:
	movl	28(%ebp), %eax
.L485:
	movl	44(%eax), %esi
	testl	%esi, %esi
	je	.L391
	leal	2(%edx), %eax
	cmpl	12(%ebp), %eax
	ja	.L619
.L392:
	movl	64(%esp), %esi
	leal	1(%edx), %ecx
	movl	%ecx, 20(%ebp)
	movl	8(%ebp), %eax
	movl	48(%esi), %ecx
	movb	%cl, (%eax,%edx)
	movl	20(%ebp), %edx
	movl	8(%ebp), %ecx
	leal	1(%edx), %eax
	movl	%eax, 20(%ebp)
	movl	48(%esi), %eax
	shrl	$8, %eax
	movb	%al, (%ecx,%edx)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	crc32@PLT
	movl	64(%esp), %esi
	movl	20(%ebp), %edx
	movl	%eax, 48(%esi)
	movl	$113, 4(%ebp)
	jmp	.L390
	.p2align 4,,7
	.p2align 3
.L616:
	subl	%edx, %ecx
	movl	64(%esp), %eax
	movl	%ecx, 8(%esp)
	addl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %esi
	movl	%eax, 48(%esi)
	jmp	.L380
	.p2align 4,,7
	.p2align 3
.L391:
	movl	$113, 4(%ebp)
	jmp	.L390
.L387:
	movl	$103, 4(%ebp)
	movl	28(%ebp), %eax
	jmp	.L485
.L600:
	movl	12(%esi), %eax
	movl	16(%edi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%esi)
	addl	%edx, 16(%edi)
	addl	%edx, 20(%esi)
	subl	%edx, 16(%esi)
	subl	%edx, 20(%edi)
	jne	.L417
	movl	8(%edi), %eax
	movl	%eax, 16(%edi)
	jmp	.L417
.L490:
	movl	$-2, %eax
	jmp	.L554
.L597:
	movl	20(%esp), %eax
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %edi
	movl	20(%ebp), %edx
	movl	%eax, 48(%edi)
	movl	28(%ebp), %eax
	jmp	.L363
.L603:
	movl	12(%edi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%esi)
	subl	%edx, 16(%edi)
	addl	%edx, 20(%edi)
	subl	%edx, 20(%esi)
	jne	.L466
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L466
.L589:
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L480
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L480
.L510:
	movl	$1, %esi
	jmp	.L384
.L508:
	movl	$1, %esi
	jmp	.L373
.L596:
	movl	28(%ebp), %eax
	jmp	.L355
.L354:
	movl	$73, 4(%ebp)
	movl	20(%ebp), %edx
	jmp	.L483
.L582:
	movl	z_errmsg@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 24(%esi)
	movl	$-5, %eax
	jmp	.L554
.L378:
	movl	$103, 4(%ebp)
	jmp	.L485
.L367:
	movl	$91, 4(%ebp)
	jmp	.L484
.L619:
	movl	64(%esp), %eax
	movl	28(%eax), %esi
	movl	%esi, (%esp)
	call	_tr_flush_bits
	movl	64(%esp), %edi
	movl	20(%esi), %eax
	movl	16(%edi), %edi
	cmpl	%eax, %edi
	cmova	%eax, %edi
	testl	%edi, %edi
	jne	.L620
.L394:
	movl	20(%ebp), %edx
	leal	2(%edx), %eax
	cmpl	12(%ebp), %eax
	ja	.L390
	jmp	.L392
	.p2align 4,,7
	.p2align 3
.L605:
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L562
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
.L562:
	movl	64(%esp), %eax
	movl	16(%eax), %eax
	jmp	.L475
.L588:
	movl	20(%ebp), %eax
	movl	64(%esp), %esi
	movl	8(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	48(%esi), %edx
	movb	%dl, (%ecx,%eax)
	movl	20(%ebp), %edx
	movl	8(%ebp), %ecx
	leal	1(%edx), %eax
	movl	%eax, 20(%ebp)
	movl	48(%esi), %eax
	shrl	$8, %eax
	movb	%al, (%ecx,%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movzwl	50(%esi), %ecx
	movb	%cl, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movzbl	51(%esi), %ecx
	movb	%cl, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	8(%esi), %edx
	movb	%dl, (%ecx,%eax)
	movl	20(%ebp), %edx
	movl	8(%ebp), %ecx
	leal	1(%edx), %eax
	movl	%eax, 20(%ebp)
	movl	8(%esi), %eax
	shrl	$8, %eax
	movb	%al, (%ecx,%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movzwl	10(%esi), %ecx
	movb	%cl, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movzbl	11(%esi), %ecx
	movb	%cl, (%edx,%eax)
	movl	%esi, %eax
	jmp	.L478
.L591:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	crc32@PLT
	movl	64(%esp), %esi
	movl	8(%ebp), %edx
	movl	%eax, 48(%esi)
	movl	20(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$31, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$-117, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$8, (%edx,%eax)
	movl	28(%ebp), %eax
	testl	%eax, %eax
	je	.L621
	movl	20(%ebp), %esi
	movl	8(%ebp), %edi
	leal	1(%esi), %edx
	movl	%edx, 20(%ebp)
	movl	(%eax), %edx
	testl	%edx, %edx
	setne	%cl
	cmpl	$1, 44(%eax)
	sbbl	%edx, %edx
	notl	%edx
	andl	$2, %edx
	addl	%edx, %ecx
	cmpl	$1, 16(%eax)
	sbbl	%edx, %edx
	notl	%edx
	andl	$4, %edx
	addl	%edx, %ecx
	cmpl	$1, 28(%eax)
	sbbl	%edx, %edx
	notl	%edx
	andl	$8, %edx
	addl	%ecx, %edx
	cmpl	$1, 36(%eax)
	sbbl	%eax, %eax
	notl	%eax
	andl	$16, %eax
	addl	%edx, %eax
	movb	%al, (%edi,%esi)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	28(%ebp), %edx
	movl	4(%edx), %edx
	movb	%dl, (%ecx,%eax)
	movl	20(%ebp), %edx
	movl	8(%ebp), %ecx
	leal	1(%edx), %eax
	movl	%eax, 20(%ebp)
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$8, %eax
	movb	%al, (%ecx,%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	28(%ebp), %edx
	movzwl	6(%edx), %edx
	movb	%dl, (%ecx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	28(%ebp), %edx
	movzbl	7(%edx), %edx
	movb	%dl, (%ecx,%eax)
	movl	20(%ebp), %ecx
	leal	1(%ecx), %eax
	movl	%eax, 20(%ebp)
	movl	132(%ebp), %edx
	movl	$2, %eax
	addl	8(%ebp), %ecx
	cmpl	$9, %edx
	je	.L346
	cmpl	$1, 136(%ebp)
	movl	$4, %eax
	jle	.L622
.L346:
	movb	%al, (%ecx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	1(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	28(%ebp), %edx
	movl	12(%edx), %edx
	movb	%dl, (%ecx,%eax)
	movl	28(%ebp), %eax
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L347
	movl	20(%ebp), %edx
	movl	20(%eax), %eax
	movl	8(%ebp), %esi
	leal	1(%edx), %ecx
	movl	%ecx, 20(%ebp)
	movb	%al, (%esi,%edx)
	movl	20(%ebp), %edx
	movl	8(%ebp), %ecx
	leal	1(%edx), %eax
	movl	%eax, 20(%ebp)
	movl	28(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$8, %eax
	movb	%al, (%ecx,%edx)
	movl	28(%ebp), %eax
.L347:
	movl	44(%eax), %edx
	testl	%edx, %edx
	jne	.L623
.L348:
	movl	$0, 32(%ebp)
	movl	$69, 4(%ebp)
	jmp	.L349
.L618:
	movl	20(%esp), %eax
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %edi
	movl	20(%ebp), %edx
	movl	%eax, 48(%edi)
	jmp	.L386
.L615:
	movl	20(%esp), %eax
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %edi
	movl	20(%ebp), %edx
	movl	%eax, 48(%edi)
	jmp	.L375
.L532:
	movl	$1, %eax
	jmp	.L554
.L448:
	cmpl	$2, %edx
	ja	.L449
	movl	%esi, 20(%esp)
	jmp	.L438
	.p2align 4,,7
	.p2align 3
.L614:
	movl	12(%edi), %eax
	movl	16(%esi), %ecx
	movl	%edx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	%edx, 12(%edi)
	addl	%edx, 16(%esi)
	subl	%edx, 16(%edi)
	addl	%edx, 20(%edi)
	subl	%edx, 20(%esi)
	jne	.L462
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L462
.L620:
	movl	64(%esp), %eax
	movl	16(%esi), %edx
	movl	12(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	64(%esp), %eax
	addl	%edi, 12(%eax)
	addl	%edi, 16(%esi)
	addl	%edi, 20(%eax)
	subl	%edi, 16(%eax)
	subl	%edi, 20(%esi)
	jne	.L394
	movl	8(%esi), %eax
	movl	%eax, 16(%esi)
	jmp	.L394
.L559:
	movl	28(%esp), %ebp
	jmp	.L440
.L604:
	movl	%ebp, (%esp)
	call	_tr_align
	jmp	.L472
.L623:
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	crc32@PLT
	movl	64(%esp), %esi
	movl	%eax, 48(%esi)
	movl	28(%ebp), %eax
	jmp	.L348
.L613:
	movl	28(%esp), %ebp
	addl	$7, %ecx
	jmp	.L440
.L608:
	movl	28(%esp), %ebp
	addl	$2, %ecx
	jmp	.L440
.L612:
	movl	28(%esp), %ebp
	addl	$6, %ecx
	jmp	.L440
.L611:
	movl	28(%esp), %ebp
	addl	$5, %ecx
	jmp	.L440
.L610:
	movl	28(%esp), %ebp
	addl	$4, %ecx
	jmp	.L440
.L609:
	movl	28(%esp), %ebp
	addl	$3, %ecx
	jmp	.L440
.L621:
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$0, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$0, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$0, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$0, (%edx,%eax)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$0, (%edx,%eax)
	movl	20(%ebp), %ecx
	movl	132(%ebp), %edx
	leal	1(%ecx), %eax
	addl	8(%ebp), %ecx
	cmpl	$9, %edx
	movl	%eax, 20(%ebp)
	movl	$2, %eax
	je	.L340
	cmpl	$1, 136(%ebp)
	movl	$4, %eax
	jg	.L340
	cmpl	$1, %edx
	setle	%al
	sall	$2, %eax
.L340:
	movb	%al, (%ecx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	leal	1(%eax), %ecx
	movl	%ecx, 20(%ebp)
	movb	$3, (%edx,%eax)
	movl	20(%ebp), %edx
	movl	$113, 4(%ebp)
	jmp	.L390
.L622:
	cmpl	$1, %edx
	setle	%al
	sall	$2, %eax
	jmp	.L346
	.cfi_endproc
.LFE61:
	.size	deflate, .-deflate
	.p2align 4,,15
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
.LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	52(%esp), %edi
	testl	%edx, %edx
	je	.L636
	movl	28(%edx), %esi
	testl	%esi, %esi
	je	.L636
	cmpl	$-1, %edi
	je	.L634
	cmpl	$9, %edi
	ja	.L636
.L626:
	cmpl	$4, 56(%esp)
	ja	.L636
	movl	132(%esi), %eax
	leal	configuration_table@GOTOFF(%ebx), %ebp
	movl	%eax, 12(%esp)
	leal	(%eax,%eax,2), %eax
	movl	8(%ebp,%eax,4), %eax
	movl	%eax, %ecx
	movl	56(%esp), %eax
	cmpl	%eax, 136(%esi)
	je	.L641
.L627:
	movl	8(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L642
.L628:
	cmpl	12(%esp), %edi
	je	.L631
	leal	(%edi,%edi,2), %edx
	leal	0(%ebp,%edx,4), %edx
	movzwl	2(%edx), %ecx
	movl	%edi, 132(%esi)
	movl	%ecx, 128(%esi)
	movzwl	(%edx), %ecx
	movl	%ecx, 140(%esi)
	movzwl	4(%edx), %ecx
	movzwl	6(%edx), %edx
	movl	%ecx, 144(%esi)
	movl	%edx, 124(%esi)
.L631:
	movl	56(%esp), %edi
	movl	%edi, 136(%esi)
.L625:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L634:
	.cfi_restore_state
	movl	$6, %edi
	jmp	.L626
	.p2align 4,,7
	.p2align 3
.L641:
	leal	(%edi,%edi,2), %eax
	cmpl	%ecx, 8(%ebp,%eax,4)
	jne	.L627
	xorl	%eax, %eax
	jmp	.L628
	.p2align 4,,7
	.p2align 3
.L642:
	movl	$5, 4(%esp)
	movl	%edx, (%esp)
	call	deflate@PLT
	cmpl	$-5, %eax
	je	.L629
.L640:
	movl	132(%esi), %ecx
	movl	%ecx, 12(%esp)
	jmp	.L628
	.p2align 4,,7
	.p2align 3
.L629:
	movl	20(%esi), %edx
	testl	%edx, %edx
	jne	.L640
	movl	132(%esi), %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	jmp	.L628
	.p2align 4,,7
	.p2align 3
.L636:
	movl	$-2, %eax
	jmp	.L625
	.cfi_endproc
.LFE56:
	.size	deflateParams, .-deflateParams
	.p2align 4,,15
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
.LFB62:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	testl	%esi, %esi
	je	.L652
	movl	28(%esi), %eax
	testl	%eax, %eax
	je	.L652
	movl	4(%eax), %edi
	cmpl	$42, %edi
	jne	.L685
.L645:
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	.L646
	movl	%edx, 4(%esp)
	movl	40(%esi), %eax
	movl	%eax, (%esp)
	call	*36(%esi)
	movl	28(%esi), %eax
.L646:
	movl	68(%eax), %edx
	testl	%edx, %edx
	je	.L647
	movl	%edx, 4(%esp)
	movl	40(%esi), %eax
	movl	%eax, (%esp)
	call	*36(%esi)
	movl	28(%esi), %eax
.L647:
	movl	64(%eax), %edx
	testl	%edx, %edx
	je	.L648
	movl	%edx, 4(%esp)
	movl	40(%esi), %eax
	movl	%eax, (%esp)
	call	*36(%esi)
	movl	28(%esi), %eax
.L648:
	movl	56(%eax), %edx
	testl	%edx, %edx
	je	.L649
	movl	%edx, 4(%esp)
	movl	40(%esi), %eax
	movl	%eax, (%esp)
	call	*36(%esi)
	movl	28(%esi), %eax
.L649:
	movl	%eax, 4(%esp)
	movl	40(%esi), %eax
	movl	%eax, (%esp)
	call	*36(%esi)
	xorl	%eax, %eax
	cmpl	$113, %edi
	setne	%al
	movl	$0, 28(%esi)
	leal	-3(%eax,%eax,2), %eax
.L644:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L685:
	.cfi_restore_state
	cmpl	$69, %edi
	je	.L645
	cmpl	$73, %edi
	je	.L645
	cmpl	$91, %edi
	.p2align 4,,2
	je	.L645
	cmpl	$103, %edi
	.p2align 4,,2
	je	.L645
	cmpl	$113, %edi
	.p2align 4,,2
	je	.L645
	cmpl	$666, %edi
	je	.L645
.L652:
	movl	$-2, %eax
	jmp	.L644
	.cfi_endproc
.LFE62:
	.size	deflateEnd, .-deflateEnd
	.p2align 4,,15
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
.LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	88(%esp), %eax
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	64(%esp), %edi
	movl	76(%esp), %ecx
	testl	%eax, %eax
	je	.L700
	cmpb	$49, (%eax)
	jne	.L700
	cmpl	$56, 92(%esp)
	jne	.L700
	testl	%edi, %edi
	je	.L694
	movl	32(%edi), %eax
	movl	$0, 24(%edi)
	testl	%eax, %eax
	je	.L707
	movl	36(%edi), %esi
	testl	%esi, %esi
	je	.L708
.L690:
	cmpl	$-1, 68(%esp)
	movl	$6, %edx
	cmovne	68(%esp), %edx
	testl	%ecx, %ecx
	movl	%edx, 68(%esp)
	js	.L709
	cmpl	$15, %ecx
	movl	$1, %ebp
	jg	.L710
.L693:
	movl	80(%esp), %edx
	leal	-1(%edx), %esi
	cmpl	$8, %esi
	ja	.L694
	cmpl	$8, 72(%esp)
	jne	.L694
	leal	-8(%ecx), %esi
	cmpl	$7, %esi
	ja	.L694
	cmpl	$9, 68(%esp)
	ja	.L694
	cmpl	$4, 84(%esp)
	ja	.L694
	cmpl	$8, %ecx
	je	.L704
	movl	%ecx, 24(%esp)
.L695:
	movl	$5828, 8(%esp)
	movl	$1, 4(%esp)
	movl	40(%edi), %esi
	movl	%ecx, 28(%esp)
	movl	%esi, (%esp)
	call	*%eax
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L705
	movl	28(%esp), %ecx
	movl	$-1431655765, %edx
	movl	%eax, 28(%edi)
	movl	%ebp, 24(%eax)
	movl	$1, %ebp
	movl	%edi, (%eax)
	movl	$0, 28(%eax)
	movl	24(%esp), %eax
	sall	%cl, %ebp
	movl	%ebp, 44(%esi)
	movl	%eax, 48(%esi)
	leal	-1(%ebp), %eax
	movl	%eax, 52(%esi)
	movl	80(%esp), %eax
	leal	7(%eax), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%ecx, 80(%esi)
	movl	%eax, %ecx
	movl	%eax, 76(%esi)
	movl	80(%esp), %eax
	subl	$1, %ecx
	movl	%ecx, 84(%esi)
	addl	$9, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, 88(%esi)
	movl	$2, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	40(%edi), %eax
	movl	%eax, (%esp)
	call	*32(%edi)
	movl	%eax, 56(%esi)
	movl	$2, 8(%esp)
	movl	44(%esi), %eax
	movl	%eax, 4(%esp)
	movl	40(%edi), %eax
	movl	%eax, (%esp)
	call	*32(%edi)
	movl	%eax, 64(%esi)
	movl	$2, 8(%esp)
	movl	76(%esi), %eax
	movl	%eax, 4(%esp)
	movl	40(%edi), %eax
	movl	%eax, (%esp)
	call	*32(%edi)
	movl	$0, 5824(%esi)
	movl	%eax, 68(%esi)
	movl	80(%esp), %eax
	leal	6(%eax), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, 5788(%esi)
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	40(%edi), %eax
	movl	%eax, (%esp)
	call	*32(%edi)
	movl	5788(%esi), %edx
	leal	0(,%edx,4), %ecx
	movl	%ecx, 12(%esi)
	movl	56(%esi), %ecx
	movl	%eax, 8(%esi)
	testl	%ecx, %ecx
	je	.L696
	movl	64(%esi), %ebp
	testl	%ebp, %ebp
	je	.L696
	movl	68(%esi), %ecx
	testl	%ecx, %ecx
	je	.L696
	testl	%eax, %eax
	je	.L696
	movl	%edx, %ecx
	andl	$-2, %ecx
	leal	(%edx,%edx,2), %edx
	addl	%eax, %ecx
	addl	%edx, %eax
	movl	%eax, 5784(%esi)
	movl	68(%esp), %eax
	movl	%ecx, 5796(%esi)
	movb	$8, 36(%esi)
	movl	%eax, 132(%esi)
	movl	84(%esp), %eax
	movl	%eax, 136(%esi)
	movl	%edi, (%esp)
	call	deflateReset@PLT
.L687:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L710:
	.cfi_restore_state
	subl	$16, %ecx
	movw	$2, %bp
	jmp	.L693
	.p2align 4,,7
	.p2align 3
.L709:
	negl	%ecx
	xorl	%ebp, %ebp
	jmp	.L693
	.p2align 4,,7
	.p2align 3
.L704:
	movl	$9, 24(%esp)
	movl	$9, %ecx
	jmp	.L695
	.p2align 4,,7
	.p2align 3
.L700:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-6, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L694:
	.cfi_restore_state
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-2, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L707:
	.cfi_restore_state
	movl	36(%edi), %esi
	leal	zcalloc@GOTOFF(%ebx), %eax
	movl	%eax, 32(%edi)
	movl	$0, 40(%edi)
	testl	%esi, %esi
	jne	.L690
	.p2align 4,,7
	.p2align 3
.L708:
	leal	zcfree@GOTOFF(%ebx), %edx
	movl	%edx, 36(%edi)
	jmp	.L690
	.p2align 4,,7
	.p2align 3
.L696:
	movl	z_errmsg@GOT(%ebx), %eax
	movl	$666, 4(%esi)
	movl	24(%eax), %eax
	movl	%eax, 24(%edi)
	movl	%edi, (%esp)
	call	deflateEnd@PLT
	movl	$-4, %eax
	jmp	.L687
	.p2align 4,,7
	.p2align 3
.L705:
	movl	$-4, %eax
	jmp	.L687
	.cfi_endproc
.LFE49:
	.size	deflateInit2_, .-deflateInit2_
	.p2align 4,,15
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
.LFB48:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %eax
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, 20(%esp)
	movl	$8, 16(%esp)
	movl	%eax, 28(%esp)
	movl	56(%esp), %eax
	movl	$15, 12(%esp)
	movl	$8, 8(%esp)
	movl	%eax, 24(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	deflateInit2_@PLT
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE48:
	.size	deflateInit_, .-deflateInit_
	.p2align 4,,15
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
.LFB63:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %eax
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	64(%esp), %edx
	testl	%eax, %eax
	je	.L722
	testl	%edx, %edx
	je	.L722
	movl	28(%eax), %esi
	testl	%esi, %esi
	movl	%esi, 24(%esp)
	je	.L722
	movl	(%eax), %ecx
	movl	%edx, 28(%esp)
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16(%eax), %ecx
	movl	%ecx, 16(%edx)
	movl	20(%eax), %ecx
	movl	%ecx, 20(%edx)
	movl	24(%eax), %ecx
	movl	%ecx, 24(%edx)
	movl	28(%eax), %ecx
	movl	%ecx, 28(%edx)
	movl	32(%eax), %ecx
	movl	%ecx, 32(%edx)
	movl	36(%eax), %ecx
	movl	%ecx, 36(%edx)
	movl	40(%eax), %ecx
	movl	%ecx, 40(%edx)
	movl	44(%eax), %ecx
	movl	%ecx, 44(%edx)
	movl	48(%eax), %ecx
	movl	%ecx, 48(%edx)
	movl	52(%eax), %eax
	movl	%eax, 52(%edx)
	movl	$5828, 8(%esp)
	movl	$1, 4(%esp)
	movl	40(%edx), %eax
	movl	%eax, (%esp)
	call	*32(%edx)
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L723
	movl	28(%esp), %edx
	testl	$1, %ebp
	movl	%eax, %edi
	movl	%eax, 28(%edx)
	movl	$5828, %eax
	jne	.L740
.L715:
	testl	$2, %edi
	jne	.L741
.L716:
	movl	%eax, %ecx
	shrl	$2, %ecx
	testb	$2, %al
	rep movsl
	jne	.L742
	testb	$1, %al
	jne	.L743
.L718:
	movl	%edx, 0(%ebp)
	movl	$2, 8(%esp)
	movl	44(%ebp), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 4(%esp)
	movl	40(%edx), %eax
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	28(%esp), %edx
	movl	%eax, 56(%ebp)
	movl	$2, 8(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%edx), %eax
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	28(%esp), %edx
	movl	%eax, 64(%ebp)
	movl	$2, 8(%esp)
	movl	76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%edx), %eax
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	28(%esp), %edx
	movl	%eax, 68(%ebp)
	movl	$4, 8(%esp)
	movl	5788(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%edx), %eax
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	28(%esp), %edx
	movl	%eax, %esi
	movl	%eax, 8(%ebp)
	movl	56(%ebp), %eax
	testl	%eax, %eax
	je	.L719
	movl	64(%ebp), %edi
	testl	%edi, %edi
	je	.L719
	movl	68(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L719
	testl	%esi, %esi
	je	.L719
	movl	44(%ebp), %edi
	leal	(%edi,%edi), %ecx
	movl	24(%esp), %edi
	movl	56(%edi), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	memcpy@PLT
	movl	44(%ebp), %ecx
	movl	64(%edi), %edx
	movl	64(%ebp), %eax
	addl	%ecx, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	76(%ebp), %ecx
	movl	68(%edi), %edx
	movl	68(%ebp), %eax
	addl	%ecx, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	8(%edi), %edx
	movl	12(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	memcpy@PLT
	movl	16(%edi), %eax
	movl	8(%ebp), %edx
	addl	%edx, %eax
	subl	8(%edi), %eax
	movl	%eax, 16(%ebp)
	movl	5788(%ebp), %eax
	movl	%eax, %ecx
	leal	(%eax,%eax,2), %eax
	andl	$-2, %ecx
	addl	%eax, %edx
	addl	%ecx, %esi
	leal	148(%ebp), %eax
	movl	%eax, 2840(%ebp)
	leal	2440(%ebp), %eax
	movl	%eax, 2852(%ebp)
	leal	2684(%ebp), %eax
	movl	%eax, 2864(%ebp)
	xorl	%eax, %eax
	movl	%esi, 5796(%ebp)
	movl	%edx, 5784(%ebp)
.L714:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L743:
	.cfi_restore_state
	movzbl	(%esi,%ecx), %eax
	movb	%al, (%edi,%ecx)
	jmp	.L718
	.p2align 4,,7
	.p2align 3
.L742:
	movzwl	(%esi), %ecx
	testb	$1, %al
	movw	%cx, (%edi)
	movl	$2, %ecx
	je	.L718
	jmp	.L743
	.p2align 4,,7
	.p2align 3
.L741:
	movzwl	(%esi), %ecx
	addl	$2, %edi
	addl	$2, %esi
	subl	$2, %eax
	movw	%cx, -2(%edi)
	jmp	.L716
	.p2align 4,,7
	.p2align 3
.L740:
	movl	24(%esp), %esi
	leal	1(%ebp), %edi
	movzbl	(%esi), %eax
	leal	1(%esi), %esi
	movb	%al, 0(%ebp)
	movl	$5827, %eax
	jmp	.L715
	.p2align 4,,7
	.p2align 3
.L722:
	movl	$-2, %eax
	jmp	.L714
	.p2align 4,,7
	.p2align 3
.L719:
	movl	%edx, (%esp)
	call	deflateEnd@PLT
	movl	$-4, %eax
	jmp	.L714
	.p2align 4,,7
	.p2align 3
.L723:
	movl	$-4, %eax
	jmp	.L714
	.cfi_endproc
.LFE63:
	.size	deflateCopy, .-deflateCopy
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	configuration_table, @object
	.size	configuration_table, 120
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
	.globl	deflate_copyright
	.section	.rodata
	.align 32
	.type	deflate_copyright, @object
	.size	deflate_copyright, 68
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB74:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE74:
	.hidden	zcfree
	.hidden	zcalloc
	.hidden	_tr_align
	.hidden	_tr_stored_block
	.hidden	_tr_init
	.hidden	_tr_flush_bits
	.hidden	_tr_flush_block
	.hidden	_dist_code
	.hidden	_length_code
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
