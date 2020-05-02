	.file	"jchuff.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	encode_mcu_gather, @function
encode_mcu_gather:
.LFB35:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	328(%rdi), %edx
	movq	552(%rdi), %rax
	movq	%rsi, 16(%rsp)
	testl	%edx, %edx
	movq	%rax, 8(%rsp)
	je	.L2
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L3
	movl	380(%rdi), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.L5
.L28:
	movq	8(%rsp), %rsi
	movl	$0, 36(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ecx
	jg	.L28
.L5:
	movl	%edx, %eax
.L3:
	movq	8(%rsp), %rdx
	subl	$1, %eax
	movl	%eax, 56(%rdx)
.L2:
	movl	424(%r12), %eax
	movq	$0, (%rsp)
	testl	%eax, %eax
	jle	.L36
.L27:
	movq	(%rsp), %rbx
	movq	8(%rsp), %rcx
	movslq	428(%r12,%rbx,4), %rdx
	leaq	48(%rdx), %rax
	movq	(%r12,%rax,8), %rsi
	movslq	24(%rsi), %rax
	addq	$20, %rax
	movq	(%rcx,%rax,8), %r13
	movslq	20(%rsi), %rax
	addq	$16, %rax
	movq	(%rcx,%rax,8), %r15
	leaq	(%rcx,%rdx,4), %rax
	movq	16(%rsp), %rdx
	movq	%rax, %rsi
	movq	%rax, 24(%rsp)
	movq	(%rdx,%rbx,8), %rbx
	movswl	(%rbx), %eax
	subl	36(%rsi), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	je	.L21
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L8:
	addl	$1, %r14d
	sarl	%eax
	jne	.L8
	cmpl	$11, %r14d
	jg	.L40
.L38:
	movslq	%r14d, %rax
	salq	$3, %rax
.L7:
	addq	$1, (%r15,%rax)
	movl	$jpeg_natural_order+4, %ebp
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L16:
	movslq	0(%rbp), %rax
	movswl	(%rbx,%rax,2), %eax
	testl	%eax, %eax
	je	.L10
	cmpl	$15, %r15d
	jle	.L12
	subl	$16, %r15d
	movq	1920(%r13), %r9
	movl	%r15d, %edi
	andl	$15, %r15d
	shrl	$4, %edi
	leaq	1(%r9,%rdi), %rdi
	movq	%rdi, 1920(%r13)
.L12:
	movl	%eax, %edi
	movl	$1, %r14d
	sarl	$31, %edi
	xorl	%edi, %eax
	subl	%edi, %eax
	sarl	%eax
	je	.L14
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$1, %r14d
	sarl	%eax
	jne	.L15
	cmpl	$10, %r14d
	jg	.L41
.L14:
	sall	$4, %r15d
	addl	%r15d, %r14d
	xorl	%r15d, %r15d
	movslq	%r14d, %r14
	addq	$1, 0(%r13,%r14,8)
.L13:
	addq	$4, %rbp
	cmpq	$jpeg_natural_order+256, %rbp
	jne	.L16
	testl	%r15d, %r15d
	je	.L17
	addq	$1, 0(%r13)
.L17:
	movq	(%rsp), %rcx
	movq	16(%rsp), %rsi
	movq	(%rsi,%rcx,8), %rax
	movq	24(%rsp), %rsi
	movswl	(%rax), %eax
	movl	%eax, 36(%rsi)
	movl	%ecx, %eax
	addq	$1, %rcx
	addl	$1, %eax
	cmpl	%eax, 424(%r12)
	movq	%rcx, (%rsp)
	jg	.L27
.L36:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
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
.L10:
	.cfi_restore_state
	addl	$1, %r15d
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L41:
	movq	(%r12), %r9
	movq	%r12, %rdi
	xorl	%eax, %eax
	movl	$6, 40(%r9)
	call	*(%r9)
	jmp	.L14
.L40:
	movq	(%r12), %rdx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movl	$6, 40(%rdx)
	call	*(%rdx)
	jmp	.L38
.L21:
	xorl	%eax, %eax
	jmp	.L7
	.cfi_endproc
.LFE35:
	.size	encode_mcu_gather, .-encode_mcu_gather
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	finish_pass_huff, @function
finish_pass_huff:
.LFB33:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$127, %r14d
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
	movq	552(%rdi), %rax
	movq	40(%rdi), %rsi
	movq	%rax, %rbx
	movq	%rax, 24(%rsp)
	movq	(%rsi), %rdx
	movq	32(%rbx), %rcx
	movq	24(%rbx), %r12
	movq	8(%rsi), %rax
	movq	%rcx, 56(%rsp)
	movq	40(%rbx), %rcx
	movq	%r12, 48(%rsp)
	movq	%r12, 16(%rsp)
	movq	%rcx, 64(%rsp)
	movq	48(%rbx), %rcx
	movq	%rcx, 72(%rsp)
	movl	32(%rbx), %ecx
	movl	%ecx, %ebx
	leal	7(%rcx), %r15d
	movl	%ecx, 12(%rsp)
	movl	$17, %ecx
	subl	%ebx, %ecx
	salq	%cl, %r14
	orq	%r12, %r14
	cmpl	$7, %r15d
	jle	.L49
	movq	%rdi, %r12
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L44:
	cmpl	$255, %ebx
	je	.L61
.L46:
	subl	$8, %r15d
	salq	$8, %r14
	cmpl	$7, %r15d
	jbe	.L62
.L47:
	movq	%r14, %rbx
	leaq	1(%rdx), %r13
	sarq	$16, %rbx
	subq	$1, %rax
	movzbl	%bl, %ebx
	movb	%bl, (%rdx)
	movq	%r13, %rdx
	jne	.L44
	movq	40(%r12), %rbp
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	*24(%rbp)
	testl	%eax, %eax
	je	.L45
	cmpl	$255, %ebx
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	jne	.L46
.L61:
	leaq	1(%rdx), %r13
	subq	$1, %rax
	movb	$0, (%rdx)
	movq	%r13, %rdx
	jne	.L46
	movq	40(%r12), %rbx
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L45
	subl	$8, %r15d
	salq	$8, %r14
	movq	(%rbx), %rdx
	cmpl	$7, %r15d
	movq	8(%rbx), %rax
	ja	.L47
	.p2align 4,,10
	.p2align 3
.L62:
	movq	40(%r12), %rsi
	movq	%rdx, %r13
.L43:
	movl	$0, 12(%rsp)
	movq	$0, 16(%rsp)
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L45:
	movq	(%r12), %rdx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	$24, 40(%rdx)
	call	*(%rdx)
	movq	40(%r12), %rsi
	xorl	%eax, %eax
.L48:
	movq	%rax, 8(%rsi)
	movl	12(%rsp), %eax
	movq	%r13, (%rsi)
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	%eax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rdi, 24(%rsi)
	movq	%rax, 32(%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsi)
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsi)
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
.L49:
	.cfi_restore_state
	movq	%rdx, %r13
	jmp	.L43
	.cfi_endproc
.LFE33:
	.size	finish_pass_huff, .-finish_pass_huff
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.type	encode_mcu_huff, @function
encode_mcu_huff:
.LFB32:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	552(%rdi), %rax
	movl	328(%r15), %r8d
	movq	%rsi, 72(%rsp)
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	movq	40(%r15), %rax
	movq	32(%rdi), %rcx
	testl	%r8d, %r8d
	movl	32(%rdi), %r14d
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	%rcx, 120(%rsp)
	movq	40(%rdi), %rcx
	movq	24(%rdi), %rax
	movq	%rcx, 128(%rsp)
	movq	48(%rdi), %rcx
	movq	%rax, 112(%rsp)
	movq	%rax, %r12
	movq	%rcx, 136(%rsp)
	je	.L64
	movq	%rdi, %rcx
	movl	56(%rdi), %edi
	testl	%edi, %edi
	je	.L213
.L64:
	movl	424(%r15), %eax
	testl	%eax, %eax
	jle	.L74
	movq	$0, 56(%rsp)
	movq	%r12, %r13
.L130:
	movq	56(%rsp), %rbx
	movq	64(%rsp), %r9
	movslq	428(%r15,%rbx,4), %rax
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
	addq	$48, %rax
	movq	(%r15,%rax,8), %rcx
	movslq	24(%rcx), %rax
	addq	$12, %rax
	movq	(%r9,%rax,8), %rax
	movq	%rax, 16(%rsp)
	movslq	20(%rcx), %rax
	movq	72(%rsp), %rcx
	addq	$8, %rax
	movq	(%r9,%rax,8), %r12
	movq	(%rcx,%rbx,8), %rax
	movswl	(%rax), %ebp
	movq	%rax, 48(%rsp)
	subl	124(%rsp,%rdi,4), %ebp
	movl	%ebp, 8(%rsp)
	js	.L214
	movl	8(%rsp), %eax
	je	.L136
.L76:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L78:
	addl	$1, %ebx
	sarl	%eax
	jne	.L78
	cmpl	$11, %ebx
	jg	.L215
.L77:
	movslq	%ebx, %rax
	movsbl	1024(%r12,%rax), %ebp
	movl	(%r12,%rax,4), %r12d
	testl	%ebp, %ebp
	je	.L216
.L79:
	movl	%ebp, %ecx
	movl	$1, %eax
	addl	%ebp, %r14d
	salq	%cl, %rax
	movl	$24, %ecx
	subq	$1, %rax
	subl	%r14d, %ecx
	andq	%rax, %r12
	salq	%cl, %r12
	orq	%r12, %r13
	cmpl	$7, %r14d
	jg	.L86
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L218:
	addq	$1, %rsi
	cmpl	$255, %ebp
	je	.L217
.L84:
	subl	$8, %r14d
	salq	$8, %r13
	cmpl	$7, %r14d
	jle	.L80
.L86:
	movq	%r13, %rbp
	sarq	$16, %rbp
	subq	$1, %rdx
	movzbl	%bpl, %ebp
	movb	%bpl, (%rsi)
	jne	.L218
	movq	40(%r15), %r12
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%r12)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %ebp
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	jne	.L84
.L217:
	subq	$1, %rdx
	movb	$0, (%rsi)
	je	.L85
	subl	$8, %r14d
	addq	$1, %rsi
	salq	$8, %r13
	cmpl	$7, %r14d
	jg	.L86
.L80:
	testl	%ebx, %ebx
	jne	.L219
.L87:
	movq	$jpeg_natural_order, 24(%rsp)
	xorl	%ebp, %ebp
.L122:
	movq	24(%rsp), %rax
	movq	48(%rsp), %rcx
	movslq	4(%rax), %rax
	movswl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	movl	%eax, 44(%rsp)
	je	.L94
	cmpl	$15, %ebp
	jle	.L96
	movl	%ebp, 8(%rsp)
	movq	%rdx, %r12
	movq	%r13, %rbp
	movl	%r14d, %r13d
	movq	%rsi, %r14
	.p2align 4,,10
	.p2align 3
.L178:
	movq	16(%rsp), %rax
	movsbl	1264(%rax), %ecx
	movl	960(%rax), %ebx
	testl	%ecx, %ecx
	je	.L220
.L98:
	movl	$1, %eax
	addl	%ecx, %r13d
	salq	%cl, %rax
	movl	$24, %ecx
	subq	$1, %rax
	subl	%r13d, %ecx
	andq	%rax, %rbx
	salq	%cl, %rbx
	orq	%rbx, %rbp
	cmpl	$7, %r13d
	jg	.L104
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L222:
	addq	$1, %r14
	cmpl	$255, %ebx
	je	.L221
.L102:
	subl	$8, %r13d
	salq	$8, %rbp
	cmpl	$7, %r13d
	jle	.L99
.L104:
	movq	%rbp, %rbx
	sarq	$16, %rbx
	subq	$1, %r12
	movzbl	%bl, %ebx
	movb	%bl, (%r14)
	jne	.L222
	movq	40(%r15), %r12
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%r12)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %ebx
	movq	(%r12), %r14
	movq	8(%r12), %r12
	jne	.L102
.L221:
	subq	$1, %r12
	movb	$0, (%r14)
	je	.L103
	subl	$8, %r13d
	addq	$1, %r14
	salq	$8, %rbp
	cmpl	$7, %r13d
	jg	.L104
	.p2align 4,,10
	.p2align 3
.L99:
	subl	$16, 8(%rsp)
	movl	8(%rsp), %eax
	cmpl	$15, %eax
	jg	.L178
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	%r13d, %r14d
	movq	%rbp, %r13
	movl	%eax, %ebp
.L96:
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %eax
	js	.L223
.L106:
	sarl	%eax
	movl	$1, %r12d
	je	.L107
	.p2align 4,,10
	.p2align 3
.L108:
	addl	$1, %r12d
	sarl	%eax
	jne	.L108
	cmpl	$10, %r12d
	jle	.L107
	movq	(%r15), %rcx
	movq	%rsi, 32(%rsp)
	movq	%r15, %rdi
	movq	%rdx, 8(%rsp)
	xorl	%eax, %eax
	movl	$6, 40(%rcx)
	call	*(%rcx)
	movq	8(%rsp), %rdx
	movq	32(%rsp), %rsi
.L107:
	movl	%ebp, %eax
	movq	16(%rsp), %rdi
	sall	$4, %eax
	addl	%r12d, %eax
	cltq
	movsbl	1024(%rdi,%rax), %ecx
	movl	(%rdi,%rax,4), %ebp
	testl	%ecx, %ecx
	je	.L224
.L109:
	movl	$1, %eax
	addl	%ecx, %r14d
	salq	%cl, %rax
	movl	$24, %ecx
	subq	$1, %rax
	subl	%r14d, %ecx
	andq	%rax, %rbp
	salq	%cl, %rbp
	orq	%rbp, %r13
	cmpl	$7, %r14d
	jg	.L115
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L226:
	addq	$1, %rsi
	cmpl	$255, %ebx
	je	.L225
.L113:
	subl	$8, %r14d
	salq	$8, %r13
	cmpl	$7, %r14d
	jle	.L110
.L115:
	movq	%r13, %rbx
	sarq	$16, %rbx
	subq	$1, %rdx
	movzbl	%bl, %ebx
	movb	%bl, (%rsi)
	jne	.L226
	movq	40(%r15), %rbp
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbp)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %ebx
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdx
	jne	.L113
.L225:
	subq	$1, %rdx
	movb	$0, (%rsi)
	je	.L114
	subl	$8, %r14d
	addq	$1, %rsi
	salq	$8, %r13
	cmpl	$7, %r14d
	jg	.L115
.L110:
	movl	%r12d, %ecx
	movl	$1, %eax
	addl	%r12d, %r14d
	salq	%cl, %rax
	movl	$24, %ecx
	subq	$1, %rax
	andl	44(%rsp), %eax
	subl	%r14d, %ecx
	salq	%cl, %rax
	orq	%rax, %r13
	cmpl	$7, %r14d
	jg	.L121
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L228:
	addq	$1, %rsi
	cmpl	$255, %ebx
	je	.L227
.L119:
	subl	$8, %r14d
	salq	$8, %r13
	cmpl	$7, %r14d
	jle	.L116
.L121:
	movq	%r13, %rbx
	sarq	$16, %rbx
	subq	$1, %rdx
	movzbl	%bl, %ebx
	movb	%bl, (%rsi)
	jne	.L228
	movq	40(%r15), %rbp
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbp)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %ebx
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdx
	jne	.L119
.L227:
	subq	$1, %rdx
	movb	$0, (%rsi)
	je	.L120
	subl	$8, %r14d
	addq	$1, %rsi
	salq	$8, %r13
	cmpl	$7, %r14d
	jg	.L121
.L116:
	xorl	%ebp, %ebp
	jmp	.L97
.L136:
	xorl	%ebx, %ebx
	jmp	.L77
.L85:
	movq	40(%r15), %rbp
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbp)
	testl	%eax, %eax
	je	.L133
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdx
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L133:
	xorl	%eax, %eax
.L177:
	addq	$168, %rsp
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
.L103:
	.cfi_restore_state
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	movq	(%rbx), %r14
	movq	8(%rbx), %r12
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L220:
	movq	(%r15), %r8
	movl	%ecx, 32(%rsp)
	movq	%r15, %rdi
	xorl	%eax, %eax
	movl	$40, 40(%r8)
	call	*(%r8)
	movl	32(%rsp), %ecx
	jmp	.L98
.L94:
	addl	$1, %ebp
.L97:
	addq	$4, 24(%rsp)
	movq	24(%rsp), %rax
	cmpq	$jpeg_natural_order+252, %rax
	jne	.L122
	testl	%ebp, %ebp
	je	.L123
	movq	16(%rsp), %rax
	movsbl	1024(%rax), %ebp
	movl	(%rax), %ebx
	testl	%ebp, %ebp
	je	.L229
.L124:
	movl	%ebp, %ecx
	movl	$1, %eax
	addl	%ebp, %r14d
	salq	%cl, %rax
	movl	$24, %ecx
	subq	$1, %rax
	subl	%r14d, %ecx
	andq	%rax, %rbx
	salq	%cl, %rbx
	orq	%rbx, %r13
	cmpl	$7, %r14d
	jg	.L129
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L231:
	addq	$1, %rsi
	cmpl	$255, %ebx
	je	.L230
.L128:
	subl	$8, %r14d
	salq	$8, %r13
	cmpl	$7, %r14d
	jle	.L123
.L129:
	movq	%r13, %rbx
	sarq	$16, %rbx
	subq	$1, %rdx
	movzbl	%bl, %ebx
	movb	%bl, (%rsi)
	jne	.L231
	movq	40(%r15), %rbp
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbp)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %ebx
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdx
	jne	.L128
.L230:
	movb	$0, (%rsi)
	addq	$1, %rsi
	subq	$1, %rdx
	jne	.L128
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	subl	$8, %r14d
	salq	$8, %r13
	movq	(%rbx), %rsi
	cmpl	$7, %r14d
	movq	8(%rbx), %rdx
	jg	.L129
.L123:
	movq	56(%rsp), %rcx
	movq	72(%rsp), %rdi
	movq	(%rdi,%rcx,8), %rax
	movq	80(%rsp), %rdi
	movswl	(%rax), %eax
	movl	%eax, 124(%rsp,%rdi,4)
	movl	%ecx, %eax
	addq	$1, %rcx
	addl	$1, %eax
	cmpl	%eax, 424(%r15)
	movq	%rcx, 56(%rsp)
	jg	.L130
	movq	%r13, %r12
.L74:
	movq	40(%r15), %rax
	movq	64(%rsp), %rcx
	movl	%r14d, 120(%rsp)
	movq	%r12, 112(%rsp)
	movq	%rdx, 8(%rax)
	movq	%rsi, (%rax)
	movq	120(%rsp), %rax
	movl	328(%r15), %edx
	movq	%r12, 24(%rcx)
	movq	%rax, 32(%rcx)
	movq	128(%rsp), %rax
	testl	%edx, %edx
	movq	%rax, 40(%rcx)
	movq	136(%rsp), %rax
	movq	%rax, 48(%rcx)
	movl	$1, %eax
	je	.L177
	movl	56(%rcx), %eax
	testl	%eax, %eax
	jne	.L132
	movl	60(%rcx), %eax
	movl	%eax, 8(%rsp)
	addl	$1, %eax
	andl	$7, %eax
	movl	%eax, 60(%rcx)
	movl	%edx, %eax
.L132:
	movq	64(%rsp), %rdx
	subl	$1, %eax
	movl	%eax, 56(%rdx)
	movl	$1, %eax
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L114:
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	jmp	.L113
.L120:
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	jmp	.L119
.L216:
	movq	(%r15), %rcx
	movq	%rsi, 32(%rsp)
	movq	%r15, %rdi
	movq	%rdx, 24(%rsp)
	xorl	%eax, %eax
	movl	$40, 40(%rcx)
	call	*(%rcx)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	jmp	.L79
.L215:
	movq	(%r15), %rcx
	movq	%rsi, 32(%rsp)
	movq	%r15, %rdi
	movq	%rdx, 24(%rsp)
	xorl	%eax, %eax
	movl	$6, 40(%rcx)
	call	*(%rcx)
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rsi
	jmp	.L77
.L214:
	movl	%ebp, %ecx
	movl	%ebp, %eax
	subl	$1, %ecx
	negl	%eax
	movl	%ecx, 8(%rsp)
	jmp	.L76
.L219:
	movl	%ebx, %ecx
	movl	$1, %eax
	movl	8(%rsp), %ebp
	salq	%cl, %rax
	addl	%ebx, %r14d
	movl	$24, %ecx
	subq	$1, %rax
	subl	%r14d, %ecx
	andl	%eax, %ebp
	salq	%cl, %rbp
	orq	%rbp, %r13
	cmpl	$7, %r14d
	jg	.L93
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L233:
	addq	$1, %rsi
	cmpl	$255, %ebx
	je	.L232
.L91:
	subl	$8, %r14d
	salq	$8, %r13
	cmpl	$7, %r14d
	jle	.L87
.L93:
	movq	%r13, %rbx
	sarq	$16, %rbx
	subq	$1, %rdx
	movzbl	%bl, %ebx
	movb	%bl, (%rsi)
	jne	.L233
	movq	40(%r15), %rbp
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbp)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %ebx
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdx
	jne	.L91
.L232:
	subq	$1, %rdx
	movb	$0, (%rsi)
	je	.L92
	addq	$1, %rsi
	jmp	.L91
.L92:
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	jmp	.L91
.L224:
	movq	(%r15), %r10
	movq	%rsi, 88(%rsp)
	movq	%r15, %rdi
	movq	%rdx, 32(%rsp)
	movl	%ecx, 8(%rsp)
	xorl	%eax, %eax
	movl	$40, 40(%r10)
	call	*(%r10)
	movq	88(%rsp), %rsi
	movq	32(%rsp), %rdx
	movl	8(%rsp), %ecx
	jmp	.L109
.L223:
	subl	$1, %ecx
	negl	%eax
	movl	%ecx, 44(%rsp)
	jmp	.L106
.L213:
	movl	60(%rcx), %r12d
	movl	$17, %ecx
	leal	7(%r14), %ebp
	subl	%r14d, %ecx
	movl	$127, %edi
	salq	%cl, %rdi
	orq	%rax, %rdi
	cmpl	$7, %ebp
	movq	%rdi, %rbx
	jg	.L70
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L235:
	addq	$1, %rsi
	cmpl	$255, %r13d
	je	.L234
.L69:
	subl	$8, %ebp
	salq	$8, %rbx
	cmpl	$7, %ebp
	jbe	.L65
.L70:
	movq	%rbx, %r13
	sarq	$16, %r13
	subq	$1, %rdx
	movzbl	%r13b, %r13d
	movb	%r13b, (%rsi)
	jne	.L235
	movq	40(%r15), %r14
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%r14)
	testl	%eax, %eax
	je	.L133
	cmpl	$255, %r13d
	movq	(%r14), %rsi
	movq	8(%r14), %rdx
	jne	.L69
.L234:
	movb	$0, (%rsi)
	addq	$1, %rsi
	subq	$1, %rdx
	jne	.L69
	movq	40(%r15), %r13
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%r13)
	testl	%eax, %eax
	je	.L133
	subl	$8, %ebp
	salq	$8, %rbx
	movq	0(%r13), %rsi
	cmpl	$7, %ebp
	movq	8(%r13), %rdx
	ja	.L70
.L65:
	subq	$1, %rdx
	leaq	1(%rsi), %rax
	movb	$-1, (%rsi)
	je	.L236
.L71:
	subl	$48, %r12d
	subq	$1, %rdx
	leaq	1(%rax), %rsi
	movb	%r12b, (%rax)
	je	.L237
.L72:
	movl	380(%r15), %eax
	testl	%eax, %eax
	jle	.L135
	subl	$1, %eax
	leaq	96(%rsp), %rcx
	leaq	100(%rsp,%rax,4), %rax
.L73:
	movl	$0, 28(%rcx)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jne	.L73
.L135:
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	.L64
.L229:
	movq	(%r15), %rcx
	movq	%rsi, 16(%rsp)
	movq	%r15, %rdi
	movq	%rdx, 8(%rsp)
	xorl	%eax, %eax
	movl	$40, 40(%rcx)
	call	*(%rcx)
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdx
	jmp	.L124
.L237:
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	jmp	.L72
.L236:
	movq	40(%r15), %rbx
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	*24(%rbx)
	testl	%eax, %eax
	je	.L133
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	jmp	.L71
	.cfi_endproc
.LFE32:
	.size	encode_mcu_huff, .-encode_mcu_huff
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	jpeg_make_c_derived_tbl
	.type	jpeg_make_c_derived_tbl, @function
jpeg_make_c_derived_tbl:
.LFB26:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
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
	movq	%rdi, %rbp
	movl	%edx, %ebx
	subq	$1368, %rsp
	.cfi_def_cfa_offset 1424
	cmpl	$3, %edx
	movl	%esi, 28(%rsp)
	jbe	.L239
	movq	(%rdi), %rax
	movl	%edx, 44(%rax)
	movq	(%rdi), %rdx
	movl	$50, 40(%rax)
	xorl	%eax, %eax
	call	*(%rdx)
.L239:
	movl	28(%rsp), %edx
	movslq	%ebx, %rax
	testl	%edx, %edx
	je	.L240
	addq	$16, %rax
	movq	0(%rbp,%rax,8), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	je	.L279
.L242:
	movq	(%r14), %r13
	testq	%r13, %r13
	je	.L280
.L243:
	movq	8(%rsp), %rax
	movl	$1, %r14d
	xorl	%esi, %esi
	leaq	2(%rax), %r15
	.p2align 4,,10
	.p2align 3
.L248:
	movswl	(%r15), %ebx
	testl	%ebx, %ebx
	js	.L244
	leal	(%rsi,%rbx), %eax
	cmpl	$256, %eax
	jle	.L245
.L244:
	movq	0(%rbp), %rdx
	movl	%esi, 16(%rsp)
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movl	$8, 40(%rdx)
	call	*(%rdx)
	movl	16(%rsp), %esi
.L245:
	testl	%ebx, %ebx
	leal	-1(%rbx), %r8d
	je	.L246
	leal	(%rbx,%rsi), %ecx
	movl	%r14d, %edi
	movl	%esi, %eax
	.p2align 4,,10
	.p2align 3
.L247:
	movslq	%eax, %rdx
	addl	$1, %eax
	cmpl	%ecx, %eax
	movb	%dil, 48(%rsp,%rdx)
	jne	.L247
	leal	1(%rsi,%r8), %esi
.L246:
	addl	$1, %r14d
	addq	$2, %r15
	cmpl	$17, %r14d
	jne	.L248
	movslq	%esi, %rax
	movb	$0, 48(%rsp,%rax)
	movsbl	48(%rsp), %ecx
	testb	%cl, %cl
	movl	%ecx, %r12d
	je	.L250
	movl	%ecx, %r15d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	cmpl	%ecx, %r15d
	movl	%ecx, %edx
	movl	$1, %r10d
	movl	%r15d, %edi
	jne	.L281
	.p2align 4,,10
	.p2align 3
.L270:
	leal	1(%rax), %r14d
	movl	%ebx, 320(%rsp,%rax,4)
	addl	$1, %ebx
	movslq	%r14d, %rax
	movsbl	48(%rsp,%rax), %r15d
	movslq	%r14d, %rax
	cmpl	%edi, %r15d
	movl	%r15d, %edx
	je	.L270
	movq	%r10, %rdi
	movl	%ebx, %eax
	salq	%cl, %rdi
	cmpq	%rdi, %rax
	jge	.L263
	addl	%ebx, %ebx
	addl	$1, %ecx
	testb	%dl, %dl
	je	.L250
.L253:
	cmpl	%ecx, %r15d
	movslq	%r14d, %rax
	movl	%r15d, %edi
	je	.L270
.L281:
	movq	%r10, %rdi
	movl	%eax, %r14d
	movl	%ebx, %eax
	salq	%cl, %rdi
	cmpq	%rdi, %rax
	jge	.L263
	addl	%ebx, %ebx
	addl	$1, %ecx
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L263:
	movq	0(%rbp), %r11
	movq	%r10, 40(%rsp)
	xorl	%eax, %eax
	movb	%dl, 39(%rsp)
	movl	%esi, 32(%rsp)
	movq	%rbp, %rdi
	movl	%ecx, 16(%rsp)
	addl	%ebx, %ebx
	movl	$8, 40(%r11)
	call	*(%r11)
	movzbl	39(%rsp), %edx
	movl	16(%rsp), %ecx
	movq	40(%rsp), %r10
	movl	32(%rsp), %esi
	addl	$1, %ecx
	testb	%dl, %dl
	jne	.L253
.L250:
	leaq	1032(%r13), %rdi
	movl	%r13d, %eax
	movq	$0, 1024(%r13)
	movq	$0, 1272(%r13)
	andq	$-8, %rdi
	subl	%edi, %eax
	leal	1280(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	cmpl	$1, 28(%rsp)
	sbbl	%ebx, %ebx
	andl	$240, %ebx
	addl	$15, %ebx
	testl	%esi, %esi
	jle	.L238
	leal	-1(%rsi), %r9d
	xorl	%r15d, %r15d
	leaq	1(%r9), %rax
	movq	%rax, 16(%rsp)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L282:
	movzbl	48(%rsp,%r15), %r12d
.L262:
	movq	8(%rsp), %rax
	movswl	34(%rax,%r15,2), %eax
	cmpl	%eax, %ebx
	movslq	%eax, %r14
	jl	.L259
	movl	%eax, %edx
	movslq	%eax, %r14
	shrl	$31, %edx
	testb	%dl, %dl
	jne	.L259
	cmpb	$0, 1024(%r13,%r14)
	je	.L260
.L259:
	movq	0(%rbp), %rdx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movl	$8, 40(%rdx)
	call	*(%rdx)
.L260:
	movl	320(%rsp,%r15,4), %eax
	addq	$1, %r15
	cmpq	16(%rsp), %r15
	movl	%eax, 0(%r13,%r14,4)
	movb	%r12b, 1024(%r13,%r14)
	jne	.L282
.L238:
	addq	$1368, %rsp
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
.L240:
	.cfi_restore_state
	addq	$20, %rax
	movq	0(%rbp,%rax,8), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	jne	.L242
.L279:
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	movl	%ebx, 44(%rax)
	movq	0(%rbp), %rdx
	movl	$50, 40(%rax)
	xorl	%eax, %eax
	call	*(%rdx)
	movq	(%r14), %r13
	testq	%r13, %r13
	jne	.L243
.L280:
	movq	8(%rbp), %rcx
	movl	$1280, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	*(%rcx)
	movq	%rax, (%r14)
	movq	%rax, %r13
	jmp	.L243
	.cfi_endproc
.LFE26:
	.size	jpeg_make_c_derived_tbl, .-jpeg_make_c_derived_tbl
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.type	start_pass_huff, @function
start_pass_huff:
.LFB25:
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
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testl	%esi, %esi
	movq	552(%rdi), %r14
	je	.L284
	movq	$encode_mcu_gather, 8(%r14)
	movq	$finish_pass_gather, 16(%r14)
.L285:
	movl	380(%r13), %eax
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.L293
.L295:
	movq	384(%r13,%r12,8), %rax
	testl	%ebp, %ebp
	movslq	20(%rax), %rdx
	movslq	24(%rax), %r15
	je	.L287
	cmpl	$3, %edx
	ja	.L299
	cmpl	$3, %r15d
	ja	.L300
.L289:
	leaq	(%r14,%rdx,8), %rcx
	movq	128(%rcx), %rax
	testq	%rax, %rax
	je	.L301
.L290:
	leaq	8(%rax), %rdi
	movq	$0, (%rax)
	movq	$0, 2048(%rax)
	leaq	(%r14,%r15,8), %r15
	andq	$-8, %rdi
	subq	%rdi, %rax
	leal	2056(%rax), %ecx
	movq	%rbx, %rax
	shrl	$3, %ecx
	rep stosq
	movq	160(%r15), %rcx
	testq	%rcx, %rcx
	je	.L302
.L291:
	leaq	8(%rcx), %rdi
	movq	$0, (%rcx)
	movq	$0, 2048(%rcx)
	movq	%rbx, %rax
	andq	$-8, %rdi
	subq	%rdi, %rcx
	addl	$2056, %ecx
	shrl	$3, %ecx
	rep stosq
.L292:
	movl	$0, 36(%r14,%r12,4)
	leal	1(%r12), %eax
	addq	$1, %r12
	cmpl	%eax, 380(%r13)
	jg	.L295
.L293:
	movl	328(%r13), %eax
	movq	$0, 24(%r14)
	movl	$0, 32(%r14)
	movl	$0, 60(%r14)
	movl	%eax, 56(%r14)
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
.L287:
	.cfi_restore_state
	movslq	%edx, %rax
	movq	%r13, %rdi
	movl	$1, %esi
	leaq	64(,%rax,8), %rcx
	xorl	%eax, %eax
	addq	%r14, %rcx
	call	jpeg_make_c_derived_tbl
	movslq	%r15d, %rax
	movl	%r15d, %edx
	xorl	%esi, %esi
	leaq	96(,%rax,8), %rcx
	movq	%r13, %rdi
	xorl	%eax, %eax
	addq	%r14, %rcx
	call	jpeg_make_c_derived_tbl
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L299:
	movq	0(%r13), %rax
	movl	%edx, 8(%rsp)
	movq	%r13, %rdi
	movl	%edx, 44(%rax)
	movq	0(%r13), %rcx
	movl	$50, 40(%rax)
	xorl	%eax, %eax
	call	*(%rcx)
	cmpl	$3, %r15d
	movslq	8(%rsp), %rdx
	jbe	.L289
.L300:
	movq	0(%r13), %rax
	movl	%edx, 8(%rsp)
	movq	%r13, %rdi
	movl	%r15d, 44(%rax)
	movq	0(%r13), %rcx
	movl	$50, 40(%rax)
	xorl	%eax, %eax
	call	*(%rcx)
	movslq	8(%rsp), %rdx
	leaq	(%r14,%rdx,8), %rcx
	movq	128(%rcx), %rax
	testq	%rax, %rax
	jne	.L290
.L301:
	movq	8(%r13), %r8
	movq	%rcx, 8(%rsp)
	movl	$2056, %edx
	movl	$1, %esi
	movq	%r13, %rdi
	call	*(%r8)
	movq	8(%rsp), %rcx
	movq	%rax, 128(%rcx)
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L284:
	movq	$encode_mcu_huff, 8(%r14)
	movq	$finish_pass_huff, 16(%r14)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L302:
	movq	8(%r13), %rcx
	movl	$2056, %edx
	movl	$1, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*(%rcx)
	movq	%rax, 160(%r15)
	movq	%rax, %rcx
	jmp	.L291
	.cfi_endproc
.LFE25:
	.size	start_pass_huff, .-start_pass_huff
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	jpeg_gen_optimal_table
	.type	jpeg_gen_optimal_table, @function
jpeg_gen_optimal_table:
.LFB36:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%eax, %eax
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
	movl	$8, %ecx
	movq	%rsi, %rbp
	xorl	%esi, %esi
	subq	$2168, %rsp
	.cfi_def_cfa_offset 2224
	movq	%rsp, %rdi
	leaq	80(%rsp), %r12
	rep stosq
	movw	%si, (%rdi)
	movb	$-128, %cl
	movq	%r12, %rdi
	rep stosq
	leaq	1120(%rsp), %rax
	leaq	2148(%rsp), %rcx
	movl	$0, (%rdi)
	.p2align 4,,10
	.p2align 3
.L304:
	movl	$-1, (%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L304
	movq	$1, 2048(%rdx)
.L315:
	xorl	%eax, %eax
	movl	$1000000000, %edi
	movl	$-1, %esi
	.p2align 4,,10
	.p2align 3
.L307:
	movq	(%rdx,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L305
	cmpq	%rdi, %rcx
	setle	%r8b
	cmovle	%rcx, %rdi
	testb	%r8b, %r8b
	cmovne	%eax, %esi
.L305:
	addq	$1, %rax
	cmpq	$257, %rax
	jne	.L307
	xorw	%ax, %ax
	movl	$1000000000, %r8d
	movl	$-1, %r11d
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L335:
	movq	%rcx, %r8
	movl	%edi, %r11d
.L310:
	movq	(%rdx,%rax,8), %rcx
	movl	%eax, %edi
	testq	%rcx, %rcx
	setne	%r10b
	cmpq	%r8, %rcx
	setle	%r9b
	testb	%r9b, %r10b
	je	.L339
	cmpl	%eax, %esi
	je	.L339
.L308:
	addq	$1, %rax
	cmpq	$257, %rax
	jne	.L335
	testl	%edi, %edi
	js	.L311
	movslq	%edi, %r8
	movslq	%esi, %rsi
	leaq	(%rdx,%r8,8), %rax
	addl	$1, 80(%rsp,%rsi,4)
	movq	(%rax), %rcx
	addq	%rcx, (%rdx,%rsi,8)
	movl	1120(%rsp,%rsi,4), %ecx
	movq	$0, (%rax)
	testl	%ecx, %ecx
	js	.L336
	.p2align 4,,10
	.p2align 3
.L313:
	movslq	%ecx, %rax
	movl	1120(%rsp,%rax,4), %ecx
	addl	$1, 80(%rsp,%rax,4)
	testl	%ecx, %ecx
	jns	.L313
.L312:
	movl	%edi, 1120(%rsp,%rax,4)
	movslq	1120(%rsp,%r8,4), %rax
	addl	$1, 80(%rsp,%r8,4)
	testl	%eax, %eax
	js	.L315
	.p2align 4,,10
	.p2align 3
.L348:
	addl	$1, 80(%rsp,%rax,4)
	movslq	1120(%rsp,%rax,4), %rax
	testl	%eax, %eax
	jns	.L348
	jmp	.L315
.L336:
	movq	%rsi, %rax
	jmp	.L312
.L311:
	movq	%r12, %r15
	leaq	1028(%r12), %rbx
	jmp	.L320
.L319:
	addw	$1, (%rsp,%r14,2)
.L318:
	addq	$4, %r15
	cmpq	%rbx, %r15
	je	.L367
.L320:
	movslq	(%r15), %r14
	testl	%r14d, %r14d
	je	.L318
	cmpl	$32, %r14d
	jle	.L319
	movq	0(%r13), %rax
	movq	0(%r13), %rcx
	movq	%r13, %rdi
	movl	$39, 40(%rax)
	xorl	%eax, %eax
	call	*(%rcx)
	jmp	.L319
.L367:
	leaq	64(%rsp), %rcx
	movl	$31, %edi
.L325:
	movzwl	(%rcx), %esi
	testw	%si, %si
	jle	.L368
	subl	$1, %edi
	movslq	%edi, %r8
	.p2align 4,,10
	.p2align 3
.L324:
	cmpw	$0, -4(%rcx)
	movl	%edi, %eax
	jne	.L338
	.p2align 4,,10
	.p2align 3
.L323:
	subl	$1, %eax
	movslq	%eax, %rdx
	cmpw	$0, (%rsp,%rdx,2)
	je	.L323
.L322:
	addl	$1, %eax
	subl	$2, %esi
	addw	$1, -2(%rcx)
	cltq
	movw	%si, (%rcx)
	addw	$2, (%rsp,%rax,2)
	subw	$1, (%rsp,%rdx,2)
	movzwl	(%rcx), %esi
	testw	%si, %si
	jg	.L324
	subq	$2, %rcx
	cmpl	$15, %edi
	jne	.L325
.L370:
	movzwl	32(%rsp), %eax
	leaq	30(%rsp), %rbx
	movl	$16, %edx
	testw	%ax, %ax
	jne	.L327
.L357:
	subq	$2, %rbx
	movzwl	2(%rbx), %eax
	subl	$1, %edx
	testw	%ax, %ax
	je	.L357
.L327:
	movslq	%edx, %rdx
	subl	$1, %eax
	xorl	%ecx, %ecx
	movw	%ax, (%rsp,%rdx,2)
	movq	(%rsp), %rax
	movl	$1, %edx
	movq	%rax, 0(%rbp)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rbp)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbp)
	movq	24(%rsp), %rax
	movq	%rax, 24(%rbp)
	movzwl	32(%rsp), %eax
	movw	%ax, 32(%rbp)
.L330:
	xorl	%eax, %eax
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L331:
	addq	$1, %rax
	cmpq	$256, %rax
	je	.L369
.L332:
	cmpl	%edx, (%r12,%rax,4)
	jne	.L331
	movslq	%ecx, %rsi
	addl	$1, %ecx
	movw	%ax, 34(%rbp,%rsi,2)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L332
.L369:
	addl	$1, %edx
	cmpl	$33, %edx
	jne	.L330
	movl	$0, 548(%rbp)
	addq	$2168, %rsp
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
.L338:
	.cfi_restore_state
	movq	%r8, %rdx
	jmp	.L322
.L368:
	subl	$1, %edi
	subq	$2, %rcx
	cmpl	$15, %edi
	jne	.L325
	jmp	.L370
.L339:
	movq	%r8, %rcx
	movl	%r11d, %edi
	jmp	.L308
	.cfi_endproc
.LFE36:
	.size	jpeg_gen_optimal_table, .-jpeg_gen_optimal_table
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.type	finish_pass_gather, @function
finish_pass_gather:
.LFB37:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	384(%rdi), %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r13d, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	380(%rdi), %ecx
	movq	552(%rdi), %r14
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	testl	%ecx, %ecx
	jle	.L371
.L379:
	movq	(%r15), %rax
	movslq	20(%rax), %r12
	movslq	24(%rax), %rbx
	movl	16(%rsp,%r12,4), %edx
	testl	%edx, %edx
	jne	.L373
	leaq	0(%rbp,%r12,8), %rdx
	movq	128(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L382
.L374:
	leaq	16(%r12), %rax
	movq	%rbp, %rdi
	movq	(%r14,%rax,8), %rdx
	call	jpeg_gen_optimal_table
	movl	$1, 16(%rsp,%r12,4)
.L373:
	movl	32(%rsp,%rbx,4), %eax
	testl	%eax, %eax
	jne	.L375
	leaq	0(%rbp,%rbx,8), %r12
	movq	160(%r12), %rsi
	testq	%rsi, %rsi
	je	.L383
.L376:
	leaq	20(%rbx), %rax
	movq	%rbp, %rdi
	movq	(%r14,%rax,8), %rdx
	call	jpeg_gen_optimal_table
	movl	$1, 32(%rsp,%rbx,4)
.L375:
	addl	$1, %r13d
	addq	$8, %r15
	cmpl	%r13d, 380(%rbp)
	jg	.L379
.L371:
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
	.p2align 4,,10
	.p2align 3
.L382:
	.cfi_restore_state
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	%rdx, 8(%rsp)
	call	jpeg_alloc_huff_table
	movq	8(%rsp), %rdx
	movq	%rax, %rsi
	movq	%rax, 128(%rdx)
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L383:
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	jpeg_alloc_huff_table
	movq	%rax, %rsi
	movq	%rax, 160(%r12)
	jmp	.L376
	.cfi_endproc
.LFE37:
	.size	finish_pass_gather, .-finish_pass_gather
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	jinit_huff_encoder
	.type	jinit_huff_encoder, @function
jinit_huff_encoder:
.LFB38:
	.cfi_startproc
	movq	8(%rdi), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$192, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	*(%rcx)
	movq	%rax, 552(%rbx)
	leaq	96(%rax), %rdx
	movq	$start_pass_huff, (%rax)
	subq	$-128, %rax
.L385:
	movq	$0, (%rdx)
	movq	$0, -32(%rdx)
	addq	$8, %rdx
	movq	$0, 56(%rdx)
	movq	$0, 24(%rdx)
	cmpq	%rax, %rdx
	jne	.L385
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	jinit_huff_encoder, .-jinit_huff_encoder
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
