	.macosx_version_min 10, 12
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LCPI0_0:
	.quad	4619567317775286272
LCPI0_1:
	.quad	4584664420663164928
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_polgalois
_polgalois:
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
	subq      $120, %rsp
Ltmp6:
Ltmp7:
Ltmp8:
Ltmp9:
Ltmp10:
Ltmp11:
Ltmp12:
	movq      %rdi, %r13
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      %rax, (%rsp)
	movl      $16777215, %ebx
	andq      (%r13), %rbx
	movq      %rbx, %rax
	addq      $-3, %rax
	movq      %rax, 8(%rsp)
	jg        LBB0_2
	leaq      L_.str(%rip), %rsi
	movl      $21, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_2:
	movq      %r13, %rdi
	call      _ZX_is_irred
	testq     %rax, %rax
	jne       LBB0_4
	leaq      L_.str1(%rip), %rsi
	movl      $7, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_4:
	movq      _LOG2@GOTPCREL(%rip), %rax
	movsd     LCPI0_0(%rip), %xmm0
	divsd     (%rax), %xmm0
	mulsd     LCPI0_1(%rip), %xmm0
	movsd     %xmm0, 16(%rsp)
	addq      $-7, %rbx
	movq      %rbx, 24(%rsp)
	leaq      LJTI0_0(%rip), %rax
	movslq    (%rax,%rbx,4), %rcx
	addq      %rax, %rcx
	movq      %rcx, 32(%rsp)
	movq      _bot@GOTPCREL(%rip), %r12
	jmp       LBB0_5
	.align 4, 0x90
LBB0_40:
	movq      $0, (%r15)
	xorl      %edi, %edi
	call      _tschirnhaus
	movq      %rax, %r13
LBB0_5:
	movq      %r13, 48(%rsp)
	movq      %r13, %rdi
	call      _cauchy_bound
	cmpq      $3, %rbx
	ja        LBB0_40
	jmp       *32(%rsp)
LBB0_7:
	movsd     %xmm0, 104(%rsp)
	movq      (%r15), %rax
	leaq      -56(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $55, %rax
	ja        LBB0_9
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
LBB0_9:
	movq      %rbx, (%r15)
	movq      $570425351, (%rbx)
	movq      %r14, %rdi
	call      _ZX_factor
	movq      8(%rax), %rcx
	movq      (%rcx), %rax
	movl      $16777215, %edx
	andq      %rdx, %rax
	cmpq      $4, %rax
	je        LBB0_17
	cmpq      $3, %rax
	je        LBB0_16
	cmpq      $2, %rax
	je        LBB0_12
	movl      $2, %edi
	xorl      %eax, %eax
	leaq      L_.str2(%rip), %rsi
	call      _pari_err
	movsd     104(%rsp), %xmm0
LBB0_21:
	movq      (%r15), %rax
	leaq      -56(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $55, %rax
	ja        LBB0_23
	movl      $14, %edi
	xorl      %eax, %eax
	movsd     %xmm0, 104(%rsp)
	call      _pari_err
	movsd     104(%rsp), %xmm0
LBB0_23:
	movq      %rbx, (%r15)
	movq      $570425351, (%rbx)
LBB0_24:
	movq      (%r15), %rax
	leaq      -56(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $55, %rax
	ja        LBB0_26
	movl      $14, %edi
	xorl      %eax, %eax
	movsd     %xmm0, 104(%rsp)
	call      _pari_err
	movsd     104(%rsp), %xmm0
LBB0_26:
	movq      %rbx, (%r15)
	movq      $570425351, (%rbx)
LBB0_27:
	movq      (%r15), %rbp
	leaq      -288(%rbp), %rbx
	movq      %rbp, %rax
	subq      (%r12), %rax
	cmpq      $287, %rax
	ja        LBB0_29
	movl      $14, %edi
	xorl      %eax, %eax
	movsd     %xmm0, 104(%rsp)
	call      _pari_err
	movsd     104(%rsp), %xmm0
LBB0_29:
	movq      %rbx, (%r15)
	movq      %rbx, 40(%rsp)
	movq      $570425380, -288(%rbp)
	mulsd     16(%rsp), %xmm0
	cvttsd2si %xmm0, %rsi
	addq      $3, %rsi
	addq      $-280, %rbp
	movq      %rbp, 80(%rsp)
	jmp       LBB0_30
	.align 4, 0x90
LBB0_41:
	movq      56(%rsp), %rsi
	leaq      -2(%rsi,%rsi), %rsi
	movq      48(%rsp), %r13
LBB0_30:
	movq      %rsi, 56(%rsp)
	movq      %r13, %rdi
	call      _cleanroots
	movq      %rax, %r15
	movq      %r15, 88(%rsp)
	movl      $5, %r13d
	movl      $1, %ecx
	xorl      %r14d, %r14d
	.align 4, 0x90
LBB0_32:
	movq      %r13, 72(%rsp)
	movq      %rcx, 96(%rsp)
	leaq      1(%rcx), %r12
	movq      %r12, 64(%rsp)
	.align 4, 0x90
LBB0_34:
	incq      %r13
	movq      96(%rsp), %rbp
	.align 4, 0x90
LBB0_35:
	movq      (%r15,%rbp,8), %rdi
	movq      (%r15,%r12,8), %rsi
	call      _gadd
	movq      %rax, %rbx
	incq      %r12
	decq      %r13
	cmpq      $7, %r12
	jg        LBB0_35
	movq      %r14, 104(%rsp)
	movq      80(%rsp), %rax
	leaq      (%rax,%r14,8), %r14
	leaq      (%r15,%r12,8), %rbp
	movq      $-8, %r15
	.align 4, 0x90
LBB0_37:
	movq      64(%rbp,%r15,8), %rsi
	movq      %rbx, %rdi
	call      _gadd
	movq      %rax, 64(%r14,%r15,8)
	incq      %r15
	movq      %r12, %rax
	addq      %r15, %rax
	jne       LBB0_37
	movq      104(%rsp), %r14
	addq      %r13, %r14
	decq      %r13
	cmpq      $7, %r12
	movq      88(%rsp), %r15
	jne       LBB0_34
	movq      72(%rsp), %r13
	decq      %r13
	movq      64(%rsp), %rcx
	cmpq      $6, %rcx
	jne       LBB0_32
	movq      40(%rsp), %rdi
	leaq      112(%rsp), %rsi
	call      _roots_to_ZX
	movq      %rax, %r14
	cmpq      $-9, 112(%rsp)
	jge       LBB0_41
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      %rbp, %r15
	movq      24(%rsp), %rbx
	movq      _bot@GOTPCREL(%rip), %r12
	jmp       LBB0_40
LBB0_17:
	movq      (%rsp), %rax
	movq      %rax, (%r15)
	movq      8(%rcx), %rax
	movl      $16777215, %ecx
	andq      (%rax), %rcx
	movl      $4, %esi
	cmpq      $5, %rcx
	jne       LBB0_19
	movl      $1, %edx
	movl      $2, %ecx
	jmp       LBB0_14
LBB0_16:
	movq      (%rsp), %rax
	movq      %rax, (%r15)
	movl      $8, %esi
	movq      $-1, %rdx
	movl      $3, %ecx
	jmp       LBB0_14
LBB0_19:
	movq      $-1, %rdx
	movl      $1, %ecx
LBB0_14:
	movq      8(%rsp), %rdi
	call      _galois_res
	addq      $120, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB0_12:
	movq      %r13, %rdi
	call      _ZX_disc
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _Z_issquareall
	movq      (%rsp), %rcx
	movq      %rcx, (%r15)
	testq     %rax, %rax
	je        LBB0_15
	movl      $12, %esi
	movl      $1, %edx
	movl      $4, %ecx
	jmp       LBB0_14
LBB0_15:
	movl      $24, %esi
	movq      $-1, %rdx
	movl      $5, %ecx
	jmp       LBB0_14
	.align 2, 0x90
LJTI0_0:
	.long	L0_0_set_7
	.long	L0_0_set_21
	.long	L0_0_set_24
	.long	L0_0_set_27
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"galois"
L_.str1:
	.asciz	"galois of reducible polynomial"
L_.str2:
	.asciz	"galois (bug1)"
# ----------------------
	.set	L0_0_set_7,LBB0_7-LJTI0_0
	.set	L0_0_set_21,LBB0_21-LJTI0_0
	.set	L0_0_set_24,LBB0_24-LJTI0_0
	.set	L0_0_set_27,LBB0_27-LJTI0_0

.subsections_via_symbols
