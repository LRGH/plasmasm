	.file	"a28.c"
	.text
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	subl      $37, %eax
	cmpl      $89, %eax
	ja        .L00000064
.L0000000E:
	movl      .LC00000000(,%eax,4), %eax
	jmp       *%eax
.L00000017:
	movl      $11, %eax
	jmp       .L00000069
.L0000001E:
	movl      $21, %eax
	jmp       .L00000069
.L00000025:
	movl      $22, %eax
	jmp       .L00000069
.L0000002C:
	movl      $23, %eax
	jmp       .L00000069
.L00000033:
	movl      $24, %eax
	jmp       .L00000069
.L0000003A:
	movl      $25, %eax
	jmp       .L00000069
.L00000041:
	movl      $26, %eax
	jmp       .L00000069
.L00000048:
	movl      $27, %eax
	jmp       .L00000069
.L0000004F:
	movl      $33, %eax
	jmp       .L00000069
.L00000056:
	movl      $32, %eax
	jmp       .L00000069
.L0000005D:
	movl      $50, %eax
	jmp       .L00000069
.L00000064:
	movl      $51, %eax
.L00000069:
	popl      %ebp
	ret       
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	subl      $33, %eax
	cmpl      $91, %eax
	ja        .L0000018B
.L0000007D:
	movl      .LC00000168(,%eax,4), %eax
	jmp       *%eax
.L00000086:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L00000098
.L0000008E:
	movl      $28, %eax
	jmp       .L00000190
.L00000098:
	jmp       .L0000018B
.L0000009D:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L000000AF
.L000000A5:
	movl      $29, %eax
	jmp       .L00000190
.L000000AF:
	jmp       .L0000018B
.L000000B4:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	je        .L000000C3
.L000000BC:
	cmpl      $62, %eax
	je        .L000000CD
.L000000C1:
	jmp       .L000000D7
.L000000C3:
	movl      $31, %eax
	jmp       .L00000190
.L000000CD:
	movl      $35, %eax
	jmp       .L00000190
.L000000D7:
	jmp       .L0000018B
.L000000DC:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L000000EE
.L000000E4:
	movl      $37, %eax
	jmp       .L00000190
.L000000EE:
	jmp       .L0000018B
.L000000F3:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L00000105
.L000000FB:
	movl      $38, %eax
	jmp       .L00000190
.L00000105:
	jmp       .L0000018B
.L0000010A:
	movl      12(%ebp), %eax
	cmpl      $42, %eax
	je        .L00000119
.L00000112:
	cmpl      $61, %eax
	je        .L00000120
.L00000117:
	jmp       .L00000127
.L00000119:
	movl      $36, %eax
	jmp       .L00000190
.L00000120:
	movl      $39, %eax
	jmp       .L00000190
.L00000127:
	jmp       .L0000018B
.L00000129:
	movl      12(%ebp), %eax
	cmpl      $47, %eax
	je        .L00000138
.L00000131:
	cmpl      $61, %eax
	je        .L0000013F
.L00000136:
	jmp       .L00000146
.L00000138:
	movl      $48, %eax
	jmp       .L00000190
.L0000013F:
	movl      $40, %eax
	jmp       .L00000190
.L00000146:
	jmp       .L0000018B
.L00000148:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L00000157
.L00000150:
	movl      $43, %eax
	jmp       .L00000190
.L00000157:
	jmp       .L0000018B
.L00000159:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L00000168
.L00000161:
	movl      $41, %eax
	jmp       .L00000190
.L00000168:
	jmp       .L0000018B
.L0000016A:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L00000179
.L00000172:
	movl      $42, %eax
	jmp       .L00000190
.L00000179:
	jmp       .L0000018B
.L0000017B:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L0000018A
.L00000183:
	movl      $44, %eax
	jmp       .L00000190
.L0000018A:
	nop       
.L0000018B:
	movl      $51, %eax
.L00000190:
	popl      %ebp
	ret       
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $8, %esp
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      PyToken_OneChar
.L000001A4:
	movl      %eax, %ebx
	movl      8(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      PyToken_TwoChars
.L000001B8:
	addl      %ebx, %eax
	addl      $8, %esp
	popl      %ebx
	popl      %ebp
	ret       
	.size	main, .-main
# ----------------------
	.section       .rodata
	.align 4
.LC00000000:
	.long	.L00000033
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L0000002C
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000017
	.long	.L00000064
	.long	.L00000064
	.long	.L00000025
	.long	.L0000001E
	.long	.L00000064
	.long	.L0000005D
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L0000004F
	.long	.L00000064
	.long	.L0000003A
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000064
	.long	.L00000041
	.long	.L00000064
	.long	.L00000048
	.long	.L00000056
.LC00000168:
	.long	.L0000009D
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L00000159
	.long	.L0000016A
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000010A
	.long	.L000000DC
	.long	.L0000018B
	.long	.L000000F3
	.long	.L0000018B
	.long	.L00000129
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L00000086
	.long	.L000000B4
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000017B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L0000018B
	.long	.L00000148
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
