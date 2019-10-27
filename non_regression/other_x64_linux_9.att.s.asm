	.file	"djpeg.c"
	.text
	.p2align 4,,15
# ----------------------
	.local	jpeg_getc
	.type	jpeg_getc, @function
jpeg_getc:
	.cfi_startproc
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      40(%rdi), %rbx
	movq      8(%rbx), %rax
	testq     %rax, %rax
	je        .L8
.L2:
	subq      $1, %rax
	movq      %rax, 8(%rbx)
	movq      (%rbx), %rax
	leaq      1(%rax), %rdx
	movq      %rdx, (%rbx)
	movzbl    (%rax), %eax
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L8:
	call      *24(%rbx)
	testl     %eax, %eax
	jne       .L6
	movq      (%rbp), %rdx
	movq      %rbp, %rdi
	xorl      %eax, %eax
	movl      $24, 40(%rdx)
	call      *(%rdx)
.L6:
	movq      8(%rbx), %rax
	jmp       .L2
	.cfi_endproc
	.size	jpeg_getc, .-jpeg_getc
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"usage: %s [switches] "
.LC1:
	.string	"[inputfile]\n"
.LC7:
	.string	""
.LC11:
	.string	" (default)"
.LC14:
	.string	"Switches for advanced users:\n"
.LC27:
	.string	"Comment, length %ld:\n"
.LC28:
	.string	"APP%d, length %ld:\n"
.LC29:
	.string	"\\\\"
.LC30:
	.string	"\\%03o"
.LC31:
	.string	"bmp"
.LC32:
	.string	"colors"
.LC33:
	.string	"colours"
.LC34:
	.string	"quantize"
.LC35:
	.string	"quantise"
.LC36:
	.string	"%d"
.LC37:
	.string	"dct"
.LC38:
	.string	"int"
.LC39:
	.string	"fast"
.LC40:
	.string	"float"
.LC41:
	.string	"dither"
.LC42:
	.string	"fs"
.LC43:
	.string	"none"
.LC44:
	.string	"ordered"
.LC45:
	.string	"debug"
.LC46:
	.string	"verbose"
.LC48:
	.string	"6b  27-Mar-1998"
.LC50:
	.string	"gif"
.LC51:
	.string	"grayscale"
.LC52:
	.string	"greyscale"
.LC53:
	.string	"map"
.LC54:
	.string	"rb"
.LC55:
	.string	"%s: can't open %s\n"
.LC56:
	.string	"maxmemory"
.LC57:
	.string	"%ld%c"
.LC58:
	.string	"nosmooth"
.LC59:
	.string	"onepass"
.LC60:
	.string	"os2"
.LC61:
	.string	"outfile"
.LC62:
	.string	"pnm"
.LC63:
	.string	"ppm"
.LC64:
	.string	"rle"
.LC65:
	.string	"scale"
.LC66:
	.string	"%d/%d"
.LC67:
	.string	"targa"
.LC68:
	.string	"djpeg"
.LC69:
	.string	"%s: only one input file\n"
.LC70:
	.string	"wb"
.LC78:
	.string	"%ux%u 24-bit BMP image"
.LC80:
	.string	"%ux%u 24-bit OS2 BMP image"
.LC82:
	.string	"GIF output got confused"
.LC83:
	.string	"Bogus GIF codesize %d"
.LC85:
	.string	"Too few images in GIF file"
.LC86:
	.string	"Not a GIF file"
.LC87:
	.string	"%ux%ux%d GIF image"
.LC91:
	.string	"Corrupt data in GIF file"
.LC93:
	.string	"Premature end of GIF image"
.LC94:
	.string	"Ran out of GIF bits"
.LC96:
	.string	"Nonnumeric data in PPM file"
.LC97:
	.string	"Not a PPM/PGM file"
.LC98:
	.string	"%ux%u PGM image"
.LC99:
	.string	"%ux%u text PGM image"
.LC100:
	.string	"%ux%u PPM image"
.LC101:
	.string	"%ux%u text PPM image"
.LC105:
	.string	"%ux%u RGB Targa image"
.LC106:
	.string	"%ux%u grayscale Targa image"
.LC107:
	.string	"%ux%u colormapped Targa image"
.LC110:
	.string	"ungetc failed"
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Switches (names may be abbreviated):\n"
	.align 8
.LC3:
	.string	"  -colors N      Reduce image to no more than N colors\n"
	.align 8
.LC4:
	.string	"  -fast          Fast, low-quality processing\n"
	.align 8
.LC5:
	.string	"  -grayscale     Force grayscale output\n"
	.align 8
.LC6:
	.string	"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\n"
	.align 8
.LC8:
	.string	"  -bmp           Select BMP output format (Windows style)%s\n"
	.align 8
.LC9:
	.string	"  -gif           Select GIF output format%s\n"
	.align 8
.LC10:
	.string	"  -os2           Select BMP output format (OS/2 style)%s\n"
	.align 8
.LC12:
	.string	"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\n"
	.align 8
.LC13:
	.string	"  -targa         Select Targa output format%s\n"
	.align 8
.LC15:
	.string	"  -dct int       Use integer DCT method%s\n"
	.align 8
.LC16:
	.string	"  -dct fast      Use fast integer DCT (less accurate)%s\n"
	.align 8
.LC17:
	.string	"  -dct float     Use floating-point DCT method%s\n"
	.align 8
.LC18:
	.string	"  -dither fs     Use F-S dithering (default)\n"
	.align 8
.LC19:
	.string	"  -dither none   Don't use dithering in quantization\n"
	.align 8
.LC20:
	.string	"  -dither ordered  Use ordered dither (medium speed, quality)\n"
	.align 8
.LC21:
	.string	"  -map FILE      Map to colors used in named image file\n"
	.align 8
.LC22:
	.string	"  -nosmooth      Don't use high-quality upsampling\n"
	.align 8
.LC23:
	.string	"  -onepass       Use 1-pass quantization (fast, low quality)\n"
	.align 8
.LC24:
	.string	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
	.align 8
.LC25:
	.string	"  -outfile name  Specify name for output file\n"
	.align 8
.LC26:
	.string	"  -verbose  or  -debug   Emit debug output\n"
	.align 8
.LC47:
	.string	"Copyright (C) 1998, Thomas G. Lane"
	.align 8
.LC49:
	.string	"Independent JPEG Group's DJPEG, version %s\n%s\n"
	.align 8
.LC71:
	.string	"Unsupported BMP colormap format"
	.align 8
.LC72:
	.string	"Only 8- and 24-bit BMP files are supported"
	.align 8
.LC73:
	.string	"Invalid BMP file: bad header length"
	.align 8
.LC74:
	.string	"Invalid BMP file: biPlanes not equal to 1"
	.align 8
.LC75:
	.string	"BMP output must be grayscale or RGB"
	.align 8
.LC76:
	.string	"Sorry, compressed BMPs not yet supported"
	.align 8
.LC77:
	.string	"Not a BMP file - does not start with BM"
	.align 8
.LC79:
	.string	"%ux%u 8-bit colormapped BMP image"
	.align 8
.LC81:
	.string	"%ux%u 8-bit colormapped OS2 BMP image"
	.align 8
.LC84:
	.string	"GIF output must be grayscale or RGB"
	.align 8
.LC88:
	.string	"Warning: unexpected GIF version number '%c%c%c'"
	.align 8
.LC89:
	.string	"Ignoring GIF extension block of type 0x%02x"
	.align 8
.LC90:
	.string	"Caution: nonsquare pixels in input"
	.align 8
.LC92:
	.string	"Bogus char 0x%02x in GIF file, ignoring"
	.align 8
.LC95:
	.string	"PPM output must be grayscale or RGB"
	.align 8
.LC102:
	.string	"Unsupported Targa colormap format"
	.align 8
.LC103:
	.string	"Invalid or unsupported Targa file"
	.align 8
.LC104:
	.string	"Targa output must be grayscale or RGB"
	.align 8
.LC108:
	.string	"Color map file is invalid or of unsupported format"
	.align 8
.LC109:
	.string	"Output file format cannot handle %d colormap entries"
	.align 8
.LC111:
	.string	"Unrecognized input file format --- perhaps you need -targa"
	.align 8
.LC112:
	.string	"Unsupported output file format"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	usage
	.type	usage, @function
usage:
	.cfi_startproc
	subq      $8, %rsp
	movq      progname(%rip), %rcx
	movq      stderr(%rip), %rdi
	movl      $.LC0, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rcx
	movl      $12, %edx
	movl      $1, %esi
	movl      $.LC1, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $37, %edx
	movl      $1, %esi
	movl      $.LC2, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $55, %edx
	movl      $1, %esi
	movl      $.LC3, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $46, %edx
	movl      $1, %esi
	movl      $.LC4, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $40, %edx
	movl      $1, %esi
	movl      $.LC5, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $61, %edx
	movl      $1, %esi
	movl      $.LC6, %edi
	call      fwrite
	movq      stderr(%rip), %rdi
	movl      $.LC7, %ecx
	movl      $.LC8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rdi
	movl      $.LC7, %ecx
	movl      $.LC9, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rdi
	movl      $.LC7, %ecx
	movl      $.LC10, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rdi
	movl      $.LC11, %ecx
	movl      $.LC12, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rdi
	movl      $.LC7, %ecx
	movl      $.LC13, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rcx
	movl      $29, %edx
	movl      $1, %esi
	movl      $.LC14, %edi
	call      fwrite
	movq      stderr(%rip), %rdi
	movl      $.LC11, %ecx
	movl      $.LC15, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rdi
	movl      $.LC7, %ecx
	movl      $.LC16, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rdi
	movl      $.LC7, %ecx
	movl      $.LC17, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movq      stderr(%rip), %rcx
	movl      $45, %edx
	movl      $1, %esi
	movl      $.LC18, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $53, %edx
	movl      $1, %esi
	movl      $.LC19, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $62, %edx
	movl      $1, %esi
	movl      $.LC20, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $56, %edx
	movl      $1, %esi
	movl      $.LC21, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $51, %edx
	movl      $1, %esi
	movl      $.LC22, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $61, %edx
	movl      $1, %esi
	movl      $.LC23, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $51, %edx
	movl      $1, %esi
	movl      $.LC24, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $46, %edx
	movl      $1, %esi
	movl      $.LC25, %edi
	call      fwrite
	movq      stderr(%rip), %rcx
	movl      $.LC26, %edi
	movl      $43, %edx
	movl      $1, %esi
	call      fwrite
	movl      $1, %edi
	call      exit
	.cfi_endproc
	.size	usage, .-usage
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	print_text_marker
	.type	print_text_marker, @function
print_text_marker:
	.cfi_startproc
	pushq     %r14
	pushq     %r13
	xorl      %r13d, %r13d
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      (%rdi), %rax
	movl      124(%rax), %eax
	testl     %eax, %eax
	setg      %r13b
	call      jpeg_getc
	movq      %r12, %rdi
	sall      $8, %eax
	movl      %eax, %ebx
	call      jpeg_getc
	testl     %r13d, %r13d
	movl      %eax, %eax
	leaq      -2(%rbx,%rax), %rbx
	je        .L12
	movl      596(%r12), %ecx
	cmpl      $254, %ecx
	je        .L33
	movq      stderr(%rip), %rdi
	subl      $224, %ecx
	movq      %rbx, %r8
	movl      $.LC28, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L12:
	xorl      %r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L14:
	subq      $1, %rbx
	js        .L34
.L20:
	movq      %r12, %rdi
	call      jpeg_getc
	testl     %r13d, %r13d
	movl      %eax, %ebp
	je        .L14
	cmpl      $13, %eax
	je        .L35
	cmpl      $10, %eax
	je        .L36
	cmpl      $92, %eax
	.p2align 4,,2
	je        .L37
	.p2align 4,,5
	call      __ctype_b_loc
	movq      (%rax), %rax
	movslq    %ebp, %rdx
	testb     $64, 1(%rax,%rdx,2)
	je        .L19
	movq      stderr(%rip), %rsi
	movl      %ebp, %edi
	movl      %ebp, %r14d
	call      _IO_putc
	subq      $1, %rbx
	jns       .L20
	.p2align 4,,10
	.p2align 3
.L34:
	testl     %r13d, %r13d
	je        .L21
	movq      stderr(%rip), %rsi
	movl      $10, %edi
	call      fputc
.L21:
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	movl      $1, %eax
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L19:
	movq      stderr(%rip), %rdi
	movl      %ebp, %ecx
	movl      $.LC30, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	movl      %ebp, %r14d
	call      __fprintf_chk
	jmp       .L14
	.p2align 4,,10
	.p2align 3
.L36:
	cmpl      $13, %r14d
	je        .L22
	movq      stderr(%rip), %rsi
	movl      $10, %edi
	movl      $10, %r14d
	call      fputc
	jmp       .L14
	.p2align 4,,10
	.p2align 3
.L35:
	movq      stderr(%rip), %rsi
	movl      $10, %edi
	movl      $13, %r14d
	call      fputc
	jmp       .L14
	.p2align 4,,10
	.p2align 3
.L22:
	movl      $10, %r14d
	jmp       .L14
	.p2align 4,,10
	.p2align 3
.L37:
	movq      stderr(%rip), %rcx
	movl      $2, %edx
	movl      $1, %esi
	movl      $.LC29, %edi
	movl      $92, %r14d
	call      fwrite
	jmp       .L14
	.p2align 4,,10
	.p2align 3
.L33:
	movq      stderr(%rip), %rdi
	movq      %rbx, %rcx
	movl      $.LC27, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	jmp       .L12
	.cfi_endproc
	.size	print_text_marker, .-print_text_marker
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	parse_switches.constprop.0
	.type	parse_switches.constprop.0, @function
parse_switches.constprop.0:
	.cfi_startproc
	pushq     %r15
	movq      %rdi, %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movl      %esi, %ebp
	pushq     %rbx
	subq      $40, %rsp
	movq      (%rdi), %rax
	cmpl      $1, %esi
	movl      $3, requested_fmt(%rip)
	movq      $0, outfilename(%rip)
	movl      $0, 124(%rax)
	jle       .L76
	leaq      72(%rdi), %rax
	movq      %rdx, %r14
	movl      %ecx, %r12d
	movl      $1, %ebx
	movq      %rax, (%rsp)
.L75:
	movslq    %ebx, %rax
	leaq      0(,%rax,8), %r13
	movq      (%r14,%rax,8), %rax
	cmpb      $45, (%rax)
	je        .L95
.L39:
	addq      $40, %rsp
	movl      %ebx, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L95:
	addq      $1, %rax
	movl      $1, %edx
	movl      $.LC31, %esi
	movq      %rax, 8(%rsp)
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      keymatch
	testl     %eax, %eax
	je        .L40
	movl      $0, requested_fmt(%rip)
.L41:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jg        .L75
	jmp       .L39
.L40:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC32, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L42
.L45:
	addl      $1, %ebx
	cmpl      %ebp, %ebx
	jge       .L43
	movq      8(%r14,%r13), %rdi
	leaq      20(%rsp), %rdx
	xorl      %eax, %eax
	movl      $.LC36, %esi
	call      __isoc99_sscanf
	subl      $1, %eax
	jne       .L43
	movl      20(%rsp), %eax
	movl      $1, 108(%r15)
	movl      %eax, 120(%r15)
	jmp       .L41
.L42:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC33, %esi
	call      keymatch
	testl     %eax, %eax
	jne       .L45
	movq      8(%rsp), %rdi
	movl      $1, %edx
	movl      $.LC34, %esi
	call      keymatch
	testl     %eax, %eax
	jne       .L45
	movq      8(%rsp), %rdi
	movl      $1, %edx
	movl      $.LC35, %esi
	call      keymatch
	testl     %eax, %eax
	jne       .L45
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC37, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L47
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L43
	leaq      8(%r14,%r13), %r13
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC38, %esi
	movq      (%r13), %rdi
	call      keymatch
	testl     %eax, %eax
	je        .L48
	movl      $0, 96(%r15)
	jmp       .L41
.L76:
	movl      $1, %ebx
	jmp       .L39
.L48:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC39, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L49
	movl      $1, 96(%r15)
	jmp       .L41
.L47:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC41, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L50
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L43
	leaq      8(%r14,%r13), %r13
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC42, %esi
	movq      (%r13), %rdi
	call      keymatch
	testl     %eax, %eax
	je        .L51
	movl      $2, 112(%r15)
	jmp       .L41
.L73:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC65, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L74
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L43
	movq      8(%r14,%r13), %rdi
	movq      (%rsp), %rcx
	leaq      68(%r15), %rdx
	xorl      %eax, %eax
	movl      $.LC66, %esi
	call      __isoc99_sscanf
	cmpl      $2, %eax
	je        .L41
.L43:
	call      usage
.L49:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC40, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L43
	movl      $2, 96(%r15)
	jmp       .L41
.L51:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC43, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L52
	movl      $0, 112(%r15)
	jmp       .L41
.L50:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC45, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L53
.L56:
	cmpl      $0, printed_version.3510(%rip)
	jne       .L55
	movq      stderr(%rip), %rdi
	movl      $.LC47, %r8d
	movl      $.LC48, %ecx
	movl      $.LC49, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movl      $1, printed_version.3510(%rip)
.L55:
	movq      (%r15), %rax
	addl      $1, 124(%rax)
	jmp       .L41
.L53:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC46, %esi
	call      keymatch
	testl     %eax, %eax
	jne       .L56
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC39, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L58
	cmpl      $0, 108(%r15)
	movl      $0, 116(%r15)
	movl      $1, 112(%r15)
	jne       .L59
	movl      $216, 120(%r15)
.L59:
	movl      $1, 96(%r15)
	movl      $0, 100(%r15)
	jmp       .L41
.L58:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC50, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L60
	movl      $1, requested_fmt(%rip)
	jmp       .L41
.L52:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC44, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L43
	movl      $1, 112(%r15)
	jmp       .L41
.L60:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC51, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L61
.L62:
	movl      $1, 64(%r15)
	jmp       .L41
.L61:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC52, %esi
	call      keymatch
	testl     %eax, %eax
	jne       .L62
	movq      8(%rsp), %rdi
	movl      $3, %edx
	movl      $.LC53, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L63
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L43
	testl     %r12d, %r12d
	je        .L41
	leaq      8(%r14,%r13), %rdx
	movl      $.LC54, %esi
	movq      (%rdx), %rdi
	movq      %rdx, 8(%rsp)
	call      fopen
	testq     %rax, %rax
	movq      %rax, %r13
	movq      8(%rsp), %rdx
	je        .L96
	movq      %rax, %rsi
	movq      %r15, %rdi
	xorl      %eax, %eax
	call      read_color_map
	movq      %r13, %rdi
	call      fclose
	movl      $1, 108(%r15)
	jmp       .L41
.L63:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC56, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L65
	addl      $1, %ebx
	movb      $120, 19(%rsp)
	cmpl      %ebx, %ebp
	jle       .L43
	movq      8(%r14,%r13), %rdi
	leaq      19(%rsp), %rcx
	leaq      24(%rsp), %rdx
	xorl      %eax, %eax
	movl      $.LC57, %esi
	call      __isoc99_sscanf
	testl     %eax, %eax
	jle       .L43
	movzbl    19(%rsp), %eax
	andl      $-33, %eax
	cmpb      $77, %al
	je        .L93
	movq      24(%rsp), %rax
.L66:
	imulq     $1000, %rax, %rax
	movq      8(%r15), %rdx
	movq      %rax, 88(%rdx)
	jmp       .L41
.L96:
	movq      (%rdx), %r8
	movq      stderr(%rip), %rdi
	movl      $.LC55, %edx
	movq      progname(%rip), %rcx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movl      $1, %edi
	call      exit
.L93:
	imulq     $1000, 24(%rsp), %rax
	movq      %rax, 24(%rsp)
	jmp       .L66
.L65:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC58, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L67
	movl      $0, 100(%r15)
	jmp       .L41
.L67:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC59, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L68
	movl      $0, 116(%r15)
	jmp       .L41
.L68:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC60, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L69
	movl      $2, requested_fmt(%rip)
	jmp       .L41
.L69:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $4, %edx
	movl      $.LC61, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L70
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L43
	movq      8(%r14,%r13), %rax
	movq      %rax, outfilename(%rip)
	jmp       .L41
.L70:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC62, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L71
.L72:
	movl      $3, requested_fmt(%rip)
	jmp       .L41
.L71:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC63, %esi
	call      keymatch
	testl     %eax, %eax
	jne       .L72
	movq      8(%rsp), %rdi
	movl      $1, %edx
	movl      $.LC64, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L73
	movl      $4, requested_fmt(%rip)
	jmp       .L41
.L74:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC67, %esi
	call      keymatch
	testl     %eax, %eax
	je        .L43
	movl      $5, requested_fmt(%rip)
	jmp       .L41
	.cfi_endproc
	.size	parse_switches.constprop.0, .-parse_switches.constprop.0
# ----------------------
	.section       .text.startup,"ax",@progbits
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movl      %edi, %ebx
	subq      $872, %rsp
	movq      %fs:40, %rax
	movq      %rax, 856(%rsp)
	xorl      %eax, %eax
	movq      (%rsi), %rax
	testq     %rax, %rax
	movq      %rax, progname(%rip)
	je        .L98
	cmpb      $0, (%rax)
	je        .L98
.L99:
	leaq      688(%rsp), %rdi
	xorl      %eax, %eax
	call      jpeg_std_error
	movl      $688, %edx
	movq      %rax, (%rsp)
	movl      $62, %esi
	xorl      %eax, %eax
	movq      %rsp, %rdi
	call      jpeg_CreateDecompress
	xorl      %eax, %eax
	movl      $print_text_marker, %edx
	movl      $254, %esi
	movq      %rsp, %rdi
	movq      $cdjpeg_message_table, 840(%rsp)
	movl      $1000, 848(%rsp)
	movl      $1043, 852(%rsp)
	call      jpeg_set_marker_processor
	xorl      %eax, %eax
	movl      $print_text_marker, %edx
	movl      $236, %esi
	movq      %rsp, %rdi
	call      jpeg_set_marker_processor
	xorl      %ecx, %ecx
	movq      %rbp, %rdx
	movl      %ebx, %esi
	movq      %rsp, %rdi
	call      parse_switches.constprop.0
	leal      -1(%rbx), %edx
	cmpl      %edx, %eax
	jl        .L128
	cmpl      %eax, %ebx
	jg        .L129
	xorl      %eax, %eax
	call      read_stdin
	movq      %rax, %r13
.L102:
	movq      outfilename(%rip), %rdi
	testq     %rdi, %rdi
	je        .L103
	movl      $.LC70, %esi
	call      fopen
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L130
.L104:
	xorl      %eax, %eax
	movq      %r13, %rsi
	movq      %rsp, %rdi
	call      jpeg_stdio_src
	movl      $1, %esi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jpeg_read_header
	movl      $1, %ecx
	movq      %rbp, %rdx
	movl      %ebx, %esi
	movq      %rsp, %rdi
	call      parse_switches.constprop.0
	cmpl      $5, requested_fmt(%rip)
	ja        .L105
	movl      requested_fmt(%rip), %eax
	jmp       *.L107(,%rax,8)
.L98:
	movq      $.LC68, progname(%rip)
	jmp       .L99
.L129:
	cltq      
	movl      $.LC54, %esi
	leaq      (%rbp,%rax,8), %r12
	movq      (%r12), %rdi
	call      fopen
	testq     %rax, %rax
	movq      %rax, %r13
	jne       .L102
	movq      (%r12), %r8
.L127:
	movq      stderr(%rip), %rdi
	movq      progname(%rip), %rcx
	movl      $.LC55, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	movl      $1, %edi
	call      exit
.L128:
	movq      progname(%rip), %rcx
	movq      stderr(%rip), %rdi
	movl      $.LC69, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
	call      usage
.L111:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_targa
	movq      %rax, %rbx
.L112:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	movq      %r12, 24(%rbx)
	call      jpeg_start_decompress
	xorl      %eax, %eax
	movq      %rbx, %rsi
	movq      %rsp, %rdi
	call      *(%rbx)
	movl      168(%rsp), %eax
	cmpl      %eax, 140(%rsp)
	jbe       .L116
	.p2align 4,,10
	.p2align 3
.L124:
	movl      40(%rbx), %edx
	movq      32(%rbx), %rsi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jpeg_read_scanlines
	movq      %rbx, %rsi
	movl      %eax, %edx
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      *8(%rbx)
	movl      140(%rsp), %eax
	cmpl      %eax, 168(%rsp)
	jb        .L124
.L116:
	movq      %rbx, %rsi
	xorl      %eax, %eax
	movq      %rsp, %rdi
	call      *16(%rbx)
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jpeg_finish_decompress
	xorl      %eax, %eax
	movq      %rsp, %rdi
	call      jpeg_destroy_decompress
	cmpq      stdin(%rip), %r13
	je        .L115
	movq      %r13, %rdi
	call      fclose
.L115:
	cmpq      stdout(%rip), %r12
	je        .L118
	movq      %r12, %rdi
	call      fclose
.L118:
	cmpq      $1, 816(%rsp)
	sbbl      %edi, %edi
	notl      %edi
	andl      $2, %edi
	call      exit
.L110:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_ppm
	movq      %rax, %rbx
	jmp       .L112
.L109:
	movl      $1, %esi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_bmp
	movq      %rax, %rbx
	jmp       .L112
.L108:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_gif
	movq      %rax, %rbx
	jmp       .L112
.L106:
	xorl      %esi, %esi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_bmp
	movq      %rax, %rbx
	jmp       .L112
.L105:
	movq      (%rsp), %rdx
	movq      %rsp, %rdi
	xorl      %eax, %eax
	xorl      %ebx, %ebx
	movl      $1042, 40(%rdx)
	call      *(%rdx)
	jmp       .L112
.L103:
	xorl      %eax, %eax
	call      write_stdout
	movq      %rax, %r12
	.p2align 4,,3
	jmp       .L104
.L130:
	movq      outfilename(%rip), %r8
	jmp       .L127
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .rodata
	.align 4
.L107:
	.quad	.L106
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L105
	.quad	.L111
# ----------------------
	.local	printed_version.3510
	.comm	printed_version.3510,4,4
# ----------------------
	.local	outfilename
	.comm	outfilename,8,8
# ----------------------
	.local	progname
	.comm	progname,8,8
# ----------------------
	.local	requested_fmt
	.comm	requested_fmt,4,4
# ----------------------
	.align 32
	.local	cdjpeg_message_table
	.type	cdjpeg_message_table, @object
cdjpeg_message_table:
	.quad	0
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.quad	.LC107
	.quad	.LC108
	.quad	.LC109
	.quad	.LC110
	.quad	.LC111
	.quad	.LC112
	.quad	0
	.size	cdjpeg_message_table, 352
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
