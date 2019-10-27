	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_pari_init_evaluator
_pari_init_evaluator:
	pushq     %rbp
Ltmp0:
	pushq     %r14
Ltmp1:
	pushq     %rbx
Ltmp2:
Ltmp3:
Ltmp4:
Ltmp5:
	movq      $0, _sp(%rip)
	leaq      _s_st(%rip), %rax
	leaq      _st(%rip), %rcx
	subq      %rax, %rcx
	movq      %rcx, _s_st(%rip)
	movq      $0, _st(%rip)
	movq      $0, _s_st+8(%rip)
	movq      $8, _s_st+24(%rip)
	movq      $32, _s_st+16(%rip)
	movq      _st(%rip), %rdi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r14
	movl      (%r14), %ebp
	movl      $1, (%r14)
	testq     %rdi, %rdi
	je        LBB0_1
	movl      $256, %esi
	call      _realloc
	jmp       LBB0_3
LBB0_1:
	movl      $256, %edi
	call      _malloc
LBB0_3:
	movq      %rax, %rbx
	movl      %ebp, (%r14)
	testl     %ebp, %ebp
	jne       LBB0_6
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB0_6
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB0_6:
	testq     %rbx, %rbx
	jne       LBB0_8
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_8:
	movq      %rbx, _st(%rip)
	movq      _s_st+16(%rip), %rax
	movq      %rax, _s_st+8(%rip)
	movq      $0, _rp(%rip)
	leaq      _s_ptrs(%rip), %rax
	leaq      _ptrs(%rip), %rcx
	subq      %rax, %rcx
	movq      %rcx, _s_ptrs(%rip)
	movq      $0, _ptrs(%rip)
	movq      $0, _s_ptrs+8(%rip)
	movq      $56, _s_ptrs+24(%rip)
	movq      $16, _s_ptrs+16(%rip)
	movq      _ptrs(%rip), %rdi
	movl      (%r14), %ebp
	movl      $1, (%r14)
	testq     %rdi, %rdi
	je        LBB0_9
	movl      $896, %esi
	call      _realloc
	jmp       LBB0_11
LBB0_9:
	movl      $896, %edi
	call      _malloc
LBB0_11:
	movq      %rax, %rbx
	movl      %ebp, (%r14)
	testl     %ebp, %ebp
	jne       LBB0_14
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB0_14
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB0_14:
	testq     %rbx, %rbx
	jne       LBB0_16
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_16:
	movq      %rbx, _ptrs(%rip)
	movq      _s_ptrs+16(%rip), %rax
	movq      %rax, _s_ptrs+8(%rip)
	leaq      _s_var(%rip), %rax
	leaq      _var(%rip), %rcx
	subq      %rax, %rcx
	movq      %rcx, _s_var(%rip)
	movq      $0, _var(%rip)
	movq      $0, _s_var+16(%rip)
	movq      $0, _s_var+8(%rip)
	movq      $16, _s_var+24(%rip)
	leaq      _s_lvars(%rip), %rax
	leaq      _lvars(%rip), %rcx
	subq      %rax, %rcx
	movq      %rcx, _s_lvars(%rip)
	movq      $0, _lvars(%rip)
	movq      $0, _s_lvars+16(%rip)
	movq      $0, _s_lvars+8(%rip)
	movq      $8, _s_lvars+24(%rip)
	leaq      _s_trace(%rip), %rax
	leaq      _trace(%rip), %rcx
	subq      %rax, %rcx
	movq      %rcx, _s_trace(%rip)
	movq      $0, _trace(%rip)
	movq      $0, _s_trace+16(%rip)
	movq      $0, _s_trace+8(%rip)
	movq      $16, _s_trace+24(%rip)
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_pari_close_evaluator
_pari_close_evaluator:
	pushq     %rax
Ltmp6:
	leaq      _s_st(%rip), %rax
	movq      _s_st(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        LBB1_2
	call      _free
LBB1_2:
	leaq      _s_ptrs(%rip), %rax
	movq      _s_ptrs(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        LBB1_4
	call      _free
LBB1_4:
	leaq      _s_var(%rip), %rax
	movq      _s_var(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        LBB1_6
	call      _free
LBB1_6:
	leaq      _s_lvars(%rip), %rax
	movq      _s_lvars(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        LBB1_8
	call      _free
LBB1_8:
	leaq      _s_trace(%rip), %rax
	movq      _s_trace(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        LBB1_9
	popq      %rax
	jmp       _free
LBB1_9:
	popq      %rax
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_closure_evalvoid
_closure_evalvoid:
	pushq     %r14
Ltmp7:
	pushq     %rbx
Ltmp8:
	pushq     %rax
Ltmp9:
Ltmp10:
Ltmp11:
	movq      _avma@GOTPCREL(%rip), %r14
	movq      (%r14), %rbx
	call      _closure_eval
	movq      %rbx, (%r14)
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	ret       
	.align 4, 0x90
_closure_eval:
	pushq     %rbp
Ltmp12:
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
	subq      $296, %rsp
Ltmp18:
Ltmp19:
Ltmp20:
Ltmp21:
Ltmp22:
Ltmp23:
Ltmp24:
	movq      %rdi, %rcx
	movq      %rcx, 264(%rsp)
	movq      $72057594037927935, %r13
	movq      16(%rcx), %rax
	movq      %rax, 240(%rsp)
	movq      24(%rcx), %r14
	movq      %r14, 224(%rsp)
	movq      32(%rcx), %rax
	movq      %rax, 192(%rsp)
	movq      (%r14), %r12
	andq      %r13, %r12
	movq      %r12, 256(%rsp)
	movq      _sp(%rip), %rax
	subq      8(%rcx), %rax
	movq      %rax, 184(%rsp)
	movq      _rp(%rip), %rax
	movq      %rax, 176(%rsp)
	movq      $0, 288(%rsp)
	leaq      1(%r13), %rax
	movq      %rax, 216(%rsp)
	testq     (%rcx), %rax
	je        LBB3_2
	incq      -32(%rcx)
LBB3_2:
	xorl      %ebx, %ebx
	leaq      288(%rsp), %rdi
	xorl      %eax, %eax
	movq      %rcx, %rsi
	movq      %rcx, %rbp
	call      _trace_push
	movq      %rbp, %r8
	movq      (%r8), %rax
	andq      %r13, %rax
	cmpq      $8, %rax
	jne       LBB3_3
	movq      56(%r8), %r12
	movq      (%r12), %r15
	andq      %r13, %r15
	leaq      -1(%r15), %rbx
	movq      _s_var+8(%rip), %rcx
	leaq      -1(%rcx,%r15), %rax
	movq      _s_var+16(%rip), %rdx
	cmpq      %rdx, %rax
	jle       LBB3_18
	movq      %rbx, %rcx
	movq      %rcx, 248(%rsp)
	movq      _s_var(%rip), %rbp
	testq     %rdx, %rdx
	movq      %rcx, %rsi
	je        LBB3_9
	movq      %rdx, %rsi
	.align 4, 0x90
LBB3_8:
	addq      %rsi, %rsi
	cmpq      %rsi, %rax
	jg        LBB3_8
LBB3_9:
	movq      %rsi, _s_var+16(%rip)
	leaq      _s_var(%rip), %rax
	movq      (%rbp,%rax), %rdi
	movq      %rbp, 232(%rsp)
	imulq     _s_var+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movl      (%rbp), %r13d
	movl      $1, (%rbp)
	testq     %rdi, %rdi
	je        LBB3_10
	call      _realloc
	jmp       LBB3_12
LBB3_10:
	movq      %rsi, %rdi
	call      _malloc
LBB3_12:
	movq      %rax, %rbx
	movl      %r13d, (%rbp)
	testl     %r13d, %r13d
	jne       LBB3_15
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_15
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_15:
	testq     %rbx, %rbx
	movq      264(%rsp), %r8
	movq      224(%rsp), %r14
	jne       LBB3_17
	movl      $28, %edi
	xorl      %eax, %eax
	movq      %r8, %rbp
	call      _pari_err
	movq      %rbp, %r8
LBB3_17:
	movq      232(%rsp), %rax
	leaq      _s_var(%rip), %rcx
	movq      %rbx, (%rax,%rcx)
	movq      _s_var+8(%rip), %rcx
	movq      248(%rsp), %rbx
LBB3_18:
	addq      %rbx, %rcx
	movq      %rcx, _s_var+8(%rip)
	cmpq      $2, %r15
	jae       LBB3_20
	movq      256(%rsp), %r12
	jmp       LBB3_3
LBB3_20:
	shlq      $4, %rcx
	movq      _var(%rip), %rax
	movq      $0, -16(%rcx,%rax)
	movq      8(%r12), %rax
	movq      _s_var+8(%rip), %rcx
	shlq      $4, %rcx
	movq      _var(%rip), %rdx
	movq      %rax, -8(%rcx,%rdx)
	cmpq      $2, %rbx
	jl        LBB3_21
	movq      $-2, %rax
	movl      $1, %ecx
	.align 4, 0x90
LBB3_23:
	movq      _var(%rip), %rdx
	movq      _s_var+8(%rip), %rsi
	addq      %rax, %rsi
	shlq      $4, %rsi
	movq      $0, (%rdx,%rsi)
	movq      8(%r12,%rcx,8), %rdx
	incq      %rcx
	movq      _var(%rip), %rsi
	movq      _s_var+8(%rip), %rdi
	addq      %rax, %rdi
	shlq      $4, %rdi
	movq      %rdx, 8(%rsi,%rdi)
	decq      %rax
	cmpq      %rbx, %rcx
	jl        LBB3_23
	movq      256(%rsp), %r12
	jmp       LBB3_3
LBB3_21:
	movq      256(%rsp), %r12
LBB3_3:
	movq      %r8, 264(%rsp)
	movq      %rbx, 248(%rsp)
	movq      $1, 288(%rsp)
	cmpq      $2, %r12
	movq      %r14, %r13
	jb        LBB3_4
	movl      $1, %eax
	xorl      %ecx, %ecx
	movq      %rcx, 232(%rsp)
	movq      240(%rsp), %r14
	jmp       LBB3_26
LBB3_4:
	xorl      %eax, %eax
	movq      %rax, 232(%rsp)
	jmp       LBB3_448
LBB3_326:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_327:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_328:
	movq      _sp(%rip), %rax
	leaq      -3(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rdi
	movq      -16(%rcx,%rax,8), %rsi
	movq      -8(%rcx,%rax,8), %rdx
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_329:
	movq      _sp(%rip), %rax
	leaq      -4(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -32(%rcx,%rax,8), %rdi
	movq      -24(%rcx,%rax,8), %rsi
	movq      -16(%rcx,%rax,8), %rdx
	movq      -8(%rcx,%rax,8), %rcx
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_330:
	movq      _sp(%rip), %rax
	leaq      -5(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %r8
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_331:
	movq      _sp(%rip), %rax
	leaq      -6(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -48(%rbp,%rax,8), %rdi
	movq      -40(%rbp,%rax,8), %rsi
	movq      -32(%rbp,%rax,8), %rdx
	movq      -24(%rbp,%rax,8), %rcx
	movq      -16(%rbp,%rax,8), %r8
	movq      -8(%rbp,%rax,8), %r9
	jmp       LBB3_336
LBB3_332:
	movq      _sp(%rip), %rax
	leaq      -7(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -56(%rbp,%rax,8), %rdi
	movq      -48(%rbp,%rax,8), %rsi
	movq      -40(%rbp,%rax,8), %rdx
	movq      -32(%rbp,%rax,8), %rcx
	movq      -24(%rbp,%rax,8), %r8
	movq      -16(%rbp,%rax,8), %r9
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, (%rsp)
	jmp       LBB3_336
LBB3_333:
	movq      _sp(%rip), %rax
	leaq      -8(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -64(%rbp,%rax,8), %rdi
	movq      -56(%rbp,%rax,8), %rsi
	movq      -48(%rbp,%rax,8), %rdx
	movq      -40(%rbp,%rax,8), %rcx
	movq      -32(%rbp,%rax,8), %r8
	movq      -24(%rbp,%rax,8), %r9
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 8(%rsp)
	movq      %rbx, (%rsp)
	jmp       LBB3_336
LBB3_334:
	movq      _sp(%rip), %rax
	leaq      -9(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -72(%rbp,%rax,8), %rdi
	movq      -64(%rbp,%rax,8), %rsi
	movq      -56(%rbp,%rax,8), %rdx
	movq      -48(%rbp,%rax,8), %rcx
	movq      -40(%rbp,%rax,8), %r8
	movq      -32(%rbp,%rax,8), %r9
	movq      -24(%rbp,%rax,8), %r10
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 16(%rsp)
	movq      %rbx, 8(%rsp)
	jmp       LBB3_335
LBB3_337:
	movq      _sp(%rip), %rax
	leaq      -10(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -80(%rbp,%rax,8), %rdi
	movq      -72(%rbp,%rax,8), %rsi
	movq      -64(%rbp,%rax,8), %rdx
	movq      -56(%rbp,%rax,8), %rcx
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %r9
	movq      -32(%rbp,%rax,8), %r10
	movq      -24(%rbp,%rax,8), %r11
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 24(%rsp)
	movq      %rbx, 16(%rsp)
	movq      %r11, 8(%rsp)
LBB3_335:
	movq      %r10, (%rsp)
LBB3_336:
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_338:
	movq      _sp(%rip), %rax
	leaq      -11(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -88(%rbp,%rax,8), %rdi
	movq      -80(%rbp,%rax,8), %rsi
	movq      -72(%rbp,%rax,8), %rdx
	movq      -64(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -56(%rbp,%rax,8), %r8
	movq      -48(%rbp,%rax,8), %r9
	movq      -40(%rbp,%rax,8), %r10
	movq      -32(%rbp,%rax,8), %r11
	movq      %r12, %rcx
	movq      %r14, %r12
	movq      -24(%rbp,%rax,8), %r14
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 32(%rsp)
	movq      %rbx, 24(%rsp)
	movq      %r14, 16(%rsp)
	movq      %r12, %r14
	movq      %rcx, %r12
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	jmp       LBB3_339
LBB3_340:
	movq      _sp(%rip), %rax
	leaq      -12(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -96(%rbp,%rax,8), %rdi
	movq      -88(%rbp,%rax,8), %rsi
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -72(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -64(%rbp,%rax,8), %r8
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r10
	movq      -40(%rbp,%rax,8), %r11
	movq      %r13, %rdx
	movq      %r14, %r13
	movq      -32(%rbp,%rax,8), %r14
	movq      %r12, %rcx
	movq      -24(%rbp,%rax,8), %r12
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 40(%rsp)
	movq      %rbx, 32(%rsp)
	movq      %r12, 24(%rsp)
	movq      %rcx, %r12
	movq      %r14, 16(%rsp)
	movq      %r13, %r14
	movq      %rdx, %r13
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      200(%rsp), %rdx
LBB3_339:
	movq      208(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_446
LBB3_341:
	movq      _sp(%rip), %rax
	leaq      -13(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -104(%rbp,%rax,8), %rdx
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -72(%rbp,%rax,8), %r8
	movq      -64(%rbp,%rax,8), %r9
	movq      -56(%rbp,%rax,8), %r10
	movq      -48(%rbp,%rax,8), %r11
	movq      %r14, %rdi
	movq      -40(%rbp,%rax,8), %r14
	movq      %r12, %rsi
	movq      -32(%rbp,%rax,8), %r12
	movq      %r13, %rcx
	movq      -24(%rbp,%rax,8), %r13
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rcx, %r13
	movq      %r12, 24(%rsp)
	movq      %rsi, %r12
	movq      %r14, 16(%rsp)
	movq      %rdi, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      %rdx, %rdi
	movq      208(%rsp), %rsi
	movq      168(%rsp), %rdx
	jmp       LBB3_342
LBB3_343:
	movq      _sp(%rip), %rax
	leaq      -14(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -112(%rbp,%rax,8), %rsi
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -72(%rbp,%rax,8), %r9
	movq      -64(%rbp,%rax,8), %r10
	movq      -56(%rbp,%rax,8), %r11
	movq      %r14, %r8
	movq      -48(%rbp,%rax,8), %r14
	movq      %r12, %rdi
	movq      -40(%rbp,%rax,8), %r12
	movq      %r13, %rdx
	movq      -32(%rbp,%rax,8), %r13
	movq      -24(%rbp,%rax,8), %rbx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 56(%rsp)
	movq      %rcx, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rdx, %r13
	movq      %r12, 24(%rsp)
	movq      %rdi, %r12
	movq      %r14, 16(%rsp)
	movq      %r8, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      208(%rsp), %rsi
	movq      168(%rsp), %rdx
	movq      160(%rsp), %r8
LBB3_342:
	movq      200(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_446
LBB3_344:
	movq      _sp(%rip), %rax
	leaq      -15(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -120(%rbp,%rax,8), %rdi
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -72(%rbp,%rax,8), %r10
	movq      -64(%rbp,%rax,8), %r11
	movq      %r14, %r9
	movq      -56(%rbp,%rax,8), %r14
	movq      %r12, %r8
	movq      -48(%rbp,%rax,8), %r12
	movq      %r13, %rsi
	movq      -40(%rbp,%rax,8), %r13
	movq      -32(%rbp,%rax,8), %rbx
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 64(%rsp)
	movq      %rcx, 56(%rsp)
	movq      %rdx, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rsi, %r13
	movq      %r12, 24(%rsp)
	movq      %r8, %r12
	movq      %r14, 16(%rsp)
	movq      %r9, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	jmp       LBB3_345
LBB3_346:
	movq      _sp(%rip), %rax
	leaq      -16(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -128(%rbp,%rax,8), %r8
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -72(%rbp,%rax,8), %r11
	movq      %r14, %r10
	movq      -64(%rbp,%rax,8), %r14
	movq      %r12, %r9
	movq      -56(%rbp,%rax,8), %r12
	movq      %r13, %rdi
	movq      -48(%rbp,%rax,8), %r13
	movq      -40(%rbp,%rax,8), %rbx
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 72(%rsp)
	movq      %rcx, 64(%rsp)
	movq      %rdx, 56(%rsp)
	movq      %rsi, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rdi, %r13
	movq      %r12, 24(%rsp)
	movq      %r9, %r12
	movq      %r14, 16(%rsp)
	movq      %r10, %r14
	movq      %r11, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r8, %rdi
	jmp       LBB3_345
LBB3_347:
	movq      _sp(%rip), %rax
	leaq      -17(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -136(%rbp,%rax,8), %r9
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      %r14, %r11
	movq      -72(%rbp,%rax,8), %r14
	movq      %r12, %r10
	movq      -64(%rbp,%rax,8), %r12
	movq      %r13, %r8
	movq      -56(%rbp,%rax,8), %r13
	movq      -48(%rbp,%rax,8), %rbx
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 80(%rsp)
	movq      %rcx, 72(%rsp)
	movq      %rdx, 64(%rsp)
	movq      %rsi, 56(%rsp)
	movq      %rdi, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r8, %r13
	movq      %r12, 24(%rsp)
	movq      %r10, %r12
	movq      %r14, 16(%rsp)
	movq      %r11, %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r9, %rdi
	jmp       LBB3_345
LBB3_348:
	movq      _sp(%rip), %rax
	leaq      -18(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -144(%rbp,%rax,8), %r10
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -80(%rbp,%rax,8), %r14
	movq      %r12, %r11
	movq      -72(%rbp,%rax,8), %r12
	movq      %r13, %r9
	movq      -64(%rbp,%rax,8), %r13
	movq      -56(%rbp,%rax,8), %rbx
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 88(%rsp)
	movq      %rcx, 80(%rsp)
	movq      %rdx, 72(%rsp)
	movq      %rsi, 64(%rsp)
	movq      %rdi, 56(%rsp)
	movq      %r8, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r9, %r13
	movq      %r12, 24(%rsp)
	movq      %r11, %r12
	movq      %r14, 16(%rsp)
	movq      240(%rsp), %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r10, %rdi
	jmp       LBB3_345
LBB3_349:
	movq      _sp(%rip), %rax
	leaq      -19(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -152(%rbp,%rax,8), %r11
	movq      -144(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 128(%rsp)
	movq      %r12, %r14
	movq      -80(%rbp,%rax,8), %r12
	movq      %r13, %r10
	movq      -72(%rbp,%rax,8), %r13
	movq      -64(%rbp,%rax,8), %rbx
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 96(%rsp)
	movq      %rcx, 88(%rsp)
	movq      %rdx, 80(%rsp)
	movq      %rsi, 72(%rsp)
	movq      %rdi, 64(%rsp)
	movq      %r8, 56(%rsp)
	movq      %r9, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r10, %r13
	movq      %r12, 24(%rsp)
	movq      %r14, %r12
	movq      128(%rsp), %rax
	movq      %rax, 16(%rsp)
	movq      240(%rsp), %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r11, %rdi
LBB3_345:
	movq      200(%rsp), %rsi
	movq      160(%rsp), %r8
	movq      152(%rsp), %r9
	movq      208(%rsp), %rdx
	movq      168(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_446
LBB3_350:
	movq      _sp(%rip), %rax
	leaq      -20(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -160(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -152(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -144(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 128(%rsp)
	movq      -96(%rbp,%rax,8), %r14
	movq      -88(%rbp,%rax,8), %r12
	movq      %r13, %r11
	movq      -80(%rbp,%rax,8), %r13
	movq      -72(%rbp,%rax,8), %rbx
	movq      -64(%rbp,%rax,8), %r10
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 104(%rsp)
	movq      %rcx, 96(%rsp)
	movq      %rdx, 88(%rsp)
	movq      %rsi, 80(%rsp)
	movq      %rdi, 72(%rsp)
	movq      %r8, 64(%rsp)
	movq      %r9, 56(%rsp)
	movq      %r10, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r11, %r13
	movq      %r12, 24(%rsp)
	movq      256(%rsp), %r12
	movq      %r14, 16(%rsp)
	movq      240(%rsp), %r14
	movq      128(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      136(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      208(%rsp), %rdi
	movq      168(%rsp), %rsi
	movq      152(%rsp), %r8
	movq      144(%rsp), %r9
	movq      200(%rsp), %rdx
	movq      160(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_446
LBB3_135:
	cmpq      $1, %rax
	movq      $72057594037927935, %r12
	jne       LBB3_161
	movq      8(%rbx), %r10
	movq      %r10, %rdx
	andq      %r12, %rdx
	leaq      0(,%rdx,8), %rax
	movq      %rbp, %r15
	subq      %rax, %r15
	cmpq      $2, %rdx
	jb        LBB3_147
	movq      %r10, %rsi
	andq      %r12, %rsi
	movq      %rsi, %rdi
	negq      %rdi
	cmpq      $-3, %rdi
	movq      $-2, %r11
	movq      $-2, %rax
	cmovg     %rdi, %rax
	leaq      (%rax,%rsi), %rcx
	cmpq      $-1, %rcx
	movq      %rdx, %rcx
	je        LBB3_145
	leaq      1(%rax,%rsi), %r8
	incq      %rax
	addl      %r10d, %eax
	andq      $3, %rax
	cmpq      $-3, %rdi
	cmovg     %rdi, %r11
	xorl      %r14d, %r14d
	movq      %r8, %r9
	subq      %rax, %r9
	movq      %rdx, %rcx
	je        LBB3_144
	movq      %r11, %rax
	notq      %rax
	leaq      (%rbx,%rax,8), %rax
	leaq      -8(%rbp), %rcx
	xorl      %r14d, %r14d
	cmpq      %rax, %rcx
	ja        LBB3_141
	leaq      -8(%rbx,%rsi,8), %rax
	addq      %rsi, %r11
	notq      %r11
	leaq      (%rbp,%r11,8), %rcx
	cmpq      %rcx, %rax
	movq      %rdx, %rcx
	jbe       LBB3_144
LBB3_141:
	movq      %rdx, %rcx
	subq      %r9, %rcx
	cmpq      $-3, %rdi
	movq      $-2, %r11
	cmovg     %rdi, %r11
	cmpq      $-2, %rdi
	movl      $-2, %eax
	cmovg     %edi, %eax
	leal      1(%r10,%rax), %edi
	andq      $3, %rdi
	subq      %r11, %rdi
	decq      %rdi
LBB3_142:
	movd      %rsi, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LCPI3_0(%rip), %xmm0
	movd      %xmm0, %rax
	movups    -8(%rbx,%rax,8), %xmm0
	movups    -24(%rbx,%rax,8), %xmm1
	subq      %rdx, %rax
	movups    %xmm0, -8(%rbp,%rax,8)
	movups    %xmm1, -24(%rbp,%rax,8)
	addq      $-4, %rsi
	cmpq      %rsi, %rdi
	jne       LBB3_142
	movq      %r9, %r14
LBB3_144:
	cmpq      %r14, %r8
	movq      240(%rsp), %r14
	je        LBB3_147
LBB3_145:
	andq      %r12, %r10
	shlq      $3, %r10
	subq      %r10, %rbp
	addq      $-8, %rbp
LBB3_146:
	movq      -8(%rbx,%rcx,8), %rax
	movq      %rax, (%rbp,%rcx,8)
	leaq      -1(%rcx), %rcx
	cmpq      $1, %rcx
	jg        LBB3_146
LBB3_147:
	movq      $144115188075855875, %rax
	leaq      -3(%rax), %rax
	orq       %rax, %rdx
	movq      %rdx, (%r15)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r15, (%rax)
	movq      %r15, %rbx
	jmp       LBB3_162
LBB3_95:
	andq      %rax, %r8
	leaq      (%rcx,%r8,8), %rsi
	movq      %rcx, %rdx
	call      _gerepile
	movq      %rax, %rcx
	jmp       LBB3_96
LBB3_161:
	andq      %r12, %r8
	leaq      (%rbx,%r8,8), %rsi
	movq      %rbp, %rdi
	movq      %rbx, %rdx
	call      _gerepile
	movq      %rax, %rbx
LBB3_162:
	movq      256(%rsp), %r12
LBB3_163:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %rbx, -8(%rcx,%rax,8)
	jmp       LBB3_446
	.align 4, 0x90
LBB3_26:
	movsbl    7(%r14,%rax), %ebp
	movq      (%r13,%rax,8), %r15
	cmpq      $0, _sp(%rip)
	jns       LBB3_28
	movl      $2, %edi
	xorl      %eax, %eax
	leaq      L_.str(%rip), %rsi
	call      _pari_err
LBB3_28:
	movl      $16, %edi
	xorl      %eax, %eax
	call      _st_alloc
	addl      $-65, %ebp
	cmpl      $56, %ebp
	ja        LBB3_446
	movq      %r15, %rbx
	negq      %rbx
	leaq      LJTI3_0(%rip), %rax
	movq      %rax, %rcx
	movslq    (%rcx,%rbp,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB3_34:
	movq      _gnil@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       LBB3_273
LBB3_272:
	movq      192(%rsp), %rax
	movq      (%rax,%r15,8), %rax
	jmp       LBB3_273
LBB3_36:
	movq      192(%rsp), %rax
	movq      (%rax,%r15,8), %rdi
	addq      $8, %rdi
	movq      _precreal@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      _strtor
	jmp       LBB3_273
LBB3_37:
	movq      %r14, %r12
	testq     %r15, %r15
	je        LBB3_38
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbp
	leaq      -24(%rbp), %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %rbp, %rax
	subq      (%rcx), %rax
	testq     %r15, %r15
	jle       LBB3_43
	cmpq      $23, %rax
	ja        LBB3_42
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbx
	call      _pari_err
	movq      %rbx, %rdx
LBB3_42:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $4611686018427387907, %rax
	movq      %rax, -16(%rbp)
	movq      %r15, -8(%rbp)
	jmp       LBB3_46
LBB3_47:
	movq      %r15, %rdi
	call      _pari_var_create
	addq      $72, %r15
LBB3_48:
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      %r15, (%rcx,%rax,8)
	jmp       LBB3_446
LBB3_445:
	subq      %r15, _sp(%rip)
	jmp       LBB3_446
LBB3_102:
	movq      %r12, %r15
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rbx
	movq      %r14, %r12
	testq     %rbx, %rbx
	je        LBB3_103
	jle       LBB3_108
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbp
	leaq      -24(%rbp), %r14
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbp, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        LBB3_107
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_107:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $4611686018427387907, %rax
	jmp       LBB3_111
LBB3_113:
	movq      _sp(%rip), %rax
	addq      %r15, %rax
	movq      _st(%rip), %rcx
	movq      (%rcx,%rax,8), %rbp
	jmp       LBB3_114
LBB3_122:
	movq      _sp(%rip), %rcx
	leaq      (%rcx,%r15), %rax
	movq      _st(%rip), %rdx
	movq      (%rdx,%rax,8), %rax
	movq      (%rax), %rsi
	movq      $-144115188075855872, %rdi
	andq      %rdi, %rsi
	movq      $3026418949592973312, %rdi
	cmpq      %rdi, %rsi
	je        LBB3_124
	movq      %rax, %rdi
	call      _GENtoGENstr
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
LBB3_124:
	addq      $8, %rax
	addq      %r15, %rcx
	movq      %rax, (%rdx,%rcx,8)
	jmp       LBB3_446
LBB3_125:
	movq      _sp(%rip), %rax
	addq      %r15, %rax
	movq      _st(%rip), %rcx
	movq      (%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      _closure_varn
	cltq      
	jmp       LBB3_121
LBB3_165:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	jmp       LBB3_166
LBB3_164:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	movq      216(%rsp), %rax
	testq     (%rdi), %rax
	je        LBB3_446
LBB3_166:
	call      _gcopy
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
	movq      %rax, -8(%rdx,%rcx,8)
	jmp       LBB3_446
LBB3_97:
	movq      _precreal@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       LBB3_273
LBB3_98:
	movq      _precdl@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       LBB3_273
LBB3_421:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	leaq      (%rax,%rbx,8), %rbx
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       LBB3_423
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_423:
	movq      %rbx, (%rbp)
	movq      $72057594037927935, %rax
	cmpq      %rax, %r15
	jbe       LBB3_425
	leaq      L_.str12(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_425:
	movq      $2449958197289549824, %rax
	jmp       LBB3_426
LBB3_432:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %r14
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rax
	movq      %rax, 208(%rsp)
	leaq      (%rax,%rbx,8), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       LBB3_434
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbx
	call      _pari_err
	movq      %rbx, %rdx
LBB3_434:
	movq      %rbp, (%rdx)
	movq      $72057594037927935, %rax
	cmpq      %rax, %r15
	jbe       LBB3_436
	leaq      L_.str12(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbx
	call      _pari_err
	movq      %rbx, %rdx
LBB3_436:
	movq      %r15, %rax
	movq      $2738188573441261568, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbp)
	movq      %rbp, 168(%rsp)
	cmpq      $2, %r15
	jl        LBB3_444
	movq      %r14, 200(%rsp)
	movq      %r14, %r12
	negq      %r12
	movq      %r14, %r13
	movq      $2594073385365405696, %rax
	orq       %rax, %r13
	movq      $72057594037927935, %rax
	movl      $1, %ebx
	subq      %r15, %rbx
	cmpq      %rax, %r14
	jbe       LBB3_438
	.align 4, 0x90
LBB3_441:
	movq      (%rdx), %rax
	leaq      (%rax,%r12,8), %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      200(%rsp), %rax
	jae       LBB3_443
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r15
	call      _pari_err
	movq      %r15, %rdx
LBB3_443:
	movq      %r14, (%rdx)
	leaq      L_.str12(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbp
	call      _pari_err
	movq      %rbp, %rdx
	movq      %r13, (%r14)
	movq      208(%rsp), %rax
	movq      %r14, (%rax,%rbx,8)
	incq      %rbx
	jne       LBB3_441
	jmp       LBB3_444
	.align 4, 0x90
LBB3_438:
	movq      (%rdx), %rax
	leaq      (%rax,%r12,8), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      200(%rsp), %rax
	jae       LBB3_440
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r15
	call      _pari_err
	movq      %r15, %rdx
LBB3_440:
	movq      %rbp, (%rdx)
	movq      %r13, (%rbp)
	movq      208(%rsp), %rax
	movq      %rbp, (%rax,%rbx,8)
	incq      %rbx
	jne       LBB3_438
LBB3_444:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      168(%rsp), %rsi
	movq      %rsi, -8(%rcx,%rax,8)
	movq      (%rdx), %rax
	movq      _sp(%rip), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, _sp(%rip)
	movq      _st(%rip), %rdx
	movq      %rax, (%rdx,%rcx,8)
	jmp       LBB3_230
LBB3_427:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	leaq      (%rax,%rbx,8), %rbx
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       LBB3_429
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_429:
	movq      %rbx, (%rbp)
	movq      $72057594037927935, %rax
	cmpq      %rax, %r15
	jbe       LBB3_431
	leaq      L_.str12(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_431:
	movq      $2594073385365405696, %rax
LBB3_426:
	orq       %rax, %r15
	movq      %r15, (%rbx)
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      %rbx, (%rcx,%rax,8)
	movq      (%rbp), %rax
	jmp       LBB3_273
LBB3_62:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rcx
	movq      _bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rcx
	jb        LBB3_65
	cmpq      %rcx, %rdi
	jbe       LBB3_65
	movq      _top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rcx
	jae       LBB3_65
	movq      (%rcx), %r8
	movq      %r8, %rax
	shrq      $57, %rax
	leaq      -21(%rax), %rsi
	cmpq      $2, %rsi
	jb        LBB3_81
	cmpq      $2, %rax
	jne       LBB3_68
LBB3_81:
	movq      %r8, %rax
	movq      $72057594037927935, %rbx
	andq      %rbx, %rax
	shlq      $3, %rax
	movq      %rdi, %r11
	subq      %rax, %r11
	movq      %r8, %rsi
	andq      %rbx, %rsi
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r11, (%rax)
	je        LBB3_82
	movq      %r8, %rax
	movq      $-72057594037927936, %rdx
	orq       %rdx, %rax
	movq      %rax, %rbp
	xorq      %rbx, %rbp
	cmpq      %rdx, %rax
	movq      $-2, %r14
	movq      $-2, %r12
	cmove     %rbp, %r12
	leaq      (%r12,%rsi), %rbx
	cmpq      $-2, %rbx
	je        LBB3_92
	leaq      2(%r12), %rbx
	leaq      2(%r12,%rsi), %r9
	addl      %r8d, %ebx
	andq      $3, %rbx
	cmpq      %rdx, %rax
	movq      %r9, %rdx
	cmove     %rbp, %r14
	xorl      %r10d, %r10d
	subq      %rbx, %r9
	je        LBB3_90
	movq      $-2, %rax
	movq      $-2, %rbp
	subq      %r14, %rbp
	leaq      (%rcx,%rbp,8), %rbx
	leaq      -8(%rdi), %rbp
	xorl      %r10d, %r10d
	cmpq      %rbx, %rbp
	ja        LBB3_87
	leaq      -8(%rcx,%rsi,8), %rbx
	addq      %rsi, %r14
	subq      %r14, %rax
	leaq      (%rdi,%rax,8), %rax
	cmpq      %rax, %rbx
	jbe       LBB3_90
LBB3_87:
	movq      %rsi, %r10
	subq      %r9, %r10
	leal      2(%r12,%r8), %ebp
	andq      $3, %rbp
	subq      %r12, %rbp
	addq      $-2, %rbp
	movq      %rsi, %rax
LBB3_88:
	movd      %rax, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LCPI3_0(%rip), %xmm0
	movd      %xmm0, %rbx
	movups    -8(%rcx,%rbx,8), %xmm0
	movups    -24(%rcx,%rbx,8), %xmm1
	subq      %rsi, %rbx
	movups    %xmm0, -8(%rdi,%rbx,8)
	movups    %xmm1, -24(%rdi,%rbx,8)
	addq      $-4, %rax
	cmpq      %rax, %rbp
	jne       LBB3_88
	movq      %r10, %rsi
	movq      %r9, %r10
LBB3_90:
	cmpq      %r10, %rdx
	jne       LBB3_92
	movq      %r11, %rcx
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
	jmp       LBB3_96
LBB3_167:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rbx
	movq      -8(%rcx,%rax,8), %rbp
	leaq      -2(%rax), %rax
	movq      %rax, _sp(%rip)
	movq      (%rbx), %rsi
	movq      %rsi, %rax
	shrq      $57, %rax
	cmpq      $22, %rax
	je        LBB3_175
	cmpq      $20, %rax
	movq      $72057594037927935, %rcx
	je        LBB3_171
	addq      $-17, %rax
	cmpq      $1, %rax
	jbe       LBB3_173
	leaq      L_.str2(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	jmp       LBB3_446
LBB3_197:
	movq      %r14, %r13
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rbx
	movq      -16(%rcx,%rax,8), %r14
	movq      -8(%rcx,%rax,8), %r12
	movq      (%rbx), %rsi
	movq      %rsi, %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $2738188573441261568, %rcx
	cmpq      %rcx, %rax
	je        LBB3_199
	leaq      L_.str3(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      (%rbx), %rsi
LBB3_199:
	movq      $72057594037927935, %rax
	movq      %rax, %rbp
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _check_array_index
	movq      (%rbx,%r12,8), %rax
	movq      (%rax), %rsi
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _check_array_index
	addq      $-3, _sp(%rip)
	movq      (%rbx,%r12,8), %rax
	movq      (%rax,%r14,8), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _closure_castgen
	movq      %r13, %r14
	jmp       LBB3_231
LBB3_203:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rbp
	movq      -8(%rcx,%rax,8), %rbx
	movq      (%rbp), %rsi
	movq      %rsi, %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $2738188573441261568, %rcx
	cmpq      %rcx, %rax
	je        LBB3_205
	leaq      L_.str4(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      (%rbp), %rsi
LBB3_205:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _check_array_index
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      (%rbp,%rbx,8), %rcx
	movq      _st(%rip), %rdx
	movq      %rcx, -16(%rdx,%rax,8)
	jmp       LBB3_446
LBB3_209:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %r15
	movq      -8(%rcx,%rax,8), %r14
	decq      %rax
	movq      %rax, _sp(%rip)
	movq      (%r15), %rax
	movq      %rax, %rcx
	movq      $-144115188075855872, %rdx
	andq      %rdx, %rcx
	movq      $2738188573441261568, %rdx
	cmpq      %rdx, %rcx
	je        LBB3_211
	leaq      L_.str5(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      (%r15), %rax
LBB3_211:
	movq      $72057594037927935, %rbp
	andq      %rbp, %rax
	cmpq      $1, %rax
	jne       LBB3_213
	leaq      L_.str6(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_213:
	movq      8(%r15), %rax
	movq      (%rax), %rsi
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _check_array_index
	movq      (%r15), %rbx
	andq      %rbp, %rbx
	movq      _avma@GOTPCREL(%rip), %r12
	movq      (%r12), %rax
	leaq      0(,%rbx,8), %rcx
	movq      %rax, %rbp
	subq      %rcx, %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbx, %rax
	jae       LBB3_215
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_215:
	movq      %rbp, (%r12)
	movq      %rbx, %rax
	movq      $2449958197289549824, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbp)
	cmpq      $2, %rbx
	jb        LBB3_218
	movl      $1, %eax
	.align 4, 0x90
LBB3_217:
	movq      (%r15,%rax,8), %rcx
	movq      (%rcx,%r14,8), %rcx
	movq      %rcx, (%rbp,%rax,8)
	incq      %rax
	cmpq      %rbx, %rax
	jl        LBB3_217
LBB3_218:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %rbp, -8(%rcx,%rax,8)
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
	jmp       LBB3_446
LBB3_56:
	imulq     $56, _rp(%rip), %rax
	movq      _ptrs(%rip), %rcx
	movq      _sp(%rip), %rdx
	movq      %rdx, -8(%rax,%rcx)
	leaq      -32(%rax,%rcx), %rax
	jmp       LBB3_273
LBB3_30:
	testq     %r15, %r15
	jle       LBB3_446
	.align 4, 0x90
LBB3_31:
	movq      _rp(%rip), %rcx
	decq      %rcx
	movq      %rcx, _rp(%rip)
	movq      _ptrs(%rip), %rax
	imulq     $56, %rcx, %rcx
	movq      32(%rax,%rcx), %rdi
	testq     %rdi, %rdi
	je        LBB3_58
	movq      24(%rax,%rcx), %rsi
	movq      40(%rax,%rcx), %rcx
	testq     %rcx, %rcx
	je        LBB3_57
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _changelex
	jmp       LBB3_59
	.align 4, 0x90
LBB3_58:
	leaq      (%rax,%rcx), %rdi
	movq      24(%rax,%rcx), %rsi
	xorl      %eax, %eax
	call      _change_compo
	jmp       LBB3_59
	.align 4, 0x90
LBB3_57:
	call      _changevalue
LBB3_59:
	decq      %r15
	jne       LBB3_31
	jmp       LBB3_446
LBB3_176:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rbx
	decq      %rax
	movq      _rp(%rip), %rcx
	decq      %rcx
	movq      _ptrs(%rip), %r15
	imulq     $56, %rcx, %r12
	leaq      (%r15,%r12), %r14
	leaq      24(%r15,%r12), %rcx
	movq      %rcx, 208(%rsp)
	movq      24(%r15,%r12), %rbp
	movq      %rax, _sp(%rip)
	movq      (%rbp), %rsi
	movq      %rsi, %rax
	shrq      $57, %rax
	cmpq      $22, %rax
	je        LBB3_182
	cmpq      $20, %rax
	je        LBB3_193
	addq      $-17, %rax
	cmpq      $1, %rax
	jbe       LBB3_195
	leaq      L_.str2(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	jmp       LBB3_180
LBB3_200:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %r14
	movq      -8(%rcx,%rax,8), %r12
	leaq      -2(%rax), %rax
	movq      _rp(%rip), %rcx
	decq      %rcx
	movq      _ptrs(%rip), %r13
	imulq     $56, %rcx, %rbp
	leaq      24(%r13,%rbp), %rcx
	movq      %rcx, 208(%rsp)
	movq      24(%r13,%rbp), %rbx
	movq      %rax, _sp(%rip)
	movq      (%rbx), %rsi
	movq      %rsi, %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $2738188573441261568, %rcx
	cmpq      %rcx, %rax
	je        LBB3_202
	leaq      L_.str3(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      (%rbx), %rsi
LBB3_202:
	movq      $72057594037927935, %r15
	andq      %r15, %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _check_array_index
	movq      (%rbx,%r12,8), %rax
	movq      (%rax), %rsi
	andq      %r15, %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _check_array_index
	movq      (%rbx,%r12,8), %rax
	leaq      (%rax,%r14,8), %rcx
	movq      %rcx, (%r13,%rbp)
	movq      %rbx, 8(%r13,%rbp)
	movq      (%rax,%r14,8), %rax
	movq      208(%rsp), %rcx
	jmp       LBB3_229
LBB3_206:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %r15
	decq      %rax
	movq      _rp(%rip), %rcx
	decq      %rcx
	movq      _ptrs(%rip), %rbp
	imulq     $56, %rcx, %rbx
	leaq      (%rbp,%rbx), %r13
	leaq      24(%rbp,%rbx), %r14
	movq      24(%rbp,%rbx), %r12
	movq      %rax, _sp(%rip)
	movq      (%r12), %rsi
	movq      %rsi, %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $2738188573441261568, %rcx
	cmpq      %rcx, %rax
	je        LBB3_208
	leaq      L_.str4(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      (%r12), %rsi
LBB3_208:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _check_array_index
	leaq      (%r12,%r15,8), %rax
	movq      %rax, (%r13)
	movl      %r15d, 16(%rbp,%rbx)
	movq      %r12, 8(%rbp,%rbx)
	movq      (%r12,%r15,8), %rax
	movq      %rax, (%r14)
	jmp       LBB3_230
LBB3_219:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %r12
	decq      %rax
	movq      _rp(%rip), %rcx
	decq      %rcx
	movq      _ptrs(%rip), %r14
	imulq     $56, %rcx, %r15
	movq      24(%r14,%r15), %r13
	movq      %rax, _sp(%rip)
	movq      (%r13), %rax
	movq      %rax, %rcx
	movq      $-144115188075855872, %rdx
	andq      %rdx, %rcx
	movq      $2738188573441261568, %rdx
	cmpq      %rdx, %rcx
	je        LBB3_221
	leaq      L_.str5(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      (%r13), %rax
LBB3_221:
	movq      $72057594037927935, %rcx
	andq      %rcx, %rax
	cmpq      $1, %rax
	jne       LBB3_223
	leaq      L_.str6(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_223:
	movq      8(%r13), %rax
	movq      (%rax), %rsi
	movq      $72057594037927935, %rax
	movq      %rax, %rbp
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _check_array_index
	movq      (%r13), %rbx
	andq      %rbp, %rbx
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rax
	leaq      0(,%rbx,8), %rcx
	movq      %rax, %rbp
	subq      %rcx, %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbx, %rax
	jae       LBB3_225
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r14, 208(%rsp)
	movq      %rdx, %r14
	call      _pari_err
	movq      %r14, %rdx
	movq      208(%rsp), %r14
LBB3_225:
	leaq      24(%r14,%r15), %rax
	movq      %rax, 200(%rsp)
	movq      %r14, 208(%rsp)
	movq      %rbp, (%rdx)
	movq      %rbx, %rax
	movq      $2449958197289549824, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbp)
	cmpq      $2, %rbx
	jb        LBB3_228
	movl      $1, %r14d
	.align 4, 0x90
LBB3_227:
	movq      (%r13,%r14,8), %rax
	movq      (%rax,%r12,8), %rdi
	call      _gcopy
	movq      %rax, (%rbp,%r14,8)
	incq      %r14
	cmpq      %rbx, %r14
	jl        LBB3_227
LBB3_228:
	movq      %rbp, 280(%rsp)
	movq      208(%rsp), %rcx
	movl      %r12d, 20(%rcx,%r15)
	leaq      280(%rsp), %rax
	movq      %rax, (%rcx,%r15)
	movq      %r13, 8(%rcx,%r15)
	movq      280(%rsp), %rax
	movq      200(%rsp), %rcx
LBB3_229:
	movq      %rax, (%rcx)
	jmp       LBB3_230
LBB3_275:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        LBB3_447
	leaq      LJTI3_3(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB3_261:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        LBB3_447
	leaq      LJTI3_4(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB3_293:
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_274:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	call      *16(%r15)
	jmp       LBB3_273
LBB3_294:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        LBB3_447
	leaq      LJTI3_2(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB3_321:
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_323:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        LBB3_447
	leaq      LJTI3_1(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB3_325:
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_446
LBB3_351:
	movq      %r15, %rax
	notq      %rax
	addq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      (%rcx,%rax,8), %r12
	movq      (%r12), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $3314649325744685056, %rcx
	cmpq      %rcx, %rax
	je        LBB3_353
	movl      $9, %edi
	xorl      %eax, %eax
	movq      %r12, %rsi
	call      _pari_err
LBB3_353:
	movq      8(%r12), %rbx
	movq      %rbx, %rbp
	subq      %r15, %rbp
	je        LBB3_358
	jge       LBB3_356
	leaq      L_.str8(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_356:
	xorl      %eax, %eax
	movq      %rbp, %rdi
	call      _st_alloc
	subq      %r15, %rbx
	jle       LBB3_358
	.align 4, 0x90
LBB3_357:
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      $0, (%rcx,%rax,8)
	decq      %rbx
	jne       LBB3_357
LBB3_358:
	movq      _PARI_stack_limit@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	testq     %rax, %rax
	je        LBB3_361
	leaq      272(%rsp), %rcx
	cmpq      %rax, %rcx
	ja        LBB3_361
	leaq      L_.str9(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_361:
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _closure_return
	cltq      
	movq      %rax, 272(%rsp)
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
	movq      %rax, -8(%rdx,%rcx,8)
	movq      256(%rsp), %r12
	jmp       LBB3_446
LBB3_362:
	movq      _s_var+8(%rip), %rcx
	leaq      (%rcx,%r15), %rax
	movq      _s_var+16(%rip), %rdx
	cmpq      %rdx, %rax
	jle       LBB3_374
	movq      _s_var(%rip), %r12
	testq     %rdx, %rdx
	movq      %r15, %rsi
	je        LBB3_365
	.align 4, 0x90
LBB3_364:
	addq      %rdx, %rdx
	cmpq      %rdx, %rax
	movq      %rdx, %rsi
	jg        LBB3_364
LBB3_365:
	movq      %rsi, _s_var+16(%rip)
	leaq      _s_var(%rip), %r14
	movq      (%r12,%r14), %rdi
	imulq     _s_var+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r13
	movl      (%r13), %ebx
	movl      $1, (%r13)
	testq     %rdi, %rdi
	je        LBB3_366
	call      _realloc
	jmp       LBB3_368
LBB3_377:
	testq     %r15, %r15
	leaq      _shallowcopy(%rip), %rcx
	cmovne    _gcopy@GOTPCREL(%rip), %rcx
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rdx
	movq      -8(%rdx,%rax,8), %rdi
	call      *%rcx
	movq      %rax, %r14
	movq      56(%r14), %rax
	movq      (%rax), %r13
	movq      $72057594037927935, %rax
	andq      %rax, %r13
	movq      _avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	leaq      0(,%r13,8), %rcx
	movq      %rax, %r12
	subq      %rcx, %r12
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r13, %rax
	jae       LBB3_379
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_379:
	movq      %r12, (%rbx)
	movq      %r13, %rax
	movq      $2449958197289549824, %rcx
	orq       %rcx, %rax
	movq      %rax, (%r12)
	cmpq      $2, %r13
	jb        LBB3_385
	testq     %r15, %r15
	je        LBB3_381
	movq      $-1, %rbp
	movl      $1, %ebx
	.align 4, 0x90
LBB3_384:
	movq      _var(%rip), %rax
	movq      _s_var+8(%rip), %rcx
	addq      %rbp, %rcx
	shlq      $4, %rcx
	movq      8(%rax,%rcx), %rdi
	call      _gcopy
	movq      %rax, (%r12,%rbx,8)
	incq      %rbx
	decq      %rbp
	cmpq      %r13, %rbx
	jl        LBB3_384
	jmp       LBB3_385
LBB3_49:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	movq      16(%r15), %rax
	jmp       LBB3_273
LBB3_60:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rsi
	movq      %r15, %rdi
	call      _changevalue
	jmp       LBB3_446
LBB3_53:
	xorl      %eax, %eax
	call      _new_ptr
	movslq    %eax, %rbx
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	movq      $-1, 48(%rbx)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copyvalue
	jmp       LBB3_55
LBB3_51:
	xorl      %eax, %eax
	call      _new_ptr
	movslq    %eax, %rbx
	movq      $0, 40(%rbx)
	movq      %r15, 32(%rbx)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	movq      32(%rbx), %rax
	movq      16(%rax), %rax
	movq      %rax, 24(%rbx)
	movq      _sp(%rip), %rax
	movq      %rax, 48(%rbx)
	leaq      24(%rbx), %rax
	jmp       LBB3_273
LBB3_50:
	addq      _s_var+8(%rip), %r15
	movq      _var(%rip), %rax
	shlq      $4, %r15
	movq      8(%rax,%r15), %rax
	jmp       LBB3_273
LBB3_61:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _changelex
	jmp       LBB3_446
LBB3_54:
	xorl      %eax, %eax
	call      _new_ptr
	movslq    %eax, %rbx
	movq      $-1, 48(%rbx)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copylex
LBB3_55:
	cltq      
	leaq      24(%rbx), %rcx
	movq      %rax, 24(%rbx)
	movq      $0, 16(%rbx)
	movq      $0, 40(%rbx)
	movq      $0, 32(%rbx)
	movq      %rax, 8(%rbx)
	movq      %rcx, (%rbx)
	jmp       LBB3_446
LBB3_52:
	xorl      %eax, %eax
	call      _new_ptr
	cltq      
	movq      %r15, 40(%rax)
	movq      $1, 32(%rax)
	addq      _s_var+8(%rip), %r15
	movq      _var(%rip), %rcx
	shlq      $4, %r15
	movq      8(%rcx,%r15), %rcx
	movq      %rcx, 24(%rax)
	movq      _sp(%rip), %rcx
	movq      %rcx, 48(%rax)
	leaq      24(%rax), %rax
	jmp       LBB3_273
LBB3_386:
	movq      _s_var+8(%rip), %rdx
	leaq      (%rdx,%r15), %rax
	movq      _s_var+16(%rip), %rcx
	cmpq      %rcx, %rax
	jle       LBB3_398
	movq      _s_var(%rip), %r14
	testq     %rcx, %rcx
	movq      %r15, %rsi
	je        LBB3_389
	.align 4, 0x90
LBB3_388:
	addq      %rcx, %rcx
	cmpq      %rcx, %rax
	movq      %rcx, %rsi
	jg        LBB3_388
LBB3_389:
	movq      %rsi, _s_var+16(%rip)
	leaq      _s_var(%rip), %rax
	movq      (%r14,%rax), %rdi
	imulq     _s_var+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movl      (%r12), %ebp
	movl      $1, (%r12)
	testq     %rdi, %rdi
	je        LBB3_390
	call      _realloc
	jmp       LBB3_392
LBB3_232:
	movq      _s_var+8(%rip), %rax
	addq      %r15, %rax
	movq      _var(%rip), %rcx
	shlq      $4, %rax
	cmpq      $2, (%rcx,%rax)
	jne       LBB3_234
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	call      _closure_evalnobrk
	movq      %rax, %rcx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %rcx, %rsi
	call      _pushlex
LBB3_234:
	decq      _sp(%rip)
	jmp       LBB3_446
LBB3_235:
	movq      _s_lvars+8(%rip), %rbp
	movq      _s_lvars+16(%rip), %rax
	cmpq      %rax, %rbp
	jl        LBB3_247
	movq      264(%rsp), %r14
	movq      _s_lvars(%rip), %r12
	movl      $1, %esi
	testq     %rax, %rax
	je        LBB3_238
	.align 4, 0x90
LBB3_237:
	addq      %rax, %rax
	cmpq      %rax, %rbp
	movq      %rax, %rsi
	jge       LBB3_237
LBB3_238:
	movq      %rsi, _s_lvars+16(%rip)
	leaq      _s_lvars(%rip), %rax
	movq      (%r12,%rax), %rdi
	imulq     _s_lvars+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r13
	movl      (%r13), %ebx
	movl      $1, (%r13)
	testq     %rdi, %rdi
	je        LBB3_239
	call      _realloc
	jmp       LBB3_241
LBB3_248:
	movq      _s_lvars+8(%rip), %rbp
	movq      _s_lvars+16(%rip), %rax
	cmpq      %rax, %rbp
	jl        LBB3_260
	movq      264(%rsp), %r14
	movq      _s_lvars(%rip), %r12
	movl      $1, %esi
	testq     %rax, %rax
	je        LBB3_251
	.align 4, 0x90
LBB3_250:
	addq      %rax, %rax
	cmpq      %rax, %rbp
	movq      %rax, %rsi
	jge       LBB3_250
LBB3_251:
	movq      %rsi, _s_lvars+16(%rip)
	leaq      _s_lvars(%rip), %rax
	movq      (%r12,%rax), %rdi
	imulq     _s_lvars+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r13
	movl      (%r13), %ebx
	movl      $1, (%r13)
	testq     %rdi, %rdi
	je        LBB3_252
	call      _realloc
	jmp       LBB3_254
LBB3_406:
	testq     %r15, %r15
	je        LBB3_446
	movq      _sp(%rip), %rax
	leaq      -8(,%rax,8), %rbx
	.align 4, 0x90
LBB3_408:
	testb     $1, %r15b
	je        LBB3_411
	movq      _st(%rip), %rax
	cmpq      $0, (%rax,%rbx)
	jne       LBB3_411
	leaq      L_.str10(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
	.align 4, 0x90
LBB3_411:
	sarq      $1, %r15
	addq      $-8, %rbx
	testq     %r15, %r15
	jne       LBB3_408
	jmp       LBB3_446
LBB3_412:
	testq     %r15, %r15
	je        LBB3_446
	movq      _sp(%rip), %rax
	leaq      -8(,%rax,8), %rbx
	.align 4, 0x90
LBB3_414:
	testb     $1, %r15b
	je        LBB3_417
	movq      _st(%rip), %rax
	cmpq      $0, (%rax,%rbx)
	je        LBB3_417
	leaq      L_.str11(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_417:
	sarq      $1, %r15
	addq      $-8, %rbx
	testq     %r15, %r15
	jne       LBB3_414
	jmp       LBB3_446
LBB3_419:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	leaq      -1(%rax,%r15), %rcx
	movq      _st(%rip), %rdx
	cmpq      $0, (%rdx,%rcx,8)
	jne       LBB3_446
	jmp       LBB3_420
LBB3_418:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	leaq      -1(%rax,%r15), %rcx
	movq      _st(%rip), %rdx
	movq      (%rdx,%rcx,8), %rbp
	testq     %rbp, %rbp
	je        LBB3_420
LBB3_114:
	movq      (%rbp), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $144115188075855875, %rcx
	leaq      -3(%rcx), %rcx
	cmpq      %rcx, %rax
	je        LBB3_116
	leaq      L_.str13(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	movq      %rbp, %rdx
	call      _pari_err
LBB3_116:
	movq      8(%rbp), %rcx
	xorl      %eax, %eax
	movq      %rcx, %rbx
	sarq      $62, %rbx
	movq      $72057594037927935, %rdx
	je        LBB3_121
	movq      16(%rbp), %rbp
	leaq      -3(%rdx), %rax
	andq      %rax, %rcx
	cmpq      $3, %rcx
	ja        LBB3_119
	testq     %rbp, %rbp
	jns       LBB3_120
LBB3_119:
	leaq      L_.str14(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_120:
	movq      %rbp, %rax
	negq      %rax
	testq     %rbx, %rbx
	cmovg     %rbp, %rax
LBB3_121:
	addq      _sp(%rip), %r15
	movq      _st(%rip), %rcx
	movq      %rax, (%rcx,%r15,8)
	jmp       LBB3_446
LBB3_99:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       LBB3_273
LBB3_126:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rbp
	movq      -8(%rcx,%rax,8), %rbx
	movq      (%rbx), %rax
	movq      $72057594037927935, %rcx
	andq      %rcx, %rax
	leaq      (%rbx,%rax,8), %rax
	movq      %rbp, %rdx
	subq      %rax, %rdx
	cmpq      $1000001, %rdx
	jb        LBB3_163
	movq      _DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	jb        LBB3_129
	leaq      L_.str1(%rip), %rsi
	movl      $3, %edi
	xorl      %eax, %eax
	call      _pari_warn
LBB3_129:
	movq      _bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        LBB3_132
	cmpq      %rbx, %rbp
	jbe       LBB3_132
	movq      _top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jae       LBB3_132
	movq      (%rbx), %r8
	movq      %r8, %rax
	shrq      $57, %rax
	leaq      -21(%rax), %rdx
	cmpq      $2, %rdx
	jb        LBB3_148
	cmpq      $2, %rax
	jne       LBB3_135
LBB3_148:
	movq      %r8, %rax
	movq      $72057594037927935, %r12
	andq      %r12, %rax
	shlq      $3, %rax
	movq      %rbp, %r11
	subq      %rax, %r11
	movq      %r8, %rdx
	andq      %r12, %rdx
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r11, (%rax)
	je        LBB3_149
	movq      %r8, %rax
	movq      $-72057594037927936, %rcx
	orq       %rcx, %rax
	movq      %rax, %rdi
	xorq      %r12, %rdi
	cmpq      %rcx, %rax
	movq      $-2, %r14
	movq      $-2, %r15
	cmove     %rdi, %r15
	leaq      (%r15,%rdx), %rsi
	cmpq      $-2, %rsi
	je        LBB3_159
	leaq      2(%r15), %rsi
	leaq      2(%r15,%rdx), %r9
	addl      %r8d, %esi
	andq      $3, %rsi
	cmpq      %rcx, %rax
	movq      %r9, %rcx
	cmove     %rdi, %r14
	xorl      %r10d, %r10d
	subq      %rsi, %r9
	je        LBB3_157
	movq      $-2, %rax
	movq      $-2, %rsi
	subq      %r14, %rsi
	leaq      (%rbx,%rsi,8), %rsi
	leaq      -8(%rbp), %rdi
	xorl      %r10d, %r10d
	cmpq      %rsi, %rdi
	ja        LBB3_154
	leaq      -8(%rbx,%rdx,8), %rsi
	addq      %rdx, %r14
	subq      %r14, %rax
	leaq      (%rbp,%rax,8), %rax
	cmpq      %rax, %rsi
	jbe       LBB3_157
LBB3_154:
	movq      %rdx, %r10
	subq      %r9, %r10
	leal      2(%r15,%r8), %edi
	andq      $3, %rdi
	subq      %r15, %rdi
	addq      $-2, %rdi
	movq      %rdx, %rax
LBB3_155:
	movd      %rax, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LCPI3_0(%rip), %xmm0
	movd      %xmm0, %rsi
	movups    -8(%rbx,%rsi,8), %xmm0
	movups    -24(%rbx,%rsi,8), %xmm1
	subq      %rdx, %rsi
	movups    %xmm0, -8(%rbp,%rsi,8)
	movups    %xmm1, -24(%rbp,%rsi,8)
	addq      $-4, %rax
	cmpq      %rax, %rdi
	jne       LBB3_155
	movq      %r10, %rdx
	movq      %r9, %r10
LBB3_157:
	cmpq      %r10, %rcx
	jne       LBB3_159
	movq      %r11, %rbx
	movq      240(%rsp), %r14
	jmp       LBB3_162
LBB3_100:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copyvalue
	jmp       LBB3_446
LBB3_101:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copylex
	jmp       LBB3_446
LBB3_65:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %rdi, (%rax)
LBB3_96:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rdx
	movq      -16(%rdx,%rax,8), %rsi
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _copyupto
	cltq      
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
	movq      -24(%rdx,%rcx,8), %rcx
	movq      %rax, (%rcx,%r15,8)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
	movq      %rax, -16(%rdx,%rcx,8)
	decq      _sp(%rip)
	jmp       LBB3_446
LBB3_420:
	movq      -8(%rdx,%rax,8), %rax
	movq      %rax, (%rdx,%rcx,8)
	jmp       LBB3_446
LBB3_38:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	jmp       LBB3_46
LBB3_103:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	jmp       LBB3_112
LBB3_132:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %rbp, (%rax)
	jmp       LBB3_163
LBB3_175:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %rbp, %rdi
	call      _check_array_index
	movq      (%rbx,%rbp,8), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _closure_castlong
	jmp       LBB3_446
LBB3_171:
	movq      16(%rbx), %rbx
	movl      $1, %esi
	testq     %rbx, %rbx
	je        LBB3_174
	movq      (%rbx), %rsi
LBB3_173:
	andq      %rcx, %rsi
LBB3_174:
	xorl      %eax, %eax
	movq      %rbp, %rdi
	call      _check_array_index
	movq      (%rbx,%rbp,8), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _closure_castgen
	jmp       LBB3_446
LBB3_182:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _check_array_index
	leaq      (%rbp,%rbx,8), %rax
	movq      %rax, (%r14)
	movq      (%rbp,%rbx,8), %r14
	testq     %r14, %r14
	je        LBB3_183
	jle       LBB3_190
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      -24(%rbx), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        LBB3_188
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_188:
	movq      %r13, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbx)
	movq      $4611686018427387907, %rax
	jmp       LBB3_189
LBB3_193:
	movq      16(%rbp), %rbp
	movl      $1, %esi
	testq     %rbp, %rbp
	je        LBB3_196
	movq      (%rbp), %rsi
LBB3_195:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
LBB3_196:
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _check_array_index
	leaq      (%rbp,%rbx,8), %rax
	movq      %rax, (%r14)
	movq      (%rbp,%rbx,8), %rax
LBB3_184:
	movq      208(%rsp), %rcx
	movq      %rax, (%rcx)
LBB3_180:
	movq      240(%rsp), %r14
LBB3_181:
	movq      %rbp, 8(%r15,%r12)
	movq      256(%rsp), %r12
	jmp       LBB3_446
LBB3_43:
	cmpq      $23, %rax
	ja        LBB3_45
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r15
	call      _pari_err
	movq      %r15, %rdx
LBB3_45:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $-4611686018427387901, %rax
	movq      %rax, -16(%rbp)
	movq      %rbx, -8(%rbp)
LBB3_46:
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      %r14, (%rcx,%rax,8)
	movq      %r12, %r14
	movq      256(%rsp), %r12
	jmp       LBB3_446
LBB3_108:
	negq      %rbx
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbp
	leaq      -24(%rbp), %r14
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbp, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        LBB3_110
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_110:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $-4611686018427387901, %rax
LBB3_111:
	movq      %rax, -16(%rbp)
	movq      %rbx, -8(%rbp)
LBB3_112:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %r14, -8(%rcx,%rax,8)
	movq      %r12, %r14
	movq      %r15, %r12
	jmp       LBB3_446
LBB3_366:
	movq      %rsi, %rdi
	call      _malloc
LBB3_368:
	movq      %rax, %rbp
	movl      %ebx, (%r13)
	testl     %ebx, %ebx
	jne       LBB3_371
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_371
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_371:
	testq     %rbp, %rbp
	movq      224(%rsp), %r13
	jne       LBB3_373
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_373:
	movq      %rbp, (%r12,%r14)
	movq      _s_var+8(%rip), %rcx
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
LBB3_374:
	addq      %r15, %rcx
	movq      %rcx, _s_var+8(%rip)
	addq      %r15, 248(%rsp)
	testq     %r15, %r15
	jle       LBB3_446
	shlq      $4, %rcx
	movq      _var(%rip), %rax
	movq      $0, -16(%rcx,%rax)
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      _s_var+8(%rip), %rdx
	shlq      $4, %rdx
	movq      _var(%rip), %rsi
	movq      %rcx, -8(%rdx,%rsi)
	movq      $-2, %rcx
	cmpq      $1, %r15
	je        LBB3_446
	.align 4, 0x90
LBB3_376:
	movq      _var(%rip), %rdx
	movq      _s_var+8(%rip), %rsi
	addq      %rcx, %rsi
	shlq      $4, %rsi
	movq      $0, (%rdx,%rsi)
	movq      (%rax), %rdx
	movq      _var(%rip), %rsi
	movq      _s_var+8(%rip), %rdi
	addq      %rcx, %rdi
	shlq      $4, %rdi
	movq      %rdx, 8(%rsi,%rdi)
	leaq      -1(%r15,%rcx), %rdx
	decq      %rcx
	cmpq      $-1, %rdx
	jne       LBB3_376
	jmp       LBB3_446
LBB3_381:
	movq      $-1, %rax
	movl      $1, %ecx
	.align 4, 0x90
LBB3_382:
	movq      _var(%rip), %rdx
	movq      _s_var+8(%rip), %rsi
	addq      %rax, %rsi
	shlq      $4, %rsi
	movq      8(%rdx,%rsi), %rdx
	movq      %rdx, (%r12,%rcx,8)
	incq      %rcx
	decq      %rax
	cmpq      %r13, %rcx
	jl        LBB3_382
LBB3_385:
	movq      %r12, 56(%r14)
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %r14, -8(%rcx,%rax,8)
LBB3_230:
	movq      240(%rsp), %r14
LBB3_231:
	movq      224(%rsp), %r13
	movq      256(%rsp), %r12
	jmp       LBB3_446
LBB3_390:
	movq      %rsi, %rdi
	call      _malloc
LBB3_392:
	movq      %rax, %r13
	movl      %ebp, (%r12)
	testl     %ebp, %ebp
	jne       LBB3_395
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_395
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_395:
	testq     %r13, %r13
	movq      256(%rsp), %r12
	jne       LBB3_397
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_397:
	leaq      _s_var(%rip), %rax
	movq      %r13, (%r14,%rax)
	movq      _s_var+8(%rip), %rdx
	movq      240(%rsp), %r14
	movq      224(%rsp), %r13
LBB3_398:
	addq      %r15, %rdx
	movq      %rdx, _s_var+8(%rip)
	addq      %r15, 248(%rsp)
	movq      _sp(%rip), %rax
	subq      %r15, %rax
	movq      %rax, _sp(%rip)
	testq     %r15, %r15
	jle       LBB3_446
	movq      %r14, %r15
	xorl      %ebp, %ebp
	jmp       LBB3_400
	.align 4, 0x90
LBB3_405:
	incq      %rbp
	movq      _sp(%rip), %rax
LBB3_400:
	leaq      1(%rbx,%rbp), %r14
	movq      _st(%rip), %rcx
	addq      %rbp, %rax
	movq      (%rcx,%rax,8), %rsi
	testq     %rsi, %rsi
	je        LBB3_402
	leaq      (%rbx,%rbp), %rdi
	xorl      %eax, %eax
	call      _pushlex
	jmp       LBB3_403
	.align 4, 0x90
LBB3_402:
	movq      _var(%rip), %rax
	leaq      (%rbx,%rbp), %rcx
	movq      _s_var+8(%rip), %rdx
	addq      %rcx, %rdx
	shlq      $4, %rdx
	movq      $2, (%rax,%rdx)
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      _var(%rip), %rdx
	addq      _s_var+8(%rip), %rcx
	shlq      $4, %rcx
	movq      %rax, 8(%rdx,%rcx)
LBB3_403:
	testq     %r14, %r14
	jne       LBB3_405
	movq      %r15, %r14
	jmp       LBB3_446
LBB3_239:
	movq      %rsi, %rdi
	call      _malloc
LBB3_241:
	movq      %rax, %rbp
	movl      %ebx, (%r13)
	testl     %ebx, %ebx
	jne       LBB3_244
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_244
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_244:
	testq     %rbp, %rbp
	movq      224(%rsp), %r13
	jne       LBB3_246
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_246:
	movq      %r14, 264(%rsp)
	leaq      _s_lvars(%rip), %rax
	movq      %rbp, (%r12,%rax)
	movq      _s_lvars+8(%rip), %rbp
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
LBB3_247:
	leaq      1(%rbp), %rax
	movq      %rax, _s_lvars+8(%rip)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	movq      _lvars(%rip), %rax
	movq      %r15, (%rax,%rbp,8)
	incq      232(%rsp)
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _pushvalue
	jmp       LBB3_446
LBB3_252:
	movq      %rsi, %rdi
	call      _malloc
LBB3_254:
	movq      %rax, %rbp
	movl      %ebx, (%r13)
	testl     %ebx, %ebx
	jne       LBB3_257
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        LBB3_257
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
LBB3_257:
	testq     %rbp, %rbp
	movq      224(%rsp), %r13
	jne       LBB3_259
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB3_259:
	movq      %r14, 264(%rsp)
	leaq      _s_lvars(%rip), %rax
	movq      %rbp, (%r12,%rax)
	movq      _s_lvars+8(%rip), %rbp
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
LBB3_260:
	leaq      1(%rbp), %rax
	movq      %rax, _s_lvars+8(%rip)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
	movq      _lvars(%rip), %rax
	movq      %r15, (%rax,%rbp,8)
	incq      232(%rsp)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _zerovalue
	jmp       LBB3_446
LBB3_183:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       LBB3_184
LBB3_92:
	incq      %rsi
	movq      $72057594037927935, %rax
	andq      %rax, %r8
	shlq      $3, %r8
	subq      %r8, %rdi
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
	.align 4, 0x90
LBB3_93:
	movq      -16(%rcx,%rsi,8), %rax
	movq      %rax, -16(%rdi,%rsi,8)
	decq      %rsi
	cmpq      $1, %rsi
	jg        LBB3_93
	movq      %r11, %rcx
	jmp       LBB3_96
LBB3_277:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_278:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_279:
	movq      _sp(%rip), %rax
	leaq      -3(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rdi
	movq      -16(%rcx,%rax,8), %rsi
	movq      -8(%rcx,%rax,8), %rdx
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_280:
	movq      _sp(%rip), %rax
	leaq      -4(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -32(%rcx,%rax,8), %rdi
	movq      -24(%rcx,%rax,8), %rsi
	movq      -16(%rcx,%rax,8), %rdx
	movq      -8(%rcx,%rax,8), %rcx
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_281:
	movq      _sp(%rip), %rax
	leaq      -5(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %r8
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_282:
	movq      _sp(%rip), %rax
	leaq      -6(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -48(%rbp,%rax,8), %rdi
	movq      -40(%rbp,%rax,8), %rsi
	movq      -32(%rbp,%rax,8), %rdx
	movq      -24(%rbp,%rax,8), %rcx
	movq      -16(%rbp,%rax,8), %r8
	movq      -8(%rbp,%rax,8), %r9
	jmp       LBB3_265
LBB3_283:
	movq      _sp(%rip), %rax
	leaq      -7(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -56(%rbp,%rax,8), %rdi
	movq      -48(%rbp,%rax,8), %rsi
	movq      -40(%rbp,%rax,8), %rdx
	movq      -32(%rbp,%rax,8), %rcx
	movq      -24(%rbp,%rax,8), %r8
	movq      -16(%rbp,%rax,8), %r9
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, (%rsp)
	jmp       LBB3_265
LBB3_284:
	movq      _sp(%rip), %rax
	leaq      -8(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -64(%rbp,%rax,8), %rdi
	movq      -56(%rbp,%rax,8), %rsi
	movq      -48(%rbp,%rax,8), %rdx
	movq      -40(%rbp,%rax,8), %rcx
	movq      -32(%rbp,%rax,8), %r8
	movq      -24(%rbp,%rax,8), %r9
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 8(%rsp)
	movq      %rbx, (%rsp)
	jmp       LBB3_265
LBB3_263:
	movq      _sp(%rip), %rax
	leaq      -9(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -72(%rbp,%rax,8), %rdi
	movq      -64(%rbp,%rax,8), %rsi
	movq      -56(%rbp,%rax,8), %rdx
	movq      -48(%rbp,%rax,8), %rcx
	movq      -40(%rbp,%rax,8), %r8
	movq      -32(%rbp,%rax,8), %r9
	movq      -24(%rbp,%rax,8), %r10
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 16(%rsp)
	movq      %rbx, 8(%rsp)
	jmp       LBB3_264
LBB3_285:
	movq      _sp(%rip), %rax
	leaq      -10(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -80(%rbp,%rax,8), %rdi
	movq      -72(%rbp,%rax,8), %rsi
	movq      -64(%rbp,%rax,8), %rdx
	movq      -56(%rbp,%rax,8), %rcx
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %r9
	movq      -32(%rbp,%rax,8), %r10
	movq      -24(%rbp,%rax,8), %r11
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 24(%rsp)
	movq      %rbx, 16(%rsp)
	movq      %r11, 8(%rsp)
LBB3_264:
	movq      %r10, (%rsp)
LBB3_265:
	xorl      %eax, %eax
	call      *16(%r15)
	jmp       LBB3_273
LBB3_266:
	movq      _sp(%rip), %rax
	leaq      -11(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -88(%rbp,%rax,8), %rdi
	movq      -80(%rbp,%rax,8), %rsi
	movq      -72(%rbp,%rax,8), %rdx
	movq      -64(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -56(%rbp,%rax,8), %r8
	movq      -48(%rbp,%rax,8), %r9
	movq      -40(%rbp,%rax,8), %r10
	movq      -32(%rbp,%rax,8), %r11
	movq      %r12, %rcx
	movq      %r14, %r12
	movq      -24(%rbp,%rax,8), %r14
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 32(%rsp)
	movq      %rbx, 24(%rsp)
	movq      %r14, 16(%rsp)
	movq      %r12, %r14
	movq      %rcx, %r12
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	jmp       LBB3_267
LBB3_286:
	movq      _sp(%rip), %rax
	leaq      -12(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -96(%rbp,%rax,8), %rdi
	movq      -88(%rbp,%rax,8), %rsi
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -72(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -64(%rbp,%rax,8), %r8
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r10
	movq      -40(%rbp,%rax,8), %r11
	movq      %r13, %rdx
	movq      %r14, %r13
	movq      -32(%rbp,%rax,8), %r14
	movq      %r12, %rcx
	movq      -24(%rbp,%rax,8), %r12
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 40(%rsp)
	movq      %rbx, 32(%rsp)
	movq      %r12, 24(%rsp)
	movq      %rcx, %r12
	movq      %r14, 16(%rsp)
	movq      %r13, %r14
	movq      %rdx, %r13
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      200(%rsp), %rdx
LBB3_267:
	movq      208(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_273
LBB3_268:
	movq      _sp(%rip), %rax
	leaq      -13(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -104(%rbp,%rax,8), %rdx
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -72(%rbp,%rax,8), %r8
	movq      -64(%rbp,%rax,8), %r9
	movq      -56(%rbp,%rax,8), %r10
	movq      -48(%rbp,%rax,8), %r11
	movq      %r14, %rdi
	movq      -40(%rbp,%rax,8), %r14
	movq      %r12, %rsi
	movq      -32(%rbp,%rax,8), %r12
	movq      %r13, %rcx
	movq      -24(%rbp,%rax,8), %r13
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rcx, %r13
	movq      %r12, 24(%rsp)
	movq      %rsi, %r12
	movq      %r14, 16(%rsp)
	movq      %rdi, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      %rdx, %rdi
	movq      208(%rsp), %rsi
	movq      168(%rsp), %rdx
	jmp       LBB3_269
LBB3_287:
	movq      _sp(%rip), %rax
	leaq      -14(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -112(%rbp,%rax,8), %rsi
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -72(%rbp,%rax,8), %r9
	movq      -64(%rbp,%rax,8), %r10
	movq      -56(%rbp,%rax,8), %r11
	movq      %r14, %r8
	movq      -48(%rbp,%rax,8), %r14
	movq      %r12, %rdi
	movq      -40(%rbp,%rax,8), %r12
	movq      %r13, %rdx
	movq      -32(%rbp,%rax,8), %r13
	movq      -24(%rbp,%rax,8), %rbx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 56(%rsp)
	movq      %rcx, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rdx, %r13
	movq      %r12, 24(%rsp)
	movq      %rdi, %r12
	movq      %r14, 16(%rsp)
	movq      %r8, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      208(%rsp), %rsi
	movq      168(%rsp), %rdx
	movq      160(%rsp), %r8
LBB3_269:
	movq      200(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_273
LBB3_270:
	movq      _sp(%rip), %rax
	leaq      -15(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -120(%rbp,%rax,8), %rdi
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -72(%rbp,%rax,8), %r10
	movq      -64(%rbp,%rax,8), %r11
	movq      %r14, %r9
	movq      -56(%rbp,%rax,8), %r14
	movq      %r12, %r8
	movq      -48(%rbp,%rax,8), %r12
	movq      %r13, %rsi
	movq      -40(%rbp,%rax,8), %r13
	movq      -32(%rbp,%rax,8), %rbx
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 64(%rsp)
	movq      %rcx, 56(%rsp)
	movq      %rdx, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rsi, %r13
	movq      %r12, 24(%rsp)
	movq      %r8, %r12
	movq      %r14, 16(%rsp)
	movq      %r9, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	jmp       LBB3_271
LBB3_288:
	movq      _sp(%rip), %rax
	leaq      -16(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -128(%rbp,%rax,8), %r8
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -72(%rbp,%rax,8), %r11
	movq      %r14, %r10
	movq      -64(%rbp,%rax,8), %r14
	movq      %r12, %r9
	movq      -56(%rbp,%rax,8), %r12
	movq      %r13, %rdi
	movq      -48(%rbp,%rax,8), %r13
	movq      -40(%rbp,%rax,8), %rbx
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 72(%rsp)
	movq      %rcx, 64(%rsp)
	movq      %rdx, 56(%rsp)
	movq      %rsi, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rdi, %r13
	movq      %r12, 24(%rsp)
	movq      %r9, %r12
	movq      %r14, 16(%rsp)
	movq      %r10, %r14
	movq      %r11, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r8, %rdi
	jmp       LBB3_271
LBB3_289:
	movq      _sp(%rip), %rax
	leaq      -17(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -136(%rbp,%rax,8), %r9
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      %r14, %r11
	movq      -72(%rbp,%rax,8), %r14
	movq      %r12, %r10
	movq      -64(%rbp,%rax,8), %r12
	movq      %r13, %r8
	movq      -56(%rbp,%rax,8), %r13
	movq      -48(%rbp,%rax,8), %rbx
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 80(%rsp)
	movq      %rcx, 72(%rsp)
	movq      %rdx, 64(%rsp)
	movq      %rsi, 56(%rsp)
	movq      %rdi, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r8, %r13
	movq      %r12, 24(%rsp)
	movq      %r10, %r12
	movq      %r14, 16(%rsp)
	movq      %r11, %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r9, %rdi
	jmp       LBB3_271
LBB3_290:
	movq      _sp(%rip), %rax
	leaq      -18(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -144(%rbp,%rax,8), %r10
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -80(%rbp,%rax,8), %r14
	movq      %r12, %r11
	movq      -72(%rbp,%rax,8), %r12
	movq      %r13, %r9
	movq      -64(%rbp,%rax,8), %r13
	movq      -56(%rbp,%rax,8), %rbx
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 88(%rsp)
	movq      %rcx, 80(%rsp)
	movq      %rdx, 72(%rsp)
	movq      %rsi, 64(%rsp)
	movq      %rdi, 56(%rsp)
	movq      %r8, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r9, %r13
	movq      %r12, 24(%rsp)
	movq      %r11, %r12
	movq      %r14, 16(%rsp)
	movq      240(%rsp), %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r10, %rdi
	jmp       LBB3_271
LBB3_291:
	movq      _sp(%rip), %rax
	leaq      -19(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -152(%rbp,%rax,8), %r11
	movq      -144(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 128(%rsp)
	movq      %r12, %r14
	movq      -80(%rbp,%rax,8), %r12
	movq      %r13, %r10
	movq      -72(%rbp,%rax,8), %r13
	movq      -64(%rbp,%rax,8), %rbx
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 96(%rsp)
	movq      %rcx, 88(%rsp)
	movq      %rdx, 80(%rsp)
	movq      %rsi, 72(%rsp)
	movq      %rdi, 64(%rsp)
	movq      %r8, 56(%rsp)
	movq      %r9, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r10, %r13
	movq      %r12, 24(%rsp)
	movq      %r14, %r12
	movq      128(%rsp), %rax
	movq      %rax, 16(%rsp)
	movq      240(%rsp), %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r11, %rdi
LBB3_271:
	movq      200(%rsp), %rsi
	movq      160(%rsp), %r8
	movq      152(%rsp), %r9
	movq      208(%rsp), %rdx
	movq      168(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_273
LBB3_292:
	movq      _sp(%rip), %rax
	leaq      -20(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -160(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -152(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -144(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 128(%rsp)
	movq      -96(%rbp,%rax,8), %r14
	movq      -88(%rbp,%rax,8), %r12
	movq      %r13, %r11
	movq      -80(%rbp,%rax,8), %r13
	movq      -72(%rbp,%rax,8), %rbx
	movq      -64(%rbp,%rax,8), %r10
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 104(%rsp)
	movq      %rcx, 96(%rsp)
	movq      %rdx, 88(%rsp)
	movq      %rsi, 80(%rsp)
	movq      %rdi, 72(%rsp)
	movq      %r8, 64(%rsp)
	movq      %r9, 56(%rsp)
	movq      %r10, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r11, %r13
	movq      %r12, 24(%rsp)
	movq      256(%rsp), %r12
	movq      %r14, 16(%rsp)
	movq      240(%rsp), %r14
	movq      128(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      136(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      208(%rsp), %rdi
	movq      168(%rsp), %rsi
	movq      152(%rsp), %r8
	movq      144(%rsp), %r9
	movq      200(%rsp), %rdx
	movq      160(%rsp), %rcx
	call      *16(%r15)
	jmp       LBB3_273
LBB3_82:
	movq      %r11, %rcx
	jmp       LBB3_96
LBB3_68:
	cmpq      $1, %rax
	movq      $72057594037927935, %rax
	jne       LBB3_95
	movq      %r12, %r8
	movq      8(%rcx), %r10
	movq      %r10, %rbp
	andq      %rax, %rbp
	leaq      0(,%rbp,8), %rax
	movq      %rdi, %r12
	subq      %rax, %r12
	cmpq      $2, %rbp
	jb        LBB3_80
	movq      %r10, %rsi
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	movq      %rsi, %rbx
	negq      %rbx
	cmpq      $-3, %rbx
	movq      $-2, %r11
	movq      $-2, %rax
	cmovg     %rbx, %rax
	leaq      (%rax,%rsi), %rdx
	cmpq      $-1, %rdx
	movq      %rbp, %rdx
	je        LBB3_78
	leaq      1(%rax,%rsi), %r9
	movq      %r9, 208(%rsp)
	incq      %rax
	addl      %r10d, %eax
	andq      $3, %rax
	cmpq      $-3, %rbx
	cmovg     %rbx, %r11
	xorl      %r14d, %r14d
	subq      %rax, %r9
	movq      %rbp, %rdx
	je        LBB3_77
	movq      %r11, %rax
	notq      %rax
	leaq      (%rcx,%rax,8), %rax
	leaq      -8(%rdi), %rdx
	xorl      %r14d, %r14d
	cmpq      %rax, %rdx
	ja        LBB3_74
	leaq      -8(%rcx,%rsi,8), %rax
	addq      %rsi, %r11
	notq      %r11
	leaq      (%rdi,%r11,8), %rdx
	cmpq      %rdx, %rax
	movq      %rbp, %rdx
	jbe       LBB3_77
LBB3_74:
	movq      %rbp, %rdx
	subq      %r9, %rdx
	cmpq      $-3, %rbx
	movq      $-2, %r11
	cmovg     %rbx, %r11
	cmpq      $-2, %rbx
	movl      $-2, %eax
	cmovg     %ebx, %eax
	leal      1(%r10,%rax), %ebx
	andq      $3, %rbx
	subq      %r11, %rbx
	decq      %rbx
LBB3_75:
	movd      %rsi, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LCPI3_0(%rip), %xmm0
	movd      %xmm0, %rax
	movups    -8(%rcx,%rax,8), %xmm0
	movups    -24(%rcx,%rax,8), %xmm1
	subq      %rbp, %rax
	movups    %xmm0, -8(%rdi,%rax,8)
	movups    %xmm1, -24(%rdi,%rax,8)
	addq      $-4, %rsi
	cmpq      %rsi, %rbx
	jne       LBB3_75
	movq      %r9, %r14
LBB3_77:
	cmpq      %r14, 208(%rsp)
	movq      240(%rsp), %r14
	je        LBB3_80
LBB3_78:
	movq      $72057594037927935, %rax
	andq      %rax, %r10
	shlq      $3, %r10
	subq      %r10, %rdi
	addq      $-8, %rdi
LBB3_79:
	movq      -8(%rcx,%rdx,8), %rax
	movq      %rax, (%rdi,%rdx,8)
	leaq      -1(%rdx), %rdx
	cmpq      $1, %rdx
	jg        LBB3_79
LBB3_80:
	movq      $144115188075855875, %rax
	leaq      -3(%rax), %rax
	orq       %rax, %rbp
	movq      %rbp, (%r12)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r12, (%rax)
	movq      %r12, %rcx
	movq      %r8, %r12
	jmp       LBB3_96
LBB3_190:
	negq      %r14
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      -24(%rbx), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        LBB3_192
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      _avma@GOTPCREL(%rip), %rdx
LBB3_192:
	movq      %r13, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbx)
	movq      $-4611686018427387901, %rax
LBB3_189:
	movq      %rax, -16(%rbx)
	movq      %r14, -8(%rbx)
	movq      208(%rsp), %rax
	movq      %r13, (%rax)
	movq      240(%rsp), %r14
	movq      224(%rsp), %r13
	jmp       LBB3_181
LBB3_159:
	incq      %rdx
	andq      %r12, %r8
	shlq      $3, %r8
	subq      %r8, %rbp
	movq      240(%rsp), %r14
LBB3_160:
	movq      -16(%rbx,%rdx,8), %rax
	movq      %rax, -16(%rbp,%rdx,8)
	decq      %rdx
	cmpq      $1, %rdx
	jg        LBB3_160
LBB3_149:
	movq      %r11, %rbx
	jmp       LBB3_162
LBB3_296:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_297:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_298:
	movq      _sp(%rip), %rax
	leaq      -3(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rdi
	movq      -16(%rcx,%rax,8), %rsi
	movq      -8(%rcx,%rax,8), %rdx
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_299:
	movq      _sp(%rip), %rax
	leaq      -4(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -32(%rcx,%rax,8), %rdi
	movq      -24(%rcx,%rax,8), %rsi
	movq      -16(%rcx,%rax,8), %rdx
	movq      -8(%rcx,%rax,8), %rcx
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_300:
	movq      _sp(%rip), %rax
	leaq      -5(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %r8
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_301:
	movq      _sp(%rip), %rax
	leaq      -6(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -48(%rbp,%rax,8), %rdi
	movq      -40(%rbp,%rax,8), %rsi
	movq      -32(%rbp,%rax,8), %rdx
	movq      -24(%rbp,%rax,8), %rcx
	movq      -16(%rbp,%rax,8), %r8
	movq      -8(%rbp,%rax,8), %r9
	jmp       LBB3_306
LBB3_302:
	movq      _sp(%rip), %rax
	leaq      -7(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -56(%rbp,%rax,8), %rdi
	movq      -48(%rbp,%rax,8), %rsi
	movq      -40(%rbp,%rax,8), %rdx
	movq      -32(%rbp,%rax,8), %rcx
	movq      -24(%rbp,%rax,8), %r8
	movq      -16(%rbp,%rax,8), %r9
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, (%rsp)
	jmp       LBB3_306
LBB3_303:
	movq      _sp(%rip), %rax
	leaq      -8(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -64(%rbp,%rax,8), %rdi
	movq      -56(%rbp,%rax,8), %rsi
	movq      -48(%rbp,%rax,8), %rdx
	movq      -40(%rbp,%rax,8), %rcx
	movq      -32(%rbp,%rax,8), %r8
	movq      -24(%rbp,%rax,8), %r9
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 8(%rsp)
	movq      %rbx, (%rsp)
	jmp       LBB3_306
LBB3_304:
	movq      _sp(%rip), %rax
	leaq      -9(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -72(%rbp,%rax,8), %rdi
	movq      -64(%rbp,%rax,8), %rsi
	movq      -56(%rbp,%rax,8), %rdx
	movq      -48(%rbp,%rax,8), %rcx
	movq      -40(%rbp,%rax,8), %r8
	movq      -32(%rbp,%rax,8), %r9
	movq      -24(%rbp,%rax,8), %r10
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 16(%rsp)
	movq      %rbx, 8(%rsp)
	jmp       LBB3_305
LBB3_307:
	movq      _sp(%rip), %rax
	leaq      -10(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -80(%rbp,%rax,8), %rdi
	movq      -72(%rbp,%rax,8), %rsi
	movq      -64(%rbp,%rax,8), %rdx
	movq      -56(%rbp,%rax,8), %rcx
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %r9
	movq      -32(%rbp,%rax,8), %r10
	movq      -24(%rbp,%rax,8), %r11
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 24(%rsp)
	movq      %rbx, 16(%rsp)
	movq      %r11, 8(%rsp)
LBB3_305:
	movq      %r10, (%rsp)
LBB3_306:
	xorl      %eax, %eax
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_308:
	movq      _sp(%rip), %rax
	leaq      -11(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -88(%rbp,%rax,8), %rdi
	movq      -80(%rbp,%rax,8), %rsi
	movq      -72(%rbp,%rax,8), %rdx
	movq      -64(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -56(%rbp,%rax,8), %r8
	movq      -48(%rbp,%rax,8), %r9
	movq      -40(%rbp,%rax,8), %r10
	movq      -32(%rbp,%rax,8), %r11
	movq      %r12, %rcx
	movq      %r14, %r12
	movq      -24(%rbp,%rax,8), %r14
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 32(%rsp)
	movq      %rbx, 24(%rsp)
	movq      %r14, 16(%rsp)
	movq      %r12, %r14
	movq      %rcx, %r12
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	jmp       LBB3_309
LBB3_310:
	movq      _sp(%rip), %rax
	leaq      -12(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -96(%rbp,%rax,8), %rdi
	movq      -88(%rbp,%rax,8), %rsi
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -72(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -64(%rbp,%rax,8), %r8
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r10
	movq      -40(%rbp,%rax,8), %r11
	movq      %r13, %rdx
	movq      %r14, %r13
	movq      -32(%rbp,%rax,8), %r14
	movq      %r12, %rcx
	movq      -24(%rbp,%rax,8), %r12
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 40(%rsp)
	movq      %rbx, 32(%rsp)
	movq      %r12, 24(%rsp)
	movq      %rcx, %r12
	movq      %r14, 16(%rsp)
	movq      %r13, %r14
	movq      %rdx, %r13
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      200(%rsp), %rdx
LBB3_309:
	movq      208(%rsp), %rcx
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_311:
	movq      _sp(%rip), %rax
	leaq      -13(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -104(%rbp,%rax,8), %rdx
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -72(%rbp,%rax,8), %r8
	movq      -64(%rbp,%rax,8), %r9
	movq      -56(%rbp,%rax,8), %r10
	movq      -48(%rbp,%rax,8), %r11
	movq      %r14, %rdi
	movq      -40(%rbp,%rax,8), %r14
	movq      %r12, %rsi
	movq      -32(%rbp,%rax,8), %r12
	movq      %r13, %rcx
	movq      -24(%rbp,%rax,8), %r13
	movq      -16(%rbp,%rax,8), %rbx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rcx, %r13
	movq      %r12, 24(%rsp)
	movq      %rsi, %r12
	movq      %r14, 16(%rsp)
	movq      %rdi, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      %rdx, %rdi
	movq      208(%rsp), %rsi
	movq      168(%rsp), %rdx
	jmp       LBB3_312
LBB3_313:
	movq      _sp(%rip), %rax
	leaq      -14(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -112(%rbp,%rax,8), %rsi
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -72(%rbp,%rax,8), %r9
	movq      -64(%rbp,%rax,8), %r10
	movq      -56(%rbp,%rax,8), %r11
	movq      %r14, %r8
	movq      -48(%rbp,%rax,8), %r14
	movq      %r12, %rdi
	movq      -40(%rbp,%rax,8), %r12
	movq      %r13, %rdx
	movq      -32(%rbp,%rax,8), %r13
	movq      -24(%rbp,%rax,8), %rbx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 56(%rsp)
	movq      %rcx, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rdx, %r13
	movq      %r12, 24(%rsp)
	movq      %rdi, %r12
	movq      %r14, 16(%rsp)
	movq      %r8, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      208(%rsp), %rsi
	movq      168(%rsp), %rdx
	movq      160(%rsp), %r8
LBB3_312:
	movq      200(%rsp), %rcx
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_314:
	movq      _sp(%rip), %rax
	leaq      -15(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -120(%rbp,%rax,8), %rdi
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -72(%rbp,%rax,8), %r10
	movq      -64(%rbp,%rax,8), %r11
	movq      %r14, %r9
	movq      -56(%rbp,%rax,8), %r14
	movq      %r12, %r8
	movq      -48(%rbp,%rax,8), %r12
	movq      %r13, %rsi
	movq      -40(%rbp,%rax,8), %r13
	movq      -32(%rbp,%rax,8), %rbx
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 64(%rsp)
	movq      %rcx, 56(%rsp)
	movq      %rdx, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rsi, %r13
	movq      %r12, 24(%rsp)
	movq      %r8, %r12
	movq      %r14, 16(%rsp)
	movq      %r9, %r14
	movq      %r11, 8(%rsp)
	movq      %r10, (%rsp)
	xorl      %eax, %eax
	jmp       LBB3_315
LBB3_316:
	movq      _sp(%rip), %rax
	leaq      -16(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -128(%rbp,%rax,8), %r8
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -72(%rbp,%rax,8), %r11
	movq      %r14, %r10
	movq      -64(%rbp,%rax,8), %r14
	movq      %r12, %r9
	movq      -56(%rbp,%rax,8), %r12
	movq      %r13, %rdi
	movq      -48(%rbp,%rax,8), %r13
	movq      -40(%rbp,%rax,8), %rbx
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 72(%rsp)
	movq      %rcx, 64(%rsp)
	movq      %rdx, 56(%rsp)
	movq      %rsi, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %rdi, %r13
	movq      %r12, 24(%rsp)
	movq      %r9, %r12
	movq      %r14, 16(%rsp)
	movq      %r10, %r14
	movq      %r11, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r8, %rdi
	jmp       LBB3_315
LBB3_317:
	movq      _sp(%rip), %rax
	leaq      -17(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -136(%rbp,%rax,8), %r9
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -80(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      %r14, %r11
	movq      -72(%rbp,%rax,8), %r14
	movq      %r12, %r10
	movq      -64(%rbp,%rax,8), %r12
	movq      %r13, %r8
	movq      -56(%rbp,%rax,8), %r13
	movq      -48(%rbp,%rax,8), %rbx
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 80(%rsp)
	movq      %rcx, 72(%rsp)
	movq      %rdx, 64(%rsp)
	movq      %rsi, 56(%rsp)
	movq      %rdi, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r8, %r13
	movq      %r12, 24(%rsp)
	movq      %r10, %r12
	movq      %r14, 16(%rsp)
	movq      %r11, %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r9, %rdi
	jmp       LBB3_315
LBB3_318:
	movq      _sp(%rip), %rax
	leaq      -18(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -144(%rbp,%rax,8), %r10
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -80(%rbp,%rax,8), %r14
	movq      %r12, %r11
	movq      -72(%rbp,%rax,8), %r12
	movq      %r13, %r9
	movq      -64(%rbp,%rax,8), %r13
	movq      -56(%rbp,%rax,8), %rbx
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 88(%rsp)
	movq      %rcx, 80(%rsp)
	movq      %rdx, 72(%rsp)
	movq      %rsi, 64(%rsp)
	movq      %rdi, 56(%rsp)
	movq      %r8, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r9, %r13
	movq      %r12, 24(%rsp)
	movq      %r11, %r12
	movq      %r14, 16(%rsp)
	movq      240(%rsp), %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r10, %rdi
	jmp       LBB3_315
LBB3_319:
	movq      _sp(%rip), %rax
	leaq      -19(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -152(%rbp,%rax,8), %r11
	movq      -144(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -96(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -88(%rbp,%rax,8), %rcx
	movq      %rcx, 128(%rsp)
	movq      %r12, %r14
	movq      -80(%rbp,%rax,8), %r12
	movq      %r13, %r10
	movq      -72(%rbp,%rax,8), %r13
	movq      -64(%rbp,%rax,8), %rbx
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 96(%rsp)
	movq      %rcx, 88(%rsp)
	movq      %rdx, 80(%rsp)
	movq      %rsi, 72(%rsp)
	movq      %rdi, 64(%rsp)
	movq      %r8, 56(%rsp)
	movq      %r9, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r10, %r13
	movq      %r12, 24(%rsp)
	movq      %r14, %r12
	movq      128(%rsp), %rax
	movq      %rax, 16(%rsp)
	movq      240(%rsp), %r14
	movq      136(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      144(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      %r11, %rdi
LBB3_315:
	movq      200(%rsp), %rsi
	movq      160(%rsp), %r8
	movq      152(%rsp), %r9
	movq      208(%rsp), %rdx
	movq      168(%rsp), %rcx
	call      *16(%r15)
	cltq      
	jmp       LBB3_273
LBB3_320:
	movq      _sp(%rip), %rax
	leaq      -20(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rbp
	movq      -160(%rbp,%rax,8), %rcx
	movq      %rcx, 208(%rsp)
	movq      -152(%rbp,%rax,8), %rcx
	movq      %rcx, 168(%rsp)
	movq      -144(%rbp,%rax,8), %rcx
	movq      %rcx, 200(%rsp)
	movq      -136(%rbp,%rax,8), %rcx
	movq      %rcx, 160(%rsp)
	movq      -128(%rbp,%rax,8), %rcx
	movq      %rcx, 152(%rsp)
	movq      -120(%rbp,%rax,8), %rcx
	movq      %rcx, 144(%rsp)
	movq      -112(%rbp,%rax,8), %rcx
	movq      %rcx, 136(%rsp)
	movq      -104(%rbp,%rax,8), %rcx
	movq      %rcx, 128(%rsp)
	movq      -96(%rbp,%rax,8), %r14
	movq      -88(%rbp,%rax,8), %r12
	movq      %r13, %r11
	movq      -80(%rbp,%rax,8), %r13
	movq      -72(%rbp,%rax,8), %rbx
	movq      -64(%rbp,%rax,8), %r10
	movq      -56(%rbp,%rax,8), %r9
	movq      -48(%rbp,%rax,8), %r8
	movq      -40(%rbp,%rax,8), %rdi
	movq      -32(%rbp,%rax,8), %rsi
	movq      -24(%rbp,%rax,8), %rdx
	movq      -16(%rbp,%rax,8), %rcx
	movq      -8(%rbp,%rax,8), %rax
	movq      %rax, 104(%rsp)
	movq      %rcx, 96(%rsp)
	movq      %rdx, 88(%rsp)
	movq      %rsi, 80(%rsp)
	movq      %rdi, 72(%rsp)
	movq      %r8, 64(%rsp)
	movq      %r9, 56(%rsp)
	movq      %r10, 48(%rsp)
	movq      %rbx, 40(%rsp)
	movq      %r13, 32(%rsp)
	movq      %r11, %r13
	movq      %r12, 24(%rsp)
	movq      256(%rsp), %r12
	movq      %r14, 16(%rsp)
	movq      240(%rsp), %r14
	movq      128(%rsp), %rax
	movq      %rax, 8(%rsp)
	movq      136(%rsp), %rax
	movq      %rax, (%rsp)
	xorl      %eax, %eax
	movq      208(%rsp), %rdi
	movq      168(%rsp), %rsi
	movq      152(%rsp), %r8
	movq      144(%rsp), %r9
	movq      200(%rsp), %rdx
	movq      160(%rsp), %rcx
	call      *16(%r15)
	cltq      
LBB3_273:
	movq      _sp(%rip), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, _sp(%rip)
	movq      _st(%rip), %rdx
	movq      %rax, (%rdx,%rcx,8)
	.align 4, 0x90
LBB3_446:
	movq      288(%rsp), %rax
	incq      %rax
	movq      %rax, 288(%rsp)
	cmpq      %r12, %rax
	jl        LBB3_26
	jmp       LBB3_448
LBB3_447:
	leaq      L_.str7(%rip), %rsi
	movl      $7, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      176(%rsp), %rcx
	movq      184(%rsp), %rax
	movq      %rax, _sp(%rip)
	movq      %rcx, _rp(%rip)
LBB3_448:
	decq      _s_trace+8(%rip)
	xorl      %eax, %eax
	movq      248(%rsp), %rdi
	movq      232(%rsp), %rsi
	call      _restore_vars
	movq      216(%rsp), %rax
	movq      264(%rsp), %rdi
	testq     (%rdi), %rax
	je        LBB3_450
	call      _gunclone
LBB3_450:
	addq      $296, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 2, 0x90
LJTI3_0:
	.long	L3_0_set_48
	.long	L3_0_set_34
	.long	L3_0_set_272
	.long	L3_0_set_36
	.long	L3_0_set_37
	.long	L3_0_set_47
	.long	L3_0_set_445
	.long	L3_0_set_102
	.long	L3_0_set_113
	.long	L3_0_set_122
	.long	L3_0_set_125
	.long	L3_0_set_165
	.long	L3_0_set_164
	.long	L3_0_set_97
	.long	L3_0_set_98
	.long	L3_0_set_421
	.long	L3_0_set_432
	.long	L3_0_set_427
	.long	L3_0_set_62
	.long	L3_0_set_167
	.long	L3_0_set_197
	.long	L3_0_set_203
	.long	L3_0_set_209
	.long	L3_0_set_56
	.long	L3_0_set_30
	.long	L3_0_set_176
	.long	L3_0_set_200
	.long	L3_0_set_206
	.long	L3_0_set_219
	.long	L3_0_set_275
	.long	L3_0_set_261
	.long	L3_0_set_274
	.long	L3_0_set_294
	.long	L3_0_set_323
	.long	L3_0_set_351
	.long	L3_0_set_362
	.long	L3_0_set_377
	.long	L3_0_set_49
	.long	L3_0_set_60
	.long	L3_0_set_53
	.long	L3_0_set_51
	.long	L3_0_set_50
	.long	L3_0_set_61
	.long	L3_0_set_54
	.long	L3_0_set_52
	.long	L3_0_set_386
	.long	L3_0_set_232
	.long	L3_0_set_235
	.long	L3_0_set_248
	.long	L3_0_set_406
	.long	L3_0_set_412
	.long	L3_0_set_419
	.long	L3_0_set_418
	.long	L3_0_set_99
	.long	L3_0_set_126
	.long	L3_0_set_100
	.long	L3_0_set_101
LJTI3_1:
	.long	L3_1_set_325
	.long	L3_1_set_326
	.long	L3_1_set_327
	.long	L3_1_set_328
	.long	L3_1_set_329
	.long	L3_1_set_330
	.long	L3_1_set_331
	.long	L3_1_set_332
	.long	L3_1_set_333
	.long	L3_1_set_334
	.long	L3_1_set_337
	.long	L3_1_set_338
	.long	L3_1_set_340
	.long	L3_1_set_341
	.long	L3_1_set_343
	.long	L3_1_set_344
	.long	L3_1_set_346
	.long	L3_1_set_347
	.long	L3_1_set_348
	.long	L3_1_set_349
	.long	L3_1_set_350
LJTI3_2:
	.long	L3_2_set_321
	.long	L3_2_set_296
	.long	L3_2_set_297
	.long	L3_2_set_298
	.long	L3_2_set_299
	.long	L3_2_set_300
	.long	L3_2_set_301
	.long	L3_2_set_302
	.long	L3_2_set_303
	.long	L3_2_set_304
	.long	L3_2_set_307
	.long	L3_2_set_308
	.long	L3_2_set_310
	.long	L3_2_set_311
	.long	L3_2_set_313
	.long	L3_2_set_314
	.long	L3_2_set_316
	.long	L3_2_set_317
	.long	L3_2_set_318
	.long	L3_2_set_319
	.long	L3_2_set_320
LJTI3_3:
	.long	L3_3_set_293
	.long	L3_3_set_277
	.long	L3_3_set_278
	.long	L3_3_set_279
	.long	L3_3_set_280
	.long	L3_3_set_281
	.long	L3_3_set_282
	.long	L3_3_set_283
	.long	L3_3_set_284
	.long	L3_3_set_263
	.long	L3_3_set_285
	.long	L3_3_set_266
	.long	L3_3_set_286
	.long	L3_3_set_268
	.long	L3_3_set_287
	.long	L3_3_set_270
	.long	L3_3_set_288
	.long	L3_3_set_289
	.long	L3_3_set_290
	.long	L3_3_set_291
	.long	L3_3_set_292
LJTI3_4:
	.long	L3_4_set_293
	.long	L3_4_set_277
	.long	L3_4_set_278
	.long	L3_4_set_279
	.long	L3_4_set_280
	.long	L3_4_set_281
	.long	L3_4_set_282
	.long	L3_4_set_283
	.long	L3_4_set_284
	.long	L3_4_set_263
	.long	L3_4_set_285
	.long	L3_4_set_266
	.long	L3_4_set_286
	.long	L3_4_set_268
	.long	L3_4_set_287
	.long	L3_4_set_270
	.long	L3_4_set_288
	.long	L3_4_set_289
	.long	L3_4_set_290
	.long	L3_4_set_291
	.long	L3_4_set_292
	.align 4, 0x90
_shallowcopy:
	pushq     %rbp
Ltmp25:
	pushq     %r15
Ltmp26:
	pushq     %r14
Ltmp27:
	pushq     %r13
Ltmp28:
	pushq     %r12
Ltmp29:
	pushq     %rbx
Ltmp30:
	subq      $56, %rsp
Ltmp31:
Ltmp32:
Ltmp33:
Ltmp34:
Ltmp35:
Ltmp36:
Ltmp37:
	movq      %rdi, 48(%rsp)
	movq      $72057594037927935, %r13
	movq      (%rdi), %rbx
	movq      %rbx, %r14
	andq      %r13, %r14
	movq      %r14, 16(%rsp)
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rcx
	movq      %rcx, 24(%rsp)
	leaq      0(,%r14,8), %rax
	movq      %rcx, %rbp
	subq      %rax, %rbp
	movq      _bot@GOTPCREL(%rip), %r9
	movq      %rcx, %rax
	subq      (%r9), %rax
	shrq      $3, %rax
	movq      %rbx, %rcx
	shrq      $57, %rcx
	cmpq      $19, %rcx
	jne       LBB4_22
	cmpq      %r14, %rax
	jae       LBB4_3
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      _bot@GOTPCREL(%rip), %r9
LBB4_3:
	movq      %r15, %r8
	movq      %rbp, (%r8)
	movq      48(%rsp), %rax
	movq      (%rax), %rax
	movq      $-72057594037927937, %rcx
	andq      %rcx, %rax
	movq      %rax, (%rbp)
	movq      %rbp, 8(%rsp)
	cmpq      $2, %r14
	jb        LBB4_35
	movdqa    LCPI4_0(%rip), %xmm2
	movq      %r14, %rdi
	.align 4, 0x90
LBB4_5:
	movq      48(%rsp), %rax
	movq      -8(%rax,%rdi,8), %r12
	movq      (%r12), %rdx
	movq      %rdx, %r15
	andq      %r13, %r15
	movq      (%r8), %rbp
	leaq      0(,%r15,8), %rax
	movq      %rbp, %rsi
	subq      %rax, %rsi
	movq      %rbp, %rax
	subq      (%r9), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       LBB4_7
	movq      %rdi, 32(%rsp)
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r9, %rbx
	movq      %rsi, 40(%rsp)
	movq      %rdx, %r13
	call      _pari_err
	movq      %r13, %rdx
	movq      40(%rsp), %rsi
	movq      32(%rsp), %rdi
	movdqa    LCPI4_0(%rip), %xmm2
	movq      %rbx, %r9
	movq      $72057594037927935, %r13
	movq      16(%rsp), %r14
	movq      _avma@GOTPCREL(%rip), %r8
LBB4_7:
	decq      %rdi
	movq      %rsi, (%r8)
	movq      (%r12), %rax
	movq      $-72057594037927937, %rcx
	andq      %rcx, %rax
	movq      %rax, (%rsi)
	cmpq      $2, %r15
	jb        LBB4_21
	movq      %rdx, %rcx
	andq      %r13, %rcx
	movq      %rdx, %rbx
	movq      %rcx, %r11
	negq      %r11
	cmpq      $-3, %r11
	movq      $-2, %rax
	cmovg     %r11, %rax
	leaq      (%rax,%rcx), %rdx
	cmpq      $-1, %rdx
	je        LBB4_19
	movq      %rsi, 40(%rsp)
	movq      %rdi, 32(%rsp)
	leaq      1(%rax,%rcx), %rdx
	incq      %rax
	addl      %ebx, %eax
	movq      %rbx, %rsi
	andq      $3, %rax
	cmpq      $-3, %r11
	movq      $-2, %rdi
	cmovg     %r11, %rdi
	movq      %rdx, %r10
	subq      %rax, %r10
	jne       LBB4_12
	xorl      %r10d, %r10d
	jmp       LBB4_11
LBB4_12:
	movq      %rdi, %rax
	notq      %rax
	leaq      (%r12,%rax,8), %r9
	leaq      -8(%rbp), %rax
	cmpq      %r9, %rax
	ja        LBB4_15
	leaq      -8(%r12,%rcx,8), %rax
	addq      %rcx, %rdi
	notq      %rdi
	leaq      (%rbp,%rdi,8), %rdi
	cmpq      %rdi, %rax
	ja        LBB4_15
	xorl      %r10d, %r10d
	movq      _bot@GOTPCREL(%rip), %r9
LBB4_11:
	movq      32(%rsp), %rdi
	movq      %rsi, %rbx
	jmp       LBB4_18
LBB4_15:
	movq      %r15, %rax
	subq      %r10, %rax
	movq      %rax, (%rsp)
	cmpq      $-3, %r11
	movq      $-2, %rax
	cmovg     %r11, %rax
	cmpq      $-2, %r11
	movl      $-2, %edi
	cmovle    %edi, %r11d
	movq      %rsi, %rdi
	leal      1(%rdi,%r11), %esi
	movq      %rdi, %rbx
	andq      $3, %rsi
	subq      %rax, %rsi
	decq      %rsi
	movq      _bot@GOTPCREL(%rip), %r9
	.align 4, 0x90
LBB4_16:
	movd      %rcx, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     %xmm2, %xmm0
	movd      %xmm0, %rax
	movdqu    -8(%r12,%rax,8), %xmm0
	movups    -24(%r12,%rax,8), %xmm1
	subq      %r15, %rax
	movdqu    %xmm0, -8(%rbp,%rax,8)
	movups    %xmm1, -24(%rbp,%rax,8)
	addq      $-4, %rcx
	cmpq      %rcx, %rsi
	jne       LBB4_16
	movq      (%rsp), %r15
	movq      32(%rsp), %rdi
LBB4_18:
	cmpq      %r10, %rdx
	movq      40(%rsp), %rsi
	je        LBB4_21
LBB4_19:
	andq      %r13, %rbx
	shlq      $3, %rbx
	subq      %rbx, %rbp
	addq      $-8, %rbp
	.align 4, 0x90
LBB4_20:
	movq      -8(%r12,%r15,8), %rax
	movq      %rax, (%rbp,%r15,8)
	leaq      -1(%r15), %r15
	cmpq      $1, %r15
	jg        LBB4_20
LBB4_21:
	movq      %rdi, %rax
	subq      %r14, %rax
	movq      24(%rsp), %rcx
	movq      %rsi, (%rcx,%rax,8)
	cmpq      $1, %rdi
	jg        LBB4_5
	jmp       LBB4_35
LBB4_22:
	cmpq      %r14, %rax
	jae       LBB4_24
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB4_24:
	movq      %rbp, (%r15)
	movq      $-72057594037927937, %rax
	movq      48(%rsp), %rcx
	andq      (%rcx), %rax
	movq      %rax, (%rbp)
	movq      %rbp, 8(%rsp)
	cmpq      $2, %r14
	jb        LBB4_35
	andq      %rbx, %r13
	movq      %r13, %rdx
	negq      %rdx
	cmpq      $-3, %rdx
	movq      $-2, %rsi
	movq      $-2, %rax
	cmovg     %rdx, %rax
	addq      %r13, %rax
	cmpq      $-1, %rax
	je        LBB4_33
	incq      %rax
	cmpq      $-3, %rdx
	cmovg     %rdx, %rsi
	xorl      %edi, %edi
	movq      %rax, %r9
	andq      $-4, %r9
	je        LBB4_32
	movq      %rsi, %rdi
	notq      %rdi
	movq      48(%rsp), %rcx
	leaq      (%rcx,%rdi,8), %rbp
	movq      24(%rsp), %rcx
	leaq      -8(%rcx), %rcx
	xorl      %edi, %edi
	cmpq      %rbp, %rcx
	ja        LBB4_29
	movq      48(%rsp), %rcx
	leaq      -8(%rcx,%r13,8), %rcx
	addq      %r13, %rsi
	notq      %rsi
	movq      24(%rsp), %rbp
	leaq      (%rbp,%rsi,8), %rsi
	cmpq      %rsi, %rcx
	jbe       LBB4_32
LBB4_29:
	movq      %r14, %rsi
	subq      %r9, %rsi
	cmpq      $-3, %rdx
	movq      $-2, %rcx
	cmovg     %rdx, %rcx
	leaq      1(%rcx,%r13), %rdx
	andq      $-4, %rdx
	movdqa    LCPI4_0(%rip), %xmm0
	.align 4, 0x90
LBB4_30:
	movd      %r13, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm0, %xmm1
	movd      %xmm1, %rcx
	movq      48(%rsp), %rdi
	movups    -8(%rdi,%rcx,8), %xmm1
	movdqu    -24(%rdi,%rcx,8), %xmm2
	subq      %r14, %rcx
	movq      24(%rsp), %rdi
	movups    %xmm1, -8(%rdi,%rcx,8)
	movdqu    %xmm2, -24(%rdi,%rcx,8)
	addq      $-4, %r13
	addq      $-4, %rdx
	jne       LBB4_30
	movq      %rsi, %r14
	movq      %r9, %rdi
LBB4_32:
	cmpq      %rdi, %rax
	je        LBB4_35
LBB4_33:
	notq      %rbx
	movq      $2233785415175766016, %rax
	orq       %rbx, %rax
	movq      24(%rsp), %rcx
	leaq      (%rcx,%rax,8), %rax
	.align 4, 0x90
LBB4_34:
	movq      48(%rsp), %rcx
	movq      -8(%rcx,%r14,8), %rcx
	movq      %rcx, (%rax,%r14,8)
	leaq      -1(%r14), %r14
	cmpq      $1, %r14
	jg        LBB4_34
LBB4_35:
	movq      8(%rsp), %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LCPI3_0:
	.quad	-1
	.quad	-2
	.align 4
LCPI4_0:
	.quad	-1
	.quad	-2
# ----------------------
.zerofill __DATA,__bss,_sp,8,3
# ----------------------
.zerofill __DATA,__bss,_s_st,32,3
# ----------------------
.zerofill __DATA,__bss,_st,8,3
# ----------------------
.zerofill __DATA,__bss,_rp,8,3
# ----------------------
.zerofill __DATA,__bss,_s_ptrs,32,3
# ----------------------
.zerofill __DATA,__bss,_ptrs,8,3
# ----------------------
.zerofill __DATA,__bss,_s_var,32,3
# ----------------------
.zerofill __DATA,__bss,_var,8,3
# ----------------------
.zerofill __DATA,__bss,_s_lvars,32,3
# ----------------------
.zerofill __DATA,__bss,_lvars,8,3
# ----------------------
.zerofill __DATA,__bss,_s_trace,32,3
# ----------------------
.zerofill __DATA,__bss,_trace,8,3
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"closure_eval, stack underflow"
L_.str1:
	.asciz	"eval: recovering %ld bytes"
L_.str2:
	.asciz	"_[_]: not a vector"
L_.str3:
	.asciz	"_[_,_]: not a matrix"
L_.str4:
	.asciz	"_[,_]: not a matrix"
L_.str5:
	.asciz	"_[_,]: not a matrix"
L_.str6:
	.asciz	"a 0x0 matrix has no elements"
L_.str7:
	.asciz	"functions with more than 20 parameters"
L_.str8:
	.asciz	"too many parameters in user-defined function call"
L_.str9:
	.asciz	"deep recursion"
L_.str10:
	.asciz	"missing mandatory argument"
L_.str11:
	.asciz	"argument type not implemented"
L_.str12:
	.asciz	"lg()"
L_.str13:
	.asciz	"gtos expected an integer, got '%Ps'"
L_.str14:
	.asciz	"t_INT-->long assignment"
# ----------------------
	.set	L3_0_set_48,LBB3_48-LJTI3_0
	.set	L3_0_set_34,LBB3_34-LJTI3_0
	.set	L3_0_set_272,LBB3_272-LJTI3_0
	.set	L3_0_set_36,LBB3_36-LJTI3_0
	.set	L3_0_set_37,LBB3_37-LJTI3_0
	.set	L3_0_set_47,LBB3_47-LJTI3_0
	.set	L3_0_set_445,LBB3_445-LJTI3_0
	.set	L3_0_set_102,LBB3_102-LJTI3_0
	.set	L3_0_set_113,LBB3_113-LJTI3_0
	.set	L3_0_set_122,LBB3_122-LJTI3_0
	.set	L3_0_set_125,LBB3_125-LJTI3_0
	.set	L3_0_set_165,LBB3_165-LJTI3_0
	.set	L3_0_set_164,LBB3_164-LJTI3_0
	.set	L3_0_set_97,LBB3_97-LJTI3_0
	.set	L3_0_set_98,LBB3_98-LJTI3_0
	.set	L3_0_set_421,LBB3_421-LJTI3_0
	.set	L3_0_set_432,LBB3_432-LJTI3_0
	.set	L3_0_set_427,LBB3_427-LJTI3_0
	.set	L3_0_set_62,LBB3_62-LJTI3_0
	.set	L3_0_set_167,LBB3_167-LJTI3_0
	.set	L3_0_set_197,LBB3_197-LJTI3_0
	.set	L3_0_set_203,LBB3_203-LJTI3_0
	.set	L3_0_set_209,LBB3_209-LJTI3_0
	.set	L3_0_set_56,LBB3_56-LJTI3_0
	.set	L3_0_set_30,LBB3_30-LJTI3_0
	.set	L3_0_set_176,LBB3_176-LJTI3_0
	.set	L3_0_set_200,LBB3_200-LJTI3_0
	.set	L3_0_set_206,LBB3_206-LJTI3_0
	.set	L3_0_set_219,LBB3_219-LJTI3_0
	.set	L3_0_set_275,LBB3_275-LJTI3_0
	.set	L3_0_set_261,LBB3_261-LJTI3_0
	.set	L3_0_set_274,LBB3_274-LJTI3_0
	.set	L3_0_set_294,LBB3_294-LJTI3_0
	.set	L3_0_set_323,LBB3_323-LJTI3_0
	.set	L3_0_set_351,LBB3_351-LJTI3_0
	.set	L3_0_set_362,LBB3_362-LJTI3_0
	.set	L3_0_set_377,LBB3_377-LJTI3_0
	.set	L3_0_set_49,LBB3_49-LJTI3_0
	.set	L3_0_set_60,LBB3_60-LJTI3_0
	.set	L3_0_set_53,LBB3_53-LJTI3_0
	.set	L3_0_set_51,LBB3_51-LJTI3_0
	.set	L3_0_set_50,LBB3_50-LJTI3_0
	.set	L3_0_set_61,LBB3_61-LJTI3_0
	.set	L3_0_set_54,LBB3_54-LJTI3_0
	.set	L3_0_set_52,LBB3_52-LJTI3_0
	.set	L3_0_set_386,LBB3_386-LJTI3_0
	.set	L3_0_set_232,LBB3_232-LJTI3_0
	.set	L3_0_set_235,LBB3_235-LJTI3_0
	.set	L3_0_set_248,LBB3_248-LJTI3_0
	.set	L3_0_set_406,LBB3_406-LJTI3_0
	.set	L3_0_set_412,LBB3_412-LJTI3_0
	.set	L3_0_set_419,LBB3_419-LJTI3_0
	.set	L3_0_set_418,LBB3_418-LJTI3_0
	.set	L3_0_set_99,LBB3_99-LJTI3_0
	.set	L3_0_set_126,LBB3_126-LJTI3_0
	.set	L3_0_set_100,LBB3_100-LJTI3_0
	.set	L3_0_set_101,LBB3_101-LJTI3_0
	.set	L3_1_set_325,LBB3_325-LJTI3_1
	.set	L3_1_set_326,LBB3_326-LJTI3_1
	.set	L3_1_set_327,LBB3_327-LJTI3_1
	.set	L3_1_set_328,LBB3_328-LJTI3_1
	.set	L3_1_set_329,LBB3_329-LJTI3_1
	.set	L3_1_set_330,LBB3_330-LJTI3_1
	.set	L3_1_set_331,LBB3_331-LJTI3_1
	.set	L3_1_set_332,LBB3_332-LJTI3_1
	.set	L3_1_set_333,LBB3_333-LJTI3_1
	.set	L3_1_set_334,LBB3_334-LJTI3_1
	.set	L3_1_set_337,LBB3_337-LJTI3_1
	.set	L3_1_set_338,LBB3_338-LJTI3_1
	.set	L3_1_set_340,LBB3_340-LJTI3_1
	.set	L3_1_set_341,LBB3_341-LJTI3_1
	.set	L3_1_set_343,LBB3_343-LJTI3_1
	.set	L3_1_set_344,LBB3_344-LJTI3_1
	.set	L3_1_set_346,LBB3_346-LJTI3_1
	.set	L3_1_set_347,LBB3_347-LJTI3_1
	.set	L3_1_set_348,LBB3_348-LJTI3_1
	.set	L3_1_set_349,LBB3_349-LJTI3_1
	.set	L3_1_set_350,LBB3_350-LJTI3_1
	.set	L3_2_set_321,LBB3_321-LJTI3_2
	.set	L3_2_set_296,LBB3_296-LJTI3_2
	.set	L3_2_set_297,LBB3_297-LJTI3_2
	.set	L3_2_set_298,LBB3_298-LJTI3_2
	.set	L3_2_set_299,LBB3_299-LJTI3_2
	.set	L3_2_set_300,LBB3_300-LJTI3_2
	.set	L3_2_set_301,LBB3_301-LJTI3_2
	.set	L3_2_set_302,LBB3_302-LJTI3_2
	.set	L3_2_set_303,LBB3_303-LJTI3_2
	.set	L3_2_set_304,LBB3_304-LJTI3_2
	.set	L3_2_set_307,LBB3_307-LJTI3_2
	.set	L3_2_set_308,LBB3_308-LJTI3_2
	.set	L3_2_set_310,LBB3_310-LJTI3_2
	.set	L3_2_set_311,LBB3_311-LJTI3_2
	.set	L3_2_set_313,LBB3_313-LJTI3_2
	.set	L3_2_set_314,LBB3_314-LJTI3_2
	.set	L3_2_set_316,LBB3_316-LJTI3_2
	.set	L3_2_set_317,LBB3_317-LJTI3_2
	.set	L3_2_set_318,LBB3_318-LJTI3_2
	.set	L3_2_set_319,LBB3_319-LJTI3_2
	.set	L3_2_set_320,LBB3_320-LJTI3_2
	.set	L3_3_set_293,LBB3_293-LJTI3_3
	.set	L3_3_set_277,LBB3_277-LJTI3_3
	.set	L3_3_set_278,LBB3_278-LJTI3_3
	.set	L3_3_set_279,LBB3_279-LJTI3_3
	.set	L3_3_set_280,LBB3_280-LJTI3_3
	.set	L3_3_set_281,LBB3_281-LJTI3_3
	.set	L3_3_set_282,LBB3_282-LJTI3_3
	.set	L3_3_set_283,LBB3_283-LJTI3_3
	.set	L3_3_set_284,LBB3_284-LJTI3_3
	.set	L3_3_set_263,LBB3_263-LJTI3_3
	.set	L3_3_set_285,LBB3_285-LJTI3_3
	.set	L3_3_set_266,LBB3_266-LJTI3_3
	.set	L3_3_set_286,LBB3_286-LJTI3_3
	.set	L3_3_set_268,LBB3_268-LJTI3_3
	.set	L3_3_set_287,LBB3_287-LJTI3_3
	.set	L3_3_set_270,LBB3_270-LJTI3_3
	.set	L3_3_set_288,LBB3_288-LJTI3_3
	.set	L3_3_set_289,LBB3_289-LJTI3_3
	.set	L3_3_set_290,LBB3_290-LJTI3_3
	.set	L3_3_set_291,LBB3_291-LJTI3_3
	.set	L3_3_set_292,LBB3_292-LJTI3_3
	.set	L3_4_set_293,LBB3_293-LJTI3_4
	.set	L3_4_set_277,LBB3_277-LJTI3_4
	.set	L3_4_set_278,LBB3_278-LJTI3_4
	.set	L3_4_set_279,LBB3_279-LJTI3_4
	.set	L3_4_set_280,LBB3_280-LJTI3_4
	.set	L3_4_set_281,LBB3_281-LJTI3_4
	.set	L3_4_set_282,LBB3_282-LJTI3_4
	.set	L3_4_set_283,LBB3_283-LJTI3_4
	.set	L3_4_set_284,LBB3_284-LJTI3_4
	.set	L3_4_set_263,LBB3_263-LJTI3_4
	.set	L3_4_set_285,LBB3_285-LJTI3_4
	.set	L3_4_set_266,LBB3_266-LJTI3_4
	.set	L3_4_set_286,LBB3_286-LJTI3_4
	.set	L3_4_set_268,LBB3_268-LJTI3_4
	.set	L3_4_set_287,LBB3_287-LJTI3_4
	.set	L3_4_set_270,LBB3_270-LJTI3_4
	.set	L3_4_set_288,LBB3_288-LJTI3_4
	.set	L3_4_set_289,LBB3_289-LJTI3_4
	.set	L3_4_set_290,LBB3_290-LJTI3_4
	.set	L3_4_set_291,LBB3_291-LJTI3_4
	.set	L3_4_set_292,LBB3_292-LJTI3_4

.subsections_via_symbols
