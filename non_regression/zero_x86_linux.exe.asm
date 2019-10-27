	.text
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	andl      $-16, %esp
	movl      $0, %eax
	addl      $15, %eax
	addl      $15, %eax
	shrl      $4, %eax
	sall      $4, %eax
	movl      %eax, -4(%ebp)
	movl      -4(%ebp), %eax
	call      __alloca
L00401295:
	call      ___main
L0040129A:
	movl      _F, %eax
	movl      %eax, _E
	movw      %ax, _D
	movzwl    _D, %eax
	movw      %ax, _C
	movb      %al, _B
	movzbl    _B, %eax
	movb      %al, _A
	movsbl    %al, %eax
	leave     
	ret       
# ----------------------
	.data
	.def	_A;	.scl	2;	.endef
_A:
	.value	2
# ----------------------
	.def	_C;	.scl	2;	.endef
_C:
	.value	3
# ----------------------
	.def	_E;	.scl	2;	.endef
_E:
	.long	5
# ----------------------
	.bss
	.def	_B;	.scl	2;	.endef
_B:
	.zero	2
# ----------------------
	.def	_D;	.scl	2;	.endef
_D:
	.zero	2
# ----------------------
	.def	_F;	.scl	2;	.endef
_F:
	.zero	4
# ----------------------
