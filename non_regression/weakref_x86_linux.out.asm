	.file	"y0.cpp"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	andl      $-16, %esp
	subl      $32, %esp
	call      __i686.get_pc_thunk.bx
.L080487E4:
	addl      $6160, %ebx
	movl      $4, (%esp)
	call      __cxa_allocate_exception
.L080487F6:
	movl      $20, (%eax)
	movl      $0, 8(%esp)
	movl      -4(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_throw
.L08048816:
	movl      %eax, %esi
	call      __cxa_end_catch
.L0804881D:
	movl      %esi, %eax
	movl      %eax, (%esp)
	call      _Unwind_Resume
.L08048827:
	cmpl      $1, %edx
	je        .L08048834
.L0804882C:
	movl      %eax, (%esp)
	call      _Unwind_Resume
.L08048834:
	movl      %eax, (%esp)
	call      __cxa_begin_catch
.L0804883C:
	movl      (%eax), %eax
	movl      %eax, 28(%esp)
	leal      -5652(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      -12(%ebx), %eax
	movl      %eax, (%esp)
	call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L0804885A:
	movl      28(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _ZNSolsEi
.L0804886A:
	movl      $10, 4(%esp)
	movl      %eax, (%esp)
	call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.L0804887A:
	call      __cxa_end_catch
.L0804887F:
	movl      $0, %eax
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %ebp
	ret       
	.size	main, .-main
# ----------------------
	.local	_Z41__static_initialization_and_destruction_0ii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $20, %esp
	call      __i686.get_pc_thunk.bx
.L08048897:
	addl      $5981, %ebx
	cmpl      $1, 8(%ebp)
	jne       .L080488DC
.L080488A3:
	cmpl      $65535, 12(%ebp)
	jne       .L080488DC
.L080488AC:
	leal      88(%ebx), %eax
	movl      %eax, (%esp)
	call      _ZNSt8ios_base4InitC1Ev
.L080488BA:
	movl      -16(%ebx), %eax
	movl      -8(%ebx), %edx
	movl      %edx, 8(%esp)
	leal      88(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_atexit
.L080488DC:
	addl      $20, %esp
	popl      %ebx
	popl      %ebp
	ret       
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
# ----------------------
	.local	_GLOBAL__sub_I_y0.cpp
	.type	_GLOBAL__sub_I_y0.cpp, @function
_GLOBAL__sub_I_y0.cpp:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $24, %esp
	movl      $65535, 4(%esp)
	movl      $1, (%esp)
	call      _Z41__static_initialization_and_destruction_0ii
.L080488FC:
	leave     
	ret       
	.size	_GLOBAL__sub_I_y0.cpp, .-_GLOBAL__sub_I_y0.cpp
# ----------------------
	.section       .rodata
.LC080489E0:
	.string	"An exception occurred. Exception Nr. "
# ----------------------
	.section       .init_array,"wa",@init_array
.LD.init_array.0:
	.long	_GLOBAL__sub_I_y0.cpp
# ----------------------
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
# ----------------------
	.section       .text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.hidden	__i686.get_pc_thunk.bx
	.globl	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.weak	DW.ref.__gxx_personality_v0
	.weak	DW.ref._ZTIi
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
