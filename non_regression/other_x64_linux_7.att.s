	.file	"deflate.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	longest_match, @function
longest_match:
.LFB40:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r11d, %r11d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	192(%rdi), %ebx
	movl	156(%rdi), %r9d
	movq	80(%rdi), %r10
	movl	168(%rdi), %r8d
	movl	172(%rdi), %ecx
	movl	%ebx, -20(%rsp)
	movl	68(%rdi), %ebx
	leaq	(%r10,%r9), %r13
	movl	%r8d, %eax
	leal	-262(%rbx), %ebp
	cmpl	%ebp, %r9d
	jbe	.L2
	leal	262(%r9), %r11d
	subl	%ebx, %r11d
.L2:
	leaq	258(%r10,%r9), %rbx
	movslq	%r8d, %rdx
	movl	164(%rdi), %r15d
	movzbl	-1(%r13,%rdx), %r14d
	movq	96(%rdi), %r12
	movq	%rbx, -8(%rsp)
	movzbl	0(%r13,%rdx), %ebx
	movl	%ecx, %edx
	shrl	$2, %edx
	cmpl	188(%rdi), %r8d
	movl	76(%rdi), %ebp
	movq	%rdi, -16(%rsp)
	cmovnb	%edx, %ecx
	movl	-20(%rsp), %edx
	cmpl	%r15d, %edx
	cmova	%r15d, %edx
	movl	%edx, -20(%rsp)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L5:
	andl	%ebp, %esi
	movzwl	(%r12,%rsi,2), %esi
	cmpl	%esi, %r11d
	jnb	.L16
	subl	$1, %ecx
	je	.L16
.L17:
	movl	%esi, %edx
	movslq	%eax, %r9
	addq	%r10, %rdx
	movzbl	(%rdx,%r9), %r8d
	cmpb	%bl, %r8b
	jne	.L5
	movzbl	-1(%rdx,%r9), %r9d
	cmpb	%r14b, %r9b
	jne	.L5
	movzbl	0(%r13), %edi
	cmpb	%dil, (%rdx)
	jne	.L5
	movzbl	1(%r13), %edi
	cmpb	%dil, 1(%rdx)
	jne	.L5
	addq	$2, %r13
	addq	$2, %rdx
	movq	-8(%rsp), %rbx
	movq	-16(%rsp), %rdi
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L6:
	movzbl	2(%rdx), %r14d
	cmpb	%r14b, 2(%r13)
	jne	.L33
	movzbl	3(%rdx), %r14d
	cmpb	%r14b, 3(%r13)
	jne	.L34
	movzbl	4(%rdx), %r14d
	cmpb	%r14b, 4(%r13)
	jne	.L35
	movzbl	5(%rdx), %r14d
	cmpb	%r14b, 5(%r13)
	jne	.L36
	movzbl	6(%rdx), %r14d
	cmpb	%r14b, 6(%r13)
	jne	.L37
	movzbl	7(%rdx), %r14d
	cmpb	%r14b, 7(%r13)
	jne	.L38
	addq	$8, %rdx
	addq	$8, %r13
	movzbl	(%rdx), %r14d
	cmpb	%r14b, 0(%r13)
	jne	.L29
	cmpq	%r13, %rbx
	jbe	.L29
.L14:
	movzbl	1(%rdx), %r14d
	cmpb	%r14b, 1(%r13)
	je	.L6
	movq	%rdi, -16(%rsp)
	addq	$1, %r13
.L7:
	movq	-8(%rsp), %rdi
	movl	$258, %ebx
	movq	%rdi, %rdx
	subq	%r13, %rdx
	leaq	-258(%rdi), %r13
	subl	%edx, %ebx
	cmpl	%ebx, %eax
	movl	%ebx, %edx
	jge	.L22
	cmpl	%ebx, -20(%rsp)
	movq	-16(%rsp), %rax
	movl	%esi, 160(%rax)
	jle	.L23
	movslq	%ebx, %rax
	movzbl	-1(%r13,%rax), %r14d
	movzbl	-258(%rdi,%rax), %ebx
	movl	%edx, %eax
	jmp	.L5
.L23:
	movl	%ebx, %eax
	.p2align 4,,10
	.p2align 3
.L16:
	cmpl	%r15d, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	cmova	%r15d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	movl	%r8d, %ebx
	movl	%r9d, %r14d
	jmp	.L5
.L36:
	movq	%rdi, -16(%rsp)
	addq	$5, %r13
	jmp	.L7
.L35:
	movq	%rdi, -16(%rsp)
	addq	$4, %r13
	jmp	.L7
.L34:
	movq	%rdi, -16(%rsp)
	addq	$3, %r13
	jmp	.L7
.L33:
	movq	%rdi, -16(%rsp)
	addq	$2, %r13
	jmp	.L7
.L38:
	movq	%rdi, -16(%rsp)
	addq	$7, %r13
	jmp	.L7
.L37:
	movq	%rdi, -16(%rsp)
	addq	$6, %r13
	jmp	.L7
.L29:
	movq	%rdi, -16(%rsp)
	jmp	.L7
	.cfi_endproc
.LFE40:
	.size	longest_match, .-longest_match
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	fill_window, @function
fill_window:
.LFB41:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	$-2, %rcx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r14d, %r14d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	68(%rdi), %r12d
	movl	164(%rdi), %edx
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)
	leaq	(%r12,%r12), %rax
	movq	%r12, %r13
	movq	%r12, 40(%rsp)
	movq	%rax, 16(%rsp)
	leal	-1(%r12), %eax
	addq	%rax, %rax
	subq	%rax, %rdi
	movl	%r12d, %eax
	movq	%rdi, 24(%rsp)
	leal	-262(%r12), %edi
	movl	%edi, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L56:
	movl	156(%rbx), %ecx
	movl	88(%rbx), %r15d
	addl	12(%rsp), %eax
	subl	%edx, %r15d
	subl	%ecx, %r15d
	cmpl	%eax, %ecx
	jnb	.L72
	movq	(%rbx), %r12
	movl	8(%r12), %ebp
	testl	%ebp, %ebp
	je	.L52
.L43:
	cmpl	%ebp, %r15d
	movq	80(%rbx), %rsi
	movl	164(%rbx), %edx
	jnb	.L62
	testl	%r15d, %r15d
	jne	.L73
	xorl	%r8d, %r8d
.L47:
	movl	5916(%rbx), %esi
	addl	%r8d, %edx
	movl	%edx, 164(%rbx)
	leal	(%rdx,%rsi), %eax
	cmpl	$2, %eax
	jbe	.L54
	movl	156(%rbx), %edi
	movq	80(%rbx), %r11
	movl	128(%rbx), %ecx
	movl	124(%rbx), %r15d
	subl	%esi, %edi
	movl	%edi, %eax
	movzbl	(%r11,%rax), %r8d
	leal	1(%rdi), %eax
	movl	%r8d, 112(%rbx)
	movzbl	(%r11,%rax), %r9d
	movl	%r8d, %eax
	sall	%cl, %eax
	xorl	%r9d, %eax
	andl	%r15d, %eax
	movl	%eax, 112(%rbx)
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L55:
	leal	2(%rdi), %r8d
	sall	%cl, %eax
	movl	%edi, %r10d
	andl	76(%rbx), %r10d
	subl	$1, %esi
	movzbl	(%r11,%r8), %r8d
	xorl	%r8d, %eax
	movq	104(%rbx), %r8
	andl	%r15d, %eax
	movl	%eax, %r9d
	movl	%eax, 112(%rbx)
	leaq	(%r8,%r9,2), %r8
	movq	96(%rbx), %r9
	movzwl	(%r8), %ebp
	movw	%bp, (%r9,%r10,2)
	movw	%di, (%r8)
	leal	(%rsi,%rdx), %r8d
	addl	$1, %edi
	movl	%esi, 5916(%rbx)
	cmpl	$2, %r8d
	jbe	.L54
.L53:
	testl	%esi, %esi
	jne	.L55
.L54:
	cmpl	$261, %edx
	ja	.L52
	movq	(%rbx), %rax
	movl	8(%rax), %r8d
	testl	%r8d, %r8d
	je	.L52
	movl	68(%rbx), %eax
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L62:
	xorl	%eax, %eax
.L46:
	addq	%rdx, %rcx
	movl	%ebp, %r15d
	movl	%eax, 8(%r12)
	addq	%rsi, %rcx
	movq	(%r12), %rsi
	movq	%r15, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	%rax, %rcx
	movq	56(%r12), %rax
	movl	44(%rax), %eax
	cmpl	$1, %eax
	je	.L74
	cmpl	$2, %eax
	je	.L75
.L49:
	addq	%r15, (%r12)
	addq	%r15, 16(%r12)
	movl	%ebp, %r8d
	movl	164(%rbx), %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L72:
	movq	40(%rsp), %rbp
	movq	80(%rbx), %rdi
	leaq	(%rdi,%rbp), %rsi
	movq	%rbp, %rdx
	call	memcpy
	movl	116(%rbx), %esi
	movq	104(%rbx), %rax
	movl	156(%rbx), %ecx
	movq	32(%rsp), %rdi
	subl	%r13d, 160(%rbx)
	subq	%rbp, 136(%rbx)
	movq	%rsi, %rdx
	leaq	(%rax,%rsi,2), %rax
	subl	%r13d, %ecx
	subl	$1, %edx
	addq	%rdx, %rdx
	subq	%rdx, %rdi
	movl	%ecx, 156(%rbx)
	addq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L41:
	subq	$2, %rax
	movzwl	(%rax), %esi
	movl	%esi, %edx
	subl	%r13d, %edx
	cmpl	%esi, %r13d
	cmova	%r14d, %edx
	cmpq	%rdi, %rax
	movw	%dx, (%rax)
	jne	.L41
	movq	16(%rsp), %rax
	addq	96(%rbx), %rax
	movq	24(%rsp), %rdi
	addq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L42:
	subq	$2, %rax
	movzwl	(%rax), %esi
	movl	%esi, %edx
	subl	%r13d, %edx
	cmpl	%esi, %r13d
	cmova	%r14d, %edx
	cmpq	%rdi, %rax
	movw	%dx, (%rax)
	jne	.L42
	movq	(%rbx), %r12
	addl	%r13d, %r15d
	movl	8(%r12), %ebp
	testl	%ebp, %ebp
	jne	.L43
	.p2align 4,,10
	.p2align 3
.L52:
	movq	5928(%rbx), %rcx
	movq	88(%rbx), %rax
	cmpq	%rax, %rcx
	jnb	.L39
	movl	164(%rbx), %esi
	movl	156(%rbx), %edx
	addq	%rdx, %rsi
	cmpq	%rsi, %rcx
	jnb	.L57
	subq	%rsi, %rax
	movl	$258, %edx
	cmpq	$258, %rax
	cmovbe	%rax, %rdx
	movq	%rsi, %rax
	addq	80(%rbx), %rax
	cmpl	$8, %edx
	jnb	.L58
	testb	$4, %dl
	jne	.L76
	testl	%edx, %edx
	je	.L59
	testb	$2, %dl
	movb	$0, (%rax)
	jne	.L77
.L59:
	addq	%rsi, %rdx
	movq	%rdx, 5928(%rbx)
.L39:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L74:
	.cfi_restore_state
	movq	96(%r12), %rdi
	movl	%ebp, %edx
	movq	%rcx, %rsi
	call	adler32
	movq	%rax, 96(%r12)
	jmp	.L49
.L75:
	movq	96(%r12), %rdi
	movl	%ebp, %edx
	movq	%rcx, %rsi
	call	crc32
	movq	%rax, 96(%r12)
	jmp	.L49
.L57:
	leaq	258(%rsi), %rdx
	cmpq	%rdx, %rcx
	jnb	.L39
	subq	%rcx, %rsi
	subq	%rcx, %rax
	leaq	258(%rsi), %rbp
	cmpq	%rax, %rbp
	cmova	%rax, %rbp
	addq	80(%rbx), %rcx
	xorl	%esi, %esi
	movl	%ebp, %edx
	movq	%rcx, %rdi
	call	memset
	addq	%rbp, 5928(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L58:
	.cfi_restore_state
	leaq	8(%rax), %rdi
	movl	%edx, %ecx
	movq	$0, (%rax)
	movq	$0, -8(%rax,%rcx)
	andq	$-8, %rdi
	subq	%rdi, %rax
	leal	(%rdx,%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	jmp	.L59
.L76:
	movl	%edx, %ecx
	movl	$0, (%rax)
	movl	$0, -4(%rax,%rcx)
	jmp	.L59
.L77:
	movl	%edx, %ecx
	xorl	%edi, %edi
	movw	%di, -2(%rax,%rcx)
	jmp	.L59
.L73:
	movl	%ebp, %eax
	movl	%r15d, %ebp
	subl	%r15d, %eax
	jmp	.L46
	.cfi_endproc
.LFE41:
	.size	fill_window, .-fill_window
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.type	deflate_fast, @function
deflate_fast:
.LFB43:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	%esi, 12(%rsp)
.L99:
	movl	164(%rbx), %r8d
	.p2align 4,,10
	.p2align 3
.L93:
	cmpl	$261, %r8d
	jbe	.L125
.L83:
	movl	156(%rbx), %edx
	movq	80(%rbx), %rcx
	leal	2(%rdx), %eax
	movl	%edx, %edi
	andl	76(%rbx), %edi
	movzbl	(%rcx,%rax), %esi
	movl	128(%rbx), %ecx
	movl	112(%rbx), %eax
	sall	%cl, %eax
	movq	104(%rbx), %rcx
	xorl	%esi, %eax
	andl	124(%rbx), %eax
	movl	%eax, 112(%rbx)
	leaq	(%rcx,%rax,2), %rax
	movq	96(%rbx), %rcx
	movzwl	(%rax), %esi
	testl	%esi, %esi
	movw	%si, (%rcx,%rdi,2)
	movw	%dx, (%rax)
	je	.L124
	movl	68(%rbx), %eax
	movl	%edx, %ecx
	subl	%esi, %ecx
	subl	$262, %eax
	cmpl	%eax, %ecx
	jbe	.L86
.L124:
	movl	144(%rbx), %eax
.L84:
	cmpl	$2, %eax
	jbe	.L87
	subw	160(%rbx), %dx
	movl	5884(%rbx), %esi
	subl	$3, %eax
	movq	5888(%rbx), %rdi
	movw	%dx, (%rdi,%rsi,2)
	movq	5872(%rbx), %rdi
	movq	%rsi, %rcx
	addl	$1, %ecx
	subl	$1, %edx
	movl	%ecx, 5884(%rbx)
	movb	%al, (%rdi,%rsi)
	movzbl	%al, %eax
	movzbl	_length_code(%rax), %eax
	addw	$1, 1224(%rbx,%rax,4)
	cmpw	$255, %dx
	ja	.L88
	movzwl	%dx, %edx
	movzbl	_dist_code(%rdx), %eax
.L89:
	addw	$1, 2488(%rbx,%rax,4)
	xorl	%r10d, %r10d
	movl	5880(%rbx), %eax
	movl	164(%rbx), %r8d
	movl	144(%rbx), %r9d
	subl	$1, %eax
	cmpl	%eax, 5884(%rbx)
	sete	%r10b
	subl	%r9d, %r8d
	cmpl	$2, %r8d
	movl	%r8d, 164(%rbx)
	jbe	.L90
	cmpl	176(%rbx), %r9d
	ja	.L90
	movl	156(%rbx), %eax
	leal	-1(%r9), %edi
	movq	96(%rbx), %r14
	movl	76(%rbx), %r13d
	movq	104(%rbx), %r12
	movq	80(%rbx), %rbp
	movl	128(%rbx), %ecx
	movl	%eax, %esi
	movl	%eax, 4(%rsp)
	movl	124(%rbx), %r11d
	movl	112(%rbx), %eax
	leal	1(%rsi), %edx
	movl	%edi, 144(%rbx)
	movl	%r8d, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L91:
	leal	2(%rdx), %esi
	movl	%edx, 156(%rbx)
	sall	%cl, %eax
	movl	%edx, %r15d
	subl	$1, %edi
	movzbl	0(%rbp,%rsi), %esi
	andl	%r13d, %r15d
	xorl	%esi, %eax
	andl	%r11d, %eax
	movl	%eax, %esi
	movl	%eax, 112(%rbx)
	leaq	(%r12,%rsi,2), %rsi
	movzwl	(%rsi), %r8d
	movw	%r8w, (%r14,%r15,2)
	movw	%dx, (%rsi)
	addl	$1, %edx
	testl	%edi, %edi
	movl	%edi, 144(%rbx)
	jne	.L91
	addl	4(%rsp), %r9d
	movl	8(%rsp), %r8d
	movl	%r9d, 156(%rbx)
	.p2align 4,,10
	.p2align 3
.L92:
	testl	%r10d, %r10d
	je	.L93
	movq	136(%rbx), %rax
	movl	%r9d, %edx
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L94
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L94:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r12
	movl	156(%rbx), %eax
	movq	56(%r12), %r13
	movq	%rax, 136(%rbx)
	movq	%r13, %rdi
	call	_tr_flush_bits
	movl	40(%r13), %ebp
	movl	32(%r12), %eax
	cmpl	%ebp, %eax
	cmovbe	%eax, %ebp
	testl	%ebp, %ebp
	jne	.L126
.L96:
	movq	(%rbx), %rax
	movl	32(%rax), %esi
	testl	%esi, %esi
	jne	.L99
.L98:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	.cfi_restore_state
	movl	5884(%rbx), %ecx
	movq	80(%rbx), %rax
	xorl	%edi, %edi
	movq	5888(%rbx), %rsi
	xorl	%r10d, %r10d
	movzbl	(%rax,%rdx), %eax
	movw	%di, (%rsi,%rcx,2)
	movq	5872(%rbx), %rsi
	movq	%rcx, %rdx
	addl	$1, %edx
	movl	%edx, 5884(%rbx)
	movb	%al, (%rsi,%rcx)
	addw	$1, 196(%rbx,%rax,4)
	movl	5880(%rbx), %eax
	subl	$1, %eax
	cmpl	%eax, 5884(%rbx)
	movl	164(%rbx), %eax
	leal	-1(%rax), %r8d
	movl	156(%rbx), %eax
	sete	%r10b
	movl	%r8d, 164(%rbx)
	leal	1(%rax), %r9d
	movl	%r9d, 156(%rbx)
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L90:
	addl	156(%rbx), %r9d
	movq	80(%rbx), %rdx
	movl	$0, 144(%rbx)
	movl	%r9d, %eax
	movl	%r9d, 156(%rbx)
	leal	1(%r9), %ecx
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 112(%rbx)
	movzbl	(%rdx,%rcx), %edx
	movl	128(%rbx), %ecx
	sall	%cl, %eax
	xorl	%edx, %eax
	andl	124(%rbx), %eax
	movl	%eax, 112(%rbx)
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L125:
	movq	%rbx, %rdi
	call	fill_window
	movl	164(%rbx), %eax
	cmpl	$261, %eax
	ja	.L83
	movl	12(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L98
	testl	%eax, %eax
	je	.L82
	cmpl	$2, %eax
	ja	.L83
	movl	144(%rbx), %eax
	movl	156(%rbx), %edx
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L88:
	shrw	$7, %dx
	leaq	256(%rdx), %rax
	andl	$1023, %eax
	movzbl	_dist_code(%rax), %eax
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L86:
	movq	%rbx, %rdi
	call	longest_match
	movl	156(%rbx), %edx
	movl	%eax, 144(%rbx)
	jmp	.L84
.L126:
	movq	24(%r12), %rdi
	movq	32(%r13), %rsi
	movl	%ebp, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r12)
	addq	%r14, 32(%r13)
	addq	%r14, 40(%r12)
	subl	%ebp, 32(%r12)
	subl	%ebp, 40(%r13)
	jne	.L96
	movq	16(%r13), %rax
	movq	%rax, 32(%r13)
	jmp	.L96
.L82:
	movl	156(%rbx), %edx
	movl	$2, %eax
	cmpl	$2, %edx
	cmovbe	%edx, %eax
	cmpl	$4, 12(%rsp)
	movl	%eax, 5916(%rbx)
	je	.L127
	movl	5884(%rbx), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.L81
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L105
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L105:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r13
	movl	156(%rbx), %eax
	movq	56(%r13), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r12d
	movl	32(%r13), %eax
	cmpl	%r12d, %eax
	cmovbe	%eax, %r12d
	testl	%r12d, %r12d
	jne	.L128
.L107:
	movq	(%rbx), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L81:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L127:
	.cfi_restore_state
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L101
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L101:
	movl	$1, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r12
	movl	156(%rbx), %eax
	movq	56(%r12), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r13d
	movl	32(%r12), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L129
.L103:
	movq	(%rbx), %rax
	cmpl	$1, 32(%rax)
	sbbl	%eax, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	addl	$3, %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L128:
	.cfi_restore_state
	movq	24(%r13), %rdi
	movq	32(%rbp), %rsi
	movl	%r12d, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r13)
	addq	%r14, 32(%rbp)
	addq	%r14, 40(%r13)
	subl	%r12d, 32(%r13)
	subl	%r12d, 40(%rbp)
	jne	.L107
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L107
.L129:
	movq	24(%r12), %rdi
	movq	32(%rbp), %rsi
	movl	%r13d, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r12)
	addq	%r14, 32(%rbp)
	addq	%r14, 40(%r12)
	subl	%r13d, 32(%r12)
	subl	%r13d, 40(%rbp)
	jne	.L103
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L103
	.cfi_endproc
.LFE43:
	.size	deflate_fast, .-deflate_fast
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.type	deflate_slow, @function
deflate_slow:
.LFB44:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
.L184:
	movl	164(%rbx), %edi
	.p2align 4,,10
	.p2align 3
.L131:
	cmpl	$261, %edi
	jbe	.L187
.L168:
	movl	156(%rbx), %edx
	movq	80(%rbx), %rcx
	leal	2(%rdx), %eax
	movl	%edx, %edi
	andl	76(%rbx), %edi
	movzbl	(%rcx,%rax), %esi
	movl	128(%rbx), %ecx
	movl	112(%rbx), %eax
	sall	%cl, %eax
	movq	104(%rbx), %rcx
	xorl	%esi, %eax
	andl	124(%rbx), %eax
	movl	%eax, 112(%rbx)
	leaq	(%rcx,%rax,2), %rax
	movq	96(%rbx), %rcx
	movzwl	(%rax), %esi
	movw	%si, (%rcx,%rdi,2)
	movw	%dx, (%rax)
	testl	%esi, %esi
	movl	144(%rbx), %ecx
	movl	160(%rbx), %eax
	movl	$2, 144(%rbx)
	movl	%eax, 148(%rbx)
	movl	%ecx, 168(%rbx)
	movl	$2, %eax
	je	.L137
	cmpl	176(%rbx), %ecx
	jnb	.L137
	movl	68(%rbx), %edi
	movl	%edx, %r8d
	subl	%esi, %r8d
	subl	$262, %edi
	cmpl	%edi, %r8d
	jbe	.L188
	.p2align 4,,10
	.p2align 3
.L137:
	cmpl	$2, %ecx
	jbe	.L142
	cmpl	%eax, %ecx
	jb	.L142
	movl	164(%rbx), %eax
	movl	5884(%rbx), %esi
	subl	$3, %ecx
	movq	5888(%rbx), %rdi
	leal	-3(%rdx,%rax), %r8d
	subw	148(%rbx), %dx
	movq	%rsi, %rax
	addl	$1, %eax
	leal	-1(%rdx), %r9d
	subl	$2, %edx
	movw	%r9w, (%rdi,%rsi,2)
	movq	5872(%rbx), %rdi
	movl	%eax, 5884(%rbx)
	movb	%cl, (%rdi,%rsi)
	movzbl	%cl, %ecx
	movzbl	_length_code(%rcx), %eax
	addw	$1, 1224(%rbx,%rax,4)
	cmpw	$255, %dx
	ja	.L143
	movzwl	%dx, %edx
	movzbl	_dist_code(%rdx), %eax
.L144:
	addw	$1, 2488(%rbx,%rax,4)
	movl	5880(%rbx), %eax
	movl	168(%rbx), %r10d
	movl	156(%rbx), %r11d
	movl	5884(%rbx), %r12d
	leal	-1(%rax), %r9d
	movl	164(%rbx), %eax
	leal	-2(%r10), %esi
	movl	%esi, 168(%rbx)
	leal	1(%rax), %edi
	leal	1(%r11), %eax
	subl	%r10d, %edi
	movl	%edi, 164(%rbx)
	.p2align 4,,10
	.p2align 3
.L146:
	cmpl	%r8d, %eax
	movl	%eax, 156(%rbx)
	ja	.L145
	movq	80(%rbx), %rcx
	leal	2(%rax), %edx
	movzbl	(%rcx,%rdx), %r13d
	movl	128(%rbx), %ecx
	movl	112(%rbx), %edx
	sall	%cl, %edx
	movq	104(%rbx), %rcx
	xorl	%r13d, %edx
	andl	124(%rbx), %edx
	movl	%eax, %r13d
	andl	76(%rbx), %r13d
	movl	%edx, 112(%rbx)
	leaq	(%rcx,%rdx,2), %rdx
	movq	96(%rbx), %rcx
	movzwl	(%rdx), %r15d
	movw	%r15w, (%rcx,%r13,2)
	movw	%ax, (%rdx)
.L145:
	subl	$1, %esi
	addl	$1, %eax
	testl	%esi, %esi
	movl	%esi, 168(%rbx)
	jne	.L146
	leal	-1(%r10,%r11), %eax
	cmpl	%r9d, %r12d
	movl	$0, 152(%rbx)
	movl	$2, 144(%rbx)
	movl	%eax, 156(%rbx)
	jne	.L131
	movq	136(%rbx), %rcx
	movl	%eax, %edx
	xorl	%esi, %esi
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	js	.L148
	movl	%ecx, %ecx
	movq	%rcx, %rsi
	addq	80(%rbx), %rsi
.L148:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r13
	movl	156(%rbx), %eax
	movq	56(%r13), %r14
	movq	%rax, 136(%rbx)
	movq	%r14, %rdi
	call	_tr_flush_bits
	movl	40(%r14), %r12d
	movl	32(%r13), %eax
	cmpl	%r12d, %eax
	cmovbe	%eax, %r12d
	testl	%r12d, %r12d
	jne	.L189
.L150:
	movq	(%rbx), %rax
	movl	32(%rax), %r12d
	testl	%r12d, %r12d
	jne	.L184
.L152:
	xorl	%eax, %eax
.L180:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	.cfi_restore_state
	movl	152(%rbx), %r11d
	testl	%r11d, %r11d
	je	.L153
	movl	5884(%rbx), %ecx
	movq	80(%rbx), %rax
	subl	$1, %edx
	movq	5888(%rbx), %rsi
	xorl	%r10d, %r10d
	movzbl	(%rax,%rdx), %eax
	movw	%r10w, (%rsi,%rcx,2)
	movq	5872(%rbx), %rsi
	movq	%rcx, %rdx
	addl	$1, %edx
	movl	%edx, 5884(%rbx)
	movb	%al, (%rsi,%rcx)
	addw	$1, 196(%rbx,%rax,4)
	movl	5880(%rbx), %eax
	subl	$1, %eax
	cmpl	%eax, 5884(%rbx)
	je	.L190
.L155:
	movl	164(%rbx), %eax
	addl	$1, 156(%rbx)
	leal	-1(%rax), %edi
	movq	(%rbx), %rax
	movl	%edi, 164(%rbx)
	movl	32(%rax), %r9d
	testl	%r9d, %r9d
	je	.L152
	cmpl	$261, %edi
	ja	.L168
.L187:
	movq	%rbx, %rdi
	call	fill_window
	movl	164(%rbx), %eax
	cmpl	$261, %eax
	ja	.L168
	testl	%ebp, %ebp
	je	.L152
	testl	%eax, %eax
	je	.L135
	cmpl	$2, %eax
	ja	.L168
	movl	144(%rbx), %ecx
	movl	160(%rbx), %eax
	movl	$2, 144(%rbx)
	movl	156(%rbx), %edx
	movl	%eax, 148(%rbx)
	movl	%ecx, 168(%rbx)
	movl	$2, %eax
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L153:
	movl	164(%rbx), %eax
	addl	$1, %edx
	movl	$1, 152(%rbx)
	movl	%edx, 156(%rbx)
	leal	-1(%rax), %edi
	movl	%edi, 164(%rbx)
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L143:
	shrw	$7, %dx
	leaq	256(%rdx), %rax
	andl	$1023, %eax
	movzbl	_dist_code(%rax), %eax
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L190:
	movl	156(%rbx), %edx
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L156
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L156:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r13
	movl	156(%rbx), %eax
	movq	56(%r13), %r14
	movq	%rax, 136(%rbx)
	movq	%r14, %rdi
	call	_tr_flush_bits
	movl	40(%r14), %r12d
	movl	32(%r13), %eax
	cmpl	%r12d, %eax
	cmovbe	%eax, %r12d
	testl	%r12d, %r12d
	je	.L155
	movq	24(%r13), %rdi
	movq	32(%r14), %rsi
	movl	%r12d, %r15d
	movq	%r15, %rdx
	call	memcpy
	addq	%r15, 24(%r13)
	addq	%r15, 32(%r14)
	addq	%r15, 40(%r13)
	subl	%r12d, 32(%r13)
	subl	%r12d, 40(%r14)
	jne	.L155
	movq	16(%r14), %rax
	movq	%rax, 32(%r14)
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L188:
	movq	%rbx, %rdi
	call	longest_match
	cmpl	$5, %eax
	movl	%eax, 144(%rbx)
	ja	.L185
	cmpl	$1, 184(%rbx)
	je	.L191
	cmpl	$3, %eax
	je	.L141
.L185:
	movl	168(%rbx), %ecx
	movl	156(%rbx), %edx
	jmp	.L137
.L189:
	movq	24(%r13), %rdi
	movq	32(%r14), %rsi
	movl	%r12d, %r15d
	movq	%r15, %rdx
	call	memcpy
	addq	%r15, 24(%r13)
	addq	%r15, 32(%r14)
	addq	%r15, 40(%r13)
	subl	%r12d, 32(%r13)
	subl	%r12d, 40(%r14)
	jne	.L150
	movq	16(%r14), %rax
	movq	%rax, 32(%r14)
	jmp	.L150
.L191:
	movl	156(%rbx), %edx
.L140:
	movl	$2, 144(%rbx)
	movl	168(%rbx), %ecx
	movl	$2, %eax
	jmp	.L137
.L141:
	movl	156(%rbx), %edx
	movl	%edx, %ecx
	subl	160(%rbx), %ecx
	cmpl	$4096, %ecx
	ja	.L140
	movl	168(%rbx), %ecx
	jmp	.L137
.L135:
	movl	152(%rbx), %r8d
	testl	%r8d, %r8d
	jne	.L192
.L158:
	movl	156(%rbx), %edx
	movl	$2, %eax
	cmpl	$2, %edx
	cmovbe	%edx, %eax
	cmpl	$4, %ebp
	movl	%eax, 5916(%rbx)
	je	.L193
	movl	5884(%rbx), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.L180
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L164
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L164:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r12
	movl	156(%rbx), %eax
	movq	56(%r12), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r13d
	movl	32(%r12), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L194
.L166:
	movq	(%rbx), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	setne	%al
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L192:
	.cfi_restore_state
	movl	156(%rbx), %eax
	movq	80(%rbx), %rdx
	xorl	%edi, %edi
	movl	5884(%rbx), %ecx
	movq	5888(%rbx), %rsi
	subl	$1, %eax
	movzbl	(%rdx,%rax), %eax
	movw	%di, (%rsi,%rcx,2)
	movq	5872(%rbx), %rsi
	movq	%rcx, %rdx
	addl	$1, %edx
	movl	%edx, 5884(%rbx)
	movb	%al, (%rsi,%rcx)
	addw	$1, 196(%rbx,%rax,4)
	movl	$0, 152(%rbx)
	jmp	.L158
.L193:
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L160
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L160:
	movl	$1, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r12
	movl	156(%rbx), %eax
	movq	56(%r12), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r13d
	movl	32(%r12), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L195
.L162:
	movq	(%rbx), %rax
	cmpl	$1, 32(%rax)
	sbbl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	addl	$3, %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L194:
	.cfi_restore_state
	movq	24(%r12), %rdi
	movq	32(%rbp), %rsi
	movl	%r13d, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r12)
	addq	%r14, 32(%rbp)
	addq	%r14, 40(%r12)
	subl	%r13d, 32(%r12)
	subl	%r13d, 40(%rbp)
	jne	.L166
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L166
.L195:
	movq	24(%r12), %rdi
	movq	32(%rbp), %rsi
	movl	%r13d, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r12)
	addq	%r14, 32(%rbp)
	addq	%r14, 40(%r12)
	subl	%r13d, 32(%r12)
	subl	%r13d, 40(%rbp)
	jne	.L162
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L162
	.cfi_endproc
.LFE44:
	.size	deflate_slow, .-deflate_slow
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.type	deflate_stored, @function
deflate_stored:
.LFB42:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	24(%rdi), %rax
	movl	%esi, 4(%rsp)
	leaq	-5(%rax), %rbp
	movl	$65535, %eax
	cmpq	$65535, %rbp
	cmovnb	%rax, %rbp
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L205:
	movq	(%rbx), %rax
	movl	32(%rax), %ecx
	testl	%ecx, %ecx
	je	.L207
.L237:
	movl	156(%rbx), %eax
	movq	136(%rbx), %rcx
.L202:
	movl	68(%rbx), %edi
	movl	%eax, %esi
	subl	%ecx, %esi
	leal	-262(%rdi), %edx
	cmpl	%edx, %esi
	jnb	.L235
.L208:
	movl	164(%rbx), %eax
	cmpl	$1, %eax
	jbe	.L236
.L198:
	addl	156(%rbx), %eax
	movq	136(%rbx), %rcx
	movl	$0, 164(%rbx)
	leaq	0(%rbp,%rcx), %rdx
	testl	%eax, %eax
	movl	%eax, 156(%rbx)
	je	.L201
	movl	%eax, %esi
	cmpq	%rsi, %rdx
	ja	.L202
.L201:
	subl	%edx, %eax
	movl	%edx, 156(%rbx)
	movl	%edx, %edx
	subq	%rcx, %rdx
	xorl	%esi, %esi
	testq	%rcx, %rcx
	movl	%eax, 164(%rbx)
	js	.L203
	movl	%ecx, %esi
	addq	80(%rbx), %rsi
.L203:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r14
	movl	156(%rbx), %eax
	movq	56(%r14), %r15
	movq	%rax, 136(%rbx)
	movq	%r15, %rdi
	call	_tr_flush_bits
	movl	40(%r15), %r13d
	movl	32(%r14), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	je	.L205
	movq	24(%r14), %rdi
	movq	32(%r15), %rsi
	movl	%r13d, %r12d
	movq	%r12, %rdx
	call	memcpy
	addq	%r12, 24(%r14)
	addq	%r12, 32(%r15)
	addq	%r12, 40(%r14)
	subl	%r13d, 32(%r14)
	subl	%r13d, 40(%r15)
	jne	.L205
	movq	16(%r15), %rax
	movq	%rax, 32(%r15)
	movq	(%rbx), %rax
	movl	32(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L237
.L207:
	xorl	%eax, %eax
.L200:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L236:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	fill_window
	movl	164(%rbx), %eax
	testl	%eax, %eax
	jne	.L198
	movl	4(%rsp), %esi
	testl	%esi, %esi
	je	.L207
	cmpl	$4, 4(%rsp)
	movl	$0, 5916(%rbx)
	je	.L238
	movl	156(%rbx), %edx
	movq	136(%rbx), %rcx
	movl	$1, %eax
	cmpq	%rcx, %rdx
	jle	.L200
	subq	%rcx, %rdx
	xorl	%esi, %esi
	testq	%rcx, %rcx
	js	.L219
	movl	%ecx, %ecx
	addq	80(%rbx), %rcx
	movq	%rcx, %rsi
.L219:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r12
	movl	156(%rbx), %eax
	movq	56(%r12), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r13d
	movl	32(%r12), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L239
.L221:
	movq	(%rbx), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L235:
	movl	%eax, %edx
	xorl	%esi, %esi
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	js	.L209
	movl	%ecx, %ecx
	addq	80(%rbx), %rcx
	movq	%rcx, %rsi
.L209:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r14
	movl	156(%rbx), %eax
	movq	56(%r14), %r15
	movq	%rax, 136(%rbx)
	movq	%r15, %rdi
	call	_tr_flush_bits
	movl	40(%r15), %r13d
	movl	32(%r14), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L240
.L211:
	movq	(%rbx), %rax
	movl	32(%rax), %edx
	testl	%edx, %edx
	jne	.L208
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L240:
	movq	24(%r14), %rdi
	movq	32(%r15), %rsi
	movl	%r13d, %ecx
	movq	%rcx, %rdx
	movq	%rcx, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %rcx
	addq	%rcx, 24(%r14)
	addq	%rcx, 32(%r15)
	addq	%rcx, 40(%r14)
	subl	%r13d, 32(%r14)
	subl	%r13d, 40(%r15)
	jne	.L211
	movq	16(%r15), %rax
	movq	%rax, 32(%r15)
	jmp	.L211
.L238:
	movl	156(%rbx), %edx
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L215
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L215:
	movl	$1, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r12
	movl	156(%rbx), %eax
	movq	56(%r12), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r13d
	movl	32(%r12), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L241
.L217:
	movq	(%rbx), %rax
	cmpl	$1, 32(%rax)
	sbbl	%eax, %eax
	addl	$3, %eax
	jmp	.L200
.L239:
	movq	24(%r12), %rdi
	movq	32(%rbp), %rsi
	movl	%r13d, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r12)
	addq	%r14, 32(%rbp)
	addq	%r14, 40(%r12)
	subl	%r13d, 32(%r12)
	subl	%r13d, 40(%rbp)
	jne	.L221
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L221
.L241:
	movq	24(%r12), %rdi
	movq	32(%rbp), %rsi
	movl	%r13d, %r14d
	movq	%r14, %rdx
	call	memcpy
	addq	%r14, 24(%r12)
	addq	%r14, 32(%rbp)
	addq	%r14, 40(%r12)
	subl	%r13d, 32(%r12)
	subl	%r13d, 40(%rbp)
	jne	.L217
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L217
	.cfi_endproc
.LFE42:
	.size	deflate_stored, .-deflate_stored
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
.LFB24:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	je	.L261
	testq	%rsi, %rsi
	movq	%rsi, %r15
	movq	56(%rdi), %r13
	je	.L261
	testq	%r13, %r13
	je	.L261
	movl	44(%r13), %ebp
	cmpl	$2, %ebp
	je	.L261
	cmpl	$1, %ebp
	movl	%edx, %r14d
	je	.L270
	movl	164(%r13), %eax
	testl	%eax, %eax
	jne	.L261
	movl	68(%r13), %eax
	movl	$0, 44(%r13)
	cmpl	%eax, %r14d
	jnb	.L271
.L247:
	movl	8(%rbx), %eax
	movq	(%rbx), %r12
	movl	%r14d, 8(%rbx)
	movq	%r15, (%rbx)
	movl	%eax, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L269:
	movq	%r13, %rdi
	call	fill_window
	movl	164(%r13), %esi
	cmpl	$2, %esi
	jbe	.L249
	movl	156(%r13), %edx
	movl	112(%r13), %eax
	movl	128(%r13), %ecx
	movq	80(%r13), %r15
	movl	124(%r13), %r14d
	movq	96(%r13), %r11
	movl	76(%r13), %r10d
	movq	104(%r13), %r9
	leal	-2(%rdx,%rsi), %r8d
	movq	%rbx, (%rsp)
	.p2align 4,,10
	.p2align 3
.L250:
	leal	2(%rdx), %esi
	sall	%cl, %eax
	movl	%edx, %edi
	andl	%r10d, %edi
	movzbl	(%r15,%rsi), %esi
	xorl	%esi, %eax
	andl	%r14d, %eax
	movl	%eax, %esi
	movl	%eax, 112(%r13)
	leaq	(%r9,%rsi,2), %rsi
	movzwl	(%rsi), %ebx
	movw	%bx, (%r11,%rdi,2)
	movw	%dx, (%rsi)
	addl	$1, %edx
	cmpl	%r8d, %edx
	jne	.L250
	movq	(%rsp), %rbx
	movl	%edx, 156(%r13)
	movl	$2, 164(%r13)
	jmp	.L269
.L249:
	movl	%esi, %eax
	addl	156(%r13), %eax
	movl	%esi, 5916(%r13)
	movl	$0, 164(%r13)
	movl	$2, 168(%r13)
	movl	$2, 144(%r13)
	movl	$0, 152(%r13)
	movl	%eax, 156(%r13)
	movq	%rax, 136(%r13)
	movl	12(%rsp), %eax
	movq	%r12, (%rbx)
	movl	%eax, 8(%rbx)
	movl	%ebp, 44(%r13)
	xorl	%eax, %eax
.L262:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L271:
	.cfi_restore_state
	testl	%ebp, %ebp
	je	.L272
.L246:
	subl	%eax, %r14d
	addq	%r14, %r15
	movl	%eax, %r14d
	jmp	.L247
.L270:
	cmpl	$42, 8(%r13)
	movl	$-2, %eax
	jne	.L262
	movl	164(%r13), %edx
	testl	%edx, %edx
	jne	.L262
	movq	96(%rbx), %rdi
	movl	%r14d, %edx
	movq	%r15, %rsi
	call	adler32
	movq	%rax, 96(%rbx)
	movl	68(%r13), %eax
	movl	$0, 44(%r13)
	cmpl	%eax, %r14d
	jnb	.L246
	jmp	.L247
.L272:
	movl	116(%r13), %eax
	movq	104(%r13), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	subl	$1, %eax
	leaq	(%rax,%rax), %rdx
	movw	%cx, (%rdi,%rax,2)
	call	memset
	movl	$0, 156(%r13)
	movq	$0, 136(%r13)
	movl	$0, 5916(%r13)
	movl	68(%r13), %eax
	jmp	.L246
.L261:
	movl	$-2, %eax
	jmp	.L262
	.cfi_endproc
.LFE24:
	.size	deflateSetDictionary, .-deflateSetDictionary
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
.LFB25:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L280
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	56(%rdi), %rbp
	testq	%rbp, %rbp
	je	.L283
	cmpq	$0, 64(%rdi)
	je	.L283
	cmpq	$0, 72(%rdi)
	je	.L283
	movq	16(%rbp), %rax
	movq	$0, 40(%rdi)
	movq	%rdi, %rbx
	movq	$0, 16(%rdi)
	movq	$0, 48(%rdi)
	movl	$2, 88(%rdi)
	movl	$0, 40(%rbp)
	movq	%rax, 32(%rbp)
	movl	44(%rbp), %eax
	testl	%eax, %eax
	js	.L286
	jne	.L276
	movl	$113, 8(%rbp)
.L278:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	adler32
.L279:
	movq	%rax, 96(%rbx)
	movq	%rbp, %rdi
	movl	$0, 64(%rbp)
	call	_tr_init
	xorl	%eax, %eax
.L284:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L286:
	.cfi_restore_state
	negl	%eax
	movl	%eax, 44(%rbp)
.L276:
	cmpl	$2, %eax
	movl	$42, 8(%rbp)
	jne	.L278
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	crc32
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L283:
	movl	$-2, %eax
	jmp	.L284
.L280:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	deflateResetKeep, .-deflateResetKeep
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
.LFB26:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L294
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	56(%rdi), %rbp
	testq	%rbp, %rbp
	je	.L297
	cmpq	$0, 64(%rdi)
	je	.L297
	cmpq	$0, 72(%rdi)
	je	.L297
	movq	16(%rbp), %rax
	movq	$0, 40(%rdi)
	movq	%rdi, %rbx
	movq	$0, 16(%rdi)
	movq	$0, 48(%rdi)
	movl	$2, 88(%rdi)
	movl	$0, 40(%rbp)
	movq	%rax, 32(%rbp)
	movl	44(%rbp), %eax
	testl	%eax, %eax
	js	.L300
	jne	.L290
	movl	$113, 8(%rbp)
.L292:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	adler32
.L293:
	movq	%rax, 96(%rbx)
	movq	%rbp, %rdi
	movl	$0, 64(%rbp)
	call	_tr_init
	movq	56(%rbx), %rbx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	68(%rbx), %eax
	movq	104(%rbx), %rdi
	addq	%rax, %rax
	movq	%rax, 88(%rbx)
	movl	116(%rbx), %eax
	subl	$1, %eax
	leaq	(%rax,%rax), %rdx
	movw	%cx, (%rdi,%rax,2)
	call	memset
	movslq	180(%rbx), %rax
	movl	$0, 156(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 164(%rbx)
	movl	$0, 5916(%rbx)
	movl	$2, 168(%rbx)
	movl	$2, 144(%rbx)
	movl	$0, 152(%rbx)
	salq	$4, %rax
	movl	$0, 112(%rbx)
	leaq	configuration_table(%rax), %rdx
	movzwl	configuration_table+2(%rax), %ecx
	movzwl	configuration_table(%rax), %eax
	movl	%eax, 188(%rbx)
	movzwl	4(%rdx), %eax
	movl	%ecx, 176(%rbx)
	movl	%eax, 192(%rbx)
	movzwl	6(%rdx), %eax
	movl	%eax, 172(%rbx)
	xorl	%eax, %eax
.L298:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L300:
	.cfi_restore_state
	negl	%eax
	movl	%eax, 44(%rbp)
.L290:
	cmpl	$2, %eax
	movl	$42, 8(%rbp)
	jne	.L292
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	crc32
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L297:
	movl	$-2, %eax
	jmp	.L298
.L294:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	deflateReset, .-deflateReset
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
.LFB27:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L303
	movq	56(%rdi), %rdx
	movl	$-2, %eax
	testq	%rdx, %rdx
	je	.L302
	cmpl	$2, 44(%rdx)
	jne	.L302
	movq	%rsi, 48(%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L302:
	rep ret
.L303:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE27:
	.size	deflateSetHeader, .-deflateSetHeader
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
.LFB28:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L310
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L310
	testq	%rsi, %rsi
	je	.L308
	movl	40(%rax), %ecx
	movl	%ecx, (%rsi)
.L308:
	testq	%rdx, %rdx
	je	.L311
	movl	5924(%rax), %eax
	movl	%eax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L311:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L310:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE28:
	.size	deflatePending, .-deflatePending
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
.LFB29:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L318
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	56(%rdi), %r12
	testq	%r12, %r12
	je	.L319
	movq	32(%r12), %rax
	addq	$2, %rax
	cmpq	%rax, 5888(%r12)
	jb	.L320
	movl	%esi, %r13d
	movl	%edx, %r14d
	movl	$16, %ebx
	.p2align 4,,10
	.p2align 3
.L317:
	movl	5924(%r12), %r8d
	movl	%ebx, %ebp
	movl	$1, %eax
	movq	%r12, %rdi
	subl	%r8d, %ebp
	cmpl	%ebp, %r13d
	cmovle	%r13d, %ebp
	movl	%ebp, %ecx
	sall	%cl, %eax
	movl	%r8d, %ecx
	addl	%ebp, %r8d
	subl	$1, %eax
	movl	%r8d, 5924(%r12)
	andl	%r14d, %eax
	sall	%cl, %eax
	orw	%ax, 5920(%r12)
	call	_tr_flush_bits
	movl	%ebp, %ecx
	sarl	%cl, %r14d
	subl	%ebp, %r13d
	jne	.L317
	xorl	%eax, %eax
.L316:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
.L320:
	.cfi_restore_state
	movl	$-5, %eax
	jmp	.L316
.L319:
	movl	$-2, %eax
	jmp	.L316
.L318:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE29:
	.size	deflatePrime, .-deflatePrime
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
.LFB31:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L326
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L326
	movl	%esi, 188(%rax)
	movl	%edx, 176(%rax)
	movl	%ecx, 192(%rax)
	movl	%r8d, 172(%rax)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L326:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE31:
	.size	deflateTune, .-deflateTune
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
.LFB32:
	.cfi_startproc
	leaq	7(%rsi), %r8
	leaq	63(%rsi), %rax
	movq	%r8, %rdx
	shrq	$6, %rax
	shrq	$3, %rdx
	addq	%rdx, %rax
	addq	%rsi, %rax
	testq	%rdi, %rdi
	je	.L328
	movq	56(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L328
	movl	44(%rcx), %edx
	cmpl	$1, %edx
	je	.L332
	cmpl	$2, %edx
	je	.L333
	cmpl	$1, %edx
	sbbq	%rdx, %rdx
	notq	%rdx
	andl	$6, %edx
.L334:
	cmpl	$15, 72(%rcx)
	je	.L353
.L340:
	leaq	5(%rdx,%rax), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L333:
	movq	48(%rcx), %r9
	testq	%r9, %r9
	je	.L344
	cmpq	$0, 24(%r9)
	je	.L345
	movl	32(%r9), %edx
	addl	$2, %edx
	addq	$18, %rdx
.L335:
	movq	40(%r9), %rdi
	testq	%rdi, %rdi
	je	.L336
	subq	%rdx, %rdi
	.p2align 4,,10
	.p2align 3
.L337:
	addq	$1, %rdx
	cmpb	$0, -1(%rdi,%rdx)
	jne	.L337
.L336:
	movq	56(%r9), %rdi
	testq	%rdi, %rdi
	je	.L338
	subq	%rdx, %rdi
	.p2align 4,,10
	.p2align 3
.L339:
	addq	$1, %rdx
	cmpb	$0, -1(%rdi,%rdx)
	jne	.L339
.L338:
	movl	68(%r9), %r9d
	leaq	2(%rdx), %rdi
	testl	%r9d, %r9d
	cmovne	%rdi, %rdx
	cmpl	$15, 72(%rcx)
	jne	.L340
.L353:
	cmpl	$15, 120(%rcx)
	jne	.L340
	movq	%rsi, %rax
	shrq	$12, %rax
	addq	%rax, %r8
	movq	%rsi, %rax
	shrq	$25, %rsi
	shrq	$14, %rax
	addq	%rax, %r8
	leaq	(%r8,%rsi), %rax
	addq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L332:
	cmpl	$1, 156(%rcx)
	sbbq	%rdx, %rdx
	andq	$-4, %rdx
	addq	$10, %rdx
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L328:
	addq	$11, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L344:
	movl	$18, %edx
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L345:
	movl	$18, %edx
	jmp	.L335
	.cfi_endproc
.LFE32:
	.size	deflateBound, .-deflateBound
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	deflate
	.type	deflate, @function
deflate:
.LFB35:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L524
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	56(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L526
	cmpl	$5, %esi
	ja	.L526
	cmpq	$0, 24(%rdi)
	je	.L356
	cmpq	$0, (%rdi)
	je	.L624
.L357:
	cmpl	$4, %esi
	movl	8(%rbx), %eax
	setne	27(%rsp)
	je	.L358
	cmpl	$666, %eax
	je	.L356
.L358:
	movl	32(%rdi), %r9d
	testl	%r9d, %r9d
	je	.L625
	cmpl	$42, %eax
	movl	64(%rbx), %r13d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%rdi, (%rbx)
	movl	%esi, 64(%rbx)
	je	.L626
	cmpl	$69, %eax
	je	.L609
.L643:
	cmpl	$73, %eax
	movl	40(%rbx), %edi
	je	.L627
.L364:
	movl	%edi, %edx
.L509:
	cmpl	$91, %eax
	je	.L628
.L402:
	cmpl	$103, %eax
	je	.L629
.L413:
	testl	%edx, %edx
	jne	.L630
	movl	8(%r14), %esi
	testl	%esi, %esi
	je	.L631
	cmpl	$666, 8(%rbx)
	je	.L522
.L431:
	movl	184(%rbx), %eax
	cmpl	$2, %eax
	je	.L429
	cmpl	$3, %eax
	je	.L632
	movslq	180(%rbx), %rax
	movl	%ebp, %esi
	movq	%rbx, %rdi
	salq	$4, %rax
	call	*configuration_table+8(%rax)
	leal	-2(%rax), %edx
	cmpl	$1, %edx
	jbe	.L491
	movl	%eax, %edx
	andl	$-3, %edx
.L492:
	testl	%edx, %edx
	jne	.L494
.L493:
	movl	32(%r14), %r10d
	testl	%r10d, %r10d
	je	.L633
.L618:
	xorl	%eax, %eax
.L608:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L631:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpl	$5, %ebp
	leal	(%rbp,%rbp), %ecx
	sete	%al
	leal	(%r13,%r13), %edx
	leal	(%rax,%rax,8), %eax
	subl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$4, %r13d
	setg	%al
	leal	(%rax,%rax,8), %eax
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jg	.L426
	cmpb	$0, 27(%rsp)
	jne	.L522
.L426:
	movl	8(%rbx), %eax
.L428:
	movl	164(%rbx), %r15d
	testl	%r15d, %r15d
	jne	.L431
	testl	%ebp, %ebp
	je	.L618
	cmpl	$666, %eax
	jne	.L431
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L634:
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L438
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L438:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r15
	movl	156(%rbx), %eax
	movq	56(%r15), %rcx
	movq	%rax, 136(%rbx)
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	call	_tr_flush_bits
	movq	8(%rsp), %rcx
	movl	32(%r15), %eax
	movl	40(%rcx), %r13d
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	je	.L440
	movq	32(%rcx), %rsi
	movq	24(%r15), %rdi
	movl	%r13d, %r8d
	movq	%r8, %rdx
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r8
	addq	%r8, 24(%r15)
	addq	%r8, 32(%rcx)
	addq	%r8, 40(%r15)
	subl	%r13d, 32(%r15)
	subl	%r13d, 40(%rcx)
	jne	.L440
	movq	16(%rcx), %rax
	movq	%rax, 32(%rcx)
.L440:
	movq	(%rbx), %rax
	movl	32(%rax), %r11d
	testl	%r11d, %r11d
	je	.L493
.L429:
	movl	164(%rbx), %eax
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L434:
	movl	156(%rbx), %eax
	movl	5884(%rbx), %ecx
	xorl	%r12d, %r12d
	movq	80(%rbx), %rdx
	movq	5888(%rbx), %rsi
	movl	$0, 144(%rbx)
	movzbl	(%rdx,%rax), %eax
	movw	%r12w, (%rsi,%rcx,2)
	movq	%rcx, %rdx
	movq	5872(%rbx), %rsi
	addl	$1, %edx
	movl	%edx, 5884(%rbx)
	movb	%al, (%rsi,%rcx)
	addw	$1, 196(%rbx,%rax,4)
	movl	5880(%rbx), %eax
	movl	156(%rbx), %edi
	leal	-1(%rax), %ecx
	movl	164(%rbx), %eax
	leal	1(%rdi), %edx
	movl	%edx, 156(%rbx)
	subl	$1, %eax
	cmpl	%ecx, 5884(%rbx)
	movl	%eax, 164(%rbx)
	je	.L634
.L437:
	testl	%eax, %eax
	jne	.L434
	movq	%rbx, %rdi
	call	fill_window
	movl	164(%rbx), %r13d
	testl	%r13d, %r13d
	jne	.L434
	testl	%ebp, %ebp
	je	.L493
	cmpl	$4, %ebp
	movl	$0, 5916(%rbx)
	je	.L635
	movl	5884(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L585
	movl	156(%rbx), %edx
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L451
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L451:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r15
	movl	156(%rbx), %eax
	movq	56(%r15), %r13
	movq	%rax, 136(%rbx)
	movq	%r13, %rdi
	call	_tr_flush_bits
	movl	40(%r13), %ecx
	movl	32(%r15), %eax
	cmpl	%ecx, %eax
	cmovbe	%eax, %ecx
	testl	%ecx, %ecx
	jne	.L636
.L489:
	movq	(%rbx), %rax
	movl	32(%rax), %r11d
	xorl	%eax, %eax
	testl	%r11d, %r11d
	setne	%al
	movl	%eax, %edx
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L494:
	cmpl	$1, %eax
	je	.L585
.L433:
	cmpb	$0, 27(%rsp)
	jne	.L618
	movl	44(%rbx), %eax
	testl	%eax, %eax
	jle	.L552
	cmpl	$2, %eax
	je	.L637
	movl	40(%rbx), %eax
	movq	96(%r14), %rdx
	movq	16(%rbx), %rcx
	shrq	$16, %rdx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movl	%edx, %esi
	shrl	$8, %esi
	movb	%sil, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movzwl	96(%r14), %edx
	movq	16(%rbx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movl	%edx, %esi
	shrl	$8, %esi
	movb	%sil, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movb	%dl, (%rcx,%rax)
.L503:
	movq	56(%r14), %r12
	movq	%r12, %rdi
	call	_tr_flush_bits
	movl	40(%r12), %ebp
	movl	32(%r14), %eax
	cmpl	%ebp, %eax
	cmovbe	%eax, %ebp
	testl	%ebp, %ebp
	jne	.L638
.L505:
	movl	44(%rbx), %eax
	testl	%eax, %eax
	jle	.L507
	negl	%eax
	movl	%eax, 44(%rbx)
.L507:
	movl	40(%rbx), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	sete	%al
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L630:
	.cfi_restore_state
	movq	56(%r14), %r15
	movq	%r15, %rdi
	call	_tr_flush_bits
	movl	40(%r15), %r13d
	movl	32(%r14), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L639
	testl	%eax, %eax
	je	.L617
.L422:
	movl	8(%rbx), %eax
	cmpl	$666, %eax
	je	.L640
	movl	8(%r14), %edx
	testl	%edx, %edx
	je	.L428
	jmp	.L431
	.p2align 4,,10
	.p2align 3
.L626:
	cmpl	$2, 44(%rbx)
	je	.L641
	movl	72(%rbx), %eax
	xorl	%ecx, %ecx
	sall	$12, %eax
	subl	$30720, %eax
	cmpl	$1, 184(%rbx)
	jle	.L642
.L373:
	movl	156(%rbx), %r12d
	orl	%eax, %ecx
	movl	$138547333, %edx
	movl	%ecx, %eax
	movl	$113, 8(%rbx)
	orl	$32, %eax
	testl	%r12d, %r12d
	cmovne	%eax, %ecx
	movl	%ecx, %eax
	mull	%edx
	subl	%edx, %ecx
	shrl	%ecx
	addl	%ecx, %edx
	movq	16(%rbx), %rcx
	shrl	$4, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	movl	40(%rbx), %edx
	addl	$31, %eax
	leal	1(%rdx), %esi
	movl	%esi, 40(%rbx)
	movl	%eax, %esi
	shrl	$8, %esi
	movb	%sil, (%rcx,%rdx)
	movl	40(%rbx), %edx
	movq	16(%rbx), %rcx
	leal	1(%rdx), %esi
	movl	%esi, 40(%rbx)
	movb	%al, (%rcx,%rdx)
	movl	156(%rbx), %r15d
	testl	%r15d, %r15d
	je	.L375
	movl	40(%rbx), %eax
	movq	96(%r14), %rdx
	movq	16(%rbx), %rcx
	shrq	$16, %rdx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movl	%edx, %esi
	shrl	$8, %esi
	movb	%sil, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movzwl	96(%r14), %edx
	movq	16(%rbx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movl	%edx, %esi
	shrl	$8, %esi
	movb	%sil, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 40(%rbx)
	movb	%dl, (%rcx,%rax)
.L375:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	adler32
	movq	%rax, 96(%r14)
	movl	8(%rbx), %eax
	cmpl	$69, %eax
	jne	.L643
.L609:
	movq	48(%rbx), %rax
.L372:
	cmpq	$0, 24(%rax)
	je	.L377
	movl	56(%rbx), %ecx
	movl	32(%rax), %esi
	movl	40(%rbx), %edi
	movzwl	%si, %edx
	cmpl	%ecx, %edx
	jbe	.L388
	movl	%edi, %r8d
	movl	%edi, %edx
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L379:
	movq	24(%rax), %rax
	addl	$1, %edx
	movq	16(%rbx), %r9
	movl	%edx, 40(%rbx)
	movzbl	(%rax,%rcx), %eax
	movb	%al, (%r9,%rsi)
	movl	56(%rbx), %eax
	leal	1(%rax), %ecx
	movq	48(%rbx), %rax
	movl	%ecx, 56(%rbx)
	movl	32(%rax), %esi
	movzwl	%si, %edx
	cmpl	%ecx, %edx
	jbe	.L385
	movl	40(%rbx), %edx
.L386:
	movl	%edx, %esi
	cmpq	24(%rbx), %rsi
	jne	.L379
	cmpl	%edx, %edi
	jnb	.L380
	movl	68(%rax), %r11d
	testl	%r11d, %r11d
	jne	.L644
.L380:
	movq	56(%r14), %r12
	movq	%r12, %rdi
	call	_tr_flush_bits
	movl	40(%r12), %r15d
	movl	32(%r14), %eax
	cmpl	%r15d, %eax
	cmovbe	%eax, %r15d
	testl	%r15d, %r15d
	jne	.L645
.L382:
	movl	40(%rbx), %esi
	cmpq	24(%rbx), %rsi
	movq	%rsi, %rdi
	movl	%esi, %r8d
	je	.L646
	movq	48(%rbx), %rax
	movl	56(%rbx), %ecx
	movl	%esi, %edx
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L385:
	movl	68(%rax), %r10d
	movl	40(%rbx), %edi
	testl	%r10d, %r10d
	je	.L388
	cmpl	%r8d, %edi
	jbe	.L388
	subl	%r8d, %edi
	movq	%r8, %rsi
	addq	16(%rbx), %rsi
	movl	%edi, %edx
	movq	96(%r14), %rdi
	call	crc32
	movq	%rax, 96(%r14)
	movq	48(%rbx), %rax
	movl	56(%rbx), %ecx
	movl	40(%rbx), %edi
	movl	32(%rax), %esi
	.p2align 4,,10
	.p2align 3
.L388:
	cmpl	%esi, %ecx
	je	.L390
	movl	8(%rbx), %eax
	cmpl	$73, %eax
	jne	.L364
	.p2align 4,,10
	.p2align 3
.L627:
	movq	48(%rbx), %rax
.L517:
	cmpq	$0, 40(%rax)
	je	.L392
	movl	%edi, %esi
	movl	%esi, %edx
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L393:
	movq	40(%rax), %rdi
	movl	56(%rbx), %eax
	addl	$1, %edx
	leal	1(%rax), %r8d
	movl	%r8d, 56(%rbx)
	movzbl	(%rdi,%rax), %eax
	movq	16(%rbx), %rdi
	movl	%edx, 40(%rbx)
	testb	%al, %al
	movb	%al, (%rdi,%rcx)
	je	.L399
	movl	40(%rbx), %edx
	movq	48(%rbx), %rax
.L400:
	movl	%edx, %ecx
	cmpq	24(%rbx), %rcx
	jne	.L393
	cmpl	%edx, %esi
	jnb	.L394
	movl	68(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L647
.L394:
	movq	56(%r14), %r12
	movq	%r12, %rdi
	call	_tr_flush_bits
	movl	40(%r12), %r15d
	movl	32(%r14), %eax
	cmpl	%r15d, %eax
	cmovbe	%eax, %r15d
	testl	%r15d, %r15d
	jne	.L648
.L396:
	movl	40(%rbx), %esi
	movq	48(%rbx), %rax
	movl	%esi, %ecx
	cmpq	24(%rbx), %rcx
	je	.L508
	movl	%esi, %edx
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L640:
	movl	8(%r14), %ecx
	testl	%ecx, %ecx
	je	.L428
	.p2align 4,,10
	.p2align 3
.L522:
	movq	z_errmsg+56(%rip), %rax
	movq	%rax, 48(%r14)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$-5, %eax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L633:
	.cfi_restore_state
	movl	$-1, 64(%rbx)
	jmp	.L618
.L457:
	cmpl	$4, %ebp
	movl	$0, 5916(%rbx)
	je	.L649
	movl	5884(%rbx), %r12d
	testl	%r12d, %r12d
	jne	.L650
.L585:
	cmpl	$1, %ebp
	je	.L651
	cmpl	$5, %ebp
	je	.L497
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_tr_stored_block
	cmpl	$3, %ebp
	jne	.L497
	movl	116(%rbx), %eax
	movq	104(%rbx), %rdi
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	subl	$1, %eax
	leaq	(%rax,%rax), %rdx
	movw	%r8w, (%rdi,%rax,2)
	call	memset
	movl	164(%rbx), %r9d
	testl	%r9d, %r9d
	jne	.L497
	movl	$0, 156(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 5916(%rbx)
.L497:
	movq	56(%r14), %r13
	movq	%r13, %rdi
	call	_tr_flush_bits
	movl	40(%r13), %ebp
	movl	32(%r14), %eax
	cmpl	%ebp, %eax
	cmovbe	%eax, %ebp
	testl	%ebp, %ebp
	jne	.L652
.L500:
	testl	%eax, %eax
	jne	.L433
.L617:
	movl	$-1, 64(%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.L639:
	.cfi_restore_state
	movq	24(%r14), %rdi
	movq	32(%r15), %rsi
	movl	%r13d, %ecx
	movq	%rcx, %rdx
	movq	%rcx, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %rcx
	addq	%rcx, 24(%r14)
	addq	%rcx, 32(%r15)
	addq	%rcx, 40(%r14)
	subl	%r13d, 32(%r14)
	subl	%r13d, 40(%r15)
	jne	.L614
	movq	16(%r15), %rax
	movq	%rax, 32(%r15)
.L614:
	movl	32(%r14), %eax
	testl	%eax, %eax
	jne	.L422
	jmp	.L617
.L390:
	movl	$0, 56(%rbx)
	movl	$73, 8(%rbx)
	jmp	.L517
.L642:
	movl	180(%rbx), %edx
	cmpl	$1, %edx
	jle	.L373
	cmpl	$5, %edx
	movb	$64, %cl
	jle	.L373
	cmpl	$6, %edx
	movb	$-64, %cl
	movl	$128, %edx
	cmove	%edx, %ecx
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L648:
	movq	24(%r14), %rdi
	movq	32(%r12), %rsi
	movl	%r15d, %r8d
	movq	%r8, %rdx
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %r8
	addq	%r8, 24(%r14)
	addq	%r8, 32(%r12)
	addq	%r8, 40(%r14)
	subl	%r15d, 32(%r14)
	subl	%r15d, 40(%r12)
	jne	.L396
	movq	16(%r12), %rax
	movq	%rax, 32(%r12)
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L645:
	movq	24(%r14), %rdi
	movq	32(%r12), %rsi
	movl	%r15d, %r8d
	movq	%r8, %rdx
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %r8
	addq	%r8, 24(%r14)
	addq	%r8, 32(%r12)
	addq	%r8, 40(%r14)
	subl	%r15d, 32(%r14)
	subl	%r15d, 40(%r12)
	jne	.L382
	movq	16(%r12), %rax
	movq	%rax, 32(%r12)
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L399:
	movq	48(%rbx), %rax
	movl	40(%rbx), %edx
	movl	68(%rax), %ecx
	testl	%ecx, %ecx
	je	.L511
	cmpl	%esi, %edx
	jbe	.L511
	movl	%edx, %eax
	movl	%esi, %edx
	movq	96(%r14), %rdi
	subl	%esi, %eax
	movq	%rdx, %rsi
	addq	16(%rbx), %rsi
	movl	%eax, %edx
	call	crc32
	movl	40(%rbx), %edx
	movq	%rax, 96(%r14)
	movq	48(%rbx), %rax
	.p2align 4,,10
	.p2align 3
.L511:
	movl	$0, 56(%rbx)
	movl	$91, 8(%rbx)
.L519:
	cmpq	$0, 56(%rax)
	je	.L403
	movl	%edx, %edi
	movl	%edi, %esi
	jmp	.L411
	.p2align 4,,10
	.p2align 3
.L404:
	movq	56(%rax), %rdx
	movl	56(%rbx), %eax
	addl	$1, %esi
	leal	1(%rax), %r8d
	movl	%r8d, 56(%rbx)
	movzbl	(%rdx,%rax), %eax
	movq	16(%rbx), %r8
	movl	%esi, 40(%rbx)
	testb	%al, %al
	movb	%al, (%r8,%rcx)
	je	.L410
	movl	40(%rbx), %esi
	movq	48(%rbx), %rax
.L411:
	movl	%esi, %ecx
	cmpq	24(%rbx), %rcx
	jne	.L404
	cmpl	%esi, %edi
	jnb	.L405
	movl	68(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L653
.L405:
	movq	56(%r14), %r12
	movq	%r12, %rdi
	call	_tr_flush_bits
	movl	40(%r12), %r15d
	movl	32(%r14), %eax
	cmpl	%r15d, %eax
	cmovbe	%eax, %r15d
	testl	%r15d, %r15d
	jne	.L654
.L407:
	movl	40(%rbx), %edi
	movq	48(%rbx), %rax
	movl	%edi, %ecx
	cmpq	24(%rbx), %rcx
	je	.L409
	movl	%edi, %esi
	jmp	.L404
	.p2align 4,,10
	.p2align 3
.L654:
	movq	24(%r14), %rdi
	movq	32(%r12), %rsi
	movl	%r15d, %r8d
	movq	%r8, %rdx
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %r8
	addq	%r8, 24(%r14)
	addq	%r8, 32(%r12)
	addq	%r8, 40(%r14)
	subl	%r15d, 32(%r14)
	subl	%r15d, 40(%r12)
	jne	.L407
	movq	16(%r12), %rax
	movq	%rax, 32(%r12)
	jmp	.L407
	.p2align 4,,10
	.p2align 3
.L410:
	movq	48(%rbx), %rax
	movl	68(%rax), %edx
	testl	%edx, %edx
	movl	40(%rbx), %edx
	je	.L403
	cmpl	%edi, %edx
	jbe	.L403
	movl	%edx, %eax
	movl	%edi, %edx
	movq	%rdx, %rsi
	addq	16(%rbx), %rsi
	subl	%edi, %eax
	movq	96(%r14), %rdi
	movl	%eax, %edx
	call	crc32
	movl	40(%rbx), %edx
	movq	%rax, 96(%r14)
	movq	48(%rbx), %rax
	.p2align 4,,10
	.p2align 3
.L403:
	movl	$103, 8(%rbx)
.L521:
	movl	68(%rax), %edi
	testl	%edi, %edi
	je	.L414
	leal	2(%rdx), %eax
	cmpq	24(%rbx), %rax
	ja	.L655
.L415:
	leal	1(%rdx), %ecx
	movq	16(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%ecx, 40(%rbx)
	movq	96(%r14), %rcx
	movb	%cl, (%rax,%rdx)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	96(%r14), %rdx
	shrq	$8, %rdx
	movb	%dl, (%rcx,%rax)
	xorl	%edx, %edx
	call	crc32
	movl	40(%rbx), %edx
	movq	%rax, 96(%r14)
	movl	$113, 8(%rbx)
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L632:
	movzbl	_dist_code(%rip), %eax
	movl	$258, %r12d
	leaq	(%rbx,%rax,4), %r15
.L479:
	movl	164(%rbx), %eax
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L456:
	movl	$0, 144(%rbx)
.L523:
	movl	156(%rbx), %ecx
	movq	80(%rbx), %rsi
	testl	%ecx, %ecx
	jne	.L459
	xorl	%ecx, %ecx
.L460:
	movzbl	(%rsi,%rcx), %eax
	movl	5884(%rbx), %ecx
	xorl	%edi, %edi
	movq	5888(%rbx), %rsi
	movw	%di, (%rsi,%rcx,2)
	movq	5872(%rbx), %rsi
	movq	%rcx, %rdx
	addl	$1, %edx
	movl	%edx, 5884(%rbx)
	movb	%al, (%rsi,%rcx)
	addw	$1, 196(%rbx,%rax,4)
	xorl	%ecx, %ecx
	movl	5880(%rbx), %eax
	movl	156(%rbx), %edi
	subl	$1, %eax
	cmpl	%eax, 5884(%rbx)
	leal	1(%rdi), %edx
	movl	164(%rbx), %eax
	movl	%edx, 156(%rbx)
	sete	%cl
	subl	$1, %eax
	testl	%ecx, %ecx
	movl	%eax, 164(%rbx)
	jne	.L656
.L474:
	cmpl	$258, %eax
	ja	.L456
	movq	%rbx, %rdi
	call	fill_window
	movl	164(%rbx), %eax
	cmpl	$258, %eax
	ja	.L456
	testl	%ebp, %ebp
	je	.L493
	testl	%eax, %eax
	je	.L457
	cmpl	$2, %eax
	movl	$0, 144(%rbx)
	ja	.L523
	movq	80(%rbx), %rsi
	movl	156(%rbx), %ecx
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L459:
	leaq	-1(%rsi,%rcx), %rdx
	movzbl	(%rdx), %r11d
	movzbl	(%rdx), %edi
	cmpb	%r11b, 1(%rdx)
	jne	.L460
	movzbl	2(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L460
	movzbl	3(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L460
	addq	$3, %rdx
	leaq	258(%rsi,%rcx), %r9
	jmp	.L469
	.p2align 4,,10
	.p2align 3
.L461:
	movzbl	2(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L657
	movzbl	3(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L658
	movzbl	4(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L659
	movzbl	5(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L660
	movzbl	6(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L661
	movzbl	7(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L662
	addq	$8, %rdx
	movzbl	(%rdx), %r8d
	cmpl	%r8d, %edi
	jne	.L462
	cmpq	%r9, %rdx
	jnb	.L462
.L469:
	movzbl	1(%rdx), %r8d
	cmpl	%r8d, %edi
	je	.L461
	addq	$1, %rdx
.L462:
	subq	%rdx, %r9
	movl	%r12d, %edx
	subl	%r9d, %edx
	cmpl	%eax, %edx
	movl	%edx, 144(%rbx)
	jbe	.L471
	movl	%eax, 144(%rbx)
	movl	%eax, %edx
.L472:
	movl	5884(%rbx), %ecx
	movq	5888(%rbx), %rsi
	movl	$1, %r8d
	leal	-3(%rdx), %eax
	movw	%r8w, (%rsi,%rcx,2)
	movq	5872(%rbx), %rsi
	movq	%rcx, %rdx
	addl	$1, %edx
	movl	%edx, 5884(%rbx)
	movb	%al, (%rsi,%rcx)
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	movzbl	_length_code(%rax), %eax
	addw	$1, 1224(%rbx,%rax,4)
	addw	$1, 2488(%r15)
	movl	5880(%rbx), %eax
	movl	144(%rbx), %edx
	movl	$0, 144(%rbx)
	subl	$1, %eax
	cmpl	%eax, 5884(%rbx)
	movl	164(%rbx), %eax
	sete	%cl
	subl	%edx, %eax
	addl	156(%rbx), %edx
	testl	%ecx, %ecx
	movl	%eax, 164(%rbx)
	movl	%edx, 156(%rbx)
	je	.L474
.L656:
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L475
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L475:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r8
	movl	156(%rbx), %eax
	movq	56(%r8), %r13
	movq	%r8, 8(%rsp)
	movq	%rax, 136(%rbx)
	movq	%r13, %rdi
	call	_tr_flush_bits
	movq	8(%rsp), %r8
	movl	40(%r13), %ecx
	movl	32(%r8), %eax
	cmpl	%ecx, %eax
	cmovbe	%eax, %ecx
	testl	%ecx, %ecx
	jne	.L663
.L477:
	movq	(%rbx), %rax
	movl	32(%rax), %r13d
	testl	%r13d, %r13d
	jne	.L479
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L647:
	subl	%esi, %edx
	addq	16(%rbx), %rsi
	movq	96(%r14), %rdi
	call	crc32
	movq	%rax, 96(%r14)
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L653:
	subl	%edi, %esi
	addq	16(%rbx), %rdi
	movl	%esi, %edx
	movq	%rdi, %rsi
	movq	96(%r14), %rdi
	call	crc32
	movq	%rax, 96(%r14)
	jmp	.L405
	.p2align 4,,10
	.p2align 3
.L624:
	movl	8(%rdi), %r10d
	testl	%r10d, %r10d
	je	.L357
.L356:
	movq	z_errmsg+32(%rip), %rax
	movq	%rax, 48(%rdi)
	movl	$-2, %eax
	jmp	.L608
	.p2align 4,,10
	.p2align 3
.L644:
	movl	%edi, %esi
	addq	16(%rbx), %rsi
	subl	%edi, %edx
	movq	96(%r14), %rdi
	call	crc32
	movq	%rax, 96(%r14)
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L491:
	andl	$-3, %eax
.L516:
	testl	%eax, %eax
	movl	$666, 8(%rbx)
	je	.L493
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L663:
	movq	24(%r8), %rdi
	movq	32(%r13), %rsi
	movl	%ecx, %r10d
	movq	%r10, %rdx
	movl	%ecx, 28(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	memcpy
	movq	16(%rsp), %r8
	movq	8(%rsp), %r10
	movl	28(%rsp), %ecx
	addq	%r10, 24(%r8)
	addq	%r10, 32(%r13)
	addq	%r10, 40(%r8)
	subl	%ecx, 32(%r8)
	subl	%ecx, 40(%r13)
	jne	.L477
	movq	16(%r13), %rax
	movq	%rax, 32(%r13)
	jmp	.L477
.L664:
	cmpl	$103, 8(%rbx)
	movl	%edi, %edx
	jne	.L413
	.p2align 4,,10
	.p2align 3
.L414:
	movl	$113, 8(%rbx)
	jmp	.L413
.L629:
	movq	48(%rbx), %rax
	jmp	.L521
.L628:
	movq	48(%rbx), %rax
	jmp	.L519
.L650:
	movl	156(%rbx), %edx
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L487
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L487:
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %rcx
	movl	156(%rbx), %eax
	movq	56(%rcx), %r15
	movq	%rcx, 8(%rsp)
	movq	%rax, 136(%rbx)
	movq	%r15, %rdi
	call	_tr_flush_bits
	movq	8(%rsp), %rcx
	movl	40(%r15), %r13d
	movl	32(%rcx), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	je	.L489
	movq	24(%rcx), %rdi
	movq	32(%r15), %rsi
	movl	%r13d, %r8d
	movq	%r8, %rdx
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r8
	addq	%r8, 24(%rcx)
	addq	%r8, 32(%r15)
	addq	%r8, 40(%rcx)
	subl	%r13d, 32(%rcx)
	subl	%r13d, 40(%r15)
	jne	.L489
	movq	16(%r15), %rax
	movq	%rax, 32(%r15)
	jmp	.L489
.L471:
	cmpl	$2, %edx
	ja	.L472
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L526:
	movl	$-2, %eax
	jmp	.L608
.L638:
	movq	24(%r14), %rdi
	movq	32(%r12), %rsi
	movl	%ebp, %r13d
	movq	%r13, %rdx
	call	memcpy
	addq	%r13, 24(%r14)
	addq	%r13, 32(%r12)
	addq	%r13, 40(%r14)
	subl	%ebp, 32(%r14)
	subl	%ebp, 40(%r12)
	jne	.L505
	movq	16(%r12), %rax
	movq	%rax, 32(%r12)
	jmp	.L505
.L508:
	movl	8(%rbx), %eax
	movl	%esi, %edx
	jmp	.L509
.L409:
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L664
	movl	8(%rbx), %eax
	movl	%edi, %edx
	jmp	.L402
.L646:
	movq	48(%rbx), %rax
	movl	56(%rbx), %ecx
	movl	32(%rax), %esi
	jmp	.L388
.L392:
	movl	$91, 8(%rbx)
	movl	%edi, %edx
	jmp	.L519
.L625:
	movq	z_errmsg+56(%rip), %rax
	movq	%rax, 48(%rdi)
	movl	$-5, %eax
	jmp	.L608
.L377:
	movl	$73, 8(%rbx)
	movl	40(%rbx), %edi
	jmp	.L517
.L655:
	movq	56(%r14), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	call	_tr_flush_bits
	movq	8(%rsp), %rcx
	movl	32(%r14), %eax
	movl	40(%rcx), %r15d
	cmpl	%r15d, %eax
	cmovbe	%eax, %r15d
	testl	%r15d, %r15d
	jne	.L665
.L417:
	movl	40(%rbx), %edx
	leal	2(%rdx), %eax
	cmpq	24(%rbx), %rax
	ja	.L413
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L637:
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movq	96(%r14), %rcx
	movb	%cl, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	96(%r14), %rdx
	shrq	$8, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	96(%r14), %rdx
	shrq	$16, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	96(%r14), %rdx
	shrq	$24, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movq	16(%r14), %rcx
	movb	%cl, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	16(%r14), %rdx
	shrq	$8, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	16(%r14), %rdx
	shrq	$16, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	16(%r14), %rdx
	shrq	$24, %rdx
	movb	%dl, (%rcx,%rax)
	jmp	.L503
.L652:
	movq	24(%r14), %rdi
	movq	32(%r13), %rsi
	movl	%ebp, %r15d
	movq	%r15, %rdx
	call	memcpy
	addq	%r15, 24(%r14)
	addq	%r15, 32(%r13)
	addq	%r15, 40(%r14)
	subl	%ebp, 32(%r14)
	subl	%ebp, 40(%r13)
	jne	.L616
	movq	16(%r13), %rax
	movq	%rax, 32(%r13)
.L616:
	movl	32(%r14), %eax
	jmp	.L500
.L641:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	crc32
	movq	%rax, 96(%r14)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$31, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$-117, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$8, (%rdx,%rax)
	movq	48(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L666
	movl	(%rcx), %r8d
	movl	40(%rbx), %esi
	movq	16(%rbx), %rdi
	testl	%r8d, %r8d
	setne	%dl
	cmpl	$1, 68(%rcx)
	leal	1(%rsi), %eax
	movl	%eax, 40(%rbx)
	sbbl	%eax, %eax
	notl	%eax
	andl	$2, %eax
	addl	%eax, %edx
	cmpq	$1, 24(%rcx)
	sbbl	%eax, %eax
	notl	%eax
	andl	$4, %eax
	addl	%eax, %edx
	cmpq	$1, 40(%rcx)
	sbbl	%eax, %eax
	notl	%eax
	andl	$8, %eax
	addl	%eax, %edx
	cmpq	$1, 56(%rcx)
	sbbl	%eax, %eax
	notl	%eax
	andl	$16, %eax
	addl	%edx, %eax
	movb	%al, (%rdi,%rsi)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movq	48(%rbx), %rcx
	movq	8(%rcx), %rcx
	movb	%cl, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	48(%rbx), %rdx
	movq	8(%rdx), %rdx
	shrq	$8, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	48(%rbx), %rdx
	movq	8(%rdx), %rdx
	shrq	$16, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	48(%rbx), %rdx
	movq	8(%rdx), %rdx
	shrq	$24, %rdx
	movb	%dl, (%rcx,%rax)
	movl	40(%rbx), %eax
	movl	180(%rbx), %ecx
	leal	1(%rax), %edx
	addq	16(%rbx), %rax
	cmpl	$9, %ecx
	movl	%edx, 40(%rbx)
	movl	$2, %edx
	je	.L369
	cmpl	$1, 184(%rbx)
	jg	.L534
	cmpl	$1, %ecx
	jle	.L534
	xorl	%edx, %edx
.L369:
	movb	%dl, (%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movq	48(%rbx), %rcx
	movl	20(%rcx), %ecx
	movb	%cl, (%rdx,%rax)
	movq	48(%rbx), %rax
	cmpq	$0, 24(%rax)
	je	.L370
	movl	40(%rbx), %edx
	movl	32(%rax), %eax
	movq	16(%rbx), %rcx
	leal	1(%rdx), %esi
	movl	%esi, 40(%rbx)
	movb	%al, (%rcx,%rdx)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rcx
	leal	1(%rax), %edx
	movl	%edx, 40(%rbx)
	movq	48(%rbx), %rdx
	movl	32(%rdx), %edx
	shrl	$8, %edx
	movb	%dl, (%rcx,%rax)
	movq	48(%rbx), %rax
.L370:
	movl	68(%rax), %edx
	testl	%edx, %edx
	jne	.L667
.L371:
	movl	$0, 56(%rbx)
	movl	$69, 8(%rbx)
	jmp	.L372
.L552:
	movl	$1, %eax
	jmp	.L608
.L649:
	movl	156(%rbx), %edx
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L481
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L481:
	movl	$1, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r15
	movl	156(%rbx), %eax
	movq	56(%r15), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r13d
	movl	32(%r15), %eax
	cmpl	%r13d, %eax
	cmovbe	%eax, %r13d
	testl	%r13d, %r13d
	jne	.L668
.L445:
	movq	(%rbx), %rax
	movl	32(%rax), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	jne	.L516
	xorl	%eax, %eax
	jmp	.L516
.L665:
	movq	32(%rcx), %rsi
	movq	24(%r14), %rdi
	movl	%r15d, %r8d
	movq	%r8, %rdx
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r8
	addq	%r8, 24(%r14)
	addq	%r8, 32(%rcx)
	addq	%r8, 40(%r14)
	subl	%r15d, 32(%r14)
	subl	%r15d, 40(%rcx)
	jne	.L417
	movq	16(%rcx), %rax
	movq	%rax, 32(%rcx)
	jmp	.L417
.L635:
	movl	156(%rbx), %edx
	movq	136(%rbx), %rax
	xorl	%esi, %esi
	subq	%rax, %rdx
	testq	%rax, %rax
	js	.L443
	movl	%eax, %eax
	addq	80(%rbx), %rax
	movq	%rax, %rsi
.L443:
	movl	$1, %ecx
	movq	%rbx, %rdi
	call	_tr_flush_block
	movq	(%rbx), %r13
	movl	156(%rbx), %eax
	movq	56(%r13), %rbp
	movq	%rax, 136(%rbx)
	movq	%rbp, %rdi
	call	_tr_flush_bits
	movl	40(%rbp), %r15d
	movl	32(%r13), %eax
	cmpl	%r15d, %eax
	cmovbe	%eax, %r15d
	testl	%r15d, %r15d
	je	.L445
	movq	24(%r13), %rdi
	movq	32(%rbp), %rsi
	movl	%r15d, %ecx
	movq	%rcx, %rdx
	movq	%rcx, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %rcx
	addq	%rcx, 24(%r13)
	addq	%rcx, 32(%rbp)
	addq	%rcx, 40(%r13)
	subl	%r15d, 32(%r13)
	subl	%r15d, 40(%rbp)
	jne	.L445
.L619:
	movq	16(%rbp), %rax
	movq	%rax, 32(%rbp)
	jmp	.L445
.L651:
	movq	%rbx, %rdi
	call	_tr_align
	jmp	.L497
.L668:
	movq	24(%r15), %rdi
	movq	32(%rbp), %rsi
	movl	%r13d, %ecx
	movq	%rcx, %rdx
	movq	%rcx, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %rcx
	addq	%rcx, 24(%r15)
	addq	%rcx, 32(%rbp)
	addq	%rcx, 40(%r15)
	subl	%r13d, 32(%r15)
	subl	%r13d, 40(%rbp)
	je	.L619
	jmp	.L445
.L667:
	movl	40(%rbx), %edx
	movq	16(%rbx), %rsi
	movq	96(%r14), %rdi
	call	crc32
	movq	%rax, 96(%r14)
	movq	48(%rbx), %rax
	jmp	.L371
.L524:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movl	$-2, %eax
	ret
.L636:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	24(%r15), %rdi
	movq	32(%r13), %rsi
	movl	%ecx, %r8d
	movq	%r8, %rdx
	movl	%ecx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy
	movq	8(%rsp), %r8
	movl	16(%rsp), %ecx
	addq	%r8, 24(%r15)
	addq	%r8, 32(%r13)
	addq	%r8, 40(%r15)
	subl	%ecx, 32(%r15)
	subl	%ecx, 40(%r13)
	jne	.L489
	movq	16(%r13), %rax
	movq	%rax, 32(%r13)
	jmp	.L489
.L662:
	addq	$7, %rdx
	jmp	.L462
.L657:
	addq	$2, %rdx
	jmp	.L462
.L661:
	addq	$6, %rdx
	jmp	.L462
.L660:
	addq	$5, %rdx
	jmp	.L462
.L659:
	addq	$4, %rdx
	jmp	.L462
.L658:
	addq	$3, %rdx
	jmp	.L462
.L666:
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$0, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$0, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$0, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$0, (%rdx,%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$0, (%rdx,%rax)
	movl	40(%rbx), %eax
	movl	180(%rbx), %ecx
	leal	1(%rax), %edx
	addq	16(%rbx), %rax
	cmpl	$9, %ecx
	movl	%edx, 40(%rbx)
	movl	$2, %edx
	je	.L363
	cmpl	$1, 184(%rbx)
	jg	.L528
	cmpl	$1, %ecx
	jle	.L528
	xorl	%edx, %edx
.L363:
	movb	%dl, (%rax)
	movl	40(%rbx), %eax
	movq	16(%rbx), %rdx
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rbx)
	movb	$3, (%rdx,%rax)
	movl	$113, %eax
	movl	$113, 8(%rbx)
	movl	40(%rbx), %edi
	jmp	.L364
.L534:
	movl	$4, %edx
	jmp	.L369
.L528:
	movl	$4, %edx
	jmp	.L363
	.cfi_endproc
.LFE35:
	.size	deflate, .-deflate
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%esi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	je	.L680
	movq	56(%rdi), %rbp
	testq	%rbp, %rbp
	je	.L680
	cmpl	$-1, %ebx
	je	.L679
	cmpl	$9, %ebx
	ja	.L680
.L683:
	cmpl	$4, %edx
	ja	.L680
	movslq	180(%rbp), %rax
	movq	%rax, %rcx
	salq	$4, %rax
	cmpl	%edx, 184(%rbp)
	movq	configuration_table+8(%rax), %rax
	je	.L685
.L672:
	xorl	%eax, %eax
	cmpq	$0, 16(%rdi)
	jne	.L686
.L673:
	cmpl	%ecx, %ebx
	je	.L676
	movl	%ebx, 180(%rbp)
	salq	$4, %rbx
	movzwl	configuration_table+2(%rbx), %esi
	movzwl	configuration_table+6(%rbx), %ecx
	movl	%esi, 176(%rbp)
	movzwl	configuration_table(%rbx), %esi
	movl	%ecx, 172(%rbp)
	movl	%esi, 188(%rbp)
	movzwl	configuration_table+4(%rbx), %esi
	movl	%esi, 192(%rbp)
.L676:
	movl	%edx, 184(%rbp)
.L670:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L679:
	.cfi_restore_state
	movl	$6, %ebx
	jmp	.L683
	.p2align 4,,10
	.p2align 3
.L685:
	movslq	%ebx, %rsi
	salq	$4, %rsi
	cmpq	%rax, configuration_table+8(%rsi)
	jne	.L672
	xorl	%eax, %eax
	jmp	.L673
	.p2align 4,,10
	.p2align 3
.L686:
	movl	$5, %esi
	movl	%edx, 12(%rsp)
	call	deflate
	cmpl	$-5, %eax
	movl	12(%rsp), %edx
	je	.L674
	movl	180(%rbp), %ecx
	jmp	.L673
	.p2align 4,,10
	.p2align 3
.L674:
	movl	40(%rbp), %ecx
	testl	%ecx, %ecx
	movl	180(%rbp), %ecx
	jne	.L673
	xorl	%eax, %eax
	jmp	.L673
	.p2align 4,,10
	.p2align 3
.L680:
	movl	$-2, %eax
	jmp	.L670
	.cfi_endproc
.LFE30:
	.size	deflateParams, .-deflateParams
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
.LFB36:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L696
	movq	56(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L696
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	8(%rdx), %ebp
	cmpl	$42, %ebp
	je	.L689
	leal	-69(%rbp), %eax
	andl	$-5, %eax
	je	.L689
	cmpl	$91, %ebp
	je	.L689
	cmpl	$103, %ebp
	setne	%cl
	cmpl	$113, %ebp
	setne	%al
	testb	%al, %cl
	je	.L689
	cmpl	$666, %ebp
	movl	$-2, %eax
	jne	.L688
	.p2align 4,,10
	.p2align 3
.L689:
	movq	16(%rdx), %rsi
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.L691
	movq	80(%rdi), %rdi
	call	*72(%rbx)
	movq	56(%rbx), %rdx
.L691:
	movq	104(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L692
	movq	80(%rbx), %rdi
	call	*72(%rbx)
	movq	56(%rbx), %rdx
.L692:
	movq	96(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L693
	movq	80(%rbx), %rdi
	call	*72(%rbx)
	movq	56(%rbx), %rdx
.L693:
	movq	80(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L694
	movq	80(%rbx), %rdi
	call	*72(%rbx)
	movq	56(%rbx), %rdx
.L694:
	movq	80(%rbx), %rdi
	movq	%rdx, %rsi
	call	*72(%rbx)
	xorl	%eax, %eax
	cmpl	$113, %ebp
	movq	$0, 56(%rbx)
	setne	%al
	leal	-3(%rax,%rax,2), %eax
.L688:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L696:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE36:
	.size	deflateEnd, .-deflateEnd
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
.LFB23:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.L744
	cmpb	$49, (%rax)
	jne	.L744
	cmpl	$112, 88(%rsp)
	jne	.L744
	testq	%rdi, %rdi
	movq	%rdi, %rbp
	je	.L733
	movq	64(%rdi), %rax
	movl	%esi, %r14d
	movl	%ecx, %r12d
	movl	%r8d, %r13d
	movl	%r9d, %r15d
	movq	$0, 48(%rdi)
	testq	%rax, %rax
	je	.L753
	cmpq	$0, 72(%rbp)
	je	.L754
.L729:
	cmpl	$-1, %r14d
	movl	$6, %ecx
	cmove	%ecx, %r14d
	testl	%r12d, %r12d
	js	.L755
	cmpl	$15, %r12d
	movl	$1, %ecx
	jg	.L756
.L732:
	leal	-1(%r13), %esi
	cmpl	$8, %esi
	ja	.L733
	cmpl	$8, %edx
	jne	.L733
	leal	-8(%r12), %edx
	cmpl	$7, %edx
	ja	.L733
	cmpl	$4, %r15d
	ja	.L733
	cmpl	$9, %r14d
	ja	.L733
	cmpl	$8, %r12d
	movl	%r12d, %r8d
	je	.L757
.L734:
	movl	%r8d, 12(%rsp)
	movl	%ecx, 8(%rsp)
	movl	$5936, %edx
	movq	80(%rbp), %rdi
	movl	$1, %esi
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L747
	movl	12(%rsp), %r8d
	movl	8(%rsp), %ecx
	movl	$-1431655765, %edx
	movq	%rax, 56(%rbp)
	movq	%rbp, (%rax)
	movq	$0, 48(%rax)
	movq	80(%rbp), %rdi
	movl	%r8d, 72(%rax)
	movl	$1, %r8d
	movl	%ecx, 44(%rax)
	movl	%r8d, %esi
	movl	%r12d, %ecx
	movl	%r8d, 8(%rsp)
	sall	%cl, %esi
	leal	7(%r13), %ecx
	movl	%esi, 68(%rax)
	leal	-1(%rsi), %eax
	movl	%ecx, 120(%rbx)
	movl	%eax, 76(%rbx)
	movl	%r8d, %eax
	sall	%cl, %eax
	movl	%eax, 116(%rbx)
	subl	$1, %eax
	movl	%eax, 124(%rbx)
	leal	9(%r13), %eax
	mull	%edx
	shrl	%edx
	movl	%edx, 128(%rbx)
	movl	$2, %edx
	call	*64(%rbp)
	movl	68(%rbx), %esi
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, 80(%rbx)
	call	*64(%rbp)
	movl	116(%rbx), %esi
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, 96(%rbx)
	call	*64(%rbp)
	movl	8(%rsp), %r8d
	leal	6(%r13), %ecx
	movl	$4, %edx
	movq	%rax, 104(%rbx)
	movq	$0, 5928(%rbx)
	movq	80(%rbp), %rdi
	movl	%r8d, %esi
	sall	%cl, %esi
	movl	%esi, 5880(%rbx)
	call	*64(%rbp)
	movl	5880(%rbx), %ecx
	cmpq	$0, 80(%rbx)
	movq	%rax, 16(%rbx)
	leaq	0(,%rcx,4), %rsi
	movq	%rcx, %rdx
	movq	%rsi, 24(%rbx)
	je	.L735
	cmpq	$0, 96(%rbx)
	je	.L735
	testq	%rax, %rax
	je	.L735
	cmpq	$0, 104(%rbx)
	je	.L735
	shrl	%edx
	movl	%r14d, 180(%rbx)
	movl	%r15d, 184(%rbx)
	leaq	(%rax,%rdx,2), %rdx
	movb	$8, 60(%rbx)
	movq	%rdx, 5888(%rbx)
	leaq	(%rcx,%rcx,2), %rdx
	addq	%rdx, %rax
	movq	%rax, 5872(%rbx)
	movq	56(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L733
	cmpq	$0, 64(%rbp)
	je	.L733
	cmpq	$0, 72(%rbp)
	je	.L733
	movq	16(%rbx), %rax
	movq	$0, 40(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 48(%rbp)
	movl	$2, 88(%rbp)
	movl	$0, 40(%rbx)
	movq	%rax, 32(%rbx)
	movl	44(%rbx), %eax
	testl	%eax, %eax
	js	.L758
	jne	.L739
	movl	$113, 8(%rbx)
.L741:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	adler32
.L742:
	movq	%rax, 96(%rbp)
	movq	%rbx, %rdi
	movl	$0, 64(%rbx)
	call	_tr_init
	movq	56(%rbp), %rbx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	68(%rbx), %eax
	movq	104(%rbx), %rdi
	addq	%rax, %rax
	movq	%rax, 88(%rbx)
	movl	116(%rbx), %eax
	subl	$1, %eax
	leaq	(%rax,%rax), %rdx
	movw	%cx, (%rdi,%rax,2)
	call	memset
	movslq	180(%rbx), %rax
	movl	$0, 156(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 164(%rbx)
	movl	$0, 5916(%rbx)
	movl	$2, 168(%rbx)
	movl	$2, 144(%rbx)
	movl	$0, 152(%rbx)
	salq	$4, %rax
	movl	$0, 112(%rbx)
	leaq	configuration_table(%rax), %rdx
	movzwl	configuration_table+2(%rax), %ecx
	movzwl	configuration_table(%rax), %eax
	movl	%eax, 188(%rbx)
	movzwl	4(%rdx), %eax
	movl	%ecx, 176(%rbx)
	movl	%eax, 192(%rbx)
	movzwl	6(%rdx), %eax
	movl	%eax, 172(%rbx)
	xorl	%eax, %eax
.L751:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L756:
	.cfi_restore_state
	subl	$16, %r12d
	movb	$2, %cl
	jmp	.L732
	.p2align 4,,10
	.p2align 3
.L758:
	negl	%eax
	movl	%eax, 44(%rbx)
.L739:
	cmpl	$2, %eax
	movl	$42, 8(%rbx)
	jne	.L741
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	crc32
	jmp	.L742
	.p2align 4,,10
	.p2align 3
.L755:
	negl	%r12d
	xorb	%cl, %cl
	jmp	.L732
	.p2align 4,,10
	.p2align 3
.L757:
	movl	$9, %r8d
	movb	$9, %r12b
	jmp	.L734
	.p2align 4,,10
	.p2align 3
.L753:
	cmpq	$0, 72(%rbp)
	movq	$zcalloc, 64(%rdi)
	movl	$zcalloc, %eax
	movq	$0, 80(%rdi)
	jne	.L729
	.p2align 4,,10
	.p2align 3
.L754:
	movq	$zcfree, 72(%rbp)
	jmp	.L729
	.p2align 4,,10
	.p2align 3
.L733:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$-2, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L744:
	.cfi_restore_state
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$-6, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L735:
	.cfi_restore_state
	movq	z_errmsg+48(%rip), %rax
	movl	$666, 8(%rbx)
	movq	%rbp, %rdi
	movq	%rax, 48(%rbp)
	call	deflateEnd
	movl	$-4, %eax
	jmp	.L751
	.p2align 4,,10
	.p2align 3
.L747:
	movl	$-4, %eax
	jmp	.L751
	.cfi_endproc
.LFE23:
	.size	deflateInit2_, .-deflateInit2_
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
.LFB22:
	.cfi_startproc
	testq	%rdx, %rdx
	je	.L775
	cmpb	$49, (%rdx)
	jne	.L775
	cmpl	$112, %ecx
	jne	.L775
	testq	%rdi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	je	.L765
	movq	64(%rdi), %rax
	movl	%esi, %r12d
	movq	$0, 48(%rdi)
	testq	%rax, %rax
	je	.L784
	cmpq	$0, 72(%rbp)
	je	.L785
.L763:
	cmpl	$-1, %r12d
	je	.L776
	cmpl	$9, %r12d
	ja	.L765
.L764:
	movq	80(%rbp), %rdi
	movl	$5936, %edx
	movl	$1, %esi
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L777
	movq	%rax, 56(%rbp)
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movl	$32768, %esi
	movq	%rbp, (%rax)
	movl	$1, 44(%rax)
	movq	$0, 48(%rax)
	movl	$15, 72(%rax)
	movl	$32768, 68(%rax)
	movl	$32767, 76(%rax)
	movl	$15, 120(%rax)
	movl	$32768, 116(%rax)
	movl	$32767, 124(%rax)
	movl	$5, 128(%rax)
	call	*64(%rbp)
	movl	68(%rbx), %esi
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, 80(%rbx)
	call	*64(%rbp)
	movl	116(%rbx), %esi
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, 96(%rbx)
	call	*64(%rbp)
	movl	$4, %edx
	movl	$16384, %esi
	movq	%rax, 104(%rbx)
	movq	$0, 5928(%rbx)
	movl	$16384, 5880(%rbx)
	movq	80(%rbp), %rdi
	call	*64(%rbp)
	movl	5880(%rbx), %ecx
	cmpq	$0, 80(%rbx)
	movq	%rax, 16(%rbx)
	leaq	0(,%rcx,4), %rsi
	movq	%rcx, %rdx
	movq	%rsi, 24(%rbx)
	je	.L766
	cmpq	$0, 96(%rbx)
	je	.L766
	testq	%rax, %rax
	je	.L766
	cmpq	$0, 104(%rbx)
	je	.L766
	shrl	%edx
	movl	%r12d, 180(%rbx)
	movl	$0, 184(%rbx)
	leaq	(%rax,%rdx,2), %rdx
	movb	$8, 60(%rbx)
	movq	%rdx, 5888(%rbx)
	leaq	(%rcx,%rcx,2), %rdx
	addq	%rdx, %rax
	movq	%rax, 5872(%rbx)
	movq	56(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L765
	cmpq	$0, 64(%rbp)
	je	.L765
	cmpq	$0, 72(%rbp)
	je	.L765
	movq	16(%rbx), %rax
	movq	$0, 40(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 48(%rbp)
	movl	$2, 88(%rbp)
	movl	$0, 40(%rbx)
	movq	%rax, 32(%rbx)
	movl	44(%rbx), %eax
	testl	%eax, %eax
	js	.L786
	jne	.L770
	movl	$113, 8(%rbx)
.L772:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	adler32
.L773:
	movq	%rax, 96(%rbp)
	movq	%rbx, %rdi
	movl	$0, 64(%rbx)
	call	_tr_init
	movq	56(%rbp), %rbx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	68(%rbx), %eax
	movq	104(%rbx), %rdi
	addq	%rax, %rax
	movq	%rax, 88(%rbx)
	movl	116(%rbx), %eax
	subl	$1, %eax
	leaq	(%rax,%rax), %rdx
	movw	%cx, (%rdi,%rax,2)
	call	memset
	movslq	180(%rbx), %rax
	movl	$0, 156(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 164(%rbx)
	movl	$0, 5916(%rbx)
	movl	$2, 168(%rbx)
	movl	$2, 144(%rbx)
	movl	$0, 152(%rbx)
	salq	$4, %rax
	movl	$0, 112(%rbx)
	leaq	configuration_table(%rax), %rdx
	movzwl	configuration_table+2(%rax), %ecx
	movzwl	configuration_table(%rax), %eax
	movl	%eax, 188(%rbx)
	movzwl	4(%rdx), %eax
	movl	%ecx, 176(%rbx)
	movl	%eax, 192(%rbx)
	movzwl	6(%rdx), %eax
	movl	%eax, 172(%rbx)
	xorl	%eax, %eax
.L781:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L786:
	.cfi_restore_state
	negl	%eax
	movl	%eax, 44(%rbx)
.L770:
	cmpl	$2, %eax
	movl	$42, 8(%rbx)
	jne	.L772
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	crc32
	jmp	.L773
	.p2align 4,,10
	.p2align 3
.L776:
	movl	$6, %r12d
	jmp	.L764
	.p2align 4,,10
	.p2align 3
.L784:
	cmpq	$0, 72(%rbp)
	movq	$zcalloc, 64(%rdi)
	movl	$zcalloc, %eax
	movq	$0, 80(%rdi)
	jne	.L763
	.p2align 4,,10
	.p2align 3
.L785:
	movq	$zcfree, 72(%rbp)
	jmp	.L763
	.p2align 4,,10
	.p2align 3
.L775:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	movl	$-6, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L765:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$-2, %eax
	jmp	.L781
	.p2align 4,,10
	.p2align 3
.L766:
	movq	z_errmsg+48(%rip), %rax
	movl	$666, 8(%rbx)
	movq	%rbp, %rdi
	movq	%rax, 48(%rbp)
	call	deflateEnd
	movl	$-4, %eax
	jmp	.L781
	.p2align 4,,10
	.p2align 3
.L777:
	movl	$-4, %eax
	jmp	.L781
	.cfi_endproc
.LFE22:
	.size	deflateInit_, .-deflateInit_
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
.LFB37:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L792
	testq	%rdi, %rdi
	je	.L792
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	56(%rsi), %r12
	testq	%r12, %r12
	je	.L793
	movq	(%rsi), %rax
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	40(%rsi), %rax
	movq	%rax, 40(%rdi)
	movq	48(%rsi), %rax
	movq	%rax, 48(%rdi)
	movq	56(%rsi), %rax
	movq	%rax, 56(%rdi)
	movq	64(%rsi), %rax
	movq	%rax, 64(%rdi)
	movq	72(%rsi), %rdx
	movq	%rdx, 72(%rdi)
	movq	80(%rsi), %rdi
	movq	%rdi, 80(%rbp)
	movq	88(%rsi), %rdx
	movq	%rdx, 88(%rbp)
	movq	96(%rsi), %rdx
	movq	%rdx, 96(%rbp)
	movq	104(%rsi), %rdx
	movl	$1, %esi
	movq	%rdx, 104(%rbp)
	movl	$5936, %edx
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L794
	movq	%rax, 56(%rbp)
	movq	(%r12), %rax
	leaq	8(%rbx), %rdi
	movq	%rbx, %rcx
	movq	%r12, %rsi
	movl	$2, %edx
	andq	$-8, %rdi
	movq	%rax, (%rbx)
	movq	5928(%r12), %rax
	subq	%rdi, %rcx
	subq	%rcx, %rsi
	addl	$5936, %ecx
	shrl	$3, %ecx
	movq	%rax, 5928(%rbx)
	rep movsq
	movq	%rbp, (%rbx)
	movl	68(%rbx), %esi
	movq	80(%rbp), %rdi
	call	*64(%rbp)
	movl	68(%rbx), %esi
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, 80(%rbx)
	call	*64(%rbp)
	movl	116(%rbx), %esi
	movq	80(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, 96(%rbx)
	call	*64(%rbp)
	movq	80(%rbp), %rdi
	movq	%rax, 104(%rbx)
	movl	$4, %edx
	movl	5880(%rbx), %esi
	call	*64(%rbp)
	movq	80(%rbx), %rdi
	movq	%rax, %r13
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	je	.L789
	cmpq	$0, 96(%rbx)
	je	.L789
	testq	%rax, %rax
	je	.L789
	cmpq	$0, 104(%rbx)
	je	.L789
	movl	68(%rbx), %eax
	movq	80(%r12), %rsi
	leal	(%rax,%rax), %edx
	call	memcpy
	movl	68(%rbx), %edx
	movq	96(%rbx), %rdi
	movq	96(%r12), %rsi
	addq	%rdx, %rdx
	call	memcpy
	movl	116(%rbx), %edx
	movq	104(%rbx), %rdi
	movq	104(%r12), %rsi
	addq	%rdx, %rdx
	call	memcpy
	movl	24(%rbx), %edx
	movq	16(%r12), %rsi
	movq	16(%rbx), %rdi
	call	memcpy
	movq	16(%rbx), %rsi
	movq	%rsi, %rdx
	addq	32(%r12), %rdx
	subq	16(%r12), %rdx
	movq	%rdx, 32(%rbx)
	movl	5880(%rbx), %edx
	movl	%edx, %ecx
	shrl	%ecx
	leaq	0(%r13,%rcx,2), %rax
	movq	%rax, 5888(%rbx)
	movl	%edx, %eax
	leaq	(%rax,%rax,2), %rax
	addq	%rsi, %rax
	movq	%rax, 5872(%rbx)
	leaq	196(%rbx), %rax
	movq	%rax, 2888(%rbx)
	leaq	2488(%rbx), %rax
	movq	%rax, 2912(%rbx)
	leaq	2732(%rbx), %rax
	movq	%rax, 2936(%rbx)
	xorl	%eax, %eax
.L788:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L792:
	movl	$-2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L789:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%rbp, %rdi
	call	deflateEnd
	movl	$-4, %eax
	jmp	.L788
	.p2align 4,,10
	.p2align 3
.L793:
	movl	$-2, %eax
	jmp	.L788
	.p2align 4,,10
	.p2align 3
.L794:
	movl	$-4, %eax
	jmp	.L788
	.cfi_endproc
.LFE37:
	.size	deflateCopy, .-deflateCopy
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.rodata
	.align 64
	.type	configuration_table, @object
	.size	configuration_table, 160
configuration_table:
	.value	0
	.value	0
	.value	0
	.value	0
	.quad	deflate_stored
	.value	4
	.value	4
	.value	8
	.value	4
	.quad	deflate_fast
	.value	4
	.value	5
	.value	16
	.value	8
	.quad	deflate_fast
	.value	4
	.value	6
	.value	32
	.value	32
	.quad	deflate_fast
	.value	4
	.value	4
	.value	16
	.value	16
	.quad	deflate_slow
	.value	8
	.value	16
	.value	32
	.value	32
	.quad	deflate_slow
	.value	8
	.value	16
	.value	128
	.value	128
	.quad	deflate_slow
	.value	8
	.value	32
	.value	128
	.value	256
	.quad	deflate_slow
	.value	32
	.value	128
	.value	258
	.value	1024
	.quad	deflate_slow
	.value	32
	.value	258
	.value	258
	.value	4096
	.quad	deflate_slow
	.globl	deflate_copyright
	.align 64
	.type	deflate_copyright, @object
	.size	deflate_copyright, 68
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.hidden	zcfree
	.hidden	zcalloc
	.hidden	_tr_align
	.hidden	_tr_stored_block
	.hidden	_tr_init
	.hidden	_tr_flush_bits
	.hidden	_tr_flush_block
	.hidden	_dist_code
	.hidden	_length_code
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
