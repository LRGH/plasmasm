	.file	"z02.cpp"
	.section       .text._ZN4BaseD2Ev,"axG",@progbits,_ZN4BaseD5Ev,comdat
	.align 2
	.weak	_ZN4BaseD2Ev
	.type	_ZN4BaseD2Ev, @function
_ZN4BaseD2Ev:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.cfi_endproc
	.size	_ZN4BaseD2Ev, .-_ZN4BaseD2Ev
# ----------------------
	.local	_ZL4tutu
	.comm	_ZL4tutu,1,1
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	movl      $0, %eax
	popl      %ebp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .text._ZN4TotoIvED2Ev,"axG",@progbits,_ZN4TotoIvED5Ev,comdat
	.align 2
	.weak	_ZN4TotoIvED2Ev
	.type	_ZN4TotoIvED2Ev, @function
_ZN4TotoIvED2Ev:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      _ZN4BaseD2Ev
	leave     
	ret       
	.cfi_endproc
	.size	_ZN4TotoIvED2Ev, .-_ZN4TotoIvED2Ev
# ----------------------
	.text
	.local	_Z41__static_initialization_and_destruction_0ii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	cmpl      $1, 8(%ebp)
	jne       .L6
	cmpl      $65535, 12(%ebp)
	jne       .L6
	movl      $_ZN4TotoIvED1Ev, %eax
	movl      $__dso_handle, 8(%esp)
	movl      $_ZL4tutu, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_atexit
.L6:
	leave     
	ret       
	.cfi_endproc
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
# ----------------------
	.local	_GLOBAL__sub_I_main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	movl      $65535, 4(%esp)
	movl      $1, (%esp)
	call      _Z41__static_initialization_and_destruction_0ii
	leave     
	ret       
	.cfi_endproc
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
# ----------------------
	.section       .ctors,"aw",@progbits
	.long	_GLOBAL__sub_I_main
# ----------------------
	.weak	_ZN4BaseD1Ev
	.set	_ZN4BaseD1Ev,_ZN4BaseD2Ev
	.weak	_ZN4TotoIvED1Ev
	.set	_ZN4TotoIvED1Ev,_ZN4TotoIvED2Ev
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
