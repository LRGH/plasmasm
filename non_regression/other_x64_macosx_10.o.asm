	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	subq      $40, %rsp
	leaq      _handler(%rip), %rbx
	movq      %rbx, -24(%rbp)
	movl      $0, -12(%rbp)
	movl      $0, -16(%rbp)
	leaq      -24(%rbp), %rsi
	movl      $6, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000032:
	testl     %eax, %eax
	jne       L0000013A
L0000003A:
	movl      $6, %edi
	call      _raise
L00000044:
	testl     %eax, %eax
	jne       L00000163
L0000004C:
	movl      $20, -12(%rbp)
	leaq      -24(%rbp), %rsi
	leaq      -40(%rbp), %rdx
	movl      $6, %edi
	call      _sigaction
L00000065:
	testl     %eax, %eax
	jne       L0000018C
L0000006D:
	testb     $127, -28(%rbp)
	jne       L000001B5
L00000077:
	cmpq      %rbx, -40(%rbp)
	jne       L000001DE
L00000081:
	movl      $6, %edi
	call      _raise
L0000008B:
	testl     %eax, %eax
	jne       L00000207
L00000093:
	movq      $0, -24(%rbp)
	leaq      -24(%rbp), %rsi
	leaq      -40(%rbp), %rdx
	movl      $6, %edi
	call      _sigaction
L000000AD:
	testl     %eax, %eax
	jne       L00000230
L000000B5:
	testb     $64, -28(%rbp)
	jne       L00000259
L000000BF:
	cmpq      $0, -40(%rbp)
	jne       L00000282
L000000CA:
	movq      $1, -24(%rbp)
	leaq      -24(%rbp), %rsi
	movl      $6, %edi
	xorl      %edx, %edx
	call      _sigaction
L000000E2:
	testl     %eax, %eax
	jne       L000002AB
L000000EA:
	movl      $6, %edi
	call      _raise
L000000F4:
	testl     %eax, %eax
	jne       L000002D4
L000000FC:
	leaq      -40(%rbp), %rdx
	movl      $6, %edi
	xorl      %esi, %esi
	call      _sigaction
L0000010C:
	testl     %eax, %eax
	jne       L000002FA
L00000114:
	cmpq      $1, -40(%rbp)
	jne       L00000320
L0000011F:
	movl      $6, %edi
	call      _raise
L00000129:
	testl     %eax, %eax
	jne       L00000346
L00000131:
	xorl      %eax, %eax
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	ret       
L0000013A:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str3(%rip), %r9
	movl      $98, %ecx
	jmp       L0000036A
L00000163:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $99, %ecx
	jmp       L0000036A
L0000018C:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str5(%rip), %r9
	movl      $102, %ecx
	jmp       L0000036A
L000001B5:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str6(%rip), %r9
	movl      $103, %ecx
	jmp       L0000036A
L000001DE:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str7(%rip), %r9
	movl      $104, %ecx
	jmp       L0000036A
L00000207:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $105, %ecx
	jmp       L0000036A
L00000230:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str5(%rip), %r9
	movl      $108, %ecx
	jmp       L0000036A
L00000259:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str8(%rip), %r9
	movl      $109, %ecx
	jmp       L0000036A
L00000282:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str9(%rip), %r9
	movl      $111, %ecx
	jmp       L0000036A
L000002AB:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str3(%rip), %r9
	movl      $115, %ecx
	jmp       L0000036A
L000002D4:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $116, %ecx
	jmp       L0000036A
L000002FA:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str10(%rip), %r9
	movl      $117, %ecx
	jmp       L0000036A
L00000320:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str11(%rip), %r9
	movl      $118, %ecx
	jmp       L0000036A
L00000346:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str4(%rip), %r9
	movl      $119, %ecx
L0000036A:
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      %r8, %rsi
	movq      %r9, %r8
	call      _fprintf
L0000037A:
	movq      (%rbx), %rax
	movq      %rax, %rdi
	call      _rpl_fflush
L00000385:
	call      _abort
L0000038A:
	.align 4, 0x90
# ----------------------
_handler:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	subq      $24, %rsp
	cmpl      $6, %edi
	jne       L00000431
L000003A2:
	leaq      -24(%rbp), %rdx
	movl      $6, %edi
	xorl      %esi, %esi
	call      _sigaction
L000003B2:
	testl     %eax, %eax
	jne       L0000045A
L000003BA:
	movl      -12(%rbp), %eax
	testb     $64, %al
	jne       L00000483
L000003C5:
	movl      _handler.entry_count(%rip), %ecx
	leal      1(%rcx), %edx
	movl      %edx, _handler.entry_count(%rip)
	cmpl      $1, %ecx
	jne       L00000409
L000003D9:
	cmpq      $0, -24(%rbp)
	je        L0000042A
L000003E0:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str17(%rip), %r9
	movl      $81, %ecx
	jmp       L00000519
L00000409:
	testl     %ecx, %ecx
	jne       L000004A9
L00000411:
	testb     $4, %al
	jne       L000004CF
L00000419:
	leaq      _handler(%rip), %rax
	cmpq      %rax, -24(%rbp)
	jne       L000004F5
L0000042A:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
L00000431:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str12(%rip), %r9
	movl      $67, %ecx
	jmp       L00000519
L0000045A:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str13(%rip), %r9
	movl      $68, %ecx
	jmp       L00000519
L00000483:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str14(%rip), %r9
	movl      $69, %ecx
	jmp       L00000519
L000004A9:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str18(%rip), %r9
	movl      $85, %ecx
	jmp       L00000519
L000004CF:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str15(%rip), %r9
	movl      $73, %ecx
	jmp       L00000519
L000004F5:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str(%rip), %r8
	leaq      L_.str1(%rip), %rdx
	leaq      L_.str16(%rip), %r9
	movl      $74, %ecx
L00000519:
	xorl      %eax, %eax
	movq      %rsi, %rdi
	movq      %r8, %rsi
	movq      %r9, %r8
	call      _fprintf
L00000529:
	movq      (%rbx), %rax
	movq      %rax, %rdi
	call      _rpl_fflush
L00000534:
	call      _abort
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.string	"%s:%d: assertion '%s' failed\n"
L_.str1:
	.string	"gnulib-tests/test-sigaction.c"
L_.str3:
	.string	"sigaction (SIGABRT, &sa, NULL) == 0"
L_.str4:
	.string	"raise (SIGABRT) == 0"
L_.str5:
	.string	"sigaction (SIGABRT, &sa, &old_sa) == 0"
L_.str6:
	.string	"(old_sa.sa_flags & MASK_SA_FLAGS) == 0"
L_.str7:
	.string	"old_sa.sa_handler == handler"
L_.str8:
	.string	"(old_sa.sa_flags & SA_SIGINFO) == 0"
L_.str9:
	.string	"old_sa.sa_handler == SIG_DFL"
L_.str10:
	.string	"sigaction (SIGABRT, NULL, &old_sa) == 0"
L_.str11:
	.string	"old_sa.sa_handler == SIG_IGN"
L_.str12:
	.string	"sig == SIGABRT"
L_.str13:
	.string	"sigaction (SIGABRT, NULL, &sa) == 0"
L_.str14:
	.string	"(sa.sa_flags & SA_SIGINFO) == 0"
L_.str15:
	.string	"(sa.sa_flags & SA_RESETHAND) == 0"
L_.str16:
	.string	"sa.sa_handler == handler"
L_.str17:
	.string	"sa.sa_handler == SIG_DFL"
L_.str18:
	.string	"0"
# ----------------------
.zerofill __DATA,__bss,_handler.entry_count,4,2
# ----------------------

.subsections_via_symbols
