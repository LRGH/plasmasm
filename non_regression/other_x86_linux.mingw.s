	.file	"c3bis.c"
	.intel_syntax
.globl _b
	.bss
_b:
	.space 1
.globl _c
	.data
_c:
	.byte	5
.globl _h
	.bss
	.align 4
_h:
	.space 4
.globl _i
	.data
	.align 4
_i:
	.long	7
.globl _r
	.bss
	.align 8
_r:
	.space 8
.globl _s
	.data
	.align 8
_s:
	.long	0
	.long	1073741824
.globl _x
_x:
	.ascii "test\0"
.globl _y
	.align 4
_y:
	.long	0
	.long	1
	.long	2
	.text
	.def	_f;	.scl	3;	.type	32;	.endef
_f:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
.lcomm d.0,16
.lcomm j.1,16
	.data
e.2:
	.byte	2
.lcomm f.3,16
	.align 4
k.4:
	.long	3
.lcomm l.5,16
.lcomm t.6,16
.lcomm u.7,16
	.align 8
v.8:
	.long	0
	.long	1075314688
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	and	esp, -16
	mov	eax, 0
	add	eax, 15
	add	eax, 15
	shr	eax, 4
	sal	eax, 4
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	call	__alloca
	call	___main
	movsx	eax, BYTE PTR d.0
	add	eax, DWORD PTR k.4
	leave
	ret
	.comm	_a, 16	 # 1
	.comm	_g, 16	 # 4
	.comm	_q, 16	 # 8
	.comm	_z, 16	 # 12
