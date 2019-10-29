	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $12, %esp
	movl      12(%ebp), %eax
	movl      8(%ebp), %ecx
	movl      $0, -4(%ebp)
	movl      %eax, -8(%ebp)
	movl      %ecx, -12(%ebp)
LBB0_1:
	cmpl      $1, 8(%ebp)
	jle       LBB0_6
	movl      8(%ebp), %eax
	cltd      
	movl      $2, %ecx
	idivl     %ecx
	cmpl      $0, %edx
	je        LBB0_4
	movl      8(%ebp), %eax
	cltd      
	movl      $2, %ecx
	idivl     %ecx
	movl      %eax, 8(%ebp)
	jmp       LBB0_5
LBB0_4:
	imull     $3, 8(%ebp), %eax
	addl      $1, %eax
	movl      %eax, 8(%ebp)
LBB0_5:
	jmp       LBB0_1
LBB0_6:
	movl      8(%ebp), %eax
	addl      $12, %esp
	popl      %ebp
	ret       
# ----------------------

.subsections_via_symbols
