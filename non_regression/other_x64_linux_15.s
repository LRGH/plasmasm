	.file	"example.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"compress"
.LC1:
	.string	"%s error: %d\n"
.LC2:
	.string	"uncompress"
.LC3:
	.string	"bad uncompress\n"
.LC4:
	.string	"uncompress(): %s\n"
	.text
	.p2align 4,,15
	.globl	test_compress
	.type	test_compress, @function
test_compress:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rdx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, 8(%rsp)
	leaq	hello(%rip), %rsi
	movq	%rcx, (%rsp)
	movq	%rsi, %rcx
.L2:
	movl	(%rcx), %edx
	addq	$4, %rcx
	leal	-16843009(%rdx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	.L2
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leaq	2(%rcx), %rdx
	movl	%eax, %edi
	cmove	%rdx, %rcx
	addb	%al, %dil
	leaq	hello(%rip), %rdx
	sbbq	$3, %rcx
	movq	%rbp, %rdi
	subq	%rsi, %rcx
	leaq	8(%rsp), %rsi
	addq	$1, %rcx
	call	compress@PLT
	testl	%eax, %eax
	jne	.L12
	movq	8(%rsp), %rcx
	movabsq	$28542640608928103, %rax
	movq	%rsp, %rsi
	movq	%rax, (%rbx)
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	uncompress@PLT
	testl	%eax, %eax
	jne	.L13
	leaq	hello(%rip), %rsi
	movq	%rbx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	leaq	.LC4(%rip), %rsi
	movq	%rbx, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	leaq	.LC0(%rip), %rcx
	movl	%eax, %r8d
.L10:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L14:
	movq	stderr(%rip), %rcx
	leaq	.LC3(%rip), %rdi
	movl	$15, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L13:
	movl	%eax, %r8d
	leaq	.LC2(%rip), %rcx
	jmp	.L10
	.cfi_endproc
.LFE63:
	.size	test_compress, .-test_compress
	.section	.rodata.str1.1
.LC5:
	.string	"wb"
.LC6:
	.string	"gzopen error\n"
.LC7:
	.string	"ello"
.LC8:
	.string	"gzputs err: %s\n"
.LC9:
	.string	"hello"
.LC10:
	.string	", %s!"
.LC11:
	.string	"gzprintf err: %s\n"
.LC12:
	.string	"rb"
.LC13:
	.string	"gzread err: %s\n"
.LC14:
	.string	"bad gzread: %s\n"
.LC15:
	.string	"gzread(): %s\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC16:
	.string	"gzseek error, pos=%ld, gztell=%ld\n"
	.section	.rodata.str1.1
.LC17:
	.string	"gzgetc error\n"
.LC18:
	.string	"gzungetc error\n"
.LC19:
	.string	"gzgets err after gzseek: %s\n"
.LC20:
	.string	"bad gzgets after gzseek\n"
.LC21:
	.string	"gzgets() after gzseek: %s\n"
	.text
	.p2align 4,,15
	.globl	test_gzio
	.type	test_gzio, @function
test_gzio:
.LFB64:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	hello(%rip), %rsi
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, %rdx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.L16:
	movl	(%rdx), %ecx
	addq	$4, %rdx
	leal	-16843009(%rcx), %eax
	notl	%ecx
	andl	%ecx, %eax
	andl	$-2139062144, %eax
	je	.L16
	movl	%eax, %ecx
	movq	%rbx, %rdi
	shrl	$16, %ecx
	testl	$32896, %eax
	cmove	%ecx, %eax
	leaq	2(%rdx), %rcx
	cmove	%rcx, %rdx
	movl	%eax, %ecx
	addb	%al, %cl
	sbbq	$3, %rdx
	subq	%rsi, %rdx
	leaq	.LC5(%rip), %rsi
	leal	1(%rdx), %ebp
	call	gzopen@PLT
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L36
	movl	$104, %esi
	movq	%rax, %rdi
	call	gzputc@PLT
	leaq	.LC7(%rip), %rsi
	movq	%r14, %rdi
	call	gzputs@PLT
	cmpl	$4, %eax
	jne	.L38
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	call	gzprintf@PLT
	cmpl	$8, %eax
	jne	.L39
	movl	$1, %edx
	movl	$1, %esi
	movq	%r14, %rdi
	call	gzseek@PLT
	movq	%r14, %rdi
	call	gzclose@PLT
	leaq	.LC12(%rip), %rsi
	movq	%rbx, %rdi
	call	gzopen@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L36
	movabsq	$28542640608928103, %rax
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%rax, (%r12)
	movq	%rbx, %rdi
	call	gzread@PLT
	cmpl	%ebp, %eax
	jne	.L40
	leaq	hello(%rip), %rsi
	movq	%r12, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L41
	leaq	.LC15(%rip), %rsi
	movq	%r12, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	movq	$-8, %rsi
	movq	%rbx, %rdi
	call	gzseek@PLT
	cmpq	$6, %rax
	movq	%rax, %rbp
	jne	.L25
	movq	%rbx, %rdi
	call	gztell@PLT
	cmpq	$6, %rax
	jne	.L25
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.L26
	subl	$1, %eax
	addq	$1, 16(%rbx)
	movl	%eax, (%rbx)
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	cmpb	$32, (%rax)
	setne	%al
.L27:
	testb	%al, %al
	jne	.L42
	movq	%rbx, %rsi
	movl	$32, %edi
	call	gzungetc@PLT
	cmpl	$32, %eax
	jne	.L43
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	gzgets@PLT
	movq	%r12, %rdi
	call	strlen@PLT
	cmpq	$7, %rax
	jne	.L44
	leaq	6+hello(%rip), %rsi
	movq	%r12, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L45
	leaq	.LC21(%rip), %rsi
	movq	%r12, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdi
	call	gzclose@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L46
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	gzgetc@PLT
	cmpl	$32, %eax
	setne	%al
	jmp	.L27
.L36:
	movq	stderr(%rip), %rcx
	leaq	.LC6(%rip), %rdi
	movl	$13, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L25:
	movq	%rbx, %rdi
	call	gztell@PLT
	movq	stderr(%rip), %rdi
	leaq	.LC16(%rip), %rdx
	movq	%rax, %r8
	movq	%rbp, %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L46:
	call	__stack_chk_fail@PLT
.L43:
	movq	stderr(%rip), %rcx
	leaq	.LC18(%rip), %rdi
	movl	$15, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L42:
	movq	stderr(%rip), %rcx
	leaq	.LC17(%rip), %rdi
	movl	$13, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L39:
	leaq	4(%rsp), %rsi
	movq	%r14, %rdi
	call	gzerror@PLT
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
.L37:
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L38:
	leaq	4(%rsp), %rsi
	movq	%r14, %rdi
	call	gzerror@PLT
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	jmp	.L37
.L41:
	movq	%r12, %rcx
	leaq	.LC14(%rip), %rdx
	jmp	.L37
.L40:
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	call	gzerror@PLT
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	jmp	.L37
.L45:
	movq	stderr(%rip), %rcx
	leaq	.LC20(%rip), %rdi
	movl	$24, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	call	gzerror@PLT
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
	jmp	.L37
	.cfi_endproc
.LFE64:
	.size	test_gzio, .-test_gzio
	.section	.rodata.str1.1
.LC22:
	.string	"1.2.8"
.LC23:
	.string	"deflateInit"
.LC24:
	.string	"deflate"
.LC25:
	.string	"deflateEnd"
	.text
	.p2align 4,,15
	.globl	test_deflate
	.type	test_deflate, @function
test_deflate:
.LFB65:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	hello(%rip), %rcx
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %r12
	movq	%rcx, %r14
	movq	%rcx, %rbp
	addq	$-128, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
.L48:
	movl	0(%rbp), %edx
	addq	$4, %rbp
	leal	-16843009(%rdx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	.L48
	movl	%eax, %edx
	pxor	%xmm0, %xmm0
	shrl	$16, %edx
	testl	$32896, %eax
	movq	%rsp, %rbx
	cmove	%edx, %eax
	leaq	2(%rbp), %rdx
	movl	$-1, %esi
	movq	%rbx, %rdi
	movq	$0, 80(%rsp)
	cmove	%rdx, %rbp
	movl	%eax, %edx
	addb	%al, %dl
	leaq	.LC22(%rip), %rdx
	sbbq	$3, %rbp
	subq	%rcx, %rbp
	movl	$112, %ecx
	addq	$1, %rbp
	movaps	%xmm0, 64(%rsp)
	call	deflateInit_@PLT
	testl	%eax, %eax
	jne	.L67
	movq	%r14, (%rsp)
	movq	%r13, 24(%rsp)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L68:
	cmpq	%r12, 40(%rsp)
	jnb	.L55
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	$1, 32(%rsp)
	movl	$1, 8(%rsp)
	call	deflate@PLT
	testl	%eax, %eax
	jne	.L66
.L51:
	cmpq	%rbp, 16(%rsp)
	jne	.L68
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L69:
	testl	%eax, %eax
	jne	.L66
.L55:
	movl	$4, %esi
	movq	%rbx, %rdi
	movl	$1, 32(%rsp)
	call	deflate@PLT
	cmpl	$1, %eax
	jne	.L69
	movq	%rbx, %rdi
	call	deflateEnd@PLT
	testl	%eax, %eax
	jne	.L70
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L71
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L66:
	.cfi_restore_state
	leaq	.LC24(%rip), %rcx
	movl	%eax, %r8d
.L65:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L67:
	movl	%eax, %r8d
	leaq	.LC23(%rip), %rcx
	jmp	.L65
.L71:
	call	__stack_chk_fail@PLT
.L70:
	movl	%eax, %r8d
	leaq	.LC25(%rip), %rcx
	jmp	.L65
	.cfi_endproc
.LFE65:
	.size	test_deflate, .-test_deflate
	.section	.rodata.str1.1
.LC26:
	.string	"inflateInit"
.LC27:
	.string	"inflate"
.LC28:
	.string	"inflateEnd"
.LC29:
	.string	"bad inflate\n"
.LC30:
	.string	"inflate(): %s\n"
	.text
	.p2align 4,,15
	.globl	test_inflate
	.type	test_inflate, @function
test_inflate:
.LFB66:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	.LC22(%rip), %rsi
	pxor	%xmm0, %xmm0
	movq	%rdx, %r13
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	movq	%rcx, %rbp
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbx
	movabsq	$28542640608928103, %rax
	movq	%rdi, (%rsp)
	movq	%rax, (%rdx)
	movq	%rdx, 24(%rsp)
	movq	%rbx, %rdi
	movl	$112, %edx
	movq	$0, 80(%rsp)
	movl	$0, 8(%rsp)
	movaps	%xmm0, 64(%rsp)
	call	inflateInit_@PLT
	testl	%eax, %eax
	je	.L73
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L91:
	cmpq	%r12, 16(%rsp)
	jnb	.L77
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	$1, 32(%rsp)
	movl	$1, 8(%rsp)
	call	inflate@PLT
	cmpl	$1, %eax
	je	.L77
	testl	%eax, %eax
	jne	.L90
.L73:
	cmpq	%rbp, 40(%rsp)
	jb	.L91
.L77:
	movq	%rbx, %rdi
	call	inflateEnd@PLT
	testl	%eax, %eax
	jne	.L92
	leaq	hello(%rip), %rsi
	movq	%r13, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L93
	leaq	.LC30(%rip), %rsi
	xorl	%eax, %eax
	movq	%r13, %rdx
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L94
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L90:
	.cfi_restore_state
	leaq	.LC27(%rip), %rcx
	movl	%eax, %r8d
.L88:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L89:
	movl	%eax, %r8d
	leaq	.LC26(%rip), %rcx
	jmp	.L88
.L94:
	call	__stack_chk_fail@PLT
.L93:
	movq	stderr(%rip), %rcx
	leaq	.LC29(%rip), %rdi
	movl	$12, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L92:
	movl	%eax, %r8d
	leaq	.LC28(%rip), %rcx
	jmp	.L88
	.cfi_endproc
.LFE66:
	.size	test_inflate, .-test_inflate
	.section	.rodata.str1.1
.LC31:
	.string	"deflate not greedy\n"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"deflate should report Z_STREAM_END\n"
	.text
	.p2align 4,,15
	.globl	test_large_deflate
	.type	test_large_deflate, @function
test_large_deflate:
.LFB67:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	.LC22(%rip), %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	pxor	%xmm0, %xmm0
	movq	%rdi, %r14
	movq	%rsi, %rbp
	movq	%rcx, %r12
	addq	$-128, %rsp
	.cfi_def_cfa_offset 176
	movl	$112, %ecx
	movl	$1, %esi
	movq	%rsp, %rbx
	movq	$0, 80(%rsp)
	movq	%rbx, %rdi
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, 64(%rsp)
	call	deflateInit_@PLT
	testl	%eax, %eax
	jne	.L107
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, 24(%rsp)
	movl	%ebp, 32(%rsp)
	movq	%r13, (%rsp)
	movl	%r12d, 8(%rsp)
	call	deflate@PLT
	testl	%eax, %eax
	jne	.L106
	movl	8(%rsp), %eax
	testl	%eax, %eax
	jne	.L108
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	deflateParams@PLT
	shrl	%ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, (%rsp)
	movl	%ebp, 8(%rsp)
	call	deflate@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$1, %edx
	movl	$9, %esi
	movq	%rbx, %rdi
	call	deflateParams@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r13, (%rsp)
	movl	%r12d, 8(%rsp)
	call	deflate@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$4, %esi
	movq	%rbx, %rdi
	call	deflate@PLT
	cmpl	$1, %eax
	jne	.L109
	movq	%rbx, %rdi
	call	deflateEnd@PLT
	testl	%eax, %eax
	jne	.L110
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L111
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L106:
	.cfi_restore_state
	leaq	.LC24(%rip), %rcx
	movl	%eax, %r8d
.L105:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L107:
	movl	%eax, %r8d
	leaq	.LC23(%rip), %rcx
	jmp	.L105
.L111:
	call	__stack_chk_fail@PLT
.L110:
	movl	%eax, %r8d
	leaq	.LC25(%rip), %rcx
	jmp	.L105
.L109:
	movq	stderr(%rip), %rcx
	leaq	.LC32(%rip), %rdi
	movl	$35, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L108:
	movq	stderr(%rip), %rcx
	leaq	.LC31(%rip), %rdi
	movl	$19, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE67:
	.size	test_large_deflate, .-test_large_deflate
	.section	.rodata.str1.1
.LC33:
	.string	"large inflate"
.LC34:
	.string	"bad large inflate: %ld\n"
.LC35:
	.string	"large_inflate(): OK"
	.text
	.p2align 4,,15
	.globl	test_large_inflate
	.type	test_large_inflate, @function
test_large_inflate:
.LFB68:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	pxor	%xmm0, %xmm0
	movq	%rcx, %r14
	addq	$-128, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movl	%esi, 8(%rsp)
	movabsq	$28542640608928103, %rax
	movq	%rsp, %rbx
	leaq	.LC22(%rip), %rsi
	movq	%rax, (%rdx)
	movq	%rdi, (%rsp)
	movl	$112, %edx
	movq	%rbx, %rdi
	movq	$0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	call	inflateInit_@PLT
	testl	%eax, %eax
	jne	.L123
	movl	%r14d, %r12d
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L125:
	testl	%eax, %eax
	jne	.L124
.L115:
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, 24(%rsp)
	movl	%r12d, 32(%rsp)
	call	inflate@PLT
	cmpl	$1, %eax
	jne	.L125
	movq	%rbx, %rdi
	call	inflateEnd@PLT
	testl	%eax, %eax
	jne	.L126
	shrq	%r13
	movq	40(%rsp), %rcx
	leaq	0(%r13,%r14,2), %rax
	cmpq	%rax, %rcx
	jne	.L127
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L128
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L124:
	.cfi_restore_state
	leaq	.LC33(%rip), %rcx
	movl	%eax, %r8d
.L122:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L123:
	movl	%eax, %r8d
	leaq	.LC26(%rip), %rcx
	jmp	.L122
.L128:
	call	__stack_chk_fail@PLT
.L127:
	movq	stderr(%rip), %rdi
	leaq	.LC34(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L126:
	movl	%eax, %r8d
	leaq	.LC28(%rip), %rcx
	jmp	.L122
	.cfi_endproc
.LFE68:
	.size	test_large_inflate, .-test_large_inflate
	.p2align 4,,15
	.globl	test_flush
	.type	test_flush, @function
test_flush:
.LFB69:
	.cfi_startproc
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
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	leaq	hello(%rip), %rsi
	addq	$-128, %rsp
	.cfi_def_cfa_offset 176
	movq	%rsi, %r14
	movq	%rsi, %rdx
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
.L130:
	movl	(%rdx), %ecx
	addq	$4, %rdx
	leal	-16843009(%rcx), %eax
	notl	%ecx
	andl	%ecx, %eax
	andl	$-2139062144, %eax
	je	.L130
	movl	%eax, %ecx
	pxor	%xmm0, %xmm0
	shrl	$16, %ecx
	testl	$32896, %eax
	movq	%rsp, %r13
	cmove	%ecx, %eax
	leaq	2(%rdx), %rcx
	movq	$0, 80(%rsp)
	movl	%eax, %edi
	cmove	%rcx, %rdx
	addb	%al, %dil
	movl	$112, %ecx
	sbbq	$3, %rdx
	movq	%r13, %rdi
	movl	%edx, %ebp
	leaq	.LC22(%rip), %rdx
	subl	%esi, %ebp
	movl	$-1, %esi
	movaps	%xmm0, 64(%rsp)
	call	deflateInit_@PLT
	testl	%eax, %eax
	jne	.L142
	movq	(%rbx), %rax
	movl	$3, %esi
	movq	%r13, %rdi
	movq	%r14, (%rsp)
	movq	%r12, 24(%rsp)
	movl	$3, 8(%rsp)
	movl	%eax, 32(%rsp)
	call	deflate@PLT
	testl	%eax, %eax
	jne	.L141
	addb	$1, 3(%r12)
	leal	-2(%rbp), %edx
	movl	$4, %esi
	movq	%r13, %rdi
	movl	%edx, 8(%rsp)
	call	deflate@PLT
	cmpl	$1, %eax
	ja	.L141
	movq	%r13, %rdi
	call	deflateEnd@PLT
	testl	%eax, %eax
	jne	.L143
	movq	40(%rsp), %rax
	movq	%rax, (%rbx)
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L144
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L142:
	.cfi_restore_state
	leaq	.LC23(%rip), %rcx
	movl	%eax, %r8d
.L140:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	movl	%eax, %r8d
	leaq	.LC24(%rip), %rcx
	jmp	.L140
.L144:
	call	__stack_chk_fail@PLT
.L143:
	movl	%eax, %r8d
	leaq	.LC25(%rip), %rcx
	jmp	.L140
	.cfi_endproc
.LFE69:
	.size	test_flush, .-test_flush
	.section	.rodata.str1.1
.LC36:
	.string	"inflateSync"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"inflate should report DATA_ERROR\n"
	.section	.rodata.str1.1
.LC38:
	.string	"after inflateSync(): hel%s\n"
	.text
	.p2align 4,,15
	.globl	test_sync
	.type	test_sync, @function
test_sync:
.LFB70:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	.LC22(%rip), %rsi
	pxor	%xmm0, %xmm0
	movq	%rdx, %rbp
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	movq	%rcx, %r13
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbx
	movabsq	$28542640608928103, %rax
	movq	%rdi, (%rsp)
	movq	%rax, (%rdx)
	movq	%rbx, %rdi
	movl	$112, %edx
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	movl	$2, 8(%rsp)
	call	inflateInit_@PLT
	testl	%eax, %eax
	jne	.L153
	xorl	%esi, %esi
	movq	%rbx, %rdi
	subl	$2, %r12d
	movq	%rbp, 24(%rsp)
	movl	%r13d, 32(%rsp)
	call	inflate@PLT
	movq	%rbx, %rdi
	movl	%r12d, 8(%rsp)
	call	inflateSync@PLT
	testl	%eax, %eax
	jne	.L154
	movl	$4, %esi
	movq	%rbx, %rdi
	call	inflate@PLT
	cmpl	$-3, %eax
	jne	.L155
	movq	%rbx, %rdi
	call	inflateEnd@PLT
	testl	%eax, %eax
	jne	.L156
	leaq	.LC38(%rip), %rsi
	xorl	%eax, %eax
	movq	%rbp, %rdx
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L157
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L153:
	.cfi_restore_state
	leaq	.LC26(%rip), %rcx
	movl	%eax, %r8d
.L152:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L157:
	call	__stack_chk_fail@PLT
.L156:
	movl	%eax, %r8d
	leaq	.LC28(%rip), %rcx
	jmp	.L152
.L155:
	movq	stderr(%rip), %rcx
	leaq	.LC37(%rip), %rdi
	movl	$33, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L154:
	movl	%eax, %r8d
	leaq	.LC36(%rip), %rcx
	jmp	.L152
	.cfi_endproc
.LFE70:
	.size	test_sync, .-test_sync
	.section	.rodata.str1.1
.LC39:
	.string	"deflateSetDictionary"
	.text
	.p2align 4,,15
	.globl	test_dict_deflate
	.type	test_dict_deflate, @function
test_dict_deflate:
.LFB71:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC22(%rip), %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	pxor	%xmm0, %xmm0
	movq	%rdi, %r12
	movq	%rsi, %rbp
	movl	$112, %ecx
	addq	$-128, %rsp
	.cfi_def_cfa_offset 160
	movl	$9, %esi
	movq	%rsp, %rbx
	movq	$0, 80(%rsp)
	movq	%rbx, %rdi
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, 64(%rsp)
	call	deflateInit_@PLT
	testl	%eax, %eax
	jne	.L170
	leaq	dictionary(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	call	deflateSetDictionary@PLT
	testl	%eax, %eax
	jne	.L171
	movq	96(%rsp), %rax
	leaq	hello(%rip), %rsi
	movq	%r12, 24(%rsp)
	movl	%ebp, 32(%rsp)
	movq	%rsi, (%rsp)
	movq	%rsi, %rdx
	movq	%rax, dictId(%rip)
.L161:
	movl	(%rdx), %ecx
	addq	$4, %rdx
	leal	-16843009(%rcx), %eax
	notl	%ecx
	andl	%ecx, %eax
	andl	$-2139062144, %eax
	je	.L161
	movl	%eax, %ecx
	shrl	$16, %ecx
	testl	$32896, %eax
	cmove	%ecx, %eax
	leaq	2(%rdx), %rcx
	movl	%eax, %edi
	cmove	%rcx, %rdx
	addb	%al, %dil
	movq	%rbx, %rdi
	sbbq	$3, %rdx
	subq	%rsi, %rdx
	movl	$4, %esi
	addl	$1, %edx
	movl	%edx, 8(%rsp)
	call	deflate@PLT
	cmpl	$1, %eax
	jne	.L172
	movq	%rbx, %rdi
	call	deflateEnd@PLT
	testl	%eax, %eax
	jne	.L173
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L174
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L172:
	.cfi_restore_state
	movq	stderr(%rip), %rcx
	leaq	.LC32(%rip), %rdi
	movl	$35, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L173:
	leaq	.LC25(%rip), %rcx
	movl	%eax, %r8d
.L169:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L174:
	call	__stack_chk_fail@PLT
.L171:
	movl	%eax, %r8d
	leaq	.LC39(%rip), %rcx
	jmp	.L169
.L170:
	movl	%eax, %r8d
	leaq	.LC23(%rip), %rcx
	jmp	.L169
	.cfi_endproc
.LFE71:
	.size	test_dict_deflate, .-test_dict_deflate
	.section	.rodata.str1.1
.LC40:
	.string	"unexpected dictionary"
.LC41:
	.string	"inflate with dict"
.LC42:
	.string	"bad inflate with dict\n"
.LC43:
	.string	"inflate with dictionary: %s\n"
	.text
	.p2align 4,,15
	.globl	test_dict_inflate
	.type	test_dict_inflate, @function
test_dict_inflate:
.LFB72:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	pxor	%xmm0, %xmm0
	movq	%rcx, %rbp
	addq	$-128, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movl	%esi, 8(%rsp)
	movabsq	$28542640608928103, %rax
	movq	%rsp, %rbx
	leaq	.LC22(%rip), %rsi
	movq	%rax, (%rdx)
	movq	%rdi, (%rsp)
	movl	$112, %edx
	movq	%rbx, %rdi
	movq	$0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	call	inflateInit_@PLT
	testl	%eax, %eax
	jne	.L188
	movl	%ebp, 32(%rsp)
	movq	%r12, 24(%rsp)
	leaq	dictionary(%rip), %rbp
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L178:
	testl	%eax, %eax
	jne	.L189
.L180:
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	inflate@PLT
	cmpl	$1, %eax
	je	.L177
	cmpl	$2, %eax
	jne	.L178
	movq	dictId(%rip), %rax
	cmpq	%rax, 96(%rsp)
	jne	.L190
	movl	$6, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	inflateSetDictionary@PLT
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L177:
	movq	%rbx, %rdi
	call	inflateEnd@PLT
	testl	%eax, %eax
	jne	.L191
	leaq	hello(%rip), %rsi
	movq	%r12, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L192
	leaq	.LC43(%rip), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdx
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L193
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L189:
	.cfi_restore_state
	leaq	.LC41(%rip), %rcx
	movl	%eax, %r8d
.L187:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L190:
	movq	stderr(%rip), %rcx
	leaq	.LC40(%rip), %rdi
	movl	$21, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L191:
	movl	%eax, %r8d
	leaq	.LC28(%rip), %rcx
	jmp	.L187
.L192:
	movq	stderr(%rip), %rcx
	leaq	.LC42(%rip), %rdi
	movl	$22, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L193:
	call	__stack_chk_fail@PLT
.L188:
	movl	%eax, %r8d
	leaq	.LC26(%rip), %rcx
	jmp	.L187
	.cfi_endproc
.LFE72:
	.size	test_dict_inflate, .-test_dict_inflate
	.section	.rodata.str1.1
.LC44:
	.string	"foo.gz"
.LC45:
	.string	"incompatible zlib version\n"
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"warning: different zlib version\n"
	.align 8
.LC47:
	.string	"zlib version %s = 0x%04x, compile flags = 0x%lx\n"
	.section	.rodata.str1.1
.LC48:
	.string	"out of memory"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB73:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	$40000, (%rsp)
	call	zlibVersion@PLT
	cmpb	$49, (%rax)
	jne	.L207
	call	zlibVersion@PLT
	leaq	.LC22(%rip), %rdi
	movq	%rax, %rsi
	movl	$6, %ecx
	repz cmpsb
	seta	%al
	sbbb	$0, %al
	testb	%al, %al
	jne	.L208
.L196:
	call	zlibCompileFlags@PLT
	leaq	.LC22(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %r8
	movl	$4736, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	(%rsp), %r14
	movl	$1, %esi
	movl	%r14d, %edi
	call	calloc@PLT
	movl	$1, %esi
	movq	%rax, %rbx
	movl	$40000, %edi
	call	calloc@PLT
	testq	%rbx, %rbx
	movq	%rax, %rbp
	je	.L202
	testq	%rax, %rax
	je	.L202
	movq	%rbx, %rdi
	movl	$40000, %ecx
	movq	%rax, %rdx
	movq	%r14, %rsi
	call	test_compress
	cmpl	$1, %r12d
	leaq	.LC44(%rip), %rdi
	jle	.L199
	movq	8(%r13), %rdi
.L199:
	movl	$40000, %edx
	movq	%rbp, %rsi
	call	test_gzio
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	call	test_deflate
	movq	(%rsp), %rsi
	movl	$40000, %ecx
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	test_inflate
	movq	(%rsp), %rsi
	movl	$40000, %ecx
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	test_large_deflate
	movq	(%rsp), %rsi
	movl	$40000, %ecx
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	test_large_inflate
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	test_flush
	movq	(%rsp), %rsi
	movl	$40000, %ecx
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	test_sync
	movl	$40000, %esi
	movq	%rbx, %rdi
	movq	$40000, (%rsp)
	call	test_dict_deflate
	movq	(%rsp), %rsi
	movq	%rbp, %rdx
	movl	$40000, %ecx
	movq	%rbx, %rdi
	call	test_dict_inflate
	movq	%rbx, %rdi
	call	free@PLT
	movq	%rbp, %rdi
	call	free@PLT
	xorl	%eax, %eax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L209
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L208:
	.cfi_restore_state
	movq	stderr(%rip), %rcx
	leaq	.LC46(%rip), %rdi
	movl	$32, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L196
.L207:
	movq	stderr(%rip), %rcx
	leaq	.LC45(%rip), %rdi
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L209:
	call	__stack_chk_fail@PLT
.L202:
	leaq	.LC48(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE73:
	.size	main, .-main
	.comm	dictId,8,8
	.globl	dictionary
	.section	.rodata
	.type	dictionary, @object
	.size	dictionary, 6
dictionary:
	.string	"hello"
	.globl	hello
	.data
	.align 8
	.type	hello, @object
	.size	hello, 14
hello:
	.string	"hello, hello!"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
