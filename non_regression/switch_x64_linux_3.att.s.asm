	.file	"compileX.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC01:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"lg()"
.LC1:
	.string	"unfinished string"
.LC7:
	.string	"compilecast, type unknown %ld"
.LC9:
	.string	"if"
.LC10:
	.string	"_void_if"
.LC11:
	.string	"my"
.LC12:
	.string	"local"
.LC13:
	.string	"global"
.LC14:
	.string	"O"
.LC15:
	.string	"o"
.LC16:
	.string	"wrong number of arguments"
.LC17:
	.string	"O(_^_)"
.LC18:
	.string	"_^s"
.LC20:
	.string	"unknown function"
.LC21:
	.string	"too few arguments"
.LC22:
	.string	"missing mandatory argument"
.LC23:
	.string	"unexpected ';'"
.LC25:
	.string	"_eval_mnemonic"
.LC26:
	.string	"expected character: '&'"
.LC27:
	.string	"missing variable name"
.LC28:
	.string	"Str"
.LC31:
	.string	"PPproto %d in compilefunc"
.LC32:
	.string	"too many arguments"
.LC39:
	.string	"optimizenode"
.LC40:
	.string	"unexpected character '&'"
# ----------------------
	.section       .text.unlikely,"ax",@progbits
.LCOLDB2:
.LCOLDE2:
.LCOLDB5:
.LCOLDE5:
.LCOLDB8:
.LCOLDE8:
.LCOLDB33:
.LCOLDE33:
.LCOLDB38:
.LCOLDE38:
.LCOLDB41:
.LCOLDE41:
.LCOLDB43:
.LCOLDE43:
# ----------------------
	.text
.LHOTB2:
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	strntoGENexp
	.type	strntoGENexp, @function
strntoGENexp:
	.cfi_startproc
	pushq     %r14
	pushq     %r13
	movq      %rdi, %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %r12
	movq      avma@GOTPCREL(%rip), %rbp
	pushq     %rbx
	leaq      6(%rsi), %rbx
	shrq      $3, %rbx
	movq      (%rbp), %rax
	addq      $1, %rbx
	leaq      0(,%rbx,8), %rdx
	movq      %rax, %r14
	subq      %rdx, %r14
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L2
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L2:
	movq      $-72057594037927936, %rax
	movq      %r14, (%rbp)
	testq     %rax, %rbx
	je        .L3
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L3:
	movq      $3026418949592973312, %rax
	leaq      8(%r14), %rbp
	addq      %r13, %r12
	orq       %rax, %rbx
	movq      %rbx, (%r14)
	leaq      1(%r13), %rbx
.L4:
	cmpq      %r12, %rbx
	jbe       .L25
	jmp       .L12
	.p2align 4,,10
	.p2align 3
.L30:
	cmpb      $116, %dl
	je        .L7
	cmpb      $101, %dl
	je        .L27
	movb      %dl, (%rbp)
	cmpb      $0, 1(%rbx)
	je        .L28
	.p2align 4,,10
	.p2align 3
.L9:
	addq      $2, %rbx
	addq      $1, %rbp
.L25:
	movzbl    (%rbx), %eax
	cmpb      $92, %al
	jne       .L29
	movzbl    1(%rbx), %edx
	cmpb      $110, %dl
	jne       .L30
	movb      $10, (%rbp)
	jmp       .L9
	.p2align 4,,10
	.p2align 3
.L27:
	movb      $27, (%rbp)
	jmp       .L9
	.p2align 4,,10
	.p2align 3
.L7:
	movb      $9, (%rbp)
	jmp       .L9
	.p2align 4,,10
	.p2align 3
.L29:
	cmpb      $34, %al
	je        .L31
	movb      %al, (%rbp)
	addq      $1, %rbx
	addq      $1, %rbp
	jmp       .L4
	.p2align 4,,10
	.p2align 3
.L28:
	leaq      .LC1(%rip), %rdi
	movq      %r13, %rsi
	call      compile_err@PLT
	jmp       .L9
	.p2align 4,,10
	.p2align 3
.L31:
	cmpb      $34, 1(%rbx)
	je        .L32
.L12:
	movb      $0, (%rbp)
	movq      %r14, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L32:
	addq      $2, %rbx
	jmp       .L4
.LHOTE2:
.LHOTB5:
	.cfi_endproc
	.size	strntoGENexp, .-strntoGENexp
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"function has incomplete prototype"
	.align 8
.LC4:
	.string	"function prototype is not supported"
	.align 8
.LC6:
	.string	"this should be a small integer"
	.align 8
.LC19:
	.string	"expected character: ',' or ')' instead of"
	.align 8
.LC24:
	.string	"missing flag in string function signature"
	.align 8
.LC29:
	.string	"Unknown prototype code `%c' for `%.*s'"
	.align 8
.LC30:
	.string	"Unknown prototype code `%c*' for `%.*s'"
	.align 8
.LC34:
	.string	"too many parameters for closure `%s'"
	.align 8
.LC35:
	.string	"Unknown prototype code `D%c' for `%s'"
	.align 8
.LC36:
	.string	"Unknown prototype code `D...,%c,' for `%s'"
	.align 8
.LC37:
	.string	"Unknown prototype code `%c*' for `%s'"
	.align 8
.LC42:
	.string	"expected character: '=' instead of"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	parseproto
	.type	parseproto, @function
parseproto:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %r12
	pushq     %rbx
	movq      (%rdi), %rbx
	movq      %rdi, %rbp
	movzbl    (%rbx), %eax
	cmpb      $68, %al
	je        .L35
	jle       .L97
	cmpb      $102, %al
	je        .L40
	jg        .L41
	cmpb      $80, %al
	je        .L40
	cmpb      $86, %al
	jne       .L34
	cmpb      $61, 1(%rbx)
	je        .L98
	movb      $86, (%rsi)
	jmp       .L96
	.p2align 4,,10
	.p2align 3
.L97:
	cmpb      $10, %al
	je        .L56
	jle       .L99
	cmpb      $38, %al
	jne       .L100
	addq      $1, %rbx
	movb      $42, (%rsi)
	movl      $1, %eax
	movq      %rbx, (%rdi)
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L41:
	cmpb      $112, %al
	je        .L40
	cmpb      $115, %al
	jne       .L34
	cmpb      $42, 1(%rbx)
	je        .L101
.L34:
	movb      %al, (%r12)
.L96:
	addq      $1, %rbx
	movl      $1, %eax
	movq      %rbx, (%rbp)
.L37:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L100:
	cmpb      $67, %al
	jne       .L34
.L40:
	addq      $1, %rbx
	movb      %al, (%r12)
	movl      $5, %eax
	movq      %rbx, (%rbp)
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L35:
	movzbl    1(%rbx), %ecx
	cmpb      $80, %cl
	je        .L45
	jg        .L46
	cmpb      $69, %cl
	je        .L45
	jg        .L47
	testb     %cl, %cl
	jne       .L102
	leaq      .LC3(%rip), %rdi
	movq      %rdx, %rsi
	call      compile_err@PLT
	movzbl    1(%rbx), %ecx
.L45:
	addq      $2, %rbx
	movb      %cl, (%r12)
	movl      $2, %eax
	movq      %rbx, (%rbp)
	jmp       .L37
	.p2align 4,,10
	.p2align 3
.L99:
	testb     %al, %al
	jne       .L34
.L56:
	popq      %rbx
	xorl      %eax, %eax
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L101:
	addq      $2, %rbx
	movb      $115, (%rsi)
	movl      $4, %eax
	movq      %rbx, (%rdi)
	jmp       .L37
	.p2align 4,,10
	.p2align 3
.L102:
	cmpb      $38, %cl
	je        .L45
.L44:
	xorl      %ecx, %ecx
	jmp       .L51
	.p2align 4,,10
	.p2align 3
.L103:
	cmpq      $1, %rcx
	jg        .L52
.L51:
	cmpb      $44, %al
	sete      %al
	addq      $1, %rbx
	movzbl    %al, %eax
	addq      %rax, %rcx
	movzbl    (%rbx), %eax
	testb     %al, %al
	jne       .L103
	cmpq      $1, %rcx
	jg        .L52
	leaq      .LC3(%rip), %rdi
	movq      %rdx, %rsi
	call      compile_err@PLT
.L52:
	movzbl    -2(%rbx), %eax
	movb      %al, (%r12)
	movq      %rbx, (%rbp)
	movl      $3, %eax
	jmp       .L37
	.p2align 4,,10
	.p2align 3
.L46:
	cmpb      $110, %cl
	je        .L45
	jg        .L49
	leal      -86(%rcx), %esi
	cmpb      $1, %sil
	ja        .L44
	jmp       .L45
	.p2align 4,,10
	.p2align 3
.L98:
	cmpb      $71, 2(%rbx)
	je        .L54
	leaq      .LC4(%rip), %rdi
	movq      %rdx, %rsi
	call      compile_err@PLT
.L54:
	movb      $61, (%r12)
	addq      $2, %rbx
	jmp       .L96
	.p2align 4,,10
	.p2align 3
.L47:
	cmpb      $71, %cl
	je        .L45
	cmpb      $73, %cl
	jne       .L44
	jmp       .L45
	.p2align 4,,10
	.p2align 3
.L49:
	leal      -114(%rcx), %esi
	cmpb      $1, %sil
	ja        .L44
	jmp       .L45
.LHOTE5:
.LHOTB8:
	.cfi_endproc
	.size	parseproto, .-parseproto
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	compilecast_loc
	.type	compilecast_loc, @function
compilecast_loc:
	.cfi_startproc
	cmpl      %esi, %edi
	je        .L104
	cmpl      $1, %esi
	je        .L107
	jle       .L116
	cmpl      $3, %esi
	je        .L110
	cmpl      $4, %esi
	jne       .L106
	cmpl      $1, %edi
	je        .L117
	testl     %edi, %edi
	je        .L118
.L104:
	rep; ret       
	.p2align 4,,10
	.p2align 3
.L116:
	testl     %esi, %esi
	jne       .L106
	movl      $1, %esi
	movl      $71, %edi
	xorl      %eax, %eax
	jmp       op_push_loc@PLT
	.p2align 4,,10
	.p2align 3
.L106:
	movl      %esi, %edx
	leaq      .LC7(%rip), %rsi
	movl      $2, %edi
	xorl      %eax, %eax
	jmp       pari_err@PLT
	.p2align 4,,10
	.p2align 3
.L110:
	cmpl      $4, %edi
	je        .L119
	movq      %rdx, %rdi
	jmp       compile_varerr@PLT
	.p2align 4,,10
	.p2align 3
.L107:
	cmpl      $4, %edi
	je        .L120
	testl     %edi, %edi
	jne       .L113
	xorl      %esi, %esi
	movb      $65, %dil
	xorl      %eax, %eax
	jmp       op_push_loc@PLT
	.p2align 4,,10
	.p2align 3
.L113:
	leaq      .LC6(%rip), %rdi
	movq      %rdx, %rsi
	jmp       compile_err@PLT
	.p2align 4,,10
	.p2align 3
.L118:
	xorl      %esi, %esi
	movb      $66, %dil
	xorl      %eax, %eax
	jmp       op_push_loc@PLT
	.p2align 4,,10
	.p2align 3
.L119:
	movl      $-1, %esi
	movb      $75, %dil
	xorl      %eax, %eax
	jmp       op_push_loc@PLT
	.p2align 4,,10
	.p2align 3
.L117:
	xorl      %esi, %esi
	movb      $72, %dil
	xorl      %eax, %eax
	jmp       op_push_loc@PLT
	.p2align 4,,10
	.p2align 3
.L120:
	movl      $-1, %esi
	movb      $73, %dil
	xorl      %eax, %eax
	jmp       op_push_loc@PLT
.LHOTE8:
.LHOTB33:
	.cfi_endproc
	.size	compilecast_loc, .-compilecast_loc
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	compilefunc
	.type	compilefunc, @function
compilefunc:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	leaq      (%rsi,%rsi,2), %rax
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	salq      $4, %rax
	movq      $72057594037927935, %rbp
	subq      $456, %rsp
	movq      %rcx, 88(%rsp)
	movq      avma@GOTPCREL(%rip), %rcx
	movq      %rax, 16(%rsp)
	movq      %rdi, 56(%rsp)
	movq      %rsi, 40(%rsp)
	movl      $11, %esi
	movl      %edx, 104(%rsp)
	movq      (%rcx), %rcx
	movq      %rcx, 64(%rsp)
	movq      pari_tree@GOTPCREL(%rip), %rcx
	addq      (%rcx), %rax
	movq      16(%rax), %r13
	movq      8(%rax), %r12
	xorl      %eax, %eax
	movq      %r13, %rdi
	call      listtogen@PLT
	movslq    %eax, %rbx
	movl      $3, %esi
	xorl      %eax, %eax
	movq      %rbx, %rdi
	movq      %rbx, 24(%rsp)
	call      first_safe_arg@PLT
	cltq      
	movl      $1, %esi
	movq      %rbx, %rdi
	movq      %rax, 72(%rsp)
	xorl      %eax, %eax
	call      first_safe_arg@PLT
	andq      (%rbx), %rbp
	cltq      
	cmpq      $39, %r12
	movq      %rax, 80(%rsp)
	leaq      -1(%rbp), %rax
	movq      %rax, 8(%rsp)
	jle       .L122
	movq      pari_tree@GOTPCREL(%rip), %rax
	leaq      (%r12,%r12,2), %rdx
	salq      $4, %rdx
	movq      (%rax), %rax
	movq      24(%rax,%rdx), %r14
	addq      16(%rsp), %rax
	cmpl      $4, (%rax)
	je        .L341
.L129:
	leaq      .LC9(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      is_func_named@PLT
	testl     %eax, %eax
	je        .L132
	movl      104(%rsp), %eax
	testl     %eax, %eax
	jne       .L132
	leaq      .LC10(%rip), %rdi
	call      is_entry@PLT
	movq      %rax, 56(%rsp)
.L131:
	movq      56(%rsp), %rcx
	cmpq      $0, 16(%rcx)
	movq      32(%rcx), %rax
	movq      %rax, 232(%rsp)
	je        .L342
.L166:
	movq      s_opcode@GOTPCREL(%rip), %rax
	leaq      224(%rsp), %rcx
	leaq      220(%rsp), %rdx
	movq      8(%rax), %rax
	movq      %rax, 136(%rsp)
	movq      56(%rsp), %rax
	movq      56(%rax), %rsi
	leaq      232(%rsp), %rax
	movq      %rax, 32(%rsp)
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      get_ret_type@PLT
	movq      232(%rsp), %rbp
	movl      %eax, 108(%rsp)
	cmpb      $0, (%rbp)
	je        .L272
	leaq      (%r12,%r12,2), %rax
	movq      $0, 144(%rsp)
	movq      $0, 96(%rsp)
	movq      $0, 152(%rsp)
	movl      $1, %ebx
	movq      %r14, 112(%rsp)
	salq      $4, %rax
	movq      %rax, 120(%rsp)
	leaq      219(%rsp), %rax
	movq      %rax, 48(%rsp)
	movq      8(%rsp), %rax
	addq      $1, %rax
	movq      %rax, 128(%rsp)
	leaq      240(%rsp), %rax
	movq      %rax, 160(%rsp)
	.p2align 4,,10
	.p2align 3
.L168:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      16(%rsp), %rcx
	movq      48(%rsp), %rsi
	movq      32(%rsp), %rdi
	movq      (%rax), %rax
	movq      24(%rax,%rcx), %rdx
	call      parseproto@PLT
	testl     %eax, %eax
	je        .L343
	cmpq      8(%rsp), %rbx
	jg        .L169
	movq      24(%rsp), %rcx
	movq      (%rcx,%rbx,8), %rdx
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      (%rdx,%rdx,2), %rdx
	salq      $4, %rdx
	addq      (%rcx), %rdx
	cmpl      $10, (%rdx)
	je        .L170
	leal      -2(%rax), %edx
	cmpl      $1, %edx
	jbe       .L171
.L170:
	cmpl      $5, %eax
	ja        .L249
	leaq      .L259(%rip), %rdx
	movl      %eax, %ecx
	movslq    (%rdx,%rcx,4), %rcx
	addq      %rcx, %rdx
	jmp       *%rdx
	.p2align 4,,10
	.p2align 3
.L132:
	leaq      .LC11(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      is_func_named@PLT
	testl     %eax, %eax
	je        .L133
	movq      avma@GOTPCREL(%rip), %rax
	movq      $72057594037927935, %rdx
	andq      (%rbx), %rdx
	movq      (%rax), %rax
	leaq      0(,%rdx,8), %rcx
	movq      %rax, %r12
	subq      %rcx, %r12
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	ja        .L344
.L134:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %r12, (%rax)
	movq      $-72057594037927937, %rax
	andq      (%rbx), %rax
	cmpq      $0, 8(%rsp)
	movq      %rax, (%r12)
	je        .L335
	jle       .L137
	movl      $1, %r13d
	jmp       .L139
	.p2align 4,,10
	.p2align 3
.L138:
	xorl      %eax, %eax
	call      getvar@PLT
	cltq      
	xorl      %edi, %edi
	movl      $1, %esi
	movq      %rax, (%r12,%r13,8)
	xorl      %eax, %eax
	addq      $1, %r13
	call      var_push@PLT
	cmpq      %rbp, %r13
	je        .L345
.L139:
	movq      (%rbx,%r13,8), %rdi
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      (%rdi,%rdi,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	cmpl      $4, (%rax)
	jne       .L138
	movq      8(%rax), %rdi
	jmp       .L138
	.p2align 4,,10
	.p2align 3
.L122:
	cmpq      $2, 8(%rsp)
	je        .L346
	cmpq      $1, 8(%rsp)
	je        .L347
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      16(%rsp), %rax
	addq      (%rcx), %rax
	movq      24(%rax), %r14
	jmp       .L329
	.p2align 4,,10
	.p2align 3
.L299:
	addq      $1, %r14
.L329:
	cmpb      $41, (%r14)
	je        .L299
	cmpl      $4, (%rax)
	jne       .L129
.L341:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	movq      bot@GOTPCREL(%rip), %rax
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	leaq      -24(%rbx), %rbp
	movq      %rbp, 24(%rsp)
	cmpq      $23, %rcx
	jbe       .L348
.L130:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %r12, -16(%rbx)
	movq      %r13, -8(%rbx)
	movq      $2, 8(%rsp)
	movq      $2, 80(%rsp)
	movq      $2, 72(%rsp)
	movq      %rbp, (%rax)
	movq      $3170534137668829187, %rax
	movq      %rax, -24(%rbx)
	jmp       .L131
	.p2align 4,,10
	.p2align 3
.L133:
	leaq      .LC12(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      is_func_named@PLT
	testl     %eax, %eax
	je        .L147
	movq      avma@GOTPCREL(%rip), %rax
	movq      $72057594037927935, %rdx
	andq      (%rbx), %rdx
	movq      (%rax), %rax
	leaq      0(,%rdx,8), %rcx
	movq      %rax, %rsi
	subq      %rcx, %rsi
	movq      bot@GOTPCREL(%rip), %rcx
	movq      %rsi, 16(%rsp)
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L148
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L148:
	movq      16(%rsp), %rcx
	movq      avma@GOTPCREL(%rip), %rsi
	movq      $-72057594037927937, %rax
	movl      $1, %r12d
	movq      %rcx, (%rsi)
	andq      (%rbx), %rax
	cmpq      $0, 8(%rsp)
	movq      %rax, (%rcx)
	jle       .L152
	movq      %rbp, 8(%rsp)
	movq      %rcx, %r15
	movq      %r12, %rbp
	jmp       .L297
	.p2align 4,,10
	.p2align 3
.L150:
	movq      %r12, %rdi
	xorl      %eax, %eax
	call      getvar@PLT
	movslq    %eax, %r13
	movq      %r12, %rdx
	movl      %r14d, %edi
	movq      %r13, (%r15,%rbp,8)
	movq      %r13, %rsi
	xorl      %eax, %eax
	call      op_push@PLT
	xorl      %esi, %esi
	xorl      %eax, %eax
	movq      %r13, %rdi
	call      var_push@PLT
	addq      $1, %rbp
	cmpq      8(%rsp), %rbp
	je        .L152
.L297:
	movq      (%rbx,%rbp,8), %r12
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movl      $113, %r14d
	leaq      (%r12,%r12,2), %r13
	salq      $4, %r13
	movq      %r13, %rax
	addq      (%rcx), %rax
	cmpl      $4, (%rax)
	jne       .L150
	movq      16(%rax), %rdi
	xorl      %eax, %eax
	call      is_node_zero@PLT
	testl     %eax, %eax
	je        .L349
.L151:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      8(%rax,%r13), %r12
	jmp       .L150
	.p2align 4,,10
	.p2align 3
.L218:
	movzbl    219(%rsp), %eax
	cmpb      $80, %al
	je        .L228
	jle       .L350
	cmpb      $102, %al
	je        .L222
	cmpb      $112, %al
	jne       .L189
	movq      40(%rsp), %rdx
	xorl      %esi, %esi
	movl      $78, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
	.p2align 4,,10
	.p2align 3
.L237:
	movzbl    219(%rsp), %eax
	cmpb      $115, %al
	jne       .L320
	movq      128(%rsp), %r14
	movq      avma@GOTPCREL(%rip), %rax
	subq      %rbx, %r14
	movq      (%rax), %rax
	leaq      1(%r14), %rbp
	leaq      0(,%rbp,8), %rdx
	movq      %rax, %r12
	subq      %rdx, %r12
	movq      bot@GOTPCREL(%rip), %rdx
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L240
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L240:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %r12, (%rax)
	movq      $-72057594037927936, %rax
	testq     %rax, %rbp
	je        .L241
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L241:
	movq      $2449958197289549824, %rax
	orq       %rax, %rbp
	testq     %r14, %r14
	movq      %rbp, (%r12)
	jle       .L242
	movq      24(%rsp), %rax
	xorl      %r13d, %r13d
	movl      $1, %ebp
	movq      $72057594037927935, %r15
	leaq      (%rax,%rbx,8), %rbx
	.p2align 4,,10
	.p2align 3
.L243:
	movq      -8(%rbx,%rbp,8), %rdi
	xorl      %eax, %eax
	movl      $19, %esi
	call      cattovec@PLT
	cltq      
	movq      %r15, %rcx
	movq      %rax, (%r12,%rbp,8)
	andq      (%rax), %rcx
	addq      $1, %rbp
	cmpq      %rbp, %r14
	leaq      -1(%r13,%rcx), %r13
	jge       .L243
	movq      112(%rsp), %rdx
	leaq      1(%r13), %rsi
	movl      $80, %edi
	xorl      %eax, %eax
	movl      $1, %ebp
	movl      $1, %ebx
	movq      $72057594037927935, %r13
	call      op_push_loc@PLT
	.p2align 4,,10
	.p2align 3
.L265:
	movq      (%r12,%rbp,8), %rax
	movq      %r13, %rdx
	movl      $1, %r15d
	andq      (%rax), %rdx
	cmpq      $1, %rdx
	jle       .L248
	.p2align 4,,10
	.p2align 3
.L296:
	movq      (%rax,%r15,8), %rdi
	movl      $1, %edx
	movl      $4, %esi
	call      compilenode@PLT
	movq      (%r12,%rbp,8), %rax
	movq      %rbx, %rsi
	movl      $83, %edi
	addq      $1, %rbx
	movq      (%rax,%r15,8), %rdx
	xorl      %eax, %eax
	addq      $1, %r15
	call      op_push@PLT
	movq      (%r12,%rbp,8), %rax
	movq      %r13, %rdx
	andq      (%rax), %rdx
	cmpq      %r15, %rdx
	jg        .L296
.L248:
	addq      $1, %rbp
	cmpq      %rbp, %r14
	jge       .L265
.L246:
	movq      112(%rsp), %rdx
	movl      $1, %esi
	movl      $71, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	movq      128(%rsp), %rbx
	jmp       .L189
	.p2align 4,,10
	.p2align 3
.L231:
	movzbl    219(%rsp), %esi
	addq      $1, %rbx
	leal      -71(%rsi), %eax
	cmpb      $44, %al
	ja        .L225
	leaq      .L234(%rip), %rdx
	movzbl    %al, %eax
	movslq    (%rdx,%rax,4), %rax
	addq      %rax, %rdx
	jmp       *%rdx
	.p2align 4,,10
	.p2align 3
.L224:
	movzbl    219(%rsp), %esi
	addq      $1, %rbx
	leal      -38(%rsi), %eax
	cmpb      $77, %al
	ja        .L225
	leaq      .L227(%rip), %rdx
	movzbl    %al, %eax
	movslq    (%rdx,%rax,4), %rax
	addq      %rax, %rdx
	jmp       *%rdx
.L152:
	movq      16(%rsp), %rsi
	movq      %rbx, %rdi
	xorl      %eax, %eax
	call      checkdups@PLT
.L335:
	movl      104(%rsp), %edx
	movq      40(%rsp), %rdi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      compilecast@PLT
.L336:
	movq      avma@GOTPCREL(%rip), %rax
	movq      64(%rsp), %rcx
	movq      %rcx, (%rax)
.L121:
	addq      $456, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L249:
	leaq      .LC31(%rip), %rsi
	movl      %eax, %edx
	movl      $2, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	.p2align 4,,10
	.p2align 3
.L189:
	movq      232(%rsp), %rbp
	jmp       .L168
.L172:
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      16(%rsp), %rax
	leaq      .LC21(%rip), %rdi
	addq      (%rcx), %rax
	movq      32(%rax), %rdx
	movq      24(%rax), %rax
	leaq      -1(%rax,%rdx), %rsi
	call      compile_err@PLT
.L171:
	movzbl    219(%rsp), %r14d
	leal      -69(%r14), %eax
	testb     $-5, %al
	je        .L173
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      (%rax), %rcx
	movq      24(%rsp), %rax
	movq      (%rax,%rbx,8), %rax
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      %rcx, %rax
	movl      (%rax), %edx
	movq      8(%rax), %rsi
	cmpq      $10, %rdx
	je        .L351
	testq     %rdx, %rdx
	jne       .L173
	leaq      (%rsi,%rsi,2), %rax
	leaq      .LC23(%rip), %rdi
	salq      $4, %rax
	movq      24(%rcx,%rax), %rsi
	addq      32(%rcx,%rax), %rsi
	call      compile_err@PLT
	movzbl    219(%rsp), %r14d
	.p2align 4,,10
	.p2align 3
.L173:
	leal      -38(%r14), %eax
	cmpb      $77, %al
	ja        .L175
	movzbl    %al, %edx
	leaq      .L177(%rip), %rax
	movslq    (%rax,%rdx,4), %rdx
	addq      %rdx, %rax
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L169:
	cmpl      $5, %eax
	ja        .L249
	leaq      .L260(%rip), %rcx
	movl      %eax, %edx
	movslq    (%rcx,%rdx,4), %rdx
	addq      %rcx, %rdx
	jmp       *%rdx
	.p2align 4,,10
	.p2align 3
.L343:
	cmpq      8(%rsp), %rbx
	movq      112(%rsp), %r14
	jle       .L352
.L251:
	movq      56(%rsp), %rsi
	movl      108(%rsp), %edi
	xorl      %eax, %eax
	movq      %r14, %rdx
	call      op_push_loc@PLT
	testb     $2, 224(%rsp)
	je        .L252
	testb     $2, 88(%rsp)
	je        .L353
.L252:
	movl      220(%rsp), %esi
	cmpl      $4, %esi
	je        .L354
	movl      104(%rsp), %edx
	movq      40(%rsp), %rdi
	xorl      %eax, %eax
	call      compilecast@PLT
	cmpq      $0, 96(%rsp)
	je        .L336
.L258:
	movq      96(%rsp), %rsi
	movq      %r14, %rdx
	movl      $89, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L336
	.p2align 4,,10
	.p2align 3
.L272:
	movl      $1, %ebx
	cmpq      8(%rsp), %rbx
	movq      $0, 96(%rsp)
	jg        .L251
.L352:
	movq      24(%rsp), %rax
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      .LC32(%rip), %rdi
	movq      (%rax,%rbx,8), %rax
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	movq      24(%rax), %rsi
	call      compile_err@PLT
	jmp       .L251
.L320:
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      120(%rsp), %rsi
	movsbl    %al, %edx
	movl      $5, %edi
	xorl      %eax, %eax
	addq      (%rcx), %rsi
	movq      32(%rsi), %rcx
	movq      24(%rsi), %r8
	leaq      .LC30(%rip), %rsi
	call      pari_err@PLT
	jmp       .L189
.L147:
	leaq      .LC13(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      is_func_named@PLT
	testl     %eax, %eax
	je        .L153
	cmpq      $0, 8(%rsp)
	movl      $1, %r14d
	jg        .L298
	jmp       .L335
	.p2align 4,,10
	.p2align 3
.L155:
	movq      %r12, %rdi
	xorl      %eax, %eax
	call      getvar@PLT
	movq      %r12, %rdx
	movslq    %eax, %rsi
	movl      $102, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	movq      %r12, %rdx
	movl      $1, %esi
	movl      $71, %edi
	xorl      %eax, %eax
	call      op_push@PLT
.L156:
	addq      $1, %r14
	cmpq      %rbp, %r14
	je        .L335
.L298:
	movq      (%rbx,%r14,8), %r12
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      (%r12,%r12,2), %r13
	salq      $4, %r13
	movq      %r13, %rax
	addq      (%rcx), %rax
	cmpl      $4, (%rax)
	jne       .L155
	movq      16(%rax), %rdi
	xorl      %edx, %edx
	movl      $4, %esi
	call      compilenode@PLT
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      8(%rax,%r13), %r12
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      getvar@PLT
	movq      %r12, %rdx
	movslq    %eax, %rsi
	movl      $103, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L156
.L346:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      8(%rbx), %rdx
	movq      (%rax), %rax
	leaq      (%rdx,%rdx,2), %rdx
	salq      $4, %rdx
	movq      24(%rax,%rdx), %rcx
	addq      32(%rax,%rdx), %rcx
	addq      16(%rsp), %rax
	movq      %rcx, %r14
	jmp       .L329
.L350:
	cmpb      $67, %al
	jne       .L189
	xorl      %eax, %eax
	call      pack_localvars@PLT
	movl      %eax, %edi
	xorl      %eax, %eax
	call      data_push@PLT
	movq      40(%rsp), %rdx
	movl      %eax, %esi
	movl      $67, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L344:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L134
.L348:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L130
.L236:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      16(%rsp), %rcx
	movq      %rbp, %rsi
	movq      232(%rsp), %rdi
	movq      (%rax), %rax
	movq      24(%rax,%rcx), %rdx
	xorl      %eax, %eax
	call      str_defproto@PLT
	movq      40(%rsp), %rdx
	movl      $-1, %esi
	movl      $74, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L235:
	leaq      1(%rbp), %rdi
	xorl      %esi, %esi
	movl      $10, %edx
	call      strtol@PLT
	movq      40(%rsp), %rdx
	movq      %rax, %rsi
	movl      $65, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L233:
	leaq      1(%rbp), %rdi
	xorl      %esi, %esi
	movl      $10, %edx
	call      strtol@PLT
	movq      40(%rsp), %rdx
	movq      %rax, %rsi
	movl      $69, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L228:
	movq      40(%rsp), %rdx
	xorl      %esi, %esi
	movl      $79, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L230:
	movq      40(%rsp), %rdx
	movl      $-1, %esi
	movl      $65, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L229:
	movq      144(%rsp), %rax
	movq      $-1, 288(%rsp,%rax,8)
	addq      $1, %rax
	movq      %rax, 144(%rsp)
	jmp       .L189
.L226:
	movq      40(%rsp), %rdx
	xorl      %esi, %esi
	movl      $65, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L353:
	movq      %r14, %rdx
	xorl      %esi, %esi
	movl      $76, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L252
.L225:
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      120(%rsp), %rax
	movsbl    %sil, %edx
	addq      (%rcx), %rax
	movq      32(%rax), %rcx
.L332:
	movq      24(%rax), %r8
	leaq      .LC29(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L189
.L345:
	movq      %rbx, %rdi
	movq      %r12, %rsi
	xorl      %eax, %eax
	call      checkdups@PLT
	movq      8(%rsp), %rsi
	movq      %r14, %rdx
	movl      $100, %edi
	xorl      %eax, %eax
	movl      $1, %r13d
	call      op_push_loc@PLT
	movq      %r12, %rdi
	xorl      %eax, %eax
	call      frame_push@PLT
	movq      %rbx, %rcx
	movq      s_lvar@GOTPCREL(%rip), %r15
	movq      localvars@GOTPCREL(%rip), %r14
	movq      8(%rsp), %rbx
	jmp       .L144
	.p2align 4,,10
	.p2align 3
.L142:
	movq      %r13, %rax
	movq      (%r12,%r13,8), %rdx
	addq      $1, %r13
	subq      %rbx, %rax
	addq      8(%r15), %rax
	salq      $4, %rax
	addq      (%r14), %rax
	cmpq      %rbp, %r13
	movq      %rdx, -8(%rax)
	je        .L335
.L144:
	movq      (%rcx,%r13,8), %r8
	movq      pari_tree@GOTPCREL(%rip), %rdi
	leaq      (%r8,%r8,2), %rsi
	salq      $4, %rsi
	movq      %rsi, %rax
	addq      (%rdi), %rax
	cmpl      $4, (%rax)
	jne       .L142
	movq      16(%rax), %rdi
	xorl      %eax, %eax
	movq      %rcx, 24(%rsp)
	movq      %rsi, 16(%rsp)
	movq      %r8, 8(%rsp)
	call      is_node_zero@PLT
	testl     %eax, %eax
	movq      16(%rsp), %rsi
	movq      24(%rsp), %rcx
	jne       .L142
	movq      pari_tree@GOTPCREL(%rip), %rax
	movl      $2, %edx
	movq      %rcx, 16(%rsp)
	movq      (%rax), %rax
	movq      16(%rax,%rsi), %rdi
	movl      $4, %esi
	call      compilenode@PLT
	movq      8(%rsp), %r8
	movq      %r13, %rsi
	movl      $107, %edi
	subq      %rbp, %rsi
	xorl      %eax, %eax
	movq      %r8, %rdx
	call      op_push@PLT
	movq      16(%rsp), %rcx
	jmp       .L142
.L354:
	cmpq      $0, 96(%rsp)
	jne       .L254
	movq      136(%rsp), %rax
	movq      s_opcode@GOTPCREL(%rip), %rcx
	subq      $-128, %rax
	cmpq      %rax, 8(%rcx)
	jg        .L355
.L255:
	movl      104(%rsp), %edx
	movq      40(%rsp), %rdi
	xorl      %eax, %eax
	call      compilecast@PLT
	jmp       .L336
.L347:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      8(%rbx), %rdx
	movq      (%rax), %rax
	leaq      (%rdx,%rdx,2), %rdx
	salq      $4, %rdx
	movq      24(%rax,%rdx), %r14
	addq      16(%rsp), %rax
	jmp       .L329
.L222:
	movq      40(%rsp), %rdx
	leaq      foo.20737(%rip), %rsi
	movl      $65, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L254:
	movl      104(%rsp), %edx
	movq      40(%rsp), %rdi
	movl      $4, %esi
	xorl      %eax, %eax
	call      compilecast@PLT
	jmp       .L258
.L349:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movl      $2, %edx
	movl      $4, %esi
	movb      $112, %r14b
	movq      (%rax), %rax
	movq      16(%rax,%r13), %rdi
	call      compilenode@PLT
	jmp       .L151
.L187:
	movq      24(%rsp), %rax
	leaq      1(%rbx), %r12
	movl      $19, %esi
	movq      $72057594037927935, %rbp
	movq      (%rax,%rbx,8), %rbx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      cattovec@PLT
	movslq    %eax, %r14
	andq      (%r14), %rbp
	leaq      -1(%rbp), %rcx
	cmpq      $1, %rcx
	je        .L356
	xorl      %eax, %eax
	movq      %rbx, %rdx
	movq      %rbp, %rsi
	movl      $80, %edi
	movq      %rcx, 168(%rsp)
	movl      $1, %r13d
	call      op_push@PLT
	movq      168(%rsp), %rcx
	testq     %rcx, %rcx
	jle       .L217
	.p2align 4,,10
	.p2align 3
.L295:
	movq      (%r14,%r13,8), %rdi
	movl      $1, %edx
	movl      $4, %esi
	call      compilenode@PLT
	movq      %r13, %rsi
	xorl      %eax, %eax
	movq      %rbx, %rdx
	movl      $83, %edi
	addq      $1, %r13
	call      op_push@PLT
	cmpq      %rbp, %r13
	jne       .L295
.L217:
	movq      %rbx, %rdx
	movl      $1, %esi
	movl      $71, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	leaq      .LC28(%rip), %rdi
	call      is_entry@PLT
	movq      %rbx, %rdx
	movq      %rax, %rsi
	movl      $95, %edi
	xorl      %eax, %eax
	call      op_push@PLT
.L333:
	movq      %rbx, %rdx
	movl      $-1, %esi
	movl      $74, %edi
	xorl      %eax, %eax
	movq      %r12, %rbx
	call      op_push@PLT
	jmp       .L189
.L176:
	movq      24(%rsp), %rax
	cmpb      $38, %r14b
	leaq      1(%rbx), %rbp
	movq      (%rax,%rbx,8), %rdi
	je        .L357
.L196:
	xorl      %eax, %eax
	call      detag@PLT
	movslq    %eax, %rbx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      getlvalue@PLT
	movslq    %eax, %r12
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      getmvar@PLT
	movslq    %eax, %rsi
	movq      pari_tree@GOTPCREL(%rip), %rax
	leaq      (%rbx,%rbx,2), %rdx
	salq      $4, %rdx
	addq      (%rax), %rdx
	cmpl      $16, (%rdx)
	movq      40(%rsp), %rdx
	je        .L358
	testq     %rsi, %rsi
	je        .L201
	movl      $108, %edi
	xorl      %eax, %eax
	call      op_push@PLT
.L202:
	movq      %rbx, %rdi
	xorl      %eax, %eax
	call      compilelvalue@PLT
	movq      40(%rsp), %rdx
	xorl      %esi, %esi
	movl      $88, %edi
	xorl      %eax, %eax
	call      op_push@PLT
.L200:
	addq      $1, 96(%rsp)
	movq      %rbp, %rbx
	jmp       .L189
.L178:
	movq      24(%rsp), %rax
	leaq      1(%rbx), %r12
	movq      144(%rsp), %rcx
	movl      $4, %esi
	movq      (%rax,%rbx,8), %rax
	movq      pari_tree@GOTPCREL(%rip), %rbx
	leaq      1(%rcx), %rbp
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      (%rbx), %rax
	movq      %r12, %rbx
	movq      8(%rax), %rdx
	movq      16(%rax), %rdi
	movq      %rdx, 288(%rsp,%rcx,8)
	movl      $2, %edx
	call      compilenode@PLT
	movq      %rbp, 144(%rsp)
	jmp       .L189
.L179:
	leaq      1(%rbx), %rax
	movq      160(%rsp), %rdi
	movq      %rax, 184(%rsp)
	movq      24(%rsp), %rax
	movq      (%rax,%rbx,8), %rax
	movq      %rax, 168(%rsp)
	movq      %rax, %rbx
	xorl      %eax, %eax
	cmpb      $73, %r14b
	setne     %al
	sall      $2, %eax
	movl      %eax, 200(%rsp)
	xorl      %eax, %eax
	call      getcodepos@PLT
	cmpq      $0, 144(%rsp)
	jne       .L204
	leaq      (%rbx,%rbx,2), %rax
	salq      $4, %rax
	movq      %rax, 176(%rsp)
	movq      %rax, %rcx
.L205:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	cmpl      $10, (%rax,%rcx)
	je        .L359
	movl      200(%rsp), %esi
	movq      168(%rsp), %rdi
	xorl      %edx, %edx
	cmpb      $73, %r14b
	setne     %dl
	call      compilenode@PLT
.L213:
	movq      160(%rsp), %rdi
	xorl      %eax, %eax
	call      getclosure@PLT
	movl      %eax, %edi
	xorl      %eax, %eax
	call      data_push@PLT
	movq      168(%rsp), %rdx
	movl      %eax, %esi
	movl      $67, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	movq      184(%rsp), %rbx
	jmp       .L189
.L180:
	xorl      %edx, %edx
	cmpq      80(%rsp), %rbx
	jl        .L188
	xorl      %edx, %edx
	cmpq      72(%rsp), %rbx
	setl      %dl
	leaq      2(%rdx,%rdx), %rdx
.L188:
	movq      24(%rsp), %rax
	movl      $4, %esi
	movq      (%rax,%rbx,8), %rdi
	addq      $1, %rbx
	call      compilenode@PLT
	jmp       .L189
.L181:
	movq      24(%rsp), %rax
	movq      (%rax,%rbx,8), %r13
.L192:
	xorl      %edx, %edx
	movl      $1, %esi
	movq      %r13, %rdi
	addq      $1, %rbx
	call      compilenode@PLT
	jmp       .L189
.L182:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      (%rax), %rdx
	movq      24(%rsp), %rax
	leaq      (%rax,%rbx,8), %rbp
	movq      (%rbp), %r13
	leaq      (%r13,%r13,2), %r12
	salq      $4, %r12
	addq      %rdx, %r12
	movl      (%r12), %ecx
	cmpl      $14, %ecx
	je        .L192
	cmpq      $0, 152(%rsp)
	je        .L360
.L193:
	movq      152(%rsp), %rdi
	movl      $10, %esi
	movl      %ecx, 200(%rsp)
	movq      %rdx, 168(%rsp)
	call      strchr@PLT
	testq     %rax, %rax
	movq      %rax, %r14
	movq      168(%rsp), %rdx
	movl      200(%rsp), %ecx
	je        .L361
.L194:
	leaq      1(%r14), %rax
	cmpl      $13, %ecx
	movq      %rax, 152(%rsp)
	jne       .L195
	cmpq      $0, 8(%r12)
	je        .L362
.L195:
	xorl      %edx, %edx
	movq      %r13, %rdi
	movl      $4, %esi
	call      compilenode@PLT
	movq      40(%rsp), %r14
	movq      152(%rsp), %rsi
	movl      $65, %edi
	xorl      %eax, %eax
	addq      $1, %rbx
	movq      %r14, %rdx
	call      op_push@PLT
	leaq      .LC25(%rip), %rdi
	call      is_entry@PLT
	movq      %r14, %rdx
	movq      %rax, %rsi
	movl      $96, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L183:
	movq      24(%rsp), %rax
	leaq      1(%rbx), %rbp
	movq      (%rax,%rbx,8), %rbx
	xorl      %eax, %eax
	movq      %rbx, %rdi
	call      getvar@PLT
	movq      144(%rsp), %rax
	movq      %rbx, 288(%rsp,%rax,8)
	addq      $1, %rax
	movq      %rbp, %rbx
	movq      %rax, 144(%rsp)
	jmp       .L189
.L184:
	movq      24(%rsp), %rax
	leaq      (%rax,%rbx,8), %rbp
	xorl      %eax, %eax
	movq      (%rbp), %rdi
	call      getlvalue@PLT
	movslq    %eax, %r12
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      getmvar@PLT
	movslq    %eax, %rsi
	movq      40(%rsp), %rdx
	testq     %rsi, %rsi
	je        .L190
	movl      $121, %edi
	xorl      %eax, %eax
	call      op_push@PLT
.L191:
	movq      (%rbp), %rdi
	movl      $2, %edx
	movl      $4, %esi
	addq      $1, %rbx
	call      compilenode@PLT
	jmp       .L189
.L185:
	movq      24(%rsp), %rax
	leaq      1(%rbx), %rbp
	xorl      %edx, %edx
	movl      $3, %esi
	movq      (%rax,%rbx,8), %rdi
	movq      %rbp, %rbx
	call      compilenode@PLT
	jmp       .L189
.L186:
	movq      24(%rsp), %rax
	leaq      1(%rbx), %rbp
	movq      (%rax,%rbx,8), %rdi
	movq      pari_tree@GOTPCREL(%rip), %rax
	leaq      (%rdi,%rdi,2), %rdx
	movq      (%rax), %rcx
	salq      $4, %rdx
	addq      %rcx, %rdx
	cmpl      $16, (%rdx)
	je        .L363
	movl      $2, %edx
	movl      $4, %esi
	call      compilenode@PLT
	movq      40(%rsp), %rdx
.L334:
	movl      $-1, %esi
	movl      $74, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	movq      %rbp, %rbx
	jmp       .L189
.L355:
	movq      136(%rsp), %rdi
	movq      %r14, %rcx
	xorl      %edx, %edx
	movb      $118, %sil
	xorl      %eax, %eax
	call      op_insert_loc@PLT
	xorl      %esi, %esi
	movq      %r14, %rdx
	movl      $119, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	movl      220(%rsp), %esi
	jmp       .L255
.L175:
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      120(%rsp), %rax
	movsbl    %r14b, %edx
	addq      (%rcx), %rax
	movq      32(%rax), %rcx
	jmp       .L332
.L153:
	leaq      .LC14(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      is_func_named@PLT
	testl     %eax, %eax
	jne       .L162
	movq      compatible@GOTPCREL(%rip), %rax
	cmpq      $3, (%rax)
	je        .L364
.L161:
	cmpq      $33, %r12
	je        .L365
	cmpq      $37, %r12
	je        .L366
	cmpq      $2, 8(%rsp)
	jne       .L165
	cmpq      $18, %r12
	jne       .L165
	movq      16(%rbx), %rax
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      $2, 8(%rsp)
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	cmpl      $14, (%rax)
	jne       .L131
	leaq      .LC18(%rip), %rdi
	call      is_entry@PLT
	movq      %rax, 56(%rsp)
	jmp       .L131
	.p2align 4,,10
	.p2align 3
.L342:
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      16(%rsp), %rcx
	leaq      .LC20(%rip), %rdi
	movq      (%rax), %rax
	movq      24(%rax,%rcx), %rsi
	call      compile_err@PLT
	jmp       .L166
.L351:
	movq      24(%rax), %rsi
	leaq      .LC22(%rip), %rdi
	call      compile_err@PLT
	movzbl    219(%rsp), %r14d
	jmp       .L173
.L364:
	leaq      .LC15(%rip), %rsi
	xorl      %eax, %eax
	movq      %r12, %rdi
	call      is_func_named@PLT
	testl     %eax, %eax
	je        .L161
.L162:
	cmpq      $1, 8(%rsp)
	je        .L160
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      16(%rsp), %rax
	leaq      .LC16(%rip), %rdi
	addq      (%rcx), %rax
	movq      32(%rax), %rdx
	movq      24(%rax), %rax
	leaq      -1(%rax,%rdx), %rsi
	call      compile_err@PLT
.L160:
	leaq      .LC17(%rip), %rdi
	call      is_entry@PLT
	movq      %rax, 56(%rsp)
	movq      8(%rbx), %rax
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	cmpl      $18, (%rax)
	jne       .L131
	cmpq      $18, 8(%rax)
	jne       .L131
	movq      16(%rax), %rdi
	movl      $11, %esi
	xorl      %eax, %eax
	call      listtogen@PLT
	cltq      
	movl      $3, %esi
	movq      %rax, %rbx
	movq      %rax, 24(%rsp)
	movq      $72057594037927935, %rax
	andq      (%rbx), %rax
	movq      %rbx, %rdi
	subq      $1, %rax
	movq      %rax, 8(%rsp)
	xorl      %eax, %eax
	call      first_safe_arg@PLT
	cltq      
	movl      $1, %esi
	movq      %rbx, %rdi
	movq      %rax, 72(%rsp)
	xorl      %eax, %eax
	call      first_safe_arg@PLT
	cltq      
	movq      %rax, 80(%rsp)
	jmp       .L131
	.p2align 4,,10
	.p2align 3
.L242:
	movq      112(%rsp), %rdx
	movl      $1, %esi
	movl      $80, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L246
.L190:
	movq      %r12, %rsi
	movl      $120, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L191
.L137:
	movq      %r12, %rsi
	movq      %rbx, %rdi
	xorl      %eax, %eax
	call      checkdups@PLT
	movq      8(%rsp), %rsi
	movq      %r14, %rdx
	movl      $100, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	movq      %r12, %rdi
	xorl      %eax, %eax
	call      frame_push@PLT
	jmp       .L335
.L201:
	movq      %r12, %rsi
	movl      $104, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L202
.L165:
	cmpq      $19, %r12
	jne       .L131
	movq      8(%rbx), %rax
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      .LC19(%rip), %rdi
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	movq      32(%rax), %rsi
	addq      24(%rax), %rsi
	call      compile_err@PLT
	jmp       .L131
.L359:
	movl      200(%rsp), %edx
	movq      168(%rsp), %rdi
	xorl      %esi, %esi
	xorl      %eax, %eax
	call      compilecast@PLT
	jmp       .L213
.L204:
	movq      144(%rsp), %rax
	movq      bot@GOTPCREL(%rip), %rcx
	leaq      1(%rax), %rdx
	movq      avma@GOTPCREL(%rip), %rax
	leaq      0(,%rdx,8), %rbx
	movq      (%rax), %rax
	movq      %rax, %rbp
	subq      (%rcx), %rax
	subq      %rbx, %rbp
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L206
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 176(%rsp)
	call      pari_err@PLT
	movq      176(%rsp), %rdx
.L206:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rbp, (%rax)
	movq      $-72057594037927936, %rax
	testq     %rax, %rdx
	jne       .L367
	movq      avma@GOTPCREL(%rip), %rax
	movq      $3170534137668829184, %r12
	orq       %rdx, %r12
	movq      %r12, (%rbp)
	movq      (%rax), %rax
	movq      %rax, %rcx
	subq      %rbx, %rcx
	movq      %rcx, %rbx
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L331
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L331:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rbx, (%rax)
.L261:
	movq      168(%rsp), %rax
	movq      %r12, (%rbx)
	xorl      %r13d, %r13d
	leaq      288(%rsp), %r12
	movq      144(%rsp), %r15
	movb      %r14b, 207(%rsp)
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	movq      %rax, 192(%rsp)
	movq      %rax, 176(%rsp)
	jmp       .L211
	.p2align 4,,10
	.p2align 3
.L210:
	movq      %r14, %rdi
	xorl      %eax, %eax
	call      getvar@PLT
	movslq    %eax, %rdi
	movl      $1, %esi
	xorl      %eax, %eax
	movq      %rdi, 8(%rbp,%r13,8)
	movq      %r14, 8(%rbx,%r13,8)
	addq      $1, %r13
	call      var_push@PLT
	cmpq      %r13, %r15
	jle       .L368
.L211:
	movq      (%r12,%r13,8), %r14
	testq     %r14, %r14
	jns       .L210
	movq      pari_tree@GOTPCREL(%rip), %rax
	movq      192(%rsp), %rcx
	leaq      .LC27(%rip), %rdi
	movq      (%rax), %rax
	movq      24(%rax,%rcx), %rsi
	subq      $1, %rsi
	call      compile_err@PLT
	jmp       .L210
.L368:
	movq      %rbp, %rsi
	movq      %rbx, %rdi
	xorl      %eax, %eax
	movzbl    207(%rsp), %r14d
	call      checkdups@PLT
	movq      %rbp, %rdi
	xorl      %eax, %eax
	call      frame_push@PLT
	movq      176(%rsp), %rcx
	jmp       .L205
.L356:
	movq      8(%r14), %rdi
	movl      $2, %edx
	movl      $4, %esi
	call      compilenode@PLT
	jmp       .L333
.L363:
	movq      8(%rdx), %rax
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      %rcx, %rax
	movq      32(%rax), %rsi
	movq      24(%rax), %rdi
	call      strntoGENstr@PLT
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      data_push@PLT
	movq      40(%rsp), %rbx
	movl      %eax, %esi
	movl      $67, %edi
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      op_push@PLT
	movq      %rbx, %rdx
	jmp       .L334
.L358:
	testq     %rsi, %rsi
	je        .L199
	movl      $109, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L200
.L357:
	leaq      (%rdi,%rdi,2), %rbx
	movq      pari_tree@GOTPCREL(%rip), %rcx
	salq      $4, %rbx
	movq      %rbx, %rax
	addq      (%rcx), %rax
	cmpl      $12, (%rax)
	je        .L197
	movq      24(%rax), %rsi
	leaq      .LC26(%rip), %rdi
	call      compile_err@PLT
	movq      pari_tree@GOTPCREL(%rip), %rcx
	movq      %rbx, %rax
	addq      (%rcx), %rax
.L197:
	movq      8(%rax), %rdi
	jmp       .L196
.L360:
	movq      56(%rsp), %rax
	movq      32(%rax), %rax
	movq      %rax, 152(%rsp)
	jmp       .L193
.L362:
	movq      32(%r12), %rsi
	movq      24(%r12), %rdi
	addq      $1, %rbx
	call      strntoGENexp@PLT
	movq      152(%rsp), %rsi
	movq      %rax, %rdi
	call      eval_mnemonic@PLT
	movq      40(%rsp), %rdx
	movq      %rax, %rsi
	movl      $65, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L189
.L366:
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      (%r13,%r13,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	cmpl      $9, (%rax)
	jne       .L131
	movq      avma@GOTPCREL(%rip), %rax
	movq      64(%rsp), %rcx
	movl      $82, %edx
	movl      104(%rsp), %esi
	movq      %r13, %rdi
	movq      %rcx, (%rax)
	xorl      %eax, %eax
	call      compilevec@PLT
	jmp       .L121
	.p2align 4,,10
	.p2align 3
.L365:
	movq      pari_tree@GOTPCREL(%rip), %rcx
	leaq      (%r13,%r13,2), %rax
	salq      $4, %rax
	addq      (%rcx), %rax
	cmpl      $14, (%rax)
	jne       .L131
	movq      8(%rax), %rsi
	movq      avma@GOTPCREL(%rip), %rcx
	movq      %r13, %rdi
	movq      64(%rsp), %rbx
	movl      104(%rsp), %edx
	xorl      %eax, %eax
	negq      %rsi
	movq      %rbx, (%rcx)
	call      compilesmall@PLT
	jmp       .L121
	.p2align 4,,10
	.p2align 3
.L367:
	leaq      .LC0(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	movq      %rdx, 176(%rsp)
	movq      $3170534137668829184, %r12
	call      pari_err@PLT
	movq      176(%rsp), %rdx
	movq      avma@GOTPCREL(%rip), %rax
	orq       %rdx, %r12
	movq      %r12, (%rbp)
	movq      (%rax), %rax
	movq      %rax, %rcx
	subq      %rbx, %rcx
	movq      %rcx, %rbx
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L330
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L330:
	movq      avma@GOTPCREL(%rip), %rax
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	movq      %rbx, (%rax)
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L261
.L199:
	movq      %r12, %rsi
	movl      $105, %edi
	xorl      %eax, %eax
	call      op_push@PLT
	jmp       .L200
.L361:
	movq      16(%rsp), %rax
	leaq      .LC24(%rip), %rdi
	movq      24(%rdx,%rax), %rsi
	call      compile_err@PLT
	movq      (%rbp), %r13
	movq      pari_tree@GOTPCREL(%rip), %rax
	leaq      (%r13,%r13,2), %r12
	salq      $4, %r12
	addq      (%rax), %r12
	movl      (%r12), %ecx
	jmp       .L194
.LHOTE33:
.LHOTB38:
	.cfi_endproc
	.size	compilefunc, .-compilefunc
# ----------------------
	.section       .rodata
	.align 4
.L259:
	.long	.L249-.L259
	.long	.L171-.L259
	.long	.L224-.L259
	.long	.L231-.L259
	.long	.L237-.L259
	.long	.L218-.L259
	.align 4
.L234:
	.long	.L233-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L235-.L234
	.long	.L235-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L225-.L234
	.long	.L236-.L234
	.long	.L236-.L234
	.align 4
.L227:
	.long	.L226-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L226-.L227
	.long	.L225-.L227
	.long	.L226-.L227
	.long	.L225-.L227
	.long	.L226-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L228-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L229-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L230-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L225-.L227
	.long	.L226-.L227
	.long	.L226-.L227
	.align 4
.L177:
	.long	.L176-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L176-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L178-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L179-.L177
	.long	.L175-.L177
	.long	.L180-.L177
	.long	.L175-.L177
	.long	.L179-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L181-.L177
	.long	.L182-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L181-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L183-.L177
	.long	.L184-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L185-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L175-.L177
	.long	.L186-.L177
	.long	.L187-.L177
	.align 4
.L260:
	.long	.L249-.L260
	.long	.L172-.L260
	.long	.L224-.L260
	.long	.L231-.L260
	.long	.L237-.L260
	.long	.L218-.L260
	.align 4
.L395:
	.long	.L420-.L395
	.long	.L394-.L395
	.long	.L396-.L395
	.long	.L397-.L395
	.long	.L398-.L395
	.long	.L399-.L395
	.align 4
.L410:
	.long	.L409-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L411-.L410
	.long	.L411-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L408-.L410
	.long	.L412-.L410
	.long	.L412-.L410
	.align 4
.L405:
	.long	.L399-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L399-.L405
	.long	.L404-.L405
	.long	.L399-.L405
	.long	.L404-.L405
	.long	.L399-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L406-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L399-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L407-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L404-.L405
	.long	.L399-.L405
	.long	.L399-.L405
	.align 4
.L400:
	.long	.L420-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L420-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L420-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L420-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L420-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L401-.L400
	.long	.L401-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L420-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L407-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L399-.L400
	.long	.L403-.L400
	.long	.L403-.L400
	.align 4
.L454:
	.long	.L453-.L454
	.long	.L452-.L454
	.long	.L452-.L454
	.long	.L452-.L454
	.long	.L455-.L454
	.long	.L456-.L454
	.long	.L452-.L454
	.long	.L452-.L454
	.long	.L457-.L454
	.long	.L458-.L454
	.long	.L459-.L454
	.long	.L452-.L454
	.long	.L460-.L454
	.long	.L459-.L454
	.long	.L459-.L454
	.long	.L461-.L454
	.long	.L459-.L454
	.long	.L462-.L454
	.long	.L463-.L454
	.long	.L464-.L454
	.align 4
.L504:
	.long	.L501-.L504
	.long	.L478-.L504
	.long	.L494-.L504
	.long	.L494-.L504
	.long	.L496-.L504
	.long	.L530-.L504
	.align 4
.L483:
	.long	.L482-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L482-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L484-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L485-.L483
	.long	.L481-.L483
	.long	.L486-.L483
	.long	.L481-.L483
	.long	.L485-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L486-.L483
	.long	.L486-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L486-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L487-.L483
	.long	.L488-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L486-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L481-.L483
	.long	.L487-.L483
	.long	.L489-.L483
	.align 4
.L506:
	.long	.L501-.L506
	.long	.L479-.L506
	.long	.L494-.L506
	.long	.L494-.L506
	.long	.L496-.L506
	.long	.L473-.L506
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	genclosure
	.type	genclosure, @function
genclosure:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	xorl      %r14d, %r14d
	pushq     %r13
	pushq     %r12
	xorl      %r12d, %r12d
	pushq     %rbp
	pushq     %rbx
	xorl      %ebp, %ebp
	xorl      %ebx, %ebx
	subq      $152, %rsp
	movq      32(%rdi), %rax
	movq      %rdi, 16(%rsp)
	movq      %rdx, 8(%rsp)
	leaq      68(%rsp), %rdx
	movl      %ecx, 24(%rsp)
	leaq      88(%rsp), %rcx
	movq      %rsi, (%rsp)
	movq      %rax, 72(%rsp)
	movq      56(%rdi), %rax
	leaq      72(%rsp), %rdi
	leaq      67(%rsp), %r13
	leaq      80(%rsp), %r15
	movq      %rax, 32(%rsp)
	movq      %rax, %rsi
	xorl      %eax, %eax
	call      get_ret_type@PLT
	movl      %eax, 44(%rsp)
	movq      72(%rsp), %rax
	movq      %rax, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L370:
	xorl      %edx, %edx
	movq      %r13, %rsi
	movq      %r15, %rdi
	call      parseproto@PLT
	testl     %eax, %eax
	je        .L442
	cmpl      $5, %eax
	je        .L416
	testq     %r12, %r12
	jne       .L420
	movzbl    67(%rsp), %ecx
	cmpb      $86, %cl
	je        .L370
	addq      %rbx, %rbx
	addq      %rbp, %rbp
	addq      $1, %r14
	cmpl      $1, %eax
	je        .L373
	cmpl      $2, %eax
	jne       .L370
	subl      $38, %ecx
	cmpb      $35, %cl
	ja        .L370
	movl      $1, %eax
	movq      %rbp, %rdx
	salq      %cl, %rax
	movq      $36507222017, %rcx
	orq       $1, %rdx
	testq     %rcx, %rax
	cmovne    %rdx, %rbp
	jmp       .L370
	.p2align 4,,10
	.p2align 3
.L416:
	movl      $1, %r12d
	jmp       .L370
	.p2align 4,,10
	.p2align 3
.L373:
	orq       $1, %rbx
	jmp       .L370
	.p2align 4,,10
	.p2align 3
.L420:
	xorl      %eax, %eax
.L372:
	addq      $152, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L442:
	movl      24(%rsp), %eax
	testl     %eax, %eax
	je        .L376
	testq     %rbx, %rbx
	jne       .L376
	movq      16(%rsp), %rax
	testb     $1, 9(%rax)
	je        .L376
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       .L372
	.p2align 4,,10
	.p2align 3
.L376:
	leaq      96(%rsp), %rax
	movq      %rax, 56(%rsp)
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      getcodepos@PLT
	cmpq      %r14, 8(%rsp)
	movq      dbgstart@GOTPCREL(%rip), %rax
	movq      (%rsp), %rsi
	movq      %rsi, (%rax)
	jg        .L443
	cmpq      $0, 8(%rsp)
	jle       .L382
.L378:
	movl      $1, %r12d
	movq      %r14, 24(%rsp)
	movq      %rbx, 48(%rsp)
	movq      (%rsp), %r14
	movq      %r12, %rbx
	movq      8(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L381:
	xorl      %edi, %edi
	xorl      %eax, %eax
	addq      $1, %rbx
	call      data_push@PLT
	movq      %r14, %rdx
	movl      %eax, %esi
	movl      $67, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	cmpq      %rbx, %r12
	jge       .L381
	movq      24(%rsp), %r14
	movq      48(%rsp), %rbx
.L382:
	testq     %rbx, %rbx
	jne       .L444
.L380:
	testq     %rbp, %rbp
	jne       .L445
.L383:
	movq      72(%rsp), %rax
	movq      %rax, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L384:
	xorl      %edx, %edx
	movq      %r13, %rsi
	movq      %r15, %rdi
	call      parseproto@PLT
	testl     %eax, %eax
	je        .L446
	cmpl      $5, %eax
	jne       .L384
	movzbl    67(%rsp), %eax
	cmpb      $80, %al
	je        .L387
	jle       .L447
	cmpb      $102, %al
	je        .L390
	cmpb      $112, %al
	jne       .L384
	movq      (%rsp), %rdx
	xorl      %esi, %esi
	movl      $78, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L384
	.p2align 4,,10
	.p2align 3
.L447:
	cmpb      $67, %al
	jne       .L384
	xorl      %eax, %eax
	call      pack_localvars@PLT
	movl      %eax, %edi
	xorl      %eax, %eax
	call      data_push@PLT
	movq      (%rsp), %rdx
	movl      %eax, %esi
	movl      $67, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L384
	.p2align 4,,10
	.p2align 3
.L390:
	movq      (%rsp), %rdx
	leaq      foo.20841(%rip), %rsi
	movl      $65, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L384
	.p2align 4,,10
	.p2align 3
.L387:
	movq      (%rsp), %rdx
	xorl      %esi, %esi
	movl      $79, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L384
	.p2align 4,,10
	.p2align 3
.L446:
	movq      32(%rsp), %rax
	movq      72(%rsp), %rbx
	leaq      .L395(%rip), %rbp
	leaq      .L400(%rip), %r12
	movq      %r14, 24(%rsp)
	negq      %rax
	movq      %rbx, 80(%rsp)
	movq      %rax, %r14
.L393:
	xorl      %edx, %edx
	movq      %r13, %rsi
	movq      %r15, %rdi
	call      parseproto@PLT
	testl     %eax, %eax
	je        .L448
	cmpl      $5, %eax
	ja        .L420
	movl      %eax, %eax
	movslq    (%rbp,%rax,4), %rax
	addq      %rbp, %rax
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L398:
	movsbl    67(%rsp), %edx
	cmpb      $115, %dl
	je        .L420
	movq      16(%rsp), %rax
	leaq      .LC37(%rip), %rsi
	movl      $5, %edi
	movq      (%rax), %rcx
	xorl      %eax, %eax
	call      pari_err@PLT
.L399:
	movq      80(%rsp), %rbx
	addq      $1, %r14
	jmp       .L393
	.p2align 4,,10
	.p2align 3
.L397:
	movsbl    67(%rsp), %edx
	leal      -71(%rdx), %eax
	cmpb      $44, %al
	ja        .L408
	leaq      .L410(%rip), %rsi
	movzbl    %al, %eax
	movslq    (%rsi,%rax,4), %rax
	addq      %rsi, %rax
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L396:
	movsbl    67(%rsp), %edx
	leal      -38(%rdx), %eax
	cmpb      $77, %al
	ja        .L404
	leaq      .L405(%rip), %rbx
	movzbl    %al, %eax
	movslq    (%rbx,%rax,4), %rax
	addq      %rbx, %rax
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L394:
	movzbl    67(%rsp), %eax
	subl      $38, %eax
	cmpb      $77, %al
	ja        .L399
	movzbl    %al, %eax
	movslq    (%r12,%rax,4), %rax
	addq      %r12, %rax
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L443:
	movq      16(%rsp), %rax
	leaq      .LC34(%rip), %rsi
	movl      $5, %edi
	movq      (%rax), %rdx
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L378
	.p2align 4,,10
	.p2align 3
.L407:
	movq      (%rsp), %rdx
	movq      %r14, %rsi
	movl      $75, %edi
	xorl      %eax, %eax
	addq      $1, %r14
	call      op_push_loc@PLT
	movq      80(%rsp), %rbx
	jmp       .L393
.L406:
	movq      (%rsp), %rbx
	xorl      %esi, %esi
	movl      $79, %edi
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      op_push_loc@PLT
.L440:
	movq      %rbx, %rdx
	movq      %r14, %rsi
	movl      $117, %edi
	xorl      %eax, %eax
	addq      $1, %r14
	call      op_push_loc@PLT
	movq      80(%rsp), %rbx
	jmp       .L393
.L412:
	movq      (%rsp), %rdx
	movq      80(%rsp), %rdi
	movq      %rbx, %rsi
	xorl      %eax, %eax
	call      str_defproto@PLT
	movq      (%rsp), %rbx
	movq      %r14, %rsi
	movl      $116, %edi
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      op_push_loc@PLT
	movq      %rbx, %rdx
	movq      %r14, %rsi
	movl      $74, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L399
.L411:
	leaq      1(%rbx), %rdi
	xorl      %esi, %esi
	movl      $10, %edx
	call      strtol@PLT
	movq      (%rsp), %rbx
	movq      %rax, %rsi
	movl      $65, %edi
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      op_push_loc@PLT
	jmp       .L440
.L409:
	leaq      1(%rbx), %rdi
	xorl      %esi, %esi
	movl      $10, %edx
	call      strtol@PLT
	movq      (%rsp), %rbx
	movq      %rax, %rsi
	movl      $69, %edi
	xorl      %eax, %eax
	movq      %rbx, %rdx
	call      op_push_loc@PLT
	movq      %rbx, %rdx
	movq      %r14, %rsi
	movl      $116, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L399
.L403:
	movq      (%rsp), %rdx
	movq      %r14, %rsi
	movl      $74, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L399
.L401:
	movq      (%rsp), %rdx
	movq      %r14, %rsi
	movl      $73, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L399
.L408:
	movq      16(%rsp), %rax
	leaq      .LC36(%rip), %rsi
	movl      $5, %edi
	movq      (%rax), %rcx
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L399
.L404:
	movq      16(%rsp), %rax
	leaq      .LC35(%rip), %rsi
	movl      $5, %edi
	movq      (%rax), %rcx
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L399
	.p2align 4,,10
	.p2align 3
.L445:
	movq      (%rsp), %rdx
	movq      %rbp, %rsi
	movl      $115, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L383
	.p2align 4,,10
	.p2align 3
.L444:
	movq      (%rsp), %rdx
	movq      %rbx, %rsi
	movl      $114, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L380
.L448:
	movq      (%rsp), %rdx
	movq      16(%rsp), %rsi
	movl      44(%rsp), %edi
	movq      24(%rsp), %r14
	call      op_push_loc@PLT
	cmpq      $2, 88(%rsp)
	je        .L449
.L415:
	movq      (%rsp), %rdx
	movl      68(%rsp), %edi
	movl      $4, %esi
	call      compilecast_loc@PLT
	movq      16(%rsp), %rax
	movq      (%rax), %rdi
	call      strtoGENstr@PLT
	movq      %r14, %rsi
	subq      8(%rsp), %rsi
	movq      56(%rsp), %rdi
	movq      %rax, %rcx
	xorl      %edx, %edx
	xorl      %eax, %eax
	call      getfunction@PLT
	cltq      
	jmp       .L372
.L449:
	movq      (%rsp), %rdx
	xorl      %esi, %esi
	movl      $76, %edi
	xorl      %eax, %eax
	call      op_push_loc@PLT
	jmp       .L415
.LHOTE38:
.LHOTB41:
	.cfi_endproc
	.size	genclosure, .-genclosure
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	optimizenode
	.type	optimizenode, @function
optimizenode:
	.cfi_startproc
	testq     %rdi, %rdi
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	js        .L469
.L451:
	movq      pari_tree@GOTPCREL(%rip), %r12
	leaq      (%rbx,%rbx,2), %rbp
	salq      $4, %rbp
	movq      (%r12), %rcx
	leaq      (%rcx,%rbp), %rax
	cmpl      $19, (%rax)
	movq      8(%rax), %r13
	movq      16(%rax), %r14
	ja        .L452
	movl      (%rax), %esi
	leaq      .L454(%rip), %rdx
	movslq    (%rdx,%rsi,4), %rsi
	addq      %rsi, %rdx
	jmp       *%rdx
	.p2align 4,,10
	.p2align 3
.L463:
	movq      %rbx, %rdi
	xorl      %eax, %eax
	call      getfunc@PLT
	movslq    %eax, %rdi
	movq      8(%rdi), %rax
	andl      $253, %eax
	cmpq      $100, %rax
	jne       .L470
.L462:
	movq      %rbx, %rdi
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       optimizecall@PLT
	.p2align 4,,10
	.p2align 3
.L464:
	movq      %r14, %rdi
	call      optimizenode@PLT
	movq      (%r12), %rax
	movq      $3, 40(%rax,%rbp)
.L450:
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L453:
	leaq      (%r13,%r13,2), %rbx
	salq      $4, %rbx
	cmpl      $10, (%rcx,%rbx)
	je        .L465
	movq      %r13, %rdi
	call      optimizenode@PLT
.L465:
	movq      %r14, %rdi
	call      optimizenode@PLT
	movq      (%r12), %rax
	leaq      (%r14,%r14,2), %rdx
	salq      $4, %rdx
	movq      40(%rax,%rdx), %rdx
	andq      40(%rax,%rbx), %rdx
	movq      %rdx, 40(%rax,%rbp)
	jmp       .L450
	.p2align 4,,10
	.p2align 3
.L455:
	movq      %r13, %rdi
	call      optimizenode@PLT
	movq      %r14, %rdi
	call      optimizenode@PLT
	movq      (%r12), %rax
	movq      $0, 40(%rax,%rbp)
	jmp       .L450
	.p2align 4,,10
	.p2align 3
.L456:
	movq      %rbx, %rdi
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       optimizefacteurmat@PLT
	.p2align 4,,10
	.p2align 3
.L457:
	movq      %rbx, %rdi
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       optimizemat@PLT
	.p2align 4,,10
	.p2align 3
.L458:
	movq      %rbx, %rdi
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       optimizevec@PLT
	.p2align 4,,10
	.p2align 3
.L459:
	movq      $3, 40(%rax)
	jmp       .L450
	.p2align 4,,10
	.p2align 3
.L460:
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	movq      24(%rax), %rsi
	leaq      .LC40(%rip), %rdi
	jmp       compile_err@PLT
	.p2align 4,,10
	.p2align 3
.L461:
	movq      %r13, %rdi
	call      optimizenode@PLT
	movq      (%r12), %rdx
	leaq      (%r13,%r13,2), %rax
	salq      $4, %rax
	movq      40(%rdx,%rax), %rax
	movq      %rax, 40(%rdx,%rbp)
	jmp       .L450
	.p2align 4,,10
	.p2align 3
.L452:
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	leaq      .LC39(%rip), %rsi
	movl      $2, %edi
	xorl      %eax, %eax
	jmp       pari_err@PLT
	.p2align 4,,10
	.p2align 3
.L469:
	leaq      .LC39(%rip), %rsi
	movl      $2, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
	jmp       .L451
	.p2align 4,,10
	.p2align 3
.L470:
	movq      %rbx, %rsi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	jmp       optimizefunc@PLT
.LHOTE41:
.LHOTB43:
	.cfi_endproc
	.size	optimizenode, .-optimizenode
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	optimizefunc
	.type	optimizefunc, @function
optimizefunc:
	.cfi_startproc
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	leaq      (%rsi,%rsi,2), %r13
	pushq     %rbp
	pushq     %rbx
	movl      $11, %esi
	salq      $4, %r13
	subq      $104, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      pari_tree@GOTPCREL(%rip), %r12
	movq      32(%rdi), %rdx
	movq      (%rax), %rax
	movq      %rdx, 80(%rsp)
	movq      %rax, 40(%rsp)
	movq      %r13, %rax
	addq      (%r12), %rax
	movq      8(%rax), %rbx
	movq      16(%rax), %rax
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      listtogen@PLT
	cmpq      $0, 80(%rsp)
	cltq      
	movq      %rax, 32(%rsp)
	movq      (%rax), %rbp
	je        .L507
	leaq      80(%rsp), %rax
	leaq      88(%rsp), %rcx
	leaq      76(%rsp), %rdx
	movl      $2, %esi
	movq      %rax, 16(%rsp)
	movq      %rax, %rdi
	xorl      %eax, %eax
	call      get_ret_type@PLT
	movq      80(%rsp), %rax
	testq     %rax, %rax
	je        .L509
	cmpb      $0, (%rax)
	je        .L509
	movq      $72057594037927935, %rax
	movq      (%r12), %rcx
	andq      %rax, %rbp
	leaq      -1(%rbp), %rax
	movq      %rbp, 48(%rsp)
	movl      $1, %ebp
	movq      %rax, 8(%rsp)
	leaq      (%rbx,%rbx,2), %rax
	movl      $3, %ebx
	salq      $4, %rax
	movq      %rax, 56(%rsp)
	leaq      75(%rsp), %rax
	movq      %rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L473:
	movq      24(%rcx,%r13), %rdx
	movq      24(%rsp), %rsi
	movq      16(%rsp), %rdi
	call      parseproto@PLT
	testl     %eax, %eax
	je        .L503
	cmpq      8(%rsp), %rbp
	jg        .L474
	movq      32(%rsp), %rsi
	movq      (%r12), %rcx
	leaq      (%rsi,%rbp,8), %r14
	movq      (%r14), %rdx
	leaq      (%rdx,%rdx,2), %rdx
	salq      $4, %rdx
	addq      %rcx, %rdx
	cmpl      $10, (%rdx)
	je        .L475
	leal      -2(%rax), %edx
	cmpl      $1, %edx
	jbe       .L529
	cmpl      $4, %eax
	je        .L496
	cmpl      $5, %eax
	je        .L473
	cmpl      $1, %eax
	je        .L529
.L501:
	leaq      .LC31(%rip), %rsi
	movl      %eax, %edx
	movl      $2, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L530:
	movq      (%r12), %rcx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L509:
	movl      $3, %ebx
.L472:
	movq      32(%rsp), %rdi
	xorl      %eax, %eax
	call      vec_optimize@PLT
.L503:
	movq      avma@GOTPCREL(%rip), %rax
	movq      40(%rsp), %rcx
	movq      %rcx, (%rax)
	movq      (%r12), %rax
	movq      %rbx, 40(%rax,%r13)
	addq      $104, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L474:
	cmpl      $5, %eax
	ja        .L501
	leaq      .L504(%rip), %rcx
	movl      %eax, %edx
	movslq    (%rcx,%rdx,4), %rdx
	addq      %rcx, %rdx
	jmp       *%rdx
	.p2align 4,,10
	.p2align 3
.L496:
	movsbl    75(%rsp), %edx
	cmpb      $115, %dl
	jne       .L525
	movq      48(%rsp), %r14
	movq      32(%rsp), %rax
	subq      %rbp, %r14
	leaq      (%rax,%rbp,8), %r15
	movl      $1, %ebp
	testq     %r14, %r14
	jle       .L531
	.p2align 4,,10
	.p2align 3
.L518:
	movq      -8(%r15,%rbp,8), %rdi
	movl      $19, %esi
	xorl      %eax, %eax
	addq      $1, %rbp
	call      cattovec@PLT
	movl      %eax, %edi
	xorl      %eax, %eax
	call      vec_optimize@PLT
	cltq      
	andq      %rax, %rbx
	cmpq      %rbp, %r14
	jge       .L518
.L531:
	movq      (%r12), %rcx
	movq      48(%rsp), %rbp
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L494:
	cmpq      8(%rsp), %rbp
	jg        .L530
	movq      32(%rsp), %rax
	leaq      1(%rbp), %r14
	movq      (%rax,%rbp,8), %rdi
	movq      %r14, %rbp
	call      optimizenode@PLT
	movq      (%r12), %rcx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L478:
	movq      %r13, %rax
	addq      (%r12), %rax
	leaq      .LC21(%rip), %rdi
	movq      32(%rax), %rdx
	movq      24(%rax), %rax
	leaq      -1(%rax,%rdx), %rsi
	call      compile_err@PLT
	movq      32(%rsp), %rax
	leaq      (%rax,%rbp,8), %r14
	movq      (%r14), %rax
	leaq      (%rax,%rax,2), %rdx
	salq      $4, %rdx
	addq      (%r12), %rdx
	cmpl      $10, (%rdx)
	jne       .L529
.L479:
	movzbl    75(%rsp), %esi
	leal      -69(%rsi), %eax
	testb     $-5, %al
	je        .L480
	movq      24(%rdx), %rsi
	leaq      .LC22(%rip), %rdi
	call      compile_err@PLT
	.p2align 4,,10
	.p2align 3
.L529:
	movzbl    75(%rsp), %esi
.L480:
	leal      -38(%rsi), %eax
	cmpb      $77, %al
	ja        .L481
	leaq      .L483(%rip), %rcx
	movzbl    %al, %eax
	movslq    (%rcx,%rax,4), %rax
	addq      %rcx, %rax
	jmp       *%rax
	.p2align 4,,10
	.p2align 3
.L475:
	cmpl      $5, %eax
	ja        .L501
	leaq      .L506(%rip), %rdi
	movl      %eax, %esi
	movslq    (%rdi,%rsi,4), %rsi
	addq      %rdi, %rsi
	jmp       *%rsi
	.p2align 4,,10
	.p2align 3
.L507:
	xorl      %ebx, %ebx
	jmp       .L472
	.p2align 4,,10
	.p2align 3
.L525:
	movq      56(%rsp), %rax
	addq      (%r12), %rax
	leaq      .LC30(%rip), %rsi
	movl      $5, %edi
	movq      32(%rax), %rcx
	movq      24(%rax), %r8
	xorl      %eax, %eax
	call      pari_err@PLT
	movq      (%r12), %rcx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L489:
	movq      (%r14), %rdi
	movl      $19, %esi
	xorl      %eax, %eax
	addq      $1, %rbp
	call      cattovec@PLT
	movl      %eax, %edi
	xorl      %eax, %eax
	call      vec_optimize@PLT
	cltq      
	movq      (%r12), %rcx
	andq      %rax, %rbx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L488:
	movq      (%r14), %rdi
	addq      $1, %rbp
	xorl      %ebx, %ebx
	call      optimizenode@PLT
	movq      (%r12), %rcx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L487:
	movq      (%r14), %rax
	movq      (%r12), %rcx
	addq      $1, %rbp
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	movq      $3, 40(%rcx,%rax)
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L486:
	movq      (%r14), %rdi
	addq      $1, %rbp
	call      optimizenode@PLT
	movq      (%r14), %rax
	movq      (%r12), %rcx
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	andq      40(%rcx,%rax), %rbx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L485:
	movq      (%r14), %rdi
	addq      $1, %rbp
	call      optimizenode@PLT
	movq      (%r14), %rax
	movq      (%r12), %rcx
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      %rcx, %rax
	andq      40(%rax), %rbx
	movq      $3, 40(%rax)
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L484:
	movq      (%r14), %rax
	addq      $1, %rbp
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	addq      (%r12), %rax
	cmpl      $4, (%rax)
	movq      16(%rax), %r14
	je        .L493
	movq      32(%rax), %rsi
	addq      24(%rax), %rsi
	leaq      .LC42(%rip), %rdi
	call      compile_err@PLT
.L493:
	movq      %r14, %rdi
	call      optimizenode@PLT
	movq      (%r12), %rcx
	leaq      (%r14,%r14,2), %rax
	salq      $4, %rax
	andq      40(%rcx,%rax), %rbx
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L482:
	cmpb      $38, %sil
	movq      (%r14), %rdi
	je        .L532
.L491:
	call      optimizenode@PLT
	movq      (%r14), %rax
	movq      (%r12), %rcx
	addq      $1, %rbp
	xorl      %ebx, %ebx
	leaq      (%rax,%rax,2), %rax
	salq      $4, %rax
	movq      $3, 40(%rcx,%rax)
	jmp       .L473
	.p2align 4,,10
	.p2align 3
.L481:
	movq      56(%rsp), %rax
	addq      (%r12), %rax
	movsbl    %sil, %edx
	leaq      .LC29(%rip), %rsi
	movl      $5, %edi
	movq      32(%rax), %rcx
	movq      24(%rax), %r8
	xorl      %eax, %eax
	call      pari_err@PLT
	movq      (%r12), %rcx
	jmp       .L473
.L532:
	leaq      (%rdi,%rdi,2), %rbx
	salq      $4, %rbx
	movq      %rbx, %rax
	addq      (%r12), %rax
	cmpl      $12, (%rax)
	je        .L492
	movq      24(%rax), %rsi
	leaq      .LC26(%rip), %rdi
	call      compile_err@PLT
	movq      %rbx, %rax
	addq      (%r12), %rax
.L492:
	movq      8(%rax), %rdi
	jmp       .L491
.LHOTE43:
	.cfi_endproc
	.size	optimizefunc, .-optimizefunc
# ----------------------
	.local	foo.20841
	.comm	foo.20841,8,8
# ----------------------
	.local	foo.20737
	.comm	foo.20737,8,8
# ----------------------
	.comm	frames,8,8
# ----------------------
	.comm	dbgstart,8,8
# ----------------------
	.comm	dbginfo,8,8
# ----------------------
	.comm	localvars,8,8
# ----------------------
	.comm	offset,8,8
# ----------------------
	.comm	data,8,8
# ----------------------
	.comm	operand,8,8
# ----------------------
	.comm	opcode,8,8
# ----------------------
	.comm	s_frame,32,32
# ----------------------
	.comm	s_dbginfo,32,32
# ----------------------
	.comm	s_lvar,32,32
# ----------------------
	.comm	s_data,32,32
# ----------------------
	.comm	s_operand,32,32
# ----------------------
	.comm	s_opcode,32,32
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
