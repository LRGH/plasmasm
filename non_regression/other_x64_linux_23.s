	.file	"minigzip.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s: %s\n"
	.text
	.p2align 4,,15
.globl error
	.type	error, @function
error:
.LFB62:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	movq	prog(%rip), %rcx
	movq	stderr(%rip), %rdi
	movl	$.LC0, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE62:
	.size	error, .-error
	.section	.rodata.str1.1
.LC1:
	.string	"fread"
.LC2:
	.string	"failed gzclose"
	.text
	.p2align 4,,15
.globl gz_compress
	.type	gz_compress, @function
gz_compress:
.LFB63:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%r13
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	movq	%rsi, %r12
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	pushq	%rbp
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbx
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	subq	$16416, %rsp
	.cfi_def_cfa_offset 16464
	movq	%fs:40, %rax
	movq	%rax, 16408(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L6:
	movq	%rbx, %rcx
	movl	$16384, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	fread
	movq	%rbx, %rdi
	movq	%rax, %r14
	call	ferror
	testl	%eax, %eax
	jne	.L13
	testl	%r14d, %r14d
	je	.L5
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	gzwrite
	cmpl	%r14d, %eax
	je	.L6
	leaq	12(%rsp), %rsi
	movq	%r12, %rdi
	call	gzerror
	movq	%rax, %r8
.L11:
	movq	stderr(%rip), %rdi
	movq	prog(%rip), %rcx
	movl	$.LC0, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rbx, %rdi
	call	fclose
	movq	%r12, %rdi
	call	gzclose
	testl	%eax, %eax
	jne	.L14
	movq	16408(%rsp), %rax
	xorq	%fs:40, %rax
	.p2align 4,,2
	jne	.L15
	addq	$16416, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	movl	$.LC2, %r8d
	jmp	.L11
.L13:
	movl	$.LC1, %edi
	call	perror
	movl	$1, %edi
	call	exit
.L15:
	call	__stack_chk_fail
	.cfi_endproc
.LFE63:
	.size	gz_compress, .-gz_compress
	.section	.rodata.str1.1
.LC3:
	.string	"%s: filename too long\n"
.LC4:
	.string	"%s%s"
.LC5:
	.string	".gz"
.LC6:
	.string	"rb"
.LC7:
	.string	"%s: can't gzopen %s\n"
	.text
	.p2align 4,,15
.globl file_compress
	.type	file_compress, @function
file_compress:
.LFB65:
	.cfi_startproc
	movq	%rbx, -32(%rsp)
	movq	%r12, -16(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -40
	movq	%rbp, -24(%rsp)
	movq	%r13, -8(%rsp)
	subq	$1096, %rsp
	.cfi_def_cfa_offset 1104
	movq	%fs:40, %rax
	movq	%rax, 1048(%rsp)
	xorl	%eax, %eax
	movq	%rsi, %r12
	.cfi_offset 13, -16
	.cfi_offset 6, -32
	call	strlen
	addq	$3, %rax
	cmpq	$1023, %rax
	ja	.L22
	leaq	16(%rsp), %rbp
	movq	%rbx, %r9
	movl	$.LC4, %r8d
	movl	$1024, %ecx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	$.LC5, (%rsp)
	call	__snprintf_chk
	movl	$.LC6, %esi
	movq	%rbx, %rdi
	call	fopen
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L23
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	gzopen
	testq	%rax, %rax
	je	.L24
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	gz_compress
	movq	%rbx, %rdi
	call	unlink
	movq	1048(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L25
	movq	1064(%rsp), %rbx
	movq	1072(%rsp), %rbp
	movq	1080(%rsp), %r12
	movq	1088(%rsp), %r13
	addq	$1096, %rsp
	ret
.L22:
	movq	stderr(%rip), %rdi
	movq	prog(%rip), %rcx
	movl	$.LC3, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
.L25:
	call	__stack_chk_fail
.L24:
	movq	stderr(%rip), %rdi
	movq	prog(%rip), %rcx
	movq	%rbp, %r8
	movl	$.LC7, %edx
	movl	$1, %esi
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
.L23:
	movq	%rbx, %rdi
	call	perror
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE65:
	.size	file_compress, .-file_compress
	.section	.rodata.str1.1
.LC8:
	.string	"failed fwrite"
.LC9:
	.string	"failed fclose"
	.text
	.p2align 4,,15
.globl gz_uncompress
	.type	gz_uncompress, @function
gz_uncompress:
.LFB64:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	movq	%rsi, %r13
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	movq	%rdi, %r12
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$16424, %rsp
	.cfi_def_cfa_offset 16464
	movq	%fs:40, %rax
	movq	%rax, 16408(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbp
	.cfi_offset 3, -40
	.cfi_offset 6, -32
.L29:
	movl	$16384, %edx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	gzread
	cmpl	$0, %eax
	movl	%eax, %ebx
	jl	.L36
	je	.L28
	mov	%eax, %edx
	movq	%r13, %rcx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	fwrite
	cmpl	%eax, %ebx
	je	.L29
	movl	$.LC8, %r8d
.L35:
	movq	stderr(%rip), %rdi
	movq	prog(%rip), %rcx
	movl	$.LC0, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L36:
	leaq	12(%rsp), %rsi
	movq	%r12, %rdi
	call	gzerror
	movq	%rax, %r8
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L28:
	movq	%r13, %rdi
	call	fclose
	testl	%eax, %eax
	movl	$.LC9, %r8d
	jne	.L35
	movq	%r12, %rdi
	call	gzclose
	testl	%eax, %eax
	movl	$.LC2, %r8d
	jne	.L35
	movq	16408(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L37
	addq	$16424, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L37:
	call	__stack_chk_fail
	.cfi_endproc
.LFE64:
	.size	gz_uncompress, .-gz_uncompress
	.section	.rodata.str1.1
.LC10:
	.string	"%s"
.LC11:
	.string	"wb"
	.text
	.p2align 4,,15
.globl file_uncompress
	.type	file_uncompress, @function
file_uncompress:
.LFB66:
	.cfi_startproc
	movq	%rbx, -32(%rsp)
	movq	%rbp, -24(%rsp)
	movq	%rdi, %rbp
	.cfi_offset 6, -32
	.cfi_offset 3, -40
	movq	%r12, -16(%rsp)
	movq	%r13, -8(%rsp)
	subq	$1080, %rsp
	.cfi_def_cfa_offset 1088
	movq	%fs:40, %rax
	movq	%rax, 1032(%rsp)
	xorl	%eax, %eax
	.cfi_offset 13, -16
	.cfi_offset 12, -24
	call	strlen
	movq	%rax, %rbx
	addq	$3, %rax
	cmpq	$1023, %rax
	ja	.L46
	xorl	%eax, %eax
	movq	%rbp, %r9
	movl	$.LC10, %r8d
	movl	$1024, %ecx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rsp, %rdi
	movq	%rsp, %r12
	call	__snprintf_chk
	cmpq	$3, %rbx
	jbe	.L40
	leaq	-3(%rbp,%rbx), %rsi
	movl	$.LC5, %edi
	movl	$4, %ecx
	repz cmpsb
	je	.L47
.L40:
	leaq	(%r12,%rbx), %rdi
	movl	$1024, %esi
	movl	$.LC5, %r9d
	subq	%rbx, %rsi
	movl	$.LC10, %r8d
	movq	$-1, %rcx
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%rbp, %r13
	movq	%rsp, %rbx
	call	__snprintf_chk
.L41:
	movl	$.LC6, %esi
	movq	%rbx, %rdi
	call	gzopen
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L48
	movl	$.LC11, %esi
	movq	%r13, %rdi
	call	fopen
	testq	%rax, %rax
	je	.L49
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	gz_uncompress
	movq	%rbx, %rdi
	call	unlink
	movq	1032(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L50
	movq	1048(%rsp), %rbx
	movq	1056(%rsp), %rbp
	movq	1064(%rsp), %r12
	movq	1072(%rsp), %r13
	addq	$1080, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	movb	$0, -3(%rbx,%r12)
	movq	%rsp, %r13
	movq	%rbp, %rbx
	jmp	.L41
.L46:
	movq	stderr(%rip), %rdi
	movq	prog(%rip), %rcx
	movl	$.LC3, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
.L50:
	call	__stack_chk_fail
.L49:
	movq	%rbp, %rdi
	call	perror
	movl	$1, %edi
	call	exit
.L48:
	movq	stderr(%rip), %rdi
	movq	prog(%rip), %rcx
	movq	%rbx, %r8
	movl	$.LC7, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE66:
	.size	file_uncompress, .-file_uncompress
	.section	.rodata.str1.1
.LC12:
	.string	"wb6 "
.LC13:
	.string	"gunzip"
.LC14:
	.string	"zcat"
.LC15:
	.string	"-c"
.LC16:
	.string	"-d"
.LC17:
	.string	"-f"
.LC18:
	.string	"-h"
.LC19:
	.string	"-r"
.LC20:
	.string	"can't gzdopen stdin"
.LC21:
	.string	"can't gzdopen stdout"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
.LFB67:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	movl	$.LC12, %r9d
	movl	$20, %ecx
	movl	$1, %edx
	movl	$.LC10, %r8d
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	movl	%edi, %ebp
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 56
	movq	%rsi, %rbx
	.cfi_offset 3, -56
	movl	$20, %esi
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	leaq	16(%rsp), %r15
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%r15, %rdi
	call	__snprintf_chk
	movq	(%rbx), %rax
	movl	$47, %esi
	movq	%rax, prog(%rip)
	movq	(%rbx), %r12
	movq	%r12, %rdi
	call	strrchr
	leaq	1(%rax), %rdx
	testq	%rax, %rax
	movl	$.LC13, %edi
	movl	$7, %ecx
	movl	$1, %r11d
	cmovne	%rdx, %r12
	subl	$1, %ebp
	addq	$8, %rbx
	movq	%r12, %rsi
	repz cmpsb
	seta	%dl
	setb	%al
	xorl	%r9d, %r9d
	cmpb	%al, %dl
	je	.L54
	movl	$.LC14, %edi
	movl	$5, %ecx
	movq	%r12, %rsi
	repz cmpsb
	seta	%al
	setb	%dl
	subb	%dl, %al
	movsbl	%al,%eax
	cmpl	$1, %eax
	sbbl	%r11d, %r11d
	andl	$1, %r11d
	movl	%r11d, %r9d
.L54:
	testl	%ebp, %ebp
	jle	.L56
	movl	$.LC15, %r8d
	movl	$3, %edx
	movl	$.LC16, %r10d
	movl	$.LC17, %r12d
	movl	$.LC18, %r13d
	movl	$.LC19, %r14d
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L87:
	movl	$1, %r9d
.L58:
	subl	$1, %ebp
	addq	$8, %rbx
	testl	%ebp, %ebp
	jle	.L56
.L63:
	movq	(%rbx), %rax
	movq	%r8, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rsi
	repz cmpsb
	je	.L87
	movq	%rax, %rsi
	movq	%r10, %rdi
	movq	%rdx, %rcx
	repz cmpsb
	jne	.L59
	subl	$1, %ebp
	addq	$8, %rbx
	movl	$1, %r11d
	testl	%ebp, %ebp
	jg	.L63
.L56:
	cmpb	$32, 19(%rsp)
	je	.L88
.L64:
	testl	%ebp, %ebp
	jne	.L65
	testl	%r11d, %r11d
	.p2align 4,,4
	jne	.L89
	movq	stdout(%rip), %rdi
	call	fileno
	movq	%r15, %rsi
	movl	%eax, %edi
	call	gzdopen
	testq	%rax, %rax
	je	.L90
.L69:
	movq	stdin(%rip), %rdi
	movq	%rax, %rsi
	call	gz_compress
.L68:
	xorl	%eax, %eax
	movq	40(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L91
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	movq	%rax, %rsi
	movq	%r12, %rdi
	movq	%rdx, %rcx
	repz cmpsb
	jne	.L60
	movb	$102, 19(%rsp)
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L60:
	movq	%rax, %rsi
	movq	%r13, %rdi
	movq	%rdx, %rcx
	repz cmpsb
	jne	.L61
	movb	$104, 19(%rsp)
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L61:
	movq	%rax, %rsi
	movq	%r14, %rdi
	movq	%rdx, %rcx
	repz cmpsb
	jne	.L62
	movb	$82, 19(%rsp)
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L62:
	cmpb	$45, (%rax)
	jne	.L56
	movzbl	1(%rax), %ecx
	cmpb	$48, %cl
	.p2align 4,,2
	jle	.L56
	cmpb	$57, %cl
	.p2align 4,,3
	jg	.L56
	cmpb	$0, 2(%rax)
	.p2align 4,,3
	jne	.L56
	movb	%cl, 18(%rsp)
	.p2align 4,,4
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L65:
	testl	%r11d, %r11d
	.p2align 4,,4
	jne	.L70
	testl	%r9d, %r9d
	.p2align 4,,4
	je	.L85
.L83:
	movq	(%rbx), %rdi
	movl	$.LC6, %esi
	call	fopen
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L92
	movq	stdout(%rip), %rdi
	call	fileno
	movq	%r15, %rsi
	movl	%eax, %edi
	call	gzdopen
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L93
.L75:
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	gz_compress
.L74:
	subl	$1, %ebp
	je	.L68
	addq	$8, %rbx
	jmp	.L83
.L70:
	testl	%r9d, %r9d
	.p2align 4,,5
	jne	.L84
	movq	(%rbx), %rdi
	.p2align 4,,5
	call	file_uncompress
	subl	$1, %ebp
	.p2align 4,,2
	je	.L68
.L94:
	addq	$8, %rbx
	movq	(%rbx), %rdi
	call	file_uncompress
	subl	$1, %ebp
	jne	.L94
	.p2align 4,,2
	jmp	.L68
.L78:
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	call	gz_uncompress
.L79:
	subl	$1, %ebp
	je	.L68
	addq	$8, %rbx
.L84:
	movq	(%rbx), %rdi
	movl	$.LC6, %esi
	call	gzopen
	testq	%rax, %rax
	jne	.L78
	movq	(%rbx), %r8
	movq	prog(%rip), %rcx
	movl	$.LC7, %edx
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	call	__fprintf_chk
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L95:
	addq	$8, %rbx
.L85:
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	call	file_compress
	subl	$1, %ebp
	jne	.L95
	jmp	.L68
.L89:
	movq	stdin(%rip), %rdi
	call	fileno
	movl	$.LC6, %esi
	movl	%eax, %edi
	call	gzdopen
	testq	%rax, %rax
	je	.L96
.L67:
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	call	gz_uncompress
	jmp	.L68
.L88:
	movb	$0, 19(%rsp)
	jmp	.L64
.L93:
	movl	$.LC21, %edi
	call	error
	jmp	.L75
.L96:
	movl	$.LC20, %edi
	movq	%rax, 8(%rsp)
	call	error
	movq	8(%rsp), %rax
	jmp	.L67
.L90:
	movl	$.LC21, %edi
	movq	%rax, 8(%rsp)
	call	error
	movq	8(%rsp), %rax
	jmp	.L69
.L92:
	movq	(%rbx), %rdi
	call	perror
	.p2align 4,,3
	jmp	.L74
.L91:
	.p2align 4,,6
	call	__stack_chk_fail
	.cfi_endproc
.LFE67:
	.size	main, .-main
	.comm	prog,8,8
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
