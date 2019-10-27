	.file	"arith2.c"
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"t_INT-->long assignment"
.LC2:
	.string	"panic: set_optimize"
.LC3:
	.string	"t_INT-->ulong assignment"
.LC7:
	.string	"mallocing NULL object"
.LC12:
	.string	"Too large primelimit"
.LC13:
	.string	"lg()"
.LC14:
	.string	"divisors"
.LC18:
	.string	"corepartial"
.LC19:
	.string	"core2partial"
.LC20:
	.string	"core"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	core2fa
	.type	core2fa, @function
core2fa:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $24, %rsp
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      8(%rdi), %r15
	movq      16(%rdi), %r14
	movq      (%rax), %rax
	movq      %rax, %r13
	movq      %rax, (%rsp)
	movq      %r12, %rax
	andq      (%r15), %rax
	cmpq      $1, %rax
	jle       .L2
	movl      $1, %ebx
	jmp       .L9
	.p2align 4,,10
	.p2align 3
.L22:
	andq      %r12, %rax
	movq      16(%rcx), %rbp
	cmpq      $3, %rax
	jg        .L4
	testq     %rbp, %rbp
	js        .L4
.L5:
	movq      %rbp, %rax
	negq      %rax
	testq     %rdx, %rdx
	cmovle    %rax, %rbp
	testb     $1, %bpl
	je        .L7
	movq      (%r15,%rbx,8), %rsi
	movq      (%rsp), %rdi
	call      mulii@PLT
	movq      %rax, (%rsp)
.L7:
	movq      %rbp, %rsi
	sarq      $1, %rsi
	cmpq      $1, %rbp
	jne       .L3
	movq      %r12, %rax
	andq      (%r15), %rax
	addq      $1, %rbx
	cmpq      %rbx, %rax
	jle       .L2
.L9:
	movq      (%r14,%rbx,8), %rcx
	movq      8(%rcx), %rax
	movq      %rax, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	jne       .L22
	xorl      %esi, %esi
.L3:
	movq      (%r15,%rbx,8), %rdi
	addq      $1, %rbx
	call      powiu@PLT
	movq      %r13, %rdi
	movq      %rax, %rsi
	call      mulii@PLT
	movq      %rax, %r13
	movq      %r12, %rax
	andq      (%r15), %rax
	cmpq      %rbx, %rax
	jg        .L9
.L2:
	movq      avma@GOTPCREL(%rip), %r12
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r12), %rbx
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	leaq      -24(%rbx), %rbp
	cmpq      $23, %rcx
	ja        .L10
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L10:
	movq      $2449958197289549827, %rax
	movq      %rbp, (%r12)
	movq      %r13, -8(%rbx)
	movq      %rax, -24(%rbx)
	movq      (%rsp), %rax
	movq      %rax, -16(%rbx)
	addq      $24, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L4:
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
	movq      8(%rsp), %rdx
	jmp       .L5
	.cfi_endproc
	.size	core2fa, .-core2fa
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	set_optimize
	.type	set_optimize, @function
set_optimize:
	.cfi_startproc
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	cmpq      $2, %rdi
	je        .L25
	jle       .L54
	cmpq      $3, %rdi
	je        .L28
	cmpq      $4, %rdi
	.p2align 4,,3
	jne       .L24
	movsd     .LC1(%rip), %xmm0
	mulsd     cache_model+16(%rip), %xmm0
	cvttsd2si %xmm0, %r13
.L30:
	testq     %rbp, %rbp
	je        .L31
	movq      $72057594037927935, %rdx
	andq      8(%rbp), %rdx
	xorl      %r12d, %r12d
	cmpq      $2, %rdx
	je        .L33
	cmpq      $3, %rdx
	jne       .L52
	movq      16(%rbp), %r12
.L33:
	cmpq      $2, %rbx
	je        .L35
.L56:
	jle       .L55
	cmpq      $3, %rbx
	je        .L38
	cmpq      $4, %rbx
	.p2align 4,,3
	jne       .L31
	testq     %r12, %r12
	js        .L44
	cvtsi2sd  %r12, %xmm0
.L45:
	divsd     .LC1(%rip), %xmm0
	movsd     %xmm0, cache_model+16(%rip)
.L31:
	addq      $8, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L28:
	movsd     .LC1(%rip), %xmm0
	mulsd     cache_model+8(%rip), %xmm0
	cvttsd2si %xmm0, %r13
	jmp       .L30
	.p2align 4,,10
	.p2align 3
.L54:
	cmpq      $1, %rdi
	movq      cache_model(%rip), %r13
	je        .L30
.L24:
	leaq      .LC2(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	xorl      %r13d, %r13d
	call      pari_err@PLT
	jmp       .L30
	.p2align 4,,10
	.p2align 3
.L52:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	call      pari_err@PLT
	cmpq      $2, %rbx
	jne       .L56
.L35:
	testq     %r12, %r12
	js        .L40
	cvtsi2sd  %r12, %xmm0
.L41:
	divsd     .LC1(%rip), %xmm0
	movq      %r13, %rax
	movsd     %xmm0, slow2_in_roots(%rip)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L55:
	cmpq      $1, %rbx
	jne       .L31
	movq      %r12, cache_model(%rip)
	addq      $8, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L25:
	movsd     .LC1(%rip), %xmm0
	mulsd     slow2_in_roots(%rip), %xmm0
	cvttsd2si %xmm0, %r13
	jmp       .L30
	.p2align 4,,10
	.p2align 3
.L38:
	testq     %r12, %r12
	js        .L42
	cvtsi2sd  %r12, %xmm0
.L43:
	divsd     .LC1(%rip), %xmm0
	movq      %r13, %rax
	movsd     %xmm0, cache_model+8(%rip)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L44:
	movq      %r12, %rax
	andl      $1, %r12d
	shrq      $1, %rax
	orq       %r12, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L45
	.p2align 4,,10
	.p2align 3
.L40:
	movq      %r12, %rax
	andl      $1, %r12d
	shrq      $1, %rax
	orq       %r12, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L41
	.p2align 4,,10
	.p2align 3
.L42:
	movq      %r12, %rax
	andl      $1, %r12d
	shrq      $1, %rax
	orq       %r12, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L43
	.cfi_endproc
	.size	set_optimize, .-set_optimize
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	initprimes0
	.type	initprimes0, @function
initprimes0:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $152, %rsp
	cmpq      $131072, %rdi
	movq      %rsi, 88(%rsp)
	movq      %rdx, 96(%rsp)
	jbe       .L213
	orq       $1, %rdi
	movq      %rdi, %rbx
	js        .L77
	cvtsi2sd  %rdi, %xmm5
	movsd     %xmm5, (%rsp)
	movapd    %xmm5, %xmm0
.L78:
	call      log@PLT
	movsd     (%rsp), %xmm1
	mulsd     .LC6(%rip), %xmm1
	divsd     %xmm0, %xmm1
	cvttsd2si %xmm1, %rax
	addq      $146, %rax
	movq      %rax, %rdi
	jne       .L214
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $0, (%rax)
	je        .L156
	leaq      .LC7(%rip), %rsi
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
.L156:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq      $0, 80(%rsp)
	movl      $2, %ebp
	movq      $0, 56(%rsp)
	movq      %rax, 48(%rsp)
.L82:
	sqrtsd    (%rsp), %xmm0
	ucomisd   %xmm0, %xmm0
	jp        .L215
.L83:
	ucomisd   .LC8(%rip), %xmm0
	jae       .L85
	cvttsd2si %xmm0, %r12
.L86:
	orq       $1, %r12
	leaq      128(%rsp), %rdx
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      initprimes0@PLT
	movq      112(%rsp), %rdx
	movq      56(%rsp), %rdi
	movq      %rax, %rsi
	movq      %rax, %r13
	call      memcpy@PLT
	movq      48(%rsp), %r15
	movq      %r13, %rdi
	movl      (%r15), %r14d
	movl      $1, (%r15)
	call      free@PLT
	testl     %r14d, %r14d
	movl      %r14d, (%r15)
	jne       .L87
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L87
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L87:
	movq      112(%rsp), %rax
	movq      56(%rsp), %rdi
	subq      %r12, %rbx
	movq      %rbx, (%rsp)
	shrq      $1, (%rsp)
	movq      cache_model(%rip), %rdx
	movsd     slow2_in_roots(%rip), %xmm2
	leaq      -1(%rdi,%rax), %r15
	movq      (%rsp), %rax
	movsd     cache_model+8(%rip), %xmm1
	movsd     cache_model+16(%rip), %xmm3
	leaq      1(%rax), %r13
	cmpq      %rdx, %r13
	jbe       .L88
	testq     %r12, %r12
	js        .L89
	cvtsi2sd  %r12, %xmm0
.L90:
	mulsd     %xmm2, %xmm0
	ucomisd   .LC8(%rip), %xmm0
	jae       .L91
	cvttsd2si %xmm0, %rax
.L92:
	leaq      (%rax,%rax,4), %rcx
	addq      %rcx, %rcx
	cmpq      %rcx, %rdx
	jbe       .L93
	cmpq      %rdx, %r13
	cmova     %rdx, %r13
.L88:
	movq      bot@GOTPCREL(%rip), %rax
	movq      avma@GOTPCREL(%rip), %rdx
	leaq      -1(%r13), %r10
	movq      (%rax), %rbx
	leaq      (%r10,%rbx), %rax
	cmpq      %rax, (%rdx)
	movq      %rbx, 72(%rsp)
	setbe     %al
	movzbl    %al, %eax
	testq     %rax, %rax
	movq      %rax, 104(%rsp)
	jne       .L216
.L126:
	leaq      2(%r12), %r11
	subq      128(%rsp), %r12
	leaq      (%rbx,%r10), %r9
	shrq      $1, %r12
	cmpq      $0, (%rsp)
	notq      %r12
	leaq      (%rbx,%r12), %r14
	je        .L161
	movq      56(%rsp), %rax
	movl      $3, %r12d
	addq      $1, %rax
	cmpq      %r10, (%rsp)
	movq      %rax, 64(%rsp)
	jb        .L128
.L221:
	leaq      (%rbx,%r10), %rax
	leaq      (%r11,%r10,2), %r8
	subq      %r10, (%rsp)
	movq      %rax, 8(%rsp)
	movq      %r12, %rax
	imulq     %r12, %rax
	cmpq      %r8, %rax
	jbe       .L130
	jmp       .L217
	.p2align 4,,10
	.p2align 3
.L219:
	addq      %r13, %r12
	movq      %rbp, %rdx
	addq      $1, %rbp
	movq      %r12, %rax
	imulq     %r12, %rax
	cmpq      %r8, %rax
	ja        .L218
.L130:
	movzbl    (%rbp), %r13d
	testb     %r13b, %r13b
	jne       .L219
.L131:
	movq      %r10, %rdx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	movb      $0, (%rbp)
	movq      %r8, 40(%rsp)
	movq      %r9, 32(%rsp)
	movq      %r11, 24(%rsp)
	movq      %r10, 16(%rsp)
	call      memset@PLT
	movq      16(%rsp), %r10
	movq      24(%rsp), %r11
	movl      $3, %ecx
	movq      64(%rsp), %rsi
	movq      32(%rsp), %r9
	movq      40(%rsp), %r8
	shrq      $1, %r11
	leaq      -1(%r10), %rdi
	addq      %r10, %r11
	.p2align 4,,10
	.p2align 3
.L139:
	movq      %rcx, %rax
	xorl      %edx, %edx
	shrq      $1, %rax
	addq      %r11, %rax
	divq      %rcx
	movq      %rdi, %rax
	subq      %rdx, %rax
	js        .L137
	.p2align 4,,10
	.p2align 3
.L188:
	movb      $1, (%rbx,%rax)
	subq      %rcx, %rax
	jns       .L188
.L137:
	addq      $1, %rsi
	movzbl    (%rsi), %eax
	addq      %rax, %rcx
	testq     %rax, %rax
	jne       .L139
	movq      8(%rsp), %rax
	movb      %r13b, (%rbp)
	movq      %rbx, %rcx
	movb      $0, (%rax)
	.p2align 4,,10
	.p2align 3
.L140:
	cmpb      $0, (%rcx)
	jne       .L141
	cmpq      %r9, %rcx
	jae       .L142
	movq      %rcx, %rax
	movq      %r15, %rdx
	subq      %r14, %rax
	addq      %rax, %rax
	cmpq      $254, %rax
	jle       .L143
	.p2align 4,,10
	.p2align 3
.L144:
	subq      $255, %rax
	addq      $1, %rdx
	movb      $-1, -1(%rdx)
	cmpq      $254, %rax
	jg        .L144
.L143:
	leaq      1(%rdx), %r15
	movb      %al, (%rdx)
	movq      %rcx, %r14
.L141:
	addq      $1, %rcx
	jmp       .L140
.L214:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movl      (%rax), %r12d
	movq      %rax, %r15
	movq      %rax, 48(%rsp)
	movl      $1, (%rax)
	call      malloc@PLT
	testl     %r12d, %r12d
	movq      %rax, %rbp
	movl      %r12d, (%r15)
	jne       .L80
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rdx
	movl      (%rdx), %eax
	testl     %eax, %eax
	jne       .L220
.L80:
	testq     %rbp, %rbp
	je        .L81
	movq      %rbp, %rax
	movq      %rbp, 80(%rsp)
	leaq      2(%rbp), %rbp
	movq      %rax, 56(%rsp)
	jmp       .L82
	.p2align 4,,10
	.p2align 3
.L142:
	subq      %r10, %r14
	cmpq      $0, (%rsp)
	je        .L127
	cmpq      %r10, (%rsp)
	movq      %r8, %r11
	jae       .L221
.L128:
	movq      (%rsp), %rax
	movq      $0, (%rsp)
	leaq      (%rbx,%rax), %r9
	movq      %rax, %r10
	movq      %r12, %rax
	imulq     %r12, %rax
	leaq      (%r11,%r10,2), %r8
	movq      %r9, 8(%rsp)
	cmpq      %r8, %rax
	jbe       .L130
.L217:
	movzbl    (%rbp), %r13d
	jmp       .L131
	.p2align 4,,10
	.p2align 3
.L218:
	movzbl    1(%rdx), %r13d
	jmp       .L131
.L161:
	movq      %r11, %r8
.L127:
	movq      72(%rsp), %rax
	movb      $0, (%r15)
	addq      $1, %r15
	subq      80(%rsp), %r15
	subq      %r14, %rax
	addq      %rax, %rax
	subq      %rax, %r8
	movq      88(%rsp), %rax
	cmpq      $0, 104(%rsp)
	movq      %r8, 128(%rsp)
	movq      %r15, (%rax)
	movq      96(%rsp), %rax
	movq      %r8, (%rax)
	jne       .L222
.L147:
	movq      88(%rsp), %rax
	cmpq      $0, 56(%rsp)
	movq      (%rax), %rsi
	movq      48(%rsp), %rax
	movl      (%rax), %ebp
	movl      $1, (%rax)
	je        .L223
	movq      56(%rsp), %rdi
	call      realloc@PLT
	movq      %rax, %rbx
.L150:
	movq      48(%rsp), %rax
	testl     %ebp, %ebp
	movl      %ebp, (%rax)
	jne       .L151
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L224
.L151:
	testq     %rbx, %rbx
	je        .L225
.L152:
	addq      $152, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L213:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rax
	shrq      $1, %rdi
	leaq      2(%rdi), %r12
	movq      %rdi, %rbp
	movl      (%rax), %r13d
	movq      %r12, %rdi
	movq      %rax, %r15
	movq      %rax, 48(%rsp)
	movl      $1, (%rax)
	call      malloc@PLT
	testl     %r13d, %r13d
	movq      %rax, %rbx
	movl      %r13d, (%r15)
	jne       .L59
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L226
.L59:
	testq     %rbx, %rbx
	je        .L227
	xorl      %esi, %esi
	movq      %rbx, %rdi
	movq      %r12, %rdx
	call      memset@PLT
	movq      %rbp, %r9
	movq      %rbx, %rdi
	addq      %rbx, %r9
	jb        .L63
.L64:
	movq      %rbx, %r8
	movq      %rbx, %rsi
	movl      $1, %edx
	.p2align 4,,10
	.p2align 3
.L66:
	addq      %rdx, %r8
	addq      $1, %rsi
	addq      $2, %rdx
	addq      %rdx, %r8
	cmpb      $0, (%rsi)
	jne       .L66
	cmpq      %r8, %r9
	jb        .L63
	movq      %r8, %rax
	.p2align 4,,10
	.p2align 3
.L70:
	movb      $1, (%rax)
	addq      %rdx, %rax
	cmpq      %r9, %rax
	jbe       .L70
	cmpq      %r8, %r9
	jae       .L66
.L63:
	leaq      1(%rbx), %rdx
	leaq      2(%rbx), %rax
	movb      $2, (%rbx)
	movb      $1, 1(%rbx)
	movq      %rdx, %rcx
.L71:
	addq      $1, %rdx
	cmpb      $0, (%rdx)
	jne       .L71
	cmpq      %rdx, %r9
	jb        .L73
.L228:
	movq      %rdx, %rsi
	addq      $1, %rax
	subq      %rcx, %rsi
	movq      %rsi, %rcx
	addl      %ecx, %ecx
	movb      %cl, -1(%rax)
	movq      %rdx, %rcx
	addq      $1, %rdx
	cmpb      $0, (%rdx)
	jne       .L71
	cmpq      %rdx, %r9
	jae       .L228
.L73:
	movb      $0, (%rax)
	leaq      1(%rax), %rsi
	movq      88(%rsp), %rax
	subq      %rdi, %rcx
	movq      48(%rsp), %r15
	subq      %rdi, %rsi
	movq      96(%rsp), %rdi
	movq      %rsi, (%rax)
	leaq      1(%rcx,%rcx), %rax
	movq      %rax, (%rdi)
	movl      (%r15), %ebp
	movq      %rbx, %rdi
	movl      $1, (%r15)
	call      realloc@PLT
	testl     %ebp, %ebp
	movq      %rax, %rbx
	movl      %ebp, (%r15)
	jne       .L151
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rdx
	movl      (%rdx), %eax
	testl     %eax, %eax
	je        .L151
	movl      (%rdx), %edi
	movl      $0, (%rdx)
	call      raise@PLT
	testq     %rbx, %rbx
	jne       .L152
.L225:
	movl      $28, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L152
.L85:
	subsd     .LC8(%rip), %xmm0
	movq      $-9223372036854775808, %rax
	cvttsd2si %xmm0, %r12
	xorq      %rax, %r12
	jmp       .L86
.L93:
	testq     %rdx, %rdx
	js        .L94
	cvtsi2sd  %rdx, %xmm8
.L95:
	xorpd     %xmm5, %xmm5
	testq     %rax, %rax
	movsd     .LC5(%rip), %xmm7
	movapd    %xmm5, %xmm0
	divsd     %xmm8, %xmm0
	subsd     %xmm0, %xmm7
	js        .L96
	cvtsi2sd  %rax, %xmm9
.L97:
	divsd     %xmm8, %xmm9
	movapd    %xmm7, %xmm6
	movapd    %xmm7, %xmm11
	movsd     .LC5(%rip), %xmm0
	divsd     %xmm1, %xmm0
	addsd     %xmm7, %xmm9
	movapd    %xmm9, %xmm2
	addsd     %xmm9, %xmm6
	subsd     %xmm7, %xmm2
	mulsd     %xmm9, %xmm11
	mulsd     %xmm2, %xmm0
	subsd     %xmm0, %xmm6
	mulsd     .LC9(%rip), %xmm6
	movapd    %xmm6, %xmm10
	mulsd     %xmm6, %xmm10
	subsd     %xmm11, %xmm10
	ucomisd   %xmm5, %xmm10
	jbe       .L201
	movapd    %xmm6, %xmm12
	movapd    %xmm3, %xmm2
	movapd    %xmm3, %xmm0
	testq     %r13, %r13
	addsd     %xmm6, %xmm12
	mulsd     %xmm3, %xmm2
	mulsd     %xmm12, %xmm0
	addsd     %xmm0, %xmm2
	addsd     %xmm11, %xmm2
	js        .L100
	cvtsi2sd  %r13, %xmm4
.L101:
	ucomisd   %xmm10, %xmm5
	divsd     %xmm8, %xmm4
	jae       .L158
	ucomisd   %xmm5, %xmm2
	jb        .L202
.L155:
	movapd    %xmm3, %xmm0
	addsd     %xmm6, %xmm0
	ucomisd   %xmm5, %xmm0
	jb        .L105
.L158:
	movapd    %xmm3, %xmm4
.L102:
	ucomisd   %xmm4, %xmm3
	jp        .L166
	jne       .L166
	ucomisd   %xmm5, %xmm7
	jbe       .L115
	movapd    %xmm3, %xmm0
	movsd     %xmm9, 32(%rsp)
	movsd     %xmm7, 24(%rsp)
	movsd     %xmm8, 16(%rsp)
	movsd     %xmm3, 8(%rsp)
	call      pow@PLT
	movsd     8(%rsp), %xmm3
	movsd     32(%rsp), %xmm9
	movapd    %xmm3, %xmm2
	movapd    %xmm3, %xmm1
	movsd     24(%rsp), %xmm7
	addsd     %xmm9, %xmm2
	movsd     16(%rsp), %xmm8
	addsd     %xmm7, %xmm1
	mulsd     .LC10(%rip), %xmm2
	divsd     %xmm1, %xmm2
	mulsd     %xmm0, %xmm2
.L117:
	divsd     %xmm7, %xmm9
	mulsd     .LC11(%rip), %xmm2
	movsd     .LC5(%rip), %xmm0
	ucomisd   %xmm9, %xmm2
	jbe       .L229
.L118:
	mulsd     %xmm8, %xmm0
	ucomisd   .LC8(%rip), %xmm0
	jae       .L119
.L230:
	cvttsd2si %xmm0, %rax
.L120:
	cmpq      %rax, %r13
	cmova     %rax, %r13
	jmp       .L88
.L166:
	movapd    %xmm3, %xmm6
	movsd     %xmm5, 72(%rsp)
	movapd    %xmm3, %xmm0
	movsd     %xmm8, 64(%rsp)
	addsd     %xmm9, %xmm6
	movsd     %xmm9, 40(%rsp)
	addsd     %xmm7, %xmm0
	movsd     %xmm3, 32(%rsp)
	movsd     %xmm7, 24(%rsp)
	movsd     %xmm4, 8(%rsp)
	divsd     %xmm0, %xmm6
	movapd    %xmm4, %xmm0
	movsd     %xmm6, 16(%rsp)
	call      pow@PLT
	movsd     40(%rsp), %xmm9
	movsd     8(%rsp), %xmm4
	movapd    %xmm9, %xmm2
	movsd     24(%rsp), %xmm7
	movsd     16(%rsp), %xmm6
	addsd     %xmm4, %xmm2
	movapd    %xmm7, %xmm1
	movapd    %xmm6, %xmm5
	addsd     %xmm4, %xmm1
	movsd     32(%rsp), %xmm3
	movsd     64(%rsp), %xmm8
	mulsd     .LC10(%rip), %xmm2
	divsd     %xmm1, %xmm2
	mulsd     %xmm0, %xmm2
	movsd     .LC11(%rip), %xmm0
	mulsd     %xmm2, %xmm0
	cmplesd   %xmm0, %xmm5
	andpd     %xmm5, %xmm3
	movapd    %xmm5, %xmm0
	andpd     %xmm5, %xmm6
	movapd    %xmm3, %xmm1
	andnpd    %xmm2, %xmm0
	movapd    %xmm5, %xmm3
	movsd     72(%rsp), %xmm5
	andnpd    %xmm4, %xmm3
	movapd    %xmm0, %xmm2
	orpd      %xmm1, %xmm3
	orpd      %xmm6, %xmm2
.L115:
	ucomisd   %xmm5, %xmm7
	ja        .L117
	movsd     .LC5(%rip), %xmm0
	addsd     %xmm3, %xmm0
	mulsd     %xmm8, %xmm0
	ucomisd   .LC8(%rip), %xmm0
	jb        .L230
.L119:
	subsd     .LC8(%rip), %xmm0
	movq      $-9223372036854775808, %rdx
	cvttsd2si %xmm0, %rax
	xorq      %rdx, %rax
	jmp       .L120
.L91:
	subsd     .LC8(%rip), %xmm0
	movq      $-9223372036854775808, %rcx
	cvttsd2si %xmm0, %rax
	xorq      %rcx, %rax
	jmp       .L92
.L216:
	testq     %r13, %r13
	jne       .L231
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	xorl      %ebx, %ebx
	movq      $0, 72(%rsp)
	cmpq      $0, (%rax)
	je        .L126
	leaq      .LC7(%rip), %rsi
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r10, 8(%rsp)
	call      pari_warn@PLT
	movq      72(%rsp), %rbx
	movq      8(%rsp), %r10
	jmp       .L126
.L222:
	movq      48(%rsp), %r14
	movq      %rbx, %rdi
	movl      (%r14), %ebp
	movl      $1, (%r14)
	call      free@PLT
	testl     %ebp, %ebp
	movl      %ebp, (%r14)
	jne       .L147
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L147
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L147
.L77:
	movq      %rdi, %rax
	shrq      $1, %rax
	orq       $1, %rax
	cvtsi2sd  %rax, %xmm1
	movapd    %xmm1, %xmm7
	addsd     %xmm1, %xmm7
	movsd     %xmm7, (%rsp)
	movapd    %xmm7, %xmm0
	jmp       .L78
.L229:
	addsd     %xmm3, %xmm0
	jmp       .L118
.L202:
	jb        .L106
.L105:
	movapd    %xmm6, %xmm0
	addsd     %xmm4, %xmm0
	ucomisd   %xmm0, %xmm5
	jae       .L102
	movapd    %xmm6, %xmm12
	movapd    %xmm4, %xmm0
	movapd    %xmm4, %xmm13
	addsd     %xmm6, %xmm12
	mulsd     %xmm4, %xmm0
	mulsd     %xmm12, %xmm13
	addsd     %xmm13, %xmm0
	addsd     %xmm11, %xmm0
	ucomisd   %xmm0, %xmm5
	jae       .L102
.L106:
	ucomisd   %xmm2, %xmm5
	jae       .L232
.L108:
	sqrtsd    %xmm10, %xmm0
	ucomisd   %xmm0, %xmm0
	jp        .L233
.L110:
	movapd    %xmm0, %xmm4
	subsd     %xmm6, %xmm4
	jmp       .L102
.L231:
	movq      48(%rsp), %rax
	movq      %r13, %rdi
	movq      %r10, 8(%rsp)
	movl      (%rax), %r14d
	movl      $1, (%rax)
	call      malloc@PLT
	movq      %rax, %rbx
	movq      48(%rsp), %rax
	movq      8(%rsp), %r10
	testl     %r14d, %r14d
	movl      %r14d, (%rax)
	jne       .L123
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L123
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	movq      8(%rsp), %r10
.L123:
	testq     %rbx, %rbx
	je        .L124
	movq      %rbx, 72(%rsp)
	jmp       .L126
.L96:
	movq      %rax, %rdx
	andl      $1, %eax
	shrq      $1, %rdx
	orq       %rax, %rdx
	cvtsi2sd  %rdx, %xmm9
	addsd     %xmm9, %xmm9
	jmp       .L97
.L94:
	movq      %rdx, %rcx
	andl      $1, %edx
	shrq      $1, %rcx
	orq       %rdx, %rcx
	cvtsi2sd  %rcx, %xmm8
	addsd     %xmm8, %xmm8
	jmp       .L95
.L224:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L151
.L223:
	movq      %rsi, %rdi
	call      malloc@PLT
	movq      %rax, %rbx
	.p2align 4,,2
	jmp       .L150
.L89:
	movq      %r12, %rax
	movq      %r12, %rcx
	shrq      $1, %rax
	andl      $1, %ecx
	orq       %rcx, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L90
.L220:
	movl      (%rdx), %edi
	movl      $0, (%rdx)
	call      raise@PLT
	jmp       .L80
.L215:
	movsd     (%rsp), %xmm0
	call      sqrt@PLT
	.p2align 4,,3
	jmp       .L83
.L100:
	movq      %r13, %rax
	movq      %r13, %rdx
	shrq      $1, %rax
	andl      $1, %edx
	orq       %rdx, %rax
	cvtsi2sd  %rax, %xmm4
	addsd     %xmm4, %xmm4
	jmp       .L101
.L201:
	testq     %r13, %r13
	js        .L153
	cvtsi2sd  %r13, %xmm4
.L154:
	ucomisd   %xmm10, %xmm5
	divsd     %xmm8, %xmm4
	movapd    %xmm5, %xmm2
	jb        .L155
	movapd    %xmm3, %xmm4
	movapd    %xmm5, %xmm2
	jmp       .L102
.L233:
	movapd    %xmm10, %xmm0
	movsd     %xmm5, 104(%rsp)
	movsd     %xmm6, 72(%rsp)
	movsd     %xmm9, 64(%rsp)
	movsd     %xmm7, 40(%rsp)
	movsd     %xmm8, 32(%rsp)
	movsd     %xmm3, 24(%rsp)
	movsd     %xmm1, 16(%rsp)
	movsd     %xmm2, 8(%rsp)
	call      sqrt@PLT
	movsd     104(%rsp), %xmm5
	movsd     72(%rsp), %xmm6
	movsd     64(%rsp), %xmm9
	movsd     40(%rsp), %xmm7
	movsd     32(%rsp), %xmm8
	movsd     24(%rsp), %xmm3
	movsd     16(%rsp), %xmm1
	movsd     8(%rsp), %xmm2
	jmp       .L110
.L232:
	movapd    %xmm4, %xmm0
	mulsd     %xmm4, %xmm12
	mulsd     %xmm4, %xmm0
	addsd     %xmm12, %xmm0
	addsd     %xmm11, %xmm0
	ucomisd   %xmm0, %xmm5
	jb        .L108
	jmp       .L102
.L153:
	movq      %r13, %rax
	movq      %r13, %rdx
	shrq      $1, %rax
	andl      $1, %edx
	orq       %rdx, %rax
	cvtsi2sd  %rax, %xmm4
	addsd     %xmm4, %xmm4
	jmp       .L154
.L226:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L59
.L81:
	movl      $28, %edi
	xorl      %eax, %eax
	movl      $2, %ebp
	call      pari_err@PLT
	movq      $0, 80(%rsp)
	movq      $0, 56(%rsp)
	jmp       .L82
.L227:
	movl      $28, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	xorl      %edi, %edi
	movq      %r12, %rdx
	xorl      %esi, %esi
	call      memset@PLT
	movq      %rbp, %r9
	xorl      %edi, %edi
	jmp       .L64
.L124:
	movl      $28, %edi
	xorl      %eax, %eax
	movq      %r10, 8(%rsp)
	call      pari_err@PLT
	movq      $0, 72(%rsp)
	movq      8(%rsp), %r10
	jmp       .L126
	.cfi_endproc
	.size	initprimes0, .-initprimes0
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	maxprime
	.type	maxprime, @function
maxprime:
	.cfi_startproc
	movq      _maxprime(%rip), %rax
	ret       
	.cfi_endproc
	.size	maxprime, .-maxprime
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	maxprime_check
	.type	maxprime_check, @function
maxprime_check:
	.cfi_startproc
	cmpq      %rdi, _maxprime(%rip)
	jb        .L237
	rep; ret       
	.p2align 4,,10
	.p2align 3
.L237:
	movq      %rdi, %rsi
	xorl      %eax, %eax
	movl      $19, %edi
	jmp       pari_err@PLT
	.cfi_endproc
	.size	maxprime_check, .-maxprime_check
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	init_primepointer
	.type	init_primepointer, @function
init_primepointer:
	.cfi_startproc
	pushq     %r13
	movl      $2, %eax
	movq      %rdx, %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	subq      $8, %rsp
	testq     %rdi, %rdi
	movq      (%rdx), %rbx
	cmove     %rax, %r12
	movq      %r12, %rdi
	call      maxprime_check@PLT
	cmpq      %rbp, %r12
	ja        .L249
	jmp       .L240
	.p2align 4,,10
	.p2align 3
.L244:
	addq      $255, %rbp
.L249:
	movzbl    (%rbx), %eax
	addq      $1, %rbx
	cmpb      $-1, %al
	je        .L244
	addq      %rax, %rbp
	cmpq      %rbp, %r12
	ja        .L249
.L240:
	movq      %rbx, (%r13)
	addq      $8, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.cfi_endproc
	.size	init_primepointer, .-init_primepointer
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	initprimes
	.type	initprimes, @function
initprimes:
	.cfi_startproc
	pushq     %rbx
	movq      %rdi, %rax
	movl      $65302, %edi
	subq      $16, %rsp
	cmpq      $65302, %rax
	cmovae    %rax, %rdi
	cmpq      $-2049, %rax
	leaq      512(%rdi), %rbx
	jbe       .L251
	leaq      .LC12(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L251:
	leaq      8(%rsp), %rdx
	movq      %rsp, %rsi
	movq      %rbx, %rdi
	call      initprimes0@PLT
	movq      8(%rsp), %rdx
	movq      %rdx, _maxprime(%rip)
	addq      $16, %rsp
	popq      %rbx
	ret       
	.cfi_endproc
	.size	initprimes, .-initprimes
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	boundfact
	.type	boundfact, @function
boundfact:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      (%rdi), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	je        .L255
	cmpq      $4, %rax
	jne       .L272
	movq      avma@GOTPCREL(%rip), %r12
	movq      8(%rdi), %rdi
	movq      (%r12), %r13
	call      Z_factor_limit@PLT
	movq      16(%rbx), %rdi
	movq      %rbp, %rsi
	movq      %rax, %r14
	call      Z_factor_limit@PLT
	movq      16(%rax), %rdi
	movq      %rax, %rbx
	call      ZC_neg@PLT
	movq      %rbx, %rsi
	movq      %rax, 16(%rbx)
	movq      %r14, %rdi
	call      merge_factor_i@PLT
	movq      %rax, %rdi
	call      copy_bin@PLT
	movq      8(%rax), %rbp
	movq      %rax, %rbx
	movq      %r13, (%r12)
	testq     %rbp, %rbp
	je        .L273
	movq      bot@GOTPCREL(%rip), %rcx
	movq      (%rax), %rax
	movq      %r13, %r15
	movq      %rbp, %r14
	subq      16(%rbx), %r14
	leaq      32(%rbx), %rsi
	subq      (%rcx), %r13
	leaq      0(,%rax,8), %rdx
	sarq      $3, %r14
	subq      %rdx, %r15
	shrq      $3, %r13
	cmpq      %r13, %rax
	ja        .L274
.L260:
	movq      %r15, %rdi
	movq      %r15, (%r12)
	leaq      (%r15,%r14,8), %r12
	call      memcpy@PLT
	movl      24(%rbx), %eax
	movq      %r12, %rsi
	movq      %r12, %rdi
	subq      %rbp, %rsi
	testl     %eax, %eax
	jne       .L275
	call      shiftaddress@PLT
.L262:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rbx, %rdi
	movq      %r12, %rbx
	movl      (%rbp), %r13d
	movl      $1, (%rbp)
	call      free@PLT
	testl     %r13d, %r13d
	movl      %r13d, (%rbp)
	jne       .L263
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L263
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L263
	.p2align 4,,10
	.p2align 3
.L272:
	movl      $18, %edi
	xorl      %eax, %eax
	xorl      %ebx, %ebx
	call      pari_err@PLT
.L263:
	addq      $24, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L255:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       Z_factor_limit@PLT
	.p2align 4,,10
	.p2align 3
.L275:
	call      shiftaddress_canon@PLT
	jmp       .L262
	.p2align 4,,10
	.p2align 3
.L274:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
	movq      8(%rsp), %rsi
	movq      (%rsp), %rdx
	jmp       .L260
	.p2align 4,,10
	.p2align 3
.L273:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rax, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L258
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L258
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L258:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       .L263
	.cfi_endproc
	.size	boundfact, .-boundfact
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	Z_smoothen
	.type	Z_smoothen, @function
Z_smoothen:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r12
	pushq     %rbp
	movq      $72057594037927935, %rbp
	pushq     %rbx
	subq      $56, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      bot@GOTPCREL(%rip), %r15
	andq      (%rsi), %rbp
	movq      %rdx, 24(%rsp)
	movq      %rdi, 40(%rsp)
	movq      %rcx, 32(%rsp)
	movq      (%rbx), %rax
	movq      (%r15), %rdx
	leaq      0(,%rbp,8), %r13
	movq      %rax, %r14
	subq      %rdx, %rax
	shrq      $3, %rax
	subq      %r13, %r14
	cmpq      %rax, %rbp
	jbe       .L277
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	movq      (%r15), %rdx
.L277:
	movq      %r14, %rax
	movq      %r14, (%rbx)
	subq      %r13, %rax
	movq      %rax, 16(%rsp)
	movq      %r14, %rax
	subq      %rdx, %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L278
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L278:
	movq      16(%rsp), %rax
	cmpq      $1, %rbp
	movq      %rax, (%rbx)
	jle       .L287
	leaq      40(%rsp), %rax
	movl      $1, %ebx
	movl      $1, %r15d
	movq      %rax, 8(%rsp)
	jmp       .L283
	.p2align 4,,10
	.p2align 3
.L280:
	addq      $1, %r15
	cmpq      %rbp, %r15
	je        .L282
.L283:
	movq      (%r12,%r15,8), %r13
	movq      8(%rsp), %rdx
	movq      40(%rsp), %rdi
	movq      %r13, %rsi
	call      Z_lvalrem@PLT
	testq     %rax, %rax
	je        .L280
	movq      16(%rsp), %rcx
	movq      $72057594037927935, %rdx
	movq      %r13, (%rcx,%rbx,8)
	movq      %rax, (%r14,%rbx,8)
	addq      $1, %rbx
	movq      40(%rsp), %rax
	andq      8(%rax), %rdx
	cmpq      $3, %rdx
	jne       .L280
	cmpq      $1, 16(%rax)
	jne       .L280
	movq      $0, 40(%rsp)
.L282:
	movq      $-72057594037927936, %rax
	testq     %rax, %rbx
	jne       .L284
	movq      $3170534137668829184, %rbp
	orq       %rbx, %rbp
.L279:
	movq      16(%rsp), %rax
	movq      24(%rsp), %rcx
	movq      %rbp, (%rax)
	movq      %rax, (%rcx)
.L285:
	movq      32(%rsp), %rax
	movq      %rbp, (%r14)
	movq      %r14, (%rax)
	movq      40(%rsp), %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L284:
	leaq      .LC13(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	movq      $3170534137668829184, %rbp
	call      pari_err@PLT
	movq      16(%rsp), %rax
	movq      24(%rsp), %rsi
	orq       %rbx, %rbp
	movl      $15, %edi
	movq      %rbp, (%rax)
	movq      %rax, (%rsi)
	leaq      .LC13(%rip), %rsi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L285
.L287:
	movq      $3170534137668829185, %rbp
	jmp       .L279
	.cfi_endproc
	.size	Z_smoothen, .-Z_smoothen
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	factoru
	.type	factoru, @function
factoru:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $40, %rsp
	movq      avma@GOTPCREL(%rip), %r15
	movq      bot@GOTPCREL(%rip), %rdx
	movq      (%r15), %r14
	leaq      -24(%r14), %rax
	movq      %rax, 24(%rsp)
	movq      %r14, %rax
	subq      (%rdx), %rax
	cmpq      $23, %rax
	ja        .L294
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	movq      bot@GOTPCREL(%rip), %rdx
.L294:
	movq      24(%rsp), %rax
	movq      %rax, (%r15)
	movq      $2449958197289549827, %rax
	movq      %rax, -24(%r14)
	movq      (%r15), %rbp
	movq      %rbp, %rax
	subq      (%rdx), %rax
	leaq      -256(%rbp), %rbx
	cmpq      $255, %rax
	ja        .L295
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L295:
	testq     %r12, %r12
	movq      %rbx, (%r15)
	jne       .L319
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
.L298:
	call      Z_factor@PLT
	movq      8(%rax), %r13
	movq      16(%rax), %rax
	movq      $72057594037927935, %rbx
	movq      %rbp, %r12
	movq      %rax, 8(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	andq      (%r13), %rbx
	movq      %rbp, (%r15)
	subq      (%rax), %rbp
	leaq      0(,%rbx,8), %r8
	shrq      $3, %rbp
	subq      %r8, %r12
	cmpq      %rbp, %rbx
	jbe       .L299
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 16(%rsp)
	call      pari_err@PLT
	movq      16(%rsp), %r8
.L299:
	movq      $3170534137668829184, %rdx
	movq      %r12, (%r15)
	movq      bot@GOTPCREL(%rip), %rdi
	orq       %rbx, %rdx
	movq      %rdx, (%r12)
	movq      (%r15), %rax
	movq      %r12, -16(%r14)
	movq      %rax, %rbp
	subq      (%rdi), %rax
	subq      %r8, %rbp
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L300
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 16(%rsp)
	call      pari_err@PLT
	movq      16(%rsp), %rdx
.L300:
	cmpq      $1, %rbx
	movq      %rbp, (%r15)
	movq      %rdx, (%rbp)
	movq      $72057594037927935, %r15
	movq      %rbp, -8(%r14)
	movl      $1, %r14d
	jg        .L315
	jmp       .L312
	.p2align 4,,10
	.p2align 3
.L320:
	movq      16(%rcx), %r8
.L303:
	movq      %r8, (%r12,%r14,8)
	movq      8(%rsp), %rax
	xorl      %ecx, %ecx
	movq      (%rax,%r14,8), %rsi
	movq      %r15, %rax
	andq      8(%rsi), %rax
	cmpq      $2, %rax
	je        .L306
	cmpq      $3, %rax
	jne       .L317
	movq      16(%rsi), %rcx
.L306:
	movq      %rcx, (%rbp,%r14,8)
	addq      $1, %r14
	cmpq      %rbx, %r14
	je        .L312
.L315:
	movq      (%r13,%r14,8), %rcx
	movq      %r15, %rax
	xorl      %r8d, %r8d
	andq      8(%rcx), %rax
	cmpq      $2, %rax
	je        .L303
	cmpq      $3, %rax
	je        .L320
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r8, 16(%rsp)
	call      pari_err@PLT
	movq      16(%rsp), %r8
	jmp       .L303
	.p2align 4,,10
	.p2align 3
.L317:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	movq      %rcx, 16(%rsp)
	call      pari_err@PLT
	movq      16(%rsp), %rcx
	movq      %rcx, (%rbp,%r14,8)
	addq      $1, %r14
	cmpq      %rbx, %r14
	jne       .L315
.L312:
	movq      24(%rsp), %rax
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L319:
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rbx, %rax
	leaq      -24(%rbx), %r13
	subq      (%rdx), %rax
	cmpq      $23, %rax
	jbe       .L321
.L297:
	movq      $144115188075855875, %rax
	movq      %r13, (%r15)
	movq      %r12, -8(%rbx)
	movq      %rax, -24(%rbx)
	movq      $4611686018427387907, %rax
	movq      %r13, %rdi
	movq      %rax, -16(%rbx)
	jmp       .L298
	.p2align 4,,10
	.p2align 3
.L321:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L297
	.cfi_endproc
	.size	factoru, .-factoru
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	factoru_pow
	.type	factoru_pow, @function
factoru_pow:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $56, %rsp
	movq      avma@GOTPCREL(%rip), %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	movq      (%rbp), %r15
	leaq      -32(%r15), %rax
	movq      %rax, 32(%rsp)
	movq      %r15, %rax
	subq      (%rdx), %rax
	cmpq      $31, %rax
	ja        .L323
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	movq      bot@GOTPCREL(%rip), %rdx
.L323:
	movq      32(%rsp), %rax
	movq      %rax, (%rbp)
	movq      $2449958197289549828, %rax
	movq      %rax, -32(%r15)
	movq      (%rbp), %r13
	movq      %r13, %rax
	subq      (%rdx), %rax
	leaq      -384(%r13), %rbx
	cmpq      $383, %rax
	ja        .L324
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L324:
	testq     %r12, %r12
	movq      %rbx, (%rbp)
	jne       .L348
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
.L327:
	call      Z_factor@PLT
	movq      8(%rax), %rdx
	movq      16(%rax), %rax
	movq      $72057594037927935, %r12
	movq      %r13, %rbx
	movq      %rax, 16(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	andq      (%rdx), %r12
	movq      %r13, (%rbp)
	movq      %rdx, 8(%rsp)
	subq      (%rax), %r13
	leaq      0(,%r12,8), %r8
	shrq      $3, %r13
	subq      %r8, %rbx
	cmpq      %r13, %r12
	jbe       .L328
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 24(%rsp)
	call      pari_err@PLT
	movq      24(%rsp), %r8
.L328:
	movq      $3170534137668829184, %rsi
	movq      %rbx, (%rbp)
	movq      bot@GOTPCREL(%rip), %rdx
	orq       %r12, %rsi
	movq      %rsi, (%rbx)
	movq      (%rbp), %rax
	movq      %rbx, -24(%r15)
	movq      %rax, %r14
	subq      (%rdx), %rax
	subq      %r8, %r14
	shrq      $3, %rax
	cmpq      %rax, %r12
	jbe       .L329
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 40(%rsp)
	movq      %rsi, 24(%rsp)
	call      pari_err@PLT
	movq      40(%rsp), %r8
	movq      24(%rsp), %rsi
	movq      bot@GOTPCREL(%rip), %rdx
.L329:
	movq      %r14, (%rbp)
	movq      %rsi, (%r14)
	movq      (%rbp), %rax
	movq      %r14, -16(%r15)
	movq      %rax, %r13
	subq      (%rdx), %rax
	subq      %r8, %r13
	shrq      $3, %rax
	cmpq      %rax, %r12
	jbe       .L330
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 24(%rsp)
	call      pari_err@PLT
	movq      24(%rsp), %rsi
.L330:
	cmpq      $1, %r12
	movq      %r13, (%rbp)
	movq      %rsi, (%r13)
	movq      $72057594037927935, %rbp
	movq      %r13, -8(%r15)
	movl      $1, %r15d
	jg        .L344
	jmp       .L342
	.p2align 4,,10
	.p2align 3
.L349:
	movq      16(%rcx), %r8
.L333:
	movq      %r8, (%rbx,%r15,8)
	movq      16(%rsp), %rax
	movq      (%rax,%r15,8), %rcx
	movq      %rbp, %rax
	andq      8(%rcx), %rax
	cmpq      $2, %rax
	je        .L341
	cmpq      $3, %rax
	jne       .L346
	movq      16(%rcx), %rax
	movq      %rax, %rsi
.L336:
	movq      %rax, (%r14,%r15,8)
	movq      (%rbx,%r15,8), %rdi
	call      upowuu@PLT
	movq      %rax, (%r13,%r15,8)
	addq      $1, %r15
	cmpq      %r12, %r15
	je        .L342
.L344:
	movq      8(%rsp), %rax
	xorl      %r8d, %r8d
	movq      (%rax,%r15,8), %rcx
	movq      %rbp, %rax
	andq      8(%rcx), %rax
	cmpq      $2, %rax
	je        .L333
	cmpq      $3, %rax
	je        .L349
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r8, 24(%rsp)
	call      pari_err@PLT
	movq      24(%rsp), %r8
	jmp       .L333
	.p2align 4,,10
	.p2align 3
.L346:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	call      pari_err@PLT
	xorl      %eax, %eax
	xorl      %esi, %esi
	jmp       .L336
	.p2align 4,,10
	.p2align 3
.L341:
	xorl      %eax, %eax
	xorl      %esi, %esi
	jmp       .L336
	.p2align 4,,10
	.p2align 3
.L342:
	movq      32(%rsp), %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L348:
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rbx, %rax
	leaq      -24(%rbx), %r14
	subq      (%rdx), %rax
	cmpq      $23, %rax
	jbe       .L350
.L326:
	movq      $144115188075855875, %rax
	movq      %r14, (%rbp)
	movq      %r12, -8(%rbx)
	movq      %rax, -24(%rbx)
	movq      $4611686018427387907, %rax
	movq      %r14, %rdi
	movq      %rax, -16(%rbx)
	jmp       .L327
	.p2align 4,,10
	.p2align 3
.L350:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L326
	.cfi_endproc
	.size	factoru_pow, .-factoru_pow
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"denominators not allowed in divisors"
	.align 8
.LC16:
	.string	"too many divisors (more than %ld)"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	divisors
	.type	divisors, @function
divisors:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $72, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rdi), %rdx
	movq      (%rax), %rax
	movq      %rax, 48(%rsp)
	movq      %rdx, %rax
	shrq      $57, %rax
	cmpq      $19, %rax
	je        .L455
	cmpq      $1, %rax
	je        .L456
.L353:
	subq      $17, %rax
	cmpq      $2, %rax
	jbe       .L457
.L361:
	movq      %rbx, %rdi
	call      factor@PLT
	movq      8(%rax), %rbp
	movq      $72057594037927935, %rcx
	movq      16(%rax), %r13
	movq      %rcx, 16(%rsp)
	movl      $0, 60(%rsp)
	movq      (%rbp), %rcx
	andq      %rcx, 16(%rsp)
.L360:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
.L362:
	movq      16(%rsp), %rcx
	movq      %rax, %rdi
	leaq      0(,%rcx,8), %rdx
	subq      %rdx, %rdi
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rdi, 32(%rsp)
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rcx
	jbe       .L363
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L363:
	movq      avma@GOTPCREL(%rip), %rdx
	movq      32(%rsp), %r12
	movq      $3170534137668829184, %rax
	movq      %r12, (%rdx)
	movq      16(%rsp), %rdx
	orq       %rdx, %rax
	cmpq      $1, %rdx
	movq      %rax, (%r12)
	jle       .L411
	movq      %rbp, 24(%rsp)
	movl      $1, %r14d
	movl      $1, %r15d
	movq      $72057594037927935, %rbx
	movq      %rdx, %rbp
	jmp       .L373
	.p2align 4,,10
	.p2align 3
.L460:
	andq      %rbx, %rcx
	movq      16(%rax), %r9
	cmpq      $3, %rcx
	jg        .L366
	testq     %r9, %r9
	js        .L366
.L367:
	movq      %r9, %rcx
	movq      %r9, %rax
	negq      %rcx
	testq     %rdx, %rdx
	cmovle    %rcx, %rax
	testq     %rax, %rax
	movq      %rax, (%r12,%r15,8)
	js        .L369
.L454:
	leaq      1(%rax), %rsi
.L370:
	movq      %r14, %rdi
	xorl      %r14d, %r14d
	call      muluu@PLT
	movq      %rbx, %rdx
	andq      8(%rax), %rdx
	cmpq      $3, %rdx
	je        .L458
	addq      $1, %r15
	cmpq      %rbp, %r15
	je        .L459
.L373:
	movq      (%r13,%r15,8), %rax
	movq      8(%rax), %rcx
	movq      %rcx, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	jne       .L460
	movq      $0, (%r12,%r15,8)
	movl      $1, %esi
	jmp       .L370
.L366:
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r9, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
	movq      8(%rsp), %r9
	movq      (%rsp), %rdx
	jmp       .L367
.L458:
	addq      $1, %r15
	movq      16(%rax), %r14
	cmpq      %rbp, %r15
	jne       .L373
.L459:
	testq     %r14, %r14
	movq      24(%rsp), %rbp
	je        .L414
	leaq      1(%r14), %r15
	movq      $-72057594037927936, %rax
	movq      $2449958197289549824, %rbx
	movq      %r15, %r13
	orq       %r15, %rbx
	leaq      0(,%r15,8), %r12
	andq      %rax, %r13
	testq     %rax, %r14
	je        .L364
.L374:
	leaq      .LC16(%rip), %rsi
	movq      $72057594037927934, %rdx
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L364:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, %rcx
	subq      %r12, %rcx
	movq      %rcx, 24(%rsp)
	movq      %rcx, 40(%rsp)
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       .L375
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L375:
	movq      avma@GOTPCREL(%rip), %rax
	movq      24(%rsp), %rcx
	testq     %r13, %r13
	movq      %rcx, (%rax)
	je        .L376
	leaq      .LC13(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	movq      24(%rsp), %rcx
.L376:
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      %rbx, (%rcx)
	movl      $1, %r14d
	leaq      8(%rcx), %rbx
	movq      (%rax), %rax
	movq      %rax, 8(%rcx)
	movl      60(%rsp), %eax
	testl     %eax, %eax
	jne       .L377
	cmpq      $1, 16(%rsp)
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
	jle       .L379
.L433:
	movq      32(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	testq     %rax, %rax
	movq      %rax, 8(%rsp)
	je        .L388
	movq      24(%rsp), %r12
	movq      %rbp, %rax
	movq      %rbx, (%rsp)
	movq      %r14, %rbp
	movq      %rax, %r14
	.p2align 4,,10
	.p2align 3
.L389:
	cmpq      %rbx, %r12
	jae       .L391
	movq      %r12, %r13
	movq      %rbx, %r15
	.p2align 4,,10
	.p2align 3
.L392:
	addq      $8, %r13
	movq      (%rbp,%r14,8), %rsi
	movq      (%r13), %rdi
	addq      $8, %r15
	call      gmul@PLT
	cmpq      %rbx, %r13
	movq      %rax, (%r15)
	jb        .L392
	notq      %r12
	leaq      (%r12,%rbx), %rax
	shrq      $3, %rax
	leaq      8(%rbx,%rax,8), %rbx
.L391:
	subq      $1, 8(%rsp)
	je        .L451
	movq      (%rsp), %r12
	movq      %rbx, (%rsp)
	jmp       .L389
.L369:
	leaq      .LC15(%rip), %rsi
	xorl      %eax, %eax
	movl      $5, %edi
	call      pari_err@PLT
	movq      (%r12,%r15,8), %rax
	jmp       .L454
.L377:
	cmpq      $1, 16(%rsp)
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
	jg        .L434
.L386:
	movq      24(%rsp), %rdi
	call      sort@PLT
	movq      %rax, 40(%rsp)
.L379:
	movq      bot@GOTPCREL(%rip), %rax
	movq      40(%rsp), %rcx
	cmpq      (%rax), %rcx
	jb        .L394
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rcx
	jae       .L394
	movq      48(%rsp), %rax
	cmpq      %rax, 40(%rsp)
	jae       .L394
	movq      40(%rsp), %rax
	movq      (%rax), %rax
	movq      %rax, %rdx
	shrq      $57, %rdx
	cmpq      $2, %rdx
	je        .L398
	jg        .L399
	cmpq      $1, %rdx
	jne       .L397
	movq      40(%rsp), %rax
	movq      $72057594037927935, %rdx
	movq      48(%rsp), %rcx
	movq      40(%rsp), %rdi
	andq      8(%rax), %rdx
	leaq      0(,%rdx,8), %rax
	subq      %rax, %rcx
	leaq      -1(%rdx), %rax
	testq     %rax, %rax
	jle       .L403
.L435:
	movq      (%rdi,%rax,8), %rsi
	movq      %rsi, (%rcx,%rax,8)
	subq      $1, %rax
	jne       .L435
.L403:
	movq      $144115188075855872, %rax
	orq       %rdx, %rax
	movq      %rax, (%rcx)
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rcx, (%rax)
	addq      $72, %rsp
	movq      %rcx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L394:
	movq      avma@GOTPCREL(%rip), %rax
	movq      48(%rsp), %rcx
	movq      %rcx, (%rax)
	movq      40(%rsp), %rax
.L445:
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L451:
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
.L388:
	addq      $1, %rbp
	cmpq      16(%rsp), %rbp
	jne       .L433
	jmp       .L379
	.p2align 4,,10
	.p2align 3
.L450:
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
.L381:
	addq      $1, %rbp
	cmpq      16(%rsp), %rbp
	je        .L386
.L434:
	movq      32(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	testq     %rax, %rax
	movq      %rax, 8(%rsp)
	je        .L381
	movq      24(%rsp), %r12
	movq      %rbp, %rax
	movq      %rbx, (%rsp)
	movq      %r14, %rbp
	movq      %rax, %r14
	.p2align 4,,10
	.p2align 3
.L382:
	cmpq      %rbx, %r12
	jae       .L384
	movq      %r12, %r13
	movq      %rbx, %r15
	.p2align 4,,10
	.p2align 3
.L385:
	addq      $8, %r13
	movq      (%rbp,%r14,8), %rsi
	movq      (%r13), %rdi
	addq      $8, %r15
	call      mulii@PLT
	cmpq      %rbx, %r13
	movq      %rax, (%r15)
	jb        .L385
	notq      %r12
	leaq      (%r12,%rbx), %rax
	shrq      $3, %rax
	leaq      8(%rbx,%rax,8), %rbx
.L384:
	subq      $1, 8(%rsp)
	je        .L450
	movq      (%rsp), %r12
	movq      %rbx, (%rsp)
	jmp       .L382
.L414:
	movq      $2449958197289549825, %rbx
	xorl      %r13d, %r13d
	movl      $8, %r12d
	movl      $1, %r15d
	jmp       .L374
.L455:
	movq      $72057594037927935, %r14
	andq      %r14, %rdx
	cmpq      $3, %rdx
	jne       .L353
	movq      8(%rdi), %rbp
	andq      (%rbp), %r14
	cmpq      $1, %r14
	movq      %r14, 16(%rsp)
	jle       .L354
	movq      8(%rbp), %rax
	movq      (%rax), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	je        .L356
	jmp       .L355
	.p2align 4,,10
	.p2align 3
.L357:
	movq      (%rbp,%rax,8), %rdx
	movq      (%rdx), %rdx
	shrq      $57, %rdx
	cmpq      $1, %rdx
	jne       .L355
.L356:
	addq      $1, %rax
	cmpq      16(%rsp), %rax
	jne       .L357
	movq      16(%rbx), %r13
	movq      48(%rsp), %rax
.L409:
	movq      8(%rbp), %rdx
	movl      $1, 60(%rsp)
	cmpq      $0, 8(%rdx)
	jns       .L362
	addq      $8, %r13
	addq      $8, %rbp
	subq      $1, 16(%rsp)
	jmp       .L362
.L457:
	leaq      .LC14(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L361
.L397:
	movq      40(%rsp), %rcx
	movq      48(%rsp), %rdi
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	movq      $72057594037927935, %rdx
	popq      %r15
	andq      %rdx, %rax
	movq      %rcx, %rdx
	leaq      (%rcx,%rax,8), %rsi
	jmp       gerepile@PLT
.L399:
	subq      $21, %rdx
	cmpq      $1, %rdx
	ja        .L397
.L398:
	movq      $72057594037927935, %rcx
	movq      avma@GOTPCREL(%rip), %rdi
	andq      %rax, %rcx
	movq      48(%rsp), %rax
	leaq      0(,%rcx,8), %rdx
	subq      %rdx, %rax
	testq     %rcx, %rcx
	movq      %rax, (%rdi)
	je        .L445
	movq      40(%rsp), %rcx
	leaq      -8(%rdx,%rax), %rdx
	leaq      -8(%rax), %rsi
	subq      %rax, %rcx
.L407:
	movq      (%rcx,%rdx), %rdi
	subq      $8, %rdx
	movq      %rdi, 8(%rdx)
	cmpq      %rsi, %rdx
	jne       .L407
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L411:
	movl      $16, %r12d
	movq      $2449958197289549826, %rbx
	xorl      %r13d, %r13d
	movl      $2, %r15d
	jmp       .L364
.L456:
	call      Z_factor@PLT
	movq      8(%rax), %rbp
	movq      $72057594037927935, %rcx
	movq      16(%rax), %r13
	movq      %rcx, 16(%rsp)
	movq      (%rbp), %rcx
	andq      %rcx, 16(%rsp)
	cmpq      $1, 16(%rsp)
	jle       .L461
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       .L409
.L355:
	movq      16(%rbx), %r13
	movq      48(%rsp), %rax
	movl      $0, 60(%rsp)
	jmp       .L362
.L354:
	movq      16(%rdi), %r13
	movq      48(%rsp), %rax
	movl      $1, 60(%rsp)
	jmp       .L362
.L461:
	movl      $1, 60(%rsp)
	jmp       .L360
	.cfi_endproc
	.size	divisors, .-divisors
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	divisorsu
	.type	divisorsu, @function
divisorsu:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $24, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 8(%rsp)
	call      factoru@PLT
	movq      8(%rax), %rbx
	movq      16(%rax), %rbp
	andq      (%rbx), %r12
	cmpq      $1, %r12
	jle       .L504
	leaq      8(%rbp), %rax
	leaq      -1(%r12), %rsi
	salq      $60, %rax
	movq      %rsi, %rdx
	shrq      $63, %rax
	cmpq      %rsi, %rax
	cmova     %rsi, %rax
	cmpq      $5, %rsi
	movq      %rax, %rdi
	ja        .L541
	movq      8(%rbp), %rax
	addq      $1, %rax
	cmpq      $1, %rdx
	jbe       .L507
.L543:
	movq      16(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	cmpq      $2, %rdx
	jbe       .L508
	movq      24(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	cmpq      $3, %rdx
	jbe       .L509
	movq      32(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	cmpq      $4, %rdx
	jbe       .L510
	movq      40(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	movl      $6, %ecx
.L466:
	cmpq      %rdx, %rsi
	je        .L467
.L465:
	subq      %rdx, %rsi
	movq      %rsi, %rdi
	movq      %rsi, %r9
	shrq      $1, %rdi
	movq      %rdi, %r8
	addq      %r8, %r8
	je        .L468
	movdqa    .LC17(%rip), %xmm2
	leaq      8(%rbp,%rdx,8), %rsi
	xorl      %edx, %edx
	movdqa    %xmm2, %xmm0
.L471:
	movdqa    (%rsi), %xmm1
	movdqa    %xmm0, %xmm4
	addq      $1, %rdx
	addq      $16, %rsi
	paddq     %xmm2, %xmm1
	movdqa    %xmm1, %xmm3
	movdqa    %xmm1, %xmm5
	cmpq      %rdi, %rdx
	psrlq     $32, %xmm4
	pmuludq   %xmm4, %xmm1
	pmuludq   %xmm0, %xmm3
	psrlq     $32, %xmm5
	pmuludq   %xmm5, %xmm0
	paddq     %xmm1, %xmm0
	psllq     $32, %xmm0
	paddq     %xmm3, %xmm0
	jb        .L471
	movdqa    %xmm0, %xmm6
	movdqa    %xmm0, %xmm3
	addq      %r8, %rcx
	psrldq    $8, %xmm6
	movdqa    %xmm6, %xmm2
	movdqa    %xmm6, %xmm1
	movdqa    %xmm6, %xmm4
	psrlq     $32, %xmm3
	pmuludq   %xmm0, %xmm1
	pmuludq   %xmm3, %xmm2
	psrlq     $32, %xmm4
	pmuludq   %xmm4, %xmm0
	paddq     %xmm2, %xmm0
	psllq     $32, %xmm0
	paddq     %xmm0, %xmm1
	movq      %xmm1, (%rsp)
	imulq     (%rsp), %rax
	cmpq      %r8, %r9
	je        .L467
.L468:
	movq      (%rbp,%rcx,8), %rdx
	addq      $1, %rdx
	imulq     %rdx, %rax
.L467:
	addq      $1, %rax
	movq      $-72057594037927936, %r15
	movq      $3170534137668829184, %r14
	leaq      0(,%rax,8), %rcx
	andq      %rax, %r15
	orq       %rax, %r14
.L463:
	movq      avma@GOTPCREL(%rip), %rdi
	movq      (%rdi), %rdx
	movq      bot@GOTPCREL(%rip), %rdi
	movq      %rdx, %r13
	subq      (%rdi), %rdx
	subq      %rcx, %r13
	shrq      $3, %rdx
	cmpq      %rax, %rdx
	jae       .L472
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L472:
	movq      avma@GOTPCREL(%rip), %rax
	testq     %r15, %r15
	movq      %r13, (%rax)
	je        .L473
	leaq      .LC13(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L473:
	cmpq      $1, %r12
	movq      %r14, (%r13)
	leaq      8(%r13), %rax
	movq      $1, 8(%r13)
	jle       .L488
	leaq      8(%rbx), %r8
	leaq      (%rbp,%r12,8), %rbx
	leaq      8(%rbp), %r15
	movq      %rbx, (%rsp)
	.p2align 4,,10
	.p2align 3
.L489:
	movq      (%r15), %r10
	leaq      8(%r8), %r14
	testq     %r10, %r10
	je        .L477
	leaq      8(%r8), %r14
	movq      %r13, %rcx
	movq      %rax, %rbx
	.p2align 4,,10
	.p2align 3
.L478:
	cmpq      %rcx, %rax
	jbe       .L484
	leaq      8(%rcx), %rdx
	leaq      7(%rax), %rsi
	leaq      8(%rax), %r11
	leaq      24(%rax), %r12
	subq      %rdx, %rsi
	shrq      $3, %rsi
	leaq      1(%rsi), %rdi
	leaq      24(%rcx), %rsi
	cmpq      $21, %rdi
	leaq      0(,%rdi,8), %r9
	seta      %bpl
	cmpq      %rsi, %r11
	setae     %sil
	cmpq      %r12, %rdx
	setae     %r12b
	orl       %r12d, %esi
	testb     %sil, %bpl
	je        .L487
	leaq      (%r11,%r9), %rsi
	cmpq      %rsi, %r8
	setae     %bpl
	cmpq      %r14, %r11
	setae     %sil
	orb       %sil, %bpl
	je        .L487
	movq      %rdi, %r11
	xorl      %edx, %edx
	xorl      %esi, %esi
	shrq      $1, %r11
	leaq      (%r11,%r11), %rbp
.L479:
	movq      (%r8), %xmm0
	addq      $1, %rsi
	punpcklqdq %xmm0, %xmm0
	movdqu    8(%rcx,%rdx), %xmm2
	movdqa    %xmm2, %xmm1
	movdqa    %xmm2, %xmm4
	movdqa    %xmm0, %xmm3
	pmuludq   %xmm0, %xmm1
	psrlq     $32, %xmm4
	psrlq     $32, %xmm3
	pmuludq   %xmm4, %xmm0
	pmuludq   %xmm3, %xmm2
	paddq     %xmm2, %xmm0
	psllq     $32, %xmm0
	paddq     %xmm0, %xmm1
	movdqu    %xmm1, 8(%rax,%rdx)
	addq      $16, %rdx
	cmpq      %rsi, %r11
	ja        .L479
	leaq      0(,%rbp,8), %rdx
	leaq      (%rax,%rdx), %rsi
	addq      %rcx, %rdx
	cmpq      %rdi, %rbp
	je        .L480
	movq      8(%rdx), %rdx
	imulq     (%r8), %rdx
	movq      %rdx, 8(%rsi)
.L480:
	addq      %r9, %rax
.L484:
	subq      $1, %r10
	je        .L477
	movq      %rbx, %rcx
	movq      %rax, %rbx
	jmp       .L478
	.p2align 4,,10
	.p2align 3
.L487:
	movq      %rax, %rsi
	jmp       .L481
	.p2align 4,,10
	.p2align 3
.L542:
	addq      $8, %rdx
.L481:
	movq      (%rdx), %rcx
	addq      $8, %rsi
	imulq     (%r8), %rcx
	cmpq      %rdx, %rax
	movq      %rcx, (%rsi)
	ja        .L542
	jmp       .L480
	.p2align 4,,10
	.p2align 3
.L477:
	addq      $8, %r15
	cmpq      (%rsp), %r15
	movq      %r14, %r8
	jne       .L489
.L488:
	movq      %r13, %rdi
	call      vecsmall_sort@PLT
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r13
	jb        .L476
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r13
	jae       .L476
	cmpq      8(%rsp), %r13
	jae       .L476
	movq      (%r13), %rax
	movq      %rax, %rdx
	shrq      $57, %rdx
	cmpq      $2, %rdx
	je        .L493
	jg        .L494
	cmpq      $1, %rdx
	jne       .L492
	movq      $72057594037927935, %rdx
	andq      8(%r13), %rdx
	movq      8(%rsp), %rcx
	leaq      0(,%rdx,8), %rax
	subq      %rax, %rcx
	leaq      -1(%rdx), %rax
	testq     %rax, %rax
	jle       .L498
.L526:
	movq      (%r13,%rax,8), %rsi
	movq      %rsi, (%rcx,%rax,8)
	subq      $1, %rax
	jne       .L526
.L498:
	movq      $144115188075855872, %rax
	orq       %rdx, %rax
	movq      %rax, (%rcx)
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rcx, (%rax)
	addq      $24, %rsp
	movq      %rcx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L476:
	movq      avma@GOTPCREL(%rip), %rax
	movq      8(%rsp), %rbx
	movq      %rbx, (%rax)
	addq      $24, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L541:
	xorl      %edx, %edx
	testq     %rdi, %rdi
	movl      $1, %eax
	movl      $1, %ecx
	je        .L465
	movq      8(%rbp), %rax
	movq      %rdi, %rdx
	addq      $1, %rax
	cmpq      $1, %rdx
	ja        .L543
.L507:
	movl      $2, %ecx
	jmp       .L466
.L510:
	movl      $5, %ecx
	jmp       .L466
.L509:
	movl      $4, %ecx
	jmp       .L466
.L508:
	movl      $3, %ecx
	jmp       .L466
.L504:
	movl      $16, %ecx
	movq      $3170534137668829186, %r14
	xorl      %r15d, %r15d
	movl      $2, %eax
	jmp       .L463
.L492:
	movq      8(%rsp), %rdi
	addq      $24, %rsp
	movq      $72057594037927935, %rdx
	popq      %rbx
	popq      %rbp
	popq      %r12
	andq      %rdx, %rax
	movq      %r13, %rdx
	leaq      (%r13,%rax,8), %rsi
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       gerepile@PLT
.L494:
	subq      $21, %rdx
	cmpq      $1, %rdx
	ja        .L492
.L493:
	movq      $72057594037927935, %rdx
	movq      avma@GOTPCREL(%rip), %rbx
	andq      %rdx, %rax
	movq      8(%rsp), %rdx
	leaq      0(,%rax,8), %rcx
	subq      %rcx, %rdx
	testq     %rax, %rax
	movq      %rdx, (%rbx)
	je        .L501
	leaq      -8(%r13,%rcx), %rax
	leaq      -8(%r13), %rsi
	movq      %rdx, %rcx
	subq      %r13, %rcx
.L502:
	movq      (%rax), %rdi
	movq      %rdi, (%rcx,%rax)
	subq      $8, %rax
	cmpq      %rsi, %rax
	jne       .L502
.L501:
	addq      $24, %rsp
	movq      %rdx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.cfi_endproc
	.size	divisorsu, .-divisorsu
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	factor_pn_1
	.type	factor_pn_1, @function
factor_pn_1:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	movq      %rdi, %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	xorl      %ebp, %ebp
	pushq     %rbx
	movq      %rsi, %rbx
	movq      %rdi, %rsi
	subq      $40, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      8(%rdi), %rdx
	movq      $-1, %rdi
	movq      (%rax), %rax
	sarq      $62, %rdx
	movq      %rax, 16(%rsp)
	call      addsi_sign@PLT
	movq      %rax, %rdi
	call      Z_factor@PLT
	movq      %rbx, %rdi
	movq      %rax, %r12
	call      divisorsu@PLT
	movq      %rax, %r13
	movq      8(%r14), %rax
	movq      $72057594037927935, %rdx
	andq      %rax, %rdx
	cmpq      $3, %rdx
	je        .L574
.L545:
	movq      $72057594037927935, %r15
	movq      %r15, %rax
	andq      (%r13), %rax
	cmpq      $2, %rax
	jle       .L546
	movq      %rbp, %rax
	movl      $2, %ebx
	andl      $3, %eax
	movq      %rax, 8(%rsp)
	jmp       .L553
	.p2align 4,,10
	.p2align 3
.L549:
	cmpq      $3, 8(%rsp)
	je        .L575
.L551:
	cmpq      $2, %rbp
	je        .L576
	.p2align 4,,10
	.p2align 3
.L548:
	movq      %r14, %rsi
	call      polcyclo_eval@PLT
	movq      %rax, %rdi
	call      Z_factor@PLT
	movq      %rax, %rsi
.L552:
	movq      cmp_nodata@GOTPCREL(%rip), %rcx
	movq      cmpii@GOTPCREL(%rip), %rdx
	movq      %r12, %rdi
	addq      $1, %rbx
	call      merge_factor@PLT
	movq      %rax, %r12
	movq      %r15, %rax
	andq      (%r13), %rax
	cmpq      %rbx, %rax
	jle       .L546
.L553:
	testq     %rbp, %rbp
	movq      (%r13,%rbx,8), %rdi
	je        .L548
	movq      %rdi, %rax
	cqto      
	idivq     %rbp
	testq     %rdx, %rdx
	jne       .L548
	cmpq      $1, 8(%rsp)
	jne       .L549
	testb     $1, %dil
	je        .L551
.L550:
	movq      %rdi, %rsi
	movq      %r14, %rdi
	call      factor_Aurifeuille_prime@PLT
	movq      %rax, %rdi
	movq      %rax, 24(%rsp)
	call      Z_factor@PLT
	movq      cmp_nodata@GOTPCREL(%rip), %rcx
	movq      cmpii@GOTPCREL(%rip), %rdx
	movq      %r12, %rdi
	movq      %rax, %rsi
	call      merge_factor@PLT
	movq      (%r13,%rbx,8), %rdi
	movq      %r14, %rsi
	movq      %rax, %r12
	call      polcyclo_eval@PLT
	movq      24(%rsp), %r8
	movq      %rax, %rdi
	movq      %r8, %rsi
	call      diviiexact@PLT
	movq      %rax, %rdi
	call      Z_factor@PLT
	movq      %rax, %rsi
	jmp       .L552
	.p2align 4,,10
	.p2align 3
.L546:
	movq      %r12, %rdi
	call      copy_bin@PLT
	movq      %rax, %rbx
	movq      16(%rsp), %rcx
	movq      avma@GOTPCREL(%rip), %rax
	movq      8(%rbx), %rbp
	movq      %rcx, (%rax)
	testq     %rbp, %rbp
	je        .L577
	movq      bot@GOTPCREL(%rip), %rax
	movq      %rcx, %r13
	movq      (%rbx), %rdx
	movq      %rbp, %r12
	subq      16(%rbx), %r12
	leaq      32(%rbx), %r15
	subq      (%rax), %rcx
	leaq      0(,%rdx,8), %r14
	sarq      $3, %r12
	subq      %r14, %r13
	movq      %rcx, %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L557
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L557:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %r15, %rsi
	movq      %r13, %rdi
	movq      %r14, %rdx
	leaq      (%r13,%r12,8), %r12
	movq      %r13, (%rax)
	call      memcpy@PLT
	movl      24(%rbx), %eax
	movq      %r12, %rsi
	movq      %r12, %rdi
	subq      %rbp, %rsi
	testl     %eax, %eax
	jne       .L578
	call      shiftaddress@PLT
.L559:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rbx, %rdi
	movl      (%rbp), %r13d
	movl      $1, (%rbp)
	call      free@PLT
	testl     %r13d, %r13d
	movl      %r13d, (%rbp)
	jne       .L556
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L556
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L556:
	addq      $40, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L575:
	movq      %rdi, %rax
	andl      $3, %eax
	cmpq      $2, %rax
	je        .L550
	cmpq      $2, %rbp
	jne       .L548
.L576:
	movq      %rdi, %rax
	andl      $7, %eax
	cmpq      $4, %rax
	jne       .L548
	jmp       .L550
	.p2align 4,,10
	.p2align 3
.L578:
	call      shiftaddress_canon@PLT
	.p2align 4,,8
	jmp       .L559
	.p2align 4,,10
	.p2align 3
.L574:
	movq      16(%r14), %rdx
	testq     %rdx, %rdx
	js        .L545
	sarq      $62, %rax
	movq      %rdx, %rbp
	negq      %rdx
	cmpq      $1, %rax
	cmovne    %rdx, %rbp
	jmp       .L545
.L577:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rbx, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L555
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L579
.L555:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r12
	jmp       .L556
.L579:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L555
	.cfi_endproc
	.size	factor_pn_1, .-factor_pn_1
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	corepartial
	.type	corepartial, @function
corepartial:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %r12
	shrq      $57, %rax
	movq      (%r12), %r13
	cmpq      $1, %rax
	je        .L581
	leaq      .LC18(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L581:
	movq      %rbp, %rsi
	movq      %rbx, %rdi
	movq      $72057594037927935, %rbp
	call      Z_factor_limit@PLT
	movq      8(%rax), %r15
	movq      16(%rax), %r14
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      (%r15), %rsi
	movq      (%rax), %rax
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      $1, %rdx
	jle       .L582
	movl      $1, %ebx
	jmp       .L584
	.p2align 4,,10
	.p2align 3
.L583:
	movq      %rsi, %rdx
	addq      $1, %rbx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jge       .L582
.L584:
	movq      (%r14,%rbx,8), %rdx
	movq      %rbp, %rcx
	andq      8(%rdx), %rcx
	testb     $1, -8(%rdx,%rcx,8)
	je        .L583
	movq      (%r15,%rbx,8), %rsi
	movq      %rax, %rdi
	addq      $1, %rbx
	call      mulii@PLT
	movq      (%r15), %rsi
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jl        .L584
.L582:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L585
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L586
.L585:
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L586:
	cmpq      %r13, %rax
	jae       .L585
	movq      $72057594037927935, %rsi
	andq      8(%rax), %rsi
	leaq      0(,%rsi,8), %rdx
	subq      %rdx, %r13
	leaq      -1(%rsi), %rdx
	testq     %rdx, %rdx
	jle       .L589
	.p2align 4,,10
	.p2align 3
.L598:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%r13,%rdx,8)
	subq      $1, %rdx
	jne       .L598
.L589:
	movq      $144115188075855872, %rax
	orq       %rsi, %rax
	movq      %rax, (%r13)
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	movq      %r13, %rax
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.cfi_endproc
	.size	corepartial, .-corepartial
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	core2partial
	.type	core2partial, @function
core2partial:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %rbp
	shrq      $57, %rax
	movq      (%rbp), %r13
	cmpq      $1, %rax
	je        .L606
	leaq      .LC19(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L606:
	movq      %r12, %rsi
	movq      %rbx, %rdi
	call      Z_factor_limit@PLT
	movq      %rax, %rdi
	call      core2fa
	movq      %rax, %rdi
	call      copy_bin@PLT
	movq      8(%rax), %r12
	movq      %rax, %rbx
	movq      %r13, (%rbp)
	testq     %r12, %r12
	je        .L623
	movq      bot@GOTPCREL(%rip), %rcx
	movq      (%rax), %rax
	movq      %r13, %r15
	movq      %r12, %r14
	subq      16(%rbx), %r14
	leaq      32(%rbx), %rsi
	subq      (%rcx), %r13
	leaq      0(,%rax,8), %rdx
	sarq      $3, %r14
	subq      %rdx, %r15
	shrq      $3, %r13
	cmpq      %r13, %rax
	jbe       .L610
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
	movq      8(%rsp), %rsi
	movq      (%rsp), %rdx
.L610:
	movq      %r15, %rdi
	movq      %r15, (%rbp)
	leaq      (%r15,%r14,8), %rbp
	call      memcpy@PLT
	movl      24(%rbx), %eax
	movq      %rbp, %rsi
	movq      %rbp, %rdi
	subq      %r12, %rsi
	testl     %eax, %eax
	jne       .L624
	call      shiftaddress@PLT
.L612:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq      %rbx, %rdi
	movl      (%r12), %r13d
	movl      $1, (%r12)
	call      free@PLT
	testl     %r13d, %r13d
	movl      %r13d, (%r12)
	jne       .L609
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L609
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L609:
	addq      $24, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L624:
	call      shiftaddress_canon@PLT
	jmp       .L612
	.p2align 4,,10
	.p2align 3
.L623:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rax, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L608
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L625
.L608:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	jmp       .L609
	.p2align 4,,10
	.p2align 3
.L625:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L608
	.cfi_endproc
	.size	core2partial, .-core2partial
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	core
	.type	core, @function
core:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %r12
	shrq      $57, %rax
	movq      (%r12), %r13
	cmpq      $1, %rax
	je        .L627
	leaq      .LC20(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L627:
	movq      %rbx, %rdi
	movq      $72057594037927935, %rbp
	call      Z_factor@PLT
	movq      8(%rax), %r15
	movq      16(%rax), %r14
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      (%r15), %rsi
	movq      (%rax), %rax
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      $1, %rdx
	jle       .L628
	movl      $1, %ebx
	jmp       .L630
	.p2align 4,,10
	.p2align 3
.L629:
	movq      %rsi, %rdx
	addq      $1, %rbx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jge       .L628
.L630:
	movq      (%r14,%rbx,8), %rdx
	movq      %rbp, %rcx
	andq      8(%rdx), %rcx
	testb     $1, -8(%rdx,%rcx,8)
	je        .L629
	movq      (%r15,%rbx,8), %rsi
	movq      %rax, %rdi
	addq      $1, %rbx
	call      mulii@PLT
	movq      (%r15), %rsi
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jl        .L630
.L628:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L631
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L632
.L631:
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L632:
	cmpq      %r13, %rax
	jae       .L631
	movq      $72057594037927935, %rsi
	andq      8(%rax), %rsi
	leaq      0(,%rsi,8), %rdx
	subq      %rdx, %r13
	leaq      -1(%rsi), %rdx
	testq     %rdx, %rdx
	jle       .L635
	.p2align 4,,10
	.p2align 3
.L644:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%r13,%rdx,8)
	subq      $1, %rdx
	jne       .L644
.L635:
	movq      $144115188075855872, %rax
	orq       %rsi, %rax
	movq      %rax, (%r13)
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	movq      %r13, %rax
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.cfi_endproc
	.size	core, .-core
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	core2
	.type	core2, @function
core2:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %rbp
	shrq      $57, %rax
	movq      (%rbp), %r13
	cmpq      $1, %rax
	je        .L652
	leaq      .LC20(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L652:
	movq      %rbx, %rdi
	call      Z_factor@PLT
	movq      %rax, %rdi
	call      core2fa
	movq      %rax, %rdi
	call      copy_bin@PLT
	movq      8(%rax), %r12
	movq      %rax, %rbx
	movq      %r13, (%rbp)
	testq     %r12, %r12
	je        .L669
	movq      bot@GOTPCREL(%rip), %rcx
	movq      (%rax), %rax
	movq      %r13, %r15
	movq      %r12, %r14
	subq      16(%rbx), %r14
	leaq      32(%rbx), %rsi
	subq      (%rcx), %r13
	leaq      0(,%rax,8), %rdx
	sarq      $3, %r14
	subq      %rdx, %r15
	shrq      $3, %r13
	cmpq      %r13, %rax
	jbe       .L656
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
	movq      8(%rsp), %rsi
	movq      (%rsp), %rdx
.L656:
	movq      %r15, %rdi
	movq      %r15, (%rbp)
	leaq      (%r15,%r14,8), %rbp
	call      memcpy@PLT
	movl      24(%rbx), %eax
	movq      %rbp, %rsi
	movq      %rbp, %rdi
	subq      %r12, %rsi
	testl     %eax, %eax
	jne       .L670
	call      shiftaddress@PLT
.L658:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq      %rbx, %rdi
	movl      (%r12), %r13d
	movl      $1, (%r12)
	call      free@PLT
	testl     %r13d, %r13d
	movl      %r13d, (%r12)
	jne       .L655
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L655
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L655:
	addq      $24, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L670:
	call      shiftaddress_canon@PLT
	jmp       .L658
	.p2align 4,,10
	.p2align 3
.L669:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rax, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L654
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L671
.L654:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	jmp       .L655
	.p2align 4,,10
	.p2align 3
.L671:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
	jmp       .L654
	.cfi_endproc
	.size	core2, .-core2
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	core0
	.type	core0, @function
core0:
	.cfi_startproc
	testq     %rsi, %rsi
	jne       .L674
	jmp       core@PLT
	.p2align 4,,10
	.p2align 3
.L674:
	jmp       core2@PLT
	.cfi_endproc
	.size	core0, .-core0
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	coredisc
	.type	coredisc, @function
coredisc:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rbp
	call      core@PLT
	movq      8(%rax), %rcx
	movq      %rax, %rdi
	movq      %rcx, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	je        .L690
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	movq      -8(%rdi,%rcx,8), %rax
	andl      $3, %eax
	testq     %rdx, %rdx
	js        .L696
.L677:
	cmpq      $1, %rax
	jle       .L687
	movl      $2, %esi
	call      shifti@PLT
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L678
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jae       .L678
	cmpq      %rbp, %rax
	jae       .L678
	movq      $72057594037927935, %rdi
	andq      8(%rax), %rdi
	movq      %rbp, %rsi
	leaq      0(,%rdi,8), %rdx
	subq      %rdx, %rsi
	leaq      -1(%rdi), %rdx
	testq     %rdx, %rdx
	jle       .L682
	.p2align 4,,10
	.p2align 3
.L691:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%rsi,%rdx,8)
	subq      $1, %rdx
	jne       .L691
.L682:
	movq      $144115188075855872, %rax
	orq       %rdi, %rax
	movq      %rax, (%rsi)
	movq      %rsi, (%rbx)
	movq      %rsi, %rax
.L690:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L678:
	movq      %rbp, (%rbx)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L696:
	movl      $4, %edx
	subq      %rax, %rdx
	movq      %rdx, %rax
	jmp       .L677
.L687:
	movq      %rdi, %rax
	jmp       .L690
	.cfi_endproc
	.size	coredisc, .-coredisc
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	coredisc2
	.type	coredisc2, @function
coredisc2:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %r13
	call      core2@PLT
	movq      8(%rax), %r12
	movq      16(%rax), %r14
	movq      8(%r12), %rcx
	movq      %rcx, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	je        .L726
	movq      $72057594037927935, %rsi
	andq      %rsi, %rcx
	movq      -8(%r12,%rcx,8), %rcx
	andl      $3, %ecx
	testq     %rdx, %rdx
	js        .L729
.L699:
	cmpq      $1, %rcx
	jle       .L726
	movq      (%rbp), %rbx
	movq      bot@GOTPCREL(%rip), %rsi
	movq      %rbx, %rax
	subq      (%rsi), %rax
	leaq      -24(%rbx), %r15
	cmpq      $23, %rax
	jbe       .L730
.L700:
	movq      $2449958197289549827, %rax
	movq      %r15, (%rbp)
	movl      $2, %esi
	movq      %r12, %rdi
	movq      %rax, -24(%rbx)
	call      shifti@PLT
	movq      $-1, %rsi
	movq      %rax, -16(%rbx)
	movq      %r14, %rdi
	call      gmul2n@PLT
	movq      %rax, -8(%rbx)
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r15
	jb        .L701
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r15
	jae       .L701
	cmpq      %r13, %r15
	jae       .L701
	movq      -24(%rbx), %rcx
	movq      %rcx, %rax
	shrq      $57, %rax
	cmpq      $2, %rax
	je        .L705
	jg        .L706
	cmpq      $1, %rax
	jne       .L704
	movq      $72057594037927935, %rax
	andq      -16(%rbx), %rax
	leaq      0(,%rax,8), %rdx
	leaq      -1(%rax), %rcx
	subq      %rdx, %r13
	testq     %rcx, %rcx
	jle       .L710
	.p2align 4,,10
	.p2align 3
.L723:
	movq      -24(%rbx,%rcx,8), %rsi
	movq      %rsi, (%r13,%rcx,8)
	subq      $1, %rcx
	jne       .L723
.L710:
	movq      $144115188075855872, %rdx
	orq       %rax, %rdx
	movq      %r13, %rax
	movq      %rdx, (%r13)
	movq      %r13, (%rbp)
	.p2align 4,,10
	.p2align 3
.L726:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L701:
	movq      %r13, (%rbp)
	addq      $8, %rsp
	movq      %r15, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L730:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L700
	.p2align 4,,10
	.p2align 3
.L729:
	movl      $4, %edx
	subq      %rcx, %rdx
	movq      %rdx, %rcx
	jmp       .L699
	.p2align 4,,10
	.p2align 3
.L706:
	subq      $21, %rax
	cmpq      $1, %rax
	jbe       .L705
.L704:
	addq      $8, %rsp
	movq      $72057594037927935, %rax
	movq      %r13, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	andq      %rax, %rcx
	movq      %r15, %rdx
	popq      %r14
	leaq      (%r15,%rcx,8), %rsi
	popq      %r15
	jmp       gerepile@PLT
	.p2align 4,,10
	.p2align 3
.L705:
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	leaq      0(,%rcx,8), %rax
	subq      %rax, %r13
	testq     %rcx, %rcx
	movq      %r13, (%rbp)
	je        .L713
	leaq      -8(%rax,%r13), %rcx
	leaq      -8(%r13), %rdi
	subq      %r13, %rbx
	.p2align 4,,10
	.p2align 3
.L714:
	movq      -24(%rbx,%rcx), %rsi
	subq      $8, %rcx
	movq      %rsi, 8(%rcx)
	cmpq      %rdi, %rcx
	jne       .L714
.L713:
	movq      %r13, %rax
	jmp       .L726
	.cfi_endproc
	.size	coredisc2, .-coredisc2
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	coredisc0
	.type	coredisc0, @function
coredisc0:
	.cfi_startproc
	testq     %rsi, %rsi
	jne       .L733
	jmp       coredisc@PLT
	.p2align 4,,10
	.p2align 3
.L733:
	jmp       coredisc2@PLT
	.cfi_endproc
	.size	coredisc0, .-coredisc0
# ----------------------
	.local	_maxprime
	.comm	_maxprime,8,16
# ----------------------
	.data
	.align 16
	.local	cache_model
	.type	cache_model, @object
cache_model:
	.quad	204800
	.long	-2061584302
	.long	1071141355
	.long	-1924145349
	.long	1066561175
	.size	cache_model, 24
# ----------------------
	.align 16
	.local	slow2_in_roots
	.type	slow2_in_roots, @object
slow2_in_roots:
	.long	-858993459
	.long	1074056396
	.size	slow2_in_roots, 8
# ----------------------
	.section       .rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1083129856
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	-687194767
	.long	1072787619
	.align 8
.LC8:
	.long	0
	.long	1138753536
	.align 8
.LC9:
	.long	0
	.long	1071644672
	.align 8
.LC10:
	.long	171798692
	.long	1073914839
	.align 8
.LC11:
	.long	-1717986918
	.long	1072798105
# ----------------------
	.section       .rodata.cst16,"aM",@progbits,16
	.align 16
.LC17:
	.quad	1
	.quad	1
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
