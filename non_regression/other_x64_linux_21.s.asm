	.file	"infback.c"
	.text
	.p2align 4
# ----------------------
	.globl	inflateBackInit_
	.type	inflateBackInit_, @function
inflateBackInit_:
	.cfi_startproc
	endbr64   
	testq     %rcx, %rcx
	je        .L7
	cmpb      $49, (%rcx)
	jne       .L7
	cmpl      $112, %r8d
	jne       .L7
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	testq     %rdi, %rdi
	je        .L9
	movq      %rdx, %r12
	testq     %rdx, %rdx
	je        .L9
	leal      -8(%rsi), %eax
	movl      %esi, %ebp
	cmpl      $7, %eax
	ja        .L9
	movq      64(%rdi), %rax
	movq      $0, 48(%rdi)
	testq     %rax, %rax
	je        .L3
	cmpq      $0, 72(%rbx)
	movq      80(%rdi), %rdi
	je        .L16
.L5:
	movl      $7152, %edx
	movl      $1, %esi
	call      *%rax
	testq     %rax, %rax
	je        .L10
	movl      $1, %edx
	movl      %ebp, %ecx
	movd      %ebp, %xmm0
	movq      %rax, 56(%rbx)
	sall      %cl, %edx
	movl      $32768, 20(%rax)
	movd      %edx, %xmm1
	movq      %r12, 64(%rax)
	punpckldq %xmm1, %xmm0
	movq      $0, 56(%rax)
	movq      %xmm0, 48(%rax)
	xorl      %eax, %eax
.L1:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L3:
	leaq      zcalloc(%rip), %rax
	movq      $0, 80(%rdi)
	movq      %rax, 64(%rdi)
	xorl      %edi, %edi
	cmpq      $0, 72(%rbx)
	jne       .L5
.L16:
	leaq      zcfree(%rip), %rsi
	movq      %rsi, 72(%rbx)
	jmp       .L5
	.p2align 4,,10
	.p2align 3
.L7:
	movl      $-6, %eax
	ret       
	.p2align 4,,10
	.p2align 3
.L9:
	movl      $-2, %eax
	jmp       .L1
.L10:
	movl      $-4, %eax
	jmp       .L1
	.cfi_endproc
	.size	inflateBackInit_, .-inflateBackInit_
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"invalid block type"
.LC2:
	.string	"invalid stored block lengths"
.LC4:
	.string	"invalid code lengths set"
.LC6:
	.string	"invalid literal/lengths set"
.LC7:
	.string	"invalid distances set"
.LC8:
	.string	"invalid literal/length code"
.LC9:
	.string	"invalid distance code"
.LC10:
	.string	"invalid distance too far back"
.LC11:
	.string	"invalid bit length repeat"
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"too many length or distance symbols"
	.align 8
.LC5:
	.string	"invalid code -- missing end-of-block"
# ----------------------
	.text
	.p2align 4
# ----------------------
	.globl	inflateBack
	.type	inflateBack, @function
inflateBack:
	.cfi_startproc
	endbr64   
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdx, %r12
	leaq      lenfix.1(%rip), %rdx
	pushq     %rbp
	movq      %rdx, %xmm1
	pushq     %rbx
	subq      $136, %rsp
	movq      %rsi, (%rsp)
	movq      %rcx, 24(%rsp)
	movq      %r8, 48(%rsp)
	movq      %fs:40, %rax
	movq      %rax, 120(%rsp)
	leaq      distfix.0(%rip), %rax
	movq      %rax, %xmm2
	punpcklqdq %xmm2, %xmm1
	movaps    %xmm1, 32(%rsp)
	testq     %rdi, %rdi
	je        .L134
	movq      56(%rdi), %r15
	movq      %rdi, %r14
	testq     %r15, %r15
	je        .L134
	movq      $0, 48(%rdi)
	xorl      %r13d, %r13d
	movq      $11, (%r15)
	movq      (%rdi), %rax
	movl      $0, 56(%r15)
	movq      %rax, 112(%rsp)
	testq     %rax, %rax
	je        .L19
	movl      8(%rdi), %r13d
.L19:
	movq      64(%r15), %rax
	xorl      %r11d, %r11d
	leaq      112(%rsp), %rsi
	xorl      %ebx, %ebx
	movq      %r14, 8(%rsp)
	movl      %r11d, %ebp
	movq      %rsi, %r14
	movq      %rax, 16(%rsp)
	movl      52(%r15), %eax
	movl      %eax, 104(%rsp)
	movl      $11, %eax
.L20:
	subl      $11, %eax
	cmpl      $18, %eax
	ja        .L21
	leaq      .L23(%rip), %rdi
	movslq    (%rdi,%rax,4), %rax
	addq      %rdi, %rax
	notrack jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L21:
	movq      8(%rsp), %r14
	movq      112(%rsp), %rdx
	movl      $-2, %eax
.L29:
	movq      %rdx, (%r14)
	movl      %r13d, 8(%r14)
.L17:
	movq      120(%rsp), %rdx
	subq      %fs:40, %rdx
	jne       .L280
	addq      $136, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L84:
	movl      112(%r15), %r9d
	movl      $-1, %edx
	movq      96(%r15), %rax
	movl      %ebx, %edi
	movl      %r9d, %ecx
	sall      %cl, %edx
	notl      %edx
	andl      %ebx, %edx
	leaq      (%rax,%rdx,4), %rdx
	movzbl    1(%rdx), %ecx
	movzbl    (%rdx), %esi
	movzwl    2(%rdx), %r10d
	movzbl    %cl, %edx
	cmpl      %edx, %ebp
	jae       .L87
	movl      %ebp, %edi
	movq      %rbx, %rbp
	movq      %r15, %rbx
	movl      %edi, %r15d
	.p2align 4,,10
	.p2align 3
.L89:
	testl     %r13d, %r13d
	jne       .L88
	movq      (%rsp), %rax
	movq      %r12, %rsi
	movq      %r14, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movq      96(%rbx), %rax
	movl      112(%rbx), %r9d
.L88:
	movq      112(%rsp), %rdx
	subl      $1, %r13d
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %edx
	movl      %r15d, %ecx
	addl      $8, %r15d
	salq      %cl, %rdx
	movl      %r9d, %ecx
	addq      %rdx, %rbp
	movl      $-1, %edx
	sall      %cl, %edx
	movl      %ebp, %edi
	notl      %edx
	andl      %ebp, %edx
	leaq      (%rax,%rdx,4), %rdx
	movzbl    1(%rdx), %ecx
	movzbl    (%rdx), %esi
	movzwl    2(%rdx), %r10d
	movzbl    %cl, %edx
	cmpl      %r15d, %edx
	ja        .L89
	movl      %r15d, %r9d
	movq      %rbx, %r15
	movq      %rbp, %rbx
	movl      %r9d, %ebp
.L87:
	testb     %sil, %sil
	je        .L90
	testb     $-16, %sil
	je        .L281
	movl      %r10d, 84(%r15)
	movq      %r12, %rax
	movl      %edx, %ecx
	movq      %r14, %r12
	shrq      %cl, %rbx
	movq      %rax, %r14
	subl      %edx, %ebp
.L95:
	testb     $32, %sil
	je        .L98
	movl      $11, (%r15)
	.p2align 4,,10
	.p2align 3
.L28:
	movl      4(%r15), %r8d
	testl     %r8d, %r8d
	jne       .L32
	cmpl      $2, %ebp
	ja        .L34
.L33:
	testl     %r13d, %r13d
	jne       .L35
	movq      (%rsp), %rax
	movq      %r14, %rsi
	movq      %r12, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
.L35:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	subl      $1, %r13d
	addl      $8, %ebp
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	addq      %rax, %rbx
.L34:
	movl      %ebx, %eax
	andl      $1, %eax
	movl      %eax, 4(%r15)
	movq      %rbx, %rax
	shrq      $1, %rax
	andl      $3, %eax
	cmpl      $2, %eax
	jne       .L36
	movl      $16, (%r15)
	shrq      $3, %rbx
	subl      $3, %ebp
	.p2align 4,,10
	.p2align 3
.L26:
	cmpl      $13, %ebp
	ja        .L31
	movq      %r15, 56(%rsp)
	movq      %rbx, %r15
	movq      (%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L30:
	testl     %r13d, %r13d
	jne       .L49
	movq      %r14, %rsi
	movq      %r12, %rdi
	call      *%rbx
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
.L49:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	addq      %rax, %r15
	cmpl      $13, %ebp
	jbe       .L30
	movq      %r15, %rbx
	movq      56(%rsp), %r15
.L31:
	movq      %rbx, %rax
	movq      %rbx, %rdx
	movl      %ebx, %ecx
	subl      $14, %ebp
	shrq      $5, %rax
	shrq      $10, %rdx
	andl      $31, %ecx
	andl      $31, %eax
	andl      $15, %edx
	addl      $257, %ecx
	shrq      $14, %rbx
	addl      $1, %eax
	addl      $4, %edx
	movl      %ecx, 124(%r15)
	movl      %eax, 128(%r15)
	movl      %edx, 120(%r15)
	cmpl      $286, %ecx
	ja        .L139
	cmpl      $30, %eax
	jbe       .L50
.L139:
	movq      8(%rsp), %r14
	leaq      .LC3(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
.L22:
	movq      112(%rsp), %rdx
	movl      $-3, %eax
	jmp       .L29
	.p2align 4,,10
	.p2align 3
.L36:
	cmpl      $3, %eax
	je        .L37
	cmpl      $1, %eax
	je        .L38
	movl      $13, (%r15)
	shrq      $3, %rbx
	subl      $3, %ebp
.L27:
	movl      %ebp, %ecx
	andl      $-8, %ebp
	andl      $7, %ecx
	shrq      %cl, %rbx
	cmpl      $31, %ebp
	ja        .L40
	movq      %r15, 56(%rsp)
	movq      %rbx, %r15
	movl      %ebp, %ebx
	movq      (%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L43:
	testl     %r13d, %r13d
	jne       .L41
	movq      %r14, %rsi
	movq      %r12, %rdi
	call      *%rbp
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
.L41:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebx, %ecx
	addl      $8, %ebx
	salq      %cl, %rax
	addq      %rax, %r15
	cmpl      $31, %ebx
	jbe       .L43
	movq      %r15, %rbx
	movq      56(%rsp), %r15
.L40:
	movq      %rbx, %rax
	movzwl    %bx, %edx
	shrq      $16, %rax
	xorq      $65535, %rax
	cmpq      %rax, %rdx
	je        .L44
	movq      8(%rsp), %r14
	leaq      .LC2(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
	.p2align 4,,10
	.p2align 3
.L275:
	movq      8(%rsp), %r14
	xorl      %edx, %edx
	movl      $-5, %eax
	xorl      %r13d, %r13d
	jmp       .L29
.L44:
	movzwl    %bx, %ebx
	movl      %ebx, 84(%r15)
	testl     %ebx, %ebx
	je        .L45
	movq      %r12, 56(%rsp)
	movl      104(%rsp), %r12d
	movq      %r14, 64(%rsp)
	movq      %r15, %r14
	movl      %r13d, %r15d
	movq      16(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L48:
	testl     %r15d, %r15d
	jne       .L46
	movq      64(%rsp), %rsi
	movq      56(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
	movl      %eax, %r15d
	testl     %eax, %eax
	je        .L275
.L46:
	testl     %r12d, %r12d
	jne       .L47
	movl      52(%r14), %r12d
	movq      64(%r14), %r13
	movq      48(%rsp), %rdi
	movq      24(%rsp), %rax
	movl      %r12d, 56(%r14)
	movl      %r12d, %edx
	movq      %r13, %rsi
	call      *%rax
	testl     %eax, %eax
	jne       .L282
.L47:
	cmpl      %r12d, %r15d
	movl      %r12d, %ebp
	movq      112(%rsp), %rsi
	movq      %r13, %rdi
	cmovbe    %r15d, %ebp
	cmpl      %ebx, %ebp
	cmova     %ebx, %ebp
	movl      %ebp, %ebx
	subl      %ebp, %r15d
	subl      %ebp, %r12d
	movq      %rbx, %rdx
	addq      %rbx, %r13
	call      memcpy@PLT
	addq      %rbx, 112(%rsp)
	movl      84(%r14), %ebx
	subl      %ebp, %ebx
	movl      %ebx, 84(%r14)
	jne       .L48
	movq      %r13, 16(%rsp)
	movl      %r15d, %r13d
	movq      %r14, %r15
	movq      64(%rsp), %r14
	movl      %r12d, 104(%rsp)
	movq      56(%rsp), %r12
.L45:
	movl      4(%r15), %edi
	movl      $11, (%r15)
	xorl      %ebp, %ebp
	xorl      %ebx, %ebx
	testl     %edi, %edi
	je        .L33
	.p2align 4,,10
	.p2align 3
.L32:
	movl      $28, (%r15)
	movq      8(%rsp), %r14
.L24:
	movl      52(%r15), %edx
	cmpl      104(%rsp), %edx
	ja        .L129
	movq      112(%rsp), %rdx
	movl      $1, %eax
	jmp       .L29
.L38:
	movq      .LC0(%rip), %rax
	movdqa    32(%rsp), %xmm4
	shrq      $3, %rbx
	subl      $3, %ebp
	movl      $20, (%r15)
	movq      %rax, 112(%r15)
	movups    %xmm4, 96(%r15)
.L25:
	movq      %r14, %rax
	movq      %r12, %r14
	movq      %rax, %r12
.L39:
	cmpl      $5, %r13d
	jbe       .L84
	movl      104(%rsp), %eax
	cmpl      $257, %eax
	jbe       .L84
	movq      %r12, %rdi
	movq      8(%rsp), %rsi
	movq      %r14, %r12
	movq      %rdi, %r14
	movq      16(%rsp), %rdi
	movl      %eax, 32(%rsi)
	movq      %rdi, 24(%rsi)
	movl      %eax, %edi
	movq      112(%rsp), %rax
	movl      %r13d, 8(%rsi)
	movq      %rax, (%rsi)
	movl      52(%r15), %esi
	movq      %rbx, 72(%r15)
	movl      %ebp, 80(%r15)
	cmpl      %esi, 56(%r15)
	jae       .L85
	movl      %esi, %eax
	subl      %edi, %eax
	movl      %eax, 56(%r15)
.L85:
	movq      8(%rsp), %rbx
	movq      %rbx, %rdi
	call      inflate_fast
	movq      24(%rbx), %rdi
	movq      (%rbx), %rax
	movl      8(%rbx), %r13d
	movl      80(%r15), %ebp
	movq      %rdi, 16(%rsp)
	movl      32(%rbx), %edi
	movq      %rax, 112(%rsp)
	movq      72(%r15), %rbx
	movl      %edi, 104(%rsp)
	movl      (%r15), %eax
	jmp       .L20
	.p2align 4,,10
	.p2align 3
.L129:
	subl      104(%rsp), %edx
	movq      64(%r15), %rsi
	movq      48(%rsp), %rdi
	movq      24(%rsp), %rax
	call      *%rax
	movq      112(%rsp), %rdx
	testl     %eax, %eax
	jne       .L279
	movl      $1, %eax
	jmp       .L29
.L286:
	movl      56(%rsp), %r13d
.L278:
	movq      8(%rsp), %r14
	movq      112(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L279:
	movl      $-5, %eax
	jmp       .L29
.L253:
	movq      8(%rsp), %r14
	jmp       .L24
.L268:
	movq      8(%rsp), %r14
	jmp       .L22
.L50:
	movl      $0, 132(%r15)
	movl      %ebp, %eax
	movq      %rbx, %rbp
	xorl      %esi, %esi
	movl      %eax, %ebx
	cmpl      $2, %ebx
	ja        .L56
.L55:
	testl     %r13d, %r13d
	jne       .L53
	movq      (%rsp), %rax
	movq      %r14, %rsi
	movq      %r12, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movl      132(%r15), %esi
	movl      120(%r15), %edx
.L53:
	movq      112(%rsp), %rax
	movl      %ebx, %ecx
	subl      $1, %r13d
	addl      $8, %ebx
	leaq      1(%rax), %rdi
	movq      %rdi, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	addq      %rax, %rbp
.L56:
	leaq      order.2(%rip), %rdi
	leal      1(%rsi), %eax
	subl      $3, %ebx
	movzwl    (%rdi,%rsi,2), %esi
	movl      %ebp, %edi
	movl      %eax, 132(%r15)
	shrq      $3, %rbp
	andl      $7, %edi
	movw      %di, 144(%r15,%rsi,2)
	cmpl      %edx, %eax
	jae       .L54
	movl      %eax, %esi
	cmpl      $2, %ebx
	jbe       .L55
	jmp       .L56
	.p2align 4,,10
	.p2align 3
.L90:
	movl      %r10d, 84(%r15)
	shrq      %cl, %rbx
	subl      %edx, %ebp
.L131:
	movl      104(%rsp), %edx
	testl     %edx, %edx
	jne       .L96
	movl      52(%r15), %eax
	movq      64(%r15), %rsi
	movq      48(%rsp), %rdi
	movl      %eax, 104(%rsp)
	movl      %eax, %edx
	movl      %eax, 56(%r15)
	movq      24(%rsp), %rax
	movq      %rsi, 16(%rsp)
	call      *%rax
	testl     %eax, %eax
	jne       .L278
	movl      84(%r15), %r10d
.L96:
	movq      16(%rsp), %rax
	subl      $1, 104(%rsp)
	movb      %r10b, (%rax)
	addq      $1, %rax
	movl      $20, (%r15)
	movq      %rax, 16(%rsp)
	jmp       .L39
.L37:
	movq      8(%rsp), %r14
	leaq      .LC1(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L98:
	testb     $64, %sil
	je        .L99
	movq      8(%rsp), %r14
	leaq      .LC8(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L134:
	movl      $-2, %eax
	jmp       .L17
.L282:
	movq      8(%rsp), %r14
	movq      112(%rsp), %rdx
	movl      %r15d, %r13d
	movl      $-5, %eax
	jmp       .L29
.L281:
	leal      (%rsi,%rdx), %ecx
	movl      $-1, %r9d
	sall      %cl, %r9d
	movl      %edx, %ecx
	notl      %r9d
	andl      %r9d, %edi
	shrl      %cl, %edi
	leal      (%rdi,%r10), %ecx
	leaq      (%rax,%rcx,4), %rcx
	movzbl    1(%rcx), %edi
	movzbl    (%rcx), %esi
	movzwl    2(%rcx), %r11d
	leal      (%rdi,%rdx), %ecx
	cmpl      %ebp, %ecx
	jbe       .L92
	movl      %r9d, 56(%rsp)
	movq      %r15, 64(%rsp)
	movl      %ebp, %r15d
	movq      %rbx, %rbp
	movl      %r10d, %ebx
	movq      %r12, 72(%rsp)
	movl      %edx, %r12d
	.p2align 4,,10
	.p2align 3
.L94:
	testl     %r13d, %r13d
	jne       .L93
	movq      72(%rsp), %rsi
	movq      (%rsp), %rax
	movq      %r14, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movq      64(%rsp), %rax
	movq      96(%rax), %rax
.L93:
	movq      112(%rsp), %rcx
	subl      $1, %r13d
	leaq      1(%rcx), %rsi
	movq      %rsi, 112(%rsp)
	movzbl    (%rcx), %esi
	movl      %r15d, %ecx
	addl      $8, %r15d
	salq      %cl, %rsi
	movl      %r12d, %ecx
	addq      %rsi, %rbp
	movl      56(%rsp), %esi
	andl      %ebp, %esi
	shrl      %cl, %esi
	leal      (%rsi,%rbx), %ecx
	leaq      (%rax,%rcx,4), %rcx
	movzbl    1(%rcx), %edi
	movzbl    (%rcx), %esi
	movzwl    2(%rcx), %r11d
	leal      (%rdi,%r12), %ecx
	cmpl      %r15d, %ecx
	ja        .L94
	movq      %rbp, %rbx
	movl      %r12d, %edx
	movl      %r15d, %ebp
	movq      72(%rsp), %r12
	movq      64(%rsp), %r15
.L92:
	movl      %edx, %ecx
	subl      %edx, %ebp
	movzwl    %r11w, %r10d
	shrq      %cl, %rbx
	movl      %edi, %ecx
	movl      %r10d, 84(%r15)
	subl      %edi, %ebp
	shrq      %cl, %rbx
	testb     %sil, %sil
	je        .L131
	movq      %r12, %rax
	movq      %r14, %r12
	movq      %rax, %r14
	jmp       .L95
.L99:
	movl      %esi, %edx
	andl      $15, %edx
	andl      $15, %esi
	movl      %edx, 92(%r15)
	je        .L100
	cmpl      %ebp, %edx
	jbe       .L101
	movq      %r14, %rax
	movq      %r12, %r14
	movq      %rbx, %r12
	movq      %rax, %rbx
	.p2align 4,,10
	.p2align 3
.L103:
	testl     %r13d, %r13d
	jne       .L102
	movq      (%rsp), %rax
	movq      %rbx, %rsi
	movq      %r14, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movl      92(%r15), %edx
.L102:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	addq      %rax, %r12
	cmpl      %edx, %ebp
	jb        .L103
	movq      %rbx, %rax
	movq      %r12, %rbx
	movq      %r14, %r12
	movq      %rax, %r14
.L101:
	movl      %edx, %ecx
	movl      $-1, %eax
	subl      %edx, %ebp
	sall      %cl, %eax
	notl      %eax
	andl      %ebx, %eax
	addl      %eax, 84(%r15)
	shrq      %cl, %rbx
.L100:
	movl      116(%r15), %r9d
	movl      $-1, %eax
	movq      104(%r15), %r8
	movl      %r9d, %ecx
	sall      %cl, %eax
	notl      %eax
	andl      %ebx, %eax
	leaq      (%r8,%rax,4), %rax
	movzbl    1(%rax), %edx
	movzbl    (%rax), %edi
	movzwl    2(%rax), %esi
	movzbl    %dl, %eax
	movl      %eax, %r10d
	cmpl      %ebp, %eax
	jbe       .L104
	movq      %rbx, %rax
	movq      %r15, %rbx
	movq      %rax, %r15
	.p2align 4,,10
	.p2align 3
.L106:
	testl     %r13d, %r13d
	jne       .L105
	movq      (%rsp), %rax
	movq      %r14, %rsi
	movq      %r12, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movq      104(%rbx), %r8
	movl      116(%rbx), %r9d
.L105:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	addl      $8, %ebp
	subl      $1, %r13d
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	movl      %r9d, %ecx
	addq      %rax, %r15
	movl      $-1, %eax
	sall      %cl, %eax
	notl      %eax
	andl      %r15d, %eax
	leaq      (%r8,%rax,4), %rax
	movzbl    1(%rax), %edx
	movzbl    (%rax), %edi
	movzwl    2(%rax), %esi
	movzbl    %dl, %eax
	movl      %eax, %r10d
	cmpl      %ebp, %eax
	ja        .L106
	movq      %r15, %rcx
	movq      %rbx, %r15
	movq      %rcx, %rbx
.L104:
	testb     $-16, %dil
	je        .L283
.L107:
	movl      %edx, %ecx
	subl      %eax, %ebp
	shrq      %cl, %rbx
	testb     $64, %dil
	je        .L111
	movq      8(%rsp), %r14
	leaq      .LC9(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L54:
	movl      %ebx, %esi
	movq      %rbp, %rbx
	movl      %esi, %ebp
	cmpl      $18, %eax
	ja        .L57
	movl      $18, %ecx
	movl      %eax, %esi
	leaq      order.2(%rip), %rdi
	subl      %eax, %ecx
	leaq      (%rdi,%rsi,2), %rdx
	leaq      (%rcx,%rsi), %rax
	leaq      2(%rdi), %rcx
	leaq      (%rcx,%rax,2), %rcx
.L58:
	movzwl    (%rdx), %eax
	xorl      %esi, %esi
	addq      $2, %rdx
	movw      %si, 144(%r15,%rax,2)
	cmpq      %rcx, %rdx
	jne       .L58
	movl      $19, 132(%r15)
.L57:
	leaq      1360(%r15), %rax
	leaq      112(%r15), %r8
	xorl      %edi, %edi
	movl      $19, %edx
	movq      %rax, 136(%r15)
	leaq      784(%r15), %r9
	leaq      136(%r15), %rcx
	movq      %rax, 96(%r15)
	movl      $7, 112(%r15)
	movq      %rax, 80(%rsp)
	leaq      144(%r15), %rax
	movq      %rax, %rsi
	movq      %r9, 56(%rsp)
	movq      %r8, 88(%rsp)
	movq      %rcx, 64(%rsp)
	movq      %rax, 72(%rsp)
	call      inflate_table
	testl     %eax, %eax
	je        .L59
	movq      8(%rsp), %r14
	leaq      .LC4(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L111:
	movl      %edi, %edx
	movd      %esi, %xmm0
	andl      $15, %edx
	andl      $15, %edi
	movd      %edx, %xmm5
	punpckldq %xmm5, %xmm0
	movq      %xmm0, 88(%r15)
	jne       .L284
.L112:
	movl      52(%r15), %ecx
	xorl      %eax, %eax
	cmpl      56(%r15), %ecx
	cmova     104(%rsp), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	cmpl      %esi, %edx
	jae       .L276
	movq      8(%rsp), %r14
	leaq      .LC10(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L283:
	leal      (%rdi,%rax), %ecx
	movl      %eax, %r9d
	orl       $-1, %eax
	movzwl    %si, %r11d
	sall      %cl, %eax
	movl      %edx, %ecx
	notl      %eax
	movl      %eax, 56(%rsp)
	andl      %ebx, %eax
	shrl      %cl, %eax
	addl      %r11d, %eax
	movl      %eax, %eax
	leaq      (%r8,%rax,4), %rax
	movzbl    1(%rax), %edx
	movzbl    (%rax), %edi
	movzwl    2(%rax), %esi
	movzbl    %dl, %eax
	leal      (%rax,%r9), %ecx
	cmpl      %ebp, %ecx
	jbe       .L108
	movq      %r12, %rsi
	movq      %r14, %rax
	movl      %r9d, %r12d
	movl      %r11d, %r14d
	movq      %rsi, %r9
	movq      %rax, %r11
.L110:
	testl     %r13d, %r13d
	jne       .L109
	movl      %r10d, 80(%rsp)
	movq      (%rsp), %rax
	movq      %r11, %rsi
	movq      %r9, %rdi
	movq      %r11, 72(%rsp)
	movq      %r9, 64(%rsp)
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movq      104(%r15), %r8
	movl      80(%rsp), %r10d
	movq      72(%rsp), %r11
	movq      64(%rsp), %r9
.L109:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	addl      $8, %ebp
	subl      $1, %r13d
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	movl      %r12d, %ecx
	addq      %rax, %rbx
	movl      56(%rsp), %eax
	andl      %ebx, %eax
	shrl      %cl, %eax
	addl      %r14d, %eax
	movl      %eax, %eax
	leaq      (%r8,%rax,4), %rax
	movzbl    1(%rax), %edx
	movzbl    (%rax), %edi
	movzwl    2(%rax), %esi
	movzbl    %dl, %eax
	leal      (%rax,%r12), %ecx
	cmpl      %ebp, %ecx
	ja        .L110
	movq      %r9, %rcx
	movq      %r11, %r14
	movl      %r12d, %r9d
	movq      %rcx, %r12
.L108:
	movl      %r9d, %ecx
	subl      %r10d, %ebp
	shrq      %cl, %rbx
	jmp       .L107
.L59:
	movl      $0, 132(%r15)
	movl      124(%r15), %edx
	movl      %edx, %eax
	addl      128(%r15), %eax
	je        .L61
	xchgq     %r12, %r14
.L60:
	movl      112(%r15), %edi
	movl      $-1, %eax
	movq      96(%r15), %rdx
	movl      %edi, %ecx
	sall      %cl, %eax
	notl      %eax
	andl      %ebx, %eax
	leaq      (%rdx,%rax,4), %rax
	movzbl    1(%rax), %r8d
	movzwl    2(%rax), %eax
	movl      %r8d, %ecx
	cmpl      %ebp, %r8d
	jbe       .L80
	movq      %r12, %rax
	movq      %rbx, %r12
	movq      %rax, %rbx
.L63:
	testl     %r13d, %r13d
	jne       .L62
	movq      (%rsp), %rax
	movq      %rbx, %rsi
	movq      %r14, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movq      96(%r15), %rdx
	movl      112(%r15), %edi
.L62:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	movl      %edi, %ecx
	addq      %rax, %r12
	movl      $-1, %eax
	sall      %cl, %eax
	notl      %eax
	andl      %r12d, %eax
	leaq      (%rdx,%rax,4), %rax
	movzbl    1(%rax), %r8d
	movzwl    2(%rax), %eax
	movl      %r8d, %ecx
	cmpl      %ebp, %r8d
	ja        .L63
	movq      %rbx, %rsi
	movq      %r12, %rbx
	movq      %rsi, %r12
.L80:
	cmpw      $15, %ax
	ja        .L64
	movl      132(%r15), %edx
	shrq      %cl, %rbx
	movl      128(%r15), %edi
	subl      %r8d, %ebp
	leal      1(%rdx), %ecx
	movl      %ecx, 132(%r15)
	movw      %ax, 144(%r15,%rdx,2)
	movl      124(%r15), %edx
.L65:
	addl      %edx, %edi
	cmpl      %edi, 132(%r15)
	jb        .L60
	xchgq     %r14, %r12
.L61:
	cmpl      $29, (%r15)
	je        .L268
	cmpw      $0, 656(%r15)
	jne       .L81
	movq      8(%rsp), %r14
	leaq      .LC5(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L64:
	cmpw      $16, %ax
	je        .L285
	cmpw      $17, %ax
	je        .L72
	leal      7(%r8), %edx
	cmpl      %ebp, %edx
	jbe       .L74
	movq      %r12, %rax
	movl      %edx, %r12d
	movq      %rax, %rdx
.L73:
	testl     %r13d, %r13d
	jne       .L78
	movl      %r8d, 108(%rsp)
	movq      %rdx, %rsi
	movq      (%rsp), %rax
	movq      %r14, %rdi
	movq      %rdx, 96(%rsp)
	call      *%rax
	movq      96(%rsp), %rdx
	movl      108(%rsp), %r8d
	testl     %eax, %eax
	movl      %eax, %r13d
	je        .L275
.L78:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	addq      %rax, %rbx
	cmpl      %r12d, %ebp
	jb        .L73
	movq      %rdx, %r12
.L74:
	movl      %r8d, %ecx
	subl      %r8d, %ebp
	movl      132(%r15), %eax
	xorl      %r8d, %r8d
	shrq      %cl, %rbx
	subl      $7, %ebp
	movl      %ebx, %ecx
	shrq      $7, %rbx
	andl      $127, %ecx
	addl      $11, %ecx
.L71:
	movl      124(%r15), %edx
	movl      128(%r15), %edi
	addl      %eax, %ecx
	leal      (%rdx,%rdi), %r9d
	cmpl      %r9d, %ecx
	ja        .L70
.L79:
	movl      %eax, %esi
	addl      $1, %eax
	movw      %r8w, 144(%r15,%rsi,2)
	cmpl      %eax, %ecx
	jne       .L79
	movl      %ecx, 132(%r15)
	jmp       .L65
.L72:
	leal      3(%r8), %edx
	cmpl      %ebp, %edx
	jbe       .L75
	movq      %r12, %rax
	movl      %edx, %r12d
	movq      %rax, %rdx
.L77:
	testl     %r13d, %r13d
	jne       .L76
	movl      %r8d, 108(%rsp)
	movq      %rdx, %rsi
	movq      (%rsp), %rax
	movq      %r14, %rdi
	movq      %rdx, 96(%rsp)
	call      *%rax
	movq      96(%rsp), %rdx
	movl      108(%rsp), %r8d
	testl     %eax, %eax
	movl      %eax, %r13d
	je        .L275
.L76:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	addq      %rax, %rbx
	cmpl      %r12d, %ebp
	jb        .L77
	movq      %rdx, %r12
.L75:
	movl      %r8d, %ecx
	movl      $-3, %eax
	shrq      %cl, %rbx
	subl      %r8d, %eax
	xorl      %r8d, %r8d
	movl      %ebx, %ecx
	addl      %eax, %ebp
	shrq      $3, %rbx
	movl      132(%r15), %eax
	andl      $7, %ecx
	addl      $3, %ecx
	jmp       .L71
.L280:
	call      __stack_chk_fail@PLT
.L276:
	movl      %r13d, 56(%rsp)
	movq      16(%rsp), %r13
	movq      %rbx, 64(%rsp)
	movl      104(%rsp), %ebx
.L117:
	testl     %ebx, %ebx
	jne       .L118
	movq      64(%r15), %r13
	movl      %ecx, %edx
	movq      48(%rsp), %rdi
	movl      %ecx, 56(%r15)
	movl      %ecx, 104(%rsp)
	movq      24(%rsp), %rax
	movq      %r13, %rsi
	call      *%rax
	movl      104(%rsp), %ecx
	testl     %eax, %eax
	jne       .L286
	movl      %ecx, %ebx
	movl      52(%r15), %ecx
.L118:
	movl      88(%r15), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	cmpl      %edx, %ebx
	jbe       .L119
	subl      %ecx, %eax
	addq      %r13, %rdx
	addl      %ebx, %eax
.L120:
	movl      84(%r15), %ecx
	leaq      1(%rdx), %rsi
	cmpl      %eax, %ecx
	cmovbe    %ecx, %eax
	subl      %eax, %ecx
	subl      %eax, %ebx
	leal      -1(%rax), %r10d
	movl      %ecx, 84(%r15)
	movq      %r13, %rcx
	subq      %rsi, %rcx
	cmpq      $14, %rcx
	jbe       .L121
	cmpl      $6, %r10d
	jbe       .L121
	cmpl      $14, %r10d
	jbe       .L138
	leal      -16(%rax), %ecx
	xorl      %esi, %esi
	xorl      %edi, %edi
	shrl      $4, %ecx
	addl      $1, %ecx
.L123:
	movdqu    (%rdx,%rsi), %xmm3
	addl      $1, %edi
	movups    %xmm3, (%r13,%rsi)
	addq      $16, %rsi
	cmpl      %ecx, %edi
	jb        .L123
	sall      $4, %ecx
	movl      %eax, %r8d
	movl      %r10d, %r9d
	movl      %ecx, %r11d
	subl      %ecx, %r8d
	leaq      (%r13,%r11), %rsi
	leaq      (%rdx,%r11), %rdi
	cmpl      %ecx, %eax
	je        .L128
	leal      -1(%r8), %ecx
	movl      %r8d, %eax
	cmpl      $6, %ecx
	jbe       .L125
.L122:
	movq      (%rdx,%r11), %rdx
	movl      %r10d, %r9d
	movq      %rdx, (%r13,%r11)
	movl      %eax, %edx
	andl      $-8, %edx
	movl      %edx, %ecx
	subl      %edx, %r8d
	addq      %rcx, %rsi
	addq      %rcx, %rdi
	cmpl      %edx, %eax
	je        .L128
	leal      -1(%r8), %ecx
.L125:
	movzbl    (%rdi), %eax
	movl      %r10d, %r9d
	movb      %al, (%rsi)
	testl     %ecx, %ecx
	je        .L128
	movzbl    1(%rdi), %eax
	movb      %al, 1(%rsi)
	cmpl      $2, %r8d
	je        .L128
	movzbl    2(%rdi), %eax
	movb      %al, 2(%rsi)
	cmpl      $3, %r8d
	je        .L128
	movzbl    3(%rdi), %eax
	movb      %al, 3(%rsi)
	cmpl      $4, %r8d
	je        .L128
	movzbl    4(%rdi), %eax
	movb      %al, 4(%rsi)
	cmpl      $5, %r8d
	je        .L128
	movzbl    5(%rdi), %eax
	movb      %al, 5(%rsi)
	cmpl      $6, %r8d
	je        .L128
	movzbl    6(%rdi), %eax
	movb      %al, 6(%rsi)
.L128:
	movl      84(%r15), %eax
	leaq      1(%r13,%r9), %r13
	testl     %eax, %eax
	je        .L252
	movl      52(%r15), %ecx
	jmp       .L117
.L119:
	movq      %r13, %rdx
	subq      %rax, %rdx
	movl      %ebx, %eax
	jmp       .L120
.L121:
	movl      %r10d, %r9d
	xorl      %eax, %eax
.L127:
	movzbl    (%rdx,%rax), %ecx
	movb      %cl, (%r13,%rax)
	movq      %rax, %rcx
	addq      $1, %rax
	cmpq      %r9, %rcx
	jne       .L127
	jmp       .L128
.L138:
	movq      %r13, %rsi
	movl      %eax, %r8d
	movq      %rdx, %rdi
	xorl      %r11d, %r11d
	jmp       .L122
.L252:
	movq      %r13, 16(%rsp)
	movl      (%r15), %eax
	movl      %ebx, 104(%rsp)
	movl      56(%rsp), %r13d
	movq      64(%rsp), %rbx
	jmp       .L20
.L284:
	cmpl      %ebp, %edx
	jbe       .L113
.L115:
	testl     %r13d, %r13d
	jne       .L114
	movq      (%rsp), %rax
	movq      %r14, %rsi
	movq      %r12, %rdi
	call      *%rax
	movl      %eax, %r13d
	testl     %eax, %eax
	je        .L275
	movl      92(%r15), %edx
.L114:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	addq      %rax, %rbx
	cmpl      %edx, %ebp
	jb        .L115
.L113:
	movl      %edx, %ecx
	orl       $-1, %eax
	subl      %edx, %ebp
	sall      %cl, %eax
	movl      %eax, %esi
	notl      %esi
	andl      %ebx, %esi
	addl      88(%r15), %esi
	shrq      %cl, %rbx
	movl      %esi, 88(%r15)
	jmp       .L112
.L70:
	movq      8(%rsp), %r14
	leaq      .LC11(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L285:
	leal      2(%r8), %edx
	cmpl      %ebp, %edx
	jbe       .L67
	movq      %r12, %rax
	movl      %edx, %r12d
	movq      %rax, %rdx
.L69:
	testl     %r13d, %r13d
	jne       .L68
	movl      %r8d, 108(%rsp)
	movq      %rdx, %rsi
	movq      (%rsp), %rax
	movq      %r14, %rdi
	movq      %rdx, 96(%rsp)
	call      *%rax
	movq      96(%rsp), %rdx
	movl      108(%rsp), %r8d
	testl     %eax, %eax
	movl      %eax, %r13d
	je        .L275
.L68:
	movq      112(%rsp), %rax
	subl      $1, %r13d
	leaq      1(%rax), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rax), %eax
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rax
	addq      %rax, %rbx
	cmpl      %r12d, %ebp
	jb        .L69
	movq      %rdx, %r12
.L67:
	movl      132(%r15), %eax
	movl      %r8d, %ecx
	subl      %r8d, %ebp
	shrq      %cl, %rbx
	testl     %eax, %eax
	je        .L70
	movl      %ebx, %ecx
	leal      -1(%rax), %edx
	shrq      $2, %rbx
	subl      $2, %ebp
	movzwl    144(%r15,%rdx,2), %r8d
	andl      $3, %ecx
	addl      $3, %ecx
	jmp       .L71
.L81:
	movq      80(%rsp), %rax
	movq      56(%rsp), %r9
	movl      $1, %edi
	movl      $9, 112(%r15)
	movq      88(%rsp), %r8
	movq      64(%rsp), %rcx
	movq      %rax, 136(%r15)
	movq      72(%rsp), %rsi
	movq      %rax, 96(%r15)
	call      inflate_table
	testl     %eax, %eax
	je        .L82
	movq      8(%rsp), %r14
	leaq      .LC6(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L82:
	movq      136(%r15), %rax
	movq      72(%rsp), %rsi
	leaq      116(%r15), %r8
	movl      $6, 116(%r15)
	movq      56(%rsp), %r9
	movq      64(%rsp), %rcx
	movl      $2, %edi
	movq      %rax, 104(%r15)
	movl      124(%r15), %eax
	movl      128(%r15), %edx
	addq      %rax, %rax
	addq      %rax, %rsi
	call      inflate_table
	testl     %eax, %eax
	je        .L83
	movq      8(%rsp), %r14
	leaq      .LC7(%rip), %rax
	movq      %rax, 48(%r14)
	movl      $29, (%r15)
	jmp       .L22
.L83:
	movl      $20, (%r15)
	jmp       .L25
	.cfi_endproc
	.size	inflateBack, .-inflateBack
# ----------------------
	.section       .rodata
	.align 4
.L23:
	.long	.L28-.L23
	.long	.L21-.L23
	.long	.L27-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L26-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L25-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L253-.L23
	.long	.L268-.L23
# ----------------------
	.text
	.p2align 4
# ----------------------
	.globl	inflateBackEnd
	.type	inflateBackEnd, @function
inflateBackEnd:
	.cfi_startproc
	endbr64   
	testq     %rdi, %rdi
	je        .L289
	pushq     %rbx
	movq      56(%rdi), %rsi
	movq      %rdi, %rbx
	testq     %rsi, %rsi
	je        .L291
	movq      72(%rdi), %rax
	testq     %rax, %rax
	je        .L291
	movq      80(%rdi), %rdi
	call      *%rax
	movq      $0, 56(%rbx)
	xorl      %eax, %eax
	popq      %rbx
	ret       
.L291:
	movl      $-2, %eax
	popq      %rbx
	ret       
.L289:
	movl      $-2, %eax
	ret       
	.cfi_endproc
	.size	inflateBackEnd, .-inflateBackEnd
# ----------------------
	.section       .rodata
	.align 32
	.local	distfix.0
	.type	distfix.0, @object
distfix.0:
	.byte	16
	.byte	5
	.value	1
	.byte	23
	.byte	5
	.value	257
	.byte	19
	.byte	5
	.value	17
	.byte	27
	.byte	5
	.value	4097
	.byte	17
	.byte	5
	.value	5
	.byte	25
	.byte	5
	.value	1025
	.byte	21
	.byte	5
	.value	65
	.byte	29
	.byte	5
	.value	16385
	.byte	16
	.byte	5
	.value	3
	.byte	24
	.byte	5
	.value	513
	.byte	20
	.byte	5
	.value	33
	.byte	28
	.byte	5
	.value	8193
	.byte	18
	.byte	5
	.value	9
	.byte	26
	.byte	5
	.value	2049
	.byte	22
	.byte	5
	.value	129
	.byte	64
	.byte	5
	.value	0
	.byte	16
	.byte	5
	.value	2
	.byte	23
	.byte	5
	.value	385
	.byte	19
	.byte	5
	.value	25
	.byte	27
	.byte	5
	.value	6145
	.byte	17
	.byte	5
	.value	7
	.byte	25
	.byte	5
	.value	1537
	.byte	21
	.byte	5
	.value	97
	.byte	29
	.byte	5
	.value	24577
	.byte	16
	.byte	5
	.value	4
	.byte	24
	.byte	5
	.value	769
	.byte	20
	.byte	5
	.value	49
	.byte	28
	.byte	5
	.value	12289
	.byte	18
	.byte	5
	.value	13
	.byte	26
	.byte	5
	.value	3073
	.byte	22
	.byte	5
	.value	193
	.byte	64
	.byte	5
	.value	0
	.size	distfix.0, 128
# ----------------------
	.align 32
	.local	lenfix.1
	.type	lenfix.1, @object
lenfix.1:
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	80
	.byte	0
	.byte	8
	.value	16
	.byte	20
	.byte	8
	.value	115
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	112
	.byte	0
	.byte	8
	.value	48
	.byte	0
	.byte	9
	.value	192
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	96
	.byte	0
	.byte	8
	.value	32
	.byte	0
	.byte	9
	.value	160
	.byte	0
	.byte	8
	.value	0
	.byte	0
	.byte	8
	.value	128
	.byte	0
	.byte	8
	.value	64
	.byte	0
	.byte	9
	.value	224
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	88
	.byte	0
	.byte	8
	.value	24
	.byte	0
	.byte	9
	.value	144
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	120
	.byte	0
	.byte	8
	.value	56
	.byte	0
	.byte	9
	.value	208
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	104
	.byte	0
	.byte	8
	.value	40
	.byte	0
	.byte	9
	.value	176
	.byte	0
	.byte	8
	.value	8
	.byte	0
	.byte	8
	.value	136
	.byte	0
	.byte	8
	.value	72
	.byte	0
	.byte	9
	.value	240
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	84
	.byte	0
	.byte	8
	.value	20
	.byte	21
	.byte	8
	.value	227
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	116
	.byte	0
	.byte	8
	.value	52
	.byte	0
	.byte	9
	.value	200
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	100
	.byte	0
	.byte	8
	.value	36
	.byte	0
	.byte	9
	.value	168
	.byte	0
	.byte	8
	.value	4
	.byte	0
	.byte	8
	.value	132
	.byte	0
	.byte	8
	.value	68
	.byte	0
	.byte	9
	.value	232
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	92
	.byte	0
	.byte	8
	.value	28
	.byte	0
	.byte	9
	.value	152
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	124
	.byte	0
	.byte	8
	.value	60
	.byte	0
	.byte	9
	.value	216
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	108
	.byte	0
	.byte	8
	.value	44
	.byte	0
	.byte	9
	.value	184
	.byte	0
	.byte	8
	.value	12
	.byte	0
	.byte	8
	.value	140
	.byte	0
	.byte	8
	.value	76
	.byte	0
	.byte	9
	.value	248
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	82
	.byte	0
	.byte	8
	.value	18
	.byte	21
	.byte	8
	.value	163
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	114
	.byte	0
	.byte	8
	.value	50
	.byte	0
	.byte	9
	.value	196
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	98
	.byte	0
	.byte	8
	.value	34
	.byte	0
	.byte	9
	.value	164
	.byte	0
	.byte	8
	.value	2
	.byte	0
	.byte	8
	.value	130
	.byte	0
	.byte	8
	.value	66
	.byte	0
	.byte	9
	.value	228
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	90
	.byte	0
	.byte	8
	.value	26
	.byte	0
	.byte	9
	.value	148
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	122
	.byte	0
	.byte	8
	.value	58
	.byte	0
	.byte	9
	.value	212
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	106
	.byte	0
	.byte	8
	.value	42
	.byte	0
	.byte	9
	.value	180
	.byte	0
	.byte	8
	.value	10
	.byte	0
	.byte	8
	.value	138
	.byte	0
	.byte	8
	.value	74
	.byte	0
	.byte	9
	.value	244
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	86
	.byte	0
	.byte	8
	.value	22
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	118
	.byte	0
	.byte	8
	.value	54
	.byte	0
	.byte	9
	.value	204
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	102
	.byte	0
	.byte	8
	.value	38
	.byte	0
	.byte	9
	.value	172
	.byte	0
	.byte	8
	.value	6
	.byte	0
	.byte	8
	.value	134
	.byte	0
	.byte	8
	.value	70
	.byte	0
	.byte	9
	.value	236
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	94
	.byte	0
	.byte	8
	.value	30
	.byte	0
	.byte	9
	.value	156
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	126
	.byte	0
	.byte	8
	.value	62
	.byte	0
	.byte	9
	.value	220
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	110
	.byte	0
	.byte	8
	.value	46
	.byte	0
	.byte	9
	.value	188
	.byte	0
	.byte	8
	.value	14
	.byte	0
	.byte	8
	.value	142
	.byte	0
	.byte	8
	.value	78
	.byte	0
	.byte	9
	.value	252
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	81
	.byte	0
	.byte	8
	.value	17
	.byte	21
	.byte	8
	.value	131
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	113
	.byte	0
	.byte	8
	.value	49
	.byte	0
	.byte	9
	.value	194
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	97
	.byte	0
	.byte	8
	.value	33
	.byte	0
	.byte	9
	.value	162
	.byte	0
	.byte	8
	.value	1
	.byte	0
	.byte	8
	.value	129
	.byte	0
	.byte	8
	.value	65
	.byte	0
	.byte	9
	.value	226
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	89
	.byte	0
	.byte	8
	.value	25
	.byte	0
	.byte	9
	.value	146
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	121
	.byte	0
	.byte	8
	.value	57
	.byte	0
	.byte	9
	.value	210
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	105
	.byte	0
	.byte	8
	.value	41
	.byte	0
	.byte	9
	.value	178
	.byte	0
	.byte	8
	.value	9
	.byte	0
	.byte	8
	.value	137
	.byte	0
	.byte	8
	.value	73
	.byte	0
	.byte	9
	.value	242
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	85
	.byte	0
	.byte	8
	.value	21
	.byte	16
	.byte	8
	.value	258
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	117
	.byte	0
	.byte	8
	.value	53
	.byte	0
	.byte	9
	.value	202
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	101
	.byte	0
	.byte	8
	.value	37
	.byte	0
	.byte	9
	.value	170
	.byte	0
	.byte	8
	.value	5
	.byte	0
	.byte	8
	.value	133
	.byte	0
	.byte	8
	.value	69
	.byte	0
	.byte	9
	.value	234
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	93
	.byte	0
	.byte	8
	.value	29
	.byte	0
	.byte	9
	.value	154
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	125
	.byte	0
	.byte	8
	.value	61
	.byte	0
	.byte	9
	.value	218
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	109
	.byte	0
	.byte	8
	.value	45
	.byte	0
	.byte	9
	.value	186
	.byte	0
	.byte	8
	.value	13
	.byte	0
	.byte	8
	.value	141
	.byte	0
	.byte	8
	.value	77
	.byte	0
	.byte	9
	.value	250
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	83
	.byte	0
	.byte	8
	.value	19
	.byte	21
	.byte	8
	.value	195
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	115
	.byte	0
	.byte	8
	.value	51
	.byte	0
	.byte	9
	.value	198
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	99
	.byte	0
	.byte	8
	.value	35
	.byte	0
	.byte	9
	.value	166
	.byte	0
	.byte	8
	.value	3
	.byte	0
	.byte	8
	.value	131
	.byte	0
	.byte	8
	.value	67
	.byte	0
	.byte	9
	.value	230
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	91
	.byte	0
	.byte	8
	.value	27
	.byte	0
	.byte	9
	.value	150
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	123
	.byte	0
	.byte	8
	.value	59
	.byte	0
	.byte	9
	.value	214
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	107
	.byte	0
	.byte	8
	.value	43
	.byte	0
	.byte	9
	.value	182
	.byte	0
	.byte	8
	.value	11
	.byte	0
	.byte	8
	.value	139
	.byte	0
	.byte	8
	.value	75
	.byte	0
	.byte	9
	.value	246
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	87
	.byte	0
	.byte	8
	.value	23
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	119
	.byte	0
	.byte	8
	.value	55
	.byte	0
	.byte	9
	.value	206
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	103
	.byte	0
	.byte	8
	.value	39
	.byte	0
	.byte	9
	.value	174
	.byte	0
	.byte	8
	.value	7
	.byte	0
	.byte	8
	.value	135
	.byte	0
	.byte	8
	.value	71
	.byte	0
	.byte	9
	.value	238
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	95
	.byte	0
	.byte	8
	.value	31
	.byte	0
	.byte	9
	.value	158
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	127
	.byte	0
	.byte	8
	.value	63
	.byte	0
	.byte	9
	.value	222
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	111
	.byte	0
	.byte	8
	.value	47
	.byte	0
	.byte	9
	.value	190
	.byte	0
	.byte	8
	.value	15
	.byte	0
	.byte	8
	.value	143
	.byte	0
	.byte	8
	.value	79
	.byte	0
	.byte	9
	.value	254
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	80
	.byte	0
	.byte	8
	.value	16
	.byte	20
	.byte	8
	.value	115
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	112
	.byte	0
	.byte	8
	.value	48
	.byte	0
	.byte	9
	.value	193
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	96
	.byte	0
	.byte	8
	.value	32
	.byte	0
	.byte	9
	.value	161
	.byte	0
	.byte	8
	.value	0
	.byte	0
	.byte	8
	.value	128
	.byte	0
	.byte	8
	.value	64
	.byte	0
	.byte	9
	.value	225
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	88
	.byte	0
	.byte	8
	.value	24
	.byte	0
	.byte	9
	.value	145
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	120
	.byte	0
	.byte	8
	.value	56
	.byte	0
	.byte	9
	.value	209
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	104
	.byte	0
	.byte	8
	.value	40
	.byte	0
	.byte	9
	.value	177
	.byte	0
	.byte	8
	.value	8
	.byte	0
	.byte	8
	.value	136
	.byte	0
	.byte	8
	.value	72
	.byte	0
	.byte	9
	.value	241
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	84
	.byte	0
	.byte	8
	.value	20
	.byte	21
	.byte	8
	.value	227
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	116
	.byte	0
	.byte	8
	.value	52
	.byte	0
	.byte	9
	.value	201
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	100
	.byte	0
	.byte	8
	.value	36
	.byte	0
	.byte	9
	.value	169
	.byte	0
	.byte	8
	.value	4
	.byte	0
	.byte	8
	.value	132
	.byte	0
	.byte	8
	.value	68
	.byte	0
	.byte	9
	.value	233
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	92
	.byte	0
	.byte	8
	.value	28
	.byte	0
	.byte	9
	.value	153
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	124
	.byte	0
	.byte	8
	.value	60
	.byte	0
	.byte	9
	.value	217
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	108
	.byte	0
	.byte	8
	.value	44
	.byte	0
	.byte	9
	.value	185
	.byte	0
	.byte	8
	.value	12
	.byte	0
	.byte	8
	.value	140
	.byte	0
	.byte	8
	.value	76
	.byte	0
	.byte	9
	.value	249
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	82
	.byte	0
	.byte	8
	.value	18
	.byte	21
	.byte	8
	.value	163
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	114
	.byte	0
	.byte	8
	.value	50
	.byte	0
	.byte	9
	.value	197
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	98
	.byte	0
	.byte	8
	.value	34
	.byte	0
	.byte	9
	.value	165
	.byte	0
	.byte	8
	.value	2
	.byte	0
	.byte	8
	.value	130
	.byte	0
	.byte	8
	.value	66
	.byte	0
	.byte	9
	.value	229
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	90
	.byte	0
	.byte	8
	.value	26
	.byte	0
	.byte	9
	.value	149
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	122
	.byte	0
	.byte	8
	.value	58
	.byte	0
	.byte	9
	.value	213
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	106
	.byte	0
	.byte	8
	.value	42
	.byte	0
	.byte	9
	.value	181
	.byte	0
	.byte	8
	.value	10
	.byte	0
	.byte	8
	.value	138
	.byte	0
	.byte	8
	.value	74
	.byte	0
	.byte	9
	.value	245
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	86
	.byte	0
	.byte	8
	.value	22
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	118
	.byte	0
	.byte	8
	.value	54
	.byte	0
	.byte	9
	.value	205
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	102
	.byte	0
	.byte	8
	.value	38
	.byte	0
	.byte	9
	.value	173
	.byte	0
	.byte	8
	.value	6
	.byte	0
	.byte	8
	.value	134
	.byte	0
	.byte	8
	.value	70
	.byte	0
	.byte	9
	.value	237
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	94
	.byte	0
	.byte	8
	.value	30
	.byte	0
	.byte	9
	.value	157
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	126
	.byte	0
	.byte	8
	.value	62
	.byte	0
	.byte	9
	.value	221
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	110
	.byte	0
	.byte	8
	.value	46
	.byte	0
	.byte	9
	.value	189
	.byte	0
	.byte	8
	.value	14
	.byte	0
	.byte	8
	.value	142
	.byte	0
	.byte	8
	.value	78
	.byte	0
	.byte	9
	.value	253
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	81
	.byte	0
	.byte	8
	.value	17
	.byte	21
	.byte	8
	.value	131
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	113
	.byte	0
	.byte	8
	.value	49
	.byte	0
	.byte	9
	.value	195
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	97
	.byte	0
	.byte	8
	.value	33
	.byte	0
	.byte	9
	.value	163
	.byte	0
	.byte	8
	.value	1
	.byte	0
	.byte	8
	.value	129
	.byte	0
	.byte	8
	.value	65
	.byte	0
	.byte	9
	.value	227
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	89
	.byte	0
	.byte	8
	.value	25
	.byte	0
	.byte	9
	.value	147
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	121
	.byte	0
	.byte	8
	.value	57
	.byte	0
	.byte	9
	.value	211
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	105
	.byte	0
	.byte	8
	.value	41
	.byte	0
	.byte	9
	.value	179
	.byte	0
	.byte	8
	.value	9
	.byte	0
	.byte	8
	.value	137
	.byte	0
	.byte	8
	.value	73
	.byte	0
	.byte	9
	.value	243
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	85
	.byte	0
	.byte	8
	.value	21
	.byte	16
	.byte	8
	.value	258
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	117
	.byte	0
	.byte	8
	.value	53
	.byte	0
	.byte	9
	.value	203
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	101
	.byte	0
	.byte	8
	.value	37
	.byte	0
	.byte	9
	.value	171
	.byte	0
	.byte	8
	.value	5
	.byte	0
	.byte	8
	.value	133
	.byte	0
	.byte	8
	.value	69
	.byte	0
	.byte	9
	.value	235
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	93
	.byte	0
	.byte	8
	.value	29
	.byte	0
	.byte	9
	.value	155
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	125
	.byte	0
	.byte	8
	.value	61
	.byte	0
	.byte	9
	.value	219
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	109
	.byte	0
	.byte	8
	.value	45
	.byte	0
	.byte	9
	.value	187
	.byte	0
	.byte	8
	.value	13
	.byte	0
	.byte	8
	.value	141
	.byte	0
	.byte	8
	.value	77
	.byte	0
	.byte	9
	.value	251
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	83
	.byte	0
	.byte	8
	.value	19
	.byte	21
	.byte	8
	.value	195
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	115
	.byte	0
	.byte	8
	.value	51
	.byte	0
	.byte	9
	.value	199
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	99
	.byte	0
	.byte	8
	.value	35
	.byte	0
	.byte	9
	.value	167
	.byte	0
	.byte	8
	.value	3
	.byte	0
	.byte	8
	.value	131
	.byte	0
	.byte	8
	.value	67
	.byte	0
	.byte	9
	.value	231
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	91
	.byte	0
	.byte	8
	.value	27
	.byte	0
	.byte	9
	.value	151
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	123
	.byte	0
	.byte	8
	.value	59
	.byte	0
	.byte	9
	.value	215
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	107
	.byte	0
	.byte	8
	.value	43
	.byte	0
	.byte	9
	.value	183
	.byte	0
	.byte	8
	.value	11
	.byte	0
	.byte	8
	.value	139
	.byte	0
	.byte	8
	.value	75
	.byte	0
	.byte	9
	.value	247
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	87
	.byte	0
	.byte	8
	.value	23
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	119
	.byte	0
	.byte	8
	.value	55
	.byte	0
	.byte	9
	.value	207
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	103
	.byte	0
	.byte	8
	.value	39
	.byte	0
	.byte	9
	.value	175
	.byte	0
	.byte	8
	.value	7
	.byte	0
	.byte	8
	.value	135
	.byte	0
	.byte	8
	.value	71
	.byte	0
	.byte	9
	.value	239
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	95
	.byte	0
	.byte	8
	.value	31
	.byte	0
	.byte	9
	.value	159
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	127
	.byte	0
	.byte	8
	.value	63
	.byte	0
	.byte	9
	.value	223
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	111
	.byte	0
	.byte	8
	.value	47
	.byte	0
	.byte	9
	.value	191
	.byte	0
	.byte	8
	.value	15
	.byte	0
	.byte	8
	.value	143
	.byte	0
	.byte	8
	.value	79
	.byte	0
	.byte	9
	.value	255
	.size	lenfix.1, 2048
# ----------------------
	.align 32
	.local	order.2
	.type	order.2, @object
order.2:
	.value	16
	.value	17
	.value	18
	.value	0
	.value	8
	.value	7
	.value	9
	.value	6
	.value	10
	.value	5
	.value	11
	.value	4
	.value	12
	.value	3
	.value	13
	.value	2
	.value	14
	.value	1
	.value	15
	.size	order.2, 38
# ----------------------
	.section       .rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	9
	.long	5
# ----------------------
	.section       .note.gnu.property,"a"
.L0_LOCAL_LABEL_1:
.L1_LOCAL_LABEL_1:
.L2_LOCAL_LABEL_1:
.L3_LOCAL_LABEL_1:
	.align 8
.L4_LOCAL_LABEL_1:
# ----------------------
	.hidden	inflate_table
	.hidden	inflate_fast
	.hidden	zcfree
	.hidden	zcalloc
	.ident	"GCC: (Ubuntu 11.2.0-7ubuntu2) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
