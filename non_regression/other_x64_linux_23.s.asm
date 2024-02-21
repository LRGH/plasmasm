	.file	"minigzip.c"
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s: %s\n"
.LC1:
	.string	"fread"
.LC2:
	.string	"failed gzclose"
.LC3:
	.string	"%s: filename too long\n"
.LC4:
	.string	"%s%s"
.LC5:
	.string	".gz"
.LC6:
	.string	"rb"
.LC7:
	.string	"%s: can't gzopen %s\n"
.LC8:
	.string	"failed fwrite"
.LC9:
	.string	"failed fclose"
.LC10:
	.string	"%s"
.LC11:
	.string	"wb"
.LC12:
	.string	"wb6 "
.LC13:
	.string	"gunzip"
.LC14:
	.string	"zcat"
.LC15:
	.string	"-c"
.LC16:
	.string	"-d"
.LC17:
	.string	"-f"
.LC18:
	.string	"-h"
.LC19:
	.string	"-r"
.LC20:
	.string	"can't gzdopen stdin"
.LC21:
	.string	"can't gzdopen stdout"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	error
	.type	error, @function
error:
	.cfi_startproc
	subq      $8, %rsp                                 ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
	movq      %rdi, %r8                                ##  DEAD:r8;rax;rcx;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rdi;rdx;rsi
	movl      $.LC0, %edx                              ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
	.cfi_endproc
	.size	error, .-error
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	gz_compress
	.type	gz_compress, @function
gz_compress:
	.cfi_startproc
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
	.p2align 4,,10
	.p2align 3
.L6:
	movq      %rbx, %rcx                               ##  DEAD:rcx;rdi;rdx;rsi
	movl      $16384, %edx                             ##  DEAD:rdi;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      fread                                    ##  DEAD:
	movq      %rbx, %rdi                               ##  DEAD:r14;rdi
	movq      %rax, %r14                               ##  DEAD:r14
	call      ferror                                   ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L13                                     ##  DEAD:
	testl     %r14d, %r14d                             ##  DEAD:rflags
	je        .L5                                      ##  DEAD:
	movl      %r14d, %edx                              ##  DEAD:rdi;rdx;rsi
	movq      %rbp, %rsi                               ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzwrite                                  ##  DEAD:
	cmpl      %r14d, %eax                              ##  DEAD:rflags
	je        .L6                                      ##  DEAD:
	leaq      12(%rsp), %rsi                           ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzerror                                  ##  DEAD:
	movq      %rax, %r8                                ##  DEAD:r8;rcx;rdi;rdx;rsi
.L11:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC0, %edx                              ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L5:
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      fclose                                   ##  DEAD:
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzclose                                  ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L14                                     ##  DEAD:
	movq      16408(%rsp), %rax                        ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	.p2align 4,,2
	jne       .L15                                     ##  DEAD:
	addq      $16416, %rsp                             ##  DEAD:r12;r13;r14;rbp;rbx;rflags
	popq      %rbx                                     ##  DEAD:r12;r13;r14;rbp;rbx
	popq      %rbp                                     ##  DEAD:r12;r13;r14;rbp
	popq      %r12                                     ##  DEAD:r12;r13;r14
	popq      %r13                                     ##  DEAD:r13;r14
	popq      %r14                                     ##  DEAD:r14
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L14:
	movl      $.LC2, %r8d                              ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
	jmp       .L11                                     ##  DEAD:rax;rcx;rdi;rdx;rsi
.L13:
	movl      $.LC1, %edi                              ##  DEAD:rdi
	call      perror                                   ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
.L15:
	call      __stack_chk_fail                         ##  DEAD:
	.cfi_endproc
	.size	gz_compress, .-gz_compress
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	file_compress
	.type	file_compress, @function
file_compress:
	.cfi_startproc
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
	call      strlen                                   ##  DEAD:
	addq      $3, %rax                                 ##  DEAD:rflags
	cmpq      $1023, %rax                              ##  DEAD:rflags
	ja        .L22                                     ##  DEAD:
	leaq      16(%rsp), %rbp                           ##  DEAD:r8;r9;rax;rbp;rcx;rdi;rdx;rsi
	movq      %rbx, %r9                                ##  DEAD:r8;r9;rax;rcx;rdi;rdx;rsi
	movl      $.LC4, %r8d                              ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
	movl      $1024, %ecx                              ##  DEAD:rax;rcx;rdi;rdx;rsi
	movl      $1, %edx                                 ##  DEAD:rax;rdi;rdx;rsi
	movl      $1024, %esi                              ##  DEAD:rax;rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rax;rdi
	xorl      %eax, %eax                               ##  DEAD:rax
	movq      $.LC5, (%rsp)                            ##  DEAD:
	call      __snprintf_chk                           ##  DEAD:
	movl      $.LC6, %esi                              ##  DEAD:rdi;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      fopen                                    ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:r13;rflags
	movq      %rax, %r13                               ##  DEAD:r13
	je        .L23                                     ##  DEAD:
	movq      %r12, %rsi                               ##  DEAD:rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      gzopen                                   ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L24                                     ##  DEAD:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rdx;rflags;rsi
	movq      %r13, %rdi                               ##  DEAD:rax;rcx;rdi;rdx;rflags
	call      gz_compress                              ##  DEAD:rax;rcx;rdx;rflags
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      unlink                                   ##  DEAD:
	movq      1048(%rsp), %rax                         ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L25                                     ##  DEAD:
	movq      1064(%rsp), %rbx                         ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      1072(%rsp), %rbp                         ##  DEAD:r12;r13;rbp;rflags
	movq      1080(%rsp), %r12                         ##  DEAD:r12;r13;rflags
	movq      1088(%rsp), %r13                         ##  DEAD:r13;rflags
	addq      $1096, %rsp                              ##  DEAD:rflags
	ret                                                ##  DEAD:
.L22:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC3, %edx                              ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
.L25:
	call      __stack_chk_fail                         ##  DEAD:
.L24:
	movq      stderr(%rip), %rdi                       ##  DEAD:r8;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:r8;rcx;rdx;rsi
	movq      %rbp, %r8                                ##  DEAD:r8;rdx;rsi
	movl      $.LC7, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
.L23:
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      perror                                   ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
	.cfi_endproc
	.size	file_compress, .-file_compress
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	gz_uncompress
	.type	gz_uncompress, @function
gz_uncompress:
	.cfi_startproc
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
.L29:
	movl      $16384, %edx                             ##  DEAD:rdi;rdx;rsi
	movq      %rbp, %rsi                               ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzread                                   ##  DEAD:
	cmpl      $0, %eax                                 ##  DEAD:rbx;rflags
	movl      %eax, %ebx                               ##  DEAD:rbx
	jl        .L36                                     ##  DEAD:
	je        .L28                                     ##  DEAD:
	movl      %eax, %edx                               ##  DEAD:rcx;rdi;rdx;rsi
	movq      %r13, %rcx                               ##  DEAD:rcx;rdi;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      fwrite                                   ##  DEAD:
	cmpl      %eax, %ebx                               ##  DEAD:rflags
	je        .L29                                     ##  DEAD:
	movl      $.LC8, %r8d                              ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
.L35:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC0, %edx                              ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L36:
	leaq      12(%rsp), %rsi                           ##  DEAD:rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzerror                                  ##  DEAD:
	movq      %rax, %r8                                ##  DEAD:r8;rcx;rdi;rdx;rsi
	jmp       .L35                                     ##  DEAD:rax;rcx;rdi;rdx;rsi
	.p2align 4,,10
	.p2align 3
.L28:
	movq      %r13, %rdi                               ##  DEAD:rdi
	call      fclose                                   ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:r8;rflags
	movl      $.LC9, %r8d                              ##  DEAD:r8
	jne       .L35                                     ##  DEAD:
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      gzclose                                  ##  DEAD:
	testl     %eax, %eax                               ##  DEAD:r8;rflags
	movl      $.LC2, %r8d                              ##  DEAD:r8
	jne       .L35                                     ##  DEAD:
	movq      16408(%rsp), %rax                        ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L37                                     ##  DEAD:
	addq      $16424, %rsp                             ##  DEAD:r12;r13;rbp;rbx;rflags
	popq      %rbx                                     ##  DEAD:r12;r13;rbp;rbx
	popq      %rbp                                     ##  DEAD:r12;r13;rbp
	popq      %r12                                     ##  DEAD:r12;r13
	popq      %r13                                     ##  DEAD:r13
	ret                                                ##  DEAD:
.L37:
	call      __stack_chk_fail                         ##  DEAD:
	.cfi_endproc
	.size	gz_uncompress, .-gz_uncompress
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	file_uncompress
	.type	file_uncompress, @function
file_uncompress:
	.cfi_startproc
	movq      %rbx, -32(%rsp)                          ##  DEAD:rax;rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rax;rflags
	movq      %rdi, %rbp                               ##  DEAD:rax;rbp;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rax;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:rax;rflags
	subq      $1080, %rsp                              ##  DEAD:rax;rflags
	movq      %fs:40, %rax                             ##  DEAD:rax
	movq      %rax, 1032(%rsp)                         ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	call      strlen                                   ##  DEAD:
	movq      %rax, %rbx                               ##  DEAD:rbx;rflags
	addq      $3, %rax                                 ##  DEAD:rflags
	cmpq      $1023, %rax                              ##  DEAD:rflags
	ja        .L46                                     ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:r12;r8;r9;rax;rcx;rdi;rdx;rsi
	movq      %rbp, %r9                                ##  DEAD:r12;r8;r9;rcx;rdi;rdx;rsi
	movl      $.LC10, %r8d                             ##  DEAD:r12;r8;rcx;rdi;rdx;rsi
	movl      $1024, %ecx                              ##  DEAD:r12;rcx;rdi;rdx;rsi
	movl      $1, %edx                                 ##  DEAD:r12;rdi;rdx;rsi
	movl      $1024, %esi                              ##  DEAD:r12;rdi;rsi
	movq      %rsp, %rdi                               ##  DEAD:r12;rdi
	movq      %rsp, %r12                               ##  DEAD:r12
	call      __snprintf_chk                           ##  DEAD:
	cmpq      $3, %rbx                                 ##  DEAD:rflags
	jbe       .L40                                     ##  DEAD:
	leaq      -3(%rbp,%rbx), %rsi                      ##  DEAD:rcx;rdi;rsi
	movl      $.LC5, %edi                              ##  DEAD:rcx;rdi
	movl      $4, %ecx                                 ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	je        .L47                                     ##  DEAD:
.L40:
	leaq      (%r12,%rbx), %rdi                        ##  DEAD:r13;r8;r9;rax;rcx;rdi;rdx;rflags;rsi
	movl      $1024, %esi                              ##  DEAD:r13;r8;r9;rax;rcx;rdx;rflags;rsi
	movl      $.LC5, %r9d                              ##  DEAD:r13;r8;r9;rax;rcx;rdx;rflags
	subq      %rbx, %rsi                               ##  DEAD:r13;r8;rax;rcx;rdx;rflags
	movl      $.LC10, %r8d                             ##  DEAD:r13;r8;rax;rbx;rcx;rdx
	movq      $-1, %rcx                                ##  DEAD:r13;rax;rbx;rcx;rdx
	movl      $1, %edx                                 ##  DEAD:r13;rax;rbx;rdx
	xorl      %eax, %eax                               ##  DEAD:r13;rax;rbx
	movq      %rbp, %r13                               ##  DEAD:r13;rbx
	movq      %rsp, %rbx                               ##  DEAD:rbx
	call      __snprintf_chk                           ##  DEAD:
.L41:
	movl      $.LC6, %esi                              ##  DEAD:rdi;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      gzopen                                   ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:r12;rflags
	movq      %rax, %r12                               ##  DEAD:r12
	je        .L48                                     ##  DEAD:
	movl      $.LC11, %esi                             ##  DEAD:rdi;rsi
	movq      %r13, %rdi                               ##  DEAD:rdi
	call      fopen                                    ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L49                                     ##  DEAD:
	movq      %rax, %rsi                               ##  DEAD:rdi;rdx;rflags;rsi
	movq      %r12, %rdi                               ##  DEAD:rax;rdi;rdx;rflags
	call      gz_uncompress                            ##  DEAD:rax;rdx;rflags
	movq      %rbx, %rdi                               ##  DEAD:rdi
	call      unlink                                   ##  DEAD:
	movq      1032(%rsp), %rax                         ##  DEAD:rax
	xorq      %fs:40, %rax                             ##  DEAD:
	jne       .L50                                     ##  DEAD:
	movq      1048(%rsp), %rbx                         ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      1056(%rsp), %rbp                         ##  DEAD:r12;r13;rbp;rflags
	movq      1064(%rsp), %r12                         ##  DEAD:r12;r13;rflags
	movq      1072(%rsp), %r13                         ##  DEAD:r13;rflags
	addq      $1080, %rsp                              ##  DEAD:rflags
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L47:
	movb      $0, -3(%rbx,%r12)                        ##  DEAD:r13;rdi;rsi
	movq      %rsp, %r13                               ##  DEAD:r13;rbx;rdi;rsi
	movq      %rbp, %rbx                               ##  DEAD:rbx;rdi;rsi
	jmp       .L41                                     ##  DEAD:rdi;rsi
.L46:
	movq      stderr(%rip), %rdi                       ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rax;rcx;rdx;rsi
	movl      $.LC3, %edx                              ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
.L50:
	call      __stack_chk_fail                         ##  DEAD:
.L49:
	movq      %rbp, %rdi                               ##  DEAD:rdi
	call      perror                                   ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
.L48:
	movq      stderr(%rip), %rdi                       ##  DEAD:r8;rax;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:r8;rax;rcx;rdx;rsi
	movq      %rbx, %r8                                ##  DEAD:r8;rax;rdx;rsi
	movl      $.LC7, %edx                              ##  DEAD:rax;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
	call      __fprintf_chk                            ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	call      exit                                     ##  DEAD:
	.cfi_endproc
	.size	file_uncompress, .-file_uncompress
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushq     %r15                                     ##  DEAD:r8;r9;rax;rcx;rdx;rflags
	movl      $.LC12, %r9d                             ##  DEAD:r15;r8;r9;rax;rcx;rdx;rflags
	movl      $20, %ecx                                ##  DEAD:r15;r8;rax;rcx;rdx;rflags
	movl      $1, %edx                                 ##  DEAD:r15;r8;rax;rdx;rflags
	movl      $.LC10, %r8d                             ##  DEAD:r15;r8;rax;rflags
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
	call      __snprintf_chk                           ##  DEAD:
	movq      (%rbx), %rax                             ##  DEAD:r12;rax;rdi;rsi
	movl      $47, %esi                                ##  DEAD:r12;rdi;rsi
	movq      %rax, prog(%rip)                         ##  DEAD:r12;rdi
	movq      (%rbx), %r12                             ##  DEAD:r12;rdi
	movq      %r12, %rdi                               ##  DEAD:rdi
	call      strrchr                                  ##  DEAD:
	leaq      1(%rax), %rdx                            ##  DEAD:r11;r9;rcx;rdi;rdx;rflags;rsi
	testq     %rax, %rax                               ##  DEAD:r11;r9;rcx;rdi;rflags;rsi
	movl      $.LC13, %edi                             ##  DEAD:r11;r9;rcx;rdi;rsi
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
	je        .L54                                     ##  DEAD:
	movl      $.LC14, %edi                             ##  DEAD:r9;rcx;rdi;rsi
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
.L54:
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jle       .L56                                     ##  DEAD:
	movl      $.LC15, %r8d                             ##  DEAD:r10;r12;r13;r14;r8;rax;rcx;rdi;rdx;rsi
	movl      $3, %edx                                 ##  DEAD:r10;r12;r13;r14;rax;rcx;rdi;rdx;rsi
	movl      $.LC16, %r10d                            ##  DEAD:r10;r12;r13;r14;rax;rcx;rdi;rsi
	movl      $.LC17, %r12d                            ##  DEAD:r12;r13;r14;rax;rcx;rdi;rsi
	movl      $.LC18, %r13d                            ##  DEAD:r13;r14;rax;rcx;rdi;rsi
	movl      $.LC19, %r14d                            ##  DEAD:r14;rax;rcx;rdi;rsi
	jmp       .L63                                     ##  DEAD:rax;rcx;rdi;rsi
	.p2align 4,,10
	.p2align 3
.L87:
	movl      $1, %r9d                                 ##  DEAD:r9;rflags
.L58:
	subl      $1, %ebp                                 ##  DEAD:rflags
	addq      $8, %rbx                                 ##  DEAD:rflags
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jle       .L56                                     ##  DEAD:
.L63:
	movq      (%rbx), %rax                             ##  DEAD:rax;rcx;rdi;rsi
	movq      %r8, %rdi                                ##  DEAD:rcx;rdi;rsi
	movq      %rdx, %rcx                               ##  DEAD:rcx;rsi
	movq      %rax, %rsi                               ##  DEAD:rsi
	repz cmpsb                                         ##  DEAD:
	je        .L87                                     ##  DEAD:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r10, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L59                                     ##  DEAD:
	subl      $1, %ebp                                 ##  DEAD:r11;rflags
	addq      $8, %rbx                                 ##  DEAD:r11;rflags
	movl      $1, %r11d                                ##  DEAD:r11;rflags
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jg        .L63                                     ##  DEAD:
.L56:
	cmpb      $32, 19(%rsp)                            ##  DEAD:rflags
	je        .L88                                     ##  DEAD:
.L64:
	testl     %ebp, %ebp                               ##  DEAD:rflags
	jne       .L65                                     ##  DEAD:
	testl     %r11d, %r11d                             ##  DEAD:rflags
	.p2align 4,,4
	jne       .L89                                     ##  DEAD:
	movq      stdout(%rip), %rdi                       ##  DEAD:rdi
	call      fileno                                   ##  DEAD:
	movq      %r15, %rsi                               ##  DEAD:rdi;rsi
	movl      %eax, %edi                               ##  DEAD:rdi
	call      gzdopen                                  ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L90                                     ##  DEAD:
.L69:
	movq      stdin(%rip), %rdi                        ##  DEAD:rcx;rdi;rdx;rflags;rsi
	movq      %rax, %rsi                               ##  DEAD:rcx;rdx;rflags;rsi
	call      gz_compress                              ##  DEAD:rax;rcx;rdx;rflags
.L68:
	xorl      %eax, %eax                               ##  DEAD:rax;rdx
	movq      40(%rsp), %rdx                           ##  DEAD:rdx
	xorq      %fs:40, %rdx                             ##  DEAD:
	jne       .L91                                     ##  DEAD:
	addq      $56, %rsp                                ##  DEAD:r12;r13;r14;r15;rbp;rbx;rflags
	popq      %rbx                                     ##  DEAD:r12;r13;r14;r15;rbp;rbx
	popq      %rbp                                     ##  DEAD:r12;r13;r14;r15;rbp
	popq      %r12                                     ##  DEAD:r12;r13;r14;r15
	popq      %r13                                     ##  DEAD:r13;r14;r15
	popq      %r14                                     ##  DEAD:r14;r15
	popq      %r15                                     ##  DEAD:r15
	ret                                                ##  DEAD:
	.p2align 4,,10
	.p2align 3
.L59:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r12, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L60                                     ##  DEAD:
	movb      $102, 19(%rsp)                           ##  DEAD:rflags
	jmp       .L58                                     ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L60:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r13, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L61                                     ##  DEAD:
	movb      $104, 19(%rsp)                           ##  DEAD:rflags
	jmp       .L58                                     ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L61:
	movq      %rax, %rsi                               ##  DEAD:rcx;rdi;rsi
	movq      %r14, %rdi                               ##  DEAD:rcx;rdi
	movq      %rdx, %rcx                               ##  DEAD:rcx
	repz cmpsb                                         ##  DEAD:
	jne       .L62                                     ##  DEAD:
	movb      $82, 19(%rsp)                            ##  DEAD:rflags
	jmp       .L58                                     ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L62:
	cmpb      $45, (%rax)                              ##  DEAD:rflags
	jne       .L56                                     ##  DEAD:
	movzbl    1(%rax), %ecx                            ##  DEAD:rcx;rflags
	cmpb      $48, %cl                                 ##  DEAD:rflags
	.p2align 4,,2
	jle       .L56                                     ##  DEAD:
	cmpb      $57, %cl                                 ##  DEAD:rflags
	.p2align 4,,3
	jg        .L56                                     ##  DEAD:
	cmpb      $0, 2(%rax)                              ##  DEAD:rflags
	.p2align 4,,3
	jne       .L56                                     ##  DEAD:
	movb      %cl, 18(%rsp)                            ##  DEAD:rflags
	.p2align 4,,4
	jmp       .L58                                     ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L65:
	testl     %r11d, %r11d                             ##  DEAD:rflags
	.p2align 4,,4
	jne       .L70                                     ##  DEAD:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	.p2align 4,,4
	je        .L85                                     ##  DEAD:
.L83:
	movq      (%rbx), %rdi                             ##  DEAD:rdi;rsi
	movl      $.LC6, %esi                              ##  DEAD:rsi
	call      fopen                                    ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:r12;rflags
	movq      %rax, %r12                               ##  DEAD:r12
	je        .L92                                     ##  DEAD:
	movq      stdout(%rip), %rdi                       ##  DEAD:rdi
	call      fileno                                   ##  DEAD:
	movq      %r15, %rsi                               ##  DEAD:rdi;rsi
	movl      %eax, %edi                               ##  DEAD:rdi
	call      gzdopen                                  ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:r13;rflags
	movq      %rax, %r13                               ##  DEAD:r13
	je        .L93                                     ##  DEAD:
.L75:
	movq      %r13, %rsi                               ##  DEAD:rax;rcx;rdi;rdx;rflags;rsi
	movq      %r12, %rdi                               ##  DEAD:rax;rcx;rdi;rdx;rflags
	call      gz_compress                              ##  DEAD:rax;rcx;rdx;rflags
.L74:
	subl      $1, %ebp                                 ##  DEAD:rflags
	je        .L68                                     ##  DEAD:
	addq      $8, %rbx                                 ##  DEAD:rdi;rflags;rsi
	jmp       .L83                                     ##  DEAD:rdi;rsi
.L70:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	.p2align 4,,5
	jne       .L84                                     ##  DEAD:
	movq      (%rbx), %rdi                             ##  DEAD:rax;rdi;rflags
	.p2align 4,,5
	call      file_uncompress                          ##  DEAD:rax;rflags
	subl      $1, %ebp                                 ##  DEAD:rflags
	.p2align 4,,2
	je        .L68                                     ##  DEAD:
.L94:
	addq      $8, %rbx                                 ##  DEAD:rax;rdi;rflags
	movq      (%rbx), %rdi                             ##  DEAD:rax;rdi;rflags
	call      file_uncompress                          ##  DEAD:rax;rflags
	subl      $1, %ebp                                 ##  DEAD:rflags
	jne       .L94                                     ##  DEAD:
	.p2align 4,,2
	jmp       .L68                                     ##  DEAD:rax;rdx
.L78:
	movq      stdout(%rip), %rsi                       ##  DEAD:rdi;rdx;rflags;rsi
	movq      %rax, %rdi                               ##  DEAD:rdi;rdx;rflags
	call      gz_uncompress                            ##  DEAD:rax;rdx;rflags
.L79:
	subl      $1, %ebp                                 ##  DEAD:rflags
	je        .L68                                     ##  DEAD:
	addq      $8, %rbx                                 ##  DEAD:rdi;rflags;rsi
.L84:
	movq      (%rbx), %rdi                             ##  DEAD:rdi;rsi
	movl      $.LC6, %esi                              ##  DEAD:rsi
	call      gzopen                                   ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:rflags
	jne       .L78                                     ##  DEAD:
	movq      (%rbx), %r8                              ##  DEAD:r8;rcx;rdi;rdx;rsi
	movq      prog(%rip), %rcx                         ##  DEAD:rcx;rdi;rdx;rsi
	movl      $.LC7, %edx                              ##  DEAD:rdi;rdx;rsi
	movq      stderr(%rip), %rdi                       ##  DEAD:rdi;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      __fprintf_chk                            ##  DEAD:
	jmp       .L79                                     ##  DEAD:rflags
	.p2align 4,,10
	.p2align 3
.L95:
	addq      $8, %rbx                                 ##  DEAD:rax;rdi;rflags;rsi
.L85:
	movq      (%rbx), %rdi                             ##  DEAD:rax;rdi;rflags;rsi
	movq      %r15, %rsi                               ##  DEAD:rax;rflags;rsi
	call      file_compress                            ##  DEAD:rax;rflags
	subl      $1, %ebp                                 ##  DEAD:rflags
	jne       .L95                                     ##  DEAD:
	jmp       .L68                                     ##  DEAD:rax;rdx
.L89:
	movq      stdin(%rip), %rdi                        ##  DEAD:rdi
	call      fileno                                   ##  DEAD:
	movl      $.LC6, %esi                              ##  DEAD:rdi;rsi
	movl      %eax, %edi                               ##  DEAD:rdi
	call      gzdopen                                  ##  DEAD:
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L96                                     ##  DEAD:
.L67:
	movq      stdout(%rip), %rsi                       ##  DEAD:rdi;rdx;rflags;rsi
	movq      %rax, %rdi                               ##  DEAD:rdi;rdx;rflags
	call      gz_uncompress                            ##  DEAD:rax;rdx;rflags
	jmp       .L68                                     ##  DEAD:rax;rdx
.L88:
	movb      $0, 19(%rsp)                             ##  DEAD:rflags
	jmp       .L64                                     ##  DEAD:rflags
.L93:
	movl      $.LC21, %edi                             ##  DEAD:r8;rax;rcx;rdi;rdx;rflags;rsi
	call      error                                    ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
	jmp       .L75                                     ##  DEAD:rax;rcx;rdi;rdx;rflags;rsi
.L96:
	movl      $.LC20, %edi                             ##  DEAD:r8;rcx;rdi;rdx;rflags;rsi
	movq      %rax, 8(%rsp)                            ##  DEAD:r8;rcx;rdx;rflags;rsi
	call      error                                    ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
	movq      8(%rsp), %rax                            ##  DEAD:rax;rdi;rdx;rflags;rsi
	jmp       .L67                                     ##  DEAD:rdi;rdx;rflags;rsi
.L90:
	movl      $.LC21, %edi                             ##  DEAD:r8;rcx;rdi;rdx;rflags;rsi
	movq      %rax, 8(%rsp)                            ##  DEAD:r8;rcx;rdx;rflags;rsi
	call      error                                    ##  DEAD:r8;rax;rcx;rdx;rflags;rsi
	movq      8(%rsp), %rax                            ##  DEAD:rax;rcx;rdi;rdx;rflags;rsi
	jmp       .L69                                     ##  DEAD:rcx;rdi;rdx;rflags;rsi
.L92:
	movq      (%rbx), %rdi                             ##  DEAD:rdi
	call      perror                                   ##  DEAD:
	.p2align 4,,3
	jmp       .L74                                     ##  DEAD:rflags
.L91:
	.p2align 4,,6
	call      __stack_chk_fail                         ##  DEAD:
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.comm	prog,8,8
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
