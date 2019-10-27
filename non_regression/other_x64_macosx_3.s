	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$760, %rsp              ## imm = 0x2F8
Ltmp3:
	.cfi_offset %rbx, -56
Ltmp4:
	.cfi_offset %r12, -48
Ltmp5:
	.cfi_offset %r13, -40
Ltmp6:
	.cfi_offset %r14, -32
Ltmp7:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movl	%edi, %r15d
	movq	(%r14), %rax
	movq	%rax, _progname(%rip)
	testq	%rax, %rax
	je	LBB0_2
## BB#1:
	cmpb	$0, (%rax)
	jne	LBB0_3
LBB0_2:
	leaq	L_.str(%rip), %rax
	movq	%rax, _progname(%rip)
LBB0_3:
	leaq	-784(%rbp), %rdi
	xorl	%eax, %eax
	callq	_jpeg_std_error
	movq	%rax, -616(%rbp)
	leaq	-616(%rbp), %rbx
	movl	$62, %esi
	movl	$576, %edx              ## imm = 0x240
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_jpeg_CreateCompress
	leaq	_cdjpeg_message_table(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$1000, -624(%rbp)       ## imm = 0x3E8
	movl	$1043, -620(%rbp)       ## imm = 0x413
	movl	$2, -556(%rbp)
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_jpeg_set_defaults
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	_parse_switches
	leal	-1(%r15), %ecx
	cmpl	%ecx, %eax
	jl	LBB0_38
## BB#4:
	cmpl	%r15d, %eax
	jge	LBB0_8
## BB#5:
	movslq	%eax, %rbx
	movq	(%r14,%rbx,8), %rdi
	leaq	L_.str2(%rip), %rsi
	callq	_fopen
	movq	%rax, %r13
	testq	%r13, %r13
	jne	LBB0_9
## BB#6:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	_progname(%rip), %rdx
	movq	(%r14,%rbx,8), %rcx
	jmp	LBB0_7
LBB0_8:
	xorl	%eax, %eax
	callq	_read_stdin
	movq	%rax, %r13
LBB0_9:
	movq	_outfilename(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB0_12
## BB#10:
	leaq	L_.str4(%rip), %rsi
	callq	_fopen
	movq	%rax, %r12
	testq	%r12, %r12
	jne	LBB0_13
## BB#11:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	_progname(%rip), %rdx
	movq	_outfilename(%rip), %rcx
LBB0_7:
	leaq	L_.str3(%rip), %rsi
	xorl	%eax, %eax
	callq	_fprintf
	movl	$1, %edi
	callq	_exit
LBB0_12:
	xorl	%eax, %eax
	callq	_write_stdout
	movq	%rax, %r12
LBB0_13:
	movzbl	_is_targa(%rip), %eax
	cmpl	$1, %eax
	jne	LBB0_16
## BB#14:
	movq	%r12, -792(%rbp)        ## 8-byte Spill
	jmp	LBB0_15
LBB0_16:
	movq	%r13, %rdi
	callq	_getc
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	jne	LBB0_18
## BB#17:
	movq	-616(%rbp), %rcx
	movl	$42, 40(%rcx)
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	*(%rcx)
LBB0_18:
	movl	%ebx, %edi
	movq	%r13, %rsi
	callq	_ungetc
	cmpl	$-1, %eax
	jne	LBB0_20
## BB#19:
	movq	-616(%rbp), %rcx
	movl	$1040, 40(%rcx)         ## imm = 0x410
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	*(%rcx)
LBB0_20:
	cmpl	$70, %ebx
	jg	LBB0_24
## BB#21:
	movq	%r12, -792(%rbp)        ## 8-byte Spill
	testl	%ebx, %ebx
	jne	LBB0_22
LBB0_15:
	movq	%r14, %r12
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	_jinit_read_targa
	movq	%rax, %rbx
	jmp	LBB0_28
LBB0_24:
	movq	%r12, -792(%rbp)        ## 8-byte Spill
	movq	%r14, %r12
	cmpl	$71, %ebx
	jne	LBB0_25
## BB#39:
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	_jinit_read_gif
	movq	%rax, %rbx
	jmp	LBB0_28
LBB0_22:
	movq	%r14, %r12
	cmpl	$66, %ebx
	jne	LBB0_27
## BB#23:
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	_jinit_read_bmp
	movq	%rax, %rbx
	jmp	LBB0_28
LBB0_25:
	cmpl	$80, %ebx
	jne	LBB0_27
## BB#26:
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	_jinit_read_ppm
	movq	%rax, %rbx
	jmp	LBB0_28
LBB0_27:
	movq	-616(%rbp), %rcx
	movl	$1041, 40(%rcx)         ## imm = 0x411
	xorl	%ebx, %ebx
	leaq	-616(%rbp), %rdi
	xorl	%eax, %eax
	callq	*(%rcx)
LBB0_28:                                ## %select_file_type.exit
	movq	%r13, 24(%rbx)
	leaq	-616(%rbp), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*(%rbx)
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_jpeg_default_colorspace
	movl	$1, %ecx
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	callq	_parse_switches
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	-792(%rbp), %r15        ## 8-byte Reload
	movq	%r15, %rsi
	callq	_jpeg_stdio_dest
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_jpeg_start_compress
	movl	-256(%rbp), %eax
	cmpl	-564(%rbp), %eax
	jae	LBB0_31
## BB#29:                               ## %.lr.ph
	leaq	-616(%rbp), %r14
	.align	4, 0x90
LBB0_30:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*8(%rbx)
	movl	%eax, %ecx
	movq	32(%rbx), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ecx, %edx
	callq	_jpeg_write_scanlines
	movl	-256(%rbp), %eax
	cmpl	-564(%rbp), %eax
	jb	LBB0_30
LBB0_31:                                ## %._crit_edge
	leaq	-616(%rbp), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_jpeg_finish_compress
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_jpeg_destroy_compress
	movq	___stdinp@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r13
	je	LBB0_33
## BB#32:
	movq	%r13, %rdi
	callq	_fclose
LBB0_33:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	je	LBB0_35
## BB#34:
	movq	%r15, %rdi
	callq	_fclose
LBB0_35:
	movl	$2, %edi
	cmpq	$0, -656(%rbp)
	jne	LBB0_37
## BB#36:                               ## %select.mid
	xorl	%edi, %edi
LBB0_37:                                ## %select.end
	callq	_exit
LBB0_38:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	_progname(%rip), %rdx
	leaq	L_.str1(%rip), %rsi
	xorl	%eax, %eax
	callq	_fprintf
	callq	_usage
	.cfi_endproc

	.align	4, 0x90
_parse_switches:                        ## @parse_switches
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp8:
	.cfi_def_cfa_offset 16
Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp11:
	.cfi_offset %rbx, -56
Ltmp12:
	.cfi_offset %r12, -48
Ltmp13:
	.cfi_offset %r13, -40
Ltmp14:
	.cfi_offset %r14, -32
Ltmp15:
	.cfi_offset %r15, -24
	movl	%ecx, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %r13
	movl	%esi, %r12d
	movq	%rdi, %r14
	movl	$75, -44(%rbp)
	movb	$0, _is_targa(%rip)
	movq	$0, _outfilename(%rip)
	movq	(%r14), %rax
	movl	$0, 124(%rax)
	cmpl	$2, %r12d
	jl	LBB1_1
## BB#2:                                ## %.lr.ph
	movl	$1, %ebx
	movl	$100, -140(%rbp)        ## 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	jmp	LBB1_3
LBB1_9:                                 ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str50(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_18
## BB#10:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#11:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %r15
	movq	(%r13,%r15,8), %rdi
	movl	$1, %edx
	xorl	%eax, %eax
	leaq	L_.str51(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_13
## BB#12:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$0, 324(%r14)
	jmp	LBB1_72
LBB1_18:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str54(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	jne	LBB1_20
## BB#19:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str55(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_23
LBB1_20:                                ##   in Loop: Header=BB1_3 Depth=1
	movb	_parse_switches.printed_version(%rip), %al
	testb	%al, %al
	jne	LBB1_22
## BB#21:                               ##   in Loop: Header=BB1_3 Depth=1
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	leaq	L_.str56(%rip), %rsi
	leaq	L_.str57(%rip), %rdx
	leaq	L_.str58(%rip), %rcx
	callq	_fprintf
	movb	$1, _parse_switches.printed_version(%rip)
LBB1_22:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	(%r14), %rax
	incl	124(%rax)
	jmp	LBB1_72
LBB1_13:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	(%r13,%r15,8), %rdi
	movl	$2, %edx
	xorl	%eax, %eax
	leaq	L_.str52(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_15
## BB#14:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, 324(%r14)
	jmp	LBB1_72
LBB1_15:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	(%r13,%r15,8), %rdi
	movl	$2, %edx
	xorl	%eax, %eax
	leaq	L_.str53(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_17
## BB#16:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, 324(%r14)
	jmp	LBB1_72
LBB1_23:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str59(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	jne	LBB1_25
## BB#24:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str60(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_26
LBB1_25:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_jpeg_set_colorspace
	jmp	LBB1_72
LBB1_26:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$3, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str61(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_33
## BB#27:                               ##   in Loop: Header=BB1_3 Depth=1
	movb	$120, -57(%rbp)
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#28:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	leaq	L_.str62(%rip), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-57(%rbp), %rcx
	callq	_sscanf
	testl	%eax, %eax
	jle	LBB1_86
## BB#29:                               ##   in Loop: Header=BB1_3 Depth=1
	movb	-57(%rbp), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$109, %eax
	jne	LBB1_30
## BB#31:                               ##   in Loop: Header=BB1_3 Depth=1
	imulq	$1000, -56(%rbp), %rax  ## imm = 0x3E8
	movq	%rax, -56(%rbp)
	jmp	LBB1_32
LBB1_33:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str63(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	jne	LBB1_35
## BB#34:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str64(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_36
LBB1_35:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, 312(%r14)
	jmp	LBB1_72
LBB1_30:                                ## %._crit_edge337
                                        ##   in Loop: Header=BB1_3 Depth=1
	movq	-56(%rbp), %rax
LBB1_32:                                ##   in Loop: Header=BB1_3 Depth=1
	imulq	$1000, %rax, %rax       ## imm = 0x3E8
	movq	8(%r14), %rcx
	movq	%rax, 88(%rcx)
	jmp	LBB1_72
LBB1_36:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$4, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str65(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_39
## BB#37:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#38:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, _outfilename(%rip)
	jmp	LBB1_72
LBB1_39:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str66(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_41
## BB#40:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %eax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	jmp	LBB1_72
LBB1_41:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str67(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_45
## BB#42:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#43:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	leaq	L_.str68(%rip), %rsi
	leaq	-44(%rbp), %rdx
	callq	_sscanf
	cmpl	$1, %eax
	jne	LBB1_86
## BB#44:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	-44(%rbp), %edi
	xorl	%eax, %eax
	callq	_jpeg_quality_scaling
	movl	%eax, -140(%rbp)        ## 4-byte Spill
	jmp	LBB1_72
LBB1_45:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str69(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_48
## BB#46:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#47:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	jmp	LBB1_72
LBB1_48:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str70(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_51
## BB#49:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#50:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	jmp	LBB1_72
LBB1_51:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str71(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_57
## BB#52:                               ##   in Loop: Header=BB1_3 Depth=1
	movb	$120, -73(%rbp)
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#53:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	leaq	L_.str62(%rip), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-73(%rbp), %rcx
	callq	_sscanf
	testl	%eax, %eax
	jle	LBB1_86
## BB#54:                               ##   in Loop: Header=BB1_3 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$65536, %rax            ## imm = 0x10000
	jae	LBB1_86
## BB#55:                               ##   in Loop: Header=BB1_3 Depth=1
	movb	-73(%rbp), %cl
	orb	$32, %cl
	movzbl	%cl, %ecx
	cmpl	$98, %ecx
	jne	LBB1_71
## BB#56:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	%eax, 328(%r14)
	movl	$0, 332(%r14)
	jmp	LBB1_72
LBB1_57:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str72(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_60
## BB#58:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#59:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	jmp	LBB1_72
LBB1_71:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	%eax, 332(%r14)
	jmp	LBB1_72
LBB1_60:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str73(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_63
## BB#61:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#62:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB1_72
LBB1_63:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str74(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_68
## BB#64:                               ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jge	LBB1_86
## BB#65:                               ##   in Loop: Header=BB1_3 Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	leaq	L_.str68(%rip), %rsi
	leaq	-80(%rbp), %rdx
	callq	_sscanf
	cmpl	$1, %eax
	jne	LBB1_86
## BB#66:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	-80(%rbp), %eax
	cmpl	$101, %eax
	jae	LBB1_86
## BB#67:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	%eax, 320(%r14)
	jmp	LBB1_72
LBB1_68:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str75(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_70
## BB#69:                               ##   in Loop: Header=BB1_3 Depth=1
	movb	$1, _is_targa(%rip)
	jmp	LBB1_72
	.align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	movq	(%r13,%rax,8), %r15
	movzbl	(%r15), %eax
	cmpl	$45, %eax
	jne	LBB1_4
## BB#6:                                ##   in Loop: Header=BB1_3 Depth=1
	incq	%r15
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str47(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	jne	LBB1_85
## BB#7:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	L_.str49(%rip), %rsi
	callq	_keymatch
	testl	%eax, %eax
	je	LBB1_9
## BB#8:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	$1, %eax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	jmp	LBB1_72
	.align	4, 0x90
LBB1_4:                                 ##   in Loop: Header=BB1_3 Depth=1
	testl	%ebx, %ebx
	jg	LBB1_73
## BB#5:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	$0, _outfilename(%rip)
LBB1_72:                                ##   in Loop: Header=BB1_3 Depth=1
	incl	%ebx
	cmpl	%r12d, %ebx
	jl	LBB1_3
	jmp	LBB1_73
LBB1_1:
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movl	$1, %ebx
	movl	$100, -140(%rbp)        ## 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
LBB1_73:                                ## %._crit_edge
	cmpl	$0, -100(%rbp)          ## 4-byte Folded Reload
	movq	-96(%rbp), %r15         ## 8-byte Reload
	je	LBB1_84
## BB#74:
	movl	-44(%rbp), %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	-88(%rbp), %r12         ## 8-byte Reload
	movl	%r12d, %edx
	callq	_jpeg_set_quality
	movq	-128(%rbp), %rsi        ## 8-byte Reload
	testq	%rsi, %rsi
	je	LBB1_76
## BB#75:
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	-140(%rbp), %edx        ## 4-byte Reload
	movl	%r12d, %ecx
	callq	_read_quant_tables
	testl	%eax, %eax
	je	LBB1_86
LBB1_76:
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	testq	%rsi, %rsi
	movq	-136(%rbp), %r12        ## 8-byte Reload
	je	LBB1_78
## BB#77:
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_set_quant_slots
	testl	%eax, %eax
	je	LBB1_86
LBB1_78:
	testq	%r12, %r12
	je	LBB1_80
## BB#79:
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_set_sample_factors
	testl	%eax, %eax
	je	LBB1_86
LBB1_80:
	movq	-112(%rbp), %rax        ## 8-byte Reload
	testl	%eax, %eax
	je	LBB1_82
## BB#81:
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_jpeg_simple_progression
LBB1_82:
	testq	%r15, %r15
	je	LBB1_84
## BB#83:
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_read_scan_script
	testl	%eax, %eax
	je	LBB1_86
LBB1_84:
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_85:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	_progname(%rip), %rdx
	leaq	L_.str48(%rip), %rsi
	xorl	%eax, %eax
	callq	_fprintf
	movl	$1, %edi
	callq	_exit
LBB1_86:
	callq	_usage
LBB1_17:
	callq	_usage
LBB1_70:
	callq	_usage
	.cfi_endproc

	.align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp16:
	.cfi_def_cfa_offset 16
Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp19:
	.cfi_offset %rbx, -32
Ltmp20:
	.cfi_offset %r14, -24
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	movq	_progname(%rip), %rdx
	leaq	L_.str76(%rip), %rsi
	xorl	%eax, %eax
	callq	_fprintf
	movq	(%rbx), %rcx
	leaq	L_.str77(%rip), %rdi
	movl	$12, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str78(%rip), %rdi
	movl	$37, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str79(%rip), %rdi
	movl	$68, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str80(%rip), %rdi
	movl	$45, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str81(%rip), %rdi
	movl	$77, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str82(%rip), %rdi
	movl	$46, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str83(%rip), %rdi
	movl	$65, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str84(%rip), %rdi
	movl	$29, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rdi
	leaq	L_.str85(%rip), %rsi
	leaq	L_.str86(%rip), %rdx
	xorl	%eax, %eax
	callq	_fprintf
	movq	(%rbx), %rdi
	leaq	L_.str87(%rip), %rsi
	leaq	L_.str88(%rip), %r14
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	_fprintf
	movq	(%rbx), %rdi
	leaq	L_.str89(%rip), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	_fprintf
	movq	(%rbx), %rcx
	leaq	L_.str90(%rip), %rdi
	movl	$67, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str91(%rip), %rdi
	movl	$62, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str92(%rip), %rdi
	movl	$51, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str93(%rip), %rdi
	movl	$46, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str94(%rip), %rdi
	movl	$43, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str95(%rip), %rdi
	movl	$22, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str96(%rip), %rdi
	movl	$52, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str97(%rip), %rdi
	movl	$55, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str98(%rip), %rdi
	movl	$55, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str99(%rip), %rdi
	movl	$52, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%rbx), %rcx
	leaq	L_.str100(%rip), %rdi
	movl	$56, %esi
	movl	$1, %edx
	callq	_fwrite
	movl	$1, %edi
	callq	_exit
	.cfi_endproc

.zerofill __DATA,__bss,_progname,8,3    ## @progname
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"cjpeg"

	.section	__DATA,__const
	.align	4                       ## @cdjpeg_message_table
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

	.section	__TEXT,__cstring,cstring_literals
L_.str1:                                ## @.str1
	.asciz	"%s: only one input file\n"

L_.str2:                                ## @.str2
	.asciz	"rb"

L_.str3:                                ## @.str3
	.asciz	"%s: can't open %s\n"

.zerofill __DATA,__bss,_outfilename,8,3 ## @outfilename
L_.str4:                                ## @.str4
	.asciz	"wb"

L_.str5:                                ## @.str5
	.asciz	"Unsupported BMP colormap format"

L_.str6:                                ## @.str6
	.asciz	"Only 8- and 24-bit BMP files are supported"

L_.str7:                                ## @.str7
	.asciz	"Invalid BMP file: bad header length"

L_.str8:                                ## @.str8
	.asciz	"Invalid BMP file: biPlanes not equal to 1"

L_.str9:                                ## @.str9
	.asciz	"BMP output must be grayscale or RGB"

L_.str10:                               ## @.str10
	.asciz	"Sorry, compressed BMPs not yet supported"

L_.str11:                               ## @.str11
	.asciz	"Not a BMP file - does not start with BM"

L_.str12:                               ## @.str12
	.asciz	"%ux%u 24-bit BMP image"

L_.str13:                               ## @.str13
	.asciz	"%ux%u 8-bit colormapped BMP image"

L_.str14:                               ## @.str14
	.asciz	"%ux%u 24-bit OS2 BMP image"

L_.str15:                               ## @.str15
	.asciz	"%ux%u 8-bit colormapped OS2 BMP image"

L_.str16:                               ## @.str16
	.asciz	"GIF output got confused"

L_.str17:                               ## @.str17
	.asciz	"Bogus GIF codesize %d"

L_.str18:                               ## @.str18
	.asciz	"GIF output must be grayscale or RGB"

L_.str19:                               ## @.str19
	.asciz	"Too few images in GIF file"

L_.str20:                               ## @.str20
	.asciz	"Not a GIF file"

L_.str21:                               ## @.str21
	.asciz	"%ux%ux%d GIF image"

L_.str22:                               ## @.str22
	.asciz	"Warning: unexpected GIF version number '%c%c%c'"

L_.str23:                               ## @.str23
	.asciz	"Ignoring GIF extension block of type 0x%02x"

L_.str24:                               ## @.str24
	.asciz	"Caution: nonsquare pixels in input"

L_.str25:                               ## @.str25
	.asciz	"Corrupt data in GIF file"

L_.str26:                               ## @.str26
	.asciz	"Bogus char 0x%02x in GIF file, ignoring"

L_.str27:                               ## @.str27
	.asciz	"Premature end of GIF image"

L_.str28:                               ## @.str28
	.asciz	"Ran out of GIF bits"

L_.str29:                               ## @.str29
	.asciz	"PPM output must be grayscale or RGB"

L_.str30:                               ## @.str30
	.asciz	"Nonnumeric data in PPM file"

L_.str31:                               ## @.str31
	.asciz	"Not a PPM/PGM file"

L_.str32:                               ## @.str32
	.asciz	"%ux%u PGM image"

L_.str33:                               ## @.str33
	.asciz	"%ux%u text PGM image"

L_.str34:                               ## @.str34
	.asciz	"%ux%u PPM image"

L_.str35:                               ## @.str35
	.asciz	"%ux%u text PPM image"

L_.str36:                               ## @.str36
	.asciz	"Unsupported Targa colormap format"

L_.str37:                               ## @.str37
	.asciz	"Invalid or unsupported Targa file"

L_.str38:                               ## @.str38
	.asciz	"Targa output must be grayscale or RGB"

L_.str39:                               ## @.str39
	.asciz	"%ux%u RGB Targa image"

L_.str40:                               ## @.str40
	.asciz	"%ux%u grayscale Targa image"

L_.str41:                               ## @.str41
	.asciz	"%ux%u colormapped Targa image"

L_.str42:                               ## @.str42
	.asciz	"Color map file is invalid or of unsupported format"

L_.str43:                               ## @.str43
	.asciz	"Output file format cannot handle %d colormap entries"

L_.str44:                               ## @.str44
	.asciz	"ungetc failed"

L_.str45:                               ## @.str45
	.asciz	"Unrecognized input file format --- perhaps you need -targa"

L_.str46:                               ## @.str46
	.asciz	"Unsupported output file format"

.zerofill __DATA,__bss,_is_targa,1,0    ## @is_targa
L_.str47:                               ## @.str47
	.asciz	"arithmetic"

L_.str48:                               ## @.str48
	.asciz	"%s: sorry, arithmetic coding not supported\n"

L_.str49:                               ## @.str49
	.asciz	"baseline"

L_.str50:                               ## @.str50
	.asciz	"dct"

L_.str51:                               ## @.str51
	.asciz	"int"

L_.str52:                               ## @.str52
	.asciz	"fast"

L_.str53:                               ## @.str53
	.asciz	"float"

L_.str54:                               ## @.str54
	.asciz	"debug"

L_.str55:                               ## @.str55
	.asciz	"verbose"

.zerofill __DATA,__bss,_parse_switches.printed_version,1,0 ## @parse_switches.printed_version
L_.str56:                               ## @.str56
	.asciz	"Independent JPEG Group's CJPEG, version %s\n%s\n"

L_.str57:                               ## @.str57
	.asciz	"6b  27-Mar-1998"

L_.str58:                               ## @.str58
	.asciz	"Copyright (C) 1998, Thomas G. Lane"

L_.str59:                               ## @.str59
	.asciz	"grayscale"

L_.str60:                               ## @.str60
	.asciz	"greyscale"

L_.str61:                               ## @.str61
	.asciz	"maxmemory"

L_.str62:                               ## @.str62
	.asciz	"%ld%c"

L_.str63:                               ## @.str63
	.asciz	"optimize"

L_.str64:                               ## @.str64
	.asciz	"optimise"

L_.str65:                               ## @.str65
	.asciz	"outfile"

L_.str66:                               ## @.str66
	.asciz	"progressive"

L_.str67:                               ## @.str67
	.asciz	"quality"

L_.str68:                               ## @.str68
	.asciz	"%d"

L_.str69:                               ## @.str69
	.asciz	"qslots"

L_.str70:                               ## @.str70
	.asciz	"qtables"

L_.str71:                               ## @.str71
	.asciz	"restart"

L_.str72:                               ## @.str72
	.asciz	"sample"

L_.str73:                               ## @.str73
	.asciz	"scans"

L_.str74:                               ## @.str74
	.asciz	"smooth"

L_.str75:                               ## @.str75
	.asciz	"targa"

L_.str76:                               ## @.str76
	.asciz	"usage: %s [switches] "

L_.str77:                               ## @.str77
	.asciz	"[inputfile]\n"

L_.str78:                               ## @.str78
	.asciz	"Switches (names may be abbreviated):\n"

L_.str79:                               ## @.str79
	.asciz	"  -quality N     Compression quality (0..100; 5-95 is useful range)\n"

L_.str80:                               ## @.str80
	.asciz	"  -grayscale     Create monochrome JPEG file\n"

L_.str81:                               ## @.str81
	.asciz	"  -optimize      Optimize Huffman table (smaller file, but slow compression)\n"

L_.str82:                               ## @.str82
	.asciz	"  -progressive   Create progressive JPEG file\n"

L_.str83:                               ## @.str83
	.asciz	"  -targa         Input file is Targa format (usually not needed)\n"

L_.str84:                               ## @.str84
	.asciz	"Switches for advanced users:\n"

L_.str85:                               ## @.str85
	.asciz	"  -dct int       Use integer DCT method%s\n"

L_.str86:                               ## @.str86
	.asciz	" (default)"

L_.str87:                               ## @.str87
	.asciz	"  -dct fast      Use fast integer DCT (less accurate)%s\n"

L_.str88:                               ## @.str88
	.space	1

L_.str89:                               ## @.str89
	.asciz	"  -dct float     Use floating-point DCT method%s\n"

L_.str90:                               ## @.str90
	.asciz	"  -restart N     Set restart interval in rows, or in blocks with B\n"

L_.str91:                               ## @.str91
	.asciz	"  -smooth N      Smooth dithered input (N=1..100 is strength)\n"

L_.str92:                               ## @.str92
	.asciz	"  -maxmemory N   Maximum memory to use (in kbytes)\n"

L_.str93:                               ## @.str93
	.asciz	"  -outfile name  Specify name for output file\n"

L_.str94:                               ## @.str94
	.asciz	"  -verbose  or  -debug   Emit debug output\n"

L_.str95:                               ## @.str95
	.asciz	"Switches for wizards:\n"

L_.str96:                               ## @.str96
	.asciz	"  -baseline      Force baseline quantization tables\n"

L_.str97:                               ## @.str97
	.asciz	"  -qtables file  Use quantization tables given in file\n"

L_.str98:                               ## @.str98
	.asciz	"  -qslots N[,...]    Set component quantization tables\n"

L_.str99:                               ## @.str99
	.asciz	"  -sample HxV[,...]  Set component sampling factors\n"

L_.str100:                              ## @.str100
	.asciz	"  -scans file    Create multi-scan JPEG per script file\n"


.subsections_via_symbols
