	.file	"z02.cpp"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $0, %eax
	popl      %ebp
	ret       
	.size	main, .-main
# ----------------------
	.local	_Z41__static_initialization_and_destruction_0ii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	cmpl      $1, 8(%ebp)
	jne       .L08048440
.L0804841A:
	cmpl      $65535, 12(%ebp)
	jne       .L08048440
.L08048423:
	movl      $_ZN4TotoIvED1Ev, %eax
	movl      $__dso_handle, 8(%esp)
	movl      $_ZL4tutu, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_atexit
.L08048440:
	leave     
	ret       
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
# ----------------------
	.local	_GLOBAL__sub_I_main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	movl      $65535, 4(%esp)
	movl      $1, (%esp)
	call      _Z41__static_initialization_and_destruction_0ii
.L0804845C:
	leave     
	ret       
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
# ----------------------
	.weak	_ZN4BaseD2Ev
	.type	_ZN4BaseD2Ev, @function
_ZN4BaseD2Ev:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.size	_ZN4BaseD2Ev, .-_ZN4BaseD2Ev
# ----------------------
.L08048463:
	.byte	144
# ----------------------
	.weak	_ZN4TotoIvED2Ev
	.type	_ZN4TotoIvED2Ev, @function
_ZN4TotoIvED2Ev:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      _ZN4BaseD1Ev
.L08048475:
	leave     
	ret       
	.size	_ZN4TotoIvED2Ev, .-_ZN4TotoIvED2Ev
# ----------------------
	.section       .init_array,"wa",@init_array
.LD.init_array.0:
	.long	_GLOBAL__sub_I_main
# ----------------------
	.local	_ZL4tutu
	.comm	_ZL4tutu,1,1
# ----------------------
	.weak	_ZN4TotoIvED1Ev
	.set	_ZN4TotoIvED1Ev,_ZN4TotoIvED2Ev
	.hidden	__dso_handle
	.weak	_ZN4BaseD1Ev
	.set	_ZN4BaseD1Ev,_ZN4BaseD2Ev
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
