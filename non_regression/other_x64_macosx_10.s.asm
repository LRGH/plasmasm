	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp3:
Ltmp4:
	movq      %rsp, %rbp
Ltmp5:
	pushq     %rbx
	subq      $40, %rsp
Ltmp6:
	leaq      _handler(%rip), %rbx
	movq      %rbx, -24(%rbp)
	movl      $0, -12(%rbp)
	movl      $0, -16(%rbp)
	leaq      -24(%rbp), %rsi
	movl      $6, %edi
	xorl      %edx, %edx
	call      _sigaction
	testl     %eax, %eax
	jne       LBB0_1
	movl      $6, %edi
	call      _raise
	testl     %eax, %eax
	jne       LBB0_4
	movl      $20, -12(%rbp)
	leaq      -24(%rbp), %rsi
	leaq      -40(%rbp), %rdx
	movl      $6, %edi
	call      _sigaction
	testl     %eax, %eax
	jne       LBB0_6
	testb     $127, -28(%rbp)
	jne       LBB0_8
	cmpq      %rbx, -40(%rbp)
	jne       LBB0_10
	movl      $6, %edi
	call      _raise
	testl     %eax, %eax
	jne       LBB0_12
	movq      $0, -24(%rbp)
	leaq      -24(%rbp), %rsi
	leaq      -40(%rbp), %rdx
	movl      $6, %edi
	call      _sigaction
	testl     %eax, %eax
	jne       LBB0_14
	testb     $64, -28(%rbp)
	jne       LBB0_16
	cmpq      $0, -40(%rbp)
	jne       LBB0_18
	movq      $1, -24(%rbp)
	leaq      -24(%rbp), %rsi
	movl      $6, %edi
	xorl      %edx, %edx
	call      _sigaction
	testl     %eax, %eax
	jne       LBB0_20
	movl      $6, %edi
	call      _raise
	testl     %eax, %eax
	jne       LBB0_22
	leaq      -40(%rbp), %rdx
	movl      $6, %edi
	xorl      %esi, %esi
	call      _sigaction
	testl     %eax, %eax
	jne       LBB0_24
	cmpq      $1, -40(%rbp)
	jne       LBB0_26
	movl      $6, %edi
	call      _raise
	testl     %eax, %eax
	jne       LBB0_28
	xorl      %eax, %eax
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	ret       
LBB0_1:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str3(%rip), %r9
	movl      $98, %ecx
	jmp       LBB0_2
LBB0_4:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $99, %ecx
	jmp       LBB0_2
LBB0_6:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str5(%rip), %r9
	movl      $102, %ecx
	jmp       LBB0_2
LBB0_8:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str6(%rip), %r9
	movl      $103, %ecx
	jmp       LBB0_2
LBB0_10:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str7(%rip), %r9
	movl      $104, %ecx
	jmp       LBB0_2
LBB0_12:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $105, %ecx
	jmp       LBB0_2
LBB0_14:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str5(%rip), %r9
	movl      $108, %ecx
	jmp       LBB0_2
LBB0_16:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str8(%rip), %r9
	movl      $109, %ecx
	jmp       LBB0_2
LBB0_18:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str9(%rip), %r9
	movl      $111, %ecx
	jmp       LBB0_2
LBB0_20:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str3(%rip), %r9
	movl      $115, %ecx
	jmp       LBB0_2
LBB0_22:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $116, %ecx
	jmp       LBB0_2
LBB0_24:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str10(%rip), %r9
	movl      $117, %ecx
	jmp       LBB0_2
LBB0_26:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str11(%rip), %r9
	movl      $118, %ecx
	jmp       LBB0_2
LBB0_28:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $119, %ecx
LBB0_2:
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      %r8, %rsi
	movq      %r9, %r8
	call      _fprintf
	movq      (%rbx), %rax
	movq      %rax, %rdi
	call      _rpl_fflush
	call      _abort
	.align 4, 0x90
_handler:
	pushq     %rbp
Ltmp10:
Ltmp11:
	movq      %rsp, %rbp
Ltmp12:
	pushq     %rbx
	subq      $24, %rsp
Ltmp13:
	cmpl      $6, %edi
	jne       LBB1_1
	leaq      -24(%rbp), %rdx
	movl      $6, %edi
	xorl      %esi, %esi
	call      _sigaction
	testl     %eax, %eax
	jne       LBB1_4
	movl      -12(%rbp), %eax
	testb     $64, %al
	jne       LBB1_6
	movl      _handler.entry_count(%rip), %ecx
	leal      1(%rcx), %edx
	movl      %edx, _handler.entry_count(%rip)
	cmpl      $1, %ecx
	jne       LBB1_8
	cmpq      $0, -24(%rbp)
	je        LBB1_16
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str17(%rip), %r9
	movl      $81, %ecx
	jmp       LBB1_2
LBB1_8:
	testl     %ecx, %ecx
	jne       LBB1_15
	testb     $4, %al
	jne       LBB1_10
	leaq      _handler(%rip), %rax
	cmpq      %rax, -24(%rbp)
	jne       LBB1_12
LBB1_16:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
LBB1_1:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str12(%rip), %r9
	movl      $67, %ecx
	jmp       LBB1_2
LBB1_4:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str13(%rip), %r9
	movl      $68, %ecx
	jmp       LBB1_2
LBB1_6:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str14(%rip), %r9
	movl      $69, %ecx
	jmp       LBB1_2
LBB1_15:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str18(%rip), %r9
	movl      $85, %ecx
	jmp       LBB1_2
LBB1_10:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str15(%rip), %r9
	movl      $73, %ecx
	jmp       LBB1_2
LBB1_12:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str16(%rip), %r9
	movl      $74, %ecx
LBB1_2:
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      %r8, %rsi
	movq      %r9, %r8
	call      _fprintf
	movq      (%rbx), %rax
	movq      %rax, %rdi
	call      _rpl_fflush
	call      _abort
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"%s:%d: assertion '%s' failed\n"
L_.str1:
	.asciz	"gnulib-tests/test-sigaction.c"
L_.str3:
	.asciz	"sigaction (SIGABRT, &sa, NULL) == 0"
L_.str4:
	.asciz	"raise (SIGABRT) == 0"
L_.str5:
	.asciz	"sigaction (SIGABRT, &sa, &old_sa) == 0"
L_.str6:
	.asciz	"(old_sa.sa_flags & MASK_SA_FLAGS) == 0"
L_.str7:
	.asciz	"old_sa.sa_handler == handler"
L_.str8:
	.asciz	"(old_sa.sa_flags & SA_SIGINFO) == 0"
L_.str9:
	.asciz	"old_sa.sa_handler == SIG_DFL"
L_.str10:
	.asciz	"sigaction (SIGABRT, NULL, &old_sa) == 0"
L_.str11:
	.asciz	"old_sa.sa_handler == SIG_IGN"
L_.str12:
	.asciz	"sig == SIGABRT"
L_.str13:
	.asciz	"sigaction (SIGABRT, NULL, &sa) == 0"
L_.str14:
	.asciz	"(sa.sa_flags & SA_SIGINFO) == 0"
L_.str15:
	.asciz	"(sa.sa_flags & SA_RESETHAND) == 0"
L_.str16:
	.asciz	"sa.sa_handler == handler"
L_.str17:
	.asciz	"sa.sa_handler == SIG_DFL"
L_.str18:
	.asciz	"0"
# ----------------------
.zerofill __DATA,__bss,_handler.entry_count,4,2
# ----------------------

.subsections_via_symbols
