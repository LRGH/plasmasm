	.file	"foo.cc"
	.section       .bss._ZZN9SingletonIiE11getInstanceEvE8instance,"waG",@nobits,_ZZN9SingletonIiE11getInstanceEvE8instance,comdat
	.weak	_ZZN9SingletonIiE11getInstanceEvE8instance
	.type	_ZZN9SingletonIiE11getInstanceEvE8instance, @gnu_unique_object
_ZZN9SingletonIiE11getInstanceEvE8instance:
	.zero	4
	.size	_ZZN9SingletonIiE11getInstanceEvE8instance, 4
# ----------------------
	.section       .text._ZN9SingletonIiE11getInstanceEv,"axG",@progbits,_ZN9SingletonIiE11getInstanceEv,comdat
	.weak	_ZN9SingletonIiE11getInstanceEv
	.type	_ZN9SingletonIiE11getInstanceEv, @function
_ZN9SingletonIiE11getInstanceEv:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $_ZZN9SingletonIiE11getInstanceEvE8instance, %eax
	popq      %rbp
	ret       
	.size	_ZN9SingletonIiE11getInstanceEv, .-_ZN9SingletonIiE11getInstanceEv
# ----------------------
	.text
	.globl	foo
	.type	foo, @function
foo:
	pushq     %rbp
	movq      %rsp, %rbp
	call      .LTHUNK6
.L00000009:
	movl      (%rax), %eax
	popq      %rbp
	ret       
	.size	foo, .-foo
# ----------------------
	.set	.LTHUNK6,_ZN9SingletonIiE11getInstanceEv
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
