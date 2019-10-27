	.file	"foo.cc"
	.text
	.globl	foo
	.type	foo, @function
foo:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	call      _ZN9SingletonIiE11getInstanceEv
	movl      (%rax), %eax
	popq      %rbp
	ret       
	.cfi_endproc
	.size	foo, .-foo
# ----------------------
	.section       .text._ZN9SingletonIiE11getInstanceEv,"axG",@progbits,_ZN9SingletonIiE11getInstanceEv,comdat
	.weak	_ZN9SingletonIiE11getInstanceEv
	.type	_ZN9SingletonIiE11getInstanceEv, @function
_ZN9SingletonIiE11getInstanceEv:
	.cfi_startproc
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $_ZZN9SingletonIiE11getInstanceEvE8instance, %eax
	popq      %rbp
	ret       
	.cfi_endproc
	.size	_ZN9SingletonIiE11getInstanceEv, .-_ZN9SingletonIiE11getInstanceEv
# ----------------------
	.section       .bss._ZZN9SingletonIiE11getInstanceEvE8instance,"awG",@nobits,_ZZN9SingletonIiE11getInstanceEvE8instance,comdat
	.align 4
	.weak	_ZZN9SingletonIiE11getInstanceEvE8instance
	.type	_ZZN9SingletonIiE11getInstanceEvE8instance, @gnu_unique_object
_ZZN9SingletonIiE11getInstanceEvE8instance:
	.zero	4
	.size	_ZZN9SingletonIiE11getInstanceEvE8instance, 4
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
