	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_pari_init_evaluator
_pari_init_evaluator:
	pushq     %rbp
	pushq     %r14
	pushq     %rbx
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
	je        L0000007C
L00000070:
	movl      $256, %esi
	call      _realloc
L0000007A:
	jmp       L00000086
L0000007C:
	movl      $256, %edi
	call      _malloc
L00000086:
	movq      %rax, %rbx
	movl      %ebp, (%r14)
	testl     %ebp, %ebp
	jne       L000000A9
L00000090:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L000000A9
L0000009C:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L000000A9:
	testq     %rbx, %rbx
	jne       L000000BA
L000000AE:
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
L000000BA:
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
	je        L00000140
L00000134:
	movl      $896, %esi
	call      _realloc
L0000013E:
	jmp       L0000014A
L00000140:
	movl      $896, %edi
	call      _malloc
L0000014A:
	movq      %rax, %rbx
	movl      %ebp, (%r14)
	testl     %ebp, %ebp
	jne       L0000016D
L00000154:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L0000016D
L00000160:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L0000016D:
	testq     %rbx, %rbx
	jne       L0000017E
L00000172:
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000017E:
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
	leaq      _s_st(%rip), %rax
	movq      _s_st(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        L0000028D
L00000288:
	call      _free
L0000028D:
	leaq      _s_ptrs(%rip), %rax
	movq      _s_ptrs(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        L000002A9
L000002A4:
	call      _free
L000002A9:
	leaq      _s_var(%rip), %rax
	movq      _s_var(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        L000002C5
L000002C0:
	call      _free
L000002C5:
	leaq      _s_lvars(%rip), %rax
	movq      _s_lvars(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        L000002E1
L000002DC:
	call      _free
L000002E1:
	leaq      _s_trace(%rip), %rax
	movq      _s_trace(%rip), %rcx
	movq      (%rcx,%rax), %rdi
	testq     %rdi, %rdi
	je        L000002FE
L000002F8:
	popq      %rax
	jmp       _free
L000002FE:
	popq      %rax
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_closure_evalvoid
_closure_evalvoid:
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      _avma@GOTPCREL(%rip), %r14
	movq      (%r14), %rbx
	call      _closure_eval
L00000313:
	movq      %rbx, (%r14)
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	ret       
L0000031E:
	.align 4, 0x90
_closure_eval:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $296, %rsp
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
	je        L000003BB
L000003B7:
	incq      -32(%rcx)
L000003BB:
	xorl      %ebx, %ebx
	leaq      288(%rsp), %rdi
	xorl      %eax, %eax
	movq      %rcx, %rsi
	movq      %rcx, %rbp
	call      _trace_push
L000003D2:
	movq      %rbp, %r8
	movq      (%r8), %rax
	andq      %r13, %rax
	cmpq      $8, %rax
	jne       L000005A9
L000003E5:
	movq      56(%r8), %r12
	movq      (%r12), %r15
	andq      %r13, %r15
	leaq      -1(%r15), %rbx
	movq      _s_var+8(%rip), %rcx
	leaq      -1(%rcx,%r15), %rax
	movq      _s_var+16(%rip), %rdx
	cmpq      %rdx, %rax
	jle       L000004EF
L00000410:
	movq      %rbx, %rcx
	movq      %rcx, 248(%rsp)
	movq      _s_var(%rip), %rbp
	testq     %rdx, %rdx
	movq      %rcx, %rsi
	je        L00000438
L0000042A:
	movq      %rdx, %rsi
	.align 4, 0x90
L00000430:
	addq      %rsi, %rsi
	cmpq      %rsi, %rax
	jg        L00000430
L00000438:
	movq      %rsi, _s_var+16(%rip)
	leaq      _s_var(%rip), %rax
	movq      (%rbp,%rax), %rdi
	movq      %rbp, 232(%rsp)
	imulq     _s_var+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movl      (%rbp), %r13d
	movl      $1, (%rbp)
	testq     %rdi, %rdi
	je        L00000479
L00000472:
	call      _realloc
L00000477:
	jmp       L00000481
L00000479:
	movq      %rsi, %rdi
	call      _malloc
L00000481:
	movq      %rax, %rbx
	movl      %r13d, (%rbp)
	testl     %r13d, %r13d
	jne       L000004A6
L0000048D:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L000004A6
L00000499:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L000004A6:
	testq     %rbx, %rbx
	movq      264(%rsp), %r8
	movq      224(%rsp), %r14
	jne       L000004CD
L000004BB:
	movl      $28, %edi
	xorl      %eax, %eax
	movq      %r8, %rbp
	call      _pari_err
L000004CA:
	movq      %rbp, %r8
L000004CD:
	movq      232(%rsp), %rax
	leaq      _s_var(%rip), %rcx
	movq      %rbx, (%rax,%rcx)
	movq      _s_var+8(%rip), %rcx
	movq      248(%rsp), %rbx
L000004EF:
	addq      %rbx, %rcx
	movq      %rcx, _s_var+8(%rip)
	cmpq      $2, %r15
	jae       L0000050C
L000004FF:
	movq      256(%rsp), %r12
	jmp       L000005A9
L0000050C:
	shlq      $4, %rcx
	movq      _var(%rip), %rax
	movq      $0, -16(%rcx,%rax)
	movq      8(%r12), %rax
	movq      _s_var+8(%rip), %rcx
	shlq      $4, %rcx
	movq      _var(%rip), %rdx
	movq      %rax, -8(%rcx,%rdx)
	cmpq      $2, %rbx
	jl        L000005A1
L00000542:
	movq      $-2, %rax
	movl      $1, %ecx
	.align 4, 0x90
L00000550:
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
	jl        L00000550
L00000597:
	movq      256(%rsp), %r12
	jmp       L000005A9
L000005A1:
	movq      256(%rsp), %r12
L000005A9:
	movq      %r8, 264(%rsp)
	movq      %rbx, 248(%rsp)
	movq      $1, 288(%rsp)
	cmpq      $2, %r12
	movq      %r14, %r13
	jb        L000005EA
L000005CE:
	movl      $1, %eax
	xorl      %ecx, %ecx
	movq      %rcx, 232(%rsp)
	movq      240(%rsp), %r14
	jmp       L000013E0
L000005EA:
	xorl      %eax, %eax
	movq      %rax, 232(%rsp)
	jmp       L00004ECF
L000005F9:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      *16(%r15)
L0000061D:
	jmp       L00004E80
L00000622:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	call      *16(%r15)
L0000064B:
	jmp       L00004E80
L00000650:
	movq      _sp(%rip), %rax
	leaq      -3(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rdi
	movq      -16(%rcx,%rax,8), %rsi
	movq      -8(%rcx,%rax,8), %rdx
	xorl      %eax, %eax
	call      *16(%r15)
L0000067E:
	jmp       L00004E80
L00000683:
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
L000006B6:
	jmp       L00004E80
L000006BB:
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
L000006F3:
	jmp       L00004E80
L000006F8:
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
	jmp       L00000878
L00000734:
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
	jmp       L00000878
L00000779:
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
	jmp       L00000878
L000007C8:
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
	jmp       L00000874
L0000081A:
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
L00000874:
	movq      %r10, (%rsp)
L00000878:
	xorl      %eax, %eax
	call      *16(%r15)
L0000087E:
	jmp       L00004E80
L00000883:
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
	jmp       L000009A4
L00000906:
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
L000009A4:
	movq      208(%rsp), %rcx
	call      *16(%r15)
L000009B0:
	jmp       L00004E80
L000009B5:
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
	jmp       L00000B4A
L00000A75:
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
L00000B4A:
	movq      200(%rsp), %rcx
	call      *16(%r15)
L00000B56:
	jmp       L00004E80
L00000B5B:
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
	jmp       L00001071
L00000C2C:
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
	jmp       L00001071
L00000D1A:
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
	jmp       L00001071
L00000E25:
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
	jmp       L00001071
L00000F3F:
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
L00001071:
	movq      200(%rsp), %rsi
	movq      160(%rsp), %r8
	movq      152(%rsp), %r9
	movq      208(%rsp), %rdx
	movq      168(%rsp), %rcx
	call      *16(%r15)
L0000109D:
	jmp       L00004E80
L000010A2:
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
L0000120C:
	jmp       L00004E80
L00001211:
	cmpq      $1, %rax
	movq      $72057594037927935, %r12
	jne       L000013A4
L00001225:
	movq      8(%rbx), %r10
	movq      %r10, %rdx
	andq      %r12, %rdx
	leaq      0(,%rdx,8), %rax
	movq      %rbp, %r15
	subq      %rax, %r15
	cmpq      $2, %rdx
	jb        L0000136A
L00001247:
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
	je        L00001348
L0000127A:
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
	je        L0000133B
L000012A3:
	movq      %r11, %rax
	notq      %rax
	leaq      (%rbx,%rax,8), %rax
	leaq      -8(%rbp), %rcx
	xorl      %r14d, %r14d
	cmpq      %rax, %rcx
	ja        L000012D1
L000012B9:
	leaq      -8(%rbx,%rsi,8), %rax
	addq      %rsi, %r11
	notq      %r11
	leaq      (%rbp,%r11,8), %rcx
	cmpq      %rcx, %rax
	movq      %rdx, %rcx
	jbe       L0000133B
L000012D1:
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
L00001301:
	movq      %rsi, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LC000055C0(%rip), %xmm0
	movq      %xmm0, %rax
	movups    -8(%rbx,%rax,8), %xmm0
	movups    -24(%rbx,%rax,8), %xmm1
	subq      %rdx, %rax
	movups    %xmm0, -8(%rbp,%rax,8)
	movups    %xmm1, -24(%rbp,%rax,8)
	addq      $-4, %rsi
	cmpq      %rsi, %rdi
	jne       L00001301
L00001338:
	movq      %r9, %r14
L0000133B:
	cmpq      %r14, %r8
	movq      240(%rsp), %r14
	je        L0000136A
L00001348:
	andq      %r12, %r10
	shlq      $3, %r10
	subq      %r10, %rbp
	addq      $-8, %rbp
L00001356:
	movq      -8(%rbx,%rcx,8), %rax
	movq      %rax, (%rbp,%rcx,8)
	leaq      -1(%rcx), %rcx
	cmpq      $1, %rcx
	jg        L00001356
L0000136A:
	movq      $144115188075855875, %rax
	leaq      -3(%rax), %rax
	orq       %rax, %rdx
	movq      %rdx, (%r15)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r15, (%rax)
	movq      %r15, %rbx
	jmp       L000013B9
L0000138D:
	andq      %rax, %r8
	leaq      (%rcx,%r8,8), %rsi
	movq      %rcx, %rdx
	call      _gerepile
L0000139C:
	movq      %rax, %rcx
	jmp       L00002CB7
L000013A4:
	andq      %r12, %r8
	leaq      (%rbx,%r8,8), %rsi
	movq      %rbp, %rdi
	movq      %rbx, %rdx
	call      _gerepile
L000013B6:
	movq      %rax, %rbx
L000013B9:
	movq      256(%rsp), %r12
L000013C1:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %rbx, -8(%rcx,%rax,8)
	jmp       L00004E80
L000013D9:
	.align 4, 0x90
L000013E0:
	movsbl    7(%r14,%rax), %ebp
	movq      (%r13,%rax,8), %r15
	cmpq      $0, _sp(%rip)
	jns       L00001408
L000013F5:
	movl      $2, %edi
	xorl      %eax, %eax
	leaq      LC000055E0(%rip), %rsi
	call      _pari_err
L00001408:
	movl      $16, %edi
	xorl      %eax, %eax
	call      _st_alloc
L00001414:
	addl      $-65, %ebp
	cmpl      $56, %ebp
	ja        L00004E80
L00001420:
	movq      %r15, %rbx
	negq      %rbx
	leaq      L00004F1C(%rip), %rax
	movq      %rax, %rcx
	movslq    (%rcx,%rbp,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00001439:
	movq      _gnil@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       L00004E5E
L00001448:
	movq      192(%rsp), %rax
	movq      (%rax,%r15,8), %rax
	jmp       L00004E5E
L00001459:
	movq      192(%rsp), %rax
	movq      (%rax,%r15,8), %rdi
	addq      $8, %rdi
	movq      _precreal@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      _strtor
L00001478:
	jmp       L00004E5E
L0000147D:
	movq      %r14, %r12
	testq     %r15, %r15
	je        L00002D24
L00001489:
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbp
	leaq      -24(%rbp), %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %rbp, %rax
	subq      (%rcx), %rax
	testq     %r15, %r15
	jle       L00002E8E
L000014AD:
	cmpq      $23, %rax
	ja        L000014C5
L000014B3:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbx
	call      _pari_err
L000014C2:
	movq      %rbx, %rdx
L000014C5:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $4611686018427387907, %rax
	movq      %rax, -16(%rbp)
	movq      %r15, -8(%rbp)
	jmp       L00002EC9
L000014ED:
	movq      %r15, %rdi
	call      _pari_var_create
L000014F5:
	addq      $72, %r15
L000014F9:
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      %r15, (%rcx,%rax,8)
	jmp       L00004E80
L0000151B:
	subq      %r15, _sp(%rip)
	jmp       L00004E80
L00001527:
	movq      %r12, %r15
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rbx
	movq      %r14, %r12
	testq     %rbx, %rbx
	je        L00002D33
L00001549:
	jle       L00002EF6
L0000154F:
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbp
	leaq      -24(%rbp), %r14
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbp, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        L00001583
L00001570:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000157C:
	movq      _avma@GOTPCREL(%rip), %rdx
L00001583:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $4611686018427387907, %rax
	jmp       L00002F48
L000015A3:
	movq      _sp(%rip), %rax
	addq      %r15, %rax
	movq      _st(%rip), %rcx
	movq      (%rcx,%rax,8), %rbp
	jmp       L000029F1
L000015BD:
	movq      _sp(%rip), %rcx
	leaq      (%rcx,%r15), %rax
	movq      _st(%rip), %rdx
	movq      (%rdx,%rax,8), %rax
	movq      (%rax), %rsi
	movq      $-144115188075855872, %rdi
	andq      %rdi, %rsi
	movq      $3026418949592973312, %rdi
	cmpq      %rdi, %rsi
	je        L00001608
L000015F2:
	movq      %rax, %rdi
	call      _GENtoGENstr
L000015FA:
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
L00001608:
	addq      $8, %rax
	addq      %r15, %rcx
	movq      %rax, (%rdx,%rcx,8)
	jmp       L00004E80
L00001618:
	movq      _sp(%rip), %rax
	addq      %r15, %rax
	movq      _st(%rip), %rcx
	movq      (%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      _closure_varn
L00001634:
	cltq      
	jmp       L00002A7A
L0000163B:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	jmp       L00001674
L00001650:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	movq      216(%rsp), %rax
	testq     (%rdi), %rax
	je        L00004E80
L00001674:
	call      _gcopy
L00001679:
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
	movq      %rax, -8(%rdx,%rcx,8)
	jmp       L00004E80
L00001691:
	movq      _precreal@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       L00004E5E
L000016A0:
	movq      _precdl@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       L00004E5E
L000016AF:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	leaq      (%rax,%rbx,8), %rbx
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       L000016DD
L000016D1:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000016DD:
	movq      %rbx, (%rbp)
	movq      $72057594037927935, %rax
	cmpq      %rax, %r15
	jbe       L00001703
L000016F0:
	leaq      LC00005727(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001703:
	movq      $2449958197289549824, %rax
	jmp       L00001947
L00001712:
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
	jae       L00001760
L0000174E:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbx
	call      _pari_err
L0000175D:
	movq      %rbx, %rdx
L00001760:
	movq      %rbp, (%rdx)
	movq      $72057594037927935, %rax
	cmpq      %rax, %r15
	jbe       L0000178B
L00001772:
	leaq      LC00005727(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbx
	call      _pari_err
L00001788:
	movq      %rbx, %rdx
L0000178B:
	movq      %r15, %rax
	movq      $2738188573441261568, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbp)
	movq      %rbp, 168(%rsp)
	cmpq      $2, %r15
	jl        L000018A9
L000017B1:
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
	jbe       L00001860
L000017E6:
	.align 4, 0x90
L000017F0:
	movq      (%rdx), %rax
	leaq      (%rax,%r12,8), %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      200(%rsp), %rax
	jae       L00001821
L0000180F:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r15
	call      _pari_err
L0000181E:
	movq      %r15, %rdx
L00001821:
	movq      %r14, (%rdx)
	leaq      LC00005727(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbp
	call      _pari_err
L0000183A:
	movq      %rbp, %rdx
	movq      %r13, (%r14)
	movq      208(%rsp), %rax
	movq      %r14, (%rax,%rbx,8)
	incq      %rbx
	jne       L000017F0
L00001851:
	jmp       L000018A9
L00001853:
	.align 4, 0x90
L00001860:
	movq      (%rdx), %rax
	leaq      (%rax,%r12,8), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      200(%rsp), %rax
	jae       L00001891
L0000187F:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r15
	call      _pari_err
L0000188E:
	movq      %r15, %rdx
L00001891:
	movq      %rbp, (%rdx)
	movq      %r13, (%rbp)
	movq      208(%rsp), %rax
	movq      %rbp, (%rax,%rbx,8)
	incq      %rbx
	jne       L00001860
L000018A9:
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
	jmp       L000030D0
L000018E9:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	leaq      (%rax,%rbx,8), %rbx
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       L00001917
L0000190B:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001917:
	movq      %rbx, (%rbp)
	movq      $72057594037927935, %rax
	cmpq      %rax, %r15
	jbe       L0000193D
L0000192A:
	leaq      LC00005727(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000193D:
	movq      $2594073385365405696, %rax
L00001947:
	orq       %rax, %r15
	movq      %r15, (%rbx)
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      %rbx, (%rcx,%rax,8)
	movq      (%rbp), %rax
	jmp       L00004E5E
L00001973:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rcx
	movq      _bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rcx
	jb        L00002CAD
L0000199B:
	cmpq      %rcx, %rdi
	jbe       L00002CAD
L000019A4:
	movq      _top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rcx
	jae       L00002CAD
L000019B4:
	movq      (%rcx), %r8
	movq      %r8, %rax
	shrq      $57, %rax
	leaq      -21(%rax), %rsi
	cmpq      $2, %rsi
	jb        L000019D2
L000019C8:
	cmpq      $2, %rax
	jne       L00003FEB
L000019D2:
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
	je        L00003FE3
L00001A02:
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
	je        L00003388
L00001A3B:
	leaq      2(%r12), %rbx
	leaq      2(%r12,%rsi), %r9
	addl      %r8d, %ebx
	andq      $3, %rbx
	cmpq      %rdx, %rax
	movq      %r9, %rdx
	cmove     %rbp, %r14
	xorl      %r10d, %r10d
	subq      %rbx, %r9
	je        L00001AED
L00001A62:
	movq      $-2, %rax
	movq      $-2, %rbp
	subq      %r14, %rbp
	leaq      (%rcx,%rbp,8), %rbx
	leaq      -8(%rdi), %rbp
	xorl      %r10d, %r10d
	cmpq      %rbx, %rbp
	ja        L00001A97
L00001A83:
	leaq      -8(%rcx,%rsi,8), %rbx
	addq      %rsi, %r14
	subq      %r14, %rax
	leaq      (%rdi,%rax,8), %rax
	cmpq      %rax, %rbx
	jbe       L00001AED
L00001A97:
	movq      %rsi, %r10
	subq      %r9, %r10
	leal      2(%r12,%r8), %ebp
	andq      $3, %rbp
	subq      %r12, %rbp
	addq      $-2, %rbp
	movq      %rsi, %rax
L00001AB0:
	movq      %rax, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LC000055C0(%rip), %xmm0
	movq      %xmm0, %rbx
	movups    -8(%rcx,%rbx,8), %xmm0
	movups    -24(%rcx,%rbx,8), %xmm1
	subq      %rsi, %rbx
	movups    %xmm0, -8(%rdi,%rbx,8)
	movups    %xmm1, -24(%rdi,%rbx,8)
	addq      $-4, %rax
	cmpq      %rax, %rbp
	jne       L00001AB0
L00001AE7:
	movq      %r10, %rsi
	movq      %r9, %r10
L00001AED:
	cmpq      %r10, %rdx
	jne       L00003388
L00001AF6:
	movq      %r11, %rcx
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
	jmp       L00002CB7
L00001B0E:
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
	je        L00002D51
L00001B45:
	cmpq      $20, %rax
	movq      $72057594037927935, %rcx
	je        L00002D7B
L00001B59:
	addq      $-17, %rax
	cmpq      $1, %rax
	jbe       L00002D8C
L00001B67:
	leaq      LC00005619(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001B7A:
	jmp       L00004E80
L00001B7F:
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
	je        L00001BD7
L00001BC1:
	leaq      LC0000562C(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001BD4:
	movq      (%rbx), %rsi
L00001BD7:
	movq      $72057594037927935, %rax
	movq      %rax, %rbp
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _check_array_index
L00001BF1:
	movq      (%rbx,%r12,8), %rax
	movq      (%rax), %rsi
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _check_array_index
L00001C05:
	addq      $-3, _sp(%rip)
	movq      (%rbx,%r12,8), %rax
	movq      (%rax,%r14,8), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _closure_castgen
L00001C1F:
	movq      %r13, %r14
	jmp       L000030D8
L00001C27:
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
	je        L00001C79
L00001C62:
	leaq      LC00005641(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001C75:
	movq      (%rbp), %rsi
L00001C79:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _check_array_index
L00001C90:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      (%rbp,%rbx,8), %rcx
	movq      _st(%rip), %rdx
	movq      %rcx, -16(%rdx,%rax,8)
	jmp       L00004E80
L00001CB8:
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
	je        L00001D12
L00001CFC:
	leaq      LC00005655(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001D0F:
	movq      (%r15), %rax
L00001D12:
	movq      $72057594037927935, %rbp
	andq      %rbp, %rax
	cmpq      $1, %rax
	jne       L00001D38
L00001D25:
	leaq      LC00005669(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001D38:
	movq      8(%r15), %rax
	movq      (%rax), %rsi
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _check_array_index
L00001D4C:
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
	jae       L00001D8A
L00001D7E:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001D8A:
	movq      %rbp, (%r12)
	movq      %rbx, %rax
	movq      $2449958197289549824, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbp)
	cmpq      $2, %rbx
	jb        L00001DC5
L00001DA8:
	movl      $1, %eax
	.align 4, 0x90
L00001DB0:
	movq      (%r15,%rax,8), %rcx
	movq      (%rcx,%r14,8), %rcx
	movq      %rcx, (%rbp,%rax,8)
	incq      %rax
	cmpq      %rbx, %rax
	jl        L00001DB0
L00001DC5:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %rbp, -8(%rcx,%rax,8)
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
	jmp       L00004E80
L00001DED:
	imulq     $56, _rp(%rip), %rax
	movq      _ptrs(%rip), %rcx
	movq      _sp(%rip), %rdx
	movq      %rdx, -8(%rax,%rcx)
	leaq      -32(%rax,%rcx), %rax
	jmp       L00004E5E
L00001E12:
	testq     %r15, %r15
	jle       L00004E80
L00001E1B:
	.align 4, 0x90
L00001E20:
	movq      _rp(%rip), %rcx
	decq      %rcx
	movq      %rcx, _rp(%rip)
	movq      _ptrs(%rip), %rax
	imulq     $56, %rcx, %rcx
	movq      32(%rax,%rcx), %rdi
	testq     %rdi, %rdi
	je        L00001E70
L00001E46:
	movq      24(%rax,%rcx), %rsi
	movq      40(%rax,%rcx), %rcx
	testq     %rcx, %rcx
	je        L00001E90
L00001E55:
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _changelex
L00001E5F:
	jmp       L00001E95
L00001E61:
	.align 4, 0x90
L00001E70:
	leaq      (%rax,%rcx), %rdi
	movq      24(%rax,%rcx), %rsi
	xorl      %eax, %eax
	call      _change_compo
L00001E80:
	jmp       L00001E95
L00001E82:
	.align 4, 0x90
L00001E90:
	call      _changevalue
L00001E95:
	decq      %r15
	jne       L00001E20
L00001E9A:
	jmp       L00004E80
L00001E9F:
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
	je        L00002DAC
L00001EFC:
	cmpq      $20, %rax
	je        L00002E33
L00001F06:
	addq      $-17, %rax
	cmpq      $1, %rax
	jbe       L00002E45
L00001F14:
	leaq      LC00005619(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001F27:
	jmp       L00002E74
L00001F2C:
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
	je        L00001FAE
L00001F98:
	leaq      LC0000562C(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001FAB:
	movq      (%rbx), %rsi
L00001FAE:
	movq      $72057594037927935, %r15
	andq      %r15, %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _check_array_index
L00001FC5:
	movq      (%rbx,%r12,8), %rax
	movq      (%rax), %rsi
	andq      %r15, %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _check_array_index
L00001FD9:
	movq      (%rbx,%r12,8), %rax
	leaq      (%rax,%r14,8), %rcx
	movq      %rcx, (%r13,%rbp)
	movq      %rbx, 8(%r13,%rbp)
	movq      (%rax,%r14,8), %rax
	movq      208(%rsp), %rcx
	jmp       L00002241
L00001FFC:
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
	je        L00002077
L00002060:
	leaq      LC00005641(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002073:
	movq      (%r12), %rsi
L00002077:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _check_array_index
L0000208E:
	leaq      (%r12,%r15,8), %rax
	movq      %rax, (%r13)
	movl      %r15d, 16(%rbp,%rbx)
	movq      %r12, 8(%rbp,%rbx)
	movq      (%r12,%r15,8), %rax
	movq      %rax, (%r14)
	jmp       L000030D0
L000020AC:
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
	je        L0000211D
L00002106:
	leaq      LC00005655(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002119:
	movq      (%r13), %rax
L0000211D:
	movq      $72057594037927935, %rcx
	andq      %rcx, %rax
	cmpq      $1, %rax
	jne       L00002143
L00002130:
	leaq      LC00005669(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002143:
	movq      8(%r13), %rax
	movq      (%rax), %rsi
	movq      $72057594037927935, %rax
	movq      %rax, %rbp
	andq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _check_array_index
L00002164:
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
	jae       L000021B8
L00002196:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r14, 208(%rsp)
	movq      %rdx, %r14
	call      _pari_err
L000021AD:
	movq      %r14, %rdx
	movq      208(%rsp), %r14
L000021B8:
	leaq      24(%r14,%r15), %rax
	movq      %rax, 200(%rsp)
	movq      %r14, 208(%rsp)
	movq      %rbp, (%rdx)
	movq      %rbx, %rax
	movq      $2449958197289549824, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbp)
	cmpq      $2, %rbx
	jb        L0000220B
L000021EA:
	movl      $1, %r14d
L000021F0:
	movq      (%r13,%r14,8), %rax
	movq      (%rax,%r12,8), %rdi
	call      _gcopy
L000021FE:
	movq      %rax, (%rbp,%r14,8)
	incq      %r14
	cmpq      %rbx, %r14
	jl        L000021F0
L0000220B:
	movq      %rbp, 280(%rsp)
	movq      208(%rsp), %rcx
	movl      %r12d, 20(%rcx,%r15)
	leaq      280(%rsp), %rax
	movq      %rax, (%rcx,%r15)
	movq      %r13, 8(%rcx,%r15)
	movq      280(%rsp), %rax
	movq      200(%rsp), %rcx
L00002241:
	movq      %rax, (%rcx)
	jmp       L000030D0
L00002249:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        L00004E9E
L00002257:
	leaq      L000050A8(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00002267:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        L00004E9E
L00002275:
	leaq      L000050FC(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00002285:
	xorl      %eax, %eax
	call      *16(%r15)
L0000228B:
	jmp       L00004E5E
L00002290:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	call      *16(%r15)
L000022B7:
	jmp       L00004E5E
L000022BC:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        L00004E9E
L000022CA:
	leaq      L00005054(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L000022DA:
	xorl      %eax, %eax
	call      *16(%r15)
L000022E0:
	cltq      
	jmp       L00004E5E
L000022E7:
	movq      56(%r15), %rax
	cmpq      $20, %rax
	ja        L00004E9E
L000022F5:
	leaq      L00005000(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00002305:
	xorl      %eax, %eax
	call      *16(%r15)
L0000230B:
	jmp       L00004E80
L00002310:
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
	je        L00002357
L00002348:
	movl      $9, %edi
	xorl      %eax, %eax
	movq      %r12, %rsi
	call      _pari_err
L00002357:
	movq      8(%r12), %rbx
	movq      %rbx, %rbp
	subq      %r15, %rbp
	je        L000023B6
L00002364:
	jge       L00002379
L00002366:
	leaq      LC000056AD(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002379:
	xorl      %eax, %eax
	movq      %rbp, %rdi
	call      _st_alloc
L00002383:
	subq      %r15, %rbx
	jle       L000023B6
L00002388:
	.align 4, 0x90
L00002390:
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      $0, (%rcx,%rax,8)
	decq      %rbx
	jne       L00002390
L000023B6:
	movq      _PARI_stack_limit@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	testq     %rax, %rax
	je        L000023E5
L000023C5:
	leaq      272(%rsp), %rcx
	cmpq      %rax, %rcx
	ja        L000023E5
L000023D2:
	leaq      LC000056DF(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L000023E5:
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      _closure_return
L000023EF:
	cltq      
	movq      %rax, 272(%rsp)
	movq      _sp(%rip), %rcx
	movq      _st(%rip), %rdx
	movq      %rax, -8(%rdx,%rcx,8)
	movq      256(%rsp), %r12
	jmp       L00004E80
L00002419:
	movq      _s_var+8(%rip), %rcx
	leaq      (%rcx,%r15), %rax
	movq      _s_var+16(%rip), %rdx
	cmpq      %rdx, %rax
	jle       L00002FCE
L00002434:
	movq      _s_var(%rip), %r12
	testq     %rdx, %rdx
	movq      %r15, %rsi
	je        L0000245B
L00002443:
	.align 4, 0x90
L00002450:
	addq      %rdx, %rdx
	cmpq      %rdx, %rax
	movq      %rdx, %rsi
	jg        L00002450
L0000245B:
	movq      %rsi, _s_var+16(%rip)
	leaq      _s_var(%rip), %r14
	movq      (%r12,%r14), %rdi
	imulq     _s_var+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r13
	movl      (%r13), %ebx
	movl      $1, (%r13)
	testq     %rdi, %rdi
	je        L00002F6E
L00002491:
	call      _realloc
L00002496:
	jmp       L00002F76
L0000249B:
	testq     %r15, %r15
	leaq      _shallowcopy(%rip), %rcx
	cmovne    _gcopy@GOTPCREL(%rip), %rcx
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rdx
	movq      -8(%rdx,%rax,8), %rdi
	call      *%rcx
L000024C2:
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
	jae       L00002510
L00002504:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002510:
	movq      %r12, (%rbx)
	movq      %r13, %rax
	movq      $2449958197289549824, %rcx
	orq       %rcx, %rax
	movq      %rax, (%r12)
	cmpq      $2, %r13
	jb        L000030B9
L00002531:
	testq     %r15, %r15
	je        L0000307D
L0000253A:
	movq      $-1, %rbp
	movl      $1, %ebx
	.align 4, 0x90
L00002550:
	movq      _var(%rip), %rax
	movq      _s_var+8(%rip), %rcx
	addq      %rbp, %rcx
	shlq      $4, %rcx
	movq      8(%rax,%rcx), %rdi
	call      _gcopy
L0000256F:
	movq      %rax, (%r12,%rbx,8)
	incq      %rbx
	decq      %rbp
	cmpq      %r13, %rbx
	jl        L00002550
L0000257E:
	jmp       L000030B9
L00002583:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L0000258D:
	movq      16(%r15), %rax
	jmp       L00004E5E
L00002596:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L000025A0:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rsi
	movq      %r15, %rdi
	call      _changevalue
L000025C6:
	jmp       L00004E80
L000025CB:
	xorl      %eax, %eax
	call      _new_ptr
L000025D2:
	movslq    %eax, %rbx
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L000025DF:
	movq      $-1, 48(%rbx)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copyvalue
L000025F1:
	jmp       L0000269B
L000025F6:
	xorl      %eax, %eax
	call      _new_ptr
L000025FD:
	movslq    %eax, %rbx
	movq      $0, 40(%rbx)
	movq      %r15, 32(%rbx)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L00002616:
	movq      32(%rbx), %rax
	movq      16(%rax), %rax
	movq      %rax, 24(%rbx)
	movq      _sp(%rip), %rax
	movq      %rax, 48(%rbx)
	leaq      24(%rbx), %rax
	jmp       L00004E5E
L00002636:
	addq      _s_var+8(%rip), %r15
	movq      _var(%rip), %rax
	shlq      $4, %r15
	movq      8(%rax,%r15), %rax
	jmp       L00004E5E
L00002652:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _changelex
L0000267A:
	jmp       L00004E80
L0000267F:
	xorl      %eax, %eax
	call      _new_ptr
L00002686:
	movslq    %eax, %rbx
	movq      $-1, 48(%rbx)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copylex
L0000269B:
	cltq      
	leaq      24(%rbx), %rcx
	movq      %rax, 24(%rbx)
	movq      $0, 16(%rbx)
	movq      $0, 40(%rbx)
	movq      $0, 32(%rbx)
	movq      %rax, 8(%rbx)
	movq      %rcx, (%rbx)
	jmp       L00004E80
L000026C9:
	xorl      %eax, %eax
	call      _new_ptr
L000026D0:
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
	jmp       L00004E5E
L0000270D:
	movq      _s_var+8(%rip), %rdx
	leaq      (%rdx,%r15), %rax
	movq      _s_var+16(%rip), %rcx
	cmpq      %rcx, %rax
	jle       L00003154
L00002728:
	movq      _s_var(%rip), %r14
	testq     %rcx, %rcx
	movq      %r15, %rsi
	je        L0000274B
L00002737:
	.align 4, 0x90
L00002740:
	addq      %rcx, %rcx
	cmpq      %rcx, %rax
	movq      %rcx, %rsi
	jg        L00002740
L0000274B:
	movq      %rsi, _s_var+16(%rip)
	leaq      _s_var(%rip), %rax
	movq      (%r14,%rax), %rdi
	imulq     _s_var+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movl      (%r12), %ebp
	movl      $1, (%r12)
	testq     %rdi, %rdi
	je        L000030ED
L00002781:
	call      _realloc
L00002786:
	jmp       L000030F5
L0000278B:
	movq      _s_var+8(%rip), %rax
	addq      %r15, %rax
	movq      _var(%rip), %rcx
	shlq      $4, %rax
	cmpq      $2, (%rcx,%rax)
	jne       L000027CF
L000027A7:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	call      _closure_evalnobrk
L000027BF:
	movq      %rax, %rcx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %rcx, %rsi
	call      _pushlex
L000027CF:
	decq      _sp(%rip)
	jmp       L00004E80
L000027DB:
	movq      _s_lvars+8(%rip), %rbp
	movq      _s_lvars+16(%rip), %rax
	cmpq      %rax, %rbp
	jl        L0000327E
L000027F2:
	movq      264(%rsp), %r14
	movq      _s_lvars(%rip), %r12
	movl      $1, %esi
	testq     %rax, %rax
	je        L0000281B
L0000280B:
	.align 4, 0x90
L00002810:
	addq      %rax, %rax
	cmpq      %rax, %rbp
	movq      %rax, %rsi
	jge       L00002810
L0000281B:
	movq      %rsi, _s_lvars+16(%rip)
	leaq      _s_lvars(%rip), %rax
	movq      (%r12,%rax), %rdi
	imulq     _s_lvars+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r13
	movl      (%r13), %ebx
	movl      $1, (%r13)
	testq     %rdi, %rdi
	je        L0000320F
L00002851:
	call      _realloc
L00002856:
	jmp       L00003217
L0000285B:
	movq      _s_lvars+8(%rip), %rbp
	movq      _s_lvars+16(%rip), %rax
	cmpq      %rax, %rbp
	jl        L00003342
L00002872:
	movq      264(%rsp), %r14
	movq      _s_lvars(%rip), %r12
	movl      $1, %esi
	testq     %rax, %rax
	je        L0000289B
L0000288B:
	.align 4, 0x90
L00002890:
	addq      %rax, %rax
	cmpq      %rax, %rbp
	movq      %rax, %rsi
	jge       L00002890
L0000289B:
	movq      %rsi, _s_lvars+16(%rip)
	leaq      _s_lvars(%rip), %rax
	movq      (%r12,%rax), %rdi
	imulq     _s_lvars+24(%rip), %rsi
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %r13
	movl      (%r13), %ebx
	movl      $1, (%r13)
	testq     %rdi, %rdi
	je        L000032D3
L000028D1:
	call      _realloc
L000028D6:
	jmp       L000032DB
L000028DB:
	testq     %r15, %r15
	je        L00004E80
L000028E4:
	movq      _sp(%rip), %rax
	leaq      -8(,%rax,8), %rbx
	.align 4, 0x90
L00002900:
	testb     $1, %r15b
	je        L00002930
L00002906:
	movq      _st(%rip), %rax
	cmpq      $0, (%rax,%rbx)
	jne       L00002930
L00002914:
	leaq      LC000056EE(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002927:
	.align 4, 0x90
L00002930:
	sarq      $1, %r15
	addq      $-8, %rbx
	testq     %r15, %r15
	jne       L00002900
L0000293C:
	jmp       L00004E80
L00002941:
	testq     %r15, %r15
	je        L00004E80
L0000294A:
	movq      _sp(%rip), %rax
	leaq      -8(,%rax,8), %rbx
	.align 4, 0x90
L00002960:
	testb     $1, %r15b
	je        L00002987
L00002966:
	movq      _st(%rip), %rax
	cmpq      $0, (%rax,%rbx)
	je        L00002987
L00002974:
	leaq      LC00005709(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002987:
	sarq      $1, %r15
	addq      $-8, %rbx
	testq     %r15, %r15
	jne       L00002960
L00002993:
	jmp       L00004E80
L00002998:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	leaq      -1(%rax,%r15), %rcx
	movq      _st(%rip), %rdx
	cmpq      $0, (%rdx,%rcx,8)
	jne       L00004E80
L000029C1:
	jmp       L00002D16
L000029C6:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	leaq      -1(%rax,%r15), %rcx
	movq      _st(%rip), %rdx
	movq      (%rdx,%rcx,8), %rbp
	testq     %rbp, %rbp
	je        L00002D16
L000029F1:
	movq      (%rbp), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $144115188075855875, %rcx
	leaq      -3(%rcx), %rcx
	cmpq      %rcx, %rax
	je        L00002A2B
L00002A15:
	leaq      LC0000572C(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	movq      %rbp, %rdx
	call      _pari_err
L00002A2B:
	movq      8(%rbp), %rcx
	xorl      %eax, %eax
	movq      %rcx, %rbx
	sarq      $62, %rbx
	movq      $72057594037927935, %rdx
	je        L00002A7A
L00002A44:
	movq      16(%rbp), %rbp
	leaq      -3(%rdx), %rax
	andq      %rax, %rcx
	cmpq      $3, %rcx
	ja        L00002A5A
L00002A55:
	testq     %rbp, %rbp
	jns       L00002A6D
L00002A5A:
	leaq      LC00005750(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002A6D:
	movq      %rbp, %rax
	negq      %rax
	testq     %rbx, %rbx
	cmovg     %rbp, %rax
L00002A7A:
	addq      _sp(%rip), %r15
	movq      _st(%rip), %rcx
	movq      %rax, (%rcx,%r15,8)
	jmp       L00004E80
L00002A91:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       L00004E5E
L00002AA0:
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
	jb        L000013C1
L00002AEA:
	movq      _DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	jb        L00002B0A
L00002AF7:
	leaq      LC000055FE(%rip), %rsi
	movl      $3, %edi
	xorl      %eax, %eax
	call      _pari_warn
L00002B0A:
	movq      _bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        L00002D42
L00002B1A:
	cmpq      %rbx, %rbp
	jbe       L00002D42
L00002B23:
	movq      _top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jae       L00002D42
L00002B33:
	movq      (%rbx), %r8
	movq      %r8, %rax
	shrq      $57, %rax
	leaq      -21(%rax), %rdx
	cmpq      $2, %rdx
	jb        L00002B51
L00002B47:
	cmpq      $2, %rax
	jne       L00001211
L00002B51:
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
	je        L0000422F
L00002B81:
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
	je        L00004207
L00002BBA:
	leaq      2(%r15), %rsi
	leaq      2(%r15,%rdx), %r9
	addl      %r8d, %esi
	andq      $3, %rsi
	cmpq      %rcx, %rax
	movq      %r9, %rcx
	cmove     %rdi, %r14
	xorl      %r10d, %r10d
	subq      %rsi, %r9
	je        L00002C6C
L00002BE0:
	movq      $-2, %rax
	movq      $-2, %rsi
	subq      %r14, %rsi
	leaq      (%rbx,%rsi,8), %rsi
	leaq      -8(%rbp), %rdi
	xorl      %r10d, %r10d
	cmpq      %rsi, %rdi
	ja        L00002C16
L00002C01:
	leaq      -8(%rbx,%rdx,8), %rsi
	addq      %rdx, %r14
	subq      %r14, %rax
	leaq      (%rbp,%rax,8), %rax
	cmpq      %rax, %rsi
	jbe       L00002C6C
L00002C16:
	movq      %rdx, %r10
	subq      %r9, %r10
	leal      2(%r15,%r8), %edi
	andq      $3, %rdi
	subq      %r15, %rdi
	addq      $-2, %rdi
	movq      %rdx, %rax
L00002C2F:
	movq      %rax, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LC000055C0(%rip), %xmm0
	movq      %xmm0, %rsi
	movups    -8(%rbx,%rsi,8), %xmm0
	movups    -24(%rbx,%rsi,8), %xmm1
	subq      %rdx, %rsi
	movups    %xmm0, -8(%rbp,%rsi,8)
	movups    %xmm1, -24(%rbp,%rsi,8)
	addq      $-4, %rax
	cmpq      %rax, %rdi
	jne       L00002C2F
L00002C66:
	movq      %r10, %rdx
	movq      %r9, %r10
L00002C6C:
	cmpq      %r10, %rcx
	jne       L00004207
L00002C75:
	movq      %r11, %rbx
	movq      240(%rsp), %r14
	jmp       L000013B9
L00002C85:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L00002C8F:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copyvalue
L00002C99:
	jmp       L00004E80
L00002C9E:
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _copylex
L00002CA8:
	jmp       L00004E80
L00002CAD:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %rdi, (%rax)
L00002CB7:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rdx
	movq      -16(%rdx,%rax,8), %rsi
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _copyupto
L00002CD4:
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
	jmp       L00004E80
L00002D16:
	movq      -8(%rdx,%rax,8), %rax
	movq      %rax, (%rdx,%rcx,8)
	jmp       L00004E80
L00002D24:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	jmp       L00002EC9
L00002D33:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	jmp       L00002F50
L00002D42:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %rbp, (%rax)
	jmp       L000013C1
L00002D51:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %rbp, %rdi
	call      _check_array_index
L00002D68:
	movq      (%rbx,%rbp,8), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _closure_castlong
L00002D76:
	jmp       L00004E80
L00002D7B:
	movq      16(%rbx), %rbx
	movl      $1, %esi
	testq     %rbx, %rbx
	je        L00002D8F
L00002D89:
	movq      (%rbx), %rsi
L00002D8C:
	andq      %rcx, %rsi
L00002D8F:
	xorl      %eax, %eax
	movq      %rbp, %rdi
	call      _check_array_index
L00002D99:
	movq      (%rbx,%rbp,8), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _closure_castgen
L00002DA7:
	jmp       L00004E80
L00002DAC:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _check_array_index
L00002DC3:
	leaq      (%rbp,%rbx,8), %rax
	movq      %rax, (%r14)
	movq      (%rbp,%rbx,8), %r14
	testq     %r14, %r14
	je        L00003379
L00002DD9:
	jle       L0000418D
L00002DDF:
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      -24(%rbx), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        L00002E13
L00002E00:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002E0C:
	movq      _avma@GOTPCREL(%rip), %rdx
L00002E13:
	movq      %r13, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbx)
	movq      $4611686018427387907, %rax
	jmp       L000041DF
L00002E33:
	movq      16(%rbp), %rbp
	movl      $1, %esi
	testq     %rbp, %rbp
	je        L00002E52
L00002E41:
	movq      (%rbp), %rsi
L00002E45:
	movq      $72057594037927935, %rax
	andq      %rax, %rsi
L00002E52:
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _check_array_index
L00002E5C:
	leaq      (%rbp,%rbx,8), %rax
	movq      %rax, (%r14)
	movq      (%rbp,%rbx,8), %rax
L00002E69:
	movq      208(%rsp), %rcx
	movq      %rax, (%rcx)
L00002E74:
	movq      240(%rsp), %r14
L00002E7C:
	movq      %rbp, 8(%r15,%r12)
	movq      256(%rsp), %r12
	jmp       L00004E80
L00002E8E:
	cmpq      $23, %rax
	ja        L00002EA6
L00002E94:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r15
	call      _pari_err
L00002EA3:
	movq      %r15, %rdx
L00002EA6:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $-4611686018427387901, %rax
	movq      %rax, -16(%rbp)
	movq      %rbx, -8(%rbp)
L00002EC9:
	movq      _sp(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      %r14, (%rcx,%rax,8)
	movq      %r12, %r14
	movq      256(%rsp), %r12
	jmp       L00004E80
L00002EF6:
	negq      %rbx
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbp
	leaq      -24(%rbp), %r14
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbp, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        L00002F2D
L00002F1A:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002F26:
	movq      _avma@GOTPCREL(%rip), %rdx
L00002F2D:
	movq      %r14, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbp)
	movq      $-4611686018427387901, %rax
L00002F48:
	movq      %rax, -16(%rbp)
	movq      %rbx, -8(%rbp)
L00002F50:
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %r14, -8(%rcx,%rax,8)
	movq      %r12, %r14
	movq      %r15, %r12
	jmp       L00004E80
L00002F6E:
	movq      %rsi, %rdi
	call      _malloc
L00002F76:
	movq      %rax, %rbp
	movl      %ebx, (%r13)
	testl     %ebx, %ebx
	jne       L00002F9A
L00002F81:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00002F9A
L00002F8D:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00002F9A:
	testq     %rbp, %rbp
	movq      224(%rsp), %r13
	jne       L00002FB3
L00002FA7:
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002FB3:
	movq      %rbp, (%r12,%r14)
	movq      _s_var+8(%rip), %rcx
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
L00002FCE:
	addq      %r15, %rcx
	movq      %rcx, _s_var+8(%rip)
	addq      %r15, 248(%rsp)
	testq     %r15, %r15
	jle       L00004E80
L00002FE9:
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
	je        L00004E80
L0000302F:
	.align 4, 0x90
L00003030:
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
	jne       L00003030
L00003078:
	jmp       L00004E80
L0000307D:
	movq      $-1, %rax
	movl      $1, %ecx
	.align 4, 0x90
L00003090:
	movq      _var(%rip), %rdx
	movq      _s_var+8(%rip), %rsi
	addq      %rax, %rsi
	shlq      $4, %rsi
	movq      8(%rdx,%rsi), %rdx
	movq      %rdx, (%r12,%rcx,8)
	incq      %rcx
	decq      %rax
	cmpq      %r13, %rcx
	jl        L00003090
L000030B9:
	movq      %r12, 56(%r14)
	movq      _sp(%rip), %rax
	movq      _st(%rip), %rcx
	movq      %r14, -8(%rcx,%rax,8)
L000030D0:
	movq      240(%rsp), %r14
L000030D8:
	movq      224(%rsp), %r13
	movq      256(%rsp), %r12
	jmp       L00004E80
L000030ED:
	movq      %rsi, %rdi
	call      _malloc
L000030F5:
	movq      %rax, %r13
	movl      %ebp, (%r12)
	testl     %ebp, %ebp
	jne       L00003119
L00003100:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00003119
L0000310C:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00003119:
	testq     %r13, %r13
	movq      256(%rsp), %r12
	jne       L00003132
L00003126:
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003132:
	leaq      _s_var(%rip), %rax
	movq      %r13, (%r14,%rax)
	movq      _s_var+8(%rip), %rdx
	movq      240(%rsp), %r14
	movq      224(%rsp), %r13
L00003154:
	addq      %r15, %rdx
	movq      %rdx, _s_var+8(%rip)
	addq      %r15, 248(%rsp)
	movq      _sp(%rip), %rax
	subq      %r15, %rax
	movq      %rax, _sp(%rip)
	testq     %r15, %r15
	jle       L00004E80
L00003180:
	movq      %r14, %r15
	xorl      %ebp, %ebp
	jmp       L0000319A
L00003187:
	.align 4, 0x90
L00003190:
	incq      %rbp
	movq      _sp(%rip), %rax
L0000319A:
	leaq      1(%rbx,%rbp), %r14
	movq      _st(%rip), %rcx
	addq      %rbp, %rax
	movq      (%rcx,%rax,8), %rsi
	testq     %rsi, %rsi
	je        L000031C0
L000031B2:
	leaq      (%rbx,%rbp), %rdi
	xorl      %eax, %eax
	call      _pushlex
L000031BD:
	jmp       L00003202
L000031BF:
	.align 4, 0x90
L000031C0:
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
L00003202:
	testq     %r14, %r14
	jne       L00003190
L00003207:
	movq      %r15, %r14
	jmp       L00004E80
L0000320F:
	movq      %rsi, %rdi
	call      _malloc
L00003217:
	movq      %rax, %rbp
	movl      %ebx, (%r13)
	testl     %ebx, %ebx
	jne       L0000323B
L00003222:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L0000323B
L0000322E:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L0000323B:
	testq     %rbp, %rbp
	movq      224(%rsp), %r13
	jne       L00003254
L00003248:
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003254:
	movq      %r14, 264(%rsp)
	leaq      _s_lvars(%rip), %rax
	movq      %rbp, (%r12,%rax)
	movq      _s_lvars+8(%rip), %rbp
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
L0000327E:
	leaq      1(%rbp), %rax
	movq      %rax, _s_lvars+8(%rip)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L00003293:
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
L000032CE:
	jmp       L00004E80
L000032D3:
	movq      %rsi, %rdi
	call      _malloc
L000032DB:
	movq      %rax, %rbp
	movl      %ebx, (%r13)
	testl     %ebx, %ebx
	jne       L000032FF
L000032E6:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L000032FF
L000032F2:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L000032FF:
	testq     %rbp, %rbp
	movq      224(%rsp), %r13
	jne       L00003318
L0000330C:
	movl      $28, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003318:
	movq      %r14, 264(%rsp)
	leaq      _s_lvars(%rip), %rax
	movq      %rbp, (%r12,%rax)
	movq      _s_lvars+8(%rip), %rbp
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
L00003342:
	leaq      1(%rbp), %rax
	movq      %rax, _s_lvars+8(%rip)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _checkvalue
L00003357:
	movq      _lvars(%rip), %rax
	movq      %r15, (%rax,%rbp,8)
	incq      232(%rsp)
	xorl      %eax, %eax
	movq      %r15, %rdi
	call      _zerovalue
L00003374:
	jmp       L00004E80
L00003379:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       L00002E69
L00003388:
	incq      %rsi
	movq      $72057594037927935, %rax
	andq      %rax, %r8
	shlq      $3, %r8
	subq      %r8, %rdi
	movq      240(%rsp), %r14
	movq      256(%rsp), %r12
	.align 4, 0x90
L000033B0:
	movq      -16(%rcx,%rsi,8), %rax
	movq      %rax, -16(%rdi,%rsi,8)
	decq      %rsi
	cmpq      $1, %rsi
	jg        L000033B0
L000033C3:
	movq      %r11, %rcx
	jmp       L00002CB7
L000033CB:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      *16(%r15)
L000033EF:
	jmp       L00004E5E
L000033F4:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	call      *16(%r15)
L0000341D:
	jmp       L00004E5E
L00003422:
	movq      _sp(%rip), %rax
	leaq      -3(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rdi
	movq      -16(%rcx,%rax,8), %rsi
	movq      -8(%rcx,%rax,8), %rdx
	xorl      %eax, %eax
	call      *16(%r15)
L00003450:
	jmp       L00004E5E
L00003455:
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
L00003488:
	jmp       L00004E5E
L0000348D:
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
L000034C5:
	jmp       L00004E5E
L000034CA:
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
	jmp       L0000364A
L00003506:
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
	jmp       L0000364A
L0000354B:
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
	jmp       L0000364A
L0000359A:
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
	jmp       L00003646
L000035EC:
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
L00003646:
	movq      %r10, (%rsp)
L0000364A:
	xorl      %eax, %eax
	call      *16(%r15)
L00003650:
	jmp       L00004E5E
L00003655:
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
	jmp       L00003776
L000036D8:
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
L00003776:
	movq      208(%rsp), %rcx
	call      *16(%r15)
L00003782:
	jmp       L00004E5E
L00003787:
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
	jmp       L0000391C
L00003847:
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
L0000391C:
	movq      200(%rsp), %rcx
	call      *16(%r15)
L00003928:
	jmp       L00004E5E
L0000392D:
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
	jmp       L00003E43
L000039FE:
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
	jmp       L00003E43
L00003AEC:
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
	jmp       L00003E43
L00003BF7:
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
	jmp       L00003E43
L00003D11:
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
L00003E43:
	movq      200(%rsp), %rsi
	movq      160(%rsp), %r8
	movq      152(%rsp), %r9
	movq      208(%rsp), %rdx
	movq      168(%rsp), %rcx
	call      *16(%r15)
L00003E6F:
	jmp       L00004E5E
L00003E74:
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
L00003FDE:
	jmp       L00004E5E
L00003FE3:
	movq      %r11, %rcx
	jmp       L00002CB7
L00003FEB:
	cmpq      $1, %rax
	movq      $72057594037927935, %rax
	jne       L0000138D
L00003FFF:
	movq      %r12, %r8
	movq      8(%rcx), %r10
	movq      %r10, %rbp
	andq      %rax, %rbp
	leaq      0(,%rbp,8), %rax
	movq      %rdi, %r12
	subq      %rax, %r12
	cmpq      $2, %rbp
	jb        L00004163
L00004024:
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
	je        L00004138
L00004061:
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
	je        L00004126
L0000408F:
	movq      %r11, %rax
	notq      %rax
	leaq      (%rcx,%rax,8), %rax
	leaq      -8(%rdi), %rdx
	xorl      %r14d, %r14d
	cmpq      %rax, %rdx
	ja        L000040BC
L000040A5:
	leaq      -8(%rcx,%rsi,8), %rax
	addq      %rsi, %r11
	notq      %r11
	leaq      (%rdi,%r11,8), %rdx
	cmpq      %rdx, %rax
	movq      %rbp, %rdx
	jbe       L00004126
L000040BC:
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
L000040EC:
	movq      %rsi, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     LC000055C0(%rip), %xmm0
	movq      %xmm0, %rax
	movups    -8(%rcx,%rax,8), %xmm0
	movups    -24(%rcx,%rax,8), %xmm1
	subq      %rbp, %rax
	movups    %xmm0, -8(%rdi,%rax,8)
	movups    %xmm1, -24(%rdi,%rax,8)
	addq      $-4, %rsi
	cmpq      %rsi, %rbx
	jne       L000040EC
L00004123:
	movq      %r9, %r14
L00004126:
	cmpq      %r14, 208(%rsp)
	movq      240(%rsp), %r14
	je        L00004163
L00004138:
	movq      $72057594037927935, %rax
	andq      %rax, %r10
	shlq      $3, %r10
	subq      %r10, %rdi
	addq      $-8, %rdi
L00004150:
	movq      -8(%rcx,%rdx,8), %rax
	movq      %rax, (%rdi,%rdx,8)
	leaq      -1(%rdx), %rdx
	cmpq      $1, %rdx
	jg        L00004150
L00004163:
	movq      $144115188075855875, %rax
	leaq      -3(%rax), %rax
	orq       %rax, %rbp
	movq      %rbp, (%r12)
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r12, (%rax)
	movq      %r12, %rcx
	movq      %r8, %r12
	jmp       L00002CB7
L0000418D:
	negq      %r14
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      -24(%rbx), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	cmpq      $23, %rcx
	ja        L000041C4
L000041B1:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000041BD:
	movq      _avma@GOTPCREL(%rip), %rdx
L000041C4:
	movq      %r13, (%rdx)
	movq      $144115188075855875, %rax
	movq      %rax, -24(%rbx)
	movq      $-4611686018427387901, %rax
L000041DF:
	movq      %rax, -16(%rbx)
	movq      %r14, -8(%rbx)
	movq      208(%rsp), %rax
	movq      %r13, (%rax)
	movq      240(%rsp), %r14
	movq      224(%rsp), %r13
	jmp       L00002E7C
L00004207:
	incq      %rdx
	andq      %r12, %r8
	shlq      $3, %r8
	subq      %r8, %rbp
	movq      240(%rsp), %r14
L0000421C:
	movq      -16(%rbx,%rdx,8), %rax
	movq      %rax, -16(%rbp,%rdx,8)
	decq      %rdx
	cmpq      $1, %rdx
	jg        L0000421C
L0000422F:
	movq      %r11, %rbx
	jmp       L000013B9
L00004237:
	movq      _sp(%rip), %rax
	leaq      -1(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	xorl      %eax, %eax
	call      *16(%r15)
L0000425B:
	cltq      
	jmp       L00004E5E
L00004262:
	movq      _sp(%rip), %rax
	leaq      -2(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -16(%rcx,%rax,8), %rdi
	movq      -8(%rcx,%rax,8), %rsi
	xorl      %eax, %eax
	call      *16(%r15)
L0000428B:
	cltq      
	jmp       L00004E5E
L00004292:
	movq      _sp(%rip), %rax
	leaq      -3(%rax), %rcx
	movq      %rcx, _sp(%rip)
	movq      _st(%rip), %rcx
	movq      -24(%rcx,%rax,8), %rdi
	movq      -16(%rcx,%rax,8), %rsi
	movq      -8(%rcx,%rax,8), %rdx
	xorl      %eax, %eax
	call      *16(%r15)
L000042C0:
	cltq      
	jmp       L00004E5E
L000042C7:
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
L000042FA:
	cltq      
	jmp       L00004E5E
L00004301:
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
L00004339:
	cltq      
	jmp       L00004E5E
L00004340:
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
	jmp       L000044C0
L0000437C:
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
	jmp       L000044C0
L000043C1:
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
	jmp       L000044C0
L00004410:
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
	jmp       L000044BC
L00004462:
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
L000044BC:
	movq      %r10, (%rsp)
L000044C0:
	xorl      %eax, %eax
	call      *16(%r15)
L000044C6:
	cltq      
	jmp       L00004E5E
L000044CD:
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
	jmp       L000045EE
L00004550:
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
L000045EE:
	movq      208(%rsp), %rcx
	call      *16(%r15)
L000045FA:
	cltq      
	jmp       L00004E5E
L00004601:
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
	jmp       L00004796
L000046C1:
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
L00004796:
	movq      200(%rsp), %rcx
	call      *16(%r15)
L000047A2:
	cltq      
	jmp       L00004E5E
L000047A9:
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
	jmp       L00004CBF
L0000487A:
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
	jmp       L00004CBF
L00004968:
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
	jmp       L00004CBF
L00004A73:
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
	jmp       L00004CBF
L00004B8D:
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
L00004CBF:
	movq      200(%rsp), %rsi
	movq      160(%rsp), %r8
	movq      152(%rsp), %r9
	movq      208(%rsp), %rdx
	movq      168(%rsp), %rcx
	call      *16(%r15)
L00004CEB:
	cltq      
	jmp       L00004E5E
L00004CF2:
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
L00004E5C:
	cltq      
L00004E5E:
	movq      _sp(%rip), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, _sp(%rip)
	movq      _st(%rip), %rdx
	movq      %rax, (%rdx,%rcx,8)
	.align 4, 0x90
L00004E80:
	movq      288(%rsp), %rax
	incq      %rax
	movq      %rax, 288(%rsp)
	cmpq      %r12, %rax
	jl        L000013E0
L00004E9C:
	jmp       L00004ECF
L00004E9E:
	leaq      LC00005686(%rip), %rsi
	movl      $7, %edi
	xorl      %eax, %eax
	call      _pari_err
L00004EB1:
	movq      176(%rsp), %rcx
	movq      184(%rsp), %rax
	movq      %rax, _sp(%rip)
	movq      %rcx, _rp(%rip)
L00004ECF:
	decq      _s_trace+8(%rip)
	xorl      %eax, %eax
	movq      248(%rsp), %rdi
	movq      232(%rsp), %rsi
	call      _restore_vars
L00004EED:
	movq      216(%rsp), %rax
	movq      264(%rsp), %rdi
	testq     (%rdi), %rax
	je        L00004F07
L00004F02:
	call      _gunclone
L00004F07:
	addq      $296, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00004F19:
	.align 4, 0x90
# ----------------------
L00004F1C:
	.long	L000014F9-L00004F1C
	.long	L00001439-L00004F1C
	.long	L00001448-L00004F1C
	.long	L00001459-L00004F1C
	.long	L0000147D-L00004F1C
	.long	L000014ED-L00004F1C
	.long	L0000151B-L00004F1C
	.long	L00001527-L00004F1C
	.long	L000015A3-L00004F1C
	.long	L000015BD-L00004F1C
	.long	L00001618-L00004F1C
	.long	L0000163B-L00004F1C
	.long	L00001650-L00004F1C
	.long	L00001691-L00004F1C
	.long	L000016A0-L00004F1C
	.long	L000016AF-L00004F1C
	.long	L00001712-L00004F1C
	.long	L000018E9-L00004F1C
	.long	L00001973-L00004F1C
	.long	L00001B0E-L00004F1C
	.long	L00001B7F-L00004F1C
	.long	L00001C27-L00004F1C
	.long	L00001CB8-L00004F1C
	.long	L00001DED-L00004F1C
	.long	L00001E12-L00004F1C
	.long	L00001E9F-L00004F1C
	.long	L00001F2C-L00004F1C
	.long	L00001FFC-L00004F1C
	.long	L000020AC-L00004F1C
	.long	L00002249-L00004F1C
	.long	L00002267-L00004F1C
	.long	L00002290-L00004F1C
	.long	L000022BC-L00004F1C
	.long	L000022E7-L00004F1C
	.long	L00002310-L00004F1C
	.long	L00002419-L00004F1C
	.long	L0000249B-L00004F1C
	.long	L00002583-L00004F1C
	.long	L00002596-L00004F1C
	.long	L000025CB-L00004F1C
	.long	L000025F6-L00004F1C
	.long	L00002636-L00004F1C
	.long	L00002652-L00004F1C
	.long	L0000267F-L00004F1C
	.long	L000026C9-L00004F1C
	.long	L0000270D-L00004F1C
	.long	L0000278B-L00004F1C
	.long	L000027DB-L00004F1C
	.long	L0000285B-L00004F1C
	.long	L000028DB-L00004F1C
	.long	L00002941-L00004F1C
	.long	L00002998-L00004F1C
	.long	L000029C6-L00004F1C
	.long	L00002A91-L00004F1C
	.long	L00002AA0-L00004F1C
	.long	L00002C85-L00004F1C
	.long	L00002C9E-L00004F1C
# ----------------------
L00005000:
	.long	L00002305-L00005000
	.long	L000005F9-L00005000
	.long	L00000622-L00005000
	.long	L00000650-L00005000
	.long	L00000683-L00005000
	.long	L000006BB-L00005000
	.long	L000006F8-L00005000
	.long	L00000734-L00005000
	.long	L00000779-L00005000
	.long	L000007C8-L00005000
	.long	L0000081A-L00005000
	.long	L00000883-L00005000
	.long	L00000906-L00005000
	.long	L000009B5-L00005000
	.long	L00000A75-L00005000
	.long	L00000B5B-L00005000
	.long	L00000C2C-L00005000
	.long	L00000D1A-L00005000
	.long	L00000E25-L00005000
	.long	L00000F3F-L00005000
	.long	L000010A2-L00005000
# ----------------------
L00005054:
	.long	L000022DA-L00005054
	.long	L00004237-L00005054
	.long	L00004262-L00005054
	.long	L00004292-L00005054
	.long	L000042C7-L00005054
	.long	L00004301-L00005054
	.long	L00004340-L00005054
	.long	L0000437C-L00005054
	.long	L000043C1-L00005054
	.long	L00004410-L00005054
	.long	L00004462-L00005054
	.long	L000044CD-L00005054
	.long	L00004550-L00005054
	.long	L00004601-L00005054
	.long	L000046C1-L00005054
	.long	L000047A9-L00005054
	.long	L0000487A-L00005054
	.long	L00004968-L00005054
	.long	L00004A73-L00005054
	.long	L00004B8D-L00005054
	.long	L00004CF2-L00005054
# ----------------------
L000050A8:
	.long	L00002285-L000050A8
	.long	L000033CB-L000050A8
	.long	L000033F4-L000050A8
	.long	L00003422-L000050A8
	.long	L00003455-L000050A8
	.long	L0000348D-L000050A8
	.long	L000034CA-L000050A8
	.long	L00003506-L000050A8
	.long	L0000354B-L000050A8
	.long	L0000359A-L000050A8
	.long	L000035EC-L000050A8
	.long	L00003655-L000050A8
	.long	L000036D8-L000050A8
	.long	L00003787-L000050A8
	.long	L00003847-L000050A8
	.long	L0000392D-L000050A8
	.long	L000039FE-L000050A8
	.long	L00003AEC-L000050A8
	.long	L00003BF7-L000050A8
	.long	L00003D11-L000050A8
	.long	L00003E74-L000050A8
# ----------------------
L000050FC:
	.long	L00002285-L000050FC
	.long	L000033CB-L000050FC
	.long	L000033F4-L000050FC
	.long	L00003422-L000050FC
	.long	L00003455-L000050FC
	.long	L0000348D-L000050FC
	.long	L000034CA-L000050FC
	.long	L00003506-L000050FC
	.long	L0000354B-L000050FC
	.long	L0000359A-L000050FC
	.long	L000035EC-L000050FC
	.long	L00003655-L000050FC
	.long	L000036D8-L000050FC
	.long	L00003787-L000050FC
	.long	L00003847-L000050FC
	.long	L0000392D-L000050FC
	.long	L000039FE-L000050FC
	.long	L00003AEC-L000050FC
	.long	L00003BF7-L000050FC
	.long	L00003D11-L000050FC
	.long	L00003E74-L000050FC
_shallowcopy:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $56, %rsp
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
	jne       L00005432
L000051BA:
	cmpq      %r14, %rax
	jae       L000051D2
L000051BF:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000051CB:
	movq      _bot@GOTPCREL(%rip), %r9
L000051D2:
	movq      %r15, %r8
	movq      %rbp, (%r8)
	movq      48(%rsp), %rax
	movq      (%rax), %rax
	movq      $-72057594037927937, %rcx
	andq      %rcx, %rax
	movq      %rax, (%rbp)
	movq      %rbp, 8(%rsp)
	cmpq      $2, %r14
	jb        L000055A8
L00005200:
	movdqa    LC000055D0(%rip), %xmm2
	movq      %r14, %rdi
	.align 4, 0x90
L00005210:
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
	jae       L0000528E
L00005244:
	movq      %rdi, 32(%rsp)
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r9, %rbx
	movq      %rsi, 40(%rsp)
	movq      %rdx, %r13
	call      _pari_err
L00005260:
	movq      %r13, %rdx
	movq      40(%rsp), %rsi
	movq      32(%rsp), %rdi
	movdqa    LC000055D0(%rip), %xmm2
	movq      %rbx, %r9
	movq      $72057594037927935, %r13
	movq      16(%rsp), %r14
	movq      _avma@GOTPCREL(%rip), %r8
L0000528E:
	decq      %rdi
	movq      %rsi, (%r8)
	movq      (%r12), %rax
	movq      $-72057594037927937, %rcx
	andq      %rcx, %rax
	movq      %rax, (%rsi)
	cmpq      $2, %r15
	jb        L00005414
L000052B2:
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
	je        L000053EA
L000052DE:
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
	jne       L00005315
L00005310:
	xorl      %r10d, %r10d
	jmp       L00005347
L00005315:
	movq      %rdi, %rax
	notq      %rax
	leaq      (%r12,%rax,8), %r9
	leaq      -8(%rbp), %rax
	cmpq      %r9, %rax
	ja        L00005354
L00005328:
	leaq      -8(%r12,%rcx,8), %rax
	addq      %rcx, %rdi
	notq      %rdi
	leaq      (%rbp,%rdi,8), %rdi
	cmpq      %rdi, %rax
	ja        L00005354
L0000533D:
	xorl      %r10d, %r10d
	movq      _bot@GOTPCREL(%rip), %r9
L00005347:
	movq      32(%rsp), %rdi
	movq      %rsi, %rbx
	jmp       L000053E0
L00005354:
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
L000053A0:
	movq      %rcx, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     %xmm2, %xmm0
	movq      %xmm0, %rax
	movdqu    -8(%r12,%rax,8), %xmm0
	movups    -24(%r12,%rax,8), %xmm1
	subq      %r15, %rax
	movdqu    %xmm0, -8(%rbp,%rax,8)
	movups    %xmm1, -24(%rbp,%rax,8)
	addq      $-4, %rcx
	cmpq      %rcx, %rsi
	jne       L000053A0
L000053D7:
	movq      (%rsp), %r15
	movq      32(%rsp), %rdi
L000053E0:
	cmpq      %r10, %rdx
	movq      40(%rsp), %rsi
	je        L00005414
L000053EA:
	andq      %r13, %rbx
	shlq      $3, %rbx
	subq      %rbx, %rbp
	addq      $-8, %rbp
	.align 4, 0x90
L00005400:
	movq      -8(%r12,%r15,8), %rax
	movq      %rax, (%rbp,%r15,8)
	leaq      -1(%r15), %r15
	cmpq      $1, %r15
	jg        L00005400
L00005414:
	movq      %rdi, %rax
	subq      %r14, %rax
	movq      24(%rsp), %rcx
	movq      %rsi, (%rcx,%rax,8)
	cmpq      $1, %rdi
	jg        L00005210
L0000542D:
	jmp       L000055A8
L00005432:
	cmpq      %r14, %rax
	jae       L00005443
L00005437:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00005443:
	movq      %rbp, (%r15)
	movq      $-72057594037927937, %rax
	movq      48(%rsp), %rcx
	andq      (%rcx), %rax
	movq      %rax, (%rbp)
	movq      %rbp, 8(%rsp)
	cmpq      $2, %r14
	jb        L000055A8
L0000546B:
	andq      %rbx, %r13
	movq      %r13, %rdx
	negq      %rdx
	cmpq      $-3, %rdx
	movq      $-2, %rsi
	movq      $-2, %rax
	cmovg     %rdx, %rax
	addq      %r13, %rax
	cmpq      $-1, %rax
	je        L0000556B
L00005497:
	incq      %rax
	cmpq      $-3, %rdx
	cmovg     %rdx, %rsi
	xorl      %edi, %edi
	movq      %rax, %r9
	andq      $-4, %r9
	je        L00005566
L000054B1:
	movq      %rsi, %rdi
	notq      %rdi
	movq      48(%rsp), %rcx
	leaq      (%rcx,%rdi,8), %rbp
	movq      24(%rsp), %rcx
	leaq      -8(%rcx), %rcx
	xorl      %edi, %edi
	cmpq      %rbp, %rcx
	ja        L000054EF
L000054D0:
	movq      48(%rsp), %rcx
	leaq      -8(%rcx,%r13,8), %rcx
	addq      %r13, %rsi
	notq      %rsi
	movq      24(%rsp), %rbp
	leaq      (%rbp,%rsi,8), %rsi
	cmpq      %rsi, %rcx
	jbe       L00005566
L000054EF:
	movq      %r14, %rsi
	subq      %r9, %rsi
	cmpq      $-3, %rdx
	movq      $-2, %rcx
	cmovg     %rdx, %rcx
	leaq      1(%rcx,%r13), %rdx
	andq      $-4, %rdx
	movdqa    LC000055D0(%rip), %xmm0
	.align 4, 0x90
L00005520:
	movq      %r13, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm0, %xmm1
	movq      %xmm1, %rcx
	movq      48(%rsp), %rdi
	movups    -8(%rdi,%rcx,8), %xmm1
	movdqu    -24(%rdi,%rcx,8), %xmm2
	subq      %r14, %rcx
	movq      24(%rsp), %rdi
	movups    %xmm1, -8(%rdi,%rcx,8)
	movdqu    %xmm2, -24(%rdi,%rcx,8)
	addq      $-4, %r13
	addq      $-4, %rdx
	jne       L00005520
L00005560:
	movq      %rsi, %r14
	movq      %r9, %rdi
L00005566:
	cmpq      %rdi, %rax
	je        L000055A8
L0000556B:
	notq      %rbx
	movq      $2233785415175766016, %rax
	orq       %rbx, %rax
	movq      24(%rsp), %rcx
	leaq      (%rcx,%rax,8), %rax
	.align 4, 0x90
L00005590:
	movq      48(%rsp), %rcx
	movq      -8(%rcx,%r14,8), %rcx
	movq      %rcx, (%rax,%r14,8)
	leaq      -1(%r14), %r14
	cmpq      $1, %r14
	jg        L00005590
L000055A8:
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
LC000055C0:
	.long	-1
	.long	-1
	.long	-2
	.long	-1
	.align 4
LC000055D0:
	.long	-1
	.long	-1
	.long	-2
	.long	-1
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC000055E0:
	.string	"closure_eval, stack underflow"
LC000055FE:
	.string	"eval: recovering %ld bytes"
LC00005619:
	.string	"_[_]: not a vector"
LC0000562C:
	.string	"_[_,_]: not a matrix"
LC00005641:
	.string	"_[,_]: not a matrix"
LC00005655:
	.string	"_[_,]: not a matrix"
LC00005669:
	.string	"a 0x0 matrix has no elements"
LC00005686:
	.string	"functions with more than 20 parameters"
LC000056AD:
	.string	"too many parameters in user-defined function call"
LC000056DF:
	.string	"deep recursion"
LC000056EE:
	.string	"missing mandatory argument"
LC00005709:
	.string	"argument type not implemented"
LC00005727:
	.string	"lg()"
LC0000572C:
	.string	"gtos expected an integer, got '%Ps'"
LC00005750:
	.string	"t_INT-->long assignment"
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
.zerofill __DATA,__bss,_s_var,32,4
# ----------------------
.zerofill __DATA,__bss,_var,8,3
# ----------------------
.zerofill __DATA,__bss,_s_lvars,32,3
# ----------------------
.zerofill __DATA,__bss,_lvars,8,3
# ----------------------
.zerofill __DATA,__bss,_s_trace,32,5
# ----------------------
.zerofill __DATA,__bss,_trace,8,3
# ----------------------

.subsections_via_symbols
