	.macosx_version_min 10, 13
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_xalloc_die
_xalloc_die:
	pushq     %rbp
Lcfi0:
Lcfi1:
	movq      %rsp, %rbp
Lcfi2:
	leaq      L_.str(%rip), %rdx
	leaq      L_.str.1(%rip), %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	call      _cleanup_fatal
# ----------------------
	.p2align 4, 0x90
_cleanup_fatal:
	pushq     %rbp
Lcfi3:
Lcfi4:
	movq      %rsp, %rbp
Lcfi5:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi6:
Lcfi7:
Lcfi8:
	call      _close_output_file
	leaq      _caught_signals(%rip), %rsi
	leaq      -28(%rbp), %rdx
	movl      $1, %edi
	call      _sigprocmask
	cmpb      $0, _remove_files(%rip)
	je        LBB1_7
	cmpl      $0, _files_created(%rip)
	je        LBB1_6
	leaq      L_.str(%rip), %r14
	xorl      %ebx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB1_3:
	movl      %ebx, %edi
	call      _make_filename
	movq      %rax, %r15
	movq      %r15, %rdi
	call      _rpl_unlink
	testl     %eax, %eax
	je        LBB1_5
	call      ___error
	movl      (%rax), %esi
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r14, %rdx
	movq      %r15, %rcx
	call      _error
LBB1_5:
	incl      %ebx
	cmpl      _files_created(%rip), %ebx
	jb        LBB1_3
LBB1_6:
	movl      $0, _files_created(%rip)
LBB1_7:
	leaq      -28(%rbp), %rsi
	movl      $3, %edi
	xorl      %edx, %edx
	call      _sigprocmask
	movl      $1, %edi
	call      _exit
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_main
_main:
	pushq     %rbp
Lcfi9:
Lcfi10:
	movq      %rsp, %rbp
Lcfi11:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $104, %rsp
Lcfi12:
Lcfi13:
Lcfi14:
Lcfi15:
Lcfi16:
	movq      %rsi, %rbx
	movl      %edi, -104(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rbx), %rdi
	call      _set_program_name
	leaq      L_.str.2(%rip), %r14
	xorl      %edi, %edi
	movq      %r14, %rsi
	call      _setlocale
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
	movq      %rbx, -88(%rbp)
	movq      %rbx, _global_argv(%rip)
	movq      $0, _controls(%rip)
	movq      $0, _control_used(%rip)
	movb      $0, _suppress_count(%rip)
	movb      $1, _remove_files(%rip)
	movb      $0, _suppress_matched(%rip)
	leaq      L_.str.3(%rip), %rax
	movq      %rax, _prefix(%rip)
	leaq      L_.str.4(%rip), %r15
	leaq      _longopts(%rip), %r12
	leaq      LJTI2_0(%rip), %rbx
	movq      _rpl_optarg@GOTPCREL(%rip), %r13
	jmp       LBB2_1
# ----------------------
	.p2align 4, 0x90
LBB2_12:
	movb      $1, _suppress_count(%rip)
LBB2_1:
	xorl      %r8d, %r8d
	movl      -104(%rbp), %edi
	movq      -88(%rbp), %rsi
	movq      %r15, %rdx
	movq      %r12, %rcx
	call      _rpl_getopt_long
	cmpl      $97, %eax
	jle       LBB2_2
	addl      $-98, %eax
	cmpl      $30, %eax
	ja        LBB2_16
	movslq    (%rbx,%rax,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
LBB2_9:
	movq      (%r13), %rax
	movq      %rax, _suffix(%rip)
	jmp       LBB2_1
LBB2_8:
	movq      (%r13), %rax
	movq      %rax, _prefix(%rip)
	jmp       LBB2_1
LBB2_10:
	movb      $0, _remove_files(%rip)
	jmp       LBB2_1
LBB2_11:
	movq      (%r13), %rdi
	xorl      %esi, %esi
	movl      $2147483647, %edx
	xorl      %r9d, %r9d
	movq      %r14, %rcx
	leaq      L_.str.5(%rip), %r8
	call      _xdectoimax
	movl      %eax, _digits(%rip)
	jmp       LBB2_1
LBB2_13:
	movb      $1, _elide_empty_files(%rip)
	jmp       LBB2_1
LBB2_14:
	movb      $1, _suppress_matched(%rip)
	jmp       LBB2_1
LBB2_2:
	cmpl      $-1, %eax
	jne       LBB2_3
	movq      _rpl_optind@GOTPCREL(%rip), %r12
	movl      (%r12), %eax
	movl      -104(%rbp), %ecx
	subl      %eax, %ecx
	cmpl      $1, %ecx
	movq      -88(%rbp), %r15
	jle       LBB2_18
	movq      _prefix(%rip), %rdi
	call      _strlen
	movq      %rax, %rdx
	cmpq      $0, _suffix(%rip)
	je        LBB2_63
	movq      %rdx, -120(%rbp)
	movq      _suffix(%rip), %r14
	leaq      LJTI2_1(%rip), %r12
	movq      %r14, -112(%rbp)
	xorl      %ebx, %ebx
	jmp       LBB2_24
# ----------------------
	.p2align 4, 0x90
LBB2_61:
	incq      %r14
LBB2_24:
	movb      (%r14), %al
	cmpb      $37, %al
	je        LBB2_30
	testb     %al, %al
	jne       LBB2_61
	jmp       LBB2_26
# ----------------------
	.p2align 4, 0x90
LBB2_30:
	cmpb      $37, 1(%r14)
	leaq      1(%r14), %r14
	je        LBB2_61
	testb     $1, %bl
	je        LBB2_33
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.35(%rip), %rdx
	call      _error
LBB2_33:
	xorl      %r15d, %r15d
	jmp       LBB2_34
# ----------------------
	.p2align 4, 0x90
LBB2_38:
	incq      %r14
LBB2_34:
	movb      (%r14), %al
	movsbl    %al, %ecx
	leal      -35(%rcx), %edx
	cmpl      $13, %edx
	ja        LBB2_39
	movslq    (%r12,%rdx,4), %rdx
	addq      %r12, %rdx
	jmp       *%rdx
LBB2_37:
	orl       $2, %r15d
	jmp       LBB2_38
# ----------------------
	.p2align 4, 0x90
LBB2_36:
	orl       $1, %r15d
	incq      %r14
	jmp       LBB2_34
# ----------------------
	.p2align 4, 0x90
LBB2_39:
	addl      $-48, %ecx
	cmpl      $9, %ecx
	ja        LBB2_41
# ----------------------
	.p2align 4, 0x90
LBB2_40:
	movsbl    1(%r14), %eax
	incq      %r14
	leal      -48(%rax), %ecx
	cmpl      $10, %ecx
	jb        LBB2_40
LBB2_41:
	cmpb      $46, %al
	jne       LBB2_43
# ----------------------
	.p2align 4, 0x90
LBB2_42:
	movsbl    1(%r14), %eax
	incq      %r14
	leal      -48(%rax), %ecx
	cmpl      $10, %ecx
	jb        LBB2_42
LBB2_43:
	movzbl    %al, %ebx
	movl      $-2, %r13d
	movl      %ebx, %ecx
	addb      $-88, %cl
	cmpb      $32, %cl
	movq      %rbx, -96(%rbp)
	ja        LBB2_44
	movzbl    %cl, %ecx
	movq      $4303355905, %rdx
	btq       %rcx, %rdx
	jb        LBB2_50
	movl      $135168, %edx
	btq       %rcx, %rdx
	jae       LBB2_48
	movb      $117, (%r14)
	jmp       LBB2_58
LBB2_50:
	movl      $-3, %r13d
	jmp       LBB2_58
LBB2_48:
	cmpq      $29, %rcx
	je        LBB2_58
LBB2_44:
	testb     %al, %al
	jne       LBB2_51
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.37(%rip), %rdx
	call      _error
	jmp       LBB2_58
LBB2_51:
	js        LBB2_53
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%rbx,4), %ecx
	shrl      $18, %ecx
	andl      $1, %ecx
	jmp       LBB2_54
LBB2_53:
	movl      $262144, %esi
	movl      %ebx, %edi
	call      ___maskrune
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
LBB2_54:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        LBB2_56
	leaq      L_.str.38(%rip), %rdx
	jmp       LBB2_57
LBB2_56:
	leaq      L_.str.39(%rip), %rdx
LBB2_57:
	movl      %ebx, %ecx
	call      _error
# ----------------------
	.p2align 4, 0x90
LBB2_58:
	andl      %r15d, %r13d
	movb      $1, %bl
	je        LBB2_60
	addl      %r13d, %r13d
	andl      $4, %r13d
	xorl      $39, %r13d
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.40(%rip), %rdx
	movl      %r13d, %ecx
	movq      -96(%rbp), %r8
	call      _error
LBB2_60:
	movq      -88(%rbp), %r15
	jmp       LBB2_61
LBB2_26:
	testb     $1, %bl
	jne       LBB2_28
	leaq      L_.str.36(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB2_28:
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movl      $-1, %r9d
	xorl      %eax, %eax
	movq      -112(%rbp), %r8
	call      ___snprintf_chk
	testl     %eax, %eax
	movq      _rpl_optind@GOTPCREL(%rip), %r12
	movq      -120(%rbp), %rdx
	js        LBB2_29
	cltq      
	jmp       LBB2_66
LBB2_63:
	movl      _digits(%rip), %eax
	cmpl      $10, %eax
	jae       LBB2_65
	movl      $10, %eax
	jmp       LBB2_66
LBB2_65:
	movslq    _digits(%rip), %rax
LBB2_66:
	movq      $-2, %rcx
	subq      %rdx, %rcx
	cmpq      %rax, %rcx
	jb        LBB2_219
	leaq      1(%rdx,%rax), %rdi
	call      _xmalloc
	movq      %rax, _filename_space(%rip)
	movslq    (%r12), %rax
	leal      1(%rax), %ecx
	movl      %ecx, (%r12)
	movq      (%r15,%rax,8), %rbx
	leaq      L_.str.41(%rip), %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB2_70
	xorl      %edi, %edi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %rbx, %rsi
	call      _fd_reopen
	testl     %eax, %eax
	jns       LBB2_70
	call      ___error
	movl      (%rax), %r14d
	movq      %rbx, %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str.42(%rip), %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
LBB2_70:
	movl      (%r12), %ebx
	cmpl      -104(%rbp), %ebx
	jge       LBB2_115
# ----------------------
	.p2align 4, 0x90
LBB2_71:
	movslq    %ebx, %r12
	movq      (%r15,%r12,8), %rax
	movq      %rax, -120(%rbp)
	movsbl    (%rax), %r13d
	cmpl      $47, %r13d
	movq      %rbx, -96(%rbp)
	je        LBB2_73
	cmpb      $37, %r13b
	jne       LBB2_86
LBB2_73:
	cmpb      $37, %r13b
	sete      %r14b
	movq      -120(%rbp), %r15
	leaq      1(%r15), %rbx
	movq      %rbx, %rdi
	movl      %r13d, %esi
	call      _strrchr
	movq      %rax, %r12
	testq     %r12, %r12
	jne       LBB2_75
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.47(%rip), %rdx
	movq      %r15, %rcx
	movl      %r13d, %r8d
	call      _error
LBB2_75:
	movq      _control_used(%rip), %rax
	cmpq      _new_control_record.control_allocated(%rip), %rax
	movq      %rbx, -112(%rbp)
	jne       LBB2_76
	movq      _controls(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB2_78
	movq      $128102389400760774, %rcx
	cmpq      %rcx, %rax
	ja        LBB2_219
	movq      %rax, %rcx
	shrq      $1, %rcx
	leaq      1(%rax,%rcx), %rax
	jmp       LBB2_81
# ----------------------
	.p2align 4, 0x90
LBB2_86:
	movq      _control_used(%rip), %rax
	cmpq      _new_control_record.control_allocated(%rip), %rax
	jne       LBB2_87
	movq      _controls(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB2_89
	movq      $128102389400760774, %rcx
	cmpq      %rcx, %rax
	ja        LBB2_221
	movq      %rax, %rcx
	shrq      $1, %rcx
	leaq      1(%rax,%rcx), %rcx
	jmp       LBB2_92
# ----------------------
	.p2align 4, 0x90
LBB2_76:
	movq      _controls(%rip), %r13
	jmp       LBB2_82
LBB2_87:
	movq      _controls(%rip), %rbx
	jmp       LBB2_93
LBB2_78:
	testq     %rax, %rax
	movl      $1, %ecx
	cmove     %rcx, %rax
LBB2_81:
	movq      %rax, _new_control_record.control_allocated(%rip)
	shlq      $5, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, %r13
	movq      %r13, _controls(%rip)
	movq      _control_used(%rip), %rax
LBB2_82:
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
	movq      %rax, 64(%r13,%r15)
	movq      $0, 72(%r13,%r15)
	movq      _rpl_re_syntax_options@GOTPCREL(%rip), %rax
	movq      $710, (%rax)
	movq      -112(%rbp), %rdi
	movq      %rbx, %rsi
	movq      %r14, %rdx
	call      _rpl_re_compile_pattern
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB2_220
	addq      %r15, %r13
	cmpb      $0, 1(%r12)
	je        LBB2_102
	incq      %r12
	xorl      %esi, %esi
	movl      $10, %edx
	movq      %r12, %rdi
	movq      %r13, %rcx
	leaq      L_.str.2(%rip), %r8
	call      _xstrtoimax
	testl     %eax, %eax
	movq      -96(%rbp), %rbx
	je        LBB2_103
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.49(%rip), %rdx
	movq      -120(%rbp), %rcx
	call      _error
	jmp       LBB2_103
LBB2_89:
	testq     %rax, %rax
	movl      $1, %ecx
	cmovne    %rax, %rcx
LBB2_92:
	movq      %rcx, _new_control_record.control_allocated(%rip)
	shlq      $5, %rcx
	leaq      (%rcx,%rcx,2), %rsi
	call      _xrealloc
	movq      %rax, %rbx
	movq      %rbx, _controls(%rip)
	movq      _control_used(%rip), %rax
LBB2_93:
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
	leaq      L_.str.2(%rip), %r8
	call      _xstrtoumax
	testl     %eax, %eax
	je        LBB2_95
	movq      (%r15,%r12,8), %rcx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.43(%rip), %rdx
	call      _error
LBB2_95:
	movq      -128(%rbp), %rax
	testq     %rax, %rax
	jne       LBB2_97
	movq      (%r15,%r12,8), %rcx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.44(%rip), %rdx
	call      _error
	movq      -128(%rbp), %rax
LBB2_97:
	movq      _parse_patterns.last_val(%rip), %rcx
	cmpq      %rcx, %rax
	jae       LBB2_99
	movq      (%r15,%r12,8), %rdi
	call      _quote
	movq      %rax, %r13
	movq      _parse_patterns.last_val(%rip), %rdi
	leaq      -80(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %r8
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.45(%rip), %rdx
	movq      %r13, %rcx
	call      _error
	movq      -128(%rbp), %rax
	movq      _parse_patterns.last_val(%rip), %rcx
LBB2_99:
	cmpq      %rcx, %rax
	jne       LBB2_101
	movq      (%r15,%r12,8), %rdi
	call      _quote
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.46(%rip), %rdx
	call      _error
	movq      -128(%rbp), %rax
LBB2_101:
	leaq      (%rbx,%r14), %r13
	movq      %rax, _parse_patterns.last_val(%rip)
	movq      %rax, 8(%rbx,%r14)
LBB2_102:
	movq      -96(%rbp), %rbx
LBB2_103:
	leal      1(%rbx), %r15d
	cmpl      -104(%rbp), %r15d
	jge       LBB2_114
	movslq    %r15d, %rcx
	movq      -88(%rbp), %rax
	movq      (%rax,%rcx,8), %r12
	cmpb      $123, (%r12)
	jne       LBB2_114
	movq      %rcx, %rbx
	movq      %r12, %rdi
	call      _strlen
	movq      %rax, %r14
	cmpb      $125, -1(%r12,%r14)
	je        LBB2_107
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.50(%rip), %rdx
	movq      %r12, %rcx
	call      _error
LBB2_107:
	movb      $0, -1(%r12,%r14)
	leaq      1(%r12), %rdi
	cmpq      $3, %r14
	jne       LBB2_110
	cmpb      $42, (%rdi)
	jne       LBB2_110
	movb      $1, 28(%r13)
	jmp       LBB2_113
LBB2_110:
	xorl      %esi, %esi
	movl      $10, %edx
	leaq      -80(%rbp), %rcx
	leaq      L_.str.2(%rip), %r8
	call      _xstrtoumax
	testl     %eax, %eax
	je        LBB2_112
	movq      _global_argv(%rip), %rax
	movq      (%rax,%rbx,8), %rcx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.51(%rip), %rdx
	call      _error
LBB2_112:
	movq      -80(%rbp), %rax
	movq      %rax, 16(%r13)
LBB2_113:
	movb      $125, -1(%r12,%r14)
	movl      %r15d, %ebx
LBB2_114:
	incl      %ebx
	cmpl      -104(%rbp), %ebx
	movq      -88(%rbp), %r15
	jl        LBB2_71
LBB2_115:
	movl      $0, _caught_signals(%rip)
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r12
	leaq      -80(%rbp), %r14
# ----------------------
	.p2align 4, 0x90
LBB2_116:
	movl      (%rbx,%r12), %r15d
	xorl      %esi, %esi
	movl      %r15d, %edi
	movq      %r14, %rdx
	call      _sigaction
	cmpq      $1, -80(%rbp)
	je        LBB2_118
	decl      %r15d
	movl      $1, %eax
	movl      %r15d, %ecx
	shll      %cl, %eax
	orl       %eax, _caught_signals(%rip)
LBB2_118:
	addq      $4, %rbx
	cmpq      $40, %rbx
	jne       LBB2_116
	leaq      _interrupt_handler(%rip), %rax
	movq      %rax, -80(%rbp)
	movl      _caught_signals(%rip), %eax
	movl      %eax, -72(%rbp)
	movl      $0, -68(%rbp)
	testb     $32, %ah
	je        LBB2_121
	leaq      -80(%rbp), %rsi
	movl      $14, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_121:
	testb     $1, %al
	je        LBB2_123
	leaq      -80(%rbp), %rsi
	movl      $1, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_123:
	testb     $2, %al
	je        LBB2_125
	leaq      -80(%rbp), %rsi
	movl      $2, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_125:
	testb     $16, %ah
	je        LBB2_127
	leaq      -80(%rbp), %rsi
	movl      $13, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_127:
	testb     $4, %al
	je        LBB2_129
	leaq      -80(%rbp), %rsi
	movl      $3, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_129:
	testb     $64, %ah
	je        LBB2_131
	leaq      -80(%rbp), %rsi
	movl      $15, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_131:
	testl     $67108864, %eax
	je        LBB2_133
	leaq      -80(%rbp), %rsi
	movl      $27, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_133:
	testl     $33554432, %eax
	je        LBB2_135
	leaq      -80(%rbp), %rsi
	movl      $26, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_135:
	testl     $8388608, %eax
	je        LBB2_137
	leaq      -80(%rbp), %rsi
	movl      $24, %edi
	xorl      %edx, %edx
	call      _sigaction
	movl      _caught_signals(%rip), %eax
LBB2_137:
	testl     $16777216, %eax
	je        LBB2_139
	leaq      -80(%rbp), %rsi
	movl      $25, %edi
	xorl      %edx, %edx
	call      _sigaction
LBB2_139:
	cmpq      $0, _control_used(%rip)
	je        LBB2_212
	movq      _controls(%rip), %r14
	xorl      %ecx, %ecx
LBB2_141:
	leaq      (%rcx,%rcx,2), %rbx
	shlq      $5, %rbx
	cmpb      $0, 30(%r14,%rbx)
	movq      %rcx, -104(%rbp)
	movq      %rbx, -96(%rbp)
	je        LBB2_191
	xorl      %eax, %eax
	cmpb      $0, 28(%r14,%rbx)
	jne       LBB2_145
	jmp       LBB2_144
# ----------------------
	.p2align 4, 0x90
LBB2_186:
	testb     %r15b, %r15b
	jne       LBB2_188
	call      _close_output_file
LBB2_188:
	movq      -88(%rbp), %rax
	cmpq      $0, (%rax)
	movq      -104(%rbp), %rcx
	movq      -96(%rbp), %rbx
	jle       LBB2_190
	movq      %r13, _current_line(%rip)
LBB2_190:
	movq      -120(%rbp), %rax
	incq      %rax
	movq      _controls(%rip), %r14
	cmpb      $0, 28(%r14,%rbx)
	jne       LBB2_145
LBB2_144:
	cmpq      16(%r14,%rbx), %rax
	ja        LBB2_211
LBB2_145:
	movq      %rax, -120(%rbp)
	movb      29(%r14,%rbx), %r15b
	testb     %r15b, %r15b
	jne       LBB2_147
	call      _create_output_file
LBB2_147:
	leaq      (%r14,%rbx), %r12
	cmpb      $1, _suppress_matched(%rip)
	jne       LBB2_150
	movq      _current_line(%rip), %rax
	testq     %rax, %rax
	je        LBB2_150
	call      _remove_line
LBB2_150:
	leaq      28(%r14,%rbx), %rax
	movq      %rax, -112(%rbp)
	cmpq      $0, (%r12)
	movq      %r12, -88(%rbp)
	js        LBB2_151
	movq      _current_line(%rip), %rdi
	incq      %rdi
	movq      %rdi, _current_line(%rip)
	call      _find_line
	testq     %rax, %rax
	je        LBB2_165
	leaq      32(%r14,%rbx), %r13
LBB2_161:
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
	cmpq      $-1, %rax
	jne       LBB2_162
	call      _remove_line
	movq      %rax, %r12
	testb     %r15b, %r15b
	jne       LBB2_172
	movq      (%r12), %rdx
	movq      8(%r12), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%r12), %rax
	addq      %rax, _bytes_written(%rip)
LBB2_172:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	movq      %rdi, _current_line(%rip)
	call      _find_line
	testq     %rax, %rax
	movq      -88(%rbp), %r12
	jne       LBB2_161
	jmp       LBB2_165
# ----------------------
	.p2align 4, 0x90
LBB2_151:
	leaq      32(%r14,%rbx), %r13
LBB2_152:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	movq      %rdi, _current_line(%rip)
	call      _find_line
	testq     %rax, %rax
	je        LBB2_153
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
	cmpq      $-1, %rax
	je        LBB2_152
LBB2_162:
	cmpq      $-2, %rax
	je        LBB2_163
	movq      (%r12), %r13
	addq      _current_line(%rip), %r13
	movslq    24(%r14,%rbx), %rax
	movq      %rax, -112(%rbp)
	cmpq      $0, _head(%rip)
	jne       LBB2_179
	call      _load_buffer
	testb     %al, %al
	jne       LBB2_179
	call      ___error
	movl      (%rax), %esi
	movl      $1, %edi
	xorl      %eax, %eax
	leaq      L_.str.59(%rip), %rdx
	call      _error
# ----------------------
	.p2align 4, 0x90
LBB2_179:
	movq      _head(%rip), %rax
	movq      %r13, %r12
	subq      24(%rax), %r12
	jb        LBB2_222
	je        LBB2_186
	xorl      %r14d, %r14d
# ----------------------
	.p2align 4, 0x90
LBB2_182:
	call      _remove_line
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        LBB2_222
	testb     %r15b, %r15b
	jne       LBB2_185
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
LBB2_185:
	incq      %r14
	cmpq      %r12, %r14
	jb        LBB2_182
	jmp       LBB2_186
# ----------------------
	.p2align 4, 0x90
LBB2_191:
	xorl      %r15d, %r15d
	cmpb      $0, 28(%r14,%rbx)
	jne       LBB2_194
	jmp       LBB2_193
# ----------------------
	.p2align 4, 0x90
LBB2_207:
	movq      _controls(%rip), %r14
	movq      %r13, %r15
	cmpb      $0, 28(%r14,%rbx)
	jne       LBB2_194
LBB2_193:
	cmpq      16(%r14,%rbx), %r15
	ja        LBB2_211
LBB2_194:
	movq      8(%r14,%rbx), %r12
	call      _create_output_file
	movq      _current_line(%rip), %rdi
	incq      %rdi
	call      _find_line
	testq     %rax, %rax
	jne       LBB2_196
	cmpb      $1, _suppress_matched(%rip)
	je        LBB2_223
LBB2_196:
	movq      %r15, -88(%rbp)
	leaq      1(%r15), %r13
	imulq     %r13, %r12
	cmpq      $0, _head(%rip)
	jne       LBB2_199
	call      _load_buffer
	testb     %al, %al
	jne       LBB2_199
	call      ___error
	movl      (%rax), %esi
	movl      $1, %edi
	xorl      %eax, %eax
	leaq      L_.str.59(%rip), %rdx
	call      _error
# ----------------------
	.p2align 4, 0x90
LBB2_199:
	movq      _head(%rip), %rax
	movq      24(%rax), %r15
	cmpq      %r12, %r15
	jb        LBB2_201
	jmp       LBB2_204
# ----------------------
	.p2align 4, 0x90
LBB2_203:
	incq      %r15
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
	cmpq      %r12, %r15
	jae       LBB2_204
LBB2_201:
	call      _remove_line
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB2_203
	jmp       LBB2_202
# ----------------------
	.p2align 4, 0x90
LBB2_204:
	call      _close_output_file
	cmpb      $1, _suppress_matched(%rip)
	jne       LBB2_206
	call      _remove_line
LBB2_206:
	movq      _current_line(%rip), %rdi
	incq      %rdi
	call      _find_line
	testq     %rax, %rax
	movq      -104(%rbp), %rcx
	movq      -96(%rbp), %rbx
	jne       LBB2_207
	movb      _suppress_matched(%rip), %al
	testb     %al, %al
	jne       LBB2_207
	jmp       LBB2_209
# ----------------------
	.p2align 4, 0x90
LBB2_211:
	incq      %rcx
	cmpq      _control_used(%rip), %rcx
	jb        LBB2_141
LBB2_212:
	call      _create_output_file
	jmp       LBB2_214
# ----------------------
	.p2align 4, 0x90
LBB2_213:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
LBB2_214:
	call      _remove_line
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB2_213
	call      _close_output_file
	xorl      %edi, %edi
	call      _close
	testl     %eax, %eax
	jne       LBB2_216
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB2_224
	xorl      %eax, %eax
	addq      $104, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB2_165:
	movq      -112(%rbp), %rax
	cmpb      $0, (%rax)
	je        LBB2_174
	testb     %r15b, %r15b
	je        LBB2_168
	jmp       LBB2_170
# ----------------------
	.p2align 4, 0x90
LBB2_167:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
LBB2_168:
	call      _remove_line
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB2_167
	call      _close_output_file
LBB2_170:
	xorl      %edi, %edi
	call      _exit
LBB2_153:
	movq      -112(%rbp), %rax
	cmpb      $0, (%rax)
	je        LBB2_174
	testb     %r15b, %r15b
	je        LBB2_156
	jmp       LBB2_158
# ----------------------
	.p2align 4, 0x90
LBB2_155:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
LBB2_156:
	call      _remove_line
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB2_155
	call      _close_output_file
LBB2_158:
	xorl      %edi, %edi
	call      _exit
LBB2_202:
	addq      -96(%rbp), %r14
LBB2_210:
	movq      %r14, %rdi
	movq      -88(%rbp), %rsi
	call      _handle_line_error
LBB2_222:
	movq      _global_argv(%rip), %rax
	movq      -112(%rbp), %rcx
	movq      (%rax,%rcx,8), %rcx
	leaq      L_.str.58(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	call      _cleanup_fatal
LBB2_163:
	leaq      L_.str.52(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
LBB2_164:
	xorl      %eax, %eax
	call      _error
	call      _cleanup_fatal
LBB2_223:
	addq      -96(%rbp), %r14
	movq      %r14, %rdi
	movq      %r15, %rsi
	call      _handle_line_error
LBB2_209:
	addq      %rbx, %r14
	jmp       LBB2_210
LBB2_220:
	leaq      L_.str.48(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      -120(%rbp), %rcx
	movq      %rbx, %r8
	call      _error
	call      _cleanup_fatal
LBB2_3:
	cmpl      $-131, %eax
	je        LBB2_15
	cmpl      $-130, %eax
	jne       LBB2_16
	xorl      %edi, %edi
	call      _usage
LBB2_219:
	call      _xalloc_die
LBB2_15:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      $0, (%rsp)
	leaq      L_.str.6(%rip), %rsi
	leaq      L_.str.7(%rip), %rdx
	leaq      L_.str.8(%rip), %r8
	leaq      L_.str.9(%rip), %r9
	xorl      %eax, %eax
	call      _version_etc
	xorl      %edi, %edi
	call      _exit
LBB2_16:
	movl      $1, %edi
	call      _usage
LBB2_221:
	call      _xalloc_die
LBB2_18:
	cmpl      -104(%rbp), %eax
	jge       LBB2_19
	movslq    -104(%rbp), %rax
	movq      -88(%rbp), %rcx
	movq      -8(%rcx,%rax,8), %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str.11(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	movl      $1, %edi
	call      _usage
LBB2_29:
	call      _xalloc_die
LBB2_174:
	movzbl    %r15b, %edx
	movq      %r12, %rdi
	movq      -120(%rbp), %rsi
	call      _regexp_error
LBB2_19:
	leaq      L_.str.10(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	movl      $1, %edi
	call      _usage
LBB2_216:
	call      ___error
	movl      (%rax), %esi
	leaq      L_.str.12(%rip), %rdx
	xorl      %edi, %edi
	jmp       LBB2_164
LBB2_224:
	call      ___stack_chk_fail
# ----------------------
	.p2align 2, 0x90
LJTI2_0:
	.long	L2_0_set_9
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_8
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_10
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_11
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_12
	.long	L2_0_set_16
	.long	L2_0_set_12
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_13
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_16
	.long	L2_0_set_14
LJTI2_1:
	.long	L2_1_set_37
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_36
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_38
	.long	L2_1_set_39
	.long	L2_1_set_39
	.long	L2_1_set_38
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_usage
_usage:
	pushq     %rbp
Lcfi17:
Lcfi18:
	movq      %rsp, %rbp
Lcfi19:
	pushq     %r14
	pushq     %rbx
Lcfi20:
Lcfi21:
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       LBB3_1
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str.13(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str.14(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.15(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.63(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.16(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.17(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.18(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.19(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.20(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.21(%rip), %rdi
	call      _fputs
	leaq      L_.str.73(%rip), %rdi
	leaq      L_.str.7(%rip), %rsi
	leaq      L_.str.74(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
	testq     %rax, %rax
	je        LBB3_5
	leaq      L_.str.75(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
	testl     %eax, %eax
	je        LBB3_5
	leaq      L_.str.76(%rip), %rdi
	leaq      L_.str.6(%rip), %rsi
	xorl      %eax, %eax
	call      _printf
LBB3_5:
	leaq      L_.str.77(%rip), %rdi
	leaq      L_.str.74(%rip), %rsi
	leaq      L_.str.6(%rip), %rbx
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      _printf
	leaq      L_.str.78(%rip), %rdi
	leaq      L_.str.79(%rip), %rdx
	xorl      %eax, %eax
	movq      %rbx, %rsi
	call      _printf
	movl      %r14d, %edi
	call      _exit
LBB3_1:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      L_.str.62(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
	movl      %r14d, %edi
	call      _exit
# ----------------------
	.p2align 4, 0x90
_interrupt_handler:
	pushq     %rbp
Lcfi22:
Lcfi23:
	movq      %rsp, %rbp
Lcfi24:
	pushq     %r14
	pushq     %rbx
Lcfi25:
Lcfi26:
	movl      %edi, %r14d
	cmpb      $0, _remove_files(%rip)
	je        LBB4_5
	cmpl      $0, _files_created(%rip)
	je        LBB4_4
	xorl      %ebx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB4_3:
	movl      %ebx, %edi
	call      _make_filename
	movq      %rax, %rdi
	call      _rpl_unlink
	incl      %ebx
	cmpl      _files_created(%rip), %ebx
	jb        LBB4_3
LBB4_4:
	movl      $0, _files_created(%rip)
LBB4_5:
	xorl      %esi, %esi
	movl      %r14d, %edi
	call      _signal
	movl      %r14d, %edi
	popq      %rbx
	popq      %r14
	popq      %rbp
	jmp       _raise
# ----------------------
	.p2align 4, 0x90
_close_output_file:
	pushq     %rbp
Lcfi27:
Lcfi28:
	movq      %rsp, %rbp
Lcfi29:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $32, %rsp
Lcfi30:
Lcfi31:
Lcfi32:
Lcfi33:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -40(%rbp)
	movq      _output_stream(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB5_13
	testb     $64, 16(%rdi)
	jne       LBB5_2
	call      _rpl_fclose
	testl     %eax, %eax
	jne       LBB5_5
	movq      _bytes_written(%rip), %rdi
	testq     %rdi, %rdi
	jne       LBB5_10
	cmpb      $1, _elide_empty_files(%rip)
	jne       LBB5_10
	leaq      _caught_signals(%rip), %rsi
	leaq      -64(%rbp), %r14
	movl      $1, %edi
	movq      %r14, %rdx
	call      _sigprocmask
	movq      _output_filename(%rip), %rdi
	call      _rpl_unlink
	movl      %eax, %r12d
	xorl      %ebx, %ebx
	testl     %r12d, %r12d
	sete      %bl
	call      ___error
	movl      (%rax), %r15d
	subl      %ebx, _files_created(%rip)
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r14, %rsi
	call      _sigprocmask
	testl     %r12d, %r12d
	je        LBB5_12
	movq      _output_filename(%rip), %rcx
	leaq      L_.str(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r15d, %esi
	call      _error
	jmp       LBB5_12
LBB5_10:
	movb      _suppress_count(%rip), %al
	testb     %al, %al
	jne       LBB5_12
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	leaq      -64(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rcx
	leaq      L_.str.23(%rip), %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rcx, %rdx
	call      _fprintf
LBB5_12:
	movq      $0, _output_stream(%rip)
LBB5_13:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -40(%rbp), %rax
	jne       LBB5_15
	addq      $32, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB5_15:
	call      ___stack_chk_fail
LBB5_2:
	movq      _output_filename(%rip), %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str.22(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	jmp       LBB5_3
LBB5_5:
	call      ___error
	movl      (%rax), %esi
	movq      _output_filename(%rip), %rcx
	leaq      L_.str(%rip), %rdx
	xorl      %edi, %edi
LBB5_3:
	xorl      %eax, %eax
	call      _error
	movq      $0, _output_stream(%rip)
	call      _cleanup_fatal
# ----------------------
	.p2align 4, 0x90
_make_filename:
	pushq     %rbp
Lcfi34:
Lcfi35:
	movq      %rsp, %rbp
Lcfi36:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi37:
Lcfi38:
Lcfi39:
	movl      %edi, %r14d
	movq      _filename_space(%rip), %rdi
	movq      _prefix(%rip), %rsi
	call      _strcpy
	movq      _suffix(%rip), %r15
	movq      _filename_space(%rip), %rbx
	movq      _prefix(%rip), %rdi
	call      _strlen
	movq      %rax, %rdi
	addq      %rbx, %rdi
	cmpq      $0, %r15
	je        LBB6_2
	movq      _suffix(%rip), %rcx
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movl      %r14d, %r8d
	call      ___sprintf_chk
	jmp       LBB6_3
LBB6_2:
	movl      _digits(%rip), %r8d
	leaq      L_.str.24(%rip), %rcx
	movl      $0, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movl      %r14d, %r9d
	call      ___sprintf_chk
LBB6_3:
	movq      _filename_space(%rip), %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_create_output_file:
	pushq     %rbp
Lcfi40:
Lcfi41:
	movq      %rsp, %rbp
Lcfi42:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $16, %rsp
Lcfi43:
Lcfi44:
Lcfi45:
Lcfi46:
	movl      _files_created(%rip), %edi
	call      _make_filename
	movq      %rax, %rcx
	movq      %rcx, _output_filename(%rip)
	movl      _files_created(%rip), %eax
	cmpl      $-1, %eax
	je        LBB7_1
	leaq      _caught_signals(%rip), %rsi
	leaq      -36(%rbp), %r15
	movl      $1, %edi
	movq      %r15, %rdx
	call      _sigprocmask
	movq      _output_filename(%rip), %rdi
	leaq      L_.str.61(%rip), %rsi
	call      _fopen_safer
	movq      %rax, %r12
	movq      %r12, _output_stream(%rip)
	xorl      %ebx, %ebx
	testq     %r12, %r12
	setne     %bl
	call      ___error
	movl      (%rax), %r14d
	addl      %ebx, _files_created(%rip)
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigprocmask
	testq     %r12, %r12
	je        LBB7_3
	movq      $0, _bytes_written(%rip)
	addq      $16, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB7_1:
	movl      $84, %r14d
	jmp       LBB7_4
LBB7_3:
	movq      _output_filename(%rip), %rcx
LBB7_4:
	leaq      L_.str(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r14d, %esi
	call      _error
	call      _cleanup_fatal
# ----------------------
	.p2align 4, 0x90
_remove_line:
	pushq     %rbp
Lcfi47:
Lcfi48:
	movq      %rsp, %rbp
Lcfi49:
	pushq     %r14
	pushq     %rbx
Lcfi50:
Lcfi51:
	movq      _remove_line.prev_buf(%rip), %r14
	testq     %r14, %r14
	je        LBB8_4
	movq      48(%r14), %rdi
	testq     %rdi, %rdi
	je        LBB8_3
# ----------------------
	.p2align 4, 0x90
LBB8_2:
	movq      1304(%rdi), %rbx
	call      _free
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       LBB8_2
LBB8_3:
	movq      $0, 48(%r14)
	movq      40(%r14), %rdi
	call      _free
	movq      $0, 40(%r14)
	movq      _remove_line.prev_buf(%rip), %rdi
	call      _free
	movq      $0, _remove_line.prev_buf(%rip)
LBB8_4:
	movq      _head(%rip), %rcx
	testq     %rcx, %rcx
	jne       LBB8_8
	call      _load_buffer
	testb     %al, %al
	je        LBB8_6
	movq      _head(%rip), %rcx
LBB8_8:
	movq      24(%rcx), %rax
	cmpq      %rax, _current_line(%rip)
	jae       LBB8_10
	movq      %rax, _current_line(%rip)
LBB8_10:
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
	jne       LBB8_14
	movq      1304(%rdx), %rdx
	movq      %rdx, 56(%rcx)
	testq     %rdx, %rdx
	je        LBB8_13
	cmpq      $0, (%rdx)
	jne       LBB8_14
LBB8_13:
	movq      %rcx, _remove_line.prev_buf(%rip)
	movq      64(%rcx), %rcx
	movq      %rcx, _head(%rip)
	jmp       LBB8_14
LBB8_6:
	xorl      %eax, %eax
LBB8_14:
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_find_line:
	pushq     %rbp
Lcfi52:
Lcfi53:
	movq      %rsp, %rbp
Lcfi54:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi55:
Lcfi56:
Lcfi57:
	movq      %rdi, %rbx
	movq      _head(%rip), %r15
	testq     %r15, %r15
	jne       LBB9_3
	call      _load_buffer
	testb     %al, %al
	je        LBB9_16
	movq      _head(%rip), %r15
LBB9_3:
	movq      16(%r15), %rax
	cmpq      %rbx, %rax
	jbe       LBB9_5
LBB9_16:
	xorl      %r14d, %r14d
	jmp       LBB9_17
LBB9_5:
	testq     %r15, %r15
	je        LBB9_18
	movq      32(%r15), %rcx
	addq      %rax, %rcx
	cmpq      %rbx, %rcx
	jbe       LBB9_8
	movq      %r15, %rcx
	jmp       LBB9_13
LBB9_8:
	xorl      %r14d, %r14d
# ----------------------
	.p2align 4, 0x90
LBB9_9:
	movq      64(%r15), %rcx
	testq     %rcx, %rcx
	jne       LBB9_12
	call      _load_buffer
	testb     %al, %al
	je        LBB9_17
	movq      64(%r15), %rcx
	testq     %rcx, %rcx
	je        LBB9_18
LBB9_12:
	movq      16(%rcx), %rax
	movq      32(%rcx), %rdx
	addq      %rax, %rdx
	cmpq      %rbx, %rdx
	movq      %rcx, %r15
	jbe       LBB9_9
LBB9_13:
	subq      %rax, %rbx
	movq      48(%rcx), %rax
	cmpq      $80, %rbx
	jb        LBB9_15
# ----------------------
	.p2align 4, 0x90
LBB9_14:
	addq      $-80, %rbx
	movq      1304(%rax), %rax
	cmpq      $79, %rbx
	ja        LBB9_14
LBB9_15:
	shlq      $4, %rbx
	leaq      24(%rax,%rbx), %r14
LBB9_17:
	movq      %r14, %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB9_18:
	leaq      L___func__.find_line(%rip), %rdi
	leaq      L_.str.53(%rip), %rsi
	leaq      L_.str.54(%rip), %rcx
	movl      $617, %edx
	call      ___assert_rtn
# ----------------------
	.p2align 4, 0x90
_regexp_error:
	pushq     %rbp
Lcfi58:
Lcfi59:
	movq      %rsp, %rbp
Lcfi60:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Lcfi61:
Lcfi62:
Lcfi63:
Lcfi64:
Lcfi65:
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
	movq      %rax, %rcx
	leaq      L_.str.55(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	movq      %rbx, %rdx
	call      _fprintf
	testq     %r15, %r15
	je        LBB10_2
	movq      (%r13), %rbx
	leaq      -64(%rbp), %rsi
	movq      %r15, %rdi
	call      _umaxtostr
	movq      %rax, %rcx
	leaq      L_.str.56(%rip), %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rcx, %rdx
	call      _fprintf
	jmp       LBB10_3
LBB10_2:
	movq      (%r13), %rsi
	movl      $10, %edi
	call      _fputc
LBB10_3:
	testb     %r14b, %r14b
	je        LBB10_5
	jmp       LBB10_7
# ----------------------
	.p2align 4, 0x90
LBB10_4:
	movq      (%rbx), %rdx
	movq      8(%rbx), %rdi
	movq      _output_stream(%rip), %rcx
	movl      $1, %esi
	call      _fwrite
	movq      (%rbx), %rax
	addq      %rax, _bytes_written(%rip)
LBB10_5:
	call      _remove_line
	movq      %rax, %rbx
	testq     %rbx, %rbx
	jne       LBB10_4
	call      _close_output_file
LBB10_7:
	call      _cleanup_fatal
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.p2align 4
LCPI11_0:
	.quad	1
	.quad	1
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
_load_buffer:
	pushq     %rbp
Lcfi66:
Lcfi67:
	movq      %rsp, %rbp
Lcfi68:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Lcfi69:
Lcfi70:
Lcfi71:
Lcfi72:
Lcfi73:
	movb      _have_read_eof(%rip), %al
	testb     %al, %al
	jne       LBB11_45
	movq      _hold_count(%rip), %r14
	cmpq      $8191, %r14
	movl      $8191, %eax
	cmovbe    %rax, %r14
	cmpq      $8192, %r14
	jae       LBB11_4
	jmp       LBB11_3
# ----------------------
	.p2align 4, 0x90
LBB11_37:
	addq      %r14, %r14
	movq      $0, 48(%r12)
	movq      40(%r12), %rdi
	call      _free
	movq      %r12, %rdi
	call      _free
	cmpq      $8192, %r14
	jb        LBB11_3
LBB11_4:
	addq      $-6144, %r14
	andq      $-2048, %r14
	addq      $8191, %r14
	jmp       LBB11_5
# ----------------------
	.p2align 4, 0x90
LBB11_3:
	movl      $8191, %r14d
LBB11_5:
	movl      $72, %edi
	call      _xmalloc
	movq      %rax, %r12
	leaq      1(%r14), %rdi
	call      _xmalloc
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
	je        LBB11_8
	movq      _hold_area(%rip), %rsi
	movq      %r15, %rdi
	call      _memcpy
	movq      _hold_count(%rip), %rax
	addq      %rax, 8(%r12)
	subq      %rax, %r14
	movq      $0, _hold_count(%rip)
	je        LBB11_12
	addq      %rax, %r15
LBB11_8:
	xorl      %edi, %edi
	movq      %r15, %rsi
	movq      %r14, %rdx
	call      _safe_read
	movq      %rax, %r15
	testq     %r15, %r15
	je        LBB11_11
	cmpq      $-1, %r15
	jne       LBB11_13
	jmp       LBB11_10
# ----------------------
	.p2align 4, 0x90
LBB11_11:
	movb      $1, _have_read_eof(%rip)
LBB11_12:
	xorl      %r15d, %r15d
LBB11_13:
	leaq      48(%r12), %rax
	movq      %rax, -48(%rbp)
	addq      8(%r12), %r15
	movq      %r15, 8(%r12)
	je        LBB11_33
	movq      40(%r12), %rbx
	movl      $10, %esi
	movq      %rbx, %rdi
	movq      %r15, %rdx
	call      _memchr
	movq      %rax, %r14
	testq     %r14, %r14
	je        LBB11_15
	movq      %r12, -56(%rbp)
	xorl      %r13d, %r13d
# ----------------------
	.p2align 4, 0x90
LBB11_17:
	movq      %r14, %r12
	subq      %rbx, %r12
	movq      -48(%rbp), %rax
	cmpq      $0, (%rax)
	je        LBB11_19
	movq      -56(%rbp), %rax
	movq      56(%rax), %rax
	jmp       LBB11_20
# ----------------------
	.p2align 4, 0x90
LBB11_19:
	movl      $1312, %edi
	call      _xmalloc
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      -56(%rbp), %rcx
	movq      %rax, 56(%rcx)
	movq      %rax, 48(%rcx)
LBB11_20:
	incq      %r12
	cmpq      $80, (%rax)
	jne       LBB11_22
	movl      $1312, %edi
	call      _xmalloc
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      -56(%rbp), %rdx
	movq      56(%rdx), %rcx
	movq      %rax, 1304(%rcx)
	movq      %rax, 56(%rdx)
LBB11_22:
	movq      8(%rax), %rcx
	shlq      $4, %rcx
	movq      %rbx, 32(%rax,%rcx)
	movq      %r12, 24(%rax,%rcx)
	movdqu    (%rax), %xmm0
	paddq     LCPI11_0(%rip), %xmm0
	movdqu    %xmm0, (%rax)
	subq      %r12, %r15
	movq      %r14, %rbx
	incq      %rbx
	incq      %r13
	movl      $10, %esi
	movq      %rbx, %rdi
	movq      %r15, %rdx
	call      _memchr
	movq      %rax, %r14
	testq     %r14, %r14
	jne       LBB11_17
	testq     %r15, %r15
	movq      -56(%rbp), %r12
	jne       LBB11_24
	jmp       LBB11_32
# ----------------------
	.p2align 4, 0x90
LBB11_15:
	xorl      %r13d, %r13d
LBB11_24:
	cmpb      $1, _have_read_eof(%rip)
	jne       LBB11_31
	movq      -48(%rbp), %rax
	cmpq      $0, (%rax)
	je        LBB11_27
	movq      %r12, %r14
	addq      $56, %r14
	movq      56(%r12), %rax
	cmpq      $80, (%rax)
	je        LBB11_29
	jmp       LBB11_30
# ----------------------
	.p2align 4, 0x90
LBB11_31:
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _xmemdup
	movq      %rax, %rbx
	movq      _hold_area(%rip), %rdi
	call      _free
	movq      %rbx, _hold_area(%rip)
	movq      %r15, _hold_count(%rip)
	jmp       LBB11_32
LBB11_27:
	movl      $1312, %edi
	call      _xmalloc
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      %r12, %r14
	addq      $56, %r14
	movq      %rax, 56(%r12)
	movq      %rax, 48(%r12)
	cmpq      $80, (%rax)
	jne       LBB11_30
LBB11_29:
	movl      $1312, %edi
	call      _xmalloc
	movq      $0, 1304(%rax)
	movq      $0, 16(%rax)
	movq      $0, 8(%rax)
	movq      $0, (%rax)
	movq      (%r14), %rcx
	movq      %rax, 1304(%rcx)
	movq      %rax, (%r14)
LBB11_30:
	movq      8(%rax), %rcx
	shlq      $4, %rcx
	movq      %rbx, 32(%rax,%rcx)
	movq      %r15, 24(%rax,%rcx)
	movdqu    (%rax), %xmm0
	paddq     LCPI11_0(%rip), %xmm0
	movdqu    %xmm0, (%rax)
	incq      %r13
LBB11_32:
	movq      %r13, 32(%r12)
	movq      _last_line_number(%rip), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, 16(%r12)
	movq      %rcx, 24(%r12)
	addq      %r13, %rax
	movq      %rax, _last_line_number(%rip)
	testq     %r13, %r13
	jne       LBB11_38
LBB11_33:
	movb      _have_read_eof(%rip), %al
	testb     %al, %al
	jne       LBB11_42
	movq      (%r12), %r14
	testq     %r14, %r14
	js        LBB11_47
	movq      -48(%rbp), %rax
	movq      (%rax), %rdi
	testq     %rdi, %rdi
	je        LBB11_37
# ----------------------
	.p2align 4, 0x90
LBB11_36:
	movq      1304(%rdi), %rbx
	call      _free
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       LBB11_36
	jmp       LBB11_37
LBB11_42:
	movq      -48(%rbp), %rax
	movq      (%rax), %rdi
	testq     %rdi, %rdi
	je        LBB11_44
# ----------------------
	.p2align 4, 0x90
LBB11_43:
	movq      1304(%rdi), %rbx
	call      _free
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       LBB11_43
LBB11_44:
	movq      $0, 48(%r12)
	movq      40(%r12), %rdi
	call      _free
	movq      %r12, %rdi
	call      _free
LBB11_45:
	xorl      %eax, %eax
LBB11_46:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB11_38:
	movq      $0, 64(%r12)
	movq      48(%r12), %rax
	movq      %rax, 56(%r12)
	movq      _head(%rip), %rax
	testq     %rax, %rax
	je        LBB11_39
# ----------------------
	.p2align 4, 0x90
LBB11_40:
	movq      %rax, %rcx
	movq      64(%rcx), %rax
	testq     %rax, %rax
	jne       LBB11_40
	movq      %r12, 64(%rcx)
	movb      $1, %al
	jmp       LBB11_46
LBB11_39:
	movq      %r12, _head(%rip)
	movb      $1, %al
	jmp       LBB11_46
LBB11_47:
	call      _xalloc_die
LBB11_10:
	call      ___error
	movl      (%rax), %esi
	leaq      L_.str.12(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      _error
	call      _cleanup_fatal
# ----------------------
	.p2align 4, 0x90
_handle_line_error:
	pushq     %rbp
Lcfi74:
Lcfi75:
	movq      %rsp, %rbp
Lcfi76:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $32, %rsp
Lcfi77:
Lcfi78:
Lcfi79:
Lcfi80:
	movq      %rsi, %r14
	movq      ___stderrp@GOTPCREL(%rip), %r12
	movq      (%r12), %r15
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movq      8(%rdi), %rdi
	leaq      -64(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str.60(%rip), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %rbx, %rdx
	call      _fprintf
	testq     %r14, %r14
	movq      (%r12), %rbx
	jne       LBB12_1
	movl      $10, %edi
	movq      %rbx, %rsi
	call      _fputc
	call      _cleanup_fatal
LBB12_1:
	leaq      -64(%rbp), %rsi
	movq      %r14, %rdi
	call      _umaxtostr
	movq      %rax, %rcx
	leaq      L_.str.56(%rip), %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rcx, %rdx
	call      _fprintf
	call      _cleanup_fatal
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"%s"
L_.str.1:
	.asciz	"memory exhausted"
L_.str.2:
	.zero	1
L_.str.3:
	.asciz	"xx"
L_.str.4:
	.asciz	"f:b:kn:sqz"
L_.str.5:
	.asciz	"invalid number"
L_.str.6:
	.asciz	"csplit"
L_.str.7:
	.asciz	"GNU coreutils"
L_.str.8:
	.asciz	"Stuart Kemp"
L_.str.9:
	.asciz	"David MacKenzie"
L_.str.10:
	.asciz	"missing operand"
L_.str.11:
	.asciz	"missing operand after %s"
L_.str.12:
	.asciz	"read error"
L_.str.13:
	.asciz	"Usage: %s [OPTION]... FILE PATTERN...\n"
L_.str.14:
	.asciz	"Output pieces of FILE separated by PATTERN(s) to files 'xx00', 'xx01', ...,\nand output byte counts of each piece to standard output.\n"
L_.str.15:
	.asciz	"\nRead standard input if FILE is -\n"
L_.str.16:
	.asciz	"  -b, --suffix-format=FORMAT  use sprintf FORMAT instead of %02d\n  -f, --prefix=PREFIX        use PREFIX instead of 'xx'\n  -k, --keep-files           do not remove output files on errors\n"
L_.str.17:
	.asciz	"  -m, --suppress-matched     suppress the lines matching PATTERN\n"
L_.str.18:
	.asciz	"  -n, --digits=DIGITS        use specified number of digits instead of 2\n  -s, --quiet, --silent      do not print counts of output file sizes\n  -z, --elide-empty-files    remove empty output files\n"
L_.str.19:
	.asciz	"      --help     display this help and exit\n"
L_.str.20:
	.asciz	"      --version  output version information and exit\n"
L_.str.21:
	.asciz	"\nEach PATTERN may be:\n  INTEGER            copy up to but not including specified line number\n  /REGEXP/[OFFSET]   copy up to but not including a matching line\n  %REGEXP%[OFFSET]   skip to, but not including a matching line\n  {INTEGER}          repeat the previous pattern specified number of times\n  {*}                repeat the previous pattern as many times as possible\n\nA line OFFSET is a required '+' or '-' followed by a positive integer.\n"
L_.str.22:
	.asciz	"write error for %s"
L_.str.23:
	.asciz	"%s\n"
L_.str.24:
	.asciz	"%0*u"
L_.str.25:
	.asciz	"digits"
L_.str.26:
	.asciz	"quiet"
L_.str.27:
	.asciz	"silent"
L_.str.28:
	.asciz	"keep-files"
L_.str.29:
	.asciz	"elide-empty-files"
L_.str.30:
	.asciz	"prefix"
L_.str.31:
	.asciz	"suffix-format"
L_.str.32:
	.asciz	"suppress-matched"
L_.str.33:
	.asciz	"help"
L_.str.34:
	.asciz	"version"
L_.str.35:
	.asciz	"too many %% conversion specifications in suffix"
L_.str.36:
	.asciz	"missing %% conversion specification in suffix"
L_.str.37:
	.asciz	"missing conversion specifier in suffix"
L_.str.38:
	.asciz	"invalid conversion specifier in suffix: %c"
L_.str.39:
	.asciz	"invalid conversion specifier in suffix: \\%.3o"
L_.str.40:
	.asciz	"invalid flags in conversion specification: %%%c%c"
L_.str.41:
	.asciz	"-"
L_.str.42:
	.asciz	"cannot open %s for reading"
L_.str.43:
	.asciz	"%s: invalid pattern"
L_.str.44:
	.asciz	"%s: line number must be greater than zero"
L_.str.45:
	.asciz	"line number %s is smaller than preceding line number, %s"
L_.str.46:
	.asciz	"warning: line number %s is the same as preceding line number"
L_.str.47:
	.asciz	"%s: closing delimiter '%c' missing"
L_.str.48:
	.asciz	"%s: invalid regular expression: %s"
L_.str.49:
	.asciz	"%s: integer expected after delimiter"
L_.str.50:
	.asciz	"%s: '}' is required in repeat count"
L_.str.51:
	.asciz	"%s}: integer required between '{' and '}'"
L_.str.52:
	.asciz	"error in regular expression search"
L___func__.find_line:
	.asciz	"find_line"
L_.str.53:
	.asciz	"src/csplit.c"
L_.str.54:
	.asciz	"b"
L_.str.55:
	.asciz	"%s: %s: match not found"
L_.str.56:
	.asciz	" on repetition %s\n"
L_.str.58:
	.asciz	"%s: line number out of range"
L_.str.59:
	.asciz	"input disappeared"
L_.str.60:
	.asciz	"%s: %s: line number out of range"
L_.str.61:
	.asciz	"w"
L_.str.62:
	.asciz	"Try '%s --help' for more information.\n"
L_.str.63:
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"
L_.str.73:
	.asciz	"\n%s online help: <%s>\n"
L_.str.74:
	.asciz	"http://www.gnu.org/software/coreutils/"
L_.str.75:
	.asciz	"en_"
L_.str.76:
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"
L_.str.77:
	.asciz	"Full documentation at: <%s%s>\n"
L_.str.78:
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"
L_.str.79:
	.asciz	" invocation"
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
.zerofill __DATA,__bss,_suppress_matched,1,0
# ----------------------
.zerofill __DATA,__bss,_prefix,8,3
# ----------------------
	.section       __DATA,__const
	.p2align 4
_longopts:
	.quad	L_.str.25
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	L_.str.26
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	L_.str.27
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	L_.str.28
	.long	0
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	L_.str.29
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	L_.str.30
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	L_.str.31
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	L_.str.32
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	L_.str.33
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	L_.str.34
	.long	0
	.zero	4
	.quad	0
	.long	-131
	.zero	4
	.zero	32
# ----------------------
.zerofill __DATA,__bss,_suffix,8,3
# ----------------------
	.section       __DATA,__data
	.p2align 2
_digits:
	.long	2
# ----------------------
.zerofill __DATA,__bss,_elide_empty_files,1,0
# ----------------------
.zerofill __DATA,__bss,_filename_space,8,3
# ----------------------
	.section       __TEXT,__const
	.p2align 4
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
.zerofill __DATA,__bss,_caught_signals,4,2
# ----------------------
.zerofill __DATA,__bss,_output_stream,8,3
# ----------------------
.zerofill __DATA,__bss,_output_filename,8,3
# ----------------------
.zerofill __DATA,__bss,_bytes_written,8,3
# ----------------------
.zerofill __DATA,__bss,_files_created,4,2
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
.zerofill __DATA,__bss,_have_read_eof,1,0
# ----------------------
.zerofill __DATA,__bss,_hold_count,8,3
# ----------------------
.zerofill __DATA,__bss,_hold_area,8,3
# ----------------------
.zerofill __DATA,__bss,_last_line_number,8,3
# ----------------------
	.set	L2_0_set_9,LBB2_9-LJTI2_0
	.set	L2_0_set_16,LBB2_16-LJTI2_0
	.set	L2_0_set_8,LBB2_8-LJTI2_0
	.set	L2_0_set_10,LBB2_10-LJTI2_0
	.set	L2_0_set_11,LBB2_11-LJTI2_0
	.set	L2_0_set_12,LBB2_12-LJTI2_0
	.set	L2_0_set_13,LBB2_13-LJTI2_0
	.set	L2_0_set_14,LBB2_14-LJTI2_0
	.set	L2_1_set_37,LBB2_37-LJTI2_1
	.set	L2_1_set_39,LBB2_39-LJTI2_1
	.set	L2_1_set_36,LBB2_36-LJTI2_1
	.set	L2_1_set_38,LBB2_38-LJTI2_1

.subsections_via_symbols
