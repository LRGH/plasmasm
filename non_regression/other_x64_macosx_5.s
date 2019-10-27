	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_jinit_upsampler
	.align	4, 0x90
_jinit_upsampler:                       ## @jinit_upsampler
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp3:
	.cfi_offset %rbx, -56
Ltmp4:
	.cfi_offset %r12, -48
Ltmp5:
	.cfi_offset %r13, -40
Ltmp6:
	.cfi_offset %r14, -32
Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movq	8(%r12), %rcx
	movl	$1, %esi
	movl	$272, %edx              ## imm = 0x110
	xorl	%eax, %eax
                                        ## kill: RDI<def> R12<kill>
	callq	*(%rcx)
	movq	%rax, %r14
	movq	%r14, 664(%r12)
	leaq	_start_pass_upsample(%rip), %rax
	movq	%rax, (%r14)
	leaq	_sep_upsample(%rip), %rax
	movq	%rax, 8(%r14)
	movl	$0, 16(%r14)
	cmpl	$0, 448(%r12)
	je	LBB0_2
## BB#1:
	movq	(%r12), %rcx
	movl	$25, 40(%rcx)
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	*(%rcx)
LBB0_2:
	cmpl	$0, 100(%r12)
	je	LBB0_3
## BB#4:
	cmpl	$1, 472(%r12)
	setg	%al
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB0_5
LBB0_3:
	movl	$0, -44(%rbp)           ## 4-byte Folded Spill
LBB0_5:
	cmpl	$0, 56(%r12)
	jle	LBB0_30
## BB#6:                                ## %.lr.ph
	movq	304(%r12), %rbx
	addq	$48, %rbx
	xorl	%r13d, %r13d
	jmp	LBB0_7
LBB0_26:                                ## %.critedge8
                                        ##   in Loop: Header=BB0_7 Depth=1
	leaq	_int_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movw	%ax, 232(%r14,%r13,2)
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movw	%ax, 252(%r14,%r13,2)
	jmp	LBB0_28
	.align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbx), %esi
	movl	-40(%rbx), %eax
	imull	%esi, %eax
	movl	472(%r12), %edi
	cltd
	idivl	%edi
	movl	%eax, %ecx
	imull	-36(%rbx), %esi
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	movl	464(%r12), %edi
	movl	468(%r12), %r8d
	movl	%esi, 192(%r14,%r13,4)
	cmpl	$0, (%rbx)
	je	LBB0_8
## BB#9:                                ##   in Loop: Header=BB0_7 Depth=1
	cmpl	%edi, %ecx
	jne	LBB0_12
## BB#10:                               ##   in Loop: Header=BB0_7 Depth=1
	cmpl	%r8d, %esi
	jne	LBB0_12
## BB#11:                               ## %.critedge
                                        ##   in Loop: Header=BB0_7 Depth=1
	leaq	_fullsize_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	jmp	LBB0_29
	.align	4, 0x90
LBB0_8:                                 ##   in Loop: Header=BB0_7 Depth=1
	leaq	_noop_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	jmp	LBB0_29
	.align	4, 0x90
LBB0_12:                                ##   in Loop: Header=BB0_7 Depth=1
	leal	(%rcx,%rcx), %eax
	cmpl	%edi, %eax
	jne	LBB0_18
## BB#13:                               ##   in Loop: Header=BB0_7 Depth=1
	cmpl	%r8d, %esi
	jne	LBB0_18
## BB#14:                               ##   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax         ## 4-byte Reload
	testb	%al, %al
	je	LBB0_17
## BB#15:                               ##   in Loop: Header=BB0_7 Depth=1
	cmpl	$3, -8(%rbx)
	jb	LBB0_17
## BB#16:                               ## %.critedge4
                                        ##   in Loop: Header=BB0_7 Depth=1
	leaq	_h2v1_fancy_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	jmp	LBB0_28
LBB0_18:                                ##   in Loop: Header=BB0_7 Depth=1
	cmpl	%edi, %eax
	jne	LBB0_24
## BB#19:                               ##   in Loop: Header=BB0_7 Depth=1
	leal	(%rsi,%rsi), %eax
	cmpl	%r8d, %eax
	jne	LBB0_24
## BB#20:                               ##   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax         ## 4-byte Reload
	testb	%al, %al
	je	LBB0_23
## BB#21:                               ##   in Loop: Header=BB0_7 Depth=1
	cmpl	$3, -8(%rbx)
	jb	LBB0_23
## BB#22:                               ## %.critedge6
                                        ##   in Loop: Header=BB0_7 Depth=1
	leaq	_h2v2_fancy_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	movl	$1, 16(%r14)
	jmp	LBB0_28
LBB0_17:                                ## %.critedge5
                                        ##   in Loop: Header=BB0_7 Depth=1
	leaq	_h2v1_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	jmp	LBB0_28
LBB0_24:                                ##   in Loop: Header=BB0_7 Depth=1
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	LBB0_27
## BB#25:                               ##   in Loop: Header=BB0_7 Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	LBB0_26
LBB0_27:                                ## %.critedge9
                                        ##   in Loop: Header=BB0_7 Depth=1
	movq	(%r12), %rcx
	movl	$38, 40(%rcx)
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	*(%rcx)
	jmp	LBB0_28
LBB0_23:                                ## %.critedge7
                                        ##   in Loop: Header=BB0_7 Depth=1
	leaq	_h2v2_upsample(%rip), %rax
	movq	%rax, 104(%r14,%r13,8)
	.align	4, 0x90
LBB0_28:                                ##   in Loop: Header=BB0_7 Depth=1
	movq	8(%r12), %rax
	movq	16(%rax), %r15
	movl	136(%r12), %edi
	movslq	464(%r12), %rsi
	xorl	%eax, %eax
	callq	_jround_up
	movq	%rax, %rdx
	movl	468(%r12), %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
                                        ## kill: EDX<def> EDX<kill> RDX<kill>
	callq	*%r15
	movq	%rax, 24(%r14,%r13,8)
LBB0_29:                                ##   in Loop: Header=BB0_7 Depth=1
	incq	%r13
	movslq	56(%r12), %rax
	addq	$96, %rbx
	cmpq	%rax, %r13
	jl	LBB0_7
LBB0_30:                                ## %._crit_edge
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_start_pass_upsample:                   ## @start_pass_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp8:
	.cfi_def_cfa_offset 16
Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp10:
	.cfi_def_cfa_register %rbp
	movq	664(%rdi), %rax
	movl	468(%rdi), %ecx
	movl	%ecx, 184(%rax)
	movl	140(%rdi), %ecx
	movl	%ecx, 188(%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_sep_upsample:                          ## @sep_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp14:
	.cfi_offset %rbx, -56
Ltmp15:
	.cfi_offset %r12, -48
Ltmp16:
	.cfi_offset %r13, -40
Ltmp17:
	.cfi_offset %r14, -32
Ltmp18:
	.cfi_offset %r15, -24
	movq	%r9, %r15
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	movl	16(%rbp), %r13d
	movq	664(%rbx), %r12
	movl	184(%r12), %edx
	movl	468(%rbx), %eax
	cmpl	%eax, %edx
	jl	LBB2_6
## BB#1:
	cmpl	$0, 56(%rbx)
	jle	LBB2_5
## BB#2:                                ## %.lr.ph
	movq	%r8, -72(%rbp)          ## 8-byte Spill
	movq	%r15, -64(%rbp)         ## 8-byte Spill
	movq	304(%rbx), %r15
	movq	%r14, -56(%rbp)         ## 8-byte Spill
	leaq	24(%r12), %r14
	xorl	%r13d, %r13d
	.align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rsi,%r13,8), %rax
	movl	192(%r12,%r13,4), %ecx
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	imull	(%rdx), %ecx
	leaq	(%rax,%rcx,8), %rdx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rsi, %rbx
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	*104(%r12,%r13,8)
	movq	%rbx, %rsi
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	incq	%r13
	addq	$96, %r15
	movslq	56(%rbx), %rax
	addq	$8, %r14
	cmpq	%rax, %r13
	jl	LBB2_3
## BB#4:                                ## %._crit_edge
	movl	468(%rbx), %eax
	movq	-56(%rbp), %r14         ## 8-byte Reload
	movq	-64(%rbp), %r15         ## 8-byte Reload
	movl	16(%rbp), %r13d
	movq	-72(%rbp), %r8          ## 8-byte Reload
LBB2_5:
	movl	$0, 184(%r12)
	xorl	%edx, %edx
LBB2_6:
	subl	%edx, %eax
	movl	188(%r12), %ecx
	cmpl	%ecx, %eax
	cmoval	%ecx, %eax
	movl	(%r15), %ecx
	subl	%ecx, %r13d
	cmpl	%r13d, %eax
	cmovbel	%eax, %r13d
	movq	672(%rbx), %r9
	leaq	24(%r12), %rsi
	leaq	(%r8,%rcx,8), %rcx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r13d, %r8d
	callq	*8(%r9)
	addl	%r13d, (%r15)
	subl	%r13d, 188(%r12)
	addl	184(%r12), %r13d
	movl	%r13d, 184(%r12)
	cmpl	468(%rbx), %r13d
	jl	LBB2_8
## BB#7:
	incl	(%r14)
LBB2_8:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_noop_upsample:                         ## @noop_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp19:
	.cfi_def_cfa_offset 16
Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp21:
	.cfi_def_cfa_register %rbp
	movq	$0, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_fullsize_upsample:                     ## @fullsize_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	movq	%rdx, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_h2v1_fancy_upsample:                   ## @h2v1_fancy_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp25:
	.cfi_def_cfa_offset 16
Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp28:
	.cfi_offset %rbx, -48
Ltmp29:
	.cfi_offset %r12, -40
Ltmp30:
	.cfi_offset %r14, -32
Ltmp31:
	.cfi_offset %r15, -24
	cmpl	$0, 468(%rdi)
	jle	LBB5_7
## BB#1:                                ## %.lr.ph10
	movq	(%rcx), %r8
	xorl	%r9d, %r9d
	.align	4, 0x90
LBB5_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_5 Depth 2
	movq	(%rdx,%r9,8), %rax
	movq	(%r8,%r9,8), %r11
	leaq	1(%rax), %r10
	movzbl	(%rax), %ecx
	movb	%cl, (%r11)
	leal	(%rcx,%rcx,2), %ecx
	movzbl	1(%rax), %ebx
	leal	2(%rbx,%rcx), %ecx
	shrl	$2, %ecx
	movb	%cl, 1(%r11)
	movl	40(%rsi), %r14d
	leaq	2(%r11), %rbx
	cmpl	$2, %r14d
	je	LBB5_3
## BB#4:                                ## %.lr.ph.preheader
                                        ##   in Loop: Header=BB5_2 Depth=1
	movl	$2, %ecx
	subl	%r14d, %ecx
	.align	4, 0x90
LBB5_5:                                 ## %.lr.ph
                                        ##   Parent Loop BB5_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r10, %r15
	movq	%rbx, %r14
	movzbl	(%r15), %ebx
	leal	(%rbx,%rbx,2), %r12d
	movzbl	(%rax), %ebx
	leal	1(%rbx,%r12), %ebx
	shrl	$2, %ebx
	movb	%bl, (%r14)
	movzbl	2(%rax), %ebx
	leaq	2(%rax), %r10
	leal	2(%rbx,%r12), %eax
	shrl	$2, %eax
	movb	%al, 3(%r11)
	movq	%r11, %rbx
	addq	$4, %rbx
	incl	%ecx
	movq	%r14, %r11
	movq	%r15, %rax
	jne	LBB5_5
	jmp	LBB5_6
	.align	4, 0x90
LBB5_3:                                 ##   in Loop: Header=BB5_2 Depth=1
	movq	%r11, %r14
LBB5_6:                                 ## %._crit_edge
                                        ##   in Loop: Header=BB5_2 Depth=1
	movzbl	(%r10), %eax
	leal	(%rax,%rax,2), %r11d
	movzbl	-1(%r10), %ecx
	leal	1(%rcx,%r11), %ecx
	shrl	$2, %ecx
	movb	%cl, (%rbx)
	movb	%al, 3(%r14)
	incq	%r9
	movslq	468(%rdi), %rax
	cmpq	%rax, %r9
	jl	LBB5_2
LBB5_7:                                 ## %._crit_edge11
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_h2v1_upsample:                         ## @h2v1_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	movl	468(%rdi), %esi
	testl	%esi, %esi
	jle	LBB6_7
## BB#1:                                ## %.lr.ph5
	movq	(%rcx), %r8
	xorl	%r9d, %r9d
	.align	4, 0x90
LBB6_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_4 Depth 2
	movl	136(%rdi), %r10d
	testq	%r10, %r10
	je	LBB6_6
## BB#3:                                ## %.lr.ph
                                        ##   in Loop: Header=BB6_2 Depth=1
	movq	(%r8,%r9,8), %rsi
	addq	%rsi, %r10
	movq	(%rdx,%r9,8), %rcx
	.align	4, 0x90
LBB6_4:                                 ##   Parent Loop BB6_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	(%rcx), %al
	incq	%rcx
	movb	%al, (%rsi)
	movb	%al, 1(%rsi)
	addq	$2, %rsi
	cmpq	%r10, %rsi
	jb	LBB6_4
## BB#5:                                ## %._crit_edge
                                        ##   in Loop: Header=BB6_2 Depth=1
	movl	468(%rdi), %esi
LBB6_6:                                 ##   in Loop: Header=BB6_2 Depth=1
	incq	%r9
	movslq	%esi, %rax
	cmpq	%rax, %r9
	jl	LBB6_2
LBB6_7:                                 ## %._crit_edge6
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_h2v2_fancy_upsample:                   ## @h2v2_fancy_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp35:
	.cfi_def_cfa_offset 16
Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
Ltmp38:
	.cfi_offset %rbx, -56
Ltmp39:
	.cfi_offset %r12, -48
Ltmp40:
	.cfi_offset %r13, -40
Ltmp41:
	.cfi_offset %r14, -32
Ltmp42:
	.cfi_offset %r15, -24
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	cmpl	$0, 468(%rdi)
	jle	LBB7_11
## BB#1:                                ## %.preheader.lr.ph
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.align	4, 0x90
LBB7_2:                                 ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_5 Depth 2
                                        ##     Child Loop BB7_9 Depth 2
	movslq	%r10d, %r10
	movq	(%rdx,%r9,8), %r11
	movq	-8(%rdx,%r9,8), %r13
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	(%rax,%r10,8), %r15
	movzbl	(%r11), %eax
	leal	(%rax,%rax,2), %eax
	movzbl	(%r13), %r14d
	addl	%eax, %r14d
	movzbl	1(%r11), %eax
	leal	(%rax,%rax,2), %eax
	movzbl	1(%r13), %ecx
	addl	%eax, %ecx
	leal	8(,%r14,4), %eax
	shrl	$4, %eax
	movb	%al, (%r15)
	leal	(%r14,%r14,2), %eax
	leal	7(%rax,%rcx), %eax
	shrl	$4, %eax
	movb	%al, 1(%r15)
	movl	40(%rsi), %ebx
	leaq	2(%r15), %rdi
	cmpl	$2, %ebx
	je	LBB7_3
## BB#4:                                ## %.lr.ph
                                        ##   in Loop: Header=BB7_2 Depth=1
	addq	$2, %r13
	addq	$2, %r11
	movl	$2, %eax
	subl	%ebx, %eax
	.align	4, 0x90
LBB7_5:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r8d
	movq	%rdi, %r12
	movzbl	(%r11), %ecx
	incq	%r11
	leal	(%rcx,%rcx,2), %edi
	movzbl	(%r13), %ecx
	incq	%r13
	addl	%edi, %ecx
	leal	(%r8,%r8,2), %edi
	leal	8(%r14,%rdi), %ebx
	shrl	$4, %ebx
	movb	%bl, (%r12)
	leal	7(%rdi,%rcx), %edi
	shrl	$4, %edi
	movb	%dil, 3(%r15)
	movq	%r15, %rdi
	addq	$4, %rdi
	incl	%eax
	movq	%r12, %r15
	movl	%r8d, %r14d
	jne	LBB7_5
	jmp	LBB7_6
	.align	4, 0x90
LBB7_3:                                 ##   in Loop: Header=BB7_2 Depth=1
	movl	%r14d, %r8d
	movq	%r15, %r12
LBB7_6:                                 ## %._crit_edge
                                        ##   in Loop: Header=BB7_2 Depth=1
	leal	(%rcx,%rcx,2), %eax
	leal	8(%r8,%rax), %eax
	shrl	$4, %eax
	movb	%al, (%rdi)
	leal	7(,%rcx,4), %eax
	shrl	$4, %eax
	movb	%al, 3(%r12)
	movq	(%rdx,%r9,8), %r11
	movq	8(%rdx,%r9,8), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	8(%rcx,%r10,8), %r15
	movzbl	(%r11), %ecx
	leal	(%rcx,%rcx,2), %ecx
	movzbl	(%rax), %r14d
	addl	%ecx, %r14d
	movzbl	1(%r11), %ecx
	leal	(%rcx,%rcx,2), %edx
	movzbl	1(%rax), %ecx
	addl	%edx, %ecx
	leal	8(,%r14,4), %edx
	shrl	$4, %edx
	movb	%dl, (%r15)
	leal	(%r14,%r14,2), %edx
	leal	7(%rdx,%rcx), %edx
	shrl	$4, %edx
	movb	%dl, 1(%r15)
	movl	40(%rsi), %edi
	leaq	2(%r15), %rbx
	movq	%rsi, %rdx
	cmpl	$2, %edi
	je	LBB7_7
## BB#8:                                ## %.lr.ph.1
                                        ##   in Loop: Header=BB7_2 Depth=1
	addq	$2, %rax
	addq	$2, %r11
	movl	$2, %r8d
	subl	%edi, %r8d
	.align	4, 0x90
LBB7_9:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r13d
	movq	%rbx, %r12
	movzbl	(%r11), %ecx
	incq	%r11
	leal	(%rcx,%rcx,2), %esi
	movzbl	(%rax), %ecx
	incq	%rax
	addl	%esi, %ecx
	leal	(%r13,%r13,2), %esi
	leal	8(%r14,%rsi), %edi
	shrl	$4, %edi
	movb	%dil, (%r12)
	leal	7(%rsi,%rcx), %esi
	shrl	$4, %esi
	movb	%sil, 3(%r15)
	movq	%r15, %rbx
	addq	$4, %rbx
	incl	%r8d
	movq	%r12, %r15
	movl	%r13d, %r14d
	jne	LBB7_9
	jmp	LBB7_10
	.align	4, 0x90
LBB7_7:                                 ##   in Loop: Header=BB7_2 Depth=1
	movl	%r14d, %r13d
	movq	%r15, %r12
LBB7_10:                                ## %._crit_edge.1
                                        ##   in Loop: Header=BB7_2 Depth=1
	incq	%r9
	leal	(%rcx,%rcx,2), %eax
	leal	8(%r13,%rax), %eax
	shrl	$4, %eax
	movb	%al, (%rbx)
	leal	7(,%rcx,4), %eax
	shrl	$4, %eax
	movb	%al, 3(%r12)
	addq	$2, %r10
	movq	-64(%rbp), %rax         ## 8-byte Reload
	cmpl	468(%rax), %r10d
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	jl	LBB7_2
LBB7_11:                                ## %._crit_edge17
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_h2v2_upsample:                         ## @h2v2_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp43:
	.cfi_def_cfa_offset 16
Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp46:
	.cfi_offset %rbx, -56
Ltmp47:
	.cfi_offset %r12, -48
Ltmp48:
	.cfi_offset %r13, -40
Ltmp49:
	.cfi_offset %r14, -32
Ltmp50:
	.cfi_offset %r15, -24
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movq	%rdi, %r15
	cmpl	$0, 468(%r15)
	jle	LBB8_7
## BB#1:                                ## %.lr.ph6
	movq	(%rcx), %r12
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	4, 0x90
LBB8_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_4 Depth 2
	movl	136(%r15), %eax
	testq	%rax, %rax
	movl	$0, %r9d
	je	LBB8_6
## BB#3:                                ## %.lr.ph
                                        ##   in Loop: Header=BB8_2 Depth=1
	movq	(%r12,%r14,8), %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	(%rdx,%r13,8), %rdx
	.align	4, 0x90
LBB8_4:                                 ##   Parent Loop BB8_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %bl
	incq	%rdx
	movb	%bl, (%rcx)
	movb	%bl, 1(%rcx)
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jb	LBB8_4
## BB#5:                                ## %._crit_edge
                                        ##   in Loop: Header=BB8_2 Depth=1
	movl	136(%r15), %r9d
LBB8_6:                                 ##   in Loop: Header=BB8_2 Depth=1
	movl	%r14d, %ecx
	orl	$1, %ecx
	movl	$1, %r8d
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	_jcopy_sample_rows
	incq	%r13
	addq	$2, %r14
	movslq	468(%r15), %rax
	cmpq	%rax, %r14
	jl	LBB8_2
LBB8_7:                                 ## %._crit_edge7
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
_int_upsample:                          ## @int_upsample
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp51:
	.cfi_def_cfa_offset 16
Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp54:
	.cfi_offset %rbx, -56
Ltmp55:
	.cfi_offset %r12, -48
Ltmp56:
	.cfi_offset %r13, -40
Ltmp57:
	.cfi_offset %r14, -32
Ltmp58:
	.cfi_offset %r15, -24
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rdi, %r14
	movq	%r14, -72(%rbp)         ## 8-byte Spill
	cmpl	$0, 468(%r14)
	jle	LBB9_10
## BB#1:                                ## %.lr.ph9
	movq	664(%r14), %rax
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movslq	4(%rsi), %rcx
	movswl	232(%rax,%rcx,2), %r15d
	movswl	252(%rax,%rcx,2), %edx
	movq	%rdx, -80(%rbp)         ## 8-byte Spill
	leal	-1(%rdx), %eax
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movl	%r15d, %eax
	notl	%eax
	cmpl	$-3, %eax
	movl	$-2, %ecx
	cmovgl	%eax, %ecx
	leal	1(%rcx,%r15), %ebx
	incq	%rbx
	movslq	%edx, %rax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	.align	4, 0x90
LBB9_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_5 Depth 2
	movl	136(%r14), %r13d
	testq	%r13, %r13
	je	LBB9_7
## BB#3:                                ## %.lr.ph5
                                        ##   in Loop: Header=BB9_2 Depth=1
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rax,%rcx,8), %r14
	addq	%r14, %r13
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	(%rax,%rcx,8), %r12
	.align	4, 0x90
LBB9_5:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testw	%r15w, %r15w
	jle	LBB9_4
## BB#6:                                ## %.lr.ph
                                        ##   in Loop: Header=BB9_5 Depth=2
	movzbl	(%r12), %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_memset
	addq	%rbx, %r14
LBB9_4:                                 ## %.loopexit
                                        ##   in Loop: Header=BB9_5 Depth=2
	incq	%r12
	cmpq	%r13, %r14
	jb	LBB9_5
LBB9_7:                                 ## %._crit_edge
                                        ##   in Loop: Header=BB9_2 Depth=1
	movq	-80(%rbp), %rax         ## 8-byte Reload
	cmpl	$2, %eax
	movq	-72(%rbp), %r14         ## 8-byte Reload
	jl	LBB9_9
## BB#8:                                ##   in Loop: Header=BB9_2 Depth=1
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	leal	1(%rsi), %ecx
	movl	136(%r14), %r9d
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
                                        ## kill: ESI<def> ESI<kill> RSI<kill>
	movq	%rdi, %rdx
	movl	-100(%rbp), %r8d        ## 4-byte Reload
	callq	_jcopy_sample_rows
LBB9_9:                                 ##   in Loop: Header=BB9_2 Depth=1
	incq	-56(%rbp)               ## 8-byte Folded Spill
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rcx
	addq	-88(%rbp), %rcx         ## 8-byte Folded Reload
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	movslq	468(%r14), %rax
	cmpq	%rax, %rcx
	jl	LBB9_2
LBB9_10:                                ## %._crit_edge10
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
