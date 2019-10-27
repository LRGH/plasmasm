	.file	"deflate.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section       .rodata
	.align 64
	.local	configuration_table
	.type	configuration_table, @object
configuration_table:
	.value	0
	.value	0
	.value	0
	.value	0
	.quad	deflate_stored
	.long	262148
	.long	262152
	.quad	deflate_fast
	.long	327684
	.long	524304
	.quad	deflate_fast
	.long	393220
	.long	2097184
	.quad	deflate_fast
	.long	262148
	.long	1048592
	.quad	deflate_slow
	.long	1048584
	.long	2097184
	.quad	deflate_slow
	.long	1048584
	.long	8388736
	.quad	deflate_slow
	.long	2097160
	.long	16777344
	.quad	deflate_slow
	.long	8388640
	.long	67109122
	.quad	deflate_slow
	.long	16908320
	.long	268435714
	.quad	deflate_slow
	.zero	32
	.size	configuration_table, 192
# ----------------------
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 68
# ----------------------
	.text
	.local	longest_match
	.type	longest_match, @function
longest_match:
	pushq     %r15
	pushq     %r14
	xorl      %r11d, %r11d
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      192(%rdi), %ebx
	movl      156(%rdi), %r9d
	movq      80(%rdi), %r10
	movl      168(%rdi), %r8d
	movl      172(%rdi), %ecx
	movl      %ebx, -20(%rsp)
	movl      68(%rdi), %ebx
	leaq      (%r10,%r9), %r13
	movl      %r8d, %eax
	leal      -262(%rbx), %ebp
	cmpl      %ebp, %r9d
	jbe       .L0000004E
.L00000044:
	leal      262(%r9), %r11d
	subl      %ebx, %r11d
.L0000004E:
	leaq      258(%r10,%r9), %rbx
	movslq    %r8d, %rdx
	movl      164(%rdi), %r15d
	movzbl    -1(%r13,%rdx), %r14d
	movq      96(%rdi), %r12
	movq      %rbx, -8(%rsp)
	movzbl    (%r13,%rdx), %ebx
	movl      %ecx, %edx
	shrl      $2, %edx
	cmpl      188(%rdi), %r8d
	movl      76(%rdi), %ebp
	movq      %rdi, -16(%rsp)
	cmovae    %edx, %ecx
	movl      -20(%rsp), %edx
	cmpl      %r15d, %edx
	cmova     %r15d, %edx
	movl      %edx, -20(%rsp)
	jmp       .L000000B9
.L0000009D:
	.p2align 4,,10
	.p2align 3
.L000000A0:
	andl      %ebp, %esi
	movzwl    (%r12,%rsi,2), %esi
	cmpl      %esi, %r11d
	jae       .L000001E0
.L000000B0:
	subl      $1, %ecx
	je        .L000001E0
.L000000B9:
	movl      %esi, %edx
	movslq    %eax, %r9
	addq      %r10, %rdx
	movzbl    (%rdx,%r9), %r8d
	cmpb      %bl, %r8b
	jne       .L000000A0
.L000000CB:
	movzbl    -1(%rdx,%r9), %r9d
	cmpb      %r14b, %r9b
	jne       .L000000A0
.L000000D6:
	movzbl    (%r13), %edi
	cmpb      %dil, (%rdx)
	jne       .L000000A0
.L000000E0:
	movzbl    1(%r13), %edi
	cmpb      %dil, 1(%rdx)
	jne       .L000000A0
.L000000EB:
	addq      $2, %r13
	addq      $2, %rdx
	movq      -8(%rsp), %rbx
	movq      -16(%rsp), %rdi
	jmp       .L00000179
.L000000FF:
	.p2align 4,,10
	.p2align 3
.L00000100:
	movzbl    2(%rdx), %r14d
	cmpb      %r14b, 2(%r13)
	jne       .L00000224
.L0000010F:
	movzbl    3(%rdx), %r14d
	cmpb      %r14b, 3(%r13)
	jne       .L00000216
.L0000011E:
	movzbl    4(%rdx), %r14d
	cmpb      %r14b, 4(%r13)
	jne       .L00000208
.L0000012D:
	movzbl    5(%rdx), %r14d
	cmpb      %r14b, 5(%r13)
	jne       .L000001FD
.L0000013C:
	movzbl    6(%rdx), %r14d
	cmpb      %r14b, 6(%r13)
	jne       .L00000240
.L0000014B:
	movzbl    7(%rdx), %r14d
	cmpb      %r14b, 7(%r13)
	jne       .L00000232
.L0000015A:
	addq      $8, %rdx
	addq      $8, %r13
	movzbl    (%rdx), %r14d
	cmpb      %r14b, (%r13)
	jne       .L0000024E
.L00000170:
	cmpq      %r13, %rbx
	jbe       .L0000024E
.L00000179:
	movzbl    1(%rdx), %r14d
	cmpb      %r14b, 1(%r13)
	je        .L00000100
.L00000188:
	movq      %rdi, -16(%rsp)
	addq      $1, %r13
.L00000191:
	movq      -8(%rsp), %rdi
	movl      $258, %ebx
	movq      %rdi, %rdx
	subq      %r13, %rdx
	leaq      -258(%rdi), %r13
	subl      %edx, %ebx
	cmpl      %ebx, %eax
	movl      %ebx, %edx
	jge       .L000001F2
.L000001B0:
	cmpl      %ebx, -20(%rsp)
	movq      -16(%rsp), %rax
	movl      %esi, 160(%rax)
	jle       .L000001D9
.L000001C1:
	movslq    %ebx, %rax
	movzbl    -1(%r13,%rax), %r14d
	movzbl    -258(%rdi,%rax), %ebx
	movl      %edx, %eax
	jmp       .L000000A0
.L000001D9:
	movl      %ebx, %eax
	.p2align 4,,10
	.p2align 3
.L000001E0:
	cmpl      %r15d, %eax
	popq      %rbx
	cmova     %r15d, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000001F2:
	movl      %r8d, %ebx
	movl      %r9d, %r14d
	jmp       .L000000A0
.L000001FD:
	movq      %rdi, -16(%rsp)
	addq      $5, %r13
	jmp       .L00000191
.L00000208:
	movq      %rdi, -16(%rsp)
	addq      $4, %r13
	jmp       .L00000191
.L00000216:
	movq      %rdi, -16(%rsp)
	addq      $3, %r13
	jmp       .L00000191
.L00000224:
	movq      %rdi, -16(%rsp)
	addq      $2, %r13
	jmp       .L00000191
.L00000232:
	movq      %rdi, -16(%rsp)
	addq      $7, %r13
	jmp       .L00000191
.L00000240:
	movq      %rdi, -16(%rsp)
	addq      $6, %r13
	jmp       .L00000191
.L0000024E:
	movq      %rdi, -16(%rsp)
	jmp       .L00000191
	.size	longest_match, .-longest_match
# ----------------------
.L00000258:
	.p2align 4
# ----------------------
	.local	fill_window
	.type	fill_window, @function
fill_window:
	pushq     %r15
	pushq     %r14
	movq      $-2, %rcx
	pushq     %r13
	pushq     %r12
	xorl      %r14d, %r14d
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $56, %rsp
	movl      68(%rdi), %r12d
	movl      164(%rdi), %edx
	movq      %rcx, %rdi
	movq      %rcx, 32(%rsp)
	leaq      (%r12,%r12), %rax
	movq      %r12, %r13
	movq      %r12, 40(%rsp)
	movq      %rax, 16(%rsp)
	leal      -1(%r12), %eax
	addq      %rax, %rax
	subq      %rax, %rdi
	movl      %r12d, %eax
	movq      %rdi, 24(%rsp)
	leal      -262(%r12), %edi
	movl      %edi, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L000002C0:
	movl      156(%rbx), %ecx
	movl      88(%rbx), %r15d
	addl      12(%rsp), %eax
	subl      %edx, %r15d
	subl      %ecx, %r15d
	cmpl      %eax, %ecx
	jae       .L00000430
.L000002DC:
	movq      (%rbx), %r12
	movl      8(%r12), %ebp
	testl     %ebp, %ebp
	je        .L000004F0
.L000002EC:
	cmpl      %ebp, %r15d
	movq      80(%rbx), %rsi
	movl      164(%rbx), %edx
	jae       .L000003D8
.L000002FF:
	testl     %r15d, %r15d
	jne       .L00000634
.L00000308:
	xorl      %r8d, %r8d
.L0000030B:
	movl      5916(%rbx), %esi
	addl      %r8d, %edx
	movl      %edx, 164(%rbx)
	leal      (%rdx,%rsi), %eax
	cmpl      $2, %eax
	jbe       .L000003B1
.L00000326:
	movl      156(%rbx), %edi
	movq      80(%rbx), %r11
	movl      128(%rbx), %ecx
	movl      124(%rbx), %r15d
	subl      %esi, %edi
	movl      %edi, %eax
	movzbl    (%r11,%rax), %r8d
	leal      1(%rdi), %eax
	movl      %r8d, 112(%rbx)
	movzbl    (%r11,%rax), %r9d
	movl      %r8d, %eax
	sall      %cl, %eax
	xorl      %r9d, %eax
	andl      %r15d, %eax
	movl      %eax, 112(%rbx)
	jmp       .L000003AD
.L0000035F:
	.p2align 4,,10
	.p2align 3
.L00000360:
	leal      2(%rdi), %r8d
	sall      %cl, %eax
	movl      %edi, %r10d
	andl      76(%rbx), %r10d
	subl      $1, %esi
	movzbl    (%r11,%r8), %r8d
	xorl      %r8d, %eax
	movq      104(%rbx), %r8
	andl      %r15d, %eax
	movl      %eax, %r9d
	movl      %eax, 112(%rbx)
	leaq      (%r8,%r9,2), %r8
	movq      96(%rbx), %r9
	movzwl    (%r8), %ebp
	movw      %bp, (%r9,%r10,2)
	movw      %di, (%r8)
	leal      (%rsi,%rdx), %r8d
	addl      $1, %edi
	movl      %esi, 5916(%rbx)
	cmpl      $2, %r8d
	jbe       .L000003B1
.L000003AD:
	testl     %esi, %esi
	jne       .L00000360
.L000003B1:
	cmpl      $261, %edx
	ja        .L000004F0
.L000003BD:
	movq      (%rbx), %rax
	movl      8(%rax), %r8d
	testl     %r8d, %r8d
	je        .L000004F0
.L000003CD:
	movl      68(%rbx), %eax
	jmp       .L000002C0
.L000003D5:
	.p2align 4,,10
	.p2align 3
.L000003D8:
	xorl      %eax, %eax
.L000003DA:
	addq      %rdx, %rcx
	movl      %ebp, %r15d
	movl      %eax, 8(%r12)
	addq      %rsi, %rcx
	movq      (%r12), %rsi
	movq      %r15, %rdx
	movq      %rcx, %rdi
	call      memcpy
.L000003F7:
	movq      %rax, %rcx
	movq      56(%r12), %rax
	movl      44(%rax), %eax
	cmpl      $1, %eax
	je        .L0000056C
.L0000040B:
	cmpl      $2, %eax
	je        .L00000585
.L00000414:
	addq      %r15, (%r12)
	addq      %r15, 16(%r12)
	movl      %ebp, %r8d
	movl      164(%rbx), %edx
	jmp       .L0000030B
.L0000042B:
	.p2align 4,,10
	.p2align 3
.L00000430:
	movq      40(%rsp), %rbp
	movq      80(%rbx), %rdi
	leaq      (%rdi,%rbp), %rsi
	movq      %rbp, %rdx
	call      memcpy
.L00000445:
	movl      116(%rbx), %esi
	movq      104(%rbx), %rax
	movl      156(%rbx), %ecx
	movq      32(%rsp), %rdi
	subl      %r13d, 160(%rbx)
	subq      %rbp, 136(%rbx)
	movq      %rsi, %rdx
	leaq      (%rax,%rsi,2), %rax
	subl      %r13d, %ecx
	subl      $1, %edx
	addq      %rdx, %rdx
	subq      %rdx, %rdi
	movl      %ecx, 156(%rbx)
	addq      %rax, %rdi
	.p2align 4,,10
	.p2align 3
.L00000488:
	subq      $2, %rax
	movzwl    (%rax), %esi
	movl      %esi, %edx
	subl      %r13d, %edx
	cmpl      %esi, %r13d
	cmova     %r14d, %edx
	cmpq      %rdi, %rax
	movw      %dx, (%rax)
	jne       .L00000488
.L000004A3:
	movq      16(%rsp), %rax
	addq      96(%rbx), %rax
	movq      24(%rsp), %rdi
	addq      %rax, %rdi
	.p2align 4,,10
	.p2align 3
.L000004B8:
	subq      $2, %rax
	movzwl    (%rax), %esi
	movl      %esi, %edx
	subl      %r13d, %edx
	cmpl      %esi, %r13d
	cmova     %r14d, %edx
	cmpq      %rdi, %rax
	movw      %dx, (%rax)
	jne       .L000004B8
.L000004D3:
	movq      (%rbx), %r12
	addl      %r13d, %r15d
	movl      8(%r12), %ebp
	testl     %ebp, %ebp
	jne       .L000002EC
.L000004E6:
	.p2align 4
.L000004F0:
	movq      5928(%rbx), %rcx
	movq      88(%rbx), %rax
	cmpq      %rax, %rcx
	jae       .L0000055D
.L00000500:
	movl      164(%rbx), %esi
	movl      156(%rbx), %edx
	addq      %rdx, %rsi
	cmpq      %rsi, %rcx
	jae       .L0000059E
.L00000518:
	subq      %rsi, %rax
	movl      $258, %edx
	cmpq      $258, %rax
	cmovbe    %rax, %rdx
	movq      %rsi, %rax
	addq      80(%rbx), %rax
	cmpl      $8, %edx
	jae       .L000005E4
.L0000053A:
	testb     $4, %dl
	jne       .L00000611
.L00000543:
	testl     %edx, %edx
	je        .L00000553
.L00000547:
	testb     $2, %dl
	movb      $0, (%rax)
	jne       .L00000626
.L00000553:
	addq      %rsi, %rdx
	movq      %rdx, 5928(%rbx)
.L0000055D:
	addq      $56, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000056C:
	movq      96(%r12), %rdi
	movl      %ebp, %edx
	movq      %rcx, %rsi
	call      adler32
.L0000057B:
	movq      %rax, 96(%r12)
	jmp       .L00000414
.L00000585:
	movq      96(%r12), %rdi
	movl      %ebp, %edx
	movq      %rcx, %rsi
	call      crc32
.L00000594:
	movq      %rax, 96(%r12)
	jmp       .L00000414
.L0000059E:
	leaq      258(%rsi), %rdx
	cmpq      %rdx, %rcx
	jae       .L0000055D
.L000005AA:
	subq      %rcx, %rsi
	subq      %rcx, %rax
	leaq      258(%rsi), %rbp
	cmpq      %rax, %rbp
	cmova     %rax, %rbp
	addq      80(%rbx), %rcx
	xorl      %esi, %esi
	movl      %ebp, %edx
	movq      %rcx, %rdi
	call      memset
.L000005CE:
	addq      %rbp, 5928(%rbx)
	addq      $56, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000005E4:
	leaq      8(%rax), %rdi
	movl      %edx, %ecx
	movq      $0, (%rax)
	movq      $0, -8(%rax,%rcx)
	andq      $-8, %rdi
	subq      %rdi, %rax
	leal      (%rdx,%rax), %ecx
	xorl      %eax, %eax
	shrl      $3, %ecx
	rep stosq     
	jmp       .L00000553
.L00000611:
	movl      %edx, %ecx
	movl      $0, (%rax)
	movl      $0, -4(%rax,%rcx)
	jmp       .L00000553
.L00000626:
	movl      %edx, %ecx
	xorl      %edi, %edi
	movw      %di, -2(%rax,%rcx)
	jmp       .L00000553
.L00000634:
	movl      %ebp, %eax
	movl      %r15d, %ebp
	subl      %r15d, %eax
	jmp       .L000003DA
	.size	fill_window, .-fill_window
# ----------------------
.L00000641:
	.p2align 4
# ----------------------
	.local	deflate_fast
	.type	deflate_fast, @function
deflate_fast:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movl      %esi, 12(%rsp)
.L00000665:
	movl      164(%rbx), %r8d
	.p2align 4,,10
	.p2align 3
.L00000670:
	cmpl      $261, %r8d
	jbe       .L00000978
.L0000067D:
	movl      156(%rbx), %edx
	movq      80(%rbx), %rcx
	leal      2(%rdx), %eax
	movl      %edx, %edi
	andl      76(%rbx), %edi
	movzbl    (%rcx,%rax), %esi
	movl      128(%rbx), %ecx
	movl      112(%rbx), %eax
	sall      %cl, %eax
	movq      104(%rbx), %rcx
	xorl      %esi, %eax
	andl      124(%rbx), %eax
	movl      %eax, 112(%rbx)
	leaq      (%rcx,%rax,2), %rax
	movq      96(%rbx), %rcx
	movzwl    (%rax), %esi
	testl     %esi, %esi
	movw      %si, (%rcx,%rdi,2)
	movw      %dx, (%rax)
	je        .L000006D4
.L000006C0:
	movl      68(%rbx), %eax
	movl      %edx, %ecx
	subl      %esi, %ecx
	subl      $262, %eax
	cmpl      %eax, %ecx
	jbe       .L000009E8
.L000006D4:
	movl      144(%rbx), %eax
.L000006DA:
	cmpl      $2, %eax
	jbe       .L000008B0
.L000006E3:
	subw      160(%rbx), %dx
	movl      5884(%rbx), %esi
	subl      $3, %eax
	movq      5888(%rbx), %rdi
	movw      %dx, (%rdi,%rsi,2)
	movq      5872(%rbx), %rdi
	movq      %rsi, %rcx
	addl      $1, %ecx
	subl      $1, %edx
	movl      %ecx, 5884(%rbx)
	movb      %al, (%rdi,%rsi)
	movzbl    %al, %eax
	movzbl    _length_code(%rax), %eax
	addw      $1, 1224(%rbx,%rax,4)
	cmpw      $255, %dx
	ja        .L000009C8
.L00000735:
	movzwl    %dx, %edx
	movzbl    _dist_code(%rdx), %eax
.L0000073F:
	addw      $1, 2488(%rbx,%rax,4)
	xorl      %r10d, %r10d
	movl      5880(%rbx), %eax
	movl      164(%rbx), %r8d
	movl      144(%rbx), %r9d
	subl      $1, %eax
	cmpl      %eax, 5884(%rbx)
	sete      %r10b
	subl      %r9d, %r8d
	cmpl      $2, %r8d
	movl      %r8d, 164(%rbx)
	jbe       .L00000930
.L00000780:
	cmpl      176(%rbx), %r9d
	ja        .L00000930
.L0000078D:
	movl      156(%rbx), %eax
	leal      -1(%r9), %edi
	movq      96(%rbx), %r14
	movl      76(%rbx), %r13d
	movq      104(%rbx), %r12
	movq      80(%rbx), %rbp
	movl      128(%rbx), %ecx
	movl      %eax, %esi
	movl      %eax, 4(%rsp)
	movl      124(%rbx), %r11d
	movl      112(%rbx), %eax
	leal      1(%rsi), %edx
	movl      %edi, 144(%rbx)
	movl      %r8d, 8(%rsp)
	.p2align 4
.L000007D0:
	leal      2(%rdx), %esi
	movl      %edx, 156(%rbx)
	sall      %cl, %eax
	movl      %edx, %r15d
	subl      $1, %edi
	movzbl    (%rbp,%rsi), %esi
	andl      %r13d, %r15d
	xorl      %esi, %eax
	andl      %r11d, %eax
	movl      %eax, %esi
	movl      %eax, 112(%rbx)
	leaq      (%r12,%rsi,2), %rsi
	movzwl    (%rsi), %r8d
	movw      %r8w, (%r14,%r15,2)
	movw      %dx, (%rsi)
	addl      $1, %edx
	testl     %edi, %edi
	movl      %edi, 144(%rbx)
	jne       .L000007D0
.L00000810:
	addl      4(%rsp), %r9d
	movl      8(%rsp), %r8d
	movl      %r9d, 156(%rbx)
	.p2align 4,,10
	.p2align 3
.L00000828:
	testl     %r10d, %r10d
	je        .L00000670
.L00000831:
	movq      136(%rbx), %rax
	movl      %r9d, %edx
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L0000084E
.L00000845:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L0000084E:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00000858:
	movq      (%rbx), %r12
	movl      156(%rbx), %eax
	movq      56(%r12), %r13
	movq      %rax, 136(%rbx)
	movq      %r13, %rdi
	call      _tr_flush_bits
.L00000875:
	movl      40(%r13), %ebp
	movl      32(%r12), %eax
	cmpl      %ebp, %eax
	cmovbe    %eax, %ebp
	testl     %ebp, %ebp
	jne       .L00000A01
.L0000088B:
	movq      (%rbx), %rax
	movl      32(%rax), %esi
	testl     %esi, %esi
	jne       .L00000665
.L00000899:
	addq      $24, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000008AA:
	.p2align 4,,10
	.p2align 3
.L000008B0:
	movl      5884(%rbx), %ecx
	movq      80(%rbx), %rax
	xorl      %edi, %edi
	movq      5888(%rbx), %rsi
	xorl      %r10d, %r10d
	movzbl    (%rax,%rdx), %eax
	movw      %di, (%rsi,%rcx,2)
	movq      5872(%rbx), %rsi
	movq      %rcx, %rdx
	addl      $1, %edx
	movl      %edx, 5884(%rbx)
	movb      %al, (%rsi,%rcx)
	addw      $1, 196(%rbx,%rax,4)
	movl      5880(%rbx), %eax
	subl      $1, %eax
	cmpl      %eax, 5884(%rbx)
	movl      164(%rbx), %eax
	leal      -1(%rax), %r8d
	movl      156(%rbx), %eax
	sete      %r10b
	movl      %r8d, 164(%rbx)
	leal      1(%rax), %r9d
	movl      %r9d, 156(%rbx)
	jmp       .L00000828
.L00000927:
	.p2align 4
.L00000930:
	addl      156(%rbx), %r9d
	movq      80(%rbx), %rdx
	movl      $0, 144(%rbx)
	movl      %r9d, %eax
	movl      %r9d, 156(%rbx)
	leal      1(%r9), %ecx
	movzbl    (%rdx,%rax), %eax
	movl      %eax, 112(%rbx)
	movzbl    (%rdx,%rcx), %edx
	movl      128(%rbx), %ecx
	sall      %cl, %eax
	xorl      %edx, %eax
	andl      124(%rbx), %eax
	movl      %eax, 112(%rbx)
	jmp       .L00000828
.L00000973:
	.p2align 4,,10
	.p2align 3
.L00000978:
	movq      %rbx, %rdi
	call      fill_window
.L00000980:
	movl      164(%rbx), %eax
	cmpl      $261, %eax
	ja        .L0000067D
.L00000991:
	movl      12(%rsp), %r8d
	testl     %r8d, %r8d
	je        .L00000899
.L0000099F:
	testl     %eax, %eax
	je        .L00000A3F
.L000009A7:
	cmpl      $2, %eax
	ja        .L0000067D
.L000009B0:
	movl      144(%rbx), %eax
	movl      156(%rbx), %edx
	jmp       .L000006DA
.L000009C1:
	.p2align 4,,10
	.p2align 3
.L000009C8:
	shrw      $7, %dx
	leaq      256(%rdx), %rax
	andl      $1023, %eax
	movzbl    _dist_code(%rax), %eax
	jmp       .L0000073F
.L000009E4:
	.p2align 4,,10
	.p2align 3
.L000009E8:
	movq      %rbx, %rdi
	call      longest_match
.L000009F0:
	movl      156(%rbx), %edx
	movl      %eax, 144(%rbx)
	jmp       .L000006DA
.L00000A01:
	movq      24(%r12), %rdi
	movq      32(%r13), %rsi
	movl      %ebp, %r14d
	movq      %r14, %rdx
	call      memcpy
.L00000A15:
	addq      %r14, 24(%r12)
	addq      %r14, 32(%r13)
	addq      %r14, 40(%r12)
	subl      %ebp, 32(%r12)
	subl      %ebp, 40(%r13)
	jne       .L0000088B
.L00000A32:
	movq      16(%r13), %rax
	movq      %rax, 32(%r13)
	jmp       .L0000088B
.L00000A3F:
	movl      156(%rbx), %edx
	movl      $2, %eax
	cmpl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $4, 12(%rsp)
	movl      %eax, 5916(%rbx)
	je        .L00000AE5
.L00000A61:
	movl      5884(%rbx), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L00000AD6
.L00000A70:
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00000A8A
.L00000A81:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00000A8A:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00000A94:
	movq      (%rbx), %r13
	movl      156(%rbx), %eax
	movq      56(%r13), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L00000AB0:
	movl      40(%rbp), %r12d
	movl      32(%r13), %eax
	cmpl      %r12d, %eax
	cmovbe    %eax, %r12d
	testl     %r12d, %r12d
	jne       .L00000B59
.L00000AC8:
	movq      (%rbx), %rax
	movl      32(%rax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
.L00000AD6:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000AE5:
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00000AFF
.L00000AF6:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00000AFF:
	movl      $1, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00000B0C:
	movq      (%rbx), %r12
	movl      156(%rbx), %eax
	movq      56(%r12), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L00000B29:
	movl      40(%rbp), %r13d
	movl      32(%r12), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L00000B93
.L00000B3E:
	movq      (%rbx), %rax
	cmpl      $1, 32(%rax)
	sbbl      %eax, %eax
	addq      $24, %rsp
	popq      %rbx
	addl      $3, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000B59:
	movq      24(%r13), %rdi
	movq      32(%rbp), %rsi
	movl      %r12d, %r14d
	movq      %r14, %rdx
	call      memcpy
.L00000B6C:
	addq      %r14, 24(%r13)
	addq      %r14, 32(%rbp)
	addq      %r14, 40(%r13)
	subl      %r12d, 32(%r13)
	subl      %r12d, 40(%rbp)
	jne       .L00000AC8
.L00000B86:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L00000AC8
.L00000B93:
	movq      24(%r12), %rdi
	movq      32(%rbp), %rsi
	movl      %r13d, %r14d
	movq      %r14, %rdx
	call      memcpy
.L00000BA7:
	addq      %r14, 24(%r12)
	addq      %r14, 32(%rbp)
	addq      %r14, 40(%r12)
	subl      %r13d, 32(%r12)
	subl      %r13d, 40(%rbp)
	jne       .L00000B3E
.L00000BC4:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L00000B3E
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L00000BD1:
	.p2align 4
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      %esi, %ebp
	movq      %rdi, %rbx
	subq      $8, %rsp
.L00000BF3:
	movl      164(%rbx), %edi
	.p2align 4
.L00000C00:
	cmpl      $261, %edi
	jbe       .L00000EFE
.L00000C0C:
	movl      156(%rbx), %edx
	movq      80(%rbx), %rcx
	leal      2(%rdx), %eax
	movl      %edx, %edi
	andl      76(%rbx), %edi
	movzbl    (%rcx,%rax), %esi
	movl      128(%rbx), %ecx
	movl      112(%rbx), %eax
	sall      %cl, %eax
	movq      104(%rbx), %rcx
	xorl      %esi, %eax
	andl      124(%rbx), %eax
	movl      %eax, 112(%rbx)
	leaq      (%rcx,%rax,2), %rax
	movq      96(%rbx), %rcx
	movzwl    (%rax), %esi
	movw      %si, (%rcx,%rdi,2)
	movw      %dx, (%rax)
	testl     %esi, %esi
	movl      144(%rbx), %ecx
	movl      160(%rbx), %eax
	movl      $2, 144(%rbx)
	movl      %eax, 148(%rbx)
	movl      %ecx, 168(%rbx)
	movl      $2, %eax
	je        .L00000CA0
.L00000C76:
	cmpl      176(%rbx), %ecx
	jae       .L00000CA0
.L00000C7E:
	movl      68(%rbx), %edi
	movl      %edx, %r8d
	subl      %esi, %r8d
	subl      $262, %edi
	cmpl      %edi, %r8d
	jbe       .L00001050
.L00000C96:
	.p2align 4
.L00000CA0:
	cmpl      $2, %ecx
	jbe       .L00000E68
.L00000CA9:
	cmpl      %eax, %ecx
	jb        .L00000E68
.L00000CB1:
	movl      164(%rbx), %eax
	movl      5884(%rbx), %esi
	subl      $3, %ecx
	movq      5888(%rbx), %rdi
	leal      -3(%rdx,%rax), %r8d
	subw      148(%rbx), %dx
	movq      %rsi, %rax
	addl      $1, %eax
	leal      -1(%rdx), %r9d
	subl      $2, %edx
	movw      %r9w, (%rdi,%rsi,2)
	movq      5872(%rbx), %rdi
	movl      %eax, 5884(%rbx)
	movb      %cl, (%rdi,%rsi)
	movzbl    %cl, %ecx
	movzbl    _length_code(%rcx), %eax
	addw      $1, 1224(%rbx,%rax,4)
	cmpw      $255, %dx
	ja        .L00000F90
.L00000D13:
	movzwl    %dx, %edx
	movzbl    _dist_code(%rdx), %eax
.L00000D1D:
	addw      $1, 2488(%rbx,%rax,4)
	movl      5880(%rbx), %eax
	movl      168(%rbx), %r10d
	movl      156(%rbx), %r11d
	movl      5884(%rbx), %r12d
	leal      -1(%rax), %r9d
	movl      164(%rbx), %eax
	leal      -2(%r10), %esi
	movl      %esi, 168(%rbx)
	leal      1(%rax), %edi
	leal      1(%r11), %eax
	subl      %r10d, %edi
	movl      %edi, 164(%rbx)
	.p2align 4,,10
	.p2align 3
.L00000D68:
	cmpl      %r8d, %eax
	movl      %eax, 156(%rbx)
	ja        .L00000DB2
.L00000D73:
	movq      80(%rbx), %rcx
	leal      2(%rax), %edx
	movzbl    (%rcx,%rdx), %r13d
	movl      128(%rbx), %ecx
	movl      112(%rbx), %edx
	sall      %cl, %edx
	movq      104(%rbx), %rcx
	xorl      %r13d, %edx
	andl      124(%rbx), %edx
	movl      %eax, %r13d
	andl      76(%rbx), %r13d
	movl      %edx, 112(%rbx)
	leaq      (%rcx,%rdx,2), %rdx
	movq      96(%rbx), %rcx
	movzwl    (%rdx), %r15d
	movw      %r15w, (%rcx,%r13,2)
	movw      %ax, (%rdx)
.L00000DB2:
	subl      $1, %esi
	addl      $1, %eax
	testl     %esi, %esi
	movl      %esi, 168(%rbx)
	jne       .L00000D68
.L00000DC2:
	leal      -1(%r10,%r11), %eax
	cmpl      %r9d, %r12d
	movl      $0, 152(%rbx)
	movl      $2, 144(%rbx)
	movl      %eax, 156(%rbx)
	jne       .L00000C00
.L00000DEA:
	movq      136(%rbx), %rcx
	movl      %eax, %edx
	xorl      %esi, %esi
	subq      %rcx, %rdx
	testq     %rcx, %rcx
	js        .L00000E06
.L00000DFD:
	movl      %ecx, %ecx
	movq      %rcx, %rsi
	addq      80(%rbx), %rsi
.L00000E06:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00000E10:
	movq      (%rbx), %r13
	movl      156(%rbx), %eax
	movq      56(%r13), %r14
	movq      %rax, 136(%rbx)
	movq      %r14, %rdi
	call      _tr_flush_bits
.L00000E2C:
	movl      40(%r14), %r12d
	movl      32(%r13), %eax
	cmpl      %r12d, %eax
	cmovbe    %eax, %r12d
	testl     %r12d, %r12d
	jne       .L00001082
.L00000E44:
	movq      (%rbx), %rax
	movl      32(%rax), %r12d
	testl     %r12d, %r12d
	jne       .L00000BF3
.L00000E54:
	xorl      %eax, %eax
.L00000E56:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000E65:
	.p2align 4,,10
	.p2align 3
.L00000E68:
	movl      152(%rbx), %r11d
	testl     %r11d, %r11d
	je        .L00000F68
.L00000E78:
	movl      5884(%rbx), %ecx
	movq      80(%rbx), %rax
	subl      $1, %edx
	movq      5888(%rbx), %rsi
	xorl      %r10d, %r10d
	movzbl    (%rax,%rdx), %eax
	movw      %r10w, (%rsi,%rcx,2)
	movq      5872(%rbx), %rsi
	movq      %rcx, %rdx
	addl      $1, %edx
	movl      %edx, 5884(%rbx)
	movb      %al, (%rsi,%rcx)
	addw      $1, 196(%rbx,%rax,4)
	movl      5880(%rbx), %eax
	subl      $1, %eax
	cmpl      %eax, 5884(%rbx)
	je        .L00000FB0
.L00000ECC:
	movl      164(%rbx), %eax
	addl      $1, 156(%rbx)
	leal      -1(%rax), %edi
	movq      (%rbx), %rax
	movl      %edi, 164(%rbx)
	movl      32(%rax), %r9d
	testl     %r9d, %r9d
	je        .L00000E54
.L00000EF2:
	cmpl      $261, %edi
	ja        .L00000C0C
.L00000EFE:
	movq      %rbx, %rdi
	call      fill_window
.L00000F06:
	movl      164(%rbx), %eax
	cmpl      $261, %eax
	ja        .L00000C0C
.L00000F17:
	testl     %ebp, %ebp
	je        .L00000E54
.L00000F1F:
	testl     %eax, %eax
	je        .L000010FD
.L00000F27:
	cmpl      $2, %eax
	ja        .L00000C0C
.L00000F30:
	movl      144(%rbx), %ecx
	movl      160(%rbx), %eax
	movl      $2, 144(%rbx)
	movl      156(%rbx), %edx
	movl      %eax, 148(%rbx)
	movl      %ecx, 168(%rbx)
	movl      $2, %eax
	jmp       .L00000CA0
.L00000F62:
	.p2align 4,,10
	.p2align 3
.L00000F68:
	movl      164(%rbx), %eax
	addl      $1, %edx
	movl      $1, 152(%rbx)
	movl      %edx, 156(%rbx)
	leal      -1(%rax), %edi
	movl      %edi, 164(%rbx)
	jmp       .L00000C00
.L00000F8F:
	.p2align 4,,10
	.p2align 3
.L00000F90:
	shrw      $7, %dx
	leaq      256(%rdx), %rax
	andl      $1023, %eax
	movzbl    _dist_code(%rax), %eax
	jmp       .L00000D1D
.L00000FAC:
	.p2align 4,,10
	.p2align 3
.L00000FB0:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00000FD0
.L00000FC7:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00000FD0:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00000FDA:
	movq      (%rbx), %r13
	movl      156(%rbx), %eax
	movq      56(%r13), %r14
	movq      %rax, 136(%rbx)
	movq      %r14, %rdi
	call      _tr_flush_bits
.L00000FF6:
	movl      40(%r14), %r12d
	movl      32(%r13), %eax
	cmpl      %r12d, %eax
	cmovbe    %eax, %r12d
	testl     %r12d, %r12d
	je        .L00000ECC
.L0000100E:
	movq      24(%r13), %rdi
	movq      32(%r14), %rsi
	movl      %r12d, %r15d
	movq      %r15, %rdx
	call      memcpy
.L00001021:
	addq      %r15, 24(%r13)
	addq      %r15, 32(%r14)
	addq      %r15, 40(%r13)
	subl      %r12d, 32(%r13)
	subl      %r12d, 40(%r14)
	jne       .L00000ECC
.L0000103B:
	movq      16(%r14), %rax
	movq      %rax, 32(%r14)
	jmp       .L00000ECC
.L00001048:
	.p2align 4
.L00001050:
	movq      %rbx, %rdi
	call      longest_match
.L00001058:
	cmpl      $5, %eax
	movl      %eax, 144(%rbx)
	ja        .L00001071
.L00001063:
	cmpl      $1, 184(%rbx)
	je        .L000010BC
.L0000106C:
	cmpl      $3, %eax
	je        .L000010DC
.L00001071:
	movl      168(%rbx), %ecx
	movl      156(%rbx), %edx
	jmp       .L00000CA0
.L00001082:
	movq      24(%r13), %rdi
	movq      32(%r14), %rsi
	movl      %r12d, %r15d
	movq      %r15, %rdx
	call      memcpy
.L00001095:
	addq      %r15, 24(%r13)
	addq      %r15, 32(%r14)
	addq      %r15, 40(%r13)
	subl      %r12d, 32(%r13)
	subl      %r12d, 40(%r14)
	jne       .L00000E44
.L000010AF:
	movq      16(%r14), %rax
	movq      %rax, 32(%r14)
	jmp       .L00000E44
.L000010BC:
	movl      156(%rbx), %edx
.L000010C2:
	movl      $2, 144(%rbx)
	movl      168(%rbx), %ecx
	movl      $2, %eax
	jmp       .L00000CA0
.L000010DC:
	movl      156(%rbx), %edx
	movl      %edx, %ecx
	subl      160(%rbx), %ecx
	cmpl      $4096, %ecx
	ja        .L000010C2
.L000010F2:
	movl      168(%rbx), %ecx
	jmp       .L00000CA0
.L000010FD:
	movl      152(%rbx), %r8d
	testl     %r8d, %r8d
	jne       .L000011B7
.L0000110D:
	movl      156(%rbx), %edx
	movl      $2, %eax
	cmpl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $4, %ebp
	movl      %eax, 5916(%rbx)
	je        .L00001209
.L0000112D:
	movl      5884(%rbx), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L00000E56
.L00001140:
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L0000115A
.L00001151:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L0000115A:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00001164:
	movq      (%rbx), %r12
	movl      156(%rbx), %eax
	movq      56(%r12), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L00001181:
	movl      40(%rbp), %r13d
	movl      32(%r12), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L0000127D
.L0000119A:
	movq      (%rbx), %rax
	movl      32(%rax), %eax
	testl     %eax, %eax
	setne     %al
	addq      $8, %rsp
	popq      %rbx
	movzbl    %al, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000011B7:
	movl      156(%rbx), %eax
	movq      80(%rbx), %rdx
	xorl      %edi, %edi
	movl      5884(%rbx), %ecx
	movq      5888(%rbx), %rsi
	subl      $1, %eax
	movzbl    (%rdx,%rax), %eax
	movw      %di, (%rsi,%rcx,2)
	movq      5872(%rbx), %rsi
	movq      %rcx, %rdx
	addl      $1, %edx
	movl      %edx, 5884(%rbx)
	movb      %al, (%rsi,%rcx)
	addw      $1, 196(%rbx,%rax,4)
	movl      $0, 152(%rbx)
	jmp       .L0000110D
.L00001209:
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00001223
.L0000121A:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00001223:
	movl      $1, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00001230:
	movq      (%rbx), %r12
	movl      156(%rbx), %eax
	movq      56(%r12), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L0000124D:
	movl      40(%rbp), %r13d
	movl      32(%r12), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L000012BB
.L00001262:
	movq      (%rbx), %rax
	cmpl      $1, 32(%rax)
	sbbl      %eax, %eax
	addq      $8, %rsp
	popq      %rbx
	addl      $3, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000127D:
	movq      24(%r12), %rdi
	movq      32(%rbp), %rsi
	movl      %r13d, %r14d
	movq      %r14, %rdx
	call      memcpy
.L00001291:
	addq      %r14, 24(%r12)
	addq      %r14, 32(%rbp)
	addq      %r14, 40(%r12)
	subl      %r13d, 32(%r12)
	subl      %r13d, 40(%rbp)
	jne       .L0000119A
.L000012AE:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L0000119A
.L000012BB:
	movq      24(%r12), %rdi
	movq      32(%rbp), %rsi
	movl      %r13d, %r14d
	movq      %r14, %rdx
	call      memcpy
.L000012CF:
	addq      %r14, 24(%r12)
	addq      %r14, 32(%rbp)
	addq      %r14, 40(%r12)
	subl      %r13d, 32(%r12)
	subl      %r13d, 40(%rbp)
	jne       .L00001262
.L000012EC:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L00001262
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L000012F9:
	.p2align 4
# ----------------------
	.local	deflate_stored
	.type	deflate_stored, @function
deflate_stored:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      24(%rdi), %rax
	movl      %esi, 4(%rsp)
	leaq      -5(%rax), %rbp
	movl      $65535, %eax
	cmpq      $65535, %rbp
	cmovae    %rax, %rbp
	jmp       .L00001360
.L0000132F:
	.p2align 4,,10
	.p2align 3
.L00001330:
	movq      (%rbx), %rax
	movl      32(%rax), %ecx
	testl     %ecx, %ecx
	je        .L0000143D
.L0000133E:
	movl      156(%rbx), %eax
	movq      136(%rbx), %rcx
.L0000134B:
	movl      68(%rbx), %edi
	movl      %eax, %esi
	subl      %ecx, %esi
	leal      -262(%rdi), %edx
	cmpl      %edx, %esi
	jae       .L00001500
.L00001360:
	movl      164(%rbx), %eax
	cmpl      $1, %eax
	jbe       .L00001450
.L0000136F:
	addl      156(%rbx), %eax
	movq      136(%rbx), %rcx
	movl      $0, 164(%rbx)
	leaq      (%rbp,%rcx), %rdx
	testl     %eax, %eax
	movl      %eax, 156(%rbx)
	je        .L0000139C
.L00001395:
	movl      %eax, %esi
	cmpq      %rsi, %rdx
	ja        .L0000134B
.L0000139C:
	subl      %edx, %eax
	movl      %edx, 156(%rbx)
	movl      %edx, %edx
	subq      %rcx, %rdx
	xorl      %esi, %esi
	testq     %rcx, %rcx
	movl      %eax, 164(%rbx)
	js        .L000013BC
.L000013B6:
	movl      %ecx, %esi
	addq      80(%rbx), %rsi
.L000013BC:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L000013C6:
	movq      (%rbx), %r14
	movl      156(%rbx), %eax
	movq      56(%r14), %r15
	movq      %rax, 136(%rbx)
	movq      %r15, %rdi
	call      _tr_flush_bits
.L000013E2:
	movl      40(%r15), %r13d
	movl      32(%r14), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	je        .L00001330
.L000013FA:
	movq      24(%r14), %rdi
	movq      32(%r15), %rsi
	movl      %r13d, %r12d
	movq      %r12, %rdx
	call      memcpy
.L0000140D:
	addq      %r12, 24(%r14)
	addq      %r12, 32(%r15)
	addq      %r12, 40(%r14)
	subl      %r13d, 32(%r14)
	subl      %r13d, 40(%r15)
	jne       .L00001330
.L00001427:
	movq      16(%r15), %rax
	movq      %rax, 32(%r15)
	movq      (%rbx), %rax
	movl      32(%rax), %ecx
	testl     %ecx, %ecx
	jne       .L0000133E
.L0000143D:
	xorl      %eax, %eax
.L0000143F:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000144E:
	.p2align 4,,10
	.p2align 3
.L00001450:
	movq      %rbx, %rdi
	call      fill_window
.L00001458:
	movl      164(%rbx), %eax
	testl     %eax, %eax
	jne       .L0000136F
.L00001466:
	movl      4(%rsp), %esi
	testl     %esi, %esi
	je        .L0000143D
.L0000146E:
	cmpl      $4, 4(%rsp)
	movl      $0, 5916(%rbx)
	je        .L000015A5
.L00001483:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rcx
	movl      $1, %eax
	cmpq      %rcx, %rdx
	jle       .L0000143F
.L0000149A:
	subq      %rcx, %rdx
	xorl      %esi, %esi
	testq     %rcx, %rcx
	js        .L000014AD
.L000014A4:
	movl      %ecx, %ecx
	addq      80(%rbx), %rcx
	movq      %rcx, %rsi
.L000014AD:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L000014B7:
	movq      (%rbx), %r12
	movl      156(%rbx), %eax
	movq      56(%r12), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L000014D4:
	movl      40(%rbp), %r13d
	movl      32(%r12), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L00001615
.L000014ED:
	movq      (%rbx), %rax
	movl      32(%rax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
	jmp       .L0000143F
.L00001500:
	movl      %eax, %edx
	xorl      %esi, %esi
	subq      %rcx, %rdx
	testq     %rcx, %rcx
	js        .L00001515
.L0000150C:
	movl      %ecx, %ecx
	addq      80(%rbx), %rcx
	movq      %rcx, %rsi
.L00001515:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L0000151F:
	movq      (%rbx), %r14
	movl      156(%rbx), %eax
	movq      56(%r14), %r15
	movq      %rax, 136(%rbx)
	movq      %r15, %rdi
	call      _tr_flush_bits
.L0000153B:
	movl      40(%r15), %r13d
	movl      32(%r14), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L00001568
.L0000154F:
	movq      (%rbx), %rax
	movl      32(%rax), %edx
	testl     %edx, %edx
	jne       .L00001360
.L0000155D:
	jmp       .L0000143D
.L00001562:
	.p2align 4,,10
	.p2align 3
.L00001568:
	movq      24(%r14), %rdi
	movq      32(%r15), %rsi
	movl      %r13d, %ecx
	movq      %rcx, %rdx
	movq      %rcx, 8(%rsp)
	call      memcpy
.L00001580:
	movq      8(%rsp), %rcx
	addq      %rcx, 24(%r14)
	addq      %rcx, 32(%r15)
	addq      %rcx, 40(%r14)
	subl      %r13d, 32(%r14)
	subl      %r13d, 40(%r15)
	jne       .L0000154F
.L0000159B:
	movq      16(%r15), %rax
	movq      %rax, 32(%r15)
	jmp       .L0000154F
.L000015A5:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L000015C5
.L000015BC:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L000015C5:
	movl      $1, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L000015D2:
	movq      (%rbx), %r12
	movl      156(%rbx), %eax
	movq      56(%r12), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L000015EF:
	movl      40(%rbp), %r13d
	movl      32(%r12), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L00001653
.L00001604:
	movq      (%rbx), %rax
	cmpl      $1, 32(%rax)
	sbbl      %eax, %eax
	addl      $3, %eax
	jmp       .L0000143F
.L00001615:
	movq      24(%r12), %rdi
	movq      32(%rbp), %rsi
	movl      %r13d, %r14d
	movq      %r14, %rdx
	call      memcpy
.L00001629:
	addq      %r14, 24(%r12)
	addq      %r14, 32(%rbp)
	addq      %r14, 40(%r12)
	subl      %r13d, 32(%r12)
	subl      %r13d, 40(%rbp)
	jne       .L000014ED
.L00001646:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L000014ED
.L00001653:
	movq      24(%r12), %rdi
	movq      32(%rbp), %rsi
	movl      %r13d, %r14d
	movq      %r14, %rdx
	call      memcpy
.L00001667:
	addq      %r14, 24(%r12)
	addq      %r14, 32(%rbp)
	addq      %r14, 40(%r12)
	subl      %r13d, 32(%r12)
	subl      %r13d, 40(%rbp)
	jne       .L00001604
.L00001680:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L00001604
	.size	deflate_stored, .-deflate_stored
# ----------------------
.L0000168D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	testq     %rdi, %rdi
	je        .L000018AD
.L000016AA:
	testq     %rsi, %rsi
	movq      %rsi, %r15
	movq      56(%rdi), %r13
	je        .L000018AD
.L000016BA:
	testq     %r13, %r13
	je        .L000018AD
.L000016C3:
	movl      44(%r13), %ebp
	cmpl      $2, %ebp
	je        .L000018AD
.L000016D0:
	cmpl      $1, %ebp
	movl      %edx, %r14d
	je        .L00001827
.L000016DC:
	movl      164(%r13), %eax
	testl     %eax, %eax
	jne       .L000018AD
.L000016EB:
	movl      68(%r13), %eax
	movl      $0, 44(%r13)
	cmpl      %eax, %r14d
	jae       .L00001815
.L00001700:
	movl      8(%rbx), %eax
	movq      (%rbx), %r12
	movl      %r14d, 8(%rbx)
	movq      %r15, (%rbx)
	movl      %eax, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L00001718:
	movq      %r13, %rdi
	call      fill_window
.L00001720:
	movl      164(%r13), %esi
	cmpl      $2, %esi
	jbe       .L000017AC
.L00001730:
	movl      156(%r13), %edx
	movl      112(%r13), %eax
	movl      128(%r13), %ecx
	movq      80(%r13), %r15
	movl      124(%r13), %r14d
	movq      96(%r13), %r11
	movl      76(%r13), %r10d
	movq      104(%r13), %r9
	leal      -2(%rdx,%rsi), %r8d
	movq      %rbx, (%rsp)
	.p2align 4,,10
	.p2align 3
.L00001760:
	leal      2(%rdx), %esi
	sall      %cl, %eax
	movl      %edx, %edi
	andl      %r10d, %edi
	movzbl    (%r15,%rsi), %esi
	xorl      %esi, %eax
	andl      %r14d, %eax
	movl      %eax, %esi
	movl      %eax, 112(%r13)
	leaq      (%r9,%rsi,2), %rsi
	movzwl    (%rsi), %ebx
	movw      %bx, (%r11,%rdi,2)
	movw      %dx, (%rsi)
	addl      $1, %edx
	cmpl      %r8d, %edx
	jne       .L00001760
.L00001791:
	movq      (%rsp), %rbx
	movl      %edx, 156(%r13)
	movl      $2, 164(%r13)
	jmp       .L00001718
.L000017AC:
	movl      %esi, %eax
	addl      156(%r13), %eax
	movl      %esi, 5916(%r13)
	movl      $0, 164(%r13)
	movl      $2, 168(%r13)
	movl      $2, 144(%r13)
	movl      $0, 152(%r13)
	movl      %eax, 156(%r13)
	movq      %rax, 136(%r13)
	movl      12(%rsp), %eax
	movq      %r12, (%rbx)
	movl      %eax, 8(%rbx)
	movl      %ebp, 44(%r13)
	xorl      %eax, %eax
.L00001806:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001815:
	testl     %ebp, %ebp
	je        .L00001867
.L00001819:
	subl      %eax, %r14d
	addq      %r14, %r15
	movl      %eax, %r14d
	jmp       .L00001700
.L00001827:
	cmpl      $42, 8(%r13)
	movl      $-2, %eax
	jne       .L00001806
.L00001833:
	movl      164(%r13), %edx
	testl     %edx, %edx
	jne       .L00001806
.L0000183E:
	movq      96(%rbx), %rdi
	movl      %r14d, %edx
	movq      %r15, %rsi
	call      adler32
.L0000184D:
	movq      %rax, 96(%rbx)
	movl      68(%r13), %eax
	movl      $0, 44(%r13)
	cmpl      %eax, %r14d
	jae       .L00001819
.L00001862:
	jmp       .L00001700
.L00001867:
	movl      116(%r13), %eax
	movq      104(%r13), %rdi
	xorl      %ecx, %ecx
	xorl      %esi, %esi
	subl      $1, %eax
	leaq      (%rax,%rax), %rdx
	movw      %cx, (%rdi,%rax,2)
	call      memset
.L00001883:
	movl      $0, 156(%r13)
	movq      $0, 136(%r13)
	movl      $0, 5916(%r13)
	movl      68(%r13), %eax
	jmp       .L00001819
.L000018AD:
	movl      $-2, %eax
	jmp       .L00001806
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
.L000018B7:
	.p2align 4
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	testq     %rdi, %rdi
	je        .L00001987
.L000018C9:
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      56(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L00001980
.L000018DC:
	cmpq      $0, 64(%rdi)
	je        .L00001980
.L000018E7:
	cmpq      $0, 72(%rdi)
	je        .L00001980
.L000018F2:
	movq      16(%rbp), %rax
	movq      $0, 40(%rdi)
	movq      %rdi, %rbx
	movq      $0, 16(%rdi)
	movq      $0, 48(%rdi)
	movl      $2, 88(%rdi)
	movl      $0, 40(%rbp)
	movq      %rax, 32(%rbp)
	movl      44(%rbp), %eax
	testl     %eax, %eax
	js        .L00001960
.L0000192A:
	jne       .L00001965
.L0000192C:
	movl      $113, 8(%rbp)
.L00001933:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      adler32
.L0000193E:
	movq      %rax, 96(%rbx)
	movq      %rbp, %rdi
	movl      $0, 64(%rbp)
	call      _tr_init
.L00001951:
	xorl      %eax, %eax
.L00001953:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L0000195A:
	.p2align 4,,10
	.p2align 3
.L00001960:
	negl      %eax
	movl      %eax, 44(%rbp)
.L00001965:
	cmpl      $2, %eax
	movl      $42, 8(%rbp)
	jne       .L00001933
.L00001971:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      crc32
.L0000197C:
	jmp       .L0000193E
.L0000197E:
	.p2align 4,,10
	.p2align 3
.L00001980:
	movl      $-2, %eax
	jmp       .L00001953
.L00001987:
	movl      $-2, %eax
	ret       
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
.L0000198D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	testq     %rdi, %rdi
	je        .L00001B1F
.L00001999:
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      56(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L00001B18
.L000019AC:
	cmpq      $0, 64(%rdi)
	je        .L00001B18
.L000019B7:
	cmpq      $0, 72(%rdi)
	je        .L00001B18
.L000019C2:
	movq      16(%rbp), %rax
	movq      $0, 40(%rdi)
	movq      %rdi, %rbx
	movq      $0, 16(%rdi)
	movq      $0, 48(%rdi)
	movl      $2, 88(%rdi)
	movl      $0, 40(%rbp)
	movq      %rax, 32(%rbp)
	movl      44(%rbp), %eax
	testl     %eax, %eax
	js        .L00001AF0
.L000019FE:
	jne       .L00001AF5
.L00001A04:
	movl      $113, 8(%rbp)
.L00001A0B:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      adler32
.L00001A16:
	movq      %rax, 96(%rbx)
	movq      %rbp, %rdi
	movl      $0, 64(%rbp)
	call      _tr_init
.L00001A29:
	movq      56(%rbx), %rbx
	xorl      %ecx, %ecx
	xorl      %esi, %esi
	movl      68(%rbx), %eax
	movq      104(%rbx), %rdi
	addq      %rax, %rax
	movq      %rax, 88(%rbx)
	movl      116(%rbx), %eax
	subl      $1, %eax
	leaq      (%rax,%rax), %rdx
	movw      %cx, (%rdi,%rax,2)
	call      memset
.L00001A52:
	movslq    180(%rbx), %rax
	movl      $0, 156(%rbx)
	movq      $0, 136(%rbx)
	movl      $0, 164(%rbx)
	movl      $0, 5916(%rbx)
	movl      $2, 168(%rbx)
	movl      $2, 144(%rbx)
	movl      $0, 152(%rbx)
	salq      $4, %rax
	movl      $0, 112(%rbx)
	leaq      configuration_table(%rax), %rdx
	movzwl    configuration_table+2(%rax), %ecx
	movzwl    configuration_table(%rax), %eax
	movl      %eax, 188(%rbx)
	movzwl    4(%rdx), %eax
	movl      %ecx, 176(%rbx)
	movl      %eax, 192(%rbx)
	movzwl    6(%rdx), %eax
	movl      %eax, 172(%rbx)
	xorl      %eax, %eax
.L00001AE2:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L00001AE9:
	.p2align 4
.L00001AF0:
	negl      %eax
	movl      %eax, 44(%rbp)
.L00001AF5:
	cmpl      $2, %eax
	movl      $42, 8(%rbp)
	jne       .L00001A0B
.L00001B05:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      crc32
.L00001B10:
	jmp       .L00001A16
.L00001B15:
	.p2align 4,,10
	.p2align 3
.L00001B18:
	movl      $-2, %eax
	jmp       .L00001AE2
.L00001B1F:
	movl      $-2, %eax
	ret       
	.size	deflateReset, .-deflateReset
# ----------------------
.L00001B25:
	.p2align 4
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	testq     %rdi, %rdi
	je        .L00001B52
.L00001B35:
	movq      56(%rdi), %rdx
	movl      $-2, %eax
	testq     %rdx, %rdx
	je        .L00001B50
.L00001B43:
	cmpl      $2, 44(%rdx)
	jne       .L00001B50
.L00001B49:
	movq      %rsi, 48(%rdx)
	xorl      %eax, %eax
	ret       
.L00001B50:
	rep; ret       
.L00001B52:
	movl      $-2, %eax
	ret       
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
.L00001B58:
	.p2align 4
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	testq     %rdi, %rdi
	je        .L00001B98
.L00001B65:
	movq      56(%rdi), %rax
	testq     %rax, %rax
	je        .L00001B98
.L00001B6E:
	testq     %rsi, %rsi
	je        .L00001B78
.L00001B73:
	movl      40(%rax), %ecx
	movl      %ecx, (%rsi)
.L00001B78:
	testq     %rdx, %rdx
	je        .L00001B90
.L00001B7D:
	movl      5924(%rax), %eax
	movl      %eax, (%rdx)
	xorl      %eax, %eax
	ret       
.L00001B88:
	.p2align 4
.L00001B90:
	xorl      %eax, %eax
	ret       
.L00001B93:
	.p2align 4,,10
	.p2align 3
.L00001B98:
	movl      $-2, %eax
	ret       
	.size	deflatePending, .-deflatePending
# ----------------------
.L00001B9E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	testq     %rdi, %rdi
	je        .L00001C47
.L00001BA9:
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      56(%rdi), %r12
	testq     %r12, %r12
	je        .L00001C40
.L00001BBE:
	movq      32(%r12), %rax
	addq      $2, %rax
	cmpq      %rax, 5888(%r12)
	jb        .L00001C39
.L00001BD1:
	movl      %esi, %r13d
	movl      %edx, %r14d
	movl      $16, %ebx
	.p2align 4,,10
	.p2align 3
.L00001BE0:
	movl      5924(%r12), %r8d
	movl      %ebx, %ebp
	movl      $1, %eax
	movq      %r12, %rdi
	subl      %r8d, %ebp
	cmpl      %ebp, %r13d
	cmovle    %r13d, %ebp
	movl      %ebp, %ecx
	sall      %cl, %eax
	movl      %r8d, %ecx
	addl      %ebp, %r8d
	subl      $1, %eax
	movl      %r8d, 5924(%r12)
	andl      %r14d, %eax
	sall      %cl, %eax
	orw       %ax, 5920(%r12)
	call      _tr_flush_bits
.L00001C24:
	movl      %ebp, %ecx
	sarl      %cl, %r14d
	subl      %ebp, %r13d
	jne       .L00001BE0
.L00001C2E:
	xorl      %eax, %eax
.L00001C30:
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L00001C39:
	movl      $-5, %eax
	jmp       .L00001C30
.L00001C40:
	movl      $-2, %eax
	jmp       .L00001C30
.L00001C47:
	movl      $-2, %eax
	ret       
	.size	deflatePrime, .-deflatePrime
# ----------------------
.L00001C4D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	testq     %rdi, %rdi
	je        .L00001C80
.L00001C55:
	movq      56(%rdi), %rax
	testq     %rax, %rax
	je        .L00001C80
.L00001C5E:
	movl      %esi, 188(%rax)
	movl      %edx, 176(%rax)
	movl      %ecx, 192(%rax)
	movl      %r8d, 172(%rax)
	xorl      %eax, %eax
	ret       
.L00001C7A:
	.p2align 4,,10
	.p2align 3
.L00001C80:
	movl      $-2, %eax
	ret       
	.size	deflateTune, .-deflateTune
# ----------------------
.L00001C86:
	.p2align 4
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	leaq      7(%rsi), %r8
	leaq      63(%rsi), %rax
	movq      %r8, %rdx
	shrq      $6, %rax
	shrq      $3, %rdx
	addq      %rdx, %rax
	addq      %rsi, %rax
	testq     %rdi, %rdi
	je        .L00001DB0
.L00001CB2:
	movq      56(%rdi), %rcx
	testq     %rcx, %rcx
	je        .L00001DB0
.L00001CBF:
	movl      44(%rcx), %edx
	cmpl      $1, %edx
	je        .L00001D90
.L00001CCB:
	cmpl      $2, %edx
	je        .L00001CF0
.L00001CD0:
	cmpl      $1, %edx
	sbbq      %rdx, %rdx
	notq      %rdx
	andl      $6, %edx
.L00001CDC:
	cmpl      $15, 72(%rcx)
	je        .L00001D60
.L00001CE2:
	leaq      5(%rdx,%rax), %rax
	ret       
.L00001CE8:
	.p2align 4
.L00001CF0:
	movq      48(%rcx), %r9
	testq     %r9, %r9
	je        .L00001DB8
.L00001CFD:
	cmpq      $0, 24(%r9)
	je        .L00001DC8
.L00001D08:
	movl      32(%r9), %edx
	addl      $2, %edx
	addq      $18, %rdx
.L00001D13:
	movq      40(%r9), %rdi
	testq     %rdi, %rdi
	je        .L00001D2B
.L00001D1C:
	subq      %rdx, %rdi
	.p2align 4,,10
	.p2align 3
.L00001D20:
	addq      $1, %rdx
	cmpb      $0, -1(%rdi,%rdx)
	jne       .L00001D20
.L00001D2B:
	movq      56(%r9), %rdi
	testq     %rdi, %rdi
	je        .L00001D4B
.L00001D34:
	subq      %rdx, %rdi
	.p2align 4
.L00001D40:
	addq      $1, %rdx
	cmpb      $0, -1(%rdi,%rdx)
	jne       .L00001D40
.L00001D4B:
	movl      68(%r9), %r9d
	leaq      2(%rdx), %rdi
	testl     %r9d, %r9d
	cmovne    %rdi, %rdx
	cmpl      $15, 72(%rcx)
	jne       .L00001CE2
.L00001D60:
	cmpl      $15, 120(%rcx)
	jne       .L00001CE2
.L00001D6A:
	movq      %rsi, %rax
	shrq      $12, %rax
	addq      %rax, %r8
	movq      %rsi, %rax
	shrq      $25, %rsi
	shrq      $14, %rax
	addq      %rax, %r8
	leaq      (%r8,%rsi), %rax
	addq      %rdx, %rax
	ret       
.L00001D8A:
	.p2align 4,,10
	.p2align 3
.L00001D90:
	cmpl      $1, 156(%rcx)
	sbbq      %rdx, %rdx
	andq      $-4, %rdx
	addq      $10, %rdx
	jmp       .L00001CDC
.L00001DA7:
	.p2align 4
.L00001DB0:
	addq      $11, %rax
	ret       
.L00001DB5:
	.p2align 4,,10
	.p2align 3
.L00001DB8:
	movl      $18, %edx
	jmp       .L00001CDC
.L00001DC2:
	.p2align 4,,10
	.p2align 3
.L00001DC8:
	movl      $18, %edx
	jmp       .L00001D13
	.size	deflateBound, .-deflateBound
# ----------------------
.L00001DD2:
	.p2align 4
# ----------------------
	.globl	deflate
	.type	deflate, @function
deflate:
	testq     %rdi, %rdi
	je        .L000033A6
.L00001DE9:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $40, %rsp
	movq      56(%rdi), %rbx
	testq     %rbx, %rbx
	je        .L00002E30
.L00001E04:
	cmpl      $5, %esi
	ja        .L00002E30
.L00001E0D:
	cmpq      $0, 24(%rdi)
	je        .L00002C8D
.L00001E18:
	cmpq      $0, (%rdi)
	je        .L00002C80
.L00001E22:
	cmpl      $4, %esi
	movl      8(%rbx), %eax
	setne     27(%rsp)
	je        .L00001E3A
.L00001E2F:
	cmpl      $666, %eax
	je        .L00002C8D
.L00001E3A:
	movl      32(%rdi), %r9d
	testl     %r9d, %r9d
	je        .L00002EB5
.L00001E47:
	cmpl      $42, %eax
	movl      64(%rbx), %r13d
	movl      %esi, %ebp
	movq      %rdi, %r14
	movq      %rdi, (%rbx)
	movl      %esi, 64(%rbx)
	je        .L00002290
.L00001E5F:
	cmpl      $69, %eax
	je        .L00002391
.L00001E68:
	cmpl      $73, %eax
	movl      40(%rbx), %edi
	je        .L000024A8
.L00001E74:
	movl      %edi, %edx
.L00001E76:
	cmpl      $91, %eax
	je        .L00002D5D
.L00001E7F:
	cmpl      $103, %eax
	je        .L00002D54
.L00001E88:
	testl     %edx, %edx
	jne       .L00002240
.L00001E90:
	movl      8(%r14), %esi
	testl     %esi, %esi
	je        .L00001F10
.L00001E98:
	cmpl      $666, 8(%rbx)
	je        .L00002560
.L00001EA5:
	movl      184(%rbx), %eax
	cmpl      $2, %eax
	je        .L00002023
.L00001EB4:
	cmpl      $3, %eax
	je        .L00002950
.L00001EBD:
	movslq    180(%rbx), %rax
	movl      %ebp, %esi
	movq      %rbx, %rdi
	salq      $4, %rax
	call      *configuration_table+8(%rax)
.L00001ED3:
	leal      -2(%rax), %edx
	cmpl      $1, %edx
	jbe       .L00002CC8
.L00001EDF:
	movl      %eax, %edx
	andl      $-3, %edx
.L00001EE4:
	testl     %edx, %edx
	jne       .L00002170
.L00001EEC:
	movl      32(%r14), %r10d
	testl     %r10d, %r10d
	je        .L00002580
.L00001EF9:
	xorl      %eax, %eax
.L00001EFB:
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001F0A:
	.p2align 4,,10
	.p2align 3
.L00001F10:
	xorl      %eax, %eax
	cmpl      $5, %ebp
	leal      (%rbp,%rbp), %ecx
	sete      %al
	leal      (%r13,%r13), %edx
	leal      (%rax,%rax,8), %eax
	subl      %eax, %ecx
	xorl      %eax, %eax
	cmpl      $4, %r13d
	setg      %al
	leal      (%rax,%rax,8), %eax
	subl      %eax, %edx
	cmpl      %edx, %ecx
	jg        .L00001F43
.L00001F38:
	cmpb      $0, 27(%rsp)
	jne       .L00002560
.L00001F43:
	movl      8(%rbx), %eax
.L00001F46:
	movl      164(%rbx), %r15d
	testl     %r15d, %r15d
	jne       .L00001EA5
.L00001F56:
	testl     %ebp, %ebp
	je        .L00001EF9
.L00001F5A:
	cmpl      $666, %eax
	jne       .L00001EA5
.L00001F65:
	jmp       .L00002179
.L00001F6A:
	.p2align 4,,10
	.p2align 3
.L00001F70:
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00001F8A
.L00001F81:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00001F8A:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00001F94:
	movq      (%rbx), %r15
	movl      156(%rbx), %eax
	movq      56(%r15), %rcx
	movq      %rax, 136(%rbx)
	movq      %rcx, %rdi
	movq      %rcx, 8(%rsp)
	call      _tr_flush_bits
.L00001FB5:
	movq      8(%rsp), %rcx
	movl      32(%r15), %eax
	movl      40(%rcx), %r13d
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	je        .L00002013
.L00001FCE:
	movq      32(%rcx), %rsi
	movq      24(%r15), %rdi
	movl      %r13d, %r8d
	movq      %r8, %rdx
	movq      %rcx, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      memcpy
.L00001FEB:
	movq      16(%rsp), %rcx
	movq      8(%rsp), %r8
	addq      %r8, 24(%r15)
	addq      %r8, 32(%rcx)
	addq      %r8, 40(%r15)
	subl      %r13d, 32(%r15)
	subl      %r13d, 40(%rcx)
	jne       .L00002013
.L0000200B:
	movq      16(%rcx), %rax
	movq      %rax, 32(%rcx)
.L00002013:
	movq      (%rbx), %rax
	movl      32(%rax), %r11d
	testl     %r11d, %r11d
	je        .L00001EEC
.L00002023:
	movl      164(%rbx), %eax
	jmp       .L000020AF
.L0000202E:
	.p2align 4,,10
	.p2align 3
.L00002030:
	movl      156(%rbx), %eax
	movl      5884(%rbx), %ecx
	xorl      %r12d, %r12d
	movq      80(%rbx), %rdx
	movq      5888(%rbx), %rsi
	movl      $0, 144(%rbx)
	movzbl    (%rdx,%rax), %eax
	movw      %r12w, (%rsi,%rcx,2)
	movq      %rcx, %rdx
	movq      5872(%rbx), %rsi
	addl      $1, %edx
	movl      %edx, 5884(%rbx)
	movb      %al, (%rsi,%rcx)
	addw      $1, 196(%rbx,%rax,4)
	movl      5880(%rbx), %eax
	movl      156(%rbx), %edi
	leal      -1(%rax), %ecx
	movl      164(%rbx), %eax
	leal      1(%rdi), %edx
	movl      %edx, 156(%rbx)
	subl      $1, %eax
	cmpl      %ecx, 5884(%rbx)
	movl      %eax, 164(%rbx)
	je        .L00001F70
.L000020AF:
	testl     %eax, %eax
	jne       .L00002030
.L000020B7:
	movq      %rbx, %rdi
	call      fill_window
.L000020BF:
	movl      164(%rbx), %r13d
	testl     %r13d, %r13d
	jne       .L00002030
.L000020CF:
	testl     %ebp, %ebp
	je        .L00001EEC
.L000020D7:
	cmpl      $4, %ebp
	movl      $0, 5916(%rbx)
	je        .L0000329F
.L000020EA:
	movl      5884(%rbx), %r9d
	testl     %r9d, %r9d
	je        .L000025AF
.L000020FA:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L0000211A
.L00002111:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L0000211A:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00002124:
	movq      (%rbx), %r15
	movl      156(%rbx), %eax
	movq      56(%r15), %r13
	movq      %rax, 136(%rbx)
	movq      %r13, %rdi
	call      _tr_flush_bits
.L00002140:
	movl      40(%r13), %ecx
	movl      32(%r15), %eax
	cmpl      %ecx, %eax
	cmovbe    %eax, %ecx
	testl     %ecx, %ecx
	jne       .L000033AC
.L00002155:
	movq      (%rbx), %rax
	movl      32(%rax), %r11d
	xorl      %eax, %eax
	testl     %r11d, %r11d
	setne     %al
	movl      %eax, %edx
	jmp       .L00001EE4
.L0000216B:
	.p2align 4,,10
	.p2align 3
.L00002170:
	cmpl      $1, %eax
	je        .L000025AF
.L00002179:
	cmpb      $0, 27(%rsp)
	jne       .L00001EF9
.L00002184:
	movl      44(%rbx), %eax
	testl     %eax, %eax
	jle       .L000031CA
.L0000218F:
	cmpl      $2, %eax
	je        .L00002F20
.L00002198:
	movl      40(%rbx), %eax
	movq      96(%r14), %rdx
	movq      16(%rbx), %rcx
	shrq      $16, %rdx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movl      %edx, %esi
	shrl      $8, %esi
	movb      %sil, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movzwl    96(%r14), %edx
	movq      16(%rbx), %rcx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movl      %edx, %esi
	shrl      $8, %esi
	movb      %sil, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movb      %dl, (%rcx,%rax)
.L000021F1:
	movq      56(%r14), %r12
	movq      %r12, %rdi
	call      _tr_flush_bits
.L000021FD:
	movl      40(%r12), %ebp
	movl      32(%r14), %eax
	cmpl      %ebp, %eax
	cmovbe    %eax, %ebp
	testl     %ebp, %ebp
	jne       .L00002E3A
.L00002213:
	movl      44(%rbx), %eax
	testl     %eax, %eax
	jle       .L0000221F
.L0000221A:
	negl      %eax
	movl      %eax, 44(%rbx)
.L0000221F:
	movl      40(%rbx), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	sete      %al
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002238:
	.p2align 4
.L00002240:
	movq      56(%r14), %r15
	movq      %r15, %rdi
	call      _tr_flush_bits
.L0000224C:
	movl      40(%r15), %r13d
	movl      32(%r14), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L00002657
.L00002264:
	testl     %eax, %eax
	je        .L00002641
.L0000226C:
	movl      8(%rbx), %eax
	cmpl      $666, %eax
	je        .L00002550
.L0000227A:
	movl      8(%r14), %edx
	testl     %edx, %edx
	je        .L00001F46
.L00002286:
	jmp       .L00001EA5
.L0000228B:
	.p2align 4,,10
	.p2align 3
.L00002290:
	cmpl      $2, 44(%rbx)
	je        .L00003017
.L0000229A:
	movl      72(%rbx), %eax
	xorl      %ecx, %ecx
	sall      $12, %eax
	subl      $30720, %eax
	cmpl      $1, 184(%rbx)
	jle       .L000026B3
.L000022B4:
	movl      156(%rbx), %r12d
	orl       %eax, %ecx
	movl      $138547333, %edx
	movl      %ecx, %eax
	movl      $113, 8(%rbx)
	orl       $32, %eax
	testl     %r12d, %r12d
	cmovne    %eax, %ecx
	movl      %ecx, %eax
	mull      %edx
	subl      %edx, %ecx
	shrl      $1, %ecx
	addl      %ecx, %edx
	movq      16(%rbx), %rcx
	shrl      $4, %edx
	movl      %edx, %eax
	sall      $5, %eax
	subl      %edx, %eax
	movl      40(%rbx), %edx
	addl      $31, %eax
	leal      1(%rdx), %esi
	movl      %esi, 40(%rbx)
	movl      %eax, %esi
	shrl      $8, %esi
	movb      %sil, (%rcx,%rdx)
	movl      40(%rbx), %edx
	movq      16(%rbx), %rcx
	leal      1(%rdx), %esi
	movl      %esi, 40(%rbx)
	movb      %al, (%rcx,%rdx)
	movl      156(%rbx), %r15d
	testl     %r15d, %r15d
	je        .L00002376
.L0000231D:
	movl      40(%rbx), %eax
	movq      96(%r14), %rdx
	movq      16(%rbx), %rcx
	shrq      $16, %rdx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movl      %edx, %esi
	shrl      $8, %esi
	movb      %sil, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movzwl    96(%r14), %edx
	movq      16(%rbx), %rcx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movl      %edx, %esi
	shrl      $8, %esi
	movb      %sil, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %esi
	movl      %esi, 40(%rbx)
	movb      %dl, (%rcx,%rax)
.L00002376:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      adler32
.L00002381:
	movq      %rax, 96(%r14)
	movl      8(%rbx), %eax
	cmpl      $69, %eax
	jne       .L00001E68
.L00002391:
	movq      48(%rbx), %rax
.L00002395:
	cmpq      $0, 24(%rax)
	je        .L00002ECA
.L000023A0:
	movl      56(%rbx), %ecx
	movl      32(%rax), %esi
	movl      40(%rbx), %edi
	movzwl    %si, %edx
	cmpl      %ecx, %edx
	jbe       .L00002490
.L000023B4:
	movl      %edi, %r8d
	movl      %edi, %edx
	jmp       .L000023F0
.L000023BB:
	.p2align 4,,10
	.p2align 3
.L000023C0:
	movq      24(%rax), %rax
	addl      $1, %edx
	movq      16(%rbx), %r9
	movl      %edx, 40(%rbx)
	movzbl    (%rax,%rcx), %eax
	movb      %al, (%r9,%rsi)
	movl      56(%rbx), %eax
	leal      1(%rax), %ecx
	movq      48(%rbx), %rax
	movl      %ecx, 56(%rbx)
	movl      32(%rax), %esi
	movzwl    %si, %edx
	cmpl      %ecx, %edx
	jbe       .L00002450
.L000023ED:
	movl      40(%rbx), %edx
.L000023F0:
	movl      %edx, %esi
	cmpq      24(%rbx), %rsi
	jne       .L000023C0
.L000023F8:
	cmpl      %edx, %edi
	jae       .L00002409
.L000023FC:
	movl      68(%rax), %r11d
	testl     %r11d, %r11d
	jne       .L00002CA8
.L00002409:
	movq      56(%r14), %r12
	movq      %r12, %rdi
	call      _tr_flush_bits
.L00002415:
	movl      40(%r12), %r15d
	movl      32(%r14), %eax
	cmpl      %r15d, %eax
	cmovbe    %eax, %r15d
	testl     %r15d, %r15d
	jne       .L00002730
.L0000242E:
	movl      40(%rbx), %esi
	cmpq      24(%rbx), %rsi
	movq      %rsi, %rdi
	movl      %esi, %r8d
	je        .L00002E98
.L00002441:
	movq      48(%rbx), %rax
	movl      56(%rbx), %ecx
	movl      %esi, %edx
	jmp       .L000023C0
.L0000244F:
	.p2align 4,,10
	.p2align 3
.L00002450:
	movl      68(%rax), %r10d
	movl      40(%rbx), %edi
	testl     %r10d, %r10d
	je        .L00002490
.L0000245C:
	cmpl      %r8d, %edi
	jbe       .L00002490
.L00002461:
	subl      %r8d, %edi
	movq      %r8, %rsi
	addq      16(%rbx), %rsi
	movl      %edi, %edx
	movq      96(%r14), %rdi
	call      crc32
.L00002476:
	movq      %rax, 96(%r14)
	movq      48(%rbx), %rax
	movl      56(%rbx), %ecx
	movl      40(%rbx), %edi
	movl      32(%rax), %esi
	.p2align 4
.L00002490:
	cmpl      %esi, %ecx
	je        .L000026A0
.L00002498:
	movl      8(%rbx), %eax
	cmpl      $73, %eax
	jne       .L00001E74
.L000024A4:
	.p2align 4,,10
	.p2align 3
.L000024A8:
	movq      48(%rbx), %rax
.L000024AC:
	cmpq      $0, 40(%rax)
	je        .L00002EA7
.L000024B7:
	movl      %edi, %esi
	movl      %esi, %edx
	jmp       .L000024EF
.L000024BD:
	.p2align 4,,10
	.p2align 3
.L000024C0:
	movq      40(%rax), %rdi
	movl      56(%rbx), %eax
	addl      $1, %edx
	leal      1(%rax), %r8d
	movl      %r8d, 56(%rbx)
	movzbl    (%rdi,%rax), %eax
	movq      16(%rbx), %rdi
	movl      %edx, 40(%rbx)
	testb     %al, %al
	movb      %al, (%rdi,%rcx)
	je        .L00002780
.L000024E8:
	movl      40(%rbx), %edx
	movq      48(%rbx), %rax
.L000024EF:
	movl      %edx, %ecx
	cmpq      24(%rbx), %rcx
	jne       .L000024C0
.L000024F7:
	cmpl      %edx, %esi
	jae       .L00002508
.L000024FB:
	movl      68(%rax), %r9d
	testl     %r9d, %r9d
	jne       .L00002C40
.L00002508:
	movq      56(%r14), %r12
	movq      %r12, %rdi
	call      _tr_flush_bits
.L00002514:
	movl      40(%r12), %r15d
	movl      32(%r14), %eax
	cmpl      %r15d, %eax
	cmovbe    %eax, %r15d
	testl     %r15d, %r15d
	jne       .L000026E0
.L0000252D:
	movl      40(%rbx), %esi
	movq      48(%rbx), %rax
	movl      %esi, %ecx
	cmpq      24(%rbx), %rcx
	je        .L00002E79
.L00002540:
	movl      %esi, %edx
	jmp       .L000024C0
.L00002547:
	.p2align 4
.L00002550:
	movl      8(%r14), %ecx
	testl     %ecx, %ecx
	je        .L00001F46
.L0000255C:
	.p2align 4,,10
	.p2align 3
.L00002560:
	movq      z_errmsg+56(%rip), %rax
	movq      %rax, 48(%r14)
	addq      $40, %rsp
	movl      $-5, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000257F:
	.p2align 4,,10
	.p2align 3
.L00002580:
	movl      $-1, 64(%rbx)
	jmp       .L00001EF9
.L0000258C:
	cmpl      $4, %ebp
	movl      $0, 5916(%rbx)
	je        .L000031D4
.L0000259F:
	movl      5884(%rbx), %r12d
	testl     %r12d, %r12d
	jne       .L00002D66
.L000025AF:
	cmpl      $1, %ebp
	je        .L00003344
.L000025B8:
	cmpl      $5, %ebp
	je        .L00002618
.L000025BD:
	xorl      %ecx, %ecx
	xorl      %edx, %edx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _tr_stored_block
.L000025CB:
	cmpl      $3, %ebp
	jne       .L00002618
.L000025D0:
	movl      116(%rbx), %eax
	movq      104(%rbx), %rdi
	xorl      %r8d, %r8d
	xorl      %esi, %esi
	subl      $1, %eax
	leaq      (%rax,%rax), %rdx
	movw      %r8w, (%rdi,%rax,2)
	call      memset
.L000025ED:
	movl      164(%rbx), %r9d
	testl     %r9d, %r9d
	jne       .L00002618
.L000025F9:
	movl      $0, 156(%rbx)
	movq      $0, 136(%rbx)
	movl      $0, 5916(%rbx)
.L00002618:
	movq      56(%r14), %r13
	movq      %r13, %rdi
	call      _tr_flush_bits
.L00002624:
	movl      40(%r13), %ebp
	movl      32(%r14), %eax
	cmpl      %ebp, %eax
	cmovbe    %eax, %ebp
	testl     %ebp, %ebp
	jne       .L00002FDD
.L00002639:
	testl     %eax, %eax
	jne       .L00002179
.L00002641:
	movl      $-1, 64(%rbx)
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002657:
	movq      24(%r14), %rdi
	movq      32(%r15), %rsi
	movl      %r13d, %ecx
	movq      %rcx, %rdx
	movq      %rcx, 8(%rsp)
	call      memcpy
.L0000266F:
	movq      8(%rsp), %rcx
	addq      %rcx, 24(%r14)
	addq      %rcx, 32(%r15)
	addq      %rcx, 40(%r14)
	subl      %r13d, 32(%r14)
	subl      %r13d, 40(%r15)
	jne       .L00002692
.L0000268A:
	movq      16(%r15), %rax
	movq      %rax, 32(%r15)
.L00002692:
	movl      32(%r14), %eax
	testl     %eax, %eax
	jne       .L0000226C
.L0000269E:
	jmp       .L00002641
.L000026A0:
	movl      $0, 56(%rbx)
	movl      $73, 8(%rbx)
	jmp       .L000024AC
.L000026B3:
	movl      180(%rbx), %edx
	cmpl      $1, %edx
	jle       .L000022B4
.L000026C2:
	cmpl      $5, %edx
	movb      $64, %cl
	jle       .L000022B4
.L000026CD:
	cmpl      $6, %edx
	movb      $-64, %cl
	movl      $128, %edx
	cmove     %edx, %ecx
	jmp       .L000022B4
.L000026DF:
	.p2align 4,,10
	.p2align 3
.L000026E0:
	movq      24(%r14), %rdi
	movq      32(%r12), %rsi
	movl      %r15d, %r8d
	movq      %r8, %rdx
	movq      %r8, 8(%rsp)
	call      memcpy
.L000026F9:
	movq      8(%rsp), %r8
	addq      %r8, 24(%r14)
	addq      %r8, 32(%r12)
	addq      %r8, 40(%r14)
	subl      %r15d, 32(%r14)
	subl      %r15d, 40(%r12)
	jne       .L0000252D
.L0000271A:
	movq      16(%r12), %rax
	movq      %rax, 32(%r12)
	jmp       .L0000252D
.L00002729:
	.p2align 4
.L00002730:
	movq      24(%r14), %rdi
	movq      32(%r12), %rsi
	movl      %r15d, %r8d
	movq      %r8, %rdx
	movq      %r8, 8(%rsp)
	call      memcpy
.L00002749:
	movq      8(%rsp), %r8
	addq      %r8, 24(%r14)
	addq      %r8, 32(%r12)
	addq      %r8, 40(%r14)
	subl      %r15d, 32(%r14)
	subl      %r15d, 40(%r12)
	jne       .L0000242E
.L0000276A:
	movq      16(%r12), %rax
	movq      %rax, 32(%r12)
	jmp       .L0000242E
.L00002779:
	.p2align 4
.L00002780:
	movq      48(%rbx), %rax
	movl      40(%rbx), %edx
	movl      68(%rax), %ecx
	testl     %ecx, %ecx
	je        .L000027B8
.L0000278E:
	cmpl      %esi, %edx
	jbe       .L000027B8
.L00002792:
	movl      %edx, %eax
	movl      %esi, %edx
	movq      96(%r14), %rdi
	subl      %esi, %eax
	movq      %rdx, %rsi
	addq      16(%rbx), %rsi
	movl      %eax, %edx
	call      crc32
.L000027AA:
	movl      40(%rbx), %edx
	movq      %rax, 96(%r14)
	movq      48(%rbx), %rax
	.p2align 4,,10
	.p2align 3
.L000027B8:
	movl      $0, 56(%rbx)
	movl      $91, 8(%rbx)
.L000027C6:
	cmpq      $0, 56(%rax)
	je        .L000028E8
.L000027D1:
	movl      %edx, %edi
	movl      %edi, %esi
	jmp       .L00002810
.L000027D7:
	.p2align 4
.L000027E0:
	movq      56(%rax), %rdx
	movl      56(%rbx), %eax
	addl      $1, %esi
	leal      1(%rax), %r8d
	movl      %r8d, 56(%rbx)
	movzbl    (%rdx,%rax), %eax
	movq      16(%rbx), %r8
	movl      %esi, 40(%rbx)
	testb     %al, %al
	movb      %al, (%r8,%rcx)
	je        .L000028B0
.L00002809:
	movl      40(%rbx), %esi
	movq      48(%rbx), %rax
.L00002810:
	movl      %esi, %ecx
	cmpq      24(%rbx), %rcx
	jne       .L000027E0
.L00002818:
	cmpl      %esi, %edi
	jae       .L00002829
.L0000281C:
	movl      68(%rax), %r8d
	testl     %r8d, %r8d
	jne       .L00002C60
.L00002829:
	movq      56(%r14), %r12
	movq      %r12, %rdi
	call      _tr_flush_bits
.L00002835:
	movl      40(%r12), %r15d
	movl      32(%r14), %eax
	cmpl      %r15d, %eax
	cmovbe    %eax, %r15d
	testl     %r15d, %r15d
	jne       .L00002868
.L0000284A:
	movl      40(%rbx), %edi
	movq      48(%rbx), %rax
	movl      %edi, %ecx
	cmpq      24(%rbx), %rcx
	je        .L00002E83
.L0000285D:
	movl      %edi, %esi
	jmp       .L000027E0
.L00002864:
	.p2align 4,,10
	.p2align 3
.L00002868:
	movq      24(%r14), %rdi
	movq      32(%r12), %rsi
	movl      %r15d, %r8d
	movq      %r8, %rdx
	movq      %r8, 8(%rsp)
	call      memcpy
.L00002881:
	movq      8(%rsp), %r8
	addq      %r8, 24(%r14)
	addq      %r8, 32(%r12)
	addq      %r8, 40(%r14)
	subl      %r15d, 32(%r14)
	subl      %r15d, 40(%r12)
	jne       .L0000284A
.L0000289E:
	movq      16(%r12), %rax
	movq      %rax, 32(%r12)
	jmp       .L0000284A
.L000028AA:
	.p2align 4,,10
	.p2align 3
.L000028B0:
	movq      48(%rbx), %rax
	movl      68(%rax), %edx
	testl     %edx, %edx
	movl      40(%rbx), %edx
	je        .L000028E8
.L000028BE:
	cmpl      %edi, %edx
	jbe       .L000028E8
.L000028C2:
	movl      %edx, %eax
	movl      %edi, %edx
	movq      %rdx, %rsi
	addq      16(%rbx), %rsi
	subl      %edi, %eax
	movq      96(%r14), %rdi
	movl      %eax, %edx
	call      crc32
.L000028DA:
	movl      40(%rbx), %edx
	movq      %rax, 96(%r14)
	movq      48(%rbx), %rax
	.p2align 4,,10
	.p2align 3
.L000028E8:
	movl      $103, 8(%rbx)
.L000028EF:
	movl      68(%rax), %edi
	testl     %edi, %edi
	je        .L00002D48
.L000028FA:
	leal      2(%rdx), %eax
	cmpq      24(%rbx), %rax
	ja        .L00002ED9
.L00002907:
	leal      1(%rdx), %ecx
	movq      16(%rbx), %rax
	xorl      %esi, %esi
	xorl      %edi, %edi
	movl      %ecx, 40(%rbx)
	movq      96(%r14), %rcx
	movb      %cl, (%rax,%rdx)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      96(%r14), %rdx
	shrq      $8, %rdx
	movb      %dl, (%rcx,%rax)
	xorl      %edx, %edx
	call      crc32
.L0000293B:
	movl      40(%rbx), %edx
	movq      %rax, 96(%r14)
	movl      $113, 8(%rbx)
	jmp       .L00001E88
.L0000294E:
	.p2align 4,,10
	.p2align 3
.L00002950:
	movzbl    _dist_code(%rip), %eax
	movl      $258, %r12d
	leaq      (%rbx,%rax,4), %r15
.L00002961:
	movl      164(%rbx), %eax
	jmp       .L000029FE
.L0000296C:
	.p2align 4,,10
	.p2align 3
.L00002970:
	movl      $0, 144(%rbx)
.L0000297A:
	movl      156(%rbx), %ecx
	movq      80(%rbx), %rsi
	testl     %ecx, %ecx
	jne       .L00002A58
.L0000298C:
	xorl      %ecx, %ecx
.L0000298E:
	movzbl    (%rsi,%rcx), %eax
	movl      5884(%rbx), %ecx
	xorl      %edi, %edi
	movq      5888(%rbx), %rsi
	movw      %di, (%rsi,%rcx,2)
	movq      5872(%rbx), %rsi
	movq      %rcx, %rdx
	addl      $1, %edx
	movl      %edx, 5884(%rbx)
	movb      %al, (%rsi,%rcx)
	addw      $1, 196(%rbx,%rax,4)
	xorl      %ecx, %ecx
	movl      5880(%rbx), %eax
	movl      156(%rbx), %edi
	subl      $1, %eax
	cmpl      %eax, 5884(%rbx)
	leal      1(%rdi), %edx
	movl      164(%rbx), %eax
	movl      %edx, 156(%rbx)
	sete      %cl
	subl      $1, %eax
	testl     %ecx, %ecx
	movl      %eax, 164(%rbx)
	jne       .L00002BC6
.L000029FE:
	cmpl      $258, %eax
	ja        .L00002970
.L00002A09:
	movq      %rbx, %rdi
	call      fill_window
.L00002A11:
	movl      164(%rbx), %eax
	cmpl      $258, %eax
	ja        .L00002970
.L00002A22:
	testl     %ebp, %ebp
	je        .L00001EEC
.L00002A2A:
	testl     %eax, %eax
	je        .L0000258C
.L00002A32:
	cmpl      $2, %eax
	movl      $0, 144(%rbx)
	ja        .L0000297A
.L00002A45:
	movq      80(%rbx), %rsi
	movl      156(%rbx), %ecx
	jmp       .L0000298E
.L00002A54:
	.p2align 4,,10
	.p2align 3
.L00002A58:
	leaq      -1(%rsi,%rcx), %rdx
	movzbl    (%rdx), %r11d
	movzbl    (%rdx), %edi
	cmpb      %r11b, 1(%rdx)
	jne       .L0000298E
.L00002A6E:
	movzbl    2(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L0000298E
.L00002A7C:
	movzbl    3(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L0000298E
.L00002A8A:
	addq      $3, %rdx
	leaq      258(%rsi,%rcx), %r9
	jmp       .L00002B06
.L00002A98:
	.p2align 4
.L00002AA0:
	movzbl    2(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L00003401
.L00002AAE:
	movzbl    3(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L00003425
.L00002ABC:
	movzbl    4(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L0000341C
.L00002ACA:
	movzbl    5(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L00003413
.L00002AD8:
	movzbl    6(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L0000340A
.L00002AE6:
	movzbl    7(%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L000033F8
.L00002AF4:
	addq      $8, %rdx
	movzbl    (%rdx), %r8d
	cmpl      %r8d, %edi
	jne       .L00002B14
.L00002B01:
	cmpq      %r9, %rdx
	jae       .L00002B14
.L00002B06:
	movzbl    1(%rdx), %r8d
	cmpl      %r8d, %edi
	je        .L00002AA0
.L00002B10:
	addq      $1, %rdx
.L00002B14:
	subq      %rdx, %r9
	movl      %r12d, %edx
	subl      %r9d, %edx
	cmpl      %eax, %edx
	movl      %edx, 144(%rbx)
	jbe       .L00002E1B
.L00002B2B:
	movl      %eax, 144(%rbx)
	movl      %eax, %edx
.L00002B33:
	movl      5884(%rbx), %ecx
	movq      5888(%rbx), %rsi
	movl      $1, %r8d
	leal      -3(%rdx), %eax
	movw      %r8w, (%rsi,%rcx,2)
	movq      5872(%rbx), %rsi
	movq      %rcx, %rdx
	addl      $1, %edx
	movl      %edx, 5884(%rbx)
	movb      %al, (%rsi,%rcx)
	movzbl    %al, %eax
	xorl      %ecx, %ecx
	movzbl    _length_code(%rax), %eax
	addw      $1, 1224(%rbx,%rax,4)
	addw      $1, 2488(%r15)
	movl      5880(%rbx), %eax
	movl      144(%rbx), %edx
	movl      $0, 144(%rbx)
	subl      $1, %eax
	cmpl      %eax, 5884(%rbx)
	movl      164(%rbx), %eax
	sete      %cl
	subl      %edx, %eax
	addl      156(%rbx), %edx
	testl     %ecx, %ecx
	movl      %eax, 164(%rbx)
	movl      %edx, 156(%rbx)
	je        .L000029FE
.L00002BC6:
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00002BE0
.L00002BD7:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00002BE0:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00002BEA:
	movq      (%rbx), %r8
	movl      156(%rbx), %eax
	movq      56(%r8), %r13
	movq      %r8, 8(%rsp)
	movq      %rax, 136(%rbx)
	movq      %r13, %rdi
	call      _tr_flush_bits
.L00002C0B:
	movq      8(%rsp), %r8
	movl      40(%r13), %ecx
	movl      32(%r8), %eax
	cmpl      %ecx, %eax
	cmovbe    %eax, %ecx
	testl     %ecx, %ecx
	jne       .L00002CE0
.L00002C25:
	movq      (%rbx), %rax
	movl      32(%rax), %r13d
	testl     %r13d, %r13d
	jne       .L00002961
.L00002C35:
	jmp       .L00001EEC
.L00002C3A:
	.p2align 4,,10
	.p2align 3
.L00002C40:
	subl      %esi, %edx
	addq      16(%rbx), %rsi
	movq      96(%r14), %rdi
	call      crc32
.L00002C4F:
	movq      %rax, 96(%r14)
	jmp       .L00002508
.L00002C58:
	.p2align 4
.L00002C60:
	subl      %edi, %esi
	addq      16(%rbx), %rdi
	movl      %esi, %edx
	movq      %rdi, %rsi
	movq      96(%r14), %rdi
	call      crc32
.L00002C74:
	movq      %rax, 96(%r14)
	jmp       .L00002829
.L00002C7D:
	.p2align 4,,10
	.p2align 3
.L00002C80:
	movl      8(%rdi), %r10d
	testl     %r10d, %r10d
	je        .L00001E22
.L00002C8D:
	movq      z_errmsg+32(%rip), %rax
	movq      %rax, 48(%rdi)
	movl      $-2, %eax
	jmp       .L00001EFB
.L00002CA2:
	.p2align 4,,10
	.p2align 3
.L00002CA8:
	movl      %edi, %esi
	addq      16(%rbx), %rsi
	subl      %edi, %edx
	movq      96(%r14), %rdi
	call      crc32
.L00002CB9:
	movq      %rax, 96(%r14)
	jmp       .L00002409
.L00002CC2:
	.p2align 4,,10
	.p2align 3
.L00002CC8:
	andl      $-3, %eax
.L00002CCB:
	testl     %eax, %eax
	movl      $666, 8(%rbx)
	je        .L00001EEC
.L00002CDA:
	jmp       .L00002179
.L00002CDF:
	.p2align 4,,10
	.p2align 3
.L00002CE0:
	movq      24(%r8), %rdi
	movq      32(%r13), %rsi
	movl      %ecx, %r10d
	movq      %r10, %rdx
	movl      %ecx, 28(%rsp)
	movq      %r8, 16(%rsp)
	movq      %r10, 8(%rsp)
	call      memcpy
.L00002D01:
	movq      16(%rsp), %r8
	movq      8(%rsp), %r10
	movl      28(%rsp), %ecx
	addq      %r10, 24(%r8)
	addq      %r10, 32(%r13)
	addq      %r10, 40(%r8)
	subl      %ecx, 32(%r8)
	subl      %ecx, 40(%r13)
	jne       .L00002C25
.L00002D29:
	movq      16(%r13), %rax
	movq      %rax, 32(%r13)
	jmp       .L00002C25
.L00002D36:
	cmpl      $103, 8(%rbx)
	movl      %edi, %edx
	jne       .L00001E88
.L00002D42:
	.p2align 4,,10
	.p2align 3
.L00002D48:
	movl      $113, 8(%rbx)
	jmp       .L00001E88
.L00002D54:
	movq      48(%rbx), %rax
	jmp       .L000028EF
.L00002D5D:
	movq      48(%rbx), %rax
	jmp       .L000027C6
.L00002D66:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L00002D86
.L00002D7D:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L00002D86:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00002D90:
	movq      (%rbx), %rcx
	movl      156(%rbx), %eax
	movq      56(%rcx), %r15
	movq      %rcx, 8(%rsp)
	movq      %rax, 136(%rbx)
	movq      %r15, %rdi
	call      _tr_flush_bits
.L00002DB1:
	movq      8(%rsp), %rcx
	movl      40(%r15), %r13d
	movl      32(%rcx), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	je        .L00002155
.L00002DCD:
	movq      24(%rcx), %rdi
	movq      32(%r15), %rsi
	movl      %r13d, %r8d
	movq      %r8, %rdx
	movq      %rcx, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      memcpy
.L00002DEA:
	movq      16(%rsp), %rcx
	movq      8(%rsp), %r8
	addq      %r8, 24(%rcx)
	addq      %r8, 32(%r15)
	addq      %r8, 40(%rcx)
	subl      %r13d, 32(%rcx)
	subl      %r13d, 40(%r15)
	jne       .L00002155
.L00002E0E:
	movq      16(%r15), %rax
	movq      %rax, 32(%r15)
	jmp       .L00002155
.L00002E1B:
	cmpl      $2, %edx
	ja        .L00002B33
.L00002E24:
	jmp       .L0000298E
.L00002E29:
	.p2align 4
.L00002E30:
	movl      $-2, %eax
	jmp       .L00001EFB
.L00002E3A:
	movq      24(%r14), %rdi
	movq      32(%r12), %rsi
	movl      %ebp, %r13d
	movq      %r13, %rdx
	call      memcpy
.L00002E4E:
	addq      %r13, 24(%r14)
	addq      %r13, 32(%r12)
	addq      %r13, 40(%r14)
	subl      %ebp, 32(%r14)
	subl      %ebp, 40(%r12)
	jne       .L00002213
.L00002E6A:
	movq      16(%r12), %rax
	movq      %rax, 32(%r12)
	jmp       .L00002213
.L00002E79:
	movl      8(%rbx), %eax
	movl      %esi, %edx
	jmp       .L00001E76
.L00002E83:
	movl      68(%rax), %eax
	testl     %eax, %eax
	je        .L00002D36
.L00002E8E:
	movl      8(%rbx), %eax
	movl      %edi, %edx
	jmp       .L00001E7F
.L00002E98:
	movq      48(%rbx), %rax
	movl      56(%rbx), %ecx
	movl      32(%rax), %esi
	jmp       .L00002490
.L00002EA7:
	movl      $91, 8(%rbx)
	movl      %edi, %edx
	jmp       .L000027C6
.L00002EB5:
	movq      z_errmsg+56(%rip), %rax
	movq      %rax, 48(%rdi)
	movl      $-5, %eax
	jmp       .L00001EFB
.L00002ECA:
	movl      $73, 8(%rbx)
	movl      40(%rbx), %edi
	jmp       .L000024AC
.L00002ED9:
	movq      56(%r14), %rcx
	movq      %rcx, %rdi
	movq      %rcx, 8(%rsp)
	call      _tr_flush_bits
.L00002EEA:
	movq      8(%rsp), %rcx
	movl      32(%r14), %eax
	movl      40(%rcx), %r15d
	cmpl      %r15d, %eax
	cmovbe    %eax, %r15d
	testl     %r15d, %r15d
	jne       .L00003251
.L00002F07:
	movl      40(%rbx), %edx
	leal      2(%rdx), %eax
	cmpq      24(%rbx), %rax
	ja        .L00001E88
.L00002F17:
	jmp       .L00002907
.L00002F1C:
	.p2align 4,,10
	.p2align 3
.L00002F20:
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movq      96(%r14), %rcx
	movb      %cl, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      96(%r14), %rdx
	shrq      $8, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      96(%r14), %rdx
	shrq      $16, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      96(%r14), %rdx
	shrq      $24, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movq      16(%r14), %rcx
	movb      %cl, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      16(%r14), %rdx
	shrq      $8, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      16(%r14), %rdx
	shrq      $16, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      16(%r14), %rdx
	shrq      $24, %rdx
	movb      %dl, (%rcx,%rax)
	jmp       .L000021F1
.L00002FDD:
	movq      24(%r14), %rdi
	movq      32(%r13), %rsi
	movl      %ebp, %r15d
	movq      %r15, %rdx
	call      memcpy
.L00002FF0:
	addq      %r15, 24(%r14)
	addq      %r15, 32(%r13)
	addq      %r15, 40(%r14)
	subl      %ebp, 32(%r14)
	subl      %ebp, 40(%r13)
	jne       .L0000300E
.L00003006:
	movq      16(%r13), %rax
	movq      %rax, 32(%r13)
.L0000300E:
	movl      32(%r14), %eax
	jmp       .L00002639
.L00003017:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      crc32
.L00003022:
	movq      %rax, 96(%r14)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $31, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $-117, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $8, (%rdx,%rax)
	movq      48(%rbx), %rcx
	testq     %rcx, %rcx
	je        .L0000342E
.L00003066:
	movl      (%rcx), %r8d
	movl      40(%rbx), %esi
	movq      16(%rbx), %rdi
	testl     %r8d, %r8d
	setne     %dl
	cmpl      $1, 68(%rcx)
	leal      1(%rsi), %eax
	movl      %eax, 40(%rbx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $2, %eax
	addl      %eax, %edx
	cmpq      $1, 24(%rcx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $4, %eax
	addl      %eax, %edx
	cmpq      $1, 40(%rcx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $8, %eax
	addl      %eax, %edx
	cmpq      $1, 56(%rcx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $16, %eax
	addl      %edx, %eax
	movb      %al, (%rdi,%rsi)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movq      48(%rbx), %rcx
	movq      8(%rcx), %rcx
	movb      %cl, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      48(%rbx), %rdx
	movq      8(%rdx), %rdx
	shrq      $8, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      48(%rbx), %rdx
	movq      8(%rdx), %rdx
	shrq      $16, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      48(%rbx), %rdx
	movq      8(%rdx), %rdx
	shrq      $24, %rdx
	movb      %dl, (%rcx,%rax)
	movl      40(%rbx), %eax
	movl      180(%rbx), %ecx
	leal      1(%rax), %edx
	addq      16(%rbx), %rax
	cmpl      $9, %ecx
	movl      %edx, 40(%rbx)
	movl      $2, %edx
	je        .L00003157
.L0000313F:
	cmpl      $1, 184(%rbx)
	jg        .L000034D7
.L0000314C:
	cmpl      $1, %ecx
	jle       .L000034D7
.L00003155:
	xorl      %edx, %edx
.L00003157:
	movb      %dl, (%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movq      48(%rbx), %rcx
	movl      20(%rcx), %ecx
	movb      %cl, (%rdx,%rax)
	movq      48(%rbx), %rax
	cmpq      $0, 24(%rax)
	je        .L000031AC
.L0000317B:
	movl      40(%rbx), %edx
	movl      32(%rax), %eax
	movq      16(%rbx), %rcx
	leal      1(%rdx), %esi
	movl      %esi, 40(%rbx)
	movb      %al, (%rcx,%rdx)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rcx
	leal      1(%rax), %edx
	movl      %edx, 40(%rbx)
	movq      48(%rbx), %rdx
	movl      32(%rdx), %edx
	shrl      $8, %edx
	movb      %dl, (%rcx,%rax)
	movq      48(%rbx), %rax
.L000031AC:
	movl      68(%rax), %edx
	testl     %edx, %edx
	jne       .L00003389
.L000031B7:
	movl      $0, 56(%rbx)
	movl      $69, 8(%rbx)
	jmp       .L00002395
.L000031CA:
	movl      $1, %eax
	jmp       .L00001EFB
.L000031D4:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L000031F4
.L000031EB:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L000031F4:
	movl      $1, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L00003201:
	movq      (%rbx), %r15
	movl      156(%rbx), %eax
	movq      56(%r15), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L0000321D:
	movl      40(%rbp), %r13d
	movl      32(%r15), %eax
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	testl     %r13d, %r13d
	jne       .L00003351
.L00003235:
	movq      (%rbx), %rax
	movl      32(%rax), %r10d
	movl      $1, %eax
	testl     %r10d, %r10d
	jne       .L00002CCB
.L0000324A:
	xorl      %eax, %eax
	jmp       .L00002CCB
.L00003251:
	movq      32(%rcx), %rsi
	movq      24(%r14), %rdi
	movl      %r15d, %r8d
	movq      %r8, %rdx
	movq      %rcx, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      memcpy
.L0000326E:
	movq      16(%rsp), %rcx
	movq      8(%rsp), %r8
	addq      %r8, 24(%r14)
	addq      %r8, 32(%rcx)
	addq      %r8, 40(%r14)
	subl      %r15d, 32(%r14)
	subl      %r15d, 40(%rcx)
	jne       .L00002F07
.L00003292:
	movq      16(%rcx), %rax
	movq      %rax, 32(%rcx)
	jmp       .L00002F07
.L0000329F:
	movl      156(%rbx), %edx
	movq      136(%rbx), %rax
	xorl      %esi, %esi
	subq      %rax, %rdx
	testq     %rax, %rax
	js        .L000032BF
.L000032B6:
	movl      %eax, %eax
	addq      80(%rbx), %rax
	movq      %rax, %rsi
.L000032BF:
	movl      $1, %ecx
	movq      %rbx, %rdi
	call      _tr_flush_block
.L000032CC:
	movq      (%rbx), %r13
	movl      156(%rbx), %eax
	movq      56(%r13), %rbp
	movq      %rax, 136(%rbx)
	movq      %rbp, %rdi
	call      _tr_flush_bits
.L000032E8:
	movl      40(%rbp), %r15d
	movl      32(%r13), %eax
	cmpl      %r15d, %eax
	cmovbe    %eax, %r15d
	testl     %r15d, %r15d
	je        .L00003235
.L00003300:
	movq      24(%r13), %rdi
	movq      32(%rbp), %rsi
	movl      %r15d, %ecx
	movq      %rcx, %rdx
	movq      %rcx, 8(%rsp)
	call      memcpy
.L00003318:
	movq      8(%rsp), %rcx
	addq      %rcx, 24(%r13)
	addq      %rcx, 32(%rbp)
	addq      %rcx, 40(%r13)
	subl      %r15d, 32(%r13)
	subl      %r15d, 40(%rbp)
	jne       .L00003235
.L00003337:
	movq      16(%rbp), %rax
	movq      %rax, 32(%rbp)
	jmp       .L00003235
.L00003344:
	movq      %rbx, %rdi
	call      _tr_align
.L0000334C:
	jmp       .L00002618
.L00003351:
	movq      24(%r15), %rdi
	movq      32(%rbp), %rsi
	movl      %r13d, %ecx
	movq      %rcx, %rdx
	movq      %rcx, 8(%rsp)
	call      memcpy
.L00003369:
	movq      8(%rsp), %rcx
	addq      %rcx, 24(%r15)
	addq      %rcx, 32(%rbp)
	addq      %rcx, 40(%r15)
	subl      %r13d, 32(%r15)
	subl      %r13d, 40(%rbp)
	je        .L00003337
.L00003384:
	jmp       .L00003235
.L00003389:
	movl      40(%rbx), %edx
	movq      16(%rbx), %rsi
	movq      96(%r14), %rdi
	call      crc32
.L00003399:
	movq      %rax, 96(%r14)
	movq      48(%rbx), %rax
	jmp       .L000031B7
.L000033A6:
	movl      $-2, %eax
	ret       
.L000033AC:
	movq      24(%r15), %rdi
	movq      32(%r13), %rsi
	movl      %ecx, %r8d
	movq      %r8, %rdx
	movl      %ecx, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      memcpy
.L000033C8:
	movq      8(%rsp), %r8
	movl      16(%rsp), %ecx
	addq      %r8, 24(%r15)
	addq      %r8, 32(%r13)
	addq      %r8, 40(%r15)
	subl      %ecx, 32(%r15)
	subl      %ecx, 40(%r13)
	jne       .L00002155
.L000033EB:
	movq      16(%r13), %rax
	movq      %rax, 32(%r13)
	jmp       .L00002155
.L000033F8:
	addq      $7, %rdx
	jmp       .L00002B14
.L00003401:
	addq      $2, %rdx
	jmp       .L00002B14
.L0000340A:
	addq      $6, %rdx
	jmp       .L00002B14
.L00003413:
	addq      $5, %rdx
	jmp       .L00002B14
.L0000341C:
	addq      $4, %rdx
	jmp       .L00002B14
.L00003425:
	addq      $3, %rdx
	jmp       .L00002B14
.L0000342E:
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $0, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $0, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $0, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $0, (%rdx,%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $0, (%rdx,%rax)
	movl      40(%rbx), %eax
	movl      180(%rbx), %ecx
	leal      1(%rax), %edx
	addq      16(%rbx), %rax
	cmpl      $9, %ecx
	movl      %edx, 40(%rbx)
	movl      $2, %edx
	je        .L000034B0
.L000034A0:
	cmpl      $1, 184(%rbx)
	jg        .L000034E1
.L000034A9:
	cmpl      $1, %ecx
	jle       .L000034E1
.L000034AE:
	xorl      %edx, %edx
.L000034B0:
	movb      %dl, (%rax)
	movl      40(%rbx), %eax
	movq      16(%rbx), %rdx
	leal      1(%rax), %ecx
	movl      %ecx, 40(%rbx)
	movb      $3, (%rdx,%rax)
	movl      $113, %eax
	movl      $113, 8(%rbx)
	movl      40(%rbx), %edi
	jmp       .L00001E74
.L000034D7:
	movl      $4, %edx
	jmp       .L00003157
.L000034E1:
	movl      $4, %edx
	jmp       .L000034B0
	.size	deflate, .-deflate
# ----------------------
.L000034E8:
	.p2align 4
# ----------------------
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
	pushq     %rbp
	pushq     %rbx
	movslq    %esi, %rbx
	subq      $24, %rsp
	testq     %rdi, %rdi
	je        .L00003610
.L00003502:
	movq      56(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L00003610
.L0000350F:
	cmpl      $-1, %ebx
	je        .L000035A0
.L00003518:
	cmpl      $9, %ebx
	ja        .L00003610
.L00003521:
	cmpl      $4, %edx
	ja        .L00003610
.L0000352A:
	movslq    180(%rbp), %rax
	movq      %rax, %rcx
	salq      $4, %rax
	cmpl      %edx, 184(%rbp)
	movq      configuration_table+8(%rax), %rax
	je        .L000035B0
.L00003547:
	xorl      %eax, %eax
	cmpq      $0, 16(%rdi)
	jne       .L000035C8
.L00003550:
	cmpl      %ecx, %ebx
	je        .L00003592
.L00003554:
	movl      %ebx, 180(%rbp)
	salq      $4, %rbx
	movzwl    configuration_table+2(%rbx), %esi
	movzwl    configuration_table+6(%rbx), %ecx
	movl      %esi, 176(%rbp)
	movzwl    configuration_table(%rbx), %esi
	movl      %ecx, 172(%rbp)
	movl      %esi, 188(%rbp)
	movzwl    configuration_table+4(%rbx), %esi
	movl      %esi, 192(%rbp)
.L00003592:
	movl      %edx, 184(%rbp)
.L00003598:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L0000359F:
	.p2align 4,,10
	.p2align 3
.L000035A0:
	movl      $6, %ebx
	jmp       .L00003521
.L000035AA:
	.p2align 4,,10
	.p2align 3
.L000035B0:
	movslq    %ebx, %rsi
	salq      $4, %rsi
	cmpq      %rax, configuration_table+8(%rsi)
	jne       .L00003547
.L000035C0:
	xorl      %eax, %eax
	jmp       .L00003550
.L000035C4:
	.p2align 4,,10
	.p2align 3
.L000035C8:
	movl      $5, %esi
	movl      %edx, 12(%rsp)
	call      deflate
.L000035D6:
	cmpl      $-5, %eax
	movl      12(%rsp), %edx
	je        .L000035F0
.L000035DF:
	movl      180(%rbp), %ecx
	jmp       .L00003550
.L000035EA:
	.p2align 4,,10
	.p2align 3
.L000035F0:
	movl      40(%rbp), %ecx
	testl     %ecx, %ecx
	movl      180(%rbp), %ecx
	jne       .L00003550
.L00003601:
	xorl      %eax, %eax
	jmp       .L00003550
.L00003608:
	.p2align 4
.L00003610:
	movl      $-2, %eax
	jmp       .L00003598
	.size	deflateParams, .-deflateParams
# ----------------------
.L0000361A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	testq     %rdi, %rdi
	je        .L000036F0
.L00003629:
	movq      56(%rdi), %rdx
	testq     %rdx, %rdx
	je        .L000036F0
.L00003636:
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movl      8(%rdx), %ebp
	cmpl      $42, %ebp
	je        .L00003670
.L00003644:
	leal      -69(%rbp), %eax
	andl      $-5, %eax
	je        .L00003670
.L0000364C:
	cmpl      $91, %ebp
	je        .L00003670
.L00003651:
	cmpl      $103, %ebp
	setne     %cl
	cmpl      $113, %ebp
	setne     %al
	testb     %al, %cl
	je        .L00003670
.L00003661:
	cmpl      $666, %ebp
	movl      $-2, %eax
	jne       .L000036E1
.L0000366E:
	.p2align 4,,10
	.p2align 3
.L00003670:
	movq      16(%rdx), %rsi
	movq      %rdi, %rbx
	testq     %rsi, %rsi
	je        .L00003687
.L0000367C:
	movq      80(%rdi), %rdi
	call      *72(%rbx)
.L00003683:
	movq      56(%rbx), %rdx
.L00003687:
	movq      104(%rdx), %rsi
	testq     %rsi, %rsi
	je        .L0000369B
.L00003690:
	movq      80(%rbx), %rdi
	call      *72(%rbx)
.L00003697:
	movq      56(%rbx), %rdx
.L0000369B:
	movq      96(%rdx), %rsi
	testq     %rsi, %rsi
	je        .L000036AF
.L000036A4:
	movq      80(%rbx), %rdi
	call      *72(%rbx)
.L000036AB:
	movq      56(%rbx), %rdx
.L000036AF:
	movq      80(%rdx), %rsi
	testq     %rsi, %rsi
	je        .L000036C3
.L000036B8:
	movq      80(%rbx), %rdi
	call      *72(%rbx)
.L000036BF:
	movq      56(%rbx), %rdx
.L000036C3:
	movq      80(%rbx), %rdi
	movq      %rdx, %rsi
	call      *72(%rbx)
.L000036CD:
	xorl      %eax, %eax
	cmpl      $113, %ebp
	movq      $0, 56(%rbx)
	setne     %al
	leal      -3(%rax,%rax,2), %eax
.L000036E1:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000036E8:
	.p2align 4
.L000036F0:
	movl      $-2, %eax
	ret       
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L000036F6:
	.p2align 4
# ----------------------
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $24, %rsp
	movq      80(%rsp), %rax
	testq     %rax, %rax
	je        .L00003B28
.L0000371C:
	cmpb      $49, (%rax)
	jne       .L00003B28
.L00003725:
	cmpl      $112, 88(%rsp)
	jne       .L00003B28
.L00003730:
	testq     %rdi, %rdi
	movq      %rdi, %rbp
	je        .L00003B10
.L0000373C:
	movq      64(%rdi), %rax
	movl      %esi, %r14d
	movl      %ecx, %r12d
	movl      %r8d, %r13d
	movl      %r9d, %r15d
	movq      $0, 48(%rdi)
	testq     %rax, %rax
	je        .L00003AE0
.L0000375D:
	cmpq      $0, 72(%rbp)
	je        .L00003B00
.L00003768:
	cmpl      $-1, %r14d
	movl      $6, %ecx
	cmove     %ecx, %r14d
	testl     %r12d, %r12d
	js        .L00003AB8
.L0000377E:
	cmpl      $15, %r12d
	movl      $1, %ecx
	jg        .L00003A80
.L0000378D:
	leal      -1(%r13), %esi
	cmpl      $8, %esi
	ja        .L00003B10
.L0000379A:
	cmpl      $8, %edx
	jne       .L00003B10
.L000037A3:
	leal      -8(%r12), %edx
	cmpl      $7, %edx
	ja        .L00003B10
.L000037B1:
	cmpl      $4, %r15d
	ja        .L00003B10
.L000037BB:
	cmpl      $9, %r14d
	ja        .L00003B10
.L000037C5:
	cmpl      $8, %r12d
	movl      %r12d, %r8d
	je        .L00003AC8
.L000037D2:
	movl      %r8d, 12(%rsp)
	movl      %ecx, 8(%rsp)
	movl      $5936, %edx
	movq      80(%rbp), %rdi
	movl      $1, %esi
	call      *%rax
.L000037EB:
	testq     %rax, %rax
	movq      %rax, %rbx
	je        .L00003B68
.L000037F7:
	movl      12(%rsp), %r8d
	movl      8(%rsp), %ecx
	movl      $-1431655765, %edx
	movq      %rax, 56(%rbp)
	movq      %rbp, (%rax)
	movq      $0, 48(%rax)
	movq      80(%rbp), %rdi
	movl      %r8d, 72(%rax)
	movl      $1, %r8d
	movl      %ecx, 44(%rax)
	movl      %r8d, %esi
	movl      %r12d, %ecx
	movl      %r8d, 8(%rsp)
	sall      %cl, %esi
	leal      7(%r13), %ecx
	movl      %esi, 68(%rax)
	leal      -1(%rsi), %eax
	movl      %ecx, 120(%rbx)
	movl      %eax, 76(%rbx)
	movl      %r8d, %eax
	sall      %cl, %eax
	movl      %eax, 116(%rbx)
	subl      $1, %eax
	movl      %eax, 124(%rbx)
	leal      9(%r13), %eax
	mull      %edx
	shrl      $1, %edx
	movl      %edx, 128(%rbx)
	movl      $2, %edx
	call      *64(%rbp)
.L00003866:
	movl      68(%rbx), %esi
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movq      %rax, 80(%rbx)
	call      *64(%rbp)
.L00003879:
	movl      116(%rbx), %esi
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movq      %rax, 96(%rbx)
	call      *64(%rbp)
.L0000388C:
	movl      8(%rsp), %r8d
	leal      6(%r13), %ecx
	movl      $4, %edx
	movq      %rax, 104(%rbx)
	movq      $0, 5928(%rbx)
	movq      80(%rbp), %rdi
	movl      %r8d, %esi
	sall      %cl, %esi
	movl      %esi, 5880(%rbx)
	call      *64(%rbp)
.L000038BB:
	movl      5880(%rbx), %ecx
	cmpq      $0, 80(%rbx)
	movq      %rax, 16(%rbx)
	leaq      0(,%rcx,4), %rsi
	movq      %rcx, %rdx
	movq      %rsi, 24(%rbx)
	je        .L00003B40
.L000038DF:
	cmpq      $0, 96(%rbx)
	je        .L00003B40
.L000038EA:
	testq     %rax, %rax
	je        .L00003B40
.L000038F3:
	cmpq      $0, 104(%rbx)
	je        .L00003B40
.L000038FE:
	shrl      $1, %edx
	movl      %r14d, 180(%rbx)
	movl      %r15d, 184(%rbx)
	leaq      (%rax,%rdx,2), %rdx
	movb      $8, 60(%rbx)
	movq      %rdx, 5888(%rbx)
	leaq      (%rcx,%rcx,2), %rdx
	addq      %rdx, %rax
	movq      %rax, 5872(%rbx)
	movq      56(%rbp), %rbx
	testq     %rbx, %rbx
	je        .L00003B10
.L00003938:
	cmpq      $0, 64(%rbp)
	je        .L00003B10
.L00003943:
	cmpq      $0, 72(%rbp)
	je        .L00003B10
.L0000394E:
	movq      16(%rbx), %rax
	movq      $0, 40(%rbp)
	movq      $0, 16(%rbp)
	movq      $0, 48(%rbp)
	movl      $2, 88(%rbp)
	movl      $0, 40(%rbx)
	movq      %rax, 32(%rbx)
	movl      44(%rbx), %eax
	testl     %eax, %eax
	js        .L00003A90
.L00003987:
	jne       .L00003A95
.L0000398D:
	movl      $113, 8(%rbx)
.L00003994:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      adler32
.L0000399F:
	movq      %rax, 96(%rbp)
	movq      %rbx, %rdi
	movl      $0, 64(%rbx)
	call      _tr_init
.L000039B2:
	movq      56(%rbp), %rbx
	xorl      %ecx, %ecx
	xorl      %esi, %esi
	movl      68(%rbx), %eax
	movq      104(%rbx), %rdi
	addq      %rax, %rax
	movq      %rax, 88(%rbx)
	movl      116(%rbx), %eax
	subl      $1, %eax
	leaq      (%rax,%rax), %rdx
	movw      %cx, (%rdi,%rax,2)
	call      memset
.L000039DB:
	movslq    180(%rbx), %rax
	movl      $0, 156(%rbx)
	movq      $0, 136(%rbx)
	movl      $0, 164(%rbx)
	movl      $0, 5916(%rbx)
	movl      $2, 168(%rbx)
	movl      $2, 144(%rbx)
	movl      $0, 152(%rbx)
	salq      $4, %rax
	movl      $0, 112(%rbx)
	leaq      configuration_table(%rax), %rdx
	movzwl    configuration_table+2(%rax), %ecx
	movzwl    configuration_table(%rax), %eax
	movl      %eax, 188(%rbx)
	movzwl    4(%rdx), %eax
	movl      %ecx, 176(%rbx)
	movl      %eax, 192(%rbx)
	movzwl    6(%rdx), %eax
	movl      %eax, 172(%rbx)
	xorl      %eax, %eax
.L00003A6B:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003A7A:
	.p2align 4,,10
	.p2align 3
.L00003A80:
	subl      $16, %r12d
	movb      $2, %cl
	jmp       .L0000378D
.L00003A8B:
	.p2align 4,,10
	.p2align 3
.L00003A90:
	negl      %eax
	movl      %eax, 44(%rbx)
.L00003A95:
	cmpl      $2, %eax
	movl      $42, 8(%rbx)
	jne       .L00003994
.L00003AA5:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      crc32
.L00003AB0:
	jmp       .L0000399F
.L00003AB5:
	.p2align 4,,10
	.p2align 3
.L00003AB8:
	negl      %r12d
	xorb      %cl, %cl
	jmp       .L0000378D
.L00003AC2:
	.p2align 4,,10
	.p2align 3
.L00003AC8:
	movl      $9, %r8d
	movb      $9, %r12b
	jmp       .L000037D2
.L00003AD6:
	.p2align 4
.L00003AE0:
	cmpq      $0, 72(%rbp)
	movq      $zcalloc, 64(%rdi)
	movl      $zcalloc, %eax
	movq      $0, 80(%rdi)
	jne       .L00003768
.L00003B00:
	movq      $zcfree, 72(%rbp)
	jmp       .L00003768
.L00003B0D:
	.p2align 4,,10
	.p2align 3
.L00003B10:
	addq      $24, %rsp
	movl      $-2, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003B24:
	.p2align 4,,10
	.p2align 3
.L00003B28:
	addq      $24, %rsp
	movl      $-6, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003B3C:
	.p2align 4,,10
	.p2align 3
.L00003B40:
	movq      z_errmsg+48(%rip), %rax
	movl      $666, 8(%rbx)
	movq      %rbp, %rdi
	movq      %rax, 48(%rbp)
	call      deflateEnd
.L00003B5A:
	movl      $-4, %eax
	jmp       .L00003A6B
.L00003B64:
	.p2align 4,,10
	.p2align 3
.L00003B68:
	movl      $-4, %eax
	jmp       .L00003A6B
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L00003B72:
	.p2align 4
# ----------------------
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	testq     %rdx, %rdx
	je        .L00003ED0
.L00003B89:
	cmpb      $49, (%rdx)
	jne       .L00003ED0
.L00003B92:
	cmpl      $112, %ecx
	jne       .L00003ED0
.L00003B9B:
	testq     %rdi, %rdi
	pushq     %r12
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	je        .L00003EE0
.L00003BAB:
	movq      64(%rdi), %rax
	movl      %esi, %r12d
	movq      $0, 48(%rdi)
	testq     %rax, %rax
	je        .L00003EA0
.L00003BC3:
	cmpq      $0, 72(%rbp)
	je        .L00003EC0
.L00003BCE:
	cmpl      $-1, %r12d
	je        .L00003E90
.L00003BD8:
	cmpl      $9, %r12d
	ja        .L00003EE0
.L00003BE2:
	movq      80(%rbp), %rdi
	movl      $5936, %edx
	movl      $1, %esi
	call      *%rax
.L00003BF2:
	testq     %rax, %rax
	movq      %rax, %rbx
	je        .L00003F18
.L00003BFE:
	movq      %rax, 56(%rbp)
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movl      $32768, %esi
	movq      %rbp, (%rax)
	movl      $1, 44(%rax)
	movq      $0, 48(%rax)
	movl      $15, 72(%rax)
	movl      $32768, 68(%rax)
	movl      $32767, 76(%rax)
	movl      $15, 120(%rax)
	movl      $32768, 116(%rax)
	movl      $32767, 124(%rax)
	movl      $5, 128(%rax)
	call      *64(%rbp)
.L00003C59:
	movl      68(%rbx), %esi
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movq      %rax, 80(%rbx)
	call      *64(%rbp)
.L00003C6C:
	movl      116(%rbx), %esi
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movq      %rax, 96(%rbx)
	call      *64(%rbp)
.L00003C7F:
	movl      $4, %edx
	movl      $16384, %esi
	movq      %rax, 104(%rbx)
	movq      $0, 5928(%rbx)
	movl      $16384, 5880(%rbx)
	movq      80(%rbp), %rdi
	call      *64(%rbp)
.L00003CA9:
	movl      5880(%rbx), %ecx
	cmpq      $0, 80(%rbx)
	movq      %rax, 16(%rbx)
	leaq      0(,%rcx,4), %rsi
	movq      %rcx, %rdx
	movq      %rsi, 24(%rbx)
	je        .L00003EF0
.L00003CCD:
	cmpq      $0, 96(%rbx)
	je        .L00003EF0
.L00003CD8:
	testq     %rax, %rax
	je        .L00003EF0
.L00003CE1:
	cmpq      $0, 104(%rbx)
	je        .L00003EF0
.L00003CEC:
	shrl      $1, %edx
	movl      %r12d, 180(%rbx)
	movl      $0, 184(%rbx)
	leaq      (%rax,%rdx,2), %rdx
	movb      $8, 60(%rbx)
	movq      %rdx, 5888(%rbx)
	leaq      (%rcx,%rcx,2), %rdx
	addq      %rdx, %rax
	movq      %rax, 5872(%rbx)
	movq      56(%rbp), %rbx
	testq     %rbx, %rbx
	je        .L00003EE0
.L00003D29:
	cmpq      $0, 64(%rbp)
	je        .L00003EE0
.L00003D34:
	cmpq      $0, 72(%rbp)
	je        .L00003EE0
.L00003D3F:
	movq      16(%rbx), %rax
	movq      $0, 40(%rbp)
	movq      $0, 16(%rbp)
	movq      $0, 48(%rbp)
	movl      $2, 88(%rbp)
	movl      $0, 40(%rbx)
	movq      %rax, 32(%rbx)
	movl      44(%rbx), %eax
	testl     %eax, %eax
	js        .L00003E68
.L00003D78:
	jne       .L00003E6D
.L00003D7E:
	movl      $113, 8(%rbx)
.L00003D85:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      adler32
.L00003D90:
	movq      %rax, 96(%rbp)
	movq      %rbx, %rdi
	movl      $0, 64(%rbx)
	call      _tr_init
.L00003DA3:
	movq      56(%rbp), %rbx
	xorl      %ecx, %ecx
	xorl      %esi, %esi
	movl      68(%rbx), %eax
	movq      104(%rbx), %rdi
	addq      %rax, %rax
	movq      %rax, 88(%rbx)
	movl      116(%rbx), %eax
	subl      $1, %eax
	leaq      (%rax,%rax), %rdx
	movw      %cx, (%rdi,%rax,2)
	call      memset
.L00003DCC:
	movslq    180(%rbx), %rax
	movl      $0, 156(%rbx)
	movq      $0, 136(%rbx)
	movl      $0, 164(%rbx)
	movl      $0, 5916(%rbx)
	movl      $2, 168(%rbx)
	movl      $2, 144(%rbx)
	movl      $0, 152(%rbx)
	salq      $4, %rax
	movl      $0, 112(%rbx)
	leaq      configuration_table(%rax), %rdx
	movzwl    configuration_table+2(%rax), %ecx
	movzwl    configuration_table(%rax), %eax
	movl      %eax, 188(%rbx)
	movzwl    4(%rdx), %eax
	movl      %ecx, 176(%rbx)
	movl      %eax, 192(%rbx)
	movzwl    6(%rdx), %eax
	movl      %eax, 172(%rbx)
	xorl      %eax, %eax
.L00003E5C:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00003E61:
	.p2align 4,,10
	.p2align 3
.L00003E68:
	negl      %eax
	movl      %eax, 44(%rbx)
.L00003E6D:
	cmpl      $2, %eax
	movl      $42, 8(%rbx)
	jne       .L00003D85
.L00003E7D:
	xorl      %edx, %edx
	xorl      %esi, %esi
	xorl      %edi, %edi
	call      crc32
.L00003E88:
	jmp       .L00003D90
.L00003E8D:
	.p2align 4,,10
	.p2align 3
.L00003E90:
	movl      $6, %r12d
	jmp       .L00003BE2
.L00003E9B:
	.p2align 4,,10
	.p2align 3
.L00003EA0:
	cmpq      $0, 72(%rbp)
	movq      $zcalloc, 64(%rdi)
	movl      $zcalloc, %eax
	movq      $0, 80(%rdi)
	jne       .L00003BCE
.L00003EC0:
	movq      $zcfree, 72(%rbp)
	jmp       .L00003BCE
.L00003ECD:
	.p2align 4,,10
	.p2align 3
.L00003ED0:
	movl      $-6, %eax
	ret       
.L00003ED6:
	.p2align 4
.L00003EE0:
	movl      $-2, %eax
	jmp       .L00003E5C
.L00003EEA:
	.p2align 4,,10
	.p2align 3
.L00003EF0:
	movq      z_errmsg+48(%rip), %rax
	movl      $666, 8(%rbx)
	movq      %rbp, %rdi
	movq      %rax, 48(%rbp)
	call      deflateEnd
.L00003F0A:
	movl      $-4, %eax
	jmp       .L00003E5C
.L00003F14:
	.p2align 4,,10
	.p2align 3
.L00003F18:
	movl      $-4, %eax
	jmp       .L00003E5C
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L00003F22:
	.p2align 4
# ----------------------
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
	testq     %rsi, %rsi
	je        .L00004160
.L00003F39:
	testq     %rdi, %rdi
	je        .L00004160
.L00003F42:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      56(%rsi), %r12
	testq     %r12, %r12
	je        .L00004180
.L00003F59:
	movq      (%rsi), %rax
	movq      %rdi, %rbp
	movq      %rax, (%rdi)
	movq      8(%rsi), %rax
	movq      %rax, 8(%rdi)
	movq      16(%rsi), %rax
	movq      %rax, 16(%rdi)
	movq      24(%rsi), %rax
	movq      %rax, 24(%rdi)
	movq      32(%rsi), %rax
	movq      %rax, 32(%rdi)
	movq      40(%rsi), %rax
	movq      %rax, 40(%rdi)
	movq      48(%rsi), %rax
	movq      %rax, 48(%rdi)
	movq      56(%rsi), %rax
	movq      %rax, 56(%rdi)
	movq      64(%rsi), %rax
	movq      %rax, 64(%rdi)
	movq      72(%rsi), %rdx
	movq      %rdx, 72(%rdi)
	movq      80(%rsi), %rdi
	movq      %rdi, 80(%rbp)
	movq      88(%rsi), %rdx
	movq      %rdx, 88(%rbp)
	movq      96(%rsi), %rdx
	movq      %rdx, 96(%rbp)
	movq      104(%rsi), %rdx
	movl      $1, %esi
	movq      %rdx, 104(%rbp)
	movl      $5936, %edx
	call      *%rax
.L00003FD6:
	testq     %rax, %rax
	movq      %rax, %rbx
	je        .L00004190
.L00003FE2:
	movq      %rax, 56(%rbp)
	movq      (%r12), %rax
	leaq      8(%rbx), %rdi
	movq      %rbx, %rcx
	movq      %r12, %rsi
	movl      $2, %edx
	andq      $-8, %rdi
	movq      %rax, (%rbx)
	movq      5928(%r12), %rax
	subq      %rdi, %rcx
	subq      %rcx, %rsi
	addl      $5936, %ecx
	shrl      $3, %ecx
	movq      %rax, 5928(%rbx)
	rep movsq     
	movq      %rbp, (%rbx)
	movl      68(%rbx), %esi
	movq      80(%rbp), %rdi
	call      *64(%rbp)
.L0000402E:
	movl      68(%rbx), %esi
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movq      %rax, 80(%rbx)
	call      *64(%rbp)
.L00004041:
	movl      116(%rbx), %esi
	movq      80(%rbp), %rdi
	movl      $2, %edx
	movq      %rax, 96(%rbx)
	call      *64(%rbp)
.L00004054:
	movq      80(%rbp), %rdi
	movq      %rax, 104(%rbx)
	movl      $4, %edx
	movl      5880(%rbx), %esi
	call      *64(%rbp)
.L0000406A:
	movq      80(%rbx), %rdi
	movq      %rax, %r13
	movq      %rax, 16(%rbx)
	testq     %rdi, %rdi
	je        .L00004170
.L0000407E:
	cmpq      $0, 96(%rbx)
	je        .L00004170
.L00004089:
	testq     %rax, %rax
	je        .L00004170
.L00004092:
	cmpq      $0, 104(%rbx)
	je        .L00004170
.L0000409D:
	movl      68(%rbx), %eax
	movq      80(%r12), %rsi
	leal      (%rax,%rax), %edx
	call      memcpy
.L000040AD:
	movl      68(%rbx), %edx
	movq      96(%rbx), %rdi
	movq      96(%r12), %rsi
	addq      %rdx, %rdx
	call      memcpy
.L000040C1:
	movl      116(%rbx), %edx
	movq      104(%rbx), %rdi
	movq      104(%r12), %rsi
	addq      %rdx, %rdx
	call      memcpy
.L000040D5:
	movl      24(%rbx), %edx
	movq      16(%r12), %rsi
	movq      16(%rbx), %rdi
	call      memcpy
.L000040E6:
	movq      16(%rbx), %rsi
	movq      %rsi, %rdx
	addq      32(%r12), %rdx
	subq      16(%r12), %rdx
	movq      %rdx, 32(%rbx)
	movl      5880(%rbx), %edx
	movl      %edx, %ecx
	shrl      $1, %ecx
	leaq      (%r13,%rcx,2), %rax
	movq      %rax, 5888(%rbx)
	movl      %edx, %eax
	leaq      (%rax,%rax,2), %rax
	addq      %rsi, %rax
	movq      %rax, 5872(%rbx)
	leaq      196(%rbx), %rax
	movq      %rax, 2888(%rbx)
	leaq      2488(%rbx), %rax
	movq      %rax, 2912(%rbx)
	leaq      2732(%rbx), %rax
	movq      %rax, 2936(%rbx)
	xorl      %eax, %eax
.L0000414D:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00004158:
	.p2align 4
.L00004160:
	movl      $-2, %eax
	ret       
.L00004166:
	.p2align 4
.L00004170:
	movq      %rbp, %rdi
	call      deflateEnd
.L00004178:
	movl      $-4, %eax
	jmp       .L0000414D
.L0000417F:
	.p2align 4,,10
	.p2align 3
.L00004180:
	movl      $-2, %eax
	jmp       .L0000414D
.L00004187:
	.p2align 4
.L00004190:
	movl      $-4, %eax
	jmp       .L0000414D
	.size	deflateCopy, .-deflateCopy
# ----------------------
	.hidden	_length_code
	.hidden	_dist_code
	.hidden	_tr_flush_block
	.hidden	_tr_flush_bits
	.hidden	_tr_init
	.hidden	_tr_stored_block
	.hidden	_tr_align
	.hidden	zcalloc
	.hidden	zcfree
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
