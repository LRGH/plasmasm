	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_jinit_upsampler
_jinit_upsampler:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      %rdi, %r12
	movq      8(%r12), %rcx
	movl      $1, %esi
	movl      $272, %edx
	xorl      %eax, %eax
	call      *(%rcx)
L00000024:
	movq      %rax, %r14
	movq      %r14, 664(%r12)
	leaq      _start_pass_upsample(%rip), %rax
	movq      %rax, (%r14)
	leaq      _sep_upsample(%rip), %rax
	movq      %rax, 8(%r14)
	movl      $0, 16(%r14)
	cmpl      $0, 448(%r12)
	je        L00000069
L00000057:
	movq      (%r12), %rcx
	movl      $25, 40(%rcx)
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      *(%rcx)
L00000069:
	cmpl      $0, 100(%r12)
	je        L00000082
L00000071:
	cmpl      $1, 472(%r12)
	setg      %al
	movl      %eax, -44(%rbp)
	jmp       L00000089
L00000082:
	movl      $0, -44(%rbp)
L00000089:
	cmpl      $0, 56(%r12)
	jle       L00000252
L00000095:
	movq      304(%r12), %rbx
	addq      $48, %rbx
	xorl      %r13d, %r13d
	jmp       L000000E0
L000000A6:
	leaq      _int_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	movl      %edi, %eax
	cltd      
	idivl     %ecx
	movw      %ax, 232(%r14,%r13,2)
	movl      %r8d, %eax
	cltd      
	idivl     %esi
	movw      %ax, 252(%r14,%r13,2)
	jmp       L00000200
L000000D4:
	.align 4, 0x90
L000000E0:
	movl      -12(%rbx), %esi
	movl      -40(%rbx), %eax
	imull     %esi, %eax
	movl      472(%r12), %edi
	cltd      
	idivl     %edi
	movl      %eax, %ecx
	imull     -36(%rbx), %esi
	movl      %esi, %eax
	cltd      
	idivl     %edi
	movl      %eax, %esi
	movl      464(%r12), %edi
	movl      468(%r12), %r8d
	movl      %esi, 192(%r14,%r13,4)
	cmpl      $0, (%rbx)
	je        L00000140
L0000011E:
	cmpl      %edi, %ecx
	jne       L00000160
L00000122:
	cmpl      %r8d, %esi
	jne       L00000160
L00000127:
	leaq      _fullsize_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	jmp       L0000023D
L00000138:
	.align 4, 0x90
L00000140:
	leaq      _noop_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	jmp       L0000023D
L00000151:
	.align 4, 0x90
L00000160:
	leal      (%rcx,%rcx), %eax
	cmpl      %edi, %eax
	jne       L00000187
L00000167:
	cmpl      %r8d, %esi
	jne       L00000187
L0000016C:
	movl      -44(%rbp), %eax
	testb     %al, %al
	je        L000001B6
L00000173:
	cmpl      $3, -8(%rbx)
	jb        L000001B6
L00000179:
	leaq      _h2v1_fancy_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	jmp       L00000200
L00000187:
	cmpl      %edi, %eax
	jne       L000001C4
L0000018B:
	leal      (%rsi,%rsi), %eax
	cmpl      %r8d, %eax
	jne       L000001C4
L00000193:
	movl      -44(%rbp), %eax
	testb     %al, %al
	je        L000001EF
L0000019A:
	cmpl      $3, -8(%rbx)
	jb        L000001EF
L000001A0:
	leaq      _h2v2_fancy_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	movl      $1, 16(%r14)
	jmp       L00000200
L000001B6:
	leaq      _h2v1_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	jmp       L00000200
L000001C4:
	movl      %edi, %eax
	cltd      
	idivl     %ecx
	testl     %edx, %edx
	jne       L000001DB
L000001CD:
	movl      %r8d, %eax
	cltd      
	idivl     %esi
	testl     %edx, %edx
	je        L000000A6
L000001DB:
	movq      (%r12), %rcx
	movl      $38, 40(%rcx)
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      *(%rcx)
L000001ED:
	jmp       L00000200
L000001EF:
	leaq      _h2v2_upsample(%rip), %rax
	movq      %rax, 104(%r14,%r13,8)
	.align 4, 0x90
L00000200:
	movq      8(%r12), %rax
	movq      16(%rax), %r15
	movl      136(%r12), %edi
	movslq    464(%r12), %rsi
	xorl      %eax, %eax
	call      _jround_up
L00000220:
	movq      %rax, %rdx
	movl      468(%r12), %ecx
	movl      $1, %esi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      *%r15
L00000238:
	movq      %rax, 24(%r14,%r13,8)
L0000023D:
	incq      %r13
	movslq    56(%r12), %rax
	addq      $96, %rbx
	cmpq      %rax, %r13
	jl        L000000E0
L00000252:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00000261:
	.align 4, 0x90
# ----------------------
_start_pass_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      664(%rdi), %rax
	movl      468(%rdi), %ecx
	movl      %ecx, 184(%rax)
	movl      140(%rdi), %ecx
	movl      %ecx, 188(%rax)
	popq      %rbp
	ret       
L00000295:
	.align 4, 0x90
# ----------------------
_sep_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movq      %r9, %r15
	movq      %rdx, %r14
	movq      %rdi, %rbx
	movq      %rbx, -48(%rbp)
	movl      16(%rbp), %r13d
	movq      664(%rbx), %r12
	movl      184(%r12), %edx
	movl      468(%rbx), %eax
	cmpl      %eax, %edx
	jl        L00000369
L000002DF:
	cmpl      $0, 56(%rbx)
	jle       L0000035B
L000002E5:
	movq      %r8, -72(%rbp)
	movq      %r15, -64(%rbp)
	movq      304(%rbx), %r15
	movq      %r14, -56(%rbp)
	leaq      24(%r12), %r14
	xorl      %r13d, %r13d
L00000300:
	movq      (%rsi,%r13,8), %rax
	movl      192(%r12,%r13,4), %ecx
	movq      -56(%rbp), %rdx
	imull     (%rdx), %ecx
	leaq      (%rax,%rcx,8), %rdx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rsi, %rbx
	movq      %r15, %rsi
	movq      %r14, %rcx
	call      *104(%r12,%r13,8)
L0000032A:
	movq      %rbx, %rsi
	movq      -48(%rbp), %rbx
	incq      %r13
	addq      $96, %r15
	movslq    56(%rbx), %rax
	addq      $8, %r14
	cmpq      %rax, %r13
	jl        L00000300
L00000345:
	movl      468(%rbx), %eax
	movq      -56(%rbp), %r14
	movq      -64(%rbp), %r15
	movl      16(%rbp), %r13d
	movq      -72(%rbp), %r8
L0000035B:
	movl      $0, 184(%r12)
	xorl      %edx, %edx
L00000369:
	subl      %edx, %eax
	movl      188(%r12), %ecx
	cmpl      %ecx, %eax
	cmova     %ecx, %eax
	movl      (%r15), %ecx
	subl      %ecx, %r13d
	cmpl      %r13d, %eax
	cmovbe    %eax, %r13d
	movq      672(%rbx), %r9
	leaq      24(%r12), %rsi
	leaq      (%r8,%rcx,8), %rcx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movl      %r13d, %r8d
	call      *8(%r9)
L000003A1:
	addl      %r13d, (%r15)
	subl      %r13d, 188(%r12)
	addl      184(%r12), %r13d
	movl      %r13d, 184(%r12)
	cmpl      468(%rbx), %r13d
	jl        L000003C8
L000003C5:
	incl      (%r14)
L000003C8:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000003D7:
	.align 4, 0x90
# ----------------------
_noop_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      $0, (%rcx)
	popq      %rbp
	ret       
L000003ED:
	.align 4, 0x90
# ----------------------
_fullsize_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	movq      %rdx, (%rcx)
	popq      %rbp
	ret       
L000003F9:
	.align 4, 0x90
# ----------------------
_h2v1_fancy_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	cmpl      $0, 468(%rdi)
	jle       L000004E1
L00000418:
	movq      (%rcx), %r8
	xorl      %r9d, %r9d
	.align 4, 0x90
L00000420:
	movq      (%rdx,%r9,8), %rax
	movq      (%r8,%r9,8), %r11
	leaq      1(%rax), %r10
	movzbl    (%rax), %ecx
	movb      %cl, (%r11)
	leal      (%rcx,%rcx,2), %ecx
	movzbl    1(%rax), %ebx
	leal      2(%rbx,%rcx), %ecx
	shrl      $2, %ecx
	movb      %cl, 1(%r11)
	movl      40(%rsi), %r14d
	leaq      2(%r11), %rbx
	cmpl      $2, %r14d
	je        L000004B0
L00000452:
	movl      $2, %ecx
	subl      %r14d, %ecx
	.align 4, 0x90
L00000460:
	movq      %r10, %r15
	movq      %rbx, %r14
	movzbl    (%r15), %ebx
	leal      (%rbx,%rbx,2), %r12d
	movzbl    (%rax), %ebx
	leal      1(%rbx,%r12), %ebx
	shrl      $2, %ebx
	movb      %bl, (%r14)
	movzbl    2(%rax), %ebx
	leaq      2(%rax), %r10
	leal      2(%rbx,%r12), %eax
	shrl      $2, %eax
	movb      %al, 3(%r11)
	movq      %r11, %rbx
	addq      $4, %rbx
	incl      %ecx
	movq      %r14, %r11
	movq      %r15, %rax
	jne       L00000460
L000004A1:
	jmp       L000004B3
L000004A3:
	.align 4, 0x90
L000004B0:
	movq      %r11, %r14
L000004B3:
	movzbl    (%r10), %eax
	leal      (%rax,%rax,2), %r11d
	movzbl    -1(%r10), %ecx
	leal      1(%rcx,%r11), %ecx
	shrl      $2, %ecx
	movb      %cl, (%rbx)
	movb      %al, 3(%r14)
	incq      %r9
	movslq    468(%rdi), %rax
	cmpq      %rax, %r9
	jl        L00000420
L000004E1:
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000004EA:
	.align 4, 0x90
# ----------------------
_h2v1_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      468(%rdi), %esi
	testl     %esi, %esi
	jle       L00000554
L000004FE:
	movq      (%rcx), %r8
	xorl      %r9d, %r9d
	.align 4, 0x90
L00000510:
	movl      136(%rdi), %r10d
	testq     %r10, %r10
	je        L00000549
L0000051C:
	movq      (%r8,%r9,8), %rsi
	addq      %rsi, %r10
	movq      (%rdx,%r9,8), %rcx
	.align 4, 0x90
L00000530:
	movb      (%rcx), %al
	incq      %rcx
	movb      %al, (%rsi)
	movb      %al, 1(%rsi)
	addq      $2, %rsi
	cmpq      %r10, %rsi
	jb        L00000530
L00000543:
	movl      468(%rdi), %esi
L00000549:
	incq      %r9
	movslq    %esi, %rax
	cmpq      %rax, %r9
	jl        L00000510
L00000554:
	popq      %rbp
	ret       
L00000556:
	.align 4, 0x90
# ----------------------
_h2v2_fancy_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	movq      %rdx, -56(%rbp)
	movq      %rdi, -64(%rbp)
	cmpl      $0, 468(%rdi)
	jle       L00000771
L00000582:
	movq      (%rcx), %rax
	movq      %rax, -48(%rbp)
	xorl      %r9d, %r9d
	xorl      %r10d, %r10d
	.align 4, 0x90
L00000590:
	movslq    %r10d, %r10
	movq      (%rdx,%r9,8), %r11
	movq      -8(%rdx,%r9,8), %r13
	movq      -48(%rbp), %rax
	movq      (%rax,%r10,8), %r15
	movzbl    (%r11), %eax
	leal      (%rax,%rax,2), %eax
	movzbl    (%r13), %r14d
	addl      %eax, %r14d
	movzbl    1(%r11), %eax
	leal      (%rax,%rax,2), %eax
	movzbl    1(%r13), %ecx
	addl      %eax, %ecx
	leal      8(,%r14,4), %eax
	shrl      $4, %eax
	movb      %al, (%r15)
	leal      (%r14,%r14,2), %eax
	leal      7(%rax,%rcx), %eax
	shrl      $4, %eax
	movb      %al, 1(%r15)
	movl      40(%rsi), %ebx
	leaq      2(%r15), %rdi
	cmpl      $2, %ebx
	je        L00000650
L000005EB:
	addq      $2, %r13
	addq      $2, %r11
	movl      $2, %eax
	subl      %ebx, %eax
	.align 4, 0x90
L00000600:
	movl      %ecx, %r8d
	movq      %rdi, %r12
	movzbl    (%r11), %ecx
	incq      %r11
	leal      (%rcx,%rcx,2), %edi
	movzbl    (%r13), %ecx
	incq      %r13
	addl      %edi, %ecx
	leal      (%r8,%r8,2), %edi
	leal      8(%r14,%rdi), %ebx
	shrl      $4, %ebx
	movb      %bl, (%r12)
	leal      7(%rdi,%rcx), %edi
	shrl      $4, %edi
	movb      %dil, 3(%r15)
	movq      %r15, %rdi
	addq      $4, %rdi
	incl      %eax
	movq      %r12, %r15
	movl      %r8d, %r14d
	jne       L00000600
L00000646:
	jmp       L00000656
L00000648:
	.align 4, 0x90
L00000650:
	movl      %r14d, %r8d
	movq      %r15, %r12
L00000656:
	leal      (%rcx,%rcx,2), %eax
	leal      8(%r8,%rax), %eax
	shrl      $4, %eax
	movb      %al, (%rdi)
	leal      7(,%rcx,4), %eax
	shrl      $4, %eax
	movb      %al, 3(%r12)
	movq      (%rdx,%r9,8), %r11
	movq      8(%rdx,%r9,8), %rax
	movq      -48(%rbp), %rcx
	movq      8(%rcx,%r10,8), %r15
	movzbl    (%r11), %ecx
	leal      (%rcx,%rcx,2), %ecx
	movzbl    (%rax), %r14d
	addl      %ecx, %r14d
	movzbl    1(%r11), %ecx
	leal      (%rcx,%rcx,2), %edx
	movzbl    1(%rax), %ecx
	addl      %edx, %ecx
	leal      8(,%r14,4), %edx
	shrl      $4, %edx
	movb      %dl, (%r15)
	leal      (%r14,%r14,2), %edx
	leal      7(%rdx,%rcx), %edx
	shrl      $4, %edx
	movb      %dl, 1(%r15)
	movl      40(%rsi), %edi
	leaq      2(%r15), %rbx
	movq      %rsi, %rdx
	cmpl      $2, %edi
	je        L00000730
L000006CC:
	addq      $2, %rax
	addq      $2, %r11
	movl      $2, %r8d
	subl      %edi, %r8d
	.align 4, 0x90
L000006E0:
	movl      %ecx, %r13d
	movq      %rbx, %r12
	movzbl    (%r11), %ecx
	incq      %r11
	leal      (%rcx,%rcx,2), %esi
	movzbl    (%rax), %ecx
	incq      %rax
	addl      %esi, %ecx
	leal      (%r13,%r13,2), %esi
	leal      8(%r14,%rsi), %edi
	shrl      $4, %edi
	movb      %dil, (%r12)
	leal      7(%rsi,%rcx), %esi
	shrl      $4, %esi
	movb      %sil, 3(%r15)
	movq      %r15, %rbx
	addq      $4, %rbx
	incl      %r8d
	movq      %r12, %r15
	movl      %r13d, %r14d
	jne       L000006E0
L00000726:
	jmp       L00000736
L00000728:
	.align 4, 0x90
L00000730:
	movl      %r14d, %r13d
	movq      %r15, %r12
L00000736:
	incq      %r9
	leal      (%rcx,%rcx,2), %eax
	leal      8(%r13,%rax), %eax
	shrl      $4, %eax
	movb      %al, (%rbx)
	leal      7(,%rcx,4), %eax
	shrl      $4, %eax
	movb      %al, 3(%r12)
	addq      $2, %r10
	movq      -64(%rbp), %rax
	cmpl      468(%rax), %r10d
	movq      %rdx, %rsi
	movq      -56(%rbp), %rdx
	jl        L00000590
L00000771:
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000077C:
	.align 4, 0x90
# ----------------------
_h2v2_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      %rdx, -48(%rbp)
	movq      %rdi, %r15
	cmpl      $0, 468(%r15)
	jle       L00000829
L000007A3:
	movq      (%rcx), %r12
	xorl      %r13d, %r13d
	xorl      %r14d, %r14d
	.align 4, 0x90
L000007B0:
	movl      136(%r15), %eax
	testq     %rax, %rax
	movl      $0, %r9d
	je        L000007FA
L000007C2:
	movq      (%r12,%r14,8), %rcx
	addq      %rcx, %rax
	movq      -48(%rbp), %rdx
	movq      (%rdx,%r13,8), %rdx
	.align 4, 0x90
L000007E0:
	movb      (%rdx), %bl
	incq      %rdx
	movb      %bl, (%rcx)
	movb      %bl, 1(%rcx)
	addq      $2, %rcx
	cmpq      %rax, %rcx
	jb        L000007E0
L000007F3:
	movl      136(%r15), %r9d
L000007FA:
	movl      %r14d, %ecx
	orl       $1, %ecx
	movl      $1, %r8d
	xorl      %eax, %eax
	movq      %r12, %rdi
	movl      %r14d, %esi
	movq      %r12, %rdx
	call      _jcopy_sample_rows
L00000816:
	incq      %r13
	addq      $2, %r14
	movslq    468(%r15), %rax
	cmpq      %rax, %r14
	jl        L000007B0
L00000829:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00000838:
	.align 4, 0x90
# ----------------------
_int_upsample:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $72, %rsp
	movq      %rdx, -96(%rbp)
	movq      %rdi, %r14
	movq      %r14, -72(%rbp)
	cmpl      $0, 468(%r14)
	jle       L00000971
L0000086A:
	movq      664(%r14), %rax
	movq      (%rcx), %rcx
	movq      %rcx, -64(%rbp)
	movslq    4(%rsi), %rcx
	movswl    232(%rax,%rcx,2), %r15d
	movswl    252(%rax,%rcx,2), %edx
	movq      %rdx, -80(%rbp)
	leal      -1(%rdx), %eax
	movl      %eax, -100(%rbp)
	movl      %r15d, %eax
	notl      %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovg     %eax, %ecx
	leal      1(%rcx,%r15), %ebx
	incq      %rbx
	movslq    %edx, %rax
	movq      %rax, -88(%rbp)
	xorl      %eax, %eax
	movq      %rax, -56(%rbp)
	xorl      %eax, %eax
	movq      %rax, -48(%rbp)
	.align 4, 0x90
L000008D0:
	movl      136(%r14), %r13d
	testq     %r13, %r13
	je        L00000921
L000008DC:
	movq      -64(%rbp), %rax
	movq      -48(%rbp), %rcx
	movq      (%rax,%rcx,8), %r14
	addq      %r14, %r13
	movq      -96(%rbp), %rax
	movq      -56(%rbp), %rcx
	movq      (%rax,%rcx,8), %r12
	.align 4, 0x90
L00000900:
	testw     %r15w, %r15w
	jle       L00000919
L00000906:
	movzbl    (%r12), %esi
	movq      %r14, %rdi
	movq      %rbx, %rdx
	call      _memset
L00000916:
	addq      %rbx, %r14
L00000919:
	incq      %r12
	cmpq      %r13, %r14
	jb        L00000900
L00000921:
	movq      -80(%rbp), %rax
	cmpl      $2, %eax
	movq      -72(%rbp), %r14
	jl        L0000094E
L0000092E:
	movq      -48(%rbp), %rsi
	leal      1(%rsi), %ecx
	movl      136(%r14), %r9d
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	movq      %rdi, %rdx
	movl      -100(%rbp), %r8d
	call      _jcopy_sample_rows
L0000094E:
	incq      -56(%rbp)
	movq      -48(%rbp), %rax
	movq      %rax, %rcx
	addq      -88(%rbp), %rcx
	movq      %rcx, -48(%rbp)
	movslq    468(%r14), %rax
	cmpq      %rax, %rcx
	jl        L000008D0
L00000971:
	addq      $72, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------

.subsections_via_symbols
