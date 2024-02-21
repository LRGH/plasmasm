	.file	"minigzip.c"
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"%s: %s\n"
.LC00000008.str1.1:
	.string	"fread"
.LC0000000E.str1.1:
	.string	"failed gzclose"
.LC0000001D.str1.1:
	.string	"%s: filename too long\n"
.LC00000034.str1.1:
	.string	"%s%s"
.LC00000039.str1.1:
	.string	".gz"
.LC0000003D.str1.1:
	.string	"rb"
.LC00000040.str1.1:
	.string	"%s: can't gzopen %s\n"
.LC00000055.str1.1:
	.string	"failed fwrite"
.LC00000063.str1.1:
	.string	"failed fclose"
.LC00000071.str1.1:
	.string	"%s"
.LC00000074.str1.1:
	.string	"wb"
.LC00000077.str1.1:
	.string	"wb6 "
.LC0000007C.str1.1:
	.string	"gunzip"
.LC00000083.str1.1:
	.string	"zcat"
.LC00000088.str1.1:
	.string	"-c"
.LC0000008B.str1.1:
	.string	"-d"
.LC0000008E.str1.1:
	.string	"-f"
.LC00000091.str1.1:
	.string	"-h"
.LC00000094.str1.1:
	.string	"-r"
.LC00000097.str1.1:
	.string	"can't gzdopen stdin"
.LC000000AB.str1.1:
	.string	"can't gzdopen stdout"
# ----------------------
	.text
	.globl	error
	.type	error, @function
error:
	subq      $8, %rsp                                 ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
	movq      %rdi, %r8                                ##  DEAD:r8;rax;rcx;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rdi;rdx;rsi
	movl      $.LC00000000.str1.1, %edx                ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk@PLT                        ##  DEAD:
.L00000026:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
	.size	error, .-error
# ----------------------
	.globl	gz_compress
	.type	gz_compress, @function
gz_compress:
	pushq     %r14                                     ##  DEAD:rax;rcx;rdx;rflags
	pushq     %r13                                     ##  DEAD:rax;rcx;rdx;rflags
	pushq     %r12                                     ##  DEAD:rax;rcx;rdx;rflags
	movq      %rsi, %r12                               ##  DEAD:r12;rax;rcx;rdx;rflags
	pushq     %rbp                                     ##  DEAD:rax;rcx;rdx;rflags;rsi
	pushq     %rbx                                     ##  DEAD:rax;rbp;rcx;rdx;rflags;rsi
	movq      %rdi, %rbx                               ##  DEAD:rax;rbp;rbx;rcx;rdx;rflags;rsi
	subq      $16416, %rsp                             ##  DEAD:rax;rbp;rcx;rdi;rdx;rflags;rsi
	movq      %fs:40, %rax                             ##  DEAD:rax;rbp;rcx;rdi;rdx;rsi
	movq      %rax, 16408(%rsp)                        ##  DEAD:rbp;rcx;rdi;rdx;rsi
	xorl      %eax, %eax                               ##  DEAD:rax;rbp;rcx;rdi;rdx;rsi
	leaq      16(%rsp), %rbp                           ##  DEAD:rbp;rcx;rdi;rdx;rsi
	.p2align 3
.L00000060:
	movq      %rbx, %rcx                               ##  DEAD:rcx;rdi;rdx;rsi
	movl      $16384, %edx                             ##  DEAD:rdi;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      fread@PLT                                ##  DEAD:
.L00000075:
	movq      %rbx, %rdi                               ##  DEAD:r14;rdi
	movq      %rax, %r14                               ##  DEAD:r14
	call      ferror@PLT                               ##  DEAD:
.L00000080:
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L00000128                               ##  DEAD:
.L00000088:
	testl     %r14d, %r14d                             ##  DEAD:rflags
	je        .L000000E0                               ##  DEAD:
.L0000008D:
	movl      %r14d, %edx                              ##  DEAD:rdi;rdx;rsi
	movq      %rbp, %rsi                               ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzwrite@PLT                              ##  DEAD:
.L0000009B:
	cmpl      %r14d, %eax                              ##  DEAD:rflags
	je        .L00000060                               ##  DEAD:
.L000000A0:
	leaq      12(%rsp), %rsi                           ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzerror@PLT                              ##  DEAD:
.L000000AD:
	movq      %rax, %r8                                ##  DEAD:r8;rcx;rdi;rdx;rsi
.L000000B0:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC00000000.str1.1, %edx                ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk@PLT                        ##  DEAD:
.L000000CF:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L000000D9:
	.p2align 4
.L000000E0:
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      fclose@PLT                               ##  DEAD:
.L000000E8:
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzclose@PLT                              ##  DEAD:
.L000000F0:
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L00000120                               ##  DEAD:
.L000000F4:
	movq      16408(%rsp), %rax                        ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L0000013C                               ##  DEAD:
.L00000107:
	addq      $16416, %rsp                             ##  DEAD:r12;r13;r14;rbp;rbx;rflags
	popq      %rbx                                     ##  DEAD:r12;r13;r14;rbp;rbx
	popq      %rbp                                     ##  DEAD:r12;r13;r14;rbp
	popq      %r12                                     ##  DEAD:r12;r13;r14
	popq      %r13                                     ##  DEAD:r13;r14
	popq      %r14                                     ##  DEAD:r14
	ret                                                ##  DEAD:
.L00000117:
	.p2align 4
.L00000120:
	movl      $.LC0000000E.str1.1, %r8d                ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
	jmp       .L000000B0                               ##  DEAD:rax;rcx;rdi;rdx;rsi
.L00000128:
	movl      $.LC00000008.str1.1, %edi                ##  DEAD:rdi
	call      perror@PLT                               ##  DEAD:
.L00000132:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L0000013C:
	call      __stack_chk_fail@PLT                     ##  DEAD:
	.size	gz_compress, .-gz_compress
# ----------------------
.L00000141:
	.p2align 4
# ----------------------
	.globl	file_compress
	.type	file_compress, @function
file_compress:
	movq      %rbx, -32(%rsp)                          ##  DEAD:rax;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rax;rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:r12;rax;rbx;rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:r12;rax;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:r12;rax;rflags
	subq      $1096, %rsp                              ##  DEAD:r12;rax;rflags
	movq      %fs:40, %rax                             ##  DEAD:r12;rax
	movq      %rax, 1048(%rsp)                         ##  DEAD:r12
	xorl      %eax, %eax                               ##  DEAD:r12;rax
	movq      %rsi, %r12                               ##  DEAD:r12
	call      strlen@PLT                               ##  DEAD:
.L00000189:
	addq      $3, %rax                                 ##  DEAD:rflags
	cmpq      $1023, %rax                              ##  DEAD:rflags
	ja        .L0000023F                               ##  DEAD:
.L00000199:
	leaq      16(%rsp), %rbp                           ##  DEAD:r8;r9;rax;rbp;rcx;rdi;rdx;rsi
	movq      %rbx, %r9                                ##  DEAD:r8;r9;rax;rcx;rdi;rdx;rsi
	movl      $.LC00000034.str1.1, %r8d                ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
	movl      $1024, %ecx                              ##  DEAD:rax;rcx;rdi;rdx;rsi
	movl      $1, %edx                                 ##  DEAD:rax;rdi;rdx;rsi
	movl      $1024, %esi                              ##  DEAD:rax;rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rax;rdi
	xorl      %eax, %eax                               ##  DEAD:rax
	movq      $.LC00000039.str1.1, (%rsp)              ##  DEAD:
	call      __snprintf_chk@PLT                       ##  DEAD:
.L000001C8:
	movl      $.LC0000003D.str1.1, %esi                ##  DEAD:rdi;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      fopen@PLT                                ##  DEAD:
.L000001D5:
	testq     %rax, %rax                               ##  DEAD:r13;rflags
	movq      %rax, %r13                               ##  DEAD:r13
	je        .L00000297                               ##  DEAD:
.L000001E1:
	movq      %r12, %rsi                               ##  DEAD:rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      gzopen@PLT                               ##  DEAD:
.L000001EC:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L0000026D                               ##  DEAD:
.L000001F1:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rdx;rflags;rsi
	movq      %r13, %rdi                               ##  DEAD:rax;rcx;rdi;rdx;rflags
	call      gz_compress@PLT                          ##  DEAD:rax;rcx;rdx;rflags
.L000001FC:
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      unlink@PLT                               ##  DEAD:
.L00000204:
	movq      1048(%rsp), %rax                         ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L00000268                               ##  DEAD:
.L00000217:
	movq      1064(%rsp), %rbx                         ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      1072(%rsp), %rbp                         ##  DEAD:r12;r13;rbp;rflags
	movq      1080(%rsp), %r12                         ##  DEAD:r12;r13;rflags
	movq      1088(%rsp), %r13                         ##  DEAD:r13;rflags
	addq      $1096, %rsp                              ##  DEAD:rflags
	ret                                                ##  DEAD:
.L0000023F:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC0000001D.str1.1, %edx                ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk@PLT                        ##  DEAD:
.L0000025E:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L00000268:
	call      __stack_chk_fail@PLT                     ##  DEAD:
.L0000026D:
	movq      stderr(%rip), %rdi                       ##  DEAD:r8;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:r8;rcx;rdx;rsi
	movq      %rbp, %r8                                ##  DEAD:r8;rdx;rsi
	movl      $.LC00000040.str1.1, %edx                ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      __fprintf_chk@PLT                        ##  DEAD:
.L0000028D:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L00000297:
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      perror@PLT                               ##  DEAD:
.L0000029F:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
	.size	file_compress, .-file_compress
# ----------------------
.L000002A9:
	.p2align 4
# ----------------------
	.globl	gz_uncompress
	.type	gz_uncompress, @function
gz_uncompress:
	pushq     %r13                                     ##  DEAD:rax;rdx;rflags
	movq      %rsi, %r13                               ##  DEAD:r13;rax;rdx;rflags
	pushq     %r12                                     ##  DEAD:rax;rdx;rflags;rsi
	movq      %rdi, %r12                               ##  DEAD:r12;rax;rdx;rflags;rsi
	pushq     %rbp                                     ##  DEAD:rax;rdi;rdx;rflags;rsi
	pushq     %rbx                                     ##  DEAD:rax;rbp;rdi;rdx;rflags;rsi
	subq      $16424, %rsp                             ##  DEAD:rax;rbp;rdi;rdx;rflags;rsi
	movq      %fs:40, %rax                             ##  DEAD:rax;rbp;rdi;rdx;rsi
	movq      %rax, 16408(%rsp)                        ##  DEAD:rbp;rdi;rdx;rsi
	xorl      %eax, %eax                               ##  DEAD:rax;rbp;rdi;rdx;rsi
	leaq      16(%rsp), %rbp                           ##  DEAD:rbp;rdi;rdx;rsi
.L000002DB:
	movl      $16384, %edx                             ##  DEAD:rdi;rdx;rsi
	movq      %rbp, %rsi                               ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzread@PLT                               ##  DEAD:
.L000002EB:
	cmpl      $0, %eax                                 ##  DEAD:rbx;rflags
	movl      %eax, %ebx                               ##  DEAD:rbx
	jl        .L00000340                               ##  DEAD:
.L000002F2:
	je        .L00000358                               ##  DEAD:
.L000002F4:
	movl      %eax, %edx                               ##  DEAD:rcx;rdi;rdx;rsi
	movq      %r13, %rcx                               ##  DEAD:rcx;rdi;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      fwrite@PLT                               ##  DEAD:
.L00000306:
	cmpl      %eax, %ebx                               ##  DEAD:rflags
	je        .L000002DB                               ##  DEAD:
.L0000030A:
	movl      $.LC00000055.str1.1, %r8d                ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
.L00000310:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC00000000.str1.1, %edx                ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk@PLT                        ##  DEAD:
.L0000032F:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L00000339:
	.p2align 4
.L00000340:
	leaq      12(%rsp), %rsi                           ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzerror@PLT                              ##  DEAD:
.L0000034D:
	movq      %rax, %r8                                ##  DEAD:r8;rcx;rdi;rdx;rsi
	jmp       .L00000310                               ##  DEAD:rax;rcx;rdi;rdx;rsi
.L00000352:
	.p2align 3
.L00000358:
	movq      %r13, %rdi                               ##  DEAD:rdi
	call      fclose@PLT                               ##  DEAD:
.L00000360:
	testl     %eax, %eax                               ##  DEAD:r8;rflags
	movl      $.LC00000063.str1.1, %r8d                ##  DEAD:r8
	jne       .L00000310                               ##  DEAD:
.L0000036A:
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzclose@PLT                              ##  DEAD:
.L00000372:
	testl     %eax, %eax                               ##  DEAD:r8;rflags
	movl      $.LC0000000E.str1.1, %r8d                ##  DEAD:r8
	jne       .L00000310                               ##  DEAD:
.L0000037C:
	movq      16408(%rsp), %rax                        ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L0000039D                               ##  DEAD:
.L0000038F:
	addq      $16424, %rsp                             ##  DEAD:r12;r13;rbp;rbx;rflags
	popq      %rbx                                     ##  DEAD:r12;r13;rbp;rbx
	popq      %rbp                                     ##  DEAD:r12;r13;rbp
	popq      %r12                                     ##  DEAD:r12;r13
	popq      %r13                                     ##  DEAD:r13
	ret                                                ##  DEAD:
.L0000039D:
	call      __stack_chk_fail@PLT                     ##  DEAD:
	.size	gz_uncompress, .-gz_uncompress
# ----------------------
.L000003A2:
	.p2align 4
# ----------------------
	.globl	file_uncompress
	.type	file_uncompress, @function
file_uncompress:
	movq      %rbx, -32(%rsp)                          ##  DEAD:rax;rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rax;rflags
	movq      %rdi, %rbp                               ##  DEAD:rax;rbp;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rax;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:rax;rflags
	subq      $1080, %rsp                              ##  DEAD:rax;rflags
	movq      %fs:40, %rax                             ##  DEAD:rax
	movq      %rax, 1032(%rsp)                         ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	call      strlen@PLT                               ##  DEAD:
.L000003E6:
	movq      %rax, %rbx                               ##  DEAD:rbx;rflags
	addq      $3, %rax                                 ##  DEAD:rflags
	cmpq      $1023, %rax                              ##  DEAD:rflags
	ja        .L00000501                               ##  DEAD:
.L000003F9:
	xorl      %eax, %eax                               ##  DEAD:r12;r8;r9;rax;rcx;rdi;rdx;rsi
	movq      %rbp, %r9                                ##  DEAD:r12;r8;r9;rcx;rdi;rdx;rsi
	movl      $.LC00000071.str1.1, %r8d                ##  DEAD:r12;r8;rcx;rdi;rdx;rsi
	movl      $1024, %ecx                              ##  DEAD:r12;rcx;rdi;rdx;rsi
	movl      $1, %edx                                 ##  DEAD:r12;rdi;rdx;rsi
	movl      $1024, %esi                              ##  DEAD:r12;rdi;rsi
	movq      %rsp, %rdi                               ##  DEAD:r12;rdi
	movq      %rsp, %r12                               ##  DEAD:r12
	call      __snprintf_chk@PLT                       ##  DEAD:
.L0000041E:
	cmpq      $3, %rbx                                 ##  DEAD:rflags
	jbe       .L0000043B                               ##  DEAD:
.L00000424:
	leaq      -3(%rbp,%rbx), %rsi                      ##  DEAD:rcx;rdi;rsi
	movl      $.LC00000039.str1.1, %edi                ##  DEAD:rcx;rdi
	movl      $4, %ecx                                 ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	je        .L000004F0                               ##  DEAD:
.L0000043B:
	leaq      (%r12,%rbx), %rdi                        ##  DEAD:r13;r8;r9;rax;rcx;rdi;rdx;rflags;rsi
	movl      $1024, %esi                              ##  DEAD:r13;r8;r9;rax;rcx;rdx;rflags;rsi
	movl      $.LC00000039.str1.1, %r9d                ##  DEAD:r13;r8;r9;rax;rcx;rdx;rflags
	subq      %rbx, %rsi                               ##  DEAD:r13;r8;rax;rcx;rdx;rflags
	movl      $.LC00000071.str1.1, %r8d                ##  DEAD:r13;r8;rax;rbx;rcx;rdx
	movq      $-1, %rcx                                ##  DEAD:r13;rax;rbx;rcx;rdx
	movl      $1, %edx                                 ##  DEAD:r13;rax;rbx;rdx
	xorl      %eax, %eax                               ##  DEAD:r13;rax;rbx
	movq      %rbp, %r13                               ##  DEAD:r13;rbx
	movq      %rsp, %rbx                               ##  DEAD:rbx
	call      __snprintf_chk@PLT                       ##  DEAD:
.L0000046C:
	movl      $.LC0000003D.str1.1, %esi                ##  DEAD:rdi;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      gzopen@PLT                               ##  DEAD:
.L00000479:
	testq     %rax, %rax                               ##  DEAD:r12;rflags
	movq      %rax, %r12                               ##  DEAD:r12
	je        .L00000541                               ##  DEAD:
.L00000485:
	movl      $.LC00000074.str1.1, %esi                ##  DEAD:rdi;rsi
	movq      %r13, %rdi                               ##  DEAD:rdi
	call      fopen@PLT                                ##  DEAD:
.L00000492:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L0000052F                               ##  DEAD:
.L0000049B:
	movq      %rax, %rsi                               ##  DEAD:rdi;rdx;rflags;rsi
	movq      %r12, %rdi                               ##  DEAD:rax;rdi;rdx;rflags
	call      gz_uncompress@PLT                        ##  DEAD:rax;rdx;rflags
.L000004A6:
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      unlink@PLT                               ##  DEAD:
.L000004AE:
	movq      1032(%rsp), %rax                         ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L0000052A                               ##  DEAD:
.L000004C1:
	movq      1048(%rsp), %rbx                         ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      1056(%rsp), %rbp                         ##  DEAD:r12;r13;rbp;rflags
	movq      1064(%rsp), %r12                         ##  DEAD:r12;r13;rflags
	movq      1072(%rsp), %r13                         ##  DEAD:r13;rflags
	addq      $1080, %rsp                              ##  DEAD:rflags
	ret                                                ##  DEAD:
.L000004E9:
	.p2align 4
.L000004F0:
	movb      $0, -3(%rbx,%r12)                        ##  DEAD:r13;rdi;rsi
	movq      %rsp, %r13                               ##  DEAD:r13;rbx;rdi;rsi
	movq      %rbp, %rbx                               ##  DEAD:rbx;rdi;rsi
	jmp       .L0000046C                               ##  DEAD:rdi;rsi
.L00000501:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC0000001D.str1.1, %edx                ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk@PLT                        ##  DEAD:
.L00000520:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L0000052A:
	call      __stack_chk_fail@PLT                     ##  DEAD:
.L0000052F:
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      perror@PLT                               ##  DEAD:
.L00000537:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
.L00000541:
	movq      stderr(%rip), %rdi                       ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:r8;rax;rcx;rdx;rsi
	movq      %rbx, %r8                                ##  DEAD:r8;rax;rdx;rsi
	movl      $.LC00000040.str1.1, %edx                ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk@PLT                        ##  DEAD:
.L00000563:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit@PLT                                 ##  DEAD:
	.size	file_uncompress, .-file_uncompress
# ----------------------
.L0000056D:
	.p2align 3
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushq     %r15                                     ##  DEAD:r8;r9;rax;rcx;rdx;rflags
	movl      $.LC00000077.str1.1, %r9d                ##  DEAD:r15;r8;r9;rax;rcx;rdx;rflags
	movl      $20, %ecx                                ##  DEAD:r15;r8;rax;rcx;rdx;rflags
	movl      $1, %edx                                 ##  DEAD:r15;r8;rax;rdx;rflags
	movl      $.LC00000071.str1.1, %r8d                ##  DEAD:r15;r8;rax;rflags
	pushq     %r14                                     ##  DEAD:r15;rax;rflags
	pushq     %r13                                     ##  DEAD:r15;rax;rflags
	pushq     %r12                                     ##  DEAD:r15;rax;rflags
	pushq     %rbp                                     ##  DEAD:r15;rax;rflags
	movl      %edi, %ebp                               ##  DEAD:r15;rax;rbp;rflags
	pushq     %rbx                                     ##  DEAD:r15;rax;rdi;rflags
	movq      %rsi, %rbx                               ##  DEAD:r15;rax;rbx;rdi;rflags
	movl      $20, %esi                                ##  DEAD:r15;rax;rdi;rflags;rsi
	subq      $56, %rsp                                ##  DEAD:r15;rax;rdi;rflags
	leaq      16(%rsp), %r15                           ##  DEAD:r15;rax;rdi
	movq      %fs:40, %rax                             ##  DEAD:rax;rdi
	movq      %rax, 40(%rsp)                           ##  DEAD:rdi
	xorl      %eax, %eax                               ##  DEAD:rax;rdi
	movq      %r15, %rdi                               ##  DEAD:rdi
	call      __snprintf_chk@PLT                       ##  DEAD:
.L000005BB:
	movq      (%rbx), %rax                             ##  DEAD:r12;rax;rdi;rsi
	movl      $47, %esi                                ##  DEAD:r12;rdi;rsi
	movq      %rax, prog(%rip)                         ##  DEAD:r12;rdi
	movq      (%rbx), %r12                             ##  DEAD:r12;rdi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      strrchr@PLT                              ##  DEAD:
.L000005D5:
	leaq      1(%rax), %rdx                            ##  DEAD:r11;r9;rcx;rdi;rdx;rflags;rsi
	testq     %rax, %rax                               ##  DEAD:r11;r9;rcx;rdi;rflags;rsi
	movl      $.LC0000007C.str1.1, %edi                ##  DEAD:r11;r9;rcx;rdi;rsi
	movl      $7, %ecx                                 ##  DEAD:r11;r9;rcx;rsi
	movl      $1, %r11d                                ##  DEAD:r11;r9;rsi
	cmovne    %rdx, %r12                               ##  DEAD:r9;rsi
	subl      $1, %ebp                                 ##  DEAD:r9;rflags;rsi
	addq      $8, %rbx                                 ##  DEAD:r9;rflags;rsi
	movq      %r12, %rsi                               ##  DEAD:r9;rsi
	repz cmpsb                                         ##  DEAD:r9
	seta      %dl                                      ##  DEAD:r9
	setb      %al                                      ##  DEAD:r9
	xorl      %r9d, %r9d                               ##  DEAD:r9
	cmpb      %al, %dl                                 ##  DEAD:rflags
	je        .L00000630                               ##  DEAD:
.L00000609:
	movl      $.LC00000083.str1.1, %edi                ##  DEAD:r9;rcx;rdi;rsi
	movl      $5, %ecx                                 ##  DEAD:r9;rcx;rsi
	movq      %r12, %rsi                               ##  DEAD:r9;rsi
	repz cmpsb                                         ##  DEAD:r9
	seta      %al                                      ##  DEAD:r9
	setb      %dl                                      ##  DEAD:r9
	subb      %dl, %al                                 ##  DEAD:r9;rflags
	movsbl    %al, %eax                                ##  DEAD:r9;rflags
	cmpl      $1, %eax                                 ##  DEAD:r9;rflags
	sbbl      %r11d, %r11d                             ##  DEAD:r9
	andl      $1, %r11d                                ##  DEAD:r9;rflags
	movl      %r11d, %r9d                              ##  DEAD:r9;rflags
.L00000630:
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jle       .L000006A3                               ##  DEAD:
.L00000634:
	movl      $.LC00000088.str1.1, %r8d                ##  DEAD:r10;r12;r13;r14;r8;rax;rcx;rdi;rdx;rsi
	movl      $3, %edx                                 ##  DEAD:r10;r12;r13;r14;rax;rcx;rdi;rdx;rsi
	movl      $.LC0000008B.str1.1, %r10d               ##  DEAD:r10;r12;r13;r14;rax;rcx;rdi;rsi
	movl      $.LC0000008E.str1.1, %r12d               ##  DEAD:r12;r13;r14;rax;rcx;rdi;rsi
	movl      $.LC00000091.str1.1, %r13d               ##  DEAD:r13;r14;rax;rcx;rdi;rsi
	movl      $.LC00000094.str1.1, %r14d               ##  DEAD:r14;rax;rcx;rdi;rsi
	jmp       .L00000671                               ##  DEAD:rax;rcx;rdi;rsi
.L00000659:
	.p2align 4
.L00000660:
	movl      $1, %r9d                                 ##  DEAD:r9;rflags
.L00000666:
	subl      $1, %ebp                                 ##  DEAD:rflags
	addq      $8, %rbx                                 ##  DEAD:rflags
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jle       .L000006A3                               ##  DEAD:
.L00000671:
	movq      (%rbx), %rax                             ##  DEAD:rax;rcx;rdi;rsi
	movq      %r8, %rdi                                ##  DEAD:rcx;rdi;rsi
	movq      %rdx, %rcx                               ##  DEAD:rcx;rsi
	movq      %rax, %rsi                               ##  DEAD:rsi
	repz cmpsb                                         ##  DEAD:
	je        .L00000660                               ##  DEAD:
.L00000681:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r10, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L00000718                               ##  DEAD:
.L00000692:
	subl      $1, %ebp                                 ##  DEAD:r11;rflags
	addq      $8, %rbx                                 ##  DEAD:r11;rflags
	movl      $1, %r11d                                ##  DEAD:r11;rflags
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jg        .L00000671                               ##  DEAD:
.L000006A3:
	cmpb      $32, 19(%rsp)                            ##  DEAD:rflags
	je        .L000008DA                               ##  DEAD:
.L000006AE:
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jne       .L000007A8                               ##  DEAD:
.L000006B6:
	testl     %r11d, %r11d                             ##  DEAD:rflags
	jne       .L000008A9                               ##  DEAD:
.L000006BF:
	movq      stdout(%rip), %rdi                       ##  DEAD:rdi
	call      fileno@PLT                               ##  DEAD:
.L000006CB:
	movq      %r15, %rsi                               ##  DEAD:rdi;rsi
	movl      %eax, %edi                               ##  DEAD:rdi
	call      gzdopen@PLT                              ##  DEAD:
.L000006D5:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00000909                               ##  DEAD:
.L000006DE:
	movq      stdin(%rip), %rdi                        ##  DEAD:rcx;rdi;rdx;rflags;rsi
	movq      %rax, %rsi                               ##  DEAD:rcx;rdx;rflags;rsi
	call      gz_compress@PLT                          ##  DEAD:rax;rcx;rdx;rflags
.L000006ED:
	xorl      %eax, %eax                               ##  DEAD:rax;rdx
	movq      40(%rsp), %rdx                           ##  DEAD:rdx
	xorq      %fs:40, %rdx                             ##  DEAD:
	jne       .L0000092F                               ##  DEAD:
.L00000703:
	addq      $56, %rsp                                ##  DEAD:r12;r13;r14;r15;rbp;rbx;rflags
	popq      %rbx                                     ##  DEAD:r12;r13;r14;r15;rbp;rbx
	popq      %rbp                                     ##  DEAD:r12;r13;r14;r15;rbp
	popq      %r12                                     ##  DEAD:r12;r13;r14;r15
	popq      %r13                                     ##  DEAD:r13;r14;r15
	popq      %r14                                     ##  DEAD:r14;r15
	popq      %r15                                     ##  DEAD:r15
	ret                                                ##  DEAD:
.L00000712:
	.p2align 3
.L00000718:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L00000730                               ##  DEAD:
.L00000725:
	movb      $102, 19(%rsp)                           ##  DEAD:rflags
	jmp       .L00000666                               ##  DEAD:rflags
.L0000072F:
	.p2align 3
.L00000730:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r13, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L00000750                               ##  DEAD:
.L0000073D:
	movb      $104, 19(%rsp)                           ##  DEAD:rflags
	jmp       .L00000666                               ##  DEAD:rflags
.L00000747:
	.p2align 4
.L00000750:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r14, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L00000770                               ##  DEAD:
.L0000075D:
	movb      $82, 19(%rsp)                            ##  DEAD:rflags
	jmp       .L00000666                               ##  DEAD:rflags
.L00000767:
	.p2align 4
.L00000770:
	cmpb      $45, (%rax)                              ##  DEAD:rflags
	jne       .L000006A3                               ##  DEAD:
.L00000779:
	movzbl    1(%rax), %ecx                            ##  DEAD:rcx;rflags
	cmpb      $48, %cl                                 ##  DEAD:rflags
	jle       .L000006A3                               ##  DEAD:
.L00000786:
	cmpb      $57, %cl                                 ##  DEAD:rflags
	jg        .L000006A3                               ##  DEAD:
.L0000078F:
	cmpb      $0, 2(%rax)                              ##  DEAD:rflags
	jne       .L000006A3                               ##  DEAD:
.L00000799:
	movb      %cl, 18(%rsp)                            ##  DEAD:rflags
	.p2align 3
	jmp       .L00000666                               ##  DEAD:rflags
.L000007A5:
	.p2align 3
.L000007A8:
	testl     %r11d, %r11d                             ##  DEAD:rflags
	jne       .L0000080B                               ##  DEAD:
.L000007AD:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L00000894                               ##  DEAD:
.L000007B6:
	movq      (%rbx), %rdi                             ##  DEAD:rdi;rsi
	movl      $.LC0000003D.str1.1, %esi                ##  DEAD:rsi
	call      fopen@PLT                                ##  DEAD:
.L000007C3:
	testq     %rax, %rax                               ##  DEAD:r12;rflags
	movq      %rax, %r12                               ##  DEAD:r12
	je        .L00000922                               ##  DEAD:
.L000007CF:
	movq      stdout(%rip), %rdi                       ##  DEAD:rdi
	call      fileno@PLT                               ##  DEAD:
.L000007DB:
	movq      %r15, %rsi                               ##  DEAD:rdi;rsi
	movl      %eax, %edi                               ##  DEAD:rdi
	call      gzdopen@PLT                              ##  DEAD:
.L000007E5:
	testq     %rax, %rax                               ##  DEAD:r13;rflags
	movq      %rax, %r13                               ##  DEAD:r13
	je        .L000008E4                               ##  DEAD:
.L000007F1:
	movq      %r13, %rsi                               ##  DEAD:rax;rcx;rdi;rdx;rflags;rsi
	movq      %r12, %rdi                               ##  DEAD:rax;rcx;rdi;rdx;rflags
	call      gz_compress@PLT                          ##  DEAD:rax;rcx;rdx;rflags
.L000007FC:
	subl      $1, %ebp                                 ##  DEAD:rflags
	je        .L000006ED                               ##  DEAD:
.L00000805:
	addq      $8, %rbx                                 ##  DEAD:rdi;rflags;rsi
	jmp       .L000007B6                               ##  DEAD:rdi;rsi
.L0000080B:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	.p2align 3
	jne       .L00000855                               ##  DEAD:
.L00000812:
	movq      (%rbx), %rdi                             ##  DEAD:rax;rdi;rflags
	call      file_uncompress@PLT                      ##  DEAD:rax;rflags
.L0000081A:
	subl      $1, %ebp                                 ##  DEAD:rflags
	je        .L000006ED                               ##  DEAD:
.L00000823:
	addq      $8, %rbx                                 ##  DEAD:rax;rdi;rflags
	movq      (%rbx), %rdi                             ##  DEAD:rax;rdi;rflags
	call      file_uncompress@PLT                      ##  DEAD:rax;rflags
.L0000082F:
	subl      $1, %ebp                                 ##  DEAD:rflags
	jne       .L00000823                               ##  DEAD:
.L00000834:
	jmp       .L000006ED                               ##  DEAD:rax;rdx
.L00000839:
	movq      stdout(%rip), %rsi                       ##  DEAD:rdi;rdx;rflags;rsi
	movq      %rax, %rdi                               ##  DEAD:rdi;rdx;rflags
	call      gz_uncompress@PLT                        ##  DEAD:rax;rdx;rflags
.L00000848:
	subl      $1, %ebp                                 ##  DEAD:rflags
	je        .L000006ED                               ##  DEAD:
.L00000851:
	addq      $8, %rbx                                 ##  DEAD:rdi;rflags;rsi
.L00000855:
	movq      (%rbx), %rdi                             ##  DEAD:rdi;rsi
	movl      $.LC0000003D.str1.1, %esi                ##  DEAD:rsi
	call      gzopen@PLT                               ##  DEAD:
.L00000862:
	testq     %rax, %rax                               ##  DEAD:rflags
	jne       .L00000839                               ##  DEAD:
.L00000867:
	movq      (%rbx), %r8                              ##  DEAD:r8;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rcx;rdi;rdx;rsi
	movl      $.LC00000040.str1.1, %edx                ##  DEAD:rdi;rdx;rsi
	movq      stderr(%rip), %rdi                       ##  DEAD:rdi;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      __fprintf_chk@PLT                        ##  DEAD:
.L00000887:
	jmp       .L00000848                               ##  DEAD:rflags
.L00000889:
	.p2align 4
.L00000890:
	addq      $8, %rbx                                 ##  DEAD:rax;rdi;rflags;rsi
.L00000894:
	movq      (%rbx), %rdi                             ##  DEAD:rax;rdi;rflags;rsi
	movq      %r15, %rsi                               ##  DEAD:rax;rflags;rsi
	call      file_compress@PLT                        ##  DEAD:rax;rflags
.L0000089F:
	subl      $1, %ebp                                 ##  DEAD:rflags
	jne       .L00000890                               ##  DEAD:
.L000008A4:
	jmp       .L000006ED                               ##  DEAD:rax;rdx
.L000008A9:
	movq      stdin(%rip), %rdi                        ##  DEAD:rdi
	call      fileno@PLT                               ##  DEAD:
.L000008B5:
	movl      $.LC0000003D.str1.1, %esi                ##  DEAD:rdi;rsi
	movl      %eax, %edi                               ##  DEAD:rdi
	call      gzdopen@PLT                              ##  DEAD:
.L000008C1:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L000008F3                               ##  DEAD:
.L000008C6:
	movq      stdout(%rip), %rsi                       ##  DEAD:rdi;rdx;rflags;rsi
	movq      %rax, %rdi                               ##  DEAD:rdi;rdx;rflags
	call      gz_uncompress@PLT                        ##  DEAD:rax;rdx;rflags
.L000008D5:
	jmp       .L000006ED                               ##  DEAD:rax;rdx
.L000008DA:
	movb      $0, 19(%rsp)                             ##  DEAD:rflags
	jmp       .L000006AE                               ##  DEAD:rflags
.L000008E4:
	movl      $.LC000000AB.str1.1, %edi                ##  DEAD:r8;rax;rcx;rdi;rdx;rflags;rsi
	call      error@PLT                                ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
.L000008EE:
	jmp       .L000007F1                               ##  DEAD:rax;rcx;rdi;rdx;rflags;rsi
.L000008F3:
	movl      $.LC00000097.str1.1, %edi                ##  DEAD:r8;rcx;rdi;rdx;rflags;rsi
	movq      %rax, 8(%rsp)                            ##  DEAD:r8;rcx;rdx;rflags;rsi
	call      error@PLT                                ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
.L00000902:
	movq      8(%rsp), %rax                            ##  DEAD:rax;rdi;rdx;rflags;rsi
	jmp       .L000008C6                               ##  DEAD:rdi;rdx;rflags;rsi
.L00000909:
	movl      $.LC000000AB.str1.1, %edi                ##  DEAD:r8;rcx;rdi;rdx;rflags;rsi
	movq      %rax, 8(%rsp)                            ##  DEAD:r8;rcx;rdx;rflags;rsi
	call      error@PLT                                ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
.L00000918:
	movq      8(%rsp), %rax                            ##  DEAD:rax;rcx;rdi;rdx;rflags;rsi
	jmp       .L000006DE                               ##  DEAD:rcx;rdi;rdx;rflags;rsi
.L00000922:
	movq      (%rbx), %rdi                             ##  DEAD:rdi
	call      perror@PLT                               ##  DEAD:
.L0000092A:
	jmp       .L000007FC                               ##  DEAD:rflags
.L0000092F:
	.p2align 3
	call      __stack_chk_fail@PLT                     ##  DEAD:
	.size	main, .-main
# ----------------------
	.comm	prog,8,8
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
