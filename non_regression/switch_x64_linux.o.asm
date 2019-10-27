	.file	"a28.c"
	.text
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -4(%rbp)
	movl      -4(%rbp), %eax
	subl      $37, %eax
	cmpl      $89, %eax
	ja        .L00000082
.L00000012:
	movl      %eax, %eax
	leaq      0(,%rax,4), %rdx
	leaq      .LC00000000(%rip), %rax
	movl      (%rdx,%rax), %eax
	movslq    %eax, %rdx
	leaq      .LC00000000(%rip), %rax
	addq      %rdx, %rax
	jmp       *%rax
.L00000035:
	movl      $11, %eax
	jmp       .L00000087
.L0000003C:
	movl      $21, %eax
	jmp       .L00000087
.L00000043:
	movl      $22, %eax
	jmp       .L00000087
.L0000004A:
	movl      $23, %eax
	jmp       .L00000087
.L00000051:
	movl      $24, %eax
	jmp       .L00000087
.L00000058:
	movl      $25, %eax
	jmp       .L00000087
.L0000005F:
	movl      $26, %eax
	jmp       .L00000087
.L00000066:
	movl      $27, %eax
	jmp       .L00000087
.L0000006D:
	movl      $33, %eax
	jmp       .L00000087
.L00000074:
	movl      $32, %eax
	jmp       .L00000087
.L0000007B:
	movl      $50, %eax
	jmp       .L00000087
.L00000082:
	movl      $51, %eax
.L00000087:
	popq      %rbp
	ret       
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -4(%rbp)
	movl      %esi, -8(%rbp)
	movl      -4(%rbp), %eax
	subl      $33, %eax
	cmpl      $91, %eax
	ja        .L000001C5
.L000000A2:
	movl      %eax, %eax
	leaq      0(,%rax,4), %rdx
	leaq      .LC00000168(%rip), %rax
	movl      (%rdx,%rax), %eax
	movslq    %eax, %rdx
	leaq      .LC00000168(%rip), %rax
	addq      %rdx, %rax
	jmp       *%rax
.L000000C5:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L000000D2
.L000000CD:
	jmp       .L000001C5
.L000000D2:
	movl      $28, %eax
	jmp       .L000001CA
.L000000DC:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L000000E9
.L000000E4:
	jmp       .L000001C5
.L000000E9:
	movl      $29, %eax
	jmp       .L000001CA
.L000000F3:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L00000105
.L000000FB:
	cmpl      $62, %eax
	je        .L0000010F
.L00000100:
	jmp       .L000001C5
.L00000105:
	movl      $31, %eax
	jmp       .L000001CA
.L0000010F:
	movl      $35, %eax
	jmp       .L000001CA
.L00000119:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L00000126
.L00000121:
	jmp       .L000001C5
.L00000126:
	movl      $37, %eax
	jmp       .L000001CA
.L00000130:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L0000013D
.L00000138:
	jmp       .L000001C5
.L0000013D:
	movl      $38, %eax
	jmp       .L000001CA
.L00000147:
	movl      -8(%rbp), %eax
	cmpl      $42, %eax
	je        .L00000156
.L0000014F:
	cmpl      $61, %eax
	je        .L0000015D
.L00000154:
	jmp       .L000001C5
.L00000156:
	movl      $36, %eax
	jmp       .L000001CA
.L0000015D:
	movl      $39, %eax
	jmp       .L000001CA
.L00000164:
	movl      -8(%rbp), %eax
	cmpl      $47, %eax
	je        .L00000173
.L0000016C:
	cmpl      $61, %eax
	je        .L0000017A
.L00000171:
	jmp       .L000001C5
.L00000173:
	movl      $48, %eax
	jmp       .L000001CA
.L0000017A:
	movl      $40, %eax
	jmp       .L000001CA
.L00000181:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L0000018B
.L00000189:
	jmp       .L000001C5
.L0000018B:
	movl      $43, %eax
	jmp       .L000001CA
.L00000192:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L0000019C
.L0000019A:
	jmp       .L000001C5
.L0000019C:
	movl      $41, %eax
	jmp       .L000001CA
.L000001A3:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L000001AD
.L000001AB:
	jmp       .L000001C5
.L000001AD:
	movl      $42, %eax
	jmp       .L000001CA
.L000001B4:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L000001BE
.L000001BC:
	jmp       .L000001C5
.L000001BE:
	movl      $44, %eax
	jmp       .L000001CA
.L000001C5:
	movl      $51, %eax
.L000001CA:
	popq      %rbp
	ret       
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	subq      $24, %rsp
	movl      %edi, -20(%rbp)
	movq      %rsi, -32(%rbp)
	movl      -20(%rbp), %eax
	movl      %eax, %edi
	call      PyToken_OneChar@PLT
.L000001E6:
	movl      %eax, %ebx
	movl      -20(%rbp), %edx
	movl      -20(%rbp), %eax
	movl      %edx, %esi
	movl      %eax, %edi
	call      PyToken_TwoChars@PLT
.L000001F7:
	addl      %ebx, %eax
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.size	main, .-main
# ----------------------
	.section       .rodata
	.align 4
.LC00000000:
	.long	.L00000051-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L0000004A-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000035-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000043-.LC00000000
	.long	.L0000003C-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L0000007B-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L0000006D-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000058-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L0000005F-.LC00000000
	.long	.L00000082-.LC00000000
	.long	.L00000066-.LC00000000
	.long	.L00000074-.LC00000000
.LC00000168:
	.long	.L000000DC-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L00000192-.LC00000168
	.long	.L000001A3-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L00000147-.LC00000168
	.long	.L00000119-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L00000130-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L00000164-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000000C5-.LC00000168
	.long	.L000000F3-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001B4-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L000001C5-.LC00000168
	.long	.L00000181-.LC00000168
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
