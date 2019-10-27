	.file	"a28.c"
	.text
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -4(%rbp)
	movl      -4(%rbp), %eax
	subl      $37, %eax
	cmpl      $89, %eax
	ja        .L2
	movl      %eax, %eax
	leaq      0(,%rax,4), %rdx
	leaq      .L4(%rip), %rax
	movl      (%rdx,%rax), %eax
	movslq    %eax, %rdx
	leaq      .L4(%rip), %rax
	addq      %rdx, %rax
	jmp       *%rax
.L6:
	movl      $11, %eax
	jmp       .L15
.L8:
	movl      $21, %eax
	jmp       .L15
.L7:
	movl      $22, %eax
	jmp       .L15
.L5:
	movl      $23, %eax
	jmp       .L15
.L3:
	movl      $24, %eax
	jmp       .L15
.L11:
	movl      $25, %eax
	jmp       .L15
.L12:
	movl      $26, %eax
	jmp       .L15
.L13:
	movl      $27, %eax
	jmp       .L15
.L10:
	movl      $33, %eax
	jmp       .L15
.L14:
	movl      $32, %eax
	jmp       .L15
.L9:
	movl      $50, %eax
	jmp       .L15
.L2:
	movl      $51, %eax
.L15:
	popq      %rbp
	ret       
	.cfi_endproc
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
	.section       .rodata
	.align 4
.L4:
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L5-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L6-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L7-.L4
	.long	.L8-.L4
	.long	.L2-.L4
	.long	.L9-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L10-.L4
	.long	.L2-.L4
	.long	.L11-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L2-.L4
	.long	.L12-.L4
	.long	.L2-.L4
	.long	.L13-.L4
	.long	.L14-.L4
	.align 4
.L19:
	.long	.L18-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L20-.L19
	.long	.L21-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L22-.L19
	.long	.L23-.L19
	.long	.L17-.L19
	.long	.L24-.L19
	.long	.L17-.L19
	.long	.L25-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L26-.L19
	.long	.L27-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L28-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L29-.L19
# ----------------------
	.text
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -4(%rbp)
	movl      %esi, -8(%rbp)
	movl      -4(%rbp), %eax
	subl      $33, %eax
	cmpl      $91, %eax
	ja        .L17
	movl      %eax, %eax
	leaq      0(,%rax,4), %rdx
	leaq      .L19(%rip), %rax
	movl      (%rdx,%rax), %eax
	movslq    %eax, %rdx
	leaq      .L19(%rip), %rax
	addq      %rdx, %rax
	jmp       *%rax
.L26:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L31
	jmp       .L17
.L31:
	movl      $28, %eax
	jmp       .L32
.L18:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L34
	jmp       .L17
.L34:
	movl      $29, %eax
	jmp       .L32
.L27:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L36
	cmpl      $62, %eax
	je        .L37
	jmp       .L17
.L36:
	movl      $31, %eax
	jmp       .L32
.L37:
	movl      $35, %eax
	jmp       .L32
.L23:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L39
	jmp       .L17
.L39:
	movl      $37, %eax
	jmp       .L32
.L24:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L41
	jmp       .L17
.L41:
	movl      $38, %eax
	jmp       .L32
.L22:
	movl      -8(%rbp), %eax
	cmpl      $42, %eax
	je        .L43
	cmpl      $61, %eax
	je        .L44
	jmp       .L17
.L43:
	movl      $36, %eax
	jmp       .L32
.L44:
	movl      $39, %eax
	jmp       .L32
.L25:
	movl      -8(%rbp), %eax
	cmpl      $47, %eax
	je        .L46
	cmpl      $61, %eax
	je        .L47
	jmp       .L17
.L46:
	movl      $48, %eax
	jmp       .L32
.L47:
	movl      $40, %eax
	jmp       .L32
.L29:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L49
	jmp       .L17
.L49:
	movl      $43, %eax
	jmp       .L32
.L20:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L51
	jmp       .L17
.L51:
	movl      $41, %eax
	jmp       .L32
.L21:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L53
	jmp       .L17
.L53:
	movl      $42, %eax
	jmp       .L32
.L28:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L55
	jmp       .L17
.L55:
	movl      $44, %eax
	jmp       .L32
.L17:
	movl      $51, %eax
.L32:
	popq      %rbp
	ret       
	.cfi_endproc
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	subq      $24, %rsp
	movl      %edi, -20(%rbp)
	movq      %rsi, -32(%rbp)
	movl      -20(%rbp), %eax
	movl      %eax, %edi
	call      PyToken_OneChar@PLT
	movl      %eax, %ebx
	movl      -20(%rbp), %edx
	movl      -20(%rbp), %eax
	movl      %edx, %esi
	movl      %eax, %edi
	call      PyToken_TwoChars@PLT
	addl      %ebx, %eax
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
