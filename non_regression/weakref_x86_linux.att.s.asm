	.file	"y0.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
# ----------------------
	.section       .rodata
	.align 4
.LC0:
	.string	"An exception occurred. Exception Nr. "
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
.LFB966:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA966
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	andl      $-16, %esp
	subl      $32, %esp
	call      __i686.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $4, (%esp)
	call      __cxa_allocate_exception@PLT
	movl      $20, (%eax)
	movl      $0, 8(%esp)
	movl      _ZTIi@GOT(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
.LEHB0:
	call      __cxa_throw@PLT
.LEHE0:
.L7:
	movl      %eax, %esi
	call      __cxa_end_catch@PLT
	movl      %esi, %eax
	movl      %eax, (%esp)
.LEHB1:
	call      _Unwind_Resume@PLT
.L6:
	cmpl      $1, %edx
	je        .L5
	movl      %eax, (%esp)
	call      _Unwind_Resume@PLT
.LEHE1:
.L5:
	movl      %eax, (%esp)
	call      __cxa_begin_catch@PLT
	movl      (%eax), %eax
	movl      %eax, 28(%esp)
	leal      .LC0@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      _ZSt4cout@GOT(%ebx), %eax
	movl      %eax, (%esp)
.LEHB2:
	call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl      28(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _ZNSolsEi@PLT
	movl      $10, 4(%esp)
	movl      %eax, (%esp)
	call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
.LEHE2:
	call      __cxa_end_catch@PLT
	movl      $0, %eax
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .gcc_except_table,"a",@progbits
	.align 4
.LLSDA966:
	.byte	255
	.byte	155
	.uleb128	.LLSDATT966-.LLSDATTD966
.LLSDATTD966:
	.byte	1
	.uleb128	.LLSDACSE966-.LLSDACSB966
.LLSDACSB966:
	.uleb128	.LEHB0-.LFB966
	.uleb128	.LEHE0-.LEHB0
	.uleb128	.L6-.LFB966
	.uleb128	1
	.uleb128	.LEHB1-.LFB966
	.uleb128	.LEHE1-.LEHB1
	.uleb128	0
	.uleb128	0
	.uleb128	.LEHB2-.LFB966
	.uleb128	.LEHE2-.LEHB2
	.uleb128	.L7-.LFB966
	.uleb128	0
.LLSDACSE966:
	.byte	1
	.byte	0
	.align 4
	.long	DW.ref._ZTIi-.
.LLSDATT966:
# ----------------------
	.text
	.local	_Z41__static_initialization_and_destruction_0ii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $20, %esp
	call      __i686.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl      $1, 8(%ebp)
	jne       .L8
	cmpl      $65535, 12(%ebp)
	jne       .L8
	leal      _ZStL8__ioinit@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      _ZNSt8ios_base4InitC1Ev@PLT
	movl      _ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	movl      __dso_handle@GOT(%ebx), %edx
	movl      %edx, 8(%esp)
	leal      _ZStL8__ioinit@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      __cxa_atexit@PLT
.L8:
	addl      $20, %esp
	popl      %ebx
	popl      %ebp
	ret       
	.cfi_endproc
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
# ----------------------
	.local	_GLOBAL__sub_I_y0.cpp
	.type	_GLOBAL__sub_I_y0.cpp, @function
_GLOBAL__sub_I_y0.cpp:
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
	.size	_GLOBAL__sub_I_y0.cpp, .-_GLOBAL__sub_I_y0.cpp
# ----------------------
	.section       .ctors,"aw",@progbits
	.long	_GLOBAL__sub_I_y0.cpp
# ----------------------
	.section       .data.DW.ref._ZTIi,"awG",@progbits,DW.ref._ZTIi,comdat
	.align 4
	.hidden	DW.ref._ZTIi
	.weak	DW.ref._ZTIi
	.type	DW.ref._ZTIi, @object
DW.ref._ZTIi:
	.long	_ZTIi
	.size	DW.ref._ZTIi, 4
# ----------------------
	.section       .data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 4
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.type	DW.ref.__gxx_personality_v0, @object
DW.ref.__gxx_personality_v0:
	.long	__gxx_personality_v0
	.size	DW.ref.__gxx_personality_v0, 4
# ----------------------
	.section       .text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.hidden	__i686.get_pc_thunk.bx
	.globl	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	.cfi_startproc
	movl      (%esp), %ebx
	ret       
	.cfi_endproc
# ----------------------
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
