	.file	"inflate.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	inflateResetKeep
	.type	inflateResetKeep, @function
inflateResetKeep:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L7                                      ##  DEAD:
.L2:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L7:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L2                                      ##  DEAD:
	movl      8(%rax), %edx                            ##  DEAD:rdx;rflags
	movq      $0, 32(%rax)                             ##  DEAD:rflags
	movq      $0, 48(%rdi)                             ##  DEAD:rflags
	movq      $0, 40(%rdi)                             ##  DEAD:rflags
	movq      $0, 16(%rdi)                             ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L3                                      ##  DEAD:
	andl      $1, %edx                                 ##  DEAD:rflags
	movq      %rdx, 96(%rdi)                           ##  DEAD:
.L3:
	leaq      1360(%rax), %rdx                         ##  DEAD:rdx
	movl      $0, (%rax)                               ##  DEAD:
	movl      $0, 4(%rax)                              ##  DEAD:
	movl      $0, 12(%rax)                             ##  DEAD:
	movl      $32768, 20(%rax)                         ##  DEAD:
	movq      $0, 40(%rax)                             ##  DEAD:
	movq      $0, 72(%rax)                             ##  DEAD:
	movl      $0, 80(%rax)                             ##  DEAD:
	movq      %rdx, 136(%rax)                          ##  DEAD:
	movq      %rdx, 104(%rax)                          ##  DEAD:
	movq      %rdx, 96(%rax)                           ##  DEAD:
	movl      $1, 7136(%rax)                           ##  DEAD:
	movl      $-1, 7140(%rax)                          ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflateResetKeep, .-inflateResetKeep
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflatePrime
	.type	inflatePrime, @function
inflatePrime:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L13                                     ##  DEAD:
.L9:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L13:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L9                                      ##  DEAD:
	testl     %esi, %esi                               ##  DEAD:rflags
	.p2align 4,,4
	jns       .L10                                     ##  DEAD:
	movq      $0, 72(%rax)                             ##  DEAD:
	movl      $0, 80(%rax)                             ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L10:
	cmpl      $16, %esi                                ##  DEAD:rflags
	.p2align 4,,2
	jg        .L9                                      ##  DEAD:
	movl      80(%rax), %r8d                           ##  DEAD:r8;rcx;rflags
	leal      (%rsi,%r8), %ecx                         ##  DEAD:rcx;rflags
	cmpl      $32, %ecx                                ##  DEAD:rflags
	ja        .L9                                      ##  DEAD:
	movl      %esi, %ecx                               ##  DEAD:rcx;rdi;rflags
	movl      $1, %edi                                 ##  DEAD:rdi;rflags
	addl      %esi, 80(%rax)                           ##  DEAD:rflags
	salq      %cl, %rdi                                ##  DEAD:
	movl      %r8d, %ecx                               ##  DEAD:rcx;rflags
	subl      $1, %edi                                 ##  DEAD:rflags
	andl      %edx, %edi                               ##  DEAD:rflags
	sall      %cl, %edi                                ##  DEAD:
	movslq    %edi, %rdi                               ##  DEAD:rflags
	addq      %rdi, 72(%rax)                           ##  DEAD:rflags
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflatePrime, .-inflatePrime
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateEnd
	.type	inflateEnd, @function
inflateEnd:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	pushq     %rbx                                     ##  DEAD:
	movq      %rdi, %rbx                               ##  DEAD:rbx
	jne       .L19                                     ##  DEAD:
.L15:
	movl      $-2, %eax                                ##  DEAD:rax;rbx
	popq      %rbx                                     ##  DEAD:rbx
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L19:
	movq      56(%rdi), %rsi                           ##  DEAD:rflags;rsi
	testq     %rsi, %rsi                               ##  DEAD:rflags
	je        .L15                                     ##  DEAD:
	movq      72(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L15                                     ##  DEAD:
	movq      64(%rsi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L16                                     ##  DEAD:
	movq      %rdx, %rsi                               ##  DEAD:rsi
	movq      80(%rdi), %rdi                           ##  DEAD:
	call      *%rax                                    ##  DEAD:
	movq      72(%rbx), %rax                           ##  DEAD:rax;rdi;rsi
	movq      56(%rbx), %rsi                           ##  DEAD:rdi;rsi
.L16:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi
	call      *%rax                                    ##  DEAD:
	movq      $0, 56(%rbx)                             ##  DEAD:rax
	xorl      %eax, %eax                               ##  DEAD:rax;rbx
	popq      %rbx                                     ##  DEAD:rbx
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflateEnd, .-inflateEnd
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateGetHeader
	.type	inflateGetHeader, @function
inflateGetHeader:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L24                                     ##  DEAD:
.L21:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L24:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L21                                     ##  DEAD:
	testb     $2, 8(%rax)                              ##  DEAD:rflags
	.p2align 4,,4
	je        .L21                                     ##  DEAD:
	movq      %rsi, 40(%rax)                           ##  DEAD:
	movl      $0, 72(%rsi)                             ##  DEAD:rax
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflateGetHeader, .-inflateGetHeader
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateSyncPoint
	.type	inflateSyncPoint, @function
inflateSyncPoint:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L30                                     ##  DEAD:
.L26:
	movl      $-2, %eax                                ##  DEAD:rax
.L28:
	rep; ret                                           ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L30:
	movq      56(%rdi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L26                                     ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	cmpl      $13, (%rdx)                              ##  DEAD:rflags
	jne       .L28                                     ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	movl      80(%rdx), %edx                           ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	sete      %al                                      ##  DEAD:
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflateSyncPoint, .-inflateSyncPoint
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateUndermine
	.type	inflateUndermine, @function
inflateUndermine:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L32                                     ##  DEAD:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L32                                     ##  DEAD:
	movl      $1, 7136(%rax)                           ##  DEAD:
	movl      $-3, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L32:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflateUndermine, .-inflateUndermine
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateMark
	.type	inflateMark, @function
inflateMark:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L42                                     ##  DEAD:
.L36:
	movq      $-65536, %rax                            ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L42:
	movq      56(%rdi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L36                                     ##  DEAD:
	movl      (%rdx), %ecx                             ##  DEAD:rcx;rflags;rsi
	movl      7140(%rdx), %esi                         ##  DEAD:rflags;rsi
	cmpl      $15, %ecx                                ##  DEAD:rflags
	je        .L43                                     ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	cmpl      $24, %ecx                                ##  DEAD:rflags
	je        .L44                                     ##  DEAD:
.L38:
	movslq    %esi, %rdx                               ##  DEAD:rdx
	salq      $16, %rdx                                ##  DEAD:
	addq      %rdx, %rax                               ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L43:
	movl      84(%rdx), %eax                           ##  DEAD:rax
	jmp       .L38                                     ##  DEAD:rdx
	.p2align 4,,10
	.p2align 3
.L44:
	movl      7144(%rdx), %eax                         ##  DEAD:rax;rflags
	subl      84(%rdx), %eax                           ##  DEAD:rflags
	jmp       .L38                                     ##  DEAD:rdx
	.cfi_endproc
	.size	inflateMark, .-inflateMark
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateCopy
	.type	inflateCopy, @function
inflateCopy:
	.cfi_startproc
	movq      %rbx, -40(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -32(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rsi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -24(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -16(%rsp)                          ##  DEAD:rbp;rflags
	movq      %rdi, %rbp                               ##  DEAD:rbp;rflags
	movq      %r14, -8(%rsp)                           ##  DEAD:rflags
	subq      $40, %rsp                                ##  DEAD:rflags
	testq     %rsi, %rsi                               ##  DEAD:rflags
	jne       .L54                                     ##  DEAD:
.L46:
	movl      $-2, %eax                                ##  DEAD:r12;r13;r14;rax;rbp;rbx;rflags
.L48:
	movq      (%rsp), %rbx                             ##  DEAD:r12;r13;r14;rbp;rbx;rflags
	movq      8(%rsp), %rbp                            ##  DEAD:r12;r13;r14;rbp;rflags
	movq      16(%rsp), %r12                           ##  DEAD:r12;r13;r14;rflags
	movq      24(%rsp), %r13                           ##  DEAD:r13;r14;rflags
	movq      32(%rsp), %r14                           ##  DEAD:r14;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L54:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L46                                     ##  DEAD:
	movq      56(%rsi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L46                                     ##  DEAD:
	movq      64(%rsi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L46                                     ##  DEAD:
	cmpq      $0, 72(%rsi)                             ##  DEAD:rflags
	je        .L46                                     ##  DEAD:
	movq      80(%rsi), %rdi                           ##  DEAD:rdi;rdx
	movl      $7152, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      *%rax                                    ##  DEAD:
	movq      %rax, %r13                               ##  DEAD:r13;rflags
	movl      $-4, %eax                                ##  DEAD:rax;rflags
	testq     %r13, %r13                               ##  DEAD:rflags
	je        .L48                                     ##  DEAD:
	cmpq      $0, 64(%r12)                             ##  DEAD:rflags
	je        .L49                                     ##  DEAD:
	movl      48(%r12), %ecx                           ##  DEAD:rcx;rdi;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rdx;rsi
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rdx
	movl      $1, %edx                                 ##  DEAD:rdx
	sall      %cl, %esi                                ##  DEAD:
	call      *64(%rbx)                                ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:r14;rflags
	movq      %rax, %r14                               ##  DEAD:r14
	je        .L55                                     ##  DEAD:
.L50:
	movl      $28, %ecx                                ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      %rbp, %rdi                               ##  DEAD:rax;rdi;rdx;rsi
	movq      %rbx, %rsi                               ##  DEAD:rax;rdx;rsi
	rep movsl                                          ##  DEAD:rax;rdx
	movq      %r13, %rdi                               ##  DEAD:rax;rdi;rdx;rsi
	movq      %r12, %rsi                               ##  DEAD:rax;rdx;rsi
	leaq      1360(%r12), %rdx                         ##  DEAD:rax;rdx
	movw      $894, %cx                                ##  DEAD:rax
	rep movsq                                          ##  DEAD:rax
	movq      96(%r12), %rax                           ##  DEAD:rax;rflags
	cmpq      %rdx, %rax                               ##  DEAD:rflags
	jb        .L51                                     ##  DEAD:
	leaq      7132(%r12), %rcx                         ##  DEAD:rcx;rflags
	cmpq      %rcx, %rax                               ##  DEAD:rflags
	ja        .L51                                     ##  DEAD:
	subq      %rdx, %rax                               ##  DEAD:rflags
	sarq      $2, %rax                                 ##  DEAD:
	leaq      1360(%r13,%rax,4), %rax                  ##  DEAD:rflags
	movq      %rax, 96(%r13)                           ##  DEAD:rflags
	movq      104(%r12), %rax                          ##  DEAD:rax;rflags
	subq      %rdx, %rax                               ##  DEAD:rflags
	sarq      $2, %rax                                 ##  DEAD:
	leaq      1360(%r13,%rax,4), %rax                  ##  DEAD:rflags
	movq      %rax, 104(%r13)                          ##  DEAD:rflags
.L51:
	movq      136(%r12), %rax                          ##  DEAD:rax;rflags
	subq      %rdx, %rax                               ##  DEAD:rflags
	sarq      $2, %rax                                 ##  DEAD:
	testq     %r14, %r14                               ##  DEAD:rflags
	leaq      1360(%r13,%rax,4), %rax                  ##  DEAD:
	movq      %rax, 136(%r13)                          ##  DEAD:
	je        .L52                                     ##  DEAD:
	movl      48(%r12), %edx                           ##  DEAD:rax;rcx;rdi;rdx;rsi
	movl      $1, %eax                                 ##  DEAD:rax;rcx;rdi;rsi
	movq      64(%r12), %rsi                           ##  DEAD:rcx;rdi;rsi
	movq      %r14, %rdi                               ##  DEAD:rcx;rdi
	movl      %edx, %ecx                               ##  DEAD:rcx
	sall      %cl, %eax                                ##  DEAD:rdx
	movq      %rax, %rdx                               ##  DEAD:rdx
	call      memcpy                                   ##  DEAD:
.L52:
	movq      %r14, 64(%r13)                           ##  DEAD:r12;rax;rbx
	movq      %r13, 56(%rbp)                           ##  DEAD:r12;r14;rax;rbx
	xorl      %eax, %eax                               ##  DEAD:r12;r13;r14;rax;rbp;rbx
	jmp       .L48                                     ##  DEAD:r12;r13;r14;rbp;rbx;rflags
.L55:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rsi
	movq      %r13, %rsi                               ##  DEAD:rsi
	call      *72(%rbx)                                ##  DEAD:
	movl      $-4, %eax                                ##  DEAD:r12;r13;r14;rax;rbp;rbx;rflags
	jmp       .L48                                     ##  DEAD:r12;r13;r14;rbp;rbx;rflags
.L49:
	xorl      %r14d, %r14d                             ##  DEAD:r14;rax;rcx;rdi;rdx;rsi
	.p2align 4,,3
	jmp       .L50                                     ##  DEAD:rax;rcx;rdi;rdx;rsi
	.cfi_endproc
	.size	inflateCopy, .-inflateCopy
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	updatewindow
	.type	updatewindow, @function
updatewindow:
	.cfi_startproc
	movq      %rbp, -24(%rsp)                          ##  DEAD:r8;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:r8;rbp;rflags
	movq      %rdi, %r8                                ##  DEAD:r12;r8;rbp;rflags
	movq      %rbx, -32(%rsp)                          ##  DEAD:r12;rbp;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:r12;rbp;rbx;rflags
	subq      $40, %rsp                                ##  DEAD:r12;rbp;rbx;rflags
	movq      56(%rdi), %rbx                           ##  DEAD:r12;rbp;rbx;rflags
	movq      %rsi, %r12                               ##  DEAD:r12;rbp;rdi;rflags
	movl      %edx, %ebp                               ##  DEAD:rbp;rdi;rflags
	movq      64(%rbx), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L65                                     ##  DEAD:
.L57:
	movl      52(%rbx), %r13d                          ##  DEAD:r13;rflags
	testl     %r13d, %r13d                             ##  DEAD:rflags
	je        .L66                                     ##  DEAD:
	cmpl      %r13d, %ebp                              ##  DEAD:rflags
	jae       .L67                                     ##  DEAD:
.L60:
	movl      60(%rbx), %eax                           ##  DEAD:rax;rdx;rflags;rsi
	movl      %ebp, %esi                               ##  DEAD:rdx;rflags;rsi
	subl      %eax, %r13d                              ##  DEAD:rdx;rflags
	cmpl      %ebp, %r13d                              ##  DEAD:rdx;rflags
	cmova     %ebp, %r13d                              ##  DEAD:rdx
	addq      %rax, %rdi                               ##  DEAD:rdx;rflags
	movq      %r12, %rax                               ##  DEAD:rax;rdx;rflags
	subq      %rsi, %rax                               ##  DEAD:rdx;rflags
	movl      %r13d, %edx                              ##  DEAD:rdx;rsi
	movq      %rax, %rsi                               ##  DEAD:rsi
	call      memcpy                                   ##  DEAD:
	subl      %r13d, %ebp                              ##  DEAD:rflags
	jne       .L68                                     ##  DEAD:
	movl      60(%rbx), %eax                           ##  DEAD:rax;rdx;rflags
	movl      52(%rbx), %edx                           ##  DEAD:rdx;rflags
	addl      %r13d, %eax                              ##  DEAD:rflags
	cmpl      %edx, %eax                               ##  DEAD:rflags
	movl      %eax, 60(%rbx)                           ##  DEAD:
	je        .L69                                     ##  DEAD:
	movl      56(%rbx), %ecx                           ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax
	cmpl      %edx, %ecx                               ##  DEAD:rflags
	jae       .L58                                     ##  DEAD:
.L70:
	addl      %ecx, %r13d                              ##  DEAD:r12;rbp;rflags
	movl      %r13d, 56(%rbx)                          ##  DEAD:r12;rbp;rflags
.L58:
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L66:
	movl      48(%rbx), %ecx                           ##  DEAD:rcx;rdi
	movb      $1, %r13b                                ##  DEAD:rdi
	movl      $0, 60(%rbx)                             ##  DEAD:rdi
	movl      $0, 56(%rbx)                             ##  DEAD:rdi
	movq      64(%rbx), %rdi                           ##  DEAD:rdi
	sall      %cl, %r13d                               ##  DEAD:
	cmpl      %r13d, %ebp                              ##  DEAD:rflags
	movl      %r13d, 52(%rbx)                          ##  DEAD:
	jb        .L60                                     ##  DEAD:
.L67:
	movl      %r13d, %edx                              ##  DEAD:rdx;rflags;rsi
	movq      %r12, %rsi                               ##  DEAD:rflags;rsi
	subq      %rdx, %rsi                               ##  DEAD:rflags
	call      memcpy                                   ##  DEAD:
	movl      52(%rbx), %eax                           ##  DEAD:r12;r13;rax;rbp
	movl      $0, 60(%rbx)                             ##  DEAD:r12;r13;rbp
	movl      %eax, 56(%rbx)                           ##  DEAD:r12;r13;rbp
	xorl      %eax, %eax                               ##  DEAD:r12;r13;rax;rbp;rbx
	jmp       .L58                                     ##  DEAD:r12;r13;rbp;rbx;rflags
	.p2align 4,,10
	.p2align 3
.L69:
	movl      56(%rbx), %ecx                           ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax
	movl      $0, 60(%rbx)                             ##  DEAD:rflags
	cmpl      %edx, %ecx                               ##  DEAD:rflags
	jb        .L70                                     ##  DEAD:
	jmp       .L58                                     ##  DEAD:r12;r13;rbp;rbx;rflags
	.p2align 4,,10
	.p2align 3
.L68:
	movq      64(%rbx), %rdi                           ##  DEAD:rdi;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:rdx;rflags;rsi
	movq      %r12, %rsi                               ##  DEAD:rflags;rsi
	subq      %rdx, %rsi                               ##  DEAD:rflags
	call      memcpy                                   ##  DEAD:
	movl      52(%rbx), %eax                           ##  DEAD:r12;r13;rax
	movl      %ebp, 60(%rbx)                           ##  DEAD:r12;r13
	movl      %eax, 56(%rbx)                           ##  DEAD:r12;r13;rbp
	xorl      %eax, %eax                               ##  DEAD:r12;r13;rax;rbp;rbx
	jmp       .L58                                     ##  DEAD:r12;r13;rbp;rbx;rflags
	.p2align 4,,10
	.p2align 3
.L65:
	movl      48(%rbx), %ecx                           ##  DEAD:rcx;rdi;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rdx;rsi
	movq      80(%r8), %rdi                            ##  DEAD:rdi;rdx
	movl      $1, %edx                                 ##  DEAD:rdx
	sall      %cl, %esi                                ##  DEAD:
	call      *64(%r8)                                 ##  DEAD:
	movq      %rax, %rdi                               ##  DEAD:rdi;rflags
	movq      %rax, 64(%rbx)                           ##  DEAD:rflags
	movl      $1, %eax                                 ##  DEAD:rax;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L57                                     ##  DEAD:
	jmp       .L58                                     ##  DEAD:r12;r13;rbp;rbx;rflags
	.cfi_endproc
	.size	updatewindow, .-updatewindow
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateGetDictionary
	.type	inflateGetDictionary, @function
inflateGetDictionary:
	.cfi_startproc
	movq      %rbx, -24(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -16(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdx, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -8(%rsp)                           ##  DEAD:rbp;rflags
	subq      $24, %rsp                                ##  DEAD:rbp;rflags
	testq     %rdi, %rdi                               ##  DEAD:rbp;rflags
	movq      %rsi, %rbp                               ##  DEAD:rbp
	jne       .L77                                     ##  DEAD:
.L72:
	movl      $-2, %eax                                ##  DEAD:r12;rax;rbp;rbx;rflags
.L75:
	movq      (%rsp), %rbx                             ##  DEAD:r12;rbp;rbx;rflags
	movq      8(%rsp), %rbp                            ##  DEAD:r12;rbp;rflags
	movq      16(%rsp), %r12                           ##  DEAD:r12;rflags
	addq      $24, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L77:
	movq      56(%rdi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L72                                     ##  DEAD:
	testq     %rsi, %rsi                               ##  DEAD:rdx;rflags
	movl      56(%r12), %edx                           ##  DEAD:rdx
	jne       .L78                                     ##  DEAD:
.L73:
	xorl      %eax, %eax                               ##  DEAD:rax
	testq     %rbx, %rbx                               ##  DEAD:rflags
	je        .L75                                     ##  DEAD:
	movl      56(%r12), %eax                           ##  DEAD:rax;rbp
	movl      %eax, (%rbx)                             ##  DEAD:r12;rbp
	xorl      %eax, %eax                               ##  DEAD:r12;rax;rbp;rbx
	jmp       .L75                                     ##  DEAD:r12;rbp;rbx;rflags
	.p2align 4,,10
	.p2align 3
.L78:
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L73                                     ##  DEAD:
	movl      60(%r12), %esi                           ##  DEAD:rdi;rflags;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi;rflags
	subl      %esi, %edx                               ##  DEAD:rflags
	addq      64(%r12), %rsi                           ##  DEAD:rflags
	call      memcpy                                   ##  DEAD:
	movl      60(%r12), %edx                           ##  DEAD:rdi;rdx;rflags;rsi
	movl      56(%r12), %edi                           ##  DEAD:rdi;rflags;rsi
	movq      64(%r12), %rsi                           ##  DEAD:rflags;rsi
	subq      %rdx, %rdi                               ##  DEAD:rflags
	leaq      (%rbp,%rdi), %rdi                        ##  DEAD:
	call      memcpy                                   ##  DEAD:
	jmp       .L73                                     ##  DEAD:rax
	.cfi_endproc
	.size	inflateGetDictionary, .-inflateGetDictionary
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateSetDictionary
	.type	inflateSetDictionary, @function
inflateSetDictionary:
	.cfi_startproc
	movq      %rbx, -32(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:r12;rbp;rflags
	subq      $40, %rsp                                ##  DEAD:r12;rbp;rflags
	testq     %rdi, %rdi                               ##  DEAD:r12;rbp;rflags
	movq      %rsi, %r12                               ##  DEAD:r12;rbp
	movl      %edx, %ebp                               ##  DEAD:rbp
	jne       .L87                                     ##  DEAD:
.L80:
	movl      $-2, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
.L84:
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L87:
	movq      56(%rdi), %r13                           ##  DEAD:r13;rflags
	testq     %r13, %r13                               ##  DEAD:rflags
	je        .L80                                     ##  DEAD:
	movl      8(%r13), %ecx                            ##  DEAD:rcx;rflags
	testl     %ecx, %ecx                               ##  DEAD:rflags
	jne       .L88                                     ##  DEAD:
	cmpl      $10, (%r13)                              ##  DEAD:rflags
	je        .L82                                     ##  DEAD:
.L83:
	movl      %ebp, %esi                               ##  DEAD:r8;rdi;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:r8;rdi;rdx;rflags
	movq      %rbx, %rdi                               ##  DEAD:r8;rdi;rflags
	leaq      (%r12,%rsi), %rsi                        ##  DEAD:r8;rflags
	call      updatewindow                             ##  DEAD:r8;rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L89                                     ##  DEAD:
	movl      $1, 12(%r13)                             ##  DEAD:r12;rax;rbp;rbx
	xorl      %eax, %eax                               ##  DEAD:r12;r13;rax;rbp;rbx
	jmp       .L84                                     ##  DEAD:r12;r13;rbp;rbx;rflags
.L88:
	cmpl      $10, (%r13)                              ##  DEAD:rflags
	.p2align 4,,3
	jne       .L80                                     ##  DEAD:
.L82:
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:rdi
	call      adler32                                  ##  DEAD:
	movl      %ebp, %edx                               ##  DEAD:rdi;rdx;rsi
	movq      %r12, %rsi                               ##  DEAD:rdi;rsi
	movq      %rax, %rdi                               ##  DEAD:rdi
	call      adler32                                  ##  DEAD:
	movq      %rax, %rdx                               ##  DEAD:rdx;rflags
	cmpq      24(%r13), %rdx                           ##  DEAD:rax;rflags
	movl      $-3, %eax                                ##  DEAD:rax
	jne       .L84                                     ##  DEAD:
	jmp       .L83                                     ##  DEAD:r8;rdi;rdx;rflags;rsi
.L89:
	movl      $30, (%r13)                              ##  DEAD:r12;rax;rbp;rbx;rflags
	movl      $-4, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
	jmp       .L84                                     ##  DEAD:r12;r13;rbp;rbx;rflags
	.cfi_endproc
	.size	inflateSetDictionary, .-inflateSetDictionary
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"incorrect header check"
.LC1:
	.string	"unknown compression method"
.LC2:
	.string	"invalid window size"
.LC3:
	.string	"unknown header flags set"
.LC4:
	.string	"header crc mismatch"
.LC5:
	.string	"invalid block type"
.LC6:
	.string	"invalid stored block lengths"
.LC8:
	.string	"invalid code lengths set"
.LC9:
	.string	"invalid bit length repeat"
.LC11:
	.string	"invalid literal/lengths set"
.LC12:
	.string	"invalid distances set"
.LC13:
	.string	"invalid literal/length code"
.LC14:
	.string	"invalid distance code"
.LC15:
	.string	"invalid distance too far back"
.LC16:
	.string	"incorrect data check"
.LC17:
	.string	"incorrect length check"
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"too many length or distance symbols"
	.align 8
.LC10:
	.string	"invalid code -- missing end-of-block"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	inflate
	.type	inflate, @function
inflate:
	.cfi_startproc
	movq      %rbx, -48(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -40(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -32(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -24(%rsp)                          ##  DEAD:rbp;rflags
	movl      %esi, %ebp                               ##  DEAD:rbp;rflags
	movq      %r14, -16(%rsp)                          ##  DEAD:rflags
	movq      %r15, -8(%rsp)                           ##  DEAD:rflags
	subq      $216, %rsp                               ##  DEAD:rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L439                                    ##  DEAD:
.L91:
	movl      $-2, %r14d                               ##  DEAD:r12;r13;r14;r15;rax;rbp;rbx;rflags
.L128:
	movl      %r14d, %eax                              ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
	movq      168(%rsp), %rbx                          ##  DEAD:r12;r13;r14;r15;rbp;rbx;rflags
	movq      176(%rsp), %rbp                          ##  DEAD:r12;r13;r14;r15;rbp;rflags
	movq      184(%rsp), %r12                          ##  DEAD:r12;r13;r14;r15;rflags
	movq      192(%rsp), %r13                          ##  DEAD:r13;r14;r15;rflags
	movq      200(%rsp), %r14                          ##  DEAD:r14;r15;rflags
	movq      208(%rsp), %r15                          ##  DEAD:r15;rflags
	addq      $216, %rsp                               ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L439:
	movq      56(%rdi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L91                                     ##  DEAD:
	movq      24(%rdi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	movq      %rdx, 48(%rsp)                           ##  DEAD:
	je        .L91                                     ##  DEAD:
	movq      (%rdi), %rcx                             ##  DEAD:r15;rcx;rflags
	testq     %rcx, %rcx                               ##  DEAD:r15;rflags
	movq      %rcx, %r15                               ##  DEAD:r15
	je        .L440                                    ##  DEAD:
.L92:
	movl      (%r12), %eax                             ##  DEAD:rax;rflags
	cmpl      $11, %eax                                ##  DEAD:rflags
	je        .L441                                    ##  DEAD:
.L93:
	movl      32(%rbx), %edx                           ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rdx;rsi
	movl      8(%rbx), %ecx                            ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rsi
	leaq      784(%r12), %r9                           ##  DEAD:r10;r11;r13;r14;r8;r9;rdi;rsi
	leal      -5(%rbp), %esi                           ##  DEAD:r10;r11;r13;r14;r8;rdi;rsi
	leaq      1360(%r12), %rdi                         ##  DEAD:r10;r11;r13;r14;r8;rdi
	movq      72(%r12), %r11                           ##  DEAD:r10;r11;r13;r14;r8
	movq      %r9, 80(%rsp)                            ##  DEAD:r10;r13;r14;r8
	movl      80(%r12), %r13d                          ##  DEAD:r10;r13;r14;r8;r9
	xorl      %r14d, %r14d                             ##  DEAD:r10;r14;r8;r9
	movl      %edx, 44(%rsp)                           ##  DEAD:r10;r8;r9;rflags
	movl      %ecx, 60(%rsp)                           ##  DEAD:r10;r8;r9;rdx;rflags
	leaq      112(%r12), %rdx                          ##  DEAD:r10;r8;r9;rcx;rdx;rflags
	movl      60(%rsp), %r10d                          ##  DEAD:r10;r8;r9;rcx;rflags
	movl      44(%rsp), %r9d                           ##  DEAD:r8;r9;rcx;rflags
	leaq      136(%r12), %rcx                          ##  DEAD:r8;rcx;rflags
	movl      %esi, 92(%rsp)                           ##  DEAD:r8;rflags
	movq      %rdi, 64(%rsp)                           ##  DEAD:r8;rflags;rsi
	leaq      144(%r12), %rsi                          ##  DEAD:r8;rdi;rflags;rsi
	leaq      116(%r12), %rdi                          ##  DEAD:r8;rdi;rflags
	movl      %r14d, %r8d                              ##  DEAD:r8;rflags
	movq      %rdx, 104(%rsp)                          ##  DEAD:r14;rflags
	movq      %rbx, %r14                               ##  DEAD:r14;rflags
	movq      %rcx, 72(%rsp)                           ##  DEAD:rbx;rflags
	movl      %r10d, %ebx                              ##  DEAD:rbx;rflags
	movq      %rsi, 96(%rsp)                           ##  DEAD:r10;rflags
	movl      %ebp, %r10d                              ##  DEAD:r10;rflags
	movq      %rdi, 112(%rsp)                          ##  DEAD:rbp;rflags
	movl      %r9d, 56(%rsp)                           ##  DEAD:rbp;rflags
	movq      %r11, %rbp                               ##  DEAD:rbp;rflags
.L94:
	cmpl      $30, %eax                                ##  DEAD:rflags
	ja        .L91                                     ##  DEAD:
	movl      %eax, %eax                               ##  DEAD:
	jmp       *.L126(,%rax,8)                          ##  DEAD:
.L107:
	movl      4(%r12), %r9d                            ##  DEAD:r9;rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L206                                    ##  DEAD:
	cmpl      $2, %r13d                                ##  DEAD:rflags
	.p2align 4,,3
	ja        .L207                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L436                                    ##  DEAD:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rcx;rdx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rdx;rflags
	addq      $1, %r15                                 ##  DEAD:rdx;rflags
	addl      $8, %r13d                                ##  DEAD:rdx;rflags
	salq      %cl, %rax                                ##  DEAD:rdx
	addq      %rax, %rbp                               ##  DEAD:rcx;rdx;rflags
.L207:
	movl      %ebp, %eax                               ##  DEAD:rax;rcx;rdx;rflags
	leal      -1(%r13), %ecx                           ##  DEAD:rcx;rdx;rflags
	andl      $1, %eax                                 ##  DEAD:rdx;rflags
	movl      %eax, 4(%r12)                            ##  DEAD:rdx
	movq      %rbp, %rax                               ##  DEAD:rax;rdx
	shrq      $1, %rax                                 ##  DEAD:rdx
	movl      %eax, %edx                               ##  DEAD:rdx;rflags
	andl      $3, %edx                                 ##  DEAD:rflags
	cmpl      $2, %edx                                 ##  DEAD:rflags
	je        .L211                                    ##  DEAD:
	cmpl      $3, %edx                                 ##  DEAD:rflags
	je        .L212                                    ##  DEAD:
	cmpl      $1, %edx                                 ##  DEAD:rflags
	je        .L210                                    ##  DEAD:
	movl      $13, (%r12)                              ##  DEAD:r13;rbp
.L213:
	movq      %rax, %rbp                               ##  DEAD:r13;rbp
	leal      -2(%rcx), %r13d                          ##  DEAD:r13;rax
	shrq      $2, %rbp                                 ##  DEAD:rax
	.p2align 4,,10
	.p2align 3
.L143:
	movl      (%r12), %eax                             ##  DEAD:rax;rflags
	jmp       .L94                                     ##  DEAD:rflags
.L104:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L136                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L351                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L204:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L351:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L204                                    ##  DEAD:
.L136:
	movq      %rbp, %rax                               ##  DEAD:r11;r13;rax;rdx
	movq      %rbp, %rdx                               ##  DEAD:r11;r13;rdx
	movl      $10, (%r12)                              ##  DEAD:r11;r13
	shrq      $8, %rax                                 ##  DEAD:r11;r13
	shrq      $24, %rdx                                ##  DEAD:r11;r13
	xorl      %r13d, %r13d                             ##  DEAD:r11;r13
	andl      $65280, %eax                             ##  DEAD:r11;rflags
	andl      $255, %edx                               ##  DEAD:r11;rflags
	leaq      (%rax,%rdx), %rdx                        ##  DEAD:r11
	movq      %rbp, %rax                               ##  DEAD:r11;rax
	salq      $24, %rbp                                ##  DEAD:r11
	andl      $65280, %eax                             ##  DEAD:r11;rflags
	andl      $-1, %ebp                                ##  DEAD:r11;rflags
	salq      $8, %rax                                 ##  DEAD:r11
	leaq      (%rdx,%rax), %rax                        ##  DEAD:r11;rflags
	addq      %rbp, %rax                               ##  DEAD:r11;rflags
	xorl      %ebp, %ebp                               ##  DEAD:r11;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r11;rflags
	movq      %rax, 96(%r14)                           ##  DEAD:r11;rflags
.L105:
	movl      12(%r12), %r11d                          ##  DEAD:r11;rflags
	testl     %r11d, %r11d                             ##  DEAD:rflags
	je        .L442                                    ##  DEAD:
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:rdi
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      adler32                                  ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:rflags
	movl      $11, (%r12)                              ##  DEAD:rflags
	movq      %rax, 96(%r14)                           ##  DEAD:rflags
.L106:
	cmpl      $1, 92(%rsp)                             ##  DEAD:rflags
	ja        .L107                                    ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L436:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      %r8d, %r14d                              ##  DEAD:r14;r9;rax;rflags
.L127:
	movq      48(%rsp), %r9                            ##  DEAD:r9;rax;rflags
	movl      44(%rsp), %eax                           ##  DEAD:rax;rflags
	movl      %r10d, 8(%rbx)                           ##  DEAD:rflags
	movq      %r15, (%rbx)                             ##  DEAD:rflags
	movq      %r11, 72(%r12)                           ##  DEAD:rflags
	movl      %eax, 32(%rbx)                           ##  DEAD:rflags
	movq      %r9, 24(%rbx)                            ##  DEAD:rflags
	movl      52(%r12), %r9d                           ##  DEAD:r9;rflags
	movl      %r13d, 80(%r12)                          ##  DEAD:rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L443                                    ##  DEAD:
	movl      32(%rbx), %r13d                          ##  DEAD:r13;rflags
	cmpl      56(%rsp), %r13d                          ##  DEAD:rflags
	je        .L316                                    ##  DEAD:
	movl      (%r12), %eax                             ##  DEAD:rax;rflags
	cmpl      $28, %eax                                ##  DEAD:rflags
	ja        .L316                                    ##  DEAD:
	cmpl      $4, %ebp                                 ##  DEAD:rflags
	jne       .L315                                    ##  DEAD:
	cmpl      $25, %eax                                ##  DEAD:rflags
	.p2align 4,,3
	ja        .L316                                    ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L315:
	movl      56(%rsp), %edx                           ##  DEAD:r8;rdi;rdx;rflags;rsi
	movq      24(%rbx), %rsi                           ##  DEAD:r8;rdi;rflags;rsi
	movq      %rbx, %rdi                               ##  DEAD:r8;rdi;rflags
	subl      %r13d, %edx                              ##  DEAD:r8;rflags
	call      updatewindow                             ##  DEAD:r8;rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L318                                    ##  DEAD:
	movl      32(%rbx), %r13d                          ##  DEAD:r13;r15;rax;rdx;rflags;rsi
.L316:
	movl      60(%rsp), %r15d                          ##  DEAD:r15;rax;rdx;rflags;rsi
	movl      56(%rsp), %edx                           ##  DEAD:rax;rdx;rflags;rsi
	subl      8(%rbx), %r15d                           ##  DEAD:rax;rflags;rsi
	subl      %r13d, %edx                              ##  DEAD:rax;rflags;rsi
	movl      %edx, %esi                               ##  DEAD:r13;rax;rflags;rsi
	addq      %rsi, 40(%rbx)                           ##  DEAD:r13;rax;rflags
	movl      %edx, %r13d                              ##  DEAD:r13;rax;rflags
	movl      %r15d, %eax                              ##  DEAD:rax;rflags
	addq      %rax, 16(%rbx)                           ##  DEAD:rflags
	addq      %rsi, 32(%r12)                           ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L319                                    ##  DEAD:
	movl      8(%r12), %r8d                            ##  DEAD:r8;rflags
	testl     %r8d, %r8d                               ##  DEAD:rflags
	je        .L319                                    ##  DEAD:
	movl      16(%r12), %edi                           ##  DEAD:rdi;rflags
	testl     %edi, %edi                               ##  DEAD:rflags
	je        .L320                                    ##  DEAD:
	negq      %rsi                                     ##  DEAD:rdi;rflags
	addq      24(%rbx), %rsi                           ##  DEAD:rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi
	call      crc32                                    ##  DEAD:
.L321:
	movq      %rax, 24(%r12)                           ##  DEAD:rdx;rflags
	movq      %rax, 96(%rbx)                           ##  DEAD:rdx;rflags
.L319:
	cmpl      $1, 4(%r12)                              ##  DEAD:rdx;rflags
	movl      (%r12), %edx                             ##  DEAD:rdx
	sbbl      %eax, %eax                               ##  DEAD:
	notl      %eax                                     ##  DEAD:rflags
	andl      $64, %eax                                ##  DEAD:rflags
	addl      80(%r12), %eax                           ##  DEAD:rflags
	cmpl      $11, %edx                                ##  DEAD:rflags
	je        .L324                                    ##  DEAD:
	cmpl      $14, %edx                                ##  DEAD:rflags
	jne       .L444                                    ##  DEAD:
.L334:
	movl      $256, %edx                               ##  DEAD:rdx;rflags
.L327:
	addl      %edx, %eax                               ##  DEAD:rflags
	testl     %r13d, %r13d                             ##  DEAD:rflags
	movl      %eax, 88(%rbx)                           ##  DEAD:
	jne       .L329                                    ##  DEAD:
	testl     %r15d, %r15d                             ##  DEAD:rflags
	jne       .L329                                    ##  DEAD:
.L335:
	testl     %r14d, %r14d                             ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
	movl      $-5, %eax                                ##  DEAD:r12;r13;r15;rax;rbp;rbx
	cmove     %eax, %r14d                              ##  DEAD:r12;r13;r15;rbp;rbx
	jmp       .L128                                    ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L108:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	andl      $-8, %r13d                               ##  DEAD:rflags
	andl      $7, %ecx                                 ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L214                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	jmp       .L359                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L216:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L359:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L216                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rdx
.L214:
	movq      %rbp, %rax                               ##  DEAD:rax;rdx
	movzwq    %bp, %rdx                                ##  DEAD:rdx
	shrq      $16, %rax                                ##  DEAD:
	xorq      $65535, %rax                             ##  DEAD:
	cmpq      %rax, %rdx                               ##  DEAD:rflags
	jne       .L445                                    ##  DEAD:
	cmpl      $6, %r10d                                ##  DEAD:rflags
	movl      %edx, 84(%r12)                           ##  DEAD:
	movl      $14, (%r12)                              ##  DEAD:
	je        .L446                                    ##  DEAD:
	xorl      %r13d, %r13d                             ##  DEAD:r13;rax;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rax;rbp
.L109:
	movl      $15, (%r12)                              ##  DEAD:rax;rflags
.L110:
	movl      84(%r12), %eax                           ##  DEAD:rax;rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L434                                    ##  DEAD:
	cmpl      %eax, 44(%rsp)                           ##  DEAD:rcx;rflags
	movl      %ebx, %ecx                               ##  DEAD:rcx
	cmovbe    44(%rsp), %eax                           ##  DEAD:
	cmpl      %ebx, %eax                               ##  DEAD:rflags
	cmovbe    %eax, %ecx                               ##  DEAD:
	testl     %ecx, %ecx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movq      48(%rsp), %rdi                           ##  DEAD:r9;rdi;rdx;rsi
	movl      %ecx, %r9d                               ##  DEAD:r9;rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rdx;rsi
	movq      %r9, %rdx                                ##  DEAD:rdx
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movq      %r9, 32(%rsp)                            ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      memcpy                                   ##  DEAD:
	movl      24(%rsp), %ecx                           ##  DEAD:r10;r8;r9;rax;rcx;rflags
	movq      32(%rsp), %r9                            ##  DEAD:r10;r8;r9;rax;rflags
	subl      %ecx, 44(%rsp)                           ##  DEAD:r10;r8;rax;rflags
	addq      %r9, 48(%rsp)                            ##  DEAD:r10;r8;rax;rflags
	subl      %ecx, %ebx                               ##  DEAD:r10;r8;rax;rflags
	addq      %r9, %r15                                ##  DEAD:r10;r8;rax;rflags
	subl      %ecx, 84(%r12)                           ##  DEAD:r10;r8;rax;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rax;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L116:
	movl      92(%r12), %edx                           ##  DEAD:rdx;rflags
.L130:
	testl     %edx, %edx                               ##  DEAD:rflags
	jne       .L267                                    ##  DEAD:
	movl      84(%r12), %eax                           ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
.L268:
	movl      %eax, 7144(%r12)                         ##  DEAD:r11;r9;rcx;rdi;rdx;rsi
	movl      $22, (%r12)                              ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
.L117:
	movl      116(%r12), %ecx                          ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
	movl      $1, %r11d                                ##  DEAD:r11;r9;rax;rdi;rdx;rsi
	movq      104(%r12), %rdi                          ##  DEAD:r9;rax;rdi;rdx;rsi
	movl      %ebp, %eax                               ##  DEAD:r9;rax;rdx;rsi
	movl      %ebp, %edx                               ##  DEAD:r9;rdx;rsi
	sall      %cl, %r11d                               ##  DEAD:r9;rsi
	subl      $1, %r11d                                ##  DEAD:r9;rcx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r9;rcx;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r9;rcx;rflags;rsi
	movzbl    1(%rax), %ecx                            ##  DEAD:r9;rcx;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %cl, %eax                                ##  DEAD:rax;rflags
	cmpl      %eax, %r13d                              ##  DEAD:rflags
	jae       .L272                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
	jmp       .L369                                    ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	.p2align 4,,10
	.p2align 3
.L274:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L369:
	movzbl    (%r15), %eax                             ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	salq      %cl, %rax                                ##  DEAD:r13;r9;rdx;rsi
	addl      $8, %ecx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      %rax, %rbp                               ##  DEAD:r13;r9;rdx;rflags;rsi
	movl      %ebp, %eax                               ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:r13;r9;rdx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r13;r9;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r13;r9;rflags;rsi
	movzbl    1(%rax), %r13d                           ##  DEAD:r13;r9;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %r13b, %eax                              ##  DEAD:rax;rflags
	cmpl      %ecx, %eax                               ##  DEAD:rflags
	ja        .L274                                    ##  DEAD:
	movl      %ecx, %r11d                              ##  DEAD:r11;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	movl      %r11d, %r13d                             ##  DEAD:r13;rflags
.L272:
	movzbl    %sil, %r11d                              ##  DEAD:r11;rflags
	movl      %eax, 132(%rsp)                          ##  DEAD:rflags
	movl      %r11d, 120(%rsp)                         ##  DEAD:rflags
	testb     $-16, 120(%rsp)                          ##  DEAD:rflags
	je        .L275                                    ##  DEAD:
	movl      7140(%r12), %r11d                        ##  DEAD:r11;rdx;rflags
	movzbl    %cl, %edx                                ##  DEAD:rdx;rflags
.L276:
	movl      %edx, %ecx                               ##  DEAD:rcx;rflags
	subl      132(%rsp), %r13d                         ##  DEAD:rflags
	addl      %r11d, %edx                              ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	testb     $64, 120(%rsp)                           ##  DEAD:rflags
	movl      %edx, 7140(%r12)                         ##  DEAD:
	jne       .L447                                    ##  DEAD:
	movzwl    %r9w, %r9d                               ##  DEAD:rflags
	andl      $15, %esi                                ##  DEAD:rflags
	movl      $23, (%r12)                              ##  DEAD:rflags
	movl      %r9d, 88(%r12)                           ##  DEAD:rflags
	movl      %esi, 92(%r12)                           ##  DEAD:rflags
.L129:
	testl     %esi, %esi                               ##  DEAD:rflags
	je        .L281                                    ##  DEAD:
	cmpl      %esi, %r13d                              ##  DEAD:rflags
	jae       .L282                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L371                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L284:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L371:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      %esi, %ecx                               ##  DEAD:rflags
	jb        .L284                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rdi
.L282:
	movl      %esi, %ecx                               ##  DEAD:rax;rcx;rdi
	movl      $1, %eax                                 ##  DEAD:rax;rdi
	sall      %cl, %eax                                ##  DEAD:rdi
	movl      92(%r12), %ecx                           ##  DEAD:rcx;rdi;rflags
	addl      %ecx, 7140(%r12)                         ##  DEAD:rdi;rflags
	subl      $1, %eax                                 ##  DEAD:rdi;rflags
	andl      %ebp, %eax                               ##  DEAD:rdi;rflags
	addl      %eax, 88(%r12)                           ##  DEAD:rdi;rflags
	shrq      %cl, %rbp                                ##  DEAD:rdi
	subl      %ecx, %r13d                              ##  DEAD:rdi;rflags
.L281:
	movl      $24, (%r12)                              ##  DEAD:rdi;rflags
.L119:
	movl      44(%rsp), %edi                           ##  DEAD:rdi;rflags
	testl     %edi, %edi                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      56(%rsp), %ecx                           ##  DEAD:rax;rcx;rflags
	subl      44(%rsp), %ecx                           ##  DEAD:rax;rflags
	movl      88(%r12), %eax                           ##  DEAD:rax;rflags
	cmpl      %eax, %ecx                               ##  DEAD:rflags
	jae       .L285                                    ##  DEAD:
	subl      %ecx, %eax                               ##  DEAD:rflags
	cmpl      56(%r12), %eax                           ##  DEAD:rcx;rflags
	movl      %eax, %ecx                               ##  DEAD:rcx
	jbe       .L286                                    ##  DEAD:
	cmpl      $0, 7136(%r12)                           ##  DEAD:rflags
	je        .L286                                    ##  DEAD:
	movq      $.LC15, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L248:
	cmpl      $29, (%r12)                              ##  DEAD:rflags
	je        .L143                                    ##  DEAD:
	cmpw      $0, 656(%r12)                            ##  DEAD:rflags
	je        .L448                                    ##  DEAD:
	movq      64(%rsp), %rdi                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
	movq      104(%rsp), %r8                           ##  DEAD:r8;r9;rcx;rdx;rsi
	movl      %r11d, %edx                              ##  DEAD:r9;rcx;rdx;rsi
	movq      80(%rsp), %r9                            ##  DEAD:r9;rcx;rsi
	movq      72(%rsp), %rcx                           ##  DEAD:rcx;rsi
	movq      96(%rsp), %rsi                           ##  DEAD:rsi
	movl      $9, 112(%r12)                            ##  DEAD:
	movq      %rdi, 136(%r12)                          ##  DEAD:
	movq      %rdi, 96(%r12)                           ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      inflate_table                            ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:r10;r8;rflags
	movl      %eax, %r8d                               ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L449                                    ##  DEAD:
	movq      136(%r12), %rax                          ##  DEAD:r8;r9;rax;rcx;rdi;rdx;rsi
	movq      112(%rsp), %r8                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
	movl      $2, %edi                                 ##  DEAD:r9;rcx;rdi;rdx;rsi
	movl      128(%r12), %edx                          ##  DEAD:r9;rcx;rdx;rsi
	movq      80(%rsp), %r9                            ##  DEAD:r9;rcx;rsi
	movq      72(%rsp), %rcx                           ##  DEAD:rcx;rsi
	movl      $6, 116(%r12)                            ##  DEAD:rsi
	movq      %rax, 104(%r12)                          ##  DEAD:rsi
	movl      124(%r12), %eax                          ##  DEAD:rax;rsi
	movl      %r10d, 8(%rsp)                           ##  DEAD:rsi
	leaq      144(%r12,%rax,2), %rsi                   ##  DEAD:rsi
	call      inflate_table                            ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:r10;r8;rflags
	movl      %eax, %r8d                               ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L450                                    ##  DEAD:
	cmpl      $6, %r10d                                ##  DEAD:rflags
	movl      $19, (%r12)                              ##  DEAD:
	je        .L436                                    ##  DEAD:
.L114:
	movl      $20, (%r12)                              ##  DEAD:rflags
.L115:
	cmpl      $5, %ebx                                 ##  DEAD:rflags
	ja        .L451                                    ##  DEAD:
.L254:
	movl      112(%r12), %ecx                          ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
	movl      $1, %r11d                                ##  DEAD:r11;r9;rax;rdi;rdx;rsi
	movq      96(%r12), %rdi                           ##  DEAD:r9;rax;rdi;rdx;rsi
	movl      %ebp, %eax                               ##  DEAD:r9;rax;rdx;rsi
	movl      $0, 7140(%r12)                           ##  DEAD:r9;rdx;rsi
	movl      %ebp, %edx                               ##  DEAD:r9;rdx;rsi
	sall      %cl, %r11d                               ##  DEAD:r9;rsi
	subl      $1, %r11d                                ##  DEAD:r9;rcx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r9;rcx;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r9;rcx;rflags;rsi
	movzbl    1(%rax), %ecx                            ##  DEAD:r9;rcx;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %cl, %eax                                ##  DEAD:rax;rflags
	cmpl      %eax, %r13d                              ##  DEAD:rflags
	jae       .L255                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
	jmp       .L366                                    ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	.p2align 4,,10
	.p2align 3
.L257:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L366:
	movzbl    (%r15), %eax                             ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	salq      %cl, %rax                                ##  DEAD:r13;r9;rdx;rsi
	addl      $8, %ecx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      %rax, %rbp                               ##  DEAD:r13;r9;rdx;rflags;rsi
	movl      %ebp, %eax                               ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:r13;r9;rdx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r13;r9;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r13;r9;rflags;rsi
	movzbl    1(%rax), %r13d                           ##  DEAD:r13;r9;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %r13b, %eax                              ##  DEAD:rax;rflags
	cmpl      %ecx, %eax                               ##  DEAD:rflags
	ja        .L257                                    ##  DEAD:
	movl      %ecx, %r11d                              ##  DEAD:r11;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	movl      %r11d, %r13d                             ##  DEAD:r13;rflags
.L255:
	testb     %sil, %sil                               ##  DEAD:rflags
	jne       .L258                                    ##  DEAD:
	movzbl    %cl, %ecx                                ##  DEAD:rflags
	movzwl    %r9w, %r9d                               ##  DEAD:rflags
	subl      %eax, %r13d                              ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:rax
	movl      %ecx, 7140(%r12)                         ##  DEAD:rax;rflags
	movl      %r9d, 84(%r12)                           ##  DEAD:rax;rflags
.L259:
	movl      $25, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L121:
	movl      8(%r12), %edx                            ##  DEAD:rdx;rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L299                                    ##  DEAD:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L300                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L372                                    ##  DEAD:rax;rflags
.L302:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L372:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L302                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rdx;rflags;rsi
.L300:
	movl      56(%rsp), %edx                           ##  DEAD:rdx;rflags;rsi
	subl      44(%rsp), %edx                           ##  DEAD:rflags;rsi
	movl      %edx, %esi                               ##  DEAD:rflags;rsi
	addq      %rsi, 40(%r14)                           ##  DEAD:rflags
	addq      %rsi, 32(%r12)                           ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L303                                    ##  DEAD:
	cmpl      $0, 16(%r12)                             ##  DEAD:rflags
	je        .L304                                    ##  DEAD:
	movq      48(%rsp), %rax                           ##  DEAD:rax;rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rflags
	movl      %r8d, 16(%rsp)                           ##  DEAD:rflags
	movl      %r10d, 8(%rsp)                           ##  DEAD:rflags
	subq      %rsi, %rax                               ##  DEAD:rflags
	movq      %rax, %rsi                               ##  DEAD:rsi
	call      crc32                                    ##  DEAD:
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rflags
.L305:
	movq      %rax, 24(%r12)                           ##  DEAD:rflags
	movq      %rax, 96(%r14)                           ##  DEAD:rflags
.L303:
	cmpl      $0, 16(%r12)                             ##  DEAD:rax;rflags
	movq      %rbp, %rax                               ##  DEAD:rax
	jne       .L307                                    ##  DEAD:
	movq      %rbp, %rdx                               ##  DEAD:rdx
	shrq      $8, %rax                                 ##  DEAD:
	shrq      $24, %rdx                                ##  DEAD:
	andl      $65280, %eax                             ##  DEAD:rflags
	andl      $255, %edx                               ##  DEAD:rflags
	leaq      (%rax,%rdx), %rdx                        ##  DEAD:rflags
	movq      %rbp, %rax                               ##  DEAD:rax;rflags
	andl      $65280, %eax                             ##  DEAD:rflags
	salq      $8, %rax                                 ##  DEAD:
	addq      %rax, %rdx                               ##  DEAD:rflags
	movq      %rbp, %rax                               ##  DEAD:rax
	salq      $24, %rax                                ##  DEAD:
	andl      $-1, %eax                                ##  DEAD:rflags
	leaq      (%rdx,%rax), %rax                        ##  DEAD:rflags
.L307:
	cmpq      24(%r12), %rax                           ##  DEAD:rflags
	jne       .L452                                    ##  DEAD:
	movl      44(%rsp), %edi                           ##  DEAD:r13;rax;rbp;rdi
	xorl      %r13d, %r13d                             ##  DEAD:r13;rax;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rax;rbp
	movl      %edi, 56(%rsp)                           ##  DEAD:rax;rflags
.L299:
	movl      $27, (%r12)                              ##  DEAD:rax;rflags
.L122:
	movl      8(%r12), %eax                            ##  DEAD:rax;rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L429                                    ##  DEAD:
	movl      16(%r12), %r11d                          ##  DEAD:r11;rflags
	testl     %r11d, %r11d                             ##  DEAD:rflags
	je        .L429                                    ##  DEAD:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L310                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L373                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L312:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L373:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L312                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rflags
.L310:
	movl      32(%r12), %eax                           ##  DEAD:rax;rflags
	cmpq      %rbp, %rax                               ##  DEAD:rflags
	je        .L313                                    ##  DEAD:
	movq      $.LC17, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L318:
	movl      $30, (%r12)                              ##  DEAD:r13;r14;r15;rax;rbp;rbx;rflags
.L437:
	movl      $-4, %r14d                               ##  DEAD:r12;r13;r14;r15;rax;rbp;rbx;rflags
	jmp       .L128                                    ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L111:
	cmpl      $13, %r13d                               ##  DEAD:rflags
	ja        .L134                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L350                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L220:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L350:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $13, %ecx                                ##  DEAD:rflags
	jbe       .L220                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rdx;rflags
.L134:
	movl      %ebp, %edx                               ##  DEAD:rax;rcx;rdx;rflags
	movq      %rbp, %rax                               ##  DEAD:rax;rcx;rflags
	movq      %rbp, %rcx                               ##  DEAD:rcx;rflags
	andl      $31, %edx                                ##  DEAD:rflags
	shrq      $5, %rax                                 ##  DEAD:
	shrq      $10, %rcx                                ##  DEAD:
	addl      $257, %edx                               ##  DEAD:rflags
	andl      $31, %eax                                ##  DEAD:rflags
	andl      $15, %ecx                                ##  DEAD:rflags
	addl      $1, %eax                                 ##  DEAD:rflags
	addl      $4, %ecx                                 ##  DEAD:rflags
	shrq      $14, %rbp                                ##  DEAD:
	subl      $14, %r13d                               ##  DEAD:rflags
	cmpl      $286, %edx                               ##  DEAD:rflags
	movl      %edx, 124(%r12)                          ##  DEAD:
	movl      %eax, 128(%r12)                          ##  DEAD:
	movl      %ecx, 120(%r12)                          ##  DEAD:
	ja        .L221                                    ##  DEAD:
	cmpl      $30, %eax                                ##  DEAD:rflags
	ja        .L221                                    ##  DEAD:
	movl      $0, 132(%r12)                            ##  DEAD:rax;rcx
	movl      $17, (%r12)                              ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax;rcx
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	jmp       .L349                                    ##  DEAD:rflags
.L98:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L166                                    ##  DEAD:
.L165:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L355                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L168:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L355:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L168                                    ##  DEAD:
.L166:
	movq      40(%r12), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L169                                    ##  DEAD:
	movl      %ebp, %edx                               ##  DEAD:rdx;rflags
	andl      $255, %edx                               ##  DEAD:rflags
	movl      %edx, 16(%rax)                           ##  DEAD:
	movq      %rbp, %rdx                               ##  DEAD:rdx
	shrq      $8, %rdx                                 ##  DEAD:
	movl      %edx, 20(%rax)                           ##  DEAD:rflags
.L169:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	testb     $2, %ah                                  ##  DEAD:rflags
	jne       .L453                                    ##  DEAD:
.L170:
	movl      $4, (%r12)                               ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rbp
.L99:
	testb     $4, %ah                                  ##  DEAD:rflags
	je        .L171                                    ##  DEAD:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L172                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	.p2align 4,,5
	jmp       .L356                                    ##  DEAD:rdx;rflags
	.p2align 4,,10
	.p2align 3
.L174:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L356:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L174                                    ##  DEAD:
.L172:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	movl      %ebp, 84(%r12)                           ##  DEAD:rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L175                                    ##  DEAD:
	movl      %ebp, 32(%rdx)                           ##  DEAD:rax;rflags
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L175:
	testb     $2, %ah                                  ##  DEAD:rflags
	jne       .L176                                    ##  DEAD:
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rbp
.L177:
	movl      $5, (%r12)                               ##  DEAD:rflags
	jmp       .L100                                    ##  DEAD:rflags
.L96:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L138                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L352                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L154:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L352:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L154                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rflags
.L138:
	cmpb      $8, %bpl                                 ##  DEAD:rax;rflags
	movl      %ebp, %eax                               ##  DEAD:rax
	movl      %ebp, 16(%r12)                           ##  DEAD:
	jne       .L433                                    ##  DEAD:
	testw     $-8192, %ax                              ##  DEAD:rflags
	jne       .L454                                    ##  DEAD:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L157                                    ##  DEAD:
	movq      %rbp, %rax                               ##  DEAD:rax
	shrq      $8, %rax                                 ##  DEAD:
	andl      $1, %eax                                 ##  DEAD:rflags
	movl      %eax, (%rdx)                             ##  DEAD:rflags
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L157:
	testb     $2, %ah                                  ##  DEAD:rflags
	je        .L158                                    ##  DEAD:
	movb      %bpl, 144(%rsp)                          ##  DEAD:rdi;rdx;rsi
	shrq      $8, %rbp                                 ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	movb      %bpl, 145(%rsp)                          ##  DEAD:rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx
	movl      $2, %edx                                 ##  DEAD:rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r13;r8;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r13;rbp
.L158:
	movl      $2, (%r12)                               ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13
	jmp       .L159                                    ##  DEAD:rflags
.L97:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L160                                    ##  DEAD:
.L159:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L354                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L162:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L354:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L162                                    ##  DEAD:
.L160:
	movq      40(%r12), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L163                                    ##  DEAD:
	movq      %rbp, 8(%rax)                            ##  DEAD:rflags
.L163:
	testb     $2, 17(%r12)                             ##  DEAD:rflags
	jne       .L455                                    ##  DEAD:
.L164:
	movl      $3, (%r12)                               ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13
	jmp       .L165                                    ##  DEAD:rflags
.L118:
	movl      92(%r12), %esi                           ##  DEAD:rflags;rsi
	jmp       .L129                                    ##  DEAD:rflags
.L124:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      $-3, %r14d                               ##  DEAD:r14;r9;rax;rflags
	jmp       .L127                                    ##  DEAD:r9;rax;rflags
.L95:
	movl      8(%r12), %edx                            ##  DEAD:rdx;rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L140                                    ##  DEAD:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L141                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L353                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L144:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L353:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L144                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rflags
.L141:
	cmpq      $35615, %rbp                             ##  DEAD:rflags
	je        .L456                                    ##  DEAD:
.L145:
	movq      40(%r12), %rax                           ##  DEAD:rax;rflags
	movl      $0, 16(%r12)                             ##  DEAD:rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L146                                    ##  DEAD:
	movl      $-1, 72(%rax)                            ##  DEAD:rdx;rflags
	movl      8(%r12), %edx                            ##  DEAD:rdx;rflags
.L146:
	andb      $1, %dl                                  ##  DEAD:rflags
	je        .L147                                    ##  DEAD:
	movl      %ebp, %edx                               ##  DEAD:rax;rcx;rdx;rsi
	movq      %rbp, %rax                               ##  DEAD:rax;rcx;rsi
	movl      $31, %esi                                ##  DEAD:rcx;rsi
	sall      $8, %edx                                 ##  DEAD:rcx
	shrq      $8, %rax                                 ##  DEAD:rcx
	movl      %ebp, %ecx                               ##  DEAD:rcx;rflags
	andl      $65280, %edx                             ##  DEAD:rflags
	leaq      (%rdx,%rax), %rax                        ##  DEAD:
	xorl      %edx, %edx                               ##  DEAD:rdx
	divq      %rsi                                     ##  DEAD:rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	jne       .L147                                    ##  DEAD:
	andl      $15, %ecx                                ##  DEAD:rflags
	cmpl      $8, %ecx                                 ##  DEAD:rflags
	je        .L149                                    ##  DEAD:
.L433:
	movq      $.LC1, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L113:
	movl      132(%r12), %r9d                          ##  DEAD:r11;r9;rdi;rflags
.L131:
	movl      124(%r12), %r11d                         ##  DEAD:r11;rdi;rflags
	movl      128(%r12), %edi                          ##  DEAD:rdi;rflags
	addl      %r11d, %edi                              ##  DEAD:rflags
	movl      %edi, 120(%rsp)                          ##  DEAD:rflags
.L228:
	cmpl      %r9d, 120(%rsp)                          ##  DEAD:rflags
	jbe       .L248                                    ##  DEAD:
	movl      112(%r12), %ecx                          ##  DEAD:rax;rcx;rdi;rdx;rsi
	movl      $1, %edi                                 ##  DEAD:rax;rdi;rdx;rsi
	movq      96(%r12), %rsi                           ##  DEAD:rax;rdx;rsi
	movl      %ebp, %eax                               ##  DEAD:rax;rdx
	sall      %cl, %edi                                ##  DEAD:rdx
	subl      $1, %edi                                 ##  DEAD:rcx;rdx;rflags
	andl      %edi, %eax                               ##  DEAD:rcx;rdx;rflags
	leaq      (%rsi,%rax,4), %rax                      ##  DEAD:rcx;rdx;rflags
	movzbl    1(%rax), %ecx                            ##  DEAD:rcx;rdx;rflags
	movzwl    2(%rax), %edx                            ##  DEAD:rdx;rflags
	movzbl    %cl, %eax                                ##  DEAD:rax;rflags
	cmpl      %eax, %r13d                              ##  DEAD:rflags
	jae       .L249                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rdx;rflags
	jmp       .L361                                    ##  DEAD:r13;rax;rdx;rflags
	.p2align 4,,10
	.p2align 3
.L230:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L361:
	movzbl    (%r15), %eax                             ##  DEAD:r13;rax;rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:r13;rdx;rflags
	addq      $1, %r15                                 ##  DEAD:r13;rdx;rflags
	salq      %cl, %rax                                ##  DEAD:r13;rdx
	addl      $8, %ecx                                 ##  DEAD:r13;rdx;rflags
	addq      %rax, %rbp                               ##  DEAD:r13;rdx;rflags
	movl      %ebp, %eax                               ##  DEAD:r13;rax;rdx;rflags
	andl      %edi, %eax                               ##  DEAD:r13;rdx;rflags
	leaq      (%rsi,%rax,4), %rax                      ##  DEAD:r13;rdx;rflags
	movzbl    1(%rax), %r13d                           ##  DEAD:r13;rdx;rflags
	movzwl    2(%rax), %edx                            ##  DEAD:rdx;rflags
	movzbl    %r13b, %eax                              ##  DEAD:rax;rflags
	cmpl      %ecx, %eax                               ##  DEAD:rflags
	ja        .L230                                    ##  DEAD:
	movl      %ecx, %esi                               ##  DEAD:rflags;rsi
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	movl      %esi, %r13d                              ##  DEAD:r13;rflags
.L249:
	cmpw      $15, %dx                                 ##  DEAD:rflags
	ja        .L231                                    ##  DEAD:
	subl      %eax, %r13d                              ##  DEAD:rflags
	movl      %r9d, %eax                               ##  DEAD:rax;rflags
	addl      $1, %r9d                                 ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	movw      %dx, 144(%r12,%rax,2)                    ##  DEAD:rflags
	movl      %r9d, 132(%r12)                          ##  DEAD:rflags
.L232:
	movl      132(%r12), %r9d                          ##  DEAD:r9;rflags
	jmp       .L228                                    ##  DEAD:rflags
.L112:
	movl      132(%r12), %eax                          ##  DEAD:rax;rcx;rflags
	cmpl      120(%r12), %eax                          ##  DEAD:rcx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx
	jae       .L133                                    ##  DEAD:
.L349:
	cmpl      $2, %ecx                                 ##  DEAD:rflags
	ja        .L223                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L431                                    ##  DEAD:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:rflags;rsi
	addq      $1, %r15                                 ##  DEAD:rflags;rsi
	salq      %cl, %rdx                                ##  DEAD:rsi
	addl      $8, %ecx                                 ##  DEAD:rflags;rsi
	addq      %rdx, %rbp                               ##  DEAD:rflags;rsi
.L223:
	movl      %eax, %edx                               ##  DEAD:rdx;rflags;rsi
	movl      %ebp, %esi                               ##  DEAD:rflags;rsi
	addl      $1, %eax                                 ##  DEAD:rflags
	andl      $7, %esi                                 ##  DEAD:rflags
	movzwl    order.4297(%rdx,%rdx), %edx              ##  DEAD:
	shrq      $3, %rbp                                 ##  DEAD:
	subl      $3, %ecx                                 ##  DEAD:rflags
	cmpl      %eax, 120(%r12)                          ##  DEAD:rflags
	movl      %eax, 132(%r12)                          ##  DEAD:
	movw      %si, 144(%r12,%rdx,2)                    ##  DEAD:
	ja        .L349                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rflags
.L133:
	cmpl      $18, %eax                                ##  DEAD:rflags
	ja        .L225                                    ##  DEAD:
.L343:
	movl      %eax, %edx                               ##  DEAD:rdx;rflags
	addl      $1, %eax                                 ##  DEAD:rflags
	movzwl    order.4297(%rdx,%rdx), %edx              ##  DEAD:rflags
	cmpl      $19, %eax                                ##  DEAD:rflags
	movw      $0, 144(%r12,%rdx,2)                     ##  DEAD:
	jne       .L343                                    ##  DEAD:
	movl      $19, 132(%r12)                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
.L225:
	movq      64(%rsp), %rsi                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
	movq      104(%rsp), %r8                           ##  DEAD:r8;r9;rcx;rdi;rdx
	xorl      %edi, %edi                               ##  DEAD:r9;rcx;rdi;rdx
	movq      80(%rsp), %r9                            ##  DEAD:r9;rcx;rdx
	movq      72(%rsp), %rcx                           ##  DEAD:rcx;rdx
	movl      $19, %edx                                ##  DEAD:rdx
	movl      $7, 112(%r12)                            ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	movq      %rsi, 136(%r12)                          ##  DEAD:
	movq      %rsi, 96(%r12)                           ##  DEAD:
	movq      96(%rsp), %rsi                           ##  DEAD:rsi
	call      inflate_table                            ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:r10;r8;rflags
	movl      %eax, %r8d                               ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L457                                    ##  DEAD:
	movl      $0, 132(%r12)                            ##  DEAD:r11;r9;rdi
	movl      $18, (%r12)                              ##  DEAD:r11;r9;rdi
	xorl      %r9d, %r9d                               ##  DEAD:r11;r9;rdi
	jmp       .L131                                    ##  DEAD:r11;rdi;rflags
.L123:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      $1, %r14d                                ##  DEAD:r14;r9;rax;rflags
	jmp       .L127                                    ##  DEAD:r9;rax;rflags
.L120:
	movl      44(%rsp), %ecx                           ##  DEAD:rcx;rflags
	testl     %ecx, %ecx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movq      48(%rsp), %r11                           ##  DEAD:r11;rax;rflags
	movl      84(%r12), %eax                           ##  DEAD:rax;rflags
	movb      %al, (%r11)                              ##  DEAD:rflags
	subl      $1, 44(%rsp)                             ##  DEAD:rax;rflags
	addq      $1, %r11                                 ##  DEAD:rax;rflags
	movq      %r11, 48(%rsp)                           ##  DEAD:rax;rflags
.L435:
	movl      $20, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L340:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L103:
	testb     $2, %ah                                  ##  DEAD:rflags
	je        .L198                                    ##  DEAD:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L199                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	.p2align 4,,5
	jmp       .L357                                    ##  DEAD:rdx;rflags
	.p2align 4,,10
	.p2align 3
.L201:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L357:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L201                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rdx;rflags
.L199:
	movzwl    24(%r12), %edx                           ##  DEAD:rdx;rflags
	cmpq      %rbp, %rdx                               ##  DEAD:rflags
	je        .L202                                    ##  DEAD:
	movq      $.LC4, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L339:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L102:
	testb     $16, %ah                                 ##  DEAD:rflags
	je        .L192                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	xorl      %ecx, %ecx                               ##  DEAD:r9;rax;rcx;rdx
	.p2align 4,,10
	.p2align 3
.L194:
	movl      %ecx, %eax                               ##  DEAD:r9;rax;rdx;rflags
	addl      $1, %ecx                                 ##  DEAD:r9;rdx;rflags
	movzbl    (%r15,%rax), %edx                        ##  DEAD:r9;rdx;rflags
	movq      40(%r12), %rax                           ##  DEAD:r9;rax;rflags
	testq     %rax, %rax                               ##  DEAD:r9;rflags
	movzbl    %dl, %r9d                                ##  DEAD:r9
	je        .L193                                    ##  DEAD:
	movq      56(%rax), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L193                                    ##  DEAD:
	movl      84(%r12), %esi                           ##  DEAD:rflags;rsi
	cmpl      64(%rax), %esi                           ##  DEAD:rflags
	jae       .L193                                    ##  DEAD:
	movl      %esi, %eax                               ##  DEAD:rax;rflags
	addl      $1, %esi                                 ##  DEAD:rflags
	movb      %dl, (%rdi,%rax)                         ##  DEAD:rflags
	movl      %esi, 84(%r12)                           ##  DEAD:rflags
.L193:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L332                                    ##  DEAD:
	cmpl      %ebx, %ecx                               ##  DEAD:rflags
	jb        .L194                                    ##  DEAD:
.L332:
	testb     $2, 17(%r12)                             ##  DEAD:rflags
	jne       .L458                                    ##  DEAD:
.L196:
	subl      %ecx, %ebx                               ##  DEAD:rflags
	movl      %ecx, %ecx                               ##  DEAD:rflags
	addq      %rcx, %r15                               ##  DEAD:rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L436                                    ##  DEAD:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L197:
	movl      $8, (%r12)                               ##  DEAD:rflags
	jmp       .L103                                    ##  DEAD:rflags
.L337:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L100:
	testb     $4, %ah                                  ##  DEAD:rflags
	je        .L178                                    ##  DEAD:
	movl      84(%r12), %edx                           ##  DEAD:rcx;rdx;rflags
	cmpl      %edx, %ebx                               ##  DEAD:rcx;rflags
	movl      %edx, %ecx                               ##  DEAD:rcx
	cmovbe    %ebx, %ecx                               ##  DEAD:
	testl     %ecx, %ecx                               ##  DEAD:rflags
	je        .L179                                    ##  DEAD:
	movq      40(%r12), %rsi                           ##  DEAD:rdi;rflags;rsi
	movl      %ecx, %edi                               ##  DEAD:rdi;rflags
	movq      %rdi, 120(%rsp)                          ##  DEAD:rflags
	testq     %rsi, %rsi                               ##  DEAD:rflags
	je        .L181                                    ##  DEAD:
	movq      24(%rsi), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L181                                    ##  DEAD:
	movl      32(%rsi), %eax                           ##  DEAD:r11;r9;rax;rflags
	movl      36(%rsi), %esi                           ##  DEAD:r11;r9;rflags
	movl      %ecx, 24(%rsp)                           ##  DEAD:r11;r9;rflags
	movl      %r8d, 16(%rsp)                           ##  DEAD:r11;r9;rflags
	movl      %r10d, 8(%rsp)                           ##  DEAD:r11;r9;rflags
	subl      %edx, %eax                               ##  DEAD:r11;r9;rflags
	movl      %esi, %r9d                               ##  DEAD:r11;r9;rdx;rflags
	movl      %ecx, %edx                               ##  DEAD:r11;rdx;rflags
	leal      (%rcx,%rax), %r11d                       ##  DEAD:r11;rflags
	subl      %eax, %r9d                               ##  DEAD:rflags
	movl      %eax, %eax                               ##  DEAD:rflags
	cmpl      %esi, %r11d                              ##  DEAD:rflags
	movq      %r15, %rsi                               ##  DEAD:rsi
	cmova     %r9, %rdx                                ##  DEAD:
	addq      %rax, %rdi                               ##  DEAD:rflags
	call      memcpy                                   ##  DEAD:
	movl      16(%r12), %eax                           ##  DEAD:r10;r8;rax;rcx;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rcx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rflags
.L181:
	testb     $2, %ah                                  ##  DEAD:rflags
	jne       .L459                                    ##  DEAD:
.L185:
	movl      84(%r12), %edx                           ##  DEAD:rdx;rflags
	addq      120(%rsp), %r15                          ##  DEAD:rflags
	subl      %ecx, %ebx                               ##  DEAD:rflags
	subl      %ecx, %edx                               ##  DEAD:rflags
	movl      %edx, 84(%r12)                           ##  DEAD:rflags
.L179:
	testl     %edx, %edx                               ##  DEAD:rflags
	jne       .L436                                    ##  DEAD:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L178:
	movl      $0, 84(%r12)                             ##  DEAD:rflags
	movl      $6, (%r12)                               ##  DEAD:rflags
.L101:
	testb     $8, %ah                                  ##  DEAD:rflags
	je        .L186                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	xorl      %ecx, %ecx                               ##  DEAD:r9;rax;rcx;rdx
	.p2align 4,,10
	.p2align 3
.L188:
	movl      %ecx, %eax                               ##  DEAD:r9;rax;rdx;rflags
	addl      $1, %ecx                                 ##  DEAD:r9;rdx;rflags
	movzbl    (%r15,%rax), %edx                        ##  DEAD:r9;rdx;rflags
	movq      40(%r12), %rax                           ##  DEAD:r9;rax;rflags
	testq     %rax, %rax                               ##  DEAD:r9;rflags
	movzbl    %dl, %r9d                                ##  DEAD:r9
	je        .L187                                    ##  DEAD:
	movq      40(%rax), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L187                                    ##  DEAD:
	movl      84(%r12), %esi                           ##  DEAD:rflags;rsi
	cmpl      48(%rax), %esi                           ##  DEAD:rflags
	jae       .L187                                    ##  DEAD:
	movl      %esi, %eax                               ##  DEAD:rax;rflags
	addl      $1, %esi                                 ##  DEAD:rflags
	movb      %dl, (%rdi,%rax)                         ##  DEAD:rflags
	movl      %esi, 84(%r12)                           ##  DEAD:rflags
.L187:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L331                                    ##  DEAD:
	cmpl      %ebx, %ecx                               ##  DEAD:rflags
	jb        .L188                                    ##  DEAD:
.L331:
	testb     $2, 17(%r12)                             ##  DEAD:rflags
	jne       .L460                                    ##  DEAD:
.L190:
	subl      %ecx, %ebx                               ##  DEAD:rflags
	movl      %ecx, %ecx                               ##  DEAD:rflags
	addq      %rcx, %r15                               ##  DEAD:rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L436                                    ##  DEAD:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L191:
	movl      $0, 84(%r12)                             ##  DEAD:rflags
	movl      $7, (%r12)                               ##  DEAD:rflags
	jmp       .L102                                    ##  DEAD:rflags
.L338:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	jmp       .L101                                    ##  DEAD:rflags
.L336:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	jmp       .L99                                     ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L329:
	cmpl      $4, %ebp                                 ##  DEAD:rflags
	.p2align 4,,5
	jne       .L128                                    ##  DEAD:
	.p2align 4,,7
	.p2align 3
	jmp       .L335                                    ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
	.p2align 4,,10
	.p2align 3
.L431:
	movl      %ecx, %r13d                              ##  DEAD:r11;r13;r9;rax;rflags
	.p2align 4,,7
	.p2align 3
	jmp       .L436                                    ##  DEAD:r11;r9;rax;rflags
.L441:
	movl      $12, (%r12)                              ##  DEAD:r10;r11;r13;r14;r15;r8;r9;rdi;rsi
	movq      %rdx, 48(%rsp)                           ##  DEAD:r10;r11;r13;r14;r15;r8;r9;rdi;rsi
	movq      %rcx, %r15                               ##  DEAD:r10;r11;r13;r14;r15;r8;r9;rdi;rdx;rsi
	movb      $12, %al                                 ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rdx;rsi
	jmp       .L93                                     ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rdx;rsi
.L443:
	movl      32(%rbx), %r13d                          ##  DEAD:r13;r8;rdi;rdx;rflags;rsi
	jmp       .L315                                    ##  DEAD:r8;rdi;rdx;rflags;rsi
.L324:
	subl      $-128, %eax                              ##  DEAD:rdx;rflags
	xorl      %edx, %edx                               ##  DEAD:rdx
	jmp       .L327                                    ##  DEAD:rflags
.L320:
	negq      %rsi                                     ##  DEAD:rdi;rflags
	addq      24(%rbx), %rsi                           ##  DEAD:rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi
	call      adler32                                  ##  DEAD:
	jmp       .L321                                    ##  DEAD:rdx;rflags
.L444:
	cmpl      $19, %edx                                ##  DEAD:rflags
	je        .L334                                    ##  DEAD:
	xorl      %edx, %edx                               ##  DEAD:rdx
	.p2align 4,,7
	.p2align 3
	jmp       .L327                                    ##  DEAD:rflags
.L440:
	movl      8(%rdi), %r13d                           ##  DEAD:r13;rflags
	testl     %r13d, %r13d                             ##  DEAD:rflags
	.p2align 4,,3
	jne       .L91                                     ##  DEAD:
	.p2align 4,,5
	jmp       .L92                                     ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L192:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	.p2align 4,,3
	je        .L197                                    ##  DEAD:
	movq      $0, 56(%rdx)                             ##  DEAD:rflags
	.p2align 4,,5
	jmp       .L197                                    ##  DEAD:rflags
.L186:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L191                                    ##  DEAD:
	movq      $0, 40(%rdx)                             ##  DEAD:rflags
	.p2align 4,,3
	jmp       .L191                                    ##  DEAD:rflags
.L285:
	movq      48(%rsp), %rdi                           ##  DEAD:rdi;rdx;rflags;rsi
	movl      84(%r12), %esi                           ##  DEAD:rdx;rflags;rsi
	movl      %eax, %eax                               ##  DEAD:rdx;rflags
	subq      %rax, %rdi                               ##  DEAD:rdx;rflags
	movl      %esi, %edx                               ##  DEAD:rax;rdx;rflags
	movq      %rdi, %rax                               ##  DEAD:rax;rflags
.L290:
	cmpl      44(%rsp), %esi                           ##  DEAD:rflags
	cmova     44(%rsp), %esi                           ##  DEAD:
	subl      %esi, 44(%rsp)                           ##  DEAD:rflags
	subl      %esi, %edx                               ##  DEAD:rflags
	cmpl      $15, %esi                                ##  DEAD:rflags
	movl      %edx, 84(%r12)                           ##  DEAD:
	jbe       .L291                                    ##  DEAD:
	testb     $15, 48(%rsp)                            ##  DEAD:rflags
	jne       .L291                                    ##  DEAD:
	leaq      16(%rax), %rdx                           ##  DEAD:rdx;rflags
	cmpq      48(%rsp), %rdx                           ##  DEAD:rflags
	jae       .L461                                    ##  DEAD:
.L333:
	movl      %esi, %r9d                               ##  DEAD:r9;rdi
	shrl      $4, %r9d                                 ##  DEAD:rdi
	movl      %r9d, %edi                               ##  DEAD:rdi
	sall      $4, %edi                                 ##  DEAD:
	testl     %edi, %edi                               ##  DEAD:rflags
	je        .L462                                    ##  DEAD:
	movq      48(%rsp), %r11                           ##  DEAD:r11;rcx;rdx
	xorl      %edx, %edx                               ##  DEAD:rcx;rdx
	xorl      %ecx, %ecx                               ##  DEAD:rcx
	.p2align 4,,10
	.p2align 3
.L295:
	movdqu    (%rdx,%rax), %xmm0                       ##  DEAD:rflags
	addl      $1, %ecx                                 ##  DEAD:rflags
	movdqa    %xmm0, (%r11,%rdx)                       ##  DEAD:rflags
	addq      $16, %rdx                                ##  DEAD:rflags
	cmpl      %ecx, %r9d                               ##  DEAD:rflags
	ja        .L295                                    ##  DEAD:
	movq      48(%rsp), %rdx                           ##  DEAD:r9;rcx;rdx;rflags
	movl      %edi, %ecx                               ##  DEAD:r9;rcx;rflags
	movl      %esi, %r9d                               ##  DEAD:r9;rflags
	subl      %edi, %r9d                               ##  DEAD:rflags
	addq      %rcx, %rax                               ##  DEAD:rflags
	addq      %rcx, %rdx                               ##  DEAD:rflags
	cmpl      %edi, %esi                               ##  DEAD:rflags
	je        .L296                                    ##  DEAD:
.L294:
	leaq      1(%rax), %rcx                            ##  DEAD:rcx;rdi;rflags
	leal      -1(%r9), %edi                            ##  DEAD:rdi;rflags
	leaq      (%rcx,%rdi), %rdi                        ##  DEAD:rflags
	jmp       .L297                                    ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L463:
	addq      $1, %rcx                                 ##  DEAD:rflags
.L297:
	movzbl    (%rax), %eax                             ##  DEAD:rflags
	movb      %al, (%rdx)                              ##  DEAD:rflags
	addq      $1, %rdx                                 ##  DEAD:rax;rflags
	cmpq      %rdi, %rcx                               ##  DEAD:rax;rflags
	movq      %rcx, %rax                               ##  DEAD:rax
	jne       .L463                                    ##  DEAD:
.L296:
	movq      48(%rsp), %r9                            ##  DEAD:r9;rflags
	subl      $1, %esi                                 ##  DEAD:rflags
	leaq      1(%r9,%rsi), %r9                         ##  DEAD:rflags
	movl      84(%r12), %esi                           ##  DEAD:rflags;rsi
	movq      %r9, 48(%rsp)                            ##  DEAD:rflags
	testl     %esi, %esi                               ##  DEAD:rflags
	jne       .L143                                    ##  DEAD:
	jmp       .L435                                    ##  DEAD:rax;rflags
.L286:
	movl      60(%r12), %eax                           ##  DEAD:rax;rflags
	cmpl      %eax, %ecx                               ##  DEAD:rflags
	jbe       .L287                                    ##  DEAD:
	subl      %eax, %ecx                               ##  DEAD:rdx;rflags;rsi
	movl      52(%r12), %eax                           ##  DEAD:rax;rdx;rflags;rsi
	subl      %ecx, %eax                               ##  DEAD:rdx;rflags;rsi
	addq      64(%r12), %rax                           ##  DEAD:rdx;rflags;rsi
.L288:
	movl      84(%r12), %esi                           ##  DEAD:rdx;rflags;rsi
	cmpl      %esi, %ecx                               ##  DEAD:rdx;rflags
	movl      %esi, %edx                               ##  DEAD:rdx
	ja        .L290                                    ##  DEAD:
	movl      %ecx, %esi                               ##  DEAD:rflags;rsi
	jmp       .L290                                    ##  DEAD:rflags
.L202:
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp;rdx
	xorl      %ebp, %ebp                               ##  DEAD:rbp;rdx
.L198:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L203                                    ##  DEAD:
	sarl      $9, %eax                                 ##  DEAD:rdi;rsi
	movl      $1, 72(%rdx)                             ##  DEAD:rdi;rflags;rsi
	andl      $1, %eax                                 ##  DEAD:rdi;rflags;rsi
	movl      %eax, 68(%rdx)                           ##  DEAD:rdi;rsi
.L203:
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:rdi
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      $11, (%r12)                              ##  DEAD:r10;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rflags
	movq      %rax, 96(%r14)                           ##  DEAD:r10;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L171:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L177                                    ##  DEAD:
	movq      $0, 24(%rdx)                             ##  DEAD:rflags
	jmp       .L177                                    ##  DEAD:rflags
.L267:
	cmpl      %edx, %r13d                              ##  DEAD:rflags
	.p2align 4,,3
	jae       .L269                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 4,,5
	jmp       .L368                                    ##  DEAD:rax;rflags
	.p2align 4,,10
	.p2align 3
.L271:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L368:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      %edx, %ecx                               ##  DEAD:rflags
	jb        .L271                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r11;r13;r9;rax;rdi;rsi
.L269:
	movl      %edx, %ecx                               ##  DEAD:r11;r9;rax;rcx;rdi;rsi
	movl      $1, %eax                                 ##  DEAD:r11;r9;rax;rdi;rdx;rsi
	sall      %cl, %eax                                ##  DEAD:r11;r9;rdi;rdx;rsi
	movl      92(%r12), %ecx                           ##  DEAD:r11;r9;rcx;rdi;rdx;rflags;rsi
	addl      %ecx, 7140(%r12)                         ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	subl      $1, %eax                                 ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	andl      %ebp, %eax                               ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	addl      84(%r12), %eax                           ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	shrq      %cl, %rbp                                ##  DEAD:r11;r9;rdi;rdx;rsi
	subl      %ecx, %r13d                              ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	movl      %eax, 84(%r12)                           ##  DEAD:r11;r9;rcx;rdi;rdx;rsi
	jmp       .L268                                    ##  DEAD:r11;r9;rcx;rdi;rdx;rsi
.L275:
	movzbl    %cl, %r11d                               ##  DEAD:r11;rsi
	movl      120(%rsp), %ecx                          ##  DEAD:rcx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	movzwl    %r9w, %r9d                               ##  DEAD:
	movl      %r9d, 132(%rsp)                          ##  DEAD:
	leal      (%r11,%rcx), %ecx                        ##  DEAD:
	sall      %cl, %esi                                ##  DEAD:
	movl      %esi, %ecx                               ##  DEAD:rcx;rflags
	subl      $1, %ecx                                 ##  DEAD:rflags;rsi
	movl      %ecx, 120(%rsp)                          ##  DEAD:rflags;rsi
	andl      %ecx, %edx                               ##  DEAD:rflags;rsi
	movl      %r11d, %ecx                              ##  DEAD:rcx;rsi
	shrl      %cl, %edx                                ##  DEAD:rsi
	addl      %r9d, %edx                               ##  DEAD:rcx;rflags;rsi
	leaq      (%rdi,%rdx,4), %rdx                      ##  DEAD:r9;rcx;rflags;rsi
	movzbl    (%rdx), %esi                             ##  DEAD:r9;rcx;rflags;rsi
	movzwl    2(%rdx), %r9d                            ##  DEAD:r9;rcx;rflags
	movzbl    1(%rdx), %edx                            ##  DEAD:rcx;rflags
	movb      %dl, 136(%rsp)                           ##  DEAD:rcx;rflags
	movzbl    %dl, %edx                                ##  DEAD:rcx;rflags
	leal      (%r11,%rdx), %ecx                        ##  DEAD:rcx;rflags
	cmpl      %ecx, %r13d                              ##  DEAD:rflags
	jae       .L277                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %eax, 140(%rsp)                          ##  DEAD:r9;rcx;rdx;rflags;rsi
	jmp       .L370                                    ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
.L279:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
.L370:
	movzbl    (%r15), %eax                             ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
	movl      %r13d, %ecx                              ##  DEAD:r9;rcx;rdx;rflags;rsi
	addl      $8, %r13d                                ##  DEAD:r9;rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r9;rdx;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r9;rdx;rflags;rsi
	salq      %cl, %rax                                ##  DEAD:r9;rdx;rsi
	movl      %r11d, %ecx                              ##  DEAD:r9;rcx;rdx;rflags;rsi
	addq      %rax, %rbp                               ##  DEAD:r9;rdx;rflags;rsi
	movl      120(%rsp), %eax                          ##  DEAD:r9;rax;rdx;rflags;rsi
	andl      %ebp, %eax                               ##  DEAD:r9;rdx;rflags;rsi
	shrl      %cl, %eax                                ##  DEAD:r9;rdx;rsi
	addl      132(%rsp), %eax                          ##  DEAD:r9;rcx;rdx;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r9;rcx;rdx;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rcx;rdx;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rcx;rdx;rflags
	movzbl    1(%rax), %eax                            ##  DEAD:rcx;rdx;rflags
	movzbl    %al, %edx                                ##  DEAD:rcx;rdx;rflags
	leal      (%r11,%rdx), %ecx                        ##  DEAD:rcx;rflags
	cmpl      %r13d, %ecx                              ##  DEAD:rflags
	ja        .L279                                    ##  DEAD:
	movb      %al, 136(%rsp)                           ##  DEAD:rcx;rdi;rflags
	movl      140(%rsp), %eax                          ##  DEAD:rax;rcx;rdi;rflags
.L277:
	movl      %r11d, %ecx                              ##  DEAD:rcx;rdi;rflags
	subl      %eax, %r13d                              ##  DEAD:rdi;rflags
	addl      7140(%r12), %r11d                        ##  DEAD:rax;rdi;rflags
	movzbl    136(%rsp), %eax                          ##  DEAD:rax;rdi
	movzbl    %sil, %edi                               ##  DEAD:rdi
	shrq      %cl, %rbp                                ##  DEAD:
	movl      %edi, 120(%rsp)                          ##  DEAD:rcx;rflags
	movl      %r11d, 7140(%r12)                        ##  DEAD:rcx;rflags
	movl      %eax, 132(%rsp)                          ##  DEAD:rcx;rflags
	jmp       .L276                                    ##  DEAD:rcx;rflags
.L458:
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      %ecx, %edx                               ##  DEAD:rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rsi
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r9d, 32(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;r9;rcx;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r8;r9;rcx;rflags
	movl      32(%rsp), %r9d                           ##  DEAD:r8;r9;rcx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rflags
	jmp       .L196                                    ##  DEAD:rflags
.L460:
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      %ecx, %edx                               ##  DEAD:rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rsi
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r9d, 32(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;r9;rcx;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r8;r9;rcx;rflags
	movl      32(%rsp), %r9d                           ##  DEAD:r8;r9;rcx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rflags
	jmp       .L190                                    ##  DEAD:rflags
.L258:
	movzbl    %sil, %r11d                              ##  DEAD:r11;rflags
	testb     $-16, %r11b                              ##  DEAD:rflags
	je        .L260                                    ##  DEAD:
	movzbl    %cl, %ecx                                ##  DEAD:rdx;rflags
	movzwl    %r9w, %r9d                               ##  DEAD:rdx;rflags
	subl      %eax, %r13d                              ##  DEAD:rdx;rflags
	shrq      %cl, %rbp                                ##  DEAD:rdx
	movl      %ecx, 7140(%r12)                         ##  DEAD:rdx;rflags
	movl      %r9d, 84(%r12)                           ##  DEAD:rdx;rflags
.L261:
	movzbl    %sil, %edx                               ##  DEAD:rdx;rflags
	testb     $32, %dl                                 ##  DEAD:rflags
	jne       .L464                                    ##  DEAD:
	testb     $64, %dl                                 ##  DEAD:rflags
	jne       .L465                                    ##  DEAD:
	andl      $15, %edx                                ##  DEAD:rflags
	movl      $21, (%r12)                              ##  DEAD:rflags
	movl      %edx, 92(%r12)                           ##  DEAD:rflags
	jmp       .L130                                    ##  DEAD:rflags
.L461:
	movq      48(%rsp), %rdx                           ##  DEAD:rdx;rflags
	addq      $16, %rdx                                ##  DEAD:rflags
	cmpq      %rax, %rdx                               ##  DEAD:rflags
	jb        .L333                                    ##  DEAD:
.L291:
	leaq      1(%rax), %rcx                            ##  DEAD:rcx;rdi;rdx;rflags
	leal      -1(%rsi), %edi                           ##  DEAD:rdi;rdx;rflags
	movq      48(%rsp), %rdx                           ##  DEAD:rdx;rflags
	leaq      (%rcx,%rdi), %rdi                        ##  DEAD:rflags
	jmp       .L298                                    ##  DEAD:rflags
.L466:
	addq      $1, %rcx                                 ##  DEAD:rflags
.L298:
	movzbl    (%rax), %eax                             ##  DEAD:rflags
	movb      %al, (%rdx)                              ##  DEAD:rflags
	addq      $1, %rdx                                 ##  DEAD:rax;rflags
	cmpq      %rdi, %rcx                               ##  DEAD:rax;rflags
	movq      %rcx, %rax                               ##  DEAD:rax
	jne       .L466                                    ##  DEAD:
	jmp       .L296                                    ##  DEAD:r9;rflags
.L287:
	subl      %ecx, %eax                               ##  DEAD:rdx;rflags;rsi
	addq      64(%r12), %rax                           ##  DEAD:rdx;rflags;rsi
	jmp       .L288                                    ##  DEAD:rdx;rflags;rsi
.L231:
	cmpw      $16, %dx                                 ##  DEAD:rflags
	.p2align 4,,5
	je        .L467                                    ##  DEAD:
	cmpw      $17, %dx                                 ##  DEAD:rflags
	.p2align 4,,3
	je        .L239                                    ##  DEAD:
	movzbl    %cl, %edi                                ##  DEAD:rdi;rflags;rsi
	leal      7(%rdi), %esi                            ##  DEAD:rflags;rsi
	cmpl      %esi, %r13d                              ##  DEAD:rflags
	jae       .L240                                    ##  DEAD:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	jmp       .L363                                    ##  DEAD:rdx;rflags
.L245:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	.p2align 4,,5
	je        .L431                                    ##  DEAD:
.L363:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      %esi, %ecx                               ##  DEAD:rflags
	jb        .L245                                    ##  DEAD:
	movl      %ecx, %r13d                              ##  DEAD:r13;rdx;rsi
.L240:
	movl      %edi, %ecx                               ##  DEAD:rcx;rdx;rsi
	movl      $-7, %esi                                ##  DEAD:rdx;rsi
	shrq      %cl, %rbp                                ##  DEAD:rdx
	subl      %eax, %esi                               ##  DEAD:rcx;rdx;rflags
	xorl      %ecx, %ecx                               ##  DEAD:rax;rcx;rdx
	movl      %ebp, %edx                               ##  DEAD:rax;rdx;rflags
	addl      %esi, %r13d                              ##  DEAD:rax;rflags
	shrq      $7, %rbp                                 ##  DEAD:rax
	andl      $127, %edx                               ##  DEAD:rax;rflags
	addl      $11, %edx                                ##  DEAD:rax;rflags
.L238:
	leal      (%rdx,%r9), %eax                         ##  DEAD:rax;rflags
	cmpl      %eax, 120(%rsp)                          ##  DEAD:rflags
	jb        .L432                                    ##  DEAD:
.L247:
	movl      %r9d, %edx                               ##  DEAD:rdx;rflags
	addl      $1, %r9d                                 ##  DEAD:rflags
	cmpl      %r9d, %eax                               ##  DEAD:rflags
	movw      %cx, 144(%r12,%rdx,2)                    ##  DEAD:
	jne       .L247                                    ##  DEAD:
	movl      %eax, 132(%r12)                          ##  DEAD:r9;rflags
	jmp       .L232                                    ##  DEAD:r9;rflags
.L212:
	movq      $.LC5, 48(%r14)                          ##  DEAD:r13;rbp
	movl      $29, (%r12)                              ##  DEAD:r13;rbp
	jmp       .L213                                    ##  DEAD:r13;rbp
.L211:
	movl      $16, (%r12)                              ##  DEAD:r13;rbp
	jmp       .L213                                    ##  DEAD:r13;rbp
.L210:
	cmpl      $6, %r10d                                ##  DEAD:rflags
	movq      $lenfix.4224, 96(%r12)                   ##  DEAD:
	movl      $9, 112(%r12)                            ##  DEAD:
	movq      $distfix.4225, 104(%r12)                 ##  DEAD:
	movl      $5, 116(%r12)                            ##  DEAD:
	movl      $19, (%r12)                              ##  DEAD:
	jne       .L213                                    ##  DEAD:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	subl      $3, %r13d                                ##  DEAD:r9;rax;rbp;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp
	shrq      $3, %r11                                 ##  DEAD:r10;r9;rax
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      %r8d, %r14d                              ##  DEAD:r14;r9;rax;rflags
	jmp       .L127                                    ##  DEAD:r9;rax;rflags
.L147:
	movq      $.LC0, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L453:
	movb      %bpl, 144(%rsp)                          ##  DEAD:rdi;rdx;rsi
	shrq      $8, %rbp                                 ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	movb      %bpl, 145(%rsp)                          ##  DEAD:rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx
	movl      $2, %edx                                 ##  DEAD:rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r13;r8;rax;rbp
	movl      16(%r12), %eax                           ##  DEAD:r13;rax;rbp
	jmp       .L170                                    ##  DEAD:r13;rbp
.L260:
	movzwl    %r9w, %r9d                               ##  DEAD:rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	movl      %r9d, 120(%rsp)                          ##  DEAD:
	movzbl    %cl, %r9d                                ##  DEAD:r9
	leal      (%r9,%r11), %ecx                         ##  DEAD:rcx
	sall      %cl, %esi                                ##  DEAD:r11
	movl      %esi, %ecx                               ##  DEAD:r11;rcx;rflags
	subl      $1, %ecx                                 ##  DEAD:r11;rflags;rsi
	movl      %ecx, 136(%rsp)                          ##  DEAD:r11;rflags;rsi
	andl      %ecx, %edx                               ##  DEAD:r11;rflags;rsi
	movl      %r9d, %ecx                               ##  DEAD:r11;rcx;rsi
	shrl      %cl, %edx                                ##  DEAD:r11;rsi
	addl      120(%rsp), %edx                          ##  DEAD:r11;rflags;rsi
	leaq      (%rdi,%rdx,4), %rdx                      ##  DEAD:r11;rflags;rsi
	movzwl    2(%rdx), %r11d                           ##  DEAD:r11;rflags;rsi
	movzbl    (%rdx), %esi                             ##  DEAD:rflags;rsi
	movw      %r11w, 132(%rsp)                         ##  DEAD:rflags
	movzbl    1(%rdx), %edx                            ##  DEAD:r11;rflags
	movb      %dl, 140(%rsp)                           ##  DEAD:r11;rflags
	movzbl    %dl, %edx                                ##  DEAD:r11;rflags
	leal      (%r9,%rdx), %r11d                        ##  DEAD:r11;rflags
	cmpl      %r11d, %r13d                             ##  DEAD:rflags
	jae       .L262                                    ##  DEAD:
.L264:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movzbl    (%r15), %edx                             ##  DEAD:r11;rcx;rdx;rflags;rsi
	movl      %r13d, %ecx                              ##  DEAD:r11;rcx;rflags;rsi
	addl      $8, %r13d                                ##  DEAD:r11;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r11;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r11;rflags;rsi
	salq      %cl, %rdx                                ##  DEAD:r11;rsi
	movl      %r9d, %ecx                               ##  DEAD:r11;rcx;rflags;rsi
	addq      %rdx, %rbp                               ##  DEAD:r11;rflags;rsi
	movl      136(%rsp), %edx                          ##  DEAD:r11;rdx;rflags;rsi
	andl      %ebp, %edx                               ##  DEAD:r11;rflags;rsi
	shrl      %cl, %edx                                ##  DEAD:r11;rsi
	addl      120(%rsp), %edx                          ##  DEAD:r11;rcx;rflags;rsi
	leaq      (%rdi,%rdx,4), %rdx                      ##  DEAD:r11;rcx;rflags;rsi
	movzwl    2(%rdx), %r11d                           ##  DEAD:r11;rcx;rflags;rsi
	movzbl    (%rdx), %esi                             ##  DEAD:rcx;rflags;rsi
	movw      %r11w, 132(%rsp)                         ##  DEAD:rcx;rflags
	movzbl    1(%rdx), %ecx                            ##  DEAD:r11;rcx;rflags
	movzbl    %cl, %edx                                ##  DEAD:r11;rdx;rflags
	leal      (%r9,%rdx), %r11d                        ##  DEAD:r11;rflags
	cmpl      %r13d, %r11d                             ##  DEAD:rflags
	ja        .L264                                    ##  DEAD:
	movb      %cl, 140(%rsp)                           ##  DEAD:rflags
.L262:
	subl      %eax, %r13d                              ##  DEAD:rcx;rflags
	movzbl    140(%rsp), %eax                          ##  DEAD:rax;rcx
	movl      %r9d, %ecx                               ##  DEAD:rcx
	shrq      %cl, %rbp                                ##  DEAD:
	movl      %edx, %ecx                               ##  DEAD:rcx
	movl      %r11d, 7140(%r12)                        ##  DEAD:
	shrq      %cl, %rbp                                ##  DEAD:
	subl      %eax, %r13d                              ##  DEAD:rflags
	movzwl    132(%rsp), %eax                          ##  DEAD:rax;rflags
	testb     %sil, %sil                               ##  DEAD:rflags
	movl      %eax, 84(%r12)                           ##  DEAD:
	jne       .L261                                    ##  DEAD:
	jmp       .L259                                    ##  DEAD:rax;rflags
.L455:
	movq      %rbp, %rax                               ##  DEAD:rax;rdi;rdx;rsi
	movb      %bpl, 144(%rsp)                          ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	shrq      $8, %rax                                 ##  DEAD:rdi;rdx
	movl      $4, %edx                                 ##  DEAD:rdi;rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:rdi
	movb      %al, 145(%rsp)                           ##  DEAD:rdi
	movq      %rbp, %rax                               ##  DEAD:rax;rdi
	shrq      $24, %rbp                                ##  DEAD:rdi
	shrq      $16, %rax                                ##  DEAD:rdi
	movb      %bpl, 147(%rsp)                          ##  DEAD:rdi
	movl      %r10d, 8(%rsp)                           ##  DEAD:rdi
	movb      %al, 146(%rsp)                           ##  DEAD:rdi
	movq      24(%r12), %rdi                           ##  DEAD:rdi
	call      crc32                                    ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r13;r8;rbp
	jmp       .L164                                    ##  DEAD:r13;rbp
.L206:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	movl      $26, (%r12)                              ##  DEAD:rax;rflags
	andl      $-8, %r13d                               ##  DEAD:rax;rflags
	andl      $7, %ecx                                 ##  DEAD:rax;rflags
	shrq      %cl, %rbp                                ##  DEAD:rax
	jmp       .L143                                    ##  DEAD:rax;rflags
.L239:
	movzbl    %cl, %esi                                ##  DEAD:rdi;rflags;rsi
	leal      3(%rsi), %edi                            ##  DEAD:rdi;rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jae       .L242                                    ##  DEAD:
.L244:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movzbl    (%r15), %edx                             ##  DEAD:rcx;rdx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	addl      $8, %r13d                                ##  DEAD:rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jb        .L244                                    ##  DEAD:
.L242:
	movl      %esi, %ecx                               ##  DEAD:rcx;rdx
	movl      $-3, %esi                                ##  DEAD:rdx;rsi
	shrq      %cl, %rbp                                ##  DEAD:rdx
	subl      %eax, %esi                               ##  DEAD:rcx;rdx;rflags
	xorl      %ecx, %ecx                               ##  DEAD:rax;rcx;rdx
	movl      %ebp, %edx                               ##  DEAD:rax;rdx;rflags
	addl      %esi, %r13d                              ##  DEAD:rax;rflags
	shrq      $3, %rbp                                 ##  DEAD:rax
	andl      $7, %edx                                 ##  DEAD:rax;rflags
	addl      $3, %edx                                 ##  DEAD:rax;rflags
	jmp       .L238                                    ##  DEAD:rax;rflags
.L456:
	testb     $2, %dl                                  ##  DEAD:rflags
	je        .L145                                    ##  DEAD:
	xorl      %edx, %edx                               ##  DEAD:r13;rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:r13;rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:r13;rdi
	movl      %r8d, 16(%rsp)                           ##  DEAD:r13
	movl      %r10d, 8(%rsp)                           ##  DEAD:r13
	xorl      %r13d, %r13d                             ##  DEAD:r13
	call      crc32                                    ##  DEAD:
	movq      %rax, 24(%r12)                           ##  DEAD:rdi;rdx;rsi
	movb      $31, 144(%rsp)                           ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	movb      $-117, 145(%rsp)                         ##  DEAD:rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx
	movl      $2, %edx                                 ##  DEAD:rdx
	xorw      %bp, %bp                                 ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      $1, (%r12)                               ##  DEAD:r10;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rax;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L459:
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      %ecx, %edx                               ##  DEAD:rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rsi
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32                                    ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rcx;rdx;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r8;rcx;rdx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rdx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rdx;rflags
	jmp       .L185                                    ##  DEAD:rdx;rflags
.L176:
	movb      %bpl, 144(%rsp)                          ##  DEAD:r13;rdi;rdx;rsi
	shrq      $8, %rbp                                 ##  DEAD:r13;rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:r13;rdi;rdx;rsi
	movb      %bpl, 145(%rsp)                          ##  DEAD:r13;rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:r13;rbp;rdi;rdx
	movl      $2, %edx                                 ##  DEAD:r13;rbp;rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:r13;rbp
	movl      %r10d, 8(%rsp)                           ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rbp
	call      crc32                                    ##  DEAD:
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	jmp       .L177                                    ##  DEAD:rflags
.L221:
	movq      $.LC7, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L447:
	movq      $.LC14, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L140:
	movl      $12, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L304:
	movq      48(%rsp), %rcx                           ##  DEAD:rcx;rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rflags
	movl      %r8d, 16(%rsp)                           ##  DEAD:rflags
	movl      %r10d, 8(%rsp)                           ##  DEAD:rflags
	subq      %rsi, %rcx                               ##  DEAD:rflags
	movq      %rcx, %rsi                               ##  DEAD:rsi
	call      adler32                                  ##  DEAD:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rflags
	jmp       .L305                                    ##  DEAD:rflags
.L445:
	movq      $.LC6, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L467:
	movzbl    %cl, %esi                                ##  DEAD:rdi;rflags;rsi
	leal      2(%rsi), %edi                            ##  DEAD:rdi;rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jae       .L234                                    ##  DEAD:
.L236:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L436                                    ##  DEAD:
	movzbl    (%r15), %edx                             ##  DEAD:rcx;rdx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	addl      $8, %r13d                                ##  DEAD:rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jb        .L236                                    ##  DEAD:
.L234:
	movl      %esi, %ecx                               ##  DEAD:rcx;rflags
	subl      %eax, %r13d                              ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L432                                    ##  DEAD:
	movl      %ebp, %edx                               ##  DEAD:rax;rcx;rdx
	leal      -1(%r9), %eax                            ##  DEAD:rax;rcx
	shrq      $2, %rbp                                 ##  DEAD:rcx
	andl      $3, %edx                                 ##  DEAD:rcx;rflags
	subl      $2, %r13d                                ##  DEAD:rcx;rflags
	movzwl    144(%r12,%rax,2), %ecx                   ##  DEAD:rcx;rflags
	addl      $3, %edx                                 ##  DEAD:rax;rflags
	jmp       .L238                                    ##  DEAD:rax;rflags
.L464:
	movl      $-1, 7140(%r12)                          ##  DEAD:rax;rflags
.L434:
	movl      $11, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L442:
	movq      48(%rsp), %rax                           ##  DEAD:r10;rax;rdx;rflags
	movl      44(%rsp), %edx                           ##  DEAD:r10;rdx;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;rflags
	movl      %r10d, 8(%r14)                           ##  DEAD:rbx;rflags
	movq      %r15, (%r14)                             ##  DEAD:rbx;rflags
	movq      %rbp, 72(%r12)                           ##  DEAD:r15;rbx;rflags
	movl      %edx, 32(%r14)                           ##  DEAD:r15;rbp;rbx;rflags
	movq      %rax, 24(%r14)                           ##  DEAD:r15;rbp;rbx;rflags
	movl      $2, %r14d                                ##  DEAD:r14;r15;rax;rbp;rbx;rflags
	movl      %r13d, 80(%r12)                          ##  DEAD:r15;rax;rbp;rbx;rflags
	jmp       .L128                                    ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L454:
	movq      $.LC3, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L452:
	movl      44(%rsp), %esi                           ##  DEAD:rax;rflags;rsi
	movq      $.LC16, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	movl      %esi, 56(%rsp)                           ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L432:
	movq      $.LC9, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L457:
	movq      $.LC8, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L429:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
.L309:
	movl      $28, (%r12)                              ##  DEAD:r14;r9;rax;rflags
	movl      $1, %r14d                                ##  DEAD:r14;r9;rax;rflags
	jmp       .L127                                    ##  DEAD:r9;rax;rflags
.L451:
	cmpl      $257, 44(%rsp)                           ##  DEAD:rflags
	jbe       .L254                                    ##  DEAD:
	movq      48(%rsp), %r9                            ##  DEAD:r11;r9;rdi;rsi
	movl      44(%rsp), %r11d                          ##  DEAD:r11;rdi;rsi
	movq      %r14, %rdi                               ##  DEAD:rdi;rsi
	movl      56(%rsp), %esi                           ##  DEAD:rsi
	movl      %ebx, 8(%r14)                            ##  DEAD:
	movq      %r15, (%r14)                             ##  DEAD:
	movq      %rbp, 72(%r12)                           ##  DEAD:
	movl      %r11d, 32(%r14)                          ##  DEAD:
	movq      %r9, 24(%r14)                            ##  DEAD:
	movl      %r13d, 80(%r12)                          ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      inflate_fast                             ##  DEAD:
	cmpl      $11, (%r12)                              ##  DEAD:r10;r13;r15;r8;rax;rbp;rbx;rdx;rflags
	movq      24(%r14), %rax                           ##  DEAD:r10;r13;r15;r8;rax;rbp;rbx;rdx
	movl      32(%r14), %edx                           ##  DEAD:r10;r13;r15;r8;rbp;rbx;rdx
	movq      (%r14), %r15                             ##  DEAD:r10;r13;r15;r8;rbp;rbx
	movl      8(%r14), %ebx                            ##  DEAD:r10;r13;r8;rbp;rbx
	movq      72(%r12), %rbp                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 48(%rsp)                           ##  DEAD:r10;r13;r8
	movl      80(%r12), %r13d                          ##  DEAD:r10;r13;r8
	movl      %edx, 44(%rsp)                           ##  DEAD:r10;r8
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L143                                    ##  DEAD:
	movl      $-1, 7140(%r12)                          ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L462:
	movl      %esi, %r9d                               ##  DEAD:r9;rcx;rdi;rdx;rflags
	movq      48(%rsp), %rdx                           ##  DEAD:rcx;rdi;rdx;rflags
	jmp       .L294                                    ##  DEAD:rcx;rdi;rflags
.L313:
	movl      %r10d, %ebp                              ##  DEAD:r11;r13;r9;rax;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r10;r11;r13;r9;rax
	movl      %ebx, %r10d                              ##  DEAD:r10;r11;r9;rax
	xorl      %r11d, %r11d                             ##  DEAD:r11;r9;rax;rbx
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	jmp       .L309                                    ##  DEAD:r14;r9;rax;rflags
.L149:
	shrq      $4, %rbp                                 ##  DEAD:rax;rcx
	movl      48(%r12), %eax                           ##  DEAD:rax;rcx;rflags
	movl      %ebp, %ecx                               ##  DEAD:rcx;rflags
	andl      $15, %ecx                                ##  DEAD:rflags
	addl      $8, %ecx                                 ##  DEAD:rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L150                                    ##  DEAD:
	movl      %ecx, 48(%r12)                           ##  DEAD:r11;rdi;rdx;rsi
.L151:
	movl      $1, %r11d                                ##  DEAD:r11;rdi;rdx;rsi
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	sall      %cl, %r11d                               ##  DEAD:rdi
	xorl      %edi, %edi                               ##  DEAD:rdi
	andl      $512, %ebp                               ##  DEAD:rflags
	movl      %r11d, 20(%r12)                          ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      adler32                                  ##  DEAD:
	cmpq      $1, %rbp                                 ##  DEAD:r10;r13;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 96(%r14)                           ##  DEAD:r10;r13;r8;rbp
	sbbl      %eax, %eax                               ##  DEAD:r10;r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r13;r8;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r10;r13;rbp
	andl      $2, %eax                                 ##  DEAD:r10;rbp;rflags
	xorl      %ebp, %ebp                               ##  DEAD:r10;rbp
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rflags
	addl      $9, %eax                                 ##  DEAD:rflags
	movl      %eax, (%r12)                             ##  DEAD:rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L465:
	movq      $.LC13, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L150:
	cmpl      %eax, %ecx                               ##  DEAD:rflags
	jbe       .L151                                    ##  DEAD:
	subl      $4, %r13d                                ##  DEAD:rax;rflags
	movq      $.LC2, 48(%r14)                          ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L446:
	movl      %r10d, %ebp                              ##  DEAD:r11;r13;r9;rax;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r10;r11;r13;r9;rax
	movl      %ebx, %r10d                              ##  DEAD:r10;r11;r9;rax
	xorl      %r11d, %r11d                             ##  DEAD:r11;r9;rax;rbx
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      %r8d, %r14d                              ##  DEAD:r14;r9;rax;rflags
	jmp       .L127                                    ##  DEAD:r9;rax;rflags
.L450:
	movq      $.LC12, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L449:
	movq      $.LC11, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
.L448:
	movq      $.LC10, 48(%r14)                         ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L143                                    ##  DEAD:rax;rflags
	.cfi_endproc
	.size	inflate, .-inflate
# ----------------------
	.section       .rodata
	.align 4
.L126:
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.quad	.L98
	.quad	.L336
	.quad	.L337
	.quad	.L338
	.quad	.L339
	.quad	.L340
	.quad	.L104
	.quad	.L105
	.quad	.L106
	.quad	.L107
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.quad	.L112
	.quad	.L113
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L117
	.quad	.L118
	.quad	.L119
	.quad	.L120
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.quad	.L437
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	inflateReset
	.type	inflateReset, @function
inflateReset:
	.cfi_startproc
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L473                                    ##  DEAD:
.L469:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L473:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L469                                    ##  DEAD:
	movl      8(%rax), %edx                            ##  DEAD:rdx;rflags
	movq      $0, 32(%rax)                             ##  DEAD:rflags
	movl      $0, 52(%rax)                             ##  DEAD:rflags
	movl      $0, 56(%rax)                             ##  DEAD:rflags
	movl      $0, 60(%rax)                             ##  DEAD:rflags
	movq      $0, 40(%rdi)                             ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	movq      $0, 16(%rdi)                             ##  DEAD:
	movq      $0, 48(%rdi)                             ##  DEAD:
	je        .L470                                    ##  DEAD:
	andl      $1, %edx                                 ##  DEAD:rflags
	movq      %rdx, 96(%rdi)                           ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L470:
	leaq      1360(%rax), %rdx                         ##  DEAD:rdx
	movl      $0, (%rax)                               ##  DEAD:
	movl      $0, 4(%rax)                              ##  DEAD:
	movl      $0, 12(%rax)                             ##  DEAD:
	movl      $32768, 20(%rax)                         ##  DEAD:
	movq      $0, 40(%rax)                             ##  DEAD:
	movq      $0, 72(%rax)                             ##  DEAD:
	movl      $0, 80(%rax)                             ##  DEAD:
	movq      %rdx, 136(%rax)                          ##  DEAD:
	movq      %rdx, 104(%rax)                          ##  DEAD:
	movq      %rdx, 96(%rax)                           ##  DEAD:
	movl      $1, 7136(%rax)                           ##  DEAD:
	movl      $-1, 7140(%rax)                          ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.cfi_endproc
	.size	inflateReset, .-inflateReset
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateReset2
	.type	inflateReset2, @function
inflateReset2:
	.cfi_startproc
	movq      %rbx, -32(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:rbp;rflags
	subq      $40, %rsp                                ##  DEAD:rbp;rflags
	testq     %rdi, %rdi                               ##  DEAD:rbp;rflags
	movl      %esi, %ebp                               ##  DEAD:rbp
	jne       .L482                                    ##  DEAD:
.L475:
	movl      $-2, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L482:
	movq      56(%rdi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L475                                    ##  DEAD:
	testl     %esi, %esi                               ##  DEAD:rflags
	js        .L483                                    ##  DEAD:
	movl      %esi, %r13d                              ##  DEAD:r13;rax
	movl      %esi, %eax                               ##  DEAD:rax
	sarl      $4, %r13d                                ##  DEAD:
	andl      $15, %eax                                ##  DEAD:rflags
	addl      $1, %r13d                                ##  DEAD:rflags
	cmpl      $47, %esi                                ##  DEAD:rflags
	cmovle    %eax, %ebp                               ##  DEAD:
.L477:
	leal      -8(%rbp), %eax                           ##  DEAD:rax;rflags
	cmpl      $7, %eax                                 ##  DEAD:rflags
	ja        .L484                                    ##  DEAD:
.L481:
	movq      64(%r12), %rsi                           ##  DEAD:rflags;rsi
	testq     %rsi, %rsi                               ##  DEAD:rflags
	je        .L479                                    ##  DEAD:
	cmpl      48(%r12), %ebp                           ##  DEAD:rflags
	je        .L479                                    ##  DEAD:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi
	.p2align 4,,3
	call      *72(%rbx)                                ##  DEAD:
	movq      $0, 64(%r12)                             ##  DEAD:rdi;rflags
.L479:
	movl      %r13d, 8(%r12)                           ##  DEAD:rdi;rflags
	movl      %ebp, 48(%r12)                           ##  DEAD:r13;rdi;rflags
	movq      %rbx, %rdi                               ##  DEAD:r12;r13;rbp;rdi;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbx;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	jmp       inflateReset                             ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L484:
	testl     %ebp, %ebp                               ##  DEAD:rflags
	je        .L481                                    ##  DEAD:
	jmp       .L475                                    ##  DEAD:r12;r13;rax;rbp;rbx;rflags
.L483:
	negl      %ebp                                     ##  DEAD:r13;rax;rflags
	xorl      %r13d, %r13d                             ##  DEAD:r13;rax
	.p2align 4,,5
	jmp       .L477                                    ##  DEAD:rax;rflags
	.cfi_endproc
	.size	inflateReset2, .-inflateReset2
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateInit2_
	.type	inflateInit2_, @function
inflateInit2_:
	.cfi_startproc
	movq      %rbx, -24(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -16(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -8(%rsp)                           ##  DEAD:rbp;rflags
	subq      $40, %rsp                                ##  DEAD:rbp;rflags
	testq     %rdx, %rdx                               ##  DEAD:rbp;rflags
	movl      %esi, %ebp                               ##  DEAD:rbp
	jne       .L493                                    ##  DEAD:
.L486:
	movl      $-6, %eax                                ##  DEAD:r12;rax;rbp;rbx;rflags
.L488:
	movq      16(%rsp), %rbx                           ##  DEAD:r12;rbp;rbx;rflags
	movq      24(%rsp), %rbp                           ##  DEAD:r12;rbp;rflags
	movq      32(%rsp), %r12                           ##  DEAD:r12;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L493:
	cmpl      $112, %ecx                               ##  DEAD:rflags
	jne       .L486                                    ##  DEAD:
	cmpb      $49, (%rdx)                              ##  DEAD:rflags
	jne       .L486                                    ##  DEAD:
	testq     %rdi, %rdi                               ##  DEAD:rax;rflags
	movl      $-2, %eax                                ##  DEAD:rax
	.p2align 4,,3
	je        .L488                                    ##  DEAD:
	movq      64(%rdi), %rax                           ##  DEAD:rax;rflags
	movq      $0, 48(%rdi)                             ##  DEAD:rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L494                                    ##  DEAD:
.L489:
	cmpq      $0, 72(%rbx)                             ##  DEAD:rflags
	je        .L495                                    ##  DEAD:
.L490:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      $7152, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      *%rax                                    ##  DEAD:
	movq      %rax, %r12                               ##  DEAD:r12;rflags
	movl      $-4, %eax                                ##  DEAD:rax;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L488                                    ##  DEAD:
	movq      %r12, 56(%rbx)                           ##  DEAD:rdi;rflags;rsi
	movq      $0, 64(%r12)                             ##  DEAD:rdi;rflags;rsi
	movl      %ebp, %esi                               ##  DEAD:rdi;rflags;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi;rflags
	call      inflateReset2                            ##  DEAD:rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L488                                    ##  DEAD:
	movl      %eax, 8(%rsp)                            ##  DEAD:rdi;rsi
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rsi
	movq      %r12, %rsi                               ##  DEAD:rsi
	call      *72(%rbx)                                ##  DEAD:
	movq      $0, 56(%rbx)                             ##  DEAD:r12;rax;rbp;rflags
	movl      8(%rsp), %eax                            ##  DEAD:r12;rax;rbp;rbx;rflags
	jmp       .L488                                    ##  DEAD:r12;rbp;rbx;rflags
.L494:
	movq      $zcalloc, 64(%rdi)                       ##  DEAD:rax;rflags
	movq      $0, 80(%rdi)                             ##  DEAD:rax;rflags
	movl      $zcalloc, %eax                           ##  DEAD:rax;rflags
	jmp       .L489                                    ##  DEAD:rflags
.L495:
	movq      $zcfree, 72(%rbx)                        ##  DEAD:rax;rdi;rdx;rsi
	movq      64(%rbx), %rax                           ##  DEAD:rax;rdi;rdx;rsi
	jmp       .L490                                    ##  DEAD:rdi;rdx;rsi
	.cfi_endproc
	.size	inflateInit2_, .-inflateInit2_
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateInit_
	.type	inflateInit_, @function
inflateInit_:
	.cfi_startproc
	movq      %rbx, -16(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -8(%rsp)                           ##  DEAD:rbx;rflags
	subq      $40, %rsp                                ##  DEAD:rbx;rflags
	testq     %rsi, %rsi                               ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbx
	jne       .L504                                    ##  DEAD:
.L497:
	movl      $-6, %eax                                ##  DEAD:rax;rbp;rbx;rflags
.L499:
	movq      24(%rsp), %rbx                           ##  DEAD:rbp;rbx;rflags
	movq      32(%rsp), %rbp                           ##  DEAD:rbp;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L504:
	cmpl      $112, %edx                               ##  DEAD:rflags
	jne       .L497                                    ##  DEAD:
	cmpb      $49, (%rsi)                              ##  DEAD:rflags
	jne       .L497                                    ##  DEAD:
	testq     %rdi, %rdi                               ##  DEAD:rax;rflags
	movl      $-2, %eax                                ##  DEAD:rax
	.p2align 4,,3
	je        .L499                                    ##  DEAD:
	movq      64(%rdi), %rax                           ##  DEAD:rax;rflags
	movq      $0, 48(%rdi)                             ##  DEAD:rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L505                                    ##  DEAD:
.L500:
	cmpq      $0, 72(%rbx)                             ##  DEAD:rflags
	je        .L506                                    ##  DEAD:
.L501:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      $7152, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      *%rax                                    ##  DEAD:
	movq      %rax, %rbp                               ##  DEAD:rbp;rflags
	movl      $-4, %eax                                ##  DEAD:rax;rflags
	testq     %rbp, %rbp                               ##  DEAD:rflags
	je        .L499                                    ##  DEAD:
	movq      %rbp, 56(%rbx)                           ##  DEAD:rdi;rflags;rsi
	movq      $0, 64(%rbp)                             ##  DEAD:rdi;rflags;rsi
	movl      $15, %esi                                ##  DEAD:rdi;rflags;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi;rflags
	call      inflateReset2                            ##  DEAD:rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L499                                    ##  DEAD:
	movl      %eax, 8(%rsp)                            ##  DEAD:rdi;rsi
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rsi
	movq      %rbp, %rsi                               ##  DEAD:rsi
	call      *72(%rbx)                                ##  DEAD:
	movq      $0, 56(%rbx)                             ##  DEAD:rax;rbp;rflags
	movl      8(%rsp), %eax                            ##  DEAD:rax;rbp;rbx;rflags
	jmp       .L499                                    ##  DEAD:rbp;rbx;rflags
.L505:
	movq      $zcalloc, 64(%rdi)                       ##  DEAD:rax;rflags
	movq      $0, 80(%rdi)                             ##  DEAD:rax;rflags
	movl      $zcalloc, %eax                           ##  DEAD:rax;rflags
	jmp       .L500                                    ##  DEAD:rflags
.L506:
	movq      $zcfree, 72(%rbx)                        ##  DEAD:rax;rdi;rdx;rsi
	movq      64(%rbx), %rax                           ##  DEAD:rax;rdi;rdx;rsi
	jmp       .L501                                    ##  DEAD:rdi;rdx;rsi
	.cfi_endproc
	.size	inflateInit_, .-inflateInit_
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	inflateSync
	.type	inflateSync, @function
inflateSync:
	.cfi_startproc
	movq      %rbx, -32(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbx;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:rflags
	subq      $56, %rsp                                ##  DEAD:rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L543                                    ##  DEAD:
.L508:
	movl      $-2, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
.L510:
	movq      24(%rsp), %rbx                           ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      32(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      40(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      48(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $56, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L543:
	movq      56(%rdi), %rbp                           ##  DEAD:rbp;rflags
	testq     %rbp, %rbp                               ##  DEAD:rflags
	je        .L508                                    ##  DEAD:
	movl      8(%rdi), %edi                            ##  DEAD:rflags
	testl     %edi, %edi                               ##  DEAD:rflags
	jne       .L509                                    ##  DEAD:
	cmpl      $7, 80(%rbp)                             ##  DEAD:rax;rflags
	movl      $-5, %eax                                ##  DEAD:rax
	jbe       .L510                                    ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L509:
	cmpl      $31, (%rbp)                              ##  DEAD:rflags
	je        .L544                                    ##  DEAD:
	movl      80(%rbp), %edx                           ##  DEAD:rax;rcx;rdx;rflags
	movq      72(%rbp), %rax                           ##  DEAD:rax;rcx;rflags
	movl      $31, (%rbp)                              ##  DEAD:rcx;rflags
	movl      %edx, %ecx                               ##  DEAD:rcx;rflags
	andl      $-8, %edx                                ##  DEAD:rflags
	andl      $7, %ecx                                 ##  DEAD:rflags
	movl      %edx, 80(%rbp)                           ##  DEAD:
	salq      %cl, %rax                                ##  DEAD:
	cmpl      $7, %edx                                 ##  DEAD:rflags
	movq      %rax, 72(%rbp)                           ##  DEAD:
	jbe       .L513                                    ##  DEAD:
	movq      %rsp, %r8                                ##  DEAD:r8;rcx;rdi;rdx
	movq      %rsp, %rdx                               ##  DEAD:rcx;rdi;rdx
	xorl      %edi, %edi                               ##  DEAD:rcx;rdi
.L514:
	movb      %al, (%rdx)                              ##  DEAD:rcx;rflags
	movl      80(%rbp), %ecx                           ##  DEAD:rax;rcx;rflags
	addl      $1, %edi                                 ##  DEAD:rax;rflags
	movq      72(%rbp), %rax                           ##  DEAD:rax;rflags
	addq      $1, %rdx                                 ##  DEAD:rflags
	subl      $8, %ecx                                 ##  DEAD:rflags
	shrq      $8, %rax                                 ##  DEAD:
	cmpl      $7, %ecx                                 ##  DEAD:rflags
	movl      %ecx, 80(%rbp)                           ##  DEAD:
	movq      %rax, 72(%rbp)                           ##  DEAD:
	ja        .L514                                    ##  DEAD:
	testl     %edi, %edi                               ##  DEAD:rflags
	movl      $0, 132(%rbp)                            ##  DEAD:
	je        .L542                                    ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:r9;rax;rcx;rdx;rsi
	xorl      %ecx, %ecx                               ##  DEAD:r9;rcx;rdx;rsi
	movl      $4, %r9d                                 ##  DEAD:r9;rdx;rflags;rsi
	jmp       .L522                                    ##  DEAD:rdx;rflags;rsi
	.p2align 4,,10
	.p2align 3
.L546:
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
.L520:
	addl      $1, %ecx                                 ##  DEAD:rflags
	testb     %sil, %sil                               ##  DEAD:rflags
	je        .L516                                    ##  DEAD:
	cmpl      %ecx, %edi                               ##  DEAD:rflags
	jbe       .L516                                    ##  DEAD:
.L522:
	movl      %ecx, %edx                               ##  DEAD:rdx;rflags;rsi
	cmpl      $2, %eax                                 ##  DEAD:rflags;rsi
	movzbl    (%r8,%rdx), %esi                         ##  DEAD:rsi
	sbbl      %edx, %edx                               ##  DEAD:
	notl      %edx                                     ##  DEAD:rflags
	cmpb      %dl, %sil                                ##  DEAD:rflags
	je        .L545                                    ##  DEAD:
	testb     %sil, %sil                               ##  DEAD:rflags
	jne       .L546                                    ##  DEAD:
	movl      %r9d, %edx                               ##  DEAD:rdx;rflags
	subl      %eax, %edx                               ##  DEAD:rflags
	cmpl      $3, %edx                                 ##  DEAD:rax;rflags
	movl      %edx, %eax                               ##  DEAD:rax
	setbe     %sil                                     ##  DEAD:
	jmp       .L520                                    ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L545:
	addl      $1, %eax                                 ##  DEAD:rflags
	cmpl      $3, %eax                                 ##  DEAD:rflags
	setbe     %sil                                     ##  DEAD:
	jmp       .L520                                    ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L513:
	movl      $0, 132(%rbp)                            ##  DEAD:r8;rax;rdi;rsi
.L542:
	movl      $1, %esi                                 ##  DEAD:r8;rax;rdi;rsi
	xorl      %eax, %eax                               ##  DEAD:r8;rax;rdi
	.p2align 4,,10
	.p2align 3
.L516:
	movl      %eax, 132(%rbp)                          ##  DEAD:r8;rdi;rflags
	movl      8(%rbx), %edi                            ##  DEAD:r8;rdi;rflags
.L512:
	testl     %edi, %edi                               ##  DEAD:r8;rflags
	movq      (%rbx), %r8                              ##  DEAD:r8
	je        .L536                                    ##  DEAD:
	xorl      %edx, %edx                               ##  DEAD:r9;rdx
	testb     %sil, %sil                               ##  DEAD:r9;rflags
	movl      $4, %r9d                                 ##  DEAD:r9
	jne       .L538                                    ##  DEAD:
	jmp       .L536                                    ##  DEAD:r12;rdx
	.p2align 4,,10
	.p2align 3
.L548:
	movl      $1, %ecx                                 ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax
.L530:
	addl      $1, %edx                                 ##  DEAD:rflags
	testb     %cl, %cl                                 ##  DEAD:rflags
	je        .L537                                    ##  DEAD:
	cmpl      %edi, %edx                               ##  DEAD:rflags
	jae       .L537                                    ##  DEAD:
.L538:
	movl      %edx, %ecx                               ##  DEAD:rcx;rflags;rsi
	cmpl      $2, %eax                                 ##  DEAD:rflags;rsi
	movzbl    (%r8,%rcx), %esi                         ##  DEAD:rsi
	sbbl      %ecx, %ecx                               ##  DEAD:
	notl      %ecx                                     ##  DEAD:rflags
	cmpb      %cl, %sil                                ##  DEAD:rflags
	je        .L547                                    ##  DEAD:
	testb     %sil, %sil                               ##  DEAD:rflags
	jne       .L548                                    ##  DEAD:
	movl      %r9d, %ecx                               ##  DEAD:rcx;rflags
	subl      %eax, %ecx                               ##  DEAD:rflags
	cmpl      $3, %ecx                                 ##  DEAD:rax;rflags
	movl      %ecx, %eax                               ##  DEAD:rax
	setbe     %cl                                      ##  DEAD:
	jmp       .L530                                    ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L547:
	addl      $1, %eax                                 ##  DEAD:rflags
	cmpl      $3, %eax                                 ##  DEAD:rflags
	setbe     %cl                                      ##  DEAD:
	jmp       .L530                                    ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L537:
	movl      %edx, %r12d                              ##  DEAD:r12;rflags
.L526:
	movl      %eax, 132(%rbp)                          ##  DEAD:rflags
	subl      %edx, 8(%rbx)                            ##  DEAD:rax;rflags
	movl      $-3, %eax                                ##  DEAD:rax;rflags
	addq      %r12, (%rbx)                             ##  DEAD:rflags
	addq      16(%rbx), %r12                           ##  DEAD:rflags
	cmpl      $4, 132(%rbp)                            ##  DEAD:rflags
	movq      %r12, 16(%rbx)                           ##  DEAD:
	jne       .L510                                    ##  DEAD:
	movq      40(%rbx), %r13                           ##  DEAD:r13;rdi;rflags
	movq      %rbx, %rdi                               ##  DEAD:rdi;rflags
	call      inflateReset                             ##  DEAD:rflags
	movq      %r12, 16(%rbx)                           ##  DEAD:rax
	movl      $11, (%rbp)                              ##  DEAD:r12;rax
	xorl      %eax, %eax                               ##  DEAD:r12;rax;rbp
	movq      %r13, 40(%rbx)                           ##  DEAD:r12;rbp;rflags
	jmp       .L510                                    ##  DEAD:r12;r13;rbp;rbx;rflags
	.p2align 4,,10
	.p2align 3
.L544:
	movl      132(%rbp), %eax                          ##  DEAD:r8;rax;rflags
	cmpl      $3, %eax                                 ##  DEAD:r8;rflags
	setbe     %sil                                     ##  DEAD:r8
	jmp       .L512                                    ##  DEAD:r8;rflags
	.p2align 4,,10
	.p2align 3
.L536:
	xorl      %r12d, %r12d                             ##  DEAD:r12;rdx
	xorl      %edx, %edx                               ##  DEAD:rdx
	jmp       .L526                                    ##  DEAD:rflags
	.cfi_endproc
	.size	inflateSync, .-inflateSync
# ----------------------
	.section       .rodata
	.align 32
	.local	order.4297
	.type	order.4297, @object
order.4297:
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
	.size	order.4297, 38
# ----------------------
	.align 32
	.local	distfix.4225
	.type	distfix.4225, @object
distfix.4225:
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
	.size	distfix.4225, 128
# ----------------------
	.align 32
	.local	lenfix.4224
	.type	lenfix.4224, @object
lenfix.4224:
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
	.size	lenfix.4224, 2048
# ----------------------
	.hidden	zcfree
	.hidden	zcalloc
	.hidden	inflate_fast
	.hidden	inflate_table
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
