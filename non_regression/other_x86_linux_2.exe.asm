	.text
	.def	_toto;	.scl	2;	.type	32;	.endef
_toto:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	incl      (%eax)
	popl      %ebp
	ret       
# ----------------------
	.def	_tata;	.scl	2;	.type	32;	.endef
_tata:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	decl      (%eax)
	popl      %ebp
	ret       
# ----------------------
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	andl      $-16, %esp
	movl      $0, %eax
	addl      $15, %eax
	addl      $15, %eax
	shrl      $4, %eax
	sall      $4, %eax
	movl      %eax, -8(%ebp)
	movl      -8(%ebp), %eax
	call      __alloca
L004012A9:
	call      ___main
L004012AE:
	movl      $0, -4(%ebp)
	movl      8(%ebp), %edx
	leal      -4(%ebp), %eax
	movl      %eax, (%esp)
	movl      4202492(,%edx,4), %eax
	call      *%eax
L004012C7:
	movl      -4(%ebp), %eax
	leave     
	ret       
# ----------------------
	.data
	.def	_t;	.scl	2;	.endef
_t:
	.long	_toto
	.long	_tata
# ----------------------
