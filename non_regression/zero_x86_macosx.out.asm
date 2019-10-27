	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %eax
	call      L00001F7A
L00001F7A:
	popl      %eax
	movl      $0, -8(%ebp)
	movl      146(%eax), %ecx
	movl      %ecx, 138(%eax)
	movw      %cx, %dx
	movw      %dx, 144(%eax)
	movw      %dx, 136(%eax)
	movb      %dl, %bl
	movb      %bl, 142(%eax)
	movb      %bl, 134(%eax)
	movsbl    %bl, %eax
	addl      $4, %esp
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __DATA,__data,regular
	.globl	_A
_A:
	.value	2
# ----------------------
	.globl	_C
_C:
	.value	3
# ----------------------
	.align 2
	.globl	_E
_E:
	.long	5
# ----------------------
	.globl	_B
.zerofill __DATA,__common,_B,2,1
# ----------------------
	.globl	_D
.zerofill __DATA,__common,_D,2,1
# ----------------------
	.globl	_F
.zerofill __DATA,__common,_F,4,2
# ----------------------

.subsections_via_symbols
