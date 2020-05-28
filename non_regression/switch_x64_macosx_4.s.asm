	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_ellrootno_global
_ellrootno_global:
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
	subq      $24, %rsp
Ltmp6:
Ltmp7:
Ltmp8:
Ltmp9:
Ltmp10:
Ltmp11:
Ltmp12:
	movq      %rsi, %rax
	movq      %rdi, %r14
	movq      %rax, 16(%rsp)
	leaq      16(%rsp), %rdx
	movl      $2, %esi
	movq      %rax, %rdi
	call      _Z_lvalrem
	movq      $-1, %rbx
	testq     %rax, %rax
	je        LBB0_2
	movq      %r14, %rdi
	call      _ellrootno_2
	movq      %rax, %rbx
	negq      %rbx
LBB0_2:
	movq      16(%rsp), %rdi
	leaq      16(%rsp), %rdx
	movl      $3, %esi
	call      _Z_lvalrem
	testq     %rax, %rax
	je        LBB0_4
	movq      %r14, %rdi
	call      _ellrootno_3
	imulq     %rax, %rbx
LBB0_4:
	movq      16(%rsp), %rdi
	call      _Z_factor
	movq      8(%rax), %r13
	movl      $1, %ebp
	testl     $16777214, (%r13)
	je        LBB0_12
	movq      16(%rax), %rax
	movq      %rax, 8(%rsp)
	movl      $16777215, %edx
	.align 4, 0x90
LBB0_6:
	movq      (%r13,%rbp,8), %r12
	movq      8(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	movq      8(%rax), %rcx
	andq      %rdx, %rcx
	cmpq      $2, %rcx
	movl      $16777215, %r15d
	movl      $0, %edx
	je        LBB0_11
	cmpq      $3, %rcx
	jne       LBB0_9
	movq      16(%rax), %rdx
	jmp       LBB0_10
	.align 4, 0x90
LBB0_9:
	movl      $15, %edi
	xorl      %eax, %eax
	leaq      L_.str2(%rip), %rsi
	call      _pari_err
	xorl      %edx, %edx
LBB0_10:
	movl      $16777215, %r15d
LBB0_11:
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _ellrootno_p
	imulq     %rax, %rbx
	incq      %rbp
	movq      (%r13), %rax
	andq      %r15, %rax
	cmpq      %rax, %rbp
	movl      $16777215, %edx
	jl        LBB0_6
LBB0_12:
	movq      %rbx, %rax
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_ellrootno_2:
	pushq     %r14
Ltmp13:
	pushq     %rbx
Ltmp14:
	subq      $88, %rsp
Ltmp15:
Ltmp16:
Ltmp17:
	movq      %rdi, %rbx
	leaq      56(%rsp), %rax
	movq      %rax, 16(%rsp)
	leaq      48(%rsp), %rax
	movq      %rax, 8(%rsp)
	leaq      64(%rsp), %rax
	movq      %rax, (%rsp)
	leaq      40(%rsp), %rcx
	leaq      72(%rsp), %r8
	leaq      32(%rsp), %r9
	movl      $2, %esi
	movl      $64, %edx
	xorl      %eax, %eax
	call      _val_init
	movl      $1, %eax
	cmpq      $0, 48(%rsp)
	je        LBB1_54
	leaq      80(%rsp), %rdx
	movl      $2, %esi
	movq      %rbx, %rdi
	call      _neron
	movq      %rax, %rdi
	movq      80(%rsp), %rcx
	cmpq      $5, %rcx
	jl        LBB1_3
	movq      16(%rbx), %rdi
	movl      $2, %esi
	call      _umodiu
	movq      %rax, %r14
	movq      24(%rbx), %rdi
	movl      $2, %esi
	call      _umodiu
	addl      %r14d, %eax
	addl      %eax, %eax
	andq      $2, %rax
	decq      %rax
	jmp       LBB1_54
LBB1_3:
	cmpq      $-10, %rcx
	jg        LBB1_6
	movq      $-1, %rax
	cmpq      $2, %rdi
	jne       LBB1_54
	movq      64(%rsp), %rsi
LBB1_21:
	movq      $-1, %rdi
LBB1_22:
	call      _kross
	negq      %rax
	jmp       LBB1_54
LBB1_6:
	movl      $1, %eax
	addq      $9, %rcx
	cmpq      $12, %rcx
	ja        LBB1_14
	movq      72(%rsp), %rsi
	movq      64(%rsp), %rdx
	leaq      (%rsi,%rdx,2), %r8
	leaq      LJTI1_0(%rip), %rbx
	movslq    (%rbx,%rcx,4), %rcx
	addq      %rbx, %rcx
	jmp       *%rcx
LBB1_75:
	movq      $-1, %rax
	cmpq      $2, %rdi
	jne       LBB1_54
	movq      56(%rsp), %rsi
	jmp       LBB1_21
LBB1_73:
	movq      $-1, %rax
	cmpq      $2, %rdi
	jne       LBB1_54
	imulq     56(%rsp), %rdx
	jmp       LBB1_18
LBB1_67:
	movl      $1, %eax
	cmpq      $1, %rdi
	je        LBB1_54
	jmp       LBB1_68
LBB1_61:
	movl      $1, %eax
	cmpq      $1, %rdi
	je        LBB1_54
	cmpq      $3, %rdi
	jne       LBB1_63
	movq      %rsi, %rax
	sarq      $63, %rax
	shrq      $60, %rax
	addq      %rsi, %rax
	andq      $-16, %rax
	movq      %rsi, %rcx
	subq      %rax, %rcx
	movl      $1, %eax
	cmpq      $11, %rcx
	je        LBB1_54
	leaq      (%rsi,%rdx,4), %rax
	movq      %rax, %rcx
	sarq      $63, %rcx
	shrq      $60, %rcx
	addq      %rax, %rcx
	andq      $-16, %rcx
	subq      %rcx, %rax
	cmpq      $3, %rax
	jmp       LBB1_30
LBB1_58:
	cmpq      $1, %rdi
	jne       LBB1_60
	movq      %r8, %rax
	sarq      $63, %rax
	shrq      $59, %rax
	addq      %r8, %rax
	andq      $-32, %rax
	subq      %rax, %r8
	cmpq      $23, %r8
	jmp       LBB1_30
LBB1_48:
	decq      %rdi
	cmpq      $3, %rdi
	jbe       LBB1_49
LBB1_60:
	leaq      (%rdx,%rsi,2), %rsi
	movl      $2, %edi
	jmp       LBB1_22
LBB1_46:
	cmpq      $1, %rdi
	jne       LBB1_18
	movq      $-2, %rdi
	jmp       LBB1_19
LBB1_37:
	decq      %rdi
	cmpq      $3, %rdi
	ja        LBB1_18
	leaq      LJTI1_2(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
LBB1_39:
	movl      $2, %edi
	movq      %r8, %rsi
	jmp       LBB1_22
LBB1_8:
	decq      %rdi
	cmpq      $4, %rdi
	ja        LBB1_18
	leaq      LJTI1_4(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
LBB1_10:
	movl      $1, %eax
	movq      40(%rsp), %rcx
	cmpq      $5, %rcx
	je        LBB1_54
	cmpq      $4, %rcx
	jne       LBB1_14
	movq      $-1, %rdi
	call      _kross
	jmp       LBB1_54
LBB1_23:
	decq      %rdi
	cmpq      $4, %rdi
	ja        LBB1_18
	leaq      LJTI1_3(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
LBB1_25:
	imulq     %rsi, %rdx
LBB1_26:
	movl      $2, %edi
	movq      %rdx, %rsi
	jmp       LBB1_22
LBB1_49:
	leaq      LJTI1_1(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
LBB1_50:
	addq      %rdx, %rdx
	subq      %rdx, %rsi
	movq      %rsi, %rax
	sarq      $63, %rax
	shrq      $58, %rax
	addq      %rsi, %rax
	andq      $-64, %rax
	movq      %rsi, %rcx
	subq      %rax, %rcx
	addq      $64, %rcx
	subq      %rax, %rsi
	cmovs     %rcx, %rsi
	movl      $1, %eax
	cmpq      $3, %rsi
	je        LBB1_54
	cmpq      $19, %rsi
	jmp       LBB1_30
LBB1_63:
	cmpq      $2, %rdi
	jne       LBB1_68
	movl      $1, %eax
	cmpq      $10, 32(%rsp)
	jne       LBB1_14
	jmp       LBB1_54
LBB1_68:
	movq      32(%rsp), %rax
	leal      -8(%rax), %ecx
	shlq      %cl, %rdx
	addl      %edx, %esi
	andq      $15, %rsi
	cmpq      $10, %rax
	jne       LBB1_71
	movl      $1, %eax
	cmpq      $9, %rsi
	je        LBB1_54
	cmpq      $13, %rsi
	jmp       LBB1_30
LBB1_71:
	movl      $1, %eax
	cmpq      $9, %rsi
	je        LBB1_54
	cmpq      $5, %rsi
	jmp       LBB1_30
LBB1_33:
	cmpq      $8, 32(%rsp)
	jne       LBB1_36
	movl      $2, %edi
	jmp       LBB1_35
LBB1_40:
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	subq      %rax, %rdx
	movl      $1, %eax
	cmpq      $7, %rdx
	je        LBB1_54
	movq      %r8, %rax
	sarq      $63, %rax
	shrq      $59, %rax
	addq      %r8, %rax
	andq      $-32, %rax
	subq      %rax, %r8
	cmpq      $11, %r8
	jmp       LBB1_30
LBB1_42:
	movl      $1, %eax
	cmpq      $6, 40(%rsp)
	jne       LBB1_14
	jmp       LBB1_54
LBB1_43:
	movq      40(%rsp), %rcx
	cmpq      $7, %rcx
	jge       LBB1_18
	movq      $-1, %rax
	cmpq      $6, %rcx
	jne       LBB1_54
	imulq     %rsi, %rdx
	movq      $-1, %rdi
	movq      %rdx, %rsi
	jmp       LBB1_22
LBB1_52:
	movq      $-1, %rdi
	call      _kross
	leaq      (%rax,%rax), %rdi
	movq      64(%rsp), %rsi
	call      _kross
	jmp       LBB1_54
LBB1_53:
	movq      $-1, %rdi
	call      _kross
	movq      %rax, %rbx
	negq      %rbx
	movq      72(%rsp), %rsi
	movq      $-1, %rdi
	call      _kross
	leaq      (%rax,%rax), %rdi
	negq      %rdi
	movq      64(%rsp), %rsi
	imulq     72(%rsp), %rsi
	call      _kross
	imulq     %rbx, %rax
	jmp       LBB1_54
LBB1_55:
	cmpq      $11, 32(%rsp)
	jne       LBB1_57
	movq      $-2, %rdi
LBB1_35:
	movq      %r8, %rsi
	call      _kross
	jmp       LBB1_54
LBB1_13:
	movl      $1, %eax
	cmpq      $7, 32(%rsp)
	je        LBB1_54
LBB1_14:
	movq      $-1, %rax
	jmp       LBB1_54
LBB1_15:
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	movq      %rdx, %rcx
	subq      %rax, %rcx
	movl      $1, %eax
	cmpq      $5, %rcx
	je        LBB1_54
	imulq     %rsi, %rdx
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	subq      %rax, %rdx
	cmpq      $5, %rdx
	jmp       LBB1_30
LBB1_17:
	movq      40(%rsp), %rcx
	cmpq      $6, %rcx
	jl        LBB1_20
LBB1_18:
	movq      $-1, %rdi
LBB1_19:
	movq      %rdx, %rsi
	call      _kross
	jmp       LBB1_54
LBB1_28:
	movl      32(%rsp), %ecx
	addl      $-5, %ecx
	shlq      %cl, %rdx
	subl      %edx, %esi
	andq      $15, %rsi
	movl      $1, %eax
	cmpq      $7, %rsi
	je        LBB1_54
	cmpq      $11, %rsi
	jmp       LBB1_30
LBB1_31:
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	movq      %rdx, %rcx
	subq      %rax, %rcx
	movl      $1, %eax
	cmpq      $3, %rcx
	je        LBB1_54
	leaq      (%rdx,%rsi,2), %rax
	movq      %rax, %rcx
	sarq      $63, %rcx
	shrq      $61, %rcx
	addq      %rax, %rcx
	andq      $-8, %rcx
	subq      %rcx, %rax
	cmpq      $7, %rax
LBB1_30:
	movl      $1, %ecx
	movq      $-1, %rax
	cmove     %rcx, %rax
LBB1_54:
	addq      $88, %rsp
	popq      %rbx
	popq      %r14
	ret       
LBB1_36:
	movq      $-2, %rdi
	call      _kross
	jmp       LBB1_54
LBB1_57:
	movq      $-2, %rdi
	jmp       LBB1_22
LBB1_20:
	movq      $-1, %rax
	cmpq      $5, %rcx
	jne       LBB1_54
	jmp       LBB1_21
	.align 2, 0x90
LJTI1_0:
	.long	L1_0_set_75
	.long	L1_0_set_73
	.long	L1_0_set_67
	.long	L1_0_set_61
	.long	L1_0_set_58
	.long	L1_0_set_14
	.long	L1_0_set_48
	.long	L1_0_set_46
	.long	L1_0_set_37
	.long	L1_0_set_14
	.long	L1_0_set_54
	.long	L1_0_set_8
	.long	L1_0_set_23
LJTI1_1:
	.long	L1_1_set_50
	.long	L1_1_set_52
	.long	L1_1_set_53
	.long	L1_1_set_55
LJTI1_2:
	.long	L1_2_set_39
	.long	L1_2_set_40
	.long	L1_2_set_42
	.long	L1_2_set_43
LJTI1_3:
	.long	L1_3_set_25
	.long	L1_3_set_26
	.long	L1_3_set_28
	.long	L1_3_set_31
	.long	L1_3_set_33
LJTI1_4:
	.long	L1_4_set_10
	.long	L1_4_set_13
	.long	L1_4_set_15
	.long	L1_4_set_17
	.long	L1_4_set_33
	.align 4, 0x90
_ellrootno_3:
	pushq     %r15
Ltmp18:
	pushq     %r14
Ltmp19:
	pushq     %r13
Ltmp20:
	pushq     %r12
Ltmp21:
	pushq     %rbx
Ltmp22:
	subq      $80, %rsp
Ltmp23:
Ltmp24:
Ltmp25:
Ltmp26:
Ltmp27:
Ltmp28:
	movq      %rdi, %rbx
	leaq      48(%rsp), %rax
	movq      %rax, 16(%rsp)
	leaq      40(%rsp), %rax
	movq      %rax, 8(%rsp)
	leaq      56(%rsp), %rax
	movq      %rax, (%rsp)
	leaq      32(%rsp), %rcx
	leaq      64(%rsp), %r8
	leaq      24(%rsp), %r9
	movl      $3, %esi
	movl      $81, %edx
	xorl      %eax, %eax
	call      _val_init
	movl      $1, %eax
	cmpq      $0, 40(%rsp)
	je        LBB2_28
	leaq      72(%rsp), %rdx
	movl      $3, %esi
	movq      %rbx, %rdi
	call      _neron
	movq      %rax, %r15
	movq      56(%rsp), %rdi
	movl      $3, %esi
	call      _kross
	movq      %rax, %r12
	movq      72(%rsp), %rbx
	cmpq      $4, %rbx
	jle       LBB2_3
	movq      %r12, %rax
	jmp       LBB2_28
LBB2_3:
	movq      56(%rsp), %r14
	movq      $2049638230412172402, %rcx
	movq      %r14, %rax
	imulq     %rcx
	movq      %rdx, %r13
	movq      64(%rsp), %rdi
	movl      $3, %esi
	call      _kross
	movq      %rax, %rcx
	movl      $1, %eax
	addq      $4, %rbx
	cmpq      $8, %rbx
	ja        LBB2_27
	movq      %r13, %rdx
	shrq      $63, %rdx
	addq      %r13, %rdx
	leaq      (%rdx,%rdx,8), %rdx
	subq      %rdx, %r14
	leaq      LJTI2_0(%rip), %rdx
	movslq    (%rdx,%rbx,4), %rsi
	addq      %rdx, %rsi
	jmp       *%rsi
LBB2_16:
	decq      %r15
	cmpq      $3, %r15
	jbe       LBB2_17
LBB2_27:
	movq      $-1, %rax
LBB2_28:
	addq      $80, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
LBB2_5:
	movl      $1, %eax
	leaq      -1(%r15), %rdx
	cmpq      $3, %rdx
	ja        LBB2_15
	leaq      LJTI2_2(%rip), %rsi
	movslq    (%rsi,%rdx,4), %rdx
	addq      %rsi, %rdx
	jmp       *%rdx
LBB2_7:
	movl      $1, %eax
	cmpq      $4, %r14
	je        LBB2_28
	cmpq      $6, %r14
	movl      $1, %ecx
	movq      $-1, %rax
	cmovg     %rcx, %rax
	jmp       LBB2_28
LBB2_10:
	cmpq      $3, %r15
	je        LBB2_24
	cmpq      $2, %r15
	jne       LBB2_12
	negq      %rcx
	movq      %rcx, %rax
	jmp       LBB2_28
LBB2_17:
	leaq      LJTI2_1(%rip), %rax
	movslq    (%rax,%r15,4), %rcx
	addq      %rax, %rcx
	movq      %r12, %rax
	jmp       *%rcx
LBB2_18:
	cmpq      $4, 32(%rsp)
	jne       LBB2_22
	movl      $1, %eax
	cmpq      $4, %r14
	je        LBB2_28
	cmpq      $8, %r14
	jmp       LBB2_21
LBB2_24:
	negq      %r12
	movq      %r12, %rax
	jmp       LBB2_28
LBB2_12:
	cmpq      $1, %r15
	jne       LBB2_15
	movq      48(%rsp), %rdi
	movl      $3, %esi
	call      _kross
	imulq     %r12, %rax
	jmp       LBB2_28
LBB2_15:
	cmpq      $2, %r15
	movl      $1, %eax
	cmove     %rax, %r12
	movq      %r12, %rax
	jmp       LBB2_28
LBB2_9:
	negq      %r12
	imulq     %r12, %rcx
	movq      %rcx, %rax
	jmp       LBB2_28
LBB2_25:
	movl      $1, %eax
	cmpq      $2, %r14
	je        LBB2_28
	cmpq      $7, %r14
	jmp       LBB2_21
LBB2_22:
	movl      $1, %eax
	cmpq      $1, %r14
	je        LBB2_28
	cmpq      $2, %r14
LBB2_21:
	movl      $1, %ecx
	movq      $-1, %rax
	cmove     %rcx, %rax
	jmp       LBB2_28
	.align 2, 0x90
LJTI2_0:
	.long	L2_0_set_16
	.long	L2_0_set_28
	.long	L2_0_set_15
	.long	L2_0_set_27
	.long	L2_0_set_27
	.long	L2_0_set_28
	.long	L2_0_set_5
	.long	L2_0_set_28
	.long	L2_0_set_10
LJTI2_1:
	.long	L2_1_set_18
	.long	L2_1_set_24
	.long	L2_1_set_25
	.long	L2_1_set_28
LJTI2_2:
	.long	L2_2_set_7
	.long	L2_2_set_9
	.long	L2_2_set_28
	.long	L2_2_set_24
	.align 4, 0x90
_ellrootno_p:
	pushq     %rbp
Ltmp29:
	pushq     %r15
Ltmp30:
	pushq     %r14
Ltmp31:
	pushq     %r13
Ltmp32:
	pushq     %r12
Ltmp33:
	pushq     %rbx
Ltmp34:
	pushq     %rax
Ltmp35:
Ltmp36:
Ltmp37:
Ltmp38:
Ltmp39:
Ltmp40:
Ltmp41:
	movq      %rsi, %rbp
	movq      %rdi, %rbx
	movl      $1, %eax
	testq     %rdx, %rdx
	je        LBB3_18
	cmpq      $1, %rdx
	jne       LBB3_19
	movq      88(%rbx), %rbx
	movq      (%rbx), %r10
	movq      %r10, %r13
	andq      $16777215, %r13
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %r12
	leaq      0(,%r13,8), %rax
	movq      %r12, %r14
	subq      %rax, %r14
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %r12, %rcx
	subq      (%rax), %rcx
	shrq      $3, %rcx
	cmpq      %r13, %rcx
	jae       LBB3_4
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r14, (%rsp)
	movq      %r10, %r14
	call      _pari_err
	movq      %r14, %r10
	movq      (%rsp), %r14
LBB3_4:
	movq      %r14, (%r15)
	movq      $-16777217, %rax
	andq      (%rbx), %rax
	movq      %rax, (%r14)
	cmpq      $2, %r13
	jb        LBB3_15
	movq      %r10, %rcx
	andq      $16777215, %rcx
	movq      %rcx, %rdi
	negq      %rdi
	cmpq      $-3, %rdi
	movq      $-2, %rsi
	movq      $-2, %rax
	cmovg     %rdi, %rax
	addq      %rcx, %rax
	cmpq      $-1, %rax
	movq      %r13, %rdx
	je        LBB3_13
	incq      %rax
	cmpq      $-3, %rdi
	cmovg     %rdi, %rsi
	xorl      %r9d, %r9d
	movq      %rax, %r8
	andq      $-4, %r8
	movq      %r13, %rdx
	je        LBB3_12
	movq      %rsi, %rdx
	notq      %rdx
	leaq      (%rbx,%rdx,8), %r11
	leaq      -8(%r12), %rdx
	xorl      %r9d, %r9d
	cmpq      %r11, %rdx
	ja        LBB3_9
	leaq      -8(%rbx,%rcx,8), %rdx
	addq      %rcx, %rsi
	notq      %rsi
	leaq      (%r12,%rsi,8), %rsi
	cmpq      %rsi, %rdx
	movq      %r13, %rdx
	jbe       LBB3_12
LBB3_9:
	movq      %r13, %rdx
	subq      %r8, %rdx
	cmpq      $-3, %rdi
	movq      $-2, %rsi
	cmovg     %rdi, %rsi
	leaq      1(%rsi,%rcx), %rsi
	andq      $-4, %rsi
	movdqa    LCPI3_0(%rip), %xmm0
	.align 4, 0x90
LBB3_10:
	movd      %rcx, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm0, %xmm1
	movd      %xmm1, %rdi
	movups    -8(%rbx,%rdi,8), %xmm1
	movups    -24(%rbx,%rdi,8), %xmm2
	subq      %r13, %rdi
	movups    %xmm1, -8(%r12,%rdi,8)
	movups    %xmm2, -24(%r12,%rdi,8)
	addq      $-4, %rcx
	addq      $-4, %rsi
	jne       LBB3_10
	movq      %r8, %r9
LBB3_12:
	cmpq      %r9, %rax
	je        LBB3_15
LBB3_13:
	notl      %r10d
	movq      $2305843009196916736, %rax
	orq       %r10, %rax
	leaq      (%r12,%rax,8), %rax
	.align 4, 0x90
LBB3_14:
	movq      -8(%rbx,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	leaq      -1(%rdx), %rdx
	cmpq      $1, %rdx
	jg        LBB3_14
LBB3_15:
	movl      $1, %eax
	subq      %r13, %rax
	movq      (%r12,%rax,8), %rcx
	cmpq      $1073741824, %rcx
	jb        LBB3_17
	movl      $2147483648, %edx
	xorq      %rdx, %rcx
	movq      %rcx, (%r12,%rax,8)
LBB3_17:
	movq      %r14, %rdi
	movq      %rbp, %rsi
	call      _kronecker
	negq      %rax
LBB3_18:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB3_19:
	movq      104(%rbx), %r15
	movq      %r15, %rdi
	call      _gequal0
	testl     %eax, %eax
	jne       LBB3_23
	movq      %r15, %rdi
	movq      %rbp, %rsi
	call      _Q_pval
	testq     %rax, %rax
	js        LBB3_21
LBB3_23:
	movq      96(%rbx), %rdi
	movq      %rbp, %rsi
	call      _Z_pval
	movl      $12, %edi
	movq      %rax, %rsi
	call      _ugcd
	movq      %rax, %rcx
	movl      $12, %eax
	xorl      %edx, %edx
	divq      %rcx
	movl      $2, %edi
	cmpq      $4, %rax
	je        LBB3_25
	andq      $1, %rax
	leaq      1(%rax,%rax), %rdi
LBB3_25:
	negq      %rdi
LBB3_22:
	movq      %rbp, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _krosi
LBB3_21:
	movq      $-1, %rdi
	jmp       LBB3_22
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LCPI3_0:
	.quad	-1
	.quad	-2
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_ellrootno
_ellrootno:
	pushq     %rbp
Ltmp42:
	pushq     %r15
Ltmp43:
	pushq     %r14
Ltmp44:
	pushq     %r13
Ltmp45:
	pushq     %r12
Ltmp46:
	pushq     %rbx
Ltmp47:
	pushq     %rax
Ltmp48:
Ltmp49:
Ltmp50:
Ltmp51:
Ltmp52:
Ltmp53:
Ltmp54:
	movq      %rsi, %r12
	movq      %rdi, %rbx
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rbp
	call      _checksmallell
	leaq      (%rsp), %rsi
	movq      %rbx, %rdi
	call      _ell_to_small_red
	movq      %rax, %r14
	testq     %r12, %r12
	je        LBB4_2
	movq      %r12, %rdi
	call      _gequal1
	testl     %eax, %eax
	je        LBB4_3
LBB4_2:
	movq      (%rsp), %rsi
	movq      %r14, %rdi
	call      _ellrootno_global
LBB4_17:
	movq      %rax, %r15
LBB4_18:
	movq      %rbp, (%r13)
	movq      %r15, %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB4_3:
	movq      $-33554432, %rax
	andq      (%r12), %rax
	cmpq      $33554432, %rax
	jne       LBB4_5
	movq      8(%r12), %rax
	testq     %rax, %rax
	jns       LBB4_6
LBB4_5:
	leaq      L_.str(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
	movq      8(%r12), %rax
LBB4_6:
	andq      $16777215, %rax
	cmpq      $2, %rax
	je        LBB4_10
	cmpq      $3, %rax
	ja        LBB4_9
	cmpq      $4, 16(%r12)
	jb        LBB4_10
LBB4_9:
	movq      (%rsp), %rdi
	movq      %r12, %rsi
	call      _Z_pval
	movq      %r14, %rdi
	movq      %r12, %rsi
	movq      %rax, %rdx
	call      _ellrootno_p
	jmp       LBB4_17
LBB4_10:
	movl      $16777215, %eax
	andq      8(%r12), %rax
	movq      $-1, %r15
	cmpq      $2, %rax
	je        LBB4_18
	cmpq      $3, %rax
	jne       LBB4_12
	movq      16(%r12), %rax
	cmpq      $3, %rax
	jne       LBB4_14
	movq      %r14, %rdi
	call      _ellrootno_3
	jmp       LBB4_17
LBB4_12:
	leaq      L_.str2(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
	jmp       LBB4_18
LBB4_14:
	cmpq      $2, %rax
	jne       LBB4_18
	movq      %r14, %rdi
	call      _ellrootno_2
	jmp       LBB4_17
	.align 4, 0x90
_neron:
	pushq     %rbp
Ltmp55:
	pushq     %r15
Ltmp56:
	pushq     %r14
Ltmp57:
	pushq     %r13
Ltmp58:
	pushq     %r12
Ltmp59:
	pushq     %rbx
Ltmp60:
	pushq     %rax
Ltmp61:
Ltmp62:
Ltmp63:
Ltmp64:
Ltmp65:
Ltmp66:
Ltmp67:
	movq      %rdx, %r14
	movq      %rsi, %r13
	movq      %rdi, %rbx
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, (%rsp)
	movq      16, %rcx
	movq      8(%rcx), %rax
	xorl      %r15d, %r15d
	movq      %rax, %rbp
	sarq      $30, %rbp
	je        LBB5_5
	movq      16(%rcx), %r12
	andq      $16777212, %rax
	cmpq      $3, %rax
	ja        LBB5_3
	testq     %r12, %r12
	jns       LBB5_4
LBB5_3:
	leaq      L_.str1(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB5_4:
	movq      %r12, %r15
	negq      %r15
	testq     %rbp, %rbp
	cmovg     %r12, %r15
LBB5_5:
	movq      %r15, (%r14)
	movq      80(%rbx), %rbp
	movq      88(%rbx), %r14
	movq      96(%rbx), %r12
	movq      %rbp, %rdi
	call      _gequal0
	movl      $12, %ebx
	testl     %eax, %eax
	jne       LBB5_7
	movq      %rbp, %rdi
	movq      %r13, %rsi
	call      _Z_lval
	movq      %rax, %rbx
LBB5_7:
	movq      %r14, %rdi
	call      _gequal0
	movl      $12, %ebp
	testl     %eax, %eax
	jne       LBB5_9
	movq      %r14, %rdi
	movq      %r13, %rsi
	call      _Z_lval
	movq      %rax, %rbp
LBB5_9:
	movq      %r12, %rdi
	movq      %r13, %rsi
	call      _Z_lval
	movq      %rax, %rcx
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rsp), %rdx
	movq      %rdx, (%rax)
	cmpq      $2, %r13
	jne       LBB5_40
	movl      $1, %eax
	cmpq      $4, %r15
	jg        LBB5_54
	addq      $7, %r15
	cmpq      $11, %r15
	ja        LBB5_35
	leaq      LJTI5_0(%rip), %rax
	movslq    (%rax,%r15,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
LBB5_39:
	movl      $2, %eax
	cmpq      $12, %rcx
	jne       LBB5_35
	jmp       LBB5_54
LBB5_40:
	movq      %r15, %rdx
	negq      %rdx
	cmovl     %r15, %rdx
	movl      $1, %eax
	cmpq      $4, %rdx
	jg        LBB5_54
	addq      $4, %r15
	cmpq      $7, %r15
	ja        LBB5_51
	movl      $65, %eax
	btq       %r15, %rax
	jb        LBB5_47
	movl      $130, %eax
	btq       %r15, %rax
	jae       LBB5_44
	addq      %rbp, %rbp
	addq      $3, %rcx
	cmpq      %rcx, %rbp
	jmp       LBB5_14
LBB5_47:
	movq      $3074457345618258603, %rdx
	movq      %rcx, %rax
	imulq     %rdx
	movq      %rdx, %rax
	shrq      $63, %rax
	addq      %rdx, %rax
	addq      %rax, %rax
	leaq      (%rax,%rax,2), %rax
	subq      %rax, %rcx
	movl      $3, %eax
	cmpq      $4, %rcx
	je        LBB5_54
	cmpq      $5, %rcx
	jne       LBB5_50
	movl      $4, %eax
	jmp       LBB5_54
LBB5_44:
	movl      $40, %eax
	btq       %r15, %rax
	jae       LBB5_51
	andq      $1, %rbx
	incq      %rbx
	movq      %rbx, %rax
	jmp       LBB5_54
LBB5_51:
	movq      $3074457345618258603, %rdx
	movq      %rcx, %rax
	imulq     %rdx
	movq      %rdx, %rax
	shrq      $63, %rax
	addq      %rdx, %rax
	addq      %rax, %rax
	leaq      (%rax,%rax,2), %rax
	movq      %rcx, %rdx
	subq      %rax, %rdx
	cmpq      $1, %rdx
	sete      %dl
	cmpq      %rax, %rcx
	movzbl    %dl, %eax
	leaq      1(%rax,%rax), %rcx
	movl      $2, %eax
	cmovne    %rcx, %rax
	jmp       LBB5_54
LBB5_36:
	movl      $2, %eax
	cmpq      $12, %rcx
	je        LBB5_54
	cmpq      $13, %rcx
	jne       LBB5_35
	movl      $3, %eax
	jmp       LBB5_54
LBB5_34:
	movl      $2, %eax
	cmpq      $7, %rbp
	je        LBB5_54
LBB5_35:
	cmpq      $6, %rbx
	sete      %al
	jmp       LBB5_15
LBB5_33:
	cmpq      $7, %rbp
	sete      %al
	jmp       LBB5_15
LBB5_52:
	movq      %rcx, %rdx
	addq      $-12, %rdx
	movl      $1, %eax
	cmpq      $4, %rdx
	jae       LBB5_54
	leaq      l_switch.table(%rip), %rax
	movq      -96(%rax,%rcx,8), %rax
	jmp       LBB5_54
LBB5_32:
	cmpq      $14, %rcx
	sete      %al
	movzbl    %al, %eax
	leaq      1(%rax,%rax), %rdx
	cmpq      $12, %rcx
	movl      $2, %eax
	cmovne    %rdx, %rax
	jmp       LBB5_54
LBB5_28:
	movl      $2, %eax
	cmpq      $9, %rcx
	je        LBB5_54
	cmpq      $10, %rcx
	jne       LBB5_31
	movl      $4, %eax
	jmp       LBB5_54
LBB5_13:
	testq     %rbp, %rbp
	jmp       LBB5_14
LBB5_16:
	movl      $1, %eax
	cmpq      $4, %rcx
	je        LBB5_54
	cmpq      $7, %rcx
	jne       LBB5_19
	movl      $3, %eax
	jmp       LBB5_54
LBB5_20:
	movl      $3, %eax
	cmpq      $6, %rcx
	je        LBB5_54
	cmpq      $9, %rcx
	jne       LBB5_22
	movl      $5, %eax
	jmp       LBB5_54
LBB5_27:
	cmpq      $4, %rbx
LBB5_14:
	setg      %al
LBB5_15:
	movzbl    %al, %eax
	incq      %rax
LBB5_54:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB5_50:
	movq      $6148914691236517206, %rcx
	movq      %rbp, %rax
	imulq     %rcx
	movq      %rdx, %rax
	shrq      $63, %rax
	addq      %rdx, %rax
	leaq      (%rax,%rax,2), %rax
	subq      %rax, %rbp
	cmpq      $1, %rbp
	sete      %al
	jmp       LBB5_15
LBB5_22:
	cmpq      $8, %rcx
	jne       LBB5_25
	movl      $4, %eax
	jmp       LBB5_54
LBB5_31:
	cmpq      $4, %rbx
	setg      %al
	movzbl    %al, %eax
	leaq      1(%rax,%rax), %rax
	jmp       LBB5_54
LBB5_19:
	cmpq      $4, %rbx
	setne     %al
	movzbl    %al, %eax
	leaq      2(%rax,%rax), %rax
	jmp       LBB5_54
LBB5_25:
	cmpq      $5, %rbx
	sete      %al
	jmp       LBB5_15
	.align 2, 0x90
LJTI5_0:
	.long	L5_0_set_39
	.long	L5_0_set_36
	.long	L5_0_set_34
	.long	L5_0_set_33
	.long	L5_0_set_52
	.long	L5_0_set_32
	.long	L5_0_set_28
	.long	L5_0_set_35
	.long	L5_0_set_13
	.long	L5_0_set_16
	.long	L5_0_set_20
	.long	L5_0_set_27
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"ellrootno"
L_.str1:
	.asciz	"t_INT-->long assignment"
L_.str2:
	.asciz	"t_INT-->ulong assignment"
# ----------------------
	.section       __TEXT,__const
	.align 4
l_switch.table:
	.quad	2
	.quad	1
	.quad	3
	.quad	4
# ----------------------
	.set	L1_0_set_75,LBB1_75-LJTI1_0
	.set	L1_0_set_73,LBB1_73-LJTI1_0
	.set	L1_0_set_67,LBB1_67-LJTI1_0
	.set	L1_0_set_61,LBB1_61-LJTI1_0
	.set	L1_0_set_58,LBB1_58-LJTI1_0
	.set	L1_0_set_14,LBB1_14-LJTI1_0
	.set	L1_0_set_48,LBB1_48-LJTI1_0
	.set	L1_0_set_46,LBB1_46-LJTI1_0
	.set	L1_0_set_37,LBB1_37-LJTI1_0
	.set	L1_0_set_54,LBB1_54-LJTI1_0
	.set	L1_0_set_8,LBB1_8-LJTI1_0
	.set	L1_0_set_23,LBB1_23-LJTI1_0
	.set	L1_1_set_50,LBB1_50-LJTI1_1
	.set	L1_1_set_52,LBB1_52-LJTI1_1
	.set	L1_1_set_53,LBB1_53-LJTI1_1
	.set	L1_1_set_55,LBB1_55-LJTI1_1
	.set	L1_2_set_39,LBB1_39-LJTI1_2
	.set	L1_2_set_40,LBB1_40-LJTI1_2
	.set	L1_2_set_42,LBB1_42-LJTI1_2
	.set	L1_2_set_43,LBB1_43-LJTI1_2
	.set	L1_3_set_25,LBB1_25-LJTI1_3
	.set	L1_3_set_26,LBB1_26-LJTI1_3
	.set	L1_3_set_28,LBB1_28-LJTI1_3
	.set	L1_3_set_31,LBB1_31-LJTI1_3
	.set	L1_3_set_33,LBB1_33-LJTI1_3
	.set	L1_4_set_10,LBB1_10-LJTI1_4
	.set	L1_4_set_13,LBB1_13-LJTI1_4
	.set	L1_4_set_15,LBB1_15-LJTI1_4
	.set	L1_4_set_17,LBB1_17-LJTI1_4
	.set	L1_4_set_33,LBB1_33-LJTI1_4
	.set	L2_0_set_16,LBB2_16-LJTI2_0
	.set	L2_0_set_28,LBB2_28-LJTI2_0
	.set	L2_0_set_15,LBB2_15-LJTI2_0
	.set	L2_0_set_27,LBB2_27-LJTI2_0
	.set	L2_0_set_5,LBB2_5-LJTI2_0
	.set	L2_0_set_10,LBB2_10-LJTI2_0
	.set	L2_1_set_18,LBB2_18-LJTI2_1
	.set	L2_1_set_24,LBB2_24-LJTI2_1
	.set	L2_1_set_25,LBB2_25-LJTI2_1
	.set	L2_1_set_28,LBB2_28-LJTI2_1
	.set	L2_2_set_7,LBB2_7-LJTI2_2
	.set	L2_2_set_9,LBB2_9-LJTI2_2
	.set	L2_2_set_28,LBB2_28-LJTI2_2
	.set	L2_2_set_24,LBB2_24-LJTI2_2
	.set	L5_0_set_39,LBB5_39-LJTI5_0
	.set	L5_0_set_36,LBB5_36-LJTI5_0
	.set	L5_0_set_34,LBB5_34-LJTI5_0
	.set	L5_0_set_33,LBB5_33-LJTI5_0
	.set	L5_0_set_52,LBB5_52-LJTI5_0
	.set	L5_0_set_32,LBB5_32-LJTI5_0
	.set	L5_0_set_28,LBB5_28-LJTI5_0
	.set	L5_0_set_35,LBB5_35-LJTI5_0
	.set	L5_0_set_13,LBB5_13-LJTI5_0
	.set	L5_0_set_16,LBB5_16-LJTI5_0
	.set	L5_0_set_20,LBB5_20-LJTI5_0
	.set	L5_0_set_27,LBB5_27-LJTI5_0

.subsections_via_symbols
