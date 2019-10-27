	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %eax
	call      L0$pb
L0$pb:
	popl      %eax
	movl      $0, -8(%ebp)
	movl      _F-L0$pb(%eax), %ecx
	movl      %ecx, _E-L0$pb(%eax)
	movw      %cx, %dx
	movw      %dx, _D-L0$pb(%eax)
	movw      %dx, _C-L0$pb(%eax)
	movb      %dl, %bl
	movb      %bl, _B-L0$pb(%eax)
	movb      %bl, _A-L0$pb(%eax)
	movsbl    %bl, %eax
	addl      $4, %esp
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __DATA,__data
	.globl	_A
_A:
	.byte	2
# ----------------------
	.globl	_B
.zerofill __DATA,__common,_B,1,0
# ----------------------
	.align 1
	.globl	_C
_C:
	.value	3
# ----------------------
	.globl	_D
.zerofill __DATA,__common,_D,2,1
# ----------------------
	.align 2
	.globl	_E
_E:
	.long	5
# ----------------------
	.globl	_F
.zerofill __DATA,__common,_F,4,2
# ----------------------

.subsections_via_symbols
