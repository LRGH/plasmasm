	.file	"F2x.c"
	.text
	.p2align 4,,15
# ----------------------
	.local	vecsmall_lexcmp
	.type	vecsmall_lexcmp, @function
vecsmall_lexcmp:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	subl      $8, %esp
	movl      24(%esp), %esi
	movl      28(%esp), %edi
	movl      (%esi), %eax
	movl      %eax, (%esp)
	movl      (%edi), %eax
	andl      $16777215, (%esp)
	movl      (%esp), %edx
	movl      %eax, 4(%esp)
	andl      $16777215, 4(%esp)
	movl      4(%esp), %eax
	cmpl      %eax, %edx
	movl      %eax, %ebp
	cmovle    %edx, %ebp
	cmpl      $1, %ebp
	jle       .L2
	movl      4(%esi), %ecx
	movl      $1, %eax
	movl      4(%edi), %edx
	cmpl      %edx, %ecx
	je        .L5
	jmp       .L3
	.p2align 4,,7
	.p2align 3
.L7:
	movl      (%esi,%eax,4), %ecx
	movl      (%edi,%eax,4), %edx
	cmpl      %edx, %ecx
	jne       .L3
.L5:
	addl      $1, %eax
	cmpl      %ebp, %eax
	jne       .L7
.L2:
	movl      4(%esp), %eax
	cmpl      %eax, (%esp)
	je        .L9
	setge     %al
	addl      $8, %esp
	movzbl    %al, %eax
	popl      %esi
	leal      -1(%eax,%eax), %eax
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L3:
	xorl      %eax, %eax
	cmpl      %edx, %ecx
	setge     %al
	addl      $8, %esp
	popl      %esi
	leal      -1(%eax,%eax), %eax
	popl      %edi
	popl      %ebp
	ret       
.L9:
	addl      $8, %esp
	xorl      %eax, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	vecsmall_lexcmp, .-vecsmall_lexcmp
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	F2x_equal1
	.type	F2x_equal1, @function
F2x_equal1:
	.cfi_startproc
	movl      4(%esp), %ecx
	xorl      %eax, %eax
	movl      (%ecx), %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	je        .L17
	rep; ret       
	.p2align 4,,7
	.p2align 3
.L17:
	xorl      %eax, %eax
	cmpl      $1, 8(%ecx)
	sete      %al
	ret       
	.cfi_endproc
	.size	F2x_equal1, .-F2x_equal1
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	_F2xq_hash
	.type	_F2xq_hash, @function
_F2xq_hash:
	.cfi_startproc
	movl      4(%esp), %eax
	movl      8(%eax), %eax
	ret       
	.cfi_endproc
	.size	_F2xq_hash, .-_F2xq_hash
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"mallocing NULL object"
.LC1:
	.string	"lg()"
.LC2:
	.string	"F2x_gcd (d = %ld)"
.LC3:
	.string	"F2x_extgcd (d = %ld)"
.LC4:
	.string	"F2xq_sqrt (i = %ld)"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	pari_malloc
	.type	pari_malloc, @function
pari_malloc:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %eax, %eax
	jne       .L29
	movl      DEBUGMEM@GOT(%ebx), %edx
	xorl      %eax, %eax
	movl      (%edx), %edx
	testl     %edx, %edx
	jne       .L30
.L22:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L29:
	movl      PARI_SIGINT_block@GOT(%ebx), %esi
	movl      %eax, (%esp)
	movl      (%esi), %edi
	movl      $1, (%esi)
	call      malloc@PLT
	testl     %edi, %edi
	movl      %edi, (%esi)
	movl      %eax, %ebp
	jne       .L21
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L31
.L21:
	testl     %ebp, %ebp
	movl      %ebp, %eax
	jne       .L22
	movl      $28, (%esp)
	movl      %ebp, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %eax
	jmp       .L22
	.p2align 4,,7
	.p2align 3
.L30:
	leal      .LC0@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      $0, (%esp)
	movl      %eax, 12(%esp)
	call      pari_warn@PLT
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L31:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	jmp       .L21
	.cfi_endproc
	.size	pari_malloc, .-pari_malloc
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	pari_free
	.type	pari_free, @function
pari_free:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $16, %esp
	movl      %eax, (%esp)
	movl      PARI_SIGINT_block@GOT(%ebx), %esi
	movl      (%esi), %edi
	movl      $1, (%esi)
	call      free@PLT
	testl     %edi, %edi
	movl      %edi, (%esi)
	jne       .L32
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L38
.L32:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L38:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.cfi_endproc
	.size	pari_free, .-pari_free
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	F2x_addspec
	.type	F2x_addspec, @function
F2x_addspec:
	.cfi_startproc
	pushl     %ebp
	movl      %eax, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %edi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl      64(%esp), %edi
	jle       .L40
	movl      64(%esp), %eax
	movl      %edi, 64(%esp)
	movl      %eax, %edi
	movl      %ebp, %eax
	movl      %edx, %ebp
	movl      %eax, %edx
.L40:
	movl      64(%esp), %eax
	addl      $2, %eax
	movl      %eax, %esi
	movl      avma@GOT(%ebx), %eax
	movl      %esi, 20(%esp)
	sall      $2, %esi
	movl      %esi, 24(%esp)
	movl      (%eax), %ecx
	movl      %ecx, %eax
	subl      %esi, %eax
	movl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ecx, 20(%esp)
	jbe       .L41
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
.L41:
	movl      avma@GOT(%ebx), %eax
	testl     $-16777216, 20(%esp)
	movl      %esi, (%eax)
	je        .L42
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 28(%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
.L42:
	movl      20(%esp), %eax
	orl       $738197504, %eax
	testl     %edi, %edi
	movl      %eax, (%esi)
	jle       .L49
	xorl      %eax, %eax
	.p2align 4,,7
	.p2align 3
.L44:
	movl      (%edx,%eax,4), %ecx
	xorl      (%ebp,%eax,4), %ecx
	movl      %ecx, 8(%esi,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L44
.L43:
	cmpl      %edi, 64(%esp)
	jle       .L46
	movl      24(%esp), %edx
	leal      (%ebp,%edi,4), %eax
	leal      -8(%ebp,%edx), %ecx
	negl      %ebp
	.p2align 4,,7
	.p2align 3
.L47:
	movl      (%eax), %edi
	leal      (%eax,%esi), %edx
	addl      $4, %eax
	cmpl      %ecx, %eax
	movl      %edi, 8(%edx,%ebp)
	jne       .L47
.L46:
	movl      20(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L49:
	xorl      %edi, %edi
	jmp       .L43
	.cfi_endproc
	.size	F2x_addspec, .-F2x_addspec
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	F2x_addshift
	.type	F2x_addshift, @function
F2x_addshift:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	addl      $8, %edi
	pushl     %ebx
	subl      $60, %esp
	movl      (%edx), %ecx
	movl      %edx, 36(%esp)
	movl      (%eax), %edx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %ecx, 12(%esp)
	andl      $16777215, %edx
	subl      $2, %edx
	andl      $16777215, 12(%esp)
	movl      12(%esp), %ecx
	movl      %edx, 16(%esp)
	movl      4(%eax), %edx
	movl      avma@GOT(%ebx), %esi
	subl      $2, %ecx
	movl      %edx, 28(%esp)
	leal      8(%eax), %edx
	movl      %edx, 32(%esp)
	movl      %ecx, %edx
	movl      (%esi), %esi
	subl      80(%esp), %edx
	movl      %ecx, 24(%esp)
	testl     %edx, %edx
	movl      %edx, 20(%esp)
	jle       .L78
	movl      80(%esp), %eax
	movl      %esi, %ebp
	movl      %esi, %ecx
	leal      0(,%eax,4), %edx
	movl      bot@GOT(%ebx), %eax
	subl      %edx, %ecx
	movl      %ecx, 44(%esp)
	subl      (%eax), %ebp
	movl      %ebp, %eax
	shrl      $2, %eax
	cmpl      %eax, 80(%esp)
	ja        .L79
.L63:
	movl      avma@GOT(%ebx), %eax
	movl      20(%esp), %ebp
	movl      %ecx, 40(%esp)
	movl      %ecx, (%eax)
	leal      (%edi,%edx), %eax
	movl      16(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %eax, %edx
	movl      32(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %ecx, (%esp)
	call      F2x_addspec
	movl      16(%esp), %ecx
	cmpl      %ecx, %ebp
	movl      40(%esp), %ecx
	jle       .L80
	addl      $8, %eax
	cmpl      %ecx, %eax
	jnb       .L62
.L81:
	movl      44(%esp), %ebp
	.p2align 4,,7
	.p2align 3
.L75:
	subl      $4, %ebp
	movl      (%ebp), %edx
	subl      $4, %esi
	cmpl      %ebp, %eax
	movl      %edx, (%esi)
	jb        .L75
.L62:
	movl      24(%esp), %eax
	cmpl      %eax, %edi
	jnb       .L68
	movl      %esi, %edx
	.p2align 4,,7
	.p2align 3
.L70:
	subl      $4, %eax
	movl      (%eax), %ecx
	subl      $4, %edx
	cmpl      %eax, %edi
	movl      %ecx, (%edx)
	jb        .L70
	movl      24(%esp), %edx
	subl      36(%esp), %edx
	leal      -9(%edx), %eax
	notl      %eax
	andl      $-4, %eax
	addl      %eax, %esi
.L68:
	movl      28(%esp), %eax
	testl     $-16777216, 12(%esp)
	movl      %eax, -4(%esi)
	je        .L71
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L71:
	movl      12(%esp), %eax
	orl       $738197504, %eax
	movl      %eax, -8(%esi)
	addl      $60, %esp
	popl      %ebx
	leal      -8(%esi), %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L80:
	movl      (%eax), %edx
	addl      $8, %eax
	andl      $16777215, %edx
	addl      80(%esp), %edx
	cmpl      %ecx, %eax
	movl      %edx, 12(%esp)
	jb        .L81
	jmp       .L62
	.p2align 4,,7
	.p2align 3
.L79:
	movl      $14, (%esp)
	movl      %ecx, 40(%esp)
	movl      %edx, 24(%esp)
	call      pari_err@PLT
	movl      40(%esp), %ecx
	movl      24(%esp), %edx
	jmp       .L63
	.p2align 4,,7
	.p2align 3
.L78:
	movl      16(%esp), %ebp
	movl      80(%esp), %ecx
	cmpl      %ebp, 20(%esp)
	leal      2(%ebp,%ecx), %edx
	movl      %esi, %ebp
	cmovg     12(%esp), %edx
	movl      %edx, %ecx
	movl      %edx, 12(%esp)
	sall      $2, %edx
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, 40(%esp)
	movl      %esi, %ebp
	subl      (%edx), %ebp
	movl      %ebp, %edx
	shrl      $2, %edx
	cmpl      %edx, %ecx
	jbe       .L58
	movl      $14, (%esp)
	movl      %eax, 44(%esp)
	call      pari_err@PLT
	movl      44(%esp), %eax
.L58:
	movl      avma@GOT(%ebx), %ecx
	movl      40(%esp), %edx
	movl      %edx, (%ecx)
	movl      32(%esp), %edx
	movl      16(%esp), %ecx
	leal      (%edx,%ecx,4), %ebp
	movl      24(%esp), %ecx
	cmpl      %ebp, %edx
	leal      (%edi,%ecx,4), %ecx
	movl      %ecx, 24(%esp)
	movl      %edx, %ecx
	jnb       .L59
	movl      %edi, 16(%esp)
	movl      %ebp, %edx
	movl      %ecx, %edi
	movl      %eax, 32(%esp)
	.p2align 4,,7
	.p2align 3
.L61:
	subl      $4, %edx
	movl      (%edx), %eax
	movl      %edx, %ecx
	subl      %ebp, %ecx
	cmpl      %edx, %edi
	movl      %eax, (%esi,%ecx)
	jb        .L61
	movl      32(%esp), %eax
	movl      16(%esp), %edi
	subl      %eax, %ebp
	leal      -9(%ebp), %eax
	notl      %eax
	andl      $-4, %eax
	addl      %eax, %esi
.L59:
	movl      20(%esp), %eax
	leal      (%esi,%eax,4), %eax
	cmpl      %esi, %eax
	jnb       .L62
	leal      -1(%esi), %edx
	subl      %eax, %edx
	shrl      $2, %edx
	leal      1(%edx), %ebp
	movl      %esi, %edx
	leal      0(,%ebp,4), %eax
	subl      %eax, %edx
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edx, (%esp)
	call      memset@PLT
	movl      %ebp, %eax
	negl      %eax
	leal      (%esi,%eax,4), %esi
	jmp       .L62
	.cfi_endproc
	.size	F2x_addshift, .-F2x_addshift
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	F2x_shiftip
	.type	F2x_shiftip, @function
F2x_shiftip:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      (%edx), %edi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      64(%esp), %ecx
	andl      $16777215, %edi
	cmpl      $2, %edi
	je        .L99
	testl     %ecx, %ecx
	je        .L99
	movl      avma@GOT(%ebx), %esi
	movl      %eax, (%esi)
	leal      (%edx,%edi,4), %esi
	movl      %esi, 20(%esp)
	movl      bot@GOT(%ebx), %esi
	leal      (%edi,%ecx), %edx
	movl      %edx, 16(%esp)
	leal      0(,%edx,4), %ebp
	movl      %eax, %edx
	subl      %ebp, %edx
	subl      (%esi), %eax
	shrl      $2, %eax
	cmpl      %eax, 16(%esp)
	ja        .L106
.L90:
	movl      avma@GOT(%ebx), %eax
	addl      %edx, %ebp
	cmpl      $2, %edi
	movl      %edx, (%eax)
	jle       .L91
	movl      20(%esp), %esi
	movl      %ebp, %edx
	movl      $2, %eax
	movl      %ecx, 64(%esp)
	.p2align 4,,7
	.p2align 3
.L93:
	subl      $4, %esi
	movl      (%esi), %ecx
	addl      $1, %eax
	subl      $4, %edx
	cmpl      %edi, %eax
	movl      %ecx, (%edx)
	jne       .L93
	movl      64(%esp), %ecx
	sall      $2, %eax
	negl      %eax
	leal      8(%ebp,%eax), %ebp
.L91:
	testl     %ecx, %ecx
	jle       .L94
	leal      0(,%ecx,4), %esi
	movl      %ebp, %eax
	subl      %esi, %eax
	subl      %esi, %ebp
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset@PLT
.L94:
	testl     $-16777216, 16(%esp)
	leal      -8(%ebp), %esi
	jne       .L107
.L95:
	movl      16(%esp), %eax
	orl       $738197504, %eax
	movl      %eax, -8(%ebp)
	movl      %esi, %eax
.L103:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L99:
	movl      bot@GOT(%ebx), %ecx
	cmpl      (%ecx), %edx
	jb        .L85
	movl      top@GOT(%ebx), %ecx
	cmpl      (%ecx), %edx
	jnb       .L85
	cmpl      %eax, %edx
	jnb       .L85
	movl      avma@GOT(%ebx), %esi
	leal      0(,%edi,4), %ecx
	subl      %ecx, %eax
	testl     %edi, %edi
	movl      %eax, (%esi)
	je        .L103
	leal      -4(%ecx,%eax), %ecx
	subl      %eax, %edx
	leal      -4(%eax), %edi
	.p2align 4,,7
	.p2align 3
.L88:
	movl      (%edx,%ecx), %esi
	subl      $4, %ecx
	movl      %esi, 4(%ecx)
	cmpl      %edi, %ecx
	jne       .L88
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L106:
	movl      $14, (%esp)
	movl      %ecx, 28(%esp)
	movl      %edx, 24(%esp)
	call      pari_err@PLT
	movl      28(%esp), %ecx
	movl      24(%esp), %edx
	jmp       .L90
	.p2align 4,,7
	.p2align 3
.L85:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, (%ecx)
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L107:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
	jmp       .L95
	.cfi_endproc
	.size	F2x_shiftip, .-F2x_shiftip
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	bin_copy
	.type	bin_copy, @function
bin_copy:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $44, %esp
	movl      4(%eax), %edi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %edi, %edi
	je        .L122
	movl      %edi, %ebp
	subl      8(%eax), %ebp
	movl      (%eax), %eax
	movl      %ebp, 16(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 16(%esp)
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 20(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %ecx
	movl      %ecx, %eax
	subl      (%ebp), %ecx
	subl      %edx, %eax
	shrl      $2, %ecx
	cmpl      %ecx, (%esi)
	jbe       .L112
	movl      $14, (%esp)
	movl      %eax, 28(%esp)
	movl      %edx, 24(%esp)
	call      pari_err@PLT
	movl      28(%esp), %eax
	movl      24(%esp), %edx
.L112:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, (%ecx)
	movl      20(%esp), %ecx
	movl      %edx, 8(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
	movl      16(%esp), %ecx
	movl      12(%esi), %edx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L123
	call      shiftaddress@PLT
.L114:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %edx
	movl      $1, (%edi)
	movl      %esi, (%esp)
	movl      %edx, 16(%esp)
	call      free@PLT
	movl      16(%esp), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L111
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L111
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L111:
	addl      $44, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L123:
	call      shiftaddress_canon@PLT
	jmp       .L114
	.p2align 4,,7
	.p2align 3
.L122:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      free@PLT
	testl     %ebp, %ebp
	movl      %ebp, (%edi)
	jne       .L110
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L124
.L110:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	movl      %ebp, %eax
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L124:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	jmp       .L110
	.cfi_endproc
	.size	bin_copy, .-bin_copy
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	gerepileall.constprop.4
	.type	gerepileall.constprop.4, @function
gerepileall.constprop.4:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $108, %esp
	leal      56(%esp), %edi
	leal      76(%esp), %eax
	leal      140(%esp), %esi
	movl      %edi, 24(%esp)
	movl      %eax, 20(%esp)
	.p2align 4,,7
	.p2align 3
.L127:
	movl      -4(%esi), %ebp
	addl      $4, %edi
	addl      $4, %esi
	movl      (%ebp), %eax
	movl      %ebp, -4(%edi)
	movl      %eax, (%esp)
	call      copy_bin@PLT
	cmpl      20(%esp), %edi
	movl      %eax, (%ebp)
	jne       .L127
	movl      128(%esp), %eax
	leal      72(%esp), %ebp
	movl      avma@GOT(%ebx), %edx
	movl      %ebp, 20(%esp)
	movl      %eax, (%edx)
	movl      24(%esp), %eax
	subl      $4, %eax
	movl      %eax, 36(%esp)
	jmp       .L135
	.p2align 4,,7
	.p2align 3
.L145:
	call      shiftaddress_canon@PLT
.L133:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L130
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L130
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L130:
	movl      28(%esp), %eax
	subl      $4, 20(%esp)
	movl      %ebp, (%eax)
	movl      36(%esp), %eax
	cmpl      %eax, 20(%esp)
	je        .L143
.L135:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	movl      (%eax), %esi
	movl      %eax, 28(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L144
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 32(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, 24(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 24(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L131
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L131:
	movl      avma@GOT(%ebx), %eax
	movl      %ecx, (%eax)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
	movl      24(%esp), %edx
	leal      (%eax,%edx,4), %ebp
	movl      12(%esi), %edx
	movl      %ebp, %eax
	subl      %edi, %eax
	movl      %eax, 4(%esp)
	testl     %edx, %edx
	movl      %ebp, (%esp)
	jne       .L145
	call      shiftaddress@PLT
	jmp       .L133
	.p2align 4,,7
	.p2align 3
.L144:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L129
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L146
.L129:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L130
	.p2align 4,,7
	.p2align 3
.L143:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L146:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L130
	.cfi_endproc
	.size	gerepileall.constprop.4, .-gerepileall.constprop.4
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	gerepileall.constprop.5
	.type	gerepileall.constprop.5, @function
gerepileall.constprop.5:
	.cfi_startproc
	pushl     %ebp
	movl      $1, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      136(%esp), %esi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%esi), %eax
	movl      %esi, 56(%esp)
	movl      %eax, (%esp)
	call      copy_bin@PLT
	movl      %eax, (%esi)
	movl      140(%esp), %esi
	movl      (%esi), %eax
	movl      %esi, 60(%esp)
	movl      %eax, (%esp)
	call      copy_bin@PLT
	movl      avma@GOT(%ebx), %ecx
	movl      %ebp, 20(%esp)
	movl      %eax, (%esi)
	movl      128(%esp), %eax
	movl      %eax, (%ecx)
	leal      56(%esp), %eax
	movl      %eax, 36(%esp)
	jmp       .L155
	.p2align 4,,7
	.p2align 3
.L165:
	call      shiftaddress_canon@PLT
.L153:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L150
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L150
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L150:
	movl      28(%esp), %eax
	subl      $1, 20(%esp)
	cmpl      $-1, 20(%esp)
	movl      %ebp, (%eax)
	je        .L163
.L155:
	movl      36(%esp), %eax
	movl      20(%esp), %edx
	movl      (%eax,%edx,4), %eax
	movl      (%eax), %esi
	movl      %eax, 28(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L164
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 32(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, 24(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 24(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L151
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L151:
	movl      avma@GOT(%ebx), %eax
	movl      %ecx, (%eax)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
	movl      24(%esp), %ecx
	movl      12(%esi), %edx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L165
	call      shiftaddress@PLT
	jmp       .L153
	.p2align 4,,7
	.p2align 3
.L164:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L149
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L166
.L149:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L150
	.p2align 4,,7
	.p2align 3
.L163:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L166:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L150
	.cfi_endproc
	.size	gerepileall.constprop.5, .-gerepileall.constprop.5
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	gerepileall
	.type	gerepileall, @function
gerepileall:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	leal      136(%esp), %esi
	cmpl      $9, 132(%esp)
	jg        .L168
	movl      132(%esp), %ebp
	testl     %ebp, %ebp
	jle       .L169
	movl      132(%esp), %edx
	leal      56(%esp), %eax
	movl      %eax, 36(%esp)
	movl      %eax, %esi
	leal      140(%esp), %edi
	leal      (%eax,%edx,4), %eax
	movl      %eax, 12(%esp)
	.p2align 4,,7
	.p2align 3
.L171:
	movl      -4(%edi), %ebp
	addl      $4, %esi
	addl      $4, %edi
	movl      (%ebp), %eax
	movl      %ebp, -4(%esi)
	movl      %eax, (%esp)
	call      copy_bin@PLT
	cmpl      12(%esp), %esi
	movl      %eax, (%ebp)
	jne       .L171
	movl      132(%esp), %eax
	movl      128(%esp), %edx
	leal      -1(%eax), %ebp
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, 16(%esp)
	movl      %eax, 24(%esp)
	movl      %edx, (%eax)
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      %eax, 12(%esp)
	jmp       .L179
	.p2align 4,,7
	.p2align 3
.L219:
	call      shiftaddress_canon@PLT
.L177:
	movl      12(%esp), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
	movl      12(%esp), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L174
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L174
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L174:
	movl      28(%esp), %eax
	subl      $1, 16(%esp)
	cmpl      $-1, 16(%esp)
	movl      %ebp, (%eax)
	je        .L167
.L179:
	movl      36(%esp), %eax
	movl      16(%esp), %edx
	movl      (%eax,%edx,4), %eax
	movl      (%eax), %esi
	movl      %eax, 28(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L218
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 32(%esp)
	movl      24(%esp), %eax
	movl      %ebp, 20(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 20(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L175
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L175:
	movl      24(%esp), %eax
	movl      %ecx, (%eax)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
	movl      20(%esp), %edx
	leal      (%eax,%edx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	movl      12(%esi), %edi
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	testl     %edi, %edi
	jne       .L219
	call      shiftaddress@PLT
	jmp       .L177
	.p2align 4,,7
	.p2align 3
.L223:
	movl      12(%esp), %edi
	movl      20(%esp), %eax
	movl      (%edi), %esi
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      free@PLT
	testl     %esi, %esi
	movl      %esi, (%edi)
	jne       .L167
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L167
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	.p2align 4,,7
	.p2align 3
.L167:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L218:
	movl      12(%esp), %ebp
	movl      (%ebp), %edi
	movl      $1, (%ebp)
	movl      %esi, (%esp)
	call      free@PLT
	testl     %edi, %edi
	movl      %edi, (%ebp)
	jne       .L173
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L220
.L173:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L174
	.p2align 4,,7
	.p2align 3
.L168:
	movl      132(%esp), %eax
	sall      $2, %eax
	testl     %eax, %eax
	jne       .L221
	movl      DEBUGMEM@GOT(%ebx), %eax
	movl      (%eax), %ecx
	testl     %ecx, %ecx
	jne       .L222
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      $0, 20(%esp)
	movl      %eax, 12(%esp)
.L183:
	leal      4(%esi), %edi
	xorl      %esi, %esi
	.p2align 4,,7
	.p2align 3
.L185:
	movl      -4(%edi), %ebp
	addl      $4, %edi
	movl      20(%esp), %eax
	movl      %ebp, (%eax,%esi,4)
	movl      (%ebp), %eax
	addl      $1, %esi
	movl      %eax, (%esp)
	call      copy_bin@PLT
	cmpl      132(%esp), %esi
	movl      %eax, (%ebp)
	jne       .L185
	leal      -1(%esi), %eax
	movl      128(%esp), %ecx
	movl      %eax, 28(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %eax, 24(%esp)
	movl      %ecx, (%eax)
	jmp       .L193
	.p2align 4,,7
	.p2align 3
.L225:
	call      shiftaddress_canon@PLT
.L191:
	movl      12(%esp), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
	movl      12(%esp), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L188
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L188
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L188:
	movl      32(%esp), %eax
	subl      $1, 28(%esp)
	movl      %ebp, (%eax)
	js        .L223
.L193:
	movl      20(%esp), %eax
	movl      28(%esp), %ecx
	movl      (%eax,%ecx,4), %eax
	movl      (%eax), %esi
	movl      %eax, 32(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L224
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 36(%esp)
	movl      24(%esp), %eax
	movl      %ebp, 16(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 16(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L189
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L189:
	movl      24(%esp), %eax
	movl      %ecx, (%eax)
	movl      36(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
	movl      16(%esp), %ecx
	movl      12(%esi), %edx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L225
	call      shiftaddress@PLT
	jmp       .L191
	.p2align 4,,7
	.p2align 3
.L220:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L174
.L222:
	leal      .LC0@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      pari_warn@PLT
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      $0, 20(%esp)
	movl      %eax, 12(%esp)
	jmp       .L183
	.p2align 4,,7
	.p2align 3
.L224:
	movl      12(%esp), %ebp
	movl      (%ebp), %edi
	movl      $1, (%ebp)
	movl      %esi, (%esp)
	call      free@PLT
	testl     %edi, %edi
	movl      %edi, (%ebp)
	jne       .L187
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L187
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L187:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L188
	.p2align 4,,7
	.p2align 3
.L221:
	movl      PARI_SIGINT_block@GOT(%ebx), %ecx
	movl      (%ecx), %ebp
	movl      $1, (%ecx)
	movl      %eax, (%esp)
	movl      %ecx, 12(%esp)
	call      malloc@PLT
	movl      12(%esp), %ecx
	testl     %ebp, %ebp
	movl      %ebp, (%ecx)
	movl      %eax, %edi
	jne       .L182
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %ecx
	testl     %ecx, %ecx
	je        .L182
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      raise@PLT
	.p2align 4,,7
	.p2align 3
.L182:
	testl     %edi, %edi
	movl      %edi, 20(%esp)
	jne       .L183
	movl      $28, (%esp)
	call      pari_err@PLT
	jmp       .L183
	.p2align 4,,7
	.p2align 3
.L169:
	movl      avma@GOT(%ebx), %eax
	movl      128(%esp), %edx
	movl      %edx, (%eax)
	jmp       .L167
	.cfi_endproc
	.size	gerepileall, .-gerepileall
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_degree
	.type	F2x_degree, @function
F2x_degree:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	movl      12(%esp), %ecx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ecx), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L231
	leal      -2(%edx), %eax
	movl      -4(%ecx,%edx,4), %edx
	sall      $5, %eax
	testl     $-65536, %edx
	jne       .L240
	movl      $20, %esi
	movl      $28, %ecx
.L228:
	testl     $-256, %edx
	je        .L229
	shrl      $8, %edx
	movl      %esi, %ecx
.L229:
	testl     $-16, %edx
	je        .L230
	subl      $4, %ecx
	shrl      $4, %edx
.L230:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%edx,4), %ecx
	subl      %ecx, %eax
	subl      $1, %eax
.L227:
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L240:
	shrl      $16, %edx
	movl      $4, %esi
	movl      $12, %ecx
	jmp       .L228
	.p2align 4,,7
	.p2align 3
.L231:
	movl      $-1, %eax
	jmp       .L227
	.cfi_endproc
	.size	F2x_degree, .-F2x_degree
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_to_ZX
	.type	F2x_to_ZX, @function
F2x_to_ZX:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %edi
	movl      %edi, (%esp)
	call      F2x_degree@PLT
	movl      avma@GOT(%ebx), %esi
	addl      $3, %eax
	movl      %eax, %ecx
	movl      %eax, 8(%esp)
	movl      (%esi), %eax
	leal      0(,%ecx,4), %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, 12(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ecx
	jbe       .L242
	movl      $14, (%esp)
	call      pari_err@PLT
.L242:
	movl      12(%esp), %eax
	testl     $-16777216, 8(%esp)
	movl      %eax, (%esi)
	je        .L243
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L243:
	movl      8(%esp), %eax
	movl      12(%esp), %ecx
	orl       $335544320, %eax
	movl      %eax, (%ecx)
	movl      (%edi), %ecx
	movl      %ecx, %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jle       .L244
	movl      $2, %ebp
	movl      $2, %eax
	.p2align 4,,7
	.p2align 3
.L245:
	cmpl      %eax, 8(%esp)
	jle       .L248
	xorl      %ecx, %ecx
	jmp       .L249
	.p2align 4,,7
	.p2align 3
.L261:
	cmpl      $31, %ecx
	jg        .L252
.L249:
	movl      gen_0@GOT(%ebx), %esi
	movl      (%esi), %edx
	movl      (%edi,%ebp,4), %esi
	shrl      %cl, %esi
	andl      $1, %esi
	movl      gen_1@GOT(%ebx), %esi
	cmovne    (%esi), %edx
	addl      $1, %ecx
	movl      12(%esp), %esi
	movl      %edx, (%esi,%eax,4)
	addl      $1, %eax
	cmpl      %eax, 8(%esp)
	jg        .L261
.L252:
	movl      (%edi), %ecx
.L248:
	movl      %ecx, %edx
	addl      $1, %ebp
	andl      $16777215, %edx
	cmpl      %ebp, %edx
	jg        .L245
.L244:
	cmpl      $3, 8(%esp)
	movl      $1073741824, %eax
	movl      $0, %edx
	cmovl     %edx, %eax
	orl       4(%edi), %eax
	movl      12(%esp), %edi
	movl      %eax, 4(%edi)
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2x_to_ZX, .-F2x_to_ZX
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xC_to_ZXC
	.type	F2xC_to_ZXC, @function
F2xC_to_ZXC:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L263
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
.L263:
	movl      %edx, %eax
	orl       $603979776, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L267
	.p2align 4,,7
	.p2align 3
.L268:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      F2x_to_ZX@PLT
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L268
.L267:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2xC_to_ZXC, .-F2xC_to_ZXC
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_to_Flx
	.type	F2x_to_Flx, @function
F2x_to_Flx:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      %ebp, (%esp)
	call      F2x_degree@PLT
	movl      avma@GOT(%ebx), %esi
	movl      (%esi), %edx
	addl      $3, %eax
	movl      %eax, %edi
	movl      %edx, %ecx
	movl      %eax, 8(%esp)
	sall      $2, %eax
	subl      %eax, %ecx
	movl      %ecx, %eax
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %edx
	shrl      $2, %edx
	cmpl      %edx, %edi
	jbe       .L271
	movl      $14, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %eax
.L271:
	testl     $-16777216, 8(%esp)
	movl      %eax, (%esi)
	je        .L272
	leal      .LC1@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      $15, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %eax
.L272:
	movl      8(%esp), %edx
	orl       $738197504, %edx
	movl      %edx, (%eax)
	movl      4(%ebp), %edx
	movl      %edx, 4(%eax)
	movl      (%ebp), %ecx
	movl      %ecx, %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	jle       .L273
	movl      $2, %edi
	movl      $2, %esi
	.p2align 4,,7
	.p2align 3
.L274:
	cmpl      %esi, 8(%esp)
	jle       .L277
	xorl      %ecx, %ecx
	jmp       .L278
	.p2align 4,,7
	.p2align 3
.L288:
	cmpl      $31, %ecx
	jg        .L279
.L278:
	movl      (%ebp,%edi,4), %edx
	sarl      %cl, %edx
	addl      $1, %ecx
	andl      $1, %edx
	movl      %edx, (%eax,%esi,4)
	addl      $1, %esi
	cmpl      %esi, 8(%esp)
	jg        .L288
.L279:
	movl      (%ebp), %ecx
.L277:
	movl      %ecx, %edx
	addl      $1, %edi
	andl      $16777215, %edx
	cmpl      %edi, %edx
	jg        .L274
.L273:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2x_to_Flx, .-F2x_to_Flx
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	Z_to_F2x
	.type	Z_to_F2x, @function
Z_to_F2x:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%eax), %edx
	movl      %edx, %ecx
	sarl      $30, %ecx
	testl     %ecx, %ecx
	je        .L290
	andl      $16777215, %edx
	testb     $1, -4(%eax,%edx,4)
	je        .L290
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %eax
	movl      (%esi), %ebp
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	leal      -12(%ebp), %edi
	cmpl      $11, %ecx
	jbe       .L302
.L296:
	movl      52(%esp), %eax
	movl      %edi, (%esi)
	movl      $738197507, -12(%ebp)
	movl      $1, 8(%edi)
	movl      %eax, 4(%edi)
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L290:
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %eax
	movl      (%esi), %edi
	movl      %edi, %edx
	subl      (%eax), %edx
	leal      -8(%edi), %ebp
	cmpl      $7, %edx
	jbe       .L303
.L294:
	movl      52(%esp), %eax
	movl      %ebp, (%esi)
	movl      $738197506, -8(%edi)
	movl      %eax, 4(%ebp)
	addl      $28, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L303:
	movl      $14, (%esp)
	call      pari_err@PLT
	jmp       .L294
	.p2align 4,,7
	.p2align 3
.L302:
	movl      $14, (%esp)
	call      pari_err@PLT
	jmp       .L296
	.cfi_endproc
	.size	Z_to_F2x, .-Z_to_F2x
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	ZX_to_F2x
	.type	ZX_to_F2x, @function
ZX_to_F2x:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	andl      $16777215, %eax
	addl      $93, %eax
	movl      %eax, 28(%esp)
	shrl      $5, 28(%esp)
	movl      28(%esp), %edi
	movl      (%esi), %eax
	movl      %edi, %edx
	sall      $2, %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      bot@GOT(%ebx), %edx
	movl      %ecx, 24(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L305
	movl      $14, (%esp)
	call      pari_err@PLT
.L305:
	movl      28(%esp), %eax
	movl      24(%esp), %edx
	movl      $1, 20(%esp)
	orl       $738197504, %eax
	movl      %edx, (%esi)
	movl      %eax, (%edx)
	movl      4(%ebp), %eax
	andl      $1073676288, %eax
	movl      %eax, 4(%edx)
	movl      (%ebp), %ecx
	movl      $32, %edx
	movl      $2, %eax
	andl      $16777215, %ecx
	cmpl      $2, %ecx
	jg        .L315
	jmp       .L311
	.p2align 4,,7
	.p2align 3
.L320:
	movl      %edx, 16(%esp)
	addl      $1, %edx
.L308:
	movl      (%ebp,%eax,4), %ecx
	movl      4(%ecx), %esi
	movl      %esi, %edi
	sarl      $30, %edi
	testl     %edi, %edi
	je        .L309
	andl      $16777215, %esi
	testb     $1, -4(%ecx,%esi,4)
	je        .L309
	movzbl    16(%esp), %ecx
	movl      $1, %esi
	movl      24(%esp), %edi
	sall      %cl, %esi
	movl      20(%esp), %ecx
	orl       %esi, (%edi,%ecx,4)
.L309:
	movl      (%ebp), %ecx
	addl      $1, %eax
	andl      $16777215, %ecx
	cmpl      %eax, %ecx
	jle       .L311
.L315:
	cmpl      $32, %edx
	jne       .L320
	addl      $1, 20(%esp)
	movl      24(%esp), %edx
	movl      20(%esp), %esi
	movl      $0, 16(%esp)
	movl      $0, (%edx,%esi,4)
	movl      $1, %edx
	jmp       .L308
	.p2align 4,,7
	.p2align 3
.L311:
	movl      28(%esp), %eax
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	ZX_to_F2x, .-ZX_to_F2x
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	Flx_to_F2x
	.type	Flx_to_F2x, @function
Flx_to_F2x:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%esi), %eax
	movl      avma@GOT(%ebx), %edi
	andl      $16777215, %eax
	addl      $93, %eax
	movl      %eax, 12(%esp)
	shrl      $5, 12(%esp)
	movl      12(%esp), %ecx
	movl      (%edi), %eax
	movl      %ecx, %edx
	sall      $2, %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, 8(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ecx
	jbe       .L322
	movl      $14, (%esp)
	call      pari_err@PLT
.L322:
	movl      12(%esp), %eax
	movl      $1, %ebp
	movl      8(%esp), %edx
	orl       $738197504, %eax
	movl      %edx, (%edi)
	movl      %eax, (%edx)
	movl      4(%esi), %eax
	movl      %eax, 4(%edx)
	movl      (%esi), %ecx
	movl      $32, %edx
	movl      $2, %eax
	andl      $16777215, %ecx
	cmpl      $2, %ecx
	jg        .L329
	jmp       .L327
	.p2align 4,,7
	.p2align 3
.L333:
	movl      %edx, %ecx
	addl      $1, %edx
.L325:
	movl      (%esi,%eax,4), %edi
	testl     %edi, %edi
	je        .L326
	movl      $1, %edi
	sall      %cl, %edi
	movl      8(%esp), %ecx
	orl       %edi, (%ecx,%ebp,4)
.L326:
	movl      (%esi), %ecx
	addl      $1, %eax
	andl      $16777215, %ecx
	cmpl      %eax, %ecx
	jle       .L327
.L329:
	cmpl      $32, %edx
	jne       .L333
	movl      8(%esp), %edi
	addl      $1, %ebp
	movl      $1, %edx
	xorl      %ecx, %ecx
	movl      $0, (%edi,%ebp,4)
	jmp       .L325
	.p2align 4,,7
	.p2align 3
.L327:
	movl      12(%esp), %eax
	movl      %eax, 4(%esp)
	movl      8(%esp), %eax
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	Flx_to_F2x, .-Flx_to_F2x
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_to_F2v
	.type	F2x_to_F2v, @function
F2x_to_F2v:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %eax
	movl      (%eax), %edi
	movl      avma@GOT(%ebx), %edx
	movl      68(%esp), %eax
	andl      $16777215, %edi
	movl      (%edx), %esi
	addl      $95, %eax
	movl      (%edx), %ebp
	shrl      $5, %eax
	leal      0(,%eax,4), %ecx
	subl      %ecx, %esi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %ebp
	movl      %ebp, %ecx
	shrl      $2, %ecx
	cmpl      %ecx, %eax
	jbe       .L335
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
	movl      24(%esp), %eax
.L335:
	testl     $117440512, %eax
	movl      %esi, (%edx)
	je        .L336
	leal      .LC1@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      $15, (%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
	movl      24(%esp), %eax
.L336:
	movl      68(%esp), %ecx
	movl      %eax, %edx
	orl       $738197504, %edx
	cmpl      $2, %edi
	movl      %edx, (%esi)
	movl      %ecx, 4(%esi)
	jle       .L341
	movl      64(%esp), %ebp
	movl      $2, %edx
	.p2align 4,,7
	.p2align 3
.L338:
	movl      (%ebp,%edx,4), %ecx
	movl      %ecx, (%esi,%edx,4)
	addl      $1, %edx
	cmpl      %edi, %edx
	jne       .L338
.L337:
	cmpl      %edi, %eax
	jle       .L345
	subl      %edi, %eax
	sall      $2, %eax
	leal      (%esi,%edi,4), %edx
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edx, (%esp)
	call      memset@PLT
.L345:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L341:
	movl      $2, %edi
	jmp       .L337
	.cfi_endproc
	.size	F2x_to_F2v, .-F2x_to_F2v
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_add
	.type	F2x_add, @function
F2x_add:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %ecx
	movl      64(%esp), %ebp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ecx), %eax
	movl      (%ebp), %edi
	movl      %eax, 20(%esp)
	andl      $16777215, 20(%esp)
	andl      $16777215, %edi
	cmpl      20(%esp), %edi
	jl        .L355
	movl      20(%esp), %eax
	movl      %edi, 20(%esp)
	movl      %eax, %edi
.L348:
	movl      avma@GOT(%ebx), %eax
	movl      20(%esp), %esi
	movl      (%eax), %edx
	sall      $2, %esi
	movl      %esi, 24(%esp)
	movl      %edx, %eax
	subl      %esi, %eax
	movl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	subl      (%eax), %edx
	shrl      $2, %edx
	cmpl      %edx, 20(%esp)
	jbe       .L349
	movl      $14, (%esp)
	movl      %ecx, 28(%esp)
	call      pari_err@PLT
	movl      28(%esp), %ecx
.L349:
	movl      avma@GOT(%ebx), %eax
	movl      %esi, (%eax)
	movl      20(%esp), %eax
	orl       $738197504, %eax
	cmpl      $2, %edi
	movl      %eax, (%esi)
	movl      4(%ebp), %eax
	movl      %eax, 4(%esi)
	jle       .L356
	movl      $2, %eax
	.p2align 4,,7
	.p2align 3
.L351:
	movl      (%ecx,%eax,4), %edx
	xorl      (%ebp,%eax,4), %edx
	movl      %edx, (%esi,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L351
.L350:
	movl      24(%esp), %edx
	leal      (%ebp,%edi,4), %eax
	addl      %ebp, %edx
	negl      %ebp
	cmpl      %edi, 20(%esp)
	jle       .L353
	.p2align 4,,7
	.p2align 3
.L357:
	movl      (%eax), %edi
	leal      (%eax,%esi), %ecx
	addl      $4, %eax
	cmpl      %edx, %eax
	movl      %edi, (%ecx,%ebp)
	jne       .L357
.L353:
	movl      20(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L355:
	movl      %ebp, %eax
	movl      %ecx, %ebp
	movl      %eax, %ecx
	jmp       .L348
.L356:
	movl      $2, %edi
	jmp       .L350
	.cfi_endproc
	.size	F2x_add, .-F2x_add
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_1_add
	.type	F2x_1_add, @function
F2x_1_add:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ebp), %esi
	andl      $16777215, %esi
	cmpl      $2, %esi
	je        .L372
	movl      avma@GOT(%ebx), %edx
	leal      0(,%esi,4), %ecx
	movl      (%edx), %eax
	movl      %eax, %edi
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %esi
	ja        .L373
.L365:
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %edi, (%edx)
	movl      $3, %edx
	movl      %eax, (%edi)
	movl      4(%ebp), %eax
	movl      %eax, 4(%edi)
	movl      8(%ebp), %eax
	xorl      $1, %eax
	cmpl      $3, %esi
	movl      %eax, 8(%edi)
	jle       .L374
	.p2align 4,,7
	.p2align 3
.L370:
	movl      (%ebp,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	addl      $1, %edx
	cmpl      %esi, %edx
	jne       .L370
.L369:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L373:
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
	jmp       .L365
	.p2align 4,,7
	.p2align 3
.L372:
	movl      avma@GOT(%ebx), %edx
	movl      bot@GOT(%ebx), %eax
	movl      4(%ebp), %ebp
	movl      (%edx), %esi
	movl      %esi, %ecx
	subl      (%eax), %ecx
	leal      -12(%esi), %edi
	cmpl      $11, %ecx
	jbe       .L375
.L363:
	movl      %edi, (%edx)
	movl      %edi, %eax
	movl      $738197507, -12(%esi)
	movl      %ebp, 4(%edi)
	movl      $1, 8(%edi)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L375:
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
	jmp       .L363
.L374:
	jne       .L369
	movl      %edi, (%esp)
	movl      $3, 4(%esp)
	call      Flx_renormalize@PLT
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2x_1_add, .-F2x_1_add
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_mul
	.type	F2x_mul, @function
F2x_mul:
	.cfi_startproc
	pushl     %esi
	subl      $24, %esp
	movl      36(%esp), %ecx
	movl      32(%esp), %esi
	leal      8(%ecx), %edx
	movl      (%ecx), %ecx
	leal      8(%esi), %eax
	andl      $16777215, %ecx
	subl      $2, %ecx
	movl      %ecx, 4(%esp)
	movl      (%esi), %ecx
	andl      $16777215, %ecx
	subl      $2, %ecx
	movl      %ecx, (%esp)
	call      F2x_mulspec
	movl      4(%esi), %edx
	movl      %edx, 4(%eax)
	addl      $24, %esp
	popl      %esi
	ret       
	.cfi_endproc
	.size	F2x_mul, .-F2x_mul
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	F2x_mulspec
	.type	F2x_mulspec, @function
F2x_mulspec:
	.cfi_startproc
	pushl     %ebp
	xorl      %ecx, %ecx
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      84(%esp), %ebp
	testl     %eax, %eax
	jne       .L436
	jmp       .L379
	.p2align 4,,7
	.p2align 3
.L437:
	addl      $4, %esi
	addl      $1, %ecx
	subl      $1, %eax
	je        .L379
.L436:
	movl      (%esi), %edx
	testl     %edx, %edx
	je        .L437
.L379:
	testl     %ebp, %ebp
	jne       .L434
	.p2align 4,,5
	jmp       .L381
	.p2align 4,,7
	.p2align 3
.L421:
	addl      $4, %edi
	addl      $1, %ecx
	subl      $1, %ebp
	je        .L381
.L434:
	movl      (%edi), %edx
	testl     %edx, %edx
	je        .L421
.L381:
	cmpl      %eax, %ebp
	jle       .L385
	movl      %eax, %edx
	movl      %ebp, %eax
	movl      %edx, %ebp
	movl      %esi, %edx
	movl      %edi, %esi
	movl      %edx, %edi
.L385:
	testl     %ebp, %ebp
	je        .L438
	movl      avma@GOT(%ebx), %edx
	cmpl      $1, %eax
	movl      %edx, 8(%esp)
	movl      (%edx), %edx
	movl      %edx, 28(%esp)
	jle       .L439
	movl      %eax, %edx
	sarl      $1, %edx
	subl      %edx, %eax
	movl      %eax, 8(%esp)
	sall      $2, %eax
	movl      %edx, 16(%esp)
	leal      (%esi,%eax), %edx
	movl      %edx, 20(%esp)
	movl      8(%esp), %edx
	testl     %edx, %edx
	je        .L407
	cmpl      $0, -4(%esi,%eax)
	je        .L396
	jmp       .L444
	.p2align 4,,7
	.p2align 3
.L440:
	cmpl      $0, -4(%esi,%edx,4)
	jne       .L431
.L396:
	subl      $1, %edx
	.p2align 4,,3
	jne       .L440
.L431:
	movl      %edx, 24(%esp)
	movl      8(%esp), %edx
.L395:
	cmpl      %edx, %ebp
	jle       .L397
	subl      %edx, %ebp
	testl     %edx, %edx
	movl      %ebp, 32(%esp)
	leal      (%edi,%eax), %ebp
	movl      %ebp, 36(%esp)
	je        .L409
	movl      -4(%edi,%eax), %ebp
	testl     %ebp, %ebp
	jne       .L410
	movl      %edx, %ebp
	jmp       .L399
	.p2align 4,,7
	.p2align 3
.L441:
	movl      -4(%edi,%ebp,4), %eax
	testl     %eax, %eax
	jne       .L398
.L399:
	subl      $1, %ebp
	jne       .L441
.L398:
	movl      24(%esp), %eax
	movl      %edi, %edx
	movl      %ebp, 4(%esp)
	movl      %ecx, 44(%esp)
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      F2x_mulspec
	movl      32(%esp), %edx
	movl      16(%esp), %ecx
	movl      %edx, 4(%esp)
	movl      36(%esp), %edx
	movl      %ecx, (%esp)
	movl      %eax, 12(%esp)
	movl      20(%esp), %eax
	call      F2x_mulspec
	movl      24(%esp), %ecx
	movl      %esi, %edx
	movl      %ecx, 4(%esp)
	movl      16(%esp), %ecx
	movl      %eax, 40(%esp)
	movl      20(%esp), %eax
	movl      %ecx, (%esp)
	call      F2x_addspec
	movl      32(%esp), %edx
	movl      %ebp, 4(%esp)
	movl      %edx, (%esp)
	movl      %edi, %edx
	movl      %eax, %esi
	movl      36(%esp), %eax
	call      F2x_addspec
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_mul@PLT
	movl      12(%esp), %ecx
	movl      40(%esp), %edi
	movl      %ecx, 4(%esp)
	movl      %edi, (%esp)
	movl      %eax, %esi
	call      F2x_add@PLT
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      F2x_add@PLT
	movl      8(%esp), %ecx
	movl      %ecx, (%esp)
	movl      %eax, %edx
	movl      %edi, %eax
	call      F2x_addshift
	movl      44(%esp), %ecx
.L400:
	movl      %ecx, 16(%esp)
	movl      8(%esp), %ecx
	movl      12(%esp), %edx
	movl      %ecx, (%esp)
	call      F2x_addshift
	movl      16(%esp), %ecx
	movl      %ecx, 80(%esp)
	movl      %eax, %edx
.L435:
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       F2x_shiftip
	.p2align 4,,7
	.p2align 3
.L397:
	movl      24(%esp), %eax
	movl      %edi, %edx
	movl      %ebp, 4(%esp)
	movl      %ecx, 32(%esp)
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      F2x_mulspec
	movl      %edi, %edx
	movl      %ebp, 4(%esp)
	movl      %eax, 12(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	movl      20(%esp), %eax
	call      F2x_mulspec
	movl      32(%esp), %ecx
	jmp       .L400
	.p2align 4,,7
	.p2align 3
.L438:
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      %eax, 8(%esp)
	movl      bot@GOT(%ebx), %eax
	movl      %edi, %ecx
	subl      (%eax), %ecx
	leal      -8(%edi), %esi
	cmpl      $7, %ecx
	jbe       .L442
.L387:
	movl      8(%esp), %eax
	movl      %esi, (%eax)
	movl      %esi, %eax
	movl      $738197506, -8(%edi)
	movl      $0, 4(%esi)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L442:
	movl      $14, (%esp)
	call      pari_err@PLT
	jmp       .L387
.L439:
	movl      (%esi), %edx
	movl      (%edi), %ebp
	movl      %edx, %eax
	movzwl    %dx, %esi
	shrl      $16, %eax
	movl      %eax, 16(%esp)
	movl      %ebp, %eax
	movzwl    %bp, %ebp
	shrl      $16, %eax
	testl     %esi, %esi
	movl      %eax, 12(%esp)
	jne       .L443
	xorl      %esi, %esi
	movl      $0, 24(%esp)
.L390:
	movl      16(%esp), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L391
	movl      %ecx, 32(%esp)
	movl      16(%esp), %ecx
	movl      %ebp, %edx
	xorl      %esi, %edx
	movl      %edx, 20(%esp)
	movl      %eax, %edx
	movl      12(%esp), %eax
	movl      %ecx, %edi
	andl      $1, %edi
	cmovne    20(%esp), %esi
	cmovne    %eax, %edx
	leal      (%eax,%eax), %edi
	xorl      %edx, %edi
	movl      %esi, 20(%esp)
	movl      %ecx, %esi
	shrl      $1, %esi
	leal      (%ebp,%ebp), %eax
	xorl      20(%esp), %eax
	andl      $1, %esi
	cmove     %edx, %edi
	movl      20(%esp), %edx
	movl      %ecx, %esi
	movl      %edi, 16(%esp)
	cmovne    %eax, %edx
	movl      12(%esp), %eax
	movl      %edx, %edi
	shrl      $2, %esi
	leal      0(,%eax,4), %edx
	leal      0(,%ebp,4), %eax
	xorl      16(%esp), %edx
	xorl      %edi, %eax
	andl      $1, %esi
	movl      %ecx, %esi
	cmovne    %eax, %edi
	movl      12(%esp), %eax
	cmove     16(%esp), %edx
	shrl      $3, %esi
	movl      %edx, 16(%esp)
	leal      0(,%eax,8), %edx
	leal      0(,%ebp,8), %eax
	xorl      16(%esp), %edx
	xorl      %edi, %eax
	andl      $1, %esi
	movl      %ecx, %esi
	cmove     16(%esp), %edx
	cmovne    %eax, %edi
	movl      %ebp, %eax
	sall      $4, %eax
	movl      %edx, 16(%esp)
	movl      12(%esp), %edx
	shrl      $4, %esi
	xorl      %edi, %eax
	sall      $4, %edx
	xorl      16(%esp), %edx
	andl      $1, %esi
	cmove     %edi, %eax
	movl      12(%esp), %edi
	movl      %ecx, %esi
	cmove     16(%esp), %edx
	shrl      $5, %esi
	movl      %ecx, 16(%esp)
	movl      %esi, %ecx
	sall      $5, %edi
	movl      %edi, %esi
	movl      %ebp, %edi
	sall      $5, %edi
	xorl      %edx, %esi
	xorl      %eax, %edi
	andl      $1, %ecx
	movl      16(%esp), %ecx
	cmove     %eax, %edi
	cmove     %edx, %esi
	movl      12(%esp), %edx
	movl      %ecx, %eax
	shrl      $6, %eax
	movl      %eax, 20(%esp)
	movl      %ebp, %eax
	sall      $6, %eax
	movl      %eax, 16(%esp)
	movl      20(%esp), %eax
	sall      $6, %edx
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    16(%esp), %edi
	cmove     %esi, %edx
	movl      12(%esp), %esi
	shrl      $7, %eax
	movl      %edi, 16(%esp)
	movl      %ebp, %edi
	sall      $7, %edi
	sall      $7, %esi
	movl      %edi, 20(%esp)
	movl      16(%esp), %edi
	xorl      %edx, %esi
	xorl      %edi, 20(%esp)
	andl      $1, %eax
	cmovne    20(%esp), %edi
	cmove     %edx, %esi
	movl      12(%esp), %edx
	movl      %ecx, %eax
	shrl      $8, %eax
	movl      %edi, 20(%esp)
	movl      %ebp, %edi
	sall      $8, %edi
	movl      %edi, 16(%esp)
	sall      $8, %edx
	movl      20(%esp), %edi
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmove     %esi, %edx
	movl      12(%esp), %esi
	cmovne    16(%esp), %edi
	shrl      $9, %eax
	movl      %edi, 16(%esp)
	sall      $9, %esi
	movl      %ebp, %edi
	xorl      %edx, %esi
	sall      $9, %edi
	xorl      16(%esp), %edi
	andl      $1, %eax
	movl      %ecx, %eax
	cmove     %edx, %esi
	movl      12(%esp), %edx
	cmove     16(%esp), %edi
	shrl      $10, %eax
	movl      %eax, 20(%esp)
	movl      %ebp, %eax
	sall      $10, %eax
	movl      %eax, 16(%esp)
	movl      20(%esp), %eax
	sall      $10, %edx
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    16(%esp), %edi
	cmove     %esi, %edx
	movl      12(%esp), %esi
	shrl      $11, %eax
	movl      %edi, 16(%esp)
	movl      %ebp, %edi
	sall      $11, %edi
	movl      %edi, 20(%esp)
	movl      16(%esp), %edi
	sall      $11, %esi
	xorl      %edi, 20(%esp)
	xorl      %edx, %esi
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    20(%esp), %edi
	cmove     %edx, %esi
	movl      12(%esp), %edx
	shrl      $12, %eax
	movl      %edi, 20(%esp)
	movl      %ebp, %edi
	sall      $12, %edi
	movl      %edi, 16(%esp)
	movl      20(%esp), %edi
	sall      $12, %edx
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    16(%esp), %edi
	cmove     %esi, %edx
	shrl      $13, %eax
	movl      %edi, 16(%esp)
	movl      12(%esp), %esi
	movl      %ebp, %edi
	sall      $13, %edi
	xorl      16(%esp), %edi
	sall      $13, %esi
	xorl      %edx, %esi
	andl      $1, %eax
	cmove     %edx, %esi
	movl      12(%esp), %edx
	movl      %ecx, %eax
	cmove     16(%esp), %edi
	shrl      $14, %eax
	sall      $14, %edx
	movl      %edx, 16(%esp)
	movl      %ebp, %edx
	sall      $14, %edx
	xorl      %edi, %edx
	xorl      %esi, 16(%esp)
	andl      $1, %eax
	movl      %ecx, %eax
	cmove     %edi, %edx
	cmovne    16(%esp), %esi
	shrl      $15, %eax
	movl      %eax, %edi
	movl      12(%esp), %eax
	movl      %esi, %ecx
	sall      $15, %eax
	xorl      %esi, %eax
	movl      %ebp, %esi
	sall      $15, %esi
	xorl      %edx, %esi
	testl     %edi, %edi
	cmove     %ecx, %eax
	movl      32(%esp), %ecx
	cmove     %edx, %esi
.L391:
	movl      %esi, %ebp
	movl      bot@GOT(%ebx), %edi
	shrl      $16, %esi
	xorl      %eax, %esi
	sall      $16, %ebp
	xorl      24(%esp), %ebp
	cmpl      $1, %esi
	sbbl      %edx, %edx
	andl      $-4, %edx
	addl      $16, %edx
	cmpl      $1, %esi
	sbbl      %eax, %eax
	movl      %eax, 12(%esp)
	movl      %eax, 16(%esp)
	movl      28(%esp), %eax
	addl      $4, 12(%esp)
	addl      $738197508, 16(%esp)
	subl      %edx, %eax
	movl      %eax, %edx
	movl      28(%esp), %eax
	subl      (%edi), %eax
	shrl      $2, %eax
	cmpl      12(%esp), %eax
	jnb       .L393
	movl      $14, (%esp)
	movl      %edx, 20(%esp)
	movl      %ecx, 12(%esp)
	call      pari_err@PLT
	movl      20(%esp), %edx
	movl      12(%esp), %ecx
.L393:
	movl      8(%esp), %eax
	testl     %esi, %esi
	movl      %ebp, 8(%edx)
	movl      %edx, (%eax)
	movl      16(%esp), %eax
	movl      %eax, (%edx)
	je        .L394
	movl      %esi, 12(%edx)
.L394:
	movl      %ecx, 80(%esp)
	jmp       .L435
.L443:
	movl      %ecx, 32(%esp)
	movl      12(%esp), %ecx
	movl      %edx, %edi
	xorl      %eax, %eax
	andl      $1, %edi
	movl      %eax, %edx
	movl      %esi, %edi
	cmovne    %ebp, %edx
	cmovne    %ecx, %eax
	movl      %eax, 24(%esp)
	leal      (%ebp,%ebp), %eax
	movl      %eax, 12(%esp)
	leal      (%ecx,%ecx), %eax
	movl      %eax, 20(%esp)
	movl      24(%esp), %eax
	shrl      $1, %edi
	xorl      %eax, 20(%esp)
	xorl      %edx, 12(%esp)
	andl      $1, %edi
	cmovne    20(%esp), %eax
	cmovne    12(%esp), %edx
	movl      %eax, %edi
	movl      %esi, %eax
	shrl      $2, %eax
	movl      %eax, 24(%esp)
	leal      0(,%ecx,4), %eax
	movl      %eax, 20(%esp)
	movl      24(%esp), %eax
	xorl      %edi, 20(%esp)
	movl      %edx, 12(%esp)
	leal      0(,%ebp,4), %edx
	xorl      12(%esp), %edx
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     12(%esp), %edx
	cmove     %edi, %eax
	movl      %eax, %edi
	movl      %esi, %eax
	shrl      $3, %eax
	movl      %eax, 24(%esp)
	leal      0(,%ebp,8), %eax
	movl      %eax, 20(%esp)
	leal      0(,%ecx,8), %eax
	movl      %eax, 12(%esp)
	movl      24(%esp), %eax
	xorl      %edi, 12(%esp)
	xorl      %edx, 20(%esp)
	andl      $1, %eax
	movl      12(%esp), %eax
	cmovne    20(%esp), %edx
	cmove     %edi, %eax
	movl      %edx, 20(%esp)
	movl      %ebp, %edx
	movl      %eax, %edi
	sall      $4, %edx
	movl      %esi, %eax
	xorl      20(%esp), %edx
	movl      %ecx, 12(%esp)
	sall      $4, %ecx
	movl      %ecx, 24(%esp)
	shrl      $4, %eax
	movl      12(%esp), %ecx
	xorl      %edi, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     20(%esp), %edx
	cmove     %edi, %eax
	movl      %ebp, %edi
	sall      $5, %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	sall      $5, %edi
	xorl      %ecx, 20(%esp)
	xorl      %edx, %edi
	shrl      $5, %eax
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $6, %edx
	shrl      $6, %eax
	xorl      %edi, %edx
	sall      $6, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	sall      $7, %edi
	shrl      $7, %eax
	xorl      %edx, %edi
	sall      $7, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $8, %edx
	shrl      $8, %eax
	xorl      %edi, %edx
	sall      $8, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      %eax, 24(%esp)
	movl      12(%esp), %ecx
	movl      %esi, %eax
	sall      $9, %edi
	shrl      $9, %eax
	xorl      %edx, %edi
	sall      $9, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $10, %edx
	shrl      $10, %eax
	xorl      %edi, %edx
	sall      $10, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	sall      $11, %edi
	shrl      $11, %eax
	xorl      %edx, %edi
	sall      $11, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $12, %edx
	shrl      $12, %eax
	xorl      %edi, %edx
	sall      $12, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	sall      $13, %edi
	shrl      $13, %eax
	xorl      %edx, %edi
	sall      $13, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      %eax, 20(%esp)
	movl      12(%esp), %ecx
	sall      $14, %edx
	movl      %esi, %eax
	movl      %edx, 24(%esp)
	shrl      $14, %eax
	xorl      %edi, 24(%esp)
	movl      %ecx, %edx
	sall      $14, %edx
	xorl      20(%esp), %edx
	andl      $1, %eax
	cmovne    24(%esp), %edi
	movl      %ebp, %eax
	cmove     20(%esp), %edx
	shrl      $15, %esi
	movl      %edi, 24(%esp)
	movl      %esi, %edi
	movl      %ecx, %esi
	sall      $15, %esi
	movl      32(%esp), %ecx
	sall      $15, %eax
	xorl      %edx, %esi
	xorl      24(%esp), %eax
	testl     %edi, %edi
	cmove     24(%esp), %eax
	cmove     %edx, %esi
	movl      %eax, 24(%esp)
	jmp       .L390
.L409:
	xorl      %ebp, %ebp
	jmp       .L398
.L407:
	movl      $0, 24(%esp)
	movl      8(%esp), %edx
	jmp       .L395
.L444:
	movl      8(%esp), %edx
	movl      %edx, 24(%esp)
	jmp       .L395
.L410:
	movl      8(%esp), %ebp
	jmp       .L398
	.cfi_endproc
	.size	F2x_mulspec, .-F2x_mulspec
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_sqr
	.type	F2x_sqr, @function
F2x_sqr:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      112(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 16(%esp)
	movl      $1, 20(%esp)
	movl      (%eax), %eax
	movl      $4, 24(%esp)
	movl      $5, 28(%esp)
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 8(%esp)
	andl      $16777215, 8(%esp)
	movl      8(%esp), %eax
	movl      $16, 32(%esp)
	movl      $17, 36(%esp)
	movl      $20, 40(%esp)
	leal      -2(%eax,%eax), %eax
	movl      %eax, %ecx
	movl      %eax, 12(%esp)
	movl      (%esi), %eax
	leal      0(,%ecx,4), %edx
	movl      $21, 44(%esp)
	movl      $64, 48(%esp)
	movl      $65, 52(%esp)
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      $68, 56(%esp)
	movl      $69, 60(%esp)
	movl      $80, 64(%esp)
	subl      (%edx), %eax
	movl      $81, 68(%esp)
	movl      $84, 72(%esp)
	shrl      $2, %eax
	cmpl      %eax, %ecx
	movl      $85, 76(%esp)
	jbe       .L446
	movl      $14, (%esp)
	call      pari_err@PLT
.L446:
	testl     $-16777216, 12(%esp)
	movl      %ebp, (%esi)
	je        .L447
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L447:
	movl      12(%esp), %eax
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      112(%esp), %eax
	cmpl      $2, 8(%esp)
	movl      4(%eax), %eax
	movl      %eax, 4(%ebp)
	movl      $2, %eax
	jle       .L451
	.p2align 4,,7
	.p2align 3
.L459:
	movl      112(%esp), %edi
	movl      (%edi,%eax,4), %edi
	movl      $0, -8(%ebp,%eax,8)
	movl      %edi, %ecx
	movzwl    %di, %esi
	shrl      $16, %ecx
	testl     %esi, %esi
	je        .L449
	movl      %esi, %edx
	andl      $15, %edi
	shrl      $12, %edx
	movl      16(%esp,%edx,4), %edx
	sall      $24, %edx
	orl       16(%esp,%edi,4), %edx
	movl      %esi, %edi
	shrl      $4, %edi
	andl      $15, %edi
	shrl      $8, %esi
	movl      16(%esp,%edi,4), %edi
	andl      $15, %esi
	movl      16(%esp,%esi,4), %esi
	sall      $8, %edi
	orl       %edi, %edx
	sall      $16, %esi
	orl       %esi, %edx
	movl      %edx, -8(%ebp,%eax,8)
.L449:
	testl     %ecx, %ecx
	movl      $0, -4(%ebp,%eax,8)
	je        .L450
	movl      %ecx, %edx
	movl      %ecx, %esi
	shrl      $12, %edx
	andl      $15, %esi
	movl      16(%esp,%edx,4), %edx
	sall      $24, %edx
	orl       16(%esp,%esi,4), %edx
	movl      %ecx, %esi
	shrl      $4, %esi
	andl      $15, %esi
	shrl      $8, %ecx
	movl      16(%esp,%esi,4), %esi
	andl      $15, %ecx
	movl      16(%esp,%ecx,4), %ecx
	sall      $8, %esi
	orl       %esi, %edx
	sall      $16, %ecx
	orl       %ecx, %edx
	movl      %edx, -4(%ebp,%eax,8)
.L450:
	addl      $1, %eax
	cmpl      8(%esp), %eax
	jne       .L459
.L451:
	movl      12(%esp), %eax
	movl      %ebp, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2x_sqr, .-F2x_sqr
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_rem
	.type	F2x_rem, @function
F2x_rem:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      80(%esp), %edi
	movl      84(%esp), %eax
	movl      (%edi), %esi
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	testl     %eax, %eax
	movl      %eax, 40(%esp)
	je        .L530
	andl      $16777215, %esi
	cmpl      $2, %esi
	movl      %esi, %ebp
	je        .L497
	movl      -4(%edi,%ebp,4), %eax
	leal      -2(%esi), %esi
	sall      $5, %esi
	testl     $-65536, %eax
	jne       .L531
	movl      $20, %ecx
	movl      $28, %edx
.L471:
	testl     $-256, %eax
	je        .L472
	shrl      $8, %eax
	movl      %ecx, %edx
.L472:
	testl     $-16, %eax
	je        .L473
	subl      $4, %edx
	shrl      $4, %eax
.L473:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %edx
	subl      %edx, %esi
	leal      -1(%esi), %eax
	movl      %eax, 16(%esp)
.L470:
	movl      avma@GOT(%ebx), %ecx
	movl      (%edi), %edx
	movl      (%ecx), %esi
	andl      $16777215, %edx
	leal      0(,%edx,4), %eax
	subl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	movl      %esi, 36(%esp)
	movl      (%ecx), %esi
	subl      (%eax), %esi
	movl      %esi, %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L474
	movl      $14, (%esp)
	movl      %ecx, 24(%esp)
	movl      %edx, 20(%esp)
	call      pari_err@PLT
	movl      24(%esp), %ecx
	movl      20(%esp), %edx
.L474:
	movl      36(%esp), %esi
	subl      $1, %edx
	movl      %esi, (%ecx)
	movl      (%edi), %eax
	movl      %esi, %ecx
	andl      $-16777217, %eax
	testl     %edx, %edx
	movl      %eax, (%esi)
	movl      16(%esp), %esi
	jle       .L478
	.p2align 4,,7
	.p2align 3
.L514:
	movl      (%edi,%edx,4), %eax
	movl      %eax, (%ecx,%edx,4)
	subl      $1, %edx
	jne       .L514
	movl      %esi, 16(%esp)
.L478:
	movl      36(%esp), %eax
	subl      84(%esp), %eax
	movl      %eax, 24(%esp)
	movl      16(%esp), %eax
	cmpl      %eax, 40(%esp)
	movl      %eax, %esi
	jg        .L477
	.p2align 4,,7
	.p2align 3
.L524:
	movl      84(%esp), %eax
	subl      40(%esp), %esi
	movl      (%eax), %eax
	movl      %esi, %edi
	sarl      $5, %edi
	movl      %eax, 32(%esp)
	andl      $16777215, 32(%esp)
	andl      $31, %esi
	movl      %esi, 16(%esp)
	jne       .L480
	movl      32(%esp), %esi
	movl      84(%esp), %eax
	movl      84(%esp), %edx
	addl      $8, %eax
	cmpl      $2, %esi
	leal      (%edx,%esi,4), %ecx
	jle       .L482
	movl      24(%esp), %esi
	movl      %ebp, 16(%esp)
	.p2align 4,,7
	.p2align 3
.L523:
	movl      (%eax), %ebp
	leal      (%esi,%eax), %edx
	addl      $4, %eax
	xorl      %ebp, (%edx,%edi,4)
	cmpl      %ecx, %eax
	jne       .L523
	movl      16(%esp), %ebp
.L482:
	cmpl      $2, %ebp
	jle       .L486
	movl      36(%esp), %eax
	movl      36(%esp), %edx
	movl      -4(%eax,%ebp,4), %eax
	testl     %eax, %eax
	je        .L515
	jmp       .L496
	.p2align 4,,7
	.p2align 3
.L532:
	movl      -4(%edx,%ebp,4), %eax
	testl     %eax, %eax
	jne       .L496
.L515:
	subl      $1, %ebp
	cmpl      $2, %ebp
	jne       .L532
.L500:
	movl      $-1, %esi
.L490:
	cmpl      %esi, 40(%esp)
	jle       .L524
.L477:
	movl      36(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L531:
	shrl      $16, %eax
	movl      $4, %ecx
	movl      $12, %edx
	jmp       .L471
.L486:
	je        .L500
	movl      36(%esp), %eax
	movl      -4(%eax,%ebp,4), %eax
.L496:
	leal      -2(%ebp), %esi
	sall      $5, %esi
	testl     $-65536, %eax
	je        .L501
	shrl      $16, %eax
	movl      $4, %ecx
	movl      $12, %edx
.L492:
	testl     $-256, %eax
	je        .L493
	shrl      $8, %eax
	movl      %ecx, %edx
.L493:
	testl     $-16, %eax
	je        .L494
	subl      $4, %edx
	shrl      $4, %eax
.L494:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %edx
	subl      %edx, %esi
	subl      $1, %esi
	jmp       .L490
	.p2align 4,,7
	.p2align 3
.L480:
	movl      32(%esp), %ecx
	movl      $32, 20(%esp)
	subl      %esi, 20(%esp)
	cmpl      $2, %ecx
	jle       .L482
	movl      84(%esp), %edx
	movl      84(%esp), %eax
	movl      %ebp, 44(%esp)
	leal      (%edx,%ecx,4), %esi
	movl      %esi, 28(%esp)
	addl      $8, %eax
	xorl      %esi, %esi
	.p2align 4,,7
	.p2align 3
.L485:
	movl      24(%esp), %ecx
	movl      (%eax), %ebp
	leal      (%ecx,%eax), %edx
	movzbl    16(%esp), %ecx
	addl      $4, %eax
	sall      %cl, %ebp
	movzbl    20(%esp), %ecx
	orl       %esi, %ebp
	xorl      %ebp, (%edx,%edi,4)
	movl      -4(%eax), %esi
	shrl      %cl, %esi
	cmpl      28(%esp), %eax
	jne       .L485
	testl     %esi, %esi
	movl      44(%esp), %ebp
	je        .L482
	movl      32(%esp), %eax
	addl      %edi, %eax
	movl      36(%esp), %edi
	xorl      %esi, (%edi,%eax,4)
	jmp       .L482
	.p2align 4,,7
	.p2align 3
.L501:
	movl      $20, %ecx
	movl      $28, %edx
	jmp       .L492
.L530:
	movl      avma@GOT(%ebx), %ecx
	movl      4(%edi), %ebp
	movl      bot@GOT(%ebx), %edx
	movl      (%ecx), %edi
	movl      %edi, %eax
	subl      (%edx), %eax
	leal      -8(%edi), %esi
	cmpl      $7, %eax
	ja        .L468
	movl      $14, (%esp)
	movl      %ecx, 16(%esp)
	call      pari_err@PLT
	movl      16(%esp), %ecx
.L468:
	movl      %esi, (%ecx)
	movl      %esi, %eax
	movl      $738197506, -8(%edi)
	movl      %ebp, 4(%esi)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L497:
	movl      $-1, 16(%esp)
	jmp       .L470
	.cfi_endproc
	.size	F2x_rem, .-F2x_rem
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_divrem
	.type	F2x_divrem, @function
F2x_divrem:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %edi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%edi), %eax
	movl      (%edi), %esi
	movl      %eax, 24(%esp)
	movl      100(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	testl     %eax, %eax
	movl      %eax, 44(%esp)
	js        .L649
.L534:
	cmpl      $1, 104(%esp)
	je        .L650
	movl      44(%esp), %ebp
	testl     %ebp, %ebp
	je        .L651
	andl      $16777215, %esi
	cmpl      $2, %esi
	movl      %esi, %ebp
	je        .L591
	movl      -4(%edi,%ebp,4), %eax
	leal      -2(%esi), %esi
	sall      $5, %esi
	testl     $-65536, %eax
	jne       .L652
	movl      $20, %ecx
	movl      $28, %edx
.L546:
	testl     $-256, %eax
	je        .L547
	shrl      $8, %eax
	movl      %ecx, %edx
.L547:
	testl     $-16, %eax
	je        .L548
	subl      $4, %edx
	shrl      $4, %eax
.L548:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %edx
	subl      %edx, %esi
	subl      $1, %esi
.L545:
	cmpl      44(%esp), %esi
	js        .L653
	movl      (%edi), %eax
	movl      %eax, 20(%esp)
	movl      100(%esp), %eax
	andl      $16777215, 20(%esp)
	movl      (%eax), %eax
	andl      $16777215, %eax
	subl      %eax, 20(%esp)
	movl      20(%esp), %eax
	leal      3(%eax), %edx
	movl      avma@GOT(%ebx), %eax
	movl      %edx, 28(%esp)
	movl      %eax, 56(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	leal      0(,%edx,4), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	movl      bot@GOT(%ebx), %eax
	movl      %edx, 48(%esp)
	movl      %eax, %edx
	movl      %eax, 60(%esp)
	movl      %ecx, %eax
	subl      (%edx), %eax
	movl      28(%esp), %edx
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L558
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
.L558:
	movl      56(%esp), %eax
	testl     $-16777216, %edx
	movl      48(%esp), %ecx
	movl      %ecx, (%eax)
	je        .L559
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 28(%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
	movl      48(%esp), %ecx
.L559:
	movl      %edx, %eax
	orl       $738197504, %eax
	cmpl      $-1, 20(%esp)
	movl      %eax, (%ecx)
	jl        .L563
	movl      20(%esp), %eax
	movl      $0, 4(%esp)
	leal      8(,%eax,4), %edx
	movl      48(%esp), %eax
	movl      %edx, 8(%esp)
	addl      $4, %eax
	movl      %eax, (%esp)
	call      memset@PLT
.L563:
	movl      48(%esp), %eax
	movl      24(%esp), %ecx
	movl      %ecx, 4(%eax)
	movl      (%edi), %eax
	movl      %eax, 20(%esp)
	movl      56(%esp), %eax
	andl      $16777215, 20(%esp)
	movl      20(%esp), %edx
	movl      (%eax), %eax
	sall      $2, %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      %ecx, 40(%esp)
	movl      60(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, 20(%esp)
	jbe       .L562
	movl      $14, (%esp)
	call      pari_err@PLT
.L562:
	movl      40(%esp), %ecx
	movl      56(%esp), %edx
	movl      %ecx, (%edx)
	movl      (%edi), %eax
	andl      $-16777217, %eax
	movl      %eax, (%ecx)
	movl      20(%esp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	jle       .L567
	.p2align 4,,7
	.p2align 3
.L624:
	movl      (%edi,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	subl      $1, %eax
	jne       .L624
.L567:
	movl      40(%esp), %eax
	subl      100(%esp), %eax
	cmpl      %esi, 44(%esp)
	movl      %eax, 28(%esp)
	jg        .L566
	.p2align 4,,7
	.p2align 3
.L639:
	subl      44(%esp), %esi
	movl      $1, %eax
	movl      %esi, %edi
	andl      $31, %esi
	movl      %esi, %ecx
	sall      %cl, %eax
	movl      48(%esp), %ecx
	sarl      $5, %edi
	movl      %esi, 20(%esp)
	orl       %eax, 8(%ecx,%edi,4)
	movl      100(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 36(%esp)
	andl      $16777215, 36(%esp)
	testl     %esi, %esi
	jne       .L569
	movl      36(%esp), %ecx
	movl      100(%esp), %eax
	movl      100(%esp), %esi
	addl      $8, %eax
	cmpl      $2, %ecx
	leal      (%esi,%ecx,4), %edx
	jle       .L571
	movl      28(%esp), %esi
	movl      %ebp, 20(%esp)
	.p2align 4,,7
	.p2align 3
.L638:
	movl      (%eax), %ebp
	leal      (%esi,%eax), %ecx
	addl      $4, %eax
	xorl      %ebp, (%ecx,%edi,4)
	cmpl      %edx, %eax
	jne       .L638
	movl      20(%esp), %ebp
.L571:
	cmpl      $2, %ebp
	jle       .L575
	movl      40(%esp), %eax
	movl      40(%esp), %edx
	movl      -4(%eax,%ebp,4), %eax
	testl     %eax, %eax
	je        .L625
	jmp       .L590
	.p2align 4,,7
	.p2align 3
.L654:
	movl      -4(%edx,%ebp,4), %eax
	testl     %eax, %eax
	jne       .L590
.L625:
	subl      $1, %ebp
	cmpl      $2, %ebp
	jne       .L654
.L598:
	movl      $-1, %esi
.L579:
	cmpl      %esi, 44(%esp)
	jle       .L639
.L566:
	movl      48(%esp), %edi
	movl      (%edi), %eax
	movl      %edi, (%esp)
	andl      $16777215, %eax
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
	movl      %eax, %ecx
	movl      104(%esp), %eax
	testl     %eax, %eax
	je        .L655
	movl      40(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %ecx, 20(%esp)
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
	movl      20(%esp), %ecx
	cmpl      $2, 104(%esp)
	je        .L656
	movl      104(%esp), %edi
	movl      %eax, (%edi)
.L611:
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L652:
	shrl      $16, %eax
	movl      $4, %ecx
	movl      $12, %edx
	jmp       .L546
.L575:
	je        .L598
	movl      40(%esp), %eax
	movl      -4(%eax,%ebp,4), %eax
.L590:
	leal      -2(%ebp), %edx
	sall      $5, %edx
	testl     $-65536, %eax
	je        .L599
	shrl      $16, %eax
	movl      $4, %esi
	movl      $12, %ecx
.L581:
	testl     $-256, %eax
	je        .L582
	shrl      $8, %eax
	movl      %esi, %ecx
.L582:
	testl     $-16, %eax
	je        .L583
	subl      $4, %ecx
	shrl      $4, %eax
.L583:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %ecx
	subl      %ecx, %edx
	leal      -1(%edx), %esi
	jmp       .L579
	.p2align 4,,7
	.p2align 3
.L569:
	movl      36(%esp), %ecx
	movl      $32, 24(%esp)
	subl      %esi, 24(%esp)
	cmpl      $2, %ecx
	jle       .L571
	movl      100(%esp), %esi
	movl      100(%esp), %eax
	movl      %ebp, 52(%esp)
	leal      (%esi,%ecx,4), %ecx
	xorl      %esi, %esi
	addl      $8, %eax
	movl      %ecx, 32(%esp)
	.p2align 4,,7
	.p2align 3
.L574:
	movl      (%eax), %ebp
	movzbl    20(%esp), %ecx
	movl      28(%esp), %edx
	sall      %cl, %ebp
	movzbl    24(%esp), %ecx
	addl      %eax, %edx
	orl       %esi, %ebp
	xorl      %ebp, (%edx,%edi,4)
	addl      $4, %eax
	movl      -4(%eax), %esi
	shrl      %cl, %esi
	cmpl      32(%esp), %eax
	jne       .L574
	testl     %esi, %esi
	movl      52(%esp), %ebp
	je        .L571
	movl      40(%esp), %eax
	addl      36(%esp), %edi
	xorl      %esi, (%eax,%edi,4)
	jmp       .L571
	.p2align 4,,7
	.p2align 3
.L599:
	movl      $20, %esi
	movl      $28, %ecx
	jmp       .L581
.L653:
	cmpl      $2, 104(%esp)
	je        .L657
	movl      avma@GOT(%ebx), %eax
	movl      bot@GOT(%ebx), %ecx
	movl      (%eax), %esi
	movl      %eax, 56(%esp)
	movl      %ecx, 60(%esp)
	movl      %esi, %edx
	subl      (%ecx), %edx
	leal      -8(%esi), %eax
	cmpl      $7, %edx
	jbe       .L658
.L553:
	movl      56(%esp), %edx
	movl      24(%esp), %ecx
	movl      %eax, (%edx)
	movl      $738197506, -8(%esi)
	movl      104(%esp), %esi
	movl      %ecx, 4(%eax)
	movl      %eax, %ecx
	testl     %esi, %esi
	je        .L611
	movl      (%edi), %ebp
	movl      (%edx), %edx
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %ecx
	movl      %edx, %esi
	subl      %ecx, %esi
	movl      60(%esp), %ecx
	subl      (%ecx), %edx
	shrl      $2, %edx
	cmpl      %edx, %ebp
	jbe       .L554
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %eax
.L554:
	movl      56(%esp), %ecx
	subl      $1, %ebp
	movl      %esi, (%ecx)
	movl      (%edi), %edx
	andl      $-16777217, %edx
	testl     %ebp, %ebp
	movl      %edx, (%esi)
	jle       .L556
	.p2align 4,,7
	.p2align 3
.L623:
	movl      (%edi,%ebp,4), %edx
	movl      %edx, (%esi,%ebp,4)
	subl      $1, %ebp
	jne       .L623
.L556:
	movl      104(%esp), %edi
	movl      %eax, %ecx
	movl      %ecx, %eax
	movl      %esi, (%edi)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L651:
	movl      avma@GOT(%ebx), %eax
	movl      (%edi), %esi
	movl      %eax, 56(%esp)
	movl      (%eax), %eax
	andl      $16777215, %esi
	leal      0(,%esi,4), %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %eax
	movl      %edx, 60(%esp)
	shrl      $2, %eax
	cmpl      %eax, %esi
	ja        .L659
.L538:
	movl      56(%esp), %eax
	subl      $1, %esi
	movl      %ebp, (%eax)
	movl      (%edi), %eax
	andl      $-16777217, %eax
	testl     %esi, %esi
	movl      %eax, (%ebp)
	jle       .L542
	.p2align 4,,7
	.p2align 3
.L622:
	movl      (%edi,%esi,4), %eax
	movl      %eax, (%ebp,%esi,4)
	subl      $1, %esi
	jne       .L622
.L542:
	cmpl      $2, 104(%esp)
	jne       .L660
.L647:
	movl      %ebp, %ecx
.L661:
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L660:
	movl      104(%esp), %edi
	testl     %edi, %edi
	je        .L647
	movl      56(%esp), %eax
	movl      60(%esp), %edx
	movl      (%eax), %edi
	movl      %edi, %eax
	subl      (%edx), %eax
	leal      -8(%edi), %esi
	cmpl      $7, %eax
	ja        .L544
	movl      $14, (%esp)
	call      pari_err@PLT
.L544:
	movl      56(%esp), %eax
	movl      %ebp, %ecx
	movl      %esi, (%eax)
	movl      24(%esp), %eax
	movl      $738197506, -8(%edi)
	movl      %eax, 4(%esi)
	movl      104(%esp), %eax
	movl      %esi, (%eax)
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L659:
	movl      $14, (%esp)
	call      pari_err@PLT
	jmp       .L538
.L658:
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %eax
	jmp       .L553
.L649:
	movl      $27, (%esp)
	call      pari_err@PLT
	jmp       .L534
.L655:
	movl      40(%esp), %edi
	movl      (%edi), %eax
	andl      $16777215, %eax
	leal      (%edi,%eax,4), %eax
	movl      60(%esp), %edi
	cmpl      (%edi), %eax
	jb        .L611
.L648:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jnb       .L611
	movl      56(%esp), %edi
	movl      %eax, (%edi)
	jmp       .L611
.L657:
	xorl      %ecx, %ecx
	testl     %esi, %esi
	jns       .L611
	movl      avma@GOT(%ebx), %eax
	movl      bot@GOT(%ebx), %edx
	movl      (%edi), %ebp
	movl      (%eax), %ecx
	movl      %eax, 56(%esp)
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %eax
	movl      %ecx, %esi
	subl      (%edx), %ecx
	subl      %eax, %esi
	shrl      $2, %ecx
	cmpl      %ecx, %ebp
	jbe       .L551
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %eax
.L551:
	movl      56(%esp), %edx
	movl      %esi, (%edx)
	movl      (%edi), %edx
	andl      $-16777217, %edx
	cmpl      $1, %ebp
	movl      %edx, (%esi)
	jle       .L594
	leal      -4(%eax,%esi), %ebp
	subl      %esi, %edi
.L552:
	movl      (%edi,%ebp), %eax
	subl      $4, %ebp
	movl      %eax, 4(%ebp)
	cmpl      %esi, %ebp
	jne       .L552
	movl      %ebp, %ecx
	jmp       .L661
.L650:
	movl      100(%esp), %eax
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      F2x_rem@PLT
	movl      %eax, %ecx
	jmp       .L611
.L656:
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	jne       .L588
	movl      60(%esp), %edi
	addl      $8, %eax
	cmpl      (%edi), %eax
	jb        .L611
	jmp       .L648
.L591:
	movl      $-1, %esi
	jmp       .L545
.L588:
	movl      (%ecx), %eax
	movl      56(%esp), %edi
	andl      $16777215, %eax
	leal      (%ecx,%eax,4), %eax
	xorl      %ecx, %ecx
	movl      %eax, (%edi)
	jmp       .L611
.L594:
	movl      %esi, %ecx
	jmp       .L611
	.cfi_endproc
	.size	F2x_divrem, .-F2x_divrem
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_deriv
	.type	F2x_deriv, @function
F2x_deriv:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %ebp
	movl      (%ebp), %esi
	movl      avma@GOT(%ebx), %edx
	andl      $16777215, %esi
	movl      (%edx), %eax
	leal      0(,%esi,4), %ecx
	movl      %eax, %edi
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %esi
	jbe       .L663
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
.L663:
	movl      %esi, %eax
	orl       $738197504, %eax
	cmpl      $2, %esi
	movl      %edi, (%edx)
	movl      $2, %edx
	movl      %eax, (%edi)
	movl      4(%ebp), %eax
	movl      %eax, 4(%edi)
	jle       .L665
	.p2align 4,,7
	.p2align 3
.L667:
	movl      (%ebp,%edx,4), %eax
	shrl      $1, %eax
	andl      $1431655765, %eax
	movl      %eax, (%edi,%edx,4)
	addl      $1, %edx
	cmpl      %esi, %edx
	jne       .L667
.L665:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      Flx_renormalize@PLT
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2x_deriv, .-F2x_deriv
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_gcd
	.type	F2x_gcd, @function
F2x_gcd:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      68(%esp), %ebp
	movl      64(%esp), %ecx
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %edi
	movl      (%esi), %eax
	movl      (%edi), %edi
	movl      %eax, 24(%esp)
	subl      %edi, %eax
	shrl      $2, %eax
	addl      %eax, %edi
	movl      (%ebp), %eax
	movl      %eax, %edx
	andl      $16777215, %edx
	movl      %edx, 28(%esp)
	movl      (%ecx), %edx
	andl      $16777215, %edx
	cmpl      %edx, 28(%esp)
	jle       .L683
	movl      %ebp, 64(%esp)
	movl      %ebp, %edx
	movl      %ecx, 68(%esp)
	movl      (%ecx), %eax
.L671:
	movl      %eax, %ebp
	jmp       .L674
	.p2align 4,,7
	.p2align 3
.L676:
	movl      %edx, (%esp)
	movl      %ecx, 4(%esp)
	call      F2x_rem@PLT
	movl      68(%esp), %edx
	cmpl      (%esi), %edi
	movl      %edx, 64(%esp)
	movl      %eax, 68(%esp)
	ja        .L673
	movl      (%eax), %ebp
	movl      %eax, %ecx
.L674:
	andl      $16777215, %ebp
	cmpl      $2, %ebp
	jne       .L676
	cmpl      (%esi), %edi
	ja        .L689
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L673:
	movl      DEBUGMEM@GOT(%ebx), %ecx
	cmpl      $1, (%ecx)
	jbe       .L675
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	movl      $3, (%esp)
	movl      %eax, 8(%esp)
	leal      .LC2@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	call      pari_warn@PLT
.L675:
	leal      68(%esp), %eax
	movl      %eax, 12(%esp)
	leal      64(%esp), %eax
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      gerepileall.constprop.5
	movl      68(%esp), %ecx
	movl      64(%esp), %edx
	movl      (%ecx), %ebp
	jmp       .L674
	.p2align 4,,7
	.p2align 3
.L683:
	movl      %ecx, %edx
	movl      %ebp, %ecx
	jmp       .L671
	.p2align 4,,7
	.p2align 3
.L689:
	movl      bot@GOT(%ebx), %eax
	cmpl      (%eax), %edx
	jb        .L678
	movl      top@GOT(%ebx), %eax
	cmpl      (%eax), %edx
	jnb       .L678
	cmpl      24(%esp), %edx
	jnb       .L678
	movl      (%edx), %eax
	movl      24(%esp), %edi
	andl      $16777215, %eax
	leal      0(,%eax,4), %ecx
	subl      %ecx, %edi
	testl     %eax, %eax
	movl      %edi, (%esi)
	je        .L684
	leal      -4(%ecx,%edi), %eax
	subl      %edi, %edx
	leal      -4(%edi), %esi
	.p2align 4,,7
	.p2align 3
.L681:
	movl      (%edx,%eax), %ecx
	subl      $4, %eax
	movl      %ecx, 4(%eax)
	cmpl      %esi, %eax
	jne       .L681
.L684:
	addl      $44, %esp
	movl      %edi, %edx
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L678:
	movl      24(%esp), %eax
	movl      %eax, (%esi)
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2x_gcd, .-F2x_gcd
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2x_extgcd
	.type	F2x_extgcd, @function
F2x_extgcd:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $92, %esp
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %ecx
	movl      (%esi), %eax
	movl      (%ecx), %edx
	movl      %eax, %ebp
	movl      %eax, 32(%esp)
	subl      %edx, %eax
	subl      $8, %ebp
	movl      %eax, %edi
	shrl      $2, %edi
	addl      %edx, %edi
	cmpl      $7, %eax
	movl      %edi, 36(%esp)
	movl      112(%esp), %edi
	movl      4(%edi), %edx
	movl      %edi, 64(%esp)
	movl      116(%esp), %edi
	movl      %edi, 68(%esp)
	ja        .L691
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L691:
	movl      32(%esp), %eax
	movl      %ebp, (%esi)
	movl      $738197506, -8(%eax)
	movl      (%esi), %eax
	movl      %edx, 4(%ebp)
	movl      %ebp, 60(%esp)
	movl      %eax, %edi
	subl      (%ecx), %edi
	leal      -12(%eax), %ebp
	cmpl      $11, %edi
	ja        .L692
	movl      $14, (%esp)
	movl      %eax, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %eax
	movl      40(%esp), %edx
.L692:
	movl      %ebp, (%esi)
	movl      36(%esp), %edi
	movl      $738197507, -12(%eax)
	movl      %edx, 4(%ebp)
	movl      68(%esp), %edx
	movl      $1, 8(%ebp)
	movl      %ebp, 72(%esp)
	leal      76(%esp), %ebp
	movl      (%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L698
	.p2align 4,,7
	.p2align 3
.L709:
	movl      64(%esp), %eax
	movl      %edx, 4(%esp)
	movl      %ebp, 8(%esp)
	movl      %eax, (%esp)
	call      F2x_divrem@PLT
	movl      72(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_mul@PLT
	movl      %eax, 4(%esp)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_add@PLT
	movl      72(%esp), %edx
	cmpl      (%esi), %edi
	movl      %edx, 60(%esp)
	movl      76(%esp), %edx
	movl      %eax, 72(%esp)
	movl      68(%esp), %eax
	movl      %edx, 56(%esp)
	movl      %edx, 68(%esp)
	movl      %eax, 64(%esp)
	jbe       .L696
	movl      DEBUGMEM@GOT(%ebx), %ecx
	cmpl      $1, (%ecx)
	jbe       .L697
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	movl      $3, (%esp)
	movl      %eax, 8(%esp)
	leal      .LC3@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	call      pari_warn@PLT
.L697:
	leal      72(%esp), %eax
	movl      %eax, 24(%esp)
	leal      60(%esp), %eax
	movl      %eax, 20(%esp)
	leal      56(%esp), %eax
	movl      %eax, 16(%esp)
	leal      68(%esp), %eax
	movl      %eax, 12(%esp)
	leal      64(%esp), %eax
	movl      %eax, 8(%esp)
	movl      32(%esp), %eax
	movl      $5, 4(%esp)
	movl      %eax, (%esp)
	call      gerepileall.constprop.4
	movl      68(%esp), %edx
.L696:
	movl      (%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jne       .L709
	movl      %edi, 36(%esp)
.L698:
	movl      120(%esp), %eax
	testl     %eax, %eax
	je        .L715
	movl      60(%esp), %eax
	movl      %eax, 4(%esp)
	movl      116(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_mul@PLT
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_add@PLT
	movl      112(%esp), %ecx
	movl      $0, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_divrem@PLT
	movl      120(%esp), %ecx
	movl      %eax, (%ecx)
	movl      60(%esp), %eax
	movl      124(%esp), %ecx
	movl      %eax, (%ecx)
	movl      36(%esp), %ecx
	movl      $3, %eax
	cmpl      (%esi), %ecx
	jbe       .L701
.L700:
	movl      120(%esp), %esi
	leal      64(%esp), %edx
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %esi, 16(%esp)
	movl      124(%esp), %esi
	movl      %eax, (%esp)
	movl      %esi, 12(%esp)
	call      gerepileall
.L701:
	movl      64(%esp), %eax
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L715:
	movl      60(%esp), %eax
	movl      124(%esp), %ecx
	movl      %eax, (%ecx)
	movl      36(%esp), %ecx
	movl      $2, %eax
	cmpl      (%esi), %ecx
	ja        .L700
	jmp       .L701
	.cfi_endproc
	.size	F2x_extgcd, .-F2x_extgcd
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_mul
	.type	F2xq_mul, @function
F2xq_mul:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_mul@PLT
	movl      40(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_rem@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	F2xq_mul, .-F2xq_mul
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	_F2xq_mul
	.type	_F2xq_mul, @function
_F2xq_mul:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	_F2xq_mul, .-_F2xq_mul
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_sqr
	.type	F2xq_sqr, @function
F2xq_sqr:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_sqr@PLT
	movl      36(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_rem@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	F2xq_sqr, .-F2xq_sqr
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	_F2xq_sqr
	.type	_F2xq_sqr, @function
_F2xq_sqr:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	_F2xq_sqr, .-_F2xq_sqr
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_invsafe
	.type	F2xq_invsafe, @function
F2xq_invsafe:
	.cfi_startproc
	pushl     %ebx
	subl      $40, %esp
	leal      28(%esp), %eax
	movl      %eax, 12(%esp)
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 8(%esp)
	movl      %eax, 4(%esp)
	movl      52(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_extgcd@PLT
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	xorl      %edx, %edx
	testl     %eax, %eax
	cmove     28(%esp), %edx
	addl      $40, %esp
	popl      %ebx
	movl      %edx, %eax
	ret       
	.cfi_endproc
	.size	F2xq_invsafe, .-F2xq_invsafe
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_inv
	.type	F2xq_inv, @function
F2xq_inv:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $16, %esp
	movl      36(%esp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      (%esi), %edi
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_invsafe@PLT
	testl     %eax, %eax
	je        .L740
.L729:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L730
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L731
.L730:
	movl      %edi, (%esi)
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L731:
	cmpl      %edi, %eax
	jnb       .L730
	movl      (%eax), %edx
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	testl     %edx, %edx
	movl      %edi, (%esi)
	je        .L736
	leal      -4(%ecx,%edi), %edx
	subl      %edi, %eax
	leal      -4(%edi), %esi
	.p2align 4,,7
	.p2align 3
.L733:
	movl      (%eax,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %esi, %edx
	jne       .L733
.L736:
	addl      $16, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L740:
	movl      $27, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %eax
	jmp       .L729
	.cfi_endproc
	.size	F2xq_inv, .-F2xq_inv
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_div
	.type	F2xq_div, @function
F2xq_div:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      56(%esp), %esi
	movl      52(%esp), %eax
	movl      avma@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      F2xq_inv@PLT
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L742
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L743
.L742:
	movl      %ebp, (%edi)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L743:
	cmpl      %ebp, %eax
	jnb       .L742
	movl      (%eax), %edx
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %ebp
	testl     %edx, %edx
	movl      %ebp, (%edi)
	je        .L748
	subl      %ebp, %eax
	leal      -4(%ecx,%ebp), %edx
	movl      %eax, %esi
	leal      -4(%ebp), %edi
	.p2align 4,,7
	.p2align 3
.L745:
	movl      (%esi,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %edi, %edx
	jne       .L745
.L748:
	addl      $28, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2xq_div, .-F2xq_div
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_pow
	.type	F2xq_pow, @function
F2xq_pow:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %esi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%esi), %edx
	movl      avma@GOT(%ebx), %edi
	movl      %edx, %eax
	sarl      $30, %eax
	testl     %eax, %eax
	movl      (%edi), %ebp
	je        .L794
	andl      $16777215, %edx
	cmpl      $3, %edx
	je        .L795
.L756:
	testl     %eax, %eax
	js        .L796
.L776:
	leal      _F2xq_mul@GOTOFF(%ebx), %eax
	movl      %eax, 16(%esp)
	leal      _F2xq_sqr@GOTOFF(%ebx), %eax
	movl      %eax, 12(%esp)
	movl      72(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, 8(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      gen_pow@PLT
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L760
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jnb       .L760
	cmpl      %ebp, %eax
	jnb       .L760
	movl      (%eax), %ecx
	movl      %ecx, %edx
	shrl      $25, %edx
	cmpl      $2, %edx
	je        .L764
	jg        .L765
	cmpl      $1, %edx
	jne       .L763
	movl      4(%eax), %esi
	andl      $16777215, %esi
	leal      0(,%esi,4), %edx
	subl      %edx, %ebp
	leal      -1(%esi), %edx
	testl     %edx, %edx
	jle       .L768
	.p2align 4,,7
	.p2align 3
.L784:
	movl      (%eax,%edx,4), %ecx
	movl      %ecx, (%ebp,%edx,4)
	subl      $1, %edx
	jne       .L784
.L768:
	orl       $33554432, %esi
	movl      %ebp, %eax
	movl      %esi, (%ebp)
	movl      %ebp, (%edi)
	jmp       .L788
	.p2align 4,,7
	.p2align 3
.L760:
	movl      %ebp, (%edi)
.L788:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L795:
	cmpl      $1, 8(%esi)
	jne       .L756
	testl     %eax, %eax
	js        .L797
	movl      64(%esp), %eax
	movl      %ebp, %esi
	movl      bot@GOT(%ebx), %ecx
	movl      (%eax), %eax
	subl      (%ecx), %ebp
	andl      $16777215, %eax
	leal      0(,%eax,4), %edx
	shrl      $2, %ebp
	subl      %edx, %esi
	cmpl      %ebp, %eax
	jbe       .L758
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
	movl      24(%esp), %eax
.L758:
	movl      %esi, (%edi)
	movl      64(%esp), %edi
	movl      (%edi), %ecx
	andl      $-16777217, %ecx
	cmpl      $1, %eax
	movl      %ecx, (%esi)
	jle       .L778
	movl      %edi, %ecx
	leal      -4(%edx,%esi), %eax
	subl      %esi, %ecx
	.p2align 4,,7
	.p2align 3
.L759:
	movl      (%ecx,%eax), %edx
	subl      $4, %eax
	movl      %edx, 4(%eax)
	cmpl      %esi, %eax
	jne       .L759
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L794:
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, %ecx
	movl      64(%esp), %eax
	leal      -12(%ebp), %esi
	subl      (%edx), %ecx
	movl      4(%eax), %eax
	cmpl      $11, %ecx
	jbe       .L798
.L754:
	movl      %esi, (%edi)
	movl      $738197507, -12(%ebp)
	movl      %eax, 4(%esi)
	movl      %esi, %eax
	movl      $1, 8(%esi)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L798:
	movl      $14, (%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
	movl      24(%esp), %eax
	jmp       .L754
.L797:
	movl      72(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_inv@PLT
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L796:
	movl      72(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_inv@PLT
	movl      %eax, 64(%esp)
	jmp       .L776
	.p2align 4,,7
	.p2align 3
.L763:
	andl      $16777215, %ecx
	movl      %eax, 8(%esp)
	leal      (%eax,%ecx,4), %eax
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      gerepile@PLT
	jmp       .L788
	.p2align 4,,7
	.p2align 3
.L765:
	subl      $21, %edx
	cmpl      $1, %edx
	ja        .L763
.L764:
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	subl      %edx, %ebp
	subl      %ebp, %eax
	testl     %ecx, %ecx
	movl      %ebp, (%edi)
	leal      -4(%edx,%ebp), %edx
	leal      -4(%ebp), %esi
	je        .L771
	.p2align 4,,7
	.p2align 3
.L787:
	movl      (%eax,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %esi, %edx
	jne       .L787
.L771:
	movl      %ebp, %eax
	jmp       .L788
.L778:
	movl      %esi, %eax
	jmp       .L788
	.cfi_endproc
	.size	F2xq_pow, .-F2xq_pow
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	_F2xq_pow
	.type	_F2xq_pow, @function
_F2xq_pow:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_pow@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	_F2xq_pow, .-_F2xq_pow
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_powers
	.type	F2xq_powers, @function
F2xq_powers:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      68(%esp), %eax
	leal      2(%eax), %ebp
	movl      avma@GOT(%ebx), %ecx
	leal      0(,%ebp,4), %edx
	movl      (%ecx), %eax
	movl      %eax, %esi
	subl      %edx, %esi
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ebp
	jbe       .L802
	movl      $14, (%esp)
	movl      %ecx, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %ecx
.L802:
	testl     $-16777216, %ebp
	movl      %esi, (%ecx)
	je        .L803
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ecx, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %ecx
.L803:
	movl      72(%esp), %eax
	orl       $570425344, %ebp
	movl      %ebp, (%esi)
	movl      bot@GOT(%ebx), %edi
	movl      4(%eax), %eax
	movl      %eax, 20(%esp)
	movl      (%ecx), %eax
	movl      %eax, %edx
	subl      (%edi), %edx
	leal      -12(%eax), %ebp
	cmpl      $11, %edx
	ja        .L804
	movl      $14, (%esp)
	movl      %ecx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
	movl      28(%esp), %ecx
	movl      24(%esp), %eax
.L804:
	movl      %ebp, (%ecx)
	movl      $738197507, -12(%eax)
	movl      20(%esp), %eax
	movl      $1, 8(%ebp)
	movl      %eax, 4(%ebp)
	movl      68(%esp), %eax
	movl      %ebp, 4(%esi)
	testl     %eax, %eax
	jne       .L834
.L821:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L834:
	movl      64(%esp), %eax
	movl      (%ecx), %edx
	movl      (%eax), %eax
	movl      %edx, %edi
	andl      $16777215, %eax
	leal      0(,%eax,4), %ebp
	subl      %ebp, %edi
	movl      %edi, %ebp
	movl      bot@GOT(%ebx), %edi
	subl      (%edi), %edx
	shrl      $2, %edx
	cmpl      %edx, %eax
	jbe       .L806
	movl      $14, (%esp)
	movl      %ecx, 24(%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
	movl      24(%esp), %ecx
	movl      20(%esp), %eax
.L806:
	movl      %ebp, (%ecx)
	movl      64(%esp), %ecx
	subl      $1, %eax
	movl      (%ecx), %edx
	movl      %ecx, %edi
	andl      $-16777217, %edx
	testl     %eax, %eax
	movl      %edx, (%ebp)
	jle       .L810
	.p2align 4,,7
	.p2align 3
.L825:
	movl      (%edi,%eax,4), %edx
	movl      %edx, (%ebp,%eax,4)
	subl      $1, %eax
	jne       .L825
	movl      %edi, 64(%esp)
.L810:
	cmpl      $1, 68(%esp)
	movl      %ebp, 8(%esi)
	je        .L821
	movl      72(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
	movl      %eax, 12(%esi)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	movl      %eax, %ebp
	movl      72(%esp), %eax
	addl      %ebp, %ebp
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	cmpl      %eax, %ebp
	movl      68(%esp), %eax
	jl        .L812
	addl      $1, %eax
	movl      $5, %ebp
	cmpl      $3, %eax
	movl      %eax, 20(%esp)
	jg        .L826
	jmp       .L821
	.p2align 4,,7
	.p2align 3
.L835:
	movl      72(%esp), %eax
	movl      %ebp, %edi
	movl      %eax, 4(%esp)
	movl      %ebp, %eax
	sarl      $1, %eax
	movl      (%esi,%eax,4), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
.L816:
	movl      %eax, -4(%esi,%ebp,4)
	addl      $1, %ebp
	cmpl      %edi, 20(%esp)
	jl        .L821
.L826:
	testl     $1, %ebp
	je        .L835
	movl      72(%esp), %eax
	movl      %ebp, %edi
	movl      %eax, 8(%esp)
	movl      64(%esp), %eax
	movl      %eax, 4(%esp)
	movl      -8(%esi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
	jmp       .L816
	.p2align 4,,7
	.p2align 3
.L812:
	addl      $1, %eax
	cmpl      $3, %eax
	movl      %eax, 20(%esp)
	jle       .L821
	movl      64(%esp), %eax
	movl      $4, %ebp
	movl      %ebp, %edi
	movl      %eax, %ebp
	.p2align 4,,7
	.p2align 3
.L814:
	movl      72(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, 8(%esp)
	movl      -4(%esi,%edi,4), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
	movl      %eax, (%esi,%edi,4)
	addl      $1, %edi
	cmpl      %edi, 20(%esp)
	jge       .L814
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2xq_powers, .-F2xq_powers
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_trace
	.type	F2xq_trace, @function
F2xq_trace:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_deriv@PLT
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_mul@PLT
	movl      (%eax), %esi
	movl      %eax, %ebp
	andl      $16777215, %esi
	leal      1(%esi), %eax
	movl      %eax, %ecx
	movl      %eax, 20(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %ecx, %edi
	sall      $2, %edi
	movl      (%eax), %eax
	movl      %eax, %edx
	subl      %edi, %edx
	movl      %edx, 16(%esp)
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ecx
	jbe       .L837
	movl      $14, (%esp)
	call      pari_err@PLT
.L837:
	movl      avma@GOT(%ebx), %eax
	movl      16(%esp), %ecx
	testl     $16777216, 20(%esp)
	movl      %ecx, (%eax)
	je        .L838
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L838:
	movl      20(%esp), %eax
	movl      16(%esp), %edx
	orl       $738197504, %eax
	cmpl      $2, %esi
	movl      %eax, (%edx)
	movl      $0, 8(%edx)
	jle       .L843
	leal      -4(%edi), %eax
	xorl      %ecx, %ecx
	movl      %eax, 28(%esp)
	leal      8(%ebp), %edx
	addl      %ebp, %eax
	.p2align 4,,7
	.p2align 3
.L841:
	movl      (%edx), %esi
	movl      %edx, %edi
	addl      $4, %edx
	subl      %ebp, %edi
	addl      %esi, %esi
	orl       %ecx, %esi
	movl      16(%esp), %ecx
	movl      %esi, (%edi,%ecx)
	movl      -4(%edx), %ecx
	shrl      $31, %ecx
	cmpl      %eax, %edx
	jne       .L841
	movl      28(%esp), %eax
.L839:
	movl      16(%esp), %esi
	movl      %ecx, (%esi,%eax)
	movl      20(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
	movl      68(%esp), %edi
	movl      $0, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_divrem@PLT
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L844
	movl      8(%eax), %eax
	andl      $1, %eax
.L842:
	movl      avma@GOT(%ebx), %esi
	movl      24(%esp), %edi
	movl      %edi, (%esi)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L844:
	xorl      %eax, %eax
	jmp       .L842
	.p2align 4,,7
	.p2align 3
.L843:
	xorl      %ecx, %ecx
	movl      $8, %eax
	jmp       .L839
	.cfi_endproc
	.size	F2xq_trace, .-F2xq_trace
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_conjvec
	.type	F2xq_conjvec, @function
F2xq_conjvec:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      68(%esp), %eax
	movl      64(%esp), %edx
	movl      %eax, (%esp)
	movl      %edx, 20(%esp)
	call      F2x_degree@PLT
	movl      bot@GOT(%ebx), %edx
	movl      %eax, %edi
	movl      avma@GOT(%ebx), %eax
	leal      0(,%edi,4), %ecx
	movl      (%eax), %eax
	movl      %eax, %esi
	subl      (%edx), %eax
	subl      %ecx, %esi
	movl      20(%esp), %edx
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L850
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      20(%esp), %edx
.L850:
	movl      avma@GOT(%ebx), %eax
	testl     $-16777216, %edi
	movl      %esi, (%eax)
	je        .L851
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %edx
.L851:
	movl      %edi, %eax
	orl       $603979776, %eax
	movl      %eax, (%esi)
	movl      (%edx), %eax
	movl      %eax, 20(%esp)
	movl      avma@GOT(%ebx), %eax
	andl      $16777215, 20(%esp)
	movl      (%eax), %ecx
	movl      20(%esp), %eax
	movl      %ecx, %ebp
	sall      $2, %eax
	subl      %eax, %ebp
	movl      %ebp, %eax
	movl      bot@GOT(%ebx), %ebp
	subl      (%ebp), %ecx
	shrl      $2, %ecx
	cmpl      %ecx, 20(%esp)
	jbe       .L852
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
	movl      28(%esp), %edx
	movl      24(%esp), %eax
.L852:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, (%ecx)
	movl      (%edx), %ecx
	andl      $-16777217, %ecx
	movl      %ecx, (%eax)
	movl      20(%esp), %ecx
	subl      $1, %ecx
	testl     %ecx, %ecx
	jle       .L856
	.p2align 4,,7
	.p2align 3
.L864:
	movl      (%edx,%ecx,4), %ebp
	movl      %ebp, (%eax,%ecx,4)
	subl      $1, %ecx
	jne       .L864
.L856:
	cmpl      $2, %edi
	movl      $2, %ebp
	movl      %eax, 4(%esi)
	jle       .L861
	movl      %edi, 20(%esp)
	movl      %esi, %edi
	movl      68(%esp), %esi
	.p2align 4,,7
	.p2align 3
.L865:
	movl      %esi, 4(%esp)
	movl      -4(%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
	movl      %eax, (%edi,%ebp,4)
	addl      $1, %ebp
	cmpl      20(%esp), %ebp
	jne       .L865
	movl      %edi, %esi
.L861:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2xq_conjvec, .-F2xq_conjvec
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	random_F2x
	.type	random_F2x, @function
random_F2x:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	leal      96(%eax), %esi
	movl      avma@GOT(%ebx), %ebp
	shrl      $5, %esi
	movl      bot@GOT(%ebx), %ecx
	leal      0(,%esi,4), %edx
	movl      %edx, 12(%esp)
	movl      (%ebp), %eax
	movl      %eax, %edi
	subl      (%ecx), %eax
	subl      %edx, %edi
	shrl      $2, %eax
	cmpl      %eax, %esi
	jbe       .L872
	movl      $14, (%esp)
	call      pari_err@PLT
.L872:
	testl     $117440512, %esi
	movl      %edi, (%ebp)
	je        .L873
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L873:
	movl      %esi, %eax
	movl      $2, %ebp
	orl       $738197504, %eax
	cmpl      $2, %esi
	movl      %eax, (%edi)
	movl      52(%esp), %eax
	movl      %eax, 4(%edi)
	jle       .L875
	.p2align 4,,7
	.p2align 3
.L879:
	call      pari_rand@PLT
	movl      %eax, (%edi,%ebp,4)
	addl      $1, %ebp
	cmpl      %esi, %ebp
	jne       .L879
.L875:
	movl      48(%esp), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      12(%esp), %ecx
	subl      $1, %eax
	andl      %eax, -4(%ecx,%edi)
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      Flx_renormalize@PLT
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	random_F2x, .-random_F2x
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	_F2xq_rand
	.type	_F2xq_rand, @function
_F2xq_rand:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %ebp
	movl      %esi, (%esp)
	call      F2x_degree@PLT
	movl      %eax, %edi
	.p2align 4,,7
	.p2align 3
.L886:
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, (%eax)
	movl      4(%esi), %eax
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      random_F2x@PLT
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L886
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	_F2xq_rand, .-_F2xq_rand
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_order
	.type	F2xq_order, @function
F2xq_order:
	.cfi_startproc
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $24, %esp
	leal      F2xq_star@GOTOFF(%ebx), %eax
	movl      %eax, 12(%esp)
	movl      40(%esp), %eax
	movl      %eax, 8(%esp)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      gen_eltorder@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	F2xq_order, .-F2xq_order
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_log
	.type	F2xq_log, @function
F2xq_log:
	.cfi_startproc
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $40, %esp
	movl      $0, 20(%esp)
	leal      F2xq_star@GOTOFF(%ebx), %eax
	movl      %eax, 16(%esp)
	movl      60(%esp), %eax
	movl      %eax, 12(%esp)
	movl      56(%esp), %eax
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      gen_PH_log@PLT
	addl      $40, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	F2xq_log, .-F2xq_log
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_sqrt
	.type	F2xq_sqrt, @function
F2xq_sqrt:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      avma@GOT(%ebx), %edi
	movl      bot@GOT(%ebx), %ecx
	movl      (%edi), %eax
	movl      (%ecx), %edx
	movl      %eax, 24(%esp)
	subl      %edx, %eax
	shrl      $2, %eax
	addl      %edx, %eax
	movl      %eax, 16(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	cmpl      $1, %eax
	movl      %eax, 20(%esp)
	jle       .L893
	movl      $1, %ebp
	movl      %esi, %eax
	.p2align 4,,7
	.p2align 3
.L900:
	movl      68(%esp), %ecx
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      F2xq_sqr@PLT
	movl      16(%esp), %ecx
	cmpl      (%edi), %ecx
	jbe       .L894
	movl      DEBUGMEM@GOT(%ebx), %esi
	cmpl      $1, (%esi)
	jbe       .L895
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      %ebp, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $3, (%esp)
	movl      %eax, 28(%esp)
	call      pari_warn@PLT
	movl      28(%esp), %eax
.L895:
	movl      bot@GOT(%ebx), %esi
	cmpl      (%esi), %eax
	jb        .L896
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jnb       .L896
	cmpl      24(%esp), %eax
	jnb       .L896
	movl      (%eax), %edx
	movl      24(%esp), %esi
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %esi
	testl     %edx, %edx
	movl      %esi, (%edi)
	je        .L916
	leal      -4(%ecx,%esi), %edx
	subl      %esi, %eax
	leal      -4(%esi), %ecx
	movl      %esi, 28(%esp)
	.p2align 4,,7
	.p2align 3
.L899:
	movl      (%eax,%edx), %esi
	subl      $4, %edx
	movl      %esi, 4(%edx)
	cmpl      %ecx, %edx
	jne       .L899
	movl      28(%esp), %esi
.L916:
	movl      %esi, %eax
	.p2align 4,,7
	.p2align 3
.L894:
	addl      $1, %ebp
	cmpl      20(%esp), %ebp
	jne       .L900
	movl      %eax, %esi
.L893:
	movl      bot@GOT(%ebx), %eax
	cmpl      (%eax), %esi
	jb        .L901
	movl      top@GOT(%ebx), %eax
	cmpl      (%eax), %esi
	jb        .L902
.L901:
	movl      24(%esp), %eax
	movl      %eax, (%edi)
	movl      %esi, %eax
.L911:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L896:
	movl      24(%esp), %ecx
	movl      %ecx, (%edi)
	jmp       .L894
	.p2align 4,,7
	.p2align 3
.L902:
	cmpl      24(%esp), %esi
	jnb       .L901
	movl      (%esi), %edx
	movl      24(%esp), %eax
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %eax
	testl     %edx, %edx
	movl      %eax, (%edi)
	je        .L911
	leal      -4(%ecx,%eax), %edx
	subl      %eax, %esi
	leal      -4(%eax), %edi
	.p2align 4,,7
	.p2align 3
.L904:
	movl      (%esi,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %edi, %edx
	jne       .L904
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2xq_sqrt, .-F2xq_sqrt
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_sqrtn
	.type	F2xq_sqrtn, @function
F2xq_sqrtn:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %edi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      88(%esp), %esi
	movl      (%edi), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L927
	movl      %esi, (%esp)
	call      F2x_degree@PLT
	movl      $2, (%esp)
	movl      %eax, 4(%esp)
	call      powuu@PLT
	movl      4(%eax), %edx
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %edx
	movl      %edx, 8(%esp)
	call      addsi_sign@PLT
	movl      92(%esp), %ecx
	leal      F2xq_star@GOTOFF(%ebx), %edx
	movl      %esi, 16(%esp)
	movl      %edi, (%esp)
	movl      %edx, 20(%esp)
	movl      %ecx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      84(%esp), %eax
	movl      %eax, 4(%esp)
	call      gen_Shanks_sqrtn@PLT
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L927:
	movl      92(%esp), %eax
	testl     %eax, %eax
	je        .L928
	movl      4(%esi), %eax
	movl      avma@GOT(%ebx), %edi
	movl      bot@GOT(%ebx), %edx
	movl      %eax, 36(%esp)
	movl      (%edi), %eax
	movl      %eax, %ecx
	subl      (%edx), %ecx
	leal      -12(%eax), %ebp
	cmpl      $11, %ecx
	ja        .L920
	movl      $14, (%esp)
	movl      %edx, 44(%esp)
	movl      %eax, 40(%esp)
	call      pari_err@PLT
	movl      44(%esp), %edx
	movl      40(%esp), %eax
.L920:
	movl      %ebp, (%edi)
	movl      $738197507, -12(%eax)
	movl      36(%esp), %eax
	movl      $1, 8(%ebp)
	movl      %eax, 4(%ebp)
	movl      92(%esp), %eax
	movl      %ebp, (%eax)
.L919:
	movl      (%edi), %ebp
	movl      4(%esi), %eax
	movl      %ebp, %ecx
	subl      (%edx), %ecx
	leal      -8(%ebp), %esi
	cmpl      $7, %ecx
	ja        .L921
	movl      $14, (%esp)
	movl      %eax, 36(%esp)
	call      pari_err@PLT
	movl      36(%esp), %eax
.L921:
	movl      %esi, (%edi)
	movl      $738197506, -8(%ebp)
	movl      %eax, 4(%esi)
	addl      $60, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L928:
	movl      avma@GOT(%ebx), %edi
	movl      bot@GOT(%ebx), %edx
	jmp       .L919
	.cfi_endproc
	.size	F2xq_sqrtn, .-F2xq_sqrtn
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	gener_F2xq
	.type	gener_F2xq, @function
gener_F2xq:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%eax), %eax
	movl      %eax, 28(%esp)
	movl      96(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %ecx
	cmpl      $1, %eax
	movl      %eax, 24(%esp)
	movl      %ecx, 40(%esp)
	je        .L986
	movl      %eax, 4(%esp)
	movl      %eax, %esi
	movl      $2, (%esp)
	call      powuu@PLT
	movl      4(%eax), %edx
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %edx
	movl      %edx, 8(%esp)
	call      addsi_sign@PLT
	movl      %esi, 4(%esp)
	movl      %eax, 32(%esp)
	movl      gen_2@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      factor_pn_1@PLT
	movl      4(%eax), %edi
	movl      %eax, 44(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      (%edi), %ebp
	movl      (%eax), %edx
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %eax
	movl      %edx, %esi
	subl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	subl      (%eax), %edx
	movl      %eax, 36(%esp)
	shrl      $2, %edx
	cmpl      %edx, %ebp
	ja        .L987
.L935:
	movl      avma@GOT(%ebx), %eax
	movl      %esi, (%eax)
	movl      (%edi), %eax
	andl      $-16777217, %eax
	movl      %eax, (%esi)
	leal      -1(%ebp), %eax
	testl     %eax, %eax
	jle       .L939
	.p2align 4,,7
	.p2align 3
.L975:
	movl      (%edi,%eax,4), %edx
	movl      %edx, (%esi,%eax,4)
	subl      $1, %eax
	jne       .L975
.L939:
	movl      (%esi), %ecx
	movl      $1, %edi
	movl      $1, %ebp
	movl      %ecx, %eax
	movl      %ecx, %edx
	andl      $16777215, %eax
	cmpl      $1, %eax
	jle       .L988
	movl      %edi, %ecx
	movl      %esi, %edi
	jmp       .L976
	.p2align 4,,7
	.p2align 3
.L941:
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	leal      1(%ecx), %esi
	movl      %esi, 20(%esp)
	leal      (%edi,%ecx,4), %esi
	addl      $1, %ebp
	movl      %eax, (%esp)
	call      diviiexact@PLT
	movl      20(%esp), %ecx
	movl      %eax, (%esi)
	movl      (%edi), %edx
	movl      %edx, %eax
	andl      $16777215, %eax
	cmpl      %ebp, %eax
	jle       .L989
.L976:
	movl      (%edi,%ebp,4), %eax
	movl      4(%eax), %esi
	andl      $16777215, %esi
	cmpl      $3, %esi
	jne       .L941
	cmpl      $2, 8(%eax)
	jne       .L941
	movl      %edx, %eax
	addl      $1, %ebp
	andl      $16777215, %eax
	cmpl      %ebp, %eax
	jg        .L976
.L989:
	movl      %edi, %esi
	movl      %ecx, %edi
	movl      %edx, %ecx
	movl      %edi, %ebp
	andl      $-16777216, %ecx
	testl     $-16777216, %edi
	jne       .L990
.L944:
	movl      avma@GOT(%ebx), %eax
	orl       %ebp, %ecx
	movl      %ecx, (%esi)
	movl      96(%esp), %ebp
	movl      %edi, 20(%esp)
	movl      (%eax), %eax
	movl      %eax, 32(%esp)
	.p2align 4,,7
	.p2align 3
.L951:
	movl      28(%esp), %eax
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      random_F2x@PLT
	movl      %eax, (%esp)
	movl      %eax, 60(%esp)
	call      F2x_degree@PLT
	testl     %eax, %eax
	jle       .L946
	cmpl      $1, 20(%esp)
	je        .L949
	movl      $1, %edi
	jmp       .L962
	.p2align 4,,7
	.p2align 3
.L948:
	addl      $1, %edi
	cmpl      20(%esp), %edi
	je        .L949
.L962:
	movl      %ebp, 8(%esp)
	movl      (%esi,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_pow@PLT
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	jne       .L948
	cmpl      $1, 8(%eax)
	jne       .L948
	cmpl      %edi, 20(%esp)
	je        .L949
.L946:
	movl      avma@GOT(%ebx), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	jmp       .L951
.L987:
	movl      $14, (%esp)
	call      pari_err@PLT
	jmp       .L935
.L986:
	movl      100(%esp), %esi
	testl     %esi, %esi
	je        .L963
	.p2align 4,,5
	call      trivfact@PLT
	movl      %eax, %edx
	movl      gen_1@GOT(%ebx), %eax
	movl      (%eax), %ebp
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      bot@GOT(%ebx), %eax
	leal      -12(%edi), %esi
	movl      %eax, %ecx
	movl      %eax, 36(%esp)
	movl      %edi, %eax
	subl      (%ecx), %eax
	cmpl      $11, %eax
	ja        .L932
	movl      $14, (%esp)
	movl      %edx, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %edx
.L932:
	movl      avma@GOT(%ebx), %eax
	movl      36(%esp), %ecx
	movl      %esi, (%eax)
	movl      100(%esp), %eax
	movl      $570425347, -12(%edi)
	movl      %ebp, 4(%esi)
	movl      %edx, 8(%esi)
	movl      %esi, (%eax)
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %eax
.L931:
	leal      -12(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $11, %eax
	ja        .L933
	movl      $14, (%esp)
	call      pari_err@PLT
.L933:
	movl      avma@GOT(%ebx), %eax
	movl      $1, 8(%esi)
	movl      %esi, (%eax)
	movl      28(%esp), %eax
	movl      $738197507, (%esi)
	movl      %eax, 4(%esi)
.L974:
	addl      $76, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L949:
	movl      100(%esp), %ecx
	testl     %ecx, %ecx
	je        .L991
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      int2n@PLT
	movl      4(%eax), %edx
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %edx
	movl      %edx, 8(%esp)
	call      addsi_sign@PLT
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %edi
	movl      36(%esp), %ecx
	movl      %edi, %edx
	subl      (%ecx), %edx
	leal      -12(%edi), %esi
	cmpl      $11, %edx
	ja        .L960
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %eax
.L960:
	movl      avma@GOT(%ebx), %ecx
	movl      %esi, (%ecx)
	movl      $570425347, -12(%edi)
	movl      %eax, 4(%esi)
	movl      44(%esp), %eax
	movl      %eax, 8(%esi)
	movl      100(%esp), %eax
	movl      %esi, (%eax)
	movl      %eax, 12(%esp)
	leal      60(%esp), %eax
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      gerepileall.constprop.5
	movl      60(%esp), %esi
	addl      $76, %esp
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L988:
	andl      $-16777216, %ecx
	movl      $1, %ebp
	jmp       .L944
.L990:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ecx, 20(%esp)
	call      pari_err@PLT
	movl      20(%esp), %ecx
	jmp       .L944
.L963:
	movl      bot@GOT(%ebx), %ecx
	movl      40(%esp), %eax
	movl      %ecx, 36(%esp)
	jmp       .L931
.L991:
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      copy_bin@PLT
	movl      40(%esp), %ecx
	movl      %eax, %edi
	movl      avma@GOT(%ebx), %eax
	movl      4(%edi), %ebp
	movl      %ecx, (%eax)
	testl     %ebp, %ebp
	je        .L992
	movl      %ebp, %esi
	movl      (%edi), %eax
	movl      %ecx, %edx
	subl      8(%edi), %esi
	leal      16(%edi), %ecx
	movl      %ecx, 24(%esp)
	movl      %edx, %ecx
	movl      %esi, 20(%esp)
	movl      36(%esp), %esi
	sall      $2, %eax
	sarl      $2, 20(%esp)
	subl      %eax, %ecx
	subl      (%esi), %edx
	shrl      $2, %edx
	cmpl      %edx, (%edi)
	jbe       .L956
	movl      $14, (%esp)
	movl      %ecx, 32(%esp)
	movl      %eax, 28(%esp)
	call      pari_err@PLT
	movl      32(%esp), %ecx
	movl      28(%esp), %eax
.L956:
	movl      avma@GOT(%ebx), %esi
	movl      %ecx, (%esi)
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
	movl      20(%esp), %ecx
	movl      12(%edi), %edx
	leal      (%eax,%ecx,4), %esi
	movl      %esi, %eax
	subl      %ebp, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	jne       .L993
	call      shiftaddress@PLT
.L958:
	movl      PARI_SIGINT_block@GOT(%ebx), %ebp
	movl      (%ebp), %eax
	movl      $1, (%ebp)
	movl      %edi, (%esp)
	movl      %eax, 20(%esp)
	call      free@PLT
	movl      20(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	jne       .L974
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L974
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	jmp       .L974
.L993:
	call      shiftaddress_canon@PLT
	.p2align 4,,8
	jmp       .L958
.L992:
	movl      PARI_SIGINT_block@GOT(%ebx), %esi
	movl      (%esi), %ebp
	movl      $1, (%esi)
	movl      %edi, (%esp)
	call      free@PLT
	testl     %ebp, %ebp
	movl      %ebp, (%esi)
	jne       .L954
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L994
.L954:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %esi
	jmp       .L974
.L994:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
	jmp       .L954
	.cfi_endproc
	.size	gener_F2xq, .-gener_F2xq
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	ZXX_to_F2xX
	.type	ZXX_to_F2xX, @function
ZXX_to_F2xX:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	movl      (%eax), %edi
	movl      avma@GOT(%ebx), %esi
	andl      $16777215, %edi
	movl      (%esi), %eax
	leal      0(,%edi,4), %ecx
	movl      %eax, %ebp
	subl      %ecx, %ebp
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L996
	movl      $14, (%esp)
	call      pari_err@PLT
.L996:
	movl      %edi, %eax
	orl       $335544320, %eax
	movl      %ebp, (%esi)
	movl      $2, %esi
	movl      %eax, (%ebp)
	movl      48(%esp), %eax
	movl      4(%eax), %eax
	andl      $1073676288, %eax
	orl       $1073741824, %eax
	cmpl      $2, %edi
	movl      %eax, 4(%ebp)
	jle       .L1001
	movl      %ebp, 12(%esp)
	movl      %esi, %ebp
	movl      48(%esp), %esi
	jmp       .L1003
	.p2align 4,,7
	.p2align 3
.L1008:
	cmpl      $10, %eax
	jne       .L998
	movl      %ecx, (%esp)
	call      ZX_to_F2x@PLT
	movl      12(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
.L998:
	addl      $1, %ebp
	cmpl      %edi, %ebp
	je        .L1007
.L1003:
	movl      (%esi,%ebp,4), %ecx
	movl      (%ecx), %eax
	shrl      $25, %eax
	cmpl      $1, %eax
	jne       .L1008
	movl      52(%esp), %eax
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      Z_to_F2x@PLT
	movl      12(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
	addl      $1, %ebp
	cmpl      %edi, %ebp
	jne       .L1003
.L1007:
	movl      12(%esp), %ebp
.L1001:
	movl      %edi, 4(%esp)
	movl      %ebp, (%esp)
	call      FlxX_renormalize@PLT
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	ZXX_to_F2xX, .-ZXX_to_F2xX
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2c_to_ZC
	.type	F2c_to_ZC, @function
F2c_to_ZC:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      4(%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	addl      $1, %eax
	movl      %eax, %edi
	movl      %eax, 8(%esp)
	movl      (%esi), %eax
	leal      0(,%edi,4), %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      bot@GOT(%ebx), %edx
	movl      %ecx, 12(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L1010
	movl      $14, (%esp)
	call      pari_err@PLT
.L1010:
	movl      12(%esp), %eax
	testl     $-16777216, 8(%esp)
	movl      %eax, (%esi)
	je        .L1011
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L1011:
	movl      8(%esp), %eax
	movl      12(%esp), %edi
	orl       $603979776, %eax
	movl      %eax, (%edi)
	movl      (%ebp), %ecx
	movl      %ecx, %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jle       .L1012
	movl      $2, %edi
	movl      $1, %eax
	.p2align 4,,7
	.p2align 3
.L1013:
	cmpl      %eax, 8(%esp)
	jle       .L1016
	xorl      %ecx, %ecx
	jmp       .L1017
	.p2align 4,,7
	.p2align 3
.L1026:
	cmpl      $31, %ecx
	jg        .L1018
.L1017:
	movl      gen_0@GOT(%ebx), %esi
	movl      (%esi), %edx
	movl      (%ebp,%edi,4), %esi
	shrl      %cl, %esi
	andl      $1, %esi
	movl      gen_1@GOT(%ebx), %esi
	cmovne    (%esi), %edx
	addl      $1, %ecx
	movl      12(%esp), %esi
	movl      %edx, (%esi,%eax,4)
	addl      $1, %eax
	cmpl      %eax, 8(%esp)
	jg        .L1026
.L1018:
	movl      (%ebp), %ecx
.L1016:
	movl      %ecx, %edx
	addl      $1, %edi
	andl      $16777215, %edx
	cmpl      %edi, %edx
	jg        .L1013
.L1012:
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2c_to_ZC, .-F2c_to_ZC
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2m_to_ZM
	.type	F2m_to_ZM, @function
F2m_to_ZM:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L1028
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
.L1028:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L1032
	.p2align 4,,7
	.p2align 3
.L1033:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      F2c_to_ZC@PLT
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L1033
.L1032:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2m_to_ZM, .-F2m_to_ZM
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	ZV_to_F2v
	.type	ZV_to_F2v, @function
ZV_to_F2v:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%eax), %eax
	movl      avma@GOT(%ebx), %ebp
	movl      %eax, 4(%esp)
	andl      $16777215, 4(%esp)
	movl      4(%esp), %eax
	movl      (%ebp), %edx
	leal      94(%eax), %edi
	shrl      $5, %edi
	movl      %edx, %ecx
	leal      -1(%eax), %esi
	leal      0(,%edi,4), %eax
	subl      %eax, %ecx
	movl      bot@GOT(%ebx), %eax
	movl      %ecx, 8(%esp)
	subl      (%eax), %edx
	movl      %edx, %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L1036
	movl      $14, (%esp)
	call      pari_err@PLT
.L1036:
	movl      8(%esp), %eax
	orl       $738197504, %edi
	testl     %esi, %esi
	movl      $1, 12(%esp)
	movl      $32, %edx
	movl      %eax, (%ebp)
	movl      %esi, 4(%eax)
	movl      %edi, (%eax)
	movl      $1, %eax
	jg        .L1047
	jmp       .L1045
	.p2align 4,,7
	.p2align 3
.L1050:
	movl      %edx, %ecx
	addl      $1, %edx
.L1039:
	movl      48(%esp), %esi
	movl      (%esi,%eax,4), %esi
	movl      4(%esi), %edi
	movl      %edi, %ebp
	sarl      $30, %ebp
	testl     %ebp, %ebp
	je        .L1040
	andl      $16777215, %edi
	testb     $1, -4(%esi,%edi,4)
	je        .L1040
	movl      $1, %esi
	movl      12(%esp), %edi
	sall      %cl, %esi
	movl      8(%esp), %ecx
	orl       %esi, (%ecx,%edi,4)
.L1040:
	addl      $1, %eax
	cmpl      4(%esp), %eax
	je        .L1045
.L1047:
	cmpl      $32, %edx
	jne       .L1050
	addl      $1, 12(%esp)
	movl      8(%esp), %ecx
	movl      12(%esp), %edx
	movl      $0, (%ecx,%edx,4)
	movl      $1, %edx
	xorl      %ecx, %ecx
	jmp       .L1039
	.p2align 4,,7
	.p2align 3
.L1045:
	movl      8(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	ZV_to_F2v, .-ZV_to_F2v
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	Flv_to_F2v
	.type	Flv_to_F2v, @function
Flv_to_F2v:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%eax), %eax
	movl      avma@GOT(%ebx), %ebp
	movl      %eax, 8(%esp)
	andl      $16777215, 8(%esp)
	movl      8(%esp), %eax
	movl      (%ebp), %ecx
	leal      94(%eax), %esi
	shrl      $5, %esi
	movl      %ecx, %edx
	leal      -1(%eax), %edi
	leal      0(,%esi,4), %eax
	subl      %eax, %edx
	movl      %edx, %eax
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %ecx
	movl      %ecx, %edx
	shrl      $2, %edx
	cmpl      %edx, %esi
	jbe       .L1052
	movl      $14, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
	movl      12(%esp), %eax
.L1052:
	orl       $738197504, %esi
	testl     %edi, %edi
	movl      %eax, (%ebp)
	movl      $1, %edx
	movl      $1, %ebp
	movl      %esi, (%eax)
	movl      $32, %esi
	movl      %edi, 4(%eax)
	jg        .L1062
	jmp       .L1060
	.p2align 4,,7
	.p2align 3
.L1065:
	movl      %esi, %ecx
	addl      $1, %esi
.L1055:
	movl      48(%esp), %edi
	testb     $1, (%edi,%edx,4)
	je        .L1056
	movl      $1, %edi
	sall      %cl, %edi
	orl       %edi, (%eax,%ebp,4)
.L1056:
	addl      $1, %edx
	cmpl      8(%esp), %edx
	je        .L1060
.L1062:
	cmpl      $32, %esi
	jne       .L1065
	addl      $1, %ebp
	movl      $1, %esi
	movl      $0, (%eax,%ebp,4)
	xorl      %ecx, %ecx
	jmp       .L1055
	.p2align 4,,7
	.p2align 3
.L1060:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	Flv_to_F2v, .-Flv_to_F2v
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	ZM_to_F2m
	.type	ZM_to_F2m, @function
ZM_to_F2m:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L1067
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
.L1067:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L1071
	.p2align 4,,7
	.p2align 3
.L1072:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      ZV_to_F2v@PLT
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L1072
.L1071:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	ZM_to_F2m, .-ZM_to_F2m
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	Flm_to_F2m
	.type	Flm_to_F2m, @function
Flm_to_F2m:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L1075
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
.L1075:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L1079
	.p2align 4,,7
	.p2align 3
.L1080:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      Flv_to_F2v@PLT
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L1080
.L1079:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	Flm_to_F2m, .-Flm_to_F2m
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2v_add_inplace
	.type	F2v_add_inplace, @function
F2v_add_inplace:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      28(%esp), %edi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      24(%esp), %esi
	movl      (%edi), %eax
	andl      $16777215, %eax
	leal      -2(%eax), %ebp
	andl      $7, %ebp
	subl      %ebp, %eax
	cmpl      $2, %eax
	movl      %eax, %ecx
	jle       .L1095
	subl      $3, %ecx
	movl      %ecx, (%esp)
	leal      8(%esi), %eax
	shrl      $3, (%esp)
	movl      (%esp), %ecx
	leal      8(%edi), %edx
	sall      $5, %ecx
	leal      40(%esi,%ecx), %ecx
	.p2align 4,,7
	.p2align 3
.L1085:
	movl      (%edx), %esi
	addl      $32, %edx
	xorl      %esi, (%eax)
	movl      -28(%edx), %esi
	xorl      %esi, 4(%eax)
	movl      -24(%edx), %esi
	xorl      %esi, 8(%eax)
	movl      -20(%edx), %esi
	xorl      %esi, 12(%eax)
	movl      -16(%edx), %esi
	xorl      %esi, 16(%eax)
	movl      -12(%edx), %esi
	xorl      %esi, 20(%eax)
	movl      -8(%edx), %esi
	xorl      %esi, 24(%eax)
	movl      -4(%edx), %esi
	xorl      %esi, 28(%eax)
	addl      $32, %eax
	cmpl      %ecx, %eax
	jne       .L1085
	movl      (%esp), %eax
	movl      24(%esp), %esi
	leal      10(,%eax,8), %eax
.L1096:
	movl      .L1088@GOTOFF(%ebx,%ebp,4), %ecx
	leal      (%ecx,%ebx), %edx
	jmp       *%edx
	.p2align 4,,7
	.p2align 3
.L1094:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1093:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1092:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1091:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1090:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1089:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1087:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
.L1082:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L1095:
	movl      $2, %eax
	jmp       .L1096
	.cfi_endproc
	.size	F2v_add_inplace, .-F2v_add_inplace
# ----------------------
	.section       .rodata
	.align 4
.L1088:
	.long	.L1082@GOTOFF
	.long	.L1087@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1090@GOTOFF
	.long	.L1091@GOTOFF
	.long	.L1092@GOTOFF
	.long	.L1093@GOTOFF
	.long	.L1094@GOTOFF
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	F2xV_to_F2m
	.type	F2xV_to_F2m, @function
F2xV_to_F2m:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L1099
	movl      $14, (%esp)
	call      pari_err@PLT
	movl      12(%esp), %edx
.L1099:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L1103
	.p2align 4,,7
	.p2align 3
.L1104:
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      F2x_to_F2v@PLT
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L1104
.L1103:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	F2xV_to_F2m, .-F2xV_to_F2m
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	F2xq_matrix_pow
	.type	F2xq_matrix_pow, @function
F2xq_matrix_pow:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      44(%esp), %eax
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	subl      $1, %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_powers@PLT
	movl      36(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2xV_to_F2m@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	F2xq_matrix_pow, .-F2xq_matrix_pow
# ----------------------
	.section       .rodata
	.align 32
	.local	__bfffo_tabshi.20469
	.type	__bfffo_tabshi.20469, @object
__bfffo_tabshi.20469:
	.long	4
	.long	3
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	__bfffo_tabshi.20469, 64
# ----------------------
	.section       .data.rel.ro.local,"aw",@progbits
	.align 4
	.local	F2xq_star
	.type	F2xq_star, @object
F2xq_star:
	.long	_F2xq_mul
	.long	_F2xq_pow
	.long	_F2xq_rand
	.long	_F2xq_hash
	.long	vecsmall_lexcmp
	.long	F2x_equal1
	.size	F2xq_star, 24
# ----------------------
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	.cfi_startproc
	movl      (%esp), %ebx
	ret       
	.cfi_endproc
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
