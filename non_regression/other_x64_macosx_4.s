	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_minim_alloc
	.align	4, 0x90
_minim_alloc:                           ## @minim_alloc
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
	subq	$40, %rsp
Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%r9, 32(%rsp)           ## 8-byte Spill
	movq	%r8, 24(%rsp)           ## 8-byte Spill
	movq	%rcx, 16(%rsp)          ## 8-byte Spill
	movq	%rdx, 8(%rsp)           ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	_avma@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	leaq	(,%rbx,8), %r15
	movq	%rax, %rbp
	subq	%r15, %rbp
	movq	_bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rbx, %rax
	jae	LBB0_2
## BB#1:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB0_2:                                 ## %new_chunk.exit.i
	movq	%rbx, %r12
	negq	%r12
	movq	%rbp, (%r13)
	movq	%rbx, %rax
	shrq	$56, %rax
	je	LBB0_4
## BB#3:
	leaq	L_.str1(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB0_4:                                 ## %cgetg.exit
	movabsq	$3170534137668829184, %rax ## imm = 0x2C00000000000000
	orq	%rbx, %rax
	movq	%rax, (%rbp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rbp, (%rax)
	movq	(%r13), %rax
	leaq	(%rax,%r12,8), %rbp
	movq	_bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rax
	shrq	$3, %rax
	cmpq	%rbx, %rax
	jae	LBB0_6
## BB#5:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB0_6:                                 ## %new_chunk.exit
	movq	%rbp, (%r13)
	movq	%rbp, (%r14)
	callq	_init_dalloc
	movq	%r15, %rdi
	callq	_dalloc
	movq	16(%rsp), %rcx          ## 8-byte Reload
	movq	%rax, (%rcx)
	movq	%r15, %rdi
	callq	_dalloc
	movq	24(%rsp), %rcx          ## 8-byte Reload
	movq	%rax, (%rcx)
	movq	%r15, %rdi
	callq	_dalloc
	movq	32(%rsp), %rcx          ## 8-byte Reload
	movq	%rax, (%rcx)
	movl	$1, %ebp
	cmpq	$2, %rbx
	jl	LBB0_8
	.align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_dalloc
	movq	(%r14), %rcx
	movq	%rax, (%rcx,%rbp,8)
	incq	%rbp
	cmpq	%rbp, %rbx
	jne	LBB0_7
LBB0_8:                                 ## %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_qfminim0
	.align	4, 0x90
_qfminim0:                              ## @qfminim0
	.cfi_startproc
## BB#0:
	pushq	%r15
Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r13
Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
Ltmp17:
	.cfi_def_cfa_offset 48
Ltmp18:
	.cfi_offset %rbx, -48
Ltmp19:
	.cfi_offset %r12, -40
Ltmp20:
	.cfi_offset %r13, -32
Ltmp21:
	.cfi_offset %r14, -24
Ltmp22:
	.cfi_offset %r15, -16
	movq	%r8, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpq	$2, %rcx
	je	LBB1_6
## BB#1:
	cmpq	$1, %rcx
	jne	LBB1_2
## BB#5:
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	$1, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	jmp	LBB1_4
LBB1_6:
	movq	(%r12), %rax
	shrq	$57, %rax
	cmpq	$19, %rax
	je	LBB1_8
## BB#7:
	leaq	L_.str(%rip), %rsi
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB1_8:
	movq	$-1, %rdx
	testq	%rbx, %rbx
	je	LBB1_16
## BB#9:
	movabsq	$-144115188075855872, %rax ## imm = 0xFE00000000000000
	andq	(%rbx), %rax
	movabsq	$144115188075855872, %rcx ## imm = 0x200000000000000
	cmpq	%rcx, %rax
	je	LBB1_11
## BB#10:
	leaq	L_.str(%rip), %rsi
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB1_11:
	movq	8(%rbx), %rax
	xorl	%edx, %edx
	movq	%rax, %r13
	sarq	$62, %r13
	je	LBB1_16
## BB#12:
	movq	16(%rbx), %rbx
	movabsq	$72057594037927932, %rcx ## imm = 0xFFFFFFFFFFFFFC
	andq	%rcx, %rax
	cmpq	$3, %rax
	ja	LBB1_14
## BB#13:
	testq	%rbx, %rbx
	jns	LBB1_15
LBB1_14:
	leaq	L_.str17(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB1_15:
	movq	%rbx, %rdx
	negq	%rdx
	testq	%r13, %r13
	cmovgq	%rbx, %rdx
LBB1_16:                                ## %itos.exit
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_fincke_pohst
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	LBB1_20
## BB#17:
	leaq	L_.str(%rip), %rsi
	xorl	%ebx, %ebx
	movl	$10, %edi
	jmp	LBB1_19
LBB1_2:
	testq	%rcx, %rcx
	jne	LBB1_18
## BB#3:
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
LBB1_4:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_minim0                 ## TAILCALL
LBB1_18:
	leaq	L_.str(%rip), %rsi
	xorl	%ebx, %ebx
	movl	$6, %edi
LBB1_19:
	xorl	%eax, %eax
	callq	_pari_err
LBB1_20:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_0:
	.quad	-4616189618054758400    ## double -1
LCPI2_1:
	.quad	4607182869159980145     ## double 1.0001
LCPI2_3:
	.quad	4547007122018943789     ## double 1.0E-4
LCPI2_4:
	.quad	4602678819172646912     ## double 0.5
LCPI2_5:
	.quad	4890909195324358656     ## double 9.2233720368547758E+18
LCPI2_6:
	.quad	0                       ## double 0
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_2:
	.quad	-1                      ## 0xffffffffffffffff
	.quad	-2                      ## 0xfffffffffffffffe
	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
_minim0:                                ## @minim0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              ## imm = 0x148
Ltmp29:
	.cfi_def_cfa_offset 384
Ltmp30:
	.cfi_offset %rbx, -56
Ltmp31:
	.cfi_offset %r12, -48
Ltmp32:
	.cfi_offset %r13, -40
Ltmp33:
	.cfi_offset %r14, -32
Ltmp34:
	.cfi_offset %r15, -24
Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, 216(%rsp)         ## 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movabsq	$-144115188075855872, %r13 ## imm = 0xFE00000000000000
	movabsq	$144115188075855872, %rbx ## imm = 0x200000000000000
	movabsq	$72057594037927935, %r12 ## imm = 0xFFFFFFFFFFFFFF
	movq	(%r15), %rax
	movq	%rax, 144(%rsp)         ## 8-byte Spill
	movq	%rax, %rcx
	andq	%r12, %rcx
	movq	%rcx, 168(%rsp)         ## 8-byte Spill
	movq	_avma@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 96(%rsp)          ## 8-byte Spill
	shrq	$57, %rax
	cmpq	$19, %rax
	jne	LBB2_8
## BB#1:
	cmpq	$1, 168(%rsp)           ## 8-byte Folded Reload
	je	LBB2_9
## BB#2:
	cmpq	$1, 168(%rsp)           ## 8-byte Folded Reload
	jbe	LBB2_9
## BB#3:
	movq	8(%r15), %rax
	movq	(%rax), %rax
	andq	%r12, %rax
	movq	168(%rsp), %rcx         ## 8-byte Reload
LBB2_5:                                 ## %.preheader.i
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_6 Depth 2
	movq	%rcx, %rdx
	leaq	-1(%rdx), %rcx
	movq	%rax, %rsi
	.align	4, 0x90
LBB2_6:                                 ##   Parent Loop BB2_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$2, %rsi
	jl	LBB2_4
## BB#7:                                ##   in Loop: Header=BB2_6 Depth=2
	movq	-8(%r15,%rdx,8), %rdi
	movq	-8(%rdi,%rsi,8), %rdi
	decq	%rsi
	movq	(%rdi), %rdi
	andq	%r13, %rdi
	cmpq	%rbx, %rdi
	je	LBB2_6
	jmp	LBB2_8
LBB2_4:                                 ## %.loopexit.i
                                        ##   in Loop: Header=BB2_5 Depth=1
	cmpq	$2, %rcx
	jge	LBB2_5
	jmp	LBB2_9
LBB2_8:                                 ## %RgM_is_ZM.exit.thread80
	leaq	L_.str2(%rip), %rsi
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_9:                                 ## %RgM_is_ZM.exit.thread
	testq	%rbp, %rbp
	je	LBB2_10
## BB#11:
	movq	%rbp, %rdi
	callq	_gfloor
	movq	%rax, 176(%rsp)         ## 8-byte Spill
	movq	(%rax), %rax
	andq	%r13, %rax
	cmpq	%rbx, %rax
	je	LBB2_13
## BB#12:
	leaq	L_.str3(%rip), %rsi
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
	jmp	LBB2_13
LBB2_10:
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 176(%rsp)         ## 8-byte Spill
LBB2_13:
	cmpq	$0, 216(%rsp)           ## 8-byte Folded Reload
	movl	$1, 156(%rsp)           ## 4-byte Folded Spill
	je	LBB2_16
## BB#14:
	movq	216(%rsp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	andq	%r13, %rax
	movl	$0, 156(%rsp)           ## 4-byte Folded Spill
	cmpq	%rbx, %rax
	je	LBB2_16
## BB#15:
	leaq	L_.str3(%rip), %rsi
	movl	$0, 156(%rsp)           ## 4-byte Folded Spill
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_16:
	movq	%r13, %rdx
	xorl	%r13d, %r13d
	cmpq	$4, %r14
	jbe	LBB2_17
## BB#46:
	movq	%r14, 192(%rsp)         ## 8-byte Spill
	leaq	L_.str3(%rip), %rsi
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         ## 8-byte Spill
	movl	$6, %edi
	xorl	%eax, %eax
	callq	_pari_err
	xorl	%r13d, %r13d
	jmp	LBB2_47
LBB2_17:
	leaq	LJTI2_0(%rip), %rax
	movslq	(%rax,%r14,4), %rcx
	movq	%r14, 192(%rsp)         ## 8-byte Spill
	addq	%rax, %rcx
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         ## 8-byte Spill
	jmpq	*%rcx
LBB2_28:
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, %rbx
	sarq	$62, %rbx
	je	LBB2_33
## BB#29:
	movq	176(%rsp), %rcx         ## 8-byte Reload
	movq	16(%rcx), %r14
	movabsq	$72057594037927935, %rcx ## imm = 0xFFFFFFFFFFFFFF
	leaq	-3(%rcx), %rcx
	andq	%rcx, %rax
	cmpq	$3, %rax
	ja	LBB2_31
## BB#30:
	testq	%r14, %r14
	jns	LBB2_32
LBB2_31:
	leaq	L_.str17(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_32:                                ## %itos.exit
	movq	%r14, %rcx
	negq	%rcx
	testq	%rbx, %rbx
	cmovgq	%r14, %rcx
	testq	%rcx, %rcx
	jle	LBB2_33
## BB#36:
	leaq	1(%rcx), %rbx
	movq	_avma@GOTPCREL(%rip), %rbp
	movq	(%rbp), %r14
	movq	%rcx, %rax
	movq	%rcx, 160(%rsp)         ## 8-byte Spill
	notq	%rax
	leaq	(%r14,%rax,8), %r13
	movq	_bot@GOTPCREL(%rip), %rax
	movq	%r14, %rcx
	subq	(%rax), %rcx
	shrq	$3, %rcx
	cmpq	%rbx, %rcx
	jae	LBB2_38
## BB#37:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_38:                                ## %new_chunk.exit.i.i
	movq	%r13, (%rbp)
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	jbe	LBB2_40
## BB#39:
	leaq	L_.str1(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_40:                                ## %const_vecsmall.exit
	movabsq	$3170534137668829184, %rax ## imm = 0x2C00000000000000
	orq	%rax, %rbx
	movq	%rbx, (%r13)
	movq	160(%rsp), %rax         ## 8-byte Reload
	leaq	(,%rax,8), %rsi
	subq	%rsi, %r14
	movq	%r14, %rdi
	callq	___bzero
	movq	192(%rsp), %rax         ## 8-byte Reload
	cmpq	$4, %rax
	jne	LBB2_41
## BB#42:
	movl	$1, %esi
	movq	176(%rsp), %rdi         ## 8-byte Reload
	callq	_shifti
	movq	%rax, %rcx
	movabsq	$72057594037927935, %r12 ## imm = 0xFFFFFFFFFFFFFF
	jmp	LBB2_43
LBB2_33:                                ## %itos.exit.thread
	movq	_avma@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-8(%rax), %r13
	subq	(%rcx), %rax
	cmpq	$7, %rax
	ja	LBB2_35
## BB#34:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_35:                                ## %cgetg.exit11
	movq	%r13, (%rbx)
	movabsq	$3170534137668829184, %rax ## imm = 0x2C00000000000000
	incq	%rax
	movq	%rax, (%r13)
	jmp	LBB2_351
LBB2_25:
	movq	_avma@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-32(%rax), %r13
	subq	(%rcx), %rax
	cmpq	$31, %rax
	ja	LBB2_27
## BB#26:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_27:                                ## %cgetg.exit9
	movq	%r13, (%rbp)
	movabsq	$2449958197289549825, %rax ## imm = 0x2200000000000001
	leaq	3(%rax), %rax
	jmp	LBB2_24
LBB2_18:
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	andq	%rdx, %rax
	movabsq	$144115188075855872, %rcx ## imm = 0x200000000000000
	cmpq	%rcx, %rax
	jne	LBB2_21
## BB#19:                               ## %isintzero.exit
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	movq	176(%rsp), %rcx         ## 8-byte Reload
	cmpq	%rax, 8(%rcx)
	jae	LBB2_21
## BB#20:
	leaq	L_.str4(%rip), %rsi
	movl	$5, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_21:                                ## %.critedge
	movq	_avma@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %r13
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB2_23
## BB#22:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_23:                                ## %cgetg.exit
	movq	%r13, (%rbp)
	movabsq	$2449958197289549825, %rax ## imm = 0x2200000000000001
	leaq	2(%rax), %rax
LBB2_24:                                ## %.critedge87
	movq	%rax, (%r13)
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         ## 8-byte Spill
LBB2_47:                                ## %.critedge87
	movabsq	$2738188573441261568, %r14 ## imm = 0x2600000000000000
	movq	168(%rsp), %rbp         ## 8-byte Reload
	cmpq	$1, %rbp
	jne	LBB2_59
## BB#48:
	movq	192(%rsp), %rcx         ## 8-byte Reload
	leaq	-3(%rcx), %rax
	cmpq	$2, %rax
	jb	LBB2_351
## BB#49:
	cmpq	$2, %rcx
	jne	LBB2_50
## BB#55:
	movq	_avma@GOTPCREL(%rip), %rax
	movq	96(%rsp), %rcx          ## 8-byte Reload
	movq	%rcx, (%rax)
	jmp	LBB2_324
LBB2_59:
	movq	%r13, 128(%rsp)         ## 8-byte Spill
	movq	_avma@GOTPCREL(%rip), %r13
	movq	(%r13), %r14
	leaq	272(%rsp), %rsi
	leaq	320(%rsp), %rdx
	leaq	288(%rsp), %rcx
	leaq	280(%rsp), %r8
	leaq	296(%rsp), %r9
	movq	%rbp, %rdi
	callq	_minim_alloc
	movq	(%r13), %rax
	movq	%rax, 208(%rsp)         ## 8-byte Spill
	movq	%r15, %rdi
	callq	_lllgramint
	movq	%rax, %rbx
	movq	(%rbx), %rax
	andq	%r12, %rax
	cmpq	%rbp, %rax
	je	LBB2_61
## BB#60:
	leaq	L_.str5(%rip), %rsi
	movl	$5, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_61:
	movq	%r14, 80(%rsp)          ## 8-byte Spill
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbx, 56(%rsp)          ## 8-byte Spill
	callq	_qf_apply_ZM
	movq	%rax, %rbx
	movq	%rbx, 240(%rsp)         ## 8-byte Spill
	movq	(%rbx), %rax
	movq	%rax, 200(%rsp)         ## 8-byte Spill
	movq	%rax, %rbp
	andq	%r12, %rbp
	movq	%rbp, 256(%rsp)         ## 8-byte Spill
	movq	(%r13), %rdx
	movq	%rdx, 248(%rsp)         ## 8-byte Spill
	leaq	(,%rbp,8), %rax
	movq	%rdx, %r14
	subq	%rax, %r14
	movq	_bot@GOTPCREL(%rip), %rcx
	movq	%rdx, %rax
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rbp, %rax
	jae	LBB2_63
## BB#62:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_63:                                ## %cgetg_copy.exit.i
	movabsq	$-72057594037927936, %rax ## imm = 0xFF00000000000000
	movq	%r14, (%r13)
	leaq	-1(%rax), %rcx
	movq	%rcx, 88(%rsp)          ## 8-byte Spill
	movq	(%rbx), %rax
	andq	%rcx, %rax
	movq	%rax, (%r14)
	movq	%r14, 232(%rsp)         ## 8-byte Spill
	cmpq	$2, %rbp
	jb	LBB2_71
## BB#64:
	movq	%rbp, %r13
	.align	4, 0x90
LBB2_65:                                ## %.lr.ph.i16
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_69 Depth 2
	movq	-8(%rbx,%r13,8), %r15
	movq	(%r15), %rbp
	andq	%r12, %rbp
	movq	_avma@GOTPCREL(%rip), %r12
	movq	(%r12), %rbx
	leaq	(,%rbp,8), %rax
	movq	%rbx, %r14
	subq	%rax, %r14
	movq	%rbx, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rbp, %rax
	jae	LBB2_67
## BB#66:                               ##   in Loop: Header=BB2_65 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_67:                                ## %cgetg.exit.i.i
                                        ##   in Loop: Header=BB2_65 Depth=1
	decq	%r13
	movq	%r14, (%r12)
	movq	%rbp, %rax
	movabsq	$2594073385365405696, %rcx ## imm = 0x2400000000000000
	orq	%rcx, %rax
	movq	%rax, (%r14)
	cmpq	$2, %rbp
	jb	LBB2_70
## BB#68:                               ## %.lr.ph.i.i.preheader
                                        ##   in Loop: Header=BB2_65 Depth=1
	addq	$-8, %rbx
	.align	4, 0x90
LBB2_69:                                ## %.lr.ph.i.i
                                        ##   Parent Loop BB2_65 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%r15,%rbp,8), %rdi
	decq	%rbp
	callq	_gtofp
	movq	%rax, (%rbx)
	addq	$-8, %rbx
	cmpq	$1, %rbp
	jg	LBB2_69
LBB2_70:                                ## %RgC_gtofp.exit.i
                                        ##   in Loop: Header=BB2_65 Depth=1
	movq	%r13, %rax
	movq	256(%rsp), %rbp         ## 8-byte Reload
	subq	%rbp, %rax
	movq	248(%rsp), %rcx         ## 8-byte Reload
	movq	%r14, (%rcx,%rax,8)
	cmpq	$1, %r13
	movabsq	$72057594037927935, %r12 ## imm = 0xFFFFFFFFFFFFFF
	movq	240(%rsp), %rbx         ## 8-byte Reload
	jg	LBB2_65
LBB2_71:                                ## %RgM_gtofp.exit
	movq	%rbp, 256(%rsp)         ## 8-byte Spill
	movq	232(%rsp), %rdi         ## 8-byte Reload
	callq	_qfgaussred_positive
	movq	%rax, %r13
	movq	%r13, 312(%rsp)
	testq	%r13, %r13
	jne	LBB2_85
## BB#72:
	movq	%rbx, %rdi
	callq	_qfgaussred_positive
	movq	%rax, %rbp
	movq	%rbp, 232(%rsp)         ## 8-byte Spill
	movq	%rbp, 312(%rsp)
	testq	%rbp, %rbp
	movabsq	$72057594037927935, %rbx ## imm = 0xFFFFFFFFFFFFFF
	jne	LBB2_74
## BB#73:
	leaq	L_.str6(%rip), %rsi
	movl	$5, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_74:
	movq	(%rbp), %rdx
	andq	%rbx, %rdx
	movq	%rdx, 240(%rsp)         ## 8-byte Spill
	movq	_avma@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 224(%rsp)         ## 8-byte Spill
	leaq	(,%rdx,8), %rax
	movq	%rcx, %r13
	subq	%rax, %r13
	movq	%rcx, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rdx, %rax
	jae	LBB2_76
## BB#75:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_76:                                ## %cgetg_copy.exit.i17
	movq	_avma@GOTPCREL(%rip), %rax
	movq	%r13, (%rax)
	movq	(%rbp), %rax
	andq	88(%rsp), %rax          ## 8-byte Folded Reload
	movq	%rax, (%r13)
	cmpq	$2, 240(%rsp)           ## 8-byte Folded Reload
	jb	LBB2_84
## BB#77:
	movq	240(%rsp), %r12         ## 8-byte Reload
	.align	4, 0x90
LBB2_78:                                ## %.lr.ph.i19
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_82 Depth 2
	movq	-8(%rbp,%r12,8), %rbp
	movq	(%rbp), %r14
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	andq	%rax, %r14
	movq	_avma@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	leaq	(,%r14,8), %rax
	movq	%r15, %rbx
	subq	%rax, %rbx
	movq	%r15, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%r14, %rax
	jae	LBB2_80
## BB#79:                               ##   in Loop: Header=BB2_78 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_80:                                ## %cgetg.exit.i.i20
                                        ##   in Loop: Header=BB2_78 Depth=1
	decq	%r12
	movq	_avma@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	movq	%r14, %rax
	movabsq	$2594073385365405696, %rcx ## imm = 0x2400000000000000
	orq	%rcx, %rax
	movq	%rax, (%rbx)
	cmpq	$2, %r14
	jb	LBB2_83
## BB#81:                               ## %.lr.ph.i.i23.preheader
                                        ##   in Loop: Header=BB2_78 Depth=1
	addq	$-8, %r15
	.align	4, 0x90
LBB2_82:                                ## %.lr.ph.i.i23
                                        ##   Parent Loop BB2_78 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp,%r14,8), %rdi
	decq	%r14
	callq	_gtofp
	movq	%rax, (%r15)
	addq	$-8, %r15
	cmpq	$1, %r14
	jg	LBB2_82
LBB2_83:                                ## %RgC_gtofp.exit.i25
                                        ##   in Loop: Header=BB2_78 Depth=1
	movq	%r12, %rax
	subq	240(%rsp), %rax         ## 8-byte Folded Reload
	movq	224(%rsp), %rcx         ## 8-byte Reload
	movq	%rbx, (%rcx,%rax,8)
	cmpq	$1, %r12
	movq	232(%rsp), %rbp         ## 8-byte Reload
	jg	LBB2_78
LBB2_84:                                ## %RgM_gtofp.exit26
	movq	%r13, 312(%rsp)
LBB2_85:                                ## %.preheader92
	movq	168(%rsp), %rax         ## 8-byte Reload
	leaq	-1(%rax), %rcx
	cmpq	$2, %rax
	jb	LBB2_91
## BB#86:                               ## %.lr.ph128
	movq	%rcx, %r14
	movq	296(%rsp), %rax
	movq	%rax, 240(%rsp)         ## 8-byte Spill
	movq	272(%rsp), %r12
	movl	$1, %ebp
	xorl	%r15d, %r15d
	jmp	LBB2_87
	.align	4, 0x90
LBB2_90:                                ## %._crit_edge143
                                        ##   in Loop: Header=BB2_87 Depth=1
	movq	%rcx, %r14
	incq	%r15
	incq	%rbp
	movq	312(%rsp), %r13
LBB2_87:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_88 Depth 2
	movq	(%r13,%rbp,8), %rax
	movq	(%rax,%rbp,8), %rdi
	callq	_rtodbl
	movq	240(%rsp), %rax         ## 8-byte Reload
	movsd	%xmm0, (%rax,%rbp,8)
	cmpq	$2, %rbp
	movl	$0, %ebx
	jl	LBB2_89
	.align	4, 0x90
LBB2_88:                                ## %.lr.ph125
                                        ##   Parent Loop BB2_87 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	312(%rsp), %rax
	movq	(%rax,%rbp,8), %rax
	movq	8(%rax,%rbx,8), %rdi
	callq	_rtodbl
	movq	8(%r12,%rbx,8), %rax
	movsd	%xmm0, (%rax,%rbp,8)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB2_88
LBB2_89:                                ## %._crit_edge126
                                        ##   in Loop: Header=BB2_87 Depth=1
	movq	%r14, %rcx
	cmpq	%rcx, %rbp
	jl	LBB2_90
LBB2_91:                                ## %._crit_edge129
	cmpq	$2, 192(%rsp)           ## 8-byte Folded Reload
	movq	_avma@GOTPCREL(%rip), %r13
	movq	%r13, %r12
	movabsq	$72057594037927935, %r14 ## imm = 0xFFFFFFFFFFFFFF
	je	LBB2_95
## BB#92:
	movq	%rcx, %rbx
	movq	176(%rsp), %rdx         ## 8-byte Reload
	movq	(%rdx), %rax
	movabsq	$-144115188075855872, %rcx ## imm = 0xFE00000000000000
	andq	%rcx, %rax
	movabsq	$288230376151711744, %rcx ## imm = 0x400000000000000
	cmpq	%rcx, %rax
	movq	%rdx, %rdi
	je	LBB2_101
## BB#93:
	movabsq	$144115188075855872, %rcx ## imm = 0x200000000000000
	cmpq	%rcx, %rax
	movq	%rbx, %rcx
	jne	LBB2_100
## BB#94:                               ## %isintzero.exit28
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	movq	176(%rsp), %rdx         ## 8-byte Reload
	cmpq	%rax, 8(%rdx)
	jae	LBB2_100
LBB2_95:
	movq	%rcx, %r15
	movl	$1, %eax
	subq	256(%rsp), %rax         ## 8-byte Folded Reload
	movq	248(%rsp), %rbx         ## 8-byte Reload
	movq	(%rbx,%rax,8), %rax
	movq	8(%rax), %rdi
	callq	_rtodbl
	movapd	%xmm0, %xmm1
	movq	168(%rsp), %r13         ## 8-byte Reload
	cmpq	$3, %r13
	jae	LBB2_97
## BB#96:
	movapd	%xmm1, %xmm0
	jmp	LBB2_99
LBB2_97:                                ## %.lr.ph120.preheader
	movq	200(%rsp), %rcx         ## 8-byte Reload
	andq	%r14, %rcx
	movl	$2, %eax
	subq	%rcx, %rax
	leaq	(%rbx,%rax,8), %rbx
	movl	$1, %ebp
	.align	4, 0x90
LBB2_98:                                ## %.lr.ph120
                                        ## =>This Inner Loop Header: Depth=1
	movsd	%xmm1, 256(%rsp)        ## 8-byte Spill
	movq	-8(%rbx,%rbp,8), %rax
	movq	8(%rax,%rbp,8), %rdi
	callq	_rtodbl
	minsd	256(%rsp), %xmm0        ## 8-byte Folded Reload
	incq	%rbp
	cmpq	%r15, %rbp
	movapd	%xmm0, %xmm1
	jl	LBB2_98
LBB2_99:                                ## %._crit_edge121
	movsd	%xmm0, 256(%rsp)        ## 8-byte Spill
	movq	%r15, %rbx
	callq	_dbltor
	movq	%rax, %rdi
	callq	_roundr
	movsd	256(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movq	%rax, 176(%rsp)         ## 8-byte Spill
	movsd	LCPI2_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	jmp	LBB2_102
LBB2_50:
	cmpq	$1, %rcx
	movq	_avma@GOTPCREL(%rip), %rbp
	jne	LBB2_56
## BB#51:
	movq	96(%rsp), %rcx          ## 8-byte Reload
	movq	%rcx, (%rbp)
	leaq	-8(%rcx), %r13
	movq	_bot@GOTPCREL(%rip), %rax
	subq	(%rax), %rcx
	cmpq	$7, %rcx
	ja	LBB2_53
## BB#52:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_53:                                ## %cgetg.exit14
	movq	%r13, (%rbp)
	jmp	LBB2_54
LBB2_100:                               ## %.critedge88.thread
	movq	%rcx, %rbx
	movq	(%r12), %rbp
	movq	176(%rsp), %rdi         ## 8-byte Reload
	callq	_gtofp
	movq	%rax, %rdi
	movq	%rbp, (%r12)
LBB2_101:                               ## %gtodouble.exit
	callq	_rtodbl
	movapd	%xmm0, %xmm1
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	movq	168(%rsp), %r13         ## 8-byte Reload
LBB2_102:
	movsd	LCPI2_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 248(%rsp)        ## 8-byte Spill
	ucomisd	%xmm1, %xmm0
	jne	LBB2_104
	jp	LBB2_104
## BB#103:
	leaq	L_.str3(%rip), %rsi
	movl	$10, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_104:
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         ## 8-byte Spill
	movq	192(%rsp), %rax         ## 8-byte Reload
	cmpq	$2, %rax
	jne	LBB2_105
## BB#118:
	movq	_bot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	176(%rsp), %rbp         ## 8-byte Reload
	cmpq	%rax, %rbp
	movq	%rbx, %r10
	jae	LBB2_120
## BB#119:
	movq	%rbp, 240(%rsp)         ## 8-byte Spill
	movq	208(%rsp), %rbx         ## 8-byte Reload
	jmp	LBB2_136
LBB2_105:
	testq	%rax, %rax
	movq	%rbx, %r10
	jne	LBB2_106
## BB#107:
	movl	$200, %edx
	cmpl	$0, 156(%rsp)           ## 4-byte Folded Reload
	jne	LBB2_115
## BB#108:
	movq	216(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rax
	xorl	%edx, %edx
	movq	%rax, %rbx
	sarq	$62, %rbx
	je	LBB2_115
## BB#109:
	movq	216(%rsp), %rcx         ## 8-byte Reload
	movq	16(%rcx), %r15
	leaq	-3(%r14), %rcx
	andq	%rcx, %rax
	cmpq	$3, %rax
	ja	LBB2_111
## BB#110:
	testq	%r15, %r15
	jns	LBB2_112
LBB2_111:
	leaq	L_.str17(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	movq	%r10, %rbp
	callq	_pari_err
	movq	%rbp, %r10
LBB2_112:                               ## %itos.exit33
	movq	%r15, %rax
	negq	%rax
	testq	%rbx, %rbx
	cmovgq	%r15, %rax
	testq	%rax, %rax
	movq	%rax, %rbx
	jns	LBB2_114
## BB#113:
	leaq	L_.str7(%rip), %rsi
	movl	$5, %edi
	xorl	%eax, %eax
	movq	%r10, %rbp
	callq	_pari_err
	movq	%rbp, %r10
LBB2_114:                               ## %itos.exit33.thread
	movq	%rbx, %rdx
LBB2_115:                               ## %itos.exit33.thread
	movq	%rdx, 160(%rsp)         ## 8-byte Spill
	leaq	1(%rdx), %rax
	movq	(%r12), %rcx
	notq	%rdx
	leaq	(%rcx,%rdx,8), %rbx
	movq	_bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rcx
	shrq	$3, %rcx
	cmpq	%rax, %rcx
	jae	LBB2_117
## BB#116:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r10, %r14
	callq	_pari_err
	movq	%r14, %r10
LBB2_117:                               ## %new_chunk.exit
	movq	%rbx, (%r12)
	movq	%rbx, 304(%rsp)
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         ## 8-byte Spill
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	jmp	LBB2_147
LBB2_120:                               ## %isonstack.exit.i
	movq	208(%rsp), %rbx         ## 8-byte Reload
	cmpq	%rbp, %rbx
	jbe	LBB2_121
## BB#122:                              ## %isonstack.exit.i
	movq	_top@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rbp
	jae	LBB2_123
## BB#124:
	movq	8(%rbp), %r11
	movq	%r11, %rax
	andq	%r14, %rax
	leaq	(,%rax,8), %rdx
	movq	%rbx, %r13
	subq	%rdx, %r13
	cmpq	$2, %rax
	jb	LBB2_135
## BB#125:                              ## %.lr.ph.i.i37.preheader
	movq	%r11, %rsi
	movabsq	$72057594037927935, %rdx ## imm = 0xFFFFFFFFFFFFFF
	andq	%rdx, %rsi
	movq	%rsi, %rcx
	negq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %r14
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	addq	%rsi, %rdx
	cmpq	$-1, %rdx
	movq	%rax, %rdi
	je	LBB2_133
## BB#126:                              ## %overflow.checked
	movq	%rbp, %r15
	incq	%rdx
	cmpq	$-3, %rcx
	cmovgq	%rcx, %r14
	xorl	%r9d, %r9d
	movq	%rdx, %r8
	andq	$-4, %r8
	movq	%rax, %rdi
	je	LBB2_132
## BB#127:                              ## %vector.memcheck
	movq	%r14, %rdi
	notq	%rdi
	movq	%r10, %rbp
	leaq	(%r15,%rdi,8), %r10
	leaq	-8(%rbx), %rdi
	xorl	%r9d, %r9d
	cmpq	%r10, %rdi
	movq	%rbp, %r10
	ja	LBB2_129
## BB#128:                              ## %vector.memcheck
	leaq	-8(%r15,%rsi,8), %rdi
	addq	%rsi, %r14
	notq	%r14
	leaq	(%rbx,%r14,8), %rbp
	cmpq	%rbp, %rdi
	movq	%rax, %rdi
	jbe	LBB2_132
LBB2_129:                               ## %vector.body.preheader
	movq	%rax, %rdi
	subq	%r8, %rdi
	cmpq	$-3, %rcx
	movq	$-2, %rbp
	cmovgq	%rcx, %rbp
	leaq	1(%rbp,%rsi), %rbp
	andq	$-4, %rbp
	movdqa	LCPI2_2(%rip), %xmm0    ## xmm0 = [18446744073709551615,18446744073709551614]
	movq	%rbx, %rcx
LBB2_130:                               ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       ## xmm1 = xmm1[0,1,0,1]
	paddq	%xmm0, %xmm1
	movd	%xmm1, %rbx
	movupd	-8(%r15,%rbx,8), %xmm1
	movdqu	-24(%r15,%rbx,8), %xmm2
	subq	%rax, %rbx
	movupd	%xmm1, -8(%rcx,%rbx,8)
	movdqu	%xmm2, -24(%rcx,%rbx,8)
	addq	$-4, %rsi
	addq	$-4, %rbp
	jne	LBB2_130
## BB#131:
	movq	%rcx, %rbx
	movq	%r8, %r9
LBB2_132:                               ## %middle.block
	cmpq	%r9, %rdx
	movq	%r15, %rbp
	je	LBB2_135
LBB2_133:                               ## %.lr.ph.i.i37.preheader466
	notq	%r11
	movabsq	$2233785415175766016, %rdx ## imm = 0x1F00000000000000
	orq	%r11, %rdx
	leaq	(%rbx,%rdx,8), %rcx
	.align	4, 0x90
LBB2_134:                               ## %.lr.ph.i.i37
                                        ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	leaq	-1(%rdi), %rdi
	cmpq	$1, %rdi
	jg	LBB2_134
LBB2_135:                               ## %icopy_avma.exit.i
	movabsq	$144115188075855872, %rcx ## imm = 0x200000000000000
	orq	%rcx, %rax
	movq	%rax, (%r13)
	movq	_bot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r13, %rbx
	movq	%r13, 240(%rsp)         ## 8-byte Spill
	jmp	LBB2_136
LBB2_106:
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	jmp	LBB2_147
LBB2_56:
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%r13)
	movq	%rax, 8(%r13)
	movq	(%rbp), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-8(%rax), %rbx
	subq	(%rcx), %rax
	cmpq	$7, %rax
	ja	LBB2_58
## BB#57:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_58:                                ## %cgetg.exit15
	movq	%rbx, (%rbp)
	incq	%r14
	movq	%r14, (%rbx)
	movq	%rbx, 24(%r13)
	jmp	LBB2_351
LBB2_41:
	movabsq	$72057594037927935, %r12 ## imm = 0xFFFFFFFFFFFFFF
	movq	176(%rsp), %rcx         ## 8-byte Reload
LBB2_43:
	movq	(%rcx), %rax
	movabsq	$-144115188075855872, %rdx ## imm = 0xFE00000000000000
	andq	%rdx, %rax
	movabsq	$144115188075855872, %rdx ## imm = 0x200000000000000
	cmpq	%rdx, %rax
	jne	LBB2_44
## BB#45:                               ## %isintzero.exit13
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	cmpq	%rax, 8(%rcx)
	movq	%rcx, 176(%rsp)         ## 8-byte Spill
	jae	LBB2_47
	jmp	LBB2_351
LBB2_44:
	movq	%rcx, 176(%rsp)         ## 8-byte Spill
	jmp	LBB2_47
LBB2_121:
	movq	%rbp, 240(%rsp)         ## 8-byte Spill
	jmp	LBB2_136
LBB2_123:
	movq	%rbp, 240(%rsp)         ## 8-byte Spill
LBB2_136:                               ## %gerepileuptoint.exit
	movq	%r10, 120(%rsp)         ## 8-byte Spill
	movq	%rbx, (%r12)
	movq	%r12, %r13
	movq	%r10, %r14
	imulq	168(%rsp), %r14         ## 8-byte Folded Reload
	sarq	%r14
	leaq	1(%r14), %rbp
	movq	%r14, %r12
	notq	%r12
	leaq	(%rbx,%r12,8), %r15
	movq	%rbx, %rcx
	subq	%rax, %rcx
	shrq	$3, %rcx
	cmpq	%rbp, %rcx
	jae	LBB2_138
## BB#137:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_138:                               ## %new_chunk.exit.i.i39
	movq	%r15, (%r13)
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	cmpq	%rax, %rbp
	jbe	LBB2_140
## BB#139:
	leaq	L_.str1(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_140:                               ## %cgetg.exit.i40
	movabsq	$3170534137668829184, %rax ## imm = 0x2C00000000000000
	orq	%rbp, %rax
	movq	%rax, 256(%rsp)         ## 8-byte Spill
	movq	%rax, (%r15)
	testq	%r14, %r14
	jle	LBB2_142
## BB#141:                              ## %.lr.ph.i43
	leaq	(,%r14,8), %rsi
	subq	%rsi, %rbx
	movq	%rbx, %rdi
	callq	___bzero
LBB2_142:                               ## %const_vecsmall.exit44
	movq	%r14, 160(%rsp)         ## 8-byte Spill
	movq	%r15, 304(%rsp)
	movq	(%r13), %rax
	leaq	(%rax,%r12,8), %rcx
	movq	%rcx, 112(%rsp)         ## 8-byte Spill
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rbp, %rax
	jae	LBB2_144
## BB#143:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_144:                               ## %new_chunk.exit.i
	movq	112(%rsp), %rax         ## 8-byte Reload
	movq	%r13, %r12
	movq	%rax, (%r12)
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	cmpq	%rax, %rbp
	jbe	LBB2_146
## BB#145:
	leaq	L_.str1(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_146:                               ## %cgetg.exit45
	movq	112(%rsp), %rax         ## 8-byte Reload
	movq	256(%rsp), %rcx         ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	240(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 176(%rsp)         ## 8-byte Spill
	movq	120(%rsp), %r10         ## 8-byte Reload
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movq	168(%rsp), %r13         ## 8-byte Reload
LBB2_147:
	movq	(%r12), %rcx
	movq	%rcx, 136(%rsp)         ## 8-byte Spill
	movq	_bot@GOTPCREL(%rip), %rax
	movq	(%rax), %rbp
	subq	%rbp, %rcx
	shrq	%rcx
	movq	280(%rsp), %r14
	movq	$0, -8(%r14,%r13,8)
	movq	288(%rsp), %r9
	movq	$0, -8(%r9,%r13,8)
	movq	296(%rsp), %r15
	movapd	%xmm4, %xmm0
	divsd	-8(%r15,%r13,8), %xmm0
	sqrtsd	%xmm0, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	320(%rsp), %rbx
	movq	%rax, -8(%rbx,%r13,8)
	movq	%r13, 168(%rsp)         ## 8-byte Spill
	xorl	%eax, %eax
	cmpq	$2, 192(%rsp)           ## 8-byte Folded Reload
	jne	LBB2_149
## BB#148:
	movq	160(%rsp), %rdi         ## 8-byte Reload
	movq	%r10, %r12
	movq	%rcx, %r13
	movq	%r9, 256(%rsp)          ## 8-byte Spill
	callq	_matid
	movq	256(%rsp), %r9          ## 8-byte Reload
	movq	%r13, %rcx
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movq	%r12, %r10
LBB2_149:                               ## %.preheader90
	movq	%rax, 104(%rsp)         ## 8-byte Spill
	addq	%rbp, %rcx
	movq	%rcx, 72(%rsp)          ## 8-byte Spill
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	movq	144(%rsp), %rcx         ## 8-byte Reload
	andq	%rax, %rcx
	decq	%rcx
	movq	%rcx, 144(%rsp)         ## 8-byte Spill
	movq	176(%rsp), %rbp         ## 8-byte Reload
	leaq	8(%rbp), %rax
	movq	%rax, 64(%rsp)          ## 8-byte Spill
	leaq	-16(%rbp), %rax
	movq	%rax, 48(%rsp)          ## 8-byte Spill
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)         ## 8-byte Spill
	movq	%r10, %rax
	movq	%rax, 256(%rsp)         ## 8-byte Spill
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	jmp	LBB2_150
	.align	4, 0x90
LBB2_313:                               ## %gerepilecopy.exit
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	320(%rsp), %rbx
	decq	8(%rbx)
	movq	280(%rsp), %r14
	movq	288(%rsp), %r9
	movq	296(%rsp), %r15
	movq	%rdi, %rax
	movq	%rax, 184(%rsp)         ## 8-byte Spill
LBB2_150:                               ## %.outer
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_151 Depth 2
                                        ##       Child Loop BB2_155 Depth 3
                                        ##       Child Loop BB2_159 Depth 3
                                        ##     Child Loop BB2_239 Depth 2
                                        ##     Child Loop BB2_242 Depth 2
                                        ##     Child Loop BB2_280 Depth 2
                                        ##     Child Loop BB2_285 Depth 2
                                        ##       Child Loop BB2_287 Depth 3
                                        ##     Child Loop BB2_254 Depth 2
                                        ##     Child Loop BB2_267 Depth 2
                                        ##     Child Loop BB2_272 Depth 2
	movq	%rbx, 240(%rsp)         ## 8-byte Spill
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	movq	272(%rsp), %r13
	leaq	8(%r14), %rax
	movq	%rax, 232(%rsp)         ## 8-byte Spill
	leaq	8(%r9), %rax
	movq	%rax, 224(%rsp)         ## 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, 216(%rsp)         ## 8-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, 208(%rsp)         ## 8-byte Spill
	.align	4, 0x90
LBB2_151:                               ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_155 Depth 3
                                        ##       Child Loop BB2_159 Depth 3
	cmpq	$1, 256(%rsp)           ## 8-byte Folded Reload
	jle	LBB2_152
## BB#153:                              ##   in Loop: Header=BB2_151 Depth=2
	movq	256(%rsp), %r12         ## 8-byte Reload
	movq	$0, -8(%r14,%r12,8)
	cmpq	%r10, %r12
	jg	LBB2_156
## BB#154:                              ## %.lr.ph102
                                        ##   in Loop: Header=BB2_151 Depth=2
	leaq	-1(%r12), %rax
	xorpd	%xmm0, %xmm0
	.align	4, 0x90
LBB2_155:                               ##   Parent Loop BB2_150 Depth=1
                                        ##     Parent Loop BB2_151 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	-8(%r13,%r12,8), %rcx
	xorps	%xmm1, %xmm1
	cvtsi2sdq	8(%rbx,%rax,8), %xmm1
	mulsd	8(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%r14,%r12,8)
	incq	%rax
	cmpq	%r10, %rax
	jl	LBB2_155
LBB2_156:                               ## %._crit_edge103
                                        ##   in Loop: Header=BB2_151 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdq	(%rbx,%r12,8), %xmm0
	addsd	(%r14,%r12,8), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	(%r15,%r12,8), %xmm0
	addsd	(%r9,%r12,8), %xmm0
	movsd	%xmm0, -8(%r9,%r12,8)
	movapd	%xmm4, %xmm1
	subsd	%xmm0, %xmm1
	divsd	-8(%r15,%r12,8), %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	subsd	-8(%r14,%r12,8), %xmm0
	movq	%r10, %rbp
	movq	%r9, %rbx
	callq	_floor
	movq	%rbx, %r9
	movq	240(%rsp), %rbx         ## 8-byte Reload
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movq	%rbp, %r10
	cvttsd2si	%xmm0, %rax
	movq	%rax, -8(%rbx,%r12,8)
	leaq	-1(%r12), %r12
	movq	%r12, 256(%rsp)         ## 8-byte Spill
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	jmp	LBB2_157
	.align	4, 0x90
LBB2_152:                               ## %..preheader89_crit_edge
                                        ##   in Loop: Header=BB2_151 Depth=2
	movq	256(%rsp), %rax         ## 8-byte Reload
	movq	(%rbx,%rax,8), %rax
LBB2_157:                               ## %.preheader89.preheader
                                        ##   in Loop: Header=BB2_151 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movq	256(%rsp), %rax         ## 8-byte Reload
	addsd	(%r14,%rax,8), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	(%r15,%rax,8), %xmm0
	addsd	(%r9,%rax,8), %xmm0
	ucomisd	%xmm0, %xmm4
	jae	LBB2_161
## BB#158:                              ## %.preheader89.preheader462
                                        ##   in Loop: Header=BB2_151 Depth=2
	movq	256(%rsp), %rsi         ## 8-byte Reload
	movq	232(%rsp), %rax         ## 8-byte Reload
	leaq	(%rax,%rsi,8), %rax
	movq	224(%rsp), %rcx         ## 8-byte Reload
	leaq	(%rcx,%rsi,8), %rcx
	movq	216(%rsp), %rdx         ## 8-byte Reload
	leaq	(%rdx,%rsi,8), %rdx
	movq	208(%rsp), %rdi         ## 8-byte Reload
	leaq	(%rdi,%rsi,8), %rsi
	xorl	%ebp, %ebp
	.align	4, 0x90
LBB2_159:                               ## %.preheader89
                                        ##   Parent Loop BB2_150 Depth=1
                                        ##     Parent Loop BB2_151 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rdi
	movq	(%rsi,%rdi,8), %rbp
	decq	%rbp
	movq	%rbp, (%rsi,%rdi,8)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rbp, %xmm0
	addsd	(%rax,%rdi,8), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	(%rdx,%rdi,8), %xmm0
	addsd	(%rcx,%rdi,8), %xmm0
	leaq	1(%rdi), %rbp
	ucomisd	%xmm0, %xmm4
	jb	LBB2_159
## BB#160:                              ##   in Loop: Header=BB2_151 Depth=2
	movq	256(%rsp), %rax         ## 8-byte Reload
	leaq	1(%rax,%rdi), %rax
	movq	%rax, 256(%rsp)         ## 8-byte Spill
LBB2_161:                               ## %.preheader89._crit_edge
                                        ##   in Loop: Header=BB2_151 Depth=2
	cmpq	$1, 256(%rsp)           ## 8-byte Folded Reload
	jg	LBB2_151
## BB#162:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	8(%rbx), %rax
	testq	%rax, %rax
	movsd	8(%r9), %xmm5           ## xmm5 = mem[0],zero
	jne	LBB2_164
## BB#163:                              ##   in Loop: Header=BB2_150 Depth=1
	movsd	LCPI2_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	ucomisd	%xmm5, %xmm0
	jae	LBB2_314
LBB2_164:                               ## %._crit_edge149
                                        ##   in Loop: Header=BB2_150 Depth=1
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	addsd	8(%r14), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	8(%r15), %xmm0
	addsd	%xmm0, %xmm5
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	ucomisd	LCPI2_6(%rip), %xmm0
	movq	_avma@GOTPCREL(%rip), %r15
	jae	LBB2_165
## BB#225:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%r10, %r13
	movq	(%r15), %r14
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 232(%rsp)        ## 8-byte Spill
	callq	_dbltor
	movq	%rax, %rdi
	callq	_roundr
	movq	%rax, %rbp
	movq	%rbp, %rdi
	movq	176(%rsp), %r12         ## 8-byte Reload
	movq	%r12, %rsi
	callq	_cmpii
	testl	%eax, %eax
	js	LBB2_227
## BB#226:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%r14, (%r15)
	movq	192(%rsp), %rax         ## 8-byte Reload
	movq	%r13, %r10
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movq	184(%rsp), %r13         ## 8-byte Reload
	movsd	232(%rsp), %xmm5        ## 8-byte Reload
                                        ## xmm5 = mem[0],zero
	jmp	LBB2_244
	.align	4, 0x90
LBB2_165:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	192(%rsp), %rax         ## 8-byte Reload
	cmpq	$1, %rax
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	je	LBB2_166
## BB#222:                              ##   in Loop: Header=BB2_150 Depth=1
	ucomisd	%xmm0, %xmm5
	jbe	LBB2_223
## BB#224:                              ##   in Loop: Header=BB2_150 Depth=1
	movapd	%xmm5, %xmm0
	movq	184(%rsp), %r13         ## 8-byte Reload
	jmp	LBB2_244
	.align	4, 0x90
LBB2_223:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	184(%rsp), %r13         ## 8-byte Reload
	jmp	LBB2_244
LBB2_227:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	(%rbp), %rax
	movabsq	$-144115188075855872, %rcx ## imm = 0xFE00000000000000
	andq	%rcx, %rax
	movabsq	$288230376151711744, %rcx ## imm = 0x400000000000000
	cmpq	%rcx, %rax
	movq	%rbp, %rdi
	je	LBB2_229
## BB#228:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	(%r15), %r14
	movq	%rbp, %rdi
	callq	_gtofp
	movq	%rax, %rdi
	movq	%r14, (%r15)
LBB2_229:                               ## %gtodouble.exit64
                                        ##   in Loop: Header=BB2_150 Depth=1
	callq	_rtodbl
	movapd	%xmm0, %xmm4
	movq	8(%rbp), %r14
	movq	%r14, %r15
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	movq	%rax, %rcx
	andq	%rcx, %r15
	movq	(%r12), %rax
	andq	%rcx, %rax
	cmpq	%r15, %rax
	jae	LBB2_231
## BB#230:                              ##   in Loop: Header=BB2_150 Depth=1
	movl	$15, %edi
	xorl	%eax, %eax
	leaq	L_.str15(%rip), %rsi
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	callq	_pari_err
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
LBB2_231:                               ## %.preheader.i65
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%r15, %rax
	decq	%rax
	movq	%r13, %r10
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	232(%rsp), %xmm5        ## 8-byte Reload
                                        ## xmm5 = mem[0],zero
	je	LBB2_243
## BB#232:                              ## %.lr.ph.i66.preheader
                                        ##   in Loop: Header=BB2_150 Depth=1
	cmpq	$1, %r15
	je	LBB2_242
## BB#233:                              ## %overflow.checked239
                                        ##   in Loop: Header=BB2_150 Depth=1
	leaq	-1(%r15), %r8
	leal	3(%r14), %ecx
	andq	$3, %rcx
	movq	%r8, %rdx
	subq	%rcx, %rdx
	jne	LBB2_235
## BB#234:                              ##   in Loop: Header=BB2_150 Depth=1
	xorl	%edx, %edx
	jmp	LBB2_241
LBB2_235:                               ## %vector.memcheck254
                                        ##   in Loop: Header=BB2_150 Depth=1
	leaq	8(%rbp), %rcx
	leaq	-8(%r12,%r15,8), %rsi
	cmpq	%rcx, %rsi
	ja	LBB2_238
## BB#236:                              ## %vector.memcheck254
                                        ##   in Loop: Header=BB2_150 Depth=1
	leaq	-8(%rbp,%r15,8), %rcx
	cmpq	64(%rsp), %rcx          ## 8-byte Folded Reload
	ja	LBB2_238
## BB#237:                              ##   in Loop: Header=BB2_150 Depth=1
	xorl	%edx, %edx
	jmp	LBB2_241
LBB2_238:                               ## %vector.body230.preheader
                                        ##   in Loop: Header=BB2_150 Depth=1
	movapd	%xmm0, %xmm2
	subq	%rdx, %rax
	movq	48(%rsp), %rcx          ## 8-byte Reload
	leaq	(%rcx,%r15,8), %rsi
	leaq	-16(%rbp,%r15,8), %rdi
	addl	$3, %r14d
	andq	$3, %r14
	negq	%r14
	leaq	-1(%r15,%r14), %rcx
	.align	4, 0x90
LBB2_239:                               ## %vector.body230
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movupd	-16(%rdi), %xmm0
	movupd	(%rdi), %xmm1
	movupd	%xmm1, (%rsi)
	movupd	%xmm0, -16(%rsi)
	addq	$-32, %rsi
	addq	$-32, %rdi
	addq	$-4, %rcx
	jne	LBB2_239
## BB#240:                              ##   in Loop: Header=BB2_150 Depth=1
	movapd	%xmm2, %xmm0
LBB2_241:                               ## %middle.block231
                                        ##   in Loop: Header=BB2_150 Depth=1
	cmpq	%rdx, %r8
	je	LBB2_243
	.align	4, 0x90
LBB2_242:                               ## %.lr.ph.i66
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%rax,8), %rcx
	movq	%rcx, (%r12,%rax,8)
	decq	%rax
	jne	LBB2_242
LBB2_243:                               ## %affii.exit
                                        ##   in Loop: Header=BB2_150 Depth=1
	mulsd	LCPI2_1(%rip), %xmm4
	movq	136(%rsp), %rax         ## 8-byte Reload
	movq	_avma@GOTPCREL(%rip), %r15
	movq	%rax, (%r15)
	xorl	%r13d, %r13d
	movq	192(%rsp), %rax         ## 8-byte Reload
	.align	4, 0x90
LBB2_244:                               ##   in Loop: Header=BB2_150 Depth=1
	leaq	1(%r13), %rdi
	cmpq	$4, %rax
	jbe	LBB2_246
## BB#245:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%rax, 192(%rsp)         ## 8-byte Spill
	jmp	LBB2_313
	.align	4, 0x90
LBB2_246:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	%rax, 192(%rsp)         ## 8-byte Spill
	leaq	LJTI2_1(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB2_247:                               ##   in Loop: Header=BB2_150 Depth=1
	cmpl	$0, 156(%rsp)           ## 4-byte Folded Reload
	je	LBB2_248
## BB#249:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	160(%rsp), %rbp         ## 8-byte Reload
	cmpq	%rbp, %r13
	jl	LBB2_256
## BB#250:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%r13, 184(%rsp)         ## 8-byte Spill
	leaq	(%rbp,%rbp), %r14
	leaq	1(%rbp,%rbp), %rax
	movq	(%r15), %r12
	leaq	8(,%r14,8), %rcx
	movq	%r15, %r13
	movq	%r12, %r15
	subq	%rcx, %r15
	movq	%r12, %rcx
	movq	_bot@GOTPCREL(%rip), %rdx
	subq	(%rdx), %rcx
	shrq	$3, %rcx
	cmpq	%rax, %rcx
	jae	LBB2_252
## BB#251:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, 240(%rsp)         ## 8-byte Spill
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r10, 120(%rsp)         ## 8-byte Spill
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	callq	_pari_err
	movq	240(%rsp), %rdi         ## 8-byte Reload
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movq	120(%rsp), %r10         ## 8-byte Reload
LBB2_252:                               ## %new_chunk.exit67
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%r15, (%r13)
	testq	%rbp, %rbp
	jle	LBB2_255
## BB#253:                              ## %.lr.ph115.preheader
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%rbp, %rax
	shlq	$4, %rax
	subq	%rax, %r12
	xorl	%eax, %eax
	.align	4, 0x90
LBB2_254:                               ## %.lr.ph115
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	304(%rsp), %rcx
	movq	8(%rcx,%rax,8), %rcx
	movq	%rcx, (%r12,%rax,8)
	incq	%rax
	cmpq	%rax, %rbp
	jne	LBB2_254
LBB2_255:                               ## %._crit_edge116
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%r15, 304(%rsp)
	movq	%r14, %rbp
	movq	%r13, %r15
	movq	184(%rsp), %r13         ## 8-byte Reload
	jmp	LBB2_256
LBB2_278:                               ##   in Loop: Header=BB2_150 Depth=1
	testq	%r13, %r13
	movq	144(%rsp), %r15         ## 8-byte Reload
	movq	160(%rsp), %rbp         ## 8-byte Reload
	jne	LBB2_282
## BB#279:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, %r12
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	movq	%r10, %r14
	movq	%rbp, %rdi
	callq	_matid
	movq	%rax, 104(%rsp)         ## 8-byte Spill
	testq	%rbp, %rbp
	movl	$0, %eax
	jle	LBB2_281
	.align	4, 0x90
LBB2_280:                               ## %.lr.ph106
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	304(%rsp), %rcx
	movq	$0, 8(%rcx,%rax,8)
	incq	%rax
	cmpq	%rax, %rbp
	jne	LBB2_280
LBB2_281:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	%r14, %r10
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movq	%r12, %rdi
LBB2_282:                               ## %.loopexit
                                        ##   in Loop: Header=BB2_150 Depth=1
	cmpq	%rbp, %r13
	jge	LBB2_283
## BB#284:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, 240(%rsp)         ## 8-byte Spill
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	cmpq	$2, 168(%rsp)           ## 8-byte Folded Reload
	movq	_avma@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movl	$0, %r9d
	movl	$0, %r11d
	movl	$1, %edx
	movl	$1, %esi
	movq	112(%rsp), %rdi         ## 8-byte Reload
	jb	LBB2_290
	.align	4, 0x90
LBB2_285:                               ## %.preheader
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_287 Depth 3
	cmpq	%r10, %rdx
	jg	LBB2_289
## BB#286:                              ## %.lr.ph109
                                        ##   in Loop: Header=BB2_285 Depth=2
	cmpq	%r15, %rdx
	movq	%r15, %r8
	cmovgeq	%rdx, %r8
	addq	%rsi, %r8
	leaq	(%rdi,%rsi,8), %rsi
	movq	%r9, %rax
	.align	4, 0x90
LBB2_287:                               ##   Parent Loop BB2_150 Depth=1
                                        ##     Parent Loop BB2_285 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	320(%rsp), %rcx
	movq	8(%rcx,%rax,8), %rbp
	imulq	(%rcx,%rdx,8), %rbp
	movq	%rbp, (%rsi)
	addq	$8, %rsi
	incq	%rax
	cmpq	%r10, %rax
	jl	LBB2_287
## BB#288:                              ## %._crit_edge110
                                        ##   in Loop: Header=BB2_285 Depth=2
	addq	%r11, %r8
	movq	%r8, %rsi
LBB2_289:                               ##   in Loop: Header=BB2_285 Depth=2
	decq	%r11
	incq	%r9
	cmpq	%r10, %rdx
	leaq	1(%rdx), %rdx
	jl	LBB2_285
LBB2_290:                               ## %._crit_edge113
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%r10, 120(%rsp)         ## 8-byte Spill
	movq	304(%rsp), %rdx
	xorl	%eax, %eax
	movq	104(%rsp), %rsi         ## 8-byte Reload
	callq	_addcolumntomatrix
	movq	_DEBUGLEVEL@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testl	%eax, %eax
	je	LBB2_291
## BB#294:                              ##   in Loop: Header=BB2_150 Depth=1
	cmpq	$2, %rcx
	movq	_avma@GOTPCREL(%rip), %r12
	jb	LBB2_296
## BB#295:                              ##   in Loop: Header=BB2_150 Depth=1
	xorl	%eax, %eax
	leaq	L_.str9(%rip), %rdi
	callq	_err_printf
	callq	_err_flush
LBB2_296:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	72(%rsp), %rax          ## 8-byte Reload
	cmpq	%rax, (%r12)
	jae	LBB2_312
## BB#297:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	_DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq	$2, (%rax)
	jb	LBB2_299
## BB#298:                              ##   in Loop: Header=BB2_150 Depth=1
	movl	$3, %edi
	xorl	%eax, %eax
	leaq	L_.str10(%rip), %rsi
	movq	240(%rsp), %rdx         ## 8-byte Reload
	callq	_pari_warn
LBB2_299:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	104(%rsp), %rdi         ## 8-byte Reload
	callq	_copy_bin
	movq	%rax, %rbx
	movq	136(%rsp), %rax         ## 8-byte Reload
	movq	%rax, (%r12)
	movq	%r12, %r13
	movq	8(%rbx), %r15
	testq	%r15, %r15
	je	LBB2_300
## BB#304:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	(%rbx), %r14
	movq	%r15, %rbp
	subq	16(%rbx), %rbp
	sarq	$3, %rbp
	leaq	(,%r14,8), %rdx
	movq	%rax, %r12
	subq	%rdx, %r12
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%r14, %rax
	jae	LBB2_306
## BB#305:                              ##   in Loop: Header=BB2_150 Depth=1
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, 232(%rsp)         ## 8-byte Spill
	callq	_pari_err
	movq	232(%rsp), %rdx         ## 8-byte Reload
LBB2_306:                               ## %new_chunk.exit.i.i73
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%r12, (%r13)
	movq	%rbx, %rsi
	addq	$32, %rsi
	movq	%r12, %rdi
	callq	_memcpy
	subq	%r14, %rbp
	movq	136(%rsp), %rax         ## 8-byte Reload
	leaq	(%rax,%rbp,8), %rdi
	movq	%rdi, %rsi
	subq	%r15, %rsi
	cmpl	$0, 24(%rbx)
	je	LBB2_308
## BB#307:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, 104(%rsp)         ## 8-byte Spill
	callq	_shiftaddress_canon
	jmp	LBB2_309
LBB2_274:                               ##   in Loop: Header=BB2_150 Depth=1
	addsd	LCPI2_4(%rip), %xmm5
	movapd	%xmm0, %xmm1
	movapd	%xmm5, %xmm0
	movsd	LCPI2_5(%rip), %xmm2    ## xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm5, %rcx
	ucomisd	%xmm2, %xmm5
	cmovaeq	%rax, %rcx
	movq	128(%rsp), %rax         ## 8-byte Reload
	incq	(%rax,%rcx,8)
	jmp	LBB2_313
LBB2_275:                               ##   in Loop: Header=BB2_150 Depth=1
	movapd	%xmm0, %xmm1
	addsd	LCPI2_4(%rip), %xmm5
	movapd	%xmm5, %xmm0
	movsd	LCPI2_5(%rip), %xmm2    ## xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rax ## imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm5, %rax
	ucomisd	%xmm2, %xmm5
	cmovaeq	%rcx, %rax
	testb	$1, %al
	jne	LBB2_276
## BB#277:                              ##   in Loop: Header=BB2_150 Depth=1
	movabsq	$4611686018427387902, %rcx ## imm = 0x3FFFFFFFFFFFFFFE
	andq	%rcx, %rax
	movq	128(%rsp), %rcx         ## 8-byte Reload
	incq	(%rcx,%rax,4)
	movapd	%xmm1, %xmm0
	jmp	LBB2_313
LBB2_283:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	%rbp, %rdi
	jmp	LBB2_313
LBB2_276:                               ##   in Loop: Header=BB2_150 Depth=1
	movapd	%xmm1, %xmm0
	jmp	LBB2_313
LBB2_248:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	160(%rsp), %rbp         ## 8-byte Reload
LBB2_256:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	%rbp, 160(%rsp)         ## 8-byte Spill
	cmpq	%rbp, %r13
	jge	LBB2_313
## BB#257:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	320(%rsp), %r14
	movq	(%r14), %rbx
	movq	%rbx, %rbp
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	andq	%rax, %rbp
	movq	(%r15), %r12
	leaq	(,%rbp,8), %rax
	movq	%r12, %rsi
	subq	%rax, %rsi
	movq	%r12, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	shrq	$3, %rax
	cmpq	%rbp, %rax
	jae	LBB2_259
## BB#258:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, 240(%rsp)         ## 8-byte Spill
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r13, 184(%rsp)         ## 8-byte Spill
	movq	%r10, %r13
	movsd	%xmm0, 200(%rsp)        ## 8-byte Spill
	movsd	%xmm4, 248(%rsp)        ## 8-byte Spill
	movq	%rbx, 232(%rsp)         ## 8-byte Spill
	movq	%rsi, %rbx
	callq	_pari_err
	movq	%rbx, %rsi
	movq	232(%rsp), %rbx         ## 8-byte Reload
	movq	240(%rsp), %rdi         ## 8-byte Reload
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movq	%r13, %r10
	movq	184(%rsp), %r13         ## 8-byte Reload
LBB2_259:                               ## %cgetg_copy.exit.i68
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%rsi, (%r15)
	movq	(%r14), %rax
	andq	88(%rsp), %rax          ## 8-byte Folded Reload
	movq	%rax, (%rsi)
	cmpq	$2, %rbp
	jb	LBB2_273
## BB#260:                              ## %.lr.ph.i71.preheader
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%rbx, %rcx
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	andq	%rax, %rcx
	movq	%rcx, %r15
	negq	%r15
	cmpq	$-3, %r15
	movq	$-2, %rax
	cmovgq	%r15, %rax
	leaq	(%rax,%rcx), %rdx
	cmpq	$-1, %rdx
	je	LBB2_271
## BB#261:                              ## %overflow.checked189
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, %r11
	leaq	1(%rax,%rcx), %r8
	incq	%rax
	addl	%ebx, %eax
	andq	$3, %rax
	cmpq	$-3, %r15
	movq	$-2, %rdi
	cmovgq	%r15, %rdi
	movq	%r8, %rdx
	subq	%rax, %rdx
	jne	LBB2_263
## BB#262:                              ##   in Loop: Header=BB2_150 Depth=1
	xorl	%edx, %edx
	movq	%r11, %rdi
	jmp	LBB2_270
LBB2_291:                               ##   in Loop: Header=BB2_150 Depth=1
	cmpq	$2, %rcx
	movq	_avma@GOTPCREL(%rip), %r12
	jb	LBB2_293
## BB#292:                              ##   in Loop: Header=BB2_150 Depth=1
	xorl	%eax, %eax
	leaq	L_.str8(%rip), %rdi
	callq	_err_printf
	callq	_err_flush
LBB2_293:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	%r14, (%r12)
	movq	%r13, %rdi
	movq	120(%rsp), %r10         ## 8-byte Reload
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	jmp	LBB2_313
LBB2_263:                               ## %vector.memcheck206
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%rsi, 248(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	notq	%rax
	leaq	(%r14,%rax,8), %r9
	leaq	-8(%r12), %rax
	cmpq	%r9, %rax
	ja	LBB2_266
## BB#264:                              ## %vector.memcheck206
                                        ##   in Loop: Header=BB2_150 Depth=1
	leaq	-8(%r14,%rcx,8), %rax
	addq	%rcx, %rdi
	notq	%rdi
	leaq	(%r12,%rdi,8), %rdi
	cmpq	%rdi, %rax
	ja	LBB2_266
## BB#265:                              ##   in Loop: Header=BB2_150 Depth=1
	xorl	%edx, %edx
	jmp	LBB2_269
LBB2_300:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	_PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq	%rax, %rbp
	movl	(%rbp), %r14d
	movl	$1, (%rbp)
	movq	%rbx, %rdi
	callq	_free
	movl	%r14d, (%rbp)
	testl	%r14d, %r14d
	jne	LBB2_303
## BB#301:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB2_303
## BB#302:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	movl	$0, (%rax)
	callq	_raise
LBB2_303:                               ## %pari_free.exit.i.i
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)         ## 8-byte Spill
	jmp	LBB2_312
LBB2_266:                               ## %vector.body180.preheader
                                        ##   in Loop: Header=BB2_150 Depth=1
	movapd	%xmm0, %xmm2
	movq	%rbp, %r9
	subq	%rdx, %r9
	cmpq	$-3, %r15
	movq	$-2, %rax
	cmovgq	%r15, %rax
	cmpq	$-2, %r15
	movl	$-2, %edi
	cmovlel	%edi, %r15d
	leal	1(%rbx,%r15), %esi
	andq	$3, %rsi
	subq	%rax, %rsi
	decq	%rsi
	.align	4, 0x90
LBB2_267:                               ## %vector.body180
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       ## xmm0 = xmm0[0,1,0,1]
	paddq	%xmm3, %xmm0
	movd	%xmm0, %rax
	movupd	-8(%r14,%rax,8), %xmm0
	movupd	-24(%r14,%rax,8), %xmm1
	subq	%rbp, %rax
	movupd	%xmm0, -8(%r12,%rax,8)
	movupd	%xmm1, -24(%r12,%rax,8)
	addq	$-4, %rcx
	cmpq	%rcx, %rsi
	jne	LBB2_267
## BB#268:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	%r9, %rbp
	movapd	%xmm2, %xmm0
LBB2_269:                               ## %middle.block181
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	%r11, %rdi
	movq	248(%rsp), %rsi         ## 8-byte Reload
LBB2_270:                               ## %middle.block181
                                        ##   in Loop: Header=BB2_150 Depth=1
	cmpq	%rdx, %r8
	je	LBB2_273
LBB2_271:                               ## %.lr.ph.i71.preheader463
                                        ##   in Loop: Header=BB2_150 Depth=1
	movabsq	$72057594037927935, %rax ## imm = 0xFFFFFFFFFFFFFF
	andq	%rax, %rbx
	shlq	$3, %rbx
	subq	%rbx, %r12
	addq	$-8, %r12
	.align	4, 0x90
LBB2_272:                               ## %.lr.ph.i71
                                        ##   Parent Loop BB2_150 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%r14,%rbp,8), %rax
	movq	%rax, (%r12,%rbp,8)
	leaq	-1(%rbp), %rbp
	cmpq	$1, %rbp
	jg	LBB2_272
LBB2_273:                               ## %leafcopy.exit
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	304(%rsp), %rax
	movq	%rsi, 8(%rax,%r13,8)
	jmp	LBB2_313
LBB2_308:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	%rdi, 104(%rsp)         ## 8-byte Spill
	callq	_shiftaddress
LBB2_309:                               ##   in Loop: Header=BB2_150 Depth=1
	movq	_PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq	%rax, %rbp
	movl	(%rbp), %r14d
	movl	$1, (%rbp)
	movq	%rbx, %rdi
	callq	_free
	movl	%r14d, (%rbp)
	testl	%r14d, %r14d
	jne	LBB2_312
## BB#310:                              ##   in Loop: Header=BB2_150 Depth=1
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB2_312
## BB#311:                              ##   in Loop: Header=BB2_150 Depth=1
	movl	(%rax), %edi
	movl	$0, (%rax)
	callq	_raise
LBB2_312:                               ## %gerepilecopy.exit
                                        ##   in Loop: Header=BB2_150 Depth=1
	movq	120(%rsp), %r10         ## 8-byte Reload
	movsd	200(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movdqa	LCPI2_2(%rip), %xmm3    ## xmm3 = [18446744073709551615,18446744073709551614]
	movsd	248(%rsp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movq	240(%rsp), %rdi         ## 8-byte Reload
	jmp	LBB2_313
LBB2_314:
	movq	192(%rsp), %rcx         ## 8-byte Reload
	leaq	-3(%rcx), %rax
	cmpq	$2, %rax
	movq	_avma@GOTPCREL(%rip), %r15
	movabsq	$72057594037927935, %rbx ## imm = 0xFFFFFFFFFFFFFF
	jae	LBB2_315
## BB#320:
	movq	80(%rsp), %rax          ## 8-byte Reload
	movq	%rax, (%r15)
	movq	128(%rsp), %r13         ## 8-byte Reload
	jmp	LBB2_351
LBB2_315:
	cmpq	$2, %rcx
	movq	128(%rsp), %r13         ## 8-byte Reload
	jne	LBB2_316
## BB#321:
	movq	_DEBUGLEVEL@GOTPCREL(%rip), %rax
	cmpq	$2, (%rax)
	movabsq	$144115188075855872, %rbx ## imm = 0x200000000000000
	movq	96(%rsp), %rbp          ## 8-byte Reload
	jb	LBB2_323
## BB#322:
	leaq	L_.str11(%rip), %rdi
	xorl	%eax, %eax
	callq	_err_printf
	callq	_err_flush
LBB2_323:
	movq	%rbp, (%r15)
	movq	184(%rsp), %rax         ## 8-byte Reload
	testq	%rax, %rax
	je	LBB2_324
## BB#325:
	jle	LBB2_329
## BB#326:
	movq	%rax, %r14
	leaq	-24(%rbp), %r13
	movq	%rbp, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB2_328
## BB#327:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_328:                               ## %utoipos.exit.i76
	movq	%r13, (%r15)
	addq	$3, %rbx
	movq	%rbx, -24(%rbp)
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	addq	$3, %rax
	jmp	LBB2_332
LBB2_166:
	movsd	%xmm5, 232(%rsp)        ## 8-byte Spill
	movq	56(%rsp), %rdi          ## 8-byte Reload
	movq	%rbx, %rsi
	callq	_ZM_zc_mul
	movq	_bot@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rax
	movq	80(%rsp), %rsi          ## 8-byte Reload
	jb	LBB2_169
## BB#167:                              ## %isonstack.exit.i47
	cmpq	%rax, %rsi
	jbe	LBB2_169
## BB#168:                              ## %isonstack.exit.i47
	movq	_top@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rax
	jae	LBB2_169
## BB#170:
	movq	%r15, %r13
	movq	(%rax), %r15
	movq	%r15, %rcx
	shrq	$57, %rcx
	leaq	-21(%rcx), %rdx
	cmpq	$2, %rdx
	movabsq	$72057594037927935, %r14 ## imm = 0xFFFFFFFFFFFFFF
	jb	LBB2_185
## BB#171:
	cmpq	$2, %rcx
	jne	LBB2_172
LBB2_185:
	movq	%r15, %rcx
	andq	%r14, %rcx
	shlq	$3, %rcx
	movq	%rsi, %rdx
	movq	%rsi, %r10
	subq	%rcx, %rdx
	movq	%r15, %rsi
	andq	%r14, %rsi
	movq	%rdx, (%r13)
	movabsq	$144115188075855872, %r12 ## imm = 0x200000000000000
	movq	%r12, %rbp
	je	LBB2_186
## BB#187:                              ## %.lr.ph.i.i50.preheader
	movq	%rbp, %r12
	movq	%r15, %rcx
	movabsq	$-72057594037927936, %rdi ## imm = 0xFF00000000000000
	orq	%rdi, %rcx
	movq	%rcx, %rbp
	xorq	%r14, %rbp
	cmpq	%rdi, %rcx
	movq	$-2, %r14
	movq	$-2, %rbx
	cmoveq	%rbp, %rbx
	leaq	(%rbx,%rsi), %r11
	cmpq	$-2, %r11
	movsd	232(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	jne	LBB2_192
## BB#188:
	movq	%r10, %rdi
	movq	%r12, %rbp
	jmp	LBB2_189
LBB2_324:
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	jmp	LBB2_351
LBB2_169:                               ## %isonstack.exit.thread.i
	movq	%rsi, (%r15)
	movabsq	$144115188075855872, %r12 ## imm = 0x200000000000000
	movq	%r12, %rbp
	movabsq	$72057594037927935, %r14 ## imm = 0xFFFFFFFFFFFFFF
LBB2_202:                               ## %gerepileupto.exit
	movsd	232(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB2_203:                               ## %gerepileupto.exit
	movq	128(%rsp), %rcx         ## 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	(%r15), %rbx
	callq	_dbltor
	movq	%rax, %rdi
	callq	_roundr
	movq	_bot@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rax
	jae	LBB2_205
## BB#204:
	movq	%rax, %r12
	jmp	LBB2_221
LBB2_316:
	cmpq	$1, %rcx
	movq	96(%rsp), %rax          ## 8-byte Reload
	jne	LBB2_333
## BB#317:
	movq	%rax, (%r15)
	leaq	-8(%rax), %r13
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$7, %rax
	ja	LBB2_319
## BB#318:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_319:                               ## %cgetg.exit75
	movq	%r13, (%r15)
LBB2_54:                                ## %stoi.exit79
	movabsq	$2449958197289549825, %rax ## imm = 0x2200000000000001
	movq	%rax, (%r13)
	jmp	LBB2_351
LBB2_205:                               ## %isonstack.exit.i53
	cmpq	%rax, %rbx
	movdqa	LCPI2_2(%rip), %xmm2    ## xmm2 = [18446744073709551615,18446744073709551614]
	jbe	LBB2_206
## BB#207:                              ## %isonstack.exit.i53
	movq	_top@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rax
	jae	LBB2_208
## BB#209:
	movq	%rbp, %r8
	movq	%r15, %r13
	movq	8(%rax), %r9
	movq	%r9, %rbp
	andq	%r14, %rbp
	leaq	(,%rbp,8), %rdx
	movq	%rbx, %r12
	subq	%rdx, %r12
	cmpq	$2, %rbp
	jb	LBB2_220
## BB#210:                              ## %.lr.ph.i.i56.preheader
	andq	%r9, %r14
	movq	%r14, %rsi
	negq	%rsi
	cmpq	$-3, %rsi
	movq	$-2, %r10
	movq	$-2, %r15
	cmovgq	%rsi, %r15
	addq	%r14, %r15
	cmpq	$-1, %r15
	movq	%rbp, %rdx
	je	LBB2_218
## BB#211:                              ## %overflow.checked382
	incq	%r15
	cmpq	$-3, %rsi
	cmovgq	%rsi, %r10
	xorl	%r11d, %r11d
	movq	%r15, %rdi
	andq	$-4, %rdi
	movq	%rbp, %rdx
	je	LBB2_217
## BB#212:                              ## %vector.memcheck396
	movq	%r10, %rdx
	notq	%rdx
	movq	%r14, %rcx
	leaq	(%rax,%rdx,8), %r14
	leaq	-8(%rbx), %rdx
	xorl	%r11d, %r11d
	cmpq	%r14, %rdx
	ja	LBB2_214
## BB#213:                              ## %vector.memcheck396
	leaq	-8(%rax,%rcx,8), %r14
	addq	%rcx, %r10
	notq	%r10
	leaq	(%rbx,%r10,8), %rdx
	cmpq	%rdx, %r14
	movq	%rbp, %rdx
	jbe	LBB2_217
LBB2_214:                               ## %vector.body373.preheader
	movq	%rbp, %rdx
	subq	%rdi, %rdx
	movq	%rdi, %r10
	cmpq	$-3, %rsi
	movq	$-2, %rdi
	cmovgq	%rsi, %rdi
	leaq	1(%rdi,%rcx), %rsi
	andq	$-4, %rsi
LBB2_215:                               ## %vector.body373
                                        ## =>This Inner Loop Header: Depth=1
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       ## xmm0 = xmm0[0,1,0,1]
	paddq	%xmm2, %xmm0
	movd	%xmm0, %rdi
	movupd	-8(%rax,%rdi,8), %xmm0
	movupd	-24(%rax,%rdi,8), %xmm1
	subq	%rbp, %rdi
	movupd	%xmm0, -8(%rbx,%rdi,8)
	movupd	%xmm1, -24(%rbx,%rdi,8)
	addq	$-4, %rcx
	addq	$-4, %rsi
	jne	LBB2_215
## BB#216:
	movq	%r10, %r11
LBB2_217:                               ## %middle.block374
	cmpq	%r11, %r15
	je	LBB2_220
LBB2_218:                               ## %.lr.ph.i.i56.preheader459
	notq	%r9
	movabsq	$2233785415175766016, %rsi ## imm = 0x1F00000000000000
	orq	%r9, %rsi
	leaq	(%rbx,%rsi,8), %rsi
	.align	4, 0x90
LBB2_219:                               ## %.lr.ph.i.i56
                                        ## =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rdx,8), %rdi
	movq	%rdi, (%rsi,%rdx,8)
	leaq	-1(%rdx), %rdx
	cmpq	$1, %rdx
	jg	LBB2_219
LBB2_220:                               ## %icopy_avma.exit.i57
	orq	%r8, %rbp
	movq	%rbp, (%r12)
	movq	%r12, %rbx
	movq	%r13, %r15
	jmp	LBB2_221
LBB2_333:
	movq	160(%rsp), %rax         ## 8-byte Reload
	movq	184(%rsp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rax, %r14
	cmovleq	%rcx, %r14
	xorpd	%xmm0, %xmm0
	movsd	200(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jb	LBB2_335
## BB#334:
	callq	_dbltor
	movq	%rax, %rdi
	callq	_roundr
	movq	%rax, 176(%rsp)         ## 8-byte Spill
LBB2_335:
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	leaq	1(%r14), %rbp
	cmpq	%rbx, %rbp
	jbe	LBB2_337
## BB#336:
	leaq	L_.str1(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_337:                               ## %evallg.exit
	movabsq	$2738188573441261568, %rax ## imm = 0x2600000000000000
	orq	%rax, %rbp
	movq	304(%rsp), %rax
	movq	%rbp, (%rax)
	testq	%r14, %r14
	movq	56(%rsp), %r12          ## 8-byte Reload
	jle	LBB2_340
## BB#338:                              ## %.lr.ph
	movq	160(%rsp), %rax         ## 8-byte Reload
	notq	%rax
	movq	184(%rsp), %r14         ## 8-byte Reload
	notq	%r14
	cmpq	%r14, %rax
	cmovgeq	%rax, %r14
	negq	%r14
	movl	$1, %ebp
	.align	4, 0x90
LBB2_339:                               ## =>This Inner Loop Header: Depth=1
	movq	304(%rsp), %rbx
	movq	(%rbx,%rbp,8), %rsi
	movq	%r12, %rdi
	callq	_ZM_zc_mul
	movq	%rax, (%rbx,%rbp,8)
	incq	%rbp
	cmpq	%rbp, %r14
	jne	LBB2_339
LBB2_340:                               ## %._crit_edge
	leaq	312(%rsp), %rdx
	leaq	304(%rsp), %rcx
	xorl	%eax, %eax
	movq	80(%rsp), %rdi          ## 8-byte Reload
	callq	_gerepileall
	movq	184(%rsp), %rax         ## 8-byte Reload
	addq	%rax, %rax
	testq	%rax, %rax
	movq	%rax, %r14
	je	LBB2_341
## BB#342:
	jle	LBB2_346
## BB#343:
	movq	(%r15), %rbp
	leaq	-24(%rbp), %rbx
	movq	%rbp, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB2_345
## BB#344:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_345:                               ## %utoipos.exit.i
	movq	%rbx, (%r15)
	movabsq	$144115188075855872, %rax ## imm = 0x200000000000000
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	movabsq	$4611686018427387904, %rax ## imm = 0x4000000000000000
	addq	$3, %rax
	jmp	LBB2_349
LBB2_206:
	movq	%rax, %r12
	jmp	LBB2_221
LBB2_208:
	movq	%rax, %r12
LBB2_221:                               ## %gerepileuptoint.exit61
	movq	%rbx, (%r15)
	movq	128(%rsp), %r13         ## 8-byte Reload
	movq	%r12, 8(%r13)
	jmp	LBB2_351
LBB2_329:
	negq	%rax
	movq	%rax, %r14
	leaq	-24(%rbp), %r13
	movq	%rbp, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB2_331
## BB#330:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_331:                               ## %utoineg.exit.i77
	movq	%r13, (%r15)
	addq	$3, %rbx
	movq	%rbx, -24(%rbp)
	movabsq	$-4611686018427387901, %rax ## imm = 0xC000000000000003
LBB2_332:                               ## %stoi.exit79
	movq	%rax, -16(%rbp)
	movq	%r14, -8(%rbp)
	jmp	LBB2_351
LBB2_341:
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	jmp	LBB2_350
LBB2_186:
	movq	%rdx, %rax
	jmp	LBB2_201
LBB2_172:
	movq	%rsi, %rdi
	cmpq	$1, %rcx
	movabsq	$144115188075855872, %r12 ## imm = 0x200000000000000
	movq	%r12, %rbp
	jne	LBB2_200
## BB#173:                              ## %isonstack.exit.i.i
	movq	%rbp, %r8
	movq	8(%rax), %r9
	movq	%r9, %rbx
	andq	%r14, %rbx
	leaq	(,%rbx,8), %rcx
	movq	%rdi, %rdx
	movq	%rdx, %r12
	subq	%rcx, %r12
	cmpq	$2, %rbx
	movsd	232(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	jb	LBB2_184
## BB#174:                              ## %.lr.ph.i.i.i.preheader
	movq	%r9, %rsi
	andq	%r14, %rsi
	movq	%rsi, %rbp
	negq	%rbp
	cmpq	$-3, %rbp
	movq	$-2, %r10
	movq	$-2, %r15
	cmovgq	%rbp, %r15
	addq	%rsi, %r15
	cmpq	$-1, %r15
	movq	%rbx, %rcx
	je	LBB2_182
## BB#175:                              ## %overflow.checked334
	incq	%r15
	cmpq	$-3, %rbp
	cmovgq	%rbp, %r10
	xorl	%r11d, %r11d
	movq	%r15, %rdi
	andq	$-4, %rdi
	movq	%rbx, %rcx
	je	LBB2_181
## BB#176:                              ## %vector.memcheck348
	movq	%r10, %rcx
	notq	%rcx
	leaq	(%rax,%rcx,8), %r14
	leaq	-8(%rdx), %rcx
	xorl	%r11d, %r11d
	cmpq	%r14, %rcx
	ja	LBB2_178
## BB#177:                              ## %vector.memcheck348
	leaq	-8(%rax,%rsi,8), %r14
	addq	%rsi, %r10
	notq	%r10
	leaq	(%rdx,%r10,8), %rcx
	cmpq	%rcx, %r14
	movq	%rbx, %rcx
	jbe	LBB2_181
LBB2_178:                               ## %vector.body325.preheader
	movq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rdi, %r10
	cmpq	$-3, %rbp
	movq	$-2, %rdi
	cmovgq	%rbp, %rdi
	leaq	1(%rdi,%rsi), %rbp
	andq	$-4, %rbp
	movdqa	LCPI2_2(%rip), %xmm2    ## xmm2 = [18446744073709551615,18446744073709551614]
LBB2_179:                               ## %vector.body325
                                        ## =>This Inner Loop Header: Depth=1
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       ## xmm1 = xmm1[0,1,0,1]
	paddq	%xmm2, %xmm1
	movd	%xmm1, %rdi
	movdqu	-8(%rax,%rdi,8), %xmm3
	movupd	-24(%rax,%rdi,8), %xmm1
	subq	%rbx, %rdi
	movdqu	%xmm3, -8(%rdx,%rdi,8)
	movupd	%xmm1, -24(%rdx,%rdi,8)
	addq	$-4, %rsi
	addq	$-4, %rbp
	jne	LBB2_179
## BB#180:
	movq	%r10, %r11
LBB2_181:                               ## %middle.block326
	cmpq	%r11, %r15
	movabsq	$72057594037927935, %r14 ## imm = 0xFFFFFFFFFFFFFF
	je	LBB2_184
LBB2_182:                               ## %.lr.ph.i.i.i.preheader460
	notq	%r9
	movabsq	$2233785415175766016, %rsi ## imm = 0x1F00000000000000
	orq	%r9, %rsi
	leaq	(%rdx,%rsi,8), %rsi
LBB2_183:                               ## %.lr.ph.i.i.i
                                        ## =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rcx,8), %rdi
	movq	%rdi, (%rsi,%rcx,8)
	leaq	-1(%rcx), %rcx
	cmpq	$1, %rcx
	jg	LBB2_183
LBB2_184:                               ## %gerepileuptoint.exit.i
	movq	%r8, %rbp
	orq	%rbp, %rbx
	movq	%rbx, (%r12)
	movq	%r13, %r15
	movq	%r12, (%r15)
	movq	%r12, %rax
	jmp	LBB2_203
LBB2_346:
	negq	%r14
	movq	(%r15), %rbp
	leaq	-24(%rbp), %rbx
	movq	%rbp, %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB2_348
## BB#347:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB2_348:                               ## %utoineg.exit.i
	movq	%rbx, (%r15)
	movabsq	$144115188075855872, %rax ## imm = 0x200000000000000
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	movabsq	$-4611686018427387901, %rax ## imm = 0xC000000000000003
LBB2_349:                               ## %stoi.exit
	movq	%rax, -16(%rbp)
	movq	%r14, -8(%rbp)
LBB2_350:                               ## %stoi.exit
	movq	%rbx, 8(%r13)
	movq	312(%rsp), %rax
	movq	%rax, 16(%r13)
	movq	304(%rsp), %rax
	movq	%rax, 24(%r13)
LBB2_351:                               ## %stoi.exit79
	movq	%r13, %rax
	addq	$328, %rsp              ## imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_192:                               ## %overflow.checked286
	addq	$2, %r11
	cmpq	%rdi, %rcx
	cmoveq	%rbp, %r14
	xorl	%r9d, %r9d
	movq	%r11, %r8
	andq	$-4, %r8
	movq	%r10, %rdi
	movdqa	LCPI2_2(%rip), %xmm2    ## xmm2 = [18446744073709551615,18446744073709551614]
	je	LBB2_198
## BB#193:                              ## %vector.memcheck300
	movq	$-2, %r10
	movq	$-2, %rcx
	subq	%r14, %rcx
	leaq	(%rax,%rcx,8), %rcx
	leaq	-8(%rdi), %rbp
	xorl	%r9d, %r9d
	cmpq	%rcx, %rbp
	ja	LBB2_195
## BB#194:                              ## %vector.memcheck300
	leaq	-8(%rax,%rsi,8), %rcx
	addq	%rsi, %r14
	subq	%r14, %r10
	leaq	(%rdi,%r10,8), %rbp
	cmpq	%rbp, %rcx
	jbe	LBB2_198
LBB2_195:                               ## %vector.body277.preheader
	movq	%rsi, %r9
	subq	%r8, %r9
	leaq	2(%rbx,%rsi), %rbx
	andq	$-4, %rbx
	movq	%rsi, %rbp
LBB2_196:                               ## %vector.body277
                                        ## =>This Inner Loop Header: Depth=1
	movd	%rbp, %xmm1
	pshufd	$68, %xmm1, %xmm1       ## xmm1 = xmm1[0,1,0,1]
	paddq	%xmm2, %xmm1
	movd	%xmm1, %rcx
	movdqu	-8(%rax,%rcx,8), %xmm3
	movupd	-24(%rax,%rcx,8), %xmm1
	subq	%rsi, %rcx
	movdqu	%xmm3, -8(%rdi,%rcx,8)
	movupd	%xmm1, -24(%rdi,%rcx,8)
	addq	$-4, %rbp
	addq	$-4, %rbx
	jne	LBB2_196
## BB#197:
	movq	%r9, %rsi
	movq	%r8, %r9
LBB2_198:                               ## %middle.block278
	cmpq	%r9, %r11
	movq	%r12, %rbp
	jne	LBB2_189
## BB#199:
	movq	%rdx, %rax
	movabsq	$72057594037927935, %r14 ## imm = 0xFFFFFFFFFFFFFF
	movq	%r13, %r15
	jmp	LBB2_203
LBB2_189:                               ## %.lr.ph.i.i50.preheader461
	incq	%rsi
	movabsq	$72057594037927935, %r14 ## imm = 0xFFFFFFFFFFFFFF
	andq	%r14, %r15
	shlq	$3, %r15
	subq	%r15, %rdi
	.align	4, 0x90
LBB2_190:                               ## %.lr.ph.i.i50
                                        ## =>This Inner Loop Header: Depth=1
	movq	-16(%rax,%rsi,8), %rcx
	movq	%rcx, -16(%rdi,%rsi,8)
	decq	%rsi
	cmpq	$1, %rsi
	jg	LBB2_190
## BB#191:
	movq	%rdx, %rax
	movq	%r13, %r15
	jmp	LBB2_203
LBB2_200:
	andq	%r14, %r15
	leaq	(%rax,%r15,8), %rsi
	movq	%rax, %rdx
	callq	_gerepile
LBB2_201:                               ## %gerepileupto.exit
	movq	%r13, %r15
	jmp	LBB2_202
	.cfi_endproc
	.align	2, 0x90
L2_0_set_25 = LBB2_25-LJTI2_0
L2_0_set_18 = LBB2_18-LJTI2_0
L2_0_set_47 = LBB2_47-LJTI2_0
L2_0_set_28 = LBB2_28-LJTI2_0
LJTI2_0:
	.long	L2_0_set_25
	.long	L2_0_set_18
	.long	L2_0_set_47
	.long	L2_0_set_28
	.long	L2_0_set_28
L2_1_set_247 = LBB2_247-LJTI2_1
L2_1_set_313 = LBB2_313-LJTI2_1
L2_1_set_278 = LBB2_278-LJTI2_1
L2_1_set_274 = LBB2_274-LJTI2_1
L2_1_set_275 = LBB2_275-LJTI2_1
LJTI2_1:
	.long	L2_1_set_247
	.long	L2_1_set_313
	.long	L2_1_set_278
	.long	L2_1_set_274
	.long	L2_1_set_275

	.align	4, 0x90
_gerepileall:                           ## @gerepileall
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              ## imm = 0x138
Ltmp42:
	.cfi_def_cfa_offset 368
Ltmp43:
	.cfi_offset %rbx, -56
Ltmp44:
	.cfi_offset %r12, -48
Ltmp45:
	.cfi_offset %r13, -40
Ltmp46:
	.cfi_offset %r14, -32
Ltmp47:
	.cfi_offset %r15, -24
Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	%al, %al
	je	LBB3_2
## BB#1:
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm4, 128(%rsp)
	movaps	%xmm5, 144(%rsp)
	movaps	%xmm6, 160(%rsp)
	movaps	%xmm7, 176(%rsp)
LBB3_2:
	movq	%r9, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 304(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 288(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 280(%rsp)
	movl	$48, 276(%rsp)
	movl	$16, 272(%rsp)
	movslq	272(%rsp), %rcx
	cmpq	$40, %rcx
	ja	LBB3_4
## BB#3:
	movq	%rcx, %rax
	addq	288(%rsp), %rax
	leal	8(%rcx), %ecx
	movl	%ecx, 272(%rsp)
	jmp	LBB3_5
LBB3_4:
	movq	280(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 280(%rsp)
LBB3_5:
	movq	(%rax), %rbp
	movq	%rbp, 192(%rsp)
	movq	(%rbp), %rdi
	callq	_copy_bin
	movq	%rax, (%rbp)
	movslq	272(%rsp), %rcx
	cmpq	$41, %rcx
	jae	LBB3_6
## BB#36:
	movq	%rcx, %rax
	addq	288(%rsp), %rax
	leal	8(%rcx), %ecx
	movl	%ecx, 272(%rsp)
	jmp	LBB3_7
LBB3_6:
	movq	280(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 280(%rsp)
LBB3_7:
	movq	(%rax), %rbp
	movq	%rbp, 200(%rsp)
	movq	(%rbp), %rdi
	callq	_copy_bin
	movq	%rax, (%rbp)
	movq	_avma@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rdx)
	movq	200(%rsp), %rax
	movq	(%rax), %r15
	movq	8(%r15), %r13
	testq	%r13, %r13
	je	LBB3_8
## BB#12:
	movq	(%r15), %r12
	movq	%r13, %rbp
	subq	16(%r15), %rbp
	sarq	$3, %rbp
	movq	(%rdx), %r14
	leaq	(,%r12,8), %r8
	movq	%r14, %rbx
	subq	%r8, %rbx
	movq	_bot@GOTPCREL(%rip), %rax
	movq	%r14, %rcx
	subq	(%rax), %rcx
	shrq	$3, %rcx
	cmpq	%r12, %rcx
	jae	LBB3_14
## BB#13:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r8, 8(%rsp)            ## 8-byte Spill
	callq	_pari_err
	movq	8(%rsp), %r8            ## 8-byte Reload
	movq	_avma@GOTPCREL(%rip), %rdx
LBB3_14:                                ## %new_chunk.exit.i
	movq	%rbx, (%rdx)
	leaq	32(%r15), %rsi
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	_memcpy
	subq	%r12, %rbp
	leaq	(%r14,%rbp,8), %r14
	movq	%r14, %rsi
	subq	%r13, %rsi
	cmpl	$0, 24(%r15)
	je	LBB3_16
## BB#15:
	movq	%r14, %rdi
	callq	_shiftaddress_canon
	jmp	LBB3_17
LBB3_8:
	movq	%rdx, %r12
	movq	_PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ebp
	movl	$1, (%rbx)
	movq	%r15, %rdi
	callq	_free
	movl	%ebp, (%rbx)
	testl	%ebp, %ebp
	jne	LBB3_11
## BB#9:
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB3_11
## BB#10:
	movl	(%rax), %edi
	movl	$0, (%rax)
	callq	_raise
LBB3_11:                                ## %pari_free.exit.i
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	%r12, %rdx
	jmp	LBB3_21
LBB3_16:
	movq	%r14, %rdi
	callq	_shiftaddress
LBB3_17:
	movq	_PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ebp
	movl	$1, (%rbx)
	movq	%r15, %rdi
	callq	_free
	movl	%ebp, (%rbx)
	testl	%ebp, %ebp
	jne	LBB3_20
## BB#18:
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB3_20
## BB#19:
	movl	(%rax), %edi
	movl	$0, (%rax)
	callq	_raise
LBB3_20:                                ## %bin_copy.exit
	movq	_avma@GOTPCREL(%rip), %rdx
LBB3_21:                                ## %bin_copy.exit
	movq	200(%rsp), %rax
	movq	%r14, (%rax)
	movq	192(%rsp), %rax
	movq	(%rax), %r15
	movq	8(%r15), %r13
	testq	%r13, %r13
	je	LBB3_30
## BB#22:
	movq	(%r15), %r12
	movq	%r13, %rbp
	subq	16(%r15), %rbp
	sarq	$3, %rbp
	movq	(%rdx), %r14
	leaq	(,%r12,8), %r8
	movq	%r14, %rbx
	subq	%r8, %rbx
	movq	_bot@GOTPCREL(%rip), %rax
	movq	%r14, %rcx
	subq	(%rax), %rcx
	shrq	$3, %rcx
	cmpq	%r12, %rcx
	jae	LBB3_24
## BB#23:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%r8, 8(%rsp)            ## 8-byte Spill
	callq	_pari_err
	movq	8(%rsp), %r8            ## 8-byte Reload
	movq	_avma@GOTPCREL(%rip), %rdx
LBB3_24:                                ## %new_chunk.exit.i.1
	movq	%rbx, (%rdx)
	leaq	32(%r15), %rsi
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	_memcpy
	subq	%r12, %rbp
	leaq	(%r14,%rbp,8), %r14
	movq	%r14, %rsi
	subq	%r13, %rsi
	cmpl	$0, 24(%r15)
	je	LBB3_26
## BB#25:
	movq	%r14, %rdi
	callq	_shiftaddress_canon
	jmp	LBB3_27
LBB3_30:
	movq	_PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ebp
	movl	$1, (%rbx)
	movq	%r15, %rdi
	callq	_free
	movl	%ebp, (%rbx)
	testl	%ebp, %ebp
	jne	LBB3_33
## BB#31:
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB3_33
## BB#32:
	movl	(%rax), %edi
	movl	$0, (%rax)
	callq	_raise
LBB3_33:                                ## %pari_free.exit.i.1
	movq	_gen_0@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	jmp	LBB3_34
LBB3_26:
	movq	%r14, %rdi
	callq	_shiftaddress
LBB3_27:
	movq	_PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ebp
	movl	$1, (%rbx)
	movq	%r15, %rdi
	callq	_free
	movl	%ebp, (%rbx)
	testl	%ebp, %ebp
	jne	LBB3_34
## BB#28:
	movq	_PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB3_34
## BB#29:
	movl	(%rax), %edi
	movl	$0, (%rax)
	callq	_raise
LBB3_34:                                ## %bin_copy.exit.1
	movq	192(%rsp), %rax
	movq	%r14, (%rax)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	304(%rsp), %rax
	jne	LBB3_37
## BB#35:                               ## %bin_copy.exit.1
	addq	$312, %rsp              ## imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_37:                                ## %bin_copy.exit.1
	callq	___stack_chk_fail
	.cfi_endproc

	.align	4, 0x90
_gtofp:                                 ## @gtofp
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
Ltmp55:
	.cfi_def_cfa_offset 112
Ltmp56:
	.cfi_offset %rbx, -56
Ltmp57:
	.cfi_offset %r12, -48
Ltmp58:
	.cfi_offset %r13, -40
Ltmp59:
	.cfi_offset %r14, -32
Ltmp60:
	.cfi_offset %r15, -24
Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	(%r12), %rax
	shrq	$57, %rax
	decq	%rax
	cmpq	$7, %rax
	ja	LBB4_128
## BB#1:
	movabsq	$4611686018427387903, %rsi ## imm = 0x3FFFFFFFFFFFFFFF
	movabsq	$288230376151711747, %r14 ## imm = 0x400000000000003
	movabsq	$72057594037927935, %rbp ## imm = 0xFFFFFFFFFFFFFF
	leaq	LJTI4_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB4_2:
	movq	_avma@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %rbx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_4
## BB#3:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_4:                                 ## %itor.exit
	movq	%rbx, (%rbp)
	movq	%r14, (%rbx)
	movq	%r12, %rdi
LBB4_5:                                 ## %cxcompotor.exit
	movq	%rbx, %rsi
	callq	_affir
	jmp	LBB4_130
LBB4_128:
	leaq	L_.str12(%rip), %rsi
LBB4_129:                               ## %cxcompotor.exit
	xorl	%ebx, %ebx
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_130:                               ## %cxcompotor.exit
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_18:
	movq	_avma@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %rbx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_20
## BB#19:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_20:                                ## %rtor.exit
	movq	%rbx, (%rbp)
	movq	%r14, (%rbx)
	movq	%r12, %rdi
LBB4_21:                                ## %cxcompotor.exit
	movq	%rbx, %rsi
	callq	_affrr
	jmp	LBB4_130
LBB4_6:
	movq	8(%r12), %r15
	movq	16(%r12), %r13
	movq	_avma@GOTPCREL(%rip), %rbx
	movq	(%rbx), %r12
	leaq	-24(%r12), %r14
	movq	_bot@GOTPCREL(%rip), %rcx
	movq	%r12, %rax
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_8
## BB#7:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_8:                                 ## %cgetr.exit.i.i
	movq	%r14, %rcx
	movq	%rcx, (%rbx)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rcx)
	movq	(%rbx), %rax
	movq	%rax, 48(%rsp)          ## 8-byte Spill
	movq	%rbx, %r14
	movq	%r15, %rdi
	movq	%rcx, %rbx
	movq	%rbx, %rsi
	callq	_affir
	andq	8(%r13), %rbp
	cmpq	$3, %rbp
	ja	LBB4_14
## BB#9:
	movq	16(%r13), %rsi
	jne	LBB4_11
## BB#10:
	testq	%rsi, %rsi
	jns	LBB4_11
LBB4_14:                                ## %.critedge.i.i
	movq	(%r14), %rax
	leaq	-24(%rax), %rbp
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_16
## BB#15:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_16:                                ## %itor.exit.i.i
	movq	%rbp, (%r14)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbp)
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	_affir
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_divrr
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_affrr
	jmp	LBB4_17
LBB4_22:
	movq	8(%r12), %r14
	movq	16(%r12), %r15
	movq	(%r15), %rax
	shrq	$57, %rax
	cmpq	$1, %rax
	jne	LBB4_23
## BB#26:                               ## %isintzero.exit
	leaq	1(%rsi), %rcx
	movq	(%r14), %rax
	cmpq	%rcx, 8(%r15)
	jae	LBB4_24
## BB#27:
	shrq	$57, %rax
	cmpq	$4, %rax
	je	LBB4_33
## BB#28:
	cmpq	$2, %rax
	jne	LBB4_29
## BB#45:
	movq	_avma@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %rbx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	movabsq	$288230376151711747, %rbp ## imm = 0x400000000000003
	ja	LBB4_47
## BB#46:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_47:                                ## %rtor.exit.i
	movq	%rbx, (%r15)
	movq	%rbp, (%rbx)
	movq	%r14, %rdi
	jmp	LBB4_21
LBB4_127:
	movl	$3, %esi
	movq	%r12, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_quadtofp               ## TAILCALL
LBB4_23:                                ## %isintzero.exit.thread
	movq	(%r14), %rax
LBB4_24:
	movabsq	$-144115188075855872, %rcx ## imm = 0xFE00000000000000
	movabsq	$144115188075855872, %rdx ## imm = 0x200000000000000
	movabsq	$864691128455135235, %rbx ## imm = 0xC00000000000003
	andq	%rax, %rcx
	cmpq	%rdx, %rcx
	jne	LBB4_25
## BB#49:                               ## %isintzero.exit2
	movq	%rbx, %r13
	leaq	1(%rsi), %rcx
	movq	_avma@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)          ## 8-byte Spill
	leaq	-24(%rax), %rbx
	movq	_bot@GOTPCREL(%rip), %rbp
	subq	(%rbp), %rax
	cmpq	%rcx, 8(%r14)
	jae	LBB4_80
## BB#50:
	cmpq	$23, %rax
	ja	LBB4_52
## BB#51:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, %r14
	callq	_pari_err
	movq	%r14, %rdx
LBB4_52:                                ## %cgetg.exit
	movq	%rbx, 40(%rsp)          ## 8-byte Spill
	movq	%rbx, (%rdx)
	movq	%r13, (%rbx)
	movq	(%r15), %rax
	shrq	$57, %rax
	cmpq	$4, %rax
	movq	%rbp, %r12
	je	LBB4_58
## BB#53:                               ## %cgetg.exit
	cmpq	$2, %rax
	jne	LBB4_54
## BB#70:
	movq	(%rdx), %rax
	leaq	-24(%rax), %rbx
	subq	(%r12), %rax
	cmpq	$23, %rax
	ja	LBB4_72
## BB#71:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, %rbp
	callq	_pari_err
	movq	%rbp, %rdx
LBB4_72:                                ## %rtor.exit.i4
	movq	%rbx, (%rdx)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbx)
	movq	%r15, %rdi
	movq	%rdx, %rbp
	movq	%rbx, %rsi
	callq	_affrr
	jmp	LBB4_74
LBB4_25:                                ## %isintzero.exit2.thread
	movq	_avma@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 48(%rsp)          ## 8-byte Spill
	leaq	-24(%rcx), %r14
	movq	_bot@GOTPCREL(%rip), %rax
	subq	(%rax), %rcx
	cmpq	$24, %rcx
	jb	LBB4_81
	jmp	LBB4_82
LBB4_11:                                ## %.critedge1.i.i
	movq	%rbx, %rdi
	callq	_divrs
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_affrr
	cmpq	$0, 8(%r13)
	jns	LBB4_17
## BB#12:
	movq	-16(%r12), %rax
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jbe	LBB4_17
## BB#13:
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, -16(%r12)
LBB4_17:                                ## %fractor.exit
	movq	48(%rsp), %rax          ## 8-byte Reload
	movq	%rax, (%r14)
	jmp	LBB4_130
LBB4_80:
	cmpq	$23, %rax
	movq	%rbx, %r14
	movq	%r13, %rbx
	ja	LBB4_82
LBB4_81:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_82:                                ## %cgetg.exit.i
	movq	_avma@GOTPCREL(%rip), %r13
	movq	%r14, (%r13)
	movq	%rbx, (%r14)
	movq	8(%r12), %rbx
	movq	(%rbx), %rax
	shrq	$57, %rax
	cmpq	$4, %rax
	je	LBB4_88
## BB#83:                               ## %cgetg.exit.i
	cmpq	$2, %rax
	jne	LBB4_84
## BB#100:
	movq	%r14, 40(%rsp)          ## 8-byte Spill
	movq	(%r13), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %r15
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_102
## BB#101:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_102:                               ## %rtor.exit.i.i
	movq	%r15, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r15)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_affrr
	jmp	LBB4_104
LBB4_88:
	movq	%r14, 40(%rsp)          ## 8-byte Spill
	movq	8(%rbx), %rbp
	movq	16(%rbx), %rbx
	movq	(%r13), %r14
	leaq	-24(%r14), %r15
	movq	_bot@GOTPCREL(%rip), %rcx
	movq	%r14, %rax
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_90
## BB#89:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_90:                                ## %cgetr.exit.i.i.i
	movq	%r15, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r15)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)          ## 8-byte Spill
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	_affir
	movq	8(%rbx), %rax
	movabsq	$72057594037927935, %rcx ## imm = 0xFFFFFFFFFFFFFF
	andq	%rcx, %rax
	cmpq	$3, %rax
	ja	LBB4_96
## BB#91:
	movq	16(%rbx), %rsi
	jne	LBB4_93
## BB#92:
	testq	%rsi, %rsi
	jns	LBB4_93
LBB4_96:                                ## %.critedge.i.i.i
	movq	(%r13), %rax
	leaq	-24(%rax), %rbp
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_98
## BB#97:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_98:                                ## %itor.exit.i.i.i
	movq	%rbp, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_affir
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	_divrr
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_affrr
	jmp	LBB4_99
LBB4_84:                                ## %cgetg.exit.i
	movq	%r14, 40(%rsp)          ## 8-byte Spill
	cmpq	$1, %rax
	jne	LBB4_103
## BB#85:
	movq	(%r13), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %r15
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_87
## BB#86:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_87:                                ## %itor.exit.i.i7
	movq	%r15, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r15)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_affir
	jmp	LBB4_104
LBB4_103:
	leaq	L_.str13(%rip), %rsi
	xorl	%r15d, %r15d
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
	jmp	LBB4_104
LBB4_33:
	movq	%rbp, %r13
	movq	8(%r14), %r12
	movq	16(%r14), %r15
	movq	_avma@GOTPCREL(%rip), %rbx
	movq	(%rbx), %r14
	leaq	-24(%r14), %rbp
	movq	_bot@GOTPCREL(%rip), %rcx
	movq	%r14, %rax
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_35
## BB#34:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_35:                                ## %cgetr.exit.i.i8
	movq	%rbp, %rsi
	movq	%rsi, (%rbx)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rsi)
	movq	(%rbx), %rbp
	movq	%r12, %rdi
	movq	%rsi, %rbx
	callq	_affir
	andq	8(%r15), %r13
	cmpq	$3, %r13
	ja	LBB4_41
## BB#36:
	movq	16(%r15), %rsi
	jne	LBB4_38
## BB#37:
	testq	%rsi, %rsi
	jns	LBB4_38
LBB4_41:                                ## %.critedge.i.i11
	movq	%rbp, %r14
	movq	_avma@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	leaq	-24(%rax), %rbp
	movq	_bot@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_43
## BB#42:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_43:                                ## %itor.exit.i.i12
	movq	%rbp, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	_affir
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_divrr
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_affrr
	movq	%r14, %rbp
	jmp	LBB4_44
LBB4_29:
	cmpq	$1, %rax
	movabsq	$288230376151711747, %rbp ## imm = 0x400000000000003
	jne	LBB4_48
## BB#30:
	movq	_avma@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %rbx
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_32
## BB#31:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_32:                                ## %itor.exit.i
	movq	%rbx, (%r15)
	movq	%rbp, (%rbx)
	movq	%r14, %rdi
	jmp	LBB4_5
LBB4_58:
	movq	8(%r15), %rbx
	movq	16(%r15), %rbp
	movq	(%rdx), %r14
	leaq	-24(%r14), %r15
	movq	%r14, %rax
	subq	(%r12), %rax
	cmpq	$23, %rax
	ja	LBB4_60
## BB#59:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, %r13
	callq	_pari_err
	movq	%r13, %rdx
LBB4_60:                                ## %cgetr.exit.i.i14
	movq	%r15, (%rdx)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r15)
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)          ## 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rbx
	movq	%rbx, %rsi
	callq	_affir
	movabsq	$72057594037927935, %r13 ## imm = 0xFFFFFFFFFFFFFF
	andq	8(%rbp), %r13
	cmpq	$3, %r13
	ja	LBB4_66
## BB#61:
	movq	16(%rbp), %rsi
	jne	LBB4_63
## BB#62:
	testq	%rsi, %rsi
	jns	LBB4_63
LBB4_66:                                ## %.critedge.i.i17
	movq	%rbx, %r14
	movq	_avma@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	leaq	-24(%rax), %rbx
	subq	(%r12), %rax
	cmpq	$23, %rax
	ja	LBB4_68
## BB#67:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_68:                                ## %itor.exit.i.i18
	movq	%rbx, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbx)
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_affir
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rdi, %rbx
	callq	_divrr
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_affrr
	movq	%r13, %rsi
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	jmp	LBB4_69
LBB4_54:                                ## %cgetg.exit
	cmpq	$1, %rax
	jne	LBB4_73
## BB#55:
	movq	(%rdx), %rax
	leaq	-24(%rax), %rbx
	subq	(%r12), %rax
	cmpq	$23, %rax
	ja	LBB4_57
## BB#56:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rdx, %rbp
	callq	_pari_err
	movq	%rbp, %rdx
LBB4_57:                                ## %itor.exit.i3
	movq	%rbx, (%rdx)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbx)
	movq	%r15, %rdi
	movq	%rdx, %rbp
	movq	%rbx, %rsi
	callq	_affir
	jmp	LBB4_74
LBB4_93:                                ## %.critedge1.i.i.i
	movq	%r15, %rdi
	callq	_divrs
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_affrr
	cmpq	$0, 8(%rbx)
	jns	LBB4_99
## BB#94:
	movq	-16(%r14), %rax
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jbe	LBB4_99
## BB#95:
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, -16(%r14)
LBB4_99:                                ## %fractor.exit.i
	movq	32(%rsp), %rax          ## 8-byte Reload
	movq	%rax, (%r13)
LBB4_104:                               ## %cxcompotor.exit.i
	movq	48(%rsp), %rbp          ## 8-byte Reload
	movq	%r15, -16(%rbp)
	movq	16(%r12), %rbx
	movq	(%rbx), %rax
	shrq	$57, %rax
	cmpq	$4, %rax
	je	LBB4_111
## BB#105:                              ## %cxcompotor.exit.i
	cmpq	$2, %rax
	jne	LBB4_106
## BB#123:
	movq	(%r13), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %r15
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_125
## BB#124:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_125:                               ## %rtor.exit.i2.i
	movq	%r15, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r15)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_affrr
	jmp	LBB4_110
LBB4_111:
	movq	8(%rbx), %rbp
	movq	16(%rbx), %r15
	movq	(%r13), %rbx
	leaq	-24(%rbx), %r12
	movq	_bot@GOTPCREL(%rip), %r14
	movq	%rbx, %rax
	subq	(%r14), %rax
	cmpq	$23, %rax
	ja	LBB4_113
## BB#112:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_113:                               ## %cgetr.exit.i.i5.i
	movq	%r12, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r12)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)          ## 8-byte Spill
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	_affir
	movabsq	$72057594037927935, %r13 ## imm = 0xFFFFFFFFFFFFFF
	andq	8(%r15), %r13
	cmpq	$3, %r13
	ja	LBB4_119
## BB#114:
	movq	16(%r15), %rsi
	jne	LBB4_116
## BB#115:
	testq	%rsi, %rsi
	jns	LBB4_116
LBB4_119:                               ## %.critedge.i.i8.i
	movq	_avma@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	leaq	-24(%rax), %rbx
	subq	(%r14), %rax
	cmpq	$23, %rax
	ja	LBB4_121
## BB#120:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rcx, %rbp
	callq	_pari_err
	movq	%rbp, %rcx
LBB4_121:                               ## %itor.exit.i.i9.i
	movq	%rbx, (%rcx)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%rbx)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rcx, %rbp
	callq	_affir
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_divrr
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	_affrr
	jmp	LBB4_122
LBB4_106:                               ## %cxcompotor.exit.i
	cmpq	$1, %rax
	jne	LBB4_126
## BB#107:
	movq	(%r13), %rax
	movq	_bot@GOTPCREL(%rip), %rcx
	leaq	-24(%rax), %r15
	subq	(%rcx), %rax
	cmpq	$23, %rax
	ja	LBB4_109
## BB#108:
	movl	$14, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_109:                               ## %itor.exit.i1.i
	movq	%r15, (%r13)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	movq	%rax, (%r15)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_affir
LBB4_110:                               ## %cxcompotor.exit
	movq	%r15, -8(%rbp)
	movq	40(%rsp), %rbx          ## 8-byte Reload
	jmp	LBB4_130
LBB4_126:
	leaq	L_.str13(%rip), %rsi
	xorl	%ebx, %ebx
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
	movq	%rbx, -8(%rbp)
	movq	40(%rsp), %rbx          ## 8-byte Reload
	jmp	LBB4_130
LBB4_116:                               ## %.critedge1.i.i7.i
	movq	%r12, %rdi
	callq	_divrs
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	_affrr
	cmpq	$0, 8(%r15)
	movq	_avma@GOTPCREL(%rip), %rbp
	jns	LBB4_122
## BB#117:
	movq	-16(%rbx), %rax
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jbe	LBB4_122
## BB#118:
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, -16(%rbx)
LBB4_122:                               ## %fractor.exit10.i
	movq	32(%rsp), %rax          ## 8-byte Reload
	movq	%rax, (%rbp)
	movq	48(%rsp), %rax          ## 8-byte Reload
	movq	%r12, -8(%rax)
	movq	40(%rsp), %rbx          ## 8-byte Reload
	jmp	LBB4_130
LBB4_48:
	leaq	L_.str13(%rip), %rsi
	jmp	LBB4_129
LBB4_73:
	movq	%rdx, %rbp
	leaq	L_.str13(%rip), %rsi
	xorl	%ebx, %ebx
	movl	$11, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_74:                                ## %cxcompotor.exit6
	movq	%rbp, %rsi
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	jmp	LBB4_75
LBB4_38:                                ## %.critedge1.i.i10
	movq	%rbx, %rdi
	callq	_divrs
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_affrr
	cmpq	$0, 8(%r15)
	movq	_avma@GOTPCREL(%rip), %r13
	jns	LBB4_44
## BB#39:
	movq	-16(%r14), %rax
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jbe	LBB4_44
## BB#40:
	movabsq	$-9223372036854775808, %rcx ## imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, -16(%r14)
	movq	%rbp, (%r13)
	jmp	LBB4_130
LBB4_44:                                ## %fractor.exit13
	movq	%rbp, (%r13)
	jmp	LBB4_130
LBB4_63:                                ## %.critedge1.i.i16
	movq	%rbx, %rdi
	callq	_divrs
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_affrr
	cmpq	$0, 8(%rbp)
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	movq	_avma@GOTPCREL(%rip), %r13
	movq	%r13, %rsi
	jns	LBB4_69
## BB#64:
	movq	-16(%r14), %rax
	cmpq	%rcx, %rax
	jbe	LBB4_69
## BB#65:
	movabsq	$-9223372036854775808, %rdx ## imm = 0x8000000000000000
	xorq	%rdx, %rax
	movq	%rax, -16(%r14)
LBB4_69:                                ## %fractor.exit19
	movq	32(%rsp), %rax          ## 8-byte Reload
	movq	%rax, (%rsi)
LBB4_75:                                ## %cxcompotor.exit6
	movq	%rbx, 32(%rsp)          ## 8-byte Spill
	movq	8(%rbx), %rbp
	andq	%rcx, %rbp
	movq	(%rsi), %rbx
	leaq	-16(%rbx), %r15
	movq	%rbx, %rax
	subq	(%r12), %rax
	cmpq	$15, %rax
	ja	LBB4_77
## BB#76:
	movl	$14, %edi
	xorl	%eax, %eax
	movq	%rsi, %r12
	movq	%rcx, %r13
	callq	_pari_err
	movq	%r13, %rcx
	movq	%r12, %rsi
LBB4_77:                                ## %cgetr.exit.i
	movq	%r15, (%rsi)
	movabsq	$288230376151711747, %rax ## imm = 0x400000000000003
	decq	%rax
	movq	%rax, (%r15)
	addq	$-64, %rbp
	cmpq	%rcx, %rbp
	jbe	LBB4_79
## BB#78:
	leaq	L_.str14(%rip), %rsi
	movl	$15, %edi
	xorl	%eax, %eax
	callq	_pari_err
LBB4_79:                                ## %real_0_bit.exit
	movq	%rbp, -8(%rbx)
	movq	48(%rsp), %rax          ## 8-byte Reload
	movq	%r15, -16(%rax)
	movq	32(%rsp), %rcx          ## 8-byte Reload
	movq	%rcx, -8(%rax)
	movq	40(%rsp), %rbx          ## 8-byte Reload
	jmp	LBB4_130
	.cfi_endproc
	.align	2, 0x90
L4_0_set_2 = LBB4_2-LJTI4_0
L4_0_set_18 = LBB4_18-LJTI4_0
L4_0_set_128 = LBB4_128-LJTI4_0
L4_0_set_6 = LBB4_6-LJTI4_0
L4_0_set_22 = LBB4_22-LJTI4_0
L4_0_set_127 = LBB4_127-LJTI4_0
LJTI4_0:
	.long	L4_0_set_2
	.long	L4_0_set_18
	.long	L4_0_set_128
	.long	L4_0_set_6
	.long	L4_0_set_128
	.long	L4_0_set_22
	.long	L4_0_set_128
	.long	L4_0_set_127

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"qfminim"

L_.str1:                                ## @.str1
	.asciz	"lg()"

L_.str2:                                ## @.str2
	.asciz	"qfminim0"

L_.str3:                                ## @.str3
	.asciz	"minim0"

L_.str4:                                ## @.str4
	.asciz	"bound = 0 in minim2"

L_.str5:                                ## @.str5
	.asciz	"not a definite form in minim0"

L_.str6:                                ## @.str6
	.asciz	"not a positive definite form in minim0"

L_.str7:                                ## @.str7
	.asciz	"negative number of vectors in minim0"

L_.str8:                                ## @.str8
	.asciz	"."

L_.str9:                                ## @.str9
	.asciz	"*"

L_.str10:                               ## @.str10
	.asciz	"minim0, rank>=%ld"

L_.str11:                               ## @.str11
	.asciz	"\n"

L_.str12:                               ## @.str12
	.asciz	"gtofp"

L_.str13:                               ## @.str13
	.asciz	"cxcompotor"

L_.str14:                               ## @.str14
	.asciz	"expo()"

L_.str15:                               ## @.str15
	.asciz	"t_INT-->t_INT assignment"

L_.str17:                               ## @.str17
	.asciz	"t_INT-->long assignment"


.subsections_via_symbols
