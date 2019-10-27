	.file	"a18.c"
	.text
	.globl	_eax
	.type	_eax, @function
_eax:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.size	_eax, .-_eax
# ----------------------
	.globl	_ebp
	.type	_ebp, @function
_ebp:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.size	_ebp, .-_ebp
# ----------------------
	.globl	_ezx
	.type	_ezx, @function
_ezx:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.size	_ezx, .-_ezx
# ----------------------
	.globl	_main
	.type	_main, @function
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
L00000034:
	call      ___main
L00000039:
	movl      $_eax, -24(%ebp)
	movl      $_ebp, -20(%ebp)
	movl      $_ezx, -16(%ebp)
	movl      8(%ebp), %eax
	movl      -24(%ebp,%eax,4), %eax
	call      *%eax
L00000057:
	call      _eax
L0000005C:
	leave     
	ret       
	.size	_main, .-_main
# ----------------------
