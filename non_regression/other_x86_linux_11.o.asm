	.file	"gzlib.c"
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"<fd:%d>"
.LC2:
	.byte	0
.LC3:
	.string	"out of memory"
.LC4:
	.string	": "
.LC5:
	.string	"%s%s%s"
.LC0:
	.string	"%s"
# ----------------------
	.section       .rodata
	.align 4
.LC00000000:
	.long	.L263@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L19@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L18@GOTOFF
	.long	.L8@GOTOFF
	.long	.L20@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L12@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L16@GOTOFF
	.long	.L8@GOTOFF
	.long	.L17@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L10@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L11@GOTOFF
	.long	.L15@GOTOFF
# ----------------------
	.text
	.globl	gzopen
	.type	gzopen, @function
gzopen:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $12, %esp
	pushl     12(%ebp)
	pushl     $-1
	pushl     8(%ebp)
	call      gz_open
.L00000013:
	leave     
	ret       
	.size	gzopen, .-gzopen
# ----------------------
.L00000015:
	.p2align 3
# ----------------------
	.globl	gzopen64
	.type	gzopen64, @function
gzopen64:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $12, %esp
	pushl     12(%ebp)
	pushl     $-1
	pushl     8(%ebp)
	call      gz_open
.L0000002B:
	leave     
	ret       
	.size	gzopen64, .-gzopen64
# ----------------------
.L0000002D:
	.p2align 3
# ----------------------
	.globl	gzdopen
	.type	gzdopen, @function
gzdopen:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %esi
	call      .L00000041
.L00000041:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	cmpl      $-1, %esi
	je        .L00000094
.L0000004D:
	subl      $12, %esp
	pushl     $19
	call      malloc@PLT
.L00000057:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00000094
.L00000060:
	pushl     %esi
	leal      .LC1@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     $19
	pushl     %eax
	call      snprintf@PLT
.L00000070:
	addl      $12, %esp
	pushl     12(%ebp)
	pushl     %esi
	pushl     %edi
	call      gz_open
.L0000007D:
	movl      %eax, %esi
	movl      %edi, (%esp)
	call      free@PLT
.L00000087:
	movl      %esi, %eax
.L00000089:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000091:
	.p2align 2
.L00000094:
	xorl      %eax, %eax
	jmp       .L00000089
	.size	gzdopen, .-gzdopen
# ----------------------
	.globl	gzbuffer
	.type	gzbuffer, @function
gzbuffer:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	testl     %ecx, %ecx
	pushl     %esi
	movl      12(%ebp), %eax
	movl      $-1, %esi
	je        .L000000C3
.L000000AB:
	movl      16(%ecx), %edx
	cmpl      $7247, %edx
	je        .L000000CC
.L000000B6:
	cmpl      $31153, %edx
	movl      $-1, %esi
	je        .L000000CC
.L000000C3:
	movl      %esi, %eax
	movl      (%esp), %esi
	leave     
	ret       
.L000000CA:
	.p2align 2
.L000000CC:
	movl      28(%ecx), %esi
	testl     %esi, %esi
	je        .L000000DC
.L000000D3:
	movl      $-1, %esi
	jmp       .L000000C3
.L000000DA:
	.p2align 2
.L000000DC:
	cmpl      $1, %eax
	ja        .L000000E6
.L000000E1:
	movl      $2, %eax
.L000000E6:
	movl      %eax, 32(%ecx)
	xorl      %esi, %esi
	jmp       .L000000C3
	.size	gzbuffer, .-gzbuffer
# ----------------------
.L000000ED:
	.p2align 3
# ----------------------
	.globl	gzrewind
	.type	gzrewind, @function
gzrewind:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	movl      8(%ebp), %esi
	pushl     %ebx
	call      .L000000FD
.L000000FD:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %esi, %esi
	movl      $-1, %edx
	je        .L0000011B
.L0000010D:
	cmpl      $7247, 16(%esi)
	je        .L00000124
.L00000116:
	movl      $-1, %edx
.L0000011B:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
.L00000124:
	movl      88(%esi), %eax
	testl     %eax, %eax
	je        .L00000130
.L0000012B:
	cmpl      $-5, %eax
	jne       .L00000116
.L00000130:
	pushl     $0
	pushl     56(%esi)
	pushl     52(%esi)
	pushl     20(%esi)
	call      lseek64@PLT
.L00000140:
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      $-1, %edx
	je        .L0000011B
.L0000014D:
	cmpl      $7247, 16(%esi)
	movl      $0, (%esi)
	je        .L0000018A
.L0000015C:
	movl      $0, 84(%esi)
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     %esi
	call      gz_error
.L0000016E:
	addl      $16, %esp
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
	movl      $0, 100(%esi)
	xorl      %edx, %edx
	jmp       .L0000011B
.L0000018A:
	movl      $0, 60(%esi)
	movl      $0, 64(%esi)
	movl      $0, 48(%esi)
	jmp       .L0000015C
	.size	gzrewind, .-gzrewind
# ----------------------
.L000001A1:
	.p2align 2
# ----------------------
	.globl	gzseek64
	.type	gzseek64, @function
gzseek64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      8(%ebp), %edx
	call      .L000001B5
.L000001B5:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %edx, %edx
	movl      12(%ebp), %esi
	movl      16(%ebp), %edi
	movl      20(%ebp), %ecx
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L000001F9
.L000001D7:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	cmpl      $7247, %eax
	je        .L00000208
.L000001E4:
	cmpl      $31153, %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L00000208
.L000001F9:
	movl      -24(%ebp), %eax
	movl      -20(%ebp), %edx
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L00000207:
	.p2align 3
.L00000208:
	movl      8(%ebp), %edx
	movl      88(%edx), %eax
	testl     %eax, %eax
	je        .L00000225
.L00000212:
	cmpl      $-5, %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	jne       .L000001F9
.L00000225:
	cmpl      $1, %ecx
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	ja        .L000001F9
.L00000238:
	testl     %ecx, %ecx
	jne       .L000003E8
.L00000240:
	movl      8(%ebp), %eax
	subl      8(%eax), %esi
	sbbl      12(%eax), %edi
.L00000249:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %edx
	cmpl      $7247, %edx
	movl      $0, 84(%ecx)
	movl      %edx, -44(%ebp)
	movl      %edx, -28(%ebp)
	je        .L00000344
.L00000268:
	testl     %edi, %edi
	js        .L000002D8
.L0000026C:
	cmpl      $7247, -44(%ebp)
	je        .L0000029F
.L00000275:
	movl      %edi, %edx
	orl       %esi, %edx
	je        .L0000028B
.L0000027B:
	movl      8(%ebp), %eax
	movl      $1, 84(%eax)
	movl      %esi, 76(%eax)
	movl      %edi, 80(%eax)
.L0000028B:
	movl      8(%ebp), %edx
	addl      8(%edx), %esi
	adcl      12(%edx), %edi
	movl      %esi, -24(%ebp)
	movl      %edi, -20(%ebp)
	jmp       .L000001F9
.L0000029F:
	xorl      %ecx, %ecx
	movl      8(%ebp), %edx
	cmpl      %edi, %ecx
	movl      (%edx), %eax
	jl        .L000002CF
.L000002AA:
	jg        .L000002B0
.L000002AC:
	cmpl      %esi, %eax
	jbe       .L000002CF
.L000002B0:
	movl      8(%ebp), %ecx
	movl      %esi, %eax
	movl      (%ecx), %edx
.L000002B7:
	movl      8(%ebp), %ecx
	subl      %eax, %edx
	movl      %edx, (%ecx)
	addl      %eax, 4(%ecx)
	xorl      %edx, %edx
	addl      %eax, 8(%ecx)
	adcl      %edx, 12(%ecx)
	subl      %eax, %esi
	sbbl      %edx, %edi
	jmp       .L00000275
.L000002CF:
	movl      8(%ebp), %ecx
	movl      (%ecx), %eax
	movl      %eax, %edx
	jmp       .L000002B7
.L000002D8:
	cmpl      $7247, -28(%ebp)
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	jne       .L000001F9
.L000002F3:
	movl      8(%ebp), %edx
	addl      8(%edx), %esi
	adcl      12(%edx), %edi
	testl     %edi, %edi
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	js        .L000001F9
.L00000312:
	subl      $12, %esp
	pushl     8(%ebp)
	call      gzrewind@PLT
.L0000031D:
	addl      $16, %esp
	incl      %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L000001F9
.L00000335:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	movl      %eax, -44(%ebp)
	jmp       .L0000026C
.L00000343:
	.p2align 2
.L00000344:
	cmpl      $1, 48(%ecx)
	jne       .L00000268
.L0000034E:
	movl      8(%ecx), %eax
	addl      %esi, %eax
	movl      12(%ecx), %edx
	adcl      %edi, %edx
	testl     %edx, %edx
	js        .L00000268
.L00000360:
	pushl     $1
	movl      (%ecx), %eax
	xorl      %edx, %edx
	movl      %eax, -40(%ebp)
	movl      %esi, %eax
	subl      -40(%ebp), %eax
	movl      %edx, -36(%ebp)
	movl      %edi, %edx
	sbbl      -36(%ebp), %edx
	pushl     %edx
	pushl     %eax
	pushl     20(%ecx)
	call      lseek64@PLT
.L00000380:
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L000001F9
.L0000039A:
	movl      8(%ebp), %ecx
	movl      $0, (%ecx)
	movl      $0, 60(%ecx)
	movl      $0, 64(%ecx)
	movl      $0, 84(%ecx)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %ecx
	call      gz_error
.L000003C3:
	movl      8(%ebp), %ecx
	movl      8(%ecx), %eax
	addl      %esi, %eax
	movl      12(%ecx), %edx
	adcl      %edi, %edx
	movl      $0, 100(%ecx)
	movl      %eax, 8(%ecx)
	movl      %edx, 12(%ecx)
	movl      %eax, -24(%ebp)
	movl      %edx, -20(%ebp)
	jmp       .L000001F9
.L000003E8:
	movl      8(%ebp), %eax
	movl      84(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000249
.L000003F6:
	addl      76(%eax), %esi
	adcl      80(%eax), %edi
	jmp       .L00000249
	.size	gzseek64, .-gzseek64
# ----------------------
.L00000401:
	.p2align 2
# ----------------------
	.globl	gzseek
	.type	gzseek, @function
gzseek:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      12(%ebp), %eax
	pushl     16(%ebp)
	cltd      
	pushl     %edx
	pushl     %eax
	call      .L0000041B
.L0000041B:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     8(%ebp)
	call      gzseek64@PLT
.L0000042A:
	movl      %edx, %edi
	movl      %eax, %esi
	cltd      
	movl      %edi, %ecx
	xorl      %esi, %eax
	xorl      %edx, %ecx
	addl      $16, %esp
	orl       %eax, %ecx
	sete      %dl
	movzbl    %dl, %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	decl      %eax
	orl       %esi, %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	gzseek, .-gzseek
# ----------------------
.L0000044B:
	.p2align 2
# ----------------------
	.globl	gztell64
	.type	gztell64, @function
gztell64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	movl      8(%ebp), %esi
	testl     %esi, %esi
	movl      $-1, %eax
	movl      $-1, %edx
	je        .L0000047E
.L00000461:
	movl      16(%esi), %ecx
	cmpl      $7247, %ecx
	je        .L00000484
.L0000046C:
	cmpl      $31153, %ecx
	movl      $-1, %eax
	movl      $-1, %edx
	je        .L00000484
.L0000047E:
	movl      (%esp), %esi
	leave     
	ret       
.L00000483:
	.p2align 2
.L00000484:
	movl      84(%esi), %ecx
	testl     %ecx, %ecx
	movl      8(%esi), %eax
	movl      12(%esi), %edx
	je        .L0000047E
.L00000491:
	addl      76(%esi), %eax
	adcl      80(%esi), %edx
	jmp       .L0000047E
	.size	gztell64, .-gztell64
# ----------------------
.L00000499:
	.p2align 2
# ----------------------
	.globl	gztell
	.type	gztell, @function
gztell:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	call      .L000004AA
.L000004AA:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     8(%ebp)
	call      gztell64@PLT
.L000004B9:
	movl      %edx, %edi
	movl      %eax, %esi
	cltd      
	movl      %edi, %ecx
	xorl      %esi, %eax
	xorl      %edx, %ecx
	addl      $16, %esp
	orl       %eax, %ecx
	sete      %dl
	movzbl    %dl, %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	decl      %eax
	orl       %esi, %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	gztell, .-gztell
# ----------------------
.L000004DA:
	.p2align 2
# ----------------------
	.globl	gzoffset64
	.type	gzoffset64, @function
gzoffset64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	call      .L000004ED
.L000004ED:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %eax, %eax
	movl      $-1, %edx
	movl      $-1, %ecx
	je        .L00000520
.L00000502:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	cmpl      $7247, %eax
	je        .L0000052C
.L0000050F:
	cmpl      $31153, %eax
	movl      $-1, %edx
	movl      $-1, %ecx
	je        .L0000052C
.L00000520:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	movl      %ecx, %edx
	leave     
	ret       
.L0000052C:
	pushl     $1
	pushl     $0
	pushl     $0
	movl      8(%ebp), %eax
	pushl     20(%eax)
	call      lseek64@PLT
.L0000053D:
	movl      %eax, %esi
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      %edx, %edi
	movl      $-1, %ecx
	movl      $-1, %edx
	je        .L00000520
.L00000553:
	movl      8(%ebp), %eax
	cmpl      $7247, 16(%eax)
	je        .L00000565
.L0000055F:
	movl      %esi, %edx
	movl      %edi, %ecx
	jmp       .L00000520
.L00000565:
	movl      100(%eax), %edx
	xorl      %ecx, %ecx
	subl      %edx, %esi
	sbbl      %ecx, %edi
	jmp       .L0000055F
	.size	gzoffset64, .-gzoffset64
# ----------------------
	.globl	gzoffset
	.type	gzoffset, @function
gzoffset:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	call      .L0000057E
.L0000057E:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     8(%ebp)
	call      gzoffset64@PLT
.L0000058D:
	movl      %edx, %edi
	movl      %eax, %esi
	cltd      
	movl      %edi, %ecx
	xorl      %esi, %eax
	xorl      %edx, %ecx
	addl      $16, %esp
	orl       %eax, %ecx
	sete      %dl
	movzbl    %dl, %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	decl      %eax
	orl       %esi, %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	gzoffset, .-gzoffset
# ----------------------
.L000005AE:
	.p2align 3
# ----------------------
	.globl	gzeof
	.type	gzeof, @function
gzeof:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L000005D1
.L000005BC:
	movl      16(%ecx), %edx
	cmpl      $7247, %edx
	je        .L000005D4
.L000005C7:
	xorl      %eax, %eax
	cmpl      $31153, %edx
	je        .L000005D4
.L000005D1:
	leave     
	ret       
.L000005D3:
	.p2align 2
.L000005D4:
	cmpl      $7247, 16(%ecx)
	je        .L000005E4
.L000005DD:
	xorl      %eax, %eax
	jmp       .L000005D1
.L000005E1:
	.p2align 2
.L000005E4:
	movl      64(%ecx), %eax
	jmp       .L000005D1
	.size	gzeof, .-gzeof
# ----------------------
.L000005E9:
	.p2align 2
# ----------------------
	.globl	gzerror
	.type	gzerror, @function
gzerror:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	pushl     %esi
	pushl     %ebx
	xorl      %eax, %eax
	call      .L000005FB
.L000005FB:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %ecx, %ecx
	movl      12(%ebp), %esi
	je        .L0000061E
.L00000609:
	movl      16(%ecx), %edx
	cmpl      $7247, %edx
	je        .L00000624
.L00000614:
	xorl      %eax, %eax
	cmpl      $31153, %edx
	je        .L00000624
.L0000061E:
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L00000622:
	.p2align 2
.L00000624:
	testl     %esi, %esi
	je        .L0000062D
.L00000628:
	movl      88(%ecx), %edx
	movl      %edx, (%esi)
.L0000062D:
	cmpl      $-4, 88(%ecx)
	je        .L00000644
.L00000633:
	movl      92(%ecx), %eax
	testl     %eax, %eax
	jne       .L0000061E
.L0000063A:
	leal      .LC2@GOTOFF(%ebx), %eax
	jmp       .L0000061E
.L00000642:
	.p2align 2
.L00000644:
	leal      .LC3@GOTOFF(%ebx), %eax
	jmp       .L0000061E
	.size	gzerror, .-gzerror
# ----------------------
	.globl	gzclearerr
	.type	gzclearerr, @function
gzclearerr:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	je        .L0000066A
.L00000659:
	movl      16(%edx), %eax
	cmpl      $7247, %eax
	je        .L0000067C
.L00000663:
	cmpl      $31153, %eax
	je        .L0000066C
.L0000066A:
	leave     
	ret       
.L0000066C:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %edx
	call      gz_error
.L00000677:
	jmp       .L0000066A
.L00000679:
	.p2align 2
.L0000067C:
	movl      $0, 60(%edx)
	movl      $0, 64(%edx)
	jmp       .L0000066C
	.size	gzclearerr, .-gzclearerr
# ----------------------
	.hidden	gz_error
	.globl	gz_error
	.type	gz_error, @function
gz_error:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %esi
	movl      92(%esi), %eax
	call      .L000006A0
.L000006A0:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	testl     %eax, %eax
	movl      12(%ebp), %edi
	je        .L000006C7
.L000006AE:
	cmpl      $-4, 88(%esi)
	je        .L000006C0
.L000006B4:
	subl      $12, %esp
	pushl     %eax
	call      free@PLT
.L000006BD:
	addl      $16, %esp
.L000006C0:
	movl      $0, 92(%esi)
.L000006C7:
	testl     %edi, %edi
	je        .L000006D6
.L000006CB:
	cmpl      $-5, %edi
	je        .L000006D6
.L000006D0:
	movl      $0, (%esi)
.L000006D6:
	movl      16(%ebp), %edx
	testl     %edx, %edx
	movl      %edi, 88(%esi)
	je        .L00000752
.L000006E0:
	cmpl      $-4, %edi
	je        .L00000752
.L000006E5:
	movl      24(%esi), %edi
	xorl      %eax, %eax
	cld       
	movl      $-1, %ecx
	repnz scasb     
	movl      %ecx, %edx
	movl      16(%ebp), %edi
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	subl      $12, %esp
	subl      %edx, %ecx
	pushl     %ecx
	call      malloc@PLT
.L0000070B:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	movl      %eax, 92(%esi)
	je        .L0000075C
.L00000717:
	subl      $8, %esp
	pushl     16(%ebp)
	leal      .LC4@GOTOFF(%ebx), %edi
	pushl     %edi
	pushl     24(%esi)
	leal      .LC5@GOTOFF(%ebx), %ecx
	pushl     %ecx
	movl      24(%esi), %edi
	cld       
	xorl      %eax, %eax
	movl      $-1, %ecx
	repnz scasb     
	movl      %ecx, %esi
	movl      16(%ebp), %edi
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	subl      %esi, %ecx
	pushl     %ecx
	pushl     %edx
	call      snprintf@PLT
.L00000752:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0000075A:
	.p2align 2
.L0000075C:
	movl      $-4, 88(%esi)
	jmp       .L00000752
	.size	gz_error, .-gz_error
# ----------------------
.L00000765:
	.p2align 3
# ----------------------
	.local	gz_open
	.type	gz_open, @function
gz_open:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %edx
	call      .L00000779
.L00000779:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	xorl      %eax, %eax
	testl     %edx, %edx
	movl      16(%ebp), %edi
	movl      $0, -16(%ebp)
	je        .L000008F3
.L00000794:
	subl      $12, %esp
	pushl     $152
	call      malloc@PLT
.L000007A1:
	movl      %eax, %esi
	addl      $16, %esp
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L000008F3
.L000007B0:
	movl      $0, 28(%esi)
	movl      $8192, 32(%esi)
	movl      $0, 92(%esi)
	movl      $0, 16(%esi)
	movl      $-1, 68(%esi)
	movl      $0, 72(%esi)
	movl      $0, 44(%esi)
	movb      (%edi), %dl
	testb     %dl, %dl
	je        .L00000806
.L000007E7:
	.p2align 3
.L000007E8:
	leal      -48(%edx), %ecx
	cmpb      $9, %cl
	ja        .L000009B4
.L000007F4:
	movsbl    %dl, %ecx
	subl      $48, %ecx
	movl      %ecx, 68(%esi)
.L8:
	incl      %edi
	movb      (%edi), %cl
	testb     %cl, %cl
	movb      %cl, %dl
	jne       .L000007E8
.L00000806:
	movl      16(%esi), %eax
	testl     %eax, %eax
	je        .L263
.L00000811:
	cmpl      $7247, %eax
	je        .L000009A1
.L0000081C:
	xorl      %eax, %eax
	movl      8(%ebp), %edi
	cld       
	movl      $-1, %ecx
	repnz scasb     
	movl      %ecx, -20(%ebp)
	subl      $12, %esp
	notl      -20(%ebp)
	pushl     -20(%ebp)
	call      malloc@PLT
.L0000083A:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 24(%esi)
	je        .L263
.L00000848:
	pushl     8(%ebp)
	leal      .LC0@GOTOFF(%ebx), %edi
	pushl     %edi
	pushl     -20(%ebp)
	pushl     %eax
	call      snprintf@PLT
.L0000085B:
	movl      16(%esi), %edx
	addl      $16, %esp
	cmpl      $7247, %edx
	je        .L0000098F
.L0000086D:
	xorl      %eax, %eax
	cmpl      $0, -16(%ebp)
	setne     %al
	decl      %eax
	andl      $-128, %eax
	addl      $193, %eax
	cmpl      $31153, %edx
	je        .L00000985
.L0000088B:
	orl       $33792, %eax
.L00000890:
	cmpl      $-1, 12(%ebp)
	jle       .L0000096E
.L0000089A:
	movl      12(%ebp), %eax
.L0000089D:
	movl      %eax, 20(%esi)
	incl      %eax
	je        .L00000955
.L000008A7:
	movl      16(%esi), %eax
	cmpl      $1, %eax
	je        .L00000944
.L000008B3:
	cmpl      $7247, %eax
	je        .L00000912
.L000008BA:
	cmpl      $7247, %eax
	movl      $0, (%esi)
	je        .L000008FB
.L000008C7:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %esi
	movl      $0, 84(%esi)
	call      gz_error
.L000008D9:
	addl      $16, %esp
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
	movl      $0, 100(%esi)
	movl      %esi, %eax
.L000008F3:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L000008FB:
	movl      $0, 60(%esi)
	movl      $0, 64(%esi)
	movl      $0, 48(%esi)
	jmp       .L000008C7
.L00000912:
	pushl     $1
	pushl     $0
	pushl     $0
	pushl     20(%esi)
	call      lseek64@PLT
.L00000920:
	movl      %eax, 52(%esi)
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      %edx, 56(%esi)
	jne       .L0000093C
.L0000092E:
	movl      $0, 52(%esi)
	movl      $0, 56(%esi)
.L0000093C:
	movl      16(%esi), %eax
	jmp       .L000008BA
.L00000944:
	movl      $31153, 16(%esi)
	movl      $31153, %eax
	jmp       .L000008B3
.L00000955:
	subl      $12, %esp
	pushl     24(%esi)
	call      free@PLT
.L00000960:
	popl      %eax
	.p2align 2
.L00000964:
	pushl     %esi
	call      free@PLT
.L0000096A:
	xorl      %eax, %eax
	jmp       .L000008F3
.L0000096E:
	pushl     %edx
	pushl     $438
	pushl     %eax
	pushl     8(%ebp)
	call      open@PLT
.L0000097D:
	addl      $16, %esp
	jmp       .L0000089D
.L00000985:
	orl       $33280, %eax
	jmp       .L00000890
.L0000098F:
	movl      $32768, %eax
	jmp       .L00000890
.L00000999:
	.p2align 2
.L263:
	subl      $12, %esp
	jmp       .L00000964
.L000009A1:
	movl      44(%esi), %eax
	testl     %eax, %eax
	jne       .L263
.L000009A8:
	movl      $1, 44(%esi)
	jmp       .L0000081C
.L000009B4:
	movsbl    %dl, %eax
	subl      $43, %eax
	cmpl      $77, %eax
	ja        .L8
.L000009C3:
	movl      .LC00000000@GOTOFF(%ebx,%eax,4), %edx
	addl      %ebx, %edx
	jmp       *%edx
.L10:
	movl      $7247, 16(%esi)
	jmp       .L8
.L19:
	movl      $4, 72(%esi)
	jmp       .L8
.L18:
	movl      $3, 72(%esi)
	jmp       .L8
.L20:
	movl      $1, 44(%esi)
	jmp       .L8
.L12:
	movl      $1, 16(%esi)
	jmp       .L8
.L16:
	movl      $1, 72(%esi)
	jmp       .L8
.L17:
	movl      $2, 72(%esi)
	jmp       .L8
.L11:
	movl      $31153, 16(%esi)
	jmp       .L8
.L15:
	movl      $1, -16(%ebp)
	jmp       .L8
	.size	gz_open, .-gz_open
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
