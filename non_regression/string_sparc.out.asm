	.text
	.globl	main
	.type	main, #function
main:
	save    %sp, -112, %sp
	sethi   %hi(.LC40003368), %g1
	bset    %lo(.LC40003368), %g1
	st      %g1, [%fp+-12]
	sethi   %hi(a), %g1
	bset    %lo(a), %g1
	ld      [%g0+%g1]0, %g1
	inc     13, %g1
	st      %g1, [%fp+-8]
	ld      [%fp+-12], %g1
	st      %g1, [%fp+-4]
	ld      [%fp+-8], %g1
	inc     %g1, %g1
	st      %g1, [%fp+-8]
	sethi   %hi(s), %g1
	bset    %lo(s), %g1
	ld      [%g0+%g1]0, %g1
	st      %g1, [%fp+-4]
	ld      [%fp+-8], %g1
	mov     %g1, %i0
	restore
	retl
	nop     
	.size	main, .-main
# ----------------------
	.data
	.globl	a
	.type	a, #object
a:
	.long	12
	.size	a, 4
# ----------------------
	.globl	s
	.type	s, #object
s:
	.long	.LC40003360
	.size	s, 4
# ----------------------
	.section       .rodata
.LC40003360:
	.string	"hello\n"
# ----------------------
.LC40003367:
	.byte	0
	.align 2
.LC40003368:
	.string	"test"
# ----------------------
	.weak	_srmmu_fault_svt
	.set	_srmmu_fault_svt,__srmmu_fault_svt@0x40002b00
	.weak	_fpdis_enable
	.set	_fpdis_enable,__fpdis_enable_svt@0x40002354
	.weak	_srmmu_fault
	.set	_srmmu_fault,__srmmu_fault_svt@0x40002b00
	.weak	_irqcall_disableirq
	.set	_irqcall_disableirq,__irqcall_disableirq@0x4000227c
	.weak	_window_overflow
	.set	_window_overflow,__window_overflow@0x40002058
	.weak	_flush_windows_svt
	.set	_flush_windows_svt,__flush_windows_svt@0x40002124
	.weak	prelibchook
	.set	prelibchook,__prelibchook@0x40002480
	.weak	_hardreset
	.set	_hardreset,_hardreset_libgloss@0x400029a8
	.weak	leonbare_irq_entry
	.set	leonbare_irq_entry,_leonbare_irq_entry@0x40002490
	.weak	_irqcall_svt
	.set	_irqcall_svt,__irqcall@0x40002298
	.weak	__deregister_frame_info
	.weak	_window_overflow_svt
	.set	_window_overflow_svt,__window_overflow@0x40002058
	.weak	_flush_windows
	.set	_flush_windows,__flush_windows@0x40002128
	.weak	_hardreset_custom_svt_weak
	.set	_hardreset_custom_svt_weak,_hardreset_custom_svt_weak_dummy@0x40002af8
	.weak	_irqcall_disableirq_svt
	.set	_irqcall_disableirq_svt,__irqcall_disableirq@0x4000227c
	.weak	_window_underflow
	.set	_window_underflow,__window_underflow@0x400020c4
	.weak	_irqcall
	.set	_irqcall,__irqcall@0x40002298
	.weak	_fpdis_enable_svt
	.set	_fpdis_enable_svt,__fpdis_enable_svt@0x40002354
	.weak	_hardreset_mvt
	.set	_hardreset_mvt,_hardreset_mvt_ram@0x40002b18
	.weak	bdinit1
	.set	bdinit1,__bdinit1@0x40002470
	.weak	_window_underflow_svt
	.set	_window_underflow_svt,__window_underflow@0x400020c4
	.weak	_cleanregs_custom_weak
	.set	_cleanregs_custom_weak,_cleanregs_donothing@0x40002a64
	.weak	cpuinit
	.set	cpuinit,_cpuinit@0x400026ec
	.weak	_hardreset_custom_weak
	.set	_hardreset_custom_weak,_hardreset_custom_weak_dummy@0x40002a74
	.weak	_leonbare_irq_entry_svt
	.set	_leonbare_irq_entry_svt,__leonbare_irq_entry_svt@0x40002488
	.weak	bdinit2
	.set	bdinit2,__bdinit2@0x40002478
	.weak	_Jv_RegisterClasses
	.weak	__register_frame_info
	.ident	"GCC: (GNU) 4.4.2"
