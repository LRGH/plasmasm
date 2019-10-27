	.file	"F2x.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC01:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section       .data.rel.ro.local,"wa",@progbits
	.local	F2xq_star
	.type	F2xq_star, @object
F2xq_star:
	.quad	_F2xq_mul
	.quad	_F2xq_pow
	.quad	_F2xq_rand
	.quad	_F2xq_hash
	.quad	vecsmall_lexcmp
	.quad	F2x_equal1
	.size	F2xq_star, 48
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"lg()"
.LC35:
	.string	"F2x_gcd (d = %ld)"
.LC37:
	.string	"F2x_extgcd (d = %ld)"
.LC55:
	.string	"F2xq_sqrt (i = %ld)"
# ----------------------
	.section       .rodata
	.align 64
.LC00000000:
	.long	.L000063D8-.LC00000000
	.long	.L000063D0-.LC00000000
	.long	.L000063C4-.LC00000000
	.long	.L000063B8-.LC00000000
	.long	.L000063AC-.LC00000000
	.long	.L000063A0-.LC00000000
	.long	.L00006394-.LC00000000
	.long	.L00006388-.LC00000000
# ----------------------
.LC00000020:
	.zero	32
# ----------------------
	.local	__bfffo_tabshi.20233
	.type	__bfffo_tabshi.20233, @object
__bfffo_tabshi.20233:
	.long	4
	.long	3
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	__bfffo_tabshi.20233, 64
# ----------------------
	.section       .rodata.cst16,"aM",@progbits,16
	.align 16
.LC22:
	.long	0
	.long	0
	.long	1
	.long	0
	.align 16
.LC23:
	.long	4
	.long	0
	.long	5
	.long	0
	.align 16
.LC24:
	.long	16
	.long	0
	.long	17
	.long	0
	.align 16
.LC25:
	.long	20
	.long	0
	.long	21
	.long	0
	.align 16
.LC26:
	.long	64
	.long	0
	.long	65
	.long	0
	.align 16
.LC27:
	.long	68
	.long	0
	.long	69
	.long	0
	.align 16
.LC28:
	.long	80
	.long	0
	.long	81
	.long	0
	.align 16
.LC29:
	.long	84
	.long	0
	.long	85
	.long	0
	.align 16
.LC33:
	.ascii	"UUUUUUUUUUUUUUUU"
# ----------------------
	.text
	.local	vecsmall_lexcmp
	.type	vecsmall_lexcmp, @function
vecsmall_lexcmp:
	movq      $72057594037927935, %r9
	movq      %r9, %r10
	andq      (%rsi), %r9
	andq      (%rdi), %r10
	movq      %r9, %r8
	cmpq      %r9, %r10
	cmovle    %r10, %r8
	cmpq      $1, %r8
	jle       .L00000056
.L00000023:
	movq      8(%rdi), %rcx
	movq      8(%rsi), %rdx
	cmpq      %rdx, %rcx
	jne       .L00000070
.L00000030:
	movl      $1, %eax
	jmp       .L0000004D
.L00000037:
	.p2align 4
.L00000040:
	movq      (%rdi,%rax,8), %rcx
	movq      (%rsi,%rax,8), %rdx
	cmpq      %rdx, %rcx
	jne       .L00000070
.L0000004D:
	addq      $1, %rax
	cmpq      %r8, %rax
	jne       .L00000040
.L00000056:
	cmpq      %r9, %r10
	je        .L0000007D
.L0000005B:
	setge     %al
	movzbl    %al, %eax
	leal      -1(%rax,%rax), %eax
	ret       
.L00000066:
	.p2align 4
.L00000070:
	xorl      %eax, %eax
	cmpq      %rdx, %rcx
	setge     %al
	leal      -1(%rax,%rax), %eax
	ret       
.L0000007D:
	xorl      %eax, %eax
	ret       
	.size	vecsmall_lexcmp, .-vecsmall_lexcmp
# ----------------------
	.local	F2x_equal1
	.type	F2x_equal1, @function
F2x_equal1:
	movq      $72057594037927935, %rdx
	andq      (%rdi), %rdx
	xorl      %eax, %eax
	cmpq      $3, %rdx
	je        .L000000A0
.L00000095:
	rep; ret       
.L00000097:
	.p2align 4
.L000000A0:
	xorl      %eax, %eax
	cmpq      $1, 16(%rdi)
	sete      %al
	ret       
	.size	F2x_equal1, .-F2x_equal1
# ----------------------
.L000000AB:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_F2xq_hash
	.type	_F2xq_hash, @function
_F2xq_hash:
	movq      16(%rdi), %rax
	ret       
	.size	_F2xq_hash, .-_F2xq_hash
# ----------------------
.L000000B5:
	.p2align 4
# ----------------------
	.local	F2x_addspec
	.type	F2x_addspec, @function
F2x_addspec:
	pushq     %r15
	pushq     %r14
	movq      %rdx, %r15
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %r12
	movq      %rcx, %rbx
	subq      $24, %rsp
	cmpq      %rdx, %rcx
	jle       .L000000EB
.L000000DF:
	movq      %rcx, %r15
	movq      %rdx, %rbx
	movq      %rsi, %r12
	movq      %rdi, %r13
.L000000EB:
	movq      avma@GOTPCREL(%rip), %rdx
	leaq      2(%r15), %r14
	leaq      0(,%r14,8), %rcx
	movq      (%rdx), %rax
	movq      %rax, %rbp
	subq      %rcx, %rbp
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %r14
	jbe       .L00000130
.L0000011A:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L0000012B:
	movq      8(%rsp), %rdx
.L00000130:
	movq      $-72057594037927936, %rax
	movq      %rbp, (%rdx)
	testq     %rax, %r14
	je        .L00000155
.L00000142:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00000155:
	movq      $3170534137668829184, %rax
	orq       %r14, %rax
	testq     %rbx, %rbx
	movq      %rax, (%rbp)
	jle       .L00000338
.L0000016F:
	leaq      32(%rbp), %rcx
	cmpq      %rcx, %r12
	setae     %dl
	cmpq      %rbp, %r12
	setbe     %al
	orl       %eax, %edx
	cmpq      %rcx, %r13
	setae     %cl
	cmpq      %rbp, %r13
	setbe     %al
	orl       %ecx, %eax
	testb     %al, %dl
	je        .L00000310
.L00000197:
	cmpq      $14, %rbx
	jbe       .L00000310
.L000001A1:
	movq      %r12, %rax
	salq      $60, %rax
	shrq      $63, %rax
	cmpq      %rax, %rbx
	cmovbe    %rbx, %rax
	xorl      %esi, %esi
	testq     %rax, %rax
	je        .L000001C9
.L000001BA:
	movq      (%r13), %rdx
	xorq      (%r12), %rdx
	movb      $1, %sil
	movq      %rdx, 16(%rbp)
.L000001C9:
	movq      %rbx, %rdi
	xorl      %edx, %edx
	subq      %rax, %rdi
	salq      $3, %rax
	leaq      -2(%rdi), %rcx
	leaq      (%r12,%rax), %r10
	leaq      (%r13,%rax), %r9
	leaq      16(%rbp,%rax), %r11
	xorl      %eax, %eax
	shrq      $1, %rcx
	addq      $1, %rcx
	leaq      (%rcx,%rcx), %r8
.L000001F4:
	movdqu    (%r9,%rax), %xmm0
	addq      $1, %rdx
	pxor      (%r10,%rax), %xmm0
	movups    %xmm0, (%r11,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L000001F4
.L00000212:
	cmpq      %r8, %rdi
	leaq      (%rsi,%r8), %rax
	je        .L00000229
.L0000021B:
	movq      (%r13,%rax,8), %rdx
	xorq      (%r12,%rax,8), %rdx
	movq      %rdx, 16(%rbp,%rax,8)
.L00000229:
	cmpq      %rbx, %r15
	jle       .L000002DC
.L00000232:
	leaq      32(,%rbx,8), %rdx
	movq      %r15, %rsi
	movq      %rbx, %r8
	subq      %rbx, %rsi
	leaq      -32(%rdx), %rdi
	addq      %rbp, %rdx
	leaq      (%r12,%rdi), %rax
	cmpq      %rdx, %rax
	setae     %cl
	cmpq      %rbp, %r12
	setbe     %dl
	orb       %dl, %cl
	je        .L000002F8
.L00000262:
	cmpq      $24, %rsi
	jbe       .L000002F8
.L0000026C:
	salq      $60, %rax
	shrq      $63, %rax
	cmpq      %rax, %rsi
	cmovbe    %rsi, %rax
	testq     %rax, %rax
	je        .L0000028D
.L00000280:
	movq      (%r12,%rbx,8), %rdx
	movq      %rdx, 16(%rbp,%rbx,8)
	addq      $1, %rbx
.L0000028D:
	subq      %rax, %rsi
	leaq      (%rdi,%rax,8), %rdi
	leaq      2(%rax,%r8), %rax
	leaq      -2(%rsi), %rcx
	xorl      %edx, %edx
	leaq      (%rbp,%rax,8), %r8
	addq      %r12, %rdi
	xorl      %eax, %eax
	shrq      $1, %rcx
	addq      $1, %rcx
	leaq      (%rcx,%rcx), %r9
.L000002B4:
	movdqa    (%rdi,%rax), %xmm0
	addq      $1, %rdx
	movups    %xmm0, (%r8,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L000002B4
.L000002CB:
	addq      %r9, %rbx
	cmpq      %r9, %rsi
	je        .L000002DC
.L000002D3:
	movq      (%r12,%rbx,8), %rax
	movq      %rax, 16(%rbp,%rbx,8)
.L000002DC:
	addq      $24, %rsp
	movq      %r14, %rsi
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       Flx_renormalize@PLT
.L000002F5:
	.p2align 4,,10
	.p2align 3
.L000002F8:
	movq      (%r12,%rbx,8), %rax
	movq      %rax, 16(%rbp,%rbx,8)
	addq      $1, %rbx
	cmpq      %r15, %rbx
	jne       .L000002F8
.L0000030A:
	jmp       .L000002DC
.L0000030C:
	.p2align 4,,10
	.p2align 3
.L00000310:
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L00000318:
	movq      (%r13,%rax,8), %rdx
	xorq      (%r12,%rax,8), %rdx
	movq      %rdx, 16(%rbp,%rax,8)
	addq      $1, %rax
	cmpq      %rbx, %rax
	jne       .L00000318
.L0000032F:
	jmp       .L00000229
.L00000334:
	.p2align 4,,10
	.p2align 3
.L00000338:
	xorl      %ebx, %ebx
	jmp       .L00000229
	.size	F2x_addspec, .-F2x_addspec
# ----------------------
.L0000033F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	F2x_addshift
	.type	F2x_addshift, @function
F2x_addshift:
	pushq     %r15
	pushq     %r14
	movq      %rdx, %r9
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %rdx
	pushq     %rbp
	pushq     %rbx
	movq      %rdx, %r13
	movq      %rdi, %rbp
	leaq      16(%rsi), %r15
	subq      $72, %rsp
	andq      (%rsi), %r13
	andq      (%rdi), %rdx
	movq      avma@GOTPCREL(%rip), %r12
	movq      8(%rdi), %rdi
	leaq      16(%rbp), %r10
	movq      %rsi, 16(%rsp)
	leaq      -2(%r13), %rcx
	movq      (%r12), %rbx
	leaq      -2(%rdx), %r14
	movq      %rdi, 8(%rsp)
	movq      %rcx, %r8
	subq      %r9, %r8
	testq     %r8, %r8
	jle       .L000005E0
.L0000039F:
	movq      bot@GOTPCREL(%rip), %rax
	movq      %rbx, %rdi
	leaq      0(,%r9,8), %rdx
	movq      %rbx, %r11
	subq      %rdx, %r11
	subq      (%rax), %rdi
	movq      %r11, %rbp
	movq      %rdi, %rax
	shrq      $3, %rax
	cmpq      %rax, %r9
	ja        .L00000598
.L000003CD:
	movq      %r11, (%r12)
	leaq      (%r15,%rdx), %r12
	movq      %r8, %rcx
	movq      %r14, %rdx
	movq      %r10, %rdi
	movq      %r9, 40(%rsp)
	movq      %r12, %rsi
	movq      %r11, 32(%rsp)
	movq      %r8, 24(%rsp)
	call      F2x_addspec
.L000003F5:
	movq      24(%rsp), %r8
	movq      32(%rsp), %r11
	movq      40(%rsp), %r9
	cmpq      %r14, %r8
	jle       .L00000560
.L0000040D:
	addq      $16, %rax
	cmpq      %r11, %rax
	jae       .L00000434
.L00000416:
	.p2align 4
.L00000420:
	subq      $8, %rbp
	movq      (%rbp), %rdx
	subq      $8, %rbx
	cmpq      %rbp, %rax
	movq      %rdx, (%rbx)
	jb        .L00000420
.L00000434:
	cmpq      %r12, %r15
	jae       .L00000508
.L0000043D:
	movq      %r12, %rax
	subq      16(%rsp), %rax
	leaq      -16(%r12), %rdx
	subq      $17, %rax
	shrq      $3, %rax
	addq      $1, %rax
	cmpq      $24, %rax
	jbe       .L000007A0
.L00000460:
	leaq      -16(%rbx), %rcx
	cmpq      %rdx, %rbx
	setbe     %sil
	cmpq      %rcx, %r12
	setbe     %cl
	orb       %cl, %sil
	je        .L000007A0
.L0000047A:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %rax
	cmovbe    %rax, %rdx
	testq     %rdx, %rdx
	je        .L00000588
.L00000491:
	movq      -8(%r12), %rcx
	leaq      -8(%rbx), %r11
	leaq      -8(%r12), %r8
	movq      %rcx, -8(%rbx)
.L000004A3:
	movq      %rax, %r9
	xorl      %ecx, %ecx
	subq      %rdx, %r9
	negq      %rdx
	leaq      -2(%r9), %rsi
	leaq      -16(,%rdx,8), %rdi
	xorl      %edx, %edx
	shrq      $1, %rsi
	addq      %rdi, %r12
	addq      %rbx, %rdi
	addq      $1, %rsi
	leaq      (%rsi,%rsi), %r10
.L000004CD:
	movdqa    (%r12,%rdx), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%rdi,%rdx)
	subq      $16, %rdx
	cmpq      %rsi, %rcx
	jb        .L000004CD
.L000004E4:
	movq      %r10, %rdx
	negq      %rdx
	salq      $3, %rdx
	addq      %rdx, %r8
	addq      %rdx, %r11
	cmpq      %r10, %r9
	je        .L00000501
.L000004F9:
	movq      -8(%r8), %rdx
	movq      %rdx, -8(%r11)
.L00000501:
	negq      %rax
	leaq      (%rbx,%rax,8), %rbx
.L00000508:
	movq      8(%rsp), %rax
	leaq      -16(%rbx), %rbp
	movq      %rax, -8(%rbx)
	movq      $-72057594037927936, %rax
	testq     %rax, %r13
	je        .L00000537
.L00000524:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00000537:
	movq      $3170534137668829184, %rdx
	movq      %rbp, %rax
	orq       %rdx, %r13
	movq      %r13, -16(%rbx)
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000055A:
	.p2align 4,,10
	.p2align 3
.L00000560:
	movq      $72057594037927935, %r13
	andq      (%rax), %r13
	addq      $16, %rax
	addq      %r9, %r13
	cmpq      %r11, %rax
	jb        .L00000420
.L0000057D:
	jmp       .L00000434
.L00000582:
	.p2align 4,,10
	.p2align 3
.L00000588:
	movq      %rbx, %r11
	movq      %r12, %r8
	jmp       .L000004A3
.L00000593:
	.p2align 4,,10
	.p2align 3
.L00000598:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r9, 56(%rsp)
	movq      %r11, 48(%rsp)
	movq      %rdx, 40(%rsp)
	movq      %r8, 32(%rsp)
	movq      %r10, 24(%rsp)
	call      pari_err@PLT
.L000005BD:
	movq      56(%rsp), %r9
	movq      48(%rsp), %r11
	movq      40(%rsp), %rdx
	movq      32(%rsp), %r8
	movq      24(%rsp), %r10
	jmp       .L000003CD
.L000005DB:
	.p2align 4,,10
	.p2align 3
.L000005E0:
	leaq      2(%r14,%r9), %rax
	cmpq      %r14, %r8
	movq      %rbx, %rsi
	movq      %rbx, %rdi
	cmovle    %rax, %r13
	leaq      0(,%r13,8), %rax
	subq      %rax, %rsi
	movq      bot@GOTPCREL(%rip), %rax
	subq      (%rax), %rdi
	movq      %rdi, %rax
	shrq      $3, %rax
	cmpq      %rax, %r13
	jbe       .L00000651
.L00000613:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 56(%rsp)
	movq      %rdx, 48(%rsp)
	movq      %rcx, 40(%rsp)
	movq      %r8, 32(%rsp)
	movq      %r10, 24(%rsp)
	call      pari_err@PLT
.L00000638:
	movq      56(%rsp), %rsi
	movq      48(%rsp), %rdx
	movq      40(%rsp), %rcx
	movq      32(%rsp), %r8
	movq      24(%rsp), %r10
.L00000651:
	salq      $3, %r14
	movq      %rsi, (%r12)
	leaq      (%r15,%rcx,8), %r12
	leaq      (%r10,%r14), %rax
	cmpq      %rax, %r10
	jae       .L00000748
.L0000066A:
	movq      %rax, %rsi
	movq      %rax, %rcx
	subq      %rbp, %rsi
	leaq      -17(%rsi), %r11
	shrq      $3, %r11
	addq      $1, %r11
	cmpq      $24, %r11
	jbe       .L00000788
.L00000689:
	leaq      (%rbp,%r14), %rsi
	leaq      -16(%rbx), %rdi
	leaq      16(%rbp,%r14), %r9
	cmpq      %rsi, %rbx
	setbe     %sil
	cmpq      %rdi, %r9
	setbe     %dil
	orb       %dil, %sil
	je        .L00000788
.L000006AE:
	leaq      -16(,%rdx,8), %rcx
	movq      %rbx, %rdi
	leaq      (%rbp,%rcx), %rdx
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %r11
	cmovbe    %r11, %rdx
	testq     %rdx, %rdx
	je        .L000006E1
.L000006D1:
	movq      -8(%rax), %rsi
	leaq      -8(%rbx), %rdi
	subq      $8, %rax
	movq      %rsi, -8(%rbx)
.L000006E1:
	movq      %r11, %r10
	subq      %rdx, %r10
	negq      %rdx
	leaq      -2(%r10), %rsi
	salq      $3, %rdx
	addq      %rdx, %rcx
	leaq      -16(%rbx,%rdx), %r9
	xorl      %edx, %edx
	shrq      $1, %rsi
	addq      %rcx, %rbp
	xorl      %ecx, %ecx
	addq      $1, %rsi
	leaq      (%rsi,%rsi), %r14
.L0000070C:
	movdqa    (%rbp,%rdx), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%r9,%rdx)
	subq      $16, %rdx
	cmpq      %rsi, %rcx
	jb        .L0000070C
.L00000724:
	movq      %r14, %rdx
	negq      %rdx
	salq      $3, %rdx
	addq      %rdx, %rax
	addq      %rdx, %rdi
	cmpq      %r14, %r10
	je        .L00000741
.L00000739:
	movq      -8(%rax), %rax
	movq      %rax, -8(%rdi)
.L00000741:
	negq      %r11
	leaq      (%rbx,%r11,8), %rbx
.L00000748:
	leaq      (%rbx,%r8,8), %rax
	cmpq      %rax, %rbx
	jbe       .L00000434
.L00000755:
	leaq      -1(%rbx), %rbp
	movq      %rbx, %rdi
	xorl      %esi, %esi
	subq      %rax, %rbp
	shrq      $3, %rbp
	addq      $1, %rbp
	leaq      0(,%rbp,8), %rdx
	negq      %rbp
	leaq      (%rbx,%rbp,8), %rbx
	subq      %rdx, %rdi
	call      memset@PLT
.L00000780:
	jmp       .L00000434
.L00000785:
	.p2align 4,,10
	.p2align 3
.L00000788:
	subq      $8, %rax
	movq      (%rax), %rsi
	movq      %rax, %rdx
	subq      %rcx, %rdx
	cmpq      %rax, %r10
	movq      %rsi, (%rbx,%rdx)
	jb        .L00000788
.L0000079E:
	jmp       .L00000741
.L000007A0:
	movq      %rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L000007A8:
	subq      $8, %r12
	movq      (%r12), %rcx
	subq      $8, %rdx
	cmpq      %r12, %r15
	movq      %rcx, (%rdx)
	jb        .L000007A8
.L000007BC:
	jmp       .L00000501
	.size	F2x_addshift, .-F2x_addshift
# ----------------------
.L000007C1:
	.p2align 4
# ----------------------
	.local	F2x_shiftip
	.type	F2x_shiftip, @function
F2x_shiftip:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $40, %rsp
	andq      (%rsi), %rbp
	cmpq      $2, %rbp
	je        .L000009C0
.L000007F5:
	testq     %rdx, %rdx
	je        .L000009C0
.L000007FE:
	movq      avma@GOTPCREL(%rip), %r14
	movq      bot@GOTPCREL(%rip), %rax
	leaq      (%rbp,%rdx), %r13
	movq      %rdx, %r12
	movq      %rdi, %rdx
	leaq      0(,%rbp,8), %rcx
	movq      %rsi, %rbx
	movq      %rdi, (%r14)
	subq      (%rax), %rdi
	leaq      (%rsi,%rcx), %r15
	leaq      0(,%r13,8), %rsi
	subq      %rsi, %rdx
	shrq      $3, %rdi
	cmpq      %rdi, %r13
	ja        .L00000990
.L00000844:
	cmpq      $2, %rbp
	movq      %rdx, (%r14)
	leaq      (%rdx,%rsi), %r14
	jle       .L00000931
.L00000855:
	subq      $16, %rsi
	leaq      -16(%rcx), %rax
	leaq      -2(%rbp), %rdi
	leaq      (%rdx,%rsi), %r8
	leaq      (%rbx,%rax), %rcx
	cmpq      %r8, %r15
	setbe     %r9b
	cmpq      %rcx, %r14
	setbe     %r8b
	orb       %r8b, %r9b
	je        .L00000B20
.L00000880:
	cmpq      $24, %rdi
	jbe       .L00000B20
.L0000088A:
	andl      $15, %ecx
	shrq      $3, %rcx
	cmpq      %rcx, %rdi
	cmovbe    %rdi, %rcx
	testq     %rcx, %rcx
	je        .L00000B50
.L000008A1:
	movq      -8(%r15), %r10
	leaq      -8(%r14), %r8
	leaq      -8(%r15), %r9
	movq      %r10, -8(%r14)
.L000008B1:
	subq      %rcx, %rdi
	movq      %rbp, %r15
	movq      %rdi, %r10
	leaq      -2(%rdi), %rdi
	subq      %rcx, %r15
	shrq      $1, %rdi
	addq      $1, %rdi
	cmpq      $3, %r15
	leaq      (%rdi,%rdi), %r11
	je        .L0000091B
.L000008D2:
	negq      %rcx
	salq      $3, %rcx
	addq      %rcx, %rax
	addq      %rcx, %rsi
	xorl      %ecx, %ecx
	addq      %rax, %rbx
	addq      %rsi, %rdx
	xorl      %eax, %eax
	.p2align 4
.L000008F0:
	movdqa    (%rbx,%rax), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%rdx,%rax)
	subq      $16, %rax
	cmpq      %rdi, %rcx
	jb        .L000008F0
.L00000906:
	movq      %r11, %rax
	negq      %rax
	salq      $3, %rax
	addq      %rax, %r9
	addq      %rax, %r8
	cmpq      %r11, %r10
	je        .L00000923
.L0000091B:
	movq      -8(%r9), %rax
	movq      %rax, -8(%r8)
.L00000923:
	negq      %rbp
	leaq      16(,%rbp,8), %rax
	addq      %rax, %r14
.L00000931:
	testq     %r12, %r12
	jle       .L00000952
.L00000936:
	leaq      0(,%r12,8), %rdx
	negq      %r12
	movq      %r14, %rdi
	leaq      (%r14,%r12,8), %r14
	xorl      %esi, %esi
	subq      %rdx, %rdi
	call      memset@PLT
.L00000952:
	movq      $-72057594037927936, %rax
	leaq      -16(%r14), %rbx
	testq     %rax, %r13
	jne       .L00000B00
.L00000969:
	movq      $3170534137668829184, %rax
	orq       %rax, %r13
	movq      %rbx, %rax
	movq      %r13, -16(%r14)
.L0000097D:
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000098C:
	.p2align 4,,10
	.p2align 3
.L00000990:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 24(%rsp)
	movq      %rsi, 16(%rsp)
	movq      %rcx, 8(%rsp)
	call      pari_err@PLT
.L000009AB:
	movq      24(%rsp), %rdx
	movq      16(%rsp), %rsi
	movq      8(%rsp), %rcx
	jmp       .L00000844
.L000009BF:
	.p2align 4,,10
	.p2align 3
.L000009C0:
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rsi
	jb        .L00000AC0
.L000009D0:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rsi
	jae       .L00000AC0
.L000009E0:
	cmpq      %rdi, %rsi
	jae       .L00000AC0
.L000009E9:
	movq      avma@GOTPCREL(%rip), %rdx
	leaq      0(,%rbp,8), %r8
	movq      %rdi, %rax
	subq      %r8, %rax
	movq      %rax, (%rdx)
	leaq      -1(%rbp), %rdx
	cmpq      $-1, %rdx
	je        .L0000097D
.L00000A0F:
	leaq      -16(%r8), %r9
	leaq      (%rsi,%r8), %r11
	leaq      (%rax,%r9), %r10
	leaq      (%rsi,%r9), %rcx
	cmpq      %r10, %r11
	leaq      (%rax,%r8), %r10
	setbe     %r11b
	cmpq      %r10, %rcx
	setae     %r10b
	orb       %r10b, %r11b
	je        .L00000AE0
.L00000A3A:
	cmpq      $24, %rbp
	jbe       .L00000AE0
.L00000A44:
	andl      $15, %ecx
	shrq      $3, %rcx
	cmpq      %rcx, %rbp
	cmovbe    %rbp, %rcx
	testq     %rcx, %rcx
	je        .L00000A64
.L00000A57:
	movq      -8(%rsi,%r8), %rdx
	movq      %rdx, -8(%rdi)
	leaq      -2(%rbp), %rdx
.L00000A64:
	subq      %rcx, %rbp
	negq      %rcx
	xorl      %edi, %edi
	leaq      -2(%rbp), %r8
	leaq      (%r9,%rcx,8), %r9
	xorl      %ecx, %ecx
	shrq      $1, %r8
	leaq      (%rsi,%r9), %r10
	addq      %rax, %r9
	addq      $1, %r8
	leaq      (%r8,%r8), %r11
.L00000A88:
	movdqa    (%r10,%rcx), %xmm0
	addq      $1, %rdi
	movups    %xmm0, (%r9,%rcx)
	subq      $16, %rcx
	cmpq      %r8, %rdi
	jb        .L00000A88
.L00000AA0:
	subq      %r11, %rdx
	cmpq      %r11, %rbp
	je        .L0000097D
.L00000AAC:
	movq      (%rsi,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	jmp       .L0000097D
.L00000AB9:
	.p2align 4
.L00000AC0:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rdi, (%rax)
	addq      $40, %rsp
	movq      %rsi, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000ADC:
	.p2align 4,,10
	.p2align 3
.L00000AE0:
	movq      (%rsi,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	subq      $1, %rdx
	cmpq      $-1, %rdx
	jne       .L00000AE0
.L00000AF2:
	jmp       .L0000097D
.L00000AF7:
	.p2align 4
.L00000B00:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00000B13:
	jmp       .L00000969
.L00000B18:
	.p2align 4
.L00000B20:
	movq      %rbp, %rax
	negq      %rax
	leaq      16(,%rax,8), %rcx
	xorl      %eax, %eax
.L00000B30:
	movq      -8(%r15,%rax), %rdx
	movq      %rdx, -8(%r14,%rax)
	subq      $8, %rax
	cmpq      %rcx, %rax
	jne       .L00000B30
.L00000B43:
	jmp       .L00000923
.L00000B48:
	.p2align 4
.L00000B50:
	movq      %r14, %r8
	movq      %r15, %r9
	jmp       .L000008B1
	.size	F2x_shiftip, .-F2x_shiftip
# ----------------------
.L00000B5B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	gerepileall.constprop.5
	.type	gerepileall.constprop.5, @function
gerepileall.constprop.5:
	pushq     %r15
	pushq     %r14
	movl      $16, %r15d
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	subq      $200, %rsp
	leaq      256(%rsp), %rax
	leaq      64(%rsp), %rbp
	movq      %rdx, 160(%rsp)
	movq      %rcx, 168(%rsp)
	movq      %r8, 176(%rsp)
	movq      %rax, 48(%rsp)
	leaq      144(%rsp), %rax
	movq      %r9, 184(%rsp)
	movl      $16, 40(%rsp)
	leaq      40(%rbp), %r14
	movq      %rbp, %rbx
	movq      %rax, 56(%rsp)
	jmp       .L00000BFE
.L00000BCA:
	.p2align 4,,10
	.p2align 3
.L00000BD0:
	movl      %r15d, %eax
	addq      56(%rsp), %rax
	addl      $8, %r15d
	movl      %r15d, 40(%rsp)
.L00000BE1:
	movq      (%rax), %r12
	addq      $8, %rbx
	movq      (%r12), %rdi
	movq      %r12, -8(%rbx)
	call      copy_bin@PLT
.L00000BF5:
	cmpq      %r14, %rbx
	movq      %rax, (%r12)
	je        .L00000C18
.L00000BFE:
	cmpl      $47, %r15d
	jbe       .L00000BD0
.L00000C04:
	movq      48(%rsp), %rax
	leaq      8(%rax), %rdx
	movq      %rdx, 48(%rsp)
	jmp       .L00000BE1
.L00000C14:
	.p2align 4,,10
	.p2align 3
.L00000C18:
	movq      avma@GOTPCREL(%rip), %rax
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq      %r13, (%rax)
	leaq      24(%rsp), %rax
	movq      %rax, (%rsp)
	jmp       .L00000C86
.L00000C34:
	.p2align 4,,10
	.p2align 3
.L00000C38:
	call      shiftaddress_canon@PLT
.L00000C3D:
	movl      (%r12), %r15d
	movq      %r14, %rdi
	movl      $1, (%r12)
	call      free@PLT
.L00000C51:
	testl     %r15d, %r15d
	movl      %r15d, (%r12)
	jne       .L00000C74
.L00000C5A:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00000C74
.L00000C67:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00000C74:
	subq      $8, %rbp
	cmpq      (%rsp), %rbp
	movq      %rbx, (%r13)
	je        .L00000D80
.L00000C86:
	movq      32(%rbp), %r13
	movq      (%r13), %r14
	movq      8(%r14), %r15
	testq     %r15, %r15
	je        .L00000D38
.L00000C9B:
	movq      avma@GOTPCREL(%rip), %rax
	movq      bot@GOTPCREL(%rip), %r10
	movq      %r15, %rbx
	movq      (%r14), %rdi
	subq      16(%r14), %rbx
	leaq      32(%r14), %rsi
	movq      (%rax), %rax
	leaq      0(,%rdi,8), %rdx
	movq      %rax, %r9
	subq      (%r10), %rax
	subq      %rdx, %r9
	shrq      $3, %rax
	cmpq      %rax, %rdi
	jbe       .L00000CFE
.L00000CD4:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r9, 24(%rsp)
	movq      %rsi, 16(%rsp)
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L00000CEF:
	movq      24(%rsp), %r9
	movq      16(%rsp), %rsi
	movq      8(%rsp), %rdx
.L00000CFE:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %r9, %rdi
	movq      %r9, (%rax)
	call      memcpy@PLT
.L00000D10:
	addq      %rax, %rbx
	movl      24(%r14), %eax
	movq      %rbx, %rsi
	movq      %rbx, %rdi
	subq      %r15, %rsi
	testl     %eax, %eax
	jne       .L00000C38
.L00000D28:
	call      shiftaddress@PLT
.L00000D2D:
	jmp       .L00000C3D
.L00000D32:
	.p2align 4,,10
	.p2align 3
.L00000D38:
	movl      (%r12), %ebx
	movq      %r14, %rdi
	movl      $1, (%r12)
	call      free@PLT
.L00000D4C:
	testl     %ebx, %ebx
	movl      %ebx, (%r12)
	jne       .L00000D61
.L00000D54:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00000D98
.L00000D61:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
.L00000D6B:
	subq      $8, %rbp
	cmpq      (%rsp), %rbp
	movq      %rbx, (%r13)
	jne       .L00000C86
.L00000D7D:
	.p2align 4,,10
	.p2align 3
.L00000D80:
	addq      $200, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000D92:
	.p2align 4,,10
	.p2align 3
.L00000D98:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00000DA5:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       .L00000D6B
	.size	gerepileall.constprop.5, .-gerepileall.constprop.5
# ----------------------
.L00000DB1:
	.p2align 4
# ----------------------
	.local	gerepileall.constprop.6
	.type	gerepileall.constprop.6, @function
gerepileall.constprop.6:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movl      $16, %r13d
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %r12
	xorl      %ebx, %ebx
	subq      $216, %rsp
	leaq      272(%rsp), %rax
	movq      %rdx, 176(%rsp)
	movq      %rcx, 184(%rsp)
	movq      %r8, 192(%rsp)
	movq      %r9, 200(%rsp)
	leaq      80(%rsp), %r14
	movq      %rax, 64(%rsp)
	leaq      160(%rsp), %rax
	movl      $16, 56(%rsp)
	movq      %rax, 72(%rsp)
	jmp       .L00000E57
.L00000E25:
	.p2align 4,,10
	.p2align 3
.L00000E28:
	movl      %r13d, %eax
	addq      72(%rsp), %rax
	addl      $8, %r13d
	movl      %r13d, 56(%rsp)
.L00000E39:
	movq      (%rax), %rbp
	movq      (%rbp), %rdi
	movq      %rbp, (%r14,%rbx)
	addq      $8, %rbx
	call      copy_bin@PLT
.L00000E4D:
	cmpq      $16, %rbx
	movq      %rax, (%rbp)
	je        .L00000E70
.L00000E57:
	cmpl      $47, %r13d
	jbe       .L00000E28
.L00000E5D:
	movq      64(%rsp), %rax
	leaq      8(%rax), %rdx
	movq      %rdx, 64(%rsp)
	jmp       .L00000E39
.L00000E6D:
	.p2align 4,,10
	.p2align 3
.L00000E70:
	movq      avma@GOTPCREL(%rip), %r15
	leaq      8(%r14), %rax
	xorl      %ebp, %ebp
	movq      %rax, 16(%rsp)
	movq      %r12, (%r15)
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	jmp       .L00000EEB
.L00000E8E:
	.p2align 4,,10
	.p2align 3
.L00000E90:
	subq      %r8, %rsi
	movq      %rbx, %rdi
	call      shiftaddress_canon@PLT
.L00000E9B:
	movl      (%r12), %eax
	movq      %r14, %rdi
	movl      $1, (%r12)
	movl      %eax, 8(%rsp)
	call      free@PLT
.L00000EB3:
	movl      8(%rsp), %eax
	testl     %eax, %eax
	movl      %eax, (%r12)
	jne       .L00000ED9
.L00000EBF:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00000ED9
.L00000ECC:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00000ED9:
	subq      $8, %rbp
	movq      %rbx, (%r13)
	cmpq      $-16, %rbp
	je        .L00000FF0
.L00000EEB:
	movq      16(%rsp), %rax
	movq      (%rax,%rbp), %r13
	movq      (%r13), %r14
	movq      8(%r14), %r8
	testq     %r8, %r8
	je        .L00000FA8
.L00000F05:
	movq      (%r15), %rax
	movq      bot@GOTPCREL(%rip), %r10
	movq      %r8, %rbx
	movq      (%r14), %rdi
	subq      16(%r14), %rbx
	leaq      32(%r14), %rsi
	movq      %rax, %r9
	subq      (%r10), %rax
	leaq      0(,%rdi,8), %rdx
	subq      %rdx, %r9
	shrq      $3, %rax
	cmpq      %rax, %rdi
	jbe       .L00000F6B
.L00000F37:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r9, 40(%rsp)
	movq      %rsi, 32(%rsp)
	movq      %rdx, 24(%rsp)
	movq      %r8, 8(%rsp)
	call      pari_err@PLT
.L00000F57:
	movq      40(%rsp), %r9
	movq      32(%rsp), %rsi
	movq      24(%rsp), %rdx
	movq      8(%rsp), %r8
.L00000F6B:
	movq      %r9, %rdi
	movq      %r8, 8(%rsp)
	movq      %r9, (%r15)
	call      memcpy@PLT
.L00000F7B:
	addq      %rax, %rbx
	movl      24(%r14), %eax
	movq      8(%rsp), %r8
	movq      %rbx, %rsi
	testl     %eax, %eax
	jne       .L00000E90
.L00000F92:
	subq      %r8, %rsi
	movq      %rbx, %rdi
	call      shiftaddress@PLT
.L00000F9D:
	jmp       .L00000E9B
.L00000FA2:
	.p2align 4,,10
	.p2align 3
.L00000FA8:
	movl      (%r12), %ebx
	movq      %r14, %rdi
	movl      $1, (%r12)
	call      free@PLT
.L00000FBC:
	testl     %ebx, %ebx
	movl      %ebx, (%r12)
	jne       .L00000FD1
.L00000FC4:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00001008
.L00000FD1:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
.L00000FDB:
	subq      $8, %rbp
	movq      %rbx, (%r13)
	cmpq      $-16, %rbp
	jne       .L00000EEB
.L00000FED:
	.p2align 4,,10
	.p2align 3
.L00000FF0:
	addq      $216, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001002:
	.p2align 4,,10
	.p2align 3
.L00001008:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00001015:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       .L00000FDB
	.size	gerepileall.constprop.6, .-gerepileall.constprop.6
# ----------------------
.L00001021:
	.p2align 4
# ----------------------
	.local	gerepileall
	.type	gerepileall, @function
gerepileall:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $216, %rsp
	cmpl      $9, %esi
	leaq      272(%rsp), %rax
	movq      %rdx, 176(%rsp)
	movq      %rcx, 184(%rsp)
	movq      %r8, 192(%rsp)
	movq      %r9, 200(%rsp)
	movq      %rax, 64(%rsp)
	leaq      160(%rsp), %rax
	movl      $16, 56(%rsp)
	movq      %rax, 72(%rsp)
	jg        .L000012B0
.L0000108F:
	testl     %esi, %esi
	jle       .L000014E8
.L00001097:
	leal      -1(%rsi), %eax
	movl      $16, %r15d
	leaq      80(%rsp), %rbp
	movq      %rax, %rbx
	leaq      88(%rsp,%rax,8), %r14
	jmp       .L000010DE
.L000010AF:
	.p2align 4,,10
	.p2align 3
.L000010B0:
	movl      %r15d, %eax
	addq      72(%rsp), %rax
	addl      $8, %r15d
	movl      %r15d, 56(%rsp)
.L000010C1:
	movq      (%rax), %r13
	addq      $8, %rbp
	movq      (%r13), %rdi
	movq      %r13, -8(%rbp)
	call      copy_bin@PLT
.L000010D5:
	cmpq      %r14, %rbp
	movq      %rax, (%r13)
	je        .L000010F8
.L000010DE:
	cmpl      $47, %r15d
	jbe       .L000010B0
.L000010E4:
	movq      64(%rsp), %rax
	leaq      8(%rax), %rdx
	movq      %rdx, 64(%rsp)
	jmp       .L000010C1
.L000010F4:
	.p2align 4,,10
	.p2align 3
.L000010F8:
	movq      avma@GOTPCREL(%rip), %r13
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %r12, (%r13)
	jmp       .L00001163
.L0000110C:
	.p2align 4,,10
	.p2align 3
.L00001110:
	subq      %rcx, %rsi
	movq      %r12, %rdi
	call      shiftaddress_canon@PLT
.L0000111B:
	movl      (%rbp), %eax
	movq      %r14, %rdi
	movl      $1, (%rbp)
	movl      %eax, (%rsp)
	call      free@PLT
.L00001130:
	movl      (%rsp), %eax
	testl     %eax, %eax
	movl      %eax, (%rbp)
	jne       .L00001154
.L0000113A:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00001154
.L00001147:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00001154:
	subl      $1, %ebx
	movq      %r12, (%r15)
	cmpl      $-1, %ebx
	je        .L00001258
.L00001163:
	movslq    %ebx, %rax
	movq      80(%rsp,%rax,8), %r15
	movq      (%r15), %r14
	movq      8(%r14), %rcx
	testq     %rcx, %rcx
	je        .L00001270
.L0000117B:
	movq      (%r13), %rax
	movq      bot@GOTPCREL(%rip), %r9
	movq      %rcx, %r12
	movq      (%r14), %rdi
	subq      16(%r14), %r12
	leaq      32(%r14), %rsi
	movq      %rax, %r8
	subq      (%r9), %rax
	leaq      0(,%rdi,8), %rdx
	subq      %rdx, %r8
	shrq      $3, %rax
	cmpq      %rax, %rdi
	jbe       .L000011E0
.L000011AE:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 24(%rsp)
	movq      %rsi, 16(%rsp)
	movq      %rdx, 8(%rsp)
	movq      %rcx, (%rsp)
	call      pari_err@PLT
.L000011CD:
	movq      24(%rsp), %r8
	movq      16(%rsp), %rsi
	movq      8(%rsp), %rdx
	movq      (%rsp), %rcx
.L000011E0:
	movq      %r8, %rdi
	movq      %rcx, (%rsp)
	movq      %r8, (%r13)
	call      memcpy@PLT
.L000011F0:
	movl      24(%r14), %edx
	addq      %rax, %r12
	movq      (%rsp), %rcx
	movq      %r12, %rsi
	testl     %edx, %edx
	jne       .L00001110
.L00001206:
	subq      %rcx, %rsi
	movq      %r12, %rdi
	call      shiftaddress@PLT
.L00001211:
	jmp       .L0000111B
.L00001216:
	.p2align 4
.L00001220:
	movl      (%rbp), %ebx
	movq      40(%rsp), %rdi
	movl      $1, (%rbp)
	call      free@PLT
.L00001234:
	testl     %ebx, %ebx
	movl      %ebx, (%rbp)
	jne       .L00001258
.L0000123B:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00001258
.L00001248:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00001255:
	.p2align 4,,10
	.p2align 3
.L00001258:
	addq      $216, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000126A:
	.p2align 4,,10
	.p2align 3
.L00001270:
	movl      (%rbp), %r12d
	movq      %r14, %rdi
	movl      $1, (%rbp)
	call      free@PLT
.L00001283:
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L0000129D
.L0000128C:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00001360
.L0000129D:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r12
	jmp       .L00001154
.L000012AC:
	.p2align 4,,10
	.p2align 3
.L000012B0:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movslq    %esi, %rdi
	movl      %esi, (%rsp)
	salq      $3, %rdi
	movl      (%rbp), %ebx
	movl      $1, (%rbp)
	call      malloc@PLT
.L000012D0:
	movl      (%rsp), %esi
	movq      %rax, 40(%rsp)
	testl     %ebx, %ebx
	movl      %ebx, (%rbp)
	je        .L00001500
.L000012E3:
	cmpq      $0, 40(%rsp)
	je        .L00001526
.L000012EF:
	leal      -1(%rsi), %eax
	movq      40(%rsp), %rcx
	movl      56(%rsp), %ebx
	leaq      8(,%rax,8), %r13
	movl      %eax, (%rsp)
	movq      %rax, 16(%rsp)
	movq      %rcx, %r15
	addq      %rcx, %r13
	jmp       .L00001341
.L00001313:
	.p2align 4,,10
	.p2align 3
.L00001318:
	movl      %ebx, %eax
	addq      72(%rsp), %rax
	addl      $8, %ebx
	movl      %ebx, 56(%rsp)
.L00001326:
	movq      (%rax), %r14
	addq      $8, %r15
	movq      (%r14), %rdi
	movq      %r14, -8(%r15)
	call      copy_bin@PLT
.L00001339:
	cmpq      %r13, %r15
	movq      %rax, (%r14)
	je        .L00001380
.L00001341:
	cmpl      $47, %ebx
	jbe       .L00001318
.L00001346:
	movq      64(%rsp), %rax
	leaq      8(%rax), %rdx
	movq      %rdx, 64(%rsp)
	jmp       .L00001326
.L00001356:
	.p2align 4
.L00001360:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L0000136D:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r12
	jmp       .L00001154
.L0000137C:
	.p2align 4,,10
	.p2align 3
.L00001380:
	movl      (%rsp), %eax
	movq      16(%rsp), %rcx
	movq      avma@GOTPCREL(%rip), %r13
	movl      %eax, 8(%rsp)
	movq      40(%rsp), %rax
	movq      %r12, (%r13)
	leaq      (%rax,%rcx,8), %rax
	movq      %rax, (%rsp)
	jmp       .L000013FB
.L000013A6:
	.p2align 4
.L000013B0:
	call      shiftaddress_canon@PLT
.L000013B5:
	movl      (%rbp), %ebx
	movq      %r14, %rdi
	movl      $1, (%rbp)
	call      free@PLT
.L000013C7:
	testl     %ebx, %ebx
	movl      %ebx, (%rbp)
	jne       .L000013E8
.L000013CE:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L000013E8
.L000013DB:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L000013E8:
	subq      $8, (%rsp)
	subl      $1, 8(%rsp)
	movq      %r12, (%r15)
	js        .L00001220
.L000013FB:
	movq      (%rsp), %rax
	movq      (%rax), %r15
	movq      (%r15), %r14
	movq      8(%r14), %rbx
	testq     %rbx, %rbx
	je        .L000014A0
.L00001412:
	movq      (%r13), %rax
	movq      bot@GOTPCREL(%rip), %r10
	movq      %rbx, %r12
	movq      (%r14), %rdi
	subq      16(%r14), %r12
	leaq      32(%r14), %rsi
	movq      %rax, %r9
	subq      (%r10), %rax
	leaq      0(,%rdi,8), %rdx
	subq      %rdx, %r9
	shrq      $3, %rax
	cmpq      %rax, %rdi
	jbe       .L0000146F
.L00001445:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r9, 32(%rsp)
	movq      %rsi, 24(%rsp)
	movq      %rdx, 16(%rsp)
	call      pari_err@PLT
.L00001460:
	movq      32(%rsp), %r9
	movq      24(%rsp), %rsi
	movq      16(%rsp), %rdx
.L0000146F:
	movq      %r9, %rdi
	movq      %r9, (%r13)
	call      memcpy@PLT
.L0000147B:
	addq      %rax, %r12
	movl      24(%r14), %eax
	movq      %r12, %rsi
	movq      %r12, %rdi
	subq      %rbx, %rsi
	testl     %eax, %eax
	jne       .L000013B0
.L00001493:
	call      shiftaddress@PLT
.L00001498:
	jmp       .L000013B5
.L0000149D:
	.p2align 4,,10
	.p2align 3
.L000014A0:
	movl      (%rbp), %r12d
	movq      %r14, %rdi
	movl      $1, (%rbp)
	call      free@PLT
.L000014B3:
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L000014D6
.L000014BC:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L000014D6
.L000014C9:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L000014D6:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r12
	jmp       .L000013E8
.L000014E5:
	.p2align 4,,10
	.p2align 3
.L000014E8:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rdi, (%rax)
	jmp       .L00001258
.L000014F7:
	.p2align 4
.L00001500:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L000012E3
.L00001511:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L0000151E:
	movl      (%rsp), %esi
	jmp       .L000012E3
.L00001526:
	movl      $28, %edi
	xorl      %eax, %eax
	movl      %esi, (%rsp)
	call      pari_err@PLT
.L00001535:
	movl      (%rsp), %esi
	jmp       .L000012EF
	.size	gerepileall, .-gerepileall
# ----------------------
.L0000153D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2x_degree
	.type	F2x_degree, @function
F2x_degree:
	movq      $72057594037927935, %rdx
	andq      (%rdi), %rdx
	cmpq      $2, %rdx
	je        .L000015D0
.L00001553:
	leaq      -2(%rdx), %rax
	movq      -8(%rdi,%rdx,8), %rdx
	movq      $-4294967296, %rcx
	salq      $6, %rax
	testq     %rcx, %rdx
	jne       .L000015C0
.L0000156F:
	movl      $44, %esi
	movl      $60, %ecx
.L00001579:
	testq     $-65536, %rdx
	je        .L00001588
.L00001582:
	shrq      $16, %rdx
	movl      %esi, %ecx
.L00001588:
	testq     $-256, %rdx
	je        .L00001598
.L00001591:
	subl      $8, %ecx
	shrq      $8, %rdx
.L00001598:
	testq     $-16, %rdx
	je        .L000015A8
.L000015A1:
	subl      $4, %ecx
	shrq      $4, %rdx
.L000015A8:
	leaq      __bfffo_tabshi.20233(%rip), %rsi
	addl      (%rsi,%rdx,4), %ecx
	movslq    %ecx, %rcx
	subq      %rcx, %rax
	subq      $1, %rax
	ret       
.L000015BD:
	.p2align 4,,10
	.p2align 3
.L000015C0:
	shrq      $32, %rdx
	movl      $12, %esi
	movl      $28, %ecx
	jmp       .L00001579
.L000015D0:
	movq      $-1, %rax
	ret       
	.size	F2x_degree, .-F2x_degree
# ----------------------
.L000015D8:
	.p2align 4
# ----------------------
	.globl	F2x_to_ZX
	.type	F2x_to_ZX, @function
F2x_to_ZX:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbp
	subq      $8, %rsp
	call      F2x_degree@PLT
.L000015F2:
	movq      avma@GOTPCREL(%rip), %r13
	leaq      3(%rax), %rbx
	leaq      0(,%rbx,8), %rdx
	movq      (%r13), %rax
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L0000162E
.L00001622:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L0000162E:
	movq      $-72057594037927936, %rax
	movq      %r12, (%r13)
	testq     %rax, %rbx
	je        .L00001654
.L00001641:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001654:
	movq      $1441151880758558720, %rax
	movq      $72057594037927935, %r10
	movl      $2, %r8d
	orq       %rbx, %rax
	movl      $2, %edx
	movq      %rax, (%r12)
	movq      (%rbp), %rax
	movq      %rax, %rcx
	andq      %r10, %rcx
	cmpq      $2, %rcx
	jle       .L000016EC
.L0000168A:
	.p2align 4,,10
	.p2align 3
.L00001690:
	cmpq      %rdx, %rbx
	jle       .L000016DD
.L00001695:
	xorl      %ecx, %ecx
	movq      gen_1@GOTPCREL(%rip), %r9
	movq      gen_0@GOTPCREL(%rip), %rdi
	jmp       .L000016B6
.L000016A7:
	.p2align 4
.L000016B0:
	cmpq      $63, %rcx
	jg        .L000016D9
.L000016B6:
	movq      (%rbp,%r8,8), %rsi
	shrq      %cl, %rsi
	andl      $1, %esi
	movq      (%r9), %rsi
	cmove     (%rdi), %rsi
	addq      $1, %rcx
	movq      %rsi, (%r12,%rdx,8)
	addq      $1, %rdx
	cmpq      %rdx, %rbx
	jg        .L000016B0
.L000016D9:
	movq      (%rbp), %rax
.L000016DD:
	movq      %rax, %rcx
	addq      $1, %r8
	andq      %r10, %rcx
	cmpq      %r8, %rcx
	jg        .L00001690
.L000016EC:
	cmpq      $2, %rbx
	movl      $0, %edx
	movq      $4611686018427387904, %rax
	cmovle    %rdx, %rax
	orq       8(%rbp), %rax
	movq      %rax, 8(%r12)
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	F2x_to_ZX, .-F2x_to_ZX
# ----------------------
.L0000171A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xC_to_ZXC
	.type	F2xC_to_ZXC, @function
F2xC_to_ZXC:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	andq      (%rdi), %rbp
	movq      (%rbx), %rax
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L00001771
.L00001765:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001771:
	movq      $2594073385365405696, %rax
	movq      %r12, (%rbx)
	movl      $1, %ebx
	orq       %rbp, %rax
	cmpq      $1, %rbp
	movq      %rax, (%r12)
	jle       .L000017A7
.L00001790:
	movq      (%r13,%rbx,8), %rdi
	call      F2x_to_ZX@PLT
.L0000179A:
	movq      %rax, (%r12,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L00001790
.L000017A7:
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	F2xC_to_ZXC, .-F2xC_to_ZXC
# ----------------------
.L000017B5:
	.p2align 4
# ----------------------
	.globl	F2x_to_Flx
	.type	F2x_to_Flx, @function
F2x_to_Flx:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbp
	subq      $8, %rsp
	call      F2x_degree@PLT
.L000017D2:
	movq      avma@GOTPCREL(%rip), %r13
	leaq      3(%rax), %rbx
	leaq      0(,%rbx,8), %rdx
	movq      (%r13), %rax
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L0000180E
.L00001802:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L0000180E:
	movq      $-72057594037927936, %rax
	movq      %r12, (%r13)
	testq     %rax, %rbx
	je        .L00001834
.L00001821:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001834:
	movq      $3170534137668829184, %rax
	movq      $72057594037927935, %rdi
	movl      $2, %r8d
	orq       %rbx, %rax
	movl      $2, %esi
	movq      %rax, (%r12)
	movq      8(%rbp), %rax
	movq      %rax, 8(%r12)
	movq      (%rbp), %rax
	movq      %rax, %rdx
	andq      %rdi, %rdx
	cmpq      $2, %rdx
	jle       .L000018BD
.L00001873:
	.p2align 4,,10
	.p2align 3
.L00001878:
	xorl      %ecx, %ecx
	cmpq      %rsi, %rbx
	jg        .L0000188E
.L0000187F:
	jmp       .L000018AE
.L00001881:
	.p2align 4,,10
	.p2align 3
.L00001888:
	cmpq      $63, %rcx
	jg        .L000018AA
.L0000188E:
	movq      (%rbp,%r8,8), %rdx
	sarq      %cl, %rdx
	addq      $1, %rcx
	andl      $1, %edx
	movq      %rdx, (%r12,%rsi,8)
	addq      $1, %rsi
	cmpq      %rsi, %rbx
	jg        .L00001888
.L000018AA:
	movq      (%rbp), %rax
.L000018AE:
	movq      %rax, %rdx
	addq      $1, %r8
	andq      %rdi, %rdx
	cmpq      %r8, %rdx
	jg        .L00001878
.L000018BD:
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	F2x_to_Flx, .-F2x_to_Flx
# ----------------------
.L000018CB:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	Z_to_F2x
	.type	Z_to_F2x, @function
Z_to_F2x:
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      8(%rdi), %rax
	movq      %rax, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	je        .L00001958
.L000018ED:
	movq      $72057594037927935, %rdx
	andq      %rdx, %rax
	testb     $1, -8(%rdi,%rax,8)
	je        .L00001958
.L00001901:
	movq      avma@GOTPCREL(%rip), %r12
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r12), %rbp
	movq      %rbp, %rsi
	subq      (%rax), %rsi
	leaq      -24(%rbp), %rbx
	cmpq      $23, %rsi
	jbe       .L000019B0
.L00001927:
	movq      $3170534137668829187, %rax
	movq      %rbx, (%r12)
	movq      %r13, -16(%rbp)
	movq      %rax, -24(%rbp)
	movq      $1, -8(%rbp)
	addq      $8, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00001953:
	.p2align 4,,10
	.p2align 3
.L00001958:
	movq      avma@GOTPCREL(%rip), %r12
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r12), %rbp
	movq      %rbp, %rcx
	subq      (%rax), %rcx
	leaq      -16(%rbp), %rbx
	cmpq      $15, %rcx
	jbe       .L000019A0
.L0000197A:
	movq      $3170534137668829186, %rax
	movq      %rbx, (%r12)
	movq      %r13, -8(%rbp)
	movq      %rax, -16(%rbp)
	addq      $8, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L0000199E:
	.p2align 4,,10
	.p2align 3
.L000019A0:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000019AC:
	jmp       .L0000197A
.L000019AE:
	.p2align 4,,10
	.p2align 3
.L000019B0:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000019BC:
	jmp       .L00001927
	.size	Z_to_F2x, .-Z_to_F2x
# ----------------------
.L000019C1:
	.p2align 4
# ----------------------
	.globl	ZX_to_F2x
	.type	ZX_to_F2x, @function
ZX_to_F2x:
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %rsi
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	andq      (%rdi), %rsi
	movq      avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	addq      $189, %rsi
	shrq      $6, %rsi
	leaq      0(,%rsi,8), %rdx
	movq      %rax, %r12
	movq      %rsi, %r13
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rsi
	jbe       .L00001A30
.L00001A24:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001A30:
	movq      $3170534137668829184, %rax
	movq      %r12, (%rbp)
	movq      $72057594037927935, %r11
	orq       %r13, %rax
	movq      %r11, %rcx
	movl      $1, %ebp
	movq      %rax, (%r12)
	movq      $4611615649683210240, %rax
	andq      8(%rbx), %rax
	movl      $64, %edx
	movq      %rax, 8(%r12)
	andq      (%rbx), %rcx
	movl      $2, %eax
	cmpq      $2, %rcx
	jg        .L00001AC1
.L00001A7D:
	jmp       .L00001AE0
.L00001A7F:
	.p2align 4,,10
	.p2align 3
.L00001A80:
	movq      %rdx, %rcx
	addq      $1, %rdx
.L00001A87:
	movq      (%rbx,%rax,8), %r9
	movq      8(%r9), %r8
	movq      %r8, %r10
	sarq      $62, %r10
	testq     %r10, %r10
	je        .L00001AB2
.L00001A9B:
	andq      %r11, %r8
	testb     $1, -8(%r9,%r8,8)
	je        .L00001AB2
.L00001AA6:
	movl      $1, %edi
	salq      %cl, %rdi
	orq       %rdi, (%r12,%rbp,8)
.L00001AB2:
	movq      %r11, %rcx
	andq      (%rbx), %rcx
	addq      $1, %rax
	cmpq      %rax, %rcx
	jle       .L00001AE0
.L00001AC1:
	cmpq      $64, %rdx
	jne       .L00001A80
.L00001AC7:
	addq      $1, %rbp
	movl      $1, %edx
	xorl      %ecx, %ecx
	movq      $0, (%r12,%rbp,8)
	jmp       .L00001A87
.L00001ADC:
	.p2align 4,,10
	.p2align 3
.L00001AE0:
	addq      $8, %rsp
	movq      %r13, %rsi
	movq      %r12, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	jmp       Flx_renormalize@PLT
	.size	ZX_to_F2x, .-ZX_to_F2x
# ----------------------
.L00001AF5:
	.p2align 4
# ----------------------
	.globl	Flx_to_F2x
	.type	Flx_to_F2x, @function
Flx_to_F2x:
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %rsi
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	andq      (%rdi), %rsi
	movq      avma@GOTPCREL(%rip), %r12
	movq      (%r12), %rax
	addq      $189, %rsi
	shrq      $6, %rsi
	leaq      0(,%rsi,8), %rdx
	movq      %rax, %rbp
	movq      %rsi, %r13
	subq      %rdx, %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rsi
	jbe       .L00001B60
.L00001B54:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001B60:
	movq      $3170534137668829184, %rax
	movq      %rbp, (%r12)
	movq      $72057594037927935, %rdi
	orq       %r13, %rax
	movq      %rdi, %rcx
	movl      $1, %r9d
	movq      %rax, (%rbp)
	movq      8(%rbx), %rax
	movl      $64, %edx
	movq      %rax, 8(%rbp)
	andq      (%rbx), %rcx
	movl      $2, %eax
	cmpq      $2, %rcx
	jg        .L00001BD3
.L00001BA3:
	jmp       .L00001BF0
.L00001BA5:
	.p2align 4,,10
	.p2align 3
.L00001BA8:
	movq      %rdx, %rcx
	addq      $1, %rdx
.L00001BAF:
	cmpq      $0, (%rbx,%rax,8)
	je        .L00001BC4
.L00001BB6:
	movl      $1, %r8d
	salq      %cl, %r8
	orq       %r8, (%rbp,%r9,8)
.L00001BC4:
	movq      %rdi, %rcx
	andq      (%rbx), %rcx
	addq      $1, %rax
	cmpq      %rax, %rcx
	jle       .L00001BF0
.L00001BD3:
	cmpq      $64, %rdx
	jne       .L00001BA8
.L00001BD9:
	addq      $1, %r9
	movl      $1, %edx
	xorl      %ecx, %ecx
	movq      $0, (%rbp,%r9,8)
	jmp       .L00001BAF
.L00001BEF:
	.p2align 4,,10
	.p2align 3
.L00001BF0:
	addq      $8, %rsp
	movq      %r13, %rsi
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	jmp       Flx_renormalize@PLT
	.size	Flx_to_F2x, .-Flx_to_F2x
# ----------------------
.L00001C05:
	.p2align 4
# ----------------------
	.globl	F2x_to_F2v
	.type	F2x_to_F2v, @function
F2x_to_F2v:
	pushq     %r15
	pushq     %r14
	movq      %rsi, %r14
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %r12
	pushq     %rbp
	pushq     %rbx
	leaq      191(%rsi), %rbx
	movq      %rdi, %r13
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %r15
	shrq      $6, %rbx
	leaq      0(,%rbx,8), %rdx
	andq      (%rdi), %r12
	movq      (%r15), %rax
	movq      %rax, %rbp
	subq      %rdx, %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L00001C73
.L00001C67:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001C73:
	movq      $-72057594037927936, %rax
	movq      %rbp, (%r15)
	testq     %rax, %rbx
	je        .L00001C98
.L00001C85:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001C98:
	movq      $3170534137668829184, %rax
	movq      %r14, 8(%rbp)
	orq       %rbx, %rax
	cmpq      $2, %r12
	movq      %rax, (%rbp)
	jle       .L00001DB8
.L00001CB7:
	leaq      16(%rbp), %rsi
	leaq      32(%r13), %rcx
	leaq      16(%r13), %rax
	leaq      -2(%r12), %rdx
	cmpq      %rcx, %rsi
	leaq      32(%rbp), %rcx
	setae     %sil
	cmpq      %rcx, %rax
	setae     %cl
	orb       %cl, %sil
	je        .L00001D98
.L00001CE2:
	cmpq      $24, %rdx
	jbe       .L00001D98
.L00001CEC:
	salq      $60, %rax
	movl      $2, %r8d
	shrq      $63, %rax
	cmpq      %rax, %rdx
	cmovbe    %rdx, %rax
	testq     %rax, %rax
	je        .L00001D11
.L00001D06:
	movq      16(%r13), %rcx
	movb      $3, %r8b
	movq      %rcx, 16(%rbp)
.L00001D11:
	movq      %rdx, %rdi
	leaq      16(,%rax,8), %rsi
	xorl      %edx, %edx
	subq      %rax, %rdi
	xorl      %eax, %eax
	leaq      -2(%rdi), %rcx
	leaq      (%r13,%rsi), %r9
	addq      %rbp, %rsi
	shrq      $1, %rcx
	addq      $1, %rcx
	leaq      (%rcx,%rcx), %r10
.L00001D3A:
	movdqa    (%r9,%rax), %xmm0
	addq      $1, %rdx
	movups    %xmm0, (%rsi,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L00001D3A
.L00001D51:
	addq      %r10, %r8
	cmpq      %r10, %rdi
	je        .L00001D63
.L00001D59:
	movq      (%r13,%r8,8), %rax
	movq      %rax, (%rbp,%r8,8)
.L00001D63:
	cmpq      %rbx, %r12
	jge       .L00001D7F
.L00001D68:
	subq      %r12, %rbx
	leaq      (%rbp,%r12,8), %rdi
	xorl      %esi, %esi
	leaq      0(,%rbx,8), %rdx
	call      memset@PLT
.L00001D7F:
	addq      $8, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001D91:
	.p2align 4,,10
	.p2align 3
.L00001D98:
	movl      $2, %eax
	.p2align 4,,10
	.p2align 3
.L00001DA0:
	movq      (%r13,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
	addq      $1, %rax
	cmpq      %r12, %rax
	jne       .L00001DA0
.L00001DB3:
	jmp       .L00001D63
.L00001DB5:
	.p2align 4,,10
	.p2align 3
.L00001DB8:
	movl      $2, %r12d
	jmp       .L00001D63
	.size	F2x_to_F2v, .-F2x_to_F2v
# ----------------------
	.globl	F2x_add
	.type	F2x_add, @function
F2x_add:
	pushq     %r15
	pushq     %r14
	movq      %rsi, %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbx
	movq      %rbx, %r13
	subq      $8, %rsp
	andq      (%rdi), %r13
	andq      (%rsi), %rbx
	cmpq      %rbx, %r13
	jge       .L00001DFB
.L00001DEC:
	movq      %r13, %rax
	movq      %rsi, %r12
	movq      %rbx, %r13
	movq      %rdi, %r14
	movq      %rax, %rbx
.L00001DFB:
	movq      avma@GOTPCREL(%rip), %r15
	leaq      0(,%r13,8), %rdx
	movq      (%r15), %rax
	movq      %rax, %rbp
	subq      %rdx, %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %r13
	jbe       .L00001E32
.L00001E26:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001E32:
	movq      $3170534137668829184, %rax
	movq      %rbp, (%r15)
	orq       %r13, %rax
	cmpq      $2, %rbx
	movq      %rax, (%rbp)
	movq      8(%r12), %rax
	movq      %rax, 8(%rbp)
	jle       .L00002048
.L00001E59:
	leaq      16(%rbp), %r8
	leaq      32(%r12), %rcx
	leaq      32(%rbp), %rdi
	leaq      16(%r12), %rax
	leaq      -2(%rbx), %rdx
	cmpq      %rcx, %r8
	setae     %sil
	cmpq      %rax, %rdi
	setbe     %cl
	orl       %ecx, %esi
	leaq      32(%r14), %rcx
	cmpq      %rcx, %r8
	leaq      16(%r14), %rcx
	setae     %r8b
	cmpq      %rcx, %rdi
	setbe     %cl
	orl       %r8d, %ecx
	testb     %cl, %sil
	je        .L00002020
.L00001E9F:
	cmpq      $14, %rdx
	jbe       .L00002020
.L00001EA9:
	salq      $60, %rax
	movl      $2, %edi
	shrq      $63, %rax
	cmpq      %rax, %rdx
	cmovbe    %rdx, %rax
	testq     %rax, %rax
	je        .L00001ED2
.L00001EC2:
	movq      16(%r14), %rcx
	xorq      16(%r12), %rcx
	movb      $3, %dil
	movq      %rcx, 16(%rbp)
.L00001ED2:
	subq      %rax, %rdx
	leaq      16(,%rax,8), %rsi
	xorl      %eax, %eax
	leaq      -2(%rdx), %rcx
	movq      %rdx, %r8
	xorl      %edx, %edx
	leaq      (%r12,%rsi), %r11
	leaq      (%r14,%rsi), %r10
	addq      %rbp, %rsi
	shrq      $1, %rcx
	addq      $1, %rcx
	leaq      (%rcx,%rcx), %r9
.L00001EFE:
	movdqu    (%r10,%rax), %xmm0
	addq      $1, %rdx
	pxor      (%r11,%rax), %xmm0
	movups    %xmm0, (%rsi,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L00001EFE
.L00001F1B:
	cmpq      %r9, %r8
	leaq      (%rdi,%r9), %rax
	je        .L00001F31
.L00001F24:
	movq      (%r14,%rax,8), %rdx
	xorq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
.L00001F31:
	cmpq      %rbx, %r13
	jle       .L00001FEA
.L00001F3A:
	leaq      16(,%rbx,8), %rdx
	movq      %r13, %rcx
	subq      %rbx, %rcx
	leaq      -16(%rdx), %rsi
	leaq      (%rbp,%rdx), %rdi
	leaq      (%r12,%rsi), %rax
	leaq      (%rbp,%rsi), %r8
	cmpq      %rdi, %rax
	setae     %dil
	addq      %r12, %rdx
	cmpq      %rdx, %r8
	setae     %dl
	orb       %dil, %dl
	je        .L00002008
.L00001F73:
	cmpq      $24, %rcx
	jbe       .L00002008
.L00001F7D:
	salq      $60, %rax
	shrq      $63, %rax
	cmpq      %rax, %rcx
	cmovbe    %rcx, %rax
	testq     %rax, %rax
	je        .L00001F9E
.L00001F91:
	movq      (%r12,%rbx,8), %rdx
	movq      %rdx, (%rbp,%rbx,8)
	addq      $1, %rbx
.L00001F9E:
	movq      %rcx, %rdi
	leaq      (%rsi,%rax,8), %rsi
	xorl      %edx, %edx
	subq      %rax, %rdi
	xorl      %eax, %eax
	leaq      -2(%rdi), %rcx
	leaq      (%r12,%rsi), %r8
	addq      %rbp, %rsi
	shrq      $1, %rcx
	addq      $1, %rcx
	leaq      (%rcx,%rcx), %r9
.L00001FC2:
	movdqa    (%r8,%rax), %xmm0
	addq      $1, %rdx
	movups    %xmm0, (%rsi,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L00001FC2
.L00001FD9:
	addq      %r9, %rbx
	cmpq      %r9, %rdi
	je        .L00001FEA
.L00001FE1:
	movq      (%r12,%rbx,8), %rax
	movq      %rax, (%rbp,%rbx,8)
.L00001FEA:
	addq      $8, %rsp
	movq      %r13, %rsi
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       Flx_renormalize@PLT
.L00002003:
	.p2align 4,,10
	.p2align 3
.L00002008:
	movq      (%r12,%rbx,8), %rax
	movq      %rax, (%rbp,%rbx,8)
	addq      $1, %rbx
	cmpq      %r13, %rbx
	jne       .L00002008
.L0000201A:
	jmp       .L00001FEA
.L0000201C:
	.p2align 4,,10
	.p2align 3
.L00002020:
	movl      $2, %eax
	.p2align 4,,10
	.p2align 3
.L00002028:
	movq      (%r14,%rax,8), %rdx
	xorq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
	addq      $1, %rax
	cmpq      %rbx, %rax
	jne       .L00002028
.L0000203E:
	jmp       .L00001F31
.L00002043:
	.p2align 4,,10
	.p2align 3
.L00002048:
	movl      $2, %ebx
	jmp       .L00001F31
	.size	F2x_add, .-F2x_add
# ----------------------
.L00002052:
	.p2align 4
# ----------------------
	.globl	F2x_1_add
	.type	F2x_1_add, @function
F2x_1_add:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $8, %rsp
	andq      (%rdi), %rbp
	cmpq      $2, %rbp
	je        .L000021C8
.L00002084:
	movq      avma@GOTPCREL(%rip), %r13
	leaq      0(,%rbp,8), %rdx
	movq      (%r13), %rax
	movq      %rax, %rbx
	subq      %rdx, %rbx
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	ja        .L000021B0
.L000020B4:
	movq      $3170534137668829184, %rax
	movq      %rbx, (%r13)
	orq       %rbp, %rax
	movq      %rax, (%rbx)
	movq      8(%r12), %rax
	movq      %rax, 8(%rbx)
	movq      16(%r12), %rax
	xorq      $1, %rax
	cmpq      $3, %rbp
	movq      %rax, 16(%rbx)
	jle       .L00002250
.L000020E8:
	leaq      40(%r12), %rsi
	leaq      24(%rbx), %rcx
	leaq      24(%r12), %rax
	leaq      -3(%rbp), %rdx
	cmpq      %rcx, %rsi
	leaq      40(%rbx), %rcx
	setbe     %sil
	cmpq      %rcx, %rax
	setae     %cl
	orb       %cl, %sil
	je        .L00002230
.L00002114:
	cmpq      $24, %rdx
	jbe       .L00002230
.L0000211E:
	salq      $60, %rax
	movl      $3, %r8d
	shrq      $63, %rax
	cmpq      %rax, %rdx
	cmovbe    %rdx, %rax
	testq     %rax, %rax
	je        .L00002144
.L00002138:
	movq      24(%r12), %rcx
	movb      $4, %r8b
	movq      %rcx, 24(%rbx)
.L00002144:
	movq      %rdx, %rsi
	subq      %rax, %rbp
	subq      %rax, %rsi
	leaq      -2(%rsi), %rcx
	shrq      $1, %rcx
	addq      $1, %rcx
	cmpq      $4, %rbp
	leaq      (%rcx,%rcx), %r10
	je        .L00002197
.L00002162:
	leaq      24(,%rax,8), %rdi
	xorl      %edx, %edx
	xorl      %eax, %eax
	leaq      (%r12,%rdi), %r9
	addq      %rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L00002178:
	movdqa    (%r9,%rax), %xmm0
	addq      $1, %rdx
	movups    %xmm0, (%rdi,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L00002178
.L0000218F:
	addq      %r10, %r8
	cmpq      %r10, %rsi
	je        .L0000219F
.L00002197:
	movq      (%r12,%r8,8), %rax
	movq      %rax, (%rbx,%r8,8)
.L0000219F:
	addq      $8, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L000021AD:
	.p2align 4,,10
	.p2align 3
.L000021B0:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000021BC:
	jmp       .L000020B4
.L000021C1:
	.p2align 4,,10
	.p2align 3
.L000021C8:
	movq      avma@GOTPCREL(%rip), %r13
	movq      bot@GOTPCREL(%rip), %rax
	movq      8(%rdi), %r12
	movq      (%r13), %rbp
	movq      %rbp, %rdi
	subq      (%rax), %rdi
	leaq      -24(%rbp), %rbx
	cmpq      $23, %rdi
	jbe       .L00002220
.L000021EE:
	movq      $3170534137668829187, %rax
	movq      %rbx, (%r13)
	movq      %r12, -16(%rbp)
	movq      %rax, -24(%rbp)
	movq      $1, -8(%rbp)
	addq      $8, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L0000221A:
	.p2align 4,,10
	.p2align 3
.L00002220:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L0000222C:
	jmp       .L000021EE
.L0000222E:
	.p2align 4,,10
	.p2align 3
.L00002230:
	movl      $3, %eax
	.p2align 4,,10
	.p2align 3
.L00002238:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	addq      $1, %rax
	cmpq      %rbp, %rax
	jne       .L00002238
.L00002249:
	jmp       .L0000219F
.L0000224E:
	.p2align 4,,10
	.p2align 3
.L00002250:
	jne       .L0000219F
.L00002256:
	addq      $8, %rsp
	movq      %rbx, %rdi
	movl      $3, %esi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	jmp       Flx_renormalize@PLT
	.size	F2x_1_add, .-F2x_1_add
# ----------------------
.L0000226D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2x_mul
	.type	F2x_mul, @function
F2x_mul:
	movq      $72057594037927935, %rdx
	pushq     %rbx
	movq      %rdi, %rbx
	movq      %rdx, %rcx
	andq      (%rdi), %rdx
	andq      (%rsi), %rcx
	leaq      16(%rdi), %rdi
	addq      $16, %rsi
	subq      $2, %rdx
	subq      $2, %rcx
	call      F2x_mulspec
.L0000229C:
	movq      8(%rbx), %rdx
	movq      %rdx, 8(%rax)
	popq      %rbx
	ret       
	.size	F2x_mul, .-F2x_mul
# ----------------------
.L000022A6:
	.p2align 4
# ----------------------
	.local	F2x_mulspec
	.type	F2x_mulspec, @function
F2x_mulspec:
	pushq     %r15
	pushq     %r14
	movq      %rsi, %r15
	pushq     %r13
	pushq     %r12
	movq      %rcx, %r14
	pushq     %rbp
	pushq     %rbx
	xorl      %ebx, %ebx
	movq      %rdi, %rbp
	subq      $72, %rsp
	testq     %rdx, %rdx
	jne       .L000022DE
.L000022CE:
	jmp       .L00002330
.L000022D0:
	addq      $8, %rbp
	addq      $1, %rbx
	subq      $1, %rdx
	je        .L00002330
.L000022DE:
	cmpq      $0, (%rbp)
	je        .L000022D0
.L000022E5:
	testq     %r14, %r14
	jne       .L00002302
.L000022EA:
	jmp       .L00002390
.L000022EF:
	.p2align 4,,10
	.p2align 3
.L000022F0:
	addq      $8, %r15
	addq      $1, %rbx
	subq      $1, %r14
	je        .L00002390
.L00002302:
	cmpq      $0, (%r15)
	je        .L000022F0
.L00002308:
	cmpq      %rdx, %r14
	jle       .L000023A3
.L00002311:
	testq     %rdx, %rdx
	je        .L00002338
.L00002316:
	movq      %rdx, %rax
	movq      %r14, %rdx
	movq      %rax, %r14
	movq      %rbp, %rax
	movq      %r15, %rbp
	movq      %rax, %r15
	jmp       .L000023A3
.L0000232A:
	.p2align 4,,10
	.p2align 3
.L00002330:
	testq     %r14, %r14
	jne       .L00002302
.L00002335:
	.p2align 4,,10
	.p2align 3
.L00002338:
	movq      avma@GOTPCREL(%rip), %r12
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r12), %rbx
	movq      %rbx, %rsi
	subq      (%rax), %rsi
	leaq      -16(%rbx), %rbp
	cmpq      $15, %rsi
	jbe       .L0000254B
.L0000235E:
	movq      $3170534137668829186, %rax
	movq      %rbp, (%r12)
	movq      $0, -8(%rbx)
	movq      %rax, -16(%rbx)
	addq      $72, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000238A:
	.p2align 4,,10
	.p2align 3
.L00002390:
	testq     %rdx, %rdx
	jns       .L00002338
.L00002395:
	movq      %rbp, %rax
	movq      %rdx, %r14
	movq      %r15, %rbp
	xorl      %edx, %edx
	movq      %rax, %r15
.L000023A3:
	movq      avma@GOTPCREL(%rip), %r12
	cmpq      $1, %rdx
	movq      (%r12), %rax
	movq      %rax, 24(%rsp)
	jle       .L0000255C
.L000023BD:
	movq      %rdx, %r13
	sarq      $1, %r13
	subq      %r13, %rdx
	leaq      0(,%rdx,8), %rax
	testq     %rdx, %rdx
	movq      %rdx, %r12
	leaq      (%rbp,%rax), %rdi
	movq      %rdi, 16(%rsp)
	je        .L000026B6
.L000023E4:
	cmpq      $0, -8(%rbp,%rax)
	movq      %rdx, %r11
	je        .L00002400
.L000023EF:
	jmp       .L00002406
.L000023F1:
	.p2align 4,,10
	.p2align 3
.L000023F8:
	cmpq      $0, -8(%rbp,%r11,8)
	jne       .L00002406
.L00002400:
	subq      $1, %r11
	jne       .L000023F8
.L00002406:
	cmpq      %r14, %r12
	jge       .L00002520
.L0000240F:
	subq      %r12, %r14
	cmpq      $0, -8(%r15,%rax)
	leaq      (%r15,%rax), %rsi
	movq      %r12, %r10
	movq      %rsi, 32(%rsp)
	je        .L00002514
.L0000242A:
	.p2align 4,,10
	.p2align 3
.L00002430:
	movq      %r10, %rcx
	movq      %r11, %rdx
	movq      %rbp, %rdi
	movq      %r15, %rsi
	movq      %r10, 56(%rsp)
	movq      %r11, 48(%rsp)
	call      F2x_mulspec
.L0000244B:
	movq      32(%rsp), %rsi
	movq      16(%rsp), %rdi
	movq      %r14, %rcx
	movq      %r13, %rdx
	movq      %rax, 8(%rsp)
	call      F2x_mulspec
.L00002465:
	movq      48(%rsp), %r11
	movq      16(%rsp), %rdi
	movq      %rbp, %rsi
	movq      %r13, %rdx
	movq      %rax, 40(%rsp)
	movq      %r11, %rcx
	call      F2x_addspec
.L00002482:
	movq      56(%rsp), %r10
	movq      32(%rsp), %rdi
	movq      %r14, %rdx
	movq      %rax, %rbp
	movq      %r15, %rsi
	movq      %r10, %rcx
	call      F2x_addspec
.L0000249D:
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      F2x_mul@PLT
.L000024A8:
	movq      40(%rsp), %r14
	movq      8(%rsp), %rsi
	movq      %rax, %rbp
	movq      %r14, %rdi
	call      F2x_add@PLT
.L000024BD:
	movq      %rbp, %rdi
	movq      %rax, %rsi
	call      F2x_add@PLT
.L000024C8:
	movq      %r12, %rdx
	movq      %rax, %rsi
	movq      %r14, %rdi
	call      F2x_addshift
.L000024D6:
	movq      8(%rsp), %rsi
	movq      %r12, %rdx
	movq      %rax, %rdi
	call      F2x_addshift
.L000024E6:
	movq      %rbx, %rdx
	movq      %rax, %rsi
.L000024EC:
	movq      24(%rsp), %rdi
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       .LTHUNK1166
.L00002504:
	.p2align 4,,10
	.p2align 3
.L00002508:
	cmpq      $0, -8(%r15,%r10,8)
	jne       .L00002430
.L00002514:
	subq      $1, %r10
	jne       .L00002508
.L0000251A:
	jmp       .L00002430
.L0000251F:
	.p2align 4,,10
	.p2align 3
.L00002520:
	movq      %r14, %rcx
	movq      %r11, %rdx
	movq      %r15, %rsi
	movq      %rbp, %rdi
	call      F2x_mulspec
.L00002531:
	movq      16(%rsp), %rdi
	movq      %r14, %rcx
	movq      %r13, %rdx
	movq      %r15, %rsi
	movq      %rax, 8(%rsp)
	call      F2x_mulspec
.L00002549:
	jmp       .L000024D6
.L0000254B:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002557:
	jmp       .L0000235E
.L0000255C:
	movq      (%r15), %rdi
	movq      (%rbp), %rbp
	movq      %rdi, %r8
	movq      %rbp, %r9
	movl      %ebp, %ebp
	shrq      $32, %r9
	shrq      $32, %r8
	testq     %rbp, %rbp
	movl      %edi, %edi
	jne       .L000025F0
.L0000257A:
	testq     %r9, %r9
	jne       .L000026D8
.L00002583:
	movl      $24, %ecx
	movq      $3170534137668829187, %r14
	xorl      %r13d, %r13d
	movl      $3, %eax
	xorl      %r15d, %r15d
.L0000259D:
	movq      24(%rsp), %rdi
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rdi, %rsi
	subq      (%rdx), %rdi
	subq      %rcx, %rsi
	movq      %rdi, %rdx
	shrq      $3, %rdx
	cmpq      %rax, %rdx
	jae       .L000025D4
.L000025BE:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	call      pari_err@PLT
.L000025CF:
	movq      8(%rsp), %rsi
.L000025D4:
	testq     %r15, %r15
	movq      %rsi, (%r12)
	movq      %r13, 16(%rsi)
	movq      %r14, (%rsi)
	je        .L000025E8
.L000025E4:
	movq      %r15, 24(%rsi)
.L000025E8:
	movq      %rbx, %rdx
	jmp       .L000024EC
.L000025F0:
	xorl      %eax, %eax
	xorl      %esi, %esi
	xorl      %ecx, %ecx
	.p2align 4
.L00002600:
	movq      %rbp, %rdx
	movq      %rdi, %r11
	movq      %r8, %r10
	salq      %cl, %r11
	salq      %cl, %r10
	shrq      %cl, %rdx
	xorq      %rsi, %r11
	xorq      %rax, %r10
	andl      $1, %edx
	cmovne    %r11, %rsi
	cmovne    %r10, %rax
	addq      $1, %rcx
	cmpq      $32, %rcx
	jne       .L00002600
.L0000262D:
	xorl      %r11d, %r11d
	testq     %r9, %r9
	je        .L0000266D
.L00002635:
	xorl      %r11d, %r11d
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L00002640:
	movq      %r9, %rdx
	movq      %r8, %rbp
	movq      %rdi, %r10
	salq      %cl, %rbp
	salq      %cl, %r10
	shrq      %cl, %rdx
	xorq      %r11, %rbp
	xorq      %rax, %r10
	andl      $1, %edx
	cmovne    %rbp, %r11
	cmovne    %r10, %rax
	addq      $1, %rcx
	cmpq      $32, %rcx
	jne       .L00002640
.L0000266D:
	movq      %rax, %r13
	shrq      $32, %rax
	movq      $3170534137668829187, %r14
	salq      $32, %r13
	movq      %rax, %r15
	xorq      %r11, %r15
	xorq      %rsi, %r13
	cmpq      %r11, %rax
	setne     %dl
	movq      $3170534137668829188, %rax
	cmovne    %rax, %r14
	movzbl    %dl, %ecx
	movzbl    %dl, %eax
	leaq      24(,%rcx,8), %rcx
	addq      $3, %rax
	jmp       .L0000259D
.L000026B6:
	xorl      %r11d, %r11d
	testq     %r14, %r14
	jle       .L00002520
.L000026C2:
	addq      %r15, %rax
	xorl      %r11d, %r11d
	xorl      %r10d, %r10d
	movq      %rax, 32(%rsp)
	jmp       .L00002430
.L000026D5:
	.p2align 4,,10
	.p2align 3
.L000026D8:
	xorl      %esi, %esi
	xorl      %eax, %eax
	jmp       .L00002635
	.size	F2x_mulspec, .-F2x_mulspec
# ----------------------
.L000026E1:
	.p2align 4
# ----------------------
	.globl	F2x_sqr
	.type	F2x_sqr, @function
F2x_sqr:
	pushq     %r14
	pushq     %r13
	movq      $72057594037927935, %r13
	pushq     %r12
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	addq      $-128, %rsp
	andq      (%rdi), %r13
	movq      avma@GOTPCREL(%rip), %r14
	movdqa    .LC22(%rip), %xmm0
	movaps    %xmm0, (%rsp)
	leaq      -2(%r13,%r13), %r12
	movq      (%r14), %rax
	leaq      0(,%r12,8), %rdx
	movdqa    .LC23(%rip), %xmm0
	movq      %rax, %rbx
	subq      %rdx, %rbx
	movq      bot@GOTPCREL(%rip), %rdx
	movaps    %xmm0, 16(%rsp)
	movdqa    .LC24(%rip), %xmm0
	subq      (%rdx), %rax
	movaps    %xmm0, 32(%rsp)
	shrq      $3, %rax
	movdqa    .LC25(%rip), %xmm0
	cmpq      %rax, %r12
	movaps    %xmm0, 48(%rsp)
	movdqa    .LC26(%rip), %xmm0
	movaps    %xmm0, 64(%rsp)
	movdqa    .LC27(%rip), %xmm0
	movaps    %xmm0, 80(%rsp)
	movdqa    .LC28(%rip), %xmm0
	movaps    %xmm0, 96(%rsp)
	movdqa    .LC29(%rip), %xmm0
	movaps    %xmm0, 112(%rsp)
	jbe       .L000027AF
.L000027A3:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000027AF:
	movq      $-72057594037927936, %rax
	movq      %rbx, (%r14)
	testq     %rax, %r12
	je        .L000027D4
.L000027C1:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000027D4:
	movq      $3170534137668829184, %rax
	leaq      -2(%r13,%r13), %rsi
	movl      $2, %ecx
	orq       %r12, %rax
	cmpq      $2, %r13
	movq      %rax, (%rbx)
	movq      8(%rbp), %rax
	movq      %rax, 8(%rbx)
	jle       .L00002977
.L00002800:
	movq      8(%rbp,%rcx,4), %r8
	movq      $0, (%rbx,%rcx,8)
	movq      %r8, %rax
	movl      %r8d, %edx
	shrq      $32, %rax
	testq     %rdx, %rdx
	je        .L000028BC
.L00002820:
	movq      %rdx, %rdi
	andl      $15, %r8d
	shrq      $28, %rdi
	movq      (%rsp,%rdi,8), %rdi
	salq      $56, %rdi
	orq       (%rsp,%r8,8), %rdi
	movq      %rdi, %r8
	movq      %rdx, %rdi
	shrq      $4, %rdi
	andl      $15, %edi
	movq      (%rsp,%rdi,8), %rdi
	salq      $8, %rdi
	orq       %rdi, %r8
	movq      %rdx, %rdi
	shrq      $8, %rdi
	andl      $15, %edi
	movq      (%rsp,%rdi,8), %rdi
	salq      $16, %rdi
	orq       %rdi, %r8
	movq      %rdx, %rdi
	shrq      $12, %rdi
	andl      $15, %edi
	movq      (%rsp,%rdi,8), %rdi
	salq      $24, %rdi
	orq       %rdi, %r8
	movq      %rdx, %rdi
	shrq      $16, %rdi
	andl      $15, %edi
	movq      (%rsp,%rdi,8), %rdi
	salq      $32, %rdi
	orq       %rdi, %r8
	movq      %rdx, %rdi
	shrq      $24, %rdx
	shrq      $20, %rdi
	andl      $15, %edx
	andl      $15, %edi
	movq      (%rsp,%rdi,8), %rdi
	salq      $40, %rdi
	orq       %rdi, %r8
	movq      (%rsp,%rdx,8), %rdi
	movq      %r8, %rdx
	salq      $48, %rdi
	orq       %rdi, %rdx
	movq      %rdx, (%rbx,%rcx,8)
.L000028BC:
	testq     %rax, %rax
	movq      $0, 8(%rbx,%rcx,8)
	je        .L0000296A
.L000028CE:
	movq      %rax, %rdx
	shrq      $28, %rdx
	movq      (%rsp,%rdx,8), %rdi
	movq      %rax, %rdx
	andl      $15, %edx
	salq      $56, %rdi
	orq       (%rsp,%rdx,8), %rdi
	movq      %rax, %rdx
	shrq      $4, %rdx
	andl      $15, %edx
	movq      (%rsp,%rdx,8), %rdx
	salq      $8, %rdx
	orq       %rdx, %rdi
	movq      %rax, %rdx
	shrq      $8, %rdx
	andl      $15, %edx
	movq      (%rsp,%rdx,8), %rdx
	salq      $16, %rdx
	orq       %rdx, %rdi
	movq      %rax, %rdx
	shrq      $12, %rdx
	andl      $15, %edx
	movq      (%rsp,%rdx,8), %rdx
	salq      $24, %rdx
	orq       %rdx, %rdi
	movq      %rax, %rdx
	shrq      $16, %rdx
	andl      $15, %edx
	movq      (%rsp,%rdx,8), %rdx
	salq      $32, %rdx
	orq       %rdx, %rdi
	movq      %rax, %rdx
	shrq      $24, %rax
	shrq      $20, %rdx
	andl      $15, %eax
	andl      $15, %edx
	movq      (%rsp,%rdx,8), %rdx
	salq      $40, %rdx
	orq       %rdx, %rdi
	movq      (%rsp,%rax,8), %rdx
	movq      %rdi, %rax
	salq      $48, %rdx
	orq       %rdx, %rax
	movq      %rax, 8(%rbx,%rcx,8)
.L0000296A:
	addq      $2, %rcx
	cmpq      %rsi, %rcx
	jne       .L00002800
.L00002977:
	subq      $-128, %rsp
	movq      %r12, %rsi
	movq      %rbx, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       Flx_renormalize@PLT
	.size	F2x_sqr, .-F2x_sqr
# ----------------------
.L0000298E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2x_rem
	.type	F2x_rem, @function
F2x_rem:
	pushq     %r15
	pushq     %r14
	movq      %rsi, %r15
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $40, %rsp
	movq      (%rdi), %rbx
	movq      %rsi, %rdi
	call      F2x_degree@PLT
.L000029AF:
	testq     %rax, %rax
	movq      %rax, %rsi
	je        .L00002E4A
.L000029BB:
	movq      $72057594037927935, %rax
	andq      %rax, %rbx
	cmpq      $2, %rbx
	je        .L00002EAB
.L000029D2:
	movq      -8(%r12,%rbx,8), %rax
	leaq      -2(%rbx), %r9
	movq      $-4294967296, %rdx
	salq      $6, %r9
	testq     %rdx, %rax
	jne       .L00002D17
.L000029F2:
	movl      $44, %ecx
	movl      $60, %edx
.L000029FC:
	testq     $-65536, %rax
	je        .L00002A0A
.L00002A04:
	shrq      $16, %rax
	movl      %ecx, %edx
.L00002A0A:
	testq     $-256, %rax
	je        .L00002A19
.L00002A12:
	subl      $8, %edx
	shrq      $8, %rax
.L00002A19:
	testq     $-16, %rax
	je        .L00002A28
.L00002A21:
	subl      $4, %edx
	shrq      $4, %rax
.L00002A28:
	leaq      __bfffo_tabshi.20233(%rip), %rcx
	addl      (%rcx,%rax,4), %edx
	movslq    %edx, %rax
	subq      %rax, %r9
	subq      $1, %r9
.L00002A3C:
	movq      avma@GOTPCREL(%rip), %rdx
	movq      bot@GOTPCREL(%rip), %rax
	movq      $72057594037927935, %r13
	andq      (%r12), %r13
	movq      (%rdx), %rcx
	leaq      0(,%r13,8), %r14
	movq      %rcx, %rdi
	subq      (%rax), %rdi
	movq      %rcx, %rbp
	subq      %r14, %rbp
	movq      %rdi, %rax
	shrq      $3, %rax
	cmpq      %rax, %r13
	jbe       .L00002AAD
.L00002A7B:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 24(%rsp)
	movq      %r9, 16(%rsp)
	movq      %rcx, 8(%rsp)
	movq      %rsi, (%rsp)
	call      pari_err@PLT
.L00002A9A:
	movq      24(%rsp), %rdx
	movq      16(%rsp), %r9
	movq      8(%rsp), %rcx
	movq      (%rsp), %rsi
.L00002AAD:
	movq      %rbp, (%rdx)
	movq      $-72057594037927937, %rax
	andq      (%r12), %rax
	leaq      -1(%r13), %rdi
	testq     %rdi, %rdi
	movq      %rax, (%rbp)
	movq      %rdi, %rax
	jle       .L00002B80
.L00002AD2:
	leaq      -16(%r14), %r8
	leaq      (%r12,%r14), %r10
	leaq      (%rbp,%r8), %r11
	leaq      (%r12,%r8), %rdx
	cmpq      %r10, %r11
	leaq      (%rbp,%r14), %r10
	setae     %r11b
	cmpq      %r10, %rdx
	setae     %r10b
	orb       %r10b, %r11b
	je        .L00002CF0
.L00002AFF:
	cmpq      $24, %rdi
	jbe       .L00002CF0
.L00002B09:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdi, %rdx
	cmova     %rdi, %rdx
	testq     %rdx, %rdx
	je        .L00002B29
.L00002B1C:
	movq      -8(%r12,%r14), %rax
	movq      %rax, -8(%rcx)
	leaq      -2(%r13), %rax
.L00002B29:
	subq      %rdx, %rdi
	subq      %rdx, %r13
	leaq      -2(%rdi), %r10
	shrq      $1, %r10
	addq      $1, %r10
	cmpq      $2, %r13
	leaq      (%r10,%r10), %r11
	je        .L00002B77
.L00002B44:
	negq      %rdx
	xorl      %ecx, %ecx
	leaq      (%r8,%rdx,8), %r8
	xorl      %edx, %edx
	leaq      (%r12,%r8), %r13
	addq      %rbp, %r8
.L00002B56:
	movdqa    (%r13,%rdx), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%r8,%rdx)
	subq      $16, %rdx
	cmpq      %r10, %rcx
	jb        .L00002B56
.L00002B6F:
	subq      %r11, %rax
	cmpq      %r11, %rdi
	je        .L00002B80
.L00002B77:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
.L00002B80:
	cmpq      %r9, %rsi
	jg        .L00002CD4
.L00002B89:
	leaq      16(%r15), %rax
	movq      %rbp, %r13
	movq      $72057594037927935, %rdi
	subq      %r15, %r13
	movq      %r9, %r8
	movq      %rax, (%rsp)
	leaq      32(%r15), %rax
	movq      %rax, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L00002BB0:
	subq      %rsi, %r8
	movq      %rdi, %r14
	andq      (%r15), %r14
	movq      %r8, %r10
	sarq      $6, %r10
	andl      $63, %r8d
	jne       .L00002DA0
.L00002BCA:
	cmpq      $2, %r14
	jle       .L00002C91
.L00002BD4:
	leaq      32(,%r10,8), %rax
	leaq      -2(%r14), %rcx
	leaq      2(%r10), %rdx
	leaq      -16(%rbp,%rax), %r8
	cmpq      16(%rsp), %r8
	setae     %r9b
	addq      %rbp, %rax
	cmpq      %rax, (%rsp)
	setae     %al
	orb       %al, %r9b
	je        .L00002E1F
.L00002C05:
	cmpq      $9, %rcx
	jbe       .L00002E1F
.L00002C0F:
	movq      %r8, %rax
	movl      $2, %r12d
	salq      $60, %rax
	shrq      $63, %rax
	cmpq      %rcx, %rax
	cmova     %rcx, %rax
	testq     %rax, %rax
	je        .L00002C36
.L00002C2C:
	movq      16(%r15), %r9
	xorq      %r9, (%r8)
	movb      $3, %r12b
.L00002C36:
	subq      %rax, %rcx
	leaq      16(,%rax,8), %r11
	addq      %rax, %rdx
	leaq      -2(%rcx), %r8
	leaq      (%rbp,%rdx,8), %r9
	xorl      %eax, %eax
	addq      %r15, %r11
	xorl      %edx, %edx
	shrq      $1, %r8
	addq      $1, %r8
	leaq      (%r8,%r8), %r14
.L00002C5F:
	movdqu    (%r11,%rax), %xmm0
	addq      $1, %rdx
	pxor      (%r9,%rax), %xmm0
	movaps    %xmm0, (%r9,%rax)
	addq      $16, %rax
	cmpq      %r8, %rdx
	jb        .L00002C5F
.L00002C7D:
	addq      %r14, %r12
	cmpq      %rcx, %r14
	je        .L00002C91
.L00002C85:
	addq      %r12, %r10
	movq      (%r15,%r12,8), %rax
	xorq      %rax, (%rbp,%r10,8)
.L00002C91:
	cmpq      $2, %rbx
	jle       .L00002D2A
.L00002C9B:
	movq      -8(%rbp,%rbx,8), %rax
	testq     %rax, %rax
	je        .L00002CBA
.L00002CA5:
	jmp       .L00002D31
.L00002CAA:
	.p2align 4,,10
	.p2align 3
.L00002CB0:
	movq      -8(%rbp,%rbx,8), %rax
	testq     %rax, %rax
	jne       .L00002D31
.L00002CBA:
	subq      $1, %rbx
	cmpq      $2, %rbx
	jne       .L00002CB0
.L00002CC4:
	movq      $-1, %r8
.L00002CCB:
	cmpq      %r8, %rsi
	jle       .L00002BB0
.L00002CD4:
	addq      $40, %rsp
	movq      %rbx, %rsi
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       Flx_renormalize@PLT
.L00002CED:
	.p2align 4,,10
	.p2align 3
.L00002CF0:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
	subq      $1, %rax
	je        .L00002B80
.L00002D03:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
	subq      $1, %rax
	jne       .L00002CF0
.L00002D12:
	jmp       .L00002B80
.L00002D17:
	shrq      $32, %rax
	movl      $12, %ecx
	movl      $28, %edx
	jmp       .L000029FC
.L00002D2A:
	je        .L00002CC4
.L00002D2C:
	movq      -8(%rbp,%rbx,8), %rax
.L00002D31:
	leaq      -2(%rbx), %r8
	movq      $-4294967296, %rcx
	salq      $6, %r8
	testq     %rcx, %rax
	je        .L00002E10
.L00002D4C:
	shrq      $32, %rax
	movl      $12, %ecx
	movl      $28, %edx
.L00002D5A:
	testq     $-65536, %rax
	je        .L00002D68
.L00002D62:
	shrq      $16, %rax
	movl      %ecx, %edx
.L00002D68:
	testq     $-256, %rax
	je        .L00002D77
.L00002D70:
	subl      $8, %edx
	shrq      $8, %rax
.L00002D77:
	testq     $-16, %rax
	je        .L00002D86
.L00002D7F:
	subl      $4, %edx
	shrq      $4, %rax
.L00002D86:
	leaq      __bfffo_tabshi.20233(%rip), %rcx
	addl      (%rcx,%rax,4), %edx
	movslq    %edx, %rdx
	subq      %rdx, %r8
	subq      $1, %r8
	jmp       .L00002CCB
.L00002D9F:
	.p2align 4,,10
	.p2align 3
.L00002DA0:
	movl      $64, %r11d
	subq      %r8, %r11
	cmpq      $2, %r14
	jle       .L00002C91
.L00002DB3:
	movq      (%rsp), %rdx
	leaq      (%r15,%r14,8), %r12
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L00002DC8:
	movq      (%rdx), %rsi
	leaq      (%r13,%rdx), %r9
	movl      %r8d, %ecx
	addq      $8, %rdx
	salq      %cl, %rsi
	movl      %r11d, %ecx
	orq       %rsi, %rax
	xorq      %rax, (%r9,%r10,8)
	movq      -8(%rdx), %rax
	shrq      %cl, %rax
	cmpq      %r12, %rdx
	jne       .L00002DC8
.L00002DF0:
	testq     %rax, %rax
	movq      8(%rsp), %rsi
	je        .L00002C91
.L00002DFE:
	addq      %r14, %r10
	xorq      %rax, (%rbp,%r10,8)
	jmp       .L00002C91
.L00002E0B:
	.p2align 4,,10
	.p2align 3
.L00002E10:
	movl      $44, %ecx
	movl      $60, %edx
	jmp       .L00002D5A
.L00002E1F:
	movq      (%rsp), %rax
	leaq      (%r15,%r14,8), %r8
	.p2align 4
.L00002E30:
	leaq      (%r13,%rax), %rdx
	movq      (%rax), %rcx
	addq      $8, %rax
	xorq      %rcx, (%rdx,%r10,8)
	cmpq      %r8, %rax
	jne       .L00002E30
.L00002E45:
	jmp       .L00002C91
.L00002E4A:
	movq      avma@GOTPCREL(%rip), %rdx
	movq      bot@GOTPCREL(%rip), %rax
	movq      8(%r12), %r12
	movq      (%rdx), %rbx
	movq      %rbx, %rdi
	subq      (%rax), %rdi
	leaq      -16(%rbx), %rbp
	cmpq      $15, %rdi
	ja        .L00002E84
.L00002E70:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00002E80:
	movq      (%rsp), %rdx
.L00002E84:
	movq      $3170534137668829186, %rax
	movq      %rbp, (%rdx)
	movq      %r12, -8(%rbx)
	movq      %rax, -16(%rbx)
	addq      $40, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002EAB:
	movq      $-1, %r9
	jmp       .L00002A3C
	.size	F2x_rem, .-F2x_rem
# ----------------------
.L00002EB7:
	.p2align 4
# ----------------------
	.globl	F2x_divrem
	.type	F2x_divrem, @function
F2x_divrem:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r13
	pushq     %rbp
	pushq     %rbx
	subq      $72, %rsp
	movq      (%rdi), %rbx
	movq      8(%rdi), %r12
	movq      %rdi, 8(%rsp)
	movq      %rsi, %rdi
	movq      %rdx, 16(%rsp)
	call      F2x_degree@PLT
.L00002EEA:
	testq     %rax, %rax
	movq      %rax, %r14
	movq      8(%rsp), %rcx
	js        .L000039ED
.L00002EFB:
	cmpq      $1, 16(%rsp)
	je        .L00003A50
.L00002F07:
	testq     %r14, %r14
	je        .L00003694
.L00002F10:
	movq      $72057594037927935, %rax
	andq      %rax, %rbx
	cmpq      $2, %rbx
	je        .L00003A89
.L00002F27:
	movq      -8(%rcx,%rbx,8), %rax
	leaq      -2(%rbx), %rbp
	movq      $-4294967296, %rdx
	salq      $6, %rbp
	testq     %rdx, %rax
	jne       .L00003390
.L00002F47:
	movl      $44, %esi
	movl      $60, %edx
.L00002F51:
	testq     $-65536, %rax
	je        .L00002F5F
.L00002F59:
	shrq      $16, %rax
	movl      %esi, %edx
.L00002F5F:
	testq     $-256, %rax
	je        .L00002F6E
.L00002F67:
	subl      $8, %edx
	shrq      $8, %rax
.L00002F6E:
	testq     $-16, %rax
	je        .L00002F7D
.L00002F76:
	subl      $4, %edx
	shrq      $4, %rax
.L00002F7D:
	leaq      __bfffo_tabshi.20233(%rip), %rsi
	addl      (%rsi,%rax,4), %edx
	movslq    %edx, %rdx
	subq      %rdx, %rbp
	subq      $1, %rbp
.L00002F91:
	cmpq      %r14, %rbp
	js        .L000034F9
.L00002F9A:
	movq      $72057594037927935, %rax
	movq      %rax, %rdx
	andq      (%r13), %rax
	andq      (%rcx), %rdx
	subq      %rax, %rdx
	movq      avma@GOTPCREL(%rip), %rax
	leaq      3(%rdx), %r8
	movq      %rax, 32(%rsp)
	movq      (%rax), %rax
	leaq      0(,%r8,8), %rsi
	movq      %rax, %r15
	subq      %rsi, %r15
	movq      bot@GOTPCREL(%rip), %rsi
	subq      (%rsi), %rax
	movq      %rsi, 48(%rsp)
	shrq      $3, %rax
	cmpq      %rax, %r8
	jbe       .L00003014
.L00002FEA:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 40(%rsp)
	movq      %r8, 24(%rsp)
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L00003005:
	movq      40(%rsp), %rcx
	movq      24(%rsp), %r8
	movq      8(%rsp), %rdx
.L00003014:
	movq      32(%rsp), %rax
	movq      %r15, (%rax)
	movq      $-72057594037927936, %rax
	testq     %rax, %r8
	je        .L0000305C
.L0000302B:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rcx, 40(%rsp)
	movq      %r8, 24(%rsp)
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L0000304D:
	movq      40(%rsp), %rcx
	movq      24(%rsp), %r8
	movq      8(%rsp), %rdx
.L0000305C:
	movq      $3170534137668829184, %rax
	orq       %rax, %r8
	cmpq      $-1, %rdx
	movq      %r8, (%r15)
	jl        .L0000308F
.L00003072:
	leaq      16(,%rdx,8), %rdx
	leaq      8(%r15), %rdi
	xorl      %esi, %esi
	movq      %rcx, 8(%rsp)
	call      memset@PLT
.L0000308A:
	movq      8(%rsp), %rcx
.L0000308F:
	movq      32(%rsp), %rax
	movq      48(%rsp), %rdi
	movq      $72057594037927935, %rsi
	movq      %r12, 8(%r15)
	andq      (%rcx), %rsi
	movq      (%rax), %rax
	leaq      0(,%rsi,8), %r8
	movq      %rax, %r12
	movq      %rax, 8(%rsp)
	subq      (%rdi), %rax
	subq      %r8, %r12
	shrq      $3, %rax
	cmpq      %rax, %rsi
	jbe       .L000030F6
.L000030CC:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 56(%rsp)
	movq      %r8, 40(%rsp)
	movq      %rsi, 24(%rsp)
	call      pari_err@PLT
.L000030E7:
	movq      56(%rsp), %rcx
	movq      40(%rsp), %r8
	movq      24(%rsp), %rsi
.L000030F6:
	movq      32(%rsp), %rax
	leaq      -1(%rsi), %rdi
	movq      %r12, (%rax)
	movq      $-72057594037927937, %rax
	andq      (%rcx), %rax
	testq     %rdi, %rdi
	movq      %rax, (%r12)
	movq      %rdi, %rax
	jle       .L000031D1
.L0000311F:
	leaq      -16(%r8), %r9
	leaq      (%rcx,%r8), %r11
	leaq      (%r12,%r9), %r10
	leaq      (%rcx,%r9), %rdx
	cmpq      %r10, %r11
	leaq      (%r12,%r8), %r10
	setbe     %r11b
	cmpq      %r10, %rdx
	setae     %r10b
	orb       %r10b, %r11b
	je        .L000033A8
.L0000314A:
	cmpq      $24, %rdi
	jbe       .L000033A8
.L00003154:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %rdi
	cmovbe    %rdi, %rdx
	testq     %rdx, %rdx
	je        .L00003179
.L00003167:
	movq      -8(%rcx,%r8), %rax
	movq      8(%rsp), %r10
	movq      %rax, -8(%r10)
	leaq      -2(%rsi), %rax
.L00003179:
	subq      %rdx, %rdi
	subq      %rdx, %rsi
	movq      %rdi, %r11
	leaq      -2(%rdi), %rdi
	shrq      $1, %rdi
	addq      $1, %rdi
	cmpq      $2, %rsi
	leaq      (%rdi,%rdi), %r8
	je        .L000031C9
.L00003197:
	negq      %rdx
	xorl      %esi, %esi
	leaq      (%r9,%rdx,8), %r9
	xorl      %edx, %edx
	leaq      (%rcx,%r9), %r10
	addq      %r12, %r9
.L000031A9:
	movdqa    (%r10,%rdx), %xmm0
	addq      $1, %rsi
	movups    %xmm0, (%r9,%rdx)
	subq      $16, %rdx
	cmpq      %rdi, %rsi
	jb        .L000031A9
.L000031C1:
	subq      %r8, %rax
	cmpq      %r8, %r11
	je        .L000031D1
.L000031C9:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%r12,%rax,8)
.L000031D1:
	cmpq      %rbp, %r14
	jg        .L00003338
.L000031DA:
	leaq      16(%r13), %rax
	movq      %r12, %rsi
	movq      %rbp, %rcx
	subq      %r13, %rsi
	movq      %rax, 8(%rsp)
	leaq      32(%r13), %rax
	movq      %rax, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L000031F8:
	subq      %r14, %rcx
	movl      $1, %r8d
	movq      $72057594037927935, %rbp
	movq      %rcx, %rdi
	andl      $63, %ecx
	sarq      $6, %rdi
	salq      %cl, %r8
	movl      %ecx, %r10d
	leaq      2(%rdi), %rax
	leaq      0(,%rax,8), %rdx
	orq       %r8, (%r15,%rdx)
	andq      (%r13), %rbp
	testq     %rcx, %rcx
	jne       .L00003450
.L00003238:
	cmpq      $2, %rbp
	jle       .L000032F4
.L00003242:
	leaq      (%r12,%rdx), %r8
	cmpq      40(%rsp), %r8
	leaq      16(%rdx,%r12), %rdx
	leaq      -2(%rbp), %rcx
	setae     %r9b
	cmpq      %rdx, 8(%rsp)
	setae     %dl
	orb       %dl, %r9b
	je        .L000034CF
.L00003269:
	cmpq      $9, %rcx
	jbe       .L000034CF
.L00003273:
	movq      %r8, %rdx
	movl      $2, %r10d
	salq      $60, %rdx
	shrq      $63, %rdx
	cmpq      %rdx, %rcx
	cmovbe    %rcx, %rdx
	testq     %rdx, %rdx
	je        .L0000329A
.L00003290:
	movq      16(%r13), %r9
	xorq      %r9, (%r8)
	movb      $3, %r10b
.L0000329A:
	subq      %rdx, %rcx
	leaq      16(,%rdx,8), %rbp
	addq      %rdx, %rax
	leaq      -2(%rcx), %r8
	leaq      (%r12,%rax,8), %r9
	xorl      %edx, %edx
	addq      %r13, %rbp
	xorl      %eax, %eax
	shrq      $1, %r8
	addq      $1, %r8
	leaq      (%r8,%r8), %r11
.L000032C2:
	movdqu    (%rbp,%rax), %xmm0
	addq      $1, %rdx
	pxor      (%r9,%rax), %xmm0
	movaps    %xmm0, (%r9,%rax)
	addq      $16, %rax
	cmpq      %r8, %rdx
	jb        .L000032C2
.L000032E0:
	addq      %r11, %r10
	cmpq      %r11, %rcx
	je        .L000032F4
.L000032E8:
	addq      %r10, %rdi
	movq      (%r13,%r10,8), %rax
	xorq      %rax, (%r12,%rdi,8)
.L000032F4:
	cmpq      $2, %rbx
	jle       .L000033CD
.L000032FE:
	movq      -8(%r12,%rbx,8), %rax
	testq     %rax, %rax
	je        .L0000331E
.L00003308:
	jmp       .L000033D8
.L0000330D:
	.p2align 4,,10
	.p2align 3
.L00003310:
	movq      -8(%r12,%rbx,8), %rax
	testq     %rax, %rax
	jne       .L000033D8
.L0000331E:
	subq      $1, %rbx
	cmpq      $2, %rbx
	jne       .L00003310
.L00003328:
	movq      $-1, %rcx
.L0000332F:
	cmpq      %r14, %rcx
	jge       .L000031F8
.L00003338:
	movq      $72057594037927935, %rbp
	movq      %r15, %rdi
	movq      %rbp, %rsi
	andq      (%r15), %rsi
	call      Flx_renormalize@PLT
.L00003350:
	cmpq      $0, 16(%rsp)
	movq      %rax, %r13
	je        .L00003A03
.L0000335F:
	movq      %rbx, %rsi
	movq      %r12, %rdi
	call      Flx_renormalize@PLT
.L0000336A:
	cmpq      $2, 16(%rsp)
	je        .L00003A69
.L00003376:
	movq      16(%rsp), %rsi
	movq      %rax, (%rsi)
.L0000337E:
	addq      $72, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003390:
	shrq      $32, %rax
	movl      $12, %esi
	movl      $28, %edx
	jmp       .L00002F51
.L000033A3:
	.p2align 4,,10
	.p2align 3
.L000033A8:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%r12,%rax,8)
	subq      $1, %rax
	je        .L000031D1
.L000033BA:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%r12,%rax,8)
	subq      $1, %rax
	jne       .L000033A8
.L000033C8:
	jmp       .L000031D1
.L000033CD:
	je        .L00003328
.L000033D3:
	movq      -8(%r12,%rbx,8), %rax
.L000033D8:
	leaq      -2(%rbx), %rcx
	movq      $-4294967296, %rdi
	salq      $6, %rcx
	testq     %rdi, %rax
	je        .L000034C0
.L000033F3:
	shrq      $32, %rax
	movl      $12, %edi
	movl      $28, %edx
.L00003401:
	testq     $-65536, %rax
	je        .L0000340F
.L00003409:
	shrq      $16, %rax
	movl      %edi, %edx
.L0000340F:
	testq     $-256, %rax
	je        .L0000341E
.L00003417:
	subl      $8, %edx
	shrq      $8, %rax
.L0000341E:
	testq     $-16, %rax
	je        .L0000342D
.L00003426:
	subl      $4, %edx
	shrq      $4, %rax
.L0000342D:
	leaq      __bfffo_tabshi.20233(%rip), %rdi
	addl      (%rdi,%rax,4), %edx
	movslq    %edx, %rdx
	subq      %rdx, %rcx
	subq      $1, %rcx
	jmp       .L0000332F
.L00003446:
	.p2align 4
.L00003450:
	movl      $64, %r9d
	subq      %rcx, %r9
	cmpq      $2, %rbp
	jle       .L000032F4
.L00003463:
	movq      8(%rsp), %rdx
	leaq      (%r13,%rbp,8), %r11
	xorl      %eax, %eax
	movq      %rbx, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L00003478:
	movq      (%rdx), %rbx
	leaq      (%rsi,%rdx), %r8
	movl      %r10d, %ecx
	addq      $8, %rdx
	salq      %cl, %rbx
	movl      %r9d, %ecx
	orq       %rbx, %rax
	xorq      %rax, (%r8,%rdi,8)
	movq      -8(%rdx), %rax
	shrq      %cl, %rax
	cmpq      %r11, %rdx
	jne       .L00003478
.L0000349F:
	testq     %rax, %rax
	movq      24(%rsp), %rbx
	je        .L000032F4
.L000034AD:
	addq      %rbp, %rdi
	xorq      %rax, (%r12,%rdi,8)
	jmp       .L000032F4
.L000034B9:
	.p2align 4
.L000034C0:
	movl      $44, %edi
	movl      $60, %edx
	jmp       .L00003401
.L000034CF:
	movq      8(%rsp), %rax
	leaq      (%r13,%rbp,8), %r8
	.p2align 4
.L000034E0:
	leaq      (%rsi,%rax), %rdx
	movq      (%rax), %rcx
	addq      $8, %rax
	xorq      %rcx, (%rdx,%rdi,8)
	cmpq      %r8, %rax
	jne       .L000034E0
.L000034F4:
	jmp       .L000032F4
.L000034F9:
	cmpq      $2, 16(%rsp)
	je        .L00003889
.L00003505:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movq      %rax, 32(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	leaq      -16(%rbx), %rbp
	movq      %rax, %rsi
	movq      %rax, 48(%rsp)
	movq      %rbx, %rax
	subq      (%rsi), %rax
	cmpq      $15, %rax
	jbe       .L000039D2
.L00003537:
	cmpq      $0, 16(%rsp)
	movq      32(%rsp), %rax
	movq      $3170534137668829186, %rsi
	movq      %r12, -8(%rbx)
	movq      %rbp, %r13
	movq      %rbp, (%rax)
	movq      %rsi, -16(%rbx)
	je        .L0000337E
.L00003560:
	movq      $72057594037927935, %rsi
	andq      (%rcx), %rsi
	movq      (%rax), %r14
	movq      %r14, %rax
	movq      %r14, %rbx
	movq      %rsi, %r12
	leaq      0(,%rsi,8), %r13
	movq      48(%rsp), %rsi
	subq      %r13, %rbx
	subq      (%rsi), %rax
	shrq      $3, %rax
	cmpq      %rax, %r12
	jbe       .L000035AB
.L00003595:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 8(%rsp)
	call      pari_err@PLT
.L000035A6:
	movq      8(%rsp), %rcx
.L000035AB:
	movq      32(%rsp), %rax
	leaq      -1(%r12), %rsi
	movq      %rbx, (%rax)
	movq      $-72057594037927937, %rax
	andq      (%rcx), %rax
	testq     %rsi, %rsi
	movq      %rax, (%rbx)
	movq      %rsi, %rax
	jle       .L00003684
.L000035D4:
	leaq      -16(%r13), %rdi
	leaq      (%rcx,%r13), %r8
	leaq      (%rbx,%rdi), %r9
	leaq      (%rcx,%rdi), %rdx
	cmpq      %r8, %r9
	leaq      (%rbx,%r13), %r8
	setae     %r9b
	cmpq      %r8, %rdx
	setae     %r8b
	orb       %r8b, %r9b
	je        .L00003849
.L000035FF:
	cmpq      $24, %rsi
	jbe       .L00003849
.L00003609:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rsi, %rdx
	cmova     %rsi, %rdx
	testq     %rdx, %rdx
	je        .L0000362A
.L0000361C:
	movq      -8(%rcx,%r13), %rax
	movq      %rax, -8(%r14)
	leaq      -2(%r12), %rax
.L0000362A:
	subq      %rdx, %rsi
	leaq      -2(%rsi), %r9
	movq      %rsi, %r8
	movq      %r12, %rsi
	subq      %rdx, %rsi
	shrq      $1, %r9
	addq      $1, %r9
	cmpq      $2, %rsi
	leaq      (%r9,%r9), %r10
	je        .L0000367C
.L0000364B:
	negq      %rdx
	xorl      %esi, %esi
	leaq      (%rdi,%rdx,8), %rdi
	xorl      %edx, %edx
	leaq      (%rcx,%rdi), %r11
	addq      %rbx, %rdi
.L0000365D:
	movdqa    (%r11,%rdx), %xmm0
	addq      $1, %rsi
	movups    %xmm0, (%rdi,%rdx)
	subq      $16, %rdx
	cmpq      %r9, %rsi
	jb        .L0000365D
.L00003674:
	subq      %r10, %rax
	cmpq      %r8, %r10
	je        .L00003684
.L0000367C:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
.L00003684:
	movq      16(%rsp), %rax
	movq      %rbp, %r13
	movq      %rbx, (%rax)
	jmp       .L0000337E
.L00003694:
	movq      avma@GOTPCREL(%rip), %rax
	movq      $72057594037927935, %rbp
	andq      (%rcx), %rbp
	movq      (%rax), %r14
	movq      %rax, 32(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	leaq      0(,%rbp,8), %r13
	movq      %r14, %rbx
	movq      %rax, %rsi
	movq      %rax, 48(%rsp)
	movq      %r14, %rax
	subq      (%rsi), %rax
	subq      %r13, %rbx
	shrq      $3, %rax
	cmpq      %rax, %rbp
	ja        .L0000386E
.L000036E0:
	movq      32(%rsp), %rax
	leaq      -1(%rbp), %rsi
	movq      %rbx, (%rax)
	movq      $-72057594037927937, %rax
	andq      (%rcx), %rax
	testq     %rsi, %rsi
	movq      %rax, (%rbx)
	movq      %rsi, %rax
	jle       .L000037B7
.L00003708:
	leaq      -16(%r13), %rdi
	leaq      (%rcx,%r13), %r9
	leaq      (%rbx,%rdi), %r8
	leaq      (%rcx,%rdi), %rdx
	cmpq      %r8, %r9
	leaq      (%rbx,%r13), %r8
	setbe     %r9b
	cmpq      %r8, %rdx
	setae     %r8b
	orb       %r8b, %r9b
	je        .L00003828
.L00003733:
	cmpq      $24, %rsi
	jbe       .L00003828
.L0000373D:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %rsi
	cmovbe    %rsi, %rdx
	testq     %rdx, %rdx
	je        .L0000375D
.L00003750:
	movq      -8(%rcx,%r13), %rax
	movq      %rax, -8(%r14)
	leaq      -2(%rbp), %rax
.L0000375D:
	subq      %rdx, %rsi
	subq      %rdx, %rbp
	leaq      -2(%rsi), %r8
	movq      %rsi, %r9
	shrq      $1, %r8
	addq      $1, %r8
	cmpq      $2, %rbp
	leaq      (%r8,%r8), %r10
	je        .L000037AF
.L0000377B:
	negq      %rdx
	xorl      %esi, %esi
	leaq      (%rdi,%rdx,8), %rdi
	xorl      %edx, %edx
	leaq      (%rcx,%rdi), %r11
	addq      %rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L00003790:
	movdqa    (%r11,%rdx), %xmm0
	addq      $1, %rsi
	movups    %xmm0, (%rdi,%rdx)
	subq      $16, %rdx
	cmpq      %r8, %rsi
	jb        .L00003790
.L000037A7:
	subq      %r10, %rax
	cmpq      %r9, %r10
	je        .L000037B7
.L000037AF:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
.L000037B7:
	movq      16(%rsp), %rax
	cmpq      $2, %rax
	je        .L000039CA
.L000037C6:
	testq     %rax, %rax
	je        .L000039CA
.L000037CF:
	movq      32(%rsp), %rax
	movq      48(%rsp), %rsi
	movq      (%rax), %rbp
	movq      %rbp, %rax
	subq      (%rsi), %rax
	leaq      -16(%rbp), %r13
	cmpq      $15, %rax
	ja        .L000037F8
.L000037EC:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000037F8:
	movq      32(%rsp), %rax
	movq      %r12, -8(%rbp)
	movq      %r13, (%rax)
	movq      $3170534137668829186, %rax
	movq      %rax, -16(%rbp)
	movq      16(%rsp), %rax
	movq      %r13, (%rax)
	movq      %rbx, %r13
	jmp       .L0000337E
.L00003822:
	.p2align 4,,10
	.p2align 3
.L00003828:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	subq      $1, %rax
	je        .L000037B7
.L00003836:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	subq      $1, %rax
	jne       .L00003828
.L00003844:
	jmp       .L000037B7
.L00003849:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	subq      $1, %rax
	je        .L00003684
.L0000385B:
	movq      (%rcx,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	subq      $1, %rax
	jne       .L00003849
.L00003869:
	jmp       .L00003684
.L0000386E:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 8(%rsp)
	call      pari_err@PLT
.L0000387F:
	movq      8(%rsp), %rcx
	jmp       .L000036E0
.L00003889:
	xorl      %r13d, %r13d
	testq     %rbp, %rbp
	jns       .L0000337E
.L00003895:
	movq      avma@GOTPCREL(%rip), %rax
	movq      $72057594037927935, %rdx
	andq      (%rcx), %rdx
	movq      (%rax), %r13
	movq      %rax, 32(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	leaq      0(,%rdx,8), %r12
	movq      %rdx, %rbp
	movq      %r13, %rsi
	movq      %r13, %rbx
	subq      (%rax), %rsi
	subq      %r12, %rbx
	movq      %rsi, %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L000038F1
.L000038DB:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 8(%rsp)
	call      pari_err@PLT
.L000038EC:
	movq      8(%rsp), %rcx
.L000038F1:
	movq      32(%rsp), %rax
	leaq      -1(%rbp), %rdi
	movq      %rdi, %rsi
	movq      %rbx, (%rax)
	movq      $-72057594037927937, %rax
	andq      (%rcx), %rax
	testq     %rdi, %rdi
	movq      %rax, (%rbx)
	jle       .L000039CA
.L00003919:
	leaq      -16(%r12), %r9
	leaq      (%rcx,%r12), %rdx
	leaq      (%rbx,%r9), %r8
	leaq      (%rcx,%r9), %rax
	cmpq      %rdx, %r8
	leaq      (%rbx,%r12), %rdx
	setae     %r8b
	cmpq      %rdx, %rax
	setae     %dl
	orb       %dl, %r8b
	je        .L00003A36
.L00003944:
	cmpq      $24, %rdi
	jbe       .L00003A36
.L0000394E:
	andl      $15, %eax
	shrq      $3, %rax
	cmpq      %rdi, %rax
	cmova     %rdi, %rax
	testq     %rax, %rax
	je        .L0000396E
.L00003961:
	movq      -8(%rcx,%r12), %rdx
	leaq      -2(%rbp), %rsi
	movq      %rdx, -8(%r13)
.L0000396E:
	subq      %rax, %rdi
	movq      %rbp, %rdx
	movq      %rdi, %r8
	leaq      -2(%rdi), %rdi
	subq      %rax, %rdx
	shrq      $1, %rdi
	addq      $1, %rdi
	cmpq      $2, %rdx
	leaq      (%rdi,%rdi), %r10
	je        .L000039C2
.L0000398F:
	negq      %rax
	leaq      (%r9,%rax,8), %rax
	xorl      %r9d, %r9d
	leaq      (%rcx,%rax), %r11
	leaq      (%rbx,%rax), %rdx
	xorl      %eax, %eax
.L000039A3:
	movdqa    (%r11,%rax), %xmm0
	addq      $1, %r9
	movups    %xmm0, (%rdx,%rax)
	subq      $16, %rax
	cmpq      %r9, %rdi
	ja        .L000039A3
.L000039BA:
	subq      %r10, %rsi
	cmpq      %r8, %r10
	je        .L000039CA
.L000039C2:
	movq      (%rcx,%rsi,8), %rax
	movq      %rax, (%rbx,%rsi,8)
.L000039CA:
	movq      %rbx, %r13
	jmp       .L0000337E
.L000039D2:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 8(%rsp)
	call      pari_err@PLT
.L000039E3:
	movq      8(%rsp), %rcx
	jmp       .L00003537
.L000039ED:
	movl      $27, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000039F9:
	movq      8(%rsp), %rcx
	jmp       .L00002EFB
.L00003A03:
	andq      (%r12), %rbp
	movq      48(%rsp), %rsi
	leaq      (%r12,%rbp,8), %rax
	cmpq      (%rsi), %rax
	jb        .L0000337E
.L00003A19:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jae       .L0000337E
.L00003A29:
	movq      32(%rsp), %rsi
	movq      %rax, (%rsi)
	jmp       .L0000337E
.L00003A36:
	movq      (%rcx,%rsi,8), %rax
	movq      %rax, (%rbx,%rsi,8)
	subq      $1, %rsi
	jne       .L00003A36
.L00003A44:
	jmp       .L000039CA
.L00003A46:
	.p2align 4
.L00003A50:
	addq      $72, %rsp
	movq      %r13, %rsi
	movq      %rcx, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       F2x_rem@PLT
.L00003A69:
	movq      %rbp, %rdx
	andq      (%rax), %rdx
	cmpq      $2, %rdx
	jne       .L00003A95
.L00003A75:
	movq      48(%rsp), %rsi
	addq      $16, %rax
	cmpq      (%rsi), %rax
	jb        .L0000337E
.L00003A87:
	jmp       .L00003A19
.L00003A89:
	movq      $-1, %rbp
	jmp       .L00002F91
.L00003A95:
	andq      (%r13), %rbp
	movq      32(%rsp), %rsi
	leaq      (%r13,%rbp,8), %rax
	xorl      %r13d, %r13d
	movq      %rax, (%rsi)
	jmp       .L0000337E
	.size	F2x_divrem, .-F2x_divrem
# ----------------------
.L00003AAE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2x_deriv
	.type	F2x_deriv, @function
F2x_deriv:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbx
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %r13
	andq      (%rdi), %rbx
	movq      (%r13), %rax
	leaq      0(,%rbx,8), %rdx
	movq      %rax, %rbp
	subq      %rdx, %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L00003B02
.L00003AF6:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00003B02:
	movq      $3170534137668829184, %rax
	movq      %rbp, (%r13)
	orq       %rbx, %rax
	cmpq      $2, %rbx
	movq      %rax, (%rbp)
	movq      8(%r12), %rax
	movq      %rax, 8(%rbp)
	jle       .L00003C19
.L00003B2A:
	leaq      16(%rbp), %rsi
	leaq      32(%r12), %rcx
	leaq      16(%r12), %rax
	leaq      -2(%rbx), %rdx
	cmpq      %rcx, %rsi
	leaq      32(%rbp), %rcx
	setae     %sil
	cmpq      %rcx, %rax
	setae     %cl
	orb       %cl, %sil
	je        .L00003C30
.L00003B56:
	cmpq      $7, %rdx
	jbe       .L00003C30
.L00003B60:
	salq      $60, %rax
	movl      $2, %edi
	shrq      $63, %rax
	cmpq      %rax, %rdx
	cmovbe    %rdx, %rax
	testq     %rax, %rax
	je        .L00003B95
.L00003B79:
	movq      16(%r12), %rsi
	movq      $6148914691236517205, %rcx
	movb      $3, %dil
	shrq      $1, %rsi
	andq      %rsi, %rcx
	movq      %rcx, 16(%rbp)
.L00003B95:
	subq      %rax, %rdx
	leaq      -2(%rdx), %rcx
	movq      %rdx, %r9
	movq      %rbx, %rdx
	subq      %rax, %rdx
	shrq      $1, %rcx
	addq      $1, %rcx
	cmpq      $3, %rdx
	leaq      (%rcx,%rcx), %r10
	je        .L00003C00
.L00003BB6:
	leaq      16(,%rax,8), %rsi
	movdqa    .LC33(%rip), %xmm1
	xorl      %eax, %eax
	xorl      %edx, %edx
	leaq      (%r12,%rsi), %r8
	addq      %rbp, %rsi
	.p2align 4,,10
	.p2align 3
.L00003BD8:
	movdqa    (%r8,%rax), %xmm0
	addq      $1, %rdx
	psrlq     $1, %xmm0
	pand      %xmm1, %xmm0
	movups    %xmm0, (%rsi,%rax)
	addq      $16, %rax
	cmpq      %rcx, %rdx
	jb        .L00003BD8
.L00003BF8:
	addq      %r10, %rdi
	cmpq      %r10, %r9
	je        .L00003C19
.L00003C00:
	movq      (%r12,%rdi,8), %rax
	movq      $6148914691236517205, %rdx
	shrq      $1, %rax
	andq      %rdx, %rax
	movq      %rax, (%rbp,%rdi,8)
.L00003C19:
	addq      $8, %rsp
	movq      %rbx, %rsi
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	jmp       Flx_renormalize@PLT
.L00003C2E:
	.p2align 4,,10
	.p2align 3
.L00003C30:
	movl      $2, %edx
	movq      $6148914691236517205, %rcx
	.p2align 4,,10
	.p2align 3
.L00003C40:
	movq      (%r12,%rdx,8), %rax
	shrq      $1, %rax
	andq      %rcx, %rax
	movq      %rax, (%rbp,%rdx,8)
	addq      $1, %rdx
	cmpq      %rbx, %rdx
	jne       .L00003C40
.L00003C58:
	jmp       .L00003C19
	.size	F2x_deriv, .-F2x_deriv
# ----------------------
.L00003C5A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2x_gcd
	.type	F2x_gcd, @function
F2x_gcd:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $24, %rsp
	movq      avma@GOTPCREL(%rip), %rbp
	movq      bot@GOTPCREL(%rip), %rax
	movq      %rdi, 8(%rsp)
	movq      %rsi, (%rsp)
	movq      (%rsi), %rdx
	movq      (%rbp), %r13
	movq      (%rax), %rax
	movq      %rdx, %rcx
	movq      %r13, %rbx
	subq      %rax, %rbx
	shrq      $2, %rbx
	addq      %rax, %rbx
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	andq      (%rdi), %rax
	cmpq      %rax, %rcx
	jle       .L00003CC9
.L00003CB4:
	movq      %rsi, %rax
	movq      %rsi, 8(%rsp)
	movq      %rdi, (%rsp)
	movq      %rdi, %rsi
	movq      (%rdi), %rdx
	movq      %rax, %rdi
.L00003CC9:
	movq      $72057594037927935, %r12
	movq      %rsp, %r15
	leaq      8(%rsp), %r14
	jmp       .L00003CFE
.L00003CDD:
	.p2align 4,,10
	.p2align 3
.L00003CE0:
	call      F2x_rem@PLT
.L00003CE5:
	cmpq      (%rbp), %rbx
	movq      (%rsp), %rdi
	movq      %rax, (%rsp)
	movq      %rdi, 8(%rsp)
	ja        .L00003D20
.L00003CF8:
	movq      (%rax), %rdx
	movq      %rax, %rsi
.L00003CFE:
	andq      %r12, %rdx
	cmpq      $2, %rdx
	jne       .L00003CE0
.L00003D07:
	cmpq      (%rbp), %rbx
	movq      %rdi, %rax
	ja        .L00003D70
.L00003D10:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003D1F:
	.p2align 4,,10
	.p2align 3
.L00003D20:
	movq      DEBUGMEM@GOTPCREL(%rip), %rdx
	cmpq      $1, (%rdx)
	jbe       .L00003D4B
.L00003D2D:
	movq      %rax, %rdi
	call      F2x_degree@PLT
.L00003D35:
	leaq      .LC35(%rip), %rsi
	movq      %rax, %rdx
	movl      $3, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
.L00003D4B:
	movq      %r14, %rdx
	movl      $2, %esi
	movq      %r13, %rdi
	movq      %r15, %rcx
	xorl      %eax, %eax
	call      gerepileall.constprop.6
.L00003D60:
	movq      (%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsi), %rdx
	jmp       .L00003CFE
.L00003D6E:
	.p2align 4,,10
	.p2align 3
.L00003D70:
	movq      bot@GOTPCREL(%rip), %rcx
	cmpq      (%rcx), %rdi
	jb        .L00003E78
.L00003D80:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rdi
	jae       .L00003E78
.L00003D90:
	cmpq      %r13, %rdi
	jae       .L00003E78
.L00003D99:
	movq      $72057594037927935, %rsi
	andq      (%rdi), %rsi
	movq      %r13, %rax
	leaq      0(,%rsi,8), %r9
	leaq      -1(%rsi), %rdx
	subq      %r9, %rax
	cmpq      $-1, %rdx
	movq      %rax, (%rbp)
	je        .L00003D10
.L00003DC6:
	leaq      -16(%r9), %r8
	leaq      (%rax,%r9), %r10
	leaq      (%rdi,%r9), %rbx
	leaq      (%rdi,%r8), %rcx
	cmpq      %r10, %rcx
	leaq      (%rax,%r8), %r10
	setae     %r11b
	cmpq      %r10, %rbx
	setbe     %r10b
	orb       %r10b, %r11b
	je        .L00003E90
.L00003DF1:
	cmpq      $24, %rsi
	jbe       .L00003E90
.L00003DFB:
	andl      $15, %ecx
	shrq      $3, %rcx
	cmpq      %rcx, %rsi
	cmovbe    %rsi, %rcx
	testq     %rcx, %rcx
	je        .L00003E1B
.L00003E0E:
	movq      -8(%rdi,%r9), %rdx
	movq      %rdx, -8(%r13)
	leaq      -2(%rsi), %rdx
.L00003E1B:
	subq      %rcx, %rsi
	negq      %rcx
	leaq      -2(%rsi), %r9
	leaq      (%r8,%rcx,8), %r10
	xorl      %ecx, %ecx
	xorl      %r8d, %r8d
	shrq      $1, %r9
	leaq      (%rdi,%r10), %r11
	addq      %rax, %r10
	addq      $1, %r9
	leaq      (%r9,%r9), %rbx
.L00003E40:
	movdqa    (%r11,%rcx), %xmm0
	addq      $1, %r8
	movups    %xmm0, (%r10,%rcx)
	subq      $16, %rcx
	cmpq      %r9, %r8
	jb        .L00003E40
.L00003E58:
	subq      %rbx, %rdx
	cmpq      %rbx, %rsi
	je        .L00003D10
.L00003E64:
	movq      (%rdi,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	jmp       .L00003D10
.L00003E71:
	.p2align 4,,10
	.p2align 3
.L00003E78:
	movq      %r13, (%rbp)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003E8B:
	.p2align 4,,10
	.p2align 3
.L00003E90:
	movq      (%rdi,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	subq      $1, %rdx
	cmpq      $-1, %rdx
	jne       .L00003E90
.L00003EA2:
	jmp       .L00003D10
	.size	F2x_gcd, .-F2x_gcd
# ----------------------
.L00003EA7:
	.p2align 4
# ----------------------
	.globl	F2x_extgcd
	.type	F2x_extgcd, @function
F2x_extgcd:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $104, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      8(%rdi), %r15
	movq      %rdx, 16(%rsp)
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rcx, 24(%rsp)
	movq      %rdi, 32(%rsp)
	movq      (%rbx), %r13
	movq      %rsi, 40(%rsp)
	movq      (%rdx), %rcx
	movq      %rdi, 64(%rsp)
	movq      %rsi, 72(%rsp)
	movq      %r13, %rax
	leaq      -16(%r13), %r12
	subq      %rcx, %rax
	movq      %rax, %rbp
	shrq      $2, %rbp
	addq      %rcx, %rbp
	cmpq      $15, %rax
	ja        .L00003F22
.L00003F0E:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00003F1E:
	movq      (%rsp), %rdx
.L00003F22:
	movq      $3170534137668829186, %rax
	movq      %r12, (%rbx)
	movq      %r15, -8(%r13)
	movq      %rax, -16(%r13)
	movq      %r12, 56(%rsp)
	movq      (%rbx), %r12
	movq      %r12, %rax
	subq      (%rdx), %rax
	leaq      -24(%r12), %r14
	cmpq      $23, %rax
	ja        .L00003F5C
.L00003F50:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00003F5C:
	movq      $3170534137668829187, %rax
	movq      %r14, (%rbx)
	movq      %r15, -16(%r12)
	movq      %rax, -24(%r12)
	movq      72(%rsp), %rsi
	movq      $72057594037927935, %rax
	movq      $1, -8(%r12)
	movq      %r14, 80(%rsp)
	leaq      88(%rsp), %r12
	andq      (%rsi), %rax
	cmpq      $2, %rax
	je        .L00004083
.L00003FA2:
	leaq      72(%rsp), %rax
	leaq      56(%rsp), %r15
	leaq      48(%rsp), %r14
	movq      %rax, (%rsp)
	leaq      64(%rsp), %rax
	movq      %rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L00003FC0:
	movq      64(%rsp), %rdi
	movq      %r12, %rdx
	call      F2x_divrem@PLT
.L00003FCD:
	movq      80(%rsp), %rsi
	movq      %rax, %rdi
	call      F2x_mul@PLT
.L00003FDA:
	movq      56(%rsp), %rdi
	movq      %rax, %rsi
	call      F2x_add@PLT
.L00003FE7:
	cmpq      (%rbx), %rbp
	movq      80(%rsp), %rdx
	movq      88(%rsp), %rsi
	movq      72(%rsp), %rdi
	movq      %rax, 80(%rsp)
	movq      %rdx, 56(%rsp)
	movq      %rsi, 48(%rsp)
	movq      %rdi, 64(%rsp)
	movq      %rsi, 72(%rsp)
	jbe       .L0000406C
.L00004014:
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $1, (%rax)
	jbe       .L0000403C
.L00004021:
	call      F2x_degree@PLT
.L00004026:
	leaq      .LC37(%rip), %rsi
	movq      %rax, %rdx
	movl      $3, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
.L0000403C:
	subq      $8, %rsp
	movl      $5, %esi
	movq      %r15, %r9
	leaq      88(%rsp), %rax
	movq      %r14, %r8
	movq      %r13, %rdi
	pushq     %rax
	movq      16(%rsp), %rcx
	xorl      %eax, %eax
	movq      24(%rsp), %rdx
	call      gerepileall.constprop.5
.L00004065:
	movq      88(%rsp), %rsi
	popq      %rax
	popq      %rdx
.L0000406C:
	movq      $72057594037927935, %rax
	andq      (%rsi), %rax
	cmpq      $2, %rax
	jne       .L00003FC0
.L00004083:
	cmpq      $0, 16(%rsp)
	je        .L00004100
.L0000408B:
	movq      56(%rsp), %rsi
	movq      40(%rsp), %rdi
	call      F2x_mul@PLT
.L0000409A:
	movq      64(%rsp), %rdi
	movq      %rax, %rsi
	call      F2x_add@PLT
.L000040A7:
	movq      32(%rsp), %rsi
	xorl      %edx, %edx
	movq      %rax, %rdi
	call      F2x_divrem@PLT
.L000040B6:
	movq      16(%rsp), %rcx
	movl      $3, %esi
	movq      %rax, (%rcx)
	movq      56(%rsp), %rax
	movq      24(%rsp), %rcx
	movq      %rax, (%rcx)
	cmpq      (%rbx), %rbp
	jbe       .L000040E9
.L000040D5:
	movq      16(%rsp), %r8
	leaq      64(%rsp), %rdx
	movq      %r13, %rdi
	xorl      %eax, %eax
	call      gerepileall
.L000040E9:
	movq      64(%rsp), %rax
	addq      $104, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000040FD:
	.p2align 4,,10
	.p2align 3
.L00004100:
	movq      56(%rsp), %rax
	movq      24(%rsp), %rcx
	movl      $2, %esi
	movq      %rax, (%rcx)
	cmpq      (%rbx), %rbp
	ja        .L000040D5
.L00004117:
	jmp       .L000040E9
	.size	F2x_extgcd, .-F2x_extgcd
# ----------------------
.L00004119:
	.p2align 4
# ----------------------
	.globl	F2xq_mul
	.type	F2xq_mul, @function
F2xq_mul:
	pushq     %rbx
	movq      %rdx, %rbx
	call      F2x_mul@PLT
.L00004129:
	movq      %rbx, %rsi
	movq      %rax, %rdi
	popq      %rbx
	jmp       F2x_rem@PLT
	.size	F2xq_mul, .-F2xq_mul
# ----------------------
.L00004135:
	.p2align 4
# ----------------------
	.local	_F2xq_mul
	.type	_F2xq_mul, @function
_F2xq_mul:
	movq      %rdi, %rax
	movq      %rsi, %rdi
	movq      %rdx, %rsi
	movq      %rax, %rdx
	jmp       F2xq_mul@PLT
	.size	_F2xq_mul, .-_F2xq_mul
# ----------------------
.L00004151:
	.p2align 4
# ----------------------
	.globl	F2xq_sqr
	.type	F2xq_sqr, @function
F2xq_sqr:
	pushq     %rbx
	movq      %rsi, %rbx
	call      F2x_sqr@PLT
.L00004169:
	movq      %rbx, %rsi
	movq      %rax, %rdi
	popq      %rbx
	jmp       F2x_rem@PLT
	.size	F2xq_sqr, .-F2xq_sqr
# ----------------------
.L00004175:
	.p2align 4
# ----------------------
	.local	_F2xq_sqr
	.type	_F2xq_sqr, @function
_F2xq_sqr:
	movq      %rdi, %rax
	movq      %rsi, %rdi
	movq      %rax, %rsi
	jmp       F2xq_sqr@PLT
	.size	_F2xq_sqr, .-_F2xq_sqr
# ----------------------
.L0000418E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xq_invsafe
	.type	F2xq_invsafe, @function
F2xq_invsafe:
	subq      $24, %rsp
	movq      %rdi, %rax
	xorl      %edx, %edx
	leaq      8(%rsp), %rcx
	movq      %rsi, %rdi
	movq      %rax, %rsi
	call      F2x_extgcd@PLT
.L000041A9:
	movq      %rax, %rdi
	call      F2x_degree@PLT
.L000041B1:
	testq     %rax, %rax
	jne       .L000041C0
.L000041B6:
	movq      8(%rsp), %rax
	addq      $24, %rsp
	ret       
.L000041C0:
	xorl      %eax, %eax
	addq      $24, %rsp
	ret       
	.size	F2xq_invsafe, .-F2xq_invsafe
# ----------------------
.L000041C7:
	.p2align 4
# ----------------------
	.globl	F2xq_inv
	.type	F2xq_inv, @function
F2xq_inv:
	pushq     %r12
	pushq     %rbp
	movq      avma@GOTPCREL(%rip), %rbp
	pushq     %rbx
	movq      (%rbp), %r12
	call      F2xq_invsafe@PLT
.L000041E4:
	testq     %rax, %rax
	movq      %rax, %rbx
	je        .L00004310
.L000041F0:
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        .L00004208
.L000041FC:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        .L00004218
.L00004208:
	movq      %r12, (%rbp)
	movq      %rbx, %rax
.L0000420F:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00004214:
	.p2align 4,,10
	.p2align 3
.L00004218:
	cmpq      %r12, %rbx
	jae       .L00004208
.L0000421D:
	movq      $72057594037927935, %rsi
	andq      (%rbx), %rsi
	movq      %r12, %rax
	leaq      0(,%rsi,8), %r8
	leaq      -1(%rsi), %rdx
	subq      %r8, %rax
	cmpq      $-1, %rdx
	movq      %rax, (%rbp)
	je        .L0000420F
.L00004246:
	leaq      -16(%r8), %rdi
	leaq      (%rax,%r8), %r9
	leaq      (%rbx,%rdi), %rcx
	leaq      (%rax,%rdi), %r11
	cmpq      %r9, %rcx
	leaq      (%rbx,%r8), %r9
	setae     %r10b
	cmpq      %r9, %r11
	setae     %r9b
	orb       %r9b, %r10b
	je        .L000042F0
.L00004271:
	cmpq      $24, %rsi
	jbe       .L000042F0
.L00004277:
	andl      $15, %ecx
	shrq      $3, %rcx
	cmpq      %rcx, %rsi
	cmovbe    %rsi, %rcx
	testq     %rcx, %rcx
	je        .L00004298
.L0000428A:
	movq      -8(%rbx,%r8), %rdx
	movq      %rdx, -8(%r12)
	leaq      -2(%rsi), %rdx
.L00004298:
	subq      %rcx, %rsi
	negq      %rcx
	leaq      -2(%rsi), %r8
	leaq      (%rdi,%rcx,8), %r9
	xorl      %ecx, %ecx
	xorl      %edi, %edi
	shrq      $1, %r8
	leaq      (%rbx,%r9), %r10
	addq      %rax, %r9
	addq      $1, %r8
	leaq      (%r8,%r8), %r11
.L000042BC:
	movdqa    (%r10,%rcx), %xmm0
	addq      $1, %rdi
	movups    %xmm0, (%r9,%rcx)
	subq      $16, %rcx
	cmpq      %r8, %rdi
	jb        .L000042BC
.L000042D4:
	subq      %r11, %rdx
	cmpq      %r11, %rsi
	je        .L0000420F
.L000042E0:
	movq      (%rbx,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000042ED:
	.p2align 4,,10
	.p2align 3
.L000042F0:
	movq      (%rbx,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	subq      $1, %rdx
	cmpq      $-1, %rdx
	jne       .L000042F0
.L00004302:
	jmp       .L0000420F
.L00004307:
	.p2align 4
.L00004310:
	movl      $27, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L0000431C:
	jmp       .L000041F0
	.size	F2xq_inv, .-F2xq_inv
# ----------------------
.L00004321:
	.p2align 4
# ----------------------
	.globl	F2xq_div
	.type	F2xq_div, @function
F2xq_div:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rdi
	movq      %rdx, %rbp
	movq      %rdx, %rsi
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %r12
	call      F2xq_inv@PLT
.L00004355:
	movq      %rbp, %rdx
	movq      %rax, %rsi
	movq      %r13, %rdi
	call      F2xq_mul@PLT
.L00004363:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L0000437B
.L0000436F:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00004390
.L0000437B:
	movq      %r12, (%rbx)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00004389:
	.p2align 4
.L00004390:
	cmpq      %r12, %rax
	jae       .L0000437B
.L00004395:
	movq      $72057594037927935, %rsi
	andq      (%rax), %rsi
	movq      %r12, %rdi
	leaq      0(,%rsi,8), %r9
	leaq      -1(%rsi), %rdx
	subq      %r9, %rdi
	cmpq      $-1, %rdx
	movq      %rdi, (%rbx)
	je        .L00004460
.L000043C1:
	leaq      -16(%r9), %r8
	leaq      (%rax,%r9), %r11
	leaq      (%rdi,%r8), %r10
	leaq      (%rax,%r8), %rcx
	cmpq      %r10, %r11
	leaq      (%rdi,%r9), %r10
	setbe     %r11b
	cmpq      %r10, %rcx
	setae     %r10b
	orb       %r10b, %r11b
	je        .L00004470
.L000043EC:
	cmpq      $24, %rsi
	jbe       .L00004470
.L000043F2:
	andl      $15, %ecx
	shrq      $3, %rcx
	cmpq      %rcx, %rsi
	cmovbe    %rsi, %rcx
	testq     %rcx, %rcx
	je        .L00004413
.L00004405:
	movq      -8(%rax,%r9), %rdx
	movq      %rdx, -8(%r12)
	leaq      -2(%rsi), %rdx
.L00004413:
	subq      %rcx, %rsi
	negq      %rcx
	leaq      -2(%rsi), %r9
	leaq      (%r8,%rcx,8), %r10
	xorl      %ecx, %ecx
	xorl      %r8d, %r8d
	shrq      $1, %r9
	leaq      (%rax,%r10), %r11
	addq      %rdi, %r10
	addq      $1, %r9
	leaq      (%r9,%r9), %rbx
.L00004438:
	movdqa    (%r11,%rcx), %xmm0
	addq      $1, %r8
	movups    %xmm0, (%r10,%rcx)
	subq      $16, %rcx
	cmpq      %r9, %r8
	jb        .L00004438
.L00004450:
	subq      %rbx, %rdx
	cmpq      %rbx, %rsi
	je        .L00004460
.L00004458:
	movq      (%rax,%rdx,8), %rax
	movq      %rax, (%rdi,%rdx,8)
.L00004460:
	addq      $8, %rsp
	movq      %rdi, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L0000446E:
	.p2align 4,,10
	.p2align 3
.L00004470:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%rdi,%rdx,8)
	subq      $1, %rdx
	cmpq      $-1, %rdx
	jne       .L00004470
.L00004482:
	jmp       .L00004460
	.size	F2xq_div, .-F2xq_div
# ----------------------
.L00004484:
	.p2align 4
# ----------------------
	.globl	F2xq_pow
	.type	F2xq_pow, @function
F2xq_pow:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $24, %rsp
	movq      8(%rsi), %rcx
	movq      avma@GOTPCREL(%rip), %rbp
	movq      %rcx, %rdi
	movq      (%rbp), %r13
	sarq      $62, %rdi
	testq     %rdi, %rdi
	je        .L00004790
.L000044C3:
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	cmpq      $3, %rcx
	je        .L00004658
.L000044DA:
	testq     %rdi, %rdi
	js        .L00004838
.L000044E3:
	leaq      _F2xq_mul(%rip), %r8
	leaq      _F2xq_sqr(%rip), %rcx
	movq      %rbx, %rsi
	movq      %r12, %rdi
	call      gen_pow@PLT
.L000044FC:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00004640
.L0000450C:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jae       .L00004640
.L0000451C:
	cmpq      %r13, %rax
	jae       .L00004640
.L00004525:
	movq      (%rax), %rcx
	movq      %rcx, %rdx
	shrq      $57, %rdx
	cmpq      $2, %rdx
	je        .L000048AA
.L00004539:
	jg        .L000048A0
.L0000453F:
	cmpq      $1, %rdx
	jne       .L00004870
.L00004549:
	movq      $72057594037927935, %rdx
	andq      8(%rax), %rdx
	movq      %r13, %rbx
	leaq      0(,%rdx,8), %rdi
	leaq      -1(%rdx), %rcx
	subq      %rdi, %rbx
	testq     %rcx, %rcx
	jle       .L00004622
.L00004572:
	leaq      -16(%rdi), %r9
	leaq      (%rbx,%rdi), %r8
	leaq      (%rax,%rdi), %r12
	movq      %rcx, %r10
	leaq      (%rax,%r9), %rsi
	cmpq      %r8, %rsi
	leaq      (%rbx,%r9), %r8
	setae     %r11b
	cmpq      %r8, %r12
	setbe     %r8b
	orb       %r8b, %r11b
	je        .L00004858
.L000045A0:
	cmpq      $24, %rcx
	jbe       .L00004858
.L000045AA:
	andl      $15, %esi
	shrq      $3, %rsi
	cmpq      %rsi, %rcx
	cmovbe    %rcx, %rsi
	testq     %rsi, %rsi
	je        .L000045CA
.L000045BD:
	movq      -8(%rax,%rdi), %rcx
	movq      %rcx, -8(%r13)
	leaq      -2(%rdx), %rcx
.L000045CA:
	subq      %rsi, %r10
	movq      %rdx, %rdi
	leaq      -2(%r10), %r8
	subq      %rsi, %rdi
	shrq      $1, %r8
	addq      $1, %r8
	cmpq      $2, %rdi
	leaq      (%r8,%r8), %r11
	je        .L0000461A
.L000045E8:
	negq      %rsi
	xorl      %edi, %edi
	leaq      (%r9,%rsi,8), %r9
	xorl      %esi, %esi
	leaq      (%rax,%r9), %r12
	addq      %rbx, %r9
.L000045FA:
	movdqa    (%r12,%rsi), %xmm0
	addq      $1, %rdi
	movups    %xmm0, (%r9,%rsi)
	subq      $16, %rsi
	cmpq      %r8, %rdi
	jb        .L000045FA
.L00004612:
	subq      %r11, %rcx
	cmpq      %r11, %r10
	je        .L00004622
.L0000461A:
	movq      (%rax,%rcx,8), %rax
	movq      %rax, (%rbx,%rcx,8)
.L00004622:
	movq      $144115188075855872, %rax
	orq       %rax, %rdx
	movq      %rbx, %rax
	movq      %rdx, (%rbx)
	movq      %rbx, (%rbp)
	jmp       .L00004644
.L0000463B:
	.p2align 4,,10
	.p2align 3
.L00004640:
	movq      %r13, (%rbp)
.L00004644:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00004653:
	.p2align 4,,10
	.p2align 3
.L00004658:
	cmpq      $1, 16(%rsi)
	jne       .L000044DA
.L00004663:
	testq     %rdi, %rdi
	js        .L00004818
.L0000466C:
	andq      (%r12), %rax
	movq      %r13, %rsi
	movq      %r13, %rbx
	movq      %rax, %r14
	leaq      0(,%rax,8), %r15
	movq      bot@GOTPCREL(%rip), %rax
	subq      %r15, %rbx
	subq      (%rax), %rsi
	movq      %rsi, %rax
	shrq      $3, %rax
	cmpq      %rax, %r14
	jbe       .L000046A6
.L0000469A:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000046A6:
	movq      %rbx, (%rbp)
	movq      $-72057594037927937, %rax
	andq      (%r12), %rax
	leaq      -1(%r14), %rcx
	testq     %rcx, %rcx
	movq      %rax, (%rbx)
	movq      %rcx, %rax
	jle       .L00004777
.L000046CB:
	leaq      -16(%r15), %rdi
	leaq      (%r12,%r15), %rsi
	leaq      (%rbx,%rdi), %r8
	leaq      (%r12,%rdi), %rdx
	cmpq      %rsi, %r8
	leaq      (%rbx,%r15), %rsi
	setae     %r8b
	cmpq      %rsi, %rdx
	setae     %sil
	orb       %sil, %r8b
	je        .L000047F0
.L000046F6:
	cmpq      $24, %rcx
	jbe       .L000047F0
.L00004700:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rcx, %rdx
	cmova     %rcx, %rdx
	testq     %rdx, %rdx
	je        .L00004720
.L00004713:
	movq      -8(%r12,%r15), %rax
	movq      %rax, -8(%r13)
	leaq      -2(%r14), %rax
.L00004720:
	movq      %rcx, %rsi
	subq      %rdx, %r14
	subq      %rdx, %rsi
	leaq      -2(%rsi), %r8
	shrq      $1, %r8
	addq      $1, %r8
	cmpq      $2, %r14
	leaq      (%r8,%r8), %r9
	je        .L0000476F
.L0000473E:
	negq      %rdx
	xorl      %ecx, %ecx
	leaq      (%rdi,%rdx,8), %rdi
	xorl      %edx, %edx
	leaq      (%r12,%rdi), %r10
	addq      %rbx, %rdi
.L00004750:
	movdqa    (%r10,%rdx), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%rdi,%rdx)
	subq      $16, %rdx
	cmpq      %r8, %rcx
	jb        .L00004750
.L00004767:
	subq      %r9, %rax
	cmpq      %r9, %rsi
	je        .L00004777
.L0000476F:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
.L00004777:
	addq      $24, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00004789:
	.p2align 4
.L00004790:
	movq      bot@GOTPCREL(%rip), %rax
	movq      %r13, %rsi
	movq      8(%r12), %r12
	leaq      -24(%r13), %rbx
	subq      (%rax), %rsi
	cmpq      $23, %rsi
	jbe       .L000047E0
.L000047AC:
	movq      $3170534137668829187, %rax
	movq      %rbx, (%rbp)
	movq      %r12, -16(%r13)
	movq      %rax, -24(%r13)
	movq      $1, -8(%r13)
	addq      $24, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000047DC:
	.p2align 4,,10
	.p2align 3
.L000047E0:
	movb      $14, %dil
	xorl      %eax, %eax
	call      pari_err@PLT
.L000047EA:
	jmp       .L000047AC
.L000047EC:
	.p2align 4,,10
	.p2align 3
.L000047F0:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	subq      $1, %rax
	je        .L00004777
.L00004802:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%rbx,%rax,8)
	subq      $1, %rax
	jne       .L000047F0
.L00004810:
	jmp       .L00004777
.L00004815:
	.p2align 4,,10
	.p2align 3
.L00004818:
	addq      $24, %rsp
	movq      %r12, %rdi
	movq      %rdx, %rsi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       F2xq_inv@PLT
.L00004831:
	.p2align 4,,10
	.p2align 3
.L00004838:
	movq      %rdx, %rsi
	movq      %r12, %rdi
	movq      %rdx, 8(%rsp)
	call      F2xq_inv@PLT
.L00004848:
	movq      8(%rsp), %rdx
	movq      %rax, %r12
	jmp       .L000044E3
.L00004855:
	.p2align 4,,10
	.p2align 3
.L00004858:
	movq      (%rax,%rcx,8), %rsi
	movq      %rsi, (%rbx,%rcx,8)
	subq      $1, %rcx
	jne       .L00004858
.L00004866:
	jmp       .L00004622
.L0000486B:
	.p2align 4,,10
	.p2align 3
.L00004870:
	addq      $24, %rsp
	movq      $72057594037927935, %rdx
	movq      %r13, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	andq      %rdx, %rcx
	movq      %rax, %rdx
	leaq      (%rax,%rcx,8), %rsi
	jmp       gerepile@PLT
.L0000489A:
	.p2align 4,,10
	.p2align 3
.L000048A0:
	subq      $21, %rdx
	cmpq      $1, %rdx
	ja        .L00004870
.L000048AA:
	movq      $72057594037927935, %rdx
	movq      %r13, %rbx
	andq      %rdx, %rcx
	leaq      0(,%rcx,8), %r8
	leaq      -1(%rcx), %rsi
	subq      %r8, %rbx
	cmpq      $-1, %rsi
	movq      %rbx, (%rbp)
	je        .L00004777
.L000048D7:
	leaq      -16(%r8), %rdx
	leaq      (%rbx,%r8), %r9
	leaq      (%rax,%r8), %r11
	leaq      (%rax,%rdx), %rdi
	cmpq      %r9, %rdi
	leaq      (%rbx,%rdx), %r9
	setae     %r10b
	cmpq      %r9, %r11
	setbe     %r9b
	orb       %r9b, %r10b
	je        .L00004980
.L00004902:
	cmpq      $24, %rcx
	jbe       .L00004980
.L00004908:
	andl      $15, %edi
	shrq      $3, %rdi
	cmpq      %rdi, %rcx
	cmovbe    %rcx, %rdi
	testq     %rdi, %rdi
	je        .L00004928
.L0000491B:
	movq      -8(%rax,%r8), %rsi
	movq      %rsi, -8(%r13)
	leaq      -2(%rcx), %rsi
.L00004928:
	subq      %rdi, %rcx
	negq      %rdi
	leaq      -2(%rcx), %r8
	leaq      (%rdx,%rdi,8), %r9
	xorl      %edi, %edi
	xorl      %edx, %edx
	shrq      $1, %r8
	leaq      (%rax,%r9), %r10
	addq      %rbx, %r9
	addq      $1, %r8
	leaq      (%r8,%r8), %r11
.L0000494C:
	movdqa    (%r10,%rdi), %xmm0
	addq      $1, %rdx
	movups    %xmm0, (%r9,%rdi)
	subq      $16, %rdi
	cmpq      %r8, %rdx
	jb        .L0000494C
.L00004964:
	subq      %r11, %rsi
	cmpq      %r11, %rcx
	je        .L00004777
.L00004970:
	movq      (%rax,%rsi,8), %rax
	movq      %rax, (%rbx,%rsi,8)
	jmp       .L00004777
.L0000497D:
	.p2align 4,,10
	.p2align 3
.L00004980:
	movq      (%rax,%rsi,8), %rdx
	movq      %rdx, (%rbx,%rsi,8)
	subq      $1, %rsi
	cmpq      $-1, %rsi
	jne       .L00004980
.L00004992:
	jmp       .L00004777
	.size	F2xq_pow, .-F2xq_pow
# ----------------------
.L00004997:
	.p2align 4
# ----------------------
	.local	_F2xq_pow
	.type	_F2xq_pow, @function
_F2xq_pow:
	movq      %rdi, %rax
	movq      %rsi, %rdi
	movq      %rdx, %rsi
	movq      %rax, %rdx
	jmp       F2xq_pow@PLT
	.size	_F2xq_pow, .-_F2xq_pow
# ----------------------
.L000049B1:
	.p2align 4
# ----------------------
	.globl	F2xq_powers
	.type	F2xq_powers, @function
F2xq_powers:
	pushq     %r15
	pushq     %r14
	leaq      2(%rsi), %r15
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r14
	pushq     %rbp
	pushq     %rbx
	leaq      0(,%r15,8), %rcx
	movq      %rdi, %r12
	movq      %rdx, %r13
	subq      $40, %rsp
	movq      avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %rax
	movq      %rax, %rbx
	subq      %rcx, %rbx
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %r15
	jbe       .L00004A13
.L00004A07:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00004A13:
	movq      $-72057594037927936, %rax
	movq      %rbx, (%rbp)
	testq     %rax, %r15
	je        .L00004A39
.L00004A26:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00004A39:
	movq      $2449958197289549824, %rax
	movq      bot@GOTPCREL(%rip), %rdx
	orq       %rax, %r15
	movq      %r15, (%rbx)
	movq      (%rbp), %r15
	movq      8(%r13), %rsi
	movq      %r15, %rax
	subq      (%rdx), %rax
	leaq      -24(%r15), %rcx
	cmpq      $23, %rax
	ja        .L00004A88
.L00004A68:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 16(%rsp)
	movq      %rsi, 8(%rsp)
	call      pari_err@PLT
.L00004A7E:
	movq      16(%rsp), %rcx
	movq      8(%rsp), %rsi
.L00004A88:
	movq      $3170534137668829187, %rax
	testq     %r14, %r14
	movq      %rcx, (%rbp)
	movq      %rsi, -16(%r15)
	movq      %rax, -24(%r15)
	movq      $1, -8(%r15)
	movq      %rcx, 8(%rbx)
	jne       .L00004AC8
.L00004AAF:
	addq      $40, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00004AC1:
	.p2align 4,,10
	.p2align 3
.L00004AC8:
	movq      (%rbp), %r8
	movq      bot@GOTPCREL(%rip), %rdi
	movq      $72057594037927935, %rcx
	andq      (%r12), %rcx
	movq      %r8, %rax
	subq      (%rdi), %rax
	movq      %r8, %r15
	leaq      0(,%rcx,8), %rsi
	shrq      $3, %rax
	subq      %rsi, %r15
	cmpq      %rax, %rcx
	jbe       .L00004B28
.L00004AFE:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 24(%rsp)
	movq      %rcx, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      pari_err@PLT
.L00004B19:
	movq      24(%rsp), %rsi
	movq      16(%rsp), %rcx
	movq      8(%rsp), %r8
.L00004B28:
	movq      %r15, (%rbp)
	movq      $-72057594037927937, %rax
	andq      (%r12), %rax
	leaq      -1(%rcx), %r9
	testq     %r9, %r9
	movq      %rax, (%r15)
	movq      %r9, %rax
	jle       .L00004BF7
.L00004B4D:
	leaq      -16(%rsi), %rdi
	leaq      (%r12,%rsi), %r10
	leaq      (%r15,%rdi), %r11
	leaq      (%r12,%rdi), %rdx
	cmpq      %r10, %r11
	leaq      (%r15,%rsi), %r10
	setae     %r11b
	cmpq      %r10, %rdx
	setae     %r10b
	orb       %r10b, %r11b
	je        .L00004C98
.L00004B78:
	cmpq      $24, %r9
	jbe       .L00004C98
.L00004B82:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %r9
	cmovbe    %r9, %rdx
	testq     %rdx, %rdx
	je        .L00004BA2
.L00004B95:
	movq      -8(%r12,%rsi), %rax
	movq      %rax, -8(%r8)
	leaq      -2(%rcx), %rax
.L00004BA2:
	subq      %rdx, %r9
	subq      %rdx, %rcx
	leaq      -2(%r9), %rsi
	shrq      $1, %rsi
	addq      $1, %rsi
	cmpq      $2, %rcx
	leaq      (%rsi,%rsi), %r8
	je        .L00004BEF
.L00004BBD:
	negq      %rdx
	xorl      %ecx, %ecx
	leaq      (%rdi,%rdx,8), %rdi
	xorl      %edx, %edx
	leaq      (%r12,%rdi), %r10
	addq      %r15, %rdi
	.p2align 4,,10
	.p2align 3
.L00004BD0:
	movdqa    (%r10,%rdx), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%rdi,%rdx)
	subq      $16, %rdx
	cmpq      %rsi, %rcx
	jb        .L00004BD0
.L00004BE7:
	subq      %r8, %rax
	cmpq      %r8, %r9
	je        .L00004BF7
.L00004BEF:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%r15,%rax,8)
.L00004BF7:
	cmpq      $1, %r14
	movq      %r15, 16(%rbx)
	je        .L00004AAF
.L00004C05:
	movq      %r13, %rsi
	movq      %r12, %rdi
	addq      $1, %r14
	call      F2xq_sqr@PLT
.L00004C14:
	movq      %r12, %rdi
	movq      %rax, 24(%rbx)
	call      F2x_degree@PLT
.L00004C20:
	movq      %rax, %rbp
	movq      %r13, %rdi
	addq      %rbp, %rbp
	call      F2x_degree@PLT
.L00004C2E:
	cmpq      %rax, %rbp
	jl        .L00004CC0
.L00004C37:
	cmpq      $3, %r14
	movl      $5, %ebp
	jg        .L00004C77
.L00004C42:
	jmp       .L00004AAF
.L00004C47:
	.p2align 4
.L00004C50:
	movq      %rbp, %rax
	movq      %r13, %rsi
	movq      %rbp, %r15
	sarq      $1, %rax
	movq      (%rbx,%rax,8), %rdi
	call      F2xq_sqr@PLT
.L00004C65:
	movq      %rax, -8(%rbx,%rbp,8)
	addq      $1, %rbp
	cmpq      %r15, %r14
	jl        .L00004AAF
.L00004C77:
	testb     $1, %bpl
	je        .L00004C50
.L00004C7D:
	movq      -16(%rbx,%rbp,8), %rdi
	movq      %r13, %rdx
	movq      %r12, %rsi
	movq      %rbp, %r15
	call      F2xq_mul@PLT
.L00004C90:
	jmp       .L00004C65
.L00004C92:
	.p2align 4,,10
	.p2align 3
.L00004C98:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%r15,%rax,8)
	subq      $1, %rax
	je        .L00004BF7
.L00004CAA:
	movq      (%r12,%rax,8), %rdx
	movq      %rdx, (%r15,%rax,8)
	subq      $1, %rax
	jne       .L00004C98
.L00004CB8:
	jmp       .L00004BF7
.L00004CBD:
	.p2align 4,,10
	.p2align 3
.L00004CC0:
	cmpq      $3, %r14
	jle       .L00004AAF
.L00004CCA:
	movl      $4, %ebp
	.p2align 4,,10
	.p2align 3
.L00004CD0:
	movq      -8(%rbx,%rbp,8), %rdi
	movq      %r13, %rdx
	movq      %r12, %rsi
	call      F2xq_mul@PLT
.L00004CE0:
	movq      %rax, (%rbx,%rbp,8)
	addq      $1, %rbp
	cmpq      %rbp, %r14
	jge       .L00004CD0
.L00004CED:
	jmp       .L00004AAF
	.size	F2xq_powers, .-F2xq_powers
# ----------------------
.L00004CF2:
	.p2align 4
# ----------------------
	.globl	F2xq_trace
	.type	F2xq_trace, @function
F2xq_trace:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rdi
	movq      %rsi, %rbp
	subq      $24, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %r12
	call      F2x_deriv@PLT
.L00004D26:
	movq      %r13, %rdi
	movq      %rax, %rsi
	call      F2x_mul@PLT
.L00004D31:
	movq      $72057594037927935, %rdx
	movq      %rax, %r14
	andq      (%rax), %rdx
	movq      bot@GOTPCREL(%rip), %rsi
	movq      (%rbx), %rax
	movq      %rax, %r13
	subq      (%rsi), %rax
	leaq      1(%rdx), %r15
	leaq      0(,%r15,8), %rcx
	shrq      $3, %rax
	subq      %rcx, %r13
	cmpq      %rax, %r15
	jbe       .L00004D87
.L00004D69:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rcx, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00004D7E:
	movq      8(%rsp), %rcx
	movq      (%rsp), %rdx
.L00004D87:
	movq      $-72057594037927936, %rax
	movq      %r13, (%rbx)
	testq     %rax, %r15
	je        .L00004DBE
.L00004D99:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rcx, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00004DB5:
	movq      8(%rsp), %rcx
	movq      (%rsp), %rdx
.L00004DBE:
	movq      $3170534137668829184, %rax
	movq      $0, 16(%r13)
	orq       %r15, %rax
	cmpq      $2, %rdx
	movq      %rax, (%r13)
	jle       .L00004E68
.L00004DE1:
	leaq      -8(%rcx), %rax
	leaq      16(%r14), %rdx
	xorl      %ecx, %ecx
	leaq      (%r14,%rax), %rsi
	.p2align 4,,10
	.p2align 3
.L00004DF0:
	movq      (%rdx), %rdi
	movq      %rdx, %r9
	addq      $8, %rdx
	subq      %r14, %r9
	leaq      (%rdi,%rdi), %r8
	orq       %r8, %rcx
	movq      %rcx, (%r9,%r13)
	movq      -8(%rdx), %rcx
	shrq      $63, %rcx
	cmpq      %rsi, %rdx
	jne       .L00004DF0
.L00004E15:
	movq      %rcx, (%r13,%rax)
	movq      %r15, %rsi
	movq      %r13, %rdi
	call      Flx_renormalize@PLT
.L00004E25:
	xorl      %edx, %edx
	movq      %rbp, %rsi
	movq      %rax, %rdi
	call      F2x_divrem@PLT
.L00004E32:
	movq      $72057594037927935, %rdx
	andq      (%rax), %rdx
	cmpq      $2, %rdx
	je        .L00004E60
.L00004E45:
	movq      16(%rax), %rax
	andl      $1, %eax
.L00004E4C:
	movq      %r12, (%rbx)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00004E5E:
	.p2align 4,,10
	.p2align 3
.L00004E60:
	xorl      %eax, %eax
	jmp       .L00004E4C
.L00004E64:
	.p2align 4,,10
	.p2align 3
.L00004E68:
	xorl      %ecx, %ecx
	movl      $16, %eax
	jmp       .L00004E15
	.size	F2xq_trace, .-F2xq_trace
# ----------------------
.L00004E71:
	.p2align 4
# ----------------------
	.globl	F2xq_conjvec
	.type	F2xq_conjvec, @function
F2xq_conjvec:
	pushq     %r15
	pushq     %r14
	movq      %rdi, %r14
	pushq     %r13
	pushq     %r12
	movq      %rsi, %rdi
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %r13
	subq      $40, %rsp
	call      F2x_degree@PLT
.L00004E9C:
	movq      avma@GOTPCREL(%rip), %rbx
	movq      %rax, %r12
	leaq      0(,%r12,8), %rcx
	movq      (%rbx), %rax
	movq      %rax, %rbp
	subq      %rcx, %rbp
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %r12
	jbe       .L00004ED6
.L00004ECA:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00004ED6:
	movq      $-72057594037927936, %rax
	movq      %rbp, (%rbx)
	testq     %rax, %r12
	je        .L00004EFB
.L00004EE8:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00004EFB:
	movq      $2594073385365405696, %rax
	movq      bot@GOTPCREL(%rip), %rdx
	movq      $72057594037927935, %rcx
	orq       %r12, %rax
	movq      %rax, (%rbp)
	movq      (%rbx), %r8
	andq      (%r14), %rcx
	movq      %r8, %rax
	subq      (%rdx), %rax
	movq      %r8, %r15
	leaq      0(,%rcx,8), %rsi
	shrq      $3, %rax
	subq      %rsi, %r15
	cmpq      %rax, %rcx
	jbe       .L00004F6A
.L00004F40:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 24(%rsp)
	movq      %rcx, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      pari_err@PLT
.L00004F5B:
	movq      24(%rsp), %rsi
	movq      16(%rsp), %rcx
	movq      8(%rsp), %r8
.L00004F6A:
	movq      %r15, (%rbx)
	movq      $-72057594037927937, %rax
	andq      (%r14), %rax
	leaq      -1(%rcx), %r9
	testq     %r9, %r9
	movq      %rax, (%r15)
	movq      %r9, %rax
	jle       .L00005037
.L00004F8D:
	leaq      -16(%rsi), %rdi
	leaq      (%r14,%rsi), %r11
	leaq      (%r15,%rdi), %r10
	leaq      (%r14,%rdi), %rdx
	cmpq      %r10, %r11
	leaq      (%r15,%rsi), %r10
	setbe     %r11b
	cmpq      %r10, %rdx
	setae     %r10b
	orb       %r10b, %r11b
	je        .L00005080
.L00004FB8:
	cmpq      $24, %r9
	jbe       .L00005080
.L00004FC2:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %r9
	cmovbe    %r9, %rdx
	testq     %rdx, %rdx
	je        .L00004FE2
.L00004FD5:
	movq      -8(%r14,%rsi), %rax
	movq      %rax, -8(%r8)
	leaq      -2(%rcx), %rax
.L00004FE2:
	subq      %rdx, %r9
	subq      %rdx, %rcx
	leaq      -2(%r9), %rsi
	shrq      $1, %rsi
	addq      $1, %rsi
	cmpq      $2, %rcx
	leaq      (%rsi,%rsi), %r8
	je        .L0000502F
.L00004FFD:
	negq      %rdx
	xorl      %ecx, %ecx
	leaq      (%rdi,%rdx,8), %rdi
	xorl      %edx, %edx
	leaq      (%r14,%rdi), %r10
	addq      %r15, %rdi
	.p2align 4,,10
	.p2align 3
.L00005010:
	movdqa    (%r10,%rdx), %xmm0
	addq      $1, %rcx
	movups    %xmm0, (%rdi,%rdx)
	subq      $16, %rdx
	cmpq      %rsi, %rcx
	jb        .L00005010
.L00005027:
	subq      %r8, %rax
	cmpq      %r8, %r9
	je        .L00005037
.L0000502F:
	movq      (%r14,%rax,8), %rdx
	movq      %rdx, (%r15,%rax,8)
.L00005037:
	cmpq      $2, %r12
	movq      %r15, 8(%rbp)
	movl      $2, %ebx
	jle       .L0000506B
.L00005046:
	.p2align 4
.L00005050:
	movq      -8(%rbp,%rbx,8), %rdi
	movq      %r13, %rsi
	call      F2xq_sqr@PLT
.L0000505D:
	movq      %rax, (%rbp,%rbx,8)
	addq      $1, %rbx
	cmpq      %r12, %rbx
	jne       .L00005050
.L0000506B:
	addq      $40, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000507D:
	.p2align 4,,10
	.p2align 3
.L00005080:
	movq      (%r14,%rax,8), %rdx
	movq      %rdx, (%r15,%rax,8)
	subq      $1, %rax
	je        .L00005037
.L0000508E:
	movq      (%r14,%rax,8), %rdx
	movq      %rdx, (%r15,%rax,8)
	subq      $1, %rax
	jne       .L00005080
.L0000509C:
	jmp       .L00005037
	.size	F2xq_conjvec, .-F2xq_conjvec
# ----------------------
.L0000509E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	random_F2x
	.type	random_F2x, @function
random_F2x:
	pushq     %r15
	pushq     %r14
	movq      %rsi, %r15
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	leaq      192(%rdi), %rbp
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      bot@GOTPCREL(%rip), %rdx
	shrq      $6, %rbp
	leaq      0(,%rbp,8), %r14
	movq      (%rbx), %rax
	movq      %rax, %r12
	subq      (%rdx), %rax
	subq      %r14, %r12
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L000050F6
.L000050EA:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000050F6:
	movq      $-72057594037927936, %rax
	movq      %r12, (%rbx)
	testq     %rax, %rbp
	jne       .L00005178
.L00005108:
	movq      $3170534137668829184, %rax
	movq      %r15, 8(%r12)
	orq       %rbp, %rax
	cmpq      $2, %rbp
	movq      %rax, (%r12)
	jbe       .L00005142
.L00005124:
	movl      $2, %ebx
	.p2align 4
.L00005130:
	call      pari_rand@PLT
.L00005135:
	movq      %rax, (%r12,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L00005130
.L00005142:
	movq      %r13, %rcx
	movl      $1, %eax
	movq      %rbp, %rsi
	andl      $63, %ecx
	movq      %r12, %rdi
	salq      %cl, %rax
	subq      $1, %rax
	andq      %rax, -8(%r14,%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       Flx_renormalize@PLT
.L00005172:
	.p2align 4,,10
	.p2align 3
.L00005178:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	call      pari_err@PLT
.L0000518B:
	movq      $3170534137668829184, %rax
	movq      %r15, 8(%r12)
	orq       %rbp, %rax
	movq      %rax, (%r12)
	jmp       .L00005124
	.size	random_F2x, .-random_F2x
# ----------------------
.L000051A3:
	.p2align 4
# ----------------------
	.local	_F2xq_rand
	.type	_F2xq_rand, @function
_F2xq_rand:
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      $72057594037927935, %r12
	movq      avma@GOTPCREL(%rip), %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	movq      (%rbp), %r14
	call      F2x_degree@PLT
.L000051D5:
	movq      %rax, %r13
	.p2align 4
.L000051E0:
	movq      8(%rbx), %rsi
	movq      %r13, %rdi
	movq      %r14, (%rbp)
	call      random_F2x@PLT
.L000051F0:
	movq      %rax, %rdx
	movq      %r12, %rax
	andq      (%rdx), %rax
	cmpq      $2, %rax
	je        .L000051E0
.L000051FF:
	popq      %rbx
	movq      %rdx, %rax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.size	_F2xq_rand, .-_F2xq_rand
# ----------------------
.L0000520B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xq_order
	.type	F2xq_order, @function
F2xq_order:
	leaq      F2xq_star(%rip), %rcx
	jmp       gen_eltorder@PLT
	.size	F2xq_order, .-F2xq_order
# ----------------------
.L0000521C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xq_log
	.type	F2xq_log, @function
F2xq_log:
	leaq      F2xq_star(%rip), %r8
	xorl      %r9d, %r9d
	jmp       gen_PH_log@PLT
	.size	F2xq_log, .-F2xq_log
# ----------------------
.L0000522F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xq_sqrt
	.type	F2xq_sqrt, @function
F2xq_sqrt:
	pushq     %r15
	pushq     %r14
	movq      %rsi, %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	movq      %rsi, %rdi
	subq      $24, %rsp
	movq      avma@GOTPCREL(%rip), %r12
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r12), %r15
	movq      (%rax), %rax
	movq      %r15, %r13
	subq      %rax, %r13
	shrq      $2, %r13
	addq      %rax, %r13
	call      F2x_degree@PLT
.L0000526E:
	cmpq      $1, %rax
	movq      %rax, 8(%rsp)
	jle       .L000053CF
.L0000527D:
	movl      $1, %ebp
	.p2align 4,,10
	.p2align 3
.L00005288:
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      F2xq_sqr@PLT
.L00005293:
	cmpq      (%r12), %r13
	movq      %rax, %rbx
	jbe       .L000053C0
.L000052A0:
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $1, (%rax)
	jbe       .L000052C3
.L000052AD:
	leaq      .LC55(%rip), %rsi
	movq      %rbp, %rdx
	movl      $3, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
.L000052C3:
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        .L00005418
.L000052D3:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jae       .L00005418
.L000052E3:
	cmpq      %r15, %rbx
	jae       .L00005418
.L000052EC:
	movq      $72057594037927935, %rsi
	andq      (%rbx), %rsi
	movq      %r15, %rcx
	leaq      0(,%rsi,8), %rdi
	leaq      -1(%rsi), %rax
	subq      %rdi, %rcx
	cmpq      $-1, %rax
	movq      %rcx, (%r12)
	je        .L000053BA
.L00005319:
	leaq      -16(%rdi), %r8
	leaq      (%rcx,%rdi), %r9
	leaq      (%rbx,%rdi), %r11
	leaq      (%rbx,%r8), %rdx
	leaq      (%rcx,%r8), %r10
	cmpq      %r9, %rdx
	setae     %r9b
	cmpq      %r10, %r11
	setbe     %r10b
	orb       %r10b, %r9b
	je        .L00005400
.L00005344:
	cmpq      $24, %rsi
	jbe       .L00005400
.L0000534E:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %rsi
	cmovbe    %rsi, %rdx
	testq     %rdx, %rdx
	je        .L0000536E
.L00005361:
	movq      -8(%rbx,%rdi), %rax
	movq      %rax, -8(%r15)
	leaq      -2(%rsi), %rax
.L0000536E:
	subq      %rdx, %rsi
	negq      %rdx
	xorl      %edi, %edi
	leaq      -2(%rsi), %r9
	leaq      (%r8,%rdx,8), %r8
	xorl      %edx, %edx
	shrq      $1, %r9
	leaq      (%rbx,%r8), %r10
	addq      %rcx, %r8
	addq      $1, %r9
	leaq      (%r9,%r9), %r11
.L00005392:
	movdqa    (%r10,%rdx), %xmm0
	addq      $1, %rdi
	movups    %xmm0, (%r8,%rdx)
	subq      $16, %rdx
	cmpq      %r9, %rdi
	jb        .L00005392
.L000053AA:
	subq      %r11, %rax
	cmpq      %r11, %rsi
	je        .L000053BA
.L000053B2:
	movq      (%rbx,%rax,8), %rdx
	movq      %rdx, (%rcx,%rax,8)
.L000053BA:
	movq      %rcx, %rbx
	.p2align 4,,10
	.p2align 3
.L000053C0:
	addq      $1, %rbp
	cmpq      8(%rsp), %rbp
	jne       .L00005288
.L000053CF:
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        .L000053E7
.L000053DB:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rbx
	jb        .L00005420
.L000053E7:
	movq      %r15, (%r12)
	movq      %rbx, %rax
.L000053EE:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000053FD:
	.p2align 4,,10
	.p2align 3
.L00005400:
	movq      (%rbx,%rax,8), %rdx
	movq      %rdx, (%rcx,%rax,8)
	subq      $1, %rax
	cmpq      $-1, %rax
	jne       .L00005400
.L00005412:
	jmp       .L000053BA
.L00005414:
	.p2align 4,,10
	.p2align 3
.L00005418:
	movq      %r15, (%r12)
	jmp       .L000053C0
.L0000541E:
	.p2align 4,,10
	.p2align 3
.L00005420:
	cmpq      %r15, %rbx
	jae       .L000053E7
.L00005425:
	movq      $72057594037927935, %rsi
	andq      (%rbx), %rsi
	movq      %r15, %rax
	leaq      0(,%rsi,8), %r8
	leaq      -1(%rsi), %rdx
	subq      %r8, %rax
	cmpq      $-1, %rdx
	movq      %rax, (%r12)
	je        .L000053EE
.L0000544E:
	leaq      -16(%r8), %rdi
	leaq      (%rbx,%r8), %r9
	leaq      (%rax,%rdi), %r10
	leaq      (%rbx,%rdi), %rcx
	cmpq      %r9, %r10
	leaq      (%rax,%r8), %r9
	setae     %r10b
	cmpq      %r9, %rcx
	setae     %r9b
	orb       %r9b, %r10b
	je        .L00005508
.L00005479:
	cmpq      $24, %rsi
	jbe       .L00005508
.L00005483:
	andl      $15, %ecx
	shrq      $3, %rcx
	cmpq      %rcx, %rsi
	cmovbe    %rsi, %rcx
	testq     %rcx, %rcx
	je        .L000054A3
.L00005496:
	movq      -8(%rbx,%r8), %rdx
	movq      %rdx, -8(%r15)
	leaq      -2(%rsi), %rdx
.L000054A3:
	subq      %rcx, %rsi
	negq      %rcx
	leaq      -2(%rsi), %r8
	leaq      (%rdi,%rcx,8), %r9
	xorl      %ecx, %ecx
	xorl      %edi, %edi
	shrq      $1, %r8
	leaq      (%rbx,%r9), %r10
	addq      %rax, %r9
	addq      $1, %r8
	leaq      (%r8,%r8), %r11
.L000054C7:
	movdqa    (%r10,%rcx), %xmm0
	addq      $1, %rdi
	movups    %xmm0, (%r9,%rcx)
	subq      $16, %rcx
	cmpq      %r8, %rdi
	jb        .L000054C7
.L000054DF:
	subq      %r11, %rdx
	cmpq      %r11, %rsi
	je        .L000053EE
.L000054EB:
	movq      (%rbx,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00005502:
	.p2align 4,,10
	.p2align 3
.L00005508:
	movq      (%rbx,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	subq      $1, %rdx
	cmpq      $-1, %rdx
	jne       .L00005508
.L0000551A:
	jmp       .L000053EE
	.size	F2xq_sqrt, .-F2xq_sqrt
# ----------------------
.L0000551F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xq_sqrtn
	.type	F2xq_sqrtn, @function
F2xq_sqrtn:
	pushq     %r15
	pushq     %r14
	movq      $72057594037927935, %rax
	pushq     %r13
	pushq     %r12
	movq      %rcx, %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbp
	movq      %rdx, %rbx
	subq      $24, %rsp
	andq      (%rdi), %rax
	cmpq      $2, %rax
	je        .L000055A8
.L0000554A:
	movq      %rdx, %rdi
	movq      %rsi, %r13
	call      F2x_degree@PLT
.L00005555:
	movl      $2, %edi
	movq      %rax, %rsi
	call      powuu@PLT
.L00005562:
	movq      8(%rax), %rdx
	movq      %rax, %rsi
	movq      $-1, %rdi
	sarq      $62, %rdx
	call      addsi_sign@PLT
.L00005579:
	addq      $24, %rsp
	movq      %rbx, %r8
	movq      %r12, %rcx
	popq      %rbx
	movq      %r13, %rsi
	movq      %rbp, %rdi
	leaq      F2xq_star(%rip), %r9
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	movq      %rax, %rdx
	jmp       gen_Shanks_sqrtn@PLT
.L000055A2:
	.p2align 4,,10
	.p2align 3
.L000055A8:
	testq     %rcx, %rcx
	je        .L00005660
.L000055B1:
	movq      avma@GOTPCREL(%rip), %r13
	movq      bot@GOTPCREL(%rip), %r14
	movq      8(%rdx), %rdx
	movq      (%r13), %rbp
	movq      %rbp, %rax
	subq      (%r14), %rax
	leaq      -24(%rbp), %r15
	cmpq      $23, %rax
	ja        .L000055ED
.L000055D7:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L000055E8:
	movq      8(%rsp), %rdx
.L000055ED:
	movq      $3170534137668829187, %rax
	movq      %r15, (%r13)
	movq      %rdx, -16(%rbp)
	movq      %rax, -24(%rbp)
	movq      $1, -8(%rbp)
	movq      %r15, (%r12)
.L0000560F:
	movq      8(%rbx), %r12
	movq      (%r13), %rbx
	movq      %rbx, %rax
	subq      (%r14), %rax
	leaq      -16(%rbx), %rbp
	cmpq      $15, %rax
	ja        .L00005633
.L00005627:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005633:
	movq      $3170534137668829186, %rax
	movq      %rbp, (%r13)
	movq      %r12, -8(%rbx)
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
.L0000565B:
	.p2align 4,,10
	.p2align 3
.L00005660:
	movq      avma@GOTPCREL(%rip), %r13
	movq      bot@GOTPCREL(%rip), %r14
	jmp       .L0000560F
	.size	F2xq_sqrtn, .-F2xq_sqrtn
# ----------------------
	.globl	gener_F2xq
	.type	gener_F2xq, @function
gener_F2xq:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $104, %rsp
	movq      8(%rdi), %rax
	movq      %rsi, 32(%rsp)
	movq      %rax, 16(%rsp)
	call      F2x_degree@PLT
.L00005694:
	movq      avma@GOTPCREL(%rip), %r14
	cmpq      $1, %rax
	movq      %rax, 8(%rsp)
	movq      (%r14), %rcx
	movq      %rcx, 48(%rsp)
	je        .L000059A4
.L000056B2:
	movq      %rax, %rsi
	movl      $2, %edi
	movq      %rax, %rbx
	call      powuu@PLT
.L000056C2:
	movq      8(%rax), %rdx
	movq      %rax, %rsi
	movq      $-1, %rdi
	movq      $72057594037927935, %r13
	sarq      $62, %rdx
	call      addsi_sign@PLT
.L000056E3:
	movq      %rax, 24(%rsp)
	movq      gen_2@GOTPCREL(%rip), %rax
	movq      %rbx, %rsi
	movq      (%rax), %rdi
	call      factor_pn_1@PLT
.L000056FA:
	movq      8(%rax), %rbx
	movq      %rax, 64(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r14), %r10
	andq      (%rbx), %r13
	movq      %rax, %rcx
	movq      %rax, 40(%rsp)
	movq      %r10, %rax
	subq      (%rcx), %rax
	movq      %r10, %rbp
	leaq      0(,%r13,8), %rsi
	shrq      $3, %rax
	subq      %rsi, %rbp
	cmpq      %rax, %r13
	ja        .L0000597F
.L00005739:
	movq      %rbp, (%r14)
	movq      $-72057594037927937, %rax
	andq      (%rbx), %rax
	leaq      -1(%r13), %rcx
	testq     %rcx, %rcx
	movq      %rax, (%rbp)
	movq      %rcx, %rax
	jle       .L0000580A
.L0000575D:
	leaq      -16(%rsi), %rdi
	leaq      (%rbx,%rsi), %r8
	leaq      (%rbp,%rdi), %r9
	leaq      (%rbx,%rdi), %rdx
	cmpq      %r8, %r9
	leaq      (%rbp,%rsi), %r8
	setae     %r9b
	cmpq      %r8, %rdx
	setae     %r8b
	orb       %r8b, %r9b
	je        .L00005958
.L0000578A:
	cmpq      $24, %rcx
	jbe       .L00005958
.L00005794:
	andl      $15, %edx
	shrq      $3, %rdx
	cmpq      %rdx, %rcx
	cmovbe    %rcx, %rdx
	testq     %rdx, %rdx
	je        .L000057B4
.L000057A7:
	movq      -8(%rbx,%rsi), %rax
	movq      %rax, -8(%r10)
	leaq      -2(%r13), %rax
.L000057B4:
	subq      %rdx, %rcx
	subq      %rdx, %r13
	leaq      -2(%rcx), %rsi
	shrq      $1, %rsi
	addq      $1, %rsi
	cmpq      $2, %r13
	leaq      (%rsi,%rsi), %r8
	je        .L00005801
.L000057CF:
	negq      %rdx
	leaq      (%rdi,%rdx,8), %r9
	xorl      %edx, %edx
	xorl      %edi, %edi
	leaq      (%rbx,%r9), %r10
	addq      %rbp, %r9
.L000057E1:
	movdqa    (%r10,%rdx), %xmm0
	addq      $1, %rdi
	movups    %xmm0, (%r9,%rdx)
	subq      $16, %rdx
	cmpq      %rsi, %rdi
	jb        .L000057E1
.L000057F9:
	subq      %r8, %rax
	cmpq      %r8, %rcx
	je        .L0000580A
.L00005801:
	movq      (%rbx,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
.L0000580A:
	movq      (%rbp), %rdx
	movq      $72057594037927935, %rcx
	movl      $1, %eax
	movl      $1, %ebx
	movq      %rdx, %rsi
	andq      %rcx, %rsi
	cmpq      $1, %rsi
	jle       .L00005B05
.L00005832:
	movq      %r12, 56(%rsp)
	movq      %rcx, %r12
	jmp       .L0000586C
.L0000583C:
	.p2align 4,,10
	.p2align 3
.L00005840:
	movq      24(%rsp), %rdi
	leaq      (%rbp,%rax,8), %r15
	leaq      1(%rax), %r13
	addq      $1, %rbx
	call      diviiexact@PLT
.L00005857:
	movq      %rax, (%r15)
	movq      (%rbp), %rdx
	movq      %r13, %rax
	movq      %rdx, %rsi
	andq      %r12, %rsi
	cmpq      %rbx, %rsi
	jle       .L00005894
.L0000586C:
	movq      (%rbp,%rbx,8), %rsi
	movq      %r12, %rdi
	andq      8(%rsi), %rdi
	cmpq      $3, %rdi
	jne       .L00005840
.L0000587E:
	cmpq      $2, 16(%rsi)
	jne       .L00005840
.L00005885:
	movq      %rdx, %rsi
	addq      $1, %rbx
	andq      %r12, %rsi
	cmpq      %rbx, %rsi
	jg        .L0000586C
.L00005894:
	movq      %rax, %rbx
	movq      $-72057594037927936, %rax
	movq      56(%rsp), %r12
	andq      %rax, %rdx
	testq     %rax, %rbx
	movq      %rbx, %r15
	movq      %rdx, %r13
	jne       .L00005B22
.L000058B8:
	movq      %r13, %rdx
	movq      $72057594037927935, %r13
	orq       %r15, %rdx
	movq      %rdx, (%rbp)
	movq      (%r14), %rax
	movq      %rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L000058D8:
	movq      16(%rsp), %rsi
	movq      8(%rsp), %rdi
	call      random_F2x@PLT
.L000058E7:
	movq      %rax, %rdi
	movq      %rax, 88(%rsp)
	call      F2x_degree@PLT
.L000058F4:
	testq     %rax, %rax
	jle       .L0000594B
.L000058F9:
	cmpq      $1, %rbx
	je        .L00005A68
.L00005903:
	movl      $1, %r15d
	jmp       .L0000591D
.L0000590B:
	.p2align 4,,10
	.p2align 3
.L00005910:
	addq      $1, %r15
	cmpq      %rbx, %r15
	je        .L00005A68
.L0000591D:
	movq      (%rbp,%r15,8), %rsi
	movq      88(%rsp), %rdi
	movq      %r12, %rdx
	call      F2xq_pow@PLT
.L0000592F:
	movq      %r13, %rdx
	andq      (%rax), %rdx
	cmpq      $3, %rdx
	jne       .L00005910
.L0000593B:
	cmpq      $1, 16(%rax)
	jne       .L00005910
.L00005942:
	cmpq      %rbx, %r15
	je        .L00005A68
.L0000594B:
	movq      24(%rsp), %rax
	movq      %rax, (%r14)
	jmp       .L000058D8
.L00005955:
	.p2align 4,,10
	.p2align 3
.L00005958:
	movq      (%rbx,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
	subq      $1, %rax
	je        .L0000580A
.L0000596B:
	movq      (%rbx,%rax,8), %rdx
	movq      %rdx, (%rbp,%rax,8)
	subq      $1, %rax
	jne       .L00005958
.L0000597A:
	jmp       .L0000580A
.L0000597F:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 72(%rsp)
	movq      %r10, 56(%rsp)
	call      pari_err@PLT
.L00005995:
	movq      72(%rsp), %rsi
	movq      56(%rsp), %r10
	jmp       .L00005739
.L000059A4:
	cmpq      $0, 32(%rsp)
	je        .L00005B3A
.L000059B0:
	call      trivfact@PLT
.L000059B5:
	movq      %rax, %r12
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      (%r14), %rbx
	movq      (%rax), %r13
	movq      bot@GOTPCREL(%rip), %rax
	leaq      -24(%rbx), %rbp
	movq      %rax, %rcx
	movq      %rax, 40(%rsp)
	movq      %rbx, %rax
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        .L000059F0
.L000059E4:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000059F0:
	movq      $2449958197289549827, %rax
	movq      %rbp, (%r14)
	movq      %r13, -16(%rbx)
	movq      %rax, -24(%rbx)
	movq      32(%rsp), %rax
	movq      %r12, -8(%rbx)
	movq      40(%rsp), %rcx
	movq      %rbp, (%rax)
	movq      (%r14), %rax
.L00005A19:
	leaq      -24(%rax), %rbx
	subq      (%rcx), %rax
	cmpq      $23, %rax
	ja        .L00005A32
.L00005A26:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005A32:
	movq      $3170534137668829187, %rax
	movq      %rbx, (%r14)
	movq      $1, 16(%rbx)
	movq      %rax, (%rbx)
	movq      16(%rsp), %rax
	movq      %rax, 8(%rbx)
.L00005A53:
	addq      $104, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00005A65:
	.p2align 4,,10
	.p2align 3
.L00005A68:
	cmpq      $0, 32(%rsp)
	je        .L00005B50
.L00005A74:
	movq      8(%rsp), %rdi
	call      int2n@PLT
.L00005A7E:
	movq      8(%rax), %rdx
	movq      %rax, %rsi
	movq      $-1, %rdi
	sarq      $62, %rdx
	call      addsi_sign@PLT
.L00005A95:
	movq      (%r14), %rbx
	movq      40(%rsp), %rcx
	movq      %rax, %r12
	movq      %rbx, %rax
	subq      (%rcx), %rax
	leaq      -24(%rbx), %rbp
	cmpq      $23, %rax
	ja        .L00005ABC
.L00005AB0:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005ABC:
	movq      $2449958197289549827, %rax
	movq      %rbp, (%r14)
	movq      48(%rsp), %rdi
	movq      %rax, -24(%rbx)
	movq      64(%rsp), %rax
	leaq      88(%rsp), %rdx
	movq      %r12, -16(%rbx)
	movl      $2, %esi
	movq      %rax, -8(%rbx)
	movq      32(%rsp), %rax
	movq      %rbp, (%rax)
	movq      %rax, %rcx
	xorl      %eax, %eax
	call      gerepileall.constprop.6
.L00005AFB:
	movq      88(%rsp), %rbx
	jmp       .L00005A53
.L00005B05:
	movq      $-72057594037927936, %r13
	movl      $1, %r15d
	movl      $1, %ebx
	andq      %rdx, %r13
	jmp       .L000058B8
.L00005B22:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005B35:
	jmp       .L000058B8
.L00005B3A:
	movq      bot@GOTPCREL(%rip), %rcx
	movq      48(%rsp), %rax
	movq      %rcx, 40(%rsp)
	jmp       .L00005A19
.L00005B50:
	movq      88(%rsp), %rdi
	call      copy_bin@PLT
.L00005B5A:
	movq      %rax, %rbp
	movq      48(%rsp), %rax
	movq      8(%rbp), %r12
	movq      %rax, (%r14)
	testq     %r12, %r12
	je        .L00005C2E
.L00005B72:
	movq      40(%rsp), %rdi
	movq      (%rbp), %rcx
	movq      %rax, %r15
	movq      %r12, %rbx
	subq      16(%rbp), %rbx
	leaq      32(%rbp), %r13
	subq      (%rdi), %rax
	leaq      0(,%rcx,8), %rdx
	subq      %rdx, %r15
	shrq      $3, %rax
	cmpq      %rax, %rcx
	jbe       .L00005BB6
.L00005BA0:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L00005BB1:
	movq      8(%rsp), %rdx
.L00005BB6:
	movq      %r13, %rsi
	movq      %r15, %rdi
	movq      %r15, (%r14)
	call      memcpy@PLT
.L00005BC4:
	movl      24(%rbp), %eax
	addq      %r15, %rbx
	movq      %rbx, %rsi
	movq      %rbx, %rdi
	subq      %r12, %rsi
	testl     %eax, %eax
	jne       .L00005C27
.L00005BD7:
	call      shiftaddress@PLT
.L00005BDC:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq      %rbp, %rdi
	movl      (%r12), %r13d
	movl      $1, (%r12)
	call      free@PLT
.L00005BF7:
	testl     %r13d, %r13d
	movl      %r13d, (%r12)
	jne       .L00005A53
.L00005C04:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00005A53
.L00005C15:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00005C22:
	jmp       .L00005A53
.L00005C27:
	call      shiftaddress_canon@PLT
.L00005C2C:
	jmp       .L00005BDC
.L00005C2E:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movq      %rbp, %rdi
	movl      (%rbx), %r12d
	movl      $1, (%rbx)
	call      free@PLT
.L00005C46:
	testl     %r12d, %r12d
	movl      %r12d, (%rbx)
	jne       .L00005C5B
.L00005C4E:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00005C6A
.L00005C5B:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       .L00005A53
.L00005C6A:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00005C77:
	jmp       .L00005C5B
	.size	gener_F2xq, .-gener_F2xq
# ----------------------
.L00005C79:
	.p2align 4
# ----------------------
	.globl	ZXX_to_F2xX
	.type	ZXX_to_F2xX, @function
ZXX_to_F2xX:
	pushq     %r14
	pushq     %r13
	movq      %rsi, %r14
	pushq     %r12
	pushq     %rbp
	movq      $72057594037927935, %rbp
	pushq     %rbx
	movq      avma@GOTPCREL(%rip), %rbx
	movq      %rdi, %r12
	andq      (%rdi), %rbp
	movq      (%rbx), %rax
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r13
	subq      %rdx, %r13
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L00005CD2
.L00005CC6:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005CD2:
	movq      $1441151880758558720, %rax
	movq      %r13, (%rbx)
	movl      $2, %ebx
	orq       %rbp, %rax
	movq      %rax, (%r13)
	movq      $4611615649683210240, %rax
	andq      8(%r12), %rax
	movq      %rax, %rdx
	movq      $4611686018427387904, %rax
	orq       %rdx, %rax
	cmpq      $2, %rbp
	movq      %rax, 8(%r13)
	jg        .L00005D39
.L00005D14:
	jmp       .L00005D60
.L00005D16:
	.p2align 4
.L00005D20:
	cmpq      $10, %rax
	jne       .L00005D30
.L00005D26:
	call      ZX_to_F2x@PLT
.L00005D2B:
	movq      %rax, (%r13,%rbx,8)
.L00005D30:
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	je        .L00005D60
.L00005D39:
	movq      (%r12,%rbx,8), %rdi
	movq      (%rdi), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	jne       .L00005D20
.L00005D4A:
	movq      %r14, %rsi
	call      Z_to_F2x@PLT
.L00005D52:
	movq      %rax, (%r13,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L00005D39
.L00005D60:
	popq      %rbx
	movq      %rbp, %rsi
	movq      %r13, %rdi
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       FlxX_renormalize@PLT
	.size	ZXX_to_F2xX, .-ZXX_to_F2xX
# ----------------------
.L00005D73:
	.p2align 4
# ----------------------
	.globl	F2c_to_ZC
	.type	F2c_to_ZC, @function
F2c_to_ZC:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbp
	subq      $8, %rsp
	movq      8(%rdi), %rax
	movq      avma@GOTPCREL(%rip), %r13
	leaq      1(%rax), %rbx
	movq      (%r13), %rax
	leaq      0(,%rbx,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L00005DCD
.L00005DC1:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005DCD:
	movq      $-72057594037927936, %rax
	movq      %r12, (%r13)
	testq     %rax, %rbx
	je        .L00005DF3
.L00005DE0:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005DF3:
	movq      $2594073385365405696, %rax
	movq      $72057594037927935, %r10
	movl      $2, %r8d
	orq       %rbx, %rax
	movl      $1, %edx
	movq      %rax, (%r12)
	movq      (%rbp), %rax
	movq      %rax, %rcx
	andq      %r10, %rcx
	cmpq      $2, %rcx
	jle       .L00005E8C
.L00005E29:
	.p2align 4
.L00005E30:
	cmpq      %rdx, %rbx
	jle       .L00005E7D
.L00005E35:
	xorl      %ecx, %ecx
	movq      gen_1@GOTPCREL(%rip), %r9
	movq      gen_0@GOTPCREL(%rip), %rdi
	jmp       .L00005E56
.L00005E47:
	.p2align 4
.L00005E50:
	cmpq      $63, %rcx
	jg        .L00005E79
.L00005E56:
	movq      (%rbp,%r8,8), %rsi
	shrq      %cl, %rsi
	andl      $1, %esi
	movq      (%r9), %rsi
	cmove     (%rdi), %rsi
	addq      $1, %rcx
	movq      %rsi, (%r12,%rdx,8)
	addq      $1, %rdx
	cmpq      %rdx, %rbx
	jg        .L00005E50
.L00005E79:
	movq      (%rbp), %rax
.L00005E7D:
	movq      %rax, %rcx
	addq      $1, %r8
	andq      %r10, %rcx
	cmpq      %r8, %rcx
	jg        .L00005E30
.L00005E8C:
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	F2c_to_ZC, .-F2c_to_ZC
# ----------------------
.L00005E9A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2m_to_ZM
	.type	F2m_to_ZM, @function
F2m_to_ZM:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	andq      (%rdi), %rbp
	movq      (%rbx), %rax
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L00005EF1
.L00005EE5:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005EF1:
	movq      $2738188573441261568, %rax
	movq      %r12, (%rbx)
	movl      $1, %ebx
	orq       %rbp, %rax
	cmpq      $1, %rbp
	movq      %rax, (%r12)
	jle       .L00005F27
.L00005F10:
	movq      (%r13,%rbx,8), %rdi
	call      F2c_to_ZC@PLT
.L00005F1A:
	movq      %rax, (%r12,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L00005F10
.L00005F27:
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	F2m_to_ZM, .-F2m_to_ZM
# ----------------------
.L00005F35:
	.p2align 4
# ----------------------
	.globl	ZV_to_F2v
	.type	ZV_to_F2v, @function
ZV_to_F2v:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbx
	subq      $8, %rsp
	andq      (%rdi), %rbx
	movq      avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	leaq      190(%rbx), %r13
	leaq      -1(%rbx), %r14
	shrq      $6, %r13
	movq      %rax, %rbp
	leaq      0(,%r13,8), %rdx
	subq      %rdx, %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %r13
	jbe       .L00005FA4
.L00005F98:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00005FA4:
	movq      $3170534137668829184, %rax
	movq      %rbp, (%r15)
	movq      %r14, 8(%rbp)
	orq       %rax, %r13
	testq     %r14, %r14
	movl      $1, %r11d
	movq      %r13, (%rbp)
	movl      $64, %esi
	movl      $1, %edx
	movq      $72057594037927935, %rdi
	jg        .L0000601C
.L00005FDB:
	jmp       .L00006040
.L00005FDD:
	.p2align 4,,10
	.p2align 3
.L00005FE0:
	movq      %rsi, %rcx
	addq      $1, %rsi
.L00005FE7:
	movq      (%r12,%rdx,8), %r9
	movq      8(%r9), %r8
	movq      %r8, %r10
	sarq      $62, %r10
	testq     %r10, %r10
	je        .L00006013
.L00005FFB:
	andq      %rdi, %r8
	testb     $1, -8(%r9,%r8,8)
	je        .L00006013
.L00006006:
	movl      $1, %eax
	salq      %cl, %rax
	orq       %rax, (%rbp,%r11,8)
.L00006013:
	addq      $1, %rdx
	cmpq      %rbx, %rdx
	je        .L00006040
.L0000601C:
	cmpq      $64, %rsi
	jne       .L00005FE0
.L00006022:
	addq      $1, %r11
	movl      $1, %esi
	xorl      %ecx, %ecx
	movq      $0, (%rbp,%r11,8)
	jmp       .L00005FE7
.L00006038:
	.p2align 4
.L00006040:
	addq      $8, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.size	ZV_to_F2v, .-ZV_to_F2v
# ----------------------
.L00006052:
	.p2align 4
# ----------------------
	.globl	Flv_to_F2v
	.type	Flv_to_F2v, @function
Flv_to_F2v:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $8, %rsp
	andq      (%rdi), %rbp
	movq      avma@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	leaq      190(%rbp), %r13
	leaq      -1(%rbp), %r14
	shrq      $6, %r13
	movq      %rax, %rbx
	leaq      0(,%r13,8), %rdx
	subq      %rdx, %rbx
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %r13
	jbe       .L000060C4
.L000060B8:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000060C4:
	movq      $3170534137668829184, %rax
	movq      %rbx, (%r15)
	movq      %r14, 8(%rbx)
	orq       %rax, %r13
	testq     %r14, %r14
	movl      $1, %r9d
	movq      %r13, (%rbx)
	movl      $64, %esi
	movl      $1, %edx
	jg        .L0000611C
.L000060F0:
	jmp       .L00006140
.L000060F2:
	.p2align 4,,10
	.p2align 3
.L000060F8:
	movq      %rsi, %rcx
	addq      $1, %rsi
.L000060FF:
	testb     $1, (%r12,%rdx,8)
	je        .L00006113
.L00006106:
	movl      $1, %r8d
	salq      %cl, %r8
	orq       %r8, (%rbx,%r9,8)
.L00006113:
	addq      $1, %rdx
	cmpq      %rbp, %rdx
	je        .L00006140
.L0000611C:
	cmpq      $64, %rsi
	jne       .L000060F8
.L00006122:
	addq      $1, %r9
	movl      $1, %esi
	xorl      %ecx, %ecx
	movq      $0, (%rbx,%r9,8)
	jmp       .L000060FF
.L00006137:
	.p2align 4
.L00006140:
	addq      $8, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.size	Flv_to_F2v, .-Flv_to_F2v
# ----------------------
.L00006152:
	.p2align 4
# ----------------------
	.globl	ZM_to_F2m
	.type	ZM_to_F2m, @function
ZM_to_F2m:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	andq      (%rdi), %rbp
	movq      (%rbx), %rax
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L000061B1
.L000061A5:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000061B1:
	movq      $2738188573441261568, %rax
	movq      %r12, (%rbx)
	movl      $1, %ebx
	orq       %rbp, %rax
	cmpq      $1, %rbp
	movq      %rax, (%r12)
	jle       .L000061E7
.L000061D0:
	movq      (%r13,%rbx,8), %rdi
	call      ZV_to_F2v@PLT
.L000061DA:
	movq      %rax, (%r12,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L000061D0
.L000061E7:
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	ZM_to_F2m, .-ZM_to_F2m
# ----------------------
.L000061F5:
	.p2align 4
# ----------------------
	.globl	Flm_to_F2m
	.type	Flm_to_F2m, @function
Flm_to_F2m:
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r13
	pushq     %rbp
	pushq     %rbx
	movq      $72057594037927935, %rbp
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	andq      (%rdi), %rbp
	movq      (%rbx), %rax
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L00006251
.L00006245:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00006251:
	movq      $2738188573441261568, %rax
	movq      %r12, (%rbx)
	movl      $1, %ebx
	orq       %rbp, %rax
	cmpq      $1, %rbp
	movq      %rax, (%r12)
	jle       .L00006287
.L00006270:
	movq      (%r13,%rbx,8), %rdi
	call      Flv_to_F2v@PLT
.L0000627A:
	movq      %rax, (%r12,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L00006270
.L00006287:
	addq      $8, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	Flm_to_F2m, .-Flm_to_F2m
# ----------------------
.L00006295:
	.p2align 4
# ----------------------
	.globl	F2v_add_inplace
	.type	F2v_add_inplace, @function
F2v_add_inplace:
	movq      $72057594037927935, %rax
	andq      (%rsi), %rax
	leaq      -2(%rax), %r10
	andl      $7, %r10d
	subq      %r10, %rax
	cmpq      $2, %rax
	jle       .L00006440
.L000062C2:
	leaq      -3(%rax), %r9
	leaq      16(%rsi), %rdx
	leaq      16(%rdi), %rax
	shrq      $3, %r9
	leaq      1(%r9), %r8
	cmpq      $18, %r8
	jbe       .L000063E0
.L000062E0:
	leaq      144(%rsi), %rcx
	cmpq      %rcx, %rax
	leaq      144(%rdi), %rcx
	setae     %r11b
	cmpq      %rcx, %rdx
	setae     %cl
	orb       %cl, %r11b
	je        .L000063E0
.L00006304:
	xorl      %ecx, %ecx
	.p2align 4
.L00006310:
	movdqu    16(%rdx), %xmm0
	addq      $1, %rcx
	addq      $64, %rax
	addq      $64, %rdx
	movdqu    -48(%rax), %xmm2
	movdqu    -32(%rax), %xmm1
	pxor      %xmm0, %xmm2
	movdqu    -32(%rdx), %xmm0
	movdqu    -16(%rax), %xmm3
	pxor      %xmm0, %xmm1
	movdqu    -16(%rdx), %xmm0
	movdqu    -64(%rax), %xmm4
	pxor      %xmm3, %xmm0
	movdqu    -64(%rdx), %xmm3
	pxor      %xmm4, %xmm3
	movups    %xmm2, -48(%rax)
	movups    %xmm3, -64(%rax)
	movups    %xmm1, -32(%rax)
	movups    %xmm0, -16(%rax)
	cmpq      %r8, %rcx
	jb        .L00006310
.L00006369:
	leaq      10(,%r9,8), %rax
.L00006371:
	leaq      .LC00000000(%rip), %rdx
	movslq    (%rdx,%r10,4), %rcx
	addq      %rcx, %rdx
	jmp       *%rdx
.L00006381:
	.p2align 4,,10
	.p2align 3
.L00006388:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
	addq      $1, %rax
.L00006394:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
	addq      $1, %rax
.L000063A0:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
	addq      $1, %rax
.L000063AC:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
	addq      $1, %rax
.L000063B8:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
	addq      $1, %rax
.L000063C4:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
	addq      $1, %rax
.L000063D0:
	movq      (%rsi,%rax,8), %rdx
	xorq      %rdx, (%rdi,%rax,8)
.L000063D8:
	rep; ret       
.L000063DA:
	.p2align 4,,10
	.p2align 3
.L000063E0:
	movq      %r9, %rcx
	salq      $6, %rcx
	leaq      80(%rdi,%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L000063F0:
	movq      (%rdx), %rcx
	xorq      %rcx, (%rax)
	addq      $64, %rdx
	movq      -56(%rdx), %rcx
	xorq      %rcx, 8(%rax)
	movq      -48(%rdx), %rcx
	xorq      %rcx, 16(%rax)
	movq      -40(%rdx), %rcx
	xorq      %rcx, 24(%rax)
	movq      -32(%rdx), %rcx
	xorq      %rcx, 32(%rax)
	movq      -24(%rdx), %rcx
	xorq      %rcx, 40(%rax)
	movq      -16(%rdx), %rcx
	xorq      %rcx, 48(%rax)
	movq      -8(%rdx), %rcx
	xorq      %rcx, 56(%rax)
	addq      $64, %rax
	cmpq      %r8, %rax
	jne       .L000063F0
.L0000643B:
	jmp       .L00006369
.L00006440:
	movl      $2, %eax
	jmp       .L00006371
	.size	F2v_add_inplace, .-F2v_add_inplace
# ----------------------
.L0000644A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xV_to_F2m
	.type	F2xV_to_F2m, @function
F2xV_to_F2m:
	pushq     %r14
	pushq     %r13
	movq      %rsi, %r14
	pushq     %r12
	pushq     %rbp
	movq      $72057594037927935, %rbp
	pushq     %rbx
	movq      avma@GOTPCREL(%rip), %rbx
	movq      %rdi, %r13
	andq      (%rdi), %rbp
	movq      (%rbx), %rax
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L000064A2
.L00006496:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000064A2:
	movq      $2738188573441261568, %rax
	movq      %r12, (%rbx)
	movl      $1, %ebx
	orq       %rbp, %rax
	cmpq      $1, %rbp
	movq      %rax, (%r12)
	jle       .L000064E2
.L000064C1:
	.p2align 4,,10
	.p2align 3
.L000064C8:
	movq      (%r13,%rbx,8), %rdi
	movq      %r14, %rsi
	call      F2x_to_F2v@PLT
.L000064D5:
	movq      %rax, (%r12,%rbx,8)
	addq      $1, %rbx
	cmpq      %rbp, %rbx
	jne       .L000064C8
.L000064E2:
	popq      %rbx
	movq      %r12, %rax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.size	F2xV_to_F2m, .-F2xV_to_F2m
# ----------------------
.L000064EE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	F2xq_matrix_pow
	.type	F2xq_matrix_pow, @function
F2xq_matrix_pow:
	movq      %rdx, %rax
	pushq     %rbx
	movq      %rsi, %rbx
	leaq      -1(%rax), %rsi
	movq      %rcx, %rdx
	call      F2xq_powers@PLT
.L00006503:
	movq      %rbx, %rsi
	movq      %rax, %rdi
	popq      %rbx
	jmp       F2xV_to_F2m@PLT
	.size	F2xq_matrix_pow, .-F2xq_matrix_pow
# ----------------------
	.set	.LTHUNK1166,F2x_shiftip
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
