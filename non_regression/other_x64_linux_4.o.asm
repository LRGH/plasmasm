	.file	"c9.c"
	.section       .data.rel,"wa",@progbits
	.globl	R
	.type	R, @object
R:
	.quad	putchar
	.size	R, 8
# ----------------------
	.section       .rodata
	.align 4
.LC00000000:
	.long	.L00000174.startup-.LC00000000
	.long	.L000002C4.startup-.LC00000000
	.long	.L0000038E.startup-.LC00000000
	.long	.L00000052.startup-.LC00000000
	.long	.L00000122.startup-.LC00000000
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
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC0:
	.string	"aH B0 BB B, , `0 b0 @, 0 Hb, B2 H0 b, B bH HB b`, H, @ 2 `, @2 H2 BH Bb b@"
# ----------------------
.LC0000004B.str1.8:
	.zero	5
	.align 8
.LC1:
	.string	"AH B0 BB B, , `0 b0 @, 0 Hb, B2 H0 b, B bH HB b`, H, @ 2 `, @2 H2 BH Bb b@"
# ----------------------
.LC0000009B.str1.8:
	.zero	5
	.align 8
.LC2:
	.string	"0bHb, HbH `H2 @b, @H @0 B@ b@ bH0 bHB"
# ----------------------
	.text
	.globl	P
	.type	P, @function
P:
	pushq     %rbx
	movsbq    %dil, %rbx
	call      __ctype_b_loc@PLT
.L0000000A:
	movq      (%rax), %rax
	movzwl    (%rax,%rbx,2), %eax
	popq      %rbx
	andw      $8192, %ax
	movzwl    %ax, %eax
	ret       
	.size	P, .-P
# ----------------------
.L0000001A:
	.p2align 3
# ----------------------
	.globl	D
	.type	D, @function
D:
	pushq     %r12
	testq     %rdi, %rdi
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	je        .L000000B0
.L00000030:
	movsbl    (%rdi), %edi
	testb     %dil, %dil
	je        .L000000B7
.L00000038:
	movq      %rbx, %rbp
	jmp       .L0000004D
.L0000003D:
	.p2align 3
.L00000040:
	addq      $1, %rbp
	movsbl    (%rbp), %edi
	testb     %dil, %dil
	je        .L00000056
.L0000004D:
	call      P@PLT
.L00000052:
	testl     %eax, %eax
	je        .L00000040
.L00000056:
	movq      %rbp, %rdi
	subq      %rbx, %rdi
.L0000005C:
	call      malloc@PLT
.L00000061:
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L000000B0
.L00000069:
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L0000009F
.L00000071:
	movq      %rax, %rbp
	jmp       .L00000096
.L00000076:
	.p2align 4
.L00000080:
	movzbl    (%rbx), %eax
	addq      $1, %rbx
	addq      $1, %rbp
	movb      %al, -1(%rbp)
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L0000009F
.L00000096:
	call      P@PLT
.L0000009B:
	testl     %eax, %eax
	je        .L00000080
.L0000009F:
	popq      %rbx
	popq      %rbp
	movq      %r12, %rax
	popq      %r12
	ret       
.L000000A7:
	.p2align 4
.L000000B0:
	popq      %rbx
	popq      %rbp
	xorl      %eax, %eax
	popq      %r12
	ret       
.L000000B7:
	xorl      %edi, %edi
	jmp       .L0000005C
	.size	D, .-D
# ----------------------
.L000000BB:
	.p2align 3
# ----------------------
	.globl	l
	.type	l, @function
l:
	movq      (%rdi), %rax
	movq      %rax, (%rsi)
	movq      %rsi, (%rdi)
	ret       
	.size	l, .-l
# ----------------------
.L000000CA:
	.p2align 3
# ----------------------
	.globl	h
	.type	h, @function
h:
	pushq     %r13
	movsbq    %dl, %rax
	leaq      (%rdi,%rax,8), %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $8, %rsp
	testq     %rsi, %rsi
	je        .L0000019A
.L000000EE:
	cmpb      $0, (%rsi)
	je        .L0000019A
.L000000F7:
	.p2align 4
.L00000100:
	movl      $24, %edi
	call      malloc@PLT
.L0000010A:
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L000001A7
.L00000116:
	movq      %rbx, %rdi
	movq      $0, (%rax)
	leaq      8(%r13), %rbp
	call      D@PLT
.L00000129:
	movq      %r13, %rdi
	movq      %r12, %rsi
	movq      %rax, 16(%r12)
	call      l@PLT
.L00000139:
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	jne       .L00000154
.L00000141:
	jmp       .L00000185
.L00000143:
	.p2align 3
.L00000148:
	addq      $1, %rbx
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L00000185
.L00000154:
	call      P@PLT
.L00000159:
	testl     %eax, %eax
	je        .L00000148
.L0000015D:
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	jne       .L0000017C
.L00000165:
	jmp       .L0000018A
.L00000167:
	.p2align 4
.L00000170:
	addq      $1, %rbx
	movsbl    (%rbx), %edi
	testb     %dil, %dil
	je        .L00000185
.L0000017C:
	call      P@PLT
.L00000181:
	testl     %eax, %eax
	jne       .L00000170
.L00000185:
	testq     %rbx, %rbx
	je        .L0000019A
.L0000018A:
	cmpb      $0, (%rbx)
	.p2align 3
	je        .L0000019A
.L00000192:
	movq      %rbp, %r13
	jmp       .L00000100
.L0000019A:
	addq      $8, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L000001A7:
	movl      $1, %edi
	call      exit@PLT
	.size	h, .-h
# ----------------------
.L000001B1:
	.p2align 4
# ----------------------
	.globl	k
	.type	k, @function
k:
	movsbl    c.3562(%rip), %edi
	testb     %dil, %dil
	jne       .L000001D8
.L000001CC:
	movb      $10, c.3562(%rip)
	ret       
.L000001D4:
	.p2align 3
.L000001D8:
	movq      R@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       *%rax
	.size	k, .-k
# ----------------------
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
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
	ja        .L00000156.startup
.L00000036.startup:
	leaq      .LC00000000(%rip), %rax
	movl      %edi, %edx
	movslq    (%rax,%rdx,4), %rdx
	addq      %rdx, %rax
	jmp       *%rax
.L00000048.startup:
	movl      $1, i.3610(%rip)
.L00000052.startup:
	movl      $8, %esi
	movl      $384, %edi
	call      calloc@PLT
.L00000061.startup:
	testq     %rax, %rax
	movq      %rax, X.3567(%rip)
	je        .L00000495.startup
.L00000071.startup:
	movq      40(%rsp), %rax
	leaq      .LC7(%rip), %rsi
	movq      8(%rax), %rdi
	call      fopen@PLT
.L00000086.startup:
	testq     %rax, %rax
	movq      %rax, 32(%rsp)
	je        .L00000495.startup
.L00000094.startup:
	leaq      112(%rsp), %rbx
	leaq      1(%rbx), %rbp
	jmp       .L000000AD.startup
.L0000009F.startup:
	.p2align 3
.L000000A0.startup:
	movzbl    112(%rsp), %eax
	testb     %al, %al
	jne       .L0000049F.startup
.L000000AD.startup:
	movq      32(%rsp), %rdx
	movl      $256, %esi
	movq      %rbx, %rdi
	call      fgets@PLT
.L000000BF.startup:
	movl      12(%rsp), %esi
	testq     %rax, %rax
	movl      %esi, 28(%rsp)
	jne       .L000000A0.startup
.L000000CC.startup:
	movq      X.3567(%rip), %rdi
	.p2align 3
.L000000D8.startup:
	movslq    12(%rsp), %rax
	leaq      (%rdi,%rax,8), %rsi
	movq      (%rsi), %rax
	testq     %rax, %rax
	je        .L00000101.startup
.L000000E9.startup:
	xorl      %ecx, %ecx
	jmp       .L000000F6.startup
.L000000ED.startup:
	.p2align 3
.L000000F0.startup:
	movq      %rax, %rcx
	movq      %rdx, %rax
.L000000F6.startup:
	movq      (%rax), %rdx
	movq      %rcx, (%rax)
	testq     %rdx, %rdx
	jne       .L000000F0.startup
.L00000101.startup:
	movq      %rax, (%rsi)
	movl      12(%rsp), %eax
	addl      $7, %eax
	movzbl    %al, %eax
	cmpl      28(%rsp), %eax
	movl      %eax, 12(%rsp)
	jne       .L000000D8.startup
.L00000118.startup:
	movq      32(%rsp), %rdi
	call      fclose@PLT
.L00000122.startup:
	movq      X.3567(%rip), %rcx
	testq     %rcx, %rcx
	je        .L00000048.startup
.L00000132.startup:
	cmpl      $0, i.3610(%rip)
	je        .L00000156.startup
.L0000013B.startup:
	movq      (%rcx), %rbx
	leaq      8(%rcx), %rsi
	movl      $2040, %edx
	movq      %rcx, %rdi
	call      memmove@PLT
.L0000014F.startup:
	movq      %rbx, 2040(%rax)
.L00000156.startup:
	movq      40(%rsp), %rsi
	movq      16(%rsi), %rax
	leaq      1(%rax), %rdx
	movq      %rdx, 16(%rsi)
	movsbl    (%rax), %r14d
	testl     %r14d, %r14d
	je        .L000002AD.startup
.L00000174.startup:
	xorl      %r12d, %r12d
	xorl      %ecx, %ecx
	movl      $-1840700269, %esi
	jmp       .L000001AD.startup
.L00000180.startup:
	cmpl      $38, %r12d
	jg        .L000001B7.startup
.L00000186.startup:
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
.L000001A9.startup:
	addl      $1, %r12d
.L000001AD.startup:
	cmpl      $9, %ecx
	jg        .L00000180.startup
.L000001B2.startup:
	addl      $1, %ecx
	jmp       .L000001A9.startup
.L000001B7.startup:
	movq      X.3567(%rip), %rax
	movslq    %r14d, %rdx
	addl      $1, %r12d
	movq      (%rax,%rdx,8), %rax
	testq     %rax, %rax
	movq      %rax, 16(%rsp)
	je        .L0000024B.startup
.L000001D3.startup:
	movq      R@GOTPCREL(%rip), %r13
	movq      16(%rsp), %rax
	.p2align 3
.L000001E0.startup:
	movq      16(%rax), %rbp
.L000001E4.startup:
	movsbl    (%rbp), %edx
	cmpl      %edx, %r12d
	jg        .L00000230.startup
.L000001ED.startup:
	subl      %r12d, %edx
	addq      $1, %rbp
	movl      $6, %ebx
	movl      %edx, %r15d
	.p2align 3
.L00000200.startup:
	testl     %r15d, %r15d
	jne       .L0000020E.startup
.L00000205.startup:
	movsbl    (%rbp), %eax
	cmpl      %eax, %r12d
	jg        .L000001E4.startup
.L0000020E.startup:
	movl      %r15d, %eax
	sarl      $1, %r15d
	andl      $1, %eax
	leal      (%rax,%rax), %ecx
	leal      32(%rax,%rcx), %edi
	call      *(%r13)
.L00000222.startup:
	subl      $1, %ebx
	jne       .L00000200.startup
.L00000227.startup:
	movsbl    (%rbp), %edx
	cmpl      %edx, %r12d
	jle       .L000001ED.startup
.L00000230.startup:
	movl      $10, %edi
	call      *(%r13)
.L00000239.startup:
	movq      16(%rsp), %rax
	movq      (%rax), %rax
	testq     %rax, %rax
	movq      %rax, 16(%rsp)
	jne       .L000001E0.startup
.L0000024B.startup:
	cmpl      $1, 24(%rsp)
	jle       .L00000368.startup
.L00000256.startup:
	movq      40(%rsp), %rax
	movq      16(%rax), %rax
	cmpb      $0, (%rax)
	je        .L000002AD.startup
.L00000264.startup:
	jmp       .L000004B6.startup
.L00000269.startup:
	.p2align 4
.L00000270.startup:
	movslq    %r14d, %rax
	salq      $3, %rax
	addq      %rax, X.3567(%rip)
	movl      %r14d, %eax
	andl      $7, %eax
	cmpl      $3, %eax
	jg        .L000000CC.startup
.L0000028D.startup:
	movq      stdout@GOTPCREL(%rip), %rax
	leal      -1(%r14), %ebx
	subl      $43, %r14d
	movl      %ebx, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
.L000002A6.startup:
	testb     $7, %bl
	cmovne    %ebx, %r14d
.L000002AD.startup:
	addl      $1, 24(%rsp)
	movl      24(%rsp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	jle       .L00000270.startup
.L000002BD.startup:
	xorl      %edi, %edi
	call      exit@PLT
.L000002C4.startup:
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
.L00000335.startup:
	testq     %rax, %rax
	movq      %rax, X.3567(%rip)
	je        .L00000495.startup
.L00000345.startup:
	.p2align 3
.L00000348.startup:
	movq      (%rbx), %rax
	movq      X.3567(%rip), %rdi
	addq      $8, %rbx
	movsbl    (%rax), %edx
	leaq      1(%rax), %rsi
	call      h@PLT
.L00000362.startup:
	cmpq      $0, (%rbx)
	jne       .L00000348.startup
.L00000368.startup:
	movq      stdin@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _IO_getc@PLT
.L00000377.startup:
	testl     %eax, %eax
	movl      %eax, %r14d
	js        .L000002BD.startup
.L00000382.startup:
	xorl      %eax, %eax
	call      k@PLT
.L00000389.startup:
	jmp       .L00000174.startup
.L0000038E.startup:
	leaq      112(%rsp), %rbx
	movl      $34, %ecx
	xorl      %eax, %eax
	xorl      %r13d, %r13d
	movq      %rbx, %rdi
	movq      %rbx, %r12
	rep stosb     
	.p2align 3
.L000003A8.startup:
	cmpl      $200, %r13d
	je        .L00000429.startup
.L000003B1.startup:
	movq      stdin@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _IO_getc@PLT
.L000003C0.startup:
	cmpl      $10, %eax
	movl      %eax, %ebp
	je        .L000004DA.startup
.L000003CB.startup:
	cmpl      $32, %eax
	je        .L000003FE.startup
.L000003D0.startup:
	cmpl      $-1, %eax
	je        .L000004DA.startup
.L000003D9.startup:
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
.L000003FE.startup:
	addl      $1, %r13d
	movl      $715827883, %eax
	imull     %r13d
	movl      %r13d, %eax
	sarl      $31, %eax
	subl      %eax, %edx
	leal      (%rdx,%rdx,2), %eax
	addl      %eax, %eax
	cmpl      %eax, %r13d
	jne       .L000003A8.startup
.L0000041C.startup:
	addq      $1, %r12
.L00000420.startup:
	cmpl      $200, %r13d
	jne       .L000003B1.startup
.L00000429.startup:
	movl      $10, %ebp
	movl      $199, %r12d
.L00000434.startup:
	movq      40(%rsp), %rax
	movq      R@GOTPCREL(%rip), %r13
	xorl      %r14d, %r14d
	movq      %rbx, %r15
	movq      8(%rax), %rax
	movsbl    (%rax), %edi
	call      *(%r13)
.L00000451.startup:
	.p2align 3
.L00000458.startup:
	movsbl    (%r15), %edi
	addl      $6, %r14d
	addq      $1, %r15
	addl      $43, %edi
	call      *(%r13)
.L0000046B.startup:
	cmpl      %r14d, %r12d
	movb      $0, -1(%r15)
	jge       .L00000458.startup
.L00000475.startup:
	movl      $10, %edi
	call      *(%r13)
.L0000047E.startup:
	cmpl      $-1, %ebp
	je        .L000002BD.startup
.L00000487.startup:
	leaq      111(%rsp), %r12
	xorl      %r13d, %r13d
	addq      $1, %r12
	jmp       .L00000420.startup
.L00000495.startup:
	movl      $1, %edi
	call      exit@PLT
.L0000049F.startup:
	movq      X.3567(%rip), %rdi
	movsbl    %al, %edx
	movq      %rbp, %rsi
	call      h@PLT
.L000004B1.startup:
	jmp       .L000000AD.startup
.L000004B6.startup:
	movq      R@GOTPCREL(%rip), %r13
	movl      $10, %edi
	call      *(%r13)
.L000004C6.startup:
	movq      40(%rsp), %rsi
	movl      $4, %edi
	call      main@PLT
.L000004D5.startup:
	jmp       .L000002AD.startup
.L000004DA.startup:
	testl     %r13d, %r13d
	leal      -1(%r13), %r12d
	je        .L0000047E.startup
.L000004E3.startup:
	jmp       .L00000434.startup
	.size	main, .-main
# ----------------------
	.local	i.3610
	.comm	i.3610,4,4
# ----------------------
	.local	X.3567
	.comm	X.3567,8,8
# ----------------------
	.local	c.3562
	.comm	c.3562,1,1
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
