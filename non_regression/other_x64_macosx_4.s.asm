	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_minim_alloc
_minim_alloc:
	pushq     %rbp
Ltmp0:
	pushq     %r15
Ltmp1:
	pushq     %r14
Ltmp2:
	pushq     %r13
Ltmp3:
	pushq     %r12
Ltmp4:
	pushq     %rbx
Ltmp5:
	subq      $40, %rsp
Ltmp6:
Ltmp7:
Ltmp8:
Ltmp9:
Ltmp10:
Ltmp11:
Ltmp12:
	movq      %r9, 32(%rsp)
	movq      %r8, 24(%rsp)
	movq      %rcx, 16(%rsp)
	movq      %rdx, 8(%rsp)
	movq      %rsi, %r14
	movq      %rdi, %rbx
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rax
	leaq      0(,%rbx,8), %r15
	movq      %rax, %rbp
	subq      %r15, %rbp
	movq      _bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rbx, %rax
	jae       LBB0_2
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_2:
	movq      %rbx, %r12
	negq      %r12
	movq      %rbp, (%r13)
	movq      %rbx, %rax
	shrq      $56, %rax
	je        LBB0_4
	leaq      L_.str1(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_4:
	movq      $3170534137668829184, %rax
	orq       %rbx, %rax
	movq      %rax, (%rbp)
	movq      8(%rsp), %rax
	movq      %rbp, (%rax)
	movq      (%r13), %rax
	leaq      (%rax,%r12,8), %rbp
	movq      _bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rbx, %rax
	jae       LBB0_6
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_6:
	movq      %rbp, (%r13)
	movq      %rbp, (%r14)
	call      _init_dalloc
	movq      %r15, %rdi
	call      _dalloc
	movq      16(%rsp), %rcx
	movq      %rax, (%rcx)
	movq      %r15, %rdi
	call      _dalloc
	movq      24(%rsp), %rcx
	movq      %rax, (%rcx)
	movq      %r15, %rdi
	call      _dalloc
	movq      32(%rsp), %rcx
	movq      %rax, (%rcx)
	movl      $1, %ebp
	cmpq      $2, %rbx
	jl        LBB0_8
	.align 4, 0x90
LBB0_7:
	movq      %r15, %rdi
	call      _dalloc
	movq      (%r14), %rcx
	movq      %rax, (%rcx,%rbp,8)
	incq      %rbp
	cmpq      %rbp, %rbx
	jne       LBB0_7
LBB0_8:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_qfminim0
_qfminim0:
	pushq     %r15
Ltmp13:
	pushq     %r14
Ltmp14:
	pushq     %r13
Ltmp15:
	pushq     %r12
Ltmp16:
	pushq     %rbx
Ltmp17:
Ltmp18:
Ltmp19:
Ltmp20:
Ltmp21:
Ltmp22:
	movq      %r8, %r15
	movq      %rdx, %rbx
	movq      %rsi, %r14
	movq      %rdi, %r12
	cmpq      $2, %rcx
	je        LBB1_6
	cmpq      $1, %rcx
	jne       LBB1_2
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	movl      $1, %ecx
	movq      %r12, %rdi
	movq      %r14, %rsi
	jmp       LBB1_4
LBB1_6:
	movq      (%r12), %rax
	shrq      $57, %rax
	cmpq      $19, %rax
	je        LBB1_8
	leaq      L_.str(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB1_8:
	movq      $-1, %rdx
	testq     %rbx, %rbx
	je        LBB1_16
	movq      $-144115188075855872, %rax
	andq      (%rbx), %rax
	movq      $144115188075855872, %rcx
	cmpq      %rcx, %rax
	je        LBB1_11
	leaq      L_.str(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB1_11:
	movq      8(%rbx), %rax
	xorl      %edx, %edx
	movq      %rax, %r13
	sarq      $62, %r13
	je        LBB1_16
	movq      16(%rbx), %rbx
	movq      $72057594037927932, %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        LBB1_14
	testq     %rbx, %rbx
	jns       LBB1_15
LBB1_14:
	leaq      L_.str17(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB1_15:
	movq      %rbx, %rdx
	negq      %rdx
	testq     %r13, %r13
	cmovg     %rbx, %rdx
LBB1_16:
	xorl      %r8d, %r8d
	movq      %r12, %rdi
	movq      %r14, %rsi
	movq      %r15, %rcx
	call      _fincke_pohst
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB1_20
	leaq      L_.str(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $10, %edi
	jmp       LBB1_19
LBB1_2:
	testq     %rcx, %rcx
	jne       LBB1_18
	xorl      %ecx, %ecx
	movq      %r12, %rdi
	movq      %r14, %rsi
	movq      %rbx, %rdx
LBB1_4:
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       _minim0
LBB1_18:
	leaq      L_.str(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $6, %edi
LBB1_19:
	xorl      %eax, %eax
	call      _pari_err
LBB1_20:
	movq      %rbx, %rax
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.align 4, 0x90
_minim0:
	pushq     %rbp
Ltmp23:
	pushq     %r15
Ltmp24:
	pushq     %r14
Ltmp25:
	pushq     %r13
Ltmp26:
	pushq     %r12
Ltmp27:
	pushq     %rbx
Ltmp28:
	subq      $328, %rsp
Ltmp29:
Ltmp30:
Ltmp31:
Ltmp32:
Ltmp33:
Ltmp34:
Ltmp35:
	movq      %rcx, %r14
	movq      %rdx, 216(%rsp)
	movq      %rsi, %rbp
	movq      %rdi, %r15
	movq      $-144115188075855872, %r13
	movq      $144115188075855872, %rbx
	movq      $72057594037927935, %r12
	movq      (%r15), %rax
	movq      %rax, 144(%rsp)
	movq      %rax, %rcx
	andq      %r12, %rcx
	movq      %rcx, 168(%rsp)
	movq      _avma@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	movq      %rcx, 96(%rsp)
	shrq      $57, %rax
	cmpq      $19, %rax
	jne       LBB2_8
	cmpq      $1, 168(%rsp)
	je        LBB2_9
	cmpq      $1, 168(%rsp)
	jbe       LBB2_9
	movq      8(%r15), %rax
	movq      (%rax), %rax
	andq      %r12, %rax
	movq      168(%rsp), %rcx
LBB2_5:
	movq      %rcx, %rdx
	leaq      -1(%rdx), %rcx
	movq      %rax, %rsi
	.align 4, 0x90
LBB2_6:
	cmpq      $2, %rsi
	jl        LBB2_4
	movq      -8(%r15,%rdx,8), %rdi
	movq      -8(%rdi,%rsi,8), %rdi
	decq      %rsi
	movq      (%rdi), %rdi
	andq      %r13, %rdi
	cmpq      %rbx, %rdi
	je        LBB2_6
	jmp       LBB2_8
LBB2_4:
	cmpq      $2, %rcx
	jge       LBB2_5
	jmp       LBB2_9
LBB2_8:
	leaq      L_.str2(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_9:
	testq     %rbp, %rbp
	je        LBB2_10
	movq      %rbp, %rdi
	call      _gfloor
	movq      %rax, 176(%rsp)
	movq      (%rax), %rax
	andq      %r13, %rax
	cmpq      %rbx, %rax
	je        LBB2_13
	leaq      L_.str3(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
	jmp       LBB2_13
LBB2_10:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 176(%rsp)
LBB2_13:
	cmpq      $0, 216(%rsp)
	movl      $1, 156(%rsp)
	je        LBB2_16
	movq      216(%rsp), %rax
	movq      (%rax), %rax
	andq      %r13, %rax
	movl      $0, 156(%rsp)
	cmpq      %rbx, %rax
	je        LBB2_16
	leaq      L_.str3(%rip), %rsi
	movl      $0, 156(%rsp)
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_16:
	movq      %r13, %rdx
	xorl      %r13d, %r13d
	cmpq      $4, %r14
	jbe       LBB2_17
	movq      %r14, 192(%rsp)
	leaq      L_.str3(%rip), %rsi
	xorl      %eax, %eax
	movq      %rax, 160(%rsp)
	movl      $6, %edi
	xorl      %eax, %eax
	call      _pari_err
	xorl      %r13d, %r13d
	jmp       LBB2_47
LBB2_17:
	leaq      LJTI2_0(%rip), %rax
	movslq    (%rax,%r14,4), %rcx
	movq      %r14, 192(%rsp)
	addq      %rax, %rcx
	xorl      %eax, %eax
	movq      %rax, 160(%rsp)
	jmp       *%rcx
LBB2_28:
	movq      176(%rsp), %rax
	movq      8(%rax), %rax
	movq      %rax, %rbx
	sarq      $62, %rbx
	je        LBB2_33
	movq      176(%rsp), %rcx
	movq      16(%rcx), %r14
	movq      $72057594037927935, %rcx
	leaq      -3(%rcx), %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        LBB2_31
	testq     %r14, %r14
	jns       LBB2_32
LBB2_31:
	leaq      L_.str17(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_32:
	movq      %r14, %rcx
	negq      %rcx
	testq     %rbx, %rbx
	cmovg     %r14, %rcx
	testq     %rcx, %rcx
	jle       LBB2_33
	leaq      1(%rcx), %rbx
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %r14
	movq      %rcx, %rax
	movq      %rcx, 160(%rsp)
	notq      %rax
	leaq      (%r14,%rax,8), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %r14, %rcx
	subq      (%rax), %rcx
	shrq      $3, %rcx
	cmpq      %rbx, %rcx
	jae       LBB2_38
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_38:
	movq      %r13, (%rbp)
	movq      $72057594037927935, %rax
	cmpq      %rax, %rbx
	jbe       LBB2_40
	leaq      L_.str1(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_40:
	movq      $3170534137668829184, %rax
	orq       %rax, %rbx
	movq      %rbx, (%r13)
	movq      160(%rsp), %rax
	leaq      0(,%rax,8), %rsi
	subq      %rsi, %r14
	movq      %r14, %rdi
	call      ___bzero
	movq      192(%rsp), %rax
	cmpq      $4, %rax
	jne       LBB2_41
	movl      $1, %esi
	movq      176(%rsp), %rdi
	call      _shifti
	movq      %rax, %rcx
	movq      $72057594037927935, %r12
	jmp       LBB2_43
LBB2_33:
	movq      _avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -8(%rax), %r13
	subq      (%rcx), %rax
	cmpq      $7, %rax
	ja        LBB2_35
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_35:
	movq      %r13, (%rbx)
	movq      $3170534137668829184, %rax
	incq      %rax
	movq      %rax, (%r13)
	jmp       LBB2_351
LBB2_25:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -32(%rax), %r13
	subq      (%rcx), %rax
	cmpq      $31, %rax
	ja        LBB2_27
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_27:
	movq      %r13, (%rbp)
	movq      $2449958197289549825, %rax
	leaq      3(%rax), %rax
	jmp       LBB2_24
LBB2_18:
	movq      176(%rsp), %rax
	movq      (%rax), %rax
	andq      %rdx, %rax
	movq      $144115188075855872, %rcx
	cmpq      %rcx, %rax
	jne       LBB2_21
	movq      $4611686018427387904, %rax
	movq      176(%rsp), %rcx
	cmpq      %rax, 8(%rcx)
	jae       LBB2_21
	leaq      L_.str4(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_21:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r13
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB2_23
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_23:
	movq      %r13, (%rbp)
	movq      $2449958197289549825, %rax
	leaq      2(%rax), %rax
LBB2_24:
	movq      %rax, (%r13)
	xorl      %eax, %eax
	movq      %rax, 160(%rsp)
LBB2_47:
	movq      $2738188573441261568, %r14
	movq      168(%rsp), %rbp
	cmpq      $1, %rbp
	jne       LBB2_59
	movq      192(%rsp), %rcx
	leaq      -3(%rcx), %rax
	cmpq      $2, %rax
	jb        LBB2_351
	cmpq      $2, %rcx
	jne       LBB2_50
	movq      _avma@GOTPCREL(%rip), %rax
	movq      96(%rsp), %rcx
	movq      %rcx, (%rax)
	jmp       LBB2_324
LBB2_59:
	movq      %r13, 128(%rsp)
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %r14
	leaq      272(%rsp), %rsi
	leaq      320(%rsp), %rdx
	leaq      288(%rsp), %rcx
	leaq      280(%rsp), %r8
	leaq      296(%rsp), %r9
	movq      %rbp, %rdi
	call      _minim_alloc
	movq      (%r13), %rax
	movq      %rax, 208(%rsp)
	movq      %r15, %rdi
	call      _lllgramint
	movq      %rax, %rbx
	movq      (%rbx), %rax
	andq      %r12, %rax
	cmpq      %rbp, %rax
	je        LBB2_61
	leaq      L_.str5(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_61:
	movq      %r14, 80(%rsp)
	movq      %r15, %rdi
	movq      %rbx, %rsi
	movq      %rbx, 56(%rsp)
	call      _qf_apply_ZM
	movq      %rax, %rbx
	movq      %rbx, 240(%rsp)
	movq      (%rbx), %rax
	movq      %rax, 200(%rsp)
	movq      %rax, %rbp
	andq      %r12, %rbp
	movq      %rbp, 256(%rsp)
	movq      (%r13), %rdx
	movq      %rdx, 248(%rsp)
	leaq      0(,%rbp,8), %rax
	movq      %rdx, %r14
	subq      %rax, %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %rdx, %rax
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbp, %rax
	jae       LBB2_63
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_63:
	movq      $-72057594037927936, %rax
	movq      %r14, (%r13)
	leaq      -1(%rax), %rcx
	movq      %rcx, 88(%rsp)
	movq      (%rbx), %rax
	andq      %rcx, %rax
	movq      %rax, (%r14)
	movq      %r14, 232(%rsp)
	cmpq      $2, %rbp
	jb        LBB2_71
	movq      %rbp, %r13
	.align 4, 0x90
LBB2_65:
	movq      -8(%rbx,%r13,8), %r15
	movq      (%r15), %rbp
	andq      %r12, %rbp
	movq      _avma@GOTPCREL(%rip), %r12
	movq      (%r12), %rbx
	leaq      0(,%rbp,8), %rax
	movq      %rbx, %r14
	subq      %rax, %r14
	movq      %rbx, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbp, %rax
	jae       LBB2_67
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_67:
	decq      %r13
	movq      %r14, (%r12)
	movq      %rbp, %rax
	movq      $2594073385365405696, %rcx
	orq       %rcx, %rax
	movq      %rax, (%r14)
	cmpq      $2, %rbp
	jb        LBB2_70
	addq      $-8, %rbx
	.align 4, 0x90
LBB2_69:
	movq      -8(%r15,%rbp,8), %rdi
	decq      %rbp
	call      _gtofp
	movq      %rax, (%rbx)
	addq      $-8, %rbx
	cmpq      $1, %rbp
	jg        LBB2_69
LBB2_70:
	movq      %r13, %rax
	movq      256(%rsp), %rbp
	subq      %rbp, %rax
	movq      248(%rsp), %rcx
	movq      %r14, (%rcx,%rax,8)
	cmpq      $1, %r13
	movq      $72057594037927935, %r12
	movq      240(%rsp), %rbx
	jg        LBB2_65
LBB2_71:
	movq      %rbp, 256(%rsp)
	movq      232(%rsp), %rdi
	call      _qfgaussred_positive
	movq      %rax, %r13
	movq      %r13, 312(%rsp)
	testq     %r13, %r13
	jne       LBB2_85
	movq      %rbx, %rdi
	call      _qfgaussred_positive
	movq      %rax, %rbp
	movq      %rbp, 232(%rsp)
	movq      %rbp, 312(%rsp)
	testq     %rbp, %rbp
	movq      $72057594037927935, %rbx
	jne       LBB2_74
	leaq      L_.str6(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_74:
	movq      (%rbp), %rdx
	andq      %rbx, %rdx
	movq      %rdx, 240(%rsp)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      %rcx, 224(%rsp)
	leaq      0(,%rdx,8), %rax
	movq      %rcx, %r13
	subq      %rax, %r13
	movq      %rcx, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rdx, %rax
	jae       LBB2_76
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_76:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r13, (%rax)
	movq      (%rbp), %rax
	andq      88(%rsp), %rax
	movq      %rax, (%r13)
	cmpq      $2, 240(%rsp)
	jb        LBB2_84
	movq      240(%rsp), %r12
	.align 4, 0x90
LBB2_78:
	movq      -8(%rbp,%r12,8), %rbp
	movq      (%rbp), %r14
	movq      $72057594037927935, %rax
	andq      %rax, %r14
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %r15
	leaq      0(,%r14,8), %rax
	movq      %r15, %rbx
	subq      %rax, %rbx
	movq      %r15, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r14, %rax
	jae       LBB2_80
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_80:
	decq      %r12
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %rbx, (%rax)
	movq      %r14, %rax
	movq      $2594073385365405696, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbx)
	cmpq      $2, %r14
	jb        LBB2_83
	addq      $-8, %r15
	.align 4, 0x90
LBB2_82:
	movq      -8(%rbp,%r14,8), %rdi
	decq      %r14
	call      _gtofp
	movq      %rax, (%r15)
	addq      $-8, %r15
	cmpq      $1, %r14
	jg        LBB2_82
LBB2_83:
	movq      %r12, %rax
	subq      240(%rsp), %rax
	movq      224(%rsp), %rcx
	movq      %rbx, (%rcx,%rax,8)
	cmpq      $1, %r12
	movq      232(%rsp), %rbp
	jg        LBB2_78
LBB2_84:
	movq      %r13, 312(%rsp)
LBB2_85:
	movq      168(%rsp), %rax
	leaq      -1(%rax), %rcx
	cmpq      $2, %rax
	jb        LBB2_91
	movq      %rcx, %r14
	movq      296(%rsp), %rax
	movq      %rax, 240(%rsp)
	movq      272(%rsp), %r12
	movl      $1, %ebp
	xorl      %r15d, %r15d
	jmp       LBB2_87
	.align 4, 0x90
LBB2_90:
	movq      %rcx, %r14
	incq      %r15
	incq      %rbp
	movq      312(%rsp), %r13
LBB2_87:
	movq      (%r13,%rbp,8), %rax
	movq      (%rax,%rbp,8), %rdi
	call      _rtodbl
	movq      240(%rsp), %rax
	movsd     %xmm0, (%rax,%rbp,8)
	cmpq      $2, %rbp
	movl      $0, %ebx
	jl        LBB2_89
	.align 4, 0x90
LBB2_88:
	movq      312(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	movq      8(%rax,%rbx,8), %rdi
	call      _rtodbl
	movq      8(%r12,%rbx,8), %rax
	movsd     %xmm0, (%rax,%rbp,8)
	incq      %rbx
	cmpq      %rbx, %r15
	jne       LBB2_88
LBB2_89:
	movq      %r14, %rcx
	cmpq      %rcx, %rbp
	jl        LBB2_90
LBB2_91:
	cmpq      $2, 192(%rsp)
	movq      _avma@GOTPCREL(%rip), %r13
	movq      %r13, %r12
	movq      $72057594037927935, %r14
	je        LBB2_95
	movq      %rcx, %rbx
	movq      176(%rsp), %rdx
	movq      (%rdx), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $288230376151711744, %rcx
	cmpq      %rcx, %rax
	movq      %rdx, %rdi
	je        LBB2_101
	movq      $144115188075855872, %rcx
	cmpq      %rcx, %rax
	movq      %rbx, %rcx
	jne       LBB2_100
	movq      $4611686018427387904, %rax
	movq      176(%rsp), %rdx
	cmpq      %rax, 8(%rdx)
	jae       LBB2_100
LBB2_95:
	movq      %rcx, %r15
	movl      $1, %eax
	subq      256(%rsp), %rax
	movq      248(%rsp), %rbx
	movq      (%rbx,%rax,8), %rax
	movq      8(%rax), %rdi
	call      _rtodbl
	movapd    %xmm0, %xmm1
	movq      168(%rsp), %r13
	cmpq      $3, %r13
	jae       LBB2_97
	movapd    %xmm1, %xmm0
	jmp       LBB2_99
LBB2_97:
	movq      200(%rsp), %rcx
	andq      %r14, %rcx
	movl      $2, %eax
	subq      %rcx, %rax
	leaq      (%rbx,%rax,8), %rbx
	movl      $1, %ebp
	.align 4, 0x90
LBB2_98:
	movsd     %xmm1, 256(%rsp)
	movq      -8(%rbx,%rbp,8), %rax
	movq      8(%rax,%rbp,8), %rdi
	call      _rtodbl
	minsd     256(%rsp), %xmm0
	incq      %rbp
	cmpq      %r15, %rbp
	movapd    %xmm0, %xmm1
	jl        LBB2_98
LBB2_99:
	movsd     %xmm0, 256(%rsp)
	movq      %r15, %rbx
	call      _dbltor
	movq      %rax, %rdi
	call      _roundr
	movsd     256(%rsp), %xmm1
	movq      %rax, 176(%rsp)
	movsd     LCPI2_0(%rip), %xmm0
	movsd     %xmm0, 200(%rsp)
	jmp       LBB2_102
LBB2_50:
	cmpq      $1, %rcx
	movq      _avma@GOTPCREL(%rip), %rbp
	jne       LBB2_56
	movq      96(%rsp), %rcx
	movq      %rcx, (%rbp)
	leaq      -8(%rcx), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	subq      (%rax), %rcx
	cmpq      $7, %rcx
	ja        LBB2_53
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_53:
	movq      %r13, (%rbp)
	jmp       LBB2_54
LBB2_100:
	movq      %rcx, %rbx
	movq      (%r12), %rbp
	movq      176(%rsp), %rdi
	call      _gtofp
	movq      %rax, %rdi
	movq      %rbp, (%r12)
LBB2_101:
	call      _rtodbl
	movapd    %xmm0, %xmm1
	xorpd     %xmm0, %xmm0
	movsd     %xmm0, 200(%rsp)
	movq      168(%rsp), %r13
LBB2_102:
	movsd     LCPI2_1(%rip), %xmm0
	mulsd     %xmm1, %xmm0
	movsd     %xmm0, 248(%rsp)
	ucomisd   %xmm1, %xmm0
	jne       LBB2_104
	jp        LBB2_104
	leaq      L_.str3(%rip), %rsi
	movl      $10, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_104:
	xorl      %eax, %eax
	movq      %rax, 112(%rsp)
	movq      192(%rsp), %rax
	cmpq      $2, %rax
	jne       LBB2_105
	movq      _bot@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      176(%rsp), %rbp
	cmpq      %rax, %rbp
	movq      %rbx, %r10
	jae       LBB2_120
	movq      %rbp, 240(%rsp)
	movq      208(%rsp), %rbx
	jmp       LBB2_136
LBB2_105:
	testq     %rax, %rax
	movq      %rbx, %r10
	jne       LBB2_106
	movl      $200, %edx
	cmpl      $0, 156(%rsp)
	jne       LBB2_115
	movq      216(%rsp), %rax
	movq      8(%rax), %rax
	xorl      %edx, %edx
	movq      %rax, %rbx
	sarq      $62, %rbx
	je        LBB2_115
	movq      216(%rsp), %rcx
	movq      16(%rcx), %r15
	leaq      -3(%r14), %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        LBB2_111
	testq     %r15, %r15
	jns       LBB2_112
LBB2_111:
	leaq      L_.str17(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r10, %rbp
	call      _pari_err
	movq      %rbp, %r10
LBB2_112:
	movq      %r15, %rax
	negq      %rax
	testq     %rbx, %rbx
	cmovg     %r15, %rax
	testq     %rax, %rax
	movq      %rax, %rbx
	jns       LBB2_114
	leaq      L_.str7(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	movq      %r10, %rbp
	call      _pari_err
	movq      %rbp, %r10
LBB2_114:
	movq      %rbx, %rdx
LBB2_115:
	movq      %rdx, 160(%rsp)
	leaq      1(%rdx), %rax
	movq      (%r12), %rcx
	notq      %rdx
	leaq      (%rcx,%rdx,8), %rbx
	movq      _bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rcx
	shrq      $3, %rcx
	cmpq      %rax, %rcx
	jae       LBB2_117
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r10, %r14
	call      _pari_err
	movq      %r14, %r10
LBB2_117:
	movq      %rbx, (%r12)
	movq      %rbx, 304(%rsp)
	xorl      %eax, %eax
	movq      %rax, 112(%rsp)
	movsd     248(%rsp), %xmm4
	jmp       LBB2_147
LBB2_120:
	movq      208(%rsp), %rbx
	cmpq      %rbp, %rbx
	jbe       LBB2_121
	movq      _top@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rbp
	jae       LBB2_123
	movq      8(%rbp), %r11
	movq      %r11, %rax
	andq      %r14, %rax
	leaq      0(,%rax,8), %rdx
	movq      %rbx, %r13
	subq      %rdx, %r13
	cmpq      $2, %rax
	jb        LBB2_135
	movq      %r11, %rsi
	movq      $72057594037927935, %rdx
	andq      %rdx, %rsi
	movq      %rsi, %rcx
	negq      %rcx
	cmpq      $-3, %rcx
	movq      $-2, %r14
	movq      $-2, %rdx
	cmovg     %rcx, %rdx
	addq      %rsi, %rdx
	cmpq      $-1, %rdx
	movq      %rax, %rdi
	je        LBB2_133
	movq      %rbp, %r15
	incq      %rdx
	cmpq      $-3, %rcx
	cmovg     %rcx, %r14
	xorl      %r9d, %r9d
	movq      %rdx, %r8
	andq      $-4, %r8
	movq      %rax, %rdi
	je        LBB2_132
	movq      %r14, %rdi
	notq      %rdi
	movq      %r10, %rbp
	leaq      (%r15,%rdi,8), %r10
	leaq      -8(%rbx), %rdi
	xorl      %r9d, %r9d
	cmpq      %r10, %rdi
	movq      %rbp, %r10
	ja        LBB2_129
	leaq      -8(%r15,%rsi,8), %rdi
	addq      %rsi, %r14
	notq      %r14
	leaq      (%rbx,%r14,8), %rbp
	cmpq      %rbp, %rdi
	movq      %rax, %rdi
	jbe       LBB2_132
LBB2_129:
	movq      %rax, %rdi
	subq      %r8, %rdi
	cmpq      $-3, %rcx
	movq      $-2, %rbp
	cmovg     %rcx, %rbp
	leaq      1(%rbp,%rsi), %rbp
	andq      $-4, %rbp
	movdqa    LCPI2_2(%rip), %xmm0
	movq      %rbx, %rcx
LBB2_130:
	movd      %rsi, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm0, %xmm1
	movd      %xmm1, %rbx
	movupd    -8(%r15,%rbx,8), %xmm1
	movdqu    -24(%r15,%rbx,8), %xmm2
	subq      %rax, %rbx
	movupd    %xmm1, -8(%rcx,%rbx,8)
	movdqu    %xmm2, -24(%rcx,%rbx,8)
	addq      $-4, %rsi
	addq      $-4, %rbp
	jne       LBB2_130
	movq      %rcx, %rbx
	movq      %r8, %r9
LBB2_132:
	cmpq      %r9, %rdx
	movq      %r15, %rbp
	je        LBB2_135
LBB2_133:
	notq      %r11
	movq      $2233785415175766016, %rdx
	orq       %r11, %rdx
	leaq      (%rbx,%rdx,8), %rcx
	.align 4, 0x90
LBB2_134:
	movq      -8(%rbp,%rdi,8), %rdx
	movq      %rdx, (%rcx,%rdi,8)
	leaq      -1(%rdi), %rdi
	cmpq      $1, %rdi
	jg        LBB2_134
LBB2_135:
	movq      $144115188075855872, %rcx
	orq       %rcx, %rax
	movq      %rax, (%r13)
	movq      _bot@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %r13, %rbx
	movq      %r13, 240(%rsp)
	jmp       LBB2_136
LBB2_106:
	movsd     248(%rsp), %xmm4
	jmp       LBB2_147
LBB2_56:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 16(%r13)
	movq      %rax, 8(%r13)
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -8(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $7, %rax
	ja        LBB2_58
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_58:
	movq      %rbx, (%rbp)
	incq      %r14
	movq      %r14, (%rbx)
	movq      %rbx, 24(%r13)
	jmp       LBB2_351
LBB2_41:
	movq      $72057594037927935, %r12
	movq      176(%rsp), %rcx
LBB2_43:
	movq      (%rcx), %rax
	movq      $-144115188075855872, %rdx
	andq      %rdx, %rax
	movq      $144115188075855872, %rdx
	cmpq      %rdx, %rax
	jne       LBB2_44
	movq      $4611686018427387904, %rax
	cmpq      %rax, 8(%rcx)
	movq      %rcx, 176(%rsp)
	jae       LBB2_47
	jmp       LBB2_351
LBB2_44:
	movq      %rcx, 176(%rsp)
	jmp       LBB2_47
LBB2_121:
	movq      %rbp, 240(%rsp)
	jmp       LBB2_136
LBB2_123:
	movq      %rbp, 240(%rsp)
LBB2_136:
	movq      %r10, 120(%rsp)
	movq      %rbx, (%r12)
	movq      %r12, %r13
	movq      %r10, %r14
	imulq     168(%rsp), %r14
	sarq      $1, %r14
	leaq      1(%r14), %rbp
	movq      %r14, %r12
	notq      %r12
	leaq      (%rbx,%r12,8), %r15
	movq      %rbx, %rcx
	subq      %rax, %rcx
	shrq      $3, %rcx
	cmpq      %rbp, %rcx
	jae       LBB2_138
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_138:
	movq      %r15, (%r13)
	movq      $72057594037927935, %rax
	cmpq      %rax, %rbp
	jbe       LBB2_140
	leaq      L_.str1(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_140:
	movq      $3170534137668829184, %rax
	orq       %rbp, %rax
	movq      %rax, 256(%rsp)
	movq      %rax, (%r15)
	testq     %r14, %r14
	jle       LBB2_142
	leaq      0(,%r14,8), %rsi
	subq      %rsi, %rbx
	movq      %rbx, %rdi
	call      ___bzero
LBB2_142:
	movq      %r14, 160(%rsp)
	movq      %r15, 304(%rsp)
	movq      (%r13), %rax
	leaq      (%rax,%r12,8), %rcx
	movq      %rcx, 112(%rsp)
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbp, %rax
	jae       LBB2_144
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_144:
	movq      112(%rsp), %rax
	movq      %r13, %r12
	movq      %rax, (%r12)
	movq      $72057594037927935, %rax
	cmpq      %rax, %rbp
	jbe       LBB2_146
	leaq      L_.str1(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_146:
	movq      112(%rsp), %rax
	movq      256(%rsp), %rcx
	movq      %rcx, (%rax)
	movq      240(%rsp), %rax
	movq      %rax, 176(%rsp)
	movq      120(%rsp), %r10
	movsd     248(%rsp), %xmm4
	movq      168(%rsp), %r13
LBB2_147:
	movq      (%r12), %rcx
	movq      %rcx, 136(%rsp)
	movq      _bot@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	subq      %rbp, %rcx
	shrq      $1, %rcx
	movq      280(%rsp), %r14
	movq      $0, -8(%r14,%r13,8)
	movq      288(%rsp), %r9
	movq      $0, -8(%r9,%r13,8)
	movq      296(%rsp), %r15
	movapd    %xmm4, %xmm0
	divsd     -8(%r15,%r13,8), %xmm0
	sqrtsd    %xmm0, %xmm0
	cvttsd2si %xmm0, %rax
	movq      320(%rsp), %rbx
	movq      %rax, -8(%rbx,%r13,8)
	movq      %r13, 168(%rsp)
	xorl      %eax, %eax
	cmpq      $2, 192(%rsp)
	jne       LBB2_149
	movq      160(%rsp), %rdi
	movq      %r10, %r12
	movq      %rcx, %r13
	movq      %r9, 256(%rsp)
	call      _matid
	movq      256(%rsp), %r9
	movq      %r13, %rcx
	movsd     248(%rsp), %xmm4
	movq      %r12, %r10
LBB2_149:
	movq      %rax, 104(%rsp)
	addq      %rbp, %rcx
	movq      %rcx, 72(%rsp)
	movq      $72057594037927935, %rax
	movq      144(%rsp), %rcx
	andq      %rax, %rcx
	decq      %rcx
	movq      %rcx, 144(%rsp)
	movq      176(%rsp), %rbp
	leaq      8(%rbp), %rax
	movq      %rax, 64(%rsp)
	leaq      -16(%rbp), %rax
	movq      %rax, 48(%rsp)
	movdqa    LCPI2_2(%rip), %xmm3
	xorl      %eax, %eax
	movq      %rax, 184(%rsp)
	movq      %r10, %rax
	movq      %rax, 256(%rsp)
	movsd     200(%rsp), %xmm0
	jmp       LBB2_150
	.align 4, 0x90
LBB2_313:
	movq      320(%rsp), %rbx
	decq      8(%rbx)
	movq      280(%rsp), %r14
	movq      288(%rsp), %r9
	movq      296(%rsp), %r15
	movq      %rdi, %rax
	movq      %rax, 184(%rsp)
LBB2_150:
	movq      %rbx, 240(%rsp)
	movsd     %xmm4, 248(%rsp)
	movsd     %xmm0, 200(%rsp)
	movq      272(%rsp), %r13
	leaq      8(%r14), %rax
	movq      %rax, 232(%rsp)
	leaq      8(%r9), %rax
	movq      %rax, 224(%rsp)
	leaq      8(%r15), %rax
	movq      %rax, 216(%rsp)
	leaq      8(%rbx), %rax
	movq      %rax, 208(%rsp)
	.align 4, 0x90
LBB2_151:
	cmpq      $1, 256(%rsp)
	jle       LBB2_152
	movq      256(%rsp), %r12
	movq      $0, -8(%r14,%r12,8)
	cmpq      %r10, %r12
	jg        LBB2_156
	leaq      -1(%r12), %rax
	xorpd     %xmm0, %xmm0
	.align 4, 0x90
LBB2_155:
	movq      -8(%r13,%r12,8), %rcx
	xorps     %xmm1, %xmm1
	cvtsi2sdq 8(%rbx,%rax,8), %xmm1
	mulsd     8(%rcx,%rax,8), %xmm1
	addsd     %xmm1, %xmm0
	movsd     %xmm0, -8(%r14,%r12,8)
	incq      %rax
	cmpq      %r10, %rax
	jl        LBB2_155
LBB2_156:
	xorps     %xmm0, %xmm0
	cvtsi2sdq (%rbx,%r12,8), %xmm0
	addsd     (%r14,%r12,8), %xmm0
	mulsd     %xmm0, %xmm0
	mulsd     (%r15,%r12,8), %xmm0
	addsd     (%r9,%r12,8), %xmm0
	movsd     %xmm0, -8(%r9,%r12,8)
	movapd    %xmm4, %xmm1
	subsd     %xmm0, %xmm1
	divsd     -8(%r15,%r12,8), %xmm1
	xorps     %xmm0, %xmm0
	sqrtsd    %xmm1, %xmm0
	subsd     -8(%r14,%r12,8), %xmm0
	movq      %r10, %rbp
	movq      %r9, %rbx
	call      _floor
	movq      %rbx, %r9
	movq      240(%rsp), %rbx
	movsd     248(%rsp), %xmm4
	movq      %rbp, %r10
	cvttsd2si %xmm0, %rax
	movq      %rax, -8(%rbx,%r12,8)
	leaq      -1(%r12), %r12
	movq      %r12, 256(%rsp)
	movdqa    LCPI2_2(%rip), %xmm3
	jmp       LBB2_157
	.align 4, 0x90
LBB2_152:
	movq      256(%rsp), %rax
	movq      (%rbx,%rax,8), %rax
LBB2_157:
	xorps     %xmm0, %xmm0
	cvtsi2sd  %rax, %xmm0
	movq      256(%rsp), %rax
	addsd     (%r14,%rax,8), %xmm0
	mulsd     %xmm0, %xmm0
	mulsd     (%r15,%rax,8), %xmm0
	addsd     (%r9,%rax,8), %xmm0
	ucomisd   %xmm0, %xmm4
	jae       LBB2_161
	movq      256(%rsp), %rsi
	movq      232(%rsp), %rax
	leaq      (%rax,%rsi,8), %rax
	movq      224(%rsp), %rcx
	leaq      (%rcx,%rsi,8), %rcx
	movq      216(%rsp), %rdx
	leaq      (%rdx,%rsi,8), %rdx
	movq      208(%rsp), %rdi
	leaq      (%rdi,%rsi,8), %rsi
	xorl      %ebp, %ebp
	.align 4, 0x90
LBB2_159:
	movq      %rbp, %rdi
	movq      (%rsi,%rdi,8), %rbp
	decq      %rbp
	movq      %rbp, (%rsi,%rdi,8)
	xorps     %xmm0, %xmm0
	cvtsi2sd  %rbp, %xmm0
	addsd     (%rax,%rdi,8), %xmm0
	mulsd     %xmm0, %xmm0
	mulsd     (%rdx,%rdi,8), %xmm0
	addsd     (%rcx,%rdi,8), %xmm0
	leaq      1(%rdi), %rbp
	ucomisd   %xmm0, %xmm4
	jb        LBB2_159
	movq      256(%rsp), %rax
	leaq      1(%rax,%rdi), %rax
	movq      %rax, 256(%rsp)
LBB2_161:
	cmpq      $1, 256(%rsp)
	jg        LBB2_151
	movq      8(%rbx), %rax
	testq     %rax, %rax
	movsd     8(%r9), %xmm5
	jne       LBB2_164
	movsd     LCPI2_3(%rip), %xmm0
	ucomisd   %xmm5, %xmm0
	jae       LBB2_314
LBB2_164:
	movsd     %xmm4, 248(%rsp)
	xorps     %xmm0, %xmm0
	cvtsi2sd  %rax, %xmm0
	addsd     8(%r14), %xmm0
	mulsd     %xmm0, %xmm0
	mulsd     8(%r15), %xmm0
	addsd     %xmm0, %xmm5
	movsd     200(%rsp), %xmm0
	ucomisd   LCPI2_6(%rip), %xmm0
	movq      _avma@GOTPCREL(%rip), %r15
	jae       LBB2_165
	movq      %r10, %r13
	movq      (%r15), %r14
	movapd    %xmm5, %xmm0
	movsd     %xmm5, 232(%rsp)
	call      _dbltor
	movq      %rax, %rdi
	call      _roundr
	movq      %rax, %rbp
	movq      %rbp, %rdi
	movq      176(%rsp), %r12
	movq      %r12, %rsi
	call      _cmpii
	testl     %eax, %eax
	js        LBB2_227
	movq      %r14, (%r15)
	movq      192(%rsp), %rax
	movq      %r13, %r10
	movsd     200(%rsp), %xmm0
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	movq      184(%rsp), %r13
	movsd     232(%rsp), %xmm5
	jmp       LBB2_244
	.align 4, 0x90
LBB2_165:
	movq      192(%rsp), %rax
	cmpq      $1, %rax
	movsd     248(%rsp), %xmm4
	je        LBB2_166
	ucomisd   %xmm0, %xmm5
	jbe       LBB2_223
	movapd    %xmm5, %xmm0
	movq      184(%rsp), %r13
	jmp       LBB2_244
	.align 4, 0x90
LBB2_223:
	movq      184(%rsp), %r13
	jmp       LBB2_244
LBB2_227:
	movq      (%rbp), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $288230376151711744, %rcx
	cmpq      %rcx, %rax
	movq      %rbp, %rdi
	je        LBB2_229
	movq      (%r15), %r14
	movq      %rbp, %rdi
	call      _gtofp
	movq      %rax, %rdi
	movq      %r14, (%r15)
LBB2_229:
	call      _rtodbl
	movapd    %xmm0, %xmm4
	movq      8(%rbp), %r14
	movq      %r14, %r15
	movq      $72057594037927935, %rax
	movq      %rax, %rcx
	andq      %rcx, %r15
	movq      (%r12), %rax
	andq      %rcx, %rax
	cmpq      %r15, %rax
	jae       LBB2_231
	movl      $15, %edi
	xorl      %eax, %eax
	leaq      L_.str15(%rip), %rsi
	movsd     %xmm4, 248(%rsp)
	call      _pari_err
	movsd     248(%rsp), %xmm4
LBB2_231:
	movq      %r15, %rax
	decq      %rax
	movq      %r13, %r10
	movsd     200(%rsp), %xmm0
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     232(%rsp), %xmm5
	je        LBB2_243
	cmpq      $1, %r15
	je        LBB2_242
	leaq      -1(%r15), %r8
	leal      3(%r14), %ecx
	andq      $3, %rcx
	movq      %r8, %rdx
	subq      %rcx, %rdx
	jne       LBB2_235
	xorl      %edx, %edx
	jmp       LBB2_241
LBB2_235:
	leaq      8(%rbp), %rcx
	leaq      -8(%r12,%r15,8), %rsi
	cmpq      %rcx, %rsi
	ja        LBB2_238
	leaq      -8(%rbp,%r15,8), %rcx
	cmpq      64(%rsp), %rcx
	ja        LBB2_238
	xorl      %edx, %edx
	jmp       LBB2_241
LBB2_238:
	movapd    %xmm0, %xmm2
	subq      %rdx, %rax
	movq      48(%rsp), %rcx
	leaq      (%rcx,%r15,8), %rsi
	leaq      -16(%rbp,%r15,8), %rdi
	addl      $3, %r14d
	andq      $3, %r14
	negq      %r14
	leaq      -1(%r15,%r14), %rcx
	.align 4, 0x90
LBB2_239:
	movupd    -16(%rdi), %xmm0
	movupd    (%rdi), %xmm1
	movupd    %xmm1, (%rsi)
	movupd    %xmm0, -16(%rsi)
	addq      $-32, %rsi
	addq      $-32, %rdi
	addq      $-4, %rcx
	jne       LBB2_239
	movapd    %xmm2, %xmm0
LBB2_241:
	cmpq      %rdx, %r8
	je        LBB2_243
	.align 4, 0x90
LBB2_242:
	movq      (%rbp,%rax,8), %rcx
	movq      %rcx, (%r12,%rax,8)
	decq      %rax
	jne       LBB2_242
LBB2_243:
	mulsd     LCPI2_1(%rip), %xmm4
	movq      136(%rsp), %rax
	movq      _avma@GOTPCREL(%rip), %r15
	movq      %rax, (%r15)
	xorl      %r13d, %r13d
	movq      192(%rsp), %rax
	.align 4, 0x90
LBB2_244:
	leaq      1(%r13), %rdi
	cmpq      $4, %rax
	jbe       LBB2_246
	movq      %rax, 192(%rsp)
	jmp       LBB2_313
	.align 4, 0x90
LBB2_246:
	movq      %rax, 192(%rsp)
	leaq      LJTI2_1(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB2_247:
	cmpl      $0, 156(%rsp)
	je        LBB2_248
	movq      160(%rsp), %rbp
	cmpq      %rbp, %r13
	jl        LBB2_256
	movq      %r13, 184(%rsp)
	leaq      (%rbp,%rbp), %r14
	leaq      1(%rbp,%rbp), %rax
	movq      (%r15), %r12
	leaq      8(,%r14,8), %rcx
	movq      %r15, %r13
	movq      %r12, %r15
	subq      %rcx, %r15
	movq      %r12, %rcx
	movq      _bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rcx
	shrq      $3, %rcx
	cmpq      %rax, %rcx
	jae       LBB2_252
	movq      %rdi, 240(%rsp)
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r10, 120(%rsp)
	movsd     %xmm0, 200(%rsp)
	movsd     %xmm4, 248(%rsp)
	call      _pari_err
	movq      240(%rsp), %rdi
	movsd     248(%rsp), %xmm4
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     200(%rsp), %xmm0
	movq      120(%rsp), %r10
LBB2_252:
	movq      %r15, (%r13)
	testq     %rbp, %rbp
	jle       LBB2_255
	movq      %rbp, %rax
	shlq      $4, %rax
	subq      %rax, %r12
	xorl      %eax, %eax
	.align 4, 0x90
LBB2_254:
	movq      304(%rsp), %rcx
	movq      8(%rcx,%rax,8), %rcx
	movq      %rcx, (%r12,%rax,8)
	incq      %rax
	cmpq      %rax, %rbp
	jne       LBB2_254
LBB2_255:
	movq      %r15, 304(%rsp)
	movq      %r14, %rbp
	movq      %r13, %r15
	movq      184(%rsp), %r13
	jmp       LBB2_256
LBB2_278:
	testq     %r13, %r13
	movq      144(%rsp), %r15
	movq      160(%rsp), %rbp
	jne       LBB2_282
	movq      %rdi, %r12
	movsd     %xmm4, 248(%rsp)
	movsd     %xmm0, 200(%rsp)
	movq      %r10, %r14
	movq      %rbp, %rdi
	call      _matid
	movq      %rax, 104(%rsp)
	testq     %rbp, %rbp
	movl      $0, %eax
	jle       LBB2_281
	.align 4, 0x90
LBB2_280:
	movq      304(%rsp), %rcx
	movq      $0, 8(%rcx,%rax,8)
	incq      %rax
	cmpq      %rax, %rbp
	jne       LBB2_280
LBB2_281:
	movq      %r14, %r10
	movsd     200(%rsp), %xmm0
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	movq      %r12, %rdi
LBB2_282:
	cmpq      %rbp, %r13
	jge       LBB2_283
	movq      %rdi, 240(%rsp)
	movsd     %xmm4, 248(%rsp)
	movsd     %xmm0, 200(%rsp)
	cmpq      $2, 168(%rsp)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	movl      $0, %r9d
	movl      $0, %r11d
	movl      $1, %edx
	movl      $1, %esi
	movq      112(%rsp), %rdi
	jb        LBB2_290
	.align 4, 0x90
LBB2_285:
	cmpq      %r10, %rdx
	jg        LBB2_289
	cmpq      %r15, %rdx
	movq      %r15, %r8
	cmovge    %rdx, %r8
	addq      %rsi, %r8
	leaq      (%rdi,%rsi,8), %rsi
	movq      %r9, %rax
	.align 4, 0x90
LBB2_287:
	movq      320(%rsp), %rcx
	movq      8(%rcx,%rax,8), %rbp
	imulq     (%rcx,%rdx,8), %rbp
	movq      %rbp, (%rsi)
	addq      $8, %rsi
	incq      %rax
	cmpq      %r10, %rax
	jl        LBB2_287
	addq      %r11, %r8
	movq      %r8, %rsi
LBB2_289:
	decq      %r11
	incq      %r9
	cmpq      %r10, %rdx
	leaq      1(%rdx), %rdx
	jl        LBB2_285
LBB2_290:
	movq      %r10, 120(%rsp)
	movq      304(%rsp), %rdx
	xorl      %eax, %eax
	movq      104(%rsp), %rsi
	call      _addcolumntomatrix
	movq      _DEBUGLEVEL@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	testl     %eax, %eax
	je        LBB2_291
	cmpq      $2, %rcx
	movq      _avma@GOTPCREL(%rip), %r12
	jb        LBB2_296
	xorl      %eax, %eax
	leaq      L_.str9(%rip), %rdi
	call      _err_printf
	call      _err_flush
LBB2_296:
	movq      72(%rsp), %rax
	cmpq      %rax, (%r12)
	jae       LBB2_312
	movq      _DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	jb        LBB2_299
	movl      $3, %edi
	xorl      %eax, %eax
	leaq      L_.str10(%rip), %rsi
	movq      240(%rsp), %rdx
	call      _pari_warn
LBB2_299:
	movq      104(%rsp), %rdi
	call      _copy_bin
	movq      %rax, %rbx
	movq      136(%rsp), %rax
	movq      %rax, (%r12)
	movq      %r12, %r13
	movq      8(%rbx), %r15
	testq     %r15, %r15
	je        LBB2_300
	movq      (%rbx), %r14
	movq      %r15, %rbp
	subq      16(%rbx), %rbp
	sarq      $3, %rbp
	leaq      0(,%r14,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r14, %rax
	jae       LBB2_306
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 232(%rsp)
	call      _pari_err
	movq      232(%rsp), %rdx
LBB2_306:
	movq      %r12, (%r13)
	movq      %rbx, %rsi
	addq      $32, %rsi
	movq      %r12, %rdi
	call      _memcpy
	subq      %r14, %rbp
	movq      136(%rsp), %rax
	leaq      (%rax,%rbp,8), %rdi
	movq      %rdi, %rsi
	subq      %r15, %rsi
	cmpl      $0, 24(%rbx)
	je        LBB2_308
	movq      %rdi, 104(%rsp)
	call      _shiftaddress_canon
	jmp       LBB2_309
LBB2_274:
	addsd     LCPI2_4(%rip), %xmm5
	movapd    %xmm0, %xmm1
	movapd    %xmm5, %xmm0
	movsd     LCPI2_5(%rip), %xmm2
	subsd     %xmm2, %xmm0
	cvttsd2si %xmm0, %rax
	movapd    %xmm1, %xmm0
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	cvttsd2si %xmm5, %rcx
	ucomisd   %xmm2, %xmm5
	cmovae    %rax, %rcx
	movq      128(%rsp), %rax
	incq      (%rax,%rcx,8)
	jmp       LBB2_313
LBB2_275:
	movapd    %xmm0, %xmm1
	addsd     LCPI2_4(%rip), %xmm5
	movapd    %xmm5, %xmm0
	movsd     LCPI2_5(%rip), %xmm2
	subsd     %xmm2, %xmm0
	cvttsd2si %xmm0, %rcx
	movq      $-9223372036854775808, %rax
	xorq      %rax, %rcx
	cvttsd2si %xmm5, %rax
	ucomisd   %xmm2, %xmm5
	cmovae    %rcx, %rax
	testb     $1, %al
	jne       LBB2_276
	movq      $4611686018427387902, %rcx
	andq      %rcx, %rax
	movq      128(%rsp), %rcx
	incq      (%rcx,%rax,4)
	movapd    %xmm1, %xmm0
	jmp       LBB2_313
LBB2_283:
	movq      %rbp, %rdi
	jmp       LBB2_313
LBB2_276:
	movapd    %xmm1, %xmm0
	jmp       LBB2_313
LBB2_248:
	movq      160(%rsp), %rbp
LBB2_256:
	movq      %rbp, 160(%rsp)
	cmpq      %rbp, %r13
	jge       LBB2_313
	movq      320(%rsp), %r14
	movq      (%r14), %rbx
	movq      %rbx, %rbp
	movq      $72057594037927935, %rax
	andq      %rax, %rbp
	movq      (%r15), %r12
	leaq      0(,%rbp,8), %rax
	movq      %r12, %rsi
	subq      %rax, %rsi
	movq      %r12, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbp, %rax
	jae       LBB2_259
	movq      %rdi, 240(%rsp)
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r13, 184(%rsp)
	movq      %r10, %r13
	movsd     %xmm0, 200(%rsp)
	movsd     %xmm4, 248(%rsp)
	movq      %rbx, 232(%rsp)
	movq      %rsi, %rbx
	call      _pari_err
	movq      %rbx, %rsi
	movq      232(%rsp), %rbx
	movq      240(%rsp), %rdi
	movsd     248(%rsp), %xmm4
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     200(%rsp), %xmm0
	movq      %r13, %r10
	movq      184(%rsp), %r13
LBB2_259:
	movq      %rsi, (%r15)
	movq      (%r14), %rax
	andq      88(%rsp), %rax
	movq      %rax, (%rsi)
	cmpq      $2, %rbp
	jb        LBB2_273
	movq      %rbx, %rcx
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	movq      %rcx, %r15
	negq      %r15
	cmpq      $-3, %r15
	movq      $-2, %rax
	cmovg     %r15, %rax
	leaq      (%rax,%rcx), %rdx
	cmpq      $-1, %rdx
	je        LBB2_271
	movq      %rdi, %r11
	leaq      1(%rax,%rcx), %r8
	incq      %rax
	addl      %ebx, %eax
	andq      $3, %rax
	cmpq      $-3, %r15
	movq      $-2, %rdi
	cmovg     %r15, %rdi
	movq      %r8, %rdx
	subq      %rax, %rdx
	jne       LBB2_263
	xorl      %edx, %edx
	movq      %r11, %rdi
	jmp       LBB2_270
LBB2_291:
	cmpq      $2, %rcx
	movq      _avma@GOTPCREL(%rip), %r12
	jb        LBB2_293
	xorl      %eax, %eax
	leaq      L_.str8(%rip), %rdi
	call      _err_printf
	call      _err_flush
LBB2_293:
	movq      %r14, (%r12)
	movq      %r13, %rdi
	movq      120(%rsp), %r10
	movsd     200(%rsp), %xmm0
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	jmp       LBB2_313
LBB2_263:
	movq      %rsi, 248(%rsp)
	movq      %rdi, %rax
	notq      %rax
	leaq      (%r14,%rax,8), %r9
	leaq      -8(%r12), %rax
	cmpq      %r9, %rax
	ja        LBB2_266
	leaq      -8(%r14,%rcx,8), %rax
	addq      %rcx, %rdi
	notq      %rdi
	leaq      (%r12,%rdi,8), %rdi
	cmpq      %rdi, %rax
	ja        LBB2_266
	xorl      %edx, %edx
	jmp       LBB2_269
LBB2_300:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq      %rax, %rbp
	movl      (%rbp), %r14d
	movl      $1, (%rbp)
	movq      %rbx, %rdi
	call      _free
	movl      %r14d, (%rbp)
	testl     %r14d, %r14d
	jne       LBB2_303
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB2_303
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB2_303:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 104(%rsp)
	jmp       LBB2_312
LBB2_266:
	movapd    %xmm0, %xmm2
	movq      %rbp, %r9
	subq      %rdx, %r9
	cmpq      $-3, %r15
	movq      $-2, %rax
	cmovg     %r15, %rax
	cmpq      $-2, %r15
	movl      $-2, %edi
	cmovle    %edi, %r15d
	leal      1(%rbx,%r15), %esi
	andq      $3, %rsi
	subq      %rax, %rsi
	decq      %rsi
	.align 4, 0x90
LBB2_267:
	movd      %rcx, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     %xmm3, %xmm0
	movd      %xmm0, %rax
	movupd    -8(%r14,%rax,8), %xmm0
	movupd    -24(%r14,%rax,8), %xmm1
	subq      %rbp, %rax
	movupd    %xmm0, -8(%r12,%rax,8)
	movupd    %xmm1, -24(%r12,%rax,8)
	addq      $-4, %rcx
	cmpq      %rcx, %rsi
	jne       LBB2_267
	movq      %r9, %rbp
	movapd    %xmm2, %xmm0
LBB2_269:
	movq      %r11, %rdi
	movq      248(%rsp), %rsi
LBB2_270:
	cmpq      %rdx, %r8
	je        LBB2_273
LBB2_271:
	movq      $72057594037927935, %rax
	andq      %rax, %rbx
	shlq      $3, %rbx
	subq      %rbx, %r12
	addq      $-8, %r12
	.align 4, 0x90
LBB2_272:
	movq      -8(%r14,%rbp,8), %rax
	movq      %rax, (%r12,%rbp,8)
	leaq      -1(%rbp), %rbp
	cmpq      $1, %rbp
	jg        LBB2_272
LBB2_273:
	movq      304(%rsp), %rax
	movq      %rsi, 8(%rax,%r13,8)
	jmp       LBB2_313
LBB2_308:
	movq      %rdi, 104(%rsp)
	call      _shiftaddress
LBB2_309:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq      %rax, %rbp
	movl      (%rbp), %r14d
	movl      $1, (%rbp)
	movq      %rbx, %rdi
	call      _free
	movl      %r14d, (%rbp)
	testl     %r14d, %r14d
	jne       LBB2_312
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB2_312
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB2_312:
	movq      120(%rsp), %r10
	movsd     200(%rsp), %xmm0
	movdqa    LCPI2_2(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	movq      240(%rsp), %rdi
	jmp       LBB2_313
LBB2_314:
	movq      192(%rsp), %rcx
	leaq      -3(%rcx), %rax
	cmpq      $2, %rax
	movq      _avma@GOTPCREL(%rip), %r15
	movq      $72057594037927935, %rbx
	jae       LBB2_315
	movq      80(%rsp), %rax
	movq      %rax, (%r15)
	movq      128(%rsp), %r13
	jmp       LBB2_351
LBB2_315:
	cmpq      $2, %rcx
	movq      128(%rsp), %r13
	jne       LBB2_316
	movq      _DEBUGLEVEL@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	movq      $144115188075855872, %rbx
	movq      96(%rsp), %rbp
	jb        LBB2_323
	leaq      L_.str11(%rip), %rdi
	xorl      %eax, %eax
	call      _err_printf
	call      _err_flush
LBB2_323:
	movq      %rbp, (%r15)
	movq      184(%rsp), %rax
	testq     %rax, %rax
	je        LBB2_324
	jle       LBB2_329
	movq      %rax, %r14
	leaq      -24(%rbp), %r13
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB2_328
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_328:
	movq      %r13, (%r15)
	addq      $3, %rbx
	movq      %rbx, -24(%rbp)
	movq      $4611686018427387904, %rax
	addq      $3, %rax
	jmp       LBB2_332
LBB2_166:
	movsd     %xmm5, 232(%rsp)
	movq      56(%rsp), %rdi
	movq      %rbx, %rsi
	call      _ZM_zc_mul
	movq      _bot@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	movq      80(%rsp), %rsi
	jb        LBB2_169
	cmpq      %rax, %rsi
	jbe       LBB2_169
	movq      _top@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	jae       LBB2_169
	movq      %r15, %r13
	movq      (%rax), %r15
	movq      %r15, %rcx
	shrq      $57, %rcx
	leaq      -21(%rcx), %rdx
	cmpq      $2, %rdx
	movq      $72057594037927935, %r14
	jb        LBB2_185
	cmpq      $2, %rcx
	jne       LBB2_172
LBB2_185:
	movq      %r15, %rcx
	andq      %r14, %rcx
	shlq      $3, %rcx
	movq      %rsi, %rdx
	movq      %rsi, %r10
	subq      %rcx, %rdx
	movq      %r15, %rsi
	andq      %r14, %rsi
	movq      %rdx, (%r13)
	movq      $144115188075855872, %r12
	movq      %r12, %rbp
	je        LBB2_186
	movq      %rbp, %r12
	movq      %r15, %rcx
	movq      $-72057594037927936, %rdi
	orq       %rdi, %rcx
	movq      %rcx, %rbp
	xorq      %r14, %rbp
	cmpq      %rdi, %rcx
	movq      $-2, %r14
	movq      $-2, %rbx
	cmove     %rbp, %rbx
	leaq      (%rbx,%rsi), %r11
	cmpq      $-2, %r11
	movsd     232(%rsp), %xmm0
	jne       LBB2_192
	movq      %r10, %rdi
	movq      %r12, %rbp
	jmp       LBB2_189
LBB2_324:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r13
	jmp       LBB2_351
LBB2_169:
	movq      %rsi, (%r15)
	movq      $144115188075855872, %r12
	movq      %r12, %rbp
	movq      $72057594037927935, %r14
LBB2_202:
	movsd     232(%rsp), %xmm0
LBB2_203:
	movq      128(%rsp), %rcx
	movq      %rax, 16(%rcx)
	movq      (%r15), %rbx
	call      _dbltor
	movq      %rax, %rdi
	call      _roundr
	movq      _bot@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	jae       LBB2_205
	movq      %rax, %r12
	jmp       LBB2_221
LBB2_316:
	cmpq      $1, %rcx
	movq      96(%rsp), %rax
	jne       LBB2_333
	movq      %rax, (%r15)
	leaq      -8(%rax), %r13
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $7, %rax
	ja        LBB2_319
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_319:
	movq      %r13, (%r15)
LBB2_54:
	movq      $2449958197289549825, %rax
	movq      %rax, (%r13)
	jmp       LBB2_351
LBB2_205:
	cmpq      %rax, %rbx
	movdqa    LCPI2_2(%rip), %xmm2
	jbe       LBB2_206
	movq      _top@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	jae       LBB2_208
	movq      %rbp, %r8
	movq      %r15, %r13
	movq      8(%rax), %r9
	movq      %r9, %rbp
	andq      %r14, %rbp
	leaq      0(,%rbp,8), %rdx
	movq      %rbx, %r12
	subq      %rdx, %r12
	cmpq      $2, %rbp
	jb        LBB2_220
	andq      %r9, %r14
	movq      %r14, %rsi
	negq      %rsi
	cmpq      $-3, %rsi
	movq      $-2, %r10
	movq      $-2, %r15
	cmovg     %rsi, %r15
	addq      %r14, %r15
	cmpq      $-1, %r15
	movq      %rbp, %rdx
	je        LBB2_218
	incq      %r15
	cmpq      $-3, %rsi
	cmovg     %rsi, %r10
	xorl      %r11d, %r11d
	movq      %r15, %rdi
	andq      $-4, %rdi
	movq      %rbp, %rdx
	je        LBB2_217
	movq      %r10, %rdx
	notq      %rdx
	movq      %r14, %rcx
	leaq      (%rax,%rdx,8), %r14
	leaq      -8(%rbx), %rdx
	xorl      %r11d, %r11d
	cmpq      %r14, %rdx
	ja        LBB2_214
	leaq      -8(%rax,%rcx,8), %r14
	addq      %rcx, %r10
	notq      %r10
	leaq      (%rbx,%r10,8), %rdx
	cmpq      %rdx, %r14
	movq      %rbp, %rdx
	jbe       LBB2_217
LBB2_214:
	movq      %rbp, %rdx
	subq      %rdi, %rdx
	movq      %rdi, %r10
	cmpq      $-3, %rsi
	movq      $-2, %rdi
	cmovg     %rsi, %rdi
	leaq      1(%rdi,%rcx), %rsi
	andq      $-4, %rsi
LBB2_215:
	movd      %rcx, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     %xmm2, %xmm0
	movd      %xmm0, %rdi
	movupd    -8(%rax,%rdi,8), %xmm0
	movupd    -24(%rax,%rdi,8), %xmm1
	subq      %rbp, %rdi
	movupd    %xmm0, -8(%rbx,%rdi,8)
	movupd    %xmm1, -24(%rbx,%rdi,8)
	addq      $-4, %rcx
	addq      $-4, %rsi
	jne       LBB2_215
	movq      %r10, %r11
LBB2_217:
	cmpq      %r11, %r15
	je        LBB2_220
LBB2_218:
	notq      %r9
	movq      $2233785415175766016, %rsi
	orq       %r9, %rsi
	leaq      (%rbx,%rsi,8), %rsi
	.align 4, 0x90
LBB2_219:
	movq      -8(%rax,%rdx,8), %rdi
	movq      %rdi, (%rsi,%rdx,8)
	leaq      -1(%rdx), %rdx
	cmpq      $1, %rdx
	jg        LBB2_219
LBB2_220:
	orq       %r8, %rbp
	movq      %rbp, (%r12)
	movq      %r12, %rbx
	movq      %r13, %r15
	jmp       LBB2_221
LBB2_333:
	movq      160(%rsp), %rax
	movq      184(%rsp), %rcx
	cmpq      %rax, %rcx
	movq      %rax, %r14
	cmovle    %rcx, %r14
	xorpd     %xmm0, %xmm0
	movsd     200(%rsp), %xmm1
	ucomisd   %xmm0, %xmm1
	movapd    %xmm1, %xmm0
	jb        LBB2_335
	call      _dbltor
	movq      %rax, %rdi
	call      _roundr
	movq      %rax, 176(%rsp)
LBB2_335:
	movq      176(%rsp), %rax
	movq      %rax, 312(%rsp)
	leaq      1(%r14), %rbp
	cmpq      %rbx, %rbp
	jbe       LBB2_337
	leaq      L_.str1(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_337:
	movq      $2738188573441261568, %rax
	orq       %rax, %rbp
	movq      304(%rsp), %rax
	movq      %rbp, (%rax)
	testq     %r14, %r14
	movq      56(%rsp), %r12
	jle       LBB2_340
	movq      160(%rsp), %rax
	notq      %rax
	movq      184(%rsp), %r14
	notq      %r14
	cmpq      %r14, %rax
	cmovge    %rax, %r14
	negq      %r14
	movl      $1, %ebp
	.align 4, 0x90
LBB2_339:
	movq      304(%rsp), %rbx
	movq      (%rbx,%rbp,8), %rsi
	movq      %r12, %rdi
	call      _ZM_zc_mul
	movq      %rax, (%rbx,%rbp,8)
	incq      %rbp
	cmpq      %rbp, %r14
	jne       LBB2_339
LBB2_340:
	leaq      312(%rsp), %rdx
	leaq      304(%rsp), %rcx
	xorl      %eax, %eax
	movq      80(%rsp), %rdi
	call      _gerepileall
	movq      184(%rsp), %rax
	addq      %rax, %rax
	testq     %rax, %rax
	movq      %rax, %r14
	je        LBB2_341
	jle       LBB2_346
	movq      (%r15), %rbp
	leaq      -24(%rbp), %rbx
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB2_345
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_345:
	movq      %rbx, (%r15)
	movq      $144115188075855872, %rax
	addq      $3, %rax
	movq      %rax, -24(%rbp)
	movq      $4611686018427387904, %rax
	addq      $3, %rax
	jmp       LBB2_349
LBB2_206:
	movq      %rax, %r12
	jmp       LBB2_221
LBB2_208:
	movq      %rax, %r12
LBB2_221:
	movq      %rbx, (%r15)
	movq      128(%rsp), %r13
	movq      %r12, 8(%r13)
	jmp       LBB2_351
LBB2_329:
	negq      %rax
	movq      %rax, %r14
	leaq      -24(%rbp), %r13
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB2_331
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_331:
	movq      %r13, (%r15)
	addq      $3, %rbx
	movq      %rbx, -24(%rbp)
	movq      $-4611686018427387901, %rax
LBB2_332:
	movq      %rax, -16(%rbp)
	movq      %r14, -8(%rbp)
	jmp       LBB2_351
LBB2_341:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       LBB2_350
LBB2_186:
	movq      %rdx, %rax
	jmp       LBB2_201
LBB2_172:
	movq      %rsi, %rdi
	cmpq      $1, %rcx
	movq      $144115188075855872, %r12
	movq      %r12, %rbp
	jne       LBB2_200
	movq      %rbp, %r8
	movq      8(%rax), %r9
	movq      %r9, %rbx
	andq      %r14, %rbx
	leaq      0(,%rbx,8), %rcx
	movq      %rdi, %rdx
	movq      %rdx, %r12
	subq      %rcx, %r12
	cmpq      $2, %rbx
	movsd     232(%rsp), %xmm0
	jb        LBB2_184
	movq      %r9, %rsi
	andq      %r14, %rsi
	movq      %rsi, %rbp
	negq      %rbp
	cmpq      $-3, %rbp
	movq      $-2, %r10
	movq      $-2, %r15
	cmovg     %rbp, %r15
	addq      %rsi, %r15
	cmpq      $-1, %r15
	movq      %rbx, %rcx
	je        LBB2_182
	incq      %r15
	cmpq      $-3, %rbp
	cmovg     %rbp, %r10
	xorl      %r11d, %r11d
	movq      %r15, %rdi
	andq      $-4, %rdi
	movq      %rbx, %rcx
	je        LBB2_181
	movq      %r10, %rcx
	notq      %rcx
	leaq      (%rax,%rcx,8), %r14
	leaq      -8(%rdx), %rcx
	xorl      %r11d, %r11d
	cmpq      %r14, %rcx
	ja        LBB2_178
	leaq      -8(%rax,%rsi,8), %r14
	addq      %rsi, %r10
	notq      %r10
	leaq      (%rdx,%r10,8), %rcx
	cmpq      %rcx, %r14
	movq      %rbx, %rcx
	jbe       LBB2_181
LBB2_178:
	movq      %rbx, %rcx
	subq      %rdi, %rcx
	movq      %rdi, %r10
	cmpq      $-3, %rbp
	movq      $-2, %rdi
	cmovg     %rbp, %rdi
	leaq      1(%rdi,%rsi), %rbp
	andq      $-4, %rbp
	movdqa    LCPI2_2(%rip), %xmm2
LBB2_179:
	movd      %rsi, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm2, %xmm1
	movd      %xmm1, %rdi
	movdqu    -8(%rax,%rdi,8), %xmm3
	movupd    -24(%rax,%rdi,8), %xmm1
	subq      %rbx, %rdi
	movdqu    %xmm3, -8(%rdx,%rdi,8)
	movupd    %xmm1, -24(%rdx,%rdi,8)
	addq      $-4, %rsi
	addq      $-4, %rbp
	jne       LBB2_179
	movq      %r10, %r11
LBB2_181:
	cmpq      %r11, %r15
	movq      $72057594037927935, %r14
	je        LBB2_184
LBB2_182:
	notq      %r9
	movq      $2233785415175766016, %rsi
	orq       %r9, %rsi
	leaq      (%rdx,%rsi,8), %rsi
LBB2_183:
	movq      -8(%rax,%rcx,8), %rdi
	movq      %rdi, (%rsi,%rcx,8)
	leaq      -1(%rcx), %rcx
	cmpq      $1, %rcx
	jg        LBB2_183
LBB2_184:
	movq      %r8, %rbp
	orq       %rbp, %rbx
	movq      %rbx, (%r12)
	movq      %r13, %r15
	movq      %r12, (%r15)
	movq      %r12, %rax
	jmp       LBB2_203
LBB2_346:
	negq      %r14
	movq      (%r15), %rbp
	leaq      -24(%rbp), %rbx
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB2_348
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB2_348:
	movq      %rbx, (%r15)
	movq      $144115188075855872, %rax
	addq      $3, %rax
	movq      %rax, -24(%rbp)
	movq      $-4611686018427387901, %rax
LBB2_349:
	movq      %rax, -16(%rbp)
	movq      %r14, -8(%rbp)
LBB2_350:
	movq      %rbx, 8(%r13)
	movq      312(%rsp), %rax
	movq      %rax, 16(%r13)
	movq      304(%rsp), %rax
	movq      %rax, 24(%r13)
LBB2_351:
	movq      %r13, %rax
	addq      $328, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB2_192:
	addq      $2, %r11
	cmpq      %rdi, %rcx
	cmove     %rbp, %r14
	xorl      %r9d, %r9d
	movq      %r11, %r8
	andq      $-4, %r8
	movq      %r10, %rdi
	movdqa    LCPI2_2(%rip), %xmm2
	je        LBB2_198
	movq      $-2, %r10
	movq      $-2, %rcx
	subq      %r14, %rcx
	leaq      (%rax,%rcx,8), %rcx
	leaq      -8(%rdi), %rbp
	xorl      %r9d, %r9d
	cmpq      %rcx, %rbp
	ja        LBB2_195
	leaq      -8(%rax,%rsi,8), %rcx
	addq      %rsi, %r14
	subq      %r14, %r10
	leaq      (%rdi,%r10,8), %rbp
	cmpq      %rbp, %rcx
	jbe       LBB2_198
LBB2_195:
	movq      %rsi, %r9
	subq      %r8, %r9
	leaq      2(%rbx,%rsi), %rbx
	andq      $-4, %rbx
	movq      %rsi, %rbp
LBB2_196:
	movd      %rbp, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm2, %xmm1
	movd      %xmm1, %rcx
	movdqu    -8(%rax,%rcx,8), %xmm3
	movupd    -24(%rax,%rcx,8), %xmm1
	subq      %rsi, %rcx
	movdqu    %xmm3, -8(%rdi,%rcx,8)
	movupd    %xmm1, -24(%rdi,%rcx,8)
	addq      $-4, %rbp
	addq      $-4, %rbx
	jne       LBB2_196
	movq      %r9, %rsi
	movq      %r8, %r9
LBB2_198:
	cmpq      %r9, %r11
	movq      %r12, %rbp
	jne       LBB2_189
	movq      %rdx, %rax
	movq      $72057594037927935, %r14
	movq      %r13, %r15
	jmp       LBB2_203
LBB2_189:
	incq      %rsi
	movq      $72057594037927935, %r14
	andq      %r14, %r15
	shlq      $3, %r15
	subq      %r15, %rdi
	.align 4, 0x90
LBB2_190:
	movq      -16(%rax,%rsi,8), %rcx
	movq      %rcx, -16(%rdi,%rsi,8)
	decq      %rsi
	cmpq      $1, %rsi
	jg        LBB2_190
	movq      %rdx, %rax
	movq      %r13, %r15
	jmp       LBB2_203
LBB2_200:
	andq      %r14, %r15
	leaq      (%rax,%r15,8), %rsi
	movq      %rax, %rdx
	call      _gerepile
LBB2_201:
	movq      %r13, %r15
	jmp       LBB2_202
	.align 2, 0x90
LJTI2_0:
	.long	L2_0_set_25
	.long	L2_0_set_18
	.long	L2_0_set_47
	.long	L2_0_set_28
	.long	L2_0_set_28
LJTI2_1:
	.long	L2_1_set_247
	.long	L2_1_set_313
	.long	L2_1_set_278
	.long	L2_1_set_274
	.long	L2_1_set_275
	.align 4, 0x90
_gerepileall:
	pushq     %rbp
Ltmp36:
	pushq     %r15
Ltmp37:
	pushq     %r14
Ltmp38:
	pushq     %r13
Ltmp39:
	pushq     %r12
Ltmp40:
	pushq     %rbx
Ltmp41:
	subq      $312, %rsp
Ltmp42:
Ltmp43:
Ltmp44:
Ltmp45:
Ltmp46:
Ltmp47:
Ltmp48:
	movq      %rdi, %rbx
	testb     %al, %al
	je        LBB3_2
	movaps    %xmm0, 64(%rsp)
	movaps    %xmm1, 80(%rsp)
	movaps    %xmm2, 96(%rsp)
	movaps    %xmm3, 112(%rsp)
	movaps    %xmm4, 128(%rsp)
	movaps    %xmm5, 144(%rsp)
	movaps    %xmm6, 160(%rsp)
	movaps    %xmm7, 176(%rsp)
LBB3_2:
	movq      %r9, 56(%rsp)
	movq      %r8, 48(%rsp)
	movq      %rcx, 40(%rsp)
	movq      %rdx, 32(%rsp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 304(%rsp)
	leaq      16(%rsp), %rax
	movq      %rax, 288(%rsp)
	leaq      368(%rsp), %rax
	movq      %rax, 280(%rsp)
	movl      $48, 276(%rsp)
	movl      $16, 272(%rsp)
	movslq    272(%rsp), %rcx
	cmpq      $40, %rcx
	ja        LBB3_4
	movq      %rcx, %rax
	addq      288(%rsp), %rax
	leal      8(%rcx), %ecx
	movl      %ecx, 272(%rsp)
	jmp       LBB3_5
LBB3_4:
	movq      280(%rsp), %rax
	leaq      8(%rax), %rcx
	movq      %rcx, 280(%rsp)
LBB3_5:
	movq      (%rax), %rbp
	movq      %rbp, 192(%rsp)
	movq      (%rbp), %rdi
	call      _copy_bin
	movq      %rax, (%rbp)
	movslq    272(%rsp), %rcx
	cmpq      $41, %rcx
	jae       LBB3_6
	movq      %rcx, %rax
	addq      288(%rsp), %rax
	leal      8(%rcx), %ecx
	movl      %ecx, 272(%rsp)
	jmp       LBB3_7
LBB3_6:
	movq      280(%rsp), %rax
	leaq      8(%rax), %rcx
	movq      %rcx, 280(%rsp)
LBB3_7:
	movq      (%rax), %rbp
	movq      %rbp, 200(%rsp)
	movq      (%rbp), %rdi
	call      _copy_bin
	movq      %rax, (%rbp)
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      %rbx, (%rdx)
	movq      200(%rsp), %rax
	movq      (%rax), %r15
	movq      8(%r15), %r13
	testq     %r13, %r13
	je        LBB3_8
	movq      (%r15), %r12
	movq      %r13, %rbp
	subq      16(%r15), %rbp
	sarq      $3, %rbp
	movq      (%rdx), %r14
	leaq      0(,%r12,8), %r8
	movq      %r14, %rbx
	subq      %r8, %rbx
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %r14, %rcx
	subq      (%rax), %rcx
	shrq      $3, %rcx
	cmpq      %r12, %rcx
	jae       LBB3_14
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 8(%rsp)
	call      _pari_err
	movq      8(%rsp), %r8
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_14:
	movq      %rbx, (%rdx)
	leaq      32(%r15), %rsi
	movq      %rbx, %rdi
	movq      %r8, %rdx
	call      _memcpy
	subq      %r12, %rbp
	leaq      (%r14,%rbp,8), %r14
	movq      %r14, %rsi
	subq      %r13, %rsi
	cmpl      $0, 24(%r15)
	je        LBB3_16
	movq      %r14, %rdi
	call      _shiftaddress_canon
	jmp       LBB3_17
LBB3_8:
	movq      %rdx, %r12
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       LBB3_11
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_11
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_11:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	movq      %r12, %rdx
	jmp       LBB3_21
LBB3_16:
	movq      %r14, %rdi
	call      _shiftaddress
LBB3_17:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       LBB3_20
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_20
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_20:
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_21:
	movq      200(%rsp), %rax
	movq      %r14, (%rax)
	movq      192(%rsp), %rax
	movq      (%rax), %r15
	movq      8(%r15), %r13
	testq     %r13, %r13
	je        LBB3_30
	movq      (%r15), %r12
	movq      %r13, %rbp
	subq      16(%r15), %rbp
	sarq      $3, %rbp
	movq      (%rdx), %r14
	leaq      0(,%r12,8), %r8
	movq      %r14, %rbx
	subq      %r8, %rbx
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %r14, %rcx
	subq      (%rax), %rcx
	shrq      $3, %rcx
	cmpq      %r12, %rcx
	jae       LBB3_24
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 8(%rsp)
	call      _pari_err
	movq      8(%rsp), %r8
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_24:
	movq      %rbx, (%rdx)
	leaq      32(%r15), %rsi
	movq      %rbx, %rdi
	movq      %r8, %rdx
	call      _memcpy
	subq      %r12, %rbp
	leaq      (%r14,%rbp,8), %r14
	movq      %r14, %rsi
	subq      %r13, %rsi
	cmpl      $0, 24(%r15)
	je        LBB3_26
	movq      %r14, %rdi
	call      _shiftaddress_canon
	jmp       LBB3_27
LBB3_30:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       LBB3_33
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_33
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_33:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	jmp       LBB3_34
LBB3_26:
	movq      %r14, %rdi
	call      _shiftaddress
LBB3_27:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       LBB3_34
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_34
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_34:
	movq      192(%rsp), %rax
	movq      %r14, (%rax)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      304(%rsp), %rax
	jne       LBB3_37
	addq      $312, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB3_37:
	call      ___stack_chk_fail
	.align 4, 0x90
_gtofp:
	pushq     %rbp
Ltmp49:
	pushq     %r15
Ltmp50:
	pushq     %r14
Ltmp51:
	pushq     %r13
Ltmp52:
	pushq     %r12
Ltmp53:
	pushq     %rbx
Ltmp54:
	subq      $56, %rsp
Ltmp55:
Ltmp56:
Ltmp57:
Ltmp58:
Ltmp59:
Ltmp60:
Ltmp61:
	movq      %rdi, %r12
	movq      (%r12), %rax
	shrq      $57, %rax
	decq      %rax
	cmpq      $7, %rax
	ja        LBB4_128
	movq      $4611686018427387903, %rsi
	movq      $288230376151711747, %r14
	movq      $72057594037927935, %rbp
	leaq      LJTI4_0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB4_2:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_4
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_4:
	movq      %rbx, (%rbp)
	movq      %r14, (%rbx)
	movq      %r12, %rdi
LBB4_5:
	movq      %rbx, %rsi
	call      _affir
	jmp       LBB4_130
LBB4_128:
	leaq      L_.str12(%rip), %rsi
LBB4_129:
	xorl      %ebx, %ebx
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_130:
	movq      %rbx, %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB4_18:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_20
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_20:
	movq      %rbx, (%rbp)
	movq      %r14, (%rbx)
	movq      %r12, %rdi
LBB4_21:
	movq      %rbx, %rsi
	call      _affrr
	jmp       LBB4_130
LBB4_6:
	movq      8(%r12), %r15
	movq      16(%r12), %r13
	movq      _avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %r12
	leaq      -24(%r12), %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %r12, %rax
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_8
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_8:
	movq      %r14, %rcx
	movq      %rcx, (%rbx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rcx)
	movq      (%rbx), %rax
	movq      %rax, 48(%rsp)
	movq      %rbx, %r14
	movq      %r15, %rdi
	movq      %rcx, %rbx
	movq      %rbx, %rsi
	call      _affir
	andq      8(%r13), %rbp
	cmpq      $3, %rbp
	ja        LBB4_14
	movq      16(%r13), %rsi
	jne       LBB4_11
	testq     %rsi, %rsi
	jns       LBB4_11
LBB4_14:
	movq      (%r14), %rax
	leaq      -24(%rax), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_16
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_16:
	movq      %rbp, (%r14)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbp)
	movq      %r13, %rdi
	movq      %rbp, %rsi
	call      _affir
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	call      _divrr
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
	jmp       LBB4_17
LBB4_22:
	movq      8(%r12), %r14
	movq      16(%r12), %r15
	movq      (%r15), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	jne       LBB4_23
	leaq      1(%rsi), %rcx
	movq      (%r14), %rax
	cmpq      %rcx, 8(%r15)
	jae       LBB4_24
	shrq      $57, %rax
	cmpq      $4, %rax
	je        LBB4_33
	cmpq      $2, %rax
	jne       LBB4_29
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	movq      $288230376151711747, %rbp
	ja        LBB4_47
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_47:
	movq      %rbx, (%r15)
	movq      %rbp, (%rbx)
	movq      %r14, %rdi
	jmp       LBB4_21
LBB4_127:
	movl      $3, %esi
	movq      %r12, %rdi
	addq      $56, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _quadtofp
LBB4_23:
	movq      (%r14), %rax
LBB4_24:
	movq      $-144115188075855872, %rcx
	movq      $144115188075855872, %rdx
	movq      $864691128455135235, %rbx
	andq      %rax, %rcx
	cmpq      %rdx, %rcx
	jne       LBB4_25
	movq      %rbx, %r13
	leaq      1(%rsi), %rcx
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rax
	movq      %rax, 48(%rsp)
	leaq      -24(%rax), %rbx
	movq      _bot@GOTPCREL(%rip), %rbp
	subq      (%rbp), %rax
	cmpq      %rcx, 8(%r14)
	jae       LBB4_80
	cmpq      $23, %rax
	ja        LBB4_52
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r14
	call      _pari_err
	movq      %r14, %rdx
LBB4_52:
	movq      %rbx, 40(%rsp)
	movq      %rbx, (%rdx)
	movq      %r13, (%rbx)
	movq      (%r15), %rax
	shrq      $57, %rax
	cmpq      $4, %rax
	movq      %rbp, %r12
	je        LBB4_58
	cmpq      $2, %rax
	jne       LBB4_54
	movq      (%rdx), %rax
	leaq      -24(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        LBB4_72
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbp
	call      _pari_err
	movq      %rbp, %rdx
LBB4_72:
	movq      %rbx, (%rdx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %r15, %rdi
	movq      %rdx, %rbp
	movq      %rbx, %rsi
	call      _affrr
	jmp       LBB4_74
LBB4_25:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      %rcx, 48(%rsp)
	leaq      -24(%rcx), %r14
	movq      _bot@GOTPCREL(%rip), %rax
	subq      (%rax), %rcx
	cmpq      $24, %rcx
	jb        LBB4_81
	jmp       LBB4_82
LBB4_11:
	movq      %rbx, %rdi
	call      _divrs
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
	cmpq      $0, 8(%r13)
	jns       LBB4_17
	movq      -16(%r12), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       LBB4_17
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%r12)
LBB4_17:
	movq      48(%rsp), %rax
	movq      %rax, (%r14)
	jmp       LBB4_130
LBB4_80:
	cmpq      $23, %rax
	movq      %rbx, %r14
	movq      %r13, %rbx
	ja        LBB4_82
LBB4_81:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_82:
	movq      _avma@GOTPCREL(%rip), %r13
	movq      %r14, (%r13)
	movq      %rbx, (%r14)
	movq      8(%r12), %rbx
	movq      (%rbx), %rax
	shrq      $57, %rax
	cmpq      $4, %rax
	je        LBB4_88
	cmpq      $2, %rax
	jne       LBB4_84
	movq      %r14, 40(%rsp)
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_102
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_102:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affrr
	jmp       LBB4_104
LBB4_88:
	movq      %r14, 40(%rsp)
	movq      8(%rbx), %rbp
	movq      16(%rbx), %rbx
	movq      (%r13), %r14
	leaq      -24(%r14), %r15
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %r14, %rax
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_90
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_90:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      (%r13), %rax
	movq      %rax, 32(%rsp)
	movq      %rbp, %rdi
	movq      %r15, %rsi
	call      _affir
	movq      8(%rbx), %rax
	movq      $72057594037927935, %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        LBB4_96
	movq      16(%rbx), %rsi
	jne       LBB4_93
	testq     %rsi, %rsi
	jns       LBB4_93
LBB4_96:
	movq      (%r13), %rax
	leaq      -24(%rax), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_98
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_98:
	movq      %rbp, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbp)
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	call      _affir
	movq      %r15, %rdi
	movq      %rbp, %rsi
	call      _divrr
	movq      %rax, %rdi
	movq      %r15, %rsi
	call      _affrr
	jmp       LBB4_99
LBB4_84:
	movq      %r14, 40(%rsp)
	cmpq      $1, %rax
	jne       LBB4_103
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_87
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_87:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affir
	jmp       LBB4_104
LBB4_103:
	leaq      L_.str13(%rip), %rsi
	xorl      %r15d, %r15d
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
	jmp       LBB4_104
LBB4_33:
	movq      %rbp, %r13
	movq      8(%r14), %r12
	movq      16(%r14), %r15
	movq      _avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %r14
	leaq      -24(%r14), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %r14, %rax
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_35
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_35:
	movq      %rbp, %rsi
	movq      %rsi, (%rbx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rsi)
	movq      (%rbx), %rbp
	movq      %r12, %rdi
	movq      %rsi, %rbx
	call      _affir
	andq      8(%r15), %r13
	cmpq      $3, %r13
	ja        LBB4_41
	movq      16(%r15), %rsi
	jne       LBB4_38
	testq     %rsi, %rsi
	jns       LBB4_38
LBB4_41:
	movq      %rbp, %r14
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rax
	leaq      -24(%rax), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_43
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_43:
	movq      %rbp, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbp)
	movq      %r15, %rdi
	movq      %rbp, %rsi
	call      _affir
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	call      _divrr
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
	movq      %r14, %rbp
	jmp       LBB4_44
LBB4_29:
	cmpq      $1, %rax
	movq      $288230376151711747, %rbp
	jne       LBB4_48
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_32
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_32:
	movq      %rbx, (%r15)
	movq      %rbp, (%rbx)
	movq      %r14, %rdi
	jmp       LBB4_5
LBB4_58:
	movq      8(%r15), %rbx
	movq      16(%r15), %rbp
	movq      (%rdx), %r14
	leaq      -24(%r14), %r15
	movq      %r14, %rax
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        LBB4_60
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r13
	call      _pari_err
	movq      %r13, %rdx
LBB4_60:
	movq      %r15, (%rdx)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      (%rdx), %rax
	movq      %rax, 32(%rsp)
	movq      %rbx, %rdi
	movq      %r15, %rbx
	movq      %rbx, %rsi
	call      _affir
	movq      $72057594037927935, %r13
	andq      8(%rbp), %r13
	cmpq      $3, %r13
	ja        LBB4_66
	movq      16(%rbp), %rsi
	jne       LBB4_63
	testq     %rsi, %rsi
	jns       LBB4_63
LBB4_66:
	movq      %rbx, %r14
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rax
	leaq      -24(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        LBB4_68
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_68:
	movq      %rbx, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %rbp, %rdi
	movq      %rbx, %rsi
	call      _affir
	movq      %r14, %rdi
	movq      %rbx, %rsi
	movq      %rdi, %rbx
	call      _divrr
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
	movq      %r13, %rsi
	movq      $4611686018427387903, %rcx
	jmp       LBB4_69
LBB4_54:
	cmpq      $1, %rax
	jne       LBB4_73
	movq      (%rdx), %rax
	leaq      -24(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        LBB4_57
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbp
	call      _pari_err
	movq      %rbp, %rdx
LBB4_57:
	movq      %rbx, (%rdx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %r15, %rdi
	movq      %rdx, %rbp
	movq      %rbx, %rsi
	call      _affir
	jmp       LBB4_74
LBB4_93:
	movq      %r15, %rdi
	call      _divrs
	movq      %rax, %rdi
	movq      %r15, %rsi
	call      _affrr
	cmpq      $0, 8(%rbx)
	jns       LBB4_99
	movq      -16(%r14), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       LBB4_99
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%r14)
LBB4_99:
	movq      32(%rsp), %rax
	movq      %rax, (%r13)
LBB4_104:
	movq      48(%rsp), %rbp
	movq      %r15, -16(%rbp)
	movq      16(%r12), %rbx
	movq      (%rbx), %rax
	shrq      $57, %rax
	cmpq      $4, %rax
	je        LBB4_111
	cmpq      $2, %rax
	jne       LBB4_106
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_125
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_125:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affrr
	jmp       LBB4_110
LBB4_111:
	movq      8(%rbx), %rbp
	movq      16(%rbx), %r15
	movq      (%r13), %rbx
	leaq      -24(%rbx), %r12
	movq      _bot@GOTPCREL(%rip), %r14
	movq      %rbx, %rax
	subq      (%r14), %rax
	cmpq      $23, %rax
	ja        LBB4_113
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_113:
	movq      %r12, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r12)
	movq      (%r13), %rax
	movq      %rax, 32(%rsp)
	movq      %rbp, %rdi
	movq      %r12, %rsi
	call      _affir
	movq      $72057594037927935, %r13
	andq      8(%r15), %r13
	cmpq      $3, %r13
	ja        LBB4_119
	movq      16(%r15), %rsi
	jne       LBB4_116
	testq     %rsi, %rsi
	jns       LBB4_116
LBB4_119:
	movq      _avma@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rax
	leaq      -24(%rax), %rbx
	subq      (%r14), %rax
	cmpq      $23, %rax
	ja        LBB4_121
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, %rbp
	call      _pari_err
	movq      %rbp, %rcx
LBB4_121:
	movq      %rbx, (%rcx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %r15, %rdi
	movq      %rbx, %rsi
	movq      %rcx, %rbp
	call      _affir
	movq      %r12, %rdi
	movq      %rbx, %rsi
	call      _divrr
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _affrr
	jmp       LBB4_122
LBB4_106:
	cmpq      $1, %rax
	jne       LBB4_126
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        LBB4_109
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_109:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affir
LBB4_110:
	movq      %r15, -8(%rbp)
	movq      40(%rsp), %rbx
	jmp       LBB4_130
LBB4_126:
	leaq      L_.str13(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      %rbx, -8(%rbp)
	movq      40(%rsp), %rbx
	jmp       LBB4_130
LBB4_116:
	movq      %r12, %rdi
	call      _divrs
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _affrr
	cmpq      $0, 8(%r15)
	movq      _avma@GOTPCREL(%rip), %rbp
	jns       LBB4_122
	movq      -16(%rbx), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       LBB4_122
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%rbx)
LBB4_122:
	movq      32(%rsp), %rax
	movq      %rax, (%rbp)
	movq      48(%rsp), %rax
	movq      %r12, -8(%rax)
	movq      40(%rsp), %rbx
	jmp       LBB4_130
LBB4_48:
	leaq      L_.str13(%rip), %rsi
	jmp       LBB4_129
LBB4_73:
	movq      %rdx, %rbp
	leaq      L_.str13(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_74:
	movq      %rbp, %rsi
	movq      $4611686018427387903, %rcx
	jmp       LBB4_75
LBB4_38:
	movq      %rbx, %rdi
	call      _divrs
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
	cmpq      $0, 8(%r15)
	movq      _avma@GOTPCREL(%rip), %r13
	jns       LBB4_44
	movq      -16(%r14), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       LBB4_44
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%r14)
	movq      %rbp, (%r13)
	jmp       LBB4_130
LBB4_44:
	movq      %rbp, (%r13)
	jmp       LBB4_130
LBB4_63:
	movq      %rbx, %rdi
	call      _divrs
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
	cmpq      $0, 8(%rbp)
	movq      $4611686018427387903, %rcx
	movq      _avma@GOTPCREL(%rip), %r13
	movq      %r13, %rsi
	jns       LBB4_69
	movq      -16(%r14), %rax
	cmpq      %rcx, %rax
	jbe       LBB4_69
	movq      $-9223372036854775808, %rdx
	xorq      %rdx, %rax
	movq      %rax, -16(%r14)
LBB4_69:
	movq      32(%rsp), %rax
	movq      %rax, (%rsi)
LBB4_75:
	movq      %rbx, 32(%rsp)
	movq      8(%rbx), %rbp
	andq      %rcx, %rbp
	movq      (%rsi), %rbx
	leaq      -16(%rbx), %r15
	movq      %rbx, %rax
	subq      (%r12), %rax
	cmpq      $15, %rax
	ja        LBB4_77
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, %r12
	movq      %rcx, %r13
	call      _pari_err
	movq      %r13, %rcx
	movq      %r12, %rsi
LBB4_77:
	movq      %r15, (%rsi)
	movq      $288230376151711747, %rax
	decq      %rax
	movq      %rax, (%r15)
	addq      $-64, %rbp
	cmpq      %rcx, %rbp
	jbe       LBB4_79
	leaq      L_.str14(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_79:
	movq      %rbp, -8(%rbx)
	movq      48(%rsp), %rax
	movq      %r15, -16(%rax)
	movq      32(%rsp), %rcx
	movq      %rcx, -8(%rax)
	movq      40(%rsp), %rbx
	jmp       LBB4_130
	.align 2, 0x90
LJTI4_0:
	.long	L4_0_set_2
	.long	L4_0_set_18
	.long	L4_0_set_128
	.long	L4_0_set_6
	.long	L4_0_set_128
	.long	L4_0_set_22
	.long	L4_0_set_128
	.long	L4_0_set_127
# ----------------------
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LCPI2_0:
	.quad	-4616189618054758400
LCPI2_1:
	.quad	4607182869159980145
LCPI2_3:
	.quad	4547007122018943789
LCPI2_4:
	.quad	4602678819172646912
LCPI2_5:
	.quad	4890909195324358656
LCPI2_6:
	.quad	0
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LCPI2_2:
	.quad	-1
	.quad	-2
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"qfminim"
L_.str1:
	.asciz	"lg()"
L_.str2:
	.asciz	"qfminim0"
L_.str3:
	.asciz	"minim0"
L_.str4:
	.asciz	"bound = 0 in minim2"
L_.str5:
	.asciz	"not a definite form in minim0"
L_.str6:
	.asciz	"not a positive definite form in minim0"
L_.str7:
	.asciz	"negative number of vectors in minim0"
L_.str8:
	.asciz	"."
L_.str9:
	.asciz	"*"
L_.str10:
	.asciz	"minim0, rank>=%ld"
L_.str11:
	.asciz	"\n"
L_.str12:
	.asciz	"gtofp"
L_.str13:
	.asciz	"cxcompotor"
L_.str14:
	.asciz	"expo()"
L_.str15:
	.asciz	"t_INT-->t_INT assignment"
L_.str17:
	.asciz	"t_INT-->long assignment"
# ----------------------
	.set	L2_0_set_25,LBB2_25-LJTI2_0
	.set	L2_0_set_18,LBB2_18-LJTI2_0
	.set	L2_0_set_47,LBB2_47-LJTI2_0
	.set	L2_0_set_28,LBB2_28-LJTI2_0
	.set	L2_1_set_247,LBB2_247-LJTI2_1
	.set	L2_1_set_313,LBB2_313-LJTI2_1
	.set	L2_1_set_278,LBB2_278-LJTI2_1
	.set	L2_1_set_274,LBB2_274-LJTI2_1
	.set	L2_1_set_275,LBB2_275-LJTI2_1
	.set	L4_0_set_2,LBB4_2-LJTI4_0
	.set	L4_0_set_18,LBB4_18-LJTI4_0
	.set	L4_0_set_128,LBB4_128-LJTI4_0
	.set	L4_0_set_6,LBB4_6-LJTI4_0
	.set	L4_0_set_22,LBB4_22-LJTI4_0
	.set	L4_0_set_127,LBB4_127-LJTI4_0

.subsections_via_symbols
