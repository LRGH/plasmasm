	.file	"c3bis.c"
	.intel_syntax
	.bss
	.def	_b;	.scl	2;	.endef
_b:
	.zero	1
# ----------------------
	.data
	.def	_c;	.scl	2;	.endef
_c:
	.byte	5
# ----------------------
	.bss
	.align 4
	.def	_h;	.scl	2;	.endef
_h:
	.zero	4
# ----------------------
	.data
	.align 4
	.def	_i;	.scl	2;	.endef
_i:
	.long	7
# ----------------------
	.bss
	.align 8
	.def	_r;	.scl	2;	.endef
_r:
	.zero	8
# ----------------------
	.data
	.align 8
	.def	_s;	.scl	2;	.endef
_s:
	.long	0
	.long	1073741824
# ----------------------
	.def	_x;	.scl	2;	.endef
_x:
	.ascii	"test\000"
# ----------------------
	.align 4
	.def	_y;	.scl	2;	.endef
_y:
	.long	0
	.long	1
	.long	2
e.2:
	.byte	2
	.align 4
k.4:
	.long	3
	.align 8
v.8:
	.long	0
	.long	1075314688
# ----------------------
	.text
	.def	_f;	.scl	3;	.type	32;	.endef
_f:
	push      ebp
	mov       ebp, esp
	pop       ebp
	ret       
# ----------------------
	.lcomm d.0,16
# ----------------------
	.lcomm j.1,16
# ----------------------
	.lcomm f.3,16
# ----------------------
	.lcomm l.5,16
# ----------------------
	.lcomm t.6,16
# ----------------------
	.lcomm u.7,16
# ----------------------
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push      ebp
	mov       ebp, esp
	sub       esp, 8
	and       esp, -16
	mov       eax, 0
	add       eax, 15
	add       eax, 15
	shr       eax, 4
	sal       eax, 4
	mov       DWORD PTR [ebp-4], eax
	mov       eax, DWORD PTR [ebp-4]
	call      __alloca
	call      ___main
	movsx     eax, BYTE PTR d.0
	add       eax, DWORD PTR k.4
	leave     
	ret       
# ----------------------
	.comm	_a,16	# 1
# ----------------------
	.comm	_g,16	# 4
# ----------------------
	.comm	_q,16	# 8
# ----------------------
	.comm	_z,16	# 12
# ----------------------
	.def	___main;	.scl	2;	.type	32;	.endef
