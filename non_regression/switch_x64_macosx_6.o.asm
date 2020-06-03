	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_usage
_usage:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	movl      %edi, %r14d
	testl     %r14d, %r14d
	jne       L00000204
L00000017:
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	leaq      L_.str(%rip), %rdi
	xorl      %eax, %eax
	movq      %rsi, %rdx
	movq      %rsi, %rcx
	call      _printf
L00000035:
	movq      ___stdoutp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rsi
	leaq      L_.str1(%rip), %rdi
	call      _fputs
L0000004B:
	movq      (%rbx), %rsi
	leaq      L_.str119(%rip), %rdi
	call      _fputs
L0000005A:
	movq      (%rbx), %rsi
	leaq      L_.str2(%rip), %rdi
	call      _fputs
L00000069:
	movq      (%rbx), %rsi
	leaq      L_.str118(%rip), %rdi
	call      _fputs
L00000078:
	movq      (%rbx), %rsi
	leaq      L_.str3(%rip), %rdi
	call      _fputs
L00000087:
	movq      (%rbx), %rsi
	leaq      L_.str4(%rip), %rdi
	call      _fputs
L00000096:
	movq      (%rbx), %rsi
	leaq      L_.str5(%rip), %rdi
	call      _fputs
L000000A5:
	movq      (%rbx), %rsi
	leaq      L_.str6(%rip), %rdi
	call      _fputs
L000000B4:
	movq      (%rbx), %rsi
	leaq      L_.str7(%rip), %rdi
	call      _fputs
L000000C3:
	movq      (%rbx), %rsi
	leaq      L_.str8(%rip), %rdi
	call      _fputs
L000000D2:
	movq      (%rbx), %rsi
	leaq      L_.str9(%rip), %rdi
	call      _fputs
L000000E1:
	movq      (%rbx), %rsi
	leaq      L_.str10(%rip), %rdi
	call      _fputs
L000000F0:
	movq      (%rbx), %rsi
	leaq      L_.str11(%rip), %rdi
	call      _fputs
L000000FF:
	movq      (%rbx), %rsi
	leaq      L_.str12(%rip), %rdi
	call      _fputs
L0000010E:
	movq      (%rbx), %rsi
	leaq      L_.str13(%rip), %rdi
	call      _fputs
L0000011D:
	leaq      _emit_ancillary_info.infomap(%rip), %rbx
	leaq      L_.str102(%rip), %rsi
	leaq      L_.str14(%rip), %r12
	.align 4, 0x90
L00000140:
	movq      %r12, %rdi
	call      _strcmp
L00000148:
	testl     %eax, %eax
	je        L00000159
L0000014C:
	movq      16(%rbx), %rsi
	addq      $16, %rbx
	testq     %rsi, %rsi
	jne       L00000140
L00000159:
	movq      8(%rbx), %r15
	testq     %r15, %r15
	cmove     %r12, %r15
	leaq      L_.str111(%rip), %rdi
	leaq      L_.str33(%rip), %rsi
	leaq      L_.str112(%rip), %rdx
	xorl      %eax, %eax
	call      _printf
L00000180:
	movl      $6, %edi
	xorl      %esi, %esi
	call      _setlocale
L0000018C:
	testq     %rax, %rax
	je        L000001BE
L00000191:
	leaq      L_.str113(%rip), %rsi
	movl      $3, %edx
	movq      %rax, %rdi
	call      _strncmp
L000001A5:
	testl     %eax, %eax
	je        L000001BE
L000001A9:
	leaq      L_.str114(%rip), %rdi
	leaq      L_.str14(%rip), %rsi
	xorl      %eax, %eax
	call      _printf
L000001BE:
	leaq      L_.str115(%rip), %rdi
	leaq      L_.str112(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _printf
L000001D6:
	cmpq      %r12, %r15
	leaq      L_.str117(%rip), %rax
	leaq      L_.str15(%rip), %rdx
	cmove     %rax, %rdx
	leaq      L_.str116(%rip), %rdi
	xorl      %eax, %eax
	movq      %r15, %rsi
	call      _printf
L000001FC:
	movl      %r14d, %edi
	call      _exit
L00000204:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      _program_name@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	leaq      L_.str120(%rip), %rsi
	xorl      %eax, %eax
	movq      %rcx, %rdi
	call      _fprintf
L00000229:
	movl      %r14d, %edi
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
	subq      $1304, %rsp
	movq      %rsi, -1296(%rbp)
	movl      %edi, %r13d
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	movq      (%rsi), %rdi
	call      _set_program_name
L00000274:
	leaq      L_.str15(%rip), %rsi
	xorl      %edi, %edi
	call      _setlocale
L00000282:
	movq      _close_stdout@GOTPCREL(%rip), %rdi
	call      _atexit
L0000028E:
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
	jmp       L000003B0
L00000384:
	movq      %r13, %r12
	movq      %r8, %r13
	movq      %r9, %r15
	call      _decode_format_string
L00000392:
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	andb      %al, -1297(%rbp)
	movb      %r14b, %cl
	.align 4, 0x90
L000003B0:
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
L000003DE:
	cmpl      $-2, %eax
	jle       L000007CD
L000003E7:
	cmpl      $64, %eax
	jle       L00000812
L000003F0:
	leal      -65(%rax), %eax
	cmpl      $64, %eax
	movq      %r13, %r8
	movq      %r12, %r13
	movq      %r15, %r9
	ja        L000008A2
L00000405:
	leaq      L00001978(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	movb      $1, %cl
	jmp       *%rax
L00000417:
	leaq      L_.str28(%rip), %rdi
	jmp       L00000384
L00000423:
	leaq      L_.str30(%rip), %rdi
	jmp       L00000384
L0000042F:
	leaq      L_.str24(%rip), %rdi
	jmp       L00000384
L0000043B:
	leaq      L_.str26(%rip), %rdi
	jmp       L00000384
L00000447:
	leaq      L_.str32(%rip), %rdi
	jmp       L00000384
L00000453:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movsbl    (%rax), %ecx
	cmpl      $109, %ecx
	jg        L000006FC
L00000469:
	cmpl      $100, %ecx
	jne       L00000795
L00000472:
	leaq      _format_address_std(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $10, _address_base(%rip)
	jmp       L0000071E
L0000048F:
	leaq      L_.str22(%rip), %rdi
	jmp       L00000384
L0000049B:
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
L000004CC:
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	movb      $1, %cl
	movq      %rcx, -1312(%rbp)
	testl     %eax, %eax
	movb      %r14b, %cl
	je        L000003B0
L000004E9:
	jmp       L000018A9
L000004EE:
	leaq      L_.str29(%rip), %rdi
	jmp       L00000384
L000004FA:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	testq     %rdi, %rdi
	movl      $3, %eax
	je        L00000541
L0000050E:
	movq      %r9, %r12
	xorl      %esi, %esi
	xorl      %edx, %edx
	leaq      -1256(%rbp), %rcx
	leaq      _main.multipliers(%rip), %r8
	call      _xstrtoumax
L00000528:
	testl     %eax, %eax
	jne       L000018C7
L00000530:
	movq      -1256(%rbp), %rax
	leaq      _long_options(%rip), %r8
	movq      %r12, %r9
L00000541:
	movq      %rax, _string_min(%rip)
	movb      $1, _flag_dump_strings(%rip)
	jmp       L000007BC
L00000554:
	leaq      L_.str19(%rip), %rdi
	jmp       L00000384
L00000560:
	leaq      L_.str20(%rip), %rdi
	jmp       L00000384
L0000056C:
	leaq      L_.str21(%rip), %rdi
	jmp       L00000384
L00000578:
	leaq      L_.str23(%rip), %rdi
	jmp       L00000384
L00000584:
	leaq      L_.str25(%rip), %rdi
	jmp       L00000384
L00000590:
	leaq      L_.str27(%rip), %rdi
	jmp       L00000384
L0000059C:
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
L000005C6:
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	movb      $1, %cl
	movq      %rcx, -1312(%rbp)
	testl     %eax, %eax
	movb      %r14b, %cl
	je        L000003B0
L000005E3:
	jmp       L000018E5
L000005E8:
	leaq      L_.str31(%rip), %rdi
	jmp       L00000384
L000005F4:
	movq      _rpl_optarg@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      %r13, %r12
	movq      %r8, %r13
	movq      %r9, %r15
	call      _decode_format_string
L0000060C:
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
	andb      %al, -1297(%rbp)
	jmp       L000007BC
L00000620:
	movb      $1, _abbreviate_duplicate_blocks(%rip)
	jmp       L000007BC
L0000062C:
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
	je        L000003B0
L00000660:
	movq      %r9, %r12
	xorl      %esi, %esi
	movl      $10, %edx
	leaq      -1272(%rbp), %rcx
	leaq      L_.str15(%rip), %r8
	call      _xstrtoumax
L0000067D:
	testl     %eax, %eax
	jne       L00001903
L00000685:
	movq      -1272(%rbp), %rax
	movq      %rax, -1320(%rbp)
	movb      %r14b, %cl
	movb      $1, %al
	movq      %rax, -1328(%rbp)
	jmp       L000006ED
L000006A1:
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
L000006DB:
	movl      (%r15,%rax,4), %eax
	testl     %eax, %eax
	jne       L0000072D
L000006E3:
	movb      $0, _input_swap(%rip)
	movb      %r14b, %cl
L000006ED:
	leaq      _long_options(%rip), %r8
	movq      %r12, %r9
	jmp       L000003B0
L000006FC:
	cmpl      $110, %ecx
	je        L00000752
L00000701:
	cmpl      $111, %ecx
	jne       L0000076C
L00000706:
	leaq      _format_address_std(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $8, _address_base(%rip)
L0000071E:
	movl      $7, _address_pad_len(%rip)
	jmp       L000007BC
L0000072D:
	cmpl      $1, %eax
	movb      %r14b, %cl
	leaq      _long_options(%rip), %r8
	movq      %r12, %r9
	jne       L000003B0
L00000743:
	movb      $1, _input_swap(%rip)
	movb      %r14b, %cl
	jmp       L000003B0
L00000752:
	leaq      _format_address_none(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $0, _address_pad_len(%rip)
	jmp       L000007BC
L0000076C:
	cmpl      $120, %ecx
	jne       L00000795
L00000771:
	leaq      _format_address_std(%rip), %rax
	movq      %rax, _format_address(%rip)
	movl      $16, _address_base(%rip)
	movl      $6, _address_pad_len(%rip)
	jmp       L000007BC
L00000795:
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	leaq      L_.str16(%rip), %rdx
	movq      %r13, %r12
	movq      %r8, %r13
	movq      %r9, %r15
	call      _error
L000007B3:
	movq      %r15, %r9
	movq      %r13, %r8
	movq      %r12, %r13
L000007BC:
	movb      $1, %al
	movq      %rax, -1312(%rbp)
	movb      %r14b, %cl
	jmp       L000003B0
L000007CD:
	cmpl      $-131, %eax
	jne       L00000894
L000007D8:
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
L0000080B:
	xorl      %edi, %edi
	call      _exit
L00000812:
	cmpl      $-1, %eax
	movq      %r12, %r13
	jne       L000008A2
L0000081E:
	movl      $1, %ebx
	testb     $1, -1297(%rbp)
	je        L000017EF
L00000830:
	movb      _flag_dump_strings(%rip), %al
	testb     %al, %al
	je        L0000085B
L0000083A:
	movq      _n_specs(%rip), %rax
	testq     %rax, %rax
	je        L0000085B
L00000846:
	leaq      L_.str35(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L0000085B:
	movq      _rpl_optind@GOTPCREL(%rip), %r12
	movslq    (%r12), %rax
	subl      %eax, %r13d
	movb      $1, %cl
	movl      %ecx, -1336(%rbp)
	movq      -1312(%rbp), %rcx
	testb     %cl, %cl
	je        L000008AC
L0000087C:
	testb     %r14b, %r14b
	jne       L000008AC
L00000881:
	movq      %rax, -1312(%rbp)
	movq      -1296(%rbp), %r15
	jmp       L00000C50
L00000894:
	cmpl      $-130, %eax
	jne       L000008A2
L0000089B:
	xorl      %edi, %edi
	call      _usage
L000008A2:
	movl      $1, %edi
	call      _usage
L000008AC:
	cmpl      $3, %r13d
	movq      -1296(%rbp), %r15
	je        L00000A02
L000008BD:
	cmpl      $2, %r13d
	jne       L00000B30
L000008C7:
	incl      %eax
	cltq      
	testb     %r14b, %r14b
	jne       L000008E8
L000008D0:
	movq      (%r15,%rax,8), %rcx
	movsbl    (%rcx), %ecx
	cmpl      $43, %ecx
	je        L000008E8
L000008DC:
	addl      $-48, %ecx
	cmpl      $9, %ecx
	ja        L00000C2F
L000008E8:
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	movl      $2, %r13d
	testb     %al, %al
	je        L00000B57
L000008FC:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       L00000907
L00000904:
	incq      %rbx
L00000907:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
L00000914:
	movl      $10, %edx
	testq     %rax, %rax
	jne       L0000093D
L0000091E:
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       L00000938
L00000926:
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        L0000093D
L00000938:
	movl      $8, %edx
L0000093D:
	leaq      L_.str61(%rip), %r8
	leaq      -1288(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
L00000955:
	testl     %eax, %eax
	jne       L00000B57
L0000095D:
	testb     %r14b, %r14b
	je        L000009D4
L00000962:
	movslq    (%r12), %rax
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	testb     %al, %al
	je        L000009D4
L00000970:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       L0000097B
L00000978:
	incq      %rbx
L0000097B:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
L00000988:
	movl      $10, %edx
	testq     %rax, %rax
	jne       L000009B1
L00000992:
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       L000009AC
L0000099A:
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        L000009B1
L000009AC:
	movl      $8, %edx
L000009B1:
	leaq      L_.str61(%rip), %r8
	xorl      %r13d, %r13d
	leaq      -1280(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
L000009CC:
	testl     %eax, %eax
	je        L0000183F
L000009D4:
	movq      -1288(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	movslq    (%r12), %rax
	movq      (%r15,%rax,8), %rcx
	leal      1(%rax), %eax
	cltq      
	movq      %rcx, (%r15,%rax,8)
	addq      $8, %r15
	movl      $1, %r13d
	jmp       L00000C49
L00000A02:
	testb     %r14b, %r14b
	je        L00000BBC
L00000A0B:
	incl      %eax
	cltq      
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	movl      $3, %r13d
	testb     %al, %al
	je        L00000B57
L00000A23:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       L00000A2E
L00000A2B:
	incq      %rbx
L00000A2E:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
L00000A3B:
	movl      $10, %edx
	testq     %rax, %rax
	jne       L00000A64
L00000A45:
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       L00000A5F
L00000A4D:
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        L00000A64
L00000A5F:
	movl      $8, %edx
L00000A64:
	leaq      L_.str61(%rip), %r8
	leaq      -1280(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
L00000A7C:
	testl     %eax, %eax
	jne       L00000B57
L00000A84:
	movl      (%r12), %eax
	addl      $2, %eax
	cltq      
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	testb     %al, %al
	je        L00000B57
L00000A9B:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       L00000AA6
L00000AA3:
	incq      %rbx
L00000AA6:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
L00000AB3:
	movl      $10, %edx
	testq     %rax, %rax
	jne       L00000ADC
L00000ABD:
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       L00000AD7
L00000AC5:
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        L00000ADC
L00000AD7:
	movl      $8, %edx
L00000ADC:
	leaq      L_.str61(%rip), %r8
	leaq      -1288(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
L00000AF4:
	testl     %eax, %eax
	jne       L00000B57
L00000AF8:
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
	jmp       L0000185B
L00000B30:
	cmpl      $1, %r13d
	jne       L00000B57
L00000B36:
	movq      (%r15,%rax,8), %rbx
	movb      (%rbx), %al
	testb     %r14b, %r14b
	je        L00000BC7
L00000B45:
	testb     %al, %al
	je        L00000C27
L00000B4D:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       L00000BD2
L00000B55:
	jmp       L00000BCF
L00000B57:
	testb     %r14b, %r14b
	je        L00000C49
L00000B60:
	cmpl      $2, %r13d
	jl        L00000C49
L00000B6A:
	movl      (%r12), %eax
	incl      %eax
	cltq      
	movq      (%r15,%rax,8), %rax
	movq      %rax, %rdi
	call      _quote
L00000B7E:
	movq      %rax, %rcx
	leaq      L_.str36(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000B93:
	leaq      L_.str37(%rip), %rcx
	leaq      L_.str38(%rip), %rbx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      %rcx, %rdx
	movq      %rbx, %rcx
	call      _error
L00000BB2:
	movl      $1, %edi
	call      _usage
L00000BBC:
	movl      $3, %r13d
	jmp       L00000C49
L00000BC7:
	movzbl    %al, %eax
	cmpl      $43, %eax
	jne       L00000C27
L00000BCF:
	incq      %rbx
L00000BD2:
	movl      $46, %esi
	movq      %rbx, %rdi
	call      _strchr
L00000BDF:
	movl      $10, %edx
	testq     %rax, %rax
	jne       L00000C08
L00000BE9:
	movzbl    (%rbx), %eax
	cmpl      $48, %eax
	jne       L00000C03
L00000BF1:
	movb      1(%rbx), %al
	movl      $16, %edx
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $120, %eax
	je        L00000C08
L00000C03:
	movl      $8, %edx
L00000C08:
	leaq      L_.str61(%rip), %r8
	xorl      %r13d, %r13d
	leaq      -1280(%rbp), %rcx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	call      _xstrtoumax
L00000C23:
	testl     %eax, %eax
	je        L00000C37
L00000C27:
	movl      $1, %r13d
	jmp       L00000C49
L00000C2F:
	movl      $2, %r13d
	jmp       L00000C49
L00000C37:
	movq      -1280(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	addq      $8, %r15
L00000C49:
	movq      %rax, -1312(%rbp)
L00000C50:
	movzbl    _limit_bytes_to_format(%rip), %eax
	cmpl      $1, %eax
	jne       L00000C88
L00000C5C:
	movq      _n_bytes_to_skip(%rip), %rax
	addq      _max_bytes_to_format(%rip), %rax
	movq      %rax, _end_offset(%rip)
	jae       L00000C88
L00000C73:
	leaq      L_.str39(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000C88:
	cmpq      $0, _n_specs(%rip)
	jne       L00000C9E
L00000C92:
	leaq      L_.str40(%rip), %rdi
	call      _decode_format_string
L00000C9E:
	testl     %r13d, %r13d
	jle       L00000CAD
L00000CA3:
	movslq    (%r12), %rax
	leaq      (%r15,%rax,8), %rax
	jmp       L00000CB4
L00000CAD:
	leaq      _default_file_list(%rip), %rax
L00000CB4:
	movq      %rax, _file_list(%rip)
	call      _open_next_file
L00000CC0:
	movb      %al, %r11b
	movq      _in_stream(%rip), %rdi
	testq     %rdi, %rdi
	je        L00000E43
L00000CD3:
	movq      _n_bytes_to_skip(%rip), %r14
	testq     %r14, %r14
	je        L00000E84
L00000CE3:
	movb      %r11b, -1297(%rbp)
	movb      $1, %r15b
	leaq      -1248(%rbp), %rbx
	leaq      L_.str37(%rip), %r12
	.align 4, 0x90
L00000D00:
	call      _fileno
L00000D05:
	movl      %eax, %edi
	movq      %rbx, %rsi
	call      _fstat$INODE64
L00000D0F:
	testl     %eax, %eax
	je        L00000D35
L00000D13:
	call      ___error
L00000D18:
	movl      (%rax), %esi
	movq      _input_filename(%rip), %rcx
	xorl      %r15d, %r15d
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _error
L00000D30:
	jmp       L00000DFF
L00000D35:
	movzwl    -1244(%rbp), %eax
	orl       $8192, %eax
	andl      $61440, %eax
	cmpl      $40960, %eax
	jne       L00000D80
L00000D4D:
	movslq    -1136(%rbp), %rcx
	testq     %rcx, %rcx
	movl      $512, %eax
	cmovle    %rax, %rcx
	movq      -1152(%rbp), %rax
	cmpq      %rax, %rcx
	jge       L00000D80
L00000D6C:
	movq      %r14, %rcx
	subq      %rax, %rcx
	jbe       L00000E4C
L00000D78:
	movq      %rbx, %r12
	movq      %rcx, %r14
	jmp       L00000DF0
L00000D80:
	movq      %rbx, %r12
	testq     %r14, %r14
	movl      $1024, %r13d
	je        L00000E6C
L00000D92:
	movq      _in_stream(%rip), %rcx
	movq      %r14, %rbx
	.align 4, 0x90
L00000DA0:
	cmpq      %r13, %rbx
	cmovb     %rbx, %r13
	movl      $1, %esi
	leaq      -1088(%rbp), %rdi
	movq      %r13, %rdx
	call      _fread
L00000DBB:
	movq      %rbx, %r14
	subq      %rax, %r14
	cmpq      %r13, %rax
	je        L00000DE9
L00000DC6:
	movq      _in_stream(%rip), %rcx
	movswl    16(%rcx), %edx
	testb     $64, %dl
	jne       L00000E64
L00000DDA:
	testb     $32, %dl
	jne       L00000DF0
L00000DDF:
	cmpq      %rax, %rbx
	movq      %r14, %rbx
	jne       L00000DA0
L00000DE7:
	jmp       L00000DF0
L00000DE9:
	cmpq      %r13, %rbx
	jne       L00000D92
L00000DEE:
	jmp       L00000E6C
L00000DF0:
	testq     %r14, %r14
	movq      %r12, %rbx
	leaq      L_.str37(%rip), %r12
	je        L00000E6C
L00000DFF:
	xorl      %edi, %edi
	call      _check_and_close
L00000E06:
	movb      %al, %r13b
	andb      %r15b, %r13b
	call      _open_next_file
L00000E11:
	movb      %al, %r15b
	andb      %r13b, %r15b
	movq      _in_stream(%rip), %rdi
	testq     %rdi, %rdi
	jne       L00000D00
L00000E27:
	testq     %r14, %r14
	je        L00000E6C
L00000E2C:
	leaq      L_.str59(%rip), %rdx
	movl      $1, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00000E41:
	jmp       L00000E6C
L00000E43:
	movzbl    %r11b, %ebx
	jmp       L000017B2
L00000E4C:
	movq      _in_stream(%rip), %rdi
	movl      $1, %edx
	movq      %r14, %rsi
	call      _rpl_fseeko
L00000E60:
	testl     %eax, %eax
	je        L00000E6C
L00000E64:
	call      ___error
L00000E69:
	xorl      %r15d, %r15d
L00000E6C:
	movb      -1297(%rbp), %r11b
	andb      %r15b, %r11b
	cmpq      $0, _in_stream(%rip)
	je        L00000F94
L00000E84:
	xorl      %eax, %eax
	movl      -1336(%rbp), %ecx
	testb     %cl, %cl
	movq      -1320(%rbp), %rcx
	jne       L00000EA5
L00000E97:
	movq      -1312(%rbp), %rax
	subq      _n_bytes_to_skip(%rip), %rax
L00000EA5:
	movq      %rax, _pseudo_offset(%rip)
	movq      _n_specs(%rip), %r9
	movl      $1, %esi
	testq     %r9, %r9
	je        L00000F27
L00000EBD:
	movq      _spec(%rip), %r10
	xorl      %edi, %edi
	movl      $1, %esi
	leaq      _width_bytes(%rip), %r8
	.align 4, 0x90
L00000EE0:
	movslq    %esi, %r14
	leaq      (%rdi,%rdi,4), %rax
	movl      4(%r10,%rax,8), %eax
	movslq    (%r8,%rax,4), %rbx
	movq      %rbx, %rdx
	movq      %r14, %rsi
	.align 4, 0x90
L00000F00:
	movq      %rsi, %rax
	movq      %rdx, %rsi
	xorl      %edx, %edx
	divq      %rsi
	testq     %rdx, %rdx
	jne       L00000F00
L00000F10:
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %rsi
	movq      %rax, %rsi
	imulq     %r14, %rsi
	incq      %rdi
	cmpq      %r9, %rdi
	jne       L00000EE0
L00000F27:
	movq      -1328(%rbp), %rax
	testb     %al, %al
	je        L00000F73
L00000F32:
	testq     %rcx, %rcx
	movslq    %esi, %r14
	je        L00000F47
L00000F3A:
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %r14
	testq     %rdx, %rdx
	je        L00000FB0
L00000F47:
	movb      %r11b, -1297(%rbp)
	leaq      L_.str41(%rip), %rdx
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      %r14d, %r8d
	call      _error
L00000F63:
	movq      %r14, _bytes_per_block(%rip)
	movq      _n_specs(%rip), %r9
	jmp       L00000FC1
L00000F73:
	cmpl      $15, %esi
	jg        L00000F9D
L00000F78:
	movb      %r11b, -1297(%rbp)
	movl      $16, %ecx
	movl      $16, %eax
	xorl      %edx, %edx
	idivl     %esi
	subl      %edx, %ecx
	movslq    %ecx, %r14
	jmp       L00000FA7
L00000F94:
	movzbl    %r11b, %ebx
	jmp       L000017B2
L00000F9D:
	movb      %r11b, -1297(%rbp)
	movslq    %esi, %r14
L00000FA7:
	movq      %r14, _bytes_per_block(%rip)
	jmp       L00000FC1
L00000FB0:
	movb      %r11b, -1297(%rbp)
	movq      %rcx, _bytes_per_block(%rip)
	movq      %rcx, %r14
L00000FC1:
	testq     %r9, %r9
	je        L000010E5
L00000FCA:
	movq      _spec(%rip), %r8
	xorl      %ecx, %ecx
	movq      %r9, %r10
	andq      $-2, %r10
	movl      $0, %r12d
	movl      $0, %edi
	je        L00001052
L00000FE7:
	leaq      68(%r8), %rbx
	xorl      %r12d, %r12d
	leaq      _width_bytes(%rip), %r11
	movq      %r10, %rcx
	xorl      %edi, %edi
	.align 4, 0x90
L00001000:
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
	jne       L00001000
L0000104F:
	movq      %r10, %rcx
L00001052:
	cmpq      %rdi, %r12
	cmova     %r12, %rdi
	cmpq      %rcx, %r9
	je        L0000109C
L0000105E:
	leaq      (%rcx,%rcx,4), %rax
	leaq      28(%r8,%rax,8), %rsi
	leaq      _width_bytes(%rip), %r8
	.align 4, 0x90
L00001070:
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
	jb        L00001070
L0000109C:
	testq     %r9, %r9
	je        L000010E5
L000010A1:
	movq      _spec(%rip), %rcx
	addq      $32, %rcx
	xorl      %esi, %esi
	leaq      _width_bytes(%rip), %r8
	.align 4, 0x90
L000010C0:
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
	jb        L000010C0
L000010E5:
	movzbl    _flag_dump_strings(%rip), %eax
	cmpl      $1, %eax
	jne       L00001127
L000010F1:
	movq      _string_min(%rip), %rax
	cmpq      $100, %rax
	movl      $100, %edi
	cmovae    %rax, %rdi
	movq      %rdi, -1104(%rbp)
	call      _xmalloc
L00001111:
	movq      %rax, -1296(%rbp)
	movb      $1, %r12b
	movq      _n_bytes_to_skip(%rip), %r13
	jmp       L0000143E
L00001127:
	movq      $-1, %rax
	xorl      %edx, %edx
	divq      %r14
	cmpq      $1, %rax
	jbe       L0000192E
L0000113D:
	addq      %r14, %r14
	movq      %r14, %rdi
	call      _xmalloc
L00001148:
	movq      %rax, %r13
	movq      %r13, -64(%rbp)
	movq      _bytes_per_block(%rip), %rdi
	addq      %rdi, %rax
	movq      %rax, -56(%rbp)
	movq      _n_bytes_to_skip(%rip), %rbx
	movb      _limit_bytes_to_format(%rip), %al
	testb     %al, %al
	je        L000011C6
L0000116E:
	movq      _end_offset(%rip), %rax
	movb      $1, %r14b
	subq      %rbx, %rax
	jbe       L000013F2
L00001181:
	cmpq      %rdi, %rax
	cmovb     %rax, %rdi
	leaq      -1096(%rbp), %rdx
	movq      %r13, %rsi
	call      _read_block
L00001197:
	movb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      %r13, %rax
	movq      _bytes_per_block(%rip), %r13
	xorl      %r15d, %r15d
	cmpq      %r13, %r12
	jae       L0000126B
L000011BA:
	movq      %rax, -1312(%rbp)
	jmp       L000012E5
L000011C6:
	leaq      -1096(%rbp), %rdx
	movq      %r13, %rsi
	call      _read_block
L000011D5:
	movb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      _bytes_per_block(%rip), %r14
	xorl      %r15d, %r15d
	cmpq      %r14, %r12
	jae       L000011FD
L000011F1:
	movq      %r13, -1312(%rbp)
	jmp       L000012E5
L000011FD:
	movq      %r13, %rcx
	movq      %r13, -1312(%rbp)
	.align 4, 0x90
L00001210:
	cmpq      %r14, %r12
	jne       L00001933
L00001219:
	xorb      $1, %r15b
	movzbl    %r15b, %eax
	movq      -64(%rbp,%rax,8), %r13
	movq      %rbx, %rdi
	movq      %r14, %rsi
	movq      %r13, %rdx
	call      _write_block
L00001234:
	addq      %r14, %rbx
	movq      _bytes_per_block(%rip), %rdi
	movq      %r13, %rsi
	leaq      -1096(%rbp), %rdx
	call      _read_block
L0000124D:
	andb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      _bytes_per_block(%rip), %r14
	cmpq      %r14, %r12
	movq      %r13, %rcx
	jae       L00001210
L00001269:
	jmp       L000012E5
L0000126B:
	movq      %rax, %rcx
	movq      %rax, -1312(%rbp)
L00001275:
	cmpq      %r13, %r12
	jne       L0000194F
L0000127E:
	xorb      $1, %r15b
	movzbl    %r15b, %eax
	movq      -64(%rbp,%rax,8), %r14
	movq      %rbx, %rdi
	movq      %r13, %rsi
	movq      %r14, %rdx
	call      _write_block
L00001299:
	addq      %r13, %rbx
	movq      _end_offset(%rip), %rax
	subq      %rbx, %rax
	jbe       L000013E4
L000012AC:
	movq      _bytes_per_block(%rip), %rdi
	cmpq      %rdi, %rax
	cmovb     %rax, %rdi
	movq      %r14, %rsi
	leaq      -1096(%rbp), %rdx
	call      _read_block
L000012C9:
	andb      %al, -1296(%rbp)
	movq      -1096(%rbp), %r12
	movq      _bytes_per_block(%rip), %r13
	cmpq      %r13, %r12
	movq      %r14, %rcx
	jae       L00001275
L000012E5:
	movq      %rbx, %r13
	testq     %r12, %r12
	je        L000013D1
L000012F1:
	movq      _n_specs(%rip), %r8
	movl      $1, %ecx
	testq     %r8, %r8
	je        L00001367
L00001302:
	movq      _spec(%rip), %r10
	xorl      %esi, %esi
	movl      $1, %eax
	leaq      _width_bytes(%rip), %r9
	.align 4, 0x90
L00001320:
	movslq    %eax, %rdi
	leaq      (%rsi,%rsi,4), %rax
	movl      4(%r10,%rax,8), %eax
	movslq    (%r9,%rax,4), %rcx
	movq      %rcx, %rdx
	movq      %rdi, %rbx
	.align 4, 0x90
L00001340:
	movq      %rbx, %rax
	movq      %rdx, %rbx
	xorl      %edx, %edx
	divq      %rbx
	testq     %rdx, %rdx
	jne       L00001340
L00001350:
	xorl      %edx, %edx
	movq      %rcx, %rax
	divq      %rbx
	imulq     %rdi, %rax
	incq      %rsi
	cmpq      %r8, %rsi
	jne       L00001320
L00001364:
	movslq    %eax, %rcx
L00001367:
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
L0000139D:
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
L000013BE:
	addq      %r12, %rbx
	movq      -1312(%rbp), %r13
	movb      -1296(%rbp), %r14b
	jmp       L000013FD
L000013D1:
	movb      -1296(%rbp), %r14b
	movq      %r13, %rbx
	movq      -1312(%rbp), %r13
	jmp       L000013FD
L000013E4:
	movb      -1296(%rbp), %r14b
	movq      -1312(%rbp), %r13
L000013F2:
	movq      $0, -1096(%rbp)
L000013FD:
	movl      $10, %esi
	movq      %rbx, %rdi
	call      *_format_address(%rip)
L0000140B:
	cmpq      _end_offset(%rip), %rbx
	jb        L0000142A
L00001414:
	movb      _limit_bytes_to_format(%rip), %al
	xorb      $1, %al
	testb     $1, %al
	jne       L0000142A
L00001420:
	xorl      %edi, %edi
	call      _check_and_close
L00001427:
	andb      %al, %r14b
L0000142A:
	movq      %r13, %rdi
	call      _free
L00001432:
	andb      $1, %r14b
	jmp       L000017A6
L0000143B:
	movq      %r15, %r13
L0000143E:
	movb      _limit_bytes_to_format(%rip), %al
	testb     %al, %al
	je        L00001469
L00001448:
	movq      _end_offset(%rip), %rdx
	movq      _string_min(%rip), %rcx
	subq      %rcx, %rdx
	jb        L00001820
L0000145F:
	cmpq      %r13, %rdx
	ja        L00001470
L00001464:
	jmp       L00001820
L00001469:
	movq      _string_min(%rip), %rcx
L00001470:
	movq      %r13, %r15
	testq     %rcx, %rcx
	movl      $0, %r13d
	movl      $0, %r14d
	je        L0000153C
L00001488:
	movq      _in_stream(%rip), %rdi
	movb      $1, %bl
	jmp       L000014BC
L00001493:
	.align 4, 0x90
L000014A0:
	call      ___error
L000014A5:
	movl      (%rax), %edi
	call      _check_and_close
L000014AC:
	andb      %al, %bl
	call      _open_next_file
L000014B3:
	andb      %al, %bl
	movq      _in_stream(%rip), %rdi
L000014BC:
	testq     %rdi, %rdi
	je        L00001790
L000014C5:
	call      _fgetc
L000014CA:
	movl      %eax, %r14d
	cmpl      $-1, %r14d
	je        L000014A0
L000014D3:
	andb      %bl, %r12b
	andb      $1, %r12b
	testl     %r14d, %r14d
	js        L00001793
L000014E3:
	incq      %r15
	cmpl      $127, %r14d
	ja        L00001503
L000014EC:
	movslq    %r14d, %rax
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rcx
	movl      60(%rcx,%rax,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       L00001510
L00001503:
	movl      $262144, %esi
	movl      %r14d, %edi
	call      ___maskrune
L00001510:
	testl     %eax, %eax
	je        L0000143B
L00001518:
	movq      -1296(%rbp), %rax
	movb      %r14b, (%rax,%r13)
	incq      %r13
	cmpq      _string_min(%rip), %r13
	jb        L00001488
L00001533:
	movb      _limit_bytes_to_format(%rip), %al
	movq      %r13, %r14
L0000153C:
	movq      %r15, %r13
	cmpq      _end_offset(%rip), %r13
	jb        L0000155C
L00001548:
	xorb      $1, %al
	testb     $1, %al
	leaq      L00001A7C(%rip), %rax
	movq      %rax, %r15
	je        L00001650
L0000155C:
	cmpq      -1104(%rbp), %r14
	jne       L00001584
L00001565:
	movq      %r13, %r15
	movq      -1296(%rbp), %rdi
	leaq      -1104(%rbp), %rsi
	call      _x2realloc
L0000157B:
	movq      %rax, -1296(%rbp)
	jmp       L00001587
L00001584:
	movq      %r13, %r15
L00001587:
	movq      _in_stream(%rip), %rdi
	movb      $1, %bl
	jmp       L000015AE
L00001592:
	call      ___error
L00001597:
	movl      (%rax), %edi
	call      _check_and_close
L0000159E:
	andb      %al, %bl
	call      _open_next_file
L000015A5:
	andb      %al, %bl
	movq      _in_stream(%rip), %rdi
L000015AE:
	testq     %rdi, %rdi
	je        L00001818
L000015B7:
	call      _fgetc
L000015BC:
	movl      %eax, %r13d
	cmpl      $-1, %r13d
	je        L00001592
L000015C5:
	andb      %bl, %r12b
	andb      $1, %r12b
	incq      %r15
	testl     %r13d, %r13d
	js        L00001793
L000015D8:
	je        L00001643
L000015DA:
	cmpl      $127, %r13d
	ja        L000015F7
L000015E0:
	movslq    %r13d, %rax
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rcx
	movl      60(%rcx,%rax,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       L00001604
L000015F7:
	movl      $262144, %esi
	movl      %r13d, %edi
	call      ___maskrune
L00001604:
	testl     %eax, %eax
	je        L00001788
L0000160C:
	movq      -1296(%rbp), %rax
	movb      %r13b, (%rax,%r14)
	incq      %r14
	movb      _limit_bytes_to_format(%rip), %al
	xorb      $1, %al
	movq      %r15, %r13
	cmpq      _end_offset(%rip), %r13
	leaq      L00001A7C(%rip), %r15
	jb        L0000155C
L00001639:
	testb     $1, %al
	jne       L0000155C
L00001641:
	jmp       L00001650
L00001643:
	movq      %r15, %r13
	leaq      L00001A7C(%rip), %rax
	movq      %rax, %r15
L00001650:
	movq      -1296(%rbp), %rbx
	movb      $0, (%rbx,%r14)
	notq      %r14
	addq      %r13, %r14
	movl      $32, %esi
	movq      %r14, %rdi
	call      *_format_address(%rip)
L00001670:
	movb      (%rbx), %al
	testb     %al, %al
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	je        L00001757
L00001681:
	movq      -1296(%rbp), %rcx
	leaq      1(%rcx), %rbx
L0000168C:
	movsbl    %al, %edi
	leal      -7(%rdi), %ecx
	cmpl      $6, %ecx
	jbe       L000016C5
L00001697:
	movq      (%r14), %rsi
	movl      12(%rsi), %ecx
	leal      -1(%rcx), %edx
	movl      %edx, 12(%rsi)
	testl     %ecx, %ecx
	jg        L000016B4
L000016A7:
	cmpl      40(%rsi), %ecx
	jle       L000016DF
L000016AC:
	movzbl    %al, %ecx
	cmpl      $10, %ecx
	je        L000016DF
L000016B4:
	movq      (%rsi), %rcx
	leaq      1(%rcx), %rdx
	movq      %rdx, (%rsi)
	movb      %al, (%rcx)
	jmp       L0000174A
L000016C5:
	movslq    (%r15,%rcx,4), %rax
	addq      %r15, %rax
	jmp       *%rax
L000016CE:
	movq      (%r14), %rsi
	leaq      L_.str52(%rip), %rdi
	call      _fputs
L000016DD:
	jmp       L0000174A
L000016DF:
	call      ___swbuf
L000016E4:
	jmp       L0000174A
L000016E6:
	movq      (%r14), %rsi
	leaq      L_.str53(%rip), %rdi
	call      _fputs
L000016F5:
	jmp       L0000174A
L000016F7:
	movq      (%r14), %rsi
	leaq      L_.str57(%rip), %rdi
	call      _fputs
L00001706:
	jmp       L0000174A
L00001708:
	movq      (%r14), %rsi
	leaq      L_.str55(%rip), %rdi
	call      _fputs
L00001717:
	jmp       L0000174A
L00001719:
	movq      (%r14), %rsi
	leaq      L_.str58(%rip), %rdi
	call      _fputs
L00001728:
	jmp       L0000174A
L0000172A:
	movq      (%r14), %rsi
	leaq      L_.str54(%rip), %rdi
	call      _fputs
L00001739:
	jmp       L0000174A
L0000173B:
	movq      (%r14), %rsi
	leaq      L_.str56(%rip), %rdi
	call      _fputs
L0000174A:
	movb      (%rbx), %al
	incq      %rbx
	testb     %al, %al
	jne       L0000168C
L00001757:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00001779
L00001767:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L0000143E
L00001779:
	movl      $10, %edi
	call      ___swbuf
L00001783:
	jmp       L0000143E
L00001788:
	movq      %r15, %r13
	jmp       L0000143E
L00001790:
	andb      %bl, %r12b
L00001793:
	movq      -1296(%rbp), %rdi
	call      _free
L0000179F:
	testb     %r12b, %r12b
	setne     %r14b
L000017A6:
	movb      -1297(%rbp), %al
	andb      %r14b, %al
	movzbl    %al, %ebx
L000017B2:
	movzbl    _have_read_stdin(%rip), %eax
	cmpl      $1, %eax
	jne       L000017EC
L000017BE:
	movq      ___stdinp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	call      _rpl_fclose
L000017CD:
	cmpl      $-1, %eax
	jne       L000017EC
L000017D2:
	call      ___error
L000017D7:
	movl      (%rax), %esi
	leaq      L_.str42(%rip), %rdx
	movl      $1, %edi
	xorl      %eax, %eax
	call      _error
L000017EC:
	xorl      $1, %ebx
L000017EF:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L00001813
L000017FF:
	movl      %ebx, %eax
	addq      $1304, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00001813:
	call      ___stack_chk_fail
L00001818:
	andb      %bl, %r12b
	jmp       L00001793
L00001820:
	movq      -1296(%rbp), %rdi
	call      _free
L0000182C:
	xorl      %edi, %edi
	call      _check_and_close
L00001833:
	testb     %r12b, %al
	setne     %r14b
	jmp       L000017A6
L0000183F:
	movq      -1280(%rbp), %rax
	movq      %rax, _n_bytes_to_skip(%rip)
	movq      -1288(%rbp), %rax
	movq      %rax, -1312(%rbp)
L0000185B:
	addq      $16, %r15
	leaq      _format_address_none(%rip), %rax
	cmpq      %rax, _format_address(%rip)
	je        L00001878
L0000186F:
	leaq      _format_address_label(%rip), %rax
	jmp       L00001893
L00001878:
	movl      $8, _address_base(%rip)
	movl      $7, _address_pad_len(%rip)
	leaq      _format_address_paren(%rip), %rax
L00001893:
	movq      %rax, _format_address(%rip)
	movl      $0, -1336(%rbp)
	jmp       L00000C50
L000018A9:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $78, %edx
	jmp       L0000191F
L000018C7:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $83, %edx
	jmp       L0000191F
L000018E5:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $106, %edx
	jmp       L0000191F
L00001903:
	movl      -1260(%rbp), %ecx
	movq      _rpl_optarg@GOTPCREL(%rip), %rdx
	movq      (%rdx), %rbx
	leaq      _long_options(%rip), %r8
	movl      $119, %edx
L0000191F:
	movl      %eax, %edi
	movl      %ecx, %esi
	movq      %r8, %rcx
	movq      %rbx, %r8
	call      _xstrtol_fatal
L0000192E:
	call      _xalloc_die
L00001933:
	leaq      L___func__.dump(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str44(%rip), %rbx
	movl      $1415, %edx
	jmp       L00001969
L0000194F:
	leaq      L___func__.dump(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str44(%rip), %rbx
	movl      $1401, %edx
L00001969:
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
L00001977:
	.align 4, 0x90
# ----------------------
L00001978:
	.long	L00000453-L00001978
	.long	L00000423-L00001978
	.long	L000008A2-L00001978
	.long	L0000048F-L00001978
	.long	L000008A2-L00001978
	.long	L0000042F-L00001978
	.long	L000008A2-L00001978
	.long	L0000043B-L00001978
	.long	L00000417-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L00000417-L00001978
	.long	L000008A2-L00001978
	.long	L0000049B-L00001978
	.long	L000004EE-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000004FA-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L0000043B-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L00000554-L00001978
	.long	L00000560-L00001978
	.long	L0000056C-L00001978
	.long	L00000578-L00001978
	.long	L0000042F-L00001978
	.long	L00000584-L00001978
	.long	L000008A2-L00001978
	.long	L00000447-L00001978
	.long	L00000590-L00001978
	.long	L0000059C-L00001978
	.long	L000008A2-L00001978
	.long	L00000417-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L00000423-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000005E8-L00001978
	.long	L000005F4-L00001978
	.long	L000008A2-L00001978
	.long	L00000620-L00001978
	.long	L0000062C-L00001978
	.long	L00000447-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000008A2-L00001978
	.long	L000003B0-L00001978
	.long	L000006A1-L00001978
# ----------------------
L00001A7C:
	.long	L000016CE-L00001A7C
	.long	L000016E6-L00001A7C
	.long	L000016F7-L00001A7C
	.long	L00001708-L00001A7C
	.long	L00001719-L00001A7C
	.long	L0000172A-L00001A7C
	.long	L0000173B-L00001A7C
L00001A98:
	.align 4, 0x90
# ----------------------
_format_address_std:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	subq      $48, %rsp
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
	je        L00001B25
L00001AE2:
	cmpl      $10, %eax
	jne       L00001B48
L00001AE7:
	movq      $-3689348814741910323, %r8
	.align 4, 0x90
L00001B00:
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
	ja        L00001B00
L00001B23:
	jmp       L00001B77
L00001B25:
	leaq      L_.str101(%rip), %rax
	.align 4, 0x90
L00001B30:
	movq      %rcx, %rdx
	andq      $15, %rdx
	movb      (%rdx,%rax), %dl
	movb      %dl, -1(%rdi)
	decq      %rdi
	shrq      $4, %rcx
	jne       L00001B30
L00001B46:
	jmp       L00001B77
L00001B48:
	cmpl      $8, %eax
	jne       L00001B77
L00001B4D:
	.align 4, 0x90
L00001B50:
	movl      %ecx, %eax
	andl      $7, %eax
	orl       $48, %eax
	movb      %al, -1(%rdi)
	decq      %rdi
	shrq      $3, %rcx
	jne       L00001B50
L00001B64:
	jmp       L00001B77
L00001B66:
	.align 4, 0x90
L00001B70:
	movb      $48, -1(%rdi)
	decq      %rdi
L00001B77:
	cmpq      %rdi, %rsi
	jb        L00001B70
L00001B7C:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      _fputs
L00001B8B:
	movq      (%r14), %rax
	cmpq      -24(%rbp), %rax
	jne       L00001B9D
L00001B94:
	addq      $48, %rsp
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
L00001B9D:
	call      ___stack_chk_fail
L00001BA2:
	.align 4, 0x90
# ----------------------
_format_address_none:
	pushq     %rbp
	movq      %rsp, %rbp
	popq      %rbp
	ret       
L00001BB6:
	.align 4, 0x90
# ----------------------
_decode_format_string:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $56, %rsp
	testq     %rdi, %rdi
	je        L000022CD
L00001BDA:
	movb      $1, %r14b
	cmpb      $0, (%rdi)
	je        L00002258
L00001BE6:
	movq      _n_specs(%rip), %rax
	movq      %rdi, %r8
	movq      %rdi, -72(%rbp)
L00001BF4:
	movq      _n_specs_allocated(%rip), %rcx
	cmpq      %rax, %rcx
	movq      _spec(%rip), %r15
	ja        L00001C69
L00001C07:
	testq     %r15, %r15
	je        L00001C2F
L00001C0C:
	movq      $307445734561825860, %rax
	cmpq      %rax, %rcx
	jae       L000022E9
L00001C1F:
	movq      %r8, %rbx
	movq      %rcx, %rax
	shrq      $1, %rax
	leaq      1(%rcx,%rax), %rcx
	jmp       L00001C3E
L00001C2F:
	movq      %r8, %rbx
	testq     %rcx, %rcx
	movl      $3, %eax
	cmove     %rax, %rcx
L00001C3E:
	movq      %rcx, _n_specs_allocated(%rip)
	shlq      $3, %rcx
	leaq      (%rcx,%rcx,4), %rsi
	movq      %r15, %rdi
	call      _xrealloc
L00001C55:
	movq      %rax, %r15
	movq      %r15, _spec(%rip)
	movq      _n_specs(%rip), %rax
	movq      %rbx, %r8
L00001C69:
	leaq      (%rax,%rax,4), %r13
	leaq      0(,%r13,8), %r14
	addq      %r15, %r14
	je        L000022EE
L00001C7E:
	movsbl    (%r8), %r12d
	cmpl      $110, %r12d
	jg        L00001CD0
L00001C88:
	leal      -97(%r12), %eax
	cmpl      $5, %eax
	ja        L00002231
L00001C96:
	leaq      L00002358(%rip), %rcx
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
L00001CA6:
	leaq      1(%r8), %rdi
	movl      $3, %r9d
	movl      $1, %ebx
	movl      $5, %r12d
	leaq      _print_named_ascii(%rip), %rcx
	jmp       L000021E0
L00001CC7:
	.align 4, 0x90
L00001CD0:
	leal      -111(%r12), %eax
	cmpl      $9, %eax
	ja        L00002231
L00001CDE:
	movl      $577, %ecx
	btl       %eax, %ecx
	jae       L00002231
L00001CEC:
	leaq      1(%r8), %rdi
	movsbl    1(%r8), %eax
	cmpl      $82, %eax
	jg        L00001D20
L00001CFA:
	cmpl      $67, %eax
	je        L00001D79
L00001CFF:
	cmpl      $73, %eax
	jne       L00001D87
L00001D08:
	leaq      2(%r8), %rdi
	movl      $4, %eax
	jmp       L00001E30
L00001D16:
	.align 4, 0x90
L00001D20:
	cmpl      $83, %eax
	jne       L00001D9A
L00001D25:
	leaq      2(%r8), %rdi
	movl      $2, %eax
	jmp       L00001E30
L00001D33:
	leaq      1(%r8), %rdi
	movl      $3, %r9d
	movl      $1, %ebx
	movl      $6, %r12d
	leaq      _print_ascii(%rip), %rcx
	jmp       L000021E0
L00001D54:
	movsbl    1(%r8), %eax
	cmpl      $68, %eax
	je        L00002098
L00001D62:
	cmpl      $76, %eax
	jne       L000020A1
L00001D6B:
	leaq      2(%r8), %rdi
	movl      $16, %eax
	jmp       L00002143
L00001D79:
	leaq      2(%r8), %rdi
	movl      $1, %eax
	jmp       L00001E30
L00001D87:
	cmpl      $76, %eax
	jne       L00001D9A
L00001D8C:
	leaq      2(%r8), %rdi
	movl      $8, %eax
	jmp       L00001E30
L00001D9A:
	leal      -48(%rax), %ecx
	cmpl      $9, %ecx
	movl      $0, %ecx
	movl      $0, %ebx
	ja        L00001E1E
L00001DAC:
	.align 4, 0x90
L00001DB0:
	addl      $-48, %eax
	movslq    %eax, %rsi
	movq      %rsi, %rax
	notq      %rax
	movq      $-3689348814741910323, %rdx
	mulq      %rdx
	shrq      $3, %rdx
	cmpq      %rdx, %rbx
	ja        L0000226A
L00001DD6:
	leaq      (%rbx,%rbx,4), %rax
	leaq      (%rsi,%rax,2), %rbx
	movsbl    2(%r8,%rcx), %eax
	leal      -48(%rax), %edx
	incq      %rcx
	cmpl      $10, %edx
	jb        L00001DB0
L00001DEF:
	testq     %rcx, %rcx
	movl      $4, %eax
	je        L00001E30
L00001DF9:
	cmpq      $8, %rbx
	ja        L00002292
L00001E03:
	leaq      _integral_type_size(%rip), %rax
	cmpl      $0, (%rax,%rbx,4)
	je        L00002292
L00001E14:
	leaq      1(%r8,%rcx), %rdi
	movq      %rbx, %rax
	jmp       L00001E30
L00001E1E:
	movl      $4, %eax
	.align 4, 0x90
L00001E30:
	leaq      _integral_type_size(%rip), %rcx
	movl      (%rcx,%rax,4), %edx
	cmpl      $110, %r12d
	jg        L00001EB0
L00001E40:
	cmpl      $100, %r12d
	jne       L0000230A
L00001E4A:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	cmpl      $5, %edx
	leaq      L_.str70(%rip), %r8
	je        L00001E78
L00001E63:
	cmpl      $4, %edx
	leaq      L_.str72(%rip), %r8
	leaq      L_.str71(%rip), %rcx
	cmove     %rcx, %r8
L00001E78:
	movq      %rdx, -64(%rbp)
	leaq      _bytes_to_signed_dec_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %ebx
	xorl      %r12d, %r12d
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str69(%rip), %rcx
	call      ___sprintf_chk
L00001EA0:
	jmp       L00001FF0
L00001EA5:
	.align 4, 0x90
L00001EB0:
	cmpl      $111, %r12d
	je        L00001F1E
L00001EB6:
	cmpl      $117, %r12d
	jne       L00001F7D
L00001EC0:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	cmpl      $5, %edx
	leaq      L_.str77(%rip), %r8
	je        L00001EEE
L00001ED9:
	cmpl      $4, %edx
	leaq      L_.str79(%rip), %r8
	leaq      L_.str78(%rip), %rcx
	cmove     %rcx, %r8
L00001EEE:
	movq      %rdx, -64(%rbp)
	leaq      _bytes_to_unsigned_dec_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %ebx
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str69(%rip), %rcx
	call      ___sprintf_chk
L00001F13:
	movl      $1, %r12d
	jmp       L00001FF0
L00001F1E:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	leaq      _bytes_to_oct_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %r8d
	cmpl      $5, %edx
	leaq      L_.str74(%rip), %r9
	je        L00001F57
L00001F42:
	cmpl      $4, %edx
	leaq      L_.str76(%rip), %r9
	leaq      L_.str75(%rip), %rax
	cmove     %rax, %r9
L00001F57:
	movq      %rdx, -64(%rbp)
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str73(%rip), %rcx
	movq      %r8, %rbx
	call      ___sprintf_chk
L00001F75:
	movl      $2, %r12d
	jmp       L00001FF0
L00001F7D:
	cmpl      $120, %r12d
	jne       L0000230A
L00001F87:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      16(%r15,%r13,8), %rdi
	leaq      _bytes_to_hex_digits(%rip), %rcx
	movl      (%rcx,%rax,4), %r8d
	cmpl      $5, %edx
	leaq      L_.str80(%rip), %r9
	je        L00001FC0
L00001FAB:
	cmpl      $4, %edx
	leaq      L_.str82(%rip), %r9
	leaq      L_.str81(%rip), %rax
	cmove     %rax, %r9
L00001FC0:
	movq      %rdx, -64(%rbp)
	xorl      %esi, %esi
	movq      $-1, %rdx
	xorl      %eax, %eax
	leaq      L_.str73(%rip), %rcx
	movq      %r8, %rbx
	call      ___sprintf_chk
L00001FDE:
	movl      $3, %r12d
	.align 4, 0x90
L00001FF0:
	leaq      16(%r15,%r13,8), %rdi
	call      _strlen
L00001FFA:
	cmpq      $8, %rax
	jae       L0000230F
L00002004:
	movq      -64(%rbp), %rax
	leal      -1(%rax), %ecx
	cmpl      $4, %ecx
	movq      -48(%rbp), %r8
	movq      -56(%rbp), %rdi
	movq      %rbx, %r9
	ja        L0000228D
L0000201F:
	movl      $3, %ebx
	leaq      L00002370(%rip), %rdx
	movq      %rdx, %rsi
	movslq    (%rsi,%rcx,4), %rdx
	addq      %rsi, %rdx
	leaq      _print_int(%rip), %rcx
	jmp       *%rdx
L0000203E:
	testl     %r12d, %r12d
	leaq      _print_char(%rip), %rcx
	leaq      _print_s_char(%rip), %rax
	cmove     %rax, %rcx
	movl      $1, %ebx
	jmp       L000021E0
L0000205D:
	testl     %r12d, %r12d
	leaq      _print_short(%rip), %rcx
	leaq      _print_s_short(%rip), %rax
	cmove     %rax, %rcx
	movl      $2, %ebx
	jmp       L000021E0
L0000207C:
	leaq      _print_long(%rip), %rcx
	movl      %eax, %ebx
	jmp       L000021E0
L0000208A:
	leaq      _print_long_long(%rip), %rcx
	movl      %eax, %ebx
	jmp       L000021E0
L00002098:
	leaq      2(%r8), %rdi
	jmp       L0000213E
L000020A1:
	cmpl      $70, %eax
	jne       L000020B4
L000020A6:
	leaq      2(%r8), %rdi
	movl      $4, %eax
	jmp       L00002143
L000020B4:
	leaq      1(%r8), %rdi
	leal      -48(%rax), %ecx
	cmpl      $9, %ecx
	movl      $0, %ecx
	movl      $0, %ebx
	ja        L0000213E
L000020CA:
	.align 4, 0x90
L000020D0:
	addl      $-48, %eax
	movslq    %eax, %rsi
	movq      %rsi, %rax
	notq      %rax
	movq      $-3689348814741910323, %rdx
	mulq      %rdx
	shrq      $3, %rdx
	cmpq      %rdx, %rbx
	ja        L0000226A
L000020F6:
	leaq      (%rbx,%rbx,4), %rax
	leaq      (%rsi,%rax,2), %rbx
	movsbl    2(%r8,%rcx), %eax
	leal      -48(%rax), %edx
	incq      %rcx
	cmpl      $10, %edx
	jb        L000020D0
L0000210F:
	testq     %rcx, %rcx
	movl      $8, %eax
	je        L00002143
L00002119:
	cmpq      $16, %rbx
	ja        L000022B8
L00002123:
	leaq      _fp_type_size(%rip), %rax
	cmpl      $0, (%rax,%rbx,4)
	je        L000022B8
L00002134:
	leaq      1(%r8,%rcx), %rdi
	movq      %rbx, %rax
	jmp       L00002143
L0000213E:
	movl      $8, %eax
L00002143:
	movq      %rdi, -56(%rbp)
	movq      %r8, -48(%rbp)
	leaq      _fp_type_size(%rip), %rcx
	movl      (%rcx,%rax,4), %r12d
	call      _localeconv
L0000215B:
	movq      (%rax), %rdi
	cmpb      $0, (%rdi)
	movl      $1, %r9d
	je        L00002171
L00002169:
	call      _strlen
L0000216E:
	movq      %rax, %r9
L00002171:
	cmpl      $8, %r12d
	movq      -48(%rbp), %r8
	movq      -56(%rbp), %rdi
	je        L0000219D
L0000217F:
	cmpl      $7, %r12d
	jne       L000021B5
L00002185:
	addl      $23, %r9d
	movl      $7, %ebx
	movl      $4, %r12d
	leaq      _print_double(%rip), %rcx
	jmp       L000021E0
L0000219D:
	addl      $28, %r9d
	movl      $8, %ebx
	movl      $4, %r12d
	leaq      _print_long_double(%rip), %rcx
	jmp       L000021E0
L000021B5:
	cmpl      $6, %r12d
	jne       L0000232B
L000021BF:
	addl      $14, %r9d
	movl      $6, %ebx
	movl      $4, %r12d
	leaq      _print_float(%rip), %rcx
	.align 4, 0x90
L000021E0:
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
	je        L00002330
L0000220F:
	movq      _n_specs(%rip), %rax
	incq      %rax
	movq      %rax, _n_specs(%rip)
	cmpb      $0, (%rcx)
	movq      %rcx, %r8
	jne       L00001BF4
L0000222C:
	movb      $1, %r14b
	jmp       L00002258
L00002231:
	movq      -72(%rbp), %rdi
	call      _quote
L0000223A:
	movq      %rax, %rbx
	leaq      L_.str85(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movl      %r12d, %ecx
	movq      %rbx, %r8
	call      _error
L00002258:
	movb      %r14b, %al
	addq      $56, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000226A:
	movq      -72(%rbp), %rdi
	call      _quote
L00002273:
	movq      %rax, %rcx
	leaq      L_.str67(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L0000228B:
	jmp       L00002258
L0000228D:
	call      _abort
L00002292:
	movq      -72(%rbp), %rdi
	call      _quote
L0000229B:
	movq      %rax, %rcx
	leaq      L_.str68(%rip), %rdx
L000022A5:
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      %rbx, %r8
	call      _error
L000022B6:
	jmp       L00002258
L000022B8:
	movq      -72(%rbp), %rdi
	call      _quote
L000022C1:
	movq      %rax, %rcx
	leaq      L_.str84(%rip), %rdx
	jmp       L000022A5
L000022CD:
	leaq      L___func__.decode_format_string(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str64(%rip), %rbx
	movl      $984, %edx
	jmp       L0000234A
L000022E9:
	call      _xalloc_die
L000022EE:
	leaq      L___func__.decode_one_format(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str66(%rip), %rbx
	movl      $645, %edx
	jmp       L0000234A
L0000230A:
	call      _abort
L0000230F:
	leaq      L___func__.decode_one_format(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str83(%rip), %rbx
	movl      $744, %edx
	jmp       L0000234A
L0000232B:
	call      _abort
L00002330:
	leaq      L___func__.decode_format_string(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str65(%rip), %rbx
	movl      $996, %edx
L0000234A:
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
# ----------------------
L00002358:
	.long	L00001CA6-L00002358
	.long	L00002231-L00002358
	.long	L00001D33-L00002358
	.long	L00001CEC-L00002358
	.long	L00002231-L00002358
	.long	L00001D54-L00002358
# ----------------------
L00002370:
	.long	L0000203E-L00002370
	.long	L0000205D-L00002370
	.long	L000021E0-L00002370
	.long	L0000207C-L00002370
	.long	L0000208A-L00002370
L00002384:
	.align 4, 0x90
# ----------------------
_format_address_paren:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $48, %rsp
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
	jg        L000023D0
L000023CB:
	cmpl      40(%rsi), %eax
	jle       L000023DF
L000023D0:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $40, (%rax)
	jmp       L000023E9
L000023DF:
	movl      $40, %edi
	call      ___swbuf
L000023E9:
	movb      $0, -56(%rbp)
	leaq      -57(%rbp), %rdi
	movb      $41, -57(%rbp)
	movslq    _address_pad_len(%rip), %rax
	negq      %rax
	leaq      -57(%rbp,%rax), %rcx
	movl      _address_base(%rip), %eax
	cmpl      $16, %eax
	je        L00002446
L0000240F:
	cmpl      $10, %eax
	jne       L00002468
L00002414:
	movq      $-3689348814741910323, %r8
	.align 4, 0x90
L00002420:
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
	ja        L00002420
L00002444:
	jmp       L00002497
L00002446:
	leaq      L_.str101(%rip), %rax
	.align 4, 0x90
L00002450:
	movq      %rbx, %rdx
	andq      $15, %rdx
	movb      (%rdx,%rax), %dl
	movb      %dl, -1(%rdi)
	decq      %rdi
	shrq      $4, %rbx
	jne       L00002450
L00002466:
	jmp       L00002497
L00002468:
	cmpl      $8, %eax
	jne       L00002497
L0000246D:
	.align 4, 0x90
L00002470:
	movl      %ebx, %eax
	andl      $7, %eax
	orl       $48, %eax
	movb      %al, -1(%rdi)
	decq      %rdi
	shrq      $3, %rbx
	jne       L00002470
L00002484:
	jmp       L00002497
L00002486:
	.align 4, 0x90
L00002490:
	movb      $48, -1(%rdi)
	decq      %rdi
L00002497:
	cmpq      %rdi, %rcx
	jb        L00002490
L0000249C:
	movq      (%r12), %rsi
	call      _fputs
L000024A5:
	testb     %r14b, %r14b
	je        L000024E1
L000024AA:
	movq      (%r12), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L000024C9
L000024BB:
	cmpl      40(%rsi), %eax
	jle       L000024D8
L000024C0:
	movzbl    %r14b, %eax
	cmpl      $10, %eax
	je        L000024D8
L000024C9:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %r14b, (%rax)
	jmp       L000024E1
L000024D8:
	movsbl    %r14b, %edi
	call      ___swbuf
L000024E1:
	movq      (%r15), %rax
	cmpq      -40(%rbp), %rax
	jne       L000024F7
L000024EA:
	addq      $48, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000024F7:
	call      ___stack_chk_fail
L000024FC:
	.align 4, 0x90
# ----------------------
_format_address_label:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r12
	pushq     %rbx
	subq      $48, %rsp
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
	je        L00002585
L00002549:
	cmpl      $10, %eax
	jne       L000025A8
L0000254E:
	movq      $-3689348814741910323, %r8
	movq      %r12, %rcx
	.align 4, 0x90
L00002560:
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
	ja        L00002560
L00002583:
	jmp       L000025D7
L00002585:
	leaq      L_.str101(%rip), %rax
	movq      %r12, %rcx
	.align 4, 0x90
L00002590:
	movq      %rcx, %rdx
	andq      $15, %rdx
	movb      (%rdx,%rax), %dl
	movb      %dl, -1(%rdi)
	decq      %rdi
	shrq      $4, %rcx
	jne       L00002590
L000025A6:
	jmp       L000025D7
L000025A8:
	cmpl      $8, %eax
	jne       L000025D7
L000025AD:
	movq      %r12, %rax
L000025B0:
	movl      %eax, %ecx
	andl      $7, %ecx
	orl       $48, %ecx
	movb      %cl, -1(%rdi)
	decq      %rdi
	shrq      $3, %rax
	jne       L000025B0
L000025C4:
	jmp       L000025D7
L000025C6:
	.align 4, 0x90
L000025D0:
	movb      $48, -1(%rdi)
	decq      %rdi
L000025D7:
	cmpq      %rdi, %rsi
	jb        L000025D0
L000025DC:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rsi
	call      _fputs
L000025EB:
	addq      _pseudo_offset(%rip), %r12
	movsbl    %r14b, %esi
	movq      %r12, %rdi
	call      _format_address_paren
L000025FE:
	movq      (%r15), %rax
	cmpq      -40(%rbp), %rax
	jne       L00002614
L00002607:
	addq      $48, %rsp
	popq      %rbx
	popq      %r12
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002614:
	call      ___stack_chk_fail
L00002619:
	.align 4, 0x90
# ----------------------
_open_next_file:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movb      $1, %r13b
	leaq      L_.str46(%rip), %r14
	leaq      L_.str60(%rip), %r15
	leaq      L_.str37(%rip), %r12
	.align 4, 0x90
L00002650:
	movq      _file_list(%rip), %rax
	movq      (%rax), %rbx
	movq      %rbx, _input_filename(%rip)
	testq     %rbx, %rbx
	je        L00002726
L0000266A:
	addq      $8, %rax
	movq      %rax, _file_list(%rip)
	movq      %rbx, %rdi
	movq      %r14, %rsi
	call      _strcmp
L00002680:
	testl     %eax, %eax
	je        L000026D0
L00002684:
	movq      %rbx, %rdi
	movq      %r15, %rsi
	call      _fopen$DARWIN_EXTSN
L0000268F:
	movq      %rax, _in_stream(%rip)
	testq     %rax, %rax
	jne       L000026FF
L0000269B:
	call      ___error
L000026A0:
	movl      (%rax), %esi
	movq      _input_filename(%rip), %rcx
	xorl      %r13d, %r13d
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r12, %rdx
	call      _error
L000026B8:
	movq      _in_stream(%rip), %rax
	jmp       L000026F6
L000026C1:
	.align 4, 0x90
L000026D0:
	leaq      L_.str42(%rip), %rax
	movq      %rax, _input_filename(%rip)
	movq      ___stdinp@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, _in_stream(%rip)
	movb      $1, _have_read_stdin(%rip)
L000026F6:
	testq     %rax, %rax
	je        L00002650
L000026FF:
	movzbl    _limit_bytes_to_format(%rip), %ecx
	cmpl      $1, %ecx
	jne       L00002726
L0000270B:
	movb      _flag_dump_strings(%rip), %cl
	testb     %cl, %cl
	jne       L00002726
L00002715:
	xorl      %esi, %esi
	movl      $2, %edx
	xorl      %ecx, %ecx
	movq      %rax, %rdi
	call      _setvbuf
L00002726:
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
L0000273C:
	.align 4, 0x90
# ----------------------
_read_block:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      %rdx, %r15
	movq      %rsi, %r14
	movq      %rdi, %r12
	leaq      -1(%r12), %rax
	cmpq      _bytes_per_block(%rip), %rax
	jae       L000027DF
L00002765:
	movq      $0, (%r15)
	movq      _in_stream(%rip), %rcx
	movb      $1, %r13b
	xorl      %edi, %edi
	testq     %rcx, %rcx
	jne       L00002783
L0000277D:
	jmp       L000027C9
L0000277F:
	.align 4, 0x90
L00002780:
	movq      (%r15), %rdi
L00002783:
	movq      %r12, %rbx
	subq      %rdi, %rbx
	addq      %r14, %rdi
	movl      $1, %esi
	movq      %rbx, %rdx
	call      _fread
L00002799:
	addq      %rax, (%r15)
	cmpq      %rbx, %rax
	je        L000027C9
L000027A1:
	call      ___error
L000027A6:
	movl      (%rax), %edi
	call      _check_and_close
L000027AD:
	movb      %r13b, %bl
	andb      %al, %bl
	call      _open_next_file
L000027B7:
	movb      %al, %r13b
	andb      %bl, %r13b
	movq      _in_stream(%rip), %rcx
	testq     %rcx, %rcx
	jne       L00002780
L000027C9:
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
L000027DF:
	leaq      L___func__.read_block(%rip), %rax
	leaq      L_.str43(%rip), %rcx
	leaq      L_.str51(%rip), %rbx
	movl      $1290, %edx
	movq      %rax, %rdi
	movq      %rcx, %rsi
	movq      %rbx, %rcx
	call      ___assert_rtn
L00002807:
	.align 4, 0x90
# ----------------------
_write_block:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movq      %rcx, -56(%rbp)
	movq      %rsi, -48(%rbp)
	movq      %rdi, -64(%rbp)
	movb      _abbreviate_duplicate_blocks(%rip), %al
	testb     %al, %al
	jne       L00002866
L00002837:
	movb      _write_block.first(%rip), %al
	testb     %al, %al
	je        L00002866
L00002841:
	movq      -48(%rbp), %rax
	cmpq      %rax, _bytes_per_block(%rip)
	jne       L00002866
L0000284E:
	movq      %rdx, %rdi
	movq      -56(%rbp), %rsi
	movq      -48(%rbp), %rdx
	call      _memcmp
L0000285E:
	testl     %eax, %eax
	je        L00002A7C
L00002866:
	movb      $0, _write_block.prev_pair_equal(%rip)
	cmpq      $0, _n_specs(%rip)
	je        L00002A99
L0000287B:
	xorl      %r13d, %r13d
	.align 4, 0x90
L00002880:
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
	je        L000028E0
L000028C1:
	movl      _address_pad_len(%rip), %esi
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	leaq      L_.str15(%rip), %rdx
	call      _printf
L000028DC:
	jmp       L000028EC
L000028DE:
	.align 4, 0x90
L000028E0:
	xorl      %esi, %esi
	movq      -64(%rbp), %rdi
	call      *_format_address(%rip)
L000028EC:
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
L0000291D:
	movq      _spec(%rip), %rcx
	cmpb      $0, 24(%rcx,%r14)
	movq      ___stdoutp@GOTPCREL(%rip), %r14
	je        L00002A40
L00002937:
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
L00002964:
	movq      (%r14), %rsi
	leaq      L_.str50(%rip), %rdi
	call      _fputs
L00002973:
	movq      -48(%rbp), %rax
	testq     %rax, %rax
	movq      -56(%rbp), %r15
	movq      %rax, %r12
	je        L00002A05
L00002987:
	.align 4, 0x90
L00002990:
	movzbl    (%r15), %ebx
	incq      %r15
	testb     %bl, %bl
	js        L000029B0
L0000299B:
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%rbx,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       L000029BC
L000029AF:
	.align 4, 0x90
L000029B0:
	movl      $262144, %esi
	movl      %ebx, %edi
	call      ___maskrune
L000029BC:
	testl     %eax, %eax
	movl      $46, %eax
	cmove     %eax, %ebx
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L000029E0
L000029D6:
	cmpl      40(%rsi), %eax
	jle       L000029EE
L000029DB:
	cmpl      $10, %ebx
	je        L000029EE
L000029E0:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      %bl, (%rax)
	jmp       L00002A00
L000029EE:
	movl      %ebx, %edi
	call      ___swbuf
L000029F5:
	.align 4, 0x90
L00002A00:
	decq      %r12
	jne       L00002990
L00002A05:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jg        L00002A1A
L00002A15:
	cmpl      40(%rsi), %eax
	jle       L00002A29
L00002A1A:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $60, (%rax)
	jmp       L00002A40
L00002A29:
	movl      $60, %edi
	call      ___swbuf
L00002A33:
	.align 4, 0x90
L00002A40:
	movq      (%r14), %rsi
	movl      12(%rsi), %eax
	leal      -1(%rax), %ecx
	movl      %ecx, 12(%rsi)
	testl     %eax, %eax
	jle       L00002A60
L00002A50:
	movq      (%rsi), %rax
	leaq      1(%rax), %rcx
	movq      %rcx, (%rsi)
	movb      $10, (%rax)
	jmp       L00002A6A
L00002A5F:
	.align 4, 0x90
L00002A60:
	movl      $10, %edi
	call      ___swbuf
L00002A6A:
	incq      %r13
	cmpq      _n_specs(%rip), %r13
	jb        L00002880
L00002A7A:
	jmp       L00002A99
L00002A7C:
	movb      _write_block.prev_pair_equal(%rip), %al
	testb     %al, %al
	jne       L00002A99
L00002A86:
	leaq      L_str(%rip), %rdi
	call      _puts
L00002A92:
	movb      $1, _write_block.prev_pair_equal(%rip)
L00002A99:
	movb      $1, _write_block.first(%rip)
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002AAF:
	.align 4, 0x90
# ----------------------
_check_and_close:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	movl      %edi, %esi
	movq      _in_stream(%rip), %rbx
	movb      $1, %r14b
	testq     %rbx, %rbx
	je        L00002B6E
L00002ACC:
	testb     $64, 16(%rbx)
	je        L00002B18
L00002AD2:
	movq      _input_filename(%rip), %rcx
	leaq      L_.str45(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      _error
L00002AEC:
	movq      _file_list(%rip), %rax
	movq      -8(%rax), %rdi
	leaq      L_.str46(%rip), %rsi
	call      _strcmp
L00002B03:
	testl     %eax, %eax
	je        L00002B63
L00002B07:
	movq      _in_stream(%rip), %rdi
	call      _rpl_fclose
L00002B13:
	xorl      %r14d, %r14d
	jmp       L00002B63
L00002B18:
	movq      _file_list(%rip), %rax
	movq      -8(%rax), %rdi
	leaq      L_.str46(%rip), %rsi
	call      _strcmp
L00002B2F:
	movb      $1, %r14b
	testl     %eax, %eax
	je        L00002B63
L00002B36:
	movq      %rbx, %rdi
	call      _rpl_fclose
L00002B3E:
	testl     %eax, %eax
	je        L00002B63
L00002B42:
	call      ___error
L00002B47:
	movl      (%rax), %esi
	movq      _input_filename(%rip), %rcx
	leaq      L_.str37(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      _error
L00002B63:
	movq      $0, _in_stream(%rip)
L00002B6E:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	testb     $64, 16(%rax)
	je        L00002B93
L00002B7E:
	leaq      L_.str47(%rip), %rdx
	xorl      %r14d, %r14d
	xorl      %edi, %edi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      _error
L00002B93:
	movb      %r14b, %al
	popq      %rbx
	popq      %r14
	popq      %rbp
	ret       
L00002B9B:
	.align 4, 0x90
# ----------------------
_print_s_char:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %ebx
	movq      %rdx, %r14
	movq      %rsi, -56(%rbp)
	cmpq      %rsi, %rdi
	jbe       L00002C27
L00002BC0:
	movq      %rdi, -64(%rbp)
	leaq      -1(%rdi), %r15
	movslq    %ebx, %rax
	movq      %rax, -72(%rbp)
	imulq     %rax, %r15
	movq      %rdi, %r13
	.align 4, 0x90
L00002BE0:
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
L00002C0E:
	movq      -56(%rbp), %rax
	movq      %r12, %rcx
	movl      %ebx, %r8d
	subq      -72(%rbp), %r15
	cmpq      %rax, %r13
	movq      -48(%rbp), %rax
	movl      %eax, %ebx
	ja        L00002BE0
L00002C27:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002C36:
	.align 4, 0x90
# ----------------------
_print_char:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %ebx
	movq      %rdx, %r14
	movq      %rsi, -56(%rbp)
	cmpq      %rsi, %rdi
	jbe       L00002CC7
L00002C60:
	movq      %rdi, -64(%rbp)
	leaq      -1(%rdi), %r15
	movslq    %ebx, %rax
	movq      %rax, -72(%rbp)
	imulq     %rax, %r15
	movq      %rdi, %r13
	.align 4, 0x90
L00002C80:
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
L00002CAE:
	movq      -56(%rbp), %rax
	movq      %r12, %rcx
	movl      %ebx, %r8d
	subq      -72(%rbp), %r15
	cmpq      %rax, %r13
	movq      -48(%rbp), %rax
	movl      %eax, %ebx
	ja        L00002C80
L00002CC7:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002CD6:
	.align 4, 0x90
# ----------------------
_print_s_short:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       L00002D71
L00002D0B:
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
L00002D20:
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
	jne       L00002D55
L00002D46:
	movb      1(%rbx), %al
	movb      %al, -48(%rbp)
	movb      (%rbx), %al
	movb      %al, -47(%rbp)
	leaq      -48(%rbp), %rax
L00002D55:
	addq      $2, %rbx
	movswl    (%rax), %edx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
L00002D67:
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        L00002D20
L00002D71:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
_print_short:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       L00002E11
L00002DAB:
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
L00002DC0:
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
	jne       L00002DF5
L00002DE6:
	movb      1(%rbx), %al
	movb      %al, -48(%rbp)
	movb      (%rbx), %al
	movb      %al, -47(%rbp)
	leaq      -48(%rbp), %rax
L00002DF5:
	addq      $2, %rbx
	movzwl    (%rax), %edx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
L00002E07:
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        L00002DC0
L00002E11:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
# ----------------------
_print_int:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       L00002EBC
L00002E4B:
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
L00002E60:
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
	jne       L00002EA1
L00002E86:
	movb      3(%rbx), %al
	movb      %al, -48(%rbp)
	movb      2(%rbx), %al
	movb      %al, -47(%rbp)
	movb      1(%rbx), %al
	movb      %al, -46(%rbp)
	movb      (%rbx), %al
	movb      %al, -45(%rbp)
	leaq      -48(%rbp), %rax
L00002EA1:
	movl      (%rax), %edx
	addq      $4, %rbx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
L00002EB2:
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        L00002E60
L00002EBC:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002ECB:
	.align 4, 0x90
# ----------------------
_print_long:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       L00002F95
L00002EFF:
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
L00002F20:
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
	jne       L00002F79
L00002F46:
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
L00002F79:
	movq      (%rax), %rdx
	addq      $8, %rbx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
L00002F8B:
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        L00002F20
L00002F95:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00002FA4:
	.align 4, 0x90
# ----------------------
_print_long_long:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $40, %rsp
	movl      %r9d, %r15d
	movl      %r8d, -52(%rbp)
	movq      %rcx, -64(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -72(%rbp)
	movq      %rdi, %r12
	cmpq      %rsi, %r12
	jbe       L00003075
L00002FDF:
	leaq      -1(%r12), %r14
	movslq    %r15d, %rax
	movq      %rax, -80(%rbp)
	imulq     %rax, %r14
	movq      %r12, %r13
	.align 4, 0x90
L00003000:
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
	jne       L00003059
L00003026:
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
L00003059:
	movq      (%rax), %rdx
	addq      $8, %rbx
	xorl      %eax, %eax
	movq      -64(%rbp), %rdi
	call      _xprintf
L0000306B:
	subq      -80(%rbp), %r14
	cmpq      -72(%rbp), %r13
	ja        L00003000
L00003075:
	addq      $40, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00003084:
	.align 4, 0x90
# ----------------------
_print_float:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $88, %rsp
	movl      %r8d, -100(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -112(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      %rsi, %rdi
	jbe       L0000315F
L000030C3:
	movq      %rdi, -120(%rbp)
	leaq      -1(%rdi), %r14
	movslq    %r9d, %rax
	movq      %rax, -128(%rbp)
	imulq     %rax, %r14
	leaq      -80(%rbp), %r13
	movq      %rdi, %r15
	.align 4, 0x90
L000030E0:
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
	jne       L00003124
L00003109:
	movb      3(%rbx), %al
	movb      %al, -88(%rbp)
	movb      2(%rbx), %al
	movb      %al, -87(%rbp)
	movb      1(%rbx), %al
	movb      %al, -86(%rbp)
	movb      (%rbx), %al
	movb      %al, -85(%rbp)
	leaq      -88(%rbp), %rax
L00003124:
	movss     (%rax), %xmm0
	addq      $4, %rbx
	movl      $21, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %r13, %rdi
	call      _ftoastr
L0000313D:
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r12d, %esi
	movq      %r13, %rdx
	call      _xprintf
L00003151:
	subq      -128(%rbp), %r14
	cmpq      -112(%rbp), %r15
	movq      -96(%rbp), %r9
	ja        L000030E0
L0000315F:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L0000317E
L0000316F:
	addq      $88, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000317E:
	call      ___stack_chk_fail
L00003183:
	.align 4, 0x90
# ----------------------
_print_double:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $88, %rsp
	movl      %r8d, -100(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -112(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      %rsi, %rdi
	jbe       L0000327B
L000031C3:
	movq      %rdi, -120(%rbp)
	leaq      -1(%rdi), %r14
	movslq    %r9d, %rax
	movq      %rax, -128(%rbp)
	imulq     %rax, %r14
	leaq      -80(%rbp), %r13
	movq      %rdi, %r15
	.align 4, 0x90
L000031E0:
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
	jne       L0000323C
L00003209:
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
L0000323C:
	movsd     (%rax), %xmm0
	addq      $8, %rbx
	movl      $30, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %r13, %rdi
	call      _dtoastr
L00003255:
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r12d, %esi
	movq      %r13, %rdx
	call      _xprintf
L00003269:
	subq      -128(%rbp), %r14
	cmpq      -112(%rbp), %r15
	movq      -96(%rbp), %r9
	ja        L000031E0
L0000327B:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L0000329A
L0000328B:
	addq      $88, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000329A:
	call      ___stack_chk_fail
L0000329F:
	.align 4, 0x90
# ----------------------
_print_long_double:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $136, %rsp
	movl      %r8d, -124(%rbp)
	movq      %rdx, %rbx
	movq      %rsi, -136(%rbp)
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, -48(%rbp)
	cmpq      %rsi, %rdi
	jbe       L000033D5
L000032D9:
	movq      %rdi, -144(%rbp)
	leaq      -1(%rdi), %r14
	movslq    %r9d, %rax
	movq      %rax, -152(%rbp)
	imulq     %rax, %r14
	leaq      -96(%rbp), %r13
	movq      %rdi, %r12
	.align 4, 0x90
L00003300:
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
	jne       L0000338F
L0000332C:
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
L0000338F:
	fldt      (%rax)
	addq      $16, %rbx
	fstpt     (%rsp)
	movl      $35, %esi
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	movq      %r13, %rdi
	call      _ldtoastr
L000033A9:
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r15d, %esi
	movq      %r13, %rdx
	call      _xprintf
L000033BD:
	subq      -152(%rbp), %r14
	cmpq      -136(%rbp), %r12
	movq      -120(%rbp), %r9
	ja        L00003300
L000033D5:
	movq      ___stack_chk_guard@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpq      -48(%rbp), %rax
	jne       L000033F7
L000033E5:
	addq      $136, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000033F7:
	call      ___stack_chk_fail
L000033FC:
	.align 4, 0x90
# ----------------------
_print_named_ascii:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movl      %r9d, %ecx
	movl      %r8d, -48(%rbp)
	movq      %rdx, %r13
	movq      %rsi, -56(%rbp)
	movq      %rdi, %r15
	cmpq      %rsi, %r15
	jbe       L000034B4
L0000342B:
	leaq      -1(%r15), %rbx
	movslq    %ecx, %rax
	movq      %rax, -64(%rbp)
	imulq     %rax, %rbx
	movq      %r15, %r12
	.align 4, 0x90
L00003440:
	xorl      %edx, %edx
	movq      %rbx, %rax
	divq      %r15
	movq      %rax, %r14
	movzbl    (%r13), %eax
	andl      $127, %eax
	cmpl      $127, %eax
	leaq      L_.str89(%rip), %rdx
	je        L0000348B
L0000345F:
	cmpl      $32, %eax
	ja        L00003480
L00003464:
	leaq      _charname(%rip), %rdx
	leaq      (%rdx,%rax,4), %rdx
	jmp       L0000348B
L00003471:
	.align 4, 0x90
L00003480:
	movb      %al, -42(%rbp)
	movb      $0, -41(%rbp)
	leaq      -42(%rbp), %rdx
L0000348B:
	decq      %r12
	incq      %r13
	addl      -48(%rbp), %ecx
	subl      %r14d, %ecx
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %ecx, %esi
	call      _xprintf
L000034A7:
	subq      -64(%rbp), %rbx
	cmpq      -56(%rbp), %r12
	movl      %r14d, %ecx
	ja        L00003440
L000034B4:
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L000034C3:
	.align 4, 0x90
# ----------------------
_print_ascii:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $72, %rsp
	movl      %r9d, %ebx
	movl      %r8d, -76(%rbp)
	movq      %rdx, %rcx
	movq      %rsi, -88(%rbp)
	cmpq      %rsi, %rdi
	jbe       L0000364A
L000034F8:
	movq      %rdi, -96(%rbp)
	leaq      -1(%rdi), %r13
	movslq    %ebx, %rax
	movq      %rax, -104(%rbp)
	leaq      -44(%rbp), %r14
	movq      %rdi, %rdx
	imulq     %rax, %r13
	jmp       L00003570
L00003514:
	leaq      L_.str52(%rip), %rdx
	jmp       L00003618
L00003520:
	leaq      L_.str53(%rip), %rdx
	jmp       L00003618
L0000352C:
	leaq      L_.str57(%rip), %rdx
	jmp       L00003618
L00003538:
	leaq      L_.str55(%rip), %rdx
	jmp       L00003618
L00003544:
	leaq      L_.str58(%rip), %rdx
	jmp       L00003618
L00003550:
	leaq      L_.str54(%rip), %rdx
	jmp       L00003618
L0000355C:
	leaq      L_.str56(%rip), %rdx
	jmp       L00003618
L00003568:
	.align 4, 0x90
L00003570:
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
	ja        L000035C0
L00003598:
	leaq      L0000365C(%rip), %rax
	movq      %rax, %rcx
	movslq    (%rcx,%r12,4), %rax
	addq      %rcx, %rax
	leaq      L_.str86(%rip), %rdx
	jmp       *%rax
L000035B2:
	.align 4, 0x90
L000035C0:
	testb     %r12b, %r12b
	js        L000035E0
L000035C5:
	movq      __DefaultRuneLocale@GOTPCREL(%rip), %rax
	movl      60(%rax,%r12,4), %eax
	movl      $262144, %ecx
	andl      %ecx, %eax
	jmp       L000035ED
L000035DA:
	.align 4, 0x90
L000035E0:
	movl      $262144, %esi
	movl      %r12d, %edi
	call      ___maskrune
L000035ED:
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
L00003615:
	movq      %r14, %rdx
L00003618:
	addl      -76(%rbp), %r15d
	movq      -64(%rbp), %rbx
	subl      %ebx, %r15d
	xorl      %eax, %eax
	leaq      L_.str49(%rip), %rdi
	movl      %r15d, %esi
	call      _xprintf
L00003634:
	subq      -104(%rbp), %r13
	movq      -72(%rbp), %rdx
	cmpq      -88(%rbp), %rdx
	movq      -56(%rbp), %rcx
	ja        L00003570
L0000364A:
	addq      $72, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00003659:
	.align 4, 0x90
# ----------------------
L0000365C:
	.long	L00003618-L0000365C
	.long	L000035C0-L0000365C
	.long	L000035C0-L0000365C
	.long	L000035C0-L0000365C
	.long	L000035C0-L0000365C
	.long	L000035C0-L0000365C
	.long	L000035C0-L0000365C
	.long	L00003514-L0000365C
	.long	L00003520-L0000365C
	.long	L0000352C-L0000365C
	.long	L00003538-L0000365C
	.long	L00003544-L0000365C
	.long	L00003550-L0000365C
	.long	L0000355C-L0000365C
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.string	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [-abcdfilosx]... [FILE] [[+]OFFSET[.][b]]\n  or:  %s --traditional [OPTION]... [FILE] [[+]OFFSET[.][b] [+][LABEL][.][b]]\n"
L_.str1:
	.string	"\nWrite an unambiguous representation, octal bytes by default,\nof FILE to standard output.  With more than one FILE argument,\nconcatenate them in the listed order to form the input.\n"
L_.str2:
	.string	"\nIf first and second call formats both apply, the second format is assumed\nif the last operand begins with + or (if there are 2 operands) a digit.\nAn OFFSET operand means -j OFFSET.  LABEL is the pseudo-address\nat first byte printed, incremented when dump is progressing.\nFor OFFSET and LABEL, a 0x or 0X prefix indicates hexadecimal;\nsuffixes may be . for octal and b for multiply by 512.\n"
L_.str3:
	.string	"  -A, --address-radix=RADIX   output format for file offsets; RADIX is one\n                                of [doxn], for Decimal, Octal, Hex or None\n      --endian={big|little}   swap input bytes according the specified order\n  -j, --skip-bytes=BYTES      skip BYTES input bytes first\n"
L_.str4:
	.string	"  -N, --read-bytes=BYTES      limit dump to BYTES input bytes\n  -S BYTES, --strings[=BYTES]  output strings of at least BYTES graphic chars;\n                                3 is implied when BYTES is not specified\n  -t, --format=TYPE           select output format or formats\n  -v, --output-duplicates     do not use * to mark line suppression\n  -w[BYTES], --width[=BYTES]  output BYTES bytes per output line;\n                                32 is implied when BYTES is not specified\n      --traditional           accept arguments in third form above\n"
L_.str5:
	.string	"      --help     display this help and exit\n"
L_.str6:
	.string	"      --version  output version information and exit\n"
L_.str7:
	.string	"\n\nTraditional format specifications may be intermixed; they accumulate:\n  -a   same as -t a,  select named characters, ignoring high-order bit\n  -b   same as -t o1, select octal bytes\n  -c   same as -t c,  select printable characters or backslash escapes\n  -d   same as -t u2, select unsigned decimal 2-byte units\n"
L_.str8:
	.string	"  -f   same as -t fF, select floats\n  -i   same as -t dI, select decimal ints\n  -l   same as -t dL, select decimal longs\n  -o   same as -t o2, select octal 2-byte units\n  -s   same as -t d2, select decimal 2-byte units\n  -x   same as -t x2, select hexadecimal 2-byte units\n"
L_.str9:
	.string	"\n\nTYPE is made up of one or more of these specifications:\n  a          named character, ignoring high-order bit\n  c          printable character or backslash escape\n"
L_.str10:
	.string	"  d[SIZE]    signed decimal, SIZE bytes per integer\n  f[SIZE]    floating point, SIZE bytes per integer\n  o[SIZE]    octal, SIZE bytes per integer\n  u[SIZE]    unsigned decimal, SIZE bytes per integer\n  x[SIZE]    hexadecimal, SIZE bytes per integer\n"
L_.str11:
	.string	"\nSIZE is a number.  For TYPE in [doux], SIZE may also be C for\nsizeof(char), S for sizeof(short), I for sizeof(int) or L for\nsizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D\nfor sizeof(double) or L for sizeof(long double).\n"
L_.str12:
	.string	"\nAdding a z suffix to any type displays printable characters at the end of\neach output line.\n"
L_.str13:
	.string	"\n\nBYTES is hex with 0x or 0X prefix, and may have a multiplier suffix:\n  b    512\n  KB   1000\n  K    1024\n  MB   1000*1000\n  M    1024*1024\nand so on for G, T, P, E, Z, Y.\n"
L_.str14:
	.string	"od"
L_.str15:
	.byte	0
L_.str16:
	.string	"invalid output address radix '%c'; it must be one character from [doxn]"
L_.str18:
	.string	"--endian"
L_.str19:
	.string	"a"
L_.str20:
	.string	"o1"
L_.str21:
	.string	"c"
L_.str22:
	.string	"u4"
L_.str23:
	.string	"u2"
L_.str24:
	.string	"fD"
L_.str25:
	.string	"fF"
L_.str26:
	.string	"x4"
L_.str27:
	.string	"dI"
L_.str28:
	.string	"dL"
L_.str29:
	.string	"o4"
L_.str30:
	.string	"o2"
L_.str31:
	.string	"d2"
L_.str32:
	.string	"x2"
L_.str33:
	.string	"GNU coreutils"
L_.str34:
	.string	"Jim Meyering"
L_.str35:
	.string	"no type may be specified when dumping strings"
L_.str36:
	.string	"extra operand %s"
L_.str37:
	.string	"%s"
L_.str38:
	.string	"compatibility mode supports at most one file"
L_.str39:
	.string	"skip-bytes + read-bytes is too large"
L_.str40:
	.string	"oS"
L_.str41:
	.string	"warning: invalid width %lu; using %d instead"
L_.str42:
	.string	"standard input"
L___func__.dump:
	.string	"dump"
L_.str43:
	.string	"src/od.c"
L_.str44:
	.string	"n_bytes_read == bytes_per_block"
L_.str45:
	.string	"%s: read error"
L_.str46:
	.string	"-"
L_.str47:
	.string	"write error"
L_.str49:
	.string	"%*s"
L_.str50:
	.string	"  >"
L___func__.read_block:
	.string	"read_block"
L_.str51:
	.string	"0 < n && n <= bytes_per_block"
L_.str52:
	.string	"\\a"
L_.str53:
	.string	"\\b"
L_.str54:
	.string	"\\f"
L_.str55:
	.string	"\\n"
L_.str56:
	.string	"\\r"
L_.str57:
	.string	"\\t"
L_.str58:
	.string	"\\v"
L_.str59:
	.string	"cannot skip past end of combined input"
L_.str60:
	.string	"r"
L_.str61:
	.string	"Bb"
L_.str62:
	.string	"little"
L_.str63:
	.string	"big"
L___func__.decode_format_string:
	.string	"decode_format_string"
L_.str64:
	.string	"s != NULL"
L_.str65:
	.string	"s != next"
L___func__.decode_one_format:
	.string	"decode_one_format"
L_.str66:
	.string	"tspec != NULL"
L_.str67:
	.string	"invalid type string %s"
L_.str68:
	.string	"invalid type string %s;\nthis system doesn't provide a %lu-byte integral type"
L_.str69:
	.string	"%%*%s"
L_.str70:
	.string	"jd"
L_.str71:
	.string	"ld"
L_.str72:
	.string	"d"
L_.str73:
	.string	"%%*.%d%s"
L_.str74:
	.string	"jo"
L_.str75:
	.string	"lo"
L_.str76:
	.string	"o"
L_.str77:
	.string	"ju"
L_.str78:
	.string	"lu"
L_.str79:
	.string	"u"
L_.str80:
	.string	"jx"
L_.str81:
	.string	"lx"
L_.str82:
	.string	"x"
L_.str83:
	.string	"strlen (tspec->fmt_string) < FMT_BYTES_ALLOCATED"
L_.str84:
	.string	"invalid type string %s;\nthis system doesn't provide a %lu-byte floating point type"
L_.str85:
	.string	"invalid character '%c' in type string %s"
L_.str86:
	.string	"\\0"
L_.str87:
	.string	"%c"
L_.str88:
	.string	"%03o"
L_.str89:
	.string	"del"
L_.str90:
	.string	"skip-bytes"
L_.str91:
	.string	"address-radix"
L_.str92:
	.string	"read-bytes"
L_.str93:
	.string	"format"
L_.str94:
	.string	"output-duplicates"
L_.str95:
	.string	"strings"
L_.str96:
	.string	"traditional"
L_.str97:
	.string	"width"
L_.str98:
	.string	"endian"
L_.str99:
	.string	"help"
L_.str100:
	.string	"version"
L_.str101:
	.string	"0123456789abcdef"
L_.str102:
	.string	"["
L_.str103:
	.string	"test invocation"
L_.str104:
	.string	"coreutils"
L_.str105:
	.string	"Multi-call invocation"
L_.str106:
	.string	"sha224sum"
L_.str107:
	.string	"sha2 utilities"
L_.str108:
	.string	"sha256sum"
L_.str109:
	.string	"sha384sum"
L_.str110:
	.string	"sha512sum"
L_.str111:
	.string	"\n%s online help: <%s>\n"
L_.str112:
	.string	"http://www.gnu.org/software/coreutils/"
L_.str113:
	.string	"en_"
L_.str114:
	.string	"Report %s translation bugs to <http://translationproject.org/team/>\n"
L_.str115:
	.string	"Full documentation at: <%s%s>\n"
L_.str116:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
L_.str117:
	.string	" invocation"
L_.str118:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
L_.str119:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
L_.str120:
	.string	"Try '%s --help' for more information.\n"
L_str:
	.string	"*"
# ----------------------
	.section       __TEXT,__const,regular
	.align 4
_main.multipliers:
	.string	"bEGKkMmPTYZ0"
# ----------------------
LC0000495D:
	.zero	3
	.align 4
_short_options:
	.string	"A:aBbcDdeFfHhIij:LlN:OoS:st:vw::Xx"
# ----------------------
LC00004983:
	.byte	0
	.align 1
_endian_types:
	.long	0
	.long	1
	.long	0
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
	.long	0
	.long	0
	.long	0
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
	.long	0
	.long	0
	.long	0
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
	.long	0
	.long	0
	.long	0
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
	.long	0
	.long	0
	.long	0
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
	.long	0
	.long	0
	.long	0
	.align 4
_charname:
	.long	7107950
	.long	6844275
	.long	7894131
	.long	7894117
	.long	7630693
	.long	7433829
	.long	7037793
	.long	7103842
	.long	29538
	.long	29800
	.long	27758
	.long	29814
	.long	26214
	.long	29283
	.long	28531
	.long	26995
	.long	6646884
	.long	3236708
	.long	3302244
	.long	3367780
	.long	3433316
	.long	7037294
	.long	7240051
	.long	6452325
	.long	7233891
	.long	28005
	.long	6452595
	.long	6517605
	.long	29542
	.long	29543
	.long	29554
	.long	29557
	.long	28787
# ----------------------
	.section       __DATA,__const,regular
	.align 4
_endian_args:
	.quad	L_.str62
	.quad	L_.str63
	.zero	16
	.align 4
_default_file_list:
	.quad	L_.str46
	.zero	8
	.align 4
_long_options:
	.quad	L_.str90
	.long	1
	.long	0
	.long	0
	.long	0
	.long	106
	.long	0
	.quad	L_.str91
	.long	1
	.long	0
	.long	0
	.long	0
	.long	65
	.long	0
	.quad	L_.str92
	.long	1
	.long	0
	.long	0
	.long	0
	.long	78
	.long	0
	.quad	L_.str93
	.long	1
	.long	0
	.long	0
	.long	0
	.long	116
	.long	0
	.quad	L_.str94
	.long	0
	.long	0
	.long	0
	.long	0
	.long	118
	.long	0
	.quad	L_.str95
	.long	2
	.long	0
	.long	0
	.long	0
	.long	83
	.long	0
	.quad	L_.str96
	.long	0
	.long	0
	.long	0
	.long	0
	.long	128
	.long	0
	.quad	L_.str97
	.long	2
	.long	0
	.long	0
	.long	0
	.long	119
	.long	0
	.quad	L_.str98
	.long	1
	.long	0
	.long	0
	.long	0
	.long	129
	.long	0
	.quad	L_.str99
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-130
	.long	0
	.quad	L_.str100
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
.zerofill __DATA,__bss,_integral_type_size,48,4
# ----------------------
.zerofill __DATA,__bss,_fp_type_size,72,3
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
.zerofill __DATA,__bss,_flag_dump_strings,8,3
# ----------------------
.zerofill __DATA,__bss,_n_bytes_to_skip,8,3
# ----------------------
.zerofill __DATA,__bss,_limit_bytes_to_format,8,3
# ----------------------
.zerofill __DATA,__bss,_max_bytes_to_format,8,3
# ----------------------
.zerofill __DATA,__bss,_string_min,8,3
# ----------------------
.zerofill __DATA,__bss,_abbreviate_duplicate_blocks,1,0
# ----------------------
.zerofill __DATA,__bss,_input_swap,7,0
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
.zerofill __DATA,__bss,_have_read_stdin,8,3
# ----------------------
.zerofill __DATA,__bss,_input_filename,8,3
# ----------------------
.zerofill __DATA,__bss,_write_block.first,1,0
# ----------------------
.zerofill __DATA,__bss,_write_block.prev_pair_equal,1,0
# ----------------------

.subsections_via_symbols
