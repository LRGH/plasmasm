	.macosx_version_min 10, 13
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.private_extern	_inflate_table
	.globl	_inflate_table
_inflate_table:
	pushq     %rbp
Lcfi0:
Lcfi1:
	movq      %rsp, %rbp
Lcfi2:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $152, %rsp
Lcfi3:
Lcfi4:
Lcfi5:
Lcfi6:
Lcfi7:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	xorps     %xmm0, %xmm0
	movaps    %xmm0, -64(%rbp)
	movaps    %xmm0, -80(%rbp)
	testl     %edx, %edx
	je        LBB0_135
	movl      %edx, %r14d
	leaq      -1(%r14), %r11
	movq      %r14, %r10
	xorl      %eax, %eax
	andq      $3, %r10
	je        LBB0_3
	.p2align 4, 0x90
LBB0_2:
	movzwl    (%rsi,%rax,2), %ebx
	incw      -80(%rbp,%rbx,2)
	incq      %rax
	cmpq      %rax, %r10
	jne       LBB0_2
LBB0_3:
	cmpq      $3, %r11
	jb        LBB0_6
	subq      %rax, %r14
	leaq      6(%rsi,%rax,2), %rbx
	.p2align 4, 0x90
LBB0_5:
	movzwl    -6(%rbx), %eax
	incw      -80(%rbp,%rax,2)
	movzwl    -4(%rbx), %eax
	incw      -80(%rbp,%rax,2)
	movzwl    -2(%rbx), %eax
	incw      -80(%rbp,%rax,2)
	movzwl    (%rbx), %eax
	incw      -80(%rbp,%rax,2)
	addq      $8, %rbx
	addq      $-4, %r14
	jne       LBB0_5
LBB0_6:
	movw      -50(%rbp), %r15w
	movl      (%r8), %r11d
	movl      $15, %r14d
	testw     %r15w, %r15w
	jne       LBB0_10
	jmp       LBB0_7
LBB0_135:
	movl      (%r8), %r11d
LBB0_7:
	cmpw      $0, -52(%rbp)
	je        LBB0_109
	movl      $14, %r14d
	jmp       LBB0_9
LBB0_109:
	cmpw      $0, -54(%rbp)
	je        LBB0_111
	movl      $13, %r14d
	jmp       LBB0_9
LBB0_111:
	cmpw      $0, -56(%rbp)
	je        LBB0_113
	movl      $12, %r14d
	jmp       LBB0_9
LBB0_113:
	cmpw      $0, -58(%rbp)
	je        LBB0_115
	movl      $11, %r14d
	jmp       LBB0_9
LBB0_115:
	cmpw      $0, -60(%rbp)
	je        LBB0_117
	movl      $10, %r14d
	jmp       LBB0_9
LBB0_117:
	cmpw      $0, -62(%rbp)
	je        LBB0_119
	movl      $9, %r14d
	jmp       LBB0_9
LBB0_119:
	cmpw      $0, -64(%rbp)
	je        LBB0_121
	movl      $8, %r14d
	jmp       LBB0_9
LBB0_121:
	cmpw      $0, -66(%rbp)
	je        LBB0_123
	movl      $7, %r14d
	jmp       LBB0_9
LBB0_123:
	cmpw      $0, -68(%rbp)
	je        LBB0_125
	movl      $6, %r14d
	jmp       LBB0_9
LBB0_125:
	cmpw      $0, -70(%rbp)
	je        LBB0_127
	movl      $5, %r14d
	jmp       LBB0_9
LBB0_127:
	cmpw      $0, -72(%rbp)
	je        LBB0_129
	movl      $4, %r14d
	jmp       LBB0_9
LBB0_129:
	cmpw      $0, -74(%rbp)
	je        LBB0_131
	movl      $3, %r14d
	jmp       LBB0_9
LBB0_131:
	cmpw      $0, -76(%rbp)
	je        LBB0_133
	movl      $2, %r14d
LBB0_9:
	xorl      %r15d, %r15d
LBB0_10:
	cmpl      %r14d, %r11d
	cmova     %r14d, %r11d
	movl      $1, %ebx
	.p2align 4, 0x90
LBB0_11:
	cmpw      $0, -80(%rbp,%rbx,2)
	jne       LBB0_13
	incq      %rbx
	cmpl      %r14d, %ebx
	jb        LBB0_11
LBB0_13:
	cmpl      %ebx, %r11d
	cmovb     %ebx, %r11d
	movzwl    -78(%rbp), %r10d
	movl      $2, %r13d
	subl      %r10d, %r13d
	movl      $-1, %eax
	js        LBB0_74
	movl      %edi, -116(%rbp)
	addl      %r13d, %r13d
	movzwl    -76(%rbp), %r12d
	subl      %r12d, %r13d
	js        LBB0_74
	movq      %r9, -160(%rbp)
	addl      %r13d, %r13d
	movzwl    -74(%rbp), %r9d
	subl      %r9d, %r13d
	js        LBB0_74
	movq      %rcx, -152(%rbp)
	addl      %r13d, %r13d
	movzwl    -72(%rbp), %ecx
	subl      %ecx, %r13d
	js        LBB0_74
	movq      %r8, -192(%rbp)
	addl      %r13d, %r13d
	movzwl    -70(%rbp), %edi
	subl      %edi, %r13d
	js        LBB0_74
	movl      %ecx, -128(%rbp)
	addl      %r13d, %r13d
	movzwl    -68(%rbp), %ecx
	subl      %ecx, %r13d
	js        LBB0_74
	movl      %ecx, -124(%rbp)
	movl      %edi, -120(%rbp)
	addl      %r13d, %r13d
	movzwl    -66(%rbp), %r8d
	movl      %r8d, -132(%rbp)
	subl      %r8d, %r13d
	js        LBB0_74
	addl      %r13d, %r13d
	movzwl    -64(%rbp), %r8d
	subl      %r8d, %r13d
	js        LBB0_74
	addl      %r13d, %r13d
	movzwl    -62(%rbp), %ecx
	subl      %ecx, %r13d
	js        LBB0_74
	addl      %r13d, %r13d
	movzwl    -60(%rbp), %edi
	movl      %edi, -176(%rbp)
	subl      %edi, %r13d
	js        LBB0_74
	addl      %r13d, %r13d
	movzwl    -58(%rbp), %edi
	subl      %edi, %r13d
	js        LBB0_74
	movl      %edi, -168(%rbp)
	addl      %r13d, %r13d
	movzwl    -56(%rbp), %edi
	movl      %edi, -144(%rbp)
	subl      %edi, %r13d
	js        LBB0_74
	addl      %r13d, %r13d
	movzwl    -54(%rbp), %edi
	subl      %edi, %r13d
	js        LBB0_74
	movl      %edi, -136(%rbp)
	addl      %r13d, %r13d
	movzwl    -52(%rbp), %edi
	movl      %edi, -184(%rbp)
	subl      %edi, %r13d
	js        LBB0_74
	movl      %ecx, -180(%rbp)
	addl      %r13d, %r13d
	movzwl    %r15w, %edi
	subl      %edi, %r13d
	js        LBB0_74
	movl      %r8d, %r15d
	testl     %r13d, %r13d
	movl      -124(%rbp), %r8d
	movl      -120(%rbp), %edi
	movl      -128(%rbp), %ecx
	je        LBB0_31
	cmpl      $0, -116(%rbp)
	je        LBB0_74
	cmpl      $1, %r14d
	jne       LBB0_74
LBB0_31:
	addl      %r10d, %r12d
	movw      $0, -110(%rbp)
	movw      %r10w, -108(%rbp)
	addl      %r12d, %r9d
	movw      %r12w, -106(%rbp)
	addl      %r9d, %ecx
	movw      %r9w, -104(%rbp)
	addl      %ecx, %edi
	movw      %cx, -102(%rbp)
	addl      %edi, %r8d
	movw      %di, -100(%rbp)
	movl      -132(%rbp), %eax
	addl      %r8d, %eax
	movw      %r8w, -98(%rbp)
	addl      %eax, %r15d
	movw      %ax, -96(%rbp)
	movl      -180(%rbp), %eax
	addl      %r15d, %eax
	movw      %r15w, -94(%rbp)
	movl      -176(%rbp), %ecx
	addl      %eax, %ecx
	movw      %ax, -92(%rbp)
	movl      -168(%rbp), %eax
	addl      %ecx, %eax
	movw      %cx, -90(%rbp)
	movl      -144(%rbp), %ecx
	addl      %eax, %ecx
	movw      %ax, -88(%rbp)
	movl      -136(%rbp), %eax
	addl      %ecx, %eax
	movw      %cx, -86(%rbp)
	movl      -184(%rbp), %ecx
	addl      %eax, %ecx
	movw      %ax, -84(%rbp)
	movw      %cx, -82(%rbp)
	testl     %edx, %edx
	movq      -160(%rbp), %r15
	movl      -116(%rbp), %r12d
	je        LBB0_43
	movl      %edx, %r10d
	testb     $1, %r10b
	jne       LBB0_34
	xorl      %ecx, %ecx
	cmpl      $1, %edx
	jne       LBB0_38
	jmp       LBB0_43
LBB0_34:
	movzwl    (%rsi), %ecx
	testq     %rcx, %rcx
	je        LBB0_36
	movzwl    -112(%rbp,%rcx,2), %r9d
	leal      1(%r9), %edi
	movw      %di, -112(%rbp,%rcx,2)
	movw      $0, (%r15,%r9,2)
LBB0_36:
	movl      $1, %ecx
	cmpl      $1, %edx
	je        LBB0_43
LBB0_38:
	movzwl    (%rsi,%rcx,2), %edx
	testq     %rdx, %rdx
	je        LBB0_40
	movzwl    -112(%rbp,%rdx,2), %edi
	leal      1(%rdi), %eax
	movw      %ax, -112(%rbp,%rdx,2)
	movw      %cx, (%r15,%rdi,2)
LBB0_40:
	movzwl    2(%rsi,%rcx,2), %edx
	testq     %rdx, %rdx
	je        LBB0_42
	leal      1(%rcx), %r8d
	movzwl    -112(%rbp,%rdx,2), %edi
	leal      1(%rdi), %eax
	movw      %ax, -112(%rbp,%rdx,2)
	movw      %r8w, (%r15,%rdi,2)
LBB0_42:
	addq      $2, %rcx
	cmpq      %rcx, %r10
	jne       LBB0_38
LBB0_43:
	xorl      %r10d, %r10d
	testl     %r12d, %r12d
	je        LBB0_44
	cmpl      $1, %r12d
	jne       LBB0_51
	movl      $1, %eax
	movl      $1, %edx
	movl      %r11d, %ecx
	shll      %cl, %edx
	cmpl      $9, %r11d
	ja        LBB0_74
	movq      -152(%rbp), %rax
	movq      (%rax), %r13
	movq      %rdx, -144(%rbp)
	leal      -1(%rdx), %eax
	movl      %eax, -120(%rbp)
	movl      $-1, -124(%rbp)
	xorl      %edx, %edx
	movl      %r11d, %ecx
	xorl      %r15d, %r15d
	xorl      %r8d, %r8d
	jmp       LBB0_48
LBB0_44:
	movl      $19, %r12d
	movl      $0, -136(%rbp)
	movq      %r15, -176(%rbp)
	movq      %r15, -168(%rbp)
	jmp       LBB0_53
LBB0_51:
	cmpl      $2, %r12d
	sete      %al
	movl      %eax, -136(%rbp)
	movl      $-1, %r12d
	leaq      _inflate_table.dext(%rip), %rax
	movq      %rax, -168(%rbp)
	leaq      _inflate_table.dbase(%rip), %rax
	movq      %rax, -176(%rbp)
	jne       LBB0_53
	movl      $1, %eax
	cmpl      $9, %r11d
	ja        LBB0_74
LBB0_53:
	movl      $1, %edx
	movl      %r11d, %ecx
	shll      %cl, %edx
	movq      -152(%rbp), %rax
	movq      (%rax), %r13
	movq      %rdx, -144(%rbp)
	leal      -1(%rdx), %eax
	movl      %eax, -132(%rbp)
	movl      $-1, -120(%rbp)
	movl      %r11d, %ecx
	movl      $0, %r15d
	xorl      %r8d, %r8d
	movl      %r12d, -124(%rbp)
	jmp       LBB0_54
LBB0_105:
	subl      %r15d, %ecx
LBB0_106:
	movl      $1, %eax
	movl      $1, %r9d
	shll      %cl, %r9d
	movq      -144(%rbp), %rdx
	addl      %r9d, %edx
	movq      %rdx, %r9
	cmpl      $592, %r9d
	seta      %dl
	testb     -136(%rbp), %dl
	jne       LBB0_74
	movq      %r9, -144(%rbp)
	movl      -128(%rbp), %eax
	leaq      (%r13,%rax,4), %r13
	movq      -152(%rbp), %rax
	movq      (%rax), %rax
	movl      %edi, %r9d
	movb      %cl, (%rax,%r9,4)
	movb      %r11b, 1(%rax,%r9,4)
	movl      %r13d, %edx
	subl      %eax, %edx
	shrl      $2, %edx
	movw      %dx, 2(%rax,%r9,4)
	movl      %edi, -120(%rbp)
LBB0_54:
	movl      $1, %eax
	shll      %cl, %eax
	movl      %eax, -128(%rbp)
LBB0_55:
	movl      %ebx, %r9d
	subl      %r15d, %r9d
	movl      %r10d, %eax
	movq      -160(%rbp), %rcx
	movw      (%rcx,%rax,2), %ax
	movzwl    %ax, %ecx
	cmpl      %r12d, %ecx
	movl      %r10d, -116(%rbp)
	jge       LBB0_86
	xorl      %edi, %edi
	jmp       LBB0_89
LBB0_86:
	cmpl      %r12d, %ecx
	jle       LBB0_87
	movq      -168(%rbp), %rax
	movb      (%rax,%rcx,2), %dil
	movq      -176(%rbp), %rax
	movw      (%rax,%rcx,2), %ax
	jmp       LBB0_89
LBB0_87:
	movb      $96, %dil
	xorl      %eax, %eax
LBB0_89:
	movl      $1, %r10d
	movl      %r9d, %ecx
	shll      %cl, %r10d
	movl      %r8d, %r12d
	movl      %r15d, %edx
	movl      %r15d, %ecx
	shrl      %cl, %r12d
	subl      %r10d, %r12d
	movl      -128(%rbp), %ecx
	.p2align 4, 0x90
LBB0_90:
	leal      (%r12,%rcx), %r15d
	subl      %r10d, %ecx
	movb      %dil, (%r13,%r15,4)
	movb      %r9b, 1(%r13,%r15,4)
	movw      %ax, 2(%r13,%r15,4)
	jne       LBB0_90
	leal      -1(%rbx), %ecx
	movl      $1, %edi
	shll      %cl, %edi
	.p2align 4, 0x90
LBB0_92:
	movl      %edi, %eax
	shrl      $1, %edi
	testl     %eax, %r8d
	jne       LBB0_92
	testl     %eax, %eax
	movq      -152(%rbp), %rdi
	movl      -116(%rbp), %r10d
	movl      -124(%rbp), %r12d
	je        LBB0_94
	leal      -1(%rax), %ecx
	andl      %r8d, %ecx
	addl      %eax, %ecx
	movl      %ecx, %r8d
	jmp       LBB0_96
LBB0_94:
	xorl      %r8d, %r8d
LBB0_96:
	incl      %r10d
	movl      %ebx, %eax
	decw      -80(%rbp,%rax,2)
	movl      %edx, %r15d
	jne       LBB0_99
	cmpl      %r14d, %ebx
	je        LBB0_70
	movl      %r10d, %eax
	movq      -160(%rbp), %rcx
	movzwl    (%rcx,%rax,2), %eax
	movzwl    (%rsi,%rax,2), %ebx
LBB0_99:
	cmpl      %r11d, %ebx
	jbe       LBB0_55
	movl      %r8d, %edi
	andl      -132(%rbp), %edi
	cmpl      -120(%rbp), %edi
	je        LBB0_55
	testl     %r15d, %r15d
	cmove     %r11d, %r15d
	movl      %ebx, %ecx
	subl      %r15d, %ecx
	cmpl      %r14d, %ebx
	jae       LBB0_106
	movl      $1, %r9d
	shll      %cl, %r9d
	movl      %ebx, %ecx
LBB0_103:
	movzwl    -80(%rbp,%rcx,2), %eax
	subl      %eax, %r9d
	jle       LBB0_105
	addl      %r9d, %r9d
	incq      %rcx
	cmpl      %r14d, %ecx
	jb        LBB0_103
	jmp       LBB0_105
LBB0_83:
	subl      %r12d, %ecx
LBB0_84:
	movl      $1, %eax
	movl      $1, %r9d
	shll      %cl, %r9d
	movq      -144(%rbp), %rdx
	addl      %r9d, %edx
	cmpl      $852, %edx
	ja        LBB0_74
	movq      %rdx, -144(%rbp)
	movl      -116(%rbp), %eax
	leaq      (%r13,%rax,4), %r13
	movq      -152(%rbp), %rax
	movq      (%rax), %r10
	movl      %edi, %r9d
	movb      %cl, (%r10,%r9,4)
	movb      %r11b, 1(%r10,%r9,4)
	movl      %r13d, %eax
	subl      %r10d, %eax
	shrl      $2, %eax
	movw      %ax, 2(%r10,%r9,4)
	movl      %edi, -124(%rbp)
	movl      -132(%rbp), %edx
	movl      %r12d, %r15d
LBB0_48:
	movl      $1, %eax
	shll      %cl, %eax
	movl      %eax, -116(%rbp)
	movl      %r15d, -128(%rbp)
LBB0_49:
	movl      %ebx, %r9d
	subl      %r15d, %r9d
	movl      %edx, %eax
	movq      -160(%rbp), %rcx
	movzwl    (%rcx,%rax,2), %r10d
	cmpq      $256, %r10
	jae       LBB0_57
	xorl      %eax, %eax
	jmp       LBB0_60
LBB0_57:
	movzwl    %r10w, %eax
	cmpl      $256, %eax
	jne       LBB0_59
	movb      $96, %al
	xorl      %r10d, %r10d
	jmp       LBB0_60
LBB0_59:
	leaq      _inflate_table.lext(%rip), %rax
	movb      -514(%rax,%r10,2), %al
	leaq      _inflate_table.lbase(%rip), %rcx
	movw      -514(%rcx,%r10,2), %r10w
LBB0_60:
	movl      $1, %edi
	movl      %r9d, %ecx
	shll      %cl, %edi
	movl      %r8d, %r12d
	movl      %r15d, %ecx
	shrl      %cl, %r12d
	subl      %edi, %r12d
	movl      -116(%rbp), %ecx
	.p2align 4, 0x90
LBB0_61:
	leal      (%r12,%rcx), %r15d
	subl      %edi, %ecx
	movb      %al, (%r13,%r15,4)
	movb      %r9b, 1(%r13,%r15,4)
	movw      %r10w, 2(%r13,%r15,4)
	jne       LBB0_61
	leal      -1(%rbx), %ecx
	movl      $1, %edi
	shll      %cl, %edi
	.p2align 4, 0x90
LBB0_63:
	movl      %edi, %eax
	shrl      $1, %edi
	testl     %eax, %r8d
	jne       LBB0_63
	testl     %eax, %eax
	je        LBB0_65
	leal      -1(%rax), %ecx
	andl      %r8d, %ecx
	addl      %eax, %ecx
	movl      %ecx, %r8d
	jmp       LBB0_67
LBB0_65:
	xorl      %r8d, %r8d
LBB0_67:
	incl      %edx
	movl      %ebx, %eax
	decw      -80(%rbp,%rax,2)
	movl      -128(%rbp), %r15d
	jne       LBB0_77
	cmpl      %r14d, %ebx
	je        LBB0_69
	movl      %edx, %eax
	movq      -160(%rbp), %rcx
	movzwl    (%rcx,%rax,2), %eax
	movzwl    (%rsi,%rax,2), %ebx
LBB0_77:
	cmpl      %r11d, %ebx
	jbe       LBB0_49
	movl      %r8d, %edi
	andl      -120(%rbp), %edi
	cmpl      -124(%rbp), %edi
	je        LBB0_49
	movl      %edx, -132(%rbp)
	testl     %r15d, %r15d
	cmove     %r11d, %r15d
	movl      %ebx, %ecx
	movl      %r15d, %r12d
	subl      %r15d, %ecx
	cmpl      %r14d, %ebx
	jae       LBB0_84
	movl      $1, %r9d
	shll      %cl, %r9d
	movl      %ebx, %ecx
LBB0_81:
	movzwl    -80(%rbp,%rcx,2), %eax
	subl      %eax, %r9d
	jle       LBB0_83
	addl      %r9d, %r9d
	incq      %rcx
	cmpl      %r14d, %ecx
	jb        LBB0_81
	jmp       LBB0_83
LBB0_69:
	movq      -152(%rbp), %rdi
LBB0_70:
	testl     %r8d, %r8d
	je        LBB0_72
	movl      %r8d, %eax
	movb      $64, (%r13,%rax,4)
	movb      %r9b, 1(%r13,%rax,4)
	movw      $0, 2(%r13,%rax,4)
LBB0_72:
	movl      -144(%rbp), %eax
	shlq      $2, %rax
	addq      %rax, (%rdi)
	movq      -192(%rbp), %rax
	movl      %r11d, (%rax)
LBB0_73:
	xorl      %eax, %eax
LBB0_74:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       LBB0_75
	addq      $152, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB0_133:
	cmpw      $0, -78(%rbp)
	je        LBB0_134
	xorl      %eax, %eax
	testl     %r11d, %r11d
	setne     %al
	movl      $1, %r14d
	xorl      %r15d, %r15d
	movl      %eax, %r11d
	movl      $1, %ebx
	jmp       LBB0_13
LBB0_75:
	call      ___stack_chk_fail
LBB0_134:
	movq      %rcx, %rdx
	movq      (%rdx), %rax
	leaq      4(%rax), %rcx
	movq      %rcx, (%rdx)
	movb      $64, (%rax)
	movb      $1, 1(%rax)
	movw      $0, 2(%rax)
	movq      (%rdx), %rax
	leaq      4(%rax), %rcx
	movq      %rcx, (%rdx)
	movb      $64, (%rax)
	movb      $1, 1(%rax)
	movw      $0, 2(%rax)
	movl      $1, (%r8)
	jmp       LBB0_73
# ----------------------
	.section       __TEXT,__const
	.p2align 4
# ----------------------
	.globl	_inflate_copyright
_inflate_copyright:
	.asciz	" inflate 1.2.8 Copyright 1995-2013 Mark Adler "
# ----------------------
	.p2align 4
_inflate_table.lbase:
	.value	3
	.value	4
	.value	5
	.value	6
	.value	7
	.value	8
	.value	9
	.value	10
	.value	11
	.value	13
	.value	15
	.value	17
	.value	19
	.value	23
	.value	27
	.value	31
	.value	35
	.value	43
	.value	51
	.value	59
	.value	67
	.value	83
	.value	99
	.value	115
	.value	131
	.value	163
	.value	195
	.value	227
	.value	258
	.value	0
	.value	0
# ----------------------
	.p2align 4
_inflate_table.lext:
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	17
	.value	17
	.value	17
	.value	17
	.value	18
	.value	18
	.value	18
	.value	18
	.value	19
	.value	19
	.value	19
	.value	19
	.value	20
	.value	20
	.value	20
	.value	20
	.value	21
	.value	21
	.value	21
	.value	21
	.value	16
	.value	72
	.value	78
# ----------------------
	.p2align 4
_inflate_table.dbase:
	.value	1
	.value	2
	.value	3
	.value	4
	.value	5
	.value	7
	.value	9
	.value	13
	.value	17
	.value	25
	.value	33
	.value	49
	.value	65
	.value	97
	.value	129
	.value	193
	.value	257
	.value	385
	.value	513
	.value	769
	.value	1025
	.value	1537
	.value	2049
	.value	3073
	.value	4097
	.value	6145
	.value	8193
	.value	12289
	.value	16385
	.value	24577
	.value	0
	.value	0
# ----------------------
	.p2align 4
_inflate_table.dext:
	.value	16
	.value	16
	.value	16
	.value	16
	.value	17
	.value	17
	.value	18
	.value	18
	.value	19
	.value	19
	.value	20
	.value	20
	.value	21
	.value	21
	.value	22
	.value	22
	.value	23
	.value	23
	.value	24
	.value	24
	.value	25
	.value	25
	.value	26
	.value	26
	.value	27
	.value	27
	.value	28
	.value	28
	.value	29
	.value	29
	.value	64
	.value	64
# ----------------------

.subsections_via_symbols
