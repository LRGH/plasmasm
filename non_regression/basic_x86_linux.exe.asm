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
	movl      %eax, -8(%ebp)
	movl      -8(%ebp), %eax
	call      __alloca
L00401295:
	call      ___main
L0040129A:
	movl      $0, -4(%ebp)
	leal      -4(%ebp), %eax
	addl      $66, (%eax)
	movl      -4(%ebp), %eax
	leave     
	ret       
# ----------------------
