	.file	"inflate.c"
	.text
	.p2align 4,,15
.globl inflateResetKeep
	.type	inflateResetKeep, @function
inflateResetKeep:
.LFB38:
	.cfi_startproc
	testq	%rdi, %rdi
	jne	.L7
.L2:
	movl	$-2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L2
	movl	8(%rax), %edx
	movq	$0, 32(%rax)
	movq	$0, 48(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 16(%rdi)
	testl	%edx, %edx
	je	.L3
	andl	$1, %edx
	movq	%rdx, 96(%rdi)
.L3:
	leaq	1360(%rax), %rdx
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$0, 12(%rax)
	movl	$32768, 20(%rax)
	movq	$0, 40(%rax)
	movq	$0, 72(%rax)
	movl	$0, 80(%rax)
	movq	%rdx, 136(%rax)
	movq	%rdx, 104(%rax)
	movq	%rdx, 96(%rax)
	movl	$1, 7136(%rax)
	movl	$-1, 7140(%rax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE38:
	.size	inflateResetKeep, .-inflateResetKeep
	.p2align 4,,15
.globl inflatePrime
	.type	inflatePrime, @function
inflatePrime:
.LFB43:
	.cfi_startproc
	testq	%rdi, %rdi
	jne	.L13
.L9:
	movl	$-2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L9
	testl	%esi, %esi
	.p2align 4,,4
	jns	.L10
	movq	$0, 72(%rax)
	movl	$0, 80(%rax)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	cmpl	$16, %esi
	.p2align 4,,2
	jg	.L9
	movl	80(%rax), %r8d
	leal	(%rsi,%r8), %ecx
	cmpl	$32, %ecx
	ja	.L9
	movl	%esi, %ecx
	movl	$1, %edi
	addl	%esi, 80(%rax)
	salq	%cl, %rdi
	movl	%r8d, %ecx
	subl	$1, %edi
	andl	%edx, %edi
	sall	%cl, %edi
	movslq	%edi,%rdi
	addq	%rdi, 72(%rax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE43:
	.size	inflatePrime, .-inflatePrime
	.p2align 4,,15
.globl inflateEnd
	.type	inflateEnd, @function
inflateEnd:
.LFB47:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	movq	%rdi, %rbx
	.cfi_offset 3, -16
	jne	.L19
.L15:
	movl	$-2, %eax
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movq	56(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L15
	movq	72(%rdi), %rax
	testq	%rax, %rax
	je	.L15
	movq	64(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L16
	movq	%rdx, %rsi
	movq	80(%rdi), %rdi
	call	*%rax
	movq	72(%rbx), %rax
	movq	56(%rbx), %rsi
.L16:
	movq	80(%rbx), %rdi
	call	*%rax
	movq	$0, 56(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	ret
	.cfi_endproc
.LFE47:
	.size	inflateEnd, .-inflateEnd
	.p2align 4,,15
.globl inflateGetHeader
	.type	inflateGetHeader, @function
inflateGetHeader:
.LFB50:
	.cfi_startproc
	testq	%rdi, %rdi
	jne	.L24
.L21:
	movl	$-2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L21
	testb	$2, 8(%rax)
	.p2align 4,,4
	je	.L21
	movq	%rsi, 40(%rax)
	movl	$0, 72(%rsi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE50:
	.size	inflateGetHeader, .-inflateGetHeader
	.p2align 4,,15
.globl inflateSyncPoint
	.type	inflateSyncPoint, @function
inflateSyncPoint:
.LFB53:
	.cfi_startproc
	testq	%rdi, %rdi
	jne	.L30
.L26:
	movl	$-2, %eax
.L28:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	movq	56(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L26
	xorl	%eax, %eax
	cmpl	$13, (%rdx)
	jne	.L28
	xorl	%eax, %eax
	movl	80(%rdx), %edx
	testl	%edx, %edx
	sete	%al
	ret
	.cfi_endproc
.LFE53:
	.size	inflateSyncPoint, .-inflateSyncPoint
	.p2align 4,,15
.globl inflateUndermine
	.type	inflateUndermine, @function
inflateUndermine:
.LFB55:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L32
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L32
	movl	$1, 7136(%rax)
	movl	$-3, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE55:
	.size	inflateUndermine, .-inflateUndermine
	.p2align 4,,15
.globl inflateMark
	.type	inflateMark, @function
inflateMark:
.LFB56:
	.cfi_startproc
	testq	%rdi, %rdi
	jne	.L42
.L36:
	movq	$-65536, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	movq	56(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L36
	movl	(%rdx), %ecx
	movl	7140(%rdx), %esi
	cmpl	$15, %ecx
	je	.L43
	xorl	%eax, %eax
	cmpl	$24, %ecx
	je	.L44
.L38:
	movslq	%esi,%rdx
	salq	$16, %rdx
	addq	%rdx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	mov	84(%rdx), %eax
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L44:
	movl	7144(%rdx), %eax
	subl	84(%rdx), %eax
	jmp	.L38
	.cfi_endproc
.LFE56:
	.size	inflateMark, .-inflateMark
	.p2align 4,,15
.globl inflateCopy
	.type	inflateCopy, @function
inflateCopy:
.LFB54:
	.cfi_startproc
	movq	%rbx, -40(%rsp)
	movq	%rbp, -32(%rsp)
	movq	%rsi, %rbx
	.cfi_offset 6, -40
	.cfi_offset 3, -48
	movq	%r12, -24(%rsp)
	movq	%r13, -16(%rsp)
	movq	%rdi, %rbp
	movq	%r14, -8(%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	jne	.L54
	.cfi_offset 14, -16
	.cfi_offset 13, -24
	.cfi_offset 12, -32
.L46:
	movl	$-2, %eax
.L48:
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	testq	%rdi, %rdi
	je	.L46
	movq	56(%rsi), %r12
	testq	%r12, %r12
	je	.L46
	movq	64(%rsi), %rax
	testq	%rax, %rax
	je	.L46
	cmpq	$0, 72(%rsi)
	je	.L46
	movq	80(%rsi), %rdi
	movl	$7152, %edx
	movl	$1, %esi
	call	*%rax
	movq	%rax, %r13
	movl	$-4, %eax
	testq	%r13, %r13
	je	.L48
	cmpq	$0, 64(%r12)
	je	.L49
	movl	48(%r12), %ecx
	movl	$1, %esi
	movq	80(%rbx), %rdi
	movl	$1, %edx
	sall	%cl, %esi
	call	*64(%rbx)
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L55
.L50:
	movl	$28, %ecx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	rep movsl
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	1360(%r12), %rdx
	movw	$894, %cx
	rep movsq
	movq	96(%r12), %rax
	cmpq	%rdx, %rax
	jb	.L51
	leaq	7132(%r12), %rcx
	cmpq	%rcx, %rax
	ja	.L51
	subq	%rdx, %rax
	sarq	$2, %rax
	leaq	1360(%r13,%rax,4), %rax
	movq	%rax, 96(%r13)
	movq	104(%r12), %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	leaq	1360(%r13,%rax,4), %rax
	movq	%rax, 104(%r13)
.L51:
	movq	136(%r12), %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	testq	%r14, %r14
	leaq	1360(%r13,%rax,4), %rax
	movq	%rax, 136(%r13)
	je	.L52
	movl	48(%r12), %edx
	movl	$1, %eax
	movq	64(%r12), %rsi
	movq	%r14, %rdi
	movl	%edx, %ecx
	sall	%cl, %eax
	movq	%rax, %rdx
	call	memcpy
.L52:
	movq	%r14, 64(%r13)
	movq	%r13, 56(%rbp)
	xorl	%eax, %eax
	jmp	.L48
.L55:
	movq	80(%rbx), %rdi
	movq	%r13, %rsi
	call	*72(%rbx)
	movl	$-4, %eax
	jmp	.L48
.L49:
	xorl	%r14d, %r14d
	.p2align 4,,3
	jmp	.L50
	.cfi_endproc
.LFE54:
	.size	inflateCopy, .-inflateCopy
	.p2align 4,,15
	.type	updatewindow, @function
updatewindow:
.LFB45:
	.cfi_startproc
	movq	%rbp, -24(%rsp)
	movq	%r12, -16(%rsp)
	movq	%rdi, %r8
	movq	%rbx, -32(%rsp)
	movq	%r13, -8(%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	56(%rdi), %rbx
	.cfi_offset 13, -16
	.cfi_offset 3, -40
	.cfi_offset 12, -24
	.cfi_offset 6, -32
	movq	%rsi, %r12
	movl	%edx, %ebp
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L65
.L57:
	movl	52(%rbx), %r13d
	testl	%r13d, %r13d
	je	.L66
	cmpl	%r13d, %ebp
	jae	.L67
.L60:
	mov	60(%rbx), %eax
	mov	%ebp, %esi
	subl	%eax, %r13d
	cmpl	%ebp, %r13d
	cmova	%ebp, %r13d
	addq	%rax, %rdi
	movq	%r12, %rax
	subq	%rsi, %rax
	mov	%r13d, %edx
	movq	%rax, %rsi
	call	memcpy
	subl	%r13d, %ebp
	jne	.L68
	movl	60(%rbx), %eax
	movl	52(%rbx), %edx
	addl	%r13d, %eax
	cmpl	%edx, %eax
	movl	%eax, 60(%rbx)
	je	.L69
	movl	56(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jae	.L58
.L70:
	addl	%ecx, %r13d
	movl	%r13d, 56(%rbx)
.L58:
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	movl	48(%rbx), %ecx
	movb	$1, %r13b
	movl	$0, 60(%rbx)
	movl	$0, 56(%rbx)
	movq	64(%rbx), %rdi
	sall	%cl, %r13d
	cmpl	%r13d, %ebp
	movl	%r13d, 52(%rbx)
	jb	.L60
.L67:
	mov	%r13d, %edx
	movq	%r12, %rsi
	subq	%rdx, %rsi
	call	memcpy
	movl	52(%rbx), %eax
	movl	$0, 60(%rbx)
	movl	%eax, 56(%rbx)
	xorl	%eax, %eax
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L69:
	movl	56(%rbx), %ecx
	xorl	%eax, %eax
	movl	$0, 60(%rbx)
	cmpl	%edx, %ecx
	jb	.L70
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L68:
	movq	64(%rbx), %rdi
	mov	%ebp, %edx
	movq	%r12, %rsi
	subq	%rdx, %rsi
	call	memcpy
	movl	52(%rbx), %eax
	movl	%ebp, 60(%rbx)
	movl	%eax, 56(%rbx)
	xorl	%eax, %eax
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L65:
	movl	48(%rbx), %ecx
	movl	$1, %esi
	movq	80(%r8), %rdi
	movl	$1, %edx
	sall	%cl, %esi
	call	*64(%r8)
	movq	%rax, %rdi
	movq	%rax, 64(%rbx)
	movl	$1, %eax
	testq	%rdi, %rdi
	jne	.L57
	jmp	.L58
	.cfi_endproc
.LFE45:
	.size	updatewindow, .-updatewindow
	.p2align 4,,15
.globl inflateGetDictionary
	.type	inflateGetDictionary, @function
inflateGetDictionary:
.LFB48:
	.cfi_startproc
	movq	%rbx, -24(%rsp)
	movq	%rbp, -16(%rsp)
	movq	%rdx, %rbx
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	movq	%r12, -8(%rsp)
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	movq	%rsi, %rbp
	jne	.L77
	.cfi_offset 12, -16
.L72:
	movl	$-2, %eax
.L75:
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	movq	56(%rdi), %r12
	testq	%r12, %r12
	je	.L72
	testq	%rsi, %rsi
	movl	56(%r12), %edx
	jne	.L78
.L73:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L75
	movl	56(%r12), %eax
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L78:
	testl	%edx, %edx
	je	.L73
	mov	60(%r12), %esi
	movq	%rbp, %rdi
	subl	%esi, %edx
	addq	64(%r12), %rsi
	call	memcpy
	mov	60(%r12), %edx
	mov	56(%r12), %edi
	movq	64(%r12), %rsi
	subq	%rdx, %rdi
	leaq	(%rbp,%rdi), %rdi
	call	memcpy
	jmp	.L73
	.cfi_endproc
.LFE48:
	.size	inflateGetDictionary, .-inflateGetDictionary
	.p2align 4,,15
.globl inflateSetDictionary
	.type	inflateSetDictionary, @function
inflateSetDictionary:
.LFB49:
	.cfi_startproc
	movq	%rbx, -32(%rsp)
	movq	%rbp, -24(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -32
	.cfi_offset 3, -40
	movq	%r12, -16(%rsp)
	movq	%r13, -8(%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	movq	%rsi, %r12
	.cfi_offset 13, -16
	.cfi_offset 12, -24
	movl	%edx, %ebp
	jne	.L87
.L80:
	movl	$-2, %eax
.L84:
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	movq	56(%rdi), %r13
	testq	%r13, %r13
	je	.L80
	movl	8(%r13), %ecx
	testl	%ecx, %ecx
	jne	.L88
	cmpl	$10, (%r13)
	je	.L82
.L83:
	mov	%ebp, %esi
	movl	%ebp, %edx
	movq	%rbx, %rdi
	leaq	(%r12,%rsi), %rsi
	call	updatewindow
	testl	%eax, %eax
	jne	.L89
	movl	$1, 12(%r13)
	xorl	%eax, %eax
	jmp	.L84
.L88:
	cmpl	$10, (%r13)
	.p2align 4,,3
	jne	.L80
.L82:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	adler32
	movl	%ebp, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	adler32
	movq	%rax, %rdx
	cmpq	24(%r13), %rdx
	movl	$-3, %eax
	jne	.L84
	jmp	.L83
.L89:
	movl	$30, (%r13)
	movl	$-4, %eax
	jmp	.L84
	.cfi_endproc
.LFE49:
	.size	inflateSetDictionary, .-inflateSetDictionary
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"incorrect header check"
.LC1:
	.string	"unknown compression method"
.LC2:
	.string	"invalid window size"
.LC3:
	.string	"unknown header flags set"
.LC4:
	.string	"header crc mismatch"
.LC5:
	.string	"invalid block type"
.LC6:
	.string	"invalid stored block lengths"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"too many length or distance symbols"
	.section	.rodata.str1.1
.LC8:
	.string	"invalid code lengths set"
.LC9:
	.string	"invalid bit length repeat"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"invalid code -- missing end-of-block"
	.section	.rodata.str1.1
.LC11:
	.string	"invalid literal/lengths set"
.LC12:
	.string	"invalid distances set"
.LC13:
	.string	"invalid literal/length code"
.LC14:
	.string	"invalid distance code"
.LC15:
	.string	"invalid distance too far back"
.LC16:
	.string	"incorrect data check"
.LC17:
	.string	"incorrect length check"
	.text
	.p2align 4,,15
.globl inflate
	.type	inflate, @function
inflate:
.LFB46:
	.cfi_startproc
	movq	%rbx, -48(%rsp)
	movq	%rbp, -40(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -48
	.cfi_offset 3, -56
	movq	%r12, -32(%rsp)
	movq	%r13, -24(%rsp)
	movl	%esi, %ebp
	movq	%r14, -16(%rsp)
	movq	%r15, -8(%rsp)
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	testq	%rdi, %rdi
	jne	.L439
	.cfi_offset 15, -16
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
.L91:
	movl	$-2, %r14d
.L128:
	movl	%r14d, %eax
	movq	168(%rsp), %rbx
	movq	176(%rsp), %rbp
	movq	184(%rsp), %r12
	movq	192(%rsp), %r13
	movq	200(%rsp), %r14
	movq	208(%rsp), %r15
	addq	$216, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L439:
	movq	56(%rdi), %r12
	testq	%r12, %r12
	je	.L91
	movq	24(%rdi), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 48(%rsp)
	je	.L91
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	movq	%rcx, %r15
	je	.L440
.L92:
	movl	(%r12), %eax
	cmpl	$11, %eax
	je	.L441
.L93:
	movl	32(%rbx), %edx
	movl	8(%rbx), %ecx
	leaq	784(%r12), %r9
	leal	-5(%rbp), %esi
	leaq	1360(%r12), %rdi
	movq	72(%r12), %r11
	movq	%r9, 80(%rsp)
	movl	80(%r12), %r13d
	xorl	%r14d, %r14d
	movl	%edx, 44(%rsp)
	movl	%ecx, 60(%rsp)
	leaq	112(%r12), %rdx
	movl	60(%rsp), %r10d
	movl	44(%rsp), %r9d
	leaq	136(%r12), %rcx
	movl	%esi, 92(%rsp)
	movq	%rdi, 64(%rsp)
	leaq	144(%r12), %rsi
	leaq	116(%r12), %rdi
	movl	%r14d, %r8d
	movq	%rdx, 104(%rsp)
	movq	%rbx, %r14
	movq	%rcx, 72(%rsp)
	movl	%r10d, %ebx
	movq	%rsi, 96(%rsp)
	movl	%ebp, %r10d
	movq	%rdi, 112(%rsp)
	movl	%r9d, 56(%rsp)
	movq	%r11, %rbp
.L94:
	cmpl	$30, %eax
	ja	.L91
	mov	%eax, %eax
	jmp	*.L126(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L126:
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.quad	.L98
	.quad	.L336
	.quad	.L337
	.quad	.L338
	.quad	.L339
	.quad	.L340
	.quad	.L104
	.quad	.L105
	.quad	.L106
	.quad	.L107
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.quad	.L112
	.quad	.L113
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L117
	.quad	.L118
	.quad	.L119
	.quad	.L120
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.quad	.L437
	.text
.L107:
	movl	4(%r12), %r9d
	testl	%r9d, %r9d
	jne	.L206
	cmpl	$2, %r13d
	.p2align 4,,3
	ja	.L207
	testl	%ebx, %ebx
	.p2align 4,,3
	je	.L436
	movzbl	(%r15), %eax
	movl	%r13d, %ecx
	subl	$1, %ebx
	addq	$1, %r15
	addl	$8, %r13d
	salq	%cl, %rax
	addq	%rax, %rbp
.L207:
	movl	%ebp, %eax
	leal	-1(%r13), %ecx
	andl	$1, %eax
	movl	%eax, 4(%r12)
	movq	%rbp, %rax
	shrq	%rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	je	.L211
	cmpl	$3, %edx
	je	.L212
	cmpl	$1, %edx
	je	.L210
	movl	$13, (%r12)
.L213:
	movq	%rax, %rbp
	leal	-2(%rcx), %r13d
	shrq	$2, %rbp
	.p2align 4,,10
	.p2align 3
.L143:
	movl	(%r12), %eax
	jmp	.L94
.L104:
	cmpl	$31, %r13d
	ja	.L136
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L204:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L351:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$31, %ecx
	jbe	.L204
.L136:
	movq	%rbp, %rax
	movq	%rbp, %rdx
	movl	$10, (%r12)
	shrq	$8, %rax
	shrq	$24, %rdx
	xorl	%r13d, %r13d
	andl	$65280, %eax
	andl	$255, %edx
	leaq	(%rax,%rdx), %rdx
	movq	%rbp, %rax
	salq	$24, %rbp
	andl	$65280, %eax
	andl	$4294967295, %ebp
	salq	$8, %rax
	leaq	(%rdx,%rax), %rax
	addq	%rbp, %rax
	xorl	%ebp, %ebp
	movq	%rax, 24(%r12)
	movq	%rax, 96(%r14)
.L105:
	movl	12(%r12), %r11d
	testl	%r11d, %r11d
	je	.L442
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	adler32
	movl	8(%rsp), %r10d
	movl	16(%rsp), %r8d
	movq	%rax, 24(%r12)
	movl	$11, (%r12)
	movq	%rax, 96(%r14)
.L106:
	cmpl	$1, 92(%rsp)
	ja	.L107
	.p2align 4,,10
	.p2align 3
.L436:
	movq	%rbp, %r11
	movl	%r10d, %ebp
	movl	%ebx, %r10d
	movq	%r14, %rbx
	movl	%r8d, %r14d
.L127:
	movq	48(%rsp), %r9
	movl	44(%rsp), %eax
	movl	%r10d, 8(%rbx)
	movq	%r15, (%rbx)
	movq	%r11, 72(%r12)
	movl	%eax, 32(%rbx)
	movq	%r9, 24(%rbx)
	movl	52(%r12), %r9d
	movl	%r13d, 80(%r12)
	testl	%r9d, %r9d
	jne	.L443
	movl	32(%rbx), %r13d
	cmpl	56(%rsp), %r13d
	je	.L316
	movl	(%r12), %eax
	cmpl	$28, %eax
	ja	.L316
	cmpl	$4, %ebp
	jne	.L315
	cmpl	$25, %eax
	.p2align 4,,3
	ja	.L316
	.p2align 4,,10
	.p2align 3
.L315:
	movl	56(%rsp), %edx
	movq	24(%rbx), %rsi
	movq	%rbx, %rdi
	subl	%r13d, %edx
	call	updatewindow
	testl	%eax, %eax
	jne	.L318
	movl	32(%rbx), %r13d
.L316:
	movl	60(%rsp), %r15d
	movl	56(%rsp), %edx
	subl	8(%rbx), %r15d
	subl	%r13d, %edx
	mov	%edx, %esi
	addq	%rsi, 40(%rbx)
	movl	%edx, %r13d
	mov	%r15d, %eax
	addq	%rax, 16(%rbx)
	addq	%rsi, 32(%r12)
	testl	%edx, %edx
	je	.L319
	movl	8(%r12), %r8d
	testl	%r8d, %r8d
	je	.L319
	movl	16(%r12), %edi
	testl	%edi, %edi
	je	.L320
	negq	%rsi
	addq	24(%rbx), %rsi
	movq	24(%r12), %rdi
	call	crc32
.L321:
	movq	%rax, 24(%r12)
	movq	%rax, 96(%rbx)
.L319:
	cmpl	$1, 4(%r12)
	movl	(%r12), %edx
	sbbl	%eax, %eax
	notl	%eax
	andl	$64, %eax
	addl	80(%r12), %eax
	cmpl	$11, %edx
	je	.L324
	cmpl	$14, %edx
	jne	.L444
.L334:
	movl	$256, %edx
.L327:
	addl	%edx, %eax
	testl	%r13d, %r13d
	movl	%eax, 88(%rbx)
	jne	.L329
	testl	%r15d, %r15d
	jne	.L329
.L335:
	testl	%r14d, %r14d
	movl	$-5, %eax
	cmove	%eax, %r14d
	jmp	.L128
.L108:
	movl	%r13d, %ecx
	andl	$-8, %r13d
	andl	$7, %ecx
	shrq	%cl, %rbp
	cmpl	$31, %r13d
	ja	.L214
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L216:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L359:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$31, %ecx
	jbe	.L216
	movl	%ecx, %r13d
.L214:
	movq	%rbp, %rax
	movzwq	%bp,%rdx
	shrq	$16, %rax
	xorq	$65535, %rax
	cmpq	%rax, %rdx
	jne	.L445
	cmpl	$6, %r10d
	movl	%edx, 84(%r12)
	movl	$14, (%r12)
	je	.L446
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
.L109:
	movl	$15, (%r12)
.L110:
	movl	84(%r12), %eax
	testl	%eax, %eax
	je	.L434
	cmpl	%eax, 44(%rsp)
	movl	%ebx, %ecx
	cmovbe	44(%rsp), %eax
	cmpl	%ebx, %eax
	cmovbe	%eax, %ecx
	testl	%ecx, %ecx
	je	.L436
	movq	48(%rsp), %rdi
	mov	%ecx, %r9d
	movq	%r15, %rsi
	movq	%r9, %rdx
	movl	%ecx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%r9, 32(%rsp)
	movl	%r10d, 8(%rsp)
	call	memcpy
	movl	24(%rsp), %ecx
	movq	32(%rsp), %r9
	subl	%ecx, 44(%rsp)
	addq	%r9, 48(%rsp)
	subl	%ecx, %ebx
	addq	%r9, %r15
	subl	%ecx, 84(%r12)
	movl	16(%rsp), %r8d
	movl	8(%rsp), %r10d
	jmp	.L143
.L116:
	movl	92(%r12), %edx
.L130:
	testl	%edx, %edx
	jne	.L267
	movl	84(%r12), %eax
.L268:
	movl	%eax, 7144(%r12)
	movl	$22, (%r12)
.L117:
	movl	116(%r12), %ecx
	movl	$1, %r11d
	movq	104(%r12), %rdi
	movl	%ebp, %eax
	movl	%ebp, %edx
	sall	%cl, %r11d
	subl	$1, %r11d
	andl	%r11d, %eax
	leaq	(%rdi,%rax,4), %rax
	movzbl	1(%rax), %ecx
	movzbl	(%rax), %esi
	movzwl	2(%rax), %r9d
	movzbl	%cl, %eax
	cmpl	%eax, %r13d
	jae	.L272
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	jmp	.L369
	.p2align 4,,10
	.p2align 3
.L274:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L369:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	movl	%ebp, %eax
	movl	%ebp, %edx
	andl	%r11d, %eax
	leaq	(%rdi,%rax,4), %rax
	movzbl	1(%rax), %r13d
	movzbl	(%rax), %esi
	movzwl	2(%rax), %r9d
	movzbl	%r13b, %eax
	cmpl	%ecx, %eax
	ja	.L274
	movl	%ecx, %r11d
	movl	%r13d, %ecx
	movl	%r11d, %r13d
.L272:
	movzbl	%sil, %r11d
	movl	%eax, 132(%rsp)
	movl	%r11d, 120(%rsp)
	testb	$-16, 120(%rsp)
	je	.L275
	movl	7140(%r12), %r11d
	movzbl	%cl, %edx
.L276:
	movl	%edx, %ecx
	subl	132(%rsp), %r13d
	addl	%r11d, %edx
	shrq	%cl, %rbp
	testb	$64, 120(%rsp)
	movl	%edx, 7140(%r12)
	jne	.L447
	movzwl	%r9w, %r9d
	andl	$15, %esi
	movl	$23, (%r12)
	movl	%r9d, 88(%r12)
	movl	%esi, 92(%r12)
.L129:
	testl	%esi, %esi
	je	.L281
	cmpl	%esi, %r13d
	jae	.L282
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L284:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L371:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	%esi, %ecx
	jb	.L284
	movl	%ecx, %r13d
.L282:
	movl	%esi, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	92(%r12), %ecx
	addl	%ecx, 7140(%r12)
	subl	$1, %eax
	andl	%ebp, %eax
	addl	%eax, 88(%r12)
	shrq	%cl, %rbp
	subl	%ecx, %r13d
.L281:
	movl	$24, (%r12)
.L119:
	movl	44(%rsp), %edi
	testl	%edi, %edi
	je	.L436
	movl	56(%rsp), %ecx
	subl	44(%rsp), %ecx
	movl	88(%r12), %eax
	cmpl	%eax, %ecx
	jae	.L285
	subl	%ecx, %eax
	cmpl	56(%r12), %eax
	movl	%eax, %ecx
	jbe	.L286
	cmpl	$0, 7136(%r12)
	je	.L286
	movq	$.LC15, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L248:
	cmpl	$29, (%r12)
	je	.L143
	cmpw	$0, 656(%r12)
	je	.L448
	movq	64(%rsp), %rdi
	movq	104(%rsp), %r8
	movl	%r11d, %edx
	movq	80(%rsp), %r9
	movq	72(%rsp), %rcx
	movq	96(%rsp), %rsi
	movl	$9, 112(%r12)
	movq	%rdi, 136(%r12)
	movq	%rdi, 96(%r12)
	movl	$1, %edi
	movl	%r10d, 8(%rsp)
	call	inflate_table
	testl	%eax, %eax
	movl	%eax, %r8d
	movl	8(%rsp), %r10d
	jne	.L449
	movq	136(%r12), %rax
	movq	112(%rsp), %r8
	movl	$2, %edi
	movl	128(%r12), %edx
	movq	80(%rsp), %r9
	movq	72(%rsp), %rcx
	movl	$6, 116(%r12)
	movq	%rax, 104(%r12)
	mov	124(%r12), %eax
	movl	%r10d, 8(%rsp)
	leaq	144(%r12,%rax,2), %rsi
	call	inflate_table
	testl	%eax, %eax
	movl	%eax, %r8d
	movl	8(%rsp), %r10d
	jne	.L450
	cmpl	$6, %r10d
	movl	$19, (%r12)
	je	.L436
.L114:
	movl	$20, (%r12)
.L115:
	cmpl	$5, %ebx
	ja	.L451
.L254:
	movl	112(%r12), %ecx
	movl	$1, %r11d
	movq	96(%r12), %rdi
	movl	%ebp, %eax
	movl	$0, 7140(%r12)
	movl	%ebp, %edx
	sall	%cl, %r11d
	subl	$1, %r11d
	andl	%r11d, %eax
	leaq	(%rdi,%rax,4), %rax
	movzbl	1(%rax), %ecx
	movzbl	(%rax), %esi
	movzwl	2(%rax), %r9d
	movzbl	%cl, %eax
	cmpl	%eax, %r13d
	jae	.L255
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L257:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L366:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	movl	%ebp, %eax
	movl	%ebp, %edx
	andl	%r11d, %eax
	leaq	(%rdi,%rax,4), %rax
	movzbl	1(%rax), %r13d
	movzbl	(%rax), %esi
	movzwl	2(%rax), %r9d
	movzbl	%r13b, %eax
	cmpl	%ecx, %eax
	ja	.L257
	movl	%ecx, %r11d
	movl	%r13d, %ecx
	movl	%r11d, %r13d
.L255:
	testb	%sil, %sil
	jne	.L258
	movzbl	%cl, %ecx
	movzwl	%r9w, %r9d
	subl	%eax, %r13d
	shrq	%cl, %rbp
	movl	%ecx, 7140(%r12)
	movl	%r9d, 84(%r12)
.L259:
	movl	$25, (%r12)
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L121:
	movl	8(%r12), %edx
	testl	%edx, %edx
	je	.L299
	cmpl	$31, %r13d
	ja	.L300
	testl	%ebx, %ebx
	.p2align 4,,3
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L372
.L302:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L372:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$31, %ecx
	jbe	.L302
	movl	%ecx, %r13d
.L300:
	movl	56(%rsp), %edx
	subl	44(%rsp), %edx
	mov	%edx, %esi
	addq	%rsi, 40(%r14)
	addq	%rsi, 32(%r12)
	testl	%edx, %edx
	je	.L303
	cmpl	$0, 16(%r12)
	je	.L304
	movq	48(%rsp), %rax
	movq	24(%r12), %rdi
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	subq	%rsi, %rax
	movq	%rax, %rsi
	call	crc32
	movl	16(%rsp), %r8d
	movl	8(%rsp), %r10d
.L305:
	movq	%rax, 24(%r12)
	movq	%rax, 96(%r14)
.L303:
	cmpl	$0, 16(%r12)
	movq	%rbp, %rax
	jne	.L307
	movq	%rbp, %rdx
	shrq	$8, %rax
	shrq	$24, %rdx
	andl	$65280, %eax
	andl	$255, %edx
	leaq	(%rax,%rdx), %rdx
	movq	%rbp, %rax
	andl	$65280, %eax
	salq	$8, %rax
	addq	%rax, %rdx
	movq	%rbp, %rax
	salq	$24, %rax
	andl	$4294967295, %eax
	leaq	(%rdx,%rax), %rax
.L307:
	cmpq	24(%r12), %rax
	jne	.L452
	movl	44(%rsp), %edi
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movl	%edi, 56(%rsp)
.L299:
	movl	$27, (%r12)
.L122:
	movl	8(%r12), %eax
	testl	%eax, %eax
	je	.L429
	movl	16(%r12), %r11d
	testl	%r11d, %r11d
	je	.L429
	cmpl	$31, %r13d
	ja	.L310
	testl	%ebx, %ebx
	.p2align 4,,3
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L312:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L373:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$31, %ecx
	jbe	.L312
	movl	%ecx, %r13d
.L310:
	mov	32(%r12), %eax
	cmpq	%rbp, %rax
	je	.L313
	movq	$.LC17, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L318:
	movl	$30, (%r12)
.L437:
	movl	$-4, %r14d
	jmp	.L128
.L111:
	cmpl	$13, %r13d
	ja	.L134
	testl	%ebx, %ebx
	.p2align 4,,3
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L220:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L350:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$13, %ecx
	jbe	.L220
	movl	%ecx, %r13d
.L134:
	movl	%ebp, %edx
	movq	%rbp, %rax
	movq	%rbp, %rcx
	andl	$31, %edx
	shrq	$5, %rax
	shrq	$10, %rcx
	addl	$257, %edx
	andl	$31, %eax
	andl	$15, %ecx
	addl	$1, %eax
	addl	$4, %ecx
	shrq	$14, %rbp
	subl	$14, %r13d
	cmpl	$286, %edx
	movl	%edx, 124(%r12)
	movl	%eax, 128(%r12)
	movl	%ecx, 120(%r12)
	ja	.L221
	cmpl	$30, %eax
	ja	.L221
	movl	$0, 132(%r12)
	movl	$17, (%r12)
	xorl	%eax, %eax
	movl	%r13d, %ecx
	jmp	.L349
.L98:
	cmpl	$15, %r13d
	ja	.L166
.L165:
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L168:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L355:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$15, %ecx
	jbe	.L168
.L166:
	movq	40(%r12), %rax
	testq	%rax, %rax
	je	.L169
	movl	%ebp, %edx
	andl	$255, %edx
	movl	%edx, 16(%rax)
	movq	%rbp, %rdx
	shrq	$8, %rdx
	movl	%edx, 20(%rax)
.L169:
	movl	16(%r12), %eax
	testb	$2, %ah
	jne	.L453
.L170:
	movl	$4, (%r12)
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
.L99:
	testb	$4, %ah
	je	.L171
	cmpl	$15, %r13d
	ja	.L172
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L174:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L356:
	movzbl	(%r15), %edx
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	addl	$8, %ecx
	addq	%rdx, %rbp
	cmpl	$15, %ecx
	jbe	.L174
.L172:
	movq	40(%r12), %rdx
	movl	%ebp, 84(%r12)
	testq	%rdx, %rdx
	je	.L175
	movl	%ebp, 32(%rdx)
	movl	16(%r12), %eax
.L175:
	testb	$2, %ah
	jne	.L176
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
.L177:
	movl	$5, (%r12)
	jmp	.L100
.L96:
	cmpl	$15, %r13d
	ja	.L138
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L352
	.p2align 4,,10
	.p2align 3
.L154:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L352:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$15, %ecx
	jbe	.L154
	movl	%ecx, %r13d
.L138:
	cmpb	$8, %bpl
	movl	%ebp, %eax
	movl	%ebp, 16(%r12)
	jne	.L433
	testw	$-8192, %ax
	jne	.L454
	movq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	.L157
	movq	%rbp, %rax
	shrq	$8, %rax
	andl	$1, %eax
	movl	%eax, (%rdx)
	movl	16(%r12), %eax
.L157:
	testb	$2, %ah
	je	.L158
	movb	%bpl, 144(%rsp)
	shrq	$8, %rbp
	leaq	144(%rsp), %rsi
	movb	%bpl, 145(%rsp)
	movq	24(%r12), %rdi
	movl	$2, %edx
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	crc32
	movl	8(%rsp), %r10d
	movl	16(%rsp), %r8d
	movq	%rax, 24(%r12)
.L158:
	movl	$2, (%r12)
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	.L159
.L97:
	cmpl	$31, %r13d
	ja	.L160
.L159:
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L162:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L354:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$31, %ecx
	jbe	.L162
.L160:
	movq	40(%r12), %rax
	testq	%rax, %rax
	je	.L163
	movq	%rbp, 8(%rax)
.L163:
	testb	$2, 17(%r12)
	jne	.L455
.L164:
	movl	$3, (%r12)
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	.L165
.L118:
	movl	92(%r12), %esi
	jmp	.L129
.L124:
	movq	%rbp, %r11
	movl	%r10d, %ebp
	movl	%ebx, %r10d
	movq	%r14, %rbx
	movl	$-3, %r14d
	jmp	.L127
.L95:
	movl	8(%r12), %edx
	testl	%edx, %edx
	je	.L140
	cmpl	$15, %r13d
	ja	.L141
	testl	%ebx, %ebx
	.p2align 4,,3
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L144:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L353:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	$15, %ecx
	jbe	.L144
	movl	%ecx, %r13d
.L141:
	cmpq	$35615, %rbp
	je	.L456
.L145:
	movq	40(%r12), %rax
	movl	$0, 16(%r12)
	testq	%rax, %rax
	je	.L146
	movl	$-1, 72(%rax)
	movl	8(%r12), %edx
.L146:
	andb	$1, %dl
	je	.L147
	movl	%ebp, %edx
	movq	%rbp, %rax
	movl	$31, %esi
	sall	$8, %edx
	shrq	$8, %rax
	movl	%ebp, %ecx
	andl	$65280, %edx
	leaq	(%rdx,%rax), %rax
	xorl	%edx, %edx
	divq	%rsi
	testq	%rdx, %rdx
	jne	.L147
	andl	$15, %ecx
	cmpl	$8, %ecx
	je	.L149
.L433:
	movq	$.LC1, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L113:
	movl	132(%r12), %r9d
.L131:
	movl	124(%r12), %r11d
	movl	128(%r12), %edi
	addl	%r11d, %edi
	movl	%edi, 120(%rsp)
.L228:
	cmpl	%r9d, 120(%rsp)
	jbe	.L248
	movl	112(%r12), %ecx
	movl	$1, %edi
	movq	96(%r12), %rsi
	movl	%ebp, %eax
	sall	%cl, %edi
	subl	$1, %edi
	andl	%edi, %eax
	leaq	(%rsi,%rax,4), %rax
	movzbl	1(%rax), %ecx
	movzwl	2(%rax), %edx
	movzbl	%cl, %eax
	cmpl	%eax, %r13d
	jae	.L249
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L230:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L361:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	movl	%ebp, %eax
	andl	%edi, %eax
	leaq	(%rsi,%rax,4), %rax
	movzbl	1(%rax), %r13d
	movzwl	2(%rax), %edx
	movzbl	%r13b, %eax
	cmpl	%ecx, %eax
	ja	.L230
	movl	%ecx, %esi
	movl	%r13d, %ecx
	movl	%esi, %r13d
.L249:
	cmpw	$15, %dx
	ja	.L231
	subl	%eax, %r13d
	mov	%r9d, %eax
	addl	$1, %r9d
	shrq	%cl, %rbp
	movw	%dx, 144(%r12,%rax,2)
	movl	%r9d, 132(%r12)
.L232:
	movl	132(%r12), %r9d
	jmp	.L228
.L112:
	movl	132(%r12), %eax
	cmpl	120(%r12), %eax
	movl	%r13d, %ecx
	jae	.L133
.L349:
	cmpl	$2, %ecx
	ja	.L223
	testl	%ebx, %ebx
	je	.L431
	movzbl	(%r15), %edx
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	addl	$8, %ecx
	addq	%rdx, %rbp
.L223:
	mov	%eax, %edx
	movl	%ebp, %esi
	addl	$1, %eax
	andl	$7, %esi
	movzwl	order.4297(%rdx,%rdx), %edx
	shrq	$3, %rbp
	subl	$3, %ecx
	cmpl	%eax, 120(%r12)
	movl	%eax, 132(%r12)
	movw	%si, 144(%r12,%rdx,2)
	ja	.L349
	movl	%ecx, %r13d
.L133:
	cmpl	$18, %eax
	ja	.L225
.L343:
	mov	%eax, %edx
	addl	$1, %eax
	movzwl	order.4297(%rdx,%rdx), %edx
	cmpl	$19, %eax
	movw	$0, 144(%r12,%rdx,2)
	jne	.L343
	movl	$19, 132(%r12)
.L225:
	movq	64(%rsp), %rsi
	movq	104(%rsp), %r8
	xorl	%edi, %edi
	movq	80(%rsp), %r9
	movq	72(%rsp), %rcx
	movl	$19, %edx
	movl	$7, 112(%r12)
	movl	%r10d, 8(%rsp)
	movq	%rsi, 136(%r12)
	movq	%rsi, 96(%r12)
	movq	96(%rsp), %rsi
	call	inflate_table
	testl	%eax, %eax
	movl	%eax, %r8d
	movl	8(%rsp), %r10d
	jne	.L457
	movl	$0, 132(%r12)
	movl	$18, (%r12)
	xorl	%r9d, %r9d
	jmp	.L131
.L123:
	movq	%rbp, %r11
	movl	%r10d, %ebp
	movl	%ebx, %r10d
	movq	%r14, %rbx
	movl	$1, %r14d
	jmp	.L127
.L120:
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L436
	movq	48(%rsp), %r11
	movl	84(%r12), %eax
	movb	%al, (%r11)
	subl	$1, 44(%rsp)
	addq	$1, %r11
	movq	%r11, 48(%rsp)
.L435:
	movl	$20, (%r12)
	jmp	.L143
.L340:
	movl	16(%r12), %eax
.L103:
	testb	$2, %ah
	je	.L198
	cmpl	$15, %r13d
	ja	.L199
	testl	%ebx, %ebx
	.p2align 4,,3
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L357
	.p2align 4,,10
	.p2align 3
.L201:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L357:
	movzbl	(%r15), %edx
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	addl	$8, %ecx
	addq	%rdx, %rbp
	cmpl	$15, %ecx
	jbe	.L201
	movl	%ecx, %r13d
.L199:
	movzwl	24(%r12), %edx
	cmpq	%rbp, %rdx
	je	.L202
	movq	$.LC4, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L339:
	movl	16(%r12), %eax
.L102:
	testb	$16, %ah
	je	.L192
	testl	%ebx, %ebx
	je	.L436
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L194:
	mov	%ecx, %eax
	addl	$1, %ecx
	movzbl	(%r15,%rax), %edx
	movq	40(%r12), %rax
	testq	%rax, %rax
	movzbl	%dl, %r9d
	je	.L193
	movq	56(%rax), %rdi
	testq	%rdi, %rdi
	je	.L193
	movl	84(%r12), %esi
	cmpl	64(%rax), %esi
	jae	.L193
	mov	%esi, %eax
	addl	$1, %esi
	movb	%dl, (%rdi,%rax)
	movl	%esi, 84(%r12)
.L193:
	testl	%r9d, %r9d
	je	.L332
	cmpl	%ebx, %ecx
	jb	.L194
.L332:
	testb	$2, 17(%r12)
	jne	.L458
.L196:
	subl	%ecx, %ebx
	mov	%ecx, %ecx
	addq	%rcx, %r15
	testl	%r9d, %r9d
	jne	.L436
	movl	16(%r12), %eax
.L197:
	movl	$8, (%r12)
	jmp	.L103
.L337:
	movl	16(%r12), %eax
.L100:
	testb	$4, %ah
	je	.L178
	movl	84(%r12), %edx
	cmpl	%edx, %ebx
	movl	%edx, %ecx
	cmovbe	%ebx, %ecx
	testl	%ecx, %ecx
	je	.L179
	movq	40(%r12), %rsi
	mov	%ecx, %edi
	movq	%rdi, 120(%rsp)
	testq	%rsi, %rsi
	je	.L181
	movq	24(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L181
	movl	32(%rsi), %eax
	movl	36(%rsi), %esi
	movl	%ecx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	subl	%edx, %eax
	movl	%esi, %r9d
	mov	%ecx, %edx
	leal	(%rcx,%rax), %r11d
	subl	%eax, %r9d
	mov	%eax, %eax
	cmpl	%esi, %r11d
	movq	%r15, %rsi
	cmova	%r9, %rdx
	addq	%rax, %rdi
	call	memcpy
	movl	16(%r12), %eax
	movl	8(%rsp), %r10d
	movl	16(%rsp), %r8d
	movl	24(%rsp), %ecx
.L181:
	testb	$2, %ah
	jne	.L459
.L185:
	movl	84(%r12), %edx
	addq	120(%rsp), %r15
	subl	%ecx, %ebx
	subl	%ecx, %edx
	movl	%edx, 84(%r12)
.L179:
	testl	%edx, %edx
	jne	.L436
	movl	16(%r12), %eax
.L178:
	movl	$0, 84(%r12)
	movl	$6, (%r12)
.L101:
	testb	$8, %ah
	je	.L186
	testl	%ebx, %ebx
	je	.L436
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L188:
	mov	%ecx, %eax
	addl	$1, %ecx
	movzbl	(%r15,%rax), %edx
	movq	40(%r12), %rax
	testq	%rax, %rax
	movzbl	%dl, %r9d
	je	.L187
	movq	40(%rax), %rdi
	testq	%rdi, %rdi
	je	.L187
	movl	84(%r12), %esi
	cmpl	48(%rax), %esi
	jae	.L187
	mov	%esi, %eax
	addl	$1, %esi
	movb	%dl, (%rdi,%rax)
	movl	%esi, 84(%r12)
.L187:
	testl	%r9d, %r9d
	je	.L331
	cmpl	%ebx, %ecx
	jb	.L188
.L331:
	testb	$2, 17(%r12)
	jne	.L460
.L190:
	subl	%ecx, %ebx
	mov	%ecx, %ecx
	addq	%rcx, %r15
	testl	%r9d, %r9d
	jne	.L436
	movl	16(%r12), %eax
.L191:
	movl	$0, 84(%r12)
	movl	$7, (%r12)
	jmp	.L102
.L338:
	movl	16(%r12), %eax
	jmp	.L101
.L336:
	movl	16(%r12), %eax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L329:
	cmpl	$4, %ebp
	.p2align 4,,5
	jne	.L128
	.p2align 4,,7
	.p2align 3
	jmp	.L335
	.p2align 4,,10
	.p2align 3
.L431:
	movl	%ecx, %r13d
	.p2align 4,,7
	.p2align 3
	jmp	.L436
.L441:
	movl	$12, (%r12)
	movq	%rdx, 48(%rsp)
	movq	%rcx, %r15
	movb	$12, %al
	jmp	.L93
.L443:
	movl	32(%rbx), %r13d
	jmp	.L315
.L324:
	subl	$-128, %eax
	xorl	%edx, %edx
	jmp	.L327
.L320:
	negq	%rsi
	addq	24(%rbx), %rsi
	movq	24(%r12), %rdi
	call	adler32
	jmp	.L321
.L444:
	cmpl	$19, %edx
	je	.L334
	xorl	%edx, %edx
	.p2align 4,,7
	.p2align 3
	jmp	.L327
.L440:
	movl	8(%rdi), %r13d
	testl	%r13d, %r13d
	.p2align 4,,3
	jne	.L91
	.p2align 4,,5
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L192:
	movq	40(%r12), %rdx
	testq	%rdx, %rdx
	.p2align 4,,3
	je	.L197
	movq	$0, 56(%rdx)
	.p2align 4,,5
	jmp	.L197
.L186:
	movq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	.L191
	movq	$0, 40(%rdx)
	.p2align 4,,3
	jmp	.L191
.L285:
	movq	48(%rsp), %rdi
	movl	84(%r12), %esi
	mov	%eax, %eax
	subq	%rax, %rdi
	movl	%esi, %edx
	movq	%rdi, %rax
.L290:
	cmpl	44(%rsp), %esi
	cmova	44(%rsp), %esi
	subl	%esi, 44(%rsp)
	subl	%esi, %edx
	cmpl	$15, %esi
	movl	%edx, 84(%r12)
	jbe	.L291
	testb	$15, 48(%rsp)
	jne	.L291
	leaq	16(%rax), %rdx
	cmpq	48(%rsp), %rdx
	jae	.L461
.L333:
	movl	%esi, %r9d
	shrl	$4, %r9d
	movl	%r9d, %edi
	sall	$4, %edi
	testl	%edi, %edi
	je	.L462
	movq	48(%rsp), %r11
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L295:
	movdqu	(%rdx,%rax), %xmm0
	addl	$1, %ecx
	movdqa	%xmm0, (%r11,%rdx)
	addq	$16, %rdx
	cmpl	%ecx, %r9d
	ja	.L295
	movq	48(%rsp), %rdx
	mov	%edi, %ecx
	movl	%esi, %r9d
	subl	%edi, %r9d
	addq	%rcx, %rax
	addq	%rcx, %rdx
	cmpl	%edi, %esi
	je	.L296
.L294:
	leaq	1(%rax), %rcx
	leal	-1(%r9), %edi
	leaq	(%rcx,%rdi), %rdi
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L463:
	addq	$1, %rcx
.L297:
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, %rdx
	cmpq	%rdi, %rcx
	movq	%rcx, %rax
	jne	.L463
.L296:
	movq	48(%rsp), %r9
	subl	$1, %esi
	leaq	1(%r9,%rsi), %r9
	movl	84(%r12), %esi
	movq	%r9, 48(%rsp)
	testl	%esi, %esi
	jne	.L143
	jmp	.L435
.L286:
	movl	60(%r12), %eax
	cmpl	%eax, %ecx
	jbe	.L287
	subl	%eax, %ecx
	movl	52(%r12), %eax
	subl	%ecx, %eax
	addq	64(%r12), %rax
.L288:
	movl	84(%r12), %esi
	cmpl	%esi, %ecx
	movl	%esi, %edx
	ja	.L290
	movl	%ecx, %esi
	jmp	.L290
.L202:
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
.L198:
	movq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	.L203
	sarl	$9, %eax
	movl	$1, 72(%rdx)
	andl	$1, %eax
	movl	%eax, 68(%rdx)
.L203:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	crc32
	movl	$11, (%r12)
	movq	%rax, 24(%r12)
	movl	16(%rsp), %r8d
	movq	%rax, 96(%r14)
	movl	8(%rsp), %r10d
	jmp	.L143
.L171:
	movq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	.L177
	movq	$0, 24(%rdx)
	jmp	.L177
.L267:
	cmpl	%edx, %r13d
	.p2align 4,,3
	jae	.L269
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L436
	movl	%r13d, %ecx
	.p2align 4,,5
	jmp	.L368
	.p2align 4,,10
	.p2align 3
.L271:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L368:
	movzbl	(%r15), %eax
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	addl	$8, %ecx
	addq	%rax, %rbp
	cmpl	%edx, %ecx
	jb	.L271
	movl	%ecx, %r13d
.L269:
	movl	%edx, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	92(%r12), %ecx
	addl	%ecx, 7140(%r12)
	subl	$1, %eax
	andl	%ebp, %eax
	addl	84(%r12), %eax
	shrq	%cl, %rbp
	subl	%ecx, %r13d
	movl	%eax, 84(%r12)
	jmp	.L268
.L275:
	movzbl	%cl, %r11d
	movl	120(%rsp), %ecx
	movl	$1, %esi
	movzwl	%r9w, %r9d
	movl	%r9d, 132(%rsp)
	leal	(%r11,%rcx), %ecx
	sall	%cl, %esi
	movl	%esi, %ecx
	subl	$1, %ecx
	movl	%ecx, 120(%rsp)
	andl	%ecx, %edx
	movl	%r11d, %ecx
	shrl	%cl, %edx
	addl	%r9d, %edx
	leaq	(%rdi,%rdx,4), %rdx
	movzbl	(%rdx), %esi
	movzwl	2(%rdx), %r9d
	movzbl	1(%rdx), %edx
	movb	%dl, 136(%rsp)
	movzbl	%dl, %edx
	leal	(%r11,%rdx), %ecx
	cmpl	%ecx, %r13d
	jae	.L277
	testl	%ebx, %ebx
	je	.L436
	movl	%eax, 140(%rsp)
	jmp	.L370
.L279:
	testl	%ebx, %ebx
	je	.L436
.L370:
	movzbl	(%r15), %eax
	movl	%r13d, %ecx
	addl	$8, %r13d
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rax
	movl	%r11d, %ecx
	addq	%rax, %rbp
	movl	120(%rsp), %eax
	andl	%ebp, %eax
	shrl	%cl, %eax
	addl	132(%rsp), %eax
	leaq	(%rdi,%rax,4), %rax
	movzbl	(%rax), %esi
	movzwl	2(%rax), %r9d
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	leal	(%r11,%rdx), %ecx
	cmpl	%r13d, %ecx
	ja	.L279
	movb	%al, 136(%rsp)
	movl	140(%rsp), %eax
.L277:
	movl	%r11d, %ecx
	subl	%eax, %r13d
	addl	7140(%r12), %r11d
	movzbl	136(%rsp), %eax
	movzbl	%sil, %edi
	shrq	%cl, %rbp
	movl	%edi, 120(%rsp)
	movl	%r11d, 7140(%r12)
	movl	%eax, 132(%rsp)
	jmp	.L276
.L458:
	movq	24(%r12), %rdi
	movl	%ecx, %edx
	movq	%r15, %rsi
	movl	%ecx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r9d, 32(%rsp)
	movl	%r10d, 8(%rsp)
	call	crc32
	movl	8(%rsp), %r10d
	movq	%rax, 24(%r12)
	movl	32(%rsp), %r9d
	movl	16(%rsp), %r8d
	movl	24(%rsp), %ecx
	jmp	.L196
.L460:
	movq	24(%r12), %rdi
	movl	%ecx, %edx
	movq	%r15, %rsi
	movl	%ecx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r9d, 32(%rsp)
	movl	%r10d, 8(%rsp)
	call	crc32
	movl	8(%rsp), %r10d
	movq	%rax, 24(%r12)
	movl	32(%rsp), %r9d
	movl	16(%rsp), %r8d
	movl	24(%rsp), %ecx
	jmp	.L190
.L258:
	movzbl	%sil, %r11d
	testb	$-16, %r11b
	je	.L260
	movzbl	%cl, %ecx
	movzwl	%r9w, %r9d
	subl	%eax, %r13d
	shrq	%cl, %rbp
	movl	%ecx, 7140(%r12)
	movl	%r9d, 84(%r12)
.L261:
	movzbl	%sil, %edx
	testb	$32, %dl
	jne	.L464
	testb	$64, %dl
	jne	.L465
	andl	$15, %edx
	movl	$21, (%r12)
	movl	%edx, 92(%r12)
	jmp	.L130
.L461:
	movq	48(%rsp), %rdx
	addq	$16, %rdx
	cmpq	%rax, %rdx
	jb	.L333
.L291:
	leaq	1(%rax), %rcx
	leal	-1(%rsi), %edi
	movq	48(%rsp), %rdx
	leaq	(%rcx,%rdi), %rdi
	jmp	.L298
.L466:
	addq	$1, %rcx
.L298:
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, %rdx
	cmpq	%rdi, %rcx
	movq	%rcx, %rax
	jne	.L466
	jmp	.L296
.L287:
	subl	%ecx, %eax
	addq	64(%r12), %rax
	jmp	.L288
.L231:
	cmpw	$16, %dx
	.p2align 4,,5
	je	.L467
	cmpw	$17, %dx
	.p2align 4,,3
	je	.L239
	movzbl	%cl, %edi
	leal	7(%rdi), %esi
	cmpl	%esi, %r13d
	jae	.L240
	testl	%ebx, %ebx
	je	.L436
	movl	%r13d, %ecx
	jmp	.L363
.L245:
	testl	%ebx, %ebx
	.p2align 4,,5
	je	.L431
.L363:
	movzbl	(%r15), %edx
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	addl	$8, %ecx
	addq	%rdx, %rbp
	cmpl	%esi, %ecx
	jb	.L245
	movl	%ecx, %r13d
.L240:
	movl	%edi, %ecx
	movl	$-7, %esi
	shrq	%cl, %rbp
	subl	%eax, %esi
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	addl	%esi, %r13d
	shrq	$7, %rbp
	andl	$127, %edx
	addl	$11, %edx
.L238:
	leal	(%rdx,%r9), %eax
	cmpl	%eax, 120(%rsp)
	jb	.L432
.L247:
	mov	%r9d, %edx
	addl	$1, %r9d
	cmpl	%r9d, %eax
	movw	%cx, 144(%r12,%rdx,2)
	jne	.L247
	movl	%eax, 132(%r12)
	jmp	.L232
.L212:
	movq	$.LC5, 48(%r14)
	movl	$29, (%r12)
	jmp	.L213
.L211:
	movl	$16, (%r12)
	jmp	.L213
.L210:
	cmpl	$6, %r10d
	movq	$lenfix.4224, 96(%r12)
	movl	$9, 112(%r12)
	movq	$distfix.4225, 104(%r12)
	movl	$5, 116(%r12)
	movl	$19, (%r12)
	jne	.L213
	movq	%rbp, %r11
	subl	$3, %r13d
	movl	%r10d, %ebp
	shrq	$3, %r11
	movl	%ebx, %r10d
	movq	%r14, %rbx
	movl	%r8d, %r14d
	jmp	.L127
.L147:
	movq	$.LC0, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L453:
	movb	%bpl, 144(%rsp)
	shrq	$8, %rbp
	leaq	144(%rsp), %rsi
	movb	%bpl, 145(%rsp)
	movq	24(%r12), %rdi
	movl	$2, %edx
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	crc32
	movl	8(%rsp), %r10d
	movq	%rax, 24(%r12)
	movl	16(%rsp), %r8d
	movl	16(%r12), %eax
	jmp	.L170
.L260:
	movzwl	%r9w, %r9d
	movl	$1, %esi
	movl	%r9d, 120(%rsp)
	movzbl	%cl, %r9d
	leal	(%r9,%r11), %ecx
	sall	%cl, %esi
	movl	%esi, %ecx
	subl	$1, %ecx
	movl	%ecx, 136(%rsp)
	andl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	%cl, %edx
	addl	120(%rsp), %edx
	leaq	(%rdi,%rdx,4), %rdx
	movzwl	2(%rdx), %r11d
	movzbl	(%rdx), %esi
	movw	%r11w, 132(%rsp)
	movzbl	1(%rdx), %edx
	movb	%dl, 140(%rsp)
	movzbl	%dl, %edx
	leal	(%r9,%rdx), %r11d
	cmpl	%r11d, %r13d
	jae	.L262
.L264:
	testl	%ebx, %ebx
	je	.L436
	movzbl	(%r15), %edx
	movl	%r13d, %ecx
	addl	$8, %r13d
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	movl	%r9d, %ecx
	addq	%rdx, %rbp
	movl	136(%rsp), %edx
	andl	%ebp, %edx
	shrl	%cl, %edx
	addl	120(%rsp), %edx
	leaq	(%rdi,%rdx,4), %rdx
	movzwl	2(%rdx), %r11d
	movzbl	(%rdx), %esi
	movw	%r11w, 132(%rsp)
	movzbl	1(%rdx), %ecx
	movzbl	%cl, %edx
	leal	(%r9,%rdx), %r11d
	cmpl	%r13d, %r11d
	ja	.L264
	movb	%cl, 140(%rsp)
.L262:
	subl	%eax, %r13d
	movzbl	140(%rsp), %eax
	movl	%r9d, %ecx
	shrq	%cl, %rbp
	movl	%edx, %ecx
	movl	%r11d, 7140(%r12)
	shrq	%cl, %rbp
	subl	%eax, %r13d
	movzwl	132(%rsp), %eax
	testb	%sil, %sil
	movl	%eax, 84(%r12)
	jne	.L261
	jmp	.L259
.L455:
	movq	%rbp, %rax
	movb	%bpl, 144(%rsp)
	leaq	144(%rsp), %rsi
	shrq	$8, %rax
	movl	$4, %edx
	movl	%r8d, 16(%rsp)
	movb	%al, 145(%rsp)
	movq	%rbp, %rax
	shrq	$24, %rbp
	shrq	$16, %rax
	movb	%bpl, 147(%rsp)
	movl	%r10d, 8(%rsp)
	movb	%al, 146(%rsp)
	movq	24(%r12), %rdi
	call	crc32
	movl	8(%rsp), %r10d
	movq	%rax, 24(%r12)
	movl	16(%rsp), %r8d
	jmp	.L164
.L206:
	movl	%r13d, %ecx
	movl	$26, (%r12)
	andl	$-8, %r13d
	andl	$7, %ecx
	shrq	%cl, %rbp
	jmp	.L143
.L239:
	movzbl	%cl, %esi
	leal	3(%rsi), %edi
	cmpl	%edi, %r13d
	jae	.L242
.L244:
	testl	%ebx, %ebx
	je	.L436
	movzbl	(%r15), %edx
	movl	%r13d, %ecx
	addl	$8, %r13d
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	addq	%rdx, %rbp
	cmpl	%edi, %r13d
	jb	.L244
.L242:
	movl	%esi, %ecx
	movl	$-3, %esi
	shrq	%cl, %rbp
	subl	%eax, %esi
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	addl	%esi, %r13d
	shrq	$3, %rbp
	andl	$7, %edx
	addl	$3, %edx
	jmp	.L238
.L456:
	testb	$2, %dl
	je	.L145
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	xorl	%r13d, %r13d
	call	crc32
	movq	%rax, 24(%r12)
	movb	$31, 144(%rsp)
	leaq	144(%rsp), %rsi
	movb	$-117, 145(%rsp)
	movq	24(%r12), %rdi
	movl	$2, %edx
	xorw	%bp, %bp
	call	crc32
	movl	$1, (%r12)
	movq	%rax, 24(%r12)
	movl	16(%rsp), %r8d
	movl	8(%rsp), %r10d
	jmp	.L143
.L459:
	movq	24(%r12), %rdi
	movl	%ecx, %edx
	movq	%r15, %rsi
	movl	%ecx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	crc32
	movl	8(%rsp), %r10d
	movq	%rax, 24(%r12)
	movl	16(%rsp), %r8d
	movl	24(%rsp), %ecx
	jmp	.L185
.L176:
	movb	%bpl, 144(%rsp)
	shrq	$8, %rbp
	leaq	144(%rsp), %rsi
	movb	%bpl, 145(%rsp)
	movq	24(%r12), %rdi
	movl	$2, %edx
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	call	crc32
	movl	16(%rsp), %r8d
	movq	%rax, 24(%r12)
	movl	8(%rsp), %r10d
	movl	16(%r12), %eax
	jmp	.L177
.L221:
	movq	$.LC7, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L447:
	movq	$.LC14, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L140:
	movl	$12, (%r12)
	jmp	.L143
.L304:
	movq	48(%rsp), %rcx
	movq	24(%r12), %rdi
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	subq	%rsi, %rcx
	movq	%rcx, %rsi
	call	adler32
	movl	8(%rsp), %r10d
	movl	16(%rsp), %r8d
	jmp	.L305
.L445:
	movq	$.LC6, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L467:
	movzbl	%cl, %esi
	leal	2(%rsi), %edi
	cmpl	%edi, %r13d
	jae	.L234
.L236:
	testl	%ebx, %ebx
	je	.L436
	movzbl	(%r15), %edx
	movl	%r13d, %ecx
	addl	$8, %r13d
	subl	$1, %ebx
	addq	$1, %r15
	salq	%cl, %rdx
	addq	%rdx, %rbp
	cmpl	%edi, %r13d
	jb	.L236
.L234:
	movl	%esi, %ecx
	subl	%eax, %r13d
	shrq	%cl, %rbp
	testl	%r9d, %r9d
	je	.L432
	movl	%ebp, %edx
	leal	-1(%r9), %eax
	shrq	$2, %rbp
	andl	$3, %edx
	subl	$2, %r13d
	movzwl	144(%r12,%rax,2), %ecx
	addl	$3, %edx
	jmp	.L238
.L464:
	movl	$-1, 7140(%r12)
.L434:
	movl	$11, (%r12)
	jmp	.L143
.L442:
	movq	48(%rsp), %rax
	movl	44(%rsp), %edx
	movl	%ebx, %r10d
	movl	%r10d, 8(%r14)
	movq	%r15, (%r14)
	movq	%rbp, 72(%r12)
	movl	%edx, 32(%r14)
	movq	%rax, 24(%r14)
	movl	$2, %r14d
	movl	%r13d, 80(%r12)
	jmp	.L128
.L454:
	movq	$.LC3, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L452:
	movl	44(%rsp), %esi
	movq	$.LC16, 48(%r14)
	movl	$29, (%r12)
	movl	%esi, 56(%rsp)
	jmp	.L143
.L432:
	movq	$.LC9, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L457:
	movq	$.LC8, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L429:
	movq	%rbp, %r11
	movl	%r10d, %ebp
	movl	%ebx, %r10d
	movq	%r14, %rbx
.L309:
	movl	$28, (%r12)
	movl	$1, %r14d
	jmp	.L127
.L451:
	cmpl	$257, 44(%rsp)
	jbe	.L254
	movq	48(%rsp), %r9
	movl	44(%rsp), %r11d
	movq	%r14, %rdi
	movl	56(%rsp), %esi
	movl	%ebx, 8(%r14)
	movq	%r15, (%r14)
	movq	%rbp, 72(%r12)
	movl	%r11d, 32(%r14)
	movq	%r9, 24(%r14)
	movl	%r13d, 80(%r12)
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	inflate_fast
	cmpl	$11, (%r12)
	movq	24(%r14), %rax
	movl	32(%r14), %edx
	movq	(%r14), %r15
	movl	8(%r14), %ebx
	movq	72(%r12), %rbp
	movq	%rax, 48(%rsp)
	movl	80(%r12), %r13d
	movl	%edx, 44(%rsp)
	movl	16(%rsp), %r8d
	movl	8(%rsp), %r10d
	jne	.L143
	movl	$-1, 7140(%r12)
	jmp	.L143
.L462:
	movl	%esi, %r9d
	movq	48(%rsp), %rdx
	jmp	.L294
.L313:
	movl	%r10d, %ebp
	xorl	%r13d, %r13d
	movl	%ebx, %r10d
	xorl	%r11d, %r11d
	movq	%r14, %rbx
	jmp	.L309
.L149:
	shrq	$4, %rbp
	movl	48(%r12), %eax
	movl	%ebp, %ecx
	andl	$15, %ecx
	addl	$8, %ecx
	testl	%eax, %eax
	jne	.L150
	movl	%ecx, 48(%r12)
.L151:
	movl	$1, %r11d
	xorl	%edx, %edx
	xorl	%esi, %esi
	sall	%cl, %r11d
	xorl	%edi, %edi
	andl	$512, %ebp
	movl	%r11d, 20(%r12)
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	call	adler32
	cmpq	$1, %rbp
	movq	%rax, 24(%r12)
	movq	%rax, 96(%r14)
	sbbl	%eax, %eax
	movl	16(%rsp), %r8d
	xorl	%r13d, %r13d
	andl	$2, %eax
	xorl	%ebp, %ebp
	movl	8(%rsp), %r10d
	addl	$9, %eax
	movl	%eax, (%r12)
	jmp	.L143
.L465:
	movq	$.LC13, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L150:
	cmpl	%eax, %ecx
	jbe	.L151
	subl	$4, %r13d
	movq	$.LC2, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L446:
	movl	%r10d, %ebp
	xorl	%r13d, %r13d
	movl	%ebx, %r10d
	xorl	%r11d, %r11d
	movq	%r14, %rbx
	movl	%r8d, %r14d
	jmp	.L127
.L450:
	movq	$.LC12, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L449:
	movq	$.LC11, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
.L448:
	movq	$.LC10, 48(%r14)
	movl	$29, (%r12)
	jmp	.L143
	.cfi_endproc
.LFE46:
	.size	inflate, .-inflate
	.p2align 4,,15
.globl inflateReset
	.type	inflateReset, @function
inflateReset:
.LFB39:
	.cfi_startproc
	testq	%rdi, %rdi
	jne	.L473
.L469:
	movl	$-2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L473:
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L469
	movl	8(%rax), %edx
	movq	$0, 32(%rax)
	movl	$0, 52(%rax)
	movl	$0, 56(%rax)
	movl	$0, 60(%rax)
	movq	$0, 40(%rdi)
	testl	%edx, %edx
	movq	$0, 16(%rdi)
	movq	$0, 48(%rdi)
	je	.L470
	andl	$1, %edx
	movq	%rdx, 96(%rdi)
	.p2align 4,,10
	.p2align 3
.L470:
	leaq	1360(%rax), %rdx
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$0, 12(%rax)
	movl	$32768, 20(%rax)
	movq	$0, 40(%rax)
	movq	$0, 72(%rax)
	movl	$0, 80(%rax)
	movq	%rdx, 136(%rax)
	movq	%rdx, 104(%rax)
	movq	%rdx, 96(%rax)
	movl	$1, 7136(%rax)
	movl	$-1, 7140(%rax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE39:
	.size	inflateReset, .-inflateReset
	.p2align 4,,15
.globl inflateReset2
	.type	inflateReset2, @function
inflateReset2:
.LFB40:
	.cfi_startproc
	movq	%rbx, -32(%rsp)
	movq	%rbp, -24(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -32
	.cfi_offset 3, -40
	movq	%r12, -16(%rsp)
	movq	%r13, -8(%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	movl	%esi, %ebp
	jne	.L482
	.cfi_offset 13, -16
	.cfi_offset 12, -24
.L475:
	movl	$-2, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L482:
	movq	56(%rdi), %r12
	testq	%r12, %r12
	je	.L475
	testl	%esi, %esi
	js	.L483
	movl	%esi, %r13d
	movl	%esi, %eax
	sarl	$4, %r13d
	andl	$15, %eax
	addl	$1, %r13d
	cmpl	$47, %esi
	cmovle	%eax, %ebp
.L477:
	leal	-8(%rbp), %eax
	cmpl	$7, %eax
	ja	.L484
.L481:
	movq	64(%r12), %rsi
	testq	%rsi, %rsi
	je	.L479
	cmpl	48(%r12), %ebp
	je	.L479
	movq	80(%rbx), %rdi
	.p2align 4,,3
	call	*72(%rbx)
	movq	$0, 64(%r12)
.L479:
	movl	%r13d, 8(%r12)
	movl	%ebp, 48(%r12)
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	jmp	inflateReset
	.p2align 4,,10
	.p2align 3
.L484:
	testl	%ebp, %ebp
	je	.L481
	jmp	.L475
.L483:
	negl	%ebp
	xorl	%r13d, %r13d
	.p2align 4,,5
	jmp	.L477
	.cfi_endproc
.LFE40:
	.size	inflateReset2, .-inflateReset2
	.p2align 4,,15
.globl inflateInit2_
	.type	inflateInit2_, @function
inflateInit2_:
.LFB41:
	.cfi_startproc
	movq	%rbx, -24(%rsp)
	movq	%rbp, -16(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	movq	%r12, -8(%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdx, %rdx
	movl	%esi, %ebp
	jne	.L493
	.cfi_offset 12, -16
.L486:
	movl	$-6, %eax
.L488:
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L493:
	cmpl	$112, %ecx
	jne	.L486
	cmpb	$49, (%rdx)
	jne	.L486
	testq	%rdi, %rdi
	movl	$-2, %eax
	.p2align 4,,3
	je	.L488
	movq	64(%rdi), %rax
	movq	$0, 48(%rdi)
	testq	%rax, %rax
	je	.L494
.L489:
	cmpq	$0, 72(%rbx)
	je	.L495
.L490:
	movq	80(%rbx), %rdi
	movl	$7152, %edx
	movl	$1, %esi
	call	*%rax
	movq	%rax, %r12
	movl	$-4, %eax
	testq	%r12, %r12
	je	.L488
	movq	%r12, 56(%rbx)
	movq	$0, 64(%r12)
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	inflateReset2
	testl	%eax, %eax
	je	.L488
	movl	%eax, 8(%rsp)
	movq	80(%rbx), %rdi
	movq	%r12, %rsi
	call	*72(%rbx)
	movq	$0, 56(%rbx)
	movl	8(%rsp), %eax
	jmp	.L488
.L494:
	movq	$zcalloc, 64(%rdi)
	movq	$0, 80(%rdi)
	movl	$zcalloc, %eax
	jmp	.L489
.L495:
	movq	$zcfree, 72(%rbx)
	movq	64(%rbx), %rax
	jmp	.L490
	.cfi_endproc
.LFE41:
	.size	inflateInit2_, .-inflateInit2_
	.p2align 4,,15
.globl inflateInit_
	.type	inflateInit_, @function
inflateInit_:
.LFB42:
	.cfi_startproc
	movq	%rbx, -16(%rsp)
	movq	%rbp, -8(%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	movq	%rdi, %rbx
	.cfi_offset 6, -16
	.cfi_offset 3, -24
	jne	.L504
.L497:
	movl	$-6, %eax
.L499:
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L504:
	cmpl	$112, %edx
	jne	.L497
	cmpb	$49, (%rsi)
	jne	.L497
	testq	%rdi, %rdi
	movl	$-2, %eax
	.p2align 4,,3
	je	.L499
	movq	64(%rdi), %rax
	movq	$0, 48(%rdi)
	testq	%rax, %rax
	je	.L505
.L500:
	cmpq	$0, 72(%rbx)
	je	.L506
.L501:
	movq	80(%rbx), %rdi
	movl	$7152, %edx
	movl	$1, %esi
	call	*%rax
	movq	%rax, %rbp
	movl	$-4, %eax
	testq	%rbp, %rbp
	je	.L499
	movq	%rbp, 56(%rbx)
	movq	$0, 64(%rbp)
	movl	$15, %esi
	movq	%rbx, %rdi
	call	inflateReset2
	testl	%eax, %eax
	je	.L499
	movl	%eax, 8(%rsp)
	movq	80(%rbx), %rdi
	movq	%rbp, %rsi
	call	*72(%rbx)
	movq	$0, 56(%rbx)
	movl	8(%rsp), %eax
	jmp	.L499
.L505:
	movq	$zcalloc, 64(%rdi)
	movq	$0, 80(%rdi)
	movl	$zcalloc, %eax
	jmp	.L500
.L506:
	movq	$zcfree, 72(%rbx)
	movq	64(%rbx), %rax
	jmp	.L501
	.cfi_endproc
.LFE42:
	.size	inflateInit_, .-inflateInit_
	.p2align 4,,15
.globl inflateSync
	.type	inflateSync, @function
inflateSync:
.LFB52:
	.cfi_startproc
	movq	%rbx, -32(%rsp)
	movq	%rbp, -24(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 6, -32
	.cfi_offset 3, -40
	movq	%r12, -16(%rsp)
	movq	%r13, -8(%rsp)
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdi, %rdi
	jne	.L543
	.cfi_offset 13, -16
	.cfi_offset 12, -24
.L508:
	movl	$-2, %eax
.L510:
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L543:
	movq	56(%rdi), %rbp
	testq	%rbp, %rbp
	je	.L508
	movl	8(%rdi), %edi
	testl	%edi, %edi
	jne	.L509
	cmpl	$7, 80(%rbp)
	movl	$-5, %eax
	jbe	.L510
	.p2align 4,,10
	.p2align 3
.L509:
	cmpl	$31, (%rbp)
	je	.L544
	movl	80(%rbp), %edx
	movq	72(%rbp), %rax
	movl	$31, (%rbp)
	movl	%edx, %ecx
	andl	$-8, %edx
	andl	$7, %ecx
	movl	%edx, 80(%rbp)
	salq	%cl, %rax
	cmpl	$7, %edx
	movq	%rax, 72(%rbp)
	jbe	.L513
	movq	%rsp, %r8
	movq	%rsp, %rdx
	xorl	%edi, %edi
.L514:
	movb	%al, (%rdx)
	movl	80(%rbp), %ecx
	addl	$1, %edi
	movq	72(%rbp), %rax
	addq	$1, %rdx
	subl	$8, %ecx
	shrq	$8, %rax
	cmpl	$7, %ecx
	movl	%ecx, 80(%rbp)
	movq	%rax, 72(%rbp)
	ja	.L514
	testl	%edi, %edi
	movl	$0, 132(%rbp)
	je	.L542
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	$4, %r9d
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L546:
	movl	$1, %esi
	xorl	%eax, %eax
.L520:
	addl	$1, %ecx
	testb	%sil, %sil
	je	.L516
	cmpl	%ecx, %edi
	jbe	.L516
.L522:
	mov	%ecx, %edx
	cmpl	$2, %eax
	movzbl	(%r8,%rdx), %esi
	sbbl	%edx, %edx
	notl	%edx
	cmpb	%dl, %sil
	je	.L545
	testb	%sil, %sil
	jne	.L546
	movl	%r9d, %edx
	subl	%eax, %edx
	cmpl	$3, %edx
	movl	%edx, %eax
	setbe	%sil
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L545:
	addl	$1, %eax
	cmpl	$3, %eax
	setbe	%sil
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L513:
	movl	$0, 132(%rbp)
.L542:
	movl	$1, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L516:
	movl	%eax, 132(%rbp)
	movl	8(%rbx), %edi
.L512:
	testl	%edi, %edi
	movq	(%rbx), %r8
	je	.L536
	xorl	%edx, %edx
	testb	%sil, %sil
	movl	$4, %r9d
	jne	.L538
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L548:
	movl	$1, %ecx
	xorl	%eax, %eax
.L530:
	addl	$1, %edx
	testb	%cl, %cl
	je	.L537
	cmpl	%edi, %edx
	jae	.L537
.L538:
	mov	%edx, %ecx
	cmpl	$2, %eax
	movzbl	(%r8,%rcx), %esi
	sbbl	%ecx, %ecx
	notl	%ecx
	cmpb	%cl, %sil
	je	.L547
	testb	%sil, %sil
	jne	.L548
	movl	%r9d, %ecx
	subl	%eax, %ecx
	cmpl	$3, %ecx
	movl	%ecx, %eax
	setbe	%cl
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L547:
	addl	$1, %eax
	cmpl	$3, %eax
	setbe	%cl
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L537:
	mov	%edx, %r12d
.L526:
	movl	%eax, 132(%rbp)
	subl	%edx, 8(%rbx)
	movl	$-3, %eax
	addq	%r12, (%rbx)
	addq	16(%rbx), %r12
	cmpl	$4, 132(%rbp)
	movq	%r12, 16(%rbx)
	jne	.L510
	movq	40(%rbx), %r13
	movq	%rbx, %rdi
	call	inflateReset
	movq	%r12, 16(%rbx)
	movl	$11, (%rbp)
	xorl	%eax, %eax
	movq	%r13, 40(%rbx)
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L544:
	movl	132(%rbp), %eax
	cmpl	$3, %eax
	setbe	%sil
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L536:
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	jmp	.L526
	.cfi_endproc
.LFE52:
	.size	inflateSync, .-inflateSync
	.section	.rodata
	.align 32
	.type	order.4297, @object
	.size	order.4297, 38
order.4297:
	.value	16
	.value	17
	.value	18
	.value	0
	.value	8
	.value	7
	.value	9
	.value	6
	.value	10
	.value	5
	.value	11
	.value	4
	.value	12
	.value	3
	.value	13
	.value	2
	.value	14
	.value	1
	.value	15
	.align 32
	.type	distfix.4225, @object
	.size	distfix.4225, 128
distfix.4225:
	.byte	16
	.byte	5
	.value	1
	.byte	23
	.byte	5
	.value	257
	.byte	19
	.byte	5
	.value	17
	.byte	27
	.byte	5
	.value	4097
	.byte	17
	.byte	5
	.value	5
	.byte	25
	.byte	5
	.value	1025
	.byte	21
	.byte	5
	.value	65
	.byte	29
	.byte	5
	.value	16385
	.byte	16
	.byte	5
	.value	3
	.byte	24
	.byte	5
	.value	513
	.byte	20
	.byte	5
	.value	33
	.byte	28
	.byte	5
	.value	8193
	.byte	18
	.byte	5
	.value	9
	.byte	26
	.byte	5
	.value	2049
	.byte	22
	.byte	5
	.value	129
	.byte	64
	.byte	5
	.value	0
	.byte	16
	.byte	5
	.value	2
	.byte	23
	.byte	5
	.value	385
	.byte	19
	.byte	5
	.value	25
	.byte	27
	.byte	5
	.value	6145
	.byte	17
	.byte	5
	.value	7
	.byte	25
	.byte	5
	.value	1537
	.byte	21
	.byte	5
	.value	97
	.byte	29
	.byte	5
	.value	24577
	.byte	16
	.byte	5
	.value	4
	.byte	24
	.byte	5
	.value	769
	.byte	20
	.byte	5
	.value	49
	.byte	28
	.byte	5
	.value	12289
	.byte	18
	.byte	5
	.value	13
	.byte	26
	.byte	5
	.value	3073
	.byte	22
	.byte	5
	.value	193
	.byte	64
	.byte	5
	.value	0
	.align 32
	.type	lenfix.4224, @object
	.size	lenfix.4224, 2048
lenfix.4224:
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	80
	.byte	0
	.byte	8
	.value	16
	.byte	20
	.byte	8
	.value	115
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	112
	.byte	0
	.byte	8
	.value	48
	.byte	0
	.byte	9
	.value	192
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	96
	.byte	0
	.byte	8
	.value	32
	.byte	0
	.byte	9
	.value	160
	.byte	0
	.byte	8
	.value	0
	.byte	0
	.byte	8
	.value	128
	.byte	0
	.byte	8
	.value	64
	.byte	0
	.byte	9
	.value	224
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	88
	.byte	0
	.byte	8
	.value	24
	.byte	0
	.byte	9
	.value	144
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	120
	.byte	0
	.byte	8
	.value	56
	.byte	0
	.byte	9
	.value	208
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	104
	.byte	0
	.byte	8
	.value	40
	.byte	0
	.byte	9
	.value	176
	.byte	0
	.byte	8
	.value	8
	.byte	0
	.byte	8
	.value	136
	.byte	0
	.byte	8
	.value	72
	.byte	0
	.byte	9
	.value	240
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	84
	.byte	0
	.byte	8
	.value	20
	.byte	21
	.byte	8
	.value	227
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	116
	.byte	0
	.byte	8
	.value	52
	.byte	0
	.byte	9
	.value	200
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	100
	.byte	0
	.byte	8
	.value	36
	.byte	0
	.byte	9
	.value	168
	.byte	0
	.byte	8
	.value	4
	.byte	0
	.byte	8
	.value	132
	.byte	0
	.byte	8
	.value	68
	.byte	0
	.byte	9
	.value	232
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	92
	.byte	0
	.byte	8
	.value	28
	.byte	0
	.byte	9
	.value	152
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	124
	.byte	0
	.byte	8
	.value	60
	.byte	0
	.byte	9
	.value	216
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	108
	.byte	0
	.byte	8
	.value	44
	.byte	0
	.byte	9
	.value	184
	.byte	0
	.byte	8
	.value	12
	.byte	0
	.byte	8
	.value	140
	.byte	0
	.byte	8
	.value	76
	.byte	0
	.byte	9
	.value	248
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	82
	.byte	0
	.byte	8
	.value	18
	.byte	21
	.byte	8
	.value	163
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	114
	.byte	0
	.byte	8
	.value	50
	.byte	0
	.byte	9
	.value	196
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	98
	.byte	0
	.byte	8
	.value	34
	.byte	0
	.byte	9
	.value	164
	.byte	0
	.byte	8
	.value	2
	.byte	0
	.byte	8
	.value	130
	.byte	0
	.byte	8
	.value	66
	.byte	0
	.byte	9
	.value	228
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	90
	.byte	0
	.byte	8
	.value	26
	.byte	0
	.byte	9
	.value	148
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	122
	.byte	0
	.byte	8
	.value	58
	.byte	0
	.byte	9
	.value	212
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	106
	.byte	0
	.byte	8
	.value	42
	.byte	0
	.byte	9
	.value	180
	.byte	0
	.byte	8
	.value	10
	.byte	0
	.byte	8
	.value	138
	.byte	0
	.byte	8
	.value	74
	.byte	0
	.byte	9
	.value	244
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	86
	.byte	0
	.byte	8
	.value	22
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	118
	.byte	0
	.byte	8
	.value	54
	.byte	0
	.byte	9
	.value	204
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	102
	.byte	0
	.byte	8
	.value	38
	.byte	0
	.byte	9
	.value	172
	.byte	0
	.byte	8
	.value	6
	.byte	0
	.byte	8
	.value	134
	.byte	0
	.byte	8
	.value	70
	.byte	0
	.byte	9
	.value	236
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	94
	.byte	0
	.byte	8
	.value	30
	.byte	0
	.byte	9
	.value	156
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	126
	.byte	0
	.byte	8
	.value	62
	.byte	0
	.byte	9
	.value	220
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	110
	.byte	0
	.byte	8
	.value	46
	.byte	0
	.byte	9
	.value	188
	.byte	0
	.byte	8
	.value	14
	.byte	0
	.byte	8
	.value	142
	.byte	0
	.byte	8
	.value	78
	.byte	0
	.byte	9
	.value	252
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	81
	.byte	0
	.byte	8
	.value	17
	.byte	21
	.byte	8
	.value	131
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	113
	.byte	0
	.byte	8
	.value	49
	.byte	0
	.byte	9
	.value	194
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	97
	.byte	0
	.byte	8
	.value	33
	.byte	0
	.byte	9
	.value	162
	.byte	0
	.byte	8
	.value	1
	.byte	0
	.byte	8
	.value	129
	.byte	0
	.byte	8
	.value	65
	.byte	0
	.byte	9
	.value	226
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	89
	.byte	0
	.byte	8
	.value	25
	.byte	0
	.byte	9
	.value	146
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	121
	.byte	0
	.byte	8
	.value	57
	.byte	0
	.byte	9
	.value	210
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	105
	.byte	0
	.byte	8
	.value	41
	.byte	0
	.byte	9
	.value	178
	.byte	0
	.byte	8
	.value	9
	.byte	0
	.byte	8
	.value	137
	.byte	0
	.byte	8
	.value	73
	.byte	0
	.byte	9
	.value	242
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	85
	.byte	0
	.byte	8
	.value	21
	.byte	16
	.byte	8
	.value	258
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	117
	.byte	0
	.byte	8
	.value	53
	.byte	0
	.byte	9
	.value	202
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	101
	.byte	0
	.byte	8
	.value	37
	.byte	0
	.byte	9
	.value	170
	.byte	0
	.byte	8
	.value	5
	.byte	0
	.byte	8
	.value	133
	.byte	0
	.byte	8
	.value	69
	.byte	0
	.byte	9
	.value	234
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	93
	.byte	0
	.byte	8
	.value	29
	.byte	0
	.byte	9
	.value	154
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	125
	.byte	0
	.byte	8
	.value	61
	.byte	0
	.byte	9
	.value	218
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	109
	.byte	0
	.byte	8
	.value	45
	.byte	0
	.byte	9
	.value	186
	.byte	0
	.byte	8
	.value	13
	.byte	0
	.byte	8
	.value	141
	.byte	0
	.byte	8
	.value	77
	.byte	0
	.byte	9
	.value	250
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	83
	.byte	0
	.byte	8
	.value	19
	.byte	21
	.byte	8
	.value	195
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	115
	.byte	0
	.byte	8
	.value	51
	.byte	0
	.byte	9
	.value	198
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	99
	.byte	0
	.byte	8
	.value	35
	.byte	0
	.byte	9
	.value	166
	.byte	0
	.byte	8
	.value	3
	.byte	0
	.byte	8
	.value	131
	.byte	0
	.byte	8
	.value	67
	.byte	0
	.byte	9
	.value	230
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	91
	.byte	0
	.byte	8
	.value	27
	.byte	0
	.byte	9
	.value	150
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	123
	.byte	0
	.byte	8
	.value	59
	.byte	0
	.byte	9
	.value	214
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	107
	.byte	0
	.byte	8
	.value	43
	.byte	0
	.byte	9
	.value	182
	.byte	0
	.byte	8
	.value	11
	.byte	0
	.byte	8
	.value	139
	.byte	0
	.byte	8
	.value	75
	.byte	0
	.byte	9
	.value	246
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	87
	.byte	0
	.byte	8
	.value	23
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	119
	.byte	0
	.byte	8
	.value	55
	.byte	0
	.byte	9
	.value	206
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	103
	.byte	0
	.byte	8
	.value	39
	.byte	0
	.byte	9
	.value	174
	.byte	0
	.byte	8
	.value	7
	.byte	0
	.byte	8
	.value	135
	.byte	0
	.byte	8
	.value	71
	.byte	0
	.byte	9
	.value	238
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	95
	.byte	0
	.byte	8
	.value	31
	.byte	0
	.byte	9
	.value	158
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	127
	.byte	0
	.byte	8
	.value	63
	.byte	0
	.byte	9
	.value	222
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	111
	.byte	0
	.byte	8
	.value	47
	.byte	0
	.byte	9
	.value	190
	.byte	0
	.byte	8
	.value	15
	.byte	0
	.byte	8
	.value	143
	.byte	0
	.byte	8
	.value	79
	.byte	0
	.byte	9
	.value	254
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	80
	.byte	0
	.byte	8
	.value	16
	.byte	20
	.byte	8
	.value	115
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	112
	.byte	0
	.byte	8
	.value	48
	.byte	0
	.byte	9
	.value	193
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	96
	.byte	0
	.byte	8
	.value	32
	.byte	0
	.byte	9
	.value	161
	.byte	0
	.byte	8
	.value	0
	.byte	0
	.byte	8
	.value	128
	.byte	0
	.byte	8
	.value	64
	.byte	0
	.byte	9
	.value	225
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	88
	.byte	0
	.byte	8
	.value	24
	.byte	0
	.byte	9
	.value	145
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	120
	.byte	0
	.byte	8
	.value	56
	.byte	0
	.byte	9
	.value	209
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	104
	.byte	0
	.byte	8
	.value	40
	.byte	0
	.byte	9
	.value	177
	.byte	0
	.byte	8
	.value	8
	.byte	0
	.byte	8
	.value	136
	.byte	0
	.byte	8
	.value	72
	.byte	0
	.byte	9
	.value	241
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	84
	.byte	0
	.byte	8
	.value	20
	.byte	21
	.byte	8
	.value	227
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	116
	.byte	0
	.byte	8
	.value	52
	.byte	0
	.byte	9
	.value	201
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	100
	.byte	0
	.byte	8
	.value	36
	.byte	0
	.byte	9
	.value	169
	.byte	0
	.byte	8
	.value	4
	.byte	0
	.byte	8
	.value	132
	.byte	0
	.byte	8
	.value	68
	.byte	0
	.byte	9
	.value	233
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	92
	.byte	0
	.byte	8
	.value	28
	.byte	0
	.byte	9
	.value	153
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	124
	.byte	0
	.byte	8
	.value	60
	.byte	0
	.byte	9
	.value	217
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	108
	.byte	0
	.byte	8
	.value	44
	.byte	0
	.byte	9
	.value	185
	.byte	0
	.byte	8
	.value	12
	.byte	0
	.byte	8
	.value	140
	.byte	0
	.byte	8
	.value	76
	.byte	0
	.byte	9
	.value	249
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	82
	.byte	0
	.byte	8
	.value	18
	.byte	21
	.byte	8
	.value	163
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	114
	.byte	0
	.byte	8
	.value	50
	.byte	0
	.byte	9
	.value	197
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	98
	.byte	0
	.byte	8
	.value	34
	.byte	0
	.byte	9
	.value	165
	.byte	0
	.byte	8
	.value	2
	.byte	0
	.byte	8
	.value	130
	.byte	0
	.byte	8
	.value	66
	.byte	0
	.byte	9
	.value	229
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	90
	.byte	0
	.byte	8
	.value	26
	.byte	0
	.byte	9
	.value	149
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	122
	.byte	0
	.byte	8
	.value	58
	.byte	0
	.byte	9
	.value	213
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	106
	.byte	0
	.byte	8
	.value	42
	.byte	0
	.byte	9
	.value	181
	.byte	0
	.byte	8
	.value	10
	.byte	0
	.byte	8
	.value	138
	.byte	0
	.byte	8
	.value	74
	.byte	0
	.byte	9
	.value	245
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	86
	.byte	0
	.byte	8
	.value	22
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	118
	.byte	0
	.byte	8
	.value	54
	.byte	0
	.byte	9
	.value	205
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	102
	.byte	0
	.byte	8
	.value	38
	.byte	0
	.byte	9
	.value	173
	.byte	0
	.byte	8
	.value	6
	.byte	0
	.byte	8
	.value	134
	.byte	0
	.byte	8
	.value	70
	.byte	0
	.byte	9
	.value	237
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	94
	.byte	0
	.byte	8
	.value	30
	.byte	0
	.byte	9
	.value	157
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	126
	.byte	0
	.byte	8
	.value	62
	.byte	0
	.byte	9
	.value	221
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	110
	.byte	0
	.byte	8
	.value	46
	.byte	0
	.byte	9
	.value	189
	.byte	0
	.byte	8
	.value	14
	.byte	0
	.byte	8
	.value	142
	.byte	0
	.byte	8
	.value	78
	.byte	0
	.byte	9
	.value	253
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	81
	.byte	0
	.byte	8
	.value	17
	.byte	21
	.byte	8
	.value	131
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	113
	.byte	0
	.byte	8
	.value	49
	.byte	0
	.byte	9
	.value	195
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	97
	.byte	0
	.byte	8
	.value	33
	.byte	0
	.byte	9
	.value	163
	.byte	0
	.byte	8
	.value	1
	.byte	0
	.byte	8
	.value	129
	.byte	0
	.byte	8
	.value	65
	.byte	0
	.byte	9
	.value	227
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	89
	.byte	0
	.byte	8
	.value	25
	.byte	0
	.byte	9
	.value	147
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	121
	.byte	0
	.byte	8
	.value	57
	.byte	0
	.byte	9
	.value	211
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	105
	.byte	0
	.byte	8
	.value	41
	.byte	0
	.byte	9
	.value	179
	.byte	0
	.byte	8
	.value	9
	.byte	0
	.byte	8
	.value	137
	.byte	0
	.byte	8
	.value	73
	.byte	0
	.byte	9
	.value	243
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	85
	.byte	0
	.byte	8
	.value	21
	.byte	16
	.byte	8
	.value	258
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	117
	.byte	0
	.byte	8
	.value	53
	.byte	0
	.byte	9
	.value	203
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	101
	.byte	0
	.byte	8
	.value	37
	.byte	0
	.byte	9
	.value	171
	.byte	0
	.byte	8
	.value	5
	.byte	0
	.byte	8
	.value	133
	.byte	0
	.byte	8
	.value	69
	.byte	0
	.byte	9
	.value	235
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	93
	.byte	0
	.byte	8
	.value	29
	.byte	0
	.byte	9
	.value	155
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	125
	.byte	0
	.byte	8
	.value	61
	.byte	0
	.byte	9
	.value	219
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	109
	.byte	0
	.byte	8
	.value	45
	.byte	0
	.byte	9
	.value	187
	.byte	0
	.byte	8
	.value	13
	.byte	0
	.byte	8
	.value	141
	.byte	0
	.byte	8
	.value	77
	.byte	0
	.byte	9
	.value	251
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	83
	.byte	0
	.byte	8
	.value	19
	.byte	21
	.byte	8
	.value	195
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	115
	.byte	0
	.byte	8
	.value	51
	.byte	0
	.byte	9
	.value	199
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	99
	.byte	0
	.byte	8
	.value	35
	.byte	0
	.byte	9
	.value	167
	.byte	0
	.byte	8
	.value	3
	.byte	0
	.byte	8
	.value	131
	.byte	0
	.byte	8
	.value	67
	.byte	0
	.byte	9
	.value	231
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	91
	.byte	0
	.byte	8
	.value	27
	.byte	0
	.byte	9
	.value	151
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	123
	.byte	0
	.byte	8
	.value	59
	.byte	0
	.byte	9
	.value	215
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	107
	.byte	0
	.byte	8
	.value	43
	.byte	0
	.byte	9
	.value	183
	.byte	0
	.byte	8
	.value	11
	.byte	0
	.byte	8
	.value	139
	.byte	0
	.byte	8
	.value	75
	.byte	0
	.byte	9
	.value	247
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	87
	.byte	0
	.byte	8
	.value	23
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	119
	.byte	0
	.byte	8
	.value	55
	.byte	0
	.byte	9
	.value	207
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	103
	.byte	0
	.byte	8
	.value	39
	.byte	0
	.byte	9
	.value	175
	.byte	0
	.byte	8
	.value	7
	.byte	0
	.byte	8
	.value	135
	.byte	0
	.byte	8
	.value	71
	.byte	0
	.byte	9
	.value	239
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	95
	.byte	0
	.byte	8
	.value	31
	.byte	0
	.byte	9
	.value	159
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	127
	.byte	0
	.byte	8
	.value	63
	.byte	0
	.byte	9
	.value	223
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	111
	.byte	0
	.byte	8
	.value	47
	.byte	0
	.byte	9
	.value	191
	.byte	0
	.byte	8
	.value	15
	.byte	0
	.byte	8
	.value	143
	.byte	0
	.byte	8
	.value	79
	.byte	0
	.byte	9
	.value	255
	.hidden	zcfree
	.hidden	zcalloc
	.hidden	inflate_fast
	.hidden	inflate_table
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
