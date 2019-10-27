	.file	"foo.cc"
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN9SingletonIiE11getInstanceEv
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	foo, .-foo
	.section	.text._ZN9SingletonIiE11getInstanceEv,"axG",@progbits,_ZN9SingletonIiE11getInstanceEv,comdat
	.weak	_ZN9SingletonIiE11getInstanceEv
	.type	_ZN9SingletonIiE11getInstanceEv, @function
_ZN9SingletonIiE11getInstanceEv:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$_ZZN9SingletonIiE11getInstanceEvE8instance, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN9SingletonIiE11getInstanceEv, .-_ZN9SingletonIiE11getInstanceEv
	.weak	_ZZN9SingletonIiE11getInstanceEvE8instance
	.section	.bss._ZZN9SingletonIiE11getInstanceEvE8instance,"awG",@nobits,_ZZN9SingletonIiE11getInstanceEvE8instance,comdat
	.align 4
	.type	_ZZN9SingletonIiE11getInstanceEvE8instance, @gnu_unique_object
	.size	_ZZN9SingletonIiE11getInstanceEvE8instance, 4
_ZZN9SingletonIiE11getInstanceEvE8instance:
	.zero	4
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
