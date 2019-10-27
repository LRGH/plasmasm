	.file	"es.c"
	.data
	.local	last_was_newline
	.type	last_was_newline, @object
last_was_newline:
	.long	1
	.size	last_was_newline, 4
# ----------------------
	.section       .data.rel.local,"wa",@progbits
	.local	defaultErr
	.type	defaultErr, @object
defaultErr:
	.quad	normalErrC
	.quad	normalErrS
	.quad	normalErrF
	.size	defaultErr, 24
# ----------------------
.LD00000018.rel.local:
	.zero	8
# ----------------------
	.local	defaultOut
	.type	defaultOut, @object
defaultOut:
	.quad	normalOutC
	.quad	normalOutS
	.quad	normalOutF
	.size	defaultOut, 24
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC0:
	.string	"Can't ask for confirmation. Please define cb_pari_ask_confirm()"
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
	.local	normalErrF
	.type	normalErrF, @function
normalErrF:
	subq      $8, %rsp
	movq      pari_errfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      fflush@PLT
.L00000013:
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	addq      $8, %rsp
	jmp       fflush@PLT
	.size	normalErrF, .-normalErrF
# ----------------------
.L00000026:
	.p2align 4
# ----------------------
	.local	normalOutF
	.type	normalOutF, @function
normalOutF:
	subq      $8, %rsp
	movq      pari_outfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      fflush@PLT
.L00000043:
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	addq      $8, %rsp
	jmp       fflush@PLT
	.size	normalOutF, .-normalOutF
# ----------------------
.L00000056:
	.p2align 4
# ----------------------
	.local	normalOutS
	.type	normalOutS, @function
normalOutS:
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      pari_outfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      fputs@PLT
.L00000078:
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	testq     %rbp, %rbp
	je        .L000000C8
.L00000087:
	movq      logstyle@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	je        .L000000EC
.L00000094:
	movzbl    (%rbx), %eax
	testb     %al, %al
	je        .L000000C8
.L0000009B:
	cmpb      $27, %al
	jne       .L000000D0
.L0000009F:
	movq      %rbx, %rax
	jmp       .L000000AC
.L000000A4:
	.p2align 3
.L000000A8:
	testb     %dl, %dl
	je        .L000000C8
.L000000AC:
	addq      $1, %rax
	movzbl    (%rax), %edx
	cmpb      $109, %dl
	jne       .L000000A8
.L000000B8:
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L0000009B
.L000000C4:
	.p2align 3
.L000000C8:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000000CF:
	.p2align 3
.L000000D0:
	movsbl    %al, %edi
	movq      %rbp, %rsi
	call      fputc@PLT
.L000000DB:
	movq      %rbx, %rax
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L0000009B
.L000000EA:
	jmp       .L000000C8
.L000000EC:
	addq      $8, %rsp
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	popq      %rbx
	popq      %rbp
	jmp       fputs@PLT
	.size	normalOutS, .-normalOutS
# ----------------------
.L000000FD:
	.p2align 3
# ----------------------
	.local	normalErrC
	.type	normalErrC, @function
normalErrC:
	movq      pari_errfile@GOTPCREL(%rip), %rax
	pushq     %rbx
	movsbl    %dil, %ebx
	movl      %ebx, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
.L00000116:
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        .L00000130
.L00000125:
	movl      %ebx, %edi
	popq      %rbx
	jmp       _IO_putc@PLT
.L0000012D:
	.p2align 3
.L00000130:
	popq      %rbx
	ret       
	.size	normalErrC, .-normalErrC
# ----------------------
.L00000132:
	.p2align 4
# ----------------------
	.local	normalOutC
	.type	normalOutC, @function
normalOutC:
	movq      pari_outfile@GOTPCREL(%rip), %rax
	pushq     %rbx
	movsbl    %dil, %ebx
	movl      %ebx, %edi
	movq      (%rax), %rsi
	call      _IO_putc@PLT
.L00000156:
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        .L00000170
.L00000165:
	movl      %ebx, %edi
	popq      %rbx
	jmp       _IO_putc@PLT
.L0000016D:
	.p2align 3
.L00000170:
	popq      %rbx
	ret       
	.size	normalOutC, .-normalOutC
# ----------------------
.L00000172:
	.p2align 4
# ----------------------
	.local	normalErrS
	.type	normalErrS, @function
normalErrS:
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      pari_errfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      fputs@PLT
.L00000198:
	movq      pari_logfile@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	testq     %rbp, %rbp
	je        .L000001E8
.L000001A7:
	movq      logstyle@GOTPCREL(%rip), %rax
	cmpq      $2, (%rax)
	je        .L0000020C
.L000001B4:
	movzbl    (%rbx), %eax
	testb     %al, %al
	je        .L000001E8
.L000001BB:
	cmpb      $27, %al
	jne       .L000001F0
.L000001BF:
	movq      %rbx, %rax
	jmp       .L000001CC
.L000001C4:
	.p2align 3
.L000001C8:
	testb     %dl, %dl
	je        .L000001E8
.L000001CC:
	addq      $1, %rax
	movzbl    (%rax), %edx
	cmpb      $109, %dl
	jne       .L000001C8
.L000001D8:
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L000001BB
.L000001E4:
	.p2align 3
.L000001E8:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000001EF:
	.p2align 3
.L000001F0:
	movsbl    %al, %edi
	movq      %rbp, %rsi
	call      fputc@PLT
.L000001FB:
	movq      %rbx, %rax
	leaq      1(%rax), %rbx
	movzbl    1(%rax), %eax
	testb     %al, %al
	jne       .L000001BB
.L0000020A:
	jmp       .L000001E8
.L0000020C:
	addq      $8, %rsp
	movq      %rbx, %rdi
	movq      %rbp, %rsi
	popq      %rbx
	popq      %rbp
	jmp       fputs@PLT
	.size	normalErrS, .-normalErrS
# ----------------------
.L0000021D:
	.p2align 3
# ----------------------
	.globl	pari_ask_confirm
	.type	pari_ask_confirm, @function
pari_ask_confirm:
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      cb_pari_ask_confirm@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rax
	testq     %rax, %rax
	je        .L00000248
.L00000238:
	addq      $8, %rsp
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	jmp       *%rax
.L00000243:
	.p2align 3
.L00000248:
	leaq      .LC0(%rip), %rsi
	movl      $5, %edi
	call      pari_err@PLT
.L00000259:
	movq      (%rbx), %rax
	addq      $8, %rsp
	movq      %rbp, %rdi
	popq      %rbx
	popq      %rbp
	jmp       *%rax
	.size	pari_ask_confirm, .-pari_ask_confirm
# ----------------------
.L00000267:
	.p2align 4
# ----------------------
	.globl	filtre
	.type	filtre, @function
filtre:
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
.L00000289:
	addq      $1, %rax
	jne       .L0000065E
.L00000293:
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	movq      $0, 8(%rsp)
	cmpq      $0, (%rax)
	jne       .L00000649
.L000002AD:
	movzbl    (%rbp), %r12d
	movq      8(%rsp), %r15
	xorl      %r13d, %r13d
	movl      $0, 4(%rsp)
	xorl      %r14d, %r14d
	jmp       .L000002FB
.L000002C7:
	.p2align 4
.L000002D0:
	cmpb      $34, %r12b
	movb      %r12b, (%r15)
	leaq      1(%r15), %rax
	movzbl    1(%rbp), %edx
	je        .L00000400
.L000002E5:
	cmpb      $92, %r12b
	je        .L000003E0
.L000002EF:
	movq      %rax, %r15
	movq      %rbx, %rbp
	.p2align 3
.L000002F8:
	movl      %edx, %r12d
.L000002FB:
	testb     %r12b, %r12b
	leaq      1(%rbp), %rbx
	je        .L00000528
.L00000308:
	testl     %r14d, %r14d
	jne       .L000002D0
.L0000030D:
	testl     %r13d, %r13d
	je        .L000003B0
.L00000316:
	cmpl      $1, %r13d
	je        .L0000036D
.L0000031C:
	cmpb      $10, %r12b
	je        .L000005DA
.L00000326:
	movzbl    1(%rbp), %eax
	xorl      %edx, %edx
	movq      %rbx, %rbp
	testb     %al, %al
	jne       .L00000347
.L00000333:
	jmp       .L00000353
.L00000335:
	.p2align 3
.L00000338:
	movzbl    1(%rbx), %eax
	testb     %al, %al
	je        .L000004B0
.L00000344:
	movq      %rbp, %rbx
.L00000347:
	cmpb      $10, %al
	leaq      1(%rbx), %rbp
	jne       .L00000338
.L0000034F:
	movzbl    1(%rbx), %edx
.L00000353:
	xorl      %r13d, %r13d
	jmp       .L000002F8
.L00000358:
	.p2align 4
.L00000360:
	movzbl    (%rbx), %r12d
	testb     %r12b, %r12b
	je        .L00000390
.L00000369:
	addq      $1, %rbx
.L0000036D:
	cmpb      $42, %r12b
	jne       .L00000360
.L00000373:
	movzbl    (%rbx), %edx
	cmpb      $47, %dl
	je        .L00000518
.L0000037F:
	movl      %edx, %r12d
	testb     %r12b, %r12b
	jne       .L00000369
.L00000387:
	.p2align 4
.L00000390:
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
.L000003A8:
	.p2align 4
.L000003B0:
	cmpb      $92, %r12b
	je        .L000004C0
.L000003BA:
	call      __ctype_b_loc@PLT
.L000003BF:
	movq      (%rax), %rax
	movsbq    %r12b, %rsi
	testb     $32, 1(%rax,%rsi,2)
	je        .L00000410
.L000003CD:
	movzbl    1(%rbp), %edx
	movq      %rbx, %rbp
	jmp       .L000002F8
.L000003D9:
	.p2align 4
.L000003E0:
	testb     %dl, %dl
	je        .L000004A0
.L000003E8:
	movb      %dl, 1(%r15)
	addq      $2, %rbp
	movzbl    (%rbp), %edx
	addq      $2, %r15
	jmp       .L000002F8
.L000003FD:
	.p2align 3
.L00000400:
	movq      %rax, %r15
	movq      %rbx, %rbp
	xorl      %r14d, %r14d
	jmp       .L000002F8
.L0000040E:
	.p2align 3
.L00000410:
	movl      (%rsp), %ecx
	leaq      1(%r15), %rdi
	movl      %r12d, %eax
	testl     %ecx, %ecx
	je        .L00000458
.L0000041E:
	movsbl    %r12b, %eax
	leal      128(%rax), %r10d
	cmpl      $383, %r10d
	ja        .L00000458
.L00000432:
	movq      %rdi, 24(%rsp)
	movq      %rsi, 16(%rsp)
	call      __ctype_tolower_loc@PLT
.L00000441:
	movq      16(%rsp), %rsi
	movq      (%rax), %rax
	movq      24(%rsp), %rdi
	movl      (%rax,%rsi,4), %eax
	.p2align 3
.L00000458:
	cmpb      $92, %r12b
	movb      %al, (%r15)
	je        .L00000550
.L00000465:
	jg        .L000004E0
.L00000467:
	cmpb      $34, %r12b
	je        .L000005B0
.L00000471:
	cmpb      $47, %r12b
	jne       .L00000580
.L0000047B:
	movzbl    1(%rbp), %eax
	movl      $42, %edx
	movq      %rbx, %rbp
	cmpb      $42, %al
	sete      %r13b
	cmovne    %eax, %edx
	cmovne    %rdi, %r15
	movzbl    %r13b, %r13d
	jmp       .L000002F8
.L0000049D:
	.p2align 3
.L000004A0:
	movq      %rax, %r15
	movq      %rbx, %rbp
	xorl      %edx, %edx
	jmp       .L000002F8
.L000004AD:
	.p2align 3
.L000004B0:
	xorl      %edx, %edx
	jmp       .L00000353
.L000004B7:
	.p2align 4
.L000004C0:
	cmpb      $92, 1(%rbp)
	jne       .L000003BA
.L000004CA:
	movq      %rbx, %rbp
	movl      $92, %edx
	movl      $2, %r13d
	jmp       .L000002F8
.L000004DD:
	.p2align 3
.L000004E0:
	cmpb      $123, %r12b
	je        .L00000590
.L000004EA:
	cmpb      $125, %r12b
	jne       .L00000580
.L000004F4:
	movl      4(%rsp), %eax
	testl     %eax, %eax
	je        .L000005E6
.L00000500:
	movzbl    1(%rbp), %edx
	movl      $0, 4(%rsp)
	movq      %rbx, %rbp
	jmp       .L000002F8
.L00000514:
	.p2align 3
.L00000518:
	leaq      1(%rbx), %rbp
	movzbl    1(%rbx), %edx
	jmp       .L00000353
.L00000525:
	.p2align 3
.L00000528:
	cmpq      8(%rsp), %r15
	je        .L00000390
.L00000533:
	cmpb      $125, -1(%r15)
	jne       .L00000390
.L0000053E:
	cmpl      $1, 4(%rsp)
	adcq      $-1, %r15
	jmp       .L00000390
.L0000054C:
	.p2align 3
.L00000550:
	movzbl    1(%rbp), %edx
	testb     %dl, %dl
	jne       .L000005C5
.L00000558:
	leaq      -1(%r15), %rax
	cmpq      %rax, 8(%rsp)
	ja        .L00000390
.L00000567:
	cmpb      $63, -1(%r15)
	jne       .L00000390
.L00000572:
	movq      %rdi, %r15
	movq      %rbx, %rbp
	xorl      %edx, %edx
	jmp       .L000002F8
.L0000057F:
	.p2align 3
.L00000580:
	movzbl    1(%rbp), %edx
	movq      %rdi, %r15
	movq      %rbx, %rbp
	jmp       .L000002F8
.L0000058F:
	.p2align 3
.L00000590:
	movl      4(%rsp), %edx
	testl     %edx, %edx
	jne       .L000005FE
.L00000598:
	movzbl    1(%rbp), %edx
	movl      $1, 4(%rsp)
	movq      %rbx, %rbp
	jmp       .L000002F8
.L000005AC:
	.p2align 3
.L000005B0:
	movzbl    1(%rbp), %edx
	movq      %rdi, %r15
	movq      %rbx, %rbp
	movl      $1, %r14d
	jmp       .L000002F8
.L000005C5:
	cmpb      $13, %dl
	je        .L00000636
.L000005CA:
	movq      %rbx, %rbp
.L000005CD:
	cmpb      $10, %dl
	je        .L00000613
.L000005D2:
	movq      %rdi, %r15
	jmp       .L000002F8
.L000005DA:
	movzbl    1(%rbp), %edx
	movq      %rbx, %rbp
	jmp       .L00000353
.L000005E6:
	leaq      .LC3(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000005F9:
	jmp       .L00000500
.L000005FE:
	leaq      .LC2(%rip), %rsi
	movl      $7, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00000611:
	jmp       .L00000598
.L00000613:
	leaq      -1(%r15), %rax
	cmpq      %rax, 8(%rsp)
	jbe       .L00000640
.L0000061E:
	movzbl    1(%rbp), %edx
	leaq      1(%rbp), %rax
	testb     %dl, %dl
	je        .L00000390
.L0000062E:
	movq      %rax, %rbp
	jmp       .L000002F8
.L00000636:
	movzbl    2(%rbp), %edx
	addq      $2, %rbp
	jmp       .L000005CD
.L00000640:
	cmpb      $63, -1(%r15)
	jne       .L0000061E
.L00000647:
	jmp       .L000005D2
.L00000649:
	leaq      .LC1(%rip), %rsi
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
.L00000659:
	jmp       .L000002AD
.L0000065E:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbx
	movq      %rax, %rdi
	movl      (%rbx), %r13d
	movl      $1, (%rbx)
	call      malloc@PLT
.L00000676:
	movq      %rax, 8(%rsp)
	testl     %r13d, %r13d
	movl      %r13d, (%rbx)
	jne       .L0000069D
.L00000683:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L0000069D
.L00000690:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L0000069D:
	cmpq      $0, 8(%rsp)
	jne       .L000002AD
.L000006A9:
	movl      $28, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000006B5:
	jmp       .L000002AD
	.size	filtre, .-filtre
# ----------------------
.L000006BA:
	.p2align 3
# ----------------------
	.globl	init_filtre
	.type	init_filtre, @function
init_filtre:
	movq      %rsi, 48(%rdi)
	movl      $0, 24(%rdi)
	movl      $0, 28(%rdi)
	movl      $0, 40(%rdi)
	ret       
	.size	init_filtre, .-init_filtre
# ----------------------
.L000006DA:
	.p2align 3
# ----------------------
	.globl	initout
	.type	initout, @function
initout:
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
	je        .L00000742
.L00000731:
	movq      pariErr@GOTPCREL(%rip), %rax
	leaq      defaultErr(%rip), %rsi
	movq      %rsi, (%rax)
.L00000742:
	rep; ret       
	.size	initout, .-initout
# ----------------------
.L00000744:
	.p2align 4
# ----------------------
	.globl	out_putc
	.type	out_putc, @function
out_putc:
	xorl      %edx, %edx
	cmpb      $10, %sil
	movq      %rdi, %rax
	sete      %dl
	movsbl    %sil, %edi
	movq      (%rax), %rax
	movl      %edx, last_was_newline(%rip)
	jmp       *%rax
	.size	out_putc, .-out_putc
# ----------------------
.L0000076B:
	.p2align 3
# ----------------------
	.globl	pari_putc
	.type	pari_putc, @function
pari_putc:
	movq      pariOut@GOTPCREL(%rip), %rax
	movsbl    %dil, %esi
	movq      (%rax), %rdi
	jmp       out_putc@PLT
	.size	pari_putc, .-pari_putc
# ----------------------
.L00000783:
	.p2align 4
# ----------------------
	.globl	out_puts
	.type	out_puts, @function
out_puts:
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $8, %rsp
	cmpb      $0, (%rsi)
	jne       .L000007A8
.L0000079E:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000007A5:
	.p2align 3
.L000007A8:
	movq      %rdi, %rbp
	movq      %rsi, %rdi
	call      strlen@PLT
.L000007B3:
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
	.size	out_puts, .-out_puts
# ----------------------
.L000007D3:
	.p2align 4
# ----------------------
	.globl	pari_puts
	.type	pari_puts, @function
pari_puts:
	movq      pariOut@GOTPCREL(%rip), %rax
	movq      %rdi, %rsi
	movq      (%rax), %rdi
	jmp       out_puts@PLT
	.size	pari_puts, .-pari_puts
# ----------------------
.L000007F2:
	.p2align 4
# ----------------------
	.globl	pari_last_was_newline
	.type	pari_last_was_newline, @function
pari_last_was_newline:
	movl      last_was_newline(%rip), %eax
	ret       
	.size	pari_last_was_newline, .-pari_last_was_newline
# ----------------------
.L00000807:
	.p2align 4
# ----------------------
	.globl	pari_set_last_newline
	.type	pari_set_last_newline, @function
pari_set_last_newline:
	movl      %edi, last_was_newline(%rip)
	ret       
	.size	pari_set_last_newline, .-pari_set_last_newline
# ----------------------
.L00000817:
	.p2align 4
# ----------------------
	.globl	pari_flush
	.type	pari_flush, @function
pari_flush:
	movq      pariOut@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      16(%rax), %rax
	jmp       *%rax
	.size	pari_flush, .-pari_flush
# ----------------------
	.globl	err_flush
	.type	err_flush, @function
err_flush:
	movq      pariErr@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      16(%rax), %rax
	jmp       *%rax
	.size	err_flush, .-err_flush
# ----------------------
	.comm	pariOut,8,8
# ----------------------
	.comm	pariErr,8,8
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
