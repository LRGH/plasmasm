	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.quad	4619567317775286272     ## double 7
LCPI0_1:
	.quad	4584664420663164928     ## double 0.03125
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_polgalois
	.align	4, 0x90
_polgalois:                             ## @polgalois
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
Ltmp6:
	.cfi_def_cfa_offset 176
Ltmp7:
	.cfi_offset %rbx, -56
Ltmp8:
	.cfi_offset %r12, -48
Ltmp9:
	.cfi_offset %r13, -40
Ltmp10:
	.cfi_offset %r14, -32
Ltmp11:
	.cfi_offset %r15, -24
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	_avma@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	%rax, (%rsp)            ## 8-byte Spill
	movl	$16777215, %ebx         ## imm = 0xFFFFFF
	andq	(%r13), %rbx
	movq	%rbx, %rax
	addq	$-3, %rax
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	jg	LBB0_2
## BB#1:
	leaq	L_.str(%rip), %rsi
	movl	$21, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB0_2:
	movq	%r13, %rdi
	callq	_ZX_is_irred
	testq	%rax, %rax
	jne	LBB0_4
## BB#3:
	leaq	L_.str1(%rip), %rsi
	movl	$7, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB0_4:                                 ## %.preheader
	movq	_LOG2@GOTPCREL(%rip), %rax
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	divsd	(%rax), %xmm0
	mulsd	LCPI0_1(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         ## 8-byte Spill
	addq	$-7, %rbx
	movq	%rbx, 24(%rsp)          ## 8-byte Spill
	leaq	LJTI0_0(%rip), %rax
	movslq	(%rax,%rbx,4), %rcx
	addq	%rax, %rcx
	movq	%rcx, 32(%rsp)          ## 8-byte Spill
	movq	_bot@GOTPCREL(%rip), %r12
                                        ## implicit-def: R14
	jmp	LBB0_5
	.align	4, 0x90
LBB0_40:                                ## %.loopexit7
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	$0, (%r15)
	xorl	%edi, %edi
	callq	_tschirnhaus
	movq	%rax, %r13
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_30 Depth 2
                                        ##       Child Loop BB0_32 Depth 3
                                        ##         Child Loop BB0_34 Depth 4
                                        ##           Child Loop BB0_35 Depth 5
                                        ##           Child Loop BB0_37 Depth 5
	movq	%r13, 48(%rsp)          ## 8-byte Spill
	movq	%r13, %rdi
	callq	_cauchy_bound
	cmpq	$3, %rbx
	ja	LBB0_40
## BB#6:                                ##   in Loop: Header=BB0_5 Depth=1
	jmpq	*32(%rsp)               ## 8-byte Folded Reload
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm0, 104(%rsp)        ## 8-byte Spill
	movq	(%r15), %rax
	leaq	-56(%rax), %rbx
	subq	(%r12), %rax
	cmpq	$55, %rax
	ja	LBB0_9
## BB#8:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB0_9:                                 ## %cgetg.exit3
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, (%r15)
	movq	$570425351, (%rbx)      ## imm = 0x22000007
	movq	%r14, %rdi
	callq	_ZX_factor
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movl	$16777215, %edx         ## imm = 0xFFFFFF
	andq	%rdx, %rax
	cmpq	$4, %rax
	je	LBB0_17
## BB#10:                               ## %cgetg.exit3
                                        ##   in Loop: Header=BB0_5 Depth=1
	cmpq	$3, %rax
	je	LBB0_16
## BB#11:                               ## %cgetg.exit3
                                        ##   in Loop: Header=BB0_5 Depth=1
	cmpq	$2, %rax
	je	LBB0_12
## BB#20:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	$2, %edi
	xorl	%eax, %eax
	leaq	L_.str2(%rip), %rsi
	callq	_pari_err
	movsd	104(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB0_21:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	(%r15), %rax
	leaq	-56(%rax), %rbx
	subq	(%r12), %rax
	cmpq	$55, %rax
	ja	LBB0_23
## BB#22:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	movsd	%xmm0, 104(%rsp)        ## 8-byte Spill
	callq	_pari_err
	movsd	104(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB0_23:                                ## %cgetg.exit5
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, (%r15)
	movq	$570425351, (%rbx)      ## imm = 0x22000007
LBB0_24:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	(%r15), %rax
	leaq	-56(%rax), %rbx
	subq	(%r12), %rax
	cmpq	$55, %rax
	ja	LBB0_26
## BB#25:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	movsd	%xmm0, 104(%rsp)        ## 8-byte Spill
	callq	_pari_err
	movsd	104(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB0_26:                                ## %cgetg.exit4
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, (%r15)
	movq	$570425351, (%rbx)      ## imm = 0x22000007
LBB0_27:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	(%r15), %rbp
	leaq	-288(%rbp), %rbx
	movq	%rbp, %rax
	subq	(%r12), %rax
	cmpq	$287, %rax              ## imm = 0x11F
	ja	LBB0_29
## BB#28:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	movsd	%xmm0, 104(%rsp)        ## 8-byte Spill
	callq	_pari_err
	movsd	104(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB0_29:                                ## %cgetg.exit
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, (%r15)
	movq	%rbx, 40(%rsp)          ## 8-byte Spill
	movq	$570425380, -288(%rbp)  ## imm = 0x22000024
	mulsd	16(%rsp), %xmm0         ## 8-byte Folded Reload
	cvttsd2si	%xmm0, %rsi
	addq	$3, %rsi
	addq	$-280, %rbp             ## imm = 0xFFFFFFFFFFFFFEE8
	movq	%rbp, 80(%rsp)          ## 8-byte Spill
	jmp	LBB0_30
	.align	4, 0x90
LBB0_41:                                ##   in Loop: Header=BB0_30 Depth=2
	movq	56(%rsp), %rsi          ## 8-byte Reload
	leaq	-2(%rsi,%rsi), %rsi
	movq	48(%rsp), %r13          ## 8-byte Reload
LBB0_30:                                ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_32 Depth 3
                                        ##         Child Loop BB0_34 Depth 4
                                        ##           Child Loop BB0_35 Depth 5
                                        ##           Child Loop BB0_37 Depth 5
	movq	%rsi, 56(%rsp)          ## 8-byte Spill
	movq	%r13, %rdi
	callq	_cleanroots
	movq	%rax, %r15
	movq	%r15, 88(%rsp)          ## 8-byte Spill
	movl	$5, %r13d
	movl	$1, %ecx
	xorl	%r14d, %r14d
	.align	4, 0x90
LBB0_32:                                ## %.lr.ph17
                                        ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_30 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_34 Depth 4
                                        ##           Child Loop BB0_35 Depth 5
                                        ##           Child Loop BB0_37 Depth 5
	movq	%r13, 72(%rsp)          ## 8-byte Spill
	movq	%rcx, 96(%rsp)          ## 8-byte Spill
	leaq	1(%rcx), %r12
	movq	%r12, 64(%rsp)          ## 8-byte Spill
	.align	4, 0x90
LBB0_34:                                ## %.outer
                                        ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_30 Depth=2
                                        ##       Parent Loop BB0_32 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB0_35 Depth 5
                                        ##           Child Loop BB0_37 Depth 5
	incq	%r13
	movq	96(%rsp), %rbp          ## 8-byte Reload
	.align	4, 0x90
LBB0_35:                                ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_30 Depth=2
                                        ##       Parent Loop BB0_32 Depth=3
                                        ##         Parent Loop BB0_34 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	(%r15,%rbp,8), %rdi
	movq	(%r15,%r12,8), %rsi
	callq	_gadd
	movq	%rax, %rbx
	incq	%r12
	decq	%r13
	cmpq	$7, %r12
	jg	LBB0_35
## BB#36:                               ## %.lr.ph.preheader
                                        ##   in Loop: Header=BB0_34 Depth=4
	movq	%r14, 104(%rsp)         ## 8-byte Spill
	movq	80(%rsp), %rax          ## 8-byte Reload
	leaq	(%rax,%r14,8), %r14
	leaq	(%r15,%r12,8), %rbp
	movq	$-8, %r15
	.align	4, 0x90
LBB0_37:                                ## %.lr.ph
                                        ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_30 Depth=2
                                        ##       Parent Loop BB0_32 Depth=3
                                        ##         Parent Loop BB0_34 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	movq	64(%rbp,%r15,8), %rsi
	movq	%rbx, %rdi
	callq	_gadd
	movq	%rax, 64(%r14,%r15,8)
	incq	%r15
	movq	%r12, %rax
	addq	%r15, %rax
	jne	LBB0_37
## BB#33:                               ## %.loopexit
                                        ##   in Loop: Header=BB0_34 Depth=4
	movq	104(%rsp), %r14         ## 8-byte Reload
	addq	%r13, %r14
	decq	%r13
	cmpq	$7, %r12
	movq	88(%rsp), %r15          ## 8-byte Reload
	jne	LBB0_34
## BB#31:                               ## %.loopexit6
                                        ##   in Loop: Header=BB0_32 Depth=3
	movq	72(%rsp), %r13          ## 8-byte Reload
	decq	%r13
	movq	64(%rsp), %rcx          ## 8-byte Reload
	cmpq	$6, %rcx
	jne	LBB0_32
## BB#38:                               ##   in Loop: Header=BB0_30 Depth=2
	movq	40(%rsp), %rdi          ## 8-byte Reload
	leaq	112(%rsp), %rsi
	callq	_roots_to_ZX
	movq	%rax, %r14
	cmpq	$-9, 112(%rsp)
	jge	LBB0_41
## BB#39:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	_avma@GOTPCREL(%rip), %rbp
	movq	%rbp, %r15
	movq	24(%rsp), %rbx          ## 8-byte Reload
	movq	_bot@GOTPCREL(%rip), %r12
	jmp	LBB0_40
LBB0_17:
	movq	(%rsp), %rax            ## 8-byte Reload
	movq	%rax, (%r15)
	movq	8(%rcx), %rax
	movl	$16777215, %ecx         ## imm = 0xFFFFFF
	andq	(%rax), %rcx
	movl	$4, %esi
	cmpq	$5, %rcx
	jne	LBB0_19
## BB#18:
	movl	$1, %edx
	movl	$2, %ecx
	jmp	LBB0_14
LBB0_16:
	movq	(%rsp), %rax            ## 8-byte Reload
	movq	%rax, (%r15)
	movl	$8, %esi
	movq	$-1, %rdx
	movl	$3, %ecx
	jmp	LBB0_14
LBB0_19:
	movq	$-1, %rdx
	movl	$1, %ecx
LBB0_14:
	movq	8(%rsp), %rdi           ## 8-byte Reload
	callq	_galois_res
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_12:
	movq	%r13, %rdi
	callq	_ZX_disc
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	_Z_issquareall
	movq	(%rsp), %rcx            ## 8-byte Reload
	movq	%rcx, (%r15)
	testq	%rax, %rax
	je	LBB0_15
## BB#13:
	movl	$12, %esi
	movl	$1, %edx
	movl	$4, %ecx
	jmp	LBB0_14
LBB0_15:
	movl	$24, %esi
	movq	$-1, %rdx
	movl	$5, %ecx
	jmp	LBB0_14
	.cfi_endproc
	.align	2, 0x90
L0_0_set_7 = LBB0_7-LJTI0_0
L0_0_set_21 = LBB0_21-LJTI0_0
L0_0_set_24 = LBB0_24-LJTI0_0
L0_0_set_27 = LBB0_27-LJTI0_0
LJTI0_0:
	.long	L0_0_set_7
	.long	L0_0_set_21
	.long	L0_0_set_24
	.long	L0_0_set_27

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"galois"

L_.str1:                                ## @.str1
	.asciz	"galois of reducible polynomial"

L_.str2:                                ## @.str2
	.asciz	"galois (bug1)"


.subsections_via_symbols
