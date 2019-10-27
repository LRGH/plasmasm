	.file	"c9.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	P
	.type	P, @function
P:
	.cfi_startproc
	pushq     %rbx
	movsbq    %dil, %rbx
	call      __ctype_b_loc@PLT
	movq      (%rax), %rax
	movzwl    (%rax,%rbx,2), %eax
	popq      %rbx
	andw      $8192, %ax
	movzwl    %ax, %eax
	ret       
	.cfi_endproc
	.size	P, .-P
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	D
	.type	D, @function
D:
	.cfi_startproc
	pushq     %r12
	testq     %rdi, %rdi
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	je        .L10
	movsbl    (%rdi), %edi
	testb     %dil, %dil
	je        .L13
	movq      %rbx, %rbp
	jmp       .L7
	.p2align 4,,10
	.p2align 3
.L9:
	addq      $1, %rbp
	movsbl    (%rbp), %edi
	testb     %dil, %dil
	je        .L20
.L7:
	call      P@PLT
	testl     %eax, %eax
	je        .L9
.L20:
	movq      %rbp, %rdi
	subq      %rbx, %rdi
.L6:
	call      malloc@PLT
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L10
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L15
	movq      %rax, %rbp
	jmp       .L11
	.p2align 4,,10
	.p2align 3
.L12:
	movzbl    (%rbx), %eax
	addq      $1, %rbx
	addq      $1, %rbp
	movb      %al, -1(%rbp)
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L15
.L11:
	call      P@PLT
	testl     %eax, %eax
	je        .L12
.L15:
	popq      %rbx
	popq      %rbp
	movq      %r12, %rax
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L10:
	popq      %rbx
	popq      %rbp
	xorl      %eax, %eax
	popq      %r12
	ret       
.L13:
	xorl      %edi, %edi
	jmp       .L6
	.cfi_endproc
	.size	D, .-D
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	l
	.type	l, @function
l:
	.cfi_startproc
	movq      (%rdi), %rax
	movq      %rax, (%rsi)
	movq      %rsi, (%rdi)
	ret       
	.cfi_endproc
	.size	l, .-l
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	h
	.type	h, @function
h:
	.cfi_startproc
	pushq     %r13
	movsbq    %dl, %rax
	leaq      (%rdi,%rax,8), %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $8, %rsp
	testq     %rsi, %rsi
	je        .L41
	cmpb      $0, (%rsi)
	je        .L41
	.p2align 4,,10
	.p2align 3
.L36:
	movl      $24, %edi
	call      malloc@PLT
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L52
	movq      %rbx, %rdi
	movq      $0, (%rax)
	leaq      8(%r13), %rbp
	call      D@PLT
	movq      %r13, %rdi
	movq      %r12, %rsi
	movq      %rax, 16(%r12)
	call      l@PLT
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	jne       .L46
	jmp       .L34
	.p2align 4,,10
	.p2align 3
.L32:
	addq      $1, %rbx
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L34
.L46:
	call      P@PLT
	testl     %eax, %eax
	je        .L32
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	jne       .L31
	.p2align 4,,3
	jmp       .L30
	.p2align 4,,10
	.p2align 3
.L35:
	addq      $1, %rbx
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L34
.L31:
	call      P@PLT
	testl     %eax, %eax
	jne       .L35
.L34:
	testq     %rbx, %rbx
	.p2align 4,,3
	je        .L41
.L30:
	cmpb      $0, (%rbx)
	.p2align 4,,3
	je        .L41
	movq      %rbp, %r13
	.p2align 4,,2
	jmp       .L36
.L41:
	addq      $8, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L52:
	movl      $1, %edi
	call      exit@PLT
	.cfi_endproc
	.size	h, .-h
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	k
	.type	k, @function
k:
	.cfi_startproc
	movsbl    c.3562(%rip), %edi
	testb     %dil, %dil
	jne       .L55
	movb      $10, c.3562(%rip)
	ret       
	.p2align 4,,10
	.p2align 3
.L55:
	movq      R@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       *%rax
	.cfi_endproc
	.size	k, .-k
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"aH B0 BB B, , `0 b0 @, 0 Hb, B2 H0 b, B bH HB b`, H, @ 2 `, @2 H2 BH Bb b@"
	.align 8
.LC1:
	.string	"AH B0 BB B, , `0 b0 @, 0 Hb, B2 H0 b, B bH HB b`, H, @ 2 `, @2 H2 BH Bb b@"
	.align 8
.LC2:
	.string	"0bHb, HbH `H2 @b, @H @0 B@ b@ bH0 bHB"
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	".HHH"
.LC4:
	.string	"?`H0"
.LC5:
	.string	",b@b,"
.LC6:
	.string	" +"
.LC7:
	.string	"r"
# ----------------------
	.section       .text.startup,"ax",@progbits
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $392, %rsp
	movq      %rsi, 40(%rsp)
	movl      %edi, 24(%rsp)
	movq      %fs:40, %rsi
	movq      %rsi, 376(%rsp)
	xorl      %esi, %esi
	cmpl      $4, %edi
	ja        .L57
	leaq      .L59(%rip), %rax
	movl      %edi, %edx
	movslq    (%rax,%rdx,4), %rdx
	addq      %rdx, %rax
	jmp       *%rax
.L151:
	movl      $1, i.3610(%rip)
.L62:
	movl      $8, %esi
	movl      $384, %edi
	call      calloc@PLT
	testq     %rax, %rax
	movq      %rax, X.3567(%rip)
	je        .L78
	movq      40(%rsp), %rax
	leaq      .LC7(%rip), %rsi
	movq      8(%rax), %rdi
	call      fopen@PLT
	testq     %rax, %rax
	movq      %rax, 32(%rsp)
	je        .L78
	leaq      112(%rsp), %rbx
	leaq      1(%rbx), %rbp
	jmp       .L81
	.p2align 4,,10
	.p2align 3
.L82:
	movzbl    112(%rsp), %eax
	testb     %al, %al
	jne       .L149
.L81:
	movq      32(%rsp), %rdx
	movl      $256, %esi
	movq      %rbx, %rdi
	call      fgets@PLT
	movl      12(%rsp), %esi
	testq     %rax, %rax
	movl      %esi, 28(%rsp)
	jne       .L82
.L83:
	movq      X.3567(%rip), %rdi
	.p2align 4,,10
	.p2align 3
.L87:
	movslq    12(%rsp), %rax
	leaq      (%rdi,%rax,8), %rsi
	movq      (%rsi), %rax
	testq     %rax, %rax
	je        .L84
	xorl      %ecx, %ecx
	jmp       .L85
	.p2align 4,,10
	.p2align 3
.L150:
	movq      %rax, %rcx
	movq      %rdx, %rax
.L85:
	movq      (%rax), %rdx
	movq      %rcx, (%rax)
	testq     %rdx, %rdx
	jne       .L150
.L84:
	movq      %rax, (%rsi)
	movl      12(%rsp), %eax
	addl      $7, %eax
	movzbl    %al, %eax
	cmpl      28(%rsp), %eax
	movl      %eax, 12(%rsp)
	jne       .L87
	movq      32(%rsp), %rdi
	call      fclose@PLT
.L63:
	movq      X.3567(%rip), %rcx
	testq     %rcx, %rcx
	je        .L151
	cmpl      $0, i.3610(%rip)
	je        .L57
	movq      (%rcx), %rbx
	leaq      8(%rcx), %rsi
	movl      $2040, %edx
	movq      %rcx, %rdi
	call      memmove@PLT
	movq      %rbx, 2040(%rax)
.L57:
	movq      40(%rsp), %rsi
	movq      16(%rsi), %rax
	leaq      1(%rax), %rdx
	movq      %rdx, 16(%rsi)
	movsbl    (%rax), %r14d
	testl     %r14d, %r14d
	je        .L104
.L58:
	xorl      %r12d, %r12d
	xorl      %ecx, %ecx
	movl      $-1840700269, %esi
	jmp       .L90
	.p2align 4,,10
	.p2align 3
.L152:
	cmpl      $38, %r12d
	jg        .L93
	movl      %r12d, %eax
	imull     %esi
	movl      %r12d, %eax
	sarl      $31, %eax
	addl      %r12d, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%rdx,8), %eax
	subl      %edx, %eax
	movl      %r12d, %edx
	subl      %eax, %edx
	subl      %edx, %ecx
.L91:
	addl      $1, %r12d
.L90:
	cmpl      $9, %ecx
	jg        .L152
	addl      $1, %ecx
	jmp       .L91
.L93:
	movq      X.3567(%rip), %rax
	movslq    %r14d, %rdx
	addl      $1, %r12d
	movq      (%rax,%rdx,8), %rax
	testq     %rax, %rax
	movq      %rax, 16(%rsp)
	je        .L102
	movq      R@GOTPCREL(%rip), %r13
	movq      16(%rsp), %rax
	.p2align 4,,10
	.p2align 3
.L103:
	movq      16(%rax), %rbp
.L96:
	movsbl    (%rbp), %edx
	cmpl      %edx, %r12d
	jg        .L153
.L101:
	subl      %r12d, %edx
	addq      $1, %rbp
	movl      $6, %ebx
	movl      %edx, %r15d
	.p2align 4,,10
	.p2align 3
.L100:
	testl     %r15d, %r15d
	jne       .L97
	movsbl    (%rbp), %eax
	cmpl      %eax, %r12d
	jg        .L96
.L97:
	movl      %r15d, %eax
	sarl      $1, %r15d
	andl      $1, %eax
	leal      (%rax,%rax), %ecx
	leal      32(%rax,%rcx), %edi
	call      *(%r13)
	subl      $1, %ebx
	jne       .L100
	movsbl    (%rbp), %edx
	cmpl      %edx, %r12d
	jle       .L101
.L153:
	movl      $10, %edi
	call      *(%r13)
	movq      16(%rsp), %rax
	movq      (%rax), %rax
	testq     %rax, %rax
	movq      %rax, 16(%rsp)
	jne       .L103
.L102:
	cmpl      $1, 24(%rsp)
	jle       .L65
	movq      40(%rsp), %rax
	movq      16(%rax), %rax
	cmpb      $0, (%rax)
	je        .L104
	jmp       .L157
	.p2align 4,,10
	.p2align 3
.L106:
	movslq    %r14d, %rax
	salq      $3, %rax
	addq      %rax, X.3567(%rip)
	movl      %r14d, %eax
	andl      $7, %eax
	cmpl      $3, %eax
	jg        .L83
	movq      stdout@GOTPCREL(%rip), %rax
	leal      -1(%r14), %ebx
	subl      $43, %r14d
	movl      %ebx, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
	testb     $7, %bl
	cmovne    %ebx, %r14d
.L104:
	addl      $1, 24(%rsp)
	movl      24(%rsp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	jle       .L106
.L67:
	xorl      %edi, %edi
	call      exit@PLT
.L60:
	leaq      .LC0(%rip), %rax
	movl      $8, %esi
	movl      $384, %edi
	movq      $0, 104(%rsp)
	leaq      48(%rsp), %rbx
	movq      %rax, 48(%rsp)
	leaq      .LC1(%rip), %rax
	movq      %rax, 56(%rsp)
	leaq      .LC2(%rip), %rax
	movq      %rax, 64(%rsp)
	leaq      .LC3(%rip), %rax
	movq      %rax, 72(%rsp)
	leaq      .LC4(%rip), %rax
	movq      %rax, 80(%rsp)
	leaq      .LC5(%rip), %rax
	movq      %rax, 88(%rsp)
	leaq      .LC6(%rip), %rax
	movq      %rax, 96(%rsp)
	call      calloc@PLT
	testq     %rax, %rax
	movq      %rax, X.3567(%rip)
	je        .L78
	.p2align 4,,10
	.p2align 3
.L133:
	movq      (%rbx), %rax
	movq      X.3567(%rip), %rdi
	addq      $8, %rbx
	movsbl    (%rax), %edx
	leaq      1(%rax), %rsi
	call      h@PLT
	cmpq      $0, (%rbx)
	jne       .L133
.L65:
	movq      stdin@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _IO_getc@PLT
	testl     %eax, %eax
	movl      %eax, %r14d
	js        .L67
	xorl      %eax, %eax
	call      k@PLT
	jmp       .L58
.L61:
	leaq      112(%rsp), %rbx
	movl      $34, %ecx
	xorl      %eax, %eax
	xorl      %r13d, %r13d
	movq      %rbx, %rdi
	movq      %rbx, %r12
	rep stosb     
	.p2align 4,,10
	.p2align 3
.L68:
	cmpl      $200, %r13d
	je        .L108
.L155:
	movq      stdin@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _IO_getc@PLT
	cmpl      $10, %eax
	movl      %eax, %ebp
	je        .L71
	cmpl      $32, %eax
	je        .L72
	cmpl      $-1, %eax
	je        .L71
	movl      $715827883, %eax
	movl      %r13d, %ecx
	imull     %r13d
	movl      %r13d, %eax
	sarl      $31, %eax
	subl      %eax, %edx
	leal      (%rdx,%rdx,2), %eax
	addl      %eax, %eax
	subl      %eax, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	orb       %al, (%r12)
.L72:
	addl      $1, %r13d
	movl      $715827883, %eax
	imull     %r13d
	movl      %r13d, %eax
	sarl      $31, %eax
	subl      %eax, %edx
	leal      (%rdx,%rdx,2), %eax
	addl      %eax, %eax
	cmpl      %eax, %r13d
	jne       .L68
	addq      $1, %r12
.L156:
	cmpl      $200, %r13d
	jne       .L155
.L108:
	movl      $10, %ebp
	movl      $199, %r12d
.L69:
	movq      40(%rsp), %rax
	movq      R@GOTPCREL(%rip), %r13
	xorl      %r14d, %r14d
	movq      %rbx, %r15
	movq      8(%rax), %rax
	movsbl    (%rax), %edi
	call      *(%r13)
	.p2align 4,,10
	.p2align 3
.L74:
	movsbl    (%r15), %edi
	addl      $6, %r14d
	addq      $1, %r15
	addl      $43, %edi
	call      *(%r13)
	cmpl      %r14d, %r12d
	movb      $0, -1(%r15)
	jge       .L74
	movl      $10, %edi
	call      *(%r13)
.L73:
	cmpl      $-1, %ebp
	je        .L67
	leaq      111(%rsp), %r12
	xorl      %r13d, %r13d
	addq      $1, %r12
	jmp       .L156
.L78:
	movl      $1, %edi
	call      exit@PLT
.L149:
	movq      X.3567(%rip), %rdi
	movsbl    %al, %edx
	movq      %rbp, %rsi
	call      h@PLT
	jmp       .L81
.L157:
	movq      R@GOTPCREL(%rip), %r13
	movl      $10, %edi
	call      *(%r13)
	movq      40(%rsp), %rsi
	movl      $4, %edi
	call      main@PLT
	jmp       .L104
.L71:
	testl     %r13d, %r13d
	leal      -1(%r13), %r12d
	je        .L73
	.p2align 4,,4
	jmp       .L69
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .rodata
	.align 4
.L59:
	.long	.L58-.L59
	.long	.L60-.L59
	.long	.L61-.L59
	.long	.L62-.L59
	.long	.L63-.L59
# ----------------------
	.local	i.3610
	.comm	i.3610,4,16
# ----------------------
	.local	X.3567
	.comm	X.3567,8,16
# ----------------------
	.local	c.3562
	.comm	c.3562,1,16
# ----------------------
	.section       .data.rel,"aw",@progbits
	.align 16
	.globl	R
	.type	R, @object
R:
	.quad	putchar
	.size	R, 8
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
