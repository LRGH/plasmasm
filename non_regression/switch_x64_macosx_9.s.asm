	.macosx_version_min 10, 13
	.section       __TEXT,__literal16,16byte_literals
	.p2align 4
LCPI0_0:
	.quad	-9223372036854775808
	.quad	-1
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_main
_main:
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
	subq      $344, %rsp
Lcfi3:
Lcfi4:
Lcfi5:
Lcfi6:
Lcfi7:
	movq      %rsi, -328(%rbp)
	movl      %edi, -344(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rsi), %rdi
	call      _set_program_name
	leaq      L_.str(%rip), %rsi
	xorl      %edi, %edi
	call      _setlocale
	movq      _exit_failure@GOTPCREL(%rip), %rax
	movl      $2, (%rax)
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
	movl      $0, _exit_status(%rip)
	movb      $1, _print_dir_name(%rip)
	movq      $0, _pending_dirs(%rip)
	movdqa    LCPI0_0(%rip), %xmm0
	movdqa    %xmm0, _current_time(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $1, %eax
	je        LBB0_4
	cmpl      $3, %eax
	je        LBB0_6
	cmpl      $2, %eax
	jne       LBB0_255
	movl      $2, _format(%rip)
	jmp       LBB0_7
LBB0_4:
	movl      $1, %edi
	call      _isatty
	testl     %eax, %eax
	je        LBB0_133
	movl      $2, _format(%rip)
	movb      $1, _qmark_funny_chars(%rip)
	jmp       LBB0_8
LBB0_6:
	movl      $0, _format(%rip)
LBB0_7:
	xorl      %edi, %edi
	movl      $5, %esi
	call      _set_quoting_style
LBB0_8:
	movl      $0, _time_type(%rip)
	movl      $0, _sort_type(%rip)
	movb      $0, _sort_reverse(%rip)
	movb      $0, _numeric_ids(%rip)
	movb      $0, _print_block_size(%rip)
	movl      $0, _indicator_style(%rip)
	movb      $0, _print_inode(%rip)
	movl      $1, _dereference(%rip)
	movb      $0, _recursive(%rip)
	movb      $0, _immediate_dirs(%rip)
	movl      $0, _ignore_mode(%rip)
	movq      $0, _ignore_patterns(%rip)
	movq      $0, _hide_patterns(%rip)
	movb      $0, _print_scontext(%rip)
	leaq      L_.str.89(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        LBB0_12
	movq      _quoting_style_args@GOTPCREL(%rip), %rsi
	movq      _quoting_style_vals@GOTPCREL(%rip), %r15
	movl      $4, %ecx
	movq      %rbx, %rdi
	movq      %r15, %rdx
	call      _argmatch
	testl     %eax, %eax
	js        LBB0_11
	cltq      
	movl      (%r15,%rax,4), %esi
	xorl      %edi, %edi
	call      _set_quoting_style
	jmp       LBB0_12
LBB0_11:
	movq      %rbx, %rdi
	call      _quotearg
	movq      %rax, %rcx
	leaq      L_.str.90(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_12:
	movq      $80, _line_length(%rip)
	leaq      L_.str.54(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	testq     %rbx, %rbx
	je        LBB0_18
	cmpb      $0, (%rbx)
	je        LBB0_18
	leaq      -320(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
	testl     %eax, %eax
	jne       LBB0_17
	movq      -320(%rbp), %rax
	testq     %rax, %rax
	je        LBB0_17
	movq      %rax, _line_length(%rip)
	jmp       LBB0_18
LBB0_17:
	movq      %rbx, %rdi
	call      _quotearg
	movq      %rax, %rcx
	leaq      L_.str.55(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_18:
	leaq      -320(%rbp), %rdx
	movl      $1, %edi
	movl      $1074295912, %esi
	xorl      %eax, %eax
	call      _ioctl
	cmpl      $-1, %eax
	je        LBB0_21
	movzwl    -318(%rbp), %eax
	testq     %rax, %rax
	je        LBB0_21
	movq      %rax, _line_length(%rip)
LBB0_21:
	leaq      L_.str.56(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	movq      $8, _tabsize(%rip)
	testq     %rbx, %rbx
	je        LBB0_25
	leaq      -320(%rbp), %rcx
	xorl      %esi, %esi
	xorl      %edx, %edx
	xorl      %r8d, %r8d
	movq      %rbx, %rdi
	call      _xstrtoul
	testl     %eax, %eax
	je        LBB0_24
	movq      %rbx, %rdi
	call      _quotearg
	movq      %rax, %rcx
	leaq      L_.str.57(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	jmp       LBB0_25
LBB0_24:
	movq      -320(%rbp), %rax
	movq      %rax, _tabsize(%rip)
LBB0_25:
	xorl      %r12d, %r12d
	leaq      -320(%rbp), %r15
	leaq      LJTI0_0(%rip), %r13
	xorl      %r14d, %r14d
	xorl      %eax, %eax
	movq      %rax, -352(%rbp)
	movq      -328(%rbp), %rbx
	jmp       LBB0_27
# ----------------------
	.p2align 4, 0x90
LBB0_26:
	movb      %cl, %r12b
LBB0_27:
	movl      -344(%rbp), %eax
	movl      $-1, -320(%rbp)
	movl      %eax, %edi
	movq      %rbx, %rsi
	leaq      L_.str.58(%rip), %rdx
	leaq      _long_options(%rip), %rcx
	movq      %r15, %r8
	call      _rpl_getopt_long
	addl      $131, %eax
	cmpl      $274, %eax
	ja        LBB0_253
	movb      $1, %cl
	movslq    (%r13,%rax,4), %rax
	addq      %r13, %rax
	jmp       *%rax
LBB0_29:
	cmpl      $0, _format(%rip)
	je        LBB0_97
	movl      $1, _format(%rip)
	jmp       LBB0_97
LBB0_31:
	movl      $4, _sort_type(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_32:
	movq      _rpl_optarg@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	call      _human_options
	testl     %eax, %eax
	jne       LBB0_256
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
	movl      %r12d, %ecx
	movq      -328(%rbp), %rbx
	jmp       LBB0_27
LBB0_34:
	cmpl      $0, _ignore_mode(%rip)
	jne       LBB0_97
	movl      $1, _ignore_mode(%rip)
	jmp       LBB0_97
LBB0_36:
	movl      $16, %edi
	call      _xmalloc
	leaq      L_.str.60(%rip), %rcx
	movq      %rcx, (%rax)
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	movl      $16, %edi
	call      _xmalloc
	leaq      L_.str.61(%rip), %rcx
	movq      %rcx, (%rax)
	jmp       LBB0_42
LBB0_37:
	movl      $2, _format(%rip)
	jmp       LBB0_97
LBB0_38:
	movb      $1, _dired(%rip)
	jmp       LBB0_97
LBB0_39:
	movl      $3, _indicator_style(%rip)
	jmp       LBB0_97
LBB0_40:
	movl      $3, _dereference(%rip)
	jmp       LBB0_97
LBB0_41:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movl      $16, %edi
	call      _xmalloc
	movq      %rbx, (%rax)
	movq      -328(%rbp), %rbx
LBB0_42:
	movq      _ignore_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _ignore_patterns(%rip)
	jmp       LBB0_97
LBB0_43:
	movl      $5, _dereference(%rip)
	jmp       LBB0_97
LBB0_44:
	xorl      %edi, %edi
	xorl      %esi, %esi
	call      _set_quoting_style
	jmp       LBB0_97
LBB0_45:
	xorl      %edi, %edi
	movl      $3, %esi
	call      _set_quoting_style
	jmp       LBB0_97
LBB0_46:
	movb      $1, _recursive(%rip)
	jmp       LBB0_97
LBB0_47:
	movl      $2, _sort_type(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_48:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      L_.str(%rip), %r8
	leaq      L_.str.62(%rip), %r9
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
	movq      %rax, _tabsize(%rip)
	jmp       LBB0_97
LBB0_49:
	movl      $-1, _sort_type(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_50:
	movl      $1, _sort_type(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_51:
	movb      $1, _print_scontext(%rip)
	jmp       LBB0_97
LBB0_52:
	movl      $2, _ignore_mode(%rip)
	jmp       LBB0_97
LBB0_53:
	xorl      %edi, %edi
	movl      $5, %esi
	call      _set_quoting_style
	jmp       LBB0_97
LBB0_54:
	movl      $1, _time_type(%rip)
	jmp       LBB0_97
LBB0_55:
	movb      $1, _immediate_dirs(%rip)
	jmp       LBB0_97
LBB0_56:
	movl      $2, _ignore_mode(%rip)
	movl      $-1, _sort_type(%rip)
	cmpl      $0, _format(%rip)
	jne       LBB0_58
	movl      $1, %ebx
	movl      $1, %edi
	call      _isatty
	cmpl      $1, %eax
	sbbl      $-1, %ebx
	movl      %ebx, _format(%rip)
	movq      -328(%rbp), %rbx
LBB0_58:
	movb      $0, _print_block_size(%rip)
	movb      $0, _print_with_color(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_59:
	movl      $0, _format(%rip)
	movb      $1, _print_owner(%rip)
	jmp       LBB0_97
LBB0_60:
	movl      $176, _human_output_opts(%rip)
	movl      $176, _file_human_output_opts(%rip)
	jmp       LBB0_92
LBB0_61:
	movl      $4, _format(%rip)
	jmp       LBB0_97
LBB0_62:
	movb      $1, _numeric_ids(%rip)
LBB0_63:
	movl      $0, _format(%rip)
	jmp       LBB0_97
LBB0_64:
	movl      $0, _format(%rip)
LBB0_65:
	movb      $1, _print_group(%rip)
	jmp       LBB0_97
LBB0_66:
	movl      $1, _indicator_style(%rip)
	jmp       LBB0_97
LBB0_67:
	movb      $1, _qmark_funny_chars(%rip)
	jmp       LBB0_97
LBB0_68:
	movb      $1, _sort_reverse(%rip)
	jmp       LBB0_97
LBB0_69:
	movl      $2, _time_type(%rip)
	jmp       LBB0_97
LBB0_70:
	movl      $3, _sort_type(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_71:
	movl      $3, _format(%rip)
	jmp       LBB0_97
LBB0_72:
	movb      $1, _print_author(%rip)
	jmp       LBB0_97
LBB0_73:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	testq     %rsi, %rsi
	je        LBB0_94
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str.67(%rip), %rdi
	leaq      _color_args(%rip), %rdx
	leaq      _color_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	cmpl      $1, %eax
	je        LBB0_94
	cmpl      $2, %eax
	jne       LBB0_96
	movl      $1, %edi
	call      _isatty
	testl     %eax, %eax
	setne     _print_with_color(%rip)
	jne       LBB0_95
	jmp       LBB0_97
LBB0_77:
	movl      $4, _dereference(%rip)
	jmp       LBB0_97
LBB0_78:
	movl      $2, _indicator_style(%rip)
	jmp       LBB0_97
LBB0_79:
	movl      $16, %edi
	call      _xmalloc
	movq      _rpl_optarg@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	movq      %rcx, (%rax)
	movq      _hide_patterns(%rip), %rcx
	movq      %rcx, 8(%rax)
	movq      %rax, _hide_patterns(%rip)
	jmp       LBB0_97
LBB0_80:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str.68(%rip), %rdi
	leaq      _indicator_style_args(%rip), %rdx
	leaq      _indicator_style_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	movl      %eax, _indicator_style(%rip)
	jmp       LBB0_97
LBB0_81:
	movb      $0, _qmark_funny_chars(%rip)
	jmp       LBB0_97
LBB0_82:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str.63(%rip), %rdi
	leaq      _sort_args(%rip), %rdx
	leaq      _sort_types(%rip), %r14
	movl      $4, %r8d
	movq      %r14, %rcx
	call      ___xargmatch_internal
	movl      (%r14,%rax,4), %eax
	movl      %eax, _sort_type(%rip)
	movb      $1, %r14b
	jmp       LBB0_97
LBB0_83:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -352(%rbp)
	jmp       LBB0_97
LBB0_84:
	movb      $1, _print_inode(%rip)
	jmp       LBB0_97
LBB0_85:
	movb      $1, _print_block_size(%rip)
	jmp       LBB0_97
LBB0_86:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movl      $2, (%rsp)
	leaq      L_.str(%rip), %r8
	leaq      L_.str.59(%rip), %r9
	xorl      %esi, %esi
	movl      $1, %edx
	movq      $-1, %rcx
	call      _xnumtoumax
	movq      %rax, _line_length(%rip)
	jmp       LBB0_97
LBB0_87:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str.65(%rip), %rdi
	leaq      _format_args(%rip), %rdx
	leaq      _format_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	movl      %eax, _format(%rip)
	jmp       LBB0_97
LBB0_88:
	movl      $0, _format(%rip)
	leaq      L_.str.66(%rip), %rax
	movq      %rax, -352(%rbp)
	jmp       LBB0_97
LBB0_89:
	movb      $1, _directories_first(%rip)
	jmp       LBB0_97
LBB0_90:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str.69(%rip), %rdi
	movq      _quoting_style_args@GOTPCREL(%rip), %rdx
	movq      _quoting_style_vals@GOTPCREL(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
	movl      (%rbx,%rax,4), %esi
	movq      -328(%rbp), %rbx
	xorl      %edi, %edi
	call      _set_quoting_style
	jmp       LBB0_97
LBB0_91:
	movl      $144, _human_output_opts(%rip)
	movl      $144, _file_human_output_opts(%rip)
LBB0_92:
	movq      $1, _output_block_size(%rip)
	movq      $1, _file_output_block_size(%rip)
	jmp       LBB0_97
LBB0_93:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	leaq      L_.str.64(%rip), %rdi
	leaq      _time_args(%rip), %rdx
	leaq      _time_types(%rip), %rbx
	movl      $4, %r8d
	movq      %rbx, %rcx
	call      ___xargmatch_internal
	movl      (%rbx,%rax,4), %eax
	movq      -328(%rbp), %rbx
	movl      %eax, _time_type(%rip)
	jmp       LBB0_97
LBB0_94:
	movb      $1, _print_with_color(%rip)
LBB0_95:
	movq      $0, _tabsize(%rip)
	jmp       LBB0_97
LBB0_96:
	movb      $0, _print_with_color(%rip)
# ----------------------
	.p2align 4, 0x90
LBB0_97:
	movl      %r12d, %ecx
	jmp       LBB0_26
LBB0_98:
	cmpq      $0, _output_block_size(%rip)
	jne       LBB0_104
	leaq      L_.str.73(%rip), %rdi
	call      _getenv
	movq      %rax, %rbx
	leaq      _human_output_opts(%rip), %rsi
	leaq      _output_block_size(%rip), %rdx
	movq      %rbx, %rdi
	call      _human_options
	testq     %rbx, %rbx
	jne       LBB0_101
	leaq      L_.str.74(%rip), %rdi
	call      _getenv
	testq     %rax, %rax
	je        LBB0_102
LBB0_101:
	movl      _human_output_opts(%rip), %eax
	movl      %eax, _file_human_output_opts(%rip)
	movq      _output_block_size(%rip), %rax
	movq      %rax, _file_output_block_size(%rip)
LBB0_102:
	testb     $1, %r12b
	je        LBB0_104
	movl      $0, _human_output_opts(%rip)
	movq      $1024, _output_block_size(%rip)
LBB0_104:
	movq      _line_length(%rip), %rax
	cmpq      $3, %rax
	jae       LBB0_106
	movl      $1, %edx
	jmp       LBB0_107
LBB0_106:
	movq      $-6148914691236517205, %rcx
	mulq      %rcx
	shrq      $1, %rdx
LBB0_107:
	movq      %rdx, _max_idx(%rip)
	xorl      %edi, %edi
	call      _clone_quoting_options
	movq      %rax, _filename_quoting_options(%rip)
	movq      %rax, %rdi
	call      _get_quoting_style
	cmpl      $5, %eax
	jne       LBB0_109
	movq      _filename_quoting_options(%rip), %rdi
	movl      $32, %esi
	movl      $1, %edx
	call      _set_char_quoting
LBB0_109:
	movl      _indicator_style(%rip), %ecx
	cmpl      $2, %ecx
	jb        LBB0_113
	addl      $-2, %ecx
	cmpl      $5, %ecx
	je        LBB0_113
	leaq      L_.str.75(%rip), %rdx
	movb      (%rcx,%rdx), %al
	leaq      1(%rcx,%rdx), %rbx
# ----------------------
	.p2align 4, 0x90
LBB0_112:
	movq      _filename_quoting_options(%rip), %rdi
	movsbl    %al, %esi
	movl      $1, %edx
	call      _set_char_quoting
	movzbl    (%rbx), %eax
	incq      %rbx
	testb     %al, %al
	jne       LBB0_112
LBB0_113:
	xorl      %edi, %edi
	call      _clone_quoting_options
	movq      %rax, _dirname_quoting_options(%rip)
	movl      $58, %esi
	movl      $1, %edx
	movq      %rax, %rdi
	call      _set_char_quoting
	movl      _format(%rip), %eax
	cmpb      $1, _dired(%rip)
	jne       LBB0_116
	testl     %eax, %eax
	je        LBB0_116
	movb      $0, _dired(%rip)
LBB0_116:
	movl      _time_type(%rip), %ecx
	decl      %ecx
	cmpl      $1, %ecx
	ja        LBB0_120
	testb     $1, %r14b
	jne       LBB0_120
	testl     %eax, %eax
	je        LBB0_120
	movl      $4, _sort_type(%rip)
	jmp       LBB0_152
LBB0_120:
	testl     %eax, %eax
	movq      -352(%rbp), %rbx
	jne       LBB0_152
	testq     %rbx, %rbx
	jne       LBB0_123
	leaq      L_.str.76(%rip), %rdi
	call      _getenv
	testq     %rax, %rax
	leaq      L_.str.77(%rip), %rbx
	cmovne    %rax, %rbx
LBB0_123:
	leaq      _decode_switches.posix_prefix(%rip), %rsi
	movl      $6, %edx
	movq      %rbx, %rdi
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_127
	leaq      _decode_switches.posix_prefix(%rip), %r14
# ----------------------
	.p2align 4, 0x90
LBB0_125:
	movl      $5, %edi
	call      _hard_locale
	testb     %al, %al
	je        LBB0_152
	addq      $6, %rbx
	movl      $6, %edx
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _strncmp
	testl     %eax, %eax
	je        LBB0_125
LBB0_127:
	cmpb      $43, (%rbx)
	jne       LBB0_134
	incq      %rbx
	movl      $10, %esi
	movq      %rbx, %rdi
	call      _strchr
	movq      %rax, %r15
	testq     %r15, %r15
	movq      %rbx, %r14
	je        LBB0_132
	movq      %r15, %r14
	incq      %r14
	movl      $10, %esi
	movq      %r14, %rdi
	call      _strchr
	testq     %rax, %rax
	je        LBB0_131
	movq      %rbx, %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str.78(%rip), %rdx
	movl      $2, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_131:
	movb      $0, (%r15)
LBB0_132:
	movq      %rbx, _long_time_format(%rip)
	movq      %r14, _long_time_format+8(%rip)
	jmp       LBB0_142
LBB0_133:
	movl      $1, _format(%rip)
	movb      $0, _qmark_funny_chars(%rip)
	jmp       LBB0_8
LBB0_134:
	leaq      _time_style_args(%rip), %rsi
	leaq      _time_style_types(%rip), %rdx
	movl      $4, %ecx
	movq      %rbx, %rdi
	call      _argmatch
	testq     %rax, %rax
	js        LBB0_258
	cmpq      $3, %rax
	ja        LBB0_142
	leaq      LJTI0_1(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB0_137:
	leaq      L_.str.83(%rip), %rax
	jmp       LBB0_139
LBB0_138:
	leaq      L_.str.84(%rip), %rax
LBB0_139:
	movd      %rax, %xmm0
	pshufd    $68, %xmm0, %xmm0
	movdqa    %xmm0, _long_time_format(%rip)
	jmp       LBB0_142
LBB0_140:
	leaq      L_.str.86(%rip), %rax
	movd      %rax, %xmm0
	leaq      L_.str.85(%rip), %rax
	movd      %rax, %xmm1
	punpcklqdq %xmm0, %xmm1
	movdqa    %xmm1, _long_time_format(%rip)
	jmp       LBB0_142
LBB0_141:
	movl      $5, %edi
	call      _hard_locale
LBB0_142:
	movq      _long_time_format(%rip), %rdi
	leaq      L_.str.87(%rip), %rsi
	call      _strstr
	testq     %rax, %rax
	jne       LBB0_144
	movq      _long_time_format+8(%rip), %rdi
	leaq      L_.str.87(%rip), %rsi
	call      _strstr
	testq     %rax, %rax
	je        LBB0_152
LBB0_144:
	movq      $5, _required_mon_width(%rip)
	movl      $5, %r14d
	leaq      _abmon(%rip), %r12
	leaq      -320(%rbp), %r15
LBB0_145:
	movq      $0, _required_mon_width(%rip)
	movq      %r12, %r13
	xorl      %ebx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB0_146:
	movq      %r14, -320(%rbp)
	leal      33(%rbx), %edi
	call      _nl_langinfo
	movl      $61, %edx
	xorl      %r8d, %r8d
	xorl      %r9d, %r9d
	movq      %rax, %rdi
	movq      %r13, %rsi
	movq      %r15, %rcx
	call      _mbsalign
	cmpq      $60, %rax
	ja        LBB0_150
	movq      _required_mon_width(%rip), %rcx
	movq      -320(%rbp), %rax
	cmpq      %rax, %rcx
	cmova     %rcx, %rax
	movq      %rax, _required_mon_width(%rip)
	incq      %rbx
	addq      $61, %r13
	cmpq      $12, %rbx
	jl        LBB0_146
	cmpq      %rax, %r14
	movq      %rax, %r14
	ja        LBB0_145
	testq     %rax, %rax
	jne       LBB0_152
	jmp       LBB0_151
LBB0_150:
	movq      $0, _required_mon_width(%rip)
LBB0_151:
	leaq      L_.str.88(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB0_152:
	movq      _rpl_optind@GOTPCREL(%rip), %rax
	movslq    (%rax), %r12
	cmpb      $0, _print_with_color(%rip)
	je        LBB0_219
	leaq      L_.str.160(%rip), %rdi
	call      _getenv
	movq      %rax, -320(%rbp)
	testq     %rax, %rax
	je        LBB0_156
	cmpb      $0, (%rax)
	je        LBB0_156
	movb      $0, -330(%rbp)
	movw      $16191, -332(%rbp)
	movq      %rax, %rdi
	call      _xstrdup
	movq      %rax, _color_buf(%rip)
	movq      %rax, -368(%rbp)
	movl      $1, %eax
	leaq      LJTI0_2(%rip), %r15
	leaq      -332(%rbp), %r14
	xorl      %ecx, %ecx
	movq      %rcx, -352(%rbp)
	jmp       LBB0_171
LBB0_156:
	leaq      L_.str.161(%rip), %rdi
	call      _getenv
	testq     %rax, %rax
	je        LBB0_158
	cmpb      $0, (%rax)
	jne       LBB0_189
LBB0_158:
	leaq      L_.str.166(%rip), %rdi
	call      _getenv
	movq      %rax, %r13
	testq     %r13, %r13
	je        LBB0_164
	cmpb      $0, (%r13)
	je        LBB0_164
	leaq      _G_line(%rip), %r14
	leaq      L_.str.167(%rip), %r15
	movq      %r14, %rbx
# ----------------------
	.p2align 4, 0x90
LBB0_161:
	movl      $5, %edx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_163
	leaq      5(%rbx), %rsi
	movq      %r13, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB0_189
LBB0_163:
	movq      %rbx, %rdi
	call      _strlen
	leaq      1(%rbx,%rax), %rbx
	movq      %rbx, %rax
	subq      %r14, %rax
	cmpq      $4607, %rax
	jb        LBB0_161
LBB0_164:
	movb      $0, _print_with_color(%rip)
	cmpb      $0, _print_with_color(%rip)
	jne       LBB0_190
	jmp       LBB0_219
LBB0_170:
	movq      -368(%rbp), %rax
	movq      -352(%rbp), %rcx
	movq      %rcx, %rdx
	leaq      16(%rdx), %rcx
	movq      %rax, 24(%rdx)
	xorl      %edx, %edx
	leaq      -368(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	call      _get_funky_string
	xorl      %ecx, %ecx
	testb     %al, %al
	sete      %cl
	leal      1(%rcx,%rcx,4), %eax
	jmp       LBB0_171
LBB0_165:
	movl      $40, %edi
	call      _xmalloc
	movq      _color_ext_list(%rip), %rcx
	movq      %rcx, 32(%rax)
	movq      %rax, _color_ext_list(%rip)
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movq      -368(%rbp), %rcx
	movq      %rcx, 8(%rax)
	movl      $1, %edx
	leaq      -368(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %rax, %rcx
	movq      %rcx, -352(%rbp)
	call      _get_funky_string
	xorl      %ecx, %ecx
	testb     %al, %al
	sete      %cl
	leal      4(%rcx,%rcx), %eax
	jmp       LBB0_171
LBB0_166:
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movl      $1, %eax
	jmp       LBB0_171
LBB0_167:
	movq      -368(%rbp), %rax
	movq      %rax, 8(%r13)
	xorl      %edx, %edx
	leaq      -368(%rbp), %rdi
	leaq      -320(%rbp), %rsi
	movq      %r13, %rcx
	call      _get_funky_string
	testb     %al, %al
	movl      $1, %eax
	jne       LBB0_171
LBB0_168:
	movq      %r14, %rdi
	call      _quotearg
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str.163(%rip), %rdx
	call      _error
	movl      $6, %eax
	jmp       LBB0_171
LBB0_169:
	movq      -320(%rbp), %rcx
	leaq      1(%rcx), %rax
	movq      %rax, -320(%rbp)
	movl      $6, %eax
	cmpb      $61, (%rcx)
	je        LBB0_170
# ----------------------
	.p2align 4, 0x90
LBB0_171:
	andb      $7, %al
	decb      %al
	cmpb      $5, %al
	ja        LBB0_254
	movzbl    %al, %eax
	movslq    (%r15,%rax,4), %rax
	addq      %r15, %rax
	jmp       *%rax
LBB0_173:
	movq      -320(%rbp), %rbx
	movb      (%rbx), %al
	movsbl    %al, %ecx
	cmpl      $42, %ecx
	je        LBB0_165
	cmpl      $58, %ecx
	je        LBB0_166
	testl     %ecx, %ecx
	je        LBB0_186
	incq      %rbx
	movq      %rbx, -320(%rbp)
	movb      %al, -332(%rbp)
	movl      $2, %eax
	jmp       LBB0_171
LBB0_177:
	movq      -320(%rbp), %rdx
	movb      (%rdx), %cl
	movl      $6, %eax
	testb     %cl, %cl
	je        LBB0_171
	incq      %rdx
	movq      %rdx, -320(%rbp)
	movb      %cl, -331(%rbp)
	movl      $3, %eax
	jmp       LBB0_171
LBB0_179:
	movq      -320(%rbp), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, -320(%rbp)
	cmpb      $61, (%rax)
	movl      $6, %eax
	jne       LBB0_171
	xorl      %ebx, %ebx
	leaq      _color_indicator(%rip), %r13
# ----------------------
	.p2align 4, 0x90
LBB0_181:
	leaq      _indicator_name(%rip), %rax
	movq      (%rbx,%rax), %rsi
	movq      %r14, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB0_167
	addq      $16, %r13
	addq      $8, %rbx
	cmpq      $192, %rbx
	jne       LBB0_181
	jmp       LBB0_168
LBB0_183:
	leaq      L_.str.164(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	movq      _color_buf(%rip), %rdi
	call      _free
	movq      _color_ext_list(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB0_185
# ----------------------
	.p2align 4, 0x90
LBB0_184:
	movq      32(%rdi), %rbx
	call      _free
	testq     %rbx, %rbx
	movq      %rbx, %rdi
	jne       LBB0_184
LBB0_185:
	movb      $0, _print_with_color(%rip)
LBB0_186:
	cmpq      $6, _color_indicator+112(%rip)
	jne       LBB0_189
	movq      _color_indicator+120(%rip), %rdi
	leaq      L_.str.165(%rip), %rsi
	movl      $6, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_189
	movb      $1, _color_symlink_as_referent(%rip)
LBB0_189:
	cmpb      $0, _print_with_color(%rip)
	je        LBB0_219
LBB0_190:
	movq      _color_indicator+208(%rip), %rax
	testq     %rax, %rax
	je        LBB0_195
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	je        LBB0_194
	cmpq      $1, %rax
	jne       LBB0_208
	cmpb      $48, (%rdi)
	je        LBB0_195
	jmp       LBB0_208
LBB0_194:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB0_208
LBB0_195:
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        LBB0_201
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	je        LBB0_199
	cmpq      $1, %rax
	jne       LBB0_200
	cmpb      $48, (%rdi)
	jne       LBB0_200
	jmp       LBB0_201
LBB0_199:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	je        LBB0_201
LBB0_200:
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       LBB0_208
LBB0_201:
	movq      _color_indicator+192(%rip), %rcx
	testq     %rcx, %rcx
	je        LBB0_209
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rcx
	je        LBB0_205
	movb      $1, %al
	cmpq      $1, %rcx
	jne       LBB0_206
	cmpb      $48, (%rdi)
	jne       LBB0_206
	jmp       LBB0_209
LBB0_205:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	setne     %al
LBB0_206:
	testb     %al, %al
	je        LBB0_209
	movl      _format(%rip), %eax
	testl     %eax, %eax
	jne       LBB0_209
LBB0_208:
	movb      $1, _check_symlink_color(%rip)
LBB0_209:
	movl      $1, %edi
	call      _tcgetpgrp
	testl     %eax, %eax
	js        LBB0_219
	movl      $0, _caught_signals(%rip)
	xorl      %ebx, %ebx
	leaq      _main.sig(%rip), %r14
	leaq      -320(%rbp), %r15
# ----------------------
	.p2align 4, 0x90
LBB0_211:
	movl      (%rbx,%r14), %r13d
	xorl      %esi, %esi
	movl      %r13d, %edi
	movq      %r15, %rdx
	call      _sigaction
	cmpq      $1, -320(%rbp)
	je        LBB0_213
	decl      %r13d
	movl      $1, %eax
	movl      %r13d, %ecx
	shll      %cl, %eax
	orl       %eax, _caught_signals(%rip)
LBB0_213:
	addq      $4, %rbx
	cmpq      $44, %rbx
	jne       LBB0_211
	movl      _caught_signals(%rip), %eax
	movl      %eax, -312(%rbp)
	movl      $2, -308(%rbp)
	xorl      %ebx, %ebx
	leaq      _sighandler(%rip), %r13
	leaq      -320(%rbp), %r15
	jmp       LBB0_216
# ----------------------
	.p2align 4, 0x90
LBB0_215:
	movl      _caught_signals(%rip), %eax
	addq      $4, %rbx
LBB0_216:
	movl      (%rbx,%r14), %edi
	leal      -1(%rdi), %ecx
	btl       %ecx, %eax
	jae       LBB0_218
	testq     %rbx, %rbx
	movq      %r13, %rax
	leaq      _stophandler(%rip), %rcx
	cmove     %rcx, %rax
	movq      %rax, -320(%rbp)
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigaction
LBB0_218:
	cmpq      $40, %rbx
	jne       LBB0_215
LBB0_219:
	cmpl      $1, _dereference(%rip)
	jne       LBB0_221
	movb      _immediate_dirs(%rip), %al
	xorl      %ecx, %ecx
	cmpl      $0, _format(%rip)
	setne     %cl
	cmpl      $3, _indicator_style(%rip)
	leal      2(%rcx,%rcx), %ecx
	movl      $2, %edx
	cmove     %edx, %ecx
	testb     %al, %al
	cmovne    %edx, %ecx
	movl      %ecx, _dereference(%rip)
LBB0_221:
	cmpb      $1, _recursive(%rip)
	jne       LBB0_224
	leaq      _dev_ino_hash(%rip), %rdx
	leaq      _dev_ino_compare(%rip), %rcx
	leaq      _dev_ino_free(%rip), %r8
	movl      $30, %edi
	xorl      %esi, %esi
	call      _hash_initialize
	movq      %rax, _active_dir_set(%rip)
	testq     %rax, %rax
	je        LBB0_257
	leaq      _dev_ino_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rcx
	movq      _free@GOTPCREL(%rip), %r8
	xorl      %esi, %esi
	xorl      %edx, %edx
	call      __obstack_begin
LBB0_224:
	cmpl      $0, _format(%rip)
	je        LBB0_227
	movl      _sort_type(%rip), %eax
	cmpl      $4, %eax
	je        LBB0_227
	cmpl      $2, %eax
	jne       LBB0_240
LBB0_227:
	movb      $1, _format_needs_stat(%rip)
LBB0_228:
	xorl      %eax, %eax
LBB0_229:
	andb      $1, %al
	movb      %al, _format_needs_type(%rip)
	cmpb      $1, _dired(%rip)
	jne       LBB0_231
	leaq      _dired_obstack(%rip), %rdi
	movq      _malloc@GOTPCREL(%rip), %rbx
	movq      _free@GOTPCREL(%rip), %r14
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
	leaq      _subdired_obstack(%rip), %rdi
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %rbx, %rcx
	movq      %r14, %r8
	call      __obstack_begin
LBB0_231:
	movq      $100, _cwd_n_alloc(%rip)
	movl      $19200, %edi
	call      _xmalloc
	movq      %rax, _cwd_file(%rip)
	movq      $0, _cwd_n_used(%rip)
	movb      $0, _any_has_acl(%rip)
	movl      $0, _inode_number_width(%rip)
	movl      $0, _block_size_width(%rip)
	movl      $0, _nlink_width(%rip)
	movl      $0, _owner_width(%rip)
	movl      $0, _group_width(%rip)
	movl      $0, _author_width(%rip)
	movl      $0, _scontext_width(%rip)
	movl      $0, _major_device_number_width(%rip)
	movl      $0, _minor_device_number_width(%rip)
	movl      $0, _file_size_width(%rip)
	movl      -344(%rbp), %eax
	movl      %eax, %r14d
	subl      %r12d, %r14d
	jle       LBB0_234
	movslq    %eax, %r13
	leaq      L_.str(%rip), %r15
	movq      -328(%rbp), %rbx
# ----------------------
	.p2align 4, 0x90
LBB0_233:
	movq      (%rbx,%r12,8), %rdi
	incq      %r12
	xorl      %esi, %esi
	movl      $1, %edx
	movq      %r15, %rcx
	call      _gobble_file
	cmpq      %r13, %r12
	jl        LBB0_233
	jmp       LBB0_244
LBB0_234:
	cmpb      $1, _immediate_dirs(%rip)
	jne       LBB0_243
	leaq      L_.str.1(%rip), %rdi
	leaq      L_.str(%rip), %rcx
	movl      $3, %esi
	movl      $1, %edx
	call      _gobble_file
	cmpq      $0, _cwd_n_used(%rip)
	jne       LBB0_245
	jmp       LBB0_236
LBB0_240:
	movb      _print_block_size(%rip), %al
	orb       _print_scontext(%rip), %al
	andb      $1, %al
	movb      %al, _format_needs_stat(%rip)
	jne       LBB0_228
	movb      $1, %al
	movb      _recursive(%rip), %cl
	testb     %cl, %cl
	jne       LBB0_229
	cmpb      $0, _print_with_color(%rip)
	setne     %cl
	cmpl      $0, _indicator_style(%rip)
	setne     %al
	orb       %cl, %al
	orb       _directories_first(%rip), %al
	jmp       LBB0_229
LBB0_243:
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	movq      $0, 8(%rbx)
	leaq      L_.str.1(%rip), %rdi
	call      _xstrdup
	movq      %rax, (%rbx)
	movb      $1, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
LBB0_244:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_236
LBB0_245:
	call      _sort_files
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	jne       LBB0_247
	xorl      %edi, %edi
	movl      $1, %esi
	call      _extract_dirs_from_files
LBB0_247:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_236
	call      _print_current_files
	cmpq      $0, _pending_dirs(%rip)
	je        LBB0_268
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB0_259
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB0_260
LBB0_236:
	cmpl      $1, %r14d
	movq      _pending_dirs(%rip), %rbx
	jg        LBB0_262
	testq     %rbx, %rbx
	je        LBB0_262
	cmpq      $0, 24(%rbx)
	jne       LBB0_261
	movb      $0, _print_dir_name(%rip)
	jmp       LBB0_261
LBB0_259:
	movl      $10, %edi
	call      ___swbuf
LBB0_260:
	incq      _dired_pos(%rip)
	jmp       LBB0_261
LBB0_251:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $2, %eax
	leaq      L_.str.34(%rip), %rcx
	leaq      L_.str.35(%rip), %rdx
	cmove     %rcx, %rdx
	cmpl      $1, %eax
	leaq      L_.str.33(%rip), %rsi
	cmovne    %rdx, %rsi
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      $0, (%rsp)
	leaq      L_.str.70(%rip), %rdx
	leaq      L_.str.71(%rip), %r8
	leaq      L_.str.72(%rip), %r9
	xorl      %eax, %eax
	call      _version_etc
	xorl      %edi, %edi
	call      _exit
LBB0_252:
	xorl      %edi, %edi
	call      _usage
LBB0_253:
	movl      $2, %edi
	call      _usage
LBB0_254:
	call      _abort
LBB0_255:
	call      _abort
LBB0_256:
	movl      -320(%rbp), %esi
	movq      (%rbx), %r8
	leaq      _long_options(%rip), %rcx
	xorl      %edx, %edx
	movl      %eax, %edi
	call      _xstrtol_fatal
LBB0_257:
	call      _xalloc_die
LBB0_258:
	leaq      L_.str.79(%rip), %rdi
	movq      %rbx, %rsi
	movq      %rax, %rdx
	call      _argmatch_invalid
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str.80(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rdi
	leaq      L_.str.81(%rip), %r14
	leaq      L_.str.66(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rdi
	leaq      L_.str.158(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rdi
	leaq      L_.str.159(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rdi
	leaq      L_.str.77(%rip), %rdx
	xorl      %eax, %eax
	movq      %r14, %rsi
	call      _fprintf
	movq      (%rbx), %rsi
	leaq      L_.str.82(%rip), %rdi
	call      _fputs
	movl      $2, %edi
	call      _usage
LBB0_261:
	movq      _pending_dirs(%rip), %rbx
LBB0_262:
	testq     %rbx, %rbx
	je        LBB0_268
	movq      24(%rbx), %rax
	movq      %rax, _pending_dirs(%rip)
	movq      _active_dir_set(%rip), %rdi
	testq     %rdi, %rdi
	movq      (%rbx), %r15
	je        LBB0_277
	testq     %r15, %r15
	jne       LBB0_277
	movq      _dev_ino_obstack+24(%rip), %rax
	movq      %rax, %rcx
	subq      _dev_ino_obstack+16(%rip), %rcx
	cmpq      $15, %rcx
	jbe       LBB0_411
	leaq      -16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movq      -16(%rax), %rcx
	movl      -8(%rax), %eax
	movq      %rcx, -320(%rbp)
	movl      %eax, -312(%rbp)
	leaq      -320(%rbp), %rsi
	call      _hash_delete
	testq     %rax, %rax
	je        LBB0_412
	movq      %rax, %rdi
	call      _free
	movq      (%rbx), %rdi
	call      _free
	movq      8(%rbx), %rdi
	call      _free
	movq      %rbx, %rdi
	call      _free
	jmp       LBB0_261
LBB0_268:
	cmpb      $0, _print_with_color(%rip)
	je        LBB0_332
	cmpb      $1, _used_color(%rip)
	jne       LBB0_306
	movq      _color_indicator(%rip), %rsi
	cmpq      $2, %rsi
	jne       LBB0_274
	movq      _color_indicator+8(%rip), %rax
	movzwl    (%rax), %eax
	cmpl      $23323, %eax
	jne       LBB0_274
	cmpq      $1, _color_indicator+16(%rip)
	jne       LBB0_274
	movq      _color_indicator+24(%rip), %rax
	cmpb      $109, (%rax)
	je        LBB0_306
LBB0_274:
	movq      _color_indicator+8(%rip), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB0_305
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB0_299
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB0_304
LBB0_277:
	movq      8(%rbx), %r14
	movq      %rbx, -360(%rbp)
	movb      16(%rbx), %r13b
	call      ___error
	movl      $0, (%rax)
	movq      %r15, %rdi
	call      _opendir$INODE64
	movq      %rax, -344(%rbp)
	testq     %rax, %rax
	je        LBB0_283
	cmpq      $0, _active_dir_set(%rip)
	movq      %r15, -328(%rbp)
	je        LBB0_294
	movq      -344(%rbp), %rdi
	call      _dirfd
	leaq      -320(%rbp), %rsi
	testl     %eax, %eax
	js        LBB0_286
	movl      %eax, %edi
	call      _fstat$INODE64
	testl     %eax, %eax
	jns       LBB0_287
	jmp       LBB0_281
LBB0_283:
	call      ___error
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.191(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	testb     %r13b, %r13b
	jne       LBB0_290
	cmpl      $0, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jne       LBB0_408
	movl      $1, _exit_status(%rip)
	jmp       LBB0_408
LBB0_286:
	movq      %r15, %rdi
	call      _rpl_stat
	testl     %eax, %eax
	js        LBB0_281
LBB0_287:
	movl      -320(%rbp), %r15d
	movq      -312(%rbp), %r12
	movl      $16, %edi
	call      _xmalloc
	movq      %rax, %rbx
	movq      %r12, (%rbx)
	movl      %r15d, 8(%rbx)
	movq      _active_dir_set(%rip), %rdi
	movq      %rbx, %rsi
	call      _hash_insert
	testq     %rax, %rax
	je        LBB0_414
	cmpq      %rbx, %rax
	movq      -328(%rbp), %r15
	je        LBB0_291
	movq      %rbx, %rdi
	call      _free
	movq      %r15, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.193(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	movq      -344(%rbp), %rdi
	call      _closedir
LBB0_290:
	movl      $2, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jmp       LBB0_408
LBB0_281:
	call      ___error
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.192(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	testb     %r13b, %r13b
	je        LBB0_339
	movl      $2, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jmp       LBB0_341
LBB0_291:
	movl      %r13d, %r12d
	movl      -320(%rbp), %ebx
	movq      -312(%rbp), %r13
	movq      _dev_ino_obstack+32(%rip), %rcx
	movq      _dev_ino_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $15, %rcx
	ja        LBB0_293
	leaq      _dev_ino_obstack(%rip), %rdi
	movl      $16, %esi
	call      __obstack_newchunk
	movq      _dev_ino_obstack+24(%rip), %rax
LBB0_293:
	leaq      16(%rax), %rcx
	movq      %rcx, _dev_ino_obstack+24(%rip)
	movl      %ebx, 8(%rax)
	movq      %r13, (%rax)
	movl      %r12d, %r13d
LBB0_294:
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       LBB0_296
	cmpb      $1, _print_dir_name(%rip)
	jne       LBB0_354
LBB0_296:
	cmpb      $1, _print_dir.first(%rip)
	jne       LBB0_344
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB0_342
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB0_343
LBB0_299:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB0_301
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB0_301:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB0_303
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB0_303:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB0_304:
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB0_305:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB0_306:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _rpl_fflush
	movl      _caught_signals(%rip), %eax
	testl     $131072, %eax
	je        LBB0_308
	movl      $18, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_308:
	testb     $32, %ah
	je        LBB0_310
	movl      $14, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_310:
	testb     $1, %al
	je        LBB0_312
	movl      $1, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_312:
	testb     $2, %al
	je        LBB0_314
	movl      $2, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_314:
	testb     $16, %ah
	je        LBB0_316
	movl      $13, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_316:
	testb     $4, %al
	je        LBB0_318
	movl      $3, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_318:
	testb     $64, %ah
	je        LBB0_320
	movl      $15, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_320:
	testl     $67108864, %eax
	je        LBB0_322
	movl      $27, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_322:
	testl     $33554432, %eax
	je        LBB0_324
	movl      $26, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_324:
	testl     $8388608, %eax
	je        LBB0_326
	movl      $24, %edi
	xorl      %esi, %esi
	call      _signal
	movl      _caught_signals(%rip), %eax
LBB0_326:
	testl     $16777216, %eax
	je        LBB0_328
	movl      $25, %edi
	xorl      %esi, %esi
	call      _signal
LBB0_328:
	movl      _stop_signal_count(%rip), %ebx
	testl     %ebx, %ebx
	je        LBB0_330
# ----------------------
	.p2align 4, 0x90
LBB0_329:
	movl      $17, %edi
	call      _raise
	decl      %ebx
	jne       LBB0_329
LBB0_330:
	movl      _interrupt_signal(%rip), %edi
	testl     %edi, %edi
	je        LBB0_332
	call      _raise
LBB0_332:
	cmpb      $1, _dired(%rip)
	jne       LBB0_334
	leaq      L_.str.5(%rip), %rdi
	leaq      _dired_obstack(%rip), %rsi
	call      _dired_dump_obstack
	leaq      L_.str.6(%rip), %rdi
	leaq      _subdired_obstack(%rip), %rsi
	call      _dired_dump_obstack
	movq      _filename_quoting_options(%rip), %rdi
	call      _get_quoting_style
	movl      %eax, %eax
	movq      _quoting_style_args@GOTPCREL(%rip), %rcx
	movq      (%rcx,%rax,8), %rsi
	leaq      L_.str.7(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
LBB0_334:
	movq      _active_dir_set(%rip), %rbx
	testq     %rbx, %rbx
	je        LBB0_337
	movq      %rbx, %rdi
	call      _hash_get_n_entries
	testq     %rax, %rax
	jne       LBB0_413
	movq      %rbx, %rdi
	call      _hash_free
LBB0_337:
	movl      _exit_status(%rip), %eax
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       LBB0_410
	addq      $344, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB0_339:
	cmpl      $0, _exit_status(%rip)
	movq      -360(%rbp), %rbx
	jne       LBB0_341
	movl      $1, _exit_status(%rip)
LBB0_341:
	movq      -344(%rbp), %rdi
	call      _closedir
	jmp       LBB0_408
LBB0_342:
	movl      $10, %edi
	call      ___swbuf
LBB0_343:
	incq      _dired_pos(%rip)
LBB0_344:
	movb      $1, _print_dir.first(%rip)
	cmpb      $1, _dired(%rip)
	jne       LBB0_349
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str.194(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
	cmpb      $1, _dired(%rip)
	jne       LBB0_349
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB0_348
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
	movq      _subdired_obstack+24(%rip), %rax
LBB0_348:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
LBB0_349:
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	testq     %r14, %r14
	cmove     %r15, %r14
	movq      _dirname_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      %r14, %rsi
	call      _quote_name
	addq      %rax, _dired_pos(%rip)
	cmpb      $1, _dired(%rip)
	jne       LBB0_353
	movq      _subdired_obstack+32(%rip), %rcx
	movq      _subdired_obstack+24(%rip), %rax
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB0_352
	leaq      _subdired_obstack(%rip), %rdi
	movl      $8, %esi
	call      __obstack_newchunk
	movq      _subdired_obstack+24(%rip), %rax
LBB0_352:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, _subdired_obstack+24(%rip)
LBB0_353:
	movq      (%rbx), %rsi
	leaq      L_.str.195(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
LBB0_354:
	movb      %r13b, -352(%rbp)
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_357
	xorl      %ebx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB0_356:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
	movq      8(%r14), %rdi
	call      _free
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB0_356
LBB0_357:
	movq      $0, _cwd_n_used(%rip)
	movb      $0, _any_has_acl(%rip)
	movl      $0, _inode_number_width(%rip)
	movl      $0, _block_size_width(%rip)
	movl      $0, _nlink_width(%rip)
	movl      $0, _owner_width(%rip)
	movl      $0, _group_width(%rip)
	movl      $0, _author_width(%rip)
	movl      $0, _scontext_width(%rip)
	movl      $0, _major_device_number_width(%rip)
	movl      $0, _minor_device_number_width(%rip)
	movl      $0, _file_size_width(%rip)
	xorl      %r14d, %r14d
	jmp       LBB0_359
# ----------------------
	.p2align 4, 0x90
LBB0_358:
	call      _process_signals
	movq      %r15, %r14
LBB0_359:
	call      ___error
	movl      $0, (%rax)
	movq      -344(%rbp), %rdi
	call      _readdir$INODE64
	movq      %rax, %r12
	testq     %r12, %r12
	je        LBB0_381
	movq      %r12, %r13
	addq      $21, %r13
	movl      _ignore_mode(%rip), %eax
	cmpl      $2, %eax
	je        LBB0_366
	cmpb      $46, (%r13)
	jne       LBB0_364
	testl     %eax, %eax
	je        LBB0_387
	xorl      %ecx, %ecx
	cmpb      $46, 22(%r12)
	sete      %cl
	cmpb      $0, 22(%r12,%rcx)
	je        LBB0_387
LBB0_364:
	testl     %eax, %eax
	jne       LBB0_366
	movq      _hide_patterns(%rip), %r15
	testq     %r15, %r15
	je        LBB0_366
# ----------------------
	.p2align 4, 0x90
LBB0_378:
	movq      (%r15), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
	testl     %eax, %eax
	je        LBB0_387
	movq      8(%r15), %r15
	testq     %r15, %r15
	jne       LBB0_378
# ----------------------
	.p2align 4, 0x90
LBB0_366:
	movq      _ignore_patterns(%rip), %rbx
	testq     %rbx, %rbx
	je        LBB0_367
# ----------------------
	.p2align 4, 0x90
LBB0_380:
	movq      (%rbx), %rdi
	movl      $4, %edx
	movq      %r13, %rsi
	call      _gnu_fnmatch
	testl     %eax, %eax
	je        LBB0_387
	movq      8(%rbx), %rbx
	testq     %rbx, %rbx
	jne       LBB0_380
LBB0_367:
	movb      20(%r12), %al
	decb      %al
	xorl      %esi, %esi
	cmpb      $13, %al
	ja        LBB0_369
	movsbq    %al, %rax
	leaq      l_switch.table(%rip), %rcx
	movl      (%rcx,%rax,4), %esi
LBB0_369:
	xorl      %edx, %edx
	movq      %r13, %rdi
	movq      -328(%rbp), %rcx
	call      _gobble_file
	movq      %rax, %r15
	addq      %r14, %r15
	cmpl      $1, _format(%rip)
	jne       LBB0_358
	cmpl      $-1, _sort_type(%rip)
	jne       LBB0_358
	movb      _print_block_size(%rip), %al
	testb     %al, %al
	jne       LBB0_358
	movb      _recursive(%rip), %al
	testb     %al, %al
	jne       LBB0_358
	call      _sort_files
	call      _print_current_files
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB0_376
	xorl      %ebx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB0_375:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r14
	movq      (%r14), %rdi
	call      _free
	movq      8(%r14), %rdi
	call      _free
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB0_375
LBB0_376:
	movq      $0, _cwd_n_used(%rip)
	movb      $0, _any_has_acl(%rip)
	movl      $0, _inode_number_width(%rip)
	movl      $0, _block_size_width(%rip)
	movl      $0, _nlink_width(%rip)
	movl      $0, _owner_width(%rip)
	movl      $0, _group_width(%rip)
	movl      $0, _author_width(%rip)
	movl      $0, _scontext_width(%rip)
	movl      $0, _major_device_number_width(%rip)
	movl      $0, _minor_device_number_width(%rip)
	movl      $0, _file_size_width(%rip)
	jmp       LBB0_358
# ----------------------
	.p2align 4, 0x90
LBB0_381:
	call      ___error
	cmpl      $0, (%rax)
	movq      -328(%rbp), %r15
	movb      -352(%rbp), %r12b
	je        LBB0_388
	call      ___error
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	leaq      L_.str.196(%rip), %rdx
	call      _error
	testb     %r12b, %r12b
	je        LBB0_384
	movl      $2, _exit_status(%rip)
	jmp       LBB0_386
LBB0_384:
	cmpl      $0, _exit_status(%rip)
	jne       LBB0_386
	movl      $1, _exit_status(%rip)
# ----------------------
	.p2align 4, 0x90
LBB0_386:
	call      ___error
	cmpl      $84, (%rax)
	jne       LBB0_388
LBB0_387:
	movq      %r14, %r15
	jmp       LBB0_358
LBB0_388:
	movq      -344(%rbp), %rdi
	call      _closedir
	testl     %eax, %eax
	je        LBB0_393
	call      ___error
	movl      (%rax), %ebx
	movq      %r15, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.197(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	testb     %r12b, %r12b
	je        LBB0_391
	movl      $2, _exit_status(%rip)
	jmp       LBB0_393
LBB0_391:
	cmpl      $0, _exit_status(%rip)
	jne       LBB0_393
	movl      $1, _exit_status(%rip)
LBB0_393:
	call      _sort_files
	cmpb      $1, _recursive(%rip)
	jne       LBB0_395
	xorl      %esi, %esi
	movq      %r15, %rdi
	call      _extract_dirs_from_files
LBB0_395:
	cmpl      $0, _format(%rip)
	je        LBB0_397
	cmpb      $1, _print_block_size(%rip)
	jne       LBB0_406
LBB0_397:
	cmpb      $1, _dired(%rip)
	jne       LBB0_399
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str.194(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
LBB0_399:
	movq      ___stdoutp@GOTPCREL(%rip), %r15
	movq      (%r15), %rsi
	leaq      L_.str.198(%rip), %rdi
	call      _fputs
	addq      $5, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB0_401
	cmpl      40(%rsi), %eax
	jle       LBB0_409
LBB0_401:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
LBB0_402:
	incq      _dired_pos(%rip)
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	movq      %r14, %rdi
	call      _human_readable
	movq      %rax, %rbx
	movq      (%r15), %rsi
	movq      %rbx, %rdi
	call      _fputs
	movq      %rbx, %rdi
	call      _strlen
	addq      %rax, _dired_pos(%rip)
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB0_404
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB0_405
LBB0_404:
	movl      $10, %edi
	call      ___swbuf
LBB0_405:
	incq      _dired_pos(%rip)
LBB0_406:
	cmpq      $0, _cwd_n_used(%rip)
	movq      -360(%rbp), %rbx
	je        LBB0_408
	call      _print_current_files
LBB0_408:
	movq      (%rbx), %rdi
	call      _free
	movq      8(%rbx), %rdi
	call      _free
	movq      %rbx, %rdi
	call      _free
	movb      $1, _print_dir_name(%rip)
	jmp       LBB0_261
LBB0_409:
	movl      $32, %edi
	call      ___swbuf
	jmp       LBB0_402
LBB0_410:
	call      ___stack_chk_fail
LBB0_411:
	leaq      L___func__.dev_ino_pop(%rip), %rdi
	leaq      L_.str.2(%rip), %rsi
	leaq      L_.str.38(%rip), %rcx
	movl      $992, %edx
	call      ___assert_rtn
LBB0_412:
	leaq      L___func__.main(%rip), %rdi
	leaq      L_.str.2(%rip), %rsi
	leaq      L_.str.3(%rip), %rcx
	movl      $1450, %edx
	call      ___assert_rtn
LBB0_413:
	leaq      L___func__.main(%rip), %rdi
	leaq      L_.str.2(%rip), %rsi
	leaq      L_.str.8(%rip), %rcx
	movl      $1513, %edx
	call      ___assert_rtn
LBB0_414:
	call      _xalloc_die
# ----------------------
	.p2align 2, 0x90
LJTI0_0:
	.long	L0_0_set_251
	.long	L0_0_set_252
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_98
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_29
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_34
	.long	L0_0_set_36
	.long	L0_0_set_37
	.long	L0_0_set_38
	.long	L0_0_set_253
	.long	L0_0_set_39
	.long	L0_0_set_65
	.long	L0_0_set_40
	.long	L0_0_set_41
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_43
	.long	L0_0_set_253
	.long	L0_0_set_44
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_45
	.long	L0_0_set_46
	.long	L0_0_set_47
	.long	L0_0_set_48
	.long	L0_0_set_49
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_50
	.long	L0_0_set_253
	.long	L0_0_set_51
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_52
	.long	L0_0_set_53
	.long	L0_0_set_54
	.long	L0_0_set_55
	.long	L0_0_set_253
	.long	L0_0_set_56
	.long	L0_0_set_59
	.long	L0_0_set_60
	.long	L0_0_set_84
	.long	L0_0_set_253
	.long	L0_0_set_26
	.long	L0_0_set_63
	.long	L0_0_set_61
	.long	L0_0_set_62
	.long	L0_0_set_64
	.long	L0_0_set_66
	.long	L0_0_set_67
	.long	L0_0_set_68
	.long	L0_0_set_85
	.long	L0_0_set_31
	.long	L0_0_set_69
	.long	L0_0_set_70
	.long	L0_0_set_86
	.long	L0_0_set_71
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_253
	.long	L0_0_set_72
	.long	L0_0_set_32
	.long	L0_0_set_73
	.long	L0_0_set_77
	.long	L0_0_set_78
	.long	L0_0_set_87
	.long	L0_0_set_88
	.long	L0_0_set_89
	.long	L0_0_set_79
	.long	L0_0_set_80
	.long	L0_0_set_90
	.long	L0_0_set_81
	.long	L0_0_set_91
	.long	L0_0_set_82
	.long	L0_0_set_93
	.long	L0_0_set_83
LJTI0_1:
	.long	L0_1_set_137
	.long	L0_1_set_138
	.long	L0_1_set_140
	.long	L0_1_set_141
LJTI0_2:
	.long	L0_2_set_173
	.long	L0_2_set_177
	.long	L0_2_set_179
	.long	L0_2_set_169
	.long	L0_2_set_254
	.long	L0_2_set_183
# ----------------------
	.p2align 4, 0x90
_stophandler:
	pushq     %rbp
Lcfi8:
Lcfi9:
	movq      %rsp, %rbp
Lcfi10:
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB1_2
	incl      _stop_signal_count(%rip)
LBB1_2:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_sighandler:
	pushq     %rbp
Lcfi11:
Lcfi12:
	movq      %rsp, %rbp
Lcfi13:
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB2_2
	movl      %edi, _interrupt_signal(%rip)
LBB2_2:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_dev_ino_hash:
	pushq     %rbp
Lcfi14:
Lcfi15:
	movq      %rsp, %rbp
Lcfi16:
	movq      (%rdi), %rax
	xorl      %edx, %edx
	divq      %rsi
	movq      %rdx, %rax
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_dev_ino_compare:
	pushq     %rbp
Lcfi17:
Lcfi18:
	movq      %rsp, %rbp
Lcfi19:
	movq      (%rdi), %rax
	cmpq      (%rsi), %rax
	jne       LBB4_1
	movl      8(%rdi), %eax
	cmpl      8(%rsi), %eax
	sete      %al
	jmp       LBB4_3
LBB4_1:
	xorl      %eax, %eax
LBB4_3:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_dev_ino_free:
	pushq     %rbp
Lcfi20:
Lcfi21:
	movq      %rsp, %rbp
Lcfi22:
	popq      %rbp
	jmp       _free
# ----------------------
	.p2align 4, 0x90
_gobble_file:
	pushq     %rbp
Lcfi23:
Lcfi24:
	movq      %rsp, %rbp
Lcfi25:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $360, %rsp
Lcfi26:
Lcfi27:
Lcfi28:
Lcfi29:
Lcfi30:
	movq      %rcx, %r12
	movl      %edx, %r14d
	movl      %esi, -384(%rbp)
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      _cwd_n_used(%rip), %rax
	cmpq      _cwd_n_alloc(%rip), %rax
	jne       LBB6_3
	movq      $48038396025285291, %rcx
	cmpq      %rcx, %rax
	jae       LBB6_209
	movq      _cwd_file(%rip), %rdi
	shlq      $7, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, %rbx
	movq      %rbx, _cwd_file(%rip)
	shlq      $1, _cwd_n_alloc(%rip)
	movq      _cwd_n_used(%rip), %rax
	jmp       LBB6_4
LBB6_3:
	movq      _cwd_file(%rip), %rbx
LBB6_4:
	leaq      (%rax,%rax,2), %r13
	shlq      $6, %r13
	leaq      (%rbx,%r13), %rdi
	movl      $192, %esi
	movq      %rdi, -392(%rbp)
	call      ___bzero
	movq      $0, 24(%rbx,%r13)
	movq      %rbx, -360(%rbp)
	movl      -384(%rbp), %esi
	movl      %esi, 160(%rbx,%r13)
	cmpb      $0, _format_needs_stat(%rip)
	jne       LBB6_36
	movl      %r14d, %eax
	xorb      $1, %al
	je        LBB6_36
	cmpl      $3, %esi
	movb      _print_with_color(%rip), %bl
	jne       LBB6_23
	testb     %bl, %bl
	je        LBB6_23
	movq      _color_indicator+304(%rip), %rax
	testq     %rax, %rax
	je        LBB6_13
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_12
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	je        LBB6_13
	jmp       LBB6_36
LBB6_12:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -384(%rbp), %esi
	testl     %eax, %eax
	jne       LBB6_36
LBB6_13:
	movq      _color_indicator+288(%rip), %rax
	testq     %rax, %rax
	je        LBB6_18
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_17
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	je        LBB6_18
	jmp       LBB6_36
LBB6_17:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -384(%rbp), %esi
	testl     %eax, %eax
	jne       LBB6_36
LBB6_18:
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        LBB6_23
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_22
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	je        LBB6_23
	jmp       LBB6_36
LBB6_22:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -384(%rbp), %esi
	testl     %eax, %eax
	jne       LBB6_36
LBB6_23:
	movb      _print_inode(%rip), %cl
	movb      _format_needs_type(%rip), %al
	testb     %al, %al
	jne       LBB6_25
	movl      %ecx, %edx
	xorb      $1, %dl
	testb     $1, %dl
	jne       LBB6_30
LBB6_25:
	cmpl      $6, %esi
	je        LBB6_27
	testl     %esi, %esi
	jne       LBB6_30
LBB6_27:
	cmpl      $5, _dereference(%rip)
	je        LBB6_36
	movb      _color_symlink_as_referent(%rip), %dl
	testb     %dl, %dl
	jne       LBB6_36
	orb       _check_symlink_color(%rip), %cl
LBB6_30:
	testb     $1, %cl
	jne       LBB6_36
	testb     %al, %al
	je        LBB6_97
	testl     %esi, %esi
	je        LBB6_36
	testb     %r14b, %r14b
	jne       LBB6_36
	cmpl      $5, %esi
	jne       LBB6_97
	cmpl      $3, _indicator_style(%rip)
	jne       LBB6_183
LBB6_36:
	movl      %r14d, -372(%rbp)
	cmpb      $47, (%r15)
	movq      %r15, %r14
	je        LBB6_49
	movb      (%r12), %bl
	testb     %bl, %bl
	movq      %r15, %r14
	je        LBB6_49
	movq      %r15, %rdi
	call      _strlen
	movq      %rax, %r14
	movq      %r12, %rdi
	call      _strlen
	leaq      17(%r14,%rax), %rax
	andq      $-16, %rax
	movq      %rsp, %r14
	subq      %rax, %r14
	movq      %r14, %rsp
	cmpb      $46, %bl
	jne       LBB6_40
	movb      $46, %bl
	cmpb      $0, 1(%r12)
	movq      %r14, %rax
	je        LBB6_45
LBB6_40:
	movq      %r12, %rcx
	movq      %r14, %rax
# ----------------------
	.p2align 4, 0x90
LBB6_41:
	movb      %bl, (%rax)
	incq      %rax
	movzbl    1(%rcx), %ebx
	incq      %rcx
	testb     %bl, %bl
	jne       LBB6_41
	cmpq      %r12, %rcx
	jbe       LBB6_45
	cmpb      $47, -1(%rcx)
	je        LBB6_45
	movb      $47, (%rax)
	incq      %rax
LBB6_45:
	movb      (%r15), %cl
	testb     %cl, %cl
	je        LBB6_48
	leaq      1(%r15), %rdx
# ----------------------
	.p2align 4, 0x90
LBB6_47:
	movb      %cl, (%rax)
	incq      %rax
	movzbl    (%rdx), %ecx
	incq      %rdx
	testb     %cl, %cl
	jne       LBB6_47
LBB6_48:
	movb      $0, (%rax)
LBB6_49:
	movq      %r15, -368(%rbp)
	movq      -360(%rbp), %rbx
	leaq      16(%rbx,%r13), %r12
	movl      _dereference(%rip), %eax
	leal      -3(%rax), %ecx
	cmpl      $2, %ecx
	jae       LBB6_54
	cmpb      $0, -372(%rbp)
	je        LBB6_57
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _rpl_stat
	movl      %eax, %r15d
	cmpl      $3, _dereference(%rip)
	je        LBB6_59
	testl     %r15d, %r15d
	js        LBB6_56
	movzwl    20(%rbx,%r13), %eax
	andl      $61440, %eax
	xorl      %ecx, %ecx
	cmpl      $16384, %eax
	setne     %cl
	testl     %ecx, %ecx
	jne       LBB6_57
	jmp       LBB6_59
LBB6_54:
	cmpl      $5, %eax
	jne       LBB6_57
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _rpl_stat
	jmp       LBB6_58
LBB6_56:
	call      ___error
	xorl      %ecx, %ecx
	cmpl      $2, (%rax)
	sete      %cl
	testl     %ecx, %ecx
	je        LBB6_59
LBB6_57:
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _rpl_lstat
LBB6_58:
	movl      %eax, %r15d
LBB6_59:
	testl     %r15d, %r15d
	je        LBB6_62
	call      ___error
	movl      (%rax), %ebx
	movq      %r14, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.200(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	cmpb      $0, -372(%rbp)
	movq      -368(%rbp), %rdi
	je        LBB6_64
	movl      $2, _exit_status(%rip)
	xorl      %ebx, %ebx
	jmp       LBB6_181
LBB6_62:
	movb      $1, 176(%rbx,%r13)
	cmpl      $5, -384(%rbp)
	movq      -368(%rbp), %r15
	jne       LBB6_67
	cmpb      $0, _print_with_color(%rip)
	jne       LBB6_69
	jmp       LBB6_80
LBB6_64:
	cmpl      $0, _exit_status(%rip)
	jne       LBB6_66
	movl      $1, _exit_status(%rip)
LBB6_66:
	call      _xstrdup
	movq      -392(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
	xorl      %ebx, %ebx
	jmp       LBB6_181
LBB6_67:
	movzwl    20(%rbx,%r13), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	jne       LBB6_80
	movb      _print_with_color(%rip), %al
	testb     %al, %al
	je        LBB6_80
LBB6_69:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        LBB6_80
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_73
	cmpq      $1, %rax
	jne       LBB6_74
	cmpb      $48, (%rdi)
	jne       LBB6_74
	jmp       LBB6_80
LBB6_73:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	je        LBB6_80
LBB6_74:
	movl      16(%rbx,%r13), %r15d
	movl      _has_capability_cache.unsupported_device(%rip), %ebx
	call      ___error
	cmpl      %ebx, %r15d
	movl      $45, (%rax)
	je        LBB6_79
	call      ___error
	movl      (%rax), %eax
	leal      -45(%rax), %ecx
	cmpl      $57, %ecx
	ja        LBB6_77
	movq      $144115196665790465, %rdx
	btq       %rcx, %rdx
	jb        LBB6_78
LBB6_77:
	cmpl      $22, %eax
	jne       LBB6_79
LBB6_78:
	movl      (%r12), %eax
	movl      %eax, _has_capability_cache.unsupported_device(%rip)
LBB6_79:
	movq      -360(%rbp), %rbx
	movb      $0, 184(%rbx,%r13)
	movq      -368(%rbp), %r15
LBB6_80:
	cmpl      $0, _format(%rip)
	je        LBB6_82
	cmpb      $1, _print_scontext(%rip)
	jne       LBB6_106
LBB6_82:
	movl      16(%rbx,%r13), %r15d
	movl      _getfilecon_cache.unsupported_device(%rip), %ebx
	call      ___error
	cmpl      %ebx, %r15d
	movl      $45, (%rax)
	je        LBB6_87
	call      ___error
	movl      (%rax), %eax
	leal      -45(%rax), %ecx
	cmpl      $57, %ecx
	ja        LBB6_85
	movq      $144115196665790465, %rdx
	btq       %rcx, %rdx
	jb        LBB6_86
LBB6_85:
	cmpl      $22, %eax
	jne       LBB6_87
LBB6_86:
	movl      (%r12), %eax
	movl      %eax, _getfilecon_cache.unsupported_device(%rip)
LBB6_87:
	leaq      _UNKNOWN_SECURITY_CONTEXT(%rip), %rax
	movq      -360(%rbp), %rbx
	movq      %rax, 168(%rbx,%r13)
	call      ___error
	movl      (%rax), %eax
	cmpl      $45, %eax
	je        LBB6_90
	cmpl      $102, %eax
	je        LBB6_90
	call      ___error
	movl      $1, %ecx
	cmpl      $96, (%rax)
	jne       LBB6_91
LBB6_90:
	xorl      %ecx, %ecx
LBB6_91:
	movl      _format(%rip), %eax
	orl       %ecx, %eax
	movq      -368(%rbp), %r15
	je        LBB6_93
	xorl      %eax, %eax
	jmp       LBB6_104
LBB6_93:
	movl      (%r12), %r15d
	movl      _file_has_acl_cache.unsupported_device(%rip), %ebx
	call      ___error
	cmpl      %ebx, %r15d
	jne       LBB6_95
	movl      $45, (%rax)
	xorl      %ebx, %ebx
	movq      -368(%rbp), %r15
	jmp       LBB6_103
LBB6_95:
	movl      $0, (%rax)
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _file_has_acl
	movl      %eax, %ebx
	testl     %ebx, %ebx
	jle       LBB6_99
	movq      -368(%rbp), %r15
	jmp       LBB6_103
LBB6_99:
	call      ___error
	movl      (%rax), %eax
	leal      -45(%rax), %ecx
	cmpl      $57, %ecx
	movq      -368(%rbp), %r15
	ja        LBB6_101
	movq      $144115196665790465, %rdx
	btq       %rcx, %rdx
	jb        LBB6_102
LBB6_101:
	cmpl      $22, %eax
	jne       LBB6_103
LBB6_102:
	movl      (%r12), %eax
	movl      %eax, _file_has_acl_cache.unsupported_device(%rip)
LBB6_103:
	movl      %ebx, %ecx
	shrl      $31, %ecx
	testl     %ebx, %ebx
	setg      %al
	movq      -360(%rbp), %rbx
LBB6_104:
	movzbl    %al, %eax
	leal      (%rax,%rax), %edx
	movl      %edx, 180(%rbx,%r13)
	movzbl    _any_has_acl(%rip), %edx
	orl       %eax, %edx
	movb      %dl, _any_has_acl(%rip)
	testl     %ecx, %ecx
	je        LBB6_106
	call      ___error
	movl      (%rax), %ebx
	movq      %r14, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.203(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	movq      -360(%rbp), %rbx
	call      _error
LBB6_106:
	leaq      20(%rbx,%r13), %r12
	movzwl    20(%rbx,%r13), %eax
	movl      %eax, %ecx
	andl      $61440, %ecx
	cmpl      $40960, %ecx
	jne       LBB6_132
	cmpl      $0, _format(%rip)
	je        LBB6_109
	cmpb      $1, _check_symlink_color(%rip)
	jne       LBB6_132
LBB6_109:
	movq      %r12, -384(%rbp)
	movq      112(%rbx,%r13), %rsi
	movq      %r14, %rdi
	call      _areadlink_with_size
	movq      %rax, %r12
	movq      %r12, 8(%rbx,%r13)
	testq     %r12, %r12
	jne       LBB6_115
	leaq      8(%rbx,%r13), %r15
	call      ___error
	movl      (%rax), %ebx
	movq      %r14, %rdi
	call      _quotearg_colon
	movq      %rax, %rcx
	leaq      L_.str.204(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _error
	cmpb      $0, -372(%rbp)
	je        LBB6_112
	movl      $2, _exit_status(%rip)
	jmp       LBB6_114
LBB6_112:
	cmpl      $0, _exit_status(%rip)
	jne       LBB6_114
	movl      $1, _exit_status(%rip)
LBB6_114:
	movq      (%r15), %r12
	testq     %r12, %r12
	movq      -368(%rbp), %r15
	je        LBB6_130
LBB6_115:
	cmpb      $47, (%r12)
	jne       LBB6_117
	movq      %r12, %rdi
	call      _xstrdup
	movq      %rax, %rbx
	jmp       LBB6_121
LBB6_117:
	movq      %r14, %rdi
	call      _dir_len
	movq      %rax, %r15
	testq     %r15, %r15
	je        LBB6_119
	movq      %r12, %rdi
	call      _strlen
	leaq      2(%r15,%rax), %rdi
	call      _xmalloc
	movq      %rax, %rbx
	xorl      %edx, %edx
	cmpb      $47, -1(%r14,%r15)
	setne     %dl
	addq      %r15, %rdx
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _stpncpy
	movq      %rax, %rdi
	movq      %r12, %rsi
	call      _stpcpy
	jmp       LBB6_120
LBB6_119:
	movq      %r12, %rdi
	call      _xstrdup
	movq      %rax, %rbx
LBB6_120:
	movq      -368(%rbp), %r15
LBB6_121:
	testq     %rbx, %rbx
	movq      -384(%rbp), %r12
	je        LBB6_129
	cmpl      $1, _indicator_style(%rip)
	ja        LBB6_124
	cmpb      $1, _check_symlink_color(%rip)
	jne       LBB6_131
LBB6_124:
	leaq      -320(%rbp), %rsi
	movq      %rbx, %rdi
	call      _rpl_stat
	testl     %eax, %eax
	jne       LBB6_131
	movq      -360(%rbp), %rax
	movb      $1, 177(%rax,%r13)
	movzwl    -316(%rbp), %eax
	cmpl      $0, _format(%rip)
	je        LBB6_128
	cmpb      $0, -372(%rbp)
	je        LBB6_128
	movl      %eax, %ecx
	andl      $61440, %ecx
	movzwl    %cx, %ecx
	cmpl      $16384, %ecx
	je        LBB6_131
LBB6_128:
	movq      -360(%rbp), %rcx
	movw      %ax, 164(%rcx,%r13)
	jmp       LBB6_131
LBB6_129:
	xorl      %ebx, %ebx
	jmp       LBB6_131
LBB6_130:
	xorl      %ebx, %ebx
	movq      -384(%rbp), %r12
LBB6_131:
	movq      %rbx, %rdi
	call      _free
	movw      (%r12), %ax
	movq      -360(%rbp), %rbx
LBB6_132:
	leaq      160(%rbx,%r13), %rcx
	andl      $61440, %eax
	cmpl      $16384, %eax
	je        LBB6_135
	movzwl    %ax, %eax
	cmpl      $40960, %eax
	jne       LBB6_138
	movl      $6, (%rcx)
	jmp       LBB6_140
LBB6_135:
	cmpb      $0, -372(%rbp)
	je        LBB6_137
	movb      _immediate_dirs(%rip), %al
	testb     %al, %al
	je        LBB6_139
LBB6_137:
	movl      $3, (%rcx)
	jmp       LBB6_140
LBB6_138:
	movl      $5, (%rcx)
	jmp       LBB6_140
LBB6_139:
	movl      $9, (%rcx)
LBB6_140:
	movq      120(%rbx,%r13), %rbx
	cmpl      $0, _format(%rip)
	je        LBB6_142
	cmpb      $1, _print_block_size(%rip)
	jne       LBB6_163
LBB6_142:
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $512, %ecx
	movq      %rbx, %rdi
	call      _human_readable
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	cmpl      %eax, _block_size_width(%rip)
	jge       LBB6_144
	movl      %eax, _block_size_width(%rip)
LBB6_144:
	cmpl      $0, _format(%rip)
	jne       LBB6_163
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       LBB6_151
	movq      -360(%rbp), %rax
	movl      32(%rax,%r13), %r14d
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	jne       LBB6_149
	movl      %r14d, %edi
	call      _getuser
	testq     %rax, %rax
	je        LBB6_149
	xorl      %r14d, %r14d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	testl     %eax, %eax
	cmovns    %eax, %r14d
	cmpl      %r14d, _owner_width(%rip)
	jl        LBB6_150
	jmp       LBB6_151
LBB6_149:
	leaq      L_.str.205(%rip), %rcx
	leaq      -320(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r14, %r8
	call      ___sprintf_chk
	movq      %r15, %rdi
	movq      -368(%rbp), %r15
	call      _strlen
	movq      %rax, %r14
	cmpl      %r14d, _owner_width(%rip)
	jge       LBB6_151
LBB6_150:
	movl      %r14d, _owner_width(%rip)
LBB6_151:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       LBB6_157
	movq      -360(%rbp), %rax
	movl      36(%rax,%r13), %r14d
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	jne       LBB6_155
	movl      %r14d, %edi
	call      _getgroup
	testq     %rax, %rax
	je        LBB6_155
	xorl      %r14d, %r14d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	testl     %eax, %eax
	cmovns    %eax, %r14d
	cmpl      %r14d, _group_width(%rip)
	jl        LBB6_156
	jmp       LBB6_157
LBB6_155:
	leaq      L_.str.205(%rip), %rcx
	leaq      -320(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r14, %r8
	call      ___sprintf_chk
	movq      %r15, %rdi
	movq      -368(%rbp), %r15
	call      _strlen
	movq      %rax, %r14
	cmpl      %r14d, _group_width(%rip)
	jge       LBB6_157
LBB6_156:
	movl      %r14d, _group_width(%rip)
LBB6_157:
	cmpb      $1, _print_author(%rip)
	jne       LBB6_163
	movq      -360(%rbp), %rax
	movl      32(%rax,%r13), %r14d
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	jne       LBB6_161
	movl      %r14d, %edi
	call      _getuser
	testq     %rax, %rax
	je        LBB6_161
	xorl      %r14d, %r14d
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	testl     %eax, %eax
	cmovns    %eax, %r14d
	cmpl      %r14d, _author_width(%rip)
	jl        LBB6_162
	jmp       LBB6_163
LBB6_161:
	leaq      L_.str.205(%rip), %rcx
	leaq      -320(%rbp), %r15
	movl      $0, %esi
	movl      $21, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	movq      %r14, %r8
	call      ___sprintf_chk
	movq      %r15, %rdi
	movq      -368(%rbp), %r15
	call      _strlen
	movq      %rax, %r14
	cmpl      %r14d, _author_width(%rip)
	jge       LBB6_163
LBB6_162:
	movl      %r14d, _author_width(%rip)
LBB6_163:
	cmpb      $1, _print_scontext(%rip)
	jne       LBB6_166
	movq      -360(%rbp), %rax
	movq      168(%rax,%r13), %rdi
	call      _strlen
	cmpl      %eax, _scontext_width(%rip)
	jge       LBB6_166
	movl      %eax, _scontext_width(%rip)
LBB6_166:
	cmpl      $0, _format(%rip)
	jne       LBB6_177
	movq      -360(%rbp), %rax
	movzwl    22(%rax,%r13), %edi
	leaq      -352(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	cmpl      %eax, _nlink_width(%rip)
	jge       LBB6_169
	movl      %eax, _nlink_width(%rip)
LBB6_169:
	movzwl    (%r12), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       LBB6_175
	movq      -360(%rbp), %rax
	leaq      40(%rax,%r13), %r14
	movzbl    43(%rax,%r13), %edi
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	cmpl      %eax, _major_device_number_width(%rip)
	jge       LBB6_172
	movl      %eax, _major_device_number_width(%rip)
LBB6_172:
	movl      (%r14), %edi
	andl      $16777215, %edi
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	movl      _minor_device_number_width(%rip), %ecx
	cmpl      %eax, %ecx
	jge       LBB6_174
	movl      %eax, _minor_device_number_width(%rip)
	movl      %eax, %ecx
LBB6_174:
	movl      _major_device_number_width(%rip), %eax
	leal      2(%rax,%rcx), %eax
	cmpl      %eax, _file_size_width(%rip)
	jl        LBB6_176
	jmp       LBB6_177
LBB6_175:
	movq      -360(%rbp), %rax
	movq      112(%rax,%r13), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	leaq      -320(%rbp), %rsi
	movl      $1, %ecx
	call      _human_readable
	xorl      %esi, %esi
	movq      %rax, %rdi
	call      _gnu_mbswidth
	cmpl      %eax, _file_size_width(%rip)
	jge       LBB6_177
LBB6_176:
	movl      %eax, _file_size_width(%rip)
LBB6_177:
	cmpb      $1, _print_inode(%rip)
	jne       LBB6_180
LBB6_178:
	movq      -360(%rbp), %rax
	leaq      24(%rax,%r13), %rax
	movq      (%rax), %rdi
	leaq      -320(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	cmpl      %eax, _inode_number_width(%rip)
	jge       LBB6_180
	movl      %eax, _inode_number_width(%rip)
	jmp       LBB6_180
LBB6_183:
	testb     %bl, %bl
	je        LBB6_97
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        LBB6_190
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_189
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	jne       LBB6_36
	jmp       LBB6_190
LBB6_189:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_36
LBB6_190:
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        LBB6_195
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_194
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	jne       LBB6_36
	jmp       LBB6_195
LBB6_194:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_36
LBB6_195:
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        LBB6_200
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_199
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	jne       LBB6_36
	jmp       LBB6_200
LBB6_199:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_36
LBB6_200:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        LBB6_97
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	je        LBB6_206
	cmpq      $1, %rax
	jne       LBB6_36
	cmpb      $48, (%rdi)
	jne       LBB6_36
	jmp       LBB6_97
LBB6_206:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB6_36
LBB6_97:
	xorl      %ebx, %ebx
	cmpb      $1, _print_inode(%rip)
	je        LBB6_178
LBB6_180:
	movq      %r15, %rdi
	call      _xstrdup
	movq      -392(%rbp), %rcx
	movq      %rax, (%rcx)
	incq      _cwd_n_used(%rip)
LBB6_181:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB6_208
	movq      %rbx, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB6_208:
	call      ___stack_chk_fail
LBB6_209:
	call      _xalloc_die
# ----------------------
	.p2align 4, 0x90
_sort_files:
	pushq     %rbp
Lcfi31:
Lcfi32:
	movq      %rsp, %rbp
Lcfi33:
	pushq     %r14
	pushq     %rbx
Lcfi34:
Lcfi35:
	movq      _cwd_n_used(%rip), %rax
	movq      %rax, %rcx
	shrq      $1, %rcx
	addq      %rax, %rcx
	cmpq      %rcx, _sorted_file_alloc(%rip)
	jae       LBB7_3
	movq      _sorted_file(%rip), %rdi
	call      _free
	movq      _cwd_n_used(%rip), %rax
	movq      $768614336404564651, %rcx
	cmpq      %rcx, %rax
	jae       LBB7_30
	shlq      $3, %rax
	leaq      (%rax,%rax,2), %rdi
	call      _xmalloc
	movq      %rax, _sorted_file(%rip)
	movq      _cwd_n_used(%rip), %rax
	leaq      (%rax,%rax,2), %rcx
	movq      %rcx, _sorted_file_alloc(%rip)
LBB7_3:
	testq     %rax, %rax
	je        LBB7_13
	movq      _cwd_file(%rip), %rdx
	movq      _sorted_file(%rip), %r8
	cmpq      $4, %rax
	jb        LBB7_10
	movq      %rax, %r9
	andq      $-4, %r9
	je        LBB7_10
	leaq      16(%r8), %rdi
	movq      %r9, %rsi
	movq      %rdx, %rcx
# ----------------------
	.p2align 4, 0x90
LBB7_8:
	leaq      192(%rcx), %r10
	leaq      384(%rcx), %r11
	leaq      576(%rcx), %rbx
	movd      %rcx, %xmm0
	movd      %r10, %xmm1
	punpcklqdq %xmm1, %xmm0
	movd      %rbx, %xmm1
	movd      %r11, %xmm2
	punpcklqdq %xmm1, %xmm2
	movdqu    %xmm0, -16(%rdi)
	movdqu    %xmm2, (%rdi)
	addq      $768, %rcx
	addq      $32, %rdi
	addq      $-4, %rsi
	jne       LBB7_8
	cmpq      %r9, %rax
	jne       LBB7_11
	jmp       LBB7_13
LBB7_10:
	xorl      %r9d, %r9d
LBB7_11:
	subq      %r9, %rax
	leaq      (%r8,%r9,8), %rcx
	leaq      (%r9,%r9,2), %rsi
	shlq      $6, %rsi
	addq      %rsi, %rdx
# ----------------------
	.p2align 4, 0x90
LBB7_12:
	movq      %rdx, (%rcx)
	addq      $8, %rcx
	addq      $192, %rdx
	decq      %rax
	jne       LBB7_12
LBB7_13:
	cmpl      $-1, _sort_type(%rip)
	je        LBB7_29
	leaq      _failed_strcoll(%rip), %rdi
	call      _setjmp
	testl     %eax, %eax
	je        LBB7_23
	movl      _sort_type(%rip), %r8d
	cmpl      $3, %r8d
	je        LBB7_31
	movq      _cwd_n_used(%rip), %rsi
	testq     %rsi, %rsi
	je        LBB7_27
	movq      _cwd_file(%rip), %rcx
	movq      _sorted_file(%rip), %r9
	cmpq      $4, %rsi
	jb        LBB7_24
	movq      %rsi, %rdi
	andq      $-4, %rdi
	je        LBB7_24
	leaq      16(%r9), %rax
	movq      %rdi, %r10
	movq      %rcx, %rdx
# ----------------------
	.p2align 4, 0x90
LBB7_20:
	leaq      192(%rdx), %rbx
	leaq      384(%rdx), %r11
	leaq      576(%rdx), %r14
	movd      %rdx, %xmm0
	movd      %rbx, %xmm1
	punpcklqdq %xmm1, %xmm0
	movd      %r14, %xmm1
	movd      %r11, %xmm2
	punpcklqdq %xmm1, %xmm2
	movdqu    %xmm0, -16(%rax)
	movdqu    %xmm2, (%rax)
	addq      $768, %rdx
	addq      $32, %rax
	addq      $-4, %r10
	jne       LBB7_20
	cmpq      %rdi, %rsi
	jne       LBB7_25
	movl      $1, %eax
	jmp       LBB7_28
LBB7_23:
	movq      _cwd_n_used(%rip), %rsi
	movl      _sort_type(%rip), %r8d
	xorl      %eax, %eax
	jmp       LBB7_28
LBB7_24:
	xorl      %edi, %edi
LBB7_25:
	leaq      (%rdi,%rdi,2), %rax
	shlq      $6, %rax
	addq      %rax, %rcx
	movl      $1, %eax
# ----------------------
	.p2align 4, 0x90
LBB7_26:
	movq      %rcx, (%r9,%rdi,8)
	incq      %rdi
	addq      $192, %rcx
	cmpq      %rdi, %rsi
	jne       LBB7_26
	jmp       LBB7_28
LBB7_27:
	movl      $1, %eax
	xorl      %esi, %esi
LBB7_28:
	movq      _sorted_file(%rip), %rdi
	xorl      %ecx, %ecx
	cmpl      $4, %r8d
	cmove     _time_type(%rip), %ecx
	addl      %r8d, %ecx
	movzbl    _sort_reverse(%rip), %edx
	movzbl    _directories_first(%rip), %r8d
	shlq      $6, %rcx
	leaq      _sort_functions(%rip), %rbx
	addq      %rcx, %rbx
	shlq      $5, %rax
	addq      %rbx, %rax
	shlq      $4, %rdx
	addq      %rax, %rdx
	movq      (%rdx,%r8,8), %rdx
	call      _mpsort
LBB7_29:
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
LBB7_30:
	call      _xalloc_die
LBB7_31:
	leaq      L___func__.sort_files(%rip), %rdi
	leaq      L_.str.2(%rip), %rsi
	leaq      L_.str.206(%rip), %rcx
	movl      $3600, %edx
	call      ___assert_rtn
# ----------------------
	.p2align 4, 0x90
_extract_dirs_from_files:
	pushq     %rbp
Lcfi36:
Lcfi37:
	movq      %rsp, %rbp
Lcfi38:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Lcfi39:
Lcfi40:
Lcfi41:
Lcfi42:
Lcfi43:
	movl      %esi, -44(%rbp)
	movq      %rdi, -56(%rbp)
	testq     %rdi, %rdi
	je        LBB8_3
	movq      _active_dir_set(%rip), %rax
	testq     %rax, %rax
	je        LBB8_3
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	movq      -56(%rbp), %rdi
	call      _xstrdup
	movq      %rax, 8(%rbx)
	movq      $0, (%rbx)
	movb      $0, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
LBB8_3:
	movq      _cwd_n_used(%rip), %r14
	testq     %r14, %r14
	je        LBB8_32
# ----------------------
	.p2align 4, 0x90
LBB8_4:
	movq      _sorted_file(%rip), %rax
	movq      -8(%rax,%r14,8), %r15
	decq      %r14
	movl      160(%r15), %eax
	cmpl      $9, %eax
	je        LBB8_6
	cmpl      $3, %eax
	jne       LBB8_25
LBB8_6:
	cmpq      $0, -56(%rbp)
	movq      (%r15), %r12
	je        LBB8_11
	movq      %r12, %rdi
	call      _last_component
	cmpb      $46, (%rax)
	jne       LBB8_10
	xorl      %ecx, %ecx
	cmpb      $46, 1(%rax)
	sete      %cl
	movzbl    1(%rax,%rcx), %eax
	testb     %al, %al
	je        LBB8_25
	cmpb      $47, %al
	je        LBB8_25
LBB8_10:
	cmpb      $47, (%r12)
	jne       LBB8_18
LBB8_11:
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	testq     %r13, %r13
	je        LBB8_13
	movq      %r13, %rdi
	call      _xstrdup
	jmp       LBB8_14
LBB8_13:
	xorl      %eax, %eax
LBB8_14:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	je        LBB8_16
	movq      %r12, %rdi
	call      _xstrdup
	jmp       LBB8_17
LBB8_16:
	xorl      %eax, %eax
LBB8_17:
	movq      %rax, (%rbx)
	movl      -44(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	cmpl      $9, 160(%r15)
	je        LBB8_24
	jmp       LBB8_25
LBB8_18:
	xorl      %edx, %edx
	movq      -56(%rbp), %rdi
	movq      %r12, %rsi
	call      _file_name_concat
	movq      %rax, %r12
	movq      8(%r15), %r13
	movl      $32, %edi
	call      _xmalloc
	movq      %rax, %rbx
	testq     %r13, %r13
	movl      $0, %eax
	je        LBB8_20
	movq      %r13, %rdi
	call      _xstrdup
LBB8_20:
	movq      %rax, 8(%rbx)
	testq     %r12, %r12
	je        LBB8_22
	movq      %r12, %rdi
	call      _xstrdup
	jmp       LBB8_23
LBB8_22:
	xorl      %eax, %eax
LBB8_23:
	movq      %rax, (%rbx)
	movl      -44(%rbp), %eax
	movb      %al, 16(%rbx)
	movq      _pending_dirs(%rip), %rax
	movq      %rax, 24(%rbx)
	movq      %rbx, _pending_dirs(%rip)
	movq      %r12, %rdi
	call      _free
	cmpl      $9, 160(%r15)
	jne       LBB8_25
LBB8_24:
	movq      (%r15), %rdi
	call      _free
	movq      8(%r15), %rdi
	call      _free
LBB8_25:
	testq     %r14, %r14
	jne       LBB8_4
	movq      _cwd_n_used(%rip), %r9
	testq     %r9, %r9
	je        LBB8_32
	movq      _sorted_file(%rip), %rcx
	leaq      -1(%r9), %r8
	movq      %r9, %rax
	xorl      %edx, %edx
	xorl      %esi, %esi
	andq      $3, %rax
	je        LBB8_29
# ----------------------
	.p2align 4, 0x90
LBB8_28:
	movq      (%rcx,%rdx,8), %rdi
	movq      %rdi, (%rcx,%rsi,8)
	xorl      %ebx, %ebx
	cmpl      $9, 160(%rdi)
	setne     %bl
	addq      %rbx, %rsi
	incq      %rdx
	cmpq      %rdx, %rax
	jne       LBB8_28
LBB8_29:
	cmpq      $3, %r8
	jb        LBB8_33
# ----------------------
	.p2align 4, 0x90
LBB8_30:
	movq      (%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rsi,8)
	xorl      %edi, %edi
	cmpl      $9, 160(%rax)
	setne     %dil
	addq      %rsi, %rdi
	movq      8(%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rdi,8)
	xorl      %esi, %esi
	cmpl      $9, 160(%rax)
	setne     %sil
	addq      %rdi, %rsi
	movq      16(%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rsi,8)
	xorl      %edi, %edi
	cmpl      $9, 160(%rax)
	setne     %dil
	addq      %rsi, %rdi
	movq      24(%rcx,%rdx,8), %rax
	movq      %rax, (%rcx,%rdi,8)
	xorl      %esi, %esi
	cmpl      $9, 160(%rax)
	setne     %sil
	addq      %rdi, %rsi
	addq      $4, %rdx
	cmpq      %r9, %rdx
	jb        LBB8_30
	jmp       LBB8_33
LBB8_32:
	xorl      %esi, %esi
LBB8_33:
	movq      %rsi, _cwd_n_used(%rip)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_print_current_files:
	pushq     %rbp
Lcfi44:
Lcfi45:
	movq      %rsp, %rbp
Lcfi46:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $3240, %rsp
Lcfi47:
Lcfi48:
Lcfi49:
Lcfi50:
Lcfi51:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movl      _format(%rip), %eax
	cmpq      $4, %rax
	ja        LBB9_209
	leaq      LJTI9_0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB9_2:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB9_209
	leaq      -3200(%rbp), %r15
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	xorl      %ebx, %ebx
	jmp       LBB9_51
LBB9_4:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB9_209
	xorl      %ebx, %ebx
	movq      ___stdoutp@GOTPCREL(%rip), %r14
# ----------------------
	.p2align 4, 0x90
LBB9_6:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %rdi
	xorl      %esi, %esi
	call      _print_file_name_and_frills
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_8
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_9
# ----------------------
	.p2align 4, 0x90
LBB9_8:
	movl      $10, %edi
	call      ___swbuf
LBB9_9:
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB9_6
	jmp       LBB9_209
LBB9_10:
	movl      $1, %edi
	call      _calculate_columns
	movq      %rax, %rcx
	movq      _cwd_n_used(%rip), %rax
	xorl      %edx, %edx
	divq      %rcx
	xorl      %r15d, %r15d
	testq     %rdx, %rdx
	setne     %r15b
	addq      %rax, %r15
	je        LBB9_209
	leaq      (%rcx,%rcx,2), %rax
	movq      _column_info(%rip), %rcx
	leaq      -8(%rcx,%rax,8), %r12
	xorl      %ebx, %ebx
	movq      %r15, -3280(%rbp)
	movq      %r12, -3248(%rbp)
# ----------------------
	.p2align 4, 0x90
LBB9_12:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r13
	movq      %r13, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r14
	movq      (%r12), %rax
	movq      (%rax), %rax
	movq      %rax, -3240(%rbp)
	xorl      %esi, %esi
	movq      %r13, %rdi
	call      _print_file_name_and_frills
	movq      %rbx, -3272(%rbp)
	leaq      (%rbx,%r15), %r12
	cmpq      _cwd_n_used(%rip), %r12
	jae       LBB9_15
	movl      $1, %r13d
	xorl      %ebx, %ebx
# ----------------------
	.p2align 4, 0x90
LBB9_14:
	addq      %rbx, %r14
	addq      -3240(%rbp), %rbx
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _indent
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r12,8), %r15
	movq      %r15, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r14
	movq      -3248(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r13,8), %rax
	movq      %rax, -3240(%rbp)
	movq      %r15, %rdi
	movq      -3280(%rbp), %r15
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
	addq      %r15, %r12
	incq      %r13
	cmpq      _cwd_n_used(%rip), %r12
	jb        LBB9_14
LBB9_15:
	movq      -3248(%rbp), %rbx
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_17
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_18
# ----------------------
	.p2align 4, 0x90
LBB9_17:
	movl      $10, %edi
	call      ___swbuf
LBB9_18:
	movq      %rbx, %r12
	movq      -3272(%rbp), %rbx
	incq      %rbx
	cmpq      %r15, %rbx
	jb        LBB9_12
	jmp       LBB9_209
LBB9_19:
	xorl      %edi, %edi
	call      _calculate_columns
	movq      _column_info(%rip), %r15
	movq      %rax, -3240(%rbp)
	leaq      (%rax,%rax,2), %r13
	movq      _sorted_file(%rip), %rax
	movq      (%rax), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r12
	movq      -8(%r15,%r13,8), %rax
	movq      (%rax), %rbx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _print_file_name_and_frills
	cmpq      $2, _cwd_n_used(%rip)
	jb        LBB9_41
	leaq      -8(%r15,%r13,8), %rax
	movq      %rax, -3248(%rbp)
	xorl      %r15d, %r15d
	movl      $1, %r14d
# ----------------------
	.p2align 4, 0x90
LBB9_21:
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -3240(%rbp)
	movq      %rdx, %r13
	testq     %r13, %r13
	je        LBB9_23
	addq      %r15, %r12
	addq      %rbx, %r15
	movq      %r12, %rdi
	movq      %r15, %rsi
	call      _indent
	jmp       LBB9_27
# ----------------------
	.p2align 4, 0x90
LBB9_23:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_25
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_26
LBB9_25:
	movl      $10, %edi
	call      ___swbuf
LBB9_26:
	xorl      %r15d, %r15d
LBB9_27:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r14,8), %rbx
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _print_file_name_and_frills
	movq      %rbx, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r12
	movq      -3248(%rbp), %rax
	movq      (%rax), %rax
	movq      (%rax,%r13,8), %rbx
	incq      %r14
	cmpq      _cwd_n_used(%rip), %r14
	jb        LBB9_21
	jmp       LBB9_41
LBB9_28:
	cmpq      $0, _cwd_n_used(%rip)
	je        LBB9_41
	xorl      %r13d, %r13d
	xorl      %ebx, %ebx
	jmp       LBB9_32
LBB9_30:
	movq      %rdi, -3248(%rbp)
	movl      $44, %edi
	movq      %rdx, -3240(%rbp)
	call      ___swbuf
	movq      -3248(%rbp), %rdi
	movq      -3240(%rbp), %rdx
	jmp       LBB9_36
LBB9_31:
	movl      %r12d, %edi
	call      ___swbuf
	jmp       LBB9_40
# ----------------------
	.p2align 4, 0x90
LBB9_32:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r13,8), %r14
	movq      %r14, %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r15
	testq     %r13, %r13
	je        LBB9_40
	leaq      2(%r15,%rbx), %rdx
	addq      $2, %rbx
	movq      _line_length(%rip), %rdi
	cmpq      %rdi, %rdx
	movl      $0, %eax
	cmovae    %rax, %rbx
	movl      $10, %r12d
	movl      $32, %eax
	cmovb     %eax, %r12d
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB9_35
	cmpl      40(%rsi), %eax
	jle       LBB9_30
LBB9_35:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $44, (%rax)
LBB9_36:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB9_39
	cmpq      %rdi, %rdx
	setae     %cl
	cmpl      40(%rsi), %eax
	jle       LBB9_31
	testb     %cl, %cl
	jne       LBB9_31
LBB9_39:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %r12b, (%rax)
LBB9_40:
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      _print_file_name_and_frills
	addq      %r15, %rbx
	incq      %r13
	cmpq      _cwd_n_used(%rip), %r13
	jb        LBB9_32
LBB9_41:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_43
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_209
LBB9_43:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB9_212
	movl      $10, %edi
	addq      $3240, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       ___swbuf
LBB9_45:
	decl      %ecx
	cmpl      $7, %ecx
	jae       LBB9_205
	shlb      $3, %cl
	movq      $17240342323527804, %rax
	shrq      %cl, %rax
	testb     %al, %al
	jne       LBB9_197
	jmp       LBB9_205
LBB9_47:
	movb      $64, %al
	jmp       LBB9_187
LBB9_48:
	movb      $61, %al
	jmp       LBB9_187
LBB9_49:
	movb      $64, %al
	jmp       LBB9_197
LBB9_50:
	movb      $61, %al
	jmp       LBB9_197
# ----------------------
	.p2align 4, 0x90
LBB9_51:
	cmpb      $0, _print_with_color(%rip)
	je        LBB9_73
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        LBB9_73
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	je        LBB9_56
	cmpq      $1, %rax
	jne       LBB9_57
	cmpb      $48, (%rdi)
	jne       LBB9_57
	jmp       LBB9_73
LBB9_56:
	movl      $2, %edx
	leaq      L_.str.37(%rip), %rsi
	call      _strncmp
	testl     %eax, %eax
	je        LBB9_73
LBB9_57:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB9_62
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB9_60
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB9_61
LBB9_60:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB9_61:
	call      _put_indicator
LBB9_62:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB9_67
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB9_65
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB9_66
LBB9_65:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB9_66:
	call      _put_indicator
LBB9_67:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB9_72
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB9_70
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB9_71
LBB9_70:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB9_71:
	call      _put_indicator
LBB9_72:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r13), %rcx
	movl      $1, %edx
	call      _fwrite
LBB9_73:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%rbx,8), %r12
	cmpb      $0, 176(%r12)
	je        LBB9_75
	leaq      16(%r12), %rdi
	leaq      -1068(%rbp), %rsi
	call      _filemodestring
	cmpb      $0, _any_has_acl(%rip)
	jne       LBB9_76
	jmp       LBB9_79
# ----------------------
	.p2align 4, 0x90
LBB9_75:
	movl      160(%r12), %eax
	leaq      _filetype_letter(%rip), %rcx
	movb      (%rax,%rcx), %al
	movb      %al, -1068(%rbp)
	leaq      -1067(%rbp), %rax
	movq      $4557430888798830399, %rcx
	movq      %rcx, (%rax)
	movw      $16191, 8(%rax)
	movb      $0, -1057(%rbp)
	cmpb      $0, _any_has_acl(%rip)
	je        LBB9_79
LBB9_76:
	movl      180(%r12), %eax
	cmpl      $2, %eax
	je        LBB9_80
	cmpl      $1, %eax
	jne       LBB9_81
	movb      $46, -1058(%rbp)
	jmp       LBB9_81
# ----------------------
	.p2align 4, 0x90
LBB9_79:
	movb      $0, -1058(%rbp)
	jmp       LBB9_81
# ----------------------
	.p2align 4, 0x90
LBB9_80:
	movb      $43, -1058(%rbp)
LBB9_81:
	movl      _time_type(%rip), %eax
	testl     %eax, %eax
	movq      %rbx, -3240(%rbp)
	je        LBB9_85
	cmpl      $2, %eax
	je        LBB9_86
	cmpl      $1, %eax
	jne       LBB9_211
	movups    80(%r12), %xmm0
	jmp       LBB9_87
# ----------------------
	.p2align 4, 0x90
LBB9_85:
	movups    64(%r12), %xmm0
	jmp       LBB9_87
# ----------------------
	.p2align 4, 0x90
LBB9_86:
	movups    48(%r12), %xmm0
LBB9_87:
	movaps    %xmm0, -3264(%rbp)
	cmpb      $1, _print_inode(%rip)
	movq      %r15, %r14
	jne       LBB9_92
	movl      _inode_number_width(%rip), %ebx
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %r9
	je        LBB9_91
	movq      24(%r12), %rdi
	testq     %rdi, %rdi
	leaq      L_.str.209(%rip), %r9
	je        LBB9_91
	leaq      -1056(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %r9
LBB9_91:
	xorl      %esi, %esi
	movl      $2123, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str.208(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
	movq      %r15, %rdi
	call      _strlen
	leaq      -3200(%rbp,%rax), %r14
LBB9_92:
	cmpb      $1, _print_block_size(%rip)
	jne       LBB9_100
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %rbx
	je        LBB9_95
	movq      120(%r12), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	movl      $512, %ecx
	leaq      -1056(%rbp), %rsi
	call      _human_readable
	movq      %rax, %rbx
LBB9_95:
	movl      _block_size_width(%rip), %r15d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
	movl      %eax, %r13d
	cmpl      %r13d, %r15d
	jle       LBB9_97
	movl      %r15d, %eax
	notl      %eax
	addl      %r13d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15), %edx
	subl      %r13d, %edx
	addl      %eax, %edx
	incq      %rdx
	movl      $32, %esi
	movq      %r14, %rdi
	call      _memset
	leal      -1(%r13), %eax
	subl      %r15d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15,%rax), %eax
	subl      %r13d, %eax
	leaq      1(%r14,%rax), %r14
LBB9_97:
	leaq      -3200(%rbp), %r15
# ----------------------
	.p2align 4, 0x90
LBB9_98:
	movzbl    (%rbx), %eax
	incq      %rbx
	movb      %al, (%r14)
	incq      %r14
	testb     %al, %al
	jne       LBB9_98
	movb      $32, -1(%r14)
LBB9_100:
	movl      _nlink_width(%rip), %r13d
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %rbx
	je        LBB9_102
	movzwl    22(%r12), %edi
	leaq      -1056(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rbx
LBB9_102:
	subq      $8, %rsp
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r14, %rdi
	leaq      L_.str.211(%rip), %rcx
	leaq      -1068(%rbp), %r8
	movl      %r13d, %r9d
	pushq     %rbx
	call      ___sprintf_chk
	addq      $16, %rsp
	movq      %r14, %rdi
	call      _strlen
	movq      %rax, %rbx
	cmpb      $1, _dired(%rip)
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	jne       LBB9_104
	movq      (%r13), %rsi
	leaq      L_.str.194(%rip), %rdi
	call      _fputs
	addq      $2, _dired_pos(%rip)
LBB9_104:
	addq      %rbx, %r14
	cmpb      $1, _print_owner(%rip)
	jne       LBB9_108
	cmpb      $1, _print_group(%rip)
	jne       LBB9_108
	movb      _print_author(%rip), %al
	testb     %al, %al
	jne       LBB9_108
	cmpb      $1, _print_scontext(%rip)
	jne       LBB9_128
# ----------------------
	.p2align 4, 0x90
LBB9_108:
	movq      (%r13), %rsi
	movq      %r15, %rdi
	call      _fputs
	subq      %r15, %r14
	addq      %r14, _dired_pos(%rip)
	movb      _print_owner(%rip), %al
	testb     %al, %al
	jne       LBB9_114
	movl      32(%r12), %ebx
	movl      _owner_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %rdi
	je        LBB9_113
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	je        LBB9_112
	xorl      %edi, %edi
	jmp       LBB9_113
LBB9_112:
	movl      %ebx, %edi
	call      _getuser
	movq      %rax, %rdi
LBB9_113:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
LBB9_114:
	movb      _print_group(%rip), %al
	testb     %al, %al
	jne       LBB9_120
	movl      36(%r12), %ebx
	movl      _group_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %rdi
	je        LBB9_119
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	je        LBB9_118
	xorl      %edi, %edi
	jmp       LBB9_119
LBB9_118:
	movl      %ebx, %edi
	call      _getgroup
	movq      %rax, %rdi
LBB9_119:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
LBB9_120:
	cmpb      $1, _print_author(%rip)
	jne       LBB9_126
	movl      32(%r12), %ebx
	movl      _author_width(%rip), %r14d
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %rdi
	je        LBB9_125
	movb      _numeric_ids(%rip), %al
	testb     %al, %al
	je        LBB9_124
	xorl      %edi, %edi
	jmp       LBB9_125
LBB9_124:
	movl      %ebx, %edi
	call      _getuser
	movq      %rax, %rdi
LBB9_125:
	movq      %rbx, %rsi
	movl      %r14d, %edx
	call      _format_user_or_group
LBB9_126:
	cmpb      $1, _print_scontext(%rip)
	movq      %r15, %r14
	jne       LBB9_128
	movq      168(%r12), %rdi
	movl      _scontext_width(%rip), %edx
	xorl      %esi, %esi
	call      _format_user_or_group
	movq      %r15, %r14
LBB9_128:
	cmpb      $0, 176(%r12)
	je        LBB9_131
	movzwl    20(%r12), %eax
	orl       $16384, %eax
	andl      $61440, %eax
	cmpl      $24576, %eax
	jne       LBB9_132
	movl      _file_size_width(%rip), %ebx
	movl      _major_device_number_width(%rip), %eax
	addl      $-2, %ebx
	subl      %eax, %ebx
	subl      _minor_device_number_width(%rip), %ebx
	movl      $0, %ecx
	cmovs     %ecx, %ebx
	addl      %eax, %ebx
	movzbl    43(%r12), %edi
	leaq      -1056(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %r13
	movl      _minor_device_number_width(%rip), %r15d
	movl      40(%r12), %edi
	andl      $16777215, %edi
	leaq      -3232(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %r10
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r14, %rdi
	leaq      L_.str.212(%rip), %rcx
	movl      %ebx, %r8d
	movq      %r13, %r9
	pushq     %r10
	pushq     %r15
	leaq      -3200(%rbp), %r15
	call      ___sprintf_chk
	addq      $16, %rsp
	movslq    _file_size_width(%rip), %rax
	leaq      1(%r14,%rax), %r14
	jmp       LBB9_138
# ----------------------
	.p2align 4, 0x90
LBB9_131:
	leaq      L_.str.209(%rip), %rbx
	jmp       LBB9_133
# ----------------------
	.p2align 4, 0x90
LBB9_132:
	movq      112(%r12), %rdi
	movl      _file_human_output_opts(%rip), %edx
	movq      _file_output_block_size(%rip), %r8
	movl      $1, %ecx
	leaq      -1056(%rbp), %rsi
	call      _human_readable
	movq      %rax, %rbx
LBB9_133:
	movl      _file_size_width(%rip), %r15d
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _gnu_mbswidth
	movl      %eax, %r13d
	cmpl      %r13d, %r15d
	jle       LBB9_135
	movl      %r15d, %eax
	notl      %eax
	addl      %r13d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15), %edx
	subl      %r13d, %edx
	addl      %eax, %edx
	incq      %rdx
	movl      $32, %esi
	movq      %r14, %rdi
	call      _memset
	leal      -1(%r13), %eax
	subl      %r15d, %eax
	cmpl      $-3, %eax
	movl      $-2, %ecx
	cmovle    %ecx, %eax
	leal      1(%r15,%rax), %eax
	subl      %r13d, %eax
	leaq      1(%r14,%rax), %r14
LBB9_135:
	leaq      -3200(%rbp), %r15
# ----------------------
	.p2align 4, 0x90
LBB9_136:
	movzbl    (%rbx), %eax
	incq      %rbx
	movb      %al, (%r14)
	incq      %r14
	testb     %al, %al
	jne       LBB9_136
	movb      $32, -1(%r14)
LBB9_138:
	leaq      -3264(%rbp), %rdi
	call      _localtime
	movq      %rax, %r13
	movb      $1, (%r14)
	testq     %r13, %r13
	je        LBB9_156
	movb      176(%r12), %al
	testb     %al, %al
	je        LBB9_156
	movq      _current_time(%rip), %rdx
	movq      -3264(%rbp), %rsi
	cmpq      %rsi, %rdx
	jge       LBB9_142
LBB9_141:
	leaq      _current_time(%rip), %rdi
	call      _gettime
	movq      _current_time(%rip), %rdx
	movq      _current_time+8(%rip), %rax
	movq      -3264(%rbp), %rsi
	movq      -3256(%rbp), %rcx
	jmp       LBB9_144
# ----------------------
	.p2align 4, 0x90
LBB9_142:
	movq      _current_time+8(%rip), %rax
	movq      -3256(%rbp), %rcx
	jg        LBB9_144
	cmpl      %ecx, %eax
	js        LBB9_141
# ----------------------
	.p2align 4, 0x90
LBB9_144:
	leaq      -15778476(%rdx), %rdi
	cmpq      %rsi, %rdi
	jge       LBB9_149
LBB9_145:
	movl      $-1, %edi
	cmpq      %rdx, %rsi
	jl        LBB9_148
	movl      $1, %edi
	jg        LBB9_148
	movl      %ecx, %edi
	subl      %eax, %edi
LBB9_148:
	shrl      $31, %edi
	jmp       LBB9_153
# ----------------------
	.p2align 4, 0x90
LBB9_149:
	cmpq      %rsi, %rdi
	jg        LBB9_152
	cmpl      %ecx, %eax
	js        LBB9_145
LBB9_152:
	xorl      %edi, %edi
LBB9_153:
	movzbl    %dil, %eax
	leaq      _long_time_format(%rip), %rdx
	movq      (%rdx,%rax,8), %rsi
	movq      %r14, %rdi
	movq      %r13, %rdx
	call      _align_nstrftime
	testq     %rax, %rax
	je        LBB9_155
LBB9_154:
	leaq      1(%r14,%rax), %rbx
	movw      $32, (%r14,%rax)
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	jmp       LBB9_165
LBB9_155:
	cmpb      $0, (%r14)
	je        LBB9_185
# ----------------------
	.p2align 4, 0x90
LBB9_156:
	movl      _long_time_expected_width.width(%rip), %ebx
	testl     %ebx, %ebx
	movq      ___stdoutp@GOTPCREL(%rip), %r13
	js        LBB9_157
LBB9_162:
	cmpb      $0, 176(%r12)
	leaq      L_.str.209(%rip), %r9
	je        LBB9_164
	movq      -3264(%rbp), %rdi
	leaq      -1056(%rbp), %rsi
	call      _imaxtostr
	movq      %rax, %r9
LBB9_164:
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	movq      %r14, %rdi
	leaq      L_.str.208(%rip), %rcx
	movl      %ebx, %r8d
	call      ___sprintf_chk
	movq      %r14, %rdi
	call      _strlen
	movq      %rax, %rbx
	addq      %r14, %rbx
LBB9_165:
	movq      (%r13), %rsi
	movq      %r15, %rdi
	call      _fputs
	subq      %r15, %rbx
	addq      %rbx, _dired_pos(%rip)
	xorl      %esi, %esi
	movq      %r12, %rdi
	leaq      _dired_obstack(%rip), %rdx
	movq      %rbx, %rcx
	call      _print_name_with_quoting
	movq      %rax, %r14
	movl      160(%r12), %ecx
	cmpl      $6, %ecx
	jne       LBB9_172
	cmpq      $0, 8(%r12)
	je        LBB9_205
	movq      (%r13), %rsi
	leaq      L_.str.213(%rip), %rdi
	call      _fputs
	addq      $4, _dired_pos(%rip)
	leaq      4(%rbx,%r14), %rcx
	movl      $1, %esi
	xorl      %edx, %edx
	movq      %r12, %rdi
	call      _print_name_with_quoting
	movl      _indicator_style(%rip), %eax
	testl     %eax, %eax
	je        LBB9_205
	movzwl    164(%r12), %ecx
	movl      %ecx, %edx
	andl      $61440, %edx
	cmpl      $16384, %edx
	je        LBB9_186
	movzwl    %dx, %edx
	cmpl      $32768, %edx
	jne       LBB9_190
	cmpl      $3, %eax
	jne       LBB9_205
	andl      $73, %ecx
	movb      $42, %al
	testw     %cx, %cx
	jne       LBB9_187
	jmp       LBB9_205
# ----------------------
	.p2align 4, 0x90
LBB9_172:
	movl      _indicator_style(%rip), %esi
	testl     %esi, %esi
	je        LBB9_205
	movb      176(%r12), %bl
	testb     %bl, %bl
	movw      20(%r12), %dx
	je        LBB9_176
	movl      %edx, %edi
	andl      $61440, %edi
	cmpl      $32768, %edi
	je        LBB9_195
	movb      $47, %al
	movzwl    %di, %edi
	cmpl      $16384, %edi
	je        LBB9_197
	jmp       LBB9_179
# ----------------------
	.p2align 4, 0x90
LBB9_157:
	movq      $0, -3232(%rbp)
	leaq      -3232(%rbp), %rdi
	call      _localtime
	testq     %rax, %rax
	je        LBB9_160
	movq      _long_time_format(%rip), %rsi
	xorl      %ecx, %ecx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rdx
	call      _align_nstrftime
	testq     %rax, %rax
	je        LBB9_160
	xorl      %edx, %edx
	leaq      -1056(%rbp), %rdi
	movq      %rax, %rsi
	call      _mbsnwidth
	movl      %eax, %ebx
	movl      %ebx, _long_time_expected_width.width(%rip)
	testl     %ebx, %ebx
	jns       LBB9_162
	jmp       LBB9_161
LBB9_160:
	movl      _long_time_expected_width.width(%rip), %ebx
	testl     %ebx, %ebx
	jns       LBB9_162
LBB9_161:
	movl      $0, _long_time_expected_width.width(%rip)
	xorl      %ebx, %ebx
	jmp       LBB9_162
LBB9_176:
	movb      $47, %al
	cmpl      $3, %ecx
	je        LBB9_197
	cmpl      $5, %ecx
	je        LBB9_205
	cmpl      $9, %ecx
	je        LBB9_197
LBB9_179:
	cmpl      $1, %esi
	je        LBB9_205
	testb     %bl, %bl
	je        LBB9_45
	andl      $61440, %edx
	cmpl      $40960, %edx
	je        LBB9_49
	movzwl    %dx, %eax
	cmpl      $49152, %eax
	je        LBB9_50
	cmpl      $4096, %eax
	jne       LBB9_205
	movb      $124, %al
	jmp       LBB9_197
LBB9_185:
	xorl      %eax, %eax
	jmp       LBB9_154
LBB9_186:
	movb      $47, %al
LBB9_187:
	movq      (%r13), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        LBB9_189
	cmpl      40(%rsi), %ecx
	jle       LBB9_202
LBB9_189:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
	jmp       LBB9_204
LBB9_190:
	cmpl      $1, %eax
	je        LBB9_205
	cmpl      $40960, %edx
	je        LBB9_47
	cmpl      $49152, %edx
	je        LBB9_48
	cmpl      $4096, %edx
	jne       LBB9_205
	movb      $124, %al
	jmp       LBB9_187
LBB9_195:
	cmpl      $3, %esi
	jne       LBB9_205
	andl      $73, %edx
	movb      $42, %al
	testw     %dx, %dx
	je        LBB9_205
LBB9_197:
	movq      (%r13), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        LBB9_200
	cmpb      $10, %al
	je        LBB9_201
	cmpl      40(%rsi), %ecx
	jle       LBB9_201
LBB9_200:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
	jmp       LBB9_204
LBB9_201:
	movsbl    %al, %edi
	jmp       LBB9_203
LBB9_202:
	movzbl    %al, %edi
LBB9_203:
	call      ___swbuf
# ----------------------
	.p2align 4, 0x90
LBB9_204:
	incq      _dired_pos(%rip)
LBB9_205:
	movq      (%r13), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_207
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_208
# ----------------------
	.p2align 4, 0x90
LBB9_207:
	movl      $10, %edi
	call      ___swbuf
LBB9_208:
	movq      -3240(%rbp), %rbx
	incq      _dired_pos(%rip)
	incq      %rbx
	cmpq      _cwd_n_used(%rip), %rbx
	jb        LBB9_51
LBB9_209:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB9_212
	addq      $3240, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB9_211:
	call      _abort
LBB9_212:
	call      ___stack_chk_fail
# ----------------------
	.p2align 2, 0x90
LJTI9_0:
	.long	L9_0_set_2
	.long	L9_0_set_4
	.long	L9_0_set_10
	.long	L9_0_set_19
	.long	L9_0_set_28
# ----------------------
	.p2align 4, 0x90
_dired_dump_obstack:
	pushq     %rbp
Lcfi52:
Lcfi53:
	movq      %rsp, %rbp
Lcfi54:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
Lcfi55:
Lcfi56:
Lcfi57:
Lcfi58:
	movq      16(%rsi), %rbx
	movq      24(%rsi), %rcx
	movq      %rcx, %r15
	subq      %rbx, %r15
	shrq      $3, %r15
	je        LBB10_9
	cmpq      %rbx, %rcx
	jne       LBB10_3
	orb       $2, 80(%rsi)
LBB10_3:
	movq      48(%rsi), %rax
	addq      %rax, %rcx
	notq      %rax
	andq      %rcx, %rax
	movq      %rax, 24(%rsi)
	movq      8(%rsi), %r9
	movq      32(%rsi), %r8
	movq      %rax, %rcx
	subq      %r9, %rcx
	movq      %r8, %rdx
	subq      %r9, %rdx
	cmpq      %rdx, %rcx
	jbe       LBB10_5
	movq      %r8, 24(%rsi)
	movq      %r8, %rax
LBB10_5:
	movq      %rax, 16(%rsi)
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	call      _fputs
	leaq      L_.str.53(%rip), %r14
# ----------------------
	.p2align 4, 0x90
LBB10_6:
	movq      (%rbx), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _printf
	addq      $8, %rbx
	decq      %r15
	jne       LBB10_6
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB10_10
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
LBB10_9:
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB10_10:
	movl      $10, %edi
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       ___swbuf
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_usage
_usage:
	pushq     %rbp
Lcfi59:
Lcfi60:
	movq      %rsp, %rbp
Lcfi61:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi62:
Lcfi63:
Lcfi64:
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       LBB11_1
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str.9(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str.10(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.216(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.11(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.12(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.13(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.14(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.15(%rip), %rdi
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
	movq      (%rbx), %rsi
	leaq      L_.str.22(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.23(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.24(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.25(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.26(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.27(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.28(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.29(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.30(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.217(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.31(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str.32(%rip), %rdi
	call      _fputs
	movq      _ls_mode@GOTPCREL(%rip), %rax
	movl      (%rax), %eax
	cmpl      $2, %eax
	leaq      L_.str.34(%rip), %rcx
	leaq      L_.str.35(%rip), %rdx
	cmove     %rcx, %rdx
	cmpl      $1, %eax
	leaq      L_.str.33(%rip), %r15
	cmovne    %rdx, %r15
	leaq      L_.str.218(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
	testl     %eax, %eax
	jne       LBB11_5
	leaq      _emit_ancillary_info.infomap(%rip), %rax
	jmp       LBB11_7
LBB11_1:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      L_.str.215(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
	movl      %r14d, %edi
	call      _exit
LBB11_5:
	leaq      L_.str.220(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
	testl     %eax, %eax
	jne       LBB11_11
	leaq      _emit_ancillary_info.infomap+16(%rip), %rax
	jmp       LBB11_7
LBB11_11:
	leaq      L_.str.222(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
	testl     %eax, %eax
	jne       LBB11_13
	leaq      _emit_ancillary_info.infomap+32(%rip), %rax
	jmp       LBB11_7
LBB11_13:
	leaq      L_.str.224(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
	testl     %eax, %eax
	jne       LBB11_15
	leaq      _emit_ancillary_info.infomap+48(%rip), %rax
	jmp       LBB11_7
LBB11_15:
	leaq      L_.str.225(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
	testl     %eax, %eax
	jne       LBB11_17
	leaq      _emit_ancillary_info.infomap+64(%rip), %rax
	jmp       LBB11_7
LBB11_17:
	leaq      L_.str.226(%rip), %rsi
	movq      %r15, %rdi
	call      _strcmp
	testl     %eax, %eax
	leaq      _emit_ancillary_info.infomap+80(%rip), %rcx
	leaq      _emit_ancillary_info.infomap+96(%rip), %rax
	cmove     %rcx, %rax
LBB11_7:
	movq      8(%rax), %rbx
	testq     %rbx, %rbx
	cmove     %r15, %rbx
	leaq      L_.str.227(%rip), %rdi
	leaq      L_.str.70(%rip), %rsi
	leaq      L_.str.228(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
	testq     %rax, %rax
	je        LBB11_10
	leaq      L_.str.229(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
	testl     %eax, %eax
	je        LBB11_10
	leaq      L_.str.230(%rip), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _printf
LBB11_10:
	leaq      L_.str.231(%rip), %rdi
	leaq      L_.str.228(%rip), %rsi
	xorl      %eax, %eax
	movq      %r15, %rdx
	call      _printf
	cmpq      %r15, %rbx
	leaq      L_.str.233(%rip), %rax
	leaq      L_.str(%rip), %rdx
	cmove     %rax, %rdx
	leaq      L_.str.232(%rip), %rdi
	xorl      %eax, %eax
	movq      %rbx, %rsi
	call      _printf
	movl      %r14d, %edi
	call      _exit
# ----------------------
	.p2align 4, 0x90
_put_indicator:
	pushq     %rbp
Lcfi65:
Lcfi66:
	movq      %rsp, %rbp
Lcfi67:
	pushq     %rbx
	pushq     %rax
Lcfi68:
	movq      %rdi, %rbx
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB12_2
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB12_2:
	movq      (%rbx), %rsi
	movq      8(%rbx), %rdi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movl      $1, %edx
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	jmp       _fwrite
# ----------------------
	.p2align 4, 0x90
_prep_non_filename_text:
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB13_2
	leaq      _color_indicator+32(%rip), %rdi
	jmp       _put_indicator
LBB13_2:
	pushq     %rbp
Lcfi69:
Lcfi70:
	movq      %rsp, %rbp
Lcfi71:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
	popq      %rbp
	jmp       _put_indicator
# ----------------------
	.p2align 4, 0x90
_get_funky_string:
	pushq     %rbp
Lcfi72:
Lcfi73:
	movq      %rsp, %rbp
Lcfi74:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Lcfi75:
Lcfi76:
Lcfi77:
Lcfi78:
Lcfi79:
	movq      %rcx, -64(%rbp)
	movq      %rsi, -56(%rbp)
	movq      (%rsi), %r8
	movq      %rdi, -48(%rbp)
	movq      (%rdi), %r9
	xorl      %eax, %eax
	leaq      LJTI14_0(%rip), %r11
	leaq      LJTI14_2(%rip), %r14
	leaq      LJTI14_1(%rip), %rbx
	movl      $1023, %r15d
	xorl      %r10d, %r10d
	xorl      %r13d, %r13d
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
# ----------------------
	.p2align 4, 0x90
LBB14_11:
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
	cmpl      $4, %eax
	ja        LBB14_41
LBB14_2:
	movl      %eax, %eax
	movslq    (%r11,%rax,4), %rax
	addq      %r11, %rax
	jmp       *%rax
LBB14_3:
	movzbl    (%r8), %ecx
	movsbl    %cl, %esi
	movb      $1, %al
	leal      -58(%rsi), %edi
	cmpl      $36, %edi
	ja        LBB14_4
	movslq    (%r14,%rdi,4), %rsi
	addq      %r14, %rsi
	jmp       *%rsi
LBB14_8:
	testb     %dl, %dl
	je        LBB14_9
	jmp       LBB14_43
# ----------------------
	.p2align 4, 0x90
LBB14_12:
	movsbl    (%r8), %r12d
	cmpl      $120, %r12d
	ja        LBB14_23
	movb      $7, %cl
	movl      $3, %eax
	xorl      %r13d, %r13d
	movslq    (%rbx,%r12,4), %rsi
	addq      %rbx, %rsi
	jmp       *%rsi
LBB14_37:
	addb      $-48, %r12b
	movl      $2, %eax
	movb      %r12b, %r13b
LBB14_38:
	incq      %r8
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
# ----------------------
	.p2align 4, 0x90
LBB14_25:
	movzbl    (%r8), %eax
	movl      %eax, %ecx
	andb      $-8, %cl
	cmpb      $48, %cl
	jne       LBB14_26
	shlb      $3, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-48, %r13b
	movl      $2, %eax
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
# ----------------------
	.p2align 4, 0x90
LBB14_28:
	movsbl    (%r8), %eax
	leal      -48(%rax), %ecx
	cmpl      $54, %ecx
	ja        LBB14_26
	btq       %rcx, %r15
	jb        LBB14_44
	movl      $8257536, %esi
	btq       %rcx, %rsi
	jb        LBB14_33
	movq      $35465847065542656, %rsi
	btq       %rcx, %rsi
	jae       LBB14_26
	shlb      $4, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-87, %r13b
	movl      $3, %eax
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
# ----------------------
	.p2align 4, 0x90
LBB14_34:
	movzbl    (%r8), %ecx
	cmpb      $64, %cl
	jl        LBB14_39
	cmpb      $127, %cl
	je        LBB14_39
	incq      %r8
	andb      $31, %cl
	jmp       LBB14_10
LBB14_26:
	movb      %r13b, (%r9)
	jmp       LBB14_11
LBB14_39:
	xorl      %eax, %eax
	cmpb      $63, %cl
	jne       LBB14_43
	movb      $127, (%r9)
	incq      %r9
	incq      %r10
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
LBB14_44:
	shlb      $4, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-48, %r13b
	movl      $3, %eax
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
LBB14_33:
	shlb      $4, %r13b
	incq      %r8
	addb      %al, %r13b
	addb      $-55, %r13b
	movl      $3, %eax
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
LBB14_6:
	incq      %r8
	movl      $1, %eax
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
LBB14_7:
	incq      %r8
	movl      $4, %eax
	cmpl      $4, %eax
	jbe       LBB14_2
	jmp       LBB14_41
LBB14_4:
	testl     %esi, %esi
	je        LBB14_43
LBB14_9:
	incq      %r8
LBB14_10:
	movb      %cl, (%r9)
	jmp       LBB14_11
LBB14_23:
	movl      %r12d, %ecx
	jmp       LBB14_24
LBB14_21:
	movb      $127, %cl
	jmp       LBB14_24
LBB14_22:
	movb      $32, %cl
	jmp       LBB14_24
LBB14_14:
	movb      $8, %cl
	jmp       LBB14_24
LBB14_15:
	movb      $27, %cl
	jmp       LBB14_24
LBB14_16:
	movb      $12, %cl
	jmp       LBB14_24
LBB14_17:
	movb      $10, %cl
	jmp       LBB14_24
LBB14_18:
	movb      $13, %cl
	jmp       LBB14_24
LBB14_19:
	movb      $9, %cl
	jmp       LBB14_24
LBB14_20:
	movb      $11, %cl
LBB14_24:
	movb      %cl, (%r9)
	incq      %r9
	incq      %r10
	xorl      %eax, %eax
	movb      %cl, %r13b
	incq      %r8
	cmpl      $4, %eax
	jbe       LBB14_2
LBB14_41:
	call      _abort
LBB14_42:
	incq      %r8
	xorl      %eax, %eax
LBB14_43:
	movq      -48(%rbp), %rcx
	movq      %r9, (%rcx)
	movq      -56(%rbp), %rcx
	movq      %r8, (%rcx)
	movq      -64(%rbp), %rcx
	movq      %r10, (%rcx)
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.p2align 2, 0x90
LJTI14_0:
	.long	L14_0_set_3
	.long	L14_0_set_12
	.long	L14_0_set_25
	.long	L14_0_set_28
	.long	L14_0_set_34
LJTI14_1:
	.long	L14_1_set_42
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_37
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_21
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_38
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_22
	.long	L14_1_set_23
	.long	L14_1_set_24
	.long	L14_1_set_14
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_15
	.long	L14_1_set_16
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_17
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_23
	.long	L14_1_set_18
	.long	L14_1_set_23
	.long	L14_1_set_19
	.long	L14_1_set_23
	.long	L14_1_set_20
	.long	L14_1_set_23
	.long	L14_1_set_38
LJTI14_2:
	.long	L14_2_set_43
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_8
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_9
	.long	L14_2_set_6
	.long	L14_2_set_9
	.long	L14_2_set_7
# ----------------------
	.p2align 4, 0x90
_quote_name:
	pushq     %rbp
Lcfi80:
Lcfi81:
	movq      %rsp, %rbp
Lcfi82:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $1208, %rsp
Lcfi83:
Lcfi84:
Lcfi85:
Lcfi86:
Lcfi87:
	movq      %rcx, -1224(%rbp)
	movq      %rdx, %r14
	movq      %rsi, %r13
	movq      %rdi, -1208(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	leaq      -1072(%rbp), %rbx
	movl      $1024, %esi
	movq      $-1, %rcx
	movq      %rbx, %rdi
	movq      %r13, %rdx
	movq      %r14, %r8
	call      _quotearg_buffer
	movq      %rax, %r12
	cmpq      $1024, %r12
	jb        LBB15_2
	leaq      1(%r12), %rsi
	movq      %rsp, %rbx
	leaq      16(%r12), %rax
	andq      $-16, %rax
	subq      %rax, %rbx
	movq      %rbx, %rsp
	movq      $-1, %rcx
	movq      %rbx, %rdi
	movq      %r13, %rdx
	movq      %r14, %r8
	call      _quotearg_buffer
LBB15_2:
	cmpb      $1, _qmark_funny_chars(%rip)
	movq      %rbx, -1216(%rbp)
	jne       LBB15_54
	call      ____mb_cur_max
	leaq      (%rbx,%r12), %r14
	cmpl      $1, %eax
	movq      -1224(%rbp), %r13
	jle       LBB15_4
	xorl      %r15d, %r15d
	testq     %r12, %r12
	jle       LBB15_7
	xorps     %xmm0, %xmm0
	leaq      -1200(%rbp), %rbx
	leaq      LJTI15_0(%rip), %rdx
	movq      -1216(%rbp), %r13
	movq      %r13, %r12
# ----------------------
	.p2align 4, 0x90
LBB15_9:
	movsbl    (%r13), %eax
	leal      -32(%rax), %ecx
	cmpl      $94, %ecx
	ja        LBB15_12
	movslq    (%rdx,%rcx,4), %rcx
	addq      %rdx, %rcx
	jmp       *%rcx
LBB15_11:
	incq      %r13
	movb      %al, (%r12)
	incq      %r12
	incq      %r15
	cmpq      %r14, %r13
	jb        LBB15_9
	jmp       LBB15_46
LBB15_12:
	movaps    %xmm0, -1088(%rbp)
	movaps    %xmm0, -1104(%rbp)
	movaps    %xmm0, -1120(%rbp)
	movaps    %xmm0, -1136(%rbp)
	movaps    %xmm0, -1152(%rbp)
	movaps    %xmm0, -1168(%rbp)
	movaps    %xmm0, -1184(%rbp)
	movaps    %xmm0, -1200(%rbp)
	movq      %r14, -1232(%rbp)
	jmp       LBB15_13
LBB15_25:
	leaq      -32(%r10), %rcx
	movl      %ecx, %edx
	shrl      $5, %edx
	incl      %edx
	andq      $3, %rdx
	je        LBB15_26
	negq      %rdx
	xorl      %edi, %edi
# ----------------------
	.p2align 4, 0x90
LBB15_28:
	movups    (%r13,%rdi), %xmm0
	movups    16(%r13,%rdi), %xmm1
	movups    %xmm0, (%r12,%rdi)
	movups    %xmm1, 16(%r12,%rdi)
	addq      $32, %rdi
	incq      %rdx
	jne       LBB15_28
	jmp       LBB15_29
LBB15_26:
	xorl      %edi, %edi
LBB15_29:
	cmpq      $96, %rcx
	jb        LBB15_32
	movq      %r10, %rcx
	subq      %rdi, %rcx
	leaq      112(%r13,%rdi), %rdx
	leaq      112(%r12,%rdi), %rdi
# ----------------------
	.p2align 4, 0x90
LBB15_31:
	movups    -112(%rdx), %xmm0
	movups    -96(%rdx), %xmm1
	movups    %xmm0, -112(%rdi)
	movups    %xmm1, -96(%rdi)
	movups    -80(%rdx), %xmm0
	movups    -64(%rdx), %xmm1
	movups    %xmm0, -80(%rdi)
	movups    %xmm1, -64(%rdi)
	movups    -48(%rdx), %xmm0
	movups    -32(%rdx), %xmm1
	movups    %xmm0, -48(%rdi)
	movups    %xmm1, -32(%rdi)
	movups    -16(%rdx), %xmm0
	movups    (%rdx), %xmm1
	movups    %xmm0, -16(%rdi)
	movups    %xmm1, (%rdi)
	subq      $-128, %rdx
	subq      $-128, %rdi
	addq      $-128, %rcx
	jne       LBB15_31
LBB15_32:
	cmpq      %r10, %rsi
	je        LBB15_39
	movq      %rsi, %rcx
	subq      %r10, %rcx
	leaq      (%r12,%r10), %rdx
	addq      %r10, %r13
	jmp       LBB15_34
# ----------------------
	.p2align 4, 0x90
LBB15_13:
	movq      %r14, %rdx
	subq      %r13, %rdx
	leaq      -1236(%rbp), %rdi
	movq      %r13, %rsi
	movq      %rbx, %rcx
	call      _mbrtowc
	testq     %rax, %rax
	je        LBB15_17
	cmpq      $-2, %rax
	je        LBB15_40
	cmpq      $-1, %rax
	jne       LBB15_18
	jmp       LBB15_16
# ----------------------
	.p2align 4, 0x90
LBB15_17:
	movl      $1, %eax
LBB15_18:
	movq      %rbx, %r14
	movl      -1236(%rbp), %edi
	movq      %rax, %rbx
	call      _rpl_wcwidth
	movq      %rbx, %rsi
	leaq      (%r13,%rsi), %rdx
	testl     %eax, %eax
	movq      %rdx, -1248(%rbp)
	js        LBB15_42
	cmpq      $32, %rsi
	movq      %r14, %r9
	jae       LBB15_21
	movq      %rsi, %rcx
	movq      %r12, %rdx
	movq      -1232(%rbp), %r14
	jmp       LBB15_34
# ----------------------
	.p2align 4, 0x90
LBB15_42:
	movb      $63, (%r12)
	incq      %r12
	movl      $1, %eax
	movq      %r14, %rbx
	movq      -1232(%rbp), %r14
	jmp       LBB15_43
# ----------------------
	.p2align 4, 0x90
LBB15_21:
	movq      %rsi, %r10
	andq      $-32, %r10
	movq      -1232(%rbp), %r14
	je        LBB15_22
	cmpq      %rdx, %r12
	jae       LBB15_25
	leaq      (%r12,%rsi), %rcx
	cmpq      %rcx, %r13
	jae       LBB15_25
LBB15_22:
	movq      %rsi, %rcx
	movq      %r12, %rdx
LBB15_34:
	leaq      -1(%rcx), %r10
	movq      %rcx, %rdi
	andq      $7, %rdi
	je        LBB15_37
	negq      %rdi
# ----------------------
	.p2align 4, 0x90
LBB15_36:
	movzbl    (%r13), %ebx
	incq      %r13
	movb      %bl, (%rdx)
	incq      %rdx
	decq      %rcx
	incq      %rdi
	jne       LBB15_36
LBB15_37:
	cmpq      $7, %r10
	jb        LBB15_39
# ----------------------
	.p2align 4, 0x90
LBB15_38:
	movzbl    (%r13), %ebx
	movb      %bl, (%rdx)
	movzbl    1(%r13), %ebx
	movb      %bl, 1(%rdx)
	movzbl    2(%r13), %ebx
	movb      %bl, 2(%rdx)
	movzbl    3(%r13), %ebx
	movb      %bl, 3(%rdx)
	movzbl    4(%r13), %ebx
	movb      %bl, 4(%rdx)
	movzbl    5(%r13), %ebx
	movb      %bl, 5(%rdx)
	movzbl    6(%r13), %ebx
	movb      %bl, 6(%rdx)
	movzbl    7(%r13), %ebx
	movb      %bl, 7(%rdx)
	addq      $8, %r13
	addq      $8, %rdx
	addq      $-8, %rcx
	jne       LBB15_38
LBB15_39:
	addq      %rsi, %r12
	cltq      
	movq      %r9, %rbx
LBB15_43:
	addq      %rax, %r15
	movq      %rbx, %rdi
	call      _mbsinit
	testl     %eax, %eax
	movq      -1248(%rbp), %rax
	movq      %rax, %r13
	je        LBB15_13
	jmp       LBB15_44
LBB15_40:
	movq      %r14, %rax
	jmp       LBB15_41
LBB15_16:
	incq      %r13
	movq      %r13, %rax
LBB15_41:
	movb      $63, (%r12)
	incq      %r15
	incq      %r12
LBB15_44:
	movq      %rax, %r13
	xorps     %xmm0, %xmm0
	leaq      LJTI15_0(%rip), %rdx
	cmpq      %r14, %r13
	jb        LBB15_9
	jmp       LBB15_46
LBB15_54:
	movq      -1224(%rbp), %r13
	testq     %r13, %r13
	je        LBB15_55
	call      ____mb_cur_max
	cmpl      $2, %eax
	movq      -1208(%rbp), %r14
	jl        LBB15_58
	xorl      %edx, %edx
	movq      %rbx, %rdi
	movq      %r12, %rsi
	call      _mbsnwidth
	movslq    %eax, %r15
	testq     %r14, %r14
	jne       LBB15_68
	jmp       LBB15_69
LBB15_4:
	testq     %r12, %r12
	jle       LBB15_5
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %r15
	movq      -1216(%rbp), %rbx
# ----------------------
	.p2align 4, 0x90
LBB15_48:
	movzbl    (%rbx), %edi
	testb     %dil, %dil
	js        LBB15_50
	movl      60(%r15,%rdi,4), %ecx
	shrl      $18, %ecx
	andl      $1, %ecx
	testl     %ecx, %ecx
	jne       LBB15_53
	jmp       LBB15_52
# ----------------------
	.p2align 4, 0x90
LBB15_50:
	movl      $262144, %esi
	call      ___maskrune
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
	testl     %ecx, %ecx
	jne       LBB15_53
LBB15_52:
	movb      $63, (%rbx)
LBB15_53:
	incq      %rbx
	cmpq      %r14, %rbx
	jb        LBB15_48
LBB15_5:
	movq      %r12, %r15
	jmp       LBB15_66
LBB15_55:
	jmp       LBB15_66
LBB15_58:
	testq     %r12, %r12
	jle       LBB15_59
	movq      %r12, %r14
	addq      %rbx, %r14
	xorl      %r15d, %r15d
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %r13
# ----------------------
	.p2align 4, 0x90
LBB15_61:
	movzbl    (%rbx), %edi
	testb     %dil, %dil
	js        LBB15_63
	movl      60(%r13,%rdi,4), %ecx
	shrl      $18, %ecx
	andl      $1, %ecx
	jmp       LBB15_64
# ----------------------
	.p2align 4, 0x90
LBB15_63:
	movl      $262144, %esi
	call      ___maskrune
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
LBB15_64:
	addq      %rcx, %r15
	incq      %rbx
	cmpq      %r14, %rbx
	jb        LBB15_61
	movq      -1224(%rbp), %r13
LBB15_66:
	movq      -1208(%rbp), %r14
	testq     %r14, %r14
	jne       LBB15_68
	jmp       LBB15_69
LBB15_7:
	movq      -1216(%rbp), %r12
LBB15_46:
	subq      -1216(%rbp), %r12
	movq      -1208(%rbp), %r14
	movq      -1224(%rbp), %r13
	testq     %r14, %r14
	je        LBB15_69
LBB15_68:
	movl      $1, %esi
	movq      -1216(%rbp), %rdi
	movq      %r12, %rdx
	movq      %r14, %rcx
	call      _fwrite
LBB15_69:
	testq     %r13, %r13
	je        LBB15_71
	movq      %r15, (%r13)
LBB15_71:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB15_73
	movq      %r12, %rax
	leaq      -40(%rbp), %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB15_59:
	xorl      %r15d, %r15d
	testq     %r14, %r14
	jne       LBB15_68
	jmp       LBB15_69
LBB15_73:
	call      ___stack_chk_fail
# ----------------------
	.p2align 2, 0x90
LJTI15_0:
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_12
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_12
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_12
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
	.long	L15_0_set_11
# ----------------------
	.p2align 4, 0x90
_process_signals:
	pushq     %rbp
Lcfi88:
Lcfi89:
	movq      %rsp, %rbp
Lcfi90:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $16, %rsp
Lcfi91:
Lcfi92:
Lcfi93:
Lcfi94:
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	leaq      _caught_signals(%rip), %r14
	leaq      -36(%rbp), %r15
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB16_3
	jmp       LBB16_2
# ----------------------
	.p2align 4, 0x90
LBB16_17:
	movl      %ebx, %edi
	call      _raise
	movl      $3, %edi
	xorl      %edx, %edx
	movq      %r15, %rsi
	call      _sigprocmask
	cmpl      $0, _interrupt_signal(%rip)
	jne       LBB16_3
LBB16_2:
	cmpl      $0, _stop_signal_count(%rip)
	je        LBB16_18
LBB16_3:
	cmpb      $1, _used_color(%rip)
	jne       LBB16_14
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
	movzbl    _used_color(%rip), %eax
	testb     %al, %al
	jne       LBB16_13
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB16_7
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB16_12
# ----------------------
	.p2align 4, 0x90
LBB16_7:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
	movzbl    _used_color(%rip), %eax
	testb     %al, %al
	jne       LBB16_9
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB16_9:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
	movzbl    _used_color(%rip), %eax
	testb     %al, %al
	jne       LBB16_11
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB16_11:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB16_12:
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
LBB16_13:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r12), %rcx
	movl      $1, %edx
	call      _fwrite
LBB16_14:
	movq      (%r12), %rdi
	call      _rpl_fflush
	movl      $1, %edi
	movq      %r14, %rsi
	movq      %r15, %rdx
	call      _sigprocmask
	movl      _interrupt_signal(%rip), %ebx
	movl      _stop_signal_count(%rip), %eax
	testl     %eax, %eax
	je        LBB16_16
	decl      %eax
	movl      %eax, _stop_signal_count(%rip)
	movl      $17, %ebx
	jmp       LBB16_17
# ----------------------
	.p2align 4, 0x90
LBB16_16:
	xorl      %esi, %esi
	movl      %ebx, %edi
	call      _signal
	jmp       LBB16_17
LBB16_18:
	addq      $16, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_xstrcoll_name:
	pushq     %rbp
Lcfi95:
Lcfi96:
	movq      %rsp, %rbp
Lcfi97:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_name:
	pushq     %rbp
Lcfi98:
Lcfi99:
	movq      %rsp, %rbp
Lcfi100:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB18_3
	cmpl      $9, %edx
	je        LBB18_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB18_6
LBB18_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB18_7
	cmpl      $9, %r8d
	je        LBB18_7
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB18_6
LBB18_7:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
LBB18_6:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_name:
	pushq     %rbp
Lcfi101:
Lcfi102:
	movq      %rsp, %rbp
Lcfi103:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_name:
	pushq     %rbp
Lcfi104:
Lcfi105:
	movq      %rsp, %rbp
Lcfi106:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB20_3
	cmpl      $9, %edx
	je        LBB20_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB20_6
LBB20_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB20_7
	cmpl      $9, %r8d
	je        LBB20_7
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB20_6
LBB20_7:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
LBB20_6:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_strcmp_name:
	pushq     %rbp
Lcfi107:
Lcfi108:
	movq      %rsp, %rbp
Lcfi109:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_strcmp_df_name:
	pushq     %rbp
Lcfi110:
Lcfi111:
	movq      %rsp, %rbp
Lcfi112:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB22_3
	cmpl      $9, %edx
	je        LBB22_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB22_6
LBB22_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB22_7
	cmpl      $9, %r8d
	je        LBB22_7
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB22_6
LBB22_7:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
LBB22_6:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_name:
	pushq     %rbp
Lcfi113:
Lcfi114:
	movq      %rsp, %rbp
Lcfi115:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_df_name:
	pushq     %rbp
Lcfi116:
Lcfi117:
	movq      %rsp, %rbp
Lcfi118:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB24_3
	cmpl      $9, %edx
	je        LBB24_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB24_6
LBB24_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB24_7
	cmpl      $9, %r8d
	je        LBB24_7
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB24_6
LBB24_7:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
LBB24_6:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_xstrcoll_extension:
	pushq     %rbp
Lcfi119:
Lcfi120:
	movq      %rsp, %rbp
Lcfi121:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi122:
Lcfi123:
Lcfi124:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB25_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB25_2:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_extension:
	pushq     %rbp
Lcfi125:
Lcfi126:
	movq      %rsp, %rbp
Lcfi127:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi128:
Lcfi129:
Lcfi130:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	cmpl      $3, %ecx
	sete      %al
	movl      160(%r14), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       LBB26_3
	cmpl      $9, %edx
	je        LBB26_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB26_7
LBB26_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       LBB26_6
	cmpl      $9, %ecx
	je        LBB26_6
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       LBB26_7
LBB26_6:
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB26_8
LBB26_7:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB26_8:
	movq      (%r15), %rdi
	movq      (%r14), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_extension:
	pushq     %rbp
Lcfi131:
Lcfi132:
	movq      %rsp, %rbp
Lcfi133:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi134:
Lcfi135:
Lcfi136:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB27_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB27_2:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_extension:
	pushq     %rbp
Lcfi137:
Lcfi138:
	movq      %rsp, %rbp
Lcfi139:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi140:
Lcfi141:
Lcfi142:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	cmpl      $3, %ecx
	sete      %al
	movl      160(%r14), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       LBB28_3
	cmpl      $9, %edx
	je        LBB28_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB28_7
LBB28_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       LBB28_6
	cmpl      $9, %ecx
	je        LBB28_6
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       LBB28_7
LBB28_6:
	movq      (%r14), %rdi
	movl      $46, %esi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %rdi
	movl      $46, %esi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _xstrcoll
	testl     %eax, %eax
	je        LBB28_8
LBB28_7:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB28_8:
	movq      (%r14), %rdi
	movq      (%r15), %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_strcmp_extension:
	pushq     %rbp
Lcfi143:
Lcfi144:
	movq      %rsp, %rbp
Lcfi145:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi146:
Lcfi147:
Lcfi148:
	movq      %rsi, %r15
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB29_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB29_2:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_strcmp_df_extension:
	pushq     %rbp
Lcfi149:
Lcfi150:
	movq      %rsp, %rbp
Lcfi151:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi152:
Lcfi153:
Lcfi154:
	movq      %rsi, %r15
	movl      160(%rdi), %ecx
	cmpl      $3, %ecx
	sete      %al
	movl      160(%r15), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       LBB30_3
	cmpl      $9, %edx
	je        LBB30_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB30_7
LBB30_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       LBB30_6
	cmpl      $9, %ecx
	je        LBB30_6
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       LBB30_7
LBB30_6:
	movq      (%rdi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB30_8
LBB30_7:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB30_8:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_extension:
	pushq     %rbp
Lcfi155:
Lcfi156:
	movq      %rsp, %rbp
Lcfi157:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi158:
Lcfi159:
Lcfi160:
	movq      %rdi, %r15
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB31_2
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB31_2:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_df_extension:
	pushq     %rbp
Lcfi161:
Lcfi162:
	movq      %rsp, %rbp
Lcfi163:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi164:
Lcfi165:
Lcfi166:
	movq      %rdi, %r15
	movl      160(%r15), %ecx
	cmpl      $3, %ecx
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %ecx
	setne     %bl
	xorb      %al, %bl
	jne       LBB32_3
	cmpl      $9, %edx
	je        LBB32_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB32_7
LBB32_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %dl
	xorb      %al, %dl
	jne       LBB32_6
	cmpl      $9, %ecx
	je        LBB32_6
	movl      $1, %eax
	cmpl      $3, %ecx
	jne       LBB32_7
LBB32_6:
	movq      (%rsi), %r14
	movl      $46, %esi
	movq      %r14, %rdi
	call      _strrchr
	movq      %rax, %rbx
	movq      (%r15), %r15
	movl      $46, %esi
	movq      %r15, %rdi
	call      _strrchr
	testq     %rbx, %rbx
	leaq      L_.str(%rip), %rsi
	cmove     %rsi, %rbx
	testq     %rax, %rax
	cmovne    %rax, %rsi
	movq      %rbx, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB32_8
LBB32_7:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB32_8:
	movq      %r14, %rdi
	movq      %r15, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_xstrcoll_size:
	pushq     %rbp
Lcfi167:
Lcfi168:
	movq      %rsp, %rbp
Lcfi169:
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB33_2
	popq      %rbp
	ret       
LBB33_2:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_size:
	pushq     %rbp
Lcfi170:
Lcfi171:
	movq      %rsp, %rbp
Lcfi172:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB34_3
	cmpl      $9, %edx
	je        LBB34_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB34_7
LBB34_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB34_6
	cmpl      $9, %r8d
	je        LBB34_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB34_7
LBB34_6:
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB34_8
LBB34_7:
	popq      %rbp
	ret       
LBB34_8:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_size:
	pushq     %rbp
Lcfi173:
Lcfi174:
	movq      %rsp, %rbp
Lcfi175:
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB35_2
	popq      %rbp
	ret       
LBB35_2:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_size:
	pushq     %rbp
Lcfi176:
Lcfi177:
	movq      %rsp, %rbp
Lcfi178:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB36_3
	cmpl      $9, %edx
	je        LBB36_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB36_7
LBB36_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB36_6
	cmpl      $9, %r8d
	je        LBB36_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB36_7
LBB36_6:
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB36_8
LBB36_7:
	popq      %rbp
	ret       
LBB36_8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_strcmp_size:
	pushq     %rbp
Lcfi179:
Lcfi180:
	movq      %rsp, %rbp
Lcfi181:
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB37_2
	popq      %rbp
	ret       
LBB37_2:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_strcmp_df_size:
	pushq     %rbp
Lcfi182:
Lcfi183:
	movq      %rsp, %rbp
Lcfi184:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB38_3
	cmpl      $9, %edx
	je        LBB38_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB38_7
LBB38_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB38_6
	cmpl      $9, %r8d
	je        LBB38_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB38_7
LBB38_6:
	movq      112(%rsi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rdi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB38_8
LBB38_7:
	popq      %rbp
	ret       
LBB38_8:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_size:
	pushq     %rbp
Lcfi185:
Lcfi186:
	movq      %rsp, %rbp
Lcfi187:
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB39_2
	popq      %rbp
	ret       
LBB39_2:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_df_size:
	pushq     %rbp
Lcfi188:
Lcfi189:
	movq      %rsp, %rbp
Lcfi190:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB40_3
	cmpl      $9, %edx
	je        LBB40_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB40_7
LBB40_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB40_6
	cmpl      $9, %r8d
	je        LBB40_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB40_7
LBB40_6:
	movq      112(%rdi), %rax
	xorl      %ecx, %ecx
	cmpq      112(%rsi), %rax
	setg      %cl
	movl      $-1, %eax
	cmovge    %ecx, %eax
	testl     %eax, %eax
	je        LBB40_8
LBB40_7:
	popq      %rbp
	ret       
LBB40_8:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_xstrcoll_version:
	pushq     %rbp
Lcfi191:
Lcfi192:
	movq      %rsp, %rbp
Lcfi193:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_version:
	pushq     %rbp
Lcfi194:
Lcfi195:
	movq      %rsp, %rbp
Lcfi196:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB42_3
	cmpl      $9, %edx
	je        LBB42_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB42_6
LBB42_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB42_7
	cmpl      $9, %r8d
	je        LBB42_7
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB42_6
LBB42_7:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _filevercmp
LBB42_6:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_version:
	pushq     %rbp
Lcfi197:
Lcfi198:
	movq      %rsp, %rbp
Lcfi199:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_version:
	pushq     %rbp
Lcfi200:
Lcfi201:
	movq      %rsp, %rbp
Lcfi202:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB44_3
	cmpl      $9, %edx
	je        LBB44_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB44_6
LBB44_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB44_7
	cmpl      $9, %r8d
	je        LBB44_7
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB44_6
LBB44_7:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _filevercmp
LBB44_6:
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_xstrcoll_mtime:
	pushq     %rbp
Lcfi203:
Lcfi204:
	movq      %rsp, %rbp
Lcfi205:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB45_3
	movl      $1, %eax
	jg        LBB45_3
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB45_4
LBB45_3:
	popq      %rbp
	ret       
LBB45_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_mtime:
	pushq     %rbp
Lcfi206:
Lcfi207:
	movq      %rsp, %rbp
Lcfi208:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB46_3
	cmpl      $9, %edx
	je        LBB46_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB46_9
LBB46_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB46_6
	cmpl      $9, %r8d
	je        LBB46_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB46_9
LBB46_6:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB46_9
	movl      $1, %eax
	jg        LBB46_9
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB46_10
LBB46_9:
	popq      %rbp
	ret       
LBB46_10:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_mtime:
	pushq     %rbp
Lcfi209:
Lcfi210:
	movq      %rsp, %rbp
Lcfi211:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB47_3
	movl      $1, %eax
	jg        LBB47_3
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB47_4
LBB47_3:
	popq      %rbp
	ret       
LBB47_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_mtime:
	pushq     %rbp
Lcfi212:
Lcfi213:
	movq      %rsp, %rbp
Lcfi214:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB48_3
	cmpl      $9, %edx
	je        LBB48_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB48_9
LBB48_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB48_6
	cmpl      $9, %r8d
	je        LBB48_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB48_9
LBB48_6:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB48_9
	movl      $1, %eax
	jg        LBB48_9
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB48_10
LBB48_9:
	popq      %rbp
	ret       
LBB48_10:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_strcmp_mtime:
	pushq     %rbp
Lcfi215:
Lcfi216:
	movq      %rsp, %rbp
Lcfi217:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB49_3
	movl      $1, %eax
	jg        LBB49_3
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB49_4
LBB49_3:
	popq      %rbp
	ret       
LBB49_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_strcmp_df_mtime:
	pushq     %rbp
Lcfi218:
Lcfi219:
	movq      %rsp, %rbp
Lcfi220:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB50_3
	cmpl      $9, %edx
	je        LBB50_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB50_9
LBB50_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB50_6
	cmpl      $9, %r8d
	je        LBB50_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB50_9
LBB50_6:
	movq      64(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rsi)
	jl        LBB50_9
	movl      $1, %eax
	jg        LBB50_9
	movq      72(%rsi), %rax
	movq      72(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB50_10
LBB50_9:
	popq      %rbp
	ret       
LBB50_10:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_mtime:
	pushq     %rbp
Lcfi221:
Lcfi222:
	movq      %rsp, %rbp
Lcfi223:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB51_3
	movl      $1, %eax
	jg        LBB51_3
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB51_4
LBB51_3:
	popq      %rbp
	ret       
LBB51_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_df_mtime:
	pushq     %rbp
Lcfi224:
Lcfi225:
	movq      %rsp, %rbp
Lcfi226:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB52_3
	cmpl      $9, %edx
	je        LBB52_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB52_9
LBB52_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB52_6
	cmpl      $9, %r8d
	je        LBB52_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB52_9
LBB52_6:
	movq      64(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 64(%rdi)
	jl        LBB52_9
	movl      $1, %eax
	jg        LBB52_9
	movq      72(%rdi), %rax
	movq      72(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB52_10
LBB52_9:
	popq      %rbp
	ret       
LBB52_10:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_xstrcoll_ctime:
	pushq     %rbp
Lcfi227:
Lcfi228:
	movq      %rsp, %rbp
Lcfi229:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB53_3
	movl      $1, %eax
	jg        LBB53_3
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB53_4
LBB53_3:
	popq      %rbp
	ret       
LBB53_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_ctime:
	pushq     %rbp
Lcfi230:
Lcfi231:
	movq      %rsp, %rbp
Lcfi232:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB54_3
	cmpl      $9, %edx
	je        LBB54_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB54_9
LBB54_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB54_6
	cmpl      $9, %r8d
	je        LBB54_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB54_9
LBB54_6:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB54_9
	movl      $1, %eax
	jg        LBB54_9
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB54_10
LBB54_9:
	popq      %rbp
	ret       
LBB54_10:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_ctime:
	pushq     %rbp
Lcfi233:
Lcfi234:
	movq      %rsp, %rbp
Lcfi235:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB55_3
	movl      $1, %eax
	jg        LBB55_3
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB55_4
LBB55_3:
	popq      %rbp
	ret       
LBB55_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_ctime:
	pushq     %rbp
Lcfi236:
Lcfi237:
	movq      %rsp, %rbp
Lcfi238:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB56_3
	cmpl      $9, %edx
	je        LBB56_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB56_9
LBB56_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB56_6
	cmpl      $9, %r8d
	je        LBB56_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB56_9
LBB56_6:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB56_9
	movl      $1, %eax
	jg        LBB56_9
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB56_10
LBB56_9:
	popq      %rbp
	ret       
LBB56_10:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_strcmp_ctime:
	pushq     %rbp
Lcfi239:
Lcfi240:
	movq      %rsp, %rbp
Lcfi241:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB57_3
	movl      $1, %eax
	jg        LBB57_3
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB57_4
LBB57_3:
	popq      %rbp
	ret       
LBB57_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_strcmp_df_ctime:
	pushq     %rbp
Lcfi242:
Lcfi243:
	movq      %rsp, %rbp
Lcfi244:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB58_3
	cmpl      $9, %edx
	je        LBB58_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB58_9
LBB58_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB58_6
	cmpl      $9, %r8d
	je        LBB58_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB58_9
LBB58_6:
	movq      80(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rsi)
	jl        LBB58_9
	movl      $1, %eax
	jg        LBB58_9
	movq      88(%rsi), %rax
	movq      88(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB58_10
LBB58_9:
	popq      %rbp
	ret       
LBB58_10:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_ctime:
	pushq     %rbp
Lcfi245:
Lcfi246:
	movq      %rsp, %rbp
Lcfi247:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB59_3
	movl      $1, %eax
	jg        LBB59_3
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB59_4
LBB59_3:
	popq      %rbp
	ret       
LBB59_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_df_ctime:
	pushq     %rbp
Lcfi248:
Lcfi249:
	movq      %rsp, %rbp
Lcfi250:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB60_3
	cmpl      $9, %edx
	je        LBB60_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB60_9
LBB60_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB60_6
	cmpl      $9, %r8d
	je        LBB60_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB60_9
LBB60_6:
	movq      80(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 80(%rdi)
	jl        LBB60_9
	movl      $1, %eax
	jg        LBB60_9
	movq      88(%rdi), %rax
	movq      88(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB60_10
LBB60_9:
	popq      %rbp
	ret       
LBB60_10:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_xstrcoll_atime:
	pushq     %rbp
Lcfi251:
Lcfi252:
	movq      %rsp, %rbp
Lcfi253:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB61_3
	movl      $1, %eax
	jg        LBB61_3
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB61_4
LBB61_3:
	popq      %rbp
	ret       
LBB61_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_xstrcoll_df_atime:
	pushq     %rbp
Lcfi254:
Lcfi255:
	movq      %rsp, %rbp
Lcfi256:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB62_3
	cmpl      $9, %edx
	je        LBB62_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB62_9
LBB62_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB62_6
	cmpl      $9, %r8d
	je        LBB62_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB62_9
LBB62_6:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB62_9
	movl      $1, %eax
	jg        LBB62_9
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB62_10
LBB62_9:
	popq      %rbp
	ret       
LBB62_10:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_atime:
	pushq     %rbp
Lcfi257:
Lcfi258:
	movq      %rsp, %rbp
Lcfi259:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB63_3
	movl      $1, %eax
	jg        LBB63_3
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB63_4
LBB63_3:
	popq      %rbp
	ret       
LBB63_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_rev_xstrcoll_df_atime:
	pushq     %rbp
Lcfi260:
Lcfi261:
	movq      %rsp, %rbp
Lcfi262:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB64_3
	cmpl      $9, %edx
	je        LBB64_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB64_9
LBB64_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB64_6
	cmpl      $9, %r8d
	je        LBB64_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB64_9
LBB64_6:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB64_9
	movl      $1, %eax
	jg        LBB64_9
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB64_10
LBB64_9:
	popq      %rbp
	ret       
LBB64_10:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _xstrcoll
# ----------------------
	.p2align 4, 0x90
_strcmp_atime:
	pushq     %rbp
Lcfi263:
Lcfi264:
	movq      %rsp, %rbp
Lcfi265:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB65_3
	movl      $1, %eax
	jg        LBB65_3
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB65_4
LBB65_3:
	popq      %rbp
	ret       
LBB65_4:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_strcmp_df_atime:
	pushq     %rbp
Lcfi266:
Lcfi267:
	movq      %rsp, %rbp
Lcfi268:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB66_3
	cmpl      $9, %edx
	je        LBB66_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB66_9
LBB66_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB66_6
	cmpl      $9, %r8d
	je        LBB66_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB66_9
LBB66_6:
	movq      48(%rdi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rsi)
	jl        LBB66_9
	movl      $1, %eax
	jg        LBB66_9
	movq      56(%rsi), %rax
	movq      56(%rdi), %rcx
	subl      %ecx, %eax
	je        LBB66_10
LBB66_9:
	popq      %rbp
	ret       
LBB66_10:
	movq      (%rdi), %rdi
	movq      (%rsi), %rsi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_atime:
	pushq     %rbp
Lcfi269:
Lcfi270:
	movq      %rsp, %rbp
Lcfi271:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB67_3
	movl      $1, %eax
	jg        LBB67_3
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB67_4
LBB67_3:
	popq      %rbp
	ret       
LBB67_4:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_rev_strcmp_df_atime:
	pushq     %rbp
Lcfi272:
Lcfi273:
	movq      %rsp, %rbp
Lcfi274:
	movl      160(%rdi), %r8d
	cmpl      $3, %r8d
	sete      %al
	movl      160(%rsi), %edx
	cmpl      $9, %r8d
	setne     %cl
	xorb      %al, %cl
	jne       LBB68_3
	cmpl      $9, %edx
	je        LBB68_3
	movl      $-1, %eax
	cmpl      $3, %edx
	jne       LBB68_9
LBB68_3:
	cmpl      $3, %edx
	sete      %al
	cmpl      $9, %edx
	setne     %cl
	xorb      %al, %cl
	jne       LBB68_6
	cmpl      $9, %r8d
	je        LBB68_6
	movl      $1, %eax
	cmpl      $3, %r8d
	jne       LBB68_9
LBB68_6:
	movq      48(%rsi), %rcx
	movl      $-1, %eax
	cmpq      %rcx, 48(%rdi)
	jl        LBB68_9
	movl      $1, %eax
	jg        LBB68_9
	movq      56(%rdi), %rax
	movq      56(%rsi), %rcx
	subl      %ecx, %eax
	je        LBB68_10
LBB68_9:
	popq      %rbp
	ret       
LBB68_10:
	movq      (%rsi), %rax
	movq      (%rdi), %rsi
	movq      %rax, %rdi
	popq      %rbp
	jmp       _strcmp
# ----------------------
	.p2align 4, 0x90
_xstrcoll:
	pushq     %rbp
Lcfi275:
Lcfi276:
	movq      %rsp, %rbp
Lcfi277:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
Lcfi278:
Lcfi279:
Lcfi280:
Lcfi281:
	movq      %rsi, %r14
	movq      %rdi, %r15
	call      ___error
	movl      $0, (%rax)
	movq      %r15, %rdi
	movq      %r14, %rsi
	call      _strcoll
	movl      %eax, %ebx
	call      ___error
	cmpl      $0, (%rax)
	jne       LBB69_1
	movl      %ebx, %eax
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB69_1:
	call      ___error
	movl      (%rax), %r12d
	xorl      %edi, %edi
	movq      %r15, %rsi
	call      _quote_n
	movq      %rax, %r15
	movl      $1, %edi
	movq      %r14, %rsi
	call      _quote_n
	movq      %rax, %rbx
	leaq      L_.str.207(%rip), %rdx
	xorl      %edi, %edi
	xorl      %eax, %eax
	movl      %r12d, %esi
	movq      %r15, %rcx
	movq      %rbx, %r8
	call      _error
	cmpl      $0, _exit_status(%rip)
	jne       LBB69_3
	movl      $1, _exit_status(%rip)
LBB69_3:
	leaq      _failed_strcoll(%rip), %rdi
	movl      $1, %esi
	call      _longjmp
# ----------------------
	.p2align 4, 0x90
_print_file_name_and_frills:
	pushq     %rbp
Lcfi282:
Lcfi283:
	movq      %rsp, %rbp
Lcfi284:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	subq      $280, %rsp
Lcfi285:
Lcfi286:
Lcfi287:
	movq      %rsi, %r14
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -32(%rbp)
	cmpb      $0, _print_with_color(%rip)
	je        LBB70_22
	movq      _color_indicator+64(%rip), %rax
	testq     %rax, %rax
	je        LBB70_22
	movq      _color_indicator+72(%rip), %rdi
	cmpq      $2, %rax
	je        LBB70_5
	cmpq      $1, %rax
	jne       LBB70_6
	cmpb      $48, (%rdi)
	jne       LBB70_6
	jmp       LBB70_22
LBB70_5:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	je        LBB70_22
LBB70_6:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB70_11
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB70_9
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB70_10
LBB70_9:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB70_10:
	call      _put_indicator
LBB70_11:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB70_16
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB70_14
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB70_15
LBB70_14:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB70_15:
	call      _put_indicator
LBB70_16:
	movq      _color_indicator+72(%rip), %rdi
	movq      _color_indicator+64(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB70_21
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB70_19
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB70_20
LBB70_19:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB70_20:
	call      _put_indicator
LBB70_21:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%rbx), %rcx
	movl      $1, %edx
	call      _fwrite
LBB70_22:
	cmpb      $1, _print_inode(%rip)
	jne       LBB70_27
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	cmovne    _inode_number_width(%rip), %ebx
	leaq      L_.str.209(%rip), %rdx
	cmpb      $0, 176(%r15)
	je        LBB70_26
	movq      24(%r15), %rdi
	testq     %rdi, %rdi
	je        LBB70_26
	leaq      -304(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdx
LBB70_26:
	leaq      L_.str.208(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
LBB70_27:
	cmpb      $1, _print_block_size(%rip)
	jne       LBB70_32
	xorl      %ebx, %ebx
	cmpl      $4, _format(%rip)
	cmovne    _block_size_width(%rip), %ebx
	cmpb      $0, 176(%r15)
	je        LBB70_29
	movq      120(%r15), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -304(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
	movq      %rax, %rdx
	jmp       LBB70_31
LBB70_29:
	leaq      L_.str.209(%rip), %rdx
LBB70_31:
	leaq      L_.str.208(%rip), %rdi
	xorl      %eax, %eax
	movl      %ebx, %esi
	call      _printf
LBB70_32:
	cmpb      $1, _print_scontext(%rip)
	jne       LBB70_34
	xorl      %eax, %eax
	cmpl      $4, _format(%rip)
	movl      _scontext_width(%rip), %esi
	cmove     %eax, %esi
	movq      168(%r15), %rdx
	leaq      L_.str.208(%rip), %rdi
	xorl      %eax, %eax
	call      _printf
LBB70_34:
	xorl      %esi, %esi
	xorl      %edx, %edx
	movq      %r15, %rdi
	movq      %r14, %rcx
	call      _print_name_with_quoting
	movl      _indicator_style(%rip), %esi
	testl     %esi, %esi
	je        LBB70_59
	movb      176(%r15), %bl
	testb     %bl, %bl
	movw      20(%r15), %dx
	movl      160(%r15), %ecx
	je        LBB70_38
	movl      %edx, %edi
	andl      $61440, %edi
	cmpl      $32768, %edi
	je        LBB70_45
	movb      $47, %al
	movzwl    %di, %edi
	cmpl      $16384, %edi
	je        LBB70_53
	jmp       LBB70_41
LBB70_38:
	movb      $47, %al
	cmpl      $3, %ecx
	je        LBB70_53
	cmpl      $5, %ecx
	je        LBB70_59
	cmpl      $9, %ecx
	je        LBB70_53
LBB70_41:
	cmpl      $1, %esi
	je        LBB70_59
	testb     %bl, %bl
	je        LBB70_51
	andl      $61440, %edx
	cmpl      $40960, %edx
	je        LBB70_44
	movzwl    %dx, %eax
	cmpl      $49152, %eax
	je        LBB70_50
	cmpl      $4096, %eax
	jne       LBB70_59
	movb      $124, %al
	jmp       LBB70_53
LBB70_45:
	testb     %bl, %bl
	sete      %al
	cmpl      $3, %esi
	setne     %cl
	testb     $73, %dl
	je        LBB70_59
	orb       %cl, %al
	movb      $42, %al
	jne       LBB70_59
LBB70_53:
	movq      ___stdoutp@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        LBB70_56
	cmpb      $10, %al
	je        LBB70_57
	cmpl      40(%rsi), %ecx
	jle       LBB70_57
LBB70_56:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
LBB70_58:
	incq      _dired_pos(%rip)
LBB70_59:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -32(%rbp), %rax
	jne       LBB70_61
	addq      $280, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB70_57:
	movsbl    %al, %edi
	call      ___swbuf
	jmp       LBB70_58
LBB70_51:
	decl      %ecx
	cmpl      $7, %ecx
	jae       LBB70_59
	shlb      $3, %cl
	movq      $17240342323527804, %rax
	shrq      %cl, %rax
	testb     %al, %al
	jne       LBB70_53
	jmp       LBB70_59
LBB70_44:
	movb      $64, %al
	jmp       LBB70_53
LBB70_50:
	movb      $61, %al
	jmp       LBB70_53
LBB70_61:
	call      ___stack_chk_fail
# ----------------------
	.p2align 4, 0x90
_print_name_with_quoting:
	pushq     %rbp
Lcfi288:
Lcfi289:
	movq      %rsp, %rbp
Lcfi290:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Lcfi291:
Lcfi292:
Lcfi293:
Lcfi294:
Lcfi295:
	movq      %rcx, %r12
	movq      %rdx, %r13
	movq      %rdi, %rbx
	leaq      8(%rbx), %rax
	testb     %sil, %sil
	cmove     %rbx, %rax
	movq      (%rax), %r15
	cmpb      $0, _print_with_color(%rip)
	je        LBB71_1
	movq      %r13, -64(%rbp)
	testb     %sil, %sil
	movq      %r12, -72(%rbp)
	movq      %r15, -56(%rbp)
	je        LBB71_3
	movq      8(%rbx), %r13
	movzbl    177(%rbx), %eax
	xorl      %r12d, %r12d
	testl     %eax, %eax
	movzwl    164(%rbx), %r15d
	jne       LBB71_15
	movq      _color_indicator+192(%rip), %rcx
	movl      $-1, %r12d
	testq     %rcx, %rcx
	je        LBB71_15
	movl      $12, %r14d
	movq      _color_indicator+200(%rip), %rdi
	cmpq      $2, %rcx
	je        LBB71_14
	cmpq      $1, %rcx
	jne       LBB71_92
	cmpb      $48, (%rdi)
	jne       LBB71_92
	decl      %eax
	movl      %eax, %r12d
	cmpb      $0, 176(%rbx)
	jne       LBB71_16
	jmp       LBB71_79
LBB71_1:
	xorl      %ebx, %ebx
	testq     %r13, %r13
	jne       LBB71_200
	jmp       LBB71_204
LBB71_3:
	movq      (%rbx), %r13
	movb      177(%rbx), %al
	cmpb      $1, _color_symlink_as_referent(%rip)
	jne       LBB71_6
	testb     %al, %al
	je        LBB71_5
	leaq      164(%rbx), %rcx
	movb      $1, %al
	jmp       LBB71_7
LBB71_5:
	xorl      %eax, %eax
LBB71_6:
	leaq      20(%rbx), %rcx
LBB71_7:
	movzbl    %al, %r12d
	movzwl    (%rcx), %r15d
LBB71_15:
	cmpb      $0, 176(%rbx)
	je        LBB71_79
LBB71_16:
	movzwl    %r15w, %eax
	movl      %eax, -44(%rbp)
	movl      %eax, %ecx
	andl      $61440, %ecx
	addl      $-4096, %ecx
	shrl      $12, %ecx
	cmpl      $11, %ecx
	ja        LBB71_91
	movl      $8, %r14d
	movl      $7, %eax
	xorl      %r15d, %r15d
	leaq      LJTI71_0(%rip), %rdx
	movslq    (%rdx,%rcx,4), %rcx
	addq      %rdx, %rcx
	jmp       *%rcx
LBB71_78:
	movl      $11, %r14d
	jmp       LBB71_92
LBB71_79:
	movl      160(%rbx), %eax
	cmpq      $8, %rax
	je        LBB71_49
	cmpl      $5, %eax
	jne       LBB71_81
LBB71_49:
	movq      %r13, %rdi
	call      _strlen
	movq      %rax, %rbx
	movq      _color_ext_list(%rip), %r15
	movl      $5, %r14d
	testq     %r15, %r15
	je        LBB71_92
	addq      %rbx, %r13
# ----------------------
	.p2align 4, 0x90
LBB71_51:
	movq      (%r15), %rdx
	cmpq      %rbx, %rdx
	ja        LBB71_53
	movq      %r13, %rdi
	subq      %rdx, %rdi
	movq      8(%r15), %rsi
	call      _strncmp
	testl     %eax, %eax
	je        LBB71_93
LBB71_53:
	movq      32(%r15), %r15
	testq     %r15, %r15
	jne       LBB71_51
	jmp       LBB71_92
LBB71_81:
	leaq      _print_color_indicator.filetype_indicator(%rip), %rcx
	movl      (%rcx,%rax,4), %eax
LBB71_82:
	xorl      %r15d, %r15d
	testl     %r12d, %r12d
	jne       LBB71_83
	cmpl      $7, %eax
	movl      %eax, %r14d
	jne       LBB71_93
	movb      _color_symlink_as_referent(%rip), %al
	testb     %al, %al
	jne       LBB71_91
	movq      _color_indicator+208(%rip), %rax
	movl      $7, %r14d
	testq     %rax, %rax
	je        LBB71_92
	movq      _color_indicator+216(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_90
	cmpq      $1, %rax
	jne       LBB71_91
	cmpb      $48, (%rdi)
	jne       LBB71_91
	jmp       LBB71_92
LBB71_54:
	movl      -44(%rbp), %ecx
	testb     $2, %ch
	sete      %bl
	testb     $2, %cl
	je        LBB71_61
	testb     %bl, %bl
	jne       LBB71_61
	movq      _color_indicator+320(%rip), %rax
	testq     %rax, %rax
	je        LBB71_61
	movl      $20, %r14d
	movq      _color_indicator+328(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_60
	cmpq      $1, %rax
	jne       LBB71_92
	cmpb      $48, (%rdi)
	jne       LBB71_92
	jmp       LBB71_61
LBB71_77:
	movl      $10, %r14d
	jmp       LBB71_92
LBB71_18:
	movl      -44(%rbp), %ecx
	testb     $8, %ch
	je        LBB71_24
	movq      _color_indicator+256(%rip), %rax
	testq     %rax, %rax
	je        LBB71_24
	movl      $16, %r14d
	movq      _color_indicator+264(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_23
	cmpq      $1, %rax
	jne       LBB71_92
	cmpb      $48, (%rdi)
	jne       LBB71_92
	jmp       LBB71_24
LBB71_76:
	movl      $9, %r14d
	jmp       LBB71_92
LBB71_14:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB71_92
	jmp       LBB71_15
LBB71_83:
	movl      %eax, %r14d
	jmp       LBB71_93
LBB71_90:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	je        LBB71_92
LBB71_91:
	movl      $13, %r14d
LBB71_92:
	xorl      %r15d, %r15d
LBB71_93:
	movl      %r14d, %eax
	shlq      $4, %rax
	leaq      _color_indicator(%rip), %rcx
	addq      %rax, %rcx
	testq     %r15, %r15
	leaq      16(%r15), %rbx
	cmove     %rcx, %rbx
	cmpq      $0, 8(%rbx)
	movq      _color_indicator+64(%rip), %rax
	movq      _color_indicator+72(%rip), %rdi
	je        LBB71_192
	testq     %rax, %rax
	movq      -72(%rbp), %r12
	movq      -64(%rbp), %r13
	je        LBB71_146
	cmpq      $2, %rax
	je        LBB71_98
	cmpq      $1, %rax
	jne       LBB71_99
	cmpb      $48, (%rdi)
	jne       LBB71_99
	jmp       LBB71_146
LBB71_192:
	testq     %rax, %rax
	je        LBB71_193
	cmpq      $2, %rax
	je        LBB71_230
	cmpq      $1, %rax
	jne       LBB71_197
	cmpb      $48, (%rdi)
	jne       LBB71_197
LBB71_193:
	xorl      %ebx, %ebx
	jmp       LBB71_198
LBB71_98:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	je        LBB71_146
LBB71_99:
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_122
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_102
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       LBB71_121
LBB71_197:
	movb      $1, %bl
	jmp       LBB71_198
LBB71_230:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	setne     %bl
LBB71_198:
	movq      -72(%rbp), %r12
	movq      -64(%rbp), %r13
	movq      -56(%rbp), %r15
	testq     %r13, %r13
	jne       LBB71_200
	jmp       LBB71_204
LBB71_102:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_111
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_105
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_110
LBB71_105:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_107
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_107:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_109
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_109:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_110:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_111:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_120
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_114
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_119
LBB71_114:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_116
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_116:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_118
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_118:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_119:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_120:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
LBB71_121:
	movl      $1, %edx
	call      _fwrite
LBB71_122:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_145
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_125
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_144
LBB71_125:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_134
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_128
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_133
LBB71_128:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_130
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_130:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_132
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_132:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_133:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_134:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_143
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_137
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_142
LBB71_137:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_139
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_139:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_141
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_141:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_142:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_143:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_144:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_145:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_146:
	movb      _used_color(%rip), %al
	testb     %al, %al
	movq      -56(%rbp), %r15
	jne       LBB71_161
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_149
	movq      _color_indicator+32(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	jmp       LBB71_160
LBB71_149:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_154
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_152
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_153
LBB71_152:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_153:
	call      _put_indicator
LBB71_154:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_159
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_157
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_158
LBB71_157:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_158:
	call      _put_indicator
LBB71_159:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
LBB71_160:
	movl      $1, %edx
	call      _fwrite
LBB71_161:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_176
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_164
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_175
LBB71_164:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_169
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_167
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_168
LBB71_167:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_168:
	call      _put_indicator
LBB71_169:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_174
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_172
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_173
LBB71_172:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_173:
	call      _put_indicator
LBB71_174:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_175:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_176:
	movq      (%rbx), %rsi
	movq      8(%rbx), %rdi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_191
	movb      $1, _used_color(%rip)
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB71_179
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_190
LBB71_179:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_184
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_182
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_183
LBB71_182:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_183:
	call      _put_indicator
LBB71_184:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_189
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_187
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_188
LBB71_187:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_188:
	call      _put_indicator
LBB71_189:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_190:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_191:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      $1, %bl
	testq     %r13, %r13
	je        LBB71_204
LBB71_200:
	cmpb      $1, _dired(%rip)
	jne       LBB71_204
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB71_203
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
	movq      24(%r13), %rax
LBB71_203:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
LBB71_204:
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	movq      (%r14), %rdi
	movq      _filename_quoting_options(%rip), %rdx
	xorl      %ecx, %ecx
	movq      %r15, %rsi
	call      _quote_name
	movq      %rax, %r15
	addq      %r15, _dired_pos(%rip)
	testq     %r13, %r13
	je        LBB71_209
	cmpb      $1, _dired(%rip)
	jne       LBB71_209
	movq      24(%r13), %rax
	movq      32(%r13), %rcx
	subq      %rax, %rcx
	cmpq      $7, %rcx
	ja        LBB71_208
	movl      $8, %esi
	movq      %r13, %rdi
	call      __obstack_newchunk
	movq      24(%r13), %rax
LBB71_208:
	movq      _dired_pos(%rip), %rcx
	movq      %rcx, (%rax)
	addq      $8, 24(%r13)
LBB71_209:
	call      _process_signals
	testb     %bl, %bl
	je        LBB71_228
	movq      _color_indicator+40(%rip), %rdi
	testq     %rdi, %rdi
	movb      _used_color(%rip), %al
	je        LBB71_214
	testb     $1, %al
	jne       LBB71_213
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
	movq      _color_indicator+40(%rip), %rdi
LBB71_213:
	movq      _color_indicator+32(%rip), %rsi
	jmp       LBB71_221
LBB71_214:
	testb     $1, %al
	jne       LBB71_216
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_216:
	movq      _color_indicator+8(%rip), %rdi
	movq      _color_indicator(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_218
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_218:
	movq      _color_indicator+56(%rip), %rdi
	movq      _color_indicator+48(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_220
	movb      $1, _used_color(%rip)
	call      _prep_non_filename_text
LBB71_220:
	movq      _color_indicator+24(%rip), %rdi
	movq      _color_indicator+16(%rip), %rsi
LBB71_221:
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
	movq      _line_length(%rip), %rsi
	xorl      %edx, %edx
	movq      %r12, %rax
	divq      %rsi
	movq      %rax, %rcx
	leaq      -1(%r12,%r15), %rax
	xorl      %edx, %edx
	divq      %rsi
	cmpq      %rax, %rcx
	je        LBB71_228
	movb      _used_color(%rip), %al
	testb     %al, %al
	jne       LBB71_227
	movb      $1, _used_color(%rip)
	cmpq      $0, _color_indicator+40(%rip)
	je        LBB71_225
	leaq      _color_indicator+32(%rip), %rdi
	jmp       LBB71_226
LBB71_225:
	leaq      _color_indicator(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+48(%rip), %rdi
	call      _put_indicator
	leaq      _color_indicator+16(%rip), %rdi
LBB71_226:
	call      _put_indicator
LBB71_227:
	movq      _color_indicator+376(%rip), %rdi
	movq      _color_indicator+368(%rip), %rsi
	movq      (%r14), %rcx
	movl      $1, %edx
	call      _fwrite
LBB71_228:
	movq      %r15, %rax
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB71_60:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	jne       LBB71_92
LBB71_61:
	testb     $2, %cl
	jne       LBB71_62
	testb     $2, %ch
	jne       LBB71_68
	movl      $6, %r14d
	jmp       LBB71_92
LBB71_62:
	movq      _color_indicator+304(%rip), %rax
	xorl      %r15d, %r15d
	testq     %rax, %rax
	je        LBB71_67
	movq      _color_indicator+312(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_66
	movl      $19, %r14d
	cmpq      $1, %rax
	jne       LBB71_93
	xorl      %r15d, %r15d
	cmpb      $48, (%rdi)
	jne       LBB71_93
	jmp       LBB71_67
LBB71_23:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	jne       LBB71_92
LBB71_24:
	testb     $4, %ch
	je        LBB71_30
	movq      _color_indicator+272(%rip), %rax
	testq     %rax, %rax
	je        LBB71_30
	movl      $17, %r14d
	movq      _color_indicator+280(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_29
	cmpq      $1, %rax
	jne       LBB71_92
	cmpb      $48, (%rdi)
	jne       LBB71_92
	jmp       LBB71_30
LBB71_66:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	setne     %r15b
LBB71_67:
	testb     %r15b, %r15b
	movl      $19, %eax
	movl      $6, %r14d
	cmovne    %eax, %r14d
	orb       %r15b, %bl
	jne       LBB71_92
LBB71_68:
	movq      _color_indicator+288(%rip), %rax
	movl      $6, %r14d
	testq     %rax, %rax
	je        LBB71_92
	movq      _color_indicator+296(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_74
	cmpq      $1, %rax
	jne       LBB71_75
	cmpb      $48, (%rdi)
	je        LBB71_92
	jmp       LBB71_75
LBB71_29:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	jne       LBB71_92
LBB71_30:
	movq      _color_indicator+336(%rip), %rax
	testq     %rax, %rax
	je        LBB71_34
	movq      _color_indicator+344(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_39
	cmpq      $1, %rax
	jne       LBB71_40
	cmpb      $48, (%rdi)
	jne       LBB71_40
	jmp       LBB71_34
LBB71_39:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	movl      -44(%rbp), %ecx
	testl     %eax, %eax
	je        LBB71_34
LBB71_40:
	cmpb      $0, 184(%rbx)
	je        LBB71_34
	movl      $21, %r14d
	jmp       LBB71_92
LBB71_34:
	testb     $73, %cl
	je        LBB71_43
	movq      _color_indicator+224(%rip), %rax
	testq     %rax, %rax
	je        LBB71_43
	movl      $14, %r14d
	movq      _color_indicator+232(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_42
	cmpq      $1, %rax
	jne       LBB71_92
	cmpb      $48, (%rdi)
	jne       LBB71_92
	jmp       LBB71_43
LBB71_74:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	je        LBB71_92
LBB71_75:
	movl      $18, %r14d
	jmp       LBB71_92
LBB71_42:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB71_92
LBB71_43:
	movzwl    22(%rbx), %eax
	cmpl      $2, %eax
	jb        LBB71_49
	movq      _color_indicator+352(%rip), %rax
	testq     %rax, %rax
	je        LBB71_49
	movl      $22, %r14d
	movq      _color_indicator+360(%rip), %rdi
	cmpq      $2, %rax
	je        LBB71_48
	cmpq      $1, %rax
	jne       LBB71_92
	cmpb      $48, (%rdi)
	je        LBB71_49
	jmp       LBB71_92
LBB71_48:
	leaq      L_.str.37(%rip), %rsi
	movl      $2, %edx
	call      _strncmp
	testl     %eax, %eax
	jne       LBB71_92
	jmp       LBB71_49
# ----------------------
	.p2align 2, 0x90
LJTI71_0:
	.long	L71_0_set_93
	.long	L71_0_set_78
	.long	L71_0_set_91
	.long	L71_0_set_54
	.long	L71_0_set_91
	.long	L71_0_set_77
	.long	L71_0_set_91
	.long	L71_0_set_18
	.long	L71_0_set_91
	.long	L71_0_set_82
	.long	L71_0_set_91
	.long	L71_0_set_76
# ----------------------
	.p2align 4, 0x90
_calculate_columns:
	pushq     %rbp
Lcfi296:
Lcfi297:
	movq      %rsp, %rbp
Lcfi298:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Lcfi299:
Lcfi300:
Lcfi301:
Lcfi302:
Lcfi303:
	movl      %edi, -44(%rbp)
	movq      _max_idx(%rip), %r13
	movq      _cwd_n_used(%rip), %r15
	cmpq      %r15, %r13
	movq      %r15, %r12
	cmovb     %r13, %r12
	cmpq      %r12, _init_column_info.column_info_alloc(%rip)
	jae       LBB72_17
	movq      %r13, %rax
	shrq      $1, %rax
	cmpq      %rax, %r12
	movq      _column_info(%rip), %rdi
	jae       LBB72_4
	movq      $384307168202282326, %rax
	cmpq      %rax, %r12
	jae       LBB72_37
	movq      %r12, %rax
	shlq      $4, %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, _column_info(%rip)
	leaq      (%r12,%r12), %r14
	jmp       LBB72_6
LBB72_4:
	movq      $768614336404564651, %rax
	cmpq      %rax, %r13
	jae       LBB72_37
	leaq      0(,%r13,8), %rax
	leaq      (%rax,%rax,2), %rsi
	call      _xrealloc
	movq      %rax, _column_info(%rip)
	movq      _max_idx(%rip), %r14
LBB72_6:
	movq      _init_column_info.column_info_alloc(%rip), %rax
	leaq      1(%r14,%rax), %rsi
	cmpq      %r14, %rsi
	jb        LBB72_37
	movq      %r14, %rdi
	subq      %rax, %rdi
	movq      %rsi, %rcx
	imulq     %rdi, %rcx
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rdi
	cmpq      %rsi, %rax
	jne       LBB72_37
	movq      %rcx, %rax
	shrq      $62, %rax
	jne       LBB72_37
	shlq      $2, %rcx
	andq      $-8, %rcx
	movq      %rcx, %rdi
	call      _xmalloc
	movq      _init_column_info.column_info_alloc(%rip), %rcx
	cmpq      %rcx, %r14
	jbe       LBB72_16
	movq      _column_info(%rip), %r8
	movl      %r14d, %edi
	subl      %ecx, %edi
	leaq      -1(%r14), %rsi
	subq      %rcx, %rsi
	andq      $7, %rdi
	je        LBB72_13
	leaq      (%rcx,%rcx,2), %rdx
	leaq      16(%r8,%rdx,8), %rdx
	negq      %rdi
# ----------------------
	.p2align 4, 0x90
LBB72_12:
	movq      %rax, (%rdx)
	leaq      8(%rax,%rcx,8), %rax
	incq      %rcx
	addq      $24, %rdx
	incq      %rdi
	jne       LBB72_12
LBB72_13:
	cmpq      $7, %rsi
	jb        LBB72_16
	movq      %r14, %rsi
	negq      %rsi
	leaq      (%rcx,%rcx,2), %rdx
	leaq      8(%rcx), %rcx
	leaq      184(%r8,%rdx,8), %rdx
# ----------------------
	.p2align 4, 0x90
LBB72_15:
	movq      %rax, -168(%rdx)
	leaq      (%rax,%rcx,8), %rdi
	leaq      -56(%rdi,%rcx,8), %rbx
	leaq      -56(%rax,%rcx,8), %rax
	movq      %rax, -144(%rdx)
	leaq      -48(%rbx,%rcx,8), %rax
	leaq      -104(%rdi,%rcx,8), %rdi
	movq      %rdi, -120(%rdx)
	leaq      -40(%rax,%rcx,8), %rdi
	leaq      -88(%rbx,%rcx,8), %rbx
	movq      %rbx, -96(%rdx)
	leaq      -32(%rdi,%rcx,8), %rbx
	leaq      -72(%rax,%rcx,8), %rax
	movq      %rax, -72(%rdx)
	leaq      -24(%rbx,%rcx,8), %rax
	leaq      -56(%rdi,%rcx,8), %rdi
	movq      %rdi, -48(%rdx)
	leaq      -16(%rax,%rcx,8), %rdi
	leaq      -40(%rbx,%rcx,8), %rbx
	movq      %rbx, -24(%rdx)
	leaq      -24(%rax,%rcx,8), %rax
	movq      %rax, (%rdx)
	leaq      -8(%rdi,%rcx,8), %rax
	leaq      8(%rsi,%rcx), %rdi
	addq      $8, %rcx
	addq      $192, %rdx
	cmpq      $8, %rdi
	jne       LBB72_15
LBB72_16:
	movq      %r14, _init_column_info.column_info_alloc(%rip)
LBB72_17:
	movq      %r13, -56(%rbp)
	movq      %r15, -64(%rbp)
	testq     %r12, %r12
	je        LBB72_20
	movq      _column_info(%rip), %r13
	xorl      %r15d, %r15d
	movl      $8, %ebx
	movl      $3, %r14d
# ----------------------
	.p2align 4, 0x90
LBB72_19:
	movb      $1, -24(%r13,%r14,8)
	incq      %r15
	movq      %r14, -16(%r13,%r14,8)
	movq      -8(%r13,%r14,8), %rdi
	leaq      L_.memset_pattern(%rip), %rsi
	movq      %rbx, %rdx
	call      _memset_pattern16
	addq      $8, %rbx
	addq      $3, %r14
	cmpq      %r12, %r15
	jb        LBB72_19
LBB72_20:
	cmpq      $0, _cwd_n_used(%rip)
	movq      -64(%rbp), %r15
	movq      -56(%rbp), %r13
	je        LBB72_33
	xorl      %r14d, %r14d
# ----------------------
	.p2align 4, 0x90
LBB72_22:
	movq      _sorted_file(%rip), %rax
	movq      (%rax,%r14,8), %rdi
	call      _length_of_file_name_and_frills
	movq      %rax, %r10
	testq     %r12, %r12
	je        LBB72_23
	movq      _column_info(%rip), %rdi
	movq      _cwd_n_used(%rip), %r8
	movq      _line_length(%rip), %r9
	xorl      %ecx, %ecx
	movl      -44(%rbp), %r11d
# ----------------------
	.p2align 4, 0x90
LBB72_25:
	cmpb      $0, (%rdi)
	je        LBB72_31
	testb     %r11b, %r11b
	je        LBB72_28
	leaq      (%r8,%rcx), %rax
	leaq      1(%rcx), %rsi
	xorl      %edx, %edx
	divq      %rsi
	movq      %rax, %rsi
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rsi
	movq      %rax, %rdx
	jmp       LBB72_29
# ----------------------
	.p2align 4, 0x90
LBB72_28:
	leaq      1(%rcx), %rsi
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rsi
LBB72_29:
	xorl      %eax, %eax
	cmpq      %rdx, %rcx
	setne     %al
	leaq      (%r10,%rax,2), %rbx
	movq      16(%rdi), %rsi
	movq      %rbx, %rax
	subq      (%rsi,%rdx,8), %rax
	jbe       LBB72_31
	addq      %rax, 8(%rdi)
	movq      %rbx, (%rsi,%rdx,8)
	cmpq      %r9, 8(%rdi)
	setb      %al
	movb      %al, (%rdi)
LBB72_31:
	incq      %rcx
	addq      $24, %rdi
	cmpq      %r12, %rcx
	jb        LBB72_25
	jmp       LBB72_32
# ----------------------
	.p2align 4, 0x90
LBB72_23:
	movq      _cwd_n_used(%rip), %r8
LBB72_32:
	incq      %r14
	cmpq      %r8, %r14
	jb        LBB72_22
LBB72_33:
	notq      %r13
	notq      %r15
	cmpq      %r15, %r13
	cmova     %r13, %r15
	movq      $-2, %rax
	subq      %r15, %rax
	leaq      (%rax,%rax,2), %rcx
	shlq      $3, %rcx
	addq      _column_info(%rip), %rcx
# ----------------------
	.p2align 4, 0x90
LBB72_34:
	movq      %r12, %rax
	cmpq      $2, %rax
	jb        LBB72_36
	leaq      -1(%rax), %r12
	cmpb      $0, (%rcx)
	leaq      -24(%rcx), %rcx
	je        LBB72_34
LBB72_36:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB72_37:
	call      _xalloc_die
# ----------------------
	.p2align 4, 0x90
_length_of_file_name_and_frills:
	pushq     %rbp
Lcfi304:
Lcfi305:
	movq      %rsp, %rbp
Lcfi306:
	pushq     %r14
	pushq     %rbx
	subq      $304, %rsp
Lcfi307:
Lcfi308:
	movq      %rdi, %r14
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -24(%rbp)
	cmpb      $1, _print_inode(%rip)
	jne       LBB73_3
	cmpl      $4, _format(%rip)
	jne       LBB73_4
	movq      24(%r14), %rdi
	leaq      -304(%rbp), %rsi
	call      _umaxtostr
	movq      %rax, %rdi
	call      _strlen
	movq      %rax, %rbx
	jmp       LBB73_5
LBB73_3:
	xorl      %ebx, %ebx
	cmpb      $1, _print_block_size(%rip)
	je        LBB73_6
	jmp       LBB73_13
LBB73_4:
	movslq    _inode_number_width(%rip), %rbx
LBB73_5:
	incq      %rbx
	cmpb      $1, _print_block_size(%rip)
	jne       LBB73_13
LBB73_6:
	cmpl      $4, _format(%rip)
	jne       LBB73_9
	cmpb      $0, 176(%r14)
	je        LBB73_10
	movq      120(%r14), %rdi
	movl      _human_output_opts(%rip), %edx
	movq      _output_block_size(%rip), %r8
	leaq      -304(%rbp), %rsi
	movl      $512, %ecx
	call      _human_readable
	movq      %rax, %rdi
	jmp       LBB73_11
LBB73_9:
	movslq    _block_size_width(%rip), %rax
	jmp       LBB73_12
LBB73_10:
	leaq      L_.str.209(%rip), %rdi
LBB73_11:
	call      _strlen
LBB73_12:
	leaq      1(%rbx,%rax), %rbx
LBB73_13:
	cmpb      $1, _print_scontext(%rip)
	jne       LBB73_18
	cmpl      $4, _format(%rip)
	jne       LBB73_16
	movq      168(%r14), %rdi
	call      _strlen
	jmp       LBB73_17
LBB73_16:
	movslq    _scontext_width(%rip), %rax
LBB73_17:
	leaq      1(%rbx,%rax), %rbx
LBB73_18:
	movq      (%r14), %rsi
	movq      _filename_quoting_options(%rip), %rdx
	leaq      -312(%rbp), %rcx
	xorl      %edi, %edi
	call      _quote_name
	addq      -312(%rbp), %rbx
	movl      _indicator_style(%rip), %edi
	testl     %edi, %edi
	je        LBB73_41
	movb      176(%r14), %al
	testb     %al, %al
	movw      20(%r14), %si
	movl      160(%r14), %ecx
	je        LBB73_22
	movl      %esi, %edx
	andl      $61440, %edx
	cmpl      $32768, %edx
	je        LBB73_25
	movb      $64, %r8b
	movzwl    %dx, %edx
	cmpl      $16384, %edx
	je        LBB73_40
	jmp       LBB73_31
LBB73_22:
	movb      $64, %r8b
	cmpl      $3, %ecx
	je        LBB73_40
	cmpl      $9, %ecx
	je        LBB73_40
	cmpl      $5, %ecx
	jne       LBB73_31
LBB73_25:
	andl      $73, %esi
	xorl      %r8d, %r8d
	cmpl      $3, %edi
	movb      $42, %cl
	je        LBB73_27
	xorl      %ecx, %ecx
LBB73_27:
	testb     %al, %al
	je        LBB73_29
	movl      %ecx, %eax
LBB73_29:
	testw     %si, %si
	je        LBB73_40
	movb      %al, %r8b
	jmp       LBB73_40
LBB73_31:
	cmpl      $1, %edi
	jne       LBB73_33
LBB73_39:
	xorl      %r8d, %r8d
LBB73_40:
	cmpb      $1, %r8b
	sbbq      $-1, %rbx
LBB73_41:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -24(%rbp), %rax
	jne       LBB73_43
	movq      %rbx, %rax
	addq      $304, %rsp
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
LBB73_33:
	testb     %al, %al
	je        LBB73_37
	andl      $61440, %esi
	movb      $64, %r8b
	cmpl      $40960, %esi
	je        LBB73_40
	movzwl    %si, %eax
	cmpl      $49152, %eax
	je        LBB73_40
	cmpl      $4096, %eax
	je        LBB73_40
	jmp       LBB73_39
LBB73_37:
	decl      %ecx
	cmpl      $7, %ecx
	jae       LBB73_39
	shlb      $3, %cl
	movq      $17240342323527804, %r8
	shrq      %cl, %r8
	jmp       LBB73_40
LBB73_43:
	call      ___stack_chk_fail
# ----------------------
	.p2align 4, 0x90
_indent:
	pushq     %rbp
Lcfi309:
Lcfi310:
	movq      %rsp, %rbp
Lcfi311:
	pushq     %r15
	pushq     %r14
	pushq     %rbx
	pushq     %rax
Lcfi312:
Lcfi313:
Lcfi314:
	movq      %rsi, %r14
	movq      %rdi, %rbx
	cmpq      %r14, %rbx
	jae       LBB74_15
	movq      ___stdoutp@GOTPCREL(%rip), %r15
# ----------------------
	.p2align 4, 0x90
LBB74_2:
	movq      _tabsize(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB74_9
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rdi
	movq      %rax, %rcx
	leaq      1(%rbx), %rax
	xorl      %edx, %edx
	divq      %rdi
	cmpq      %rax, %rcx
	jbe       LBB74_9
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB74_6
	cmpl      40(%rsi), %eax
	jle       LBB74_7
LBB74_6:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $9, (%rax)
LBB74_8:
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %rdi
	addq      %rbx, %rdi
	subq      %rdx, %rdi
	movq      %rdi, %rbx
	cmpq      %r14, %rbx
	jb        LBB74_2
	jmp       LBB74_15
# ----------------------
	.p2align 4, 0x90
LBB74_9:
	movq      (%r15), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB74_11
	cmpl      40(%rsi), %eax
	jle       LBB74_12
LBB74_11:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
LBB74_13:
	incq      %rbx
	cmpq      %r14, %rbx
	jb        LBB74_2
	jmp       LBB74_15
LBB74_12:
	movl      $32, %edi
	call      ___swbuf
	jmp       LBB74_13
LBB74_7:
	movl      $9, %edi
	call      ___swbuf
	movq      _tabsize(%rip), %rdi
	jmp       LBB74_8
LBB74_15:
	addq      $8, %rsp
	popq      %rbx
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_format_user_or_group:
	pushq     %rbp
Lcfi315:
Lcfi316:
	movq      %rsp, %rbp
Lcfi317:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
Lcfi318:
Lcfi319:
Lcfi320:
Lcfi321:
	movl      %edx, %r15d
	movq      %rsi, %rcx
	movq      %rdi, %r14
	testq     %r14, %r14
	je        LBB75_9
	xorl      %ebx, %ebx
	xorl      %esi, %esi
	movq      %r14, %rdi
	call      _gnu_mbswidth
	subl      %eax, %r15d
	cmovs     %ebx, %r15d
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	movq      %r14, %rdi
	call      _fputs
	movq      %r14, %rdi
	call      _strlen
	movq      %rax, %r14
	movl      %r15d, %ebx
	notl      %ebx
# ----------------------
	.p2align 4, 0x90
LBB75_2:
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB75_4
	cmpl      40(%rsi), %eax
	jle       LBB75_5
LBB75_4:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $32, (%rax)
	incl      %ebx
	jne       LBB75_2
	jmp       LBB75_7
LBB75_5:
	movl      $32, %edi
	call      ___swbuf
	incl      %ebx
	jne       LBB75_2
LBB75_7:
	addq      %r15, %r14
	jmp       LBB75_8
LBB75_9:
	leaq      L_.str.214(%rip), %rdi
	xorl      %eax, %eax
	movl      %r15d, %esi
	movq      %rcx, %rdx
	call      _printf
	movslq    %r15d, %r14
LBB75_8:
	movq      _dired_pos(%rip), %rax
	leaq      1(%r14,%rax), %rax
	movq      %rax, _dired_pos(%rip)
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
	.p2align 4, 0x90
_align_nstrftime:
	pushq     %rbp
Lcfi322:
Lcfi323:
	movq      %rsp, %rbp
Lcfi324:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $184, %rsp
Lcfi325:
Lcfi326:
Lcfi327:
Lcfi328:
Lcfi329:
	movl      %ecx, %r14d
	movq      %rdx, %r12
	movq      %rsi, %rbx
	movq      %rdi, %r15
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      $0, _required_mon_width(%rip)
	je        LBB76_5
	leaq      L_.str.87(%rip), %rsi
	movq      %rbx, %rdi
	call      _strstr
	movq      %rax, %r13
	testq     %r13, %r13
	je        LBB76_5
	cmpl      $11, 16(%r12)
	ja        LBB76_5
	movq      %rbx, %rdi
	call      _strlen
	cmpq      $101, %rax
	ja        LBB76_5
	leaq      -224(%rbp), %rdi
	movq      %r13, %rdx
	subq      %rbx, %rdx
	movq      %rbx, %rsi
	movq      %rdx, %rbx
	call      _memcpy
	leaq      -224(%rbp,%rbx), %rdi
	movslq    16(%r12), %rax
	imulq     $61, %rax, %rax
	leaq      _abmon(%rip), %rsi
	addq      %rax, %rsi
	call      _stpcpy
	addq      $2, %r13
	movq      %rax, %rdi
	movq      %r13, %rsi
	call      _strcpy
	leaq      -224(%rbp), %rbx
LBB76_5:
	movl      $1001, %esi
	xorl      %r8d, %r8d
	movq      %r15, %rdi
	movq      %rbx, %rdx
	movq      %r12, %rcx
	movl      %r14d, %r9d
	call      _nstrftime
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq      (%rcx), %rcx
	cmpq      -48(%rbp), %rcx
	jne       LBB76_7
	addq      $184, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB76_7:
	call      ___stack_chk_fail
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_main.sig:
	.long	18
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
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.zero	1
L_.str.1:
	.asciz	"."
L___func__.main:
	.asciz	"main"
L_.str.2:
	.asciz	"src/ls.c"
L_.str.3:
	.asciz	"found"
L_.str.4:
	.asciz	"\033["
L_.str.5:
	.asciz	"//DIRED//"
L_.str.6:
	.asciz	"//SUBDIRED//"
L_.str.7:
	.asciz	"//DIRED-OPTIONS// --quoting-style=%s\n"
L_.str.8:
	.asciz	"hash_get_n_entries (active_dir_set) == 0"
L_.str.9:
	.asciz	"Usage: %s [OPTION]... [FILE]...\n"
L_.str.10:
	.asciz	"List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"
L_.str.11:
	.asciz	"  -a, --all                  do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"
L_.str.12:
	.asciz	"      --block-size=SIZE      scale sizes by SIZE before printing them; e.g.,\n                               '--block-size=M' prints sizes in units of\n                               1,048,576 bytes; see SIZE format below\n  -B, --ignore-backups       do not list implied entries ending with ~\n  -c                         with -lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"
L_.str.13:
	.asciz	"  -C                         list entries by columns\n      --color[=WHEN]         colorize the output; WHEN can be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"
L_.str.14:
	.asciz	"  -f                         do not sort, enable -aU, disable -ls --color\n  -F, --classify             append indicator (one of */=>@|) to entries\n      --file-type            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"
L_.str.15:
	.asciz	"  -g                         like -l, but do not list owner\n"
L_.str.16:
	.asciz	"      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"
L_.str.17:
	.asciz	"  -G, --no-group             in a long listing, don't print group names\n  -h, --human-readable       with -l and/or -s, print human readable sizes\n                               (e.g., 1K 234M 2G)\n      --si                   likewise, but use powers of 1000 not 1024\n"
L_.str.18:
	.asciz	"  -H, --dereference-command-line\n                             follow symbolic links listed on the command line\n      --dereference-command-line-symlink-to-dir\n                             follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"
L_.str.19:
	.asciz	"      --indicator-style=WORD  append indicator with style WORD to entry names:\n                               none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n  -k, --kibibytes            default to 1024-byte blocks for disk usage\n"
L_.str.20:
	.asciz	"  -l                         use a long listing format\n  -L, --dereference          when showing file information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"
L_.str.21:
	.asciz	"  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs\n  -N, --literal              print raw entry names (don't treat e.g. control\n                               characters specially)\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"
L_.str.22:
	.asciz	"  -q, --hide-control-chars   print ? instead of nongraphic characters\n      --show-control-chars   show nongraphic characters as-is (the default,\n                               unless program is 'ls' and output is a terminal)\n  -Q, --quote-name           enclose entry names in double quotes\n      --quoting-style=WORD   use quoting style WORD for entry names:\n                               literal, locale, shell, shell-always, c, escape\n"
L_.str.23:
	.asciz	"  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"
L_.str.24:
	.asciz	"  -S                         sort by file size, largest first\n      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),\n                               time (-t), version (-v), extension (-X)\n      --time=WORD            with -l, show time as WORD instead of default\n                               modification time: atime or access or use (-u);\n                               ctime or status (-c); also use specified time\n                               as sort key if --sort=time (newest first)\n"
L_.str.25:
	.asciz	"      --time-style=STYLE     with -l, show times using style STYLE:\n                               full-iso, long-iso, iso, locale, or +FORMAT;\n                               FORMAT is interpreted like in 'date'; if FORMAT\n                               is FORMAT1<newline>FORMAT2, then FORMAT1 applies\n                               to non-recent files and FORMAT2 to recent files;\n                               if STYLE is prefixed with 'posix-', STYLE\n                               takes effect only outside the POSIX locale\n"
L_.str.26:
	.asciz	"  -t                         sort by modification time, newest first\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"
L_.str.27:
	.asciz	"  -u                         with -lt: sort by, and show, access time;\n                               with -l: show access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"
L_.str.28:
	.asciz	"  -w, --width=COLS           assume screen width instead of current value\n  -x                         list entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"
L_.str.29:
	.asciz	"      --help     display this help and exit\n"
L_.str.30:
	.asciz	"      --version  output version information and exit\n"
L_.str.31:
	.asciz	"\nUsing color to distinguish file types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"
L_.str.32:
	.asciz	"\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"
L_.str.33:
	.asciz	"ls"
L_.str.34:
	.asciz	"dir"
L_.str.35:
	.asciz	"vdir"
L_.str.36:
	.asciz	"0"
L_.str.37:
	.asciz	"00"
L___func__.dev_ino_pop:
	.asciz	"dev_ino_pop"
L_.str.38:
	.asciz	"dev_ino_size <= obstack_object_size (&dev_ino_obstack)"
L_.str.39:
	.asciz	"m"
L_.str.40:
	.asciz	"01;34"
L_.str.41:
	.asciz	"01;36"
L_.str.42:
	.asciz	"33"
L_.str.43:
	.asciz	"01;35"
L_.str.44:
	.asciz	"01;33"
L_.str.45:
	.asciz	"01;32"
L_.str.46:
	.asciz	"37;41"
L_.str.47:
	.asciz	"30;43"
L_.str.48:
	.asciz	"37;44"
L_.str.49:
	.asciz	"34;42"
L_.str.50:
	.asciz	"30;42"
L_.str.51:
	.asciz	"30;41"
L_.str.52:
	.asciz	"\033[K"
L_.str.53:
	.asciz	" %lu"
L_.str.54:
	.asciz	"COLUMNS"
L_.str.55:
	.asciz	"ignoring invalid width in environment variable COLUMNS: %s"
L_.str.56:
	.asciz	"TABSIZE"
L_.str.57:
	.asciz	"ignoring invalid tab size in environment variable TABSIZE: %s"
L_.str.58:
	.asciz	"abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
L_.str.59:
	.asciz	"invalid line width"
L_.str.60:
	.asciz	"*~"
L_.str.61:
	.asciz	".*~"
L_.str.62:
	.asciz	"invalid tab size"
L_.str.63:
	.asciz	"--sort"
L_.str.64:
	.asciz	"--time"
L_.str.65:
	.asciz	"--format"
L_.str.66:
	.asciz	"full-iso"
L_.str.67:
	.asciz	"--color"
L_.str.68:
	.asciz	"--indicator-style"
L_.str.69:
	.asciz	"--quoting-style"
L_.str.70:
	.asciz	"GNU coreutils"
L_.str.71:
	.asciz	"Richard M. Stallman"
L_.str.72:
	.asciz	"David MacKenzie"
L_.str.73:
	.asciz	"LS_BLOCK_SIZE"
L_.str.74:
	.asciz	"BLOCK_SIZE"
L_.str.75:
	.asciz	"*=>@|"
L_.str.76:
	.asciz	"TIME_STYLE"
L_.str.77:
	.asciz	"locale"
L_.str.78:
	.asciz	"invalid time style format %s"
L_.str.79:
	.asciz	"time style"
L_.str.80:
	.asciz	"Valid arguments are:\n"
L_.str.81:
	.asciz	"  - [posix-]%s\n"
L_.str.82:
	.asciz	"  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"
L_.str.83:
	.asciz	"%Y-%m-%d %H:%M:%S.%N %z"
L_.str.84:
	.asciz	"%Y-%m-%d %H:%M"
L_.str.85:
	.asciz	"%Y-%m-%d "
L_.str.86:
	.asciz	"%m-%d %H:%M"
L_.str.87:
	.asciz	"%b"
L_.str.88:
	.asciz	"error initializing month strings"
L_.str.89:
	.asciz	"QUOTING_STYLE"
L_.str.90:
	.asciz	"ignoring invalid value of environment variable QUOTING_STYLE: %s"
L_.str.91:
	.asciz	"all"
L_.str.92:
	.asciz	"escape"
L_.str.93:
	.asciz	"directory"
L_.str.94:
	.asciz	"dired"
L_.str.95:
	.asciz	"full-time"
L_.str.96:
	.asciz	"group-directories-first"
L_.str.97:
	.asciz	"human-readable"
L_.str.98:
	.asciz	"inode"
L_.str.99:
	.asciz	"kibibytes"
L_.str.100:
	.asciz	"numeric-uid-gid"
L_.str.101:
	.asciz	"no-group"
L_.str.102:
	.asciz	"hide-control-chars"
L_.str.103:
	.asciz	"reverse"
L_.str.104:
	.asciz	"size"
L_.str.105:
	.asciz	"width"
L_.str.106:
	.asciz	"almost-all"
L_.str.107:
	.asciz	"ignore-backups"
L_.str.108:
	.asciz	"classify"
L_.str.109:
	.asciz	"file-type"
L_.str.110:
	.asciz	"si"
L_.str.111:
	.asciz	"dereference-command-line"
L_.str.112:
	.asciz	"dereference-command-line-symlink-to-dir"
L_.str.113:
	.asciz	"hide"
L_.str.114:
	.asciz	"ignore"
L_.str.115:
	.asciz	"indicator-style"
L_.str.116:
	.asciz	"dereference"
L_.str.117:
	.asciz	"literal"
L_.str.118:
	.asciz	"quote-name"
L_.str.119:
	.asciz	"quoting-style"
L_.str.120:
	.asciz	"recursive"
L_.str.121:
	.asciz	"format"
L_.str.122:
	.asciz	"show-control-chars"
L_.str.123:
	.asciz	"sort"
L_.str.124:
	.asciz	"tabsize"
L_.str.125:
	.asciz	"time"
L_.str.126:
	.asciz	"time-style"
L_.str.127:
	.asciz	"color"
L_.str.128:
	.asciz	"block-size"
L_.str.129:
	.asciz	"context"
L_.str.130:
	.asciz	"author"
L_.str.131:
	.asciz	"help"
L_.str.132:
	.asciz	"version"
L_.str.133:
	.asciz	"none"
L_.str.134:
	.asciz	"extension"
L_.str.135:
	.asciz	"atime"
L_.str.136:
	.asciz	"access"
L_.str.137:
	.asciz	"use"
L_.str.138:
	.asciz	"ctime"
L_.str.139:
	.asciz	"status"
L_.str.140:
	.asciz	"verbose"
L_.str.141:
	.asciz	"long"
L_.str.142:
	.asciz	"commas"
L_.str.143:
	.asciz	"horizontal"
L_.str.144:
	.asciz	"across"
L_.str.145:
	.asciz	"vertical"
L_.str.146:
	.asciz	"single-column"
L_.str.147:
	.asciz	"always"
L_.str.148:
	.asciz	"yes"
L_.str.149:
	.asciz	"force"
L_.str.150:
	.asciz	"never"
L_.str.151:
	.asciz	"no"
L_.str.152:
	.asciz	"auto"
L_.str.153:
	.asciz	"tty"
L_.str.154:
	.asciz	"if-tty"
L_.str.155:
	.asciz	"slash"
L_.str.156:
	.asciz	"%b %e  %Y"
L_.str.157:
	.asciz	"%b %e %H:%M"
L_.str.158:
	.asciz	"long-iso"
L_.str.159:
	.asciz	"iso"
L_.str.160:
	.asciz	"LS_COLORS"
L_.str.161:
	.asciz	"COLORTERM"
L_.str.162:
	.asciz	"?\077"
L_.str.163:
	.asciz	"unrecognized prefix: %s"
L_.str.164:
	.asciz	"unparsable value for LS_COLORS environment variable"
L_.str.165:
	.asciz	"target"
L_.str.166:
	.asciz	"TERM"
L_.str.167:
	.asciz	"TERM "
L_.str.168:
	.asciz	"lc"
L_.str.169:
	.asciz	"rc"
L_.str.170:
	.asciz	"ec"
L_.str.171:
	.asciz	"rs"
L_.str.172:
	.asciz	"fi"
L_.str.173:
	.asciz	"di"
L_.str.174:
	.asciz	"ln"
L_.str.175:
	.asciz	"pi"
L_.str.176:
	.asciz	"so"
L_.str.177:
	.asciz	"bd"
L_.str.178:
	.asciz	"cd"
L_.str.179:
	.asciz	"mi"
L_.str.180:
	.asciz	"or"
L_.str.181:
	.asciz	"ex"
L_.str.182:
	.asciz	"do"
L_.str.183:
	.asciz	"su"
L_.str.184:
	.asciz	"sg"
L_.str.185:
	.asciz	"st"
L_.str.186:
	.asciz	"ow"
L_.str.187:
	.asciz	"tw"
L_.str.188:
	.asciz	"ca"
L_.str.189:
	.asciz	"mh"
L_.str.190:
	.asciz	"cl"
L_.str.191:
	.asciz	"cannot open directory %s"
L_.str.192:
	.asciz	"cannot determine device and inode of %s"
L_.str.193:
	.asciz	"%s: not listing already-listed directory"
L_.str.194:
	.asciz	"  "
L_.str.195:
	.asciz	":\n"
L_.str.196:
	.asciz	"reading directory %s"
L_.str.197:
	.asciz	"closing directory %s"
L_.str.198:
	.asciz	"total"
L_.str.200:
	.asciz	"cannot access %s"
L_.str.203:
	.asciz	"%s"
L_.str.204:
	.asciz	"cannot read symbolic link %s"
L_.str.205:
	.asciz	"%lu"
L___func__.sort_files:
	.asciz	"sort_files"
L_.str.206:
	.asciz	"sort_type != sort_version"
L_.str.207:
	.asciz	"cannot compare file names %s and %s"
L_.str.208:
	.asciz	"%*s "
L_.str.209:
	.asciz	"?"
_filetype_letter:
	.asciz	"?pcdb-lswd"
L_.str.211:
	.asciz	"%s %*s "
L_.str.212:
	.asciz	"%*s, %*s "
L_.str.213:
	.asciz	" -> "
L_.str.214:
	.asciz	"%*lu "
L_.str.215:
	.asciz	"Try '%s --help' for more information.\n"
L_.str.216:
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"
L_.str.217:
	.asciz	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\n"
L_.str.218:
	.asciz	"["
L_.str.219:
	.asciz	"test invocation"
L_.str.220:
	.asciz	"coreutils"
L_.str.221:
	.asciz	"Multi-call invocation"
L_.str.222:
	.asciz	"sha224sum"
L_.str.223:
	.asciz	"sha2 utilities"
L_.str.224:
	.asciz	"sha256sum"
L_.str.225:
	.asciz	"sha384sum"
L_.str.226:
	.asciz	"sha512sum"
L_.str.227:
	.asciz	"\n%s online help: <%s>\n"
L_.str.228:
	.asciz	"http://www.gnu.org/software/coreutils/"
L_.str.229:
	.asciz	"en_"
L_.str.230:
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"
L_.str.231:
	.asciz	"Full documentation at: <%s%s>\n"
L_.str.232:
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"
L_.str.233:
	.asciz	" invocation"
# ----------------------
.zerofill __DATA,__bss,_exit_status,4,2
# ----------------------
.zerofill __DATA,__bss,_print_dir_name,1,0
# ----------------------
.zerofill __DATA,__bss,_pending_dirs,8,3
# ----------------------
.zerofill __DATA,__bss,_current_time,16,4
# ----------------------
.zerofill __DATA,__bss,_print_with_color,1,0
# ----------------------
.zerofill __DATA,__bss,_color_symlink_as_referent,1,0
# ----------------------
.zerofill __DATA,__bss,_format,4,2
# ----------------------
.zerofill __DATA,__bss,_check_symlink_color,1,0
# ----------------------
.zerofill __DATA,__bss,_caught_signals,4,2
# ----------------------
.zerofill __DATA,__bss,_dereference,4,2
# ----------------------
.zerofill __DATA,__bss,_immediate_dirs,1,0
# ----------------------
.zerofill __DATA,__bss,_indicator_style,4,2
# ----------------------
.zerofill __DATA,__bss,_recursive,1,0
# ----------------------
.zerofill __DATA,__bss,_active_dir_set,8,3
# ----------------------
.zerofill __DATA,__bss,_dev_ino_obstack,88,3
# ----------------------
.zerofill __DATA,__bss,_sort_type,4,2
# ----------------------
.zerofill __DATA,__bss,_print_scontext,1,0
# ----------------------
.zerofill __DATA,__bss,_print_block_size,1,0
# ----------------------
.zerofill __DATA,__bss,_format_needs_stat,1,0
# ----------------------
.zerofill __DATA,__bss,_directories_first,1,0
# ----------------------
.zerofill __DATA,__bss,_format_needs_type,1,0
# ----------------------
.zerofill __DATA,__bss,_dired,1,0
# ----------------------
.zerofill __DATA,__bss,_dired_obstack,88,3
# ----------------------
.zerofill __DATA,__bss,_subdired_obstack,88,3
# ----------------------
.zerofill __DATA,__bss,_cwd_n_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_cwd_file,8,3
# ----------------------
.zerofill __DATA,__bss,_cwd_n_used,8,3
# ----------------------
.zerofill __DATA,__bss,_dired_pos,8,3
# ----------------------
.zerofill __DATA,__bss,_used_color,1,0
# ----------------------
	.section       __DATA,__data
	.p2align 4
_color_indicator:
	.quad	2
	.quad	L_.str.4
	.quad	1
	.quad	L_.str.39
	.zero	16
	.quad	1
	.quad	L_.str.36
	.zero	16
	.zero	16
	.quad	5
	.quad	L_.str.40
	.quad	5
	.quad	L_.str.41
	.quad	2
	.quad	L_.str.42
	.quad	5
	.quad	L_.str.43
	.quad	5
	.quad	L_.str.44
	.quad	5
	.quad	L_.str.44
	.zero	16
	.zero	16
	.quad	5
	.quad	L_.str.45
	.quad	5
	.quad	L_.str.43
	.quad	5
	.quad	L_.str.46
	.quad	5
	.quad	L_.str.47
	.quad	5
	.quad	L_.str.48
	.quad	5
	.quad	L_.str.49
	.quad	5
	.quad	L_.str.50
	.quad	5
	.quad	L_.str.51
	.zero	16
	.quad	3
	.quad	L_.str.52
# ----------------------
.zerofill __DATA,__bss,_stop_signal_count,4,2
# ----------------------
.zerofill __DATA,__bss,_interrupt_signal,4,2
# ----------------------
.zerofill __DATA,__bss,_filename_quoting_options,8,3
# ----------------------
.zerofill __DATA,__bss,_qmark_funny_chars,1,0
# ----------------------
.zerofill __DATA,__bss,_time_type,4,2
# ----------------------
.zerofill __DATA,__bss,_sort_reverse,1,0
# ----------------------
.zerofill __DATA,__bss,_numeric_ids,1,0
# ----------------------
.zerofill __DATA,__bss,_print_inode,1,0
# ----------------------
.zerofill __DATA,__bss,_ignore_mode,4,2
# ----------------------
.zerofill __DATA,__bss,_ignore_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_hide_patterns,8,3
# ----------------------
.zerofill __DATA,__bss,_line_length,8,3
# ----------------------
.zerofill __DATA,__bss,_tabsize,8,3
# ----------------------
	.section       __DATA,__const
	.p2align 4
_long_options:
	.quad	L_.str.91
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	L_.str.92
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	L_.str.93
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	L_.str.94
	.long	0
	.zero	4
	.quad	0
	.long	68
	.zero	4
	.quad	L_.str.95
	.long	0
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	L_.str.96
	.long	0
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	L_.str.97
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	L_.str.98
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	L_.str.99
	.long	0
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	L_.str.100
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	L_.str.101
	.long	0
	.zero	4
	.quad	0
	.long	71
	.zero	4
	.quad	L_.str.102
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	L_.str.103
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	L_.str.104
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	L_.str.105
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	L_.str.106
	.long	0
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	L_.str.107
	.long	0
	.zero	4
	.quad	0
	.long	66
	.zero	4
	.quad	L_.str.108
	.long	0
	.zero	4
	.quad	0
	.long	70
	.zero	4
	.quad	L_.str.109
	.long	0
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	L_.str.110
	.long	0
	.zero	4
	.quad	0
	.long	140
	.zero	4
	.quad	L_.str.111
	.long	0
	.zero	4
	.quad	0
	.long	72
	.zero	4
	.quad	L_.str.112
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	L_.str.113
	.long	1
	.zero	4
	.quad	0
	.long	136
	.zero	4
	.quad	L_.str.114
	.long	1
	.zero	4
	.quad	0
	.long	73
	.zero	4
	.quad	L_.str.115
	.long	1
	.zero	4
	.quad	0
	.long	137
	.zero	4
	.quad	L_.str.116
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	L_.str.117
	.long	0
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	L_.str.118
	.long	0
	.zero	4
	.quad	0
	.long	81
	.zero	4
	.quad	L_.str.119
	.long	1
	.zero	4
	.quad	0
	.long	138
	.zero	4
	.quad	L_.str.120
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	L_.str.121
	.long	1
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	L_.str.122
	.long	0
	.zero	4
	.quad	0
	.long	139
	.zero	4
	.quad	L_.str.123
	.long	1
	.zero	4
	.quad	0
	.long	141
	.zero	4
	.quad	L_.str.124
	.long	1
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	L_.str.125
	.long	1
	.zero	4
	.quad	0
	.long	142
	.zero	4
	.quad	L_.str.126
	.long	1
	.zero	4
	.quad	0
	.long	143
	.zero	4
	.quad	L_.str.127
	.long	2
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	L_.str.128
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	L_.str.129
	.long	0
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	L_.str.130
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	L_.str.131
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	L_.str.132
	.long	0
	.zero	4
	.quad	0
	.long	-131
	.zero	4
	.zero	32
# ----------------------
.zerofill __DATA,__bss,_print_owner,1,0
# ----------------------
.zerofill __DATA,__bss,_human_output_opts,4,2
# ----------------------
.zerofill __DATA,__bss,_file_human_output_opts,4,2
# ----------------------
.zerofill __DATA,__bss,_output_block_size,8,3
# ----------------------
	.section       __DATA,__data
	.p2align 3
_file_output_block_size:
	.quad	1
# ----------------------
.zerofill __DATA,__bss,_print_group,1,0
# ----------------------
.zerofill __DATA,__bss,_print_author,1,0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_sort_types:
	.long	-1
	.long	4
	.long	2
	.long	1
	.long	3
# ----------------------
	.section       __DATA,__const
	.p2align 4
_sort_args:
	.quad	L_.str.133
	.quad	L_.str.125
	.quad	L_.str.104
	.quad	L_.str.134
	.quad	L_.str.132
	.quad	0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_time_types:
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
# ----------------------
	.section       __DATA,__const
	.p2align 4
_time_args:
	.quad	L_.str.135
	.quad	L_.str.136
	.quad	L_.str.137
	.quad	L_.str.138
	.quad	L_.str.139
	.quad	0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_format_types:
	.long	0
	.long	0
	.long	4
	.long	3
	.long	3
	.long	2
	.long	1
# ----------------------
	.section       __DATA,__const
	.p2align 4
_format_args:
	.quad	L_.str.140
	.quad	L_.str.141
	.quad	L_.str.142
	.quad	L_.str.143
	.quad	L_.str.144
	.quad	L_.str.145
	.quad	L_.str.146
	.quad	0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_color_types:
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
# ----------------------
	.section       __DATA,__const
	.p2align 4
_color_args:
	.quad	L_.str.147
	.quad	L_.str.148
	.quad	L_.str.149
	.quad	L_.str.150
	.quad	L_.str.151
	.quad	L_.str.133
	.quad	L_.str.152
	.quad	L_.str.153
	.quad	L_.str.154
	.quad	0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_indicator_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
_decode_switches.posix_prefix:
	.asciz	"posix-"
# ----------------------
	.section       __DATA,__const
	.p2align 4
_indicator_style_args:
	.quad	L_.str.133
	.quad	L_.str.155
	.quad	L_.str.109
	.quad	L_.str.108
	.quad	0
# ----------------------
.zerofill __DATA,__bss,_max_idx,8,3
# ----------------------
.zerofill __DATA,__bss,_dirname_quoting_options,8,3
# ----------------------
	.section       __DATA,__data
	.p2align 4
_long_time_format:
	.quad	L_.str.156
	.quad	L_.str.157
_UNKNOWN_SECURITY_CONTEXT:
	.asciz	"?"
# ----------------------
	.section       __DATA,__const
	.p2align 4
_time_style_args:
	.quad	L_.str.66
	.quad	L_.str.158
	.quad	L_.str.159
	.quad	L_.str.77
	.quad	0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_time_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
# ----------------------
.zerofill __DATA,__bss,_required_mon_width,8,3
# ----------------------
.zerofill __DATA,__bss,_abmon,732,4
# ----------------------
.zerofill __DATA,__bss,_color_buf,8,3
# ----------------------
.zerofill __DATA,__bss,_color_ext_list,8,3
# ----------------------
	.section       __DATA,__const
	.p2align 4
_indicator_name:
	.quad	L_.str.168
	.quad	L_.str.169
	.quad	L_.str.170
	.quad	L_.str.171
	.quad	L_.str.151
	.quad	L_.str.172
	.quad	L_.str.173
	.quad	L_.str.174
	.quad	L_.str.175
	.quad	L_.str.176
	.quad	L_.str.177
	.quad	L_.str.178
	.quad	L_.str.179
	.quad	L_.str.180
	.quad	L_.str.181
	.quad	L_.str.182
	.quad	L_.str.183
	.quad	L_.str.184
	.quad	L_.str.185
	.quad	L_.str.186
	.quad	L_.str.187
	.quad	L_.str.188
	.quad	L_.str.189
	.quad	L_.str.190
	.quad	0
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_G_line:
	.asciz	"# Configuration file for dircolors, a utility to help you set the\000# LS_COLORS environment variable used by GNU ls with the --color option.\000# Copyright (C) 1996-2015 Free Software Foundation, Inc.\000# Copying and distribution of this file, with or without modification,\000# are permitted provided the copyright notice and this notice are preserved.\000# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\000# slackware version of dircolors) are recognized but ignored.\000# Below, there should be one TERM entry for each termtype that is colorizable\000TERM Eterm\000TERM ansi\000TERM color-xterm\000TERM con132x25\000TERM con132x30\000TERM con132x43\000TERM con132x60\000TERM con80x25\000TERM con80x28\000TERM con80x30\000TERM con80x43\000TERM con80x50\000TERM con80x60\000TERM cons25\000TERM console\000TERM cygwin\000TERM dtterm\000TERM eterm-color\000TERM gnome\000TERM gnome-256color\000TERM hurd\000TERM jfbterm\000TERM konsole\000TERM kterm\000TERM linux\000TERM linux-c\000TERM mach-color\000TERM mach-gnu-color\000TERM mlterm\000TERM putty\000TERM putty-256color\000TERM rxvt\000TERM rxvt-256color\000TERM rxvt-cygwin\000TERM rxvt-cygwin-native\000TERM rxvt-unicode\000TERM rxvt-unicode-256color\000TERM rxvt-unicode256\000TERM screen\000TERM screen-256color\000TERM screen-256color-bce\000TERM screen-bce\000TERM screen-w\000TERM screen.Eterm\000TERM screen.rxvt\000TERM screen.linux\000TERM st\000TERM st-256color\000TERM terminator\000TERM vt100\000TERM xterm\000TERM xterm-16color\000TERM xterm-256color\000TERM xterm-88color\000TERM xterm-color\000TERM xterm-debian\000# Below are the color init strings for the basic file types. A color init\000# string consists of one or more of the following numeric codes:\000# Attribute codes:\000# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\000# Text color codes:\000# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\000# Background color codes:\000# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\000#NORMAL 00 # no color code at all\000#FILE 00 # regular file: use no color at all\000RESET 0 # reset to \"normal\" color\000DIR 01;34 # directory\000LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\000 # numerical value, the color is as for the file pointed to.)\000MULTIHARDLINK 00 # regular file with more than one link\000FIFO 40;33 # pipe\000SOCK 01;35 # socket\000DOOR 01;35 # door\000BLK 40;33;01 # block device driver\000CHR 40;33;01 # character device driver\000ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\000MISSING 00 # ... and the files they point to\000SETUID 37;41 # file that is setuid (u+s)\000SETGID 30;43 # file that is setgid (g+s)\000CAPABILITY 30;41 # file with capability\000STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\000OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\000STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\000# This is for files with execute permission:\000EXEC 01;32\000# List any file extensions like '.gz' or '.tar' that you would like ls\000# to colorize below. Put the extension, a space, and the color init string.\000# (and any comments you want to add after a '#')\000# If you use DOS-style suffixes, you may want to uncomment the following:\000#.cmd 01;32 # executables (bright green)\000#.exe 01;32\000#.com 01;32\000#.btm 01;32\000#.bat 01;32\000# Or if you want to colorize scripts even if they do not have the\000# executable bit actually set.\000#.sh 01;32\000#.csh 01;32\000 # archives or compressed (bright red)\000.tar 01;31\000.tgz 01;31\000.arc 01;31\000.arj 01;31\000.taz 01;31\000.lha 01;31\000.lz4 01;31\000.lzh 01;31\000.lzma 01;31\000.tlz 01;31\000.txz 01;31\000.tzo 01;31\000.t7z 01;31\000.zip 01;31\000.z 01;31\000.Z 01;31\000.dz 01;31\000.gz 01;31\000.lrz 01;31\000.lz 01;31\000.lzo 01;31\000.xz 01;31\000.bz2 01;31\000.bz 01;31\000.tbz 01;31\000.tbz2 01;31\000.tz 01;31\000.deb 01;31\000.rpm 01;31\000.jar 01;31\000.war 01;31\000.ear 01;31\000.sar 01;31\000.rar 01;31\000.alz 01;31\000.ace 01;31\000.zoo 01;31\000.cpio 01;31\000.7z 01;31\000.rz 01;31\000.cab 01;31\000# image formats\000.jpg 01;35\000.jpeg 01;35\000.gif 01;35\000.bmp 01;35\000.pbm 01;35\000.pgm 01;35\000.ppm 01;35\000.tga 01;35\000.xbm 01;35\000.xpm 01;35\000.tif 01;35\000.tiff 01;35\000.png 01;35\000.svg 01;35\000.svgz 01;35\000.mng 01;35\000.pcx 01;35\000.mov 01;35\000.mpg 01;35\000.mpeg 01;35\000.m2v 01;35\000.mkv 01;35\000.webm 01;35\000.ogm 01;35\000.mp4 01;35\000.m4v 01;35\000.mp4v 01;35\000.vob 01;35\000.qt 01;35\000.nuv 01;35\000.wmv 01;35\000.asf 01;35\000.rm 01;35\000.rmvb 01;35\000.flc 01;35\000.avi 01;35\000.fli 01;35\000.flv 01;35\000.gl 01;35\000.dl 01;35\000.xcf 01;35\000.xwd 01;35\000.yuv 01;35\000.cgm 01;35\000.emf 01;35\000# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions\000.ogv 01;35\000.ogx 01;35\000# audio formats\000.aac 00;36\000.au 00;36\000.flac 00;36\000.m4a 00;36\000.mid 00;36\000.midi 00;36\000.mka 00;36\000.mp3 00;36\000.mpc 00;36\000.ogg 00;36\000.ra 00;36\000.wav 00;36\000# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions\000.oga 00;36\000.opus 00;36\000.spx 00;36\000.xspf 00;36"
# ----------------------
.zerofill __DATA,__bss,_print_dir.first,1,0
# ----------------------
.zerofill __DATA,__bss,_sorted_file,8,3
# ----------------------
.zerofill __DATA,__bss,_any_has_acl,1,0
# ----------------------
.zerofill __DATA,__bss,_inode_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_block_size_width,4,2
# ----------------------
.zerofill __DATA,__bss,_nlink_width,4,2
# ----------------------
.zerofill __DATA,__bss,_owner_width,4,2
# ----------------------
.zerofill __DATA,__bss,_group_width,4,2
# ----------------------
.zerofill __DATA,__bss,_author_width,4,2
# ----------------------
.zerofill __DATA,__bss,_scontext_width,4,2
# ----------------------
.zerofill __DATA,__bss,_major_device_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_minor_device_number_width,4,2
# ----------------------
.zerofill __DATA,__bss,_file_size_width,4,2
# ----------------------
.zerofill __DATA,__bss,_has_capability_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_getfilecon_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_file_has_acl_cache.unsupported_device,4,2
# ----------------------
.zerofill __DATA,__bss,_sorted_file_alloc,8,3
# ----------------------
.zerofill __DATA,__bss,_failed_strcoll,148,4
# ----------------------
	.section       __DATA,__const
	.p2align 4
_sort_functions:
	.quad	_xstrcoll_name
	.quad	_xstrcoll_df_name
	.quad	_rev_xstrcoll_name
	.quad	_rev_xstrcoll_df_name
	.quad	_strcmp_name
	.quad	_strcmp_df_name
	.quad	_rev_strcmp_name
	.quad	_rev_strcmp_df_name
	.quad	_xstrcoll_extension
	.quad	_xstrcoll_df_extension
	.quad	_rev_xstrcoll_extension
	.quad	_rev_xstrcoll_df_extension
	.quad	_strcmp_extension
	.quad	_strcmp_df_extension
	.quad	_rev_strcmp_extension
	.quad	_rev_strcmp_df_extension
	.quad	_xstrcoll_size
	.quad	_xstrcoll_df_size
	.quad	_rev_xstrcoll_size
	.quad	_rev_xstrcoll_df_size
	.quad	_strcmp_size
	.quad	_strcmp_df_size
	.quad	_rev_strcmp_size
	.quad	_rev_strcmp_df_size
	.quad	_xstrcoll_version
	.quad	_xstrcoll_df_version
	.quad	_rev_xstrcoll_version
	.quad	_rev_xstrcoll_df_version
	.zero	32
	.quad	_xstrcoll_mtime
	.quad	_xstrcoll_df_mtime
	.quad	_rev_xstrcoll_mtime
	.quad	_rev_xstrcoll_df_mtime
	.quad	_strcmp_mtime
	.quad	_strcmp_df_mtime
	.quad	_rev_strcmp_mtime
	.quad	_rev_strcmp_df_mtime
	.quad	_xstrcoll_ctime
	.quad	_xstrcoll_df_ctime
	.quad	_rev_xstrcoll_ctime
	.quad	_rev_xstrcoll_df_ctime
	.quad	_strcmp_ctime
	.quad	_strcmp_df_ctime
	.quad	_rev_strcmp_ctime
	.quad	_rev_strcmp_df_ctime
	.quad	_xstrcoll_atime
	.quad	_xstrcoll_df_atime
	.quad	_rev_xstrcoll_atime
	.quad	_rev_xstrcoll_df_atime
	.quad	_strcmp_atime
	.quad	_strcmp_df_atime
	.quad	_rev_strcmp_atime
	.quad	_rev_strcmp_df_atime
# ----------------------
	.section       __TEXT,__const
	.p2align 4
_print_color_indicator.filetype_indicator:
	.long	13
	.long	8
	.long	11
	.long	6
	.long	10
	.long	5
	.long	7
	.long	9
	.long	5
	.long	6
# ----------------------
.zerofill __DATA,__bss,_column_info,8,3
# ----------------------
.zerofill __DATA,__bss,_init_column_info.column_info_alloc,8,3
# ----------------------
	.section       __DATA,__data
	.p2align 2
_long_time_expected_width.width:
	.long	-1
# ----------------------
	.section       __DATA,__const
	.p2align 4
_emit_ancillary_info.infomap:
	.quad	L_.str.218
	.quad	L_.str.219
	.quad	L_.str.220
	.quad	L_.str.221
	.quad	L_.str.222
	.quad	L_.str.223
	.quad	L_.str.224
	.quad	L_.str.223
	.quad	L_.str.225
	.quad	L_.str.223
	.quad	L_.str.226
	.quad	L_.str.223
	.zero	16
# ----------------------
	.section       __TEXT,__const
	.p2align 4
l_switch.table:
	.long	1
	.long	2
	.long	0
	.long	3
	.long	0
	.long	4
	.long	0
	.long	5
	.long	0
	.long	6
	.long	0
	.long	7
	.long	0
	.long	8
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.p2align 4
L_.memset_pattern:
	.quad	3
	.quad	3
# ----------------------
	.set	L0_0_set_251,LBB0_251-LJTI0_0
	.set	L0_0_set_252,LBB0_252-LJTI0_0
	.set	L0_0_set_253,LBB0_253-LJTI0_0
	.set	L0_0_set_98,LBB0_98-LJTI0_0
	.set	L0_0_set_29,LBB0_29-LJTI0_0
	.set	L0_0_set_34,LBB0_34-LJTI0_0
	.set	L0_0_set_36,LBB0_36-LJTI0_0
	.set	L0_0_set_37,LBB0_37-LJTI0_0
	.set	L0_0_set_38,LBB0_38-LJTI0_0
	.set	L0_0_set_39,LBB0_39-LJTI0_0
	.set	L0_0_set_65,LBB0_65-LJTI0_0
	.set	L0_0_set_40,LBB0_40-LJTI0_0
	.set	L0_0_set_41,LBB0_41-LJTI0_0
	.set	L0_0_set_43,LBB0_43-LJTI0_0
	.set	L0_0_set_44,LBB0_44-LJTI0_0
	.set	L0_0_set_45,LBB0_45-LJTI0_0
	.set	L0_0_set_46,LBB0_46-LJTI0_0
	.set	L0_0_set_47,LBB0_47-LJTI0_0
	.set	L0_0_set_48,LBB0_48-LJTI0_0
	.set	L0_0_set_49,LBB0_49-LJTI0_0
	.set	L0_0_set_50,LBB0_50-LJTI0_0
	.set	L0_0_set_51,LBB0_51-LJTI0_0
	.set	L0_0_set_52,LBB0_52-LJTI0_0
	.set	L0_0_set_53,LBB0_53-LJTI0_0
	.set	L0_0_set_54,LBB0_54-LJTI0_0
	.set	L0_0_set_55,LBB0_55-LJTI0_0
	.set	L0_0_set_56,LBB0_56-LJTI0_0
	.set	L0_0_set_59,LBB0_59-LJTI0_0
	.set	L0_0_set_60,LBB0_60-LJTI0_0
	.set	L0_0_set_84,LBB0_84-LJTI0_0
	.set	L0_0_set_26,LBB0_26-LJTI0_0
	.set	L0_0_set_63,LBB0_63-LJTI0_0
	.set	L0_0_set_61,LBB0_61-LJTI0_0
	.set	L0_0_set_62,LBB0_62-LJTI0_0
	.set	L0_0_set_64,LBB0_64-LJTI0_0
	.set	L0_0_set_66,LBB0_66-LJTI0_0
	.set	L0_0_set_67,LBB0_67-LJTI0_0
	.set	L0_0_set_68,LBB0_68-LJTI0_0
	.set	L0_0_set_85,LBB0_85-LJTI0_0
	.set	L0_0_set_31,LBB0_31-LJTI0_0
	.set	L0_0_set_69,LBB0_69-LJTI0_0
	.set	L0_0_set_70,LBB0_70-LJTI0_0
	.set	L0_0_set_86,LBB0_86-LJTI0_0
	.set	L0_0_set_71,LBB0_71-LJTI0_0
	.set	L0_0_set_72,LBB0_72-LJTI0_0
	.set	L0_0_set_32,LBB0_32-LJTI0_0
	.set	L0_0_set_73,LBB0_73-LJTI0_0
	.set	L0_0_set_77,LBB0_77-LJTI0_0
	.set	L0_0_set_78,LBB0_78-LJTI0_0
	.set	L0_0_set_87,LBB0_87-LJTI0_0
	.set	L0_0_set_88,LBB0_88-LJTI0_0
	.set	L0_0_set_89,LBB0_89-LJTI0_0
	.set	L0_0_set_79,LBB0_79-LJTI0_0
	.set	L0_0_set_80,LBB0_80-LJTI0_0
	.set	L0_0_set_90,LBB0_90-LJTI0_0
	.set	L0_0_set_81,LBB0_81-LJTI0_0
	.set	L0_0_set_91,LBB0_91-LJTI0_0
	.set	L0_0_set_82,LBB0_82-LJTI0_0
	.set	L0_0_set_93,LBB0_93-LJTI0_0
	.set	L0_0_set_83,LBB0_83-LJTI0_0
	.set	L0_1_set_137,LBB0_137-LJTI0_1
	.set	L0_1_set_138,LBB0_138-LJTI0_1
	.set	L0_1_set_140,LBB0_140-LJTI0_1
	.set	L0_1_set_141,LBB0_141-LJTI0_1
	.set	L0_2_set_173,LBB0_173-LJTI0_2
	.set	L0_2_set_177,LBB0_177-LJTI0_2
	.set	L0_2_set_179,LBB0_179-LJTI0_2
	.set	L0_2_set_169,LBB0_169-LJTI0_2
	.set	L0_2_set_254,LBB0_254-LJTI0_2
	.set	L0_2_set_183,LBB0_183-LJTI0_2
	.set	L9_0_set_2,LBB9_2-LJTI9_0
	.set	L9_0_set_4,LBB9_4-LJTI9_0
	.set	L9_0_set_10,LBB9_10-LJTI9_0
	.set	L9_0_set_19,LBB9_19-LJTI9_0
	.set	L9_0_set_28,LBB9_28-LJTI9_0
	.set	L14_0_set_3,LBB14_3-LJTI14_0
	.set	L14_0_set_12,LBB14_12-LJTI14_0
	.set	L14_0_set_25,LBB14_25-LJTI14_0
	.set	L14_0_set_28,LBB14_28-LJTI14_0
	.set	L14_0_set_34,LBB14_34-LJTI14_0
	.set	L14_1_set_42,LBB14_42-LJTI14_1
	.set	L14_1_set_23,LBB14_23-LJTI14_1
	.set	L14_1_set_37,LBB14_37-LJTI14_1
	.set	L14_1_set_21,LBB14_21-LJTI14_1
	.set	L14_1_set_38,LBB14_38-LJTI14_1
	.set	L14_1_set_22,LBB14_22-LJTI14_1
	.set	L14_1_set_24,LBB14_24-LJTI14_1
	.set	L14_1_set_14,LBB14_14-LJTI14_1
	.set	L14_1_set_15,LBB14_15-LJTI14_1
	.set	L14_1_set_16,LBB14_16-LJTI14_1
	.set	L14_1_set_17,LBB14_17-LJTI14_1
	.set	L14_1_set_18,LBB14_18-LJTI14_1
	.set	L14_1_set_19,LBB14_19-LJTI14_1
	.set	L14_1_set_20,LBB14_20-LJTI14_1
	.set	L14_2_set_43,LBB14_43-LJTI14_2
	.set	L14_2_set_9,LBB14_9-LJTI14_2
	.set	L14_2_set_8,LBB14_8-LJTI14_2
	.set	L14_2_set_6,LBB14_6-LJTI14_2
	.set	L14_2_set_7,LBB14_7-LJTI14_2
	.set	L15_0_set_11,LBB15_11-LJTI15_0
	.set	L15_0_set_12,LBB15_12-LJTI15_0
	.set	L71_0_set_93,LBB71_93-LJTI71_0
	.set	L71_0_set_78,LBB71_78-LJTI71_0
	.set	L71_0_set_91,LBB71_91-LJTI71_0
	.set	L71_0_set_54,LBB71_54-LJTI71_0
	.set	L71_0_set_77,LBB71_77-LJTI71_0
	.set	L71_0_set_18,LBB71_18-LJTI71_0
	.set	L71_0_set_82,LBB71_82-LJTI71_0
	.set	L71_0_set_76,LBB71_76-LJTI71_0

.subsections_via_symbols
