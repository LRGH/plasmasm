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
	ja        .L08048418
.L080483C2:
	movl      .LC08048650(,%eax,4), %eax
	jmp       *%eax
.L080483CB:
	movl      $11, %eax
	jmp       .L0804841D
.L080483D2:
	movl      $21, %eax
	jmp       .L0804841D
.L080483D9:
	movl      $22, %eax
	jmp       .L0804841D
.L080483E0:
	movl      $23, %eax
	jmp       .L0804841D
.L080483E7:
	movl      $24, %eax
	jmp       .L0804841D
.L080483EE:
	movl      $25, %eax
	jmp       .L0804841D
.L080483F5:
	movl      $26, %eax
	jmp       .L0804841D
.L080483FC:
	movl      $27, %eax
	jmp       .L0804841D
.L08048403:
	movl      $33, %eax
	jmp       .L0804841D
.L0804840A:
	movl      $32, %eax
	jmp       .L0804841D
.L08048411:
	movl      $50, %eax
	jmp       .L0804841D
.L08048418:
	movl      $51, %eax
.L0804841D:
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
	ja        .L0804853F
.L08048431:
	movl      .LC080487B8(,%eax,4), %eax
	jmp       *%eax
.L0804843A:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L0804844C
.L08048442:
	movl      $28, %eax
	jmp       .L08048544
.L0804844C:
	jmp       .L0804853F
.L08048451:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L08048463
.L08048459:
	movl      $29, %eax
	jmp       .L08048544
.L08048463:
	jmp       .L0804853F
.L08048468:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	je        .L08048477
.L08048470:
	cmpl      $62, %eax
	je        .L08048481
.L08048475:
	jmp       .L0804848B
.L08048477:
	movl      $31, %eax
	jmp       .L08048544
.L08048481:
	movl      $35, %eax
	jmp       .L08048544
.L0804848B:
	jmp       .L0804853F
.L08048490:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L080484A2
.L08048498:
	movl      $37, %eax
	jmp       .L08048544
.L080484A2:
	jmp       .L0804853F
.L080484A7:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L080484B9
.L080484AF:
	movl      $38, %eax
	jmp       .L08048544
.L080484B9:
	jmp       .L0804853F
.L080484BE:
	movl      12(%ebp), %eax
	cmpl      $42, %eax
	je        .L080484CD
.L080484C6:
	cmpl      $61, %eax
	je        .L080484D4
.L080484CB:
	jmp       .L080484DB
.L080484CD:
	movl      $36, %eax
	jmp       .L08048544
.L080484D4:
	movl      $39, %eax
	jmp       .L08048544
.L080484DB:
	jmp       .L0804853F
.L080484DD:
	movl      12(%ebp), %eax
	cmpl      $47, %eax
	je        .L080484EC
.L080484E5:
	cmpl      $61, %eax
	je        .L080484F3
.L080484EA:
	jmp       .L080484FA
.L080484EC:
	movl      $48, %eax
	jmp       .L08048544
.L080484F3:
	movl      $40, %eax
	jmp       .L08048544
.L080484FA:
	jmp       .L0804853F
.L080484FC:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L0804850B
.L08048504:
	movl      $43, %eax
	jmp       .L08048544
.L0804850B:
	jmp       .L0804853F
.L0804850D:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L0804851C
.L08048515:
	movl      $41, %eax
	jmp       .L08048544
.L0804851C:
	jmp       .L0804853F
.L0804851E:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L0804852D
.L08048526:
	movl      $42, %eax
	jmp       .L08048544
.L0804852D:
	jmp       .L0804853F
.L0804852F:
	movl      12(%ebp), %eax
	cmpl      $61, %eax
	jne       .L0804853E
.L08048537:
	movl      $44, %eax
	jmp       .L08048544
.L0804853E:
	nop       
.L0804853F:
	movl      $51, %eax
.L08048544:
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
.L08048558:
	movl      %eax, %ebx
	movl      8(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      PyToken_TwoChars
.L0804856C:
	addl      %ebx, %eax
	addl      $8, %esp
	popl      %ebx
	popl      %ebp
	ret       
	.size	main, .-main
# ----------------------
	.section       .rodata
.LC08048650:
	.long	.L080483E7
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L080483E0
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L080483CB
	.long	.L08048418
	.long	.L08048418
	.long	.L080483D9
	.long	.L080483D2
	.long	.L08048418
	.long	.L08048411
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048403
	.long	.L08048418
	.long	.L080483EE
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L08048418
	.long	.L080483F5
	.long	.L08048418
	.long	.L080483FC
	.long	.L0804840A
.LC080487B8:
	.long	.L08048451
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804850D
	.long	.L0804851E
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L080484BE
	.long	.L08048490
	.long	.L0804853F
	.long	.L080484A7
	.long	.L0804853F
	.long	.L080484DD
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804843A
	.long	.L08048468
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804852F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L0804853F
	.long	.L080484FC
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
