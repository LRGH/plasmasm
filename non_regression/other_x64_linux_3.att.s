	.file	"F2x.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	vecsmall_lexcmp, @function
vecsmall_lexcmp:
.LFB327:
	.cfi_startproc
	movabsq	$72057594037927935, %r9
	movq	%r9, %r10
	andq	(%rsi), %r9
	andq	(%rdi), %r10
	movq	%r9, %r8
	cmpq	%r9, %r10
	cmovle	%r10, %r8
	cmpq	$1, %r8
	jle	.L2
	movq	8(%rdi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	jne	.L3
	movl	$1, %eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L6:
	movq	(%rdi,%rax,8), %rcx
	movq	(%rsi,%rax,8), %rdx
	cmpq	%rdx, %rcx
	jne	.L3
.L4:
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L6
.L2:
	cmpq	%r9, %r10
	je	.L8
	setge	%al
	movzbl	%al, %eax
	leal	-1(%rax,%rax), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	setge	%al
	leal	-1(%rax,%rax), %eax
	ret
.L8:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE327:
	.size	vecsmall_lexcmp, .-vecsmall_lexcmp
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	F2x_equal1, @function
F2x_equal1:
.LFB481:
	.cfi_startproc
	movabsq	$72057594037927935, %rdx
	andq	(%rdi), %rdx
	xorl	%eax, %eax
	cmpq	$3, %rdx
	je	.L15
	rep ret
	.p2align 4,,10
	.p2align 3
.L15:
	xorl	%eax, %eax
	cmpq	$1, 16(%rdi)
	sete	%al
	ret
	.cfi_endproc
.LFE481:
	.size	F2x_equal1, .-F2x_equal1
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.type	_F2xq_hash, @function
_F2xq_hash:
.LFB717:
	.cfi_startproc
	movq	16(%rdi), %rax
	ret
	.cfi_endproc
.LFE717:
	.size	_F2xq_hash, .-_F2xq_hash
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"lg()"
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.type	F2x_addspec, @function
F2x_addspec:
.LFB687:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12
	movq	%rcx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpq	%rdx, %rcx
	jle	.L18
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
.L18:
	movq	avma@GOTPCREL(%rip), %rdx
	leaq	2(%r15), %r14
	leaq	0(,%r14,8), %rcx
	movq	(%rdx), %rax
	movq	%rax, %rbp
	subq	%rcx, %rbp
	movq	bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rax, %r14
	jbe	.L19
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rdx
.L19:
	movabsq	$-72057594037927936, %rax
	movq	%rbp, (%rdx)
	testq	%rax, %r14
	je	.L20
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L20:
	movabsq	$3170534137668829184, %rax
	orq	%r14, %rax
	testq	%rbx, %rbx
	movq	%rax, 0(%rbp)
	jle	.L35
	leaq	32(%rbp), %rcx
	cmpq	%rcx, %r12
	setnb	%dl
	cmpq	%rbp, %r12
	setbe	%al
	orl	%eax, %edx
	cmpq	%rcx, %r13
	setnb	%cl
	cmpq	%rbp, %r13
	setbe	%al
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L36
	cmpq	$14, %rbx
	jbe	.L36
	movq	%r12, %rax
	salq	$60, %rax
	shrq	$63, %rax
	cmpq	%rax, %rbx
	cmovbe	%rbx, %rax
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.L23
	movq	0(%r13), %rdx
	xorq	(%r12), %rdx
	movb	$1, %sil
	movq	%rdx, 16(%rbp)
.L23:
	movq	%rbx, %rdi
	xorl	%edx, %edx
	subq	%rax, %rdi
	salq	$3, %rax
	leaq	-2(%rdi), %rcx
	leaq	(%r12,%rax), %r10
	leaq	0(%r13,%rax), %r9
	leaq	16(%rbp,%rax), %r11
	xorl	%eax, %eax
	shrq	%rcx
	addq	$1, %rcx
	leaq	(%rcx,%rcx), %r8
.L24:
	movdqu	(%r9,%rax), %xmm0
	addq	$1, %rdx
	pxor	(%r10,%rax), %xmm0
	movups	%xmm0, (%r11,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L24
	cmpq	%r8, %rdi
	leaq	(%rsi,%r8), %rax
	je	.L21
	movq	0(%r13,%rax,8), %rdx
	xorq	(%r12,%rax,8), %rdx
	movq	%rdx, 16(%rbp,%rax,8)
.L21:
	cmpq	%rbx, %r15
	jle	.L32
	leaq	32(,%rbx,8), %rdx
	movq	%r15, %rsi
	movq	%rbx, %r8
	subq	%rbx, %rsi
	leaq	-32(%rdx), %rdi
	addq	%rbp, %rdx
	leaq	(%r12,%rdi), %rax
	cmpq	%rdx, %rax
	setnb	%cl
	cmpq	%rbp, %r12
	setbe	%dl
	orb	%dl, %cl
	je	.L33
	cmpq	$24, %rsi
	jbe	.L33
	salq	$60, %rax
	shrq	$63, %rax
	cmpq	%rax, %rsi
	cmovbe	%rsi, %rax
	testq	%rax, %rax
	je	.L29
	movq	(%r12,%rbx,8), %rdx
	movq	%rdx, 16(%rbp,%rbx,8)
	addq	$1, %rbx
.L29:
	subq	%rax, %rsi
	leaq	(%rdi,%rax,8), %rdi
	leaq	2(%rax,%r8), %rax
	leaq	-2(%rsi), %rcx
	xorl	%edx, %edx
	leaq	0(%rbp,%rax,8), %r8
	addq	%r12, %rdi
	xorl	%eax, %eax
	shrq	%rcx
	addq	$1, %rcx
	leaq	(%rcx,%rcx), %r9
.L30:
	movdqa	(%rdi,%rax), %xmm0
	addq	$1, %rdx
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L30
	addq	%r9, %rbx
	cmpq	%r9, %rsi
	je	.L32
	movq	(%r12,%rbx,8), %rax
	movq	%rax, 16(%rbp,%rbx,8)
.L32:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rsi
	movq	%rbp, %rdi
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
	jmp	Flx_renormalize@PLT
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	movq	(%r12,%rbx,8), %rax
	movq	%rax, 16(%rbp,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jne	.L33
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L36:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L22:
	movq	0(%r13,%rax,8), %rdx
	xorq	(%r12,%rax,8), %rdx
	movq	%rdx, 16(%rbp,%rax,8)
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L22
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L35:
	xorl	%ebx, %ebx
	jmp	.L21
	.cfi_endproc
.LFE687:
	.size	F2x_addspec, .-F2x_addspec
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.type	F2x_addshift, @function
F2x_addshift:
.LFB689:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r9
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movabsq	$72057594037927935, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %r13
	movq	%rdi, %rbp
	leaq	16(%rsi), %r15
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	andq	(%rsi), %r13
	andq	(%rdi), %rdx
	movq	avma@GOTPCREL(%rip), %r12
	movq	8(%rdi), %rdi
	leaq	16(%rbp), %r10
	movq	%rsi, 16(%rsp)
	leaq	-2(%r13), %rcx
	movq	(%r12), %rbx
	leaq	-2(%rdx), %r14
	movq	%rdi, 8(%rsp)
	movq	%rcx, %r8
	subq	%r9, %r8
	testq	%r8, %r8
	jle	.L113
	movq	bot@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	leaq	0(,%r9,8), %rdx
	movq	%rbx, %r11
	subq	%rdx, %r11
	subq	(%rax), %rdi
	movq	%r11, %rbp
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpq	%rax, %r9
	ja	.L114
.L74:
	movq	%r11, (%r12)
	leaq	(%r15,%rdx), %r12
	movq	%r8, %rcx
	movq	%r14, %rdx
	movq	%r10, %rdi
	movq	%r9, 40(%rsp)
	movq	%r12, %rsi
	movq	%r11, 32(%rsp)
	movq	%r8, 24(%rsp)
	call	F2x_addspec
	movq	24(%rsp), %r8
	movq	32(%rsp), %r11
	movq	40(%rsp), %r9
	cmpq	%r14, %r8
	jle	.L115
	addq	$16, %rax
	cmpq	%r11, %rax
	jnb	.L73
	.p2align 4,,10
	.p2align 3
.L98:
	subq	$8, %rbp
	movq	0(%rbp), %rdx
	subq	$8, %rbx
	cmpq	%rbp, %rax
	movq	%rdx, (%rbx)
	jb	.L98
.L73:
	cmpq	%r12, %r15
	jnb	.L78
	movq	%r12, %rax
	subq	16(%rsp), %rax
	leaq	-16(%r12), %rdx
	subq	$17, %rax
	shrq	$3, %rax
	addq	$1, %rax
	cmpq	$24, %rax
	jbe	.L79
	leaq	-16(%rbx), %rcx
	cmpq	%rdx, %rbx
	setbe	%sil
	cmpq	%rcx, %r12
	setbe	%cl
	orb	%cl, %sil
	je	.L79
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	testq	%rdx, %rdx
	je	.L87
	movq	-8(%r12), %rcx
	leaq	-8(%rbx), %r11
	leaq	-8(%r12), %r8
	movq	%rcx, -8(%rbx)
.L80:
	movq	%rax, %r9
	xorl	%ecx, %ecx
	subq	%rdx, %r9
	negq	%rdx
	leaq	-2(%r9), %rsi
	leaq	-16(,%rdx,8), %rdi
	xorl	%edx, %edx
	shrq	%rsi
	addq	%rdi, %r12
	addq	%rbx, %rdi
	addq	$1, %rsi
	leaq	(%rsi,%rsi), %r10
.L81:
	movdqa	(%r12,%rdx), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%rsi, %rcx
	jb	.L81
	movq	%r10, %rdx
	negq	%rdx
	salq	$3, %rdx
	addq	%rdx, %r8
	addq	%rdx, %r11
	cmpq	%r10, %r9
	je	.L84
	movq	-8(%r8), %rdx
	movq	%rdx, -8(%r11)
.L84:
	negq	%rax
	leaq	(%rbx,%rax,8), %rbx
.L78:
	movq	8(%rsp), %rax
	leaq	-16(%rbx), %rbp
	movq	%rax, -8(%rbx)
	movabsq	$-72057594037927936, %rax
	testq	%rax, %r13
	je	.L85
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L85:
	movabsq	$3170534137668829184, %rdx
	movq	%rbp, %rax
	orq	%rdx, %r13
	movq	%r13, -16(%rbx)
	addq	$72, %rsp
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
.L115:
	.cfi_restore_state
	movabsq	$72057594037927935, %r13
	andq	(%rax), %r13
	addq	$16, %rax
	addq	%r9, %r13
	cmpq	%r11, %rax
	jb	.L98
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L87:
	movq	%rbx, %r11
	movq	%r12, %r8
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L114:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r9, 56(%rsp)
	movq	%r11, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r10, 24(%rsp)
	call	pari_err@PLT
	movq	56(%rsp), %r9
	movq	48(%rsp), %r11
	movq	40(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	24(%rsp), %r10
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L113:
	leaq	2(%r14,%r9), %rax
	cmpq	%r14, %r8
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	cmovle	%rax, %r13
	leaq	0(,%r13,8), %rax
	subq	%rax, %rsi
	movq	bot@GOTPCREL(%rip), %rax
	subq	(%rax), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpq	%rax, %r13
	jbe	.L65
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r10, 24(%rsp)
	call	pari_err@PLT
	movq	56(%rsp), %rsi
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	24(%rsp), %r10
.L65:
	salq	$3, %r14
	movq	%rsi, (%r12)
	leaq	(%r15,%rcx,8), %r12
	leaq	(%r10,%r14), %rax
	cmpq	%rax, %r10
	jnb	.L66
	movq	%rax, %rsi
	movq	%rax, %rcx
	subq	%rbp, %rsi
	leaq	-17(%rsi), %r11
	shrq	$3, %r11
	addq	$1, %r11
	cmpq	$24, %r11
	jbe	.L71
	leaq	0(%rbp,%r14), %rsi
	leaq	-16(%rbx), %rdi
	leaq	16(%rbp,%r14), %r9
	cmpq	%rsi, %rbx
	setbe	%sil
	cmpq	%rdi, %r9
	setbe	%dil
	orb	%dil, %sil
	je	.L71
	leaq	-16(,%rdx,8), %rcx
	movq	%rbx, %rdi
	leaq	0(%rbp,%rcx), %rdx
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %r11
	cmovbe	%r11, %rdx
	testq	%rdx, %rdx
	je	.L68
	movq	-8(%rax), %rsi
	leaq	-8(%rbx), %rdi
	subq	$8, %rax
	movq	%rsi, -8(%rbx)
.L68:
	movq	%r11, %r10
	subq	%rdx, %r10
	negq	%rdx
	leaq	-2(%r10), %rsi
	salq	$3, %rdx
	addq	%rdx, %rcx
	leaq	-16(%rbx,%rdx), %r9
	xorl	%edx, %edx
	shrq	%rsi
	addq	%rcx, %rbp
	xorl	%ecx, %ecx
	addq	$1, %rsi
	leaq	(%rsi,%rsi), %r14
.L69:
	movdqa	0(%rbp,%rdx), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%r9,%rdx)
	subq	$16, %rdx
	cmpq	%rsi, %rcx
	jb	.L69
	movq	%r14, %rdx
	negq	%rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	addq	%rdx, %rdi
	cmpq	%r14, %r10
	je	.L72
	movq	-8(%rax), %rax
	movq	%rax, -8(%rdi)
.L72:
	negq	%r11
	leaq	(%rbx,%r11,8), %rbx
.L66:
	leaq	(%rbx,%r8,8), %rax
	cmpq	%rax, %rbx
	jbe	.L73
	leaq	-1(%rbx), %rbp
	movq	%rbx, %rdi
	xorl	%esi, %esi
	subq	%rax, %rbp
	shrq	$3, %rbp
	addq	$1, %rbp
	leaq	0(,%rbp,8), %rdx
	negq	%rbp
	leaq	(%rbx,%rbp,8), %rbx
	subq	%rdx, %rdi
	call	memset@PLT
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L71:
	subq	$8, %rax
	movq	(%rax), %rsi
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %r10
	movq	%rsi, (%rbx,%rdx)
	jb	.L71
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L79:
	movq	%rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L83:
	subq	$8, %r12
	movq	(%r12), %rcx
	subq	$8, %rdx
	cmpq	%r12, %r15
	movq	%rcx, (%rdx)
	jb	.L83
	jmp	.L84
	.cfi_endproc
.LFE689:
	.size	F2x_addshift, .-F2x_addshift
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.type	F2x_shiftip, @function
F2x_shiftip:
.LFB690:
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
	movabsq	$72057594037927935, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	andq	(%rsi), %rbp
	cmpq	$2, %rbp
	je	.L142
	testq	%rdx, %rdx
	je	.L142
	movq	avma@GOTPCREL(%rip), %r14
	movq	bot@GOTPCREL(%rip), %rax
	leaq	0(%rbp,%rdx), %r13
	movq	%rdx, %r12
	movq	%rdi, %rdx
	leaq	0(,%rbp,8), %rcx
	movq	%rsi, %rbx
	movq	%rdi, (%r14)
	subq	(%rax), %rdi
	leaq	(%rsi,%rcx), %r15
	leaq	0(,%r13,8), %rsi
	subq	%rsi, %rdx
	shrq	$3, %rdi
	cmpq	%rdi, %r13
	ja	.L171
.L128:
	cmpq	$2, %rbp
	movq	%rdx, (%r14)
	leaq	(%rdx,%rsi), %r14
	jle	.L129
	subq	$16, %rsi
	leaq	-16(%rcx), %rax
	leaq	-2(%rbp), %rdi
	leaq	(%rdx,%rsi), %r8
	leaq	(%rbx,%rax), %rcx
	cmpq	%r8, %r15
	setbe	%r9b
	cmpq	%rcx, %r14
	setbe	%r8b
	orb	%r8b, %r9b
	je	.L130
	cmpq	$24, %rdi
	jbe	.L130
	andl	$15, %ecx
	shrq	$3, %rcx
	cmpq	%rcx, %rdi
	cmovbe	%rdi, %rcx
	testq	%rcx, %rcx
	je	.L141
	movq	-8(%r15), %r10
	leaq	-8(%r14), %r8
	leaq	-8(%r15), %r9
	movq	%r10, -8(%r14)
.L131:
	subq	%rcx, %rdi
	movq	%rbp, %r15
	movq	%rdi, %r10
	leaq	-2(%rdi), %rdi
	subq	%rcx, %r15
	shrq	%rdi
	addq	$1, %rdi
	cmpq	$3, %r15
	leaq	(%rdi,%rdi), %r11
	je	.L132
	negq	%rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rcx, %rsi
	xorl	%ecx, %ecx
	addq	%rax, %rbx
	addq	%rsi, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L133:
	movdqa	(%rbx,%rax), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%rdx,%rax)
	subq	$16, %rax
	cmpq	%rdi, %rcx
	jb	.L133
	movq	%r11, %rax
	negq	%rax
	salq	$3, %rax
	addq	%rax, %r9
	addq	%rax, %r8
	cmpq	%r11, %r10
	je	.L136
.L132:
	movq	-8(%r9), %rax
	movq	%rax, -8(%r8)
.L136:
	negq	%rbp
	leaq	16(,%rbp,8), %rax
	addq	%rax, %r14
.L129:
	testq	%r12, %r12
	jle	.L137
	leaq	0(,%r12,8), %rdx
	negq	%r12
	movq	%r14, %rdi
	leaq	(%r14,%r12,8), %r14
	xorl	%esi, %esi
	subq	%rdx, %rdi
	call	memset@PLT
.L137:
	movabsq	$-72057594037927936, %rax
	leaq	-16(%r14), %rbx
	testq	%rax, %r13
	jne	.L172
.L138:
	movabsq	$3170534137668829184, %rax
	orq	%rax, %r13
	movq	%rbx, %rax
	movq	%r13, -16(%r14)
.L168:
	addq	$40, %rsp
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
.L171:
	.cfi_restore_state
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	pari_err@PLT
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rcx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L142:
	movq	bot@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rsi
	jb	.L119
	movq	top@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rsi
	jnb	.L119
	cmpq	%rdi, %rsi
	jnb	.L119
	movq	avma@GOTPCREL(%rip), %rdx
	leaq	0(,%rbp,8), %r8
	movq	%rdi, %rax
	subq	%r8, %rax
	movq	%rax, (%rdx)
	leaq	-1(%rbp), %rdx
	cmpq	$-1, %rdx
	je	.L168
	leaq	-16(%r8), %r9
	leaq	(%rsi,%r8), %r11
	leaq	(%rax,%r9), %r10
	leaq	(%rsi,%r9), %rcx
	cmpq	%r10, %r11
	leaq	(%rax,%r8), %r10
	setbe	%r11b
	cmpq	%r10, %rcx
	setnb	%r10b
	orb	%r10b, %r11b
	je	.L126
	cmpq	$24, %rbp
	jbe	.L126
	andl	$15, %ecx
	shrq	$3, %rcx
	cmpq	%rcx, %rbp
	cmovbe	%rbp, %rcx
	testq	%rcx, %rcx
	je	.L123
	movq	-8(%rsi,%r8), %rdx
	movq	%rdx, -8(%rdi)
	leaq	-2(%rbp), %rdx
.L123:
	subq	%rcx, %rbp
	negq	%rcx
	xorl	%edi, %edi
	leaq	-2(%rbp), %r8
	leaq	(%r9,%rcx,8), %r9
	xorl	%ecx, %ecx
	shrq	%r8
	leaq	(%rsi,%r9), %r10
	addq	%rax, %r9
	addq	$1, %r8
	leaq	(%r8,%r8), %r11
.L124:
	movdqa	(%r10,%rcx), %xmm0
	addq	$1, %rdi
	movups	%xmm0, (%r9,%rcx)
	subq	$16, %rcx
	cmpq	%r8, %rdi
	jb	.L124
	subq	%r11, %rdx
	cmpq	%r11, %rbp
	je	.L168
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L119:
	movq	avma@GOTPCREL(%rip), %rax
	movq	%rdi, (%rax)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rsi, %rax
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
.L126:
	.cfi_restore_state
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	subq	$1, %rdx
	cmpq	$-1, %rdx
	jne	.L126
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L172:
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L130:
	movq	%rbp, %rax
	negq	%rax
	leaq	16(,%rax,8), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L135:
	movq	-8(%r15,%rax), %rdx
	movq	%rdx, -8(%r14,%rax)
	subq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L135
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L141:
	movq	%r14, %r8
	movq	%r15, %r9
	jmp	.L131
	.cfi_endproc
.LFE690:
	.size	F2x_shiftip, .-F2x_shiftip
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.type	gerepileall.constprop.5, @function
gerepileall.constprop.5:
.LFB743:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$16, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	leaq	256(%rsp), %rax
	leaq	64(%rsp), %rbp
	movq	%rdx, 160(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%r8, 176(%rsp)
	movq	%rax, 48(%rsp)
	leaq	144(%rsp), %rax
	movq	%r9, 184(%rsp)
	movl	$16, 40(%rsp)
	leaq	40(%rbp), %r14
	movq	%rbp, %rbx
	movq	%rax, 56(%rsp)
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L194:
	movl	%r15d, %eax
	addq	56(%rsp), %rax
	addl	$8, %r15d
	movl	%r15d, 40(%rsp)
.L175:
	movq	(%rax), %r12
	addq	$8, %rbx
	movq	(%r12), %rdi
	movq	%r12, -8(%rbx)
	call	copy_bin@PLT
	cmpq	%r14, %rbx
	movq	%rax, (%r12)
	je	.L193
.L176:
	cmpl	$47, %r15d
	jbe	.L194
	movq	48(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 48(%rsp)
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L193:
	movq	avma@GOTPCREL(%rip), %rax
	movq	PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq	%r13, (%rax)
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L197:
	call	shiftaddress_canon@PLT
.L182:
	movl	(%r12), %r15d
	movq	%r14, %rdi
	movl	$1, (%r12)
	call	free@PLT
	testl	%r15d, %r15d
	movl	%r15d, (%r12)
	jne	.L179
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L179
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
.L179:
	subq	$8, %rbp
	cmpq	(%rsp), %rbp
	movq	%rbx, 0(%r13)
	je	.L195
.L183:
	movq	32(%rbp), %r13
	movq	0(%r13), %r14
	movq	8(%r14), %r15
	testq	%r15, %r15
	je	.L196
	movq	avma@GOTPCREL(%rip), %rax
	movq	bot@GOTPCREL(%rip), %r10
	movq	%r15, %rbx
	movq	(%r14), %rdi
	subq	16(%r14), %rbx
	leaq	32(%r14), %rsi
	movq	(%rax), %rax
	leaq	0(,%rdi,8), %rdx
	movq	%rax, %r9
	subq	(%r10), %rax
	subq	%rdx, %r9
	shrq	$3, %rax
	cmpq	%rax, %rdi
	jbe	.L180
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r9, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	pari_err@PLT
	movq	24(%rsp), %r9
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdx
.L180:
	movq	avma@GOTPCREL(%rip), %rax
	movq	%r9, %rdi
	movq	%r9, (%rax)
	call	memcpy@PLT
	addq	%rax, %rbx
	movl	24(%r14), %eax
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	subq	%r15, %rsi
	testl	%eax, %eax
	jne	.L197
	call	shiftaddress@PLT
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L196:
	movl	(%r12), %ebx
	movq	%r14, %rdi
	movl	$1, (%r12)
	call	free@PLT
	testl	%ebx, %ebx
	movl	%ebx, (%r12)
	jne	.L178
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L198
.L178:
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
.L199:
	subq	$8, %rbp
	cmpq	(%rsp), %rbp
	movq	%rbx, 0(%r13)
	jne	.L183
	.p2align 4,,10
	.p2align 3
.L195:
	addq	$200, %rsp
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
.L198:
	.cfi_restore_state
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	jmp	.L199
	.cfi_endproc
.LFE743:
	.size	gerepileall.constprop.5, .-gerepileall.constprop.5
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.type	gerepileall.constprop.6, @function
gerepileall.constprop.6:
.LFB742:
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
	movl	$16, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	leaq	272(%rsp), %rax
	movq	%rdx, 176(%rsp)
	movq	%rcx, 184(%rsp)
	movq	%r8, 192(%rsp)
	movq	%r9, 200(%rsp)
	leaq	80(%rsp), %r14
	movq	%rax, 64(%rsp)
	leaq	160(%rsp), %rax
	movl	$16, 56(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L221:
	movl	%r13d, %eax
	addq	72(%rsp), %rax
	addl	$8, %r13d
	movl	%r13d, 56(%rsp)
.L202:
	movq	(%rax), %rbp
	movq	0(%rbp), %rdi
	movq	%rbp, (%r14,%rbx)
	addq	$8, %rbx
	call	copy_bin@PLT
	cmpq	$16, %rbx
	movq	%rax, 0(%rbp)
	je	.L220
.L203:
	cmpl	$47, %r13d
	jbe	.L221
	movq	64(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 64(%rsp)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L220:
	movq	avma@GOTPCREL(%rip), %r15
	leaq	8(%r14), %rax
	xorl	%ebp, %ebp
	movq	%rax, 16(%rsp)
	movq	%r12, (%r15)
	movq	PARI_SIGINT_block@GOTPCREL(%rip), %r12
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L224:
	subq	%r8, %rsi
	movq	%rbx, %rdi
	call	shiftaddress_canon@PLT
.L209:
	movl	(%r12), %eax
	movq	%r14, %rdi
	movl	$1, (%r12)
	movl	%eax, 8(%rsp)
	call	free@PLT
	movl	8(%rsp), %eax
	testl	%eax, %eax
	movl	%eax, (%r12)
	jne	.L206
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L206
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
.L206:
	subq	$8, %rbp
	movq	%rbx, 0(%r13)
	cmpq	$-16, %rbp
	je	.L222
.L210:
	movq	16(%rsp), %rax
	movq	(%rax,%rbp), %r13
	movq	0(%r13), %r14
	movq	8(%r14), %r8
	testq	%r8, %r8
	je	.L223
	movq	(%r15), %rax
	movq	bot@GOTPCREL(%rip), %r10
	movq	%r8, %rbx
	movq	(%r14), %rdi
	subq	16(%r14), %rbx
	leaq	32(%r14), %rsi
	movq	%rax, %r9
	subq	(%r10), %rax
	leaq	0(,%rdi,8), %rdx
	subq	%rdx, %r9
	shrq	$3, %rax
	cmpq	%rax, %rdi
	jbe	.L207
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r9, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%r8, 8(%rsp)
	call	pari_err@PLT
	movq	40(%rsp), %r9
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	8(%rsp), %r8
.L207:
	movq	%r9, %rdi
	movq	%r8, 8(%rsp)
	movq	%r9, (%r15)
	call	memcpy@PLT
	addq	%rax, %rbx
	movl	24(%r14), %eax
	movq	8(%rsp), %r8
	movq	%rbx, %rsi
	testl	%eax, %eax
	jne	.L224
	subq	%r8, %rsi
	movq	%rbx, %rdi
	call	shiftaddress@PLT
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L223:
	movl	(%r12), %ebx
	movq	%r14, %rdi
	movl	$1, (%r12)
	call	free@PLT
	testl	%ebx, %ebx
	movl	%ebx, (%r12)
	jne	.L205
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L225
.L205:
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
.L226:
	subq	$8, %rbp
	movq	%rbx, 0(%r13)
	cmpq	$-16, %rbp
	jne	.L210
	.p2align 4,,10
	.p2align 3
.L222:
	addq	$216, %rsp
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
.L225:
	.cfi_restore_state
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	jmp	.L226
	.cfi_endproc
.LFE742:
	.size	gerepileall.constprop.6, .-gerepileall.constprop.6
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.type	gerepileall, @function
gerepileall:
.LFB382:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	cmpl	$9, %esi
	leaq	272(%rsp), %rax
	movq	%rdx, 176(%rsp)
	movq	%rcx, 184(%rsp)
	movq	%r8, 192(%rsp)
	movq	%r9, 200(%rsp)
	movq	%rax, 64(%rsp)
	leaq	160(%rsp), %rax
	movl	$16, 56(%rsp)
	movq	%rax, 72(%rsp)
	jg	.L228
	testl	%esi, %esi
	jle	.L229
	leal	-1(%rsi), %eax
	movl	$16, %r15d
	leaq	80(%rsp), %rbp
	movq	%rax, %rbx
	leaq	88(%rsp,%rax,8), %r14
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L278:
	movl	%r15d, %eax
	addq	72(%rsp), %rax
	addl	$8, %r15d
	movl	%r15d, 56(%rsp)
.L231:
	movq	(%rax), %r13
	addq	$8, %rbp
	movq	0(%r13), %rdi
	movq	%r13, -8(%rbp)
	call	copy_bin@PLT
	cmpq	%r14, %rbp
	movq	%rax, 0(%r13)
	je	.L277
.L232:
	cmpl	$47, %r15d
	jbe	.L278
	movq	64(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 64(%rsp)
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L277:
	movq	avma@GOTPCREL(%rip), %r13
	movq	PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq	%r12, 0(%r13)
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L280:
	subq	%rcx, %rsi
	movq	%r12, %rdi
	call	shiftaddress_canon@PLT
.L238:
	movl	0(%rbp), %eax
	movq	%r14, %rdi
	movl	$1, 0(%rbp)
	movl	%eax, (%rsp)
	call	free@PLT
	movl	(%rsp), %eax
	testl	%eax, %eax
	movl	%eax, 0(%rbp)
	jne	.L235
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L235
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
.L235:
	subl	$1, %ebx
	movq	%r12, (%r15)
	cmpl	$-1, %ebx
	je	.L227
.L239:
	movslq	%ebx, %rax
	movq	80(%rsp,%rax,8), %r15
	movq	(%r15), %r14
	movq	8(%r14), %rcx
	testq	%rcx, %rcx
	je	.L279
	movq	0(%r13), %rax
	movq	bot@GOTPCREL(%rip), %r9
	movq	%rcx, %r12
	movq	(%r14), %rdi
	subq	16(%r14), %r12
	leaq	32(%r14), %rsi
	movq	%rax, %r8
	subq	(%r9), %rax
	leaq	0(,%rdi,8), %rdx
	subq	%rdx, %r8
	shrq	$3, %rax
	cmpq	%rax, %rdi
	jbe	.L236
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r8, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	call	pari_err@PLT
	movq	24(%rsp), %r8
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	(%rsp), %rcx
.L236:
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	movq	%r8, 0(%r13)
	call	memcpy@PLT
	movl	24(%r14), %edx
	addq	%rax, %r12
	movq	(%rsp), %rcx
	movq	%r12, %rsi
	testl	%edx, %edx
	jne	.L280
	subq	%rcx, %rsi
	movq	%r12, %rdi
	call	shiftaddress@PLT
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L286:
	movl	0(%rbp), %ebx
	movq	40(%rsp), %rdi
	movl	$1, 0(%rbp)
	call	free@PLT
	testl	%ebx, %ebx
	movl	%ebx, 0(%rbp)
	jne	.L227
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L227
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	.p2align 4,,10
	.p2align 3
.L227:
	addq	$216, %rsp
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
.L279:
	.cfi_restore_state
	movl	0(%rbp), %r12d
	movq	%r14, %rdi
	movl	$1, 0(%rbp)
	call	free@PLT
	testl	%r12d, %r12d
	movl	%r12d, 0(%rbp)
	jne	.L234
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L281
.L234:
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L228:
	movq	PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movslq	%esi, %rdi
	movl	%esi, (%rsp)
	salq	$3, %rdi
	movl	0(%rbp), %ebx
	movl	$1, 0(%rbp)
	call	malloc@PLT
	movl	(%rsp), %esi
	movq	%rax, 40(%rsp)
	testl	%ebx, %ebx
	movl	%ebx, 0(%rbp)
	je	.L282
.L241:
	cmpq	$0, 40(%rsp)
	je	.L283
.L242:
	leal	-1(%rsi), %eax
	movq	40(%rsp), %rcx
	movl	56(%rsp), %ebx
	leaq	8(,%rax,8), %r13
	movl	%eax, (%rsp)
	movq	%rax, 16(%rsp)
	movq	%rcx, %r15
	addq	%rcx, %r13
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L285:
	movl	%ebx, %eax
	addq	72(%rsp), %rax
	addl	$8, %ebx
	movl	%ebx, 56(%rsp)
.L244:
	movq	(%rax), %r14
	addq	$8, %r15
	movq	(%r14), %rdi
	movq	%r14, -8(%r15)
	call	copy_bin@PLT
	cmpq	%r13, %r15
	movq	%rax, (%r14)
	je	.L284
.L245:
	cmpl	$47, %ebx
	jbe	.L285
	movq	64(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 64(%rsp)
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L281:
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L284:
	movl	(%rsp), %eax
	movq	16(%rsp), %rcx
	movq	avma@GOTPCREL(%rip), %r13
	movl	%eax, 8(%rsp)
	movq	40(%rsp), %rax
	movq	%r12, 0(%r13)
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, (%rsp)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L288:
	call	shiftaddress_canon@PLT
.L251:
	movl	0(%rbp), %ebx
	movq	%r14, %rdi
	movl	$1, 0(%rbp)
	call	free@PLT
	testl	%ebx, %ebx
	movl	%ebx, 0(%rbp)
	jne	.L248
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L248
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
.L248:
	subq	$8, (%rsp)
	subl	$1, 8(%rsp)
	movq	%r12, (%r15)
	js	.L286
.L252:
	movq	(%rsp), %rax
	movq	(%rax), %r15
	movq	(%r15), %r14
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	je	.L287
	movq	0(%r13), %rax
	movq	bot@GOTPCREL(%rip), %r10
	movq	%rbx, %r12
	movq	(%r14), %rdi
	subq	16(%r14), %r12
	leaq	32(%r14), %rsi
	movq	%rax, %r9
	subq	(%r10), %rax
	leaq	0(,%rdi,8), %rdx
	subq	%rdx, %r9
	shrq	$3, %rax
	cmpq	%rax, %rdi
	jbe	.L249
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r9, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	call	pari_err@PLT
	movq	32(%rsp), %r9
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
.L249:
	movq	%r9, %rdi
	movq	%r9, 0(%r13)
	call	memcpy@PLT
	addq	%rax, %r12
	movl	24(%r14), %eax
	movq	%r12, %rsi
	movq	%r12, %rdi
	subq	%rbx, %rsi
	testl	%eax, %eax
	jne	.L288
	call	shiftaddress@PLT
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L287:
	movl	0(%rbp), %r12d
	movq	%r14, %rdi
	movl	$1, 0(%rbp)
	call	free@PLT
	testl	%r12d, %r12d
	movl	%r12d, 0(%rbp)
	jne	.L247
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L247
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
.L247:
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L229:
	movq	avma@GOTPCREL(%rip), %rax
	movq	%rdi, (%rax)
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L282:
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L241
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	movl	(%rsp), %esi
	jmp	.L241
.L283:
	movl	$28, %edi
	xorl	%eax, %eax
	movl	%esi, (%rsp)
	call	pari_err@PLT
	movl	(%rsp), %esi
	jmp	.L242
	.cfi_endproc
.LFE382:
	.size	gerepileall, .-gerepileall
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	F2x_degree
	.type	F2x_degree, @function
F2x_degree:
.LFB678:
	.cfi_startproc
	movabsq	$72057594037927935, %rdx
	andq	(%rdi), %rdx
	cmpq	$2, %rdx
	je	.L295
	leaq	-2(%rdx), %rax
	movq	-8(%rdi,%rdx,8), %rdx
	movabsq	$-4294967296, %rcx
	salq	$6, %rax
	testq	%rcx, %rdx
	jne	.L306
	movl	$44, %esi
	movl	$60, %ecx
.L291:
	testq	$-65536, %rdx
	je	.L292
	shrq	$16, %rdx
	movl	%esi, %ecx
.L292:
	testq	$-256, %rdx
	je	.L293
	subl	$8, %ecx
	shrq	$8, %rdx
.L293:
	testq	$-16, %rdx
	je	.L294
	subl	$4, %ecx
	shrq	$4, %rdx
.L294:
	leaq	__bfffo_tabshi.20233(%rip), %rsi
	addl	(%rsi,%rdx,4), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	shrq	$32, %rdx
	movl	$12, %esi
	movl	$28, %ecx
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L295:
	movq	$-1, %rax
	ret
	.cfi_endproc
.LFE678:
	.size	F2x_degree, .-F2x_degree
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	F2x_to_ZX
	.type	F2x_to_ZX, @function
F2x_to_ZX:
.LFB679:
	.cfi_startproc
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
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	F2x_degree@PLT
	movq	avma@GOTPCREL(%rip), %r13
	leaq	3(%rax), %rbx
	leaq	0(,%rbx,8), %rdx
	movq	0(%r13), %rax
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbx
	jbe	.L308
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L308:
	movabsq	$-72057594037927936, %rax
	movq	%r12, 0(%r13)
	testq	%rax, %rbx
	je	.L309
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L309:
	movabsq	$1441151880758558720, %rax
	movabsq	$72057594037927935, %r10
	movl	$2, %r8d
	orq	%rbx, %rax
	movl	$2, %edx
	movq	%rax, (%r12)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	andq	%r10, %rcx
	cmpq	$2, %rcx
	jle	.L311
	.p2align 4,,10
	.p2align 3
.L324:
	cmpq	%rdx, %rbx
	jle	.L316
	xorl	%ecx, %ecx
	movq	gen_1@GOTPCREL(%rip), %r9
	movq	gen_0@GOTPCREL(%rip), %rdi
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L330:
	cmpq	$63, %rcx
	jg	.L319
.L312:
	movq	0(%rbp,%r8,8), %rsi
	shrq	%cl, %rsi
	andl	$1, %esi
	movq	(%r9), %rsi
	cmove	(%rdi), %rsi
	addq	$1, %rcx
	movq	%rsi, (%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jg	.L330
.L319:
	movq	0(%rbp), %rax
.L316:
	movq	%rax, %rcx
	addq	$1, %r8
	andq	%r10, %rcx
	cmpq	%r8, %rcx
	jg	.L324
.L311:
	cmpq	$2, %rbx
	movl	$0, %edx
	movabsq	$4611686018427387904, %rax
	cmovle	%rdx, %rax
	orq	8(%rbp), %rax
	movq	%rax, 8(%r12)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE679:
	.size	F2x_to_ZX, .-F2x_to_ZX
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	F2xC_to_ZXC
	.type	F2xC_to_ZXC, @function
F2xC_to_ZXC:
.LFB680:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movabsq	$72057594037927935, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	avma@GOTPCREL(%rip), %rbx
	andq	(%rdi), %rbp
	movq	(%rbx), %rax
	leaq	0(,%rbp,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L332
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L332:
	movabsq	$2594073385365405696, %rax
	movq	%r12, (%rbx)
	movl	$1, %ebx
	orq	%rbp, %rax
	cmpq	$1, %rbp
	movq	%rax, (%r12)
	jle	.L338
	.p2align 4,,10
	.p2align 3
.L336:
	movq	0(%r13,%rbx,8), %rdi
	call	F2x_to_ZX@PLT
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L336
.L338:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE680:
	.size	F2xC_to_ZXC, .-F2xC_to_ZXC
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	F2x_to_Flx
	.type	F2x_to_Flx, @function
F2x_to_Flx:
.LFB681:
	.cfi_startproc
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
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	F2x_degree@PLT
	movq	avma@GOTPCREL(%rip), %r13
	leaq	3(%rax), %rbx
	leaq	0(,%rbx,8), %rdx
	movq	0(%r13), %rax
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbx
	jbe	.L341
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L341:
	movabsq	$-72057594037927936, %rax
	movq	%r12, 0(%r13)
	testq	%rax, %rbx
	je	.L342
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L342:
	movabsq	$3170534137668829184, %rax
	movabsq	$72057594037927935, %rdi
	movl	$2, %r8d
	orq	%rbx, %rax
	movl	$2, %esi
	movq	%rax, (%r12)
	movq	8(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	0(%rbp), %rax
	movq	%rax, %rdx
	andq	%rdi, %rdx
	cmpq	$2, %rdx
	jle	.L344
	.p2align 4,,10
	.p2align 3
.L355:
	xorl	%ecx, %ecx
	cmpq	%rsi, %rbx
	jg	.L356
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L362:
	cmpq	$63, %rcx
	jg	.L350
.L356:
	movq	0(%rbp,%r8,8), %rdx
	sarq	%cl, %rdx
	addq	$1, %rcx
	andl	$1, %edx
	movq	%rdx, (%r12,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %rbx
	jg	.L362
.L350:
	movq	0(%rbp), %rax
.L349:
	movq	%rax, %rdx
	addq	$1, %r8
	andq	%rdi, %rdx
	cmpq	%r8, %rdx
	jg	.L355
.L344:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE681:
	.size	F2x_to_Flx, .-F2x_to_Flx
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	Z_to_F2x
	.type	Z_to_F2x, @function
Z_to_F2x:
.LFB682:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	movq	%rax, %rdx
	sarq	$62, %rdx
	testq	%rdx, %rdx
	je	.L364
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	testb	$1, -8(%rdi,%rax,8)
	je	.L364
	movq	avma@GOTPCREL(%rip), %r12
	movq	bot@GOTPCREL(%rip), %rax
	movq	(%r12), %rbp
	movq	%rbp, %rsi
	subq	(%rax), %rsi
	leaq	-24(%rbp), %rbx
	cmpq	$23, %rsi
	jbe	.L378
.L370:
	movabsq	$3170534137668829187, %rax
	movq	%rbx, (%r12)
	movq	%r13, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	$1, -8(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L364:
	.cfi_restore_state
	movq	avma@GOTPCREL(%rip), %r12
	movq	bot@GOTPCREL(%rip), %rax
	movq	(%r12), %rbp
	movq	%rbp, %rcx
	subq	(%rax), %rcx
	leaq	-16(%rbp), %rbx
	cmpq	$15, %rcx
	jbe	.L379
.L368:
	movabsq	$3170534137668829186, %rax
	movq	%rbx, (%r12)
	movq	%r13, -8(%rbp)
	movq	%rax, -16(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L379:
	.cfi_restore_state
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L368
	.p2align 4,,10
	.p2align 3
.L378:
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L370
	.cfi_endproc
.LFE682:
	.size	Z_to_F2x, .-Z_to_F2x
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	ZX_to_F2x
	.type	ZX_to_F2x, @function
ZX_to_F2x:
.LFB683:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movabsq	$72057594037927935, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	andq	(%rdi), %rsi
	movq	avma@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	addq	$189, %rsi
	shrq	$6, %rsi
	leaq	0(,%rsi,8), %rdx
	movq	%rax, %r12
	movq	%rsi, %r13
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rsi
	jbe	.L381
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L381:
	movabsq	$3170534137668829184, %rax
	movq	%r12, 0(%rbp)
	movabsq	$72057594037927935, %r11
	orq	%r13, %rax
	movq	%r11, %rcx
	movl	$1, %ebp
	movq	%rax, (%r12)
	movabsq	$4611615649683210240, %rax
	andq	8(%rbx), %rax
	movl	$64, %edx
	movq	%rax, 8(%r12)
	andq	(%rbx), %rcx
	movl	$2, %eax
	cmpq	$2, %rcx
	jg	.L391
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L395:
	movq	%rdx, %rcx
	addq	$1, %rdx
.L384:
	movq	(%rbx,%rax,8), %r9
	movq	8(%r9), %r8
	movq	%r8, %r10
	sarq	$62, %r10
	testq	%r10, %r10
	je	.L385
	andq	%r11, %r8
	testb	$1, -8(%r9,%r8,8)
	je	.L385
	movl	$1, %edi
	salq	%cl, %rdi
	orq	%rdi, (%r12,%rbp,8)
.L385:
	movq	%r11, %rcx
	andq	(%rbx), %rcx
	addq	$1, %rax
	cmpq	%rax, %rcx
	jle	.L387
.L391:
	cmpq	$64, %rdx
	jne	.L395
	addq	$1, %rbp
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	$0, (%r12,%rbp,8)
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L387:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r13, %rsi
	movq	%r12, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	Flx_renormalize@PLT
	.cfi_endproc
.LFE683:
	.size	ZX_to_F2x, .-ZX_to_F2x
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	Flx_to_F2x
	.type	Flx_to_F2x, @function
Flx_to_F2x:
.LFB684:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movabsq	$72057594037927935, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	andq	(%rdi), %rsi
	movq	avma@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
	addq	$189, %rsi
	shrq	$6, %rsi
	leaq	0(,%rsi,8), %rdx
	movq	%rax, %rbp
	movq	%rsi, %r13
	subq	%rdx, %rbp
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rsi
	jbe	.L397
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L397:
	movabsq	$3170534137668829184, %rax
	movq	%rbp, (%r12)
	movabsq	$72057594037927935, %rdi
	orq	%r13, %rax
	movq	%rdi, %rcx
	movl	$1, %r9d
	movq	%rax, 0(%rbp)
	movq	8(%rbx), %rax
	movl	$64, %edx
	movq	%rax, 8(%rbp)
	andq	(%rbx), %rcx
	movl	$2, %eax
	cmpq	$2, %rcx
	jg	.L404
	jmp	.L402
	.p2align 4,,10
	.p2align 3
.L407:
	movq	%rdx, %rcx
	addq	$1, %rdx
.L400:
	cmpq	$0, (%rbx,%rax,8)
	je	.L401
	movl	$1, %r8d
	salq	%cl, %r8
	orq	%r8, 0(%rbp,%r9,8)
.L401:
	movq	%rdi, %rcx
	andq	(%rbx), %rcx
	addq	$1, %rax
	cmpq	%rax, %rcx
	jle	.L402
.L404:
	cmpq	$64, %rdx
	jne	.L407
	addq	$1, %r9
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	$0, 0(%rbp,%r9,8)
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L402:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r13, %rsi
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	Flx_renormalize@PLT
	.cfi_endproc
.LFE684:
	.size	Flx_to_F2x, .-Flx_to_F2x
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	F2x_to_F2v
	.type	F2x_to_F2v, @function
F2x_to_F2v:
.LFB685:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movabsq	$72057594037927935, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	191(%rsi), %rbx
	movq	%rdi, %r13
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	avma@GOTPCREL(%rip), %r15
	shrq	$6, %rbx
	leaq	0(,%rbx,8), %rdx
	andq	(%rdi), %r12
	movq	(%r15), %rax
	movq	%rax, %rbp
	subq	%rdx, %rbp
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbx
	jbe	.L409
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L409:
	movabsq	$-72057594037927936, %rax
	movq	%rbp, (%r15)
	testq	%rax, %rbx
	je	.L410
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L410:
	movabsq	$3170534137668829184, %rax
	movq	%r14, 8(%rbp)
	orq	%rbx, %rax
	cmpq	$2, %r12
	movq	%rax, 0(%rbp)
	jle	.L419
	leaq	16(%rbp), %rsi
	leaq	32(%r13), %rcx
	leaq	16(%r13), %rax
	leaq	-2(%r12), %rdx
	cmpq	%rcx, %rsi
	leaq	32(%rbp), %rcx
	setnb	%sil
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %sil
	je	.L420
	cmpq	$24, %rdx
	jbe	.L420
	salq	$60, %rax
	movl	$2, %r8d
	shrq	$63, %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	testq	%rax, %rax
	je	.L413
	movq	16(%r13), %rcx
	movb	$3, %r8b
	movq	%rcx, 16(%rbp)
.L413:
	movq	%rdx, %rdi
	leaq	16(,%rax,8), %rsi
	xorl	%edx, %edx
	subq	%rax, %rdi
	xorl	%eax, %eax
	leaq	-2(%rdi), %rcx
	leaq	0(%r13,%rsi), %r9
	addq	%rbp, %rsi
	shrq	%rcx
	addq	$1, %rcx
	leaq	(%rcx,%rcx), %r10
.L414:
	movdqa	(%r9,%rax), %xmm0
	addq	$1, %rdx
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L414
	addq	%r10, %r8
	cmpq	%r10, %rdi
	je	.L411
	movq	0(%r13,%r8,8), %rax
	movq	%rax, 0(%rbp,%r8,8)
.L411:
	cmpq	%rbx, %r12
	jge	.L434
	subq	%r12, %rbx
	leaq	0(%rbp,%r12,8), %rdi
	xorl	%esi, %esi
	leaq	0(,%rbx,8), %rdx
	call	memset@PLT
.L434:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
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
.L420:
	.cfi_restore_state
	movl	$2, %eax
	.p2align 4,,10
	.p2align 3
.L412:
	movq	0(%r13,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	cmpq	%r12, %rax
	jne	.L412
	jmp	.L411
	.p2align 4,,10
	.p2align 3
.L419:
	movl	$2, %r12d
	jmp	.L411
	.cfi_endproc
.LFE685:
	.size	F2x_to_F2v, .-F2x_to_F2v
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	F2x_add
	.type	F2x_add, @function
F2x_add:
.LFB686:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$72057594037927935, %rbx
	movq	%rbx, %r13
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	andq	(%rdi), %r13
	andq	(%rsi), %rbx
	cmpq	%rbx, %r13
	jge	.L437
	movq	%r13, %rax
	movq	%rsi, %r12
	movq	%rbx, %r13
	movq	%rdi, %r14
	movq	%rax, %rbx
.L437:
	movq	avma@GOTPCREL(%rip), %r15
	leaq	0(,%r13,8), %rdx
	movq	(%r15), %rax
	movq	%rax, %rbp
	subq	%rdx, %rbp
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %r13
	jbe	.L438
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L438:
	movabsq	$3170534137668829184, %rax
	movq	%rbp, (%r15)
	orq	%r13, %rax
	cmpq	$2, %rbx
	movq	%rax, 0(%rbp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rbp)
	jle	.L453
	leaq	16(%rbp), %r8
	leaq	32(%r12), %rcx
	leaq	32(%rbp), %rdi
	leaq	16(%r12), %rax
	leaq	-2(%rbx), %rdx
	cmpq	%rcx, %r8
	setnb	%sil
	cmpq	%rax, %rdi
	setbe	%cl
	orl	%ecx, %esi
	leaq	32(%r14), %rcx
	cmpq	%rcx, %r8
	leaq	16(%r14), %rcx
	setnb	%r8b
	cmpq	%rcx, %rdi
	setbe	%cl
	orl	%r8d, %ecx
	testb	%cl, %sil
	je	.L454
	cmpq	$14, %rdx
	jbe	.L454
	salq	$60, %rax
	movl	$2, %edi
	shrq	$63, %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	testq	%rax, %rax
	je	.L441
	movq	16(%r14), %rcx
	xorq	16(%r12), %rcx
	movb	$3, %dil
	movq	%rcx, 16(%rbp)
.L441:
	subq	%rax, %rdx
	leaq	16(,%rax,8), %rsi
	xorl	%eax, %eax
	leaq	-2(%rdx), %rcx
	movq	%rdx, %r8
	xorl	%edx, %edx
	leaq	(%r12,%rsi), %r11
	leaq	(%r14,%rsi), %r10
	addq	%rbp, %rsi
	shrq	%rcx
	addq	$1, %rcx
	leaq	(%rcx,%rcx), %r9
.L442:
	movdqu	(%r10,%rax), %xmm0
	addq	$1, %rdx
	pxor	(%r11,%rax), %xmm0
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L442
	cmpq	%r9, %r8
	leaq	(%rdi,%r9), %rax
	je	.L439
	movq	(%r14,%rax,8), %rdx
	xorq	(%r12,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
.L439:
	cmpq	%rbx, %r13
	jle	.L450
	leaq	16(,%rbx,8), %rdx
	movq	%r13, %rcx
	subq	%rbx, %rcx
	leaq	-16(%rdx), %rsi
	leaq	0(%rbp,%rdx), %rdi
	leaq	(%r12,%rsi), %rax
	leaq	0(%rbp,%rsi), %r8
	cmpq	%rdi, %rax
	setnb	%dil
	addq	%r12, %rdx
	cmpq	%rdx, %r8
	setnb	%dl
	orb	%dil, %dl
	je	.L451
	cmpq	$24, %rcx
	jbe	.L451
	salq	$60, %rax
	shrq	$63, %rax
	cmpq	%rax, %rcx
	cmovbe	%rcx, %rax
	testq	%rax, %rax
	je	.L447
	movq	(%r12,%rbx,8), %rdx
	movq	%rdx, 0(%rbp,%rbx,8)
	addq	$1, %rbx
.L447:
	movq	%rcx, %rdi
	leaq	(%rsi,%rax,8), %rsi
	xorl	%edx, %edx
	subq	%rax, %rdi
	xorl	%eax, %eax
	leaq	-2(%rdi), %rcx
	leaq	(%r12,%rsi), %r8
	addq	%rbp, %rsi
	shrq	%rcx
	addq	$1, %rcx
	leaq	(%rcx,%rcx), %r9
.L448:
	movdqa	(%r8,%rax), %xmm0
	addq	$1, %rdx
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L448
	addq	%r9, %rbx
	cmpq	%r9, %rdi
	je	.L450
	movq	(%r12,%rbx,8), %rax
	movq	%rax, 0(%rbp,%rbx,8)
.L450:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rsi
	movq	%rbp, %rdi
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
	jmp	Flx_renormalize@PLT
	.p2align 4,,10
	.p2align 3
.L451:
	.cfi_restore_state
	movq	(%r12,%rbx,8), %rax
	movq	%rax, 0(%rbp,%rbx,8)
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jne	.L451
	jmp	.L450
	.p2align 4,,10
	.p2align 3
.L454:
	movl	$2, %eax
	.p2align 4,,10
	.p2align 3
.L440:
	movq	(%r14,%rax,8), %rdx
	xorq	(%r12,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L440
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L453:
	movl	$2, %ebx
	jmp	.L439
	.cfi_endproc
.LFE686:
	.size	F2x_add, .-F2x_add
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	F2x_1_add
	.type	F2x_1_add, @function
F2x_1_add:
.LFB688:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movabsq	$72057594037927935, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	andq	(%rdi), %rbp
	cmpq	$2, %rbp
	je	.L505
	movq	avma@GOTPCREL(%rip), %r13
	leaq	0(,%rbp,8), %rdx
	movq	0(%r13), %rax
	movq	%rax, %rbx
	subq	%rdx, %rbx
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	ja	.L506
.L481:
	movabsq	$3170534137668829184, %rax
	movq	%rbx, 0(%r13)
	orq	%rbp, %rax
	movq	%rax, (%rbx)
	movq	8(%r12), %rax
	movq	%rax, 8(%rbx)
	movq	16(%r12), %rax
	xorq	$1, %rax
	cmpq	$3, %rbp
	movq	%rax, 16(%rbx)
	jle	.L507
	leaq	40(%r12), %rsi
	leaq	24(%rbx), %rcx
	leaq	24(%r12), %rax
	leaq	-3(%rbp), %rdx
	cmpq	%rcx, %rsi
	leaq	40(%rbx), %rcx
	setbe	%sil
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %sil
	je	.L490
	cmpq	$24, %rdx
	jbe	.L490
	salq	$60, %rax
	movl	$3, %r8d
	shrq	$63, %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	testq	%rax, %rax
	je	.L485
	movq	24(%r12), %rcx
	movb	$4, %r8b
	movq	%rcx, 24(%rbx)
.L485:
	movq	%rdx, %rsi
	subq	%rax, %rbp
	subq	%rax, %rsi
	leaq	-2(%rsi), %rcx
	shrq	%rcx
	addq	$1, %rcx
	cmpq	$4, %rbp
	leaq	(%rcx,%rcx), %r10
	je	.L486
	leaq	24(,%rax,8), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	leaq	(%r12,%rdi), %r9
	addq	%rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L487:
	movdqa	(%r9,%rax), %xmm0
	addq	$1, %rdx
	movups	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L487
	addq	%r10, %r8
	cmpq	%r10, %rsi
	je	.L489
.L486:
	movq	(%r12,%r8,8), %rax
	movq	%rax, (%rbx,%r8,8)
.L489:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L506:
	.cfi_restore_state
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L505:
	movq	avma@GOTPCREL(%rip), %r13
	movq	bot@GOTPCREL(%rip), %rax
	movq	8(%rdi), %r12
	movq	0(%r13), %rbp
	movq	%rbp, %rdi
	subq	(%rax), %rdi
	leaq	-24(%rbp), %rbx
	cmpq	$23, %rdi
	jbe	.L508
.L479:
	movabsq	$3170534137668829187, %rax
	movq	%rbx, 0(%r13)
	movq	%r12, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	$1, -8(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L508:
	.cfi_restore_state
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L490:
	movl	$3, %eax
	.p2align 4,,10
	.p2align 3
.L484:
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L484
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L507:
	jne	.L489
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbx, %rdi
	movl	$3, %esi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	Flx_renormalize@PLT
	.cfi_endproc
.LFE688:
	.size	F2x_1_add, .-F2x_1_add
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	F2x_mul
	.type	F2x_mul, @function
F2x_mul:
.LFB693:
	.cfi_startproc
	movabsq	$72057594037927935, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rdx, %rcx
	andq	(%rdi), %rdx
	andq	(%rsi), %rcx
	leaq	16(%rdi), %rdi
	addq	$16, %rsi
	subq	$2, %rdx
	subq	$2, %rcx
	call	F2x_mulspec
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE693:
	.size	F2x_mul, .-F2x_mul
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.type	F2x_mulspec, @function
F2x_mulspec:
.LFB692:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	testq	%rdx, %rdx
	jne	.L589
	jmp	.L586
	.p2align 4,,10
	.p2align 3
.L592:
	addq	$8, %rbp
	addq	$1, %rbx
	subq	$1, %rdx
	je	.L586
.L589:
	cmpq	$0, 0(%rbp)
	je	.L592
	testq	%r14, %r14
	jne	.L587
	jmp	.L516
	.p2align 4,,10
	.p2align 3
.L565:
	addq	$8, %r15
	addq	$1, %rbx
	subq	$1, %r14
	je	.L516
.L587:
	cmpq	$0, (%r15)
	je	.L565
	cmpq	%rdx, %r14
	jle	.L521
	testq	%rdx, %rdx
	je	.L541
	movq	%rdx, %rax
	movq	%r14, %rdx
	movq	%rax, %r14
	movq	%rbp, %rax
	movq	%r15, %rbp
	movq	%rax, %r15
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L586:
	testq	%r14, %r14
	jne	.L587
	.p2align 4,,10
	.p2align 3
.L541:
	movq	avma@GOTPCREL(%rip), %r12
	movq	bot@GOTPCREL(%rip), %rax
	movq	(%r12), %rbx
	movq	%rbx, %rsi
	subq	(%rax), %rsi
	leaq	-16(%rbx), %rbp
	cmpq	$15, %rsi
	jbe	.L593
.L522:
	movabsq	$3170534137668829186, %rax
	movq	%rbp, (%r12)
	movq	$0, -8(%rbx)
	movq	%rax, -16(%rbx)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
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
.L516:
	.cfi_restore_state
	testq	%rdx, %rdx
	jns	.L541
	movq	%rbp, %rax
	movq	%rdx, %r14
	movq	%r15, %rbp
	xorl	%edx, %edx
	movq	%rax, %r15
.L521:
	movq	avma@GOTPCREL(%rip), %r12
	cmpq	$1, %rdx
	movq	(%r12), %rax
	movq	%rax, 24(%rsp)
	jle	.L594
	movq	%rdx, %r13
	sarq	%r13
	subq	%r13, %rdx
	leaq	0(,%rdx,8), %rax
	testq	%rdx, %rdx
	movq	%rdx, %r12
	leaq	0(%rbp,%rax), %rdi
	movq	%rdi, 16(%rsp)
	je	.L533
	cmpq	$0, -8(%rbp,%rax)
	movq	%rdx, %r11
	je	.L535
	jmp	.L534
	.p2align 4,,10
	.p2align 3
.L595:
	cmpq	$0, -8(%rbp,%r11,8)
	jne	.L534
.L535:
	subq	$1, %r11
	jne	.L595
.L534:
	cmpq	%r14, %r12
	jge	.L545
	subq	%r12, %r14
	cmpq	$0, -8(%r15,%rax)
	leaq	(%r15,%rax), %rsi
	movq	%r12, %r10
	movq	%rsi, 32(%rsp)
	je	.L564
	.p2align 4,,10
	.p2align 3
.L536:
	movq	%r10, %rcx
	movq	%r11, %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r10, 56(%rsp)
	movq	%r11, 48(%rsp)
	call	F2x_mulspec
	movq	32(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rax, 8(%rsp)
	call	F2x_mulspec
	movq	48(%rsp), %r11
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%rax, 40(%rsp)
	movq	%r11, %rcx
	call	F2x_addspec
	movq	56(%rsp), %r10
	movq	32(%rsp), %rdi
	movq	%r14, %rdx
	movq	%rax, %rbp
	movq	%r15, %rsi
	movq	%r10, %rcx
	call	F2x_addspec
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	F2x_mul@PLT
	movq	40(%rsp), %r14
	movq	8(%rsp), %rsi
	movq	%rax, %rbp
	movq	%r14, %rdi
	call	F2x_add@PLT
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	F2x_add@PLT
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	F2x_addshift
.L538:
	movq	8(%rsp), %rsi
	movq	%r12, %rdx
	movq	%rax, %rdi
	call	F2x_addshift
	movq	%rbx, %rdx
	movq	%rax, %rsi
.L588:
	movq	24(%rsp), %rdi
	addq	$72, %rsp
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
	jmp	F2x_shiftip
	.p2align 4,,10
	.p2align 3
.L596:
	.cfi_restore_state
	cmpq	$0, -8(%r15,%r10,8)
	jne	.L536
.L564:
	subq	$1, %r10
	jne	.L596
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L545:
	movq	%r14, %rcx
	movq	%r11, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	F2x_mulspec
	movq	16(%rsp), %rdi
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%rax, 8(%rsp)
	call	F2x_mulspec
	jmp	.L538
.L593:
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L522
.L594:
	movq	(%r15), %rdi
	movq	0(%rbp), %rbp
	movq	%rdi, %r8
	movq	%rbp, %r9
	movl	%ebp, %ebp
	shrq	$32, %r9
	shrq	$32, %r8
	testq	%rbp, %rbp
	movl	%edi, %edi
	jne	.L597
	testq	%r9, %r9
	jne	.L552
	movl	$24, %ecx
	movabsq	$3170534137668829187, %r14
	xorl	%r13d, %r13d
	movl	$3, %eax
	xorl	%r15d, %r15d
.L530:
	movq	24(%rsp), %rdi
	movq	bot@GOTPCREL(%rip), %rdx
	movq	%rdi, %rsi
	subq	(%rdx), %rdi
	subq	%rcx, %rsi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	cmpq	%rax, %rdx
	jnb	.L531
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rsi, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rsi
.L531:
	testq	%r15, %r15
	movq	%rsi, (%r12)
	movq	%r13, 16(%rsi)
	movq	%r14, (%rsi)
	je	.L532
	movq	%r15, 24(%rsi)
.L532:
	movq	%rbx, %rdx
	jmp	.L588
.L597:
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%rbp, %rdx
	movq	%rdi, %r11
	movq	%r8, %r10
	salq	%cl, %r11
	salq	%cl, %r10
	shrq	%cl, %rdx
	xorq	%rsi, %r11
	xorq	%rax, %r10
	andl	$1, %edx
	cmovne	%r11, %rsi
	cmovne	%r10, %rax
	addq	$1, %rcx
	cmpq	$32, %rcx
	jne	.L526
	xorl	%r11d, %r11d
	testq	%r9, %r9
	je	.L527
.L539:
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L528:
	movq	%r9, %rdx
	movq	%r8, %rbp
	movq	%rdi, %r10
	salq	%cl, %rbp
	salq	%cl, %r10
	shrq	%cl, %rdx
	xorq	%r11, %rbp
	xorq	%rax, %r10
	andl	$1, %edx
	cmovne	%rbp, %r11
	cmovne	%r10, %rax
	addq	$1, %rcx
	cmpq	$32, %rcx
	jne	.L528
.L527:
	movq	%rax, %r13
	shrq	$32, %rax
	movabsq	$3170534137668829187, %r14
	salq	$32, %r13
	movq	%rax, %r15
	xorq	%r11, %r15
	xorq	%rsi, %r13
	cmpq	%r11, %rax
	setne	%dl
	movabsq	$3170534137668829188, %rax
	cmovne	%rax, %r14
	movzbl	%dl, %ecx
	movzbl	%dl, %eax
	leaq	24(,%rcx,8), %rcx
	addq	$3, %rax
	jmp	.L530
.L533:
	xorl	%r11d, %r11d
	testq	%r14, %r14
	jle	.L545
	addq	%r15, %rax
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	movq	%rax, 32(%rsp)
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L552:
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L539
	.cfi_endproc
.LFE692:
	.size	F2x_mulspec, .-F2x_mulspec
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
.LCOLDB30:
	.text
.LHOTB30:
	.p2align 4,,15
	.globl	F2x_sqr
	.type	F2x_sqr, @function
F2x_sqr:
.LFB694:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movabsq	$72057594037927935, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	addq	$-128, %rsp
	.cfi_def_cfa_offset 176
	andq	(%rdi), %r13
	movq	avma@GOTPCREL(%rip), %r14
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	leaq	-2(%r13,%r13), %r12
	movq	(%r14), %rax
	leaq	0(,%r12,8), %rdx
	movdqa	.LC23(%rip), %xmm0
	movq	%rax, %rbx
	subq	%rdx, %rbx
	movq	bot@GOTPCREL(%rip), %rdx
	movaps	%xmm0, 16(%rsp)
	movdqa	.LC24(%rip), %xmm0
	subq	(%rdx), %rax
	movaps	%xmm0, 32(%rsp)
	shrq	$3, %rax
	movdqa	.LC25(%rip), %xmm0
	cmpq	%rax, %r12
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC27(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC28(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC29(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	jbe	.L599
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L599:
	movabsq	$-72057594037927936, %rax
	movq	%rbx, (%r14)
	testq	%rax, %r12
	je	.L600
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L600:
	movabsq	$3170534137668829184, %rax
	leaq	-2(%r13,%r13), %rsi
	movl	$2, %ecx
	orq	%r12, %rax
	cmpq	$2, %r13
	movq	%rax, (%rbx)
	movq	8(%rbp), %rax
	movq	%rax, 8(%rbx)
	jle	.L605
	.p2align 4,,10
	.p2align 3
.L604:
	movq	8(%rbp,%rcx,4), %r8
	movq	$0, (%rbx,%rcx,8)
	movq	%r8, %rax
	movl	%r8d, %edx
	shrq	$32, %rax
	testq	%rdx, %rdx
	je	.L602
	movq	%rdx, %rdi
	andl	$15, %r8d
	shrq	$28, %rdi
	movq	(%rsp,%rdi,8), %rdi
	salq	$56, %rdi
	orq	(%rsp,%r8,8), %rdi
	movq	%rdi, %r8
	movq	%rdx, %rdi
	shrq	$4, %rdi
	andl	$15, %edi
	movq	(%rsp,%rdi,8), %rdi
	salq	$8, %rdi
	orq	%rdi, %r8
	movq	%rdx, %rdi
	shrq	$8, %rdi
	andl	$15, %edi
	movq	(%rsp,%rdi,8), %rdi
	salq	$16, %rdi
	orq	%rdi, %r8
	movq	%rdx, %rdi
	shrq	$12, %rdi
	andl	$15, %edi
	movq	(%rsp,%rdi,8), %rdi
	salq	$24, %rdi
	orq	%rdi, %r8
	movq	%rdx, %rdi
	shrq	$16, %rdi
	andl	$15, %edi
	movq	(%rsp,%rdi,8), %rdi
	salq	$32, %rdi
	orq	%rdi, %r8
	movq	%rdx, %rdi
	shrq	$24, %rdx
	shrq	$20, %rdi
	andl	$15, %edx
	andl	$15, %edi
	movq	(%rsp,%rdi,8), %rdi
	salq	$40, %rdi
	orq	%rdi, %r8
	movq	(%rsp,%rdx,8), %rdi
	movq	%r8, %rdx
	salq	$48, %rdi
	orq	%rdi, %rdx
	movq	%rdx, (%rbx,%rcx,8)
.L602:
	testq	%rax, %rax
	movq	$0, 8(%rbx,%rcx,8)
	je	.L603
	movq	%rax, %rdx
	shrq	$28, %rdx
	movq	(%rsp,%rdx,8), %rdi
	movq	%rax, %rdx
	andl	$15, %edx
	salq	$56, %rdi
	orq	(%rsp,%rdx,8), %rdi
	movq	%rax, %rdx
	shrq	$4, %rdx
	andl	$15, %edx
	movq	(%rsp,%rdx,8), %rdx
	salq	$8, %rdx
	orq	%rdx, %rdi
	movq	%rax, %rdx
	shrq	$8, %rdx
	andl	$15, %edx
	movq	(%rsp,%rdx,8), %rdx
	salq	$16, %rdx
	orq	%rdx, %rdi
	movq	%rax, %rdx
	shrq	$12, %rdx
	andl	$15, %edx
	movq	(%rsp,%rdx,8), %rdx
	salq	$24, %rdx
	orq	%rdx, %rdi
	movq	%rax, %rdx
	shrq	$16, %rdx
	andl	$15, %edx
	movq	(%rsp,%rdx,8), %rdx
	salq	$32, %rdx
	orq	%rdx, %rdi
	movq	%rax, %rdx
	shrq	$24, %rax
	shrq	$20, %rdx
	andl	$15, %eax
	andl	$15, %edx
	movq	(%rsp,%rdx,8), %rdx
	salq	$40, %rdx
	orq	%rdx, %rdi
	movq	(%rsp,%rax,8), %rdx
	movq	%rdi, %rax
	salq	$48, %rdx
	orq	%rdx, %rax
	movq	%rax, 8(%rbx,%rcx,8)
.L603:
	addq	$2, %rcx
	cmpq	%rsi, %rcx
	jne	.L604
.L605:
	subq	$-128, %rsp
	.cfi_def_cfa_offset 48
	movq	%r12, %rsi
	movq	%rbx, %rdi
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
	jmp	Flx_renormalize@PLT
	.cfi_endproc
.LFE694:
	.size	F2x_sqr, .-F2x_sqr
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.globl	F2x_rem
	.type	F2x_rem, @function
F2x_rem:
.LFB697:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rdi), %rbx
	movq	%rsi, %rdi
	call	F2x_degree@PLT
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L723
	movabsq	$72057594037927935, %rax
	andq	%rax, %rbx
	cmpq	$2, %rbx
	je	.L660
	movq	-8(%r12,%rbx,8), %rax
	leaq	-2(%rbx), %r9
	movabsq	$-4294967296, %rdx
	salq	$6, %r9
	testq	%rdx, %rax
	jne	.L724
	movl	$44, %ecx
	movl	$60, %edx
.L622:
	testq	$-65536, %rax
	je	.L623
	shrq	$16, %rax
	movl	%ecx, %edx
.L623:
	testq	$-256, %rax
	je	.L624
	subl	$8, %edx
	shrq	$8, %rax
.L624:
	testq	$-16, %rax
	je	.L625
	subl	$4, %edx
	shrq	$4, %rax
.L625:
	leaq	__bfffo_tabshi.20233(%rip), %rcx
	addl	(%rcx,%rax,4), %edx
	movslq	%edx, %rax
	subq	%rax, %r9
	subq	$1, %r9
.L621:
	movq	avma@GOTPCREL(%rip), %rdx
	movq	bot@GOTPCREL(%rip), %rax
	movabsq	$72057594037927935, %r13
	andq	(%r12), %r13
	movq	(%rdx), %rcx
	leaq	0(,%r13,8), %r14
	movq	%rcx, %rdi
	subq	(%rax), %rdi
	movq	%rcx, %rbp
	subq	%r14, %rbp
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpq	%rax, %r13
	jbe	.L626
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, 24(%rsp)
	movq	%r9, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, (%rsp)
	call	pari_err@PLT
	movq	24(%rsp), %rdx
	movq	16(%rsp), %r9
	movq	8(%rsp), %rcx
	movq	(%rsp), %rsi
.L626:
	movq	%rbp, (%rdx)
	movabsq	$-72057594037927937, %rax
	andq	(%r12), %rax
	leaq	-1(%r13), %rdi
	testq	%rdi, %rdi
	movq	%rax, 0(%rbp)
	movq	%rdi, %rax
	jle	.L635
	leaq	-16(%r14), %r8
	leaq	(%r12,%r14), %r10
	leaq	0(%rbp,%r8), %r11
	leaq	(%r12,%r8), %rdx
	cmpq	%r10, %r11
	leaq	0(%rbp,%r14), %r10
	setnb	%r11b
	cmpq	%r10, %rdx
	setnb	%r10b
	orb	%r10b, %r11b
	je	.L636
	cmpq	$24, %rdi
	jbe	.L636
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdi, %rdx
	cmova	%rdi, %rdx
	testq	%rdx, %rdx
	je	.L631
	movq	-8(%r12,%r14), %rax
	movq	%rax, -8(%rcx)
	leaq	-2(%r13), %rax
.L631:
	subq	%rdx, %rdi
	subq	%rdx, %r13
	leaq	-2(%rdi), %r10
	shrq	%r10
	addq	$1, %r10
	cmpq	$2, %r13
	leaq	(%r10,%r10), %r11
	je	.L632
	negq	%rdx
	xorl	%ecx, %ecx
	leaq	(%r8,%rdx,8), %r8
	xorl	%edx, %edx
	leaq	(%r12,%r8), %r13
	addq	%rbp, %r8
.L633:
	movdqa	0(%r13,%rdx), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%r8,%rdx)
	subq	$16, %rdx
	cmpq	%r10, %rcx
	jb	.L633
	subq	%r11, %rax
	cmpq	%r11, %rdi
	je	.L635
.L632:
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
.L635:
	cmpq	%r9, %rsi
	jg	.L629
	leaq	16(%r15), %rax
	movq	%rbp, %r13
	movabsq	$72057594037927935, %rdi
	subq	%r15, %r13
	movq	%r9, %r8
	movq	%rax, (%rsp)
	leaq	32(%r15), %rax
	movq	%rax, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L693:
	subq	%rsi, %r8
	movq	%rdi, %r14
	andq	(%r15), %r14
	movq	%r8, %r10
	sarq	$6, %r10
	andl	$63, %r8d
	jne	.L638
	cmpq	$2, %r14
	jle	.L640
	leaq	32(,%r10,8), %rax
	leaq	-2(%r14), %rcx
	leaq	2(%r10), %rdx
	leaq	-16(%rbp,%rax), %r8
	cmpq	16(%rsp), %r8
	setnb	%r9b
	addq	%rbp, %rax
	cmpq	%rax, (%rsp)
	setnb	%al
	orb	%al, %r9b
	je	.L646
	cmpq	$9, %rcx
	jbe	.L646
	movq	%r8, %rax
	movl	$2, %r12d
	salq	$60, %rax
	shrq	$63, %rax
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	testq	%rax, %rax
	je	.L647
	movq	16(%r15), %r9
	xorq	%r9, (%r8)
	movb	$3, %r12b
.L647:
	subq	%rax, %rcx
	leaq	16(,%rax,8), %r11
	addq	%rax, %rdx
	leaq	-2(%rcx), %r8
	leaq	0(%rbp,%rdx,8), %r9
	xorl	%eax, %eax
	addq	%r15, %r11
	xorl	%edx, %edx
	shrq	%r8
	addq	$1, %r8
	leaq	(%r8,%r8), %r14
.L648:
	movdqu	(%r11,%rax), %xmm0
	addq	$1, %rdx
	pxor	(%r9,%rax), %xmm0
	movaps	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpq	%r8, %rdx
	jb	.L648
	addq	%r14, %r12
	cmpq	%rcx, %r14
	je	.L640
	addq	%r12, %r10
	movq	(%r15,%r12,8), %rax
	xorq	%rax, 0(%rbp,%r10,8)
.L640:
	cmpq	$2, %rbx
	jle	.L643
	movq	-8(%rbp,%rbx,8), %rax
	testq	%rax, %rax
	je	.L700
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L725:
	movq	-8(%rbp,%rbx,8), %rax
	testq	%rax, %rax
	jne	.L659
.L700:
	subq	$1, %rbx
	cmpq	$2, %rbx
	jne	.L725
.L664:
	movq	$-1, %r8
.L652:
	cmpq	%r8, %rsi
	jle	.L693
.L629:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rsi
	movq	%rbp, %rdi
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
	jmp	Flx_renormalize@PLT
	.p2align 4,,10
	.p2align 3
.L636:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
	subq	$1, %rax
	je	.L635
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
	subq	$1, %rax
	jne	.L636
	jmp	.L635
.L724:
	shrq	$32, %rax
	movl	$12, %ecx
	movl	$28, %edx
	jmp	.L622
.L643:
	je	.L664
	movq	-8(%rbp,%rbx,8), %rax
.L659:
	leaq	-2(%rbx), %r8
	movabsq	$-4294967296, %rcx
	salq	$6, %r8
	testq	%rcx, %rax
	je	.L665
	shrq	$32, %rax
	movl	$12, %ecx
	movl	$28, %edx
.L654:
	testq	$-65536, %rax
	je	.L655
	shrq	$16, %rax
	movl	%ecx, %edx
.L655:
	testq	$-256, %rax
	je	.L656
	subl	$8, %edx
	shrq	$8, %rax
.L656:
	testq	$-16, %rax
	je	.L657
	subl	$4, %edx
	shrq	$4, %rax
.L657:
	leaq	__bfffo_tabshi.20233(%rip), %rcx
	addl	(%rcx,%rax,4), %edx
	movslq	%edx, %rdx
	subq	%rdx, %r8
	subq	$1, %r8
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L638:
	movl	$64, %r11d
	subq	%r8, %r11
	cmpq	$2, %r14
	jle	.L640
	movq	(%rsp), %rdx
	leaq	(%r15,%r14,8), %r12
	xorl	%eax, %eax
	movq	%rsi, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L642:
	movq	(%rdx), %rsi
	leaq	0(%r13,%rdx), %r9
	movl	%r8d, %ecx
	addq	$8, %rdx
	salq	%cl, %rsi
	movl	%r11d, %ecx
	orq	%rsi, %rax
	xorq	%rax, (%r9,%r10,8)
	movq	-8(%rdx), %rax
	shrq	%cl, %rax
	cmpq	%r12, %rdx
	jne	.L642
	testq	%rax, %rax
	movq	8(%rsp), %rsi
	je	.L640
	addq	%r14, %r10
	xorq	%rax, 0(%rbp,%r10,8)
	jmp	.L640
	.p2align 4,,10
	.p2align 3
.L665:
	movl	$44, %ecx
	movl	$60, %edx
	jmp	.L654
.L646:
	movq	(%rsp), %rax
	leaq	(%r15,%r14,8), %r8
	.p2align 4,,10
	.p2align 3
.L650:
	leaq	0(%r13,%rax), %rdx
	movq	(%rax), %rcx
	addq	$8, %rax
	xorq	%rcx, (%rdx,%r10,8)
	cmpq	%r8, %rax
	jne	.L650
	jmp	.L640
.L723:
	movq	avma@GOTPCREL(%rip), %rdx
	movq	bot@GOTPCREL(%rip), %rax
	movq	8(%r12), %r12
	movq	(%rdx), %rbx
	movq	%rbx, %rdi
	subq	(%rax), %rdi
	leaq	-16(%rbx), %rbp
	cmpq	$15, %rdi
	ja	.L619
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, (%rsp)
	call	pari_err@PLT
	movq	(%rsp), %rdx
.L619:
	movabsq	$3170534137668829186, %rax
	movq	%rbp, (%rdx)
	movq	%r12, -8(%rbx)
	movq	%rax, -16(%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
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
.L660:
	.cfi_restore_state
	movq	$-1, %r9
	jmp	.L621
	.cfi_endproc
.LFE697:
	.size	F2x_rem, .-F2x_rem
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
.LCOLDB32:
	.text
.LHOTB32:
	.p2align 4,,15
	.globl	F2x_divrem
	.type	F2x_divrem, @function
F2x_divrem:
.LFB698:
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
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	(%rdi), %rbx
	movq	8(%rdi), %r12
	movq	%rdi, 8(%rsp)
	movq	%rsi, %rdi
	movq	%rdx, 16(%rsp)
	call	F2x_degree@PLT
	testq	%rax, %rax
	movq	%rax, %r14
	movq	8(%rsp), %rcx
	js	.L940
.L727:
	cmpq	$1, 16(%rsp)
	je	.L941
	testq	%r14, %r14
	je	.L942
	movabsq	$72057594037927935, %rax
	andq	%rax, %rbx
	cmpq	$2, %rbx
	je	.L814
	movq	-8(%rcx,%rbx,8), %rax
	leaq	-2(%rbx), %rbp
	movabsq	$-4294967296, %rdx
	salq	$6, %rbp
	testq	%rdx, %rax
	jne	.L943
	movl	$44, %esi
	movl	$60, %edx
.L745:
	testq	$-65536, %rax
	je	.L746
	shrq	$16, %rax
	movl	%esi, %edx
.L746:
	testq	$-256, %rax
	je	.L747
	subl	$8, %edx
	shrq	$8, %rax
.L747:
	testq	$-16, %rax
	je	.L748
	subl	$4, %edx
	shrq	$4, %rax
.L748:
	leaq	__bfffo_tabshi.20233(%rip), %rsi
	addl	(%rsi,%rax,4), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rbp
	subq	$1, %rbp
.L744:
	cmpq	%r14, %rbp
	js	.L944
	movabsq	$72057594037927935, %rax
	movq	%rax, %rdx
	andq	0(%r13), %rax
	andq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	avma@GOTPCREL(%rip), %rax
	leaq	3(%rdx), %r8
	movq	%rax, 32(%rsp)
	movq	(%rax), %rax
	leaq	0(,%r8,8), %rsi
	movq	%rax, %r15
	subq	%rsi, %r15
	movq	bot@GOTPCREL(%rip), %rsi
	subq	(%rsi), %rax
	movq	%rsi, 48(%rsp)
	shrq	$3, %rax
	cmpq	%rax, %r8
	jbe	.L770
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 40(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 8(%rsp)
	call	pari_err@PLT
	movq	40(%rsp), %rcx
	movq	24(%rsp), %r8
	movq	8(%rsp), %rdx
.L770:
	movq	32(%rsp), %rax
	movq	%r15, (%rax)
	movabsq	$-72057594037927936, %rax
	testq	%rax, %r8
	je	.L771
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	movq	%rcx, 40(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 8(%rsp)
	call	pari_err@PLT
	movq	40(%rsp), %rcx
	movq	24(%rsp), %r8
	movq	8(%rsp), %rdx
.L771:
	movabsq	$3170534137668829184, %rax
	orq	%rax, %r8
	cmpq	$-1, %rdx
	movq	%r8, (%r15)
	jl	.L775
	leaq	16(,%rdx,8), %rdx
	leaq	8(%r15), %rdi
	xorl	%esi, %esi
	movq	%rcx, 8(%rsp)
	call	memset@PLT
	movq	8(%rsp), %rcx
.L775:
	movq	32(%rsp), %rax
	movq	48(%rsp), %rdi
	movabsq	$72057594037927935, %rsi
	movq	%r12, 8(%r15)
	andq	(%rcx), %rsi
	movq	(%rax), %rax
	leaq	0(,%rsi,8), %r8
	movq	%rax, %r12
	movq	%rax, 8(%rsp)
	subq	(%rdi), %rax
	subq	%r8, %r12
	shrq	$3, %rax
	cmpq	%rax, %rsi
	jbe	.L774
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rsi, 24(%rsp)
	call	pari_err@PLT
	movq	56(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	24(%rsp), %rsi
.L774:
	movq	32(%rsp), %rax
	leaq	-1(%rsi), %rdi
	movq	%r12, (%rax)
	movabsq	$-72057594037927937, %rax
	andq	(%rcx), %rax
	testq	%rdi, %rdi
	movq	%rax, (%r12)
	movq	%rdi, %rax
	jle	.L784
	leaq	-16(%r8), %r9
	leaq	(%rcx,%r8), %r11
	leaq	(%r12,%r9), %r10
	leaq	(%rcx,%r9), %rdx
	cmpq	%r10, %r11
	leaq	(%r12,%r8), %r10
	setbe	%r11b
	cmpq	%r10, %rdx
	setnb	%r10b
	orb	%r10b, %r11b
	je	.L785
	cmpq	$24, %rdi
	jbe	.L785
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %rdi
	cmovbe	%rdi, %rdx
	testq	%rdx, %rdx
	je	.L780
	movq	-8(%rcx,%r8), %rax
	movq	8(%rsp), %r10
	movq	%rax, -8(%r10)
	leaq	-2(%rsi), %rax
.L780:
	subq	%rdx, %rdi
	subq	%rdx, %rsi
	movq	%rdi, %r11
	leaq	-2(%rdi), %rdi
	shrq	%rdi
	addq	$1, %rdi
	cmpq	$2, %rsi
	leaq	(%rdi,%rdi), %r8
	je	.L781
	negq	%rdx
	xorl	%esi, %esi
	leaq	(%r9,%rdx,8), %r9
	xorl	%edx, %edx
	leaq	(%rcx,%r9), %r10
	addq	%r12, %r9
.L782:
	movdqa	(%r10,%rdx), %xmm0
	addq	$1, %rsi
	movups	%xmm0, (%r9,%rdx)
	subq	$16, %rdx
	cmpq	%rdi, %rsi
	jb	.L782
	subq	%r8, %rax
	cmpq	%r8, %r11
	je	.L784
.L781:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%r12,%rax,8)
.L784:
	cmpq	%rbp, %r14
	jg	.L778
	leaq	16(%r13), %rax
	movq	%r12, %rsi
	movq	%rbp, %rcx
	subq	%r13, %rsi
	movq	%rax, 8(%rsp)
	leaq	32(%r13), %rax
	movq	%rax, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L880:
	subq	%r14, %rcx
	movl	$1, %r8d
	movabsq	$72057594037927935, %rbp
	movq	%rcx, %rdi
	andl	$63, %ecx
	sarq	$6, %rdi
	salq	%cl, %r8
	movl	%ecx, %r10d
	leaq	2(%rdi), %rax
	leaq	0(,%rax,8), %rdx
	orq	%r8, (%r15,%rdx)
	andq	0(%r13), %rbp
	testq	%rcx, %rcx
	jne	.L787
	cmpq	$2, %rbp
	jle	.L789
	leaq	(%r12,%rdx), %r8
	cmpq	40(%rsp), %r8
	leaq	16(%rdx,%r12), %rdx
	leaq	-2(%rbp), %rcx
	setnb	%r9b
	cmpq	%rdx, 8(%rsp)
	setnb	%dl
	orb	%dl, %r9b
	je	.L795
	cmpq	$9, %rcx
	jbe	.L795
	movq	%r8, %rdx
	movl	$2, %r10d
	salq	$60, %rdx
	shrq	$63, %rdx
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	testq	%rdx, %rdx
	je	.L796
	movq	16(%r13), %r9
	xorq	%r9, (%r8)
	movb	$3, %r10b
.L796:
	subq	%rdx, %rcx
	leaq	16(,%rdx,8), %rbp
	addq	%rdx, %rax
	leaq	-2(%rcx), %r8
	leaq	(%r12,%rax,8), %r9
	xorl	%edx, %edx
	addq	%r13, %rbp
	xorl	%eax, %eax
	shrq	%r8
	addq	$1, %r8
	leaq	(%r8,%r8), %r11
.L797:
	movdqu	0(%rbp,%rax), %xmm0
	addq	$1, %rdx
	pxor	(%r9,%rax), %xmm0
	movaps	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpq	%r8, %rdx
	jb	.L797
	addq	%r11, %r10
	cmpq	%r11, %rcx
	je	.L789
	addq	%r10, %rdi
	movq	0(%r13,%r10,8), %rax
	xorq	%rax, (%r12,%rdi,8)
.L789:
	cmpq	$2, %rbx
	jle	.L792
	movq	-8(%r12,%rbx,8), %rax
	testq	%rax, %rax
	je	.L893
	jmp	.L813
	.p2align 4,,10
	.p2align 3
.L945:
	movq	-8(%r12,%rbx,8), %rax
	testq	%rax, %rax
	jne	.L813
.L893:
	subq	$1, %rbx
	cmpq	$2, %rbx
	jne	.L945
.L821:
	movq	$-1, %rcx
.L801:
	cmpq	%r14, %rcx
	jge	.L880
.L778:
	movabsq	$72057594037927935, %rbp
	movq	%r15, %rdi
	movq	%rbp, %rsi
	andq	(%r15), %rsi
	call	Flx_renormalize@PLT
	cmpq	$0, 16(%rsp)
	movq	%rax, %r13
	je	.L946
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	Flx_renormalize@PLT
	cmpq	$2, 16(%rsp)
	je	.L947
	movq	16(%rsp), %rsi
	movq	%rax, (%rsi)
.L852:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
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
.L943:
	.cfi_restore_state
	shrq	$32, %rax
	movl	$12, %esi
	movl	$28, %edx
	jmp	.L745
	.p2align 4,,10
	.p2align 3
.L785:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%r12,%rax,8)
	subq	$1, %rax
	je	.L784
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%r12,%rax,8)
	subq	$1, %rax
	jne	.L785
	jmp	.L784
.L792:
	je	.L821
	movq	-8(%r12,%rbx,8), %rax
.L813:
	leaq	-2(%rbx), %rcx
	movabsq	$-4294967296, %rdi
	salq	$6, %rcx
	testq	%rdi, %rax
	je	.L822
	shrq	$32, %rax
	movl	$12, %edi
	movl	$28, %edx
.L803:
	testq	$-65536, %rax
	je	.L804
	shrq	$16, %rax
	movl	%edi, %edx
.L804:
	testq	$-256, %rax
	je	.L805
	subl	$8, %edx
	shrq	$8, %rax
.L805:
	testq	$-16, %rax
	je	.L806
	subl	$4, %edx
	shrq	$4, %rax
.L806:
	leaq	__bfffo_tabshi.20233(%rip), %rdi
	addl	(%rdi,%rax,4), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rcx
	subq	$1, %rcx
	jmp	.L801
	.p2align 4,,10
	.p2align 3
.L787:
	movl	$64, %r9d
	subq	%rcx, %r9
	cmpq	$2, %rbp
	jle	.L789
	movq	8(%rsp), %rdx
	leaq	0(%r13,%rbp,8), %r11
	xorl	%eax, %eax
	movq	%rbx, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L791:
	movq	(%rdx), %rbx
	leaq	(%rsi,%rdx), %r8
	movl	%r10d, %ecx
	addq	$8, %rdx
	salq	%cl, %rbx
	movl	%r9d, %ecx
	orq	%rbx, %rax
	xorq	%rax, (%r8,%rdi,8)
	movq	-8(%rdx), %rax
	shrq	%cl, %rax
	cmpq	%r11, %rdx
	jne	.L791
	testq	%rax, %rax
	movq	24(%rsp), %rbx
	je	.L789
	addq	%rbp, %rdi
	xorq	%rax, (%r12,%rdi,8)
	jmp	.L789
	.p2align 4,,10
	.p2align 3
.L822:
	movl	$44, %edi
	movl	$60, %edx
	jmp	.L803
.L795:
	movq	8(%rsp), %rax
	leaq	0(%r13,%rbp,8), %r8
	.p2align 4,,10
	.p2align 3
.L799:
	leaq	(%rsi,%rax), %rdx
	movq	(%rax), %rcx
	addq	$8, %rax
	xorq	%rcx, (%rdx,%rdi,8)
	cmpq	%r8, %rax
	jne	.L799
	jmp	.L789
.L944:
	cmpq	$2, 16(%rsp)
	je	.L948
	movq	avma@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	%rax, 32(%rsp)
	movq	bot@GOTPCREL(%rip), %rax
	leaq	-16(%rbx), %rbp
	movq	%rax, %rsi
	movq	%rax, 48(%rsp)
	movq	%rbx, %rax
	subq	(%rsi), %rax
	cmpq	$15, %rax
	jbe	.L949
.L759:
	cmpq	$0, 16(%rsp)
	movq	32(%rsp), %rax
	movabsq	$3170534137668829186, %rsi
	movq	%r12, -8(%rbx)
	movq	%rbp, %r13
	movq	%rbp, (%rax)
	movq	%rsi, -16(%rbx)
	je	.L852
	movabsq	$72057594037927935, %rsi
	andq	(%rcx), %rsi
	movq	(%rax), %r14
	movq	%r14, %rax
	movq	%r14, %rbx
	movq	%rsi, %r12
	leaq	0(,%rsi,8), %r13
	movq	48(%rsp), %rsi
	subq	%r13, %rbx
	subq	(%rsi), %rax
	shrq	$3, %rax
	cmpq	%rax, %r12
	jbe	.L760
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rcx
.L760:
	movq	32(%rsp), %rax
	leaq	-1(%r12), %rsi
	movq	%rbx, (%rax)
	movabsq	$-72057594037927937, %rax
	andq	(%rcx), %rax
	testq	%rsi, %rsi
	movq	%rax, (%rbx)
	movq	%rsi, %rax
	jle	.L767
	leaq	-16(%r13), %rdi
	leaq	(%rcx,%r13), %r8
	leaq	(%rbx,%rdi), %r9
	leaq	(%rcx,%rdi), %rdx
	cmpq	%r8, %r9
	leaq	(%rbx,%r13), %r8
	setnb	%r9b
	cmpq	%r8, %rdx
	setnb	%r8b
	orb	%r8b, %r9b
	je	.L768
	cmpq	$24, %rsi
	jbe	.L768
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rsi, %rdx
	cmova	%rsi, %rdx
	testq	%rdx, %rdx
	je	.L763
	movq	-8(%rcx,%r13), %rax
	movq	%rax, -8(%r14)
	leaq	-2(%r12), %rax
.L763:
	subq	%rdx, %rsi
	leaq	-2(%rsi), %r9
	movq	%rsi, %r8
	movq	%r12, %rsi
	subq	%rdx, %rsi
	shrq	%r9
	addq	$1, %r9
	cmpq	$2, %rsi
	leaq	(%r9,%r9), %r10
	je	.L764
	negq	%rdx
	xorl	%esi, %esi
	leaq	(%rdi,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	(%rcx,%rdi), %r11
	addq	%rbx, %rdi
.L765:
	movdqa	(%r11,%rdx), %xmm0
	addq	$1, %rsi
	movups	%xmm0, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%r9, %rsi
	jb	.L765
	subq	%r10, %rax
	cmpq	%r8, %r10
	je	.L767
.L764:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
.L767:
	movq	16(%rsp), %rax
	movq	%rbp, %r13
	movq	%rbx, (%rax)
	jmp	.L852
.L942:
	movq	avma@GOTPCREL(%rip), %rax
	movabsq	$72057594037927935, %rbp
	andq	(%rcx), %rbp
	movq	(%rax), %r14
	movq	%rax, 32(%rsp)
	movq	bot@GOTPCREL(%rip), %rax
	leaq	0(,%rbp,8), %r13
	movq	%r14, %rbx
	movq	%rax, %rsi
	movq	%rax, 48(%rsp)
	movq	%r14, %rax
	subq	(%rsi), %rax
	subq	%r13, %rbx
	shrq	$3, %rax
	cmpq	%rax, %rbp
	ja	.L950
.L730:
	movq	32(%rsp), %rax
	leaq	-1(%rbp), %rsi
	movq	%rbx, (%rax)
	movabsq	$-72057594037927937, %rax
	andq	(%rcx), %rax
	testq	%rsi, %rsi
	movq	%rax, (%rbx)
	movq	%rsi, %rax
	jle	.L740
	leaq	-16(%r13), %rdi
	leaq	(%rcx,%r13), %r9
	leaq	(%rbx,%rdi), %r8
	leaq	(%rcx,%rdi), %rdx
	cmpq	%r8, %r9
	leaq	(%rbx,%r13), %r8
	setbe	%r9b
	cmpq	%r8, %rdx
	setnb	%r8b
	orb	%r8b, %r9b
	je	.L741
	cmpq	$24, %rsi
	jbe	.L741
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %rsi
	cmovbe	%rsi, %rdx
	testq	%rdx, %rdx
	je	.L736
	movq	-8(%rcx,%r13), %rax
	movq	%rax, -8(%r14)
	leaq	-2(%rbp), %rax
.L736:
	subq	%rdx, %rsi
	subq	%rdx, %rbp
	leaq	-2(%rsi), %r8
	movq	%rsi, %r9
	shrq	%r8
	addq	$1, %r8
	cmpq	$2, %rbp
	leaq	(%r8,%r8), %r10
	je	.L737
	negq	%rdx
	xorl	%esi, %esi
	leaq	(%rdi,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	(%rcx,%rdi), %r11
	addq	%rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L738:
	movdqa	(%r11,%rdx), %xmm0
	addq	$1, %rsi
	movups	%xmm0, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%r8, %rsi
	jb	.L738
	subq	%r10, %rax
	cmpq	%r9, %r10
	je	.L740
.L737:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
.L740:
	movq	16(%rsp), %rax
	cmpq	$2, %rax
	je	.L817
	testq	%rax, %rax
	je	.L817
	movq	32(%rsp), %rax
	movq	48(%rsp), %rsi
	movq	(%rax), %rbp
	movq	%rbp, %rax
	subq	(%rsi), %rax
	leaq	-16(%rbp), %r13
	cmpq	$15, %rax
	ja	.L743
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L743:
	movq	32(%rsp), %rax
	movq	%r12, -8(%rbp)
	movq	%r13, (%rax)
	movabsq	$3170534137668829186, %rax
	movq	%rax, -16(%rbp)
	movq	16(%rsp), %rax
	movq	%r13, (%rax)
	movq	%rbx, %r13
	jmp	.L852
	.p2align 4,,10
	.p2align 3
.L741:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	subq	$1, %rax
	je	.L740
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	subq	$1, %rax
	jne	.L741
	jmp	.L740
.L768:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	subq	$1, %rax
	je	.L767
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	subq	$1, %rax
	jne	.L768
	jmp	.L767
.L950:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rcx
	jmp	.L730
.L948:
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	jns	.L852
	movq	avma@GOTPCREL(%rip), %rax
	movabsq	$72057594037927935, %rdx
	andq	(%rcx), %rdx
	movq	(%rax), %r13
	movq	%rax, 32(%rsp)
	movq	bot@GOTPCREL(%rip), %rax
	leaq	0(,%rdx,8), %r12
	movq	%rdx, %rbp
	movq	%r13, %rsi
	movq	%r13, %rbx
	subq	(%rax), %rsi
	subq	%r12, %rbx
	movq	%rsi, %rax
	shrq	$3, %rax
	cmpq	%rax, %rdx
	jbe	.L751
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rcx
.L751:
	movq	32(%rsp), %rax
	leaq	-1(%rbp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, (%rax)
	movabsq	$-72057594037927937, %rax
	andq	(%rcx), %rax
	testq	%rdi, %rdi
	movq	%rax, (%rbx)
	jle	.L817
	leaq	-16(%r12), %r9
	leaq	(%rcx,%r12), %rdx
	leaq	(%rbx,%r9), %r8
	leaq	(%rcx,%r9), %rax
	cmpq	%rdx, %r8
	leaq	(%rbx,%r12), %rdx
	setnb	%r8b
	cmpq	%rdx, %rax
	setnb	%dl
	orb	%dl, %r8b
	je	.L757
	cmpq	$24, %rdi
	jbe	.L757
	andl	$15, %eax
	shrq	$3, %rax
	cmpq	%rdi, %rax
	cmova	%rdi, %rax
	testq	%rax, %rax
	je	.L753
	movq	-8(%rcx,%r12), %rdx
	leaq	-2(%rbp), %rsi
	movq	%rdx, -8(%r13)
.L753:
	subq	%rax, %rdi
	movq	%rbp, %rdx
	movq	%rdi, %r8
	leaq	-2(%rdi), %rdi
	subq	%rax, %rdx
	shrq	%rdi
	addq	$1, %rdi
	cmpq	$2, %rdx
	leaq	(%rdi,%rdi), %r10
	je	.L754
	negq	%rax
	leaq	(%r9,%rax,8), %rax
	xorl	%r9d, %r9d
	leaq	(%rcx,%rax), %r11
	leaq	(%rbx,%rax), %rdx
	xorl	%eax, %eax
.L755:
	movdqa	(%r11,%rax), %xmm0
	addq	$1, %r9
	movups	%xmm0, (%rdx,%rax)
	subq	$16, %rax
	cmpq	%r9, %rdi
	ja	.L755
	subq	%r10, %rsi
	cmpq	%r8, %r10
	je	.L817
.L754:
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rbx,%rsi,8)
.L817:
	movq	%rbx, %r13
	jmp	.L852
.L949:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rcx
	jmp	.L759
.L940:
	movl	$27, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	movq	8(%rsp), %rcx
	jmp	.L727
.L946:
	andq	(%r12), %rbp
	movq	48(%rsp), %rsi
	leaq	(%r12,%rbp,8), %rax
	cmpq	(%rsi), %rax
	jb	.L852
.L935:
	movq	top@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	jnb	.L852
	movq	32(%rsp), %rsi
	movq	%rax, (%rsi)
	jmp	.L852
.L757:
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rbx,%rsi,8)
	subq	$1, %rsi
	jne	.L757
	jmp	.L817
	.p2align 4,,10
	.p2align 3
.L941:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rsi
	movq	%rcx, %rdi
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
	jmp	F2x_rem@PLT
.L947:
	.cfi_restore_state
	movq	%rbp, %rdx
	andq	(%rax), %rdx
	cmpq	$2, %rdx
	jne	.L811
	movq	48(%rsp), %rsi
	addq	$16, %rax
	cmpq	(%rsi), %rax
	jb	.L852
	jmp	.L935
.L814:
	movq	$-1, %rbp
	jmp	.L744
.L811:
	andq	0(%r13), %rbp
	movq	32(%rsp), %rsi
	leaq	0(%r13,%rbp,8), %rax
	xorl	%r13d, %r13d
	movq	%rax, (%rsi)
	jmp	.L852
	.cfi_endproc
.LFE698:
	.size	F2x_divrem, .-F2x_divrem
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.p2align 4,,15
	.globl	F2x_deriv
	.type	F2x_deriv, @function
F2x_deriv:
.LFB699:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movabsq	$72057594037927935, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	avma@GOTPCREL(%rip), %r13
	andq	(%rdi), %rbx
	movq	0(%r13), %rax
	leaq	0(,%rbx,8), %rdx
	movq	%rax, %rbp
	subq	%rdx, %rbp
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbx
	jbe	.L952
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L952:
	movabsq	$3170534137668829184, %rax
	movq	%rbp, 0(%r13)
	orq	%rbx, %rax
	cmpq	$2, %rbx
	movq	%rax, 0(%rbp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rbp)
	jle	.L959
	leaq	16(%rbp), %rsi
	leaq	32(%r12), %rcx
	leaq	16(%r12), %rax
	leaq	-2(%rbx), %rdx
	cmpq	%rcx, %rsi
	leaq	32(%rbp), %rcx
	setnb	%sil
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %sil
	je	.L961
	cmpq	$7, %rdx
	jbe	.L961
	salq	$60, %rax
	movl	$2, %edi
	shrq	$63, %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	testq	%rax, %rax
	je	.L955
	movq	16(%r12), %rsi
	movabsq	$6148914691236517205, %rcx
	movb	$3, %dil
	shrq	%rsi
	andq	%rsi, %rcx
	movq	%rcx, 16(%rbp)
.L955:
	subq	%rax, %rdx
	leaq	-2(%rdx), %rcx
	movq	%rdx, %r9
	movq	%rbx, %rdx
	subq	%rax, %rdx
	shrq	%rcx
	addq	$1, %rcx
	cmpq	$3, %rdx
	leaq	(%rcx,%rcx), %r10
	je	.L956
	leaq	16(,%rax,8), %rsi
	movdqa	.LC33(%rip), %xmm1
	xorl	%eax, %eax
	xorl	%edx, %edx
	leaq	(%r12,%rsi), %r8
	addq	%rbp, %rsi
	.p2align 4,,10
	.p2align 3
.L957:
	movdqa	(%r8,%rax), %xmm0
	addq	$1, %rdx
	psrlq	$1, %xmm0
	pand	%xmm1, %xmm0
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jb	.L957
	addq	%r10, %rdi
	cmpq	%r10, %r9
	je	.L959
.L956:
	movq	(%r12,%rdi,8), %rax
	movabsq	$6148914691236517205, %rdx
	shrq	%rax
	andq	%rdx, %rax
	movq	%rax, 0(%rbp,%rdi,8)
.L959:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	Flx_renormalize@PLT
	.p2align 4,,10
	.p2align 3
.L961:
	.cfi_restore_state
	movl	$2, %edx
	movabsq	$6148914691236517205, %rcx
	.p2align 4,,10
	.p2align 3
.L954:
	movq	(%r12,%rdx,8), %rax
	shrq	%rax
	andq	%rcx, %rax
	movq	%rax, 0(%rbp,%rdx,8)
	addq	$1, %rdx
	cmpq	%rbx, %rdx
	jne	.L954
	jmp	.L959
	.cfi_endproc
.LFE699:
	.size	F2x_deriv, .-F2x_deriv
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.rodata.str1.1
.LC35:
	.string	"F2x_gcd (d = %ld)"
	.section	.text.unlikely
.LCOLDB36:
	.text
.LHOTB36:
	.p2align 4,,15
	.globl	F2x_gcd
	.type	F2x_gcd, @function
F2x_gcd:
.LFB700:
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
	movq	avma@GOTPCREL(%rip), %rbp
	movq	bot@GOTPCREL(%rip), %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	(%rsi), %rdx
	movq	0(%rbp), %r13
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%r13, %rbx
	subq	%rax, %rbx
	shrq	$2, %rbx
	addq	%rax, %rbx
	movabsq	$72057594037927935, %rax
	andq	%rax, %rcx
	andq	(%rdi), %rax
	cmpq	%rax, %rcx
	jle	.L977
	movq	%rsi, %rax
	movq	%rsi, 8(%rsp)
	movq	%rdi, (%rsp)
	movq	%rdi, %rsi
	movq	(%rdi), %rdx
	movq	%rax, %rdi
.L977:
	movabsq	$72057594037927935, %r12
	movq	%rsp, %r15
	leaq	8(%rsp), %r14
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L982:
	call	F2x_rem@PLT
	cmpq	0(%rbp), %rbx
	movq	(%rsp), %rdi
	movq	%rax, (%rsp)
	movq	%rdi, 8(%rsp)
	ja	.L979
	movq	(%rax), %rdx
	movq	%rax, %rsi
.L980:
	andq	%r12, %rdx
	cmpq	$2, %rdx
	jne	.L982
	cmpq	0(%rbp), %rbx
	movq	%rdi, %rax
	ja	.L1009
.L998:
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
.L979:
	.cfi_restore_state
	movq	DEBUGMEM@GOTPCREL(%rip), %rdx
	cmpq	$1, (%rdx)
	jbe	.L981
	movq	%rax, %rdi
	call	F2x_degree@PLT
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdx
	movl	$3, %edi
	xorl	%eax, %eax
	call	pari_warn@PLT
.L981:
	movq	%r14, %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	call	gerepileall.constprop.6
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	(%rsi), %rdx
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L1009:
	movq	bot@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rdi
	jb	.L984
	movq	top@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rdi
	jnb	.L984
	cmpq	%r13, %rdi
	jnb	.L984
	movabsq	$72057594037927935, %rsi
	andq	(%rdi), %rsi
	movq	%r13, %rax
	leaq	0(,%rsi,8), %r9
	leaq	-1(%rsi), %rdx
	subq	%r9, %rax
	cmpq	$-1, %rdx
	movq	%rax, 0(%rbp)
	je	.L998
	leaq	-16(%r9), %r8
	leaq	(%rax,%r9), %r10
	leaq	(%rdi,%r9), %rbx
	leaq	(%rdi,%r8), %rcx
	cmpq	%r10, %rcx
	leaq	(%rax,%r8), %r10
	setnb	%r11b
	cmpq	%r10, %rbx
	setbe	%r10b
	orb	%r10b, %r11b
	je	.L991
	cmpq	$24, %rsi
	jbe	.L991
	andl	$15, %ecx
	shrq	$3, %rcx
	cmpq	%rcx, %rsi
	cmovbe	%rsi, %rcx
	testq	%rcx, %rcx
	je	.L988
	movq	-8(%rdi,%r9), %rdx
	movq	%rdx, -8(%r13)
	leaq	-2(%rsi), %rdx
.L988:
	subq	%rcx, %rsi
	negq	%rcx
	leaq	-2(%rsi), %r9
	leaq	(%r8,%rcx,8), %r10
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	shrq	%r9
	leaq	(%rdi,%r10), %r11
	addq	%rax, %r10
	addq	$1, %r9
	leaq	(%r9,%r9), %rbx
.L989:
	movdqa	(%r11,%rcx), %xmm0
	addq	$1, %r8
	movups	%xmm0, (%r10,%rcx)
	subq	$16, %rcx
	cmpq	%r9, %r8
	jb	.L989
	subq	%rbx, %rdx
	cmpq	%rbx, %rsi
	je	.L998
	movq	(%rdi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	jmp	.L998
	.p2align 4,,10
	.p2align 3
.L984:
	movq	%r13, 0(%rbp)
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
.L991:
	.cfi_restore_state
	movq	(%rdi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	subq	$1, %rdx
	cmpq	$-1, %rdx
	jne	.L991
	jmp	.L998
	.cfi_endproc
.LFE700:
	.size	F2x_gcd, .-F2x_gcd
	.section	.text.unlikely
.LCOLDE36:
	.text
.LHOTE36:
	.section	.rodata.str1.1
.LC37:
	.string	"F2x_extgcd (d = %ld)"
	.section	.text.unlikely
.LCOLDB38:
	.text
.LHOTB38:
	.p2align 4,,15
	.globl	F2x_extgcd
	.type	F2x_extgcd, @function
F2x_extgcd:
.LFB701:
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	avma@GOTPCREL(%rip), %rbx
	movq	8(%rdi), %r15
	movq	%rdx, 16(%rsp)
	movq	bot@GOTPCREL(%rip), %rdx
	movq	%rcx, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movq	(%rbx), %r13
	movq	%rsi, 40(%rsp)
	movq	(%rdx), %rcx
	movq	%rdi, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%r13, %rax
	leaq	-16(%r13), %r12
	subq	%rcx, %rax
	movq	%rax, %rbp
	shrq	$2, %rbp
	addq	%rcx, %rbp
	cmpq	$15, %rax
	ja	.L1011
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, (%rsp)
	call	pari_err@PLT
	movq	(%rsp), %rdx
.L1011:
	movabsq	$3170534137668829186, %rax
	movq	%r12, (%rbx)
	movq	%r15, -8(%r13)
	movq	%rax, -16(%r13)
	movq	%r12, 56(%rsp)
	movq	(%rbx), %r12
	movq	%r12, %rax
	subq	(%rdx), %rax
	leaq	-24(%r12), %r14
	cmpq	$23, %rax
	ja	.L1012
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1012:
	movabsq	$3170534137668829187, %rax
	movq	%r14, (%rbx)
	movq	%r15, -16(%r12)
	movq	%rax, -24(%r12)
	movq	72(%rsp), %rsi
	movabsq	$72057594037927935, %rax
	movq	$1, -8(%r12)
	movq	%r14, 80(%rsp)
	leaq	88(%rsp), %r12
	andq	(%rsi), %rax
	cmpq	$2, %rax
	je	.L1019
	leaq	72(%rsp), %rax
	leaq	56(%rsp), %r15
	leaq	48(%rsp), %r14
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L1025:
	movq	64(%rsp), %rdi
	movq	%r12, %rdx
	call	F2x_divrem@PLT
	movq	80(%rsp), %rsi
	movq	%rax, %rdi
	call	F2x_mul@PLT
	movq	56(%rsp), %rdi
	movq	%rax, %rsi
	call	F2x_add@PLT
	cmpq	(%rbx), %rbp
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	72(%rsp), %rdi
	movq	%rax, 80(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdi, 64(%rsp)
	movq	%rsi, 72(%rsp)
	jbe	.L1016
	movq	DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq	$1, (%rax)
	jbe	.L1017
	call	F2x_degree@PLT
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdx
	movl	$3, %edi
	xorl	%eax, %eax
	call	pari_warn@PLT
.L1017:
	subq	$8, %rsp
	.cfi_def_cfa_offset 168
	movl	$5, %esi
	movq	%r15, %r9
	leaq	88(%rsp), %rax
	movq	%r14, %r8
	movq	%r13, %rdi
	pushq	%rax
	.cfi_def_cfa_offset 176
	movq	16(%rsp), %rcx
	xorl	%eax, %eax
	movq	24(%rsp), %rdx
	call	gerepileall.constprop.5
	movq	88(%rsp), %rsi
	popq	%rax
	.cfi_def_cfa_offset 168
	popq	%rdx
	.cfi_def_cfa_offset 160
.L1016:
	movabsq	$72057594037927935, %rax
	andq	(%rsi), %rax
	cmpq	$2, %rax
	jne	.L1025
.L1019:
	cmpq	$0, 16(%rsp)
	je	.L1031
	movq	56(%rsp), %rsi
	movq	40(%rsp), %rdi
	call	F2x_mul@PLT
	movq	64(%rsp), %rdi
	movq	%rax, %rsi
	call	F2x_add@PLT
	movq	32(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	F2x_divrem@PLT
	movq	16(%rsp), %rcx
	movl	$3, %esi
	movq	%rax, (%rcx)
	movq	56(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	cmpq	(%rbx), %rbp
	jbe	.L1021
.L1020:
	movq	16(%rsp), %r8
	leaq	64(%rsp), %rdx
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	gerepileall
.L1021:
	movq	64(%rsp), %rax
	addq	$104, %rsp
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
.L1031:
	.cfi_restore_state
	movq	56(%rsp), %rax
	movq	24(%rsp), %rcx
	movl	$2, %esi
	movq	%rax, (%rcx)
	cmpq	(%rbx), %rbp
	ja	.L1020
	jmp	.L1021
	.cfi_endproc
.LFE701:
	.size	F2x_extgcd, .-F2x_extgcd
	.section	.text.unlikely
.LCOLDE38:
	.text
.LHOTE38:
	.section	.text.unlikely
.LCOLDB39:
	.text
.LHOTB39:
	.p2align 4,,15
	.globl	F2xq_mul
	.type	F2xq_mul, @function
F2xq_mul:
.LFB702:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	call	F2x_mul@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	F2x_rem@PLT
	.cfi_endproc
.LFE702:
	.size	F2xq_mul, .-F2xq_mul
	.section	.text.unlikely
.LCOLDE39:
	.text
.LHOTE39:
	.section	.text.unlikely
.LCOLDB40:
	.text
.LHOTB40:
	.p2align 4,,15
	.type	_F2xq_mul, @function
_F2xq_mul:
.LFB708:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	jmp	F2xq_mul@PLT
	.cfi_endproc
.LFE708:
	.size	_F2xq_mul, .-_F2xq_mul
	.section	.text.unlikely
.LCOLDE40:
	.text
.LHOTE40:
	.section	.text.unlikely
.LCOLDB41:
	.text
.LHOTB41:
	.p2align 4,,15
	.globl	F2xq_sqr
	.type	F2xq_sqr, @function
F2xq_sqr:
.LFB703:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	call	F2x_sqr@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	F2x_rem@PLT
	.cfi_endproc
.LFE703:
	.size	F2xq_sqr, .-F2xq_sqr
	.section	.text.unlikely
.LCOLDE41:
	.text
.LHOTE41:
	.section	.text.unlikely
.LCOLDB42:
	.text
.LHOTB42:
	.p2align 4,,15
	.type	_F2xq_sqr, @function
_F2xq_sqr:
.LFB707:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	F2xq_sqr@PLT
	.cfi_endproc
.LFE707:
	.size	_F2xq_sqr, .-_F2xq_sqr
	.section	.text.unlikely
.LCOLDE42:
	.text
.LHOTE42:
	.section	.text.unlikely
.LCOLDB43:
	.text
.LHOTB43:
	.p2align 4,,15
	.globl	F2xq_invsafe
	.type	F2xq_invsafe, @function
F2xq_invsafe:
.LFB704:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	xorl	%edx, %edx
	leaq	8(%rsp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	F2x_extgcd@PLT
	movq	%rax, %rdi
	call	F2x_degree@PLT
	testq	%rax, %rax
	jne	.L1040
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1040:
	.cfi_restore_state
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE704:
	.size	F2xq_invsafe, .-F2xq_invsafe
	.section	.text.unlikely
.LCOLDE43:
	.text
.LHOTE43:
	.section	.text.unlikely
.LCOLDB44:
	.text
.LHOTB44:
	.p2align 4,,15
	.globl	F2xq_inv
	.type	F2xq_inv, @function
F2xq_inv:
.LFB705:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	avma@GOTPCREL(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	0(%rbp), %r12
	call	F2xq_invsafe@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1069
.L1043:
	movq	bot@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rbx
	jb	.L1044
	movq	top@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rbx
	jb	.L1045
.L1044:
	movq	%r12, 0(%rbp)
	movq	%rbx, %rax
.L1066:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1045:
	.cfi_restore_state
	cmpq	%r12, %rbx
	jnb	.L1044
	movabsq	$72057594037927935, %rsi
	andq	(%rbx), %rsi
	movq	%r12, %rax
	leaq	0(,%rsi,8), %r8
	leaq	-1(%rsi), %rdx
	subq	%r8, %rax
	cmpq	$-1, %rdx
	movq	%rax, 0(%rbp)
	je	.L1066
	leaq	-16(%r8), %rdi
	leaq	(%rax,%r8), %r9
	leaq	(%rbx,%rdi), %rcx
	leaq	(%rax,%rdi), %r11
	cmpq	%r9, %rcx
	leaq	(%rbx,%r8), %r9
	setnb	%r10b
	cmpq	%r9, %r11
	setnb	%r9b
	orb	%r9b, %r10b
	je	.L1051
	cmpq	$24, %rsi
	jbe	.L1051
	andl	$15, %ecx
	shrq	$3, %rcx
	cmpq	%rcx, %rsi
	cmovbe	%rsi, %rcx
	testq	%rcx, %rcx
	je	.L1048
	movq	-8(%rbx,%r8), %rdx
	movq	%rdx, -8(%r12)
	leaq	-2(%rsi), %rdx
.L1048:
	subq	%rcx, %rsi
	negq	%rcx
	leaq	-2(%rsi), %r8
	leaq	(%rdi,%rcx,8), %r9
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	shrq	%r8
	leaq	(%rbx,%r9), %r10
	addq	%rax, %r9
	addq	$1, %r8
	leaq	(%r8,%r8), %r11
.L1049:
	movdqa	(%r10,%rcx), %xmm0
	addq	$1, %rdi
	movups	%xmm0, (%r9,%rcx)
	subq	$16, %rcx
	cmpq	%r8, %rdi
	jb	.L1049
	subq	%r11, %rdx
	cmpq	%r11, %rsi
	je	.L1066
	movq	(%rbx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1051:
	.cfi_restore_state
	movq	(%rbx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	subq	$1, %rdx
	cmpq	$-1, %rdx
	jne	.L1051
	jmp	.L1066
	.p2align 4,,10
	.p2align 3
.L1069:
	movl	$27, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L1043
	.cfi_endproc
.LFE705:
	.size	F2xq_inv, .-F2xq_inv
	.section	.text.unlikely
.LCOLDE44:
	.text
.LHOTE44:
	.section	.text.unlikely
.LCOLDB45:
	.text
.LHOTB45:
	.p2align 4,,15
	.globl	F2xq_div
	.type	F2xq_div, @function
F2xq_div:
.LFB706:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rdi
	movq	%rdx, %rbp
	movq	%rdx, %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	avma@GOTPCREL(%rip), %rbx
	movq	(%rbx), %r12
	call	F2xq_inv@PLT
	movq	%rbp, %rdx
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	F2xq_mul@PLT
	movq	bot@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	jb	.L1071
	movq	top@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	jb	.L1072
.L1071:
	movq	%r12, (%rbx)
	addq	$8, %rsp
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
	.p2align 4,,10
	.p2align 3
.L1072:
	.cfi_restore_state
	cmpq	%r12, %rax
	jnb	.L1071
	movabsq	$72057594037927935, %rsi
	andq	(%rax), %rsi
	movq	%r12, %rdi
	leaq	0(,%rsi,8), %r9
	leaq	-1(%rsi), %rdx
	subq	%r9, %rdi
	cmpq	$-1, %rdx
	movq	%rdi, (%rbx)
	je	.L1081
	leaq	-16(%r9), %r8
	leaq	(%rax,%r9), %r11
	leaq	(%rdi,%r8), %r10
	leaq	(%rax,%r8), %rcx
	cmpq	%r10, %r11
	leaq	(%rdi,%r9), %r10
	setbe	%r11b
	cmpq	%r10, %rcx
	setnb	%r10b
	orb	%r10b, %r11b
	je	.L1078
	cmpq	$24, %rsi
	jbe	.L1078
	andl	$15, %ecx
	shrq	$3, %rcx
	cmpq	%rcx, %rsi
	cmovbe	%rsi, %rcx
	testq	%rcx, %rcx
	je	.L1075
	movq	-8(%rax,%r9), %rdx
	movq	%rdx, -8(%r12)
	leaq	-2(%rsi), %rdx
.L1075:
	subq	%rcx, %rsi
	negq	%rcx
	leaq	-2(%rsi), %r9
	leaq	(%r8,%rcx,8), %r10
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	shrq	%r9
	leaq	(%rax,%r10), %r11
	addq	%rdi, %r10
	addq	$1, %r9
	leaq	(%r9,%r9), %rbx
.L1076:
	movdqa	(%r11,%rcx), %xmm0
	addq	$1, %r8
	movups	%xmm0, (%r10,%rcx)
	subq	$16, %rcx
	cmpq	%r9, %r8
	jb	.L1076
	subq	%rbx, %rdx
	cmpq	%rbx, %rsi
	je	.L1081
	movq	(%rax,%rdx,8), %rax
	movq	%rax, (%rdi,%rdx,8)
.L1081:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rdi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1078:
	.cfi_restore_state
	movq	(%rax,%rdx,8), %rcx
	movq	%rcx, (%rdi,%rdx,8)
	subq	$1, %rdx
	cmpq	$-1, %rdx
	jne	.L1078
	jmp	.L1081
	.cfi_endproc
.LFE706:
	.size	F2xq_div, .-F2xq_div
	.section	.text.unlikely
.LCOLDE45:
	.text
.LHOTE45:
	.section	.text.unlikely
.LCOLDB46:
	.text
.LHOTB46:
	.p2align 4,,15
	.globl	F2xq_pow
	.type	F2xq_pow, @function
F2xq_pow:
.LFB709:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rsi), %rcx
	movq	avma@GOTPCREL(%rip), %rbp
	movq	%rcx, %rdi
	movq	0(%rbp), %r13
	sarq	$62, %rdi
	testq	%rdi, %rdi
	je	.L1188
	movabsq	$72057594037927935, %rax
	andq	%rax, %rcx
	cmpq	$3, %rcx
	je	.L1189
.L1100:
	testq	%rdi, %rdi
	js	.L1190
.L1134:
	leaq	_F2xq_mul(%rip), %r8
	leaq	_F2xq_sqr(%rip), %rcx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	gen_pow@PLT
	movq	bot@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	jb	.L1110
	movq	top@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	jnb	.L1110
	cmpq	%r13, %rax
	jnb	.L1110
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$57, %rdx
	cmpq	$2, %rdx
	je	.L1113
	jg	.L1114
	cmpq	$1, %rdx
	jne	.L1112
	movabsq	$72057594037927935, %rdx
	andq	8(%rax), %rdx
	movq	%r13, %rbx
	leaq	0(,%rdx,8), %rdi
	leaq	-1(%rdx), %rcx
	subq	%rdi, %rbx
	testq	%rcx, %rcx
	jle	.L1122
	leaq	-16(%rdi), %r9
	leaq	(%rbx,%rdi), %r8
	leaq	(%rax,%rdi), %r12
	movq	%rcx, %r10
	leaq	(%rax,%r9), %rsi
	cmpq	%r8, %rsi
	leaq	(%rbx,%r9), %r8
	setnb	%r11b
	cmpq	%r8, %r12
	setbe	%r8b
	orb	%r8b, %r11b
	je	.L1123
	cmpq	$24, %rcx
	jbe	.L1123
	andl	$15, %esi
	shrq	$3, %rsi
	cmpq	%rsi, %rcx
	cmovbe	%rcx, %rsi
	testq	%rsi, %rsi
	je	.L1118
	movq	-8(%rax,%rdi), %rcx
	movq	%rcx, -8(%r13)
	leaq	-2(%rdx), %rcx
.L1118:
	subq	%rsi, %r10
	movq	%rdx, %rdi
	leaq	-2(%r10), %r8
	subq	%rsi, %rdi
	shrq	%r8
	addq	$1, %r8
	cmpq	$2, %rdi
	leaq	(%r8,%r8), %r11
	je	.L1119
	negq	%rsi
	xorl	%edi, %edi
	leaq	(%r9,%rsi,8), %r9
	xorl	%esi, %esi
	leaq	(%rax,%r9), %r12
	addq	%rbx, %r9
.L1120:
	movdqa	(%r12,%rsi), %xmm0
	addq	$1, %rdi
	movups	%xmm0, (%r9,%rsi)
	subq	$16, %rsi
	cmpq	%r8, %rdi
	jb	.L1120
	subq	%r11, %rcx
	cmpq	%r11, %r10
	je	.L1122
.L1119:
	movq	(%rax,%rcx,8), %rax
	movq	%rax, (%rbx,%rcx,8)
.L1122:
	movabsq	$144115188075855872, %rax
	orq	%rax, %rdx
	movq	%rbx, %rax
	movq	%rdx, (%rbx)
	movq	%rbx, 0(%rbp)
	jmp	.L1180
	.p2align 4,,10
	.p2align 3
.L1110:
	movq	%r13, 0(%rbp)
.L1180:
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
.L1189:
	.cfi_restore_state
	cmpq	$1, 16(%rsi)
	jne	.L1100
	testq	%rdi, %rdi
	js	.L1191
	andq	(%r12), %rax
	movq	%r13, %rsi
	movq	%r13, %rbx
	movq	%rax, %r14
	leaq	0(,%rax,8), %r15
	movq	bot@GOTPCREL(%rip), %rax
	subq	%r15, %rbx
	subq	(%rax), %rsi
	movq	%rsi, %rax
	shrq	$3, %rax
	cmpq	%rax, %r14
	jbe	.L1102
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1102:
	movq	%rbx, 0(%rbp)
	movabsq	$-72057594037927937, %rax
	andq	(%r12), %rax
	leaq	-1(%r14), %rcx
	testq	%rcx, %rcx
	movq	%rax, (%rbx)
	movq	%rcx, %rax
	jle	.L1137
	leaq	-16(%r15), %rdi
	leaq	(%r12,%r15), %rsi
	leaq	(%rbx,%rdi), %r8
	leaq	(%r12,%rdi), %rdx
	cmpq	%rsi, %r8
	leaq	(%rbx,%r15), %rsi
	setnb	%r8b
	cmpq	%rsi, %rdx
	setnb	%sil
	orb	%sil, %r8b
	je	.L1108
	cmpq	$24, %rcx
	jbe	.L1108
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rcx, %rdx
	cmova	%rcx, %rdx
	testq	%rdx, %rdx
	je	.L1104
	movq	-8(%r12,%r15), %rax
	movq	%rax, -8(%r13)
	leaq	-2(%r14), %rax
.L1104:
	movq	%rcx, %rsi
	subq	%rdx, %r14
	subq	%rdx, %rsi
	leaq	-2(%rsi), %r8
	shrq	%r8
	addq	$1, %r8
	cmpq	$2, %r14
	leaq	(%r8,%r8), %r9
	je	.L1105
	negq	%rdx
	xorl	%ecx, %ecx
	leaq	(%rdi,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	(%r12,%rdi), %r10
	addq	%rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L1106:
	movdqa	(%r10,%rdx), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%r8, %rcx
	jb	.L1106
	subq	%r9, %rax
	cmpq	%r9, %rsi
	je	.L1137
.L1105:
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
.L1137:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
.L1188:
	.cfi_restore_state
	movq	bot@GOTPCREL(%rip), %rax
	movq	%r13, %rsi
	movq	8(%r12), %r12
	leaq	-24(%r13), %rbx
	subq	(%rax), %rsi
	cmpq	$23, %rsi
	jbe	.L1192
.L1098:
	movabsq	$3170534137668829187, %rax
	movq	%rbx, 0(%rbp)
	movq	%r12, -16(%r13)
	movq	%rax, -24(%r13)
	movq	$1, -8(%r13)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
.L1192:
	.cfi_restore_state
	movb	$14, %dil
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L1098
	.p2align 4,,10
	.p2align 3
.L1108:
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	subq	$1, %rax
	je	.L1137
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	subq	$1, %rax
	jne	.L1108
	jmp	.L1137
	.p2align 4,,10
	.p2align 3
.L1191:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rdi
	movq	%rdx, %rsi
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
	jmp	F2xq_inv@PLT
	.p2align 4,,10
	.p2align 3
.L1190:
	.cfi_restore_state
	movq	%rdx, %rsi
	movq	%r12, %rdi
	movq	%rdx, 8(%rsp)
	call	F2xq_inv@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %r12
	jmp	.L1134
	.p2align 4,,10
	.p2align 3
.L1123:
	movq	(%rax,%rcx,8), %rsi
	movq	%rsi, (%rbx,%rcx,8)
	subq	$1, %rcx
	jne	.L1123
	jmp	.L1122
	.p2align 4,,10
	.p2align 3
.L1112:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movabsq	$72057594037927935, %rdx
	movq	%r13, %rdi
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
	andq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	(%rax,%rcx,8), %rsi
	jmp	gerepile@PLT
	.p2align 4,,10
	.p2align 3
.L1114:
	.cfi_restore_state
	subq	$21, %rdx
	cmpq	$1, %rdx
	ja	.L1112
.L1113:
	movabsq	$72057594037927935, %rdx
	movq	%r13, %rbx
	andq	%rdx, %rcx
	leaq	0(,%rcx,8), %r8
	leaq	-1(%rcx), %rsi
	subq	%r8, %rbx
	cmpq	$-1, %rsi
	movq	%rbx, 0(%rbp)
	je	.L1137
	leaq	-16(%r8), %rdx
	leaq	(%rbx,%r8), %r9
	leaq	(%rax,%r8), %r11
	leaq	(%rax,%rdx), %rdi
	cmpq	%r9, %rdi
	leaq	(%rbx,%rdx), %r9
	setnb	%r10b
	cmpq	%r9, %r11
	setbe	%r9b
	orb	%r9b, %r10b
	je	.L1129
	cmpq	$24, %rcx
	jbe	.L1129
	andl	$15, %edi
	shrq	$3, %rdi
	cmpq	%rdi, %rcx
	cmovbe	%rcx, %rdi
	testq	%rdi, %rdi
	je	.L1126
	movq	-8(%rax,%r8), %rsi
	movq	%rsi, -8(%r13)
	leaq	-2(%rcx), %rsi
.L1126:
	subq	%rdi, %rcx
	negq	%rdi
	leaq	-2(%rcx), %r8
	leaq	(%rdx,%rdi,8), %r9
	xorl	%edi, %edi
	xorl	%edx, %edx
	shrq	%r8
	leaq	(%rax,%r9), %r10
	addq	%rbx, %r9
	addq	$1, %r8
	leaq	(%r8,%r8), %r11
.L1127:
	movdqa	(%r10,%rdi), %xmm0
	addq	$1, %rdx
	movups	%xmm0, (%r9,%rdi)
	subq	$16, %rdi
	cmpq	%r8, %rdx
	jb	.L1127
	subq	%r11, %rsi
	cmpq	%r11, %rcx
	je	.L1137
	movq	(%rax,%rsi,8), %rax
	movq	%rax, (%rbx,%rsi,8)
	jmp	.L1137
	.p2align 4,,10
	.p2align 3
.L1129:
	movq	(%rax,%rsi,8), %rdx
	movq	%rdx, (%rbx,%rsi,8)
	subq	$1, %rsi
	cmpq	$-1, %rsi
	jne	.L1129
	jmp	.L1137
	.cfi_endproc
.LFE709:
	.size	F2xq_pow, .-F2xq_pow
	.section	.text.unlikely
.LCOLDE46:
	.text
.LHOTE46:
	.section	.text.unlikely
.LCOLDB47:
	.text
.LHOTB47:
	.p2align 4,,15
	.type	_F2xq_pow, @function
_F2xq_pow:
.LFB715:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	jmp	F2xq_pow@PLT
	.cfi_endproc
.LFE715:
	.size	_F2xq_pow, .-_F2xq_pow
	.section	.text.unlikely
.LCOLDE47:
	.text
.LHOTE47:
	.section	.text.unlikely
.LCOLDB48:
	.text
.LHOTB48:
	.p2align 4,,15
	.globl	F2xq_powers
	.type	F2xq_powers, @function
F2xq_powers:
.LFB710:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	2(%rsi), %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	0(,%r15,8), %rcx
	movq	%rdi, %r12
	movq	%rdx, %r13
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	avma@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	movq	%rax, %rbx
	subq	%rcx, %rbx
	movq	bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rax, %r15
	jbe	.L1195
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1195:
	movabsq	$-72057594037927936, %rax
	movq	%rbx, 0(%rbp)
	testq	%rax, %r15
	je	.L1196
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1196:
	movabsq	$2449958197289549824, %rax
	movq	bot@GOTPCREL(%rip), %rdx
	orq	%rax, %r15
	movq	%r15, (%rbx)
	movq	0(%rbp), %r15
	movq	8(%r13), %rsi
	movq	%r15, %rax
	subq	(%rdx), %rax
	leaq	-24(%r15), %rcx
	cmpq	$23, %rax
	ja	.L1197
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	call	pari_err@PLT
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rsi
.L1197:
	movabsq	$3170534137668829187, %rax
	testq	%r14, %r14
	movq	%rcx, 0(%rbp)
	movq	%rsi, -16(%r15)
	movq	%rax, -24(%r15)
	movq	$1, -8(%r15)
	movq	%rcx, 8(%rbx)
	jne	.L1244
.L1223:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
.L1244:
	.cfi_restore_state
	movq	0(%rbp), %r8
	movq	bot@GOTPCREL(%rip), %rdi
	movabsq	$72057594037927935, %rcx
	andq	(%r12), %rcx
	movq	%r8, %rax
	subq	(%rdi), %rax
	movq	%r8, %r15
	leaq	0(,%rcx,8), %rsi
	shrq	$3, %rax
	subq	%rsi, %r15
	cmpq	%rax, %rcx
	jbe	.L1199
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rsi, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	pari_err@PLT
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r8
.L1199:
	movq	%r15, 0(%rbp)
	movabsq	$-72057594037927937, %rax
	andq	(%r12), %rax
	leaq	-1(%rcx), %r9
	testq	%r9, %r9
	movq	%rax, (%r15)
	movq	%r9, %rax
	jle	.L1208
	leaq	-16(%rsi), %rdi
	leaq	(%r12,%rsi), %r10
	leaq	(%r15,%rdi), %r11
	leaq	(%r12,%rdi), %rdx
	cmpq	%r10, %r11
	leaq	(%r15,%rsi), %r10
	setnb	%r11b
	cmpq	%r10, %rdx
	setnb	%r10b
	orb	%r10b, %r11b
	je	.L1209
	cmpq	$24, %r9
	jbe	.L1209
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %r9
	cmovbe	%r9, %rdx
	testq	%rdx, %rdx
	je	.L1204
	movq	-8(%r12,%rsi), %rax
	movq	%rax, -8(%r8)
	leaq	-2(%rcx), %rax
.L1204:
	subq	%rdx, %r9
	subq	%rdx, %rcx
	leaq	-2(%r9), %rsi
	shrq	%rsi
	addq	$1, %rsi
	cmpq	$2, %rcx
	leaq	(%rsi,%rsi), %r8
	je	.L1205
	negq	%rdx
	xorl	%ecx, %ecx
	leaq	(%rdi,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	(%r12,%rdi), %r10
	addq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L1206:
	movdqa	(%r10,%rdx), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%rsi, %rcx
	jb	.L1206
	subq	%r8, %rax
	cmpq	%r8, %r9
	je	.L1208
.L1205:
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
.L1208:
	cmpq	$1, %r14
	movq	%r15, 16(%rbx)
	je	.L1223
	movq	%r13, %rsi
	movq	%r12, %rdi
	addq	$1, %r14
	call	F2xq_sqr@PLT
	movq	%r12, %rdi
	movq	%rax, 24(%rbx)
	call	F2x_degree@PLT
	movq	%rax, %rbp
	movq	%r13, %rdi
	addq	%rbp, %rbp
	call	F2x_degree@PLT
	cmpq	%rax, %rbp
	jl	.L1211
	cmpq	$3, %r14
	movl	$5, %ebp
	jg	.L1230
	jmp	.L1223
	.p2align 4,,10
	.p2align 3
.L1245:
	movq	%rbp, %rax
	movq	%r13, %rsi
	movq	%rbp, %r15
	sarq	%rax
	movq	(%rbx,%rax,8), %rdi
	call	F2xq_sqr@PLT
.L1215:
	movq	%rax, -8(%rbx,%rbp,8)
	addq	$1, %rbp
	cmpq	%r15, %r14
	jl	.L1223
.L1230:
	testb	$1, %bpl
	je	.L1245
	movq	-16(%rbx,%rbp,8), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %r15
	call	F2xq_mul@PLT
	jmp	.L1215
	.p2align 4,,10
	.p2align 3
.L1209:
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	subq	$1, %rax
	je	.L1208
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	subq	$1, %rax
	jne	.L1209
	jmp	.L1208
	.p2align 4,,10
	.p2align 3
.L1211:
	cmpq	$3, %r14
	jle	.L1223
	movl	$4, %ebp
	.p2align 4,,10
	.p2align 3
.L1213:
	movq	-8(%rbx,%rbp,8), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	F2xq_mul@PLT
	movq	%rax, (%rbx,%rbp,8)
	addq	$1, %rbp
	cmpq	%rbp, %r14
	jge	.L1213
	jmp	.L1223
	.cfi_endproc
.LFE710:
	.size	F2xq_powers, .-F2xq_powers
	.section	.text.unlikely
.LCOLDE48:
	.text
.LHOTE48:
	.section	.text.unlikely
.LCOLDB49:
	.text
.LHOTB49:
	.p2align 4,,15
	.globl	F2xq_trace
	.type	F2xq_trace, @function
F2xq_trace:
.LFB712:
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
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rdi
	movq	%rsi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	avma@GOTPCREL(%rip), %rbx
	movq	(%rbx), %r12
	call	F2x_deriv@PLT
	movq	%r13, %rdi
	movq	%rax, %rsi
	call	F2x_mul@PLT
	movabsq	$72057594037927935, %rdx
	movq	%rax, %r14
	andq	(%rax), %rdx
	movq	bot@GOTPCREL(%rip), %rsi
	movq	(%rbx), %rax
	movq	%rax, %r13
	subq	(%rsi), %rax
	leaq	1(%rdx), %r15
	leaq	0(,%r15,8), %rcx
	shrq	$3, %rax
	subq	%rcx, %r13
	cmpq	%rax, %r15
	jbe	.L1247
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
.L1247:
	movabsq	$-72057594037927936, %rax
	movq	%r13, (%rbx)
	testq	%rax, %r15
	je	.L1248
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
.L1248:
	movabsq	$3170534137668829184, %rax
	movq	$0, 16(%r13)
	orq	%r15, %rax
	cmpq	$2, %rdx
	movq	%rax, 0(%r13)
	jle	.L1252
	leaq	-8(%rcx), %rax
	leaq	16(%r14), %rdx
	xorl	%ecx, %ecx
	leaq	(%r14,%rax), %rsi
	.p2align 4,,10
	.p2align 3
.L1250:
	movq	(%rdx), %rdi
	movq	%rdx, %r9
	addq	$8, %rdx
	subq	%r14, %r9
	leaq	(%rdi,%rdi), %r8
	orq	%r8, %rcx
	movq	%rcx, (%r9,%r13)
	movq	-8(%rdx), %rcx
	shrq	$63, %rcx
	cmpq	%rsi, %rdx
	jne	.L1250
.L1249:
	movq	%rcx, 0(%r13,%rax)
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	Flx_renormalize@PLT
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	F2x_divrem@PLT
	movabsq	$72057594037927935, %rdx
	andq	(%rax), %rdx
	cmpq	$2, %rdx
	je	.L1253
	movq	16(%rax), %rax
	andl	$1, %eax
.L1251:
	movq	%r12, (%rbx)
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
.L1253:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L1251
	.p2align 4,,10
	.p2align 3
.L1252:
	xorl	%ecx, %ecx
	movl	$16, %eax
	jmp	.L1249
	.cfi_endproc
.LFE712:
	.size	F2xq_trace, .-F2xq_trace
	.section	.text.unlikely
.LCOLDE49:
	.text
.LHOTE49:
	.section	.text.unlikely
.LCOLDB50:
	.text
.LHOTB50:
	.p2align 4,,15
	.globl	F2xq_conjvec
	.type	F2xq_conjvec, @function
F2xq_conjvec:
.LFB713:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r13
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	F2x_degree@PLT
	movq	avma@GOTPCREL(%rip), %rbx
	movq	%rax, %r12
	leaq	0(,%r12,8), %rcx
	movq	(%rbx), %rax
	movq	%rax, %rbp
	subq	%rcx, %rbp
	movq	bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rax, %r12
	jbe	.L1260
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1260:
	movabsq	$-72057594037927936, %rax
	movq	%rbp, (%rbx)
	testq	%rax, %r12
	je	.L1261
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1261:
	movabsq	$2594073385365405696, %rax
	movq	bot@GOTPCREL(%rip), %rdx
	movabsq	$72057594037927935, %rcx
	orq	%r12, %rax
	movq	%rax, 0(%rbp)
	movq	(%rbx), %r8
	andq	(%r14), %rcx
	movq	%r8, %rax
	subq	(%rdx), %rax
	movq	%r8, %r15
	leaq	0(,%rcx,8), %rsi
	shrq	$3, %rax
	subq	%rsi, %r15
	cmpq	%rax, %rcx
	jbe	.L1262
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rsi, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	pari_err@PLT
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rcx
	movq	8(%rsp), %r8
.L1262:
	movq	%r15, (%rbx)
	movabsq	$-72057594037927937, %rax
	andq	(%r14), %rax
	leaq	-1(%rcx), %r9
	testq	%r9, %r9
	movq	%rax, (%r15)
	movq	%r9, %rax
	jle	.L1271
	leaq	-16(%rsi), %rdi
	leaq	(%r14,%rsi), %r11
	leaq	(%r15,%rdi), %r10
	leaq	(%r14,%rdi), %rdx
	cmpq	%r10, %r11
	leaq	(%r15,%rsi), %r10
	setbe	%r11b
	cmpq	%r10, %rdx
	setnb	%r10b
	orb	%r10b, %r11b
	je	.L1272
	cmpq	$24, %r9
	jbe	.L1272
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %r9
	cmovbe	%r9, %rdx
	testq	%rdx, %rdx
	je	.L1267
	movq	-8(%r14,%rsi), %rax
	movq	%rax, -8(%r8)
	leaq	-2(%rcx), %rax
.L1267:
	subq	%rdx, %r9
	subq	%rdx, %rcx
	leaq	-2(%r9), %rsi
	shrq	%rsi
	addq	$1, %rsi
	cmpq	$2, %rcx
	leaq	(%rsi,%rsi), %r8
	je	.L1268
	negq	%rdx
	xorl	%ecx, %ecx
	leaq	(%rdi,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	(%r14,%rdi), %r10
	addq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L1269:
	movdqa	(%r10,%rdx), %xmm0
	addq	$1, %rcx
	movups	%xmm0, (%rdi,%rdx)
	subq	$16, %rdx
	cmpq	%rsi, %rcx
	jb	.L1269
	subq	%r8, %rax
	cmpq	%r8, %r9
	je	.L1271
.L1268:
	movq	(%r14,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
.L1271:
	cmpq	$2, %r12
	movq	%r15, 8(%rbp)
	movl	$2, %ebx
	jle	.L1294
	.p2align 4,,10
	.p2align 3
.L1285:
	movq	-8(%rbp,%rbx,8), %rdi
	movq	%r13, %rsi
	call	F2xq_sqr@PLT
	movq	%rax, 0(%rbp,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jne	.L1285
.L1294:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
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
.L1272:
	.cfi_restore_state
	movq	(%r14,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	subq	$1, %rax
	je	.L1271
	movq	(%r14,%rax,8), %rdx
	movq	%rdx, (%r15,%rax,8)
	subq	$1, %rax
	jne	.L1272
	jmp	.L1271
	.cfi_endproc
.LFE713:
	.size	F2xq_conjvec, .-F2xq_conjvec
	.section	.text.unlikely
.LCOLDE50:
	.text
.LHOTE50:
	.section	.text.unlikely
.LCOLDB51:
	.text
.LHOTB51:
	.p2align 4,,15
	.globl	random_F2x
	.type	random_F2x, @function
random_F2x:
.LFB714:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	192(%rdi), %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	avma@GOTPCREL(%rip), %rbx
	movq	bot@GOTPCREL(%rip), %rdx
	shrq	$6, %rbp
	leaq	0(,%rbp,8), %r14
	movq	(%rbx), %rax
	movq	%rax, %r12
	subq	(%rdx), %rax
	subq	%r14, %r12
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L1298
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1298:
	movabsq	$-72057594037927936, %rax
	movq	%r12, (%rbx)
	testq	%rax, %rbp
	jne	.L1305
	movabsq	$3170534137668829184, %rax
	movq	%r15, 8(%r12)
	orq	%rbp, %rax
	cmpq	$2, %rbp
	movq	%rax, (%r12)
	jbe	.L1302
.L1300:
	movl	$2, %ebx
	.p2align 4,,10
	.p2align 3
.L1301:
	call	pari_rand@PLT
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L1301
.L1302:
	movq	%r13, %rcx
	movl	$1, %eax
	movq	%rbp, %rsi
	andl	$63, %ecx
	movq	%r12, %rdi
	salq	%cl, %rax
	subq	$1, %rax
	andq	%rax, -8(%r14,%r12)
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
	jmp	Flx_renormalize@PLT
	.p2align 4,,10
	.p2align 3
.L1305:
	.cfi_restore_state
	leaq	.LC3(%rip), %rsi
	xorl	%eax, %eax
	movl	$15, %edi
	call	pari_err@PLT
	movabsq	$3170534137668829184, %rax
	movq	%r15, 8(%r12)
	orq	%rbp, %rax
	movq	%rax, (%r12)
	jmp	.L1300
	.cfi_endproc
.LFE714:
	.size	random_F2x, .-random_F2x
	.section	.text.unlikely
.LCOLDE51:
	.text
.LHOTE51:
	.section	.text.unlikely
.LCOLDB52:
	.text
.LHOTB52:
	.p2align 4,,15
	.type	_F2xq_rand, @function
_F2xq_rand:
.LFB716:
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
	movabsq	$72057594037927935, %r12
	movq	avma@GOTPCREL(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	0(%rbp), %r14
	call	F2x_degree@PLT
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L1307:
	movq	8(%rbx), %rsi
	movq	%r13, %rdi
	movq	%r14, 0(%rbp)
	call	random_F2x@PLT
	movq	%rax, %rdx
	movq	%r12, %rax
	andq	(%rdx), %rax
	cmpq	$2, %rax
	je	.L1307
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE716:
	.size	_F2xq_rand, .-_F2xq_rand
	.section	.text.unlikely
.LCOLDE52:
	.text
.LHOTE52:
	.section	.text.unlikely
.LCOLDB53:
	.text
.LHOTB53:
	.p2align 4,,15
	.globl	F2xq_order
	.type	F2xq_order, @function
F2xq_order:
.LFB718:
	.cfi_startproc
	leaq	F2xq_star(%rip), %rcx
	jmp	gen_eltorder@PLT
	.cfi_endproc
.LFE718:
	.size	F2xq_order, .-F2xq_order
	.section	.text.unlikely
.LCOLDE53:
	.text
.LHOTE53:
	.section	.text.unlikely
.LCOLDB54:
	.text
.LHOTB54:
	.p2align 4,,15
	.globl	F2xq_log
	.type	F2xq_log, @function
F2xq_log:
.LFB719:
	.cfi_startproc
	leaq	F2xq_star(%rip), %r8
	xorl	%r9d, %r9d
	jmp	gen_PH_log@PLT
	.cfi_endproc
.LFE719:
	.size	F2xq_log, .-F2xq_log
	.section	.text.unlikely
.LCOLDE54:
	.text
.LHOTE54:
	.section	.rodata.str1.1
.LC55:
	.string	"F2xq_sqrt (i = %ld)"
	.section	.text.unlikely
.LCOLDB56:
	.text
.LHOTB56:
	.p2align 4,,15
	.globl	F2xq_sqrt
	.type	F2xq_sqrt, @function
F2xq_sqrt:
.LFB720:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
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
	movq	%rsi, %rdi
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	avma@GOTPCREL(%rip), %r12
	movq	bot@GOTPCREL(%rip), %rax
	movq	(%r12), %r15
	movq	(%rax), %rax
	movq	%r15, %r13
	subq	%rax, %r13
	shrq	$2, %r13
	addq	%rax, %r13
	call	F2x_degree@PLT
	cmpq	$1, %rax
	movq	%rax, 8(%rsp)
	jle	.L1314
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L1325:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	F2xq_sqr@PLT
	cmpq	(%r12), %r13
	movq	%rax, %rbx
	jbe	.L1315
	movq	DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq	$1, (%rax)
	jbe	.L1316
	leaq	.LC55(%rip), %rsi
	movq	%rbp, %rdx
	movl	$3, %edi
	xorl	%eax, %eax
	call	pari_warn@PLT
.L1316:
	movq	bot@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rbx
	jb	.L1317
	movq	top@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rbx
	jnb	.L1317
	cmpq	%r15, %rbx
	jnb	.L1317
	movabsq	$72057594037927935, %rsi
	andq	(%rbx), %rsi
	movq	%r15, %rcx
	leaq	0(,%rsi,8), %rdi
	leaq	-1(%rsi), %rax
	subq	%rdi, %rcx
	cmpq	$-1, %rax
	movq	%rcx, (%r12)
	je	.L1337
	leaq	-16(%rdi), %r8
	leaq	(%rcx,%rdi), %r9
	leaq	(%rbx,%rdi), %r11
	leaq	(%rbx,%r8), %rdx
	leaq	(%rcx,%r8), %r10
	cmpq	%r9, %rdx
	setnb	%r9b
	cmpq	%r10, %r11
	setbe	%r10b
	orb	%r10b, %r9b
	je	.L1323
	cmpq	$24, %rsi
	jbe	.L1323
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %rsi
	cmovbe	%rsi, %rdx
	testq	%rdx, %rdx
	je	.L1320
	movq	-8(%rbx,%rdi), %rax
	movq	%rax, -8(%r15)
	leaq	-2(%rsi), %rax
.L1320:
	subq	%rdx, %rsi
	negq	%rdx
	xorl	%edi, %edi
	leaq	-2(%rsi), %r9
	leaq	(%r8,%rdx,8), %r8
	xorl	%edx, %edx
	shrq	%r9
	leaq	(%rbx,%r8), %r10
	addq	%rcx, %r8
	addq	$1, %r9
	leaq	(%r9,%r9), %r11
.L1321:
	movdqa	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	movups	%xmm0, (%r8,%rdx)
	subq	$16, %rdx
	cmpq	%r9, %rdi
	jb	.L1321
	subq	%r11, %rax
	cmpq	%r11, %rsi
	je	.L1337
	movq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
.L1337:
	movq	%rcx, %rbx
	.p2align 4,,10
	.p2align 3
.L1315:
	addq	$1, %rbp
	cmpq	8(%rsp), %rbp
	jne	.L1325
.L1314:
	movq	bot@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rbx
	jb	.L1326
	movq	top@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rbx
	jb	.L1327
.L1326:
	movq	%r15, (%r12)
	movq	%rbx, %rax
.L1362:
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
.L1323:
	.cfi_restore_state
	movq	(%rbx,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	subq	$1, %rax
	cmpq	$-1, %rax
	jne	.L1323
	jmp	.L1337
	.p2align 4,,10
	.p2align 3
.L1317:
	movq	%r15, (%r12)
	jmp	.L1315
	.p2align 4,,10
	.p2align 3
.L1327:
	cmpq	%r15, %rbx
	jnb	.L1326
	movabsq	$72057594037927935, %rsi
	andq	(%rbx), %rsi
	movq	%r15, %rax
	leaq	0(,%rsi,8), %r8
	leaq	-1(%rsi), %rdx
	subq	%r8, %rax
	cmpq	$-1, %rdx
	movq	%rax, (%r12)
	je	.L1362
	leaq	-16(%r8), %rdi
	leaq	(%rbx,%r8), %r9
	leaq	(%rax,%rdi), %r10
	leaq	(%rbx,%rdi), %rcx
	cmpq	%r9, %r10
	leaq	(%rax,%r8), %r9
	setnb	%r10b
	cmpq	%r9, %rcx
	setnb	%r9b
	orb	%r9b, %r10b
	je	.L1333
	cmpq	$24, %rsi
	jbe	.L1333
	andl	$15, %ecx
	shrq	$3, %rcx
	cmpq	%rcx, %rsi
	cmovbe	%rsi, %rcx
	testq	%rcx, %rcx
	je	.L1330
	movq	-8(%rbx,%r8), %rdx
	movq	%rdx, -8(%r15)
	leaq	-2(%rsi), %rdx
.L1330:
	subq	%rcx, %rsi
	negq	%rcx
	leaq	-2(%rsi), %r8
	leaq	(%rdi,%rcx,8), %r9
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	shrq	%r8
	leaq	(%rbx,%r9), %r10
	addq	%rax, %r9
	addq	$1, %r8
	leaq	(%r8,%r8), %r11
.L1331:
	movdqa	(%r10,%rcx), %xmm0
	addq	$1, %rdi
	movups	%xmm0, (%r9,%rcx)
	subq	$16, %rcx
	cmpq	%r8, %rdi
	jb	.L1331
	subq	%r11, %rdx
	cmpq	%r11, %rsi
	je	.L1362
	movq	(%rbx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
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
.L1333:
	.cfi_restore_state
	movq	(%rbx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	subq	$1, %rdx
	cmpq	$-1, %rdx
	jne	.L1333
	jmp	.L1362
	.cfi_endproc
.LFE720:
	.size	F2xq_sqrt, .-F2xq_sqrt
	.section	.text.unlikely
.LCOLDE56:
	.text
.LHOTE56:
	.section	.text.unlikely
.LCOLDB57:
	.text
.LHOTB57:
	.p2align 4,,15
	.globl	F2xq_sqrtn
	.type	F2xq_sqrtn, @function
F2xq_sqrtn:
.LFB721:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movabsq	$72057594037927935, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	movq	%rdx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	andq	(%rdi), %rax
	cmpq	$2, %rax
	je	.L1381
	movq	%rdx, %rdi
	movq	%rsi, %r13
	call	F2x_degree@PLT
	movl	$2, %edi
	movq	%rax, %rsi
	call	powuu@PLT
	movq	8(%rax), %rdx
	movq	%rax, %rsi
	movq	$-1, %rdi
	sarq	$62, %rdx
	call	addsi_sign@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %r8
	movq	%r12, %rcx
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%r13, %rsi
	movq	%rbp, %rdi
	leaq	F2xq_star(%rip), %r9
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
	movq	%rax, %rdx
	jmp	gen_Shanks_sqrtn@PLT
	.p2align 4,,10
	.p2align 3
.L1381:
	.cfi_restore_state
	testq	%rcx, %rcx
	je	.L1382
	movq	avma@GOTPCREL(%rip), %r13
	movq	bot@GOTPCREL(%rip), %r14
	movq	8(%rdx), %rdx
	movq	0(%r13), %rbp
	movq	%rbp, %rax
	subq	(%r14), %rax
	leaq	-24(%rbp), %r15
	cmpq	$23, %rax
	ja	.L1373
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rdx
.L1373:
	movabsq	$3170534137668829187, %rax
	movq	%r15, 0(%r13)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	%r15, (%r12)
.L1372:
	movq	8(%rbx), %r12
	movq	0(%r13), %rbx
	movq	%rbx, %rax
	subq	(%r14), %rax
	leaq	-16(%rbx), %rbp
	cmpq	$15, %rax
	ja	.L1374
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1374:
	movabsq	$3170534137668829186, %rax
	movq	%rbp, 0(%r13)
	movq	%r12, -8(%rbx)
	movq	%rax, -16(%rbx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
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
.L1382:
	.cfi_restore_state
	movq	avma@GOTPCREL(%rip), %r13
	movq	bot@GOTPCREL(%rip), %r14
	jmp	.L1372
	.cfi_endproc
.LFE721:
	.size	F2xq_sqrtn, .-F2xq_sqrtn
	.section	.text.unlikely
.LCOLDE57:
	.text
.LHOTE57:
	.section	.text.unlikely
.LCOLDB58:
	.text
.LHOTB58:
	.p2align 4,,15
	.globl	gener_F2xq
	.type	gener_F2xq, @function
gener_F2xq:
.LFB722:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	8(%rdi), %rax
	movq	%rsi, 32(%rsp)
	movq	%rax, 16(%rsp)
	call	F2x_degree@PLT
	movq	avma@GOTPCREL(%rip), %r14
	cmpq	$1, %rax
	movq	%rax, 8(%rsp)
	movq	(%r14), %rcx
	movq	%rcx, 48(%rsp)
	je	.L1460
	movq	%rax, %rsi
	movl	$2, %edi
	movq	%rax, %rbx
	call	powuu@PLT
	movq	8(%rax), %rdx
	movq	%rax, %rsi
	movq	$-1, %rdi
	movabsq	$72057594037927935, %r13
	sarq	$62, %rdx
	call	addsi_sign@PLT
	movq	%rax, 24(%rsp)
	movq	gen_2@GOTPCREL(%rip), %rax
	movq	%rbx, %rsi
	movq	(%rax), %rdi
	call	factor_pn_1@PLT
	movq	8(%rax), %rbx
	movq	%rax, 64(%rsp)
	movq	bot@GOTPCREL(%rip), %rax
	movq	(%r14), %r10
	andq	(%rbx), %r13
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
	movq	%r10, %rax
	subq	(%rcx), %rax
	movq	%r10, %rbp
	leaq	0(,%r13,8), %rsi
	shrq	$3, %rax
	subq	%rsi, %rbp
	cmpq	%rax, %r13
	ja	.L1461
.L1389:
	movq	%rbp, (%r14)
	movabsq	$-72057594037927937, %rax
	andq	(%rbx), %rax
	leaq	-1(%r13), %rcx
	testq	%rcx, %rcx
	movq	%rax, 0(%rbp)
	movq	%rcx, %rax
	jle	.L1398
	leaq	-16(%rsi), %rdi
	leaq	(%rbx,%rsi), %r8
	leaq	0(%rbp,%rdi), %r9
	leaq	(%rbx,%rdi), %rdx
	cmpq	%r8, %r9
	leaq	0(%rbp,%rsi), %r8
	setnb	%r9b
	cmpq	%r8, %rdx
	setnb	%r8b
	orb	%r8b, %r9b
	je	.L1399
	cmpq	$24, %rcx
	jbe	.L1399
	andl	$15, %edx
	shrq	$3, %rdx
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	testq	%rdx, %rdx
	je	.L1394
	movq	-8(%rbx,%rsi), %rax
	movq	%rax, -8(%r10)
	leaq	-2(%r13), %rax
.L1394:
	subq	%rdx, %rcx
	subq	%rdx, %r13
	leaq	-2(%rcx), %rsi
	shrq	%rsi
	addq	$1, %rsi
	cmpq	$2, %r13
	leaq	(%rsi,%rsi), %r8
	je	.L1395
	negq	%rdx
	leaq	(%rdi,%rdx,8), %r9
	xorl	%edx, %edx
	xorl	%edi, %edi
	leaq	(%rbx,%r9), %r10
	addq	%rbp, %r9
.L1396:
	movdqa	(%r10,%rdx), %xmm0
	addq	$1, %rdi
	movups	%xmm0, (%r9,%rdx)
	subq	$16, %rdx
	cmpq	%rsi, %rdi
	jb	.L1396
	subq	%r8, %rax
	cmpq	%r8, %rcx
	je	.L1398
.L1395:
	movq	(%rbx,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
.L1398:
	movq	0(%rbp), %rdx
	movabsq	$72057594037927935, %rcx
	movl	$1, %eax
	movl	$1, %ebx
	movq	%rdx, %rsi
	andq	%rcx, %rsi
	cmpq	$1, %rsi
	jle	.L1462
	movq	%r12, 56(%rsp)
	movq	%rcx, %r12
	jmp	.L1440
	.p2align 4,,10
	.p2align 3
.L1401:
	movq	24(%rsp), %rdi
	leaq	0(%rbp,%rax,8), %r15
	leaq	1(%rax), %r13
	addq	$1, %rbx
	call	diviiexact@PLT
	movq	%rax, (%r15)
	movq	0(%rbp), %rdx
	movq	%r13, %rax
	movq	%rdx, %rsi
	andq	%r12, %rsi
	cmpq	%rbx, %rsi
	jle	.L1463
.L1440:
	movq	0(%rbp,%rbx,8), %rsi
	movq	%r12, %rdi
	andq	8(%rsi), %rdi
	cmpq	$3, %rdi
	jne	.L1401
	cmpq	$2, 16(%rsi)
	jne	.L1401
	movq	%rdx, %rsi
	addq	$1, %rbx
	andq	%r12, %rsi
	cmpq	%rbx, %rsi
	jg	.L1440
.L1463:
	movq	%rax, %rbx
	movabsq	$-72057594037927936, %rax
	movq	56(%rsp), %r12
	andq	%rax, %rdx
	testq	%rax, %rbx
	movq	%rbx, %r15
	movq	%rdx, %r13
	jne	.L1464
.L1403:
	movq	%r13, %rdx
	movabsq	$72057594037927935, %r13
	orq	%r15, %rdx
	movq	%rdx, 0(%rbp)
	movq	(%r14), %rax
	movq	%rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L1411:
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	call	random_F2x@PLT
	movq	%rax, %rdi
	movq	%rax, 88(%rsp)
	call	F2x_degree@PLT
	testq	%rax, %rax
	jle	.L1405
	cmpq	$1, %rbx
	je	.L1406
	movl	$1, %r15d
	jmp	.L1409
	.p2align 4,,10
	.p2align 3
.L1407:
	addq	$1, %r15
	cmpq	%rbx, %r15
	je	.L1406
.L1409:
	movq	0(%rbp,%r15,8), %rsi
	movq	88(%rsp), %rdi
	movq	%r12, %rdx
	call	F2xq_pow@PLT
	movq	%r13, %rdx
	andq	(%rax), %rdx
	cmpq	$3, %rdx
	jne	.L1407
	cmpq	$1, 16(%rax)
	jne	.L1407
	cmpq	%rbx, %r15
	je	.L1406
.L1405:
	movq	24(%rsp), %rax
	movq	%rax, (%r14)
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1399:
	movq	(%rbx,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
	subq	$1, %rax
	je	.L1398
	movq	(%rbx,%rax,8), %rdx
	movq	%rdx, 0(%rbp,%rax,8)
	subq	$1, %rax
	jne	.L1399
	jmp	.L1398
.L1461:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rsi, 72(%rsp)
	movq	%r10, 56(%rsp)
	call	pari_err@PLT
	movq	72(%rsp), %rsi
	movq	56(%rsp), %r10
	jmp	.L1389
.L1460:
	cmpq	$0, 32(%rsp)
	je	.L1422
	call	trivfact@PLT
	movq	%rax, %r12
	movq	gen_1@GOTPCREL(%rip), %rax
	movq	(%r14), %rbx
	movq	(%rax), %r13
	movq	bot@GOTPCREL(%rip), %rax
	leaq	-24(%rbx), %rbp
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
	movq	%rbx, %rax
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	.L1386
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1386:
	movabsq	$2449958197289549827, %rax
	movq	%rbp, (%r14)
	movq	%r13, -16(%rbx)
	movq	%rax, -24(%rbx)
	movq	32(%rsp), %rax
	movq	%r12, -8(%rbx)
	movq	40(%rsp), %rcx
	movq	%rbp, (%rax)
	movq	(%r14), %rax
.L1385:
	leaq	-24(%rax), %rbx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	.L1387
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1387:
	movabsq	$3170534137668829187, %rax
	movq	%rbx, (%r14)
	movq	$1, 16(%rbx)
	movq	%rax, (%rbx)
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbx)
.L1439:
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
.L1406:
	.cfi_restore_state
	cmpq	$0, 32(%rsp)
	je	.L1465
	movq	8(%rsp), %rdi
	call	int2n@PLT
	movq	8(%rax), %rdx
	movq	%rax, %rsi
	movq	$-1, %rdi
	sarq	$62, %rdx
	call	addsi_sign@PLT
	movq	(%r14), %rbx
	movq	40(%rsp), %rcx
	movq	%rax, %r12
	movq	%rbx, %rax
	subq	(%rcx), %rax
	leaq	-24(%rbx), %rbp
	cmpq	$23, %rax
	ja	.L1420
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1420:
	movabsq	$2449958197289549827, %rax
	movq	%rbp, (%r14)
	movq	48(%rsp), %rdi
	movq	%rax, -24(%rbx)
	movq	64(%rsp), %rax
	leaq	88(%rsp), %rdx
	movq	%r12, -16(%rbx)
	movl	$2, %esi
	movq	%rax, -8(%rbx)
	movq	32(%rsp), %rax
	movq	%rbp, (%rax)
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	gerepileall.constprop.6
	movq	88(%rsp), %rbx
	jmp	.L1439
.L1462:
	movabsq	$-72057594037927936, %r13
	movl	$1, %r15d
	movl	$1, %ebx
	andq	%rdx, %r13
	jmp	.L1403
.L1464:
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
	jmp	.L1403
.L1422:
	movq	bot@GOTPCREL(%rip), %rcx
	movq	48(%rsp), %rax
	movq	%rcx, 40(%rsp)
	jmp	.L1385
.L1465:
	movq	88(%rsp), %rdi
	call	copy_bin@PLT
	movq	%rax, %rbp
	movq	48(%rsp), %rax
	movq	8(%rbp), %r12
	movq	%rax, (%r14)
	testq	%r12, %r12
	je	.L1466
	movq	40(%rsp), %rdi
	movq	0(%rbp), %rcx
	movq	%rax, %r15
	movq	%r12, %rbx
	subq	16(%rbp), %rbx
	leaq	32(%rbp), %r13
	subq	(%rdi), %rax
	leaq	0(,%rcx,8), %rdx
	subq	%rdx, %r15
	shrq	$3, %rax
	cmpq	%rax, %rcx
	jbe	.L1416
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, 8(%rsp)
	call	pari_err@PLT
	movq	8(%rsp), %rdx
.L1416:
	movq	%r13, %rsi
	movq	%r15, %rdi
	movq	%r15, (%r14)
	call	memcpy@PLT
	movl	24(%rbp), %eax
	addq	%r15, %rbx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	subq	%r12, %rsi
	testl	%eax, %eax
	jne	.L1467
	call	shiftaddress@PLT
.L1418:
	movq	PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq	%rbp, %rdi
	movl	(%r12), %r13d
	movl	$1, (%r12)
	call	free@PLT
	testl	%r13d, %r13d
	movl	%r13d, (%r12)
	jne	.L1439
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L1439
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	jmp	.L1439
.L1467:
	call	shiftaddress_canon@PLT
	jmp	.L1418
.L1466:
	movq	PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movq	%rbp, %rdi
	movl	(%rbx), %r12d
	movl	$1, (%rbx)
	call	free@PLT
	testl	%r12d, %r12d
	movl	%r12d, (%rbx)
	jne	.L1414
	movq	PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L1468
.L1414:
	movq	gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	jmp	.L1439
.L1468:
	movl	(%rax), %edi
	movl	$0, (%rax)
	call	raise@PLT
	jmp	.L1414
	.cfi_endproc
.LFE722:
	.size	gener_F2xq, .-gener_F2xq
	.section	.text.unlikely
.LCOLDE58:
	.text
.LHOTE58:
	.section	.text.unlikely
.LCOLDB59:
	.text
.LHOTB59:
	.p2align 4,,15
	.globl	ZXX_to_F2xX
	.type	ZXX_to_F2xX, @function
ZXX_to_F2xX:
.LFB723:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movabsq	$72057594037927935, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	avma@GOTPCREL(%rip), %rbx
	movq	%rdi, %r12
	andq	(%rdi), %rbp
	movq	(%rbx), %rax
	leaq	0(,%rbp,8), %rdx
	movq	%rax, %r13
	subq	%rdx, %r13
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L1470
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1470:
	movabsq	$1441151880758558720, %rax
	movq	%r13, (%rbx)
	movl	$2, %ebx
	orq	%rbp, %rax
	movq	%rax, 0(%r13)
	movabsq	$4611615649683210240, %rax
	andq	8(%r12), %rax
	movq	%rax, %rdx
	movabsq	$4611686018427387904, %rax
	orq	%rdx, %rax
	cmpq	$2, %rbp
	movq	%rax, 8(%r13)
	jg	.L1477
	jmp	.L1475
	.p2align 4,,10
	.p2align 3
.L1480:
	cmpq	$10, %rax
	jne	.L1472
	call	ZX_to_F2x@PLT
	movq	%rax, 0(%r13,%rbx,8)
.L1472:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L1475
.L1477:
	movq	(%r12,%rbx,8), %rdi
	movq	(%rdi), %rax
	shrq	$57, %rax
	cmpq	$1, %rax
	jne	.L1480
	movq	%r14, %rsi
	call	Z_to_F2x@PLT
	movq	%rax, 0(%r13,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L1477
.L1475:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%rbp, %rsi
	movq	%r13, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	FlxX_renormalize@PLT
	.cfi_endproc
.LFE723:
	.size	ZXX_to_F2xX, .-ZXX_to_F2xX
	.section	.text.unlikely
.LCOLDE59:
	.text
.LHOTE59:
	.section	.text.unlikely
.LCOLDB60:
	.text
.LHOTB60:
	.p2align 4,,15
	.globl	F2c_to_ZC
	.type	F2c_to_ZC, @function
F2c_to_ZC:
.LFB724:
	.cfi_startproc
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
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	movq	avma@GOTPCREL(%rip), %r13
	leaq	1(%rax), %rbx
	movq	0(%r13), %rax
	leaq	0(,%rbx,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbx
	jbe	.L1482
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1482:
	movabsq	$-72057594037927936, %rax
	movq	%r12, 0(%r13)
	testq	%rax, %rbx
	je	.L1483
	leaq	.LC3(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1483:
	movabsq	$2594073385365405696, %rax
	movabsq	$72057594037927935, %r10
	movl	$2, %r8d
	orq	%rbx, %rax
	movl	$1, %edx
	movq	%rax, (%r12)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	andq	%r10, %rcx
	cmpq	$2, %rcx
	jle	.L1485
	.p2align 4,,10
	.p2align 3
.L1496:
	cmpq	%rdx, %rbx
	jle	.L1490
	xorl	%ecx, %ecx
	movq	gen_1@GOTPCREL(%rip), %r9
	movq	gen_0@GOTPCREL(%rip), %rdi
	jmp	.L1486
	.p2align 4,,10
	.p2align 3
.L1502:
	cmpq	$63, %rcx
	jg	.L1491
.L1486:
	movq	0(%rbp,%r8,8), %rsi
	shrq	%cl, %rsi
	andl	$1, %esi
	movq	(%r9), %rsi
	cmove	(%rdi), %rsi
	addq	$1, %rcx
	movq	%rsi, (%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jg	.L1502
.L1491:
	movq	0(%rbp), %rax
.L1490:
	movq	%rax, %rcx
	addq	$1, %r8
	andq	%r10, %rcx
	cmpq	%r8, %rcx
	jg	.L1496
.L1485:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE724:
	.size	F2c_to_ZC, .-F2c_to_ZC
	.section	.text.unlikely
.LCOLDE60:
	.text
.LHOTE60:
	.section	.text.unlikely
.LCOLDB61:
	.text
.LHOTB61:
	.p2align 4,,15
	.globl	F2m_to_ZM
	.type	F2m_to_ZM, @function
F2m_to_ZM:
.LFB725:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movabsq	$72057594037927935, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	avma@GOTPCREL(%rip), %rbx
	andq	(%rdi), %rbp
	movq	(%rbx), %rax
	leaq	0(,%rbp,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L1504
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1504:
	movabsq	$2738188573441261568, %rax
	movq	%r12, (%rbx)
	movl	$1, %ebx
	orq	%rbp, %rax
	cmpq	$1, %rbp
	movq	%rax, (%r12)
	jle	.L1510
	.p2align 4,,10
	.p2align 3
.L1508:
	movq	0(%r13,%rbx,8), %rdi
	call	F2c_to_ZC@PLT
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L1508
.L1510:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE725:
	.size	F2m_to_ZM, .-F2m_to_ZM
	.section	.text.unlikely
.LCOLDE61:
	.text
.LHOTE61:
	.section	.text.unlikely
.LCOLDB62:
	.text
.LHOTB62:
	.p2align 4,,15
	.globl	ZV_to_F2v
	.type	ZV_to_F2v, @function
ZV_to_F2v:
.LFB726:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$72057594037927935, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	andq	(%rdi), %rbx
	movq	avma@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	leaq	190(%rbx), %r13
	leaq	-1(%rbx), %r14
	shrq	$6, %r13
	movq	%rax, %rbp
	leaq	0(,%r13,8), %rdx
	subq	%rdx, %rbp
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %r13
	jbe	.L1513
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1513:
	movabsq	$3170534137668829184, %rax
	movq	%rbp, (%r15)
	movq	%r14, 8(%rbp)
	orq	%rax, %r13
	testq	%r14, %r14
	movl	$1, %r11d
	movq	%r13, 0(%rbp)
	movl	$64, %esi
	movl	$1, %edx
	movabsq	$72057594037927935, %rdi
	jg	.L1523
	jmp	.L1526
	.p2align 4,,10
	.p2align 3
.L1528:
	movq	%rsi, %rcx
	addq	$1, %rsi
.L1516:
	movq	(%r12,%rdx,8), %r9
	movq	8(%r9), %r8
	movq	%r8, %r10
	sarq	$62, %r10
	testq	%r10, %r10
	je	.L1517
	andq	%rdi, %r8
	testb	$1, -8(%r9,%r8,8)
	je	.L1517
	movl	$1, %eax
	salq	%cl, %rax
	orq	%rax, 0(%rbp,%r11,8)
.L1517:
	addq	$1, %rdx
	cmpq	%rbx, %rdx
	je	.L1526
.L1523:
	cmpq	$64, %rsi
	jne	.L1528
	addq	$1, %r11
	movl	$1, %esi
	xorl	%ecx, %ecx
	movq	$0, 0(%rbp,%r11,8)
	jmp	.L1516
	.p2align 4,,10
	.p2align 3
.L1526:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
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
	.cfi_endproc
.LFE726:
	.size	ZV_to_F2v, .-ZV_to_F2v
	.section	.text.unlikely
.LCOLDE62:
	.text
.LHOTE62:
	.section	.text.unlikely
.LCOLDB63:
	.text
.LHOTB63:
	.p2align 4,,15
	.globl	Flv_to_F2v
	.type	Flv_to_F2v, @function
Flv_to_F2v:
.LFB727:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$72057594037927935, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	andq	(%rdi), %rbp
	movq	avma@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	leaq	190(%rbp), %r13
	leaq	-1(%rbp), %r14
	shrq	$6, %r13
	movq	%rax, %rbx
	leaq	0(,%r13,8), %rdx
	subq	%rdx, %rbx
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %r13
	jbe	.L1530
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1530:
	movabsq	$3170534137668829184, %rax
	movq	%rbx, (%r15)
	movq	%r14, 8(%rbx)
	orq	%rax, %r13
	testq	%r14, %r14
	movl	$1, %r9d
	movq	%r13, (%rbx)
	movl	$64, %esi
	movl	$1, %edx
	jg	.L1539
	jmp	.L1542
	.p2align 4,,10
	.p2align 3
.L1544:
	movq	%rsi, %rcx
	addq	$1, %rsi
.L1533:
	testb	$1, (%r12,%rdx,8)
	je	.L1534
	movl	$1, %r8d
	salq	%cl, %r8
	orq	%r8, (%rbx,%r9,8)
.L1534:
	addq	$1, %rdx
	cmpq	%rbp, %rdx
	je	.L1542
.L1539:
	cmpq	$64, %rsi
	jne	.L1544
	addq	$1, %r9
	movl	$1, %esi
	xorl	%ecx, %ecx
	movq	$0, (%rbx,%r9,8)
	jmp	.L1533
	.p2align 4,,10
	.p2align 3
.L1542:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
	.cfi_endproc
.LFE727:
	.size	Flv_to_F2v, .-Flv_to_F2v
	.section	.text.unlikely
.LCOLDE63:
	.text
.LHOTE63:
	.section	.text.unlikely
.LCOLDB64:
	.text
.LHOTB64:
	.p2align 4,,15
	.globl	ZM_to_F2m
	.type	ZM_to_F2m, @function
ZM_to_F2m:
.LFB728:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movabsq	$72057594037927935, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	avma@GOTPCREL(%rip), %rbx
	andq	(%rdi), %rbp
	movq	(%rbx), %rax
	leaq	0(,%rbp,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L1546
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1546:
	movabsq	$2738188573441261568, %rax
	movq	%r12, (%rbx)
	movl	$1, %ebx
	orq	%rbp, %rax
	cmpq	$1, %rbp
	movq	%rax, (%r12)
	jle	.L1552
	.p2align 4,,10
	.p2align 3
.L1550:
	movq	0(%r13,%rbx,8), %rdi
	call	ZV_to_F2v@PLT
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L1550
.L1552:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE728:
	.size	ZM_to_F2m, .-ZM_to_F2m
	.section	.text.unlikely
.LCOLDE64:
	.text
.LHOTE64:
	.section	.text.unlikely
.LCOLDB65:
	.text
.LHOTB65:
	.p2align 4,,15
	.globl	Flm_to_F2m
	.type	Flm_to_F2m, @function
Flm_to_F2m:
.LFB729:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movabsq	$72057594037927935, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	avma@GOTPCREL(%rip), %rbx
	andq	(%rdi), %rbp
	movq	(%rbx), %rax
	leaq	0(,%rbp,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L1555
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1555:
	movabsq	$2738188573441261568, %rax
	movq	%r12, (%rbx)
	movl	$1, %ebx
	orq	%rbp, %rax
	cmpq	$1, %rbp
	movq	%rax, (%r12)
	jle	.L1561
	.p2align 4,,10
	.p2align 3
.L1559:
	movq	0(%r13,%rbx,8), %rdi
	call	Flv_to_F2v@PLT
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L1559
.L1561:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE729:
	.size	Flm_to_F2m, .-Flm_to_F2m
	.section	.text.unlikely
.LCOLDE65:
	.text
.LHOTE65:
	.section	.text.unlikely
.LCOLDB66:
	.text
.LHOTB66:
	.p2align 4,,15
	.globl	F2v_add_inplace
	.type	F2v_add_inplace, @function
F2v_add_inplace:
.LFB730:
	.cfi_startproc
	movabsq	$72057594037927935, %rax
	andq	(%rsi), %rax
	leaq	-2(%rax), %r10
	andl	$7, %r10d
	subq	%r10, %rax
	cmpq	$2, %rax
	jle	.L1578
	leaq	-3(%rax), %r9
	leaq	16(%rsi), %rdx
	leaq	16(%rdi), %rax
	shrq	$3, %r9
	leaq	1(%r9), %r8
	cmpq	$18, %r8
	jbe	.L1565
	leaq	144(%rsi), %rcx
	cmpq	%rcx, %rax
	leaq	144(%rdi), %rcx
	setnb	%r11b
	cmpq	%rcx, %rdx
	setnb	%cl
	orb	%cl, %r11b
	je	.L1565
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1566:
	movdqu	16(%rdx), %xmm0
	addq	$1, %rcx
	addq	$64, %rax
	addq	$64, %rdx
	movdqu	-48(%rax), %xmm2
	movdqu	-32(%rax), %xmm1
	pxor	%xmm0, %xmm2
	movdqu	-32(%rdx), %xmm0
	movdqu	-16(%rax), %xmm3
	pxor	%xmm0, %xmm1
	movdqu	-16(%rdx), %xmm0
	movdqu	-64(%rax), %xmm4
	pxor	%xmm3, %xmm0
	movdqu	-64(%rdx), %xmm3
	pxor	%xmm4, %xmm3
	movups	%xmm2, -48(%rax)
	movups	%xmm3, -64(%rax)
	movups	%xmm1, -32(%rax)
	movups	%xmm0, -16(%rax)
	cmpq	%r8, %rcx
	jb	.L1566
.L1567:
	leaq	10(,%r9,8), %rax
.L1587:
	leaq	.L1571(%rip), %rdx
	movslq	(%rdx,%r10,4), %rcx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L1571:
	.long	.L1563-.L1571
	.long	.L1570-.L1571
	.long	.L1572-.L1571
	.long	.L1573-.L1571
	.long	.L1574-.L1571
	.long	.L1575-.L1571
	.long	.L1576-.L1571
	.long	.L1577-.L1571
	.text
	.p2align 4,,10
	.p2align 3
.L1577:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
	addq	$1, %rax
.L1576:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
	addq	$1, %rax
.L1575:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
	addq	$1, %rax
.L1574:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
	addq	$1, %rax
.L1573:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
	addq	$1, %rax
.L1572:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
	addq	$1, %rax
.L1570:
	movq	(%rsi,%rax,8), %rdx
	xorq	%rdx, (%rdi,%rax,8)
.L1563:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1565:
	movq	%r9, %rcx
	salq	$6, %rcx
	leaq	80(%rdi,%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L1568:
	movq	(%rdx), %rcx
	xorq	%rcx, (%rax)
	addq	$64, %rdx
	movq	-56(%rdx), %rcx
	xorq	%rcx, 8(%rax)
	movq	-48(%rdx), %rcx
	xorq	%rcx, 16(%rax)
	movq	-40(%rdx), %rcx
	xorq	%rcx, 24(%rax)
	movq	-32(%rdx), %rcx
	xorq	%rcx, 32(%rax)
	movq	-24(%rdx), %rcx
	xorq	%rcx, 40(%rax)
	movq	-16(%rdx), %rcx
	xorq	%rcx, 48(%rax)
	movq	-8(%rdx), %rcx
	xorq	%rcx, 56(%rax)
	addq	$64, %rax
	cmpq	%r8, %rax
	jne	.L1568
	jmp	.L1567
	.p2align 4,,10
	.p2align 3
.L1578:
	movl	$2, %eax
	jmp	.L1587
	.cfi_endproc
.LFE730:
	.size	F2v_add_inplace, .-F2v_add_inplace
	.section	.text.unlikely
.LCOLDE66:
	.text
.LHOTE66:
	.section	.text.unlikely
.LCOLDB67:
	.text
.LHOTB67:
	.p2align 4,,15
	.globl	F2xV_to_F2m
	.type	F2xV_to_F2m, @function
F2xV_to_F2m:
.LFB731:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movabsq	$72057594037927935, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	avma@GOTPCREL(%rip), %rbx
	movq	%rdi, %r13
	andq	(%rdi), %rbp
	movq	(%rbx), %rax
	leaq	0(,%rbp,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L1589
	movl	$14, %edi
	xorl	%eax, %eax
	call	pari_err@PLT
.L1589:
	movabsq	$2738188573441261568, %rax
	movq	%r12, (%rbx)
	movl	$1, %ebx
	orq	%rbp, %rax
	cmpq	$1, %rbp
	movq	%rax, (%r12)
	jle	.L1595
	.p2align 4,,10
	.p2align 3
.L1593:
	movq	0(%r13,%rbx,8), %rdi
	movq	%r14, %rsi
	call	F2x_to_F2v@PLT
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L1593
.L1595:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE731:
	.size	F2xV_to_F2m, .-F2xV_to_F2m
	.section	.text.unlikely
.LCOLDE67:
	.text
.LHOTE67:
	.section	.text.unlikely
.LCOLDB68:
	.text
.LHOTB68:
	.p2align 4,,15
	.globl	F2xq_matrix_pow
	.type	F2xq_matrix_pow, @function
F2xq_matrix_pow:
.LFB711:
	.cfi_startproc
	movq	%rdx, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	leaq	-1(%rax), %rsi
	movq	%rcx, %rdx
	call	F2xq_powers@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	F2xV_to_F2m@PLT
	.cfi_endproc
.LFE711:
	.size	F2xq_matrix_pow, .-F2xq_matrix_pow
	.section	.text.unlikely
.LCOLDE68:
	.text
.LHOTE68:
	.section	.rodata
	.align 64
	.type	__bfffo_tabshi.20233, @object
	.size	__bfffo_tabshi.20233, 64
__bfffo_tabshi.20233:
	.long	4
	.long	3
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	F2xq_star, @object
	.size	F2xq_star, 48
F2xq_star:
	.quad	_F2xq_mul
	.quad	_F2xq_pow
	.quad	_F2xq_rand
	.quad	_F2xq_hash
	.quad	vecsmall_lexcmp
	.quad	F2x_equal1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC22:
	.quad	0
	.quad	1
	.align 16
.LC23:
	.quad	4
	.quad	5
	.align 16
.LC24:
	.quad	16
	.quad	17
	.align 16
.LC25:
	.quad	20
	.quad	21
	.align 16
.LC26:
	.quad	64
	.quad	65
	.align 16
.LC27:
	.quad	68
	.quad	69
	.align 16
.LC28:
	.quad	80
	.quad	81
	.align 16
.LC29:
	.quad	84
	.quad	85
	.align 16
.LC33:
	.quad	6148914691236517205
	.quad	6148914691236517205
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
