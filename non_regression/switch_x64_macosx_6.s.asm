	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_usage
_usage:
	pushq     %rbp
Ltmp3:
Ltmp4:
	movq      %rsp, %rbp
Ltmp5:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
Ltmp6:
Ltmp7:
Ltmp8:
Ltmp9:
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       LBB0_1
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str(%rip), %rdi
	xorl      %eax, %eax
	movq      %rsi, %rdx
	movq      %rsi, %rcx
	call      _printf
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str1(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str119(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str2(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str118(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str3(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str4(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str5(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str6(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str7(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str8(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str9(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str10(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str11(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str12(%rip), %rdi
	call      _fputs
	movq      (%rbx), %rsi
	leaq      L_.str13(%rip), %rdi
	call      _fputs
	leaq      _emit_ancillary_info.infomap(%rip), %rbx
	leaq      L_.str102(%rip), %rsi
	leaq      L_.str14(%rip), %r12
	.align 4, 0x90
LBB0_4:
	movq      %r12, %rdi
	call      _strcmp
	testl     %eax, %eax
	je        LBB0_5
	movq      16(%rbx), %rsi
	addq      $16, %rbx
	testq     %rsi, %rsi
	jne       LBB0_4
LBB0_5:
	movq      8(%rbx), %r15
	testq     %r15, %r15
	cmove     %r12, %r15
	leaq      L_.str111(%rip), %rdi
	leaq      L_.str33(%rip), %rsi
	leaq      L_.str112(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
	testq     %rax, %rax
	je        LBB0_8
	leaq      L_.str113(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
	testl     %eax, %eax
	je        LBB0_8
	leaq      L_.str114(%rip), %rdi
	leaq      L_.str14(%rip), %rsi
	xorl      %eax, %eax
	call      _printf
LBB0_8:
	leaq      L_.str115(%rip), %rdi
	leaq      L_.str112(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _printf
	cmpq      %r12, %r15
	leaq      L_.str117(%rip), %rax
	leaq      L_.str15(%rip), %rdx
	cmove     %rax, %rdx
	leaq      L_.str116(%rip), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _printf
	movl      %r14d, %edi
	call      _exit
LBB0_1:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      L_.str120(%rip), %rsi
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _fprintf
	movl      %r14d, %edi
	call      _exit
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp13:
Ltmp14:
	movq      %rsp, %rbp
Ltmp15:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $1304, %rsp
Ltmp16:
Ltmp17:
Ltmp18:
Ltmp19:
Ltmp20:
	movq      %rsi, -1296(%rbp)
	movl      %edi, %r13d
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rsi), %rdi
	call      _set_program_name
	leaq      L_.str15(%rip), %rsi
	xorl      %edi, %edi
	call      _setlocale
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
	leaq      _format_address_std(%rip), %rdx
	movb      $1, -1297(%rbp)
	leaq      _short_options(%rip), %rbx
	leaq      _long_options(%rip), %r8
	leaq      -1260(%rbp), %r9
	xorl      %ecx, %ecx
	xorl      %eax, %eax
	movq      %rax, -1312(%rbp)
	xorl      %eax, %eax
	movq      %rax, -1328(%rbp)
	movq      %rax, -1320(%rbp)
	xorps     %xmm0, %xmm0
	movaps    %xmm0, _integral_type_size+16(%rip)
	movaps    %xmm0, _integral_type_size(%rip)
	movl      $1, _integral_type_size+4(%rip)
	movl      $2, _integral_type_size+8(%rip)
	movl      $3, _integral_type_size+16(%rip)
	movl      $5, _integral_type_size+32(%rip)
	movaps    %xmm0, _fp_type_size+48(%rip)
	movaps    %xmm0, _fp_type_size+32(%rip)
	movaps    %xmm0, _fp_type_size+16(%rip)
	movaps    %xmm0, _fp_type_size(%rip)
	movl      $6, _fp_type_size+16(%rip)
	movl      $8, _fp_type_size+64(%rip)
	movl      $7, _fp_type_size+32(%rip)
	movq      $0, _n_specs(%rip)
	movq      $0, _n_specs_allocated(%rip)
	movq      $0, _spec(%rip)
	movq      %rdx, _format_address(%rip)
	movl      $8, _address_base(%rip)
	movl      $7, _address_pad_len(%rip)
	movb      $0, _flag_dump_strings(%rip)
	jmp       LBB1_1
LBB1_39:
	movq      %r13, %r12
	movq      %r8, %r13
	movq      %r9, %r15
	call      _decode_format_string
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	andb      %al, -1297(%rbp)
	movb      %r14b, %cl
	.align 4, 0x90
LBB1_1:
	movb      %cl, %r14b
	movl      $-1, -1260(%rbp)
	movl      %r13d, %edi
	movq      %r13, %r12
	movq      -1296(%rbp), %rsi
	movq      %rbx, %rdx
	movq      %r8, %rcx
	movq      %r8, %r13
	movq      %r9, %r8
	movq      %r9, %r15
	call      _rpl_getopt_long
	cmpl      $-2, %eax
	jle       LBB1_2
	cmpl      $64, %eax
	jle       LBB1_6
	leal      -65(%rax), %eax
	cmpl      $64, %eax
	movq      %r13, %r8
	movq      %r12, %r13
	movq      %r15, %r9
	ja        LBB1_7
	leaq      LJTI1_0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	movb      $1, %cl
	jmp       *%rax
LBB1_48:
	leaq      L_.str28(%rip), %rdi
	jmp       LBB1_39
LBB1_50:
	leaq      L_.str30(%rip), %rdi
	jmp       LBB1_39
LBB1_44:
	leaq      L_.str24(%rip), %rdi
	jmp       LBB1_39
LBB1_46:
	leaq      L_.str26(%rip), %rdi
	jmp       LBB1_39
LBB1_52:
	leaq      L_.str32(%rip), %rdi
	jmp       LBB1_39
LBB1_10:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movsbl    (%rax), %ecx
	cmpl      $109, %ecx
	jg        LBB1_15
	cmpl      $100, %ecx
	jne       LBB1_20
	leaq      _format_address_std(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $10, _address_base(%rip)
	jmp       LBB1_13
LBB1_42:
	leaq      L_.str22(%rip), %rdi
	jmp       LBB1_39
LBB1_24:
	movb      $1, _limit_bytes_to_format(%rip)
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	xorl      %esi, %esi
	xorl      %edx, %edx
	leaq      _max_bytes_to_format(%rip), %rcx
	movq      %r13, %r12
	movq      %r8, %r13
	leaq      _main.multipliers(%rip), %r8
	movq      %r9, %r15
	call      _xstrtoumax
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	movb      $1, %cl
	movq      %rcx, -1312(%rbp)
	testl     %eax, %eax
	movb      %r14b, %cl
	je        LBB1_1
	jmp       LBB1_25
LBB1_49:
	leaq      L_.str29(%rip), %rdi
	jmp       LBB1_39
LBB1_26:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	testq     %rdi, %rdi
	movl      $3, %eax
	je        LBB1_30
	movq      %r9, %r12
	xorl      %esi, %esi
	xorl      %edx, %edx
	leaq      -1256(%rbp), %rcx
	leaq      _main.multipliers(%rip), %r8
	call      _xstrtoumax
	testl     %eax, %eax
	jne       LBB1_28
	movq      -1256(%rbp), %rax
	leaq      _long_options(%rip), %r8
	movq      %r12, %r9
LBB1_30:
	movq      %rax, _string_min(%rip)
	movb      $1, _flag_dump_strings(%rip)
	jmp       LBB1_14
LBB1_38:
	leaq      L_.str19(%rip), %rdi
	jmp       LBB1_39
LBB1_40:
	leaq      L_.str20(%rip), %rdi
	jmp       LBB1_39
LBB1_41:
	leaq      L_.str21(%rip), %rdi
	jmp       LBB1_39
LBB1_43:
	leaq      L_.str23(%rip), %rdi
	jmp       LBB1_39
LBB1_45:
	leaq      L_.str25(%rip), %rdi
	jmp       LBB1_39
LBB1_47:
	leaq      L_.str27(%rip), %rdi
	jmp       LBB1_39
LBB1_21:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	xorl      %esi, %esi
	xorl      %edx, %edx
	leaq      _n_bytes_to_skip(%rip), %rcx
	movq      %r13, %r12
	movq      %r8, %r13
	leaq      _main.multipliers(%rip), %r8
	movq      %r9, %r15
	call      _xstrtoumax
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	movb      $1, %cl
	movq      %rcx, -1312(%rbp)
	testl     %eax, %eax
	movb      %r14b, %cl
	je        LBB1_1
	jmp       LBB1_22
LBB1_51:
	leaq      L_.str31(%rip), %rdi
	jmp       LBB1_39
LBB1_31:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      %r13, %r12
	movq      %r8, %r13
	movq      %r9, %r15
	call      _decode_format_string
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	andb      %al, -1297(%rbp)
	jmp       LBB1_14
LBB1_32:
	movb      $1, _abbreviate_duplicate_blocks(%rip)
	jmp       LBB1_14
LBB1_53:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movb      $1, %al
	movq      %rax, -1312(%rbp)
	testq     %rdi, %rdi
	movb      %r14b, %cl
	movb      $1, %al
	movq      %rax, -1328(%rbp)
	movl      $32, %eax
	movq      %rax, -1320(%rbp)
	je        LBB1_1
	movq      %r9, %r12
	xorl      %esi, %esi
	movl      $10, %edx
	leaq      -1272(%rbp), %rcx
	leaq      L_.str15(%rip), %r8
	call      _xstrtoumax
	testl     %eax, %eax
	jne       LBB1_55
	movq      -1272(%rbp), %rax
	movq      %rax, -1320(%rbp)
	movb      %r14b, %cl
	movb      $1, %al
	movq      %rax, -1328(%rbp)
	jmp       LBB1_37
LBB1_33:
	movq      %r9, %r12
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	movq      _argmatch_die@GOTPCREL(%rip), %rax
	movq      (%rax), %r9
	movl      $4, %r8d
	leaq      L_.str18(%rip), %rdi
	leaq      _endian_args(%rip), %rdx
	leaq      _endian_types(%rip), %r15
	movq      %r15, %rcx
	call      ___xargmatch_internal
	movl      (%r15,%rax,4), %eax
	testl     %eax, %eax
	jne       LBB1_34
	movb      $0, _input_swap(%rip)
	movb      %r14b, %cl
LBB1_37:
	leaq      _long_options(%rip), %r8
	movq      %r12, %r9
	jmp       LBB1_1
LBB1_15:
	cmpl      $110, %ecx
	je        LBB1_19
	cmpl      $111, %ecx
	jne       LBB1_17
	leaq      _format_address_std(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $8, _address_base(%rip)
LBB1_13:
	movl      $7, _address_pad_len(%rip)
	jmp       LBB1_14
LBB1_34:
	cmpl      $1, %eax
	movb      %r14b, %cl
	leaq      _long_options(%rip), %r8
	movq      %r12, %r9
	jne       LBB1_1
	movb      $1, _input_swap(%rip)
	movb      %r14b, %cl
	jmp       LBB1_1
LBB1_19:
	leaq      _format_address_none(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $0, _address_pad_len(%rip)
	jmp       LBB1_14
LBB1_17:
	cmpl      $120, %ecx
	jne       LBB1_20
	leaq      _format_address_std(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $16, _address_base(%rip)
	movl      $6, _address_pad_len(%rip)
	jmp       LBB1_14
LBB1_20:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str16(%rip), %rdx
	movq      %r13, %r12
	movq      %r8, %r13
	movq      %r9, %r15
	call      _error
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
LBB1_14:
	movb      $1, %al
	movq      %rax, -1312(%rbp)
	movb      %r14b, %cl
	jmp       LBB1_1
LBB1_2:
	cmpl      $-131, %eax
	jne       LBB1_3
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _Version@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	leaq      L_.str14(%rip), %rsi
	leaq      L_.str33(%rip), %rdx
	leaq      L_.str34(%rip), %r8
	xorl      %r9d, %r9d
	xorl      %eax, %eax
	call      _version_etc
	xorl      %edi, %edi
	call      _exit
LBB1_6:
	cmpl      $-1, %eax
	movq      %r12, %r13
	jne       LBB1_7
	movl      $1, %ebx
	testb     $1, -1297(%rbp)
	je        LBB1_289
	movb      _flag_dump_strings(%rip), %al
	testb     %al, %al
	je        LBB1_62
	movq      _n_specs(%rip), %rax
	testq     %rax, %rax
	je        LBB1_62
	leaq      L_.str35(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB1_62:
	movq      _rpl_optind@GOTPCREL(%rip), %r12
	movslq    (%r12), %rax
	subl      %eax, %r13d
	movb      $1, %cl
	movl      %ecx, -1336(%rbp)
	movq      -1312(%rbp), %rcx
	testb     %cl, %cl
	je        LBB1_65
	testb     %r14b, %r14b
	jne       LBB1_65
	movq      %rax, -1312(%rbp)
	movq      -1296(%rbp), %r15
	jmp       LBB1_130
LBB1_3:
	cmpl      $-130, %eax
	jne       LBB1_7
	xorl      %edi, %edi
	call      _usage
LBB1_7:
	movl      $1, %edi
	call      _usage
LBB1_65:
	cmpl      $3, %r13d
	movq      -1296(%rbp), %r15
	je        LBB1_103
	cmpl      $2, %r13d
	jne       LBB1_67
	incl      %eax
	cltq      
	testb     %r14b, %r14b
	jne       LBB1_84
	movq      (%r15,%rax,8), %rcx
	movsbl    (%rcx), %ecx
	cmpl      $43, %ecx
	je        LBB1_84
	addl      $-48, %ecx
	cmpl      $9, %ecx
	ja        LBB1_83
LBB1_84:
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	movl      $2, %r13d
	testb     %al, %al
	je        LBB1_124
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       LBB1_87
	incq      %rbx
LBB1_87:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
	movl      $10, %edx
	testq     %rax, %rax
	jne       LBB1_91
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       LBB1_90
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        LBB1_91
LBB1_90:
	movl      $8, %edx
LBB1_91:
	leaq      L_.str61(%rip), %r8
	leaq      -1288(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
	testl     %eax, %eax
	jne       LBB1_124
	testb     %r14b, %r14b
	je        LBB1_102
	movslq    (%r12), %rax
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	testb     %al, %al
	je        LBB1_102
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       LBB1_96
	incq      %rbx
LBB1_96:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
	movl      $10, %edx
	testq     %rax, %rax
	jne       LBB1_100
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       LBB1_99
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        LBB1_100
LBB1_99:
	movl      $8, %edx
LBB1_100:
	leaq      L_.str61(%rip), %r8
	xorl      %r13d, %r13d
	leaq      -1280(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
	testl     %eax, %eax
	je        LBB1_101
LBB1_102:
	movq      -1288(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	movslq    (%r12), %rax
	movq      (%r15,%rax,8), %rcx
	leal      1(%rax), %eax
	cltq      
	movq      %rcx, (%r15,%rax,8)
	addq      $8, %r15
	movl      $1, %r13d
	jmp       LBB1_125
LBB1_103:
	testb     %r14b, %r14b
	je        LBB1_104
	incl      %eax
	cltq      
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	movl      $3, %r13d
	testb     %al, %al
	je        LBB1_124
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       LBB1_108
	incq      %rbx
LBB1_108:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
	movl      $10, %edx
	testq     %rax, %rax
	jne       LBB1_112
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       LBB1_111
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        LBB1_112
LBB1_111:
	movl      $8, %edx
LBB1_112:
	leaq      L_.str61(%rip), %r8
	leaq      -1280(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
	testl     %eax, %eax
	jne       LBB1_124
	movl      (%r12), %eax
	addl      $2, %eax
	cltq      
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	testb     %al, %al
	je        LBB1_124
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       LBB1_116
	incq      %rbx
LBB1_116:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
	movl      $10, %edx
	testq     %rax, %rax
	jne       LBB1_120
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       LBB1_119
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        LBB1_120
LBB1_119:
	movl      $8, %edx
LBB1_120:
	leaq      L_.str61(%rip), %r8
	leaq      -1288(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
	testl     %eax, %eax
	jne       LBB1_124
	movq      -1280(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	movq      -1288(%rbp), %rax
	movq      %rax, -1312(%rbp)
	movslq    (%r12), %rax
	movq      (%r15,%rax,8), %rcx
	leal      2(%rax), %eax
	cltq      
	movq      %rcx, (%r15,%rax,8)
	movl      $1, %r13d
	jmp       LBB1_122
LBB1_67:
	cmpl      $1, %r13d
	jne       LBB1_124
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	testb     %r14b, %r14b
	je        LBB1_69
	testb     %al, %al
	je        LBB1_70
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       LBB1_74
	jmp       LBB1_73
LBB1_124:
	testb     %r14b, %r14b
	je        LBB1_125
	cmpl      $2, %r13d
	jl        LBB1_125
	movl      (%r12), %eax
	incl      %eax
	cltq      
	movq      (%r15,%rax,8), %rax
	movq      %rax, %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str36(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	leaq      L_.str37(%rip), %rcx
	leaq      L_.str38(%rip), %rbx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      %rcx, %rdx
	movq      %rbx, %rcx
	call      _error
	movl      $1, %edi
	call      _usage
LBB1_104:
	movl      $3, %r13d
	jmp       LBB1_125
LBB1_69:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       LBB1_70
LBB1_73:
	incq      %rbx
LBB1_74:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
	movl      $10, %edx
	testq     %rax, %rax
	jne       LBB1_78
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       LBB1_77
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        LBB1_78
LBB1_77:
	movl      $8, %edx
LBB1_78:
	leaq      L_.str61(%rip), %r8
	xorl      %r13d, %r13d
	leaq      -1280(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
	testl     %eax, %eax
	je        LBB1_79
LBB1_70:
	movl      $1, %r13d
	jmp       LBB1_125
LBB1_83:
	movl      $2, %r13d
	jmp       LBB1_125
LBB1_79:
	movq      -1280(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	addq      $8, %r15
LBB1_125:
	movq      %rax, -1312(%rbp)
LBB1_130:
	movzbl    _limit_bytes_to_format(%rip), %eax
	cmpl      $1, %eax
	jne       LBB1_133
	movq      _n_bytes_to_skip(%rip), %rax
	addq      _max_bytes_to_format(%rip), %rax
	movq      %rax, _end_offset(%rip)
	jae       LBB1_133
	leaq      L_.str39(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB1_133:
	cmpq      $0, _n_specs(%rip)
	jne       LBB1_135
	leaq      L_.str40(%rip), %rdi
	call      _decode_format_string
LBB1_135:
	testl     %r13d, %r13d
	jle       LBB1_136
	movslq    (%r12), %rax
	leaq      (%r15,%rax,8), %rax
	jmp       LBB1_138
LBB1_136:
	leaq      _default_file_list(%rip), %rax
LBB1_138:
	movq      %rax, _file_list(%rip)
	call      _open_next_file
	movb      %al, %r11b
	movq      _in_stream(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB1_139
	movq      _n_bytes_to_skip(%rip), %r14
	testq     %r14, %r14
	je        LBB1_163
	movb      %r11b, -1297(%rbp)
	movb      $1, %r15b
	leaq      -1248(%rbp), %rbx
	leaq      L_.str37(%rip), %r12
	.align 4, 0x90
LBB1_142:
	call      _fileno
	movl      %eax, %edi
	movq      %rbx, %rsi
	call      _fstat$INODE64
	testl     %eax, %eax
	je        LBB1_143
	call      ___error
	movl      (%rax), %esi
	movq      _input_filename(%rip), %rcx
	xorl      %r15d, %r15d
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _error
	jmp       LBB1_158
LBB1_143:
	movzwl    -1244(%rbp), %eax
	orl       $8192, %eax
	andl      $61440, %eax
	cmpl      $40960, %eax
	jne       LBB1_149
	movslq    -1136(%rbp), %rcx
	testq     %rcx, %rcx
	movl      $512, %eax
	cmovle    %rax, %rcx
	movq      -1152(%rbp), %rax
	cmpq      %rax, %rcx
	jge       LBB1_149
	movq      %r14, %rcx
	subq      %rax, %rcx
	jbe       LBB1_147
	movq      %rbx, %r12
	movq      %rcx, %r14
	jmp       LBB1_156
LBB1_149:
	movq      %rbx, %r12
	testq     %r14, %r14
	movl      $1024, %r13d
	je        LBB1_161
LBB1_151:
	movq      _in_stream(%rip), %rcx
	movq      %r14, %rbx
	.align 4, 0x90
LBB1_152:
	cmpq      %r13, %rbx
	cmovb     %rbx, %r13
	movl      $1, %esi
	leaq      -1088(%rbp), %rdi
	movq      %r13, %rdx
	call      _fread
	movq      %rbx, %r14
	subq      %rax, %r14
	cmpq      %r13, %rax
	je        LBB1_150
	movq      _in_stream(%rip), %rcx
	movswl    16(%rcx), %edx
	testb     $64, %dl
	jne       LBB1_148
	testb     $32, %dl
	jne       LBB1_156
	cmpq      %rax, %rbx
	movq      %r14, %rbx
	jne       LBB1_152
	jmp       LBB1_156
LBB1_150:
	cmpq      %r13, %rbx
	jne       LBB1_151
	jmp       LBB1_161
LBB1_156:
	testq     %r14, %r14
	movq      %r12, %rbx
	leaq      L_.str37(%rip), %r12
	je        LBB1_161
LBB1_158:
	xorl      %edi, %edi
	call      _check_and_close
	movb      %al, %r13b
	andb      %r15b, %r13b
	call      _open_next_file
	movb      %al, %r15b
	andb      %r13b, %r15b
	movq      _in_stream(%rip), %rdi
	testq     %rdi, %rdi
	jne       LBB1_142
	testq     %r14, %r14
	je        LBB1_161
	leaq      L_.str59(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	jmp       LBB1_161
LBB1_139:
	movzbl    %r11b, %ebx
	jmp       LBB1_285
LBB1_147:
	movq      _in_stream(%rip), %rdi
	movl      $1, %edx
	movq      %r14, %rsi
	call      _rpl_fseeko
	testl     %eax, %eax
	je        LBB1_161
LBB1_148:
	call      ___error
	xorl      %r15d, %r15d
LBB1_161:
	movb      -1297(%rbp), %r11b
	andb      %r15b, %r11b
	cmpq      $0, _in_stream(%rip)
	je        LBB1_162
LBB1_163:
	xorl      %eax, %eax
	movl      -1336(%rbp), %ecx
	testb     %cl, %cl
	movq      -1320(%rbp), %rcx
	jne       LBB1_165
	movq      -1312(%rbp), %rax
	subq      _n_bytes_to_skip(%rip), %rax
LBB1_165:
	movq      %rax, _pseudo_offset(%rip)
	movq      _n_specs(%rip), %r9
	movl      $1, %esi
	testq     %r9, %r9
	je        LBB1_170
	movq      _spec(%rip), %r10
	xorl      %edi, %edi
	movl      $1, %esi
	leaq      _width_bytes(%rip), %r8
	.align 4, 0x90
LBB1_167:
	movslq    %esi, %r14
	leaq      (%rdi,%rdi,4), %rax
	movl      4(%r10,%rax,8), %eax
	movslq    (%r8,%rax,4), %rbx
	movq      %rbx, %rdx
	movq      %r14, %rsi
	.align 4, 0x90
LBB1_168:
	movq      %rsi, %rax
	movq      %rdx, %rsi
	xorl      %edx, %edx
	divq      %rsi
	testq     %rdx, %rdx
	jne       LBB1_168
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %rsi
	movq      %rax, %rsi
	imulq     %r14, %rsi
	incq      %rdi
	cmpq      %r9, %rdi
	jne       LBB1_167
LBB1_170:
	movq      -1328(%rbp), %rax
	testb     %al, %al
	je        LBB1_175
	testq     %rcx, %rcx
	movslq    %esi, %r14
	je        LBB1_174
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %r14
	testq     %rdx, %rdx
	je        LBB1_173
LBB1_174:
	movb      %r11b, -1297(%rbp)
	leaq      L_.str41(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      %r14d, %r8d
	call      _error
	movq      %r14, _bytes_per_block(%rip)
	movq      _n_specs(%rip), %r9
	jmp       LBB1_179
LBB1_175:
	cmpl      $15, %esi
	jg        LBB1_177
	movb      %r11b, -1297(%rbp)
	movl      $16, %ecx
	movl      $16, %eax
	xorl      %edx, %edx
	idivl     %esi
	subl      %edx, %ecx
	movslq    %ecx, %r14
	jmp       LBB1_178
LBB1_162:
	movzbl    %r11b, %ebx
	jmp       LBB1_285
LBB1_177:
	movb      %r11b, -1297(%rbp)
	movslq    %esi, %r14
LBB1_178:
	movq      %r14, _bytes_per_block(%rip)
	jmp       LBB1_179
LBB1_173:
	movb      %r11b, -1297(%rbp)
	movq      %rcx, _bytes_per_block(%rip)
	movq      %rcx, %r14
LBB1_179:
	testq     %r9, %r9
	je        LBB1_190
	movq      _spec(%rip), %r8
	xorl      %ecx, %ecx
	movq      %r9, %r10
	andq      $-2, %r10
	movl      $0, %r12d
	movl      $0, %edi
	je        LBB1_184
	leaq      68(%r8), %rbx
	xorl      %r12d, %r12d
	leaq      _width_bytes(%rip), %r11
	movq      %r10, %rcx
	xorl      %edi, %edi
	.align 4, 0x90
LBB1_182:
	movl      -64(%rbx), %eax
	movl      -40(%rbx), %esi
	movl      -24(%rbx), %edx
	movslq    (%r11,%rax,4), %r15
	movslq    (%r11,%rdx,4), %r13
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r15
	movq      %rax, %r15
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r13
	movl      (%rbx), %edx
	incl      %esi
	incl      %edx
	imull     %r15d, %esi
	imull     %eax, %edx
	movslq    %esi, %rax
	movslq    %edx, %rdx
	cmpq      %rax, %r12
	cmovb     %rax, %r12
	cmpq      %rdx, %rdi
	cmovb     %rdx, %rdi
	addq      $80, %rbx
	addq      $-2, %rcx
	jne       LBB1_182
	movq      %r10, %rcx
LBB1_184:
	cmpq      %rdi, %r12
	cmova     %r12, %rdi
	cmpq      %rcx, %r9
	je        LBB1_187
	leaq      (%rcx,%rcx,4), %rax
	leaq      28(%r8,%rax,8), %rsi
	leaq      _width_bytes(%rip), %r8
	.align 4, 0x90
LBB1_186:
	movl      -24(%rsi), %eax
	movl      (%rsi), %ebx
	movslq    (%r8,%rax,4), %r10
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r10
	incl      %ebx
	imull     %eax, %ebx
	movslq    %ebx, %rax
	cmpq      %rax, %rdi
	cmovb     %rax, %rdi
	incq      %rcx
	addq      $40, %rsi
	cmpq      %r9, %rcx
	jb        LBB1_186
LBB1_187:
	testq     %r9, %r9
	je        LBB1_190
	movq      _spec(%rip), %rcx
	addq      $32, %rcx
	xorl      %esi, %esi
	leaq      _width_bytes(%rip), %r8
	.align 4, 0x90
LBB1_189:
	movl      -28(%rcx), %eax
	movslq    (%r8,%rax,4), %rbx
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %rbx
	imull     -4(%rcx), %eax
	movl      %edi, %edx
	subl      %eax, %edx
	movl      %edx, (%rcx)
	incq      %rsi
	addq      $40, %rcx
	cmpq      %r9, %rsi
	jb        LBB1_189
LBB1_190:
	movzbl    _flag_dump_strings(%rip), %eax
	cmpl      $1, %eax
	jne       LBB1_252
	movq      _string_min(%rip), %rax
	cmpq      $100, %rax
	movl      $100, %edi
	cmovae    %rax, %rdi
	movq      %rdi, -1104(%rbp)
	call      _xmalloc
	movq      %rax, -1296(%rbp)
	movb      $1, %r12b
	movq      _n_bytes_to_skip(%rip), %r13
	jmp       LBB1_192
LBB1_252:
	movq      $-1, %rax
	xorl      %edx, %edx
	divq      %r14
	cmpq      $1, %rax
	jbe       LBB1_292
	addq      %r14, %r14
	movq      %r14, %rdi
	call      _xmalloc
	movq      %rax, %r13
	movq      %r13, -64(%rbp)
	movq      _bytes_per_block(%rip), %rdi
	addq      %rdi, %rax
	movq      %rax, -56(%rbp)
	movq      _n_bytes_to_skip(%rip), %rbx
	movb      _limit_bytes_to_format(%rip), %al
	testb     %al, %al
	je        LBB1_254
	movq      _end_offset(%rip), %rax
	movb      $1, %r14b
	subq      %rbx, %rax
	jbe       LBB1_265
	cmpq      %rdi, %rax
	cmovb     %rax, %rdi
	leaq      -1096(%rbp), %rdx
	movq      %r13, %rsi
	call      _read_block
	movb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      %r13, %rax
	movq      _bytes_per_block(%rip), %r13
	xorl      %r15d, %r15d
	cmpq      %r13, %r12
	jae       LBB1_259
	movq      %rax, -1312(%rbp)
	jmp       LBB1_271
LBB1_254:
	leaq      -1096(%rbp), %rdx
	movq      %r13, %rsi
	call      _read_block
	movb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      _bytes_per_block(%rip), %r14
	xorl      %r15d, %r15d
	cmpq      %r14, %r12
	jae       LBB1_267
	movq      %r13, -1312(%rbp)
	jmp       LBB1_271
LBB1_267:
	movq      %r13, %rcx
	movq      %r13, -1312(%rbp)
	.align 4, 0x90
LBB1_268:
	cmpq      %r14, %r12
	jne       LBB1_269
	xorb      $1, %r15b
	movzbl    %r15b, %eax
	movq      -64(%rbp,%rax,8), %r13
	movq      %rbx, %rdi
	movq      %r14, %rsi
	movq      %r13, %rdx
	call      _write_block
	addq      %r14, %rbx
	movq      _bytes_per_block(%rip), %rdi
	movq      %r13, %rsi
	leaq      -1096(%rbp), %rdx
	call      _read_block
	andb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      _bytes_per_block(%rip), %r14
	cmpq      %r14, %r12
	movq      %r13, %rcx
	jae       LBB1_268
	jmp       LBB1_271
LBB1_259:
	movq      %rax, %rcx
	movq      %rax, -1312(%rbp)
LBB1_260:
	cmpq      %r13, %r12
	jne       LBB1_261
	xorb      $1, %r15b
	movzbl    %r15b, %eax
	movq      -64(%rbp,%rax,8), %r14
	movq      %rbx, %rdi
	movq      %r13, %rsi
	movq      %r14, %rdx
	call      _write_block
	addq      %r13, %rbx
	movq      _end_offset(%rip), %rax
	subq      %rbx, %rax
	jbe       LBB1_264
	movq      _bytes_per_block(%rip), %rdi
	cmpq      %rdi, %rax
	cmovb     %rax, %rdi
	movq      %r14, %rsi
	leaq      -1096(%rbp), %rdx
	call      _read_block
	andb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      _bytes_per_block(%rip), %r13
	cmpq      %r13, %r12
	movq      %r14, %rcx
	jae       LBB1_260
LBB1_271:
	movq      %rbx, %r13
	testq     %r12, %r12
	je        LBB1_272
	movq      _n_specs(%rip), %r8
	movl      $1, %ecx
	testq     %r8, %r8
	je        LBB1_279
	movq      _spec(%rip), %r10
	xorl      %esi, %esi
	movl      $1, %eax
	leaq      _width_bytes(%rip), %r9
	.align 4, 0x90
LBB1_275:
	movslq    %eax, %rdi
	leaq      (%rsi,%rsi,4), %rax
	movl      4(%r10,%rax,8), %eax
	movslq    (%r9,%rax,4), %rcx
	movq      %rcx, %rdx
	movq      %rdi, %rbx
	.align 4, 0x90
LBB1_276:
	movq      %rbx, %rax
	movq      %rdx, %rbx
	xorl      %edx, %edx
	divq      %rbx
	testq     %rdx, %rdx
	jne       LBB1_276
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rbx
	imulq     %rdi, %rax
	incq      %rsi
	cmpq      %r8, %rsi
	jne       LBB1_275
	movslq    %eax, %rcx
LBB1_279:
	leaq      -1(%r12,%rcx), %rsi
	xorl      %edx, %edx
	movq      %rsi, %rax
	divq      %rcx
	andb      $1, %r15b
	movzbl    %r15b, %ebx
	leaq      0(,%rbx,8), %rax
	leaq      -64(%rbp), %r15
	orq       %r15, %rax
	movq      (%rax), %r14
	leaq      (%r14,%r12), %rdi
	addq      %r12, %rdx
	subq      %rdx, %rsi
	call      ___bzero
	xorb      $1, %bl
	movzbl    %bl, %eax
	shlq      $3, %rax
	orq       %r15, %rax
	movq      (%rax), %rdx
	movq      %r13, %rbx
	movq      %rbx, %rdi
	movq      %r12, %rsi
	movq      %r14, %rcx
	call      _write_block
	addq      %r12, %rbx
	movq      -1312(%rbp), %r13
	movb      -1296(%rbp), %r14b
	jmp       LBB1_280
LBB1_272:
	movb      -1296(%rbp), %r14b
	movq      %r13, %rbx
	movq      -1312(%rbp), %r13
	jmp       LBB1_280
LBB1_264:
	movb      -1296(%rbp), %r14b
	movq      -1312(%rbp), %r13
LBB1_265:
	movq      $0, -1096(%rbp)
LBB1_280:
	movl      $10, %esi
	movq      %rbx, %rdi
	call      *_format_address(%rip)
	cmpq      _end_offset(%rip), %rbx
	jb        LBB1_283
	movb      _limit_bytes_to_format(%rip), %al
	xorb      $1, %al
	testb     $1, %al
	jne       LBB1_283
	xorl      %edi, %edi
	call      _check_and_close
	andb      %al, %r14b
LBB1_283:
	movq      %r13, %rdi
	call      _free
	andb      $1, %r14b
	jmp       LBB1_284
LBB1_208:
	movq      %r15, %r13
LBB1_192:
	movb      _limit_bytes_to_format(%rip), %al
	testb     %al, %al
	je        LBB1_193
	movq      _end_offset(%rip), %rdx
	movq      _string_min(%rip), %rcx
	subq      %rcx, %rdx
	jb        LBB1_251
	cmpq      %r13, %rdx
	ja        LBB1_196
	jmp       LBB1_251
LBB1_193:
	movq      _string_min(%rip), %rcx
LBB1_196:
	movq      %r13, %r15
	testq     %rcx, %rcx
	movl      $0, %r13d
	movl      $0, %r14d
	je        LBB1_211
LBB1_197:
	movq      _in_stream(%rip), %rdi
	movb      $1, %bl
	jmp       LBB1_198
	.align 4, 0x90
LBB1_200:
	call      ___error
	movl      (%rax), %edi
	call      _check_and_close
	andb      %al, %bl
	call      _open_next_file
	andb      %al, %bl
	movq      _in_stream(%rip), %rdi
LBB1_198:
	testq     %rdi, %rdi
	je        LBB1_201
	call      _fgetc
	movl      %eax, %r14d
	cmpl      $-1, %r14d
	je        LBB1_200
	andb      %bl, %r12b
	andb      $1, %r12b
	testl     %r14d, %r14d
	js        LBB1_203
	incq      %r15
	cmpl      $127, %r14d
	ja        LBB1_206
	movslq    %r14d, %rax
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rcx
	movl      60(%rcx,%rax,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       LBB1_207
LBB1_206:
	movl      $262144, %esi
	movl      %r14d, %edi
	call      ___maskrune
LBB1_207:
	testl     %eax, %eax
	je        LBB1_208
	movq      -1296(%rbp), %rax
	movb      %r14b, (%rax,%r13)
	incq      %r13
	cmpq      _string_min(%rip), %r13
	jb        LBB1_197
	movb      _limit_bytes_to_format(%rip), %al
	movq      %r13, %r14
LBB1_211:
	movq      %r15, %r13
	cmpq      _end_offset(%rip), %r13
	jb        LBB1_213
	xorb      $1, %al
	testb     $1, %al
	leaq      LJTI1_1(%rip), %rax
	movq      %rax, %r15
	je        LBB1_231
LBB1_213:
	cmpq      -1104(%rbp), %r14
	jne       LBB1_214
	movq      %r13, %r15
	movq      -1296(%rbp), %rdi
	leaq      -1104(%rbp), %rsi
	call      _x2realloc
	movq      %rax, -1296(%rbp)
	jmp       LBB1_216
LBB1_214:
	movq      %r13, %r15
LBB1_216:
	movq      _in_stream(%rip), %rdi
	movb      $1, %bl
	jmp       LBB1_217
LBB1_219:
	call      ___error
	movl      (%rax), %edi
	call      _check_and_close
	andb      %al, %bl
	call      _open_next_file
	andb      %al, %bl
	movq      _in_stream(%rip), %rdi
LBB1_217:
	testq     %rdi, %rdi
	je        LBB1_220
	call      _fgetc
	movl      %eax, %r13d
	cmpl      $-1, %r13d
	je        LBB1_219
	andb      %bl, %r12b
	andb      $1, %r12b
	incq      %r15
	testl     %r13d, %r13d
	js        LBB1_203
	je        LBB1_223
	cmpl      $127, %r13d
	ja        LBB1_226
	movslq    %r13d, %rax
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rcx
	movl      60(%rcx,%rax,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       LBB1_227
LBB1_226:
	movl      $262144, %esi
	movl      %r13d, %edi
	call      ___maskrune
LBB1_227:
	testl     %eax, %eax
	je        LBB1_228
	movq      -1296(%rbp), %rax
	movb      %r13b, (%rax,%r14)
	incq      %r14
	movb      _limit_bytes_to_format(%rip), %al
	xorb      $1, %al
	movq      %r15, %r13
	cmpq      _end_offset(%rip), %r13
	leaq      LJTI1_1(%rip), %r15
	jb        LBB1_213
	testb     $1, %al
	jne       LBB1_213
	jmp       LBB1_231
LBB1_223:
	movq      %r15, %r13
	leaq      LJTI1_1(%rip), %rax
	movq      %rax, %r15
LBB1_231:
	movq      -1296(%rbp), %rbx
	movb      $0, (%rbx,%r14)
	notq      %r14
	addq      %r13, %r14
	movl      $32, %esi
	movq      %r14, %rdi
	call      *_format_address(%rip)
	movb      (%rbx), %al
	testb     %al, %al
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	je        LBB1_248
	movq      -1296(%rbp), %rcx
	leaq      1(%rcx), %rbx
LBB1_233:
	movsbl    %al, %edi
	leal      -7(%rdi), %ecx
	cmpl      $6, %ecx
	jbe       LBB1_234
	movq      (%r14), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        LBB1_245
	cmpl      40(%rsi), %ecx
	jle       LBB1_246
	movzbl    %al, %ecx
	cmpl      $10, %ecx
	je        LBB1_246
LBB1_245:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
	jmp       LBB1_247
LBB1_234:
	movslq    (%r15,%rcx,4), %rax
	addq      %r15, %rax
	jmp       *%rax
LBB1_235:
	movq      (%r14), %rsi
	leaq      L_.str52(%rip), %rdi
	call      _fputs
	jmp       LBB1_247
LBB1_246:
	call      ___swbuf
	jmp       LBB1_247
LBB1_236:
	movq      (%r14), %rsi
	leaq      L_.str53(%rip), %rdi
	call      _fputs
	jmp       LBB1_247
LBB1_240:
	movq      (%r14), %rsi
	leaq      L_.str57(%rip), %rdi
	call      _fputs
	jmp       LBB1_247
LBB1_238:
	movq      (%r14), %rsi
	leaq      L_.str55(%rip), %rdi
	call      _fputs
	jmp       LBB1_247
LBB1_241:
	movq      (%r14), %rsi
	leaq      L_.str58(%rip), %rdi
	call      _fputs
	jmp       LBB1_247
LBB1_237:
	movq      (%r14), %rsi
	leaq      L_.str54(%rip), %rdi
	call      _fputs
	jmp       LBB1_247
LBB1_239:
	movq      (%r14), %rsi
	leaq      L_.str56(%rip), %rdi
	call      _fputs
LBB1_247:
	movb      (%rbx), %al
	incq      %rbx
	testb     %al, %al
	jne       LBB1_233
LBB1_248:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB1_250
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB1_192
LBB1_250:
	movl      $10, %edi
	call      ___swbuf
	jmp       LBB1_192
LBB1_228:
	movq      %r15, %r13
	jmp       LBB1_192
LBB1_201:
	andb      %bl, %r12b
LBB1_203:
	movq      -1296(%rbp), %rdi
	call      _free
	testb     %r12b, %r12b
	setne     %r14b
LBB1_284:
	movb      -1297(%rbp), %al
	andb      %r14b, %al
	movzbl    %al, %ebx
LBB1_285:
	movzbl    _have_read_stdin(%rip), %eax
	cmpl      $1, %eax
	jne       LBB1_288
	movq      ___stdinp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _rpl_fclose
	cmpl      $-1, %eax
	jne       LBB1_288
	call      ___error
	movl      (%rax), %esi
	leaq      L_.str42(%rip), %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      _error
LBB1_288:
	xorl      $1, %ebx
LBB1_289:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB1_293
	movl      %ebx, %eax
	addq      $1304, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB1_293:
	call      ___stack_chk_fail
LBB1_220:
	andb      %bl, %r12b
	jmp       LBB1_203
LBB1_251:
	movq      -1296(%rbp), %rdi
	call      _free
	xorl      %edi, %edi
	call      _check_and_close
	testb     %al, %r12b
	setne     %r14b
	jmp       LBB1_284
LBB1_101:
	movq      -1280(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	movq      -1288(%rbp), %rax
	movq      %rax, -1312(%rbp)
LBB1_122:
	addq      $16, %r15
	leaq      _format_address_none(%rip), %rax
	cmpq      %rax, _format_address(%rip)
	je        LBB1_123
	leaq      _format_address_label(%rip), %rax
	jmp       LBB1_129
LBB1_123:
	movl      $8, _address_base(%rip)
	movl      $7, _address_pad_len(%rip)
	leaq      _format_address_paren(%rip), %rax
LBB1_129:
	movq      %rax, _format_address(%rip)
	movl      $0, -1336(%rbp)
	jmp       LBB1_130
LBB1_25:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $78, %edx
	jmp       LBB1_23
LBB1_28:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $83, %edx
	jmp       LBB1_23
LBB1_22:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $106, %edx
	jmp       LBB1_23
LBB1_55:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $119, %edx
LBB1_23:
	movl      %eax, %edi
	movl      %ecx, %esi
	movq      %r8, %rcx
	movq      %rbx, %r8
	call      _xstrtol_fatal
LBB1_292:
	call      _xalloc_die
LBB1_269:
	leaq      L___func__.dump(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str44(%rip), %rbx
	movl      $1415, %edx
	jmp       LBB1_262
LBB1_261:
	leaq      L___func__.dump(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str44(%rip), %rbx
	movl      $1401, %edx
LBB1_262:
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
	.align 2, 0x90
LJTI1_0:
	.long	L1_0_set_10
	.long	L1_0_set_50
	.long	L1_0_set_7
	.long	L1_0_set_42
	.long	L1_0_set_7
	.long	L1_0_set_44
	.long	L1_0_set_7
	.long	L1_0_set_46
	.long	L1_0_set_48
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_48
	.long	L1_0_set_7
	.long	L1_0_set_24
	.long	L1_0_set_49
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_26
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_46
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_38
	.long	L1_0_set_40
	.long	L1_0_set_41
	.long	L1_0_set_43
	.long	L1_0_set_44
	.long	L1_0_set_45
	.long	L1_0_set_7
	.long	L1_0_set_52
	.long	L1_0_set_47
	.long	L1_0_set_21
	.long	L1_0_set_7
	.long	L1_0_set_48
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_50
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_51
	.long	L1_0_set_31
	.long	L1_0_set_7
	.long	L1_0_set_32
	.long	L1_0_set_53
	.long	L1_0_set_52
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_7
	.long	L1_0_set_1
	.long	L1_0_set_33
LJTI1_1:
	.long	L1_1_set_235
	.long	L1_1_set_236
	.long	L1_1_set_240
	.long	L1_1_set_238
	.long	L1_1_set_241
	.long	L1_1_set_237
	.long	L1_1_set_239
	.align 4, 0x90
_format_address_std:
	pushq     %rbp
Ltmp24:
Ltmp25:
	movq      %rsp, %rbp
Ltmp26:
	pushq     %r14
	pushq     %rbx
	subq      $48, %rsp
Ltmp27:
Ltmp28:
	movq      %rdi, %rcx
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r14
	movq      (%r14), %rax
	movq      %rax, -24(%rbp)
	movb      $0, -40(%rbp)
	leaq      -41(%rbp), %rdi
	movb      %sil, -41(%rbp)
	movslq    _address_pad_len(%rip), %rax
	negq      %rax
	leaq      -41(%rbp,%rax), %rsi
	movl      _address_base(%rip), %eax
	cmpl      $16, %eax
	je        LBB2_1
	cmpl      $10, %eax
	jne       LBB2_6
	movq      $-3689348814741910323, %r8
	.align 4, 0x90
LBB2_5:
	movq      %rcx, %rax
	mulq      %r8
	shrq      $3, %rdx
	imull     $10, %edx, %eax
	movl      %ecx, %ebx
	subl      %eax, %ebx
	orl       $48, %ebx
	movb      %bl, -1(%rdi)
	decq      %rdi
	cmpq      $9, %rcx
	movq      %rdx, %rcx
	ja        LBB2_5
	jmp       LBB2_9
LBB2_1:
	leaq      L_.str101(%rip), %rax
	.align 4, 0x90
LBB2_2:
	movq      %rcx, %rdx
	andq      $15, %rdx
	movb      (%rdx,%rax), %dl
	movb      %dl, -1(%rdi)
	decq      %rdi
	shrq      $4, %rcx
	jne       LBB2_2
	jmp       LBB2_9
LBB2_6:
	cmpl      $8, %eax
	jne       LBB2_9
	.align 4, 0x90
LBB2_7:
	movl      %ecx, %eax
	andl      $7, %eax
	orl       $48, %eax
	movb      %al, -1(%rdi)
	decq      %rdi
	shrq      $3, %rcx
	jne       LBB2_7
	jmp       LBB2_9
	.align 4, 0x90
LBB2_8:
	movb      $48, -1(%rdi)
	decq      %rdi
LBB2_9:
	cmpq      %rdi, %rsi
	jb        LBB2_8
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      _fputs
	movq      (%r14), %rax
	cmpq      -24(%rbp), %rax
	jne       LBB2_12
	addq      $48, %rsp
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
LBB2_12:
	call      ___stack_chk_fail
	.align 4, 0x90
_format_address_none:
	pushq     %rbp
Ltmp31:
Ltmp32:
	movq      %rsp, %rbp
Ltmp33:
	popq      %rbp
	ret       
	.align 4, 0x90
_decode_format_string:
	pushq     %rbp
Ltmp37:
Ltmp38:
	movq      %rsp, %rbp
Ltmp39:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $56, %rsp
Ltmp40:
Ltmp41:
Ltmp42:
Ltmp43:
Ltmp44:
	testq     %rdi, %rdi
	je        LBB4_6
	movb      $1, %r14b
	cmpb      $0, (%rdi)
	je        LBB4_94
	movq      _n_specs(%rip), %rax
	movq      %rdi, %r8
	movq      %rdi, -72(%rbp)
LBB4_3:
	movq      _n_specs_allocated(%rip), %rcx
	cmpq      %rax, %rcx
	movq      _spec(%rip), %r15
	ja        LBB4_11
	testq     %r15, %r15
	je        LBB4_5
	movq      $307445734561825860, %rax
	cmpq      %rax, %rcx
	jae       LBB4_95
	movq      %r8, %rbx
	movq      %rcx, %rax
	shrq      $1, %rax
	leaq      1(%rcx,%rax), %rcx
	jmp       LBB4_10
LBB4_5:
	movq      %r8, %rbx
	testq     %rcx, %rcx
	movl      $3, %eax
	cmove     %rax, %rcx
LBB4_10:
	movq      %rcx, _n_specs_allocated(%rip)
	shlq      $3, %rcx
	leaq      (%rcx,%rcx,4), %rsi
	movq      %r15, %rdi
	call      _xrealloc
	movq      %rax, %r15
	movq      %r15, _spec(%rip)
	movq      _n_specs(%rip), %rax
	movq      %rbx, %r8
LBB4_11:
	leaq      (%rax,%rax,4), %r13
	leaq      0(,%r13,8), %r14
	addq      %r15, %r14
	je        LBB4_12
	movsbl    (%r8), %r12d
	cmpl      $110, %r12d
	jg        LBB4_16
	leal      -97(%r12), %eax
	cmpl      $5, %eax
	ja        LBB4_88
	leaq      LJTI4_0(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
LBB4_86:
	leaq      1(%r8), %rdi
	movl      $3, %r9d
	movl      $1, %ebx
	movl      $5, %r12d
	leaq      _print_named_ascii(%rip), %rcx
	jmp       LBB4_90
	.align 4, 0x90
LBB4_16:
	leal      -111(%r12), %eax
	cmpl      $9, %eax
	ja        LBB4_88
	movl      $577, %ecx
	btl       %eax, %ecx
	jae       LBB4_88
LBB4_18:
	leaq      1(%r8), %rdi
	movsbl    1(%r8), %eax
	cmpl      $82, %eax
	jg        LBB4_23
	cmpl      $67, %eax
	je        LBB4_36
	cmpl      $73, %eax
	jne       LBB4_21
	leaq      2(%r8), %rdi
	movl      $4, %eax
	jmp       LBB4_37
	.align 4, 0x90
LBB4_23:
	cmpl      $83, %eax
	jne       LBB4_26
	leaq      2(%r8), %rdi
	movl      $2, %eax
	jmp       LBB4_37
LBB4_87:
	leaq      1(%r8), %rdi
	movl      $3, %r9d
	movl      $1, %ebx
	movl      $6, %r12d
	leaq      _print_ascii(%rip), %rcx
	jmp       LBB4_90
LBB4_62:
	movsbl    1(%r8), %eax
	cmpl      $68, %eax
	je        LBB4_75
	cmpl      $76, %eax
	jne       LBB4_64
	leaq      2(%r8), %rdi
	movl      $16, %eax
	jmp       LBB4_77
LBB4_36:
	leaq      2(%r8), %rdi
	movl      $1, %eax
	jmp       LBB4_37
LBB4_21:
	cmpl      $76, %eax
	jne       LBB4_26
	leaq      2(%r8), %rdi
	movl      $8, %eax
	jmp       LBB4_37
LBB4_26:
	leal      -48(%rax), %ecx
	cmpl      $9, %ecx
	movl      $0, %ecx
	movl      $0, %ebx
	ja        LBB4_27
	.align 4, 0x90
LBB4_28:
	addl      $-48, %eax
	movslq    %eax, %rsi
	movq      %rsi, %rax
	notq      %rax
	movq      $-3689348814741910323, %rdx
	mulq      %rdx
	shrq      $3, %rdx
	cmpq      %rdx, %rbx
	ja        LBB4_97
	leaq      (%rbx,%rbx,4), %rax
	leaq      (%rsi,%rax,2), %rbx
	movsbl    2(%r8,%rcx), %eax
	leal      -48(%rax), %edx
	incq      %rcx
	cmpl      $10, %edx
	jb        LBB4_28
	testq     %rcx, %rcx
	movl      $4, %eax
	je        LBB4_37
	cmpq      $8, %rbx
	ja        LBB4_34
	leaq      _integral_type_size(%rip), %rax
	cmpl      $0, (%rax,%rbx,4)
	je        LBB4_34
	leaq      1(%r8,%rcx), %rdi
	movq      %rbx, %rax
	jmp       LBB4_37
LBB4_27:
	movl      $4, %eax
	.align 4, 0x90
LBB4_37:
	leaq      _integral_type_size(%rip), %rcx
	movl      (%rcx,%rax,4), %edx
	cmpl      $110, %r12d
	jg        LBB4_42
	cmpl      $100, %r12d
	jne       LBB4_96
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	cmpl      $5, %edx
	leaq      L_.str70(%rip), %r8
	je        LBB4_41
	cmpl      $4, %edx
	leaq      L_.str72(%rip), %r8
	leaq      L_.str71(%rip), %rcx
	cmove     %rcx, %r8
LBB4_41:
	movq      %rdx, -64(%rbp)
	leaq      _bytes_to_signed_dec_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %ebx
	xorl      %r12d, %r12d
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str69(%rip), %rcx
	call      ___sprintf_chk
	jmp       LBB4_54
	.align 4, 0x90
LBB4_42:
	cmpl      $111, %r12d
	je        LBB4_48
	cmpl      $117, %r12d
	jne       LBB4_44
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	cmpl      $5, %edx
	leaq      L_.str77(%rip), %r8
	je        LBB4_53
	cmpl      $4, %edx
	leaq      L_.str79(%rip), %r8
	leaq      L_.str78(%rip), %rcx
	cmove     %rcx, %r8
LBB4_53:
	movq      %rdx, -64(%rbp)
	leaq      _bytes_to_unsigned_dec_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %ebx
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str69(%rip), %rcx
	call      ___sprintf_chk
	movl      $1, %r12d
	jmp       LBB4_54
LBB4_48:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	leaq      _bytes_to_oct_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %r8d
	cmpl      $5, %edx
	leaq      L_.str74(%rip), %r9
	je        LBB4_50
	cmpl      $4, %edx
	leaq      L_.str76(%rip), %r9
	leaq      L_.str75(%rip), %rax
	cmove     %rax, %r9
LBB4_50:
	movq      %rdx, -64(%rbp)
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str73(%rip), %rcx
	movq      %r8, %rbx
	call      ___sprintf_chk
	movl      $2, %r12d
	jmp       LBB4_54
LBB4_44:
	cmpl      $120, %r12d
	jne       LBB4_96
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	leaq      _bytes_to_hex_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %r8d
	cmpl      $5, %edx
	leaq      L_.str80(%rip), %r9
	je        LBB4_47
	cmpl      $4, %edx
	leaq      L_.str82(%rip), %r9
	leaq      L_.str81(%rip), %rax
	cmove     %rax, %r9
LBB4_47:
	movq      %rdx, -64(%rbp)
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str73(%rip), %rcx
	movq      %r8, %rbx
	call      ___sprintf_chk
	movl      $3, %r12d
	.align 4, 0x90
LBB4_54:
	leaq      16(%r15,%r13,8), %rdi
	call      _strlen
	cmpq      $8, %rax
	jae       LBB4_55
	movq      -64(%rbp), %rax
	leal      -1(%rax), %ecx
	cmpl      $4, %ecx
	movq      -48(%rbp), %r8
	movq      -56(%rbp), %rdi
	movq      %rbx, %r9
	ja        LBB4_61
	movl      $3, %ebx
	leaq      LJTI4_1(%rip), %rdx
	movq      %rdx, %rsi
	movslq    (%rsi,%rcx,4), %rdx
	addq      %rsi, %rdx
	leaq      _print_int(%rip), %rcx
	jmp       *%rdx
LBB4_89:
	testl     %r12d, %r12d
	leaq      _print_char(%rip), %rcx
	leaq      _print_s_char(%rip), %rax
	cmove     %rax, %rcx
	movl      $1, %ebx
	jmp       LBB4_90
LBB4_58:
	testl     %r12d, %r12d
	leaq      _print_short(%rip), %rcx
	leaq      _print_s_short(%rip), %rax
	cmove     %rax, %rcx
	movl      $2, %ebx
	jmp       LBB4_90
LBB4_59:
	leaq      _print_long(%rip), %rcx
	movl      %eax, %ebx
	jmp       LBB4_90
LBB4_60:
	leaq      _print_long_long(%rip), %rcx
	movl      %eax, %ebx
	jmp       LBB4_90
LBB4_75:
	leaq      2(%r8), %rdi
	jmp       LBB4_76
LBB4_64:
	cmpl      $70, %eax
	jne       LBB4_67
	leaq      2(%r8), %rdi
	movl      $4, %eax
	jmp       LBB4_77
LBB4_67:
	leaq      1(%r8), %rdi
	leal      -48(%rax), %ecx
	cmpl      $9, %ecx
	movl      $0, %ecx
	movl      $0, %ebx
	ja        LBB4_76
	.align 4, 0x90
LBB4_68:
	addl      $-48, %eax
	movslq    %eax, %rsi
	movq      %rsi, %rax
	notq      %rax
	movq      $-3689348814741910323, %rdx
	mulq      %rdx
	shrq      $3, %rdx
	cmpq      %rdx, %rbx
	ja        LBB4_97
	leaq      (%rbx,%rbx,4), %rax
	leaq      (%rsi,%rax,2), %rbx
	movsbl    2(%r8,%rcx), %eax
	leal      -48(%rax), %edx
	incq      %rcx
	cmpl      $10, %edx
	jb        LBB4_68
	testq     %rcx, %rcx
	movl      $8, %eax
	je        LBB4_77
	cmpq      $16, %rbx
	ja        LBB4_74
	leaq      _fp_type_size(%rip), %rax
	cmpl      $0, (%rax,%rbx,4)
	je        LBB4_74
	leaq      1(%r8,%rcx), %rdi
	movq      %rbx, %rax
	jmp       LBB4_77
LBB4_76:
	movl      $8, %eax
LBB4_77:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      _fp_type_size(%rip), %rcx
	movl      (%rcx,%rax,4), %r12d
	call      _localeconv
	movq      (%rax), %rdi
	cmpb      $0, (%rdi)
	movl      $1, %r9d
	je        LBB4_79
	call      _strlen
	movq      %rax, %r9
LBB4_79:
	cmpl      $8, %r12d
	movq      -48(%rbp), %r8
	movq      -56(%rbp), %rdi
	je        LBB4_84
	cmpl      $7, %r12d
	jne       LBB4_81
	addl      $23, %r9d
	movl      $7, %ebx
	movl      $4, %r12d
	leaq      _print_double(%rip), %rcx
	jmp       LBB4_90
LBB4_84:
	addl      $28, %r9d
	movl      $8, %ebx
	movl      $4, %r12d
	leaq      _print_long_double(%rip), %rcx
	jmp       LBB4_90
LBB4_81:
	cmpl      $6, %r12d
	jne       LBB4_85
	addl      $14, %r9d
	movl      $6, %ebx
	movl      $4, %r12d
	leaq      _print_float(%rip), %rcx
	.align 4, 0x90
LBB4_90:
	movl      %ebx, 4(%r15,%r13,8)
	movl      %r12d, (%r14)
	movq      %rcx, 8(%r15,%r13,8)
	movl      %r9d, 28(%r15,%r13,8)
	movzbl    (%rdi), %eax
	leaq      1(%rdi), %rcx
	cmpl      $122, %eax
	sete      24(%r15,%r13,8)
	cmovne    %rdi, %rcx
	cmpq      %rcx, %r8
	je        LBB4_91
	movq      _n_specs(%rip), %rax
	incq      %rax
	movq      %rax, _n_specs(%rip)
	cmpb      $0, (%rcx)
	movq      %rcx, %r8
	jne       LBB4_3
	movb      $1, %r14b
	jmp       LBB4_94
LBB4_88:
	movq      -72(%rbp), %rdi
	call      _quote
	movq      %rax, %rbx
	leaq      L_.str85(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      %r12d, %ecx
	movq      %rbx, %r8
	call      _error
LBB4_94:
	movb      %r14b, %al
	addq      $56, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB4_97:
	movq      -72(%rbp), %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str67(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
	jmp       LBB4_94
LBB4_61:
	call      _abort
LBB4_34:
	movq      -72(%rbp), %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str68(%rip), %rdx
LBB4_35:
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      %rbx, %r8
	call      _error
	jmp       LBB4_94
LBB4_74:
	movq      -72(%rbp), %rdi
	call      _quote
	movq      %rax, %rcx
	leaq      L_.str84(%rip), %rdx
	jmp       LBB4_35
LBB4_6:
	leaq      L___func__.decode_format_string(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str64(%rip), %rbx
	movl      $984, %edx
	jmp       LBB4_7
LBB4_95:
	call      _xalloc_die
LBB4_12:
	leaq      L___func__.decode_one_format(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str66(%rip), %rbx
	movl      $645, %edx
	jmp       LBB4_7
LBB4_96:
	call      _abort
LBB4_55:
	leaq      L___func__.decode_one_format(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str83(%rip), %rbx
	movl      $744, %edx
	jmp       LBB4_7
LBB4_85:
	call      _abort
LBB4_91:
	leaq      L___func__.decode_format_string(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str65(%rip), %rbx
	movl      $996, %edx
LBB4_7:
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
	.align 2, 0x90
LJTI4_0:
	.long	L4_0_set_86
	.long	L4_0_set_88
	.long	L4_0_set_87
	.long	L4_0_set_18
	.long	L4_0_set_88
	.long	L4_0_set_62
LJTI4_1:
	.long	L4_1_set_89
	.long	L4_1_set_58
	.long	L4_1_set_90
	.long	L4_1_set_59
	.long	L4_1_set_60
	.align 4, 0x90
_format_address_paren:
	pushq     %rbp
Ltmp48:
Ltmp49:
	movq      %rsp, %rbp
Ltmp50:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $48, %rsp
Ltmp51:
Ltmp52:
Ltmp53:
Ltmp54:
	movl      %esi, %r14d
	movq      %rdi, %rbx
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      %rax, -40(%rbp)
	movq      ___stdoutp@GOTPCREL(%rip), %r12
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB5_2
	cmpl      40(%rsi), %eax
	jle       LBB5_3
LBB5_2:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $40, (%rax)
	jmp       LBB5_4
LBB5_3:
	movl      $40, %edi
	call      ___swbuf
LBB5_4:
	movb      $0, -56(%rbp)
	leaq      -57(%rbp), %rdi
	movb      $41, -57(%rbp)
	movslq    _address_pad_len(%rip), %rax
	negq      %rax
	leaq      -57(%rbp,%rax), %rcx
	movl      _address_base(%rip), %eax
	cmpl      $16, %eax
	je        LBB5_5
	cmpl      $10, %eax
	jne       LBB5_10
	movq      $-3689348814741910323, %r8
	.align 4, 0x90
LBB5_9:
	movq      %rbx, %rax
	mulq      %r8
	shrq      $3, %rdx
	imull     $10, %edx, %eax
	movl      %ebx, %esi
	subl      %eax, %esi
	orl       $48, %esi
	movb      %sil, -1(%rdi)
	decq      %rdi
	cmpq      $9, %rbx
	movq      %rdx, %rbx
	ja        LBB5_9
	jmp       LBB5_13
LBB5_5:
	leaq      L_.str101(%rip), %rax
	.align 4, 0x90
LBB5_6:
	movq      %rbx, %rdx
	andq      $15, %rdx
	movb      (%rdx,%rax), %dl
	movb      %dl, -1(%rdi)
	decq      %rdi
	shrq      $4, %rbx
	jne       LBB5_6
	jmp       LBB5_13
LBB5_10:
	cmpl      $8, %eax
	jne       LBB5_13
	.align 4, 0x90
LBB5_11:
	movl      %ebx, %eax
	andl      $7, %eax
	orl       $48, %eax
	movb      %al, -1(%rdi)
	decq      %rdi
	shrq      $3, %rbx
	jne       LBB5_11
	jmp       LBB5_13
	.align 4, 0x90
LBB5_12:
	movb      $48, -1(%rdi)
	decq      %rdi
LBB5_13:
	cmpq      %rdi, %rcx
	jb        LBB5_12
	movq      (%r12), %rsi
	call      _fputs
	testb     %r14b, %r14b
	je        LBB5_20
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB5_18
	cmpl      40(%rsi), %eax
	jle       LBB5_19
	movzbl    %r14b, %eax
	cmpl      $10, %eax
	je        LBB5_19
LBB5_18:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %r14b, (%rax)
	jmp       LBB5_20
LBB5_19:
	movsbl    %r14b, %edi
	call      ___swbuf
LBB5_20:
	movq      (%r15), %rax
	cmpq      -40(%rbp), %rax
	jne       LBB5_22
	addq      $48, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB5_22:
	call      ___stack_chk_fail
	.align 4, 0x90
_format_address_label:
	pushq     %rbp
Ltmp58:
Ltmp59:
	movq      %rsp, %rbp
Ltmp60:
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $48, %rsp
Ltmp61:
Ltmp62:
Ltmp63:
Ltmp64:
	movl      %esi, %r14d
	movq      %rdi, %r12
	movq      ___stack_chk_guard@GOTPCREL(%rip), %r15
	movq      (%r15), %rax
	movq      %rax, -40(%rbp)
	movb      $0, -56(%rbp)
	leaq      -57(%rbp), %rdi
	movb      $32, -57(%rbp)
	movslq    _address_pad_len(%rip), %rax
	negq      %rax
	leaq      -57(%rbp,%rax), %rsi
	movl      _address_base(%rip), %eax
	cmpl      $16, %eax
	je        LBB6_1
	cmpl      $10, %eax
	jne       LBB6_6
	movq      $-3689348814741910323, %r8
	movq      %r12, %rcx
	.align 4, 0x90
LBB6_5:
	movq      %rcx, %rax
	mulq      %r8
	shrq      $3, %rdx
	imull     $10, %edx, %eax
	movl      %ecx, %ebx
	subl      %eax, %ebx
	orl       $48, %ebx
	movb      %bl, -1(%rdi)
	decq      %rdi
	cmpq      $9, %rcx
	movq      %rdx, %rcx
	ja        LBB6_5
	jmp       LBB6_10
LBB6_1:
	leaq      L_.str101(%rip), %rax
	movq      %r12, %rcx
	.align 4, 0x90
LBB6_2:
	movq      %rcx, %rdx
	andq      $15, %rdx
	movb      (%rdx,%rax), %dl
	movb      %dl, -1(%rdi)
	decq      %rdi
	shrq      $4, %rcx
	jne       LBB6_2
	jmp       LBB6_10
LBB6_6:
	cmpl      $8, %eax
	jne       LBB6_10
	movq      %r12, %rax
	.align 4, 0x90
LBB6_8:
	movl      %eax, %ecx
	andl      $7, %ecx
	orl       $48, %ecx
	movb      %cl, -1(%rdi)
	decq      %rdi
	shrq      $3, %rax
	jne       LBB6_8
	jmp       LBB6_10
	.align 4, 0x90
LBB6_9:
	movb      $48, -1(%rdi)
	decq      %rdi
LBB6_10:
	cmpq      %rdi, %rsi
	jb        LBB6_9
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      _fputs
	addq      _pseudo_offset(%rip), %r12
	movsbl    %r14b, %esi
	movq      %r12, %rdi
	call      _format_address_paren
	movq      (%r15), %rax
	cmpq      -40(%rbp), %rax
	jne       LBB6_13
	addq      $48, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB6_13:
	call      ___stack_chk_fail
	.align 4, 0x90
_open_next_file:
	pushq     %rbp
Ltmp68:
Ltmp69:
	movq      %rsp, %rbp
Ltmp70:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
Ltmp71:
Ltmp72:
Ltmp73:
Ltmp74:
Ltmp75:
	movb      $1, %r13b
	leaq      L_.str46(%rip), %r14
	leaq      L_.str60(%rip), %r15
	leaq      L_.str37(%rip), %r12
	.align 4, 0x90
LBB7_1:
	movq      _file_list(%rip), %rax
	movq      (%rax), %rbx
	movq      %rbx, _input_filename(%rip)
	testq     %rbx, %rbx
	je        LBB7_10
	addq      $8, %rax
	movq      %rax, _file_list(%rip)
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _strcmp
	testl     %eax, %eax
	je        LBB7_3
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _fopen$DARWIN_EXTSN
	movq      %rax, _in_stream(%rip)
	testq     %rax, %rax
	jne       LBB7_7
	call      ___error
	movl      (%rax), %esi
	movq      _input_filename(%rip), %rcx
	xorl      %r13d, %r13d
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _error
	movq      _in_stream(%rip), %rax
	jmp       LBB7_6
	.align 4, 0x90
LBB7_3:
	leaq      L_.str42(%rip), %rax
	movq      %rax, _input_filename(%rip)
	movq      ___stdinp@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, _in_stream(%rip)
	movb      $1, _have_read_stdin(%rip)
LBB7_6:
	testq     %rax, %rax
	je        LBB7_1
LBB7_7:
	movzbl    _limit_bytes_to_format(%rip), %ecx
	cmpl      $1, %ecx
	jne       LBB7_10
	movb      _flag_dump_strings(%rip), %cl
	testb     %cl, %cl
	jne       LBB7_10
	xorl      %esi, %esi
	movl      $2, %edx
	xorl      %ecx, %ecx
	movq      %rax, %rdi
	call      _setvbuf
LBB7_10:
	andb      $1, %r13b
	movb      %r13b, %al
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_read_block:
	pushq     %rbp
Ltmp79:
Ltmp80:
	movq      %rsp, %rbp
Ltmp81:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
Ltmp82:
Ltmp83:
Ltmp84:
Ltmp85:
Ltmp86:
	movq      %rdx, %r15
	movq      %rsi, %r14
	movq      %rdi, %r12
	leaq      -1(%r12), %rax
	cmpq      _bytes_per_block(%rip), %rax
	jae       LBB8_6
	movq      $0, (%r15)
	movq      _in_stream(%rip), %rcx
	movb      $1, %r13b
	xorl      %edi, %edi
	testq     %rcx, %rcx
	jne       LBB8_2
	jmp       LBB8_5
	.align 4, 0x90
LBB8_4:
	movq      (%r15), %rdi
LBB8_2:
	movq      %r12, %rbx
	subq      %rdi, %rbx
	addq      %r14, %rdi
	movl      $1, %esi
	movq      %rbx, %rdx
	call      _fread
	addq      %rax, (%r15)
	cmpq      %rbx, %rax
	je        LBB8_5
	call      ___error
	movl      (%rax), %edi
	call      _check_and_close
	movb      %r13b, %bl
	andb      %al, %bl
	call      _open_next_file
	movb      %al, %r13b
	andb      %bl, %r13b
	movq      _in_stream(%rip), %rcx
	testq     %rcx, %rcx
	jne       LBB8_4
LBB8_5:
	andb      $1, %r13b
	movb      %r13b, %al
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB8_6:
	leaq      L___func__.read_block(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str51(%rip), %rbx
	movl      $1290, %edx
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
	.align 4, 0x90
_write_block:
	pushq     %rbp
Ltmp90:
Ltmp91:
	movq      %rsp, %rbp
Ltmp92:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp93:
Ltmp94:
Ltmp95:
Ltmp96:
Ltmp97:
	movq      %rcx, -56(%rbp)
	movq      %rsi, -48(%rbp)
	movq      %rdi, -64(%rbp)
	movb      _abbreviate_duplicate_blocks(%rip), %al
	testb     %al, %al
	jne       LBB9_6
	movb      _write_block.first(%rip), %al
	testb     %al, %al
	je        LBB9_6
	movq      -48(%rbp), %rax
	cmpq      %rax, _bytes_per_block(%rip)
	jne       LBB9_6
	movq      %rdx, %rdi
	movq      -56(%rbp), %rsi
	movq      -48(%rbp), %rdx
	call      _memcmp
	testl     %eax, %eax
	je        LBB9_4
LBB9_6:
	movb      $0, _write_block.prev_pair_equal(%rip)
	cmpq      $0, _n_specs(%rip)
	je        LBB9_30
	xorl      %r13d, %r13d
	.align 4, 0x90
LBB9_8:
	movq      _spec(%rip), %rax
	leaq      (%r13,%r13,4), %rbx
	movl      4(%rax,%rbx,8), %eax
	movq      _bytes_per_block(%rip), %rcx
	leaq      _width_bytes(%rip), %rdx
	movslq    (%rdx,%rax,4), %rsi
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rsi
	movq      %rax, %r12
	subq      -48(%rbp), %rcx
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rsi
	movq      %rax, %r15
	testq     %r13, %r13
	je        LBB9_9
	movl      _address_pad_len(%rip), %esi
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	leaq      L_.str15(%rip), %rdx
	call      _printf
	jmp       LBB9_11
	.align 4, 0x90
LBB9_9:
	xorl      %esi, %esi
	movq      -64(%rbp), %rdi
	call      *_format_address(%rip)
LBB9_11:
	movq      _spec(%rip), %rax
	leaq      0(,%r13,8), %rcx
	leaq      (%rcx,%rcx,4), %r14
	movslq    %r12d, %rdi
	movslq    %r15d, %rsi
	leaq      16(%rax,%r14), %rcx
	movl      28(%rax,%r14), %r8d
	movl      32(%rax,%r14), %r9d
	movq      -56(%rbp), %rdx
	call      *8(%rax,%r14)
	movq      _spec(%rip), %rcx
	cmpb      $0, 24(%rcx,%r14)
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	je        LBB9_26
	movl      32(%rcx,%rbx,8), %eax
	imull     %r15d, %eax
	cltd      
	idivl     %r12d
	imull     28(%rcx,%rbx,8), %r15d
	addl      %eax, %r15d
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r15d, %esi
	leaq      L_.str15(%rip), %rdx
	call      _printf
	movq      (%r14), %rsi
	leaq      L_.str50(%rip), %rdi
	call      _fputs
	movq      -48(%rbp), %rax
	testq     %rax, %rax
	movq      -56(%rbp), %r15
	movq      %rax, %r12
	je        LBB9_22
	.align 4, 0x90
LBB9_13:
	movzbl    (%r15), %ebx
	incq      %r15
	testb     %bl, %bl
	js        LBB9_15
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%rbx,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       LBB9_16
	.align 4, 0x90
LBB9_15:
	movl      $262144, %esi
	movl      %ebx, %edi
	call      ___maskrune
LBB9_16:
	testl     %eax, %eax
	movl      $46, %eax
	cmove     %eax, %ebx
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB9_19
	cmpl      40(%rsi), %eax
	jle       LBB9_20
	cmpl      $10, %ebx
	je        LBB9_20
LBB9_19:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %bl, (%rax)
	jmp       LBB9_21
LBB9_20:
	movl      %ebx, %edi
	call      ___swbuf
	.align 4, 0x90
LBB9_21:
	decq      %r12
	jne       LBB9_13
LBB9_22:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        LBB9_24
	cmpl      40(%rsi), %eax
	jle       LBB9_25
LBB9_24:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $60, (%rax)
	jmp       LBB9_26
LBB9_25:
	movl      $60, %edi
	call      ___swbuf
	.align 4, 0x90
LBB9_26:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       LBB9_28
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       LBB9_29
	.align 4, 0x90
LBB9_28:
	movl      $10, %edi
	call      ___swbuf
LBB9_29:
	incq      %r13
	cmpq      _n_specs(%rip), %r13
	jb        LBB9_8
	jmp       LBB9_30
LBB9_4:
	movb      _write_block.prev_pair_equal(%rip), %al
	testb     %al, %al
	jne       LBB9_30
	leaq      L_str(%rip), %rdi
	call      _puts
	movb      $1, _write_block.prev_pair_equal(%rip)
LBB9_30:
	movb      $1, _write_block.first(%rip)
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_check_and_close:
	pushq     %rbp
Ltmp101:
Ltmp102:
	movq      %rsp, %rbp
Ltmp103:
	pushq     %r14
	pushq     %rbx
Ltmp104:
Ltmp105:
	movl      %edi, %esi
	movq      _in_stream(%rip), %rbx
	movb      $1, %r14b
	testq     %rbx, %rbx
	je        LBB10_8
	testb     $64, 16(%rbx)
	je        LBB10_4
	movq      _input_filename(%rip), %rcx
	leaq      L_.str45(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      _error
	movq      _file_list(%rip), %rax
	movq      -8(%rax), %rdi
	leaq      L_.str46(%rip), %rsi
	call      _strcmp
	testl     %eax, %eax
	je        LBB10_7
	movq      _in_stream(%rip), %rdi
	call      _rpl_fclose
	xorl      %r14d, %r14d
	jmp       LBB10_7
LBB10_4:
	movq      _file_list(%rip), %rax
	movq      -8(%rax), %rdi
	leaq      L_.str46(%rip), %rsi
	call      _strcmp
	movb      $1, %r14b
	testl     %eax, %eax
	je        LBB10_7
	movq      %rbx, %rdi
	call      _rpl_fclose
	testl     %eax, %eax
	je        LBB10_7
	call      ___error
	movl      (%rax), %esi
	movq      _input_filename(%rip), %rcx
	leaq      L_.str37(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      _error
LBB10_7:
	movq      $0, _in_stream(%rip)
LBB10_8:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	testb     $64, 16(%rax)
	je        LBB10_10
	leaq      L_.str47(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
LBB10_10:
	movb      %r14b, %al
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
	.align 4, 0x90
_print_s_char:
	pushq     %rbp
Ltmp109:
Ltmp110:
	movq      %rsp, %rbp
Ltmp111:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp112:
Ltmp113:
Ltmp114:
Ltmp115:
Ltmp116:
	movl      %r9d, %ebx
	movq      %rdx, %r14
	movq      %rsi, -56(%rbp)
	cmpq      %rsi, %rdi
	jbe       LBB11_3
	movq      %rdi, -64(%rbp)
	leaq      -1(%rdi), %r15
	movslq    %ebx, %rax
	movq      %rax, -72(%rbp)
	imulq     %rax, %r15
	movq      %rdi, %r13
	.align 4, 0x90
LBB11_2:
	decq      %r13
	xorl      %edx, %edx
	movq      %r15, %rax
	divq      -64(%rbp)
	movq      %rax, -48(%rbp)
	addl      %r8d, %ebx
	subl      %eax, %ebx
	movsbl    (%r14), %edx
	incq      %r14
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movl      %ebx, %esi
	movl      %r8d, %ebx
	movq      %rcx, %r12
	call      _xprintf
	movq      -56(%rbp), %rax
	movq      %r12, %rcx
	movl      %ebx, %r8d
	subq      -72(%rbp), %r15
	cmpq      %rax, %r13
	movq      -48(%rbp), %rax
	movl      %eax, %ebx
	ja        LBB11_2
LBB11_3:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_char:
	pushq     %rbp
Ltmp120:
Ltmp121:
	movq      %rsp, %rbp
Ltmp122:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp123:
Ltmp124:
Ltmp125:
Ltmp126:
Ltmp127:
	movl      %r9d, %ebx
	movq      %rdx, %r14
	movq      %rsi, -56(%rbp)
	cmpq      %rsi, %rdi
	jbe       LBB12_3
	movq      %rdi, -64(%rbp)
	leaq      -1(%rdi), %r15
	movslq    %ebx, %rax
	movq      %rax, -72(%rbp)
	imulq     %rax, %r15
	movq      %rdi, %r13
	.align 4, 0x90
LBB12_2:
	decq      %r13
	xorl      %edx, %edx
	movq      %r15, %rax
	divq      -64(%rbp)
	movq      %rax, -48(%rbp)
	addl      %r8d, %ebx
	subl      %eax, %ebx
	movzbl    (%r14), %edx
	incq      %r14
	xorl      %eax, %eax
	movq      %rcx, %rdi
	movl      %ebx, %esi
	movl      %r8d, %ebx
	movq      %rcx, %r12
	call      _xprintf
	movq      -56(%rbp), %rax
	movq      %r12, %rcx
	movl      %ebx, %r8d
	subq      -72(%rbp), %r15
	cmpq      %rax, %r13
	movq      -48(%rbp), %rax
	movl      %eax, %ebx
	ja        LBB12_2
LBB12_3:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_s_short:
	pushq     %rbp
Ltmp131:
Ltmp132:
	movq      %rsp, %rbp
Ltmp133:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp134:
Ltmp135:
Ltmp136:
Ltmp137:
Ltmp138:
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       LBB13_5
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
LBB13_2:
	movl      %r15d, %esi
	decq      %r13
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r12
	addl      -52(%rbp), %esi
	movq      %rax, %r15
	subl      %r15d, %esi
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB13_4
	movb      1(%rbx), %al
	movb      %al, -48(%rbp)
	movb      (%rbx), %al
	movb      %al, -47(%rbp)
	leaq      -48(%rbp), %rax
LBB13_4:
	addq      $2, %rbx
	movswl    (%rax), %edx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        LBB13_2
LBB13_5:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_short:
	pushq     %rbp
Ltmp142:
Ltmp143:
	movq      %rsp, %rbp
Ltmp144:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp145:
Ltmp146:
Ltmp147:
Ltmp148:
Ltmp149:
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       LBB14_5
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
LBB14_2:
	movl      %r15d, %esi
	decq      %r13
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r12
	addl      -52(%rbp), %esi
	movq      %rax, %r15
	subl      %r15d, %esi
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB14_4
	movb      1(%rbx), %al
	movb      %al, -48(%rbp)
	movb      (%rbx), %al
	movb      %al, -47(%rbp)
	leaq      -48(%rbp), %rax
LBB14_4:
	addq      $2, %rbx
	movzwl    (%rax), %edx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        LBB14_2
LBB14_5:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_int:
	pushq     %rbp
Ltmp153:
Ltmp154:
	movq      %rsp, %rbp
Ltmp155:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp156:
Ltmp157:
Ltmp158:
Ltmp159:
Ltmp160:
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       LBB15_5
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
LBB15_2:
	movl      %r15d, %esi
	decq      %r13
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r12
	addl      -52(%rbp), %esi
	movq      %rax, %r15
	subl      %r15d, %esi
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB15_4
	movb      3(%rbx), %al
	movb      %al, -48(%rbp)
	movb      2(%rbx), %al
	movb      %al, -47(%rbp)
	movb      1(%rbx), %al
	movb      %al, -46(%rbp)
	movb      (%rbx), %al
	movb      %al, -45(%rbp)
	leaq      -48(%rbp), %rax
LBB15_4:
	movl      (%rax), %edx
	addq      $4, %rbx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        LBB15_2
LBB15_5:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_long:
	pushq     %rbp
Ltmp164:
Ltmp165:
	movq      %rsp, %rbp
Ltmp166:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp167:
Ltmp168:
Ltmp169:
Ltmp170:
Ltmp171:
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       LBB16_5
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
LBB16_2:
	movl      %r15d, %esi
	decq      %r13
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r12
	addl      -52(%rbp), %esi
	movq      %rax, %r15
	subl      %r15d, %esi
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB16_4
	movb      7(%rbx), %al
	movb      %al, -48(%rbp)
	movb      6(%rbx), %al
	movb      %al, -47(%rbp)
	movb      5(%rbx), %al
	movb      %al, -46(%rbp)
	movb      4(%rbx), %al
	movb      %al, -45(%rbp)
	movb      3(%rbx), %al
	movb      %al, -44(%rbp)
	movb      2(%rbx), %al
	movb      %al, -43(%rbp)
	movb      1(%rbx), %al
	movb      %al, -42(%rbp)
	movb      (%rbx), %al
	movb      %al, -41(%rbp)
	leaq      -48(%rbp), %rax
LBB16_4:
	movq      (%rax), %rdx
	addq      $8, %rbx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        LBB16_2
LBB16_5:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_long_long:
	pushq     %rbp
Ltmp175:
Ltmp176:
	movq      %rsp, %rbp
Ltmp177:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
Ltmp178:
Ltmp179:
Ltmp180:
Ltmp181:
Ltmp182:
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       LBB17_5
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
LBB17_2:
	movl      %r15d, %esi
	decq      %r13
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      %r12
	addl      -52(%rbp), %esi
	movq      %rax, %r15
	subl      %r15d, %esi
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB17_4
	movb      7(%rbx), %al
	movb      %al, -48(%rbp)
	movb      6(%rbx), %al
	movb      %al, -47(%rbp)
	movb      5(%rbx), %al
	movb      %al, -46(%rbp)
	movb      4(%rbx), %al
	movb      %al, -45(%rbp)
	movb      3(%rbx), %al
	movb      %al, -44(%rbp)
	movb      2(%rbx), %al
	movb      %al, -43(%rbp)
	movb      1(%rbx), %al
	movb      %al, -42(%rbp)
	movb      (%rbx), %al
	movb      %al, -41(%rbp)
	leaq      -48(%rbp), %rax
LBB17_4:
	movq      (%rax), %rdx
	addq      $8, %rbx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        LBB17_2
LBB17_5:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_float:
	pushq     %rbp
Ltmp186:
Ltmp187:
	movq      %rsp, %rbp
Ltmp188:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $88, %rsp
Ltmp189:
Ltmp190:
Ltmp191:
Ltmp192:
Ltmp193:
	movl      %r8d, -100(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -112(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      %rsi, %rdi
	jbe       LBB18_5
	movq      %rdi, -120(%rbp)
	leaq      -1(%rdi), %r14
	movslq    %r9d, %rax
	movq      %rax, -128(%rbp)
	imulq     %rax, %r14
	leaq      -80(%rbp), %r13
	movq      %rdi, %r15
	.align 4, 0x90
LBB18_2:
	movl      %r9d, %r12d
	decq      %r15
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -120(%rbp)
	addl      -100(%rbp), %r12d
	movq      %rax, -96(%rbp)
	subl      %eax, %r12d
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB18_4
	movb      3(%rbx), %al
	movb      %al, -88(%rbp)
	movb      2(%rbx), %al
	movb      %al, -87(%rbp)
	movb      1(%rbx), %al
	movb      %al, -86(%rbp)
	movb      (%rbx), %al
	movb      %al, -85(%rbp)
	leaq      -88(%rbp), %rax
LBB18_4:
	movss     (%rax), %xmm0
	addq      $4, %rbx
	movl      $21, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %r13, %rdi
	call      _ftoastr
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r12d, %esi
	movq      %r13, %rdx
	call      _xprintf
	subq      -128(%rbp), %r14
	cmpq      -112(%rbp), %r15
	movq      -96(%rbp), %r9
	ja        LBB18_2
LBB18_5:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB18_7
	addq      $88, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB18_7:
	call      ___stack_chk_fail
	.align 4, 0x90
_print_double:
	pushq     %rbp
Ltmp197:
Ltmp198:
	movq      %rsp, %rbp
Ltmp199:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $88, %rsp
Ltmp200:
Ltmp201:
Ltmp202:
Ltmp203:
Ltmp204:
	movl      %r8d, -100(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -112(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      %rsi, %rdi
	jbe       LBB19_5
	movq      %rdi, -120(%rbp)
	leaq      -1(%rdi), %r14
	movslq    %r9d, %rax
	movq      %rax, -128(%rbp)
	imulq     %rax, %r14
	leaq      -80(%rbp), %r13
	movq      %rdi, %r15
	.align 4, 0x90
LBB19_2:
	movl      %r9d, %r12d
	decq      %r15
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -120(%rbp)
	addl      -100(%rbp), %r12d
	movq      %rax, -96(%rbp)
	subl      %eax, %r12d
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB19_4
	movb      7(%rbx), %al
	movb      %al, -88(%rbp)
	movb      6(%rbx), %al
	movb      %al, -87(%rbp)
	movb      5(%rbx), %al
	movb      %al, -86(%rbp)
	movb      4(%rbx), %al
	movb      %al, -85(%rbp)
	movb      3(%rbx), %al
	movb      %al, -84(%rbp)
	movb      2(%rbx), %al
	movb      %al, -83(%rbp)
	movb      1(%rbx), %al
	movb      %al, -82(%rbp)
	movb      (%rbx), %al
	movb      %al, -81(%rbp)
	leaq      -88(%rbp), %rax
LBB19_4:
	movsd     (%rax), %xmm0
	addq      $8, %rbx
	movl      $30, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %r13, %rdi
	call      _dtoastr
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r12d, %esi
	movq      %r13, %rdx
	call      _xprintf
	subq      -128(%rbp), %r14
	cmpq      -112(%rbp), %r15
	movq      -96(%rbp), %r9
	ja        LBB19_2
LBB19_5:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB19_7
	addq      $88, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB19_7:
	call      ___stack_chk_fail
	.align 4, 0x90
_print_long_double:
	pushq     %rbp
Ltmp208:
Ltmp209:
	movq      %rsp, %rbp
Ltmp210:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $136, %rsp
Ltmp211:
Ltmp212:
Ltmp213:
Ltmp214:
Ltmp215:
	movl      %r8d, -124(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -136(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      %rsi, %rdi
	jbe       LBB20_5
	movq      %rdi, -144(%rbp)
	leaq      -1(%rdi), %r14
	movslq    %r9d, %rax
	movq      %rax, -152(%rbp)
	imulq     %rax, %r14
	leaq      -96(%rbp), %r13
	movq      %rdi, %r12
	.align 4, 0x90
LBB20_2:
	movl      %r9d, %r15d
	decq      %r12
	xorl      %edx, %edx
	movq      %r14, %rax
	divq      -144(%rbp)
	addl      -124(%rbp), %r15d
	movq      %rax, -120(%rbp)
	subl      %eax, %r15d
	movzbl    _input_swap(%rip), %eax
	cmpl      $1, %eax
	movq      %rbx, %rax
	jne       LBB20_4
	movb      15(%rbx), %al
	movb      %al, -112(%rbp)
	movb      14(%rbx), %al
	movb      %al, -111(%rbp)
	movb      13(%rbx), %al
	movb      %al, -110(%rbp)
	movb      12(%rbx), %al
	movb      %al, -109(%rbp)
	movb      11(%rbx), %al
	movb      %al, -108(%rbp)
	movb      10(%rbx), %al
	movb      %al, -107(%rbp)
	movb      9(%rbx), %al
	movb      %al, -106(%rbp)
	movb      8(%rbx), %al
	movb      %al, -105(%rbp)
	movb      7(%rbx), %al
	movb      %al, -104(%rbp)
	movb      6(%rbx), %al
	movb      %al, -103(%rbp)
	movb      5(%rbx), %al
	movb      %al, -102(%rbp)
	movb      4(%rbx), %al
	movb      %al, -101(%rbp)
	movb      3(%rbx), %al
	movb      %al, -100(%rbp)
	movb      2(%rbx), %al
	movb      %al, -99(%rbp)
	movb      1(%rbx), %al
	movb      %al, -98(%rbp)
	movb      (%rbx), %al
	movb      %al, -97(%rbp)
	leaq      -112(%rbp), %rax
LBB20_4:
	fldt      (%rax)
	addq      $16, %rbx
	fstpt     (%rsp)
	movl      $35, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %r13, %rdi
	call      _ldtoastr
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r15d, %esi
	movq      %r13, %rdx
	call      _xprintf
	subq      -152(%rbp), %r14
	cmpq      -136(%rbp), %r12
	movq      -120(%rbp), %r9
	ja        LBB20_2
LBB20_5:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       LBB20_7
	addq      $136, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB20_7:
	call      ___stack_chk_fail
	.align 4, 0x90
_print_named_ascii:
	pushq     %rbp
Ltmp219:
Ltmp220:
	movq      %rsp, %rbp
Ltmp221:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
Ltmp222:
Ltmp223:
Ltmp224:
Ltmp225:
Ltmp226:
	movl      %r9d, %ecx
	movl      %r8d, -48(%rbp)
	movq      %rdx, %r13
	movq      %rsi, -56(%rbp)
	movq      %rdi, %r15
	cmpq      %rsi, %r15
	jbe       LBB21_7
	leaq      -1(%r15), %rbx
	movslq    %ecx, %rax
	movq      %rax, -64(%rbp)
	imulq     %rax, %rbx
	movq      %r15, %r12
	.align 4, 0x90
LBB21_2:
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %r15
	movq      %rax, %r14
	movzbl    (%r13), %eax
	andl      $127, %eax
	cmpl      $127, %eax
	leaq      L_.str89(%rip), %rdx
	je        LBB21_6
	cmpl      $32, %eax
	ja        LBB21_5
	leaq      _charname(%rip), %rdx
	leaq      (%rdx,%rax,4), %rdx
	jmp       LBB21_6
	.align 4, 0x90
LBB21_5:
	movb      %al, -42(%rbp)
	movb      $0, -41(%rbp)
	leaq      -42(%rbp), %rdx
LBB21_6:
	decq      %r12
	incq      %r13
	addl      -48(%rbp), %ecx
	subl      %r14d, %ecx
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %ecx, %esi
	call      _xprintf
	subq      -64(%rbp), %rbx
	cmpq      -56(%rbp), %r12
	movl      %r14d, %ecx
	ja        LBB21_2
LBB21_7:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 4, 0x90
_print_ascii:
	pushq     %rbp
Ltmp230:
Ltmp231:
	movq      %rsp, %rbp
Ltmp232:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $72, %rsp
Ltmp233:
Ltmp234:
Ltmp235:
Ltmp236:
Ltmp237:
	movl      %r9d, %ebx
	movl      %r8d, -76(%rbp)
	movq      %rdx, %rcx
	movq      %rsi, -88(%rbp)
	cmpq      %rsi, %rdi
	jbe       LBB22_16
	movq      %rdi, -96(%rbp)
	leaq      -1(%rdi), %r13
	movslq    %ebx, %rax
	movq      %rax, -104(%rbp)
	leaq      -44(%rbp), %r14
	movq      %rdi, %rdx
	imulq     %rax, %r13
	jmp       LBB22_2
LBB22_4:
	leaq      L_.str52(%rip), %rdx
	jmp       LBB22_15
LBB22_5:
	leaq      L_.str53(%rip), %rdx
	jmp       LBB22_15
LBB22_9:
	leaq      L_.str57(%rip), %rdx
	jmp       LBB22_15
LBB22_7:
	leaq      L_.str55(%rip), %rdx
	jmp       LBB22_15
LBB22_10:
	leaq      L_.str58(%rip), %rdx
	jmp       LBB22_15
LBB22_6:
	leaq      L_.str54(%rip), %rdx
	jmp       LBB22_15
LBB22_8:
	leaq      L_.str56(%rip), %rdx
	jmp       LBB22_15
	.align 4, 0x90
LBB22_2:
	movl      %ebx, %r15d
	decq      %rdx
	movq      %rdx, -72(%rbp)
	xorl      %edx, %edx
	movq      %r13, %rax
	divq      -96(%rbp)
	movzbl    (%rcx), %r12d
	incq      %rcx
	movq      %rcx, -56(%rbp)
	cmpl      $13, %r12d
	movq      %rax, -64(%rbp)
	ja        LBB22_11
	leaq      LJTI22_0(%rip), %rax
	movq      %rax, %rcx
	movslq    (%rcx,%r12,4), %rax
	addq      %rcx, %rax
	leaq      L_.str86(%rip), %rdx
	jmp       *%rax
	.align 4, 0x90
LBB22_11:
	testb     %r12b, %r12b
	js        LBB22_13
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%r12,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       LBB22_14
	.align 4, 0x90
LBB22_13:
	movl      $262144, %esi
	movl      %r12d, %edi
	call      ___maskrune
LBB22_14:
	testl     %eax, %eax
	leaq      L_.str88(%rip), %rcx
	leaq      L_.str87(%rip), %rax
	cmovne    %rax, %rcx
	xorl      %esi, %esi
	movl      $4, %edx
	xorl      %eax, %eax
	movq      %r14, %rdi
	movl      %r12d, %r8d
	call      ___sprintf_chk
	movq      %r14, %rdx
LBB22_15:
	addl      -76(%rbp), %r15d
	movq      -64(%rbp), %rbx
	subl      %ebx, %r15d
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r15d, %esi
	call      _xprintf
	subq      -104(%rbp), %r13
	movq      -72(%rbp), %rdx
	cmpq      -88(%rbp), %rdx
	movq      -56(%rbp), %rcx
	ja        LBB22_2
LBB22_16:
	addq      $72, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
	.align 2, 0x90
LJTI22_0:
	.long	L22_0_set_15
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_11
	.long	L22_0_set_4
	.long	L22_0_set_5
	.long	L22_0_set_9
	.long	L22_0_set_7
	.long	L22_0_set_10
	.long	L22_0_set_6
	.long	L22_0_set_8
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [-abcdfilosx]... [FILE] [[+]OFFSET[.][b]]\n  or:  %s --traditional [OPTION]... [FILE] [[+]OFFSET[.][b] [+][LABEL][.][b]]\n"
L_.str1:
	.asciz	"\nWrite an unambiguous representation, octal bytes by default,\nof FILE to standard output.  With more than one FILE argument,\nconcatenate them in the listed order to form the input.\n"
L_.str2:
	.asciz	"\nIf first and second call formats both apply, the second format is assumed\nif the last operand begins with + or (if there are 2 operands) a digit.\nAn OFFSET operand means -j OFFSET.  LABEL is the pseudo-address\nat first byte printed, incremented when dump is progressing.\nFor OFFSET and LABEL, a 0x or 0X prefix indicates hexadecimal;\nsuffixes may be . for octal and b for multiply by 512.\n"
L_.str3:
	.asciz	"  -A, --address-radix=RADIX   output format for file offsets; RADIX is one\n                                of [doxn], for Decimal, Octal, Hex or None\n      --endian={big|little}   swap input bytes according the specified order\n  -j, --skip-bytes=BYTES      skip BYTES input bytes first\n"
L_.str4:
	.asciz	"  -N, --read-bytes=BYTES      limit dump to BYTES input bytes\n  -S BYTES, --strings[=BYTES]  output strings of at least BYTES graphic chars;\n                                3 is implied when BYTES is not specified\n  -t, --format=TYPE           select output format or formats\n  -v, --output-duplicates     do not use * to mark line suppression\n  -w[BYTES], --width[=BYTES]  output BYTES bytes per output line;\n                                32 is implied when BYTES is not specified\n      --traditional           accept arguments in third form above\n"
L_.str5:
	.asciz	"      --help     display this help and exit\n"
L_.str6:
	.asciz	"      --version  output version information and exit\n"
L_.str7:
	.asciz	"\n\nTraditional format specifications may be intermixed; they accumulate:\n  -a   same as -t a,  select named characters, ignoring high-order bit\n  -b   same as -t o1, select octal bytes\n  -c   same as -t c,  select printable characters or backslash escapes\n  -d   same as -t u2, select unsigned decimal 2-byte units\n"
L_.str8:
	.asciz	"  -f   same as -t fF, select floats\n  -i   same as -t dI, select decimal ints\n  -l   same as -t dL, select decimal longs\n  -o   same as -t o2, select octal 2-byte units\n  -s   same as -t d2, select decimal 2-byte units\n  -x   same as -t x2, select hexadecimal 2-byte units\n"
L_.str9:
	.asciz	"\n\nTYPE is made up of one or more of these specifications:\n  a          named character, ignoring high-order bit\n  c          printable character or backslash escape\n"
L_.str10:
	.asciz	"  d[SIZE]    signed decimal, SIZE bytes per integer\n  f[SIZE]    floating point, SIZE bytes per integer\n  o[SIZE]    octal, SIZE bytes per integer\n  u[SIZE]    unsigned decimal, SIZE bytes per integer\n  x[SIZE]    hexadecimal, SIZE bytes per integer\n"
L_.str11:
	.asciz	"\nSIZE is a number.  For TYPE in [doux], SIZE may also be C for\nsizeof(char), S for sizeof(short), I for sizeof(int) or L for\nsizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D\nfor sizeof(double) or L for sizeof(long double).\n"
L_.str12:
	.asciz	"\nAdding a z suffix to any type displays printable characters at the end of\neach output line.\n"
L_.str13:
	.asciz	"\n\nBYTES is hex with 0x or 0X prefix, and may have a multiplier suffix:\n  b    512\n  KB   1000\n  K    1024\n  MB   1000*1000\n  M    1024*1024\nand so on for G, T, P, E, Z, Y.\n"
L_.str14:
	.asciz	"od"
L_.str15:
	.zero	1
L_.str16:
	.asciz	"invalid output address radix '%c'; it must be one character from [doxn]"
L_.str18:
	.asciz	"--endian"
L_.str19:
	.asciz	"a"
L_.str20:
	.asciz	"o1"
L_.str21:
	.asciz	"c"
L_.str22:
	.asciz	"u4"
L_.str23:
	.asciz	"u2"
L_.str24:
	.asciz	"fD"
L_.str25:
	.asciz	"fF"
L_.str26:
	.asciz	"x4"
L_.str27:
	.asciz	"dI"
L_.str28:
	.asciz	"dL"
L_.str29:
	.asciz	"o4"
L_.str30:
	.asciz	"o2"
L_.str31:
	.asciz	"d2"
L_.str32:
	.asciz	"x2"
L_.str33:
	.asciz	"GNU coreutils"
L_.str34:
	.asciz	"Jim Meyering"
L_.str35:
	.asciz	"no type may be specified when dumping strings"
L_.str36:
	.asciz	"extra operand %s"
L_.str37:
	.asciz	"%s"
L_.str38:
	.asciz	"compatibility mode supports at most one file"
L_.str39:
	.asciz	"skip-bytes + read-bytes is too large"
L_.str40:
	.asciz	"oS"
L_.str41:
	.asciz	"warning: invalid width %lu; using %d instead"
L_.str42:
	.asciz	"standard input"
L___func__.dump:
	.asciz	"dump"
L_.str43:
	.asciz	"src/od.c"
L_.str44:
	.asciz	"n_bytes_read == bytes_per_block"
L_.str45:
	.asciz	"%s: read error"
L_.str46:
	.asciz	"-"
L_.str47:
	.asciz	"write error"
L_.str49:
	.asciz	"%*s"
L_.str50:
	.asciz	"  >"
L___func__.read_block:
	.asciz	"read_block"
L_.str51:
	.asciz	"0 < n && n <= bytes_per_block"
L_.str52:
	.asciz	"\\a"
L_.str53:
	.asciz	"\\b"
L_.str54:
	.asciz	"\\f"
L_.str55:
	.asciz	"\\n"
L_.str56:
	.asciz	"\\r"
L_.str57:
	.asciz	"\\t"
L_.str58:
	.asciz	"\\v"
L_.str59:
	.asciz	"cannot skip past end of combined input"
L_.str60:
	.asciz	"r"
L_.str61:
	.asciz	"Bb"
L_.str62:
	.asciz	"little"
L_.str63:
	.asciz	"big"
L___func__.decode_format_string:
	.asciz	"decode_format_string"
L_.str64:
	.asciz	"s != NULL"
L_.str65:
	.asciz	"s != next"
L___func__.decode_one_format:
	.asciz	"decode_one_format"
L_.str66:
	.asciz	"tspec != NULL"
L_.str67:
	.asciz	"invalid type string %s"
L_.str68:
	.asciz	"invalid type string %s;\nthis system doesn't provide a %lu-byte integral type"
L_.str69:
	.asciz	"%%*%s"
L_.str70:
	.asciz	"jd"
L_.str71:
	.asciz	"ld"
L_.str72:
	.asciz	"d"
L_.str73:
	.asciz	"%%*.%d%s"
L_.str74:
	.asciz	"jo"
L_.str75:
	.asciz	"lo"
L_.str76:
	.asciz	"o"
L_.str77:
	.asciz	"ju"
L_.str78:
	.asciz	"lu"
L_.str79:
	.asciz	"u"
L_.str80:
	.asciz	"jx"
L_.str81:
	.asciz	"lx"
L_.str82:
	.asciz	"x"
L_.str83:
	.asciz	"strlen (tspec->fmt_string) < FMT_BYTES_ALLOCATED"
L_.str84:
	.asciz	"invalid type string %s;\nthis system doesn't provide a %lu-byte floating point type"
L_.str85:
	.asciz	"invalid character '%c' in type string %s"
L_.str86:
	.asciz	"\\0"
L_.str87:
	.asciz	"%c"
L_.str88:
	.asciz	"%03o"
L_.str89:
	.asciz	"del"
L_.str90:
	.asciz	"skip-bytes"
L_.str91:
	.asciz	"address-radix"
L_.str92:
	.asciz	"read-bytes"
L_.str93:
	.asciz	"format"
L_.str94:
	.asciz	"output-duplicates"
L_.str95:
	.asciz	"strings"
L_.str96:
	.asciz	"traditional"
L_.str97:
	.asciz	"width"
L_.str98:
	.asciz	"endian"
L_.str99:
	.asciz	"help"
L_.str100:
	.asciz	"version"
L_.str101:
	.asciz	"0123456789abcdef"
L_.str102:
	.asciz	"["
L_.str103:
	.asciz	"test invocation"
L_.str104:
	.asciz	"coreutils"
L_.str105:
	.asciz	"Multi-call invocation"
L_.str106:
	.asciz	"sha224sum"
L_.str107:
	.asciz	"sha2 utilities"
L_.str108:
	.asciz	"sha256sum"
L_.str109:
	.asciz	"sha384sum"
L_.str110:
	.asciz	"sha512sum"
L_.str111:
	.asciz	"\n%s online help: <%s>\n"
L_.str112:
	.asciz	"http://www.gnu.org/software/coreutils/"
L_.str113:
	.asciz	"en_"
L_.str114:
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"
L_.str115:
	.asciz	"Full documentation at: <%s%s>\n"
L_.str116:
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"
L_.str117:
	.asciz	" invocation"
L_.str118:
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"
L_.str119:
	.asciz	"\nWith no FILE, or when FILE is -, read standard input.\n"
L_.str120:
	.asciz	"Try '%s --help' for more information.\n"
L_str:
	.asciz	"*"
# ----------------------
	.section       __TEXT,__const
_main.multipliers:
	.asciz	"bEGKkMmPTYZ0"
	.align 4
_short_options:
	.asciz	"A:aBbcDdeFfHhIij:LlN:OoS:st:vw::Xx"
	.align 2
_endian_types:
	.long	0
	.long	1
	.align 4
_width_bytes:
	.long	-1
	.long	1
	.long	2
	.long	4
	.long	8
	.long	8
	.long	4
	.long	8
	.long	16
	.align 4
_bytes_to_signed_dec_digits:
	.long	1
	.long	4
	.long	6
	.long	8
	.long	11
	.long	13
	.long	16
	.long	18
	.long	20
	.long	23
	.long	25
	.long	28
	.long	30
	.long	33
	.long	35
	.long	37
	.long	40
	.align 4
_bytes_to_oct_digits:
	.long	0
	.long	3
	.long	6
	.long	8
	.long	11
	.long	14
	.long	16
	.long	19
	.long	22
	.long	25
	.long	27
	.long	30
	.long	32
	.long	35
	.long	38
	.long	41
	.long	43
	.align 4
_bytes_to_unsigned_dec_digits:
	.long	0
	.long	3
	.long	5
	.long	8
	.long	10
	.long	13
	.long	15
	.long	17
	.long	20
	.long	22
	.long	25
	.long	27
	.long	29
	.long	32
	.long	34
	.long	37
	.long	39
	.align 4
_bytes_to_hex_digits:
	.long	0
	.long	2
	.long	4
	.long	6
	.long	8
	.long	10
	.long	12
	.long	14
	.long	16
	.long	18
	.long	20
	.long	22
	.long	24
	.long	26
	.long	28
	.long	30
	.long	32
	.align 4
_charname:
	.asciz	"nul"
	.asciz	"soh"
	.asciz	"stx"
	.asciz	"etx"
	.asciz	"eot"
	.asciz	"enq"
	.asciz	"ack"
	.asciz	"bel"
	.asciz	"bs\000"
	.asciz	"ht\000"
	.asciz	"nl\000"
	.asciz	"vt\000"
	.asciz	"ff\000"
	.asciz	"cr\000"
	.asciz	"so\000"
	.asciz	"si\000"
	.asciz	"dle"
	.asciz	"dc1"
	.asciz	"dc2"
	.asciz	"dc3"
	.asciz	"dc4"
	.asciz	"nak"
	.asciz	"syn"
	.asciz	"etb"
	.asciz	"can"
	.asciz	"em\000"
	.asciz	"sub"
	.asciz	"esc"
	.asciz	"fs\000"
	.asciz	"gs\000"
	.asciz	"rs\000"
	.asciz	"us\000"
	.asciz	"sp\000"
# ----------------------
.zerofill __DATA,__bss,_integral_type_size,36,4
# ----------------------
.zerofill __DATA,__bss,_fp_type_size,68,4
# ----------------------
.zerofill __DATA,__bss,_n_specs,8,3
# ----------------------
.zerofill __DATA,__bss,_n_specs_allocated,8,3
# ----------------------
.zerofill __DATA,__bss,_spec,8,3
# ----------------------
.zerofill __DATA,__bss,_format_address,8,3
# ----------------------
.zerofill __DATA,__bss,_address_base,4,2
# ----------------------
.zerofill __DATA,__bss,_address_pad_len,4,2
# ----------------------
.zerofill __DATA,__bss,_flag_dump_strings,1,0
# ----------------------
.zerofill __DATA,__bss,_n_bytes_to_skip,8,3
# ----------------------
.zerofill __DATA,__bss,_limit_bytes_to_format,1,0
# ----------------------
.zerofill __DATA,__bss,_max_bytes_to_format,8,3
# ----------------------
.zerofill __DATA,__bss,_string_min,8,3
# ----------------------
.zerofill __DATA,__bss,_abbreviate_duplicate_blocks,1,0
# ----------------------
	.section       __DATA,__const
	.align 4
_endian_args:
	.quad	L_.str62
	.quad	L_.str63
	.quad	0
	.align 4
_default_file_list:
	.quad	L_.str46
	.quad	0
	.align 4
_long_options:
	.quad	L_.str90
	.long	1
	.zero	4
	.quad	0
	.long	106
	.zero	4
	.quad	L_.str91
	.long	1
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	L_.str92
	.long	1
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	L_.str93
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	L_.str94
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	L_.str95
	.long	2
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	L_.str96
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	L_.str97
	.long	2
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	L_.str98
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	L_.str99
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	L_.str100
	.long	0
	.zero	4
	.quad	0
	.long	-131
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.align 4
_emit_ancillary_info.infomap:
	.quad	L_.str102
	.quad	L_.str103
	.quad	L_.str104
	.quad	L_.str105
	.quad	L_.str106
	.quad	L_.str107
	.quad	L_.str108
	.quad	L_.str107
	.quad	L_.str109
	.quad	L_.str107
	.quad	L_.str110
	.quad	L_.str107
	.zero	16
# ----------------------
.zerofill __DATA,__bss,_input_swap,1,0
# ----------------------
.zerofill __DATA,__bss,_end_offset,8,3
# ----------------------
.zerofill __DATA,__bss,_file_list,8,3
# ----------------------
.zerofill __DATA,__bss,_in_stream,8,3
# ----------------------
.zerofill __DATA,__bss,_pseudo_offset,8,3
# ----------------------
.zerofill __DATA,__bss,_bytes_per_block,8,3
# ----------------------
.zerofill __DATA,__bss,_have_read_stdin,1,0
# ----------------------
.zerofill __DATA,__bss,_input_filename,8,3
# ----------------------
.zerofill __DATA,__bss,_write_block.first,1,0
# ----------------------
.zerofill __DATA,__bss,_write_block.prev_pair_equal,1,0
# ----------------------
	.set	L1_0_set_10,LBB1_10-LJTI1_0
	.set	L1_0_set_50,LBB1_50-LJTI1_0
	.set	L1_0_set_7,LBB1_7-LJTI1_0
	.set	L1_0_set_42,LBB1_42-LJTI1_0
	.set	L1_0_set_44,LBB1_44-LJTI1_0
	.set	L1_0_set_46,LBB1_46-LJTI1_0
	.set	L1_0_set_48,LBB1_48-LJTI1_0
	.set	L1_0_set_24,LBB1_24-LJTI1_0
	.set	L1_0_set_49,LBB1_49-LJTI1_0
	.set	L1_0_set_26,LBB1_26-LJTI1_0
	.set	L1_0_set_38,LBB1_38-LJTI1_0
	.set	L1_0_set_40,LBB1_40-LJTI1_0
	.set	L1_0_set_41,LBB1_41-LJTI1_0
	.set	L1_0_set_43,LBB1_43-LJTI1_0
	.set	L1_0_set_45,LBB1_45-LJTI1_0
	.set	L1_0_set_52,LBB1_52-LJTI1_0
	.set	L1_0_set_47,LBB1_47-LJTI1_0
	.set	L1_0_set_21,LBB1_21-LJTI1_0
	.set	L1_0_set_51,LBB1_51-LJTI1_0
	.set	L1_0_set_31,LBB1_31-LJTI1_0
	.set	L1_0_set_32,LBB1_32-LJTI1_0
	.set	L1_0_set_53,LBB1_53-LJTI1_0
	.set	L1_0_set_1,LBB1_1-LJTI1_0
	.set	L1_0_set_33,LBB1_33-LJTI1_0
	.set	L1_1_set_235,LBB1_235-LJTI1_1
	.set	L1_1_set_236,LBB1_236-LJTI1_1
	.set	L1_1_set_240,LBB1_240-LJTI1_1
	.set	L1_1_set_238,LBB1_238-LJTI1_1
	.set	L1_1_set_241,LBB1_241-LJTI1_1
	.set	L1_1_set_237,LBB1_237-LJTI1_1
	.set	L1_1_set_239,LBB1_239-LJTI1_1
	.set	L4_0_set_86,LBB4_86-LJTI4_0
	.set	L4_0_set_88,LBB4_88-LJTI4_0
	.set	L4_0_set_87,LBB4_87-LJTI4_0
	.set	L4_0_set_18,LBB4_18-LJTI4_0
	.set	L4_0_set_62,LBB4_62-LJTI4_0
	.set	L4_1_set_89,LBB4_89-LJTI4_1
	.set	L4_1_set_58,LBB4_58-LJTI4_1
	.set	L4_1_set_90,LBB4_90-LJTI4_1
	.set	L4_1_set_59,LBB4_59-LJTI4_1
	.set	L4_1_set_60,LBB4_60-LJTI4_1
	.set	L22_0_set_15,LBB22_15-LJTI22_0
	.set	L22_0_set_11,LBB22_11-LJTI22_0
	.set	L22_0_set_4,LBB22_4-LJTI22_0
	.set	L22_0_set_5,LBB22_5-LJTI22_0
	.set	L22_0_set_9,LBB22_9-LJTI22_0
	.set	L22_0_set_7,LBB22_7-LJTI22_0
	.set	L22_0_set_10,LBB22_10-LJTI22_0
	.set	L22_0_set_6,LBB22_6-LJTI22_0
	.set	L22_0_set_8,LBB22_8-LJTI22_0

.subsections_via_symbols
