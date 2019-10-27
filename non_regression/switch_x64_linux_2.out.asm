	.file	"j9.c"
	.text
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
	leaq      e(%rip), %rdi
	call      atexit
.L0040081B:
	cmpl      $1, %ebx
	jle       .L00400829
.L00400820:
	movq      8(%rbp), %rax
	cmpb      $113, (%rax)
	je        .L00400858
.L00400829:
	leaq      .LC00400F8C(%rip), %rdi
	call      getenv
.L00400835:
	movl      (%rax), %edx
	movl      $1, %eax
	cmpl      $1970170220, %edx
	je        .L0040084F
.L00400844:
	xorl      %eax, %eax
	cmpl      $1818848885, %edx
	sete      %al
.L0040084F:
	leaq      f(%rip), %rdx
	movb      %al, (%rdx)
.L00400858:
	call      getpid
.L0040085D:
	movl      %eax, %edi
	leaq      .LC00400FB8(%rip), %rbx
	call      srand
.L0040086B:
	leaq      .LC00400F91(%rip), %rdi
	call      system
.L00400877:
	leaq      l(%rip), %r12
	leaq      G(%rip), %r13
	leaq      .LC00400FA3(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movsbl    (%r12), %edx
	movb      $0, (%r13)
	call      __printf_chk
.L004008A2:
	movl      $14, %edi
	call      u
.L004008AC:
	movq      stdin@GOTPCREL(%rip), %rbp
	.p2align 3
.L004008B8:
	movq      (%rbp), %rdi
	call      _IO_getc
.L004008C1:
	subl      $32, %eax
	cmpl      $81, %eax
	ja        .L004008B8
.L004008C9:
	movslq    (%rbx,%rax,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
.L004008D2:
	.p2align 3
.L004008D8:
	addq      $8, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L004008E5:
	.p2align 3
.L004008E8:
	movsbl    3(%r12), %edx
	leaq      .LC00400FA3(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $24, (%r13)
	call      __printf_chk
.L00400906:
	jmp       .L004008B8
.L00400908:
	.p2align 4
.L00400910:
	movsbl    2(%r12), %edx
	leaq      .LC00400FA3(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $16, (%r13)
	call      __printf_chk
.L0040092E:
	jmp       .L004008B8
.L00400930:
	movsbl    1(%r12), %edx
	leaq      .LC00400FA3(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $8, (%r13)
	call      __printf_chk
.L0040094E:
	jmp       .L004008B8
.L00400953:
	.p2align 3
.L00400958:
	movsbl    (%r12), %edx
	leaq      .LC00400FA3(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	movb      $0, (%r13)
	call      __printf_chk
.L00400975:
	jmp       .L004008B8
.L0040097A:
	.p2align 3
.L00400980:
	leaq      k(%rip), %rax
	movb      $1, (%rax)
	jmp       .L004008B8
.L0040098F:
	.p2align 3
.L00400990:
	leaq      k(%rip), %rax
	movb      $-1, (%rax)
	jmp       .L004008B8
.L0040099F:
	.p2align 3
.L004009A0:
	leaq      k(%rip), %rax
	movb      $0, (%rax)
	jmp       .L004008B8
	.size	main, .-main
# ----------------------
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
	leaq      o(%rip), %rax
	leaq      p(%rip), %r13
	leaq      d(%rip), %rdx
	leaq      x(%rip), %rbp
	leaq      w(%rip), %rbx
	leaq      r(%rip), %rcx
	movsbl    (%rax), %r8d
	leaq      k(%rip), %rax
	movsbq    (%rdx), %rdx
	leaq      P(%rip), %r15
	movsbl    (%rbx), %esi
	movl      %edi, 44(%rsp)
	movzbl    (%rax), %eax
	movsbl    (%rbp), %edi
	addb      (%r13), %al
	leaq      X(%rip), %r12
	movsbl    (%rcx,%rdx), %ecx
	movl      %edi, %edx
	movb      %al, (%r13)
	movsbl    %al, %eax
	movl      %r8d, 24(%rsp)
	movl      %eax, 16(%rsp)
	movq      (%r15), %rax
	subl      %esi, %edx
	leal      (%rdi,%rsi), %r8d
	leaq      .LC00400F30(%rip), %rsi
	movl      %ecx, %r9d
	movl      $1, %edi
	movq      (%rax), %rax
	movq      %rax, 8(%rsp)
	movsbl    (%r12), %eax
	movl      %eax, (%rsp)
	xorl      %eax, %eax
	call      __printf_chk
.L00400B4C:
	movsbl    21(%rbp), %edx
	movsbl    (%r13), %eax
	subl      %edx, %eax
	cltd      
	xorl      %edx, %eax
	subl      %edx, %eax
	movsbl    21(%rbx), %edx
	cmpl      %edx, %eax
	jge       .L00400E35
.L00400B68:
	leaq      g(%rip), %r14
	leaq      G(%rip), %rdx
	movzbl    (%r14), %eax
	cmpb      (%rdx), %al
	je        .L00400E0A
.L00400B82:
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
	call      setitimer
.L00400BC9:
	leaq      f(%rip), %rax
	cmpb      $0, (%rax)
	jne       .L00400DF0
.L00400BD9:
	movsbl    21(%rbx), %edx
	movl      $9, %eax
	leaq      s(%rip), %rcx
	leaq      o(%rip), %rdi
	movzbl    1(%rbp), %esi
	leaq      z(%rip), %r8
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
	leaq      a(%rip), %rax
	movq      %rdx, (%rax)
	movq      %rbp, %rdx
	movb      %dil, (%r8)
	jne       .L00400C3C
.L00400C33:
	jmp       .L00400C5C
.L00400C35:
	.p2align 3
.L00400C38:
	movl      %esi, %edi
	movl      %ecx, %esi
.L00400C3C:
	movb      %dil, 1(%rdx)
	movq      (%rax), %rdx
	leaq      1(%rdx), %rcx
	movq      %rcx, (%rax)
	movzbl    1(%rdx), %ecx
	testb     %cl, %cl
	jne       .L00400C38
.L00400C52:
	leaq      y(%rip), %rdx
	movb      %sil, (%rdx)
.L00400C5C:
	movzbl    1(%rbx), %esi
	movzbl    (%rbx), %edi
	leaq      1(%rbx), %rdx
	movq      %rdx, (%rax)
	movq      %rbx, %rdx
	testb     %sil, %sil
	movb      %dil, (%r8)
	jne       .L00400C84
.L00400C75:
	jmp       .L00400CA7
.L00400C77:
	.p2align 4
.L00400C80:
	movl      %esi, %edi
	movl      %ecx, %esi
.L00400C84:
	movb      %dil, 1(%rdx)
	movq      (%rax), %rdx
	leaq      1(%rdx), %rcx
	movq      %rcx, (%rax)
	movzbl    1(%rdx), %ecx
	testb     %cl, %cl
	jne       .L00400C80
.L00400C9A:
	leaq      y(%rip), %rax
	movb      %sil, (%r8)
	movb      %sil, (%rax)
.L00400CA7:
	call      rand
.L00400CAC:
	testb     %al, %al
	jne       .L00400CBC
.L00400CB0:
	movzbl    (%rbx), %edx
	subb      $1, %dl
	jne       .L00400DE8
.L00400CBC:
	movq      (%r15), %rdx
	movq      (%rdx), %rcx
	cmpb      $0, (%rcx)
	je        .L00400D28
.L00400CC7:
	addq      $8, %rdx
	movq      %rdx, (%r15)
.L00400CCE:
	call      rand
.L00400CD3:
	andl      $31, %eax
	cmpl      $2, %eax
	jle       .L00400D9E
.L00400CDF:
	leaq      d(%rip), %rax
	movzbl    (%rax), %eax
	testb     %al, %al
	jne       .L00400DAF
.L00400CF1:
	movzbl    (%rbp), %edx
	leal      -1(%rdx), %eax
	cmpb      (%rbx), %al
	movb      %al, (%rbp)
	jle       .L00400DD2
.L00400D03:
	movl      44(%rsp), %edi
	leaq      u(%rip), %rsi
	call      signal
.L00400D13:
	addq      $88, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00400D22:
	.p2align 3
.L00400D28:
	testb     $31, %ah
	jne       .L00400CCE
.L00400D2D:
	movl      $1808407283, %r13d
	.p2align 3
.L00400D38:
	call      rand
.L00400D3D:
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
	jle       .L00400D38
.L00400D7C:
	leaq      T(%rip), %rax
	addl      $1, %edx
	movb      %dl, (%r12)
	movq      %rax, (%r15)
	call      rand
.L00400D92:
	andl      $31, %eax
	cmpl      $2, %eax
	jg        .L00400CDF
.L00400D9E:
	leaq      d(%rip), %rdi
	testb     %al, %al
	movb      %al, (%rdi)
	je        .L00400CF1
.L00400DAF:
	cmpb      $2, %al
	jne       .L00400D03
.L00400DB7:
	movzbl    (%rbp), %edx
	movsbl    (%rbx), %ecx
	leal      1(%rdx), %eax
	movb      %al, (%rbp)
	movsbl    %al, %eax
	addl      %ecx, %eax
	cmpl      $79, %eax
	jle       .L00400D03
.L00400DD2:
	leaq      d(%rip), %rax
	movb      %dl, (%rbp)
	movb      $1, (%rax)
	jmp       .L00400D03
.L00400DE4:
	.p2align 3
.L00400DE8:
	movb      %dl, (%rbx)
	jmp       .L00400CBC
.L00400DEF:
	.p2align 3
.L00400DF0:
	movsbl    (%r14), %edx
	leaq      .LC00400F60(%rip), %rsi
	movl      $1, %edi
	xorl      %eax, %eax
	addl      $24, %edx
	call      __printf_chk
.L00400E0A:
	leaq      f(%rip), %rax
	movzbl    (%rax), %eax
	testb     %al, %al
	je        .L00400BD9
.L00400E1C:
	movq      stdout@GOTPCREL(%rip), %rax
	movl      $7, %edi
	movq      (%rax), %rsi
	call      _IO_putc
.L00400E30:
	jmp       .L00400BD9
.L00400E35:
	xorl      %edi, %edi
	call      exit
	.size	u, .-u
# ----------------------
.L00400E3C:
	.p2align 3
# ----------------------
	.globl	e
	.type	e, @function
e:
	subq      $8, %rsp
	movl      $1, %esi
	movl      $14, %edi
	call      signal
.L00400E53:
	leaq      s(%rip), %rax
	leaq      .LC00400F69(%rip), %rsi
	movl      $1, %edi
	movl      (%rax), %edx
	xorl      %eax, %eax
	call      __printf_chk
.L00400E6F:
	leaq      .LC00400F7A(%rip), %rdi
	addq      $8, %rsp
	jmp       system
	.size	e, .-e
# ----------------------
	.section       .rodata
.LC00400F2C:
	.long	0
# ----------------------
	.align 8
.LC00400F30:
# ----------------------
.LC00400F60:
# ----------------------
.LC00400F69:
.LC00400F79:
	.byte	0
# ----------------------
.LC00400F7A:
# ----------------------
.LC00400F8C:
# ----------------------
.LC00400F91:
# ----------------------
.LC00400FA3:
.LC00400FA9:
	.long	8134688
.LC00400FAD:
	.string	"%\\|/%"
.LC00400FB3:
	.string	" %%%"
# ----------------------
.LC00400FB8:
	.long	.L004009A0-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L00400990-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004009A0-.LC00400FB8
	.long	.L00400980-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L00400958-.LC00400FB8
	.long	.L00400930-.LC00400FB8
	.long	.L00400910-.LC00400FB8
	.long	.L004008E8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L00400990-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L00400980-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L00400990-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L00400980-.LC00400FB8
	.long	.L004009A0-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008B8-.LC00400FB8
	.long	.L004008D8-.LC00400FB8
# ----------------------
	.section       .init_array,"wa",@init_array
.LD.init_array.0:
	.string	"p\n@"
# ----------------------
	.section       .fini_array,"wa",@fini_array
.LD.fini_array.0:
	.string	"P\n@"
# ----------------------
	.data
	.align 8
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
.LD006020B3:
	.zero	13
# ----------------------
	.globl	d
	.type	d, @object
d:
	.byte	1
	.size	d, 1
# ----------------------
.LD006020C1:
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
.LD006020D7:
	.zero	9
# ----------------------
	.globl	w
	.type	w, @object
w:
	.ascii	"\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\010\000"
	.size	w, 23
# ----------------------
.LD006020F7:
	.zero	9
# ----------------------
	.globl	x
	.type	x, @object
x:
	.string	"(((((((((((((((((((((("
	.size	x, 23
# ----------------------
.LD00602117:
	.zero	9
# ----------------------
	.globl	P
	.type	P, @object
P:
	.string	"`!`"
	.long	0
	.size	P, 8
# ----------------------
.LD00602128:
	.zero	24
# ----------------------
	.globl	T
	.type	T, @object
T:
	.long	.LC00400FA9
	.long	0
	.long	.LC00400FA9
	.long	0
	.long	.LC00400FAD
	.long	0
	.long	.LC00400FB3
	.long	0
	.long	.LC00400F79
	.long	0
	.size	T, 40
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
	.align 8
	.globl	X
	.type	X, @object
X:
	.zero	1
	.size	X, 1
# ----------------------
	.globl	z
	.type	z, @object
z:
	.zero	1
	.size	z, 1
# ----------------------
	.globl	G
	.type	G, @object
G:
	.zero	1
	.size	G, 1
# ----------------------
	.align 8
	.globl	a
	.type	a, @object
a:
	.zero	8
	.size	a, 8
# ----------------------
	.globl	y
	.type	y, @object
y:
	.zero	1
	.size	y, 1
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
