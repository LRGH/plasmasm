	.text
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
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %eax
	call      __alloca
L00401295:
	call      ___main
L0040129A:
	movl      $LC00403007, -4(%ebp)
	movl      _a, %eax
	addl      $13, %eax
	movl      %eax, -8(%ebp)
	movl      -4(%ebp), %eax
	movl      %eax, -12(%ebp)
	leal      -8(%ebp), %eax
	incl      (%eax)
	movl      _s, %eax
	movl      %eax, -12(%ebp)
	movl      -8(%ebp), %eax
	leave     
	ret       
# ----------------------
	.data
	.def	_a;	.scl	2;	.endef
_a:
	.long	12
# ----------------------
	.def	_s;	.scl	2;	.endef
_s:
	.long	LC00403000
# ----------------------
	.section       .rdata
LC00403000:
	.string	"hello\n"
LC00403007:
	.string	"test"
# ----------------------
