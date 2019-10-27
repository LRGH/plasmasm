	.section       __TEXT,__text,regular,pure_instructions
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
	subq      $760, %rsp
	movq      %rsi, %r14
	movl      %edi, %r15d
	movq      (%r14), %rax
	movq      %rax, _progname(%rip)
	testq     %rax, %rax
	je        L0000002E
L00000029:
	cmpb      $0, (%rax)
	jne       L0000003C
L0000002E:
	leaq      LC00000CF2(%rip), %rax
	movq      %rax, _progname(%rip)
L0000003C:
	leaq      -784(%rbp), %rdi
	xorl      %eax, %eax
	call      _jpeg_std_error
L0000004A:
	movq      %rax, -616(%rbp)
	leaq      -616(%rbp), %rbx
	movl      $62, %esi
	movl      $576, %edx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _jpeg_CreateCompress
L0000006C:
	leaq      _cdjpeg_message_table(%rip), %rax
	movq      %rax, -632(%rbp)
	movl      $1000, -624(%rbp)
	movl      $1043, -620(%rbp)
	movl      $2, -556(%rbp)
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _jpeg_set_defaults
L000000A2:
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	movl      %r15d, %esi
	movq      %r14, %rdx
	call      _parse_switches
L000000B2:
	leal      -1(%r15), %ecx
	cmpl      %ecx, %eax
	jl        L0000034F
L000000BE:
	cmpl      %r15d, %eax
	jge       L000000F5
L000000C3:
	movslq    %eax, %rbx
	movq      (%r14,%rbx,8), %rdi
	leaq      LC00000D11(%rip), %rsi
	call      _fopen
L000000D6:
	movq      %rax, %r13
	testq     %r13, %r13
	jne       L000000FF
L000000DE:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	movq      (%r14,%rbx,8), %rcx
	jmp       L00000137
L000000F5:
	xorl      %eax, %eax
	call      _read_stdin
L000000FC:
	movq      %rax, %r13
L000000FF:
	movq      _outfilename(%rip), %rdi
	testq     %rdi, %rdi
	je        L0000014F
L0000010B:
	leaq      LC00000D27(%rip), %rsi
	call      _fopen
L00000117:
	movq      %rax, %r12
	testq     %r12, %r12
	jne       L00000159
L0000011F:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	movq      _outfilename(%rip), %rcx
L00000137:
	leaq      LC00000D14(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
L00000145:
	movl      $1, %edi
	call      _exit
L0000014F:
	xorl      %eax, %eax
	call      _write_stdout
L00000156:
	movq      %rax, %r12
L00000159:
	movzbl    _is_targa(%rip), %eax
	cmpl      $1, %eax
	jne       L0000016E
L00000165:
	movq      %r12, -792(%rbp)
	jmp       L000001CE
L0000016E:
	movq      %r13, %rdi
	call      _getc
L00000176:
	movl      %eax, %ebx
	cmpl      $-1, %ebx
	jne       L00000196
L0000017D:
	movq      -616(%rbp), %rcx
	movl      $42, 40(%rcx)
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      *(%rcx)
L00000196:
	movl      %ebx, %edi
	movq      %r13, %rsi
	call      _ungetc
L000001A0:
	cmpl      $-1, %eax
	jne       L000001BE
L000001A5:
	movq      -616(%rbp), %rcx
	movl      $1040, 40(%rcx)
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      *(%rcx)
L000001BE:
	cmpl      $70, %ebx
	jg        L000001E4
L000001C3:
	movq      %r12, -792(%rbp)
	testl     %ebx, %ebx
	jne       L00000206
L000001CE:
	movq      %r14, %r12
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_targa
L000001DF:
	movq      %rax, %rbx
	jmp       L00000254
L000001E4:
	movq      %r12, -792(%rbp)
	movq      %r14, %r12
	cmpl      $71, %ebx
	jne       L00000221
L000001F3:
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_gif
L00000201:
	movq      %rax, %rbx
	jmp       L00000254
L00000206:
	movq      %r14, %r12
	cmpl      $66, %ebx
	jne       L00000239
L0000020E:
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_bmp
L0000021C:
	movq      %rax, %rbx
	jmp       L00000254
L00000221:
	cmpl      $80, %ebx
	jne       L00000239
L00000226:
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_ppm
L00000234:
	movq      %rax, %rbx
	jmp       L00000254
L00000239:
	movq      -616(%rbp), %rcx
	movl      $1041, 40(%rcx)
	xorl      %ebx, %ebx
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      *(%rcx)
L00000254:
	movq      %r13, 24(%rbx)
	leaq      -616(%rbp), %r14
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      *(%rbx)
L00000269:
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_default_colorspace
L00000273:
	movl      $1, %ecx
	movq      %r14, %rdi
	movl      %r15d, %esi
	movq      %r12, %rdx
	call      _parse_switches
L00000286:
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      -792(%rbp), %r15
	movq      %r15, %rsi
	call      _jpeg_stdio_dest
L0000029A:
	movl      $1, %esi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_start_compress
L000002A9:
	movl      -256(%rbp), %eax
	cmpl      -564(%rbp), %eax
	jae       L000002EB
L000002B7:
	leaq      -616(%rbp), %r14
	.align 4, 0x90
L000002C0:
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      *8(%rbx)
L000002CB:
	movl      %eax, %ecx
	movq      32(%rbx), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	movl      %ecx, %edx
	call      _jpeg_write_scanlines
L000002DD:
	movl      -256(%rbp), %eax
	cmpl      -564(%rbp), %eax
	jb        L000002C0
L000002EB:
	leaq      -616(%rbp), %r14
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      *16(%rbx)
L000002FD:
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_finish_compress
L00000307:
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_destroy_compress
L00000311:
	movq      ___stdinp@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r13
	je        L00000325
L0000031D:
	movq      %r13, %rdi
	call      _fclose
L00000325:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r15
	je        L00000339
L00000331:
	movq      %r15, %rdi
	call      _fclose
L00000339:
	movl      $2, %edi
	cmpq      $0, -656(%rbp)
	jne       L0000034A
L00000348:
	xorl      %edi, %edi
L0000034A:
	call      _exit
L0000034F:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	leaq      LC00000CF8(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
L0000036E:
	call      _usage
L00000373:
	.align 4, 0x90
# ----------------------
_parse_switches:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $104, %rsp
	movl      %ecx, -100(%rbp)
	movq      %rdx, %r13
	movl      %esi, %r12d
	movq      %rdi, %r14
	movl      $75, -44(%rbp)
	movb      $0, _is_targa(%rip)
	movq      $0, _outfilename(%rip)
	movq      (%r14), %rax
	movl      $0, 124(%rax)
	cmpl      $2, %r12d
	jl        L00000978
L000003CA:
	movl      $1, %ebx
	movl      $100, -140(%rbp)
	xorl      %eax, %eax
	movq      %rax, -96(%rbp)
	xorl      %eax, %eax
	movq      %rax, -136(%rbp)
	xorl      %eax, %eax
	movq      %rax, -120(%rbp)
	xorl      %eax, %eax
	movq      %rax, -128(%rbp)
	xorl      %eax, %eax
	movq      %rax, -112(%rbp)
	xorl      %eax, %eax
	movq      %rax, -88(%rbp)
	jmp       L00000900
L00000405:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001297(%rip), %rsi
	call      _keymatch
L0000041B:
	testl     %eax, %eax
	je        L0000045D
L0000041F:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L0000042A:
	movslq    %ebx, %r15
	movq      (%r13,%r15,8), %rdi
	movl      $1, %edx
	xorl      %eax, %eax
	leaq      LC0000129B(%rip), %rsi
	call      _keymatch
L00000445:
	testl     %eax, %eax
	je        L000004D7
L0000044D:
	movl      $0, 324(%r14)
	jmp       L0000096F
L0000045D:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC000012AA(%rip), %rsi
	call      _keymatch
L00000473:
	testl     %eax, %eax
	jne       L00000495
L00000477:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC000012B0(%rip), %rsi
	call      _keymatch
L0000048D:
	testl     %eax, %eax
	je        L00000533
L00000495:
	movb      _parse_switches.printed_version(%rip), %al
	testb     %al, %al
	jne       L000004CC
L0000049F:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	xorl      %eax, %eax
	leaq      LC000012B8(%rip), %rsi
	leaq      LC000012E7(%rip), %rdx
	leaq      LC000012F7(%rip), %rcx
	call      _fprintf
L000004C5:
	movb      $1, _parse_switches.printed_version(%rip)
L000004CC:
	movq      (%r14), %rax
	incl      124(%rax)
	jmp       L0000096F
L000004D7:
	movq      (%r13,%r15,8), %rdi
	movl      $2, %edx
	xorl      %eax, %eax
	leaq      LC0000129F(%rip), %rsi
	call      _keymatch
L000004EF:
	testl     %eax, %eax
	je        L00000503
L000004F3:
	movl      $1, 324(%r14)
	jmp       L0000096F
L00000503:
	movq      (%r13,%r15,8), %rdi
	movl      $2, %edx
	xorl      %eax, %eax
	leaq      LC000012A4(%rip), %rsi
	call      _keymatch
L0000051B:
	testl     %eax, %eax
	je        L00000A8F
L00000523:
	movl      $2, 324(%r14)
	jmp       L0000096F
L00000533:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000131A(%rip), %rsi
	call      _keymatch
L00000549:
	testl     %eax, %eax
	jne       L00000567
L0000054D:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001324(%rip), %rsi
	call      _keymatch
L00000563:
	testl     %eax, %eax
	je        L0000057B
L00000567:
	movl      $1, %esi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_set_colorspace
L00000576:
	jmp       L0000096F
L0000057B:
	movl      $3, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000132E(%rip), %rsi
	call      _keymatch
L00000591:
	testl     %eax, %eax
	je        L000005E5
L00000595:
	movb      $120, -57(%rbp)
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L000005A4:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      LC00001338(%rip), %rsi
	leaq      -56(%rbp), %rdx
	leaq      -57(%rbp), %rcx
	call      _sscanf
L000005C2:
	testl     %eax, %eax
	jle       L00000A8A
L000005CA:
	movb      -57(%rbp), %al
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $109, %eax
	jne       L00000629
L000005D7:
	imulq     $1000, -56(%rbp), %rax
	movq      %rax, -56(%rbp)
	jmp       L0000062D
L000005E5:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000133E(%rip), %rsi
	call      _keymatch
L000005FB:
	testl     %eax, %eax
	jne       L00000619
L000005FF:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001347(%rip), %rsi
	call      _keymatch
L00000615:
	testl     %eax, %eax
	je        L00000641
L00000619:
	movl      $1, 312(%r14)
	jmp       L0000096F
L00000629:
	movq      -56(%rbp), %rax
L0000062D:
	imulq     $1000, %rax, %rax
	movq      8(%r14), %rcx
	movq      %rax, 88(%rcx)
	jmp       L0000096F
L00000641:
	movl      $4, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001350(%rip), %rsi
	call      _keymatch
L00000657:
	testl     %eax, %eax
	je        L0000067A
L0000065B:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L00000666:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, _outfilename(%rip)
	jmp       L0000096F
L0000067A:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001358(%rip), %rsi
	call      _keymatch
L00000690:
	testl     %eax, %eax
	je        L000006A2
L00000694:
	movl      $1, %eax
	movq      %rax, -112(%rbp)
	jmp       L0000096F
L000006A2:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001364(%rip), %rsi
	call      _keymatch
L000006B8:
	testl     %eax, %eax
	je        L000006FF
L000006BC:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L000006C7:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      LC0000136C(%rip), %rsi
	leaq      -44(%rbp), %rdx
	call      _sscanf
L000006E1:
	cmpl      $1, %eax
	jne       L00000A8A
L000006EA:
	movl      -44(%rbp), %edi
	xorl      %eax, %eax
	call      _jpeg_quality_scaling
L000006F4:
	movl      %eax, -140(%rbp)
	jmp       L0000096F
L000006FF:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000136F(%rip), %rsi
	call      _keymatch
L00000715:
	testl     %eax, %eax
	je        L00000735
L00000719:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L00000724:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -120(%rbp)
	jmp       L0000096F
L00000735:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001376(%rip), %rsi
	call      _keymatch
L0000074B:
	testl     %eax, %eax
	je        L0000076B
L0000074F:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L0000075A:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -128(%rbp)
	jmp       L0000096F
L0000076B:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000137E(%rip), %rsi
	call      _keymatch
L00000781:
	testl     %eax, %eax
	je        L000007EF
L00000785:
	movb      $120, -73(%rbp)
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L00000794:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      LC00001338(%rip), %rsi
	leaq      -72(%rbp), %rdx
	leaq      -73(%rbp), %rcx
	call      _sscanf
L000007B2:
	testl     %eax, %eax
	jle       L00000A8A
L000007BA:
	movq      -72(%rbp), %rax
	cmpq      $65536, %rax
	jae       L00000A8A
L000007CA:
	movb      -73(%rbp), %cl
	orb       $32, %cl
	movzbl    %cl, %ecx
	cmpl      $98, %ecx
	jne       L00000828
L000007D8:
	movl      %eax, 328(%r14)
	movl      $0, 332(%r14)
	jmp       L0000096F
L000007EF:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001386(%rip), %rsi
	call      _keymatch
L00000805:
	testl     %eax, %eax
	je        L00000834
L00000809:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L00000814:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -136(%rbp)
	jmp       L0000096F
L00000828:
	movl      %eax, 332(%r14)
	jmp       L0000096F
L00000834:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000138D(%rip), %rsi
	call      _keymatch
L0000084A:
	testl     %eax, %eax
	je        L0000086A
L0000084E:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L00000859:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -96(%rbp)
	jmp       L0000096F
L0000086A:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001393(%rip), %rsi
	call      _keymatch
L00000880:
	testl     %eax, %eax
	je        L000008CA
L00000884:
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       L00000A8A
L0000088F:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      LC0000136C(%rip), %rsi
	leaq      -80(%rbp), %rdx
	call      _sscanf
L000008A9:
	cmpl      $1, %eax
	jne       L00000A8A
L000008B2:
	movl      -80(%rbp), %eax
	cmpl      $101, %eax
	jae       L00000A8A
L000008BE:
	movl      %eax, 320(%r14)
	jmp       L0000096F
L000008CA:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000139A(%rip), %rsi
	call      _keymatch
L000008E0:
	testl     %eax, %eax
	je        L00000A94
L000008E8:
	movb      $1, _is_targa(%rip)
	jmp       L0000096F
L000008F1:
	.align 4, 0x90
L00000900:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %r15
	movzbl    (%r15), %eax
	cmpl      $45, %eax
	jne       L00000960
L00000911:
	incq      %r15
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC00001257(%rip), %rsi
	call      _keymatch
L0000092A:
	testl     %eax, %eax
	jne       L00000A61
L00000932:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      LC0000128E(%rip), %rsi
	call      _keymatch
L00000948:
	testl     %eax, %eax
	je        L00000405
L00000950:
	movl      $1, %eax
	movq      %rax, -88(%rbp)
	jmp       L0000096F
L0000095B:
	.align 4, 0x90
L00000960:
	testl     %ebx, %ebx
	jg        L000009AE
L00000964:
	movq      $0, _outfilename(%rip)
L0000096F:
	incl      %ebx
	cmpl      %r12d, %ebx
	jl        L00000900
L00000976:
	jmp       L000009AE
L00000978:
	xorl      %eax, %eax
	movq      %rax, -96(%rbp)
	movl      $1, %ebx
	movl      $100, -140(%rbp)
	xorl      %eax, %eax
	movq      %rax, -136(%rbp)
	xorl      %eax, %eax
	movq      %rax, -120(%rbp)
	xorl      %eax, %eax
	movq      %rax, -128(%rbp)
	xorl      %eax, %eax
	movq      %rax, -112(%rbp)
	xorl      %eax, %eax
	movq      %rax, -88(%rbp)
L000009AE:
	cmpl      $0, -100(%rbp)
	movq      -96(%rbp), %r15
	je        L00000A50
L000009BC:
	movl      -44(%rbp), %esi
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      -88(%rbp), %r12
	movl      %r12d, %edx
	call      _jpeg_set_quality
L000009D0:
	movq      -128(%rbp), %rsi
	testq     %rsi, %rsi
	je        L000009F4
L000009D9:
	xorl      %eax, %eax
	movq      %r14, %rdi
	movl      -140(%rbp), %edx
	movl      %r12d, %ecx
	call      _read_quant_tables
L000009EC:
	testl     %eax, %eax
	je        L00000A8A
L000009F4:
	movq      -120(%rbp), %rsi
	testq     %rsi, %rsi
	movq      -136(%rbp), %r12
	je        L00000A12
L00000A04:
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _set_quant_slots
L00000A0E:
	testl     %eax, %eax
	je        L00000A8A
L00000A12:
	testq     %r12, %r12
	je        L00000A28
L00000A17:
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _set_sample_factors
L00000A24:
	testl     %eax, %eax
	je        L00000A8A
L00000A28:
	movq      -112(%rbp), %rax
	testl     %eax, %eax
	je        L00000A3A
L00000A30:
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_simple_progression
L00000A3A:
	testq     %r15, %r15
	je        L00000A50
L00000A3F:
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %r15, %rsi
	call      _read_scan_script
L00000A4C:
	testl     %eax, %eax
	je        L00000A8A
L00000A50:
	movl      %ebx, %eax
	addq      $104, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00000A61:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	leaq      LC00001262(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
L00000A80:
	movl      $1, %edi
	call      _exit
L00000A8A:
	call      _usage
L00000A8F:
	call      _usage
L00000A94:
	call      _usage
L00000A99:
	.align 4, 0x90
# ----------------------
_usage:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %r14
	pushq     %rbx
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	movq      _progname(%rip), %rdx
	leaq      LC000013A0(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
L00000AC6:
	movq      (%rbx), %rcx
	leaq      LC000013B6(%rip), %rdi
	movl      $12, %esi
	movl      $1, %edx
	call      _fwrite
L00000ADF:
	movq      (%rbx), %rcx
	leaq      LC000013C3(%rip), %rdi
	movl      $37, %esi
	movl      $1, %edx
	call      _fwrite
L00000AF8:
	movq      (%rbx), %rcx
	leaq      LC000013E9(%rip), %rdi
	movl      $68, %esi
	movl      $1, %edx
	call      _fwrite
L00000B11:
	movq      (%rbx), %rcx
	leaq      LC0000142E(%rip), %rdi
	movl      $45, %esi
	movl      $1, %edx
	call      _fwrite
L00000B2A:
	movq      (%rbx), %rcx
	leaq      LC0000145C(%rip), %rdi
	movl      $77, %esi
	movl      $1, %edx
	call      _fwrite
L00000B43:
	movq      (%rbx), %rcx
	leaq      LC000014AA(%rip), %rdi
	movl      $46, %esi
	movl      $1, %edx
	call      _fwrite
L00000B5C:
	movq      (%rbx), %rcx
	leaq      LC000014D9(%rip), %rdi
	movl      $65, %esi
	movl      $1, %edx
	call      _fwrite
L00000B75:
	movq      (%rbx), %rcx
	leaq      LC0000151B(%rip), %rdi
	movl      $29, %esi
	movl      $1, %edx
	call      _fwrite
L00000B8E:
	movq      (%rbx), %rdi
	leaq      LC00001539(%rip), %rsi
	leaq      LC00001564(%rip), %rdx
	xorl      %eax, %eax
	call      _fprintf
L00000BA6:
	movq      (%rbx), %rdi
	leaq      LC0000156F(%rip), %rsi
	leaq      LC000015A8(%rip), %r14
	xorl      %eax, %eax
	movq      %r14, %rdx
	call      _fprintf
L00000BC1:
	movq      (%rbx), %rdi
	leaq      LC000015A9(%rip), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdx
	call      _fprintf
L00000BD5:
	movq      (%rbx), %rcx
	leaq      LC000015DB(%rip), %rdi
	movl      $67, %esi
	movl      $1, %edx
	call      _fwrite
L00000BEE:
	movq      (%rbx), %rcx
	leaq      LC0000161F(%rip), %rdi
	movl      $62, %esi
	movl      $1, %edx
	call      _fwrite
L00000C07:
	movq      (%rbx), %rcx
	leaq      LC0000165E(%rip), %rdi
	movl      $51, %esi
	movl      $1, %edx
	call      _fwrite
L00000C20:
	movq      (%rbx), %rcx
	leaq      LC00001692(%rip), %rdi
	movl      $46, %esi
	movl      $1, %edx
	call      _fwrite
L00000C39:
	movq      (%rbx), %rcx
	leaq      LC000016C1(%rip), %rdi
	movl      $43, %esi
	movl      $1, %edx
	call      _fwrite
L00000C52:
	movq      (%rbx), %rcx
	leaq      LC000016ED(%rip), %rdi
	movl      $22, %esi
	movl      $1, %edx
	call      _fwrite
L00000C6B:
	movq      (%rbx), %rcx
	leaq      LC00001704(%rip), %rdi
	movl      $52, %esi
	movl      $1, %edx
	call      _fwrite
L00000C84:
	movq      (%rbx), %rcx
	leaq      LC00001739(%rip), %rdi
	movl      $55, %esi
	movl      $1, %edx
	call      _fwrite
L00000C9D:
	movq      (%rbx), %rcx
	leaq      LC00001771(%rip), %rdi
	movl      $55, %esi
	movl      $1, %edx
	call      _fwrite
L00000CB6:
	movq      (%rbx), %rcx
	leaq      LC000017A9(%rip), %rdi
	movl      $52, %esi
	movl      $1, %edx
	call      _fwrite
L00000CCF:
	movq      (%rbx), %rcx
	leaq      LC000017DE(%rip), %rdi
	movl      $56, %esi
	movl      $1, %edx
	call      _fwrite
L00000CE8:
	movl      $1, %edi
	call      _exit
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00000CF2:
	.string	"cjpeg"
LC00000CF8:
	.string	"%s: only one input file\n"
LC00000D11:
	.string	"rb"
LC00000D14:
	.string	"%s: can't open %s\n"
LC00000D27:
	.string	"wb"
LC00000D2A:
	.string	"Unsupported BMP colormap format"
LC00000D4A:
	.string	"Only 8- and 24-bit BMP files are supported"
LC00000D75:
	.string	"Invalid BMP file: bad header length"
LC00000D99:
	.string	"Invalid BMP file: biPlanes not equal to 1"
LC00000DC3:
	.string	"BMP output must be grayscale or RGB"
LC00000DE7:
	.string	"Sorry, compressed BMPs not yet supported"
LC00000E10:
	.string	"Not a BMP file - does not start with BM"
LC00000E38:
	.string	"%ux%u 24-bit BMP image"
LC00000E4F:
	.string	"%ux%u 8-bit colormapped BMP image"
LC00000E71:
	.string	"%ux%u 24-bit OS2 BMP image"
LC00000E8C:
	.string	"%ux%u 8-bit colormapped OS2 BMP image"
LC00000EB2:
	.string	"GIF output got confused"
LC00000ECA:
	.string	"Bogus GIF codesize %d"
LC00000EE0:
	.string	"GIF output must be grayscale or RGB"
LC00000F04:
	.string	"Too few images in GIF file"
LC00000F1F:
	.string	"Not a GIF file"
LC00000F2E:
	.string	"%ux%ux%d GIF image"
LC00000F41:
	.string	"Warning: unexpected GIF version number '%c%c%c'"
LC00000F71:
	.string	"Ignoring GIF extension block of type 0x%02x"
LC00000F9D:
	.string	"Caution: nonsquare pixels in input"
LC00000FC0:
	.string	"Corrupt data in GIF file"
LC00000FD9:
	.string	"Bogus char 0x%02x in GIF file, ignoring"
LC00001001:
	.string	"Premature end of GIF image"
LC0000101C:
	.string	"Ran out of GIF bits"
LC00001030:
	.string	"PPM output must be grayscale or RGB"
LC00001054:
	.string	"Nonnumeric data in PPM file"
LC00001070:
	.string	"Not a PPM/PGM file"
LC00001083:
	.string	"%ux%u PGM image"
LC00001093:
	.string	"%ux%u text PGM image"
LC000010A8:
	.string	"%ux%u PPM image"
LC000010B8:
	.string	"%ux%u text PPM image"
LC000010CD:
	.string	"Unsupported Targa colormap format"
LC000010EF:
	.string	"Invalid or unsupported Targa file"
LC00001111:
	.string	"Targa output must be grayscale or RGB"
LC00001137:
	.string	"%ux%u RGB Targa image"
LC0000114D:
	.string	"%ux%u grayscale Targa image"
LC00001169:
	.string	"%ux%u colormapped Targa image"
LC00001187:
	.string	"Color map file is invalid or of unsupported format"
LC000011BA:
	.string	"Output file format cannot handle %d colormap entries"
LC000011EF:
	.string	"ungetc failed"
LC000011FD:
	.string	"Unrecognized input file format --- perhaps you need -targa"
LC00001238:
	.string	"Unsupported output file format"
LC00001257:
	.string	"arithmetic"
LC00001262:
	.string	"%s: sorry, arithmetic coding not supported\n"
LC0000128E:
	.string	"baseline"
LC00001297:
	.string	"dct"
LC0000129B:
	.string	"int"
LC0000129F:
	.string	"fast"
LC000012A4:
	.string	"float"
LC000012AA:
	.string	"debug"
LC000012B0:
	.string	"verbose"
LC000012B8:
	.string	"Independent JPEG Group's CJPEG, version %s\n%s\n"
LC000012E7:
	.string	"6b  27-Mar-1998"
LC000012F7:
	.string	"Copyright (C) 1998, Thomas G. Lane"
LC0000131A:
	.string	"grayscale"
LC00001324:
	.string	"greyscale"
LC0000132E:
	.string	"maxmemory"
LC00001338:
	.string	"%ld%c"
LC0000133E:
	.string	"optimize"
LC00001347:
	.string	"optimise"
LC00001350:
	.string	"outfile"
LC00001358:
	.string	"progressive"
LC00001364:
	.string	"quality"
LC0000136C:
	.string	"%d"
LC0000136F:
	.string	"qslots"
LC00001376:
	.string	"qtables"
LC0000137E:
	.string	"restart"
LC00001386:
	.string	"sample"
LC0000138D:
	.string	"scans"
LC00001393:
	.string	"smooth"
LC0000139A:
	.string	"targa"
LC000013A0:
	.string	"usage: %s [switches] "
LC000013B6:
	.string	"[inputfile]\n"
LC000013C3:
	.string	"Switches (names may be abbreviated):\n"
LC000013E9:
	.string	"  -quality N     Compression quality (0..100; 5-95 is useful range)\n"
LC0000142E:
	.string	"  -grayscale     Create monochrome JPEG file\n"
LC0000145C:
	.string	"  -optimize      Optimize Huffman table (smaller file, but slow compression)\n"
LC000014AA:
	.string	"  -progressive   Create progressive JPEG file\n"
LC000014D9:
	.string	"  -targa         Input file is Targa format (usually not needed)\n"
LC0000151B:
	.string	"Switches for advanced users:\n"
LC00001539:
	.string	"  -dct int       Use integer DCT method%s\n"
LC00001564:
	.string	" (default)"
LC0000156F:
	.string	"  -dct fast      Use fast integer DCT (less accurate)%s\n"
LC000015A8:
	.byte	0
LC000015A9:
	.string	"  -dct float     Use floating-point DCT method%s\n"
LC000015DB:
	.string	"  -restart N     Set restart interval in rows, or in blocks with B\n"
LC0000161F:
	.string	"  -smooth N      Smooth dithered input (N=1..100 is strength)\n"
LC0000165E:
	.string	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
LC00001692:
	.string	"  -outfile name  Specify name for output file\n"
LC000016C1:
	.string	"  -verbose  or  -debug   Emit debug output\n"
LC000016ED:
	.string	"Switches for wizards:\n"
LC00001704:
	.string	"  -baseline      Force baseline quantization tables\n"
LC00001739:
	.string	"  -qtables file  Use quantization tables given in file\n"
LC00001771:
	.string	"  -qslots N[,...]    Set component quantization tables\n"
LC000017A9:
	.string	"  -sample HxV[,...]  Set component sampling factors\n"
LC000017DE:
	.string	"  -scans file    Create multi-scan JPEG per script file\n"
# ----------------------
	.section       __DATA,__const,regular
_cdjpeg_message_table:
	.zero	8
	.quad	LC00000D2A
	.quad	LC00000D4A
	.quad	LC00000D75
	.quad	LC00000D99
	.quad	LC00000DC3
	.quad	LC00000DE7
	.quad	LC00000E10
	.quad	LC00000E38
	.quad	LC00000E4F
	.quad	LC00000E71
	.quad	LC00000E8C
	.quad	LC00000EB2
	.quad	LC00000ECA
	.quad	LC00000EE0
	.quad	LC00000F04
	.quad	LC00000F1F
	.quad	LC00000F2E
	.quad	LC00000F41
	.quad	LC00000F71
	.quad	LC00000F9D
	.quad	LC00000FC0
	.quad	LC00000FD9
	.quad	LC00001001
	.quad	LC0000101C
	.quad	LC00001030
	.quad	LC00001054
	.quad	LC00001070
	.quad	LC00001083
	.quad	LC00001093
	.quad	LC000010A8
	.quad	LC000010B8
	.quad	LC000010CD
	.quad	LC000010EF
	.quad	LC00001111
	.quad	LC00001137
	.quad	LC0000114D
	.quad	LC00001169
	.quad	LC00001187
	.quad	LC000011BA
	.quad	LC000011EF
	.quad	LC000011FD
	.quad	LC00001238
	.zero	8
# ----------------------
.zerofill __DATA,__bss,_progname,8,3
# ----------------------
.zerofill __DATA,__bss,_outfilename,8,3
# ----------------------
.zerofill __DATA,__bss,_is_targa,1,0
# ----------------------
.zerofill __DATA,__bss,_parse_switches.printed_version,1,0
# ----------------------

.subsections_via_symbols
