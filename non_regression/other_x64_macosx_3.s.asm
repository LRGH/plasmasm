	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp0:
Ltmp1:
	movq      %rsp, %rbp
Ltmp2:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $760, %rsp
Ltmp3:
Ltmp4:
Ltmp5:
Ltmp6:
Ltmp7:
	movq      %rsi, %r14
	movl      %edi, %r15d
	movq      (%r14), %rax
	movq      %rax, _progname(%rip)
	testq     %rax, %rax
	je        LBB0_2
	cmpb      $0, (%rax)
	jne       LBB0_3
LBB0_2:
	leaq      L_.str(%rip), %rax
	movq      %rax, _progname(%rip)
LBB0_3:
	leaq      -784(%rbp), %rdi
	xorl      %eax, %eax
	call      _jpeg_std_error
	movq      %rax, -616(%rbp)
	leaq      -616(%rbp), %rbx
	movl      $62, %esi
	movl      $576, %edx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _jpeg_CreateCompress
	leaq      _cdjpeg_message_table(%rip), %rax
	movq      %rax, -632(%rbp)
	movl      $1000, -624(%rbp)
	movl      $1043, -620(%rbp)
	movl      $2, -556(%rbp)
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      _jpeg_set_defaults
	xorl      %ecx, %ecx
	movq      %rbx, %rdi
	movl      %r15d, %esi
	movq      %r14, %rdx
	call      _parse_switches
	leal      -1(%r15), %ecx
	cmpl      %ecx, %eax
	jl        LBB0_38
	cmpl      %r15d, %eax
	jge       LBB0_8
	movslq    %eax, %rbx
	movq      (%r14,%rbx,8), %rdi
	leaq      L_.str2(%rip), %rsi
	call      _fopen
	movq      %rax, %r13
	testq     %r13, %r13
	jne       LBB0_9
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	movq      (%r14,%rbx,8), %rcx
	jmp       LBB0_7
LBB0_8:
	xorl      %eax, %eax
	call      _read_stdin
	movq      %rax, %r13
LBB0_9:
	movq      _outfilename(%rip), %rdi
	testq     %rdi, %rdi
	je        LBB0_12
	leaq      L_.str4(%rip), %rsi
	call      _fopen
	movq      %rax, %r12
	testq     %r12, %r12
	jne       LBB0_13
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	movq      _outfilename(%rip), %rcx
LBB0_7:
	leaq      L_.str3(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
	movl      $1, %edi
	call      _exit
LBB0_12:
	xorl      %eax, %eax
	call      _write_stdout
	movq      %rax, %r12
LBB0_13:
	movzbl    _is_targa(%rip), %eax
	cmpl      $1, %eax
	jne       LBB0_16
	movq      %r12, -792(%rbp)
	jmp       LBB0_15
LBB0_16:
	movq      %r13, %rdi
	call      _getc
	movl      %eax, %ebx
	cmpl      $-1, %ebx
	jne       LBB0_18
	movq      -616(%rbp), %rcx
	movl      $42, 40(%rcx)
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      *(%rcx)
LBB0_18:
	movl      %ebx, %edi
	movq      %r13, %rsi
	call      _ungetc
	cmpl      $-1, %eax
	jne       LBB0_20
	movq      -616(%rbp), %rcx
	movl      $1040, 40(%rcx)
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      *(%rcx)
LBB0_20:
	cmpl      $70, %ebx
	jg        LBB0_24
	movq      %r12, -792(%rbp)
	testl     %ebx, %ebx
	jne       LBB0_22
LBB0_15:
	movq      %r14, %r12
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_targa
	movq      %rax, %rbx
	jmp       LBB0_28
LBB0_24:
	movq      %r12, -792(%rbp)
	movq      %r14, %r12
	cmpl      $71, %ebx
	jne       LBB0_25
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_gif
	movq      %rax, %rbx
	jmp       LBB0_28
LBB0_22:
	movq      %r14, %r12
	cmpl      $66, %ebx
	jne       LBB0_27
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_bmp
	movq      %rax, %rbx
	jmp       LBB0_28
LBB0_25:
	cmpl      $80, %ebx
	jne       LBB0_27
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      _jinit_read_ppm
	movq      %rax, %rbx
	jmp       LBB0_28
LBB0_27:
	movq      -616(%rbp), %rcx
	movl      $1041, 40(%rcx)
	xorl      %ebx, %ebx
	leaq      -616(%rbp), %rdi
	xorl      %eax, %eax
	call      *(%rcx)
LBB0_28:
	movq      %r13, 24(%rbx)
	leaq      -616(%rbp), %r14
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      *(%rbx)
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_default_colorspace
	movl      $1, %ecx
	movq      %r14, %rdi
	movl      %r15d, %esi
	movq      %r12, %rdx
	call      _parse_switches
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      -792(%rbp), %r15
	movq      %r15, %rsi
	call      _jpeg_stdio_dest
	movl      $1, %esi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_start_compress
	movl      -256(%rbp), %eax
	cmpl      -564(%rbp), %eax
	jae       LBB0_31
	leaq      -616(%rbp), %r14
	.align 4, 0x90
LBB0_30:
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      *8(%rbx)
	movl      %eax, %ecx
	movq      32(%rbx), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdi
	movl      %ecx, %edx
	call      _jpeg_write_scanlines
	movl      -256(%rbp), %eax
	cmpl      -564(%rbp), %eax
	jb        LBB0_30
LBB0_31:
	leaq      -616(%rbp), %r14
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %rbx, %rsi
	call      *16(%rbx)
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_finish_compress
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_destroy_compress
	movq      ___stdinp@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r13
	je        LBB0_33
	movq      %r13, %rdi
	call      _fclose
LBB0_33:
	movq      ___stdoutp@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r15
	je        LBB0_35
	movq      %r15, %rdi
	call      _fclose
LBB0_35:
	movl      $2, %edi
	cmpq      $0, -656(%rbp)
	jne       LBB0_37
	xorl      %edi, %edi
LBB0_37:
	call      _exit
LBB0_38:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	leaq      L_.str1(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
	call      _usage
	.align 4, 0x90
_parse_switches:
	pushq     %rbp
Ltmp8:
Ltmp9:
	movq      %rsp, %rbp
Ltmp10:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $104, %rsp
Ltmp11:
Ltmp12:
Ltmp13:
Ltmp14:
Ltmp15:
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
	jl        LBB1_1
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
	jmp       LBB1_3
LBB1_9:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str50(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_18
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %r15
	movq      (%r13,%r15,8), %rdi
	movl      $1, %edx
	xorl      %eax, %eax
	leaq      L_.str51(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_13
	movl      $0, 324(%r14)
	jmp       LBB1_72
LBB1_18:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str54(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	jne       LBB1_20
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str55(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_23
LBB1_20:
	movb      _parse_switches.printed_version(%rip), %al
	testb     %al, %al
	jne       LBB1_22
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	xorl      %eax, %eax
	leaq      L_.str56(%rip), %rsi
	leaq      L_.str57(%rip), %rdx
	leaq      L_.str58(%rip), %rcx
	call      _fprintf
	movb      $1, _parse_switches.printed_version(%rip)
LBB1_22:
	movq      (%r14), %rax
	incl      124(%rax)
	jmp       LBB1_72
LBB1_13:
	movq      (%r13,%r15,8), %rdi
	movl      $2, %edx
	xorl      %eax, %eax
	leaq      L_.str52(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_15
	movl      $1, 324(%r14)
	jmp       LBB1_72
LBB1_15:
	movq      (%r13,%r15,8), %rdi
	movl      $2, %edx
	xorl      %eax, %eax
	leaq      L_.str53(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_17
	movl      $2, 324(%r14)
	jmp       LBB1_72
LBB1_23:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str59(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	jne       LBB1_25
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str60(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_26
LBB1_25:
	movl      $1, %esi
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_set_colorspace
	jmp       LBB1_72
LBB1_26:
	movl      $3, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str61(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_33
	movb      $120, -57(%rbp)
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      L_.str62(%rip), %rsi
	leaq      -56(%rbp), %rdx
	leaq      -57(%rbp), %rcx
	call      _sscanf
	testl     %eax, %eax
	jle       LBB1_86
	movb      -57(%rbp), %al
	orb       $32, %al
	movzbl    %al, %eax
	cmpl      $109, %eax
	jne       LBB1_30
	imulq     $1000, -56(%rbp), %rax
	movq      %rax, -56(%rbp)
	jmp       LBB1_32
LBB1_33:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str63(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	jne       LBB1_35
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str64(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_36
LBB1_35:
	movl      $1, 312(%r14)
	jmp       LBB1_72
LBB1_30:
	movq      -56(%rbp), %rax
LBB1_32:
	imulq     $1000, %rax, %rax
	movq      8(%r14), %rcx
	movq      %rax, 88(%rcx)
	jmp       LBB1_72
LBB1_36:
	movl      $4, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str65(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_39
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, _outfilename(%rip)
	jmp       LBB1_72
LBB1_39:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str66(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_41
	movl      $1, %eax
	movq      %rax, -112(%rbp)
	jmp       LBB1_72
LBB1_41:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str67(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_45
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      L_.str68(%rip), %rsi
	leaq      -44(%rbp), %rdx
	call      _sscanf
	cmpl      $1, %eax
	jne       LBB1_86
	movl      -44(%rbp), %edi
	xorl      %eax, %eax
	call      _jpeg_quality_scaling
	movl      %eax, -140(%rbp)
	jmp       LBB1_72
LBB1_45:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str69(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_48
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -120(%rbp)
	jmp       LBB1_72
LBB1_48:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str70(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_51
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -128(%rbp)
	jmp       LBB1_72
LBB1_51:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str71(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_57
	movb      $120, -73(%rbp)
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      L_.str62(%rip), %rsi
	leaq      -72(%rbp), %rdx
	leaq      -73(%rbp), %rcx
	call      _sscanf
	testl     %eax, %eax
	jle       LBB1_86
	movq      -72(%rbp), %rax
	cmpq      $65536, %rax
	jae       LBB1_86
	movb      -73(%rbp), %cl
	orb       $32, %cl
	movzbl    %cl, %ecx
	cmpl      $98, %ecx
	jne       LBB1_71
	movl      %eax, 328(%r14)
	movl      $0, 332(%r14)
	jmp       LBB1_72
LBB1_57:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str72(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_60
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -136(%rbp)
	jmp       LBB1_72
LBB1_71:
	movl      %eax, 332(%r14)
	jmp       LBB1_72
LBB1_60:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str73(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_63
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rax
	movq      %rax, -96(%rbp)
	jmp       LBB1_72
LBB1_63:
	movl      $2, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str74(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_68
	incl      %ebx
	cmpl      %r12d, %ebx
	jge       LBB1_86
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %rdi
	xorl      %eax, %eax
	leaq      L_.str68(%rip), %rsi
	leaq      -80(%rbp), %rdx
	call      _sscanf
	cmpl      $1, %eax
	jne       LBB1_86
	movl      -80(%rbp), %eax
	cmpl      $101, %eax
	jae       LBB1_86
	movl      %eax, 320(%r14)
	jmp       LBB1_72
LBB1_68:
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str75(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_70
	movb      $1, _is_targa(%rip)
	jmp       LBB1_72
	.align 4, 0x90
LBB1_3:
	movslq    %ebx, %rax
	movq      (%r13,%rax,8), %r15
	movzbl    (%r15), %eax
	cmpl      $45, %eax
	jne       LBB1_4
	incq      %r15
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str47(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	jne       LBB1_85
	movl      $1, %edx
	xorl      %eax, %eax
	movq      %r15, %rdi
	leaq      L_.str49(%rip), %rsi
	call      _keymatch
	testl     %eax, %eax
	je        LBB1_9
	movl      $1, %eax
	movq      %rax, -88(%rbp)
	jmp       LBB1_72
	.align 4, 0x90
LBB1_4:
	testl     %ebx, %ebx
	jg        LBB1_73
	movq      $0, _outfilename(%rip)
LBB1_72:
	incl      %ebx
	cmpl      %r12d, %ebx
	jl        LBB1_3
	jmp       LBB1_73
LBB1_1:
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
LBB1_73:
	cmpl      $0, -100(%rbp)
	movq      -96(%rbp), %r15
	je        LBB1_84
	movl      -44(%rbp), %esi
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      -88(%rbp), %r12
	movl      %r12d, %edx
	call      _jpeg_set_quality
	movq      -128(%rbp), %rsi
	testq     %rsi, %rsi
	je        LBB1_76
	xorl      %eax, %eax
	movq      %r14, %rdi
	movl      -140(%rbp), %edx
	movl      %r12d, %ecx
	call      _read_quant_tables
	testl     %eax, %eax
	je        LBB1_86
LBB1_76:
	movq      -120(%rbp), %rsi
	testq     %rsi, %rsi
	movq      -136(%rbp), %r12
	je        LBB1_78
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _set_quant_slots
	testl     %eax, %eax
	je        LBB1_86
LBB1_78:
	testq     %r12, %r12
	je        LBB1_80
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _set_sample_factors
	testl     %eax, %eax
	je        LBB1_86
LBB1_80:
	movq      -112(%rbp), %rax
	testl     %eax, %eax
	je        LBB1_82
	xorl      %eax, %eax
	movq      %r14, %rdi
	call      _jpeg_simple_progression
LBB1_82:
	testq     %r15, %r15
	je        LBB1_84
	xorl      %eax, %eax
	movq      %r14, %rdi
	movq      %r15, %rsi
	call      _read_scan_script
	testl     %eax, %eax
	je        LBB1_86
LBB1_84:
	movl      %ebx, %eax
	addq      $104, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
LBB1_85:
	movq      ___stderrp@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
	movq      _progname(%rip), %rdx
	leaq      L_.str48(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
	movl      $1, %edi
	call      _exit
LBB1_86:
	call      _usage
LBB1_17:
	call      _usage
LBB1_70:
	call      _usage
	.align 4, 0x90
_usage:
	pushq     %rbp
Ltmp16:
Ltmp17:
	movq      %rsp, %rbp
Ltmp18:
	pushq     %r14
	pushq     %rbx
Ltmp19:
Ltmp20:
	movq      ___stderrp@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rdi
	movq      _progname(%rip), %rdx
	leaq      L_.str76(%rip), %rsi
	xorl      %eax, %eax
	call      _fprintf
	movq      (%rbx), %rcx
	leaq      L_.str77(%rip), %rdi
	movl      $12, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str78(%rip), %rdi
	movl      $37, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str79(%rip), %rdi
	movl      $68, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str80(%rip), %rdi
	movl      $45, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str81(%rip), %rdi
	movl      $77, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str82(%rip), %rdi
	movl      $46, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str83(%rip), %rdi
	movl      $65, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str84(%rip), %rdi
	movl      $29, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rdi
	leaq      L_.str85(%rip), %rsi
	leaq      L_.str86(%rip), %rdx
	xorl      %eax, %eax
	call      _fprintf
	movq      (%rbx), %rdi
	leaq      L_.str87(%rip), %rsi
	leaq      L_.str88(%rip), %r14
	xorl      %eax, %eax
	movq      %r14, %rdx
	call      _fprintf
	movq      (%rbx), %rdi
	leaq      L_.str89(%rip), %rsi
	xorl      %eax, %eax
	movq      %r14, %rdx
	call      _fprintf
	movq      (%rbx), %rcx
	leaq      L_.str90(%rip), %rdi
	movl      $67, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str91(%rip), %rdi
	movl      $62, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str92(%rip), %rdi
	movl      $51, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str93(%rip), %rdi
	movl      $46, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str94(%rip), %rdi
	movl      $43, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str95(%rip), %rdi
	movl      $22, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str96(%rip), %rdi
	movl      $52, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str97(%rip), %rdi
	movl      $55, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str98(%rip), %rdi
	movl      $55, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str99(%rip), %rdi
	movl      $52, %esi
	movl      $1, %edx
	call      _fwrite
	movq      (%rbx), %rcx
	leaq      L_.str100(%rip), %rdi
	movl      $56, %esi
	movl      $1, %edx
	call      _fwrite
	movl      $1, %edi
	call      _exit
# ----------------------
.zerofill __DATA,__bss,_progname,8,3
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"cjpeg"
L_.str1:
	.asciz	"%s: only one input file\n"
L_.str2:
	.asciz	"rb"
L_.str3:
	.asciz	"%s: can't open %s\n"
L_.str4:
	.asciz	"wb"
L_.str5:
	.asciz	"Unsupported BMP colormap format"
L_.str6:
	.asciz	"Only 8- and 24-bit BMP files are supported"
L_.str7:
	.asciz	"Invalid BMP file: bad header length"
L_.str8:
	.asciz	"Invalid BMP file: biPlanes not equal to 1"
L_.str9:
	.asciz	"BMP output must be grayscale or RGB"
L_.str10:
	.asciz	"Sorry, compressed BMPs not yet supported"
L_.str11:
	.asciz	"Not a BMP file - does not start with BM"
L_.str12:
	.asciz	"%ux%u 24-bit BMP image"
L_.str13:
	.asciz	"%ux%u 8-bit colormapped BMP image"
L_.str14:
	.asciz	"%ux%u 24-bit OS2 BMP image"
L_.str15:
	.asciz	"%ux%u 8-bit colormapped OS2 BMP image"
L_.str16:
	.asciz	"GIF output got confused"
L_.str17:
	.asciz	"Bogus GIF codesize %d"
L_.str18:
	.asciz	"GIF output must be grayscale or RGB"
L_.str19:
	.asciz	"Too few images in GIF file"
L_.str20:
	.asciz	"Not a GIF file"
L_.str21:
	.asciz	"%ux%ux%d GIF image"
L_.str22:
	.asciz	"Warning: unexpected GIF version number '%c%c%c'"
L_.str23:
	.asciz	"Ignoring GIF extension block of type 0x%02x"
L_.str24:
	.asciz	"Caution: nonsquare pixels in input"
L_.str25:
	.asciz	"Corrupt data in GIF file"
L_.str26:
	.asciz	"Bogus char 0x%02x in GIF file, ignoring"
L_.str27:
	.asciz	"Premature end of GIF image"
L_.str28:
	.asciz	"Ran out of GIF bits"
L_.str29:
	.asciz	"PPM output must be grayscale or RGB"
L_.str30:
	.asciz	"Nonnumeric data in PPM file"
L_.str31:
	.asciz	"Not a PPM/PGM file"
L_.str32:
	.asciz	"%ux%u PGM image"
L_.str33:
	.asciz	"%ux%u text PGM image"
L_.str34:
	.asciz	"%ux%u PPM image"
L_.str35:
	.asciz	"%ux%u text PPM image"
L_.str36:
	.asciz	"Unsupported Targa colormap format"
L_.str37:
	.asciz	"Invalid or unsupported Targa file"
L_.str38:
	.asciz	"Targa output must be grayscale or RGB"
L_.str39:
	.asciz	"%ux%u RGB Targa image"
L_.str40:
	.asciz	"%ux%u grayscale Targa image"
L_.str41:
	.asciz	"%ux%u colormapped Targa image"
L_.str42:
	.asciz	"Color map file is invalid or of unsupported format"
L_.str43:
	.asciz	"Output file format cannot handle %d colormap entries"
L_.str44:
	.asciz	"ungetc failed"
L_.str45:
	.asciz	"Unrecognized input file format --- perhaps you need -targa"
L_.str46:
	.asciz	"Unsupported output file format"
L_.str47:
	.asciz	"arithmetic"
L_.str48:
	.asciz	"%s: sorry, arithmetic coding not supported\n"
L_.str49:
	.asciz	"baseline"
L_.str50:
	.asciz	"dct"
L_.str51:
	.asciz	"int"
L_.str52:
	.asciz	"fast"
L_.str53:
	.asciz	"float"
L_.str54:
	.asciz	"debug"
L_.str55:
	.asciz	"verbose"
L_.str56:
	.asciz	"Independent JPEG Group's CJPEG, version %s\n%s\n"
L_.str57:
	.asciz	"6b  27-Mar-1998"
L_.str58:
	.asciz	"Copyright (C) 1998, Thomas G. Lane"
L_.str59:
	.asciz	"grayscale"
L_.str60:
	.asciz	"greyscale"
L_.str61:
	.asciz	"maxmemory"
L_.str62:
	.asciz	"%ld%c"
L_.str63:
	.asciz	"optimize"
L_.str64:
	.asciz	"optimise"
L_.str65:
	.asciz	"outfile"
L_.str66:
	.asciz	"progressive"
L_.str67:
	.asciz	"quality"
L_.str68:
	.asciz	"%d"
L_.str69:
	.asciz	"qslots"
L_.str70:
	.asciz	"qtables"
L_.str71:
	.asciz	"restart"
L_.str72:
	.asciz	"sample"
L_.str73:
	.asciz	"scans"
L_.str74:
	.asciz	"smooth"
L_.str75:
	.asciz	"targa"
L_.str76:
	.asciz	"usage: %s [switches] "
L_.str77:
	.asciz	"[inputfile]\n"
L_.str78:
	.asciz	"Switches (names may be abbreviated):\n"
L_.str79:
	.asciz	"  -quality N     Compression quality (0..100; 5-95 is useful range)\n"
L_.str80:
	.asciz	"  -grayscale     Create monochrome JPEG file\n"
L_.str81:
	.asciz	"  -optimize      Optimize Huffman table (smaller file, but slow compression)\n"
L_.str82:
	.asciz	"  -progressive   Create progressive JPEG file\n"
L_.str83:
	.asciz	"  -targa         Input file is Targa format (usually not needed)\n"
L_.str84:
	.asciz	"Switches for advanced users:\n"
L_.str85:
	.asciz	"  -dct int       Use integer DCT method%s\n"
L_.str86:
	.asciz	" (default)"
L_.str87:
	.asciz	"  -dct fast      Use fast integer DCT (less accurate)%s\n"
L_.str88:
	.zero	1
L_.str89:
	.asciz	"  -dct float     Use floating-point DCT method%s\n"
L_.str90:
	.asciz	"  -restart N     Set restart interval in rows, or in blocks with B\n"
L_.str91:
	.asciz	"  -smooth N      Smooth dithered input (N=1..100 is strength)\n"
L_.str92:
	.asciz	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
L_.str93:
	.asciz	"  -outfile name  Specify name for output file\n"
L_.str94:
	.asciz	"  -verbose  or  -debug   Emit debug output\n"
L_.str95:
	.asciz	"Switches for wizards:\n"
L_.str96:
	.asciz	"  -baseline      Force baseline quantization tables\n"
L_.str97:
	.asciz	"  -qtables file  Use quantization tables given in file\n"
L_.str98:
	.asciz	"  -qslots N[,...]    Set component quantization tables\n"
L_.str99:
	.asciz	"  -sample HxV[,...]  Set component sampling factors\n"
L_.str100:
	.asciz	"  -scans file    Create multi-scan JPEG per script file\n"
# ----------------------
	.section       __DATA,__const
	.align 4
_cdjpeg_message_table:
	.quad	0
	.quad	L_.str5
	.quad	L_.str6
	.quad	L_.str7
	.quad	L_.str8
	.quad	L_.str9
	.quad	L_.str10
	.quad	L_.str11
	.quad	L_.str12
	.quad	L_.str13
	.quad	L_.str14
	.quad	L_.str15
	.quad	L_.str16
	.quad	L_.str17
	.quad	L_.str18
	.quad	L_.str19
	.quad	L_.str20
	.quad	L_.str21
	.quad	L_.str22
	.quad	L_.str23
	.quad	L_.str24
	.quad	L_.str25
	.quad	L_.str26
	.quad	L_.str27
	.quad	L_.str28
	.quad	L_.str29
	.quad	L_.str30
	.quad	L_.str31
	.quad	L_.str32
	.quad	L_.str33
	.quad	L_.str34
	.quad	L_.str35
	.quad	L_.str36
	.quad	L_.str37
	.quad	L_.str38
	.quad	L_.str39
	.quad	L_.str40
	.quad	L_.str41
	.quad	L_.str42
	.quad	L_.str43
	.quad	L_.str44
	.quad	L_.str45
	.quad	L_.str46
	.quad	0
# ----------------------
.zerofill __DATA,__bss,_outfilename,8,3
# ----------------------
.zerofill __DATA,__bss,_is_targa,1,0
# ----------------------
.zerofill __DATA,__bss,_parse_switches.printed_version,1,0
# ----------------------

.subsections_via_symbols
