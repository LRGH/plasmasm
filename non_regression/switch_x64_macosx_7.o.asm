	.macosx_version_min 10, 13
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_xalloc_die
_xalloc_die:
	pushq     %rbp
	movq      %rsp, %rbp
	leaq      LC00001F30(%rip), %rdx
	leaq      LC00001F33(%rip), %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L0000001D:
	call      _cleanup_fatal
L00000022:
	.align 4, 0x90
# ----------------------
_cleanup_fatal:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	call      _close_output_file
L0000003F:
	leaq      _caught_signals(%rip), %rsi
	leaq      -28(%rbp), %rdx
	movl      $1, %edi
	call      _sigprocmask
L00000054:
	cmpb      $0, _remove_files(%rip)
	je        L000000B0
L0000005D:
	cmpl      $0, _files_created(%rip)
	je        L000000A6
L00000066:
	leaq      LC00001F30(%rip), %r14
	xorl      %ebx, %ebx
	.align 4, 0x90
L00000070:
	movl      %ebx, %edi
	call      _make_filename
L00000077:
	movq      %rax, %r15
	movq      %r15, %rdi
	call      _rpl_unlink
L00000082:
	testl     %eax, %eax
	je        L0000009C
L00000086:
	call      ___error
L0000008B:
	movl      (%rax), %esi
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r14, %rdx
	movq      %r15, %rcx
	call      _error
L0000009C:
	incl      %ebx
	cmpl      _files_created(%rip), %ebx
	jb        L00000070
L000000A6:
	movl      $0, _files_created(%rip)
L000000B0:
	leaq      -28(%rbp), %rsi
	movl      $3, %edi
	xorl      %edx, %edx
	call      _sigprocmask
L000000C0:
	movl      $1, %edi
	call      _exit
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $104, %rsp
	movq      %rsi, %rbx
	movl      %edi, -104(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rbx), %rdi
	call      _set_program_name
L000000FD:
	leaq      LC00001F44(%rip), %r14
	xorl      %edi, %edi
	movq      %r14, %rsi
	call      _setlocale
L0000010E:
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
L0000011A:
	movq      %rbx, -88(%rbp)
	movq      %rbx, _global_argv(%rip)
	movq      $0, _controls(%rip)
	movq      $0, _control_used(%rip)
	movb      $0, _suppress_count(%rip)
	movb      $1, _remove_files(%rip)
	movb      $0, _suppress_matched(%rip)
	leaq      LC00001F45(%rip), %rax
	movq      %rax, _prefix(%rip)
	leaq      LC00001F48(%rip), %r15
	leaq      _longopts(%rip), %r12
	leaq      L0000116C(%rip), %rbx
	movq      _rpl_optarg@GOTPCREL(%rip), %r13
	jmp       L00000187
L0000017C:
	.align 4, 0x90
L00000180:
	movb      $1, _suppress_count(%rip)
L00000187:
	xorl      %r8d, %r8d
	movl      -104(%rbp), %edi
	movq      -88(%rbp), %rsi
	movq      %r15, %rdx
	movq      %r12, %rcx
	call      _rpl_getopt_long
L0000019C:
	cmpl      $97, %eax
	jle       L00000213
L000001A1:
	addl      $-98, %eax
	cmpl      $30, %eax
	ja        L000010DA
L000001AD:
	movslq    (%rbx,%rax,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
L000001B6:
	movq      (%r13), %rax
	movq      %rax, _suffix(%rip)
	jmp       L00000187
L000001C3:
	movq      (%r13), %rax
	movq      %rax, _prefix(%rip)
	jmp       L00000187
L000001D0:
	movb      $0, _remove_files(%rip)
	jmp       L00000187
L000001D9:
	movq      (%r13), %rdi
	xorl      %esi, %esi
	movl      $2147483647, %edx
	xorl      %r9d, %r9d
	movq      %r14, %rcx
	leaq      LC00001F53(%rip), %r8
	call      _xdectoimax
L000001F6:
	movl      %eax, _digits(%rip)
	jmp       L00000187
L000001FE:
	movb      $1, _elide_empty_files(%rip)
	jmp       L00000187
L00000207:
	movb      $1, _suppress_matched(%rip)
	jmp       L00000187
L00000213:
	cmpl      $-1, %eax
	jne       L0000107A
L0000021C:
	movq      _rpl_optind@GOTPCREL(%rip), %r12
	movl      (%r12), %eax
	movl      -104(%rbp), %ecx
	subl      %eax, %ecx
	cmpl      $1, %ecx
	movq      -88(%rbp), %r15
	jle       L000010E9
L00000239:
	movq      _prefix(%rip), %rdi
	call      _strlen
L00000245:
	movq      %rax, %rdx
	cmpq      $0, _suffix(%rip)
	je        L00000461
L00000256:
	movq      %rdx, -120(%rbp)
	movq      _suffix(%rip), %r14
	leaq      L000011E8(%rip), %r12
	movq      %r14, -112(%rbp)
	xorl      %ebx, %ebx
	jmp       L00000273
L00000270:
	incq      %r14
L00000273:
	movb      (%r14), %al
	cmpb      $37, %al
	je        L00000290
L0000027A:
	testb     %al, %al
	jne       L00000270
L0000027E:
	jmp       L00000417
L00000283:
	.align 4, 0x90
L00000290:
	cmpb      $37, 1(%r14)
	leaq      1(%r14), %r14
	je        L00000270
L0000029B:
	testb     $1, %bl
	je        L000002B5
L000002A0:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC000024FE(%rip), %rdx
	call      _error
L000002B5:
	xorl      %r15d, %r15d
	jmp       L000002C3
L000002BA:
	.align 4, 0x90
L000002C0:
	incq      %r14
L000002C3:
	movb      (%r14), %al
	movsbl    %al, %ecx
	leal      -35(%rcx), %edx
	cmpl      $13, %edx
	ja        L000002F0
L000002D1:
	movslq    (%r12,%rdx,4), %rdx
	addq      %r12, %rdx
	jmp       *%rdx
L000002DA:
	orl       $2, %r15d
	jmp       L000002C0
L000002E0:
	orl       $1, %r15d
	incq      %r14
	jmp       L000002C3
L000002E9:
	.align 4, 0x90
L000002F0:
	addl      $-48, %ecx
	cmpl      $9, %ecx
	ja        L00000310
L000002F8:
	.align 4, 0x90
L00000300:
	movsbl    1(%r14), %eax
	incq      %r14
	leal      -48(%rax), %ecx
	cmpl      $10, %ecx
	jb        L00000300
L00000310:
	cmpb      $46, %al
	jne       L00000330
L00000314:
	.align 4, 0x90
L00000320:
	movsbl    1(%r14), %eax
	incq      %r14
	leal      -48(%rax), %ecx
	cmpl      $10, %ecx
	jb        L00000320
L00000330:
	movzbl    %al, %ebx
	movl      $-2, %r13d
	movl      %ebx, %ecx
	addb      $-88, %cl
	cmpb      $32, %cl
	movq      %rbx, -96(%rbp)
	ja        L00000379
L00000347:
	movzbl    %cl, %ecx
	movq      $4303355905, %rdx
	btq       %rcx, %rdx
	jb        L0000036B
L0000035A:
	movl      $135168, %edx
	btq       %rcx, %rdx
	jae       L00000373
L00000365:
	movb      $117, (%r14)
	jmp       L000003E0
L0000036B:
	movl      $-3, %r13d
	jmp       L000003E0
L00000373:
	cmpq      $29, %rcx
	je        L000003E0
L00000379:
	testb     %al, %al
	jne       L00000394
L0000037D:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC0000255C(%rip), %rdx
	call      _error
L00000392:
	jmp       L000003E0
L00000394:
	js        L000003A9
L00000396:
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%rbx,4), %ecx
	shrl      $18, %ecx
	andl      $1, %ecx
	jmp       L000003BC
L000003A9:
	movl      $262144, %esi
	movl      %ebx, %edi
	call      ___maskrune
L000003B5:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
L000003BC:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        L000003D2
L000003C9:
	leaq      LC00002583(%rip), %rdx
	jmp       L000003D9
L000003D2:
	leaq      LC000025AE(%rip), %rdx
L000003D9:
	movl      %ebx, %ecx
	call      _error
L000003E0:
	andl      %r15d, %r13d
	movb      $1, %bl
	je        L0000040E
L000003E7:
	addl      %r13d, %r13d
	andl      $4, %r13d
	xorl      $39, %r13d
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC000025DC(%rip), %rdx
	movl      %r13d, %ecx
	movq      -96(%rbp), %r8
	call      _error
L0000040E:
	movq      -88(%rbp), %r15
	jmp       L00000270
L00000417:
	testb     $1, %bl
	jne       L00000431
L0000041C:
	leaq      LC0000252E(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000431:
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movl      $-1, %r9d
	xorl      %eax, %eax
	movq      -112(%rbp), %r8
	call      ___snprintf_chk
L0000044A:
	testl     %eax, %eax
	movq      _rpl_optind@GOTPCREL(%rip), %r12
	movq      -120(%rbp), %rdx
	js        L0000111F
L0000045D:
	cltq      
	jmp       L0000047A
L00000461:
	movl      _digits(%rip), %eax
	cmpl      $10, %eax
	jae       L00000473
L0000046C:
	movl      $10, %eax
	jmp       L0000047A
L00000473:
	movslq    _digits(%rip), %rax
L0000047A:
	movq      $-2, %rcx
	subq      %rdx, %rcx
	cmpq      %rax, %rcx
	jb        L0000108F
L0000048D:
	leaq      1(%rdx,%rax), %rdi
	call      _xmalloc
L00000497:
	movq      %rax, _filename_space(%rip)
	movslq    (%r12), %rax
	leal      1(%rax), %ecx
	movl      %ecx, (%r12)
	movq      (%r15,%rax,8), %rbx
	leaq      LC0000260E(%rip), %rsi
	movq      %rbx, %rdi
	call      _strcmp
L000004BC:
	testl     %eax, %eax
	je        L000004FB
L000004C0:
	xorl      %edi, %edi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %rbx, %rsi
	call      _fd_reopen
L000004CE:
	testl     %eax, %eax
	jns       L000004FB
L000004D2:
	call      ___error
L000004D7:
	movl      (%rax), %r14d
	movq      %rbx, %rdi
	call      _quote
L000004E2:
	movq      %rax, %rcx
	leaq      LC00002610(%rip), %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
L000004FB:
	movl      (%r12), %ebx
	cmpl      -104(%rbp), %ebx
	jge       L00000978
L00000508:
	.align 4, 0x90
L00000510:
	movslq    %ebx, %r12
	movq      (%r15,%r12,8), %rax
	movq      %rax, -120(%rbp)
	movsbl    (%rax), %r13d
	cmpl      $47, %r13d
	movq      %rbx, -96(%rbp)
	je        L00000533
L00000529:
	cmpb      $37, %r13b
	jne       L000005C0
L00000533:
	cmpb      $37, %r13b
	sete      %r14b
	movq      -120(%rbp), %r15
	leaq      1(%r15), %rbx
	movq      %rbx, %rdi
	movl      %r13d, %esi
	call      _strrchr
L0000054E:
	movq      %rax, %r12
	testq     %r12, %r12
	jne       L00000571
L00000556:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC000026DF(%rip), %rdx
	movq      %r15, %rcx
	movl      %r13d, %r8d
	call      _error
L00000571:
	movq      _control_used(%rip), %rax
	cmpq      _new_control_record.control_allocated(%rip), %rax
	movq      %rbx, -112(%rbp)
	jne       L00000610
L00000589:
	movq      _controls(%rip), %rdi
	testq     %rdi, %rdi
	je        L00000625
L00000599:
	movq      $128102389400760774, %rcx
	cmpq      %rcx, %rax
	ja        L0000108F
L000005AC:
	movq      %rax, %rcx
	shrq      $1, %rcx
	leaq      1(%rax,%rcx), %rax
	jmp       L00000631
L000005BC:
	.align 4, 0x90
L000005C0:
	movq      _control_used(%rip), %rax
	cmpq      _new_control_record.control_allocated(%rip), %rax
	jne       L00000619
L000005D0:
	movq      _controls(%rip), %rdi
	testq     %rdi, %rdi
	je        L00000754
L000005E0:
	movq      $128102389400760774, %rcx
	cmpq      %rcx, %rax
	ja        L000010E4
L000005F3:
	movq      %rax, %rcx
	shrq      $1, %rcx
	leaq      1(%rax,%rcx), %rcx
	jmp       L00000760
L00000603:
	.align 4, 0x90
L00000610:
	movq      _controls(%rip), %r13
	jmp       L00000656
L00000619:
	movq      _controls(%rip), %rbx
	jmp       L00000785
L00000625:
	testq     %rax, %rax
	movl      $1, %ecx
	cmove     %rcx, %rax
L00000631:
	movq      %rax, _new_control_record.control_allocated(%rip)
	shlq      $5, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
L00000645:
	movq      %rax, %r13
	movq      %r13, _controls(%rip)
	movq      _control_used(%rip), %rax
L00000656:
	movq      %r15, %rbx
	notq      %rbx
	addq      %r12, %rbx
	leaq      1(%rax), %rcx
	movq      %rcx, _control_used(%rip)
	leaq      (%rax,%rax,2), %r15
	shlq      $5, %r15
	movb      $0, 28(%r13,%r15)
	movq      $0, 16(%r13,%r15)
	movq      $0, 8(%r13,%r15)
	movq      $0, (%r13,%r15)
	movq      -96(%rbp), %rax
	movl      %eax, 24(%r13,%r15)
	movb      %r14b, 29(%r13,%r15)
	movb      $1, 30(%r13,%r15)
	leaq      32(%r13,%r15), %r14
	movq      $0, 40(%r13,%r15)
	movq      $0, 32(%r13,%r15)
	movl      $256, %edi
	call      _xmalloc
L000006C8:
	movq      %rax, 64(%r13,%r15)
	movq      $0, 72(%r13,%r15)
	movq      _rpl_re_syntax_options@GOTPCREL(%rip), %rax
	movq      $710, (%rax)
	movq      -112(%rbp), %rdi
	movq      %rbx, %rsi
	movq      %r14, %rdx
	call      _rpl_re_compile_pattern
L000006F3:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L0000105C
L000006FF:
	addq      %r15, %r13
	cmpb      $0, 1(%r12)
	je        L000008AA
L0000070E:
	incq      %r12
	xorl      %esi, %esi
	movl      $10, %edx
	movq      %r12, %rdi
	movq      %r13, %rcx
	leaq      LC00001F44(%rip), %r8
	call      _xstrtoimax
L0000072A:
	testl     %eax, %eax
	movq      -96(%rbp), %rbx
	je        L000008AE
L00000736:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC00002725(%rip), %rdx
	movq      -120(%rbp), %rcx
	call      _error
L0000074F:
	jmp       L000008AE
L00000754:
	testq     %rax, %rax
	movl      $1, %ecx
	cmovne    %rax, %rcx
L00000760:
	movq      %rcx, _new_control_record.control_allocated(%rip)
	shlq      $5, %rcx
	leaq      (%rcx,%rcx,2), %rsi
	call      _xrealloc
L00000774:
	movq      %rax, %rbx
	movq      %rbx, _controls(%rip)
	movq      _control_used(%rip), %rax
L00000785:
	leaq      1(%rax), %rcx
	movq      %rcx, _control_used(%rip)
	leaq      (%rax,%rax,2), %r14
	shlq      $5, %r14
	movb      $0, 30(%rbx,%r14)
	movb      $0, 28(%rbx,%r14)
	movq      $0, 16(%rbx,%r14)
	movq      $0, 8(%rbx,%r14)
	movq      $0, (%rbx,%r14)
	movq      -96(%rbp), %rax
	movl      %eax, 24(%rbx,%r14)
	movq      (%r15,%r12,8), %rdi
	xorl      %esi, %esi
	movl      $10, %edx
	leaq      -128(%rbp), %rcx
	leaq      LC00001F44(%rip), %r8
	call      _xstrtoumax
L000007E2:
	testl     %eax, %eax
	je        L000007FF
L000007E6:
	movq      (%r15,%r12,8), %rcx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC0000262B(%rip), %rdx
	call      _error
L000007FF:
	movq      -128(%rbp), %rax
	testq     %rax, %rax
	jne       L00000825
L00000808:
	movq      (%r15,%r12,8), %rcx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC0000263F(%rip), %rdx
	call      _error
L00000821:
	movq      -128(%rbp), %rax
L00000825:
	movq      _parse_patterns.last_val(%rip), %rcx
	cmpq      %rcx, %rax
	jae       L00000873
L00000831:
	movq      (%r15,%r12,8), %rdi
	call      _quote
L0000083A:
	movq      %rax, %r13
	movq      _parse_patterns.last_val(%rip), %rdi
	leaq      -80(%rbp), %rsi
	call      _umaxtostr
L0000084D:
	movq      %rax, %r8
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC00002669(%rip), %rdx
	movq      %r13, %rcx
	call      _error
L00000868:
	movq      -128(%rbp), %rax
	movq      _parse_patterns.last_val(%rip), %rcx
L00000873:
	cmpq      %rcx, %rax
	jne       L0000089A
L00000878:
	movq      (%r15,%r12,8), %rdi
	call      _quote
L00000881:
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC000026A2(%rip), %rdx
	call      _error
L00000896:
	movq      -128(%rbp), %rax
L0000089A:
	leaq      (%rbx,%r14), %r13
	movq      %rax, _parse_patterns.last_val(%rip)
	movq      %rax, 8(%rbx,%r14)
L000008AA:
	movq      -96(%rbp), %rbx
L000008AE:
	leal      1(%rbx), %r15d
	cmpl      -104(%rbp), %r15d
	jge       L00000969
L000008BC:
	movslq    %r15d, %rcx
	movq      -88(%rbp), %rax
	movq      (%rax,%rcx,8), %r12
	cmpb      $123, (%r12)
	jne       L00000969
L000008D2:
	movq      %rcx, %rbx
	movq      %r12, %rdi
	call      _strlen
L000008DD:
	movq      %rax, %r14
	cmpb      $125, -1(%r12,%r14)
	je        L00000900
L000008E8:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC0000274A(%rip), %rdx
	movq      %r12, %rcx
	call      _error
L00000900:
	movb      $0, -1(%r12,%r14)
	leaq      1(%r12), %rdi
	cmpq      $3, %r14
	jne       L0000091D
L00000911:
	cmpb      $42, (%rdi)
	jne       L0000091D
L00000916:
	movb      $1, 28(%r13)
	jmp       L00000960
L0000091D:
	xorl      %esi, %esi
	movl      $10, %edx
	leaq      -80(%rbp), %rcx
	leaq      LC00001F44(%rip), %r8
	call      _xstrtoumax
L00000934:
	testl     %eax, %eax
	je        L00000958
L00000938:
	movq      _global_argv(%rip), %rax
	movq      (%rax,%rbx,8), %rcx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      LC0000276E(%rip), %rdx
	call      _error
L00000958:
	movq      -80(%rbp), %rax
	movq      %rax, 16(%r13)
L00000960:
	movb      $125, -1(%r12,%r14)
	movl      %r15d, %ebx
L00000969:
	incl      %ebx
	cmpl      -104(%rbp), %ebx
	movq      -88(%rbp), %r15
	jl        L00000510
L00000978:
	movl      $0, _caught_signals(%rip)
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r12
	leaq      -80(%rbp), %r14
	.align 4, 0x90
L00000990:
	movl      (%rbx,%r12), %r15d
	xorl      %esi, %esi
	movl      %r15d, %edi
	movq      %r14, %rdx
	call      _sigaction
L000009A1:
	cmpq      $1, -80(%rbp)
	je        L000009BB
L000009A8:
	decl      %r15d
	movl      $1, %eax
	movl      %r15d, %ecx
	shll      %cl, %eax
	orl       %eax, _caught_signals(%rip)
L000009BB:
	addq      $4, %rbx
	cmpq      $40, %rbx
	jne       L00000990
L000009C5:
	leaq      _interrupt_handler(%rip), %rax
	movq      %rax, -80(%rbp)
	movl      _caught_signals(%rip), %eax
	movl      %eax, -72(%rbp)
	movl      $0, -68(%rbp)
	testb     $32, %ah
	je        L000009FB
L000009E5:
	leaq      -80(%rbp), %rsi
	movl      $14, %edi
	xorl      %edx, %edx
	call      _sigaction
L000009F5:
	movl      _caught_signals(%rip), %eax
L000009FB:
	testb     $1, %al
	je        L00000A15
L000009FF:
	leaq      -80(%rbp), %rsi
	movl      $1, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000A0F:
	movl      _caught_signals(%rip), %eax
L00000A15:
	testb     $2, %al
	je        L00000A2F
L00000A19:
	leaq      -80(%rbp), %rsi
	movl      $2, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000A29:
	movl      _caught_signals(%rip), %eax
L00000A2F:
	testb     $16, %ah
	je        L00000A4A
L00000A34:
	leaq      -80(%rbp), %rsi
	movl      $13, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000A44:
	movl      _caught_signals(%rip), %eax
L00000A4A:
	testb     $4, %al
	je        L00000A64
L00000A4E:
	leaq      -80(%rbp), %rsi
	movl      $3, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000A5E:
	movl      _caught_signals(%rip), %eax
L00000A64:
	testb     $64, %ah
	je        L00000A7F
L00000A69:
	leaq      -80(%rbp), %rsi
	movl      $15, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000A79:
	movl      _caught_signals(%rip), %eax
L00000A7F:
	testl     $67108864, %eax
	je        L00000A9C
L00000A86:
	leaq      -80(%rbp), %rsi
	movl      $27, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000A96:
	movl      _caught_signals(%rip), %eax
L00000A9C:
	testl     $33554432, %eax
	je        L00000AB9
L00000AA3:
	leaq      -80(%rbp), %rsi
	movl      $26, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000AB3:
	movl      _caught_signals(%rip), %eax
L00000AB9:
	testl     $8388608, %eax
	je        L00000AD6
L00000AC0:
	leaq      -80(%rbp), %rsi
	movl      $24, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000AD0:
	movl      _caught_signals(%rip), %eax
L00000AD6:
	testl     $16777216, %eax
	je        L00000AED
L00000ADD:
	leaq      -80(%rbp), %rsi
	movl      $25, %edi
	xorl      %edx, %edx
	call      _sigaction
L00000AED:
	cmpq      $0, _control_used(%rip)
	je        L00000EE0
L00000AFB:
	movq      _controls(%rip), %r14
	xorl      %ecx, %ecx
L00000B04:
	leaq      (%rcx,%rcx,2), %rbx
	shlq      $5, %rbx
	cmpb      $0, 30(%r14,%rbx)
	movq      %rcx, -104(%rbp)
	movq      %rbx, -96(%rbp)
	je        L00000D80
L00000B20:
	xorl      %eax, %eax
	cmpb      $0, 28(%r14,%rbx)
	jne       L00000B74
L00000B2A:
	jmp       L00000B69
L00000B2C:
	.align 4, 0x90
L00000B30:
	testb     %r15b, %r15b
	jne       L00000B3A
L00000B35:
	call      _close_output_file
L00000B3A:
	movq      -88(%rbp), %rax
	cmpq      $0, (%rax)
	movq      -104(%rbp), %rcx
	movq      -96(%rbp), %rbx
	jle       L00000B53
L00000B4C:
	movq      %r13, _current_line(%rip)
L00000B53:
	movq      -120(%rbp), %rax
	incq      %rax
	movq      _controls(%rip), %r14
	cmpb      $0, 28(%r14,%rbx)
	jne       L00000B74
L00000B69:
	cmpq      16(%r14,%rbx), %rax
	ja        L00000ED0
L00000B74:
	movq      %rax, -120(%rbp)
	movb      29(%r14,%rbx), %r15b
	testb     %r15b, %r15b
	jne       L00000B87
L00000B82:
	call      _create_output_file
L00000B87:
	leaq      (%r14,%rbx), %r12
	cmpb      $1, _suppress_matched(%rip)
	jne       L00000BA5
L00000B94:
	movq      _current_line(%rip), %rax
	testq     %rax, %rax
	je        L00000BA5
L00000BA0:
	call      _remove_line
L00000BA5:
	leaq      28(%r14,%rbx), %rax
	movq      %rax, -112(%rbp)
	cmpq      $0, (%r12)
	movq      %r12, -88(%rbp)
	js        L00000C70
L00000BBD:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	movq      %rdi, _current_line(%rip)
	call      _find_line
L00000BD3:
	testq     %rax, %rax
	je        L00000F58
L00000BDC:
	leaq      32(%r14,%rbx), %r13
L00000BE1:
	movq      (%rax), %rcx
	movq      8(%rax), %rsi
	leaq      -1(%rcx), %rdx
	cmpb      $10, -1(%rsi,%rcx)
	cmovne    %rcx, %rdx
	xorl      %ecx, %ecx
	xorl      %r9d, %r9d
	movq      %r13, %rdi
	movq      %rdx, %r8
	call      _rpl_re_search
L00000C05:
	cmpq      $-1, %rax
	jne       L00000CBE
L00000C0F:
	call      _remove_line
L00000C14:
	movq      %rax, %r12
	testb     %r15b, %r15b
	jne       L00000C41
L00000C1C:
	movq      (%r12), %rdx
	movq      8(%r12), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00000C36:
	movq      (%r12), %rax
	addq      %rax, _bytes_written(%rip)
L00000C41:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	movq      %rdi, _current_line(%rip)
	call      _find_line
L00000C57:
	testq     %rax, %rax
	movq      -88(%rbp), %r12
	jne       L00000BE1
L00000C60:
	jmp       L00000F58
L00000C65:
	.align 4, 0x90
L00000C70:
	leaq      32(%r14,%rbx), %r13
L00000C75:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	movq      %rdi, _current_line(%rip)
	call      _find_line
L00000C8B:
	testq     %rax, %rax
	je        L00000FAB
L00000C94:
	movq      (%rax), %rcx
	movq      8(%rax), %rsi
	leaq      -1(%rcx), %rdx
	cmpb      $10, -1(%rsi,%rcx)
	cmovne    %rcx, %rdx
	xorl      %ecx, %ecx
	xorl      %r9d, %r9d
	movq      %r13, %rdi
	movq      %rdx, %r8
	call      _rpl_re_search
L00000CB8:
	cmpq      $-1, %rax
	je        L00000C75
L00000CBE:
	cmpq      $-2, %rax
	je        L00001031
L00000CC8:
	movq      (%r12), %r13
	addq      _current_line(%rip), %r13
	movslq    24(%r14,%rbx), %rax
	movq      %rax, -112(%rbp)
	cmpq      $0, _head(%rip)
	jne       L00000D10
L00000CE6:
	call      _load_buffer
L00000CEB:
	testb     %al, %al
	jne       L00000D10
L00000CEF:
	call      ___error
L00000CF4:
	movl      (%rax), %esi
	movl      $1, %edi
	xorl      %eax, %eax
	leaq      LC0000281C(%rip), %rdx
	call      _error
L00000D09:
	.align 4, 0x90
L00000D10:
	movq      _head(%rip), %rax
	movq      %r13, %r12
	subq      24(%rax), %r12
	jb        L0000100B
L00000D24:
	je        L00000B30
L00000D2A:
	xorl      %r14d, %r14d
	.align 4, 0x90
L00000D30:
	call      _remove_line
L00000D35:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        L0000100B
L00000D41:
	testb     %r15b, %r15b
	jne       L00000D68
L00000D46:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00000D5E:
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
L00000D68:
	incq      %r14
	cmpq      %r12, %r14
	jb        L00000D30
L00000D70:
	jmp       L00000B30
L00000D75:
	.align 4, 0x90
L00000D80:
	xorl      %r15d, %r15d
	cmpb      $0, 28(%r14,%rbx)
	jne       L00000DAD
L00000D8B:
	jmp       L00000DA2
L00000D8D:
	.align 4, 0x90
L00000D90:
	movq      _controls(%rip), %r14
	movq      %r13, %r15
	cmpb      $0, 28(%r14,%rbx)
	jne       L00000DAD
L00000DA2:
	cmpq      16(%r14,%rbx), %r15
	ja        L00000ED0
L00000DAD:
	movq      8(%r14,%rbx), %r12
	call      _create_output_file
L00000DB7:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	call      _find_line
L00000DC6:
	testq     %rax, %rax
	jne       L00000DD8
L00000DCB:
	cmpb      $1, _suppress_matched(%rip)
	je        L00001048
L00000DD8:
	movq      %r15, -88(%rbp)
	leaq      1(%r15), %r13
	imulq     %r13, %r12
	cmpq      $0, _head(%rip)
	jne       L00000E20
L00000DEE:
	call      _load_buffer
L00000DF3:
	testb     %al, %al
	jne       L00000E20
L00000DF7:
	call      ___error
L00000DFC:
	movl      (%rax), %esi
	movl      $1, %edi
	xorl      %eax, %eax
	leaq      LC0000281C(%rip), %rdx
	call      _error
L00000E11:
	.align 4, 0x90
L00000E20:
	movq      _head(%rip), %rax
	movq      24(%rax), %r15
	cmpq      %r12, %r15
	jb        L00000E6A
L00000E30:
	jmp       L00000E80
L00000E32:
	.align 4, 0x90
L00000E40:
	incq      %r15
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00000E5B:
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
	cmpq      %r12, %r15
	jae       L00000E80
L00000E6A:
	call      _remove_line
L00000E6F:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L00000E40
L00000E77:
	jmp       L00000FFB
L00000E7C:
	.align 4, 0x90
L00000E80:
	call      _close_output_file
L00000E85:
	cmpb      $1, _suppress_matched(%rip)
	jne       L00000E93
L00000E8E:
	call      _remove_line
L00000E93:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	call      _find_line
L00000EA2:
	testq     %rax, %rax
	movq      -104(%rbp), %rcx
	movq      -96(%rbp), %rbx
	jne       L00000D90
L00000EB3:
	movb      _suppress_matched(%rip), %al
	testb     %al, %al
	jne       L00000D90
L00000EC1:
	jmp       L00001057
L00000EC6:
	.align 4, 0x90
L00000ED0:
	incq      %rcx
	cmpq      _control_used(%rip), %rcx
	jb        L00000B04
L00000EE0:
	call      _create_output_file
L00000EE5:
	jmp       L00000F12
L00000EE7:
	.align 4, 0x90
L00000EF0:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00000F08:
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
L00000F12:
	call      _remove_line
L00000F17:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L00000EF0
L00000F1F:
	call      _close_output_file
L00000F24:
	xorl      %edi, %edi
	call      _close
L00000F2B:
	testl     %eax, %eax
	jne       L00001150
L00000F33:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00001165
L00000F47:
	xorl      %eax, %eax
	addq      $104, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00000F58:
	movq      -112(%rbp), %rax
	cmpb      $0, (%rax)
	je        L00001124
L00000F65:
	testb     %r15b, %r15b
	je        L00000F92
L00000F6A:
	jmp       L00000FA4
L00000F6C:
	.align 4, 0x90
L00000F70:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00000F88:
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
L00000F92:
	call      _remove_line
L00000F97:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L00000F70
L00000F9F:
	call      _close_output_file
L00000FA4:
	xorl      %edi, %edi
	call      _exit
L00000FAB:
	movq      -112(%rbp), %rax
	cmpb      $0, (%rax)
	je        L00001124
L00000FB8:
	testb     %r15b, %r15b
	je        L00000FE2
L00000FBD:
	jmp       L00000FF4
L00000FBF:
	.align 4, 0x90
L00000FC0:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00000FD8:
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
L00000FE2:
	call      _remove_line
L00000FE7:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L00000FC0
L00000FEF:
	call      _close_output_file
L00000FF4:
	xorl      %edi, %edi
	call      _exit
L00000FFB:
	addq      -96(%rbp), %r14
L00000FFF:
	movq      %r14, %rdi
	movq      -88(%rbp), %rsi
	call      _handle_line_error
L0000100B:
	movq      _global_argv(%rip), %rax
	movq      -112(%rbp), %rcx
	movq      (%rax,%rcx,8), %rcx
	leaq      LC000027FF(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L0000102C:
	call      _cleanup_fatal
L00001031:
	leaq      LC00002798(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
L0000103C:
	xorl      %eax, %eax
	call      _error
L00001043:
	call      _cleanup_fatal
L00001048:
	addq      -96(%rbp), %r14
	movq      %r14, %rdi
	movq      %r15, %rsi
	call      _handle_line_error
L00001057:
	addq      %rbx, %r14
	jmp       L00000FFF
L0000105C:
	leaq      LC00002702(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      -120(%rbp), %rcx
	movq      %rbx, %r8
	call      _error
L00001075:
	call      _cleanup_fatal
L0000107A:
	cmpl      $-131, %eax
	je        L00001094
L00001081:
	cmpl      $-130, %eax
	jne       L000010DA
L00001088:
	xorl      %edi, %edi
	call      _usage
L0000108F:
	call      _xalloc_die
L00001094:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      $0, (%rsp)
	leaq      LC00001F62(%rip), %rsi
	leaq      LC00001F69(%rip), %rdx
	leaq      LC00001F77(%rip), %r8
	leaq      LC00001F83(%rip), %r9
	xorl      %eax, %eax
	call      _version_etc
L000010D3:
	xorl      %edi, %edi
	call      _exit
L000010DA:
	movl      $1, %edi
	call      _usage
L000010E4:
	call      _xalloc_die
L000010E9:
	cmpl      -104(%rbp), %eax
	jge       L00001134
L000010EE:
	movslq    -104(%rbp), %rax
	movq      -88(%rbp), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	call      _quote
L00001100:
	movq      %rax, %rcx
	leaq      LC00001FA3(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00001115:
	movl      $1, %edi
	call      _usage
L0000111F:
	call      _xalloc_die
L00001124:
	movzbl    %r15b, %edx
	movq      %r12, %rdi
	movq      -120(%rbp), %rsi
	call      _regexp_error
L00001134:
	leaq      LC00001F93(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00001146:
	movl      $1, %edi
	call      _usage
L00001150:
	call      ___error
L00001155:
	movl      (%rax), %esi
	leaq      LC00001FBC(%rip), %rdx
	xorl      %edi, %edi
	jmp       L0000103C
L00001165:
	call      ___stack_chk_fail
L0000116A:
	.align 4, 0x90
# ----------------------
L0000116C:
	.long	L000001B6-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000001C3-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000001D0-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000001D9-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L00000180-L0000116C
	.long	L000010DA-L0000116C
	.long	L00000180-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000001FE-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L000010DA-L0000116C
	.long	L00000207-L0000116C
# ----------------------
L000011E8:
	.long	L000002DA-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002E0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002C0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002F0-L000011E8
	.long	L000002C0-L000011E8
# ----------------------
	.align 4, 0x90
	.globl	_usage
_usage:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       L00001372
L00001233:
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      LC00001FC7(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
L0000124B:
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      LC00001FEE(%rip), %rdi
	call      _fputs
L00001261:
	movq      (%rbx), %rsi
	leaq      LC00002074(%rip), %rdi
	call      _fputs
L00001270:
	movq      (%rbx), %rsi
	leaq      LC00002878(%rip), %rdi
	call      _fputs
L0000127F:
	movq      (%rbx), %rsi
	leaq      LC00002097(%rip), %rdi
	call      _fputs
L0000128E:
	movq      (%rbx), %rsi
	leaq      LC00002153(%rip), %rdi
	call      _fputs
L0000129D:
	movq      (%rbx), %rsi
	leaq      LC00002195(%rip), %rdi
	call      _fputs
L000012AC:
	movq      (%rbx), %rsi
	leaq      LC0000225C(%rip), %rdi
	call      _fputs
L000012BB:
	movq      (%rbx), %rsi
	leaq      LC00002289(%rip), %rdi
	call      _fputs
L000012CA:
	movq      (%rbx), %rsi
	leaq      LC000022BF(%rip), %rdi
	call      _fputs
L000012D9:
	leaq      LC000028C3(%rip), %rdi
	leaq      LC00001F69(%rip), %rsi
	leaq      LC000028DA(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
L000012F5:
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
L00001301:
	testq     %rax, %rax
	je        L00001333
L00001306:
	leaq      LC00002901(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
L0000131A:
	testl     %eax, %eax
	je        L00001333
L0000131E:
	leaq      LC00002905(%rip), %rdi
	leaq      LC00001F62(%rip), %rsi
	xorl      %eax, %eax
	call      _printf
L00001333:
	leaq      LC0000294A(%rip), %rdi
	leaq      LC000028DA(%rip), %rsi
	leaq      LC00001F62(%rip), %rbx
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      _printf
L00001352:
	leaq      LC00002969(%rip), %rdi
	leaq      LC0000299C(%rip), %rdx
	xorl      %eax, %eax
	movq      %rbx, %rsi
	call      _printf
L0000136A:
	movl      %r14d, %edi
	call      _exit
L00001372:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      LC00002851(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
L00001394:
	movl      %r14d, %edi
	call      _exit
L0000139C:
	.align 4, 0x90
# ----------------------
_interrupt_handler:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	movl      %edi, %r14d
	cmpb      $0, _remove_files(%rip)
	je        L000013E3
L000013B3:
	cmpl      $0, _files_created(%rip)
	je        L000013D9
L000013BC:
	xorl      %ebx, %ebx
	.align 4, 0x90
L000013C0:
	movl      %ebx, %edi
	call      _make_filename
L000013C7:
	movq      %rax, %rdi
	call      _rpl_unlink
L000013CF:
	incl      %ebx
	cmpl      _files_created(%rip), %ebx
	jb        L000013C0
L000013D9:
	movl      $0, _files_created(%rip)
L000013E3:
	xorl      %esi, %esi
	movl      %r14d, %edi
	call      _signal
L000013ED:
	movl      %r14d, %edi
	popq      %rbx
	popq      %r14
	popq      %rbp
	jmp       _raise
L000013F9:
	.align 4, 0x90
# ----------------------
_close_output_file:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $32, %rsp
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -40(%rbp)
	movq      _output_stream(%rip), %rdi
	testq     %rdi, %rdi
	je        L00001505
L0000142D:
	testb     $64, 16(%rdi)
	jne       L00001527
L00001437:
	call      _rpl_fclose
L0000143C:
	testl     %eax, %eax
	jne       L00001543
L00001444:
	movq      _bytes_written(%rip), %rdi
	testq     %rdi, %rdi
	jne       L000014C6
L00001450:
	cmpb      $1, _elide_empty_files(%rip)
	jne       L000014C6
L00001459:
	leaq      _caught_signals(%rip), %rsi
	leaq      -64(%rbp), %r14
	movl      $1, %edi
	movq      %r14, %rdx
	call      _sigprocmask
L00001471:
	movq      _output_filename(%rip), %rdi
	call      _rpl_unlink
L0000147D:
	movl      %eax, %r12d
	xorl      %ebx, %ebx
	testl     %r12d, %r12d
	sete      %bl
	call      ___error
L0000148D:
	movl      (%rax), %r15d
	subl      %ebx, _files_created(%rip)
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r14, %rsi
	call      _sigprocmask
L000014A5:
	testl     %r12d, %r12d
	je        L000014FA
L000014AA:
	movq      _output_filename(%rip), %rcx
	leaq      LC00001F30(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r15d, %esi
	call      _error
L000014C4:
	jmp       L000014FA
L000014C6:
	movb      _suppress_count(%rip), %al
	testb     %al, %al
	jne       L000014FA
L000014D0:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	leaq      -64(%rbp), %rsi
	call      _umaxtostr
L000014E3:
	movq      %rax, %rcx
	leaq      LC00002491(%rip), %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rcx, %rdx
	call      _fprintf
L000014FA:
	movq      $0, _output_stream(%rip)
L00001505:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -40(%rbp), %rax
	jne       L00001522
L00001515:
	addq      $32, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00001522:
	call      ___stack_chk_fail
L00001527:
	movq      _output_filename(%rip), %rdi
	call      _quote
L00001533:
	movq      %rax, %rcx
	leaq      LC0000247E(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	jmp       L0000155A
L00001543:
	call      ___error
L00001548:
	movl      (%rax), %esi
	movq      _output_filename(%rip), %rcx
	leaq      LC00001F30(%rip), %rdx
	xorl      %edi, %edi
L0000155A:
	xorl      %eax, %eax
	call      _error
L00001561:
	movq      $0, _output_stream(%rip)
	call      _cleanup_fatal
L00001571:
	.align 4, 0x90
# ----------------------
_make_filename:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movl      %edi, %r14d
	movq      _filename_space(%rip), %rdi
	movq      _prefix(%rip), %rsi
	call      _strcpy
L000015A0:
	movq      _suffix(%rip), %r15
	movq      _filename_space(%rip), %rbx
	movq      _prefix(%rip), %rdi
	call      _strlen
L000015BA:
	movq      %rax, %rdi
	addq      %rbx, %rdi
	cmpq      $0, %r15
	je        L000015E5
L000015C6:
	movq      _suffix(%rip), %rcx
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movl      %r14d, %r8d
	call      ___sprintf_chk
L000015E3:
	jmp       L00001609
L000015E5:
	movl      _digits(%rip), %r8d
	leaq      LC00002495(%rip), %rcx
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movl      %r14d, %r9d
	call      ___sprintf_chk
L00001609:
	movq      _filename_space(%rip), %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000161B:
	.align 4, 0x90
# ----------------------
_create_output_file:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $16, %rsp
	movl      _files_created(%rip), %edi
	call      _make_filename
L0000163A:
	movq      %rax, %rcx
	movq      %rcx, _output_filename(%rip)
	movl      _files_created(%rip), %eax
	cmpl      $-1, %eax
	je        L000016C6
L0000164F:
	leaq      _caught_signals(%rip), %rsi
	leaq      -36(%rbp), %r15
	movl      $1, %edi
	movq      %r15, %rdx
	call      _sigprocmask
L00001667:
	movq      _output_filename(%rip), %rdi
	leaq      LC0000284F(%rip), %rsi
	call      _fopen_safer
L0000167A:
	movq      %rax, %r12
	movq      %r12, _output_stream(%rip)
	xorl      %ebx, %ebx
	testq     %r12, %r12
	setne     %bl
	call      ___error
L00001691:
	movl      (%rax), %r14d
	addl      %ebx, _files_created(%rip)
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigprocmask
L000016A9:
	testq     %r12, %r12
	je        L000016CE
L000016AE:
	movq      $0, _bytes_written(%rip)
	addq      $16, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000016C6:
	movl      $84, %r14d
	jmp       L000016D5
L000016CE:
	movq      _output_filename(%rip), %rcx
L000016D5:
	leaq      LC00001F30(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
L000016E8:
	call      _cleanup_fatal
L000016ED:
	.align 4, 0x90
# ----------------------
_remove_line:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	movq      _remove_line.prev_buf(%rip), %r14
	testq     %r14, %r14
	je        L00001754
L00001703:
	movq      48(%r14), %rdi
	testq     %rdi, %rdi
	je        L00001724
L0000170C:
	.align 4, 0x90
L00001710:
	movq      1304(%rdi), %rbx
	call      _free
L0000171C:
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       L00001710
L00001724:
	movq      $0, 48(%r14)
	movq      40(%r14), %rdi
	call      _free
L00001735:
	movq      $0, 40(%r14)
	movq      _remove_line.prev_buf(%rip), %rdi
	call      _free
L00001749:
	movq      $0, _remove_line.prev_buf(%rip)
L00001754:
	movq      _head(%rip), %rcx
	testq     %rcx, %rcx
	jne       L00001770
L00001760:
	call      _load_buffer
L00001765:
	testb     %al, %al
	je        L000017D5
L00001769:
	movq      _head(%rip), %rcx
L00001770:
	movq      24(%rcx), %rax
	cmpq      %rax, _current_line(%rip)
	jae       L00001784
L0000177D:
	movq      %rax, _current_line(%rip)
L00001784:
	incq      %rax
	movq      %rax, 24(%rcx)
	movq      56(%rcx), %rdx
	movq      16(%rdx), %rsi
	movq      %rsi, %rax
	shlq      $4, %rax
	leaq      24(%rdx,%rax), %rax
	incq      %rsi
	movq      %rsi, 16(%rdx)
	cmpq      (%rdx), %rsi
	jne       L000017D7
L000017AB:
	movq      1304(%rdx), %rdx
	movq      %rdx, 56(%rcx)
	testq     %rdx, %rdx
	je        L000017C1
L000017BB:
	cmpq      $0, (%rdx)
	jne       L000017D7
L000017C1:
	movq      %rcx, _remove_line.prev_buf(%rip)
	movq      64(%rcx), %rcx
	movq      %rcx, _head(%rip)
	jmp       L000017D7
L000017D5:
	xorl      %eax, %eax
L000017D7:
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
L000017DC:
	.align 4, 0x90
# ----------------------
_find_line:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
	movq      %rdi, %rbx
	movq      _head(%rip), %r15
	testq     %r15, %r15
	jne       L00001809
L000017F9:
	call      _load_buffer
L000017FE:
	testb     %al, %al
	je        L00001812
L00001802:
	movq      _head(%rip), %r15
L00001809:
	movq      16(%r15), %rax
	cmpq      %rbx, %rax
	jbe       L00001817
L00001812:
	xorl      %r14d, %r14d
	jmp       L0000188A
L00001817:
	testq     %r15, %r15
	je        L00001898
L0000181C:
	movq      32(%r15), %rcx
	addq      %rax, %rcx
	cmpq      %rbx, %rcx
	jbe       L0000182D
L00001828:
	movq      %r15, %rcx
	jmp       L0000185E
L0000182D:
	xorl      %r14d, %r14d
L00001830:
	movq      64(%r15), %rcx
	testq     %rcx, %rcx
	jne       L0000184B
L00001839:
	call      _load_buffer
L0000183E:
	testb     %al, %al
	je        L0000188A
L00001842:
	movq      64(%r15), %rcx
	testq     %rcx, %rcx
	je        L00001898
L0000184B:
	movq      16(%rcx), %rax
	movq      32(%rcx), %rdx
	addq      %rax, %rdx
	cmpq      %rbx, %rdx
	movq      %rcx, %r15
	jbe       L00001830
L0000185E:
	subq      %rax, %rbx
	movq      48(%rcx), %rax
	cmpq      $80, %rbx
	jb        L00001881
L0000186B:
	.align 4, 0x90
L00001870:
	addq      $-80, %rbx
	movq      1304(%rax), %rax
	cmpq      $79, %rbx
	ja        L00001870
L00001881:
	shlq      $4, %rbx
	leaq      24(%rax,%rbx), %r14
L0000188A:
	movq      %r14, %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00001898:
	leaq      LC000027BB(%rip), %rdi
	leaq      LC000027C5(%rip), %rsi
	leaq      LC000027D2(%rip), %rcx
	movl      $617, %edx
	call      ___assert_rtn
L000018B7:
	.align 4, 0x90
# ----------------------
_regexp_error:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movl      %edx, %r14d
	movq      %rsi, %r15
	movq      ___stderrp@GOTPCREL(%rip), %r13
	movq      (%r13), %r12
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movq      _global_argv(%rip), %rax
	movslq    24(%rdi), %rcx
	movq      (%rax,%rcx,8), %rdi
	call      _quote
L00001900:
	movq      %rax, %rcx
	leaq      LC000027D4(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	movq      %rbx, %rdx
	call      _fprintf
L00001917:
	testq     %r15, %r15
	je        L00001945
L0000191C:
	movq      (%r13), %rbx
	leaq      -64(%rbp), %rsi
	movq      %r15, %rdi
	call      _umaxtostr
L0000192C:
	movq      %rax, %rcx
	leaq      LC000027EC(%rip), %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rcx, %rdx
	call      _fprintf
L00001943:
	jmp       L00001953
L00001945:
	movq      (%r13), %rsi
	movl      $10, %edi
	call      _fputc
L00001953:
	testb     %r14b, %r14b
	je        L00001982
L00001958:
	jmp       L00001994
L0000195A:
	.align 4, 0x90
L00001960:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
L00001978:
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
L00001982:
	call      _remove_line
L00001987:
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       L00001960
L0000198F:
	call      _close_output_file
L00001994:
	call      _cleanup_fatal
L00001999:
	.align 4, 0x90
# ----------------------
_load_buffer:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movb      _have_read_eof(%rip), %al
	testb     %al, %al
	jne       L00001E0F
L000019BF:
	movq      _hold_count(%rip), %r14
	cmpq      $8191, %r14
	movl      $8191, %eax
	cmovbe    %rax, %r14
	cmpq      $8192, %r14
	jae       L00001A17
L000019DF:
	jmp       L00001A30
L000019E1:
	.align 4, 0x90
L000019F0:
	addq      %r14, %r14
	movq      $0, 48(%r12)
	movq      40(%r12), %rdi
	call      _free
L00001A06:
	movq      %r12, %rdi
	call      _free
L00001A0E:
	cmpq      $8192, %r14
	jb        L00001A30
L00001A17:
	addq      $-6144, %r14
	andq      $-2048, %r14
	addq      $8191, %r14
	jmp       L00001A36
L00001A2E:
	.align 4, 0x90
L00001A30:
	movl      $8191, %r14d
L00001A36:
	movl      $72, %edi
	call      _xmalloc
L00001A40:
	movq      %rax, %r12
	leaq      1(%r14), %rdi
	call      _xmalloc
L00001A4C:
	movq      %rax, %r15
	movq      %r15, 40(%r12)
	movq      %r14, (%r12)
	movq      $0, 56(%r12)
	movq      $0, 48(%r12)
	movq      $0, 32(%r12)
	movq      $0, 8(%r12)
	movq      _last_line_number(%rip), %rax
	incq      %rax
	movq      %rax, 24(%r12)
	movq      %rax, 16(%r12)
	movq      $0, 64(%r12)
	movq      _hold_count(%rip), %rdx
	testq     %rdx, %rdx
	je        L00001AD3
L00001AA5:
	movq      _hold_area(%rip), %rsi
	movq      %r15, %rdi
	call      _memcpy
L00001AB4:
	movq      _hold_count(%rip), %rax
	addq      %rax, 8(%r12)
	subq      %rax, %r14
	movq      $0, _hold_count(%rip)
	je        L00001B07
L00001AD0:
	addq      %rax, %r15
L00001AD3:
	xorl      %edi, %edi
	movq      %r15, %rsi
	movq      %r14, %rdx
	call      _safe_read
L00001AE0:
	movq      %rax, %r15
	testq     %r15, %r15
	je        L00001B00
L00001AE8:
	cmpq      $-1, %r15
	jne       L00001B0A
L00001AEE:
	jmp       L00001E64
L00001AF3:
	.align 4, 0x90
L00001B00:
	movb      $1, _have_read_eof(%rip)
L00001B07:
	xorl      %r15d, %r15d
L00001B0A:
	leaq      48(%r12), %rax
	movq      %rax, -48(%rbp)
	addq      8(%r12), %r15
	movq      %r15, 8(%r12)
	je        L00001D7B
L00001B23:
	movq      40(%r12), %rbx
	movl      $10, %esi
	movq      %rbx, %rdi
	movq      %r15, %rdx
	call      _memchr
L00001B38:
	movq      %rax, %r14
	testq     %r14, %r14
	je        L00001C50
L00001B44:
	movq      %r12, -56(%rbp)
	xorl      %r13d, %r13d
	.align 4, 0x90
L00001B50:
	movq      %r14, %r12
	subq      %rbx, %r12
	movq      -48(%rbp), %rax
	cmpq      $0, (%rax)
	je        L00001B70
L00001B60:
	movq      -56(%rbp), %rax
	movq      56(%rax), %rax
	jmp       L00001BA8
L00001B6A:
	.align 4, 0x90
L00001B70:
	movl      $1312, %edi
	call      _xmalloc
L00001B7A:
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      -56(%rbp), %rcx
	movq      %rax, 56(%rcx)
	movq      %rax, 48(%rcx)
L00001BA8:
	incq      %r12
	cmpq      $80, (%rax)
	jne       L00001BF0
L00001BB1:
	movl      $1312, %edi
	call      _xmalloc
L00001BBB:
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      -56(%rbp), %rdx
	movq      56(%rdx), %rcx
	movq      %rax, 1304(%rcx)
	movq      %rax, 56(%rdx)
L00001BF0:
	movq      8(%rax), %rcx
	shlq      $4, %rcx
	movq      %rbx, 32(%rax,%rcx)
	movq      %r12, 24(%rax,%rcx)
	movdqu    (%rax), %xmm0
	paddq     LC00001F20(%rip), %xmm0
	movdqu    %xmm0, (%rax)
	subq      %r12, %r15
	movq      %r14, %rbx
	incq      %rbx
	incq      %r13
	movl      $10, %esi
	movq      %rbx, %rdi
	movq      %r15, %rdx
	call      _memchr
L00001C2E:
	movq      %rax, %r14
	testq     %r14, %r14
	jne       L00001B50
L00001C3A:
	testq     %r15, %r15
	movq      -56(%rbp), %r12
	jne       L00001C53
L00001C43:
	jmp       L00001D4E
L00001C48:
	.align 4, 0x90
L00001C50:
	xorl      %r13d, %r13d
L00001C53:
	cmpb      $1, _have_read_eof(%rip)
	jne       L00001C80
L00001C5C:
	movq      -48(%rbp), %rax
	cmpq      $0, (%rax)
	je        L00001CAD
L00001C66:
	movq      %r12, %r14
	addq      $56, %r14
	movq      56(%r12), %rax
	cmpq      $80, (%rax)
	je        L00001CF0
L00001C78:
	jmp       L00001D29
L00001C7D:
	.align 4, 0x90
L00001C80:
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _xmemdup
L00001C8B:
	movq      %rax, %rbx
	movq      _hold_area(%rip), %rdi
	call      _free
L00001C9A:
	movq      %rbx, _hold_area(%rip)
	movq      %r15, _hold_count(%rip)
	jmp       L00001D4E
L00001CAD:
	movl      $1312, %edi
	call      _xmalloc
L00001CB7:
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      %r12, %r14
	addq      $56, %r14
	movq      %rax, 56(%r12)
	movq      %rax, 48(%r12)
	cmpq      $80, (%rax)
	jne       L00001D29
L00001CF0:
	movl      $1312, %edi
	call      _xmalloc
L00001CFA:
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      (%r14), %rcx
	movq      %rax, 1304(%rcx)
	movq      %rax, (%r14)
L00001D29:
	movq      8(%rax), %rcx
	shlq      $4, %rcx
	movq      %rbx, 32(%rax,%rcx)
	movq      %r15, 24(%rax,%rcx)
	movdqu    (%rax), %xmm0
	paddq     LC00001F20(%rip), %xmm0
	movdqu    %xmm0, (%rax)
	incq      %r13
L00001D4E:
	movq      %r13, 32(%r12)
	movq      _last_line_number(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, 16(%r12)
	movq      %rcx, 24(%r12)
	addq      %r13, %rax
	movq      %rax, _last_line_number(%rip)
	testq     %r13, %r13
	jne       L00001E20
L00001D7B:
	movb      _have_read_eof(%rip), %al
	testb     %al, %al
	jne       L00001DC9
L00001D85:
	movq      (%r12), %r14
	testq     %r14, %r14
	js        L00001E5F
L00001D92:
	movq      -48(%rbp), %rax
	movq      (%rax), %rdi
	testq     %rdi, %rdi
	je        L000019F0
L00001DA2:
	.align 4, 0x90
L00001DB0:
	movq      1304(%rdi), %rbx
	call      _free
L00001DBC:
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       L00001DB0
L00001DC4:
	jmp       L000019F0
L00001DC9:
	movq      -48(%rbp), %rax
	movq      (%rax), %rdi
	testq     %rdi, %rdi
	je        L00001DF4
L00001DD5:
	.align 4, 0x90
L00001DE0:
	movq      1304(%rdi), %rbx
	call      _free
L00001DEC:
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       L00001DE0
L00001DF4:
	movq      $0, 48(%r12)
	movq      40(%r12), %rdi
	call      _free
L00001E07:
	movq      %r12, %rdi
	call      _free
L00001E0F:
	xorl      %eax, %eax
L00001E11:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00001E20:
	movq      $0, 64(%r12)
	movq      48(%r12), %rax
	movq      %rax, 56(%r12)
	movq      _head(%rip), %rax
	testq     %rax, %rax
	je        L00001E54
L00001E3F:
	.align 4, 0x90
L00001E40:
	movq      %rax, %rcx
	movq      64(%rcx), %rax
	testq     %rax, %rax
	jne       L00001E40
L00001E4C:
	movq      %r12, 64(%rcx)
	movb      $1, %al
	jmp       L00001E11
L00001E54:
	movq      %r12, _head(%rip)
	movb      $1, %al
	jmp       L00001E11
L00001E5F:
	call      _xalloc_die
L00001E64:
	call      ___error
L00001E69:
	movl      (%rax), %esi
	leaq      LC00001FBC(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      _error
L00001E7B:
	call      _cleanup_fatal
# ----------------------
_handle_line_error:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $32, %rsp
	movq      %rsi, %r14
	movq      ___stderrp@GOTPCREL(%rip), %r12
	movq      (%r12), %r15
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movq      8(%rdi), %rdi
	leaq      -64(%rbp), %rsi
	call      _umaxtostr
L00001EB4:
	movq      %rax, %rdi
	call      _quote
L00001EBC:
	movq      %rax, %rcx
	leaq      LC0000282E(%rip), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %rbx, %rdx
	call      _fprintf
L00001ED3:
	testq     %r14, %r14
	movq      (%r12), %rbx
	jne       L00001EEE
L00001EDC:
	movl      $10, %edi
	movq      %rbx, %rsi
	call      _fputc
L00001EE9:
	call      _cleanup_fatal
L00001EEE:
	leaq      -64(%rbp), %rsi
	movq      %r14, %rdi
	call      _umaxtostr
L00001EFA:
	movq      %rax, %rcx
	leaq      LC000027EC(%rip), %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rcx, %rdx
	call      _fprintf
L00001F11:
	call      _cleanup_fatal
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LC00001F20:
	.long	1
	.long	0
	.long	1
	.long	0
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00001F30:
	.string	"%s"
LC00001F33:
	.string	"memory exhausted"
LC00001F44:
	.byte	0
LC00001F45:
	.string	"xx"
LC00001F48:
	.string	"f:b:kn:sqz"
LC00001F53:
	.string	"invalid number"
LC00001F62:
	.string	"csplit"
LC00001F69:
	.string	"GNU coreutils"
LC00001F77:
	.string	"Stuart Kemp"
LC00001F83:
	.string	"David MacKenzie"
LC00001F93:
	.string	"missing operand"
LC00001FA3:
	.string	"missing operand after %s"
LC00001FBC:
	.string	"read error"
LC00001FC7:
	.string	"Usage: %s [OPTION]... FILE PATTERN...\n"
LC00001FEE:
	.string	"Output pieces of FILE separated by PATTERN(s) to files 'xx00', 'xx01', ...,\nand output byte counts of each piece to standard output.\n"
LC00002074:
	.string	"\nRead standard input if FILE is -\n"
LC00002097:
	.string	"  -b, --suffix-format=FORMAT  use sprintf FORMAT instead of %02d\n  -f, --prefix=PREFIX        use PREFIX instead of 'xx'\n  -k, --keep-files           do not remove output files on errors\n"
LC00002153:
	.string	"  -m, --suppress-matched     suppress the lines matching PATTERN\n"
LC00002195:
	.string	"  -n, --digits=DIGITS        use specified number of digits instead of 2\n  -s, --quiet, --silent      do not print counts of output file sizes\n  -z, --elide-empty-files    remove empty output files\n"
LC0000225C:
	.string	"      --help     display this help and exit\n"
LC00002289:
	.string	"      --version  output version information and exit\n"
LC000022BF:
	.string	"\nEach PATTERN may be:\n  INTEGER            copy up to but not including specified line number\n  /REGEXP/[OFFSET]   copy up to but not including a matching line\n  %REGEXP%[OFFSET]   skip to, but not including a matching line\n  {INTEGER}          repeat the previous pattern specified number of times\n  {*}                repeat the previous pattern as many times as possible\n\nA line OFFSET is a required '+' or '-' followed by a positive integer.\n"
LC0000247E:
	.string	"write error for %s"
LC00002491:
	.string	"%s\n"
LC00002495:
	.string	"%0*u"
LC0000249A:
	.string	"digits"
LC000024A1:
	.string	"quiet"
LC000024A7:
	.string	"silent"
LC000024AE:
	.string	"keep-files"
LC000024B9:
	.string	"elide-empty-files"
LC000024CB:
	.string	"prefix"
LC000024D2:
	.string	"suffix-format"
LC000024E0:
	.string	"suppress-matched"
LC000024F1:
	.string	"help"
LC000024F6:
	.string	"version"
LC000024FE:
	.string	"too many %% conversion specifications in suffix"
LC0000252E:
	.string	"missing %% conversion specification in suffix"
LC0000255C:
	.string	"missing conversion specifier in suffix"
LC00002583:
	.string	"invalid conversion specifier in suffix: %c"
LC000025AE:
	.string	"invalid conversion specifier in suffix: \\%.3o"
LC000025DC:
	.string	"invalid flags in conversion specification: %%%c%c"
LC0000260E:
	.string	"-"
LC00002610:
	.string	"cannot open %s for reading"
LC0000262B:
	.string	"%s: invalid pattern"
LC0000263F:
	.string	"%s: line number must be greater than zero"
LC00002669:
	.string	"line number %s is smaller than preceding line number, %s"
LC000026A2:
	.string	"warning: line number %s is the same as preceding line number"
LC000026DF:
	.string	"%s: closing delimiter '%c' missing"
LC00002702:
	.string	"%s: invalid regular expression: %s"
LC00002725:
	.string	"%s: integer expected after delimiter"
LC0000274A:
	.string	"%s: '}' is required in repeat count"
LC0000276E:
	.string	"%s}: integer required between '{' and '}'"
LC00002798:
	.string	"error in regular expression search"
LC000027BB:
	.string	"find_line"
LC000027C5:
	.string	"src/csplit.c"
LC000027D2:
	.string	"b"
LC000027D4:
	.string	"%s: %s: match not found"
LC000027EC:
	.string	" on repetition %s\n"
LC000027FF:
	.string	"%s: line number out of range"
LC0000281C:
	.string	"input disappeared"
LC0000282E:
	.string	"%s: %s: line number out of range"
LC0000284F:
	.string	"w"
LC00002851:
	.string	"Try '%s --help' for more information.\n"
LC00002878:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
LC000028C3:
	.string	"\n%s online help: <%s>\n"
LC000028DA:
	.string	"http://www.gnu.org/software/coreutils/"
LC00002901:
	.string	"en_"
LC00002905:
	.string	"Report %s translation bugs to <http://translationproject.org/team/>\n"
LC0000294A:
	.string	"Full documentation at: <%s%s>\n"
LC00002969:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
LC0000299C:
	.string	" invocation"
# ----------------------
	.section       __DATA,__const,regular
	.align 4
_longopts:
	.quad	LC0000249A
	.long	1
	.long	0
	.long	0
	.long	0
	.long	110
	.long	0
	.quad	LC000024A1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	113
	.long	0
	.quad	LC000024A7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	115
	.long	0
	.quad	LC000024AE
	.long	0
	.long	0
	.long	0
	.long	0
	.long	107
	.long	0
	.quad	LC000024B9
	.long	0
	.long	0
	.long	0
	.long	0
	.long	122
	.long	0
	.quad	LC000024CB
	.long	1
	.long	0
	.long	0
	.long	0
	.long	102
	.long	0
	.quad	LC000024D2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	98
	.long	0
	.quad	LC000024E0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	128
	.long	0
	.quad	LC000024F1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-130
	.long	0
	.quad	LC000024F6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-131
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
# ----------------------
	.section       __DATA,__data,regular
	.align 2
_digits:
	.long	2
# ----------------------
	.section       __TEXT,__const,regular
	.align 4
_main.sig:
	.long	14
	.long	1
	.long	2
	.long	13
	.long	3
	.long	15
	.long	27
	.long	26
	.long	24
	.long	25
# ----------------------
.zerofill __DATA,__bss,_global_argv,8,3
# ----------------------
.zerofill __DATA,__bss,_controls,8,3
# ----------------------
.zerofill __DATA,__bss,_control_used,8,3
# ----------------------
.zerofill __DATA,__bss,_suppress_count,1,0
# ----------------------
.zerofill __DATA,__bss,_remove_files,1,0
# ----------------------
.zerofill __DATA,__bss,_suppress_matched,6,1
# ----------------------
.zerofill __DATA,__bss,_prefix,8,3
# ----------------------
.zerofill __DATA,__bss,_suffix,8,3
# ----------------------
.zerofill __DATA,__bss,_elide_empty_files,8,3
# ----------------------
.zerofill __DATA,__bss,_filename_space,8,3
# ----------------------
.zerofill __DATA,__bss,_caught_signals,8,3
# ----------------------
.zerofill __DATA,__bss,_output_stream,8,3
# ----------------------
.zerofill __DATA,__bss,_output_filename,8,3
# ----------------------
.zerofill __DATA,__bss,_bytes_written,8,3
# ----------------------
.zerofill __DATA,__bss,_files_created,8,3
# ----------------------
.zerofill __DATA,__bss,_parse_patterns.last_val,8,3
# ----------------------
.zerofill __DATA,__bss,_new_control_record.control_allocated,8,3
# ----------------------
.zerofill __DATA,__bss,_current_line,8,3
# ----------------------
.zerofill __DATA,__bss,_remove_line.prev_buf,8,3
# ----------------------
.zerofill __DATA,__bss,_head,8,3
# ----------------------
.zerofill __DATA,__bss,_have_read_eof,8,3
# ----------------------
.zerofill __DATA,__bss,_hold_count,8,3
# ----------------------
.zerofill __DATA,__bss,_hold_area,8,3
# ----------------------
.zerofill __DATA,__bss,_last_line_number,8,3
# ----------------------

.subsections_via_symbols
