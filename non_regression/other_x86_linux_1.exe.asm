	.text
	.def	_eax;	.scl	2;	.type	32;	.endef
_eax:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
# ----------------------
	.def	_ebp;	.scl	2;	.type	32;	.endef
_ebp:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
# ----------------------
	.def	_ezx;	.scl	2;	.type	32;	.endef
_ezx:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
# ----------------------
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $40, %esp
	andl      $-16, %esp
	movl      $0, %eax
	addl      $15, %eax
	addl      $15, %eax
	shrl      $4, %eax
	sall      $4, %eax
	movl      %eax, -28(%ebp)
	movl      -28(%ebp), %eax
	call      __alloca
L004012A4:
	call      ___main
L004012A9:
	movl      $_eax, -24(%ebp)
	movl      $_ebp, -20(%ebp)
	movl      $_ezx, -16(%ebp)
	movl      8(%ebp), %eax
	movl      -24(%ebp,%eax,4), %eax
	call      *%eax
L004012C7:
	call      _eax
L004012CC:
	leave     
	ret       
# ----------------------
