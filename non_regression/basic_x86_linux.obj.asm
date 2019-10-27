	.file	"a00.c"
	.text
	.globl	_main
	.type	_main, @function
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
L00000025:
	call      ___main
L0000002A:
	movl      $0, -4(%ebp)
	leal      -4(%ebp), %eax
	addl      $66, (%eax)
	movl      -4(%ebp), %eax
	leave     
	ret       
	.size	_main, .-_main
# ----------------------
