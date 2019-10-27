	.text
	.globl	y
	.type	y, #function
y:
	save  %sp, -96, %sp
	st  %i0, [%fp+68]
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%g1+8], %g2
	inc  -0x1, %g2
	st  %g2, [%g1+8]
	ld  [%g1+8], %g1
	cmp  %g1, 0
	bge  .L400012CC
	nop  
.L400011D0:
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%g1+8], %g2
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%g1+24], %g1
	cmp  %g2, %g1
	bl  .L400012A0
	nop  
.L40001204:
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%g0+%g1]0, %g1
	ld  [%fp+68], %g2
	stb  %g2, [%g0+%g1]0
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%g0+%g1]0, %g1
	ldub  [%g0+%g1]0, %g1
	and  %g1, 0xff, %g1
	cmp  %g1, 10
	be  .L40001274
	nop  
.L40001248:
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g2
	ld  [%g0+%g2]0, %g3
	ldub  [%g0+%g3]0, %g1
	and  %g1, 0xff, %g1
	inc  %g3
	st  %g3, [%g0+%g2]0
	ba  .L40001298
	nop  
.L40001274:
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	mov  0xa, %o0
	mov  %g1, %o1
	call  __swbuf, 0
	nop  
.L40001294:
	mov  %o0, %g1
.L40001298:
	ba  .L400012C4
	nop  
.L400012A0:
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%fp+68], %o0
	mov  %g1, %o1
	call  __swbuf, 0
	nop  
.L400012C0:
	mov  %o0, %g1
.L400012C4:
	ba  .L4000130C
	nop  
.L400012CC:
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g1
	ld  [%g0+%g1]0, %g1
	ld  [%fp+68], %g2
	stb  %g2, [%g0+%g1]0
	sethi  %hi(_impure_ptr), %g1
	bset   %lo(_impure_ptr), %g1
	ld  [%g0+%g1]0, %g1
	ld  [%g1+8], %g2
	ld  [%g0+%g2]0, %g3
	ldub  [%g0+%g3]0, %g1
	and  %g1, 0xff, %g1
	inc  %g3
	st  %g3, [%g0+%g2]0
.L4000130C:
	mov  %g1, %i0
	restore
	retl
	nop  
	.size	y, .-y
# ----------------------
	.globl	r
	.type	r, #function
r:
	save  %sp, -96, %sp
	st  %i0, [%fp+68]
	sethi  %hi(p), %g1
	bset   %lo(p), %g1
	ld  [%g0+%g1]0, %g1
	ldub  [%g0+%g1]0, %g1
	sll  %g1, 24, %g1
	sra  %g1, 24, %g1
	sethi  %hi(.LC40005D08), %g2
	bset   %lo(.LC40005D08), %g2
	ldub  [%g1+%g2]0, %g1
	sll  %g1, 24, %g1
	sra  %g1, 24, %g1
	mov  %g1, %o0
	call  y, 0
	nop  
.L4000135C:
	mov  %o0, %g1
	mov  %g1, %i0
	restore
	retl
	nop  
	.size	r, .-r
# ----------------------
	.globl	X
	.type	X, #function
X:
	save  %sp, -96, %sp
	st  %i0, [%fp+68]
	mov  0x0, %o0
	call  time, 0
	nop  
.L40001384:
	mov  %o0, %g3
	sethi  %hi(b), %g1
	bset   %lo(b), %g1
	ld  [%g0+%g1]0, %g2
	mov  0x1, %g1
	cmp  %g3, %g2
	bg  .L400013A8
	nop  
.L400013A4:
	mov  0x0, %g1
.L400013A8:
	mov  %g1, %i0
	restore
	retl
	nop  
	.size	X, .-X
# ----------------------
	.globl	main
	.type	main, #function
main:
	save  %sp, -96, %sp
	mov  0x0, %g1
	mov  %g1, %i0
	restore
	retl
	nop  
	.size	main, .-main
# ----------------------
	.data
	.globl	c
	.type	c, #object
c:
	.long	1
	.size	c, 4
# ----------------------
	.globl	s
	.type	s, #object
s:
	.long	16
	.size	s, 4
# ----------------------
	.globl	S
	.type	S, #object
S:
	.long	Z
	.size	S, 4
# ----------------------
	.globl	p
	.type	p, #object
p:
	.long	.LC40005D01
	.size	p, 4
# ----------------------
	.bss
	.globl	b
	.type	b, #object
b:
	.zero	4
	.size	b, 4
# ----------------------
	.globl	j
	.type	j, #object
j:
	.zero	4
	.size	j, 4
# ----------------------
	.globl	n
	.type	n, #object
n:
	.zero	4
	.size	n, 4
# ----------------------
	.globl	v
	.type	v, #object
v:
	.zero	4
	.size	v, 4
# ----------------------
	.globl	ol
	.type	ol, #object
ol:
	.zero	1
	.size	ol, 1
# ----------------------
	.align 16
	.globl	O
	.type	O, #object
O:
	.zero	36
	.size	O, 36
# ----------------------
	.globl	co
	.type	co, #object
co:
	.zero	1
	.size	co, 1
# ----------------------
	.align 16
	.globl	L
	.type	L, #object
L:
	.zero	99
	.size	L, 99
# ----------------------
	.align 2
	.globl	Z
	.type	Z, #object
Z:
	.zero	12
	.size	Z, 12
# ----------------------
	.align 16
	.globl	M
	.type	M, #object
M:
	.zero	999
	.size	M, 999
# ----------------------
	.align 2
	.globl	a
	.type	a, #object
a:
	.zero	4
	.size	a, 4
# ----------------------
	.align 16
	.globl	m
	.type	m, #object
m:
	.zero	64
	.size	m, 64
# ----------------------
	.section       .rodata
.LC40005D00:
	.byte	88
.LC40005D01:
	.string	"XX"
# ----------------------
.LC40005D04:
	.long	0
	.align 8
.LC40005D08:
	.string	"Y\n : ! ,.?>"
# ----------------------
	.weak	_srmmu_fault_svt
	.set	_srmmu_fault_svt,__srmmu_fault_svt@0x40004b30
	.weak	_fpdis_enable
	.set	_fpdis_enable,__fpdis_enable_svt@0x4000363c
	.weak	_srmmu_fault
	.set	_srmmu_fault,__srmmu_fault_svt@0x40004b30
	.weak	_irqcall_disableirq
	.set	_irqcall_disableirq,__irqcall_disableirq@0x40003564
	.weak	_window_overflow
	.set	_window_overflow,__window_overflow@0x40003340
	.weak	_flush_windows_svt
	.set	_flush_windows_svt,__flush_windows_svt@0x4000340c
	.weak	prelibchook
	.set	prelibchook,__prelibchook@0x40003768
	.weak	_hardreset
	.set	_hardreset,_hardreset_libgloss@0x400049d8
	.weak	leonbare_irq_entry
	.set	leonbare_irq_entry,_leonbare_irq_entry@0x40003778
	.weak	_irqcall_svt
	.set	_irqcall_svt,__irqcall@0x40003580
	.weak	__deregister_frame_info
	.weak	_window_overflow_svt
	.set	_window_overflow_svt,__window_overflow@0x40003340
	.weak	_flush_windows
	.set	_flush_windows,__flush_windows@0x40003410
	.weak	_hardreset_custom_svt_weak
	.set	_hardreset_custom_svt_weak,_hardreset_custom_svt_weak_dummy@0x40004b28
	.weak	_irqcall_disableirq_svt
	.set	_irqcall_disableirq_svt,__irqcall_disableirq@0x40003564
	.weak	_window_underflow
	.set	_window_underflow,__window_underflow@0x400033ac
	.weak	_irqcall
	.set	_irqcall,__irqcall@0x40003580
	.weak	_fpdis_enable_svt
	.set	_fpdis_enable_svt,__fpdis_enable_svt@0x4000363c
	.weak	_hardreset_mvt
	.set	_hardreset_mvt,_hardreset_mvt_ram@0x40004b48
	.weak	bdinit1
	.set	bdinit1,__bdinit1@0x40003758
	.weak	_window_underflow_svt
	.set	_window_underflow_svt,__window_underflow@0x400033ac
	.weak	_cleanregs_custom_weak
	.set	_cleanregs_custom_weak,_cleanregs_donothing@0x40004a94
	.weak	cpuinit
	.set	cpuinit,_cpuinit@0x40004148
	.weak	_hardreset_custom_weak
	.set	_hardreset_custom_weak,_hardreset_custom_weak_dummy@0x40004aa4
	.weak	_leonbare_irq_entry_svt
	.set	_leonbare_irq_entry_svt,__leonbare_irq_entry_svt@0x40003770
	.weak	bdinit2
	.set	bdinit2,__bdinit2@0x40003760
	.weak	_Jv_RegisterClasses
	.weak	__register_frame_info
	.ident	"GCC: (GNU) 4.4.2"
