	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_minim_alloc
_minim_alloc:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
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
	jae       L00000060
L00000054:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000060:
	movq      %rbx, %r12
	negq      %r12
	movq      %rbp, (%r13)
	movq      %rbx, %rax
	shrq      $56, %rax
	je        L00000086
L00000073:
	leaq      LC00003928(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000086:
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
	jae       L000000C6
L000000BA:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000000C6:
	movq      %rbp, (%r13)
	movq      %rbp, (%r14)
	call      _init_dalloc
L000000D2:
	movq      %r15, %rdi
	call      _dalloc
L000000DA:
	movq      16(%rsp), %rcx
	movq      %rax, (%rcx)
	movq      %r15, %rdi
	call      _dalloc
L000000EA:
	movq      24(%rsp), %rcx
	movq      %rax, (%rcx)
	movq      %r15, %rdi
	call      _dalloc
L000000FA:
	movq      32(%rsp), %rcx
	movq      %rax, (%rcx)
	movl      $1, %ebp
	cmpq      $2, %rbx
	jl        L00000127
L0000010D:
	.align 4, 0x90
L00000110:
	movq      %r15, %rdi
	call      _dalloc
L00000118:
	movq      (%r14), %rcx
	movq      %rax, (%rcx,%rbp,8)
	incq      %rbp
	cmpq      %rbp, %rbx
	jne       L00000110
L00000127:
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
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	movq      %r8, %r15
	movq      %rdx, %rbx
	movq      %rsi, %r14
	movq      %rdi, %r12
	cmpq      $2, %rcx
	je        L0000017F
L0000015B:
	cmpq      $1, %rcx
	jne       L0000024F
L00000165:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	movl      $1, %ecx
	movq      %r12, %rdi
	movq      %r14, %rsi
	jmp       L0000025F
L0000017F:
	movq      (%r12), %rax
	shrq      $57, %rax
	cmpq      $19, %rax
	je        L000001A0
L0000018D:
	leaq      LC00003920(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L000001A0:
	movq      $-1, %rdx
	testq     %rbx, %rbx
	je        L00000226
L000001AC:
	movq      $-144115188075855872, %rax
	andq      (%rbx), %rax
	movq      $144115188075855872, %rcx
	cmpq      %rcx, %rax
	je        L000001DB
L000001C8:
	leaq      LC00003920(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L000001DB:
	movq      8(%rbx), %rax
	xorl      %edx, %edx
	movq      %rax, %r13
	sarq      $62, %r13
	je        L00000226
L000001EA:
	movq      16(%rbx), %rbx
	movq      $72057594037927932, %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        L00000206
L00000201:
	testq     %rbx, %rbx
	jns       L00000219
L00000206:
	leaq      LC00003A04(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000219:
	movq      %rbx, %rdx
	negq      %rdx
	testq     %r13, %r13
	cmovg     %rbx, %rdx
L00000226:
	xorl      %r8d, %r8d
	movq      %r12, %rdi
	movq      %r14, %rsi
	movq      %r15, %rcx
	call      _fincke_pohst
L00000237:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L00000282
L0000023F:
	leaq      LC00003920(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $10, %edi
	jmp       L0000027B
L0000024F:
	testq     %rcx, %rcx
	jne       L0000026D
L00000254:
	xorl      %ecx, %ecx
	movq      %r12, %rdi
	movq      %r14, %rsi
	movq      %rbx, %rdx
L0000025F:
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       _minim0
L0000026D:
	leaq      LC00003920(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $6, %edi
L0000027B:
	xorl      %eax, %eax
	call      _pari_err
L00000282:
	movq      %rbx, %rax
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
L0000028F:
	.align 4, 0x90
_minim0:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $328, %rsp
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
	jne       L00000368
L00000302:
	cmpq      $1, 168(%rsp)
	je        L0000037B
L0000030D:
	cmpq      $1, 168(%rsp)
	jbe       L0000037B
L00000318:
	movq      8(%r15), %rax
	movq      (%rax), %rax
	andq      %r12, %rax
	movq      168(%rsp), %rcx
L0000032A:
	movq      %rcx, %rdx
	leaq      -1(%rdx), %rcx
	movq      %rax, %rsi
	.align 4, 0x90
L00000340:
	cmpq      $2, %rsi
	jl        L00000360
L00000346:
	movq      -8(%r15,%rdx,8), %rdi
	movq      -8(%rdi,%rsi,8), %rdi
	decq      %rsi
	movq      (%rdi), %rdi
	andq      %r13, %rdi
	cmpq      %rbx, %rdi
	je        L00000340
L0000035E:
	jmp       L00000368
L00000360:
	cmpq      $2, %rcx
	jge       L0000032A
L00000366:
	jmp       L0000037B
L00000368:
	leaq      LC0000392D(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000037B:
	testq     %rbp, %rbp
	je        L000003B0
L00000380:
	movq      %rbp, %rdi
	call      _gfloor
L00000388:
	movq      %rax, 176(%rsp)
	movq      (%rax), %rax
	andq      %r13, %rax
	cmpq      %rbx, %rax
	je        L000003C2
L0000039B:
	leaq      LC00003936(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L000003AE:
	jmp       L000003C2
L000003B0:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 176(%rsp)
L000003C2:
	cmpq      $0, 216(%rsp)
	movl      $1, 156(%rsp)
	je        L00000414
L000003D8:
	movq      216(%rsp), %rax
	movq      (%rax), %rax
	andq      %r13, %rax
	movl      $0, 156(%rsp)
	cmpq      %rbx, %rax
	je        L00000414
L000003F6:
	leaq      LC00003936(%rip), %rsi
	movl      $0, 156(%rsp)
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000414:
	movq      %r13, %rdx
	xorl      %r13d, %r13d
	cmpq      $4, %r14
	jbe       L0000044D
L00000420:
	movq      %r14, 192(%rsp)
	leaq      LC00003936(%rip), %rsi
	xorl      %eax, %eax
	movq      %rax, 160(%rsp)
	movl      $6, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000445:
	xorl      %r13d, %r13d
	jmp       L000006BC
L0000044D:
	leaq      L000028E8(%rip), %rax
	movslq    (%rax,%r14,4), %rcx
	movq      %r14, 192(%rsp)
	addq      %rax, %rcx
	xorl      %eax, %eax
	movq      %rax, 160(%rsp)
	jmp       *%rcx
L0000046F:
	movq      176(%rsp), %rax
	movq      8(%rax), %rax
	movq      %rax, %rbx
	sarq      $62, %rbx
	je        L000005A4
L00000488:
	movq      176(%rsp), %rcx
	movq      16(%rcx), %r14
	movq      $72057594037927935, %rcx
	leaq      -3(%rcx), %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        L000004B0
L000004AB:
	testq     %r14, %r14
	jns       L000004C3
L000004B0:
	leaq      LC00003A04(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L000004C3:
	movq      %r14, %rcx
	negq      %rcx
	testq     %rbx, %rbx
	cmovg     %r14, %rcx
	testq     %rcx, %rcx
	jle       L000005A4
L000004D9:
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
	jae       L0000051C
L00000510:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000051C:
	movq      %r13, (%rbp)
	movq      $72057594037927935, %rax
	cmpq      %rax, %rbx
	jbe       L00000542
L0000052F:
	leaq      LC00003928(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000542:
	movq      $3170534137668829184, %rax
	orq       %rax, %rbx
	movq      %rbx, (%r13)
	movq      160(%rsp), %rax
	leaq      0(,%rax,8), %rsi
	subq      %rsi, %r14
	movq      %r14, %rdi
	call      ___bzero
L0000056E:
	movq      192(%rsp), %rax
	cmpq      $4, %rax
	jne       L00001085
L00000580:
	movl      $1, %esi
	movq      176(%rsp), %rdi
	call      _shifti
L00000592:
	movq      %rax, %rcx
	movq      $72057594037927935, %r12
	jmp       L00001097
L000005A4:
	movq      _avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -8(%rax), %r13
	subq      (%rcx), %rax
	cmpq      $7, %rax
	ja        L000005CE
L000005C2:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000005CE:
	movq      %r13, (%rbx)
	movq      $3170534137668829184, %rax
	incq      %rax
	movq      %rax, (%r13)
	jmp       L000027BB
L000005E7:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -32(%rax), %r13
	subq      (%rcx), %rax
	cmpq      $31, %rax
	ja        L00000612
L00000606:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000612:
	movq      %r13, (%rbp)
	movq      $2449958197289549825, %rax
	leaq      3(%rax), %rax
	jmp       L000006AE
L00000629:
	movq      176(%rsp), %rax
	movq      (%rax), %rax
	andq      %rdx, %rax
	movq      $144115188075855872, %rcx
	cmpq      %rcx, %rax
	jne       L00000671
L00000646:
	movq      $4611686018427387904, %rax
	movq      176(%rsp), %rcx
	cmpq      %rax, 8(%rcx)
	jae       L00000671
L0000065E:
	leaq      LC0000393D(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000671:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r13
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000069C
L00000690:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000069C:
	movq      %r13, (%rbp)
	movq      $2449958197289549825, %rax
	leaq      2(%rax), %rax
L000006AE:
	movq      %rax, (%r13)
	xorl      %eax, %eax
	movq      %rax, 160(%rsp)
L000006BC:
	movq      $2738188573441261568, %r14
	movq      168(%rsp), %rbp
	cmpq      $1, %rbp
	jne       L00000708
L000006D4:
	movq      192(%rsp), %rcx
	leaq      -3(%rcx), %rax
	cmpq      $2, %rax
	jb        L000027BB
L000006EA:
	cmpq      $2, %rcx
	jne       L00000CAA
L000006F4:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      96(%rsp), %rcx
	movq      %rcx, (%rax)
	jmp       L000021E0
L00000708:
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
L0000074B:
	movq      (%r13), %rax
	movq      %rax, 208(%rsp)
	movq      %r15, %rdi
	call      _lllgramint
L0000075F:
	movq      %rax, %rbx
	movq      (%rbx), %rax
	andq      %r12, %rax
	cmpq      %rbp, %rax
	je        L00000780
L0000076D:
	leaq      LC00003951(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000780:
	movq      %r14, 80(%rsp)
	movq      %r15, %rdi
	movq      %rbx, %rsi
	movq      %rbx, 56(%rsp)
	call      _qf_apply_ZM
L00000795:
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
	jae       L000007F5
L000007E9:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000007F5:
	movq      $-72057594037927936, %rax
	movq      %r14, (%r13)
	leaq      -1(%rax), %rcx
	movq      %rcx, 88(%rsp)
	movq      (%rbx), %rax
	andq      %rcx, %rax
	movq      %rax, (%r14)
	movq      %r14, 232(%rsp)
	cmpq      $2, %rbp
	jb        L000008F0
L00000827:
	movq      %rbp, %r13
	.align 4, 0x90
L00000830:
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
	jae       L00000876
L0000086A:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000876:
	decq      %r13
	movq      %r14, (%r12)
	movq      %rbp, %rax
	movq      $2594073385365405696, %rcx
	orq       %rcx, %rax
	movq      %rax, (%r14)
	cmpq      $2, %rbp
	jb        L000008BA
L00000896:
	addq      $-8, %rbx
	.align 4, 0x90
L000008A0:
	movq      -8(%r15,%rbp,8), %rdi
	decq      %rbp
	call      _gtofp
L000008AD:
	movq      %rax, (%rbx)
	addq      $-8, %rbx
	cmpq      $1, %rbp
	jg        L000008A0
L000008BA:
	movq      %r13, %rax
	movq      256(%rsp), %rbp
	subq      %rbp, %rax
	movq      248(%rsp), %rcx
	movq      %r14, (%rcx,%rax,8)
	cmpq      $1, %r13
	movq      $72057594037927935, %r12
	movq      240(%rsp), %rbx
	jg        L00000830
L000008F0:
	movq      %rbp, 256(%rsp)
	movq      232(%rsp), %rdi
	call      _qfgaussred_positive
L00000905:
	movq      %rax, %r13
	movq      %r13, 312(%rsp)
	testq     %r13, %r13
	jne       L00000AAB
L00000919:
	movq      %rbx, %rdi
	call      _qfgaussred_positive
L00000921:
	movq      %rax, %rbp
	movq      %rbp, 232(%rsp)
	movq      %rbp, 312(%rsp)
	testq     %rbp, %rbp
	movq      $72057594037927935, %rbx
	jne       L00000956
L00000943:
	leaq      LC0000396F(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000956:
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
	jae       L000009A7
L0000099B:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000009A7:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %r13, (%rax)
	movq      (%rbp), %rax
	andq      88(%rsp), %rax
	movq      %rax, (%r13)
	cmpq      $2, 240(%rsp)
	jb        L00000AA3
L000009CD:
	movq      240(%rsp), %r12
	.align 4, 0x90
L000009E0:
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
	jae       L00000A30
L00000A24:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000A30:
	decq      %r12
	movq      _avma@GOTPCREL(%rip), %rax
	movq      %rbx, (%rax)
	movq      %r14, %rax
	movq      $2594073385365405696, %rcx
	orq       %rcx, %rax
	movq      %rax, (%rbx)
	cmpq      $2, %r14
	jb        L00000A7A
L00000A56:
	addq      $-8, %r15
	.align 4, 0x90
L00000A60:
	movq      -8(%rbp,%r14,8), %rdi
	decq      %r14
	call      _gtofp
L00000A6D:
	movq      %rax, (%r15)
	addq      $-8, %r15
	cmpq      $1, %r14
	jg        L00000A60
L00000A7A:
	movq      %r12, %rax
	subq      240(%rsp), %rax
	movq      224(%rsp), %rcx
	movq      %rbx, (%rcx,%rax,8)
	cmpq      $1, %r12
	movq      232(%rsp), %rbp
	jg        L000009E0
L00000AA3:
	movq      %r13, 312(%rsp)
L00000AAB:
	movq      168(%rsp), %rax
	leaq      -1(%rax), %rcx
	cmpq      $2, %rax
	jb        L00000B60
L00000AC1:
	movq      %rcx, %r14
	movq      296(%rsp), %rax
	movq      %rax, 240(%rsp)
	movq      272(%rsp), %r12
	movl      $1, %ebp
	xorl      %r15d, %r15d
	jmp       L00000B01
L00000AE6:
	.align 4, 0x90
L00000AF0:
	movq      %rcx, %r14
	incq      %r15
	incq      %rbp
	movq      312(%rsp), %r13
L00000B01:
	movq      (%r13,%rbp,8), %rax
	movq      (%rax,%rbp,8), %rdi
	call      _rtodbl
L00000B0F:
	movq      240(%rsp), %rax
	movsd     %xmm0, (%rax,%rbp,8)
	cmpq      $2, %rbp
	movl      $0, %ebx
	jl        L00000B58
L00000B27:
	.align 4, 0x90
L00000B30:
	movq      312(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	movq      8(%rax,%rbx,8), %rdi
	call      _rtodbl
L00000B46:
	movq      8(%r12,%rbx,8), %rax
	movsd     %xmm0, (%rax,%rbp,8)
	incq      %rbx
	cmpq      %rbx, %r15
	jne       L00000B30
L00000B58:
	movq      %r14, %rcx
	cmpq      %rcx, %rbp
	jl        L00000AF0
L00000B60:
	cmpq      $2, 192(%rsp)
	movq      _avma@GOTPCREL(%rip), %r13
	movq      %r13, %r12
	movq      $72057594037927935, %r14
	je        L00000BE2
L00000B7F:
	movq      %rcx, %rbx
	movq      176(%rsp), %rdx
	movq      (%rdx), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $288230376151711744, %rcx
	cmpq      %rcx, %rax
	movq      %rdx, %rdi
	je        L00000D08
L00000BB0:
	movq      $144115188075855872, %rcx
	cmpq      %rcx, %rax
	movq      %rbx, %rcx
	jne       L00000CED
L00000BC6:
	movq      $4611686018427387904, %rax
	movq      176(%rsp), %rdx
	cmpq      %rax, 8(%rdx)
	jae       L00000CED
L00000BE2:
	movq      %rcx, %r15
	movl      $1, %eax
	subq      256(%rsp), %rax
	movq      248(%rsp), %rbx
	movq      (%rbx,%rax,8), %rax
	movq      8(%rax), %rdi
	call      _rtodbl
L00000C07:
	movapd    %xmm0, %xmm1
	movq      168(%rsp), %r13
	cmpq      $3, %r13
	jae       L00000C1F
L00000C19:
	movapd    %xmm1, %xmm0
	jmp       L00000C6D
L00000C1F:
	movq      200(%rsp), %rcx
	andq      %r14, %rcx
	movl      $2, %eax
	subq      %rcx, %rax
	leaq      (%rbx,%rax,8), %rbx
	movl      $1, %ebp
	.align 4, 0x90
L00000C40:
	movsd     %xmm1, 256(%rsp)
	movq      -8(%rbx,%rbp,8), %rax
	movq      8(%rax,%rbp,8), %rdi
	call      _rtodbl
L00000C58:
	minsd     256(%rsp), %xmm0
	incq      %rbp
	cmpq      %r15, %rbp
	movapd    %xmm0, %xmm1
	jl        L00000C40
L00000C6D:
	movsd     %xmm0, 256(%rsp)
	movq      %r15, %rbx
	call      _dbltor
L00000C7E:
	movq      %rax, %rdi
	call      _roundr
L00000C86:
	movsd     256(%rsp), %xmm1
	movq      %rax, 176(%rsp)
	movsd     LC000038D8(%rip), %xmm0
	movsd     %xmm0, 200(%rsp)
	jmp       L00000D26
L00000CAA:
	cmpq      $1, %rcx
	movq      _avma@GOTPCREL(%rip), %rbp
	jne       L0000103C
L00000CBB:
	movq      96(%rsp), %rcx
	movq      %rcx, (%rbp)
	leaq      -8(%rcx), %r13
	movq      _bot@GOTPCREL(%rip), %rax
	subq      (%rax), %rcx
	cmpq      $7, %rcx
	ja        L00000CE4
L00000CD8:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000CE4:
	movq      %r13, (%rbp)
	jmp       L00002277
L00000CED:
	movq      %rcx, %rbx
	movq      (%r12), %rbp
	movq      176(%rsp), %rdi
	call      _gtofp
L00000D01:
	movq      %rax, %rdi
	movq      %rbp, (%r12)
L00000D08:
	call      _rtodbl
L00000D0D:
	movapd    %xmm0, %xmm1
	xorpd     %xmm0, %xmm0
	movsd     %xmm0, 200(%rsp)
	movq      168(%rsp), %r13
L00000D26:
	movsd     LC000038E0(%rip), %xmm0
	mulsd     %xmm1, %xmm0
	movsd     %xmm0, 248(%rsp)
	ucomisd   %xmm1, %xmm0
	jne       L00000D56
L00000D41:
	jp        L00000D56
L00000D43:
	leaq      LC00003936(%rip), %rsi
	movl      $10, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000D56:
	xorl      %eax, %eax
	movq      %rax, 112(%rsp)
	movq      192(%rsp), %rax
	cmpq      $2, %rax
	jne       L00000D9E
L00000D6B:
	movq      _bot@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      176(%rsp), %rbp
	cmpq      %rax, %rbp
	movq      %rbx, %r10
	jae       L00000E95
L00000D89:
	movq      %rbp, 240(%rsp)
	movq      208(%rsp), %rbx
	jmp       L000010F6
L00000D9E:
	testq     %rax, %rax
	movq      %rbx, %r10
	jne       L0000102E
L00000DAA:
	movl      $200, %edx
	cmpl      $0, 156(%rsp)
	jne       L00000E38
L00000DB9:
	movq      216(%rsp), %rax
	movq      8(%rax), %rax
	xorl      %edx, %edx
	movq      %rax, %rbx
	sarq      $62, %rbx
	je        L00000E38
L00000DD0:
	movq      216(%rsp), %rcx
	movq      16(%rcx), %r15
	leaq      -3(%r14), %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        L00000DEE
L00000DE9:
	testq     %r15, %r15
	jns       L00000E07
L00000DEE:
	leaq      LC00003A04(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r10, %rbp
	call      _pari_err
L00000E04:
	movq      %rbp, %r10
L00000E07:
	movq      %r15, %rax
	negq      %rax
	testq     %rbx, %rbx
	cmovg     %r15, %rax
	testq     %rax, %rax
	movq      %rax, %rbx
	jns       L00000E35
L00000E1C:
	leaq      LC00003996(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	movq      %r10, %rbp
	call      _pari_err
L00000E32:
	movq      %rbp, %r10
L00000E35:
	movq      %rbx, %rdx
L00000E38:
	movq      %rdx, 160(%rsp)
	leaq      1(%rdx), %rax
	movq      (%r12), %rcx
	notq      %rdx
	leaq      (%rcx,%rdx,8), %rbx
	movq      _bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rcx
	shrq      $3, %rcx
	cmpq      %rax, %rcx
	jae       L00000E74
L00000E62:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r10, %r14
	call      _pari_err
L00000E71:
	movq      %r14, %r10
L00000E74:
	movq      %rbx, (%r12)
	movq      %rbx, 304(%rsp)
	xorl      %eax, %eax
	movq      %rax, 112(%rsp)
	movsd     248(%rsp), %xmm4
	jmp       L00001230
L00000E95:
	movq      208(%rsp), %rbx
	cmpq      %rbp, %rbx
	jbe       L000010E4
L00000EA6:
	movq      _top@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rbp
	jae       L000010EE
L00000EB6:
	movq      8(%rbp), %r11
	movq      %r11, %rax
	andq      %r14, %rax
	leaq      0(,%rax,8), %rdx
	movq      %rbx, %r13
	subq      %rdx, %r13
	cmpq      $2, %rax
	jb        L00001003
L00000ED8:
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
	je        L00000FD9
L00000F14:
	movq      %rbp, %r15
	incq      %rdx
	cmpq      $-3, %rcx
	cmovg     %rcx, %r14
	xorl      %r9d, %r9d
	movq      %rdx, %r8
	andq      $-4, %r8
	movq      %rax, %rdi
	je        L00000FD1
L00000F35:
	movq      %r14, %rdi
	notq      %rdi
	movq      %r10, %rbp
	leaq      (%r15,%rdi,8), %r10
	leaq      -8(%rbx), %rdi
	xorl      %r9d, %r9d
	cmpq      %r10, %rdi
	movq      %rbp, %r10
	ja        L00000F68
L00000F51:
	leaq      -8(%r15,%rsi,8), %rdi
	addq      %rsi, %r14
	notq      %r14
	leaq      (%rbx,%r14,8), %rbp
	cmpq      %rbp, %rdi
	movq      %rax, %rdi
	jbe       L00000FD1
L00000F68:
	movq      %rax, %rdi
	subq      %r8, %rdi
	cmpq      $-3, %rcx
	movq      $-2, %rbp
	cmovg     %rcx, %rbp
	leaq      1(%rbp,%rsi), %rbp
	andq      $-4, %rbp
	movdqa    LC00003910(%rip), %xmm0
	movq      %rbx, %rcx
L00000F91:
	movq      %rsi, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm0, %xmm1
	movq      %xmm1, %rbx
	movupd    -8(%r15,%rbx,8), %xmm1
	movdqu    -24(%r15,%rbx,8), %xmm2
	subq      %rax, %rbx
	movupd    %xmm1, -8(%rcx,%rbx,8)
	movdqu    %xmm2, -24(%rcx,%rbx,8)
	addq      $-4, %rsi
	addq      $-4, %rbp
	jne       L00000F91
L00000FCB:
	movq      %rcx, %rbx
	movq      %r8, %r9
L00000FD1:
	cmpq      %r9, %rdx
	movq      %r15, %rbp
	je        L00001003
L00000FD9:
	notq      %r11
	movq      $2233785415175766016, %rdx
	orq       %r11, %rdx
	leaq      (%rbx,%rdx,8), %rcx
	.align 4, 0x90
L00000FF0:
	movq      -8(%rbp,%rdi,8), %rdx
	movq      %rdx, (%rcx,%rdi,8)
	leaq      -1(%rdi), %rdi
	cmpq      $1, %rdi
	jg        L00000FF0
L00001003:
	movq      $144115188075855872, %rcx
	orq       %rcx, %rax
	movq      %rax, (%r13)
	movq      _bot@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %r13, %rbx
	movq      %r13, 240(%rsp)
	jmp       L000010F6
L0000102E:
	movsd     248(%rsp), %xmm4
	jmp       L00001230
L0000103C:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 16(%r13)
	movq      %rax, 8(%r13)
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -8(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $7, %rax
	ja        L00001072
L00001066:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001072:
	movq      %rbx, (%rbp)
	incq      %r14
	movq      %r14, (%rbx)
	movq      %rbx, 24(%r13)
	jmp       L000027BB
L00001085:
	movq      $72057594037927935, %r12
	movq      176(%rsp), %rcx
L00001097:
	movq      (%rcx), %rax
	movq      $-144115188075855872, %rdx
	andq      %rdx, %rax
	movq      $144115188075855872, %rdx
	cmpq      %rdx, %rax
	jne       L000010D7
L000010B6:
	movq      $4611686018427387904, %rax
	cmpq      %rax, 8(%rcx)
	movq      %rcx, 176(%rsp)
	jae       L000006BC
L000010D2:
	jmp       L000027BB
L000010D7:
	movq      %rcx, 176(%rsp)
	jmp       L000006BC
L000010E4:
	movq      %rbp, 240(%rsp)
	jmp       L000010F6
L000010EE:
	movq      %rbp, 240(%rsp)
L000010F6:
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
	jae       L0000113A
L0000112E:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000113A:
	movq      %r15, (%r13)
	movq      $72057594037927935, %rax
	cmpq      %rax, %rbp
	jbe       L00001160
L0000114D:
	leaq      LC00003928(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00001160:
	movq      $3170534137668829184, %rax
	orq       %rbp, %rax
	movq      %rax, 256(%rsp)
	movq      %rax, (%r15)
	testq     %r14, %r14
	jle       L00001190
L0000117D:
	leaq      0(,%r14,8), %rsi
	subq      %rsi, %rbx
	movq      %rbx, %rdi
	call      ___bzero
L00001190:
	movq      %r14, 160(%rsp)
	movq      %r15, 304(%rsp)
	movq      (%r13), %rax
	leaq      (%rax,%r12,8), %rcx
	movq      %rcx, 112(%rsp)
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rbp, %rax
	jae       L000011CC
L000011C0:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000011CC:
	movq      112(%rsp), %rax
	movq      %r13, %r12
	movq      %rax, (%r12)
	movq      $72057594037927935, %rax
	cmpq      %rax, %rbp
	jbe       L000011FA
L000011E7:
	leaq      LC00003928(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L000011FA:
	movq      112(%rsp), %rax
	movq      256(%rsp), %rcx
	movq      %rcx, (%rax)
	movq      240(%rsp), %rax
	movq      %rax, 176(%rsp)
	movq      120(%rsp), %r10
	movsd     248(%rsp), %xmm4
	movq      168(%rsp), %r13
L00001230:
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
	jne       L000012DE
L000012AC:
	movq      160(%rsp), %rdi
	movq      %r10, %r12
	movq      %rcx, %r13
	movq      %r9, 256(%rsp)
	call      _matid
L000012C7:
	movq      256(%rsp), %r9
	movq      %r13, %rcx
	movsd     248(%rsp), %xmm4
	movq      %r12, %r10
L000012DE:
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
	movdqa    LC00003910(%rip), %xmm3
	xorl      %eax, %eax
	movq      %rax, 184(%rsp)
	movq      %r10, %rax
	movq      %rax, 256(%rsp)
	movsd     200(%rsp), %xmm0
	jmp       L0000137F
L0000134D:
	.align 4, 0x90
L00001350:
	movq      320(%rsp), %rbx
	decq      8(%rbx)
	movq      280(%rsp), %r14
	movq      288(%rsp), %r9
	movq      296(%rsp), %r15
	movq      %rdi, %rax
	movq      %rax, 184(%rsp)
L0000137F:
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
L000013E0:
	cmpq      $1, 256(%rsp)
	jle       L000014C0
L000013EF:
	movq      256(%rsp), %r12
	movq      $0, -8(%r14,%r12,8)
	cmpq      %r10, %r12
	jg        L00001438
L00001405:
	leaq      -1(%r12), %rax
	xorpd     %xmm0, %xmm0
	.align 4, 0x90
L00001410:
	movq      -8(%r13,%r12,8), %rcx
	xorps     %xmm1, %xmm1
	cvtsi2sdq 8(%rbx,%rax,8), %xmm1
	mulsd     8(%rcx,%rax,8), %xmm1
	addsd     %xmm1, %xmm0
	movsd     %xmm0, -8(%r14,%r12,8)
	incq      %rax
	cmpq      %r10, %rax
	jl        L00001410
L00001438:
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
L00001486:
	movq      %rbx, %r9
	movq      240(%rsp), %rbx
	movsd     248(%rsp), %xmm4
	movq      %rbp, %r10
	cvttsd2si %xmm0, %rax
	movq      %rax, -8(%rbx,%r12,8)
	leaq      -1(%r12), %r12
	movq      %r12, 256(%rsp)
	movdqa    LC00003910(%rip), %xmm3
	jmp       L000014CC
L000014BE:
	.align 4, 0x90
L000014C0:
	movq      256(%rsp), %rax
	movq      (%rbx,%rax,8), %rax
L000014CC:
	xorps     %xmm0, %xmm0
	cvtsi2sd  %rax, %xmm0
	movq      256(%rsp), %rax
	addsd     (%r14,%rax,8), %xmm0
	mulsd     %xmm0, %xmm0
	mulsd     (%r15,%rax,8), %xmm0
	addsd     (%r9,%rax,8), %xmm0
	ucomisd   %xmm0, %xmm4
	jae       L00001588
L000014FC:
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
L00001540:
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
	jb        L00001540
L00001573:
	movq      256(%rsp), %rax
	leaq      1(%rax,%rdi), %rax
	movq      %rax, 256(%rsp)
L00001588:
	cmpq      $1, 256(%rsp)
	jg        L000013E0
L00001597:
	movq      8(%rbx), %rax
	testq     %rax, %rax
	movsd     8(%r9), %xmm5
	jne       L000015B8
L000015A6:
	movsd     LC000038E8(%rip), %xmm0
	ucomisd   %xmm5, %xmm0
	jae       L0000201A
L000015B8:
	movsd     %xmm4, 248(%rsp)
	xorps     %xmm0, %xmm0
	cvtsi2sd  %rax, %xmm0
	addsd     8(%r14), %xmm0
	mulsd     %xmm0, %xmm0
	mulsd     8(%r15), %xmm0
	addsd     %xmm0, %xmm5
	movsd     200(%rsp), %xmm0
	ucomisd   LC00003900(%rip), %xmm0
	movq      _avma@GOTPCREL(%rip), %r15
	jae       L00001680
L000015FB:
	movq      %r10, %r13
	movq      (%r15), %r14
	movapd    %xmm5, %xmm0
	movsd     %xmm5, 232(%rsp)
	call      _dbltor
L00001613:
	movq      %rax, %rdi
	call      _roundr
L0000161B:
	movq      %rax, %rbp
	movq      %rbp, %rdi
	movq      176(%rsp), %r12
	movq      %r12, %rsi
	call      _cmpii
L00001631:
	testl     %eax, %eax
	js        L000016CD
L00001639:
	movq      %r14, (%r15)
	movq      192(%rsp), %rax
	movq      %r13, %r10
	movsd     200(%rsp), %xmm0
	movdqa    LC00003910(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	movq      184(%rsp), %r13
	movsd     232(%rsp), %xmm5
	jmp       L00001850
L00001677:
	.align 4, 0x90
L00001680:
	movq      192(%rsp), %rax
	cmpq      $1, %rax
	movsd     248(%rsp), %xmm4
	je        L000020F1
L0000169B:
	ucomisd   %xmm0, %xmm5
	jbe       L000016C0
L000016A1:
	movapd    %xmm5, %xmm0
	movq      184(%rsp), %r13
	jmp       L00001850
L000016B2:
	.align 4, 0x90
L000016C0:
	movq      184(%rsp), %r13
	jmp       L00001850
L000016CD:
	movq      (%rbp), %rax
	movq      $-144115188075855872, %rcx
	andq      %rcx, %rax
	movq      $288230376151711744, %rcx
	cmpq      %rcx, %rax
	movq      %rbp, %rdi
	je        L00001701
L000016F0:
	movq      (%r15), %r14
	movq      %rbp, %rdi
	call      _gtofp
L000016FB:
	movq      %rax, %rdi
	movq      %r14, (%r15)
L00001701:
	call      _rtodbl
L00001706:
	movapd    %xmm0, %xmm4
	movq      8(%rbp), %r14
	movq      %r14, %r15
	movq      $72057594037927935, %rax
	movq      %rax, %rcx
	andq      %rcx, %r15
	movq      (%r12), %rax
	andq      %rcx, %rax
	cmpq      %r15, %rax
	jae       L00001752
L0000172D:
	movl      $15, %edi
	xorl      %eax, %eax
	leaq      LC000039EB(%rip), %rsi
	movsd     %xmm4, 248(%rsp)
	call      _pari_err
L00001749:
	movsd     248(%rsp), %xmm4
L00001752:
	movq      %r15, %rax
	decq      %rax
	movq      %r13, %r10
	movsd     200(%rsp), %xmm0
	movdqa    LC00003910(%rip), %xmm3
	movsd     232(%rsp), %xmm5
	je        L0000181E
L0000177B:
	cmpq      $1, %r15
	je        L00001810
L00001785:
	leaq      -1(%r15), %r8
	leal      3(%r14), %ecx
	andq      $3, %rcx
	movq      %r8, %rdx
	subq      %rcx, %rdx
	jne       L0000179D
L00001799:
	xorl      %edx, %edx
	jmp       L00001804
L0000179D:
	leaq      8(%rbp), %rcx
	leaq      -8(%r12,%r15,8), %rsi
	cmpq      %rcx, %rsi
	ja        L000017BB
L000017AB:
	leaq      -8(%rbp,%r15,8), %rcx
	cmpq      64(%rsp), %rcx
	ja        L000017BB
L000017B7:
	xorl      %edx, %edx
	jmp       L00001804
L000017BB:
	movapd    %xmm0, %xmm2
	subq      %rdx, %rax
	movq      48(%rsp), %rcx
	leaq      (%rcx,%r15,8), %rsi
	leaq      -16(%rbp,%r15,8), %rdi
	addl      $3, %r14d
	andq      $3, %r14
	negq      %r14
	leaq      -1(%r15,%r14), %rcx
L000017E0:
	movupd    -16(%rdi), %xmm0
	movupd    (%rdi), %xmm1
	movupd    %xmm1, (%rsi)
	movupd    %xmm0, -16(%rsi)
	addq      $-32, %rsi
	addq      $-32, %rdi
	addq      $-4, %rcx
	jne       L000017E0
L00001800:
	movapd    %xmm2, %xmm0
L00001804:
	cmpq      %rdx, %r8
	je        L0000181E
L00001809:
	.align 4, 0x90
L00001810:
	movq      (%rbp,%rax,8), %rcx
	movq      %rcx, (%r12,%rax,8)
	decq      %rax
	jne       L00001810
L0000181E:
	mulsd     LC000038E0(%rip), %xmm4
	movq      136(%rsp), %rax
	movq      _avma@GOTPCREL(%rip), %r15
	movq      %rax, (%r15)
	xorl      %r13d, %r13d
	movq      192(%rsp), %rax
	.align 4, 0x90
L00001850:
	leaq      1(%r13), %rdi
	cmpq      $4, %rax
	jbe       L00001870
L0000185A:
	movq      %rax, 192(%rsp)
	jmp       L00001350
L00001867:
	.align 4, 0x90
L00001870:
	movq      %rax, 192(%rsp)
	leaq      L000028FC(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00001888:
	cmpl      $0, 156(%rsp)
	je        L00001CAF
L00001896:
	movq      160(%rsp), %rbp
	cmpq      %rbp, %r13
	jl        L00001CB7
L000018A7:
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
	jae       L00001935
L000018E3:
	movq      %rdi, 240(%rsp)
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r10, 120(%rsp)
	movsd     %xmm0, 200(%rsp)
	movsd     %xmm4, 248(%rsp)
	call      _pari_err
L0000190E:
	movq      240(%rsp), %rdi
	movsd     248(%rsp), %xmm4
	movdqa    LC00003910(%rip), %xmm3
	movsd     200(%rsp), %xmm0
	movq      120(%rsp), %r10
L00001935:
	movq      %r15, (%r13)
	testq     %rbp, %rbp
	jle       L00001969
L0000193E:
	movq      %rbp, %rax
	shlq      $4, %rax
	subq      %rax, %r12
	xorl      %eax, %eax
	.align 4, 0x90
L00001950:
	movq      304(%rsp), %rcx
	movq      8(%rcx,%rax,8), %rcx
	movq      %rcx, (%r12,%rax,8)
	incq      %rax
	cmpq      %rax, %rbp
	jne       L00001950
L00001969:
	movq      %r15, 304(%rsp)
	movq      %r14, %rbp
	movq      %r13, %r15
	movq      184(%rsp), %r13
	jmp       L00001CB7
L00001984:
	testq     %r13, %r13
	movq      144(%rsp), %r15
	movq      160(%rsp), %rbp
	jne       L00001A09
L00001999:
	movq      %rdi, %r12
	movsd     %xmm4, 248(%rsp)
	movsd     %xmm0, 200(%rsp)
	movq      %r10, %r14
	movq      %rbp, %rdi
	call      _matid
L000019B9:
	movq      %rax, 104(%rsp)
	testq     %rbp, %rbp
	movl      $0, %eax
	jle       L000019E9
L000019C8:
	.align 4, 0x90
L000019D0:
	movq      304(%rsp), %rcx
	movq      $0, 8(%rcx,%rax,8)
	incq      %rax
	cmpq      %rax, %rbp
	jne       L000019D0
L000019E9:
	movq      %r14, %r10
	movsd     200(%rsp), %xmm0
	movdqa    LC00003910(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	movq      %r12, %rdi
L00001A09:
	cmpq      %rbp, %r13
	jge       L00001C9E
L00001A12:
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
	jb        L00001AB6
L00001A5C:
	.align 4, 0x90
L00001A60:
	cmpq      %r10, %rdx
	jg        L00001AA7
L00001A65:
	cmpq      %r15, %rdx
	movq      %r15, %r8
	cmovge    %rdx, %r8
	addq      %rsi, %r8
	leaq      (%rdi,%rsi,8), %rsi
	movq      %r9, %rax
	.align 4, 0x90
L00001A80:
	movq      320(%rsp), %rcx
	movq      8(%rcx,%rax,8), %rbp
	imulq     (%rcx,%rdx,8), %rbp
	movq      %rbp, (%rsi)
	addq      $8, %rsi
	incq      %rax
	cmpq      %r10, %rax
	jl        L00001A80
L00001AA1:
	addq      %r11, %r8
	movq      %r8, %rsi
L00001AA7:
	decq      %r11
	incq      %r9
	cmpq      %r10, %rdx
	leaq      1(%rdx), %rdx
	jl        L00001A60
L00001AB6:
	movq      %r10, 120(%rsp)
	movq      304(%rsp), %rdx
	xorl      %eax, %eax
	movq      104(%rsp), %rsi
	call      _addcolumntomatrix
L00001ACF:
	movq      _DEBUGLEVEL@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	testl     %eax, %eax
	je        L00001DFB
L00001AE1:
	cmpq      $2, %rcx
	movq      _avma@GOTPCREL(%rip), %r12
	jb        L00001B01
L00001AEE:
	xorl      %eax, %eax
	leaq      LC000039BD(%rip), %rdi
	call      _err_printf
L00001AFC:
	call      _err_flush
L00001B01:
	movq      72(%rsp), %rax
	cmpq      %rax, (%r12)
	jae       L00001FEE
L00001B10:
	movq      _DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	jb        L00001B38
L00001B1D:
	movl      $3, %edi
	xorl      %eax, %eax
	leaq      LC000039BF(%rip), %rsi
	movq      240(%rsp), %rdx
	call      _pari_warn
L00001B38:
	movq      104(%rsp), %rdi
	call      _copy_bin
L00001B42:
	movq      %rax, %rbx
	movq      136(%rsp), %rax
	movq      %rax, (%r12)
	movq      %r12, %r13
	movq      8(%rbx), %r15
	testq     %r15, %r15
	je        L00001E7D
L00001B61:
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
	jae       L00001BAC
L00001B90:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 232(%rsp)
	call      _pari_err
L00001BA4:
	movq      232(%rsp), %rdx
L00001BAC:
	movq      %r12, (%r13)
	movq      %rbx, %rsi
	addq      $32, %rsi
	movq      %r12, %rdi
	call      _memcpy
L00001BBF:
	subq      %r14, %rbp
	movq      136(%rsp), %rax
	leaq      (%rax,%rbp,8), %rdi
	movq      %rdi, %rsi
	subq      %r15, %rsi
	cmpl      $0, 24(%rbx)
	je        L00001FA5
L00001BDE:
	movq      %rdi, 104(%rsp)
	call      _shiftaddress_canon
L00001BE8:
	jmp       L00001FAF
L00001BED:
	addsd     LC000038F0(%rip), %xmm5
	movapd    %xmm0, %xmm1
	movapd    %xmm5, %xmm0
	movsd     LC000038F8(%rip), %xmm2
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
	jmp       L00001350
L00001C3D:
	movapd    %xmm0, %xmm1
	addsd     LC000038F0(%rip), %xmm5
	movapd    %xmm5, %xmm0
	movsd     LC000038F8(%rip), %xmm2
	subsd     %xmm2, %xmm0
	cvttsd2si %xmm0, %rcx
	movq      $-9223372036854775808, %rax
	xorq      %rax, %rcx
	cvttsd2si %xmm5, %rax
	ucomisd   %xmm2, %xmm5
	cmovae    %rcx, %rax
	testb     $1, %al
	jne       L00001CA6
L00001C7C:
	movq      $4611686018427387902, %rcx
	andq      %rcx, %rax
	movq      128(%rsp), %rcx
	incq      (%rcx,%rax,4)
	movapd    %xmm1, %xmm0
	jmp       L00001350
L00001C9E:
	movq      %rbp, %rdi
	jmp       L00001350
L00001CA6:
	movapd    %xmm1, %xmm0
	jmp       L00001350
L00001CAF:
	movq      160(%rsp), %rbp
L00001CB7:
	movq      %rbp, 160(%rsp)
	cmpq      %rbp, %r13
	jge       L00001350
L00001CC8:
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
	jae       L00001D7E
L00001D0A:
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
L00001D46:
	movq      %rbx, %rsi
	movq      232(%rsp), %rbx
	movq      240(%rsp), %rdi
	movsd     248(%rsp), %xmm4
	movdqa    LC00003910(%rip), %xmm3
	movsd     200(%rsp), %xmm0
	movq      %r13, %r10
	movq      184(%rsp), %r13
L00001D7E:
	movq      %rsi, (%r15)
	movq      (%r14), %rax
	andq      88(%rsp), %rax
	movq      %rax, (%rsi)
	cmpq      $2, %rbp
	jb        L00001F93
L00001D96:
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
	je        L00001F62
L00001DC9:
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
	jne       L00001E46
L00001DF1:
	xorl      %edx, %edx
	movq      %r11, %rdi
	jmp       L00001F5D
L00001DFB:
	cmpq      $2, %rcx
	movq      _avma@GOTPCREL(%rip), %r12
	jb        L00001E1B
L00001E08:
	xorl      %eax, %eax
	leaq      LC000039BB(%rip), %rdi
	call      _err_printf
L00001E16:
	call      _err_flush
L00001E1B:
	movq      %r14, (%r12)
	movq      %r13, %rdi
	movq      120(%rsp), %r10
	movsd     200(%rsp), %xmm0
	movdqa    LC00003910(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	jmp       L00001350
L00001E46:
	movq      %rsi, 248(%rsp)
	movq      %rdi, %rax
	notq      %rax
	leaq      (%r14,%rax,8), %r9
	leaq      -8(%r12), %rax
	cmpq      %r9, %rax
	ja        L00001ED7
L00001E62:
	leaq      -8(%r14,%rcx,8), %rax
	addq      %rcx, %rdi
	notq      %rdi
	leaq      (%r12,%rdi,8), %rdi
	cmpq      %rdi, %rax
	ja        L00001ED7
L00001E76:
	xorl      %edx, %edx
	jmp       L00001F52
L00001E7D:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq      %rax, %rbp
	movl      (%rbp), %r14d
	movl      $1, (%rbp)
	movq      %rbx, %rdi
	call      _free
L00001E9A:
	movl      %r14d, (%rbp)
	testl     %r14d, %r14d
	jne       L00001EC3
L00001EA3:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00001EC3
L00001EAF:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00001EC3:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 104(%rsp)
	jmp       L00001FEE
L00001ED7:
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
L00001F10:
	movq      %rcx, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     %xmm3, %xmm0
	movq      %xmm0, %rax
	movupd    -8(%r14,%rax,8), %xmm0
	movupd    -24(%r14,%rax,8), %xmm1
	subq      %rbp, %rax
	movupd    %xmm0, -8(%r12,%rax,8)
	movupd    %xmm1, -24(%r12,%rax,8)
	addq      $-4, %rcx
	cmpq      %rcx, %rsi
	jne       L00001F10
L00001F4B:
	movq      %r9, %rbp
	movapd    %xmm2, %xmm0
L00001F52:
	movq      %r11, %rdi
	movq      248(%rsp), %rsi
L00001F5D:
	cmpq      %rdx, %r8
	je        L00001F93
L00001F62:
	movq      $72057594037927935, %rax
	andq      %rax, %rbx
	shlq      $3, %rbx
	subq      %rbx, %r12
	addq      $-8, %r12
	.align 4, 0x90
L00001F80:
	movq      -8(%r14,%rbp,8), %rax
	movq      %rax, (%r12,%rbp,8)
	leaq      -1(%rbp), %rbp
	cmpq      $1, %rbp
	jg        L00001F80
L00001F93:
	movq      304(%rsp), %rax
	movq      %rsi, 8(%rax,%r13,8)
	jmp       L00001350
L00001FA5:
	movq      %rdi, 104(%rsp)
	call      _shiftaddress
L00001FAF:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq      %rax, %rbp
	movl      (%rbp), %r14d
	movl      $1, (%rbp)
	movq      %rbx, %rdi
	call      _free
L00001FCC:
	movl      %r14d, (%rbp)
	testl     %r14d, %r14d
	jne       L00001FEE
L00001FD5:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00001FEE
L00001FE1:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00001FEE:
	movq      120(%rsp), %r10
	movsd     200(%rsp), %xmm0
	movdqa    LC00003910(%rip), %xmm3
	movsd     248(%rsp), %xmm4
	movq      240(%rsp), %rdi
	jmp       L00001350
L0000201A:
	movq      192(%rsp), %rcx
	leaq      -3(%rcx), %rax
	cmpq      $2, %rax
	movq      _avma@GOTPCREL(%rip), %r15
	movq      $72057594037927935, %rbx
	jae       L00002052
L0000203D:
	movq      80(%rsp), %rax
	movq      %rax, (%r15)
	movq      128(%rsp), %r13
	jmp       L000027BB
L00002052:
	cmpq      $2, %rcx
	movq      128(%rsp), %r13
	jne       L00002242
L00002064:
	movq      _DEBUGLEVEL@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	movq      $144115188075855872, %rbx
	movq      96(%rsp), %rbp
	jb        L00002093
L00002080:
	leaq      LC000039D1(%rip), %rdi
	xorl      %eax, %eax
	call      _err_printf
L0000208E:
	call      _err_flush
L00002093:
	movq      %rbp, (%r15)
	movq      184(%rsp), %rax
	testq     %rax, %rax
	je        L000021E0
L000020A7:
	jle       L00002573
L000020AD:
	movq      %rax, %r14
	leaq      -24(%rbp), %r13
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L000020D3
L000020C7:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000020D3:
	movq      %r13, (%r15)
	addq      $3, %rbx
	movq      %rbx, -24(%rbp)
	movq      $4611686018427387904, %rax
	addq      $3, %rax
	jmp       L000025B1
L000020F1:
	movsd     %xmm5, 232(%rsp)
	movq      56(%rsp), %rdi
	movq      %rbx, %rsi
	call      _ZM_zc_mul
L00002107:
	movq      _bot@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	movq      80(%rsp), %rsi
	jb        L000021EF
L0000211C:
	cmpq      %rax, %rsi
	jbe       L000021EF
L00002125:
	movq      _top@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	jae       L000021EF
L00002135:
	movq      %r15, %r13
	movq      (%rax), %r15
	movq      %r15, %rcx
	shrq      $57, %rcx
	leaq      -21(%rcx), %rdx
	cmpq      $2, %rdx
	movq      $72057594037927935, %r14
	jb        L00002160
L00002156:
	cmpq      $2, %rcx
	jne       L000025D5
L00002160:
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
	je        L000025CD
L00002190:
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
	jne       L000027D0
L000021D5:
	movq      %r10, %rdi
	movq      %r12, %rbp
	jmp       L00002898
L000021E0:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r13
	jmp       L000027BB
L000021EF:
	movq      %rsi, (%r15)
	movq      $144115188075855872, %r12
	movq      %r12, %rbp
	movq      $72057594037927935, %r14
L00002209:
	movsd     232(%rsp), %xmm0
L00002212:
	movq      128(%rsp), %rcx
	movq      %rax, 16(%rcx)
	movq      (%r15), %rbx
	call      _dbltor
L00002226:
	movq      %rax, %rdi
	call      _roundr
L0000222E:
	movq      _bot@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	jae       L0000228A
L0000223A:
	movq      %rax, %r12
	jmp       L0000255F
L00002242:
	cmpq      $1, %rcx
	movq      96(%rsp), %rax
	jne       L000023F5
L00002251:
	movq      %rax, (%r15)
	leaq      -8(%rax), %r13
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $7, %rax
	ja        L00002274
L00002268:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002274:
	movq      %r13, (%r15)
L00002277:
	movq      $2449958197289549825, %rax
	movq      %rax, (%r13)
	jmp       L000027BB
L0000228A:
	cmpq      %rax, %rbx
	movdqa    LC00003910(%rip), %xmm2
	jbe       L00002557
L0000229B:
	movq      _top@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rax
	jae       L0000255C
L000022AB:
	movq      %rbp, %r8
	movq      %r15, %r13
	movq      8(%rax), %r9
	movq      %r9, %rbp
	andq      %r14, %rbp
	leaq      0(,%rbp,8), %rdx
	movq      %rbx, %r12
	subq      %rdx, %r12
	cmpq      $2, %rbp
	jb        L000023E3
L000022D3:
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
	je        L000023B1
L00002302:
	incq      %r15
	cmpq      $-3, %rsi
	cmovg     %rsi, %r10
	xorl      %r11d, %r11d
	movq      %r15, %rdi
	andq      $-4, %rdi
	movq      %rbp, %rdx
	je        L000023AC
L00002320:
	movq      %r10, %rdx
	notq      %rdx
	movq      %r14, %rcx
	leaq      (%rax,%rdx,8), %r14
	leaq      -8(%rbx), %rdx
	xorl      %r11d, %r11d
	cmpq      %r14, %rdx
	ja        L00002350
L00002339:
	leaq      -8(%rax,%rcx,8), %r14
	addq      %rcx, %r10
	notq      %r10
	leaq      (%rbx,%r10,8), %rdx
	cmpq      %rdx, %r14
	movq      %rbp, %rdx
	jbe       L000023AC
L00002350:
	movq      %rbp, %rdx
	subq      %rdi, %rdx
	movq      %rdi, %r10
	cmpq      $-3, %rsi
	movq      $-2, %rdi
	cmovg     %rsi, %rdi
	leaq      1(%rdi,%rcx), %rsi
	andq      $-4, %rsi
L00002371:
	movq      %rcx, %xmm0
	pshufd    $68, %xmm0, %xmm0
	paddq     %xmm2, %xmm0
	movq      %xmm0, %rdi
	movupd    -8(%rax,%rdi,8), %xmm0
	movupd    -24(%rax,%rdi,8), %xmm1
	subq      %rbp, %rdi
	movupd    %xmm0, -8(%rbx,%rdi,8)
	movupd    %xmm1, -24(%rbx,%rdi,8)
	addq      $-4, %rcx
	addq      $-4, %rsi
	jne       L00002371
L000023A9:
	movq      %r10, %r11
L000023AC:
	cmpq      %r11, %r15
	je        L000023E3
L000023B1:
	notq      %r9
	movq      $2233785415175766016, %rsi
	orq       %r9, %rsi
	leaq      (%rbx,%rsi,8), %rsi
	.align 4, 0x90
L000023D0:
	movq      -8(%rax,%rdx,8), %rdi
	movq      %rdi, (%rsi,%rdx,8)
	leaq      -1(%rdx), %rdx
	cmpq      $1, %rdx
	jg        L000023D0
L000023E3:
	orq       %r8, %rbp
	movq      %rbp, (%r12)
	movq      %r12, %rbx
	movq      %r13, %r15
	jmp       L0000255F
L000023F5:
	movq      160(%rsp), %rax
	movq      184(%rsp), %rcx
	cmpq      %rax, %rcx
	movq      %rax, %r14
	cmovle    %rcx, %r14
	xorpd     %xmm0, %xmm0
	movsd     200(%rsp), %xmm1
	ucomisd   %xmm0, %xmm1
	movapd    %xmm1, %xmm0
	jb        L0000243B
L00002426:
	call      _dbltor
L0000242B:
	movq      %rax, %rdi
	call      _roundr
L00002433:
	movq      %rax, 176(%rsp)
L0000243B:
	movq      176(%rsp), %rax
	movq      %rax, 312(%rsp)
	leaq      1(%r14), %rbp
	cmpq      %rbx, %rbp
	jbe       L00002467
L00002454:
	leaq      LC00003928(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002467:
	movq      $2738188573441261568, %rax
	orq       %rax, %rbp
	movq      304(%rsp), %rax
	movq      %rbp, (%rax)
	testq     %r14, %r14
	movq      56(%rsp), %r12
	jle       L000024D0
L00002489:
	movq      160(%rsp), %rax
	notq      %rax
	movq      184(%rsp), %r14
	notq      %r14
	cmpq      %r14, %rax
	cmovge    %rax, %r14
	negq      %r14
	movl      $1, %ebp
	.align 4, 0x90
L000024B0:
	movq      304(%rsp), %rbx
	movq      (%rbx,%rbp,8), %rsi
	movq      %r12, %rdi
	call      _ZM_zc_mul
L000024C4:
	movq      %rax, (%rbx,%rbp,8)
	incq      %rbp
	cmpq      %rbp, %r14
	jne       L000024B0
L000024D0:
	leaq      312(%rsp), %rdx
	leaq      304(%rsp), %rcx
	xorl      %eax, %eax
	movq      80(%rsp), %rdi
	call      _gerepileall
L000024EC:
	movq      184(%rsp), %rax
	addq      %rax, %rax
	testq     %rax, %rax
	movq      %rax, %r14
	je        L000025BE
L00002503:
	jle       L0000274F
L00002509:
	movq      (%r15), %rbp
	leaq      -24(%rbp), %rbx
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000252F
L00002523:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000252F:
	movq      %rbx, (%r15)
	movq      $144115188075855872, %rax
	addq      $3, %rax
	movq      %rax, -24(%rbp)
	movq      $4611686018427387904, %rax
	addq      $3, %rax
	jmp       L00002797
L00002557:
	movq      %rax, %r12
	jmp       L0000255F
L0000255C:
	movq      %rax, %r12
L0000255F:
	movq      %rbx, (%r15)
	movq      128(%rsp), %r13
	movq      %r12, 8(%r13)
	jmp       L000027BB
L00002573:
	negq      %rax
	movq      %rax, %r14
	leaq      -24(%rbp), %r13
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000259C
L00002590:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000259C:
	movq      %r13, (%r15)
	addq      $3, %rbx
	movq      %rbx, -24(%rbp)
	movq      $-4611686018427387901, %rax
L000025B1:
	movq      %rax, -16(%rbp)
	movq      %r14, -8(%rbp)
	jmp       L000027BB
L000025BE:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       L0000279F
L000025CD:
	movq      %rdx, %rax
	jmp       L000028DD
L000025D5:
	movq      %rsi, %rdi
	cmpq      $1, %rcx
	movq      $144115188075855872, %r12
	movq      %r12, %rbp
	jne       L000028CE
L000025EF:
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
	jb        L00002737
L00002620:
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
	je        L00002710
L00002652:
	incq      %r15
	cmpq      $-3, %rbp
	cmovg     %rbp, %r10
	xorl      %r11d, %r11d
	movq      %r15, %rdi
	andq      $-4, %rdi
	movq      %rbx, %rcx
	je        L00002701
L00002670:
	movq      %r10, %rcx
	notq      %rcx
	leaq      (%rax,%rcx,8), %r14
	leaq      -8(%rdx), %rcx
	xorl      %r11d, %r11d
	cmpq      %r14, %rcx
	ja        L0000269D
L00002686:
	leaq      -8(%rax,%rsi,8), %r14
	addq      %rsi, %r10
	notq      %r10
	leaq      (%rdx,%r10,8), %rcx
	cmpq      %rcx, %r14
	movq      %rbx, %rcx
	jbe       L00002701
L0000269D:
	movq      %rbx, %rcx
	subq      %rdi, %rcx
	movq      %rdi, %r10
	cmpq      $-3, %rbp
	movq      $-2, %rdi
	cmovg     %rbp, %rdi
	leaq      1(%rdi,%rsi), %rbp
	andq      $-4, %rbp
	movdqa    LC00003910(%rip), %xmm2
L000026C6:
	movq      %rsi, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm2, %xmm1
	movq      %xmm1, %rdi
	movdqu    -8(%rax,%rdi,8), %xmm3
	movupd    -24(%rax,%rdi,8), %xmm1
	subq      %rbx, %rdi
	movdqu    %xmm3, -8(%rdx,%rdi,8)
	movupd    %xmm1, -24(%rdx,%rdi,8)
	addq      $-4, %rsi
	addq      $-4, %rbp
	jne       L000026C6
L000026FE:
	movq      %r10, %r11
L00002701:
	cmpq      %r11, %r15
	movq      $72057594037927935, %r14
	je        L00002737
L00002710:
	notq      %r9
	movq      $2233785415175766016, %rsi
	orq       %r9, %rsi
	leaq      (%rdx,%rsi,8), %rsi
L00002724:
	movq      -8(%rax,%rcx,8), %rdi
	movq      %rdi, (%rsi,%rcx,8)
	leaq      -1(%rcx), %rcx
	cmpq      $1, %rcx
	jg        L00002724
L00002737:
	movq      %r8, %rbp
	orq       %rbp, %rbx
	movq      %rbx, (%r12)
	movq      %r13, %r15
	movq      %r12, (%r15)
	movq      %r12, %rax
	jmp       L00002212
L0000274F:
	negq      %r14
	movq      (%r15), %rbp
	leaq      -24(%rbp), %rbx
	movq      %rbp, %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L00002778
L0000276C:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002778:
	movq      %rbx, (%r15)
	movq      $144115188075855872, %rax
	addq      $3, %rax
	movq      %rax, -24(%rbp)
	movq      $-4611686018427387901, %rax
L00002797:
	movq      %rax, -16(%rbp)
	movq      %r14, -8(%rbp)
L0000279F:
	movq      %rbx, 8(%r13)
	movq      312(%rsp), %rax
	movq      %rax, 16(%r13)
	movq      304(%rsp), %rax
	movq      %rax, 24(%r13)
L000027BB:
	movq      %r13, %rax
	addq      $328, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000027D0:
	addq      $2, %r11
	cmpq      %rdi, %rcx
	cmove     %rbp, %r14
	xorl      %r9d, %r9d
	movq      %r11, %r8
	andq      $-4, %r8
	movq      %r10, %rdi
	movdqa    LC00003910(%rip), %xmm2
	je        L0000287B
L000027F6:
	movq      $-2, %r10
	movq      $-2, %rcx
	subq      %r14, %rcx
	leaq      (%rax,%rcx,8), %rcx
	leaq      -8(%rdi), %rbp
	xorl      %r9d, %r9d
	cmpq      %rcx, %rbp
	ja        L0000282B
L00002817:
	leaq      -8(%rax,%rsi,8), %rcx
	addq      %rsi, %r14
	subq      %r14, %r10
	leaq      (%rdi,%r10,8), %rbp
	cmpq      %rbp, %rcx
	jbe       L0000287B
L0000282B:
	movq      %rsi, %r9
	subq      %r8, %r9
	leaq      2(%rbx,%rsi), %rbx
	andq      $-4, %rbx
	movq      %rsi, %rbp
L0000283D:
	movq      %rbp, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm2, %xmm1
	movq      %xmm1, %rcx
	movdqu    -8(%rax,%rcx,8), %xmm3
	movupd    -24(%rax,%rcx,8), %xmm1
	subq      %rsi, %rcx
	movdqu    %xmm3, -8(%rdi,%rcx,8)
	movupd    %xmm1, -24(%rdi,%rcx,8)
	addq      $-4, %rbp
	addq      $-4, %rbx
	jne       L0000283D
L00002875:
	movq      %r9, %rsi
	movq      %r8, %r9
L0000287B:
	cmpq      %r9, %r11
	movq      %r12, %rbp
	jne       L00002898
L00002883:
	movq      %rdx, %rax
	movq      $72057594037927935, %r14
	movq      %r13, %r15
	jmp       L00002212
L00002898:
	incq      %rsi
	movq      $72057594037927935, %r14
	andq      %r14, %r15
	shlq      $3, %r15
	subq      %r15, %rdi
	.align 4, 0x90
L000028B0:
	movq      -16(%rax,%rsi,8), %rcx
	movq      %rcx, -16(%rdi,%rsi,8)
	decq      %rsi
	cmpq      $1, %rsi
	jg        L000028B0
L000028C3:
	movq      %rdx, %rax
	movq      %r13, %r15
	jmp       L00002212
L000028CE:
	andq      %r14, %r15
	leaq      (%rax,%r15,8), %rsi
	movq      %rax, %rdx
	call      _gerepile
L000028DD:
	movq      %r13, %r15
	jmp       L00002209
L000028E5:
	.align 4, 0x90
# ----------------------
L000028E8:
	.long	L000005E7-L000028E8
	.long	L00000629-L000028E8
	.long	L000006BC-L000028E8
	.long	L0000046F-L000028E8
	.long	L0000046F-L000028E8
# ----------------------
L000028FC:
	.long	L00001888-L000028FC
	.long	L00001350-L000028FC
	.long	L00001984-L000028FC
	.long	L00001BED-L000028FC
	.long	L00001C3D-L000028FC
_gerepileall:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $312, %rsp
	movq      %rdi, %rbx
	testb     %al, %al
	je        L0000295C
L00002928:
	movaps    %xmm0, 64(%rsp)
	movaps    %xmm1, 80(%rsp)
	movaps    %xmm2, 96(%rsp)
	movaps    %xmm3, 112(%rsp)
	movaps    %xmm4, 128(%rsp)
	movaps    %xmm5, 144(%rsp)
	movaps    %xmm6, 160(%rsp)
	movaps    %xmm7, 176(%rsp)
L0000295C:
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
	ja        L000029DA
L000029C3:
	movq      %rcx, %rax
	addq      288(%rsp), %rax
	leal      8(%rcx), %ecx
	movl      %ecx, 272(%rsp)
	jmp       L000029EE
L000029DA:
	movq      280(%rsp), %rax
	leaq      8(%rax), %rcx
	movq      %rcx, 280(%rsp)
L000029EE:
	movq      (%rax), %rbp
	movq      %rbp, 192(%rsp)
	movq      (%rbp), %rdi
	call      _copy_bin
L00002A02:
	movq      %rax, (%rbp)
	movslq    272(%rsp), %rcx
	cmpq      $41, %rcx
	jae       L00002A2B
L00002A14:
	movq      %rcx, %rax
	addq      288(%rsp), %rax
	leal      8(%rcx), %ecx
	movl      %ecx, 272(%rsp)
	jmp       L00002A3F
L00002A2B:
	movq      280(%rsp), %rax
	leaq      8(%rax), %rcx
	movq      %rcx, 280(%rsp)
L00002A3F:
	movq      (%rax), %rbp
	movq      %rbp, 200(%rsp)
	movq      (%rbp), %rdi
	call      _copy_bin
L00002A53:
	movq      %rax, (%rbp)
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      %rbx, (%rdx)
	movq      200(%rsp), %rax
	movq      (%rax), %r15
	movq      8(%r15), %r13
	testq     %r13, %r13
	je        L00002AFB
L00002A79:
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
	jae       L00002ACB
L00002AAE:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 8(%rsp)
	call      _pari_err
L00002ABF:
	movq      8(%rsp), %r8
	movq      _avma@GOTPCREL(%rip), %rdx
L00002ACB:
	movq      %rbx, (%rdx)
	leaq      32(%r15), %rsi
	movq      %rbx, %rdi
	movq      %r8, %rdx
	call      _memcpy
L00002ADD:
	subq      %r12, %rbp
	leaq      (%r14,%rbp,8), %r14
	movq      %r14, %rsi
	subq      %r13, %rsi
	cmpl      $0, 24(%r15)
	je        L00002B43
L00002AF1:
	movq      %r14, %rdi
	call      _shiftaddress_canon
L00002AF9:
	jmp       L00002B4B
L00002AFB:
	movq      %rdx, %r12
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
L00002B15:
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       L00002B34
L00002B1B:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00002B34
L00002B27:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00002B34:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	movq      %r12, %rdx
	jmp       L00002B88
L00002B43:
	movq      %r14, %rdi
	call      _shiftaddress
L00002B4B:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
L00002B62:
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       L00002B81
L00002B68:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00002B81
L00002B74:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00002B81:
	movq      _avma@GOTPCREL(%rip), %rdx
L00002B88:
	movq      200(%rsp), %rax
	movq      %r14, (%rax)
	movq      192(%rsp), %rax
	movq      (%rax), %r15
	movq      8(%r15), %r13
	testq     %r13, %r13
	je        L00002C2D
L00002BAB:
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
	jae       L00002BFD
L00002BE0:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 8(%rsp)
	call      _pari_err
L00002BF1:
	movq      8(%rsp), %r8
	movq      _avma@GOTPCREL(%rip), %rdx
L00002BFD:
	movq      %rbx, (%rdx)
	leaq      32(%r15), %rsi
	movq      %rbx, %rdi
	movq      %r8, %rdx
	call      _memcpy
L00002C0F:
	subq      %r12, %rbp
	leaq      (%r14,%rbp,8), %r14
	movq      %r14, %rsi
	subq      %r13, %rsi
	cmpl      $0, 24(%r15)
	je        L00002C6F
L00002C23:
	movq      %r14, %rdi
	call      _shiftaddress_canon
L00002C2B:
	jmp       L00002C77
L00002C2D:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
L00002C44:
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       L00002C63
L00002C4A:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00002C63
L00002C56:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00002C63:
	movq      _gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r14
	jmp       L00002CAD
L00002C6F:
	movq      %r14, %rdi
	call      _shiftaddress
L00002C77:
	movq      _PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movl      (%rbx), %ebp
	movl      $1, (%rbx)
	movq      %r15, %rdi
	call      _free
L00002C8E:
	movl      %ebp, (%rbx)
	testl     %ebp, %ebp
	jne       L00002CAD
L00002C94:
	movq      _PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	cmpl      $0, (%rax)
	je        L00002CAD
L00002CA0:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      _raise
L00002CAD:
	movq      192(%rsp), %rax
	movq      %r14, (%rax)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      304(%rsp), %rax
	jne       L00002CDE
L00002CCC:
	addq      $312, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002CDE:
	call      ___stack_chk_fail
L00002CE3:
	.align 4, 0x90
_gtofp:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $56, %rsp
	movq      %rdi, %r12
	movq      (%r12), %rax
	shrq      $57, %rax
	decq      %rax
	cmpq      $7, %rax
	ja        L00002D7F
L00002D12:
	movq      $4611686018427387903, %rsi
	movq      $288230376151711747, %r14
	movq      $72057594037927935, %rbp
	leaq      L000038B8(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00002D40:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L00002D6B
L00002D5F:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002D6B:
	movq      %rbx, (%rbp)
	movq      %r14, (%rbx)
	movq      %r12, %rdi
L00002D75:
	movq      %rbx, %rsi
	call      _affir
L00002D7D:
	jmp       L00002D94
L00002D7F:
	leaq      LC000039D3(%rip), %rsi
L00002D86:
	xorl      %ebx, %ebx
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002D94:
	movq      %rbx, %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002DA6:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L00002DD1
L00002DC5:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002DD1:
	movq      %rbx, (%rbp)
	movq      %r14, (%rbx)
	movq      %r12, %rdi
L00002DDB:
	movq      %rbx, %rsi
	call      _affrr
L00002DE3:
	jmp       L00002D94
L00002DE5:
	movq      8(%r12), %r15
	movq      16(%r12), %r13
	movq      _avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %r12
	leaq      -24(%r12), %r14
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %r12, %rax
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L00002E1D
L00002E11:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002E1D:
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
L00002E49:
	andq      8(%r13), %rbp
	cmpq      $3, %rbp
	ja        L00002E66
L00002E53:
	movq      16(%r13), %rsi
	jne       L00003065
L00002E5D:
	testq     %rsi, %rsi
	jns       L00003065
L00002E66:
	movq      (%r14), %rax
	leaq      -24(%rax), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L00002E89
L00002E7D:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002E89:
	movq      %rbp, (%r14)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbp)
	movq      %r13, %rdi
	movq      %rbp, %rsi
	call      _affir
L00002EA5:
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	call      _divrr
L00002EB0:
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
L00002EBB:
	jmp       L000030A5
L00002EC0:
	movq      8(%r12), %r14
	movq      16(%r12), %r15
	movq      (%r15), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	jne       L00002F5D
L00002EDB:
	leaq      1(%rsi), %rcx
	movq      (%r14), %rax
	cmpq      %rcx, 8(%r15)
	jae       L00002F60
L00002EE8:
	shrq      $57, %rax
	cmpq      $4, %rax
	je        L00003288
L00002EF6:
	cmpq      $2, %rax
	jne       L00003367
L00002F00:
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	movq      $288230376151711747, %rbp
	ja        L00002F34
L00002F28:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00002F34:
	movq      %rbx, (%r15)
	movq      %rbp, (%rbx)
	movq      %r14, %rdi
	jmp       L00002DDB
L00002F42:
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
L00002F5D:
	movq      (%r14), %rax
L00002F60:
	movq      $-144115188075855872, %rcx
	movq      $144115188075855872, %rdx
	movq      $864691128455135235, %rbx
	andq      %rax, %rcx
	cmpq      %rdx, %rcx
	jne       L00003040
L00002F8A:
	movq      %rbx, %r13
	leaq      1(%rsi), %rcx
	movq      _avma@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rax
	movq      %rax, 48(%rsp)
	leaq      -24(%rax), %rbx
	movq      _bot@GOTPCREL(%rip), %rbp
	subq      (%rbp), %rax
	cmpq      %rcx, 8(%r14)
	jae       L000030B2
L00002FB9:
	cmpq      $23, %rax
	ja        L00002FD1
L00002FBF:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r14
	call      _pari_err
L00002FCE:
	movq      %r14, %rdx
L00002FD1:
	movq      %rbx, 40(%rsp)
	movq      %rbx, (%rdx)
	movq      %r13, (%rbx)
	movq      (%r15), %rax
	shrq      $57, %rax
	cmpq      $4, %rax
	movq      %rbp, %r12
	je        L000033B3
L00002FF0:
	cmpq      $2, %rax
	jne       L0000349D
L00002FFA:
	movq      (%rdx), %rax
	leaq      -24(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        L0000301D
L0000300B:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbp
	call      _pari_err
L0000301A:
	movq      %rbp, %rdx
L0000301D:
	movq      %rbx, (%rdx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %r15, %rdi
	movq      %rdx, %rbp
	movq      %rbx, %rsi
	call      _affrr
L0000303B:
	jmp       L00003778
L00003040:
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      %rcx, 48(%rsp)
	leaq      -24(%rcx), %r14
	movq      _bot@GOTPCREL(%rip), %rax
	subq      (%rax), %rcx
	cmpq      $24, %rcx
	jb        L000030BE
L00003063:
	jmp       L000030CA
L00003065:
	movq      %rbx, %rdi
	call      _divrs
L0000306D:
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
L00003078:
	cmpq      $0, 8(%r13)
	jns       L000030A5
L0000307F:
	movq      -16(%r12), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       L000030A5
L00003093:
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%r12)
L000030A5:
	movq      48(%rsp), %rax
	movq      %rax, (%r14)
	jmp       L00002D94
L000030B2:
	cmpq      $23, %rax
	movq      %rbx, %r14
	movq      %r13, %rbx
	ja        L000030CA
L000030BE:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000030CA:
	movq      _avma@GOTPCREL(%rip), %r13
	movq      %r14, (%r13)
	movq      %rbx, (%r14)
	movq      8(%r12), %rbx
	movq      (%rbx), %rax
	shrq      $57, %rax
	cmpq      $4, %rax
	je        L0000313E
L000030EA:
	cmpq      $2, %rax
	jne       L0000321D
L000030F4:
	movq      %r14, 40(%rsp)
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000311D
L00003111:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000311D:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affrr
L00003139:
	jmp       L00003534
L0000313E:
	movq      %r14, 40(%rsp)
	movq      8(%rbx), %rbp
	movq      16(%rbx), %rbx
	movq      (%r13), %r14
	leaq      -24(%r14), %r15
	movq      _bot@GOTPCREL(%rip), %rcx
	movq      %r14, %rax
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L00003172
L00003166:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003172:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      (%r13), %rax
	movq      %rax, 32(%rsp)
	movq      %rbp, %rdi
	movq      %r15, %rsi
	call      _affir
L00003197:
	movq      8(%rbx), %rax
	movq      $72057594037927935, %rcx
	andq      %rcx, %rax
	cmpq      $3, %rax
	ja        L000031C1
L000031AE:
	movq      16(%rbx), %rsi
	jne       L000034ED
L000031B8:
	testq     %rsi, %rsi
	jns       L000034ED
L000031C1:
	movq      (%r13), %rax
	leaq      -24(%rax), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L000031E5
L000031D9:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000031E5:
	movq      %rbp, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbp)
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	call      _affir
L00003202:
	movq      %r15, %rdi
	movq      %rbp, %rsi
	call      _divrr
L0000320D:
	movq      %rax, %rdi
	movq      %r15, %rsi
	call      _affrr
L00003218:
	jmp       L0000352B
L0000321D:
	movq      %r14, 40(%rsp)
	cmpq      $1, %rax
	jne       L0000326D
L00003228:
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000324C
L00003240:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000324C:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affir
L00003268:
	jmp       L00003534
L0000326D:
	leaq      LC000039D9(%rip), %rsi
	xorl      %r15d, %r15d
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003283:
	jmp       L00003534
L00003288:
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
	ja        L000032C0
L000032B4:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000032C0:
	movq      %rbp, %rsi
	movq      %rsi, (%rbx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rsi)
	movq      (%rbx), %rbp
	movq      %r12, %rdi
	movq      %rsi, %rbx
	call      _affir
L000032E1:
	andq      8(%r15), %r13
	cmpq      $3, %r13
	ja        L000032FE
L000032EB:
	movq      16(%r15), %rsi
	jne       L0000378A
L000032F5:
	testq     %rsi, %rsi
	jns       L0000378A
L000032FE:
	movq      %rbp, %r14
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rax
	leaq      -24(%rax), %rbp
	movq      _bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000332C
L00003320:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000332C:
	movq      %rbp, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbp)
	movq      %r15, %rdi
	movq      %rbp, %rsi
	call      _affir
L00003349:
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	call      _divrr
L00003354:
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
L0000335F:
	movq      %r14, %rbp
	jmp       L000037D8
L00003367:
	cmpq      $1, %rax
	movq      $288230376151711747, %rbp
	jne       L00003754
L0000337B:
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L000033A5
L00003399:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000033A5:
	movq      %rbx, (%r15)
	movq      %rbp, (%rbx)
	movq      %r14, %rdi
	jmp       L00002D75
L000033B3:
	movq      8(%r15), %rbx
	movq      16(%r15), %rbp
	movq      (%rdx), %r14
	leaq      -24(%r14), %r15
	movq      %r14, %rax
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        L000033E1
L000033CF:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %r13
	call      _pari_err
L000033DE:
	movq      %r13, %rdx
L000033E1:
	movq      %r15, (%rdx)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      (%rdx), %rax
	movq      %rax, 32(%rsp)
	movq      %rbx, %rdi
	movq      %r15, %rbx
	movq      %rbx, %rsi
	call      _affir
L00003407:
	movq      $72057594037927935, %r13
	andq      8(%rbp), %r13
	cmpq      $3, %r13
	ja        L0000342E
L0000341B:
	movq      16(%rbp), %rsi
	jne       L000037E1
L00003425:
	testq     %rsi, %rsi
	jns       L000037E1
L0000342E:
	movq      %rbx, %r14
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rax
	leaq      -24(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        L00003456
L0000344A:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003456:
	movq      %rbx, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %rbp, %rdi
	movq      %rbx, %rsi
	call      _affir
L00003472:
	movq      %r14, %rdi
	movq      %rbx, %rsi
	movq      %rdi, %rbx
	call      _divrr
L00003480:
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
L0000348B:
	movq      %r13, %rsi
	movq      $4611686018427387903, %rcx
	jmp       L00003829
L0000349D:
	cmpq      $1, %rax
	jne       L00003760
L000034A7:
	movq      (%rdx), %rax
	leaq      -24(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $23, %rax
	ja        L000034CA
L000034B8:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, %rbp
	call      _pari_err
L000034C7:
	movq      %rbp, %rdx
L000034CA:
	movq      %rbx, (%rdx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %r15, %rdi
	movq      %rdx, %rbp
	movq      %rbx, %rsi
	call      _affir
L000034E8:
	jmp       L00003778
L000034ED:
	movq      %r15, %rdi
	call      _divrs
L000034F5:
	movq      %rax, %rdi
	movq      %r15, %rsi
	call      _affrr
L00003500:
	cmpq      $0, 8(%rbx)
	jns       L0000352B
L00003507:
	movq      -16(%r14), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       L0000352B
L0000351A:
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%r14)
L0000352B:
	movq      32(%rsp), %rax
	movq      %rax, (%r13)
L00003534:
	movq      48(%rsp), %rbp
	movq      %r15, -16(%rbp)
	movq      16(%r12), %rbx
	movq      (%rbx), %rax
	shrq      $57, %rax
	cmpq      $4, %rax
	je        L0000359E
L0000354F:
	cmpq      $2, %rax
	jne       L0000367C
L00003559:
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L0000357D
L00003571:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L0000357D:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affrr
L00003599:
	jmp       L000036C2
L0000359E:
	movq      8(%rbx), %rbp
	movq      16(%rbx), %r15
	movq      (%r13), %rbx
	leaq      -24(%rbx), %r12
	movq      _bot@GOTPCREL(%rip), %r14
	movq      %rbx, %rax
	subq      (%r14), %rax
	cmpq      $23, %rax
	ja        L000035CD
L000035C1:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000035CD:
	movq      %r12, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r12)
	movq      (%r13), %rax
	movq      %rax, 32(%rsp)
	movq      %rbp, %rdi
	movq      %r12, %rsi
	call      _affir
L000035F3:
	movq      $72057594037927935, %r13
	andq      8(%r15), %r13
	cmpq      $3, %r13
	ja        L0000361A
L00003607:
	movq      16(%r15), %rsi
	jne       L000036F3
L00003611:
	testq     %rsi, %rsi
	jns       L000036F3
L0000361A:
	movq      _avma@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rax
	leaq      -24(%rax), %rbx
	subq      (%r14), %rax
	cmpq      $23, %rax
	ja        L00003643
L00003631:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, %rbp
	call      _pari_err
L00003640:
	movq      %rbp, %rcx
L00003643:
	movq      %rbx, (%rcx)
	movq      $288230376151711747, %rax
	movq      %rax, (%rbx)
	movq      %r15, %rdi
	movq      %rbx, %rsi
	movq      %rcx, %rbp
	call      _affir
L00003661:
	movq      %r12, %rdi
	movq      %rbx, %rsi
	call      _divrr
L0000366C:
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _affrr
L00003677:
	jmp       L00003738
L0000367C:
	cmpq      $1, %rax
	jne       L000036D0
L00003682:
	movq      (%r13), %rax
	movq      _bot@GOTPCREL(%rip), %rcx
	leaq      -24(%rax), %r15
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        L000036A6
L0000369A:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000036A6:
	movq      %r15, (%r13)
	movq      $288230376151711747, %rax
	movq      %rax, (%r15)
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _affir
L000036C2:
	movq      %r15, -8(%rbp)
	movq      40(%rsp), %rbx
	jmp       L00002D94
L000036D0:
	leaq      LC000039D9(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L000036E5:
	movq      %rbx, -8(%rbp)
	movq      40(%rsp), %rbx
	jmp       L00002D94
L000036F3:
	movq      %r12, %rdi
	call      _divrs
L000036FB:
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _affrr
L00003706:
	cmpq      $0, 8(%r15)
	movq      _avma@GOTPCREL(%rip), %rbp
	jns       L00003738
L00003714:
	movq      -16(%rbx), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       L00003738
L00003727:
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%rbx)
L00003738:
	movq      32(%rsp), %rax
	movq      %rax, (%rbp)
	movq      48(%rsp), %rax
	movq      %r12, -8(%rax)
	movq      40(%rsp), %rbx
	jmp       L00002D94
L00003754:
	leaq      LC000039D9(%rip), %rsi
	jmp       L00002D86
L00003760:
	movq      %rdx, %rbp
	leaq      LC000039D9(%rip), %rsi
	xorl      %ebx, %ebx
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003778:
	movq      %rbp, %rsi
	movq      $4611686018427387903, %rcx
	jmp       L00003831
L0000378A:
	movq      %rbx, %rdi
	call      _divrs
L00003792:
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
L0000379D:
	cmpq      $0, 8(%r15)
	movq      _avma@GOTPCREL(%rip), %r13
	jns       L000037D8
L000037AB:
	movq      -16(%r14), %rax
	movq      $4611686018427387903, %rcx
	cmpq      %rcx, %rax
	jbe       L000037D8
L000037BE:
	movq      $-9223372036854775808, %rcx
	xorq      %rcx, %rax
	movq      %rax, -16(%r14)
	movq      %rbp, (%r13)
	jmp       L00002D94
L000037D8:
	movq      %rbp, (%r13)
	jmp       L00002D94
L000037E1:
	movq      %rbx, %rdi
	call      _divrs
L000037E9:
	movq      %rax, %rdi
	movq      %rbx, %rsi
	call      _affrr
L000037F4:
	cmpq      $0, 8(%rbp)
	movq      $4611686018427387903, %rcx
	movq      _avma@GOTPCREL(%rip), %r13
	movq      %r13, %rsi
	jns       L00003829
L0000380F:
	movq      -16(%r14), %rax
	cmpq      %rcx, %rax
	jbe       L00003829
L00003818:
	movq      $-9223372036854775808, %rdx
	xorq      %rdx, %rax
	movq      %rax, -16(%r14)
L00003829:
	movq      32(%rsp), %rax
	movq      %rax, (%rsi)
L00003831:
	movq      %rbx, 32(%rsp)
	movq      8(%rbx), %rbp
	andq      %rcx, %rbp
	movq      (%rsi), %rbx
	leaq      -16(%rbx), %r15
	movq      %rbx, %rax
	subq      (%r12), %rax
	cmpq      $15, %rax
	ja        L00003869
L00003851:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, %r12
	movq      %rcx, %r13
	call      _pari_err
L00003863:
	movq      %r13, %rcx
	movq      %r12, %rsi
L00003869:
	movq      %r15, (%rsi)
	movq      $288230376151711747, %rax
	decq      %rax
	movq      %rax, (%r15)
	addq      $-64, %rbp
	cmpq      %rcx, %rbp
	jbe       L00003898
L00003885:
	leaq      LC000039E4(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00003898:
	movq      %rbp, -8(%rbx)
	movq      48(%rsp), %rax
	movq      %r15, -16(%rax)
	movq      32(%rsp), %rcx
	movq      %rcx, -8(%rax)
	movq      40(%rsp), %rbx
	jmp       L00002D94
# ----------------------
L000038B8:
	.long	L00002D40-L000038B8
	.long	L00002DA6-L000038B8
	.long	L00002D7F-L000038B8
	.long	L00002DE5-L000038B8
	.long	L00002D7F-L000038B8
	.long	L00002EC0-L000038B8
	.long	L00002D7F-L000038B8
	.long	L00002F42-L000038B8
# ----------------------
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LC000038D8:
	.long	0
	.long	-1074790400
	.align 3
LC000038E0:
	.long	-611603343
	.long	1072693352
	.align 3
LC000038E8:
	.long	-350469331
	.long	1058682594
	.align 3
LC000038F0:
	.long	0
	.long	1071644672
	.align 3
LC000038F8:
	.long	0
	.long	1138753536
	.align 3
LC00003900:
	.zero	8
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LC00003910:
	.long	-1
	.long	-1
	.long	-2
	.long	-1
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00003920:
	.string	"qfminim"
LC00003928:
	.string	"lg()"
LC0000392D:
	.string	"qfminim0"
LC00003936:
	.string	"minim0"
LC0000393D:
	.string	"bound = 0 in minim2"
LC00003951:
	.string	"not a definite form in minim0"
LC0000396F:
	.string	"not a positive definite form in minim0"
LC00003996:
	.string	"negative number of vectors in minim0"
LC000039BB:
	.string	"."
LC000039BD:
	.string	"*"
LC000039BF:
	.string	"minim0, rank>=%ld"
LC000039D1:
	.string	"\n"
LC000039D3:
	.string	"gtofp"
LC000039D9:
	.string	"cxcompotor"
LC000039E4:
	.string	"expo()"
LC000039EB:
	.string	"t_INT-->t_INT assignment"
LC00003A04:
	.string	"t_INT-->long assignment"
# ----------------------

.subsections_via_symbols
