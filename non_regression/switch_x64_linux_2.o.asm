	.file	"j9.c"
	.section       .data.rel,"wa",@progbits
	.globl	P
	.type	P, @object
P:
	.quad	T+32
	.size	P, 8
# ----------------------
	.bss
	.globl	s
	.type	s, @object
s:
	.zero	4
	.size	s, 4
# ----------------------
	.globl	f
	.type	f, @object
f:
	.zero	1
	.size	f, 1
# ----------------------
	.globl	k
	.type	k, @object
k:
	.zero	1
	.size	k, 1
# ----------------------
	.section       .data.rel.local,"wa",@progbits
	.globl	T
	.type	T, @object
T:
	.quad	.LC00000049.str1.1
	.quad	.LC00000049.str1.1
	.quad	.LC0000004D.str1.1
	.quad	.LC00000053.str1.1
	.quad	.LC00000058.str1.1
	.size	T, 40
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC0:
	.string	"\233;%uH\233L%c\233;%uH%c\233;%uH%s\23322;%uH@\23323;%uH \n"
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\033[10;%u]"
.LC2:
	.string	"\033[0q\033cScore: %u\n"
.LC3:
	.string	"stty echo -cbreak"
.LC4:
	.string	"TERM"
.LC5:
	.string	"stty -echo cbreak"
.LC6:
	.string	"\033[%uq"
.LC00000049.str1.1:
	.string	"  |"
.LC0000004D.str1.1:
	.string	"%\\|/%"
.LC00000053.str1.1:
	.string	" %%%"
.LC00000058.str1.1:
	.byte	0
# ----------------------
	.data
	.globl	g
	.type	g, @object
g:
	.byte	255
	.size	g, 1
# ----------------------
	.globl	o
	.type	o, @object
o:
	.byte	40
	.size	o, 1
# ----------------------
	.globl	p
	.type	p, @object
p:
	.byte	40
	.size	p, 1
# ----------------------
.LD00000003:
	.zero	13
# ----------------------
	.globl	d
	.type	d, @object
d:
	.byte	1
	.size	d, 1
# ----------------------
.LD00000011:
	.zero	15
# ----------------------
	.globl	l
	.type	l, @object
l:
	.long	66306
	.size	l, 4
# ----------------------
	.globl	r
	.type	r, @object
r:
	.ascii	"\\|/"
	.size	r, 3
# ----------------------
.LD00000027:
	.zero	9
# ----------------------
	.globl	w
	.type	w, @object
w:
	.ascii	"\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\000"
	.size	w, 23
# ----------------------
.LD00000047:
	.zero	9
# ----------------------
	.globl	x
	.type	x, @object
x:
	.string	"(((((((((((((((((((((("
	.size	x, 23
# ----------------------
	.section       .rodata
	.align 4
.LC00000000:
	.long	.L000001A0.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L00000190.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000001A0.startup-.LC00000000
	.long	.L00000180.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L00000158.startup-.LC00000000
	.long	.L00000130.startup-.LC00000000
	.long	.L00000110.startup-.LC00000000
	.long	.L000000E8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L00000190.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L00000180.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L00000190.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L00000180.startup-.LC00000000
	.long	.L000001A0.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000B8.startup-.LC00000000
	.long	.L000000D8.startup-.LC00000000
# ----------------------
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movl      %edi, %ebx
	subq      $8, %rsp
	movq      e@GOTPCREL(%rip), %rdi
	call      atexit@PLT
.L0000001B.startup:
	cmpl      $1, %ebx
	jle       .L00000029.startup
.L00000020.startup:
	movq      8(%rbp), %rax
	cmpb      $113, (%rax)
	je        .L00000058.startup
.L00000029.startup:
	leaq      .LC4(%rip), %rdi
	call      getenv@PLT
.L00000035.startup:
	movl      (%rax), %edx
	movl      $1, %eax
	cmpl      $1970170220, %edx
	je        .L0000004F.startup
.L00000044.startup:
	xorl      %eax, %eax
	cmpl      $1818848885, %edx
	sete      %al
.L0000004F.startup:
	movq      f@GOTPCREL(%rip), %rdx
	movb      %al, (%rdx)
.L00000058.startup:
	call      getpid@PLT
.L0000005D.startup:
	movl      %eax, %edi
	leaq      .LC00000000(%rip), %rbx
	call      srand@PLT
.L0000006B.startup:
	leaq      .LC5(%rip), %rdi
	call      system@PLT
.L00000077.startup:
	movq      l@GOTPCREL(%rip), %r12
	movq      G@GOTPCREL(%rip), %r13
	leaq      .LC6(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movsbl    (%r12), %edx
	movb      $0, (%r13)
	call      __printf_chk@PLT
.L000000A2.startup:
	movl      $14, %edi
	call      u@PLT
.L000000AC.startup:
	movq      stdin@GOTPCREL(%rip), %rbp
	.p2align 3
.L000000B8.startup:
	movq      (%rbp), %rdi
	call      _IO_getc@PLT
.L000000C1.startup:
	subl      $32, %eax
	cmpl      $81, %eax
	ja        .L000000B8.startup
.L000000C9.startup:
	movslq    (%rbx,%rax,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
.L000000D2.startup:
	.p2align 3
.L000000D8.startup:
	addq      $8, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L000000E5.startup:
	.p2align 3
.L000000E8.startup:
	movsbl    3(%r12), %edx
	leaq      .LC6(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $24, (%r13)
	call      __printf_chk@PLT
.L00000106.startup:
	jmp       .L000000B8.startup
.L00000108.startup:
	.p2align 4
.L00000110.startup:
	movsbl    2(%r12), %edx
	leaq      .LC6(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $16, (%r13)
	call      __printf_chk@PLT
.L0000012E.startup:
	jmp       .L000000B8.startup
.L00000130.startup:
	movsbl    1(%r12), %edx
	leaq      .LC6(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $8, (%r13)
	call      __printf_chk@PLT
.L0000014E.startup:
	jmp       .L000000B8.startup
.L00000153.startup:
	.p2align 3
.L00000158.startup:
	movsbl    (%r12), %edx
	leaq      .LC6(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $0, (%r13)
	call      __printf_chk@PLT
.L00000175.startup:
	jmp       .L000000B8.startup
.L0000017A.startup:
	.p2align 3
.L00000180.startup:
	movq      k@GOTPCREL(%rip), %rax
	movb      $1, (%rax)
	jmp       .L000000B8.startup
.L0000018F.startup:
	.p2align 3
.L00000190.startup:
	movq      k@GOTPCREL(%rip), %rax
	movb      $-1, (%rax)
	jmp       .L000000B8.startup
.L0000019F.startup:
	.p2align 3
.L000001A0.startup:
	movq      k@GOTPCREL(%rip), %rax
	movb      $0, (%rax)
	jmp       .L000000B8.startup
	.size	main, .-main
# ----------------------
	.text
	.globl	u
	.type	u, @function
u:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $88, %rsp
	movq      o@GOTPCREL(%rip), %rax
	movq      p@GOTPCREL(%rip), %r13
	movq      d@GOTPCREL(%rip), %rdx
	movq      x@GOTPCREL(%rip), %rbp
	movq      w@GOTPCREL(%rip), %rbx
	movq      r@GOTPCREL(%rip), %rcx
	movsbl    (%rax), %r8d
	movq      k@GOTPCREL(%rip), %rax
	movsbq    (%rdx), %rdx
	movq      P@GOTPCREL(%rip), %r15
	movsbl    (%rbx), %esi
	movl      %edi, 44(%rsp)
	movzbl    (%rax), %eax
	movsbl    (%rbp), %edi
	addb      (%r13), %al
	movq      X@GOTPCREL(%rip), %r12
	movsbl    (%rcx,%rdx), %ecx
	movl      %edi, %edx
	movb      %al, (%r13)
	movsbl    %al, %eax
	movl      %r8d, 24(%rsp)
	movl      %eax, 16(%rsp)
	movq      (%r15), %rax
	subl      %esi, %edx
	leal      (%rdi,%rsi), %r8d
	leaq      .LC0(%rip), %rsi
	movl      %ecx, %r9d
	movl      $1, %edi
	movq      (%rax), %rax
	movq      %rax, 8(%rsp)
	movsbl    (%r12), %eax
	movl      %eax, (%rsp)
	xorl      %eax, %eax
	call      __printf_chk@PLT
.L000000AC:
	movsbl    21(%rbp), %edx
	movsbl    (%r13), %eax
	subl      %edx, %eax
	cltd      
	xorl      %edx, %eax
	subl      %edx, %eax
	movsbl    21(%rbx), %edx
	cmpl      %edx, %eax
	jge       .L00000395
.L000000C8:
	movq      g@GOTPCREL(%rip), %r14
	movq      G@GOTPCREL(%rip), %rdx
	movzbl    (%r14), %eax
	cmpb      (%rdx), %al
	je        .L0000036A
.L000000E2:
	setl      %dl
	leaq      48(%rsp), %rsi
	xorl      %edi, %edi
	leal      -1(%rax,%rdx,2), %eax
	movq      $0, 48(%rsp)
	movq      $0, 64(%rsp)
	movb      %al, (%r14)
	sarb      $3, %al
	movsbl    %al, %ecx
	movl      $72000, %eax
	addl      $1, %ecx
	cltd      
	idivl     %ecx
	xorl      %edx, %edx
	cltq      
	movq      %rax, 72(%rsp)
	movq      %rax, 56(%rsp)
	call      setitimer@PLT
.L00000129:
	movq      f@GOTPCREL(%rip), %rax
	cmpb      $0, (%rax)
	jne       .L00000350
.L00000139:
	movsbl    21(%rbx), %edx
	movl      $9, %eax
	movq      s@GOTPCREL(%rip), %rcx
	movq      o@GOTPCREL(%rip), %rdi
	movzbl    1(%rbp), %esi
	movq      z@GOTPCREL(%rip), %r8
	subl      %edx, %eax
	movzbl    (%r14), %edx
	sarb      $3, %dl
	movsbl    %dl, %edx
	addl      $1, %edx
	imull     %edx, %eax
	addl      %eax, (%rcx)
	movzbl    (%r13), %eax
	leaq      1(%rbp), %rdx
	testb     %sil, %sil
	movb      %al, (%rdi)
	movzbl    (%rbp), %edi
	movq      a@GOTPCREL(%rip), %rax
	movq      %rdx, (%rax)
	movq      %rbp, %rdx
	movb      %dil, (%r8)
	jne       .L0000019C
.L00000193:
	jmp       .L000001BC
.L00000195:
	.p2align 3
.L00000198:
	movl      %esi, %edi
	movl      %ecx, %esi
.L0000019C:
	movb      %dil, 1(%rdx)
	movq      (%rax), %rdx
	leaq      1(%rdx), %rcx
	movq      %rcx, (%rax)
	movzbl    1(%rdx), %ecx
	testb     %cl, %cl
	jne       .L00000198
.L000001B2:
	movq      y@GOTPCREL(%rip), %rdx
	movb      %sil, (%rdx)
.L000001BC:
	movzbl    1(%rbx), %esi
	movzbl    (%rbx), %edi
	leaq      1(%rbx), %rdx
	movq      %rdx, (%rax)
	movq      %rbx, %rdx
	testb     %sil, %sil
	movb      %dil, (%r8)
	jne       .L000001E4
.L000001D5:
	jmp       .L00000207
.L000001D7:
	.p2align 4
.L000001E0:
	movl      %esi, %edi
	movl      %ecx, %esi
.L000001E4:
	movb      %dil, 1(%rdx)
	movq      (%rax), %rdx
	leaq      1(%rdx), %rcx
	movq      %rcx, (%rax)
	movzbl    1(%rdx), %ecx
	testb     %cl, %cl
	jne       .L000001E0
.L000001FA:
	movq      y@GOTPCREL(%rip), %rax
	movb      %sil, (%r8)
	movb      %sil, (%rax)
.L00000207:
	call      rand@PLT
.L0000020C:
	testb     %al, %al
	jne       .L0000021C
.L00000210:
	movzbl    (%rbx), %edx
	subb      $1, %dl
	jne       .L00000348
.L0000021C:
	movq      (%r15), %rdx
	movq      (%rdx), %rcx
	cmpb      $0, (%rcx)
	je        .L00000288
.L00000227:
	addq      $8, %rdx
	movq      %rdx, (%r15)
.L0000022E:
	call      rand@PLT
.L00000233:
	andl      $31, %eax
	cmpl      $2, %eax
	jle       .L000002FE
.L0000023F:
	movq      d@GOTPCREL(%rip), %rax
	movzbl    (%rax), %eax
	testb     %al, %al
	jne       .L0000030F
.L00000251:
	movzbl    (%rbp), %edx
	leal      -1(%rdx), %eax
	cmpb      (%rbx), %al
	movb      %al, (%rbp)
	jle       .L00000332
.L00000263:
	movl      44(%rsp), %edi
	movq      u@GOTPCREL(%rip), %rsi
	call      signal@PLT
.L00000273:
	addq      $88, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000282:
	.p2align 3
.L00000288:
	testb     $31, %ah
	jne       .L0000022E
.L0000028D:
	movl      $1808407283, %r13d
	.p2align 3
.L00000298:
	call      rand@PLT
.L0000029D:
	movl      %eax, %ecx
	imull     %r13d
	movl      %ecx, %eax
	sarl      $31, %eax
	sarl      $5, %edx
	subl      %eax, %edx
	movl      $76, %eax
	imull     %eax, %edx
	movsbl    (%rbp), %eax
	subl      %edx, %ecx
	movl      %ecx, %esi
	movl      %ecx, %edx
	movb      %cl, (%r12)
	subl      %eax, %esi
	movl      %esi, %eax
	addl      $2, %eax
	movl      %eax, %ecx
	sarl      $31, %ecx
	xorl      %ecx, %eax
	subl      %ecx, %eax
	movsbl    (%rbx), %ecx
	subl      %ecx, %eax
	cmpl      $5, %eax
	jle       .L00000298
.L000002DC:
	movq      T@GOTPCREL(%rip), %rax
	addl      $1, %edx
	movb      %dl, (%r12)
	movq      %rax, (%r15)
	call      rand@PLT
.L000002F2:
	andl      $31, %eax
	cmpl      $2, %eax
	jg        .L0000023F
.L000002FE:
	movq      d@GOTPCREL(%rip), %rdi
	testb     %al, %al
	movb      %al, (%rdi)
	je        .L00000251
.L0000030F:
	cmpb      $2, %al
	jne       .L00000263
.L00000317:
	movzbl    (%rbp), %edx
	movsbl    (%rbx), %ecx
	leal      1(%rdx), %eax
	movb      %al, (%rbp)
	movsbl    %al, %eax
	addl      %ecx, %eax
	cmpl      $79, %eax
	jle       .L00000263
.L00000332:
	movq      d@GOTPCREL(%rip), %rax
	movb      %dl, (%rbp)
	movb      $1, (%rax)
	jmp       .L00000263
.L00000344:
	.p2align 3
.L00000348:
	movb      %dl, (%rbx)
	jmp       .L0000021C
.L0000034F:
	.p2align 3
.L00000350:
	movsbl    (%r14), %edx
	leaq      .LC1(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	addl      $24, %edx
	call      __printf_chk@PLT
.L0000036A:
	movq      f@GOTPCREL(%rip), %rax
	movzbl    (%rax), %eax
	testb     %al, %al
	je        .L00000139
.L0000037C:
	movq      stdout@GOTPCREL(%rip), %rax
	movl      $7, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
.L00000390:
	jmp       .L00000139
.L00000395:
	xorl      %edi, %edi
	call      exit@PLT
	.size	u, .-u
# ----------------------
.L0000039C:
	.p2align 3
# ----------------------
	.globl	e
	.type	e, @function
e:
	subq      $8, %rsp
	movl      $1, %esi
	movl      $14, %edi
	call      signal@PLT
.L000003B3:
	movq      s@GOTPCREL(%rip), %rax
	leaq      .LC2(%rip), %rsi
	movl      $1, %edi
	movl      (%rax), %edx
	xorl      %eax, %eax
	call      __printf_chk@PLT
.L000003CF:
	leaq      .LC3(%rip), %rdi
	addq      $8, %rsp
	jmp       system@PLT
	.size	e, .-e
# ----------------------
	.comm	X,1,1
# ----------------------
	.comm	G,1,1
# ----------------------
	.comm	z,1,1
# ----------------------
	.comm	a,8,8
# ----------------------
	.comm	y,1,1
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
