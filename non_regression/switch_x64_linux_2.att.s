	.file	"j9.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\233;%uH\233L%c\233;%uH%c\233;%uH%s\23322;%uH@\23323;%uH \n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\033[10;%u]"
	.text
	.p2align 4,,15
	.globl	u
	.type	u, @function
u:
.LFB53:
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	o@GOTPCREL(%rip), %rax
	movq	p@GOTPCREL(%rip), %r13
	movq	d@GOTPCREL(%rip), %rdx
	movq	x@GOTPCREL(%rip), %rbp
	movq	w@GOTPCREL(%rip), %rbx
	movq	r@GOTPCREL(%rip), %rcx
	movsbl	(%rax), %r8d
	movq	k@GOTPCREL(%rip), %rax
	movsbq	(%rdx), %rdx
	movq	P@GOTPCREL(%rip), %r15
	movsbl	(%rbx), %esi
	movl	%edi, 44(%rsp)
	movzbl	(%rax), %eax
	movsbl	0(%rbp), %edi
	addb	0(%r13), %al
	movq	X@GOTPCREL(%rip), %r12
	movsbl	(%rcx,%rdx), %ecx
	movl	%edi, %edx
	movb	%al, 0(%r13)
	movsbl	%al, %eax
	movl	%r8d, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	(%r15), %rax
	subl	%esi, %edx
	leal	(%rdi,%rsi), %r8d
	leaq	.LC0(%rip), %rsi
	movl	%ecx, %r9d
	movl	$1, %edi
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movsbl	(%r12), %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movsbl	21(%rbp), %edx
	movsbl	0(%r13), %eax
	subl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movsbl	21(%rbx), %edx
	cmpl	%edx, %eax
	jge	.L44
	movq	g@GOTPCREL(%rip), %r14
	movq	G@GOTPCREL(%rip), %rdx
	movzbl	(%r14), %eax
	cmpb	(%rdx), %al
	je	.L41
	setl	%dl
	leaq	48(%rsp), %rsi
	xorl	%edi, %edi
	leal	-1(%rax,%rdx,2), %eax
	movq	$0, 48(%rsp)
	movq	$0, 64(%rsp)
	movb	%al, (%r14)
	sarb	$3, %al
	movsbl	%al, %ecx
	movl	$72000, %eax
	addl	$1, %ecx
	cltd
	idivl	%ecx
	xorl	%edx, %edx
	cltq
	movq	%rax, 72(%rsp)
	movq	%rax, 56(%rsp)
	call	setitimer@PLT
	movq	f@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.L45
.L7:
	movsbl	21(%rbx), %edx
	movl	$9, %eax
	movq	s@GOTPCREL(%rip), %rcx
	movq	o@GOTPCREL(%rip), %rdi
	movzbl	1(%rbp), %esi
	movq	z@GOTPCREL(%rip), %r8
	subl	%edx, %eax
	movzbl	(%r14), %edx
	sarb	$3, %dl
	movsbl	%dl, %edx
	addl	$1, %edx
	imull	%edx, %eax
	addl	%eax, (%rcx)
	movzbl	0(%r13), %eax
	leaq	1(%rbp), %rdx
	testb	%sil, %sil
	movb	%al, (%rdi)
	movzbl	0(%rbp), %edi
	movq	a@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	%rbp, %rdx
	movb	%dil, (%r8)
	jne	.L35
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L11:
	movl	%esi, %edi
	movl	%ecx, %esi
.L35:
	movb	%dil, 1(%rdx)
	movq	(%rax), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, (%rax)
	movzbl	1(%rdx), %ecx
	testb	%cl, %cl
	jne	.L11
	movq	y@GOTPCREL(%rip), %rdx
	movb	%sil, (%rdx)
.L12:
	movzbl	1(%rbx), %esi
	movzbl	(%rbx), %edi
	leaq	1(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	%rbx, %rdx
	testb	%sil, %sil
	movb	%dil, (%r8)
	jne	.L36
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L16:
	movl	%esi, %edi
	movl	%ecx, %esi
.L36:
	movb	%dil, 1(%rdx)
	movq	(%rax), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, (%rax)
	movzbl	1(%rdx), %ecx
	testb	%cl, %cl
	jne	.L16
	movq	y@GOTPCREL(%rip), %rax
	movb	%sil, (%r8)
	movb	%sil, (%rax)
.L10:
	call	rand@PLT
	testb	%al, %al
	jne	.L18
	movzbl	(%rbx), %edx
	subb	$1, %dl
	jne	.L46
.L18:
	movq	(%r15), %rdx
	movq	(%rdx), %rcx
	cmpb	$0, (%rcx)
	je	.L19
	addq	$8, %rdx
	movq	%rdx, (%r15)
.L20:
	call	rand@PLT
	andl	$31, %eax
	cmpl	$2, %eax
	jle	.L23
.L47:
	movq	d@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L25
.L48:
	movzbl	0(%rbp), %edx
	leal	-1(%rdx), %eax
	cmpb	(%rbx), %al
	movb	%al, 0(%rbp)
	jle	.L42
.L27:
	movl	44(%rsp), %edi
	movq	u@GOTPCREL(%rip), %rsi
	call	signal@PLT
	addq	$88, %rsp
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
.L19:
	.cfi_restore_state
	testb	$31, %ah
	jne	.L20
	movl	$1808407283, %r13d
	.p2align 4,,10
	.p2align 3
.L22:
	call	rand@PLT
	movl	%eax, %ecx
	imull	%r13d
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$5, %edx
	subl	%eax, %edx
	movl	$76, %eax
	imull	%eax, %edx
	movsbl	0(%rbp), %eax
	subl	%edx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movb	%cl, (%r12)
	subl	%eax, %esi
	movl	%esi, %eax
	addl	$2, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	movsbl	(%rbx), %ecx
	subl	%ecx, %eax
	cmpl	$5, %eax
	jle	.L22
	movq	T@GOTPCREL(%rip), %rax
	addl	$1, %edx
	movb	%dl, (%r12)
	movq	%rax, (%r15)
	call	rand@PLT
	andl	$31, %eax
	cmpl	$2, %eax
	jg	.L47
.L23:
	movq	d@GOTPCREL(%rip), %rdi
	testb	%al, %al
	movb	%al, (%rdi)
	je	.L48
.L25:
	cmpb	$2, %al
	jne	.L27
	movzbl	0(%rbp), %edx
	movsbl	(%rbx), %ecx
	leal	1(%rdx), %eax
	movb	%al, 0(%rbp)
	movsbl	%al, %eax
	addl	%ecx, %eax
	cmpl	$79, %eax
	jle	.L27
.L42:
	movq	d@GOTPCREL(%rip), %rax
	movb	%dl, 0(%rbp)
	movb	$1, (%rax)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L46:
	movb	%dl, (%rbx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L45:
	movsbl	(%r14), %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addl	$24, %edx
	call	__printf_chk@PLT
.L41:
	movq	f@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
	movq	stdout@GOTPCREL(%rip), %rax
	movl	$7, %edi
	movq	(%rax), %rsi
	call	_IO_putc@PLT
	jmp	.L7
.L44:
	xorl	%edi, %edi
	call	exit@PLT
	.cfi_endproc
.LFE53:
	.size	u, .-u
	.section	.rodata.str1.1
.LC2:
	.string	"\033[0q\033cScore: %u\n"
.LC3:
	.string	"stty echo -cbreak"
	.text
	.p2align 4,,15
	.globl	e
	.type	e, @function
e:
.LFB54:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$1, %esi
	movl	$14, %edi
	call	signal@PLT
	movq	s@GOTPCREL(%rip), %rax
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC3(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	system@PLT
	.cfi_endproc
.LFE54:
	.size	e, .-e
	.section	.rodata.str1.1
.LC4:
	.string	"TERM"
.LC5:
	.string	"stty -echo cbreak"
.LC6:
	.string	"\033[%uq"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB55:
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
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	e@GOTPCREL(%rip), %rdi
	call	atexit@PLT
	cmpl	$1, %ebx
	jle	.L52
	movq	8(%rbp), %rax
	cmpb	$113, (%rax)
	je	.L53
.L52:
	leaq	.LC4(%rip), %rdi
	call	getenv@PLT
	movl	(%rax), %edx
	movl	$1, %eax
	cmpl	$1970170220, %edx
	je	.L54
	xorl	%eax, %eax
	cmpl	$1818848885, %edx
	sete	%al
.L54:
	movq	f@GOTPCREL(%rip), %rdx
	movb	%al, (%rdx)
.L53:
	call	getpid@PLT
	movl	%eax, %edi
	leaq	.L58(%rip), %rbx
	call	srand@PLT
	leaq	.LC5(%rip), %rdi
	call	system@PLT
	movq	l@GOTPCREL(%rip), %r12
	movq	G@GOTPCREL(%rip), %r13
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movsbl	(%r12), %edx
	movb	$0, 0(%r13)
	call	__printf_chk@PLT
	movl	$14, %edi
	call	u@PLT
	movq	stdin@GOTPCREL(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L66:
	movq	0(%rbp), %rdi
	call	_IO_getc@PLT
	subl	$32, %eax
	cmpl	$81, %eax
	ja	.L66
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L58:
	.long	.L57-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L59-.L58
	.long	.L66-.L58
	.long	.L57-.L58
	.long	.L60-.L58
	.long	.L66-.L58
	.long	.L61-.L58
	.long	.L62-.L58
	.long	.L63-.L58
	.long	.L64-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L59-.L58
	.long	.L66-.L58
	.long	.L60-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L59-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L60-.L58
	.long	.L57-.L58
	.long	.L66-.L58
	.long	.L66-.L58
	.long	.L69-.L58
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L69:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
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
.L64:
	.cfi_restore_state
	movsbl	3(%r12), %edx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movb	$24, 0(%r13)
	call	__printf_chk@PLT
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L63:
	movsbl	2(%r12), %edx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movb	$16, 0(%r13)
	call	__printf_chk@PLT
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L62:
	movsbl	1(%r12), %edx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movb	$8, 0(%r13)
	call	__printf_chk@PLT
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L61:
	movsbl	(%r12), %edx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movb	$0, 0(%r13)
	call	__printf_chk@PLT
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L60:
	movq	k@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L59:
	movq	k@GOTPCREL(%rip), %rax
	movb	$-1, (%rax)
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L57:
	movq	k@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	jmp	.L66
	.cfi_endproc
.LFE55:
	.size	main, .-main
	.globl	s
	.bss
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.globl	f
	.align 16
	.type	f, @object
	.size	f, 1
f:
	.zero	1
	.globl	P
	.section	.data.rel,"aw",@progbits
	.align 16
	.type	P, @object
	.size	P, 8
P:
	.quad	T+32
	.comm	X,1,1
	.comm	G,1,1
	.globl	g
	.data
	.align 16
	.type	g, @object
	.size	g, 1
g:
	.byte	-1
	.comm	z,1,1
	.comm	y,1,1
	.comm	a,8,8
	.globl	k
	.bss
	.align 16
	.type	k, @object
	.size	k, 1
k:
	.zero	1
	.globl	o
	.data
	.type	o, @object
	.size	o, 1
o:
	.byte	40
	.globl	p
	.type	p, @object
	.size	p, 1
p:
	.byte	40
	.globl	d
	.align 16
	.type	d, @object
	.size	d, 1
d:
	.byte	1
	.globl	T
	.section	.rodata.str1.1
.LC7:
	.string	"  |"
.LC8:
	.string	"%\\|/%"
.LC9:
	.string	" %%%"
.LC10:
	.string	""
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	T, @object
	.size	T, 40
T:
	.quad	.LC7
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.globl	l
	.data
	.align 16
	.type	l, @object
	.size	l, 4
l:
	.byte	2
	.byte	3
	.byte	1
	.byte	0
	.globl	r
	.type	r, @object
	.size	r, 3
r:
	.byte	92
	.byte	124
	.byte	47
	.globl	w
	.align 16
	.type	w, @object
	.size	w, 23
w:
	.string	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.globl	x
	.align 16
	.type	x, @object
	.size	x, 23
x:
	.string	"(((((((((((((((((((((("
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
