	.file	"djpeg.c"
	.section       .rodata
	.align 32
.LC00000000:
	.quad	.L000002C7.startup
	.quad	.L000002B5.startup
	.quad	.L0000029E.startup
	.quad	.L0000028C.startup
	.quad	.L000002DB.startup
	.quad	.L000001CE.startup
	.zero	16
# ----------------------
	.local	cdjpeg_message_table
	.type	cdjpeg_message_table, @object
cdjpeg_message_table:
	.zero	8
	.quad	.LC00000518.str1.8
	.quad	.LC00000538.str1.8
	.quad	.LC00000568.str1.8
	.quad	.LC00000590.str1.8
	.quad	.LC000005C0.str1.8
	.quad	.LC000005E8.str1.8
	.quad	.LC00000618.str1.8
	.quad	.LC0000018F.str1.1
	.quad	.LC00000640.str1.8
	.quad	.LC000001A6.str1.1
	.quad	.LC00000668.str1.8
	.quad	.LC000001C1.str1.1
	.quad	.LC000001D9.str1.1
	.quad	.LC00000690.str1.8
	.quad	.LC000001EF.str1.1
	.quad	.LC0000020A.str1.1
	.quad	.LC00000219.str1.1
	.quad	.LC000006B8.str1.8
	.quad	.LC000006E8.str1.8
	.quad	.LC00000718.str1.8
	.quad	.LC0000022C.str1.1
	.quad	.LC00000740.str1.8
	.quad	.LC00000245.str1.1
	.quad	.LC00000260.str1.1
	.quad	.LC00000768.str1.8
	.quad	.LC00000274.str1.1
	.quad	.LC00000290.str1.1
	.quad	.LC000002A3.str1.1
	.quad	.LC000002B3.str1.1
	.quad	.LC000002C8.str1.1
	.quad	.LC000002D8.str1.1
	.quad	.LC00000790.str1.8
	.quad	.LC000007B8.str1.8
	.quad	.LC000007E0.str1.8
	.quad	.LC000002ED.str1.1
	.quad	.LC00000303.str1.1
	.quad	.LC0000031F.str1.1
	.quad	.LC00000808.str1.8
	.quad	.LC00000840.str1.8
	.quad	.LC0000033D.str1.1
	.quad	.LC00000878.str1.8
	.quad	.LC000008B8.str1.8
	.zero	8
	.size	cdjpeg_message_table, 352
# ----------------------
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
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
	je        .L0000014C.startup
.L00000038.startup:
	cmpb      $0, (%rax)
	je        .L0000014C.startup
.L00000041.startup:
	leaq      688(%rsp), %rdi
	xorl      %eax, %eax
	call      jpeg_std_error
.L00000050.startup:
	movl      $688, %edx
	movq      %rax, (%rsp)
	movl      $62, %esi
	xorl      %eax, %eax
	movq      %rsp, %rdi
	call      jpeg_CreateDecompress
.L00000068.startup:
	xorl      %eax, %eax
	movl      $print_text_marker, %edx
	movl      $254, %esi
	movq      %rsp, %rdi
	movq      $cdjpeg_message_table, 840(%rsp)
	movl      $1000, 848(%rsp)
	movl      $1043, 852(%rsp)
	call      jpeg_set_marker_processor
.L0000009E.startup:
	xorl      %eax, %eax
	movl      $print_text_marker, %edx
	movl      $236, %esi
	movq      %rsp, %rdi
	call      jpeg_set_marker_processor
.L000000B2.startup:
	xorl      %ecx, %ecx
	movq      %rbp, %rdx
	movl      %ebx, %esi
	movq      %rsp, %rdi
	call      parse_switches.constprop.0
.L000000C1.startup:
	leal      -1(%rbx), %edx
	cmpl      %edx, %eax
	jl        .L000001AA.startup
.L000000CC.startup:
	cmpl      %eax, %ebx
	jg        .L0000015C.startup
.L000000D4.startup:
	xorl      %eax, %eax
	call      read_stdin
.L000000DB.startup:
	movq      %rax, %r13
.L000000DE.startup:
	movq      outfilename(%rip), %rdi
	testq     %rdi, %rdi
	je        .L000002F4.startup
.L000000EE.startup:
	movl      $.LC0000018C.str1.1, %esi
	call      fopen
.L000000F8.startup:
	testq     %rax, %rax
	movq      %rax, %r12
	je        .L00000305.startup
.L00000104.startup:
	xorl      %eax, %eax
	movq      %r13, %rsi
	movq      %rsp, %rdi
	call      jpeg_stdio_src
.L00000111.startup:
	movl      $1, %esi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jpeg_read_header
.L00000120.startup:
	movl      $1, %ecx
	movq      %rbp, %rdx
	movl      %ebx, %esi
	movq      %rsp, %rdi
	call      parse_switches.constprop.0
.L00000132.startup:
	cmpl      $5, requested_fmt(%rip)
	ja        .L000002DB.startup
.L0000013F.startup:
	movl      requested_fmt(%rip), %eax
	jmp       *.LC00000000(,%rax,8)
.L0000014C.startup:
	movq      $.LC0000016D.str1.1, progname(%rip)
	jmp       .L00000041.startup
.L0000015C.startup:
	cltq      
	movl      $.LC0000010C.str1.1, %esi
	leaq      (%rbp,%rax,8), %r12
	movq      (%r12), %rdi
	call      fopen
.L00000171.startup:
	testq     %rax, %rax
	movq      %rax, %r13
	jne       .L000000DE.startup
.L0000017D.startup:
	movq      (%r12), %r8
.L00000181.startup:
	movq      stderr(%rip), %rdi
	movq      progname(%rip), %rcx
	movl      $.LC0000010F.str1.1, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L000001A0.startup:
	movl      $1, %edi
	call      exit
.L000001AA.startup:
	movq      progname(%rip), %rcx
	movq      stderr(%rip), %rdi
	movl      $.LC00000173.str1.1, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L000001C9.startup:
	call      usage
.L000001CE.startup:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_targa
.L000001D8.startup:
	movq      %rax, %rbx
.L000001DB.startup:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	movq      %r12, 24(%rbx)
	call      jpeg_start_decompress
.L000001E9.startup:
	xorl      %eax, %eax
	movq      %rbx, %rsi
	movq      %rsp, %rdi
	call      *(%rbx)
.L000001F3.startup:
	movl      168(%rsp), %eax
	cmpl      %eax, 140(%rsp)
	jbe       .L00000236.startup
.L00000203.startup:
	.p2align 3
.L00000208.startup:
	movl      40(%rbx), %edx
	movq      32(%rbx), %rsi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jpeg_read_scanlines
.L00000219.startup:
	movq      %rbx, %rsi
	movl      %eax, %edx
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      *8(%rbx)
.L00000226.startup:
	movl      140(%rsp), %eax
	cmpl      %eax, 168(%rsp)
	jb        .L00000208.startup
.L00000236.startup:
	movq      %rbx, %rsi
	xorl      %eax, %eax
	movq      %rsp, %rdi
	call      *16(%rbx)
.L00000241.startup:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jpeg_finish_decompress
.L0000024B.startup:
	xorl      %eax, %eax
	movq      %rsp, %rdi
	call      jpeg_destroy_decompress
.L00000255.startup:
	cmpq      stdin(%rip), %r13
	je        .L00000266.startup
.L0000025E.startup:
	movq      %r13, %rdi
	call      fclose
.L00000266.startup:
	cmpq      stdout(%rip), %r12
	je        .L00000277.startup
.L0000026F.startup:
	movq      %r12, %rdi
	call      fclose
.L00000277.startup:
	cmpq      $1, 816(%rsp)
	sbbl      %edi, %edi
	notl      %edi
	andl      $2, %edi
	call      exit
.L0000028C.startup:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_ppm
.L00000296.startup:
	movq      %rax, %rbx
	jmp       .L000001DB.startup
.L0000029E.startup:
	movl      $1, %esi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_bmp
.L000002AD.startup:
	movq      %rax, %rbx
	jmp       .L000001DB.startup
.L000002B5.startup:
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_gif
.L000002BF.startup:
	movq      %rax, %rbx
	jmp       .L000001DB.startup
.L000002C7.startup:
	xorl      %esi, %esi
	movq      %rsp, %rdi
	xorl      %eax, %eax
	call      jinit_write_bmp
.L000002D3.startup:
	movq      %rax, %rbx
	jmp       .L000001DB.startup
.L000002DB.startup:
	movq      (%rsp), %rdx
	movq      %rsp, %rdi
	xorl      %eax, %eax
	xorl      %ebx, %ebx
	movl      $1042, 40(%rdx)
	call      *(%rdx)
.L000002EF.startup:
	jmp       .L000001DB.startup
.L000002F4.startup:
	xorl      %eax, %eax
	call      write_stdout
.L000002FB.startup:
	movq      %rax, %r12
	.p2align 3
	jmp       .L00000104.startup
.L00000305.startup:
	movq      outfilename(%rip), %r8
	jmp       .L00000181.startup
	.size	main, .-main
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"usage: %s [switches] "
.LC00000016.str1.1:
	.string	"[inputfile]\n"
.LC00000023.str1.1:
	.byte	0
.LC00000024.str1.1:
	.string	" (default)"
.LC0000002F.str1.1:
	.string	"Switches for advanced users:\n"
.LC0000004D.str1.1:
	.string	"Comment, length %ld:\n"
.LC00000063.str1.1:
	.string	"APP%d, length %ld:\n"
.LC00000077.str1.1:
	.string	"\\\\"
.LC0000007A.str1.1:
	.string	"\\%03o"
.LC00000080.str1.1:
	.string	"bmp"
.LC00000084.str1.1:
	.string	"colors"
.LC0000008B.str1.1:
	.string	"colours"
.LC00000093.str1.1:
	.string	"quantize"
.LC0000009C.str1.1:
	.string	"quantise"
.LC000000A5.str1.1:
	.string	"%d"
.LC000000A8.str1.1:
	.string	"dct"
.LC000000AC.str1.1:
	.string	"int"
.LC000000B0.str1.1:
	.string	"fast"
.LC000000B5.str1.1:
	.string	"float"
.LC000000BB.str1.1:
	.string	"dither"
.LC000000C2.str1.1:
	.string	"fs"
.LC000000C5.str1.1:
	.string	"none"
.LC000000CA.str1.1:
	.string	"ordered"
.LC000000D2.str1.1:
	.string	"debug"
.LC000000D8.str1.1:
	.string	"verbose"
.LC000000E0.str1.1:
	.string	"6b  27-Mar-1998"
.LC000000F0.str1.1:
	.string	"gif"
.LC000000F4.str1.1:
	.string	"grayscale"
.LC000000FE.str1.1:
	.string	"greyscale"
.LC00000108.str1.1:
	.string	"map"
.LC0000010C.str1.1:
	.string	"rb"
.LC0000010F.str1.1:
	.string	"%s: can't open %s\n"
.LC00000122.str1.1:
	.string	"maxmemory"
.LC0000012C.str1.1:
	.string	"%ld%c"
.LC00000132.str1.1:
	.string	"nosmooth"
.LC0000013B.str1.1:
	.string	"onepass"
.LC00000143.str1.1:
	.string	"os2"
.LC00000147.str1.1:
	.string	"outfile"
.LC0000014F.str1.1:
	.string	"pnm"
.LC00000153.str1.1:
	.string	"ppm"
.LC00000157.str1.1:
	.string	"rle"
.LC0000015B.str1.1:
	.string	"scale"
.LC00000161.str1.1:
	.string	"%d/%d"
.LC00000167.str1.1:
	.string	"targa"
.LC0000016D.str1.1:
	.string	"djpeg"
.LC00000173.str1.1:
	.string	"%s: only one input file\n"
.LC0000018C.str1.1:
	.string	"wb"
.LC0000018F.str1.1:
	.string	"%ux%u 24-bit BMP image"
.LC000001A6.str1.1:
	.string	"%ux%u 24-bit OS2 BMP image"
.LC000001C1.str1.1:
	.string	"GIF output got confused"
.LC000001D9.str1.1:
	.string	"Bogus GIF codesize %d"
.LC000001EF.str1.1:
	.string	"Too few images in GIF file"
.LC0000020A.str1.1:
	.string	"Not a GIF file"
.LC00000219.str1.1:
	.string	"%ux%ux%d GIF image"
.LC0000022C.str1.1:
	.string	"Corrupt data in GIF file"
.LC00000245.str1.1:
	.string	"Premature end of GIF image"
.LC00000260.str1.1:
	.string	"Ran out of GIF bits"
.LC00000274.str1.1:
	.string	"Nonnumeric data in PPM file"
.LC00000290.str1.1:
	.string	"Not a PPM/PGM file"
.LC000002A3.str1.1:
	.string	"%ux%u PGM image"
.LC000002B3.str1.1:
	.string	"%ux%u text PGM image"
.LC000002C8.str1.1:
	.string	"%ux%u PPM image"
.LC000002D8.str1.1:
	.string	"%ux%u text PPM image"
.LC000002ED.str1.1:
	.string	"%ux%u RGB Targa image"
.LC00000303.str1.1:
	.string	"%ux%u grayscale Targa image"
.LC0000031F.str1.1:
	.string	"%ux%u colormapped Targa image"
.LC0000033D.str1.1:
	.string	"ungetc failed"
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC00000000.str1.8:
	.string	"Switches (names may be abbreviated):\n"
# ----------------------
.LC00000026.str1.8:
	.value	0
	.align 4
.LC00000028.str1.8:
	.string	"  -colors N      Reduce image to no more than N colors\n"
.LC00000060.str1.8:
	.string	"  -fast          Fast, low-quality processing\n"
# ----------------------
.LC0000008F.str1.8:
	.byte	0
	.align 2
.LC00000090.str1.8:
	.string	"  -grayscale     Force grayscale output\n"
# ----------------------
.LC000000B9.str1.8:
	.zero	7
	.align 8
.LC000000C0.str1.8:
	.string	"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\n"
# ----------------------
.LC000000FE.str1.8:
	.value	0
	.align 4
.LC00000100.str1.8:
	.string	"  -bmp           Select BMP output format (Windows style)%s\n"
# ----------------------
.LC0000013D.str1.8:
	.zero	3
	.align 4
.LC00000140.str1.8:
	.string	"  -gif           Select GIF output format%s\n"
# ----------------------
.LC0000016D.str1.8:
	.zero	3
	.align 4
.LC00000170.str1.8:
	.string	"  -os2           Select BMP output format (OS/2 style)%s\n"
# ----------------------
.LC000001AA.str1.8:
	.zero	6
	.align 8
.LC000001B0.str1.8:
	.string	"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\n"
# ----------------------
.LC000001EB.str1.8:
	.zero	5
	.align 8
.LC000001F0.str1.8:
	.string	"  -targa         Select Targa output format%s\n"
# ----------------------
.LC0000021F.str1.8:
	.byte	0
	.align 2
.LC00000220.str1.8:
	.string	"  -dct int       Use integer DCT method%s\n"
# ----------------------
.LC0000024B.str1.8:
	.zero	5
	.align 8
.LC00000250.str1.8:
	.string	"  -dct fast      Use fast integer DCT (less accurate)%s\n"
# ----------------------
.LC00000289.str1.8:
	.zero	7
	.align 8
.LC00000290.str1.8:
	.string	"  -dct float     Use floating-point DCT method%s\n"
# ----------------------
.LC000002C2.str1.8:
	.zero	6
	.align 8
.LC000002C8.str1.8:
	.string	"  -dither fs     Use F-S dithering (default)\n"
# ----------------------
.LC000002F6.str1.8:
	.value	0
	.align 4
.LC000002F8.str1.8:
	.string	"  -dither none   Don't use dithering in quantization\n"
# ----------------------
.LC0000032E.str1.8:
	.value	0
	.align 4
.LC00000330.str1.8:
	.string	"  -dither ordered  Use ordered dither (medium speed, quality)\n"
# ----------------------
.LC0000036F.str1.8:
	.byte	0
	.align 2
.LC00000370.str1.8:
	.string	"  -map FILE      Map to colors used in named image file\n"
# ----------------------
.LC000003A9.str1.8:
	.zero	7
	.align 8
.LC000003B0.str1.8:
	.string	"  -nosmooth      Don't use high-quality upsampling\n"
# ----------------------
.LC000003E4.str1.8:
	.long	0
	.align 8
.LC000003E8.str1.8:
	.string	"  -onepass       Use 1-pass quantization (fast, low quality)\n"
# ----------------------
.LC00000426.str1.8:
	.value	0
	.align 4
.LC00000428.str1.8:
	.string	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
# ----------------------
.LC0000045C.str1.8:
	.long	0
	.align 8
.LC00000460.str1.8:
	.string	"  -outfile name  Specify name for output file\n"
# ----------------------
.LC0000048F.str1.8:
	.byte	0
	.align 2
.LC00000490.str1.8:
	.string	"  -verbose  or  -debug   Emit debug output\n"
# ----------------------
.LC000004BC.str1.8:
	.long	0
	.align 8
.LC000004C0.str1.8:
	.string	"Copyright (C) 1998, Thomas G. Lane"
# ----------------------
.LC000004E3.str1.8:
	.zero	5
	.align 8
.LC000004E8.str1.8:
	.string	"Independent JPEG Group's DJPEG, version %s\n%s\n"
# ----------------------
.LC00000517.str1.8:
	.byte	0
	.align 2
.LC00000518.str1.8:
	.string	"Unsupported BMP colormap format"
.LC00000538.str1.8:
	.string	"Only 8- and 24-bit BMP files are supported"
# ----------------------
.LC00000563.str1.8:
	.zero	5
	.align 8
.LC00000568.str1.8:
	.string	"Invalid BMP file: bad header length"
# ----------------------
.LC0000058C.str1.8:
	.long	0
	.align 8
.LC00000590.str1.8:
	.string	"Invalid BMP file: biPlanes not equal to 1"
# ----------------------
.LC000005BA.str1.8:
	.zero	6
	.align 8
.LC000005C0.str1.8:
	.string	"BMP output must be grayscale or RGB"
# ----------------------
.LC000005E4.str1.8:
	.long	0
	.align 8
.LC000005E8.str1.8:
	.string	"Sorry, compressed BMPs not yet supported"
# ----------------------
.LC00000611.str1.8:
	.zero	7
	.align 8
.LC00000618.str1.8:
	.string	"Not a BMP file - does not start with BM"
.LC00000640.str1.8:
	.string	"%ux%u 8-bit colormapped BMP image"
# ----------------------
.LC00000662.str1.8:
	.zero	6
	.align 8
.LC00000668.str1.8:
	.string	"%ux%u 8-bit colormapped OS2 BMP image"
# ----------------------
.LC0000068E.str1.8:
	.value	0
	.align 4
.LC00000690.str1.8:
	.string	"GIF output must be grayscale or RGB"
# ----------------------
.LC000006B4.str1.8:
	.long	0
	.align 8
.LC000006B8.str1.8:
	.string	"Warning: unexpected GIF version number '%c%c%c'"
.LC000006E8.str1.8:
	.string	"Ignoring GIF extension block of type 0x%02x"
# ----------------------
.LC00000714.str1.8:
	.long	0
	.align 8
.LC00000718.str1.8:
	.string	"Caution: nonsquare pixels in input"
# ----------------------
.LC0000073B.str1.8:
	.zero	5
	.align 8
.LC00000740.str1.8:
	.string	"Bogus char 0x%02x in GIF file, ignoring"
.LC00000768.str1.8:
	.string	"PPM output must be grayscale or RGB"
# ----------------------
.LC0000078C.str1.8:
	.long	0
	.align 8
.LC00000790.str1.8:
	.string	"Unsupported Targa colormap format"
# ----------------------
.LC000007B2.str1.8:
	.zero	6
	.align 8
.LC000007B8.str1.8:
	.string	"Invalid or unsupported Targa file"
# ----------------------
.LC000007DA.str1.8:
	.zero	6
	.align 8
.LC000007E0.str1.8:
	.string	"Targa output must be grayscale or RGB"
# ----------------------
.LC00000806.str1.8:
	.value	0
	.align 4
.LC00000808.str1.8:
	.string	"Color map file is invalid or of unsupported format"
# ----------------------
.LC0000083B.str1.8:
	.zero	5
	.align 8
.LC00000840.str1.8:
	.string	"Output file format cannot handle %d colormap entries"
# ----------------------
.LC00000875.str1.8:
	.zero	3
	.align 4
.LC00000878.str1.8:
	.string	"Unrecognized input file format --- perhaps you need -targa"
# ----------------------
.LC000008B3.str1.8:
	.zero	5
	.align 8
.LC000008B8.str1.8:
	.string	"Unsupported output file format"
# ----------------------
	.text
	.local	jpeg_getc
	.type	jpeg_getc, @function
jpeg_getc:
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      40(%rdi), %rbx
	movq      8(%rbx), %rax
	testq     %rax, %rax
	je        .L00000038
.L00000016:
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
.L00000032:
	.p2align 3
.L00000038:
	call      *24(%rbx)
.L0000003B:
	testl     %eax, %eax
	jne       .L00000051
.L0000003F:
	movq      (%rbp), %rdx
	movq      %rbp, %rdi
	xorl      %eax, %eax
	movl      $24, 40(%rdx)
	call      *(%rdx)
.L00000051:
	movq      8(%rbx), %rax
	jmp       .L00000016
	.size	jpeg_getc, .-jpeg_getc
# ----------------------
.L00000057:
	.p2align 4
# ----------------------
	.local	usage
	.type	usage, @function
usage:
	subq      $8, %rsp
	movq      progname(%rip), %rcx
	movq      stderr(%rip), %rdi
	movl      $.LC00000000.str1.1, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L00000083:
	movq      stderr(%rip), %rcx
	movl      $12, %edx
	movl      $1, %esi
	movl      $.LC00000016.str1.1, %edi
	call      fwrite
.L0000009E:
	movq      stderr(%rip), %rcx
	movl      $37, %edx
	movl      $1, %esi
	movl      $.LC00000000.str1.8, %edi
	call      fwrite
.L000000B9:
	movq      stderr(%rip), %rcx
	movl      $55, %edx
	movl      $1, %esi
	movl      $.LC00000028.str1.8, %edi
	call      fwrite
.L000000D4:
	movq      stderr(%rip), %rcx
	movl      $46, %edx
	movl      $1, %esi
	movl      $.LC00000060.str1.8, %edi
	call      fwrite
.L000000EF:
	movq      stderr(%rip), %rcx
	movl      $40, %edx
	movl      $1, %esi
	movl      $.LC00000090.str1.8, %edi
	call      fwrite
.L0000010A:
	movq      stderr(%rip), %rcx
	movl      $61, %edx
	movl      $1, %esi
	movl      $.LC000000C0.str1.8, %edi
	call      fwrite
.L00000125:
	movq      stderr(%rip), %rdi
	movl      $.LC00000023.str1.1, %ecx
	movl      $.LC00000100.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L00000142:
	movq      stderr(%rip), %rdi
	movl      $.LC00000023.str1.1, %ecx
	movl      $.LC00000140.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L0000015F:
	movq      stderr(%rip), %rdi
	movl      $.LC00000023.str1.1, %ecx
	movl      $.LC00000170.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L0000017C:
	movq      stderr(%rip), %rdi
	movl      $.LC00000024.str1.1, %ecx
	movl      $.LC000001B0.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L00000199:
	movq      stderr(%rip), %rdi
	movl      $.LC00000023.str1.1, %ecx
	movl      $.LC000001F0.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L000001B6:
	movq      stderr(%rip), %rcx
	movl      $29, %edx
	movl      $1, %esi
	movl      $.LC0000002F.str1.1, %edi
	call      fwrite
.L000001D1:
	movq      stderr(%rip), %rdi
	movl      $.LC00000024.str1.1, %ecx
	movl      $.LC00000220.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L000001EE:
	movq      stderr(%rip), %rdi
	movl      $.LC00000023.str1.1, %ecx
	movl      $.LC00000250.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L0000020B:
	movq      stderr(%rip), %rdi
	movl      $.LC00000023.str1.1, %ecx
	movl      $.LC00000290.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L00000228:
	movq      stderr(%rip), %rcx
	movl      $45, %edx
	movl      $1, %esi
	movl      $.LC000002C8.str1.8, %edi
	call      fwrite
.L00000243:
	movq      stderr(%rip), %rcx
	movl      $53, %edx
	movl      $1, %esi
	movl      $.LC000002F8.str1.8, %edi
	call      fwrite
.L0000025E:
	movq      stderr(%rip), %rcx
	movl      $62, %edx
	movl      $1, %esi
	movl      $.LC00000330.str1.8, %edi
	call      fwrite
.L00000279:
	movq      stderr(%rip), %rcx
	movl      $56, %edx
	movl      $1, %esi
	movl      $.LC00000370.str1.8, %edi
	call      fwrite
.L00000294:
	movq      stderr(%rip), %rcx
	movl      $51, %edx
	movl      $1, %esi
	movl      $.LC000003B0.str1.8, %edi
	call      fwrite
.L000002AF:
	movq      stderr(%rip), %rcx
	movl      $61, %edx
	movl      $1, %esi
	movl      $.LC000003E8.str1.8, %edi
	call      fwrite
.L000002CA:
	movq      stderr(%rip), %rcx
	movl      $51, %edx
	movl      $1, %esi
	movl      $.LC00000428.str1.8, %edi
	call      fwrite
.L000002E5:
	movq      stderr(%rip), %rcx
	movl      $46, %edx
	movl      $1, %esi
	movl      $.LC00000460.str1.8, %edi
	call      fwrite
.L00000300:
	movq      stderr(%rip), %rcx
	movl      $.LC00000490.str1.8, %edi
	movl      $43, %edx
	movl      $1, %esi
	call      fwrite
.L0000031B:
	movl      $1, %edi
	call      exit
	.size	usage, .-usage
# ----------------------
.L00000325:
	.p2align 4
# ----------------------
	.local	print_text_marker
	.type	print_text_marker, @function
print_text_marker:
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
.L0000034F:
	movq      %r12, %rdi
	sall      $8, %eax
	movl      %eax, %ebx
	call      jpeg_getc
.L0000035C:
	testl     %r13d, %r13d
	movl      %eax, %eax
	leaq      -2(%rbx,%rax), %rbx
	je        .L0000039D
.L00000368:
	movl      596(%r12), %ecx
	cmpl      $254, %ecx
	je        .L000004D0
.L0000037C:
	movq      stderr(%rip), %rdi
	subl      $224, %ecx
	movq      %rbx, %r8
	movl      $.LC00000063.str1.1, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L0000039D:
	xorl      %r14d, %r14d
.L000003A0:
	subq      $1, %rbx
	js        .L00000400
.L000003A6:
	movq      %r12, %rdi
	call      jpeg_getc
.L000003AE:
	testl     %r13d, %r13d
	movl      %eax, %ebp
	je        .L000003A0
.L000003B5:
	cmpl      $13, %eax
	je        .L00000478
.L000003BE:
	cmpl      $10, %eax
	je        .L00000450
.L000003C7:
	cmpl      $92, %eax
	je        .L000004A8
.L000003D0:
	call      __ctype_b_loc
.L000003D5:
	movq      (%rax), %rax
	movslq    %ebp, %rdx
	testb     $64, 1(%rax,%rdx,2)
	je        .L00000428
.L000003E2:
	movq      stderr(%rip), %rsi
	movl      %ebp, %edi
	movl      %ebp, %r14d
	call      _IO_putc
.L000003F3:
	subq      $1, %rbx
	jns       .L000003A6
.L000003F9:
	.p2align 4
.L00000400:
	testl     %r13d, %r13d
	je        .L00000416
.L00000405:
	movq      stderr(%rip), %rsi
	movl      $10, %edi
	call      fputc
.L00000416:
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	movl      $1, %eax
	popq      %r14
	ret       
.L00000424:
	.p2align 3
.L00000428:
	movq      stderr(%rip), %rdi
	movl      %ebp, %ecx
	movl      $.LC0000007A.str1.1, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	movl      %ebp, %r14d
	call      __fprintf_chk
.L00000445:
	jmp       .L000003A0
.L0000044A:
	.p2align 3
.L00000450:
	cmpl      $13, %r14d
	je        .L00000498
.L00000456:
	movq      stderr(%rip), %rsi
	movl      $10, %edi
	movl      $10, %r14d
	call      fputc
.L0000046D:
	jmp       .L000003A0
.L00000472:
	.p2align 3
.L00000478:
	movq      stderr(%rip), %rsi
	movl      $10, %edi
	movl      $13, %r14d
	call      fputc
.L0000048F:
	jmp       .L000003A0
.L00000494:
	.p2align 3
.L00000498:
	movl      $10, %r14d
	jmp       .L000003A0
.L000004A3:
	.p2align 3
.L000004A8:
	movq      stderr(%rip), %rcx
	movl      $2, %edx
	movl      $1, %esi
	movl      $.LC00000077.str1.1, %edi
	movl      $92, %r14d
	call      fwrite
.L000004C9:
	jmp       .L000003A0
.L000004CE:
	.p2align 3
.L000004D0:
	movq      stderr(%rip), %rdi
	movq      %rbx, %rcx
	movl      $.LC0000004D.str1.1, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L000004EB:
	jmp       .L0000039D
	.size	print_text_marker, .-print_text_marker
# ----------------------
	.local	parse_switches.constprop.0
	.type	parse_switches.constprop.0, @function
parse_switches.constprop.0:
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
	jle       .L0000068B
.L0000052B:
	leaq      72(%rdi), %rax
	movq      %rdx, %r14
	movl      %ecx, %r12d
	movl      $1, %ebx
	movq      %rax, (%rsp)
.L0000053E:
	movslq    %ebx, %rax
	leaq      0(,%rax,8), %r13
	movq      (%r14,%rax,8), %rax
	cmpb      $45, (%rax)
	je        .L00000563
.L00000552:
	addq      $40, %rsp
	movl      %ebx, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000563:
	addq      $1, %rax
	movl      $1, %edx
	movl      $.LC00000080.str1.1, %esi
	movq      %rax, 8(%rsp)
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      keymatch
.L00000580:
	testl     %eax, %eax
	je        .L00000597
.L00000584:
	movl      $0, requested_fmt(%rip)
.L0000058E:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jg        .L0000053E
.L00000595:
	jmp       .L00000552
.L00000597:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC00000084.str1.1, %esi
	call      keymatch
.L000005AD:
	testl     %eax, %eax
	je        .L000005ED
.L000005B1:
	addl      $1, %ebx
	cmpl      %ebp, %ebx
	jge       .L00000756
.L000005BC:
	movq      8(%r14,%r13), %rdi
	leaq      20(%rsp), %rdx
	xorl      %eax, %eax
	movl      $.LC000000A5.str1.1, %esi
	call      __isoc99_sscanf
.L000005D2:
	subl      $1, %eax
	jne       .L00000756
.L000005DB:
	movl      20(%rsp), %eax
	movl      $1, 108(%r15)
	movl      %eax, 120(%r15)
	jmp       .L0000058E
.L000005ED:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC0000008B.str1.1, %esi
	call      keymatch
.L00000603:
	testl     %eax, %eax
	jne       .L000005B1
.L00000607:
	movq      8(%rsp), %rdi
	movl      $1, %edx
	movl      $.LC00000093.str1.1, %esi
	call      keymatch
.L0000061B:
	testl     %eax, %eax
	jne       .L000005B1
.L0000061F:
	movq      8(%rsp), %rdi
	movl      $1, %edx
	movl      $.LC0000009C.str1.1, %esi
	call      keymatch
.L00000633:
	testl     %eax, %eax
	jne       .L000005B1
.L0000063B:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000A8.str1.1, %esi
	call      keymatch
.L00000651:
	testl     %eax, %eax
	je        .L000006BF
.L00000655:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L00000756
.L00000660:
	leaq      8(%r14,%r13), %r13
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC000000AC.str1.1, %esi
	movq      (%r13), %rdi
	call      keymatch
.L0000067A:
	testl     %eax, %eax
	je        .L00000695
.L0000067E:
	movl      $0, 96(%r15)
	jmp       .L0000058E
.L0000068B:
	movl      $1, %ebx
	jmp       .L00000552
.L00000695:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000B0.str1.1, %esi
	call      keymatch
.L000006AA:
	testl     %eax, %eax
	je        .L0000075B
.L000006B2:
	movl      $1, 96(%r15)
	jmp       .L0000058E
.L000006BF:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000BB.str1.1, %esi
	call      keymatch
.L000006D5:
	testl     %eax, %eax
	je        .L000007AB
.L000006DD:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L00000756
.L000006E4:
	leaq      8(%r14,%r13), %r13
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000C2.str1.1, %esi
	movq      (%r13), %rdi
	call      keymatch
.L000006FE:
	testl     %eax, %eax
	je        .L00000781
.L00000702:
	movl      $2, 112(%r15)
	jmp       .L0000058E
.L0000070F:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC0000015B.str1.1, %esi
	call      keymatch
.L00000725:
	testl     %eax, %eax
	je        .L00000B46
.L0000072D:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L00000756
.L00000734:
	movq      8(%r14,%r13), %rdi
	movq      (%rsp), %rcx
	leaq      68(%r15), %rdx
	xorl      %eax, %eax
	movl      $.LC00000161.str1.1, %esi
	call      __isoc99_sscanf
.L0000074D:
	cmpl      $2, %eax
	je        .L0000058E
.L00000756:
	call      usage
.L0000075B:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000B5.str1.1, %esi
	call      keymatch
.L00000770:
	testl     %eax, %eax
	je        .L00000756
.L00000774:
	movl      $2, 96(%r15)
	jmp       .L0000058E
.L00000781:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000C5.str1.1, %esi
	call      keymatch
.L00000796:
	testl     %eax, %eax
	je        .L00000898
.L0000079E:
	movl      $0, 112(%r15)
	jmp       .L0000058E
.L000007AB:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC000000D2.str1.1, %esi
	call      keymatch
.L000007C1:
	testl     %eax, %eax
	je        .L00000807
.L000007C5:
	cmpl      $0, printed_version.3510(%rip)
	jne       .L000007FB
.L000007CE:
	movq      stderr(%rip), %rdi
	movl      $.LC000004C0.str1.8, %r8d
	movl      $.LC000000E0.str1.1, %ecx
	movl      $.LC000004E8.str1.8, %edx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L000007F1:
	movl      $1, printed_version.3510(%rip)
.L000007FB:
	movq      (%r15), %rax
	addl      $1, 124(%rax)
	jmp       .L0000058E
.L00000807:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC000000D8.str1.1, %esi
	call      keymatch
.L0000081D:
	testl     %eax, %eax
	jne       .L000007C5
.L00000821:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC000000B0.str1.1, %esi
	call      keymatch
.L00000837:
	testl     %eax, %eax
	je        .L0000086F
.L0000083B:
	cmpl      $0, 108(%r15)
	movl      $0, 116(%r15)
	movl      $1, 112(%r15)
	jne       .L0000085A
.L00000852:
	movl      $216, 120(%r15)
.L0000085A:
	movl      $1, 96(%r15)
	movl      $0, 100(%r15)
	jmp       .L0000058E
.L0000086F:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC000000F0.str1.1, %esi
	call      keymatch
.L00000885:
	testl     %eax, %eax
	je        .L000008C2
.L00000889:
	movl      $1, requested_fmt(%rip)
	jmp       .L0000058E
.L00000898:
	movq      (%r13), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000CA.str1.1, %esi
	call      keymatch
.L000008AD:
	testl     %eax, %eax
	je        .L00000756
.L000008B5:
	movl      $1, 112(%r15)
	jmp       .L0000058E
.L000008C2:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000F4.str1.1, %esi
	call      keymatch
.L000008D8:
	testl     %eax, %eax
	je        .L000008E9
.L000008DC:
	movl      $1, 64(%r15)
	jmp       .L0000058E
.L000008E9:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $2, %edx
	movl      $.LC000000FE.str1.1, %esi
	call      keymatch
.L000008FF:
	testl     %eax, %eax
	jne       .L000008DC
.L00000903:
	movq      8(%rsp), %rdi
	movl      $3, %edx
	movl      $.LC00000108.str1.1, %esi
	call      keymatch
.L00000917:
	testl     %eax, %eax
	je        .L00000979
.L0000091B:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L00000756
.L00000926:
	testl     %r12d, %r12d
	je        .L0000058E
.L0000092F:
	leaq      8(%r14,%r13), %rdx
	movl      $.LC0000010C.str1.1, %esi
	movq      (%rdx), %rdi
	movq      %rdx, 8(%rsp)
	call      fopen
.L00000946:
	testq     %rax, %rax
	movq      %rax, %r13
	movq      8(%rsp), %rdx
	je        .L000009EF
.L00000957:
	movq      %rax, %rsi
	movq      %r15, %rdi
	xorl      %eax, %eax
	call      read_color_map
.L00000964:
	movq      %r13, %rdi
	call      fclose
.L0000096C:
	movl      $1, 108(%r15)
	jmp       .L0000058E
.L00000979:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC00000122.str1.1, %esi
	call      keymatch
.L0000098F:
	testl     %eax, %eax
	je        .L00000A2B
.L00000997:
	addl      $1, %ebx
	movb      $120, 19(%rsp)
	cmpl      %ebx, %ebp
	jle       .L00000756
.L000009A7:
	movq      8(%r14,%r13), %rdi
	leaq      19(%rsp), %rcx
	leaq      24(%rsp), %rdx
	xorl      %eax, %eax
	movl      $.LC0000012C.str1.1, %esi
	call      __isoc99_sscanf
.L000009C2:
	testl     %eax, %eax
	jle       .L00000756
.L000009CA:
	movzbl    19(%rsp), %eax
	andl      $-33, %eax
	cmpb      $77, %al
	je        .L00000A1B
.L000009D6:
	movq      24(%rsp), %rax
.L000009DB:
	imulq     $1000, %rax, %rax
	movq      8(%r15), %rdx
	movq      %rax, 88(%rdx)
	jmp       .L0000058E
.L000009EF:
	movq      (%rdx), %r8
	movq      stderr(%rip), %rdi
	movl      $.LC0000010F.str1.1, %edx
	movq      progname(%rip), %rcx
	movl      $1, %esi
	xorl      %eax, %eax
	call      __fprintf_chk
.L00000A11:
	movl      $1, %edi
	call      exit
.L00000A1B:
	imulq     $1000, 24(%rsp), %rax
	movq      %rax, 24(%rsp)
	jmp       .L000009DB
.L00000A2B:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC00000132.str1.1, %esi
	call      keymatch
.L00000A41:
	testl     %eax, %eax
	je        .L00000A52
.L00000A45:
	movl      $0, 100(%r15)
	jmp       .L0000058E
.L00000A52:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC0000013B.str1.1, %esi
	call      keymatch
.L00000A68:
	testl     %eax, %eax
	je        .L00000A79
.L00000A6C:
	movl      $0, 116(%r15)
	jmp       .L0000058E
.L00000A79:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $3, %edx
	movl      $.LC00000143.str1.1, %esi
	call      keymatch
.L00000A8F:
	testl     %eax, %eax
	je        .L00000AA2
.L00000A93:
	movl      $2, requested_fmt(%rip)
	jmp       .L0000058E
.L00000AA2:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $4, %edx
	movl      $.LC00000147.str1.1, %esi
	call      keymatch
.L00000AB8:
	testl     %eax, %eax
	je        .L00000AD8
.L00000ABC:
	addl      $1, %ebx
	cmpl      %ebx, %ebp
	jle       .L00000756
.L00000AC7:
	movq      8(%r14,%r13), %rax
	movq      %rax, outfilename(%rip)
	jmp       .L0000058E
.L00000AD8:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC0000014F.str1.1, %esi
	call      keymatch
.L00000AEE:
	testl     %eax, %eax
	je        .L00000B01
.L00000AF2:
	movl      $3, requested_fmt(%rip)
	jmp       .L0000058E
.L00000B01:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC00000153.str1.1, %esi
	call      keymatch
.L00000B17:
	testl     %eax, %eax
	jne       .L00000AF2
.L00000B1B:
	movq      8(%rsp), %rdi
	movl      $1, %edx
	movl      $.LC00000157.str1.1, %esi
	call      keymatch
.L00000B2F:
	testl     %eax, %eax
	je        .L0000070F
.L00000B37:
	movl      $4, requested_fmt(%rip)
	jmp       .L0000058E
.L00000B46:
	movq      8(%rsp), %rdi
	xorl      %eax, %eax
	movl      $1, %edx
	movl      $.LC00000167.str1.1, %esi
	call      keymatch
.L00000B5C:
	testl     %eax, %eax
	je        .L00000756
.L00000B64:
	movl      $5, requested_fmt(%rip)
	jmp       .L0000058E
	.size	parse_switches.constprop.0, .-parse_switches.constprop.0
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
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
