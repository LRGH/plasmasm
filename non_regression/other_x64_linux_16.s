	.file	"infback.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	inflateBackInit_
	.type	inflateBackInit_, @function
inflateBackInit_:
.LFB22:
	.cfi_startproc
	testq	%rcx, %rcx
	je	.L7
	cmpb	$49, (%rcx)
	jne	.L7
	cmpl	$112, %r8d
	jne	.L7
	testq	%rdi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	je	.L9
	testq	%rdx, %rdx
	movq	%rdx, %r12
	je	.L9
	leal	-8(%rsi), %eax
	movl	%esi, %ebp
	cmpl	$7, %eax
	ja	.L9
	movq	64(%rdi), %rax
	movq	$0, 48(%rdi)
	testq	%rax, %rax
	je	.L3
	cmpq	$0, 72(%rbx)
	movq	80(%rdi), %rdi
	je	.L14
.L5:
	movl	$7152, %edx
	movl	$1, %esi
	call	*%rax
	testq	%rax, %rax
	je	.L10
	movl	$1, %esi
	movl	%ebp, %ecx
	movq	%rax, 56(%rbx)
	sall	%cl, %esi
	movl	$32768, 20(%rax)
	movl	%ebp, 48(%rax)
	movl	%esi, 52(%rax)
	movq	%r12, 64(%rax)
	movl	$0, 60(%rax)
	movl	$0, 56(%rax)
	xorl	%eax, %eax
.L2:
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
.L3:
	.cfi_restore_state
	movq	$zcalloc, 64(%rdi)
	movq	$0, 80(%rdi)
	xorl	%edi, %edi
	cmpq	$0, 72(%rbx)
	movl	$zcalloc, %eax
	jne	.L5
	.p2align 4,,10
	.p2align 3
.L14:
	movq	$zcfree, 72(%rbx)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	movl	$-6, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$-2, %eax
	jmp	.L2
.L10:
	movl	$-4, %eax
	jmp	.L2
	.cfi_endproc
.LFE22:
	.size	inflateBackInit_, .-inflateBackInit_
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"invalid block type"
.LC2:
	.string	"invalid stored block lengths"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"too many length or distance symbols"
	.section	.rodata.str1.1
.LC4:
	.string	"invalid code lengths set"
.LC5:
	.string	"invalid bit length repeat"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"invalid code -- missing end-of-block"
	.section	.rodata.str1.1
.LC7:
	.string	"invalid literal/lengths set"
.LC8:
	.string	"invalid distances set"
.LC9:
	.string	"invalid literal/length code"
.LC10:
	.string	"invalid distance code"
.LC11:
	.string	"invalid distance too far back"
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	inflateBack
	.type	inflateBack, @function
inflateBack:
.LFB24:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L148
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	56(%rdi), %r14
	testq	%r14, %r14
	je	.L149
	movq	(%rdi), %rax
	movq	$0, 48(%rdi)
	movl	$11, (%r14)
	movl	$0, 4(%r14)
	movl	$0, 56(%r14)
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	je	.L150
	movl	8(%rdi), %ebp
.L17:
	movq	%rsi, 16(%rsp)
	leaq	1360(%r14), %rsi
	movq	64(%r14), %rax
	movl	52(%r14), %r13d
	movq	%r8, 40(%rsp)
	xorl	%r15d, %r15d
	movq	%rsi, 56(%rsp)
	leaq	784(%r14), %rsi
	movq	%rcx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rdx, 8(%rsp)
	movl	$11, %eax
	movq	%rsi, 48(%rsp)
	leaq	112(%r14), %rsi
	movq	%rdi, (%rsp)
	xorl	%ebx, %ebx
	movq	%rsi, 64(%rsp)
.L18:
	subl	$11, %eax
	cmpl	$18, %eax
	ja	.L19
.L347:
	jmp	*.L21(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L21:
	.quad	.L20
	.quad	.L19
	.quad	.L22
	.quad	.L19
	.quad	.L19
	.quad	.L23
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L24
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L25
	.quad	.L26
	.text
	.p2align 4,,10
	.p2align 3
.L26:
	movq	120(%rsp), %rdx
	movl	$-3, %eax
.L27:
	movq	(%rsp), %rdi
	movq	%rdx, (%rdi)
	movl	%ebp, 8(%rdi)
.L336:
	addq	$136, %rsp
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
.L25:
	.cfi_restore_state
	movl	52(%r14), %edx
	cmpl	%r13d, %edx
	ja	.L145
	movq	120(%rsp), %rdx
	movl	$1, %eax
	jmp	.L27
.L92:
	movl	$20, (%r14)
	.p2align 4,,10
	.p2align 3
.L24:
	cmpl	$5, %ebp
	jbe	.L159
	cmpl	$257, %r13d
	jbe	.L159
	movq	(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	120(%rsp), %rax
	movq	%rsi, 24(%rdi)
	movl	52(%r14), %esi
	cmpl	%esi, 56(%r14)
	movl	%r13d, 32(%rdi)
	movq	%rax, (%rdi)
	movl	%ebp, 8(%rdi)
	movq	%rbx, 72(%r14)
	movl	%r15d, 80(%r14)
	jnb	.L97
	movl	%esi, %eax
	subl	%r13d, %eax
	movl	%eax, 56(%r14)
.L97:
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	call	inflate_fast
	movq	%rbx, %rax
	movq	24(%rbx), %rbx
	movl	80(%r14), %r15d
	movl	32(%rax), %r13d
	movq	%rbx, 24(%rsp)
	movq	%rax, %rbx
	movq	(%rax), %rax
	movl	8(%rbx), %ebp
	movq	72(%r14), %rbx
	movq	%rax, 120(%rsp)
	movl	(%r14), %eax
	subl	$11, %eax
	cmpl	$18, %eax
	jbe	.L347
	.p2align 4,,10
	.p2align 3
.L19:
	movq	120(%rsp), %rdx
	movl	$-2, %eax
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L23:
	cmpl	$13, %r15d
	ja	.L29
	testl	%ebp, %ebp
	je	.L348
.L52:
	movq	120(%rsp), %rax
	movl	%r15d, %ecx
	leal	8(%r15), %r12d
	subl	$1, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
	cmpl	$13, %r12d
	ja	.L154
	testl	%ebp, %ebp
	je	.L349
.L54:
	movq	120(%rsp), %rax
	movl	%r12d, %ecx
	subl	$1, %ebp
	addl	$16, %r15d
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
.L29:
	movq	%rbx, %rdx
	movq	%rbx, %rax
	movl	%ebx, %ecx
	shrq	$5, %rdx
	shrq	$10, %rax
	andl	$31, %ecx
	andl	$31, %edx
	andl	$15, %eax
	addl	$257, %ecx
	addl	$1, %edx
	addl	$4, %eax
	shrq	$14, %rbx
	subl	$14, %r15d
	cmpl	$30, %edx
	movl	%ecx, 124(%r14)
	movl	%edx, 128(%r14)
	movl	%eax, 120(%r14)
	ja	.L158
	cmpl	$286, %ecx
	ja	.L158
	movl	%eax, %esi
	movq	8(%rsp), %r12
	movl	%ebp, %eax
	movq	16(%rsp), %rbp
	movl	$0, 132(%r14)
	xorl	%ecx, %ecx
.L57:
	cmpl	$2, %r15d
	movl	%ecx, %edx
	ja	.L61
	testl	%eax, %eax
	je	.L350
.L58:
	movq	120(%rsp), %rdx
	movl	120(%r14), %esi
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rsp)
	movzbl	(%rdx), %edx
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rdx
	addq	%rdx, %rbx
	movl	132(%r14), %edx
.L61:
	leal	1(%rdx), %ecx
	movzwl	order.3769(%rdx,%rdx), %edx
	movl	%ebx, %edi
	andl	$7, %edi
	shrq	$3, %rbx
	subl	$3, %r15d
	cmpl	%esi, %ecx
	movl	%ecx, 132(%r14)
	movw	%di, 144(%r14,%rdx,2)
	jb	.L57
	cmpl	$18, %ecx
	movl	%eax, %ebp
	ja	.L62
	.p2align 4,,10
	.p2align 3
.L63:
	movl	%ecx, %eax
	addl	$1, %ecx
	xorl	%edx, %edx
	movzwl	order.3769(%rax,%rax), %eax
	cmpl	$18, %ecx
	movw	%dx, 144(%r14,%rax,2)
	jbe	.L63
	movl	%ecx, 132(%r14)
.L62:
	movq	56(%rsp), %rax
	leaq	144(%r14), %rdi
	movq	48(%rsp), %r9
	movq	64(%rsp), %r8
	movl	$7, 112(%r14)
	movl	$19, %edx
	movq	%rdi, 88(%rsp)
	movq	%rdi, %rsi
	xorl	%edi, %edi
	movq	%rax, 136(%r14)
	movq	%rax, 96(%r14)
	leaq	136(%r14), %rax
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	call	inflate_table
	testl	%eax, %eax
	je	.L64
	movq	(%rsp), %rax
	movq	$.LC4, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L22:
	movl	%r15d, %ecx
	andl	$-8, %r15d
	andl	$7, %ecx
	shrq	%cl, %rbx
	cmpl	$31, %r15d
	ja	.L41
	testl	%ebp, %ebp
	je	.L351
.L42:
	movq	120(%rsp), %rax
	movl	%r15d, %ecx
	leal	8(%r15), %r12d
	subl	$1, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
	cmpl	$31, %r12d
	ja	.L153
	testl	%ebp, %ebp
	je	.L352
.L44:
	movq	120(%rsp), %rax
	movl	%r12d, %ecx
	leal	16(%r15), %r12d
	subl	$1, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
	cmpl	$31, %r12d
	ja	.L153
	testl	%ebp, %ebp
	je	.L353
.L45:
	movq	120(%rsp), %rax
	movl	%r12d, %ecx
	leal	24(%r15), %r12d
	subl	$1, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
	cmpl	$31, %r12d
	ja	.L153
	testl	%ebp, %ebp
	je	.L354
.L46:
	movq	120(%rsp), %rax
	movl	%r12d, %ecx
	subl	$1, %ebp
	addl	$32, %r15d
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
.L41:
	movq	%rbx, %rax
	movzwl	%bx, %edx
	shrq	$16, %rax
	xorq	$65535, %rax
	cmpq	%rax, %rdx
	je	.L47
	movq	(%rsp), %rax
	movq	$.LC2, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L20:
	movl	4(%r14), %ecx
	testl	%ecx, %ecx
	jne	.L30
	cmpl	$2, %r15d
	ja	.L32
	testl	%ebp, %ebp
	je	.L355
.L34:
	movq	120(%rsp), %rax
	movl	%r15d, %ecx
	subl	$1, %ebp
	addl	$8, %r15d
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %rbx
.L32:
	movl	%ebx, %eax
	shrq	%rbx
	andl	$1, %eax
	movl	%eax, 4(%r14)
	movl	%ebx, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.L37
	cmpl	$3, %eax
	je	.L38
	cmpl	$1, %eax
	je	.L39
	movl	$13, (%r14)
	movl	$13, %eax
.L40:
	shrq	$2, %rbx
	subl	$3, %r15d
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L30:
	movl	%r15d, %ecx
	movl	$28, (%r14)
	andl	$-8, %r15d
	andl	$7, %ecx
	movl	$28, %eax
	shrq	%cl, %rbx
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L145:
	subl	%r13d, %edx
	movq	64(%r14), %rsi
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movq	120(%rsp), %rdx
	je	.L356
.L343:
	movl	$-5, %eax
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L349:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L54
	.p2align 4,,10
	.p2align 3
.L35:
	xorl	%edx, %edx
	movl	$-5, %eax
	xorl	%ebp, %ebp
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L353:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L45
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L348:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L52
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L351:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L42
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L352:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L44
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L354:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L46
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L159:
	movl	112(%r14), %r9d
	movl	$1, %eax
	movq	96(%r14), %rsi
	movl	%ebx, %r8d
	movl	%r9d, %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	%ebx, %eax
	leaq	(%rsi,%rax,4), %rdx
	movzbl	1(%rdx), %r12d
	movzbl	(%rdx), %edi
	movzwl	2(%rdx), %edx
	cmpl	%r12d, %r15d
	movl	%r12d, %eax
	jnb	.L95
	movl	%ebp, %eax
	movq	16(%rsp), %r12
	movq	%rbx, %rbp
	movq	8(%rsp), %rbx
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L98:
	movq	120(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rsp)
	movzbl	(%rdx), %edx
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rdx
	movl	%r9d, %ecx
	addq	%rdx, %rbp
	movl	$1, %edx
	sall	%cl, %edx
	movl	%ebp, %r8d
	subl	$1, %edx
	andl	%ebp, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %r10d
	movzbl	(%rdx), %edi
	movzwl	2(%rdx), %edx
	cmpl	%r15d, %r10d
	jbe	.L357
.L99:
	testl	%eax, %eax
	jne	.L98
	leaq	120(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%r12
	testl	%eax, %eax
	je	.L35
	movq	96(%r14), %rsi
	movl	112(%r14), %r9d
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L47:
	movzwl	%bx, %r12d
	testl	%r12d, %r12d
	movl	%r12d, 84(%r14)
	je	.L48
	movl	%r12d, %ebx
	movq	24(%rsp), %r15
	movq	%r14, %r12
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L49:
	testl	%r13d, %r13d
	je	.L358
.L50:
	cmpl	%ebp, %r13d
	movl	%ebp, %ecx
	movq	120(%rsp), %rsi
	cmovbe	%r13d, %ecx
	movq	%r15, %rdi
	cmpl	%ebx, %ecx
	cmovbe	%ecx, %ebx
	movl	%ebx, %r14d
	subl	%ebx, %ebp
	subl	%ebx, %r13d
	movq	%r14, %rdx
	addq	%r14, %r15
	call	memcpy
	movl	84(%r12), %eax
	addq	%r14, 120(%rsp)
	subl	%ebx, %eax
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	%eax, 84(%r12)
	je	.L359
.L51:
	testl	%ebp, %ebp
	jne	.L49
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L35
	testl	%r13d, %r13d
	jne	.L50
.L358:
	movl	52(%r12), %r13d
	movq	64(%r12), %r15
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rax
	movl	%r13d, 56(%r12)
	movl	%r13d, %edx
	movq	%r15, %rsi
	call	*%rax
	testl	%eax, %eax
	je	.L50
.L342:
	movq	120(%rsp), %rdx
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L158:
	movq	(%rsp), %rax
	movq	$.LC3, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L350:
	leaq	120(%rsp), %rsi
	movq	%r12, %rdi
	call	*%rbp
	testl	%eax, %eax
	jne	.L58
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L150:
	xorl	%ebp, %ebp
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L357:
	movq	%rbp, %rbx
	movl	%r10d, %r12d
	movl	%eax, %ebp
	movl	%r10d, %eax
.L95:
	testb	%dil, %dil
	je	.L100
	testb	$-16, %dil
	jne	.L101
	leal	(%rdi,%r12), %ecx
	movl	$1, %edi
	sall	%cl, %edi
	movl	%eax, %ecx
	leal	-1(%rdi), %r9d
	andl	%r9d, %r8d
	shrl	%cl, %r8d
	leal	(%r8,%rdx), %eax
	leaq	(%rsi,%rax,4), %rcx
	movzbl	1(%rcx), %r8d
	movzbl	(%rcx), %edi
	movzwl	2(%rcx), %eax
	leal	(%r12,%r8), %ecx
	cmpl	%ecx, %r15d
	jnb	.L102
	movl	%r12d, %edi
	movl	%ebp, %eax
	movl	%r13d, 72(%rsp)
	movq	%rbx, %r12
	movl	%r9d, %r13d
	movl	%edx, %ebp
	movl	%edi, %ebx
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L103:
	movq	120(%rsp), %rcx
	movl	%r13d, %r8d
	subl	$1, %eax
	leaq	1(%rcx), %rdi
	movq	%rdi, 120(%rsp)
	movzbl	(%rcx), %edi
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rdi
	movl	%ebx, %ecx
	addq	%rdi, %r12
	andl	%r12d, %r8d
	shrl	%cl, %r8d
	addl	%ebp, %r8d
	leaq	(%rsi,%r8,4), %rcx
	movzbl	1(%rcx), %r8d
	movzbl	(%rcx), %edi
	movzwl	2(%rcx), %r11d
	leal	(%r8,%rbx), %ecx
	cmpl	%r15d, %ecx
	jbe	.L360
.L104:
	testl	%eax, %eax
	jne	.L103
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L35
	movq	96(%r14), %rsi
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L100:
	movl	%eax, %ecx
	subl	%r12d, %r15d
	movl	%edx, 84(%r14)
	shrq	%cl, %rbx
.L147:
	testl	%r13d, %r13d
	je	.L361
.L106:
	movq	24(%rsp), %rax
	subl	$1, %r13d
	movb	%dl, (%rax)
	addq	$1, %rax
	movl	$20, (%r14)
	movq	%rax, 24(%rsp)
	movl	$20, %eax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L356:
	movb	$1, %al
	jmp	.L27
.L38:
	movq	(%rsp), %rax
	movq	$.LC1, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L359:
	movq	%r15, 24(%rsp)
	movq	%r12, %r14
.L48:
	movl	$11, (%r14)
	movl	$11, %eax
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L355:
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L34
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L153:
	movl	%r12d, %r15d
	jmp	.L41
.L101:
	movl	%eax, %ecx
	subl	%r12d, %r15d
	movl	%edx, 84(%r14)
	shrq	%cl, %rbx
.L105:
	testb	$32, %dil
	je	.L108
	movl	$11, (%r14)
	movl	$11, %eax
	jmp	.L18
.L108:
	testb	$64, %dil
	je	.L109
	movq	(%rsp), %rax
	movq	$.LC9, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
.L39:
	movq	$lenfix.3747, 96(%r14)
	movl	$9, 112(%r14)
	movl	$20, %eax
	movq	$distfix.3748, 104(%r14)
	movl	$5, 116(%r14)
	movl	$20, (%r14)
	jmp	.L40
.L37:
	movl	$16, (%r14)
	movl	$16, %eax
	jmp	.L40
.L360:
	movl	72(%rsp), %r13d
	movl	%ebx, %esi
	movl	%eax, %ebp
	movq	%r12, %rbx
	movl	%r11d, %eax
	movl	%esi, %r12d
.L102:
	movl	%r12d, %ecx
	subl	%r12d, %r15d
	movzwl	%ax, %edx
	shrq	%cl, %rbx
	movl	%r8d, %ecx
	subl	%r8d, %r15d
	shrq	%cl, %rbx
	testb	%dil, %dil
	movl	%edx, 84(%r14)
	jne	.L105
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L361:
	movq	64(%r14), %rax
	movl	52(%r14), %r13d
	movq	40(%rsp), %rdi
	movq	%rax, 24(%rsp)
	movq	%rax, %rsi
	movl	%r13d, 56(%r14)
	movl	%r13d, %edx
	movq	32(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L342
	movl	84(%r14), %edx
	jmp	.L106
.L109:
	andl	$15, %edi
	movzbl	%dil, %esi
	testb	%dil, %dil
	movl	%esi, 92(%r14)
	je	.L110
	cmpl	%r15d, %esi
	jbe	.L111
	movl	%ebp, %eax
	movq	16(%rsp), %r12
	movq	%rbx, %rbp
	movq	8(%rsp), %rbx
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L112:
	movq	120(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rsp)
	movzbl	(%rdx), %edx
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rdx
	addq	%rdx, %rbp
	cmpl	%esi, %r15d
	jnb	.L362
.L113:
	testl	%eax, %eax
	jne	.L112
	leaq	120(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%r12
	testl	%eax, %eax
	je	.L35
	movl	92(%r14), %esi
	jmp	.L112
.L154:
	movl	%r12d, %r15d
	jmp	.L29
.L362:
	movq	%rbp, %rbx
	movl	%eax, %ebp
.L111:
	movl	%esi, %ecx
	movl	$1, %eax
	subl	%esi, %r15d
	sall	%cl, %eax
	subl	$1, %eax
	andl	%ebx, %eax
	addl	%eax, 84(%r14)
	shrq	%cl, %rbx
.L110:
	movl	116(%r14), %r10d
	movl	$1, %eax
	movq	104(%r14), %rdx
	movl	%ebx, %r9d
	movl	%r10d, %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	%ebx, %eax
	leaq	(%rdx,%rax,4), %rcx
	movzbl	1(%rcx), %r12d
	movzbl	(%rcx), %edi
	movzwl	2(%rcx), %esi
	cmpl	%r12d, %r15d
	movl	%r12d, %eax
	movl	%r12d, %r8d
	jnb	.L114
	movl	%ebp, %eax
	movq	16(%rsp), %r12
	movq	%rbx, %rbp
	movq	8(%rsp), %rbx
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L115:
	movq	120(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movzbl	(%rcx), %esi
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rsi
	movl	%r10d, %ecx
	addq	%rsi, %rbp
	movl	$1, %esi
	sall	%cl, %esi
	movl	%ebp, %r9d
	subl	$1, %esi
	andl	%ebp, %esi
	leaq	(%rdx,%rsi,4), %rcx
	movzbl	1(%rcx), %r11d
	movzbl	(%rcx), %edi
	movzwl	2(%rcx), %esi
	movzbl	%r11b, %ecx
	cmpl	%r15d, %ecx
	movl	%ecx, %r8d
	jbe	.L363
.L116:
	testl	%eax, %eax
	jne	.L115
	leaq	120(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%r12
	testl	%eax, %eax
	je	.L35
	movq	104(%r14), %rdx
	movl	116(%r14), %r10d
	jmp	.L115
.L363:
	movq	%rbp, %rbx
	movl	%ecx, %r12d
	movl	%eax, %ebp
	movl	%r11d, %eax
.L114:
	testb	$-16, %dil
	jne	.L364
	leal	(%rdi,%r12), %ecx
	movzwl	%si, %r8d
	movl	$1, %esi
	sall	%cl, %esi
	movl	%eax, %ecx
	leal	-1(%rsi), %r10d
	andl	%r10d, %r9d
	shrl	%cl, %r9d
	leal	(%r9,%r8), %eax
	leaq	(%rdx,%rax,4), %rax
	movzbl	1(%rax), %r9d
	movzbl	(%rax), %edi
	movzwl	2(%rax), %esi
	leal	(%r12,%r9), %ecx
	movl	%r9d, %eax
	cmpl	%ecx, %r15d
	jnb	.L119
	movl	%ebp, %eax
	movl	%r13d, 72(%rsp)
	movl	%r8d, %ebp
	movl	%r10d, %r13d
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L120:
	movq	120(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movzbl	(%rcx), %esi
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rsi
	movl	%r12d, %ecx
	addq	%rsi, %rbx
	movl	%r13d, %esi
	andl	%ebx, %esi
	shrl	%cl, %esi
	leal	(%rsi,%rbp), %ecx
	leaq	(%rdx,%rcx,4), %rcx
	movzbl	1(%rcx), %r9d
	movzbl	(%rcx), %edi
	movzwl	2(%rcx), %esi
	leal	(%r9,%r12), %ecx
	cmpl	%r15d, %ecx
	jbe	.L365
.L121:
	testl	%eax, %eax
	jne	.L120
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L35
	movq	104(%r14), %rdx
	jmp	.L120
.L149:
	movl	$-2, %eax
	jmp	.L336
.L148:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movl	$-2, %eax
	ret
.L64:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	124(%r14), %edx
	movl	128(%r14), %r9d
	movl	%ebp, %eax
	movl	$0, 132(%r14)
	movl	%r13d, 80(%rsp)
	movq	%r14, %r13
	movq	8(%rsp), %rbp
	movq	%rbx, %r14
	movq	16(%rsp), %rbx
	xorl	%ecx, %ecx
	addl	%edx, %r9d
	movl	$1, %r12d
.L65:
	cmpl	%ecx, %r9d
	jbe	.L87
	movl	112(%r13), %edi
	movl	%r12d, %edx
	movq	96(%r13), %rsi
	movl	%edi, %ecx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%r14d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %ecx
	movzwl	2(%rdx), %r9d
	movzbl	%cl, %edx
	cmpl	%edx, %r15d
	jb	.L67
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L66:
	movq	120(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rsp)
	movzbl	(%rdx), %edx
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rdx
	movl	%edi, %ecx
	addq	%rdx, %r14
	movl	%r12d, %edx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%r14d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %ecx
	movzwl	2(%rdx), %r9d
	movzbl	%cl, %edx
	cmpl	%r15d, %edx
	jbe	.L88
.L67:
	testl	%eax, %eax
	jne	.L66
	leaq	120(%rsp), %rsi
	movq	%rbp, %rdi
	call	*%rbx
	testl	%eax, %eax
	je	.L35
	movq	96(%r13), %rsi
	movl	112(%r13), %edi
	jmp	.L66
.L88:
	cmpw	$15, %r9w
	ja	.L68
	subl	%edx, %r15d
	movl	132(%r13), %edx
	shrq	%cl, %r14
	leal	1(%rdx), %ecx
	movl	%ecx, 132(%r13)
	movw	%r9w, 144(%r13,%rdx,2)
	movl	124(%r13), %edx
	movl	128(%r13), %r9d
	addl	%edx, %r9d
	jmp	.L65
.L68:
	cmpw	$16, %r9w
	je	.L366
	cmpw	$17, %r9w
	je	.L77
	leal	7(%rdx), %r9d
	cmpl	%r9d, %r15d
	jnb	.L79
	movq	%r13, 96(%rsp)
	movl	%edx, 108(%rsp)
	movq	%r14, %r13
	movl	%r9d, %r14d
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L83:
	movq	120(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rsp)
	movzbl	(%rdx), %edx
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rdx
	addq	%rdx, %r13
	cmpl	%r14d, %r15d
	jnb	.L367
.L266:
	testl	%eax, %eax
	jne	.L83
	leaq	120(%rsp), %rsi
	movq	%rbp, %rdi
	call	*%rbx
	testl	%eax, %eax
	jne	.L83
	jmp	.L35
.L364:
	movl	%r12d, %eax
.L118:
	movl	%eax, %ecx
	subl	%r8d, %r15d
	shrq	%cl, %rbx
	testb	$64, %dil
	je	.L122
	movq	(%rsp), %rax
	movq	$.LC10, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
.L122:
	andl	$15, %edi
	movl	%esi, 88(%r14)
	movzbl	%dil, %edx
	testb	%dil, %dil
	movl	%edx, 92(%r14)
	je	.L123
	cmpl	%edx, %r15d
	jnb	.L124
	movl	%ebp, %eax
	movq	16(%rsp), %r12
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L125:
	movq	120(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movzbl	(%rcx), %esi
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rsi
	addq	%rsi, %rbx
	cmpl	%edx, %r15d
	jnb	.L368
.L126:
	testl	%eax, %eax
	jne	.L125
	leaq	120(%rsp), %rsi
	movq	8(%rsp), %rdi
	call	*%r12
	testl	%eax, %eax
	je	.L35
	movl	92(%r14), %edx
	jmp	.L125
.L368:
	movl	%eax, %ebp
.L124:
	movl	%edx, %ecx
	movl	$1, %eax
	subl	%edx, %r15d
	sall	%cl, %eax
	movl	%eax, %esi
	subl	$1, %esi
	andl	%ebx, %esi
	addl	88(%r14), %esi
	shrq	%cl, %rbx
	movl	%esi, 88(%r14)
.L123:
	movl	52(%r14), %r12d
	cmpl	%r12d, 56(%r14)
	movl	$0, %eax
	movl	%r12d, %edi
	cmovb	%r13d, %eax
	subl	%eax, %edi
	cmpl	%esi, %edi
	jb	.L128
	movl	%ebp, 72(%rsp)
	movq	24(%rsp), %rbp
	movq	%rbx, 80(%rsp)
.L129:
	testl	%r13d, %r13d
	movl	%r12d, %edx
	je	.L369
.L130:
	movl	88(%r14), %eax
	subl	%eax, %edx
	cmpl	%edx, %r13d
	jbe	.L132
	movl	%r13d, %ebx
	movl	%edx, %eax
	subl	%edx, %ebx
	addq	%rbp, %rax
	movl	%ebx, %edx
.L133:
	movl	84(%r14), %ecx
	cmpl	%ecx, %edx
	cmova	%ecx, %edx
	subl	%edx, %ecx
	subl	%edx, %r13d
	movl	%ecx, 84(%r14)
	leaq	16(%rax), %rcx
	cmpq	%rcx, %rbp
	leaq	16(%rbp), %rcx
	setnb	%sil
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %sil
	je	.L134
	cmpl	$22, %edx
	jbe	.L134
	movq	%rax, %r8
	negq	%r8
	andl	$15, %r8d
	cmpl	%edx, %r8d
	cmova	%edx, %r8d
	testl	%r8d, %r8d
	je	.L157
	movzbl	(%rax), %edi
	leal	-1(%rdx), %r9d
	cmpl	$1, %r8d
	leaq	1(%rbp), %rcx
	leaq	1(%rax), %rsi
	movb	%dil, 0(%rbp)
	movl	%r9d, %edi
	je	.L135
	movzbl	1(%rax), %edi
	cmpl	$2, %r8d
	leaq	2(%rbp), %rcx
	leaq	2(%rax), %rsi
	movb	%dil, 1(%rbp)
	leal	-2(%rdx), %edi
	je	.L135
	movzbl	2(%rax), %edi
	cmpl	$3, %r8d
	leaq	3(%rbp), %rcx
	leaq	3(%rax), %rsi
	movb	%dil, 2(%rbp)
	leal	-3(%rdx), %edi
	je	.L135
	movzbl	3(%rax), %edi
	cmpl	$4, %r8d
	leaq	4(%rbp), %rcx
	leaq	4(%rax), %rsi
	movb	%dil, 3(%rbp)
	leal	-4(%rdx), %edi
	je	.L135
	movzbl	4(%rax), %edi
	cmpl	$5, %r8d
	leaq	5(%rbp), %rcx
	leaq	5(%rax), %rsi
	movb	%dil, 4(%rbp)
	leal	-5(%rdx), %edi
	je	.L135
	movzbl	5(%rax), %edi
	cmpl	$6, %r8d
	leaq	6(%rbp), %rcx
	leaq	6(%rax), %rsi
	movb	%dil, 5(%rbp)
	leal	-6(%rdx), %edi
	je	.L135
	movzbl	6(%rax), %edi
	cmpl	$7, %r8d
	leaq	7(%rbp), %rcx
	leaq	7(%rax), %rsi
	movb	%dil, 6(%rbp)
	leal	-7(%rdx), %edi
	je	.L135
	movzbl	7(%rax), %edi
	cmpl	$8, %r8d
	leaq	8(%rbp), %rcx
	leaq	8(%rax), %rsi
	movb	%dil, 7(%rbp)
	leal	-8(%rdx), %edi
	je	.L135
	movzbl	8(%rax), %edi
	cmpl	$9, %r8d
	leaq	9(%rbp), %rcx
	leaq	9(%rax), %rsi
	movb	%dil, 8(%rbp)
	leal	-9(%rdx), %edi
	je	.L135
	movzbl	9(%rax), %edi
	cmpl	$10, %r8d
	leaq	10(%rbp), %rcx
	leaq	10(%rax), %rsi
	movb	%dil, 9(%rbp)
	leal	-10(%rdx), %edi
	je	.L135
	movzbl	10(%rax), %edi
	cmpl	$11, %r8d
	leaq	11(%rbp), %rcx
	leaq	11(%rax), %rsi
	movb	%dil, 10(%rbp)
	leal	-11(%rdx), %edi
	je	.L135
	movzbl	11(%rax), %edi
	cmpl	$12, %r8d
	leaq	12(%rbp), %rcx
	leaq	12(%rax), %rsi
	movb	%dil, 11(%rbp)
	leal	-12(%rdx), %edi
	je	.L135
	movzbl	12(%rax), %edi
	cmpl	$13, %r8d
	leaq	13(%rbp), %rcx
	leaq	13(%rax), %rsi
	movb	%dil, 12(%rbp)
	leal	-13(%rdx), %edi
	je	.L135
	movzbl	13(%rax), %edi
	cmpl	$15, %r8d
	leaq	14(%rbp), %rcx
	leaq	14(%rax), %rsi
	movb	%dil, 13(%rbp)
	leal	-14(%rdx), %edi
	jne	.L135
	movzbl	14(%rax), %edi
	leaq	15(%rbp), %rcx
	leaq	15(%rax), %rsi
	movb	%dil, 14(%rbp)
	leal	-15(%rdx), %edi
.L135:
	subl	%r8d, %edx
	movl	%r9d, %ebx
	movl	%r8d, %r12d
	leal	-16(%rdx), %r10d
	subl	%r8d, %ebx
	shrl	$4, %r10d
	addl	$1, %r10d
	movl	%r10d, %r11d
	sall	$4, %r11d
	cmpl	$14, %ebx
	jbe	.L137
	leaq	(%rax,%r12), %rbx
	xorl	%r8d, %r8d
	addq	%rbp, %r12
	xorl	%eax, %eax
.L138:
	movdqa	(%rbx,%rax), %xmm0
	addl	$1, %r8d
	movups	%xmm0, (%r12,%rax)
	addq	$16, %rax
	cmpl	%r8d, %r10d
	ja	.L138
	movl	%r11d, %eax
	subl	%r11d, %edi
	addq	%rax, %rcx
	addq	%rax, %rsi
	cmpl	%edx, %r11d
	je	.L143
.L137:
	movzbl	(%rsi), %eax
	cmpl	$1, %edi
	movb	%al, (%rcx)
	je	.L143
	movzbl	1(%rsi), %eax
	cmpl	$2, %edi
	movb	%al, 1(%rcx)
	je	.L143
	movzbl	2(%rsi), %eax
	cmpl	$3, %edi
	movb	%al, 2(%rcx)
	je	.L143
	movzbl	3(%rsi), %eax
	cmpl	$4, %edi
	movb	%al, 3(%rcx)
	je	.L143
	movzbl	4(%rsi), %eax
	cmpl	$5, %edi
	movb	%al, 4(%rcx)
	je	.L143
	movzbl	5(%rsi), %eax
	cmpl	$6, %edi
	movb	%al, 5(%rcx)
	je	.L143
	movzbl	6(%rsi), %eax
	cmpl	$7, %edi
	movb	%al, 6(%rcx)
	je	.L143
	movzbl	7(%rsi), %eax
	cmpl	$8, %edi
	movb	%al, 7(%rcx)
	je	.L143
	movzbl	8(%rsi), %eax
	cmpl	$9, %edi
	movb	%al, 8(%rcx)
	je	.L143
	movzbl	9(%rsi), %eax
	cmpl	$10, %edi
	movb	%al, 9(%rcx)
	je	.L143
	movzbl	10(%rsi), %eax
	cmpl	$11, %edi
	movb	%al, 10(%rcx)
	je	.L143
	movzbl	11(%rsi), %eax
	cmpl	$12, %edi
	movb	%al, 11(%rcx)
	je	.L143
	movzbl	12(%rsi), %eax
	cmpl	$13, %edi
	movb	%al, 12(%rcx)
	je	.L143
	movzbl	13(%rsi), %eax
	cmpl	$14, %edi
	movb	%al, 13(%rcx)
	je	.L143
	movzbl	14(%rsi), %eax
	movb	%al, 14(%rcx)
.L143:
	movl	84(%r14), %eax
	leaq	1(%rbp,%r9), %rbp
	testl	%eax, %eax
	je	.L370
	movl	52(%r14), %r12d
	jmp	.L129
.L132:
	movq	%rbp, %rbx
	movl	%r13d, %edx
	subq	%rax, %rbx
	movq	%rbx, %rax
	jmp	.L133
.L369:
	movq	64(%r14), %rbp
	movl	%r12d, 56(%r14)
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rax
	movq	%rbp, %rsi
	call	*%rax
	testl	%eax, %eax
	jne	.L371
	movl	52(%r14), %edx
	movl	%r12d, %r13d
	jmp	.L130
.L157:
	movq	%rax, %rsi
	movl	%edx, %edi
	movq	%rbp, %rcx
	leal	-1(%rdx), %r9d
	jmp	.L135
.L134:
	leal	-1(%rdx), %esi
	xorl	%edx, %edx
	movq	%rsi, %r9
	addq	$1, %rsi
	.p2align 4,,10
	.p2align 3
.L142:
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, 0(%rbp,%rdx)
	addq	$1, %rdx
	cmpq	%rsi, %rdx
	jne	.L142
	jmp	.L143
.L365:
	movl	72(%rsp), %r13d
	movl	%eax, %ebp
	movl	%r9d, %eax
.L119:
	movl	%r12d, %ecx
	subl	%r12d, %r15d
	movl	%r9d, %r8d
	shrq	%cl, %rbx
	jmp	.L118
.L367:
	movq	%r13, %r14
	movl	108(%rsp), %edx
	movq	96(%rsp), %r13
.L79:
	movl	%edx, %ecx
	movl	$-7, %edi
	shrq	%cl, %r14
	movl	%r14d, %ecx
	shrq	$7, %r14
	andl	$127, %ecx
	addl	$11, %ecx
.L341:
	movl	132(%r13), %esi
	subl	%edx, %edi
	xorl	%r10d, %r10d
	addl	%edi, %r15d
.L76:
	movl	124(%r13), %edx
	movl	128(%r13), %r9d
	addl	%esi, %ecx
	addl	%edx, %r9d
	cmpl	%r9d, %ecx
	ja	.L344
	.p2align 4,,10
	.p2align 3
.L86:
	movl	%esi, %edi
	addl	$1, %esi
	cmpl	%esi, %ecx
	movw	%r10w, 144(%r13,%rdi,2)
	jne	.L86
	movl	%ecx, 132(%r13)
	jmp	.L65
.L128:
	movq	(%rsp), %rax
	movq	$.LC11, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
.L370:
	movq	%rbp, 24(%rsp)
	movq	80(%rsp), %rbx
	movl	72(%rsp), %ebp
	movl	(%r14), %eax
	jmp	.L18
.L77:
	leal	3(%rdx), %r9d
	cmpl	%r9d, %r15d
	jb	.L82
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L81:
	movq	120(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movzbl	(%rcx), %esi
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rsi
	addq	%rsi, %r14
	cmpl	%r9d, %r15d
	jnb	.L80
.L82:
	testl	%eax, %eax
	jne	.L81
	movl	%edx, 108(%rsp)
	movl	%r9d, 96(%rsp)
	leaq	120(%rsp), %rsi
	movq	%rbp, %rdi
	call	*%rbx
	testl	%eax, %eax
	movl	96(%rsp), %r9d
	movl	108(%rsp), %edx
	jne	.L81
	jmp	.L35
.L366:
	leal	2(%rdx), %r9d
	cmpl	%r9d, %r15d
	jb	.L73
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L72:
	movq	120(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movzbl	(%rcx), %esi
	movl	%r15d, %ecx
	addl	$8, %r15d
	salq	%cl, %rsi
	addq	%rsi, %r14
	cmpl	%r9d, %r15d
	jnb	.L71
.L73:
	testl	%eax, %eax
	jne	.L72
	movl	%edx, 108(%rsp)
	movl	%r9d, 96(%rsp)
	leaq	120(%rsp), %rsi
	movq	%rbp, %rdi
	call	*%rbx
	testl	%eax, %eax
	movl	96(%rsp), %r9d
	movl	108(%rsp), %edx
	jne	.L72
	jmp	.L35
.L71:
	movl	132(%r13), %esi
	movl	%edx, %ecx
	subl	%edx, %r15d
	shrq	%cl, %r14
	testl	%esi, %esi
	je	.L344
	leal	-1(%rsi), %edx
	movl	%r14d, %ecx
	subl	$2, %r15d
	andl	$3, %ecx
	shrq	$2, %r14
	addq	$72, %rdx
	addl	$3, %ecx
	movzwl	0(%r13,%rdx,2), %r10d
	jmp	.L76
.L80:
	movl	%edx, %ecx
	movl	$-3, %edi
	shrq	%cl, %r14
	movl	%r14d, %ecx
	shrq	$3, %r14
	andl	$7, %ecx
	addl	$3, %ecx
	jmp	.L341
.L87:
	movq	%r14, %rbx
	movq	%r13, %r14
	movl	%eax, %ebp
	movl	(%r14), %eax
	movl	80(%rsp), %r13d
	cmpl	$29, %eax
	je	.L18
	cmpw	$0, 656(%r14)
	jne	.L90
	movq	(%rsp), %rax
	movq	$.LC6, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
.L371:
	movl	72(%rsp), %ebp
	jmp	.L342
.L344:
	movl	%eax, %ebp
	movq	(%rsp), %rax
	movq	%r14, %rbx
	movq	%r13, %r14
	movl	80(%rsp), %r13d
	movq	$.LC5, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
.L90:
	movq	56(%rsp), %rax
	movq	48(%rsp), %r9
	movl	$1, %edi
	movq	64(%rsp), %r8
	movq	72(%rsp), %rcx
	movq	88(%rsp), %rsi
	movl	$9, 112(%r14)
	movq	%rax, 136(%r14)
	movq	%rax, 96(%r14)
	call	inflate_table
	testl	%eax, %eax
	je	.L91
	movq	(%rsp), %rax
	movq	$.LC7, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
.L91:
	movq	136(%r14), %rax
	movl	128(%r14), %edx
	leaq	116(%r14), %r8
	movq	48(%rsp), %r9
	movq	72(%rsp), %rcx
	movl	$2, %edi
	movl	$6, 116(%r14)
	movq	%rax, 104(%r14)
	movl	124(%r14), %eax
	leaq	144(%rax,%rax), %rsi
	addq	%r14, %rsi
	call	inflate_table
	testl	%eax, %eax
	je	.L92
	movq	(%rsp), %rax
	movq	$.LC8, 48(%rax)
	movl	$29, (%r14)
	movl	$29, %eax
	jmp	.L18
	.cfi_endproc
.LFE24:
	.size	inflateBack, .-inflateBack
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	inflateBackEnd
	.type	inflateBackEnd, @function
inflateBackEnd:
.LFB25:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L376
	movq	56(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L376
	movq	72(%rdi), %rax
	testq	%rax, %rax
	je	.L376
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	80(%rdi), %rdi
	call	*%rax
	movq	$0, 56(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L376:
	movl	$-2, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	inflateBackEnd, .-inflateBackEnd
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata
	.align 64
	.type	distfix.3748, @object
	.size	distfix.3748, 128
distfix.3748:
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
	.align 64
	.type	lenfix.3747, @object
	.size	lenfix.3747, 2048
lenfix.3747:
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
	.align 32
	.type	order.3769, @object
	.size	order.3769, 38
order.3769:
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
	.hidden	inflate_table
	.hidden	inflate_fast
	.hidden	zcfree
	.hidden	zcalloc
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
