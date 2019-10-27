	.file	"infback.c"
	.text
	.p2align 4,,15
	.globl	inflateBackInit_
	.type	inflateBackInit_, @function
inflateBackInit_:
.LFB48:
	.cfi_startproc
	testq	%rcx, %rcx
	movl	$-6, %eax
	je	.L6
	cmpb	$49, (%rcx)
	jne	.L14
	cmpl	$112, %r8d
	jne	.L14
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	testq	%rdi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	je	.L10
	testq	%rdx, %rdx
	movq	%rdx, %r12
	je	.L10
	leal	-8(%rsi), %eax
	movl	%esi, %ebp
	cmpl	$7, %eax
	ja	.L10
	movq	64(%rdi), %rax
	movq	$0, 48(%rdi)
	testq	%rax, %rax
	je	.L3
	cmpq	$0, 72(%rbx)
	movq	80(%rdi), %rdi
	je	.L16
.L5:
	movl	$7152, %edx
	movl	$1, %esi
	call	*%rax
	testq	%rax, %rax
	je	.L11
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
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L14:
	rep ret
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	$zcalloc, 64(%rdi)
	movq	$0, 80(%rdi)
	xorl	%edi, %edi
	cmpq	$0, 72(%rbx)
	movl	$zcalloc, %eax
	jne	.L5
	.p2align 4,,10
	.p2align 3
.L16:
	movq	$zcfree, 72(%rbx)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L10:
	movl	$-2, %eax
	jmp	.L2
.L6:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	rep ret
.L11:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$-4, %eax
	jmp	.L2
	.cfi_endproc
.LFE48:
	.size	inflateBackInit_, .-inflateBackInit_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"invalid block type"
.LC1:
	.string	"invalid stored block lengths"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"too many length or distance symbols"
	.section	.rodata.str1.1
.LC3:
	.string	"invalid code lengths set"
.LC4:
	.string	"invalid bit length repeat"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"invalid code -- missing end-of-block"
	.section	.rodata.str1.1
.LC6:
	.string	"invalid literal/lengths set"
.LC7:
	.string	"invalid distances set"
.LC8:
	.string	"invalid literal/length code"
.LC9:
	.string	"invalid distance code"
.LC10:
	.string	"invalid distance too far back"
	.text
	.p2align 4,,15
	.globl	inflateBack
	.type	inflateBack, @function
inflateBack:
.LFB50:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
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
	testq	%rdi, %rdi
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	je	.L151
	movq	56(%rdi), %r14
	testq	%r14, %r14
	je	.L151
	movq	(%rdi), %rax
	movq	$0, 48(%rdi)
	movl	$11, (%r14)
	movl	$0, 4(%r14)
	movl	$0, 56(%r14)
	testq	%rax, %rax
	movq	%rax, 112(%rsp)
	je	.L152
	movl	8(%rdi), %ebx
.L19:
	leaq	1360(%r14), %rsi
	movq	64(%r14), %rax
	movl	52(%r14), %r10d
	leaq	784(%r14), %rdi
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	movq	%rsi, 48(%rsp)
	leaq	112(%r14), %rsi
	movq	%rax, 16(%rsp)
	movq	%rdi, 40(%rsp)
	movl	$11, %eax
	movq	%rsi, 56(%rsp)
	movl	%r10d, %r13d
.L20:
	subl	$11, %eax
	cmpl	$18, %eax
	ja	.L21
.L320:
	jmp	*.L23(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L23:
	.quad	.L22
	.quad	.L21
	.quad	.L24
	.quad	.L21
	.quad	.L21
	.quad	.L25
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L26
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L27
	.quad	.L28
	.text
	.p2align 4,,10
	.p2align 3
.L28:
	movq	112(%rsp), %rdx
	movl	$-3, %eax
.L29:
	movq	%rdx, (%r15)
	movl	%ebx, 8(%r15)
.L287:
	addq	$136, %rsp
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
.L27:
	.cfi_restore_state
	movl	52(%r14), %edx
	cmpl	%r13d, %edx
	ja	.L147
	movq	112(%rsp), %rdx
	movl	$1, %eax
	jmp	.L29
.L96:
	movl	$20, (%r14)
	.p2align 4,,10
	.p2align 3
.L26:
	cmpl	$5, %ebx
	jbe	.L161
	cmpl	$257, %r13d
	ja	.L97
.L161:
	movl	112(%r14), %r9d
	movl	$1, %eax
	movq	96(%r14), %rsi
	movl	%r12d, %edi
	movl	%r9d, %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	%r12d, %eax
	leaq	(%rsi,%rax,4), %rdx
	movzbl	1(%rdx), %eax
	movzbl	(%rdx), %r10d
	movzwl	2(%rdx), %r8d
	movzbl	%al, %edx
	cmpl	%edx, %ebp
	jnb	.L99
	movl	%ebx, %eax
	movl	%r13d, 64(%rsp)
	movq	(%rsp), %rbx
	movq	8(%rsp), %r13
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L102:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %edx
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rdx
	movl	%r9d, %ecx
	addq	%rdx, %r12
	movl	$1, %edx
	sall	%cl, %edx
	movl	%r12d, %edi
	subl	$1, %edx
	andl	%r12d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %ecx
	movzbl	(%rdx), %r10d
	movzwl	2(%rdx), %r8d
	movzbl	%cl, %edx
	cmpl	%ebp, %edx
	jbe	.L316
.L103:
	testl	%eax, %eax
	jne	.L102
	leaq	112(%rsp), %rsi
	movq	%r13, %rdi
	call	*%rbx
	testl	%eax, %eax
	je	.L37
	movq	96(%r14), %rsi
	movl	112(%r14), %r9d
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L25:
	cmpl	$13, %ebp
	ja	.L31
	testl	%ebx, %ebx
	je	.L317
.L54:
	movq	112(%rsp), %rax
	movl	%ebp, %ecx
	subl	$1, %ebx
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	leal	8(%rbp), %ecx
	addq	%rax, %r12
	cmpl	$13, %ecx
	ja	.L156
	testl	%ebx, %ebx
	je	.L318
.L56:
	movq	112(%rsp), %rax
	subl	$1, %ebx
	addl	$16, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %r12
.L31:
	movl	%r12d, %eax
	movq	%r12, %rcx
	movq	%r12, %rdx
	andl	$31, %eax
	shrq	$5, %rcx
	shrq	$10, %rdx
	addl	$257, %eax
	andl	$31, %ecx
	andl	$15, %edx
	addl	$1, %ecx
	addl	$4, %edx
	shrq	$14, %r12
	subl	$14, %ebp
	cmpl	$286, %eax
	movl	%eax, 124(%r14)
	movl	%ecx, 128(%r14)
	movl	%edx, 120(%r14)
	jbe	.L319
.L57:
	movl	$29, %eax
	movq	$.LC2, 48(%r15)
	movl	$29, (%r14)
	subl	$11, %eax
	cmpl	$18, %eax
	jbe	.L320
	.p2align 4,,10
	.p2align 3
.L21:
	movq	112(%rsp), %rdx
	movl	$-2, %eax
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L24:
	movl	%ebp, %ecx
	andl	$-8, %ebp
	andl	$7, %ecx
	shrq	%cl, %r12
	cmpl	$31, %ebp
	ja	.L43
	testl	%ebx, %ebx
	je	.L321
.L44:
	movq	112(%rsp), %rax
	movl	%ebp, %ecx
	subl	$1, %ebx
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	leal	8(%rbp), %ecx
	addq	%rax, %r12
	cmpl	$31, %ecx
	ja	.L155
	testl	%ebx, %ebx
	je	.L322
.L46:
	movq	112(%rsp), %rax
	subl	$1, %ebx
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	leal	16(%rbp), %ecx
	addq	%rax, %r12
	cmpl	$31, %ecx
	ja	.L155
	testl	%ebx, %ebx
	je	.L323
.L47:
	movq	112(%rsp), %rax
	subl	$1, %ebx
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	leal	24(%rbp), %ecx
	addq	%rax, %r12
	cmpl	$31, %ecx
	ja	.L155
	testl	%ebx, %ebx
	je	.L324
.L48:
	movq	112(%rsp), %rax
	subl	$1, %ebx
	addl	$32, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %r12
.L43:
	movq	%r12, %rax
	movzwl	%r12w, %edx
	shrq	$16, %rax
	xorq	$65535, %rax
	cmpq	%rax, %rdx
	je	.L49
	movq	$.LC1, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L22:
	movl	4(%r14), %esi
	testl	%esi, %esi
	jne	.L32
	cmpl	$2, %ebp
	ja	.L34
	testl	%ebx, %ebx
	je	.L325
.L36:
	movq	112(%rsp), %rax
	movl	%ebp, %ecx
	subl	$1, %ebx
	addl	$8, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %eax
	salq	%cl, %rax
	addq	%rax, %r12
.L34:
	movl	%r12d, %eax
	shrq	%r12
	andl	$1, %eax
	movl	%eax, 4(%r14)
	movl	%r12d, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.L39
	cmpl	$3, %eax
	je	.L40
	cmpl	$1, %eax
	je	.L41
	movl	$13, (%r14)
	movl	$13, %eax
.L42:
	shrq	$2, %r12
	subl	$3, %ebp
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L32:
	movl	%ebp, %ecx
	movl	$28, (%r14)
	andl	$-8, %ebp
	andl	$7, %ecx
	movl	$28, %eax
	shrq	%cl, %r12
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L319:
	cmpl	$30, %ecx
	ja	.L57
	movl	$0, 132(%r14)
	xorl	%eax, %eax
.L59:
	cmpl	$2, %ebp
	ja	.L157
	testl	%ebx, %ebx
	je	.L326
.L62:
	movq	112(%rsp), %rax
	movl	%ebp, %ecx
	subl	$1, %ebx
	addl	$8, %ebp
	leaq	1(%rax), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rax), %edx
	salq	%cl, %rdx
	movl	132(%r14), %ecx
	addq	%rdx, %r12
	movl	120(%r14), %edx
.L61:
	leal	1(%rcx), %eax
	movzwl	order.4075(%rcx,%rcx), %ecx
	movl	%r12d, %esi
	andl	$7, %esi
	shrq	$3, %r12
	subl	$3, %ebp
	cmpl	%edx, %eax
	movl	%eax, 132(%r14)
	movw	%si, 144(%r14,%rcx,2)
	jb	.L59
	cmpl	$18, %eax
	jbe	.L243
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L327:
	movl	%edx, %eax
.L243:
	leal	1(%rax), %edx
	movzwl	order.4075(%rax,%rax), %eax
	xorl	%ecx, %ecx
	cmpl	$18, %edx
	movw	%cx, 144(%r14,%rax,2)
	jbe	.L327
	movl	%edx, 132(%r14)
.L64:
	movq	48(%rsp), %rax
	movq	40(%rsp), %r9
	leaq	144(%r14), %rsi
	movq	56(%rsp), %r8
	xorl	%edi, %edi
	movl	$7, 112(%r14)
	movl	$19, %edx
	movq	%rsi, 96(%rsp)
	movq	%rax, 136(%r14)
	movq	%rax, 96(%r14)
	leaq	136(%r14), %rax
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	call	inflate_table
	testl	%eax, %eax
	je	.L67
	movq	$.LC3, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L147:
	subl	%r13d, %edx
	movq	64(%r14), %rsi
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movq	112(%rsp), %rdx
	je	.L328
.L314:
	movl	$-5, %eax
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L318:
	movl	%ecx, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	64(%rsp), %ecx
	jne	.L56
	.p2align 4,,10
	.p2align 3
.L37:
	xorl	%edx, %edx
	movl	$-5, %eax
	xorl	%ebx, %ebx
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L323:
	movl	%ecx, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	64(%rsp), %ecx
	jne	.L47
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L322:
	movl	%ecx, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	64(%rsp), %ecx
	jne	.L46
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L317:
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L54
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L321:
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L44
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L324:
	movl	%ecx, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	64(%rsp), %ecx
	jne	.L48
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L49:
	movzwl	%r12w, %r12d
	testl	%r12d, %r12d
	movl	%r12d, 84(%r14)
	je	.L50
	movq	%r15, 64(%rsp)
	movq	16(%rsp), %rbp
	movl	%ebx, %r15d
	movl	%r13d, %ebx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L51:
	testl	%ebx, %ebx
	je	.L329
.L52:
	cmpl	%r15d, %ebx
	movl	%r15d, %r10d
	movl	%r12d, %r13d
	cmovbe	%ebx, %r10d
	movq	112(%rsp), %rsi
	movq	%rbp, %rdi
	cmpl	%r12d, %r10d
	cmovbe	%r10d, %r13d
	movl	%r13d, %r12d
	subl	%r13d, %r15d
	subl	%r13d, %ebx
	movq	%r12, %rdx
	addq	%r12, %rbp
	call	memcpy
	addq	%r12, 112(%rsp)
	movl	84(%r14), %r12d
	subl	%r13d, %r12d
	testl	%r12d, %r12d
	movl	%r12d, 84(%r14)
	je	.L330
.L53:
	testl	%r15d, %r15d
	jne	.L51
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %r15d
	jne	.L51
.L305:
	movq	64(%rsp), %r15
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L329:
	movl	52(%r14), %ebx
	movq	64(%r14), %rbp
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rax
	movl	%ebx, 56(%r14)
	movl	%ebx, %edx
	movq	%rbp, %rsi
	call	*%rax
	testl	%eax, %eax
	je	.L52
	movl	%r15d, %ebx
	movq	112(%rsp), %rdx
	movq	64(%rsp), %r15
	movl	$-5, %eax
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L152:
	xorl	%ebx, %ebx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L97:
	movq	16(%rsp), %rax
	movl	52(%r14), %esi
	cmpl	%esi, 56(%r14)
	movl	%r13d, 32(%r15)
	movl	%ebx, 8(%r15)
	movq	%rax, 24(%r15)
	movq	112(%rsp), %rax
	movq	%rax, (%r15)
	movq	%r12, 72(%r14)
	movl	%ebp, 80(%r14)
	jnb	.L101
	movl	%esi, %eax
	subl	%r13d, %eax
	movl	%eax, 56(%r14)
.L101:
	movq	%r15, %rdi
	call	inflate_fast
	movq	24(%r15), %rax
	movl	32(%r15), %r13d
	movl	8(%r15), %ebx
	movq	72(%r14), %r12
	movl	80(%r14), %ebp
	movq	%rax, 16(%rsp)
	movq	(%r15), %rax
	movq	%rax, 112(%rsp)
	movl	(%r14), %eax
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L316:
	movl	64(%rsp), %r13d
	movl	%eax, %ebx
	movl	%ecx, %eax
.L99:
	testb	%r10b, %r10b
	je	.L104
	testb	$-16, %r10b
	jne	.L105
	leal	(%r10,%rdx), %ecx
	movl	$1, %r9d
	sall	%cl, %r9d
	movl	%eax, %ecx
	subl	$1, %r9d
	andl	%r9d, %edi
	shrl	%cl, %edi
	leal	(%rdi,%r8), %eax
	leaq	(%rsi,%rax,4), %rax
	movzbl	(%rax), %r10d
	movzwl	2(%rax), %edi
	movzbl	1(%rax), %eax
	leal	(%rdx,%rax), %ecx
	cmpl	%ecx, %ebp
	jnb	.L106
	movl	%ebx, %eax
	movl	%r13d, 72(%rsp)
	movq	%r15, 64(%rsp)
	movl	%r8d, %r13d
	movl	%r9d, %r15d
	movl	%edx, %ebx
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L107:
	movq	112(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rdi
	movq	%rdi, 112(%rsp)
	movzbl	(%rcx), %edi
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rdi
	movl	%ebx, %ecx
	addq	%rdi, %r12
	movl	%r15d, %edi
	andl	%r12d, %edi
	shrl	%cl, %edi
	leal	(%rdi,%r13), %ecx
	leaq	(%rsi,%rcx,4), %rcx
	movzbl	(%rcx), %r10d
	movzwl	2(%rcx), %edi
	movzbl	1(%rcx), %ecx
	leal	(%rcx,%rbx), %r11d
	cmpl	%ebp, %r11d
	jbe	.L331
.L108:
	testl	%eax, %eax
	jne	.L107
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L305
	movq	96(%r14), %rsi
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L104:
	movl	%eax, %ecx
	movzwl	%r8w, %edi
	subl	%edx, %ebp
	shrq	%cl, %r12
	movl	%edi, 84(%r14)
.L149:
	testl	%r13d, %r13d
	je	.L332
.L110:
	movq	16(%rsp), %rax
	subl	$1, %r13d
	movb	%dil, (%rax)
	addq	$1, %rax
	movl	$20, (%r14)
	movq	%rax, 16(%rsp)
	movl	$20, %eax
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L328:
	movb	$1, %al
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L40:
	movq	$.LC0, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L326:
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L62
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L330:
	movl	%ebx, %r13d
	movl	%r15d, %ebx
	movq	64(%rsp), %r15
	movq	%rbp, 16(%rsp)
.L50:
	movl	$11, (%r14)
	movl	$11, %eax
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L325:
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L36
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L155:
	movl	%ecx, %ebp
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L105:
	movl	%eax, %ecx
	subl	%edx, %ebp
	movl	%r8d, 84(%r14)
	shrq	%cl, %r12
.L109:
	testb	$32, %r10b
	je	.L112
	movl	$11, (%r14)
	movl	$11, %eax
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L112:
	testb	$64, %r10b
	je	.L113
	movq	$.LC8, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$16, (%r14)
	movl	$16, %eax
	jmp	.L42
.L41:
	movq	$lenfix.4053, 96(%r14)
	movl	$9, 112(%r14)
	movl	$20, %eax
	movq	$distfix.4054, 104(%r14)
	movl	$5, 116(%r14)
	movl	$20, (%r14)
	jmp	.L42
.L331:
	movl	72(%rsp), %r13d
	movq	64(%rsp), %r15
	movl	%ebx, %edx
	movl	%eax, %ebx
	movl	%ecx, %eax
.L106:
	movl	%edx, %ecx
	subl	%edx, %ebp
	movl	%edi, 84(%r14)
	shrq	%cl, %r12
	movl	%eax, %ecx
	subl	%eax, %ebp
	shrq	%cl, %r12
	testb	%r10b, %r10b
	jne	.L109
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L151:
	movl	$-2, %eax
	jmp	.L287
.L332:
	movq	64(%r14), %rax
	movl	52(%r14), %r13d
	movq	32(%rsp), %rdi
	movq	%rax, 16(%rsp)
	movq	%rax, %rsi
	movl	%r13d, 56(%r14)
	movl	%r13d, %edx
	movq	24(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L313
	movl	84(%r14), %edi
	jmp	.L110
.L113:
	andl	$15, %r10d
	testl	%r10d, %r10d
	movl	%r10d, 92(%r14)
	je	.L114
	cmpl	%ebp, %r10d
	jbe	.L115
	movl	%ebx, %eax
	movl	%r13d, 64(%rsp)
	movq	(%rsp), %rbx
	movq	%r12, %r13
	movq	8(%rsp), %r12
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L116:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %edx
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rdx
	addq	%rdx, %r13
	cmpl	%r10d, %ebp
	jnb	.L333
.L117:
	testl	%eax, %eax
	jne	.L116
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	call	*%rbx
	testl	%eax, %eax
	je	.L37
	movl	92(%r14), %r10d
	jmp	.L116
.L156:
	movl	%ecx, %ebp
	.p2align 4,,3
	jmp	.L31
.L333:
	movq	%r13, %r12
	movl	64(%rsp), %r13d
	movl	%eax, %ebx
.L115:
	movl	%r10d, %ecx
	movl	$1, %eax
	subl	%r10d, %ebp
	sall	%cl, %eax
	subl	$1, %eax
	andl	%r12d, %eax
	addl	%eax, 84(%r14)
	shrq	%cl, %r12
.L114:
	movl	116(%r14), %r9d
	movl	$1, %eax
	movq	104(%r14), %rsi
	movl	%r12d, %r11d
	movl	%r9d, %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	%r12d, %eax
	leaq	(%rsi,%rax,4), %rdx
	movzbl	1(%rdx), %eax
	movzbl	(%rdx), %edi
	movzwl	2(%rdx), %r8d
	movzbl	%al, %edx
	cmpl	%edx, %ebp
	movl	%edx, %r10d
	jnb	.L118
	movl	%ebx, %eax
	movl	%r13d, 64(%rsp)
	movq	(%rsp), %rbx
	movq	8(%rsp), %r13
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L119:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %edx
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rdx
	movl	%r9d, %ecx
	addq	%rdx, %r12
	movl	$1, %edx
	sall	%cl, %edx
	movl	%r12d, %r11d
	subl	$1, %edx
	andl	%r12d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %edi
	movzbl	(%rdx), %ecx
	movzwl	2(%rdx), %r8d
	movzbl	%dil, %edx
	cmpl	%ebp, %edx
	movl	%edx, %r10d
	jbe	.L334
.L120:
	testl	%eax, %eax
	jne	.L119
	leaq	112(%rsp), %rsi
	movq	%r13, %rdi
	call	*%rbx
	testl	%eax, %eax
	je	.L37
	movq	104(%r14), %rsi
	movl	116(%r14), %r9d
	jmp	.L119
.L334:
	movl	64(%rsp), %r13d
	movl	%eax, %ebx
	movl	%edi, %eax
	movl	%ecx, %edi
.L118:
	testb	$-16, %dil
	je	.L121
	movl	%edx, %eax
.L122:
	movl	%eax, %ecx
	subl	%r10d, %ebp
	shrq	%cl, %r12
	testb	$64, %dil
	je	.L126
	movq	$.LC9, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
.L157:
	movl	%eax, %ecx
	jmp	.L61
.L67:
	movl	124(%r14), %edx
	movl	128(%r14), %r9d
	movl	%ebx, %eax
	movl	$0, 132(%r14)
	movl	%r13d, 92(%rsp)
	movq	%r14, %r13
	movq	(%rsp), %rbx
	movq	%r12, %r14
	movq	8(%rsp), %r12
	xorl	%ecx, %ecx
	addl	%edx, %r9d
	movl	$1, %r8d
	movq	%r15, 72(%rsp)
.L68:
	cmpl	%ecx, %r9d
	jbe	.L91
	movl	112(%r13), %edi
	movl	%r8d, %edx
	movq	96(%r13), %rsi
	movl	%edi, %ecx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%r14d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %ecx
	movzwl	2(%rdx), %r9d
	movzbl	%cl, %r15d
	cmpl	%r15d, %ebp
	jb	.L93
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L69:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %r9d
	movl	%ebp, %ecx
	movl	%r8d, %edx
	addl	$8, %ebp
	salq	%cl, %r9
	movl	%edi, %ecx
	sall	%cl, %edx
	addq	%r9, %r14
	subl	$1, %edx
	andl	%r14d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %r10d
	movzwl	2(%rdx), %r9d
	movzbl	%r10b, %r15d
	cmpl	%ebp, %r15d
	jbe	.L335
.L93:
	testl	%eax, %eax
	jne	.L69
	movl	%r8d, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	call	*%rbx
	testl	%eax, %eax
	je	.L308
	movq	96(%r13), %rsi
	movl	112(%r13), %edi
	movl	64(%rsp), %r8d
	jmp	.L69
.L335:
	movl	%r10d, %ecx
.L92:
	cmpw	$15, %r9w
	ja	.L71
	movl	132(%r13), %edx
	shrq	%cl, %r14
	subl	%r15d, %ebp
	leal	1(%rdx), %ecx
	movl	%ecx, 132(%r13)
	movw	%r9w, 144(%r13,%rdx,2)
	movl	124(%r13), %edx
	movl	128(%r13), %r9d
	addl	%edx, %r9d
	jmp	.L68
.L71:
	cmpw	$16, %r9w
	je	.L336
	cmpw	$17, %r9w
	je	.L80
	leal	7(%r15), %r9d
	cmpl	%r9d, %ebp
	jnb	.L82
	movq	%r13, 104(%rsp)
	movl	%r9d, %r13d
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L86:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %esi
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rsi
	addq	%rsi, %r14
	cmpl	%r13d, %ebp
	jnb	.L337
.L271:
	testl	%eax, %eax
	jne	.L86
	movl	%r8d, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	call	*%rbx
	testl	%eax, %eax
	movl	64(%rsp), %r8d
	jne	.L86
.L308:
	movq	72(%rsp), %r15
	jmp	.L37
.L121:
	leal	(%rdi,%rdx), %ecx
	movzwl	%r8w, %r9d
	movl	$1, %r8d
	sall	%cl, %r8d
	movl	%eax, %ecx
	leal	-1(%r8), %edi
	andl	%edi, %r11d
	movl	%edi, 64(%rsp)
	shrl	%cl, %r11d
	leal	(%r11,%r9), %eax
	leaq	(%rsi,%rax,4), %rax
	movzbl	1(%rax), %r10d
	movzbl	(%rax), %edi
	movzwl	2(%rax), %r8d
	leal	(%rdx,%r10), %ecx
	movl	%r10d, %eax
	cmpl	%ecx, %ebp
	jnb	.L123
	movl	%ebx, %eax
	movl	%r13d, 80(%rsp)
	movq	%r15, 72(%rsp)
	movl	%r9d, %r13d
	movl	64(%rsp), %r15d
	movl	%edx, %ebx
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L124:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %edx
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rdx
	movl	%ebx, %ecx
	addq	%rdx, %r12
	movl	%r15d, %edx
	andl	%r12d, %edx
	shrl	%cl, %edx
	addl	%r13d, %edx
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	1(%rdx), %r10d
	movzbl	(%rdx), %edi
	movzwl	2(%rdx), %r8d
	leal	(%r10,%rbx), %edx
	cmpl	%ebp, %edx
	jbe	.L338
.L125:
	testl	%eax, %eax
	jne	.L124
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L308
	movq	104(%r14), %rsi
	jmp	.L124
.L126:
	andl	$15, %edi
	movl	%r8d, 88(%r14)
	testl	%edi, %edi
	movl	%edi, 92(%r14)
	je	.L127
	cmpl	%edi, %ebp
	jnb	.L128
	movl	%ebx, %eax
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L129:
	movq	112(%rsp), %rdx
	subl	$1, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 112(%rsp)
	movzbl	(%rdx), %edx
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rdx
	addq	%rdx, %r12
	cmpl	%edi, %ebp
	jnb	.L339
.L130:
	testl	%eax, %eax
	jne	.L129
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsp), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L37
	movl	92(%r14), %edi
	jmp	.L129
.L339:
	movl	%eax, %ebx
.L128:
	movl	%edi, %ecx
	movl	$1, %r8d
	subl	%edi, %ebp
	sall	%cl, %r8d
	subl	$1, %r8d
	andl	%r12d, %r8d
	addl	88(%r14), %r8d
	shrq	%cl, %r12
	movl	%r8d, 88(%r14)
.L127:
	movl	52(%r14), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, 56(%r14)
	movl	%ecx, %esi
	cmovb	%r13d, %eax
	subl	%eax, %esi
	cmpl	%r8d, %esi
	jnb	.L132
	movq	$.LC10, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
.L338:
	movl	80(%rsp), %r13d
	movq	72(%rsp), %r15
	movl	%ebx, %edx
	movl	%eax, %ebx
	movl	%r10d, %eax
.L123:
	movl	%edx, %ecx
	subl	%edx, %ebp
	shrq	%cl, %r12
	jmp	.L122
.L337:
	movq	104(%rsp), %r13
.L82:
	movl	%r15d, %ecx
	movl	$-7, %edx
	movl	132(%r13), %esi
	shrq	%cl, %r14
	subl	%r15d, %edx
	xorl	%r11d, %r11d
	movl	%r14d, %ecx
	addl	%edx, %ebp
	shrq	$7, %r14
	andl	$127, %ecx
	addl	$11, %ecx
.L79:
	movl	124(%r13), %edx
	movl	128(%r13), %r9d
	addl	%esi, %ecx
	addl	%edx, %r9d
	cmpl	%r9d, %ecx
	ja	.L315
	.p2align 4,,10
	.p2align 3
.L89:
	movl	%esi, %edi
	addl	$1, %esi
	cmpl	%esi, %ecx
	movw	%r11w, 144(%r13,%rdi,2)
	jne	.L89
	movl	%ecx, 132(%r13)
	jmp	.L68
.L132:
	movl	%r13d, %esi
	movl	%ebp, %r13d
	movl	%ebx, %ebp
	movq	16(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L146:
	testl	%esi, %esi
	movl	%ecx, %edx
	je	.L340
.L133:
	movl	88(%r14), %eax
	subl	%eax, %edx
	cmpl	%edx, %esi
	jbe	.L135
	movl	%esi, %edi
	movl	%edx, %eax
	subl	%edx, %edi
	addq	%rbx, %rax
	movl	%edi, %edx
.L136:
	movl	84(%r14), %ecx
	cmpl	%ecx, %edx
	cmova	%ecx, %edx
	subl	%edx, %ecx
	subl	%edx, %esi
	movl	%ecx, 84(%r14)
	leaq	16(%rax), %rcx
	cmpq	%rcx, %rbx
	leaq	16(%rbx), %rcx
	setnb	%dil
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %dil
	je	.L137
	cmpl	$15, %edx
	jbe	.L137
	movl	%edx, %edi
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	shrl	$4, %edi
	movl	%edi, %r8d
	sall	$4, %r8d
.L142:
	movdqu	(%rax,%rcx), %xmm0
	addl	$1, %r9d
	movdqu	%xmm0, (%rbx,%rcx)
	addq	$16, %rcx
	cmpl	%r9d, %edi
	ja	.L142
	movl	%r8d, %r9d
	movl	%edx, %edi
	subl	%r8d, %edi
	addq	%r9, %rax
	cmpl	%r8d, %edx
	leaq	(%rbx,%r9), %rcx
	je	.L312
	movzbl	(%rax), %r8d
	cmpl	$1, %edi
	movb	%r8b, (%rcx)
	je	.L312
	movzbl	1(%rax), %r8d
	cmpl	$2, %edi
	movb	%r8b, 1(%rcx)
	je	.L312
	movzbl	2(%rax), %r8d
	cmpl	$3, %edi
	movb	%r8b, 2(%rcx)
	je	.L312
	movzbl	3(%rax), %r8d
	cmpl	$4, %edi
	movb	%r8b, 3(%rcx)
	je	.L312
	movzbl	4(%rax), %r8d
	cmpl	$5, %edi
	movb	%r8b, 4(%rcx)
	je	.L312
	movzbl	5(%rax), %r8d
	cmpl	$6, %edi
	movb	%r8b, 5(%rcx)
	je	.L312
	movzbl	6(%rax), %r8d
	cmpl	$7, %edi
	movb	%r8b, 6(%rcx)
	je	.L312
	movzbl	7(%rax), %r8d
	cmpl	$8, %edi
	movb	%r8b, 7(%rcx)
	je	.L312
	movzbl	8(%rax), %r8d
	cmpl	$9, %edi
	movb	%r8b, 8(%rcx)
	je	.L312
	movzbl	9(%rax), %r8d
	cmpl	$10, %edi
	movb	%r8b, 9(%rcx)
	je	.L312
	movzbl	10(%rax), %r8d
	cmpl	$11, %edi
	movb	%r8b, 10(%rcx)
	je	.L312
	movzbl	11(%rax), %r8d
	cmpl	$12, %edi
	movb	%r8b, 11(%rcx)
	je	.L312
	movzbl	12(%rax), %r8d
	cmpl	$13, %edi
	movb	%r8b, 12(%rcx)
	je	.L312
	movzbl	13(%rax), %r8d
	cmpl	$14, %edi
	movb	%r8b, 13(%rcx)
	je	.L312
	movzbl	14(%rax), %eax
	subl	$1, %edx
	movb	%al, 14(%rcx)
.L143:
	movl	84(%r14), %eax
	leaq	1(%rbx,%rdx), %rbx
	testl	%eax, %eax
	je	.L341
	movl	52(%r14), %ecx
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L312:
	subl	$1, %edx
	jmp	.L143
.L135:
	movq	%rbx, %rdi
	movl	%esi, %edx
	subq	%rax, %rdi
	movq	%rdi, %rax
	jmp	.L136
.L340:
	movq	64(%r14), %rbx
	movl	%ecx, 56(%r14)
	movl	%ecx, 16(%rsp)
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rax
	movq	%rbx, %rsi
	call	*%rax
	testl	%eax, %eax
	movl	16(%rsp), %ecx
	jne	.L342
	movl	52(%r14), %edx
	movl	%ecx, %esi
	jmp	.L133
.L137:
	subl	$1, %edx
	movl	%edx, %ecx
	leaq	1(%rax,%rcx), %r8
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L144:
	addq	$1, %rax
	movzbl	-1(%rax), %edi
	addq	$1, %rcx
	cmpq	%r8, %rax
	movb	%dil, -1(%rcx)
	jne	.L144
	jmp	.L143
.L80:
	leal	3(%r15), %r9d
	cmpl	%r9d, %ebp
	jb	.L85
	.p2align 4,,4
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L84:
	movq	112(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rcx), %esi
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rsi
	addq	%rsi, %r14
	cmpl	%r9d, %ebp
	jnb	.L83
.L85:
	testl	%eax, %eax
	jne	.L84
	movl	%r9d, 104(%rsp)
	movl	%r8d, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	call	*%rbx
	testl	%eax, %eax
	movl	64(%rsp), %r8d
	movl	104(%rsp), %r9d
	jne	.L84
	jmp	.L308
.L336:
	leal	2(%r15), %r9d
	cmpl	%r9d, %ebp
	jb	.L76
	.p2align 4,,4
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L75:
	movq	112(%rsp), %rcx
	subl	$1, %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, 112(%rsp)
	movzbl	(%rcx), %esi
	movl	%ebp, %ecx
	addl	$8, %ebp
	salq	%cl, %rsi
	addq	%rsi, %r14
	cmpl	%r9d, %ebp
	jnb	.L74
.L76:
	testl	%eax, %eax
	jne	.L75
	movl	%r9d, 104(%rsp)
	movl	%r8d, 64(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	call	*%rbx
	testl	%eax, %eax
	movl	64(%rsp), %r8d
	movl	104(%rsp), %r9d
	jne	.L75
	jmp	.L308
.L74:
	movl	132(%r13), %esi
	movl	%r15d, %ecx
	subl	%r15d, %ebp
	shrq	%cl, %r14
	testl	%esi, %esi
	je	.L315
	movl	%r14d, %ecx
	leal	-1(%rsi), %edx
	shrq	$2, %r14
	andl	$3, %ecx
	subl	$2, %ebp
	movzwl	144(%r13,%rdx,2), %r11d
	addl	$3, %ecx
	jmp	.L79
.L341:
	movq	%rbx, 16(%rsp)
	movl	(%r14), %eax
	movl	%ebp, %ebx
	movl	%r13d, %ebp
	movl	%esi, %r13d
	jmp	.L20
.L342:
	movl	%ebp, %ebx
.L313:
	movq	112(%rsp), %rdx
	jmp	.L314
.L83:
	movl	%r15d, %ecx
	movl	$-3, %edx
	movl	132(%r13), %esi
	shrq	%cl, %r14
	subl	%r15d, %edx
	xorl	%r11d, %r11d
	movl	%r14d, %ecx
	addl	%edx, %ebp
	shrq	$3, %r14
	andl	$7, %ecx
	addl	$3, %ecx
	jmp	.L79
.L91:
	movq	%r14, %r12
	movq	%r13, %r14
	movl	%eax, %ebx
	cmpl	$29, (%r14)
	movl	92(%rsp), %r13d
	movq	72(%rsp), %r15
	je	.L158
	cmpw	$0, 656(%r14)
	jne	.L94
	movq	$.LC5, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
.L315:
	movq	72(%rsp), %r15
	movq	%r14, %r12
	movq	%r13, %r14
	movl	92(%rsp), %r13d
	movl	%eax, %ebx
	movq	$.LC4, 48(%r15)
	movl	$29, (%r14)
.L158:
	movl	$29, %eax
	jmp	.L20
.L94:
	movq	48(%rsp), %rax
	movq	40(%rsp), %r9
	movl	$1, %edi
	movq	56(%rsp), %r8
	movq	80(%rsp), %rcx
	movq	96(%rsp), %rsi
	movl	$9, 112(%r14)
	movq	%rax, 136(%r14)
	movq	%rax, 96(%r14)
	call	inflate_table
	testl	%eax, %eax
	je	.L95
	movq	$.LC6, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
.L95:
	movq	136(%r14), %rax
	movl	128(%r14), %edx
	leaq	116(%r14), %r8
	movq	40(%rsp), %r9
	movq	80(%rsp), %rcx
	movl	$2, %edi
	movl	$6, 116(%r14)
	movq	%rax, 104(%r14)
	movl	124(%r14), %eax
	leaq	144(%r14,%rax,2), %rsi
	call	inflate_table
	testl	%eax, %eax
	je	.L96
	movq	$.LC7, 48(%r15)
	movl	$29, %eax
	movl	$29, (%r14)
	jmp	.L20
	.cfi_endproc
.LFE50:
	.size	inflateBack, .-inflateBack
	.p2align 4,,15
	.globl	inflateBackEnd
	.type	inflateBackEnd, @function
inflateBackEnd:
.LFB51:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	je	.L347
	movq	56(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L347
	movq	72(%rdi), %rax
	testq	%rax, %rax
	je	.L347
	movq	80(%rdi), %rdi
	call	*%rax
	movq	$0, 56(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L347:
	.cfi_restore_state
	movl	$-2, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	inflateBackEnd, .-inflateBackEnd
	.section	.rodata
	.align 32
	.type	distfix.4054, @object
	.size	distfix.4054, 128
distfix.4054:
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
	.type	lenfix.4053, @object
	.size	lenfix.4053, 2048
lenfix.4053:
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
	.type	order.4075, @object
	.size	order.4075, 38
order.4075:
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
	.hidden	inflate_fast
	.hidden	inflate_table
	.hidden	zcfree
	.hidden	zcalloc
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
