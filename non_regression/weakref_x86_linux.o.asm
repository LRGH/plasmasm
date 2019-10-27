	.file	"y0.cpp"
	.section       .data.DW.ref.__gxx_personality_v0,"waG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.type	DW.ref.__gxx_personality_v0, @object
DW.ref.__gxx_personality_v0:
	.long	__gxx_personality_v0
	.size	DW.ref.__gxx_personality_v0, 4
# ----------------------
	.section       .data.DW.ref._ZTIi,"waG",@progbits,DW.ref._ZTIi,comdat
	.hidden	DW.ref._ZTIi
	.weak	DW.ref._ZTIi
	.type	DW.ref._ZTIi, @object
DW.ref._ZTIi:
	.long	_ZTIi
	.size	DW.ref._ZTIi, 4
# ----------------------
	.section       .ctors,"wa",@progbits
.LD.ctors.0:
	.long	_GLOBAL__sub_I_y0.cpp
# ----------------------
	.section       .rodata
	.align 4
.LC00000000:
	.string	"An exception occurred. Exception Nr. "
# ----------------------
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
.L00000010:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $4, (%esp)
	call      __cxa_allocate_exception@PLT
.L00000022:
	movl      $20, (%eax)
	movl      $0, 8(%esp)
	movl      _ZTIi@GOT(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_throw@PLT
.L00000042:
	movl      %eax, %esi
	call      __cxa_end_catch@PLT
.L00000049:
	movl      %esi, %eax
	movl      %eax, (%esp)
	call      _Unwind_Resume@PLT
.L00000053:
	cmpl      $1, %edx
	je        .L00000060
.L00000058:
	movl      %eax, (%esp)
	call      _Unwind_Resume@PLT
.L00000060:
	movl      %eax, (%esp)
	call      __cxa_begin_catch@PLT
.L00000068:
	movl      (%eax), %eax
	movl      %eax, 28(%esp)
	leal      .LC00000000@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      _ZSt4cout@GOT(%ebx), %eax
	movl      %eax, (%esp)
	call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L00000086:
	movl      28(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _ZNSolsEi@PLT
.L00000096:
	movl      $10, 4(%esp)
	movl      %eax, (%esp)
	call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.L000000A6:
	call      __cxa_end_catch@PLT
.L000000AB:
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
.L000000C3:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl      $1, 8(%ebp)
	jne       .L00000108
.L000000CF:
	cmpl      $65535, 12(%ebp)
	jne       .L00000108
.L000000D8:
	leal      _ZStL8__ioinit@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      _ZNSt8ios_base4InitC1Ev@PLT
.L000000E6:
	movl      _ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	movl      __dso_handle@GOT(%ebx), %edx
	movl      %edx, 8(%esp)
	leal      _ZStL8__ioinit@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_atexit@PLT
.L00000108:
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
.L00000128:
	leave     
	ret       
	.size	_GLOBAL__sub_I_y0.cpp, .-_GLOBAL__sub_I_y0.cpp
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
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
