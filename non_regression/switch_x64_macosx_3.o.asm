	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_polgalois
_polgalois:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $120, %rsp
	movq      %rdi, %r13
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      %rax, (%rsp)
	movl      $16777215, %ebx
	andq      (%r13), %rbx
	movq      %rbx, %rax
	addq      $-3, %rax
	movq      %rax, 8(%rsp)
	jg        L00000049
L00000036:
	leaq      LC00000428(%rip), %rsi
	movl      $21, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000049:
	movq      %r13, %rdi
	call      _ZX_is_irred
L00000051:
	testq     %rax, %rax
	jne       L00000069
L00000056:
	leaq      LC0000042F(%rip), %rsi
	movl      $7, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000069:
	movq      _LOG2@GOTPCREL(%rip), %rax
	movsd     LC00000418(%rip), %xmm0
	divsd     (%rax), %xmm0
	mulsd     LC00000420(%rip), %xmm0
	movsd     %xmm0, 16(%rsp)
	addq      $-7, %rbx
	movq      %rbx, 24(%rsp)
	leaq      L00000404(%rip), %rax
	movslq    (%rax,%rbx,4), %rcx
	addq      %rax, %rcx
	movq      %rcx, 32(%rsp)
	movq      _bot@GOTPCREL(%rip), %r12
	jmp       L000000C1
L000000AF:
	.align 4, 0x90
L000000B0:
	movq      $0, (%r15)
	xorl      %edi, %edi
	call      _tschirnhaus
L000000BE:
	movq      %rax, %r13
L000000C1:
	movq      %r13, 48(%rsp)
	movq      %r13, %rdi
	call      _cauchy_bound
L000000CE:
	cmpq      $3, %rbx
	ja        L000000B0
L000000D4:
	jmp       *32(%rsp)
L000000D8:
	movsd     %xmm0, 104(%rsp)
	movq      (%r15), %rax
	leaq      -56(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $55, %rax
	ja        L000000FB
L000000EF:
	movl      $14, %edi
	xorl      %eax, %eax
	call      _pari_err
L000000FB:
	movq      %rbx, (%r15)
	movq      $570425351, (%rbx)
	movq      %r14, %rdi
	call      _ZX_factor
L0000010D:
	movq      8(%rax), %rcx
	movq      (%rcx), %rax
	movl      $16777215, %edx
	andq      %rdx, %rax
	cmpq      $4, %rax
	je        L00000357
L00000126:
	cmpq      $3, %rax
	je        L00000381
L00000130:
	cmpq      $2, %rax
	je        L000003C0
L0000013A:
	movl      $2, %edi
	xorl      %eax, %eax
	leaq      LC0000044E(%rip), %rsi
	call      _pari_err
L0000014D:
	movsd     104(%rsp), %xmm0
L00000153:
	movq      (%r15), %rax
	leaq      -56(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $55, %rax
	ja        L0000017C
L00000164:
	movl      $14, %edi
	xorl      %eax, %eax
	movsd     %xmm0, 104(%rsp)
	call      _pari_err
L00000176:
	movsd     104(%rsp), %xmm0
L0000017C:
	movq      %rbx, (%r15)
	movq      $570425351, (%rbx)
L00000186:
	movq      (%r15), %rax
	leaq      -56(%rax), %rbx
	subq      (%r12), %rax
	cmpq      $55, %rax
	ja        L000001AF
L00000197:
	movl      $14, %edi
	xorl      %eax, %eax
	movsd     %xmm0, 104(%rsp)
	call      _pari_err
L000001A9:
	movsd     104(%rsp), %xmm0
L000001AF:
	movq      %rbx, (%r15)
	movq      $570425351, (%rbx)
L000001B9:
	movq      (%r15), %rbp
	leaq      -288(%rbp), %rbx
	movq      %rbp, %rax
	subq      (%r12), %rax
	cmpq      $287, %rax
	ja        L000001EA
L000001D2:
	movl      $14, %edi
	xorl      %eax, %eax
	movsd     %xmm0, 104(%rsp)
	call      _pari_err
L000001E4:
	movsd     104(%rsp), %xmm0
L000001EA:
	movq      %rbx, (%r15)
	movq      %rbx, 40(%rsp)
	movq      $570425380, -288(%rbp)
	mulsd     16(%rsp), %xmm0
	cvttsd2si %xmm0, %rsi
	addq      $3, %rsi
	addq      $-280, %rbp
	movq      %rbp, 80(%rsp)
	jmp       L0000022F
L0000021A:
	.align 4, 0x90
L00000220:
	movq      56(%rsp), %rsi
	leaq      -2(%rsi,%rsi), %rsi
	movq      48(%rsp), %r13
L0000022F:
	movq      %rsi, 56(%rsp)
	movq      %r13, %rdi
	call      _cleanroots
L0000023C:
	movq      %rax, %r15
	movq      %r15, 88(%rsp)
	movl      $5, %r13d
	movl      $1, %ecx
	xorl      %r14d, %r14d
	.align 4, 0x90
L00000260:
	movq      %r13, 72(%rsp)
	movq      %rcx, 96(%rsp)
	leaq      1(%rcx), %r12
	movq      %r12, 64(%rsp)
	.align 4, 0x90
L00000280:
	incq      %r13
	movq      96(%rsp), %rbp
	.align 4, 0x90
L00000290:
	movq      (%r15,%rbp,8), %rdi
	movq      (%r15,%r12,8), %rsi
	call      _gadd
L0000029D:
	movq      %rax, %rbx
	incq      %r12
	decq      %r13
	cmpq      $7, %r12
	jg        L00000290
L000002AC:
	movq      %r14, 104(%rsp)
	movq      80(%rsp), %rax
	leaq      (%rax,%r14,8), %r14
	leaq      (%r15,%r12,8), %rbp
	movq      $-8, %r15
	.align 4, 0x90
L000002D0:
	movq      64(%rbp,%r15,8), %rsi
	movq      %rbx, %rdi
	call      _gadd
L000002DD:
	movq      %rax, 64(%r14,%r15,8)
	incq      %r15
	movq      %r12, %rax
	addq      %r15, %rax
	jne       L000002D0
L000002ED:
	movq      104(%rsp), %r14
	addq      %r13, %r14
	decq      %r13
	cmpq      $7, %r12
	movq      88(%rsp), %r15
	jne       L00000280
L00000307:
	movq      72(%rsp), %r13
	decq      %r13
	movq      64(%rsp), %rcx
	cmpq      $6, %rcx
	jne       L00000260
L0000031E:
	movq      40(%rsp), %rdi
	leaq      112(%rsp), %rsi
	call      _roots_to_ZX
L0000032D:
	movq      %rax, %r14
	cmpq      $-9, 112(%rsp)
	jge       L00000220
L0000033C:
	movq      _avma@GOTPCREL(%rip), %rbp
	movq      %rbp, %r15
	movq      24(%rsp), %rbx
	movq      _bot@GOTPCREL(%rip), %r12
	jmp       L000000B0
L00000357:
	movq      (%rsp), %rax
	movq      %rax, (%r15)
	movq      8(%rcx), %rax
	movl      $16777215, %ecx
	andq      (%rax), %rcx
	movl      $4, %esi
	cmpq      $5, %rcx
	jne       L0000039B
L00000375:
	movl      $1, %edx
	movl      $2, %ecx
	jmp       L000003A7
L00000381:
	movq      (%rsp), %rax
	movq      %rax, (%r15)
	movl      $8, %esi
	movq      $-1, %rdx
	movl      $3, %ecx
	jmp       L000003A7
L0000039B:
	movq      $-1, %rdx
	movl      $1, %ecx
L000003A7:
	movq      8(%rsp), %rdi
	call      _galois_res
L000003B1:
	addq      $120, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000003C0:
	movq      %r13, %rdi
	call      _ZX_disc
L000003C8:
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _Z_issquareall
L000003D2:
	movq      (%rsp), %rcx
	movq      %rcx, (%r15)
	testq     %rax, %rax
	je        L000003EF
L000003DE:
	movl      $12, %esi
	movl      $1, %edx
	movl      $4, %ecx
	jmp       L000003A7
L000003EF:
	movl      $24, %esi
	movq      $-1, %rdx
	movl      $5, %ecx
	jmp       L000003A7
L00000402:
	.align 4, 0x90
# ----------------------
L00000404:
	.long	L000000D8-L00000404
	.long	L00000153-L00000404
	.long	L00000186-L00000404
	.long	L000001B9-L00000404
# ----------------------
	.section       __TEXT,__literal8,8byte_literals
	.align 3
LC00000418:
	.long	0
	.long	1075576832
	.align 3
LC00000420:
	.long	0
	.long	1067450368
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00000428:
	.string	"galois"
LC0000042F:
	.string	"galois of reducible polynomial"
LC0000044E:
	.string	"galois (bug1)"
# ----------------------

.subsections_via_symbols
