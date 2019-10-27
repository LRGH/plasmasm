	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %eax
	call      L0000000A
L0000000A:
	popl      %eax
	movl      $0, -8(%ebp)
	movl      _F-L0000000A(%eax), %ecx
	movl      %ecx, _E-L0000000A(%eax)
	movw      %cx, %dx
	movw      %dx, _D-L0000000A(%eax)
	movw      %dx, _C-L0000000A(%eax)
	movb      %dl, %bl
	movb      %bl, _B-L0000000A(%eax)
	movb      %bl, _A-L0000000A(%eax)
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
