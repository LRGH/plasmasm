	.text
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $88, %esp
	andl      $-16, %esp
	movl      $0, %eax
	addl      $15, %eax
	addl      $15, %eax
	shrl      $4, %eax
	sall      $4, %eax
	movl      %eax, -76(%ebp)
	movl      -76(%ebp), %eax
	call      __alloca
L00401295:
	call      ___main
L0040129A:
	movsbl    -9(%ebp), %edx
	movswl    LBSS00404008, %eax
	leal      (%edx,%eax), %eax
	addl      -16(%ebp), %eax
	cltd      
	addl      -24(%ebp), %eax
	adcl      -20(%ebp), %edx
	pushl     %edx
	pushl     %eax
	fildq     (%esp)
	leal      8(%esp), %esp
	fadds     -28(%ebp)
	faddl     -40(%ebp)
	fldt      -56(%ebp)
	faddp     %st, %st(1)
	fnstcw    -58(%ebp)
	movzwl    -58(%ebp), %eax
	orw       $3072, %ax
	movw      %ax, -60(%ebp)
	fldcw     -60(%ebp)
	fistpl    -64(%ebp)
	fldcw     -58(%ebp)
	movl      -64(%ebp), %eax
	leave     
	ret       
# ----------------------
	.bss
LBSS00404008:
	.zero	16
# ----------------------
