	.file	"es.c"
	.text
	.p2align 4,,15
# ----------------------
	.local	normalErrF
	.type	normalErrF, @function
normalErrF:
	.cfi_startproc
	subq      $8, %rsp
	movq      pari_errfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      fflush@PLT
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	addq      $8, %rsp
	jmp       fflush@PLT
	.cfi_endproc
	.size	normalErrF, .-normalErrF
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	normalOutF
	.type	normalOutF, @function
normalOutF:
	.cfi_startproc
	subq      $8, %rsp
	movq      pari_outfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      fflush@PLT
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	addq      $8, %rsp
	jmp       fflush@PLT
	.cfi_endproc
	.size	normalOutF, .-normalOutF
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	normalOutS
	.type	normalOutS, @function
normalOutS:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      pari_outfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      fputs@PLT
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	testq     %rbp, %rbp
	je        .L5
	movq      logstyle@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	je        .L8
	movzbl    (%rbx), %eax
	testb     %al, %al
	je        .L5
.L20:
	cmpb      $27, %al
	jne       .L11
	movq      %rbx, %rax
	jmp       .L12
	.p2align 4,,10
	.p2align 3
.L14:
	testb     %dl, %dl
	je        .L5
.L12:
	addq      $1, %rax
	movzbl    (%rax), %edx
	cmpb      $109, %dl
	jne       .L14
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L20
	.p2align 4,,10
	.p2align 3
.L5:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L11:
	movsbl    %al, %edi
	movq      %rbp, %rsi
	call      fputc@PLT
	movq      %rbx, %rax
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L20
	jmp       .L5
.L8:
	addq      $8, %rsp
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	popq      %rbx
	popq      %rbp
	jmp       fputs@PLT
	.cfi_endproc
	.size	normalOutS, .-normalOutS
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	normalErrC
	.type	normalErrC, @function
normalErrC:
	.cfi_startproc
	movq      pari_errfile@GOTPCREL(%rip), %rax
	pushq     %rbx
	movsbl    %dil, %ebx
	movl      %ebx, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        .L25
	movl      %ebx, %edi
	popq      %rbx
	jmp       _IO_putc@PLT
	.p2align 4,,10
	.p2align 3
.L25:
	popq      %rbx
	ret       
	.cfi_endproc
	.size	normalErrC, .-normalErrC
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	normalOutC
	.type	normalOutC, @function
normalOutC:
	.cfi_startproc
	movq      pari_outfile@GOTPCREL(%rip), %rax
	pushq     %rbx
	movsbl    %dil, %ebx
	movl      %ebx, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        .L28
	movl      %ebx, %edi
	popq      %rbx
	jmp       _IO_putc@PLT
	.p2align 4,,10
	.p2align 3
.L28:
	popq      %rbx
	ret       
	.cfi_endproc
	.size	normalOutC, .-normalOutC
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	normalErrS
	.type	normalErrS, @function
normalErrS:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      pari_errfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      fputs@PLT
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	testq     %rbp, %rbp
	je        .L31
	movq      logstyle@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	je        .L34
	movzbl    (%rbx), %eax
	testb     %al, %al
	je        .L31
.L46:
	cmpb      $27, %al
	jne       .L37
	movq      %rbx, %rax
	jmp       .L38
	.p2align 4,,10
	.p2align 3
.L40:
	testb     %dl, %dl
	je        .L31
.L38:
	addq      $1, %rax
	movzbl    (%rax), %edx
	cmpb      $109, %dl
	jne       .L40
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L46
	.p2align 4,,10
	.p2align 3
.L31:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L37:
	movsbl    %al, %edi
	movq      %rbp, %rsi
	call      fputc@PLT
	movq      %rbx, %rax
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L46
	jmp       .L31
.L34:
	addq      $8, %rsp
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	popq      %rbx
	popq      %rbp
	jmp       fputs@PLT
	.cfi_endproc
	.size	normalErrS, .-normalErrS
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Can't ask for confirmation. Please define cb_pari_ask_confirm()"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	pari_ask_confirm
	.type	pari_ask_confirm, @function
pari_ask_confirm:
	.cfi_startproc
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      cb_pari_ask_confirm@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	testq     %rax, %rax
	je        .L54
	addq      $8, %rsp
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L54:
	leaq      .LC0(%rip), %rsi
	movl      $5, %edi
	call      pari_err@PLT
	movq      (%rbx), %rax
	addq      $8, %rsp
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	jmp       *%rax
	.cfi_endproc
	.size	pari_ask_confirm, .-pari_ask_confirm
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"mallocing NULL object"
.LC2:
	.string	"embedded braces (in parser)"
.LC3:
	.string	"unexpected closing brace"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	filtre
	.type	filtre, @function
filtre:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $40, %rsp
	movl      %esi, (%rsp)
	call      strlen@PLT
	addq      $1, %rax
	jne       .L122
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	movq      $0, 8(%rsp)
	cmpq      $0, (%rax)
	jne       .L123
.L58:
	movzbl    (%rbp), %r12d
	movq      8(%rsp), %r15
	xorl      %r13d, %r13d
	movl      $0, 4(%rsp)
	xorl      %r14d, %r14d
	jmp       .L59
	.p2align 4,,10
	.p2align 3
.L125:
	cmpb      $34, %r12b
	movb      %r12b, (%r15)
	leaq      1(%r15), %rax
	movzbl    1(%rbp), %edx
	je        .L62
	cmpb      $92, %r12b
	je        .L63
	movq      %rax, %r15
	movq      %rbx, %rbp
	.p2align 4,,10
	.p2align 3
.L64:
	movl      %edx, %r12d
.L59:
	testb     %r12b, %r12b
	leaq      1(%rbp), %rbx
	je        .L124
	testl     %r14d, %r14d
	jne       .L125
	testl     %r13d, %r13d
	je        .L65
	cmpl      $1, %r13d
	je        .L67
	cmpb      $10, %r12b
	je        .L126
	movzbl    1(%rbp), %eax
	xorl      %edx, %edx
	movq      %rbx, %rbp
	testb     %al, %al
	jne       .L115
	jmp       .L69
	.p2align 4,,10
	.p2align 3
.L74:
	movzbl    1(%rbx), %eax
	testb     %al, %al
	je        .L97
	movq      %rbp, %rbx
.L115:
	cmpb      $10, %al
	leaq      1(%rbx), %rbp
	jne       .L74
	movzbl    1(%rbx), %edx
.L69:
	xorl      %r13d, %r13d
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L72:
	movzbl    (%rbx), %r12d
	testb     %r12b, %r12b
	je        .L71
.L128:
	addq      $1, %rbx
.L67:
	cmpb      $42, %r12b
	jne       .L72
	movzbl    (%rbx), %edx
	cmpb      $47, %dl
	je        .L127
	movl      %edx, %r12d
	testb     %r12b, %r12b
	jne       .L128
	.p2align 4,,10
	.p2align 3
.L71:
	movb      $0, (%r15)
	movq      8(%rsp), %rax
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L65:
	cmpb      $92, %r12b
	je        .L129
.L76:
	call      __ctype_b_loc@PLT
	movq      (%rax), %rax
	movsbq    %r12b, %rsi
	testb     $32, 1(%rax,%rsi,2)
	je        .L77
	movzbl    1(%rbp), %edx
	movq      %rbx, %rbp
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L63:
	testb     %dl, %dl
	je        .L95
	movb      %dl, 1(%r15)
	addq      $2, %rbp
	movzbl    (%rbp), %edx
	addq      $2, %r15
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L62:
	movq      %rax, %r15
	movq      %rbx, %rbp
	xorl      %r14d, %r14d
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L77:
	movl      (%rsp), %ecx
	leaq      1(%r15), %rdi
	movl      %r12d, %eax
	testl     %ecx, %ecx
	je        .L78
	movsbl    %r12b, %eax
	leal      128(%rax), %r10d
	cmpl      $383, %r10d
	ja        .L78
	movq      %rdi, 24(%rsp)
	movq      %rsi, 16(%rsp)
	call      __ctype_tolower_loc@PLT
	movq      16(%rsp), %rsi
	movq      (%rax), %rax
	movq      24(%rsp), %rdi
	movl      (%rax,%rsi,4), %eax
	.p2align 4,,10
	.p2align 3
.L78:
	cmpb      $92, %r12b
	movb      %al, (%r15)
	je        .L82
	jg        .L83
	cmpb      $34, %r12b
	je        .L84
	cmpb      $47, %r12b
	.p2align 4,,3
	jne       .L81
	movzbl    1(%rbp), %eax
	movl      $42, %edx
	movq      %rbx, %rbp
	cmpb      $42, %al
	sete      %r13b
	cmovne    %eax, %edx
	cmovne    %rdi, %r15
	movzbl    %r13b, %r13d
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L95:
	movq      %rax, %r15
	movq      %rbx, %rbp
	xorl      %edx, %edx
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L97:
	xorl      %edx, %edx
	jmp       .L69
	.p2align 4,,10
	.p2align 3
.L129:
	cmpb      $92, 1(%rbp)
	jne       .L76
	movq      %rbx, %rbp
	movl      $92, %edx
	movl      $2, %r13d
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L83:
	cmpb      $123, %r12b
	je        .L86
	cmpb      $125, %r12b
	jne       .L81
	movl      4(%rsp), %eax
	testl     %eax, %eax
	je        .L130
.L92:
	movzbl    1(%rbp), %edx
	movl      $0, 4(%rsp)
	movq      %rbx, %rbp
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L127:
	leaq      1(%rbx), %rbp
	movzbl    1(%rbx), %edx
	jmp       .L69
	.p2align 4,,10
	.p2align 3
.L124:
	cmpq      8(%rsp), %r15
	je        .L71
	cmpb      $125, -1(%r15)
	jne       .L71
	cmpl      $1, 4(%rsp)
	adcq      $-1, %r15
	jmp       .L71
	.p2align 4,,10
	.p2align 3
.L82:
	movzbl    1(%rbp), %edx
	testb     %dl, %dl
	jne       .L88
	leaq      -1(%r15), %rax
	cmpq      %rax, 8(%rsp)
	ja        .L71
	cmpb      $63, -1(%r15)
	jne       .L71
	movq      %rdi, %r15
	movq      %rbx, %rbp
	xorl      %edx, %edx
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L81:
	movzbl    1(%rbp), %edx
	movq      %rdi, %r15
	movq      %rbx, %rbp
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L86:
	movl      4(%rsp), %edx
	testl     %edx, %edx
	jne       .L131
.L91:
	movzbl    1(%rbp), %edx
	movl      $1, 4(%rsp)
	movq      %rbx, %rbp
	jmp       .L64
	.p2align 4,,10
	.p2align 3
.L84:
	movzbl    1(%rbp), %edx
	movq      %rdi, %r15
	movq      %rbx, %rbp
	movl      $1, %r14d
	jmp       .L64
.L88:
	cmpb      $13, %dl
	je        .L132
	movq      %rbx, %rbp
.L89:
	cmpb      $10, %dl
	je        .L133
.L104:
	movq      %rdi, %r15
	jmp       .L64
.L126:
	movzbl    1(%rbp), %edx
	movq      %rbx, %rbp
	jmp       .L69
.L130:
	leaq      .LC3(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L92
.L131:
	leaq      .LC2(%rip), %rsi
	movl      $7, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L91
.L133:
	leaq      -1(%r15), %rax
	cmpq      %rax, 8(%rsp)
	jbe       .L134
.L90:
	movzbl    1(%rbp), %edx
	leaq      1(%rbp), %rax
	testb     %dl, %dl
	je        .L71
	movq      %rax, %rbp
	jmp       .L64
.L132:
	movzbl    2(%rbp), %edx
	addq      $2, %rbp
	jmp       .L89
.L134:
	cmpb      $63, -1(%r15)
	jne       .L90
	jmp       .L104
.L123:
	leaq      .LC1(%rip), %rsi
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
	jmp       .L58
.L122:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movq      %rax, %rdi
	movl      (%rbx), %r13d
	movl      $1, (%rbx)
	call      malloc@PLT
	movq      %rax, 8(%rsp)
	testl     %r13d, %r13d
	movl      %r13d, (%rbx)
	jne       .L57
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L57
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L57:
	cmpq      $0, 8(%rsp)
	jne       .L58
	movl      $28, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L58
	.cfi_endproc
	.size	filtre, .-filtre
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	init_filtre
	.type	init_filtre, @function
init_filtre:
	.cfi_startproc
	movq      %rsi, 48(%rdi)
	movl      $0, 24(%rdi)
	movl      $0, 28(%rdi)
	movl      $0, 40(%rdi)
	ret       
	.cfi_endproc
	.size	init_filtre, .-init_filtre
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	initout
	.type	initout, @function
initout:
	.cfi_startproc
	movq      stdin@GOTPCREL(%rip), %rax
	leaq      defaultOut(%rip), %rcx
	testl     %edi, %edi
	movq      (%rax), %rdx
	movq      pari_infile@GOTPCREL(%rip), %rax
	movq      %rdx, (%rax)
	movq      stdout@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	movq      pari_outfile@GOTPCREL(%rip), %rax
	movq      %rdx, (%rax)
	movq      stderr@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	movq      pari_errfile@GOTPCREL(%rip), %rax
	movq      %rdx, (%rax)
	movq      pariOut@GOTPCREL(%rip), %rax
	movq      %rcx, (%rax)
	je        .L136
	movq      pariErr@GOTPCREL(%rip), %rax
	leaq      defaultErr(%rip), %rsi
	movq      %rsi, (%rax)
.L136:
	rep; ret       
	.cfi_endproc
	.size	initout, .-initout
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	out_putc
	.type	out_putc, @function
out_putc:
	.cfi_startproc
	xorl      %edx, %edx
	cmpb      $10, %sil
	movq      %rdi, %rax
	sete      %dl
	movsbl    %sil, %edi
	movq      (%rax), %rax
	movl      %edx, last_was_newline(%rip)
	jmp       *%rax
	.cfi_endproc
	.size	out_putc, .-out_putc
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	pari_putc
	.type	pari_putc, @function
pari_putc:
	.cfi_startproc
	movq      pariOut@GOTPCREL(%rip), %rax
	movsbl    %dil, %esi
	movq      (%rax), %rdi
	jmp       out_putc@PLT
	.cfi_endproc
	.size	pari_putc, .-pari_putc
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	out_puts
	.type	out_puts, @function
out_puts:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $8, %rsp
	cmpb      $0, (%rsi)
	jne       .L146
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L146:
	movq      %rdi, %rbp
	movq      %rsi, %rdi
	call      strlen@PLT
	cmpb      $10, -1(%rbx,%rax)
	movq      %rbx, %rdi
	sete      %al
	movzbl    %al, %eax
	movl      %eax, last_was_newline(%rip)
	movq      8(%rbp), %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	jmp       *%rax
	.cfi_endproc
	.size	out_puts, .-out_puts
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	pari_puts
	.type	pari_puts, @function
pari_puts:
	.cfi_startproc
	movq      pariOut@GOTPCREL(%rip), %rax
	movq      %rdi, %rsi
	movq      (%rax), %rdi
	jmp       out_puts@PLT
	.cfi_endproc
	.size	pari_puts, .-pari_puts
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	pari_last_was_newline
	.type	pari_last_was_newline, @function
pari_last_was_newline:
	.cfi_startproc
	movl      last_was_newline(%rip), %eax
	ret       
	.cfi_endproc
	.size	pari_last_was_newline, .-pari_last_was_newline
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	pari_set_last_newline
	.type	pari_set_last_newline, @function
pari_set_last_newline:
	.cfi_startproc
	movl      %edi, last_was_newline(%rip)
	ret       
	.cfi_endproc
	.size	pari_set_last_newline, .-pari_set_last_newline
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	pari_flush
	.type	pari_flush, @function
pari_flush:
	.cfi_startproc
	movq      pariOut@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      16(%rax), %rax
	jmp       *%rax
	.cfi_endproc
	.size	pari_flush, .-pari_flush
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	err_flush
	.type	err_flush, @function
err_flush:
	.cfi_startproc
	movq      pariErr@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      16(%rax), %rax
	jmp       *%rax
	.cfi_endproc
	.size	err_flush, .-err_flush
# ----------------------
	.data
	.align 16
	.local	last_was_newline
	.type	last_was_newline, @object
last_was_newline:
	.long	1
	.size	last_was_newline, 4
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 16
	.local	defaultErr
	.type	defaultErr, @object
defaultErr:
	.quad	normalErrC
	.quad	normalErrS
	.quad	normalErrF
	.size	defaultErr, 24
# ----------------------
	.align 16
	.local	defaultOut
	.type	defaultOut, @object
defaultOut:
	.quad	normalOutC
	.quad	normalOutS
	.quad	normalOutF
	.size	defaultOut, 24
# ----------------------
	.comm	pariErr,8,8
# ----------------------
	.comm	pariOut,8,8
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
